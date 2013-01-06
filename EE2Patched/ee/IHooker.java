package ee;

import net.minecraft.server.EntityHuman;
import net.minecraft.server.Entity;
import net.minecraft.server.DamageSource;

public interface IHooker {
	public boolean damageEntityHooked(Entity entity, DamageSource source, int damage);
	public boolean breakAndPlace(EntityHuman player, Object _w, int x, int y, int z, int typeId, byte data);
	public boolean canBreak(EntityHuman player, Object _w, int x, int y, int z);
	public void dprint(String msg);
}
