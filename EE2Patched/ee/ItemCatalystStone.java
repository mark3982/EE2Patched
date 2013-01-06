package ee;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.Random;
import net.minecraft.server.Block;
import net.minecraft.server.EEProxy;
import net.minecraft.server.EntityHuman;
import net.minecraft.server.ItemStack;
import net.minecraft.server.World;
import org.bukkit.Bukkit;

public class ItemCatalystStone extends ItemEECharged
{
  public ItemCatalystStone(int paramInt)
  {
    super(paramInt, 3);
  }

  public ItemStack a(ItemStack paramItemStack, World paramWorld, EntityHuman paramEntityHuman)
  {
    if (EEProxy.isClient(paramWorld))
    {
      return paramItemStack;
    }

    doRelease(paramItemStack, paramWorld, paramEntityHuman);
    return paramItemStack;
  }

  public boolean interactWith(ItemStack paramItemStack, EntityHuman paramEntityHuman, World paramWorld, int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {  
    if (EEProxy.isClient(paramWorld))
    {
      return false;
    }
    if (getCooldown(paramItemStack) > 0)
    {
      return false;
    }
    
	ItemStack			ks;
	
	//ks = ItemToolHigh.getPlayerKleinStar(paramEntityHuman);
	//if (ks == null) {
	//	Bukkit.getServer().getPlayer(paramEntityHuman.name).sendMessage("No Klein Star!");
	//	return false;
	//} 
	ks = null;

    initCooldown(paramItemStack);
    paramWorld.makeSound(paramEntityHuman, "destruct", 0.5F, 1.0F);
    cleanDroplist(paramItemStack);
    int i = 1;
    int j = paramInt1;
    int k = paramInt2;
    int m = paramInt3;
    int n;
    int i1;
    int i2;
    if (paramInt4 == 0)
    {
      for (n = 0; n < (chargeLevel(paramItemStack) + 1) * (chargeLevel(paramItemStack) + 1); n++)
      {
        for (i1 = -1; i1 <= 1; i1++)
        {
          for (i2 = -1; i2 <= 1; i2++)
          {
            breakBlock(ks, paramItemStack, paramWorld, j + i1, k + n, m + i2);
          }
        }
      }
    }

    if (paramInt4 == 1)
    {
      for (n = 0; n > -((chargeLevel(paramItemStack) + 1) * (chargeLevel(paramItemStack) + 1)); n--)
      {
        for (i1 = -1; i1 <= 1; i1++)
        {
          for (i2 = -1; i2 <= 1; i2++)
          {
            breakBlock(ks, paramItemStack, paramWorld, j + i1, k + n, m + i2);
          }
        }
      }
    }

    if (paramInt4 == 2)
    {
      for (n = 0; n < (chargeLevel(paramItemStack) + 1) * (chargeLevel(paramItemStack) + 1); n++)
      {
        for (i1 = -1; i1 <= 1; i1++)
        {
          for (i2 = -1; i2 <= 1; i2++)
          {
            breakBlock(ks, paramItemStack, paramWorld, j + i1, k + i2, m + n);
          }
        }
      }
    }

    if (paramInt4 == 3)
    {
      for (n = 0; n > -((chargeLevel(paramItemStack) + 1) * (chargeLevel(paramItemStack) + 1)); n--)
      {
        for (i1 = -1; i1 <= 1; i1++)
        {
          for (i2 = -1; i2 <= 1; i2++)
          {
            breakBlock(ks, paramItemStack, paramWorld, j + i1, k + i2, m + n);
          }
        }
      }
    }

    if (paramInt4 == 4)
    {
      for (n = 0; n < (chargeLevel(paramItemStack) + 1) * (chargeLevel(paramItemStack) + 1); n++)
      {
        for (i1 = -1; i1 <= 1; i1++)
        {
          for (i2 = -1; i2 <= 1; i2++)
          {
            breakBlock(ks, paramItemStack, paramWorld, j + n, k + i2, m + i1);
          }
        }
      }
    }

    if (paramInt4 == 5)
    {
      for (n = 0; n > -((chargeLevel(paramItemStack) + 1) * (chargeLevel(paramItemStack) + 1)); n--)
      {
        for (i1 = -1; i1 <= 1; i1++)
        {
          for (i2 = -1; i2 <= 1; i2++)
          {
            breakBlock(ks, paramItemStack, paramWorld, j + n, k + i2, m + i1);
          }
        }
      }

    }

    ejectDropList(paramWorld, paramItemStack, paramInt1, paramInt2, paramInt3);
    return true;
  }

  public void breakBlock(ItemStack ks, ItemStack paramItemStack, World paramWorld, int paramInt1, int paramInt2, int paramInt3)
  {
    int i = paramWorld.getTypeId(paramInt1, paramInt2, paramInt3);
    int j = paramWorld.getData(paramInt1, paramInt2, paramInt3);

    if (Block.byId[i] != null)
    {
      if ((i != 0) && (Block.byId[i].getHardness(j) >= 0.0F) && (Block.byId[i].getHardness(j) <= 10.0F))
      {
        ArrayList localArrayList = Block.byId[i].getBlockDropped(paramWorld, paramInt1, paramInt2, paramInt3, j, 0);
        Iterator localIterator = localArrayList.iterator();
		
		//if (!ItemToolHigh.useKleinCharge(ks, EEMaps.getEMC(i, j)))
		//	return;
		ks = null;

        if (!BigWorldHook.setTypeIdHooked(paramWorld, paramInt1, paramInt2, paramInt3, 0)) {
			return;
        }
        
        while (localIterator.hasNext())
        {
          ItemStack localItemStack = (ItemStack)localIterator.next();
          addToDroplist(paramItemStack, localItemStack);
        }

        if (paramWorld.random.nextInt(8) == 0)
        {
          paramWorld.a("largesmoke", paramInt1, paramInt2, paramInt3, 0.0D, 0.0D, 0.0D);
        }

        if (paramWorld.random.nextInt(8) == 0)
        {
          paramWorld.a("explode", paramInt1, paramInt2, paramInt3, 0.0D, 0.0D, 0.0D);
        }
      }
    }
  }

  public void doPassive(ItemStack paramItemStack, World paramWorld, EntityHuman paramEntityHuman)
  {
    decCooldown(paramItemStack);
  }
  public void doActive(ItemStack paramItemStack, World paramWorld, EntityHuman paramEntityHuman) {
  }

  public void doHeld(ItemStack paramItemStack, World paramWorld, EntityHuman paramEntityHuman) {
  }

  public void doRelease(ItemStack paramItemStack, World paramWorld, EntityHuman paramEntityHuman) {

	ItemStack			ks;
	
	//ks = ItemToolHigh.getPlayerKleinStar(paramEntityHuman);
	//if (ks == null) {
	//	Bukkit.getServer().getPlayer(paramEntityHuman.name).sendMessage("No Klein Star!");
	//	return;
	//}
	ks = null;
		  
    if (getCooldown(paramItemStack) <= 0)
    {
      initCooldown(paramItemStack);
      paramWorld.makeSound(paramEntityHuman, "destruct", 0.5F, 1.0F);
      paramEntityHuman.C_();
      cleanDroplist(paramItemStack);
      boolean bool = true;
      double d = EEBase.direction(paramEntityHuman);
      int i = (int)EEBase.playerX(paramEntityHuman);
      int j = (int)(EEBase.playerY(paramEntityHuman) + paramEntityHuman.getHeadHeight());
      int k = (int)EEBase.playerZ(paramEntityHuman);
      int m;
      int n;
      int i1;
      if (d == 0.0D)
      {
        for (m = -2; m >= -((chargeLevel(paramItemStack) + 1) * (chargeLevel(paramItemStack) + 1)) - 1; m--)
        {
          for (n = -1; n <= 1; n++)
          {
            for (i1 = -1; i1 <= 1; i1++)
            {
              breakBlock(ks, paramItemStack, paramWorld, i + n, j + m, k + i1);
            }
          }
        }
      }

      if (d == 1.0D)
      {
        for (m = 2; m <= (chargeLevel(paramItemStack) + 1) * (chargeLevel(paramItemStack) + 1) + 1; m++)
        {
          for (n = -1; n <= 1; n++)
          {
            for (i1 = -1; i1 <= 1; i1++)
            {
              breakBlock(ks, paramItemStack, paramWorld, i + n, j + m, k + i1);
            }
          }
        }
      }

      if (d == 2.0D)
      {
        for (m = 1; m <= (chargeLevel(paramItemStack) + 1) * (chargeLevel(paramItemStack) + 1); m++)
        {
          for (n = -1; n <= 1; n++)
          {
            for (i1 = -1; i1 <= 1; i1++)
            {
              breakBlock(ks, paramItemStack, paramWorld, i + n, j + i1, k + m);
            }
          }
        }
      }

      if (d == 3.0D)
      {
        for (m = -1; m >= -((chargeLevel(paramItemStack) + 1) * (chargeLevel(paramItemStack) + 1)); m--)
        {
          for (n = -1; n <= 1; n++)
          {
            for (i1 = -1; i1 <= 1; i1++)
            {
              breakBlock(ks, paramItemStack, paramWorld, i + m, j + i1, k + n);
            }
          }
        }
      }

      if (d == 4.0D)
      {
        for (m = -1; m >= -((chargeLevel(paramItemStack) + 1) * (chargeLevel(paramItemStack) + 1)); m--)
        {
          for (n = -1; n <= 1; n++)
          {
            for (i1 = -1; i1 <= 1; i1++)
            {
              breakBlock(ks, paramItemStack, paramWorld, i + n, j + i1, k + m);
            }
          }
        }
      }

      if (d == 5.0D)
      {
        for (m = 1; m <= (chargeLevel(paramItemStack) + 1) * (chargeLevel(paramItemStack) + 1); m++)
        {
          for (n = -1; n <= 1; n++)
          {
            for (i1 = -1; i1 <= 1; i1++)
            {
              breakBlock(ks, paramItemStack, paramWorld, i + m, j + i1, k + n);
            }
          }
        }

      }

      ejectDropList(paramWorld, paramItemStack, paramEntityHuman.locX, paramEntityHuman.locY, paramEntityHuman.locZ);
    }
  }

  public void doAlternate(ItemStack paramItemStack, World paramWorld, EntityHuman paramEntityHuman) {
  }

  public void doLeftClick(ItemStack paramItemStack, World paramWorld, EntityHuman paramEntityHuman) {
  }

  public boolean canActivate() {
    return false;
  }

  public void doToggle(ItemStack paramItemStack, World paramWorld, EntityHuman paramEntityHuman) {
  }

  public void setCooldown(ItemStack paramItemStack, int paramInt) {
    setInteger(paramItemStack, "cooldown", paramInt);
  }

  public int getCooldown(ItemStack paramItemStack)
  {
    return getInteger(paramItemStack, "cooldown");
  }

  public void decCooldown(ItemStack paramItemStack)
  {
    setCooldown(paramItemStack, getCooldown(paramItemStack) - 1);
  }

  public void initCooldown(ItemStack paramItemStack)
  {
    setCooldown(paramItemStack, 5);
  }
}
