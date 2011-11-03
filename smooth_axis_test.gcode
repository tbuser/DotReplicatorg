(* This is http://www.thingiverse.com/thing:6454 *)

(* This is a script to help you diagnose axis problems without making a dozen oddly    *)
(* sloping 20mm cubes.  It homes your machine defining home as X-57 Y-57 which puts    *)
(* X0 Y0 roughly in the center of the build platform.  It then makes several moves all *)
(* at a set speed:  Choose that speed below where it says "F4000" with a big arrow.    *)
(* After its little dance it re-homes the machine, leaving it positioned so that you   *)
(* can go into "Control Panel" ctrl-J and check the "X Position" and "Y Position"      *)
(* under the Jog controls.  If they are not "-57" then your machine lost steps. Either *)
(* accept a slower maximum speed with appropriate skeinforge configuration or tune the *)
(* problem axis:  Proper belt tension, free moving bearings, stepper controller setup. *)

(* setup *)
G21 (units mm)
G90 (absolute position)
(home Z, then X Y)
G162 Z F750
G161 Y X F2500
(assume 107mm tall makerbot.  Don't worry: this doesn't go near the platform)
G92 Z107 X-57 Y-57

(* stretch our legs *)
G1 X0 Y0 F3400  (  <----  ADJUST FEED SPEED HERE in mm/min [skeinforge mm/sec * 60])
G1 X45 Y50
G1 X35
G1 X45
G1 X35
G1 X45
G1 Y-50
G1 Y-40
G1 Y-50
G1 Y-40
G1 X-45
G1 X-40
G1 X-45
G1 X-40
G1 X-45
G1 Y50
G1 Y40
G1 Y50

(* big plus *)
G1 X0 Y0
G1 X45 Y0
G1 X0 Y0
G1 X0 Y-50
G1 X0 Y0
G1 X-45 Y0
G1 X0 Y0
G1 X0 Y50

(* big X *)
G1 X0 Y0
G1 X45 Y50
G1 X0 Y0
G1 X-45 Y50
G1 X0 Y0
G1 X45 Y-50
G1 X0 Y0
G1 X-45 Y-50

(* seems to be trouble, so big X again! *)
G1 X0 Y0
G1 X45 Y50
G1 X0 Y0
G1 X-45 Y50
G1 X0 Y0
G1 X45 Y-50
G1 X0 Y0
G1 X-45 Y-50

(* this is a move from Carabiner V2 http://www.thingiverse.com/thing:5689 *)
G1 X10.74 Y-2.38
G1 X10.2 Y-1.91 
G1 X11.79 Y1.62 
G1 X12.49 Y2.79 
G1 X10.94 Y3.77 
G1 X-2.07 Y-22.29 
G1 X-2.73 Y-23.16 
G1 X-3.52 Y-23.9 
G1 X-4.44 Y-24.49 
G1 X-5.44 Y-24.92 
G1 X-6.5 Y-25.16 
G1 X-7.59 Y-25.21 
G1 X-8.67 Y-25.06 
G1 X-9.71 Y-24.73 
G1 X-10.67 Y-24.23 
G1 X-11.53 Y-23.56 
G1 X-12.27 Y-22.75 
G1 X-12.84 Y-21.83 
G1 X-13.25 Y-20.82 
G1 X-13.47 Y-19.75 
G1 X-13.46 Y12.92 
G1 X-13.29 Y14.15 
G1 X-13.01 Y15.35 
G1 X-12.62 Y16.52 
G1 X-12.13 Y17.65 
G1 X-11.53 Y18.73 
G1 X-10.84 Y19.76 
G1 X-10.06 Y20.71 
G1 X-9.19 Y21.59 
G1 X-8.25 Y22.39 
G1 X-7.24 Y23.1 
G1 X-6.17 Y23.71 
G1 X-5.05 Y24.23 
G1 X-3.88 Y24.63 
G1 X-2.68 Y24.94 
G1 X-1.46 Y25.13 
G1 X-0.23 Y25.2 
G1 X1.0 Y25.17 
G1 X2.23 Y25.02 
G1 X3.44 Y24.76 
G1 X4.62 Y24.39 
G1 X5.76 Y23.92 
G1 X6.85 Y23.34 
G1 X7.88 Y22.67 
G1 X8.85 Y21.91 
G1 X9.75 Y21.06 
G1 X10.56 Y20.13 
G1 X11.29 Y19.13 
G1 X11.92 Y18.07 
G1 X12.45 Y16.95 
G1 X12.88 Y15.8 
G1 X13.2 Y14.6 
G1 X13.41 Y13.39 
G1 X13.51 Y12.16 
G1 X13.5 Y10.92 
G1 X13.37 Y9.69 
G1 X13.13 Y8.48 
G1 X12.79 Y7.3 
G1 X12.33 Y6.15 
G1 X11.29 Y4.47 
G1 X12.95 Y3.83 
G1 X13.72 Y6.26 

(* same move turned 90 degrees *)
G1 Y10.74 X-2.38 
G1 Y10.2 X-1.91 
G1 Y11.79 X1.62 
G1 Y12.49 X2.79 
G1 Y10.94 X3.77 
G1 Y-2.07 X-22.29 
G1 Y-2.73 X-23.16 
G1 Y-3.52 X-23.9 
G1 Y-4.44 X-24.49 
G1 Y-5.44 X-24.92 
G1 Y-6.5 X-25.16 
G1 Y-7.59 X-25.21 
G1 Y-8.67 X-25.06 
G1 Y-9.71 X-24.73 
G1 Y-10.67 X-24.23 
G1 Y-11.53 X-23.56 
G1 Y-12.27 X-22.75 
G1 Y-12.84 X-21.83 
G1 Y-13.25 X-20.82 
G1 Y-13.47 X-19.75 
G1 Y-13.46 X12.92 
G1 Y-13.29 X14.15 
G1 Y-13.01 X15.35 
G1 Y-12.62 X16.52 
G1 Y-12.13 X17.65 
G1 Y-11.53 X18.73 
G1 Y-10.84 X19.76 
G1 Y-10.06 X20.71 
G1 Y-9.19 X21.59 
G1 Y-8.25 X22.39 
G1 Y-7.24 X23.1 
G1 Y-6.17 X23.71 
G1 Y-5.05 X24.23 
G1 Y-3.88 X24.63 
G1 Y-2.68 X24.94 
G1 Y-1.46 X25.13 
G1 Y-0.23 X25.2 
G1 Y1.0 X25.17 
G1 Y2.23 X25.02 
G1 Y3.44 X24.76 
G1 Y4.62 X24.39 
G1 Y5.76 X23.92 
G1 Y6.85 X23.34 
G1 Y7.88 X22.67 
G1 Y8.85 X21.91 
G1 Y9.75 X21.06 
G1 Y10.56 X20.13 
G1 Y11.29 X19.13 
G1 Y11.92 X18.07 
G1 Y12.45 X16.95 
G1 Y12.88 X15.8 
G1 Y13.2 X14.6 
G1 Y13.41 X13.39 
G1 Y13.51 X12.16 
G1 Y13.5 X10.92 
G1 Y13.37 X9.69 
G1 Y13.13 X8.48 
G1 Y12.79 X7.3 
G1 Y12.33 X6.15 
G1 Y11.29 X4.47 
G1 Y12.95 X3.83 
G1 Y13.72 X6.26 

(* re-home so you can quickly consult the X/Y location in the control panel *)
G161 Y X F2500

M1 (Open the control panel [ctrl-J] and verify X/Y positions are both "-57" or you lost steps...)

M18 (disable steppers)
