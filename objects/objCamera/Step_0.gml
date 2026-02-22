// Ad Maiorem Dei Gloriam!

if (!active) exit;

updatePosition();
if (checkTargetDistance()) camera_set_view_target(view_camera[0], target);