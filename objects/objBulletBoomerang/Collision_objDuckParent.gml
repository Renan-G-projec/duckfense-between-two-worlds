// Ad Maiorem Dei Gloriam
if (speed > 0) exit;
if (other.dimension != dimension) exit;

// TO DO: Check if the player changed ammo
other.gun.isVisible = true;
other.gun.visible = true;
instance_destroy();