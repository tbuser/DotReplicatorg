(**** beginning of start.gcode ****)
(This file is for 1.75mm PLA in DUAL MK7 Extruders)
G21 (set units to mm)
G90 (set positioning to absolute)
G10 P1 X16.55 Y0 Z-0.3 (Designate T0 Offset)
G10 P2 X-16.5 Y0 Z-0.3 (Designate T1 Offset)
G54 (Recall offset cooridinate system)
M104 S210 T0 (set extruder temperature)
M104 S210 T1 (set extruder temperature)
M109 S50 T0 (set heated-build-platform temperature)
(**** begin homing ****)
G162 Z F1100 (home Z axis maximum)
G92 Z-5 (set Z to -5)
G1 Z0.0 (move Z down 0)
G162 Z F100 (home Z axis maximum)
G161 X Y F2500 (home XY axes minimum)
M132 X Y Z A B (Recall stored home offsets for XYZAB axis)
(**** end homing ****)
M6 T0 (wait for toolhead parts, nozzle, HBP, etc., to reach temperature)
M6 T1
(**** end of start.gcode ****)
