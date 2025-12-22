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
load symbol LUT6 hdi_primitives BOX pin O output.right pin I0 input.left pin I1 input.left pin I2 input.left pin I3 input.left pin I4 input.left pin I5 input.left fillcolor 1
load symbol LUT3 hdi_primitives BOX pin O output.right pin I0 input.left pin I1 input.left pin I2 input.left fillcolor 1
load symbol LUT4 hdi_primitives BOX pin O output.right pin I0 input.left pin I1 input.left pin I2 input.left pin I3 input.left fillcolor 1
load symbol LUT5 hdi_primitives BOX pin O output.right pin I0 input.left pin I1 input.left pin I2 input.left pin I3 input.left pin I4 input.left fillcolor 1
load inst encryption_aes_c aes_enc work:aes_enc:NOFILE -autohide -attr @cell(#000000) aes_enc -attr @fillcolor #fafafa -pinBusAttr led_OBUF @name led_OBUF[15:0] -pg 1 -lvl 1 -x 170 -y 58
load inst encryption_aes_c|FSM_onehot_state[0]_i_1 LUT6 hdi_primitives -hier encryption_aes_c -attr @cell(#000000) LUT6 -attr @name FSM_onehot_state[0]_i_1 -pg 1 -lvl 24 -x 7220 -y 58
load inst encryption_aes_c|FSM_onehot_state[1]_i_1 LUT6 hdi_primitives -hier encryption_aes_c -attr @cell(#000000) LUT6 -attr @name FSM_onehot_state[1]_i_1 -pg 1 -lvl 24 -x 7220 -y 228
load inst encryption_aes_c|FSM_onehot_state[2]_i_1 LUT6 hdi_primitives -hier encryption_aes_c -attr @cell(#000000) LUT6 -attr @name FSM_onehot_state[2]_i_1 -pg 1 -lvl 24 -x 7220 -y 398
load inst encryption_aes_c|FSM_sequential_enc_state[0]_i_1 LUT3 hdi_primitives -hier encryption_aes_c -attr @cell(#000000) LUT3 -attr @name FSM_sequential_enc_state[0]_i_1 -pg 1 -lvl 19 -x 5600 -y 1108
load inst encryption_aes_c|FSM_sequential_enc_state[1]_i_1 LUT4 hdi_primitives -hier encryption_aes_c -attr @cell(#000000) LUT4 -attr @name FSM_sequential_enc_state[1]_i_1 -pg 1 -lvl 11 -x 3500 -y 938
load inst encryption_aes_c|FSM_sequential_enc_state[2]_i_1 LUT5 hdi_primitives -hier encryption_aes_c -attr @cell(#000000) LUT5 -attr @name FSM_sequential_enc_state[2]_i_1 -pg 1 -lvl 17 -x 5020 -y 1008
load inst encryption_aes_c|FSM_sequential_enc_state[2]_i_2 LUT6 hdi_primitives -hier encryption_aes_c -attr @cell(#000000) LUT6 -attr @name FSM_sequential_enc_state[2]_i_2 -pg 1 -lvl 10 -x 3180 -y 668
load inst encryption_aes_c|FSM_sequential_enc_state[2]_i_3 LUT4 hdi_primitives -hier encryption_aes_c -attr @cell(#000000) LUT4 -attr @name FSM_sequential_enc_state[2]_i_3 -pg 1 -lvl 6 -x 1780 -y 818
load inst encryption_aes_c|FSM_sequential_enc_state[2]_i_4 LUT6 hdi_primitives -hier encryption_aes_c -attr @cell(#000000) LUT6 -attr @name FSM_sequential_enc_state[2]_i_4 -pg 1 -lvl 9 -x 2840 -y 698
load inst encryption_aes_c|FSM_sequential_enc_state_reg[0] FDRE hdi_primitives -hier encryption_aes_c -attr @cell(#000000) FDRE -attr @name FSM_sequential_enc_state_reg[0] -pg 1 -lvl 20 -x 5900 -y 1098
load inst encryption_aes_c|FSM_sequential_enc_state_reg[1] FDRE hdi_primitives -hier encryption_aes_c -attr @cell(#000000) FDRE -attr @name FSM_sequential_enc_state_reg[1] -pg 1 -lvl 12 -x 3800 -y 958
load inst encryption_aes_c|FSM_sequential_enc_state_reg[2] FDRE hdi_primitives -hier encryption_aes_c -attr @cell(#000000) FDRE -attr @name FSM_sequential_enc_state_reg[2] -pg 1 -lvl 18 -x 5320 -y 1258
load inst encryption_aes_c|aes_done_i_1 LUT6 hdi_primitives -hier encryption_aes_c -attr @cell(#000000) LUT6 -attr @name aes_done_i_1 -pg 1 -lvl 22 -x 6600 -y 228
load inst encryption_aes_c|aes_done_reg FDRE hdi_primitives -hier encryption_aes_c -attr @cell(#000000) FDRE -attr @name aes_done_reg -pg 1 -lvl 23 -x 6850 -y 258
load inst encryption_aes_c|enc_fsm_proc.round[0]_i_1 LUT4 hdi_primitives -hier encryption_aes_c -attr @cell(#000000) LUT4 -attr @name enc_fsm_proc.round[0]_i_1 -pg 1 -lvl 8 -x 2480 -y 338
load inst encryption_aes_c|enc_fsm_proc.round[1]_i_1 LUT4 hdi_primitives -hier encryption_aes_c -attr @cell(#000000) LUT4 -attr @name enc_fsm_proc.round[1]_i_1 -pg 1 -lvl 1 -x 340 -y 668
load inst encryption_aes_c|enc_fsm_proc.round[2]_i_1 LUT5 hdi_primitives -hier encryption_aes_c -attr @cell(#000000) LUT5 -attr @name enc_fsm_proc.round[2]_i_1 -pg 1 -lvl 3 -x 900 -y 678
load inst encryption_aes_c|enc_fsm_proc.round[3]_i_1 LUT6 hdi_primitives -hier encryption_aes_c -attr @cell(#000000) LUT6 -attr @name enc_fsm_proc.round[3]_i_1 -pg 1 -lvl 8 -x 2480 -y 498
load inst encryption_aes_c|enc_fsm_proc.round[3]_i_2 LUT6 hdi_primitives -hier encryption_aes_c -attr @cell(#000000) LUT6 -attr @name enc_fsm_proc.round[3]_i_2 -pg 1 -lvl 5 -x 1480 -y 798
load inst encryption_aes_c|enc_fsm_proc.round[3]_i_3 LUT6 hdi_primitives -hier encryption_aes_c -attr @cell(#000000) LUT6 -attr @name enc_fsm_proc.round[3]_i_3 -pg 1 -lvl 7 -x 2100 -y 678
load inst encryption_aes_c|enc_fsm_proc.round_reg[0] FDRE hdi_primitives -hier encryption_aes_c -attr @cell(#000000) FDRE -attr @name enc_fsm_proc.round_reg[0] -pg 1 -lvl 9 -x 2840 -y 548
load inst encryption_aes_c|enc_fsm_proc.round_reg[1] FDRE hdi_primitives -hier encryption_aes_c -attr @cell(#000000) FDRE -attr @name enc_fsm_proc.round_reg[1] -pg 1 -lvl 2 -x 590 -y 678
load inst encryption_aes_c|enc_fsm_proc.round_reg[2] FDRE hdi_primitives -hier encryption_aes_c -attr @cell(#000000) FDRE -attr @name enc_fsm_proc.round_reg[2] -pg 1 -lvl 4 -x 1150 -y 708
load inst encryption_aes_c|enc_fsm_proc.round_reg[3] FDRE hdi_primitives -hier encryption_aes_c -attr @cell(#000000) FDRE -attr @name enc_fsm_proc.round_reg[3] -pg 1 -lvl 6 -x 1780 -y 608
load inst encryption_aes_c|led_OBUF[0]_inst_i_1 LUT5 hdi_primitives -hier encryption_aes_c -attr @cell(#000000) LUT5 -attr @name led_OBUF[0]_inst_i_1 -pg 1 -lvl 24 -x 7220 -y 578
load inst encryption_aes_c|led_OBUF[0]_inst_i_2 LUT4 hdi_primitives -hier encryption_aes_c -attr @cell(#000000) LUT4 -attr @name led_OBUF[0]_inst_i_2 -pg 1 -lvl 23 -x 6850 -y 688
load inst encryption_aes_c|led_OBUF[10]_inst_i_1 LUT4 hdi_primitives -hier encryption_aes_c -attr @cell(#000000) LUT4 -attr @name led_OBUF[10]_inst_i_1 -pg 1 -lvl 24 -x 7220 -y 1898
load inst encryption_aes_c|led_OBUF[11]_inst_i_1 LUT4 hdi_primitives -hier encryption_aes_c -attr @cell(#000000) LUT4 -attr @name led_OBUF[11]_inst_i_1 -pg 1 -lvl 24 -x 7220 -y 2028
load inst encryption_aes_c|led_OBUF[12]_inst_i_1 LUT4 hdi_primitives -hier encryption_aes_c -attr @cell(#000000) LUT4 -attr @name led_OBUF[12]_inst_i_1 -pg 1 -lvl 24 -x 7220 -y 2158
load inst encryption_aes_c|led_OBUF[13]_inst_i_1 LUT4 hdi_primitives -hier encryption_aes_c -attr @cell(#000000) LUT4 -attr @name led_OBUF[13]_inst_i_1 -pg 1 -lvl 24 -x 7220 -y 2288
load inst encryption_aes_c|led_OBUF[14]_inst_i_1 LUT4 hdi_primitives -hier encryption_aes_c -attr @cell(#000000) LUT4 -attr @name led_OBUF[14]_inst_i_1 -pg 1 -lvl 24 -x 7220 -y 2418
load inst encryption_aes_c|led_OBUF[15]_inst_i_1 LUT6 hdi_primitives -hier encryption_aes_c -attr @cell(#000000) LUT6 -attr @name led_OBUF[15]_inst_i_1 -pg 1 -lvl 24 -x 7220 -y 2548
load inst encryption_aes_c|led_OBUF[1]_inst_i_1 LUT4 hdi_primitives -hier encryption_aes_c -attr @cell(#000000) LUT4 -attr @name led_OBUF[1]_inst_i_1 -pg 1 -lvl 24 -x 7220 -y 728
load inst encryption_aes_c|led_OBUF[2]_inst_i_1 LUT4 hdi_primitives -hier encryption_aes_c -attr @cell(#000000) LUT4 -attr @name led_OBUF[2]_inst_i_1 -pg 1 -lvl 24 -x 7220 -y 858
load inst encryption_aes_c|led_OBUF[3]_inst_i_1 LUT4 hdi_primitives -hier encryption_aes_c -attr @cell(#000000) LUT4 -attr @name led_OBUF[3]_inst_i_1 -pg 1 -lvl 24 -x 7220 -y 988
load inst encryption_aes_c|led_OBUF[4]_inst_i_1 LUT4 hdi_primitives -hier encryption_aes_c -attr @cell(#000000) LUT4 -attr @name led_OBUF[4]_inst_i_1 -pg 1 -lvl 24 -x 7220 -y 1118
load inst encryption_aes_c|led_OBUF[5]_inst_i_1 LUT4 hdi_primitives -hier encryption_aes_c -attr @cell(#000000) LUT4 -attr @name led_OBUF[5]_inst_i_1 -pg 1 -lvl 24 -x 7220 -y 1248
load inst encryption_aes_c|led_OBUF[6]_inst_i_1 LUT4 hdi_primitives -hier encryption_aes_c -attr @cell(#000000) LUT4 -attr @name led_OBUF[6]_inst_i_1 -pg 1 -lvl 24 -x 7220 -y 1378
load inst encryption_aes_c|led_OBUF[7]_inst_i_1 LUT4 hdi_primitives -hier encryption_aes_c -attr @cell(#000000) LUT4 -attr @name led_OBUF[7]_inst_i_1 -pg 1 -lvl 24 -x 7220 -y 1508
load inst encryption_aes_c|led_OBUF[8]_inst_i_1 LUT4 hdi_primitives -hier encryption_aes_c -attr @cell(#000000) LUT4 -attr @name led_OBUF[8]_inst_i_1 -pg 1 -lvl 24 -x 7220 -y 1638
load inst encryption_aes_c|led_OBUF[9]_inst_i_1 LUT4 hdi_primitives -hier encryption_aes_c -attr @cell(#000000) LUT4 -attr @name led_OBUF[9]_inst_i_1 -pg 1 -lvl 24 -x 7220 -y 1768
load inst encryption_aes_c|led_progress[0]_i_1 LUT4 hdi_primitives -hier encryption_aes_c -attr @cell(#000000) LUT4 -attr @name led_progress[0]_i_1 -pg 1 -lvl 21 -x 6240 -y 368
load inst encryption_aes_c|led_progress[1]_i_1 LUT5 hdi_primitives -hier encryption_aes_c -attr @cell(#000000) LUT5 -attr @name led_progress[1]_i_1 -pg 1 -lvl 21 -x 6240 -y 498
load inst encryption_aes_c|led_progress[2]_i_1 LUT6 hdi_primitives -hier encryption_aes_c -attr @cell(#000000) LUT6 -attr @name led_progress[2]_i_1 -pg 1 -lvl 21 -x 6240 -y 658
load inst encryption_aes_c|led_progress[3]_i_1 LUT6 hdi_primitives -hier encryption_aes_c -attr @cell(#000000) LUT6 -attr @name led_progress[3]_i_1 -pg 1 -lvl 21 -x 6240 -y 828
load inst encryption_aes_c|led_progress[3]_i_2 LUT2 hdi_primitives -hier encryption_aes_c -attr @cell(#000000) LUT2 -attr @name led_progress[3]_i_2 -pg 1 -lvl 20 -x 5900 -y 908
load inst encryption_aes_c|led_progress_reg[0] FDRE hdi_primitives -hier encryption_aes_c -attr @cell(#000000) FDRE -attr @name led_progress_reg[0] -pg 1 -lvl 22 -x 6600 -y 518
load inst encryption_aes_c|led_progress_reg[1] FDRE hdi_primitives -hier encryption_aes_c -attr @cell(#000000) FDRE -attr @name led_progress_reg[1] -pg 1 -lvl 22 -x 6600 -y 668
load inst encryption_aes_c|led_progress_reg[2] FDRE hdi_primitives -hier encryption_aes_c -attr @cell(#000000) FDRE -attr @name led_progress_reg[2] -pg 1 -lvl 22 -x 6600 -y 818
load inst encryption_aes_c|led_progress_reg[3] FDRE hdi_primitives -hier encryption_aes_c -attr @cell(#000000) FDRE -attr @name led_progress_reg[3] -pg 1 -lvl 22 -x 6600 -y 968
load inst encryption_aes_c|step_state[0]_i_1 LUT6 hdi_primitives -hier encryption_aes_c -attr @cell(#000000) LUT6 -attr @name step_state[0]_i_1 -pg 1 -lvl 15 -x 4570 -y 708
load inst encryption_aes_c|step_state[1]_i_1 LUT6 hdi_primitives -hier encryption_aes_c -attr @cell(#000000) LUT6 -attr @name step_state[1]_i_1 -pg 1 -lvl 13 -x 4130 -y 648
load inst encryption_aes_c|step_state_reg[0] FDRE hdi_primitives -hier encryption_aes_c -attr @cell(#000000) FDRE -attr @name step_state_reg[0] -pg 1 -lvl 16 -x 4770 -y 1018
load inst encryption_aes_c|step_state_reg[1] FDRE hdi_primitives -hier encryption_aes_c -attr @cell(#000000) FDRE -attr @name step_state_reg[1] -pg 1 -lvl 14 -x 4330 -y 978
load net encryption_aes_c|<const0> -ground -attr @name <const0> -pin encryption_aes_c|FSM_sequential_enc_state_reg[0] R -pin encryption_aes_c|FSM_sequential_enc_state_reg[1] R -pin encryption_aes_c|FSM_sequential_enc_state_reg[2] R -pin encryption_aes_c|aes_done_reg R -pin encryption_aes_c|enc_fsm_proc.round_reg[0] R -pin encryption_aes_c|enc_fsm_proc.round_reg[1] R -pin encryption_aes_c|enc_fsm_proc.round_reg[2] R -pin encryption_aes_c|enc_fsm_proc.round_reg[3] R -pin encryption_aes_c|led_progress_reg[0] R -pin encryption_aes_c|led_progress_reg[1] R -pin encryption_aes_c|led_progress_reg[2] R -pin encryption_aes_c|led_progress_reg[3] R -pin encryption_aes_c|step_state_reg[0] R -pin encryption_aes_c|step_state_reg[1] R
load net encryption_aes_c|<const1> -power -attr @name <const1> -pin encryption_aes_c|FSM_sequential_enc_state_reg[0] CE -pin encryption_aes_c|FSM_sequential_enc_state_reg[1] CE -pin encryption_aes_c|FSM_sequential_enc_state_reg[2] CE -pin encryption_aes_c|aes_done_reg CE -pin encryption_aes_c|led_progress_reg[0] CE -pin encryption_aes_c|led_progress_reg[1] CE -pin encryption_aes_c|led_progress_reg[2] CE -pin encryption_aes_c|led_progress_reg[3] CE -pin encryption_aes_c|step_state_reg[0] CE -pin encryption_aes_c|step_state_reg[1] CE
load net encryption_aes_c|CLK -attr @name CLK -hierPin encryption_aes_c CLK -pin encryption_aes_c|FSM_sequential_enc_state_reg[0] C -pin encryption_aes_c|FSM_sequential_enc_state_reg[1] C -pin encryption_aes_c|FSM_sequential_enc_state_reg[2] C -pin encryption_aes_c|aes_done_reg C -pin encryption_aes_c|enc_fsm_proc.round_reg[0] C -pin encryption_aes_c|enc_fsm_proc.round_reg[1] C -pin encryption_aes_c|enc_fsm_proc.round_reg[2] C -pin encryption_aes_c|enc_fsm_proc.round_reg[3] C -pin encryption_aes_c|led_progress_reg[0] C -pin encryption_aes_c|led_progress_reg[1] C -pin encryption_aes_c|led_progress_reg[2] C -pin encryption_aes_c|led_progress_reg[3] C -pin encryption_aes_c|step_state_reg[0] C -pin encryption_aes_c|step_state_reg[1] C
netloc encryption_aes_c|CLK 1 0 23 NJ 118 480 578 NJ 578 1060 578 NJ 578 1660 768 1940J 828 NJ 828 2680 1048 NJ 1048 NJ 1048 3680 1058 NJ 1058 4260 1118 4520J 1098 4700 1178 NJ 1178 5200 1058 NJ 1058 5780 978 NJ 978 6460 418 6720
load net encryption_aes_c|FSM_onehot_state_reg[0] -attr @name FSM_onehot_state_reg[0] -hierPin encryption_aes_c FSM_onehot_state_reg[0] -pin encryption_aes_c|FSM_onehot_state[2]_i_1 O
netloc encryption_aes_c|FSM_onehot_state_reg[0] 1 24 1 7380 258n
load net encryption_aes_c|FSM_onehot_state_reg[0]_0 -attr @name FSM_onehot_state_reg[0]_0 -hierPin encryption_aes_c FSM_onehot_state_reg[0]_0 -pin encryption_aes_c|FSM_onehot_state[1]_i_1 O
netloc encryption_aes_c|FSM_onehot_state_reg[0]_0 1 24 1 N 278
load net encryption_aes_c|FSM_onehot_state_reg[0]_1 -attr @name FSM_onehot_state_reg[0]_1 -hierPin encryption_aes_c FSM_onehot_state_reg[0]_1 -pin encryption_aes_c|FSM_onehot_state[0]_i_1 O
netloc encryption_aes_c|FSM_onehot_state_reg[0]_1 1 24 1 7360 108n
load net encryption_aes_c|FSM_onehot_state_reg[2] -attr @name FSM_onehot_state_reg[2] -hierPin encryption_aes_c FSM_onehot_state_reg[2] -pin encryption_aes_c|FSM_onehot_state[0]_i_1 I0 -pin encryption_aes_c|FSM_onehot_state[1]_i_1 I0 -pin encryption_aes_c|FSM_onehot_state[2]_i_1 I0 -pin encryption_aes_c|led_OBUF[0]_inst_i_1 I2 -pin encryption_aes_c|led_OBUF[15]_inst_i_1 I0
netloc encryption_aes_c|FSM_onehot_state_reg[2] 1 0 24 NJ 138 NJ 138 NJ 138 NJ 138 NJ 138 NJ 138 NJ 138 NJ 138 NJ 138 NJ 138 NJ 138 NJ 138 NJ 138 NJ 138 NJ 138 NJ 138 NJ 138 NJ 138 NJ 138 NJ 138 NJ 138 NJ 138 NJ 138 7020
load net encryption_aes_c|FSM_onehot_state_reg[2]_0 -attr @name FSM_onehot_state_reg[2]_0 -hierPin encryption_aes_c FSM_onehot_state_reg[2]_0 -pin encryption_aes_c|FSM_onehot_state[0]_i_1 I3 -pin encryption_aes_c|FSM_onehot_state[1]_i_1 I3 -pin encryption_aes_c|FSM_onehot_state[2]_i_1 I3 -pin encryption_aes_c|led_OBUF[0]_inst_i_1 I1 -pin encryption_aes_c|led_OBUF[15]_inst_i_1 I1
netloc encryption_aes_c|FSM_onehot_state_reg[2]_0 1 0 24 NJ 158 NJ 158 NJ 158 NJ 158 NJ 158 NJ 158 NJ 158 NJ 158 NJ 158 NJ 158 NJ 158 NJ 158 NJ 158 NJ 158 NJ 158 NJ 158 NJ 158 NJ 158 NJ 158 NJ 158 NJ 158 NJ 158 NJ 158 7060
load net encryption_aes_c|FSM_onehot_state_reg[2]_1 -attr @name FSM_onehot_state_reg[2]_1 -hierPin encryption_aes_c FSM_onehot_state_reg[2]_1 -pin encryption_aes_c|FSM_onehot_state[0]_i_1 I5 -pin encryption_aes_c|FSM_onehot_state[1]_i_1 I5 -pin encryption_aes_c|FSM_onehot_state[2]_i_1 I5 -pin encryption_aes_c|led_OBUF[0]_inst_i_1 I3
netloc encryption_aes_c|FSM_onehot_state_reg[2]_1 1 0 24 NJ 198 NJ 198 NJ 198 NJ 198 NJ 198 NJ 198 NJ 198 NJ 198 NJ 198 NJ 198 NJ 198 NJ 198 NJ 198 NJ 198 NJ 198 NJ 198 NJ 198 NJ 198 NJ 198 NJ 198 NJ 198 NJ 198 6760J 358 7140
load net encryption_aes_c|FSM_sequential_enc_state[0]_i_1_n_0 -attr @name FSM_sequential_enc_state[0]_i_1_n_0 -pin encryption_aes_c|FSM_sequential_enc_state[0]_i_1 O -pin encryption_aes_c|FSM_sequential_enc_state_reg[0] D
netloc encryption_aes_c|FSM_sequential_enc_state[0]_i_1_n_0 1 19 1 5760 1108n
load net encryption_aes_c|FSM_sequential_enc_state[1]_i_1_n_0 -attr @name FSM_sequential_enc_state[1]_i_1_n_0 -pin encryption_aes_c|FSM_sequential_enc_state[1]_i_1 O -pin encryption_aes_c|FSM_sequential_enc_state_reg[1] D
netloc encryption_aes_c|FSM_sequential_enc_state[1]_i_1_n_0 1 11 1 N 968
load net encryption_aes_c|FSM_sequential_enc_state[2]_i_1_n_0 -attr @name FSM_sequential_enc_state[2]_i_1_n_0 -pin encryption_aes_c|FSM_sequential_enc_state[2]_i_1 O -pin encryption_aes_c|FSM_sequential_enc_state_reg[2] D
netloc encryption_aes_c|FSM_sequential_enc_state[2]_i_1_n_0 1 17 1 5180 1058n
load net encryption_aes_c|FSM_sequential_enc_state[2]_i_2_n_0 -attr @name FSM_sequential_enc_state[2]_i_2_n_0 -pin encryption_aes_c|FSM_sequential_enc_state[0]_i_1 I1 -pin encryption_aes_c|FSM_sequential_enc_state[1]_i_1 I2 -pin encryption_aes_c|FSM_sequential_enc_state[2]_i_1 I3 -pin encryption_aes_c|FSM_sequential_enc_state[2]_i_2 O
netloc encryption_aes_c|FSM_sequential_enc_state[2]_i_2_n_0 1 10 9 3400 1138 NJ 1138 NJ 1138 NJ 1138 NJ 1138 NJ 1138 4880 1138 NJ 1138 N
load net encryption_aes_c|FSM_sequential_enc_state[2]_i_3_n_0 -attr @name FSM_sequential_enc_state[2]_i_3_n_0 -pin encryption_aes_c|FSM_sequential_enc_state[2]_i_2 I4 -pin encryption_aes_c|FSM_sequential_enc_state[2]_i_3 O -pin encryption_aes_c|enc_fsm_proc.round[3]_i_3 I5
netloc encryption_aes_c|FSM_sequential_enc_state[2]_i_3_n_0 1 6 4 2000 888 NJ 888 NJ 888 3080J
load net encryption_aes_c|FSM_sequential_enc_state[2]_i_4_n_0 -attr @name FSM_sequential_enc_state[2]_i_4_n_0 -pin encryption_aes_c|FSM_sequential_enc_state[2]_i_2 I5 -pin encryption_aes_c|FSM_sequential_enc_state[2]_i_4 O
netloc encryption_aes_c|FSM_sequential_enc_state[2]_i_4_n_0 1 9 1 3020 748n
load net encryption_aes_c|aes_done -attr @name aes_done -hierPin encryption_aes_c aes_done -pin encryption_aes_c|FSM_onehot_state[0]_i_1 I4 -pin encryption_aes_c|FSM_onehot_state[1]_i_1 I4 -pin encryption_aes_c|FSM_onehot_state[2]_i_1 I4 -pin encryption_aes_c|aes_done_reg Q -pin encryption_aes_c|led_OBUF[0]_inst_i_1 I0
netloc encryption_aes_c|aes_done 1 23 2 7080 548 N
load net encryption_aes_c|aes_done_i_1_n_0 -attr @name aes_done_i_1_n_0 -pin encryption_aes_c|aes_done_i_1 O -pin encryption_aes_c|aes_done_reg D
netloc encryption_aes_c|aes_done_i_1_n_0 1 22 1 6740 268n
load net encryption_aes_c|enc_fsm_proc.round[3]_i_1_n_0 -attr @name enc_fsm_proc.round[3]_i_1_n_0 -pin encryption_aes_c|enc_fsm_proc.round[3]_i_1 O -pin encryption_aes_c|enc_fsm_proc.round_reg[0] CE -pin encryption_aes_c|enc_fsm_proc.round_reg[1] CE -pin encryption_aes_c|enc_fsm_proc.round_reg[2] CE -pin encryption_aes_c|enc_fsm_proc.round_reg[3] CE
netloc encryption_aes_c|enc_fsm_proc.round[3]_i_1_n_0 1 1 8 500 598 NJ 598 1040 598 NJ 598 1620 468 NJ 468 NJ 468 2620
load net encryption_aes_c|enc_fsm_proc.round[3]_i_3_n_0 -attr @name enc_fsm_proc.round[3]_i_3_n_0 -pin encryption_aes_c|enc_fsm_proc.round[3]_i_1 I1 -pin encryption_aes_c|enc_fsm_proc.round[3]_i_3 O
netloc encryption_aes_c|enc_fsm_proc.round[3]_i_3_n_0 1 7 1 2240 528n
load net encryption_aes_c|enc_fsm_proc.round_reg_n_0_[0] -attr @name enc_fsm_proc.round_reg_n_0_[0] -pin encryption_aes_c|FSM_sequential_enc_state[2]_i_2 I0 -pin encryption_aes_c|enc_fsm_proc.round[0]_i_1 I1 -pin encryption_aes_c|enc_fsm_proc.round[1]_i_1 I3 -pin encryption_aes_c|enc_fsm_proc.round[2]_i_1 I4 -pin encryption_aes_c|enc_fsm_proc.round[3]_i_2 I5 -pin encryption_aes_c|enc_fsm_proc.round[3]_i_3 I1 -pin encryption_aes_c|enc_fsm_proc.round_reg[0] Q -pin encryption_aes_c|led_progress[0]_i_1 I1 -pin encryption_aes_c|led_progress[1]_i_1 I0 -pin encryption_aes_c|led_progress[2]_i_1 I1 -pin encryption_aes_c|led_progress[3]_i_1 I0
netloc encryption_aes_c|enc_fsm_proc.round_reg_n_0_[0] 1 0 21 260 838 NJ 838 800 868 NJ 868 1380 708 NJ 708 1960 448 2320 648 NJ 648 3080 578 NJ 578 NJ 578 NJ 578 NJ 578 NJ 578 NJ 578 NJ 578 NJ 578 NJ 578 NJ 578 6100
load net encryption_aes_c|enc_fsm_proc.round_reg_n_0_[1] -attr @name enc_fsm_proc.round_reg_n_0_[1] -pin encryption_aes_c|FSM_sequential_enc_state[2]_i_2 I1 -pin encryption_aes_c|enc_fsm_proc.round[1]_i_1 I2 -pin encryption_aes_c|enc_fsm_proc.round[2]_i_1 I3 -pin encryption_aes_c|enc_fsm_proc.round[3]_i_2 I4 -pin encryption_aes_c|enc_fsm_proc.round[3]_i_3 I2 -pin encryption_aes_c|enc_fsm_proc.round_reg[1] Q -pin encryption_aes_c|led_progress[1]_i_1 I1 -pin encryption_aes_c|led_progress[2]_i_1 I2 -pin encryption_aes_c|led_progress[3]_i_1 I1
netloc encryption_aes_c|enc_fsm_proc.round_reg_n_0_[1] 1 0 21 240 818 NJ 818 740 628 NJ 628 1360 728 NJ 728 2020 848 NJ 848 NJ 848 3000 598 NJ 598 NJ 598 NJ 598 NJ 598 NJ 598 NJ 598 NJ 598 NJ 598 NJ 598 NJ 598 6160
load net encryption_aes_c|enc_fsm_proc.round_reg_n_0_[2] -attr @name enc_fsm_proc.round_reg_n_0_[2] -pin encryption_aes_c|FSM_sequential_enc_state[2]_i_2 I3 -pin encryption_aes_c|enc_fsm_proc.round[2]_i_1 I2 -pin encryption_aes_c|enc_fsm_proc.round[3]_i_2 I3 -pin encryption_aes_c|enc_fsm_proc.round[3]_i_3 I4 -pin encryption_aes_c|enc_fsm_proc.round_reg[2] Q -pin encryption_aes_c|led_progress[2]_i_1 I3 -pin encryption_aes_c|led_progress[3]_i_1 I2
netloc encryption_aes_c|enc_fsm_proc.round_reg_n_0_[2] 1 2 19 820 848 NJ 848 1300 988 NJ 988 1980 868 NJ 868 NJ 868 3060 818 NJ 818 NJ 818 4020J 858 NJ 858 NJ 858 NJ 858 NJ 858 NJ 858 NJ 858 NJ 858 6140
load net encryption_aes_c|enc_fsm_proc.round_reg_n_0_[3] -attr @name enc_fsm_proc.round_reg_n_0_[3] -pin encryption_aes_c|FSM_sequential_enc_state[2]_i_2 I2 -pin encryption_aes_c|enc_fsm_proc.round[3]_i_2 I2 -pin encryption_aes_c|enc_fsm_proc.round[3]_i_3 I3 -pin encryption_aes_c|enc_fsm_proc.round_reg[3] Q -pin encryption_aes_c|led_progress[3]_i_1 I3
netloc encryption_aes_c|enc_fsm_proc.round_reg_n_0_[3] 1 4 17 1400 748 NJ 748 1940 648 2260J 728 2640J 668 3040 838 NJ 838 NJ 838 3960J 878 NJ 878 NJ 878 NJ 878 NJ 878 NJ 878 NJ 878 NJ 878 6100J
load net encryption_aes_c|enc_state[0] -attr @name enc_state[0] -pin encryption_aes_c|FSM_sequential_enc_state[0]_i_1 I2 -pin encryption_aes_c|FSM_sequential_enc_state[1]_i_1 I0 -pin encryption_aes_c|FSM_sequential_enc_state[2]_i_1 I2 -pin encryption_aes_c|FSM_sequential_enc_state[2]_i_4 I0 -pin encryption_aes_c|FSM_sequential_enc_state_reg[0] Q -pin encryption_aes_c|aes_done_i_1 I1 -pin encryption_aes_c|enc_fsm_proc.round[0]_i_1 I3 -pin encryption_aes_c|enc_fsm_proc.round[3]_i_1 I5 -pin encryption_aes_c|enc_fsm_proc.round[3]_i_3 I0 -pin encryption_aes_c|led_progress[0]_i_1 I0 -pin encryption_aes_c|led_progress[1]_i_1 I2 -pin encryption_aes_c|led_progress[2]_i_1 I0 -pin encryption_aes_c|led_progress[3]_i_1 I4 -pin encryption_aes_c|step_state[0]_i_1 I3 -pin encryption_aes_c|step_state[1]_i_1 I4
netloc encryption_aes_c|enc_state[0] 1 6 16 2020 628 2400 708 2740 928 NJ 928 3380 1118 NJ 1118 4080 1098 NJ 1098 4480 1118 NJ 1118 4920 1158 NJ 1158 5480 1198 NJ 1198 6080 298 6380
load net encryption_aes_c|enc_state[1] -attr @name enc_state[1] -pin encryption_aes_c|FSM_sequential_enc_state[1]_i_1 I3 -pin encryption_aes_c|FSM_sequential_enc_state[2]_i_1 I1 -pin encryption_aes_c|FSM_sequential_enc_state[2]_i_3 I1 -pin encryption_aes_c|FSM_sequential_enc_state[2]_i_4 I1 -pin encryption_aes_c|FSM_sequential_enc_state_reg[1] Q -pin encryption_aes_c|aes_done_i_1 I3 -pin encryption_aes_c|enc_fsm_proc.round[0]_i_1 I2 -pin encryption_aes_c|enc_fsm_proc.round[1]_i_1 I1 -pin encryption_aes_c|enc_fsm_proc.round[2]_i_1 I1 -pin encryption_aes_c|enc_fsm_proc.round[3]_i_1 I4 -pin encryption_aes_c|enc_fsm_proc.round[3]_i_2 I1 -pin encryption_aes_c|led_progress[0]_i_1 I2 -pin encryption_aes_c|led_progress[1]_i_1 I3 -pin encryption_aes_c|led_progress[2]_i_1 I5 -pin encryption_aes_c|led_progress[3]_i_2 I0 -pin encryption_aes_c|step_state[0]_i_1 I4 -pin encryption_aes_c|step_state[1]_i_1 I5
netloc encryption_aes_c|enc_state[1] 1 0 22 220 798 NJ 798 760 828 NJ 828 1340 768 1640 928 NJ 928 2300 688 2660 968 NJ 968 3340 858 NJ 858 4040 818 NJ 818 4500 898 NJ 898 4920 898 NJ 898 NJ 898 5800 768 6120 318 6400
load net encryption_aes_c|enc_state[2] -attr @name enc_state[2] -pin encryption_aes_c|FSM_sequential_enc_state[0]_i_1 I0 -pin encryption_aes_c|FSM_sequential_enc_state[1]_i_1 I1 -pin encryption_aes_c|FSM_sequential_enc_state[2]_i_1 I4 -pin encryption_aes_c|FSM_sequential_enc_state[2]_i_3 I2 -pin encryption_aes_c|FSM_sequential_enc_state[2]_i_4 I4 -pin encryption_aes_c|FSM_sequential_enc_state_reg[2] Q -pin encryption_aes_c|aes_done_i_1 I4 -pin encryption_aes_c|enc_fsm_proc.round[0]_i_1 I0 -pin encryption_aes_c|enc_fsm_proc.round[1]_i_1 I0 -pin encryption_aes_c|enc_fsm_proc.round[2]_i_1 I0 -pin encryption_aes_c|enc_fsm_proc.round[3]_i_1 I3 -pin encryption_aes_c|enc_fsm_proc.round[3]_i_2 I0 -pin encryption_aes_c|led_progress[0]_i_1 I3 -pin encryption_aes_c|led_progress[1]_i_1 I4 -pin encryption_aes_c|led_progress[2]_i_1 I4 -pin encryption_aes_c|led_progress[3]_i_2 I1 -pin encryption_aes_c|step_state[0]_i_1 I2 -pin encryption_aes_c|step_state[1]_i_1 I3
netloc encryption_aes_c|enc_state[2] 1 0 22 200 778 NJ 778 780 808 NJ 808 1320 948 1660 948 NJ 948 2280 668 2620 948 NJ 948 3360 798 NJ 798 4060 798 NJ 798 4460 1158 NJ 1158 4900 1358 NJ 1358 5500 1078 5760 748 6180 338 6420
load net encryption_aes_c|led_OBUF[0] -attr @rip(#000000) 0 -attr @name led_OBUF[0] -hierPin encryption_aes_c led_OBUF[0] -pin encryption_aes_c|led_OBUF[0]_inst_i_1 O
load net encryption_aes_c|led_OBUF[0]_inst_i_2_n_0 -attr @name led_OBUF[0]_inst_i_2_n_0 -pin encryption_aes_c|led_OBUF[0]_inst_i_1 I4 -pin encryption_aes_c|led_OBUF[0]_inst_i_2 O
netloc encryption_aes_c|led_OBUF[0]_inst_i_2_n_0 1 23 1 7040 668n
load net encryption_aes_c|led_OBUF[10] -attr @rip(#000000) 10 -attr @name led_OBUF[10] -hierPin encryption_aes_c led_OBUF[10] -pin encryption_aes_c|led_OBUF[10]_inst_i_1 O
load net encryption_aes_c|led_OBUF[11] -attr @rip(#000000) 11 -attr @name led_OBUF[11] -hierPin encryption_aes_c led_OBUF[11] -pin encryption_aes_c|led_OBUF[11]_inst_i_1 O
load net encryption_aes_c|led_OBUF[12] -attr @rip(#000000) 12 -attr @name led_OBUF[12] -hierPin encryption_aes_c led_OBUF[12] -pin encryption_aes_c|led_OBUF[12]_inst_i_1 O
load net encryption_aes_c|led_OBUF[13] -attr @rip(#000000) 13 -attr @name led_OBUF[13] -hierPin encryption_aes_c led_OBUF[13] -pin encryption_aes_c|led_OBUF[13]_inst_i_1 O
load net encryption_aes_c|led_OBUF[14] -attr @rip(#000000) 14 -attr @name led_OBUF[14] -hierPin encryption_aes_c led_OBUF[14] -pin encryption_aes_c|led_OBUF[14]_inst_i_1 O
load net encryption_aes_c|led_OBUF[15] -attr @rip(#000000) 15 -attr @name led_OBUF[15] -hierPin encryption_aes_c led_OBUF[15] -pin encryption_aes_c|led_OBUF[15]_inst_i_1 O
load net encryption_aes_c|led_OBUF[1] -attr @rip(#000000) 1 -attr @name led_OBUF[1] -hierPin encryption_aes_c led_OBUF[1] -pin encryption_aes_c|led_OBUF[1]_inst_i_1 O
load net encryption_aes_c|led_OBUF[2] -attr @rip(#000000) 2 -attr @name led_OBUF[2] -hierPin encryption_aes_c led_OBUF[2] -pin encryption_aes_c|led_OBUF[2]_inst_i_1 O
load net encryption_aes_c|led_OBUF[3] -attr @rip(#000000) 3 -attr @name led_OBUF[3] -hierPin encryption_aes_c led_OBUF[3] -pin encryption_aes_c|led_OBUF[3]_inst_i_1 O
load net encryption_aes_c|led_OBUF[4] -attr @rip(#000000) 4 -attr @name led_OBUF[4] -hierPin encryption_aes_c led_OBUF[4] -pin encryption_aes_c|led_OBUF[4]_inst_i_1 O
load net encryption_aes_c|led_OBUF[5] -attr @rip(#000000) 5 -attr @name led_OBUF[5] -hierPin encryption_aes_c led_OBUF[5] -pin encryption_aes_c|led_OBUF[5]_inst_i_1 O
load net encryption_aes_c|led_OBUF[6] -attr @rip(#000000) 6 -attr @name led_OBUF[6] -hierPin encryption_aes_c led_OBUF[6] -pin encryption_aes_c|led_OBUF[6]_inst_i_1 O
load net encryption_aes_c|led_OBUF[7] -attr @rip(#000000) 7 -attr @name led_OBUF[7] -hierPin encryption_aes_c led_OBUF[7] -pin encryption_aes_c|led_OBUF[7]_inst_i_1 O
load net encryption_aes_c|led_OBUF[8] -attr @rip(#000000) 8 -attr @name led_OBUF[8] -hierPin encryption_aes_c led_OBUF[8] -pin encryption_aes_c|led_OBUF[8]_inst_i_1 O
load net encryption_aes_c|led_OBUF[9] -attr @rip(#000000) 9 -attr @name led_OBUF[9] -hierPin encryption_aes_c led_OBUF[9] -pin encryption_aes_c|led_OBUF[9]_inst_i_1 O
load net encryption_aes_c|led_progress[0] -attr @name led_progress[0] -pin encryption_aes_c|led_OBUF[0]_inst_i_2 I2 -pin encryption_aes_c|led_OBUF[10]_inst_i_1 I2 -pin encryption_aes_c|led_OBUF[11]_inst_i_1 I3 -pin encryption_aes_c|led_OBUF[12]_inst_i_1 I2 -pin encryption_aes_c|led_OBUF[13]_inst_i_1 I2 -pin encryption_aes_c|led_OBUF[14]_inst_i_1 I2 -pin encryption_aes_c|led_OBUF[15]_inst_i_1 I2 -pin encryption_aes_c|led_OBUF[1]_inst_i_1 I2 -pin encryption_aes_c|led_OBUF[2]_inst_i_1 I2 -pin encryption_aes_c|led_OBUF[3]_inst_i_1 I3 -pin encryption_aes_c|led_OBUF[4]_inst_i_1 I2 -pin encryption_aes_c|led_OBUF[5]_inst_i_1 I2 -pin encryption_aes_c|led_OBUF[6]_inst_i_1 I2 -pin encryption_aes_c|led_OBUF[7]_inst_i_1 I3 -pin encryption_aes_c|led_OBUF[8]_inst_i_1 I2 -pin encryption_aes_c|led_OBUF[9]_inst_i_1 I2 -pin encryption_aes_c|led_progress_reg[0] Q
netloc encryption_aes_c|led_progress[0] 1 22 2 6740 658 6980
load net encryption_aes_c|led_progress[0]_i_1_n_0 -attr @name led_progress[0]_i_1_n_0 -pin encryption_aes_c|led_progress[0]_i_1 O -pin encryption_aes_c|led_progress_reg[0] D
netloc encryption_aes_c|led_progress[0]_i_1_n_0 1 21 1 6360 398n
load net encryption_aes_c|led_progress[1] -attr @name led_progress[1] -pin encryption_aes_c|led_OBUF[0]_inst_i_2 I3 -pin encryption_aes_c|led_OBUF[10]_inst_i_1 I3 -pin encryption_aes_c|led_OBUF[11]_inst_i_1 I2 -pin encryption_aes_c|led_OBUF[12]_inst_i_1 I3 -pin encryption_aes_c|led_OBUF[13]_inst_i_1 I3 -pin encryption_aes_c|led_OBUF[14]_inst_i_1 I3 -pin encryption_aes_c|led_OBUF[15]_inst_i_1 I3 -pin encryption_aes_c|led_OBUF[1]_inst_i_1 I3 -pin encryption_aes_c|led_OBUF[2]_inst_i_1 I3 -pin encryption_aes_c|led_OBUF[3]_inst_i_1 I2 -pin encryption_aes_c|led_OBUF[4]_inst_i_1 I3 -pin encryption_aes_c|led_OBUF[5]_inst_i_1 I3 -pin encryption_aes_c|led_OBUF[6]_inst_i_1 I3 -pin encryption_aes_c|led_OBUF[7]_inst_i_1 I2 -pin encryption_aes_c|led_OBUF[8]_inst_i_1 I3 -pin encryption_aes_c|led_OBUF[9]_inst_i_1 I3 -pin encryption_aes_c|led_progress_reg[1] Q
netloc encryption_aes_c|led_progress[1] 1 22 2 6720 798 7000
load net encryption_aes_c|led_progress[1]_i_1_n_0 -attr @name led_progress[1]_i_1_n_0 -pin encryption_aes_c|led_progress[1]_i_1 O -pin encryption_aes_c|led_progress_reg[1] D
netloc encryption_aes_c|led_progress[1]_i_1_n_0 1 21 1 6360 548n
load net encryption_aes_c|led_progress[2] -attr @name led_progress[2] -pin encryption_aes_c|led_OBUF[0]_inst_i_2 I0 -pin encryption_aes_c|led_OBUF[10]_inst_i_1 I0 -pin encryption_aes_c|led_OBUF[11]_inst_i_1 I0 -pin encryption_aes_c|led_OBUF[12]_inst_i_1 I0 -pin encryption_aes_c|led_OBUF[13]_inst_i_1 I0 -pin encryption_aes_c|led_OBUF[14]_inst_i_1 I0 -pin encryption_aes_c|led_OBUF[15]_inst_i_1 I5 -pin encryption_aes_c|led_OBUF[1]_inst_i_1 I0 -pin encryption_aes_c|led_OBUF[2]_inst_i_1 I0 -pin encryption_aes_c|led_OBUF[3]_inst_i_1 I0 -pin encryption_aes_c|led_OBUF[4]_inst_i_1 I0 -pin encryption_aes_c|led_OBUF[5]_inst_i_1 I0 -pin encryption_aes_c|led_OBUF[6]_inst_i_1 I0 -pin encryption_aes_c|led_OBUF[7]_inst_i_1 I0 -pin encryption_aes_c|led_OBUF[8]_inst_i_1 I0 -pin encryption_aes_c|led_OBUF[9]_inst_i_1 I0 -pin encryption_aes_c|led_progress_reg[2] Q
netloc encryption_aes_c|led_progress[2] 1 22 2 6760 818 7100
load net encryption_aes_c|led_progress[2]_i_1_n_0 -attr @name led_progress[2]_i_1_n_0 -pin encryption_aes_c|led_progress[2]_i_1 O -pin encryption_aes_c|led_progress_reg[2] D
netloc encryption_aes_c|led_progress[2]_i_1_n_0 1 21 1 6360 708n
load net encryption_aes_c|led_progress[3] -attr @name led_progress[3] -pin encryption_aes_c|led_OBUF[0]_inst_i_2 I1 -pin encryption_aes_c|led_OBUF[10]_inst_i_1 I1 -pin encryption_aes_c|led_OBUF[11]_inst_i_1 I1 -pin encryption_aes_c|led_OBUF[12]_inst_i_1 I1 -pin encryption_aes_c|led_OBUF[13]_inst_i_1 I1 -pin encryption_aes_c|led_OBUF[14]_inst_i_1 I1 -pin encryption_aes_c|led_OBUF[15]_inst_i_1 I4 -pin encryption_aes_c|led_OBUF[1]_inst_i_1 I1 -pin encryption_aes_c|led_OBUF[2]_inst_i_1 I1 -pin encryption_aes_c|led_OBUF[3]_inst_i_1 I1 -pin encryption_aes_c|led_OBUF[4]_inst_i_1 I1 -pin encryption_aes_c|led_OBUF[5]_inst_i_1 I1 -pin encryption_aes_c|led_OBUF[6]_inst_i_1 I1 -pin encryption_aes_c|led_OBUF[7]_inst_i_1 I1 -pin encryption_aes_c|led_OBUF[8]_inst_i_1 I1 -pin encryption_aes_c|led_OBUF[9]_inst_i_1 I1 -pin encryption_aes_c|led_progress_reg[3] Q
netloc encryption_aes_c|led_progress[3] 1 22 2 6780 948 7140
load net encryption_aes_c|led_progress[3]_i_1_n_0 -attr @name led_progress[3]_i_1_n_0 -pin encryption_aes_c|led_progress[3]_i_1 O -pin encryption_aes_c|led_progress_reg[3] D
netloc encryption_aes_c|led_progress[3]_i_1_n_0 1 21 1 6480 878n
load net encryption_aes_c|led_progress[3]_i_2_n_0 -attr @name led_progress[3]_i_2_n_0 -pin encryption_aes_c|led_progress[3]_i_1 I5 -pin encryption_aes_c|led_progress[3]_i_2 O
netloc encryption_aes_c|led_progress[3]_i_2_n_0 1 20 1 6060 918n
load net encryption_aes_c|reset -attr @name reset -hierPin encryption_aes_c reset -pin encryption_aes_c|FSM_sequential_enc_state[2]_i_4 I5 -pin encryption_aes_c|aes_done_i_1 I0 -pin encryption_aes_c|enc_fsm_proc.round[3]_i_1 I2 -pin encryption_aes_c|step_state[0]_i_1 I1 -pin encryption_aes_c|step_state[1]_i_1 I2
netloc encryption_aes_c|reset 1 0 22 NJ 238 NJ 238 NJ 238 NJ 238 NJ 238 NJ 238 NJ 238 2380 308 2720 468 NJ 468 NJ 468 NJ 468 4080 618 NJ 618 4520 238 NJ 238 NJ 238 NJ 238 NJ 238 NJ 238 NJ 238 NJ
load net encryption_aes_c|round[0] -attr @name round[0] -pin encryption_aes_c|enc_fsm_proc.round[0]_i_1 O -pin encryption_aes_c|enc_fsm_proc.round_reg[0] D
netloc encryption_aes_c|round[0] 1 8 1 2740 368n
load net encryption_aes_c|round[1] -attr @name round[1] -pin encryption_aes_c|enc_fsm_proc.round[1]_i_1 O -pin encryption_aes_c|enc_fsm_proc.round_reg[1] D
netloc encryption_aes_c|round[1] 1 1 1 480 688n
load net encryption_aes_c|round[2] -attr @name round[2] -pin encryption_aes_c|enc_fsm_proc.round[2]_i_1 O -pin encryption_aes_c|enc_fsm_proc.round_reg[2] D
netloc encryption_aes_c|round[2] 1 3 1 1040 718n
load net encryption_aes_c|round[3] -attr @name round[3] -pin encryption_aes_c|enc_fsm_proc.round[3]_i_2 O -pin encryption_aes_c|enc_fsm_proc.round_reg[3] D
netloc encryption_aes_c|round[3] 1 5 1 1620 618n
load net encryption_aes_c|rst -attr @name rst -hierPin encryption_aes_c rst -pin encryption_aes_c|FSM_onehot_state[0]_i_1 I2 -pin encryption_aes_c|FSM_onehot_state[1]_i_1 I2 -pin encryption_aes_c|FSM_onehot_state[2]_i_1 I2
netloc encryption_aes_c|rst 1 0 24 NJ 258 NJ 258 NJ 258 NJ 258 NJ 258 NJ 258 NJ 258 NJ 258 NJ 258 NJ 258 NJ 258 NJ 258 NJ 258 NJ 258 NJ 258 NJ 258 NJ 258 NJ 258 NJ 258 NJ 258 NJ 258 6360J 378 NJ 378 7120
load net encryption_aes_c|start -attr @name start -hierPin encryption_aes_c start -pin encryption_aes_c|FSM_sequential_enc_state[2]_i_4 I3 -pin encryption_aes_c|enc_fsm_proc.round[3]_i_1 I0
netloc encryption_aes_c|start 1 0 9 NJ 278 NJ 278 NJ 278 NJ 278 NJ 278 NJ 278 NJ 278 2340 448 2700
load net encryption_aes_c|step_state[0]_i_1_n_0 -attr @name step_state[0]_i_1_n_0 -pin encryption_aes_c|step_state[0]_i_1 O -pin encryption_aes_c|step_state_reg[0] D
netloc encryption_aes_c|step_state[0]_i_1_n_0 1 15 1 4680 758n
load net encryption_aes_c|step_state[1]_i_1_n_0 -attr @name step_state[1]_i_1_n_0 -pin encryption_aes_c|step_state[1]_i_1 O -pin encryption_aes_c|step_state_reg[1] D
netloc encryption_aes_c|step_state[1]_i_1_n_0 1 13 1 4240 698n
load net encryption_aes_c|step_state_reg_n_0_[0] -attr @name step_state_reg_n_0_[0] -pin encryption_aes_c|FSM_sequential_enc_state[2]_i_1 I0 -pin encryption_aes_c|FSM_sequential_enc_state[2]_i_3 I0 -pin encryption_aes_c|aes_done_i_1 I2 -pin encryption_aes_c|step_state[0]_i_1 I5 -pin encryption_aes_c|step_state[1]_i_1 I0 -pin encryption_aes_c|step_state_reg[0] Q
netloc encryption_aes_c|step_state_reg_n_0_[0] 1 5 17 1680 788 1960J 908 NJ 908 NJ 908 NJ 908 NJ 908 3660J 1078 3980 838 NJ 838 4520 918 NJ 918 4900 978 NJ 978 5500J 998 NJ 998 NJ 998 6500
load net encryption_aes_c|step_state_reg_n_0_[1] -attr @name step_state_reg_n_0_[1] -pin encryption_aes_c|FSM_sequential_enc_state[2]_i_3 I3 -pin encryption_aes_c|FSM_sequential_enc_state[2]_i_4 I2 -pin encryption_aes_c|aes_done_i_1 I5 -pin encryption_aes_c|step_state[0]_i_1 I0 -pin encryption_aes_c|step_state[1]_i_1 I1 -pin encryption_aes_c|step_state_reg[1] Q
netloc encryption_aes_c|step_state_reg_n_0_[1] 1 5 17 1680 968 NJ 968 NJ 968 2640 1098 NJ 1098 NJ 1098 NJ 1098 4000 1078 NJ 1078 4440 558 NJ 558 NJ 558 NJ 558 NJ 558 NJ 558 6060J 628 6440J
load net encryption_aes_c|strt -attr @name strt -hierPin encryption_aes_c strt -pin encryption_aes_c|FSM_onehot_state[0]_i_1 I1 -pin encryption_aes_c|FSM_onehot_state[1]_i_1 I1 -pin encryption_aes_c|FSM_onehot_state[2]_i_1 I1
netloc encryption_aes_c|strt 1 0 24 NJ 298 NJ 298 NJ 298 NJ 298 NJ 298 NJ 298 NJ 298 2360J 288 NJ 288 NJ 288 NJ 288 NJ 288 NJ 288 NJ 288 NJ 288 NJ 288 NJ 288 NJ 288 NJ 288 NJ 288 6060J 278 6460J 398 NJ 398 7100
load netBundle @encryption_aes_c|led_OBUF 16 encryption_aes_c|led_OBUF[15] encryption_aes_c|led_OBUF[14] encryption_aes_c|led_OBUF[13] encryption_aes_c|led_OBUF[12] encryption_aes_c|led_OBUF[11] encryption_aes_c|led_OBUF[10] encryption_aes_c|led_OBUF[9] encryption_aes_c|led_OBUF[8] encryption_aes_c|led_OBUF[7] encryption_aes_c|led_OBUF[6] encryption_aes_c|led_OBUF[5] encryption_aes_c|led_OBUF[4] encryption_aes_c|led_OBUF[3] encryption_aes_c|led_OBUF[2] encryption_aes_c|led_OBUF[1] encryption_aes_c|led_OBUF[0] -autobundled
netbloc @encryption_aes_c|led_OBUF 1 24 1 7360 628n
levelinfo -pg 1 0 170 7580
levelinfo -hier encryption_aes_c * 340 590 900 1150 1480 1780 2100 2480 2840 3180 3500 3800 4130 4330 4570 4770 5020 5320 5600 5900 6240 6600 6850 7220 *
pagesize -pg 1 -db -bbox -sgen 0 -10 7580 2730
pagesize -hier encryption_aes_c -db -bbox -sgen 170 28 7410 2698
show
fullfit
#
# initialize ictrl to current module top_io work:top_io:NOFILE
ictrl init topinfo |
