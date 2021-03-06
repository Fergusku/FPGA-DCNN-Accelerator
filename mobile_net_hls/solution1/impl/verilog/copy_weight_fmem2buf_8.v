// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
// Version: 2018.3
// Copyright (C) 1986-2018 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

`timescale 1 ns / 1 ps 

module copy_weight_fmem2buf_8 (
        ap_clk,
        ap_rst,
        ap_start,
        ap_done,
        ap_idle,
        ap_ready,
        m_axi_weights_AWVALID,
        m_axi_weights_AWREADY,
        m_axi_weights_AWADDR,
        m_axi_weights_AWID,
        m_axi_weights_AWLEN,
        m_axi_weights_AWSIZE,
        m_axi_weights_AWBURST,
        m_axi_weights_AWLOCK,
        m_axi_weights_AWCACHE,
        m_axi_weights_AWPROT,
        m_axi_weights_AWQOS,
        m_axi_weights_AWREGION,
        m_axi_weights_AWUSER,
        m_axi_weights_WVALID,
        m_axi_weights_WREADY,
        m_axi_weights_WDATA,
        m_axi_weights_WSTRB,
        m_axi_weights_WLAST,
        m_axi_weights_WID,
        m_axi_weights_WUSER,
        m_axi_weights_ARVALID,
        m_axi_weights_ARREADY,
        m_axi_weights_ARADDR,
        m_axi_weights_ARID,
        m_axi_weights_ARLEN,
        m_axi_weights_ARSIZE,
        m_axi_weights_ARBURST,
        m_axi_weights_ARLOCK,
        m_axi_weights_ARCACHE,
        m_axi_weights_ARPROT,
        m_axi_weights_ARQOS,
        m_axi_weights_ARREGION,
        m_axi_weights_ARUSER,
        m_axi_weights_RVALID,
        m_axi_weights_RREADY,
        m_axi_weights_RDATA,
        m_axi_weights_RLAST,
        m_axi_weights_RID,
        m_axi_weights_RUSER,
        m_axi_weights_RRESP,
        m_axi_weights_BVALID,
        m_axi_weights_BREADY,
        m_axi_weights_BRESP,
        m_axi_weights_BID,
        m_axi_weights_BUSER,
        weights_offset,
        weight_buffer_0_V_din,
        weight_buffer_0_V_full_n,
        weight_buffer_0_V_write,
        weight_buffer_1_V_din,
        weight_buffer_1_V_full_n,
        weight_buffer_1_V_write,
        weight_buffer_2_V_din,
        weight_buffer_2_V_full_n,
        weight_buffer_2_V_write,
        weight_buffer_3_V_din,
        weight_buffer_3_V_full_n,
        weight_buffer_3_V_write,
        weight_buffer_4_V_din,
        weight_buffer_4_V_full_n,
        weight_buffer_4_V_write,
        weight_buffer_5_V_din,
        weight_buffer_5_V_full_n,
        weight_buffer_5_V_write,
        weight_buffer_6_V_din,
        weight_buffer_6_V_full_n,
        weight_buffer_6_V_write,
        weight_buffer_7_V_din,
        weight_buffer_7_V_full_n,
        weight_buffer_7_V_write,
        weight_buffer_8_V_din,
        weight_buffer_8_V_full_n,
        weight_buffer_8_V_write,
        n,
        r,
        c,
        nLoops,
        weight_cntl_V_din,
        weight_cntl_V_full_n,
        weight_cntl_V_write
);

parameter    ap_ST_fsm_state1 = 11'd1;
parameter    ap_ST_fsm_state2 = 11'd2;
parameter    ap_ST_fsm_state3 = 11'd4;
parameter    ap_ST_fsm_state4 = 11'd8;
parameter    ap_ST_fsm_state5 = 11'd16;
parameter    ap_ST_fsm_state6 = 11'd32;
parameter    ap_ST_fsm_state7 = 11'd64;
parameter    ap_ST_fsm_state8 = 11'd128;
parameter    ap_ST_fsm_state9 = 11'd256;
parameter    ap_ST_fsm_pp0_stage0 = 11'd512;
parameter    ap_ST_fsm_state13 = 11'd1024;

input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
output   m_axi_weights_AWVALID;
input   m_axi_weights_AWREADY;
output  [31:0] m_axi_weights_AWADDR;
output  [0:0] m_axi_weights_AWID;
output  [31:0] m_axi_weights_AWLEN;
output  [2:0] m_axi_weights_AWSIZE;
output  [1:0] m_axi_weights_AWBURST;
output  [1:0] m_axi_weights_AWLOCK;
output  [3:0] m_axi_weights_AWCACHE;
output  [2:0] m_axi_weights_AWPROT;
output  [3:0] m_axi_weights_AWQOS;
output  [3:0] m_axi_weights_AWREGION;
output  [0:0] m_axi_weights_AWUSER;
output   m_axi_weights_WVALID;
input   m_axi_weights_WREADY;
output  [15:0] m_axi_weights_WDATA;
output  [1:0] m_axi_weights_WSTRB;
output   m_axi_weights_WLAST;
output  [0:0] m_axi_weights_WID;
output  [0:0] m_axi_weights_WUSER;
output   m_axi_weights_ARVALID;
input   m_axi_weights_ARREADY;
output  [31:0] m_axi_weights_ARADDR;
output  [0:0] m_axi_weights_ARID;
output  [31:0] m_axi_weights_ARLEN;
output  [2:0] m_axi_weights_ARSIZE;
output  [1:0] m_axi_weights_ARBURST;
output  [1:0] m_axi_weights_ARLOCK;
output  [3:0] m_axi_weights_ARCACHE;
output  [2:0] m_axi_weights_ARPROT;
output  [3:0] m_axi_weights_ARQOS;
output  [3:0] m_axi_weights_ARREGION;
output  [0:0] m_axi_weights_ARUSER;
input   m_axi_weights_RVALID;
output   m_axi_weights_RREADY;
input  [15:0] m_axi_weights_RDATA;
input   m_axi_weights_RLAST;
input  [0:0] m_axi_weights_RID;
input  [0:0] m_axi_weights_RUSER;
input  [1:0] m_axi_weights_RRESP;
input   m_axi_weights_BVALID;
output   m_axi_weights_BREADY;
input  [1:0] m_axi_weights_BRESP;
input  [0:0] m_axi_weights_BID;
input  [0:0] m_axi_weights_BUSER;
input  [30:0] weights_offset;
output  [15:0] weight_buffer_0_V_din;
input   weight_buffer_0_V_full_n;
output   weight_buffer_0_V_write;
output  [15:0] weight_buffer_1_V_din;
input   weight_buffer_1_V_full_n;
output   weight_buffer_1_V_write;
output  [15:0] weight_buffer_2_V_din;
input   weight_buffer_2_V_full_n;
output   weight_buffer_2_V_write;
output  [15:0] weight_buffer_3_V_din;
input   weight_buffer_3_V_full_n;
output   weight_buffer_3_V_write;
output  [15:0] weight_buffer_4_V_din;
input   weight_buffer_4_V_full_n;
output   weight_buffer_4_V_write;
output  [15:0] weight_buffer_5_V_din;
input   weight_buffer_5_V_full_n;
output   weight_buffer_5_V_write;
output  [15:0] weight_buffer_6_V_din;
input   weight_buffer_6_V_full_n;
output   weight_buffer_6_V_write;
output  [15:0] weight_buffer_7_V_din;
input   weight_buffer_7_V_full_n;
output   weight_buffer_7_V_write;
output  [15:0] weight_buffer_8_V_din;
input   weight_buffer_8_V_full_n;
output   weight_buffer_8_V_write;
input  [5:0] n;
input  [8:0] r;
input  [8:0] c;
input  [5:0] nLoops;
output   weight_cntl_V_din;
input   weight_cntl_V_full_n;
output   weight_cntl_V_write;

reg ap_done;
reg ap_idle;
reg ap_ready;
reg m_axi_weights_ARVALID;
reg m_axi_weights_RREADY;
reg weight_buffer_0_V_write;
reg weight_buffer_1_V_write;
reg weight_buffer_2_V_write;
reg weight_buffer_3_V_write;
reg weight_buffer_4_V_write;
reg weight_buffer_5_V_write;
reg weight_buffer_6_V_write;
reg weight_buffer_7_V_write;
reg weight_buffer_8_V_write;
reg weight_cntl_V_write;

(* fsm_encoding = "none" *) reg   [10:0] ap_CS_fsm;
wire    ap_CS_fsm_state1;
reg    weights_blk_n_AR;
wire    ap_CS_fsm_state3;
reg    weights_blk_n_R;
wire    ap_CS_fsm_pp0_stage0;
reg    ap_enable_reg_pp0_iter1;
wire    ap_block_pp0_stage0;
reg   [3:0] i_reg_256;
reg   [3:0] i_reg_256_pp0_iter1_reg;
wire    ap_block_state10_pp0_stage0_iter0;
reg    ap_block_state11_pp0_stage0_iter1;
wire    ap_block_state12_pp0_stage0_iter2;
reg    ap_block_pp0_stage0_11001;
wire   [31:0] weights_offset_cast_fu_268_p1;
reg   [31:0] weights_offset_cast_reg_358;
wire   [8:0] base_addr1_fu_284_p2;
wire   [0:0] tmp_536_fu_296_p2;
reg   [0:0] tmp_536_reg_368;
wire   [2:0] tmp_537_fu_302_p1;
reg   [2:0] tmp_537_reg_372;
wire   [1:0] tn_2_fu_315_p2;
reg   [1:0] tn_2_reg_380;
wire    ap_CS_fsm_state2;
reg   [31:0] weights_addr_reg_385;
wire   [0:0] tmp_s_fu_310_p2;
wire   [0:0] exitcond_fu_340_p2;
reg   [0:0] exitcond_reg_391;
wire   [3:0] i_2_fu_346_p2;
reg   [3:0] i_2_reg_395;
reg    ap_enable_reg_pp0_iter0;
reg   [15:0] tmp_538_reg_400;
wire   [8:0] base_addr1_d1_2_fu_352_p2;
wire    ap_CS_fsm_state13;
wire    ap_CS_fsm_state9;
reg    ap_block_pp0_stage0_subdone;
reg    ap_condition_pp0_exit_iter0_state10;
reg    ap_enable_reg_pp0_iter2;
reg   [8:0] base_addr1_d_reg_235;
reg   [1:0] tn_reg_245;
reg   [3:0] ap_phi_mux_i_phi_fu_260_p4;
wire   [63:0] sum_cast_fu_330_p1;
reg    ap_reg_ioackin_m_axi_weights_ARREADY;
reg    ap_sig_ioackin_m_axi_weights_ARREADY;
reg    ap_block_pp0_stage0_01001;
wire   [8:0] p_shl_fu_276_p3;
wire   [8:0] n_cast3_fu_272_p1;
wire   [8:0] tmp_fu_290_p2;
wire   [2:0] tn_cast_cast_fu_306_p1;
wire   [31:0] tmp_152_cast_fu_321_p1;
wire   [31:0] sum_fu_325_p2;
reg   [10:0] ap_NS_fsm;
reg    ap_idle_pp0;
wire    ap_enable_pp0;

// power-on initialization
initial begin
#0 ap_CS_fsm = 11'd1;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
#0 ap_enable_reg_pp0_iter0 = 1'b0;
#0 ap_enable_reg_pp0_iter2 = 1'b0;
#0 ap_reg_ioackin_m_axi_weights_ARREADY = 1'b0;
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_CS_fsm <= ap_ST_fsm_state1;
    end else begin
        ap_CS_fsm <= ap_NS_fsm;
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter0 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage0_subdone) & (1'b1 == ap_condition_pp0_exit_iter0_state10) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            ap_enable_reg_pp0_iter0 <= 1'b0;
        end else if ((1'b1 == ap_CS_fsm_state9)) begin
            ap_enable_reg_pp0_iter0 <= 1'b1;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter1 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            if ((1'b1 == ap_condition_pp0_exit_iter0_state10)) begin
                ap_enable_reg_pp0_iter1 <= (1'b1 ^ ap_condition_pp0_exit_iter0_state10);
            end else if ((1'b1 == 1'b1)) begin
                ap_enable_reg_pp0_iter1 <= ap_enable_reg_pp0_iter0;
            end
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter2 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter2 <= ap_enable_reg_pp0_iter1;
        end else if ((1'b1 == ap_CS_fsm_state9)) begin
            ap_enable_reg_pp0_iter2 <= 1'b0;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_reg_ioackin_m_axi_weights_ARREADY <= 1'b0;
    end else begin
        if ((1'b1 == ap_CS_fsm_state3)) begin
            if ((ap_sig_ioackin_m_axi_weights_ARREADY == 1'b1)) begin
                ap_reg_ioackin_m_axi_weights_ARREADY <= 1'b0;
            end else if ((m_axi_weights_ARREADY == 1'b1)) begin
                ap_reg_ioackin_m_axi_weights_ARREADY <= 1'b1;
            end
        end
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state1) & (tmp_536_fu_296_p2 == 1'd1) & (ap_start == 1'b1))) begin
        base_addr1_d_reg_235 <= base_addr1_fu_284_p2;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        base_addr1_d_reg_235 <= base_addr1_d1_2_fu_352_p2;
    end
end

always @ (posedge ap_clk) begin
    if (((exitcond_reg_391 == 1'd0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        i_reg_256 <= i_2_reg_395;
    end else if ((1'b1 == ap_CS_fsm_state9)) begin
        i_reg_256 <= 4'd0;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state1) & (tmp_536_fu_296_p2 == 1'd1) & (ap_start == 1'b1))) begin
        tn_reg_245 <= 2'd0;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        tn_reg_245 <= tn_2_reg_380;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        exitcond_reg_391 <= exitcond_fu_340_p2;
        i_reg_256_pp0_iter1_reg <= i_reg_256;
        tmp_538_reg_400 <= m_axi_weights_RDATA;
    end
end

always @ (posedge ap_clk) begin
    if (((ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        i_2_reg_395 <= i_2_fu_346_p2;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b1))) begin
        tmp_536_reg_368 <= tmp_536_fu_296_p2;
        weights_offset_cast_reg_358[30 : 0] <= weights_offset_cast_fu_268_p1[30 : 0];
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state1) & (tmp_536_fu_296_p2 == 1'd1) & (ap_start == 1'b1))) begin
        tmp_537_reg_372 <= tmp_537_fu_302_p1;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state2) & (tmp_536_reg_368 == 1'd1))) begin
        tn_2_reg_380 <= tn_2_fu_315_p2;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state2) & (tmp_s_fu_310_p2 == 1'd1) & (tmp_536_reg_368 == 1'd1))) begin
        weights_addr_reg_385 <= sum_cast_fu_330_p1;
    end
end

always @ (*) begin
    if ((exitcond_fu_340_p2 == 1'd1)) begin
        ap_condition_pp0_exit_iter0_state10 = 1'b1;
    end else begin
        ap_condition_pp0_exit_iter0_state10 = 1'b0;
    end
end

always @ (*) begin
    if ((((ap_start == 1'b0) & (1'b1 == ap_CS_fsm_state1)) | ((1'b1 == ap_CS_fsm_state2) & ((tmp_s_fu_310_p2 == 1'd0) | (tmp_536_reg_368 == 1'd0))))) begin
        ap_done = 1'b1;
    end else begin
        ap_done = 1'b0;
    end
end

always @ (*) begin
    if (((ap_start == 1'b0) & (1'b1 == ap_CS_fsm_state1))) begin
        ap_idle = 1'b1;
    end else begin
        ap_idle = 1'b0;
    end
end

always @ (*) begin
    if (((ap_enable_reg_pp0_iter2 == 1'b0) & (ap_enable_reg_pp0_iter0 == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b0))) begin
        ap_idle_pp0 = 1'b1;
    end else begin
        ap_idle_pp0 = 1'b0;
    end
end

always @ (*) begin
    if (((exitcond_reg_391 == 1'd0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0))) begin
        ap_phi_mux_i_phi_fu_260_p4 = i_2_reg_395;
    end else begin
        ap_phi_mux_i_phi_fu_260_p4 = i_reg_256;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state2) & ((tmp_s_fu_310_p2 == 1'd0) | (tmp_536_reg_368 == 1'd0)))) begin
        ap_ready = 1'b1;
    end else begin
        ap_ready = 1'b0;
    end
end

always @ (*) begin
    if ((ap_reg_ioackin_m_axi_weights_ARREADY == 1'b0)) begin
        ap_sig_ioackin_m_axi_weights_ARREADY = m_axi_weights_ARREADY;
    end else begin
        ap_sig_ioackin_m_axi_weights_ARREADY = 1'b1;
    end
end

always @ (*) begin
    if (((ap_reg_ioackin_m_axi_weights_ARREADY == 1'b0) & (1'b1 == ap_CS_fsm_state3))) begin
        m_axi_weights_ARVALID = 1'b1;
    end else begin
        m_axi_weights_ARVALID = 1'b0;
    end
end

always @ (*) begin
    if (((ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        m_axi_weights_RREADY = 1'b1;
    end else begin
        m_axi_weights_RREADY = 1'b0;
    end
end

always @ (*) begin
    if (((i_reg_256_pp0_iter1_reg == 4'd0) & (weight_buffer_0_V_full_n == 1'b1) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        weight_buffer_0_V_write = 1'b1;
    end else begin
        weight_buffer_0_V_write = 1'b0;
    end
end

always @ (*) begin
    if (((weight_buffer_1_V_full_n == 1'b1) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001) & (i_reg_256_pp0_iter1_reg == 4'd1))) begin
        weight_buffer_1_V_write = 1'b1;
    end else begin
        weight_buffer_1_V_write = 1'b0;
    end
end

always @ (*) begin
    if (((weight_buffer_2_V_full_n == 1'b1) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001) & (i_reg_256_pp0_iter1_reg == 4'd2))) begin
        weight_buffer_2_V_write = 1'b1;
    end else begin
        weight_buffer_2_V_write = 1'b0;
    end
end

always @ (*) begin
    if (((ap_enable_reg_pp0_iter2 == 1'b1) & (weight_buffer_3_V_full_n == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001) & (i_reg_256_pp0_iter1_reg == 4'd3))) begin
        weight_buffer_3_V_write = 1'b1;
    end else begin
        weight_buffer_3_V_write = 1'b0;
    end
end

always @ (*) begin
    if (((ap_enable_reg_pp0_iter2 == 1'b1) & (weight_buffer_4_V_full_n == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001) & (i_reg_256_pp0_iter1_reg == 4'd4))) begin
        weight_buffer_4_V_write = 1'b1;
    end else begin
        weight_buffer_4_V_write = 1'b0;
    end
end

always @ (*) begin
    if (((ap_enable_reg_pp0_iter2 == 1'b1) & (weight_buffer_5_V_full_n == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001) & (i_reg_256_pp0_iter1_reg == 4'd5))) begin
        weight_buffer_5_V_write = 1'b1;
    end else begin
        weight_buffer_5_V_write = 1'b0;
    end
end

always @ (*) begin
    if (((ap_enable_reg_pp0_iter2 == 1'b1) & (weight_buffer_6_V_full_n == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001) & (i_reg_256_pp0_iter1_reg == 4'd6))) begin
        weight_buffer_6_V_write = 1'b1;
    end else begin
        weight_buffer_6_V_write = 1'b0;
    end
end

always @ (*) begin
    if (((ap_enable_reg_pp0_iter2 == 1'b1) & (weight_buffer_7_V_full_n == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001) & (i_reg_256_pp0_iter1_reg == 4'd7))) begin
        weight_buffer_7_V_write = 1'b1;
    end else begin
        weight_buffer_7_V_write = 1'b0;
    end
end

always @ (*) begin
    if ((~(i_reg_256_pp0_iter1_reg == 4'd0) & ~(i_reg_256_pp0_iter1_reg == 4'd1) & ~(i_reg_256_pp0_iter1_reg == 4'd2) & ~(i_reg_256_pp0_iter1_reg == 4'd3) & ~(i_reg_256_pp0_iter1_reg == 4'd4) & ~(i_reg_256_pp0_iter1_reg == 4'd5) & ~(i_reg_256_pp0_iter1_reg == 4'd6) & ~(i_reg_256_pp0_iter1_reg == 4'd7) & (ap_enable_reg_pp0_iter2 == 1'b1) & (weight_buffer_8_V_full_n == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        weight_buffer_8_V_write = 1'b1;
    end else begin
        weight_buffer_8_V_write = 1'b0;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state2) & (weight_cntl_V_full_n == 1'b1) & ((tmp_s_fu_310_p2 == 1'd0) | (tmp_536_reg_368 == 1'd0)))) begin
        weight_cntl_V_write = 1'b1;
    end else begin
        weight_cntl_V_write = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state3)) begin
        weights_blk_n_AR = m_axi_weights_ARREADY;
    end else begin
        weights_blk_n_AR = 1'b1;
    end
end

always @ (*) begin
    if (((ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0))) begin
        weights_blk_n_R = m_axi_weights_RVALID;
    end else begin
        weights_blk_n_R = 1'b1;
    end
end

always @ (*) begin
    case (ap_CS_fsm)
        ap_ST_fsm_state1 : begin
            if (((1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b1))) begin
                ap_NS_fsm = ap_ST_fsm_state2;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state1;
            end
        end
        ap_ST_fsm_state2 : begin
            if (((1'b1 == ap_CS_fsm_state2) & ((tmp_s_fu_310_p2 == 1'd0) | (tmp_536_reg_368 == 1'd0)))) begin
                ap_NS_fsm = ap_ST_fsm_state1;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state3;
            end
        end
        ap_ST_fsm_state3 : begin
            if (((ap_sig_ioackin_m_axi_weights_ARREADY == 1'b1) & (1'b1 == ap_CS_fsm_state3))) begin
                ap_NS_fsm = ap_ST_fsm_state4;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state3;
            end
        end
        ap_ST_fsm_state4 : begin
            ap_NS_fsm = ap_ST_fsm_state5;
        end
        ap_ST_fsm_state5 : begin
            ap_NS_fsm = ap_ST_fsm_state6;
        end
        ap_ST_fsm_state6 : begin
            ap_NS_fsm = ap_ST_fsm_state7;
        end
        ap_ST_fsm_state7 : begin
            ap_NS_fsm = ap_ST_fsm_state8;
        end
        ap_ST_fsm_state8 : begin
            ap_NS_fsm = ap_ST_fsm_state9;
        end
        ap_ST_fsm_state9 : begin
            ap_NS_fsm = ap_ST_fsm_pp0_stage0;
        end
        ap_ST_fsm_pp0_stage0 : begin
            if ((~((1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (exitcond_fu_340_p2 == 1'd1) & (ap_enable_reg_pp0_iter1 == 1'b0)) & ~((1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter2 == 1'b1) & (ap_enable_reg_pp0_iter1 == 1'b0)))) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end else if ((((1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter2 == 1'b1) & (ap_enable_reg_pp0_iter1 == 1'b0)) | ((1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (exitcond_fu_340_p2 == 1'd1) & (ap_enable_reg_pp0_iter1 == 1'b0)))) begin
                ap_NS_fsm = ap_ST_fsm_state13;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end
        end
        ap_ST_fsm_state13 : begin
            ap_NS_fsm = ap_ST_fsm_state2;
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end

assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[32'd9];

assign ap_CS_fsm_state1 = ap_CS_fsm[32'd0];

assign ap_CS_fsm_state13 = ap_CS_fsm[32'd10];

assign ap_CS_fsm_state2 = ap_CS_fsm[32'd1];

assign ap_CS_fsm_state3 = ap_CS_fsm[32'd2];

assign ap_CS_fsm_state9 = ap_CS_fsm[32'd8];

assign ap_block_pp0_stage0 = ~(1'b1 == 1'b1);

always @ (*) begin
    ap_block_pp0_stage0_01001 = ((m_axi_weights_RVALID == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b1));
end

always @ (*) begin
    ap_block_pp0_stage0_11001 = ((m_axi_weights_RVALID == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b1));
end

always @ (*) begin
    ap_block_pp0_stage0_subdone = ((m_axi_weights_RVALID == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b1));
end

assign ap_block_state10_pp0_stage0_iter0 = ~(1'b1 == 1'b1);

always @ (*) begin
    ap_block_state11_pp0_stage0_iter1 = (m_axi_weights_RVALID == 1'b0);
end

assign ap_block_state12_pp0_stage0_iter2 = ~(1'b1 == 1'b1);

assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);

assign base_addr1_d1_2_fu_352_p2 = (base_addr1_d_reg_235 + 9'd9);

assign base_addr1_fu_284_p2 = (p_shl_fu_276_p3 + n_cast3_fu_272_p1);

assign exitcond_fu_340_p2 = ((ap_phi_mux_i_phi_fu_260_p4 == 4'd9) ? 1'b1 : 1'b0);

assign i_2_fu_346_p2 = (ap_phi_mux_i_phi_fu_260_p4 + 4'd1);

assign m_axi_weights_ARADDR = weights_addr_reg_385;

assign m_axi_weights_ARBURST = 2'd0;

assign m_axi_weights_ARCACHE = 4'd0;

assign m_axi_weights_ARID = 1'd0;

assign m_axi_weights_ARLEN = 32'd9;

assign m_axi_weights_ARLOCK = 2'd0;

assign m_axi_weights_ARPROT = 3'd0;

assign m_axi_weights_ARQOS = 4'd0;

assign m_axi_weights_ARREGION = 4'd0;

assign m_axi_weights_ARSIZE = 3'd0;

assign m_axi_weights_ARUSER = 1'd0;

assign m_axi_weights_AWADDR = 32'd0;

assign m_axi_weights_AWBURST = 2'd0;

assign m_axi_weights_AWCACHE = 4'd0;

assign m_axi_weights_AWID = 1'd0;

assign m_axi_weights_AWLEN = 32'd0;

assign m_axi_weights_AWLOCK = 2'd0;

assign m_axi_weights_AWPROT = 3'd0;

assign m_axi_weights_AWQOS = 4'd0;

assign m_axi_weights_AWREGION = 4'd0;

assign m_axi_weights_AWSIZE = 3'd0;

assign m_axi_weights_AWUSER = 1'd0;

assign m_axi_weights_AWVALID = 1'b0;

assign m_axi_weights_BREADY = 1'b0;

assign m_axi_weights_WDATA = 16'd0;

assign m_axi_weights_WID = 1'd0;

assign m_axi_weights_WLAST = 1'b0;

assign m_axi_weights_WSTRB = 2'd0;

assign m_axi_weights_WUSER = 1'd0;

assign m_axi_weights_WVALID = 1'b0;

assign n_cast3_fu_272_p1 = n;

assign p_shl_fu_276_p3 = {{n}, {3'd0}};

assign sum_cast_fu_330_p1 = sum_fu_325_p2;

assign sum_fu_325_p2 = (weights_offset_cast_reg_358 + tmp_152_cast_fu_321_p1);

assign tmp_152_cast_fu_321_p1 = base_addr1_d_reg_235;

assign tmp_536_fu_296_p2 = ((tmp_fu_290_p2 == 9'd0) ? 1'b1 : 1'b0);

assign tmp_537_fu_302_p1 = nLoops[2:0];

assign tmp_fu_290_p2 = (r | c);

assign tmp_s_fu_310_p2 = (($signed(tn_cast_cast_fu_306_p1) < $signed(tmp_537_reg_372)) ? 1'b1 : 1'b0);

assign tn_2_fu_315_p2 = (tn_reg_245 + 2'd1);

assign tn_cast_cast_fu_306_p1 = tn_reg_245;

assign weight_buffer_0_V_din = tmp_538_reg_400;

assign weight_buffer_1_V_din = tmp_538_reg_400;

assign weight_buffer_2_V_din = tmp_538_reg_400;

assign weight_buffer_3_V_din = tmp_538_reg_400;

assign weight_buffer_4_V_din = tmp_538_reg_400;

assign weight_buffer_5_V_din = tmp_538_reg_400;

assign weight_buffer_6_V_din = tmp_538_reg_400;

assign weight_buffer_7_V_din = tmp_538_reg_400;

assign weight_buffer_8_V_din = tmp_538_reg_400;

assign weight_cntl_V_din = 1'd0;

assign weights_offset_cast_fu_268_p1 = weights_offset;

always @ (posedge ap_clk) begin
    weights_offset_cast_reg_358[31] <= 1'b0;
end

endmodule //copy_weight_fmem2buf_8
