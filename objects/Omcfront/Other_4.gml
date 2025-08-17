view_enabled = true;
view_visible[0] = true;

var _w = global.res_width;
var _h = global.res_height;
var _cam = camera_create_view(0, 0, _w, _h);
camera_set_view_target(_cam, Omcfront);
camera_set_view_border(_cam, _w / 2, _h / 2);

view_camera[0] = _cam; // Assign the camera to the first view slot

// Make sure to replace `rm_Start` with your actual starting room name!
if (room != StartingRoom) {  
    var zoom_factor = 1; // Default zoom (no change)

    if (room == Eyeballroom) zoom_factor = 1.5;
    if (room == Neonroom) zoom_factor = 1.5;
    if (room == Goldenroom) zoom_factor = 1.5;

    camera_set_view_size(_cam, _w / zoom_factor, _h / zoom_factor);
}