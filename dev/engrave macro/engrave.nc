%
O9nnn(ENGRAVE)
(CHARACTER = C = #3)
(PLUNGE FEEDRATE = E = #8)
(ENGRAVE FEEDRATE = F = #9)
(ROTATION ANGLE = I = #4)
(CHAR HEIGHT/SCALE = J = #5)
(RETRACT PLANE = R = #18)
(CUTTING PLANE = Z = #26)
IF[#3LT1]GOTO910 (CHECK C INPUT)
IF[#3GT59]GOTO910 (CHECK C INPUT)
IF[#8EQ#0]THEN#8=#9 (PLUNGE FEED IF NULL)
IF[#9EQ#0]GOTO911 (CHECK FEEDRATE FOR NULL)
IF[#8LE0]GOTO912 (PLUNGE FEED INVALID)
IF[#9LE0]GOTO912 (FEEDRATE INVALID)
#27=#5043 (SAVE INITIAL Z)
#28=#27-#18 (Z-UPPER INC DIST)
#29=#18-#26 (Z-LOWER INC DIST)
#30=#4010 (SAVE G98/G99)
#31=#4003 (SAVE G90/G91)
#32=#4014 (SAVE G54-G59)
#33=#4001 (SAVE G0/G1/ETC)
IF[#4EQ#0]GOTO110 (SKIP ROTATION IF NULL)
G68 X#121 Y#122 R#4 (ROTATION)
IF[#5EQ#0]GOTO112 (SKIP SCALING IF NULL)
G51 X#121 Y#122 P#5 (SCALE)
G17 G20 G40 G91 G0 Z-#28(INITIAL Z TO RETRACT)
GOTO#3 (ETCH CHARACTER)






N1 (A)
G0 X.2197
G1 Z-#26 F#8
G1 X.3465 Y.99 F#9
G1 X.3465 Y-.99
G0 Z#26
G0 X-.5686 Y.3553
G1 Z-#26 F#8
G1 X.4443 F#9
G0 Z#26
G0 X.3441 Y-.3553
GOTO900

N2 (B)
G0 X.2197
G1 Z-#26 F#8
G1 Y.99 F#9
G1 X.33
G2 Y-.4451 R.2226
G1 X-.33
G0 Z#26
G0 X.3626
G1 Z-#26 F#8
G2 X.0018 Y-.5449 R.2725 F#9
G1 X-.3645
G0 Z#26
G0 X.8566
GOTO900

N3 (C)
G0 X.9153 Y.1448
G1 Z-#26 F#8
G2 X-.1835 Y-.1272 R.385 F#9
G2 X-.4244 Y.1593 R.3647
G2 X.0178 Y.6603 R.6142
G2 X.3987 Y.1346 R.3474
G2 X.1575 Y-.1092 R.3453
G0 Z#26
G0 X.2536 Y-.8626
GOTO900

N4 (D)
G0 X.2197
G1 Z-#26 F#8
G1 Y.99 F#9
G1 X.2024
G2 X.2563 Y-.1041 R.3676
G2 X-.0416 Y-.7986 R.5317
G2 X-.2516 Y-.0872 R.4062
G1 X-.1673
G0 Z#26
G0 X.8411
GOTO900

N5 (E)
G0 X.8137
G1 Z-#26 F#8
G1 X-.594 F#9
G1 Y.99
G1 X.594
G0 Z#26
G0 X-.594 Y-.4905
G1 Z-#26 F#8
G1 X.3804 F#9
G0 Z#26
G0 X.4333 Y-.4995
GOTO900

N6 (F)
G0 X.2197
G1 Z-#26 F#8
G1 Y.99 F#9
G1 X.5551
G0 Z#26
G0 X-.5551 Y-.495
G1 Z-#26 F#8
G1 X.3614 F#9
G0 Z#26
G0 X.4134 Y-.495
GOTO900

N7 (G)
G0 X.6317 Y.408
G1 Z-#26 F#8
G1 X.2877 F#9
G1 Y-.1542
G2 X-.1411 Y-.2038 R.3281
G2 X-.3836 Y.0377 R.3081
G2 X-.0734 Y.7437 R.5809
G2 X.3271 Y.1577 R.3644
G2 X.24 Y-.1577 R.2947
G0 Z#26
G0 X.2506 Y-.8314
GOTO900

N8 (H)
G0 X.2197
G1 Z-#26 F#8
G1 Y.99 F#9
G0 Z#26
G0 Y-.495
G1 Z-#26 F#8
G1 X.594 F#9
G0 Z#26
G0 Y-.495
G1 Z-#26 F#8
G1 Y.99 F#9
G0 Z#26
G0 X.2197 Y-.99
GOTO900

N9 (I)
G0 X.2197
G1 Z-#26 F#8
G1 X.2475 F#9
G0 Z#26
G0 X-.1238
G1 Z-#26 F#8
G1 Y.99 F#9
G0 Z#26
G0 X-.1238
G1 Z-#26 F#8
G1 X.2475 F#9
G0 Z#26
G0 X.2197 Y-.99
GOTO900

N10 (J)
G0 X.7237 Y.99
G1 Z-#26 F#8
G1 Y-.738 F#9
G2 X-.504 R.252
G0 Z#26
G0 X.7237 Y-.252
GOTO900

N11 (K)
G0 X.2197 Y.99
G1 Z-#26 F#8
G1 Y-.99 F#9
G0 Z#26
G0 Y.3647
G1 Z-#26 F#8
G1 X.5963 Y.6457 F#9
G0 Z#26
G0 X-.4174 Y-.4519
G1 Z-#26 F#8
G1 X.4151 Y-.5585 F#9
G0 Z#26
G0 X.2197
GOTO900

N12 (L)
G0 X.2197 Y.99
G1 Z-#26 F#8
G1 Y-.99 F#9
G1 X.5272
G0 Z#26
G0 X.2197
GOTO900

N13 (M)
G0 X.2197
G1 Z-#26 F#8
G1 Y.99 F#9
G1 X.396 Y-.7204
G1 X.396 Y.7204
G1 Y-.99
G0 Z#26
G0 X.2197
GOTO900

N14 (N)
G0 X.2197
G1 Z-#26 F#8
G1 Y.99 F#9
G1 X.693 Y-.99
G1 Y.99
G0 Z#26
G0 X.2197 Y-.99
GOTO900

N15 (O)
G0 X.8175 Y.105
G1 Z-#26 F#8
G2 X-.4543 R.2983 F#9
G2 Y.7801 R.6018
G2 X.4542 R.2982
G2 Y-.7801 R.6018
G0 Z#26
G0 X.3632 Y-.105
GOTO900

N16 (P)

N17 (Q)

N18 (R)

N19 (S)

N20 (T)

N21 (U)

N22 (V)

N23 (W)

N24 (X)

N25 (Y)

N26 (Z)

N30 (0)

N31 (1)

N32 (2)

N33 (3)

N34 (4)

N35 (5)

N36 (6)

N37 (7)

N39 (8)

N39 (9)

N40 (SPACE)

N41 (OCTOTHORPE)

N42 (AMPERSAND)

N43 (DASH/MINUS)

N44 (PERIOD)

N45 (ASTERISK)

N46 (PLUS)

N47 (COMMA)

N48 (SLASH)

N49 (BACKSLASH)

N50 (OPEN PARENTHESIS)

N51 (CLOSE PARENTHESIS)

N52 (OPEN BRACKET)

N53 (CLOSE BRACKET)




N900 (END)
G0 Z#28 (RETURN TO INITIAL Z)
G50 (SCALE OFF)
G69 (ROTATION OFF)
G#31 G#32 G#33 (RETURN TO INITIAL STATE)
GOTO999
N910 #3000=1 (CHARACTER OUT OF RANGE)
N911 #3000=2 (NO FEED RATE COMMAND)
N912 #3000=3 (FEEDRATE OUT OF RANGE)
N999 M99
%