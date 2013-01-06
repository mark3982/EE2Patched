package ee;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.Random;
import java.util.HashMap;
import net.minecraft.server.Block;
import net.minecraft.server.EEProxy;
import net.minecraft.server.EntityHuman;
import net.minecraft.server.EntityPlayer;
import net.minecraft.server.EntityLiving;
import net.minecraft.server.ItemStack;
import net.minecraft.server.Material;
import net.minecraft.server.World;
import net.minecraft.server.NBTTagCompound;
import org.bukkit.Bukkit;

public abstract class ItemToolHigh extends ItemToolLow
{
  public double		emcEatFactor;

  public ItemToolHigh(int var1, int unknown1, int damage, Block[] blocksEffAgainst)
  {
    super(var1, unknown1, damage, blocksEffAgainst);
	emcEatFactor = 0.5d;
  }
  
  //public float getStrVsBlock(ItemStack var1, Block var2, int var3) {	  
  //	  return super.getStrVsBlock(var1, var2, var3);
  //}
  // original code
  //return ((var2.id != EEBlock.eePedestal.id) || (var3 != 0)) && ((var2.id != EEBlock.eeStone.id) || ((var3 != 8) && (var3 != 9))) ? 16.0F / var4 : (var2.material != Material.STONE) && (var2.material != Material.ORE) ? (super.getDestroySpeed(var1, var2) + 4.0F * chargeLevel(var1)) / var4 : ((var2.material == Material.STONE) || (var2.material == Material.ORE)) && (chargeLevel(var1) > 0) ? 16.0F + 16.0F * chargeLevel(var1) / var4 : 1200000.0F / var4;

  public boolean breakBlock(ItemStack iks, EntityHuman player, World world, int x, int y, int z, int typeId, int data) {
	if (iks == null)
		iks = getPlayerKleinStar(player);
	if (iks == null)
		return false;
	if (!UseKleinCharge(iks, (int)((double)EEMaps.getEMC(typeId, data) * emcEatFactor)))
		return false;
	if (!BigWorldHook.setTypeIdHookedPlayer(player, world, x, y, z, 0))
		return false;
	return true;
  }

  public static int __getInteger(ItemStack var1, String var2)
  {
    if (var1.tag == null)
    {
      var1.setTag(new NBTTagCompound());
    }

    if (!var1.tag.hasKey(var2))
    {
      __setInteger(var1, var2, 0);
    }

    return var1.tag.getInt(var2);
  }

  public static void __setInteger(ItemStack var1, String var2, int var3)
  {
    if (var1.tag == null)
    {
      var1.setTag(new NBTTagCompound());
    }

    var1.tag.setInt(var2, var3);
  }
  
  // oops.. i used first letter capital trying to fix
  // that but lots of code to fix in.. temp fix --kmcguire
  public static boolean useKleinCharge(ItemStack iks, int charge) {
	  return UseKleinCharge(iks, charge);
  }
  
  public static boolean hasKleinCharge(ItemStack iks, int charge) {
	  int		points;
	  
	  points = __getInteger(iks, "points");
	  if (points >= charge)
		return true;
	  return false;
  }
  
  public static boolean UseKleinCharge(ItemStack iks, int charge) {
	int 		points;
	
	points = __getInteger(iks, "points");
	//Bukkit.getServer().getLogger().info(String.format("points:%d", points));
	if (charge > points)
		return false;
	__setInteger(iks, "points", points - charge);
	return true;
  }

  public static boolean controlBlockBreakWithInfo(EntityPlayer human, int typeId, byte data) {
	  ItemStack iks;
	  
	  // do not consume energy for tool usage
	  if (true)
		return true;
	  
	  // now take charge from klein or cancel block break
	  iks = getPlayerKleinStar(human);
	  // if not klein do not break block
	  if (iks == null)
		return false;
	  
	  // if not enough charge do not break block
	  if (!UseKleinCharge(iks, EEMaps.getEMC(typeId, data)))
		return false;
	  // okay let the block break
	  return true;
  }
  
  public abstract boolean interactWithSpecial(ItemStack var1, EntityHuman var2, World var3, int var4, int var5, int var6, int var7);

  /*
   * This calls the interactWithSpecial which is the method specialized 
   * for that tool. This just peforms some needed but shared functionality
   * across all tools. 
  */ 
  public boolean interactWith(ItemStack var1, EntityHuman var2, World var3, int var4, int var5, int var6, int var7) {
	boolean		result;

	if (chargeLevel(var1) < 1)
		return false;

	result = interactWithSpecial(var1, var2, var3, var4, var5, var6, var7);

    while (chargeLevel(var1) > 0)
		doUncharge(var1, var3, var2);
		
	return result;
  }
  
  public static ItemStack getPlayerKleinStar(EntityHuman human) {
    ItemStack[]			inv;
    ItemStack			iks;
    int					mpoints;
    int					points;
    
    inv = human.inventory.items;
    
    //iks.setKleinPoints(istk, points - 10);
    
    mpoints = -1;
    iks = null;
    for (ItemStack istk : inv) {
		if (istk == null)
			continue;
		if (EEBase.isKleinStar(istk.id)) {
			points = __getInteger(istk, "points");
			if (points > mpoints) {
				iks = istk;
				mpoints = points;
				break;
			}
		}
	}
	return iks;
  }
}
