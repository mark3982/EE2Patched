/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package test;

import java.io.BufferedReader;
import java.io.DataOutputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.io.PrintStream;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Map.Entry;
import org.objectweb.asm.ClassReader;
import org.objectweb.asm.ClassWriter;
import org.objectweb.asm.Opcodes;
import org.objectweb.asm.tree.AbstractInsnNode;
import org.objectweb.asm.tree.ClassNode;
import org.objectweb.asm.tree.InsnList;
import org.objectweb.asm.tree.LabelNode;
import org.objectweb.asm.tree.MethodInsnNode;
import org.objectweb.asm.tree.MethodNode;

class MIR {
    public String               theClass;
    public String               theMethod;
    public String               theSignature;
}

// FILE NAMED DEFJAVATRANS
//@@mir:*:setTypeId:*:ee/BigWorldHook:setTypeIdHooked:(Lnet/minecraft/server/World;IIII)Z)
//@@mir:*:setTypeIdAndData:*:ee/BigWorldHook:setTypeIdAndDataHooked:(Lnet/minecraft/server/World;IIIII)Z

// IN EACH SOURCE FILE
//@@mcopy:getStrVsBlock:*
//@@mcopy:canDestroySpecialBlock:*
//@@mir:*:getDestroySpeed:*:ee/ItemToolLow:getDestroySpeed:*
public class Test {
    public static boolean changeInvocations(String inClassFile, MIR from, MIR to, int ctype) {
        ClassReader             icr, ocr;
        ClassNode               icn, ocn;
        ClassWriter             cw;
        FileInputStream         iis, ois;
        DataOutputStream        dos;
        Iterator<MethodNode>    mni;
        MethodNode              mn;
        MethodNode              _mn;
        String                  theClass;
        String                  theMethod;
        String                  theSignature;

        Iterator<AbstractInsnNode>  insnNodes;
        AbstractInsnNode            ain;
        MethodInsnNode              min;
        
        if (from.theClass.equals("*"))
            from.theClass = null;
        if (from.theMethod.equals("*"))
            from.theMethod = null;
        if (from.theSignature.equals("*"))
            from.theSignature = null;
        
        if (to.theClass.equals("*"))
            to.theClass = from.theClass;
        if (to.theMethod.equals("*"))
            to.theMethod = from.theMethod;
        if (to.theSignature.equals("*"))
            to.theSignature = from.theSignature;
        
        try {
            iis = new FileInputStream(inClassFile);
            
            icr = new ClassReader(iis);
            icn = new ClassNode();
            
            icr.accept(icn, 0);
            
            mni = icn.methods.iterator();
            
            _mn = null;
            while (mni.hasNext()) {
                mn = mni.next();
                insnNodes = mn.instructions.iterator();
                
                while (insnNodes.hasNext()) {
                    ain = insnNodes.next();
                    //if ((ain.getOpcode() == Opcodes.INVOKEVIRTUAL) || (ain.getOpcode() == Opcodes.INVOKESPECIAL)) {
                    if (ain instanceof MethodInsnNode) {
                        min = (MethodInsnNode)ain;
                        //System.out.printf("incall:%s:%s:%s\n", mn.name, min.name, from.theMethod);
                        if ((min.owner.equals(from.theClass) || (from.theClass == null)) && 
                            (min.name.equals(from.theMethod) || (from.theMethod == null)) && 
                            (min.desc.equals(from.theSignature) || (from.theSignature == null))
                        ) {
                            System.out.printf("found %s\n", from.theMethod);
                            System.out.printf("from:%s:%s:%s\n", min.owner, min.name, min.desc);
                            theClass = to.theClass;
                            if (theClass == null)
                                theClass = min.owner;
                            theMethod = to.theMethod;
                            if (theMethod == null)
                                theMethod = min.name;
                            theSignature = to.theSignature;
                            if (theSignature == null)
                                theSignature = min.desc;
                            System.out.printf("to:%s:%s:%s [ctype:%d]\n", theClass, theMethod, theSignature, ctype);
                            mn.instructions.insertBefore(ain, 
                                    new MethodInsnNode(
                                            ctype == 1 ? Opcodes.INVOKESTATIC : ctype == 0 ? Opcodes.INVOKEVIRTUAL : Opcodes.INVOKESPECIAL,
                                            theClass, 
                                            theMethod, 
                                            theSignature
                                    )
                            );
                            //insnNodes.remove();
                            mn.instructions.remove(ain);
                        }
                    }
                }
            }
            
            iis.close();
            cw = new ClassWriter(0);
            icn.accept(cw);
            dos = new DataOutputStream(new FileOutputStream(inClassFile));
            dos.write(cw.toByteArray());
            dos.flush();
            dos.close();
        } catch (FileNotFoundException ex) {
            ex.printStackTrace();
            return false;
        } catch (IOException ex) {
            ex.printStackTrace();
            return false;
        } catch (Exception ex) {
            ex.printStackTrace();
            return false;
        }
        
        return true;
    }
    public static boolean copyMethod(String inClassFile, String outClassFile, String theMethod, String theSignature) {
        ClassReader             icr, ocr;
        ClassNode               icn, ocn;
        ClassWriter             cw;
        FileInputStream         iis, ois;
        DataOutputStream        dos;
        Iterator<MethodNode>    mni;
        MethodNode              mn;
        MethodNode              _mn;
        
        if (theSignature.equals("*"))
            theSignature = null;
        
        try {
            iis = new FileInputStream(inClassFile);
            ois = new FileInputStream(outClassFile);
            
            icr = new ClassReader(iis);
            ocr = new ClassReader(ois);
            icn = new ClassNode();
            ocn = new ClassNode();
            
            icr.accept(icn, 0);
            ocr.accept(ocn, 0);
            
            mni = icn.methods.iterator();
            
            _mn = null;
            while (mni.hasNext()) {
                mn = mni.next();
                // SKIP IF THE SIGNATURE DOES NOT MATCH
                if ((theSignature != null) && (!theSignature.equals(mn.signature)))
                    continue;
                System.out.printf("--%s\n", mn.name);
                if (theMethod.equals(mn.name)) {
                    _mn = mn;
                    break;
                }
            }
            
            if (_mn == null)
                throw new Exception(String.format("Method Not Found %s:%s", theMethod, theSignature));
            
            mni = ocn.methods.iterator();
            
            while (mni.hasNext()) {
                mn = mni.next();
                if ((theSignature != null) && (!theSignature.equals(mn.signature)))
                    continue;
                // remove existing method from output class so we do not have two of them
                if (theMethod.equals(mn.name) && (theSignature != null ? theSignature.equals(mn.signature) : true))
                    mni.remove();
            }
            
            // copy into output class
            ocn.methods.add(_mn);
            
            cw = new ClassWriter(0);
            ocn.accept(cw);
            ois.close();
            dos = new DataOutputStream(new FileOutputStream(outClassFile));
            dos.write(cw.toByteArray());
            dos.flush();
            dos.close();
        } catch (FileNotFoundException ex) {
            ex.printStackTrace();
            return false;
        } catch (IOException ex) {
            ex.printStackTrace();
            return false;
        } catch (Exception ex) {
            ex.printStackTrace();
            return false;
        }
        return true;
    }
    
    public static boolean processClassFile(File instFile, File newFile, File oldFile) {
        PrintStream         ps;
        FileInputStream     fis;
        BufferedReader      br;
        String              line;
        String[]            parts;
        MIR                 from, to;
        
        ps = System.out;
      
        if (instFile.getName().startsWith("ItemRedPick")) {
            System.out.printf("ok\n");
        }
        
        // read configuration from java source if it exists
        try {
            fis = new FileInputStream(instFile);
            br = new BufferedReader(new InputStreamReader(fis));

            while (br.ready()) {
                line = br.readLine();
                line = line.trim();

                if (line.startsWith("//@@")) {
                    line = line.substring(4);
                    parts = line.split(":");
                    // method copy
                    if (parts[0].equals("mcopy")) {
                        copyMethod(
                            oldFile.getAbsolutePath(),
                            newFile.getAbsolutePath(),
                            parts[1],
                            parts[2]
                        );
                        continue;
                    }
                    // method invocation replace
                    if (parts[0].equals("mir")) {
                        int ctype;
                        
                        from = new MIR();
                        from.theClass = parts[1];
                        from.theMethod = parts[2];
                        from.theSignature = parts[3];
                        to = new MIR();
                        to.theClass = parts[4];
                        to.theMethod = parts[5];
                        to.theSignature = parts[6];
                        if (parts.length < 8) {
                            ctype = 0;
                        } else {
                            ctype = Integer.parseInt(parts[7]);
                        }
                        changeInvocations(newFile.getAbsolutePath(), from, to, ctype);
                        continue;
                    }
                }
            }

            fis.close();

        } catch (FileNotFoundException ex) {
            ex.printStackTrace();
            return false;
        } catch (IOException ex) {
            ex.printStackTrace();
            return false;
        }
        return true;
    }
    
    public static void main(String[] args) {
        InputStream             in, xin;
        File                    dir, xdir;
        ClassReader             cr, xcr;
        ClassNode               cn, xcn;
        ClassWriter             cw, cxw;
        PrintStream             ps;
        String                  classPath;
        
        FileInputStream         fis;
        BufferedReader          br;
        String                  line;
        String[]                parts;
        HashSet<String>         methodsToCopy;  
        HashSet<MIR>            mirs;
        MIR                     mir;
        
        File                    sourceFile;
        File                    origClass;
        File                    allFile;        // applies to all
        File                    defFile;        // no source file
        
        ps = System.out;
        
        methodsToCopy = new HashSet<String>();
        mirs = new HashSet<MIR>();

        //dir = new File("..\\nemmie\\Minecraft\\mods\\EE2ServerV1.4.6.5-bukkit-mcpc-1.2.5-r5\\ee");
        //xdir = new File("..\\nemmie\\std3.1.2tekkit\\mods\\EE2ServerV1.4.6.5-bukkit-mcpc-1.2.5-r5\\ee");
        
        dir = new File(args[0]);
        
        if (!dir.exists()) {
            ps.printf("The path %s does not exist.", args[0]);
            return;
        }
        
        allFile = new File(dir, "all");
        defFile = new File(dir, "def");
        
        for (File classFile : dir.listFiles()) {
            
            if (!classFile.getAbsolutePath().endsWith(".class"))
                continue;
            // CHECK FOR JAVA SOURCE FILE IF NOT USE 'def'
            sourceFile = new File(classFile.getParent(), String.format("%s.java", classFile.getName().substring(0, classFile.getName().indexOf("."))));
            origClass = new File(classFile.getParent(), String.format("%s.class.o", classFile.getName().substring(0, classFile.getName().indexOf("."))));
            
            if (allFile.exists()) {
                ps.printf("all:[%s]\n", classFile.getName());   
                
                if (!new File(String.format("%s.noall", classFile.toString())).exists()) {
                    processClassFile(allFile, classFile, origClass);
                }
            }
            
            ps.printf("src=%s\n", sourceFile.toString());
            if (sourceFile.exists()) {
                ps.printf("src:[%s]\r\n\r", classFile.getName());
                processClassFile(sourceFile, classFile, origClass);
            } else {
                ps.printf("def:[%s]\r\n\r", classFile.getName());
                if (defFile.exists())
                    processClassFile(defFile, classFile, origClass);
            }
        }
    }
}
