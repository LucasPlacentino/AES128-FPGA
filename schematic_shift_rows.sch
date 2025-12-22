# File saved with Nlview 7.8.0 2024-04-26 e1825d835c VDI=44 GEI=38 GUI=JA:21.0 threadsafe
# 
# non-default properties - (restore without -noprops)
property -colorscheme classic
property attrcolor #000000
property attrfontsize 8
property autobundle 1
property backgroundcolor #ffffff
property boxcolor0 #000000
property boxcolor1 #000000
property boxcolor2 #000000
property boxinstcolor #000000
property boxpincolor #000000
property buscolor #008000
property closeenough 5
property createnetattrdsp 2048
property decorate 1
property elidetext 40
property fillcolor1 #ffffcc
property fillcolor2 #dfebf8
property fillcolor3 #f0f0f0
property gatecellname 2
property instattrmax 30
property instdrag 15
property instorder 1
property marksize 12
property maxfontsize 21
property maxzoom 8.75
property netcolor #19b400
property objecthighlight0 #ff00ff
property objecthighlight1 #ffff00
property objecthighlight2 #00ff00
property objecthighlight3 #0095ff
property objecthighlight4 #8000ff
property objecthighlight5 #ffc800
property objecthighlight7 #00ffff
property objecthighlight8 #ff00ff
property objecthighlight9 #ccccff
property objecthighlight10 #0ead00
property objecthighlight11 #cefc00
property objecthighlight12 #9e2dbe
property objecthighlight13 #ba6a29
property objecthighlight14 #fc0188
property objecthighlight15 #02f990
property objecthighlight16 #f1b0fb
property objecthighlight17 #fec004
property objecthighlight18 #149bff
property objecthighlight19 #eb591b
property overlaycolor #19b400
property pbuscolor #000000
property pbusnamecolor #000000
property pinattrmax 20
property pinorder 2
property pinpermute 0
property portcolor #000000
property portnamecolor #000000
property ripindexfontsize 4
property rippercolor #000000
property rubberbandcolor #000000
property rubberbandfontsize 21
property selectattr 0
property selectionappearance 2
property selectioncolor #0000ff
property sheetheight 44
property sheetwidth 68
property showmarks 1
property shownetname 0
property showpagenumbers 1
property showripindex 1
property timelimit 1
#
module new shift_rows work:shift_rows:NOFILE -nosplit
load symbol OBUF hdi_primitives BUF pin O output pin I input fillcolor 1
load symbol IBUF hdi_primitives BUF pin O output pin I input fillcolor 1
load portBus matrix_in[0,0] input [7:0] -attr @name matrix_in[0,0][7:0] -pg 1 -lvl 0 -x 0 -y 40
load portBus matrix_in[0,1] input [7:0] -attr @name matrix_in[0,1][7:0] -pg 1 -lvl 0 -x 0 -y 600
load portBus matrix_in[0,2] input [7:0] -attr @name matrix_in[0,2][7:0] -pg 1 -lvl 0 -x 0 -y 1160
load portBus matrix_in[0,3] input [7:0] -attr @name matrix_in[0,3][7:0] -pg 1 -lvl 0 -x 0 -y 1720
load portBus matrix_in[1,0] input [7:0] -attr @name matrix_in[1,0][7:0] -pg 1 -lvl 0 -x 0 -y 3960
load portBus matrix_in[1,1] input [7:0] -attr @name matrix_in[1,1][7:0] -pg 1 -lvl 0 -x 0 -y 2280
load portBus matrix_in[1,2] input [7:0] -attr @name matrix_in[1,2][7:0] -pg 1 -lvl 0 -x 0 -y 2840
load portBus matrix_in[1,3] input [7:0] -attr @name matrix_in[1,3][7:0] -pg 1 -lvl 0 -x 0 -y 3400
load portBus matrix_in[2,0] input [7:0] -attr @name matrix_in[2,0][7:0] -pg 1 -lvl 0 -x 0 -y 5640
load portBus matrix_in[2,1] input [7:0] -attr @name matrix_in[2,1][7:0] -pg 1 -lvl 0 -x 0 -y 6200
load portBus matrix_in[2,2] input [7:0] -attr @name matrix_in[2,2][7:0] -pg 1 -lvl 0 -x 0 -y 4520
load portBus matrix_in[2,3] input [7:0] -attr @name matrix_in[2,3][7:0] -pg 1 -lvl 0 -x 0 -y 5080
load portBus matrix_in[3,0] input [7:0] -attr @name matrix_in[3,0][7:0] -pg 1 -lvl 0 -x 0 -y 7320
load portBus matrix_in[3,1] input [7:0] -attr @name matrix_in[3,1][7:0] -pg 1 -lvl 0 -x 0 -y 7880
load portBus matrix_in[3,2] input [7:0] -attr @name matrix_in[3,2][7:0] -pg 1 -lvl 0 -x 0 -y 8440
load portBus matrix_in[3,3] input [7:0] -attr @name matrix_in[3,3][7:0] -pg 1 -lvl 0 -x 0 -y 6760
load portBus matrix_out[0,0] output [7:0] -attr @name matrix_out[0,0][7:0] -pg 1 -lvl 3 -x 520 -y 40
load portBus matrix_out[0,1] output [7:0] -attr @name matrix_out[0,1][7:0] -pg 1 -lvl 3 -x 520 -y 600
load portBus matrix_out[0,2] output [7:0] -attr @name matrix_out[0,2][7:0] -pg 1 -lvl 3 -x 520 -y 1160
load portBus matrix_out[0,3] output [7:0] -attr @name matrix_out[0,3][7:0] -pg 1 -lvl 3 -x 520 -y 1720
load portBus matrix_out[1,0] output [7:0] -attr @name matrix_out[1,0][7:0] -pg 1 -lvl 3 -x 520 -y 2280
load portBus matrix_out[1,1] output [7:0] -attr @name matrix_out[1,1][7:0] -pg 1 -lvl 3 -x 520 -y 2840
load portBus matrix_out[1,2] output [7:0] -attr @name matrix_out[1,2][7:0] -pg 1 -lvl 3 -x 520 -y 3400
load portBus matrix_out[1,3] output [7:0] -attr @name matrix_out[1,3][7:0] -pg 1 -lvl 3 -x 520 -y 3960
load portBus matrix_out[2,0] output [7:0] -attr @name matrix_out[2,0][7:0] -pg 1 -lvl 3 -x 520 -y 4520
load portBus matrix_out[2,1] output [7:0] -attr @name matrix_out[2,1][7:0] -pg 1 -lvl 3 -x 520 -y 5080
load portBus matrix_out[2,2] output [7:0] -attr @name matrix_out[2,2][7:0] -pg 1 -lvl 3 -x 520 -y 5640
load portBus matrix_out[2,3] output [7:0] -attr @name matrix_out[2,3][7:0] -pg 1 -lvl 3 -x 520 -y 6200
load portBus matrix_out[3,0] output [7:0] -attr @name matrix_out[3,0][7:0] -pg 1 -lvl 3 -x 520 -y 6760
load portBus matrix_out[3,1] output [7:0] -attr @name matrix_out[3,1][7:0] -pg 1 -lvl 3 -x 520 -y 7320
load portBus matrix_out[3,2] output [7:0] -attr @name matrix_out[3,2][7:0] -pg 1 -lvl 3 -x 520 -y 7880
load portBus matrix_out[3,3] output [7:0] -attr @name matrix_out[3,3][7:0] -pg 1 -lvl 3 -x 520 -y 8440
load inst matrix_out[0,0][0]_INST_0 OBUF hdi_primitives -attr @cell(#000000) OBUF -pg 1 -lvl 2 -x 300 -y 40
load inst matrix_out[0,0][0]_INST_0_i_1 IBUF hdi_primitives -attr @cell(#000000) IBUF -pg 1 -lvl 1 -x 60 -y 40
load inst matrix_out[0,0][1]_INST_0 OBUF hdi_primitives -attr @cell(#000000) OBUF -pg 1 -lvl 2 -x 300 -y 110
load inst matrix_out[0,0][1]_INST_0_i_1 IBUF hdi_primitives -attr @cell(#000000) IBUF -pg 1 -lvl 1 -x 60 -y 110
load inst matrix_out[0,0][2]_INST_0 OBUF hdi_primitives -attr @cell(#000000) OBUF -pg 1 -lvl 2 -x 300 -y 180
load inst matrix_out[0,0][2]_INST_0_i_1 IBUF hdi_primitives -attr @cell(#000000) IBUF -pg 1 -lvl 1 -x 60 -y 180
load inst matrix_out[0,0][3]_INST_0 OBUF hdi_primitives -attr @cell(#000000) OBUF -pg 1 -lvl 2 -x 300 -y 250
load inst matrix_out[0,0][3]_INST_0_i_1 IBUF hdi_primitives -attr @cell(#000000) IBUF -pg 1 -lvl 1 -x 60 -y 250
load inst matrix_out[0,0][4]_INST_0 OBUF hdi_primitives -attr @cell(#000000) OBUF -pg 1 -lvl 2 -x 300 -y 320
load inst matrix_out[0,0][4]_INST_0_i_1 IBUF hdi_primitives -attr @cell(#000000) IBUF -pg 1 -lvl 1 -x 60 -y 320
load inst matrix_out[0,0][5]_INST_0 OBUF hdi_primitives -attr @cell(#000000) OBUF -pg 1 -lvl 2 -x 300 -y 390
load inst matrix_out[0,0][5]_INST_0_i_1 IBUF hdi_primitives -attr @cell(#000000) IBUF -pg 1 -lvl 1 -x 60 -y 390
load inst matrix_out[0,0][6]_INST_0 OBUF hdi_primitives -attr @cell(#000000) OBUF -pg 1 -lvl 2 -x 300 -y 460
load inst matrix_out[0,0][6]_INST_0_i_1 IBUF hdi_primitives -attr @cell(#000000) IBUF -pg 1 -lvl 1 -x 60 -y 460
load inst matrix_out[0,0][7]_INST_0 OBUF hdi_primitives -attr @cell(#000000) OBUF -pg 1 -lvl 2 -x 300 -y 530
load inst matrix_out[0,0][7]_INST_0_i_1 IBUF hdi_primitives -attr @cell(#000000) IBUF -pg 1 -lvl 1 -x 60 -y 530
load inst matrix_out[0,1][0]_INST_0 OBUF hdi_primitives -attr @cell(#000000) OBUF -pg 1 -lvl 2 -x 300 -y 600
load inst matrix_out[0,1][0]_INST_0_i_1 IBUF hdi_primitives -attr @cell(#000000) IBUF -pg 1 -lvl 1 -x 60 -y 600
load inst matrix_out[0,1][1]_INST_0 OBUF hdi_primitives -attr @cell(#000000) OBUF -pg 1 -lvl 2 -x 300 -y 670
load inst matrix_out[0,1][1]_INST_0_i_1 IBUF hdi_primitives -attr @cell(#000000) IBUF -pg 1 -lvl 1 -x 60 -y 670
load inst matrix_out[0,1][2]_INST_0 OBUF hdi_primitives -attr @cell(#000000) OBUF -pg 1 -lvl 2 -x 300 -y 740
load inst matrix_out[0,1][2]_INST_0_i_1 IBUF hdi_primitives -attr @cell(#000000) IBUF -pg 1 -lvl 1 -x 60 -y 740
load inst matrix_out[0,1][3]_INST_0 OBUF hdi_primitives -attr @cell(#000000) OBUF -pg 1 -lvl 2 -x 300 -y 810
load inst matrix_out[0,1][3]_INST_0_i_1 IBUF hdi_primitives -attr @cell(#000000) IBUF -pg 1 -lvl 1 -x 60 -y 810
load inst matrix_out[0,1][4]_INST_0 OBUF hdi_primitives -attr @cell(#000000) OBUF -pg 1 -lvl 2 -x 300 -y 880
load inst matrix_out[0,1][4]_INST_0_i_1 IBUF hdi_primitives -attr @cell(#000000) IBUF -pg 1 -lvl 1 -x 60 -y 880
load inst matrix_out[0,1][5]_INST_0 OBUF hdi_primitives -attr @cell(#000000) OBUF -pg 1 -lvl 2 -x 300 -y 950
load inst matrix_out[0,1][5]_INST_0_i_1 IBUF hdi_primitives -attr @cell(#000000) IBUF -pg 1 -lvl 1 -x 60 -y 950
load inst matrix_out[0,1][6]_INST_0 OBUF hdi_primitives -attr @cell(#000000) OBUF -pg 1 -lvl 2 -x 300 -y 1020
load inst matrix_out[0,1][6]_INST_0_i_1 IBUF hdi_primitives -attr @cell(#000000) IBUF -pg 1 -lvl 1 -x 60 -y 1020
load inst matrix_out[0,1][7]_INST_0 OBUF hdi_primitives -attr @cell(#000000) OBUF -pg 1 -lvl 2 -x 300 -y 1090
load inst matrix_out[0,1][7]_INST_0_i_1 IBUF hdi_primitives -attr @cell(#000000) IBUF -pg 1 -lvl 1 -x 60 -y 1090
load inst matrix_out[0,2][0]_INST_0 OBUF hdi_primitives -attr @cell(#000000) OBUF -pg 1 -lvl 2 -x 300 -y 1160
load inst matrix_out[0,2][0]_INST_0_i_1 IBUF hdi_primitives -attr @cell(#000000) IBUF -pg 1 -lvl 1 -x 60 -y 1160
load inst matrix_out[0,2][1]_INST_0 OBUF hdi_primitives -attr @cell(#000000) OBUF -pg 1 -lvl 2 -x 300 -y 1230
load inst matrix_out[0,2][1]_INST_0_i_1 IBUF hdi_primitives -attr @cell(#000000) IBUF -pg 1 -lvl 1 -x 60 -y 1230
load inst matrix_out[0,2][2]_INST_0 OBUF hdi_primitives -attr @cell(#000000) OBUF -pg 1 -lvl 2 -x 300 -y 1300
load inst matrix_out[0,2][2]_INST_0_i_1 IBUF hdi_primitives -attr @cell(#000000) IBUF -pg 1 -lvl 1 -x 60 -y 1300
load inst matrix_out[0,2][3]_INST_0 OBUF hdi_primitives -attr @cell(#000000) OBUF -pg 1 -lvl 2 -x 300 -y 1370
load inst matrix_out[0,2][3]_INST_0_i_1 IBUF hdi_primitives -attr @cell(#000000) IBUF -pg 1 -lvl 1 -x 60 -y 1370
load inst matrix_out[0,2][4]_INST_0 OBUF hdi_primitives -attr @cell(#000000) OBUF -pg 1 -lvl 2 -x 300 -y 1440
load inst matrix_out[0,2][4]_INST_0_i_1 IBUF hdi_primitives -attr @cell(#000000) IBUF -pg 1 -lvl 1 -x 60 -y 1440
load inst matrix_out[0,2][5]_INST_0 OBUF hdi_primitives -attr @cell(#000000) OBUF -pg 1 -lvl 2 -x 300 -y 1510
load inst matrix_out[0,2][5]_INST_0_i_1 IBUF hdi_primitives -attr @cell(#000000) IBUF -pg 1 -lvl 1 -x 60 -y 1510
load inst matrix_out[0,2][6]_INST_0 OBUF hdi_primitives -attr @cell(#000000) OBUF -pg 1 -lvl 2 -x 300 -y 1580
load inst matrix_out[0,2][6]_INST_0_i_1 IBUF hdi_primitives -attr @cell(#000000) IBUF -pg 1 -lvl 1 -x 60 -y 1580
load inst matrix_out[0,2][7]_INST_0 OBUF hdi_primitives -attr @cell(#000000) OBUF -pg 1 -lvl 2 -x 300 -y 1650
load inst matrix_out[0,2][7]_INST_0_i_1 IBUF hdi_primitives -attr @cell(#000000) IBUF -pg 1 -lvl 1 -x 60 -y 1650
load inst matrix_out[0,3][0]_INST_0 OBUF hdi_primitives -attr @cell(#000000) OBUF -pg 1 -lvl 2 -x 300 -y 1720
load inst matrix_out[0,3][0]_INST_0_i_1 IBUF hdi_primitives -attr @cell(#000000) IBUF -pg 1 -lvl 1 -x 60 -y 1720
load inst matrix_out[0,3][1]_INST_0 OBUF hdi_primitives -attr @cell(#000000) OBUF -pg 1 -lvl 2 -x 300 -y 1790
load inst matrix_out[0,3][1]_INST_0_i_1 IBUF hdi_primitives -attr @cell(#000000) IBUF -pg 1 -lvl 1 -x 60 -y 1790
load inst matrix_out[0,3][2]_INST_0 OBUF hdi_primitives -attr @cell(#000000) OBUF -pg 1 -lvl 2 -x 300 -y 1860
load inst matrix_out[0,3][2]_INST_0_i_1 IBUF hdi_primitives -attr @cell(#000000) IBUF -pg 1 -lvl 1 -x 60 -y 1860
load inst matrix_out[0,3][3]_INST_0 OBUF hdi_primitives -attr @cell(#000000) OBUF -pg 1 -lvl 2 -x 300 -y 1930
load inst matrix_out[0,3][3]_INST_0_i_1 IBUF hdi_primitives -attr @cell(#000000) IBUF -pg 1 -lvl 1 -x 60 -y 1930
load inst matrix_out[0,3][4]_INST_0 OBUF hdi_primitives -attr @cell(#000000) OBUF -pg 1 -lvl 2 -x 300 -y 2000
load inst matrix_out[0,3][4]_INST_0_i_1 IBUF hdi_primitives -attr @cell(#000000) IBUF -pg 1 -lvl 1 -x 60 -y 2000
load inst matrix_out[0,3][5]_INST_0 OBUF hdi_primitives -attr @cell(#000000) OBUF -pg 1 -lvl 2 -x 300 -y 2070
load inst matrix_out[0,3][5]_INST_0_i_1 IBUF hdi_primitives -attr @cell(#000000) IBUF -pg 1 -lvl 1 -x 60 -y 2070
load inst matrix_out[0,3][6]_INST_0 OBUF hdi_primitives -attr @cell(#000000) OBUF -pg 1 -lvl 2 -x 300 -y 2140
load inst matrix_out[0,3][6]_INST_0_i_1 IBUF hdi_primitives -attr @cell(#000000) IBUF -pg 1 -lvl 1 -x 60 -y 2140
load inst matrix_out[0,3][7]_INST_0 OBUF hdi_primitives -attr @cell(#000000) OBUF -pg 1 -lvl 2 -x 300 -y 2210
load inst matrix_out[0,3][7]_INST_0_i_1 IBUF hdi_primitives -attr @cell(#000000) IBUF -pg 1 -lvl 1 -x 60 -y 2210
load inst matrix_out[1,0][0]_INST_0 OBUF hdi_primitives -attr @cell(#000000) OBUF -pg 1 -lvl 2 -x 300 -y 2280
load inst matrix_out[1,0][0]_INST_0_i_1 IBUF hdi_primitives -attr @cell(#000000) IBUF -pg 1 -lvl 1 -x 60 -y 2280
load inst matrix_out[1,0][1]_INST_0 OBUF hdi_primitives -attr @cell(#000000) OBUF -pg 1 -lvl 2 -x 300 -y 2350
load inst matrix_out[1,0][1]_INST_0_i_1 IBUF hdi_primitives -attr @cell(#000000) IBUF -pg 1 -lvl 1 -x 60 -y 2350
load inst matrix_out[1,0][2]_INST_0 OBUF hdi_primitives -attr @cell(#000000) OBUF -pg 1 -lvl 2 -x 300 -y 2420
load inst matrix_out[1,0][2]_INST_0_i_1 IBUF hdi_primitives -attr @cell(#000000) IBUF -pg 1 -lvl 1 -x 60 -y 2420
load inst matrix_out[1,0][3]_INST_0 OBUF hdi_primitives -attr @cell(#000000) OBUF -pg 1 -lvl 2 -x 300 -y 2490
load inst matrix_out[1,0][3]_INST_0_i_1 IBUF hdi_primitives -attr @cell(#000000) IBUF -pg 1 -lvl 1 -x 60 -y 2490
load inst matrix_out[1,0][4]_INST_0 OBUF hdi_primitives -attr @cell(#000000) OBUF -pg 1 -lvl 2 -x 300 -y 2560
load inst matrix_out[1,0][4]_INST_0_i_1 IBUF hdi_primitives -attr @cell(#000000) IBUF -pg 1 -lvl 1 -x 60 -y 2560
load inst matrix_out[1,0][5]_INST_0 OBUF hdi_primitives -attr @cell(#000000) OBUF -pg 1 -lvl 2 -x 300 -y 2630
load inst matrix_out[1,0][5]_INST_0_i_1 IBUF hdi_primitives -attr @cell(#000000) IBUF -pg 1 -lvl 1 -x 60 -y 2630
load inst matrix_out[1,0][6]_INST_0 OBUF hdi_primitives -attr @cell(#000000) OBUF -pg 1 -lvl 2 -x 300 -y 2700
load inst matrix_out[1,0][6]_INST_0_i_1 IBUF hdi_primitives -attr @cell(#000000) IBUF -pg 1 -lvl 1 -x 60 -y 2700
load inst matrix_out[1,0][7]_INST_0 OBUF hdi_primitives -attr @cell(#000000) OBUF -pg 1 -lvl 2 -x 300 -y 2770
load inst matrix_out[1,0][7]_INST_0_i_1 IBUF hdi_primitives -attr @cell(#000000) IBUF -pg 1 -lvl 1 -x 60 -y 2770
load inst matrix_out[1,1][0]_INST_0 OBUF hdi_primitives -attr @cell(#000000) OBUF -pg 1 -lvl 2 -x 300 -y 2840
load inst matrix_out[1,1][0]_INST_0_i_1 IBUF hdi_primitives -attr @cell(#000000) IBUF -pg 1 -lvl 1 -x 60 -y 2840
load inst matrix_out[1,1][1]_INST_0 OBUF hdi_primitives -attr @cell(#000000) OBUF -pg 1 -lvl 2 -x 300 -y 2910
load inst matrix_out[1,1][1]_INST_0_i_1 IBUF hdi_primitives -attr @cell(#000000) IBUF -pg 1 -lvl 1 -x 60 -y 2910
load inst matrix_out[1,1][2]_INST_0 OBUF hdi_primitives -attr @cell(#000000) OBUF -pg 1 -lvl 2 -x 300 -y 2980
load inst matrix_out[1,1][2]_INST_0_i_1 IBUF hdi_primitives -attr @cell(#000000) IBUF -pg 1 -lvl 1 -x 60 -y 2980
load inst matrix_out[1,1][3]_INST_0 OBUF hdi_primitives -attr @cell(#000000) OBUF -pg 1 -lvl 2 -x 300 -y 3050
load inst matrix_out[1,1][3]_INST_0_i_1 IBUF hdi_primitives -attr @cell(#000000) IBUF -pg 1 -lvl 1 -x 60 -y 3050
load inst matrix_out[1,1][4]_INST_0 OBUF hdi_primitives -attr @cell(#000000) OBUF -pg 1 -lvl 2 -x 300 -y 3120
load inst matrix_out[1,1][4]_INST_0_i_1 IBUF hdi_primitives -attr @cell(#000000) IBUF -pg 1 -lvl 1 -x 60 -y 3120
load inst matrix_out[1,1][5]_INST_0 OBUF hdi_primitives -attr @cell(#000000) OBUF -pg 1 -lvl 2 -x 300 -y 3190
load inst matrix_out[1,1][5]_INST_0_i_1 IBUF hdi_primitives -attr @cell(#000000) IBUF -pg 1 -lvl 1 -x 60 -y 3190
load inst matrix_out[1,1][6]_INST_0 OBUF hdi_primitives -attr @cell(#000000) OBUF -pg 1 -lvl 2 -x 300 -y 3260
load inst matrix_out[1,1][6]_INST_0_i_1 IBUF hdi_primitives -attr @cell(#000000) IBUF -pg 1 -lvl 1 -x 60 -y 3260
load inst matrix_out[1,1][7]_INST_0 OBUF hdi_primitives -attr @cell(#000000) OBUF -pg 1 -lvl 2 -x 300 -y 3330
load inst matrix_out[1,1][7]_INST_0_i_1 IBUF hdi_primitives -attr @cell(#000000) IBUF -pg 1 -lvl 1 -x 60 -y 3330
load inst matrix_out[1,2][0]_INST_0 OBUF hdi_primitives -attr @cell(#000000) OBUF -pg 1 -lvl 2 -x 300 -y 3400
load inst matrix_out[1,2][0]_INST_0_i_1 IBUF hdi_primitives -attr @cell(#000000) IBUF -pg 1 -lvl 1 -x 60 -y 3400
load inst matrix_out[1,2][1]_INST_0 OBUF hdi_primitives -attr @cell(#000000) OBUF -pg 1 -lvl 2 -x 300 -y 3470
load inst matrix_out[1,2][1]_INST_0_i_1 IBUF hdi_primitives -attr @cell(#000000) IBUF -pg 1 -lvl 1 -x 60 -y 3470
load inst matrix_out[1,2][2]_INST_0 OBUF hdi_primitives -attr @cell(#000000) OBUF -pg 1 -lvl 2 -x 300 -y 3540
load inst matrix_out[1,2][2]_INST_0_i_1 IBUF hdi_primitives -attr @cell(#000000) IBUF -pg 1 -lvl 1 -x 60 -y 3540
load inst matrix_out[1,2][3]_INST_0 OBUF hdi_primitives -attr @cell(#000000) OBUF -pg 1 -lvl 2 -x 300 -y 3610
load inst matrix_out[1,2][3]_INST_0_i_1 IBUF hdi_primitives -attr @cell(#000000) IBUF -pg 1 -lvl 1 -x 60 -y 3610
load inst matrix_out[1,2][4]_INST_0 OBUF hdi_primitives -attr @cell(#000000) OBUF -pg 1 -lvl 2 -x 300 -y 3680
load inst matrix_out[1,2][4]_INST_0_i_1 IBUF hdi_primitives -attr @cell(#000000) IBUF -pg 1 -lvl 1 -x 60 -y 3680
load inst matrix_out[1,2][5]_INST_0 OBUF hdi_primitives -attr @cell(#000000) OBUF -pg 1 -lvl 2 -x 300 -y 3750
load inst matrix_out[1,2][5]_INST_0_i_1 IBUF hdi_primitives -attr @cell(#000000) IBUF -pg 1 -lvl 1 -x 60 -y 3750
load inst matrix_out[1,2][6]_INST_0 OBUF hdi_primitives -attr @cell(#000000) OBUF -pg 1 -lvl 2 -x 300 -y 3820
load inst matrix_out[1,2][6]_INST_0_i_1 IBUF hdi_primitives -attr @cell(#000000) IBUF -pg 1 -lvl 1 -x 60 -y 3820
load inst matrix_out[1,2][7]_INST_0 OBUF hdi_primitives -attr @cell(#000000) OBUF -pg 1 -lvl 2 -x 300 -y 3890
load inst matrix_out[1,2][7]_INST_0_i_1 IBUF hdi_primitives -attr @cell(#000000) IBUF -pg 1 -lvl 1 -x 60 -y 3890
load inst matrix_out[1,3][0]_INST_0 OBUF hdi_primitives -attr @cell(#000000) OBUF -pg 1 -lvl 2 -x 300 -y 3960
load inst matrix_out[1,3][0]_INST_0_i_1 IBUF hdi_primitives -attr @cell(#000000) IBUF -pg 1 -lvl 1 -x 60 -y 3960
load inst matrix_out[1,3][1]_INST_0 OBUF hdi_primitives -attr @cell(#000000) OBUF -pg 1 -lvl 2 -x 300 -y 4030
load inst matrix_out[1,3][1]_INST_0_i_1 IBUF hdi_primitives -attr @cell(#000000) IBUF -pg 1 -lvl 1 -x 60 -y 4030
load inst matrix_out[1,3][2]_INST_0 OBUF hdi_primitives -attr @cell(#000000) OBUF -pg 1 -lvl 2 -x 300 -y 4100
load inst matrix_out[1,3][2]_INST_0_i_1 IBUF hdi_primitives -attr @cell(#000000) IBUF -pg 1 -lvl 1 -x 60 -y 4100
load inst matrix_out[1,3][3]_INST_0 OBUF hdi_primitives -attr @cell(#000000) OBUF -pg 1 -lvl 2 -x 300 -y 4170
load inst matrix_out[1,3][3]_INST_0_i_1 IBUF hdi_primitives -attr @cell(#000000) IBUF -pg 1 -lvl 1 -x 60 -y 4170
load inst matrix_out[1,3][4]_INST_0 OBUF hdi_primitives -attr @cell(#000000) OBUF -pg 1 -lvl 2 -x 300 -y 4240
load inst matrix_out[1,3][4]_INST_0_i_1 IBUF hdi_primitives -attr @cell(#000000) IBUF -pg 1 -lvl 1 -x 60 -y 4240
load inst matrix_out[1,3][5]_INST_0 OBUF hdi_primitives -attr @cell(#000000) OBUF -pg 1 -lvl 2 -x 300 -y 4310
load inst matrix_out[1,3][5]_INST_0_i_1 IBUF hdi_primitives -attr @cell(#000000) IBUF -pg 1 -lvl 1 -x 60 -y 4310
load inst matrix_out[1,3][6]_INST_0 OBUF hdi_primitives -attr @cell(#000000) OBUF -pg 1 -lvl 2 -x 300 -y 4380
load inst matrix_out[1,3][6]_INST_0_i_1 IBUF hdi_primitives -attr @cell(#000000) IBUF -pg 1 -lvl 1 -x 60 -y 4380
load inst matrix_out[1,3][7]_INST_0 OBUF hdi_primitives -attr @cell(#000000) OBUF -pg 1 -lvl 2 -x 300 -y 4450
load inst matrix_out[1,3][7]_INST_0_i_1 IBUF hdi_primitives -attr @cell(#000000) IBUF -pg 1 -lvl 1 -x 60 -y 4450
load inst matrix_out[2,0][0]_INST_0 OBUF hdi_primitives -attr @cell(#000000) OBUF -pg 1 -lvl 2 -x 300 -y 4520
load inst matrix_out[2,0][0]_INST_0_i_1 IBUF hdi_primitives -attr @cell(#000000) IBUF -pg 1 -lvl 1 -x 60 -y 4520
load inst matrix_out[2,0][1]_INST_0 OBUF hdi_primitives -attr @cell(#000000) OBUF -pg 1 -lvl 2 -x 300 -y 4590
load inst matrix_out[2,0][1]_INST_0_i_1 IBUF hdi_primitives -attr @cell(#000000) IBUF -pg 1 -lvl 1 -x 60 -y 4590
load inst matrix_out[2,0][2]_INST_0 OBUF hdi_primitives -attr @cell(#000000) OBUF -pg 1 -lvl 2 -x 300 -y 4660
load inst matrix_out[2,0][2]_INST_0_i_1 IBUF hdi_primitives -attr @cell(#000000) IBUF -pg 1 -lvl 1 -x 60 -y 4660
load inst matrix_out[2,0][3]_INST_0 OBUF hdi_primitives -attr @cell(#000000) OBUF -pg 1 -lvl 2 -x 300 -y 4730
load inst matrix_out[2,0][3]_INST_0_i_1 IBUF hdi_primitives -attr @cell(#000000) IBUF -pg 1 -lvl 1 -x 60 -y 4730
load inst matrix_out[2,0][4]_INST_0 OBUF hdi_primitives -attr @cell(#000000) OBUF -pg 1 -lvl 2 -x 300 -y 4800
load inst matrix_out[2,0][4]_INST_0_i_1 IBUF hdi_primitives -attr @cell(#000000) IBUF -pg 1 -lvl 1 -x 60 -y 4800
load inst matrix_out[2,0][5]_INST_0 OBUF hdi_primitives -attr @cell(#000000) OBUF -pg 1 -lvl 2 -x 300 -y 4870
load inst matrix_out[2,0][5]_INST_0_i_1 IBUF hdi_primitives -attr @cell(#000000) IBUF -pg 1 -lvl 1 -x 60 -y 4870
load inst matrix_out[2,0][6]_INST_0 OBUF hdi_primitives -attr @cell(#000000) OBUF -pg 1 -lvl 2 -x 300 -y 4940
load inst matrix_out[2,0][6]_INST_0_i_1 IBUF hdi_primitives -attr @cell(#000000) IBUF -pg 1 -lvl 1 -x 60 -y 4940
load inst matrix_out[2,0][7]_INST_0 OBUF hdi_primitives -attr @cell(#000000) OBUF -pg 1 -lvl 2 -x 300 -y 5010
load inst matrix_out[2,0][7]_INST_0_i_1 IBUF hdi_primitives -attr @cell(#000000) IBUF -pg 1 -lvl 1 -x 60 -y 5010
load inst matrix_out[2,1][0]_INST_0 OBUF hdi_primitives -attr @cell(#000000) OBUF -pg 1 -lvl 2 -x 300 -y 5080
load inst matrix_out[2,1][0]_INST_0_i_1 IBUF hdi_primitives -attr @cell(#000000) IBUF -pg 1 -lvl 1 -x 60 -y 5080
load inst matrix_out[2,1][1]_INST_0 OBUF hdi_primitives -attr @cell(#000000) OBUF -pg 1 -lvl 2 -x 300 -y 5150
load inst matrix_out[2,1][1]_INST_0_i_1 IBUF hdi_primitives -attr @cell(#000000) IBUF -pg 1 -lvl 1 -x 60 -y 5150
load inst matrix_out[2,1][2]_INST_0 OBUF hdi_primitives -attr @cell(#000000) OBUF -pg 1 -lvl 2 -x 300 -y 5220
load inst matrix_out[2,1][2]_INST_0_i_1 IBUF hdi_primitives -attr @cell(#000000) IBUF -pg 1 -lvl 1 -x 60 -y 5220
load inst matrix_out[2,1][3]_INST_0 OBUF hdi_primitives -attr @cell(#000000) OBUF -pg 1 -lvl 2 -x 300 -y 5290
load inst matrix_out[2,1][3]_INST_0_i_1 IBUF hdi_primitives -attr @cell(#000000) IBUF -pg 1 -lvl 1 -x 60 -y 5290
load inst matrix_out[2,1][4]_INST_0 OBUF hdi_primitives -attr @cell(#000000) OBUF -pg 1 -lvl 2 -x 300 -y 5360
load inst matrix_out[2,1][4]_INST_0_i_1 IBUF hdi_primitives -attr @cell(#000000) IBUF -pg 1 -lvl 1 -x 60 -y 5360
load inst matrix_out[2,1][5]_INST_0 OBUF hdi_primitives -attr @cell(#000000) OBUF -pg 1 -lvl 2 -x 300 -y 5430
load inst matrix_out[2,1][5]_INST_0_i_1 IBUF hdi_primitives -attr @cell(#000000) IBUF -pg 1 -lvl 1 -x 60 -y 5430
load inst matrix_out[2,1][6]_INST_0 OBUF hdi_primitives -attr @cell(#000000) OBUF -pg 1 -lvl 2 -x 300 -y 5500
load inst matrix_out[2,1][6]_INST_0_i_1 IBUF hdi_primitives -attr @cell(#000000) IBUF -pg 1 -lvl 1 -x 60 -y 5500
load inst matrix_out[2,1][7]_INST_0 OBUF hdi_primitives -attr @cell(#000000) OBUF -pg 1 -lvl 2 -x 300 -y 5570
load inst matrix_out[2,1][7]_INST_0_i_1 IBUF hdi_primitives -attr @cell(#000000) IBUF -pg 1 -lvl 1 -x 60 -y 5570
load inst matrix_out[2,2][0]_INST_0 OBUF hdi_primitives -attr @cell(#000000) OBUF -pg 1 -lvl 2 -x 300 -y 5640
load inst matrix_out[2,2][0]_INST_0_i_1 IBUF hdi_primitives -attr @cell(#000000) IBUF -pg 1 -lvl 1 -x 60 -y 5640
load inst matrix_out[2,2][1]_INST_0 OBUF hdi_primitives -attr @cell(#000000) OBUF -pg 1 -lvl 2 -x 300 -y 5710
load inst matrix_out[2,2][1]_INST_0_i_1 IBUF hdi_primitives -attr @cell(#000000) IBUF -pg 1 -lvl 1 -x 60 -y 5710
load inst matrix_out[2,2][2]_INST_0 OBUF hdi_primitives -attr @cell(#000000) OBUF -pg 1 -lvl 2 -x 300 -y 5780
load inst matrix_out[2,2][2]_INST_0_i_1 IBUF hdi_primitives -attr @cell(#000000) IBUF -pg 1 -lvl 1 -x 60 -y 5780
load inst matrix_out[2,2][3]_INST_0 OBUF hdi_primitives -attr @cell(#000000) OBUF -pg 1 -lvl 2 -x 300 -y 5850
load inst matrix_out[2,2][3]_INST_0_i_1 IBUF hdi_primitives -attr @cell(#000000) IBUF -pg 1 -lvl 1 -x 60 -y 5850
load inst matrix_out[2,2][4]_INST_0 OBUF hdi_primitives -attr @cell(#000000) OBUF -pg 1 -lvl 2 -x 300 -y 5920
load inst matrix_out[2,2][4]_INST_0_i_1 IBUF hdi_primitives -attr @cell(#000000) IBUF -pg 1 -lvl 1 -x 60 -y 5920
load inst matrix_out[2,2][5]_INST_0 OBUF hdi_primitives -attr @cell(#000000) OBUF -pg 1 -lvl 2 -x 300 -y 5990
load inst matrix_out[2,2][5]_INST_0_i_1 IBUF hdi_primitives -attr @cell(#000000) IBUF -pg 1 -lvl 1 -x 60 -y 5990
load inst matrix_out[2,2][6]_INST_0 OBUF hdi_primitives -attr @cell(#000000) OBUF -pg 1 -lvl 2 -x 300 -y 6060
load inst matrix_out[2,2][6]_INST_0_i_1 IBUF hdi_primitives -attr @cell(#000000) IBUF -pg 1 -lvl 1 -x 60 -y 6060
load inst matrix_out[2,2][7]_INST_0 OBUF hdi_primitives -attr @cell(#000000) OBUF -pg 1 -lvl 2 -x 300 -y 6130
load inst matrix_out[2,2][7]_INST_0_i_1 IBUF hdi_primitives -attr @cell(#000000) IBUF -pg 1 -lvl 1 -x 60 -y 6130
load inst matrix_out[2,3][0]_INST_0 OBUF hdi_primitives -attr @cell(#000000) OBUF -pg 1 -lvl 2 -x 300 -y 6200
load inst matrix_out[2,3][0]_INST_0_i_1 IBUF hdi_primitives -attr @cell(#000000) IBUF -pg 1 -lvl 1 -x 60 -y 6200
load inst matrix_out[2,3][1]_INST_0 OBUF hdi_primitives -attr @cell(#000000) OBUF -pg 1 -lvl 2 -x 300 -y 6270
load inst matrix_out[2,3][1]_INST_0_i_1 IBUF hdi_primitives -attr @cell(#000000) IBUF -pg 1 -lvl 1 -x 60 -y 6270
load inst matrix_out[2,3][2]_INST_0 OBUF hdi_primitives -attr @cell(#000000) OBUF -pg 1 -lvl 2 -x 300 -y 6340
load inst matrix_out[2,3][2]_INST_0_i_1 IBUF hdi_primitives -attr @cell(#000000) IBUF -pg 1 -lvl 1 -x 60 -y 6340
load inst matrix_out[2,3][3]_INST_0 OBUF hdi_primitives -attr @cell(#000000) OBUF -pg 1 -lvl 2 -x 300 -y 6410
load inst matrix_out[2,3][3]_INST_0_i_1 IBUF hdi_primitives -attr @cell(#000000) IBUF -pg 1 -lvl 1 -x 60 -y 6410
load inst matrix_out[2,3][4]_INST_0 OBUF hdi_primitives -attr @cell(#000000) OBUF -pg 1 -lvl 2 -x 300 -y 6480
load inst matrix_out[2,3][4]_INST_0_i_1 IBUF hdi_primitives -attr @cell(#000000) IBUF -pg 1 -lvl 1 -x 60 -y 6480
load inst matrix_out[2,3][5]_INST_0 OBUF hdi_primitives -attr @cell(#000000) OBUF -pg 1 -lvl 2 -x 300 -y 6550
load inst matrix_out[2,3][5]_INST_0_i_1 IBUF hdi_primitives -attr @cell(#000000) IBUF -pg 1 -lvl 1 -x 60 -y 6550
load inst matrix_out[2,3][6]_INST_0 OBUF hdi_primitives -attr @cell(#000000) OBUF -pg 1 -lvl 2 -x 300 -y 6620
load inst matrix_out[2,3][6]_INST_0_i_1 IBUF hdi_primitives -attr @cell(#000000) IBUF -pg 1 -lvl 1 -x 60 -y 6620
load inst matrix_out[2,3][7]_INST_0 OBUF hdi_primitives -attr @cell(#000000) OBUF -pg 1 -lvl 2 -x 300 -y 6690
load inst matrix_out[2,3][7]_INST_0_i_1 IBUF hdi_primitives -attr @cell(#000000) IBUF -pg 1 -lvl 1 -x 60 -y 6690
load inst matrix_out[3,0][0]_INST_0 OBUF hdi_primitives -attr @cell(#000000) OBUF -pg 1 -lvl 2 -x 300 -y 6760
load inst matrix_out[3,0][0]_INST_0_i_1 IBUF hdi_primitives -attr @cell(#000000) IBUF -pg 1 -lvl 1 -x 60 -y 6760
load inst matrix_out[3,0][1]_INST_0 OBUF hdi_primitives -attr @cell(#000000) OBUF -pg 1 -lvl 2 -x 300 -y 6830
load inst matrix_out[3,0][1]_INST_0_i_1 IBUF hdi_primitives -attr @cell(#000000) IBUF -pg 1 -lvl 1 -x 60 -y 6830
load inst matrix_out[3,0][2]_INST_0 OBUF hdi_primitives -attr @cell(#000000) OBUF -pg 1 -lvl 2 -x 300 -y 6900
load inst matrix_out[3,0][2]_INST_0_i_1 IBUF hdi_primitives -attr @cell(#000000) IBUF -pg 1 -lvl 1 -x 60 -y 6900
load inst matrix_out[3,0][3]_INST_0 OBUF hdi_primitives -attr @cell(#000000) OBUF -pg 1 -lvl 2 -x 300 -y 6970
load inst matrix_out[3,0][3]_INST_0_i_1 IBUF hdi_primitives -attr @cell(#000000) IBUF -pg 1 -lvl 1 -x 60 -y 6970
load inst matrix_out[3,0][4]_INST_0 OBUF hdi_primitives -attr @cell(#000000) OBUF -pg 1 -lvl 2 -x 300 -y 7040
load inst matrix_out[3,0][4]_INST_0_i_1 IBUF hdi_primitives -attr @cell(#000000) IBUF -pg 1 -lvl 1 -x 60 -y 7040
load inst matrix_out[3,0][5]_INST_0 OBUF hdi_primitives -attr @cell(#000000) OBUF -pg 1 -lvl 2 -x 300 -y 7110
load inst matrix_out[3,0][5]_INST_0_i_1 IBUF hdi_primitives -attr @cell(#000000) IBUF -pg 1 -lvl 1 -x 60 -y 7110
load inst matrix_out[3,0][6]_INST_0 OBUF hdi_primitives -attr @cell(#000000) OBUF -pg 1 -lvl 2 -x 300 -y 7180
load inst matrix_out[3,0][6]_INST_0_i_1 IBUF hdi_primitives -attr @cell(#000000) IBUF -pg 1 -lvl 1 -x 60 -y 7180
load inst matrix_out[3,0][7]_INST_0 OBUF hdi_primitives -attr @cell(#000000) OBUF -pg 1 -lvl 2 -x 300 -y 7250
load inst matrix_out[3,0][7]_INST_0_i_1 IBUF hdi_primitives -attr @cell(#000000) IBUF -pg 1 -lvl 1 -x 60 -y 7250
load inst matrix_out[3,1][0]_INST_0 OBUF hdi_primitives -attr @cell(#000000) OBUF -pg 1 -lvl 2 -x 300 -y 7320
load inst matrix_out[3,1][0]_INST_0_i_1 IBUF hdi_primitives -attr @cell(#000000) IBUF -pg 1 -lvl 1 -x 60 -y 7320
load inst matrix_out[3,1][1]_INST_0 OBUF hdi_primitives -attr @cell(#000000) OBUF -pg 1 -lvl 2 -x 300 -y 7390
load inst matrix_out[3,1][1]_INST_0_i_1 IBUF hdi_primitives -attr @cell(#000000) IBUF -pg 1 -lvl 1 -x 60 -y 7390
load inst matrix_out[3,1][2]_INST_0 OBUF hdi_primitives -attr @cell(#000000) OBUF -pg 1 -lvl 2 -x 300 -y 7460
load inst matrix_out[3,1][2]_INST_0_i_1 IBUF hdi_primitives -attr @cell(#000000) IBUF -pg 1 -lvl 1 -x 60 -y 7460
load inst matrix_out[3,1][3]_INST_0 OBUF hdi_primitives -attr @cell(#000000) OBUF -pg 1 -lvl 2 -x 300 -y 7530
load inst matrix_out[3,1][3]_INST_0_i_1 IBUF hdi_primitives -attr @cell(#000000) IBUF -pg 1 -lvl 1 -x 60 -y 7530
load inst matrix_out[3,1][4]_INST_0 OBUF hdi_primitives -attr @cell(#000000) OBUF -pg 1 -lvl 2 -x 300 -y 7600
load inst matrix_out[3,1][4]_INST_0_i_1 IBUF hdi_primitives -attr @cell(#000000) IBUF -pg 1 -lvl 1 -x 60 -y 7600
load inst matrix_out[3,1][5]_INST_0 OBUF hdi_primitives -attr @cell(#000000) OBUF -pg 1 -lvl 2 -x 300 -y 7670
load inst matrix_out[3,1][5]_INST_0_i_1 IBUF hdi_primitives -attr @cell(#000000) IBUF -pg 1 -lvl 1 -x 60 -y 7670
load inst matrix_out[3,1][6]_INST_0 OBUF hdi_primitives -attr @cell(#000000) OBUF -pg 1 -lvl 2 -x 300 -y 7740
load inst matrix_out[3,1][6]_INST_0_i_1 IBUF hdi_primitives -attr @cell(#000000) IBUF -pg 1 -lvl 1 -x 60 -y 7740
load inst matrix_out[3,1][7]_INST_0 OBUF hdi_primitives -attr @cell(#000000) OBUF -pg 1 -lvl 2 -x 300 -y 7810
load inst matrix_out[3,1][7]_INST_0_i_1 IBUF hdi_primitives -attr @cell(#000000) IBUF -pg 1 -lvl 1 -x 60 -y 7810
load inst matrix_out[3,2][0]_INST_0 OBUF hdi_primitives -attr @cell(#000000) OBUF -pg 1 -lvl 2 -x 300 -y 7880
load inst matrix_out[3,2][0]_INST_0_i_1 IBUF hdi_primitives -attr @cell(#000000) IBUF -pg 1 -lvl 1 -x 60 -y 7880
load inst matrix_out[3,2][1]_INST_0 OBUF hdi_primitives -attr @cell(#000000) OBUF -pg 1 -lvl 2 -x 300 -y 7950
load inst matrix_out[3,2][1]_INST_0_i_1 IBUF hdi_primitives -attr @cell(#000000) IBUF -pg 1 -lvl 1 -x 60 -y 7950
load inst matrix_out[3,2][2]_INST_0 OBUF hdi_primitives -attr @cell(#000000) OBUF -pg 1 -lvl 2 -x 300 -y 8020
load inst matrix_out[3,2][2]_INST_0_i_1 IBUF hdi_primitives -attr @cell(#000000) IBUF -pg 1 -lvl 1 -x 60 -y 8020
load inst matrix_out[3,2][3]_INST_0 OBUF hdi_primitives -attr @cell(#000000) OBUF -pg 1 -lvl 2 -x 300 -y 8090
load inst matrix_out[3,2][3]_INST_0_i_1 IBUF hdi_primitives -attr @cell(#000000) IBUF -pg 1 -lvl 1 -x 60 -y 8090
load inst matrix_out[3,2][4]_INST_0 OBUF hdi_primitives -attr @cell(#000000) OBUF -pg 1 -lvl 2 -x 300 -y 8160
load inst matrix_out[3,2][4]_INST_0_i_1 IBUF hdi_primitives -attr @cell(#000000) IBUF -pg 1 -lvl 1 -x 60 -y 8160
load inst matrix_out[3,2][5]_INST_0 OBUF hdi_primitives -attr @cell(#000000) OBUF -pg 1 -lvl 2 -x 300 -y 8230
load inst matrix_out[3,2][5]_INST_0_i_1 IBUF hdi_primitives -attr @cell(#000000) IBUF -pg 1 -lvl 1 -x 60 -y 8230
load inst matrix_out[3,2][6]_INST_0 OBUF hdi_primitives -attr @cell(#000000) OBUF -pg 1 -lvl 2 -x 300 -y 8300
load inst matrix_out[3,2][6]_INST_0_i_1 IBUF hdi_primitives -attr @cell(#000000) IBUF -pg 1 -lvl 1 -x 60 -y 8300
load inst matrix_out[3,2][7]_INST_0 OBUF hdi_primitives -attr @cell(#000000) OBUF -pg 1 -lvl 2 -x 300 -y 8370
load inst matrix_out[3,2][7]_INST_0_i_1 IBUF hdi_primitives -attr @cell(#000000) IBUF -pg 1 -lvl 1 -x 60 -y 8370
load inst matrix_out[3,3][0]_INST_0 OBUF hdi_primitives -attr @cell(#000000) OBUF -pg 1 -lvl 2 -x 300 -y 8440
load inst matrix_out[3,3][0]_INST_0_i_1 IBUF hdi_primitives -attr @cell(#000000) IBUF -pg 1 -lvl 1 -x 60 -y 8440
load inst matrix_out[3,3][1]_INST_0 OBUF hdi_primitives -attr @cell(#000000) OBUF -pg 1 -lvl 2 -x 300 -y 8510
load inst matrix_out[3,3][1]_INST_0_i_1 IBUF hdi_primitives -attr @cell(#000000) IBUF -pg 1 -lvl 1 -x 60 -y 8510
load inst matrix_out[3,3][2]_INST_0 OBUF hdi_primitives -attr @cell(#000000) OBUF -pg 1 -lvl 2 -x 300 -y 8580
load inst matrix_out[3,3][2]_INST_0_i_1 IBUF hdi_primitives -attr @cell(#000000) IBUF -pg 1 -lvl 1 -x 60 -y 8580
load inst matrix_out[3,3][3]_INST_0 OBUF hdi_primitives -attr @cell(#000000) OBUF -pg 1 -lvl 2 -x 300 -y 8650
load inst matrix_out[3,3][3]_INST_0_i_1 IBUF hdi_primitives -attr @cell(#000000) IBUF -pg 1 -lvl 1 -x 60 -y 8650
load inst matrix_out[3,3][4]_INST_0 OBUF hdi_primitives -attr @cell(#000000) OBUF -pg 1 -lvl 2 -x 300 -y 8720
load inst matrix_out[3,3][4]_INST_0_i_1 IBUF hdi_primitives -attr @cell(#000000) IBUF -pg 1 -lvl 1 -x 60 -y 8720
load inst matrix_out[3,3][5]_INST_0 OBUF hdi_primitives -attr @cell(#000000) OBUF -pg 1 -lvl 2 -x 300 -y 8790
load inst matrix_out[3,3][5]_INST_0_i_1 IBUF hdi_primitives -attr @cell(#000000) IBUF -pg 1 -lvl 1 -x 60 -y 8790
load inst matrix_out[3,3][6]_INST_0 OBUF hdi_primitives -attr @cell(#000000) OBUF -pg 1 -lvl 2 -x 300 -y 8860
load inst matrix_out[3,3][6]_INST_0_i_1 IBUF hdi_primitives -attr @cell(#000000) IBUF -pg 1 -lvl 1 -x 60 -y 8860
load inst matrix_out[3,3][7]_INST_0 OBUF hdi_primitives -attr @cell(#000000) OBUF -pg 1 -lvl 2 -x 300 -y 8930
load inst matrix_out[3,3][7]_INST_0_i_1 IBUF hdi_primitives -attr @cell(#000000) IBUF -pg 1 -lvl 1 -x 60 -y 8930
load net matrix_in[0,0][0] -attr @rip(#000000) matrix_in[0,0][0] -port matrix_in[0,0][0] -pin matrix_out[0,0][0]_INST_0_i_1 I
load net matrix_in[0,0][1] -attr @rip(#000000) matrix_in[0,0][1] -port matrix_in[0,0][1] -pin matrix_out[0,0][1]_INST_0_i_1 I
load net matrix_in[0,0][2] -attr @rip(#000000) matrix_in[0,0][2] -port matrix_in[0,0][2] -pin matrix_out[0,0][2]_INST_0_i_1 I
load net matrix_in[0,0][3] -attr @rip(#000000) matrix_in[0,0][3] -port matrix_in[0,0][3] -pin matrix_out[0,0][3]_INST_0_i_1 I
load net matrix_in[0,0][4] -attr @rip(#000000) matrix_in[0,0][4] -port matrix_in[0,0][4] -pin matrix_out[0,0][4]_INST_0_i_1 I
load net matrix_in[0,0][5] -attr @rip(#000000) matrix_in[0,0][5] -port matrix_in[0,0][5] -pin matrix_out[0,0][5]_INST_0_i_1 I
load net matrix_in[0,0][6] -attr @rip(#000000) matrix_in[0,0][6] -port matrix_in[0,0][6] -pin matrix_out[0,0][6]_INST_0_i_1 I
load net matrix_in[0,0][7] -attr @rip(#000000) matrix_in[0,0][7] -port matrix_in[0,0][7] -pin matrix_out[0,0][7]_INST_0_i_1 I
load net matrix_in[0,1][0] -attr @rip(#000000) matrix_in[0,1][0] -port matrix_in[0,1][0] -pin matrix_out[0,1][0]_INST_0_i_1 I
load net matrix_in[0,1][1] -attr @rip(#000000) matrix_in[0,1][1] -port matrix_in[0,1][1] -pin matrix_out[0,1][1]_INST_0_i_1 I
load net matrix_in[0,1][2] -attr @rip(#000000) matrix_in[0,1][2] -port matrix_in[0,1][2] -pin matrix_out[0,1][2]_INST_0_i_1 I
load net matrix_in[0,1][3] -attr @rip(#000000) matrix_in[0,1][3] -port matrix_in[0,1][3] -pin matrix_out[0,1][3]_INST_0_i_1 I
load net matrix_in[0,1][4] -attr @rip(#000000) matrix_in[0,1][4] -port matrix_in[0,1][4] -pin matrix_out[0,1][4]_INST_0_i_1 I
load net matrix_in[0,1][5] -attr @rip(#000000) matrix_in[0,1][5] -port matrix_in[0,1][5] -pin matrix_out[0,1][5]_INST_0_i_1 I
load net matrix_in[0,1][6] -attr @rip(#000000) matrix_in[0,1][6] -port matrix_in[0,1][6] -pin matrix_out[0,1][6]_INST_0_i_1 I
load net matrix_in[0,1][7] -attr @rip(#000000) matrix_in[0,1][7] -port matrix_in[0,1][7] -pin matrix_out[0,1][7]_INST_0_i_1 I
load net matrix_in[0,2][0] -attr @rip(#000000) matrix_in[0,2][0] -port matrix_in[0,2][0] -pin matrix_out[0,2][0]_INST_0_i_1 I
load net matrix_in[0,2][1] -attr @rip(#000000) matrix_in[0,2][1] -port matrix_in[0,2][1] -pin matrix_out[0,2][1]_INST_0_i_1 I
load net matrix_in[0,2][2] -attr @rip(#000000) matrix_in[0,2][2] -port matrix_in[0,2][2] -pin matrix_out[0,2][2]_INST_0_i_1 I
load net matrix_in[0,2][3] -attr @rip(#000000) matrix_in[0,2][3] -port matrix_in[0,2][3] -pin matrix_out[0,2][3]_INST_0_i_1 I
load net matrix_in[0,2][4] -attr @rip(#000000) matrix_in[0,2][4] -port matrix_in[0,2][4] -pin matrix_out[0,2][4]_INST_0_i_1 I
load net matrix_in[0,2][5] -attr @rip(#000000) matrix_in[0,2][5] -port matrix_in[0,2][5] -pin matrix_out[0,2][5]_INST_0_i_1 I
load net matrix_in[0,2][6] -attr @rip(#000000) matrix_in[0,2][6] -port matrix_in[0,2][6] -pin matrix_out[0,2][6]_INST_0_i_1 I
load net matrix_in[0,2][7] -attr @rip(#000000) matrix_in[0,2][7] -port matrix_in[0,2][7] -pin matrix_out[0,2][7]_INST_0_i_1 I
load net matrix_in[0,3][0] -attr @rip(#000000) matrix_in[0,3][0] -port matrix_in[0,3][0] -pin matrix_out[0,3][0]_INST_0_i_1 I
load net matrix_in[0,3][1] -attr @rip(#000000) matrix_in[0,3][1] -port matrix_in[0,3][1] -pin matrix_out[0,3][1]_INST_0_i_1 I
load net matrix_in[0,3][2] -attr @rip(#000000) matrix_in[0,3][2] -port matrix_in[0,3][2] -pin matrix_out[0,3][2]_INST_0_i_1 I
load net matrix_in[0,3][3] -attr @rip(#000000) matrix_in[0,3][3] -port matrix_in[0,3][3] -pin matrix_out[0,3][3]_INST_0_i_1 I
load net matrix_in[0,3][4] -attr @rip(#000000) matrix_in[0,3][4] -port matrix_in[0,3][4] -pin matrix_out[0,3][4]_INST_0_i_1 I
load net matrix_in[0,3][5] -attr @rip(#000000) matrix_in[0,3][5] -port matrix_in[0,3][5] -pin matrix_out[0,3][5]_INST_0_i_1 I
load net matrix_in[0,3][6] -attr @rip(#000000) matrix_in[0,3][6] -port matrix_in[0,3][6] -pin matrix_out[0,3][6]_INST_0_i_1 I
load net matrix_in[0,3][7] -attr @rip(#000000) matrix_in[0,3][7] -port matrix_in[0,3][7] -pin matrix_out[0,3][7]_INST_0_i_1 I
load net matrix_in[1,0][0] -attr @rip(#000000) matrix_in[1,0][0] -port matrix_in[1,0][0] -pin matrix_out[1,3][0]_INST_0_i_1 I
load net matrix_in[1,0][1] -attr @rip(#000000) matrix_in[1,0][1] -port matrix_in[1,0][1] -pin matrix_out[1,3][1]_INST_0_i_1 I
load net matrix_in[1,0][2] -attr @rip(#000000) matrix_in[1,0][2] -port matrix_in[1,0][2] -pin matrix_out[1,3][2]_INST_0_i_1 I
load net matrix_in[1,0][3] -attr @rip(#000000) matrix_in[1,0][3] -port matrix_in[1,0][3] -pin matrix_out[1,3][3]_INST_0_i_1 I
load net matrix_in[1,0][4] -attr @rip(#000000) matrix_in[1,0][4] -port matrix_in[1,0][4] -pin matrix_out[1,3][4]_INST_0_i_1 I
load net matrix_in[1,0][5] -attr @rip(#000000) matrix_in[1,0][5] -port matrix_in[1,0][5] -pin matrix_out[1,3][5]_INST_0_i_1 I
load net matrix_in[1,0][6] -attr @rip(#000000) matrix_in[1,0][6] -port matrix_in[1,0][6] -pin matrix_out[1,3][6]_INST_0_i_1 I
load net matrix_in[1,0][7] -attr @rip(#000000) matrix_in[1,0][7] -port matrix_in[1,0][7] -pin matrix_out[1,3][7]_INST_0_i_1 I
load net matrix_in[1,1][0] -attr @rip(#000000) matrix_in[1,1][0] -port matrix_in[1,1][0] -pin matrix_out[1,0][0]_INST_0_i_1 I
load net matrix_in[1,1][1] -attr @rip(#000000) matrix_in[1,1][1] -port matrix_in[1,1][1] -pin matrix_out[1,0][1]_INST_0_i_1 I
load net matrix_in[1,1][2] -attr @rip(#000000) matrix_in[1,1][2] -port matrix_in[1,1][2] -pin matrix_out[1,0][2]_INST_0_i_1 I
load net matrix_in[1,1][3] -attr @rip(#000000) matrix_in[1,1][3] -port matrix_in[1,1][3] -pin matrix_out[1,0][3]_INST_0_i_1 I
load net matrix_in[1,1][4] -attr @rip(#000000) matrix_in[1,1][4] -port matrix_in[1,1][4] -pin matrix_out[1,0][4]_INST_0_i_1 I
load net matrix_in[1,1][5] -attr @rip(#000000) matrix_in[1,1][5] -port matrix_in[1,1][5] -pin matrix_out[1,0][5]_INST_0_i_1 I
load net matrix_in[1,1][6] -attr @rip(#000000) matrix_in[1,1][6] -port matrix_in[1,1][6] -pin matrix_out[1,0][6]_INST_0_i_1 I
load net matrix_in[1,1][7] -attr @rip(#000000) matrix_in[1,1][7] -port matrix_in[1,1][7] -pin matrix_out[1,0][7]_INST_0_i_1 I
load net matrix_in[1,2][0] -attr @rip(#000000) matrix_in[1,2][0] -port matrix_in[1,2][0] -pin matrix_out[1,1][0]_INST_0_i_1 I
load net matrix_in[1,2][1] -attr @rip(#000000) matrix_in[1,2][1] -port matrix_in[1,2][1] -pin matrix_out[1,1][1]_INST_0_i_1 I
load net matrix_in[1,2][2] -attr @rip(#000000) matrix_in[1,2][2] -port matrix_in[1,2][2] -pin matrix_out[1,1][2]_INST_0_i_1 I
load net matrix_in[1,2][3] -attr @rip(#000000) matrix_in[1,2][3] -port matrix_in[1,2][3] -pin matrix_out[1,1][3]_INST_0_i_1 I
load net matrix_in[1,2][4] -attr @rip(#000000) matrix_in[1,2][4] -port matrix_in[1,2][4] -pin matrix_out[1,1][4]_INST_0_i_1 I
load net matrix_in[1,2][5] -attr @rip(#000000) matrix_in[1,2][5] -port matrix_in[1,2][5] -pin matrix_out[1,1][5]_INST_0_i_1 I
load net matrix_in[1,2][6] -attr @rip(#000000) matrix_in[1,2][6] -port matrix_in[1,2][6] -pin matrix_out[1,1][6]_INST_0_i_1 I
load net matrix_in[1,2][7] -attr @rip(#000000) matrix_in[1,2][7] -port matrix_in[1,2][7] -pin matrix_out[1,1][7]_INST_0_i_1 I
load net matrix_in[1,3][0] -attr @rip(#000000) matrix_in[1,3][0] -port matrix_in[1,3][0] -pin matrix_out[1,2][0]_INST_0_i_1 I
load net matrix_in[1,3][1] -attr @rip(#000000) matrix_in[1,3][1] -port matrix_in[1,3][1] -pin matrix_out[1,2][1]_INST_0_i_1 I
load net matrix_in[1,3][2] -attr @rip(#000000) matrix_in[1,3][2] -port matrix_in[1,3][2] -pin matrix_out[1,2][2]_INST_0_i_1 I
load net matrix_in[1,3][3] -attr @rip(#000000) matrix_in[1,3][3] -port matrix_in[1,3][3] -pin matrix_out[1,2][3]_INST_0_i_1 I
load net matrix_in[1,3][4] -attr @rip(#000000) matrix_in[1,3][4] -port matrix_in[1,3][4] -pin matrix_out[1,2][4]_INST_0_i_1 I
load net matrix_in[1,3][5] -attr @rip(#000000) matrix_in[1,3][5] -port matrix_in[1,3][5] -pin matrix_out[1,2][5]_INST_0_i_1 I
load net matrix_in[1,3][6] -attr @rip(#000000) matrix_in[1,3][6] -port matrix_in[1,3][6] -pin matrix_out[1,2][6]_INST_0_i_1 I
load net matrix_in[1,3][7] -attr @rip(#000000) matrix_in[1,3][7] -port matrix_in[1,3][7] -pin matrix_out[1,2][7]_INST_0_i_1 I
load net matrix_in[2,0][0] -attr @rip(#000000) matrix_in[2,0][0] -port matrix_in[2,0][0] -pin matrix_out[2,2][0]_INST_0_i_1 I
load net matrix_in[2,0][1] -attr @rip(#000000) matrix_in[2,0][1] -port matrix_in[2,0][1] -pin matrix_out[2,2][1]_INST_0_i_1 I
load net matrix_in[2,0][2] -attr @rip(#000000) matrix_in[2,0][2] -port matrix_in[2,0][2] -pin matrix_out[2,2][2]_INST_0_i_1 I
load net matrix_in[2,0][3] -attr @rip(#000000) matrix_in[2,0][3] -port matrix_in[2,0][3] -pin matrix_out[2,2][3]_INST_0_i_1 I
load net matrix_in[2,0][4] -attr @rip(#000000) matrix_in[2,0][4] -port matrix_in[2,0][4] -pin matrix_out[2,2][4]_INST_0_i_1 I
load net matrix_in[2,0][5] -attr @rip(#000000) matrix_in[2,0][5] -port matrix_in[2,0][5] -pin matrix_out[2,2][5]_INST_0_i_1 I
load net matrix_in[2,0][6] -attr @rip(#000000) matrix_in[2,0][6] -port matrix_in[2,0][6] -pin matrix_out[2,2][6]_INST_0_i_1 I
load net matrix_in[2,0][7] -attr @rip(#000000) matrix_in[2,0][7] -port matrix_in[2,0][7] -pin matrix_out[2,2][7]_INST_0_i_1 I
load net matrix_in[2,1][0] -attr @rip(#000000) matrix_in[2,1][0] -port matrix_in[2,1][0] -pin matrix_out[2,3][0]_INST_0_i_1 I
load net matrix_in[2,1][1] -attr @rip(#000000) matrix_in[2,1][1] -port matrix_in[2,1][1] -pin matrix_out[2,3][1]_INST_0_i_1 I
load net matrix_in[2,1][2] -attr @rip(#000000) matrix_in[2,1][2] -port matrix_in[2,1][2] -pin matrix_out[2,3][2]_INST_0_i_1 I
load net matrix_in[2,1][3] -attr @rip(#000000) matrix_in[2,1][3] -port matrix_in[2,1][3] -pin matrix_out[2,3][3]_INST_0_i_1 I
load net matrix_in[2,1][4] -attr @rip(#000000) matrix_in[2,1][4] -port matrix_in[2,1][4] -pin matrix_out[2,3][4]_INST_0_i_1 I
load net matrix_in[2,1][5] -attr @rip(#000000) matrix_in[2,1][5] -port matrix_in[2,1][5] -pin matrix_out[2,3][5]_INST_0_i_1 I
load net matrix_in[2,1][6] -attr @rip(#000000) matrix_in[2,1][6] -port matrix_in[2,1][6] -pin matrix_out[2,3][6]_INST_0_i_1 I
load net matrix_in[2,1][7] -attr @rip(#000000) matrix_in[2,1][7] -port matrix_in[2,1][7] -pin matrix_out[2,3][7]_INST_0_i_1 I
load net matrix_in[2,2][0] -attr @rip(#000000) matrix_in[2,2][0] -port matrix_in[2,2][0] -pin matrix_out[2,0][0]_INST_0_i_1 I
load net matrix_in[2,2][1] -attr @rip(#000000) matrix_in[2,2][1] -port matrix_in[2,2][1] -pin matrix_out[2,0][1]_INST_0_i_1 I
load net matrix_in[2,2][2] -attr @rip(#000000) matrix_in[2,2][2] -port matrix_in[2,2][2] -pin matrix_out[2,0][2]_INST_0_i_1 I
load net matrix_in[2,2][3] -attr @rip(#000000) matrix_in[2,2][3] -port matrix_in[2,2][3] -pin matrix_out[2,0][3]_INST_0_i_1 I
load net matrix_in[2,2][4] -attr @rip(#000000) matrix_in[2,2][4] -port matrix_in[2,2][4] -pin matrix_out[2,0][4]_INST_0_i_1 I
load net matrix_in[2,2][5] -attr @rip(#000000) matrix_in[2,2][5] -port matrix_in[2,2][5] -pin matrix_out[2,0][5]_INST_0_i_1 I
load net matrix_in[2,2][6] -attr @rip(#000000) matrix_in[2,2][6] -port matrix_in[2,2][6] -pin matrix_out[2,0][6]_INST_0_i_1 I
load net matrix_in[2,2][7] -attr @rip(#000000) matrix_in[2,2][7] -port matrix_in[2,2][7] -pin matrix_out[2,0][7]_INST_0_i_1 I
load net matrix_in[2,3][0] -attr @rip(#000000) matrix_in[2,3][0] -port matrix_in[2,3][0] -pin matrix_out[2,1][0]_INST_0_i_1 I
load net matrix_in[2,3][1] -attr @rip(#000000) matrix_in[2,3][1] -port matrix_in[2,3][1] -pin matrix_out[2,1][1]_INST_0_i_1 I
load net matrix_in[2,3][2] -attr @rip(#000000) matrix_in[2,3][2] -port matrix_in[2,3][2] -pin matrix_out[2,1][2]_INST_0_i_1 I
load net matrix_in[2,3][3] -attr @rip(#000000) matrix_in[2,3][3] -port matrix_in[2,3][3] -pin matrix_out[2,1][3]_INST_0_i_1 I
load net matrix_in[2,3][4] -attr @rip(#000000) matrix_in[2,3][4] -port matrix_in[2,3][4] -pin matrix_out[2,1][4]_INST_0_i_1 I
load net matrix_in[2,3][5] -attr @rip(#000000) matrix_in[2,3][5] -port matrix_in[2,3][5] -pin matrix_out[2,1][5]_INST_0_i_1 I
load net matrix_in[2,3][6] -attr @rip(#000000) matrix_in[2,3][6] -port matrix_in[2,3][6] -pin matrix_out[2,1][6]_INST_0_i_1 I
load net matrix_in[2,3][7] -attr @rip(#000000) matrix_in[2,3][7] -port matrix_in[2,3][7] -pin matrix_out[2,1][7]_INST_0_i_1 I
load net matrix_in[3,0][0] -attr @rip(#000000) matrix_in[3,0][0] -port matrix_in[3,0][0] -pin matrix_out[3,1][0]_INST_0_i_1 I
load net matrix_in[3,0][1] -attr @rip(#000000) matrix_in[3,0][1] -port matrix_in[3,0][1] -pin matrix_out[3,1][1]_INST_0_i_1 I
load net matrix_in[3,0][2] -attr @rip(#000000) matrix_in[3,0][2] -port matrix_in[3,0][2] -pin matrix_out[3,1][2]_INST_0_i_1 I
load net matrix_in[3,0][3] -attr @rip(#000000) matrix_in[3,0][3] -port matrix_in[3,0][3] -pin matrix_out[3,1][3]_INST_0_i_1 I
load net matrix_in[3,0][4] -attr @rip(#000000) matrix_in[3,0][4] -port matrix_in[3,0][4] -pin matrix_out[3,1][4]_INST_0_i_1 I
load net matrix_in[3,0][5] -attr @rip(#000000) matrix_in[3,0][5] -port matrix_in[3,0][5] -pin matrix_out[3,1][5]_INST_0_i_1 I
load net matrix_in[3,0][6] -attr @rip(#000000) matrix_in[3,0][6] -port matrix_in[3,0][6] -pin matrix_out[3,1][6]_INST_0_i_1 I
load net matrix_in[3,0][7] -attr @rip(#000000) matrix_in[3,0][7] -port matrix_in[3,0][7] -pin matrix_out[3,1][7]_INST_0_i_1 I
load net matrix_in[3,1][0] -attr @rip(#000000) matrix_in[3,1][0] -port matrix_in[3,1][0] -pin matrix_out[3,2][0]_INST_0_i_1 I
load net matrix_in[3,1][1] -attr @rip(#000000) matrix_in[3,1][1] -port matrix_in[3,1][1] -pin matrix_out[3,2][1]_INST_0_i_1 I
load net matrix_in[3,1][2] -attr @rip(#000000) matrix_in[3,1][2] -port matrix_in[3,1][2] -pin matrix_out[3,2][2]_INST_0_i_1 I
load net matrix_in[3,1][3] -attr @rip(#000000) matrix_in[3,1][3] -port matrix_in[3,1][3] -pin matrix_out[3,2][3]_INST_0_i_1 I
load net matrix_in[3,1][4] -attr @rip(#000000) matrix_in[3,1][4] -port matrix_in[3,1][4] -pin matrix_out[3,2][4]_INST_0_i_1 I
load net matrix_in[3,1][5] -attr @rip(#000000) matrix_in[3,1][5] -port matrix_in[3,1][5] -pin matrix_out[3,2][5]_INST_0_i_1 I
load net matrix_in[3,1][6] -attr @rip(#000000) matrix_in[3,1][6] -port matrix_in[3,1][6] -pin matrix_out[3,2][6]_INST_0_i_1 I
load net matrix_in[3,1][7] -attr @rip(#000000) matrix_in[3,1][7] -port matrix_in[3,1][7] -pin matrix_out[3,2][7]_INST_0_i_1 I
load net matrix_in[3,2][0] -attr @rip(#000000) matrix_in[3,2][0] -port matrix_in[3,2][0] -pin matrix_out[3,3][0]_INST_0_i_1 I
load net matrix_in[3,2][1] -attr @rip(#000000) matrix_in[3,2][1] -port matrix_in[3,2][1] -pin matrix_out[3,3][1]_INST_0_i_1 I
load net matrix_in[3,2][2] -attr @rip(#000000) matrix_in[3,2][2] -port matrix_in[3,2][2] -pin matrix_out[3,3][2]_INST_0_i_1 I
load net matrix_in[3,2][3] -attr @rip(#000000) matrix_in[3,2][3] -port matrix_in[3,2][3] -pin matrix_out[3,3][3]_INST_0_i_1 I
load net matrix_in[3,2][4] -attr @rip(#000000) matrix_in[3,2][4] -port matrix_in[3,2][4] -pin matrix_out[3,3][4]_INST_0_i_1 I
load net matrix_in[3,2][5] -attr @rip(#000000) matrix_in[3,2][5] -port matrix_in[3,2][5] -pin matrix_out[3,3][5]_INST_0_i_1 I
load net matrix_in[3,2][6] -attr @rip(#000000) matrix_in[3,2][6] -port matrix_in[3,2][6] -pin matrix_out[3,3][6]_INST_0_i_1 I
load net matrix_in[3,2][7] -attr @rip(#000000) matrix_in[3,2][7] -port matrix_in[3,2][7] -pin matrix_out[3,3][7]_INST_0_i_1 I
load net matrix_in[3,3][0] -attr @rip(#000000) matrix_in[3,3][0] -port matrix_in[3,3][0] -pin matrix_out[3,0][0]_INST_0_i_1 I
load net matrix_in[3,3][1] -attr @rip(#000000) matrix_in[3,3][1] -port matrix_in[3,3][1] -pin matrix_out[3,0][1]_INST_0_i_1 I
load net matrix_in[3,3][2] -attr @rip(#000000) matrix_in[3,3][2] -port matrix_in[3,3][2] -pin matrix_out[3,0][2]_INST_0_i_1 I
load net matrix_in[3,3][3] -attr @rip(#000000) matrix_in[3,3][3] -port matrix_in[3,3][3] -pin matrix_out[3,0][3]_INST_0_i_1 I
load net matrix_in[3,3][4] -attr @rip(#000000) matrix_in[3,3][4] -port matrix_in[3,3][4] -pin matrix_out[3,0][4]_INST_0_i_1 I
load net matrix_in[3,3][5] -attr @rip(#000000) matrix_in[3,3][5] -port matrix_in[3,3][5] -pin matrix_out[3,0][5]_INST_0_i_1 I
load net matrix_in[3,3][6] -attr @rip(#000000) matrix_in[3,3][6] -port matrix_in[3,3][6] -pin matrix_out[3,0][6]_INST_0_i_1 I
load net matrix_in[3,3][7] -attr @rip(#000000) matrix_in[3,3][7] -port matrix_in[3,3][7] -pin matrix_out[3,0][7]_INST_0_i_1 I
load net matrix_out[0,0][0] -attr @rip(#000000) 0 -port matrix_out[0,0][0] -pin matrix_out[0,0][0]_INST_0 O
load net matrix_out[0,0][1] -attr @rip(#000000) 1 -port matrix_out[0,0][1] -pin matrix_out[0,0][1]_INST_0 O
load net matrix_out[0,0][2] -attr @rip(#000000) 2 -port matrix_out[0,0][2] -pin matrix_out[0,0][2]_INST_0 O
load net matrix_out[0,0][3] -attr @rip(#000000) 3 -port matrix_out[0,0][3] -pin matrix_out[0,0][3]_INST_0 O
load net matrix_out[0,0][4] -attr @rip(#000000) 4 -port matrix_out[0,0][4] -pin matrix_out[0,0][4]_INST_0 O
load net matrix_out[0,0][5] -attr @rip(#000000) 5 -port matrix_out[0,0][5] -pin matrix_out[0,0][5]_INST_0 O
load net matrix_out[0,0][6] -attr @rip(#000000) 6 -port matrix_out[0,0][6] -pin matrix_out[0,0][6]_INST_0 O
load net matrix_out[0,0][7] -attr @rip(#000000) 7 -port matrix_out[0,0][7] -pin matrix_out[0,0][7]_INST_0 O
load net matrix_out[0,0]_OBUF[0] -pin matrix_out[0,0][0]_INST_0 I -pin matrix_out[0,0][0]_INST_0_i_1 O
netloc matrix_out[0,0]_OBUF[0] 1 1 1 N 40
load net matrix_out[0,0]_OBUF[1] -pin matrix_out[0,0][1]_INST_0 I -pin matrix_out[0,0][1]_INST_0_i_1 O
netloc matrix_out[0,0]_OBUF[1] 1 1 1 N 110
load net matrix_out[0,0]_OBUF[2] -pin matrix_out[0,0][2]_INST_0 I -pin matrix_out[0,0][2]_INST_0_i_1 O
netloc matrix_out[0,0]_OBUF[2] 1 1 1 N 180
load net matrix_out[0,0]_OBUF[3] -pin matrix_out[0,0][3]_INST_0 I -pin matrix_out[0,0][3]_INST_0_i_1 O
netloc matrix_out[0,0]_OBUF[3] 1 1 1 N 250
load net matrix_out[0,0]_OBUF[4] -pin matrix_out[0,0][4]_INST_0 I -pin matrix_out[0,0][4]_INST_0_i_1 O
netloc matrix_out[0,0]_OBUF[4] 1 1 1 N 320
load net matrix_out[0,0]_OBUF[5] -pin matrix_out[0,0][5]_INST_0 I -pin matrix_out[0,0][5]_INST_0_i_1 O
netloc matrix_out[0,0]_OBUF[5] 1 1 1 N 390
load net matrix_out[0,0]_OBUF[6] -pin matrix_out[0,0][6]_INST_0 I -pin matrix_out[0,0][6]_INST_0_i_1 O
netloc matrix_out[0,0]_OBUF[6] 1 1 1 N 460
load net matrix_out[0,0]_OBUF[7] -pin matrix_out[0,0][7]_INST_0 I -pin matrix_out[0,0][7]_INST_0_i_1 O
netloc matrix_out[0,0]_OBUF[7] 1 1 1 N 530
load net matrix_out[0,1][0] -attr @rip(#000000) 0 -port matrix_out[0,1][0] -pin matrix_out[0,1][0]_INST_0 O
load net matrix_out[0,1][1] -attr @rip(#000000) 1 -port matrix_out[0,1][1] -pin matrix_out[0,1][1]_INST_0 O
load net matrix_out[0,1][2] -attr @rip(#000000) 2 -port matrix_out[0,1][2] -pin matrix_out[0,1][2]_INST_0 O
load net matrix_out[0,1][3] -attr @rip(#000000) 3 -port matrix_out[0,1][3] -pin matrix_out[0,1][3]_INST_0 O
load net matrix_out[0,1][4] -attr @rip(#000000) 4 -port matrix_out[0,1][4] -pin matrix_out[0,1][4]_INST_0 O
load net matrix_out[0,1][5] -attr @rip(#000000) 5 -port matrix_out[0,1][5] -pin matrix_out[0,1][5]_INST_0 O
load net matrix_out[0,1][6] -attr @rip(#000000) 6 -port matrix_out[0,1][6] -pin matrix_out[0,1][6]_INST_0 O
load net matrix_out[0,1][7] -attr @rip(#000000) 7 -port matrix_out[0,1][7] -pin matrix_out[0,1][7]_INST_0 O
load net matrix_out[0,1]_OBUF[0] -pin matrix_out[0,1][0]_INST_0 I -pin matrix_out[0,1][0]_INST_0_i_1 O
netloc matrix_out[0,1]_OBUF[0] 1 1 1 N 600
load net matrix_out[0,1]_OBUF[1] -pin matrix_out[0,1][1]_INST_0 I -pin matrix_out[0,1][1]_INST_0_i_1 O
netloc matrix_out[0,1]_OBUF[1] 1 1 1 N 670
load net matrix_out[0,1]_OBUF[2] -pin matrix_out[0,1][2]_INST_0 I -pin matrix_out[0,1][2]_INST_0_i_1 O
netloc matrix_out[0,1]_OBUF[2] 1 1 1 N 740
load net matrix_out[0,1]_OBUF[3] -pin matrix_out[0,1][3]_INST_0 I -pin matrix_out[0,1][3]_INST_0_i_1 O
netloc matrix_out[0,1]_OBUF[3] 1 1 1 N 810
load net matrix_out[0,1]_OBUF[4] -pin matrix_out[0,1][4]_INST_0 I -pin matrix_out[0,1][4]_INST_0_i_1 O
netloc matrix_out[0,1]_OBUF[4] 1 1 1 N 880
load net matrix_out[0,1]_OBUF[5] -pin matrix_out[0,1][5]_INST_0 I -pin matrix_out[0,1][5]_INST_0_i_1 O
netloc matrix_out[0,1]_OBUF[5] 1 1 1 N 950
load net matrix_out[0,1]_OBUF[6] -pin matrix_out[0,1][6]_INST_0 I -pin matrix_out[0,1][6]_INST_0_i_1 O
netloc matrix_out[0,1]_OBUF[6] 1 1 1 N 1020
load net matrix_out[0,1]_OBUF[7] -pin matrix_out[0,1][7]_INST_0 I -pin matrix_out[0,1][7]_INST_0_i_1 O
netloc matrix_out[0,1]_OBUF[7] 1 1 1 N 1090
load net matrix_out[0,2][0] -attr @rip(#000000) 0 -port matrix_out[0,2][0] -pin matrix_out[0,2][0]_INST_0 O
load net matrix_out[0,2][1] -attr @rip(#000000) 1 -port matrix_out[0,2][1] -pin matrix_out[0,2][1]_INST_0 O
load net matrix_out[0,2][2] -attr @rip(#000000) 2 -port matrix_out[0,2][2] -pin matrix_out[0,2][2]_INST_0 O
load net matrix_out[0,2][3] -attr @rip(#000000) 3 -port matrix_out[0,2][3] -pin matrix_out[0,2][3]_INST_0 O
load net matrix_out[0,2][4] -attr @rip(#000000) 4 -port matrix_out[0,2][4] -pin matrix_out[0,2][4]_INST_0 O
load net matrix_out[0,2][5] -attr @rip(#000000) 5 -port matrix_out[0,2][5] -pin matrix_out[0,2][5]_INST_0 O
load net matrix_out[0,2][6] -attr @rip(#000000) 6 -port matrix_out[0,2][6] -pin matrix_out[0,2][6]_INST_0 O
load net matrix_out[0,2][7] -attr @rip(#000000) 7 -port matrix_out[0,2][7] -pin matrix_out[0,2][7]_INST_0 O
load net matrix_out[0,2]_OBUF[0] -pin matrix_out[0,2][0]_INST_0 I -pin matrix_out[0,2][0]_INST_0_i_1 O
netloc matrix_out[0,2]_OBUF[0] 1 1 1 N 1160
load net matrix_out[0,2]_OBUF[1] -pin matrix_out[0,2][1]_INST_0 I -pin matrix_out[0,2][1]_INST_0_i_1 O
netloc matrix_out[0,2]_OBUF[1] 1 1 1 N 1230
load net matrix_out[0,2]_OBUF[2] -pin matrix_out[0,2][2]_INST_0 I -pin matrix_out[0,2][2]_INST_0_i_1 O
netloc matrix_out[0,2]_OBUF[2] 1 1 1 N 1300
load net matrix_out[0,2]_OBUF[3] -pin matrix_out[0,2][3]_INST_0 I -pin matrix_out[0,2][3]_INST_0_i_1 O
netloc matrix_out[0,2]_OBUF[3] 1 1 1 N 1370
load net matrix_out[0,2]_OBUF[4] -pin matrix_out[0,2][4]_INST_0 I -pin matrix_out[0,2][4]_INST_0_i_1 O
netloc matrix_out[0,2]_OBUF[4] 1 1 1 N 1440
load net matrix_out[0,2]_OBUF[5] -pin matrix_out[0,2][5]_INST_0 I -pin matrix_out[0,2][5]_INST_0_i_1 O
netloc matrix_out[0,2]_OBUF[5] 1 1 1 N 1510
load net matrix_out[0,2]_OBUF[6] -pin matrix_out[0,2][6]_INST_0 I -pin matrix_out[0,2][6]_INST_0_i_1 O
netloc matrix_out[0,2]_OBUF[6] 1 1 1 N 1580
load net matrix_out[0,2]_OBUF[7] -pin matrix_out[0,2][7]_INST_0 I -pin matrix_out[0,2][7]_INST_0_i_1 O
netloc matrix_out[0,2]_OBUF[7] 1 1 1 N 1650
load net matrix_out[0,3][0] -attr @rip(#000000) 0 -port matrix_out[0,3][0] -pin matrix_out[0,3][0]_INST_0 O
load net matrix_out[0,3][1] -attr @rip(#000000) 1 -port matrix_out[0,3][1] -pin matrix_out[0,3][1]_INST_0 O
load net matrix_out[0,3][2] -attr @rip(#000000) 2 -port matrix_out[0,3][2] -pin matrix_out[0,3][2]_INST_0 O
load net matrix_out[0,3][3] -attr @rip(#000000) 3 -port matrix_out[0,3][3] -pin matrix_out[0,3][3]_INST_0 O
load net matrix_out[0,3][4] -attr @rip(#000000) 4 -port matrix_out[0,3][4] -pin matrix_out[0,3][4]_INST_0 O
load net matrix_out[0,3][5] -attr @rip(#000000) 5 -port matrix_out[0,3][5] -pin matrix_out[0,3][5]_INST_0 O
load net matrix_out[0,3][6] -attr @rip(#000000) 6 -port matrix_out[0,3][6] -pin matrix_out[0,3][6]_INST_0 O
load net matrix_out[0,3][7] -attr @rip(#000000) 7 -port matrix_out[0,3][7] -pin matrix_out[0,3][7]_INST_0 O
load net matrix_out[0,3]_OBUF[0] -pin matrix_out[0,3][0]_INST_0 I -pin matrix_out[0,3][0]_INST_0_i_1 O
netloc matrix_out[0,3]_OBUF[0] 1 1 1 N 1720
load net matrix_out[0,3]_OBUF[1] -pin matrix_out[0,3][1]_INST_0 I -pin matrix_out[0,3][1]_INST_0_i_1 O
netloc matrix_out[0,3]_OBUF[1] 1 1 1 N 1790
load net matrix_out[0,3]_OBUF[2] -pin matrix_out[0,3][2]_INST_0 I -pin matrix_out[0,3][2]_INST_0_i_1 O
netloc matrix_out[0,3]_OBUF[2] 1 1 1 N 1860
load net matrix_out[0,3]_OBUF[3] -pin matrix_out[0,3][3]_INST_0 I -pin matrix_out[0,3][3]_INST_0_i_1 O
netloc matrix_out[0,3]_OBUF[3] 1 1 1 N 1930
load net matrix_out[0,3]_OBUF[4] -pin matrix_out[0,3][4]_INST_0 I -pin matrix_out[0,3][4]_INST_0_i_1 O
netloc matrix_out[0,3]_OBUF[4] 1 1 1 N 2000
load net matrix_out[0,3]_OBUF[5] -pin matrix_out[0,3][5]_INST_0 I -pin matrix_out[0,3][5]_INST_0_i_1 O
netloc matrix_out[0,3]_OBUF[5] 1 1 1 N 2070
load net matrix_out[0,3]_OBUF[6] -pin matrix_out[0,3][6]_INST_0 I -pin matrix_out[0,3][6]_INST_0_i_1 O
netloc matrix_out[0,3]_OBUF[6] 1 1 1 N 2140
load net matrix_out[0,3]_OBUF[7] -pin matrix_out[0,3][7]_INST_0 I -pin matrix_out[0,3][7]_INST_0_i_1 O
netloc matrix_out[0,3]_OBUF[7] 1 1 1 N 2210
load net matrix_out[1,0][0] -attr @rip(#000000) 0 -port matrix_out[1,0][0] -pin matrix_out[1,0][0]_INST_0 O
load net matrix_out[1,0][1] -attr @rip(#000000) 1 -port matrix_out[1,0][1] -pin matrix_out[1,0][1]_INST_0 O
load net matrix_out[1,0][2] -attr @rip(#000000) 2 -port matrix_out[1,0][2] -pin matrix_out[1,0][2]_INST_0 O
load net matrix_out[1,0][3] -attr @rip(#000000) 3 -port matrix_out[1,0][3] -pin matrix_out[1,0][3]_INST_0 O
load net matrix_out[1,0][4] -attr @rip(#000000) 4 -port matrix_out[1,0][4] -pin matrix_out[1,0][4]_INST_0 O
load net matrix_out[1,0][5] -attr @rip(#000000) 5 -port matrix_out[1,0][5] -pin matrix_out[1,0][5]_INST_0 O
load net matrix_out[1,0][6] -attr @rip(#000000) 6 -port matrix_out[1,0][6] -pin matrix_out[1,0][6]_INST_0 O
load net matrix_out[1,0][7] -attr @rip(#000000) 7 -port matrix_out[1,0][7] -pin matrix_out[1,0][7]_INST_0 O
load net matrix_out[1,0]_OBUF[0] -pin matrix_out[1,0][0]_INST_0 I -pin matrix_out[1,0][0]_INST_0_i_1 O
netloc matrix_out[1,0]_OBUF[0] 1 1 1 N 2280
load net matrix_out[1,0]_OBUF[1] -pin matrix_out[1,0][1]_INST_0 I -pin matrix_out[1,0][1]_INST_0_i_1 O
netloc matrix_out[1,0]_OBUF[1] 1 1 1 N 2350
load net matrix_out[1,0]_OBUF[2] -pin matrix_out[1,0][2]_INST_0 I -pin matrix_out[1,0][2]_INST_0_i_1 O
netloc matrix_out[1,0]_OBUF[2] 1 1 1 N 2420
load net matrix_out[1,0]_OBUF[3] -pin matrix_out[1,0][3]_INST_0 I -pin matrix_out[1,0][3]_INST_0_i_1 O
netloc matrix_out[1,0]_OBUF[3] 1 1 1 N 2490
load net matrix_out[1,0]_OBUF[4] -pin matrix_out[1,0][4]_INST_0 I -pin matrix_out[1,0][4]_INST_0_i_1 O
netloc matrix_out[1,0]_OBUF[4] 1 1 1 N 2560
load net matrix_out[1,0]_OBUF[5] -pin matrix_out[1,0][5]_INST_0 I -pin matrix_out[1,0][5]_INST_0_i_1 O
netloc matrix_out[1,0]_OBUF[5] 1 1 1 N 2630
load net matrix_out[1,0]_OBUF[6] -pin matrix_out[1,0][6]_INST_0 I -pin matrix_out[1,0][6]_INST_0_i_1 O
netloc matrix_out[1,0]_OBUF[6] 1 1 1 N 2700
load net matrix_out[1,0]_OBUF[7] -pin matrix_out[1,0][7]_INST_0 I -pin matrix_out[1,0][7]_INST_0_i_1 O
netloc matrix_out[1,0]_OBUF[7] 1 1 1 N 2770
load net matrix_out[1,1][0] -attr @rip(#000000) 0 -port matrix_out[1,1][0] -pin matrix_out[1,1][0]_INST_0 O
load net matrix_out[1,1][1] -attr @rip(#000000) 1 -port matrix_out[1,1][1] -pin matrix_out[1,1][1]_INST_0 O
load net matrix_out[1,1][2] -attr @rip(#000000) 2 -port matrix_out[1,1][2] -pin matrix_out[1,1][2]_INST_0 O
load net matrix_out[1,1][3] -attr @rip(#000000) 3 -port matrix_out[1,1][3] -pin matrix_out[1,1][3]_INST_0 O
load net matrix_out[1,1][4] -attr @rip(#000000) 4 -port matrix_out[1,1][4] -pin matrix_out[1,1][4]_INST_0 O
load net matrix_out[1,1][5] -attr @rip(#000000) 5 -port matrix_out[1,1][5] -pin matrix_out[1,1][5]_INST_0 O
load net matrix_out[1,1][6] -attr @rip(#000000) 6 -port matrix_out[1,1][6] -pin matrix_out[1,1][6]_INST_0 O
load net matrix_out[1,1][7] -attr @rip(#000000) 7 -port matrix_out[1,1][7] -pin matrix_out[1,1][7]_INST_0 O
load net matrix_out[1,1]_OBUF[0] -pin matrix_out[1,1][0]_INST_0 I -pin matrix_out[1,1][0]_INST_0_i_1 O
netloc matrix_out[1,1]_OBUF[0] 1 1 1 N 2840
load net matrix_out[1,1]_OBUF[1] -pin matrix_out[1,1][1]_INST_0 I -pin matrix_out[1,1][1]_INST_0_i_1 O
netloc matrix_out[1,1]_OBUF[1] 1 1 1 N 2910
load net matrix_out[1,1]_OBUF[2] -pin matrix_out[1,1][2]_INST_0 I -pin matrix_out[1,1][2]_INST_0_i_1 O
netloc matrix_out[1,1]_OBUF[2] 1 1 1 N 2980
load net matrix_out[1,1]_OBUF[3] -pin matrix_out[1,1][3]_INST_0 I -pin matrix_out[1,1][3]_INST_0_i_1 O
netloc matrix_out[1,1]_OBUF[3] 1 1 1 N 3050
load net matrix_out[1,1]_OBUF[4] -pin matrix_out[1,1][4]_INST_0 I -pin matrix_out[1,1][4]_INST_0_i_1 O
netloc matrix_out[1,1]_OBUF[4] 1 1 1 N 3120
load net matrix_out[1,1]_OBUF[5] -pin matrix_out[1,1][5]_INST_0 I -pin matrix_out[1,1][5]_INST_0_i_1 O
netloc matrix_out[1,1]_OBUF[5] 1 1 1 N 3190
load net matrix_out[1,1]_OBUF[6] -pin matrix_out[1,1][6]_INST_0 I -pin matrix_out[1,1][6]_INST_0_i_1 O
netloc matrix_out[1,1]_OBUF[6] 1 1 1 N 3260
load net matrix_out[1,1]_OBUF[7] -pin matrix_out[1,1][7]_INST_0 I -pin matrix_out[1,1][7]_INST_0_i_1 O
netloc matrix_out[1,1]_OBUF[7] 1 1 1 N 3330
load net matrix_out[1,2][0] -attr @rip(#000000) 0 -port matrix_out[1,2][0] -pin matrix_out[1,2][0]_INST_0 O
load net matrix_out[1,2][1] -attr @rip(#000000) 1 -port matrix_out[1,2][1] -pin matrix_out[1,2][1]_INST_0 O
load net matrix_out[1,2][2] -attr @rip(#000000) 2 -port matrix_out[1,2][2] -pin matrix_out[1,2][2]_INST_0 O
load net matrix_out[1,2][3] -attr @rip(#000000) 3 -port matrix_out[1,2][3] -pin matrix_out[1,2][3]_INST_0 O
load net matrix_out[1,2][4] -attr @rip(#000000) 4 -port matrix_out[1,2][4] -pin matrix_out[1,2][4]_INST_0 O
load net matrix_out[1,2][5] -attr @rip(#000000) 5 -port matrix_out[1,2][5] -pin matrix_out[1,2][5]_INST_0 O
load net matrix_out[1,2][6] -attr @rip(#000000) 6 -port matrix_out[1,2][6] -pin matrix_out[1,2][6]_INST_0 O
load net matrix_out[1,2][7] -attr @rip(#000000) 7 -port matrix_out[1,2][7] -pin matrix_out[1,2][7]_INST_0 O
load net matrix_out[1,2]_OBUF[0] -pin matrix_out[1,2][0]_INST_0 I -pin matrix_out[1,2][0]_INST_0_i_1 O
netloc matrix_out[1,2]_OBUF[0] 1 1 1 N 3400
load net matrix_out[1,2]_OBUF[1] -pin matrix_out[1,2][1]_INST_0 I -pin matrix_out[1,2][1]_INST_0_i_1 O
netloc matrix_out[1,2]_OBUF[1] 1 1 1 N 3470
load net matrix_out[1,2]_OBUF[2] -pin matrix_out[1,2][2]_INST_0 I -pin matrix_out[1,2][2]_INST_0_i_1 O
netloc matrix_out[1,2]_OBUF[2] 1 1 1 N 3540
load net matrix_out[1,2]_OBUF[3] -pin matrix_out[1,2][3]_INST_0 I -pin matrix_out[1,2][3]_INST_0_i_1 O
netloc matrix_out[1,2]_OBUF[3] 1 1 1 N 3610
load net matrix_out[1,2]_OBUF[4] -pin matrix_out[1,2][4]_INST_0 I -pin matrix_out[1,2][4]_INST_0_i_1 O
netloc matrix_out[1,2]_OBUF[4] 1 1 1 N 3680
load net matrix_out[1,2]_OBUF[5] -pin matrix_out[1,2][5]_INST_0 I -pin matrix_out[1,2][5]_INST_0_i_1 O
netloc matrix_out[1,2]_OBUF[5] 1 1 1 N 3750
load net matrix_out[1,2]_OBUF[6] -pin matrix_out[1,2][6]_INST_0 I -pin matrix_out[1,2][6]_INST_0_i_1 O
netloc matrix_out[1,2]_OBUF[6] 1 1 1 N 3820
load net matrix_out[1,2]_OBUF[7] -pin matrix_out[1,2][7]_INST_0 I -pin matrix_out[1,2][7]_INST_0_i_1 O
netloc matrix_out[1,2]_OBUF[7] 1 1 1 N 3890
load net matrix_out[1,3][0] -attr @rip(#000000) 0 -port matrix_out[1,3][0] -pin matrix_out[1,3][0]_INST_0 O
load net matrix_out[1,3][1] -attr @rip(#000000) 1 -port matrix_out[1,3][1] -pin matrix_out[1,3][1]_INST_0 O
load net matrix_out[1,3][2] -attr @rip(#000000) 2 -port matrix_out[1,3][2] -pin matrix_out[1,3][2]_INST_0 O
load net matrix_out[1,3][3] -attr @rip(#000000) 3 -port matrix_out[1,3][3] -pin matrix_out[1,3][3]_INST_0 O
load net matrix_out[1,3][4] -attr @rip(#000000) 4 -port matrix_out[1,3][4] -pin matrix_out[1,3][4]_INST_0 O
load net matrix_out[1,3][5] -attr @rip(#000000) 5 -port matrix_out[1,3][5] -pin matrix_out[1,3][5]_INST_0 O
load net matrix_out[1,3][6] -attr @rip(#000000) 6 -port matrix_out[1,3][6] -pin matrix_out[1,3][6]_INST_0 O
load net matrix_out[1,3][7] -attr @rip(#000000) 7 -port matrix_out[1,3][7] -pin matrix_out[1,3][7]_INST_0 O
load net matrix_out[1,3]_OBUF[0] -pin matrix_out[1,3][0]_INST_0 I -pin matrix_out[1,3][0]_INST_0_i_1 O
netloc matrix_out[1,3]_OBUF[0] 1 1 1 N 3960
load net matrix_out[1,3]_OBUF[1] -pin matrix_out[1,3][1]_INST_0 I -pin matrix_out[1,3][1]_INST_0_i_1 O
netloc matrix_out[1,3]_OBUF[1] 1 1 1 N 4030
load net matrix_out[1,3]_OBUF[2] -pin matrix_out[1,3][2]_INST_0 I -pin matrix_out[1,3][2]_INST_0_i_1 O
netloc matrix_out[1,3]_OBUF[2] 1 1 1 N 4100
load net matrix_out[1,3]_OBUF[3] -pin matrix_out[1,3][3]_INST_0 I -pin matrix_out[1,3][3]_INST_0_i_1 O
netloc matrix_out[1,3]_OBUF[3] 1 1 1 N 4170
load net matrix_out[1,3]_OBUF[4] -pin matrix_out[1,3][4]_INST_0 I -pin matrix_out[1,3][4]_INST_0_i_1 O
netloc matrix_out[1,3]_OBUF[4] 1 1 1 N 4240
load net matrix_out[1,3]_OBUF[5] -pin matrix_out[1,3][5]_INST_0 I -pin matrix_out[1,3][5]_INST_0_i_1 O
netloc matrix_out[1,3]_OBUF[5] 1 1 1 N 4310
load net matrix_out[1,3]_OBUF[6] -pin matrix_out[1,3][6]_INST_0 I -pin matrix_out[1,3][6]_INST_0_i_1 O
netloc matrix_out[1,3]_OBUF[6] 1 1 1 N 4380
load net matrix_out[1,3]_OBUF[7] -pin matrix_out[1,3][7]_INST_0 I -pin matrix_out[1,3][7]_INST_0_i_1 O
netloc matrix_out[1,3]_OBUF[7] 1 1 1 N 4450
load net matrix_out[2,0][0] -attr @rip(#000000) 0 -port matrix_out[2,0][0] -pin matrix_out[2,0][0]_INST_0 O
load net matrix_out[2,0][1] -attr @rip(#000000) 1 -port matrix_out[2,0][1] -pin matrix_out[2,0][1]_INST_0 O
load net matrix_out[2,0][2] -attr @rip(#000000) 2 -port matrix_out[2,0][2] -pin matrix_out[2,0][2]_INST_0 O
load net matrix_out[2,0][3] -attr @rip(#000000) 3 -port matrix_out[2,0][3] -pin matrix_out[2,0][3]_INST_0 O
load net matrix_out[2,0][4] -attr @rip(#000000) 4 -port matrix_out[2,0][4] -pin matrix_out[2,0][4]_INST_0 O
load net matrix_out[2,0][5] -attr @rip(#000000) 5 -port matrix_out[2,0][5] -pin matrix_out[2,0][5]_INST_0 O
load net matrix_out[2,0][6] -attr @rip(#000000) 6 -port matrix_out[2,0][6] -pin matrix_out[2,0][6]_INST_0 O
load net matrix_out[2,0][7] -attr @rip(#000000) 7 -port matrix_out[2,0][7] -pin matrix_out[2,0][7]_INST_0 O
load net matrix_out[2,0]_OBUF[0] -pin matrix_out[2,0][0]_INST_0 I -pin matrix_out[2,0][0]_INST_0_i_1 O
netloc matrix_out[2,0]_OBUF[0] 1 1 1 N 4520
load net matrix_out[2,0]_OBUF[1] -pin matrix_out[2,0][1]_INST_0 I -pin matrix_out[2,0][1]_INST_0_i_1 O
netloc matrix_out[2,0]_OBUF[1] 1 1 1 N 4590
load net matrix_out[2,0]_OBUF[2] -pin matrix_out[2,0][2]_INST_0 I -pin matrix_out[2,0][2]_INST_0_i_1 O
netloc matrix_out[2,0]_OBUF[2] 1 1 1 N 4660
load net matrix_out[2,0]_OBUF[3] -pin matrix_out[2,0][3]_INST_0 I -pin matrix_out[2,0][3]_INST_0_i_1 O
netloc matrix_out[2,0]_OBUF[3] 1 1 1 N 4730
load net matrix_out[2,0]_OBUF[4] -pin matrix_out[2,0][4]_INST_0 I -pin matrix_out[2,0][4]_INST_0_i_1 O
netloc matrix_out[2,0]_OBUF[4] 1 1 1 N 4800
load net matrix_out[2,0]_OBUF[5] -pin matrix_out[2,0][5]_INST_0 I -pin matrix_out[2,0][5]_INST_0_i_1 O
netloc matrix_out[2,0]_OBUF[5] 1 1 1 N 4870
load net matrix_out[2,0]_OBUF[6] -pin matrix_out[2,0][6]_INST_0 I -pin matrix_out[2,0][6]_INST_0_i_1 O
netloc matrix_out[2,0]_OBUF[6] 1 1 1 N 4940
load net matrix_out[2,0]_OBUF[7] -pin matrix_out[2,0][7]_INST_0 I -pin matrix_out[2,0][7]_INST_0_i_1 O
netloc matrix_out[2,0]_OBUF[7] 1 1 1 N 5010
load net matrix_out[2,1][0] -attr @rip(#000000) 0 -port matrix_out[2,1][0] -pin matrix_out[2,1][0]_INST_0 O
load net matrix_out[2,1][1] -attr @rip(#000000) 1 -port matrix_out[2,1][1] -pin matrix_out[2,1][1]_INST_0 O
load net matrix_out[2,1][2] -attr @rip(#000000) 2 -port matrix_out[2,1][2] -pin matrix_out[2,1][2]_INST_0 O
load net matrix_out[2,1][3] -attr @rip(#000000) 3 -port matrix_out[2,1][3] -pin matrix_out[2,1][3]_INST_0 O
load net matrix_out[2,1][4] -attr @rip(#000000) 4 -port matrix_out[2,1][4] -pin matrix_out[2,1][4]_INST_0 O
load net matrix_out[2,1][5] -attr @rip(#000000) 5 -port matrix_out[2,1][5] -pin matrix_out[2,1][5]_INST_0 O
load net matrix_out[2,1][6] -attr @rip(#000000) 6 -port matrix_out[2,1][6] -pin matrix_out[2,1][6]_INST_0 O
load net matrix_out[2,1][7] -attr @rip(#000000) 7 -port matrix_out[2,1][7] -pin matrix_out[2,1][7]_INST_0 O
load net matrix_out[2,1]_OBUF[0] -pin matrix_out[2,1][0]_INST_0 I -pin matrix_out[2,1][0]_INST_0_i_1 O
netloc matrix_out[2,1]_OBUF[0] 1 1 1 N 5080
load net matrix_out[2,1]_OBUF[1] -pin matrix_out[2,1][1]_INST_0 I -pin matrix_out[2,1][1]_INST_0_i_1 O
netloc matrix_out[2,1]_OBUF[1] 1 1 1 N 5150
load net matrix_out[2,1]_OBUF[2] -pin matrix_out[2,1][2]_INST_0 I -pin matrix_out[2,1][2]_INST_0_i_1 O
netloc matrix_out[2,1]_OBUF[2] 1 1 1 N 5220
load net matrix_out[2,1]_OBUF[3] -pin matrix_out[2,1][3]_INST_0 I -pin matrix_out[2,1][3]_INST_0_i_1 O
netloc matrix_out[2,1]_OBUF[3] 1 1 1 N 5290
load net matrix_out[2,1]_OBUF[4] -pin matrix_out[2,1][4]_INST_0 I -pin matrix_out[2,1][4]_INST_0_i_1 O
netloc matrix_out[2,1]_OBUF[4] 1 1 1 N 5360
load net matrix_out[2,1]_OBUF[5] -pin matrix_out[2,1][5]_INST_0 I -pin matrix_out[2,1][5]_INST_0_i_1 O
netloc matrix_out[2,1]_OBUF[5] 1 1 1 N 5430
load net matrix_out[2,1]_OBUF[6] -pin matrix_out[2,1][6]_INST_0 I -pin matrix_out[2,1][6]_INST_0_i_1 O
netloc matrix_out[2,1]_OBUF[6] 1 1 1 N 5500
load net matrix_out[2,1]_OBUF[7] -pin matrix_out[2,1][7]_INST_0 I -pin matrix_out[2,1][7]_INST_0_i_1 O
netloc matrix_out[2,1]_OBUF[7] 1 1 1 N 5570
load net matrix_out[2,2][0] -attr @rip(#000000) 0 -port matrix_out[2,2][0] -pin matrix_out[2,2][0]_INST_0 O
load net matrix_out[2,2][1] -attr @rip(#000000) 1 -port matrix_out[2,2][1] -pin matrix_out[2,2][1]_INST_0 O
load net matrix_out[2,2][2] -attr @rip(#000000) 2 -port matrix_out[2,2][2] -pin matrix_out[2,2][2]_INST_0 O
load net matrix_out[2,2][3] -attr @rip(#000000) 3 -port matrix_out[2,2][3] -pin matrix_out[2,2][3]_INST_0 O
load net matrix_out[2,2][4] -attr @rip(#000000) 4 -port matrix_out[2,2][4] -pin matrix_out[2,2][4]_INST_0 O
load net matrix_out[2,2][5] -attr @rip(#000000) 5 -port matrix_out[2,2][5] -pin matrix_out[2,2][5]_INST_0 O
load net matrix_out[2,2][6] -attr @rip(#000000) 6 -port matrix_out[2,2][6] -pin matrix_out[2,2][6]_INST_0 O
load net matrix_out[2,2][7] -attr @rip(#000000) 7 -port matrix_out[2,2][7] -pin matrix_out[2,2][7]_INST_0 O
load net matrix_out[2,2]_OBUF[0] -pin matrix_out[2,2][0]_INST_0 I -pin matrix_out[2,2][0]_INST_0_i_1 O
netloc matrix_out[2,2]_OBUF[0] 1 1 1 N 5640
load net matrix_out[2,2]_OBUF[1] -pin matrix_out[2,2][1]_INST_0 I -pin matrix_out[2,2][1]_INST_0_i_1 O
netloc matrix_out[2,2]_OBUF[1] 1 1 1 N 5710
load net matrix_out[2,2]_OBUF[2] -pin matrix_out[2,2][2]_INST_0 I -pin matrix_out[2,2][2]_INST_0_i_1 O
netloc matrix_out[2,2]_OBUF[2] 1 1 1 N 5780
load net matrix_out[2,2]_OBUF[3] -pin matrix_out[2,2][3]_INST_0 I -pin matrix_out[2,2][3]_INST_0_i_1 O
netloc matrix_out[2,2]_OBUF[3] 1 1 1 N 5850
load net matrix_out[2,2]_OBUF[4] -pin matrix_out[2,2][4]_INST_0 I -pin matrix_out[2,2][4]_INST_0_i_1 O
netloc matrix_out[2,2]_OBUF[4] 1 1 1 N 5920
load net matrix_out[2,2]_OBUF[5] -pin matrix_out[2,2][5]_INST_0 I -pin matrix_out[2,2][5]_INST_0_i_1 O
netloc matrix_out[2,2]_OBUF[5] 1 1 1 N 5990
load net matrix_out[2,2]_OBUF[6] -pin matrix_out[2,2][6]_INST_0 I -pin matrix_out[2,2][6]_INST_0_i_1 O
netloc matrix_out[2,2]_OBUF[6] 1 1 1 N 6060
load net matrix_out[2,2]_OBUF[7] -pin matrix_out[2,2][7]_INST_0 I -pin matrix_out[2,2][7]_INST_0_i_1 O
netloc matrix_out[2,2]_OBUF[7] 1 1 1 N 6130
load net matrix_out[2,3][0] -attr @rip(#000000) 0 -port matrix_out[2,3][0] -pin matrix_out[2,3][0]_INST_0 O
load net matrix_out[2,3][1] -attr @rip(#000000) 1 -port matrix_out[2,3][1] -pin matrix_out[2,3][1]_INST_0 O
load net matrix_out[2,3][2] -attr @rip(#000000) 2 -port matrix_out[2,3][2] -pin matrix_out[2,3][2]_INST_0 O
load net matrix_out[2,3][3] -attr @rip(#000000) 3 -port matrix_out[2,3][3] -pin matrix_out[2,3][3]_INST_0 O
load net matrix_out[2,3][4] -attr @rip(#000000) 4 -port matrix_out[2,3][4] -pin matrix_out[2,3][4]_INST_0 O
load net matrix_out[2,3][5] -attr @rip(#000000) 5 -port matrix_out[2,3][5] -pin matrix_out[2,3][5]_INST_0 O
load net matrix_out[2,3][6] -attr @rip(#000000) 6 -port matrix_out[2,3][6] -pin matrix_out[2,3][6]_INST_0 O
load net matrix_out[2,3][7] -attr @rip(#000000) 7 -port matrix_out[2,3][7] -pin matrix_out[2,3][7]_INST_0 O
load net matrix_out[2,3]_OBUF[0] -pin matrix_out[2,3][0]_INST_0 I -pin matrix_out[2,3][0]_INST_0_i_1 O
netloc matrix_out[2,3]_OBUF[0] 1 1 1 N 6200
load net matrix_out[2,3]_OBUF[1] -pin matrix_out[2,3][1]_INST_0 I -pin matrix_out[2,3][1]_INST_0_i_1 O
netloc matrix_out[2,3]_OBUF[1] 1 1 1 N 6270
load net matrix_out[2,3]_OBUF[2] -pin matrix_out[2,3][2]_INST_0 I -pin matrix_out[2,3][2]_INST_0_i_1 O
netloc matrix_out[2,3]_OBUF[2] 1 1 1 N 6340
load net matrix_out[2,3]_OBUF[3] -pin matrix_out[2,3][3]_INST_0 I -pin matrix_out[2,3][3]_INST_0_i_1 O
netloc matrix_out[2,3]_OBUF[3] 1 1 1 N 6410
load net matrix_out[2,3]_OBUF[4] -pin matrix_out[2,3][4]_INST_0 I -pin matrix_out[2,3][4]_INST_0_i_1 O
netloc matrix_out[2,3]_OBUF[4] 1 1 1 N 6480
load net matrix_out[2,3]_OBUF[5] -pin matrix_out[2,3][5]_INST_0 I -pin matrix_out[2,3][5]_INST_0_i_1 O
netloc matrix_out[2,3]_OBUF[5] 1 1 1 N 6550
load net matrix_out[2,3]_OBUF[6] -pin matrix_out[2,3][6]_INST_0 I -pin matrix_out[2,3][6]_INST_0_i_1 O
netloc matrix_out[2,3]_OBUF[6] 1 1 1 N 6620
load net matrix_out[2,3]_OBUF[7] -pin matrix_out[2,3][7]_INST_0 I -pin matrix_out[2,3][7]_INST_0_i_1 O
netloc matrix_out[2,3]_OBUF[7] 1 1 1 N 6690
load net matrix_out[3,0][0] -attr @rip(#000000) 0 -port matrix_out[3,0][0] -pin matrix_out[3,0][0]_INST_0 O
load net matrix_out[3,0][1] -attr @rip(#000000) 1 -port matrix_out[3,0][1] -pin matrix_out[3,0][1]_INST_0 O
load net matrix_out[3,0][2] -attr @rip(#000000) 2 -port matrix_out[3,0][2] -pin matrix_out[3,0][2]_INST_0 O
load net matrix_out[3,0][3] -attr @rip(#000000) 3 -port matrix_out[3,0][3] -pin matrix_out[3,0][3]_INST_0 O
load net matrix_out[3,0][4] -attr @rip(#000000) 4 -port matrix_out[3,0][4] -pin matrix_out[3,0][4]_INST_0 O
load net matrix_out[3,0][5] -attr @rip(#000000) 5 -port matrix_out[3,0][5] -pin matrix_out[3,0][5]_INST_0 O
load net matrix_out[3,0][6] -attr @rip(#000000) 6 -port matrix_out[3,0][6] -pin matrix_out[3,0][6]_INST_0 O
load net matrix_out[3,0][7] -attr @rip(#000000) 7 -port matrix_out[3,0][7] -pin matrix_out[3,0][7]_INST_0 O
load net matrix_out[3,0]_OBUF[0] -pin matrix_out[3,0][0]_INST_0 I -pin matrix_out[3,0][0]_INST_0_i_1 O
netloc matrix_out[3,0]_OBUF[0] 1 1 1 N 6760
load net matrix_out[3,0]_OBUF[1] -pin matrix_out[3,0][1]_INST_0 I -pin matrix_out[3,0][1]_INST_0_i_1 O
netloc matrix_out[3,0]_OBUF[1] 1 1 1 N 6830
load net matrix_out[3,0]_OBUF[2] -pin matrix_out[3,0][2]_INST_0 I -pin matrix_out[3,0][2]_INST_0_i_1 O
netloc matrix_out[3,0]_OBUF[2] 1 1 1 N 6900
load net matrix_out[3,0]_OBUF[3] -pin matrix_out[3,0][3]_INST_0 I -pin matrix_out[3,0][3]_INST_0_i_1 O
netloc matrix_out[3,0]_OBUF[3] 1 1 1 N 6970
load net matrix_out[3,0]_OBUF[4] -pin matrix_out[3,0][4]_INST_0 I -pin matrix_out[3,0][4]_INST_0_i_1 O
netloc matrix_out[3,0]_OBUF[4] 1 1 1 N 7040
load net matrix_out[3,0]_OBUF[5] -pin matrix_out[3,0][5]_INST_0 I -pin matrix_out[3,0][5]_INST_0_i_1 O
netloc matrix_out[3,0]_OBUF[5] 1 1 1 N 7110
load net matrix_out[3,0]_OBUF[6] -pin matrix_out[3,0][6]_INST_0 I -pin matrix_out[3,0][6]_INST_0_i_1 O
netloc matrix_out[3,0]_OBUF[6] 1 1 1 N 7180
load net matrix_out[3,0]_OBUF[7] -pin matrix_out[3,0][7]_INST_0 I -pin matrix_out[3,0][7]_INST_0_i_1 O
netloc matrix_out[3,0]_OBUF[7] 1 1 1 N 7250
load net matrix_out[3,1][0] -attr @rip(#000000) 0 -port matrix_out[3,1][0] -pin matrix_out[3,1][0]_INST_0 O
load net matrix_out[3,1][1] -attr @rip(#000000) 1 -port matrix_out[3,1][1] -pin matrix_out[3,1][1]_INST_0 O
load net matrix_out[3,1][2] -attr @rip(#000000) 2 -port matrix_out[3,1][2] -pin matrix_out[3,1][2]_INST_0 O
load net matrix_out[3,1][3] -attr @rip(#000000) 3 -port matrix_out[3,1][3] -pin matrix_out[3,1][3]_INST_0 O
load net matrix_out[3,1][4] -attr @rip(#000000) 4 -port matrix_out[3,1][4] -pin matrix_out[3,1][4]_INST_0 O
load net matrix_out[3,1][5] -attr @rip(#000000) 5 -port matrix_out[3,1][5] -pin matrix_out[3,1][5]_INST_0 O
load net matrix_out[3,1][6] -attr @rip(#000000) 6 -port matrix_out[3,1][6] -pin matrix_out[3,1][6]_INST_0 O
load net matrix_out[3,1][7] -attr @rip(#000000) 7 -port matrix_out[3,1][7] -pin matrix_out[3,1][7]_INST_0 O
load net matrix_out[3,1]_OBUF[0] -pin matrix_out[3,1][0]_INST_0 I -pin matrix_out[3,1][0]_INST_0_i_1 O
netloc matrix_out[3,1]_OBUF[0] 1 1 1 N 7320
load net matrix_out[3,1]_OBUF[1] -pin matrix_out[3,1][1]_INST_0 I -pin matrix_out[3,1][1]_INST_0_i_1 O
netloc matrix_out[3,1]_OBUF[1] 1 1 1 N 7390
load net matrix_out[3,1]_OBUF[2] -pin matrix_out[3,1][2]_INST_0 I -pin matrix_out[3,1][2]_INST_0_i_1 O
netloc matrix_out[3,1]_OBUF[2] 1 1 1 N 7460
load net matrix_out[3,1]_OBUF[3] -pin matrix_out[3,1][3]_INST_0 I -pin matrix_out[3,1][3]_INST_0_i_1 O
netloc matrix_out[3,1]_OBUF[3] 1 1 1 N 7530
load net matrix_out[3,1]_OBUF[4] -pin matrix_out[3,1][4]_INST_0 I -pin matrix_out[3,1][4]_INST_0_i_1 O
netloc matrix_out[3,1]_OBUF[4] 1 1 1 N 7600
load net matrix_out[3,1]_OBUF[5] -pin matrix_out[3,1][5]_INST_0 I -pin matrix_out[3,1][5]_INST_0_i_1 O
netloc matrix_out[3,1]_OBUF[5] 1 1 1 N 7670
load net matrix_out[3,1]_OBUF[6] -pin matrix_out[3,1][6]_INST_0 I -pin matrix_out[3,1][6]_INST_0_i_1 O
netloc matrix_out[3,1]_OBUF[6] 1 1 1 N 7740
load net matrix_out[3,1]_OBUF[7] -pin matrix_out[3,1][7]_INST_0 I -pin matrix_out[3,1][7]_INST_0_i_1 O
netloc matrix_out[3,1]_OBUF[7] 1 1 1 N 7810
load net matrix_out[3,2][0] -attr @rip(#000000) 0 -port matrix_out[3,2][0] -pin matrix_out[3,2][0]_INST_0 O
load net matrix_out[3,2][1] -attr @rip(#000000) 1 -port matrix_out[3,2][1] -pin matrix_out[3,2][1]_INST_0 O
load net matrix_out[3,2][2] -attr @rip(#000000) 2 -port matrix_out[3,2][2] -pin matrix_out[3,2][2]_INST_0 O
load net matrix_out[3,2][3] -attr @rip(#000000) 3 -port matrix_out[3,2][3] -pin matrix_out[3,2][3]_INST_0 O
load net matrix_out[3,2][4] -attr @rip(#000000) 4 -port matrix_out[3,2][4] -pin matrix_out[3,2][4]_INST_0 O
load net matrix_out[3,2][5] -attr @rip(#000000) 5 -port matrix_out[3,2][5] -pin matrix_out[3,2][5]_INST_0 O
load net matrix_out[3,2][6] -attr @rip(#000000) 6 -port matrix_out[3,2][6] -pin matrix_out[3,2][6]_INST_0 O
load net matrix_out[3,2][7] -attr @rip(#000000) 7 -port matrix_out[3,2][7] -pin matrix_out[3,2][7]_INST_0 O
load net matrix_out[3,2]_OBUF[0] -pin matrix_out[3,2][0]_INST_0 I -pin matrix_out[3,2][0]_INST_0_i_1 O
netloc matrix_out[3,2]_OBUF[0] 1 1 1 N 7880
load net matrix_out[3,2]_OBUF[1] -pin matrix_out[3,2][1]_INST_0 I -pin matrix_out[3,2][1]_INST_0_i_1 O
netloc matrix_out[3,2]_OBUF[1] 1 1 1 N 7950
load net matrix_out[3,2]_OBUF[2] -pin matrix_out[3,2][2]_INST_0 I -pin matrix_out[3,2][2]_INST_0_i_1 O
netloc matrix_out[3,2]_OBUF[2] 1 1 1 N 8020
load net matrix_out[3,2]_OBUF[3] -pin matrix_out[3,2][3]_INST_0 I -pin matrix_out[3,2][3]_INST_0_i_1 O
netloc matrix_out[3,2]_OBUF[3] 1 1 1 N 8090
load net matrix_out[3,2]_OBUF[4] -pin matrix_out[3,2][4]_INST_0 I -pin matrix_out[3,2][4]_INST_0_i_1 O
netloc matrix_out[3,2]_OBUF[4] 1 1 1 N 8160
load net matrix_out[3,2]_OBUF[5] -pin matrix_out[3,2][5]_INST_0 I -pin matrix_out[3,2][5]_INST_0_i_1 O
netloc matrix_out[3,2]_OBUF[5] 1 1 1 N 8230
load net matrix_out[3,2]_OBUF[6] -pin matrix_out[3,2][6]_INST_0 I -pin matrix_out[3,2][6]_INST_0_i_1 O
netloc matrix_out[3,2]_OBUF[6] 1 1 1 N 8300
load net matrix_out[3,2]_OBUF[7] -pin matrix_out[3,2][7]_INST_0 I -pin matrix_out[3,2][7]_INST_0_i_1 O
netloc matrix_out[3,2]_OBUF[7] 1 1 1 N 8370
load net matrix_out[3,3][0] -attr @rip(#000000) 0 -port matrix_out[3,3][0] -pin matrix_out[3,3][0]_INST_0 O
load net matrix_out[3,3][1] -attr @rip(#000000) 1 -port matrix_out[3,3][1] -pin matrix_out[3,3][1]_INST_0 O
load net matrix_out[3,3][2] -attr @rip(#000000) 2 -port matrix_out[3,3][2] -pin matrix_out[3,3][2]_INST_0 O
load net matrix_out[3,3][3] -attr @rip(#000000) 3 -port matrix_out[3,3][3] -pin matrix_out[3,3][3]_INST_0 O
load net matrix_out[3,3][4] -attr @rip(#000000) 4 -port matrix_out[3,3][4] -pin matrix_out[3,3][4]_INST_0 O
load net matrix_out[3,3][5] -attr @rip(#000000) 5 -port matrix_out[3,3][5] -pin matrix_out[3,3][5]_INST_0 O
load net matrix_out[3,3][6] -attr @rip(#000000) 6 -port matrix_out[3,3][6] -pin matrix_out[3,3][6]_INST_0 O
load net matrix_out[3,3][7] -attr @rip(#000000) 7 -port matrix_out[3,3][7] -pin matrix_out[3,3][7]_INST_0 O
load net matrix_out[3,3]_OBUF[0] -pin matrix_out[3,3][0]_INST_0 I -pin matrix_out[3,3][0]_INST_0_i_1 O
netloc matrix_out[3,3]_OBUF[0] 1 1 1 N 8440
load net matrix_out[3,3]_OBUF[1] -pin matrix_out[3,3][1]_INST_0 I -pin matrix_out[3,3][1]_INST_0_i_1 O
netloc matrix_out[3,3]_OBUF[1] 1 1 1 N 8510
load net matrix_out[3,3]_OBUF[2] -pin matrix_out[3,3][2]_INST_0 I -pin matrix_out[3,3][2]_INST_0_i_1 O
netloc matrix_out[3,3]_OBUF[2] 1 1 1 N 8580
load net matrix_out[3,3]_OBUF[3] -pin matrix_out[3,3][3]_INST_0 I -pin matrix_out[3,3][3]_INST_0_i_1 O
netloc matrix_out[3,3]_OBUF[3] 1 1 1 N 8650
load net matrix_out[3,3]_OBUF[4] -pin matrix_out[3,3][4]_INST_0 I -pin matrix_out[3,3][4]_INST_0_i_1 O
netloc matrix_out[3,3]_OBUF[4] 1 1 1 N 8720
load net matrix_out[3,3]_OBUF[5] -pin matrix_out[3,3][5]_INST_0 I -pin matrix_out[3,3][5]_INST_0_i_1 O
netloc matrix_out[3,3]_OBUF[5] 1 1 1 N 8790
load net matrix_out[3,3]_OBUF[6] -pin matrix_out[3,3][6]_INST_0 I -pin matrix_out[3,3][6]_INST_0_i_1 O
netloc matrix_out[3,3]_OBUF[6] 1 1 1 N 8860
load net matrix_out[3,3]_OBUF[7] -pin matrix_out[3,3][7]_INST_0 I -pin matrix_out[3,3][7]_INST_0_i_1 O
netloc matrix_out[3,3]_OBUF[7] 1 1 1 N 8930
load netBundle @matrix_in 8 matrix_in[0,0][7] matrix_in[0,0][6] matrix_in[0,0][5] matrix_in[0,0][4] matrix_in[0,0][3] matrix_in[0,0][2] matrix_in[0,0][1] matrix_in[0,0][0] -autobundled
netbloc @matrix_in 1 0 1 20 40n
load netBundle @matrix_in_1 8 matrix_in[0,1][7] matrix_in[0,1][6] matrix_in[0,1][5] matrix_in[0,1][4] matrix_in[0,1][3] matrix_in[0,1][2] matrix_in[0,1][1] matrix_in[0,1][0] -autobundled
netbloc @matrix_in_1 1 0 1 20 600n
load netBundle @matrix_in_2 8 matrix_in[0,2][7] matrix_in[0,2][6] matrix_in[0,2][5] matrix_in[0,2][4] matrix_in[0,2][3] matrix_in[0,2][2] matrix_in[0,2][1] matrix_in[0,2][0] -autobundled
netbloc @matrix_in_2 1 0 1 20 1160n
load netBundle @matrix_in_3 8 matrix_in[0,3][7] matrix_in[0,3][6] matrix_in[0,3][5] matrix_in[0,3][4] matrix_in[0,3][3] matrix_in[0,3][2] matrix_in[0,3][1] matrix_in[0,3][0] -autobundled
netbloc @matrix_in_3 1 0 1 20 1720n
load netBundle @matrix_in_4 8 matrix_in[1,0][7] matrix_in[1,0][6] matrix_in[1,0][5] matrix_in[1,0][4] matrix_in[1,0][3] matrix_in[1,0][2] matrix_in[1,0][1] matrix_in[1,0][0] -autobundled
netbloc @matrix_in_4 1 0 1 20 3960n
load netBundle @matrix_in_5 8 matrix_in[1,1][7] matrix_in[1,1][6] matrix_in[1,1][5] matrix_in[1,1][4] matrix_in[1,1][3] matrix_in[1,1][2] matrix_in[1,1][1] matrix_in[1,1][0] -autobundled
netbloc @matrix_in_5 1 0 1 20 2280n
load netBundle @matrix_in_6 8 matrix_in[1,2][7] matrix_in[1,2][6] matrix_in[1,2][5] matrix_in[1,2][4] matrix_in[1,2][3] matrix_in[1,2][2] matrix_in[1,2][1] matrix_in[1,2][0] -autobundled
netbloc @matrix_in_6 1 0 1 20 2840n
load netBundle @matrix_in_7 8 matrix_in[1,3][7] matrix_in[1,3][6] matrix_in[1,3][5] matrix_in[1,3][4] matrix_in[1,3][3] matrix_in[1,3][2] matrix_in[1,3][1] matrix_in[1,3][0] -autobundled
netbloc @matrix_in_7 1 0 1 20 3400n
load netBundle @matrix_in_8 8 matrix_in[2,0][7] matrix_in[2,0][6] matrix_in[2,0][5] matrix_in[2,0][4] matrix_in[2,0][3] matrix_in[2,0][2] matrix_in[2,0][1] matrix_in[2,0][0] -autobundled
netbloc @matrix_in_8 1 0 1 20 5640n
load netBundle @matrix_in_9 8 matrix_in[2,1][7] matrix_in[2,1][6] matrix_in[2,1][5] matrix_in[2,1][4] matrix_in[2,1][3] matrix_in[2,1][2] matrix_in[2,1][1] matrix_in[2,1][0] -autobundled
netbloc @matrix_in_9 1 0 1 20 6200n
load netBundle @matrix_in_10 8 matrix_in[2,2][7] matrix_in[2,2][6] matrix_in[2,2][5] matrix_in[2,2][4] matrix_in[2,2][3] matrix_in[2,2][2] matrix_in[2,2][1] matrix_in[2,2][0] -autobundled
netbloc @matrix_in_10 1 0 1 20 4520n
load netBundle @matrix_in_11 8 matrix_in[2,3][7] matrix_in[2,3][6] matrix_in[2,3][5] matrix_in[2,3][4] matrix_in[2,3][3] matrix_in[2,3][2] matrix_in[2,3][1] matrix_in[2,3][0] -autobundled
netbloc @matrix_in_11 1 0 1 20 5080n
load netBundle @matrix_in_12 8 matrix_in[3,0][7] matrix_in[3,0][6] matrix_in[3,0][5] matrix_in[3,0][4] matrix_in[3,0][3] matrix_in[3,0][2] matrix_in[3,0][1] matrix_in[3,0][0] -autobundled
netbloc @matrix_in_12 1 0 1 20 7320n
load netBundle @matrix_in_13 8 matrix_in[3,1][7] matrix_in[3,1][6] matrix_in[3,1][5] matrix_in[3,1][4] matrix_in[3,1][3] matrix_in[3,1][2] matrix_in[3,1][1] matrix_in[3,1][0] -autobundled
netbloc @matrix_in_13 1 0 1 20 7880n
load netBundle @matrix_in_14 8 matrix_in[3,2][7] matrix_in[3,2][6] matrix_in[3,2][5] matrix_in[3,2][4] matrix_in[3,2][3] matrix_in[3,2][2] matrix_in[3,2][1] matrix_in[3,2][0] -autobundled
netbloc @matrix_in_14 1 0 1 20 8440n
load netBundle @matrix_in_15 8 matrix_in[3,3][7] matrix_in[3,3][6] matrix_in[3,3][5] matrix_in[3,3][4] matrix_in[3,3][3] matrix_in[3,3][2] matrix_in[3,3][1] matrix_in[3,3][0] -autobundled
netbloc @matrix_in_15 1 0 1 20 6760n
load netBundle @matrix_out 8 matrix_out[0,0][7] matrix_out[0,0][6] matrix_out[0,0][5] matrix_out[0,0][4] matrix_out[0,0][3] matrix_out[0,0][2] matrix_out[0,0][1] matrix_out[0,0][0] -autobundled
netbloc @matrix_out 1 2 1 500 40n
load netBundle @matrix_out_1 8 matrix_out[0,1][7] matrix_out[0,1][6] matrix_out[0,1][5] matrix_out[0,1][4] matrix_out[0,1][3] matrix_out[0,1][2] matrix_out[0,1][1] matrix_out[0,1][0] -autobundled
netbloc @matrix_out_1 1 2 1 500 600n
load netBundle @matrix_out_2 8 matrix_out[0,2][7] matrix_out[0,2][6] matrix_out[0,2][5] matrix_out[0,2][4] matrix_out[0,2][3] matrix_out[0,2][2] matrix_out[0,2][1] matrix_out[0,2][0] -autobundled
netbloc @matrix_out_2 1 2 1 500 1160n
load netBundle @matrix_out_3 8 matrix_out[0,3][7] matrix_out[0,3][6] matrix_out[0,3][5] matrix_out[0,3][4] matrix_out[0,3][3] matrix_out[0,3][2] matrix_out[0,3][1] matrix_out[0,3][0] -autobundled
netbloc @matrix_out_3 1 2 1 500 1720n
load netBundle @matrix_out_4 8 matrix_out[1,0][7] matrix_out[1,0][6] matrix_out[1,0][5] matrix_out[1,0][4] matrix_out[1,0][3] matrix_out[1,0][2] matrix_out[1,0][1] matrix_out[1,0][0] -autobundled
netbloc @matrix_out_4 1 2 1 500 2280n
load netBundle @matrix_out_5 8 matrix_out[1,1][7] matrix_out[1,1][6] matrix_out[1,1][5] matrix_out[1,1][4] matrix_out[1,1][3] matrix_out[1,1][2] matrix_out[1,1][1] matrix_out[1,1][0] -autobundled
netbloc @matrix_out_5 1 2 1 500 2840n
load netBundle @matrix_out_6 8 matrix_out[1,2][7] matrix_out[1,2][6] matrix_out[1,2][5] matrix_out[1,2][4] matrix_out[1,2][3] matrix_out[1,2][2] matrix_out[1,2][1] matrix_out[1,2][0] -autobundled
netbloc @matrix_out_6 1 2 1 500 3400n
load netBundle @matrix_out_7 8 matrix_out[1,3][7] matrix_out[1,3][6] matrix_out[1,3][5] matrix_out[1,3][4] matrix_out[1,3][3] matrix_out[1,3][2] matrix_out[1,3][1] matrix_out[1,3][0] -autobundled
netbloc @matrix_out_7 1 2 1 500 3960n
load netBundle @matrix_out_8 8 matrix_out[2,0][7] matrix_out[2,0][6] matrix_out[2,0][5] matrix_out[2,0][4] matrix_out[2,0][3] matrix_out[2,0][2] matrix_out[2,0][1] matrix_out[2,0][0] -autobundled
netbloc @matrix_out_8 1 2 1 500 4520n
load netBundle @matrix_out_9 8 matrix_out[2,1][7] matrix_out[2,1][6] matrix_out[2,1][5] matrix_out[2,1][4] matrix_out[2,1][3] matrix_out[2,1][2] matrix_out[2,1][1] matrix_out[2,1][0] -autobundled
netbloc @matrix_out_9 1 2 1 500 5080n
load netBundle @matrix_out_10 8 matrix_out[2,2][7] matrix_out[2,2][6] matrix_out[2,2][5] matrix_out[2,2][4] matrix_out[2,2][3] matrix_out[2,2][2] matrix_out[2,2][1] matrix_out[2,2][0] -autobundled
netbloc @matrix_out_10 1 2 1 500 5640n
load netBundle @matrix_out_11 8 matrix_out[2,3][7] matrix_out[2,3][6] matrix_out[2,3][5] matrix_out[2,3][4] matrix_out[2,3][3] matrix_out[2,3][2] matrix_out[2,3][1] matrix_out[2,3][0] -autobundled
netbloc @matrix_out_11 1 2 1 500 6200n
load netBundle @matrix_out_12 8 matrix_out[3,0][7] matrix_out[3,0][6] matrix_out[3,0][5] matrix_out[3,0][4] matrix_out[3,0][3] matrix_out[3,0][2] matrix_out[3,0][1] matrix_out[3,0][0] -autobundled
netbloc @matrix_out_12 1 2 1 500 6760n
load netBundle @matrix_out_13 8 matrix_out[3,1][7] matrix_out[3,1][6] matrix_out[3,1][5] matrix_out[3,1][4] matrix_out[3,1][3] matrix_out[3,1][2] matrix_out[3,1][1] matrix_out[3,1][0] -autobundled
netbloc @matrix_out_13 1 2 1 500 7320n
load netBundle @matrix_out_14 8 matrix_out[3,2][7] matrix_out[3,2][6] matrix_out[3,2][5] matrix_out[3,2][4] matrix_out[3,2][3] matrix_out[3,2][2] matrix_out[3,2][1] matrix_out[3,2][0] -autobundled
netbloc @matrix_out_14 1 2 1 500 7880n
load netBundle @matrix_out_15 8 matrix_out[3,3][7] matrix_out[3,3][6] matrix_out[3,3][5] matrix_out[3,3][4] matrix_out[3,3][3] matrix_out[3,3][2] matrix_out[3,3][1] matrix_out[3,3][0] -autobundled
netbloc @matrix_out_15 1 2 1 500 8440n
levelinfo -pg 1 0 60 300 520
pagesize -pg 1 -db -bbox -sgen -160 0 690 8970
show
zoom 2.03729
scrollpos -605 -47
#
# initialize ictrl to current module shift_rows work:shift_rows:NOFILE
ictrl init topinfo |
