(**** Beginning of end.gcode ****)
(**** begin move to cooling position ****)
G1 X0.0 Y0.0 F2500 (Go to 0,0)
G162 Z F1000 (home Z axis maximum)
(**** end move to cooling position ****)
(**** begin cool for safety ****)
M104 S0 T0 (set extruder temperature)
M109 S0 T0 (set heated-build-platform temperature)
(**** end cool for safety ****)
(**** end of end.gcode ****)