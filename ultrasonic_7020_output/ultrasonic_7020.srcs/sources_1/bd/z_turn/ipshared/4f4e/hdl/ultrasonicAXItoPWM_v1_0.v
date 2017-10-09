`timescale 1 ns / 1 ps

	module ultrasonicAXItoPWM_v1_0 #
	(
		// Users to add parameters here

		// User parameters ends
		// Do not modify the parameters beyond this line


		// Parameters of Axi Slave Bus Interface S00_AXI
		parameter integer C_S00_AXI_DATA_WIDTH	= 32,
		parameter integer C_S00_AXI_ADDR_WIDTH	= 9
	)
	(
		// Users to add ports here
        output wire [360:0] output_enable,
        output wire [360:0] output_signal,
        
        input wire pwmclk,
        input wire [23:0] audio_pwr,
        
        
        output wire data_rdy,
        output wire power,
		// User ports ends
		// Do not modify the ports beyond this line


		// Ports of Axi Slave Bus Interface S00_AXI
		input wire  s00_axi_aclk,
		input wire  s00_axi_aresetn,
		input wire [C_S00_AXI_ADDR_WIDTH-1 : 0] s00_axi_awaddr,
		input wire [2 : 0] s00_axi_awprot,
		input wire  s00_axi_awvalid,
		output wire  s00_axi_awready,
		input wire [C_S00_AXI_DATA_WIDTH-1 : 0] s00_axi_wdata,
		input wire [(C_S00_AXI_DATA_WIDTH/8)-1 : 0] s00_axi_wstrb,
		input wire  s00_axi_wvalid,
		output wire  s00_axi_wready,
		output wire [1 : 0] s00_axi_bresp,
		output wire  s00_axi_bvalid,
		input wire  s00_axi_bready,
		input wire [C_S00_AXI_ADDR_WIDTH-1 : 0] s00_axi_araddr,
		input wire [2 : 0] s00_axi_arprot,
		input wire  s00_axi_arvalid,
		output wire  s00_axi_arready,
		output wire [C_S00_AXI_DATA_WIDTH-1 : 0] s00_axi_rdata,
		output wire [1 : 0] s00_axi_rresp,
		output wire  s00_axi_rvalid,
		input wire  s00_axi_rready
	);
// Instantiation of Axi Bus Interface S00_AXI
	ultrasonicAXItoPWM_v1_0_S00_AXI # ( 
		.C_S_AXI_DATA_WIDTH(C_S00_AXI_DATA_WIDTH),
		.C_S_AXI_ADDR_WIDTH(C_S00_AXI_ADDR_WIDTH)
	) ultrasonicAXItoPWM_v1_0_S00_AXI_inst (
		.S_AXI_ACLK(s00_axi_aclk),
		.S_AXI_ARESETN(s00_axi_aresetn),
		.S_AXI_AWADDR(s00_axi_awaddr),
		.S_AXI_AWPROT(s00_axi_awprot),
		.S_AXI_AWVALID(s00_axi_awvalid),
		.S_AXI_AWREADY(s00_axi_awready),
		.S_AXI_WDATA(s00_axi_wdata),
		.S_AXI_WSTRB(s00_axi_wstrb),
		.S_AXI_WVALID(s00_axi_wvalid),
		.S_AXI_WREADY(s00_axi_wready),
		.S_AXI_BRESP(s00_axi_bresp),
		.S_AXI_BVALID(s00_axi_bvalid),
		.S_AXI_BREADY(s00_axi_bready),
		.S_AXI_ARADDR(s00_axi_araddr),
		.S_AXI_ARPROT(s00_axi_arprot),
		.S_AXI_ARVALID(s00_axi_arvalid),
		.S_AXI_ARREADY(s00_axi_arready),
		.S_AXI_RDATA(s00_axi_rdata),
		.S_AXI_RRESP(s00_axi_rresp),
		.S_AXI_RVALID(s00_axi_rvalid),
		.S_AXI_RREADY(s00_axi_rready),
		.data_reg0(data_reg0),
        .data_reg1(data_reg1),
        .data_reg2(data_reg2),
        .data_reg3(data_reg3),
        .data_reg4(data_reg4),
        .data_reg5(data_reg5),
        .data_reg6(data_reg6),
        .data_reg7(data_reg7),
        .data_reg8(data_reg8),
        .data_reg9(data_reg9),
        .data_reg10(data_reg10),
        .data_reg11(data_reg11),
        .data_reg12(data_reg12),
        .data_reg13(data_reg13),
        .data_reg14(data_reg14),
        .data_reg15(data_reg15),
        .data_reg16(data_reg16),
        .data_reg17(data_reg17),
        .data_reg18(data_reg18),
        .data_reg19(data_reg19),
        .data_reg20(data_reg20),
        .data_reg21(data_reg21),
        .data_reg22(data_reg22),
        .data_reg23(data_reg23),
        .data_reg24(data_reg24),
        .data_reg25(data_reg25),
        .data_reg26(data_reg26),
        .data_reg27(data_reg27),
        .data_reg28(data_reg28),
        .data_reg29(data_reg29),
        .data_reg30(data_reg30),
        .data_reg31(data_reg31),
        .data_reg32(data_reg32),
        .data_reg33(data_reg33),
        .data_reg34(data_reg34),
        .data_reg35(data_reg35),
        .data_reg36(data_reg36),
        .data_reg37(data_reg37),
        .data_reg38(data_reg38),
        .data_reg39(data_reg39),
        .data_reg40(data_reg40),
        .data_reg41(data_reg41),
        .data_reg42(data_reg42),
        .data_reg43(data_reg43),
        .data_reg44(data_reg44),
        .data_reg45(data_reg45),
        .data_reg46(data_reg46),
        .data_reg47(data_reg47),
        .data_reg48(data_reg48),
        .data_reg49(data_reg49),
        .data_reg50(data_reg50),
        .data_reg51(data_reg51),
        .data_reg52(data_reg52),
        .data_reg53(data_reg53),
        .data_reg54(data_reg54),
        .data_reg55(data_reg55),
        .data_reg56(data_reg56),
        .data_reg57(data_reg57),
        .data_reg58(data_reg58),
        .data_reg59(data_reg59),
        .data_reg60(data_reg60),
        .data_reg61(data_reg61),
        .data_reg62(data_reg62),
        .data_reg63(data_reg63),
        .data_reg64(data_reg64),
        .data_reg65(data_reg65),
        .data_reg66(data_reg66),
        .data_reg67(data_reg67),
        .data_reg68(data_reg68),
        .data_reg69(data_reg69),
        .data_reg70(data_reg70),
        .data_reg71(data_reg71),
        .data_reg72(data_reg72),
        .data_reg73(data_reg73),
        .data_reg74(data_reg74),
        .data_reg75(data_reg75),
        .data_reg76(data_reg76),
        .data_reg77(data_reg77),
        .data_reg78(data_reg78),
        .data_reg79(data_reg79),
        .data_reg80(data_reg80),
        .data_reg81(data_reg81),
        .data_reg82(data_reg82),
        .data_reg83(data_reg83),
        .data_reg84(data_reg84),
        .data_reg85(data_reg85),
        .data_reg86(data_reg86),
        .data_reg87(data_reg87),
        .data_reg88(data_reg88),
        .data_reg89(data_reg89),
        .data_reg90(data_reg90)	
	);

	// Add user logic here
	
    wire [31:0] data_reg0;
    wire [31:0] data_reg1;
    wire [31:0] data_reg2;
    wire [31:0] data_reg3;
    wire [31:0] data_reg4;
    wire [31:0] data_reg5;
    wire [31:0] data_reg6;
    wire [31:0] data_reg7;
    wire [31:0] data_reg8;
    wire [31:0] data_reg9;
    wire [31:0] data_reg10;
    wire [31:0] data_reg11;
    wire [31:0] data_reg12;
    wire [31:0] data_reg13;
    wire [31:0] data_reg14;
    wire [31:0] data_reg15;
    wire [31:0] data_reg16;
    wire [31:0] data_reg17;
    wire [31:0] data_reg18;
    wire [31:0] data_reg19;
    wire [31:0] data_reg20;
    wire [31:0] data_reg21;
    wire [31:0] data_reg22;
    wire [31:0] data_reg23;
    wire [31:0] data_reg24;
    wire [31:0] data_reg25;
    wire [31:0] data_reg26;
    wire [31:0] data_reg27;
    wire [31:0] data_reg28;
    wire [31:0] data_reg29;
    wire [31:0] data_reg30;
    wire [31:0] data_reg31;
    wire [31:0] data_reg32;
    wire [31:0] data_reg33;
    wire [31:0] data_reg34;
    wire [31:0] data_reg35;
    wire [31:0] data_reg36;
    wire [31:0] data_reg37;
    wire [31:0] data_reg38;
    wire [31:0] data_reg39;
    wire [31:0] data_reg40;
    wire [31:0] data_reg41;
    wire [31:0] data_reg42;
    wire [31:0] data_reg43;
    wire [31:0] data_reg44;
    wire [31:0] data_reg45;
    wire [31:0] data_reg46;
    wire [31:0] data_reg47;
    wire [31:0] data_reg48;
    wire [31:0] data_reg49;
    wire [31:0] data_reg50;
    wire [31:0] data_reg51;
    wire [31:0] data_reg52;
    wire [31:0] data_reg53;
    wire [31:0] data_reg54;
    wire [31:0] data_reg55;
    wire [31:0] data_reg56;
    wire [31:0] data_reg57;
    wire [31:0] data_reg58;
    wire [31:0] data_reg59;
    wire [31:0] data_reg60;
    wire [31:0] data_reg61;
    wire [31:0] data_reg62;
    wire [31:0] data_reg63;
    wire [31:0] data_reg64;
    wire [31:0] data_reg65;
    wire [31:0] data_reg66;
    wire [31:0] data_reg67;
    wire [31:0] data_reg68;
    wire [31:0] data_reg69;
    wire [31:0] data_reg70;
    wire [31:0] data_reg71;
    wire [31:0] data_reg72;
    wire [31:0] data_reg73;
    wire [31:0] data_reg74;
    wire [31:0] data_reg75;
    wire [31:0] data_reg76;
    wire [31:0] data_reg77;
    wire [31:0] data_reg78;
    wire [31:0] data_reg79;
    wire [31:0] data_reg80;
    wire [31:0] data_reg81;
    wire [31:0] data_reg82;
    wire [31:0] data_reg83;
    wire [31:0] data_reg84;
    wire [31:0] data_reg85;
    wire [31:0] data_reg86;
    wire [31:0] data_reg87;
    wire [31:0] data_reg88;
    wire [31:0] data_reg89;
    wire [31:0] data_reg90;
    
    
	reg DATA_RDY;

	integer counter;
	integer fakecounter;
	
	reg fakeclock;
	reg [9:0] led;

    reg [360:0] OUTPUT_WAVEFORM;
    reg [360:0] OUTPUT_ENABLE;
    reg [360:0] OUTPUT_BLINK;
    reg [360:0] OUTPUT_BUF;
    
    reg [6:0] POWER_LVL;
	
    
    always @(posedge pwmclk)
        if (counter >= 255)
            begin
                counter <= 0;
                DATA_RDY <= 1;
                led <= led + 1;
                if (led < 361) 
                    begin
                        OUTPUT_BLINK[led] <= 0;
                        OUTPUT_BLINK[led+1] <= 1;
                    end
                else
                    begin
                        led <= 0;
                    end
                    
            end
        else
            begin
                counter <= counter+1;
                DATA_RDY <= 0;
            end
            
            
      
   
            

                           


    
        
    reg r1, r2;
    always @(posedge pwmclk)
        if (data_reg90[0] == 1)
            begin
                r1 <= 1;
                r2 <= r1;
            end
        else
            begin
                r1 <= 0;
                r2 <= 0;
            end
            
    always @(posedge pwmclk)
        if (fakecounter >= 3000)
            begin
                fakecounter <= 0;
                fakeclock <= 1;
            end
        else
            begin
                fakecounter <= fakecounter+1;
                fakeclock <= 0;
            end
                        
                        
     always @(posedge pwmclk)
       if (data_reg90[2] == 0)
           begin
               OUTPUT_BUF <= OUTPUT_WAVEFORM;
           end
       else
           begin
               OUTPUT_BUF <= OUTPUT_BLINK;
           end
           
   always @(negedge counter[7])
                 begin
                    POWER_LVL <=  (data_reg90[15:8] - (audio_pwr >> 17));
                 end
      
            

	
	assign data_rdy = data_reg90[0];
	assign power = data_reg90[1];
	assign output_signal = OUTPUT_BUF;
	assign output_enable = OUTPUT_ENABLE;
	//assign POWER_LVL[6:0] = //data_reg90[15:8];
	
	
	
        
        reg [7:0] compare_0_0_on;
        reg [7:0] compare_0_0_off;
        reg [7:0] compare_0_1_on;
        reg [7:0] compare_0_1_off;
        reg [7:0] compare_0_2_on;
        reg [7:0] compare_0_2_off;
        reg [7:0] compare_0_3_on;
        reg [7:0] compare_0_3_off;
        
        reg [7:0] compare_1_0_on;
        reg [7:0] compare_1_0_off;
        reg [7:0] compare_1_1_on;
        reg [7:0] compare_1_1_off;
        reg [7:0] compare_1_2_on;
        reg [7:0] compare_1_2_off;
        reg [7:0] compare_1_3_on;
        reg [7:0] compare_1_3_off;
        
        reg [7:0] compare_2_0_on;
        reg [7:0] compare_2_0_off;
        reg [7:0] compare_2_1_on;
        reg [7:0] compare_2_1_off;
        reg [7:0] compare_2_2_on;
        reg [7:0] compare_2_2_off;
        reg [7:0] compare_2_3_on;
        reg [7:0] compare_2_3_off;
        
        reg [7:0] compare_3_0_on;
        reg [7:0] compare_3_0_off;
        reg [7:0] compare_3_1_on;
        reg [7:0] compare_3_1_off;
        reg [7:0] compare_3_2_on;
        reg [7:0] compare_3_2_off;
        reg [7:0] compare_3_3_on;
        reg [7:0] compare_3_3_off;
        
        reg [7:0] compare_4_0_on;
        reg [7:0] compare_4_0_off;
        reg [7:0] compare_4_1_on;
        reg [7:0] compare_4_1_off;
        reg [7:0] compare_4_2_on;
        reg [7:0] compare_4_2_off;
        reg [7:0] compare_4_3_on;
        reg [7:0] compare_4_3_off;
        
        reg [7:0] compare_5_0_on;
        reg [7:0] compare_5_0_off;
        reg [7:0] compare_5_1_on;
        reg [7:0] compare_5_1_off;
        reg [7:0] compare_5_2_on;
        reg [7:0] compare_5_2_off;
        reg [7:0] compare_5_3_on;
        reg [7:0] compare_5_3_off;
        
        reg [7:0] compare_6_0_on;
        reg [7:0] compare_6_0_off;
        reg [7:0] compare_6_1_on;
        reg [7:0] compare_6_1_off;
        reg [7:0] compare_6_2_on;
        reg [7:0] compare_6_2_off;
        reg [7:0] compare_6_3_on;
        reg [7:0] compare_6_3_off;
        
        reg [7:0] compare_7_0_on;
        reg [7:0] compare_7_0_off;
        reg [7:0] compare_7_1_on;
        reg [7:0] compare_7_1_off;
        reg [7:0] compare_7_2_on;
        reg [7:0] compare_7_2_off;
        reg [7:0] compare_7_3_on;
        reg [7:0] compare_7_3_off;
        
        reg [7:0] compare_8_0_on;
        reg [7:0] compare_8_0_off;
        reg [7:0] compare_8_1_on;
        reg [7:0] compare_8_1_off;
        reg [7:0] compare_8_2_on;
        reg [7:0] compare_8_2_off;
        reg [7:0] compare_8_3_on;
        reg [7:0] compare_8_3_off;
        
        reg [7:0] compare_9_0_on;
        reg [7:0] compare_9_0_off;
        reg [7:0] compare_9_1_on;
        reg [7:0] compare_9_1_off;
        reg [7:0] compare_9_2_on;
        reg [7:0] compare_9_2_off;
        reg [7:0] compare_9_3_on;
        reg [7:0] compare_9_3_off;
        
        reg [7:0] compare_10_0_on;
        reg [7:0] compare_10_0_off;
        reg [7:0] compare_10_1_on;
        reg [7:0] compare_10_1_off;
        reg [7:0] compare_10_2_on;
        reg [7:0] compare_10_2_off;
        reg [7:0] compare_10_3_on;
        reg [7:0] compare_10_3_off;
        
        reg [7:0] compare_11_0_on;
        reg [7:0] compare_11_0_off;
        reg [7:0] compare_11_1_on;
        reg [7:0] compare_11_1_off;
        reg [7:0] compare_11_2_on;
        reg [7:0] compare_11_2_off;
        reg [7:0] compare_11_3_on;
        reg [7:0] compare_11_3_off;
        
        reg [7:0] compare_12_0_on;
        reg [7:0] compare_12_0_off;
        reg [7:0] compare_12_1_on;
        reg [7:0] compare_12_1_off;
        reg [7:0] compare_12_2_on;
        reg [7:0] compare_12_2_off;
        reg [7:0] compare_12_3_on;
        reg [7:0] compare_12_3_off;
        
        reg [7:0] compare_13_0_on;
        reg [7:0] compare_13_0_off;
        reg [7:0] compare_13_1_on;
        reg [7:0] compare_13_1_off;
        reg [7:0] compare_13_2_on;
        reg [7:0] compare_13_2_off;
        reg [7:0] compare_13_3_on;
        reg [7:0] compare_13_3_off;
        
        reg [7:0] compare_14_0_on;
        reg [7:0] compare_14_0_off;
        reg [7:0] compare_14_1_on;
        reg [7:0] compare_14_1_off;
        reg [7:0] compare_14_2_on;
        reg [7:0] compare_14_2_off;
        reg [7:0] compare_14_3_on;
        reg [7:0] compare_14_3_off;
        
        reg [7:0] compare_15_0_on;
        reg [7:0] compare_15_0_off;
        reg [7:0] compare_15_1_on;
        reg [7:0] compare_15_1_off;
        reg [7:0] compare_15_2_on;
        reg [7:0] compare_15_2_off;
        reg [7:0] compare_15_3_on;
        reg [7:0] compare_15_3_off;
        
        reg [7:0] compare_16_0_on;
        reg [7:0] compare_16_0_off;
        reg [7:0] compare_16_1_on;
        reg [7:0] compare_16_1_off;
        reg [7:0] compare_16_2_on;
        reg [7:0] compare_16_2_off;
        reg [7:0] compare_16_3_on;
        reg [7:0] compare_16_3_off;
        
        reg [7:0] compare_17_0_on;
        reg [7:0] compare_17_0_off;
        reg [7:0] compare_17_1_on;
        reg [7:0] compare_17_1_off;
        reg [7:0] compare_17_2_on;
        reg [7:0] compare_17_2_off;
        reg [7:0] compare_17_3_on;
        reg [7:0] compare_17_3_off;
        
        reg [7:0] compare_18_0_on;
        reg [7:0] compare_18_0_off;
        reg [7:0] compare_18_1_on;
        reg [7:0] compare_18_1_off;
        reg [7:0] compare_18_2_on;
        reg [7:0] compare_18_2_off;
        reg [7:0] compare_18_3_on;
        reg [7:0] compare_18_3_off;
        
        reg [7:0] compare_19_0_on;
        reg [7:0] compare_19_0_off;
        reg [7:0] compare_19_1_on;
        reg [7:0] compare_19_1_off;
        reg [7:0] compare_19_2_on;
        reg [7:0] compare_19_2_off;
        reg [7:0] compare_19_3_on;
        reg [7:0] compare_19_3_off;
        
        reg [7:0] compare_20_0_on;
        reg [7:0] compare_20_0_off;
        reg [7:0] compare_20_1_on;
        reg [7:0] compare_20_1_off;
        reg [7:0] compare_20_2_on;
        reg [7:0] compare_20_2_off;
        reg [7:0] compare_20_3_on;
        reg [7:0] compare_20_3_off;
        
        reg [7:0] compare_21_0_on;
        reg [7:0] compare_21_0_off;
        reg [7:0] compare_21_1_on;
        reg [7:0] compare_21_1_off;
        reg [7:0] compare_21_2_on;
        reg [7:0] compare_21_2_off;
        reg [7:0] compare_21_3_on;
        reg [7:0] compare_21_3_off;
        
        reg [7:0] compare_22_0_on;
        reg [7:0] compare_22_0_off;
        reg [7:0] compare_22_1_on;
        reg [7:0] compare_22_1_off;
        reg [7:0] compare_22_2_on;
        reg [7:0] compare_22_2_off;
        reg [7:0] compare_22_3_on;
        reg [7:0] compare_22_3_off;
        
        reg [7:0] compare_23_0_on;
        reg [7:0] compare_23_0_off;
        reg [7:0] compare_23_1_on;
        reg [7:0] compare_23_1_off;
        reg [7:0] compare_23_2_on;
        reg [7:0] compare_23_2_off;
        reg [7:0] compare_23_3_on;
        reg [7:0] compare_23_3_off;
        
        reg [7:0] compare_24_0_on;
        reg [7:0] compare_24_0_off;
        reg [7:0] compare_24_1_on;
        reg [7:0] compare_24_1_off;
        reg [7:0] compare_24_2_on;
        reg [7:0] compare_24_2_off;
        reg [7:0] compare_24_3_on;
        reg [7:0] compare_24_3_off;
        
        reg [7:0] compare_25_0_on;
        reg [7:0] compare_25_0_off;
        reg [7:0] compare_25_1_on;
        reg [7:0] compare_25_1_off;
        reg [7:0] compare_25_2_on;
        reg [7:0] compare_25_2_off;
        reg [7:0] compare_25_3_on;
        reg [7:0] compare_25_3_off;
        
        reg [7:0] compare_26_0_on;
        reg [7:0] compare_26_0_off;
        reg [7:0] compare_26_1_on;
        reg [7:0] compare_26_1_off;
        reg [7:0] compare_26_2_on;
        reg [7:0] compare_26_2_off;
        reg [7:0] compare_26_3_on;
        reg [7:0] compare_26_3_off;
        
        reg [7:0] compare_27_0_on;
        reg [7:0] compare_27_0_off;
        reg [7:0] compare_27_1_on;
        reg [7:0] compare_27_1_off;
        reg [7:0] compare_27_2_on;
        reg [7:0] compare_27_2_off;
        reg [7:0] compare_27_3_on;
        reg [7:0] compare_27_3_off;
        
        reg [7:0] compare_28_0_on;
        reg [7:0] compare_28_0_off;
        reg [7:0] compare_28_1_on;
        reg [7:0] compare_28_1_off;
        reg [7:0] compare_28_2_on;
        reg [7:0] compare_28_2_off;
        reg [7:0] compare_28_3_on;
        reg [7:0] compare_28_3_off;
        
        reg [7:0] compare_29_0_on;
        reg [7:0] compare_29_0_off;
        reg [7:0] compare_29_1_on;
        reg [7:0] compare_29_1_off;
        reg [7:0] compare_29_2_on;
        reg [7:0] compare_29_2_off;
        reg [7:0] compare_29_3_on;
        reg [7:0] compare_29_3_off;
        
        reg [7:0] compare_30_0_on;
        reg [7:0] compare_30_0_off;
        reg [7:0] compare_30_1_on;
        reg [7:0] compare_30_1_off;
        reg [7:0] compare_30_2_on;
        reg [7:0] compare_30_2_off;
        reg [7:0] compare_30_3_on;
        reg [7:0] compare_30_3_off;
        
        reg [7:0] compare_31_0_on;
        reg [7:0] compare_31_0_off;
        reg [7:0] compare_31_1_on;
        reg [7:0] compare_31_1_off;
        reg [7:0] compare_31_2_on;
        reg [7:0] compare_31_2_off;
        reg [7:0] compare_31_3_on;
        reg [7:0] compare_31_3_off;
        
        reg [7:0] compare_32_0_on;
        reg [7:0] compare_32_0_off;
        reg [7:0] compare_32_1_on;
        reg [7:0] compare_32_1_off;
        reg [7:0] compare_32_2_on;
        reg [7:0] compare_32_2_off;
        reg [7:0] compare_32_3_on;
        reg [7:0] compare_32_3_off;
        
        reg [7:0] compare_33_0_on;
        reg [7:0] compare_33_0_off;
        reg [7:0] compare_33_1_on;
        reg [7:0] compare_33_1_off;
        reg [7:0] compare_33_2_on;
        reg [7:0] compare_33_2_off;
        reg [7:0] compare_33_3_on;
        reg [7:0] compare_33_3_off;
        
        reg [7:0] compare_34_0_on;
        reg [7:0] compare_34_0_off;
        reg [7:0] compare_34_1_on;
        reg [7:0] compare_34_1_off;
        reg [7:0] compare_34_2_on;
        reg [7:0] compare_34_2_off;
        reg [7:0] compare_34_3_on;
        reg [7:0] compare_34_3_off;
        
        reg [7:0] compare_35_0_on;
        reg [7:0] compare_35_0_off;
        reg [7:0] compare_35_1_on;
        reg [7:0] compare_35_1_off;
        reg [7:0] compare_35_2_on;
        reg [7:0] compare_35_2_off;
        reg [7:0] compare_35_3_on;
        reg [7:0] compare_35_3_off;
        
        reg [7:0] compare_36_0_on;
        reg [7:0] compare_36_0_off;
        reg [7:0] compare_36_1_on;
        reg [7:0] compare_36_1_off;
        reg [7:0] compare_36_2_on;
        reg [7:0] compare_36_2_off;
        reg [7:0] compare_36_3_on;
        reg [7:0] compare_36_3_off;
        
        reg [7:0] compare_37_0_on;
        reg [7:0] compare_37_0_off;
        reg [7:0] compare_37_1_on;
        reg [7:0] compare_37_1_off;
        reg [7:0] compare_37_2_on;
        reg [7:0] compare_37_2_off;
        reg [7:0] compare_37_3_on;
        reg [7:0] compare_37_3_off;
        
        reg [7:0] compare_38_0_on;
        reg [7:0] compare_38_0_off;
        reg [7:0] compare_38_1_on;
        reg [7:0] compare_38_1_off;
        reg [7:0] compare_38_2_on;
        reg [7:0] compare_38_2_off;
        reg [7:0] compare_38_3_on;
        reg [7:0] compare_38_3_off;
        
        reg [7:0] compare_39_0_on;
        reg [7:0] compare_39_0_off;
        reg [7:0] compare_39_1_on;
        reg [7:0] compare_39_1_off;
        reg [7:0] compare_39_2_on;
        reg [7:0] compare_39_2_off;
        reg [7:0] compare_39_3_on;
        reg [7:0] compare_39_3_off;
        
        reg [7:0] compare_40_0_on;
        reg [7:0] compare_40_0_off;
        reg [7:0] compare_40_1_on;
        reg [7:0] compare_40_1_off;
        reg [7:0] compare_40_2_on;
        reg [7:0] compare_40_2_off;
        reg [7:0] compare_40_3_on;
        reg [7:0] compare_40_3_off;
        
        reg [7:0] compare_41_0_on;
        reg [7:0] compare_41_0_off;
        reg [7:0] compare_41_1_on;
        reg [7:0] compare_41_1_off;
        reg [7:0] compare_41_2_on;
        reg [7:0] compare_41_2_off;
        reg [7:0] compare_41_3_on;
        reg [7:0] compare_41_3_off;
        
        reg [7:0] compare_42_0_on;
        reg [7:0] compare_42_0_off;
        reg [7:0] compare_42_1_on;
        reg [7:0] compare_42_1_off;
        reg [7:0] compare_42_2_on;
        reg [7:0] compare_42_2_off;
        reg [7:0] compare_42_3_on;
        reg [7:0] compare_42_3_off;
        
        reg [7:0] compare_43_0_on;
        reg [7:0] compare_43_0_off;
        reg [7:0] compare_43_1_on;
        reg [7:0] compare_43_1_off;
        reg [7:0] compare_43_2_on;
        reg [7:0] compare_43_2_off;
        reg [7:0] compare_43_3_on;
        reg [7:0] compare_43_3_off;
        
        reg [7:0] compare_44_0_on;
        reg [7:0] compare_44_0_off;
        reg [7:0] compare_44_1_on;
        reg [7:0] compare_44_1_off;
        reg [7:0] compare_44_2_on;
        reg [7:0] compare_44_2_off;
        reg [7:0] compare_44_3_on;
        reg [7:0] compare_44_3_off;
        
        reg [7:0] compare_45_0_on;
        reg [7:0] compare_45_0_off;
        reg [7:0] compare_45_1_on;
        reg [7:0] compare_45_1_off;
        reg [7:0] compare_45_2_on;
        reg [7:0] compare_45_2_off;
        reg [7:0] compare_45_3_on;
        reg [7:0] compare_45_3_off;
        
        reg [7:0] compare_46_0_on;
        reg [7:0] compare_46_0_off;
        reg [7:0] compare_46_1_on;
        reg [7:0] compare_46_1_off;
        reg [7:0] compare_46_2_on;
        reg [7:0] compare_46_2_off;
        reg [7:0] compare_46_3_on;
        reg [7:0] compare_46_3_off;
        
        reg [7:0] compare_47_0_on;
        reg [7:0] compare_47_0_off;
        reg [7:0] compare_47_1_on;
        reg [7:0] compare_47_1_off;
        reg [7:0] compare_47_2_on;
        reg [7:0] compare_47_2_off;
        reg [7:0] compare_47_3_on;
        reg [7:0] compare_47_3_off;
        
        reg [7:0] compare_48_0_on;
        reg [7:0] compare_48_0_off;
        reg [7:0] compare_48_1_on;
        reg [7:0] compare_48_1_off;
        reg [7:0] compare_48_2_on;
        reg [7:0] compare_48_2_off;
        reg [7:0] compare_48_3_on;
        reg [7:0] compare_48_3_off;
        
        reg [7:0] compare_49_0_on;
        reg [7:0] compare_49_0_off;
        reg [7:0] compare_49_1_on;
        reg [7:0] compare_49_1_off;
        reg [7:0] compare_49_2_on;
        reg [7:0] compare_49_2_off;
        reg [7:0] compare_49_3_on;
        reg [7:0] compare_49_3_off;
        
        reg [7:0] compare_50_0_on;
        reg [7:0] compare_50_0_off;
        reg [7:0] compare_50_1_on;
        reg [7:0] compare_50_1_off;
        reg [7:0] compare_50_2_on;
        reg [7:0] compare_50_2_off;
        reg [7:0] compare_50_3_on;
        reg [7:0] compare_50_3_off;
        
        reg [7:0] compare_51_0_on;
        reg [7:0] compare_51_0_off;
        reg [7:0] compare_51_1_on;
        reg [7:0] compare_51_1_off;
        reg [7:0] compare_51_2_on;
        reg [7:0] compare_51_2_off;
        reg [7:0] compare_51_3_on;
        reg [7:0] compare_51_3_off;
        
        reg [7:0] compare_52_0_on;
        reg [7:0] compare_52_0_off;
        reg [7:0] compare_52_1_on;
        reg [7:0] compare_52_1_off;
        reg [7:0] compare_52_2_on;
        reg [7:0] compare_52_2_off;
        reg [7:0] compare_52_3_on;
        reg [7:0] compare_52_3_off;
        
        reg [7:0] compare_53_0_on;
        reg [7:0] compare_53_0_off;
        reg [7:0] compare_53_1_on;
        reg [7:0] compare_53_1_off;
        reg [7:0] compare_53_2_on;
        reg [7:0] compare_53_2_off;
        reg [7:0] compare_53_3_on;
        reg [7:0] compare_53_3_off;
        
        reg [7:0] compare_54_0_on;
        reg [7:0] compare_54_0_off;
        reg [7:0] compare_54_1_on;
        reg [7:0] compare_54_1_off;
        reg [7:0] compare_54_2_on;
        reg [7:0] compare_54_2_off;
        reg [7:0] compare_54_3_on;
        reg [7:0] compare_54_3_off;
        
        reg [7:0] compare_55_0_on;
        reg [7:0] compare_55_0_off;
        reg [7:0] compare_55_1_on;
        reg [7:0] compare_55_1_off;
        reg [7:0] compare_55_2_on;
        reg [7:0] compare_55_2_off;
        reg [7:0] compare_55_3_on;
        reg [7:0] compare_55_3_off;
        
        reg [7:0] compare_56_0_on;
        reg [7:0] compare_56_0_off;
        reg [7:0] compare_56_1_on;
        reg [7:0] compare_56_1_off;
        reg [7:0] compare_56_2_on;
        reg [7:0] compare_56_2_off;
        reg [7:0] compare_56_3_on;
        reg [7:0] compare_56_3_off;
        
        reg [7:0] compare_57_0_on;
        reg [7:0] compare_57_0_off;
        reg [7:0] compare_57_1_on;
        reg [7:0] compare_57_1_off;
        reg [7:0] compare_57_2_on;
        reg [7:0] compare_57_2_off;
        reg [7:0] compare_57_3_on;
        reg [7:0] compare_57_3_off;
        
        reg [7:0] compare_58_0_on;
        reg [7:0] compare_58_0_off;
        reg [7:0] compare_58_1_on;
        reg [7:0] compare_58_1_off;
        reg [7:0] compare_58_2_on;
        reg [7:0] compare_58_2_off;
        reg [7:0] compare_58_3_on;
        reg [7:0] compare_58_3_off;
        
        reg [7:0] compare_59_0_on;
        reg [7:0] compare_59_0_off;
        reg [7:0] compare_59_1_on;
        reg [7:0] compare_59_1_off;
        reg [7:0] compare_59_2_on;
        reg [7:0] compare_59_2_off;
        reg [7:0] compare_59_3_on;
        reg [7:0] compare_59_3_off;
        
        reg [7:0] compare_60_0_on;
        reg [7:0] compare_60_0_off;
        reg [7:0] compare_60_1_on;
        reg [7:0] compare_60_1_off;
        reg [7:0] compare_60_2_on;
        reg [7:0] compare_60_2_off;
        reg [7:0] compare_60_3_on;
        reg [7:0] compare_60_3_off;
        
        reg [7:0] compare_61_0_on;
        reg [7:0] compare_61_0_off;
        reg [7:0] compare_61_1_on;
        reg [7:0] compare_61_1_off;
        reg [7:0] compare_61_2_on;
        reg [7:0] compare_61_2_off;
        reg [7:0] compare_61_3_on;
        reg [7:0] compare_61_3_off;
        
        reg [7:0] compare_62_0_on;
        reg [7:0] compare_62_0_off;
        reg [7:0] compare_62_1_on;
        reg [7:0] compare_62_1_off;
        reg [7:0] compare_62_2_on;
        reg [7:0] compare_62_2_off;
        reg [7:0] compare_62_3_on;
        reg [7:0] compare_62_3_off;
        
        reg [7:0] compare_63_0_on;
        reg [7:0] compare_63_0_off;
        reg [7:0] compare_63_1_on;
        reg [7:0] compare_63_1_off;
        reg [7:0] compare_63_2_on;
        reg [7:0] compare_63_2_off;
        reg [7:0] compare_63_3_on;
        reg [7:0] compare_63_3_off;
        
        reg [7:0] compare_64_0_on;
        reg [7:0] compare_64_0_off;
        reg [7:0] compare_64_1_on;
        reg [7:0] compare_64_1_off;
        reg [7:0] compare_64_2_on;
        reg [7:0] compare_64_2_off;
        reg [7:0] compare_64_3_on;
        reg [7:0] compare_64_3_off;
        
        reg [7:0] compare_65_0_on;
        reg [7:0] compare_65_0_off;
        reg [7:0] compare_65_1_on;
        reg [7:0] compare_65_1_off;
        reg [7:0] compare_65_2_on;
        reg [7:0] compare_65_2_off;
        reg [7:0] compare_65_3_on;
        reg [7:0] compare_65_3_off;
        
        reg [7:0] compare_66_0_on;
        reg [7:0] compare_66_0_off;
        reg [7:0] compare_66_1_on;
        reg [7:0] compare_66_1_off;
        reg [7:0] compare_66_2_on;
        reg [7:0] compare_66_2_off;
        reg [7:0] compare_66_3_on;
        reg [7:0] compare_66_3_off;
        
        reg [7:0] compare_67_0_on;
        reg [7:0] compare_67_0_off;
        reg [7:0] compare_67_1_on;
        reg [7:0] compare_67_1_off;
        reg [7:0] compare_67_2_on;
        reg [7:0] compare_67_2_off;
        reg [7:0] compare_67_3_on;
        reg [7:0] compare_67_3_off;
        
        reg [7:0] compare_68_0_on;
        reg [7:0] compare_68_0_off;
        reg [7:0] compare_68_1_on;
        reg [7:0] compare_68_1_off;
        reg [7:0] compare_68_2_on;
        reg [7:0] compare_68_2_off;
        reg [7:0] compare_68_3_on;
        reg [7:0] compare_68_3_off;
        
        reg [7:0] compare_69_0_on;
        reg [7:0] compare_69_0_off;
        reg [7:0] compare_69_1_on;
        reg [7:0] compare_69_1_off;
        reg [7:0] compare_69_2_on;
        reg [7:0] compare_69_2_off;
        reg [7:0] compare_69_3_on;
        reg [7:0] compare_69_3_off;
        
        reg [7:0] compare_70_0_on;
        reg [7:0] compare_70_0_off;
        reg [7:0] compare_70_1_on;
        reg [7:0] compare_70_1_off;
        reg [7:0] compare_70_2_on;
        reg [7:0] compare_70_2_off;
        reg [7:0] compare_70_3_on;
        reg [7:0] compare_70_3_off;
        
        reg [7:0] compare_71_0_on;
        reg [7:0] compare_71_0_off;
        reg [7:0] compare_71_1_on;
        reg [7:0] compare_71_1_off;
        reg [7:0] compare_71_2_on;
        reg [7:0] compare_71_2_off;
        reg [7:0] compare_71_3_on;
        reg [7:0] compare_71_3_off;
        
        reg [7:0] compare_72_0_on;
        reg [7:0] compare_72_0_off;
        reg [7:0] compare_72_1_on;
        reg [7:0] compare_72_1_off;
        reg [7:0] compare_72_2_on;
        reg [7:0] compare_72_2_off;
        reg [7:0] compare_72_3_on;
        reg [7:0] compare_72_3_off;
        
        reg [7:0] compare_73_0_on;
        reg [7:0] compare_73_0_off;
        reg [7:0] compare_73_1_on;
        reg [7:0] compare_73_1_off;
        reg [7:0] compare_73_2_on;
        reg [7:0] compare_73_2_off;
        reg [7:0] compare_73_3_on;
        reg [7:0] compare_73_3_off;
        
        reg [7:0] compare_74_0_on;
        reg [7:0] compare_74_0_off;
        reg [7:0] compare_74_1_on;
        reg [7:0] compare_74_1_off;
        reg [7:0] compare_74_2_on;
        reg [7:0] compare_74_2_off;
        reg [7:0] compare_74_3_on;
        reg [7:0] compare_74_3_off;
        
        reg [7:0] compare_75_0_on;
        reg [7:0] compare_75_0_off;
        reg [7:0] compare_75_1_on;
        reg [7:0] compare_75_1_off;
        reg [7:0] compare_75_2_on;
        reg [7:0] compare_75_2_off;
        reg [7:0] compare_75_3_on;
        reg [7:0] compare_75_3_off;
        
        reg [7:0] compare_76_0_on;
        reg [7:0] compare_76_0_off;
        reg [7:0] compare_76_1_on;
        reg [7:0] compare_76_1_off;
        reg [7:0] compare_76_2_on;
        reg [7:0] compare_76_2_off;
        reg [7:0] compare_76_3_on;
        reg [7:0] compare_76_3_off;
        
        reg [7:0] compare_77_0_on;
        reg [7:0] compare_77_0_off;
        reg [7:0] compare_77_1_on;
        reg [7:0] compare_77_1_off;
        reg [7:0] compare_77_2_on;
        reg [7:0] compare_77_2_off;
        reg [7:0] compare_77_3_on;
        reg [7:0] compare_77_3_off;
        
        reg [7:0] compare_78_0_on;
        reg [7:0] compare_78_0_off;
        reg [7:0] compare_78_1_on;
        reg [7:0] compare_78_1_off;
        reg [7:0] compare_78_2_on;
        reg [7:0] compare_78_2_off;
        reg [7:0] compare_78_3_on;
        reg [7:0] compare_78_3_off;
        
        reg [7:0] compare_79_0_on;
        reg [7:0] compare_79_0_off;
        reg [7:0] compare_79_1_on;
        reg [7:0] compare_79_1_off;
        reg [7:0] compare_79_2_on;
        reg [7:0] compare_79_2_off;
        reg [7:0] compare_79_3_on;
        reg [7:0] compare_79_3_off;
        
        reg [7:0] compare_80_0_on;
        reg [7:0] compare_80_0_off;
        reg [7:0] compare_80_1_on;
        reg [7:0] compare_80_1_off;
        reg [7:0] compare_80_2_on;
        reg [7:0] compare_80_2_off;
        reg [7:0] compare_80_3_on;
        reg [7:0] compare_80_3_off;
        
        reg [7:0] compare_81_0_on;
        reg [7:0] compare_81_0_off;
        reg [7:0] compare_81_1_on;
        reg [7:0] compare_81_1_off;
        reg [7:0] compare_81_2_on;
        reg [7:0] compare_81_2_off;
        reg [7:0] compare_81_3_on;
        reg [7:0] compare_81_3_off;
        
        reg [7:0] compare_82_0_on;
        reg [7:0] compare_82_0_off;
        reg [7:0] compare_82_1_on;
        reg [7:0] compare_82_1_off;
        reg [7:0] compare_82_2_on;
        reg [7:0] compare_82_2_off;
        reg [7:0] compare_82_3_on;
        reg [7:0] compare_82_3_off;
        
        reg [7:0] compare_83_0_on;
        reg [7:0] compare_83_0_off;
        reg [7:0] compare_83_1_on;
        reg [7:0] compare_83_1_off;
        reg [7:0] compare_83_2_on;
        reg [7:0] compare_83_2_off;
        reg [7:0] compare_83_3_on;
        reg [7:0] compare_83_3_off;
        
        reg [7:0] compare_84_0_on;
        reg [7:0] compare_84_0_off;
        reg [7:0] compare_84_1_on;
        reg [7:0] compare_84_1_off;
        reg [7:0] compare_84_2_on;
        reg [7:0] compare_84_2_off;
        reg [7:0] compare_84_3_on;
        reg [7:0] compare_84_3_off;
        
        reg [7:0] compare_85_0_on;
        reg [7:0] compare_85_0_off;
        reg [7:0] compare_85_1_on;
        reg [7:0] compare_85_1_off;
        reg [7:0] compare_85_2_on;
        reg [7:0] compare_85_2_off;
        reg [7:0] compare_85_3_on;
        reg [7:0] compare_85_3_off;
        
        reg [7:0] compare_86_0_on;
        reg [7:0] compare_86_0_off;
        reg [7:0] compare_86_1_on;
        reg [7:0] compare_86_1_off;
        reg [7:0] compare_86_2_on;
        reg [7:0] compare_86_2_off;
        reg [7:0] compare_86_3_on;
        reg [7:0] compare_86_3_off;
        
        reg [7:0] compare_87_0_on;
        reg [7:0] compare_87_0_off;
        reg [7:0] compare_87_1_on;
        reg [7:0] compare_87_1_off;
        reg [7:0] compare_87_2_on;
        reg [7:0] compare_87_2_off;
        reg [7:0] compare_87_3_on;
        reg [7:0] compare_87_3_off;
        
        reg [7:0] compare_88_0_on;
        reg [7:0] compare_88_0_off;
        reg [7:0] compare_88_1_on;
        reg [7:0] compare_88_1_off;
        reg [7:0] compare_88_2_on;
        reg [7:0] compare_88_2_off;
        reg [7:0] compare_88_3_on;
        reg [7:0] compare_88_3_off;
        
        reg [7:0] compare_89_0_on;
        reg [7:0] compare_89_0_off;
        reg [7:0] compare_89_1_on;
        reg [7:0] compare_89_1_off;
        reg [7:0] compare_89_2_on;
        reg [7:0] compare_89_2_off;
        reg [7:0] compare_89_3_on;
        reg [7:0] compare_89_3_off;

	always @(posedge pwmclk)
        if (counter == (compare_0_0_on * 1)) OUTPUT_WAVEFORM[0] <= 1;
        else if (counter == (compare_0_0_off * 1)) OUTPUT_WAVEFORM[0] <= 0;

    always @(posedge pwmclk)
        if (counter == (compare_0_1_on * 1)) OUTPUT_WAVEFORM[1] <= 1;
        else if (counter == (compare_0_1_off * 1)) OUTPUT_WAVEFORM[1] <= 0;

    always @(posedge pwmclk)
        if (counter == (compare_0_2_on * 1)) OUTPUT_WAVEFORM[2] <= 1;
        else if (counter == compare_0_2_off * 1) OUTPUT_WAVEFORM[2] <= 0;

    always @(posedge pwmclk)
        if (counter == (compare_0_3_on * 1)) OUTPUT_WAVEFORM[3] <= 1;
        else if (counter == compare_0_3_off * 1) OUTPUT_WAVEFORM[3] <= 0;
    
    always @(posedge pwmclk)
        if (counter == (compare_1_0_on * 1)) OUTPUT_WAVEFORM[4] <= 1;
        else if (counter == (compare_1_0_off * 1)) OUTPUT_WAVEFORM[4] <= 0;

    always @(posedge pwmclk)
        if (counter == (compare_1_1_on * 1)) OUTPUT_WAVEFORM[5] <= 1;
        else if (counter == (compare_1_1_off * 1)) OUTPUT_WAVEFORM[5] <= 0;

    always @(posedge pwmclk)
        if (counter == (compare_1_2_on * 1)) OUTPUT_WAVEFORM[6] <= 1;
        else if (counter == compare_1_2_off * 1) OUTPUT_WAVEFORM[6] <= 0;

    always @(posedge pwmclk)
        if (counter == (compare_1_3_on * 1)) OUTPUT_WAVEFORM[7] <= 1;
        else if (counter == compare_1_3_off * 1) OUTPUT_WAVEFORM[7] <= 0;
    
    always @(posedge pwmclk)
        if (counter == (compare_2_0_on * 1)) OUTPUT_WAVEFORM[8] <= 1;
        else if (counter == (compare_2_0_off * 1)) OUTPUT_WAVEFORM[8] <= 0;

    always @(posedge pwmclk)
        if (counter == (compare_2_1_on * 1)) OUTPUT_WAVEFORM[9] <= 1;
        else if (counter == (compare_2_1_off * 1)) OUTPUT_WAVEFORM[9] <= 0;

    always @(posedge pwmclk)
        if (counter == (compare_2_2_on * 1)) OUTPUT_WAVEFORM[10] <= 1;
        else if (counter == compare_2_2_off * 1) OUTPUT_WAVEFORM[10] <= 0;

    always @(posedge pwmclk)
        if (counter == (compare_2_3_on * 1)) OUTPUT_WAVEFORM[11] <= 1;
        else if (counter == compare_2_3_off * 1) OUTPUT_WAVEFORM[11] <= 0;
    
    always @(posedge pwmclk)
        if (counter == (compare_3_0_on * 1)) OUTPUT_WAVEFORM[12] <= 1;
        else if (counter == (compare_3_0_off * 1)) OUTPUT_WAVEFORM[12] <= 0;

    always @(posedge pwmclk)
        if (counter == (compare_3_1_on * 1)) OUTPUT_WAVEFORM[13] <= 1;
        else if (counter == (compare_3_1_off * 1)) OUTPUT_WAVEFORM[13] <= 0;

    always @(posedge pwmclk)
        if (counter == (compare_3_2_on * 1)) OUTPUT_WAVEFORM[14] <= 1;
        else if (counter == compare_3_2_off * 1) OUTPUT_WAVEFORM[14] <= 0;

    always @(posedge pwmclk)
        if (counter == (compare_3_3_on * 1)) OUTPUT_WAVEFORM[15] <= 1;
        else if (counter == compare_3_3_off * 1) OUTPUT_WAVEFORM[15] <= 0;
    
    always @(posedge pwmclk)
        if (counter == (compare_4_0_on * 1)) OUTPUT_WAVEFORM[16] <= 1;
        else if (counter == (compare_4_0_off * 1)) OUTPUT_WAVEFORM[16] <= 0;

    always @(posedge pwmclk)
        if (counter == (compare_4_1_on * 1)) OUTPUT_WAVEFORM[17] <= 1;
        else if (counter == (compare_4_1_off * 1)) OUTPUT_WAVEFORM[17] <= 0;

    always @(posedge pwmclk)
        if (counter == (compare_4_2_on * 1)) OUTPUT_WAVEFORM[18] <= 1;
        else if (counter == compare_4_2_off * 1) OUTPUT_WAVEFORM[18] <= 0;

    always @(posedge pwmclk)
        if (counter == (compare_4_3_on * 1)) OUTPUT_WAVEFORM[19] <= 1;
        else if (counter == compare_4_3_off * 1) OUTPUT_WAVEFORM[19] <= 0;
    
    always @(posedge pwmclk)
        if (counter == (compare_5_0_on * 1)) OUTPUT_WAVEFORM[20] <= 1;
        else if (counter == (compare_5_0_off * 1)) OUTPUT_WAVEFORM[20] <= 0;

    always @(posedge pwmclk)
        if (counter == (compare_5_1_on * 1)) OUTPUT_WAVEFORM[21] <= 1;
        else if (counter == (compare_5_1_off * 1)) OUTPUT_WAVEFORM[21] <= 0;

    always @(posedge pwmclk)
        if (counter == (compare_5_2_on * 1)) OUTPUT_WAVEFORM[22] <= 1;
        else if (counter == compare_5_2_off * 1) OUTPUT_WAVEFORM[22] <= 0;

    always @(posedge pwmclk)
        if (counter == (compare_5_3_on * 1)) OUTPUT_WAVEFORM[23] <= 1;
        else if (counter == compare_5_3_off * 1) OUTPUT_WAVEFORM[23] <= 0;
    
    always @(posedge pwmclk)
        if (counter == (compare_6_0_on * 1)) OUTPUT_WAVEFORM[24] <= 1;
        else if (counter == (compare_6_0_off * 1)) OUTPUT_WAVEFORM[24] <= 0;

    always @(posedge pwmclk)
        if (counter == (compare_6_1_on * 1)) OUTPUT_WAVEFORM[25] <= 1;
        else if (counter == (compare_6_1_off * 1)) OUTPUT_WAVEFORM[25] <= 0;

    always @(posedge pwmclk)
        if (counter == (compare_6_2_on * 1)) OUTPUT_WAVEFORM[26] <= 1;
        else if (counter == compare_6_2_off * 1) OUTPUT_WAVEFORM[26] <= 0;

    always @(posedge pwmclk)
        if (counter == (compare_6_3_on * 1)) OUTPUT_WAVEFORM[27] <= 1;
        else if (counter == compare_6_3_off * 1) OUTPUT_WAVEFORM[27] <= 0;
    
    always @(posedge pwmclk)
        if (counter == (compare_7_0_on * 1)) OUTPUT_WAVEFORM[28] <= 1;
        else if (counter == (compare_7_0_off * 1)) OUTPUT_WAVEFORM[28] <= 0;

    always @(posedge pwmclk)
        if (counter == (compare_7_1_on * 1)) OUTPUT_WAVEFORM[29] <= 1;
        else if (counter == (compare_7_1_off * 1)) OUTPUT_WAVEFORM[29] <= 0;

    always @(posedge pwmclk)
        if (counter == (compare_7_2_on * 1)) OUTPUT_WAVEFORM[30] <= 1;
        else if (counter == compare_7_2_off * 1) OUTPUT_WAVEFORM[30] <= 0;

    always @(posedge pwmclk)
        if (counter == (compare_7_3_on * 1)) OUTPUT_WAVEFORM[31] <= 1;
        else if (counter == compare_7_3_off * 1) OUTPUT_WAVEFORM[31] <= 0;
    
    always @(posedge pwmclk)
        if (counter == (compare_8_0_on * 1)) OUTPUT_WAVEFORM[32] <= 1;
        else if (counter == (compare_8_0_off * 1)) OUTPUT_WAVEFORM[32] <= 0;

    always @(posedge pwmclk)
        if (counter == (compare_8_1_on * 1)) OUTPUT_WAVEFORM[33] <= 1;
        else if (counter == (compare_8_1_off * 1)) OUTPUT_WAVEFORM[33] <= 0;

    always @(posedge pwmclk)
        if (counter == (compare_8_2_on * 1)) OUTPUT_WAVEFORM[34] <= 1;
        else if (counter == compare_8_2_off * 1) OUTPUT_WAVEFORM[34] <= 0;

    always @(posedge pwmclk)
        if (counter == (compare_8_3_on * 1)) OUTPUT_WAVEFORM[35] <= 1;
        else if (counter == compare_8_3_off * 1) OUTPUT_WAVEFORM[35] <= 0;
    
    always @(posedge pwmclk)
        if (counter == (compare_9_0_on * 1)) OUTPUT_WAVEFORM[36] <= 1;
        else if (counter == (compare_9_0_off * 1)) OUTPUT_WAVEFORM[36] <= 0;

    always @(posedge pwmclk)
        if (counter == (compare_9_1_on * 1)) OUTPUT_WAVEFORM[37] <= 1;
        else if (counter == (compare_9_1_off * 1)) OUTPUT_WAVEFORM[37] <= 0;

    always @(posedge pwmclk)
        if (counter == (compare_9_2_on * 1)) OUTPUT_WAVEFORM[38] <= 1;
        else if (counter == compare_9_2_off * 1) OUTPUT_WAVEFORM[38] <= 0;

    always @(posedge pwmclk)
        if (counter == (compare_9_3_on * 1)) OUTPUT_WAVEFORM[39] <= 1;
        else if (counter == compare_9_3_off * 1) OUTPUT_WAVEFORM[39] <= 0;
    
    always @(posedge pwmclk)
        if (counter == (compare_10_0_on * 1)) OUTPUT_WAVEFORM[40] <= 1;
        else if (counter == (compare_10_0_off * 1)) OUTPUT_WAVEFORM[40] <= 0;

    always @(posedge pwmclk)
        if (counter == (compare_10_1_on * 1)) OUTPUT_WAVEFORM[41] <= 1;
        else if (counter == (compare_10_1_off * 1)) OUTPUT_WAVEFORM[41] <= 0;

    always @(posedge pwmclk)
        if (counter == (compare_10_2_on * 1)) OUTPUT_WAVEFORM[42] <= 1;
        else if (counter == compare_10_2_off * 1) OUTPUT_WAVEFORM[42] <= 0;

    always @(posedge pwmclk)
        if (counter == (compare_10_3_on * 1)) OUTPUT_WAVEFORM[43] <= 1;
        else if (counter == compare_10_3_off * 1) OUTPUT_WAVEFORM[43] <= 0;
    
    always @(posedge pwmclk)
        if (counter == (compare_11_0_on * 1)) OUTPUT_WAVEFORM[44] <= 1;
        else if (counter == (compare_11_0_off * 1)) OUTPUT_WAVEFORM[44] <= 0;

    always @(posedge pwmclk)
        if (counter == (compare_11_1_on * 1)) OUTPUT_WAVEFORM[45] <= 1;
        else if (counter == (compare_11_1_off * 1)) OUTPUT_WAVEFORM[45] <= 0;

    always @(posedge pwmclk)
        if (counter == (compare_11_2_on * 1)) OUTPUT_WAVEFORM[46] <= 1;
        else if (counter == compare_11_2_off * 1) OUTPUT_WAVEFORM[46] <= 0;

    always @(posedge pwmclk)
        if (counter == (compare_11_3_on * 1)) OUTPUT_WAVEFORM[47] <= 1;
        else if (counter == compare_11_3_off * 1) OUTPUT_WAVEFORM[47] <= 0;
    
    always @(posedge pwmclk)
        if (counter == (compare_12_0_on * 1)) OUTPUT_WAVEFORM[48] <= 1;
        else if (counter == (compare_12_0_off * 1)) OUTPUT_WAVEFORM[48] <= 0;

    always @(posedge pwmclk)
        if (counter == (compare_12_1_on * 1)) OUTPUT_WAVEFORM[49] <= 1;
        else if (counter == (compare_12_1_off * 1)) OUTPUT_WAVEFORM[49] <= 0;

    always @(posedge pwmclk)
        if (counter == (compare_12_2_on * 1)) OUTPUT_WAVEFORM[50] <= 1;
        else if (counter == compare_12_2_off * 1) OUTPUT_WAVEFORM[50] <= 0;

    always @(posedge pwmclk)
        if (counter == (compare_12_3_on * 1)) OUTPUT_WAVEFORM[51] <= 1;
        else if (counter == compare_12_3_off * 1) OUTPUT_WAVEFORM[51] <= 0;
    
    always @(posedge pwmclk)
        if (counter == (compare_13_0_on * 1)) OUTPUT_WAVEFORM[52] <= 1;
        else if (counter == (compare_13_0_off * 1)) OUTPUT_WAVEFORM[52] <= 0;

    always @(posedge pwmclk)
        if (counter == (compare_13_1_on * 1)) OUTPUT_WAVEFORM[53] <= 1;
        else if (counter == (compare_13_1_off * 1)) OUTPUT_WAVEFORM[53] <= 0;

    always @(posedge pwmclk)
        if (counter == (compare_13_2_on * 1)) OUTPUT_WAVEFORM[54] <= 1;
        else if (counter == compare_13_2_off * 1) OUTPUT_WAVEFORM[54] <= 0;

    always @(posedge pwmclk)
        if (counter == (compare_13_3_on * 1)) OUTPUT_WAVEFORM[55] <= 1;
        else if (counter == compare_13_3_off * 1) OUTPUT_WAVEFORM[55] <= 0;
    
    always @(posedge pwmclk)
        if (counter == (compare_14_0_on * 1)) OUTPUT_WAVEFORM[56] <= 1;
        else if (counter == (compare_14_0_off * 1)) OUTPUT_WAVEFORM[56] <= 0;

    always @(posedge pwmclk)
        if (counter == (compare_14_1_on * 1)) OUTPUT_WAVEFORM[57] <= 1;
        else if (counter == (compare_14_1_off * 1)) OUTPUT_WAVEFORM[57] <= 0;

    always @(posedge pwmclk)
        if (counter == (compare_14_2_on * 1)) OUTPUT_WAVEFORM[58] <= 1;
        else if (counter == compare_14_2_off * 1) OUTPUT_WAVEFORM[58] <= 0;

    always @(posedge pwmclk)
        if (counter == (compare_14_3_on * 1)) OUTPUT_WAVEFORM[59] <= 1;
        else if (counter == compare_14_3_off * 1) OUTPUT_WAVEFORM[59] <= 0;
    
    always @(posedge pwmclk)
        if (counter == (compare_15_0_on * 1)) OUTPUT_WAVEFORM[60] <= 1;
        else if (counter == (compare_15_0_off * 1)) OUTPUT_WAVEFORM[60] <= 0;

    always @(posedge pwmclk)
        if (counter == (compare_15_1_on * 1)) OUTPUT_WAVEFORM[61] <= 1;
        else if (counter == (compare_15_1_off * 1)) OUTPUT_WAVEFORM[61] <= 0;

    always @(posedge pwmclk)
        if (counter == (compare_15_2_on * 1)) OUTPUT_WAVEFORM[62] <= 1;
        else if (counter == compare_15_2_off * 1) OUTPUT_WAVEFORM[62] <= 0;

    always @(posedge pwmclk)
        if (counter == (compare_15_3_on * 1)) OUTPUT_WAVEFORM[63] <= 1;
        else if (counter == compare_15_3_off * 1) OUTPUT_WAVEFORM[63] <= 0;
    
    always @(posedge pwmclk)
        if (counter == (compare_16_0_on * 1)) OUTPUT_WAVEFORM[64] <= 1;
        else if (counter == (compare_16_0_off * 1)) OUTPUT_WAVEFORM[64] <= 0;

    always @(posedge pwmclk)
        if (counter == (compare_16_1_on * 1)) OUTPUT_WAVEFORM[65] <= 1;
        else if (counter == (compare_16_1_off * 1)) OUTPUT_WAVEFORM[65] <= 0;

    always @(posedge pwmclk)
        if (counter == (compare_16_2_on * 1)) OUTPUT_WAVEFORM[66] <= 1;
        else if (counter == compare_16_2_off * 1) OUTPUT_WAVEFORM[66] <= 0;

    always @(posedge pwmclk)
        if (counter == (compare_16_3_on * 1)) OUTPUT_WAVEFORM[67] <= 1;
        else if (counter == compare_16_3_off * 1) OUTPUT_WAVEFORM[67] <= 0;
    
    always @(posedge pwmclk)
        if (counter == (compare_17_0_on * 1)) OUTPUT_WAVEFORM[68] <= 1;
        else if (counter == (compare_17_0_off * 1)) OUTPUT_WAVEFORM[68] <= 0;

    always @(posedge pwmclk)
        if (counter == (compare_17_1_on * 1)) OUTPUT_WAVEFORM[69] <= 1;
        else if (counter == (compare_17_1_off * 1)) OUTPUT_WAVEFORM[69] <= 0;

    always @(posedge pwmclk)
        if (counter == (compare_17_2_on * 1)) OUTPUT_WAVEFORM[70] <= 1;
        else if (counter == compare_17_2_off * 1) OUTPUT_WAVEFORM[70] <= 0;

    always @(posedge pwmclk)
        if (counter == (compare_17_3_on * 1)) OUTPUT_WAVEFORM[71] <= 1;
        else if (counter == compare_17_3_off * 1) OUTPUT_WAVEFORM[71] <= 0;
    
    always @(posedge pwmclk)
        if (counter == (compare_18_0_on * 1)) OUTPUT_WAVEFORM[72] <= 1;
        else if (counter == (compare_18_0_off * 1)) OUTPUT_WAVEFORM[72] <= 0;

    always @(posedge pwmclk)
        if (counter == (compare_18_1_on * 1)) OUTPUT_WAVEFORM[73] <= 1;
        else if (counter == (compare_18_1_off * 1)) OUTPUT_WAVEFORM[73] <= 0;

    always @(posedge pwmclk)
        if (counter == (compare_18_2_on * 1)) OUTPUT_WAVEFORM[74] <= 1;
        else if (counter == compare_18_2_off * 1) OUTPUT_WAVEFORM[74] <= 0;

    always @(posedge pwmclk)
        if (counter == (compare_18_3_on * 1)) OUTPUT_WAVEFORM[75] <= 1;
        else if (counter == compare_18_3_off * 1) OUTPUT_WAVEFORM[75] <= 0;
    
    always @(posedge pwmclk)
        if (counter == (compare_19_0_on * 1)) OUTPUT_WAVEFORM[76] <= 1;
        else if (counter == (compare_19_0_off * 1)) OUTPUT_WAVEFORM[76] <= 0;

    always @(posedge pwmclk)
        if (counter == (compare_19_1_on * 1)) OUTPUT_WAVEFORM[77] <= 1;
        else if (counter == (compare_19_1_off * 1)) OUTPUT_WAVEFORM[77] <= 0;

    always @(posedge pwmclk)
        if (counter == (compare_19_2_on * 1)) OUTPUT_WAVEFORM[78] <= 1;
        else if (counter == compare_19_2_off * 1) OUTPUT_WAVEFORM[78] <= 0;

    always @(posedge pwmclk)
        if (counter == (compare_19_3_on * 1)) OUTPUT_WAVEFORM[79] <= 1;
        else if (counter == compare_19_3_off * 1) OUTPUT_WAVEFORM[79] <= 0;
    
    always @(posedge pwmclk)
        if (counter == (compare_20_0_on * 1)) OUTPUT_WAVEFORM[80] <= 1;
        else if (counter == (compare_20_0_off * 1)) OUTPUT_WAVEFORM[80] <= 0;

    always @(posedge pwmclk)
        if (counter == (compare_20_1_on * 1)) OUTPUT_WAVEFORM[81] <= 1;
        else if (counter == (compare_20_1_off * 1)) OUTPUT_WAVEFORM[81] <= 0;

    always @(posedge pwmclk)
        if (counter == (compare_20_2_on * 1)) OUTPUT_WAVEFORM[82] <= 1;
        else if (counter == compare_20_2_off * 1) OUTPUT_WAVEFORM[82] <= 0;

    always @(posedge pwmclk)
        if (counter == (compare_20_3_on * 1)) OUTPUT_WAVEFORM[83] <= 1;
        else if (counter == compare_20_3_off * 1) OUTPUT_WAVEFORM[83] <= 0;
    
    always @(posedge pwmclk)
        if (counter == (compare_21_0_on * 1)) OUTPUT_WAVEFORM[84] <= 1;
        else if (counter == (compare_21_0_off * 1)) OUTPUT_WAVEFORM[84] <= 0;

    always @(posedge pwmclk)
        if (counter == (compare_21_1_on * 1)) OUTPUT_WAVEFORM[85] <= 1;
        else if (counter == (compare_21_1_off * 1)) OUTPUT_WAVEFORM[85] <= 0;

    always @(posedge pwmclk)
        if (counter == (compare_21_2_on * 1)) OUTPUT_WAVEFORM[86] <= 1;
        else if (counter == compare_21_2_off * 1) OUTPUT_WAVEFORM[86] <= 0;

    always @(posedge pwmclk)
        if (counter == (compare_21_3_on * 1)) OUTPUT_WAVEFORM[87] <= 1;
        else if (counter == compare_21_3_off * 1) OUTPUT_WAVEFORM[87] <= 0;
    
    always @(posedge pwmclk)
        if (counter == (compare_22_0_on * 1)) OUTPUT_WAVEFORM[88] <= 1;
        else if (counter == (compare_22_0_off * 1)) OUTPUT_WAVEFORM[88] <= 0;

    always @(posedge pwmclk)
        if (counter == (compare_22_1_on * 1)) OUTPUT_WAVEFORM[89] <= 1;
        else if (counter == (compare_22_1_off * 1)) OUTPUT_WAVEFORM[89] <= 0;

    always @(posedge pwmclk)
        if (counter == (compare_22_2_on * 1)) OUTPUT_WAVEFORM[90] <= 1;
        else if (counter == compare_22_2_off * 1) OUTPUT_WAVEFORM[90] <= 0;

    always @(posedge pwmclk)
        if (counter == (compare_22_3_on * 1)) OUTPUT_WAVEFORM[91] <= 1;
        else if (counter == compare_22_3_off * 1) OUTPUT_WAVEFORM[91] <= 0;
    
    always @(posedge pwmclk)
        if (counter == (compare_23_0_on * 1)) OUTPUT_WAVEFORM[92] <= 1;
        else if (counter == (compare_23_0_off * 1)) OUTPUT_WAVEFORM[92] <= 0;

    always @(posedge pwmclk)
        if (counter == (compare_23_1_on * 1)) OUTPUT_WAVEFORM[93] <= 1;
        else if (counter == (compare_23_1_off * 1)) OUTPUT_WAVEFORM[93] <= 0;

    always @(posedge pwmclk)
        if (counter == (compare_23_2_on * 1)) OUTPUT_WAVEFORM[94] <= 1;
        else if (counter == compare_23_2_off * 1) OUTPUT_WAVEFORM[94] <= 0;

    always @(posedge pwmclk)
        if (counter == (compare_23_3_on * 1)) OUTPUT_WAVEFORM[95] <= 1;
        else if (counter == compare_23_3_off * 1) OUTPUT_WAVEFORM[95] <= 0;
    
    always @(posedge pwmclk)
        if (counter == (compare_24_0_on * 1)) OUTPUT_WAVEFORM[96] <= 1;
        else if (counter == (compare_24_0_off * 1)) OUTPUT_WAVEFORM[96] <= 0;

    always @(posedge pwmclk)
        if (counter == (compare_24_1_on * 1)) OUTPUT_WAVEFORM[97] <= 1;
        else if (counter == (compare_24_1_off * 1)) OUTPUT_WAVEFORM[97] <= 0;

    always @(posedge pwmclk)
        if (counter == (compare_24_2_on * 1)) OUTPUT_WAVEFORM[98] <= 1;
        else if (counter == compare_24_2_off * 1) OUTPUT_WAVEFORM[98] <= 0;

    always @(posedge pwmclk)
        if (counter == (compare_24_3_on * 1)) OUTPUT_WAVEFORM[99] <= 1;
        else if (counter == compare_24_3_off * 1) OUTPUT_WAVEFORM[99] <= 0;
    
    always @(posedge pwmclk)
        if (counter == (compare_25_0_on * 1)) OUTPUT_WAVEFORM[100] <= 1;
        else if (counter == (compare_25_0_off * 1)) OUTPUT_WAVEFORM[100] <= 0;

    always @(posedge pwmclk)
        if (counter == (compare_25_1_on * 1)) OUTPUT_WAVEFORM[101] <= 1;
        else if (counter == (compare_25_1_off * 1)) OUTPUT_WAVEFORM[101] <= 0;

    always @(posedge pwmclk)
        if (counter == (compare_25_2_on * 1)) OUTPUT_WAVEFORM[102] <= 1;
        else if (counter == compare_25_2_off * 1) OUTPUT_WAVEFORM[102] <= 0;

    always @(posedge pwmclk)
        if (counter == (compare_25_3_on * 1)) OUTPUT_WAVEFORM[103] <= 1;
        else if (counter == compare_25_3_off * 1) OUTPUT_WAVEFORM[103] <= 0;
    
    always @(posedge pwmclk)
        if (counter == (compare_26_0_on * 1)) OUTPUT_WAVEFORM[104] <= 1;
        else if (counter == (compare_26_0_off * 1)) OUTPUT_WAVEFORM[104] <= 0;

    always @(posedge pwmclk)
        if (counter == (compare_26_1_on * 1)) OUTPUT_WAVEFORM[105] <= 1;
        else if (counter == (compare_26_1_off * 1)) OUTPUT_WAVEFORM[105] <= 0;

    always @(posedge pwmclk)
        if (counter == (compare_26_2_on * 1)) OUTPUT_WAVEFORM[106] <= 1;
        else if (counter == compare_26_2_off * 1) OUTPUT_WAVEFORM[106] <= 0;

    always @(posedge pwmclk)
        if (counter == (compare_26_3_on * 1)) OUTPUT_WAVEFORM[107] <= 1;
        else if (counter == compare_26_3_off * 1) OUTPUT_WAVEFORM[107] <= 0;
    
    always @(posedge pwmclk)
        if (counter == (compare_27_0_on * 1)) OUTPUT_WAVEFORM[108] <= 1;
        else if (counter == (compare_27_0_off * 1)) OUTPUT_WAVEFORM[108] <= 0;

    always @(posedge pwmclk)
        if (counter == (compare_27_1_on * 1)) OUTPUT_WAVEFORM[109] <= 1;
        else if (counter == (compare_27_1_off * 1)) OUTPUT_WAVEFORM[109] <= 0;

    always @(posedge pwmclk)
        if (counter == (compare_27_2_on * 1)) OUTPUT_WAVEFORM[110] <= 1;
        else if (counter == compare_27_2_off * 1) OUTPUT_WAVEFORM[110] <= 0;

    always @(posedge pwmclk)
        if (counter == (compare_27_3_on * 1)) OUTPUT_WAVEFORM[111] <= 1;
        else if (counter == compare_27_3_off * 1) OUTPUT_WAVEFORM[111] <= 0;
    
    always @(posedge pwmclk)
        if (counter == (compare_28_0_on * 1)) OUTPUT_WAVEFORM[112] <= 1;
        else if (counter == (compare_28_0_off * 1)) OUTPUT_WAVEFORM[112] <= 0;

    always @(posedge pwmclk)
        if (counter == (compare_28_1_on * 1)) OUTPUT_WAVEFORM[113] <= 1;
        else if (counter == (compare_28_1_off * 1)) OUTPUT_WAVEFORM[113] <= 0;

    always @(posedge pwmclk)
        if (counter == (compare_28_2_on * 1)) OUTPUT_WAVEFORM[114] <= 1;
        else if (counter == compare_28_2_off * 1) OUTPUT_WAVEFORM[114] <= 0;

    always @(posedge pwmclk)
        if (counter == (compare_28_3_on * 1)) OUTPUT_WAVEFORM[115] <= 1;
        else if (counter == compare_28_3_off * 1) OUTPUT_WAVEFORM[115] <= 0;
    
    always @(posedge pwmclk)
        if (counter == (compare_29_0_on * 1)) OUTPUT_WAVEFORM[116] <= 1;
        else if (counter == (compare_29_0_off * 1)) OUTPUT_WAVEFORM[116] <= 0;

    always @(posedge pwmclk)
        if (counter == (compare_29_1_on * 1)) OUTPUT_WAVEFORM[117] <= 1;
        else if (counter == (compare_29_1_off * 1)) OUTPUT_WAVEFORM[117] <= 0;

    always @(posedge pwmclk)
        if (counter == (compare_29_2_on * 1)) OUTPUT_WAVEFORM[118] <= 1;
        else if (counter == compare_29_2_off * 1) OUTPUT_WAVEFORM[118] <= 0;

    always @(posedge pwmclk)
        if (counter == (compare_29_3_on * 1)) OUTPUT_WAVEFORM[119] <= 1;
        else if (counter == compare_29_3_off * 1) OUTPUT_WAVEFORM[119] <= 0;
    
    always @(posedge pwmclk)
        if (counter == (compare_30_0_on * 1)) OUTPUT_WAVEFORM[120] <= 1;
        else if (counter == (compare_30_0_off * 1)) OUTPUT_WAVEFORM[120] <= 0;

    always @(posedge pwmclk)
        if (counter == (compare_30_1_on * 1)) OUTPUT_WAVEFORM[121] <= 1;
        else if (counter == (compare_30_1_off * 1)) OUTPUT_WAVEFORM[121] <= 0;

    always @(posedge pwmclk)
        if (counter == (compare_30_2_on * 1)) OUTPUT_WAVEFORM[122] <= 1;
        else if (counter == compare_30_2_off * 1) OUTPUT_WAVEFORM[122] <= 0;

    always @(posedge pwmclk)
        if (counter == (compare_30_3_on * 1)) OUTPUT_WAVEFORM[123] <= 1;
        else if (counter == compare_30_3_off * 1) OUTPUT_WAVEFORM[123] <= 0;
    
    always @(posedge pwmclk)
        if (counter == (compare_31_0_on * 1)) OUTPUT_WAVEFORM[124] <= 1;
        else if (counter == (compare_31_0_off * 1)) OUTPUT_WAVEFORM[124] <= 0;

    always @(posedge pwmclk)
        if (counter == (compare_31_1_on * 1)) OUTPUT_WAVEFORM[125] <= 1;
        else if (counter == (compare_31_1_off * 1)) OUTPUT_WAVEFORM[125] <= 0;

    always @(posedge pwmclk)
        if (counter == (compare_31_2_on * 1)) OUTPUT_WAVEFORM[126] <= 1;
        else if (counter == compare_31_2_off * 1) OUTPUT_WAVEFORM[126] <= 0;

    always @(posedge pwmclk)
        if (counter == (compare_31_3_on * 1)) OUTPUT_WAVEFORM[127] <= 1;
        else if (counter == compare_31_3_off * 1) OUTPUT_WAVEFORM[127] <= 0;
    
    always @(posedge pwmclk)
        if (counter == (compare_32_0_on * 1)) OUTPUT_WAVEFORM[128] <= 1;
        else if (counter == (compare_32_0_off * 1)) OUTPUT_WAVEFORM[128] <= 0;

    always @(posedge pwmclk)
        if (counter == (compare_32_1_on * 1)) OUTPUT_WAVEFORM[129] <= 1;
        else if (counter == (compare_32_1_off * 1)) OUTPUT_WAVEFORM[129] <= 0;

    always @(posedge pwmclk)
        if (counter == (compare_32_2_on * 1)) OUTPUT_WAVEFORM[130] <= 1;
        else if (counter == compare_32_2_off * 1) OUTPUT_WAVEFORM[130] <= 0;

    always @(posedge pwmclk)
        if (counter == (compare_32_3_on * 1)) OUTPUT_WAVEFORM[131] <= 1;
        else if (counter == compare_32_3_off * 1) OUTPUT_WAVEFORM[131] <= 0;
    
    always @(posedge pwmclk)
        if (counter == (compare_33_0_on * 1)) OUTPUT_WAVEFORM[132] <= 1;
        else if (counter == (compare_33_0_off * 1)) OUTPUT_WAVEFORM[132] <= 0;

    always @(posedge pwmclk)
        if (counter == (compare_33_1_on * 1)) OUTPUT_WAVEFORM[133] <= 1;
        else if (counter == (compare_33_1_off * 1)) OUTPUT_WAVEFORM[133] <= 0;

    always @(posedge pwmclk)
        if (counter == (compare_33_2_on * 1)) OUTPUT_WAVEFORM[134] <= 1;
        else if (counter == compare_33_2_off * 1) OUTPUT_WAVEFORM[134] <= 0;

    always @(posedge pwmclk)
        if (counter == (compare_33_3_on * 1)) OUTPUT_WAVEFORM[135] <= 1;
        else if (counter == compare_33_3_off * 1) OUTPUT_WAVEFORM[135] <= 0;
    
    always @(posedge pwmclk)
        if (counter == (compare_34_0_on * 1)) OUTPUT_WAVEFORM[136] <= 1;
        else if (counter == (compare_34_0_off * 1)) OUTPUT_WAVEFORM[136] <= 0;

    always @(posedge pwmclk)
        if (counter == (compare_34_1_on * 1)) OUTPUT_WAVEFORM[137] <= 1;
        else if (counter == (compare_34_1_off * 1)) OUTPUT_WAVEFORM[137] <= 0;

    always @(posedge pwmclk)
        if (counter == (compare_34_2_on * 1)) OUTPUT_WAVEFORM[138] <= 1;
        else if (counter == compare_34_2_off * 1) OUTPUT_WAVEFORM[138] <= 0;

    always @(posedge pwmclk)
        if (counter == (compare_34_3_on * 1)) OUTPUT_WAVEFORM[139] <= 1;
        else if (counter == compare_34_3_off * 1) OUTPUT_WAVEFORM[139] <= 0;
    
    always @(posedge pwmclk)
        if (counter == (compare_35_0_on * 1)) OUTPUT_WAVEFORM[140] <= 1;
        else if (counter == (compare_35_0_off * 1)) OUTPUT_WAVEFORM[140] <= 0;

    always @(posedge pwmclk)
        if (counter == (compare_35_1_on * 1)) OUTPUT_WAVEFORM[141] <= 1;
        else if (counter == (compare_35_1_off * 1)) OUTPUT_WAVEFORM[141] <= 0;

    always @(posedge pwmclk)
        if (counter == (compare_35_2_on * 1)) OUTPUT_WAVEFORM[142] <= 1;
        else if (counter == compare_35_2_off * 1) OUTPUT_WAVEFORM[142] <= 0;

    always @(posedge pwmclk)
        if (counter == (compare_35_3_on * 1)) OUTPUT_WAVEFORM[143] <= 1;
        else if (counter == compare_35_3_off * 1) OUTPUT_WAVEFORM[143] <= 0;
    
    always @(posedge pwmclk)
        if (counter == (compare_36_0_on * 1)) OUTPUT_WAVEFORM[144] <= 1;
        else if (counter == (compare_36_0_off * 1)) OUTPUT_WAVEFORM[144] <= 0;

    always @(posedge pwmclk)
        if (counter == (compare_36_1_on * 1)) OUTPUT_WAVEFORM[145] <= 1;
        else if (counter == (compare_36_1_off * 1)) OUTPUT_WAVEFORM[145] <= 0;

    always @(posedge pwmclk)
        if (counter == (compare_36_2_on * 1)) OUTPUT_WAVEFORM[146] <= 1;
        else if (counter == compare_36_2_off * 1) OUTPUT_WAVEFORM[146] <= 0;

    always @(posedge pwmclk)
        if (counter == (compare_36_3_on * 1)) OUTPUT_WAVEFORM[147] <= 1;
        else if (counter == compare_36_3_off * 1) OUTPUT_WAVEFORM[147] <= 0;
    
    always @(posedge pwmclk)
        if (counter == (compare_37_0_on * 1)) OUTPUT_WAVEFORM[148] <= 1;
        else if (counter == (compare_37_0_off * 1)) OUTPUT_WAVEFORM[148] <= 0;

    always @(posedge pwmclk)
        if (counter == (compare_37_1_on * 1)) OUTPUT_WAVEFORM[149] <= 1;
        else if (counter == (compare_37_1_off * 1)) OUTPUT_WAVEFORM[149] <= 0;

    always @(posedge pwmclk)
        if (counter == (compare_37_2_on * 1)) OUTPUT_WAVEFORM[150] <= 1;
        else if (counter == compare_37_2_off * 1) OUTPUT_WAVEFORM[150] <= 0;

    always @(posedge pwmclk)
        if (counter == (compare_37_3_on * 1)) OUTPUT_WAVEFORM[151] <= 1;
        else if (counter == compare_37_3_off * 1) OUTPUT_WAVEFORM[151] <= 0;
    
    always @(posedge pwmclk)
        if (counter == (compare_38_0_on * 1)) OUTPUT_WAVEFORM[152] <= 1;
        else if (counter == (compare_38_0_off * 1)) OUTPUT_WAVEFORM[152] <= 0;

    always @(posedge pwmclk)
        if (counter == (compare_38_1_on * 1)) OUTPUT_WAVEFORM[153] <= 1;
        else if (counter == (compare_38_1_off * 1)) OUTPUT_WAVEFORM[153] <= 0;

    always @(posedge pwmclk)
        if (counter == (compare_38_2_on * 1)) OUTPUT_WAVEFORM[154] <= 1;
        else if (counter == compare_38_2_off * 1) OUTPUT_WAVEFORM[154] <= 0;

    always @(posedge pwmclk)
        if (counter == (compare_38_3_on * 1)) OUTPUT_WAVEFORM[155] <= 1;
        else if (counter == compare_38_3_off * 1) OUTPUT_WAVEFORM[155] <= 0;
    
    always @(posedge pwmclk)
        if (counter == (compare_39_0_on * 1)) OUTPUT_WAVEFORM[156] <= 1;
        else if (counter == (compare_39_0_off * 1)) OUTPUT_WAVEFORM[156] <= 0;

    always @(posedge pwmclk)
        if (counter == (compare_39_1_on * 1)) OUTPUT_WAVEFORM[157] <= 1;
        else if (counter == (compare_39_1_off * 1)) OUTPUT_WAVEFORM[157] <= 0;

    always @(posedge pwmclk)
        if (counter == (compare_39_2_on * 1)) OUTPUT_WAVEFORM[158] <= 1;
        else if (counter == compare_39_2_off * 1) OUTPUT_WAVEFORM[158] <= 0;

    always @(posedge pwmclk)
        if (counter == (compare_39_3_on * 1)) OUTPUT_WAVEFORM[159] <= 1;
        else if (counter == compare_39_3_off * 1) OUTPUT_WAVEFORM[159] <= 0;
    
    always @(posedge pwmclk)
        if (counter == (compare_40_0_on * 1)) OUTPUT_WAVEFORM[160] <= 1;
        else if (counter == (compare_40_0_off * 1)) OUTPUT_WAVEFORM[160] <= 0;

    always @(posedge pwmclk)
        if (counter == (compare_40_1_on * 1)) OUTPUT_WAVEFORM[161] <= 1;
        else if (counter == (compare_40_1_off * 1)) OUTPUT_WAVEFORM[161] <= 0;

    always @(posedge pwmclk)
        if (counter == (compare_40_2_on * 1)) OUTPUT_WAVEFORM[162] <= 1;
        else if (counter == compare_40_2_off * 1) OUTPUT_WAVEFORM[162] <= 0;

    always @(posedge pwmclk)
        if (counter == (compare_40_3_on * 1)) OUTPUT_WAVEFORM[163] <= 1;
        else if (counter == compare_40_3_off * 1) OUTPUT_WAVEFORM[163] <= 0;
    
    always @(posedge pwmclk)
        if (counter == (compare_41_0_on * 1)) OUTPUT_WAVEFORM[164] <= 1;
        else if (counter == (compare_41_0_off * 1)) OUTPUT_WAVEFORM[164] <= 0;

    always @(posedge pwmclk)
        if (counter == (compare_41_1_on * 1)) OUTPUT_WAVEFORM[165] <= 1;
        else if (counter == (compare_41_1_off * 1)) OUTPUT_WAVEFORM[165] <= 0;

    always @(posedge pwmclk)
        if (counter == (compare_41_2_on * 1)) OUTPUT_WAVEFORM[166] <= 1;
        else if (counter == compare_41_2_off * 1) OUTPUT_WAVEFORM[166] <= 0;

    always @(posedge pwmclk)
        if (counter == (compare_41_3_on * 1)) OUTPUT_WAVEFORM[167] <= 1;
        else if (counter == compare_41_3_off * 1) OUTPUT_WAVEFORM[167] <= 0;
    
    always @(posedge pwmclk)
        if (counter == (compare_42_0_on * 1)) OUTPUT_WAVEFORM[168] <= 1;
        else if (counter == (compare_42_0_off * 1)) OUTPUT_WAVEFORM[168] <= 0;

    always @(posedge pwmclk)
        if (counter == (compare_42_1_on * 1)) OUTPUT_WAVEFORM[169] <= 1;
        else if (counter == (compare_42_1_off * 1)) OUTPUT_WAVEFORM[169] <= 0;

    always @(posedge pwmclk)
        if (counter == (compare_42_2_on * 1)) OUTPUT_WAVEFORM[170] <= 1;
        else if (counter == compare_42_2_off * 1) OUTPUT_WAVEFORM[170] <= 0;

    always @(posedge pwmclk)
        if (counter == (compare_42_3_on * 1)) OUTPUT_WAVEFORM[171] <= 1;
        else if (counter == compare_42_3_off * 1) OUTPUT_WAVEFORM[171] <= 0;
    
    always @(posedge pwmclk)
        if (counter == (compare_43_0_on * 1)) OUTPUT_WAVEFORM[172] <= 1;
        else if (counter == (compare_43_0_off * 1)) OUTPUT_WAVEFORM[172] <= 0;

    always @(posedge pwmclk)
        if (counter == (compare_43_1_on * 1)) OUTPUT_WAVEFORM[173] <= 1;
        else if (counter == (compare_43_1_off * 1)) OUTPUT_WAVEFORM[173] <= 0;

    always @(posedge pwmclk)
        if (counter == (compare_43_2_on * 1)) OUTPUT_WAVEFORM[174] <= 1;
        else if (counter == compare_43_2_off * 1) OUTPUT_WAVEFORM[174] <= 0;

    always @(posedge pwmclk)
        if (counter == (compare_43_3_on * 1)) OUTPUT_WAVEFORM[175] <= 1;
        else if (counter == compare_43_3_off * 1) OUTPUT_WAVEFORM[175] <= 0;
    
    always @(posedge pwmclk)
        if (counter == (compare_44_0_on * 1)) OUTPUT_WAVEFORM[176] <= 1;
        else if (counter == (compare_44_0_off * 1)) OUTPUT_WAVEFORM[176] <= 0;

    always @(posedge pwmclk)
        if (counter == (compare_44_1_on * 1)) OUTPUT_WAVEFORM[177] <= 1;
        else if (counter == (compare_44_1_off * 1)) OUTPUT_WAVEFORM[177] <= 0;

    always @(posedge pwmclk)
        if (counter == (compare_44_2_on * 1)) OUTPUT_WAVEFORM[178] <= 1;
        else if (counter == compare_44_2_off * 1) OUTPUT_WAVEFORM[178] <= 0;

    always @(posedge pwmclk)
        if (counter == (compare_44_3_on * 1)) OUTPUT_WAVEFORM[179] <= 1;
        else if (counter == compare_44_3_off * 1) OUTPUT_WAVEFORM[179] <= 0;
    
    always @(posedge pwmclk)
        if (counter == (compare_45_0_on * 1)) OUTPUT_WAVEFORM[180] <= 1;
        else if (counter == (compare_45_0_off * 1)) OUTPUT_WAVEFORM[180] <= 0;

    always @(posedge pwmclk)
        if (counter == (compare_45_1_on * 1)) OUTPUT_WAVEFORM[181] <= 1;
        else if (counter == (compare_45_1_off * 1)) OUTPUT_WAVEFORM[181] <= 0;

    always @(posedge pwmclk)
        if (counter == (compare_45_2_on * 1)) OUTPUT_WAVEFORM[182] <= 1;
        else if (counter == compare_45_2_off * 1) OUTPUT_WAVEFORM[182] <= 0;

    always @(posedge pwmclk)
        if (counter == (compare_45_3_on * 1)) OUTPUT_WAVEFORM[183] <= 1;
        else if (counter == compare_45_3_off * 1) OUTPUT_WAVEFORM[183] <= 0;
    
    always @(posedge pwmclk)
        if (counter == (compare_46_0_on * 1)) OUTPUT_WAVEFORM[184] <= 1;
        else if (counter == (compare_46_0_off * 1)) OUTPUT_WAVEFORM[184] <= 0;

    always @(posedge pwmclk)
        if (counter == (compare_46_1_on * 1)) OUTPUT_WAVEFORM[185] <= 1;
        else if (counter == (compare_46_1_off * 1)) OUTPUT_WAVEFORM[185] <= 0;

    always @(posedge pwmclk)
        if (counter == (compare_46_2_on * 1)) OUTPUT_WAVEFORM[186] <= 1;
        else if (counter == compare_46_2_off * 1) OUTPUT_WAVEFORM[186] <= 0;

    always @(posedge pwmclk)
        if (counter == (compare_46_3_on * 1)) OUTPUT_WAVEFORM[187] <= 1;
        else if (counter == compare_46_3_off * 1) OUTPUT_WAVEFORM[187] <= 0;
    
    always @(posedge pwmclk)
        if (counter == (compare_47_0_on * 1)) OUTPUT_WAVEFORM[188] <= 1;
        else if (counter == (compare_47_0_off * 1)) OUTPUT_WAVEFORM[188] <= 0;

    always @(posedge pwmclk)
        if (counter == (compare_47_1_on * 1)) OUTPUT_WAVEFORM[189] <= 1;
        else if (counter == (compare_47_1_off * 1)) OUTPUT_WAVEFORM[189] <= 0;

    always @(posedge pwmclk)
        if (counter == (compare_47_2_on * 1)) OUTPUT_WAVEFORM[190] <= 1;
        else if (counter == compare_47_2_off * 1) OUTPUT_WAVEFORM[190] <= 0;

    always @(posedge pwmclk)
        if (counter == (compare_47_3_on * 1)) OUTPUT_WAVEFORM[191] <= 1;
        else if (counter == compare_47_3_off * 1) OUTPUT_WAVEFORM[191] <= 0;
    
    always @(posedge pwmclk)
        if (counter == (compare_48_0_on * 1)) OUTPUT_WAVEFORM[192] <= 1;
        else if (counter == (compare_48_0_off * 1)) OUTPUT_WAVEFORM[192] <= 0;

    always @(posedge pwmclk)
        if (counter == (compare_48_1_on * 1)) OUTPUT_WAVEFORM[193] <= 1;
        else if (counter == (compare_48_1_off * 1)) OUTPUT_WAVEFORM[193] <= 0;

    always @(posedge pwmclk)
        if (counter == (compare_48_2_on * 1)) OUTPUT_WAVEFORM[194] <= 1;
        else if (counter == compare_48_2_off * 1) OUTPUT_WAVEFORM[194] <= 0;

    always @(posedge pwmclk)
        if (counter == (compare_48_3_on * 1)) OUTPUT_WAVEFORM[195] <= 1;
        else if (counter == compare_48_3_off * 1) OUTPUT_WAVEFORM[195] <= 0;
    
    always @(posedge pwmclk)
        if (counter == (compare_49_0_on * 1)) OUTPUT_WAVEFORM[196] <= 1;
        else if (counter == (compare_49_0_off * 1)) OUTPUT_WAVEFORM[196] <= 0;

    always @(posedge pwmclk)
        if (counter == (compare_49_1_on * 1)) OUTPUT_WAVEFORM[197] <= 1;
        else if (counter == (compare_49_1_off * 1)) OUTPUT_WAVEFORM[197] <= 0;

    always @(posedge pwmclk)
        if (counter == (compare_49_2_on * 1)) OUTPUT_WAVEFORM[198] <= 1;
        else if (counter == compare_49_2_off * 1) OUTPUT_WAVEFORM[198] <= 0;

    always @(posedge pwmclk)
        if (counter == (compare_49_3_on * 1)) OUTPUT_WAVEFORM[199] <= 1;
        else if (counter == compare_49_3_off * 1) OUTPUT_WAVEFORM[199] <= 0;
    
    always @(posedge pwmclk)
        if (counter == (compare_50_0_on * 1)) OUTPUT_WAVEFORM[200] <= 1;
        else if (counter == (compare_50_0_off * 1)) OUTPUT_WAVEFORM[200] <= 0;

    always @(posedge pwmclk)
        if (counter == (compare_50_1_on * 1)) OUTPUT_WAVEFORM[201] <= 1;
        else if (counter == (compare_50_1_off * 1)) OUTPUT_WAVEFORM[201] <= 0;

    always @(posedge pwmclk)
        if (counter == (compare_50_2_on * 1)) OUTPUT_WAVEFORM[202] <= 1;
        else if (counter == compare_50_2_off * 1) OUTPUT_WAVEFORM[202] <= 0;

    always @(posedge pwmclk)
        if (counter == (compare_50_3_on * 1)) OUTPUT_WAVEFORM[203] <= 1;
        else if (counter == compare_50_3_off * 1) OUTPUT_WAVEFORM[203] <= 0;
    
    always @(posedge pwmclk)
        if (counter == (compare_51_0_on * 1)) OUTPUT_WAVEFORM[204] <= 1;
        else if (counter == (compare_51_0_off * 1)) OUTPUT_WAVEFORM[204] <= 0;

    always @(posedge pwmclk)
        if (counter == (compare_51_1_on * 1)) OUTPUT_WAVEFORM[205] <= 1;
        else if (counter == (compare_51_1_off * 1)) OUTPUT_WAVEFORM[205] <= 0;

    always @(posedge pwmclk)
        if (counter == (compare_51_2_on * 1)) OUTPUT_WAVEFORM[206] <= 1;
        else if (counter == compare_51_2_off * 1) OUTPUT_WAVEFORM[206] <= 0;

    always @(posedge pwmclk)
        if (counter == (compare_51_3_on * 1)) OUTPUT_WAVEFORM[207] <= 1;
        else if (counter == compare_51_3_off * 1) OUTPUT_WAVEFORM[207] <= 0;
    
    always @(posedge pwmclk)
        if (counter == (compare_52_0_on * 1)) OUTPUT_WAVEFORM[208] <= 1;
        else if (counter == (compare_52_0_off * 1)) OUTPUT_WAVEFORM[208] <= 0;

    always @(posedge pwmclk)
        if (counter == (compare_52_1_on * 1)) OUTPUT_WAVEFORM[209] <= 1;
        else if (counter == (compare_52_1_off * 1)) OUTPUT_WAVEFORM[209] <= 0;

    always @(posedge pwmclk)
        if (counter == (compare_52_2_on * 1)) OUTPUT_WAVEFORM[210] <= 1;
        else if (counter == compare_52_2_off * 1) OUTPUT_WAVEFORM[210] <= 0;

    always @(posedge pwmclk)
        if (counter == (compare_52_3_on * 1)) OUTPUT_WAVEFORM[211] <= 1;
        else if (counter == compare_52_3_off * 1) OUTPUT_WAVEFORM[211] <= 0;
    
    always @(posedge pwmclk)
        if (counter == (compare_53_0_on * 1)) OUTPUT_WAVEFORM[212] <= 1;
        else if (counter == (compare_53_0_off * 1)) OUTPUT_WAVEFORM[212] <= 0;

    always @(posedge pwmclk)
        if (counter == (compare_53_1_on * 1)) OUTPUT_WAVEFORM[213] <= 1;
        else if (counter == (compare_53_1_off * 1)) OUTPUT_WAVEFORM[213] <= 0;

    always @(posedge pwmclk)
        if (counter == (compare_53_2_on * 1)) OUTPUT_WAVEFORM[214] <= 1;
        else if (counter == compare_53_2_off * 1) OUTPUT_WAVEFORM[214] <= 0;

    always @(posedge pwmclk)
        if (counter == (compare_53_3_on * 1)) OUTPUT_WAVEFORM[215] <= 1;
        else if (counter == compare_53_3_off * 1) OUTPUT_WAVEFORM[215] <= 0;
    
    always @(posedge pwmclk)
        if (counter == (compare_54_0_on * 1)) OUTPUT_WAVEFORM[216] <= 1;
        else if (counter == (compare_54_0_off * 1)) OUTPUT_WAVEFORM[216] <= 0;

    always @(posedge pwmclk)
        if (counter == (compare_54_1_on * 1)) OUTPUT_WAVEFORM[217] <= 1;
        else if (counter == (compare_54_1_off * 1)) OUTPUT_WAVEFORM[217] <= 0;

    always @(posedge pwmclk)
        if (counter == (compare_54_2_on * 1)) OUTPUT_WAVEFORM[218] <= 1;
        else if (counter == compare_54_2_off * 1) OUTPUT_WAVEFORM[218] <= 0;

    always @(posedge pwmclk)
        if (counter == (compare_54_3_on * 1)) OUTPUT_WAVEFORM[219] <= 1;
        else if (counter == compare_54_3_off * 1) OUTPUT_WAVEFORM[219] <= 0;
    
    always @(posedge pwmclk)
        if (counter == (compare_55_0_on * 1)) OUTPUT_WAVEFORM[220] <= 1;
        else if (counter == (compare_55_0_off * 1)) OUTPUT_WAVEFORM[220] <= 0;

    always @(posedge pwmclk)
        if (counter == (compare_55_1_on * 1)) OUTPUT_WAVEFORM[221] <= 1;
        else if (counter == (compare_55_1_off * 1)) OUTPUT_WAVEFORM[221] <= 0;

    always @(posedge pwmclk)
        if (counter == (compare_55_2_on * 1)) OUTPUT_WAVEFORM[222] <= 1;
        else if (counter == compare_55_2_off * 1) OUTPUT_WAVEFORM[222] <= 0;

    always @(posedge pwmclk)
        if (counter == (compare_55_3_on * 1)) OUTPUT_WAVEFORM[223] <= 1;
        else if (counter == compare_55_3_off * 1) OUTPUT_WAVEFORM[223] <= 0;
    
    always @(posedge pwmclk)
        if (counter == (compare_56_0_on * 1)) OUTPUT_WAVEFORM[224] <= 1;
        else if (counter == (compare_56_0_off * 1)) OUTPUT_WAVEFORM[224] <= 0;

    always @(posedge pwmclk)
        if (counter == (compare_56_1_on * 1)) OUTPUT_WAVEFORM[225] <= 1;
        else if (counter == (compare_56_1_off * 1)) OUTPUT_WAVEFORM[225] <= 0;

    always @(posedge pwmclk)
        if (counter == (compare_56_2_on * 1)) OUTPUT_WAVEFORM[226] <= 1;
        else if (counter == compare_56_2_off * 1) OUTPUT_WAVEFORM[226] <= 0;

    always @(posedge pwmclk)
        if (counter == (compare_56_3_on * 1)) OUTPUT_WAVEFORM[227] <= 1;
        else if (counter == compare_56_3_off * 1) OUTPUT_WAVEFORM[227] <= 0;
    
    always @(posedge pwmclk)
        if (counter == (compare_57_0_on * 1)) OUTPUT_WAVEFORM[228] <= 1;
        else if (counter == (compare_57_0_off * 1)) OUTPUT_WAVEFORM[228] <= 0;

    always @(posedge pwmclk)
        if (counter == (compare_57_1_on * 1)) OUTPUT_WAVEFORM[229] <= 1;
        else if (counter == (compare_57_1_off * 1)) OUTPUT_WAVEFORM[229] <= 0;

    always @(posedge pwmclk)
        if (counter == (compare_57_2_on * 1)) OUTPUT_WAVEFORM[230] <= 1;
        else if (counter == compare_57_2_off * 1) OUTPUT_WAVEFORM[230] <= 0;

    always @(posedge pwmclk)
        if (counter == (compare_57_3_on * 1)) OUTPUT_WAVEFORM[231] <= 1;
        else if (counter == compare_57_3_off * 1) OUTPUT_WAVEFORM[231] <= 0;
    
    always @(posedge pwmclk)
        if (counter == (compare_58_0_on * 1)) OUTPUT_WAVEFORM[232] <= 1;
        else if (counter == (compare_58_0_off * 1)) OUTPUT_WAVEFORM[232] <= 0;

    always @(posedge pwmclk)
        if (counter == (compare_58_1_on * 1)) OUTPUT_WAVEFORM[233] <= 1;
        else if (counter == (compare_58_1_off * 1)) OUTPUT_WAVEFORM[233] <= 0;

    always @(posedge pwmclk)
        if (counter == (compare_58_2_on * 1)) OUTPUT_WAVEFORM[234] <= 1;
        else if (counter == compare_58_2_off * 1) OUTPUT_WAVEFORM[234] <= 0;

    always @(posedge pwmclk)
        if (counter == (compare_58_3_on * 1)) OUTPUT_WAVEFORM[235] <= 1;
        else if (counter == compare_58_3_off * 1) OUTPUT_WAVEFORM[235] <= 0;
    
    always @(posedge pwmclk)
        if (counter == (compare_59_0_on * 1)) OUTPUT_WAVEFORM[236] <= 1;
        else if (counter == (compare_59_0_off * 1)) OUTPUT_WAVEFORM[236] <= 0;

    always @(posedge pwmclk)
        if (counter == (compare_59_1_on * 1)) OUTPUT_WAVEFORM[237] <= 1;
        else if (counter == (compare_59_1_off * 1)) OUTPUT_WAVEFORM[237] <= 0;

    always @(posedge pwmclk)
        if (counter == (compare_59_2_on * 1)) OUTPUT_WAVEFORM[238] <= 1;
        else if (counter == compare_59_2_off * 1) OUTPUT_WAVEFORM[238] <= 0;

    always @(posedge pwmclk)
        if (counter == (compare_59_3_on * 1)) OUTPUT_WAVEFORM[239] <= 1;
        else if (counter == compare_59_3_off * 1) OUTPUT_WAVEFORM[239] <= 0;
    
    always @(posedge pwmclk)
        if (counter == (compare_60_0_on * 1)) OUTPUT_WAVEFORM[240] <= 1;
        else if (counter == (compare_60_0_off * 1)) OUTPUT_WAVEFORM[240] <= 0;

    always @(posedge pwmclk)
        if (counter == (compare_60_1_on * 1)) OUTPUT_WAVEFORM[241] <= 1;
        else if (counter == (compare_60_1_off * 1)) OUTPUT_WAVEFORM[241] <= 0;

    always @(posedge pwmclk)
        if (counter == (compare_60_2_on * 1)) OUTPUT_WAVEFORM[242] <= 1;
        else if (counter == compare_60_2_off * 1) OUTPUT_WAVEFORM[242] <= 0;

    always @(posedge pwmclk)
        if (counter == (compare_60_3_on * 1)) OUTPUT_WAVEFORM[243] <= 1;
        else if (counter == compare_60_3_off * 1) OUTPUT_WAVEFORM[243] <= 0;
    
    always @(posedge pwmclk)
        if (counter == (compare_61_0_on * 1)) OUTPUT_WAVEFORM[244] <= 1;
        else if (counter == (compare_61_0_off * 1)) OUTPUT_WAVEFORM[244] <= 0;

    always @(posedge pwmclk)
        if (counter == (compare_61_1_on * 1)) OUTPUT_WAVEFORM[245] <= 1;
        else if (counter == (compare_61_1_off * 1)) OUTPUT_WAVEFORM[245] <= 0;

    always @(posedge pwmclk)
        if (counter == (compare_61_2_on * 1)) OUTPUT_WAVEFORM[246] <= 1;
        else if (counter == compare_61_2_off * 1) OUTPUT_WAVEFORM[246] <= 0;

    always @(posedge pwmclk)
        if (counter == (compare_61_3_on * 1)) OUTPUT_WAVEFORM[247] <= 1;
        else if (counter == compare_61_3_off * 1) OUTPUT_WAVEFORM[247] <= 0;
    
    always @(posedge pwmclk)
        if (counter == (compare_62_0_on * 1)) OUTPUT_WAVEFORM[248] <= 1;
        else if (counter == (compare_62_0_off * 1)) OUTPUT_WAVEFORM[248] <= 0;

    always @(posedge pwmclk)
        if (counter == (compare_62_1_on * 1)) OUTPUT_WAVEFORM[249] <= 1;
        else if (counter == (compare_62_1_off * 1)) OUTPUT_WAVEFORM[249] <= 0;

    always @(posedge pwmclk)
        if (counter == (compare_62_2_on * 1)) OUTPUT_WAVEFORM[250] <= 1;
        else if (counter == compare_62_2_off * 1) OUTPUT_WAVEFORM[250] <= 0;

    always @(posedge pwmclk)
        if (counter == (compare_62_3_on * 1)) OUTPUT_WAVEFORM[251] <= 1;
        else if (counter == compare_62_3_off * 1) OUTPUT_WAVEFORM[251] <= 0;
    
    always @(posedge pwmclk)
        if (counter == (compare_63_0_on * 1)) OUTPUT_WAVEFORM[252] <= 1;
        else if (counter == (compare_63_0_off * 1)) OUTPUT_WAVEFORM[252] <= 0;

    always @(posedge pwmclk)
        if (counter == (compare_63_1_on * 1)) OUTPUT_WAVEFORM[253] <= 1;
        else if (counter == (compare_63_1_off * 1)) OUTPUT_WAVEFORM[253] <= 0;

    always @(posedge pwmclk)
        if (counter == (compare_63_2_on * 1)) OUTPUT_WAVEFORM[254] <= 1;
        else if (counter == compare_63_2_off * 1) OUTPUT_WAVEFORM[254] <= 0;

    always @(posedge pwmclk)
        if (counter == (compare_63_3_on * 1)) OUTPUT_WAVEFORM[255] <= 1;
        else if (counter == compare_63_3_off * 1) OUTPUT_WAVEFORM[255] <= 0;
    
    always @(posedge pwmclk)
        if (counter == (compare_64_0_on * 1)) OUTPUT_WAVEFORM[256] <= 1;
        else if (counter == (compare_64_0_off * 1)) OUTPUT_WAVEFORM[256] <= 0;

    always @(posedge pwmclk)
        if (counter == (compare_64_1_on * 1)) OUTPUT_WAVEFORM[257] <= 1;
        else if (counter == (compare_64_1_off * 1)) OUTPUT_WAVEFORM[257] <= 0;

    always @(posedge pwmclk)
        if (counter == (compare_64_2_on * 1)) OUTPUT_WAVEFORM[258] <= 1;
        else if (counter == compare_64_2_off * 1) OUTPUT_WAVEFORM[258] <= 0;

    always @(posedge pwmclk)
        if (counter == (compare_64_3_on * 1)) OUTPUT_WAVEFORM[259] <= 1;
        else if (counter == compare_64_3_off * 1) OUTPUT_WAVEFORM[259] <= 0;
    
    always @(posedge pwmclk)
        if (counter == (compare_65_0_on * 1)) OUTPUT_WAVEFORM[260] <= 1;
        else if (counter == (compare_65_0_off * 1)) OUTPUT_WAVEFORM[260] <= 0;

    always @(posedge pwmclk)
        if (counter == (compare_65_1_on * 1)) OUTPUT_WAVEFORM[261] <= 1;
        else if (counter == (compare_65_1_off * 1)) OUTPUT_WAVEFORM[261] <= 0;

    always @(posedge pwmclk)
        if (counter == (compare_65_2_on * 1)) OUTPUT_WAVEFORM[262] <= 1;
        else if (counter == compare_65_2_off * 1) OUTPUT_WAVEFORM[262] <= 0;

    always @(posedge pwmclk)
        if (counter == (compare_65_3_on * 1)) OUTPUT_WAVEFORM[263] <= 1;
        else if (counter == compare_65_3_off * 1) OUTPUT_WAVEFORM[263] <= 0;
    
    always @(posedge pwmclk)
        if (counter == (compare_66_0_on * 1)) OUTPUT_WAVEFORM[264] <= 1;
        else if (counter == (compare_66_0_off * 1)) OUTPUT_WAVEFORM[264] <= 0;

    always @(posedge pwmclk)
        if (counter == (compare_66_1_on * 1)) OUTPUT_WAVEFORM[265] <= 1;
        else if (counter == (compare_66_1_off * 1)) OUTPUT_WAVEFORM[265] <= 0;

    always @(posedge pwmclk)
        if (counter == (compare_66_2_on * 1)) OUTPUT_WAVEFORM[266] <= 1;
        else if (counter == compare_66_2_off * 1) OUTPUT_WAVEFORM[266] <= 0;

    always @(posedge pwmclk)
        if (counter == (compare_66_3_on * 1)) OUTPUT_WAVEFORM[267] <= 1;
        else if (counter == compare_66_3_off * 1) OUTPUT_WAVEFORM[267] <= 0;
    
    always @(posedge pwmclk)
        if (counter == (compare_67_0_on * 1)) OUTPUT_WAVEFORM[268] <= 1;
        else if (counter == (compare_67_0_off * 1)) OUTPUT_WAVEFORM[268] <= 0;

    always @(posedge pwmclk)
        if (counter == (compare_67_1_on * 1)) OUTPUT_WAVEFORM[269] <= 1;
        else if (counter == (compare_67_1_off * 1)) OUTPUT_WAVEFORM[269] <= 0;

    always @(posedge pwmclk)
        if (counter == (compare_67_2_on * 1)) OUTPUT_WAVEFORM[270] <= 1;
        else if (counter == compare_67_2_off * 1) OUTPUT_WAVEFORM[270] <= 0;

    always @(posedge pwmclk)
        if (counter == (compare_67_3_on * 1)) OUTPUT_WAVEFORM[271] <= 1;
        else if (counter == compare_67_3_off * 1) OUTPUT_WAVEFORM[271] <= 0;
    
    always @(posedge pwmclk)
        if (counter == (compare_68_0_on * 1)) OUTPUT_WAVEFORM[272] <= 1;
        else if (counter == (compare_68_0_off * 1)) OUTPUT_WAVEFORM[272] <= 0;

    always @(posedge pwmclk)
        if (counter == (compare_68_1_on * 1)) OUTPUT_WAVEFORM[273] <= 1;
        else if (counter == (compare_68_1_off * 1)) OUTPUT_WAVEFORM[273] <= 0;

    always @(posedge pwmclk)
        if (counter == (compare_68_2_on * 1)) OUTPUT_WAVEFORM[274] <= 1;
        else if (counter == compare_68_2_off * 1) OUTPUT_WAVEFORM[274] <= 0;

    always @(posedge pwmclk)
        if (counter == (compare_68_3_on * 1)) OUTPUT_WAVEFORM[275] <= 1;
        else if (counter == compare_68_3_off * 1) OUTPUT_WAVEFORM[275] <= 0;
    
    always @(posedge pwmclk)
        if (counter == (compare_69_0_on * 1)) OUTPUT_WAVEFORM[276] <= 1;
        else if (counter == (compare_69_0_off * 1)) OUTPUT_WAVEFORM[276] <= 0;

    always @(posedge pwmclk)
        if (counter == (compare_69_1_on * 1)) OUTPUT_WAVEFORM[277] <= 1;
        else if (counter == (compare_69_1_off * 1)) OUTPUT_WAVEFORM[277] <= 0;

    always @(posedge pwmclk)
        if (counter == (compare_69_2_on * 1)) OUTPUT_WAVEFORM[278] <= 1;
        else if (counter == compare_69_2_off * 1) OUTPUT_WAVEFORM[278] <= 0;

    always @(posedge pwmclk)
        if (counter == (compare_69_3_on * 1)) OUTPUT_WAVEFORM[279] <= 1;
        else if (counter == compare_69_3_off * 1) OUTPUT_WAVEFORM[279] <= 0;
    
    always @(posedge pwmclk)
        if (counter == (compare_70_0_on * 1)) OUTPUT_WAVEFORM[280] <= 1;
        else if (counter == (compare_70_0_off * 1)) OUTPUT_WAVEFORM[280] <= 0;

    always @(posedge pwmclk)
        if (counter == (compare_70_1_on * 1)) OUTPUT_WAVEFORM[281] <= 1;
        else if (counter == (compare_70_1_off * 1)) OUTPUT_WAVEFORM[281] <= 0;

    always @(posedge pwmclk)
        if (counter == (compare_70_2_on * 1)) OUTPUT_WAVEFORM[282] <= 1;
        else if (counter == compare_70_2_off * 1) OUTPUT_WAVEFORM[282] <= 0;

    always @(posedge pwmclk)
        if (counter == (compare_70_3_on * 1)) OUTPUT_WAVEFORM[283] <= 1;
        else if (counter == compare_70_3_off * 1) OUTPUT_WAVEFORM[283] <= 0;
    
    always @(posedge pwmclk)
        if (counter == (compare_71_0_on * 1)) OUTPUT_WAVEFORM[284] <= 1;
        else if (counter == (compare_71_0_off * 1)) OUTPUT_WAVEFORM[284] <= 0;

    always @(posedge pwmclk)
        if (counter == (compare_71_1_on * 1)) OUTPUT_WAVEFORM[285] <= 1;
        else if (counter == (compare_71_1_off * 1)) OUTPUT_WAVEFORM[285] <= 0;

    always @(posedge pwmclk)
        if (counter == (compare_71_2_on * 1)) OUTPUT_WAVEFORM[286] <= 1;
        else if (counter == compare_71_2_off * 1) OUTPUT_WAVEFORM[286] <= 0;

    always @(posedge pwmclk)
        if (counter == (compare_71_3_on * 1)) OUTPUT_WAVEFORM[287] <= 1;
        else if (counter == compare_71_3_off * 1) OUTPUT_WAVEFORM[287] <= 0;
    
    always @(posedge pwmclk)
        if (counter == (compare_72_0_on * 1)) OUTPUT_WAVEFORM[288] <= 1;
        else if (counter == (compare_72_0_off * 1)) OUTPUT_WAVEFORM[288] <= 0;

    always @(posedge pwmclk)
        if (counter == (compare_72_1_on * 1)) OUTPUT_WAVEFORM[289] <= 1;
        else if (counter == (compare_72_1_off * 1)) OUTPUT_WAVEFORM[289] <= 0;

    always @(posedge pwmclk)
        if (counter == (compare_72_2_on * 1)) OUTPUT_WAVEFORM[290] <= 1;
        else if (counter == compare_72_2_off * 1) OUTPUT_WAVEFORM[290] <= 0;

    always @(posedge pwmclk)
        if (counter == (compare_72_3_on * 1)) OUTPUT_WAVEFORM[291] <= 1;
        else if (counter == compare_72_3_off * 1) OUTPUT_WAVEFORM[291] <= 0;
    
    always @(posedge pwmclk)
        if (counter == (compare_73_0_on * 1)) OUTPUT_WAVEFORM[292] <= 1;
        else if (counter == (compare_73_0_off * 1)) OUTPUT_WAVEFORM[292] <= 0;

    always @(posedge pwmclk)
        if (counter == (compare_73_1_on * 1)) OUTPUT_WAVEFORM[293] <= 1;
        else if (counter == (compare_73_1_off * 1)) OUTPUT_WAVEFORM[293] <= 0;

    always @(posedge pwmclk)
        if (counter == (compare_73_2_on * 1)) OUTPUT_WAVEFORM[294] <= 1;
        else if (counter == compare_73_2_off * 1) OUTPUT_WAVEFORM[294] <= 0;

    always @(posedge pwmclk)
        if (counter == (compare_73_3_on * 1)) OUTPUT_WAVEFORM[295] <= 1;
        else if (counter == compare_73_3_off * 1) OUTPUT_WAVEFORM[295] <= 0;
    
    always @(posedge pwmclk)
        if (counter == (compare_74_0_on * 1)) OUTPUT_WAVEFORM[296] <= 1;
        else if (counter == (compare_74_0_off * 1)) OUTPUT_WAVEFORM[296] <= 0;

    always @(posedge pwmclk)
        if (counter == (compare_74_1_on * 1)) OUTPUT_WAVEFORM[297] <= 1;
        else if (counter == (compare_74_1_off * 1)) OUTPUT_WAVEFORM[297] <= 0;

    always @(posedge pwmclk)
        if (counter == (compare_74_2_on * 1)) OUTPUT_WAVEFORM[298] <= 1;
        else if (counter == compare_74_2_off * 1) OUTPUT_WAVEFORM[298] <= 0;

    always @(posedge pwmclk)
        if (counter == (compare_74_3_on * 1)) OUTPUT_WAVEFORM[299] <= 1;
        else if (counter == compare_74_3_off * 1) OUTPUT_WAVEFORM[299] <= 0;
    
    always @(posedge pwmclk)
        if (counter == (compare_75_0_on * 1)) OUTPUT_WAVEFORM[300] <= 1;
        else if (counter == (compare_75_0_off * 1)) OUTPUT_WAVEFORM[300] <= 0;

    always @(posedge pwmclk)
        if (counter == (compare_75_1_on * 1)) OUTPUT_WAVEFORM[301] <= 1;
        else if (counter == (compare_75_1_off * 1)) OUTPUT_WAVEFORM[301] <= 0;

    always @(posedge pwmclk)
        if (counter == (compare_75_2_on * 1)) OUTPUT_WAVEFORM[302] <= 1;
        else if (counter == compare_75_2_off * 1) OUTPUT_WAVEFORM[302] <= 0;

    always @(posedge pwmclk)
        if (counter == (compare_75_3_on * 1)) OUTPUT_WAVEFORM[303] <= 1;
        else if (counter == compare_75_3_off * 1) OUTPUT_WAVEFORM[303] <= 0;
    
    always @(posedge pwmclk)
        if (counter == (compare_76_0_on * 1)) OUTPUT_WAVEFORM[304] <= 1;
        else if (counter == (compare_76_0_off * 1)) OUTPUT_WAVEFORM[304] <= 0;

    always @(posedge pwmclk)
        if (counter == (compare_76_1_on * 1)) OUTPUT_WAVEFORM[305] <= 1;
        else if (counter == (compare_76_1_off * 1)) OUTPUT_WAVEFORM[305] <= 0;

    always @(posedge pwmclk)
        if (counter == (compare_76_2_on * 1)) OUTPUT_WAVEFORM[306] <= 1;
        else if (counter == compare_76_2_off * 1) OUTPUT_WAVEFORM[306] <= 0;

    always @(posedge pwmclk)
        if (counter == (compare_76_3_on * 1)) OUTPUT_WAVEFORM[307] <= 1;
        else if (counter == compare_76_3_off * 1) OUTPUT_WAVEFORM[307] <= 0;
    
    always @(posedge pwmclk)
        if (counter == (compare_77_0_on * 1)) OUTPUT_WAVEFORM[308] <= 1;
        else if (counter == (compare_77_0_off * 1)) OUTPUT_WAVEFORM[308] <= 0;

    always @(posedge pwmclk)
        if (counter == (compare_77_1_on * 1)) OUTPUT_WAVEFORM[309] <= 1;
        else if (counter == (compare_77_1_off * 1)) OUTPUT_WAVEFORM[309] <= 0;

    always @(posedge pwmclk)
        if (counter == (compare_77_2_on * 1)) OUTPUT_WAVEFORM[310] <= 1;
        else if (counter == compare_77_2_off * 1) OUTPUT_WAVEFORM[310] <= 0;

    always @(posedge pwmclk)
        if (counter == (compare_77_3_on * 1)) OUTPUT_WAVEFORM[311] <= 1;
        else if (counter == compare_77_3_off * 1) OUTPUT_WAVEFORM[311] <= 0;
    
    always @(posedge pwmclk)
        if (counter == (compare_78_0_on * 1)) OUTPUT_WAVEFORM[312] <= 1;
        else if (counter == (compare_78_0_off * 1)) OUTPUT_WAVEFORM[312] <= 0;

    always @(posedge pwmclk)
        if (counter == (compare_78_1_on * 1)) OUTPUT_WAVEFORM[313] <= 1;
        else if (counter == (compare_78_1_off * 1)) OUTPUT_WAVEFORM[313] <= 0;

    always @(posedge pwmclk)
        if (counter == (compare_78_2_on * 1)) OUTPUT_WAVEFORM[314] <= 1;
        else if (counter == compare_78_2_off * 1) OUTPUT_WAVEFORM[314] <= 0;

    always @(posedge pwmclk)
        if (counter == (compare_78_3_on * 1)) OUTPUT_WAVEFORM[315] <= 1;
        else if (counter == compare_78_3_off * 1) OUTPUT_WAVEFORM[315] <= 0;
    
    always @(posedge pwmclk)
        if (counter == (compare_79_0_on * 1)) OUTPUT_WAVEFORM[316] <= 1;
        else if (counter == (compare_79_0_off * 1)) OUTPUT_WAVEFORM[316] <= 0;

    always @(posedge pwmclk)
        if (counter == (compare_79_1_on * 1)) OUTPUT_WAVEFORM[317] <= 1;
        else if (counter == (compare_79_1_off * 1)) OUTPUT_WAVEFORM[317] <= 0;

    always @(posedge pwmclk)
        if (counter == (compare_79_2_on * 1)) OUTPUT_WAVEFORM[318] <= 1;
        else if (counter == compare_79_2_off * 1) OUTPUT_WAVEFORM[318] <= 0;

    always @(posedge pwmclk)
        if (counter == (compare_79_3_on * 1)) OUTPUT_WAVEFORM[319] <= 1;
        else if (counter == compare_79_3_off * 1) OUTPUT_WAVEFORM[319] <= 0;
    
    always @(posedge pwmclk)
        if (counter == (compare_80_0_on * 1)) OUTPUT_WAVEFORM[320] <= 1;
        else if (counter == (compare_80_0_off * 1)) OUTPUT_WAVEFORM[320] <= 0;

    always @(posedge pwmclk)
        if (counter == (compare_80_1_on * 1)) OUTPUT_WAVEFORM[321] <= 1;
        else if (counter == (compare_80_1_off * 1)) OUTPUT_WAVEFORM[321] <= 0;

    always @(posedge pwmclk)
        if (counter == (compare_80_2_on * 1)) OUTPUT_WAVEFORM[322] <= 1;
        else if (counter == compare_80_2_off * 1) OUTPUT_WAVEFORM[322] <= 0;

    always @(posedge pwmclk)
        if (counter == (compare_80_3_on * 1)) OUTPUT_WAVEFORM[323] <= 1;
        else if (counter == compare_80_3_off * 1) OUTPUT_WAVEFORM[323] <= 0;
    
    always @(posedge pwmclk)
        if (counter == (compare_81_0_on * 1)) OUTPUT_WAVEFORM[324] <= 1;
        else if (counter == (compare_81_0_off * 1)) OUTPUT_WAVEFORM[324] <= 0;

    always @(posedge pwmclk)
        if (counter == (compare_81_1_on * 1)) OUTPUT_WAVEFORM[325] <= 1;
        else if (counter == (compare_81_1_off * 1)) OUTPUT_WAVEFORM[325] <= 0;

    always @(posedge pwmclk)
        if (counter == (compare_81_2_on * 1)) OUTPUT_WAVEFORM[326] <= 1;
        else if (counter == compare_81_2_off * 1) OUTPUT_WAVEFORM[326] <= 0;

    always @(posedge pwmclk)
        if (counter == (compare_81_3_on * 1)) OUTPUT_WAVEFORM[327] <= 1;
        else if (counter == compare_81_3_off * 1) OUTPUT_WAVEFORM[327] <= 0;
    
    always @(posedge pwmclk)
        if (counter == (compare_82_0_on * 1)) OUTPUT_WAVEFORM[328] <= 1;
        else if (counter == (compare_82_0_off * 1)) OUTPUT_WAVEFORM[328] <= 0;

    always @(posedge pwmclk)
        if (counter == (compare_82_1_on * 1)) OUTPUT_WAVEFORM[329] <= 1;
        else if (counter == (compare_82_1_off * 1)) OUTPUT_WAVEFORM[329] <= 0;

    always @(posedge pwmclk)
        if (counter == (compare_82_2_on * 1)) OUTPUT_WAVEFORM[330] <= 1;
        else if (counter == compare_82_2_off * 1) OUTPUT_WAVEFORM[330] <= 0;

    always @(posedge pwmclk)
        if (counter == (compare_82_3_on * 1)) OUTPUT_WAVEFORM[331] <= 1;
        else if (counter == compare_82_3_off * 1) OUTPUT_WAVEFORM[331] <= 0;
    
    always @(posedge pwmclk)
        if (counter == (compare_83_0_on * 1)) OUTPUT_WAVEFORM[332] <= 1;
        else if (counter == (compare_83_0_off * 1)) OUTPUT_WAVEFORM[332] <= 0;

    always @(posedge pwmclk)
        if (counter == (compare_83_1_on * 1)) OUTPUT_WAVEFORM[333] <= 1;
        else if (counter == (compare_83_1_off * 1)) OUTPUT_WAVEFORM[333] <= 0;

    always @(posedge pwmclk)
        if (counter == (compare_83_2_on * 1)) OUTPUT_WAVEFORM[334] <= 1;
        else if (counter == compare_83_2_off * 1) OUTPUT_WAVEFORM[334] <= 0;

    always @(posedge pwmclk)
        if (counter == (compare_83_3_on * 1)) OUTPUT_WAVEFORM[335] <= 1;
        else if (counter == compare_83_3_off * 1) OUTPUT_WAVEFORM[335] <= 0;
    
    always @(posedge pwmclk)
        if (counter == (compare_84_0_on * 1)) OUTPUT_WAVEFORM[336] <= 1;
        else if (counter == (compare_84_0_off * 1)) OUTPUT_WAVEFORM[336] <= 0;

    always @(posedge pwmclk)
        if (counter == (compare_84_1_on * 1)) OUTPUT_WAVEFORM[337] <= 1;
        else if (counter == (compare_84_1_off * 1)) OUTPUT_WAVEFORM[337] <= 0;

    always @(posedge pwmclk)
        if (counter == (compare_84_2_on * 1)) OUTPUT_WAVEFORM[338] <= 1;
        else if (counter == compare_84_2_off * 1) OUTPUT_WAVEFORM[338] <= 0;

    always @(posedge pwmclk)
        if (counter == (compare_84_3_on * 1)) OUTPUT_WAVEFORM[339] <= 1;
        else if (counter == compare_84_3_off * 1) OUTPUT_WAVEFORM[339] <= 0;
    
    always @(posedge pwmclk)
        if (counter == (compare_85_0_on * 1)) OUTPUT_WAVEFORM[340] <= 1;
        else if (counter == (compare_85_0_off * 1)) OUTPUT_WAVEFORM[340] <= 0;

    always @(posedge pwmclk)
        if (counter == (compare_85_1_on * 1)) OUTPUT_WAVEFORM[341] <= 1;
        else if (counter == (compare_85_1_off * 1)) OUTPUT_WAVEFORM[341] <= 0;

    always @(posedge pwmclk)
        if (counter == (compare_85_2_on * 1)) OUTPUT_WAVEFORM[342] <= 1;
        else if (counter == compare_85_2_off * 1) OUTPUT_WAVEFORM[342] <= 0;

    always @(posedge pwmclk)
        if (counter == (compare_85_3_on * 1)) OUTPUT_WAVEFORM[343] <= 1;
        else if (counter == compare_85_3_off * 1) OUTPUT_WAVEFORM[343] <= 0;
    
    always @(posedge pwmclk)
        if (counter == (compare_86_0_on * 1)) OUTPUT_WAVEFORM[344] <= 1;
        else if (counter == (compare_86_0_off * 1)) OUTPUT_WAVEFORM[344] <= 0;

    always @(posedge pwmclk)
        if (counter == (compare_86_1_on * 1)) OUTPUT_WAVEFORM[345] <= 1;
        else if (counter == (compare_86_1_off * 1)) OUTPUT_WAVEFORM[345] <= 0;

    always @(posedge pwmclk)
        if (counter == (compare_86_2_on * 1)) OUTPUT_WAVEFORM[346] <= 1;
        else if (counter == compare_86_2_off * 1) OUTPUT_WAVEFORM[346] <= 0;

    always @(posedge pwmclk)
        if (counter == (compare_86_3_on * 1)) OUTPUT_WAVEFORM[347] <= 1;
        else if (counter == compare_86_3_off * 1) OUTPUT_WAVEFORM[347] <= 0;
    
    always @(posedge pwmclk)
        if (counter == (compare_87_0_on * 1)) OUTPUT_WAVEFORM[348] <= 1;
        else if (counter == (compare_87_0_off * 1)) OUTPUT_WAVEFORM[348] <= 0;

    always @(posedge pwmclk)
        if (counter == (compare_87_1_on * 1)) OUTPUT_WAVEFORM[349] <= 1;
        else if (counter == (compare_87_1_off * 1)) OUTPUT_WAVEFORM[349] <= 0;

    always @(posedge pwmclk)
        if (counter == (compare_87_2_on * 1)) OUTPUT_WAVEFORM[350] <= 1;
        else if (counter == compare_87_2_off * 1) OUTPUT_WAVEFORM[350] <= 0;

    always @(posedge pwmclk)
        if (counter == (compare_87_3_on * 1)) OUTPUT_WAVEFORM[351] <= 1;
        else if (counter == compare_87_3_off * 1) OUTPUT_WAVEFORM[351] <= 0;
    
    always @(posedge pwmclk)
        if (counter == (compare_88_0_on * 1)) OUTPUT_WAVEFORM[352] <= 1;
        else if (counter == (compare_88_0_off * 1)) OUTPUT_WAVEFORM[352] <= 0;

    always @(posedge pwmclk)
        if (counter == (compare_88_1_on * 1)) OUTPUT_WAVEFORM[353] <= 1;
        else if (counter == (compare_88_1_off * 1)) OUTPUT_WAVEFORM[353] <= 0;

    always @(posedge pwmclk)
        if (counter == (compare_88_2_on * 1)) OUTPUT_WAVEFORM[354] <= 1;
        else if (counter == compare_88_2_off * 1) OUTPUT_WAVEFORM[354] <= 0;

    always @(posedge pwmclk)
        if (counter == (compare_88_3_on * 1)) OUTPUT_WAVEFORM[355] <= 1;
        else if (counter == compare_88_3_off * 1) OUTPUT_WAVEFORM[355] <= 0;
    
    always @(posedge pwmclk)
        if (counter == (compare_89_0_on * 1)) OUTPUT_WAVEFORM[356] <= 1;
        else if (counter == (compare_89_0_off * 1)) OUTPUT_WAVEFORM[356] <= 0;

    always @(posedge pwmclk)
        if (counter == (compare_89_1_on * 1)) OUTPUT_WAVEFORM[357] <= 1;
        else if (counter == (compare_89_1_off * 1)) OUTPUT_WAVEFORM[357] <= 0;

    always @(posedge pwmclk)
        if (counter == (compare_89_2_on * 1)) OUTPUT_WAVEFORM[358] <= 1;
        else if (counter == compare_89_2_off * 1) OUTPUT_WAVEFORM[358] <= 0;

    always @(posedge pwmclk)
        if (counter == (compare_89_3_on * 1)) OUTPUT_WAVEFORM[359] <= 1;
        else if (counter == compare_89_3_off * 1) OUTPUT_WAVEFORM[359] <= 0;
        
    always @(posedge pwmclk)
            if (counter == (compare_0_0_on * 1) || counter == (compare_0_0_off * 1)) OUTPUT_ENABLE[0] <= 1;
            else if (counter == ((compare_0_0_off * 1) + POWER_LVL) % 255 || counter == ((compare_0_0_on * 1) + POWER_LVL) % 255) OUTPUT_ENABLE[0] <= 0;
        
    always @(posedge pwmclk)
            if (counter == (compare_0_1_on * 1) || counter == (compare_0_1_off * 1)) OUTPUT_ENABLE[1] <= 1;
            else if (counter == ((compare_0_1_off * 1) + POWER_LVL) % 255 || counter == ((compare_0_1_on * 1) + POWER_LVL) % 255) OUTPUT_ENABLE[1] <= 0;
        
    always @(posedge pwmclk)
            if (counter == (compare_0_2_on * 1) || counter == (compare_0_2_off * 1)) OUTPUT_ENABLE[2] <= 1;
            else if (counter == ((compare_0_2_off * 1) + POWER_LVL) % 255 || counter == ((compare_0_2_on * 1) + POWER_LVL) % 255) OUTPUT_ENABLE[2] <= 0;
        
    always @(posedge pwmclk)
            if (counter == (compare_0_3_on * 1) || counter == (compare_0_3_off * 1)) OUTPUT_ENABLE[3] <= 1;
            else if (counter == ((compare_0_3_off * 1) + POWER_LVL) % 255 || counter == ((compare_0_3_on * 1) + POWER_LVL) % 255) OUTPUT_ENABLE[3] <= 0;
        
    always @(posedge pwmclk)
            if (counter == (compare_1_0_on * 1) || counter == (compare_1_0_off * 1)) OUTPUT_ENABLE[4] <= 1;
            else if (counter == ((compare_1_0_off * 1) + POWER_LVL) % 255 || counter == ((compare_1_0_on * 1) + POWER_LVL) % 255) OUTPUT_ENABLE[4] <= 0;
        
    always @(posedge pwmclk)
            if (counter == (compare_1_1_on * 1) || counter == (compare_1_1_off * 1)) OUTPUT_ENABLE[5] <= 1;
            else if (counter == ((compare_1_1_off * 1) + POWER_LVL) % 255 || counter == ((compare_1_1_on * 1) + POWER_LVL) % 255) OUTPUT_ENABLE[5] <= 0;
        
    always @(posedge pwmclk)
            if (counter == (compare_1_2_on * 1) || counter == (compare_1_2_off * 1)) OUTPUT_ENABLE[6] <= 1;
            else if (counter == ((compare_1_2_off * 1) + POWER_LVL) % 255 || counter == ((compare_1_2_on * 1) + POWER_LVL) % 255) OUTPUT_ENABLE[6] <= 0;
        
    always @(posedge pwmclk)
            if (counter == (compare_1_3_on * 1) || counter == (compare_1_3_off * 1)) OUTPUT_ENABLE[7] <= 1;
            else if (counter == ((compare_1_3_off * 1) + POWER_LVL) % 255 || counter == ((compare_1_3_on * 1) + POWER_LVL) % 255) OUTPUT_ENABLE[7] <= 0;
        
    always @(posedge pwmclk)
            if (counter == (compare_2_0_on * 1) || counter == (compare_2_0_off * 1)) OUTPUT_ENABLE[8] <= 1;
            else if (counter == ((compare_2_0_off * 1) + POWER_LVL) % 255 || counter == ((compare_2_0_on * 1) + POWER_LVL) % 255) OUTPUT_ENABLE[8] <= 0;
        
    always @(posedge pwmclk)
            if (counter == (compare_2_1_on * 1) || counter == (compare_2_1_off * 1)) OUTPUT_ENABLE[9] <= 1;
            else if (counter == ((compare_2_1_off * 1) + POWER_LVL) % 255 || counter == ((compare_2_1_on * 1) + POWER_LVL) % 255) OUTPUT_ENABLE[9] <= 0;
        
    always @(posedge pwmclk)
            if (counter == (compare_2_2_on * 1) || counter == (compare_2_2_off * 1)) OUTPUT_ENABLE[10] <= 1;
            else if (counter == ((compare_2_2_off * 1) + POWER_LVL) % 255 || counter == ((compare_2_2_on * 1) + POWER_LVL) % 255) OUTPUT_ENABLE[10] <= 0;
        
    always @(posedge pwmclk)
            if (counter == (compare_2_3_on * 1) || counter == (compare_2_3_off * 1)) OUTPUT_ENABLE[11] <= 1;
            else if (counter == ((compare_2_3_off * 1) + POWER_LVL) % 255 || counter == ((compare_2_3_on * 1) + POWER_LVL) % 255) OUTPUT_ENABLE[11] <= 0;
        
    always @(posedge pwmclk)
            if (counter == (compare_3_0_on * 1) || counter == (compare_3_0_off * 1)) OUTPUT_ENABLE[12] <= 1;
            else if (counter == ((compare_3_0_off * 1) + POWER_LVL) % 255 || counter == ((compare_3_0_on * 1) + POWER_LVL) % 255) OUTPUT_ENABLE[12] <= 0;
        
    always @(posedge pwmclk)
            if (counter == (compare_3_1_on * 1) || counter == (compare_3_1_off * 1)) OUTPUT_ENABLE[13] <= 1;
            else if (counter == ((compare_3_1_off * 1) + POWER_LVL) % 255 || counter == ((compare_3_1_on * 1) + POWER_LVL) % 255) OUTPUT_ENABLE[13] <= 0;
        
    always @(posedge pwmclk)
            if (counter == (compare_3_2_on * 1) || counter == (compare_3_2_off * 1)) OUTPUT_ENABLE[14] <= 1;
            else if (counter == ((compare_3_2_off * 1) + POWER_LVL) % 255 || counter == ((compare_3_2_on * 1) + POWER_LVL) % 255) OUTPUT_ENABLE[14] <= 0;
        
    always @(posedge pwmclk)
            if (counter == (compare_3_3_on * 1) || counter == (compare_3_3_off * 1)) OUTPUT_ENABLE[15] <= 1;
            else if (counter == ((compare_3_3_off * 1) + POWER_LVL) % 255 || counter == ((compare_3_3_on * 1) + POWER_LVL) % 255) OUTPUT_ENABLE[15] <= 0;
        
    always @(posedge pwmclk)
            if (counter == (compare_4_0_on * 1) || counter == (compare_4_0_off * 1)) OUTPUT_ENABLE[16] <= 1;
            else if (counter == ((compare_4_0_off * 1) + POWER_LVL) % 255 || counter == ((compare_4_0_on * 1) + POWER_LVL) % 255) OUTPUT_ENABLE[16] <= 0;
        
    always @(posedge pwmclk)
            if (counter == (compare_4_1_on * 1) || counter == (compare_4_1_off * 1)) OUTPUT_ENABLE[17] <= 1;
            else if (counter == ((compare_4_1_off * 1) + POWER_LVL) % 255 || counter == ((compare_4_1_on * 1) + POWER_LVL) % 255) OUTPUT_ENABLE[17] <= 0;
        
    always @(posedge pwmclk)
            if (counter == (compare_4_2_on * 1) || counter == (compare_4_2_off * 1)) OUTPUT_ENABLE[18] <= 1;
            else if (counter == ((compare_4_2_off * 1) + POWER_LVL) % 255 || counter == ((compare_4_2_on * 1) + POWER_LVL) % 255) OUTPUT_ENABLE[18] <= 0;
        
    always @(posedge pwmclk)
            if (counter == (compare_4_3_on * 1) || counter == (compare_4_3_off * 1)) OUTPUT_ENABLE[19] <= 1;
            else if (counter == ((compare_4_3_off * 1) + POWER_LVL) % 255 || counter == ((compare_4_3_on * 1) + POWER_LVL) % 255) OUTPUT_ENABLE[19] <= 0;
        
    always @(posedge pwmclk)
            if (counter == (compare_5_0_on * 1) || counter == (compare_5_0_off * 1)) OUTPUT_ENABLE[20] <= 1;
            else if (counter == ((compare_5_0_off * 1) + POWER_LVL) % 255 || counter == ((compare_5_0_on * 1) + POWER_LVL) % 255) OUTPUT_ENABLE[20] <= 0;
        
    always @(posedge pwmclk)
            if (counter == (compare_5_1_on * 1) || counter == (compare_5_1_off * 1)) OUTPUT_ENABLE[21] <= 1;
            else if (counter == ((compare_5_1_off * 1) + POWER_LVL) % 255 || counter == ((compare_5_1_on * 1) + POWER_LVL) % 255) OUTPUT_ENABLE[21] <= 0;
        
    always @(posedge pwmclk)
            if (counter == (compare_5_2_on * 1) || counter == (compare_5_2_off * 1)) OUTPUT_ENABLE[22] <= 1;
            else if (counter == ((compare_5_2_off * 1) + POWER_LVL) % 255 || counter == ((compare_5_2_on * 1) + POWER_LVL) % 255) OUTPUT_ENABLE[22] <= 0;
        
    always @(posedge pwmclk)
            if (counter == (compare_5_3_on * 1) || counter == (compare_5_3_off * 1)) OUTPUT_ENABLE[23] <= 1;
            else if (counter == ((compare_5_3_off * 1) + POWER_LVL) % 255 || counter == ((compare_5_3_on * 1) + POWER_LVL) % 255) OUTPUT_ENABLE[23] <= 0;
        
    always @(posedge pwmclk)
            if (counter == (compare_6_0_on * 1) || counter == (compare_6_0_off * 1)) OUTPUT_ENABLE[24] <= 1;
            else if (counter == ((compare_6_0_off * 1) + POWER_LVL) % 255 || counter == ((compare_6_0_on * 1) + POWER_LVL) % 255) OUTPUT_ENABLE[24] <= 0;
        
    always @(posedge pwmclk)
            if (counter == (compare_6_1_on * 1) || counter == (compare_6_1_off * 1)) OUTPUT_ENABLE[25] <= 1;
            else if (counter == ((compare_6_1_off * 1) + POWER_LVL) % 255 || counter == ((compare_6_1_on * 1) + POWER_LVL) % 255) OUTPUT_ENABLE[25] <= 0;
        
    always @(posedge pwmclk)
            if (counter == (compare_6_2_on * 1) || counter == (compare_6_2_off * 1)) OUTPUT_ENABLE[26] <= 1;
            else if (counter == ((compare_6_2_off * 1) + POWER_LVL) % 255 || counter == ((compare_6_2_on * 1) + POWER_LVL) % 255) OUTPUT_ENABLE[26] <= 0;
        
    always @(posedge pwmclk)
            if (counter == (compare_6_3_on * 1) || counter == (compare_6_3_off * 1)) OUTPUT_ENABLE[27] <= 1;
            else if (counter == ((compare_6_3_off * 1) + POWER_LVL) % 255 || counter == ((compare_6_3_on * 1) + POWER_LVL) % 255) OUTPUT_ENABLE[27] <= 0;
        
    always @(posedge pwmclk)
            if (counter == (compare_7_0_on * 1) || counter == (compare_7_0_off * 1)) OUTPUT_ENABLE[28] <= 1;
            else if (counter == ((compare_7_0_off * 1) + POWER_LVL) % 255 || counter == ((compare_7_0_on * 1) + POWER_LVL) % 255) OUTPUT_ENABLE[28] <= 0;
        
    always @(posedge pwmclk)
            if (counter == (compare_7_1_on * 1) || counter == (compare_7_1_off * 1)) OUTPUT_ENABLE[29] <= 1;
            else if (counter == ((compare_7_1_off * 1) + POWER_LVL) % 255 || counter == ((compare_7_1_on * 1) + POWER_LVL) % 255) OUTPUT_ENABLE[29] <= 0;
        
    always @(posedge pwmclk)
            if (counter == (compare_7_2_on * 1) || counter == (compare_7_2_off * 1)) OUTPUT_ENABLE[30] <= 1;
            else if (counter == ((compare_7_2_off * 1) + POWER_LVL) % 255 || counter == ((compare_7_2_on * 1) + POWER_LVL) % 255) OUTPUT_ENABLE[30] <= 0;
        
    always @(posedge pwmclk)
            if (counter == (compare_7_3_on * 1) || counter == (compare_7_3_off * 1)) OUTPUT_ENABLE[31] <= 1;
            else if (counter == ((compare_7_3_off * 1) + POWER_LVL) % 255 || counter == ((compare_7_3_on * 1) + POWER_LVL) % 255) OUTPUT_ENABLE[31] <= 0;
        
    always @(posedge pwmclk)
            if (counter == (compare_8_0_on * 1) || counter == (compare_8_0_off * 1)) OUTPUT_ENABLE[32] <= 1;
            else if (counter == ((compare_8_0_off * 1) + POWER_LVL) % 255 || counter == ((compare_8_0_on * 1) + POWER_LVL) % 255) OUTPUT_ENABLE[32] <= 0;
        
    always @(posedge pwmclk)
            if (counter == (compare_8_1_on * 1) || counter == (compare_8_1_off * 1)) OUTPUT_ENABLE[33] <= 1;
            else if (counter == ((compare_8_1_off * 1) + POWER_LVL) % 255 || counter == ((compare_8_1_on * 1) + POWER_LVL) % 255) OUTPUT_ENABLE[33] <= 0;
        
    always @(posedge pwmclk)
            if (counter == (compare_8_2_on * 1) || counter == (compare_8_2_off * 1)) OUTPUT_ENABLE[34] <= 1;
            else if (counter == ((compare_8_2_off * 1) + POWER_LVL) % 255 || counter == ((compare_8_2_on * 1) + POWER_LVL) % 255) OUTPUT_ENABLE[34] <= 0;
        
    always @(posedge pwmclk)
            if (counter == (compare_8_3_on * 1) || counter == (compare_8_3_off * 1)) OUTPUT_ENABLE[35] <= 1;
            else if (counter == ((compare_8_3_off * 1) + POWER_LVL) % 255 || counter == ((compare_8_3_on * 1) + POWER_LVL) % 255) OUTPUT_ENABLE[35] <= 0;
        
    always @(posedge pwmclk)
            if (counter == (compare_9_0_on * 1) || counter == (compare_9_0_off * 1)) OUTPUT_ENABLE[36] <= 1;
            else if (counter == ((compare_9_0_off * 1) + POWER_LVL) % 255 || counter == ((compare_9_0_on * 1) + POWER_LVL) % 255) OUTPUT_ENABLE[36] <= 0;
        
    always @(posedge pwmclk)
            if (counter == (compare_9_1_on * 1) || counter == (compare_9_1_off * 1)) OUTPUT_ENABLE[37] <= 1;
            else if (counter == ((compare_9_1_off * 1) + POWER_LVL) % 255 || counter == ((compare_9_1_on * 1) + POWER_LVL) % 255) OUTPUT_ENABLE[37] <= 0;
        
    always @(posedge pwmclk)
            if (counter == (compare_9_2_on * 1) || counter == (compare_9_2_off * 1)) OUTPUT_ENABLE[38] <= 1;
            else if (counter == ((compare_9_2_off * 1) + POWER_LVL) % 255 || counter == ((compare_9_2_on * 1) + POWER_LVL) % 255) OUTPUT_ENABLE[38] <= 0;
        
    always @(posedge pwmclk)
            if (counter == (compare_9_3_on * 1) || counter == (compare_9_3_off * 1)) OUTPUT_ENABLE[39] <= 1;
            else if (counter == ((compare_9_3_off * 1) + POWER_LVL) % 255 || counter == ((compare_9_3_on * 1) + POWER_LVL) % 255) OUTPUT_ENABLE[39] <= 0;
        
    always @(posedge pwmclk)
            if (counter == (compare_10_0_on * 1) || counter == (compare_10_0_off * 1)) OUTPUT_ENABLE[40] <= 1;
            else if (counter == ((compare_10_0_off * 1) + POWER_LVL) % 255 || counter == ((compare_10_0_on * 1) + POWER_LVL) % 255) OUTPUT_ENABLE[40] <= 0;
        
    always @(posedge pwmclk)
            if (counter == (compare_10_1_on * 1) || counter == (compare_10_1_off * 1)) OUTPUT_ENABLE[41] <= 1;
            else if (counter == ((compare_10_1_off * 1) + POWER_LVL) % 255 || counter == ((compare_10_1_on * 1) + POWER_LVL) % 255) OUTPUT_ENABLE[41] <= 0;
        
    always @(posedge pwmclk)
            if (counter == (compare_10_2_on * 1) || counter == (compare_10_2_off * 1)) OUTPUT_ENABLE[42] <= 1;
            else if (counter == ((compare_10_2_off * 1) + POWER_LVL) % 255 || counter == ((compare_10_2_on * 1) + POWER_LVL) % 255) OUTPUT_ENABLE[42] <= 0;
        
    always @(posedge pwmclk)
            if (counter == (compare_10_3_on * 1) || counter == (compare_10_3_off * 1)) OUTPUT_ENABLE[43] <= 1;
            else if (counter == ((compare_10_3_off * 1) + POWER_LVL) % 255 || counter == ((compare_10_3_on * 1) + POWER_LVL) % 255) OUTPUT_ENABLE[43] <= 0;
        
    always @(posedge pwmclk)
            if (counter == (compare_11_0_on * 1) || counter == (compare_11_0_off * 1)) OUTPUT_ENABLE[44] <= 1;
            else if (counter == ((compare_11_0_off * 1) + POWER_LVL) % 255 || counter == ((compare_11_0_on * 1) + POWER_LVL) % 255) OUTPUT_ENABLE[44] <= 0;
        
    always @(posedge pwmclk)
            if (counter == (compare_11_1_on * 1) || counter == (compare_11_1_off * 1)) OUTPUT_ENABLE[45] <= 1;
            else if (counter == ((compare_11_1_off * 1) + POWER_LVL) % 255 || counter == ((compare_11_1_on * 1) + POWER_LVL) % 255) OUTPUT_ENABLE[45] <= 0;
        
    always @(posedge pwmclk)
            if (counter == (compare_11_2_on * 1) || counter == (compare_11_2_off * 1)) OUTPUT_ENABLE[46] <= 1;
            else if (counter == ((compare_11_2_off * 1) + POWER_LVL) % 255 || counter == ((compare_11_2_on * 1) + POWER_LVL) % 255) OUTPUT_ENABLE[46] <= 0;
        
    always @(posedge pwmclk)
            if (counter == (compare_11_3_on * 1) || counter == (compare_11_3_off * 1)) OUTPUT_ENABLE[47] <= 1;
            else if (counter == ((compare_11_3_off * 1) + POWER_LVL) % 255 || counter == ((compare_11_3_on * 1) + POWER_LVL) % 255) OUTPUT_ENABLE[47] <= 0;
        
    always @(posedge pwmclk)
            if (counter == (compare_12_0_on * 1) || counter == (compare_12_0_off * 1)) OUTPUT_ENABLE[48] <= 1;
            else if (counter == ((compare_12_0_off * 1) + POWER_LVL) % 255 || counter == ((compare_12_0_on * 1) + POWER_LVL) % 255) OUTPUT_ENABLE[48] <= 0;
        
    always @(posedge pwmclk)
            if (counter == (compare_12_1_on * 1) || counter == (compare_12_1_off * 1)) OUTPUT_ENABLE[49] <= 1;
            else if (counter == ((compare_12_1_off * 1) + POWER_LVL) % 255 || counter == ((compare_12_1_on * 1) + POWER_LVL) % 255) OUTPUT_ENABLE[49] <= 0;
        
    always @(posedge pwmclk)
            if (counter == (compare_12_2_on * 1) || counter == (compare_12_2_off * 1)) OUTPUT_ENABLE[50] <= 1;
            else if (counter == ((compare_12_2_off * 1) + POWER_LVL) % 255 || counter == ((compare_12_2_on * 1) + POWER_LVL) % 255) OUTPUT_ENABLE[50] <= 0;
        
    always @(posedge pwmclk)
            if (counter == (compare_12_3_on * 1) || counter == (compare_12_3_off * 1)) OUTPUT_ENABLE[51] <= 1;
            else if (counter == ((compare_12_3_off * 1) + POWER_LVL) % 255 || counter == ((compare_12_3_on * 1) + POWER_LVL) % 255) OUTPUT_ENABLE[51] <= 0;
        
    always @(posedge pwmclk)
            if (counter == (compare_13_0_on * 1) || counter == (compare_13_0_off * 1)) OUTPUT_ENABLE[52] <= 1;
            else if (counter == ((compare_13_0_off * 1) + POWER_LVL) % 255 || counter == ((compare_13_0_on * 1) + POWER_LVL) % 255) OUTPUT_ENABLE[52] <= 0;
        
    always @(posedge pwmclk)
            if (counter == (compare_13_1_on * 1) || counter == (compare_13_1_off * 1)) OUTPUT_ENABLE[53] <= 1;
            else if (counter == ((compare_13_1_off * 1) + POWER_LVL) % 255 || counter == ((compare_13_1_on * 1) + POWER_LVL) % 255) OUTPUT_ENABLE[53] <= 0;
        
    always @(posedge pwmclk)
            if (counter == (compare_13_2_on * 1) || counter == (compare_13_2_off * 1)) OUTPUT_ENABLE[54] <= 1;
            else if (counter == ((compare_13_2_off * 1) + POWER_LVL) % 255 || counter == ((compare_13_2_on * 1) + POWER_LVL) % 255) OUTPUT_ENABLE[54] <= 0;
        
    always @(posedge pwmclk)
            if (counter == (compare_13_3_on * 1) || counter == (compare_13_3_off * 1)) OUTPUT_ENABLE[55] <= 1;
            else if (counter == ((compare_13_3_off * 1) + POWER_LVL) % 255 || counter == ((compare_13_3_on * 1) + POWER_LVL) % 255) OUTPUT_ENABLE[55] <= 0;
        
    always @(posedge pwmclk)
            if (counter == (compare_14_0_on * 1) || counter == (compare_14_0_off * 1)) OUTPUT_ENABLE[56] <= 1;
            else if (counter == ((compare_14_0_off * 1) + POWER_LVL) % 255 || counter == ((compare_14_0_on * 1) + POWER_LVL) % 255) OUTPUT_ENABLE[56] <= 0;
        
    always @(posedge pwmclk)
            if (counter == (compare_14_1_on * 1) || counter == (compare_14_1_off * 1)) OUTPUT_ENABLE[57] <= 1;
            else if (counter == ((compare_14_1_off * 1) + POWER_LVL) % 255 || counter == ((compare_14_1_on * 1) + POWER_LVL) % 255) OUTPUT_ENABLE[57] <= 0;
        
    always @(posedge pwmclk)
            if (counter == (compare_14_2_on * 1) || counter == (compare_14_2_off * 1)) OUTPUT_ENABLE[58] <= 1;
            else if (counter == ((compare_14_2_off * 1) + POWER_LVL) % 255 || counter == ((compare_14_2_on * 1) + POWER_LVL) % 255) OUTPUT_ENABLE[58] <= 0;
        
    always @(posedge pwmclk)
            if (counter == (compare_14_3_on * 1) || counter == (compare_14_3_off * 1)) OUTPUT_ENABLE[59] <= 1;
            else if (counter == ((compare_14_3_off * 1) + POWER_LVL) % 255 || counter == ((compare_14_3_on * 1) + POWER_LVL) % 255) OUTPUT_ENABLE[59] <= 0;
        
    always @(posedge pwmclk)
            if (counter == (compare_15_0_on * 1) || counter == (compare_15_0_off * 1)) OUTPUT_ENABLE[60] <= 1;
            else if (counter == ((compare_15_0_off * 1) + POWER_LVL) % 255 || counter == ((compare_15_0_on * 1) + POWER_LVL) % 255) OUTPUT_ENABLE[60] <= 0;
        
    always @(posedge pwmclk)
            if (counter == (compare_15_1_on * 1) || counter == (compare_15_1_off * 1)) OUTPUT_ENABLE[61] <= 1;
            else if (counter == ((compare_15_1_off * 1) + POWER_LVL) % 255 || counter == ((compare_15_1_on * 1) + POWER_LVL) % 255) OUTPUT_ENABLE[61] <= 0;
        
    always @(posedge pwmclk)
            if (counter == (compare_15_2_on * 1) || counter == (compare_15_2_off * 1)) OUTPUT_ENABLE[62] <= 1;
            else if (counter == ((compare_15_2_off * 1) + POWER_LVL) % 255 || counter == ((compare_15_2_on * 1) + POWER_LVL) % 255) OUTPUT_ENABLE[62] <= 0;
        
    always @(posedge pwmclk)
            if (counter == (compare_15_3_on * 1) || counter == (compare_15_3_off * 1)) OUTPUT_ENABLE[63] <= 1;
            else if (counter == ((compare_15_3_off * 1) + POWER_LVL) % 255 || counter == ((compare_15_3_on * 1) + POWER_LVL) % 255) OUTPUT_ENABLE[63] <= 0;
        
    always @(posedge pwmclk)
            if (counter == (compare_16_0_on * 1) || counter == (compare_16_0_off * 1)) OUTPUT_ENABLE[64] <= 1;
            else if (counter == ((compare_16_0_off * 1) + POWER_LVL) % 255 || counter == ((compare_16_0_on * 1) + POWER_LVL) % 255) OUTPUT_ENABLE[64] <= 0;
        
    always @(posedge pwmclk)
            if (counter == (compare_16_1_on * 1) || counter == (compare_16_1_off * 1)) OUTPUT_ENABLE[65] <= 1;
            else if (counter == ((compare_16_1_off * 1) + POWER_LVL) % 255 || counter == ((compare_16_1_on * 1) + POWER_LVL) % 255) OUTPUT_ENABLE[65] <= 0;
        
    always @(posedge pwmclk)
            if (counter == (compare_16_2_on * 1) || counter == (compare_16_2_off * 1)) OUTPUT_ENABLE[66] <= 1;
            else if (counter == ((compare_16_2_off * 1) + POWER_LVL) % 255 || counter == ((compare_16_2_on * 1) + POWER_LVL) % 255) OUTPUT_ENABLE[66] <= 0;
        
    always @(posedge pwmclk)
            if (counter == (compare_16_3_on * 1) || counter == (compare_16_3_off * 1)) OUTPUT_ENABLE[67] <= 1;
            else if (counter == ((compare_16_3_off * 1) + POWER_LVL) % 255 || counter == ((compare_16_3_on * 1) + POWER_LVL) % 255) OUTPUT_ENABLE[67] <= 0;
        
    always @(posedge pwmclk)
            if (counter == (compare_17_0_on * 1) || counter == (compare_17_0_off * 1)) OUTPUT_ENABLE[68] <= 1;
            else if (counter == ((compare_17_0_off * 1) + POWER_LVL) % 255 || counter == ((compare_17_0_on * 1) + POWER_LVL) % 255) OUTPUT_ENABLE[68] <= 0;
        
    always @(posedge pwmclk)
            if (counter == (compare_17_1_on * 1) || counter == (compare_17_1_off * 1)) OUTPUT_ENABLE[69] <= 1;
            else if (counter == ((compare_17_1_off * 1) + POWER_LVL) % 255 || counter == ((compare_17_1_on * 1) + POWER_LVL) % 255) OUTPUT_ENABLE[69] <= 0;
        
    always @(posedge pwmclk)
            if (counter == (compare_17_2_on * 1) || counter == (compare_17_2_off * 1)) OUTPUT_ENABLE[70] <= 1;
            else if (counter == ((compare_17_2_off * 1) + POWER_LVL) % 255 || counter == ((compare_17_2_on * 1) + POWER_LVL) % 255) OUTPUT_ENABLE[70] <= 0;
        
    always @(posedge pwmclk)
            if (counter == (compare_17_3_on * 1) || counter == (compare_17_3_off * 1)) OUTPUT_ENABLE[71] <= 1;
            else if (counter == ((compare_17_3_off * 1) + POWER_LVL) % 255 || counter == ((compare_17_3_on * 1) + POWER_LVL) % 255) OUTPUT_ENABLE[71] <= 0;
        
    always @(posedge pwmclk)
            if (counter == (compare_18_0_on * 1) || counter == (compare_18_0_off * 1)) OUTPUT_ENABLE[72] <= 1;
            else if (counter == ((compare_18_0_off * 1) + POWER_LVL) % 255 || counter == ((compare_18_0_on * 1) + POWER_LVL) % 255) OUTPUT_ENABLE[72] <= 0;
        
    always @(posedge pwmclk)
            if (counter == (compare_18_1_on * 1) || counter == (compare_18_1_off * 1)) OUTPUT_ENABLE[73] <= 1;
            else if (counter == ((compare_18_1_off * 1) + POWER_LVL) % 255 || counter == ((compare_18_1_on * 1) + POWER_LVL) % 255) OUTPUT_ENABLE[73] <= 0;
        
    always @(posedge pwmclk)
            if (counter == (compare_18_2_on * 1) || counter == (compare_18_2_off * 1)) OUTPUT_ENABLE[74] <= 1;
            else if (counter == ((compare_18_2_off * 1) + POWER_LVL) % 255 || counter == ((compare_18_2_on * 1) + POWER_LVL) % 255) OUTPUT_ENABLE[74] <= 0;
        
    always @(posedge pwmclk)
            if (counter == (compare_18_3_on * 1) || counter == (compare_18_3_off * 1)) OUTPUT_ENABLE[75] <= 1;
            else if (counter == ((compare_18_3_off * 1) + POWER_LVL) % 255 || counter == ((compare_18_3_on * 1) + POWER_LVL) % 255) OUTPUT_ENABLE[75] <= 0;
        
    always @(posedge pwmclk)
            if (counter == (compare_19_0_on * 1) || counter == (compare_19_0_off * 1)) OUTPUT_ENABLE[76] <= 1;
            else if (counter == ((compare_19_0_off * 1) + POWER_LVL) % 255 || counter == ((compare_19_0_on * 1) + POWER_LVL) % 255) OUTPUT_ENABLE[76] <= 0;
        
    always @(posedge pwmclk)
            if (counter == (compare_19_1_on * 1) || counter == (compare_19_1_off * 1)) OUTPUT_ENABLE[77] <= 1;
            else if (counter == ((compare_19_1_off * 1) + POWER_LVL) % 255 || counter == ((compare_19_1_on * 1) + POWER_LVL) % 255) OUTPUT_ENABLE[77] <= 0;
        
    always @(posedge pwmclk)
            if (counter == (compare_19_2_on * 1) || counter == (compare_19_2_off * 1)) OUTPUT_ENABLE[78] <= 1;
            else if (counter == ((compare_19_2_off * 1) + POWER_LVL) % 255 || counter == ((compare_19_2_on * 1) + POWER_LVL) % 255) OUTPUT_ENABLE[78] <= 0;
        
    always @(posedge pwmclk)
            if (counter == (compare_19_3_on * 1) || counter == (compare_19_3_off * 1)) OUTPUT_ENABLE[79] <= 1;
            else if (counter == ((compare_19_3_off * 1) + POWER_LVL) % 255 || counter == ((compare_19_3_on * 1) + POWER_LVL) % 255) OUTPUT_ENABLE[79] <= 0;
        
    always @(posedge pwmclk)
            if (counter == (compare_20_0_on * 1) || counter == (compare_20_0_off * 1)) OUTPUT_ENABLE[80] <= 1;
            else if (counter == ((compare_20_0_off * 1) + POWER_LVL) % 255 || counter == ((compare_20_0_on * 1) + POWER_LVL) % 255) OUTPUT_ENABLE[80] <= 0;
        
    always @(posedge pwmclk)
            if (counter == (compare_20_1_on * 1) || counter == (compare_20_1_off * 1)) OUTPUT_ENABLE[81] <= 1;
            else if (counter == ((compare_20_1_off * 1) + POWER_LVL) % 255 || counter == ((compare_20_1_on * 1) + POWER_LVL) % 255) OUTPUT_ENABLE[81] <= 0;
        
    always @(posedge pwmclk)
            if (counter == (compare_20_2_on * 1) || counter == (compare_20_2_off * 1)) OUTPUT_ENABLE[82] <= 1;
            else if (counter == ((compare_20_2_off * 1) + POWER_LVL) % 255 || counter == ((compare_20_2_on * 1) + POWER_LVL) % 255) OUTPUT_ENABLE[82] <= 0;
        
    always @(posedge pwmclk)
            if (counter == (compare_20_3_on * 1) || counter == (compare_20_3_off * 1)) OUTPUT_ENABLE[83] <= 1;
            else if (counter == ((compare_20_3_off * 1) + POWER_LVL) % 255 || counter == ((compare_20_3_on * 1) + POWER_LVL) % 255) OUTPUT_ENABLE[83] <= 0;
        
    always @(posedge pwmclk)
            if (counter == (compare_21_0_on * 1) || counter == (compare_21_0_off * 1)) OUTPUT_ENABLE[84] <= 1;
            else if (counter == ((compare_21_0_off * 1) + POWER_LVL) % 255 || counter == ((compare_21_0_on * 1) + POWER_LVL) % 255) OUTPUT_ENABLE[84] <= 0;
        
    always @(posedge pwmclk)
            if (counter == (compare_21_1_on * 1) || counter == (compare_21_1_off * 1)) OUTPUT_ENABLE[85] <= 1;
            else if (counter == ((compare_21_1_off * 1) + POWER_LVL) % 255 || counter == ((compare_21_1_on * 1) + POWER_LVL) % 255) OUTPUT_ENABLE[85] <= 0;
        
    always @(posedge pwmclk)
            if (counter == (compare_21_2_on * 1) || counter == (compare_21_2_off * 1)) OUTPUT_ENABLE[86] <= 1;
            else if (counter == ((compare_21_2_off * 1) + POWER_LVL) % 255 || counter == ((compare_21_2_on * 1) + POWER_LVL) % 255) OUTPUT_ENABLE[86] <= 0;
        
    always @(posedge pwmclk)
            if (counter == (compare_21_3_on * 1) || counter == (compare_21_3_off * 1)) OUTPUT_ENABLE[87] <= 1;
            else if (counter == ((compare_21_3_off * 1) + POWER_LVL) % 255 || counter == ((compare_21_3_on * 1) + POWER_LVL) % 255) OUTPUT_ENABLE[87] <= 0;
        
    always @(posedge pwmclk)
            if (counter == (compare_22_0_on * 1) || counter == (compare_22_0_off * 1)) OUTPUT_ENABLE[88] <= 1;
            else if (counter == ((compare_22_0_off * 1) + POWER_LVL) % 255 || counter == ((compare_22_0_on * 1) + POWER_LVL) % 255) OUTPUT_ENABLE[88] <= 0;
        
    always @(posedge pwmclk)
            if (counter == (compare_22_1_on * 1) || counter == (compare_22_1_off * 1)) OUTPUT_ENABLE[89] <= 1;
            else if (counter == ((compare_22_1_off * 1) + POWER_LVL) % 255 || counter == ((compare_22_1_on * 1) + POWER_LVL) % 255) OUTPUT_ENABLE[89] <= 0;
        
    always @(posedge pwmclk)
            if (counter == (compare_22_2_on * 1) || counter == (compare_22_2_off * 1)) OUTPUT_ENABLE[90] <= 1;
            else if (counter == ((compare_22_2_off * 1) + POWER_LVL) % 255 || counter == ((compare_22_2_on * 1) + POWER_LVL) % 255) OUTPUT_ENABLE[90] <= 0;
        
    always @(posedge pwmclk)
            if (counter == (compare_22_3_on * 1) || counter == (compare_22_3_off * 1)) OUTPUT_ENABLE[91] <= 1;
            else if (counter == ((compare_22_3_off * 1) + POWER_LVL) % 255 || counter == ((compare_22_3_on * 1) + POWER_LVL) % 255) OUTPUT_ENABLE[91] <= 0;
        
    always @(posedge pwmclk)
            if (counter == (compare_23_0_on * 1) || counter == (compare_23_0_off * 1)) OUTPUT_ENABLE[92] <= 1;
            else if (counter == ((compare_23_0_off * 1) + POWER_LVL) % 255 || counter == ((compare_23_0_on * 1) + POWER_LVL) % 255) OUTPUT_ENABLE[92] <= 0;
        
    always @(posedge pwmclk)
            if (counter == (compare_23_1_on * 1) || counter == (compare_23_1_off * 1)) OUTPUT_ENABLE[93] <= 1;
            else if (counter == ((compare_23_1_off * 1) + POWER_LVL) % 255 || counter == ((compare_23_1_on * 1) + POWER_LVL) % 255) OUTPUT_ENABLE[93] <= 0;
        
    always @(posedge pwmclk)
            if (counter == (compare_23_2_on * 1) || counter == (compare_23_2_off * 1)) OUTPUT_ENABLE[94] <= 1;
            else if (counter == ((compare_23_2_off * 1) + POWER_LVL) % 255 || counter == ((compare_23_2_on * 1) + POWER_LVL) % 255) OUTPUT_ENABLE[94] <= 0;
        
    always @(posedge pwmclk)
            if (counter == (compare_23_3_on * 1) || counter == (compare_23_3_off * 1)) OUTPUT_ENABLE[95] <= 1;
            else if (counter == ((compare_23_3_off * 1) + POWER_LVL) % 255 || counter == ((compare_23_3_on * 1) + POWER_LVL) % 255) OUTPUT_ENABLE[95] <= 0;
        
    always @(posedge pwmclk)
            if (counter == (compare_24_0_on * 1) || counter == (compare_24_0_off * 1)) OUTPUT_ENABLE[96] <= 1;
            else if (counter == ((compare_24_0_off * 1) + POWER_LVL) % 255 || counter == ((compare_24_0_on * 1) + POWER_LVL) % 255) OUTPUT_ENABLE[96] <= 0;
        
    always @(posedge pwmclk)
            if (counter == (compare_24_1_on * 1) || counter == (compare_24_1_off * 1)) OUTPUT_ENABLE[97] <= 1;
            else if (counter == ((compare_24_1_off * 1) + POWER_LVL) % 255 || counter == ((compare_24_1_on * 1) + POWER_LVL) % 255) OUTPUT_ENABLE[97] <= 0;
        
    always @(posedge pwmclk)
            if (counter == (compare_24_2_on * 1) || counter == (compare_24_2_off * 1)) OUTPUT_ENABLE[98] <= 1;
            else if (counter == ((compare_24_2_off * 1) + POWER_LVL) % 255 || counter == ((compare_24_2_on * 1) + POWER_LVL) % 255) OUTPUT_ENABLE[98] <= 0;
        
    always @(posedge pwmclk)
            if (counter == (compare_24_3_on * 1) || counter == (compare_24_3_off * 1)) OUTPUT_ENABLE[99] <= 1;
            else if (counter == ((compare_24_3_off * 1) + POWER_LVL) % 255 || counter == ((compare_24_3_on * 1) + POWER_LVL) % 255) OUTPUT_ENABLE[99] <= 0;
        
    always @(posedge pwmclk)
            if (counter == (compare_25_0_on * 1) || counter == (compare_25_0_off * 1)) OUTPUT_ENABLE[100] <= 1;
            else if (counter == ((compare_25_0_off * 1) + POWER_LVL) % 255 || counter == ((compare_25_0_on * 1) + POWER_LVL) % 255) OUTPUT_ENABLE[100] <= 0;
        
    always @(posedge pwmclk)
            if (counter == (compare_25_1_on * 1) || counter == (compare_25_1_off * 1)) OUTPUT_ENABLE[101] <= 1;
            else if (counter == ((compare_25_1_off * 1) + POWER_LVL) % 255 || counter == ((compare_25_1_on * 1) + POWER_LVL) % 255) OUTPUT_ENABLE[101] <= 0;
        
    always @(posedge pwmclk)
            if (counter == (compare_25_2_on * 1) || counter == (compare_25_2_off * 1)) OUTPUT_ENABLE[102] <= 1;
            else if (counter == ((compare_25_2_off * 1) + POWER_LVL) % 255 || counter == ((compare_25_2_on * 1) + POWER_LVL) % 255) OUTPUT_ENABLE[102] <= 0;
        
    always @(posedge pwmclk)
            if (counter == (compare_25_3_on * 1) || counter == (compare_25_3_off * 1)) OUTPUT_ENABLE[103] <= 1;
            else if (counter == ((compare_25_3_off * 1) + POWER_LVL) % 255 || counter == ((compare_25_3_on * 1) + POWER_LVL) % 255) OUTPUT_ENABLE[103] <= 0;
        
    always @(posedge pwmclk)
            if (counter == (compare_26_0_on * 1) || counter == (compare_26_0_off * 1)) OUTPUT_ENABLE[104] <= 1;
            else if (counter == ((compare_26_0_off * 1) + POWER_LVL) % 255 || counter == ((compare_26_0_on * 1) + POWER_LVL) % 255) OUTPUT_ENABLE[104] <= 0;
        
    always @(posedge pwmclk)
            if (counter == (compare_26_1_on * 1) || counter == (compare_26_1_off * 1)) OUTPUT_ENABLE[105] <= 1;
            else if (counter == ((compare_26_1_off * 1) + POWER_LVL) % 255 || counter == ((compare_26_1_on * 1) + POWER_LVL) % 255) OUTPUT_ENABLE[105] <= 0;
        
    always @(posedge pwmclk)
            if (counter == (compare_26_2_on * 1) || counter == (compare_26_2_off * 1)) OUTPUT_ENABLE[106] <= 1;
            else if (counter == ((compare_26_2_off * 1) + POWER_LVL) % 255 || counter == ((compare_26_2_on * 1) + POWER_LVL) % 255) OUTPUT_ENABLE[106] <= 0;
        
    always @(posedge pwmclk)
            if (counter == (compare_26_3_on * 1) || counter == (compare_26_3_off * 1)) OUTPUT_ENABLE[107] <= 1;
            else if (counter == ((compare_26_3_off * 1) + POWER_LVL) % 255 || counter == ((compare_26_3_on * 1) + POWER_LVL) % 255) OUTPUT_ENABLE[107] <= 0;
        
    always @(posedge pwmclk)
            if (counter == (compare_27_0_on * 1) || counter == (compare_27_0_off * 1)) OUTPUT_ENABLE[108] <= 1;
            else if (counter == ((compare_27_0_off * 1) + POWER_LVL) % 255 || counter == ((compare_27_0_on * 1) + POWER_LVL) % 255) OUTPUT_ENABLE[108] <= 0;
        
    always @(posedge pwmclk)
            if (counter == (compare_27_1_on * 1) || counter == (compare_27_1_off * 1)) OUTPUT_ENABLE[109] <= 1;
            else if (counter == ((compare_27_1_off * 1) + POWER_LVL) % 255 || counter == ((compare_27_1_on * 1) + POWER_LVL) % 255) OUTPUT_ENABLE[109] <= 0;
        
    always @(posedge pwmclk)
            if (counter == (compare_27_2_on * 1) || counter == (compare_27_2_off * 1)) OUTPUT_ENABLE[110] <= 1;
            else if (counter == ((compare_27_2_off * 1) + POWER_LVL) % 255 || counter == ((compare_27_2_on * 1) + POWER_LVL) % 255) OUTPUT_ENABLE[110] <= 0;
        
    always @(posedge pwmclk)
            if (counter == (compare_27_3_on * 1) || counter == (compare_27_3_off * 1)) OUTPUT_ENABLE[111] <= 1;
            else if (counter == ((compare_27_3_off * 1) + POWER_LVL) % 255 || counter == ((compare_27_3_on * 1) + POWER_LVL) % 255) OUTPUT_ENABLE[111] <= 0;
        
    always @(posedge pwmclk)
            if (counter == (compare_28_0_on * 1) || counter == (compare_28_0_off * 1)) OUTPUT_ENABLE[112] <= 1;
            else if (counter == ((compare_28_0_off * 1) + POWER_LVL) % 255 || counter == ((compare_28_0_on * 1) + POWER_LVL) % 255) OUTPUT_ENABLE[112] <= 0;
        
    always @(posedge pwmclk)
            if (counter == (compare_28_1_on * 1) || counter == (compare_28_1_off * 1)) OUTPUT_ENABLE[113] <= 1;
            else if (counter == ((compare_28_1_off * 1) + POWER_LVL) % 255 || counter == ((compare_28_1_on * 1) + POWER_LVL) % 255) OUTPUT_ENABLE[113] <= 0;
        
    always @(posedge pwmclk)
            if (counter == (compare_28_2_on * 1) || counter == (compare_28_2_off * 1)) OUTPUT_ENABLE[114] <= 1;
            else if (counter == ((compare_28_2_off * 1) + POWER_LVL) % 255 || counter == ((compare_28_2_on * 1) + POWER_LVL) % 255) OUTPUT_ENABLE[114] <= 0;
        
    always @(posedge pwmclk)
            if (counter == (compare_28_3_on * 1) || counter == (compare_28_3_off * 1)) OUTPUT_ENABLE[115] <= 1;
            else if (counter == ((compare_28_3_off * 1) + POWER_LVL) % 255 || counter == ((compare_28_3_on * 1) + POWER_LVL) % 255) OUTPUT_ENABLE[115] <= 0;
        
    always @(posedge pwmclk)
            if (counter == (compare_29_0_on * 1) || counter == (compare_29_0_off * 1)) OUTPUT_ENABLE[116] <= 1;
            else if (counter == ((compare_29_0_off * 1) + POWER_LVL) % 255 || counter == ((compare_29_0_on * 1) + POWER_LVL) % 255) OUTPUT_ENABLE[116] <= 0;
        
    always @(posedge pwmclk)
            if (counter == (compare_29_1_on * 1) || counter == (compare_29_1_off * 1)) OUTPUT_ENABLE[117] <= 1;
            else if (counter == ((compare_29_1_off * 1) + POWER_LVL) % 255 || counter == ((compare_29_1_on * 1) + POWER_LVL) % 255) OUTPUT_ENABLE[117] <= 0;
        
    always @(posedge pwmclk)
            if (counter == (compare_29_2_on * 1) || counter == (compare_29_2_off * 1)) OUTPUT_ENABLE[118] <= 1;
            else if (counter == ((compare_29_2_off * 1) + POWER_LVL) % 255 || counter == ((compare_29_2_on * 1) + POWER_LVL) % 255) OUTPUT_ENABLE[118] <= 0;
        
    always @(posedge pwmclk)
            if (counter == (compare_29_3_on * 1) || counter == (compare_29_3_off * 1)) OUTPUT_ENABLE[119] <= 1;
            else if (counter == ((compare_29_3_off * 1) + POWER_LVL) % 255 || counter == ((compare_29_3_on * 1) + POWER_LVL) % 255) OUTPUT_ENABLE[119] <= 0;
        
    always @(posedge pwmclk)
            if (counter == (compare_30_0_on * 1) || counter == (compare_30_0_off * 1)) OUTPUT_ENABLE[120] <= 1;
            else if (counter == ((compare_30_0_off * 1) + POWER_LVL) % 255 || counter == ((compare_30_0_on * 1) + POWER_LVL) % 255) OUTPUT_ENABLE[120] <= 0;
        
    always @(posedge pwmclk)
            if (counter == (compare_30_1_on * 1) || counter == (compare_30_1_off * 1)) OUTPUT_ENABLE[121] <= 1;
            else if (counter == ((compare_30_1_off * 1) + POWER_LVL) % 255 || counter == ((compare_30_1_on * 1) + POWER_LVL) % 255) OUTPUT_ENABLE[121] <= 0;
        
    always @(posedge pwmclk)
            if (counter == (compare_30_2_on * 1) || counter == (compare_30_2_off * 1)) OUTPUT_ENABLE[122] <= 1;
            else if (counter == ((compare_30_2_off * 1) + POWER_LVL) % 255 || counter == ((compare_30_2_on * 1) + POWER_LVL) % 255) OUTPUT_ENABLE[122] <= 0;
        
    always @(posedge pwmclk)
            if (counter == (compare_30_3_on * 1) || counter == (compare_30_3_off * 1)) OUTPUT_ENABLE[123] <= 1;
            else if (counter == ((compare_30_3_off * 1) + POWER_LVL) % 255 || counter == ((compare_30_3_on * 1) + POWER_LVL) % 255) OUTPUT_ENABLE[123] <= 0;
        
    always @(posedge pwmclk)
            if (counter == (compare_31_0_on * 1) || counter == (compare_31_0_off * 1)) OUTPUT_ENABLE[124] <= 1;
            else if (counter == ((compare_31_0_off * 1) + POWER_LVL) % 255 || counter == ((compare_31_0_on * 1) + POWER_LVL) % 255) OUTPUT_ENABLE[124] <= 0;
        
    always @(posedge pwmclk)
            if (counter == (compare_31_1_on * 1) || counter == (compare_31_1_off * 1)) OUTPUT_ENABLE[125] <= 1;
            else if (counter == ((compare_31_1_off * 1) + POWER_LVL) % 255 || counter == ((compare_31_1_on * 1) + POWER_LVL) % 255) OUTPUT_ENABLE[125] <= 0;
        
    always @(posedge pwmclk)
            if (counter == (compare_31_2_on * 1) || counter == (compare_31_2_off * 1)) OUTPUT_ENABLE[126] <= 1;
            else if (counter == ((compare_31_2_off * 1) + POWER_LVL) % 255 || counter == ((compare_31_2_on * 1) + POWER_LVL) % 255) OUTPUT_ENABLE[126] <= 0;
        
    always @(posedge pwmclk)
            if (counter == (compare_31_3_on * 1) || counter == (compare_31_3_off * 1)) OUTPUT_ENABLE[127] <= 1;
            else if (counter == ((compare_31_3_off * 1) + POWER_LVL) % 255 || counter == ((compare_31_3_on * 1) + POWER_LVL) % 255) OUTPUT_ENABLE[127] <= 0;
        
    always @(posedge pwmclk)
            if (counter == (compare_32_0_on * 1) || counter == (compare_32_0_off * 1)) OUTPUT_ENABLE[128] <= 1;
            else if (counter == ((compare_32_0_off * 1) + POWER_LVL) % 255 || counter == ((compare_32_0_on * 1) + POWER_LVL) % 255) OUTPUT_ENABLE[128] <= 0;
        
    always @(posedge pwmclk)
            if (counter == (compare_32_1_on * 1) || counter == (compare_32_1_off * 1)) OUTPUT_ENABLE[129] <= 1;
            else if (counter == ((compare_32_1_off * 1) + POWER_LVL) % 255 || counter == ((compare_32_1_on * 1) + POWER_LVL) % 255) OUTPUT_ENABLE[129] <= 0;
        
    always @(posedge pwmclk)
            if (counter == (compare_32_2_on * 1) || counter == (compare_32_2_off * 1)) OUTPUT_ENABLE[130] <= 1;
            else if (counter == ((compare_32_2_off * 1) + POWER_LVL) % 255 || counter == ((compare_32_2_on * 1) + POWER_LVL) % 255) OUTPUT_ENABLE[130] <= 0;
        
    always @(posedge pwmclk)
            if (counter == (compare_32_3_on * 1) || counter == (compare_32_3_off * 1)) OUTPUT_ENABLE[131] <= 1;
            else if (counter == ((compare_32_3_off * 1) + POWER_LVL) % 255 || counter == ((compare_32_3_on * 1) + POWER_LVL) % 255) OUTPUT_ENABLE[131] <= 0;
        
    always @(posedge pwmclk)
            if (counter == (compare_33_0_on * 1) || counter == (compare_33_0_off * 1)) OUTPUT_ENABLE[132] <= 1;
            else if (counter == ((compare_33_0_off * 1) + POWER_LVL) % 255 || counter == ((compare_33_0_on * 1) + POWER_LVL) % 255) OUTPUT_ENABLE[132] <= 0;
        
    always @(posedge pwmclk)
            if (counter == (compare_33_1_on * 1) || counter == (compare_33_1_off * 1)) OUTPUT_ENABLE[133] <= 1;
            else if (counter == ((compare_33_1_off * 1) + POWER_LVL) % 255 || counter == ((compare_33_1_on * 1) + POWER_LVL) % 255) OUTPUT_ENABLE[133] <= 0;
        
    always @(posedge pwmclk)
            if (counter == (compare_33_2_on * 1) || counter == (compare_33_2_off * 1)) OUTPUT_ENABLE[134] <= 1;
            else if (counter == ((compare_33_2_off * 1) + POWER_LVL) % 255 || counter == ((compare_33_2_on * 1) + POWER_LVL) % 255) OUTPUT_ENABLE[134] <= 0;
        
    always @(posedge pwmclk)
            if (counter == (compare_33_3_on * 1) || counter == (compare_33_3_off * 1)) OUTPUT_ENABLE[135] <= 1;
            else if (counter == ((compare_33_3_off * 1) + POWER_LVL) % 255 || counter == ((compare_33_3_on * 1) + POWER_LVL) % 255) OUTPUT_ENABLE[135] <= 0;
        
    always @(posedge pwmclk)
            if (counter == (compare_34_0_on * 1) || counter == (compare_34_0_off * 1)) OUTPUT_ENABLE[136] <= 1;
            else if (counter == ((compare_34_0_off * 1) + POWER_LVL) % 255 || counter == ((compare_34_0_on * 1) + POWER_LVL) % 255) OUTPUT_ENABLE[136] <= 0;
        
    always @(posedge pwmclk)
            if (counter == (compare_34_1_on * 1) || counter == (compare_34_1_off * 1)) OUTPUT_ENABLE[137] <= 1;
            else if (counter == ((compare_34_1_off * 1) + POWER_LVL) % 255 || counter == ((compare_34_1_on * 1) + POWER_LVL) % 255) OUTPUT_ENABLE[137] <= 0;
        
    always @(posedge pwmclk)
            if (counter == (compare_34_2_on * 1) || counter == (compare_34_2_off * 1)) OUTPUT_ENABLE[138] <= 1;
            else if (counter == ((compare_34_2_off * 1) + POWER_LVL) % 255 || counter == ((compare_34_2_on * 1) + POWER_LVL) % 255) OUTPUT_ENABLE[138] <= 0;
        
    always @(posedge pwmclk)
            if (counter == (compare_34_3_on * 1) || counter == (compare_34_3_off * 1)) OUTPUT_ENABLE[139] <= 1;
            else if (counter == ((compare_34_3_off * 1) + POWER_LVL) % 255 || counter == ((compare_34_3_on * 1) + POWER_LVL) % 255) OUTPUT_ENABLE[139] <= 0;
        
    always @(posedge pwmclk)
            if (counter == (compare_35_0_on * 1) || counter == (compare_35_0_off * 1)) OUTPUT_ENABLE[140] <= 1;
            else if (counter == ((compare_35_0_off * 1) + POWER_LVL) % 255 || counter == ((compare_35_0_on * 1) + POWER_LVL) % 255) OUTPUT_ENABLE[140] <= 0;
        
    always @(posedge pwmclk)
            if (counter == (compare_35_1_on * 1) || counter == (compare_35_1_off * 1)) OUTPUT_ENABLE[141] <= 1;
            else if (counter == ((compare_35_1_off * 1) + POWER_LVL) % 255 || counter == ((compare_35_1_on * 1) + POWER_LVL) % 255) OUTPUT_ENABLE[141] <= 0;
        
    always @(posedge pwmclk)
            if (counter == (compare_35_2_on * 1) || counter == (compare_35_2_off * 1)) OUTPUT_ENABLE[142] <= 1;
            else if (counter == ((compare_35_2_off * 1) + POWER_LVL) % 255 || counter == ((compare_35_2_on * 1) + POWER_LVL) % 255) OUTPUT_ENABLE[142] <= 0;
        
    always @(posedge pwmclk)
            if (counter == (compare_35_3_on * 1) || counter == (compare_35_3_off * 1)) OUTPUT_ENABLE[143] <= 1;
            else if (counter == ((compare_35_3_off * 1) + POWER_LVL) % 255 || counter == ((compare_35_3_on * 1) + POWER_LVL) % 255) OUTPUT_ENABLE[143] <= 0;
        
    always @(posedge pwmclk)
            if (counter == (compare_36_0_on * 1) || counter == (compare_36_0_off * 1)) OUTPUT_ENABLE[144] <= 1;
            else if (counter == ((compare_36_0_off * 1) + POWER_LVL) % 255 || counter == ((compare_36_0_on * 1) + POWER_LVL) % 255) OUTPUT_ENABLE[144] <= 0;
        
    always @(posedge pwmclk)
            if (counter == (compare_36_1_on * 1) || counter == (compare_36_1_off * 1)) OUTPUT_ENABLE[145] <= 1;
            else if (counter == ((compare_36_1_off * 1) + POWER_LVL) % 255 || counter == ((compare_36_1_on * 1) + POWER_LVL) % 255) OUTPUT_ENABLE[145] <= 0;
        
    always @(posedge pwmclk)
            if (counter == (compare_36_2_on * 1) || counter == (compare_36_2_off * 1)) OUTPUT_ENABLE[146] <= 1;
            else if (counter == ((compare_36_2_off * 1) + POWER_LVL) % 255 || counter == ((compare_36_2_on * 1) + POWER_LVL) % 255) OUTPUT_ENABLE[146] <= 0;
        
    always @(posedge pwmclk)
            if (counter == (compare_36_3_on * 1) || counter == (compare_36_3_off * 1)) OUTPUT_ENABLE[147] <= 1;
            else if (counter == ((compare_36_3_off * 1) + POWER_LVL) % 255 || counter == ((compare_36_3_on * 1) + POWER_LVL) % 255) OUTPUT_ENABLE[147] <= 0;
        
    always @(posedge pwmclk)
            if (counter == (compare_37_0_on * 1) || counter == (compare_37_0_off * 1)) OUTPUT_ENABLE[148] <= 1;
            else if (counter == ((compare_37_0_off * 1) + POWER_LVL) % 255 || counter == ((compare_37_0_on * 1) + POWER_LVL) % 255) OUTPUT_ENABLE[148] <= 0;
        
    always @(posedge pwmclk)
            if (counter == (compare_37_1_on * 1) || counter == (compare_37_1_off * 1)) OUTPUT_ENABLE[149] <= 1;
            else if (counter == ((compare_37_1_off * 1) + POWER_LVL) % 255 || counter == ((compare_37_1_on * 1) + POWER_LVL) % 255) OUTPUT_ENABLE[149] <= 0;
        
    always @(posedge pwmclk)
            if (counter == (compare_37_2_on * 1) || counter == (compare_37_2_off * 1)) OUTPUT_ENABLE[150] <= 1;
            else if (counter == ((compare_37_2_off * 1) + POWER_LVL) % 255 || counter == ((compare_37_2_on * 1) + POWER_LVL) % 255) OUTPUT_ENABLE[150] <= 0;
        
    always @(posedge pwmclk)
            if (counter == (compare_37_3_on * 1) || counter == (compare_37_3_off * 1)) OUTPUT_ENABLE[151] <= 1;
            else if (counter == ((compare_37_3_off * 1) + POWER_LVL) % 255 || counter == ((compare_37_3_on * 1) + POWER_LVL) % 255) OUTPUT_ENABLE[151] <= 0;
        
    always @(posedge pwmclk)
            if (counter == (compare_38_0_on * 1) || counter == (compare_38_0_off * 1)) OUTPUT_ENABLE[152] <= 1;
            else if (counter == ((compare_38_0_off * 1) + POWER_LVL) % 255 || counter == ((compare_38_0_on * 1) + POWER_LVL) % 255) OUTPUT_ENABLE[152] <= 0;
        
    always @(posedge pwmclk)
            if (counter == (compare_38_1_on * 1) || counter == (compare_38_1_off * 1)) OUTPUT_ENABLE[153] <= 1;
            else if (counter == ((compare_38_1_off * 1) + POWER_LVL) % 255 || counter == ((compare_38_1_on * 1) + POWER_LVL) % 255) OUTPUT_ENABLE[153] <= 0;
        
    always @(posedge pwmclk)
            if (counter == (compare_38_2_on * 1) || counter == (compare_38_2_off * 1)) OUTPUT_ENABLE[154] <= 1;
            else if (counter == ((compare_38_2_off * 1) + POWER_LVL) % 255 || counter == ((compare_38_2_on * 1) + POWER_LVL) % 255) OUTPUT_ENABLE[154] <= 0;
        
    always @(posedge pwmclk)
            if (counter == (compare_38_3_on * 1) || counter == (compare_38_3_off * 1)) OUTPUT_ENABLE[155] <= 1;
            else if (counter == ((compare_38_3_off * 1) + POWER_LVL) % 255 || counter == ((compare_38_3_on * 1) + POWER_LVL) % 255) OUTPUT_ENABLE[155] <= 0;
        
    always @(posedge pwmclk)
            if (counter == (compare_39_0_on * 1) || counter == (compare_39_0_off * 1)) OUTPUT_ENABLE[156] <= 1;
            else if (counter == ((compare_39_0_off * 1) + POWER_LVL) % 255 || counter == ((compare_39_0_on * 1) + POWER_LVL) % 255) OUTPUT_ENABLE[156] <= 0;
        
    always @(posedge pwmclk)
            if (counter == (compare_39_1_on * 1) || counter == (compare_39_1_off * 1)) OUTPUT_ENABLE[157] <= 1;
            else if (counter == ((compare_39_1_off * 1) + POWER_LVL) % 255 || counter == ((compare_39_1_on * 1) + POWER_LVL) % 255) OUTPUT_ENABLE[157] <= 0;
        
    always @(posedge pwmclk)
            if (counter == (compare_39_2_on * 1) || counter == (compare_39_2_off * 1)) OUTPUT_ENABLE[158] <= 1;
            else if (counter == ((compare_39_2_off * 1) + POWER_LVL) % 255 || counter == ((compare_39_2_on * 1) + POWER_LVL) % 255) OUTPUT_ENABLE[158] <= 0;
        
    always @(posedge pwmclk)
            if (counter == (compare_39_3_on * 1) || counter == (compare_39_3_off * 1)) OUTPUT_ENABLE[159] <= 1;
            else if (counter == ((compare_39_3_off * 1) + POWER_LVL) % 255 || counter == ((compare_39_3_on * 1) + POWER_LVL) % 255) OUTPUT_ENABLE[159] <= 0;
        
    always @(posedge pwmclk)
            if (counter == (compare_40_0_on * 1) || counter == (compare_40_0_off * 1)) OUTPUT_ENABLE[160] <= 1;
            else if (counter == ((compare_40_0_off * 1) + POWER_LVL) % 255 || counter == ((compare_40_0_on * 1) + POWER_LVL) % 255) OUTPUT_ENABLE[160] <= 0;
        
    always @(posedge pwmclk)
            if (counter == (compare_40_1_on * 1) || counter == (compare_40_1_off * 1)) OUTPUT_ENABLE[161] <= 1;
            else if (counter == ((compare_40_1_off * 1) + POWER_LVL) % 255 || counter == ((compare_40_1_on * 1) + POWER_LVL) % 255) OUTPUT_ENABLE[161] <= 0;
        
    always @(posedge pwmclk)
            if (counter == (compare_40_2_on * 1) || counter == (compare_40_2_off * 1)) OUTPUT_ENABLE[162] <= 1;
            else if (counter == ((compare_40_2_off * 1) + POWER_LVL) % 255 || counter == ((compare_40_2_on * 1) + POWER_LVL) % 255) OUTPUT_ENABLE[162] <= 0;
        
    always @(posedge pwmclk)
            if (counter == (compare_40_3_on * 1) || counter == (compare_40_3_off * 1)) OUTPUT_ENABLE[163] <= 1;
            else if (counter == ((compare_40_3_off * 1) + POWER_LVL) % 255 || counter == ((compare_40_3_on * 1) + POWER_LVL) % 255) OUTPUT_ENABLE[163] <= 0;
        
    always @(posedge pwmclk)
            if (counter == (compare_41_0_on * 1) || counter == (compare_41_0_off * 1)) OUTPUT_ENABLE[164] <= 1;
            else if (counter == ((compare_41_0_off * 1) + POWER_LVL) % 255 || counter == ((compare_41_0_on * 1) + POWER_LVL) % 255) OUTPUT_ENABLE[164] <= 0;
        
    always @(posedge pwmclk)
            if (counter == (compare_41_1_on * 1) || counter == (compare_41_1_off * 1)) OUTPUT_ENABLE[165] <= 1;
            else if (counter == ((compare_41_1_off * 1) + POWER_LVL) % 255 || counter == ((compare_41_1_on * 1) + POWER_LVL) % 255) OUTPUT_ENABLE[165] <= 0;
        
    always @(posedge pwmclk)
            if (counter == (compare_41_2_on * 1) || counter == (compare_41_2_off * 1)) OUTPUT_ENABLE[166] <= 1;
            else if (counter == ((compare_41_2_off * 1) + POWER_LVL) % 255 || counter == ((compare_41_2_on * 1) + POWER_LVL) % 255) OUTPUT_ENABLE[166] <= 0;
        
    always @(posedge pwmclk)
            if (counter == (compare_41_3_on * 1) || counter == (compare_41_3_off * 1)) OUTPUT_ENABLE[167] <= 1;
            else if (counter == ((compare_41_3_off * 1) + POWER_LVL) % 255 || counter == ((compare_41_3_on * 1) + POWER_LVL) % 255) OUTPUT_ENABLE[167] <= 0;
        
    always @(posedge pwmclk)
            if (counter == (compare_42_0_on * 1) || counter == (compare_42_0_off * 1)) OUTPUT_ENABLE[168] <= 1;
            else if (counter == ((compare_42_0_off * 1) + POWER_LVL) % 255 || counter == ((compare_42_0_on * 1) + POWER_LVL) % 255) OUTPUT_ENABLE[168] <= 0;
        
    always @(posedge pwmclk)
            if (counter == (compare_42_1_on * 1) || counter == (compare_42_1_off * 1)) OUTPUT_ENABLE[169] <= 1;
            else if (counter == ((compare_42_1_off * 1) + POWER_LVL) % 255 || counter == ((compare_42_1_on * 1) + POWER_LVL) % 255) OUTPUT_ENABLE[169] <= 0;
        
    always @(posedge pwmclk)
            if (counter == (compare_42_2_on * 1) || counter == (compare_42_2_off * 1)) OUTPUT_ENABLE[170] <= 1;
            else if (counter == ((compare_42_2_off * 1) + POWER_LVL) % 255 || counter == ((compare_42_2_on * 1) + POWER_LVL) % 255) OUTPUT_ENABLE[170] <= 0;
        
    always @(posedge pwmclk)
            if (counter == (compare_42_3_on * 1) || counter == (compare_42_3_off * 1)) OUTPUT_ENABLE[171] <= 1;
            else if (counter == ((compare_42_3_off * 1) + POWER_LVL) % 255 || counter == ((compare_42_3_on * 1) + POWER_LVL) % 255) OUTPUT_ENABLE[171] <= 0;
        
    always @(posedge pwmclk)
            if (counter == (compare_43_0_on * 1) || counter == (compare_43_0_off * 1)) OUTPUT_ENABLE[172] <= 1;
            else if (counter == ((compare_43_0_off * 1) + POWER_LVL) % 255 || counter == ((compare_43_0_on * 1) + POWER_LVL) % 255) OUTPUT_ENABLE[172] <= 0;
        
    always @(posedge pwmclk)
            if (counter == (compare_43_1_on * 1) || counter == (compare_43_1_off * 1)) OUTPUT_ENABLE[173] <= 1;
            else if (counter == ((compare_43_1_off * 1) + POWER_LVL) % 255 || counter == ((compare_43_1_on * 1) + POWER_LVL) % 255) OUTPUT_ENABLE[173] <= 0;
        
    always @(posedge pwmclk)
            if (counter == (compare_43_2_on * 1) || counter == (compare_43_2_off * 1)) OUTPUT_ENABLE[174] <= 1;
            else if (counter == ((compare_43_2_off * 1) + POWER_LVL) % 255 || counter == ((compare_43_2_on * 1) + POWER_LVL) % 255) OUTPUT_ENABLE[174] <= 0;
        
    always @(posedge pwmclk)
            if (counter == (compare_43_3_on * 1) || counter == (compare_43_3_off * 1)) OUTPUT_ENABLE[175] <= 1;
            else if (counter == ((compare_43_3_off * 1) + POWER_LVL) % 255 || counter == ((compare_43_3_on * 1) + POWER_LVL) % 255) OUTPUT_ENABLE[175] <= 0;
        
    always @(posedge pwmclk)
            if (counter == (compare_44_0_on * 1) || counter == (compare_44_0_off * 1)) OUTPUT_ENABLE[176] <= 1;
            else if (counter == ((compare_44_0_off * 1) + POWER_LVL) % 255 || counter == ((compare_44_0_on * 1) + POWER_LVL) % 255) OUTPUT_ENABLE[176] <= 0;
        
    always @(posedge pwmclk)
            if (counter == (compare_44_1_on * 1) || counter == (compare_44_1_off * 1)) OUTPUT_ENABLE[177] <= 1;
            else if (counter == ((compare_44_1_off * 1) + POWER_LVL) % 255 || counter == ((compare_44_1_on * 1) + POWER_LVL) % 255) OUTPUT_ENABLE[177] <= 0;
        
    always @(posedge pwmclk)
            if (counter == (compare_44_2_on * 1) || counter == (compare_44_2_off * 1)) OUTPUT_ENABLE[178] <= 1;
            else if (counter == ((compare_44_2_off * 1) + POWER_LVL) % 255 || counter == ((compare_44_2_on * 1) + POWER_LVL) % 255) OUTPUT_ENABLE[178] <= 0;
        
    always @(posedge pwmclk)
            if (counter == (compare_44_3_on * 1) || counter == (compare_44_3_off * 1)) OUTPUT_ENABLE[179] <= 1;
            else if (counter == ((compare_44_3_off * 1) + POWER_LVL) % 255 || counter == ((compare_44_3_on * 1) + POWER_LVL) % 255) OUTPUT_ENABLE[179] <= 0;
        
    always @(posedge pwmclk)
            if (counter == (compare_45_0_on * 1) || counter == (compare_45_0_off * 1)) OUTPUT_ENABLE[180] <= 1;
            else if (counter == ((compare_45_0_off * 1) + POWER_LVL) % 255 || counter == ((compare_45_0_on * 1) + POWER_LVL) % 255) OUTPUT_ENABLE[180] <= 0;
        
    always @(posedge pwmclk)
            if (counter == (compare_45_1_on * 1) || counter == (compare_45_1_off * 1)) OUTPUT_ENABLE[181] <= 1;
            else if (counter == ((compare_45_1_off * 1) + POWER_LVL) % 255 || counter == ((compare_45_1_on * 1) + POWER_LVL) % 255) OUTPUT_ENABLE[181] <= 0;
        
    always @(posedge pwmclk)
            if (counter == (compare_45_2_on * 1) || counter == (compare_45_2_off * 1)) OUTPUT_ENABLE[182] <= 1;
            else if (counter == ((compare_45_2_off * 1) + POWER_LVL) % 255 || counter == ((compare_45_2_on * 1) + POWER_LVL) % 255) OUTPUT_ENABLE[182] <= 0;
        
    always @(posedge pwmclk)
            if (counter == (compare_45_3_on * 1) || counter == (compare_45_3_off * 1)) OUTPUT_ENABLE[183] <= 1;
            else if (counter == ((compare_45_3_off * 1) + POWER_LVL) % 255 || counter == ((compare_45_3_on * 1) + POWER_LVL) % 255) OUTPUT_ENABLE[183] <= 0;
        
    always @(posedge pwmclk)
            if (counter == (compare_46_0_on * 1) || counter == (compare_46_0_off * 1)) OUTPUT_ENABLE[184] <= 1;
            else if (counter == ((compare_46_0_off * 1) + POWER_LVL) % 255 || counter == ((compare_46_0_on * 1) + POWER_LVL) % 255) OUTPUT_ENABLE[184] <= 0;
        
    always @(posedge pwmclk)
            if (counter == (compare_46_1_on * 1) || counter == (compare_46_1_off * 1)) OUTPUT_ENABLE[185] <= 1;
            else if (counter == ((compare_46_1_off * 1) + POWER_LVL) % 255 || counter == ((compare_46_1_on * 1) + POWER_LVL) % 255) OUTPUT_ENABLE[185] <= 0;
        
    always @(posedge pwmclk)
            if (counter == (compare_46_2_on * 1) || counter == (compare_46_2_off * 1)) OUTPUT_ENABLE[186] <= 1;
            else if (counter == ((compare_46_2_off * 1) + POWER_LVL) % 255 || counter == ((compare_46_2_on * 1) + POWER_LVL) % 255) OUTPUT_ENABLE[186] <= 0;
        
    always @(posedge pwmclk)
            if (counter == (compare_46_3_on * 1) || counter == (compare_46_3_off * 1)) OUTPUT_ENABLE[187] <= 1;
            else if (counter == ((compare_46_3_off * 1) + POWER_LVL) % 255 || counter == ((compare_46_3_on * 1) + POWER_LVL) % 255) OUTPUT_ENABLE[187] <= 0;
        
    always @(posedge pwmclk)
            if (counter == (compare_47_0_on * 1) || counter == (compare_47_0_off * 1)) OUTPUT_ENABLE[188] <= 1;
            else if (counter == ((compare_47_0_off * 1) + POWER_LVL) % 255 || counter == ((compare_47_0_on * 1) + POWER_LVL) % 255) OUTPUT_ENABLE[188] <= 0;
        
    always @(posedge pwmclk)
            if (counter == (compare_47_1_on * 1) || counter == (compare_47_1_off * 1)) OUTPUT_ENABLE[189] <= 1;
            else if (counter == ((compare_47_1_off * 1) + POWER_LVL) % 255 || counter == ((compare_47_1_on * 1) + POWER_LVL) % 255) OUTPUT_ENABLE[189] <= 0;
        
    always @(posedge pwmclk)
            if (counter == (compare_47_2_on * 1) || counter == (compare_47_2_off * 1)) OUTPUT_ENABLE[190] <= 1;
            else if (counter == ((compare_47_2_off * 1) + POWER_LVL) % 255 || counter == ((compare_47_2_on * 1) + POWER_LVL) % 255) OUTPUT_ENABLE[190] <= 0;
        
    always @(posedge pwmclk)
            if (counter == (compare_47_3_on * 1) || counter == (compare_47_3_off * 1)) OUTPUT_ENABLE[191] <= 1;
            else if (counter == ((compare_47_3_off * 1) + POWER_LVL) % 255 || counter == ((compare_47_3_on * 1) + POWER_LVL) % 255) OUTPUT_ENABLE[191] <= 0;
        
    always @(posedge pwmclk)
            if (counter == (compare_48_0_on * 1) || counter == (compare_48_0_off * 1)) OUTPUT_ENABLE[192] <= 1;
            else if (counter == ((compare_48_0_off * 1) + POWER_LVL) % 255 || counter == ((compare_48_0_on * 1) + POWER_LVL) % 255) OUTPUT_ENABLE[192] <= 0;
        
    always @(posedge pwmclk)
            if (counter == (compare_48_1_on * 1) || counter == (compare_48_1_off * 1)) OUTPUT_ENABLE[193] <= 1;
            else if (counter == ((compare_48_1_off * 1) + POWER_LVL) % 255 || counter == ((compare_48_1_on * 1) + POWER_LVL) % 255) OUTPUT_ENABLE[193] <= 0;
        
    always @(posedge pwmclk)
            if (counter == (compare_48_2_on * 1) || counter == (compare_48_2_off * 1)) OUTPUT_ENABLE[194] <= 1;
            else if (counter == ((compare_48_2_off * 1) + POWER_LVL) % 255 || counter == ((compare_48_2_on * 1) + POWER_LVL) % 255) OUTPUT_ENABLE[194] <= 0;
        
    always @(posedge pwmclk)
            if (counter == (compare_48_3_on * 1) || counter == (compare_48_3_off * 1)) OUTPUT_ENABLE[195] <= 1;
            else if (counter == ((compare_48_3_off * 1) + POWER_LVL) % 255 || counter == ((compare_48_3_on * 1) + POWER_LVL) % 255) OUTPUT_ENABLE[195] <= 0;
        
    always @(posedge pwmclk)
            if (counter == (compare_49_0_on * 1) || counter == (compare_49_0_off * 1)) OUTPUT_ENABLE[196] <= 1;
            else if (counter == ((compare_49_0_off * 1) + POWER_LVL) % 255 || counter == ((compare_49_0_on * 1) + POWER_LVL) % 255) OUTPUT_ENABLE[196] <= 0;
        
    always @(posedge pwmclk)
            if (counter == (compare_49_1_on * 1) || counter == (compare_49_1_off * 1)) OUTPUT_ENABLE[197] <= 1;
            else if (counter == ((compare_49_1_off * 1) + POWER_LVL) % 255 || counter == ((compare_49_1_on * 1) + POWER_LVL) % 255) OUTPUT_ENABLE[197] <= 0;
        
    always @(posedge pwmclk)
            if (counter == (compare_49_2_on * 1) || counter == (compare_49_2_off * 1)) OUTPUT_ENABLE[198] <= 1;
            else if (counter == ((compare_49_2_off * 1) + POWER_LVL) % 255 || counter == ((compare_49_2_on * 1) + POWER_LVL) % 255) OUTPUT_ENABLE[198] <= 0;
        
    always @(posedge pwmclk)
            if (counter == (compare_49_3_on * 1) || counter == (compare_49_3_off * 1)) OUTPUT_ENABLE[199] <= 1;
            else if (counter == ((compare_49_3_off * 1) + POWER_LVL) % 255 || counter == ((compare_49_3_on * 1) + POWER_LVL) % 255) OUTPUT_ENABLE[199] <= 0;
        
    always @(posedge pwmclk)
            if (counter == (compare_50_0_on * 1) || counter == (compare_50_0_off * 1)) OUTPUT_ENABLE[200] <= 1;
            else if (counter == ((compare_50_0_off * 1) + POWER_LVL) % 255 || counter == ((compare_50_0_on * 1) + POWER_LVL) % 255) OUTPUT_ENABLE[200] <= 0;
        
    always @(posedge pwmclk)
            if (counter == (compare_50_1_on * 1) || counter == (compare_50_1_off * 1)) OUTPUT_ENABLE[201] <= 1;
            else if (counter == ((compare_50_1_off * 1) + POWER_LVL) % 255 || counter == ((compare_50_1_on * 1) + POWER_LVL) % 255) OUTPUT_ENABLE[201] <= 0;
        
    always @(posedge pwmclk)
            if (counter == (compare_50_2_on * 1) || counter == (compare_50_2_off * 1)) OUTPUT_ENABLE[202] <= 1;
            else if (counter == ((compare_50_2_off * 1) + POWER_LVL) % 255 || counter == ((compare_50_2_on * 1) + POWER_LVL) % 255) OUTPUT_ENABLE[202] <= 0;
        
    always @(posedge pwmclk)
            if (counter == (compare_50_3_on * 1) || counter == (compare_50_3_off * 1)) OUTPUT_ENABLE[203] <= 1;
            else if (counter == ((compare_50_3_off * 1) + POWER_LVL) % 255 || counter == ((compare_50_3_on * 1) + POWER_LVL) % 255) OUTPUT_ENABLE[203] <= 0;
        
    always @(posedge pwmclk)
            if (counter == (compare_51_0_on * 1) || counter == (compare_51_0_off * 1)) OUTPUT_ENABLE[204] <= 1;
            else if (counter == ((compare_51_0_off * 1) + POWER_LVL) % 255 || counter == ((compare_51_0_on * 1) + POWER_LVL) % 255) OUTPUT_ENABLE[204] <= 0;
        
    always @(posedge pwmclk)
            if (counter == (compare_51_1_on * 1) || counter == (compare_51_1_off * 1)) OUTPUT_ENABLE[205] <= 1;
            else if (counter == ((compare_51_1_off * 1) + POWER_LVL) % 255 || counter == ((compare_51_1_on * 1) + POWER_LVL) % 255) OUTPUT_ENABLE[205] <= 0;
        
    always @(posedge pwmclk)
            if (counter == (compare_51_2_on * 1) || counter == (compare_51_2_off * 1)) OUTPUT_ENABLE[206] <= 1;
            else if (counter == ((compare_51_2_off * 1) + POWER_LVL) % 255 || counter == ((compare_51_2_on * 1) + POWER_LVL) % 255) OUTPUT_ENABLE[206] <= 0;
        
    always @(posedge pwmclk)
            if (counter == (compare_51_3_on * 1) || counter == (compare_51_3_off * 1)) OUTPUT_ENABLE[207] <= 1;
            else if (counter == ((compare_51_3_off * 1) + POWER_LVL) % 255 || counter == ((compare_51_3_on * 1) + POWER_LVL) % 255) OUTPUT_ENABLE[207] <= 0;
        
    always @(posedge pwmclk)
            if (counter == (compare_52_0_on * 1) || counter == (compare_52_0_off * 1)) OUTPUT_ENABLE[208] <= 1;
            else if (counter == ((compare_52_0_off * 1) + POWER_LVL) % 255 || counter == ((compare_52_0_on * 1) + POWER_LVL) % 255) OUTPUT_ENABLE[208] <= 0;
        
    always @(posedge pwmclk)
            if (counter == (compare_52_1_on * 1) || counter == (compare_52_1_off * 1)) OUTPUT_ENABLE[209] <= 1;
            else if (counter == ((compare_52_1_off * 1) + POWER_LVL) % 255 || counter == ((compare_52_1_on * 1) + POWER_LVL) % 255) OUTPUT_ENABLE[209] <= 0;
        
    always @(posedge pwmclk)
            if (counter == (compare_52_2_on * 1) || counter == (compare_52_2_off * 1)) OUTPUT_ENABLE[210] <= 1;
            else if (counter == ((compare_52_2_off * 1) + POWER_LVL) % 255 || counter == ((compare_52_2_on * 1) + POWER_LVL) % 255) OUTPUT_ENABLE[210] <= 0;
        
    always @(posedge pwmclk)
            if (counter == (compare_52_3_on * 1) || counter == (compare_52_3_off * 1)) OUTPUT_ENABLE[211] <= 1;
            else if (counter == ((compare_52_3_off * 1) + POWER_LVL) % 255 || counter == ((compare_52_3_on * 1) + POWER_LVL) % 255) OUTPUT_ENABLE[211] <= 0;
        
    always @(posedge pwmclk)
            if (counter == (compare_53_0_on * 1) || counter == (compare_53_0_off * 1)) OUTPUT_ENABLE[212] <= 1;
            else if (counter == ((compare_53_0_off * 1) + POWER_LVL) % 255 || counter == ((compare_53_0_on * 1) + POWER_LVL) % 255) OUTPUT_ENABLE[212] <= 0;
        
    always @(posedge pwmclk)
            if (counter == (compare_53_1_on * 1) || counter == (compare_53_1_off * 1)) OUTPUT_ENABLE[213] <= 1;
            else if (counter == ((compare_53_1_off * 1) + POWER_LVL) % 255 || counter == ((compare_53_1_on * 1) + POWER_LVL) % 255) OUTPUT_ENABLE[213] <= 0;
        
    always @(posedge pwmclk)
            if (counter == (compare_53_2_on * 1) || counter == (compare_53_2_off * 1)) OUTPUT_ENABLE[214] <= 1;
            else if (counter == ((compare_53_2_off * 1) + POWER_LVL) % 255 || counter == ((compare_53_2_on * 1) + POWER_LVL) % 255) OUTPUT_ENABLE[214] <= 0;
        
    always @(posedge pwmclk)
            if (counter == (compare_53_3_on * 1) || counter == (compare_53_3_off * 1)) OUTPUT_ENABLE[215] <= 1;
            else if (counter == ((compare_53_3_off * 1) + POWER_LVL) % 255 || counter == ((compare_53_3_on * 1) + POWER_LVL) % 255) OUTPUT_ENABLE[215] <= 0;
        
    always @(posedge pwmclk)
            if (counter == (compare_54_0_on * 1) || counter == (compare_54_0_off * 1)) OUTPUT_ENABLE[216] <= 1;
            else if (counter == ((compare_54_0_off * 1) + POWER_LVL) % 255 || counter == ((compare_54_0_on * 1) + POWER_LVL) % 255) OUTPUT_ENABLE[216] <= 0;
        
    always @(posedge pwmclk)
            if (counter == (compare_54_1_on * 1) || counter == (compare_54_1_off * 1)) OUTPUT_ENABLE[217] <= 1;
            else if (counter == ((compare_54_1_off * 1) + POWER_LVL) % 255 || counter == ((compare_54_1_on * 1) + POWER_LVL) % 255) OUTPUT_ENABLE[217] <= 0;
        
    always @(posedge pwmclk)
            if (counter == (compare_54_2_on * 1) || counter == (compare_54_2_off * 1)) OUTPUT_ENABLE[218] <= 1;
            else if (counter == ((compare_54_2_off * 1) + POWER_LVL) % 255 || counter == ((compare_54_2_on * 1) + POWER_LVL) % 255) OUTPUT_ENABLE[218] <= 0;
        
    always @(posedge pwmclk)
            if (counter == (compare_54_3_on * 1) || counter == (compare_54_3_off * 1)) OUTPUT_ENABLE[219] <= 1;
            else if (counter == ((compare_54_3_off * 1) + POWER_LVL) % 255 || counter == ((compare_54_3_on * 1) + POWER_LVL) % 255) OUTPUT_ENABLE[219] <= 0;
        
    always @(posedge pwmclk)
            if (counter == (compare_55_0_on * 1) || counter == (compare_55_0_off * 1)) OUTPUT_ENABLE[220] <= 1;
            else if (counter == ((compare_55_0_off * 1) + POWER_LVL) % 255 || counter == ((compare_55_0_on * 1) + POWER_LVL) % 255) OUTPUT_ENABLE[220] <= 0;
        
    always @(posedge pwmclk)
            if (counter == (compare_55_1_on * 1) || counter == (compare_55_1_off * 1)) OUTPUT_ENABLE[221] <= 1;
            else if (counter == ((compare_55_1_off * 1) + POWER_LVL) % 255 || counter == ((compare_55_1_on * 1) + POWER_LVL) % 255) OUTPUT_ENABLE[221] <= 0;
        
    always @(posedge pwmclk)
            if (counter == (compare_55_2_on * 1) || counter == (compare_55_2_off * 1)) OUTPUT_ENABLE[222] <= 1;
            else if (counter == ((compare_55_2_off * 1) + POWER_LVL) % 255 || counter == ((compare_55_2_on * 1) + POWER_LVL) % 255) OUTPUT_ENABLE[222] <= 0;
        
    always @(posedge pwmclk)
            if (counter == (compare_55_3_on * 1) || counter == (compare_55_3_off * 1)) OUTPUT_ENABLE[223] <= 1;
            else if (counter == ((compare_55_3_off * 1) + POWER_LVL) % 255 || counter == ((compare_55_3_on * 1) + POWER_LVL) % 255) OUTPUT_ENABLE[223] <= 0;
        
    always @(posedge pwmclk)
            if (counter == (compare_56_0_on * 1) || counter == (compare_56_0_off * 1)) OUTPUT_ENABLE[224] <= 1;
            else if (counter == ((compare_56_0_off * 1) + POWER_LVL) % 255 || counter == ((compare_56_0_on * 1) + POWER_LVL) % 255) OUTPUT_ENABLE[224] <= 0;
        
    always @(posedge pwmclk)
            if (counter == (compare_56_1_on * 1) || counter == (compare_56_1_off * 1)) OUTPUT_ENABLE[225] <= 1;
            else if (counter == ((compare_56_1_off * 1) + POWER_LVL) % 255 || counter == ((compare_56_1_on * 1) + POWER_LVL) % 255) OUTPUT_ENABLE[225] <= 0;
        
    always @(posedge pwmclk)
            if (counter == (compare_56_2_on * 1) || counter == (compare_56_2_off * 1)) OUTPUT_ENABLE[226] <= 1;
            else if (counter == ((compare_56_2_off * 1) + POWER_LVL) % 255 || counter == ((compare_56_2_on * 1) + POWER_LVL) % 255) OUTPUT_ENABLE[226] <= 0;
        
    always @(posedge pwmclk)
            if (counter == (compare_56_3_on * 1) || counter == (compare_56_3_off * 1)) OUTPUT_ENABLE[227] <= 1;
            else if (counter == ((compare_56_3_off * 1) + POWER_LVL) % 255 || counter == ((compare_56_3_on * 1) + POWER_LVL) % 255) OUTPUT_ENABLE[227] <= 0;
        
    always @(posedge pwmclk)
            if (counter == (compare_57_0_on * 1) || counter == (compare_57_0_off * 1)) OUTPUT_ENABLE[228] <= 1;
            else if (counter == ((compare_57_0_off * 1) + POWER_LVL) % 255 || counter == ((compare_57_0_on * 1) + POWER_LVL) % 255) OUTPUT_ENABLE[228] <= 0;
        
    always @(posedge pwmclk)
            if (counter == (compare_57_1_on * 1) || counter == (compare_57_1_off * 1)) OUTPUT_ENABLE[229] <= 1;
            else if (counter == ((compare_57_1_off * 1) + POWER_LVL) % 255 || counter == ((compare_57_1_on * 1) + POWER_LVL) % 255) OUTPUT_ENABLE[229] <= 0;
        
    always @(posedge pwmclk)
            if (counter == (compare_57_2_on * 1) || counter == (compare_57_2_off * 1)) OUTPUT_ENABLE[230] <= 1;
            else if (counter == ((compare_57_2_off * 1) + POWER_LVL) % 255 || counter == ((compare_57_2_on * 1) + POWER_LVL) % 255) OUTPUT_ENABLE[230] <= 0;
        
    always @(posedge pwmclk)
            if (counter == (compare_57_3_on * 1) || counter == (compare_57_3_off * 1)) OUTPUT_ENABLE[231] <= 1;
            else if (counter == ((compare_57_3_off * 1) + POWER_LVL) % 255 || counter == ((compare_57_3_on * 1) + POWER_LVL) % 255) OUTPUT_ENABLE[231] <= 0;
        
    always @(posedge pwmclk)
            if (counter == (compare_58_0_on * 1) || counter == (compare_58_0_off * 1)) OUTPUT_ENABLE[232] <= 1;
            else if (counter == ((compare_58_0_off * 1) + POWER_LVL) % 255 || counter == ((compare_58_0_on * 1) + POWER_LVL) % 255) OUTPUT_ENABLE[232] <= 0;
        
    always @(posedge pwmclk)
            if (counter == (compare_58_1_on * 1) || counter == (compare_58_1_off * 1)) OUTPUT_ENABLE[233] <= 1;
            else if (counter == ((compare_58_1_off * 1) + POWER_LVL) % 255 || counter == ((compare_58_1_on * 1) + POWER_LVL) % 255) OUTPUT_ENABLE[233] <= 0;
        
    always @(posedge pwmclk)
            if (counter == (compare_58_2_on * 1) || counter == (compare_58_2_off * 1)) OUTPUT_ENABLE[234] <= 1;
            else if (counter == ((compare_58_2_off * 1) + POWER_LVL) % 255 || counter == ((compare_58_2_on * 1) + POWER_LVL) % 255) OUTPUT_ENABLE[234] <= 0;
        
    always @(posedge pwmclk)
            if (counter == (compare_58_3_on * 1) || counter == (compare_58_3_off * 1)) OUTPUT_ENABLE[235] <= 1;
            else if (counter == ((compare_58_3_off * 1) + POWER_LVL) % 255 || counter == ((compare_58_3_on * 1) + POWER_LVL) % 255) OUTPUT_ENABLE[235] <= 0;
        
    always @(posedge pwmclk)
            if (counter == (compare_59_0_on * 1) || counter == (compare_59_0_off * 1)) OUTPUT_ENABLE[236] <= 1;
            else if (counter == ((compare_59_0_off * 1) + POWER_LVL) % 255 || counter == ((compare_59_0_on * 1) + POWER_LVL) % 255) OUTPUT_ENABLE[236] <= 0;
        
    always @(posedge pwmclk)
            if (counter == (compare_59_1_on * 1) || counter == (compare_59_1_off * 1)) OUTPUT_ENABLE[237] <= 1;
            else if (counter == ((compare_59_1_off * 1) + POWER_LVL) % 255 || counter == ((compare_59_1_on * 1) + POWER_LVL) % 255) OUTPUT_ENABLE[237] <= 0;
        
    always @(posedge pwmclk)
            if (counter == (compare_59_2_on * 1) || counter == (compare_59_2_off * 1)) OUTPUT_ENABLE[238] <= 1;
            else if (counter == ((compare_59_2_off * 1) + POWER_LVL) % 255 || counter == ((compare_59_2_on * 1) + POWER_LVL) % 255) OUTPUT_ENABLE[238] <= 0;
        
    always @(posedge pwmclk)
            if (counter == (compare_59_3_on * 1) || counter == (compare_59_3_off * 1)) OUTPUT_ENABLE[239] <= 1;
            else if (counter == ((compare_59_3_off * 1) + POWER_LVL) % 255 || counter == ((compare_59_3_on * 1) + POWER_LVL) % 255) OUTPUT_ENABLE[239] <= 0;
        
    always @(posedge pwmclk)
            if (counter == (compare_60_0_on * 1) || counter == (compare_60_0_off * 1)) OUTPUT_ENABLE[240] <= 1;
            else if (counter == ((compare_60_0_off * 1) + POWER_LVL) % 255 || counter == ((compare_60_0_on * 1) + POWER_LVL) % 255) OUTPUT_ENABLE[240] <= 0;
        
    always @(posedge pwmclk)
            if (counter == (compare_60_1_on * 1) || counter == (compare_60_1_off * 1)) OUTPUT_ENABLE[241] <= 1;
            else if (counter == ((compare_60_1_off * 1) + POWER_LVL) % 255 || counter == ((compare_60_1_on * 1) + POWER_LVL) % 255) OUTPUT_ENABLE[241] <= 0;
        
    always @(posedge pwmclk)
            if (counter == (compare_60_2_on * 1) || counter == (compare_60_2_off * 1)) OUTPUT_ENABLE[242] <= 1;
            else if (counter == ((compare_60_2_off * 1) + POWER_LVL) % 255 || counter == ((compare_60_2_on * 1) + POWER_LVL) % 255) OUTPUT_ENABLE[242] <= 0;
        
    always @(posedge pwmclk)
            if (counter == (compare_60_3_on * 1) || counter == (compare_60_3_off * 1)) OUTPUT_ENABLE[243] <= 1;
            else if (counter == ((compare_60_3_off * 1) + POWER_LVL) % 255 || counter == ((compare_60_3_on * 1) + POWER_LVL) % 255) OUTPUT_ENABLE[243] <= 0;
        
    always @(posedge pwmclk)
            if (counter == (compare_61_0_on * 1) || counter == (compare_61_0_off * 1)) OUTPUT_ENABLE[244] <= 1;
            else if (counter == ((compare_61_0_off * 1) + POWER_LVL) % 255 || counter == ((compare_61_0_on * 1) + POWER_LVL) % 255) OUTPUT_ENABLE[244] <= 0;
        
    always @(posedge pwmclk)
            if (counter == (compare_61_1_on * 1) || counter == (compare_61_1_off * 1)) OUTPUT_ENABLE[245] <= 1;
            else if (counter == ((compare_61_1_off * 1) + POWER_LVL) % 255 || counter == ((compare_61_1_on * 1) + POWER_LVL) % 255) OUTPUT_ENABLE[245] <= 0;
        
    always @(posedge pwmclk)
            if (counter == (compare_61_2_on * 1) || counter == (compare_61_2_off * 1)) OUTPUT_ENABLE[246] <= 1;
            else if (counter == ((compare_61_2_off * 1) + POWER_LVL) % 255 || counter == ((compare_61_2_on * 1) + POWER_LVL) % 255) OUTPUT_ENABLE[246] <= 0;
        
    always @(posedge pwmclk)
            if (counter == (compare_61_3_on * 1) || counter == (compare_61_3_off * 1)) OUTPUT_ENABLE[247] <= 1;
            else if (counter == ((compare_61_3_off * 1) + POWER_LVL) % 255 || counter == ((compare_61_3_on * 1) + POWER_LVL) % 255) OUTPUT_ENABLE[247] <= 0;
        
    always @(posedge pwmclk)
            if (counter == (compare_62_0_on * 1) || counter == (compare_62_0_off * 1)) OUTPUT_ENABLE[248] <= 1;
            else if (counter == ((compare_62_0_off * 1) + POWER_LVL) % 255 || counter == ((compare_62_0_on * 1) + POWER_LVL) % 255) OUTPUT_ENABLE[248] <= 0;
        
    always @(posedge pwmclk)
            if (counter == (compare_62_1_on * 1) || counter == (compare_62_1_off * 1)) OUTPUT_ENABLE[249] <= 1;
            else if (counter == ((compare_62_1_off * 1) + POWER_LVL) % 255 || counter == ((compare_62_1_on * 1) + POWER_LVL) % 255) OUTPUT_ENABLE[249] <= 0;
        
    always @(posedge pwmclk)
            if (counter == (compare_62_2_on * 1) || counter == (compare_62_2_off * 1)) OUTPUT_ENABLE[250] <= 1;
            else if (counter == ((compare_62_2_off * 1) + POWER_LVL) % 255 || counter == ((compare_62_2_on * 1) + POWER_LVL) % 255) OUTPUT_ENABLE[250] <= 0;
        
    always @(posedge pwmclk)
            if (counter == (compare_62_3_on * 1) || counter == (compare_62_3_off * 1)) OUTPUT_ENABLE[251] <= 1;
            else if (counter == ((compare_62_3_off * 1) + POWER_LVL) % 255 || counter == ((compare_62_3_on * 1) + POWER_LVL) % 255) OUTPUT_ENABLE[251] <= 0;
        
    always @(posedge pwmclk)
            if (counter == (compare_63_0_on * 1) || counter == (compare_63_0_off * 1)) OUTPUT_ENABLE[252] <= 1;
            else if (counter == ((compare_63_0_off * 1) + POWER_LVL) % 255 || counter == ((compare_63_0_on * 1) + POWER_LVL) % 255) OUTPUT_ENABLE[252] <= 0;
        
    always @(posedge pwmclk)
            if (counter == (compare_63_1_on * 1) || counter == (compare_63_1_off * 1)) OUTPUT_ENABLE[253] <= 1;
            else if (counter == ((compare_63_1_off * 1) + POWER_LVL) % 255 || counter == ((compare_63_1_on * 1) + POWER_LVL) % 255) OUTPUT_ENABLE[253] <= 0;
        
    always @(posedge pwmclk)
            if (counter == (compare_63_2_on * 1) || counter == (compare_63_2_off * 1)) OUTPUT_ENABLE[254] <= 1;
            else if (counter == ((compare_63_2_off * 1) + POWER_LVL) % 255 || counter == ((compare_63_2_on * 1) + POWER_LVL) % 255) OUTPUT_ENABLE[254] <= 0;
        
    always @(posedge pwmclk)
            if (counter == (compare_63_3_on * 1) || counter == (compare_63_3_off * 1)) OUTPUT_ENABLE[255] <= 1;
            else if (counter == ((compare_63_3_off * 1) + POWER_LVL) % 255 || counter == ((compare_63_3_on * 1) + POWER_LVL) % 255) OUTPUT_ENABLE[255] <= 0;
        
    always @(posedge pwmclk)
            if (counter == (compare_64_0_on * 1) || counter == (compare_64_0_off * 1)) OUTPUT_ENABLE[256] <= 1;
            else if (counter == ((compare_64_0_off * 1) + POWER_LVL) % 255 || counter == ((compare_64_0_on * 1) + POWER_LVL) % 255) OUTPUT_ENABLE[256] <= 0;
        
    always @(posedge pwmclk)
            if (counter == (compare_64_1_on * 1) || counter == (compare_64_1_off * 1)) OUTPUT_ENABLE[257] <= 1;
            else if (counter == ((compare_64_1_off * 1) + POWER_LVL) % 255 || counter == ((compare_64_1_on * 1) + POWER_LVL) % 255) OUTPUT_ENABLE[257] <= 0;
        
    always @(posedge pwmclk)
            if (counter == (compare_64_2_on * 1) || counter == (compare_64_2_off * 1)) OUTPUT_ENABLE[258] <= 1;
            else if (counter == ((compare_64_2_off * 1) + POWER_LVL) % 255 || counter == ((compare_64_2_on * 1) + POWER_LVL) % 255) OUTPUT_ENABLE[258] <= 0;
        
    always @(posedge pwmclk)
            if (counter == (compare_64_3_on * 1) || counter == (compare_64_3_off * 1)) OUTPUT_ENABLE[259] <= 1;
            else if (counter == ((compare_64_3_off * 1) + POWER_LVL) % 255 || counter == ((compare_64_3_on * 1) + POWER_LVL) % 255) OUTPUT_ENABLE[259] <= 0;
        
    always @(posedge pwmclk)
            if (counter == (compare_65_0_on * 1) || counter == (compare_65_0_off * 1)) OUTPUT_ENABLE[260] <= 1;
            else if (counter == ((compare_65_0_off * 1) + POWER_LVL) % 255 || counter == ((compare_65_0_on * 1) + POWER_LVL) % 255) OUTPUT_ENABLE[260] <= 0;
        
    always @(posedge pwmclk)
            if (counter == (compare_65_1_on * 1) || counter == (compare_65_1_off * 1)) OUTPUT_ENABLE[261] <= 1;
            else if (counter == ((compare_65_1_off * 1) + POWER_LVL) % 255 || counter == ((compare_65_1_on * 1) + POWER_LVL) % 255) OUTPUT_ENABLE[261] <= 0;
        
    always @(posedge pwmclk)
            if (counter == (compare_65_2_on * 1) || counter == (compare_65_2_off * 1)) OUTPUT_ENABLE[262] <= 1;
            else if (counter == ((compare_65_2_off * 1) + POWER_LVL) % 255 || counter == ((compare_65_2_on * 1) + POWER_LVL) % 255) OUTPUT_ENABLE[262] <= 0;
        
    always @(posedge pwmclk)
            if (counter == (compare_65_3_on * 1) || counter == (compare_65_3_off * 1)) OUTPUT_ENABLE[263] <= 1;
            else if (counter == ((compare_65_3_off * 1) + POWER_LVL) % 255 || counter == ((compare_65_3_on * 1) + POWER_LVL) % 255) OUTPUT_ENABLE[263] <= 0;
        
    always @(posedge pwmclk)
            if (counter == (compare_66_0_on * 1) || counter == (compare_66_0_off * 1)) OUTPUT_ENABLE[264] <= 1;
            else if (counter == ((compare_66_0_off * 1) + POWER_LVL) % 255 || counter == ((compare_66_0_on * 1) + POWER_LVL) % 255) OUTPUT_ENABLE[264] <= 0;
        
    always @(posedge pwmclk)
            if (counter == (compare_66_1_on * 1) || counter == (compare_66_1_off * 1)) OUTPUT_ENABLE[265] <= 1;
            else if (counter == ((compare_66_1_off * 1) + POWER_LVL) % 255 || counter == ((compare_66_1_on * 1) + POWER_LVL) % 255) OUTPUT_ENABLE[265] <= 0;
        
    always @(posedge pwmclk)
            if (counter == (compare_66_2_on * 1) || counter == (compare_66_2_off * 1)) OUTPUT_ENABLE[266] <= 1;
            else if (counter == ((compare_66_2_off * 1) + POWER_LVL) % 255 || counter == ((compare_66_2_on * 1) + POWER_LVL) % 255) OUTPUT_ENABLE[266] <= 0;
        
    always @(posedge pwmclk)
            if (counter == (compare_66_3_on * 1) || counter == (compare_66_3_off * 1)) OUTPUT_ENABLE[267] <= 1;
            else if (counter == ((compare_66_3_off * 1) + POWER_LVL) % 255 || counter == ((compare_66_3_on * 1) + POWER_LVL) % 255) OUTPUT_ENABLE[267] <= 0;
        
    always @(posedge pwmclk)
            if (counter == (compare_67_0_on * 1) || counter == (compare_67_0_off * 1)) OUTPUT_ENABLE[268] <= 1;
            else if (counter == ((compare_67_0_off * 1) + POWER_LVL) % 255 || counter == ((compare_67_0_on * 1) + POWER_LVL) % 255) OUTPUT_ENABLE[268] <= 0;
        
    always @(posedge pwmclk)
            if (counter == (compare_67_1_on * 1) || counter == (compare_67_1_off * 1)) OUTPUT_ENABLE[269] <= 1;
            else if (counter == ((compare_67_1_off * 1) + POWER_LVL) % 255 || counter == ((compare_67_1_on * 1) + POWER_LVL) % 255) OUTPUT_ENABLE[269] <= 0;
        
    always @(posedge pwmclk)
            if (counter == (compare_67_2_on * 1) || counter == (compare_67_2_off * 1)) OUTPUT_ENABLE[270] <= 1;
            else if (counter == ((compare_67_2_off * 1) + POWER_LVL) % 255 || counter == ((compare_67_2_on * 1) + POWER_LVL) % 255) OUTPUT_ENABLE[270] <= 0;
        
    always @(posedge pwmclk)
            if (counter == (compare_67_3_on * 1) || counter == (compare_67_3_off * 1)) OUTPUT_ENABLE[271] <= 1;
            else if (counter == ((compare_67_3_off * 1) + POWER_LVL) % 255 || counter == ((compare_67_3_on * 1) + POWER_LVL) % 255) OUTPUT_ENABLE[271] <= 0;
        
    always @(posedge pwmclk)
            if (counter == (compare_68_0_on * 1) || counter == (compare_68_0_off * 1)) OUTPUT_ENABLE[272] <= 1;
            else if (counter == ((compare_68_0_off * 1) + POWER_LVL) % 255 || counter == ((compare_68_0_on * 1) + POWER_LVL) % 255) OUTPUT_ENABLE[272] <= 0;
        
    always @(posedge pwmclk)
            if (counter == (compare_68_1_on * 1) || counter == (compare_68_1_off * 1)) OUTPUT_ENABLE[273] <= 1;
            else if (counter == ((compare_68_1_off * 1) + POWER_LVL) % 255 || counter == ((compare_68_1_on * 1) + POWER_LVL) % 255) OUTPUT_ENABLE[273] <= 0;
        
    always @(posedge pwmclk)
            if (counter == (compare_68_2_on * 1) || counter == (compare_68_2_off * 1)) OUTPUT_ENABLE[274] <= 1;
            else if (counter == ((compare_68_2_off * 1) + POWER_LVL) % 255 || counter == ((compare_68_2_on * 1) + POWER_LVL) % 255) OUTPUT_ENABLE[274] <= 0;
        
    always @(posedge pwmclk)
            if (counter == (compare_68_3_on * 1) || counter == (compare_68_3_off * 1)) OUTPUT_ENABLE[275] <= 1;
            else if (counter == ((compare_68_3_off * 1) + POWER_LVL) % 255 || counter == ((compare_68_3_on * 1) + POWER_LVL) % 255) OUTPUT_ENABLE[275] <= 0;
        
    always @(posedge pwmclk)
            if (counter == (compare_69_0_on * 1) || counter == (compare_69_0_off * 1)) OUTPUT_ENABLE[276] <= 1;
            else if (counter == ((compare_69_0_off * 1) + POWER_LVL) % 255 || counter == ((compare_69_0_on * 1) + POWER_LVL) % 255) OUTPUT_ENABLE[276] <= 0;
        
    always @(posedge pwmclk)
            if (counter == (compare_69_1_on * 1) || counter == (compare_69_1_off * 1)) OUTPUT_ENABLE[277] <= 1;
            else if (counter == ((compare_69_1_off * 1) + POWER_LVL) % 255 || counter == ((compare_69_1_on * 1) + POWER_LVL) % 255) OUTPUT_ENABLE[277] <= 0;
        
    always @(posedge pwmclk)
            if (counter == (compare_69_2_on * 1) || counter == (compare_69_2_off * 1)) OUTPUT_ENABLE[278] <= 1;
            else if (counter == ((compare_69_2_off * 1) + POWER_LVL) % 255 || counter == ((compare_69_2_on * 1) + POWER_LVL) % 255) OUTPUT_ENABLE[278] <= 0;
        
    always @(posedge pwmclk)
            if (counter == (compare_69_3_on * 1) || counter == (compare_69_3_off * 1)) OUTPUT_ENABLE[279] <= 1;
            else if (counter == ((compare_69_3_off * 1) + POWER_LVL) % 255 || counter == ((compare_69_3_on * 1) + POWER_LVL) % 255) OUTPUT_ENABLE[279] <= 0;
        
    always @(posedge pwmclk)
            if (counter == (compare_70_0_on * 1) || counter == (compare_70_0_off * 1)) OUTPUT_ENABLE[280] <= 1;
            else if (counter == ((compare_70_0_off * 1) + POWER_LVL) % 255 || counter == ((compare_70_0_on * 1) + POWER_LVL) % 255) OUTPUT_ENABLE[280] <= 0;
        
    always @(posedge pwmclk)
            if (counter == (compare_70_1_on * 1) || counter == (compare_70_1_off * 1)) OUTPUT_ENABLE[281] <= 1;
            else if (counter == ((compare_70_1_off * 1) + POWER_LVL) % 255 || counter == ((compare_70_1_on * 1) + POWER_LVL) % 255) OUTPUT_ENABLE[281] <= 0;
        
    always @(posedge pwmclk)
            if (counter == (compare_70_2_on * 1) || counter == (compare_70_2_off * 1)) OUTPUT_ENABLE[282] <= 1;
            else if (counter == ((compare_70_2_off * 1) + POWER_LVL) % 255 || counter == ((compare_70_2_on * 1) + POWER_LVL) % 255) OUTPUT_ENABLE[282] <= 0;
        
    always @(posedge pwmclk)
            if (counter == (compare_70_3_on * 1) || counter == (compare_70_3_off * 1)) OUTPUT_ENABLE[283] <= 1;
            else if (counter == ((compare_70_3_off * 1) + POWER_LVL) % 255 || counter == ((compare_70_3_on * 1) + POWER_LVL) % 255) OUTPUT_ENABLE[283] <= 0;
        
    always @(posedge pwmclk)
            if (counter == (compare_71_0_on * 1) || counter == (compare_71_0_off * 1)) OUTPUT_ENABLE[284] <= 1;
            else if (counter == ((compare_71_0_off * 1) + POWER_LVL) % 255 || counter == ((compare_71_0_on * 1) + POWER_LVL) % 255) OUTPUT_ENABLE[284] <= 0;
        
    always @(posedge pwmclk)
            if (counter == (compare_71_1_on * 1) || counter == (compare_71_1_off * 1)) OUTPUT_ENABLE[285] <= 1;
            else if (counter == ((compare_71_1_off * 1) + POWER_LVL) % 255 || counter == ((compare_71_1_on * 1) + POWER_LVL) % 255) OUTPUT_ENABLE[285] <= 0;
        
    always @(posedge pwmclk)
            if (counter == (compare_71_2_on * 1) || counter == (compare_71_2_off * 1)) OUTPUT_ENABLE[286] <= 1;
            else if (counter == ((compare_71_2_off * 1) + POWER_LVL) % 255 || counter == ((compare_71_2_on * 1) + POWER_LVL) % 255) OUTPUT_ENABLE[286] <= 0;
        
    always @(posedge pwmclk)
            if (counter == (compare_71_3_on * 1) || counter == (compare_71_3_off * 1)) OUTPUT_ENABLE[287] <= 1;
            else if (counter == ((compare_71_3_off * 1) + POWER_LVL) % 255 || counter == ((compare_71_3_on * 1) + POWER_LVL) % 255) OUTPUT_ENABLE[287] <= 0;
        
    always @(posedge pwmclk)
            if (counter == (compare_72_0_on * 1) || counter == (compare_72_0_off * 1)) OUTPUT_ENABLE[288] <= 1;
            else if (counter == ((compare_72_0_off * 1) + POWER_LVL) % 255 || counter == ((compare_72_0_on * 1) + POWER_LVL) % 255) OUTPUT_ENABLE[288] <= 0;
        
    always @(posedge pwmclk)
            if (counter == (compare_72_1_on * 1) || counter == (compare_72_1_off * 1)) OUTPUT_ENABLE[289] <= 1;
            else if (counter == ((compare_72_1_off * 1) + POWER_LVL) % 255 || counter == ((compare_72_1_on * 1) + POWER_LVL) % 255) OUTPUT_ENABLE[289] <= 0;
        
    always @(posedge pwmclk)
            if (counter == (compare_72_2_on * 1) || counter == (compare_72_2_off * 1)) OUTPUT_ENABLE[290] <= 1;
            else if (counter == ((compare_72_2_off * 1) + POWER_LVL) % 255 || counter == ((compare_72_2_on * 1) + POWER_LVL) % 255) OUTPUT_ENABLE[290] <= 0;
        
    always @(posedge pwmclk)
            if (counter == (compare_72_3_on * 1) || counter == (compare_72_3_off * 1)) OUTPUT_ENABLE[291] <= 1;
            else if (counter == ((compare_72_3_off * 1) + POWER_LVL) % 255 || counter == ((compare_72_3_on * 1) + POWER_LVL) % 255) OUTPUT_ENABLE[291] <= 0;
        
    always @(posedge pwmclk)
            if (counter == (compare_73_0_on * 1) || counter == (compare_73_0_off * 1)) OUTPUT_ENABLE[292] <= 1;
            else if (counter == ((compare_73_0_off * 1) + POWER_LVL) % 255 || counter == ((compare_73_0_on * 1) + POWER_LVL) % 255) OUTPUT_ENABLE[292] <= 0;
        
    always @(posedge pwmclk)
            if (counter == (compare_73_1_on * 1) || counter == (compare_73_1_off * 1)) OUTPUT_ENABLE[293] <= 1;
            else if (counter == ((compare_73_1_off * 1) + POWER_LVL) % 255 || counter == ((compare_73_1_on * 1) + POWER_LVL) % 255) OUTPUT_ENABLE[293] <= 0;
        
    always @(posedge pwmclk)
            if (counter == (compare_73_2_on * 1) || counter == (compare_73_2_off * 1)) OUTPUT_ENABLE[294] <= 1;
            else if (counter == ((compare_73_2_off * 1) + POWER_LVL) % 255 || counter == ((compare_73_2_on * 1) + POWER_LVL) % 255) OUTPUT_ENABLE[294] <= 0;
        
    always @(posedge pwmclk)
            if (counter == (compare_73_3_on * 1) || counter == (compare_73_3_off * 1)) OUTPUT_ENABLE[295] <= 1;
            else if (counter == ((compare_73_3_off * 1) + POWER_LVL) % 255 || counter == ((compare_73_3_on * 1) + POWER_LVL) % 255) OUTPUT_ENABLE[295] <= 0;
        
    always @(posedge pwmclk)
            if (counter == (compare_74_0_on * 1) || counter == (compare_74_0_off * 1)) OUTPUT_ENABLE[296] <= 1;
            else if (counter == ((compare_74_0_off * 1) + POWER_LVL) % 255 || counter == ((compare_74_0_on * 1) + POWER_LVL) % 255) OUTPUT_ENABLE[296] <= 0;
        
    always @(posedge pwmclk)
            if (counter == (compare_74_1_on * 1) || counter == (compare_74_1_off * 1)) OUTPUT_ENABLE[297] <= 1;
            else if (counter == ((compare_74_1_off * 1) + POWER_LVL) % 255 || counter == ((compare_74_1_on * 1) + POWER_LVL) % 255) OUTPUT_ENABLE[297] <= 0;
        
    always @(posedge pwmclk)
            if (counter == (compare_74_2_on * 1) || counter == (compare_74_2_off * 1)) OUTPUT_ENABLE[298] <= 1;
            else if (counter == ((compare_74_2_off * 1) + POWER_LVL) % 255 || counter == ((compare_74_2_on * 1) + POWER_LVL) % 255) OUTPUT_ENABLE[298] <= 0;
        
    always @(posedge pwmclk)
            if (counter == (compare_74_3_on * 1) || counter == (compare_74_3_off * 1)) OUTPUT_ENABLE[299] <= 1;
            else if (counter == ((compare_74_3_off * 1) + POWER_LVL) % 255 || counter == ((compare_74_3_on * 1) + POWER_LVL) % 255) OUTPUT_ENABLE[299] <= 0;
        
    always @(posedge pwmclk)
            if (counter == (compare_75_0_on * 1) || counter == (compare_75_0_off * 1)) OUTPUT_ENABLE[300] <= 1;
            else if (counter == ((compare_75_0_off * 1) + POWER_LVL) % 255 || counter == ((compare_75_0_on * 1) + POWER_LVL) % 255) OUTPUT_ENABLE[300] <= 0;
        
    always @(posedge pwmclk)
            if (counter == (compare_75_1_on * 1) || counter == (compare_75_1_off * 1)) OUTPUT_ENABLE[301] <= 1;
            else if (counter == ((compare_75_1_off * 1) + POWER_LVL) % 255 || counter == ((compare_75_1_on * 1) + POWER_LVL) % 255) OUTPUT_ENABLE[301] <= 0;
        
    always @(posedge pwmclk)
            if (counter == (compare_75_2_on * 1) || counter == (compare_75_2_off * 1)) OUTPUT_ENABLE[302] <= 1;
            else if (counter == ((compare_75_2_off * 1) + POWER_LVL) % 255 || counter == ((compare_75_2_on * 1) + POWER_LVL) % 255) OUTPUT_ENABLE[302] <= 0;
        
    always @(posedge pwmclk)
            if (counter == (compare_75_3_on * 1) || counter == (compare_75_3_off * 1)) OUTPUT_ENABLE[303] <= 1;
            else if (counter == ((compare_75_3_off * 1) + POWER_LVL) % 255 || counter == ((compare_75_3_on * 1) + POWER_LVL) % 255) OUTPUT_ENABLE[303] <= 0;
        
    always @(posedge pwmclk)
            if (counter == (compare_76_0_on * 1) || counter == (compare_76_0_off * 1)) OUTPUT_ENABLE[304] <= 1;
            else if (counter == ((compare_76_0_off * 1) + POWER_LVL) % 255 || counter == ((compare_76_0_on * 1) + POWER_LVL) % 255) OUTPUT_ENABLE[304] <= 0;
        
    always @(posedge pwmclk)
            if (counter == (compare_76_1_on * 1) || counter == (compare_76_1_off * 1)) OUTPUT_ENABLE[305] <= 1;
            else if (counter == ((compare_76_1_off * 1) + POWER_LVL) % 255 || counter == ((compare_76_1_on * 1) + POWER_LVL) % 255) OUTPUT_ENABLE[305] <= 0;
        
    always @(posedge pwmclk)
            if (counter == (compare_76_2_on * 1) || counter == (compare_76_2_off * 1)) OUTPUT_ENABLE[306] <= 1;
            else if (counter == ((compare_76_2_off * 1) + POWER_LVL) % 255 || counter == ((compare_76_2_on * 1) + POWER_LVL) % 255) OUTPUT_ENABLE[306] <= 0;
        
    always @(posedge pwmclk)
            if (counter == (compare_76_3_on * 1) || counter == (compare_76_3_off * 1)) OUTPUT_ENABLE[307] <= 1;
            else if (counter == ((compare_76_3_off * 1) + POWER_LVL) % 255 || counter == ((compare_76_3_on * 1) + POWER_LVL) % 255) OUTPUT_ENABLE[307] <= 0;
        
    always @(posedge pwmclk)
            if (counter == (compare_77_0_on * 1) || counter == (compare_77_0_off * 1)) OUTPUT_ENABLE[308] <= 1;
            else if (counter == ((compare_77_0_off * 1) + POWER_LVL) % 255 || counter == ((compare_77_0_on * 1) + POWER_LVL) % 255) OUTPUT_ENABLE[308] <= 0;
        
    always @(posedge pwmclk)
            if (counter == (compare_77_1_on * 1) || counter == (compare_77_1_off * 1)) OUTPUT_ENABLE[309] <= 1;
            else if (counter == ((compare_77_1_off * 1) + POWER_LVL) % 255 || counter == ((compare_77_1_on * 1) + POWER_LVL) % 255) OUTPUT_ENABLE[309] <= 0;
        
    always @(posedge pwmclk)
            if (counter == (compare_77_2_on * 1) || counter == (compare_77_2_off * 1)) OUTPUT_ENABLE[310] <= 1;
            else if (counter == ((compare_77_2_off * 1) + POWER_LVL) % 255 || counter == ((compare_77_2_on * 1) + POWER_LVL) % 255) OUTPUT_ENABLE[310] <= 0;
        
    always @(posedge pwmclk)
            if (counter == (compare_77_3_on * 1) || counter == (compare_77_3_off * 1)) OUTPUT_ENABLE[311] <= 1;
            else if (counter == ((compare_77_3_off * 1) + POWER_LVL) % 255 || counter == ((compare_77_3_on * 1) + POWER_LVL) % 255) OUTPUT_ENABLE[311] <= 0;
        
    always @(posedge pwmclk)
            if (counter == (compare_78_0_on * 1) || counter == (compare_78_0_off * 1)) OUTPUT_ENABLE[312] <= 1;
            else if (counter == ((compare_78_0_off * 1) + POWER_LVL) % 255 || counter == ((compare_78_0_on * 1) + POWER_LVL) % 255) OUTPUT_ENABLE[312] <= 0;
        
    always @(posedge pwmclk)
            if (counter == (compare_78_1_on * 1) || counter == (compare_78_1_off * 1)) OUTPUT_ENABLE[313] <= 1;
            else if (counter == ((compare_78_1_off * 1) + POWER_LVL) % 255 || counter == ((compare_78_1_on * 1) + POWER_LVL) % 255) OUTPUT_ENABLE[313] <= 0;
        
    always @(posedge pwmclk)
            if (counter == (compare_78_2_on * 1) || counter == (compare_78_2_off * 1)) OUTPUT_ENABLE[314] <= 1;
            else if (counter == ((compare_78_2_off * 1) + POWER_LVL) % 255 || counter == ((compare_78_2_on * 1) + POWER_LVL) % 255) OUTPUT_ENABLE[314] <= 0;
        
    always @(posedge pwmclk)
            if (counter == (compare_78_3_on * 1) || counter == (compare_78_3_off * 1)) OUTPUT_ENABLE[315] <= 1;
            else if (counter == ((compare_78_3_off * 1) + POWER_LVL) % 255 || counter == ((compare_78_3_on * 1) + POWER_LVL) % 255) OUTPUT_ENABLE[315] <= 0;
        
    always @(posedge pwmclk)
            if (counter == (compare_79_0_on * 1) || counter == (compare_79_0_off * 1)) OUTPUT_ENABLE[316] <= 1;
            else if (counter == ((compare_79_0_off * 1) + POWER_LVL) % 255 || counter == ((compare_79_0_on * 1) + POWER_LVL) % 255) OUTPUT_ENABLE[316] <= 0;
        
    always @(posedge pwmclk)
            if (counter == (compare_79_1_on * 1) || counter == (compare_79_1_off * 1)) OUTPUT_ENABLE[317] <= 1;
            else if (counter == ((compare_79_1_off * 1) + POWER_LVL) % 255 || counter == ((compare_79_1_on * 1) + POWER_LVL) % 255) OUTPUT_ENABLE[317] <= 0;
        
    always @(posedge pwmclk)
            if (counter == (compare_79_2_on * 1) || counter == (compare_79_2_off * 1)) OUTPUT_ENABLE[318] <= 1;
            else if (counter == ((compare_79_2_off * 1) + POWER_LVL) % 255 || counter == ((compare_79_2_on * 1) + POWER_LVL) % 255) OUTPUT_ENABLE[318] <= 0;
        
    always @(posedge pwmclk)
            if (counter == (compare_79_3_on * 1) || counter == (compare_79_3_off * 1)) OUTPUT_ENABLE[319] <= 1;
            else if (counter == ((compare_79_3_off * 1) + POWER_LVL) % 255 || counter == ((compare_79_3_on * 1) + POWER_LVL) % 255) OUTPUT_ENABLE[319] <= 0;
        
    always @(posedge pwmclk)
            if (counter == (compare_80_0_on * 1) || counter == (compare_80_0_off * 1)) OUTPUT_ENABLE[320] <= 1;
            else if (counter == ((compare_80_0_off * 1) + POWER_LVL) % 255 || counter == ((compare_80_0_on * 1) + POWER_LVL) % 255) OUTPUT_ENABLE[320] <= 0;
        
    always @(posedge pwmclk)
            if (counter == (compare_80_1_on * 1) || counter == (compare_80_1_off * 1)) OUTPUT_ENABLE[321] <= 1;
            else if (counter == ((compare_80_1_off * 1) + POWER_LVL) % 255 || counter == ((compare_80_1_on * 1) + POWER_LVL) % 255) OUTPUT_ENABLE[321] <= 0;
        
    always @(posedge pwmclk)
            if (counter == (compare_80_2_on * 1) || counter == (compare_80_2_off * 1)) OUTPUT_ENABLE[322] <= 1;
            else if (counter == ((compare_80_2_off * 1) + POWER_LVL) % 255 || counter == ((compare_80_2_on * 1) + POWER_LVL) % 255) OUTPUT_ENABLE[322] <= 0;
        
    always @(posedge pwmclk)
            if (counter == (compare_80_3_on * 1) || counter == (compare_80_3_off * 1)) OUTPUT_ENABLE[323] <= 1;
            else if (counter == ((compare_80_3_off * 1) + POWER_LVL) % 255 || counter == ((compare_80_3_on * 1) + POWER_LVL) % 255) OUTPUT_ENABLE[323] <= 0;
        
    always @(posedge pwmclk)
            if (counter == (compare_81_0_on * 1) || counter == (compare_81_0_off * 1)) OUTPUT_ENABLE[324] <= 1;
            else if (counter == ((compare_81_0_off * 1) + POWER_LVL) % 255 || counter == ((compare_81_0_on * 1) + POWER_LVL) % 255) OUTPUT_ENABLE[324] <= 0;
        
    always @(posedge pwmclk)
            if (counter == (compare_81_1_on * 1) || counter == (compare_81_1_off * 1)) OUTPUT_ENABLE[325] <= 1;
            else if (counter == ((compare_81_1_off * 1) + POWER_LVL) % 255 || counter == ((compare_81_1_on * 1) + POWER_LVL) % 255) OUTPUT_ENABLE[325] <= 0;
        
    always @(posedge pwmclk)
            if (counter == (compare_81_2_on * 1) || counter == (compare_81_2_off * 1)) OUTPUT_ENABLE[326] <= 1;
            else if (counter == ((compare_81_2_off * 1) + POWER_LVL) % 255 || counter == ((compare_81_2_on * 1) + POWER_LVL) % 255) OUTPUT_ENABLE[326] <= 0;
        
    always @(posedge pwmclk)
            if (counter == (compare_81_3_on * 1) || counter == (compare_81_3_off * 1)) OUTPUT_ENABLE[327] <= 1;
            else if (counter == ((compare_81_3_off * 1) + POWER_LVL) % 255 || counter == ((compare_81_3_on * 1) + POWER_LVL) % 255) OUTPUT_ENABLE[327] <= 0;
        
    always @(posedge pwmclk)
            if (counter == (compare_82_0_on * 1) || counter == (compare_82_0_off * 1)) OUTPUT_ENABLE[328] <= 1;
            else if (counter == ((compare_82_0_off * 1) + POWER_LVL) % 255 || counter == ((compare_82_0_on * 1) + POWER_LVL) % 255) OUTPUT_ENABLE[328] <= 0;
        
    always @(posedge pwmclk)
            if (counter == (compare_82_1_on * 1) || counter == (compare_82_1_off * 1)) OUTPUT_ENABLE[329] <= 1;
            else if (counter == ((compare_82_1_off * 1) + POWER_LVL) % 255 || counter == ((compare_82_1_on * 1) + POWER_LVL) % 255) OUTPUT_ENABLE[329] <= 0;
        
    always @(posedge pwmclk)
            if (counter == (compare_82_2_on * 1) || counter == (compare_82_2_off * 1)) OUTPUT_ENABLE[330] <= 1;
            else if (counter == ((compare_82_2_off * 1) + POWER_LVL) % 255 || counter == ((compare_82_2_on * 1) + POWER_LVL) % 255) OUTPUT_ENABLE[330] <= 0;
        
    always @(posedge pwmclk)
            if (counter == (compare_82_3_on * 1) || counter == (compare_82_3_off * 1)) OUTPUT_ENABLE[331] <= 1;
            else if (counter == ((compare_82_3_off * 1) + POWER_LVL) % 255 || counter == ((compare_82_3_on * 1) + POWER_LVL) % 255) OUTPUT_ENABLE[331] <= 0;
        
    always @(posedge pwmclk)
            if (counter == (compare_83_0_on * 1) || counter == (compare_83_0_off * 1)) OUTPUT_ENABLE[332] <= 1;
            else if (counter == ((compare_83_0_off * 1) + POWER_LVL) % 255 || counter == ((compare_83_0_on * 1) + POWER_LVL) % 255) OUTPUT_ENABLE[332] <= 0;
        
    always @(posedge pwmclk)
            if (counter == (compare_83_1_on * 1) || counter == (compare_83_1_off * 1)) OUTPUT_ENABLE[333] <= 1;
            else if (counter == ((compare_83_1_off * 1) + POWER_LVL) % 255 || counter == ((compare_83_1_on * 1) + POWER_LVL) % 255) OUTPUT_ENABLE[333] <= 0;
        
    always @(posedge pwmclk)
            if (counter == (compare_83_2_on * 1) || counter == (compare_83_2_off * 1)) OUTPUT_ENABLE[334] <= 1;
            else if (counter == ((compare_83_2_off * 1) + POWER_LVL) % 255 || counter == ((compare_83_2_on * 1) + POWER_LVL) % 255) OUTPUT_ENABLE[334] <= 0;
        
    always @(posedge pwmclk)
            if (counter == (compare_83_3_on * 1) || counter == (compare_83_3_off * 1)) OUTPUT_ENABLE[335] <= 1;
            else if (counter == ((compare_83_3_off * 1) + POWER_LVL) % 255 || counter == ((compare_83_3_on * 1) + POWER_LVL) % 255) OUTPUT_ENABLE[335] <= 0;
        
    always @(posedge pwmclk)
            if (counter == (compare_84_0_on * 1) || counter == (compare_84_0_off * 1)) OUTPUT_ENABLE[336] <= 1;
            else if (counter == ((compare_84_0_off * 1) + POWER_LVL) % 255 || counter == ((compare_84_0_on * 1) + POWER_LVL) % 255) OUTPUT_ENABLE[336] <= 0;
        
    always @(posedge pwmclk)
            if (counter == (compare_84_1_on * 1) || counter == (compare_84_1_off * 1)) OUTPUT_ENABLE[337] <= 1;
            else if (counter == ((compare_84_1_off * 1) + POWER_LVL) % 255 || counter == ((compare_84_1_on * 1) + POWER_LVL) % 255) OUTPUT_ENABLE[337] <= 0;
        
    always @(posedge pwmclk)
            if (counter == (compare_84_2_on * 1) || counter == (compare_84_2_off * 1)) OUTPUT_ENABLE[338] <= 1;
            else if (counter == ((compare_84_2_off * 1) + POWER_LVL) % 255 || counter == ((compare_84_2_on * 1) + POWER_LVL) % 255) OUTPUT_ENABLE[338] <= 0;
        
    always @(posedge pwmclk)
            if (counter == (compare_84_3_on * 1) || counter == (compare_84_3_off * 1)) OUTPUT_ENABLE[339] <= 1;
            else if (counter == ((compare_84_3_off * 1) + POWER_LVL) % 255 || counter == ((compare_84_3_on * 1) + POWER_LVL) % 255) OUTPUT_ENABLE[339] <= 0;
        
    always @(posedge pwmclk)
            if (counter == (compare_85_0_on * 1) || counter == (compare_85_0_off * 1)) OUTPUT_ENABLE[340] <= 1;
            else if (counter == ((compare_85_0_off * 1) + POWER_LVL) % 255 || counter == ((compare_85_0_on * 1) + POWER_LVL) % 255) OUTPUT_ENABLE[340] <= 0;
        
    always @(posedge pwmclk)
            if (counter == (compare_85_1_on * 1) || counter == (compare_85_1_off * 1)) OUTPUT_ENABLE[341] <= 1;
            else if (counter == ((compare_85_1_off * 1) + POWER_LVL) % 255 || counter == ((compare_85_1_on * 1) + POWER_LVL) % 255) OUTPUT_ENABLE[341] <= 0;
        
    always @(posedge pwmclk)
            if (counter == (compare_85_2_on * 1) || counter == (compare_85_2_off * 1)) OUTPUT_ENABLE[342] <= 1;
            else if (counter == ((compare_85_2_off * 1) + POWER_LVL) % 255 || counter == ((compare_85_2_on * 1) + POWER_LVL) % 255) OUTPUT_ENABLE[342] <= 0;
        
    always @(posedge pwmclk)
            if (counter == (compare_85_3_on * 1) || counter == (compare_85_3_off * 1)) OUTPUT_ENABLE[343] <= 1;
            else if (counter == ((compare_85_3_off * 1) + POWER_LVL) % 255 || counter == ((compare_85_3_on * 1) + POWER_LVL) % 255) OUTPUT_ENABLE[343] <= 0;
        
    always @(posedge pwmclk)
            if (counter == (compare_86_0_on * 1) || counter == (compare_86_0_off * 1)) OUTPUT_ENABLE[344] <= 1;
            else if (counter == ((compare_86_0_off * 1) + POWER_LVL) % 255 || counter == ((compare_86_0_on * 1) + POWER_LVL) % 255) OUTPUT_ENABLE[344] <= 0;
        
    always @(posedge pwmclk)
            if (counter == (compare_86_1_on * 1) || counter == (compare_86_1_off * 1)) OUTPUT_ENABLE[345] <= 1;
            else if (counter == ((compare_86_1_off * 1) + POWER_LVL) % 255 || counter == ((compare_86_1_on * 1) + POWER_LVL) % 255) OUTPUT_ENABLE[345] <= 0;
        
    always @(posedge pwmclk)
            if (counter == (compare_86_2_on * 1) || counter == (compare_86_2_off * 1)) OUTPUT_ENABLE[346] <= 1;
            else if (counter == ((compare_86_2_off * 1) + POWER_LVL) % 255 || counter == ((compare_86_2_on * 1) + POWER_LVL) % 255) OUTPUT_ENABLE[346] <= 0;
        
    always @(posedge pwmclk)
            if (counter == (compare_86_3_on * 1) || counter == (compare_86_3_off * 1)) OUTPUT_ENABLE[347] <= 1;
            else if (counter == ((compare_86_3_off * 1) + POWER_LVL) % 255 || counter == ((compare_86_3_on * 1) + POWER_LVL) % 255) OUTPUT_ENABLE[347] <= 0;
        
    always @(posedge pwmclk)
            if (counter == (compare_87_0_on * 1) || counter == (compare_87_0_off * 1)) OUTPUT_ENABLE[348] <= 1;
            else if (counter == ((compare_87_0_off * 1) + POWER_LVL) % 255 || counter == ((compare_87_0_on * 1) + POWER_LVL) % 255) OUTPUT_ENABLE[348] <= 0;
        
    always @(posedge pwmclk)
            if (counter == (compare_87_1_on * 1) || counter == (compare_87_1_off * 1)) OUTPUT_ENABLE[349] <= 1;
            else if (counter == ((compare_87_1_off * 1) + POWER_LVL) % 255 || counter == ((compare_87_1_on * 1) + POWER_LVL) % 255) OUTPUT_ENABLE[349] <= 0;
        
    always @(posedge pwmclk)
            if (counter == (compare_87_2_on * 1) || counter == (compare_87_2_off * 1)) OUTPUT_ENABLE[350] <= 1;
            else if (counter == ((compare_87_2_off * 1) + POWER_LVL) % 255 || counter == ((compare_87_2_on * 1) + POWER_LVL) % 255) OUTPUT_ENABLE[350] <= 0;
        
    always @(posedge pwmclk)
            if (counter == (compare_87_3_on * 1) || counter == (compare_87_3_off * 1)) OUTPUT_ENABLE[351] <= 1;
            else if (counter == ((compare_87_3_off * 1) + POWER_LVL) % 255 || counter == ((compare_87_3_on * 1) + POWER_LVL) % 255) OUTPUT_ENABLE[351] <= 0;
        
    always @(posedge pwmclk)
            if (counter == (compare_88_0_on * 1) || counter == (compare_88_0_off * 1)) OUTPUT_ENABLE[352] <= 1;
            else if (counter == ((compare_88_0_off * 1) + POWER_LVL) % 255 || counter == ((compare_88_0_on * 1) + POWER_LVL) % 255) OUTPUT_ENABLE[352] <= 0;
        
    always @(posedge pwmclk)
            if (counter == (compare_88_1_on * 1) || counter == (compare_88_1_off * 1)) OUTPUT_ENABLE[353] <= 1;
            else if (counter == ((compare_88_1_off * 1) + POWER_LVL) % 255 || counter == ((compare_88_1_on * 1) + POWER_LVL) % 255) OUTPUT_ENABLE[353] <= 0;
        
    always @(posedge pwmclk)
            if (counter == (compare_88_2_on * 1) || counter == (compare_88_2_off * 1)) OUTPUT_ENABLE[354] <= 1;
            else if (counter == ((compare_88_2_off * 1) + POWER_LVL) % 255 || counter == ((compare_88_2_on * 1) + POWER_LVL) % 255) OUTPUT_ENABLE[354] <= 0;
        
    always @(posedge pwmclk)
            if (counter == (compare_88_3_on * 1) || counter == (compare_88_3_off * 1)) OUTPUT_ENABLE[355] <= 1;
            else if (counter == ((compare_88_3_off * 1) + POWER_LVL) % 255 || counter == ((compare_88_3_on * 1) + POWER_LVL) % 255) OUTPUT_ENABLE[355] <= 0;
        
    always @(posedge pwmclk)
            if (counter == (compare_89_0_on * 1) || counter == (compare_89_0_off * 1)) OUTPUT_ENABLE[356] <= 1;
            else if (counter == ((compare_89_0_off * 1) + POWER_LVL) % 255 || counter == ((compare_89_0_on * 1) + POWER_LVL) % 255) OUTPUT_ENABLE[356] <= 0;
        
    always @(posedge pwmclk)
            if (counter == (compare_89_1_on * 1) || counter == (compare_89_1_off * 1)) OUTPUT_ENABLE[357] <= 1;
            else if (counter == ((compare_89_1_off * 1) + POWER_LVL) % 255 || counter == ((compare_89_1_on * 1) + POWER_LVL) % 255) OUTPUT_ENABLE[357] <= 0;
        
    always @(posedge pwmclk)
            if (counter == (compare_89_2_on * 1) || counter == (compare_89_2_off * 1)) OUTPUT_ENABLE[358] <= 1;
            else if (counter == ((compare_89_2_off * 1) + POWER_LVL) % 255 || counter == ((compare_89_2_on * 1) + POWER_LVL) % 255) OUTPUT_ENABLE[358] <= 0;
        
    always @(posedge pwmclk)
            if (counter == (compare_89_3_on * 1) || counter == (compare_89_3_off * 1)) OUTPUT_ENABLE[359] <= 1;
            else if (counter == ((compare_89_3_off * 1) + POWER_LVL) % 255 || counter == ((compare_89_3_on * 1) + POWER_LVL) % 255) OUTPUT_ENABLE[359] <= 0;
        

    

	

   always @(posedge pwmclk)
     if (r1 && !r2)
        begin
            if (data_reg0[7:0] < 127)
                begin
                    compare_0_0_on <= data_reg0[7:0];
                    compare_0_0_off <= data_reg0[7:0] + 127;
                end
            else
                begin
                    compare_0_0_on <= data_reg0[7:0];
                    compare_0_0_off <= data_reg0[7:0] - 127;
                end
        end

   always @(posedge pwmclk)
    if (r1 && !r2)
        begin
            if (data_reg0[15:8] < 127)
                begin
                    compare_0_1_on <= data_reg0[15:8];
                    compare_0_1_off <= data_reg0[15:8] + 127;
                end
            else
                begin
                    compare_0_1_on <= data_reg0[15:8];
                    compare_0_1_off <= data_reg0[15:8] - 127;
                end
        end
   always @(posedge pwmclk)
    if (r1 && !r2)
        begin
            if (data_reg0[23:16] < 127)
                begin
                    compare_0_2_on <= data_reg0[23:16];
                    compare_0_2_off <= data_reg0[23:16] + 127;
                end
            else
                begin
                    compare_0_2_on <= data_reg0[23:16];
                    compare_0_2_off <= data_reg0[23:16] - 127;
                end
        end
   always @(posedge pwmclk)
    if (r1 && !r2)
        begin
            if (data_reg0[31:24] < 127)
                begin
                    compare_0_3_on <= data_reg0[31:24];
                    compare_0_3_off <= data_reg0[31:24] + 127;
                end
            else
                begin
                    compare_0_3_on <= data_reg0[31:24];
                    compare_0_3_off <= data_reg0[31:24] - 127;
                end
        end
   always @(posedge pwmclk)
     if (r1 && !r2)
        begin
            if (data_reg1[7:0] < 127)
                begin
                    compare_1_0_on <= data_reg1[7:0];
                    compare_1_0_off <= data_reg1[7:0] + 127;
                end
            else
                begin
                    compare_1_0_on <= data_reg1[7:0];
                    compare_1_0_off <= data_reg1[7:0] - 127;
                end
        end

   always @(posedge pwmclk)
    if (r1 && !r2)
        begin
            if (data_reg1[15:8] < 127)
                begin
                    compare_1_1_on <= data_reg1[15:8];
                    compare_1_1_off <= data_reg1[15:8] + 127;
                end
            else
                begin
                    compare_1_1_on <= data_reg1[15:8];
                    compare_1_1_off <= data_reg1[15:8] - 127;
                end
        end
   always @(posedge pwmclk)
    if (r1 && !r2)
        begin
            if (data_reg1[23:16] < 127)
                begin
                    compare_1_2_on <= data_reg1[23:16];
                    compare_1_2_off <= data_reg1[23:16] + 127;
                end
            else
                begin
                    compare_1_2_on <= data_reg1[23:16];
                    compare_1_2_off <= data_reg1[23:16] - 127;
                end
        end
   always @(posedge pwmclk)
    if (r1 && !r2)
        begin
            if (data_reg1[31:24] < 127)
                begin
                    compare_1_3_on <= data_reg1[31:24];
                    compare_1_3_off <= data_reg1[31:24] + 127;
                end
            else
                begin
                    compare_1_3_on <= data_reg1[31:24];
                    compare_1_3_off <= data_reg1[31:24] - 127;
                end
        end
   always @(posedge pwmclk)
     if (r1 && !r2)
        begin
            if (data_reg2[7:0] < 127)
                begin
                    compare_2_0_on <= data_reg2[7:0];
                    compare_2_0_off <= data_reg2[7:0] + 127;
                end
            else
                begin
                    compare_2_0_on <= data_reg2[7:0];
                    compare_2_0_off <= data_reg2[7:0] - 127;
                end
        end

   always @(posedge pwmclk)
    if (r1 && !r2)
        begin
            if (data_reg2[15:8] < 127)
                begin
                    compare_2_1_on <= data_reg2[15:8];
                    compare_2_1_off <= data_reg2[15:8] + 127;
                end
            else
                begin
                    compare_2_1_on <= data_reg2[15:8];
                    compare_2_1_off <= data_reg2[15:8] - 127;
                end
        end
   always @(posedge pwmclk)
    if (r1 && !r2)
        begin
            if (data_reg2[23:16] < 127)
                begin
                    compare_2_2_on <= data_reg2[23:16];
                    compare_2_2_off <= data_reg2[23:16] + 127;
                end
            else
                begin
                    compare_2_2_on <= data_reg2[23:16];
                    compare_2_2_off <= data_reg2[23:16] - 127;
                end
        end
   always @(posedge pwmclk)
    if (r1 && !r2)
        begin
            if (data_reg2[31:24] < 127)
                begin
                    compare_2_3_on <= data_reg2[31:24];
                    compare_2_3_off <= data_reg2[31:24] + 127;
                end
            else
                begin
                    compare_2_3_on <= data_reg2[31:24];
                    compare_2_3_off <= data_reg2[31:24] - 127;
                end
        end
   always @(posedge pwmclk)
     if (r1 && !r2)
        begin
            if (data_reg3[7:0] < 127)
                begin
                    compare_3_0_on <= data_reg3[7:0];
                    compare_3_0_off <= data_reg3[7:0] + 127;
                end
            else
                begin
                    compare_3_0_on <= data_reg3[7:0];
                    compare_3_0_off <= data_reg3[7:0] - 127;
                end
        end

   always @(posedge pwmclk)
    if (r1 && !r2)
        begin
            if (data_reg3[15:8] < 127)
                begin
                    compare_3_1_on <= data_reg3[15:8];
                    compare_3_1_off <= data_reg3[15:8] + 127;
                end
            else
                begin
                    compare_3_1_on <= data_reg3[15:8];
                    compare_3_1_off <= data_reg3[15:8] - 127;
                end
        end
   always @(posedge pwmclk)
    if (r1 && !r2)
        begin
            if (data_reg3[23:16] < 127)
                begin
                    compare_3_2_on <= data_reg3[23:16];
                    compare_3_2_off <= data_reg3[23:16] + 127;
                end
            else
                begin
                    compare_3_2_on <= data_reg3[23:16];
                    compare_3_2_off <= data_reg3[23:16] - 127;
                end
        end
   always @(posedge pwmclk)
    if (r1 && !r2)
        begin
            if (data_reg3[31:24] < 127)
                begin
                    compare_3_3_on <= data_reg3[31:24];
                    compare_3_3_off <= data_reg3[31:24] + 127;
                end
            else
                begin
                    compare_3_3_on <= data_reg3[31:24];
                    compare_3_3_off <= data_reg3[31:24] - 127;
                end
        end
   always @(posedge pwmclk)
     if (r1 && !r2)
        begin
            if (data_reg4[7:0] < 127)
                begin
                    compare_4_0_on <= data_reg4[7:0];
                    compare_4_0_off <= data_reg4[7:0] + 127;
                end
            else
                begin
                    compare_4_0_on <= data_reg4[7:0];
                    compare_4_0_off <= data_reg4[7:0] - 127;
                end
        end

   always @(posedge pwmclk)
    if (r1 && !r2)
        begin
            if (data_reg4[15:8] < 127)
                begin
                    compare_4_1_on <= data_reg4[15:8];
                    compare_4_1_off <= data_reg4[15:8] + 127;
                end
            else
                begin
                    compare_4_1_on <= data_reg4[15:8];
                    compare_4_1_off <= data_reg4[15:8] - 127;
                end
        end
   always @(posedge pwmclk)
    if (r1 && !r2)
        begin
            if (data_reg4[23:16] < 127)
                begin
                    compare_4_2_on <= data_reg4[23:16];
                    compare_4_2_off <= data_reg4[23:16] + 127;
                end
            else
                begin
                    compare_4_2_on <= data_reg4[23:16];
                    compare_4_2_off <= data_reg4[23:16] - 127;
                end
        end
   always @(posedge pwmclk)
    if (r1 && !r2)
        begin
            if (data_reg4[31:24] < 127)
                begin
                    compare_4_3_on <= data_reg4[31:24];
                    compare_4_3_off <= data_reg4[31:24] + 127;
                end
            else
                begin
                    compare_4_3_on <= data_reg4[31:24];
                    compare_4_3_off <= data_reg4[31:24] - 127;
                end
        end
   always @(posedge pwmclk)
     if (r1 && !r2)
        begin
            if (data_reg5[7:0] < 127)
                begin
                    compare_5_0_on <= data_reg5[7:0];
                    compare_5_0_off <= data_reg5[7:0] + 127;
                end
            else
                begin
                    compare_5_0_on <= data_reg5[7:0];
                    compare_5_0_off <= data_reg5[7:0] - 127;
                end
        end

   always @(posedge pwmclk)
    if (r1 && !r2)
        begin
            if (data_reg5[15:8] < 127)
                begin
                    compare_5_1_on <= data_reg5[15:8];
                    compare_5_1_off <= data_reg5[15:8] + 127;
                end
            else
                begin
                    compare_5_1_on <= data_reg5[15:8];
                    compare_5_1_off <= data_reg5[15:8] - 127;
                end
        end
   always @(posedge pwmclk)
    if (r1 && !r2)
        begin
            if (data_reg5[23:16] < 127)
                begin
                    compare_5_2_on <= data_reg5[23:16];
                    compare_5_2_off <= data_reg5[23:16] + 127;
                end
            else
                begin
                    compare_5_2_on <= data_reg5[23:16];
                    compare_5_2_off <= data_reg5[23:16] - 127;
                end
        end
   always @(posedge pwmclk)
    if (r1 && !r2)
        begin
            if (data_reg5[31:24] < 127)
                begin
                    compare_5_3_on <= data_reg5[31:24];
                    compare_5_3_off <= data_reg5[31:24] + 127;
                end
            else
                begin
                    compare_5_3_on <= data_reg5[31:24];
                    compare_5_3_off <= data_reg5[31:24] - 127;
                end
        end
   always @(posedge pwmclk)
     if (r1 && !r2)
        begin
            if (data_reg6[7:0] < 127)
                begin
                    compare_6_0_on <= data_reg6[7:0];
                    compare_6_0_off <= data_reg6[7:0] + 127;
                end
            else
                begin
                    compare_6_0_on <= data_reg6[7:0];
                    compare_6_0_off <= data_reg6[7:0] - 127;
                end
        end

   always @(posedge pwmclk)
    if (r1 && !r2)
        begin
            if (data_reg6[15:8] < 127)
                begin
                    compare_6_1_on <= data_reg6[15:8];
                    compare_6_1_off <= data_reg6[15:8] + 127;
                end
            else
                begin
                    compare_6_1_on <= data_reg6[15:8];
                    compare_6_1_off <= data_reg6[15:8] - 127;
                end
        end
   always @(posedge pwmclk)
    if (r1 && !r2)
        begin
            if (data_reg6[23:16] < 127)
                begin
                    compare_6_2_on <= data_reg6[23:16];
                    compare_6_2_off <= data_reg6[23:16] + 127;
                end
            else
                begin
                    compare_6_2_on <= data_reg6[23:16];
                    compare_6_2_off <= data_reg6[23:16] - 127;
                end
        end
   always @(posedge pwmclk)
    if (r1 && !r2)
        begin
            if (data_reg6[31:24] < 127)
                begin
                    compare_6_3_on <= data_reg6[31:24];
                    compare_6_3_off <= data_reg6[31:24] + 127;
                end
            else
                begin
                    compare_6_3_on <= data_reg6[31:24];
                    compare_6_3_off <= data_reg6[31:24] - 127;
                end
        end
   always @(posedge pwmclk)
     if (r1 && !r2)
        begin
            if (data_reg7[7:0] < 127)
                begin
                    compare_7_0_on <= data_reg7[7:0];
                    compare_7_0_off <= data_reg7[7:0] + 127;
                end
            else
                begin
                    compare_7_0_on <= data_reg7[7:0];
                    compare_7_0_off <= data_reg7[7:0] - 127;
                end
        end

   always @(posedge pwmclk)
    if (r1 && !r2)
        begin
            if (data_reg7[15:8] < 127)
                begin
                    compare_7_1_on <= data_reg7[15:8];
                    compare_7_1_off <= data_reg7[15:8] + 127;
                end
            else
                begin
                    compare_7_1_on <= data_reg7[15:8];
                    compare_7_1_off <= data_reg7[15:8] - 127;
                end
        end
   always @(posedge pwmclk)
    if (r1 && !r2)
        begin
            if (data_reg7[23:16] < 127)
                begin
                    compare_7_2_on <= data_reg7[23:16];
                    compare_7_2_off <= data_reg7[23:16] + 127;
                end
            else
                begin
                    compare_7_2_on <= data_reg7[23:16];
                    compare_7_2_off <= data_reg7[23:16] - 127;
                end
        end
   always @(posedge pwmclk)
    if (r1 && !r2)
        begin
            if (data_reg7[31:24] < 127)
                begin
                    compare_7_3_on <= data_reg7[31:24];
                    compare_7_3_off <= data_reg7[31:24] + 127;
                end
            else
                begin
                    compare_7_3_on <= data_reg7[31:24];
                    compare_7_3_off <= data_reg7[31:24] - 127;
                end
        end
   always @(posedge pwmclk)
     if (r1 && !r2)
        begin
            if (data_reg8[7:0] < 127)
                begin
                    compare_8_0_on <= data_reg8[7:0];
                    compare_8_0_off <= data_reg8[7:0] + 127;
                end
            else
                begin
                    compare_8_0_on <= data_reg8[7:0];
                    compare_8_0_off <= data_reg8[7:0] - 127;
                end
        end

   always @(posedge pwmclk)
    if (r1 && !r2)
        begin
            if (data_reg8[15:8] < 127)
                begin
                    compare_8_1_on <= data_reg8[15:8];
                    compare_8_1_off <= data_reg8[15:8] + 127;
                end
            else
                begin
                    compare_8_1_on <= data_reg8[15:8];
                    compare_8_1_off <= data_reg8[15:8] - 127;
                end
        end
   always @(posedge pwmclk)
    if (r1 && !r2)
        begin
            if (data_reg8[23:16] < 127)
                begin
                    compare_8_2_on <= data_reg8[23:16];
                    compare_8_2_off <= data_reg8[23:16] + 127;
                end
            else
                begin
                    compare_8_2_on <= data_reg8[23:16];
                    compare_8_2_off <= data_reg8[23:16] - 127;
                end
        end
   always @(posedge pwmclk)
    if (r1 && !r2)
        begin
            if (data_reg8[31:24] < 127)
                begin
                    compare_8_3_on <= data_reg8[31:24];
                    compare_8_3_off <= data_reg8[31:24] + 127;
                end
            else
                begin
                    compare_8_3_on <= data_reg8[31:24];
                    compare_8_3_off <= data_reg8[31:24] - 127;
                end
        end
   always @(posedge pwmclk)
     if (r1 && !r2)
        begin
            if (data_reg9[7:0] < 127)
                begin
                    compare_9_0_on <= data_reg9[7:0];
                    compare_9_0_off <= data_reg9[7:0] + 127;
                end
            else
                begin
                    compare_9_0_on <= data_reg9[7:0];
                    compare_9_0_off <= data_reg9[7:0] - 127;
                end
        end

   always @(posedge pwmclk)
    if (r1 && !r2)
        begin
            if (data_reg9[15:8] < 127)
                begin
                    compare_9_1_on <= data_reg9[15:8];
                    compare_9_1_off <= data_reg9[15:8] + 127;
                end
            else
                begin
                    compare_9_1_on <= data_reg9[15:8];
                    compare_9_1_off <= data_reg9[15:8] - 127;
                end
        end
   always @(posedge pwmclk)
    if (r1 && !r2)
        begin
            if (data_reg9[23:16] < 127)
                begin
                    compare_9_2_on <= data_reg9[23:16];
                    compare_9_2_off <= data_reg9[23:16] + 127;
                end
            else
                begin
                    compare_9_2_on <= data_reg9[23:16];
                    compare_9_2_off <= data_reg9[23:16] - 127;
                end
        end
   always @(posedge pwmclk)
    if (r1 && !r2)
        begin
            if (data_reg9[31:24] < 127)
                begin
                    compare_9_3_on <= data_reg9[31:24];
                    compare_9_3_off <= data_reg9[31:24] + 127;
                end
            else
                begin
                    compare_9_3_on <= data_reg9[31:24];
                    compare_9_3_off <= data_reg9[31:24] - 127;
                end
        end
   always @(posedge pwmclk)
     if (r1 && !r2)
        begin
            if (data_reg10[7:0] < 127)
                begin
                    compare_10_0_on <= data_reg10[7:0];
                    compare_10_0_off <= data_reg10[7:0] + 127;
                end
            else
                begin
                    compare_10_0_on <= data_reg10[7:0];
                    compare_10_0_off <= data_reg10[7:0] - 127;
                end
        end

   always @(posedge pwmclk)
    if (r1 && !r2)
        begin
            if (data_reg10[15:8] < 127)
                begin
                    compare_10_1_on <= data_reg10[15:8];
                    compare_10_1_off <= data_reg10[15:8] + 127;
                end
            else
                begin
                    compare_10_1_on <= data_reg10[15:8];
                    compare_10_1_off <= data_reg10[15:8] - 127;
                end
        end
   always @(posedge pwmclk)
    if (r1 && !r2)
        begin
            if (data_reg10[23:16] < 127)
                begin
                    compare_10_2_on <= data_reg10[23:16];
                    compare_10_2_off <= data_reg10[23:16] + 127;
                end
            else
                begin
                    compare_10_2_on <= data_reg10[23:16];
                    compare_10_2_off <= data_reg10[23:16] - 127;
                end
        end
   always @(posedge pwmclk)
    if (r1 && !r2)
        begin
            if (data_reg10[31:24] < 127)
                begin
                    compare_10_3_on <= data_reg10[31:24];
                    compare_10_3_off <= data_reg10[31:24] + 127;
                end
            else
                begin
                    compare_10_3_on <= data_reg10[31:24];
                    compare_10_3_off <= data_reg10[31:24] - 127;
                end
        end
   always @(posedge pwmclk)
     if (r1 && !r2)
        begin
            if (data_reg11[7:0] < 127)
                begin
                    compare_11_0_on <= data_reg11[7:0];
                    compare_11_0_off <= data_reg11[7:0] + 127;
                end
            else
                begin
                    compare_11_0_on <= data_reg11[7:0];
                    compare_11_0_off <= data_reg11[7:0] - 127;
                end
        end

   always @(posedge pwmclk)
    if (r1 && !r2)
        begin
            if (data_reg11[15:8] < 127)
                begin
                    compare_11_1_on <= data_reg11[15:8];
                    compare_11_1_off <= data_reg11[15:8] + 127;
                end
            else
                begin
                    compare_11_1_on <= data_reg11[15:8];
                    compare_11_1_off <= data_reg11[15:8] - 127;
                end
        end
   always @(posedge pwmclk)
    if (r1 && !r2)
        begin
            if (data_reg11[23:16] < 127)
                begin
                    compare_11_2_on <= data_reg11[23:16];
                    compare_11_2_off <= data_reg11[23:16] + 127;
                end
            else
                begin
                    compare_11_2_on <= data_reg11[23:16];
                    compare_11_2_off <= data_reg11[23:16] - 127;
                end
        end
   always @(posedge pwmclk)
    if (r1 && !r2)
        begin
            if (data_reg11[31:24] < 127)
                begin
                    compare_11_3_on <= data_reg11[31:24];
                    compare_11_3_off <= data_reg11[31:24] + 127;
                end
            else
                begin
                    compare_11_3_on <= data_reg11[31:24];
                    compare_11_3_off <= data_reg11[31:24] - 127;
                end
        end
   always @(posedge pwmclk)
     if (r1 && !r2)
        begin
            if (data_reg12[7:0] < 127)
                begin
                    compare_12_0_on <= data_reg12[7:0];
                    compare_12_0_off <= data_reg12[7:0] + 127;
                end
            else
                begin
                    compare_12_0_on <= data_reg12[7:0];
                    compare_12_0_off <= data_reg12[7:0] - 127;
                end
        end

   always @(posedge pwmclk)
    if (r1 && !r2)
        begin
            if (data_reg12[15:8] < 127)
                begin
                    compare_12_1_on <= data_reg12[15:8];
                    compare_12_1_off <= data_reg12[15:8] + 127;
                end
            else
                begin
                    compare_12_1_on <= data_reg12[15:8];
                    compare_12_1_off <= data_reg12[15:8] - 127;
                end
        end
   always @(posedge pwmclk)
    if (r1 && !r2)
        begin
            if (data_reg12[23:16] < 127)
                begin
                    compare_12_2_on <= data_reg12[23:16];
                    compare_12_2_off <= data_reg12[23:16] + 127;
                end
            else
                begin
                    compare_12_2_on <= data_reg12[23:16];
                    compare_12_2_off <= data_reg12[23:16] - 127;
                end
        end
   always @(posedge pwmclk)
    if (r1 && !r2)
        begin
            if (data_reg12[31:24] < 127)
                begin
                    compare_12_3_on <= data_reg12[31:24];
                    compare_12_3_off <= data_reg12[31:24] + 127;
                end
            else
                begin
                    compare_12_3_on <= data_reg12[31:24];
                    compare_12_3_off <= data_reg12[31:24] - 127;
                end
        end
   always @(posedge pwmclk)
     if (r1 && !r2)
        begin
            if (data_reg13[7:0] < 127)
                begin
                    compare_13_0_on <= data_reg13[7:0];
                    compare_13_0_off <= data_reg13[7:0] + 127;
                end
            else
                begin
                    compare_13_0_on <= data_reg13[7:0];
                    compare_13_0_off <= data_reg13[7:0] - 127;
                end
        end

   always @(posedge pwmclk)
    if (r1 && !r2)
        begin
            if (data_reg13[15:8] < 127)
                begin
                    compare_13_1_on <= data_reg13[15:8];
                    compare_13_1_off <= data_reg13[15:8] + 127;
                end
            else
                begin
                    compare_13_1_on <= data_reg13[15:8];
                    compare_13_1_off <= data_reg13[15:8] - 127;
                end
        end
   always @(posedge pwmclk)
    if (r1 && !r2)
        begin
            if (data_reg13[23:16] < 127)
                begin
                    compare_13_2_on <= data_reg13[23:16];
                    compare_13_2_off <= data_reg13[23:16] + 127;
                end
            else
                begin
                    compare_13_2_on <= data_reg13[23:16];
                    compare_13_2_off <= data_reg13[23:16] - 127;
                end
        end
   always @(posedge pwmclk)
    if (r1 && !r2)
        begin
            if (data_reg13[31:24] < 127)
                begin
                    compare_13_3_on <= data_reg13[31:24];
                    compare_13_3_off <= data_reg13[31:24] + 127;
                end
            else
                begin
                    compare_13_3_on <= data_reg13[31:24];
                    compare_13_3_off <= data_reg13[31:24] - 127;
                end
        end
   always @(posedge pwmclk)
     if (r1 && !r2)
        begin
            if (data_reg14[7:0] < 127)
                begin
                    compare_14_0_on <= data_reg14[7:0];
                    compare_14_0_off <= data_reg14[7:0] + 127;
                end
            else
                begin
                    compare_14_0_on <= data_reg14[7:0];
                    compare_14_0_off <= data_reg14[7:0] - 127;
                end
        end

   always @(posedge pwmclk)
    if (r1 && !r2)
        begin
            if (data_reg14[15:8] < 127)
                begin
                    compare_14_1_on <= data_reg14[15:8];
                    compare_14_1_off <= data_reg14[15:8] + 127;
                end
            else
                begin
                    compare_14_1_on <= data_reg14[15:8];
                    compare_14_1_off <= data_reg14[15:8] - 127;
                end
        end
   always @(posedge pwmclk)
    if (r1 && !r2)
        begin
            if (data_reg14[23:16] < 127)
                begin
                    compare_14_2_on <= data_reg14[23:16];
                    compare_14_2_off <= data_reg14[23:16] + 127;
                end
            else
                begin
                    compare_14_2_on <= data_reg14[23:16];
                    compare_14_2_off <= data_reg14[23:16] - 127;
                end
        end
   always @(posedge pwmclk)
    if (r1 && !r2)
        begin
            if (data_reg14[31:24] < 127)
                begin
                    compare_14_3_on <= data_reg14[31:24];
                    compare_14_3_off <= data_reg14[31:24] + 127;
                end
            else
                begin
                    compare_14_3_on <= data_reg14[31:24];
                    compare_14_3_off <= data_reg14[31:24] - 127;
                end
        end
   always @(posedge pwmclk)
     if (r1 && !r2)
        begin
            if (data_reg15[7:0] < 127)
                begin
                    compare_15_0_on <= data_reg15[7:0];
                    compare_15_0_off <= data_reg15[7:0] + 127;
                end
            else
                begin
                    compare_15_0_on <= data_reg15[7:0];
                    compare_15_0_off <= data_reg15[7:0] - 127;
                end
        end

   always @(posedge pwmclk)
    if (r1 && !r2)
        begin
            if (data_reg15[15:8] < 127)
                begin
                    compare_15_1_on <= data_reg15[15:8];
                    compare_15_1_off <= data_reg15[15:8] + 127;
                end
            else
                begin
                    compare_15_1_on <= data_reg15[15:8];
                    compare_15_1_off <= data_reg15[15:8] - 127;
                end
        end
   always @(posedge pwmclk)
    if (r1 && !r2)
        begin
            if (data_reg15[23:16] < 127)
                begin
                    compare_15_2_on <= data_reg15[23:16];
                    compare_15_2_off <= data_reg15[23:16] + 127;
                end
            else
                begin
                    compare_15_2_on <= data_reg15[23:16];
                    compare_15_2_off <= data_reg15[23:16] - 127;
                end
        end
   always @(posedge pwmclk)
    if (r1 && !r2)
        begin
            if (data_reg15[31:24] < 127)
                begin
                    compare_15_3_on <= data_reg15[31:24];
                    compare_15_3_off <= data_reg15[31:24] + 127;
                end
            else
                begin
                    compare_15_3_on <= data_reg15[31:24];
                    compare_15_3_off <= data_reg15[31:24] - 127;
                end
        end
   always @(posedge pwmclk)
     if (r1 && !r2)
        begin
            if (data_reg16[7:0] < 127)
                begin
                    compare_16_0_on <= data_reg16[7:0];
                    compare_16_0_off <= data_reg16[7:0] + 127;
                end
            else
                begin
                    compare_16_0_on <= data_reg16[7:0];
                    compare_16_0_off <= data_reg16[7:0] - 127;
                end
        end

   always @(posedge pwmclk)
    if (r1 && !r2)
        begin
            if (data_reg16[15:8] < 127)
                begin
                    compare_16_1_on <= data_reg16[15:8];
                    compare_16_1_off <= data_reg16[15:8] + 127;
                end
            else
                begin
                    compare_16_1_on <= data_reg16[15:8];
                    compare_16_1_off <= data_reg16[15:8] - 127;
                end
        end
   always @(posedge pwmclk)
    if (r1 && !r2)
        begin
            if (data_reg16[23:16] < 127)
                begin
                    compare_16_2_on <= data_reg16[23:16];
                    compare_16_2_off <= data_reg16[23:16] + 127;
                end
            else
                begin
                    compare_16_2_on <= data_reg16[23:16];
                    compare_16_2_off <= data_reg16[23:16] - 127;
                end
        end
   always @(posedge pwmclk)
    if (r1 && !r2)
        begin
            if (data_reg16[31:24] < 127)
                begin
                    compare_16_3_on <= data_reg16[31:24];
                    compare_16_3_off <= data_reg16[31:24] + 127;
                end
            else
                begin
                    compare_16_3_on <= data_reg16[31:24];
                    compare_16_3_off <= data_reg16[31:24] - 127;
                end
        end
   always @(posedge pwmclk)
     if (r1 && !r2)
        begin
            if (data_reg17[7:0] < 127)
                begin
                    compare_17_0_on <= data_reg17[7:0];
                    compare_17_0_off <= data_reg17[7:0] + 127;
                end
            else
                begin
                    compare_17_0_on <= data_reg17[7:0];
                    compare_17_0_off <= data_reg17[7:0] - 127;
                end
        end

   always @(posedge pwmclk)
    if (r1 && !r2)
        begin
            if (data_reg17[15:8] < 127)
                begin
                    compare_17_1_on <= data_reg17[15:8];
                    compare_17_1_off <= data_reg17[15:8] + 127;
                end
            else
                begin
                    compare_17_1_on <= data_reg17[15:8];
                    compare_17_1_off <= data_reg17[15:8] - 127;
                end
        end
   always @(posedge pwmclk)
    if (r1 && !r2)
        begin
            if (data_reg17[23:16] < 127)
                begin
                    compare_17_2_on <= data_reg17[23:16];
                    compare_17_2_off <= data_reg17[23:16] + 127;
                end
            else
                begin
                    compare_17_2_on <= data_reg17[23:16];
                    compare_17_2_off <= data_reg17[23:16] - 127;
                end
        end
   always @(posedge pwmclk)
    if (r1 && !r2)
        begin
            if (data_reg17[31:24] < 127)
                begin
                    compare_17_3_on <= data_reg17[31:24];
                    compare_17_3_off <= data_reg17[31:24] + 127;
                end
            else
                begin
                    compare_17_3_on <= data_reg17[31:24];
                    compare_17_3_off <= data_reg17[31:24] - 127;
                end
        end
   always @(posedge pwmclk)
     if (r1 && !r2)
        begin
            if (data_reg18[7:0] < 127)
                begin
                    compare_18_0_on <= data_reg18[7:0];
                    compare_18_0_off <= data_reg18[7:0] + 127;
                end
            else
                begin
                    compare_18_0_on <= data_reg18[7:0];
                    compare_18_0_off <= data_reg18[7:0] - 127;
                end
        end

   always @(posedge pwmclk)
    if (r1 && !r2)
        begin
            if (data_reg18[15:8] < 127)
                begin
                    compare_18_1_on <= data_reg18[15:8];
                    compare_18_1_off <= data_reg18[15:8] + 127;
                end
            else
                begin
                    compare_18_1_on <= data_reg18[15:8];
                    compare_18_1_off <= data_reg18[15:8] - 127;
                end
        end
   always @(posedge pwmclk)
    if (r1 && !r2)
        begin
            if (data_reg18[23:16] < 127)
                begin
                    compare_18_2_on <= data_reg18[23:16];
                    compare_18_2_off <= data_reg18[23:16] + 127;
                end
            else
                begin
                    compare_18_2_on <= data_reg18[23:16];
                    compare_18_2_off <= data_reg18[23:16] - 127;
                end
        end
   always @(posedge pwmclk)
    if (r1 && !r2)
        begin
            if (data_reg18[31:24] < 127)
                begin
                    compare_18_3_on <= data_reg18[31:24];
                    compare_18_3_off <= data_reg18[31:24] + 127;
                end
            else
                begin
                    compare_18_3_on <= data_reg18[31:24];
                    compare_18_3_off <= data_reg18[31:24] - 127;
                end
        end
   always @(posedge pwmclk)
     if (r1 && !r2)
        begin
            if (data_reg19[7:0] < 127)
                begin
                    compare_19_0_on <= data_reg19[7:0];
                    compare_19_0_off <= data_reg19[7:0] + 127;
                end
            else
                begin
                    compare_19_0_on <= data_reg19[7:0];
                    compare_19_0_off <= data_reg19[7:0] - 127;
                end
        end

   always @(posedge pwmclk)
    if (r1 && !r2)
        begin
            if (data_reg19[15:8] < 127)
                begin
                    compare_19_1_on <= data_reg19[15:8];
                    compare_19_1_off <= data_reg19[15:8] + 127;
                end
            else
                begin
                    compare_19_1_on <= data_reg19[15:8];
                    compare_19_1_off <= data_reg19[15:8] - 127;
                end
        end
   always @(posedge pwmclk)
    if (r1 && !r2)
        begin
            if (data_reg19[23:16] < 127)
                begin
                    compare_19_2_on <= data_reg19[23:16];
                    compare_19_2_off <= data_reg19[23:16] + 127;
                end
            else
                begin
                    compare_19_2_on <= data_reg19[23:16];
                    compare_19_2_off <= data_reg19[23:16] - 127;
                end
        end
   always @(posedge pwmclk)
    if (r1 && !r2)
        begin
            if (data_reg19[31:24] < 127)
                begin
                    compare_19_3_on <= data_reg19[31:24];
                    compare_19_3_off <= data_reg19[31:24] + 127;
                end
            else
                begin
                    compare_19_3_on <= data_reg19[31:24];
                    compare_19_3_off <= data_reg19[31:24] - 127;
                end
        end
   always @(posedge pwmclk)
     if (r1 && !r2)
        begin
            if (data_reg20[7:0] < 127)
                begin
                    compare_20_0_on <= data_reg20[7:0];
                    compare_20_0_off <= data_reg20[7:0] + 127;
                end
            else
                begin
                    compare_20_0_on <= data_reg20[7:0];
                    compare_20_0_off <= data_reg20[7:0] - 127;
                end
        end

   always @(posedge pwmclk)
    if (r1 && !r2)
        begin
            if (data_reg20[15:8] < 127)
                begin
                    compare_20_1_on <= data_reg20[15:8];
                    compare_20_1_off <= data_reg20[15:8] + 127;
                end
            else
                begin
                    compare_20_1_on <= data_reg20[15:8];
                    compare_20_1_off <= data_reg20[15:8] - 127;
                end
        end
   always @(posedge pwmclk)
    if (r1 && !r2)
        begin
            if (data_reg20[23:16] < 127)
                begin
                    compare_20_2_on <= data_reg20[23:16];
                    compare_20_2_off <= data_reg20[23:16] + 127;
                end
            else
                begin
                    compare_20_2_on <= data_reg20[23:16];
                    compare_20_2_off <= data_reg20[23:16] - 127;
                end
        end
   always @(posedge pwmclk)
    if (r1 && !r2)
        begin
            if (data_reg20[31:24] < 127)
                begin
                    compare_20_3_on <= data_reg20[31:24];
                    compare_20_3_off <= data_reg20[31:24] + 127;
                end
            else
                begin
                    compare_20_3_on <= data_reg20[31:24];
                    compare_20_3_off <= data_reg20[31:24] - 127;
                end
        end
   always @(posedge pwmclk)
     if (r1 && !r2)
        begin
            if (data_reg21[7:0] < 127)
                begin
                    compare_21_0_on <= data_reg21[7:0];
                    compare_21_0_off <= data_reg21[7:0] + 127;
                end
            else
                begin
                    compare_21_0_on <= data_reg21[7:0];
                    compare_21_0_off <= data_reg21[7:0] - 127;
                end
        end

   always @(posedge pwmclk)
    if (r1 && !r2)
        begin
            if (data_reg21[15:8] < 127)
                begin
                    compare_21_1_on <= data_reg21[15:8];
                    compare_21_1_off <= data_reg21[15:8] + 127;
                end
            else
                begin
                    compare_21_1_on <= data_reg21[15:8];
                    compare_21_1_off <= data_reg21[15:8] - 127;
                end
        end
   always @(posedge pwmclk)
    if (r1 && !r2)
        begin
            if (data_reg21[23:16] < 127)
                begin
                    compare_21_2_on <= data_reg21[23:16];
                    compare_21_2_off <= data_reg21[23:16] + 127;
                end
            else
                begin
                    compare_21_2_on <= data_reg21[23:16];
                    compare_21_2_off <= data_reg21[23:16] - 127;
                end
        end
   always @(posedge pwmclk)
    if (r1 && !r2)
        begin
            if (data_reg21[31:24] < 127)
                begin
                    compare_21_3_on <= data_reg21[31:24];
                    compare_21_3_off <= data_reg21[31:24] + 127;
                end
            else
                begin
                    compare_21_3_on <= data_reg21[31:24];
                    compare_21_3_off <= data_reg21[31:24] - 127;
                end
        end
   always @(posedge pwmclk)
     if (r1 && !r2)
        begin
            if (data_reg22[7:0] < 127)
                begin
                    compare_22_0_on <= data_reg22[7:0];
                    compare_22_0_off <= data_reg22[7:0] + 127;
                end
            else
                begin
                    compare_22_0_on <= data_reg22[7:0];
                    compare_22_0_off <= data_reg22[7:0] - 127;
                end
        end

   always @(posedge pwmclk)
    if (r1 && !r2)
        begin
            if (data_reg22[15:8] < 127)
                begin
                    compare_22_1_on <= data_reg22[15:8];
                    compare_22_1_off <= data_reg22[15:8] + 127;
                end
            else
                begin
                    compare_22_1_on <= data_reg22[15:8];
                    compare_22_1_off <= data_reg22[15:8] - 127;
                end
        end
   always @(posedge pwmclk)
    if (r1 && !r2)
        begin
            if (data_reg22[23:16] < 127)
                begin
                    compare_22_2_on <= data_reg22[23:16];
                    compare_22_2_off <= data_reg22[23:16] + 127;
                end
            else
                begin
                    compare_22_2_on <= data_reg22[23:16];
                    compare_22_2_off <= data_reg22[23:16] - 127;
                end
        end
   always @(posedge pwmclk)
    if (r1 && !r2)
        begin
            if (data_reg22[31:24] < 127)
                begin
                    compare_22_3_on <= data_reg22[31:24];
                    compare_22_3_off <= data_reg22[31:24] + 127;
                end
            else
                begin
                    compare_22_3_on <= data_reg22[31:24];
                    compare_22_3_off <= data_reg22[31:24] - 127;
                end
        end
   always @(posedge pwmclk)
     if (r1 && !r2)
        begin
            if (data_reg23[7:0] < 127)
                begin
                    compare_23_0_on <= data_reg23[7:0];
                    compare_23_0_off <= data_reg23[7:0] + 127;
                end
            else
                begin
                    compare_23_0_on <= data_reg23[7:0];
                    compare_23_0_off <= data_reg23[7:0] - 127;
                end
        end

   always @(posedge pwmclk)
    if (r1 && !r2)
        begin
            if (data_reg23[15:8] < 127)
                begin
                    compare_23_1_on <= data_reg23[15:8];
                    compare_23_1_off <= data_reg23[15:8] + 127;
                end
            else
                begin
                    compare_23_1_on <= data_reg23[15:8];
                    compare_23_1_off <= data_reg23[15:8] - 127;
                end
        end
   always @(posedge pwmclk)
    if (r1 && !r2)
        begin
            if (data_reg23[23:16] < 127)
                begin
                    compare_23_2_on <= data_reg23[23:16];
                    compare_23_2_off <= data_reg23[23:16] + 127;
                end
            else
                begin
                    compare_23_2_on <= data_reg23[23:16];
                    compare_23_2_off <= data_reg23[23:16] - 127;
                end
        end
   always @(posedge pwmclk)
    if (r1 && !r2)
        begin
            if (data_reg23[31:24] < 127)
                begin
                    compare_23_3_on <= data_reg23[31:24];
                    compare_23_3_off <= data_reg23[31:24] + 127;
                end
            else
                begin
                    compare_23_3_on <= data_reg23[31:24];
                    compare_23_3_off <= data_reg23[31:24] - 127;
                end
        end
   always @(posedge pwmclk)
     if (r1 && !r2)
        begin
            if (data_reg24[7:0] < 127)
                begin
                    compare_24_0_on <= data_reg24[7:0];
                    compare_24_0_off <= data_reg24[7:0] + 127;
                end
            else
                begin
                    compare_24_0_on <= data_reg24[7:0];
                    compare_24_0_off <= data_reg24[7:0] - 127;
                end
        end

   always @(posedge pwmclk)
    if (r1 && !r2)
        begin
            if (data_reg24[15:8] < 127)
                begin
                    compare_24_1_on <= data_reg24[15:8];
                    compare_24_1_off <= data_reg24[15:8] + 127;
                end
            else
                begin
                    compare_24_1_on <= data_reg24[15:8];
                    compare_24_1_off <= data_reg24[15:8] - 127;
                end
        end
   always @(posedge pwmclk)
    if (r1 && !r2)
        begin
            if (data_reg24[23:16] < 127)
                begin
                    compare_24_2_on <= data_reg24[23:16];
                    compare_24_2_off <= data_reg24[23:16] + 127;
                end
            else
                begin
                    compare_24_2_on <= data_reg24[23:16];
                    compare_24_2_off <= data_reg24[23:16] - 127;
                end
        end
   always @(posedge pwmclk)
    if (r1 && !r2)
        begin
            if (data_reg24[31:24] < 127)
                begin
                    compare_24_3_on <= data_reg24[31:24];
                    compare_24_3_off <= data_reg24[31:24] + 127;
                end
            else
                begin
                    compare_24_3_on <= data_reg24[31:24];
                    compare_24_3_off <= data_reg24[31:24] - 127;
                end
        end
   always @(posedge pwmclk)
     if (r1 && !r2)
        begin
            if (data_reg25[7:0] < 127)
                begin
                    compare_25_0_on <= data_reg25[7:0];
                    compare_25_0_off <= data_reg25[7:0] + 127;
                end
            else
                begin
                    compare_25_0_on <= data_reg25[7:0];
                    compare_25_0_off <= data_reg25[7:0] - 127;
                end
        end

   always @(posedge pwmclk)
    if (r1 && !r2)
        begin
            if (data_reg25[15:8] < 127)
                begin
                    compare_25_1_on <= data_reg25[15:8];
                    compare_25_1_off <= data_reg25[15:8] + 127;
                end
            else
                begin
                    compare_25_1_on <= data_reg25[15:8];
                    compare_25_1_off <= data_reg25[15:8] - 127;
                end
        end
   always @(posedge pwmclk)
    if (r1 && !r2)
        begin
            if (data_reg25[23:16] < 127)
                begin
                    compare_25_2_on <= data_reg25[23:16];
                    compare_25_2_off <= data_reg25[23:16] + 127;
                end
            else
                begin
                    compare_25_2_on <= data_reg25[23:16];
                    compare_25_2_off <= data_reg25[23:16] - 127;
                end
        end
   always @(posedge pwmclk)
    if (r1 && !r2)
        begin
            if (data_reg25[31:24] < 127)
                begin
                    compare_25_3_on <= data_reg25[31:24];
                    compare_25_3_off <= data_reg25[31:24] + 127;
                end
            else
                begin
                    compare_25_3_on <= data_reg25[31:24];
                    compare_25_3_off <= data_reg25[31:24] - 127;
                end
        end
   always @(posedge pwmclk)
     if (r1 && !r2)
        begin
            if (data_reg26[7:0] < 127)
                begin
                    compare_26_0_on <= data_reg26[7:0];
                    compare_26_0_off <= data_reg26[7:0] + 127;
                end
            else
                begin
                    compare_26_0_on <= data_reg26[7:0];
                    compare_26_0_off <= data_reg26[7:0] - 127;
                end
        end

   always @(posedge pwmclk)
    if (r1 && !r2)
        begin
            if (data_reg26[15:8] < 127)
                begin
                    compare_26_1_on <= data_reg26[15:8];
                    compare_26_1_off <= data_reg26[15:8] + 127;
                end
            else
                begin
                    compare_26_1_on <= data_reg26[15:8];
                    compare_26_1_off <= data_reg26[15:8] - 127;
                end
        end
   always @(posedge pwmclk)
    if (r1 && !r2)
        begin
            if (data_reg26[23:16] < 127)
                begin
                    compare_26_2_on <= data_reg26[23:16];
                    compare_26_2_off <= data_reg26[23:16] + 127;
                end
            else
                begin
                    compare_26_2_on <= data_reg26[23:16];
                    compare_26_2_off <= data_reg26[23:16] - 127;
                end
        end
   always @(posedge pwmclk)
    if (r1 && !r2)
        begin
            if (data_reg26[31:24] < 127)
                begin
                    compare_26_3_on <= data_reg26[31:24];
                    compare_26_3_off <= data_reg26[31:24] + 127;
                end
            else
                begin
                    compare_26_3_on <= data_reg26[31:24];
                    compare_26_3_off <= data_reg26[31:24] - 127;
                end
        end
   always @(posedge pwmclk)
     if (r1 && !r2)
        begin
            if (data_reg27[7:0] < 127)
                begin
                    compare_27_0_on <= data_reg27[7:0];
                    compare_27_0_off <= data_reg27[7:0] + 127;
                end
            else
                begin
                    compare_27_0_on <= data_reg27[7:0];
                    compare_27_0_off <= data_reg27[7:0] - 127;
                end
        end

   always @(posedge pwmclk)
    if (r1 && !r2)
        begin
            if (data_reg27[15:8] < 127)
                begin
                    compare_27_1_on <= data_reg27[15:8];
                    compare_27_1_off <= data_reg27[15:8] + 127;
                end
            else
                begin
                    compare_27_1_on <= data_reg27[15:8];
                    compare_27_1_off <= data_reg27[15:8] - 127;
                end
        end
   always @(posedge pwmclk)
    if (r1 && !r2)
        begin
            if (data_reg27[23:16] < 127)
                begin
                    compare_27_2_on <= data_reg27[23:16];
                    compare_27_2_off <= data_reg27[23:16] + 127;
                end
            else
                begin
                    compare_27_2_on <= data_reg27[23:16];
                    compare_27_2_off <= data_reg27[23:16] - 127;
                end
        end
   always @(posedge pwmclk)
    if (r1 && !r2)
        begin
            if (data_reg27[31:24] < 127)
                begin
                    compare_27_3_on <= data_reg27[31:24];
                    compare_27_3_off <= data_reg27[31:24] + 127;
                end
            else
                begin
                    compare_27_3_on <= data_reg27[31:24];
                    compare_27_3_off <= data_reg27[31:24] - 127;
                end
        end
   always @(posedge pwmclk)
     if (r1 && !r2)
        begin
            if (data_reg28[7:0] < 127)
                begin
                    compare_28_0_on <= data_reg28[7:0];
                    compare_28_0_off <= data_reg28[7:0] + 127;
                end
            else
                begin
                    compare_28_0_on <= data_reg28[7:0];
                    compare_28_0_off <= data_reg28[7:0] - 127;
                end
        end

   always @(posedge pwmclk)
    if (r1 && !r2)
        begin
            if (data_reg28[15:8] < 127)
                begin
                    compare_28_1_on <= data_reg28[15:8];
                    compare_28_1_off <= data_reg28[15:8] + 127;
                end
            else
                begin
                    compare_28_1_on <= data_reg28[15:8];
                    compare_28_1_off <= data_reg28[15:8] - 127;
                end
        end
   always @(posedge pwmclk)
    if (r1 && !r2)
        begin
            if (data_reg28[23:16] < 127)
                begin
                    compare_28_2_on <= data_reg28[23:16];
                    compare_28_2_off <= data_reg28[23:16] + 127;
                end
            else
                begin
                    compare_28_2_on <= data_reg28[23:16];
                    compare_28_2_off <= data_reg28[23:16] - 127;
                end
        end
   always @(posedge pwmclk)
    if (r1 && !r2)
        begin
            if (data_reg28[31:24] < 127)
                begin
                    compare_28_3_on <= data_reg28[31:24];
                    compare_28_3_off <= data_reg28[31:24] + 127;
                end
            else
                begin
                    compare_28_3_on <= data_reg28[31:24];
                    compare_28_3_off <= data_reg28[31:24] - 127;
                end
        end
   always @(posedge pwmclk)
     if (r1 && !r2)
        begin
            if (data_reg29[7:0] < 127)
                begin
                    compare_29_0_on <= data_reg29[7:0];
                    compare_29_0_off <= data_reg29[7:0] + 127;
                end
            else
                begin
                    compare_29_0_on <= data_reg29[7:0];
                    compare_29_0_off <= data_reg29[7:0] - 127;
                end
        end

   always @(posedge pwmclk)
    if (r1 && !r2)
        begin
            if (data_reg29[15:8] < 127)
                begin
                    compare_29_1_on <= data_reg29[15:8];
                    compare_29_1_off <= data_reg29[15:8] + 127;
                end
            else
                begin
                    compare_29_1_on <= data_reg29[15:8];
                    compare_29_1_off <= data_reg29[15:8] - 127;
                end
        end
   always @(posedge pwmclk)
    if (r1 && !r2)
        begin
            if (data_reg29[23:16] < 127)
                begin
                    compare_29_2_on <= data_reg29[23:16];
                    compare_29_2_off <= data_reg29[23:16] + 127;
                end
            else
                begin
                    compare_29_2_on <= data_reg29[23:16];
                    compare_29_2_off <= data_reg29[23:16] - 127;
                end
        end
   always @(posedge pwmclk)
    if (r1 && !r2)
        begin
            if (data_reg29[31:24] < 127)
                begin
                    compare_29_3_on <= data_reg29[31:24];
                    compare_29_3_off <= data_reg29[31:24] + 127;
                end
            else
                begin
                    compare_29_3_on <= data_reg29[31:24];
                    compare_29_3_off <= data_reg29[31:24] - 127;
                end
        end
   always @(posedge pwmclk)
     if (r1 && !r2)
        begin
            if (data_reg30[7:0] < 127)
                begin
                    compare_30_0_on <= data_reg30[7:0];
                    compare_30_0_off <= data_reg30[7:0] + 127;
                end
            else
                begin
                    compare_30_0_on <= data_reg30[7:0];
                    compare_30_0_off <= data_reg30[7:0] - 127;
                end
        end

   always @(posedge pwmclk)
    if (r1 && !r2)
        begin
            if (data_reg30[15:8] < 127)
                begin
                    compare_30_1_on <= data_reg30[15:8];
                    compare_30_1_off <= data_reg30[15:8] + 127;
                end
            else
                begin
                    compare_30_1_on <= data_reg30[15:8];
                    compare_30_1_off <= data_reg30[15:8] - 127;
                end
        end
   always @(posedge pwmclk)
    if (r1 && !r2)
        begin
            if (data_reg30[23:16] < 127)
                begin
                    compare_30_2_on <= data_reg30[23:16];
                    compare_30_2_off <= data_reg30[23:16] + 127;
                end
            else
                begin
                    compare_30_2_on <= data_reg30[23:16];
                    compare_30_2_off <= data_reg30[23:16] - 127;
                end
        end
   always @(posedge pwmclk)
    if (r1 && !r2)
        begin
            if (data_reg30[31:24] < 127)
                begin
                    compare_30_3_on <= data_reg30[31:24];
                    compare_30_3_off <= data_reg30[31:24] + 127;
                end
            else
                begin
                    compare_30_3_on <= data_reg30[31:24];
                    compare_30_3_off <= data_reg30[31:24] - 127;
                end
        end
   always @(posedge pwmclk)
     if (r1 && !r2)
        begin
            if (data_reg31[7:0] < 127)
                begin
                    compare_31_0_on <= data_reg31[7:0];
                    compare_31_0_off <= data_reg31[7:0] + 127;
                end
            else
                begin
                    compare_31_0_on <= data_reg31[7:0];
                    compare_31_0_off <= data_reg31[7:0] - 127;
                end
        end

   always @(posedge pwmclk)
    if (r1 && !r2)
        begin
            if (data_reg31[15:8] < 127)
                begin
                    compare_31_1_on <= data_reg31[15:8];
                    compare_31_1_off <= data_reg31[15:8] + 127;
                end
            else
                begin
                    compare_31_1_on <= data_reg31[15:8];
                    compare_31_1_off <= data_reg31[15:8] - 127;
                end
        end
   always @(posedge pwmclk)
    if (r1 && !r2)
        begin
            if (data_reg31[23:16] < 127)
                begin
                    compare_31_2_on <= data_reg31[23:16];
                    compare_31_2_off <= data_reg31[23:16] + 127;
                end
            else
                begin
                    compare_31_2_on <= data_reg31[23:16];
                    compare_31_2_off <= data_reg31[23:16] - 127;
                end
        end
   always @(posedge pwmclk)
    if (r1 && !r2)
        begin
            if (data_reg31[31:24] < 127)
                begin
                    compare_31_3_on <= data_reg31[31:24];
                    compare_31_3_off <= data_reg31[31:24] + 127;
                end
            else
                begin
                    compare_31_3_on <= data_reg31[31:24];
                    compare_31_3_off <= data_reg31[31:24] - 127;
                end
        end
   always @(posedge pwmclk)
     if (r1 && !r2)
        begin
            if (data_reg32[7:0] < 127)
                begin
                    compare_32_0_on <= data_reg32[7:0];
                    compare_32_0_off <= data_reg32[7:0] + 127;
                end
            else
                begin
                    compare_32_0_on <= data_reg32[7:0];
                    compare_32_0_off <= data_reg32[7:0] - 127;
                end
        end

   always @(posedge pwmclk)
    if (r1 && !r2)
        begin
            if (data_reg32[15:8] < 127)
                begin
                    compare_32_1_on <= data_reg32[15:8];
                    compare_32_1_off <= data_reg32[15:8] + 127;
                end
            else
                begin
                    compare_32_1_on <= data_reg32[15:8];
                    compare_32_1_off <= data_reg32[15:8] - 127;
                end
        end
   always @(posedge pwmclk)
    if (r1 && !r2)
        begin
            if (data_reg32[23:16] < 127)
                begin
                    compare_32_2_on <= data_reg32[23:16];
                    compare_32_2_off <= data_reg32[23:16] + 127;
                end
            else
                begin
                    compare_32_2_on <= data_reg32[23:16];
                    compare_32_2_off <= data_reg32[23:16] - 127;
                end
        end
   always @(posedge pwmclk)
    if (r1 && !r2)
        begin
            if (data_reg32[31:24] < 127)
                begin
                    compare_32_3_on <= data_reg32[31:24];
                    compare_32_3_off <= data_reg32[31:24] + 127;
                end
            else
                begin
                    compare_32_3_on <= data_reg32[31:24];
                    compare_32_3_off <= data_reg32[31:24] - 127;
                end
        end
   always @(posedge pwmclk)
     if (r1 && !r2)
        begin
            if (data_reg33[7:0] < 127)
                begin
                    compare_33_0_on <= data_reg33[7:0];
                    compare_33_0_off <= data_reg33[7:0] + 127;
                end
            else
                begin
                    compare_33_0_on <= data_reg33[7:0];
                    compare_33_0_off <= data_reg33[7:0] - 127;
                end
        end

   always @(posedge pwmclk)
    if (r1 && !r2)
        begin
            if (data_reg33[15:8] < 127)
                begin
                    compare_33_1_on <= data_reg33[15:8];
                    compare_33_1_off <= data_reg33[15:8] + 127;
                end
            else
                begin
                    compare_33_1_on <= data_reg33[15:8];
                    compare_33_1_off <= data_reg33[15:8] - 127;
                end
        end
   always @(posedge pwmclk)
    if (r1 && !r2)
        begin
            if (data_reg33[23:16] < 127)
                begin
                    compare_33_2_on <= data_reg33[23:16];
                    compare_33_2_off <= data_reg33[23:16] + 127;
                end
            else
                begin
                    compare_33_2_on <= data_reg33[23:16];
                    compare_33_2_off <= data_reg33[23:16] - 127;
                end
        end
   always @(posedge pwmclk)
    if (r1 && !r2)
        begin
            if (data_reg33[31:24] < 127)
                begin
                    compare_33_3_on <= data_reg33[31:24];
                    compare_33_3_off <= data_reg33[31:24] + 127;
                end
            else
                begin
                    compare_33_3_on <= data_reg33[31:24];
                    compare_33_3_off <= data_reg33[31:24] - 127;
                end
        end
   always @(posedge pwmclk)
     if (r1 && !r2)
        begin
            if (data_reg34[7:0] < 127)
                begin
                    compare_34_0_on <= data_reg34[7:0];
                    compare_34_0_off <= data_reg34[7:0] + 127;
                end
            else
                begin
                    compare_34_0_on <= data_reg34[7:0];
                    compare_34_0_off <= data_reg34[7:0] - 127;
                end
        end

   always @(posedge pwmclk)
    if (r1 && !r2)
        begin
            if (data_reg34[15:8] < 127)
                begin
                    compare_34_1_on <= data_reg34[15:8];
                    compare_34_1_off <= data_reg34[15:8] + 127;
                end
            else
                begin
                    compare_34_1_on <= data_reg34[15:8];
                    compare_34_1_off <= data_reg34[15:8] - 127;
                end
        end
   always @(posedge pwmclk)
    if (r1 && !r2)
        begin
            if (data_reg34[23:16] < 127)
                begin
                    compare_34_2_on <= data_reg34[23:16];
                    compare_34_2_off <= data_reg34[23:16] + 127;
                end
            else
                begin
                    compare_34_2_on <= data_reg34[23:16];
                    compare_34_2_off <= data_reg34[23:16] - 127;
                end
        end
   always @(posedge pwmclk)
    if (r1 && !r2)
        begin
            if (data_reg34[31:24] < 127)
                begin
                    compare_34_3_on <= data_reg34[31:24];
                    compare_34_3_off <= data_reg34[31:24] + 127;
                end
            else
                begin
                    compare_34_3_on <= data_reg34[31:24];
                    compare_34_3_off <= data_reg34[31:24] - 127;
                end
        end
   always @(posedge pwmclk)
     if (r1 && !r2)
        begin
            if (data_reg35[7:0] < 127)
                begin
                    compare_35_0_on <= data_reg35[7:0];
                    compare_35_0_off <= data_reg35[7:0] + 127;
                end
            else
                begin
                    compare_35_0_on <= data_reg35[7:0];
                    compare_35_0_off <= data_reg35[7:0] - 127;
                end
        end

   always @(posedge pwmclk)
    if (r1 && !r2)
        begin
            if (data_reg35[15:8] < 127)
                begin
                    compare_35_1_on <= data_reg35[15:8];
                    compare_35_1_off <= data_reg35[15:8] + 127;
                end
            else
                begin
                    compare_35_1_on <= data_reg35[15:8];
                    compare_35_1_off <= data_reg35[15:8] - 127;
                end
        end
   always @(posedge pwmclk)
    if (r1 && !r2)
        begin
            if (data_reg35[23:16] < 127)
                begin
                    compare_35_2_on <= data_reg35[23:16];
                    compare_35_2_off <= data_reg35[23:16] + 127;
                end
            else
                begin
                    compare_35_2_on <= data_reg35[23:16];
                    compare_35_2_off <= data_reg35[23:16] - 127;
                end
        end
   always @(posedge pwmclk)
    if (r1 && !r2)
        begin
            if (data_reg35[31:24] < 127)
                begin
                    compare_35_3_on <= data_reg35[31:24];
                    compare_35_3_off <= data_reg35[31:24] + 127;
                end
            else
                begin
                    compare_35_3_on <= data_reg35[31:24];
                    compare_35_3_off <= data_reg35[31:24] - 127;
                end
        end
   always @(posedge pwmclk)
     if (r1 && !r2)
        begin
            if (data_reg36[7:0] < 127)
                begin
                    compare_36_0_on <= data_reg36[7:0];
                    compare_36_0_off <= data_reg36[7:0] + 127;
                end
            else
                begin
                    compare_36_0_on <= data_reg36[7:0];
                    compare_36_0_off <= data_reg36[7:0] - 127;
                end
        end

   always @(posedge pwmclk)
    if (r1 && !r2)
        begin
            if (data_reg36[15:8] < 127)
                begin
                    compare_36_1_on <= data_reg36[15:8];
                    compare_36_1_off <= data_reg36[15:8] + 127;
                end
            else
                begin
                    compare_36_1_on <= data_reg36[15:8];
                    compare_36_1_off <= data_reg36[15:8] - 127;
                end
        end
   always @(posedge pwmclk)
    if (r1 && !r2)
        begin
            if (data_reg36[23:16] < 127)
                begin
                    compare_36_2_on <= data_reg36[23:16];
                    compare_36_2_off <= data_reg36[23:16] + 127;
                end
            else
                begin
                    compare_36_2_on <= data_reg36[23:16];
                    compare_36_2_off <= data_reg36[23:16] - 127;
                end
        end
   always @(posedge pwmclk)
    if (r1 && !r2)
        begin
            if (data_reg36[31:24] < 127)
                begin
                    compare_36_3_on <= data_reg36[31:24];
                    compare_36_3_off <= data_reg36[31:24] + 127;
                end
            else
                begin
                    compare_36_3_on <= data_reg36[31:24];
                    compare_36_3_off <= data_reg36[31:24] - 127;
                end
        end
   always @(posedge pwmclk)
     if (r1 && !r2)
        begin
            if (data_reg37[7:0] < 127)
                begin
                    compare_37_0_on <= data_reg37[7:0];
                    compare_37_0_off <= data_reg37[7:0] + 127;
                end
            else
                begin
                    compare_37_0_on <= data_reg37[7:0];
                    compare_37_0_off <= data_reg37[7:0] - 127;
                end
        end

   always @(posedge pwmclk)
    if (r1 && !r2)
        begin
            if (data_reg37[15:8] < 127)
                begin
                    compare_37_1_on <= data_reg37[15:8];
                    compare_37_1_off <= data_reg37[15:8] + 127;
                end
            else
                begin
                    compare_37_1_on <= data_reg37[15:8];
                    compare_37_1_off <= data_reg37[15:8] - 127;
                end
        end
   always @(posedge pwmclk)
    if (r1 && !r2)
        begin
            if (data_reg37[23:16] < 127)
                begin
                    compare_37_2_on <= data_reg37[23:16];
                    compare_37_2_off <= data_reg37[23:16] + 127;
                end
            else
                begin
                    compare_37_2_on <= data_reg37[23:16];
                    compare_37_2_off <= data_reg37[23:16] - 127;
                end
        end
   always @(posedge pwmclk)
    if (r1 && !r2)
        begin
            if (data_reg37[31:24] < 127)
                begin
                    compare_37_3_on <= data_reg37[31:24];
                    compare_37_3_off <= data_reg37[31:24] + 127;
                end
            else
                begin
                    compare_37_3_on <= data_reg37[31:24];
                    compare_37_3_off <= data_reg37[31:24] - 127;
                end
        end
   always @(posedge pwmclk)
     if (r1 && !r2)
        begin
            if (data_reg38[7:0] < 127)
                begin
                    compare_38_0_on <= data_reg38[7:0];
                    compare_38_0_off <= data_reg38[7:0] + 127;
                end
            else
                begin
                    compare_38_0_on <= data_reg38[7:0];
                    compare_38_0_off <= data_reg38[7:0] - 127;
                end
        end

   always @(posedge pwmclk)
    if (r1 && !r2)
        begin
            if (data_reg38[15:8] < 127)
                begin
                    compare_38_1_on <= data_reg38[15:8];
                    compare_38_1_off <= data_reg38[15:8] + 127;
                end
            else
                begin
                    compare_38_1_on <= data_reg38[15:8];
                    compare_38_1_off <= data_reg38[15:8] - 127;
                end
        end
   always @(posedge pwmclk)
    if (r1 && !r2)
        begin
            if (data_reg38[23:16] < 127)
                begin
                    compare_38_2_on <= data_reg38[23:16];
                    compare_38_2_off <= data_reg38[23:16] + 127;
                end
            else
                begin
                    compare_38_2_on <= data_reg38[23:16];
                    compare_38_2_off <= data_reg38[23:16] - 127;
                end
        end
   always @(posedge pwmclk)
    if (r1 && !r2)
        begin
            if (data_reg38[31:24] < 127)
                begin
                    compare_38_3_on <= data_reg38[31:24];
                    compare_38_3_off <= data_reg38[31:24] + 127;
                end
            else
                begin
                    compare_38_3_on <= data_reg38[31:24];
                    compare_38_3_off <= data_reg38[31:24] - 127;
                end
        end
   always @(posedge pwmclk)
     if (r1 && !r2)
        begin
            if (data_reg39[7:0] < 127)
                begin
                    compare_39_0_on <= data_reg39[7:0];
                    compare_39_0_off <= data_reg39[7:0] + 127;
                end
            else
                begin
                    compare_39_0_on <= data_reg39[7:0];
                    compare_39_0_off <= data_reg39[7:0] - 127;
                end
        end

   always @(posedge pwmclk)
    if (r1 && !r2)
        begin
            if (data_reg39[15:8] < 127)
                begin
                    compare_39_1_on <= data_reg39[15:8];
                    compare_39_1_off <= data_reg39[15:8] + 127;
                end
            else
                begin
                    compare_39_1_on <= data_reg39[15:8];
                    compare_39_1_off <= data_reg39[15:8] - 127;
                end
        end
   always @(posedge pwmclk)
    if (r1 && !r2)
        begin
            if (data_reg39[23:16] < 127)
                begin
                    compare_39_2_on <= data_reg39[23:16];
                    compare_39_2_off <= data_reg39[23:16] + 127;
                end
            else
                begin
                    compare_39_2_on <= data_reg39[23:16];
                    compare_39_2_off <= data_reg39[23:16] - 127;
                end
        end
   always @(posedge pwmclk)
    if (r1 && !r2)
        begin
            if (data_reg39[31:24] < 127)
                begin
                    compare_39_3_on <= data_reg39[31:24];
                    compare_39_3_off <= data_reg39[31:24] + 127;
                end
            else
                begin
                    compare_39_3_on <= data_reg39[31:24];
                    compare_39_3_off <= data_reg39[31:24] - 127;
                end
        end
   always @(posedge pwmclk)
     if (r1 && !r2)
        begin
            if (data_reg40[7:0] < 127)
                begin
                    compare_40_0_on <= data_reg40[7:0];
                    compare_40_0_off <= data_reg40[7:0] + 127;
                end
            else
                begin
                    compare_40_0_on <= data_reg40[7:0];
                    compare_40_0_off <= data_reg40[7:0] - 127;
                end
        end

   always @(posedge pwmclk)
    if (r1 && !r2)
        begin
            if (data_reg40[15:8] < 127)
                begin
                    compare_40_1_on <= data_reg40[15:8];
                    compare_40_1_off <= data_reg40[15:8] + 127;
                end
            else
                begin
                    compare_40_1_on <= data_reg40[15:8];
                    compare_40_1_off <= data_reg40[15:8] - 127;
                end
        end
   always @(posedge pwmclk)
    if (r1 && !r2)
        begin
            if (data_reg40[23:16] < 127)
                begin
                    compare_40_2_on <= data_reg40[23:16];
                    compare_40_2_off <= data_reg40[23:16] + 127;
                end
            else
                begin
                    compare_40_2_on <= data_reg40[23:16];
                    compare_40_2_off <= data_reg40[23:16] - 127;
                end
        end
   always @(posedge pwmclk)
    if (r1 && !r2)
        begin
            if (data_reg40[31:24] < 127)
                begin
                    compare_40_3_on <= data_reg40[31:24];
                    compare_40_3_off <= data_reg40[31:24] + 127;
                end
            else
                begin
                    compare_40_3_on <= data_reg40[31:24];
                    compare_40_3_off <= data_reg40[31:24] - 127;
                end
        end
   always @(posedge pwmclk)
     if (r1 && !r2)
        begin
            if (data_reg41[7:0] < 127)
                begin
                    compare_41_0_on <= data_reg41[7:0];
                    compare_41_0_off <= data_reg41[7:0] + 127;
                end
            else
                begin
                    compare_41_0_on <= data_reg41[7:0];
                    compare_41_0_off <= data_reg41[7:0] - 127;
                end
        end

   always @(posedge pwmclk)
    if (r1 && !r2)
        begin
            if (data_reg41[15:8] < 127)
                begin
                    compare_41_1_on <= data_reg41[15:8];
                    compare_41_1_off <= data_reg41[15:8] + 127;
                end
            else
                begin
                    compare_41_1_on <= data_reg41[15:8];
                    compare_41_1_off <= data_reg41[15:8] - 127;
                end
        end
   always @(posedge pwmclk)
    if (r1 && !r2)
        begin
            if (data_reg41[23:16] < 127)
                begin
                    compare_41_2_on <= data_reg41[23:16];
                    compare_41_2_off <= data_reg41[23:16] + 127;
                end
            else
                begin
                    compare_41_2_on <= data_reg41[23:16];
                    compare_41_2_off <= data_reg41[23:16] - 127;
                end
        end
   always @(posedge pwmclk)
    if (r1 && !r2)
        begin
            if (data_reg41[31:24] < 127)
                begin
                    compare_41_3_on <= data_reg41[31:24];
                    compare_41_3_off <= data_reg41[31:24] + 127;
                end
            else
                begin
                    compare_41_3_on <= data_reg41[31:24];
                    compare_41_3_off <= data_reg41[31:24] - 127;
                end
        end
   always @(posedge pwmclk)
     if (r1 && !r2)
        begin
            if (data_reg42[7:0] < 127)
                begin
                    compare_42_0_on <= data_reg42[7:0];
                    compare_42_0_off <= data_reg42[7:0] + 127;
                end
            else
                begin
                    compare_42_0_on <= data_reg42[7:0];
                    compare_42_0_off <= data_reg42[7:0] - 127;
                end
        end

   always @(posedge pwmclk)
    if (r1 && !r2)
        begin
            if (data_reg42[15:8] < 127)
                begin
                    compare_42_1_on <= data_reg42[15:8];
                    compare_42_1_off <= data_reg42[15:8] + 127;
                end
            else
                begin
                    compare_42_1_on <= data_reg42[15:8];
                    compare_42_1_off <= data_reg42[15:8] - 127;
                end
        end
   always @(posedge pwmclk)
    if (r1 && !r2)
        begin
            if (data_reg42[23:16] < 127)
                begin
                    compare_42_2_on <= data_reg42[23:16];
                    compare_42_2_off <= data_reg42[23:16] + 127;
                end
            else
                begin
                    compare_42_2_on <= data_reg42[23:16];
                    compare_42_2_off <= data_reg42[23:16] - 127;
                end
        end
   always @(posedge pwmclk)
    if (r1 && !r2)
        begin
            if (data_reg42[31:24] < 127)
                begin
                    compare_42_3_on <= data_reg42[31:24];
                    compare_42_3_off <= data_reg42[31:24] + 127;
                end
            else
                begin
                    compare_42_3_on <= data_reg42[31:24];
                    compare_42_3_off <= data_reg42[31:24] - 127;
                end
        end
   always @(posedge pwmclk)
     if (r1 && !r2)
        begin
            if (data_reg43[7:0] < 127)
                begin
                    compare_43_0_on <= data_reg43[7:0];
                    compare_43_0_off <= data_reg43[7:0] + 127;
                end
            else
                begin
                    compare_43_0_on <= data_reg43[7:0];
                    compare_43_0_off <= data_reg43[7:0] - 127;
                end
        end

   always @(posedge pwmclk)
    if (r1 && !r2)
        begin
            if (data_reg43[15:8] < 127)
                begin
                    compare_43_1_on <= data_reg43[15:8];
                    compare_43_1_off <= data_reg43[15:8] + 127;
                end
            else
                begin
                    compare_43_1_on <= data_reg43[15:8];
                    compare_43_1_off <= data_reg43[15:8] - 127;
                end
        end
   always @(posedge pwmclk)
    if (r1 && !r2)
        begin
            if (data_reg43[23:16] < 127)
                begin
                    compare_43_2_on <= data_reg43[23:16];
                    compare_43_2_off <= data_reg43[23:16] + 127;
                end
            else
                begin
                    compare_43_2_on <= data_reg43[23:16];
                    compare_43_2_off <= data_reg43[23:16] - 127;
                end
        end
   always @(posedge pwmclk)
    if (r1 && !r2)
        begin
            if (data_reg43[31:24] < 127)
                begin
                    compare_43_3_on <= data_reg43[31:24];
                    compare_43_3_off <= data_reg43[31:24] + 127;
                end
            else
                begin
                    compare_43_3_on <= data_reg43[31:24];
                    compare_43_3_off <= data_reg43[31:24] - 127;
                end
        end
   always @(posedge pwmclk)
     if (r1 && !r2)
        begin
            if (data_reg44[7:0] < 127)
                begin
                    compare_44_0_on <= data_reg44[7:0];
                    compare_44_0_off <= data_reg44[7:0] + 127;
                end
            else
                begin
                    compare_44_0_on <= data_reg44[7:0];
                    compare_44_0_off <= data_reg44[7:0] - 127;
                end
        end

   always @(posedge pwmclk)
    if (r1 && !r2)
        begin
            if (data_reg44[15:8] < 127)
                begin
                    compare_44_1_on <= data_reg44[15:8];
                    compare_44_1_off <= data_reg44[15:8] + 127;
                end
            else
                begin
                    compare_44_1_on <= data_reg44[15:8];
                    compare_44_1_off <= data_reg44[15:8] - 127;
                end
        end
   always @(posedge pwmclk)
    if (r1 && !r2)
        begin
            if (data_reg44[23:16] < 127)
                begin
                    compare_44_2_on <= data_reg44[23:16];
                    compare_44_2_off <= data_reg44[23:16] + 127;
                end
            else
                begin
                    compare_44_2_on <= data_reg44[23:16];
                    compare_44_2_off <= data_reg44[23:16] - 127;
                end
        end
   always @(posedge pwmclk)
    if (r1 && !r2)
        begin
            if (data_reg44[31:24] < 127)
                begin
                    compare_44_3_on <= data_reg44[31:24];
                    compare_44_3_off <= data_reg44[31:24] + 127;
                end
            else
                begin
                    compare_44_3_on <= data_reg44[31:24];
                    compare_44_3_off <= data_reg44[31:24] - 127;
                end
        end
   always @(posedge pwmclk)
     if (r1 && !r2)
        begin
            if (data_reg45[7:0] < 127)
                begin
                    compare_45_0_on <= data_reg45[7:0];
                    compare_45_0_off <= data_reg45[7:0] + 127;
                end
            else
                begin
                    compare_45_0_on <= data_reg45[7:0];
                    compare_45_0_off <= data_reg45[7:0] - 127;
                end
        end

   always @(posedge pwmclk)
    if (r1 && !r2)
        begin
            if (data_reg45[15:8] < 127)
                begin
                    compare_45_1_on <= data_reg45[15:8];
                    compare_45_1_off <= data_reg45[15:8] + 127;
                end
            else
                begin
                    compare_45_1_on <= data_reg45[15:8];
                    compare_45_1_off <= data_reg45[15:8] - 127;
                end
        end
   always @(posedge pwmclk)
    if (r1 && !r2)
        begin
            if (data_reg45[23:16] < 127)
                begin
                    compare_45_2_on <= data_reg45[23:16];
                    compare_45_2_off <= data_reg45[23:16] + 127;
                end
            else
                begin
                    compare_45_2_on <= data_reg45[23:16];
                    compare_45_2_off <= data_reg45[23:16] - 127;
                end
        end
   always @(posedge pwmclk)
    if (r1 && !r2)
        begin
            if (data_reg45[31:24] < 127)
                begin
                    compare_45_3_on <= data_reg45[31:24];
                    compare_45_3_off <= data_reg45[31:24] + 127;
                end
            else
                begin
                    compare_45_3_on <= data_reg45[31:24];
                    compare_45_3_off <= data_reg45[31:24] - 127;
                end
        end
   always @(posedge pwmclk)
     if (r1 && !r2)
        begin
            if (data_reg46[7:0] < 127)
                begin
                    compare_46_0_on <= data_reg46[7:0];
                    compare_46_0_off <= data_reg46[7:0] + 127;
                end
            else
                begin
                    compare_46_0_on <= data_reg46[7:0];
                    compare_46_0_off <= data_reg46[7:0] - 127;
                end
        end

   always @(posedge pwmclk)
    if (r1 && !r2)
        begin
            if (data_reg46[15:8] < 127)
                begin
                    compare_46_1_on <= data_reg46[15:8];
                    compare_46_1_off <= data_reg46[15:8] + 127;
                end
            else
                begin
                    compare_46_1_on <= data_reg46[15:8];
                    compare_46_1_off <= data_reg46[15:8] - 127;
                end
        end
   always @(posedge pwmclk)
    if (r1 && !r2)
        begin
            if (data_reg46[23:16] < 127)
                begin
                    compare_46_2_on <= data_reg46[23:16];
                    compare_46_2_off <= data_reg46[23:16] + 127;
                end
            else
                begin
                    compare_46_2_on <= data_reg46[23:16];
                    compare_46_2_off <= data_reg46[23:16] - 127;
                end
        end
   always @(posedge pwmclk)
    if (r1 && !r2)
        begin
            if (data_reg46[31:24] < 127)
                begin
                    compare_46_3_on <= data_reg46[31:24];
                    compare_46_3_off <= data_reg46[31:24] + 127;
                end
            else
                begin
                    compare_46_3_on <= data_reg46[31:24];
                    compare_46_3_off <= data_reg46[31:24] - 127;
                end
        end
   always @(posedge pwmclk)
     if (r1 && !r2)
        begin
            if (data_reg47[7:0] < 127)
                begin
                    compare_47_0_on <= data_reg47[7:0];
                    compare_47_0_off <= data_reg47[7:0] + 127;
                end
            else
                begin
                    compare_47_0_on <= data_reg47[7:0];
                    compare_47_0_off <= data_reg47[7:0] - 127;
                end
        end

   always @(posedge pwmclk)
    if (r1 && !r2)
        begin
            if (data_reg47[15:8] < 127)
                begin
                    compare_47_1_on <= data_reg47[15:8];
                    compare_47_1_off <= data_reg47[15:8] + 127;
                end
            else
                begin
                    compare_47_1_on <= data_reg47[15:8];
                    compare_47_1_off <= data_reg47[15:8] - 127;
                end
        end
   always @(posedge pwmclk)
    if (r1 && !r2)
        begin
            if (data_reg47[23:16] < 127)
                begin
                    compare_47_2_on <= data_reg47[23:16];
                    compare_47_2_off <= data_reg47[23:16] + 127;
                end
            else
                begin
                    compare_47_2_on <= data_reg47[23:16];
                    compare_47_2_off <= data_reg47[23:16] - 127;
                end
        end
   always @(posedge pwmclk)
    if (r1 && !r2)
        begin
            if (data_reg47[31:24] < 127)
                begin
                    compare_47_3_on <= data_reg47[31:24];
                    compare_47_3_off <= data_reg47[31:24] + 127;
                end
            else
                begin
                    compare_47_3_on <= data_reg47[31:24];
                    compare_47_3_off <= data_reg47[31:24] - 127;
                end
        end
   always @(posedge pwmclk)
     if (r1 && !r2)
        begin
            if (data_reg48[7:0] < 127)
                begin
                    compare_48_0_on <= data_reg48[7:0];
                    compare_48_0_off <= data_reg48[7:0] + 127;
                end
            else
                begin
                    compare_48_0_on <= data_reg48[7:0];
                    compare_48_0_off <= data_reg48[7:0] - 127;
                end
        end

   always @(posedge pwmclk)
    if (r1 && !r2)
        begin
            if (data_reg48[15:8] < 127)
                begin
                    compare_48_1_on <= data_reg48[15:8];
                    compare_48_1_off <= data_reg48[15:8] + 127;
                end
            else
                begin
                    compare_48_1_on <= data_reg48[15:8];
                    compare_48_1_off <= data_reg48[15:8] - 127;
                end
        end
   always @(posedge pwmclk)
    if (r1 && !r2)
        begin
            if (data_reg48[23:16] < 127)
                begin
                    compare_48_2_on <= data_reg48[23:16];
                    compare_48_2_off <= data_reg48[23:16] + 127;
                end
            else
                begin
                    compare_48_2_on <= data_reg48[23:16];
                    compare_48_2_off <= data_reg48[23:16] - 127;
                end
        end
   always @(posedge pwmclk)
    if (r1 && !r2)
        begin
            if (data_reg48[31:24] < 127)
                begin
                    compare_48_3_on <= data_reg48[31:24];
                    compare_48_3_off <= data_reg48[31:24] + 127;
                end
            else
                begin
                    compare_48_3_on <= data_reg48[31:24];
                    compare_48_3_off <= data_reg48[31:24] - 127;
                end
        end
   always @(posedge pwmclk)
     if (r1 && !r2)
        begin
            if (data_reg49[7:0] < 127)
                begin
                    compare_49_0_on <= data_reg49[7:0];
                    compare_49_0_off <= data_reg49[7:0] + 127;
                end
            else
                begin
                    compare_49_0_on <= data_reg49[7:0];
                    compare_49_0_off <= data_reg49[7:0] - 127;
                end
        end

   always @(posedge pwmclk)
    if (r1 && !r2)
        begin
            if (data_reg49[15:8] < 127)
                begin
                    compare_49_1_on <= data_reg49[15:8];
                    compare_49_1_off <= data_reg49[15:8] + 127;
                end
            else
                begin
                    compare_49_1_on <= data_reg49[15:8];
                    compare_49_1_off <= data_reg49[15:8] - 127;
                end
        end
   always @(posedge pwmclk)
    if (r1 && !r2)
        begin
            if (data_reg49[23:16] < 127)
                begin
                    compare_49_2_on <= data_reg49[23:16];
                    compare_49_2_off <= data_reg49[23:16] + 127;
                end
            else
                begin
                    compare_49_2_on <= data_reg49[23:16];
                    compare_49_2_off <= data_reg49[23:16] - 127;
                end
        end
   always @(posedge pwmclk)
    if (r1 && !r2)
        begin
            if (data_reg49[31:24] < 127)
                begin
                    compare_49_3_on <= data_reg49[31:24];
                    compare_49_3_off <= data_reg49[31:24] + 127;
                end
            else
                begin
                    compare_49_3_on <= data_reg49[31:24];
                    compare_49_3_off <= data_reg49[31:24] - 127;
                end
        end
   always @(posedge pwmclk)
     if (r1 && !r2)
        begin
            if (data_reg50[7:0] < 127)
                begin
                    compare_50_0_on <= data_reg50[7:0];
                    compare_50_0_off <= data_reg50[7:0] + 127;
                end
            else
                begin
                    compare_50_0_on <= data_reg50[7:0];
                    compare_50_0_off <= data_reg50[7:0] - 127;
                end
        end

   always @(posedge pwmclk)
    if (r1 && !r2)
        begin
            if (data_reg50[15:8] < 127)
                begin
                    compare_50_1_on <= data_reg50[15:8];
                    compare_50_1_off <= data_reg50[15:8] + 127;
                end
            else
                begin
                    compare_50_1_on <= data_reg50[15:8];
                    compare_50_1_off <= data_reg50[15:8] - 127;
                end
        end
   always @(posedge pwmclk)
    if (r1 && !r2)
        begin
            if (data_reg50[23:16] < 127)
                begin
                    compare_50_2_on <= data_reg50[23:16];
                    compare_50_2_off <= data_reg50[23:16] + 127;
                end
            else
                begin
                    compare_50_2_on <= data_reg50[23:16];
                    compare_50_2_off <= data_reg50[23:16] - 127;
                end
        end
   always @(posedge pwmclk)
    if (r1 && !r2)
        begin
            if (data_reg50[31:24] < 127)
                begin
                    compare_50_3_on <= data_reg50[31:24];
                    compare_50_3_off <= data_reg50[31:24] + 127;
                end
            else
                begin
                    compare_50_3_on <= data_reg50[31:24];
                    compare_50_3_off <= data_reg50[31:24] - 127;
                end
        end
   always @(posedge pwmclk)
     if (r1 && !r2)
        begin
            if (data_reg51[7:0] < 127)
                begin
                    compare_51_0_on <= data_reg51[7:0];
                    compare_51_0_off <= data_reg51[7:0] + 127;
                end
            else
                begin
                    compare_51_0_on <= data_reg51[7:0];
                    compare_51_0_off <= data_reg51[7:0] - 127;
                end
        end

   always @(posedge pwmclk)
    if (r1 && !r2)
        begin
            if (data_reg51[15:8] < 127)
                begin
                    compare_51_1_on <= data_reg51[15:8];
                    compare_51_1_off <= data_reg51[15:8] + 127;
                end
            else
                begin
                    compare_51_1_on <= data_reg51[15:8];
                    compare_51_1_off <= data_reg51[15:8] - 127;
                end
        end
   always @(posedge pwmclk)
    if (r1 && !r2)
        begin
            if (data_reg51[23:16] < 127)
                begin
                    compare_51_2_on <= data_reg51[23:16];
                    compare_51_2_off <= data_reg51[23:16] + 127;
                end
            else
                begin
                    compare_51_2_on <= data_reg51[23:16];
                    compare_51_2_off <= data_reg51[23:16] - 127;
                end
        end
   always @(posedge pwmclk)
    if (r1 && !r2)
        begin
            if (data_reg51[31:24] < 127)
                begin
                    compare_51_3_on <= data_reg51[31:24];
                    compare_51_3_off <= data_reg51[31:24] + 127;
                end
            else
                begin
                    compare_51_3_on <= data_reg51[31:24];
                    compare_51_3_off <= data_reg51[31:24] - 127;
                end
        end
   always @(posedge pwmclk)
     if (r1 && !r2)
        begin
            if (data_reg52[7:0] < 127)
                begin
                    compare_52_0_on <= data_reg52[7:0];
                    compare_52_0_off <= data_reg52[7:0] + 127;
                end
            else
                begin
                    compare_52_0_on <= data_reg52[7:0];
                    compare_52_0_off <= data_reg52[7:0] - 127;
                end
        end

   always @(posedge pwmclk)
    if (r1 && !r2)
        begin
            if (data_reg52[15:8] < 127)
                begin
                    compare_52_1_on <= data_reg52[15:8];
                    compare_52_1_off <= data_reg52[15:8] + 127;
                end
            else
                begin
                    compare_52_1_on <= data_reg52[15:8];
                    compare_52_1_off <= data_reg52[15:8] - 127;
                end
        end
   always @(posedge pwmclk)
    if (r1 && !r2)
        begin
            if (data_reg52[23:16] < 127)
                begin
                    compare_52_2_on <= data_reg52[23:16];
                    compare_52_2_off <= data_reg52[23:16] + 127;
                end
            else
                begin
                    compare_52_2_on <= data_reg52[23:16];
                    compare_52_2_off <= data_reg52[23:16] - 127;
                end
        end
   always @(posedge pwmclk)
    if (r1 && !r2)
        begin
            if (data_reg52[31:24] < 127)
                begin
                    compare_52_3_on <= data_reg52[31:24];
                    compare_52_3_off <= data_reg52[31:24] + 127;
                end
            else
                begin
                    compare_52_3_on <= data_reg52[31:24];
                    compare_52_3_off <= data_reg52[31:24] - 127;
                end
        end
   always @(posedge pwmclk)
     if (r1 && !r2)
        begin
            if (data_reg53[7:0] < 127)
                begin
                    compare_53_0_on <= data_reg53[7:0];
                    compare_53_0_off <= data_reg53[7:0] + 127;
                end
            else
                begin
                    compare_53_0_on <= data_reg53[7:0];
                    compare_53_0_off <= data_reg53[7:0] - 127;
                end
        end

   always @(posedge pwmclk)
    if (r1 && !r2)
        begin
            if (data_reg53[15:8] < 127)
                begin
                    compare_53_1_on <= data_reg53[15:8];
                    compare_53_1_off <= data_reg53[15:8] + 127;
                end
            else
                begin
                    compare_53_1_on <= data_reg53[15:8];
                    compare_53_1_off <= data_reg53[15:8] - 127;
                end
        end
   always @(posedge pwmclk)
    if (r1 && !r2)
        begin
            if (data_reg53[23:16] < 127)
                begin
                    compare_53_2_on <= data_reg53[23:16];
                    compare_53_2_off <= data_reg53[23:16] + 127;
                end
            else
                begin
                    compare_53_2_on <= data_reg53[23:16];
                    compare_53_2_off <= data_reg53[23:16] - 127;
                end
        end
   always @(posedge pwmclk)
    if (r1 && !r2)
        begin
            if (data_reg53[31:24] < 127)
                begin
                    compare_53_3_on <= data_reg53[31:24];
                    compare_53_3_off <= data_reg53[31:24] + 127;
                end
            else
                begin
                    compare_53_3_on <= data_reg53[31:24];
                    compare_53_3_off <= data_reg53[31:24] - 127;
                end
        end
   always @(posedge pwmclk)
     if (r1 && !r2)
        begin
            if (data_reg54[7:0] < 127)
                begin
                    compare_54_0_on <= data_reg54[7:0];
                    compare_54_0_off <= data_reg54[7:0] + 127;
                end
            else
                begin
                    compare_54_0_on <= data_reg54[7:0];
                    compare_54_0_off <= data_reg54[7:0] - 127;
                end
        end

   always @(posedge pwmclk)
    if (r1 && !r2)
        begin
            if (data_reg54[15:8] < 127)
                begin
                    compare_54_1_on <= data_reg54[15:8];
                    compare_54_1_off <= data_reg54[15:8] + 127;
                end
            else
                begin
                    compare_54_1_on <= data_reg54[15:8];
                    compare_54_1_off <= data_reg54[15:8] - 127;
                end
        end
   always @(posedge pwmclk)
    if (r1 && !r2)
        begin
            if (data_reg54[23:16] < 127)
                begin
                    compare_54_2_on <= data_reg54[23:16];
                    compare_54_2_off <= data_reg54[23:16] + 127;
                end
            else
                begin
                    compare_54_2_on <= data_reg54[23:16];
                    compare_54_2_off <= data_reg54[23:16] - 127;
                end
        end
   always @(posedge pwmclk)
    if (r1 && !r2)
        begin
            if (data_reg54[31:24] < 127)
                begin
                    compare_54_3_on <= data_reg54[31:24];
                    compare_54_3_off <= data_reg54[31:24] + 127;
                end
            else
                begin
                    compare_54_3_on <= data_reg54[31:24];
                    compare_54_3_off <= data_reg54[31:24] - 127;
                end
        end
   always @(posedge pwmclk)
     if (r1 && !r2)
        begin
            if (data_reg55[7:0] < 127)
                begin
                    compare_55_0_on <= data_reg55[7:0];
                    compare_55_0_off <= data_reg55[7:0] + 127;
                end
            else
                begin
                    compare_55_0_on <= data_reg55[7:0];
                    compare_55_0_off <= data_reg55[7:0] - 127;
                end
        end

   always @(posedge pwmclk)
    if (r1 && !r2)
        begin
            if (data_reg55[15:8] < 127)
                begin
                    compare_55_1_on <= data_reg55[15:8];
                    compare_55_1_off <= data_reg55[15:8] + 127;
                end
            else
                begin
                    compare_55_1_on <= data_reg55[15:8];
                    compare_55_1_off <= data_reg55[15:8] - 127;
                end
        end
   always @(posedge pwmclk)
    if (r1 && !r2)
        begin
            if (data_reg55[23:16] < 127)
                begin
                    compare_55_2_on <= data_reg55[23:16];
                    compare_55_2_off <= data_reg55[23:16] + 127;
                end
            else
                begin
                    compare_55_2_on <= data_reg55[23:16];
                    compare_55_2_off <= data_reg55[23:16] - 127;
                end
        end
   always @(posedge pwmclk)
    if (r1 && !r2)
        begin
            if (data_reg55[31:24] < 127)
                begin
                    compare_55_3_on <= data_reg55[31:24];
                    compare_55_3_off <= data_reg55[31:24] + 127;
                end
            else
                begin
                    compare_55_3_on <= data_reg55[31:24];
                    compare_55_3_off <= data_reg55[31:24] - 127;
                end
        end
   always @(posedge pwmclk)
     if (r1 && !r2)
        begin
            if (data_reg56[7:0] < 127)
                begin
                    compare_56_0_on <= data_reg56[7:0];
                    compare_56_0_off <= data_reg56[7:0] + 127;
                end
            else
                begin
                    compare_56_0_on <= data_reg56[7:0];
                    compare_56_0_off <= data_reg56[7:0] - 127;
                end
        end

   always @(posedge pwmclk)
    if (r1 && !r2)
        begin
            if (data_reg56[15:8] < 127)
                begin
                    compare_56_1_on <= data_reg56[15:8];
                    compare_56_1_off <= data_reg56[15:8] + 127;
                end
            else
                begin
                    compare_56_1_on <= data_reg56[15:8];
                    compare_56_1_off <= data_reg56[15:8] - 127;
                end
        end
   always @(posedge pwmclk)
    if (r1 && !r2)
        begin
            if (data_reg56[23:16] < 127)
                begin
                    compare_56_2_on <= data_reg56[23:16];
                    compare_56_2_off <= data_reg56[23:16] + 127;
                end
            else
                begin
                    compare_56_2_on <= data_reg56[23:16];
                    compare_56_2_off <= data_reg56[23:16] - 127;
                end
        end
   always @(posedge pwmclk)
    if (r1 && !r2)
        begin
            if (data_reg56[31:24] < 127)
                begin
                    compare_56_3_on <= data_reg56[31:24];
                    compare_56_3_off <= data_reg56[31:24] + 127;
                end
            else
                begin
                    compare_56_3_on <= data_reg56[31:24];
                    compare_56_3_off <= data_reg56[31:24] - 127;
                end
        end
   always @(posedge pwmclk)
     if (r1 && !r2)
        begin
            if (data_reg57[7:0] < 127)
                begin
                    compare_57_0_on <= data_reg57[7:0];
                    compare_57_0_off <= data_reg57[7:0] + 127;
                end
            else
                begin
                    compare_57_0_on <= data_reg57[7:0];
                    compare_57_0_off <= data_reg57[7:0] - 127;
                end
        end

   always @(posedge pwmclk)
    if (r1 && !r2)
        begin
            if (data_reg57[15:8] < 127)
                begin
                    compare_57_1_on <= data_reg57[15:8];
                    compare_57_1_off <= data_reg57[15:8] + 127;
                end
            else
                begin
                    compare_57_1_on <= data_reg57[15:8];
                    compare_57_1_off <= data_reg57[15:8] - 127;
                end
        end
   always @(posedge pwmclk)
    if (r1 && !r2)
        begin
            if (data_reg57[23:16] < 127)
                begin
                    compare_57_2_on <= data_reg57[23:16];
                    compare_57_2_off <= data_reg57[23:16] + 127;
                end
            else
                begin
                    compare_57_2_on <= data_reg57[23:16];
                    compare_57_2_off <= data_reg57[23:16] - 127;
                end
        end
   always @(posedge pwmclk)
    if (r1 && !r2)
        begin
            if (data_reg57[31:24] < 127)
                begin
                    compare_57_3_on <= data_reg57[31:24];
                    compare_57_3_off <= data_reg57[31:24] + 127;
                end
            else
                begin
                    compare_57_3_on <= data_reg57[31:24];
                    compare_57_3_off <= data_reg57[31:24] - 127;
                end
        end
   always @(posedge pwmclk)
     if (r1 && !r2)
        begin
            if (data_reg58[7:0] < 127)
                begin
                    compare_58_0_on <= data_reg58[7:0];
                    compare_58_0_off <= data_reg58[7:0] + 127;
                end
            else
                begin
                    compare_58_0_on <= data_reg58[7:0];
                    compare_58_0_off <= data_reg58[7:0] - 127;
                end
        end

   always @(posedge pwmclk)
    if (r1 && !r2)
        begin
            if (data_reg58[15:8] < 127)
                begin
                    compare_58_1_on <= data_reg58[15:8];
                    compare_58_1_off <= data_reg58[15:8] + 127;
                end
            else
                begin
                    compare_58_1_on <= data_reg58[15:8];
                    compare_58_1_off <= data_reg58[15:8] - 127;
                end
        end
   always @(posedge pwmclk)
    if (r1 && !r2)
        begin
            if (data_reg58[23:16] < 127)
                begin
                    compare_58_2_on <= data_reg58[23:16];
                    compare_58_2_off <= data_reg58[23:16] + 127;
                end
            else
                begin
                    compare_58_2_on <= data_reg58[23:16];
                    compare_58_2_off <= data_reg58[23:16] - 127;
                end
        end
   always @(posedge pwmclk)
    if (r1 && !r2)
        begin
            if (data_reg58[31:24] < 127)
                begin
                    compare_58_3_on <= data_reg58[31:24];
                    compare_58_3_off <= data_reg58[31:24] + 127;
                end
            else
                begin
                    compare_58_3_on <= data_reg58[31:24];
                    compare_58_3_off <= data_reg58[31:24] - 127;
                end
        end
   always @(posedge pwmclk)
     if (r1 && !r2)
        begin
            if (data_reg59[7:0] < 127)
                begin
                    compare_59_0_on <= data_reg59[7:0];
                    compare_59_0_off <= data_reg59[7:0] + 127;
                end
            else
                begin
                    compare_59_0_on <= data_reg59[7:0];
                    compare_59_0_off <= data_reg59[7:0] - 127;
                end
        end

   always @(posedge pwmclk)
    if (r1 && !r2)
        begin
            if (data_reg59[15:8] < 127)
                begin
                    compare_59_1_on <= data_reg59[15:8];
                    compare_59_1_off <= data_reg59[15:8] + 127;
                end
            else
                begin
                    compare_59_1_on <= data_reg59[15:8];
                    compare_59_1_off <= data_reg59[15:8] - 127;
                end
        end
   always @(posedge pwmclk)
    if (r1 && !r2)
        begin
            if (data_reg59[23:16] < 127)
                begin
                    compare_59_2_on <= data_reg59[23:16];
                    compare_59_2_off <= data_reg59[23:16] + 127;
                end
            else
                begin
                    compare_59_2_on <= data_reg59[23:16];
                    compare_59_2_off <= data_reg59[23:16] - 127;
                end
        end
   always @(posedge pwmclk)
    if (r1 && !r2)
        begin
            if (data_reg59[31:24] < 127)
                begin
                    compare_59_3_on <= data_reg59[31:24];
                    compare_59_3_off <= data_reg59[31:24] + 127;
                end
            else
                begin
                    compare_59_3_on <= data_reg59[31:24];
                    compare_59_3_off <= data_reg59[31:24] - 127;
                end
        end
   always @(posedge pwmclk)
     if (r1 && !r2)
        begin
            if (data_reg60[7:0] < 127)
                begin
                    compare_60_0_on <= data_reg60[7:0];
                    compare_60_0_off <= data_reg60[7:0] + 127;
                end
            else
                begin
                    compare_60_0_on <= data_reg60[7:0];
                    compare_60_0_off <= data_reg60[7:0] - 127;
                end
        end

   always @(posedge pwmclk)
    if (r1 && !r2)
        begin
            if (data_reg60[15:8] < 127)
                begin
                    compare_60_1_on <= data_reg60[15:8];
                    compare_60_1_off <= data_reg60[15:8] + 127;
                end
            else
                begin
                    compare_60_1_on <= data_reg60[15:8];
                    compare_60_1_off <= data_reg60[15:8] - 127;
                end
        end
   always @(posedge pwmclk)
    if (r1 && !r2)
        begin
            if (data_reg60[23:16] < 127)
                begin
                    compare_60_2_on <= data_reg60[23:16];
                    compare_60_2_off <= data_reg60[23:16] + 127;
                end
            else
                begin
                    compare_60_2_on <= data_reg60[23:16];
                    compare_60_2_off <= data_reg60[23:16] - 127;
                end
        end
   always @(posedge pwmclk)
    if (r1 && !r2)
        begin
            if (data_reg60[31:24] < 127)
                begin
                    compare_60_3_on <= data_reg60[31:24];
                    compare_60_3_off <= data_reg60[31:24] + 127;
                end
            else
                begin
                    compare_60_3_on <= data_reg60[31:24];
                    compare_60_3_off <= data_reg60[31:24] - 127;
                end
        end
   always @(posedge pwmclk)
     if (r1 && !r2)
        begin
            if (data_reg61[7:0] < 127)
                begin
                    compare_61_0_on <= data_reg61[7:0];
                    compare_61_0_off <= data_reg61[7:0] + 127;
                end
            else
                begin
                    compare_61_0_on <= data_reg61[7:0];
                    compare_61_0_off <= data_reg61[7:0] - 127;
                end
        end

   always @(posedge pwmclk)
    if (r1 && !r2)
        begin
            if (data_reg61[15:8] < 127)
                begin
                    compare_61_1_on <= data_reg61[15:8];
                    compare_61_1_off <= data_reg61[15:8] + 127;
                end
            else
                begin
                    compare_61_1_on <= data_reg61[15:8];
                    compare_61_1_off <= data_reg61[15:8] - 127;
                end
        end
   always @(posedge pwmclk)
    if (r1 && !r2)
        begin
            if (data_reg61[23:16] < 127)
                begin
                    compare_61_2_on <= data_reg61[23:16];
                    compare_61_2_off <= data_reg61[23:16] + 127;
                end
            else
                begin
                    compare_61_2_on <= data_reg61[23:16];
                    compare_61_2_off <= data_reg61[23:16] - 127;
                end
        end
   always @(posedge pwmclk)
    if (r1 && !r2)
        begin
            if (data_reg61[31:24] < 127)
                begin
                    compare_61_3_on <= data_reg61[31:24];
                    compare_61_3_off <= data_reg61[31:24] + 127;
                end
            else
                begin
                    compare_61_3_on <= data_reg61[31:24];
                    compare_61_3_off <= data_reg61[31:24] - 127;
                end
        end
   always @(posedge pwmclk)
     if (r1 && !r2)
        begin
            if (data_reg62[7:0] < 127)
                begin
                    compare_62_0_on <= data_reg62[7:0];
                    compare_62_0_off <= data_reg62[7:0] + 127;
                end
            else
                begin
                    compare_62_0_on <= data_reg62[7:0];
                    compare_62_0_off <= data_reg62[7:0] - 127;
                end
        end

   always @(posedge pwmclk)
    if (r1 && !r2)
        begin
            if (data_reg62[15:8] < 127)
                begin
                    compare_62_1_on <= data_reg62[15:8];
                    compare_62_1_off <= data_reg62[15:8] + 127;
                end
            else
                begin
                    compare_62_1_on <= data_reg62[15:8];
                    compare_62_1_off <= data_reg62[15:8] - 127;
                end
        end
   always @(posedge pwmclk)
    if (r1 && !r2)
        begin
            if (data_reg62[23:16] < 127)
                begin
                    compare_62_2_on <= data_reg62[23:16];
                    compare_62_2_off <= data_reg62[23:16] + 127;
                end
            else
                begin
                    compare_62_2_on <= data_reg62[23:16];
                    compare_62_2_off <= data_reg62[23:16] - 127;
                end
        end
   always @(posedge pwmclk)
    if (r1 && !r2)
        begin
            if (data_reg62[31:24] < 127)
                begin
                    compare_62_3_on <= data_reg62[31:24];
                    compare_62_3_off <= data_reg62[31:24] + 127;
                end
            else
                begin
                    compare_62_3_on <= data_reg62[31:24];
                    compare_62_3_off <= data_reg62[31:24] - 127;
                end
        end
   always @(posedge pwmclk)
     if (r1 && !r2)
        begin
            if (data_reg63[7:0] < 127)
                begin
                    compare_63_0_on <= data_reg63[7:0];
                    compare_63_0_off <= data_reg63[7:0] + 127;
                end
            else
                begin
                    compare_63_0_on <= data_reg63[7:0];
                    compare_63_0_off <= data_reg63[7:0] - 127;
                end
        end

   always @(posedge pwmclk)
    if (r1 && !r2)
        begin
            if (data_reg63[15:8] < 127)
                begin
                    compare_63_1_on <= data_reg63[15:8];
                    compare_63_1_off <= data_reg63[15:8] + 127;
                end
            else
                begin
                    compare_63_1_on <= data_reg63[15:8];
                    compare_63_1_off <= data_reg63[15:8] - 127;
                end
        end
   always @(posedge pwmclk)
    if (r1 && !r2)
        begin
            if (data_reg63[23:16] < 127)
                begin
                    compare_63_2_on <= data_reg63[23:16];
                    compare_63_2_off <= data_reg63[23:16] + 127;
                end
            else
                begin
                    compare_63_2_on <= data_reg63[23:16];
                    compare_63_2_off <= data_reg63[23:16] - 127;
                end
        end
   always @(posedge pwmclk)
    if (r1 && !r2)
        begin
            if (data_reg63[31:24] < 127)
                begin
                    compare_63_3_on <= data_reg63[31:24];
                    compare_63_3_off <= data_reg63[31:24] + 127;
                end
            else
                begin
                    compare_63_3_on <= data_reg63[31:24];
                    compare_63_3_off <= data_reg63[31:24] - 127;
                end
        end
   always @(posedge pwmclk)
     if (r1 && !r2)
        begin
            if (data_reg64[7:0] < 127)
                begin
                    compare_64_0_on <= data_reg64[7:0];
                    compare_64_0_off <= data_reg64[7:0] + 127;
                end
            else
                begin
                    compare_64_0_on <= data_reg64[7:0];
                    compare_64_0_off <= data_reg64[7:0] - 127;
                end
        end

   always @(posedge pwmclk)
    if (r1 && !r2)
        begin
            if (data_reg64[15:8] < 127)
                begin
                    compare_64_1_on <= data_reg64[15:8];
                    compare_64_1_off <= data_reg64[15:8] + 127;
                end
            else
                begin
                    compare_64_1_on <= data_reg64[15:8];
                    compare_64_1_off <= data_reg64[15:8] - 127;
                end
        end
   always @(posedge pwmclk)
    if (r1 && !r2)
        begin
            if (data_reg64[23:16] < 127)
                begin
                    compare_64_2_on <= data_reg64[23:16];
                    compare_64_2_off <= data_reg64[23:16] + 127;
                end
            else
                begin
                    compare_64_2_on <= data_reg64[23:16];
                    compare_64_2_off <= data_reg64[23:16] - 127;
                end
        end
   always @(posedge pwmclk)
    if (r1 && !r2)
        begin
            if (data_reg64[31:24] < 127)
                begin
                    compare_64_3_on <= data_reg64[31:24];
                    compare_64_3_off <= data_reg64[31:24] + 127;
                end
            else
                begin
                    compare_64_3_on <= data_reg64[31:24];
                    compare_64_3_off <= data_reg64[31:24] - 127;
                end
        end
   always @(posedge pwmclk)
     if (r1 && !r2)
        begin
            if (data_reg65[7:0] < 127)
                begin
                    compare_65_0_on <= data_reg65[7:0];
                    compare_65_0_off <= data_reg65[7:0] + 127;
                end
            else
                begin
                    compare_65_0_on <= data_reg65[7:0];
                    compare_65_0_off <= data_reg65[7:0] - 127;
                end
        end

   always @(posedge pwmclk)
    if (r1 && !r2)
        begin
            if (data_reg65[15:8] < 127)
                begin
                    compare_65_1_on <= data_reg65[15:8];
                    compare_65_1_off <= data_reg65[15:8] + 127;
                end
            else
                begin
                    compare_65_1_on <= data_reg65[15:8];
                    compare_65_1_off <= data_reg65[15:8] - 127;
                end
        end
   always @(posedge pwmclk)
    if (r1 && !r2)
        begin
            if (data_reg65[23:16] < 127)
                begin
                    compare_65_2_on <= data_reg65[23:16];
                    compare_65_2_off <= data_reg65[23:16] + 127;
                end
            else
                begin
                    compare_65_2_on <= data_reg65[23:16];
                    compare_65_2_off <= data_reg65[23:16] - 127;
                end
        end
   always @(posedge pwmclk)
    if (r1 && !r2)
        begin
            if (data_reg65[31:24] < 127)
                begin
                    compare_65_3_on <= data_reg65[31:24];
                    compare_65_3_off <= data_reg65[31:24] + 127;
                end
            else
                begin
                    compare_65_3_on <= data_reg65[31:24];
                    compare_65_3_off <= data_reg65[31:24] - 127;
                end
        end
   always @(posedge pwmclk)
     if (r1 && !r2)
        begin
            if (data_reg66[7:0] < 127)
                begin
                    compare_66_0_on <= data_reg66[7:0];
                    compare_66_0_off <= data_reg66[7:0] + 127;
                end
            else
                begin
                    compare_66_0_on <= data_reg66[7:0];
                    compare_66_0_off <= data_reg66[7:0] - 127;
                end
        end

   always @(posedge pwmclk)
    if (r1 && !r2)
        begin
            if (data_reg66[15:8] < 127)
                begin
                    compare_66_1_on <= data_reg66[15:8];
                    compare_66_1_off <= data_reg66[15:8] + 127;
                end
            else
                begin
                    compare_66_1_on <= data_reg66[15:8];
                    compare_66_1_off <= data_reg66[15:8] - 127;
                end
        end
   always @(posedge pwmclk)
    if (r1 && !r2)
        begin
            if (data_reg66[23:16] < 127)
                begin
                    compare_66_2_on <= data_reg66[23:16];
                    compare_66_2_off <= data_reg66[23:16] + 127;
                end
            else
                begin
                    compare_66_2_on <= data_reg66[23:16];
                    compare_66_2_off <= data_reg66[23:16] - 127;
                end
        end
   always @(posedge pwmclk)
    if (r1 && !r2)
        begin
            if (data_reg66[31:24] < 127)
                begin
                    compare_66_3_on <= data_reg66[31:24];
                    compare_66_3_off <= data_reg66[31:24] + 127;
                end
            else
                begin
                    compare_66_3_on <= data_reg66[31:24];
                    compare_66_3_off <= data_reg66[31:24] - 127;
                end
        end
   always @(posedge pwmclk)
     if (r1 && !r2)
        begin
            if (data_reg67[7:0] < 127)
                begin
                    compare_67_0_on <= data_reg67[7:0];
                    compare_67_0_off <= data_reg67[7:0] + 127;
                end
            else
                begin
                    compare_67_0_on <= data_reg67[7:0];
                    compare_67_0_off <= data_reg67[7:0] - 127;
                end
        end

   always @(posedge pwmclk)
    if (r1 && !r2)
        begin
            if (data_reg67[15:8] < 127)
                begin
                    compare_67_1_on <= data_reg67[15:8];
                    compare_67_1_off <= data_reg67[15:8] + 127;
                end
            else
                begin
                    compare_67_1_on <= data_reg67[15:8];
                    compare_67_1_off <= data_reg67[15:8] - 127;
                end
        end
   always @(posedge pwmclk)
    if (r1 && !r2)
        begin
            if (data_reg67[23:16] < 127)
                begin
                    compare_67_2_on <= data_reg67[23:16];
                    compare_67_2_off <= data_reg67[23:16] + 127;
                end
            else
                begin
                    compare_67_2_on <= data_reg67[23:16];
                    compare_67_2_off <= data_reg67[23:16] - 127;
                end
        end
   always @(posedge pwmclk)
    if (r1 && !r2)
        begin
            if (data_reg67[31:24] < 127)
                begin
                    compare_67_3_on <= data_reg67[31:24];
                    compare_67_3_off <= data_reg67[31:24] + 127;
                end
            else
                begin
                    compare_67_3_on <= data_reg67[31:24];
                    compare_67_3_off <= data_reg67[31:24] - 127;
                end
        end
   always @(posedge pwmclk)
     if (r1 && !r2)
        begin
            if (data_reg68[7:0] < 127)
                begin
                    compare_68_0_on <= data_reg68[7:0];
                    compare_68_0_off <= data_reg68[7:0] + 127;
                end
            else
                begin
                    compare_68_0_on <= data_reg68[7:0];
                    compare_68_0_off <= data_reg68[7:0] - 127;
                end
        end

   always @(posedge pwmclk)
    if (r1 && !r2)
        begin
            if (data_reg68[15:8] < 127)
                begin
                    compare_68_1_on <= data_reg68[15:8];
                    compare_68_1_off <= data_reg68[15:8] + 127;
                end
            else
                begin
                    compare_68_1_on <= data_reg68[15:8];
                    compare_68_1_off <= data_reg68[15:8] - 127;
                end
        end
   always @(posedge pwmclk)
    if (r1 && !r2)
        begin
            if (data_reg68[23:16] < 127)
                begin
                    compare_68_2_on <= data_reg68[23:16];
                    compare_68_2_off <= data_reg68[23:16] + 127;
                end
            else
                begin
                    compare_68_2_on <= data_reg68[23:16];
                    compare_68_2_off <= data_reg68[23:16] - 127;
                end
        end
   always @(posedge pwmclk)
    if (r1 && !r2)
        begin
            if (data_reg68[31:24] < 127)
                begin
                    compare_68_3_on <= data_reg68[31:24];
                    compare_68_3_off <= data_reg68[31:24] + 127;
                end
            else
                begin
                    compare_68_3_on <= data_reg68[31:24];
                    compare_68_3_off <= data_reg68[31:24] - 127;
                end
        end
   always @(posedge pwmclk)
     if (r1 && !r2)
        begin
            if (data_reg69[7:0] < 127)
                begin
                    compare_69_0_on <= data_reg69[7:0];
                    compare_69_0_off <= data_reg69[7:0] + 127;
                end
            else
                begin
                    compare_69_0_on <= data_reg69[7:0];
                    compare_69_0_off <= data_reg69[7:0] - 127;
                end
        end

   always @(posedge pwmclk)
    if (r1 && !r2)
        begin
            if (data_reg69[15:8] < 127)
                begin
                    compare_69_1_on <= data_reg69[15:8];
                    compare_69_1_off <= data_reg69[15:8] + 127;
                end
            else
                begin
                    compare_69_1_on <= data_reg69[15:8];
                    compare_69_1_off <= data_reg69[15:8] - 127;
                end
        end
   always @(posedge pwmclk)
    if (r1 && !r2)
        begin
            if (data_reg69[23:16] < 127)
                begin
                    compare_69_2_on <= data_reg69[23:16];
                    compare_69_2_off <= data_reg69[23:16] + 127;
                end
            else
                begin
                    compare_69_2_on <= data_reg69[23:16];
                    compare_69_2_off <= data_reg69[23:16] - 127;
                end
        end
   always @(posedge pwmclk)
    if (r1 && !r2)
        begin
            if (data_reg69[31:24] < 127)
                begin
                    compare_69_3_on <= data_reg69[31:24];
                    compare_69_3_off <= data_reg69[31:24] + 127;
                end
            else
                begin
                    compare_69_3_on <= data_reg69[31:24];
                    compare_69_3_off <= data_reg69[31:24] - 127;
                end
        end
   always @(posedge pwmclk)
     if (r1 && !r2)
        begin
            if (data_reg70[7:0] < 127)
                begin
                    compare_70_0_on <= data_reg70[7:0];
                    compare_70_0_off <= data_reg70[7:0] + 127;
                end
            else
                begin
                    compare_70_0_on <= data_reg70[7:0];
                    compare_70_0_off <= data_reg70[7:0] - 127;
                end
        end

   always @(posedge pwmclk)
    if (r1 && !r2)
        begin
            if (data_reg70[15:8] < 127)
                begin
                    compare_70_1_on <= data_reg70[15:8];
                    compare_70_1_off <= data_reg70[15:8] + 127;
                end
            else
                begin
                    compare_70_1_on <= data_reg70[15:8];
                    compare_70_1_off <= data_reg70[15:8] - 127;
                end
        end
   always @(posedge pwmclk)
    if (r1 && !r2)
        begin
            if (data_reg70[23:16] < 127)
                begin
                    compare_70_2_on <= data_reg70[23:16];
                    compare_70_2_off <= data_reg70[23:16] + 127;
                end
            else
                begin
                    compare_70_2_on <= data_reg70[23:16];
                    compare_70_2_off <= data_reg70[23:16] - 127;
                end
        end
   always @(posedge pwmclk)
    if (r1 && !r2)
        begin
            if (data_reg70[31:24] < 127)
                begin
                    compare_70_3_on <= data_reg70[31:24];
                    compare_70_3_off <= data_reg70[31:24] + 127;
                end
            else
                begin
                    compare_70_3_on <= data_reg70[31:24];
                    compare_70_3_off <= data_reg70[31:24] - 127;
                end
        end
   always @(posedge pwmclk)
     if (r1 && !r2)
        begin
            if (data_reg71[7:0] < 127)
                begin
                    compare_71_0_on <= data_reg71[7:0];
                    compare_71_0_off <= data_reg71[7:0] + 127;
                end
            else
                begin
                    compare_71_0_on <= data_reg71[7:0];
                    compare_71_0_off <= data_reg71[7:0] - 127;
                end
        end

   always @(posedge pwmclk)
    if (r1 && !r2)
        begin
            if (data_reg71[15:8] < 127)
                begin
                    compare_71_1_on <= data_reg71[15:8];
                    compare_71_1_off <= data_reg71[15:8] + 127;
                end
            else
                begin
                    compare_71_1_on <= data_reg71[15:8];
                    compare_71_1_off <= data_reg71[15:8] - 127;
                end
        end
   always @(posedge pwmclk)
    if (r1 && !r2)
        begin
            if (data_reg71[23:16] < 127)
                begin
                    compare_71_2_on <= data_reg71[23:16];
                    compare_71_2_off <= data_reg71[23:16] + 127;
                end
            else
                begin
                    compare_71_2_on <= data_reg71[23:16];
                    compare_71_2_off <= data_reg71[23:16] - 127;
                end
        end
   always @(posedge pwmclk)
    if (r1 && !r2)
        begin
            if (data_reg71[31:24] < 127)
                begin
                    compare_71_3_on <= data_reg71[31:24];
                    compare_71_3_off <= data_reg71[31:24] + 127;
                end
            else
                begin
                    compare_71_3_on <= data_reg71[31:24];
                    compare_71_3_off <= data_reg71[31:24] - 127;
                end
        end
   always @(posedge pwmclk)
     if (r1 && !r2)
        begin
            if (data_reg72[7:0] < 127)
                begin
                    compare_72_0_on <= data_reg72[7:0];
                    compare_72_0_off <= data_reg72[7:0] + 127;
                end
            else
                begin
                    compare_72_0_on <= data_reg72[7:0];
                    compare_72_0_off <= data_reg72[7:0] - 127;
                end
        end

   always @(posedge pwmclk)
    if (r1 && !r2)
        begin
            if (data_reg72[15:8] < 127)
                begin
                    compare_72_1_on <= data_reg72[15:8];
                    compare_72_1_off <= data_reg72[15:8] + 127;
                end
            else
                begin
                    compare_72_1_on <= data_reg72[15:8];
                    compare_72_1_off <= data_reg72[15:8] - 127;
                end
        end
   always @(posedge pwmclk)
    if (r1 && !r2)
        begin
            if (data_reg72[23:16] < 127)
                begin
                    compare_72_2_on <= data_reg72[23:16];
                    compare_72_2_off <= data_reg72[23:16] + 127;
                end
            else
                begin
                    compare_72_2_on <= data_reg72[23:16];
                    compare_72_2_off <= data_reg72[23:16] - 127;
                end
        end
   always @(posedge pwmclk)
    if (r1 && !r2)
        begin
            if (data_reg72[31:24] < 127)
                begin
                    compare_72_3_on <= data_reg72[31:24];
                    compare_72_3_off <= data_reg72[31:24] + 127;
                end
            else
                begin
                    compare_72_3_on <= data_reg72[31:24];
                    compare_72_3_off <= data_reg72[31:24] - 127;
                end
        end
   always @(posedge pwmclk)
     if (r1 && !r2)
        begin
            if (data_reg73[7:0] < 127)
                begin
                    compare_73_0_on <= data_reg73[7:0];
                    compare_73_0_off <= data_reg73[7:0] + 127;
                end
            else
                begin
                    compare_73_0_on <= data_reg73[7:0];
                    compare_73_0_off <= data_reg73[7:0] - 127;
                end
        end

   always @(posedge pwmclk)
    if (r1 && !r2)
        begin
            if (data_reg73[15:8] < 127)
                begin
                    compare_73_1_on <= data_reg73[15:8];
                    compare_73_1_off <= data_reg73[15:8] + 127;
                end
            else
                begin
                    compare_73_1_on <= data_reg73[15:8];
                    compare_73_1_off <= data_reg73[15:8] - 127;
                end
        end
   always @(posedge pwmclk)
    if (r1 && !r2)
        begin
            if (data_reg73[23:16] < 127)
                begin
                    compare_73_2_on <= data_reg73[23:16];
                    compare_73_2_off <= data_reg73[23:16] + 127;
                end
            else
                begin
                    compare_73_2_on <= data_reg73[23:16];
                    compare_73_2_off <= data_reg73[23:16] - 127;
                end
        end
   always @(posedge pwmclk)
    if (r1 && !r2)
        begin
            if (data_reg73[31:24] < 127)
                begin
                    compare_73_3_on <= data_reg73[31:24];
                    compare_73_3_off <= data_reg73[31:24] + 127;
                end
            else
                begin
                    compare_73_3_on <= data_reg73[31:24];
                    compare_73_3_off <= data_reg73[31:24] - 127;
                end
        end
   always @(posedge pwmclk)
     if (r1 && !r2)
        begin
            if (data_reg74[7:0] < 127)
                begin
                    compare_74_0_on <= data_reg74[7:0];
                    compare_74_0_off <= data_reg74[7:0] + 127;
                end
            else
                begin
                    compare_74_0_on <= data_reg74[7:0];
                    compare_74_0_off <= data_reg74[7:0] - 127;
                end
        end

   always @(posedge pwmclk)
    if (r1 && !r2)
        begin
            if (data_reg74[15:8] < 127)
                begin
                    compare_74_1_on <= data_reg74[15:8];
                    compare_74_1_off <= data_reg74[15:8] + 127;
                end
            else
                begin
                    compare_74_1_on <= data_reg74[15:8];
                    compare_74_1_off <= data_reg74[15:8] - 127;
                end
        end
   always @(posedge pwmclk)
    if (r1 && !r2)
        begin
            if (data_reg74[23:16] < 127)
                begin
                    compare_74_2_on <= data_reg74[23:16];
                    compare_74_2_off <= data_reg74[23:16] + 127;
                end
            else
                begin
                    compare_74_2_on <= data_reg74[23:16];
                    compare_74_2_off <= data_reg74[23:16] - 127;
                end
        end
   always @(posedge pwmclk)
    if (r1 && !r2)
        begin
            if (data_reg74[31:24] < 127)
                begin
                    compare_74_3_on <= data_reg74[31:24];
                    compare_74_3_off <= data_reg74[31:24] + 127;
                end
            else
                begin
                    compare_74_3_on <= data_reg74[31:24];
                    compare_74_3_off <= data_reg74[31:24] - 127;
                end
        end
   always @(posedge pwmclk)
     if (r1 && !r2)
        begin
            if (data_reg75[7:0] < 127)
                begin
                    compare_75_0_on <= data_reg75[7:0];
                    compare_75_0_off <= data_reg75[7:0] + 127;
                end
            else
                begin
                    compare_75_0_on <= data_reg75[7:0];
                    compare_75_0_off <= data_reg75[7:0] - 127;
                end
        end

   always @(posedge pwmclk)
    if (r1 && !r2)
        begin
            if (data_reg75[15:8] < 127)
                begin
                    compare_75_1_on <= data_reg75[15:8];
                    compare_75_1_off <= data_reg75[15:8] + 127;
                end
            else
                begin
                    compare_75_1_on <= data_reg75[15:8];
                    compare_75_1_off <= data_reg75[15:8] - 127;
                end
        end
   always @(posedge pwmclk)
    if (r1 && !r2)
        begin
            if (data_reg75[23:16] < 127)
                begin
                    compare_75_2_on <= data_reg75[23:16];
                    compare_75_2_off <= data_reg75[23:16] + 127;
                end
            else
                begin
                    compare_75_2_on <= data_reg75[23:16];
                    compare_75_2_off <= data_reg75[23:16] - 127;
                end
        end
   always @(posedge pwmclk)
    if (r1 && !r2)
        begin
            if (data_reg75[31:24] < 127)
                begin
                    compare_75_3_on <= data_reg75[31:24];
                    compare_75_3_off <= data_reg75[31:24] + 127;
                end
            else
                begin
                    compare_75_3_on <= data_reg75[31:24];
                    compare_75_3_off <= data_reg75[31:24] - 127;
                end
        end
   always @(posedge pwmclk)
     if (r1 && !r2)
        begin
            if (data_reg76[7:0] < 127)
                begin
                    compare_76_0_on <= data_reg76[7:0];
                    compare_76_0_off <= data_reg76[7:0] + 127;
                end
            else
                begin
                    compare_76_0_on <= data_reg76[7:0];
                    compare_76_0_off <= data_reg76[7:0] - 127;
                end
        end

   always @(posedge pwmclk)
    if (r1 && !r2)
        begin
            if (data_reg76[15:8] < 127)
                begin
                    compare_76_1_on <= data_reg76[15:8];
                    compare_76_1_off <= data_reg76[15:8] + 127;
                end
            else
                begin
                    compare_76_1_on <= data_reg76[15:8];
                    compare_76_1_off <= data_reg76[15:8] - 127;
                end
        end
   always @(posedge pwmclk)
    if (r1 && !r2)
        begin
            if (data_reg76[23:16] < 127)
                begin
                    compare_76_2_on <= data_reg76[23:16];
                    compare_76_2_off <= data_reg76[23:16] + 127;
                end
            else
                begin
                    compare_76_2_on <= data_reg76[23:16];
                    compare_76_2_off <= data_reg76[23:16] - 127;
                end
        end
   always @(posedge pwmclk)
    if (r1 && !r2)
        begin
            if (data_reg76[31:24] < 127)
                begin
                    compare_76_3_on <= data_reg76[31:24];
                    compare_76_3_off <= data_reg76[31:24] + 127;
                end
            else
                begin
                    compare_76_3_on <= data_reg76[31:24];
                    compare_76_3_off <= data_reg76[31:24] - 127;
                end
        end
   always @(posedge pwmclk)
     if (r1 && !r2)
        begin
            if (data_reg77[7:0] < 127)
                begin
                    compare_77_0_on <= data_reg77[7:0];
                    compare_77_0_off <= data_reg77[7:0] + 127;
                end
            else
                begin
                    compare_77_0_on <= data_reg77[7:0];
                    compare_77_0_off <= data_reg77[7:0] - 127;
                end
        end

   always @(posedge pwmclk)
    if (r1 && !r2)
        begin
            if (data_reg77[15:8] < 127)
                begin
                    compare_77_1_on <= data_reg77[15:8];
                    compare_77_1_off <= data_reg77[15:8] + 127;
                end
            else
                begin
                    compare_77_1_on <= data_reg77[15:8];
                    compare_77_1_off <= data_reg77[15:8] - 127;
                end
        end
   always @(posedge pwmclk)
    if (r1 && !r2)
        begin
            if (data_reg77[23:16] < 127)
                begin
                    compare_77_2_on <= data_reg77[23:16];
                    compare_77_2_off <= data_reg77[23:16] + 127;
                end
            else
                begin
                    compare_77_2_on <= data_reg77[23:16];
                    compare_77_2_off <= data_reg77[23:16] - 127;
                end
        end
   always @(posedge pwmclk)
    if (r1 && !r2)
        begin
            if (data_reg77[31:24] < 127)
                begin
                    compare_77_3_on <= data_reg77[31:24];
                    compare_77_3_off <= data_reg77[31:24] + 127;
                end
            else
                begin
                    compare_77_3_on <= data_reg77[31:24];
                    compare_77_3_off <= data_reg77[31:24] - 127;
                end
        end
   always @(posedge pwmclk)
     if (r1 && !r2)
        begin
            if (data_reg78[7:0] < 127)
                begin
                    compare_78_0_on <= data_reg78[7:0];
                    compare_78_0_off <= data_reg78[7:0] + 127;
                end
            else
                begin
                    compare_78_0_on <= data_reg78[7:0];
                    compare_78_0_off <= data_reg78[7:0] - 127;
                end
        end

   always @(posedge pwmclk)
    if (r1 && !r2)
        begin
            if (data_reg78[15:8] < 127)
                begin
                    compare_78_1_on <= data_reg78[15:8];
                    compare_78_1_off <= data_reg78[15:8] + 127;
                end
            else
                begin
                    compare_78_1_on <= data_reg78[15:8];
                    compare_78_1_off <= data_reg78[15:8] - 127;
                end
        end
   always @(posedge pwmclk)
    if (r1 && !r2)
        begin
            if (data_reg78[23:16] < 127)
                begin
                    compare_78_2_on <= data_reg78[23:16];
                    compare_78_2_off <= data_reg78[23:16] + 127;
                end
            else
                begin
                    compare_78_2_on <= data_reg78[23:16];
                    compare_78_2_off <= data_reg78[23:16] - 127;
                end
        end
   always @(posedge pwmclk)
    if (r1 && !r2)
        begin
            if (data_reg78[31:24] < 127)
                begin
                    compare_78_3_on <= data_reg78[31:24];
                    compare_78_3_off <= data_reg78[31:24] + 127;
                end
            else
                begin
                    compare_78_3_on <= data_reg78[31:24];
                    compare_78_3_off <= data_reg78[31:24] - 127;
                end
        end
   always @(posedge pwmclk)
     if (r1 && !r2)
        begin
            if (data_reg79[7:0] < 127)
                begin
                    compare_79_0_on <= data_reg79[7:0];
                    compare_79_0_off <= data_reg79[7:0] + 127;
                end
            else
                begin
                    compare_79_0_on <= data_reg79[7:0];
                    compare_79_0_off <= data_reg79[7:0] - 127;
                end
        end

   always @(posedge pwmclk)
    if (r1 && !r2)
        begin
            if (data_reg79[15:8] < 127)
                begin
                    compare_79_1_on <= data_reg79[15:8];
                    compare_79_1_off <= data_reg79[15:8] + 127;
                end
            else
                begin
                    compare_79_1_on <= data_reg79[15:8];
                    compare_79_1_off <= data_reg79[15:8] - 127;
                end
        end
   always @(posedge pwmclk)
    if (r1 && !r2)
        begin
            if (data_reg79[23:16] < 127)
                begin
                    compare_79_2_on <= data_reg79[23:16];
                    compare_79_2_off <= data_reg79[23:16] + 127;
                end
            else
                begin
                    compare_79_2_on <= data_reg79[23:16];
                    compare_79_2_off <= data_reg79[23:16] - 127;
                end
        end
   always @(posedge pwmclk)
    if (r1 && !r2)
        begin
            if (data_reg79[31:24] < 127)
                begin
                    compare_79_3_on <= data_reg79[31:24];
                    compare_79_3_off <= data_reg79[31:24] + 127;
                end
            else
                begin
                    compare_79_3_on <= data_reg79[31:24];
                    compare_79_3_off <= data_reg79[31:24] - 127;
                end
        end
   always @(posedge pwmclk)
     if (r1 && !r2)
        begin
            if (data_reg80[7:0] < 127)
                begin
                    compare_80_0_on <= data_reg80[7:0];
                    compare_80_0_off <= data_reg80[7:0] + 127;
                end
            else
                begin
                    compare_80_0_on <= data_reg80[7:0];
                    compare_80_0_off <= data_reg80[7:0] - 127;
                end
        end

   always @(posedge pwmclk)
    if (r1 && !r2)
        begin
            if (data_reg80[15:8] < 127)
                begin
                    compare_80_1_on <= data_reg80[15:8];
                    compare_80_1_off <= data_reg80[15:8] + 127;
                end
            else
                begin
                    compare_80_1_on <= data_reg80[15:8];
                    compare_80_1_off <= data_reg80[15:8] - 127;
                end
        end
   always @(posedge pwmclk)
    if (r1 && !r2)
        begin
            if (data_reg80[23:16] < 127)
                begin
                    compare_80_2_on <= data_reg80[23:16];
                    compare_80_2_off <= data_reg80[23:16] + 127;
                end
            else
                begin
                    compare_80_2_on <= data_reg80[23:16];
                    compare_80_2_off <= data_reg80[23:16] - 127;
                end
        end
   always @(posedge pwmclk)
    if (r1 && !r2)
        begin
            if (data_reg80[31:24] < 127)
                begin
                    compare_80_3_on <= data_reg80[31:24];
                    compare_80_3_off <= data_reg80[31:24] + 127;
                end
            else
                begin
                    compare_80_3_on <= data_reg80[31:24];
                    compare_80_3_off <= data_reg80[31:24] - 127;
                end
        end
   always @(posedge pwmclk)
     if (r1 && !r2)
        begin
            if (data_reg81[7:0] < 127)
                begin
                    compare_81_0_on <= data_reg81[7:0];
                    compare_81_0_off <= data_reg81[7:0] + 127;
                end
            else
                begin
                    compare_81_0_on <= data_reg81[7:0];
                    compare_81_0_off <= data_reg81[7:0] - 127;
                end
        end

   always @(posedge pwmclk)
    if (r1 && !r2)
        begin
            if (data_reg81[15:8] < 127)
                begin
                    compare_81_1_on <= data_reg81[15:8];
                    compare_81_1_off <= data_reg81[15:8] + 127;
                end
            else
                begin
                    compare_81_1_on <= data_reg81[15:8];
                    compare_81_1_off <= data_reg81[15:8] - 127;
                end
        end
   always @(posedge pwmclk)
    if (r1 && !r2)
        begin
            if (data_reg81[23:16] < 127)
                begin
                    compare_81_2_on <= data_reg81[23:16];
                    compare_81_2_off <= data_reg81[23:16] + 127;
                end
            else
                begin
                    compare_81_2_on <= data_reg81[23:16];
                    compare_81_2_off <= data_reg81[23:16] - 127;
                end
        end
   always @(posedge pwmclk)
    if (r1 && !r2)
        begin
            if (data_reg81[31:24] < 127)
                begin
                    compare_81_3_on <= data_reg81[31:24];
                    compare_81_3_off <= data_reg81[31:24] + 127;
                end
            else
                begin
                    compare_81_3_on <= data_reg81[31:24];
                    compare_81_3_off <= data_reg81[31:24] - 127;
                end
        end
   always @(posedge pwmclk)
     if (r1 && !r2)
        begin
            if (data_reg82[7:0] < 127)
                begin
                    compare_82_0_on <= data_reg82[7:0];
                    compare_82_0_off <= data_reg82[7:0] + 127;
                end
            else
                begin
                    compare_82_0_on <= data_reg82[7:0];
                    compare_82_0_off <= data_reg82[7:0] - 127;
                end
        end

   always @(posedge pwmclk)
    if (r1 && !r2)
        begin
            if (data_reg82[15:8] < 127)
                begin
                    compare_82_1_on <= data_reg82[15:8];
                    compare_82_1_off <= data_reg82[15:8] + 127;
                end
            else
                begin
                    compare_82_1_on <= data_reg82[15:8];
                    compare_82_1_off <= data_reg82[15:8] - 127;
                end
        end
   always @(posedge pwmclk)
    if (r1 && !r2)
        begin
            if (data_reg82[23:16] < 127)
                begin
                    compare_82_2_on <= data_reg82[23:16];
                    compare_82_2_off <= data_reg82[23:16] + 127;
                end
            else
                begin
                    compare_82_2_on <= data_reg82[23:16];
                    compare_82_2_off <= data_reg82[23:16] - 127;
                end
        end
   always @(posedge pwmclk)
    if (r1 && !r2)
        begin
            if (data_reg82[31:24] < 127)
                begin
                    compare_82_3_on <= data_reg82[31:24];
                    compare_82_3_off <= data_reg82[31:24] + 127;
                end
            else
                begin
                    compare_82_3_on <= data_reg82[31:24];
                    compare_82_3_off <= data_reg82[31:24] - 127;
                end
        end
   always @(posedge pwmclk)
     if (r1 && !r2)
        begin
            if (data_reg83[7:0] < 127)
                begin
                    compare_83_0_on <= data_reg83[7:0];
                    compare_83_0_off <= data_reg83[7:0] + 127;
                end
            else
                begin
                    compare_83_0_on <= data_reg83[7:0];
                    compare_83_0_off <= data_reg83[7:0] - 127;
                end
        end

   always @(posedge pwmclk)
    if (r1 && !r2)
        begin
            if (data_reg83[15:8] < 127)
                begin
                    compare_83_1_on <= data_reg83[15:8];
                    compare_83_1_off <= data_reg83[15:8] + 127;
                end
            else
                begin
                    compare_83_1_on <= data_reg83[15:8];
                    compare_83_1_off <= data_reg83[15:8] - 127;
                end
        end
   always @(posedge pwmclk)
    if (r1 && !r2)
        begin
            if (data_reg83[23:16] < 127)
                begin
                    compare_83_2_on <= data_reg83[23:16];
                    compare_83_2_off <= data_reg83[23:16] + 127;
                end
            else
                begin
                    compare_83_2_on <= data_reg83[23:16];
                    compare_83_2_off <= data_reg83[23:16] - 127;
                end
        end
   always @(posedge pwmclk)
    if (r1 && !r2)
        begin
            if (data_reg83[31:24] < 127)
                begin
                    compare_83_3_on <= data_reg83[31:24];
                    compare_83_3_off <= data_reg83[31:24] + 127;
                end
            else
                begin
                    compare_83_3_on <= data_reg83[31:24];
                    compare_83_3_off <= data_reg83[31:24] - 127;
                end
        end
   always @(posedge pwmclk)
     if (r1 && !r2)
        begin
            if (data_reg84[7:0] < 127)
                begin
                    compare_84_0_on <= data_reg84[7:0];
                    compare_84_0_off <= data_reg84[7:0] + 127;
                end
            else
                begin
                    compare_84_0_on <= data_reg84[7:0];
                    compare_84_0_off <= data_reg84[7:0] - 127;
                end
        end

   always @(posedge pwmclk)
    if (r1 && !r2)
        begin
            if (data_reg84[15:8] < 127)
                begin
                    compare_84_1_on <= data_reg84[15:8];
                    compare_84_1_off <= data_reg84[15:8] + 127;
                end
            else
                begin
                    compare_84_1_on <= data_reg84[15:8];
                    compare_84_1_off <= data_reg84[15:8] - 127;
                end
        end
   always @(posedge pwmclk)
    if (r1 && !r2)
        begin
            if (data_reg84[23:16] < 127)
                begin
                    compare_84_2_on <= data_reg84[23:16];
                    compare_84_2_off <= data_reg84[23:16] + 127;
                end
            else
                begin
                    compare_84_2_on <= data_reg84[23:16];
                    compare_84_2_off <= data_reg84[23:16] - 127;
                end
        end
   always @(posedge pwmclk)
    if (r1 && !r2)
        begin
            if (data_reg84[31:24] < 127)
                begin
                    compare_84_3_on <= data_reg84[31:24];
                    compare_84_3_off <= data_reg84[31:24] + 127;
                end
            else
                begin
                    compare_84_3_on <= data_reg84[31:24];
                    compare_84_3_off <= data_reg84[31:24] - 127;
                end
        end
   always @(posedge pwmclk)
     if (r1 && !r2)
        begin
            if (data_reg85[7:0] < 127)
                begin
                    compare_85_0_on <= data_reg85[7:0];
                    compare_85_0_off <= data_reg85[7:0] + 127;
                end
            else
                begin
                    compare_85_0_on <= data_reg85[7:0];
                    compare_85_0_off <= data_reg85[7:0] - 127;
                end
        end

   always @(posedge pwmclk)
    if (r1 && !r2)
        begin
            if (data_reg85[15:8] < 127)
                begin
                    compare_85_1_on <= data_reg85[15:8];
                    compare_85_1_off <= data_reg85[15:8] + 127;
                end
            else
                begin
                    compare_85_1_on <= data_reg85[15:8];
                    compare_85_1_off <= data_reg85[15:8] - 127;
                end
        end
   always @(posedge pwmclk)
    if (r1 && !r2)
        begin
            if (data_reg85[23:16] < 127)
                begin
                    compare_85_2_on <= data_reg85[23:16];
                    compare_85_2_off <= data_reg85[23:16] + 127;
                end
            else
                begin
                    compare_85_2_on <= data_reg85[23:16];
                    compare_85_2_off <= data_reg85[23:16] - 127;
                end
        end
   always @(posedge pwmclk)
    if (r1 && !r2)
        begin
            if (data_reg85[31:24] < 127)
                begin
                    compare_85_3_on <= data_reg85[31:24];
                    compare_85_3_off <= data_reg85[31:24] + 127;
                end
            else
                begin
                    compare_85_3_on <= data_reg85[31:24];
                    compare_85_3_off <= data_reg85[31:24] - 127;
                end
        end
   always @(posedge pwmclk)
     if (r1 && !r2)
        begin
            if (data_reg86[7:0] < 127)
                begin
                    compare_86_0_on <= data_reg86[7:0];
                    compare_86_0_off <= data_reg86[7:0] + 127;
                end
            else
                begin
                    compare_86_0_on <= data_reg86[7:0];
                    compare_86_0_off <= data_reg86[7:0] - 127;
                end
        end

   always @(posedge pwmclk)
    if (r1 && !r2)
        begin
            if (data_reg86[15:8] < 127)
                begin
                    compare_86_1_on <= data_reg86[15:8];
                    compare_86_1_off <= data_reg86[15:8] + 127;
                end
            else
                begin
                    compare_86_1_on <= data_reg86[15:8];
                    compare_86_1_off <= data_reg86[15:8] - 127;
                end
        end
   always @(posedge pwmclk)
    if (r1 && !r2)
        begin
            if (data_reg86[23:16] < 127)
                begin
                    compare_86_2_on <= data_reg86[23:16];
                    compare_86_2_off <= data_reg86[23:16] + 127;
                end
            else
                begin
                    compare_86_2_on <= data_reg86[23:16];
                    compare_86_2_off <= data_reg86[23:16] - 127;
                end
        end
   always @(posedge pwmclk)
    if (r1 && !r2)
        begin
            if (data_reg86[31:24] < 127)
                begin
                    compare_86_3_on <= data_reg86[31:24];
                    compare_86_3_off <= data_reg86[31:24] + 127;
                end
            else
                begin
                    compare_86_3_on <= data_reg86[31:24];
                    compare_86_3_off <= data_reg86[31:24] - 127;
                end
        end
   always @(posedge pwmclk)
     if (r1 && !r2)
        begin
            if (data_reg87[7:0] < 127)
                begin
                    compare_87_0_on <= data_reg87[7:0];
                    compare_87_0_off <= data_reg87[7:0] + 127;
                end
            else
                begin
                    compare_87_0_on <= data_reg87[7:0];
                    compare_87_0_off <= data_reg87[7:0] - 127;
                end
        end

   always @(posedge pwmclk)
    if (r1 && !r2)
        begin
            if (data_reg87[15:8] < 127)
                begin
                    compare_87_1_on <= data_reg87[15:8];
                    compare_87_1_off <= data_reg87[15:8] + 127;
                end
            else
                begin
                    compare_87_1_on <= data_reg87[15:8];
                    compare_87_1_off <= data_reg87[15:8] - 127;
                end
        end
   always @(posedge pwmclk)
    if (r1 && !r2)
        begin
            if (data_reg87[23:16] < 127)
                begin
                    compare_87_2_on <= data_reg87[23:16];
                    compare_87_2_off <= data_reg87[23:16] + 127;
                end
            else
                begin
                    compare_87_2_on <= data_reg87[23:16];
                    compare_87_2_off <= data_reg87[23:16] - 127;
                end
        end
   always @(posedge pwmclk)
    if (r1 && !r2)
        begin
            if (data_reg87[31:24] < 127)
                begin
                    compare_87_3_on <= data_reg87[31:24];
                    compare_87_3_off <= data_reg87[31:24] + 127;
                end
            else
                begin
                    compare_87_3_on <= data_reg87[31:24];
                    compare_87_3_off <= data_reg87[31:24] - 127;
                end
        end
   always @(posedge pwmclk)
     if (r1 && !r2)
        begin
            if (data_reg88[7:0] < 127)
                begin
                    compare_88_0_on <= data_reg88[7:0];
                    compare_88_0_off <= data_reg88[7:0] + 127;
                end
            else
                begin
                    compare_88_0_on <= data_reg88[7:0];
                    compare_88_0_off <= data_reg88[7:0] - 127;
                end
        end

   always @(posedge pwmclk)
    if (r1 && !r2)
        begin
            if (data_reg88[15:8] < 127)
                begin
                    compare_88_1_on <= data_reg88[15:8];
                    compare_88_1_off <= data_reg88[15:8] + 127;
                end
            else
                begin
                    compare_88_1_on <= data_reg88[15:8];
                    compare_88_1_off <= data_reg88[15:8] - 127;
                end
        end
   always @(posedge pwmclk)
    if (r1 && !r2)
        begin
            if (data_reg88[23:16] < 127)
                begin
                    compare_88_2_on <= data_reg88[23:16];
                    compare_88_2_off <= data_reg88[23:16] + 127;
                end
            else
                begin
                    compare_88_2_on <= data_reg88[23:16];
                    compare_88_2_off <= data_reg88[23:16] - 127;
                end
        end
   always @(posedge pwmclk)
    if (r1 && !r2)
        begin
            if (data_reg88[31:24] < 127)
                begin
                    compare_88_3_on <= data_reg88[31:24];
                    compare_88_3_off <= data_reg88[31:24] + 127;
                end
            else
                begin
                    compare_88_3_on <= data_reg88[31:24];
                    compare_88_3_off <= data_reg88[31:24] - 127;
                end
        end
   always @(posedge pwmclk)
     if (r1 && !r2)
        begin
            if (data_reg89[7:0] < 127)
                begin
                    compare_89_0_on <= data_reg89[7:0];
                    compare_89_0_off <= data_reg89[7:0] + 127;
                end
            else
                begin
                    compare_89_0_on <= data_reg89[7:0];
                    compare_89_0_off <= data_reg89[7:0] - 127;
                end
        end

   always @(posedge pwmclk)
    if (r1 && !r2)
        begin
            if (data_reg89[15:8] < 127)
                begin
                    compare_89_1_on <= data_reg89[15:8];
                    compare_89_1_off <= data_reg89[15:8] + 127;
                end
            else
                begin
                    compare_89_1_on <= data_reg89[15:8];
                    compare_89_1_off <= data_reg89[15:8] - 127;
                end
        end
   always @(posedge pwmclk)
    if (r1 && !r2)
        begin
            if (data_reg89[23:16] < 127)
                begin
                    compare_89_2_on <= data_reg89[23:16];
                    compare_89_2_off <= data_reg89[23:16] + 127;
                end
            else
                begin
                    compare_89_2_on <= data_reg89[23:16];
                    compare_89_2_off <= data_reg89[23:16] - 127;
                end
        end
   always @(posedge pwmclk)
    if (r1 && !r2)
        begin
            if (data_reg89[31:24] < 127)
                begin
                    compare_89_3_on <= data_reg89[31:24];
                    compare_89_3_off <= data_reg89[31:24] + 127;
                end
            else
                begin
                    compare_89_3_on <= data_reg89[31:24];
                    compare_89_3_off <= data_reg89[31:24] - 127;
                end
        end


	endmodule
