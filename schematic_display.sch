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
module new top_io work:top_io:NOFILE -nosplit
load symbol FDRE hdi_primitives GEN pin Q output.right pin C input.clk.left pin CE input.left pin D input.left pin R input.left fillcolor 1
load symbol OBUF hdi_primitives BUF pin O output pin I input fillcolor 1
load symbol IBUF hdi_primitives BUF pin O output pin I input fillcolor 1
load symbol BUFG hdi_primitives BUF pin O output pin I input fillcolor 1
load symbol display work:display:NOFILE HIERBOX pin CLK input.left pin aes_done input.left pin dbg input.left pinBus an_OBUF output.right [3:0] pinBus seg_OBUF output.right [3:0] boxcolor 1 fillcolor 2 minwidth 13%
load symbol aes_enc work:aes_enc:NOFILE HIERBOX pin CLK input.left pin FSM_onehot_state_reg[0] output.right pin FSM_onehot_state_reg[0]_0 output.right pin FSM_onehot_state_reg[0]_1 output.right pin FSM_onehot_state_reg[2] input.left pin FSM_onehot_state_reg[2]_0 input.left pin FSM_onehot_state_reg[2]_1 input.left pin aes_done output.right pin reset input.left pin rst input.left pin start input.left pin strt input.left pinBus led_OBUF output.right [15:0] boxcolor 1 fillcolor 2 minwidth 13%
load symbol LUT2 hdi_primitives BOX pin O output.right pin I0 input.left pin I1 input.left fillcolor 1
load symbol LUT4 hdi_primitives BOX pin O output.right pin I0 input.left pin I1 input.left pin I2 input.left pin I3 input.left fillcolor 1
load symbol LUT1 hdi_primitives BOX pin O output.right pin I0 input.left fillcolor 1
load symbol LUT6 hdi_primitives BOX pin O output.right pin I0 input.left pin I1 input.left pin I2 input.left pin I3 input.left pin I4 input.left pin I5 input.left fillcolor 1
load symbol CARRY4 hdi_primitives BOX pin CI input.left pin CYINIT input.left pinBus CO output.right [3:0] pinBus O output.right [3:0] pinBus DI input.left [3:0] pinBus S input.left [3:0] fillcolor 1
load symbol LUT3 hdi_primitives BOX pin O output.right pin I0 input.left pin I1 input.left pin I2 input.left fillcolor 1
load inst display_c display work:display:NOFILE -unfold -autohide -attr @cell(#000000) display -attr @fillcolor #fafafa -pinBusAttr an_OBUF @name an_OBUF[3:0] -pinBusAttr seg_OBUF @name seg_OBUF[3:0] -pg 1 -lvl 1 -x 80 -y 58
load inst display_c|an_OBUF[0]_inst_i_1 LUT4 hdi_primitives -hier display_c -attr @cell(#000000) LUT4 -attr @name an_OBUF[0]_inst_i_1 -pg 1 -lvl 13 -x 3370 -y 218
load inst display_c|an_OBUF[1]_inst_i_1 LUT4 hdi_primitives -hier display_c -attr @cell(#000000) LUT4 -attr @name an_OBUF[1]_inst_i_1 -pg 1 -lvl 13 -x 3370 -y 348
load inst display_c|an_OBUF[3]_inst_i_1 LUT4 hdi_primitives -hier display_c -attr @cell(#000000) LUT4 -attr @name an_OBUF[3]_inst_i_1 -pg 1 -lvl 13 -x 3370 -y 478
load inst display_c|display_div_count[0]_i_1 LUT1 hdi_primitives -hier display_c -attr @cell(#000000) LUT1 -attr @name display_div_count[0]_i_1 -pg 1 -lvl 1 -x 190 -y 598
load inst display_c|display_div_count[15]_i_1 LUT6 hdi_primitives -hier display_c -attr @cell(#000000) LUT6 -attr @name display_div_count[15]_i_1 -pg 1 -lvl 8 -x 2240 -y 688
load inst display_c|display_div_count[15]_i_2 LUT6 hdi_primitives -hier display_c -attr @cell(#000000) LUT6 -attr @name display_div_count[15]_i_2 -pg 1 -lvl 7 -x 2000 -y 688
load inst display_c|display_div_count[15]_i_3 LUT6 hdi_primitives -hier display_c -attr @cell(#000000) LUT6 -attr @name display_div_count[15]_i_3 -pg 1 -lvl 6 -x 1650 -y 808
load inst display_c|display_div_count_reg[0] FDRE hdi_primitives -hier display_c -attr @cell(#000000) FDRE -attr @name display_div_count_reg[0] -pg 1 -lvl 2 -x 470 -y 598
load inst display_c|display_div_count_reg[10] FDRE hdi_primitives -hier display_c -attr @cell(#000000) FDRE -attr @name display_div_count_reg[10] -pg 1 -lvl 4 -x 1140 -y 268
load inst display_c|display_div_count_reg[11] FDRE hdi_primitives -hier display_c -attr @cell(#000000) FDRE -attr @name display_div_count_reg[11] -pg 1 -lvl 4 -x 1140 -y 418
load inst display_c|display_div_count_reg[12] FDRE hdi_primitives -hier display_c -attr @cell(#000000) FDRE -attr @name display_div_count_reg[12] -pg 1 -lvl 4 -x 1140 -y 598
load inst display_c|display_div_count_reg[13] FDRE hdi_primitives -hier display_c -attr @cell(#000000) FDRE -attr @name display_div_count_reg[13] -pg 1 -lvl 7 -x 2000 -y 258
load inst display_c|display_div_count_reg[14] FDRE hdi_primitives -hier display_c -attr @cell(#000000) FDRE -attr @name display_div_count_reg[14] -pg 1 -lvl 7 -x 2000 -y 408
load inst display_c|display_div_count_reg[15] FDRE hdi_primitives -hier display_c -attr @cell(#000000) FDRE -attr @name display_div_count_reg[15] -pg 1 -lvl 7 -x 2000 -y 558
load inst display_c|display_div_count_reg[1] FDRE hdi_primitives -hier display_c -attr @cell(#000000) FDRE -attr @name display_div_count_reg[1] -pg 1 -lvl 2 -x 470 -y 818
load inst display_c|display_div_count_reg[2] FDRE hdi_primitives -hier display_c -attr @cell(#000000) FDRE -attr @name display_div_count_reg[2] -pg 1 -lvl 2 -x 470 -y 998
load inst display_c|display_div_count_reg[3] FDRE hdi_primitives -hier display_c -attr @cell(#000000) FDRE -attr @name display_div_count_reg[3] -pg 1 -lvl 2 -x 470 -y 1198
load inst display_c|display_div_count_reg[4] FDRE hdi_primitives -hier display_c -attr @cell(#000000) FDRE -attr @name display_div_count_reg[4] -pg 1 -lvl 2 -x 470 -y 1348
load inst display_c|display_div_count_reg[5] FDRE hdi_primitives -hier display_c -attr @cell(#000000) FDRE -attr @name display_div_count_reg[5] -pg 1 -lvl 3 -x 770 -y 158
load inst display_c|display_div_count_reg[6] FDRE hdi_primitives -hier display_c -attr @cell(#000000) FDRE -attr @name display_div_count_reg[6] -pg 1 -lvl 3 -x 770 -y 338
load inst display_c|display_div_count_reg[7] FDRE hdi_primitives -hier display_c -attr @cell(#000000) FDRE -attr @name display_div_count_reg[7] -pg 1 -lvl 3 -x 770 -y 488
load inst display_c|display_div_count_reg[8] FDRE hdi_primitives -hier display_c -attr @cell(#000000) FDRE -attr @name display_div_count_reg[8] -pg 1 -lvl 3 -x 770 -y 638
load inst display_c|display_div_count_reg[9] FDRE hdi_primitives -hier display_c -attr @cell(#000000) FDRE -attr @name display_div_count_reg[9] -pg 1 -lvl 4 -x 1140 -y 118
load inst display_c|plusOp_carry CARRY4 hdi_primitives -hier display_c -attr @cell(#000000) CARRY4 -attr @name plusOp_carry -pinBusAttr CO @name CO[3:0] -pinBusAttr O @name O[3:0] -pinBusAttr DI @name DI[3:0] -pinBusAttr S @name S[3:0] -pg 1 -lvl 3 -x 770 -y 768
load inst display_c|plusOp_carry__0 CARRY4 hdi_primitives -hier display_c -attr @cell(#000000) CARRY4 -attr @name plusOp_carry__0 -pinBusAttr CO @name CO[3:0] -pinBusAttr O @name O[3:0] -pinBusAttr DI @name DI[3:0] -pinBusAttr S @name S[3:0] -pg 1 -lvl 4 -x 1140 -y 748
load inst display_c|plusOp_carry__1 CARRY4 hdi_primitives -hier display_c -attr @cell(#000000) CARRY4 -attr @name plusOp_carry__1 -pinBusAttr CO @name CO[3:0] -pinBusAttr O @name O[3:0] -pinBusAttr DI @name DI[3:0] -pinBusAttr S @name S[3:0] -pg 1 -lvl 5 -x 1380 -y 528
load inst display_c|plusOp_carry__2 CARRY4 hdi_primitives -hier display_c -attr @cell(#000000) CARRY4 -attr @name plusOp_carry__2 -pinBusAttr CO @name CO[3:0] -pinBusAttr CO @attr n/c -pinBusAttr O @name O[3:0] -pinBusAttr DI @name DI[3:0] -pinBusAttr S @name S[3:0] -pg 1 -lvl 6 -x 1650 -y 528
load inst display_c|seg_OBUF[1]_inst_i_1 LUT4 hdi_primitives -hier display_c -attr @cell(#000000) LUT4 -attr @name seg_OBUF[1]_inst_i_1 -pg 1 -lvl 13 -x 3370 -y 608
load inst display_c|seg_OBUF[2]_inst_i_1 LUT3 hdi_primitives -hier display_c -attr @cell(#000000) LUT3 -attr @name seg_OBUF[2]_inst_i_1 -pg 1 -lvl 13 -x 3370 -y 738
load inst display_c|seg_OBUF[3]_inst_i_1 LUT3 hdi_primitives -hier display_c -attr @cell(#000000) LUT3 -attr @name seg_OBUF[3]_inst_i_1 -pg 1 -lvl 13 -x 3370 -y 848
load inst display_c|seg_OBUF[4]_inst_i_1 LUT4 hdi_primitives -hier display_c -attr @cell(#000000) LUT4 -attr @name seg_OBUF[4]_inst_i_1 -pg 1 -lvl 13 -x 3370 -y 958
load inst display_c|seg_OBUF[6]_inst_i_1 LUT4 hdi_primitives -hier display_c -attr @cell(#000000) LUT4 -attr @name seg_OBUF[6]_inst_i_1 -pg 1 -lvl 13 -x 3370 -y 1088
load inst display_c|selected_digit[0]_i_1 LUT2 hdi_primitives -hier display_c -attr @cell(#000000) LUT2 -attr @name selected_digit[0]_i_1 -pg 1 -lvl 9 -x 2460 -y 928
load inst display_c|selected_digit[1]_i_1 LUT3 hdi_primitives -hier display_c -attr @cell(#000000) LUT3 -attr @name selected_digit[1]_i_1 -pg 1 -lvl 11 -x 2900 -y 848
load inst display_c|selected_digit_reg[0] FDRE hdi_primitives -hier display_c -attr @cell(#000000) FDRE -attr @name selected_digit_reg[0] -pg 1 -lvl 10 -x 2690 -y 778
load inst display_c|selected_digit_reg[1] FDRE hdi_primitives -hier display_c -attr @cell(#000000) FDRE -attr @name selected_digit_reg[1] -pg 1 -lvl 12 -x 3110 -y 758
load net display_c|<const0> -ground -attr @name <const0> -pin display_c|plusOp_carry CI -pin display_c|plusOp_carry DI[3] -pin display_c|plusOp_carry DI[2] -pin display_c|plusOp_carry DI[1] -pin display_c|plusOp_carry DI[0] -pin display_c|plusOp_carry__0 CYINIT -pin display_c|plusOp_carry__0 DI[3] -pin display_c|plusOp_carry__0 DI[2] -pin display_c|plusOp_carry__0 DI[1] -pin display_c|plusOp_carry__0 DI[0] -pin display_c|plusOp_carry__1 CYINIT -pin display_c|plusOp_carry__1 DI[3] -pin display_c|plusOp_carry__1 DI[2] -pin display_c|plusOp_carry__1 DI[1] -pin display_c|plusOp_carry__1 DI[0] -pin display_c|plusOp_carry__2 CYINIT -pin display_c|plusOp_carry__2 DI[3] -pin display_c|plusOp_carry__2 DI[2] -pin display_c|plusOp_carry__2 DI[1] -pin display_c|plusOp_carry__2 DI[0] -pin display_c|plusOp_carry__2 S[3] -pin display_c|selected_digit_reg[0] R -pin display_c|selected_digit_reg[1] R
load net display_c|<const1> -power -attr @name <const1> -pin display_c|display_div_count_reg[0] CE -pin display_c|display_div_count_reg[10] CE -pin display_c|display_div_count_reg[11] CE -pin display_c|display_div_count_reg[12] CE -pin display_c|display_div_count_reg[13] CE -pin display_c|display_div_count_reg[14] CE -pin display_c|display_div_count_reg[15] CE -pin display_c|display_div_count_reg[1] CE -pin display_c|display_div_count_reg[2] CE -pin display_c|display_div_count_reg[3] CE -pin display_c|display_div_count_reg[4] CE -pin display_c|display_div_count_reg[5] CE -pin display_c|display_div_count_reg[6] CE -pin display_c|display_div_count_reg[7] CE -pin display_c|display_div_count_reg[8] CE -pin display_c|display_div_count_reg[9] CE -pin display_c|selected_digit_reg[0] CE -pin display_c|selected_digit_reg[1] CE
load net display_c|CLK -attr @name CLK -hierPin display_c CLK -pin display_c|display_div_count_reg[0] C -pin display_c|display_div_count_reg[10] C -pin display_c|display_div_count_reg[11] C -pin display_c|display_div_count_reg[12] C -pin display_c|display_div_count_reg[13] C -pin display_c|display_div_count_reg[14] C -pin display_c|display_div_count_reg[15] C -pin display_c|display_div_count_reg[1] C -pin display_c|display_div_count_reg[2] C -pin display_c|display_div_count_reg[3] C -pin display_c|display_div_count_reg[4] C -pin display_c|display_div_count_reg[5] C -pin display_c|display_div_count_reg[6] C -pin display_c|display_div_count_reg[7] C -pin display_c|display_div_count_reg[8] C -pin display_c|display_div_count_reg[9] C -pin display_c|selected_digit_reg[0] C -pin display_c|selected_digit_reg[1] C
netloc display_c|CLK 1 0 12 N 568 330 698 630 58 1020 498 1290J 658 NJ 658 1840 858 NJ 858 NJ 858 2580 678 NJ 678 3020J
load net display_c|aes_done -attr @name aes_done -hierPin display_c aes_done -pin display_c|an_OBUF[0]_inst_i_1 I1 -pin display_c|an_OBUF[1]_inst_i_1 I0 -pin display_c|an_OBUF[3]_inst_i_1 I0 -pin display_c|seg_OBUF[1]_inst_i_1 I1 -pin display_c|seg_OBUF[2]_inst_i_1 I2 -pin display_c|seg_OBUF[3]_inst_i_1 I2 -pin display_c|seg_OBUF[4]_inst_i_1 I1 -pin display_c|seg_OBUF[6]_inst_i_1 I1
netloc display_c|aes_done 1 0 13 NJ 1078 NJ 1078 NJ 1078 NJ 1078 NJ 1078 NJ 1078 NJ 1078 NJ 1078 NJ 1078 NJ 1078 NJ 1078 NJ 1078 3300
load net display_c|an_OBUF[0] -attr @rip(#000000) 0 -attr @name an_OBUF[0] -hierPin display_c an_OBUF[0] -pin display_c|an_OBUF[0]_inst_i_1 O
load net display_c|an_OBUF[1] -attr @rip(#000000) 1 -attr @name an_OBUF[1] -hierPin display_c an_OBUF[1] -pin display_c|an_OBUF[1]_inst_i_1 O
load net display_c|an_OBUF[2] -attr @rip(#000000) 2 -attr @name an_OBUF[2] -hierPin display_c an_OBUF[2] -pin display_c|seg_OBUF[1]_inst_i_1 O
load net display_c|an_OBUF[3] -attr @rip(#000000) 3 -attr @name an_OBUF[3] -hierPin display_c an_OBUF[3] -pin display_c|an_OBUF[3]_inst_i_1 O
load net display_c|dbg -attr @name dbg -hierPin display_c dbg -pin display_c|an_OBUF[0]_inst_i_1 I2 -pin display_c|an_OBUF[1]_inst_i_1 I1 -pin display_c|an_OBUF[3]_inst_i_1 I1 -pin display_c|seg_OBUF[1]_inst_i_1 I2 -pin display_c|seg_OBUF[2]_inst_i_1 I1 -pin display_c|seg_OBUF[3]_inst_i_1 I1 -pin display_c|seg_OBUF[4]_inst_i_1 I0 -pin display_c|seg_OBUF[6]_inst_i_1 I0
netloc display_c|dbg 1 0 13 NJ 1098 NJ 1098 NJ 1098 NJ 1098 NJ 1098 NJ 1098 NJ 1098 NJ 1098 NJ 1098 NJ 1098 NJ 1098 NJ 1098 3280
load net display_c|display_div_count[0] -attr @name display_div_count[0] -pin display_c|display_div_count[0]_i_1 I0 -pin display_c|display_div_count[15]_i_3 I3 -pin display_c|display_div_count_reg[0] Q -pin display_c|plusOp_carry CYINIT
netloc display_c|display_div_count[0] 1 0 6 110 678 NJ 678 610 738 940J 878 NJ 878 NJ
load net display_c|display_div_count[10] -attr @rip(#000000) 1 -attr @name display_div_count[10] -pin display_c|display_div_count[15]_i_2 I5 -pin display_c|display_div_count_reg[10] Q -pin display_c|plusOp_carry__1 S[1]
load net display_c|display_div_count[11] -attr @rip(#000000) 2 -attr @name display_div_count[11] -pin display_c|display_div_count[15]_i_1 I3 -pin display_c|display_div_count_reg[11] Q -pin display_c|plusOp_carry__1 S[2]
load net display_c|display_div_count[12] -attr @rip(#000000) 3 -attr @name display_div_count[12] -pin display_c|display_div_count[15]_i_1 I4 -pin display_c|display_div_count_reg[12] Q -pin display_c|plusOp_carry__1 S[3]
load net display_c|display_div_count[13] -attr @rip(#000000) 0 -attr @name display_div_count[13] -pin display_c|display_div_count[15]_i_1 I0 -pin display_c|display_div_count_reg[13] Q -pin display_c|plusOp_carry__2 S[0]
load net display_c|display_div_count[14] -attr @rip(#000000) 1 -attr @name display_div_count[14] -pin display_c|display_div_count[15]_i_1 I1 -pin display_c|display_div_count_reg[14] Q -pin display_c|plusOp_carry__2 S[1]
load net display_c|display_div_count[15] -attr @rip(#000000) 2 -attr @name display_div_count[15] -pin display_c|display_div_count[15]_i_1 I5 -pin display_c|display_div_count_reg[15] Q -pin display_c|plusOp_carry__2 S[2]
load net display_c|display_div_count[15]_i_2_n_0 -attr @name display_div_count[15]_i_2_n_0 -pin display_c|display_div_count[15]_i_1 I2 -pin display_c|display_div_count[15]_i_2 O
netloc display_c|display_div_count[15]_i_2_n_0 1 7 1 N 738
load net display_c|display_div_count[15]_i_3_n_0 -attr @name display_div_count[15]_i_3_n_0 -pin display_c|display_div_count[15]_i_2 I2 -pin display_c|display_div_count[15]_i_3 O
netloc display_c|display_div_count[15]_i_3_n_0 1 6 1 1820 738n
load net display_c|display_div_count[1] -attr @rip(#000000) 0 -attr @name display_div_count[1] -pin display_c|display_div_count[15]_i_3 I2 -pin display_c|display_div_count_reg[1] Q -pin display_c|plusOp_carry S[0]
load net display_c|display_div_count[2] -attr @rip(#000000) 1 -attr @name display_div_count[2] -pin display_c|display_div_count[15]_i_3 I1 -pin display_c|display_div_count_reg[2] Q -pin display_c|plusOp_carry S[1]
load net display_c|display_div_count[3] -attr @rip(#000000) 2 -attr @name display_div_count[3] -pin display_c|display_div_count[15]_i_3 I4 -pin display_c|display_div_count_reg[3] Q -pin display_c|plusOp_carry S[2]
load net display_c|display_div_count[4] -attr @rip(#000000) 3 -attr @name display_div_count[4] -pin display_c|display_div_count[15]_i_3 I0 -pin display_c|display_div_count_reg[4] Q -pin display_c|plusOp_carry S[3]
load net display_c|display_div_count[5] -attr @rip(#000000) 0 -attr @name display_div_count[5] -pin display_c|display_div_count[15]_i_3 I5 -pin display_c|display_div_count_reg[5] Q -pin display_c|plusOp_carry__0 S[0]
load net display_c|display_div_count[6] -attr @rip(#000000) 1 -attr @name display_div_count[6] -pin display_c|display_div_count[15]_i_2 I1 -pin display_c|display_div_count_reg[6] Q -pin display_c|plusOp_carry__0 S[1]
load net display_c|display_div_count[7] -attr @rip(#000000) 2 -attr @name display_div_count[7] -pin display_c|display_div_count[15]_i_2 I3 -pin display_c|display_div_count_reg[7] Q -pin display_c|plusOp_carry__0 S[2]
load net display_c|display_div_count[8] -attr @rip(#000000) 3 -attr @name display_div_count[8] -pin display_c|display_div_count[15]_i_2 I4 -pin display_c|display_div_count_reg[8] Q -pin display_c|plusOp_carry__0 S[3]
load net display_c|display_div_count[9] -attr @rip(#000000) 0 -attr @name display_div_count[9] -pin display_c|display_div_count[15]_i_2 I0 -pin display_c|display_div_count_reg[9] Q -pin display_c|plusOp_carry__1 S[0]
load net display_c|p_0_in[0] -attr @name p_0_in[0] -pin display_c|an_OBUF[0]_inst_i_1 I3 -pin display_c|an_OBUF[1]_inst_i_1 I2 -pin display_c|an_OBUF[3]_inst_i_1 I2 -pin display_c|seg_OBUF[1]_inst_i_1 I3 -pin display_c|seg_OBUF[2]_inst_i_1 I0 -pin display_c|seg_OBUF[4]_inst_i_1 I3 -pin display_c|seg_OBUF[6]_inst_i_1 I2 -pin display_c|selected_digit[0]_i_1 I1 -pin display_c|selected_digit[1]_i_1 I0 -pin display_c|selected_digit_reg[0] Q
netloc display_c|p_0_in[0] 1 8 5 2400 898 NJ 898 2820 658 NJ 658 3260
load net display_c|p_0_in[1] -attr @name p_0_in[1] -pin display_c|an_OBUF[0]_inst_i_1 I0 -pin display_c|an_OBUF[1]_inst_i_1 I3 -pin display_c|an_OBUF[3]_inst_i_1 I3 -pin display_c|seg_OBUF[1]_inst_i_1 I0 -pin display_c|seg_OBUF[3]_inst_i_1 I0 -pin display_c|seg_OBUF[4]_inst_i_1 I2 -pin display_c|seg_OBUF[6]_inst_i_1 I3 -pin display_c|selected_digit[1]_i_1 I2 -pin display_c|selected_digit_reg[1] Q
netloc display_c|p_0_in[1] 1 10 3 2840 938 NJ 938 3240
load net display_c|plusOp[0] -attr @name plusOp[0] -pin display_c|display_div_count[0]_i_1 O -pin display_c|display_div_count_reg[0] D
netloc display_c|plusOp[0] 1 1 1 NJ 608
load net display_c|plusOp[10] -attr @rip(#000000) O[1] -attr @name plusOp[10] -pin display_c|display_div_count_reg[10] D -pin display_c|plusOp_carry__1 O[1]
load net display_c|plusOp[11] -attr @rip(#000000) O[2] -attr @name plusOp[11] -pin display_c|display_div_count_reg[11] D -pin display_c|plusOp_carry__1 O[2]
load net display_c|plusOp[12] -attr @rip(#000000) O[3] -attr @name plusOp[12] -pin display_c|display_div_count_reg[12] D -pin display_c|plusOp_carry__1 O[3]
load net display_c|plusOp[13] -attr @rip(#000000) O[0] -attr @name plusOp[13] -pin display_c|display_div_count_reg[13] D -pin display_c|plusOp_carry__2 O[0]
load net display_c|plusOp[14] -attr @rip(#000000) O[1] -attr @name plusOp[14] -pin display_c|display_div_count_reg[14] D -pin display_c|plusOp_carry__2 O[1]
load net display_c|plusOp[15] -attr @rip(#000000) O[2] -attr @name plusOp[15] -pin display_c|display_div_count_reg[15] D -pin display_c|plusOp_carry__2 O[2]
load net display_c|plusOp[1] -attr @rip(#000000) O[0] -attr @name plusOp[1] -pin display_c|display_div_count_reg[1] D -pin display_c|plusOp_carry O[0]
load net display_c|plusOp[2] -attr @rip(#000000) O[1] -attr @name plusOp[2] -pin display_c|display_div_count_reg[2] D -pin display_c|plusOp_carry O[1]
load net display_c|plusOp[3] -attr @rip(#000000) O[2] -attr @name plusOp[3] -pin display_c|display_div_count_reg[3] D -pin display_c|plusOp_carry O[2]
load net display_c|plusOp[4] -attr @rip(#000000) O[3] -attr @name plusOp[4] -pin display_c|display_div_count_reg[4] D -pin display_c|plusOp_carry O[3]
load net display_c|plusOp[5] -attr @rip(#000000) O[0] -attr @name plusOp[5] -pin display_c|display_div_count_reg[5] D -pin display_c|plusOp_carry__0 O[0]
load net display_c|plusOp[6] -attr @rip(#000000) O[1] -attr @name plusOp[6] -pin display_c|display_div_count_reg[6] D -pin display_c|plusOp_carry__0 O[1]
load net display_c|plusOp[7] -attr @rip(#000000) O[2] -attr @name plusOp[7] -pin display_c|display_div_count_reg[7] D -pin display_c|plusOp_carry__0 O[2]
load net display_c|plusOp[8] -attr @rip(#000000) O[3] -attr @name plusOp[8] -pin display_c|display_div_count_reg[8] D -pin display_c|plusOp_carry__0 O[3]
load net display_c|plusOp[9] -attr @rip(#000000) O[0] -attr @name plusOp[9] -pin display_c|display_div_count_reg[9] D -pin display_c|plusOp_carry__1 O[0]
load net display_c|plusOp_carry__0_n_0 -attr @rip(#000000) CO[3] -attr @name plusOp_carry__0_n_0 -pin display_c|plusOp_carry__0 CO[3] -pin display_c|plusOp_carry__1 CI
netloc display_c|plusOp_carry__0_n_0 1 4 1 1330 538n
load net display_c|plusOp_carry__1_n_0 -attr @rip(#000000) CO[3] -attr @name plusOp_carry__1_n_0 -pin display_c|plusOp_carry__1 CO[3] -pin display_c|plusOp_carry__2 CI
netloc display_c|plusOp_carry__1_n_0 1 5 1 1530 538n
load net display_c|plusOp_carry_n_0 -attr @rip(#000000) CO[3] -attr @name plusOp_carry_n_0 -pin display_c|plusOp_carry CO[3] -pin display_c|plusOp_carry__0 CI
netloc display_c|plusOp_carry_n_0 1 3 1 1000 758n
load net display_c|seg_OBUF[0] -attr @rip(#000000) 0 -attr @name seg_OBUF[0] -hierPin display_c seg_OBUF[0] -pin display_c|seg_OBUF[6]_inst_i_1 O
load net display_c|seg_OBUF[1] -attr @rip(#000000) 1 -attr @name seg_OBUF[1] -hierPin display_c seg_OBUF[1] -pin display_c|seg_OBUF[2]_inst_i_1 O
load net display_c|seg_OBUF[2] -attr @rip(#000000) 2 -attr @name seg_OBUF[2] -hierPin display_c seg_OBUF[2] -pin display_c|seg_OBUF[3]_inst_i_1 O
load net display_c|seg_OBUF[3] -attr @rip(#000000) 3 -attr @name seg_OBUF[3] -hierPin display_c seg_OBUF[3] -pin display_c|seg_OBUF[4]_inst_i_1 O
load net display_c|selected_digit -attr @name selected_digit -pin display_c|display_div_count[15]_i_1 O -pin display_c|display_div_count_reg[0] R -pin display_c|display_div_count_reg[10] R -pin display_c|display_div_count_reg[11] R -pin display_c|display_div_count_reg[12] R -pin display_c|display_div_count_reg[13] R -pin display_c|display_div_count_reg[14] R -pin display_c|display_div_count_reg[15] R -pin display_c|display_div_count_reg[1] R -pin display_c|display_div_count_reg[2] R -pin display_c|display_div_count_reg[3] R -pin display_c|display_div_count_reg[4] R -pin display_c|display_div_count_reg[5] R -pin display_c|display_div_count_reg[6] R -pin display_c|display_div_count_reg[7] R -pin display_c|display_div_count_reg[8] R -pin display_c|display_div_count_reg[9] R -pin display_c|selected_digit[0]_i_1 I0 -pin display_c|selected_digit[1]_i_1 I1
netloc display_c|selected_digit 1 1 10 350 718 650 238 1000 718 NJ 718 NJ 718 1880 838 NJ 838 2380 878 NJ 878 N
load net display_c|selected_digit[0]_i_1_n_0 -attr @name selected_digit[0]_i_1_n_0 -pin display_c|selected_digit[0]_i_1 O -pin display_c|selected_digit_reg[0] D
netloc display_c|selected_digit[0]_i_1_n_0 1 9 1 2600 788n
load net display_c|selected_digit[1]_i_1_n_0 -attr @name selected_digit[1]_i_1_n_0 -pin display_c|selected_digit[1]_i_1 O -pin display_c|selected_digit_reg[1] D
netloc display_c|selected_digit[1]_i_1_n_0 1 11 1 3020 768n
load netBundle @display_c|plusOp 4 display_c|plusOp[4] display_c|plusOp[3] display_c|plusOp[2] display_c|plusOp[1] -autobundled
netbloc @display_c|plusOp 1 1 3 370 898 NJ 898 920
load netBundle @display_c|plusOp_1 4 display_c|plusOp[8] display_c|plusOp[7] display_c|plusOp[6] display_c|plusOp[5] -autobundled
netbloc @display_c|plusOp_1 1 2 3 670 718 980J 678 1290
load netBundle @display_c|plusOp_2 4 display_c|plusOp[12] display_c|plusOp[11] display_c|plusOp[10] display_c|plusOp[9] -autobundled
netbloc @display_c|plusOp_2 1 3 3 1040 698 NJ 698 1530
load netBundle @display_c|plusOp_3 3 display_c|plusOp[15] display_c|plusOp[14] display_c|plusOp[13] -autobundled
netbloc @display_c|plusOp_3 1 6 1 1820 268n
load netBundle @display_c|an_OBUF 4 display_c|an_OBUF[3] display_c|an_OBUF[2] display_c|an_OBUF[1] display_c|an_OBUF[0] -autobundled
netbloc @display_c|an_OBUF 1 13 1 3500 248n
load netBundle @display_c|seg_OBUF 4 display_c|seg_OBUF[3] display_c|seg_OBUF[2] display_c|seg_OBUF[1] display_c|seg_OBUF[0] -autobundled
netbloc @display_c|seg_OBUF 1 13 1 3500 768n
load netBundle @display_c|display_div_count 4 display_c|display_div_count[4] display_c|display_div_count[3] display_c|display_div_count[2] display_c|display_div_count[1] -autobundled
netbloc @display_c|display_div_count 1 2 4 610 918 NJ 918 NJ 918 1570
load netBundle @display_c|display_div_count_1 4 display_c|display_div_count[8] display_c|display_div_count[7] display_c|display_div_count[6] display_c|display_div_count[5] -autobundled
netbloc @display_c|display_div_count_1 1 3 4 960 898 NJ 898 1530 778 1900
load netBundle @display_c|display_div_count_2 4 display_c|display_div_count[12] display_c|display_div_count[11] display_c|display_div_count[10] display_c|display_div_count[9] -autobundled
netbloc @display_c|display_div_count_2 1 4 4 1310 678 NJ 678 1920 658 2140
load netBundle @display_c|display_div_count_3 3 display_c|display_div_count[15] display_c|display_div_count[14] display_c|display_div_count[13] -autobundled
netbloc @display_c|display_div_count_3 1 5 3 1550 498 1860J 638 2160
levelinfo -pg 1 0 80 3630
levelinfo -hier display_c * 190 470 770 1140 1380 1650 2000 2240 2460 2690 2900 3110 3370 *
pagesize -pg 1 -db -bbox -sgen 0 -10 3630 1460
pagesize -hier display_c -db -bbox -sgen 80 28 3530 1428
show
zoom 0.669702
scrollpos 5 -219
#
# initialize ictrl to current module top_io work:top_io:NOFILE
ictrl init topinfo |
