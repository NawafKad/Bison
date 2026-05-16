var tex = sprite_get_texture(sprite_index, image_index);
/*
var x1 = mouse_x;           // top-left (anchored)
var y1 = mouse_y;

var x2 = mouse_x;      // top-right (anchored)
var y2 = mouse_y;

var x3 = room_width;     // bottom-right (moves)
var y3 = room_height;

var x4 = 0;           // bottom-left (moves in relation)
var y4 = room_height;
*/
var width = 100;

// top edge follows mouse (flat)
var x1 = mouse_x - width/2;
var y1 = mouse_y;

var x2 = mouse_x + width/2;
var y2 = mouse_y;

// bottom stays fixed
var x3 = room_width * 0.75;
var y3 = room_height;

var x4 = room_width * 0.25;
var y4 = room_height;

draw_primitive_begin_texture(pr_trianglefan, tex);

draw_vertex_texture_color(x1, y1, 0, 0, c_white, 1);
draw_vertex_texture_color(x2, y2, 1, 0, c_white, 1);
draw_vertex_texture_color(x3, y3, 1, 1, c_white, 1);
draw_vertex_texture_color(x4, y4, 0, 1, c_white, 1);

draw_primitive_end();