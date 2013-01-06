package ee;

import net.minecraft.server.IDataManager;
import net.minecraft.server.WorldProvider;
import net.minecraft.server.WorldSettings;
import org.bukkit.World.Environment;
import org.bukkit.generator.ChunkGenerator;
import net.minecraft.server.World;
import net.minecraft.server.EntityHuman;
import net.minecraft.server.Entity;
import net.minecraft.server.DamageSource;
import org.bukkit.Bukkit;

//@@allexclude

public class BigWorldHook {
	public static IHooker			__p;
	public static IEEToolHooker		__th;
	
	public static int				novaPrimed = 0;
	
	//ee.BigWorldHook.damageEntityHooked(Lnet/minecraft/server/Entity;Lnet/minecraft/server/DamageSource;I)Z
	public static boolean damageEntityHooked(Entity entity, DamageSource source, int damage) {
		Bukkit.getServer().getLogger().info(String.format("damageEntity:%d", damage));
		//return entity.damageEntity(source, damage);
		return __p.damageEntityHooked(entity, source, damage);
	}
	
	public static boolean setTypeIdHookedPlayer(EntityHuman player, World world, int x, int y, int z, int typeId) {
		//breakAndPlace(EntityHuman player, Object _w, int x, int y, int z, int typeId, byte data);
		return __p.breakAndPlace(player, world, x, y, z, typeId, (byte)0);
	} 
	
	public static boolean setTypeIdAndDataHooked(World world, int x, int y, int z, int typeId, int data) { 
		return __p.breakAndPlace(null, world, x, y, z, typeId, (byte)data);
	}
	
	public static void addEEToolBlockBreakCatchItemId(int id) {
		__th.addEEToolBlockBreakCatchItemId(id);
	}
	
	public static void dprint(String msg) {
		__p.dprint(msg);
	}
	
	public static boolean canBreak(EntityHuman player, World world, int x, int y, int z) {
		return __p.canBreak(player, world, x, y, z);
	}
	
	public static boolean canBreak(World world, int x, int y, int z) {
		return __p.canBreak(null, world, x, y, z);
	}
	
	public static boolean setTypeIdHooked(World world, int x, int y, int z, int typeId) {
		return __p.breakAndPlace(null, world, x, y, z, typeId, (byte)0);
	}
}
