r += growSpeed;
frameCount += 1;

if(frameCount < 5) {
    var zoomRatio = (4 - frameCount) * (1/60); // 0 to 1
    __view_set( e__VW.XView, 0, zoomRatio * (room_width/2) );
    __view_set( e__VW.YView, 0, (__view_get( e__VW.XView, 0 ) / 800) * 608 );
    __view_set( e__VW.WView, 0, 800 - (__view_get( e__VW.XView, 0 ) * 2) );
    __view_set( e__VW.HView, 0, 608 - (__view_get( e__VW.YView, 0 ) * 2) );
}

