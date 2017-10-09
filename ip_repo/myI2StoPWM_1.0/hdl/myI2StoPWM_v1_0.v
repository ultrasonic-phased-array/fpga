
`timescale 1 ns / 1 ps

	module myI2StoPWM_v1_0 #
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
		input wire MCLK,
		input wire LRCLK,
		input wire DATA,
		output wire PWM,
		input wire PWMCLK,
		output wire SIGAUDIO,
		output wire LED,
		input wire [23:0] PARDATA,

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
	myI2StoPWM_v1_0_S00_AXI # ( 
		.C_S_AXI_DATA_WIDTH(C_S00_AXI_DATA_WIDTH),
		.C_S_AXI_ADDR_WIDTH(C_S00_AXI_ADDR_WIDTH)
	) myI2StoPWM_v1_0_S00_AXI_inst (
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
	

    
     reg    [31:0] i2s;
     reg    [31:0] pwmreg;
     reg    [31:0] pwmbuf;

     
   /*  integer datavalid;
     always @(posedge MCLK)
     if (LRCLK)
     begin
           i2s    <= i2s << 1;
           i2s[0] <= DATA;
           datavalid <= datavalid + 1;
     end
     else
     begin
           i2s <= 32'b00000000000000000000000000000000;
           datavalid <= 0;
     end
    
     always @(posedge MCLK)
     if (datavalid == 24)
     begin
           pwmreg <= i2s;
     end


     
    
        */

     integer count = 0;

            
     reg outState;
     reg led;
     
    
           

                
       
            
        
            
            always @(posedge PWMCLK)
                if (count >= 8192) //8192
                    begin
                        count <= 0;
                        //pwmbuf <= pwmreg;
                    end
                else
                    begin
                        pwmbuf <= PARDATA;
                        count <= count+1;
                        led <= count[12];
                    end
        
            always @(posedge PWMCLK)
                if (count == 1) outState <= 1;
                else if (count > ((pwmbuf >> 12) + 2048)) outState <= 0; //11*/
               
                
        
                
              
                              
        
            assign PWM = outState;
            assign LED = led;
            assign SIGAUDIO = pwmbuf[12];
            



	// User logic ends

	endmodule
