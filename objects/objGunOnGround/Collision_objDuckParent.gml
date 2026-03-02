// Ad Maiorem Dei Gloriam!

if (other.dimension != dimension) exit;

if (other.gun) {
	instance_create_layer(x, y, "PlayerAndControllers", other.gun.onGrndRef);
	instance_destroy(other.gun);
};

other.gun = instance_create_layer(other.x, other.y, "PlayerAndControllers", gunRef);
other.gun.playerRef = other;

instance_destroy();