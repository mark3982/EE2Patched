package com.kmcguire.KEE2Helper;

import ee.IHooker;
import net.minecraft.server.DamageSource;
import net.minecraft.server.Entity;
import net.minecraft.server.EntityHuman;
import net.minecraft.server.EntityPlayer;
import org.bukkit.World;
import org.bukkit.block.Block;
import org.bukkit.craftbukkit.CraftWorld;
import org.bukkit.craftbukkit.entity.CraftPlayer;
import org.bukkit.entity.Player;
import org.bukkit.event.EventHandler;
import org.bukkit.event.Listener;
import org.bukkit.event.block.BlockBreakEvent;
import org.bukkit.event.block.BlockPlaceEvent;
import org.bukkit.event.entity.EntityDamageEvent;
import org.bukkit.inventory.ItemStack;
import org.bukkit.plugin.java.JavaPlugin;

public class P extends JavaPlugin implements Listener, IHooker {
    @Override
    public void onEnable() {
        getServer().getPluginManager().registerEvents(this, this);
        ee.BigWorldHook.__p = this;        
    }
    
    @Override
    public void dprint(String msg) {
        getServer().getLogger().info(msg);
    }
    
    @Override
    public boolean damageEntityHooked(Entity entity, DamageSource source, int damage) {
        EntityDamageEvent         de;
      
        de = new EntityDamageEvent(
                entity.getBukkitEntity(), 
                org.bukkit.event.entity.EntityDamageEvent.DamageCause.BLOCK_EXPLOSION, 
                damage
        );

        getServer().getPluginManager().callEvent(de);
        return true;
    }
    
    @Override
    public boolean canBreak(EntityHuman player, Object _w, int x, int y, int z) {
        net.minecraft.server.World      w;
        World                           cw;
        Player                          cp;
        BlockBreakEvent                 bbevent;
        BlockPlaceEvent                 bpevent;
        Block                           block;
        
        w = (net.minecraft.server.World)_w;
        cw = w.getWorld();
        
        block = cw.getBlockAt(x, y, z);
        if (player != null)
            cp = getServer().getPlayer(player.name);
        else
            cp = new DummyPlayer((CraftWorld)cw, "Dummy");
        bbevent = new BlockBreakEvent(block, cp);
        getServer().getPluginManager().callEvent(bbevent);
        if (bbevent.isCancelled())
            return false;
        return true;
    }
    
    @Override
    public boolean breakAndPlace(EntityHuman player, Object _w, int x, int y, int z, int typeId, byte data) {
        net.minecraft.server.World      w;
        World                           cw;
        Player                          cp;
        BlockBreakEvent                 bbevent;
        BlockPlaceEvent                 bpevent;
        Block                           block;
        
        w = (net.minecraft.server.World)_w;
        cw = w.getWorld();
        
        // <Player>player, <CraftWorld>cw, x, y, z, 
        
        
        block = cw.getBlockAt(x, y, z);
        if (player != null) {
            cp = getServer().getPlayer(player.name);
        } else {
            cp = new DummyPlayer((CraftWorld)cw, "Dummy");
        }
        bbevent = new BlockBreakEvent(block, cp);
        getServer().getPluginManager().callEvent(bbevent);
        if (bbevent.isCancelled())
            return false;
        if (typeId == 0) {
            block.setTypeId(0);
            block.setData((byte)0);
            return true;
        }
        block.setTypeId(typeId);
        block.setData(data);
        
        //(Block placedBlock, BlockState replacedBlockState, Block placedAgainst, ItemStack itemInHand, Player thePlayer, boolean canBuild)
        bpevent = new BlockPlaceEvent(block, null, null, cp.getItemInHand(), cp, true);
        getServer().getPluginManager().callEvent(bpevent);
        if (!bpevent.isCancelled()) 
            return true;
        
        block.setTypeId(0);
        block.setData((byte)0);
        return false;
    }
    
    @EventHandler
    void onBlockBreak(BlockBreakEvent event) {
        // check if the item being used is the
        // morning star from mod-EE
        Player          player;
        Block           block;
        CraftPlayer     cp;
        boolean         catchIt;
        ItemStack       istk;

        player = event.getPlayer();
        if (player == null)
            return;

        block = event.getBlock();

        catchIt = false;
        

        istk = player.getItemInHand();
        
        if (istk == null)
            return;

        // red matter stuff
        if (istk.getTypeId() == ee.EEItem.redMace.id)
            catchIt = true;
        if (istk.getTypeId() == ee.EEItem.redPickaxe.id)
            catchIt = true;         
        if (istk.getTypeId() == ee.EEItem.redAxe.id)
            catchIt = true;         
        if (istk.getTypeId() == ee.EEItem.redHammer.id)
            catchIt = true;         
        if (istk.getTypeId() == ee.EEItem.redHoe.id)
            catchIt = true;
        if (istk.getTypeId() == ee.EEItem.redKatar.id)
            catchIt = true;         
        if (istk.getTypeId() == ee.EEItem.redSpade.id)
            catchIt = true;         
        if (istk.getTypeId() == ee.EEItem.redSword.id)
            catchIt = true;         
        if (istk.getTypeId() == ee.EEItem.redShears.id)
            catchIt = true;
        // dark matter stuff
        if (istk.getTypeId() == ee.EEItem.darkPickaxe.id)
            catchIt = true;         
        if (istk.getTypeId() == ee.EEItem.darkAxe.id)
            catchIt = true;         
        if (istk.getTypeId() == ee.EEItem.darkHammer.id)
            catchIt = true;         
        if (istk.getTypeId() == ee.EEItem.darkHoe.id)
            catchIt = true;
        if (istk.getTypeId() == ee.EEItem.darkSpade.id)
            catchIt = true;         
        if (istk.getTypeId() == ee.EEItem.darkSword.id)
            catchIt = true;         
        if (istk.getTypeId() == ee.EEItem.darkShears.id)
            catchIt = true;            

        if (catchIt) {
            //if (player.getItemInHand().getTypeId() == ee.EEItem.redMace.id) {
            // pass control back onto proper object in mod-EE
            cp = (CraftPlayer)player;

            if(!ee.ItemToolHigh.controlBlockBreakWithInfo((EntityPlayer)cp.getHandle(), block.getTypeId(), block.getData()))
                event.setCancelled(true);
            return;
        }
    }
}

