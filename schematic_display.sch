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
module new display work:display:NOFILE -nosplit
load symbol OBUF hdi_primitives BUF pin O output pin I input fillcolor 1
load symbol LUT3 hdi_primitives BOX pin O output.right pin I0 input.left pin I1 input.left pin I2 input.left fillcolor 1
load symbol BUFG hdi_primitives BUF pin O output pin I input fillcolor 1
load symbol IBUF hdi_primitives BUF pin O output pin I input fillcolor 1
load symbol LUT1 hdi_primitives BOX pin O output.right pin I0 input.left fillcolor 1
load symbol LUT6 hdi_primitives BOX pin O output.right pin I0 input.left pin I1 input.left pin I2 input.left pin I3 input.left pin I4 input.left pin I5 input.left fillcolor 1
load symbol FDRE hdi_primitives GEN pin Q output.right pin C input.clk.left pin CE input.left pin D input.left pin R input.left fillcolor 1
load symbol CARRY4 hdi_primitives BOX pin CI input.left pin CYINIT input.left pinBus CO output.right [3:0] pinBus O output.right [3:0] pinBus DI input.left [3:0] pinBus S input.left [3:0] fillcolor 1
load symbol LUT2 hdi_primitives BOX pin O output.right pin I0 input.left pin I1 input.left fillcolor 1
load port clk input -pg 1 -lvl 0 -x 0 -y 750
load port show_aes input -pg 1 -lvl 0 -x 0 -y 950
load portBus an output [3:0] -attr @name an[3:0] -pg 1 -lvl 16 -x 3900 -y 260
load portBus seg output [6:0] -attr @name seg[6:0] -pg 1 -lvl 16 -x 3900 -y 580
load inst an_OBUF[0]_inst OBUF hdi_primitives -attr @cell(#000000) OBUF -pg 1 -lvl 15 -x 3730 -y 260
load inst an_OBUF[0]_inst_i_1 LUT3 hdi_primitives -attr @cell(#000000) LUT3 -pg 1 -lvl 14 -x 3520 -y 230
load inst an_OBUF[1]_inst OBUF hdi_primitives -attr @cell(#000000) OBUF -pg 1 -lvl 15 -x 3730 -y 370
load inst an_OBUF[1]_inst_i_1 LUT3 hdi_primitives -attr @cell(#000000) LUT3 -pg 1 -lvl 14 -x 3520 -y 340
load inst an_OBUF[2]_inst OBUF hdi_primitives -attr @cell(#000000) OBUF -pg 1 -lvl 15 -x 3730 -y 440
load inst an_OBUF[2]_inst_i_1 LUT3 hdi_primitives -attr @cell(#000000) LUT3 -pg 1 -lvl 14 -x 3520 -y 450
load inst an_OBUF[3]_inst OBUF hdi_primitives -attr @cell(#000000) OBUF -pg 1 -lvl 15 -x 3730 -y 510
load inst an_OBUF[3]_inst_i_1 LUT3 hdi_primitives -attr @cell(#000000) LUT3 -pg 1 -lvl 14 -x 3520 -y 560
load inst clk_IBUF_BUFG_inst BUFG hdi_primitives -attr @cell(#000000) BUFG -pg 1 -lvl 2 -x 240 -y 750
load inst clk_IBUF_inst IBUF hdi_primitives -attr @cell(#000000) IBUF -pg 1 -lvl 1 -x 40 -y 750
load inst display_div_count[0]_i_1 LUT1 hdi_primitives -attr @cell(#000000) LUT1 -pg 1 -lvl 2 -x 240 -y 190
load inst display_div_count[15]_i_1 LUT6 hdi_primitives -attr @cell(#000000) LUT6 -pg 1 -lvl 9 -x 2400 -y 520
load inst display_div_count[15]_i_3 LUT6 hdi_primitives -attr @cell(#000000) LUT6 -pg 1 -lvl 8 -x 2160 -y 520
load inst display_div_count[15]_i_4 LUT6 hdi_primitives -attr @cell(#000000) LUT6 -pg 1 -lvl 7 -x 1800 -y 760
load inst display_div_count_reg[0] FDRE hdi_primitives -attr @cell(#000000) FDRE -pg 1 -lvl 3 -x 540 -y 190
load inst display_div_count_reg[10] FDRE hdi_primitives -attr @cell(#000000) FDRE -pg 1 -lvl 5 -x 1220 -y 250
load inst display_div_count_reg[11] FDRE hdi_primitives -attr @cell(#000000) FDRE -pg 1 -lvl 5 -x 1220 -y 400
load inst display_div_count_reg[12] FDRE hdi_primitives -attr @cell(#000000) FDRE -pg 1 -lvl 5 -x 1220 -y 620
load inst display_div_count_reg[12]_i_1 CARRY4 hdi_primitives -attr @cell(#000000) CARRY4 -pinBusAttr CO @name CO[3:0] -pinBusAttr O @name O[3:0] -pinBusAttr DI @name DI[3:0] -pinBusAttr S @name S[3:0] -pg 1 -lvl 6 -x 1500 -y 330
load inst display_div_count_reg[13] FDRE hdi_primitives -attr @cell(#000000) FDRE -pg 1 -lvl 8 -x 2160 -y 90
load inst display_div_count_reg[14] FDRE hdi_primitives -attr @cell(#000000) FDRE -pg 1 -lvl 8 -x 2160 -y 240
load inst display_div_count_reg[15] FDRE hdi_primitives -attr @cell(#000000) FDRE -pg 1 -lvl 8 -x 2160 -y 390
load inst display_div_count_reg[15]_i_2 CARRY4 hdi_primitives -attr @cell(#000000) CARRY4 -pinBusAttr CO @name CO[3:0] -pinBusAttr O @name O[3:0] -pinBusAttr DI @name DI[3:0] -pinBusAttr S @name S[3:0] -pg 1 -lvl 7 -x 1800 -y 350
load inst display_div_count_reg[1] FDRE hdi_primitives -attr @cell(#000000) FDRE -pg 1 -lvl 3 -x 540 -y 370
load inst display_div_count_reg[2] FDRE hdi_primitives -attr @cell(#000000) FDRE -pg 1 -lvl 3 -x 540 -y 520
load inst display_div_count_reg[3] FDRE hdi_primitives -attr @cell(#000000) FDRE -pg 1 -lvl 3 -x 540 -y 700
load inst display_div_count_reg[4] FDRE hdi_primitives -attr @cell(#000000) FDRE -pg 1 -lvl 3 -x 540 -y 850
load inst display_div_count_reg[4]_i_1 CARRY4 hdi_primitives -attr @cell(#000000) CARRY4 -pinBusAttr CO @name CO[3:0] -pinBusAttr O @name O[3:0] -pinBusAttr DI @name DI[3:0] -pinBusAttr S @name S[3:0] -pg 1 -lvl 4 -x 860 -y 720
load inst display_div_count_reg[5] FDRE hdi_primitives -attr @cell(#000000) FDRE -pg 1 -lvl 4 -x 860 -y 110
load inst display_div_count_reg[6] FDRE hdi_primitives -attr @cell(#000000) FDRE -pg 1 -lvl 4 -x 860 -y 290
load inst display_div_count_reg[7] FDRE hdi_primitives -attr @cell(#000000) FDRE -pg 1 -lvl 4 -x 860 -y 440
load inst display_div_count_reg[8] FDRE hdi_primitives -attr @cell(#000000) FDRE -pg 1 -lvl 4 -x 860 -y 620
load inst display_div_count_reg[8]_i_1 CARRY4 hdi_primitives -attr @cell(#000000) CARRY4 -pinBusAttr CO @name CO[3:0] -pinBusAttr O @name O[3:0] -pinBusAttr DI @name DI[3:0] -pinBusAttr S @name S[3:0] -pg 1 -lvl 5 -x 1220 -y 720
load inst display_div_count_reg[9] FDRE hdi_primitives -attr @cell(#000000) FDRE -pg 1 -lvl 5 -x 1220 -y 100
load inst seg_OBUF[0]_inst OBUF hdi_primitives -attr @cell(#000000) OBUF -pg 1 -lvl 15 -x 3730 -y 580
load inst seg_OBUF[1]_inst OBUF hdi_primitives -attr @cell(#000000) OBUF -pg 1 -lvl 15 -x 3730 -y 650
load inst seg_OBUF[2]_inst OBUF hdi_primitives -attr @cell(#000000) OBUF -pg 1 -lvl 15 -x 3730 -y 720
load inst seg_OBUF[2]_inst_i_1 LUT2 hdi_primitives -attr @cell(#000000) LUT2 -pg 1 -lvl 14 -x 3520 -y 670
load inst seg_OBUF[3]_inst OBUF hdi_primitives -attr @cell(#000000) OBUF -pg 1 -lvl 15 -x 3730 -y 790
load inst seg_OBUF[3]_inst_i_1 LUT2 hdi_primitives -attr @cell(#000000) LUT2 -pg 1 -lvl 14 -x 3520 -y 760
load inst seg_OBUF[4]_inst OBUF hdi_primitives -attr @cell(#000000) OBUF -pg 1 -lvl 15 -x 3730 -y 860
load inst seg_OBUF[4]_inst_i_1 LUT3 hdi_primitives -attr @cell(#000000) LUT3 -pg 1 -lvl 14 -x 3520 -y 850
load inst seg_OBUF[5]_inst OBUF hdi_primitives -attr @cell(#000000) OBUF -pg 1 -lvl 15 -x 3730 -y 930
load inst seg_OBUF[6]_inst OBUF hdi_primitives -attr @cell(#000000) OBUF -pg 1 -lvl 15 -x 3730 -y 1000
load inst seg_OBUF[6]_inst_i_1 LUT3 hdi_primitives -attr @cell(#000000) LUT3 -pg 1 -lvl 14 -x 3520 -y 960
load inst selected_digit[0]_i_1 LUT2 hdi_primitives -attr @cell(#000000) LUT2 -pg 1 -lvl 10 -x 2620 -y 720
load inst selected_digit[1]_i_1 LUT3 hdi_primitives -attr @cell(#000000) LUT3 -pg 1 -lvl 12 -x 3040 -y 810
load inst selected_digit_reg[0] FDRE hdi_primitives -attr @cell(#000000) FDRE -pg 1 -lvl 11 -x 2830 -y 720
load inst selected_digit_reg[1] FDRE hdi_primitives -attr @cell(#000000) FDRE -pg 1 -lvl 13 -x 3250 -y 700
load inst show_aes_IBUF_inst IBUF hdi_primitives -attr @cell(#000000) IBUF -pg 1 -lvl 13 -x 3250 -y 950
load net <const0> -ground -pin display_div_count_reg[12]_i_1 CYINIT -pin display_div_count_reg[12]_i_1 DI[3] -pin display_div_count_reg[12]_i_1 DI[2] -pin display_div_count_reg[12]_i_1 DI[1] -pin display_div_count_reg[12]_i_1 DI[0] -pin display_div_count_reg[15]_i_2 CYINIT -pin display_div_count_reg[15]_i_2 DI[3] -pin display_div_count_reg[15]_i_2 DI[2] -pin display_div_count_reg[15]_i_2 DI[1] -pin display_div_count_reg[15]_i_2 DI[0] -pin display_div_count_reg[15]_i_2 S[3] -pin display_div_count_reg[4]_i_1 CI -pin display_div_count_reg[4]_i_1 DI[3] -pin display_div_count_reg[4]_i_1 DI[2] -pin display_div_count_reg[4]_i_1 DI[1] -pin display_div_count_reg[4]_i_1 DI[0] -pin display_div_count_reg[8]_i_1 CYINIT -pin display_div_count_reg[8]_i_1 DI[3] -pin display_div_count_reg[8]_i_1 DI[2] -pin display_div_count_reg[8]_i_1 DI[1] -pin display_div_count_reg[8]_i_1 DI[0] -pin selected_digit_reg[0] R -pin selected_digit_reg[1] R
load net <const1> -power -pin display_div_count_reg[0] CE -pin display_div_count_reg[10] CE -pin display_div_count_reg[11] CE -pin display_div_count_reg[12] CE -pin display_div_count_reg[13] CE -pin display_div_count_reg[14] CE -pin display_div_count_reg[15] CE -pin display_div_count_reg[1] CE -pin display_div_count_reg[2] CE -pin display_div_count_reg[3] CE -pin display_div_count_reg[4] CE -pin display_div_count_reg[5] CE -pin display_div_count_reg[6] CE -pin display_div_count_reg[7] CE -pin display_div_count_reg[8] CE -pin display_div_count_reg[9] CE -pin selected_digit_reg[0] CE -pin selected_digit_reg[1] CE
load net an[0] -attr @rip(#000000) 0 -port an[0] -pin an_OBUF[0]_inst O
load net an[1] -attr @rip(#000000) 1 -port an[1] -pin an_OBUF[1]_inst O
load net an[2] -attr @rip(#000000) 2 -port an[2] -pin an_OBUF[2]_inst O
load net an[3] -attr @rip(#000000) 3 -port an[3] -pin an_OBUF[3]_inst O
load net an_OBUF[0] -pin an_OBUF[0]_inst I -pin an_OBUF[0]_inst_i_1 O
netloc an_OBUF[0] 1 14 1 N 260
load net an_OBUF[1] -pin an_OBUF[1]_inst I -pin an_OBUF[1]_inst_i_1 O
netloc an_OBUF[1] 1 14 1 N 370
load net an_OBUF[3] -pin an_OBUF[3]_inst I -pin an_OBUF[3]_inst_i_1 O
netloc an_OBUF[3] 1 14 1 3650 510n
load net clk -port clk -pin clk_IBUF_inst I
netloc clk 1 0 1 NJ 750
load net clk_IBUF -pin clk_IBUF_BUFG_inst I -pin clk_IBUF_inst O
netloc clk_IBUF 1 1 1 NJ 750
load net clk_IBUF_BUFG -pin clk_IBUF_BUFG_inst O -pin display_div_count_reg[0] C -pin display_div_count_reg[10] C -pin display_div_count_reg[11] C -pin display_div_count_reg[12] C -pin display_div_count_reg[13] C -pin display_div_count_reg[14] C -pin display_div_count_reg[15] C -pin display_div_count_reg[1] C -pin display_div_count_reg[2] C -pin display_div_count_reg[3] C -pin display_div_count_reg[4] C -pin display_div_count_reg[5] C -pin display_div_count_reg[6] C -pin display_div_count_reg[7] C -pin display_div_count_reg[8] C -pin display_div_count_reg[9] C -pin selected_digit_reg[0] C -pin selected_digit_reg[1] C
netloc clk_IBUF_BUFG 1 2 11 400 270 740 190 1100 520 NJ 520 NJ 520 1980 690 NJ 690 NJ 690 2740 620 NJ 620 3160
load net display_div_count[0] -pin display_div_count[0]_i_1 I0 -pin display_div_count[15]_i_4 I3 -pin display_div_count_reg[0] Q -pin display_div_count_reg[4]_i_1 CYINIT
netloc display_div_count[0] 1 1 6 160 90 NJ 90 700 850 NJ 850 NJ 850 1680
load net display_div_count[10] -attr @rip(#000000) 1 -pin display_div_count[15]_i_3 I5 -pin display_div_count_reg[10] Q -pin display_div_count_reg[12]_i_1 S[1]
load net display_div_count[11] -attr @rip(#000000) 2 -pin display_div_count[15]_i_1 I3 -pin display_div_count_reg[11] Q -pin display_div_count_reg[12]_i_1 S[2]
load net display_div_count[12] -attr @rip(#000000) 3 -pin display_div_count[15]_i_1 I4 -pin display_div_count_reg[12] Q -pin display_div_count_reg[12]_i_1 S[3]
load net display_div_count[13] -attr @rip(#000000) 0 -pin display_div_count[15]_i_1 I0 -pin display_div_count_reg[13] Q -pin display_div_count_reg[15]_i_2 S[0]
load net display_div_count[14] -attr @rip(#000000) 1 -pin display_div_count[15]_i_1 I1 -pin display_div_count_reg[14] Q -pin display_div_count_reg[15]_i_2 S[1]
load net display_div_count[15] -attr @rip(#000000) 2 -pin display_div_count[15]_i_1 I5 -pin display_div_count_reg[15] Q -pin display_div_count_reg[15]_i_2 S[2]
load net display_div_count[15]_i_3_n_0 -pin display_div_count[15]_i_1 I2 -pin display_div_count[15]_i_3 O
netloc display_div_count[15]_i_3_n_0 1 8 1 N 570
load net display_div_count[15]_i_4_n_0 -pin display_div_count[15]_i_3 I2 -pin display_div_count[15]_i_4 O
netloc display_div_count[15]_i_4_n_0 1 7 1 2080 570n
load net display_div_count[1] -attr @rip(#000000) 0 -pin display_div_count[15]_i_4 I2 -pin display_div_count_reg[1] Q -pin display_div_count_reg[4]_i_1 S[0]
load net display_div_count[2] -attr @rip(#000000) 1 -pin display_div_count[15]_i_4 I1 -pin display_div_count_reg[2] Q -pin display_div_count_reg[4]_i_1 S[1]
load net display_div_count[3] -attr @rip(#000000) 2 -pin display_div_count[15]_i_4 I4 -pin display_div_count_reg[3] Q -pin display_div_count_reg[4]_i_1 S[2]
load net display_div_count[4] -attr @rip(#000000) 3 -pin display_div_count[15]_i_4 I0 -pin display_div_count_reg[4] Q -pin display_div_count_reg[4]_i_1 S[3]
load net display_div_count[5] -attr @rip(#000000) 0 -pin display_div_count[15]_i_4 I5 -pin display_div_count_reg[5] Q -pin display_div_count_reg[8]_i_1 S[0]
load net display_div_count[6] -attr @rip(#000000) 1 -pin display_div_count[15]_i_3 I1 -pin display_div_count_reg[6] Q -pin display_div_count_reg[8]_i_1 S[1]
load net display_div_count[7] -attr @rip(#000000) 2 -pin display_div_count[15]_i_3 I3 -pin display_div_count_reg[7] Q -pin display_div_count_reg[8]_i_1 S[2]
load net display_div_count[8] -attr @rip(#000000) 3 -pin display_div_count[15]_i_3 I4 -pin display_div_count_reg[8] Q -pin display_div_count_reg[8]_i_1 S[3]
load net display_div_count[9] -attr @rip(#000000) 0 -pin display_div_count[15]_i_3 I0 -pin display_div_count_reg[12]_i_1 S[0] -pin display_div_count_reg[9] Q
load net display_div_count_reg[12]_i_1_n_0 -attr @rip(#000000) CO[3] -pin display_div_count_reg[12]_i_1 CO[3] -pin display_div_count_reg[15]_i_2 CI
load net display_div_count_reg[12]_i_1_n_1 -attr @rip(#000000) CO[2] -pin display_div_count_reg[12]_i_1 CO[2]
load net display_div_count_reg[12]_i_1_n_2 -attr @rip(#000000) CO[1] -pin display_div_count_reg[12]_i_1 CO[1]
load net display_div_count_reg[12]_i_1_n_3 -attr @rip(#000000) CO[0] -pin display_div_count_reg[12]_i_1 CO[0]
load net display_div_count_reg[15]_i_2_n_2 -attr @rip(#000000) CO[1] -pin display_div_count_reg[15]_i_2 CO[1]
load net display_div_count_reg[15]_i_2_n_3 -attr @rip(#000000) CO[0] -pin display_div_count_reg[15]_i_2 CO[0]
load net display_div_count_reg[4]_i_1_n_0 -attr @rip(#000000) CO[3] -pin display_div_count_reg[4]_i_1 CO[3] -pin display_div_count_reg[8]_i_1 CI
load net display_div_count_reg[4]_i_1_n_1 -attr @rip(#000000) CO[2] -pin display_div_count_reg[4]_i_1 CO[2]
load net display_div_count_reg[4]_i_1_n_2 -attr @rip(#000000) CO[1] -pin display_div_count_reg[4]_i_1 CO[1]
load net display_div_count_reg[4]_i_1_n_3 -attr @rip(#000000) CO[0] -pin display_div_count_reg[4]_i_1 CO[0]
load net display_div_count_reg[8]_i_1_n_0 -attr @rip(#000000) CO[3] -pin display_div_count_reg[12]_i_1 CI -pin display_div_count_reg[8]_i_1 CO[3]
load net display_div_count_reg[8]_i_1_n_1 -attr @rip(#000000) CO[2] -pin display_div_count_reg[8]_i_1 CO[2]
load net display_div_count_reg[8]_i_1_n_2 -attr @rip(#000000) CO[1] -pin display_div_count_reg[8]_i_1 CO[1]
load net display_div_count_reg[8]_i_1_n_3 -attr @rip(#000000) CO[0] -pin display_div_count_reg[8]_i_1 CO[0]
load net p_0_in[0] -pin an_OBUF[0]_inst_i_1 I1 -pin an_OBUF[1]_inst_i_1 I1 -pin an_OBUF[2]_inst_i_1 I2 -pin an_OBUF[3]_inst_i_1 I1 -pin seg_OBUF[2]_inst_i_1 I0 -pin seg_OBUF[4]_inst_i_1 I2 -pin seg_OBUF[6]_inst_i_1 I1 -pin selected_digit[0]_i_1 I1 -pin selected_digit[1]_i_1 I0 -pin selected_digit_reg[0] Q
netloc p_0_in[0] 1 9 5 2560 820 NJ 820 2960 990 NJ 990 3430
load net p_0_in[1] -pin an_OBUF[0]_inst_i_1 I0 -pin an_OBUF[1]_inst_i_1 I2 -pin an_OBUF[2]_inst_i_1 I0 -pin an_OBUF[3]_inst_i_1 I2 -pin seg_OBUF[3]_inst_i_1 I0 -pin seg_OBUF[4]_inst_i_1 I1 -pin seg_OBUF[6]_inst_i_1 I2 -pin selected_digit[1]_i_1 I2 -pin selected_digit_reg[1] Q
netloc p_0_in[1] 1 11 3 2980 600 NJ 600 3410
load net p_0_in__0 -pin display_div_count[15]_i_1 O -pin display_div_count_reg[0] R -pin display_div_count_reg[10] R -pin display_div_count_reg[11] R -pin display_div_count_reg[12] R -pin display_div_count_reg[13] R -pin display_div_count_reg[14] R -pin display_div_count_reg[15] R -pin display_div_count_reg[1] R -pin display_div_count_reg[2] R -pin display_div_count_reg[3] R -pin display_div_count_reg[4] R -pin display_div_count_reg[5] R -pin display_div_count_reg[6] R -pin display_div_count_reg[7] R -pin display_div_count_reg[8] R -pin display_div_count_reg[9] R -pin selected_digit[0]_i_1 I0 -pin selected_digit[1]_i_1 I1
netloc p_0_in__0 1 2 10 440 600 720 520 1080 500 NJ 500 NJ 500 2020 670 NJ 670 2540 840 NJ 840 NJ
load net plusOp[0] -pin display_div_count[0]_i_1 O -pin display_div_count_reg[0] D
netloc plusOp[0] 1 2 1 NJ 200
load net plusOp[10] -attr @rip(#000000) O[1] -pin display_div_count_reg[10] D -pin display_div_count_reg[12]_i_1 O[1]
load net plusOp[11] -attr @rip(#000000) O[2] -pin display_div_count_reg[11] D -pin display_div_count_reg[12]_i_1 O[2]
load net plusOp[12] -attr @rip(#000000) O[3] -pin display_div_count_reg[12] D -pin display_div_count_reg[12]_i_1 O[3]
load net plusOp[13] -attr @rip(#000000) O[0] -pin display_div_count_reg[13] D -pin display_div_count_reg[15]_i_2 O[0]
load net plusOp[14] -attr @rip(#000000) O[1] -pin display_div_count_reg[14] D -pin display_div_count_reg[15]_i_2 O[1]
load net plusOp[15] -attr @rip(#000000) O[2] -pin display_div_count_reg[15] D -pin display_div_count_reg[15]_i_2 O[2]
load net plusOp[1] -attr @rip(#000000) O[0] -pin display_div_count_reg[1] D -pin display_div_count_reg[4]_i_1 O[0]
load net plusOp[2] -attr @rip(#000000) O[1] -pin display_div_count_reg[2] D -pin display_div_count_reg[4]_i_1 O[1]
load net plusOp[3] -attr @rip(#000000) O[2] -pin display_div_count_reg[3] D -pin display_div_count_reg[4]_i_1 O[2]
load net plusOp[4] -attr @rip(#000000) O[3] -pin display_div_count_reg[4] D -pin display_div_count_reg[4]_i_1 O[3]
load net plusOp[5] -attr @rip(#000000) O[0] -pin display_div_count_reg[5] D -pin display_div_count_reg[8]_i_1 O[0]
load net plusOp[6] -attr @rip(#000000) O[1] -pin display_div_count_reg[6] D -pin display_div_count_reg[8]_i_1 O[1]
load net plusOp[7] -attr @rip(#000000) O[2] -pin display_div_count_reg[7] D -pin display_div_count_reg[8]_i_1 O[2]
load net plusOp[8] -attr @rip(#000000) O[3] -pin display_div_count_reg[8] D -pin display_div_count_reg[8]_i_1 O[3]
load net plusOp[9] -attr @rip(#000000) O[0] -pin display_div_count_reg[12]_i_1 O[0] -pin display_div_count_reg[9] D
load net seg[0] -attr @rip(#000000) 0 -port seg[0] -pin seg_OBUF[0]_inst O
load net seg[1] -attr @rip(#000000) 1 -port seg[1] -pin seg_OBUF[1]_inst O
load net seg[2] -attr @rip(#000000) 2 -port seg[2] -pin seg_OBUF[2]_inst O
load net seg[3] -attr @rip(#000000) 3 -port seg[3] -pin seg_OBUF[3]_inst O
load net seg[4] -attr @rip(#000000) 4 -port seg[4] -pin seg_OBUF[4]_inst O
load net seg[5] -attr @rip(#000000) 5 -port seg[5] -pin seg_OBUF[5]_inst O
load net seg[6] -attr @rip(#000000) 6 -port seg[6] -pin seg_OBUF[6]_inst O
load net seg_OBUF[0] -pin seg_OBUF[0]_inst I -pin seg_OBUF[5]_inst I -pin seg_OBUF[6]_inst I -pin seg_OBUF[6]_inst_i_1 O
netloc seg_OBUF[0] 1 14 1 3670 580n
load net seg_OBUF[1] -pin an_OBUF[2]_inst I -pin an_OBUF[2]_inst_i_1 O -pin seg_OBUF[1]_inst I
netloc seg_OBUF[1] 1 14 1 3690 440n
load net seg_OBUF[2] -pin seg_OBUF[2]_inst I -pin seg_OBUF[2]_inst_i_1 O
netloc seg_OBUF[2] 1 14 1 3650 680n
load net seg_OBUF[3] -pin seg_OBUF[3]_inst I -pin seg_OBUF[3]_inst_i_1 O
netloc seg_OBUF[3] 1 14 1 3650 770n
load net seg_OBUF[4] -pin seg_OBUF[4]_inst I -pin seg_OBUF[4]_inst_i_1 O
netloc seg_OBUF[4] 1 14 1 3690 860n
load net selected_digit[0]_i_1_n_0 -pin selected_digit[0]_i_1 O -pin selected_digit_reg[0] D
netloc selected_digit[0]_i_1_n_0 1 10 1 N 730
load net selected_digit[1]_i_1_n_0 -pin selected_digit[1]_i_1 O -pin selected_digit_reg[1] D
netloc selected_digit[1]_i_1_n_0 1 12 1 3160 710n
load net show_aes -port show_aes -pin show_aes_IBUF_inst I
netloc show_aes 1 0 13 NJ 950 NJ 950 NJ 950 NJ 950 NJ 950 NJ 950 NJ 950 NJ 950 NJ 950 NJ 950 NJ 950 NJ 950 NJ
load net show_aes_IBUF -pin an_OBUF[0]_inst_i_1 I2 -pin an_OBUF[1]_inst_i_1 I0 -pin an_OBUF[2]_inst_i_1 I1 -pin an_OBUF[3]_inst_i_1 I0 -pin seg_OBUF[2]_inst_i_1 I1 -pin seg_OBUF[3]_inst_i_1 I1 -pin seg_OBUF[4]_inst_i_1 I0 -pin seg_OBUF[6]_inst_i_1 I0 -pin show_aes_IBUF_inst O
netloc show_aes_IBUF 1 13 1 3450 280n
load netBundle @an 4 an[3] an[2] an[1] an[0] -autobundled
netbloc @an 1 15 1 3880 260n
load netBundle @seg 7 seg[6] seg[5] seg[4] seg[3] seg[2] seg[1] seg[0] -autobundled
netbloc @seg 1 15 1 3880 580n
load netBundle @display_div_count_reg 4 display_div_count_reg[12]_i_1_n_0 display_div_count_reg[12]_i_1_n_1 display_div_count_reg[12]_i_1_n_2 display_div_count_reg[12]_i_1_n_3 -autobundled
netbloc @display_div_count_reg 1 6 1 1720 360
load netBundle @plusOp 4 plusOp[12] plusOp[11] plusOp[10] plusOp[9] -autobundled
netbloc @plusOp 1 4 3 1120 480 NJ 480 1680
load netBundle @display_div_count_reg_1 2 display_div_count_reg[15]_i_2_n_2 display_div_count_reg[15]_i_2_n_3 -autobundled
netbloc @display_div_count_reg_1 1 7 1 N 380
load netBundle @plusOp_1 3 plusOp[15] plusOp[14] plusOp[13] -autobundled
netbloc @plusOp_1 1 7 1 2000 100n
load netBundle @display_div_count_reg_2 4 display_div_count_reg[4]_i_1_n_0 display_div_count_reg[4]_i_1_n_1 display_div_count_reg[4]_i_1_n_2 display_div_count_reg[4]_i_1_n_3 -autobundled
netbloc @display_div_count_reg_2 1 4 1 1100 730n
load netBundle @plusOp_2 4 plusOp[4] plusOp[3] plusOp[2] plusOp[1] -autobundled
netbloc @plusOp_2 1 2 3 420 930 NJ 930 1040
load netBundle @display_div_count_reg_3 4 display_div_count_reg[8]_i_1_n_0 display_div_count_reg[8]_i_1_n_1 display_div_count_reg[8]_i_1_n_2 display_div_count_reg[8]_i_1_n_3 -autobundled
netbloc @display_div_count_reg_3 1 5 1 1420 340n
load netBundle @plusOp_3 4 plusOp[8] plusOp[7] plusOp[6] plusOp[5] -autobundled
netbloc @plusOp_3 1 3 3 760 890 NJ 890 1400
load netBundle @display_div_count 4 display_div_count[12] display_div_count[11] display_div_count[10] display_div_count[9] -autobundled
netbloc @display_div_count 1 5 4 1400 460 1700J 480 2040 490 2300
load netBundle @display_div_count_1 3 display_div_count[15] display_div_count[14] display_div_count[13] -autobundled
netbloc @display_div_count_1 1 6 3 1700 320 2060J 470 2320
load netBundle @display_div_count_2 4 display_div_count[4] display_div_count[3] display_div_count[2] display_div_count[1] -autobundled
netbloc @display_div_count_2 1 3 4 680 910 NJ 910 NJ 910 1700
load netBundle @display_div_count_3 4 display_div_count[8] display_div_count[7] display_div_count[6] display_div_count[5] -autobundled
netbloc @display_div_count_3 1 4 4 1060 870 NJ 870 1720 910 2060
levelinfo -pg 1 0 40 240 540 860 1220 1500 1800 2160 2400 2620 2830 3040 3250 3520 3730 3900
pagesize -pg 1 -db -bbox -sgen -110 0 4000 1050
show
fullfit
#
# initialize ictrl to current module display work:display:NOFILE
ictrl init topinfo |
