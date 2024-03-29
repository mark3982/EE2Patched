package ee;

import ee.core.GuiIds;
import ee.network.EEPacket;
import ee.network.PacketHandler;
import ee.network.PacketTypeHandler;
import java.io.PrintStream;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Random;
import net.minecraft.server.AxisAlignedBB;
import net.minecraft.server.Block;
import net.minecraft.server.BlockFlower;
import net.minecraft.server.BlockGrass;
import net.minecraft.server.BlockLongGrass;
import net.minecraft.server.EEProxy;
import net.minecraft.server.Entity;
import net.minecraft.server.EntityArrow;
import net.minecraft.server.EntityExperienceOrb;
import net.minecraft.server.EntityFireball;
import net.minecraft.server.EntityHuman;
import net.minecraft.server.EntityItem;
import net.minecraft.server.EntityLiving;
import net.minecraft.server.EntityMonster;
import net.minecraft.server.EntityWeatherLighting;
import net.minecraft.server.IInventory;
import net.minecraft.server.Item;
import net.minecraft.server.ItemStack;
import net.minecraft.server.Material;
import net.minecraft.server.NBTTagCompound;
import net.minecraft.server.NBTTagList;
import net.minecraft.server.Packet;
import net.minecraft.server.PlayerInventory;
import net.minecraft.server.World;
import net.minecraft.server.WorldData;
import net.minecraft.server.mod_EE;

public class TilePedestal extends TileEE
  implements IInventory
{
  private ItemStack[] items = new ItemStack[1];
  private int activeItem = 0;
  private boolean interdictionActive;
  private boolean evertideActive;
  private boolean grimarchActive;
  private boolean harvestActive;
  private boolean ignitionActive;
  private boolean zeroActive;
  private boolean repairActive;
  private boolean soulstoneActive;
  private boolean swiftwolfActive;
  private boolean volcaniteActive;
  private boolean watchActive;
  private boolean updateBlock;
  public int activationCooldown;
  private boolean activated;
  private EntityHuman activationPlayer;
  private boolean initActivation;
  private boolean initDeactivation;
  private int grimarchCounter = 0;
  private int repairTimer = 0;
  private int healingTimer;
  private boolean attractionActive;

  public String getName()
  {
    return "Pedestal";
  }

  public void a(NBTTagCompound var1)
  {
    super.a(var1);
    NBTTagList var2 = var1.getList("Items");
    this.items = new ItemStack[getSize()];

    for (int var3 = 0; var3 < var2.size(); var3++)
    {
      NBTTagCompound var4 = (NBTTagCompound)var2.get(var3);
      int var5 = var4.getByte("Slot") & 0xFF;

      if ((var5 < 0) || (var5 >= this.items.length))
        continue;
      this.items[var5] = ItemStack.a(var4);
    }

    this.interdictionActive = var1.getBoolean("interdictionActive");
    this.attractionActive = var1.getBoolean("attractionActive");
    this.evertideActive = var1.getBoolean("evertideActive");
    this.grimarchActive = var1.getBoolean("grimarchActive");
    this.harvestActive = var1.getBoolean("harvestActive");
    this.ignitionActive = var1.getBoolean("ignitionActive");
    this.zeroActive = var1.getBoolean("zeroActive");
    this.repairActive = var1.getBoolean("repairActive");
    this.soulstoneActive = var1.getBoolean("soulstoneActive");
    this.swiftwolfActive = var1.getBoolean("swiftwolfActive");
    this.volcaniteActive = var1.getBoolean("volcaniteActive");
    this.watchActive = var1.getBoolean("watchActive");
    this.activated = var1.getBoolean("activated");

    if ((!this.volcaniteActive) && (!this.evertideActive) && (this.activated))
    {
      this.initActivation = true;
    }
  }

  public void b(NBTTagCompound var1)
  {
    super.b(var1);
    var1.setBoolean("watchActive", this.watchActive);
    var1.setBoolean("volcaniteActive", this.volcaniteActive);
    var1.setBoolean("swiftwolfActive", this.swiftwolfActive);
    var1.setBoolean("soulstoneActive", this.soulstoneActive);
    var1.setBoolean("repairActive", this.repairActive);
    var1.setBoolean("ignitionActive", this.ignitionActive);
    var1.setBoolean("zeroActive", this.zeroActive);
    var1.setBoolean("harvestActive", this.harvestActive);
    var1.setBoolean("grimarchActive", this.grimarchActive);
    var1.setBoolean("evertideActive", this.evertideActive);
    var1.setBoolean("interdictionActive", this.interdictionActive);
    var1.setBoolean("attractionActive", this.attractionActive);
    var1.setBoolean("activated", this.activated);
    NBTTagList var2 = new NBTTagList();

    for (byte var3 = 0; var3 < this.items.length; var3 = (byte)(var3 + 1))
    {
      if (this.items[var3] == null)
        continue;
      NBTTagCompound var4 = new NBTTagCompound();
      var4.setByte("Slot", var3);
      this.items[var3].save(var4);
      var2.add(var4);
    }

    var1.set("Items", var2);
  }

  public void update()
  {
    super.update();

    if (this.items[0] == null)
    {
      resetAll();
    }
    else
    {
      int var1 = this.items[0].id;
      int var2 = this.items[0].getData();

      if (EEMaps.isPedestalItem(var1))
      {
        if ((var1 == EEBlock.eeTorch.id) && (var2 == 0))
        {
          resetAll();
          this.updateBlock = true;
          this.interdictionActive = true;
        }
        else if (var1 == EEItem.evertide.id)
        {
          resetAll();
          this.evertideActive = true;
        }
        else if (var1 == EEItem.grimarchRing.id)
        {
          resetAll();
          this.grimarchActive = true;
        }
        else if (var1 == EEItem.harvestRing.id)
        {
          resetAll();
          this.harvestActive = true;
        }
        else if (var1 == EEItem.zeroRing.id)
        {
          resetAll();
          this.zeroActive = true;
        }
        else if (var1 == EEItem.ignitionRing.id)
        {
          resetAll();
          this.ignitionActive = true;
        }
        else if (var1 == EEItem.repairCharm.id)
        {
          resetAll();
          this.repairActive = true;
        }
        else if (var1 == EEItem.soulStone.id)
        {
          resetAll();
          this.soulstoneActive = true;
        }
        else if (var1 == EEItem.swiftWolfRing.id)
        {
          resetAll();
          this.swiftwolfActive = true;
        }
        else if (var1 == EEItem.volcanite.id)
        {
          resetAll();
          this.volcaniteActive = true;
        }
        else if (var1 == EEItem.watchOfTime.id)
        {
          resetAll();
          this.watchActive = true;
        }
        else if (var1 == EEItem.attractionRing.id)
        {
          resetAll();
          this.attractionActive = true;
        }
        else
        {
          this.updateBlock = true;
          resetAll();
        }
      }
      else
      {
        EntityItem var3 = new EntityItem(this.world, this.x, this.y, this.z, this.items[0].cloneItemStack());
        var3.pickupDelay = 10;
        this.world.addEntity(var3);
        this.items[0] = null;
        this.updateBlock = true;
        resetAll();
      }
    }
  }

  public boolean isActivated()
  {
    return this.activated;
  }

  public void setActivated(boolean var1)
  {
    this.activated = var1;
  }

  private void resetAll()
  {
    this.activated = false;
    this.initActivation = false;
    this.initDeactivation = false;
    this.attractionActive = false;
    this.interdictionActive = false;
    this.evertideActive = false;
    this.grimarchActive = false;
    this.harvestActive = false;
    this.ignitionActive = false;
    this.repairActive = false;
    this.soulstoneActive = false;
    this.swiftwolfActive = false;
    this.volcaniteActive = false;
    this.watchActive = false;
    resetTimeFactor();
  }

  public void q_()
  {
    if (!clientFail())
    {
      if (this.activated)
      {
        if (this.world.random.nextInt(5) == 0)
        {
          for (int var1 = 0; var1 < 1; var1++)
          {
            double var10000 = this.x + this.world.random.nextFloat();
            double var4 = this.y + this.world.random.nextFloat();
            var10000 = this.z + this.world.random.nextFloat();
            double var8 = 0.0D;
            double var10 = 0.0D;
            double var12 = 0.0D;
            int var14 = this.world.random.nextInt(2) * 2 - 1;
            var8 = (this.world.random.nextFloat() - 0.5D) * 0.5D;
            var10 = (this.world.random.nextFloat() - 0.5D) * 0.5D;
            var12 = (this.world.random.nextFloat() - 0.5D) * 0.5D;
            double var6;
            if (this.world.random.nextInt(2) == 0)
            {
              var6 = this.z + 0.5D + 0.25D * var14;
              var12 = this.world.random.nextFloat() * 2.0F * var14;
            }
            else
            {
              var6 = this.z + 0.5D + 0.25D * var14 * -1.0D;
              var12 = this.world.random.nextFloat() * 2.0F * var14 * -1.0F;
            }
            double var2;
            if (this.world.random.nextInt(2) == 0)
            {
              var2 = this.x + 0.5D + 0.25D * var14;
              var8 = this.world.random.nextFloat() * 2.0F * var14;
            }
            else
            {
              var2 = this.x + 0.5D + 0.25D * var14 * -1.0D;
              var8 = this.world.random.nextFloat() * 2.0F * var14 * -1.0F;
            }

            this.world.a("portal", var2, var4, var6, var8, var10, var12);
          }
        }

        for (int var1 = 0; var1 < 1; var1++)
        {
          float var15 = this.x + 0.45F + this.world.random.nextFloat() / 16.0F;
          float var3 = this.y + 0.3F + this.world.random.nextFloat() / 16.0F;
          float var16 = this.z + 0.45F + this.world.random.nextFloat() / 16.0F;
          float var5 = 0.2F;

          if (this.world.random.nextInt(8) == 0)
          {
            this.world.a("flame", var15 - var5, var3, var16 - var5, 0.0D, 0.0D, 0.0D);
          }

          if (this.world.random.nextInt(8) == 0)
          {
            this.world.a("flame", var15 - var5, var3, var16, 0.0D, 0.0D, 0.0D);
          }

          if (this.world.random.nextInt(8) == 0)
          {
            this.world.a("flame", var15 - var5, var3, var16 + var5, 0.0D, 0.0D, 0.0D);
          }

          if (this.world.random.nextInt(8) == 0)
          {
            this.world.a("flame", var15, var3, var16 - var5, 0.0D, 0.0D, 0.0D);
          }

          if (this.world.random.nextInt(8) == 0)
          {
            this.world.a("flame", var15 + var5, var3, var16 - var5, 0.0D, 0.0D, 0.0D);
          }

          if (this.world.random.nextInt(8) == 0)
          {
            this.world.a("flame", var15 + var5, var3, var16, 0.0D, 0.0D, 0.0D);
          }

          if (this.world.random.nextInt(8) == 0)
          {
            this.world.a("flame", var15 + var5, var3, var16 + var5, 0.0D, 0.0D, 0.0D);
          }

          if (this.world.random.nextInt(8) != 0)
            continue;
          this.world.a("flame", var15, var3, var16 + var5, 0.0D, 0.0D, 0.0D);
        }

      }

      if (this.attractionActive)
      {
        doAttraction(this.x, this.y, this.z);
      }

      if (this.interdictionActive)
      {
        doInterdiction(this.x, this.y, this.z);
      }

      if (this.evertideActive)
      {
        doEvertide();
      }

      if (this.grimarchActive)
      {
        doGrimarch();
      }

      if (this.harvestActive)
      {
        doHarvest();
      }

      if (this.repairActive)
      {
        doRepair();
      }

      if (this.ignitionActive)
      {
        doIgnition();
      }

      if (this.soulstoneActive)
      {
        doSoulstone();
      }

      if (this.swiftwolfActive)
      {
        doSwiftwolf();
      }

      if (this.volcaniteActive)
      {
        doVolcanite();
      }

      if (this.watchActive)
      {
        doWatch();
      }

      if (this.updateBlock)
      {
        this.world.notify(this.x, this.y, this.z);
      }

      if (this.activationCooldown > 0)
      {
        this.activationCooldown -= 1;
      }
    }
  }

  private void doAttraction(int var1, int var2, int var3)
  {
    if (this.initActivation)
    {
      this.initActivation = false;
      this.activationCooldown = 20;
    }

    if (this.initDeactivation)
    {
      this.initDeactivation = false;
      this.activationCooldown = 20;
    }

    if (this.activated)
    {
      List var4 = this.world.getEntities(this.world.a(this.player), AxisAlignedBB.b(var1 - 10, var2 - 10, var3 - 10, var1 + 10, var2 + 10, var3 + 10));
      Iterator var6 = var4.iterator();

      while (var6.hasNext())
      {
        Entity var5 = (Entity)var6.next();
        pullEntities(var5, var1, var2, var3);
      }

      List var17 = this.world.a(EntityLootBall.class, AxisAlignedBB.b(var1 - 10, var2 - 10, var3 - 10, var1 + 10, var2 + 10, var3 + 10));
      Iterator var8 = var17.iterator();

      while (var8.hasNext())
      {
        Entity var7 = (Entity)var8.next();
        PullItems(var7);
      }

      List var18 = this.world.a(EntityLootBall.class, AxisAlignedBB.b(var1 - 10, var2 - 10, var3 - 10, var1 + 10, var2 + 10, var3 + 10));
      Iterator var10 = var18.iterator();

      while (var10.hasNext())
      {
        Entity var9 = (Entity)var10.next();
        PullItems(var9);
      }

      List var19 = this.world.a(EntityItem.class, AxisAlignedBB.b(var1 - 10, var2 - 10, var3 - 10, var1 + 10, var2 + 10, var3 + 10));
      Iterator var12 = var19.iterator();

      while (var12.hasNext())
      {
        Entity var11 = (Entity)var12.next();
        PullItems(var11);
      }

      List var20 = this.world.a(EntityLootBall.class, AxisAlignedBB.b(var1 - 0.5D, var2 - 0.5D, var3 - 0.5D, var1 + 1.25D, var2 + 1.25D, var3 + 1.25D));
      Iterator var14 = var20.iterator();

      while (var14.hasNext())
      {
        Entity var13 = (Entity)var14.next();
        GrabItems(var13);
      }

      List var21 = this.world.a(EntityItem.class, AxisAlignedBB.b(var1 - 0.5D, var2 - 0.5D, var3 - 0.5D, var1 + 1.25D, var2 + 1.25D, var3 + 1.25D));
      Iterator var16 = var21.iterator();

      while (var16.hasNext())
      {
        Entity var15 = (Entity)var16.next();
        GrabItems(var15);
      }
    }
  }

  public boolean PushStack(ItemStack var1)
  {
    return var1 == null ? false : tryDropInChest(var1);
  }

  public boolean PushStack(EntityItem var1)
  {
    if (var1 == null)
    {
      return false;
    }
    if (var1.itemStack == null)
    {
      var1.die();
      return false;
    }
    if (var1.itemStack.count < 1)
    {
      var1.die();
      return false;
    }

    ItemStack var2 = var1.itemStack.cloneItemStack();

    for (var2.count = 1; (var1.itemStack.count > 0) && (tryDropInChest(var2.cloneItemStack())); var1.itemStack.count -= 1);
    return var1.itemStack.count <= 0;
  }

  private void PushDenseStacks(EntityLootBall var1)
  {
    for (int var2 = 0; var2 < var1.items.length; var2++)
    {
      if ((var1.items[var2] == null) || (!tryDropInChest(var1.items[var2])))
        continue;
      var1.items[var2] = null;
    }
  }

  private void GrabItems(Entity var1)
  {
    if ((var1 != null) && ((var1 instanceof EntityItem)))
    {
      if (((EntityItem)var1).itemStack == null)
      {
        var1.die();
      }

      if (PushStack((EntityItem)var1))
      {
        var1.die();
      }
    }
    else if ((var1 != null) && ((var1 instanceof EntityLootBall)))
    {
      if (((EntityLootBall)var1).items == null)
      {
        var1.die();
      }

      ItemStack[] var2 = ((EntityLootBall)var1).items;
      PushDenseStacks((EntityLootBall)var1);

      if (((EntityLootBall)var1).isEmpty())
      {
        var1.die();
      }
    }
  }

  private void PullItems(Entity var1)
  {
    if (((var1 instanceof EntityItem)) || ((var1 instanceof EntityLootBall)))
    {
      if ((var1 instanceof EntityLootBall))
      {
        ((EntityLootBall)var1).setBeingPulled(true);
      }

      double var3 = this.x + 0.5D - var1.locX;
      double var5 = this.y + 0.5D - var1.locY;
      double var7 = this.z + 0.5D - var1.locZ;
      double var9 = var3 * var3 + var5 * var5 + var7 * var7;
      var9 *= var9;

      if (var9 <= Math.pow(6.0D, 4.0D))
      {
        double var11 = var3 * 0.01999999955296516D / var9 * Math.pow(6.0D, 3.0D);
        double var13 = var5 * 0.01999999955296516D / var9 * Math.pow(6.0D, 3.0D);
        double var15 = var7 * 0.01999999955296516D / var9 * Math.pow(6.0D, 3.0D);

        if (var11 > 0.1D)
        {
          var11 = 0.1D;
        }
        else if (var11 < -0.1D)
        {
          var11 = -0.1D;
        }

        if (var13 > 0.1D)
        {
          var13 = 0.1D;
        }
        else if (var13 < -0.1D)
        {
          var13 = -0.1D;
        }

        if (var15 > 0.1D)
        {
          var15 = 0.1D;
        }
        else if (var15 < -0.1D)
        {
          var15 = -0.1D;
        }

        var1.motX += var11 * 1.2D;
        var1.motY += var13 * 1.2D;
        var1.motZ += var15 * 1.2D;
      }
    }
  }

  private void pullEntities(Entity var1, int var2, int var3, int var4)
  {
    if (!(var1 instanceof EntityHuman))
    {
      if ((var1 instanceof EntityLiving))
      {
        double var5 = var2 + 0.5F - var1.locX;
        double var7 = var3 + 0.5F - var1.locY;
        double var9 = var4 + 0.5F - var1.locZ;
        double var11 = var5 * var5 + var7 * var7 + var9 * var9;
        var11 *= var11;

        if (var11 <= Math.pow(6.0D, 4.0D))
        {
          double var13 = var5 * 0.01999999955296516D / var11 * Math.pow(6.0D, 3.0D);
          double var15 = var7 * 0.01999999955296516D / var11 * Math.pow(6.0D, 3.0D);
          double var17 = var9 * 0.01999999955296516D / var11 * Math.pow(6.0D, 3.0D);

          if (var13 > 0.1D)
          {
            var13 = 0.1D;
          }
          else if (var13 < -0.1D)
          {
            var13 = -0.1D;
          }

          if (var15 > 0.1D)
          {
            var15 = 0.1D;
          }
          else if (var15 < -0.1D)
          {
            var15 = -0.1D;
          }

          if (var17 > 0.1D)
          {
            var17 = 0.1D;
          }
          else if (var17 < -0.1D)
          {
            var17 = -0.1D;
          }

          if ((var1 instanceof EntityItem))
          {
            var1.motX += var13 * 1.8D;
            var1.motY += var15 * 2.8D;
            var1.motZ += var17 * 1.8D;
          }
          else
          {
            var1.motX += var13 * 1.4D;
            var1.motY += var15 * 1.2D;
            var1.motZ += var17 * 1.4D;
          }
        }
      }
    }
  }

  private void doWatch()
  {
    if (this.initActivation)
    {
      setTimeFactor();
      this.initActivation = false;
      this.activationCooldown = 20;
    }

    if (this.initDeactivation)
    {
      resetTimeFactor();
      this.initDeactivation = false;
      this.activationCooldown = 20;
    }

    if (this.activated)
    {
      List var1 = this.world.getEntities(this.world.a(this.player), AxisAlignedBB.b(this.x - 10, this.y - 10, this.z - 10, this.x + 10, this.y + 10, this.z + 10));
      Iterator var3 = var1.iterator();

      while (var3.hasNext())
      {
        Entity var2 = (Entity)var3.next();
        slowEntities(var2);
      }
    }
  }

  private void doVolcanite()
  {
    if ((this.activated) && (this.initActivation))
    {
      this.initActivation = false;
      this.activationCooldown = 60;

      if (EEProxy.getWorldInfo(this.world).isThundering())
      {
        EEProxy.getWorldInfo(this.world).setThundering(false);
        EEProxy.getWorldInfo(this.world).setThunderDuration(0);
      }

      if (EEProxy.getWorldInfo(this.world).hasStorm())
      {
        EEProxy.getWorldInfo(this.world).setStorm(false);
        EEProxy.getWorldInfo(this.world).setWeatherDuration(0);
      }
    }

    if ((this.activationCooldown == 0) || (this.initDeactivation))
    {
      this.activated = false;
      this.initDeactivation = false;
    }
  }

  private void doSwiftwolf()
  {
    if (this.initActivation)
    {
      this.activationCooldown = 20;
      this.initActivation = false;
    }

    if (this.initDeactivation)
    {
      this.initDeactivation = false;
    }

    if (this.activated)
    {
      if (this.world.random.nextInt(1000 / ((this.world.x() ? 2 : 1) * (this.world.w() ? 2 : 1))) == 0)
      {
        int var1 = 0;
        int var2 = 0;
        int var3 = 0;
        int var4 = 0;

        for (int var5 = -5; var5 <= 5; var5++)
        {
          for (int var6 = -5; var6 <= 5; var6++)
          {
            for (int var7 = 127; var7 >= 0; var7--)
            {
              var1 = this.world.getTypeId(this.x + var5, var7, this.z + var6);

              if (var1 == 0)
                continue;
              var3 = var7;
              break;
            }

            if (var1 == 0)
              continue;
            var4 = this.z + var6;
            break;
          }

          if (var1 == 0)
            continue;
          var2 = this.z + var5;
          break;
        }

        this.world.strikeLightning(new EntityWeatherLighting(this.world, var2, var3, var4));
      }

      List var8 = this.world.a(EntityMonster.class, AxisAlignedBB.b(this.x - 10, this.y - 10, this.z - 10, this.x + 10, this.y + 10, this.z + 10));

      for (int var2 = 0; var2 < var8.size(); var2++)
      {
        if (this.world.random.nextInt(60) != 0)
          continue;
        Entity var9 = (Entity)var8.get(var2);

        if (var9 == null)
          continue;
        if (this.world.isChunkLoaded((int)var9.locX, (int)var9.locY, (int)var9.locZ))
        {
          if (EEProxy.getWorldInfo(this.world).isThundering())
          {
            this.world.strikeLightning(new EntityWeatherLighting(this.world, var9.locX, var9.locY, var9.locZ));

            for (int var4 = 0; var4 <= this.world.random.nextInt(3); var4++)
            {
              this.world.strikeLightning(new EntityWeatherLighting(this.world, var9.locX, var9.locY, var9.locZ));
            }
          }
          else if (EEProxy.getWorldInfo(this.world).hasStorm())
          {
            this.world.strikeLightning(new EntityWeatherLighting(this.world, var9.locX, var9.locY, var9.locZ));

            for (int var4 = 0; var4 <= this.world.random.nextInt(2); var4++)
            {
              this.world.strikeLightning(new EntityWeatherLighting(this.world, var9.locX, var9.locY, var9.locZ));
            }
          }
          else
          {
            this.world.strikeLightning(new EntityWeatherLighting(this.world, var9.locX, var9.locY, var9.locZ));
          }
        }
        else
        {
          this.world.strikeLightning(new EntityWeatherLighting(this.world, var9.locX, var9.locY, var9.locZ));
        }
      }
    }
  }

  private void doSoulstone()
  {
    if (this.initActivation)
    {
      this.activationCooldown = 20;
      this.healingTimer = 20;
      this.initActivation = false;
    }

    if (this.initDeactivation)
    {
      this.initDeactivation = false;
    }

    if (this.activated)
    {
      if (this.healingTimer <= 0)
      {
        this.healingTimer = 20;
        List var1 = this.world.a(EntityHuman.class, AxisAlignedBB.b(this.x - 10, this.y - 10, this.z - 10, this.x + 10, this.y + 10, this.z + 10));
        Iterator var3 = var1.iterator();

        while (var3.hasNext())
        {
          Entity var2 = (Entity)var3.next();
          HealForPlayer(var2);
        }
      }

      if (this.healingTimer > 0)
      {
        this.healingTimer -= 1;
      }
    }
  }

  private Object HealForPlayer(Entity var1)
  {
    if ((var1 instanceof EntityHuman))
    {
      EntityHuman var2 = (EntityHuman)var1;

      if (EEProxy.getEntityHealth(var2) < 20)
      {
        this.world.makeSound(var1, "heal", 0.8F, 1.5F);
        ((EntityHuman)var1).heal(1);
      }
    }

    return null;
  }

  private void doIgnition()
  {
    if (this.initActivation)
    {
      this.activationCooldown = 20;
      this.initActivation = false;
    }

    if (this.initDeactivation)
    {
      this.initDeactivation = false;
    }

    if (this.activated)
    {
      List var1 = this.world.a(EntityMonster.class, AxisAlignedBB.b(this.x - 10, this.y - 10, this.z - 10, this.x + 10, this.y + 10, this.z + 10));

      for (int var2 = 0; var2 < var1.size(); var2++)
      {
        if (this.world.random.nextInt(5) != 0)
          continue;
        Entity var3 = (Entity)var1.get(var2);
        EEProxy.dealFireDamage(var3, 3);
        var3.setOnFire(40);
      }
    }
  }

  private void doZero()
  {
    if (this.initActivation)
    {
      this.activationCooldown = 20;
      this.initActivation = false;
    }

    if (this.initDeactivation)
    {
      this.initDeactivation = false;
    }

    if (this.activated)
    {
      doFreezeOverTime();
    }
  }

  public void doFreezeOverTime()
  {
    List var1 = this.world.a(EntityMonster.class, AxisAlignedBB.b(this.x - 5, this.y - 5, this.z - 5, this.x + 5, this.y + 5, this.z + 5));
	int var2;
	
    for (var2 = 0; var2 < var1.size(); var2++)
    {
      Entity var3 = (Entity)var1.get(var2);

      if ((var3.motX <= 0.0D) && (var3.motZ <= 0.0D))
        continue;
      var3.motX *= 0.2D;
      var3.motZ *= 0.2D;
    }

    for (var2 = -4; var2 <= 4; var2++)
    {
      for (int var6 = -4; var6 <= 4; var6++)
      {
        for (int var4 = -4; var4 <= 4; var4++)
        {
          if (((var2 > -2) || (var2 < 2)) && ((var6 == 0) || (((var4 > -2) || (var4 < 2)) && (var6 == 0))))
            continue;
          if (this.world.random.nextInt(20) == 0)
          {
            int var5 = this.world.getTypeId(this.x + var2, this.y + var6 - 1, this.z + var4);

            if ((var5 != 0) && (Block.byId[var5].a()) && (this.world.getMaterial(this.x + var2, this.y + var6 - 1, this.z + var4).isBuildable()) && (this.world.getTypeId(this.x + var2, this.y + var6, this.z + var4) == 0))
            {
              BigWorldHook.setTypeIdHooked(this.world, this.x + var2, this.y + var6, this.z + var4, Block.SNOW.id);
            }
          }

          if ((this.world.random.nextInt(3) == 0) && (this.world.getMaterial(this.x + var2, this.y + var6, this.z + var4) == Material.WATER) && (this.world.getTypeId(this.x + var2, this.y + var6 + 1, this.z + var4) == 0))
          {
            BigWorldHook.setTypeIdHooked(this.world, this.x + var2, this.y + var6, this.z + var4, Block.ICE.id);
          }

          if ((this.world.random.nextInt(3) != 0) || (this.world.getMaterial(this.x + var2, this.y + var6, this.z + var4) != Material.LAVA) || (this.world.getTypeId(this.x + var2, this.y + var6 + 1, this.z + var4) != 0) || (this.world.getData(this.x + var2, this.y + var6, this.z + var4) != 0))
            continue;
          BigWorldHook.setTypeIdHooked(this.world, this.x + var2, this.y + var6, this.z + var4, Block.OBSIDIAN.id);
        }
      }
    }
  }

  private void doRepair()
  {
    if (this.initActivation)
    {
      this.activationCooldown = 20;
      this.initActivation = false;
    }

    if (this.initDeactivation)
    {
      this.initDeactivation = false;
    }

    if (this.activated)
    {
      System.out.println("Repair is active..");
      List var1 = this.world.a(EntityHuman.class, AxisAlignedBB.b(this.x - 10, this.y - 10, this.z - 10, this.x + 10, this.y + 10, this.z + 10));
      Iterator var3 = var1.iterator();

      while (var3.hasNext())
      {
        Entity var2 = (Entity)var3.next();
        RepairForPlayer(var2);
      }
    }
  }

  private void RepairForPlayer(Entity var1)
  {
    if ((var1 instanceof EntityHuman))
    {
      System.out.println("Player found..");

      if (this.repairTimer >= 2)
      {
        this.repairTimer = 0;
        ItemStack[] var2 = new ItemStack[((EntityHuman)var1).inventory.items.length];
        ItemStack[] var3 = new ItemStack[((EntityHuman)var1).inventory.armor.length];
        var2 = ((EntityHuman)var1).inventory.items;
        var3 = ((EntityHuman)var1).inventory.armor;
        ItemStack var4 = null;
        boolean var5 = false;

        for (int var6 = 0; var6 < var2.length; var6++)
        {
          var5 = false;
          var4 = var2[var6];

          if (var4 == null)
            continue;
          for (int var7 = 0; var7 < EEMaps.chargedItems.size(); var7++)
          {
            if (((Integer)EEMaps.chargedItems.get(Integer.valueOf(var7))).intValue() != var4.id)
              continue;
            var5 = true;
            break;
          }

          if ((var5) || (var4.getData() < 1) || (!var4.d()))
            continue;
          var4.setData(var4.getData() - 1);
        }

      }

      this.repairTimer += 1;
    }
  }

  public static int __delayer = 0;
  
  private void doHarvest()
  {
	++__delayer;
  
    if (this.initActivation)
    {
      this.initActivation = false;
      this.activationCooldown = 20;
    }

    if (this.initDeactivation)
    {
      this.initDeactivation = false;
    }

    if (this.activated)
    {
	  if (__delayer > (20 * 20)) {
		__delayer = 0;
		doPassiveHarvest();
		doActiveHarvest();
	  }
    }
  }

  public void doPassiveHarvest()
  {
    int var1 = this.x;
    int var2 = this.y;
    int var3 = this.z;

    for (int var4 = -5; var4 <= 5; var4++)
    {
      for (int var5 = -5; var5 <= 5; var5++)
      {
        for (int var6 = -5; var6 <= 5; var6++)
        {
          int var7 = this.world.getTypeId(var1 + var4, var2 + var5, var3 + var6);

          if (var7 == Block.CROPS.id)
          {
            int var8 = this.world.getData(var1 + var4, var2 + var5, var3 + var6);

            if ((var8 >= 7) || (this.world.random.nextInt(600) != 0))
              continue;
            var8++;
            this.world.setData(var1 + var4, var2 + var5, var3 + var6, var8);
          }
          else if ((var7 != BlockFlower.YELLOW_FLOWER.id) && (var7 != BlockFlower.RED_ROSE.id) && (var7 != BlockFlower.BROWN_MUSHROOM.id) && (var7 != BlockFlower.RED_MUSHROOM.id))
          {
            if ((var7 == Block.GRASS.id) && (this.world.getTypeId(var1 + var4, var2 + var5 + 1, var3 + var6) == 0) && (this.world.random.nextInt(4000) == 0))
            {
              BigWorldHook.setTypeIdHooked(this.world, var1 + var4, var2 + var5 + 1, var3 + var6, BlockFlower.LONG_GRASS.id);
              this.world.setData(var1 + var4, var2 + var5 + 1, var3 + var6, 1);
            }

            if ((var7 == Block.DIRT.id) && (this.world.getTypeId(var1 + var4, var2 + var5 + 1, var3 + var6) == 0) && (this.world.random.nextInt(800) == 0))
            {
              BigWorldHook.setTypeIdHooked(this.world, var1 + var4, var2 + var5, var3 + var6, Block.GRASS.id);
            } else {
              if (((var7 != Block.SUGAR_CANE_BLOCK.id) && (var7 != Block.CACTUS.id)) || (this.world.getTypeId(var1 + var4, var2 + var5 + 1, var3 + var6) != 0) || (this.world.getTypeId(var1 + var4, var2 + var5 - 4, var3 + var6) == Block.SUGAR_CANE_BLOCK.id) || (this.world.getTypeId(var1 + var4, var2 + var5 - 4, var3 + var6) == Block.CACTUS.id) || (this.world.random.nextInt(600) != 0))
                continue;
              BigWorldHook.setTypeIdHooked(this.world, var1 + var4, var2 + var5 + 1, var3 + var6, var7);
              this.world.a("largesmoke", var1 + var4, var2 + var5, var3 + var6, 0.0D, 0.05D, 0.0D);
            }
          } else {
            if (this.world.random.nextInt(2) != 0)
              continue;
            for (int var8 = -1; var8 < 0; var8++)
            {
              if ((this.world.getTypeId(var1 + var4 + var8, var2 + var5, var3 + var6) == 0) && (this.world.getTypeId(var1 + var4 + var8, var2 + var5 - 1, var3 + var6) == Block.GRASS.id))
              {
                if (this.world.random.nextInt(800) != 0)
                  continue;
                BigWorldHook.setTypeIdHooked(this.world, var1 + var4 + var8, var2 + var5, var3 + var6, var7);
                this.world.a("largesmoke", var1 + var4 + var8, var2 + var5, var3 + var6, 0.0D, 0.05D, 0.0D);
              }
              else {
                if ((this.world.getTypeId(var1 + var4, var2 + var5, var3 + var6 + var8) != 0) || (this.world.getTypeId(var1 + var4, var2 + var5 - 1, var3 + var6 + var8) != Block.GRASS.id) || (this.world.random.nextInt(1800) != 0))
                  continue;
                BigWorldHook.setTypeIdHooked(this.world, var1 + var4, var2 + var5, var3 + var6 + var8, var7);
                this.world.a("largesmoke", var1 + var4, var2 + var5, var3 + var6 + var8, 0.0D, 0.05D, 0.0D);
              }
            }
          }
        }
      }
    }
  }

  public void doActiveHarvest()
  {
    int var1 = this.x;
    int var2 = this.y;
    int var3 = this.z;

    for (int var4 = -5; var4 <= 5; var4++)
    {
      for (int var5 = -5; var5 <= 5; var5++)
      {
        for (int var6 = -5; var6 <= 5; var6++)
        {
          int var7 = this.world.getTypeId(var1 + var4, var2 + var5, var3 + var6);

          if (var7 == Block.CROPS.id)
          {
            int var8 = this.world.getData(var1 + var4, var2 + var5, var3 + var6);

            if (var8 >= 7)
            {
              Block.byId[var7].dropNaturally(this.world, var1 + var4, var2 + var5, var3 + var6, this.world.getData(var1 + var4, var2 + var5, var3 + var6), 0.05F, 1);
              Block.byId[var7].dropNaturally(this.world, var1 + var4, var2 + var5, var3 + var6, this.world.getData(var1 + var4, var2 + var5, var3 + var6), 1.0F, 1);
              BigWorldHook.setTypeIdHooked(this.world, var1 + var4, var2 + var5, var3 + var6, 0);
              this.world.a("largesmoke", var1 + var4, var2 + var5, var3 + var6, 0.0D, 0.05D, 0.0D);
            } else {
              if (this.world.random.nextInt(400) != 0)
                continue;
              var8++;
              this.world.setData(var1 + var4, var2 + var5, var3 + var6, var8);
            }
          }
          else if ((var7 != BlockFlower.YELLOW_FLOWER.id) && (var7 != BlockFlower.RED_ROSE.id) && (var7 != BlockFlower.BROWN_MUSHROOM.id) && (var7 != BlockFlower.RED_MUSHROOM.id) && (var7 != BlockFlower.LONG_GRASS.id))
          {
            if (((var7 != Block.SUGAR_CANE_BLOCK.id) || (this.world.getTypeId(var1 + var4, var2 + var5 - 4, var3 + var6) != Block.SUGAR_CANE_BLOCK.id)) && ((var7 != Block.CACTUS.id) || (this.world.getTypeId(var1 + var4, var2 + var5 - 4, var3 + var6) != Block.CACTUS.id)))
              continue;
            if (var7 == Block.SUGAR_CANE_BLOCK.id)
            {
              Block.byId[var7].dropNaturally(this.world, var1 + var4, var2 + var5 - 3, var3 + var6, this.world.getData(var1 + var4, var2 + var5, var3 + var6), 0.25F, 1);
              Block.byId[var7].dropNaturally(this.world, var1 + var4, var2 + var5 - 3, var3 + var6, this.world.getData(var1 + var4, var2 + var5, var3 + var6), 1.0F, 1);
              BigWorldHook.setTypeIdHooked(this.world, var1 + var4, var2 + var5 - 3, var3 + var6, 0);
            }
            else
            {
              Block.byId[var7].dropNaturally(this.world, var1 + var4, var2 + var5 - 4, var3 + var6, this.world.getData(var1 + var4, var2 + var5, var3 + var6), 0.25F, 1);
              Block.byId[var7].dropNaturally(this.world, var1 + var4, var2 + var5 - 4, var3 + var6, this.world.getData(var1 + var4, var2 + var5, var3 + var6), 1.0F, 1);
              BigWorldHook.setTypeIdHooked(this.world, var1 + var4, var2 + var5 - 4, var3 + var6, 0);
            }

            this.world.a("largesmoke", var1 + var4, var2 + var5 - 3, var3 + var6, 0.0D, 0.05D, 0.0D);
          }
          else
          {
            Block.byId[var7].dropNaturally(this.world, var1 + var4, var2 + var5, var3 + var6, this.world.getData(var1 + var4, var2 + var5, var3 + var6), 0.05F, 1);
            Block.byId[var7].dropNaturally(this.world, var1 + var4, var2 + var5, var3 + var6, this.world.getData(var1 + var4, var2 + var5, var3 + var6), 1.0F, 1);
            BigWorldHook.setTypeIdHooked(this.world, var1 + var4, var2 + var5, var3 + var6, 0);
            this.world.a("largesmoke", var1 + var4, var2 + var5, var3 + var6, 0.0D, 0.05D, 0.0D);
          }
        }
      }
    }
  }

  private void doGrimarch()
  {
    if (this.activationPlayer != null)
    {
      if (this.initActivation)
      {
        this.grimarchCounter = 40;
        this.activationCooldown = 20;
        this.initActivation = false;
      }

      if (this.initDeactivation)
      {
        this.initDeactivation = false;
      }

      if (this.activated)
      {
        int var1 = this.x;
        int var2 = this.y;
        int var3 = this.z;
        byte var4 = 10;

        if ((this.grimarchCounter >= 0) && (this.grimarchCounter < 5))
        {
          List var5 = this.world.a(EntityLiving.class, AxisAlignedBB.b(var1 - var4, var2 - var4, var3 - var4, var1 + var4, var2 + var4, var3 + var4));
          Iterator var7 = var5.iterator();

          while (var7.hasNext())
          {
            Entity var6 = (Entity)var7.next();
            ShootArrowAt(var6, var1, var2, var3);
          }

          this.grimarchCounter -= 1;

          if (this.grimarchCounter == 0)
          {
            this.grimarchCounter = 40;
          }
        }

        if (this.grimarchCounter >= 5)
        {
          this.grimarchCounter -= 1;
        }
      }
    }
  }

  private void ShootArrowAt(Entity var1, int var2, int var3, int var4)
  {
    if (!(var1 instanceof EntityHuman))
    {
      double var5 = var1.locX - this.x;
      double var7 = var1.boundingBox.b + var1.length / 2.0F - (this.y + 1.0D);
      double var9 = var1.locZ - this.z;
      EntityGrimArrow var11 = new EntityGrimArrow(this.world, var5, var7, var9);
      double var12 = 4.0D;
      var11.locX = this.x;
      var11.locY = (this.y + 2.0D + 0.5D);
      var11.locZ = this.z;
      this.world.addEntity(var11);
      this.world.makeSound(var11, "random.bow", 0.8F, 0.8F / (this.world.random.nextFloat() * 0.4F + 0.8F));
    }
  }

  private void doEvertide()
  {
    if ((this.activated) && (this.initActivation))
    {
      this.initActivation = false;
      this.activationCooldown = 60;

      if (!EEProxy.getWorldInfo(this.world).hasStorm())
      {
        EEProxy.getWorldInfo(this.world).setStorm(true);
        EEProxy.getWorldInfo(this.world).setWeatherDuration(6000);
      }
      else
      {
        EEProxy.getWorldInfo(this.world).setWeatherDuration(EEProxy.getWorldInfo(this.world).getWeatherDuration() + 6000);
      }
    }

    if ((this.activationCooldown == 0) || (this.initDeactivation))
    {
      this.activated = false;
      this.initDeactivation = false;
    }
  }

  private void doInterdiction(int var1, int var2, int var3)
  {
    if (this.initActivation)
    {
      this.activationCooldown = 20;
      this.initActivation = false;
    }

    if (this.initDeactivation)
    {
      this.initDeactivation = false;
    }

    if (this.activated)
    {
      float var4 = 9.0F;
      List var5 = this.world.a(EntityMonster.class, AxisAlignedBB.b(var1 - var4, var2 - var4, var3 - var4, var1 + var4, var2 + var4, var3 + var4));
      Iterator var7 = var5.iterator();

      while (var7.hasNext())
      {
        Entity var6 = (Entity)var7.next();
        PushEntities(var6, var1, var2, var3);
      }

      List var12 = this.world.a(EntityArrow.class, AxisAlignedBB.b(var1 - var4, var2 - var4, var3 - var4, var1 + var4, var2 + var4, var3 + var4));
      Iterator var9 = var12.iterator();

      while (var9.hasNext())
      {
        Entity var8 = (Entity)var9.next();
        PushEntities(var8, var1, var2, var3);
      }

      List var13 = this.world.a(EntityFireball.class, AxisAlignedBB.b(var1 - var4, var2 - var4, var3 - var4, var1 + var4, var2 + var4, var3 + var4));
      Iterator var11 = var13.iterator();

      while (var11.hasNext())
      {
        Entity var10 = (Entity)var11.next();
        PushEntities(var10, var1, var2, var3);
      }
    }
  }

  private void PushEntities(Entity var1, int var2, int var3, int var4)
  {
    if (!(var1 instanceof EntityHuman))
    {
      double var6 = var2 - var1.locX;
      double var8 = var3 - var1.locY;
      double var10 = var4 - var1.locZ;
      double var12 = var6 * var6 + var8 * var8 + var10 * var10;
      var12 *= var12;

      if (var12 <= Math.pow(6.0D, 4.0D))
      {
        double var14 = -(var6 * 0.01999999955296516D / var12) * Math.pow(6.0D, 3.0D);
        double var16 = -(var8 * 0.01999999955296516D / var12) * Math.pow(6.0D, 3.0D);
        double var18 = -(var10 * 0.01999999955296516D / var12) * Math.pow(6.0D, 3.0D);

        if (var14 > 0.0D)
        {
          var14 = 0.22D;
        }
        else if (var14 < 0.0D)
        {
          var14 = -0.22D;
        }

        if (var16 > 0.2D)
        {
          var16 = 0.12D;
        }
        else if (var16 < -0.1D)
        {
          var16 = 0.12D;
        }

        if (var18 > 0.0D)
        {
          var18 = 0.22D;
        }
        else if (var18 < 0.0D)
        {
          var18 = -0.22D;
        }

        var1.motX += var14;
        var1.motY += var16;
        var1.motZ += var18;
      }
    }
  }

  public boolean isInterdicting()
  {
    return this.interdictionActive;
  }

  public void setTimeFactor()
  {
    EEBase.addPedestalCoords(this);
  }

  public void resetTimeFactor()
  {
    EEBase.validatePedestalCoords(this.world);
  }

  public void slowEntities(Entity var1)
  {
    if ((!(var1 instanceof EntityItem)) && (!(var1 instanceof EntityExperienceOrb)) && (!(var1 instanceof EntityGrimArrow)) && (!(var1 instanceof EntityPhilosopherEssence)) && (!(var1 instanceof EntityLavaEssence)) && (!(var1 instanceof EntityWaterEssence)) && (!(var1 instanceof EntityWindEssence)) && (!(var1 instanceof EntityHyperkinesis)) && (!(var1 instanceof EntityPyrokinesis)))
    {
      byte var2 = 4;
      var1.motX /= (var2 * var2 * var2 * var2 + 1);
      var1.motZ /= (var2 * var2 * var2 * var2 + 1);

      if (var1.motY < 0.0D)
      {
        var1.motY /= (1.0D + 0.002D * (var2 * var2 + 1));
      }
    }
  }

  public void activate(EntityHuman var1)
  {
    this.world.makeSound(var1, "transmute", 0.6F, 1.0F);

    if ((this.items[0] != null) && (EEMaps.isPedestalItem(this.items[0].id)) && (this.activationCooldown <= 0))
    {
      this.activated = (!this.activated);

      if (this.activated)
      {
        this.initActivation = true;

        for (int var2 = 0; var2 < 4; var2++)
        {
          float var3 = this.x + 0.5F + this.world.random.nextFloat() / 16.0F;
          float var4 = this.y + 1.0F + this.world.random.nextFloat() / 16.0F;
          float var5 = this.z + 0.5F + this.world.random.nextFloat() / 16.0F;
          this.world.a("flame", var3, var4, var5, 0.0D, 0.0D, 0.0D);
        }
      }
      else
      {
        this.initDeactivation = true;

        for (int var2 = 0; var2 < 4; var2++)
        {
          float var3 = this.x + 0.5F + this.world.random.nextFloat() / 16.0F;
          float var4 = this.y + 1.0F + this.world.random.nextFloat() / 16.0F;
          float var5 = this.z + 0.5F + this.world.random.nextFloat() / 16.0F;
          this.world.a("smoke", var3, var4, var5, 0.0D, 0.02D, 0.0D);
        }
      }
    }

    this.activationPlayer = var1;
  }

  public void activate()
  {
    if (this.activationCooldown <= 0)
    {
      this.world.makeSound(this.x, this.y, this.z, "transmute", 0.6F, 1.0F);

      if ((this.items[0] != null) && (EEMaps.isPedestalItem(this.items[0].id)))
      {
        if ((this.items[0].getItem() instanceof ItemGrimarchRing))
        {
          return;
        }

        this.activated = (!this.activated);

        if (this.activated)
        {
          this.initActivation = true;

          for (int var1 = 0; var1 < 4; var1++)
          {
            float var2 = this.x + 0.5F + this.world.random.nextFloat() / 16.0F;
            float var3 = this.y + 1.0F + this.world.random.nextFloat() / 16.0F;
            float var4 = this.z + 0.5F + this.world.random.nextFloat() / 16.0F;
            this.world.a("flame", var2, var3, var4, 0.0D, 0.0D, 0.0D);
          }
        }
        else
        {
          this.initDeactivation = true;

          for (int var1 = 0; var1 < 4; var1++)
          {
            float var2 = this.x + 0.5F + this.world.random.nextFloat() / 16.0F;
            float var3 = this.y + 1.0F + this.world.random.nextFloat() / 16.0F;
            float var4 = this.z + 0.5F + this.world.random.nextFloat() / 16.0F;
            this.world.a("smoke", var2, var3, var4, 0.0D, 0.02D, 0.0D);
          }
        }
      }
    }

    this.activationPlayer = null;
  }

  public ItemStack splitStack(int var1, int var2)
  {
    if (this.items[var1] != null)
    {
      if (this.items[var1].count <= var2)
      {
        ItemStack var3 = this.items[var1];
        this.items[var1] = null;
        return var3;
      }

      ItemStack var3 = this.items[var1].a(var2);

      if (this.items[var1].count == 0)
      {
        this.items[var1] = null;
      }

      return var3;
    }

    return null;
  }

  public void setItem(int var1, ItemStack var2)
  {
    this.items[var1] = var2;

    if ((var2 != null) && (var2.count > getMaxStackSize()))
    {
      var2.count = getMaxStackSize();
    }
  }

  public ItemStack getItem(int var1)
  {
    return this.items[var1];
  }

  public int getSize()
  {
    return this.items.length;
  }

  public int getMaxStackSize()
  {
    return 64;
  }

  public void f()
  {
  }

  public void g()
  {
  }

  public boolean a(EntityHuman var1) {
    return this.world.getTileEntity(this.x, this.y, this.z) == this;
  }

  public boolean onBlockActivated(EntityHuman var1)
  {
    var1.openGui(mod_EE.getInstance(), GuiIds.PEDESTAL, var1.world, (int)var1.locX, (int)var1.locY, (int)var1.locZ);
    return true;
  }

  public void setPlayer(EntityHuman var1)
  {
    this.player = var1.name;
  }

  public ItemStack splitWithoutUpdate(int var1)
  {
    return null;
  }

  public Packet d()
  {
    EEPacket var1 = PacketHandler.getPacket(PacketTypeHandler.PEDESTAL);
    var1.setCoords(this.x, this.y, this.z);

    if (getItem(0) != null)
    {
      var1.setItem(getItem(0).getItem().id);
    }
    else
    {
      var1.setItem(-1);
    }

    var1.setState(this.activated);
    return PacketHandler.getPacketForSending(var1);
  }

  public ItemStack[] getContents()
  {
    return this.items;
  }

  public void setMaxStackSize(int size)
  {
  }
}