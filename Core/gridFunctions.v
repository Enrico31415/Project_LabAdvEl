
function isShipInside;
input [3:0] cell_x; //cella (x,y), partendo da in alto a dx
input [3:0] cell_y; //vedi sopra
input direction; // direzione della nave: se è 0 - (orrizontale) se è 1 | (verticale);
input [2:0] ship_length; // dimensione delle nave.

begin
	// mi smazzo la direzione in orrizontale
	if(!direction)
	begin
		//controllo la distanza dal bordo
		if (cell_x + direction > 4'd9)
			isShipInside = 0;
		else
			isShipInside = 1;
	end
	// controllo l'orrizontale
	else
		if (cell_y + direction > 4'd9)
			isShipInside = 0;
		else
			isShipInside = 1;
end
endfunction
