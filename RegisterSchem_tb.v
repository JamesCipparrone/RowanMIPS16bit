module RegisterSchem_tb();

reg rst, Write, clock;
reg [15:0] data;
reg [3:0] select, selecta, selectb;

wire [15:0] a,b,regz,regy,regx,regw,regv,regu,regt,regs,regr,regq,regp,rego,regn,regm,regl,regk;

RegisterSchem testunit (
	.Write (Write),
	.clock (clock),
	.rst (rst),
	.data (data),
	.select (select),
	.selecta (selecta),
	.selectb (selectb),
	.a (a),
	.b (b),
	.regk (regk),
	.regl (regl),
	.regm (regm),
	.regn (regn),
	.rego (rego),
	.regp (regp),
	.regq (regq),
	.regr (regr),
	.regs (regs),
	.regt (regt),
	.regu (regu),
	.regv (regv),
	.regw (regw),
	.regx (regx),
	.regy (regy),
	.regz (regz)
	);	
	
initial
begin
	clock <= 1'b1;
	forever
		#10 clock = ~clock;
end

	

initial
begin
	#2 rst = 1'b1;
	#5 rst = 1'b0;
	select = 4'b0;
	
	forever
	begin
		#20 data = $random;
		select = select + 4'b1; //select++
		selecta = $random;
		selectb = $random;
		Write = $random;
	end
end

initial 
#1000 $stop;

endmodule
