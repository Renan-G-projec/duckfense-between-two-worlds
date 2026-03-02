// Ad Maiorem Dei Gloriam
if (other.dimension != dimension) exit;

if (!array_contains(memAdversaries, other)) {
	other.takeDamage(damage);
	addAdv(other);
}