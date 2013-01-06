Classfile /C:/Users/kmcguire/Desktop/backup_extracted/minecraft/nemmie/Minecraft/mods/EE2ServerV1.4.6.5-bukkit-mcpc-1.2.5-r5/ee/ItemRedKatar.class
  Last modified Sep 14, 2012; size 16059 bytes
  MD5 checksum 93a9ef923db8d39dd2c939264c86ed17
  Compiled from "ItemRedKatar.java"
public class ee.ItemRedKatar extends ee.ItemRedTool
  SourceFile: "ItemRedKatar.java"
  minor version: 0
  major version: 50
  flags: ACC_PUBLIC, ACC_SUPER
Constant pool:
    #1 = Utf8               ee/ItemRedKatar
    #2 = Class              #1            //  ee/ItemRedKatar
    #3 = Utf8               ee/ItemRedTool
    #4 = Class              #3            //  ee/ItemRedTool
    #5 = Utf8               ItemRedKatar.java
    #6 = Utf8               itemCharging
    #7 = Utf8               Z
    #8 = Utf8               blocksEffectiveAgainst
    #9 = Utf8               [Lnet/minecraft/server/Block;
   #10 = Utf8               <clinit>
   #11 = Utf8               ()V
   #12 = Utf8               net/minecraft/server/Block
   #13 = Class              #12           //  net/minecraft/server/Block
   #14 = Utf8               WOOD
   #15 = Utf8               Lnet/minecraft/server/Block;
   #16 = NameAndType        #14:#15       //  WOOD:Lnet/minecraft/server/Block;
   #17 = Fieldref           #13.#16       //  net/minecraft/server/Block.WOOD:Lnet/minecraft/server/Block;
   #18 = Utf8               BOOKSHELF
   #19 = NameAndType        #18:#15       //  BOOKSHELF:Lnet/minecraft/server/Block;
   #20 = Fieldref           #13.#19       //  net/minecraft/server/Block.BOOKSHELF:Lnet/minecraft/server/Block;
   #21 = Utf8               LOG
   #22 = NameAndType        #21:#15       //  LOG:Lnet/minecraft/server/Block;
   #23 = Fieldref           #13.#22       //  net/minecraft/server/Block.LOG:Lnet/minecraft/server/Block;
   #24 = Utf8               CHEST
   #25 = NameAndType        #24:#15       //  CHEST:Lnet/minecraft/server/Block;
   #26 = Fieldref           #13.#25       //  net/minecraft/server/Block.CHEST:Lnet/minecraft/server/Block;
   #27 = Utf8               DIRT
   #28 = NameAndType        #27:#15       //  DIRT:Lnet/minecraft/server/Block;
   #29 = Fieldref           #13.#28       //  net/minecraft/server/Block.DIRT:Lnet/minecraft/server/Block;
   #30 = Utf8               GRASS
   #31 = Utf8               Lnet/minecraft/server/BlockGrass;
   #32 = NameAndType        #30:#31       //  GRASS:Lnet/minecraft/server/BlockGrass;
   #33 = Fieldref           #13.#32       //  net/minecraft/server/Block.GRASS:Lnet/minecraft/server/BlockGrass;
   #34 = Utf8               LEAVES
   #35 = Utf8               Lnet/minecraft/server/BlockLeaves;
   #36 = NameAndType        #34:#35       //  LEAVES:Lnet/minecraft/server/BlockLeaves;
   #37 = Fieldref           #13.#36       //  net/minecraft/server/Block.LEAVES:Lnet/minecraft/server/BlockLeaves;
   #38 = Utf8               WEB
   #39 = NameAndType        #38:#15       //  WEB:Lnet/minecraft/server/Block;
   #40 = Fieldref           #13.#39       //  net/minecraft/server/Block.WEB:Lnet/minecraft/server/Block;
   #41 = Utf8               WOOL
   #42 = NameAndType        #41:#15       //  WOOL:Lnet/minecraft/server/Block;
   #43 = Fieldref           #13.#42       //  net/minecraft/server/Block.WOOL:Lnet/minecraft/server/Block;
   #44 = NameAndType        #8:#9         //  blocksEffectiveAgainst:[Lnet/minecraft/server/Block;
   #45 = Fieldref           #2.#44        //  ee/ItemRedKatar.blocksEffectiveAgainst:[Lnet/minecraft/server/Block;
   #46 = Utf8               <init>
   #47 = Utf8               (I)V
   #48 = Utf8               (III[Lnet/minecraft/server/Block;)V
   #49 = NameAndType        #46:#48       //  "<init>":(III[Lnet/minecraft/server/Block;)V
   #50 = Methodref          #4.#49        //  ee/ItemRedTool."<init>":(III[Lnet/minecraft/server/Block;)V
   #51 = Utf8               this
   #52 = Utf8               Lee/ItemRedKatar;
   #53 = Utf8               var1
   #54 = Utf8               I
   #55 = Utf8               a
   #56 = Utf8               (Lnet/minecraft/server/ItemStack;IIIILnet/minecraft/server/EntityLiving;)Z
   #57 = Utf8               ee/EEMaps
   #58 = Class              #57           //  ee/EEMaps
   #59 = Utf8               isLeaf
   #60 = Utf8               (I)Z
   #61 = NameAndType        #59:#60       //  isLeaf:(I)Z
   #62 = Methodref          #58.#61       //  ee/EEMaps.isLeaf:(I)Z
   #63 = Utf8               id
   #64 = NameAndType        #63:#54       //  id:I
   #65 = Fieldref           #13.#64       //  net/minecraft/server/Block.id:I
   #66 = Utf8               VINE
   #67 = NameAndType        #66:#15       //  VINE:Lnet/minecraft/server/Block;
   #68 = Fieldref           #13.#67       //  net/minecraft/server/Block.VINE:Lnet/minecraft/server/Block;
   #69 = Utf8               net/minecraft/server/BlockFlower
   #70 = Class              #69           //  net/minecraft/server/BlockFlower
   #71 = Utf8               LONG_GRASS
   #72 = Utf8               Lnet/minecraft/server/BlockLongGrass;
   #73 = NameAndType        #71:#72       //  LONG_GRASS:Lnet/minecraft/server/BlockLongGrass;
   #74 = Fieldref           #70.#73       //  net/minecraft/server/BlockFlower.LONG_GRASS:Lnet/minecraft/server/BlockLongGrass;
   #75 = Utf8               net/minecraft/server/BlockLongGrass
   #76 = Class              #75           //  net/minecraft/server/BlockLongGrass
   #77 = Fieldref           #76.#64       //  net/minecraft/server/BlockLongGrass.id:I
   #78 = Utf8               DEAD_BUSH
   #79 = Utf8               Lnet/minecraft/server/BlockDeadBush;
   #80 = NameAndType        #78:#79       //  DEAD_BUSH:Lnet/minecraft/server/BlockDeadBush;
   #81 = Fieldref           #70.#80       //  net/minecraft/server/BlockFlower.DEAD_BUSH:Lnet/minecraft/server/BlockDeadBush;
   #82 = Utf8               net/minecraft/server/BlockDeadBush
   #83 = Class              #82           //  net/minecraft/server/BlockDeadBush
   #84 = Fieldref           #83.#64       //  net/minecraft/server/BlockDeadBush.id:I
   #85 = Utf8               byId
   #86 = NameAndType        #85:#9        //  byId:[Lnet/minecraft/server/Block;
   #87 = Fieldref           #13.#86       //  net/minecraft/server/Block.byId:[Lnet/minecraft/server/Block;
   #88 = Utf8               net/minecraft/server/ItemStack
   #89 = Class              #88           //  net/minecraft/server/ItemStack
   #90 = Utf8               net/minecraft/server/BlockLeaves
   #91 = Class              #90           //  net/minecraft/server/BlockLeaves
   #92 = Fieldref           #91.#64       //  net/minecraft/server/BlockLeaves.id:I
   #93 = Utf8               getItem
   #94 = Utf8               ()Lnet/minecraft/server/Item;
   #95 = NameAndType        #93:#94       //  getItem:()Lnet/minecraft/server/Item;
   #96 = Methodref          #89.#95       //  net/minecraft/server/ItemStack.getItem:()Lnet/minecraft/server/Item;
   #97 = Utf8               ee/ItemEECharged
   #98 = Class              #97           //  ee/ItemEECharged
   #99 = Utf8               lastMeta
  #100 = String             #99           //  lastMeta
  #101 = Utf8               getShort
  #102 = Utf8               (Lnet/minecraft/server/ItemStack;Ljava/lang/String;)S
  #103 = NameAndType        #101:#102     //  getShort:(Lnet/minecraft/server/ItemStack;Ljava/lang/String;)S
  #104 = Methodref          #98.#103      //  ee/ItemEECharged.getShort:(Lnet/minecraft/server/ItemStack;Ljava/lang/String;)S
  #105 = Utf8               net/minecraft/server/EntityLiving
  #106 = Class              #105          //  net/minecraft/server/EntityLiving
  #107 = Utf8               (III)V
  #108 = NameAndType        #46:#107      //  "<init>":(III)V
  #109 = Methodref          #89.#108      //  net/minecraft/server/ItemStack."<init>":(III)V
  #110 = Utf8               net/minecraft/server/EEProxy
  #111 = Class              #110          //  net/minecraft/server/EEProxy
  #112 = Utf8               dropBlockAsItemStack
  #113 = Utf8               (Lnet/minecraft/server/Block;Lnet/minecraft/server/EntityLiving;IIILnet/minecraft/server/ItemStack;)V
  #114 = NameAndType        #112:#113     //  dropBlockAsItemStack:(Lnet/minecraft/server/Block;Lnet/minecraft/server/EntityLiving;IIILnet/minecraft/server/ItemStack;)V
  #115 = Methodref          #111.#114     //  net/minecraft/server/EEProxy.dropBlockAsItemStack:(Lnet/minecraft/server/Block;Lnet/minecraft/server/EntityLiving;IIILnet/minecraft/server/ItemStack;)V
  #116 = NameAndType        #55:#56       //  a:(Lnet/minecraft/server/ItemStack;IIIILnet/minecraft/server/EntityLiving;)Z
  #117 = Methodref          #4.#116       //  ee/ItemRedTool.a:(Lnet/minecraft/server/ItemStack;IIIILnet/minecraft/server/EntityLiving;)Z
  #118 = Utf8               Lnet/minecraft/server/ItemStack;
  #119 = Utf8               var2
  #120 = Utf8               var3
  #121 = Utf8               var4
  #122 = Utf8               var5
  #123 = Utf8               var6
  #124 = Utf8               Lnet/minecraft/server/EntityLiving;
  #125 = Utf8               var7
  #126 = Utf8               ConsumeReagent
  #127 = Utf8               (ILnet/minecraft/server/ItemStack;Lnet/minecraft/server/EntityHuman;Z)Z
  #128 = Utf8               getFuelRemaining
  #129 = Utf8               (Lnet/minecraft/server/ItemStack;)I
  #130 = NameAndType        #128:#129     //  getFuelRemaining:(Lnet/minecraft/server/ItemStack;)I
  #131 = Methodref          #2.#130       //  ee/ItemRedKatar.getFuelRemaining:(Lnet/minecraft/server/ItemStack;)I
  #132 = Utf8               setFuelRemaining
  #133 = Utf8               (Lnet/minecraft/server/ItemStack;I)V
  #134 = NameAndType        #132:#133     //  setFuelRemaining:(Lnet/minecraft/server/ItemStack;I)V
  #135 = Methodref          #2.#134       //  ee/ItemRedKatar.setFuelRemaining:(Lnet/minecraft/server/ItemStack;I)V
  #136 = Utf8               (Lnet/minecraft/server/ItemStack;Lnet/minecraft/server/EntityHuman;Z)V
  #137 = NameAndType        #126:#136     //  ConsumeReagent:(Lnet/minecraft/server/ItemStack;Lnet/minecraft/server/EntityHuman;Z)V
  #138 = Methodref          #2.#137       //  ee/ItemRedKatar.ConsumeReagent:(Lnet/minecraft/server/ItemStack;Lnet/minecraft/server/EntityHuman;Z)V
  #139 = Utf8               Lnet/minecraft/server/EntityHuman;
  #140 = Utf8               doSwordBreak
  #141 = Utf8               (Lnet/minecraft/server/ItemStack;Lnet/minecraft/server/World;Lnet/minecraft/server/EntityHuman;)V
  #142 = Utf8               chargeLevel
  #143 = NameAndType        #142:#129     //  chargeLevel:(Lnet/minecraft/server/ItemStack;)I
  #144 = Methodref          #2.#143       //  ee/ItemRedKatar.chargeLevel:(Lnet/minecraft/server/ItemStack;)I
  #145 = NameAndType        #126:#127     //  ConsumeReagent:(ILnet/minecraft/server/ItemStack;Lnet/minecraft/server/EntityHuman;Z)Z
  #146 = Methodref          #2.#145       //  ee/ItemRedKatar.ConsumeReagent:(ILnet/minecraft/server/ItemStack;Lnet/minecraft/server/EntityHuman;Z)Z
  #147 = Utf8               net/minecraft/server/EntityHuman
  #148 = Class              #147          //  net/minecraft/server/EntityHuman
  #149 = Utf8               C_
  #150 = NameAndType        #149:#11      //  C_:()V
  #151 = Methodref          #148.#150     //  net/minecraft/server/EntityHuman.C_:()V
  #152 = Utf8               flash
  #153 = String             #152          //  flash
  #154 = Float              0.8f
  #155 = Float              1.5f
  #156 = Utf8               net/minecraft/server/World
  #157 = Class              #156          //  net/minecraft/server/World
  #158 = Utf8               makeSound
  #159 = Utf8               (Lnet/minecraft/server/Entity;Ljava/lang/String;FF)V
  #160 = NameAndType        #158:#159     //  makeSound:(Lnet/minecraft/server/Entity;Ljava/lang/String;FF)V
  #161 = Methodref          #157.#160     //  net/minecraft/server/World.makeSound:(Lnet/minecraft/server/Entity;Ljava/lang/String;FF)V
  #162 = Utf8               locX
  #163 = Utf8               D
  #164 = NameAndType        #162:#163     //  locX:D
  #165 = Fieldref           #148.#164     //  net/minecraft/server/EntityHuman.locX:D
  #166 = Double             1.5d
  #168 = Double             2.0d
  #170 = Utf8               locY
  #171 = NameAndType        #170:#163     //  locY:D
  #172 = Fieldref           #148.#171     //  net/minecraft/server/EntityHuman.locY:D
  #173 = Utf8               locZ
  #174 = NameAndType        #173:#163     //  locZ:D
  #175 = Fieldref           #148.#174     //  net/minecraft/server/EntityHuman.locZ:D
  #176 = Utf8               net/minecraft/server/AxisAlignedBB
  #177 = Class              #176          //  net/minecraft/server/AxisAlignedBB
  #178 = Utf8               b
  #179 = Utf8               (DDDDDD)Lnet/minecraft/server/AxisAlignedBB;
  #180 = NameAndType        #178:#179     //  b:(DDDDDD)Lnet/minecraft/server/AxisAlignedBB;
  #181 = Methodref          #177.#180     //  net/minecraft/server/AxisAlignedBB.b:(DDDDDD)Lnet/minecraft/server/AxisAlignedBB;
  #182 = Utf8               getEntities
  #183 = Utf8               (Lnet/minecraft/server/Entity;Lnet/minecraft/server/AxisAlignedBB;)Ljava/util/List;
  #184 = NameAndType        #182:#183     //  getEntities:(Lnet/minecraft/server/Entity;Lnet/minecraft/server/AxisAlignedBB;)Ljava/util/List;
  #185 = Methodref          #157.#184     //  net/minecraft/server/World.getEntities:(Lnet/minecraft/server/Entity;Lnet/minecraft/server/AxisAlignedBB;)Ljava/util/List;
  #186 = Utf8               java/util/List
  #187 = Class              #186          //  java/util/List
  #188 = Utf8               get
  #189 = Utf8               (I)Ljava/lang/Object;
  #190 = NameAndType        #188:#189     //  get:(I)Ljava/lang/Object;
  #191 = InterfaceMethodref #187.#190     //  java/util/List.get:(I)Ljava/lang/Object;
  #192 = Utf8               ee/EEBase
  #193 = Class              #192          //  ee/EEBase
  #194 = Utf8               getSwordMode
  #195 = Utf8               (Lnet/minecraft/server/EntityHuman;)Z
  #196 = NameAndType        #194:#195     //  getSwordMode:(Lnet/minecraft/server/EntityHuman;)Z
  #197 = Methodref          #193.#196     //  ee/EEBase.getSwordMode:(Lnet/minecraft/server/EntityHuman;)Z
  #198 = Utf8               net/minecraft/server/EntityMonster
  #199 = Class              #198          //  net/minecraft/server/EntityMonster
  #200 = Utf8               net/minecraft/server/Entity
  #201 = Class              #200          //  net/minecraft/server/Entity
  #202 = Utf8               net/minecraft/server/DamageSource
  #203 = Class              #202          //  net/minecraft/server/DamageSource
  #204 = Utf8               playerAttack
  #205 = Utf8               (Lnet/minecraft/server/EntityHuman;)Lnet/minecraft/server/DamageSource;
  #206 = NameAndType        #204:#205     //  playerAttack:(Lnet/minecraft/server/EntityHuman;)Lnet/minecraft/server/DamageSource;
  #207 = Methodref          #203.#206     //  net/minecraft/server/DamageSource.playerAttack:(Lnet/minecraft/server/EntityHuman;)Lnet/minecraft/server/DamageSource;
  #208 = Utf8               weaponDamage
  #209 = NameAndType        #208:#54      //  weaponDamage:I
  #210 = Fieldref           #2.#209       //  ee/ItemRedKatar.weaponDamage:I
  #211 = Utf8               damageEntity
  #212 = Utf8               (Lnet/minecraft/server/DamageSource;I)Z
  #213 = NameAndType        #211:#212     //  damageEntity:(Lnet/minecraft/server/DamageSource;I)Z
  #214 = Methodref          #201.#213     //  net/minecraft/server/Entity.damageEntity:(Lnet/minecraft/server/DamageSource;I)Z
  #215 = Utf8               size
  #216 = Utf8               ()I
  #217 = NameAndType        #215:#216     //  size:()I
  #218 = InterfaceMethodref #187.#217     //  java/util/List.size:()I
  #219 = Utf8               Lnet/minecraft/server/World;
  #220 = Utf8               Ljava/util/List;
  #221 = Utf8               var8
  #222 = Utf8               Lnet/minecraft/server/Entity;
  #223 = Utf8               interactWith
  #224 = Utf8               (Lnet/minecraft/server/ItemStack;Lnet/minecraft/server/EntityHuman;Lnet/minecraft/server/World;IIII)Z
  #225 = Utf8               isClient
  #226 = Utf8               (Lnet/minecraft/server/World;)Z
  #227 = NameAndType        #225:#226     //  isClient:(Lnet/minecraft/server/World;)Z
  #228 = Methodref          #111.#227     //  net/minecraft/server/EEProxy.isClient:(Lnet/minecraft/server/World;)Z
  #229 = Utf8               getTypeId
  #230 = Utf8               (III)I
  #231 = NameAndType        #229:#230     //  getTypeId:(III)I
  #232 = Methodref          #157.#231     //  net/minecraft/server/World.getTypeId:(III)I
  #233 = Utf8               onItemUseShears
  #234 = NameAndType        #233:#224     //  onItemUseShears:(Lnet/minecraft/server/ItemStack;Lnet/minecraft/server/EntityHuman;Lnet/minecraft/server/World;IIII)Z
  #235 = Methodref          #2.#234       //  ee/ItemRedKatar.onItemUseShears:(Lnet/minecraft/server/ItemStack;Lnet/minecraft/server/EntityHuman;Lnet/minecraft/server/World;IIII)Z
  #236 = Utf8               net/minecraft/server/BlockGrass
  #237 = Class              #236          //  net/minecraft/server/BlockGrass
  #238 = Fieldref           #237.#64      //  net/minecraft/server/BlockGrass.id:I
  #239 = Utf8               onItemUseHoe
  #240 = NameAndType        #239:#224     //  onItemUseHoe:(Lnet/minecraft/server/ItemStack;Lnet/minecraft/server/EntityHuman;Lnet/minecraft/server/World;IIII)Z
  #241 = Methodref          #2.#240       //  ee/ItemRedKatar.onItemUseHoe:(Lnet/minecraft/server/ItemStack;Lnet/minecraft/server/EntityHuman;Lnet/minecraft/server/World;IIII)Z
  #242 = Utf8               isWood
  #243 = NameAndType        #242:#60      //  isWood:(I)Z
  #244 = Methodref          #58.#243      //  ee/EEMaps.isWood:(I)Z
  #245 = Utf8               onItemUseAxe
  #246 = NameAndType        #245:#224     //  onItemUseAxe:(Lnet/minecraft/server/ItemStack;Lnet/minecraft/server/EntityHuman;Lnet/minecraft/server/World;IIII)Z
  #247 = Methodref          #2.#246       //  ee/ItemRedKatar.onItemUseAxe:(Lnet/minecraft/server/ItemStack;Lnet/minecraft/server/EntityHuman;Lnet/minecraft/server/World;IIII)Z
  #248 = Utf8               cleanDroplist
  #249 = Utf8               (Lnet/minecraft/server/ItemStack;)V
  #250 = NameAndType        #248:#249     //  cleanDroplist:(Lnet/minecraft/server/ItemStack;)V
  #251 = Methodref          #2.#250       //  ee/ItemRedKatar.cleanDroplist:(Lnet/minecraft/server/ItemStack;)V
  #252 = Utf8               getData
  #253 = NameAndType        #252:#230     //  getData:(III)I
  #254 = Methodref          #157.#253     //  net/minecraft/server/World.getData:(III)I
  #255 = Fieldref           #13.#73       //  net/minecraft/server/Block.LONG_GRASS:Lnet/minecraft/server/BlockLongGrass;
  #256 = Fieldref           #13.#80       //  net/minecraft/server/Block.DEAD_BUSH:Lnet/minecraft/server/BlockDeadBush;
  #257 = Utf8               getBlockDropped
  #258 = Utf8               (Lnet/minecraft/server/World;IIIII)Ljava/util/ArrayList;
  #259 = NameAndType        #257:#258     //  getBlockDropped:(Lnet/minecraft/server/World;IIIII)Ljava/util/ArrayList;
  #260 = Methodref          #13.#259      //  net/minecraft/server/Block.getBlockDropped:(Lnet/minecraft/server/World;IIIII)Ljava/util/ArrayList;
  #261 = Utf8               java/util/ArrayList
  #262 = Class              #261          //  java/util/ArrayList
  #263 = Utf8               iterator
  #264 = Utf8               ()Ljava/util/Iterator;
  #265 = NameAndType        #263:#264     //  iterator:()Ljava/util/Iterator;
  #266 = Methodref          #262.#265     //  java/util/ArrayList.iterator:()Ljava/util/Iterator;
  #267 = Utf8               java/util/Iterator
  #268 = Class              #267          //  java/util/Iterator
  #269 = Utf8               next
  #270 = Utf8               ()Ljava/lang/Object;
  #271 = NameAndType        #269:#270     //  next:()Ljava/lang/Object;
  #272 = InterfaceMethodref #268.#271     //  java/util/Iterator.next:()Ljava/lang/Object;
  #273 = Utf8               addToDroplist
  #274 = Utf8               (Lnet/minecraft/server/ItemStack;Lnet/minecraft/server/ItemStack;)V
  #275 = NameAndType        #273:#274     //  addToDroplist:(Lnet/minecraft/server/ItemStack;Lnet/minecraft/server/ItemStack;)V
  #276 = Methodref          #2.#275       //  ee/ItemRedKatar.addToDroplist:(Lnet/minecraft/server/ItemStack;Lnet/minecraft/server/ItemStack;)V
  #277 = Utf8               hasNext
  #278 = Utf8               ()Z
  #279 = NameAndType        #277:#278     //  hasNext:()Z
  #280 = InterfaceMethodref #268.#279     //  java/util/Iterator.hasNext:()Z
  #281 = Utf8               (Lnet/minecraft/server/Block;II)V
  #282 = NameAndType        #46:#281      //  "<init>":(Lnet/minecraft/server/Block;II)V
  #283 = Methodref          #89.#282      //  net/minecraft/server/ItemStack."<init>":(Lnet/minecraft/server/Block;II)V
  #284 = Utf8               fuelRemaining
  #285 = String             #284          //  fuelRemaining
  #286 = Utf8               setShort
  #287 = Utf8               (Lnet/minecraft/server/ItemStack;Ljava/lang/String;I)V
  #288 = NameAndType        #286:#287     //  setShort:(Lnet/minecraft/server/ItemStack;Ljava/lang/String;I)V
  #289 = Methodref          #2.#288       //  ee/ItemRedKatar.setShort:(Lnet/minecraft/server/ItemStack;Ljava/lang/String;I)V
  #290 = Utf8               ee/BigWorldHook
  #291 = Class              #290          //  ee/BigWorldHook
  #292 = Utf8               setTypeIdHooked
  #293 = Utf8               (Lnet/minecraft/server/World;IIII)Z
  #294 = NameAndType        #292:#293     //  setTypeIdHooked:(Lnet/minecraft/server/World;IIII)Z
  #295 = Methodref          #291.#294     //  ee/BigWorldHook.setTypeIdHooked:(Lnet/minecraft/server/World;IIII)Z
  #296 = Utf8               random
  #297 = Utf8               Ljava/util/Random;
  #298 = NameAndType        #296:#297     //  random:Ljava/util/Random;
  #299 = Fieldref           #157.#298     //  net/minecraft/server/World.random:Ljava/util/Random;
  #300 = Utf8               java/util/Random
  #301 = Class              #300          //  java/util/Random
  #302 = Utf8               nextInt
  #303 = Utf8               (I)I
  #304 = NameAndType        #302:#303     //  nextInt:(I)I
  #305 = Methodref          #301.#304     //  java/util/Random.nextInt:(I)I
  #306 = Utf8               largesmoke
  #307 = String             #306          //  largesmoke
  #308 = Utf8               (Ljava/lang/String;DDDDDD)V
  #309 = NameAndType        #55:#308      //  a:(Ljava/lang/String;DDDDDD)V
  #310 = Methodref          #157.#309     //  net/minecraft/server/World.a:(Ljava/lang/String;DDDDDD)V
  #311 = Utf8               explode
  #312 = String             #311          //  explode
  #313 = Utf8               ejectDropList
  #314 = Utf8               (Lnet/minecraft/server/World;Lnet/minecraft/server/ItemStack;DDD)V
  #315 = NameAndType        #313:#314     //  ejectDropList:(Lnet/minecraft/server/World;Lnet/minecraft/server/ItemStack;DDD)V
  #316 = Methodref          #2.#315       //  ee/ItemRedKatar.ejectDropList:(Lnet/minecraft/server/World;Lnet/minecraft/server/ItemStack;DDD)V
  #317 = Utf8               var9
  #318 = Utf8               var10
  #319 = Utf8               var11
  #320 = Utf8               var12
  #321 = Utf8               var13
  #322 = Utf8               var14
  #323 = Utf8               Ljava/util/ArrayList;
  #324 = Utf8               var15
  #325 = Utf8               Ljava/util/Iterator;
  #326 = Utf8               var16
  #327 = Utf8               YELLOW_FLOWER
  #328 = Utf8               Lnet/minecraft/server/BlockFlower;
  #329 = NameAndType        #327:#328     //  YELLOW_FLOWER:Lnet/minecraft/server/BlockFlower;
  #330 = Fieldref           #70.#329      //  net/minecraft/server/BlockFlower.YELLOW_FLOWER:Lnet/minecraft/server/BlockFlower;
  #331 = Fieldref           #70.#64       //  net/minecraft/server/BlockFlower.id:I
  #332 = Utf8               RED_ROSE
  #333 = NameAndType        #332:#328     //  RED_ROSE:Lnet/minecraft/server/BlockFlower;
  #334 = Fieldref           #70.#333      //  net/minecraft/server/BlockFlower.RED_ROSE:Lnet/minecraft/server/BlockFlower;
  #335 = Utf8               BROWN_MUSHROOM
  #336 = NameAndType        #335:#328     //  BROWN_MUSHROOM:Lnet/minecraft/server/BlockFlower;
  #337 = Fieldref           #70.#336      //  net/minecraft/server/BlockFlower.BROWN_MUSHROOM:Lnet/minecraft/server/BlockFlower;
  #338 = Utf8               RED_MUSHROOM
  #339 = NameAndType        #338:#328     //  RED_MUSHROOM:Lnet/minecraft/server/BlockFlower;
  #340 = Fieldref           #70.#339      //  net/minecraft/server/BlockFlower.RED_MUSHROOM:Lnet/minecraft/server/BlockFlower;
  #341 = Fieldref           #76.#73       //  net/minecraft/server/BlockLongGrass.LONG_GRASS:Lnet/minecraft/server/BlockLongGrass;
  #342 = Fieldref           #83.#80       //  net/minecraft/server/BlockDeadBush.DEAD_BUSH:Lnet/minecraft/server/BlockDeadBush;
  #343 = Utf8               dropNaturally
  #344 = Utf8               (Lnet/minecraft/server/World;IIIIFI)V
  #345 = NameAndType        #343:#344     //  dropNaturally:(Lnet/minecraft/server/World;IIIIFI)V
  #346 = Methodref          #13.#345      //  net/minecraft/server/Block.dropNaturally:(Lnet/minecraft/server/World;IIIIFI)V
  #347 = Utf8               d
  #348 = Utf8               (III)Z
  #349 = NameAndType        #347:#348     //  d:(III)Z
  #350 = Methodref          #148.#349     //  net/minecraft/server/EntityHuman.d:(III)Z
  #351 = Utf8               SOIL
  #352 = NameAndType        #351:#15      //  SOIL:Lnet/minecraft/server/Block;
  #353 = Fieldref           #13.#352      //  net/minecraft/server/Block.SOIL:Lnet/minecraft/server/Block;
  #354 = Float              0.5f
  #355 = Utf8               stepSound
  #356 = Utf8               Lnet/minecraft/server/StepSound;
  #357 = NameAndType        #355:#356     //  stepSound:Lnet/minecraft/server/StepSound;
  #358 = Fieldref           #13.#357      //  net/minecraft/server/Block.stepSound:Lnet/minecraft/server/StepSound;
  #359 = Utf8               net/minecraft/server/StepSound
  #360 = Class              #359          //  net/minecraft/server/StepSound
  #361 = Utf8               getName
  #362 = Utf8               ()Ljava/lang/String;
  #363 = NameAndType        #361:#362     //  getName:()Ljava/lang/String;
  #364 = Methodref          #360.#363     //  net/minecraft/server/StepSound.getName:()Ljava/lang/String;
  #365 = Utf8               getVolume1
  #366 = Utf8               ()F
  #367 = NameAndType        #365:#366     //  getVolume1:()F
  #368 = Methodref          #360.#367     //  net/minecraft/server/StepSound.getVolume1:()F
  #369 = Utf8               getVolume2
  #370 = NameAndType        #369:#366     //  getVolume2:()F
  #371 = Methodref          #360.#370     //  net/minecraft/server/StepSound.getVolume2:()F
  #372 = Utf8               (DDDLjava/lang/String;FF)V
  #373 = NameAndType        #158:#372     //  makeSound:(DDDLjava/lang/String;FF)V
  #374 = Methodref          #157.#373     //  net/minecraft/server/World.makeSound:(DDDLjava/lang/String;FF)V
  #375 = Utf8               isStatic
  #376 = NameAndType        #375:#7       //  isStatic:Z
  #377 = Fieldref           #157.#376     //  net/minecraft/server/World.isStatic:Z
  #378 = Utf8               var17
  #379 = Utf8               var18
  #380 = Utf8               var19
  #381 = Utf8               var20
  #382 = Utf8               var21
  #383 = Utf8               var22
  #384 = Utf8               var23
  #385 = Utf8               var24
  #386 = Utf8               var25
  #387 = Utf8               isFull3D
  #388 = Utf8               (Lnet/minecraft/server/ItemStack;)Lnet/minecraft/server/EnumAnimation;
  #389 = Utf8               net/minecraft/server/EnumAnimation
  #390 = Class              #389          //  net/minecraft/server/EnumAnimation
  #391 = Utf8               Lnet/minecraft/server/EnumAnimation;
  #392 = NameAndType        #347:#391     //  d:Lnet/minecraft/server/EnumAnimation;
  #393 = Fieldref           #390.#392     //  net/minecraft/server/EnumAnimation.d:Lnet/minecraft/server/EnumAnimation;
  #394 = Utf8               c
  #395 = Integer            72000
  #396 = Utf8               (Lnet/minecraft/server/ItemStack;Lnet/minecraft/server/World;Lnet/minecraft/server/EntityHuman;)Lnet/minecraft/server/ItemStack;
  #397 = NameAndType        #394:#129     //  c:(Lnet/minecraft/server/ItemStack;)I
  #398 = Methodref          #2.#397       //  ee/ItemRedKatar.c:(Lnet/minecraft/server/ItemStack;)I
  #399 = NameAndType        #55:#133      //  a:(Lnet/minecraft/server/ItemStack;I)V
  #400 = Methodref          #148.#399     //  net/minecraft/server/EntityHuman.a:(Lnet/minecraft/server/ItemStack;I)V
  #401 = Utf8               doShear
  #402 = Utf8               (Lnet/minecraft/server/ItemStack;Lnet/minecraft/server/World;Lnet/minecraft/server/EntityHuman;Lnet/minecraft/server/Entity;)V
  #403 = Utf8               net/minecraft/server/EntitySheep
  #404 = Class              #403          //  net/minecraft/server/EntitySheep
  #405 = Utf8               (Lnet/minecraft/server/World;)V
  #406 = NameAndType        #46:#405      //  "<init>":(Lnet/minecraft/server/World;)V
  #407 = Methodref          #404.#406     //  net/minecraft/server/EntitySheep."<init>":(Lnet/minecraft/server/World;)V
  #408 = Fieldref           #201.#164     //  net/minecraft/server/Entity.locX:D
  #409 = Fieldref           #201.#174     //  net/minecraft/server/Entity.locZ:D
  #410 = Double             -1.0d
  #412 = Fieldref           #201.#171     //  net/minecraft/server/Entity.locY:D
  #413 = Utf8               setPosition
  #414 = Utf8               (DDD)V
  #415 = NameAndType        #413:#414     //  setPosition:(DDD)V
  #416 = Methodref          #404.#415     //  net/minecraft/server/EntitySheep.setPosition:(DDD)V
  #417 = Utf8               getColor
  #418 = NameAndType        #417:#216     //  getColor:()I
  #419 = Methodref          #404.#418     //  net/minecraft/server/EntitySheep.getColor:()I
  #420 = Utf8               setColor
  #421 = NameAndType        #420:#47      //  setColor:(I)V
  #422 = Methodref          #404.#421     //  net/minecraft/server/EntitySheep.setColor:(I)V
  #423 = Utf8               addEntity
  #424 = Utf8               (Lnet/minecraft/server/Entity;)Z
  #425 = NameAndType        #423:#424     //  addEntity:(Lnet/minecraft/server/Entity;)Z
  #426 = Methodref          #157.#425     //  net/minecraft/server/World.addEntity:(Lnet/minecraft/server/Entity;)Z
  #427 = Utf8               setSheared
  #428 = Utf8               (Z)V
  #429 = NameAndType        #427:#428     //  setSheared:(Z)V
  #430 = Methodref          #404.#429     //  net/minecraft/server/EntitySheep.setSheared:(Z)V
  #431 = Utf8               net/minecraft/server/EntityItem
  #432 = Class              #431          //  net/minecraft/server/EntityItem
  #433 = Utf8               (Lnet/minecraft/server/World;DDDLnet/minecraft/server/ItemStack;)V
  #434 = NameAndType        #46:#433      //  "<init>":(Lnet/minecraft/server/World;DDDLnet/minecraft/server/ItemStack;)V
  #435 = Methodref          #432.#434     //  net/minecraft/server/EntityItem."<init>":(Lnet/minecraft/server/World;DDDLnet/minecraft/server/ItemStack;)V
  #436 = Utf8               net/minecraft/server/EntityMushroomCow
  #437 = Class              #436          //  net/minecraft/server/EntityMushroomCow
  #438 = Methodref          #437.#406     //  net/minecraft/server/EntityMushroomCow."<init>":(Lnet/minecraft/server/World;)V
  #439 = Methodref          #437.#415     //  net/minecraft/server/EntityMushroomCow.setPosition:(DDD)V
  #440 = Utf8               die
  #441 = NameAndType        #440:#11      //  die:()V
  #442 = Methodref          #437.#441     //  net/minecraft/server/EntityMushroomCow.die:()V
  #443 = Utf8               net/minecraft/server/EntityCow
  #444 = Class              #443          //  net/minecraft/server/EntityCow
  #445 = Methodref          #444.#406     //  net/minecraft/server/EntityCow."<init>":(Lnet/minecraft/server/World;)V
  #446 = Utf8               yaw
  #447 = Utf8               F
  #448 = NameAndType        #446:#447     //  yaw:F
  #449 = Fieldref           #201.#448     //  net/minecraft/server/Entity.yaw:F
  #450 = Utf8               pitch
  #451 = NameAndType        #450:#447     //  pitch:F
  #452 = Fieldref           #201.#451     //  net/minecraft/server/Entity.pitch:F
  #453 = Utf8               setPositionRotation
  #454 = Utf8               (DDDFF)V
  #455 = NameAndType        #453:#454     //  setPositionRotation:(DDDFF)V
  #456 = Methodref          #444.#455     //  net/minecraft/server/EntityCow.setPositionRotation:(DDDFF)V
  #457 = Utf8               getHealth
  #458 = NameAndType        #457:#216     //  getHealth:()I
  #459 = Methodref          #437.#458     //  net/minecraft/server/EntityMushroomCow.getHealth:()I
  #460 = Utf8               setHealth
  #461 = NameAndType        #460:#47      //  setHealth:(I)V
  #462 = Methodref          #444.#461     //  net/minecraft/server/EntityCow.setHealth:(I)V
  #463 = Utf8               V
  #464 = NameAndType        #463:#447     //  V:F
  #465 = Fieldref           #437.#464     //  net/minecraft/server/EntityMushroomCow.V:F
  #466 = Fieldref           #444.#464     //  net/minecraft/server/EntityCow.V:F
  #467 = Utf8               largeexplode
  #468 = String             #467          //  largeexplode
  #469 = Utf8               length
  #470 = NameAndType        #469:#447     //  length:F
  #471 = Fieldref           #201.#470     //  net/minecraft/server/Entity.length:F
  #472 = Utf8               java/lang/Object
  #473 = Class              #472          //  java/lang/Object
  #474 = Fieldref           #13.#339      //  net/minecraft/server/Block.RED_MUSHROOM:Lnet/minecraft/server/BlockFlower;
  #475 = Utf8               (Lnet/minecraft/server/Block;I)V
  #476 = NameAndType        #46:#475      //  "<init>":(Lnet/minecraft/server/Block;I)V
  #477 = Methodref          #89.#476      //  net/minecraft/server/ItemStack."<init>":(Lnet/minecraft/server/Block;I)V
  #478 = Utf8               world
  #479 = NameAndType        #478:#219     //  world:Lnet/minecraft/server/World;
  #480 = Fieldref           #437.#479     //  net/minecraft/server/EntityMushroomCow.world:Lnet/minecraft/server/World;
  #481 = Fieldref           #437.#164     //  net/minecraft/server/EntityMushroomCow.locX:D
  #482 = Fieldref           #437.#171     //  net/minecraft/server/EntityMushroomCow.locY:D
  #483 = Fieldref           #437.#174     //  net/minecraft/server/EntityMushroomCow.locZ:D
  #484 = Fieldref           #437.#448     //  net/minecraft/server/EntityMushroomCow.yaw:F
  #485 = Fieldref           #437.#451     //  net/minecraft/server/EntityMushroomCow.pitch:F
  #486 = Fieldref           #437.#470     //  net/minecraft/server/EntityMushroomCow.length:F
  #487 = Utf8               (Lnet/minecraft/server/Block;)V
  #488 = NameAndType        #46:#487      //  "<init>":(Lnet/minecraft/server/Block;)V
  #489 = Methodref          #89.#488      //  net/minecraft/server/ItemStack."<init>":(Lnet/minecraft/server/Block;)V
  #490 = Utf8               Lnet/minecraft/server/EntitySheep;
  #491 = Utf8               Lnet/minecraft/server/EntityItem;
  #492 = Utf8               Lnet/minecraft/server/EntityMushroomCow;
  #493 = Utf8               Lnet/minecraft/server/EntityCow;
  #494 = Utf8               Ljava/lang/Object;
  #495 = Utf8               (Lnet/minecraft/server/Entity;)I
  #496 = Utf8               (Lnet/minecraft/server/ItemStack;Lnet/minecraft/server/EntityLiving;Lnet/minecraft/server/EntityLiving;)Z
  #497 = Utf8               isSheared
  #498 = NameAndType        #497:#278     //  isSheared:()Z
  #499 = Methodref          #404.#498     //  net/minecraft/server/EntitySheep.isSheared:()Z
  #500 = Fieldref           #148.#479     //  net/minecraft/server/EntityHuman.world:Lnet/minecraft/server/World;
  #501 = NameAndType        #401:#402     //  doShear:(Lnet/minecraft/server/ItemStack;Lnet/minecraft/server/World;Lnet/minecraft/server/EntityHuman;Lnet/minecraft/server/Entity;)V
  #502 = Methodref          #2.#501       //  ee/ItemRedKatar.doShear:(Lnet/minecraft/server/ItemStack;Lnet/minecraft/server/World;Lnet/minecraft/server/EntityHuman;Lnet/minecraft/server/Entity;)V
  #503 = Utf8               heal
  #504 = NameAndType        #503:#47      //  heal:(I)V
  #505 = Methodref          #106.#504     //  net/minecraft/server/EntityLiving.heal:(I)V
  #506 = Utf8               doAlternate
  #507 = Utf8               updateSwordMode
  #508 = Utf8               (Lnet/minecraft/server/EntityHuman;)V
  #509 = NameAndType        #507:#508     //  updateSwordMode:(Lnet/minecraft/server/EntityHuman;)V
  #510 = Methodref          #193.#509     //  ee/EEBase.updateSwordMode:(Lnet/minecraft/server/EntityHuman;)V
  #511 = Utf8               doRelease
  #512 = NameAndType        #140:#141     //  doSwordBreak:(Lnet/minecraft/server/ItemStack;Lnet/minecraft/server/World;Lnet/minecraft/server/EntityHuman;)V
  #513 = Methodref          #2.#512       //  ee/ItemRedKatar.doSwordBreak:(Lnet/minecraft/server/ItemStack;Lnet/minecraft/server/World;Lnet/minecraft/server/EntityHuman;)V
  #514 = Utf8               doToggle
  #515 = Utf8               canDestroySpecialBlock
  #516 = Utf8               (Lnet/minecraft/server/Block;)Z
  #517 = Utf8               getStrVsBlock
  #518 = Utf8               (Lnet/minecraft/server/ItemStack;Lnet/minecraft/server/Block;I)F
  #519 = Methodref          #2.#103       //  ee/ItemRedKatar.getShort:(Lnet/minecraft/server/ItemStack;Ljava/lang/String;)S
  #520 = Float              5.0f
  #521 = Utf8               material
  #522 = Utf8               Lnet/minecraft/server/Material;
  #523 = NameAndType        #521:#522     //  material:Lnet/minecraft/server/Material;
  #524 = Fieldref           #13.#523      //  net/minecraft/server/Block.material:Lnet/minecraft/server/Material;
  #525 = Utf8               net/minecraft/server/Material
  #526 = Class              #525          //  net/minecraft/server/Material
  #527 = Utf8               EARTH
  #528 = NameAndType        #527:#522     //  EARTH:Lnet/minecraft/server/Material;
  #529 = Fieldref           #526.#528     //  net/minecraft/server/Material.EARTH:Lnet/minecraft/server/Material;
  #530 = NameAndType        #30:#522      //  GRASS:Lnet/minecraft/server/Material;
  #531 = Fieldref           #526.#530     //  net/minecraft/server/Material.GRASS:Lnet/minecraft/server/Material;
  #532 = NameAndType        #14:#522      //  WOOD:Lnet/minecraft/server/Material;
  #533 = Fieldref           #526.#532     //  net/minecraft/server/Material.WOOD:Lnet/minecraft/server/Material;
  #534 = Float              18.0f
  #535 = Utf8               ee/ItemToolLow
  #536 = Class              #535          //  ee/ItemToolLow
  #537 = Utf8               getDestroySpeed
  #538 = Utf8               (Lnet/minecraft/server/ItemStack;Lnet/minecraft/server/Block;)F
  #539 = NameAndType        #537:#538     //  getDestroySpeed:(Lnet/minecraft/server/ItemStack;Lnet/minecraft/server/Block;)F
  #540 = Methodref          #536.#539     //  ee/ItemToolLow.getDestroySpeed:(Lnet/minecraft/server/ItemStack;Lnet/minecraft/server/Block;)F
  #541 = Float              15.0f
  #542 = Utf8               Code
  #543 = Utf8               LineNumberTable
  #544 = Utf8               LocalVariableTable
  #545 = Utf8               StackMapTable
  #546 = Utf8               SourceFile
{
  public boolean itemCharging;
    flags: ACC_PUBLIC

  static {};
    flags: ACC_STATIC
    Code:
      stack=4, locals=0, args_size=0
         0: bipush        9
         2: anewarray     #13                 // class net/minecraft/server/Block
         5: dup           
         6: iconst_0      
         7: getstatic     #17                 // Field net/minecraft/server/Block.WOOD:Lnet/minecraft/server/Block;
        10: aastore       
        11: dup           
        12: iconst_1      
        13: getstatic     #20                 // Field net/minecraft/server/Block.BOOKSHELF:Lnet/minecraft/server/Block;
        16: aastore       
        17: dup           
        18: iconst_2      
        19: getstatic     #23                 // Field net/minecraft/server/Block.LOG:Lnet/minecraft/server/Block;
        22: aastore       
        23: dup           
        24: iconst_3      
        25: getstatic     #26                 // Field net/minecraft/server/Block.CHEST:Lnet/minecraft/server/Block;
        28: aastore       
        29: dup           
        30: iconst_4      
        31: getstatic     #29                 // Field net/minecraft/server/Block.DIRT:Lnet/minecraft/server/Block;
        34: aastore       
        35: dup           
        36: iconst_5      
        37: getstatic     #33                 // Field net/minecraft/server/Block.GRASS:Lnet/minecraft/server/BlockGrass;
        40: aastore       
        41: dup           
        42: bipush        6
        44: getstatic     #37                 // Field net/minecraft/server/Block.LEAVES:Lnet/minecraft/server/BlockLeaves;
        47: aastore       
        48: dup           
        49: bipush        7
        51: getstatic     #40                 // Field net/minecraft/server/Block.WEB:Lnet/minecraft/server/Block;
        54: aastore       
        55: dup           
        56: bipush        8
        58: getstatic     #43                 // Field net/minecraft/server/Block.WOOL:Lnet/minecraft/server/Block;
        61: aastore       
        62: putstatic     #45                 // Field blocksEffectiveAgainst:[Lnet/minecraft/server/Block;
        65: return        
      LineNumberTable:
        line 29: 0
        line 26: 65

  protected ee.ItemRedKatar(int);
    flags: ACC_PROTECTED
    Code:
      stack=5, locals=2, args_size=2
         0: aload_0       
         1: iload_1       
         2: iconst_4      
         3: bipush        18
         5: getstatic     #45                 // Field blocksEffectiveAgainst:[Lnet/minecraft/server/Block;
         8: invokespecial #50                 // Method ee/ItemRedTool."<init>":(III[Lnet/minecraft/server/Block;)V
        11: return        
      LocalVariableTable:
        Start  Length  Slot  Name   Signature
               0      12     0  this   Lee/ItemRedKatar;
               0      12     1  var1   I
      LineNumberTable:
        line 33: 0
        line 34: 11

  public boolean a(net.minecraft.server.ItemStack, int, int, int, int, net.minecraft.server.EntityLiving);
    flags: ACC_PUBLIC
    Code:
      stack=12, locals=8, args_size=7
         0: iconst_0      
         1: istore        7
         3: iload_2       
         4: invokestatic  #62                 // Method ee/EEMaps.isLeaf:(I)Z
         7: ifne          53
        10: iload_2       
        11: getstatic     #40                 // Field net/minecraft/server/Block.WEB:Lnet/minecraft/server/Block;
        14: getfield      #65                 // Field net/minecraft/server/Block.id:I
        17: if_icmpeq     53
        20: iload_2       
        21: getstatic     #68                 // Field net/minecraft/server/Block.VINE:Lnet/minecraft/server/Block;
        24: getfield      #65                 // Field net/minecraft/server/Block.id:I
        27: if_icmpeq     53
        30: iload_2       
        31: getstatic     #74                 // Field net/minecraft/server/BlockFlower.LONG_GRASS:Lnet/minecraft/server/BlockLongGrass;
        34: getfield      #77                 // Field net/minecraft/server/BlockLongGrass.id:I
        37: if_icmpeq     53
        40: iload_2       
        41: getstatic     #81                 // Field net/minecraft/server/BlockFlower.DEAD_BUSH:Lnet/minecraft/server/BlockDeadBush;
        44: getfield      #84                 // Field net/minecraft/server/BlockDeadBush.id:I
        47: if_icmpeq     53
        50: iconst_1      
        51: istore        7
        53: iload         7
        55: ifne          123
        58: getstatic     #87                 // Field net/minecraft/server/Block.byId:[Lnet/minecraft/server/Block;
        61: iload_2       
        62: aaload        
        63: aload         6
        65: iload_3       
        66: iload         4
        68: iload         5
        70: new           #89                 // class net/minecraft/server/ItemStack
        73: dup           
        74: iload_2       
        75: iconst_1      
        76: iload_2       
        77: getstatic     #37                 // Field net/minecraft/server/Block.LEAVES:Lnet/minecraft/server/BlockLeaves;
        80: getfield      #92                 // Field net/minecraft/server/BlockLeaves.id:I
        83: if_icmpne     104
        86: aload_1       
        87: invokevirtual #96                 // Method net/minecraft/server/ItemStack.getItem:()Lnet/minecraft/server/Item;
        90: checkcast     #98                 // class ee/ItemEECharged
        93: aload_1       
        94: ldc           #100                // String lastMeta
        96: invokevirtual #104                // Method ee/ItemEECharged.getShort:(Lnet/minecraft/server/ItemStack;Ljava/lang/String;)S
        99: iconst_3      
       100: iand          
       101: goto          117
       104: aload_1       
       105: invokevirtual #96                 // Method net/minecraft/server/ItemStack.getItem:()Lnet/minecraft/server/Item;
       108: checkcast     #98                 // class ee/ItemEECharged
       111: aload_1       
       112: ldc           #100                // String lastMeta
       114: invokevirtual #104                // Method ee/ItemEECharged.getShort:(Lnet/minecraft/server/ItemStack;Ljava/lang/String;)S
       117: invokespecial #109                // Method net/minecraft/server/ItemStack."<init>":(III)V
       120: invokestatic  #115                // Method net/minecraft/server/EEProxy.dropBlockAsItemStack:(Lnet/minecraft/server/Block;Lnet/minecraft/server/EntityLiving;IIILnet/minecraft/server/ItemStack;)V
       123: aload_0       
       124: aload_1       
       125: iload_2       
       126: iload_3       
       127: iload         4
       129: iload         5
       131: aload         6
       133: invokespecial #117                // Method ee/ItemRedTool.a:(Lnet/minecraft/server/ItemStack;IIIILnet/minecraft/server/EntityLiving;)Z
       136: ireturn       
      LocalVariableTable:
        Start  Length  Slot  Name   Signature
               0     137     0  this   Lee/ItemRedKatar;
               0     137     1  var1   Lnet/minecraft/server/ItemStack;
               0     137     2  var2   I
               0     137     3  var3   I
               0     137     4  var4   I
               0     137     5  var5   I
               0     137     6  var6   Lnet/minecraft/server/EntityLiving;
               3     134     7  var7   Z
      LineNumberTable:
        line 38: 0
        line 40: 3
        line 42: 50
        line 45: 53
        line 47: 58
        line 50: 123
      StackMapTable: number_of_entries = 4
           frame_type = 252 /* append */
             offset_delta = 53
        locals = [ int ]
           frame_type = 255 /* full_frame */
          offset_delta = 50
          locals = [ class ee/ItemRedKatar, class net/minecraft/server/ItemStack, int, int, int, int, class net/minecraft/server/EntityLiving, int ]
          stack = [ class net/minecraft/server/Block, class net/minecraft/server/EntityLiving, int, int, int, uninitialized 70, uninitialized 70, int, int ]
           frame_type = 255 /* full_frame */
          offset_delta = 12
          locals = [ class ee/ItemRedKatar, class net/minecraft/server/ItemStack, int, int, int, int, class net/minecraft/server/EntityLiving, int ]
          stack = [ class net/minecraft/server/Block, class net/minecraft/server/EntityLiving, int, int, int, uninitialized 70, uninitialized 70, int, int, int ]
           frame_type = 5 /* same */


  public boolean ConsumeReagent(int, net.minecraft.server.ItemStack, net.minecraft.server.EntityHuman, boolean);
    flags: ACC_PUBLIC
    Code:
      stack=4, locals=6, args_size=5
         0: aload_0       
         1: aload_2       
         2: invokevirtual #131                // Method getFuelRemaining:(Lnet/minecraft/server/ItemStack;)I
         5: bipush        16
         7: if_icmplt     25
        10: aload_0       
        11: aload_2       
        12: aload_0       
        13: aload_2       
        14: invokevirtual #131                // Method getFuelRemaining:(Lnet/minecraft/server/ItemStack;)I
        17: bipush        16
        19: isub          
        20: invokevirtual #135                // Method setFuelRemaining:(Lnet/minecraft/server/ItemStack;I)V
        23: iconst_1      
        24: ireturn       
        25: aload_0       
        26: aload_2       
        27: invokevirtual #131                // Method getFuelRemaining:(Lnet/minecraft/server/ItemStack;)I
        30: istore        5
        32: goto          88
        35: aload_0       
        36: aload_2       
        37: aload_3       
        38: iload         4
        40: invokevirtual #138                // Method ConsumeReagent:(Lnet/minecraft/server/ItemStack;Lnet/minecraft/server/EntityHuman;Z)V
        43: iload         5
        45: aload_0       
        46: aload_2       
        47: invokevirtual #131                // Method getFuelRemaining:(Lnet/minecraft/server/ItemStack;)I
        50: if_icmpne     56
        53: goto          98
        56: aload_0       
        57: aload_2       
        58: invokevirtual #131                // Method getFuelRemaining:(Lnet/minecraft/server/ItemStack;)I
        61: istore        5
        63: aload_0       
        64: aload_2       
        65: invokevirtual #131                // Method getFuelRemaining:(Lnet/minecraft/server/ItemStack;)I
        68: bipush        16
        70: if_icmplt     88
        73: aload_0       
        74: aload_2       
        75: aload_0       
        76: aload_2       
        77: invokevirtual #131                // Method getFuelRemaining:(Lnet/minecraft/server/ItemStack;)I
        80: bipush        16
        82: isub          
        83: invokevirtual #135                // Method setFuelRemaining:(Lnet/minecraft/server/ItemStack;I)V
        86: iconst_1      
        87: ireturn       
        88: aload_0       
        89: aload_2       
        90: invokevirtual #131                // Method getFuelRemaining:(Lnet/minecraft/server/ItemStack;)I
        93: bipush        16
        95: if_icmplt     35
        98: iconst_0      
        99: ireturn       
      LocalVariableTable:
        Start  Length  Slot  Name   Signature
               0     100     0  this   Lee/ItemRedKatar;
               0     100     1  var1   I
               0     100     2  var2   Lnet/minecraft/server/ItemStack;
               0     100     3  var3   Lnet/minecraft/server/EntityHuman;
               0     100     4  var4   Z
              32      68     5  var5   I
      LineNumberTable:
        line 63: 0
        line 65: 10
        line 66: 23
        line 70: 25
        line 72: 32
        line 74: 35
        line 76: 43
        line 78: 53
        line 81: 56
        line 83: 63
        line 85: 73
        line 86: 86
        line 72: 88
        line 90: 98
      StackMapTable: number_of_entries = 5
           frame_type = 25 /* same */
           frame_type = 252 /* append */
             offset_delta = 9
        locals = [ int ]
           frame_type = 20 /* same */
           frame_type = 31 /* same */
           frame_type = 9 /* same */


  public void doSwordBreak(net.minecraft.server.ItemStack, net.minecraft.server.World, net.minecraft.server.EntityHuman);
    flags: ACC_PUBLIC
    Code:
      stack=18, locals=9, args_size=4
         0: aload_0       
         1: aload_1       
         2: invokevirtual #144                // Method chargeLevel:(Lnet/minecraft/server/ItemStack;)I
         5: ifle          291
         8: iconst_0      
         9: istore        4
        11: iconst_1      
        12: istore        5
        14: goto          51
        17: iload         5
        19: aload_0       
        20: aload_1       
        21: invokevirtual #144                // Method chargeLevel:(Lnet/minecraft/server/ItemStack;)I
        24: if_icmpne     30
        27: iconst_1      
        28: istore        4
        30: aload_0       
        31: iconst_1      
        32: aload_1       
        33: aload_3       
        34: iload         4
        36: invokevirtual #146                // Method ConsumeReagent:(ILnet/minecraft/server/ItemStack;Lnet/minecraft/server/EntityHuman;Z)Z
        39: ifne          48
        42: iinc          5, -1
        45: goto          61
        48: iinc          5, 1
        51: iload         5
        53: aload_0       
        54: aload_1       
        55: invokevirtual #144                // Method chargeLevel:(Lnet/minecraft/server/ItemStack;)I
        58: if_icmple     17
        61: iload         5
        63: iconst_1      
        64: if_icmpge     68
        67: return        
        68: aload_3       
        69: invokevirtual #151                // Method net/minecraft/server/EntityHuman.C_:()V
        72: aload_2       
        73: aload_3       
        74: ldc           #153                // String flash
        76: ldc           #154                // float 0.8f
        78: ldc           #155                // float 1.5f
        80: invokevirtual #161                // Method net/minecraft/server/World.makeSound:(Lnet/minecraft/server/Entity;Ljava/lang/String;FF)V
        83: aload_2       
        84: aload_3       
        85: aload_3       
        86: getfield      #165                // Field net/minecraft/server/EntityHuman.locX:D
        89: d2f           
        90: f2d           
        91: iload         5
        93: i2d           
        94: ldc2_w        #166                // double 1.5d
        97: ddiv          
        98: ldc2_w        #168                // double 2.0d
       101: dadd          
       102: dsub          
       103: aload_3       
       104: getfield      #172                // Field net/minecraft/server/EntityHuman.locY:D
       107: iload         5
       109: i2d           
       110: ldc2_w        #166                // double 1.5d
       113: ddiv          
       114: ldc2_w        #168                // double 2.0d
       117: dadd          
       118: dsub          
       119: aload_3       
       120: getfield      #175                // Field net/minecraft/server/EntityHuman.locZ:D
       123: d2f           
       124: f2d           
       125: iload         5
       127: i2d           
       128: ldc2_w        #166                // double 1.5d
       131: ddiv          
       132: ldc2_w        #168                // double 2.0d
       135: dadd          
       136: dsub          
       137: aload_3       
       138: getfield      #165                // Field net/minecraft/server/EntityHuman.locX:D
       141: d2f           
       142: f2d           
       143: iload         5
       145: i2d           
       146: ldc2_w        #166                // double 1.5d
       149: ddiv          
       150: dadd          
       151: ldc2_w        #168                // double 2.0d
       154: dadd          
       155: aload_3       
       156: getfield      #172                // Field net/minecraft/server/EntityHuman.locY:D
       159: iload         5
       161: i2d           
       162: ldc2_w        #166                // double 1.5d
       165: ddiv          
       166: dadd          
       167: ldc2_w        #168                // double 2.0d
       170: dadd          
       171: aload_3       
       172: getfield      #175                // Field net/minecraft/server/EntityHuman.locZ:D
       175: d2f           
       176: f2d           
       177: iload         5
       179: i2d           
       180: ldc2_w        #166                // double 1.5d
       183: ddiv          
       184: dadd          
       185: ldc2_w        #168                // double 2.0d
       188: dadd          
       189: invokestatic  #181                // Method net/minecraft/server/AxisAlignedBB.b:(DDDDDD)Lnet/minecraft/server/AxisAlignedBB;
       192: invokevirtual #185                // Method net/minecraft/server/World.getEntities:(Lnet/minecraft/server/Entity;Lnet/minecraft/server/AxisAlignedBB;)Ljava/util/List;
       195: astore        6
       197: iconst_0      
       198: istore        7
       200: goto          279
       203: aload         6
       205: iload         7
       207: invokeinterface #191,  2          // InterfaceMethod java/util/List.get:(I)Ljava/lang/Object;
       212: instanceof    #106                // class net/minecraft/server/EntityLiving
       215: ifeq          276
       218: aload_3       
       219: invokestatic  #197                // Method ee/EEBase.getSwordMode:(Lnet/minecraft/server/EntityHuman;)Z
       222: ifne          240
       225: aload         6
       227: iload         7
       229: invokeinterface #191,  2          // InterfaceMethod java/util/List.get:(I)Ljava/lang/Object;
       234: instanceof    #199                // class net/minecraft/server/EntityMonster
       237: ifeq          276
       240: aload         6
       242: iload         7
       244: invokeinterface #191,  2          // InterfaceMethod java/util/List.get:(I)Ljava/lang/Object;
       249: checkcast     #201                // class net/minecraft/server/Entity
       252: astore        8
       254: aload         8
       256: aload_3       
       257: invokestatic  #207                // Method net/minecraft/server/DamageSource.playerAttack:(Lnet/minecraft/server/EntityHuman;)Lnet/minecraft/server/DamageSource;
       260: aload_0       
       261: getfield      #210                // Field weaponDamage:I
       264: aload_0       
       265: aload_1       
       266: invokevirtual #144                // Method chargeLevel:(Lnet/minecraft/server/ItemStack;)I
       269: iconst_2      
       270: imul          
       271: iadd          
       272: invokevirtual #214                // Method net/minecraft/server/Entity.damageEntity:(Lnet/minecraft/server/DamageSource;I)Z
       275: pop           
       276: iinc          7, 1
       279: iload         7
       281: aload         6
       283: invokeinterface #218,  1          // InterfaceMethod java/util/List.size:()I
       288: if_icmplt     203
       291: return        
      LocalVariableTable:
        Start  Length  Slot  Name   Signature
               0     292     0  this   Lee/ItemRedKatar;
               0     292     1  var1   Lnet/minecraft/server/ItemStack;
               0     292     2  var2   Lnet/minecraft/server/World;
               0     292     3  var3   Lnet/minecraft/server/EntityHuman;
              11     280     4  var4   Z
              14     277     5  var5   I
             197      94     6  var6   Ljava/util/List;
             200      91     7  var7   I
             254      22     8  var8   Lnet/minecraft/server/Entity;
      LineNumberTable:
        line 125: 0
        line 127: 8
        line 130: 11
        line 132: 17
        line 134: 27
        line 137: 30
        line 139: 42
        line 140: 45
        line 130: 48
        line 144: 61
        line 146: 67
        line 149: 68
        line 150: 72
        line 151: 83
        line 153: 197
        line 155: 203
        line 157: 240
        line 158: 254
        line 153: 276
        line 162: 291
      StackMapTable: number_of_entries = 11
           frame_type = 253 /* append */
             offset_delta = 17
        locals = [ int, int ]
           frame_type = 12 /* same */
           frame_type = 17 /* same */
           frame_type = 2 /* same */
           frame_type = 9 /* same */
           frame_type = 6 /* same */
           frame_type = 253 /* append */
             offset_delta = 134
        locals = [ class java/util/List, int ]
           frame_type = 36 /* same */
           frame_type = 35 /* same */
           frame_type = 2 /* same */
           frame_type = 255 /* full_frame */
          offset_delta = 11
          locals = [ class ee/ItemRedKatar, class net/minecraft/server/ItemStack, class net/minecraft/server/World, class net/minecraft/server/EntityHuman ]
          stack = []


  public boolean interactWith(net.minecraft.server.ItemStack, net.minecraft.server.EntityHuman, net.minecraft.server.World, int, int, int, int);
    flags: ACC_PUBLIC
    Code:
      stack=8, locals=9, args_size=8
         0: aload_3       
         1: invokestatic  #228                // Method net/minecraft/server/EEProxy.isClient:(Lnet/minecraft/server/World;)Z
         4: ifeq          9
         7: iconst_0      
         8: ireturn       
         9: aload_3       
        10: iload         4
        12: iload         5
        14: iload         6
        16: invokevirtual #232                // Method net/minecraft/server/World.getTypeId:(III)I
        19: istore        8
        21: aload_0       
        22: aload_1       
        23: invokevirtual #144                // Method chargeLevel:(Lnet/minecraft/server/ItemStack;)I
        26: pop           
        27: iload         8
        29: invokestatic  #62                 // Method ee/EEMaps.isLeaf:(I)Z
        32: ifne          79
        35: iload         8
        37: getstatic     #40                 // Field net/minecraft/server/Block.WEB:Lnet/minecraft/server/Block;
        40: getfield      #65                 // Field net/minecraft/server/Block.id:I
        43: if_icmpeq     79
        46: iload         8
        48: getstatic     #68                 // Field net/minecraft/server/Block.VINE:Lnet/minecraft/server/Block;
        51: getfield      #65                 // Field net/minecraft/server/Block.id:I
        54: if_icmpeq     79
        57: iload         8
        59: getstatic     #74                 // Field net/minecraft/server/BlockFlower.LONG_GRASS:Lnet/minecraft/server/BlockLongGrass;
        62: getfield      #77                 // Field net/minecraft/server/BlockLongGrass.id:I
        65: if_icmpeq     79
        68: iload         8
        70: getstatic     #81                 // Field net/minecraft/server/BlockFlower.DEAD_BUSH:Lnet/minecraft/server/BlockDeadBush;
        73: getfield      #84                 // Field net/minecraft/server/BlockDeadBush.id:I
        76: if_icmpne     95
        79: aload_0       
        80: aload_1       
        81: aload_2       
        82: aload_3       
        83: iload         4
        85: iload         5
        87: iload         6
        89: iload         7
        91: invokevirtual #235                // Method onItemUseShears:(Lnet/minecraft/server/ItemStack;Lnet/minecraft/server/EntityHuman;Lnet/minecraft/server/World;IIII)Z
        94: pop           
        95: iload         8
        97: getstatic     #29                 // Field net/minecraft/server/Block.DIRT:Lnet/minecraft/server/Block;
       100: getfield      #65                 // Field net/minecraft/server/Block.id:I
       103: if_icmpeq     117
       106: iload         8
       108: getstatic     #33                 // Field net/minecraft/server/Block.GRASS:Lnet/minecraft/server/BlockGrass;
       111: getfield      #238                // Field net/minecraft/server/BlockGrass.id:I
       114: if_icmpne     148
       117: aload_3       
       118: iload         4
       120: iload         5
       122: iconst_1      
       123: iadd          
       124: iload         6
       126: invokevirtual #232                // Method net/minecraft/server/World.getTypeId:(III)I
       129: ifne          148
       132: aload_0       
       133: aload_1       
       134: aload_2       
       135: aload_3       
       136: iload         4
       138: iload         5
       140: iload         6
       142: iload         7
       144: invokevirtual #241                // Method onItemUseHoe:(Lnet/minecraft/server/ItemStack;Lnet/minecraft/server/EntityHuman;Lnet/minecraft/server/World;IIII)Z
       147: pop           
       148: iload         8
       150: invokestatic  #244                // Method ee/EEMaps.isWood:(I)Z
       153: ifeq          172
       156: aload_0       
       157: aload_1       
       158: aload_2       
       159: aload_3       
       160: iload         4
       162: iload         5
       164: iload         6
       166: iload         7
       168: invokevirtual #247                // Method onItemUseAxe:(Lnet/minecraft/server/ItemStack;Lnet/minecraft/server/EntityHuman;Lnet/minecraft/server/World;IIII)Z
       171: pop           
       172: iconst_0      
       173: ireturn       
      LocalVariableTable:
        Start  Length  Slot  Name   Signature
               0     174     0  this   Lee/ItemRedKatar;
               0     174     1  var1   Lnet/minecraft/server/ItemStack;
               0     174     2  var2   Lnet/minecraft/server/EntityHuman;
               0     174     3  var3   Lnet/minecraft/server/World;
               0     174     4  var4   I
               0     174     5  var5   I
               0     174     6  var6   I
               0     174     7  var7   I
              21     153     8  var8   I
      LineNumberTable:
        line 170: 0
        line 172: 7
        line 176: 9
        line 177: 21
        line 179: 27
        line 181: 79
        line 184: 95
        line 186: 132
        line 189: 148
        line 191: 156
        line 194: 172
      StackMapTable: number_of_entries = 6
           frame_type = 9 /* same */
           frame_type = 252 /* append */
             offset_delta = 69
        locals = [ int ]
           frame_type = 15 /* same */
           frame_type = 21 /* same */
           frame_type = 30 /* same */
           frame_type = 23 /* same */


  public boolean onItemUseShears(net.minecraft.server.ItemStack, net.minecraft.server.EntityHuman, net.minecraft.server.World, int, int, int, int);
    flags: ACC_PUBLIC
    Code:
      stack=14, locals=17, args_size=8
         0: aload_0       
         1: aload_1       
         2: invokevirtual #144                // Method chargeLevel:(Lnet/minecraft/server/ItemStack;)I
         5: ifle          546
         8: iconst_0      
         9: istore        8
        11: aload_0       
        12: aload_1       
        13: invokevirtual #251                // Method cleanDroplist:(Lnet/minecraft/server/ItemStack;)V
        16: aload_2       
        17: invokevirtual #151                // Method net/minecraft/server/EntityHuman.C_:()V
        20: aload_3       
        21: aload_2       
        22: ldc           #153                // String flash
        24: ldc           #154                // float 0.8f
        26: ldc           #155                // float 1.5f
        28: invokevirtual #161                // Method net/minecraft/server/World.makeSound:(Lnet/minecraft/server/Entity;Ljava/lang/String;FF)V
        31: aload_0       
        32: aload_1       
        33: invokevirtual #144                // Method chargeLevel:(Lnet/minecraft/server/ItemStack;)I
        36: iconst_2      
        37: iadd          
        38: ineg          
        39: istore        9
        41: goto          519
        44: aload_0       
        45: aload_1       
        46: invokevirtual #144                // Method chargeLevel:(Lnet/minecraft/server/ItemStack;)I
        49: iconst_2      
        50: iadd          
        51: ineg          
        52: istore        10
        54: goto          504
        57: aload_0       
        58: aload_1       
        59: invokevirtual #144                // Method chargeLevel:(Lnet/minecraft/server/ItemStack;)I
        62: iconst_2      
        63: iadd          
        64: ineg          
        65: istore        11
        67: goto          489
        70: aload_3       
        71: iload         4
        73: iload         9
        75: iadd          
        76: iload         5
        78: iload         10
        80: iadd          
        81: iload         6
        83: iload         11
        85: iadd          
        86: invokevirtual #232                // Method net/minecraft/server/World.getTypeId:(III)I
        89: istore        12
        91: iload         12
        93: invokestatic  #62                 // Method ee/EEMaps.isLeaf:(I)Z
        96: ifne          143
        99: iload         12
       101: getstatic     #68                 // Field net/minecraft/server/Block.VINE:Lnet/minecraft/server/Block;
       104: getfield      #65                 // Field net/minecraft/server/Block.id:I
       107: if_icmpeq     143
       110: iload         12
       112: getstatic     #40                 // Field net/minecraft/server/Block.WEB:Lnet/minecraft/server/Block;
       115: getfield      #65                 // Field net/minecraft/server/Block.id:I
       118: if_icmpeq     143
       121: iload         12
       123: getstatic     #74                 // Field net/minecraft/server/BlockFlower.LONG_GRASS:Lnet/minecraft/server/BlockLongGrass;
       126: getfield      #77                 // Field net/minecraft/server/BlockLongGrass.id:I
       129: if_icmpeq     143
       132: iload         12
       134: getstatic     #81                 // Field net/minecraft/server/BlockFlower.DEAD_BUSH:Lnet/minecraft/server/BlockDeadBush;
       137: getfield      #84                 // Field net/minecraft/server/BlockDeadBush.id:I
       140: if_icmpne     486
       143: aload_0       
       144: aload_1       
       145: invokevirtual #131                // Method getFuelRemaining:(Lnet/minecraft/server/ItemStack;)I
       148: iconst_1      
       149: if_icmpge     159
       152: aload_0       
       153: aload_1       
       154: aload_2       
       155: iconst_0      
       156: invokevirtual #138                // Method ConsumeReagent:(Lnet/minecraft/server/ItemStack;Lnet/minecraft/server/EntityHuman;Z)V
       159: aload_0       
       160: aload_1       
       161: invokevirtual #131                // Method getFuelRemaining:(Lnet/minecraft/server/ItemStack;)I
       164: ifle          486
       167: aload_3       
       168: iload         4
       170: iload         9
       172: iadd          
       173: iload         5
       175: iload         10
       177: iadd          
       178: iload         6
       180: iload         11
       182: iadd          
       183: invokevirtual #254                // Method net/minecraft/server/World.getData:(III)I
       186: istore        13
       188: iload         12
       190: invokestatic  #62                 // Method ee/EEMaps.isLeaf:(I)Z
       193: ifne          312
       196: iload         12
       198: getstatic     #68                 // Field net/minecraft/server/Block.VINE:Lnet/minecraft/server/Block;
       201: getfield      #65                 // Field net/minecraft/server/Block.id:I
       204: if_icmpeq     312
       207: iload         12
       209: getstatic     #40                 // Field net/minecraft/server/Block.WEB:Lnet/minecraft/server/Block;
       212: getfield      #65                 // Field net/minecraft/server/Block.id:I
       215: if_icmpeq     312
       218: iload         12
       220: getstatic     #255                // Field net/minecraft/server/Block.LONG_GRASS:Lnet/minecraft/server/BlockLongGrass;
       223: getfield      #77                 // Field net/minecraft/server/BlockLongGrass.id:I
       226: if_icmpeq     312
       229: iload         12
       231: getstatic     #256                // Field net/minecraft/server/Block.DEAD_BUSH:Lnet/minecraft/server/BlockDeadBush;
       234: getfield      #84                 // Field net/minecraft/server/BlockDeadBush.id:I
       237: if_icmpeq     312
       240: getstatic     #87                 // Field net/minecraft/server/Block.byId:[Lnet/minecraft/server/Block;
       243: iload         12
       245: aaload        
       246: aload_3       
       247: iload         4
       249: iload         9
       251: iadd          
       252: iload         5
       254: iload         10
       256: iadd          
       257: iload         6
       259: iload         11
       261: iadd          
       262: iload         13
       264: iconst_0      
       265: invokevirtual #260                // Method net/minecraft/server/Block.getBlockDropped:(Lnet/minecraft/server/World;IIIII)Ljava/util/ArrayList;
       268: astore        14
       270: aload         14
       272: invokevirtual #266                // Method java/util/ArrayList.iterator:()Ljava/util/Iterator;
       275: astore        15
       277: goto          299
       280: aload         15
       282: invokeinterface #272,  1          // InterfaceMethod java/util/Iterator.next:()Ljava/lang/Object;
       287: checkcast     #89                 // class net/minecraft/server/ItemStack
       290: astore        16
       292: aload_0       
       293: aload_1       
       294: aload         16
       296: invokevirtual #276                // Method addToDroplist:(Lnet/minecraft/server/ItemStack;Lnet/minecraft/server/ItemStack;)V
       299: aload         15
       301: invokeinterface #280,  1          // InterfaceMethod java/util/Iterator.hasNext:()Z
       306: ifne          280
       309: goto          370
       312: iload         12
       314: getstatic     #37                 // Field net/minecraft/server/Block.LEAVES:Lnet/minecraft/server/BlockLeaves;
       317: getfield      #92                 // Field net/minecraft/server/BlockLeaves.id:I
       320: if_icmpne     349
       323: aload_0       
       324: aload_1       
       325: new           #89                 // class net/minecraft/server/ItemStack
       328: dup           
       329: getstatic     #37                 // Field net/minecraft/server/Block.LEAVES:Lnet/minecraft/server/BlockLeaves;
       332: getfield      #92                 // Field net/minecraft/server/BlockLeaves.id:I
       335: iconst_1      
       336: iload         13
       338: iconst_3      
       339: iand          
       340: invokespecial #109                // Method net/minecraft/server/ItemStack."<init>":(III)V
       343: invokevirtual #276                // Method addToDroplist:(Lnet/minecraft/server/ItemStack;Lnet/minecraft/server/ItemStack;)V
       346: goto          370
       349: aload_0       
       350: aload_1       
       351: new           #89                 // class net/minecraft/server/ItemStack
       354: dup           
       355: getstatic     #87                 // Field net/minecraft/server/Block.byId:[Lnet/minecraft/server/Block;
       358: iload         12
       360: aaload        
       361: iconst_1      
       362: iload         13
       364: invokespecial #283                // Method net/minecraft/server/ItemStack."<init>":(Lnet/minecraft/server/Block;II)V
       367: invokevirtual #276                // Method addToDroplist:(Lnet/minecraft/server/ItemStack;Lnet/minecraft/server/ItemStack;)V
       370: aload_0       
       371: aload_1       
       372: ldc_w         #285                // String fuelRemaining
       375: aload_0       
       376: aload_1       
       377: invokevirtual #131                // Method getFuelRemaining:(Lnet/minecraft/server/ItemStack;)I
       380: iconst_1      
       381: isub          
       382: invokevirtual #289                // Method setShort:(Lnet/minecraft/server/ItemStack;Ljava/lang/String;I)V
       385: aload_3       
       386: iload         4
       388: iload         9
       390: iadd          
       391: iload         5
       393: iload         10
       395: iadd          
       396: iload         6
       398: iload         11
       400: iadd          
       401: iconst_0      
       402: invokestatic  #295                // Method ee/BigWorldHook.setTypeIdHooked:(Lnet/minecraft/server/World;IIII)Z
       405: pop           
       406: aload_3       
       407: getfield      #299                // Field net/minecraft/server/World.random:Ljava/util/Random;
       410: bipush        8
       412: invokevirtual #305                // Method java/util/Random.nextInt:(I)I
       415: ifne          446
       418: aload_3       
       419: ldc_w         #307                // String largesmoke
       422: iload         4
       424: iload         9
       426: iadd          
       427: i2d           
       428: iload         5
       430: iload         10
       432: iadd          
       433: i2d           
       434: iload         6
       436: iload         11
       438: iadd          
       439: i2d           
       440: dconst_0      
       441: dconst_0      
       442: dconst_0      
       443: invokevirtual #310                // Method net/minecraft/server/World.a:(Ljava/lang/String;DDDDDD)V
       446: aload_3       
       447: getfield      #299                // Field net/minecraft/server/World.random:Ljava/util/Random;
       450: bipush        8
       452: invokevirtual #305                // Method java/util/Random.nextInt:(I)I
       455: ifne          486
       458: aload_3       
       459: ldc_w         #312                // String explode
       462: iload         4
       464: iload         9
       466: iadd          
       467: i2d           
       468: iload         5
       470: iload         10
       472: iadd          
       473: i2d           
       474: iload         6
       476: iload         11
       478: iadd          
       479: i2d           
       480: dconst_0      
       481: dconst_0      
       482: dconst_0      
       483: invokevirtual #310                // Method net/minecraft/server/World.a:(Ljava/lang/String;DDDDDD)V
       486: iinc          11, 1
       489: iload         11
       491: aload_0       
       492: aload_1       
       493: invokevirtual #144                // Method chargeLevel:(Lnet/minecraft/server/ItemStack;)I
       496: iconst_2      
       497: iadd          
       498: if_icmple     70
       501: iinc          10, 1
       504: iload         10
       506: aload_0       
       507: aload_1       
       508: invokevirtual #144                // Method chargeLevel:(Lnet/minecraft/server/ItemStack;)I
       511: iconst_2      
       512: iadd          
       513: if_icmple     57
       516: iinc          9, 1
       519: iload         9
       521: aload_0       
       522: aload_1       
       523: invokevirtual #144                // Method chargeLevel:(Lnet/minecraft/server/ItemStack;)I
       526: iconst_2      
       527: iadd          
       528: if_icmple     44
       531: aload_0       
       532: aload_3       
       533: aload_1       
       534: iload         4
       536: i2d           
       537: iload         5
       539: i2d           
       540: iload         6
       542: i2d           
       543: invokevirtual #316                // Method ejectDropList:(Lnet/minecraft/server/World;Lnet/minecraft/server/ItemStack;DDD)V
       546: iconst_0      
       547: ireturn       
      LocalVariableTable:
        Start  Length  Slot  Name   Signature
               0     548     0  this   Lee/ItemRedKatar;
               0     548     1  var1   Lnet/minecraft/server/ItemStack;
               0     548     2  var2   Lnet/minecraft/server/EntityHuman;
               0     548     3  var3   Lnet/minecraft/server/World;
               0     548     4  var4   I
               0     548     5  var5   I
               0     548     6  var6   I
               0     548     7  var7   I
              11     535     8  var8   Z
              41     490     9  var9   I
              54     462    10 var10   I
              67     434    11 var11   I
              91     395    12 var12   I
             188     298    13 var13   I
             270      42    14 var14   Ljava/util/ArrayList;
             277      35    15 var15   Ljava/util/Iterator;
             292       7    16 var16   Lnet/minecraft/server/ItemStack;
      LineNumberTable:
        line 200: 0
        line 202: 8
        line 203: 11
        line 204: 16
        line 205: 20
        line 207: 31
        line 209: 44
        line 211: 57
        line 213: 70
        line 215: 91
        line 217: 143
        line 219: 152
        line 222: 159
        line 224: 167
        line 226: 188
        line 228: 240
        line 229: 270
        line 231: 277
        line 233: 280
        line 234: 292
        line 231: 299
        line 237: 312
        line 239: 323
        line 243: 349
        line 246: 370
        line 247: 385
        line 249: 406
        line 251: 418
        line 254: 446
        line 256: 458
        line 211: 486
        line 209: 501
        line 207: 516
        line 264: 531
        line 267: 546
      StackMapTable: number_of_entries = 16
           frame_type = 253 /* append */
             offset_delta = 44
        locals = [ int, int ]
           frame_type = 252 /* append */
             offset_delta = 12
        locals = [ int ]
           frame_type = 252 /* append */
             offset_delta = 12
        locals = [ int ]
           frame_type = 252 /* append */
             offset_delta = 72
        locals = [ int ]
           frame_type = 15 /* same */
           frame_type = 254 /* append */
             offset_delta = 120
        locals = [ int, class java/util/ArrayList, class java/util/Iterator ]
           frame_type = 18 /* same */
           frame_type = 249 /* chop */
          offset_delta = 12
           frame_type = 36 /* same */
           frame_type = 20 /* same */
           frame_type = 251 /* same_frame_extended */
          offset_delta = 75
           frame_type = 249 /* chop */
          offset_delta = 39
           frame_type = 2 /* same */
           frame_type = 250 /* chop */
          offset_delta = 14
           frame_type = 250 /* chop */
          offset_delta = 14
           frame_type = 249 /* chop */
          offset_delta = 26


  public boolean onItemUseHoe(net.minecraft.server.ItemStack, net.minecraft.server.EntityHuman, net.minecraft.server.World, int, int, int, int);
    flags: ACC_PUBLIC
    Code:
      stack=14, locals=14, args_size=8
         0: aload_0       
         1: aload_1       
         2: invokevirtual #144                // Method chargeLevel:(Lnet/minecraft/server/ItemStack;)I
         5: ifle          518
         8: aload_2       
         9: invokevirtual #151                // Method net/minecraft/server/EntityHuman.C_:()V
        12: aload_3       
        13: aload_2       
        14: ldc           #153                // String flash
        16: ldc           #154                // float 0.8f
        18: ldc           #155                // float 1.5f
        20: invokevirtual #161                // Method net/minecraft/server/World.makeSound:(Lnet/minecraft/server/Entity;Ljava/lang/String;FF)V
        23: aload_3       
        24: iload         4
        26: iload         5
        28: iload         6
        30: invokevirtual #232                // Method net/minecraft/server/World.getTypeId:(III)I
        33: getstatic     #330                // Field net/minecraft/server/BlockFlower.YELLOW_FLOWER:Lnet/minecraft/server/BlockFlower;
        36: getfield      #331                // Field net/minecraft/server/BlockFlower.id:I
        39: if_icmpeq     137
        42: aload_3       
        43: iload         4
        45: iload         5
        47: iload         6
        49: invokevirtual #232                // Method net/minecraft/server/World.getTypeId:(III)I
        52: getstatic     #334                // Field net/minecraft/server/BlockFlower.RED_ROSE:Lnet/minecraft/server/BlockFlower;
        55: getfield      #331                // Field net/minecraft/server/BlockFlower.id:I
        58: if_icmpeq     137
        61: aload_3       
        62: iload         4
        64: iload         5
        66: iload         6
        68: invokevirtual #232                // Method net/minecraft/server/World.getTypeId:(III)I
        71: getstatic     #337                // Field net/minecraft/server/BlockFlower.BROWN_MUSHROOM:Lnet/minecraft/server/BlockFlower;
        74: getfield      #331                // Field net/minecraft/server/BlockFlower.id:I
        77: if_icmpeq     137
        80: aload_3       
        81: iload         4
        83: iload         5
        85: iload         6
        87: invokevirtual #232                // Method net/minecraft/server/World.getTypeId:(III)I
        90: getstatic     #340                // Field net/minecraft/server/BlockFlower.RED_MUSHROOM:Lnet/minecraft/server/BlockFlower;
        93: getfield      #331                // Field net/minecraft/server/BlockFlower.id:I
        96: if_icmpeq     137
        99: aload_3       
       100: iload         4
       102: iload         5
       104: iload         6
       106: invokevirtual #232                // Method net/minecraft/server/World.getTypeId:(III)I
       109: getstatic     #341                // Field net/minecraft/server/BlockLongGrass.LONG_GRASS:Lnet/minecraft/server/BlockLongGrass;
       112: getfield      #77                 // Field net/minecraft/server/BlockLongGrass.id:I
       115: if_icmpeq     137
       118: aload_3       
       119: iload         4
       121: iload         5
       123: iload         6
       125: invokevirtual #232                // Method net/minecraft/server/World.getTypeId:(III)I
       128: getstatic     #342                // Field net/minecraft/server/BlockDeadBush.DEAD_BUSH:Lnet/minecraft/server/BlockDeadBush;
       131: getfield      #84                 // Field net/minecraft/server/BlockDeadBush.id:I
       134: if_icmpne     140
       137: iinc          5, -1
       140: aload_0       
       141: aload_1       
       142: invokevirtual #144                // Method chargeLevel:(Lnet/minecraft/server/ItemStack;)I
       145: aload_0       
       146: aload_1       
       147: invokevirtual #144                // Method chargeLevel:(Lnet/minecraft/server/ItemStack;)I
       150: imul          
       151: ineg          
       152: iconst_1      
       153: isub          
       154: istore        8
       156: goto          498
       159: aload_0       
       160: aload_1       
       161: invokevirtual #144                // Method chargeLevel:(Lnet/minecraft/server/ItemStack;)I
       164: aload_0       
       165: aload_1       
       166: invokevirtual #144                // Method chargeLevel:(Lnet/minecraft/server/ItemStack;)I
       169: imul          
       170: ineg          
       171: iconst_1      
       172: isub          
       173: istore        9
       175: goto          477
       178: iload         4
       180: iload         8
       182: iadd          
       183: istore        10
       185: iload         6
       187: iload         9
       189: iadd          
       190: istore        11
       192: aload_3       
       193: iload         10
       195: iload         5
       197: iload         11
       199: invokevirtual #232                // Method net/minecraft/server/World.getTypeId:(III)I
       202: istore        12
       204: aload_3       
       205: iload         10
       207: iload         5
       209: iconst_1      
       210: iadd          
       211: iload         11
       213: invokevirtual #232                // Method net/minecraft/server/World.getTypeId:(III)I
       216: istore        13
       218: iload         13
       220: getstatic     #330                // Field net/minecraft/server/BlockFlower.YELLOW_FLOWER:Lnet/minecraft/server/BlockFlower;
       223: getfield      #331                // Field net/minecraft/server/BlockFlower.id:I
       226: if_icmpeq     284
       229: iload         13
       231: getstatic     #334                // Field net/minecraft/server/BlockFlower.RED_ROSE:Lnet/minecraft/server/BlockFlower;
       234: getfield      #331                // Field net/minecraft/server/BlockFlower.id:I
       237: if_icmpeq     284
       240: iload         13
       242: getstatic     #337                // Field net/minecraft/server/BlockFlower.BROWN_MUSHROOM:Lnet/minecraft/server/BlockFlower;
       245: getfield      #331                // Field net/minecraft/server/BlockFlower.id:I
       248: if_icmpeq     284
       251: iload         13
       253: getstatic     #340                // Field net/minecraft/server/BlockFlower.RED_MUSHROOM:Lnet/minecraft/server/BlockFlower;
       256: getfield      #331                // Field net/minecraft/server/BlockFlower.id:I
       259: if_icmpeq     284
       262: iload         13
       264: getstatic     #341                // Field net/minecraft/server/BlockLongGrass.LONG_GRASS:Lnet/minecraft/server/BlockLongGrass;
       267: getfield      #77                 // Field net/minecraft/server/BlockLongGrass.id:I
       270: if_icmpeq     284
       273: iload         13
       275: getstatic     #342                // Field net/minecraft/server/BlockDeadBush.DEAD_BUSH:Lnet/minecraft/server/BlockDeadBush;
       278: getfield      #84                 // Field net/minecraft/server/BlockDeadBush.id:I
       281: if_icmpne     333
       284: getstatic     #87                 // Field net/minecraft/server/Block.byId:[Lnet/minecraft/server/Block;
       287: iload         13
       289: aaload        
       290: aload_3       
       291: iload         10
       293: iload         5
       295: iconst_1      
       296: iadd          
       297: iload         11
       299: aload_3       
       300: iload         10
       302: iload         5
       304: iconst_1      
       305: iadd          
       306: iload         11
       308: invokevirtual #254                // Method net/minecraft/server/World.getData:(III)I
       311: fconst_1      
       312: iconst_1      
       313: invokevirtual #346                // Method net/minecraft/server/Block.dropNaturally:(Lnet/minecraft/server/World;IIIIFI)V
       316: aload_3       
       317: iload         10
       319: iload         5
       321: iconst_1      
       322: iadd          
       323: iload         11
       325: iconst_0      
       326: invokestatic  #295                // Method ee/BigWorldHook.setTypeIdHooked:(Lnet/minecraft/server/World;IIII)Z
       329: pop           
       330: iconst_0      
       331: istore        13
       333: iload         13
       335: ifne          474
       338: iload         12
       340: getstatic     #29                 // Field net/minecraft/server/Block.DIRT:Lnet/minecraft/server/Block;
       343: getfield      #65                 // Field net/minecraft/server/Block.id:I
       346: if_icmpeq     360
       349: iload         12
       351: getstatic     #33                 // Field net/minecraft/server/Block.GRASS:Lnet/minecraft/server/BlockGrass;
       354: getfield      #238                // Field net/minecraft/server/BlockGrass.id:I
       357: if_icmpne     474
       360: aload_0       
       361: aload_1       
       362: invokevirtual #131                // Method getFuelRemaining:(Lnet/minecraft/server/ItemStack;)I
       365: iconst_1      
       366: if_icmpge     376
       369: aload_0       
       370: aload_1       
       371: aload_2       
       372: iconst_0      
       373: invokevirtual #138                // Method ConsumeReagent:(Lnet/minecraft/server/ItemStack;Lnet/minecraft/server/EntityHuman;Z)V
       376: aload_0       
       377: aload_1       
       378: invokevirtual #131                // Method getFuelRemaining:(Lnet/minecraft/server/ItemStack;)I
       381: ifle          474
       384: aload_3       
       385: iload         10
       387: iload         5
       389: iload         11
       391: bipush        60
       393: invokestatic  #295                // Method ee/BigWorldHook.setTypeIdHooked:(Lnet/minecraft/server/World;IIII)Z
       396: pop           
       397: aload_0       
       398: aload_1       
       399: ldc_w         #285                // String fuelRemaining
       402: aload_0       
       403: aload_1       
       404: invokevirtual #131                // Method getFuelRemaining:(Lnet/minecraft/server/ItemStack;)I
       407: iconst_1      
       408: isub          
       409: invokevirtual #289                // Method setShort:(Lnet/minecraft/server/ItemStack;Ljava/lang/String;I)V
       412: aload_3       
       413: getfield      #299                // Field net/minecraft/server/World.random:Ljava/util/Random;
       416: bipush        8
       418: invokevirtual #305                // Method java/util/Random.nextInt:(I)I
       421: ifne          443
       424: aload_3       
       425: ldc_w         #307                // String largesmoke
       428: iload         10
       430: i2d           
       431: iload         5
       433: i2d           
       434: iload         11
       436: i2d           
       437: dconst_0      
       438: dconst_0      
       439: dconst_0      
       440: invokevirtual #310                // Method net/minecraft/server/World.a:(Ljava/lang/String;DDDDDD)V
       443: aload_3       
       444: getfield      #299                // Field net/minecraft/server/World.random:Ljava/util/Random;
       447: bipush        8
       449: invokevirtual #305                // Method java/util/Random.nextInt:(I)I
       452: ifne          474
       455: aload_3       
       456: ldc_w         #312                // String explode
       459: iload         10
       461: i2d           
       462: iload         5
       464: i2d           
       465: iload         11
       467: i2d           
       468: dconst_0      
       469: dconst_0      
       470: dconst_0      
       471: invokevirtual #310                // Method net/minecraft/server/World.a:(Ljava/lang/String;DDDDDD)V
       474: iinc          9, 1
       477: iload         9
       479: aload_0       
       480: aload_1       
       481: invokevirtual #144                // Method chargeLevel:(Lnet/minecraft/server/ItemStack;)I
       484: aload_0       
       485: aload_1       
       486: invokevirtual #144                // Method chargeLevel:(Lnet/minecraft/server/ItemStack;)I
       489: imul          
       490: iconst_1      
       491: iadd          
       492: if_icmple     178
       495: iinc          8, 1
       498: iload         8
       500: aload_0       
       501: aload_1       
       502: invokevirtual #144                // Method chargeLevel:(Lnet/minecraft/server/ItemStack;)I
       505: aload_0       
       506: aload_1       
       507: invokevirtual #144                // Method chargeLevel:(Lnet/minecraft/server/ItemStack;)I
       510: imul          
       511: iconst_1      
       512: iadd          
       513: if_icmple     159
       516: iconst_0      
       517: ireturn       
       518: aload_2       
       519: ifnull        537
       522: aload_2       
       523: iload         4
       525: iload         5
       527: iload         6
       529: invokevirtual #350                // Method net/minecraft/server/EntityHuman.d:(III)Z
       532: ifne          537
       535: iconst_0      
       536: ireturn       
       537: aload_3       
       538: iload         4
       540: iload         5
       542: iload         6
       544: invokevirtual #232                // Method net/minecraft/server/World.getTypeId:(III)I
       547: istore        8
       549: aload_3       
       550: iload         4
       552: iload         5
       554: iconst_1      
       555: iadd          
       556: iload         6
       558: invokevirtual #232                // Method net/minecraft/server/World.getTypeId:(III)I
       561: istore        9
       563: iload         7
       565: ifeq          584
       568: iload         9
       570: ifne          584
       573: iload         8
       575: getstatic     #33                 // Field net/minecraft/server/Block.GRASS:Lnet/minecraft/server/BlockGrass;
       578: getfield      #238                // Field net/minecraft/server/BlockGrass.id:I
       581: if_icmpeq     597
       584: iload         8
       586: getstatic     #29                 // Field net/minecraft/server/Block.DIRT:Lnet/minecraft/server/Block;
       589: getfield      #65                 // Field net/minecraft/server/Block.id:I
       592: if_icmpeq     597
       595: iconst_0      
       596: ireturn       
       597: getstatic     #353                // Field net/minecraft/server/Block.SOIL:Lnet/minecraft/server/Block;
       600: astore        10
       602: aload_3       
       603: iload         4
       605: i2f           
       606: ldc_w         #354                // float 0.5f
       609: fadd          
       610: f2d           
       611: iload         5
       613: i2f           
       614: ldc_w         #354                // float 0.5f
       617: fadd          
       618: f2d           
       619: iload         6
       621: i2f           
       622: ldc_w         #354                // float 0.5f
       625: fadd          
       626: f2d           
       627: aload         10
       629: getfield      #358                // Field net/minecraft/server/Block.stepSound:Lnet/minecraft/server/StepSound;
       632: invokevirtual #364                // Method net/minecraft/server/StepSound.getName:()Ljava/lang/String;
       635: aload         10
       637: getfield      #358                // Field net/minecraft/server/Block.stepSound:Lnet/minecraft/server/StepSound;
       640: invokevirtual #368                // Method net/minecraft/server/StepSound.getVolume1:()F
       643: fconst_1      
       644: fadd          
       645: fconst_2      
       646: fdiv          
       647: aload         10
       649: getfield      #358                // Field net/minecraft/server/Block.stepSound:Lnet/minecraft/server/StepSound;
       652: invokevirtual #371                // Method net/minecraft/server/StepSound.getVolume2:()F
       655: ldc           #154                // float 0.8f
       657: fmul          
       658: invokevirtual #374                // Method net/minecraft/server/World.makeSound:(DDDLjava/lang/String;FF)V
       661: aload_3       
       662: getfield      #377                // Field net/minecraft/server/World.isStatic:Z
       665: ifeq          670
       668: iconst_1      
       669: ireturn       
       670: aload_3       
       671: iload         4
       673: iload         5
       675: iload         6
       677: aload         10
       679: getfield      #65                 // Field net/minecraft/server/Block.id:I
       682: invokestatic  #295                // Method ee/BigWorldHook.setTypeIdHooked:(Lnet/minecraft/server/World;IIII)Z
       685: pop           
       686: iconst_1      
       687: ireturn       
      LocalVariableTable:
        Start  Length  Slot  Name   Signature
               0     688     0  this   Lee/ItemRedKatar;
               0     688     1  var1   Lnet/minecraft/server/ItemStack;
               0     688     2  var2   Lnet/minecraft/server/EntityHuman;
               0     688     3  var3   Lnet/minecraft/server/World;
               0     688     4  var4   I
               0     688     5  var5   I
               0     688     6  var6   I
               0     688     7  var7   I
             156     362     8  var8   I
             549     139     8  var8   I
             175     323     9  var9   I
             563     125     9  var9   I
             185     289    10 var15   I
             192     282    11 var12   I
             204     270    12 var13   I
             218     256    13 var14   I
             602      86    10 var10   Lnet/minecraft/server/Block;
      LineNumberTable:
        line 275: 0
        line 277: 8
        line 278: 12
        line 280: 23
        line 282: 137
        line 285: 140
        line 287: 159
        line 289: 178
        line 290: 185
        line 291: 192
        line 292: 204
        line 294: 218
        line 296: 284
        line 297: 316
        line 298: 330
        line 301: 333
        line 303: 360
        line 305: 369
        line 308: 376
        line 310: 384
        line 311: 397
        line 313: 412
        line 315: 424
        line 318: 443
        line 320: 455
        line 287: 474
        line 285: 495
        line 327: 516
        line 329: 518
        line 331: 535
        line 335: 537
        line 336: 549
        line 338: 563
        line 340: 595
        line 344: 597
        line 345: 602
        line 347: 661
        line 349: 668
        line 353: 670
        line 354: 686
      StackMapTable: number_of_entries = 17
           frame_type = 251 /* same_frame_extended */
          offset_delta = 137
           frame_type = 2 /* same */
           frame_type = 252 /* append */
             offset_delta = 18
        locals = [ int ]
           frame_type = 252 /* append */
             offset_delta = 18
        locals = [ int ]
           frame_type = 255 /* full_frame */
          offset_delta = 105
          locals = [ class ee/ItemRedKatar, class net/minecraft/server/ItemStack, class net/minecraft/server/EntityHuman, class net/minecraft/server/World, int, int, int, int, int, int, int, int, int, int ]
          stack = []
           frame_type = 48 /* same */
           frame_type = 26 /* same */
           frame_type = 15 /* same */
           frame_type = 251 /* same_frame_extended */
          offset_delta = 66
           frame_type = 255 /* full_frame */
          offset_delta = 30
          locals = [ class ee/ItemRedKatar, class net/minecraft/server/ItemStack, class net/minecraft/server/EntityHuman, class net/minecraft/server/World, int, int, int, int, int, int ]
          stack = []
           frame_type = 2 /* same */
           frame_type = 250 /* chop */
          offset_delta = 20
           frame_type = 250 /* chop */
          offset_delta = 19
           frame_type = 18 /* same */
           frame_type = 253 /* append */
             offset_delta = 46
        locals = [ int, int ]
           frame_type = 12 /* same */
           frame_type = 252 /* append */
             offset_delta = 72
        locals = [ class net/minecraft/server/Block ]


  public boolean onItemUseAxe(net.minecraft.server.ItemStack, net.minecraft.server.EntityHuman, net.minecraft.server.World, int, int, int, int);
    flags: ACC_PUBLIC
    Code:
      stack=14, locals=26, args_size=8
         0: aload_0       
         1: aload_1       
         2: invokevirtual #144                // Method chargeLevel:(Lnet/minecraft/server/ItemStack;)I
         5: ifle          439
         8: iload         4
        10: i2d           
        11: dstore        8
        13: iload         5
        15: i2d           
        16: dstore        10
        18: iload         6
        20: i2d           
        21: dstore        12
        23: iconst_0      
        24: istore        14
        26: aload_0       
        27: aload_1       
        28: invokevirtual #251                // Method cleanDroplist:(Lnet/minecraft/server/ItemStack;)V
        31: aload_0       
        32: aload_1       
        33: invokevirtual #144                // Method chargeLevel:(Lnet/minecraft/server/ItemStack;)I
        36: iconst_1      
        37: if_icmpge     42
        40: iconst_0      
        41: ireturn       
        42: aload_2       
        43: invokevirtual #151                // Method net/minecraft/server/EntityHuman.C_:()V
        46: aload_3       
        47: aload_2       
        48: ldc           #153                // String flash
        50: ldc           #154                // float 0.8f
        52: ldc           #155                // float 1.5f
        54: invokevirtual #161                // Method net/minecraft/server/World.makeSound:(Lnet/minecraft/server/Entity;Ljava/lang/String;FF)V
        57: aload_0       
        58: aload_1       
        59: invokevirtual #144                // Method chargeLevel:(Lnet/minecraft/server/ItemStack;)I
        62: iconst_2      
        63: imul          
        64: ineg          
        65: iconst_1      
        66: iadd          
        67: istore        15
        69: goto          413
        72: aload_0       
        73: aload_1       
        74: invokevirtual #144                // Method chargeLevel:(Lnet/minecraft/server/ItemStack;)I
        77: iconst_2      
        78: imul          
        79: iconst_1      
        80: iadd          
        81: istore        16
        83: goto          403
        86: aload_0       
        87: aload_1       
        88: invokevirtual #144                // Method chargeLevel:(Lnet/minecraft/server/ItemStack;)I
        91: iconst_2      
        92: imul          
        93: ineg          
        94: iconst_1      
        95: iadd          
        96: istore        17
        98: goto          386
       101: dload         8
       103: iload         15
       105: i2d           
       106: dadd          
       107: d2i           
       108: istore        18
       110: dload         10
       112: iload         16
       114: i2d           
       115: dadd          
       116: d2i           
       117: istore        19
       119: dload         12
       121: iload         17
       123: i2d           
       124: dadd          
       125: d2i           
       126: istore        20
       128: aload_3       
       129: iload         18
       131: iload         19
       133: iload         20
       135: invokevirtual #232                // Method net/minecraft/server/World.getTypeId:(III)I
       138: istore        21
       140: iload         21
       142: invokestatic  #244                // Method ee/EEMaps.isWood:(I)Z
       145: ifne          156
       148: iload         21
       150: invokestatic  #62                 // Method ee/EEMaps.isLeaf:(I)Z
       153: ifeq          383
       156: aload_0       
       157: aload_1       
       158: invokevirtual #131                // Method getFuelRemaining:(Lnet/minecraft/server/ItemStack;)I
       161: iconst_1      
       162: if_icmpge     206
       165: iload         15
       167: aload_0       
       168: aload_1       
       169: invokevirtual #144                // Method chargeLevel:(Lnet/minecraft/server/ItemStack;)I
       172: if_icmpne     199
       175: iload         17
       177: aload_0       
       178: aload_1       
       179: invokevirtual #144                // Method chargeLevel:(Lnet/minecraft/server/ItemStack;)I
       182: if_icmpne     199
       185: aload_0       
       186: aload_1       
       187: aload_2       
       188: iload         14
       190: invokevirtual #138                // Method ConsumeReagent:(Lnet/minecraft/server/ItemStack;Lnet/minecraft/server/EntityHuman;Z)V
       193: iconst_0      
       194: istore        14
       196: goto          206
       199: aload_0       
       200: aload_1       
       201: aload_2       
       202: iconst_0      
       203: invokevirtual #138                // Method ConsumeReagent:(Lnet/minecraft/server/ItemStack;Lnet/minecraft/server/EntityHuman;Z)V
       206: aload_0       
       207: aload_1       
       208: invokevirtual #131                // Method getFuelRemaining:(Lnet/minecraft/server/ItemStack;)I
       211: ifle          383
       214: aload_3       
       215: iload         18
       217: iload         19
       219: iload         20
       221: invokevirtual #254                // Method net/minecraft/server/World.getData:(III)I
       224: istore        22
       226: getstatic     #87                 // Field net/minecraft/server/Block.byId:[Lnet/minecraft/server/Block;
       229: iload         21
       231: aaload        
       232: aload_3       
       233: iload         18
       235: iload         19
       237: iload         20
       239: iload         22
       241: iconst_0      
       242: invokevirtual #260                // Method net/minecraft/server/Block.getBlockDropped:(Lnet/minecraft/server/World;IIIII)Ljava/util/ArrayList;
       245: astore        23
       247: aload         23
       249: invokevirtual #266                // Method java/util/ArrayList.iterator:()Ljava/util/Iterator;
       252: astore        24
       254: goto          276
       257: aload         24
       259: invokeinterface #272,  1          // InterfaceMethod java/util/Iterator.next:()Ljava/lang/Object;
       264: checkcast     #89                 // class net/minecraft/server/ItemStack
       267: astore        25
       269: aload_0       
       270: aload_1       
       271: aload         25
       273: invokevirtual #276                // Method addToDroplist:(Lnet/minecraft/server/ItemStack;Lnet/minecraft/server/ItemStack;)V
       276: aload         24
       278: invokeinterface #280,  1          // InterfaceMethod java/util/Iterator.hasNext:()Z
       283: ifne          257
       286: aload_3       
       287: iload         18
       289: iload         19
       291: iload         20
       293: iconst_0      
       294: invokestatic  #295                // Method ee/BigWorldHook.setTypeIdHooked:(Lnet/minecraft/server/World;IIII)Z
       297: pop           
       298: iload         21
       300: invokestatic  #62                 // Method ee/EEMaps.isLeaf:(I)Z
       303: ifne          321
       306: aload_0       
       307: aload_1       
       308: ldc_w         #285                // String fuelRemaining
       311: aload_0       
       312: aload_1       
       313: invokevirtual #131                // Method getFuelRemaining:(Lnet/minecraft/server/ItemStack;)I
       316: iconst_1      
       317: isub          
       318: invokevirtual #289                // Method setShort:(Lnet/minecraft/server/ItemStack;Ljava/lang/String;I)V
       321: aload_3       
       322: getfield      #299                // Field net/minecraft/server/World.random:Ljava/util/Random;
       325: bipush        8
       327: invokevirtual #305                // Method java/util/Random.nextInt:(I)I
       330: ifne          352
       333: aload_3       
       334: ldc_w         #307                // String largesmoke
       337: iload         18
       339: i2d           
       340: iload         19
       342: i2d           
       343: iload         20
       345: i2d           
       346: dconst_0      
       347: dconst_0      
       348: dconst_0      
       349: invokevirtual #310                // Method net/minecraft/server/World.a:(Ljava/lang/String;DDDDDD)V
       352: aload_3       
       353: getfield      #299                // Field net/minecraft/server/World.random:Ljava/util/Random;
       356: bipush        8
       358: invokevirtual #305                // Method java/util/Random.nextInt:(I)I
       361: ifne          383
       364: aload_3       
       365: ldc_w         #312                // String explode
       368: iload         18
       370: i2d           
       371: iload         19
       373: i2d           
       374: iload         20
       376: i2d           
       377: dconst_0      
       378: dconst_0      
       379: dconst_0      
       380: invokevirtual #310                // Method net/minecraft/server/World.a:(Ljava/lang/String;DDDDDD)V
       383: iinc          17, 1
       386: iload         17
       388: aload_0       
       389: aload_1       
       390: invokevirtual #144                // Method chargeLevel:(Lnet/minecraft/server/ItemStack;)I
       393: iconst_2      
       394: imul          
       395: iconst_1      
       396: isub          
       397: if_icmple     101
       400: iinc          16, -1
       403: iload         16
       405: bipush        -2
       407: if_icmpge     86
       410: iinc          15, 1
       413: iload         15
       415: aload_0       
       416: aload_1       
       417: invokevirtual #144                // Method chargeLevel:(Lnet/minecraft/server/ItemStack;)I
       420: iconst_2      
       421: imul          
       422: iconst_1      
       423: isub          
       424: if_icmple     72
       427: aload_0       
       428: aload_3       
       429: aload_1       
       430: dload         8
       432: dload         10
       434: dload         12
       436: invokevirtual #316                // Method ejectDropList:(Lnet/minecraft/server/World;Lnet/minecraft/server/ItemStack;DDD)V
       439: iconst_0      
       440: ireturn       
      LocalVariableTable:
        Start  Length  Slot  Name   Signature
               0     441     0  this   Lee/ItemRedKatar;
               0     441     1  var1   Lnet/minecraft/server/ItemStack;
               0     441     2  var2   Lnet/minecraft/server/EntityHuman;
               0     441     3  var3   Lnet/minecraft/server/World;
               0     441     4  var4   I
               0     441     5  var5   I
               0     441     6  var6   I
               0     441     7  var7   I
              13     426     8  var8   D
              18     421    10 var10   D
              23     416    12 var12   D
              26     413    14 var14   Z
              69     358    15 var15   I
              83     327    16 var16   I
              98     302    17 var17   I
             110     273    18 var18   I
             119     264    19 var19   I
             128     255    20 var20   I
             140     243    21 var21   I
             226     157    22 var22   I
             247     136    23 var23   Ljava/util/ArrayList;
             254     129    24 var24   Ljava/util/Iterator;
             269       7    25 var25   Lnet/minecraft/server/ItemStack;
      LineNumberTable:
        line 362: 0
        line 364: 8
        line 365: 13
        line 366: 18
        line 367: 23
        line 368: 26
        line 370: 31
        line 372: 40
        line 375: 42
        line 376: 46
        line 378: 57
        line 380: 72
        line 382: 86
        line 384: 101
        line 385: 110
        line 386: 119
        line 387: 128
        line 389: 140
        line 391: 156
        line 393: 165
        line 395: 185
        line 396: 193
        line 400: 199
        line 404: 206
        line 406: 214
        line 407: 226
        line 408: 247
        line 410: 254
        line 412: 257
        line 413: 269
        line 410: 276
        line 416: 286
        line 418: 298
        line 420: 306
        line 423: 321
        line 425: 333
        line 428: 352
        line 430: 364
        line 382: 383
        line 380: 400
        line 378: 410
        line 438: 427
        line 441: 439
      StackMapTable: number_of_entries = 16
           frame_type = 255 /* full_frame */
          offset_delta = 42
          locals = [ class ee/ItemRedKatar, class net/minecraft/server/ItemStack, class net/minecraft/server/EntityHuman, class net/minecraft/server/World, int, int, int, int, double, double, double, int ]
          stack = []
           frame_type = 252 /* append */
             offset_delta = 29
        locals = [ int ]
           frame_type = 252 /* append */
             offset_delta = 13
        locals = [ int ]
           frame_type = 252 /* append */
             offset_delta = 14
        locals = [ int ]
           frame_type = 255 /* full_frame */
          offset_delta = 54
          locals = [ class ee/ItemRedKatar, class net/minecraft/server/ItemStack, class net/minecraft/server/EntityHuman, class net/minecraft/server/World, int, int, int, int, double, double, double, int, int, int, int, int, int, int, int ]
          stack = []
           frame_type = 42 /* same */
           frame_type = 6 /* same */
           frame_type = 254 /* append */
             offset_delta = 50
        locals = [ int, class java/util/ArrayList, class java/util/Iterator ]
           frame_type = 18 /* same */
           frame_type = 44 /* same */
           frame_type = 30 /* same */
           frame_type = 255 /* full_frame */
          offset_delta = 30
          locals = [ class ee/ItemRedKatar, class net/minecraft/server/ItemStack, class net/minecraft/server/EntityHuman, class net/minecraft/server/World, int, int, int, int, double, double, double, int, int, int, int ]
          stack = []
           frame_type = 2 /* same */
           frame_type = 250 /* chop */
          offset_delta = 16
           frame_type = 250 /* chop */
          offset_delta = 9
           frame_type = 255 /* full_frame */
          offset_delta = 25
          locals = [ class ee/ItemRedKatar, class net/minecraft/server/ItemStack, class net/minecraft/server/EntityHuman, class net/minecraft/server/World, int, int, int, int ]
          stack = []


  public boolean isFull3D();
    flags: ACC_PUBLIC
    Code:
      stack=1, locals=1, args_size=1
         0: iconst_1      
         1: ireturn       
      LocalVariableTable:
        Start  Length  Slot  Name   Signature
               0       2     0  this   Lee/ItemRedKatar;
      LineNumberTable:
        line 446: 0

  public net.minecraft.server.EnumAnimation d(net.minecraft.server.ItemStack);
    flags: ACC_PUBLIC
    Code:
      stack=1, locals=2, args_size=2
         0: getstatic     #393                // Field net/minecraft/server/EnumAnimation.d:Lnet/minecraft/server/EnumAnimation;
         3: areturn       
      LocalVariableTable:
        Start  Length  Slot  Name   Signature
               0       4     0  this   Lee/ItemRedKatar;
               0       4     1  var1   Lnet/minecraft/server/ItemStack;
      LineNumberTable:
        line 454: 0

  public int c(net.minecraft.server.ItemStack);
    flags: ACC_PUBLIC
    Code:
      stack=1, locals=2, args_size=2
         0: ldc_w         #395                // int 72000
         3: ireturn       
      LocalVariableTable:
        Start  Length  Slot  Name   Signature
               0       4     0  this   Lee/ItemRedKatar;
               0       4     1  var1   Lnet/minecraft/server/ItemStack;
      LineNumberTable:
        line 462: 0

  public net.minecraft.server.ItemStack a(net.minecraft.server.ItemStack, net.minecraft.server.World, net.minecraft.server.EntityHuman);
    flags: ACC_PUBLIC
    Code:
      stack=4, locals=4, args_size=4
         0: aload_2       
         1: invokestatic  #228                // Method net/minecraft/server/EEProxy.isClient:(Lnet/minecraft/server/World;)Z
         4: ifeq          9
         7: aload_1       
         8: areturn       
         9: aload_3       
        10: aload_1       
        11: aload_0       
        12: aload_1       
        13: invokevirtual #398                // Method c:(Lnet/minecraft/server/ItemStack;)I
        16: invokevirtual #400                // Method net/minecraft/server/EntityHuman.a:(Lnet/minecraft/server/ItemStack;I)V
        19: aload_1       
        20: areturn       
      LocalVariableTable:
        Start  Length  Slot  Name   Signature
               0      21     0  this   Lee/ItemRedKatar;
               0      21     1  var1   Lnet/minecraft/server/ItemStack;
               0      21     2  var2   Lnet/minecraft/server/World;
               0      21     3  var3   Lnet/minecraft/server/EntityHuman;
      LineNumberTable:
        line 470: 0
        line 472: 7
        line 476: 9
        line 477: 19
      StackMapTable: number_of_entries = 1
           frame_type = 9 /* same */


  public void doShear(net.minecraft.server.ItemStack, net.minecraft.server.World, net.minecraft.server.EntityHuman, net.minecraft.server.Entity);
    flags: ACC_PUBLIC
    Code:
      stack=14, locals=20, args_size=5
         0: aload_0       
         1: aload_1       
         2: invokevirtual #144                // Method chargeLevel:(Lnet/minecraft/server/ItemStack;)I
         5: ifle          880
         8: iconst_0      
         9: istore        7
        11: iconst_0      
        12: istore        5
        14: aload_0       
        15: aload_1       
        16: invokevirtual #131                // Method getFuelRemaining:(Lnet/minecraft/server/ItemStack;)I
        19: bipush        10
        21: if_icmpge     31
        24: aload_0       
        25: aload_1       
        26: aload_3       
        27: iconst_0      
        28: invokevirtual #138                // Method ConsumeReagent:(Lnet/minecraft/server/ItemStack;Lnet/minecraft/server/EntityHuman;Z)V
        31: aload_0       
        32: aload_1       
        33: invokevirtual #131                // Method getFuelRemaining:(Lnet/minecraft/server/ItemStack;)I
        36: bipush        10
        38: if_icmpge     48
        41: aload_0       
        42: aload_1       
        43: aload_3       
        44: iconst_0      
        45: invokevirtual #138                // Method ConsumeReagent:(Lnet/minecraft/server/ItemStack;Lnet/minecraft/server/EntityHuman;Z)V
        48: aload_0       
        49: aload_1       
        50: invokevirtual #131                // Method getFuelRemaining:(Lnet/minecraft/server/ItemStack;)I
        53: bipush        10
        55: if_icmpge     138
        58: aload_0       
        59: aload_1       
        60: aload_3       
        61: iconst_0      
        62: invokevirtual #138                // Method ConsumeReagent:(Lnet/minecraft/server/ItemStack;Lnet/minecraft/server/EntityHuman;Z)V
        65: goto          138
        68: aload_0       
        69: aload_1       
        70: ldc_w         #285                // String fuelRemaining
        73: aload_0       
        74: aload_1       
        75: invokevirtual #131                // Method getFuelRemaining:(Lnet/minecraft/server/ItemStack;)I
        78: bipush        10
        80: isub          
        81: invokevirtual #289                // Method setShort:(Lnet/minecraft/server/ItemStack;Ljava/lang/String;I)V
        84: iinc          5, 1
        87: aload_0       
        88: aload_1       
        89: invokevirtual #131                // Method getFuelRemaining:(Lnet/minecraft/server/ItemStack;)I
        92: bipush        10
        94: if_icmpge     104
        97: aload_0       
        98: aload_1       
        99: aload_3       
       100: iconst_0      
       101: invokevirtual #138                // Method ConsumeReagent:(Lnet/minecraft/server/ItemStack;Lnet/minecraft/server/EntityHuman;Z)V
       104: aload_0       
       105: aload_1       
       106: invokevirtual #131                // Method getFuelRemaining:(Lnet/minecraft/server/ItemStack;)I
       109: bipush        10
       111: if_icmpge     121
       114: aload_0       
       115: aload_1       
       116: aload_3       
       117: iconst_0      
       118: invokevirtual #138                // Method ConsumeReagent:(Lnet/minecraft/server/ItemStack;Lnet/minecraft/server/EntityHuman;Z)V
       121: aload_0       
       122: aload_1       
       123: invokevirtual #131                // Method getFuelRemaining:(Lnet/minecraft/server/ItemStack;)I
       126: bipush        10
       128: if_icmpge     138
       131: aload_0       
       132: aload_1       
       133: aload_3       
       134: iconst_0      
       135: invokevirtual #138                // Method ConsumeReagent:(Lnet/minecraft/server/ItemStack;Lnet/minecraft/server/EntityHuman;Z)V
       138: aload_0       
       139: aload_1       
       140: invokevirtual #131                // Method getFuelRemaining:(Lnet/minecraft/server/ItemStack;)I
       143: bipush        10
       145: if_icmplt     158
       148: iload         5
       150: aload_0       
       151: aload_1       
       152: invokevirtual #144                // Method chargeLevel:(Lnet/minecraft/server/ItemStack;)I
       155: if_icmplt     68
       158: iload         5
       160: ifle          1247
       163: aload_3       
       164: invokevirtual #151                // Method net/minecraft/server/EntityHuman.C_:()V
       167: aload_2       
       168: aload_3       
       169: ldc           #153                // String flash
       171: ldc           #154                // float 0.8f
       173: ldc           #155                // float 1.5f
       175: invokevirtual #161                // Method net/minecraft/server/World.makeSound:(Lnet/minecraft/server/Entity;Ljava/lang/String;FF)V
       178: iconst_3      
       179: iload         5
       181: imul          
       182: istore        8
       184: aload         4
       186: instanceof    #404                // class net/minecraft/server/EntitySheep
       189: ifeq          496
       192: aload_2       
       193: getfield      #299                // Field net/minecraft/server/World.random:Ljava/util/Random;
       196: bipush        100
       198: invokevirtual #305                // Method java/util/Random.nextInt:(I)I
       201: iload         8
       203: if_icmpge     393
       206: new           #404                // class net/minecraft/server/EntitySheep
       209: dup           
       210: aload_2       
       211: invokespecial #407                // Method net/minecraft/server/EntitySheep."<init>":(Lnet/minecraft/server/World;)V
       214: astore        16
       216: aload         4
       218: getfield      #408                // Field net/minecraft/server/Entity.locX:D
       221: aload_3       
       222: getfield      #165                // Field net/minecraft/server/EntityHuman.locX:D
       225: dsub          
       226: dstore        9
       228: aload         4
       230: getfield      #409                // Field net/minecraft/server/Entity.locZ:D
       233: aload_3       
       234: getfield      #175                // Field net/minecraft/server/EntityHuman.locZ:D
       237: dsub          
       238: dstore        11
       240: dload         9
       242: dconst_0      
       243: dcmpg         
       244: ifge          255
       247: dload         9
       249: ldc2_w        #410                // double -1.0d
       252: dmul          
       253: dstore        9
       255: dload         11
       257: dconst_0      
       258: dcmpg         
       259: ifge          270
       262: dload         11
       264: ldc2_w        #410                // double -1.0d
       267: dmul          
       268: dstore        11
       270: dload         9
       272: aload         4
       274: getfield      #408                // Field net/minecraft/server/Entity.locX:D
       277: dadd          
       278: dstore        9
       280: dload         11
       282: aload         4
       284: getfield      #409                // Field net/minecraft/server/Entity.locZ:D
       287: dadd          
       288: dstore        11
       290: aload         4
       292: getfield      #412                // Field net/minecraft/server/Entity.locY:D
       295: dstore        13
       297: bipush        -5
       299: istore        15
       301: goto          387
       304: aload_2       
       305: dload         9
       307: d2i           
       308: dload         13
       310: d2i           
       311: iload         15
       313: iadd          
       314: dload         11
       316: d2i           
       317: invokevirtual #232                // Method net/minecraft/server/World.getTypeId:(III)I
       320: ifeq          384
       323: aload_2       
       324: dload         9
       326: d2i           
       327: dload         13
       329: d2i           
       330: iload         15
       332: iadd          
       333: iconst_1      
       334: iadd          
       335: dload         11
       337: d2i           
       338: invokevirtual #232                // Method net/minecraft/server/World.getTypeId:(III)I
       341: ifne          384
       344: aload         16
       346: dload         9
       348: dload         13
       350: iload         15
       352: i2d           
       353: dadd          
       354: dconst_1      
       355: dadd          
       356: dload         11
       358: invokevirtual #416                // Method net/minecraft/server/EntitySheep.setPosition:(DDD)V
       361: aload         16
       363: aload         4
       365: checkcast     #404                // class net/minecraft/server/EntitySheep
       368: invokevirtual #419                // Method net/minecraft/server/EntitySheep.getColor:()I
       371: invokevirtual #422                // Method net/minecraft/server/EntitySheep.setColor:(I)V
       374: aload_2       
       375: aload         16
       377: invokevirtual #426                // Method net/minecraft/server/World.addEntity:(Lnet/minecraft/server/Entity;)Z
       380: pop           
       381: goto          393
       384: iinc          15, 1
       387: iload         15
       389: iconst_5      
       390: if_icmple     304
       393: aload         4
       395: checkcast     #404                // class net/minecraft/server/EntitySheep
       398: iconst_1      
       399: invokevirtual #430                // Method net/minecraft/server/EntitySheep.setSheared:(Z)V
       402: iconst_3      
       403: aload_2       
       404: getfield      #299                // Field net/minecraft/server/World.random:Ljava/util/Random;
       407: iconst_2      
       408: invokevirtual #305                // Method java/util/Random.nextInt:(I)I
       411: iadd          
       412: aload_0       
       413: aload_1       
       414: invokevirtual #144                // Method chargeLevel:(Lnet/minecraft/server/ItemStack;)I
       417: iconst_2      
       418: idiv          
       419: iadd          
       420: istore        6
       422: aconst_null   
       423: astore        16
       425: iconst_0      
       426: istore        17
       428: goto          479
       431: new           #432                // class net/minecraft/server/EntityItem
       434: dup           
       435: aload_2       
       436: aload_3       
       437: getfield      #165                // Field net/minecraft/server/EntityHuman.locX:D
       440: aload_3       
       441: getfield      #172                // Field net/minecraft/server/EntityHuman.locY:D
       444: aload_3       
       445: getfield      #175                // Field net/minecraft/server/EntityHuman.locZ:D
       448: new           #89                 // class net/minecraft/server/ItemStack
       451: dup           
       452: getstatic     #43                 // Field net/minecraft/server/Block.WOOL:Lnet/minecraft/server/Block;
       455: getfield      #65                 // Field net/minecraft/server/Block.id:I
       458: iload         6
       460: aload         4
       462: checkcast     #404                // class net/minecraft/server/EntitySheep
       465: invokevirtual #419                // Method net/minecraft/server/EntitySheep.getColor:()I
       468: invokespecial #109                // Method net/minecraft/server/ItemStack."<init>":(III)V
       471: invokespecial #435                // Method net/minecraft/server/EntityItem."<init>":(Lnet/minecraft/server/World;DDDLnet/minecraft/server/ItemStack;)V
       474: astore        16
       476: iinc          17, 1
       479: iload         17
       481: iload         6
       483: if_icmplt     431
       486: aload_2       
       487: aload         16
       489: invokevirtual #426                // Method net/minecraft/server/World.addEntity:(Lnet/minecraft/server/Entity;)Z
       492: pop           
       493: goto          1247
       496: aload         4
       498: instanceof    #437                // class net/minecraft/server/EntityMushroomCow
       501: ifeq          1247
       504: aload_2       
       505: getfield      #299                // Field net/minecraft/server/World.random:Ljava/util/Random;
       508: bipush        100
       510: invokevirtual #305                // Method java/util/Random.nextInt:(I)I
       513: iload         8
       515: if_icmpge     692
       518: new           #437                // class net/minecraft/server/EntityMushroomCow
       521: dup           
       522: aload_2       
       523: invokespecial #438                // Method net/minecraft/server/EntityMushroomCow."<init>":(Lnet/minecraft/server/World;)V
       526: astore        16
       528: aload         4
       530: getfield      #408                // Field net/minecraft/server/Entity.locX:D
       533: aload_3       
       534: getfield      #165                // Field net/minecraft/server/EntityHuman.locX:D
       537: dsub          
       538: dstore        9
       540: aload         4
       542: getfield      #409                // Field net/minecraft/server/Entity.locZ:D
       545: aload_3       
       546: getfield      #175                // Field net/minecraft/server/EntityHuman.locZ:D
       549: dsub          
       550: dstore        11
       552: dload         9
       554: dconst_0      
       555: dcmpg         
       556: ifge          567
       559: dload         9
       561: ldc2_w        #410                // double -1.0d
       564: dmul          
       565: dstore        9
       567: dload         11
       569: dconst_0      
       570: dcmpg         
       571: ifge          582
       574: dload         11
       576: ldc2_w        #410                // double -1.0d
       579: dmul          
       580: dstore        11
       582: dload         9
       584: aload         4
       586: getfield      #408                // Field net/minecraft/server/Entity.locX:D
       589: dadd          
       590: dstore        9
       592: dload         11
       594: aload         4
       596: getfield      #409                // Field net/minecraft/server/Entity.locZ:D
       599: dadd          
       600: dstore        11
       602: aload         4
       604: getfield      #412                // Field net/minecraft/server/Entity.locY:D
       607: dstore        13
       609: bipush        -5
       611: istore        15
       613: goto          686
       616: aload_2       
       617: dload         9
       619: d2i           
       620: dload         13
       622: d2i           
       623: iload         15
       625: iadd          
       626: dload         11
       628: d2i           
       629: invokevirtual #232                // Method net/minecraft/server/World.getTypeId:(III)I
       632: ifeq          683
       635: aload_2       
       636: dload         9
       638: d2i           
       639: dload         13
       641: d2i           
       642: iload         15
       644: iadd          
       645: iconst_1      
       646: iadd          
       647: dload         11
       649: d2i           
       650: invokevirtual #232                // Method net/minecraft/server/World.getTypeId:(III)I
       653: ifne          683
       656: aload         16
       658: dload         9
       660: dload         13
       662: iload         15
       664: i2d           
       665: dadd          
       666: dconst_1      
       667: dadd          
       668: dload         11
       670: invokevirtual #439                // Method net/minecraft/server/EntityMushroomCow.setPosition:(DDD)V
       673: aload_2       
       674: aload         16
       676: invokevirtual #426                // Method net/minecraft/server/World.addEntity:(Lnet/minecraft/server/Entity;)Z
       679: pop           
       680: goto          692
       683: iinc          15, 1
       686: iload         15
       688: iconst_5      
       689: if_icmple     616
       692: aload         4
       694: checkcast     #437                // class net/minecraft/server/EntityMushroomCow
       697: invokevirtual #442                // Method net/minecraft/server/EntityMushroomCow.die:()V
       700: new           #444                // class net/minecraft/server/EntityCow
       703: dup           
       704: aload_2       
       705: invokespecial #445                // Method net/minecraft/server/EntityCow."<init>":(Lnet/minecraft/server/World;)V
       708: astore        16
       710: aload         16
       712: aload         4
       714: getfield      #408                // Field net/minecraft/server/Entity.locX:D
       717: aload         4
       719: getfield      #412                // Field net/minecraft/server/Entity.locY:D
       722: aload         4
       724: getfield      #409                // Field net/minecraft/server/Entity.locZ:D
       727: aload         4
       729: getfield      #449                // Field net/minecraft/server/Entity.yaw:F
       732: aload         4
       734: getfield      #452                // Field net/minecraft/server/Entity.pitch:F
       737: invokevirtual #456                // Method net/minecraft/server/EntityCow.setPositionRotation:(DDDFF)V
       740: aload         16
       742: aload         4
       744: checkcast     #437                // class net/minecraft/server/EntityMushroomCow
       747: invokevirtual #459                // Method net/minecraft/server/EntityMushroomCow.getHealth:()I
       750: invokevirtual #462                // Method net/minecraft/server/EntityCow.setHealth:(I)V
       753: aload         16
       755: aload         4
       757: checkcast     #437                // class net/minecraft/server/EntityMushroomCow
       760: getfield      #465                // Field net/minecraft/server/EntityMushroomCow.V:F
       763: putfield      #466                // Field net/minecraft/server/EntityCow.V:F
       766: aload_2       
       767: aload         16
       769: invokevirtual #426                // Method net/minecraft/server/World.addEntity:(Lnet/minecraft/server/Entity;)Z
       772: pop           
       773: aload_2       
       774: ldc_w         #468                // String largeexplode
       777: aload         4
       779: getfield      #408                // Field net/minecraft/server/Entity.locX:D
       782: aload         4
       784: getfield      #412                // Field net/minecraft/server/Entity.locY:D
       787: aload         4
       789: getfield      #471                // Field net/minecraft/server/Entity.length:F
       792: fconst_2      
       793: fdiv          
       794: f2d           
       795: dadd          
       796: aload         4
       798: getfield      #409                // Field net/minecraft/server/Entity.locZ:D
       801: dconst_0      
       802: dconst_0      
       803: dconst_0      
       804: invokevirtual #310                // Method net/minecraft/server/World.a:(Ljava/lang/String;DDDDDD)V
       807: iconst_5      
       808: aload_2       
       809: getfield      #299                // Field net/minecraft/server/World.random:Ljava/util/Random;
       812: iconst_2      
       813: invokevirtual #305                // Method java/util/Random.nextInt:(I)I
       816: iadd          
       817: aload_0       
       818: aload_1       
       819: invokevirtual #144                // Method chargeLevel:(Lnet/minecraft/server/ItemStack;)I
       822: iconst_2      
       823: idiv          
       824: iadd          
       825: istore        17
       827: aconst_null   
       828: astore        18
       830: iconst_0      
       831: istore        19
       833: goto          870
       836: new           #432                // class net/minecraft/server/EntityItem
       839: aload_2       
       840: aload_3       
       841: getfield      #165                // Field net/minecraft/server/EntityHuman.locX:D
       844: aload_3       
       845: getfield      #172                // Field net/minecraft/server/EntityHuman.locY:D
       848: aload_3       
       849: getfield      #175                // Field net/minecraft/server/EntityHuman.locZ:D
       852: new           #89                 // class net/minecraft/server/ItemStack
       855: dup           
       856: getstatic     #474                // Field net/minecraft/server/Block.RED_MUSHROOM:Lnet/minecraft/server/BlockFlower;
       859: iload         17
       861: invokespecial #477                // Method net/minecraft/server/ItemStack."<init>":(Lnet/minecraft/server/Block;I)V
       864: invokespecial #435                // Method net/minecraft/server/EntityItem."<init>":(Lnet/minecraft/server/World;DDDLnet/minecraft/server/ItemStack;)V
       867: iinc          19, 1
       870: iload         19
       872: iload         17
       874: if_icmplt     836
       877: goto          1247
       880: aload         4
       882: instanceof    #404                // class net/minecraft/server/EntitySheep
       885: ifeq          990
       888: new           #404                // class net/minecraft/server/EntitySheep
       891: aload_2       
       892: invokespecial #407                // Method net/minecraft/server/EntitySheep."<init>":(Lnet/minecraft/server/World;)V
       895: aload         4
       897: checkcast     #404                // class net/minecraft/server/EntitySheep
       900: iconst_1      
       901: invokevirtual #430                // Method net/minecraft/server/EntitySheep.setSheared:(Z)V
       904: iconst_3      
       905: aload_2       
       906: getfield      #299                // Field net/minecraft/server/World.random:Ljava/util/Random;
       909: iconst_2      
       910: invokevirtual #305                // Method java/util/Random.nextInt:(I)I
       913: iadd          
       914: istore        5
       916: aconst_null   
       917: astore        7
       919: iconst_0      
       920: istore        6
       922: goto          973
       925: new           #432                // class net/minecraft/server/EntityItem
       928: dup           
       929: aload_2       
       930: aload_3       
       931: getfield      #165                // Field net/minecraft/server/EntityHuman.locX:D
       934: aload_3       
       935: getfield      #172                // Field net/minecraft/server/EntityHuman.locY:D
       938: aload_3       
       939: getfield      #175                // Field net/minecraft/server/EntityHuman.locZ:D
       942: new           #89                 // class net/minecraft/server/ItemStack
       945: dup           
       946: getstatic     #43                 // Field net/minecraft/server/Block.WOOL:Lnet/minecraft/server/Block;
       949: getfield      #65                 // Field net/minecraft/server/Block.id:I
       952: iload         5
       954: aload         4
       956: checkcast     #404                // class net/minecraft/server/EntitySheep
       959: invokevirtual #419                // Method net/minecraft/server/EntitySheep.getColor:()I
       962: invokespecial #109                // Method net/minecraft/server/ItemStack."<init>":(III)V
       965: invokespecial #435                // Method net/minecraft/server/EntityItem."<init>":(Lnet/minecraft/server/World;DDDLnet/minecraft/server/ItemStack;)V
       968: astore        7
       970: iinc          6, 1
       973: iload         6
       975: iload         5
       977: if_icmplt     925
       980: aload_2       
       981: aload         7
       983: invokevirtual #426                // Method net/minecraft/server/World.addEntity:(Lnet/minecraft/server/Entity;)Z
       986: pop           
       987: goto          1247
       990: aload         4
       992: instanceof    #437                // class net/minecraft/server/EntityMushroomCow
       995: ifeq          1247
       998: aload         4
      1000: checkcast     #437                // class net/minecraft/server/EntityMushroomCow
      1003: invokevirtual #442                // Method net/minecraft/server/EntityMushroomCow.die:()V
      1006: new           #444                // class net/minecraft/server/EntityCow
      1009: dup           
      1010: aload         4
      1012: checkcast     #437                // class net/minecraft/server/EntityMushroomCow
      1015: getfield      #480                // Field net/minecraft/server/EntityMushroomCow.world:Lnet/minecraft/server/World;
      1018: invokespecial #445                // Method net/minecraft/server/EntityCow."<init>":(Lnet/minecraft/server/World;)V
      1021: astore        7
      1023: aload         7
      1025: aload         4
      1027: checkcast     #437                // class net/minecraft/server/EntityMushroomCow
      1030: getfield      #481                // Field net/minecraft/server/EntityMushroomCow.locX:D
      1033: aload         4
      1035: checkcast     #437                // class net/minecraft/server/EntityMushroomCow
      1038: getfield      #482                // Field net/minecraft/server/EntityMushroomCow.locY:D
      1041: aload         4
      1043: checkcast     #437                // class net/minecraft/server/EntityMushroomCow
      1046: getfield      #483                // Field net/minecraft/server/EntityMushroomCow.locZ:D
      1049: aload         4
      1051: checkcast     #437                // class net/minecraft/server/EntityMushroomCow
      1054: getfield      #484                // Field net/minecraft/server/EntityMushroomCow.yaw:F
      1057: aload         4
      1059: checkcast     #437                // class net/minecraft/server/EntityMushroomCow
      1062: getfield      #485                // Field net/minecraft/server/EntityMushroomCow.pitch:F
      1065: invokevirtual #456                // Method net/minecraft/server/EntityCow.setPositionRotation:(DDDFF)V
      1068: aload         7
      1070: aload         4
      1072: checkcast     #437                // class net/minecraft/server/EntityMushroomCow
      1075: invokevirtual #459                // Method net/minecraft/server/EntityMushroomCow.getHealth:()I
      1078: invokevirtual #462                // Method net/minecraft/server/EntityCow.setHealth:(I)V
      1081: aload         7
      1083: aload         4
      1085: checkcast     #437                // class net/minecraft/server/EntityMushroomCow
      1088: getfield      #465                // Field net/minecraft/server/EntityMushroomCow.V:F
      1091: putfield      #466                // Field net/minecraft/server/EntityCow.V:F
      1094: aload         4
      1096: checkcast     #437                // class net/minecraft/server/EntityMushroomCow
      1099: getfield      #480                // Field net/minecraft/server/EntityMushroomCow.world:Lnet/minecraft/server/World;
      1102: aload         7
      1104: invokevirtual #426                // Method net/minecraft/server/World.addEntity:(Lnet/minecraft/server/Entity;)Z
      1107: pop           
      1108: aload         4
      1110: checkcast     #437                // class net/minecraft/server/EntityMushroomCow
      1113: getfield      #480                // Field net/minecraft/server/EntityMushroomCow.world:Lnet/minecraft/server/World;
      1116: ldc_w         #468                // String largeexplode
      1119: aload         4
      1121: checkcast     #437                // class net/minecraft/server/EntityMushroomCow
      1124: getfield      #481                // Field net/minecraft/server/EntityMushroomCow.locX:D
      1127: aload         4
      1129: checkcast     #437                // class net/minecraft/server/EntityMushroomCow
      1132: getfield      #482                // Field net/minecraft/server/EntityMushroomCow.locY:D
      1135: aload         4
      1137: checkcast     #437                // class net/minecraft/server/EntityMushroomCow
      1140: getfield      #486                // Field net/minecraft/server/EntityMushroomCow.length:F
      1143: fconst_2      
      1144: fdiv          
      1145: f2d           
      1146: dadd          
      1147: aload         4
      1149: checkcast     #437                // class net/minecraft/server/EntityMushroomCow
      1152: getfield      #483                // Field net/minecraft/server/EntityMushroomCow.locZ:D
      1155: dconst_0      
      1156: dconst_0      
      1157: dconst_0      
      1158: invokevirtual #310                // Method net/minecraft/server/World.a:(Ljava/lang/String;DDDDDD)V
      1161: iconst_0      
      1162: istore        5
      1164: goto          1241
      1167: aload         4
      1169: checkcast     #437                // class net/minecraft/server/EntityMushroomCow
      1172: getfield      #480                // Field net/minecraft/server/EntityMushroomCow.world:Lnet/minecraft/server/World;
      1175: new           #432                // class net/minecraft/server/EntityItem
      1178: dup           
      1179: aload         4
      1181: checkcast     #437                // class net/minecraft/server/EntityMushroomCow
      1184: getfield      #480                // Field net/minecraft/server/EntityMushroomCow.world:Lnet/minecraft/server/World;
      1187: aload         4
      1189: checkcast     #437                // class net/minecraft/server/EntityMushroomCow
      1192: getfield      #481                // Field net/minecraft/server/EntityMushroomCow.locX:D
      1195: aload         4
      1197: checkcast     #437                // class net/minecraft/server/EntityMushroomCow
      1200: getfield      #482                // Field net/minecraft/server/EntityMushroomCow.locY:D
      1203: aload         4
      1205: checkcast     #437                // class net/minecraft/server/EntityMushroomCow
      1208: getfield      #486                // Field net/minecraft/server/EntityMushroomCow.length:F
      1211: f2d           
      1212: dadd          
      1213: aload         4
      1215: checkcast     #437                // class net/minecraft/server/EntityMushroomCow
      1218: getfield      #483                // Field net/minecraft/server/EntityMushroomCow.locZ:D
      1221: new           #89                 // class net/minecraft/server/ItemStack
      1224: dup           
      1225: getstatic     #474                // Field net/minecraft/server/Block.RED_MUSHROOM:Lnet/minecraft/server/BlockFlower;
      1228: invokespecial #489                // Method net/minecraft/server/ItemStack."<init>":(Lnet/minecraft/server/Block;)V
      1231: invokespecial #435                // Method net/minecraft/server/EntityItem."<init>":(Lnet/minecraft/server/World;DDDLnet/minecraft/server/ItemStack;)V
      1234: invokevirtual #426                // Method net/minecraft/server/World.addEntity:(Lnet/minecraft/server/Entity;)Z
      1237: pop           
      1238: iinc          5, 1
      1241: iload         5
      1243: iconst_5      
      1244: if_icmplt     1167
      1247: return        
      LocalVariableTable:
        Start  Length  Slot  Name   Signature
               0    1248     0  this   Lee/ItemRedKatar;
               0    1248     1  var1   Lnet/minecraft/server/ItemStack;
               0    1248     2  var2   Lnet/minecraft/server/World;
               0    1248     3  var3   Lnet/minecraft/server/EntityHuman;
               0    1248     4  var4   Lnet/minecraft/server/Entity;
              14     866     5  var6   I
             916      74     5  var6   I
            1164      83     5  var6   I
             422      74     6 var19   I
             922      68     6 var19   I
              11     869     7  var5   Z
             184     693     8  var7   I
             228     165     9  var9   D
             540     152     9  var9   D
             240     153    11 var11   D
             552     140    11 var11   D
             297      96    13 var13   D
             609      83    13 var13   D
             301      92    15 var15   I
             613      79    15 var15   I
             216     177    16  var8   Lnet/minecraft/server/EntitySheep;
             425      71    16 var21   Lnet/minecraft/server/EntityItem;
             428      58    17 var10   I
             528     164    16 var18   Lnet/minecraft/server/EntityMushroomCow;
             710     167    16 var20   Lnet/minecraft/server/EntityCow;
             827      50    17 var23   I
             830      47    18 var22   Ljava/lang/Object;
             833      44    19 var24   I
             919      71     7 var17   Lnet/minecraft/server/EntityItem;
            1023     224     7 var16   Lnet/minecraft/server/EntityCow;
      LineNumberTable:
        line 486: 0
        line 488: 8
        line 489: 11
        line 491: 14
        line 493: 24
        line 496: 31
        line 498: 41
        line 501: 48
        line 503: 58
        line 506: 65
        line 508: 68
        line 509: 84
        line 511: 87
        line 513: 97
        line 516: 104
        line 518: 114
        line 521: 121
        line 523: 131
        line 506: 138
        line 527: 158
        line 529: 163
        line 530: 167
        line 531: 178
        line 537: 184
        line 539: 192
        line 541: 206
        line 542: 216
        line 543: 228
        line 545: 240
        line 547: 247
        line 550: 255
        line 552: 262
        line 555: 270
        line 556: 280
        line 557: 290
        line 559: 297
        line 561: 304
        line 563: 344
        line 564: 361
        line 565: 374
        line 566: 381
        line 559: 384
        line 571: 393
        line 572: 402
        line 573: 422
        line 575: 425
        line 577: 431
        line 575: 476
        line 580: 486
        line 582: 496
        line 584: 504
        line 586: 518
        line 587: 528
        line 588: 540
        line 590: 552
        line 592: 559
        line 595: 567
        line 597: 574
        line 600: 582
        line 601: 592
        line 602: 602
        line 604: 609
        line 606: 616
        line 608: 656
        line 609: 673
        line 610: 680
        line 604: 683
        line 615: 692
        line 616: 700
        line 617: 710
        line 618: 740
        line 619: 753
        line 620: 766
        line 621: 773
        line 622: 807
        line 623: 827
        line 625: 830
        line 627: 836
        line 625: 867
        line 632: 880
        line 634: 888
        line 635: 895
        line 636: 904
        line 637: 916
        line 639: 919
        line 641: 925
        line 639: 970
        line 644: 980
        line 646: 990
        line 648: 998
        line 649: 1006
        line 650: 1023
        line 651: 1068
        line 652: 1081
        line 653: 1094
        line 654: 1108
        line 656: 1161
        line 658: 1167
        line 656: 1238
        line 661: 1247
      StackMapTable: number_of_entries = 33
           frame_type = 255 /* full_frame */
          offset_delta = 31
          locals = [ class ee/ItemRedKatar, class net/minecraft/server/ItemStack, class net/minecraft/server/World, class net/minecraft/server/EntityHuman, class net/minecraft/server/Entity, int, top, int ]
          stack = []
           frame_type = 16 /* same */
           frame_type = 16 /* same */
           frame_type = 2 /* same */
           frame_type = 35 /* same */
           frame_type = 16 /* same */
           frame_type = 16 /* same */
           frame_type = 19 /* same */
           frame_type = 255 /* full_frame */
          offset_delta = 96
          locals = [ class ee/ItemRedKatar, class net/minecraft/server/ItemStack, class net/minecraft/server/World, class net/minecraft/server/EntityHuman, class net/minecraft/server/Entity, int, top, int, int, double, double, top, top, top, class net/minecraft/server/EntitySheep ]
          stack = []
           frame_type = 14 /* same */
           frame_type = 255 /* full_frame */
          offset_delta = 33
          locals = [ class ee/ItemRedKatar, class net/minecraft/server/ItemStack, class net/minecraft/server/World, class net/minecraft/server/EntityHuman, class net/minecraft/server/Entity, int, top, int, int, double, double, double, int, class net/minecraft/server/EntitySheep ]
          stack = []
           frame_type = 251 /* same_frame_extended */
          offset_delta = 79
           frame_type = 2 /* same */
           frame_type = 255 /* full_frame */
          offset_delta = 5
          locals = [ class ee/ItemRedKatar, class net/minecraft/server/ItemStack, class net/minecraft/server/World, class net/minecraft/server/EntityHuman, class net/minecraft/server/Entity, int, top, int, int ]
          stack = []
           frame_type = 255 /* full_frame */
          offset_delta = 37
          locals = [ class ee/ItemRedKatar, class net/minecraft/server/ItemStack, class net/minecraft/server/World, class net/minecraft/server/EntityHuman, class net/minecraft/server/Entity, int, int, int, int, top, top, top, top, top, top, top, class net/minecraft/server/EntityItem, int ]
          stack = []
           frame_type = 47 /* same */
           frame_type = 255 /* full_frame */
          offset_delta = 16
          locals = [ class ee/ItemRedKatar, class net/minecraft/server/ItemStack, class net/minecraft/server/World, class net/minecraft/server/EntityHuman, class net/minecraft/server/Entity, int, top, int, int ]
          stack = []
           frame_type = 255 /* full_frame */
          offset_delta = 70
          locals = [ class ee/ItemRedKatar, class net/minecraft/server/ItemStack, class net/minecraft/server/World, class net/minecraft/server/EntityHuman, class net/minecraft/server/Entity, int, top, int, int, double, double, top, top, top, class net/minecraft/server/EntityMushroomCow ]
          stack = []
           frame_type = 14 /* same */
           frame_type = 255 /* full_frame */
          offset_delta = 33
          locals = [ class ee/ItemRedKatar, class net/minecraft/server/ItemStack, class net/minecraft/server/World, class net/minecraft/server/EntityHuman, class net/minecraft/server/Entity, int, top, int, int, double, double, double, int, class net/minecraft/server/EntityMushroomCow ]
          stack = []
           frame_type = 251 /* same_frame_extended */
          offset_delta = 66
           frame_type = 2 /* same */
           frame_type = 255 /* full_frame */
          offset_delta = 5
          locals = [ class ee/ItemRedKatar, class net/minecraft/server/ItemStack, class net/minecraft/server/World, class net/minecraft/server/EntityHuman, class net/minecraft/server/Entity, int, top, int, int ]
          stack = []
           frame_type = 255 /* full_frame */
          offset_delta = 143
          locals = [ class ee/ItemRedKatar, class net/minecraft/server/ItemStack, class net/minecraft/server/World, class net/minecraft/server/EntityHuman, class net/minecraft/server/Entity, int, top, int, int, top, top, top, top, top, top, top, class net/minecraft/server/EntityCow, int, class java/lang/Object, int ]
          stack = []
           frame_type = 33 /* same */
           frame_type = 255 /* full_frame */
          offset_delta = 6
          locals = [ class ee/ItemRedKatar, class net/minecraft/server/ItemStack, class net/minecraft/server/World, class net/minecraft/server/EntityHuman, class net/minecraft/server/Entity, int, top, int ]
          stack = []
           frame_type = 255 /* full_frame */
          offset_delta = 2
          locals = [ class ee/ItemRedKatar, class net/minecraft/server/ItemStack, class net/minecraft/server/World, class net/minecraft/server/EntityHuman, class net/minecraft/server/Entity ]
          stack = []
           frame_type = 254 /* append */
             offset_delta = 44
        locals = [ int, int, class net/minecraft/server/EntityItem ]
           frame_type = 47 /* same */
           frame_type = 248 /* chop */
          offset_delta = 16
           frame_type = 255 /* full_frame */
          offset_delta = 176
          locals = [ class ee/ItemRedKatar, class net/minecraft/server/ItemStack, class net/minecraft/server/World, class net/minecraft/server/EntityHuman, class net/minecraft/server/Entity, int, top, class net/minecraft/server/EntityCow ]
          stack = []
           frame_type = 251 /* same_frame_extended */
          offset_delta = 73
           frame_type = 255 /* full_frame */
          offset_delta = 5
          locals = [ class ee/ItemRedKatar, class net/minecraft/server/ItemStack, class net/minecraft/server/World, class net/minecraft/server/EntityHuman, class net/minecraft/server/Entity ]
          stack = []


  public int a(net.minecraft.server.Entity);
    flags: ACC_PUBLIC
    Code:
      stack=1, locals=2, args_size=2
         0: aload_1       
         1: instanceof    #404                // class net/minecraft/server/EntitySheep
         4: ifne          21
         7: aload_1       
         8: instanceof    #437                // class net/minecraft/server/EntityMushroomCow
        11: ifne          21
        14: aload_0       
        15: getfield      #210                // Field weaponDamage:I
        18: goto          22
        21: iconst_1      
        22: ireturn       
      LocalVariableTable:
        Start  Length  Slot  Name   Signature
               0      23     0  this   Lee/ItemRedKatar;
               0      23     1  var1   Lnet/minecraft/server/Entity;
      LineNumberTable:
        line 668: 0
      StackMapTable: number_of_entries = 2
           frame_type = 21 /* same */
           frame_type = 64 /* same_locals_1_stack_item */
          stack = [ int ]


  public boolean a(net.minecraft.server.ItemStack, net.minecraft.server.EntityLiving, net.minecraft.server.EntityLiving);
    flags: ACC_PUBLIC
    Code:
      stack=5, locals=5, args_size=4
         0: aload_3       
         1: instanceof    #148                // class net/minecraft/server/EntityHuman
         4: ifeq          76
         7: aload_3       
         8: checkcast     #148                // class net/minecraft/server/EntityHuman
        11: astore        4
        13: aload_2       
        14: instanceof    #404                // class net/minecraft/server/EntitySheep
        17: ifeq          51
        20: aload_2       
        21: checkcast     #404                // class net/minecraft/server/EntitySheep
        24: invokevirtual #499                // Method net/minecraft/server/EntitySheep.isSheared:()Z
        27: ifne          43
        30: aload_0       
        31: aload_1       
        32: aload         4
        34: getfield      #500                // Field net/minecraft/server/EntityHuman.world:Lnet/minecraft/server/World;
        37: aload         4
        39: aload_2       
        40: invokevirtual #502                // Method doShear:(Lnet/minecraft/server/ItemStack;Lnet/minecraft/server/World;Lnet/minecraft/server/EntityHuman;Lnet/minecraft/server/Entity;)V
        43: aload_2       
        44: iconst_1      
        45: invokevirtual #505                // Method net/minecraft/server/EntityLiving.heal:(I)V
        48: goto          76
        51: aload_2       
        52: instanceof    #437                // class net/minecraft/server/EntityMushroomCow
        55: ifeq          76
        58: aload_0       
        59: aload_1       
        60: aload         4
        62: getfield      #500                // Field net/minecraft/server/EntityHuman.world:Lnet/minecraft/server/World;
        65: aload         4
        67: aload_2       
        68: invokevirtual #502                // Method doShear:(Lnet/minecraft/server/ItemStack;Lnet/minecraft/server/World;Lnet/minecraft/server/EntityHuman;Lnet/minecraft/server/Entity;)V
        71: aload_2       
        72: iconst_1      
        73: invokevirtual #505                // Method net/minecraft/server/EntityLiving.heal:(I)V
        76: iconst_1      
        77: ireturn       
      LocalVariableTable:
        Start  Length  Slot  Name   Signature
               0      78     0  this   Lee/ItemRedKatar;
               0      78     1  var1   Lnet/minecraft/server/ItemStack;
               0      78     2  var2   Lnet/minecraft/server/EntityLiving;
               0      78     3  var3   Lnet/minecraft/server/EntityLiving;
              13      63     4  var4   Lnet/minecraft/server/EntityHuman;
      LineNumberTable:
        line 677: 0
        line 679: 7
        line 681: 13
        line 683: 20
        line 685: 30
        line 688: 43
        line 690: 51
        line 692: 58
        line 693: 71
        line 697: 76
      StackMapTable: number_of_entries = 3
           frame_type = 252 /* append */
             offset_delta = 43
        locals = [ class net/minecraft/server/EntityHuman ]
           frame_type = 7 /* same */
           frame_type = 250 /* chop */
          offset_delta = 24


  public void doAlternate(net.minecraft.server.ItemStack, net.minecraft.server.World, net.minecraft.server.EntityHuman);
    flags: ACC_PUBLIC
    Code:
      stack=1, locals=4, args_size=4
         0: aload_3       
         1: invokestatic  #510                // Method ee/EEBase.updateSwordMode:(Lnet/minecraft/server/EntityHuman;)V
         4: return        
      LocalVariableTable:
        Start  Length  Slot  Name   Signature
               0       5     0  this   Lee/ItemRedKatar;
               0       5     1  var1   Lnet/minecraft/server/ItemStack;
               0       5     2  var2   Lnet/minecraft/server/World;
               0       5     3  var3   Lnet/minecraft/server/EntityHuman;
      LineNumberTable:
        line 702: 0
        line 703: 4

  public void doRelease(net.minecraft.server.ItemStack, net.minecraft.server.World, net.minecraft.server.EntityHuman);
    flags: ACC_PUBLIC
    Code:
      stack=4, locals=4, args_size=4
         0: aload_0       
         1: aload_1       
         2: aload_2       
         3: aload_3       
         4: invokevirtual #513                // Method doSwordBreak:(Lnet/minecraft/server/ItemStack;Lnet/minecraft/server/World;Lnet/minecraft/server/EntityHuman;)V
         7: return        
      LocalVariableTable:
        Start  Length  Slot  Name   Signature
               0       8     0  this   Lee/ItemRedKatar;
               0       8     1  var1   Lnet/minecraft/server/ItemStack;
               0       8     2  var2   Lnet/minecraft/server/World;
               0       8     3  var3   Lnet/minecraft/server/EntityHuman;
      LineNumberTable:
        line 707: 0
        line 708: 7

  public void doToggle(net.minecraft.server.ItemStack, net.minecraft.server.World, net.minecraft.server.EntityHuman);
    flags: ACC_PUBLIC
    Code:
      stack=0, locals=4, args_size=4
         0: return        
      LocalVariableTable:
        Start  Length  Slot  Name   Signature
               0       1     0  this   Lee/ItemRedKatar;
               0       1     1  var1   Lnet/minecraft/server/ItemStack;
               0       1     2  var2   Lnet/minecraft/server/World;
               0       1     3  var3   Lnet/minecraft/server/EntityHuman;
      LineNumberTable:
        line 710: 0

  public boolean canDestroySpecialBlock(net.minecraft.server.Block);
    flags: ACC_PUBLIC
    Code:
      stack=2, locals=2, args_size=2
         0: aload_1       
         1: getfield      #65                 // Field net/minecraft/server/Block.id:I
         4: getstatic     #40                 // Field net/minecraft/server/Block.WEB:Lnet/minecraft/server/Block;
         7: getfield      #65                 // Field net/minecraft/server/Block.id:I
        10: if_icmpne     15
        13: iconst_1      
        14: ireturn       
        15: iconst_0      
        16: ireturn       
      LocalVariableTable:
        Start  Length  Slot  Name   Signature
               0      17     0  this   Lee/ItemRedKatar;
               0      17     1  var1   Lnet/minecraft/server/Block;
      LineNumberTable:
        line 58: 0
      StackMapTable: number_of_entries = 1
           frame_type = 15 /* same */


  public float getStrVsBlock(net.minecraft.server.ItemStack, net.minecraft.server.Block, int);
    flags: ACC_PUBLIC
    Code:
      stack=4, locals=5, args_size=4
         0: aload_0       
         1: aload_1       
         2: ldc           #100                // String lastMeta
         4: invokevirtual #519                // Method getShort:(Lnet/minecraft/server/ItemStack;Ljava/lang/String;)S
         7: iload_3       
         8: if_icmpeq     19
        11: aload_0       
        12: aload_1       
        13: ldc           #100                // String lastMeta
        15: iload_3       
        16: invokevirtual #289                // Method setShort:(Lnet/minecraft/server/ItemStack;Ljava/lang/String;I)V
        19: aload_2       
        20: getfield      #65                 // Field net/minecraft/server/Block.id:I
        23: getstatic     #68                 // Field net/minecraft/server/Block.VINE:Lnet/minecraft/server/Block;
        26: getfield      #65                 // Field net/minecraft/server/Block.id:I
        29: if_icmpeq     144
        32: aload_2       
        33: getfield      #65                 // Field net/minecraft/server/Block.id:I
        36: getstatic     #37                 // Field net/minecraft/server/Block.LEAVES:Lnet/minecraft/server/BlockLeaves;
        39: getfield      #92                 // Field net/minecraft/server/BlockLeaves.id:I
        42: if_icmpeq     144
        45: aload_2       
        46: getfield      #65                 // Field net/minecraft/server/Block.id:I
        49: getstatic     #40                 // Field net/minecraft/server/Block.WEB:Lnet/minecraft/server/Block;
        52: getfield      #65                 // Field net/minecraft/server/Block.id:I
        55: if_icmpeq     144
        58: aload_2       
        59: getfield      #65                 // Field net/minecraft/server/Block.id:I
        62: getstatic     #43                 // Field net/minecraft/server/Block.WOOL:Lnet/minecraft/server/Block;
        65: getfield      #65                 // Field net/minecraft/server/Block.id:I
        68: if_icmpne     75
        71: ldc_w         #520                // float 5.0f
        74: freturn       
        75: aload_2       
        76: getfield      #524                // Field net/minecraft/server/Block.material:Lnet/minecraft/server/Material;
        79: getstatic     #529                // Field net/minecraft/server/Material.EARTH:Lnet/minecraft/server/Material;
        82: if_acmpeq     127
        85: aload_2       
        86: getfield      #524                // Field net/minecraft/server/Block.material:Lnet/minecraft/server/Material;
        89: getstatic     #531                // Field net/minecraft/server/Material.GRASS:Lnet/minecraft/server/Material;
        92: if_acmpeq     127
        95: aload_2       
        96: getfield      #524                // Field net/minecraft/server/Block.material:Lnet/minecraft/server/Material;
        99: getstatic     #533                // Field net/minecraft/server/Material.WOOD:Lnet/minecraft/server/Material;
       102: if_acmpne     120
       105: ldc_w         #534                // float 18.0f
       108: aload_0       
       109: aload_1       
       110: invokevirtual #144                // Method chargeLevel:(Lnet/minecraft/server/ItemStack;)I
       113: iconst_2      
       114: imul          
       115: i2f           
       116: fadd          
       117: goto          126
       120: aload_0       
       121: aload_1       
       122: aload_2       
       123: invokespecial #540                // Method ee/ItemToolLow.getDestroySpeed:(Lnet/minecraft/server/ItemStack;Lnet/minecraft/server/Block;)F
       126: freturn       
       127: ldc_w         #534                // float 18.0f
       130: aload_0       
       131: aload_1       
       132: invokevirtual #144                // Method chargeLevel:(Lnet/minecraft/server/ItemStack;)I
       135: iconst_4      
       136: imul          
       137: i2f           
       138: fadd          
       139: fstore        4
       141: fload         4
       143: freturn       
       144: ldc_w         #541                // float 15.0f
       147: freturn       
      LocalVariableTable:
        Start  Length  Slot  Name   Signature
               0     148     0  this   Lee/ItemRedKatar;
               0     148     1  var1   Lnet/minecraft/server/ItemStack;
               0     148     2  var2   Lnet/minecraft/server/Block;
               0     148     3  var3   I
             141       3     4  var4   F
      LineNumberTable:
        line 96: 0
        line 98: 11
        line 101: 19
        line 103: 58
        line 105: 71
        line 107: 75
        line 109: 95
        line 113: 127
        line 114: 141
        line 119: 144
      StackMapTable: number_of_entries = 6
           frame_type = 19 /* same */
           frame_type = 55 /* same */
           frame_type = 44 /* same */
           frame_type = 69 /* same_locals_1_stack_item */
          stack = [ float ]
           frame_type = 0 /* same */
           frame_type = 16 /* same */

}
