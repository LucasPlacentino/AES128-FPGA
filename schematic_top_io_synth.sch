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
load symbol display work:display:NOFILE HIERBOX pin aes_done input.left pin clk_IBUF_BUFG input.left pin dbg input.left pinBus an_OBUF output.right [3:0] pinBus seg_OBUF output.right [3:0] boxcolor 1 fillcolor 2 minwidth 13%
load symbol aes_enc work:aes_enc:NOFILE HIERBOX pin FSM_onehot_state_reg[0] output.right pin FSM_onehot_state_reg[0]_0 output.right pin FSM_onehot_state_reg[0]_1 output.right pin FSM_onehot_state_reg[2] input.left pin FSM_onehot_state_reg[2]_0 input.left pin FSM_onehot_state_reg[2]_1 input.left pin aes_done output.right pin clk_IBUF_BUFG input.left pin reset input.left pin rst input.left pin start input.left pin strt input.left pinBus led_OBUF output.right [15:0] boxcolor 1 fillcolor 2 minwidth 13%
load symbol LUT2 hdi_primitives BOX pin O output.right pin I0 input.left pin I1 input.left fillcolor 1
load port btnC input -pg 1 -lvl 0 -x 0 -y 740
load port btnD input -pg 1 -lvl 0 -x 0 -y 600
load port btnR input -pg 1 -lvl 0 -x 0 -y 490
load port clk input -pg 1 -lvl 0 -x 0 -y 420
load portBus an output [3:0] -attr @name an[3:0] -pg 1 -lvl 11 -x 2620 -y 1160
load portBus led output [15:0] -attr @name led[15:0] -pg 1 -lvl 11 -x 2620 -y 40
load portBus seg output [6:0] -attr @name seg[6:0] -pg 1 -lvl 11 -x 2620 -y 1440
load inst FSM_onehot_state_reg[0] FDRE hdi_primitives -attr @cell(#000000) FDRE -pg 1 -lvl 5 -x 840 -y 870
load inst FSM_onehot_state_reg[1] FDRE hdi_primitives -attr @cell(#000000) FDRE -pg 1 -lvl 7 -x 1360 -y 1250
load inst FSM_onehot_state_reg[2] FDRE hdi_primitives -attr @cell(#000000) FDRE -pg 1 -lvl 5 -x 840 -y 1220
load inst an_OBUF[0]_inst OBUF hdi_primitives -attr @cell(#000000) OBUF -pg 1 -lvl 10 -x 2450 -y 1160
load inst an_OBUF[1]_inst OBUF hdi_primitives -attr @cell(#000000) OBUF -pg 1 -lvl 10 -x 2450 -y 1230
load inst an_OBUF[2]_inst OBUF hdi_primitives -attr @cell(#000000) OBUF -pg 1 -lvl 10 -x 2450 -y 1300
load inst an_OBUF[3]_inst OBUF hdi_primitives -attr @cell(#000000) OBUF -pg 1 -lvl 10 -x 2450 -y 1370
load inst btnC_IBUF_inst IBUF hdi_primitives -attr @cell(#000000) IBUF -pg 1 -lvl 2 -x 180 -y 740
load inst btnD_IBUF_inst IBUF hdi_primitives -attr @cell(#000000) IBUF -pg 1 -lvl 5 -x 840 -y 580
load inst btnR_IBUF_inst IBUF hdi_primitives -attr @cell(#000000) IBUF -pg 1 -lvl 2 -x 180 -y 490
load inst clk_IBUF_BUFG_inst BUFG hdi_primitives -attr @cell(#000000) BUFG -pg 1 -lvl 2 -x 180 -y 420
load inst clk_IBUF_inst IBUF hdi_primitives -attr @cell(#000000) IBUF -pg 1 -lvl 1 -x 40 -y 420
load inst dbg_ff1_reg FDRE hdi_primitives -attr @cell(#000000) FDRE -pg 1 -lvl 6 -x 1100 -y 570
load inst dbg_reg FDRE hdi_primitives -attr @cell(#000000) FDRE -pg 1 -lvl 8 -x 1800 -y 1250
load inst dbg_sync_reg FDRE hdi_primitives -attr @cell(#000000) FDRE -pg 1 -lvl 7 -x 1360 -y 620
load inst display_c display work:display:NOFILE -autohide -attr @cell(#000000) display -pinBusAttr an_OBUF @name an_OBUF[3:0] -pinBusAttr seg_OBUF @name seg_OBUF[3:0] -pg 1 -lvl 9 -x 2220 -y 1200
load inst encryption_aes_c aes_enc work:aes_enc:NOFILE -autohide -attr @cell(#000000) aes_enc -pinBusAttr led_OBUF @name led_OBUF[15:0] -pg 1 -lvl 8 -x 1800 -y 980
load inst led_OBUF[0]_inst OBUF hdi_primitives -attr @cell(#000000) OBUF -pg 1 -lvl 10 -x 2450 -y 40
load inst led_OBUF[10]_inst OBUF hdi_primitives -attr @cell(#000000) OBUF -pg 1 -lvl 10 -x 2450 -y 740
load inst led_OBUF[11]_inst OBUF hdi_primitives -attr @cell(#000000) OBUF -pg 1 -lvl 10 -x 2450 -y 810
load inst led_OBUF[12]_inst OBUF hdi_primitives -attr @cell(#000000) OBUF -pg 1 -lvl 10 -x 2450 -y 880
load inst led_OBUF[13]_inst OBUF hdi_primitives -attr @cell(#000000) OBUF -pg 1 -lvl 10 -x 2450 -y 950
load inst led_OBUF[14]_inst OBUF hdi_primitives -attr @cell(#000000) OBUF -pg 1 -lvl 10 -x 2450 -y 1020
load inst led_OBUF[15]_inst OBUF hdi_primitives -attr @cell(#000000) OBUF -pg 1 -lvl 10 -x 2450 -y 1090
load inst led_OBUF[1]_inst OBUF hdi_primitives -attr @cell(#000000) OBUF -pg 1 -lvl 10 -x 2450 -y 110
load inst led_OBUF[2]_inst OBUF hdi_primitives -attr @cell(#000000) OBUF -pg 1 -lvl 10 -x 2450 -y 180
load inst led_OBUF[3]_inst OBUF hdi_primitives -attr @cell(#000000) OBUF -pg 1 -lvl 10 -x 2450 -y 250
load inst led_OBUF[4]_inst OBUF hdi_primitives -attr @cell(#000000) OBUF -pg 1 -lvl 10 -x 2450 -y 320
load inst led_OBUF[5]_inst OBUF hdi_primitives -attr @cell(#000000) OBUF -pg 1 -lvl 10 -x 2450 -y 390
load inst led_OBUF[6]_inst OBUF hdi_primitives -attr @cell(#000000) OBUF -pg 1 -lvl 10 -x 2450 -y 460
load inst led_OBUF[7]_inst OBUF hdi_primitives -attr @cell(#000000) OBUF -pg 1 -lvl 10 -x 2450 -y 530
load inst led_OBUF[8]_inst OBUF hdi_primitives -attr @cell(#000000) OBUF -pg 1 -lvl 10 -x 2450 -y 600
load inst led_OBUF[9]_inst OBUF hdi_primitives -attr @cell(#000000) OBUF -pg 1 -lvl 10 -x 2450 -y 670
load inst reset_encryption_i_1 LUT2 hdi_primitives -attr @cell(#000000) LUT2 -pg 1 -lvl 6 -x 1100 -y 770
load inst reset_encryption_reg FDRE hdi_primitives -attr @cell(#000000) FDRE -pg 1 -lvl 7 -x 1360 -y 770
load inst rst_ff1_reg FDRE hdi_primitives -attr @cell(#000000) FDRE -pg 1 -lvl 3 -x 400 -y 480
load inst rst_reg FDRE hdi_primitives -attr @cell(#000000) FDRE -pg 1 -lvl 5 -x 840 -y 720
load inst rst_sync_reg FDRE hdi_primitives -attr @cell(#000000) FDRE -pg 1 -lvl 4 -x 580 -y 500
load inst seg_OBUF[0]_inst OBUF hdi_primitives -attr @cell(#000000) OBUF -pg 1 -lvl 10 -x 2450 -y 1440
load inst seg_OBUF[1]_inst OBUF hdi_primitives -attr @cell(#000000) OBUF -pg 1 -lvl 10 -x 2450 -y 1510
load inst seg_OBUF[2]_inst OBUF hdi_primitives -attr @cell(#000000) OBUF -pg 1 -lvl 10 -x 2450 -y 1580
load inst seg_OBUF[3]_inst OBUF hdi_primitives -attr @cell(#000000) OBUF -pg 1 -lvl 10 -x 2450 -y 1650
load inst seg_OBUF[4]_inst OBUF hdi_primitives -attr @cell(#000000) OBUF -pg 1 -lvl 10 -x 2450 -y 1720
load inst seg_OBUF[5]_inst OBUF hdi_primitives -attr @cell(#000000) OBUF -pg 1 -lvl 10 -x 2450 -y 1790
load inst seg_OBUF[6]_inst OBUF hdi_primitives -attr @cell(#000000) OBUF -pg 1 -lvl 10 -x 2450 -y 1860
load inst start_encryption_i_1 LUT2 hdi_primitives -attr @cell(#000000) LUT2 -pg 1 -lvl 6 -x 1100 -y 1010
load inst start_encryption_reg FDRE hdi_primitives -attr @cell(#000000) FDRE -pg 1 -lvl 7 -x 1360 -y 1010
load inst strt_ff1_reg FDRE hdi_primitives -attr @cell(#000000) FDRE -pg 1 -lvl 3 -x 400 -y 730
load inst strt_reg FDRE hdi_primitives -attr @cell(#000000) FDRE -pg 1 -lvl 5 -x 840 -y 1070
load inst strt_sync_reg FDRE hdi_primitives -attr @cell(#000000) FDRE -pg 1 -lvl 4 -x 580 -y 720
load net <const0> -ground -pin FSM_onehot_state_reg[0] R -pin FSM_onehot_state_reg[1] R -pin FSM_onehot_state_reg[2] R -pin dbg_ff1_reg R -pin dbg_reg R -pin dbg_sync_reg R -pin reset_encryption_reg R -pin rst_ff1_reg R -pin rst_reg R -pin rst_sync_reg R -pin start_encryption_reg R -pin strt_ff1_reg R -pin strt_reg R -pin strt_sync_reg R
load net <const1> -power -pin FSM_onehot_state_reg[0] CE -pin FSM_onehot_state_reg[1] CE -pin FSM_onehot_state_reg[2] CE -pin dbg_ff1_reg CE -pin dbg_reg CE -pin dbg_sync_reg CE -pin reset_encryption_reg CE -pin rst_ff1_reg CE -pin rst_reg CE -pin rst_sync_reg CE -pin start_encryption_reg CE -pin strt_ff1_reg CE -pin strt_reg CE -pin strt_sync_reg CE
load net FSM_onehot_state_reg_n_0_[0] -pin FSM_onehot_state_reg[0] Q -pin encryption_aes_c FSM_onehot_state_reg[2] -pin start_encryption_i_1 I0
netloc FSM_onehot_state_reg_n_0_[0] 1 5 3 1040 870 NJ 870 1600
load net FSM_onehot_state_reg_n_0_[1] -pin FSM_onehot_state_reg[1] Q -pin encryption_aes_c FSM_onehot_state_reg[2]_1
netloc FSM_onehot_state_reg_n_0_[1] 1 7 1 1540 1030n
load net FSM_onehot_state_reg_n_0_[2] -pin FSM_onehot_state_reg[2] Q -pin encryption_aes_c FSM_onehot_state_reg[2]_0 -pin reset_encryption_i_1 I0
netloc FSM_onehot_state_reg_n_0_[2] 1 5 3 1000 910 NJ 910 1540
load net aes_done -pin display_c aes_done -pin encryption_aes_c aes_done
netloc aes_done 1 8 1 2100 1070n
load net an[0] -attr @rip(#000000) 0 -port an[0] -pin an_OBUF[0]_inst O
load net an[1] -attr @rip(#000000) 1 -port an[1] -pin an_OBUF[1]_inst O
load net an[2] -attr @rip(#000000) 2 -port an[2] -pin an_OBUF[2]_inst O
load net an[3] -attr @rip(#000000) 3 -port an[3] -pin an_OBUF[3]_inst O
load net an_OBUF[0] -attr @rip(#000000) an_OBUF[0] -pin an_OBUF[0]_inst I -pin display_c an_OBUF[0]
load net an_OBUF[1] -attr @rip(#000000) an_OBUF[1] -pin an_OBUF[1]_inst I -pin display_c an_OBUF[1]
load net an_OBUF[2] -attr @rip(#000000) an_OBUF[2] -pin an_OBUF[2]_inst I -pin display_c an_OBUF[2] -pin seg_OBUF[1]_inst I
load net an_OBUF[3] -attr @rip(#000000) an_OBUF[3] -pin an_OBUF[3]_inst I -pin display_c an_OBUF[3]
load net btnC -port btnC -pin btnC_IBUF_inst I
netloc btnC 1 0 2 NJ 740 NJ
load net btnC_IBUF -pin btnC_IBUF_inst O -pin strt_ff1_reg D
netloc btnC_IBUF 1 2 1 NJ 740
load net btnD -port btnD -pin btnD_IBUF_inst I
netloc btnD 1 0 5 NJ 600 NJ 600 NJ 600 NJ 600 680J
load net btnD_IBUF -pin btnD_IBUF_inst O -pin dbg_ff1_reg D
netloc btnD_IBUF 1 5 1 NJ 580
load net btnR -port btnR -pin btnR_IBUF_inst I
netloc btnR 1 0 2 NJ 490 NJ
load net btnR_IBUF -pin btnR_IBUF_inst O -pin rst_ff1_reg D
netloc btnR_IBUF 1 2 1 NJ 490
load net clk -port clk -pin clk_IBUF_inst I
netloc clk 1 0 1 NJ 420
load net clk_IBUF -pin clk_IBUF_BUFG_inst I -pin clk_IBUF_inst O
netloc clk_IBUF 1 1 1 NJ 420
load net clk_IBUF_BUFG -pin FSM_onehot_state_reg[0] C -pin FSM_onehot_state_reg[1] C -pin FSM_onehot_state_reg[2] C -pin clk_IBUF_BUFG_inst O -pin dbg_ff1_reg C -pin dbg_reg C -pin dbg_sync_reg C -pin display_c clk_IBUF_BUFG -pin encryption_aes_c clk_IBUF_BUFG -pin reset_encryption_reg C -pin rst_ff1_reg C -pin rst_reg C -pin rst_sync_reg C -pin start_encryption_reg C -pin strt_ff1_reg C -pin strt_reg C -pin strt_sync_reg C
netloc clk_IBUF_BUFG 1 2 7 340 580 520 620 700 620 980 670 1240 1150 1600 1370 2100
load net dbg -pin dbg_reg Q -pin display_c dbg
netloc dbg 1 8 1 N 1250
load net dbg_ff1 -pin dbg_ff1_reg Q -pin dbg_sync_reg D
netloc dbg_ff1 1 6 1 1220 570n
load net dbg_sync -pin dbg_reg D -pin dbg_sync_reg Q
netloc dbg_sync 1 7 1 1560 620n
load net encryption_aes_c_n_0 -pin FSM_onehot_state_reg[2] D -pin encryption_aes_c FSM_onehot_state_reg[0]
netloc encryption_aes_c_n_0 1 4 5 740 1350 NJ 1350 NJ 1350 NJ 1350 2040
load net encryption_aes_c_n_2 -pin FSM_onehot_state_reg[1] D -pin encryption_aes_c FSM_onehot_state_reg[0]_0
netloc encryption_aes_c_n_2 1 6 3 1260 1390 NJ 1390 2080
load net encryption_aes_c_n_3 -pin FSM_onehot_state_reg[0] D -pin encryption_aes_c FSM_onehot_state_reg[0]_1
netloc encryption_aes_c_n_3 1 4 5 740 970 1020J 890 NJ 890 NJ 890 2060
load net led[0] -attr @rip(#000000) 0 -port led[0] -pin led_OBUF[0]_inst O
load net led[10] -attr @rip(#000000) 10 -port led[10] -pin led_OBUF[10]_inst O
load net led[11] -attr @rip(#000000) 11 -port led[11] -pin led_OBUF[11]_inst O
load net led[12] -attr @rip(#000000) 12 -port led[12] -pin led_OBUF[12]_inst O
load net led[13] -attr @rip(#000000) 13 -port led[13] -pin led_OBUF[13]_inst O
load net led[14] -attr @rip(#000000) 14 -port led[14] -pin led_OBUF[14]_inst O
load net led[15] -attr @rip(#000000) 15 -port led[15] -pin led_OBUF[15]_inst O
load net led[1] -attr @rip(#000000) 1 -port led[1] -pin led_OBUF[1]_inst O
load net led[2] -attr @rip(#000000) 2 -port led[2] -pin led_OBUF[2]_inst O
load net led[3] -attr @rip(#000000) 3 -port led[3] -pin led_OBUF[3]_inst O
load net led[4] -attr @rip(#000000) 4 -port led[4] -pin led_OBUF[4]_inst O
load net led[5] -attr @rip(#000000) 5 -port led[5] -pin led_OBUF[5]_inst O
load net led[6] -attr @rip(#000000) 6 -port led[6] -pin led_OBUF[6]_inst O
load net led[7] -attr @rip(#000000) 7 -port led[7] -pin led_OBUF[7]_inst O
load net led[8] -attr @rip(#000000) 8 -port led[8] -pin led_OBUF[8]_inst O
load net led[9] -attr @rip(#000000) 9 -port led[9] -pin led_OBUF[9]_inst O
load net led_OBUF[0] -attr @rip(#000000) led_OBUF[0] -pin encryption_aes_c led_OBUF[0] -pin led_OBUF[0]_inst I
load net led_OBUF[10] -attr @rip(#000000) led_OBUF[10] -pin encryption_aes_c led_OBUF[10] -pin led_OBUF[10]_inst I
load net led_OBUF[11] -attr @rip(#000000) led_OBUF[11] -pin encryption_aes_c led_OBUF[11] -pin led_OBUF[11]_inst I
load net led_OBUF[12] -attr @rip(#000000) led_OBUF[12] -pin encryption_aes_c led_OBUF[12] -pin led_OBUF[12]_inst I
load net led_OBUF[13] -attr @rip(#000000) led_OBUF[13] -pin encryption_aes_c led_OBUF[13] -pin led_OBUF[13]_inst I
load net led_OBUF[14] -attr @rip(#000000) led_OBUF[14] -pin encryption_aes_c led_OBUF[14] -pin led_OBUF[14]_inst I
load net led_OBUF[15] -attr @rip(#000000) led_OBUF[15] -pin encryption_aes_c led_OBUF[15] -pin led_OBUF[15]_inst I
load net led_OBUF[1] -attr @rip(#000000) led_OBUF[1] -pin encryption_aes_c led_OBUF[1] -pin led_OBUF[1]_inst I
load net led_OBUF[2] -attr @rip(#000000) led_OBUF[2] -pin encryption_aes_c led_OBUF[2] -pin led_OBUF[2]_inst I
load net led_OBUF[3] -attr @rip(#000000) led_OBUF[3] -pin encryption_aes_c led_OBUF[3] -pin led_OBUF[3]_inst I
load net led_OBUF[4] -attr @rip(#000000) led_OBUF[4] -pin encryption_aes_c led_OBUF[4] -pin led_OBUF[4]_inst I
load net led_OBUF[5] -attr @rip(#000000) led_OBUF[5] -pin encryption_aes_c led_OBUF[5] -pin led_OBUF[5]_inst I
load net led_OBUF[6] -attr @rip(#000000) led_OBUF[6] -pin encryption_aes_c led_OBUF[6] -pin led_OBUF[6]_inst I
load net led_OBUF[7] -attr @rip(#000000) led_OBUF[7] -pin encryption_aes_c led_OBUF[7] -pin led_OBUF[7]_inst I
load net led_OBUF[8] -attr @rip(#000000) led_OBUF[8] -pin encryption_aes_c led_OBUF[8] -pin led_OBUF[8]_inst I
load net led_OBUF[9] -attr @rip(#000000) led_OBUF[9] -pin encryption_aes_c led_OBUF[9] -pin led_OBUF[9]_inst I
load net reset -pin encryption_aes_c reset -pin reset_encryption_reg Q
netloc reset 1 7 1 1580 770n
load net reset_encryption -pin reset_encryption_i_1 O -pin reset_encryption_reg D
netloc reset_encryption 1 6 1 N 780
load net rst -pin encryption_aes_c rst -pin reset_encryption_i_1 I1 -pin rst_reg Q
netloc rst 1 5 3 980 1110 NJ 1110 1500J
load net rst_ff1 -pin rst_ff1_reg Q -pin rst_sync_reg D
netloc rst_ff1 1 3 1 500 480n
load net rst_sync -pin rst_reg D -pin rst_sync_reg Q
netloc rst_sync 1 4 1 720 500n
load net seg[0] -attr @rip(#000000) 0 -port seg[0] -pin seg_OBUF[0]_inst O
load net seg[1] -attr @rip(#000000) 1 -port seg[1] -pin seg_OBUF[1]_inst O
load net seg[2] -attr @rip(#000000) 2 -port seg[2] -pin seg_OBUF[2]_inst O
load net seg[3] -attr @rip(#000000) 3 -port seg[3] -pin seg_OBUF[3]_inst O
load net seg[4] -attr @rip(#000000) 4 -port seg[4] -pin seg_OBUF[4]_inst O
load net seg[5] -attr @rip(#000000) 5 -port seg[5] -pin seg_OBUF[5]_inst O
load net seg[6] -attr @rip(#000000) 6 -port seg[6] -pin seg_OBUF[6]_inst O
load net seg_OBUF[0] -attr @rip(#000000) seg_OBUF[0] -pin display_c seg_OBUF[0] -pin seg_OBUF[0]_inst I -pin seg_OBUF[5]_inst I -pin seg_OBUF[6]_inst I
load net seg_OBUF[2] -attr @rip(#000000) seg_OBUF[1] -pin display_c seg_OBUF[1] -pin seg_OBUF[2]_inst I
load net seg_OBUF[3] -attr @rip(#000000) seg_OBUF[2] -pin display_c seg_OBUF[2] -pin seg_OBUF[3]_inst I
load net seg_OBUF[4] -attr @rip(#000000) seg_OBUF[3] -pin display_c seg_OBUF[3] -pin seg_OBUF[4]_inst I
load net start -pin encryption_aes_c start -pin start_encryption_reg Q
netloc start 1 7 1 1520 1010n
load net start_encryption -pin start_encryption_i_1 O -pin start_encryption_reg D
netloc start_encryption 1 6 1 N 1020
load net strt -pin encryption_aes_c strt -pin start_encryption_i_1 I1 -pin strt_reg Q
netloc strt 1 5 3 1040 1130 NJ 1130 NJ
load net strt_ff1 -pin strt_ff1_reg Q -pin strt_sync_reg D
netloc strt_ff1 1 3 1 N 730
load net strt_sync -pin strt_reg D -pin strt_sync_reg Q
netloc strt_sync 1 4 1 680 720n
load netBundle @an 4 an[3] an[2] an[1] an[0] -autobundled
netbloc @an 1 10 1 2600 1160n
load netBundle @led 16 led[15] led[14] led[13] led[12] led[11] led[10] led[9] led[8] led[7] led[6] led[5] led[4] led[3] led[2] led[1] led[0] -autobundled
netbloc @led 1 10 1 2600 40n
load netBundle @seg 7 seg[6] seg[5] seg[4] seg[3] seg[2] seg[1] seg[0] -autobundled
netbloc @seg 1 10 1 2600 1440n
load netBundle @an_OBUF 4 an_OBUF[3] an_OBUF[2] an_OBUF[1] an_OBUF[0] -autobundled
netbloc @an_OBUF 1 9 1 2410 1160n
load netBundle @seg_OBUF 4 seg_OBUF[4] seg_OBUF[3] seg_OBUF[2] seg_OBUF[0] -autobundled
netbloc @seg_OBUF 1 9 1 2390 1230n
load netBundle @led_OBUF 16 led_OBUF[15] led_OBUF[14] led_OBUF[13] led_OBUF[12] led_OBUF[11] led_OBUF[10] led_OBUF[9] led_OBUF[8] led_OBUF[7] led_OBUF[6] led_OBUF[5] led_OBUF[4] led_OBUF[3] led_OBUF[2] led_OBUF[1] led_OBUF[0] -autobundled
netbloc @led_OBUF 1 8 2 N 1090 2410
levelinfo -pg 1 0 40 180 400 580 840 1100 1360 1800 2220 2450 2620
pagesize -pg 1 -db -bbox -sgen -80 0 2730 1900
show
fullfit
#
# initialize ictrl to current module top_io work:top_io:NOFILE
ictrl init topinfo |
