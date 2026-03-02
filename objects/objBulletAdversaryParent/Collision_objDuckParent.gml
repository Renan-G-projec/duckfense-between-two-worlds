// Ad Maiorem Dei Gloriam!

if (other.dimension != dimension) exit;

activateCoilEffect(other, playerCoilX * other.dir, playerCoilY);
other.takeDamage(damage);

instance_destroy();