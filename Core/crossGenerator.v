// script in python che genera la croce all'interno della cella
// Modulo autogenerato da crossGenerator.py
// Non modificare! Qualsisasi modifica sara' cancellata all'esecuzione successiva
function [11:0] crossGenerator;
input [9:0] pos_x;
input [9:0] pos_y;
input [3:0] cell_x;
input [3:0] cell_y;
begin
	if (cell_x == 4'd0)
	begin
		if ((pos_x <= 10'd34) && 
		 (pos_x >= 10'd30)) 
		begin
			 crossGenerator = 12'b000100011111;
		end
		else
		begin
			 crossGenerator = 12'b000111111111;
		end
	end
	if (cell_x == 4'd1)
	begin
		if ((pos_x <= 10'd98) && 
		 (pos_x >= 10'd94)) 
		begin
			 crossGenerator = 12'b000100011111;
		end
		else
		begin
			 crossGenerator = 12'b000111111111;
		end
	end
	if (cell_x == 4'd2)
	begin
		if ((pos_x <= 10'd162) && 
		 (pos_x >= 10'd158)) 
		begin
			 crossGenerator = 12'b000100011111;
		end
		else
		begin
			 crossGenerator = 12'b000111111111;
		end
	end
	if (cell_x == 4'd3)
	begin
		if ((pos_x <= 10'd226) && 
		 (pos_x >= 10'd222)) 
		begin
			 crossGenerator = 12'b000100011111;
		end
		else
		begin
			 crossGenerator = 12'b000111111111;
		end
	end
	if (cell_x == 4'd4)
	begin
		if ((pos_x <= 10'd290) && 
		 (pos_x >= 10'd286)) 
		begin
			 crossGenerator = 12'b000100011111;
		end
		else
		begin
			 crossGenerator = 12'b000111111111;
		end
	end
	if (cell_x == 4'd5)
	begin
		if ((pos_x <= 10'd354) && 
		 (pos_x >= 10'd350)) 
		begin
			 crossGenerator = 12'b000100011111;
		end
		else
		begin
			 crossGenerator = 12'b000111111111;
		end
	end
	if (cell_x == 4'd6)
	begin
		if ((pos_x <= 10'd418) && 
		 (pos_x >= 10'd414)) 
		begin
			 crossGenerator = 12'b000100011111;
		end
		else
		begin
			 crossGenerator = 12'b000111111111;
		end
	end
	if (cell_x == 4'd7)
	begin
		if ((pos_x <= 10'd482) && 
		 (pos_x >= 10'd478)) 
		begin
			 crossGenerator = 12'b000100011111;
		end
		else
		begin
			 crossGenerator = 12'b000111111111;
		end
	end
	if (cell_x == 4'd8)
	begin
		if ((pos_x <= 10'd546) && 
		 (pos_x >= 10'd542)) 
		begin
			 crossGenerator = 12'b000100011111;
		end
		else
		begin
			 crossGenerator = 12'b000111111111;
		end
	end
	if (cell_x == 4'd9)
	begin
		if ((pos_x <= 10'd610) && 
		 (pos_x >= 10'd606)) 
		begin
			 crossGenerator = 12'b000100011111;
		end
		else
		begin
			 crossGenerator = 12'b000111111111;
		end
	end
end
endfunction
