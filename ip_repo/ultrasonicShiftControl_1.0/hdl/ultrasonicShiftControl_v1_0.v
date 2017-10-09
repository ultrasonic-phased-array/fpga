
`timescale 1 ns / 1 ps

	module ultrasonicShiftControl_v1_0 #
	(
		// Users to add parameters here

		// User parameters ends
		// Do not modify the parameters beyond this line


		// Parameters of Axi Slave Bus Interface S00_AXI
		parameter integer C_S00_AXI_DATA_WIDTH	= 32,
		parameter integer C_S00_AXI_ADDR_WIDTH	= 4
	)
	(
		// Users to add ports here
		input wire [360:0] input_enable,
		input wire [360:0] input_signal,
		
		input wire clock,
		
		input wire RGB_Red,
		input wire RGB_Green,
		input wire RGB_Blue,
		
		input wire Power_Enable,
		
		output wire latch,
		
		output wire [24:1] OUT_B35_LP,
		output wire [24:1] OUT_B35_LN,
		
		output wire [19:1] OUT_B34_LP,
        output wire [19:1] OUT_B34_LN,
        
        // Special wires:
        // OUT_B34_LP[1] = Shift CLK out
        // OUT_B34_LN[1] = Shift LATCH out
        // OUT_B34_LP[6] = Power enable
        
        // OUT_B34_LN[6] = RGB LED
        // OUT_B34_LP[7] = RGB LED
        // OUT_B34_LN[7] = RGB LED
        
        output wire [16:11] OUT_B13_LP, // with 16 =  13_L21P
        output wire [16:11] OUT_B13_LN, // with 16 =  13_L21N


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
	ultrasonicShiftControl_v1_0_S00_AXI # ( 
		.C_S_AXI_DATA_WIDTH(C_S00_AXI_DATA_WIDTH),
		.C_S_AXI_ADDR_WIDTH(C_S00_AXI_ADDR_WIDTH)
	) ultrasonicShiftControl_v1_0_S00_AXI_inst (
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
		.S_AXI_RREADY(s00_axi_rready)
	);

	// Add user logic here
	
	integer counter = 0;
	
	reg LATCH;
	reg POWER;
	
	reg [24:1] BUF_B35_LP;
    reg [24:1] BUF_B35_LN;
    
    reg [19:1] BUF_B34_LP;
    reg [19:1] BUF_B34_LN;
    
    reg [16:11] BUF_B13_LP; // with 16 =  13_L21P
    reg [16:11] BUF_B13_LN; // with 16 =  13_L21N
    
    always @(posedge clock) begin
    if (counter <= 0)
        begin
            POWER <= Power_Enable;
            counter <= 7;
            LATCH <= 1;
        end
    else
        begin
            counter <= counter - 1;
            LATCH <= 0;
        end
    end
    
    assign latch = LATCH;
    assign OUT_B34_LP[1] = clock;
    assign OUT_B34_LN[1] = LATCH;
    
    assign OUT_B34_LN[6] = RGB_Red;
    assign OUT_B34_LN[7] = RGB_Green;
    assign OUT_B34_LP[7] = 1;//RGB_Blue;
    
    assign OUT_B34_LP[6] = POWER;
        
    always @(negedge clock) begin
        BUF_B13_LP[11] <= B13_11_LP[counter]; 
        BUF_B13_LP[12] <= B13_12_LP[counter]; 
        BUF_B13_LP[13] <= B13_13_LP[counter]; 
        BUF_B13_LP[14] <= B13_14_LP[counter]; 
        BUF_B13_LP[15] <= B13_15_LP[counter]; 
        BUF_B13_LP[16] <= B13_21_LP[counter]; 
   
        BUF_B13_LN[11] <= B13_11_LN[counter]; 
        BUF_B13_LN[12] <= B13_12_LN[counter]; 
        BUF_B13_LN[13] <= B13_13_LN[counter]; 
        BUF_B13_LN[14] <= B13_14_LN[counter]; 
        BUF_B13_LN[15] <= B13_15_LN[counter]; 
        BUF_B13_LN[16] <= B13_21_LN[counter]; 
    
    
        BUF_B35_LP[1] <= B35_1_LP[counter]; 
        BUF_B35_LP[2] <= B35_2_LP[counter]; 
        BUF_B35_LP[3] <= B35_3_LP[counter]; 
        BUF_B35_LP[4] <= B35_4_LP[counter]; 
        BUF_B35_LP[5] <= B35_5_LP[counter]; 
        BUF_B35_LP[6] <= B35_6_LP[counter]; 
        BUF_B35_LP[7] <= B35_7_LP[counter]; 
        BUF_B35_LP[8] <= B35_8_LP[counter]; 
        BUF_B35_LP[9] <= B35_9_LP[counter]; 
        BUF_B35_LP[10] <= B35_10_LP[counter]; 
        BUF_B35_LP[11] <= B35_11_LP[counter]; 
        BUF_B35_LP[12] <= B35_12_LP[counter]; 
        BUF_B35_LP[13] <= B35_13_LP[counter]; 
        BUF_B35_LP[14] <= B35_14_LP[counter]; 
        BUF_B35_LP[15] <= B35_15_LP[counter]; 
        BUF_B35_LP[16] <= B35_16_LP[counter]; 
        BUF_B35_LP[17] <= B35_17_LP[counter]; 
        BUF_B35_LP[18] <= B35_18_LP[counter]; 
        BUF_B35_LP[19] <= B35_19_LP[counter]; 
        BUF_B35_LP[20] <= B35_20_LP[counter]; 
        BUF_B35_LP[21] <= B35_21_LP[counter]; 
        BUF_B35_LP[22] <= B35_22_LP[counter]; 
        BUF_B35_LP[23] <= B35_23_LP[counter]; 
        BUF_B35_LP[24] <= B35_24_LP[counter];
        
        BUF_B35_LN[1] <= B35_1_LN[counter]; 
        BUF_B35_LN[2] <= B35_2_LN[counter]; 
        BUF_B35_LN[3] <= B35_3_LN[counter]; 
        BUF_B35_LN[4] <= B35_4_LN[counter]; 
        BUF_B35_LN[5] <= B35_5_LN[counter]; 
        BUF_B35_LN[6] <= B35_6_LN[counter]; 
        BUF_B35_LN[7] <= B35_7_LN[counter]; 
        BUF_B35_LN[8] <= B35_8_LN[counter]; 
        BUF_B35_LN[9] <= B35_9_LN[counter]; 
        BUF_B35_LN[10] <= B35_10_LN[counter]; 
        BUF_B35_LN[11] <= B35_11_LN[counter]; 
        BUF_B35_LN[12] <= B35_12_LN[counter]; 
        BUF_B35_LN[13] <= B35_13_LN[counter]; 
        BUF_B35_LN[14] <= B35_14_LN[counter]; 
        BUF_B35_LN[15] <= B35_15_LN[counter]; 
        BUF_B35_LN[16] <= B35_16_LN[counter]; 
        BUF_B35_LN[17] <= B35_17_LN[counter]; 
        BUF_B35_LN[18] <= B35_18_LN[counter]; 
        BUF_B35_LN[19] <= B35_19_LN[counter]; 
        BUF_B35_LN[20] <= B35_20_LN[counter]; 
        BUF_B35_LN[21] <= B35_21_LN[counter]; 
        BUF_B35_LN[22] <= B35_22_LN[counter]; 
        BUF_B35_LN[23] <= B35_23_LN[counter]; 
        BUF_B35_LN[24] <= B35_24_LN[counter]; 
        
            //BUF_B34_LP[1] <= B34_1_LP[counter]; 
        BUF_B34_LP[2] <= B34_2_LP[counter]; 
        BUF_B34_LP[3] <= B34_3_LP[counter]; 
        BUF_B34_LP[4] <= B34_4_LP[counter]; 
        BUF_B34_LP[5] <= B34_5_LP[counter]; 
            //BUF_B34_LP[6] <= B34_6_LP[counter]; 
            //BUF_B34_LP[7] <= B34_7_LP[counter]; 
        BUF_B34_LP[8] <= B34_8_LP[counter]; 
        BUF_B34_LP[9] <= B34_9_LP[counter]; 
        BUF_B34_LP[10] <= B34_10_LP[counter]; 
            //BUF_B34_LP[11] <= B34_11_LP[counter]; 
        BUF_B34_LP[12] <= B34_12_LP[counter]; 
        BUF_B34_LP[13] <= B34_13_LP[counter]; 
        BUF_B34_LP[14] <= B34_14_LP[counter]; 
        BUF_B34_LP[15] <= B34_15_LP[counter]; 
        BUF_B34_LP[16] <= B34_16_LP[counter]; 
        BUF_B34_LP[17] <= B34_17_LP[counter]; 
        BUF_B34_LP[18] <= B34_18_LP[counter]; 
        BUF_B34_LP[19] <= B34_19_LP[counter]; 
        
        
            //BUF_B34_LN[1] <= B34_1_LN[counter]; 
        BUF_B34_LN[2] <= B34_2_LN[counter]; 
        BUF_B34_LN[3] <= B34_3_LN[counter]; 
        BUF_B34_LN[4] <= B34_4_LN[counter]; 
        BUF_B34_LN[5] <= B34_5_LN[counter]; 
            //BUF_B34_LN[6] <= B34_6_LN[counter]; 
            //BUF_B34_LN[7] <= B34_7_LN[counter]; 
        BUF_B34_LN[8] <= B34_8_LN[counter]; 
        BUF_B34_LN[9] <= B34_9_LN[counter]; 
        BUF_B34_LN[10] <= B34_10_LN[counter]; 
            //BUF_B34_LN[11] <= B34_11_LN[counter]; 
        BUF_B34_LN[12] <= B34_12_LN[counter]; 
        BUF_B34_LN[13] <= B34_13_LN[counter]; 
        BUF_B34_LN[14] <= B34_14_LN[counter]; 
        BUF_B34_LN[15] <= B34_15_LN[counter]; 
        BUF_B34_LN[16] <= B34_16_LN[counter]; 
        BUF_B34_LN[17] <= B34_17_LN[counter]; 
        BUF_B34_LN[18] <= B34_18_LN[counter]; 
        BUF_B34_LN[19] <= B34_19_LN[counter]; 
    end  
    
    assign OUT_B35_LN = BUF_B35_LN;
    assign OUT_B35_LP = BUF_B35_LP;
    
    assign OUT_B34_LN = BUF_B34_LN;
    assign OUT_B34_LP = BUF_B34_LP; 
    
    assign OUT_B13_LN = BUF_B13_LN;
    assign OUT_B13_LP = BUF_B13_LP; 
    
    
    // Bank 13 output buffer
    wire [7:0] B13_11_LP;
    wire [7:0] B13_11_LN;
    
    wire [7:0] B13_12_LP;
    wire [7:0] B13_12_LN;
    
    wire [7:0] B13_13_LP;
    wire [7:0] B13_13_LN;    
    
    wire [7:0] B13_14_LP;
    wire [7:0] B13_14_LN;
    
    wire [7:0] B13_15_LP;
    wire [7:0] B13_15_LN;
    
    wire [7:0] B13_21_LP;
    wire [7:0] B13_21_LN;
       
        
    	
    // Bank 35 output buffer
    wire [7:0] B35_1_LP;
    wire [7:0] B35_1_LN;
    
    wire [7:0] B35_2_LP;
    wire [7:0] B35_2_LN;
    
    wire [7:0] B35_3_LP;
    wire [7:0] B35_3_LN;    
    
    wire [7:0] B35_4_LP;
    wire [7:0] B35_4_LN;
    
    wire [7:0] B35_5_LP;
    wire [7:0] B35_5_LN;
    
    wire [7:0] B35_6_LP;
    wire [7:0] B35_6_LN;
    
    wire [7:0] B35_7_LP;
    wire [7:0] B35_7_LN;
    
    wire [7:0] B35_8_LP;
    wire [7:0] B35_8_LN;
    
    wire [7:0] B35_9_LP;
    wire [7:0] B35_9_LN;
    
    wire [7:0] B35_10_LP;
    wire [7:0] B35_10_LN;
    
    wire [7:0] B35_11_LP;
    wire [7:0] B35_11_LN;    
        
    wire [7:0] B35_12_LP;
    wire [7:0] B35_12_LN;
    
    wire [7:0] B35_13_LP;
    wire [7:0] B35_13_LN;
    
    wire [7:0] B35_14_LP;
    wire [7:0] B35_14_LN;
    
    wire [7:0] B35_15_LP;
    wire [7:0] B35_15_LN;
    
    wire [7:0] B35_16_LP;
    wire [7:0] B35_16_LN;    
    
    wire [7:0] B35_17_LP;
    wire [7:0] B35_17_LN;
    
    wire [7:0] B35_18_LP;
    wire [7:0] B35_18_LN;
    
    wire [7:0] B35_19_LP;
    wire [7:0] B35_19_LN;    
        
    wire [7:0] B35_20_LP;
    wire [7:0] B35_20_LN;
    
    wire [7:0] B35_21_LP;
    wire [7:0] B35_21_LN;
    
    wire [7:0] B35_22_LP;
    wire [7:0] B35_22_LN;
    
    wire [7:0] B35_23_LP;
    wire [7:0] B35_23_LN;
    
    wire [7:0] B35_24_LP;
    wire [7:0] B35_24_LN;
    
    // Bank 34 output buffer
    wire [7:0] B34_1_LP;
    wire [7:0] B34_1_LN;
    
    wire [7:0] B34_2_LP;
    wire [7:0] B34_2_LN;
    
    wire [7:0] B34_3_LP;
    wire [7:0] B34_3_LN;    
        
    wire [7:0] B34_4_LP;
    wire [7:0] B34_4_LN;
    
    wire [7:0] B34_5_LP;
    wire [7:0] B34_5_LN;
    
    wire [7:0] B34_6_LP;
    wire [7:0] B34_6_LN;
    
    wire [7:0] B34_7_LP;
    wire [7:0] B34_7_LN;
    
    wire [7:0] B34_8_LP;
    wire [7:0] B34_8_LN;
    
    wire [7:0] B34_9_LP;
    wire [7:0] B34_9_LN;
    
    wire [7:0] B34_10_LP;
    wire [7:0] B34_10_LN;
    
    wire [7:0] B34_11_LP;
    wire [7:0] B34_11_LN;    
        
    wire [7:0] B34_12_LP;
    wire [7:0] B34_12_LN;
    
    wire [7:0] B34_13_LP;
    wire [7:0] B34_13_LN;
    
    wire [7:0] B34_14_LP;
    wire [7:0] B34_14_LN;
    
    wire [7:0] B34_15_LP;
    wire [7:0] B34_15_LN;
    
    wire [7:0] B34_16_LP;
    wire [7:0] B34_16_LN;    
    
    wire [7:0] B34_17_LP;
    wire [7:0] B34_17_LN;
    
    wire [7:0] B34_18_LP;
    wire [7:0] B34_18_LN;
    
    wire [7:0] B34_19_LP;
    wire [7:0] B34_19_LN;    
    
     // Bank 13 output buffer
    wire [7:0] B13_11_LP;
    wire [7:0] B13_11_LN;    
        
    wire [7:0] B13_12_LP;
    wire [7:0] B13_12_LN;
    
    wire [7:0] B13_13_LP;
    wire [7:0] B13_13_LN;
    
    wire [7:0] B13_14_LP;
    wire [7:0] B13_14_LN;
    
    wire [7:0] B13_15_LP;
    wire [7:0] B13_15_LN;
    
    wire [7:0] B13_21_LP;
    wire [7:0] B13_21_LN;  
    
    //assign B35_1_LN[1] = input_signal[0];
    assign B34_5_LN[2] = !input_signal[1];
    assign B35_19_LN[6] = !input_signal[2];
    assign B35_17_LN[6] = !input_signal[3];
    assign B35_15_LN[5] = !input_signal[4];
    assign B35_13_LN[3] = !input_signal[5];
    assign B35_11_LN[0] = !input_signal[6];
    assign B35_11_LN[4] = !input_signal[7];
    assign B35_11_LN[7] = !input_signal[8];
    assign B35_2_LN[6] = !input_signal[9];
    assign B35_9_LN[2] = input_signal[10];
    assign B35_9_LN[4] = input_signal[11];
    assign B35_9_LN[7] = input_signal[12];
    assign B35_7_LN[3] = input_signal[13];
    assign B35_5_LN[0] = input_signal[14];
    assign B35_5_LN[6] = input_signal[15];
    assign B35_3_LN[5] = input_signal[16];
    assign B35_1_LN[5] = input_signal[17];
    //assign B35_1_LN[1] = input_signal[18];
    
    assign B35_23_LN[7] = input_signal[19];
    assign B35_21_LN[7] = input_signal[20];
    assign B34_5_LN[1] = !input_signal[21];
    assign B35_19_LN[7] = !input_signal[22];
    assign B35_17_LN[7] = !input_signal[23];
    assign B35_15_LN[6] = !input_signal[24];
    assign B35_13_LN[4] = !input_signal[25];
    assign B35_11_LN[1] = !input_signal[26];
    assign B35_11_LN[5] = !input_signal[27];
    assign B35_2_LN[7] = !input_signal[28];
    assign B35_9_LN[3] = input_signal[29];
    assign B35_9_LN[6] = input_signal[30];
    assign B35_7_LN[2] = input_signal[31];
    assign B35_7_LN[7] = input_signal[32];
    assign B35_5_LN[5] = input_signal[33];
    assign B35_3_LN[4] = input_signal[34];
    assign B35_1_LN[4] = input_signal[35];
    assign B35_2_LN[5] = input_signal[36];
    assign B35_9_LN[0] = !input_signal[37];
    
    assign B35_24_LN[7] = input_signal[38];
    assign B35_23_LN[6] = input_signal[39];
    assign B35_21_LN[6] = input_signal[40];
    assign B34_5_LN[0] = !input_signal[41];
    assign B35_17_LN[0] = !input_signal[42];
    assign B35_15_LN[0] = !input_signal[43];
    assign B35_15_LN[7] = !input_signal[44];
    assign B35_13_LN[5] = !input_signal[45];
    assign B35_11_LN[2] = !input_signal[46];
    assign B35_11_LN[6] = !input_signal[47];
    assign B35_9_LN[5] = input_signal[48];
    assign B35_7_LN[1] = input_signal[49];
    assign B35_7_LN[6] = input_signal[50];
    assign B35_5_LN[4] = input_signal[51];
    assign B35_3_LN[3] = input_signal[52];
    assign B35_1_LN[3] = input_signal[53];
    assign B35_2_LN[4] = input_signal[54];
    assign B35_4_LN[0] = !input_signal[55];
    assign B35_6_LN[0] = !input_signal[56];
    
    assign B35_24_LN[0] = input_signal[57];
    assign B35_24_LN[6] = input_signal[58];
    assign B35_23_LN[5] = input_signal[59];
    assign B35_21_LN[5] = input_signal[60];
    assign B35_19_LN[0] = !input_signal[61];
    assign B35_17_LN[1] = !input_signal[62];
    assign B35_15_LN[1] = !input_signal[63];
    assign B35_13_LN[0] = !input_signal[64];
    assign B35_13_LN[6] = !input_signal[65];
    assign B35_11_LN[3] = !input_signal[66];
    assign B35_7_LN[0] = input_signal[67];
    assign B35_7_LN[5] = input_signal[68];
    assign B35_5_LN[3] = input_signal[69];
    assign B35_3_LN[2] = input_signal[70];
    assign B35_1_LN[2] = input_signal[71];
    assign B35_2_LN[3] = input_signal[72];
    assign B35_4_LN[1] = !input_signal[73];
    assign B35_6_LN[1] = !input_signal[74];
    assign B35_8_LN[0] = !input_signal[75];
    
    assign B35_22_LN[2] = input_signal[76];
    assign B35_22_LN[7] = input_signal[77];
    assign B35_24_LN[5] = input_signal[78];
    assign B35_23_LN[4] = input_signal[79];
    assign B35_21_LN[4] = input_signal[80];
    assign B35_19_LN[1] = !input_signal[81];
    assign B35_17_LN[2] = !input_signal[82];
    assign B35_15_LN[2] = !input_signal[83];
    assign B35_13_LN[1] = !input_signal[84];
    assign B35_13_LN[7] = !input_signal[85];
    assign B35_7_LN[4] = input_signal[86];
    assign B35_5_LN[2] = input_signal[87];
    assign B35_3_LN[1] = input_signal[88];
    assign B35_1_LN[1] = input_signal[89];
    assign B35_2_LN[2] = input_signal[90];
    assign B35_4_LN[2] = !input_signal[91];
    assign B35_6_LN[2] = !input_signal[92];
    assign B35_8_LN[1] = !input_signal[93];
    assign B35_8_LN[7] = !input_signal[94];
    
    assign B35_20_LN[5] = input_signal[95];
    assign B35_22_LN[1] = input_signal[96];
    assign B35_22_LN[6] = input_signal[97];
    assign B35_24_LN[4] = input_signal[98];
    assign B35_23_LN[3] = input_signal[99];
    assign B35_21_LN[3] = input_signal[100];
    assign B35_19_LN[2] = !input_signal[101];
    assign B35_17_LN[3] = !input_signal[102];
    assign B35_15_LN[3] = !input_signal[103];
    assign B35_13_LN[2] = !input_signal[104];
    assign B35_5_LN[1] = input_signal[105];
    assign B35_3_LN[0] = input_signal[106];
    assign B35_1_LN[0] = input_signal[107];
    assign B35_2_LN[1] = input_signal[108];
    assign B35_4_LN[3] = !input_signal[109];
    assign B35_6_LN[3] = !input_signal[110];
    assign B35_8_LN[2] = !input_signal[111];
    assign B35_10_LN[0] = !input_signal[112];
    assign B35_10_LN[5] = !input_signal[113];
    
    assign B35_20_LN[1] = input_signal[114];
    assign B35_20_LN[4] = input_signal[115];
    assign B35_22_LN[0] = input_signal[116];
    assign B35_22_LN[5] = input_signal[117];
    assign B35_24_LN[3] = input_signal[118];
    assign B35_23_LN[2] = input_signal[119];
    assign B35_21_LN[2] = input_signal[120];
    assign B35_19_LN[3] = !input_signal[121];
    assign B35_17_LN[4] = !input_signal[122];
    assign B35_15_LN[4] = !input_signal[123];
    assign B35_5_LN[7] = input_signal[124];
    assign B35_3_LN[7] = input_signal[125];
    assign B35_2_LN[0] = input_signal[126];
    assign B35_4_LN[4] = !input_signal[127];
    assign B35_6_LN[4] = !input_signal[128];
    assign B35_8_LN[3] = !input_signal[129];
    assign B35_10_LN[1] = !input_signal[130];
    assign B35_10_LN[6] = !input_signal[131];
    assign B35_12_LN[2] = !input_signal[132];
    
    assign B34_5_LN[6] = input_signal[133];    
    assign B35_20_LN[0] = input_signal[134];
    assign B35_20_LN[3] = input_signal[135];
    assign B35_20_LN[7] = input_signal[136];
    assign B35_22_LN[4] = input_signal[137];
    assign B35_24_LN[2] = input_signal[138];
    assign B35_23_LN[1] = input_signal[139];
    assign B35_21_LN[1] = input_signal[140];
    assign B35_19_LN[4] = !input_signal[141];
    assign B35_17_LN[5] = !input_signal[142];
    assign B35_3_LN[6] = input_signal[143];
    assign B35_1_LN[7] = input_signal[144];
    assign B35_4_LN[5] = !input_signal[145];
    assign B35_6_LN[5] = !input_signal[146];
    assign B35_8_LN[4] = !input_signal[147];
    assign B35_10_LN[2] = !input_signal[148];
    assign B35_10_LN[7] = !input_signal[149];
    assign B35_12_LN[3] = !input_signal[150];
    assign B35_12_LN[6] = !input_signal[151];
    
    assign B34_5_LN[4] = input_signal[152];    
    assign B34_5_LN[5] = input_signal[153];
    assign B34_5_LN[7] = input_signal[154];
    assign B35_20_LN[2] = input_signal[155];
    assign B35_20_LN[6] = input_signal[156];
    assign B35_22_LN[3] = input_signal[157];
    assign B35_24_LN[1] = input_signal[158];
    assign B35_23_LN[0] = input_signal[159];
    assign B35_21_LN[0] = input_signal[160];
    assign B35_19_LN[5] = !input_signal[161];
    assign B35_1_LN[6] = input_signal[162];
    assign B35_4_LN[6] = !input_signal[163];
    assign B35_6_LN[6] = !input_signal[164];
    assign B35_8_LN[5] = !input_signal[165];
    assign B35_10_LN[3] = !input_signal[166];
    assign B35_12_LN[0] = !input_signal[167];
    assign B35_12_LN[4] = !input_signal[168];
    assign B35_12_LN[7] = !input_signal[169];
    assign B13_12_LN[6] = !input_signal[170];
    
    assign B35_18_LN[7] = !input_signal[171];    
    assign B35_18_LN[6] = !input_signal[172];
    assign B35_18_LN[4] = !input_signal[173];
    assign B35_18_LN[1] = !input_signal[174];
    assign B35_16_LN[5] = !input_signal[175];
    assign B35_16_LN[0] = !input_signal[176];
    assign B35_14_LN[2] = !input_signal[177];
    assign B34_12_LN[3] = !input_signal[178];
    assign B34_9_LN[3] = !input_signal[179];
    assign B34_5_LN[3] = input_signal[180];
    assign B35_4_LN[7] = !input_signal[181];
    assign B35_6_LN[7] = !input_signal[182];
    assign B35_8_LN[6] = !input_signal[183];
    assign B35_10_LN[4] = !input_signal[184];
    assign B35_12_LN[1] = !input_signal[185];
    assign B35_12_LN[5] = !input_signal[186];
    assign B13_12_LN[7] = !input_signal[187];
    assign B13_12_LN[5] = !input_signal[188];
    assign B13_12_LN[4] = !input_signal[189];
    
    assign B35_18_LN[5] = !input_signal[190];    
    assign B35_18_LN[3] = !input_signal[191];
    assign B35_18_LN[0] = !input_signal[192];
    assign B35_16_LN[4] = !input_signal[193];
    assign B35_14_LN[7] = !input_signal[194];
    assign B35_14_LN[1] = !input_signal[195];
    assign B34_12_LN[2] = !input_signal[196];
    assign B34_9_LN[2] = !input_signal[197];
    assign B34_16_LN[2] = input_signal[198];
    assign B13_14_LN[1] = !input_signal[199];
    assign B13_13_LN[4] = input_signal[200];
    assign B13_15_LN[4] = input_signal[201];
    assign B34_2_LN[5] = input_signal[202];
    assign B34_4_LN[7] = input_signal[203];
    assign B34_4_LN[2] = input_signal[204];
    assign B34_8_LN[6] = input_signal[205];
    assign B34_8_LN[3] = input_signal[206];
    assign B34_8_LN[1] = input_signal[207];
    assign B34_8_LN[0] = input_signal[208];
    
    assign B35_18_LN[2] = !input_signal[209];    
    assign B35_16_LN[7] = !input_signal[210];
    assign B35_16_LN[3] = !input_signal[211];
    assign B35_14_LN[6] = !input_signal[212];
    assign B35_14_LN[0] = !input_signal[213];
    assign B34_12_LN[1] = !input_signal[214];
    assign B34_9_LN[1] = !input_signal[215];
    assign B34_16_LN[3] = input_signal[216];
    assign B34_18_LN[2] = input_signal[217];
    assign B13_21_LN[1] = !input_signal[218];
    assign B13_14_LN[0] = !input_signal[219];
    assign B13_13_LN[5] = input_signal[220];
    assign B13_15_LN[5] = input_signal[221];
    assign B34_2_LN[6] = input_signal[222];
    assign B34_2_LN[0] = input_signal[223];
    assign B34_4_LN[3] = input_signal[224];
    assign B34_8_LN[7] = input_signal[225];
    assign B34_8_LN[4] = input_signal[226];
    assign B34_8_LN[2] = input_signal[227];
    
    assign B35_16_LN[6] = !input_signal[228];    
    assign B35_16_LN[2] = !input_signal[229];
    assign B35_14_LN[5] = !input_signal[230];
    assign B34_12_LN[7] = !input_signal[231];
    assign B34_12_LN[0] = !input_signal[232];
    assign B34_9_LN[0] = !input_signal[233];
    assign B34_16_LN[4] = input_signal[234];
    assign B34_18_LN[3] = input_signal[235];
    assign B34_19_LN[3] = input_signal[236];
    assign B34_3_LN[0] = !input_signal[237];
    assign B13_21_LN[0] = !input_signal[238];
    assign B13_11_LN[7] = !input_signal[239];
    assign B13_13_LN[6] = input_signal[240];
    assign B13_15_LN[6] = input_signal[241];
    assign B34_2_LN[7] = input_signal[242];
    assign B34_2_LN[1] = input_signal[243];
    assign B34_4_LN[4] = input_signal[244];
    assign B34_4_LN[0] = input_signal[245];
    assign B34_8_LN[5] = input_signal[246];
    
    assign B35_16_LN[1] = !input_signal[247];    
    assign B35_14_LN[4] = !input_signal[248];
    assign B34_12_LN[6] = !input_signal[249];
    assign B34_9_LN[7] = !input_signal[250];
    assign B34_14_LN[7] = !input_signal[251];
    assign B34_16_LN[5] = input_signal[252];
    assign B34_18_LN[4] = input_signal[253];
    assign B34_19_LN[4] = input_signal[254];
    assign B34_17_LN[5] = input_signal[255];
    assign B34_3_LN[6] = !input_signal[256];
    assign B13_21_LN[7] = !input_signal[257];
    assign B13_14_LN[7] = !input_signal[258];
    assign B13_11_LN[6] = !input_signal[259];
    assign B13_13_LN[7] = input_signal[260];
    assign B13_15_LN[7] = input_signal[261];
    assign B13_15_LN[0] = input_signal[262];
    assign B34_2_LN[2] = input_signal[263];
    assign B34_4_LN[5] = input_signal[264];
    assign B34_4_LN[1] = input_signal[265];
    
    assign B35_14_LN[3] = !input_signal[266];    
    assign B34_12_LN[5] = !input_signal[267];
    assign B34_9_LN[6] = !input_signal[268];
    assign B34_14_LN[6] = !input_signal[269];
    assign B34_16_LN[6] = input_signal[270];
    assign B34_18_LN[5] = input_signal[271];
    assign B34_19_LN[5] = input_signal[272];
    assign B34_17_LN[6] = input_signal[273];
    assign B34_17_LN[0] = input_signal[274];
    assign B34_10_LN[3] = !input_signal[275];
    assign B34_3_LN[5] = !input_signal[276];
    assign B13_21_LN[6] = !input_signal[277];
    assign B13_14_LN[6] = !input_signal[278];
    assign B13_11_LN[5] = !input_signal[279];
    assign B13_12_LN[0] = input_signal[280];
    assign B13_13_LN[0] = input_signal[281];
    assign B13_15_LN[1] = input_signal[282];
    assign B34_2_LN[3] = input_signal[283];
    assign B34_4_LN[6] = input_signal[284];
    
    assign B34_12_LN[4] = !input_signal[285];    
    assign B34_9_LN[5] = !input_signal[286];
    assign B34_14_LN[5] = !input_signal[287];
    assign B34_16_LN[7] = input_signal[288];
    assign B34_18_LN[6] = input_signal[289];
    assign B34_19_LN[6] = input_signal[290];
    assign B34_17_LN[7] = input_signal[291];
    assign B34_17_LN[1] = input_signal[292];
    assign B34_15_LN[4] = input_signal[293];
    assign B34_10_LN[7] = !input_signal[294];
    assign B34_10_LN[2] = !input_signal[295];
    assign B34_3_LN[4] = !input_signal[296];
    assign B13_21_LN[5] = !input_signal[297];
    assign B13_14_LN[5] = !input_signal[298];
    assign B13_11_LN[4] = !input_signal[299];
    assign B13_12_LN[1] = input_signal[300];
    assign B13_13_LN[1] = input_signal[301];
    assign B13_15_LN[2] = input_signal[302];
    assign B34_2_LN[4] = input_signal[303];
    
    assign B34_9_LN[4] = !input_signal[304];    
    assign B34_14_LN[4] = !input_signal[305];
    assign B34_13_LN[0] = input_signal[306];
    assign B34_18_LN[7] = input_signal[307];
    assign B34_19_LN[7] = input_signal[308];
    assign B34_19_LN[0] = input_signal[309];
    assign B34_17_LN[2] = input_signal[310];
    assign B34_15_LN[5] = input_signal[311];
    assign B34_15_LN[1] = input_signal[312];
    assign B34_13_LN[5] = !input_signal[313];
    assign B34_10_LN[6] = !input_signal[314];
    assign B34_10_LN[1] = !input_signal[315];
    assign B34_3_LN[3] = !input_signal[316];
    assign B13_21_LN[4] = !input_signal[317];
    assign B13_14_LN[4] = !input_signal[318];
    assign B13_11_LN[3] = !input_signal[319];
    assign B13_12_LN[2] = input_signal[320];
    assign B13_13_LN[2] = input_signal[321];
    assign B13_15_LN[3] = input_signal[322];
    
    assign B34_14_LN[3] = !input_signal[323];    
    assign B34_13_LN[1] = input_signal[324];
    assign B34_16_LN[0] = input_signal[325];
    assign B34_18_LN[0] = input_signal[326];
    assign B34_19_LN[1] = input_signal[327];
    assign B34_17_LN[3] = input_signal[328];
    assign B34_15_LN[6] = input_signal[329];
    assign B34_15_LN[2] = input_signal[330];
    assign B34_14_LN[0] = input_signal[331];
    assign B34_13_LN[3] = !input_signal[332];
    assign B34_13_LN[6] = !input_signal[333];
    assign B34_10_LN[5] = !input_signal[334];
    assign B34_10_LN[0] = !input_signal[335];
    assign B34_3_LN[2] = !input_signal[336];
    assign B13_21_LN[3] = !input_signal[337];
    assign B13_14_LN[3] = !input_signal[338];
    assign B13_11_LN[2] = !input_signal[339];
    assign B13_12_LN[3] = input_signal[340];
    assign B13_13_LN[3] = input_signal[341];
    
    //assign B35_1_LN[1] = input_signal[342];    
    assign B34_16_LN[1] = input_signal[343];
    assign B34_18_LN[1] = input_signal[344];
    assign B34_19_LN[2] = input_signal[345];
    assign B34_17_LN[4] = input_signal[346];
    assign B34_15_LN[7] = input_signal[347];
    assign B34_15_LN[3] = input_signal[348];
    assign B34_15_LN[0] = input_signal[349];
    assign B34_14_LN[1] = input_signal[350];
    assign B34_13_LN[2] = !input_signal[351];
    assign B34_13_LN[4] = !input_signal[352];
    assign B34_13_LN[7] = !input_signal[353];
    assign B34_10_LN[4] = !input_signal[354];
    assign B34_3_LN[7] = !input_signal[355];
    assign B34_3_LN[1] = !input_signal[356];
    assign B13_21_LN[2] = !input_signal[357];
    assign B13_14_LN[2] = !input_signal[358];
    assign B13_11_LN[1] = !input_signal[359];
    //assign B35_1_LN[1] = input_signal[360];
    
    
    //assign B35_1_LP[1] = input_enable[0];
    assign B34_5_LP[2] = input_enable[1];
    assign B35_19_LP[6] = input_enable[2];
    assign B35_17_LP[6] = input_enable[3];
    assign B35_15_LP[5] = input_enable[4];
    assign B35_13_LP[3] = input_enable[5];
    assign B35_11_LP[0] = input_enable[6];
    assign B35_11_LP[4] = input_enable[7];
    assign B35_11_LP[7] = input_enable[8];
    assign B35_2_LP[6] = input_enable[9];
    assign B35_9_LP[2] = input_enable[10];
    assign B35_9_LP[4] = input_enable[11];
    assign B35_9_LP[7] = input_enable[12];
    assign B35_7_LP[3] = input_enable[13];
    assign B35_5_LP[0] = input_enable[14];
    assign B35_5_LP[6] = input_enable[15];
    assign B35_3_LP[5] = input_enable[16];
    assign B35_1_LP[5] = input_enable[17];
    //assign B35_1_LP[1] = input_enable[18];
    
    assign B35_23_LP[7] = input_enable[19];
    assign B35_21_LP[7] = input_enable[20];
    assign B34_5_LP[1] = input_enable[21];
    assign B35_19_LP[7] = input_enable[22];
    assign B35_17_LP[7] = input_enable[23];
    assign B35_15_LP[6] = input_enable[24];
    assign B35_13_LP[4] = input_enable[25];
    assign B35_11_LP[1] = input_enable[26];
    assign B35_11_LP[5] = input_enable[27];
    assign B35_2_LP[7] = input_enable[28];
    assign B35_9_LP[3] = input_enable[29];
    assign B35_9_LP[6] = input_enable[30];
    assign B35_7_LP[2] = input_enable[31];
    assign B35_7_LP[7] = input_enable[32];
    assign B35_5_LP[5] = input_enable[33];
    assign B35_3_LP[4] = input_enable[34];
    assign B35_1_LP[4] = input_enable[35];
    assign B35_2_LP[5] = input_enable[36];
    assign B35_9_LP[0] = input_enable[37];
    
    assign B35_24_LP[7] = input_enable[38];
    assign B35_23_LP[6] = input_enable[39];
    assign B35_21_LP[6] = input_enable[40];
    assign B34_5_LP[0] = input_enable[41];
    assign B35_17_LP[0] = input_enable[42];
    assign B35_15_LP[0] = input_enable[43];
    assign B35_15_LP[7] = input_enable[44];
    assign B35_13_LP[5] = input_enable[45];
    assign B35_11_LP[2] = input_enable[46];
    assign B35_11_LP[6] = input_enable[47];
    assign B35_9_LP[5] = input_enable[48];
    assign B35_7_LP[1] = input_enable[49];
    assign B35_7_LP[6] = input_enable[50];
    assign B35_5_LP[4] = input_enable[51];
    assign B35_3_LP[3] = input_enable[52];
    assign B35_1_LP[3] = input_enable[53];
    assign B35_2_LP[4] = input_enable[54];
    assign B35_4_LP[0] = input_enable[55];
    assign B35_6_LP[0] = input_enable[56];
    
    assign B35_24_LP[0] = input_enable[57];
    assign B35_24_LP[6] = input_enable[58];
    assign B35_23_LP[5] = input_enable[59];
    assign B35_21_LP[5] = input_enable[60];
    assign B35_19_LP[0] = input_enable[61];
    assign B35_17_LP[1] = input_enable[62];
    assign B35_15_LP[1] = input_enable[63];
    assign B35_13_LP[0] = input_enable[64];
    assign B35_13_LP[6] = input_enable[65];
    assign B35_11_LP[3] = input_enable[66];
    assign B35_7_LP[0] = input_enable[67];
    assign B35_7_LP[5] = input_enable[68];
    assign B35_5_LP[3] = input_enable[69];
    assign B35_3_LP[2] = input_enable[70];
    assign B35_1_LP[2] = input_enable[71];
    assign B35_2_LP[3] = input_enable[72];
    assign B35_4_LP[1] = input_enable[73];
    assign B35_6_LP[1] = input_enable[74];
    assign B35_8_LP[0] = input_enable[75];
    
    assign B35_22_LP[2] = input_enable[76];
    assign B35_22_LP[7] = input_enable[77];
    assign B35_24_LP[5] = input_enable[78];
    assign B35_23_LP[4] = input_enable[79];
    assign B35_21_LP[4] = input_enable[80];
    assign B35_19_LP[1] = input_enable[81];
    assign B35_17_LP[2] = input_enable[82];
    assign B35_15_LP[2] = input_enable[83];
    assign B35_13_LP[1] = input_enable[84];
    assign B35_13_LP[7] = input_enable[85];
    assign B35_7_LP[4] = input_enable[86];
    assign B35_5_LP[2] = input_enable[87];
    assign B35_3_LP[1] = input_enable[88];
    assign B35_1_LP[1] = input_enable[89];
    assign B35_2_LP[2] = input_enable[90];
    assign B35_4_LP[2] = input_enable[91];
    assign B35_6_LP[2] = input_enable[92];
    assign B35_8_LP[1] = input_enable[93];
    assign B35_8_LP[7] = input_enable[94];
    
    assign B35_20_LP[5] = input_enable[95];
    assign B35_22_LP[1] = input_enable[96];
    assign B35_22_LP[6] = input_enable[97];
    assign B35_24_LP[4] = input_enable[98];
    assign B35_23_LP[3] = input_enable[99];
    assign B35_21_LP[3] = input_enable[100];
    assign B35_19_LP[2] = input_enable[101];
    assign B35_17_LP[3] = input_enable[102];
    assign B35_15_LP[3] = input_enable[103];
    assign B35_13_LP[2] = input_enable[104];
    assign B35_5_LP[1] = input_enable[105];
    assign B35_3_LP[0] = input_enable[106];
    assign B35_1_LP[0] = input_enable[107];
    assign B35_2_LP[1] = input_enable[108];
    assign B35_4_LP[3] = input_enable[109];
    assign B35_6_LP[3] = input_enable[110];
    assign B35_8_LP[2] = input_enable[111];
    assign B35_10_LP[0] = input_enable[112];
    assign B35_10_LP[5] = input_enable[113];
    
    assign B35_20_LP[1] = input_enable[114];
    assign B35_20_LP[4] = input_enable[115];
    assign B35_22_LP[0] = input_enable[116];
    assign B35_22_LP[5] = input_enable[117];
    assign B35_24_LP[3] = input_enable[118];
    assign B35_23_LP[2] = input_enable[119];
    assign B35_21_LP[2] = input_enable[120];
    assign B35_19_LP[3] = input_enable[121];
    assign B35_17_LP[4] = input_enable[122];
    assign B35_15_LP[4] = input_enable[123];
    assign B35_5_LP[7] = input_enable[124];
    assign B35_3_LP[7] = input_enable[125];
    assign B35_2_LP[0] = input_enable[126];
    assign B35_4_LP[4] = input_enable[127];
    assign B35_6_LP[4] = input_enable[128];
    assign B35_8_LP[3] = input_enable[129];
    assign B35_10_LP[1] = input_enable[130];
    assign B35_10_LP[6] = input_enable[131];
    assign B35_12_LP[2] = input_enable[132];
    
    assign B34_5_LP[6] = input_enable[133];    
    assign B35_20_LP[0] = input_enable[134];
    assign B35_20_LP[3] = input_enable[135];
    assign B35_20_LP[7] = input_enable[136];
    assign B35_22_LP[4] = input_enable[137];
    assign B35_24_LP[2] = input_enable[138];
    assign B35_23_LP[1] = input_enable[139];
    assign B35_21_LP[1] = input_enable[140];
    assign B35_19_LP[4] = input_enable[141];
    assign B35_17_LP[5] = input_enable[142];
    assign B35_3_LP[6] = input_enable[143];
    assign B35_1_LP[7] = input_enable[144];
    assign B35_4_LP[5] = input_enable[145];
    assign B35_6_LP[5] = input_enable[146];
    assign B35_8_LP[4] = input_enable[147];
    assign B35_10_LP[2] = input_enable[148];
    assign B35_10_LP[7] = input_enable[149];
    assign B35_12_LP[3] = input_enable[150];
    assign B35_12_LP[6] = input_enable[151];
    
    assign B34_5_LP[4] = input_enable[152];    
    assign B34_5_LP[5] = input_enable[153];
    assign B34_5_LP[7] = input_enable[154];
    assign B35_20_LP[2] = input_enable[155];
    assign B35_20_LP[6] = input_enable[156];
    assign B35_22_LP[3] = input_enable[157];
    assign B35_24_LP[1] = input_enable[158];
    assign B35_23_LP[0] = input_enable[159];
    assign B35_21_LP[0] = input_enable[160];
    assign B35_19_LP[5] = input_enable[161];
    assign B35_1_LP[6] = input_enable[162];
    assign B35_4_LP[6] = input_enable[163];
    assign B35_6_LP[6] = input_enable[164];
    assign B35_8_LP[5] = input_enable[165];
    assign B35_10_LP[3] = input_enable[166];
    assign B35_12_LP[0] = input_enable[167];
    assign B35_12_LP[4] = input_enable[168];
    assign B35_12_LP[7] = input_enable[169];
    assign B13_12_LP[6] = input_enable[170];
    
    assign B35_18_LP[7] = input_enable[171];    
    assign B35_18_LP[6] = input_enable[172];
    assign B35_18_LP[4] = input_enable[173];
    assign B35_18_LP[1] = input_enable[174];
    assign B35_16_LP[5] = input_enable[175];
    assign B35_16_LP[0] = input_enable[176];
    assign B35_14_LP[2] = input_enable[177];
    assign B34_12_LP[3] = input_enable[178];
    assign B34_9_LP[3] = input_enable[179];
    assign B34_5_LP[3] = input_enable[180];
    assign B35_4_LP[7] = input_enable[181];
    assign B35_6_LP[7] = input_enable[182];
    assign B35_8_LP[6] = input_enable[183];
    assign B35_10_LP[4] = input_enable[184];
    assign B35_12_LP[1] = input_enable[185];
    assign B35_12_LP[5] = input_enable[186];
    assign B13_12_LP[7] = input_enable[187];
    assign B13_12_LP[5] = input_enable[188];
    assign B13_12_LP[4] = input_enable[189];
    
    assign B35_18_LP[5] = input_enable[190];    
    assign B35_18_LP[3] = input_enable[191];
    assign B35_18_LP[0] = input_enable[192];
    assign B35_16_LP[4] = input_enable[193];
    assign B35_14_LP[7] = input_enable[194];
    assign B35_14_LP[1] = input_enable[195];
    assign B34_12_LP[2] = input_enable[196];
    assign B34_9_LP[2] = input_enable[197];
    assign B34_16_LP[2] = input_enable[198];
    assign B13_14_LP[1] = input_enable[199];
    assign B13_13_LP[4] = input_enable[200];
    assign B13_15_LP[4] = input_enable[201];
    assign B34_2_LP[5] = input_enable[202];
    assign B34_4_LP[7] = input_enable[203];
    assign B34_4_LP[2] = input_enable[204];
    assign B34_8_LP[6] = input_enable[205];
    assign B34_8_LP[3] = input_enable[206];
    assign B34_8_LP[1] = input_enable[207];
    assign B34_8_LP[0] = input_enable[208];
    
    assign B35_18_LP[2] = input_enable[209];    
    assign B35_16_LP[7] = input_enable[210];
    assign B35_16_LP[3] = input_enable[211];
    assign B35_14_LP[6] = input_enable[212];
    assign B35_14_LP[0] = input_enable[213];
    assign B34_12_LP[1] = input_enable[214];
    assign B34_9_LP[1] = input_enable[215];
    assign B34_16_LP[3] = input_enable[216];
    assign B34_18_LP[2] = input_enable[217];
    assign B13_21_LP[1] = input_enable[218];
    assign B13_14_LP[0] = input_enable[219];
    assign B13_13_LP[5] = input_enable[220];
    assign B13_15_LP[5] = input_enable[221];
    assign B34_2_LP[6] = input_enable[222];
    assign B34_2_LP[0] = input_enable[223];
    assign B34_4_LP[3] = input_enable[224];
    assign B34_8_LP[7] = input_enable[225];
    assign B34_8_LP[4] = input_enable[226];
    assign B34_8_LP[2] = input_enable[227];
    
    assign B35_16_LP[6] = input_enable[228];    
    assign B35_16_LP[2] = input_enable[229];
    assign B35_14_LP[5] = input_enable[230];
    assign B34_12_LP[7] = input_enable[231];
    assign B34_12_LP[0] = input_enable[232];
    assign B34_9_LP[0] = input_enable[233];
    assign B34_16_LP[4] = input_enable[234];
    assign B34_18_LP[3] = input_enable[235];
    assign B34_19_LP[3] = input_enable[236];
    assign B34_3_LP[0] = input_enable[237];
    assign B13_21_LP[0] = input_enable[238];
    assign B13_11_LP[7] = input_enable[239];
    assign B13_13_LP[6] = input_enable[240];
    assign B13_15_LP[6] = input_enable[241];
    assign B34_2_LP[7] = input_enable[242];
    assign B34_2_LP[1] = input_enable[243];
    assign B34_4_LP[4] = input_enable[244];
    assign B34_4_LP[0] = input_enable[245];
    assign B34_8_LP[5] = input_enable[246];
    
    assign B35_16_LP[1] = input_enable[247];    
    assign B35_14_LP[4] = input_enable[248];
    assign B34_12_LP[6] = input_enable[249];
    assign B34_9_LP[7] = input_enable[250];
    assign B34_14_LP[7] = input_enable[251];
    assign B34_16_LP[5] = input_enable[252];
    assign B34_18_LP[4] = input_enable[253];
    assign B34_19_LP[4] = input_enable[254];
    assign B34_17_LP[5] = input_enable[255];
    assign B34_3_LP[6] = input_enable[256];
    assign B13_21_LP[7] = input_enable[257];
    assign B13_14_LP[7] = input_enable[258];
    assign B13_11_LP[6] = input_enable[259];
    assign B13_13_LP[7] = input_enable[260];
    assign B13_15_LP[7] = input_enable[261];
    assign B13_15_LP[0] = input_enable[262];
    assign B34_2_LP[2] = input_enable[263];
    assign B34_4_LP[5] = input_enable[264];
    assign B34_4_LP[1] = input_enable[265];
    
    assign B35_14_LP[3] = input_enable[266];    
    assign B34_12_LP[5] = input_enable[267];
    assign B34_9_LP[6] = input_enable[268];
    assign B34_14_LP[6] = input_enable[269];
    assign B34_16_LP[6] = input_enable[270];
    assign B34_18_LP[5] = input_enable[271];
    assign B34_19_LP[5] = input_enable[272];
    assign B34_17_LP[6] = input_enable[273];
    assign B34_17_LP[0] = input_enable[274];
    assign B34_10_LP[3] = input_enable[275];
    assign B34_3_LP[5] = input_enable[276];
    assign B13_21_LP[6] = input_enable[277];
    assign B13_14_LP[6] = input_enable[278];
    assign B13_11_LP[5] = input_enable[279];
    assign B13_12_LP[0] = input_enable[280];
    assign B13_13_LP[0] = input_enable[281];
    assign B13_15_LP[1] = input_enable[282];
    assign B34_2_LP[3] = input_enable[283];
    assign B34_4_LP[6] = input_enable[284];
    
    assign B34_12_LP[4] = input_enable[285];    
    assign B34_9_LP[5] = input_enable[286];
    assign B34_14_LP[5] = input_enable[287];
    assign B34_16_LP[7] = input_enable[288];
    assign B34_18_LP[6] = input_enable[289];
    assign B34_19_LP[6] = input_enable[290];
    assign B34_17_LP[7] = input_enable[291];
    assign B34_17_LP[1] = input_enable[292];
    assign B34_15_LP[4] = input_enable[293];
    assign B34_10_LP[7] = input_enable[294];
    assign B34_10_LP[2] = input_enable[295];
    assign B34_3_LP[4] = input_enable[296];
    assign B13_21_LP[5] = input_enable[297];
    assign B13_14_LP[5] = input_enable[298];
    assign B13_11_LP[4] = input_enable[299];
    assign B13_12_LP[1] = input_enable[300];
    assign B13_13_LP[1] = input_enable[301];
    assign B13_15_LP[2] = input_enable[302];
    assign B34_2_LP[4] = input_enable[303];
    
    assign B34_9_LP[4] = input_enable[304];    
    assign B34_14_LP[4] = input_enable[305];
    assign B34_13_LP[0] = input_enable[306];
    assign B34_18_LP[7] = input_enable[307];
    assign B34_19_LP[7] = input_enable[308];
    assign B34_19_LP[0] = input_enable[309];
    assign B34_17_LP[2] = input_enable[310];
    assign B34_15_LP[5] = input_enable[311];
    assign B34_15_LP[1] = input_enable[312];
    assign B34_13_LP[5] = input_enable[313];
    assign B34_10_LP[6] = input_enable[314];
    assign B34_10_LP[1] = input_enable[315];
    assign B34_3_LP[3] = input_enable[316];
    assign B13_21_LP[4] = input_enable[317];
    assign B13_14_LP[4] = input_enable[318];
    assign B13_11_LP[3] = input_enable[319];
    assign B13_12_LP[2] = input_enable[320];
    assign B13_13_LP[2] = input_enable[321];
    assign B13_15_LP[3] = input_enable[322];
    
    assign B34_14_LP[3] = input_enable[323];    
    assign B34_13_LP[1] = input_enable[324];
    assign B34_16_LP[0] = input_enable[325];
    assign B34_18_LP[0] = input_enable[326];
    assign B34_19_LP[1] = input_enable[327];
    assign B34_17_LP[3] = input_enable[328];
    assign B34_15_LP[6] = input_enable[329];
    assign B34_15_LP[2] = input_enable[330];
    assign B34_14_LP[0] = input_enable[331];
    assign B34_13_LP[3] = input_enable[332];
    assign B34_13_LP[6] = input_enable[333];
    assign B34_10_LP[5] = input_enable[334];
    assign B34_10_LP[0] = input_enable[335];
    assign B34_3_LP[2] = input_enable[336];
    assign B13_21_LP[3] = input_enable[337];
    assign B13_14_LP[3] = input_enable[338];
    assign B13_11_LP[2] = input_enable[339];
    assign B13_12_LP[3] = input_enable[340];
    assign B13_13_LP[3] = input_enable[341];
    
    //assign B35_1_LP[1] = input_enable[342];    
    assign B34_16_LP[1] = input_enable[343];
    assign B34_18_LP[1] = input_enable[344];
    assign B34_19_LP[2] = input_enable[345];
    assign B34_17_LP[4] = input_enable[346];
    assign B34_15_LP[7] = input_enable[347];
    assign B34_15_LP[3] = input_enable[348];
    assign B34_15_LP[0] = input_enable[349];
    assign B34_14_LP[1] = input_enable[350];
    assign B34_13_LP[2] = input_enable[351];
    assign B34_13_LP[4] = input_enable[352];
    assign B34_13_LP[7] = input_enable[353];
    assign B34_10_LP[4] = input_enable[354];
    assign B34_3_LP[7] = input_enable[355];
    assign B34_3_LP[1] = input_enable[356];
    assign B13_21_LP[2] = input_enable[357];
    assign B13_14_LP[2] = input_enable[358];
    assign B13_11_LP[1] = input_enable[359];
    //assign B35_1_LP[1] = input_enable[360];







	// User logic ends

	endmodule
