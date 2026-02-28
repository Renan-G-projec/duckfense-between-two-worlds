// Ad Maiorem Dei Gloriam

if (other.dimension != dimension) exit;
if (!array_contains(memorizedAdversaries, other)) other.takeDamage(damage);
array_push(memorizedAdversaries, other);

updateDepth();