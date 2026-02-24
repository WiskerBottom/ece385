// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2022.2 (win64) Build 3671981 Fri Oct 14 05:00:03 MDT 2022
// Date        : Sat Feb 21 15:54:33 2026
// Host        : Roaa running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               c:/Users/ROAAI/lab5.1/lab5.1.gen/sources_1/ip/blk_mem_gen_0/blk_mem_gen_0_sim_netlist.v
// Design      : blk_mem_gen_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7s50csga324-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "blk_mem_gen_0,blk_mem_gen_v8_4_5,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "blk_mem_gen_v8_4_5,Vivado 2022.2" *) 
(* NotValidForBitStream *)
module blk_mem_gen_0
   (clka,
    ena,
    wea,
    addra,
    dina,
    douta);
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME BRAM_PORTA, MEM_SIZE 8192, MEM_WIDTH 32, MEM_ECC NONE, MASTER_TYPE OTHER, READ_LATENCY 1" *) input clka;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA EN" *) input ena;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA WE" *) input [0:0]wea;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA ADDR" *) input [9:0]addra;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA DIN" *) input [15:0]dina;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA DOUT" *) output [15:0]douta;

  wire [9:0]addra;
  wire clka;
  wire [15:0]dina;
  wire [15:0]douta;
  wire ena;
  wire [0:0]wea;
  wire NLW_U0_dbiterr_UNCONNECTED;
  wire NLW_U0_rsta_busy_UNCONNECTED;
  wire NLW_U0_rstb_busy_UNCONNECTED;
  wire NLW_U0_s_axi_arready_UNCONNECTED;
  wire NLW_U0_s_axi_awready_UNCONNECTED;
  wire NLW_U0_s_axi_bvalid_UNCONNECTED;
  wire NLW_U0_s_axi_dbiterr_UNCONNECTED;
  wire NLW_U0_s_axi_rlast_UNCONNECTED;
  wire NLW_U0_s_axi_rvalid_UNCONNECTED;
  wire NLW_U0_s_axi_sbiterr_UNCONNECTED;
  wire NLW_U0_s_axi_wready_UNCONNECTED;
  wire NLW_U0_sbiterr_UNCONNECTED;
  wire [15:0]NLW_U0_doutb_UNCONNECTED;
  wire [9:0]NLW_U0_rdaddrecc_UNCONNECTED;
  wire [3:0]NLW_U0_s_axi_bid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_bresp_UNCONNECTED;
  wire [9:0]NLW_U0_s_axi_rdaddrecc_UNCONNECTED;
  wire [15:0]NLW_U0_s_axi_rdata_UNCONNECTED;
  wire [3:0]NLW_U0_s_axi_rid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_rresp_UNCONNECTED;

  (* C_ADDRA_WIDTH = "10" *) 
  (* C_ADDRB_WIDTH = "10" *) 
  (* C_ALGORITHM = "1" *) 
  (* C_AXI_ID_WIDTH = "4" *) 
  (* C_AXI_SLAVE_TYPE = "0" *) 
  (* C_AXI_TYPE = "1" *) 
  (* C_BYTE_SIZE = "9" *) 
  (* C_COMMON_CLK = "0" *) 
  (* C_COUNT_18K_BRAM = "1" *) 
  (* C_COUNT_36K_BRAM = "0" *) 
  (* C_CTRL_ECC_ALGO = "NONE" *) 
  (* C_DEFAULT_DATA = "0" *) 
  (* C_DISABLE_WARN_BHV_COLL = "0" *) 
  (* C_DISABLE_WARN_BHV_RANGE = "0" *) 
  (* C_ELABORATION_DIR = "./" *) 
  (* C_ENABLE_32BIT_ADDRESS = "0" *) 
  (* C_EN_DEEPSLEEP_PIN = "0" *) 
  (* C_EN_ECC_PIPE = "0" *) 
  (* C_EN_RDADDRA_CHG = "0" *) 
  (* C_EN_RDADDRB_CHG = "0" *) 
  (* C_EN_SAFETY_CKT = "0" *) 
  (* C_EN_SHUTDOWN_PIN = "0" *) 
  (* C_EN_SLEEP_PIN = "0" *) 
  (* C_EST_POWER_SUMMARY = "Estimated Power for IP     :     1.51805 mW" *) 
  (* C_FAMILY = "spartan7" *) 
  (* C_HAS_AXI_ID = "0" *) 
  (* C_HAS_ENA = "1" *) 
  (* C_HAS_ENB = "0" *) 
  (* C_HAS_INJECTERR = "0" *) 
  (* C_HAS_MEM_OUTPUT_REGS_A = "1" *) 
  (* C_HAS_MEM_OUTPUT_REGS_B = "0" *) 
  (* C_HAS_MUX_OUTPUT_REGS_A = "0" *) 
  (* C_HAS_MUX_OUTPUT_REGS_B = "0" *) 
  (* C_HAS_REGCEA = "0" *) 
  (* C_HAS_REGCEB = "0" *) 
  (* C_HAS_RSTA = "0" *) 
  (* C_HAS_RSTB = "0" *) 
  (* C_HAS_SOFTECC_INPUT_REGS_A = "0" *) 
  (* C_HAS_SOFTECC_OUTPUT_REGS_B = "0" *) 
  (* C_INITA_VAL = "0" *) 
  (* C_INITB_VAL = "0" *) 
  (* C_INIT_FILE = "blk_mem_gen_0.mem" *) 
  (* C_INIT_FILE_NAME = "no_coe_file_loaded" *) 
  (* C_INTERFACE_TYPE = "0" *) 
  (* C_LOAD_INIT_FILE = "0" *) 
  (* C_MEM_TYPE = "0" *) 
  (* C_MUX_PIPELINE_STAGES = "0" *) 
  (* C_PRIM_TYPE = "1" *) 
  (* C_READ_DEPTH_A = "1024" *) 
  (* C_READ_DEPTH_B = "1024" *) 
  (* C_READ_LATENCY_A = "1" *) 
  (* C_READ_LATENCY_B = "1" *) 
  (* C_READ_WIDTH_A = "16" *) 
  (* C_READ_WIDTH_B = "16" *) 
  (* C_RSTRAM_A = "0" *) 
  (* C_RSTRAM_B = "0" *) 
  (* C_RST_PRIORITY_A = "CE" *) 
  (* C_RST_PRIORITY_B = "CE" *) 
  (* C_SIM_COLLISION_CHECK = "ALL" *) 
  (* C_USE_BRAM_BLOCK = "0" *) 
  (* C_USE_BYTE_WEA = "0" *) 
  (* C_USE_BYTE_WEB = "0" *) 
  (* C_USE_DEFAULT_DATA = "0" *) 
  (* C_USE_ECC = "0" *) 
  (* C_USE_SOFTECC = "0" *) 
  (* C_USE_URAM = "0" *) 
  (* C_WEA_WIDTH = "1" *) 
  (* C_WEB_WIDTH = "1" *) 
  (* C_WRITE_DEPTH_A = "1024" *) 
  (* C_WRITE_DEPTH_B = "1024" *) 
  (* C_WRITE_MODE_A = "WRITE_FIRST" *) 
  (* C_WRITE_MODE_B = "WRITE_FIRST" *) 
  (* C_WRITE_WIDTH_A = "16" *) 
  (* C_WRITE_WIDTH_B = "16" *) 
  (* C_XDEVICEFAMILY = "spartan7" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  (* is_du_within_envelope = "true" *) 
  blk_mem_gen_0_blk_mem_gen_v8_4_5 U0
       (.addra(addra),
        .addrb({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .clka(clka),
        .clkb(1'b0),
        .dbiterr(NLW_U0_dbiterr_UNCONNECTED),
        .deepsleep(1'b0),
        .dina(dina),
        .dinb({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .douta(douta),
        .doutb(NLW_U0_doutb_UNCONNECTED[15:0]),
        .eccpipece(1'b0),
        .ena(ena),
        .enb(1'b0),
        .injectdbiterr(1'b0),
        .injectsbiterr(1'b0),
        .rdaddrecc(NLW_U0_rdaddrecc_UNCONNECTED[9:0]),
        .regcea(1'b0),
        .regceb(1'b0),
        .rsta(1'b0),
        .rsta_busy(NLW_U0_rsta_busy_UNCONNECTED),
        .rstb(1'b0),
        .rstb_busy(NLW_U0_rstb_busy_UNCONNECTED),
        .s_aclk(1'b0),
        .s_aresetn(1'b0),
        .s_axi_araddr({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arburst({1'b0,1'b0}),
        .s_axi_arid({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arlen({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arready(NLW_U0_s_axi_arready_UNCONNECTED),
        .s_axi_arsize({1'b0,1'b0,1'b0}),
        .s_axi_arvalid(1'b0),
        .s_axi_awaddr({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awburst({1'b0,1'b0}),
        .s_axi_awid({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awlen({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awready(NLW_U0_s_axi_awready_UNCONNECTED),
        .s_axi_awsize({1'b0,1'b0,1'b0}),
        .s_axi_awvalid(1'b0),
        .s_axi_bid(NLW_U0_s_axi_bid_UNCONNECTED[3:0]),
        .s_axi_bready(1'b0),
        .s_axi_bresp(NLW_U0_s_axi_bresp_UNCONNECTED[1:0]),
        .s_axi_bvalid(NLW_U0_s_axi_bvalid_UNCONNECTED),
        .s_axi_dbiterr(NLW_U0_s_axi_dbiterr_UNCONNECTED),
        .s_axi_injectdbiterr(1'b0),
        .s_axi_injectsbiterr(1'b0),
        .s_axi_rdaddrecc(NLW_U0_s_axi_rdaddrecc_UNCONNECTED[9:0]),
        .s_axi_rdata(NLW_U0_s_axi_rdata_UNCONNECTED[15:0]),
        .s_axi_rid(NLW_U0_s_axi_rid_UNCONNECTED[3:0]),
        .s_axi_rlast(NLW_U0_s_axi_rlast_UNCONNECTED),
        .s_axi_rready(1'b0),
        .s_axi_rresp(NLW_U0_s_axi_rresp_UNCONNECTED[1:0]),
        .s_axi_rvalid(NLW_U0_s_axi_rvalid_UNCONNECTED),
        .s_axi_sbiterr(NLW_U0_s_axi_sbiterr_UNCONNECTED),
        .s_axi_wdata({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_wlast(1'b0),
        .s_axi_wready(NLW_U0_s_axi_wready_UNCONNECTED),
        .s_axi_wstrb(1'b0),
        .s_axi_wvalid(1'b0),
        .sbiterr(NLW_U0_sbiterr_UNCONNECTED),
        .shutdown(1'b0),
        .sleep(1'b0),
        .wea(wea),
        .web(1'b0));
endmodule
`pragma protect begin_protected
`pragma protect version = 1
`pragma protect encrypt_agent = "XILINX"
`pragma protect encrypt_agent_info = "Xilinx Encryption Tool 2022.2"
`pragma protect key_keyowner="Synopsys", key_keyname="SNPS-VCS-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
VHPlDkoDlWlBfBMvPBmGYmaek3s9hXXhjF28kllYPnaNm3TSnzzpXHWHc8Ye9/2L2yiQfJ1hTWou
Ia/zeQ8h9/dtr6QB5YkyW4wlb/LbMgXb+DGIXPSllNl0IMsRQIcQDbcQm1bO/nlhb+2pjxiuaQrl
DbvxoDwPs7z3LunRxsg=

`pragma protect key_keyowner="Aldec", key_keyname="ALDEC15_001", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
lmIhoX8hXuc7tNV1sXY1K2/gXL7Y7Hq73qQF7+x03UWWTRd3uhGmVQtOMVbhIW+66UkWUHiD26zL
fzqGor8bgSNGpSFyS11k4TwLQT4OfAMGO8C9Qmmh4+VENBnpS9TW+wHzCv8oUwht7xYtYRZvOvYK
F3fMppz2sBkUd1lciw98ZE/UmNkhqBuMfIYF43j45DEJ55PBhOZNg91Ls4v3qBHyBAaYPFFoMry3
d5Fw1PZyFQSEOSSpwgyds2aN0g6oIwl7zm0LJrM9VDAOxBUE50hk+oHr4jj8J8UhHQJnlEHm1Idm
rvxKygNKRvfSpa90NYxZJFYgqnrMYg+19+9aZA==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VELOCE-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
VkyCjO2onoeZWEoYQ/4ue7X5mkHyTYVW9xjdoTsGS4GdP/Q64VaCZL/jr6R8DVDXPMnH7tRMrDpo
jpYBnyzSgOkfgqM+96ioC2fDyAaG4gYgGLmrBR6qK3/mxXwAZZX+GJ9R/eWXkc9h8xN+gsSSX6/M
jIQCgeT6q7PB4dWT6KY=

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VERIF-SIM-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
Iub91V+TnhVlZCSLu6iKmFjix71y6/l83OPTs8uewWvkE7WcqYxEKi9fonXEkzAtWzuKwEUqnOlN
VBsNJqPUdKcd22q523mrdt89mpdosWD+hvZdO7ELhJniY5u9h49FFkubpN2JiUTcIcKEYxVNlds4
wyvaYUqbPVH5v2ooJwDdimS4GVn9HerCOgPwfshvQDNlMTxLcYju4v8BHMc5Rub9Q/ihvpQU74v2
ouZ9XIwA+C6pBLwvaqS8jE7HXOokgqJilaX/W/t+KEgiFry/txRTMU9WMD7tCN7lcfjCydmS3Lq+
3u6Hsr0S8BwNjcaDpZDnBTygUJd4JSqREnk33w==

`pragma protect key_keyowner="Real Intent", key_keyname="RI-RSA-KEY-1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
U46EWFmKmpZGaWfyL+dokyQtJtaOYsa7HCW/+fdtw9/yHKTWFpmqKBZngBj5rPkNhtTDDCJkqsYj
tUXg1j4tgIBaCQn9B0q/aG+B3gPLrudp9hLL25mVbsfiTzdekiV2hJMmhuMoavKKPJHC6zyW7kZi
80er82OQy8h+Df/fe6TRjH9xEt3/b80tRKUMbxkLfnnkAyyf1KfOhB6/uyI4mwXuQR+DsAbzybKR
YtXpOiW72tGrXTFlzcwbHamWZefqsilVpBw6V5dh33vYKGx50xwWpj76maAkpQrOpB7zufeldJe4
W1UOEN84AZdRTLkVSxamWo/wp8nP9fiGS/ItRw==

`pragma protect key_keyowner="Xilinx", key_keyname="xilinxt_2021_07", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
qczgIJYpE/SzErzK7eWJBGcDFEzDLm8cKbwJbPXuM6YnJxx44W+E60R3war7K2QGFAkOoCDUtDC7
SghJGF32btaDLzeKm0tQ669sBtQmMIaBrlt7I9QBkNM8zN9GL92qxNC9o3UVWMOYy5BmH8nUPgcE
O6lRubeltlrTuDe7UJQ2nEPHcXjpUJJ8dxktyW+LovBy1OxW8g4GRAsmEJsoOEg0HuDdWcc4IshJ
PvwPJ7LblELAKsdkSt65y9VaklaEm7MlH4ImlgIa74TgRmutLUbWxM1QYhGE5rAzFhGU5i3RJOdx
L3N7GGGvLMW2z9NSHbIFX+/eNII9fNJ9nZbgLA==

`pragma protect key_keyowner="Metrics Technologies Inc.", key_keyname="DSim", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
Ti1NUgDv8YPk90APMwfu/mRr38QYwAxZfv0T6zQ89YS55t2EquEGVqrEafYX6rTydLOw8le1Oucv
f2oERpSSSTih/ScZneSZmuPE/Zh2BU1Ajv0j+/+0uEWXU+5lLPbDJjnapTmJXih1MYPf0SHpZZmE
BKj2IEBI9MPZlh6bxpa5BWJnyPdAvHf+UNaMXU9+pmbtrzUVebql4mFJu45Z3+ehmFY4FBW3zXMF
44C4TlHACLwL3vHVMCVfeKhgdVDbpE+/IFhTStz7mZ9h9RKGanQcs6YDVM1R+2RKA1QT1fX4FiQc
1V+FGmrm1ujxmFGXwpfNKByVlfCY0oWhRJCYYQ==

`pragma protect key_keyowner="Atrenta", key_keyname="ATR-SG-RSA-1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=384)
`pragma protect key_block
HuEXFK0NXt09xU2yxxjng1OLsT+ZEM4EhqBgpr9D2ljw2vDaMBrqEsRQTc2B9soDq3ewDduHJXBd
OGYxkPnoN6LhjULtB2nTgjcH6NxA4puZ1ZNcndDndVBo8rTW5W1OqHq6InAG0CqPpTIkuqz3ECPl
EysI++MCDfH6tIzlekxJFIJ1McJsTq5rFuLzMMcrmkBxgcayDpOcCFuzZzCczxmt/cCCIKmDybwT
OQXmOcLJoYLP4sFu6R9c6xO8i6p++crv2N3eIxZHKbek9xBBZqQM9EYuEtsbkqAs9XZpa16i5njR
BDFxTKcP6r7JgFALJE89AZhBbate5JXWp0v4ECZD18aEL17CipwcWPutNMdG1apzSPP5y59n7rMG
yxBPz1gKHc3Emkl4WcO0hjICxqmO6dMXoY8JvBSf6ry2l0sH9Ihr3Bq5WWmlhPHnoaNr5jl//vNe
KfToWtn97eoVSt1LnmXXnSpdigbHr0UIg8AdkpdkuNRaWdVicDdgSo49

`pragma protect key_keyowner="Cadence Design Systems.", key_keyname="CDS_RSA_KEY_VER_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
mokwst2bn6UxD6V9UdIgCIG1QQ/d0FiJqYGOTI2eHPV6YElaLjnJ8DnQmZnGS95o3x93FDOoa58C
RwYsX1fVoVtXkj1LuZq0k7q9vEe4T8xMjpkeYtIHY9k0Xhy1Lq/xRlfzGAf9fvf9e+f4r7aR/Sb/
uCZxxugG5niTwLENY1n3NthYL0jvo8Fmdw4Qg0nTCGWlVCws+09K0g9/lx6I9EcuHHemcHO3fOZG
lMc4NaPNozKwnyDMoWUkwiVxyFEPFaQLNYqzjvR+CqrWfhFLo96JWhL+eaDoNuZoBVYQtNH5ZwBL
BoO27Pw10lgcReGlZBz3BLO7T4ddynCx0+eSnw==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
PiP7AjOQqqouyQMoBQqgWIDhUSViq94rIvGiIJ/UKMDspM/yXw1caE8AhWHTjYckC4yLpPAz5P6s
1Z6flzDPrzVwg4e59X2cc4IMCHhedna0rDO804njcc6amRDTeLsMLTkWfvomB4xwszm2AgT+PRnB
WHd09ZUDVFjiBXT+Oa9AicgGJHrX3w823yBPuAa704kje/SzgtiDpcTU1eLmLhLW7LpEd9KIHd9s
ER7Uk9Orws0Kq9PMTqMX4hMn5K5mFakOeOURiEbUjdv5RiIJ2g/PlQXSItM8fHsBTQa6fOaJwQTI
vHwK3a8ZBHpfT1YH+n7wNiNUZwD4SFXm1QVx4g==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-PREC-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
Ul5ZfTHJwMctaNhYRortUZizYMPYRef7uYqPSuMkxsArnxI/cjGh+KRMwzV86hyp/6TXSJIjm5ec
2wX2UONdPN+DOJ84jYC4JbgJQrPnTj7ioD8uLX/WlyPcQzyF5keqFgj5eR5s13FskVWCuAWf5m9w
mhFEKFjVXDAr7gVgAJh/hL8P6Psrnf+LGfiM8JhnDepsHEYykGlpD3fzru2BGgqHWqPqFMcnyVGl
vysaIXiJz/eYKvO8RGcgd3DJAM/wPm9A0m/DWcmSnczOgTjoqkHcBg2H5uJMLvufzmjImi6LYEqq
v04ESDEN31cSUzqUYcayvMFOnI/WNsWbFIa5+Q==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 18928)
`pragma protect data_block
aGgWGdesSmDuQEese1s43Qq+Vfoe0Nzhbdq2/FtZ5JPK4/T/3C6LzZKnIGloNxUlH31p57Dhipc2
WipncsGN05NVeJ47s+CAlrTCeVmpgae47sPnQs13YEp8tRLcxg+Uzc9Q62heSPS87Lz4D+EhEcJg
qGiSIF+xtdu08qkXmWI64A66kAAe12mzzoW3RiDmJWf67TWStzhCulORaPdr4k4rCNmQx+KZsJpn
U633NP9vICjlWLgE9a0667pnMcHvUHPgN+Fq8Wy8I2Wu050y6iE7rQp7GtVMvQdTRQwz2dWYMvQF
3x4SEBtJ514thZG+BB/AM7ykMl8AVvfy2L6lY2tgrA5PyoesapG2vWAKQ9IvwQsdqpFFX8cHyVJu
Q0PF22BVQ5VRVhNEUyHAocG8IgJZGXCwNSUqDVwrlIQhe2iVIAWnF9jjnP2xvS6SZUKK2E5B6ZhM
lmtNwT+A/GMtSz6VBbqQ1su/dO+hd8DuuBCAydXNeCKOTDKyW72sBp0ZhUcOt/QCPDpaqMNqHy5F
yG8eIb9Iiz+I5vy2U4ZUXKd+jBplh+9NkhSIyoK7JGz59yXw4nDw3r+zn9QX+DvwWihwu1cGiVOD
+xUVNQY+t5ilZO9xdd17V0WLO2I1dIGF+CdrbhGKHyUxq3igRRhKq6qbekOjXciJ79rLCm3d8RU+
rHffVdCo9VvThL8f4eNOLWjW3zZm7D+Xm5Row0iVeDMs7oXgK4vIEV6vdciQqnc6xDQ69xhvMQm2
Ge/D54AOu0VubeO9qSM9Zs/rcQXen9Gfy9yhF90ND/aYpKY8eF80x+5/CAwTHCRjHLHLVdvdn01i
lMcYeca2Ver01ElauCw0yqWEj9HQUyl8t4LWUX8HEZKtH5TiHj9HVITb26sKL4aFWTBySqOwElYc
977xOAPJ38ca26MLAK+JoXoSYbynYOUwtCBHI8GxrG2LqpAPFeSwy5ecwXqY/smhmCfMIky9D3Ml
nFKr4ZmUcjO8+UEBcWCWW1hjnbgdpiA5zXFLq8H+sq/XxNqv8qsGdgiyrBhnHbE2UVPNFMFztp8r
zExHB+uO6BZ83Suvnu+bPwSYf8iF+GZhBATOCHbERYze9PSQzwdc6ByMSTQy75vWo/rGKAfCHUEk
RW/+PP/WeRnk+VXugL0ACcRCuv53HWuenE7oz+F1eiIy3WDJvB/8900Pq8SPwbuDhoKMLkmeWsJ3
9a7Z13uctH80cDpsGV8z+aGj2/Idv/PtSy8XkjcmpjsO1AYyQ9B1zFxv9ZVT3mlRhJ3KNgR68Cca
GomzInCOyzIjEg7cfZjIH1hiwRpeIfC9/kx9/20tx7W9ReWZCH5JLgDfNjGTGS6nQzktqIOe+AVJ
sm6yrituh1BjndxEiKmpfjRXkSKVqqi72O49oj4uusXLe3aBv4Sac7gu8ggl6Dew42D4fwNhmXhn
tE6uDgdSZWaGt9FpOzcac2dimybyInneMt6hELYD6N5S38eE/9a97lLHxEMe9IshIvbuInjDuTIV
EKyEWEdreA9NZRmShA7N4knYyerYuEwmRcTKOwDOPqJgdph9UXJnh/V6jU2U2QDOHOjY5PS4lHeP
dEnUwUkO4/pZZX87n+jSllFQn0VIEj3KPe4IFMKeuqOnVoorXtfLDE45NfG0CXIlEVjBh1HwDopR
Zuhgrs1d2ce6oh98nN0uj8pn6LD6pbk1aCfvJIWdI/nAYexU2K+gIzKN+O6ilp982w9AtQ/03eEX
Vve4uGseuaDupMB1D77wIupAlcKfxqGYyomSg+4ywjfkS7crRL9d23Eg0NFtjH4J4BlWqFU52OOI
V4V71SML2hcccOuRivafd4Go+vPaNYWDKE8hPcFNSB0yhApi6WEd5PUjW8QdwGfJ9psEmFLwoaqs
s8hNbLj1DAwDd44yEoX9hA/AiuqJPnMBbtyU5D2jAesPdGdgcdIalnb813NVT1JW1s55ruQIeUL/
SIxTHber7dLcwERlmzCHCxUMzk9iYLstb60/7DYosHLgUPkkv8r+sA7nqJ0ZOY1vgvzqFft7EWib
aUTVE8cIAWShe9OzBH32y8wAgm7v30RpyrQOqIcCJDUVoXwbQAIi54vbbxcXJyGtXdMNnaH0X3SD
eCa+0Kk042hIKL+LnWcC6IMIkQ6Hrbyk5nF7AUYUgPBnxfORyMsG+X/aD/vC/Cyj4wkyB7iasf3y
UIn5O8drjeNhKiqfQqhXrgrBO/qK8J5IjC7n2+5onQenspv8V3sbbszPBIVGsvl5ghYFBOdpRCr8
ja96Pwog4GMUj3P73p5wYtf1csXgpmy7jAX8sMf9KgNwewatSkWJt15uyg+q6+qKdVq1CEyAFOim
8/n089ABmwDKMsW4BN6GSUlDk8TsUxW6ci4MPgWUjM7Yk5MwX4lIe6MOULpq3NK3a0U+t5onKTDH
6tYP5VSfO9lbe8OIohRK9hT6RlDhkFvXu3R6d36I0JgXTioFX89KFNURslNDJ8/9Rj2o0wj/xkbO
251lHb2yzzABPahms4BoYtQWqlJkBhA+PqnizUT/ESNH9ef2jXMIKfE5r9QZGefo1LdWwvOlpl7Q
a+Y1cWUUDQBUDztTZiUG7iSpb025JL+USx7QlZVtg1lm1RTH+PQ/HzmTE+jCz0A9XXCQwz/qNILa
5s6xFVMJT9NhxE+GLd8EFfsLwMKoG5IbDGj5It/TdYPd5w/47Ow3PCvWBuRGV6cJdkLXkPcTfuAz
4Z2Xjl+lFtF/gVT9alh6JnJLwEburWBLAL3jXQmqJYPSKc4HGd983ZVb+zNi9E3lLHOfleEtqrgk
cZ4Onr0fpwQxPCl1CGNzQi9f0tzRaHoMw9qzRDVD2jm9x7jajLY4MKAEQY/I2p/VSD1GYdwx46r0
9hLcrY2bkwvkaysF3B58o3HOUlxMI8zzp/75qN0L56yp4bVfGQZW/MDhwKApZwwUnoEzRziQZuXB
OkBk4VE2apnRoKRQvHojsE7evKpVceiX7yj8+s6Kfw5Jme3O7e5+jupKr6nI2uapI6+u3wRXaKZD
ptX/cDORcwMUr/40skLgymNeEzXfOGZDkFJi8QSNwyVqEVA9/gKxYThLEQ4ykKuuYymNgviscmdz
v4zdpVSOasZZVt61YzaP05e9NdJGopDHbUFCKswSEKdw/+/3er8RoQmqa6vXOskCfYVjeuvUvwxE
Jfyi0iT4VXYI3MDKifCUuoK6bP5Gvlg8LBiHykqivqPtgMqbdvF+Gq1838/JjKa5TX400D06wv/a
6erFu/rZGg9Uew6Yq/DkTt9fGVoi0RoLcsLUg68p5rzul6IQUR/pwO/W35AZk0H1m2H3hPvQzjUS
vUMBrNJWutmVirHl6m1KUQmLta+b9B0+MtgCOfGYMm2cuUgSzOf04jqSkZG79IRcCvKZ6lbBiXOF
J27aYIpkOB68twQHfSVsa5jw+nKJhQoXffm51O/U8rUuKQoeLHkG9kmS/cmqZELBMGydZX88z6Ap
5f3NUs9fBMN690Fg7q8TFJPLNsDNNhEf+uAJdr4dT54TYCWevnzey/LZ6v9zrDzidLXRkAL4vGay
vas5ZO/3B7oSJTJMro0m1AmbjlTJV26DdH8G5meMG3AfelbcAp/BUMNQsEYuTwjXWItikQKMTaeu
bAMzSRvz2Z/YyDtIS53nVyNcmTdzigBca/t3iHhjnLULL8eTf57QHQ1Xgq/SBT0/1QDSjLTjdlAn
COoRk9XorMwoYvQpgyWX6+k/ZPKmeo5BVxpuZagb5fN7WjlAMdzY3qG9nxnJbfWsxCURRR//AH/1
56LpsPFUkdRCekqkcyBmvD2AnWg8Z3OHYJX/LsOiRaPjMhsyd52BTunmjdrJn4K3a2OCZXiR/j4N
mPnREIKzJR+hkuD2xvzVXqv8EN5nRmFunc+szEeCm4QlOF/pVl4f9OfHjj5/mCNFIZv/sDXiiQBs
ErpHRm2jtmjh3BgXGBd0C4NdNBtLLqT1oO4SXw/kfXuYWgNv3mVzYIbfBdm63fKZVzq7E6sX7NrV
Qy7GQ7wL61UMQTD2nxk8SDOZ3hgqmJVSF7IWJySiWXOx4JfUHCX/mU4Kx3rUm5NmHRz1YvjvgiX2
8MRfeUxoQlRckQJWWMvdusCXIbWTxa4+xDo5bxYuEpSh6dCQ/8P+aotxcimqnjns4iqv1BSB0qes
BSM4eSvjnLKsXnARc8GvMqWLOku7vMGuaKSqM2Z7mM6D8CwO4p9W2VDLdjxZ6URMsE2bacBRqi3Q
nqVtQBJVE9wFCkCoO+Nnew5eUYQEFHQjQUGPPJrwqSctbRbYy2Fvi30AMr852yYo1pPpLgcMynDE
/edfRGIlqeyy6dWgOAC7l3vM/Ca0TE3/f79vh3DCzoQG8LTG7HX3qCXpMol1vE6Hknj3u8fSVTG1
CI+FujsYFNGlnvgxlC4XvrADWGlnP8eLZvjqmMjyB6vKzFwFBHdf9135lY9Q82ktg4Au554z21i4
ZbG7yyhL1pYF8msj5Ydfs8r0hOv0IuyWbH/P4+/Na3ilRiNGR95AZ4TikoprK0W9k4GevOgj7S+x
I/oArmd9MS0MoLt5JqQA6feIYCvhVAJ/0J35P+DSaArS58iPA5OHsOyABK7HlcEepvJMh7o8PNv7
oEPR3WjvBeBWgzNO+gDH0MGTOZNzc+H2V7Vb/2/9VepFnVVfboqm29c2p4A0i/RM6OeuPG8w3C5c
Pob+6gLqDihkGSoTNnFM7E6obtMpRMO4dryqMtsIZC5sD+T4GgESGoaGVcBVmhUcJnfJD09/MngN
a10B0+LQPaRqIvLeQnkAXISLAm453nOgI03A72roiy5GaMppkveXtBs80dBu6b3u8VdWA6exCprd
9Ez+4Y2IIm14KwH0Ycf+va4Mc9U7oApOm90BvPrJPxL5TliDW2TU7d1AimqyczK+dunuCpq0gdxp
GHYQPdW4Jixnba+JJ7OtRYASJTNPqeRg2cp1Ci5AxHLvcEOeEL01EVWEIArhx6MIwiDEWjpHBep1
OFq0vF3uiwKEf1Abory4fgCEiU3hpYlv7DX04vXeBXzHm7jOcV3Msf5R6c/72WOJn6qb65PBsj94
JydjlmUolpG9zvNuEm1lbV0FaPWc7DTb6A1TqZ21a4cK/2E2KKwe6/Kb+C8JfX6aQTPtXph4K9j2
7i3pXzce1HkP8NnmoFJMjWUtSEDM8iNNDMORPBaYRATPCpchmSKV3xfQBxbg9xIhSNxgoWypYLE4
s/ZMbfmStK6paY+dW5x5ZBylZ9L7PCB8ISo1NtuR29XK31OIw+E+yFvzeiKdUsvJoQLdmz3kkbSN
ItPTu7QWMnf94hNMHPhPWcArgGBfsp/ZQcnK1nqz2DEXE9yXE5YwAViaSZbBvbTw4LzXfKzPCWCA
Bd3g8zNb8sRZFKNV2yboIzC5dKh8aY8mhFx6G4b0u7jp+UvXtO4/K/9C6Df5k3btSK+0HnteGIcX
S/TW8FsYGQ39p1W4zc5Rhnvox3TsrcGhxAf/s4R1nGidq8EdzH/3gRSN/csjNMZdhXWGDCo1XhHD
YlIZK6W1bvsOI6M4QeEECbIVZ5GHWY9auvin3mTBiBRwbujXk4SqNeyUUaCfCZJOXD2CwTsBEMOF
kgD9vI8M4DbWLOuSEquNG0XNFeMWWVcPxcIHeGaYx770HpB+vDYmQ8nr9CzQRGlDEf+1EDMbKXMA
wxkoX+VbnW+BfbHvnMQZ2EqDWwAwhRhxVZfEP9/6VY2SI0+jQHEN2O4gqeCjqPHdPId2V/bSuogs
+Ad3y/g8z4mm88wFmh2UtL9zOcL/x+QRSZhxuHMUo788rzSof05DtLk1HvPep39hvz85RVHH68QZ
pm9Gj3WhOBJXEK8mOiWzhmfWnC2h3TqPmMR5bvPPs36pkXzsa3JwGp9gwu2gTSsPwexES5TRsRba
E065kF0AT0GrUMlqTP33xZpHNxw5txoc8f8gY6IA2kCg7RuBHUcj13zVBUf6qoDvx0dLkdO6pl5N
TLMDe2IYBNzPNj3mJYIWtwPe6VIIqhjJpES8/tRzvlb46bYwJbvMN7BYFbB2EX5IvI/WZ5ngZVkn
OBGm4aVynjzaVj7hEWrqy6yMa0HXts6XC+5ne3yq/oI6dGr1U1CvDK/UNo3lr83bdEWZWUD0Vmjt
2PEXrEid8PPgdRRnqeAii7pyPOdDrasQOIYbWYd5l+Rk2S18CplQieA9uH3cb3mXXgDlGalUTs2h
fjfMZvuJZFzjvZGTdUAv0AD5pdyydLGIMARdgFrzFncwlN3vubmjJTNE3scIMtiLxkW8CLQ4NZ7u
RLPjCrzOKPeljXa8Q8/i/+kwt7OzD6NdXb94S9GdtLutIgsYf5OloedZStXosOap9u82XItFYtCA
m1QlwtyRyzmyhRpaXtd8pW8TlbI+aeEoADCp4W0gW2D/QYcWHNgFco6iW+2tIrfnMWkEV0uxbOZt
S2gGIzLWdY6PO9rsuR+xKHfqJdzo+4o1G6ssCtS/vlsnEnLbn3109z+tnVxfKO/uPp4DjFL/d+eF
4cVnsFj7161bGfpxYohe1z85F7+3It5MAkzHoCxqLl9JoyZFKgYoF4IoCT7acIEkrygkhcQWoylU
FdcsHVF27EtO5yxJEDx1LYMWO6sZDFphXtsnt4570JLpFRuv8tbKu7tWtD5zLQ5H0HZ8nWSW7LLt
4gpiqkM5JZjrPuH8FH0RGtc62IeAT4ejBxdsMh1ZYuwkQFNH5qx4PYQSUvaE6HdD+4n0RsW2fOid
dnfIVFsV69Pz0MrqVONalzjnivl6HigTKu5C7Jxe5hEDG14b++cMG61/0r4EG1jl+eFTIZdagkI3
Eb0jr+0BLDrcQyl3lYmu1NNAgiztMzeqNPLax60EZUqAOydn8EmLJRN34DM3aYFaXDuRgXV/qtF0
yZEnArUjSt1asxzhHaWnDEv85+AVobGx12we6tnoPAdmBSH6whicEgaqRwHZX2o0NWYK+mI6loYs
zR++2tJx4Ci+EOtcp7uXZ4ENqS3p2V06EVvY5Q80nA85/goFpoAIpxppoYWsmBvgu5iBWOrDC5ho
cm5T7D5fiaHzBEs9ULPuoV4V4pVNK0pxkUxrZEz9fMp/R5AhAWTApoa6ICGg6RCVMi3yfHKWFvO8
Twx/UfiXLuL2B3G0jbJj6fOsT4pW0cpAaEb6jUV3A266XX6Lhyeb38gUMoO+1gJni8bPxgNYOvWA
HHhvpPTGVKlqfzMqdo9FhesvtwUvllxSc09P+elZWwQO3C3CZ3xCABnu03UMFsri7C441i7hxyLf
D1G5jByolQfCnupRIV0IVmtfMcFerQrR5FkElYMuWBUdf9Clc+h5596WFf9PlGyhxbMO36cSSwO1
IL+B7EOui/90npwFuKm6G3c/KMMl8hO/c9Wzh37oMfFXW8SKkYORjlZBpR/98jVsbeg3o6NTjDKU
LxiQCVXuOpsiZqWx9RJ81Ixop89kUPm2l+Mkouqm3TwM6muR9R0FhREUVcSbx7AqEExX7iIg7YOT
Q7JRpIYAx8k0/BiSou94RHcI2dVV8hfJiM44ooKCiyjy9HxAs2LvvzZcTdnZUMLx/0Xm9fhCUDtR
Bv9K5v8kak9wg9rIbbwwTa7Ls9ZoypxqnsQefgQ8CEPpwQjnUPau3lIaPU+NaflkHfaVbpbzLxL5
8eq6N3Z7WHjiZ4ZdguUBwjTABIc+q1Fek09Y+o2RqDwqKNXlF0Sf1pE5a8UZIuJaUoL4+Y80TMnb
h6e9UwXOPvkWXvj9NrBSbvtv1Sh2P9ukqATUy0sRZXKCfdpvGZkoiWhnspfIZi8L4bHMAq81xnSk
HigS3QhFkbqlnoVzLjyolkW/e2ASAnMtwuX+T/3dOhM5/dDlV+W7IrLnraWwlWBT3l/BHccYmPP7
LmegG0nsB6ISVEjA6A4krwxhgg1C5Q1gvACmD13Kj6J3fEM4mE92kVNG0M54HYCPCkpWg/IDgila
sM+6+uJwlqKTqDfQBgrhXt4MIEIV2rQ9lalvuz4OMFE1qcYCO0A7VT9iKEM8RX/FzvVJn4OS2WHg
HXyZ8jxkjOLwMqyBer5ob6VFruUJR52gt1sPZY2rH8OYgw4z6uMJEIz87vNvm00hH+mmvVDkYJO+
M1uV0cIlHH7ErevF4dPS7XbBdRfsgjtDo6xnoU/yZS4bs+DmOgc/Uh5o4Mwv0RVdgU1U3ybTyWmG
93vuq49GbJqCxcH0HfTD5bNojMy8gf/v1Nqv2MKdxrdsphpCjeF+5/7Po3g5iNy6QtxesDQN9oY5
C3UU13b1lLGmhxiltnNB32k07siD0zcnfJErKbBKsxpcFWI8+ZvC/BNjB+NGuQ3RYl5A5X2sK7ZI
DphdDbLguhozbmzkgJavmYRTJgplDnw00vU+QpBOq3fFmr0mldSIZ1NOo5sLVOvbmPgtd+FJ/WuK
w6dMzLoyXFwaQRqUXnVMjMWw12BqEJj7ononHQskLGsr+vd21Ey+lxpV8ZisX1C43F68JaM/2RRX
4jOct5Nqu5SYK1IE/7Yz/pvVlBdx/foziBCnkAWZhOcuyrPnD69hkzhO9/TfU8qupGP7CsyQclS1
OJ1I6y6WokO09X6ajMPADYKUu1X6PlzgPGHERw3Ot2XNKmVQVyEbc0baTcQBvyvezguNTliAPNGc
zSSx9yJqXjxl+dxiifuBZykpjunRn4cxBTsDMG4V9/ebz6PupVW/sf5xQhJwbBUCCKAp9xDnebJ7
OpcE6FPJ0yO0kJ58gAhZLEsZ0pCZ3CQt1HA3rDkUI8UsWPa7zotYfhpj2C48i+K+sxRfvYtJ1+px
qTX+9g0m0FQoqu1ax3GYleSFoN4LILdTTyHr70m8zMKGdzYR2WJrSOa6KYaYgnqb0tszZaA1Rhyy
hWBP6u3PA4prOKwxVGgzQaZ+7Ejr9WO8x8ApWM6CWv7Ll0UJnhS0AzcSaeein0c5vGLGZdCjcQN5
v0E8xQ4Xl0AwEqe8fRcWU/EFV9MmOJdjSSHMsfKAp3uhKC3Y6NEjxJGL0705jvtMk47Dzn1ZkkcU
J6KOc/KHB4J6VC/7yDT6mQjLm8RFjVd6Ucw7dC43VF+VR6COcNyiMX9ZmjN9ZcWBYZP5H3vVcZCE
JXAiN+EzXfheck2WrHILIIJkahUDfpadLe2mHaTEsOgywrc1qRL2iVNOiyNWzEvH/GZ1yak70k+B
vqZNFaPWlceYGP8ETj/OFUeawyfXqEpzVbGVIdliJpTUXCvVKToR1fbzFyBIFP9MvyKb3H0ftZKd
QRK2JwC74aRPiPynCPD4QfCVhftWZT+0NsW4xkerIpeu9WdG2R3OemPKmyhpQIj4uB5rxRW9fM+4
DnpMQuNMc0aEyAMeQc1wFUdbC4ZeaJLwwMZwfPI2jPIfDE0VonFaenhPYSDgCseS5Y/5TmJoKBqN
y3kw/oxSYtepFc8aVoCB/5pvwz0cZEM0yF3efGX1cfRNkuAmMsOY5rkWJZoBlyIsst5B3pdHRcXB
ACBseJt7UPmsHtTfUpwf+igMPOf/ZyLbdX8muvyQ8a3vPQL84LlvfBieFbX+g9xSaaSkFKpjzZcq
70b7ONBxLBBkzDJOgt/5ss6E4QS60CIMZjpaJWyoB+cuVvwGxyWm6iLDVLQUbiP9hhqYzNfyqPUg
1uQdZxJRclAyhLu9tRKeU53HcnMXCMPF0CMxCkQsmvLAYREO0cCSi/EXeau0X0WmiLDXF5o6W24a
jO326uWyzSBgonHg9oFIB5CuI3qJT2eENYDbdcinl2dWgriPqZ3YO8UEFI5AOJDwveoxnHD5qeuX
CkvwYcK+wY//Qgp6Ef93rBcisG+MhM3SuSHw0fcX+zS0+uof1UQ9sBUYx7SnzBbVMJtwwTdRudtQ
lER17+8dpgUXdzrpNYLypXrVMOvS3OtzSKDaVVwj3B7h9v3beBcgfziJzUbgbOpju5GhwrTJAkuI
TNtlvpr9ZAOyTzqNlwQY75i6ypy3TTnTcLfcOT//R7PJlmvEJAVJ27r0tSg8PdDISagyjWHNA3ek
RUwARZf/x4ui76G4ZCwSQawyO+FFEcWjuHzWJvJ04FQyEyFBktVIAsUoI8WDGxnjVvVKqgTfHfW/
LiJmbZ5jJRp6jfYNmTDxBYXORyPti9Qi52/DT++hybwsOJXYvo5SukzWnXsQjvGOAOR0qU6eBqny
AcwZFZXgnB8dwiTXVPjp+RCQfpXoeE3K9rUw/NTknxEzfdaKHbAHd22cr8s9ZStlW3kIpPLlGvTp
9azdqTSyoflbnup77s4Lp1qhisBEILC2eBqF0+AxvcGOJWyBTV/wJMZcuJMfhBGFwh0qPzqJIMtV
x8dd0F2IlWeR0wnxWF+XBv9Wp45AjY6MEKUhIfRwAcDaK3+p9hBVM03i21Z7z9OA7hDKF//1fhW8
RsUN3v59xG7MAAhCKGtFoyu8r9mhbzs3LBu7Q+KFyF/5vhJSyz894pXUhFiw9BVINmgUCQf58G+J
lOmFe3Fmsrj0NHMCTNHts5iyV/SUgXRScSKodS4SFr2ENaFIHHoWtJ34+Zydo+q5BVImtyQfWs8d
6bpa3RUXWWqDLYhoFAnoO3/eQn+CzcWD6hFS7pSji4UMzH+BmFxAPeTEJezVHPjTbl2pILWTEKJh
BPDeCtbAJWeWc54+VuuwYIXexaENNTaUGM1E/42HV8PQxlbbjYJi85FlopLnhM+p+hplJHhmGzpF
w3u3/cs3IeiYheim37/66imclnnm/HOZoz+3rzczZqyMabdd2U3Vxgyev8Psr6RD/TNAhCBak54S
z7pqO2qTX9V4fvjJqBO1Uoyuq1/0uD/QDEj/Ny3TXvZT4lWOfMkuvvWIftr5kYRzva8r42qiL6A6
XLM0NY5RzMh2CKqum0OCAqSjHeCvy4pdm+T8SlXXHl/yw/9czbGupzIRPO8JO5PpOmykpDVqQagn
6bmpiwgmmQZHIi7kWYFmKAuwWvVaHOKaMM/kEjsFLAA2f5tFrToI8NOrYGpLycQFgniBc9GKGHRM
HC1/NHvbiVssR+xz7Jo6Zu4KsTkLLwTqh6rvUv00QN0z/6pXeBhO/S0lgZhmNxRSy1xYr1AzAU/h
7Th1V+UmVvzCbTlvqR1HnVfp7ygMRCu4A1uP/z98xfXrZ/vsDt0Yqtrcg9GATTVFqn5cThD4Hw5N
sSd2+knnenJwrxsGdSx/Rlawgm3LfSaHTdRX1e4/jOxrJQXNkT5Mf2MZPlIurhGzyQ17CY+k75BT
V8OiMI/Gy0GOagkZ2f0i9wLKqSAHEVswfkI4ou8e1LwatEFl/vWpj6nBsLV64pZGIpc6lSNmEvr5
fw50T8wTsJ+iGZxMvIOn0YtjFg1P1CUWP7L8fNgtPGnTznH/DQidWNwFlmYKXkDt+jd18BWNRP98
+bhkAL5MmuXYLhefNB39AMYpPKsCb+/5sxH0zXzgRQd3yO/tWBoKWHM1zqq1yI6qcht4OFERdVgk
Rl6ut26qn2aVcS5m1Mr6DUbHu3WOLdAQOpYrNUyY8lXnF8YRmXXmNPZwX0ZQyCfUAU0TS3kzQBhD
yprejLITbNkmdc7OFKSWk7iKSr42Gp+GuUvke1MUpvaupyaU3xhbq4HCIDeLfkkqoxIrTDZ+/vA/
lYGRlzI/PryT6IJjPH4swKJcqbntGJyjYIc6MWzP1PV0GgagmjaAwNg7z5S2OSPQSRzbrnORftLs
Hi4T9cTFshhG/nE0rWtcZ2Li606DolGtbImpKAfZ2hKSOZMGoRne/adn7niT541thWhVcRSUuT2e
V7w9Osf1/ZPbqHOUZ5yqOhgEZYiD8iYNCxNFyjJtu1e9jCPBABDM1BisAj8jN/f2Py6y+aC5LpTI
kGAQlLADwCW0SB+khg+KJWAUWORA9sDMMs1DIxdHMHZmEXsjShutAZu8MbihL1C32xQPxuaZoO76
G+tGw9lZCoBC71hOfD24zHnzhyLy/0p9DLysFCjjraiQ9oCP1+p9oVftttCuhTJJrTDDMOV62zDB
ZiaeKm5TCEDajKAIA7f+KesNlSvoFE4Xx/R8UyUCGMRBZWs57J8yWJDvznf8/CkmfCN5rqXq4gCj
80Y9uhQ5h7lounlRrWUODKRHb71Hm+c7eEpIVTZ5F8oQS9h7qELsSoyaEIBOhXSARvEWu47iUBrR
b2pysyF0qAvqEKp/DRhwHJgV68BmiYVzg9tXrJQSN9iQF6DHvKHlJ/ZqwUgqvHJcLEiby00AMraA
nG1tCMhJy2M0Nqz6cGq6m1ShPdAS2nNZdD+vPCV80xDusD4C6dqb/HexzloKMJWF9rQILIP92BU3
aNvTeXIwDjn8hdu4v07N2Z3BrkH3jqvhxpd7V92eAv9HBPSfkwkDHC64d4R9dwQcbSXeSSRQOmcn
jru0ShQ0FVQYayYG4DQzcOyhGBuCYUUFTm8dPUXI4oMo0RNA+izwsz8FJa9XThsv4gHGMdqhY5tj
dZQ+m8rVRRNPIVafdwp6o0QPK6aSIZZloGDdxfdX0QxuMVXIgA7rUFq4KRjZ975VaH0/RJUoRg4g
syLPKSmr0VxoyxJrwYqhE0VjBe+4fYuVBIVHW0AnLavvgVnPtBRVdvarJjN/btfyJM7GcDb5O3C1
Bh66Wu2lZoVpMT2US8CCzo+QC4tByjWd5pP3tuIM+L9bbqA0lpB2jGSBLmX1e1gXnGhWX2i3dKJU
iZkwiKu48Dcdok7LzecW7ISDzvXCCNoAKkJecPEkvLtCRaSOfow0ybsR1KQYcY4DxRPh2ByVQUSx
VEc7zAJemxbPhWKk53A0Z1+nC37KjXAX8MKNZcpaS2v+r9q1DLmBsX6Tpk+rJ9KI0+jX0RrgNqfr
GZCF1ZAbuLPJWcmeBs6v/QDrZ51TygshbwGhUIMCpYwGBJ7qZW3idL9JreCmJdBEq1QCEuuzSFrv
jd5W7i2XJJisywWhQ5sg3pP9i9N4hIgkO810OEQCiHRo8DStqsPqPBWlawspWzG9d3Lbu+qcsIYW
by32+9VjF48VpfoOdcoVjotiS+KBuJoLMGE2B9o8nq7tL5ZkgL13oJAOmaV5KpfE0Wid7tC0XSFV
6aZJIfh29DP9YjgOLjDhIPGgUTLaLvGtZjLdj2pKlHwE2BKq9YF/ni/tDJI7VoYCnWzCEOge+l16
F/MjmbBnjaK2EWt/ZS/psHRL4/Rt3jXhnjkT0mxH2e26hUA4c7TxtZ03tqcqM9tkz5ngvDVqTH94
yYvuypDAQ7bXHmdUmnXP+GQAzD2l3/1eIf+CKszLfe1inGjVlVXBpHwwG72ZP7Y3JUyeYiYuJSV+
qqifT1mGS/gzZYfsWuoNW6OXTxg21XzYrloY+OFh4ocZYunKSk4jq7WTC7dJKu9m4+j7GWEHRTvx
xPq3bOyo4BrIgVUcL3TiRsbfsTYElHULjx5wEdJRPPpAuq9kEm6Sx/pFGEgojpGT5Tv7Dn83gtzP
luRSj47gvILy6FaaGpCoYdrGRUDlGQzpLtpUAoIt1qqpQwKndMJ9Cw+NEPMXOo3O32sER4WMvf6T
F+JvkrXYarXzpEbeLalpaZfufG9BhOZYwgTdNtqgnmv4jh9G+aTmYRne8WOWXgqM4tVGRAbzRSM/
65frFuHsVkpCtQLNu8qJCWCDmDnqVDUHBZKi76dARNcu/RRL6AfDvfb1hWE9GWv6cPTs8FEXOTG+
vDiJAcVdie7WIwJwl5OOcOIbVWi4EwZEF6GxKwus5zymhWOMRJmBSUf8eTCA/Cfcv/kwDv5h659w
x5YltY8f/yZ/ig8tnwc9dow6cstYj5iAm71KQI/t/FGitnQwyCXXu6sC4zQDI08p6WWbBa76dT59
CvPJqv9qGewfTGq1Hm6dY70SDlRHfwJkmxmfUKTPk40EE7v1WPz+gbvNDVzlURvXPKlkdtN7L2eC
ZOKxx0vfm8ZOp2DLADRlkV4pyF2WU5yB9IurYrRzCRWFBhNQKPxDq1qMTXzXm+cFWFbeD1G8rRa8
IOZmTRUe6GuP5dEgtsXRfn2Mp1u3hfxq0/YYJrn9WN2Zx2+1ReO3+cMpIRWiDoHbc/OJCNa6zc7l
INmpiAR0YgspASmNgIhfwod2PZJWu6G43g40P7Wclb9sTaXvYQe+wh3E2HVk/MtHCiZiWfwIJhsi
MZfrqdEzRFWZ1tY5W9Yg3iCuOx8jfQ25EC0CmtRujYG5qVyZNHEqDHT8MtdLchIox1oqoQkj/Ywm
s7kkoNu+n9yJKb2MYErIPitA2QXmNZU9nZdnIaua1BAVj0bweTt5pgBos1aGxaqNDMs2eVJFxfG5
zd9frqnZjO7arMuJpTbVJAV9cJ2Bv/PktNvtFgbLY/Jpw5yEitZxqbblR7Ot7a3TdNJspDWlHYJ4
PIsiGU7shtOcsnMQDiczpGfMmFjviNVXM5z5bhtybS+aN43jLMuNiC3USZjUglnmUzh6xLosFF2c
5OJf4fLjECWYAwToFrQqSBBQv+i2gpDjoLNWlvjKL5G7tu3ER8H2gkj7KBjQ74rgtliKVJ255E+Y
ey2R15hQdu5hqaoCY1Jr3EeFkHbRGoF+5hDV2/YLxMgCPRPyaIxpI2NXJ9d31H8BpqtaL1nOyHpJ
ZdKM0ZwVPL+R0WA+q6E/Y4s4EpncxFaaXs8vepC5+09rjnVIfGk2TBCXXQ3GJ8PB+IXMGYf/Rs1F
l5cQBuD4g+TxVoQ7nLNf48KCyvbBVGsD+0sYgMujkmbhiT+AmK9zr5DVHu7mWkF73jOqRSvB/t28
3uyENQekVNUx4ScrL4pMgUf1QO/gS3RfUnQyWc1sZbIzFDxtZP9oZy9QOQbtzCq08UnQALzH7Suw
YPb6bJO8+rGr3hDhuHQaXF2ZIsd4FlyJRzK9bOBYC/x1f7qU4bMZtYLLmTKHFZx/f9rX3li/NESE
PUrsZJ6a2WD7tvx7QUyM0JDyUnr5ydwKJX9UMgqPDK7h5u3r+PIjAu8vJ31y10TZXWRGzunMSN9/
0npFQMA6d/8avCqtySqwMo2TMUmS/ZcsqQdcxjfun0Z7hHuymt9zfsR0r3DSUulf3fVrpLp9htPH
J96nTn82NVdm4Nwwi2KM5aWrliUQr7UEfkt+kD44KujwP3IFsF1uKkOusyAFfAV74mHQHN1uiY/z
OV9sTkd6rjexZ9dngsPvyOw82oasoeeCnFdaEe3x8/0rJ9CaBTa4LZTfkFhOaFkseZBeY4Q9xt+A
bEw/8ioOXrDzJOz7VpROdGxT36B0IQRG/xm7D1oXkw4D8Z011UYX6PptprGmWuaxMg/O1/YdL1Go
3SBaD4Euv0giwCojeQPHS3IWe8EZfEIkr8HEYJgMoLeojwneNrHCe23h+MOLAEe0EkcPticKA4I0
G0NH1AgcyWZhVbv1SapHZAlDYYmAMFsVnKHCKQR8qN/bW+jzEYbh4+tHe1t59YO+5Dohw1D+9J4L
X764mWgrxEOCrDAJfdO3viR1XEDvM2wtXsb8x5kn31/S0pr/2zp/FPB/bo4Hz/xgs0D/qhfTw0Hh
cuunCnpaLkPlJwUaz5IQmgHrUT5QO3KlwIRGVYT9URkQeMcUbtGRSXP7bUZjvHr6pAjFrpfLVMDt
VgJZX4uTqsLUT/r0bOYi5MxHQvX0T4xeD6MRma8Uvrn08xQT43169yYLz+OqnV+iyI0UMLSXSBx6
Eq2oAfBtDLP+R2s7pltaZ+7qsWA/Ep0J6BOmZTuhNmiZssIIOVhDgN87ivVwN9gfQEpNkv1707wn
bBCAiPSX32xgPuePlX9f2rx3tz4zy/gRdZDxVuDZL1gTDSKFkNjD9vpLAscV4fqZAHERCA21de9M
1+glinxpHvtFPNrdrB48kI+wVAfdsqkklrKUS/JrQZoL5ubbLN07SGjgLhWqlZGHrrXZemP4VctV
iA+NCS9BMxUzoiPB7M7MTxOZN1wSbjr//ukzdbk0gr7Zmml0y4DFIc6nWJLBtNVzSPyRtEc1T15r
UdpMQQNqyIDnixNT7I37cLYi3bjUaRGWby2ZJKBhEa1X7pYTiZLctWomse0cSqfWt0VD81a89m5v
UrZauy2B9cP3eMq5aLXbQjy1aZRgJTo+AMBMo+/Ey4gX9vNPEJV7hMri4lnwC38X2UtaLtMSAgf6
WLviuMRqxxLC/K0AdBy5SMXceJ9gnXL1fXHtZ3Pw/JsADacHxAVasu+L9JtlEluwHo6EXEaW2Mdf
59u2Nfdkqj5+XbnbAQjn7Xk9OyPr/ddMNIrN/qOILVWPka8mzZRZmbwsIJBCrKtagkNmDtEcQONA
xTiIP5ORimzRtlAnPFX+gH9zCazAWmErTMVKftiAM6IooXAWtoCjv9APJDviGsMu/zVNBUxr3lCe
qE7M1pWT7npzxqiyIASK4Pfas0pO/0wRSU6HLWKmcRZPmUydXHwT7YlWkxmu4IdOFI5ageq0tOrn
y6msEM1Ldk7wQoZ6pHr99JlLWPQLg5Gb91LMSjc8KRhuTRKgCPKsrcNz6CmAo47DzwEjNvj8jl1c
5omxOcHXxD2BpENo/O4qvrKC7tNKwjYHBNDZ4EyzLox0BFNFNOFaO2OqJFWeSqkZGZ6PBqlW8ndH
6EFYEoeAb4fNdI804ygQo3xJfvMzMSOl2OmBFDx2obaaQkHcSY67A2lFF9zc6j9UunMfDSHvkdDV
Jr3y5H163COZGpRBlCCH1+GRgAMIhZFh90hwVFe54ROO1eodjoMPUMkxNk2yCgAaYqr90IuV8Ba+
56k+xOXaUq75zzw1V/rneHto3ZsaXiV+qSpmuNDfo7SVToYXqeTWYhmNbhdefsmBItXIYz6jTOUa
za/DuYzeU8CbFtvGZSosY/UgWpHDxjE3ueYD4G/w4Elu5sPtNNH2PiOeLQcn0nlbac91pqdUs5VP
NLAB8cm4Y/fSLV5YTfh2hvcY/yg6SS59fDQhsQveZT14uvqhYgr2xCFFC0dPZL+M2CyirtiY8/lP
YZHaXwsh09gN4NaMQPu7FFhEGHVbsq2Q4pJRCouni/xoM52b7RnzDDoMnXxMVgHQqc+kdFMj49w4
R/IXwwQFJUo4r1HYZUDId2nkc9jSuUKZ4Xp1MME9cJF0JlERh5Avq1HG9I7p5urzmRWQNBR1IC+Z
+0IfcP59Xa+QZ7Pm60SSI+IakfASTwg1G8yM1ZnjyLGS+V4loMKpnVDNhjPGppdI7QtYVKJ3cuuX
laTlBAuKuCaNsDItDlMR2zimFlF9vVFymlhAU1IOqiGM9O/AtybX3Ymd9COHGTuEMvZj4AQGUBwW
Nv8zRg73aH7VAEjN1C+NbUGAkHi+u72sIxwTRCNnxTzWCU3NThZ2N+UQxLr8QltiwSm+bXtWki20
4aedTiDBSeJ3P3DLSRBq/yETu64BnISbH76VK2LVlyvS/NRC6yLB9hd0mU4Ul57WWduBsBcJYfjh
vCEBH6aNv9OvovDKZv269TnWHzw5hEfyFAAwj+A0m4KHg+BtKRq0WFDej5Km8b8jYGUuqvfrfToe
keWQTCnP4K0azRmUR0d0Hnw9FBskOMzRkhUkYEh5zNCNQiZSoCnoWhfgylEdlMlYouLdzJrySKsm
sWDg+eMZZBOr5Ai/4md/s+/Ok7/jMndDcipDZ2KFme3zB8h5NgDCs/atAPZnK0Qi16vqIySRM7Df
zdKYyVszbfk4ti9OYU19ZAjIN7XqqKPOyCuQ7a/TaKIAzp6iIDJQFxCmBvlhwTO6Z83+p+9MaO7m
pGH9qbJOcsVXfmUthpRNypNlc+zdjNxwL4JUGQgFBICTexz7vWsRQBusmnWAzVKYdqao2CzwMr3U
B/WxwrclvPvrc4N+7Sn6sUS0BI4LMlhvDGp+ohsHqfxLDoYgLwcJZd3MS7TQmsdhqsIpLz9P4lM6
z39nkt7U2WrQNmX27KGISPx9a7V1KLW2pDN6LRbPK/idYiyU32GRS2J+Zhxb0tRTsV4piES/H8vS
FMSo/TBJBiSTrQjtreE8iak/sh4LHJRqYOIoysbsx9xC0sB453TrfYn933p4bnxGK86g7ee8DpNM
yT/rqgb5pldI6ZMNb13bgGZAAF7xN1yW9WXO4HvaST1hsgskHWV1y3G/F3Qgv6QkQ1U8Y6B1dGdJ
iglD2txEid8g+6F52jfGldt8hmaN45a9EqoDtpGsIA182OmrTruilLIsdwm9O9kf+UuYMIS7aDeP
rj6jcr2wALdVqBjVKm/8VDwBjNXY+uyUYwwtYdYFmAn+8IqKbaTprfSy+Z617rSqK6d1JdtiDSZQ
I7f9ccFUq9Ci8e1ABCZch+3ZZ8eqV96BEMJgnNItgAZVLUmM1XmVa7urALXVUi8BJ/j2sCM40Dz5
wLs41K4PbSPZBNtBnQUrXqghENG6wJv7LvgMjgU8lqFaJWpd7HKUDKd06jnrlLtBjuMIqs6mVLXd
tfGRzH5UZuwkqbFiN8tDwhwWbapjndAMFhndctE0QQvgGOfw5wu8EqZmcAjGDbNiC94D8Iosjbj0
cS6DEdyCONY+ZBeUehXEBjvah/kZQCHKVwJ7a5O3QiiJXFHNJG7Dd1pyQuQ++orldEc7Xeil8GU+
4sUrjiCDDFzxCxpeqv7zCDJlFbq8W6hw67XyeQd/qh3NONQE4zMeN1xY+GbB0CjA0NQ7ns8W3CbL
rLlXruxKAJdQP/zQjLkcHSkX/jATmkUoQ1fpMWydnk01QojrwY2e6YyyBkAEMR3vdEfF1hL1Vk9F
eXn8k50m5Sr9ebC7+Ti/PcPFf7+l/CQwgYWYDa5RTEOgya8tG53rlvbxWt18rbf9CBPt/2+4Xy2g
FctaBdDUMl2msyxBa7bVO+NwT1NPAnZwRdVwNuHf7nhfh29VLvvr571wzGCPHXBKWr5jxPEi6Qx2
p11io0PlyTZLVfXGt2Riv+KrIzxRjWuS+7tlZv3KGLVRs3KPCnT/79M8tc9tTQhAQF5uJdK7xFWQ
JMRppZUTCKVC+RAkc/V0pMF1JF2Z/3bDffyAZc/HawGLPsviKJBYG1Li1N+Y7ij487fbl3YF6PaE
Qz5BxrtHVSvzdkrf3nxi7PXOzusE2Id9tV7gLfCBpRjbruYBcjrPuF5IpAwk/LJhbl3tntyul2vo
hWWGgBiKFCtHWB59fE9iOelfwYwINhD5cbkUtUcu0xdoMlvAMvGfoelHojckRuQSyo20XqqDakQR
uxUwEnsQZYcWbzJOj2uaekVOxa8GKPBRRClMkrDv2vxeXLFpteFQL86c+AdAZNotUJgfi+t86743
TxOJJoUqjdP8bLWSLT2rvmlQFNCGdeiLt6o33Sm6gVuvbEOwwFA4Tf8qH/2PGsnHufdkiFhyzb8A
vMG3/o8EhJATwsLkVZVi+PdOfaODDQ+ZNahhWXL8V1u3UnXSpOZB7LmLYcRfN8giQEblIEAus8Dt
hBWmCgmtAsW4+AyWaFsEgi2q5X5k6JWEedw6NA1CjOsT9ZfdP2Sl/J00CqUQq6wY6+a3Jj9Jr4NL
MvVPanHQ2gaphTuhe26eYRYGFQXPlBQLRuyirCWZjYQM09ya/lYnMXIL2f8ebU7GHDHBNYIGUa0A
Fb2FZWj9uo87yvbEvv8Q2tffDAHHB8xDFuXdJBGcq/jYhws+1+ObXOYz97GU6vzSlfDbVv/A6z4J
IcuyTFbz62aPsHn0Hq9WVxSegdD9ZMx9JvTusd30MRD2UaMTvJQztgWzmhnsQhQ9HcZwuqf6STbD
ybs8JzZqixF1p79jv6pZJ8TFmaSRVPOldyUuXci0ekpNDy4U9ldAp20IGNhaBoNIqGW+NvwLxuy7
odS+bufDtc070yvULiRq7N3HyAI7tjMZ5fL6PZH80ZI8UM33n4/PEFF1qBs7xZVSb3WgSzfKNpyo
GQ2C6j29EmSG6N295ahqCEWQLI4JggvCtOfjjINypaJJ2TrAO1U4tZIOVV8zhxdyGBjf3sMNrNOO
IHcXQ39SvfGXzq95empAkyjec4pVzXgRwjG8iyPP4zNnKJabCtJR+0qrBt6N/XqFboM17+8g9PKT
bNYVL8IrJb2tO+dR1E8DdGx4WJG1rbp8bpWu81RHPIpNiS+Z2Whjj1MiCCvCUYBisAyo82/JE49C
0jz8dvFPisSQvBz8LtVSe+yK6w7xfBjnuuNOsubyON2y8UEo9ivu23THsRq/Dqp0oFzcmZ08zeDi
vdTBgH8OKUhPa/uTwW2ZzB/GjD5oQ/f9GQGmPBb00MufFtD0UVSCAj57raeiPxMFZD4RvooVj8kP
jTiMs3WF4wNOv8nRynS+mx17w/Jh/9Fgooeay9BYAZVO5gccZGyMzCbPO9d9irZ1bN5OpouR97X2
XaEIFhIuf1QpGd6JRMyQDKfEMWRbqjmUlx661vrDRahNhk5hWZlt38HB/fzxUzKui+iDdiUcj862
B1D4T8CjdYvm8Fod+0aHcPebDt87qtI3ZOjD0a7mV5DFUCOjsejW9GV4lJWQovNr+I9qt5iNhIJY
jRRI0+1q/uogQk0WVeXSAFao5jg8KXG61v9R7M0pI8QtTIZGOcEYViM8Wsytptq/NnabDWhCHu8J
omQB7T3iFqCfGNbOUE1JZx+h4dEJODGbd6gq7HMbbB1Q9jOYEuhNGbhg63w/a7FuMO4uNqY0Way2
Vvz2alk6P9hONcvWOfKui9LP0FB3q3+La+GOZs7R7/YaHYZDgTt4CszXb2nkXSex0CEtsiUdGMlK
5mmxN2Cxl0n+CmJGzchq3CW5Kxzk/7TV3qi8KoDCJNOwM74UfzrEph2q4PFvDik+g+pWNUmmhaQy
l6A+fh9EbgoCz6PKLKdr+ftLx5r5SydXFPejVi69minGBtHGEn9/5nC04OpVd3NobUuqXStk+ilc
mN/VrTP1UwpZ4ivMzMkzmzS4km2yxsBDKmRMBSUlTWpAVAf7H/X1Qh4P7ngK7Z/flGd0HAQKUdc8
O0JZtCvdl6AcU5QEghoYyMJliXPQrU/zeGpWl/vl9xNPfdTBuiOVXmV2vR4rommyC3ZNhiM8S+Sg
0rE5tnioXFHViKefPA+wFrBIEJ5JUKKILO96gRT0RvrbOB1/H2aWdfTMIsUlq+Qd/NNWfcuT/ILw
7fgHBaQExqyr33Ej2i8Dfa8z1JxRQCxxGXPFwB1BdT3J1k5+CbOr/Iy8bNmTy9shPmf6Zoi9XYVq
saaNNk/UO6XDk9s8gc2Qlbm9taU6G317jGJgHBiXjVCaxH16/hMC8xuFKNMY31GP16zrW1Dw/00z
sroDIseVXvAlFIbXz2Ldi9DArs+XbTL+FyhkMvbpiLc6PxSE29B+fnKADJU02zQIvETgYHQoIKph
fmw+tluMCX/AZ03vLBD91CAO0aNajJbCqvWx68nPvqzA2akHglzwI//jdmrc479BhXvrrSMsDBR1
V/GgSNDCI4Yjx5KoNdkZI8AD1Jwq6airzm6jmoBih2Hnh0lKxwPigzQ127Bp6UUPKLGLkUmpJmQg
qJ3oPNOmUGgq3YV07ypMAMEA3o3C4DVAK9lUDyc3xVpsoxuM2CANyLEr2Wf++ta6snQlPmAVe0s5
B7ExnrMTb814+ehKF43HvWReZXQTWj5jySqlARZYAk0SiWxkWnJn+2T4fkLNN22LbIvvr4Y+xTJi
Vz/WLdh67oy2qzcxdPYbaibinltuP8amuaIb8jbwObCPQk2SukfRLgYaEmPd+TlNe4HMrz8xh05G
fQ8NfDTVVaERPqWVlUc09qXWw9T9zpgnDv7Jyz5tz51T/hMjsPF819a8Mzj4YxuJP4bbAIUf3q8b
TYokoRmw4fbGE9uxuJ8wX0HcM3F/I5eE96UWfhnPZ6R92H6sz9JC1xwUQ0iJai1E1Gje4hrIEt1U
IyAJA3bK+pafEgz9glGSYSHyFdNcTqhRqXz1s91kHJ61A4hD6CpIPx6J4GSkwHkK7Ool2NkcILjB
qdW+bTNXLsx1sEbrJ1ea5ciNYJ7SevvjT2gFvo9HGJbh28h54COb4U6y6IwK+dVMqyYctoh2NjGp
2cArwte1YNdK7F8TIrZ69WRrNANcJsQE+MAEewlndQuVJCIgPrx04B32nrKgKXbBgQmTr0dVIKfw
ig7yaMRinmRhlUvJB7t+nQw2zxk8K33eWQZwzI/qSDw3FbnlJADgIwyz7ACVZ+7L7G2hWdOW3cFb
p3pa9bSCa+zJ4wdcgkUmCdvvFPjQAI/IgI8OOxEo9gkfh/PiNZdJu7GFDsHTK5wgCRnJ2nJATmjh
wdIzljZAYZ7V0TyBvtUoeKxJZrBuOBMRCr3wb0FF9yBgv++MdOrDz3SkOypMSL5jKj8Cp7TVpHEr
Uy/lxClismgXba+Z0zvboYrq1eyR5KwWS/rBvaDRZdyprxORbHtcsiVJyYQLyfSwRULO9YHIbuND
cG1ruDpcPGqEiIgzz1krdc+k6ypCOZ+hBLJP4qOEAwzqHZy2SdKbwg5iB7wBwtNUX1rlCGp87MRb
vc5JYX6cscW0zcGJElmdHAt1rrAnsFTB+r9TQoqZUTEBeLBhEaDMMxUVPbHVF8SrvLH2cmpt4d7c
08Ml8AFrPHcAyasdLo/cueOpZRF463uv/LNs786V2oakMcijrLVHLHHamBstHiHtZNTY0VeNYsh4
YzZgzkGsdSXo0VhXNG6vlKeBE1Qc9r0h9e1KqsF7JFSpX3ppyjWbioSALZDrf4ZjKGbWA0t0oAVF
t9oZh+GjwDsJOaOyv4L5RvHuIm5tTvd4To6veMXSNci7wN/grtf/Iads+8AdQIx1LTDkpZ5CgE+5
LZEBk/LkQM9y4PTjKVmpsvWVtMXBJDvdfZxO+RYcsI4iCrMh777TS2bKnggwR7dl/ywc2/Km5AfD
Nms/ioLy/9ZbQ5S6E90jGAynt9LVSb1vJIXL5jYV6D0xSL1QbbjlS8nDMgpRGYopD3rT03tgGxq9
Ji+g0B3i0UIWmesNar1Nkbpw50oN4spYRMT+TaLB8m7r95feztk5JknYP5ESLVcr1yd4bw2AhDE7
KyksTRwPP80h4j+0brpO5ESH+RvX5PvEIKbJVOsA2kq2SDJqdlwcgfZywoiih+KoUp6BTu/okRG8
hH1oKggXFAngTI9nwg4ZFOivkF++LHplL8HPZb0n4R3+K3fXmbaUrdl2DHBq2DtiN0gN5P/iqYkC
CgVIvd31BOWFtBFeT32KcnEMHcDrAnl3zxB8WEz2rCR8vP3n6qjhFcAT9RHNfYkj7NudR+/a7jUB
3q3T201pV159jGE7za57nPdUOS2hZTgZvFOZ2VSh58BKw33v/CASPXuzIkgoasdUgo7V3ODz1EEh
/wtkRViaUGAmNtZfmqIST9+QMEObWo74uCNQhPS4nQXTnTi8/cIDETsxwkhY9Ulo2TN4e6BbvmMM
tgz2v9mxqLlsYZtwrenSncRA7ULBVupKaslu4IpwPtRg2DoD8ustLQLXGYkmDww+EXL6y1suukDf
ltyGlzYa6DtvwXBVF4mI3VM9mFEOp8IZKURPRFpFXg0MMO3B/pkNNXMJtL9cq2koZ7CPf0s3JPwc
bpQhGItFUX2z27gqv4R3tBjrqUB4ICQTdDf/WwOAvraRITjrpj4pYY6hMmDZW7wOty2bcQHFLrws
qxu+kK2pg7Y36aeUFiZpdN391gAyEG+ybEdV4Sg7DK4qB1RtfU67qpZE8n+hBZTcnKPeYkE3un82
T6IvyOvnKhEwY2Axq9mBOquziWAkdprMEhJIpNJhUeyNfxQEkBid0841yhZwXzT2/BudeKx4zqe5
kh99D0/CRbDIy3tGq+Ks6B2BQvPPIDUJjfIU/45m4wzUQXUtLliB1nTDFbLH7E8/D66fGykZSTrc
0PKFzcQlChHQPgguXGkZ4Bo+JT63mGEvqLOGiFn/FYNjWEUpMxYvX/91mZdFy+UQy3cqJAUxOYEL
OjEAbx5cT3j0YpeSuZd9I1++X4QxS7IilhcE8EGWnPf4h5yo65llvw8n3mqnjvGirAI012FQ0Zsl
ytIZKSJku76oDSNhv0fwo9C1sReKi9Xp3yAWZbt7B73ufW5TKtA9WzSfckB1VWj6KL/PKIeKtJiE
6qY27lhCy0h045uSK4Z6GW9yR4i3BeDlH+hYYf4b9mUl3ir+h4Kyvq9dZ8JOFooOGvqJUJuDr5nq
KM7kJb0c8nHCmTBG8sg4tIiZt5Za6NZ+hLI5p2YHCJlY1jFcmH6Ff1lxtCT5c4EdzwfhqbTFF+W4
kWMIQwfwN6n9ux4i53K8gnAMQ8c79nyuYYVGIE0DhiiidNXK7JwgqWqz9Bxl3MKr88E4pQzp+oj3
js+oG43m69yVUBR523VcQdWHQZObazkqZsfOiAJaol8PHkWghiYYqy73LYVMdK87iuR+mpfslIIq
xjBAHSWftesC5RmDYDwiVP4lXtgkuloosQmozHi5JmatV/eSzDo5y8sOSoMGWpy0eOFDcffQCC5c
15HqTehXGj3k/dD8hu+pUmQHzz46efZk7lVmsus8K/9j3IDylfP5PSlKJHPJtzuMCUovtMpn01fv
0+XUP0apPGIABdM2UhHchsRFf6QsciKa8XFTWNY7nejNmgNOUO3P6cFsZIsr2aneZ8M5bWgcC94d
6CzJfbDmyqyzmw/W/9M5oo66F97tX48wfV9Ant19wRDhibVpQcb7u4ZZ+sZx256HDkDkc3N2ucmH
DlRk24Svu9YW4gXAx19LfwqZ1A6uirku95XayMwmirCGumdCWDaFoZ5nnoeMsNMBZBIDbC+ut15P
M5OYtqkrr18+KdHQLhuf3p9oiCtdwqTyCBINVMCGpuKyeZbvgH+VrUmTGH9b47fvnaNC4y14PlMH
1a2EccQFeuLi0Vh8oOFisc0d2AdygS6fefUGToOeWTnYgjjzTroTHunKd2e6nmQjEjkK11qqu6F3
THFKXDhSde5XpMbBU6b/uyDK8qsNY4NTQShnF0pemyee3Uu6c9AJ9n9p/QZ3KGW+nLnFd1e0CUE6
XqFhQRXYirvvJlDkP5NoH5RTiiJbKoUmg5tMGDnM5/Rtm5jJCQ/KTkfjGeBDMtB2BNZOlXib5Gjh
MPicC9XkkHcnDjxDsKU8aELdw9/9YyEy+U2ExpCA3ZCitA3LaAQ45Y7W70EIFUZqHIEkS5YNAQfs
cE18qoIppFCi+MSjgEAuynnI+rEB2IAyC4e1Z02WmNXKkYSZzN9rQ8yXgXaF/3BfOL1yof5CCAWg
fI3LR4cq/mAuBpkN+eyjZAUA11/3EP74u9T1x6xZgnIDjzONj1HOV0V24aQfnpE9BBzHGrrKZy/9
QjPPzg==
`pragma protect end_protected
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;
    parameter GRES_WIDTH = 10000;
    parameter GRES_START = 10000;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    wire GRESTORE;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;
    reg GRESTORE_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (strong1, weak0) GSR = GSR_int;
    assign (strong1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;
    assign (strong1, weak0) GRESTORE = GRESTORE_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

    initial begin 
	GRESTORE_int = 1'b0;
	#(GRES_START);
	GRESTORE_int = 1'b1;
	#(GRES_WIDTH);
	GRESTORE_int = 1'b0;
    end

endmodule
`endif
