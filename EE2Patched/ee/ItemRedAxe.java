package ee;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.Random;
import net.minecraft.server.Block;
import net.minecraft.server.EEProxy;
import net.minecraft.server.EntityHuman;
import net.minecraft.server.ItemStack;
import net.minecraft.server.Material;
import net.minecraft.server.World;

//@@mcopy:getStrVsBlock:*
//@@mcopy:canDestroySpecialBlock:*
//IGNORE @@mir:*:getDestroySpeed:*:ee/ItemToolLow:getDestroySpeed:*

public class ItemRedAxe extends ItemToolHigh
{
  public boolean itemCharging;
  private static Block[] blocksEffectiveAgainst = { Block.WOOD, Block.BOOKSHELF, Block.LOG, Block.CHEST };

  protected ItemRedAxe(int var1)
  {
    super(var1, 3, 12, blocksEffectiveAgainst);
  }

  public float getDestroySpeed(ItemStack var1, Block var2)
  {
    return var2.material == Material.WOOD ? 18.0F + chargeLevel(var1) * 2 : super.getDestroySpeed(var1, var2);
  }

  public void doBreak(ItemStack var1, World var2, EntityHuman var3)
  {
    if (chargeLevel(var1) > 0)
    {
      double var4 = EEBase.playerX(var3);
      double var6 = EEBase.playerY(var3);
      double var8 = EEBase.playerZ(var3);
      boolean var10 = false;
      cleanDroplist(var1);

      var3.C_();
      var2.makeSound(var3, "flash", 0.8F, 1.5F);

      for (int var11 = -(chargeLevel(var1) * 2) + 1; var11 <= chargeLevel(var1) * 2 - 1; var11++)
      {
        for (int var12 = chargeLevel(var1) * 2 + 1; var12 >= -2; var12--)
        {
          for (int var13 = -(chargeLevel(var1) * 2) + 1; var13 <= chargeLevel(var1) * 2 - 1; var13++)
          {
            int var14 = (int)(var4 + var11);
            int var15 = (int)(var6 + var12);
            int var16 = (int)(var8 + var13);
            int var17 = var2.getTypeId(var14, var15, var16);
            int var18 = var2.getData(var14, var15, var16);

            if ((!EEMaps.isWood(var17)) && (!EEMaps.isLeaf(var17)))
              continue;

            if (!breakBlock(null, var3, var2, var14, var15, var16, var17, var18))
				continue;
              
            ArrayList var19 = Block.byId[var17].getBlockDropped(var2, var14, var15, var16, var18, 0);
            Iterator var20 = var19.iterator();

            while (var20.hasNext())
            {
              ItemStack var21 = (ItemStack)var20.next();
              addToDroplist(var1, var21);
            }

            if (var2.random.nextInt(8) == 0)
            {
              var2.a("largesmoke", var14, var15, var16, 0.0D, 0.0D, 0.0D);
            }

            if (var2.random.nextInt(8) != 0)
              continue;
            var2.a("explode", var14, var15, var16, 0.0D, 0.0D, 0.0D);
          }

        }

      }

      ejectDropList(var2, var1, var4, var6, var8);
    }
  }

  public ItemStack a(ItemStack var1, World var2, EntityHuman var3)
  {
    if (EEProxy.isClient(var2))
    {
      return var1;
    }

    doBreak(var1, var2, var3);
    return var1;
  }

  public boolean interactWithSpecial(ItemStack var1, EntityHuman var2, World var3, int var4, int var5, int var6, int var7)
  {
    if (EEProxy.isClient(var3))
    {
      return false;
    }

    if (chargeLevel(var1) > 0)
    {
      double var8 = var4;
      double var10 = var5;
      double var12 = var6;
      boolean var14 = false;
      cleanDroplist(var1);

      var2.C_();
      var3.makeSound(var2, "flash", 0.8F, 1.5F);

      for (int var15 = -(chargeLevel(var1) * 2) + 1; var15 <= chargeLevel(var1) * 2 - 1; var15++)
      {
        for (int var16 = chargeLevel(var1) * 2 + 1; var16 >= -2; var16--)
        {
          for (int var17 = -(chargeLevel(var1) * 2) + 1; var17 <= chargeLevel(var1) * 2 - 1; var17++)
          {
            int var18 = (int)(var8 + var15);
            int var19 = (int)(var10 + var16);
            int var20 = (int)(var12 + var17);
            int var21 = var3.getTypeId(var18, var19, var20);

            if ((!EEMaps.isWood(var21)) && (!EEMaps.isLeaf(var21)))
              continue;

            int var22 = var3.getData(var18, var19, var20);            
            
            if (!breakBlock(null, var2, var3, var18, var19, var20, var21, var22))
				continue;
            
            ArrayList var23 = Block.byId[var21].getBlockDropped(var3, var18, var19, var20, var22, 0);
            Iterator var24 = var23.iterator();

            while (var24.hasNext())
            {
              ItemStack var25 = (ItemStack)var24.next();
              addToDroplist(var1, var25);
            }

            if (!EEMaps.isLeaf(var21))
            {
              setShort(var1, "fuelRemaining", getFuelRemaining(var1) - 1);
            }

            if (var3.random.nextInt(8) == 0)
            {
              var3.a("largesmoke", var18, var19, var20, 0.0D, 0.0D, 0.0D);
            }

            if (var3.random.nextInt(8) != 0)
              continue;
            var3.a("explode", var18, var19, var20, 0.0D, 0.0D, 0.0D);
          }

        }

      }

      ejectDropList(var3, var1, var8, var10, var12);
    }

    return false;
  }

  public void doToggle(ItemStack var1, World var2, EntityHuman var3)
  {
  }
}
