// Ad Maiorem Dei Gloriam!

var _prevShader = shader_current();
shader_set(shNormal);
draw_self();
shader_set(_prevShader);