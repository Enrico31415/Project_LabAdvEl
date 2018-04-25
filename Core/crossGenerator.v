// script in python che genera la croce all'interno della cella
// Modulo autogenerato da crossGenerator.py
// Non modificare! Qualsisasi modifica sara' cancellata all'esecuzione successiva
function [11:0] crossGenerator;
input [9:0] pos_x;
input [9:0] pos_y;
input [3:0] cell_x;
input [3:0] cell_y;
begin
	if (pos_y == 0) // capisco in che riga sono
	begin
		//data la riga, posso calcolare in che posizione devo mettere le x:
		//pos_x = 0*640/480 = 0
		if((pos_x <= 10'd2 && pos_x>= 10'd0)
			 || (pos_x <= 10'd639 && pos_x>= 10'd638))
		 begin
			 crossGenerator = 12'b000100010001;
		 end

	end
	else if (pos_y == 1) // capisco in che riga sono
	begin
		//data la riga, posso calcolare in che posizione devo mettere le x:
		//pos_x = 1*640/480 = 1
		if((pos_x <= 10'd3 && pos_x>= 10'd0)
			 || (pos_x <= 10'd639 && pos_x>= 10'd637))
		 begin
			 crossGenerator = 12'b000100010001;
		 end

	end
	else if (pos_y == 2) // capisco in che riga sono
	begin
		//data la riga, posso calcolare in che posizione devo mettere le x:
		//pos_x = 2*640/480 = 3
		if((pos_x <= 10'd5 && pos_x>= 10'd1)
			 || (pos_x <= 10'd639 && pos_x>= 10'd635))
		 begin
			 crossGenerator = 12'b000100010001;
		 end

	end
	else if (pos_y == 3) // capisco in che riga sono
	begin
		//data la riga, posso calcolare in che posizione devo mettere le x:
		//pos_x = 3*640/480 = 4
		if((pos_x <= 10'd6 && pos_x>= 10'd2)
			 || (pos_x <= 10'd638 && pos_x>= 10'd634))
		 begin
			 crossGenerator = 12'b000100010001;
		 end

	end
	else if (pos_y == 4) // capisco in che riga sono
	begin
		//data la riga, posso calcolare in che posizione devo mettere le x:
		//pos_x = 4*640/480 = 5
		if((pos_x <= 10'd7 && pos_x>= 10'd3)
			 || (pos_x <= 10'd637 && pos_x>= 10'd633))
		 begin
			 crossGenerator = 12'b000100010001;
		 end

	end
	else if (pos_y == 5) // capisco in che riga sono
	begin
		//data la riga, posso calcolare in che posizione devo mettere le x:
		//pos_x = 5*640/480 = 7
		if((pos_x <= 10'd9 && pos_x>= 10'd5)
			 || (pos_x <= 10'd635 && pos_x>= 10'd631))
		 begin
			 crossGenerator = 12'b000100010001;
		 end

	end
	else if (pos_y == 6) // capisco in che riga sono
	begin
		//data la riga, posso calcolare in che posizione devo mettere le x:
		//pos_x = 6*640/480 = 8
		if((pos_x <= 10'd10 && pos_x>= 10'd6)
			 || (pos_x <= 10'd634 && pos_x>= 10'd630))
		 begin
			 crossGenerator = 12'b000100010001;
		 end

	end
	else if (pos_y == 7) // capisco in che riga sono
	begin
		//data la riga, posso calcolare in che posizione devo mettere le x:
		//pos_x = 7*640/480 = 9
		if((pos_x <= 10'd11 && pos_x>= 10'd7)
			 || (pos_x <= 10'd633 && pos_x>= 10'd629))
		 begin
			 crossGenerator = 12'b000100010001;
		 end

	end
	else if (pos_y == 8) // capisco in che riga sono
	begin
		//data la riga, posso calcolare in che posizione devo mettere le x:
		//pos_x = 8*640/480 = 11
		if((pos_x <= 10'd13 && pos_x>= 10'd9)
			 || (pos_x <= 10'd631 && pos_x>= 10'd627))
		 begin
			 crossGenerator = 12'b000100010001;
		 end

	end
	else if (pos_y == 9) // capisco in che riga sono
	begin
		//data la riga, posso calcolare in che posizione devo mettere le x:
		//pos_x = 9*640/480 = 12
		if((pos_x <= 10'd14 && pos_x>= 10'd10)
			 || (pos_x <= 10'd630 && pos_x>= 10'd626))
		 begin
			 crossGenerator = 12'b000100010001;
		 end

	end
	else if (pos_y == 10) // capisco in che riga sono
	begin
		//data la riga, posso calcolare in che posizione devo mettere le x:
		//pos_x = 10*640/480 = 13
		if((pos_x <= 10'd15 && pos_x>= 10'd11)
			 || (pos_x <= 10'd629 && pos_x>= 10'd625))
		 begin
			 crossGenerator = 12'b000100010001;
		 end

	end
	else if (pos_y == 11) // capisco in che riga sono
	begin
		//data la riga, posso calcolare in che posizione devo mettere le x:
		//pos_x = 11*640/480 = 15
		if((pos_x <= 10'd17 && pos_x>= 10'd13)
			 || (pos_x <= 10'd627 && pos_x>= 10'd623))
		 begin
			 crossGenerator = 12'b000100010001;
		 end

	end
	else if (pos_y == 12) // capisco in che riga sono
	begin
		//data la riga, posso calcolare in che posizione devo mettere le x:
		//pos_x = 12*640/480 = 16
		if((pos_x <= 10'd18 && pos_x>= 10'd14)
			 || (pos_x <= 10'd626 && pos_x>= 10'd622))
		 begin
			 crossGenerator = 12'b000100010001;
		 end

	end
	else if (pos_y == 13) // capisco in che riga sono
	begin
		//data la riga, posso calcolare in che posizione devo mettere le x:
		//pos_x = 13*640/480 = 17
		if((pos_x <= 10'd19 && pos_x>= 10'd15)
			 || (pos_x <= 10'd625 && pos_x>= 10'd621))
		 begin
			 crossGenerator = 12'b000100010001;
		 end

	end
	else if (pos_y == 14) // capisco in che riga sono
	begin
		//data la riga, posso calcolare in che posizione devo mettere le x:
		//pos_x = 14*640/480 = 19
		if((pos_x <= 10'd21 && pos_x>= 10'd17)
			 || (pos_x <= 10'd623 && pos_x>= 10'd619))
		 begin
			 crossGenerator = 12'b000100010001;
		 end

	end
	else if (pos_y == 15) // capisco in che riga sono
	begin
		//data la riga, posso calcolare in che posizione devo mettere le x:
		//pos_x = 15*640/480 = 20
		if((pos_x <= 10'd22 && pos_x>= 10'd18)
			 || (pos_x <= 10'd622 && pos_x>= 10'd618))
		 begin
			 crossGenerator = 12'b000100010001;
		 end

	end
	else if (pos_y == 16) // capisco in che riga sono
	begin
		//data la riga, posso calcolare in che posizione devo mettere le x:
		//pos_x = 16*640/480 = 21
		if((pos_x <= 10'd23 && pos_x>= 10'd19)
			 || (pos_x <= 10'd621 && pos_x>= 10'd617))
		 begin
			 crossGenerator = 12'b000100010001;
		 end

	end
	else if (pos_y == 17) // capisco in che riga sono
	begin
		//data la riga, posso calcolare in che posizione devo mettere le x:
		//pos_x = 17*640/480 = 23
		if((pos_x <= 10'd25 && pos_x>= 10'd21)
			 || (pos_x <= 10'd619 && pos_x>= 10'd615))
		 begin
			 crossGenerator = 12'b000100010001;
		 end

	end
	else if (pos_y == 18) // capisco in che riga sono
	begin
		//data la riga, posso calcolare in che posizione devo mettere le x:
		//pos_x = 18*640/480 = 24
		if((pos_x <= 10'd26 && pos_x>= 10'd22)
			 || (pos_x <= 10'd618 && pos_x>= 10'd614))
		 begin
			 crossGenerator = 12'b000100010001;
		 end

	end
	else if (pos_y == 19) // capisco in che riga sono
	begin
		//data la riga, posso calcolare in che posizione devo mettere le x:
		//pos_x = 19*640/480 = 25
		if((pos_x <= 10'd27 && pos_x>= 10'd23)
			 || (pos_x <= 10'd617 && pos_x>= 10'd613))
		 begin
			 crossGenerator = 12'b000100010001;
		 end

	end
	else if (pos_y == 20) // capisco in che riga sono
	begin
		//data la riga, posso calcolare in che posizione devo mettere le x:
		//pos_x = 20*640/480 = 27
		if((pos_x <= 10'd29 && pos_x>= 10'd25)
			 || (pos_x <= 10'd615 && pos_x>= 10'd611))
		 begin
			 crossGenerator = 12'b000100010001;
		 end

	end
	else if (pos_y == 21) // capisco in che riga sono
	begin
		//data la riga, posso calcolare in che posizione devo mettere le x:
		//pos_x = 21*640/480 = 28
		if((pos_x <= 10'd30 && pos_x>= 10'd26)
			 || (pos_x <= 10'd614 && pos_x>= 10'd610))
		 begin
			 crossGenerator = 12'b000100010001;
		 end

	end
	else if (pos_y == 22) // capisco in che riga sono
	begin
		//data la riga, posso calcolare in che posizione devo mettere le x:
		//pos_x = 22*640/480 = 29
		if((pos_x <= 10'd31 && pos_x>= 10'd27)
			 || (pos_x <= 10'd613 && pos_x>= 10'd609))
		 begin
			 crossGenerator = 12'b000100010001;
		 end

	end
	else if (pos_y == 23) // capisco in che riga sono
	begin
		//data la riga, posso calcolare in che posizione devo mettere le x:
		//pos_x = 23*640/480 = 31
		if((pos_x <= 10'd33 && pos_x>= 10'd29)
			 || (pos_x <= 10'd611 && pos_x>= 10'd607))
		 begin
			 crossGenerator = 12'b000100010001;
		 end

	end
	else if (pos_y == 24) // capisco in che riga sono
	begin
		//data la riga, posso calcolare in che posizione devo mettere le x:
		//pos_x = 24*640/480 = 32
		if((pos_x <= 10'd34 && pos_x>= 10'd30)
			 || (pos_x <= 10'd610 && pos_x>= 10'd606))
		 begin
			 crossGenerator = 12'b000100010001;
		 end

	end
	else if (pos_y == 25) // capisco in che riga sono
	begin
		//data la riga, posso calcolare in che posizione devo mettere le x:
		//pos_x = 25*640/480 = 33
		if((pos_x <= 10'd35 && pos_x>= 10'd31)
			 || (pos_x <= 10'd609 && pos_x>= 10'd605))
		 begin
			 crossGenerator = 12'b000100010001;
		 end

	end
	else if (pos_y == 26) // capisco in che riga sono
	begin
		//data la riga, posso calcolare in che posizione devo mettere le x:
		//pos_x = 26*640/480 = 35
		if((pos_x <= 10'd37 && pos_x>= 10'd33)
			 || (pos_x <= 10'd607 && pos_x>= 10'd603))
		 begin
			 crossGenerator = 12'b000100010001;
		 end

	end
	else if (pos_y == 27) // capisco in che riga sono
	begin
		//data la riga, posso calcolare in che posizione devo mettere le x:
		//pos_x = 27*640/480 = 36
		if((pos_x <= 10'd38 && pos_x>= 10'd34)
			 || (pos_x <= 10'd606 && pos_x>= 10'd602))
		 begin
			 crossGenerator = 12'b000100010001;
		 end

	end
	else if (pos_y == 28) // capisco in che riga sono
	begin
		//data la riga, posso calcolare in che posizione devo mettere le x:
		//pos_x = 28*640/480 = 37
		if((pos_x <= 10'd39 && pos_x>= 10'd35)
			 || (pos_x <= 10'd605 && pos_x>= 10'd601))
		 begin
			 crossGenerator = 12'b000100010001;
		 end

	end
	else if (pos_y == 29) // capisco in che riga sono
	begin
		//data la riga, posso calcolare in che posizione devo mettere le x:
		//pos_x = 29*640/480 = 39
		if((pos_x <= 10'd41 && pos_x>= 10'd37)
			 || (pos_x <= 10'd603 && pos_x>= 10'd599))
		 begin
			 crossGenerator = 12'b000100010001;
		 end

	end
	else if (pos_y == 30) // capisco in che riga sono
	begin
		//data la riga, posso calcolare in che posizione devo mettere le x:
		//pos_x = 30*640/480 = 40
		if((pos_x <= 10'd42 && pos_x>= 10'd38)
			 || (pos_x <= 10'd602 && pos_x>= 10'd598))
		 begin
			 crossGenerator = 12'b000100010001;
		 end

	end
	else if (pos_y == 31) // capisco in che riga sono
	begin
		//data la riga, posso calcolare in che posizione devo mettere le x:
		//pos_x = 31*640/480 = 41
		if((pos_x <= 10'd43 && pos_x>= 10'd39)
			 || (pos_x <= 10'd601 && pos_x>= 10'd597))
		 begin
			 crossGenerator = 12'b000100010001;
		 end

	end
	else if (pos_y == 32) // capisco in che riga sono
	begin
		//data la riga, posso calcolare in che posizione devo mettere le x:
		//pos_x = 32*640/480 = 43
		if((pos_x <= 10'd45 && pos_x>= 10'd41)
			 || (pos_x <= 10'd599 && pos_x>= 10'd595))
		 begin
			 crossGenerator = 12'b000100010001;
		 end

	end
	else if (pos_y == 33) // capisco in che riga sono
	begin
		//data la riga, posso calcolare in che posizione devo mettere le x:
		//pos_x = 33*640/480 = 44
		if((pos_x <= 10'd46 && pos_x>= 10'd42)
			 || (pos_x <= 10'd598 && pos_x>= 10'd594))
		 begin
			 crossGenerator = 12'b000100010001;
		 end

	end
	else if (pos_y == 34) // capisco in che riga sono
	begin
		//data la riga, posso calcolare in che posizione devo mettere le x:
		//pos_x = 34*640/480 = 45
		if((pos_x <= 10'd47 && pos_x>= 10'd43)
			 || (pos_x <= 10'd597 && pos_x>= 10'd593))
		 begin
			 crossGenerator = 12'b000100010001;
		 end

	end
	else if (pos_y == 35) // capisco in che riga sono
	begin
		//data la riga, posso calcolare in che posizione devo mettere le x:
		//pos_x = 35*640/480 = 47
		if((pos_x <= 10'd49 && pos_x>= 10'd45)
			 || (pos_x <= 10'd595 && pos_x>= 10'd591))
		 begin
			 crossGenerator = 12'b000100010001;
		 end

	end
	else if (pos_y == 36) // capisco in che riga sono
	begin
		//data la riga, posso calcolare in che posizione devo mettere le x:
		//pos_x = 36*640/480 = 48
		if((pos_x <= 10'd50 && pos_x>= 10'd46)
			 || (pos_x <= 10'd594 && pos_x>= 10'd590))
		 begin
			 crossGenerator = 12'b000100010001;
		 end

	end
	else if (pos_y == 37) // capisco in che riga sono
	begin
		//data la riga, posso calcolare in che posizione devo mettere le x:
		//pos_x = 37*640/480 = 49
		if((pos_x <= 10'd51 && pos_x>= 10'd47)
			 || (pos_x <= 10'd593 && pos_x>= 10'd589))
		 begin
			 crossGenerator = 12'b000100010001;
		 end

	end
	else if (pos_y == 38) // capisco in che riga sono
	begin
		//data la riga, posso calcolare in che posizione devo mettere le x:
		//pos_x = 38*640/480 = 51
		if((pos_x <= 10'd53 && pos_x>= 10'd49)
			 || (pos_x <= 10'd591 && pos_x>= 10'd587))
		 begin
			 crossGenerator = 12'b000100010001;
		 end

	end
	else if (pos_y == 39) // capisco in che riga sono
	begin
		//data la riga, posso calcolare in che posizione devo mettere le x:
		//pos_x = 39*640/480 = 52
		if((pos_x <= 10'd54 && pos_x>= 10'd50)
			 || (pos_x <= 10'd590 && pos_x>= 10'd586))
		 begin
			 crossGenerator = 12'b000100010001;
		 end

	end
	else if (pos_y == 40) // capisco in che riga sono
	begin
		//data la riga, posso calcolare in che posizione devo mettere le x:
		//pos_x = 40*640/480 = 53
		if((pos_x <= 10'd55 && pos_x>= 10'd51)
			 || (pos_x <= 10'd589 && pos_x>= 10'd585))
		 begin
			 crossGenerator = 12'b000100010001;
		 end

	end
	else if (pos_y == 41) // capisco in che riga sono
	begin
		//data la riga, posso calcolare in che posizione devo mettere le x:
		//pos_x = 41*640/480 = 55
		if((pos_x <= 10'd57 && pos_x>= 10'd53)
			 || (pos_x <= 10'd587 && pos_x>= 10'd583))
		 begin
			 crossGenerator = 12'b000100010001;
		 end

	end
	else if (pos_y == 42) // capisco in che riga sono
	begin
		//data la riga, posso calcolare in che posizione devo mettere le x:
		//pos_x = 42*640/480 = 56
		if((pos_x <= 10'd58 && pos_x>= 10'd54)
			 || (pos_x <= 10'd586 && pos_x>= 10'd582))
		 begin
			 crossGenerator = 12'b000100010001;
		 end

	end
	else if (pos_y == 43) // capisco in che riga sono
	begin
		//data la riga, posso calcolare in che posizione devo mettere le x:
		//pos_x = 43*640/480 = 57
		if((pos_x <= 10'd59 && pos_x>= 10'd55)
			 || (pos_x <= 10'd585 && pos_x>= 10'd581))
		 begin
			 crossGenerator = 12'b000100010001;
		 end

	end
	else if (pos_y == 44) // capisco in che riga sono
	begin
		//data la riga, posso calcolare in che posizione devo mettere le x:
		//pos_x = 44*640/480 = 59
		if((pos_x <= 10'd61 && pos_x>= 10'd57)
			 || (pos_x <= 10'd583 && pos_x>= 10'd579))
		 begin
			 crossGenerator = 12'b000100010001;
		 end

	end
	else if (pos_y == 45) // capisco in che riga sono
	begin
		//data la riga, posso calcolare in che posizione devo mettere le x:
		//pos_x = 45*640/480 = 60
		if((pos_x <= 10'd62 && pos_x>= 10'd58)
			 || (pos_x <= 10'd582 && pos_x>= 10'd578))
		 begin
			 crossGenerator = 12'b000100010001;
		 end

	end
	else if (pos_y == 46) // capisco in che riga sono
	begin
		//data la riga, posso calcolare in che posizione devo mettere le x:
		//pos_x = 46*640/480 = 61
		if((pos_x <= 10'd63 && pos_x>= 10'd59)
			 || (pos_x <= 10'd581 && pos_x>= 10'd577))
		 begin
			 crossGenerator = 12'b000100010001;
		 end

	end
	else if (pos_y == 47) // capisco in che riga sono
	begin
		//data la riga, posso calcolare in che posizione devo mettere le x:
		//pos_x = 47*640/480 = 63
		if((pos_x <= 10'd65 && pos_x>= 10'd61)
			 || (pos_x <= 10'd579 && pos_x>= 10'd575))
		 begin
			 crossGenerator = 12'b000100010001;
		 end

	end
	else if (pos_y == 48) // capisco in che riga sono
	begin
		//data la riga, posso calcolare in che posizione devo mettere le x:
		//pos_x = 48*640/480 = 64
		if((pos_x <= 10'd66 && pos_x>= 10'd62)
			 || (pos_x <= 10'd578 && pos_x>= 10'd574))
		 begin
			 crossGenerator = 12'b000100010001;
		 end

	end
	else if (pos_y == 49) // capisco in che riga sono
	begin
		//data la riga, posso calcolare in che posizione devo mettere le x:
		//pos_x = 49*640/480 = 65
		if((pos_x <= 10'd67 && pos_x>= 10'd63)
			 || (pos_x <= 10'd577 && pos_x>= 10'd573))
		 begin
			 crossGenerator = 12'b000100010001;
		 end

	end
	else if (pos_y == 50) // capisco in che riga sono
	begin
		//data la riga, posso calcolare in che posizione devo mettere le x:
		//pos_x = 50*640/480 = 67
		if((pos_x <= 10'd69 && pos_x>= 10'd65)
			 || (pos_x <= 10'd575 && pos_x>= 10'd571))
		 begin
			 crossGenerator = 12'b000100010001;
		 end

	end
	else if (pos_y == 51) // capisco in che riga sono
	begin
		//data la riga, posso calcolare in che posizione devo mettere le x:
		//pos_x = 51*640/480 = 68
		if((pos_x <= 10'd70 && pos_x>= 10'd66)
			 || (pos_x <= 10'd574 && pos_x>= 10'd570))
		 begin
			 crossGenerator = 12'b000100010001;
		 end

	end
	else if (pos_y == 52) // capisco in che riga sono
	begin
		//data la riga, posso calcolare in che posizione devo mettere le x:
		//pos_x = 52*640/480 = 69
		if((pos_x <= 10'd71 && pos_x>= 10'd67)
			 || (pos_x <= 10'd573 && pos_x>= 10'd569))
		 begin
			 crossGenerator = 12'b000100010001;
		 end

	end
	else if (pos_y == 53) // capisco in che riga sono
	begin
		//data la riga, posso calcolare in che posizione devo mettere le x:
		//pos_x = 53*640/480 = 71
		if((pos_x <= 10'd73 && pos_x>= 10'd69)
			 || (pos_x <= 10'd571 && pos_x>= 10'd567))
		 begin
			 crossGenerator = 12'b000100010001;
		 end

	end
	else if (pos_y == 54) // capisco in che riga sono
	begin
		//data la riga, posso calcolare in che posizione devo mettere le x:
		//pos_x = 54*640/480 = 72
		if((pos_x <= 10'd74 && pos_x>= 10'd70)
			 || (pos_x <= 10'd570 && pos_x>= 10'd566))
		 begin
			 crossGenerator = 12'b000100010001;
		 end

	end
	else if (pos_y == 55) // capisco in che riga sono
	begin
		//data la riga, posso calcolare in che posizione devo mettere le x:
		//pos_x = 55*640/480 = 73
		if((pos_x <= 10'd75 && pos_x>= 10'd71)
			 || (pos_x <= 10'd569 && pos_x>= 10'd565))
		 begin
			 crossGenerator = 12'b000100010001;
		 end

	end
	else if (pos_y == 56) // capisco in che riga sono
	begin
		//data la riga, posso calcolare in che posizione devo mettere le x:
		//pos_x = 56*640/480 = 75
		if((pos_x <= 10'd77 && pos_x>= 10'd73)
			 || (pos_x <= 10'd567 && pos_x>= 10'd563))
		 begin
			 crossGenerator = 12'b000100010001;
		 end

	end
	else if (pos_y == 57) // capisco in che riga sono
	begin
		//data la riga, posso calcolare in che posizione devo mettere le x:
		//pos_x = 57*640/480 = 76
		if((pos_x <= 10'd78 && pos_x>= 10'd74)
			 || (pos_x <= 10'd566 && pos_x>= 10'd562))
		 begin
			 crossGenerator = 12'b000100010001;
		 end

	end
	else if (pos_y == 58) // capisco in che riga sono
	begin
		//data la riga, posso calcolare in che posizione devo mettere le x:
		//pos_x = 58*640/480 = 77
		if((pos_x <= 10'd79 && pos_x>= 10'd75)
			 || (pos_x <= 10'd565 && pos_x>= 10'd561))
		 begin
			 crossGenerator = 12'b000100010001;
		 end

	end
	else if (pos_y == 59) // capisco in che riga sono
	begin
		//data la riga, posso calcolare in che posizione devo mettere le x:
		//pos_x = 59*640/480 = 79
		if((pos_x <= 10'd81 && pos_x>= 10'd77)
			 || (pos_x <= 10'd563 && pos_x>= 10'd559))
		 begin
			 crossGenerator = 12'b000100010001;
		 end

	end
	else if (pos_y == 60) // capisco in che riga sono
	begin
		//data la riga, posso calcolare in che posizione devo mettere le x:
		//pos_x = 60*640/480 = 80
		if((pos_x <= 10'd82 && pos_x>= 10'd78)
			 || (pos_x <= 10'd562 && pos_x>= 10'd558))
		 begin
			 crossGenerator = 12'b000100010001;
		 end

	end
	else if (pos_y == 61) // capisco in che riga sono
	begin
		//data la riga, posso calcolare in che posizione devo mettere le x:
		//pos_x = 61*640/480 = 81
		if((pos_x <= 10'd83 && pos_x>= 10'd79)
			 || (pos_x <= 10'd561 && pos_x>= 10'd557))
		 begin
			 crossGenerator = 12'b000100010001;
		 end

	end
	else if (pos_y == 62) // capisco in che riga sono
	begin
		//data la riga, posso calcolare in che posizione devo mettere le x:
		//pos_x = 62*640/480 = 83
		if((pos_x <= 10'd85 && pos_x>= 10'd81)
			 || (pos_x <= 10'd559 && pos_x>= 10'd555))
		 begin
			 crossGenerator = 12'b000100010001;
		 end

	end
	else if (pos_y == 63) // capisco in che riga sono
	begin
		//data la riga, posso calcolare in che posizione devo mettere le x:
		//pos_x = 63*640/480 = 84
		if((pos_x <= 10'd86 && pos_x>= 10'd82)
			 || (pos_x <= 10'd558 && pos_x>= 10'd554))
		 begin
			 crossGenerator = 12'b000100010001;
		 end

	end
	else if (pos_y == 64) // capisco in che riga sono
	begin
		//data la riga, posso calcolare in che posizione devo mettere le x:
		//pos_x = 64*640/480 = 85
		if((pos_x <= 10'd87 && pos_x>= 10'd83)
			 || (pos_x <= 10'd557 && pos_x>= 10'd553))
		 begin
			 crossGenerator = 12'b000100010001;
		 end

	end
	else if (pos_y == 65) // capisco in che riga sono
	begin
		//data la riga, posso calcolare in che posizione devo mettere le x:
		//pos_x = 65*640/480 = 87
		if((pos_x <= 10'd89 && pos_x>= 10'd85)
			 || (pos_x <= 10'd555 && pos_x>= 10'd551))
		 begin
			 crossGenerator = 12'b000100010001;
		 end

	end
	else if (pos_y == 66) // capisco in che riga sono
	begin
		//data la riga, posso calcolare in che posizione devo mettere le x:
		//pos_x = 66*640/480 = 88
		if((pos_x <= 10'd90 && pos_x>= 10'd86)
			 || (pos_x <= 10'd554 && pos_x>= 10'd550))
		 begin
			 crossGenerator = 12'b000100010001;
		 end

	end
	else if (pos_y == 67) // capisco in che riga sono
	begin
		//data la riga, posso calcolare in che posizione devo mettere le x:
		//pos_x = 67*640/480 = 89
		if((pos_x <= 10'd91 && pos_x>= 10'd87)
			 || (pos_x <= 10'd553 && pos_x>= 10'd549))
		 begin
			 crossGenerator = 12'b000100010001;
		 end

	end
	else if (pos_y == 68) // capisco in che riga sono
	begin
		//data la riga, posso calcolare in che posizione devo mettere le x:
		//pos_x = 68*640/480 = 91
		if((pos_x <= 10'd93 && pos_x>= 10'd89)
			 || (pos_x <= 10'd551 && pos_x>= 10'd547))
		 begin
			 crossGenerator = 12'b000100010001;
		 end

	end
	else if (pos_y == 69) // capisco in che riga sono
	begin
		//data la riga, posso calcolare in che posizione devo mettere le x:
		//pos_x = 69*640/480 = 92
		if((pos_x <= 10'd94 && pos_x>= 10'd90)
			 || (pos_x <= 10'd550 && pos_x>= 10'd546))
		 begin
			 crossGenerator = 12'b000100010001;
		 end

	end
	else if (pos_y == 70) // capisco in che riga sono
	begin
		//data la riga, posso calcolare in che posizione devo mettere le x:
		//pos_x = 70*640/480 = 93
		if((pos_x <= 10'd95 && pos_x>= 10'd91)
			 || (pos_x <= 10'd549 && pos_x>= 10'd545))
		 begin
			 crossGenerator = 12'b000100010001;
		 end

	end
	else if (pos_y == 71) // capisco in che riga sono
	begin
		//data la riga, posso calcolare in che posizione devo mettere le x:
		//pos_x = 71*640/480 = 95
		if((pos_x <= 10'd97 && pos_x>= 10'd93)
			 || (pos_x <= 10'd547 && pos_x>= 10'd543))
		 begin
			 crossGenerator = 12'b000100010001;
		 end

	end
	else if (pos_y == 72) // capisco in che riga sono
	begin
		//data la riga, posso calcolare in che posizione devo mettere le x:
		//pos_x = 72*640/480 = 96
		if((pos_x <= 10'd98 && pos_x>= 10'd94)
			 || (pos_x <= 10'd546 && pos_x>= 10'd542))
		 begin
			 crossGenerator = 12'b000100010001;
		 end

	end
	else if (pos_y == 73) // capisco in che riga sono
	begin
		//data la riga, posso calcolare in che posizione devo mettere le x:
		//pos_x = 73*640/480 = 97
		if((pos_x <= 10'd99 && pos_x>= 10'd95)
			 || (pos_x <= 10'd545 && pos_x>= 10'd541))
		 begin
			 crossGenerator = 12'b000100010001;
		 end

	end
	else if (pos_y == 74) // capisco in che riga sono
	begin
		//data la riga, posso calcolare in che posizione devo mettere le x:
		//pos_x = 74*640/480 = 99
		if((pos_x <= 10'd101 && pos_x>= 10'd97)
			 || (pos_x <= 10'd543 && pos_x>= 10'd539))
		 begin
			 crossGenerator = 12'b000100010001;
		 end

	end
	else if (pos_y == 75) // capisco in che riga sono
	begin
		//data la riga, posso calcolare in che posizione devo mettere le x:
		//pos_x = 75*640/480 = 100
		if((pos_x <= 10'd102 && pos_x>= 10'd98)
			 || (pos_x <= 10'd542 && pos_x>= 10'd538))
		 begin
			 crossGenerator = 12'b000100010001;
		 end

	end
	else if (pos_y == 76) // capisco in che riga sono
	begin
		//data la riga, posso calcolare in che posizione devo mettere le x:
		//pos_x = 76*640/480 = 101
		if((pos_x <= 10'd103 && pos_x>= 10'd99)
			 || (pos_x <= 10'd541 && pos_x>= 10'd537))
		 begin
			 crossGenerator = 12'b000100010001;
		 end

	end
	else if (pos_y == 77) // capisco in che riga sono
	begin
		//data la riga, posso calcolare in che posizione devo mettere le x:
		//pos_x = 77*640/480 = 103
		if((pos_x <= 10'd105 && pos_x>= 10'd101)
			 || (pos_x <= 10'd539 && pos_x>= 10'd535))
		 begin
			 crossGenerator = 12'b000100010001;
		 end

	end
	else if (pos_y == 78) // capisco in che riga sono
	begin
		//data la riga, posso calcolare in che posizione devo mettere le x:
		//pos_x = 78*640/480 = 104
		if((pos_x <= 10'd106 && pos_x>= 10'd102)
			 || (pos_x <= 10'd538 && pos_x>= 10'd534))
		 begin
			 crossGenerator = 12'b000100010001;
		 end

	end
	else if (pos_y == 79) // capisco in che riga sono
	begin
		//data la riga, posso calcolare in che posizione devo mettere le x:
		//pos_x = 79*640/480 = 105
		if((pos_x <= 10'd107 && pos_x>= 10'd103)
			 || (pos_x <= 10'd537 && pos_x>= 10'd533))
		 begin
			 crossGenerator = 12'b000100010001;
		 end

	end
	else if (pos_y == 80) // capisco in che riga sono
	begin
		//data la riga, posso calcolare in che posizione devo mettere le x:
		//pos_x = 80*640/480 = 107
		if((pos_x <= 10'd109 && pos_x>= 10'd105)
			 || (pos_x <= 10'd535 && pos_x>= 10'd531))
		 begin
			 crossGenerator = 12'b000100010001;
		 end

	end
	else if (pos_y == 81) // capisco in che riga sono
	begin
		//data la riga, posso calcolare in che posizione devo mettere le x:
		//pos_x = 81*640/480 = 108
		if((pos_x <= 10'd110 && pos_x>= 10'd106)
			 || (pos_x <= 10'd534 && pos_x>= 10'd530))
		 begin
			 crossGenerator = 12'b000100010001;
		 end

	end
	else if (pos_y == 82) // capisco in che riga sono
	begin
		//data la riga, posso calcolare in che posizione devo mettere le x:
		//pos_x = 82*640/480 = 109
		if((pos_x <= 10'd111 && pos_x>= 10'd107)
			 || (pos_x <= 10'd533 && pos_x>= 10'd529))
		 begin
			 crossGenerator = 12'b000100010001;
		 end

	end
	else if (pos_y == 83) // capisco in che riga sono
	begin
		//data la riga, posso calcolare in che posizione devo mettere le x:
		//pos_x = 83*640/480 = 111
		if((pos_x <= 10'd113 && pos_x>= 10'd109)
			 || (pos_x <= 10'd531 && pos_x>= 10'd527))
		 begin
			 crossGenerator = 12'b000100010001;
		 end

	end
	else if (pos_y == 84) // capisco in che riga sono
	begin
		//data la riga, posso calcolare in che posizione devo mettere le x:
		//pos_x = 84*640/480 = 112
		if((pos_x <= 10'd114 && pos_x>= 10'd110)
			 || (pos_x <= 10'd530 && pos_x>= 10'd526))
		 begin
			 crossGenerator = 12'b000100010001;
		 end

	end
	else if (pos_y == 85) // capisco in che riga sono
	begin
		//data la riga, posso calcolare in che posizione devo mettere le x:
		//pos_x = 85*640/480 = 113
		if((pos_x <= 10'd115 && pos_x>= 10'd111)
			 || (pos_x <= 10'd529 && pos_x>= 10'd525))
		 begin
			 crossGenerator = 12'b000100010001;
		 end

	end
	else if (pos_y == 86) // capisco in che riga sono
	begin
		//data la riga, posso calcolare in che posizione devo mettere le x:
		//pos_x = 86*640/480 = 115
		if((pos_x <= 10'd117 && pos_x>= 10'd113)
			 || (pos_x <= 10'd527 && pos_x>= 10'd523))
		 begin
			 crossGenerator = 12'b000100010001;
		 end

	end
	else if (pos_y == 87) // capisco in che riga sono
	begin
		//data la riga, posso calcolare in che posizione devo mettere le x:
		//pos_x = 87*640/480 = 116
		if((pos_x <= 10'd118 && pos_x>= 10'd114)
			 || (pos_x <= 10'd526 && pos_x>= 10'd522))
		 begin
			 crossGenerator = 12'b000100010001;
		 end

	end
	else if (pos_y == 88) // capisco in che riga sono
	begin
		//data la riga, posso calcolare in che posizione devo mettere le x:
		//pos_x = 88*640/480 = 117
		if((pos_x <= 10'd119 && pos_x>= 10'd115)
			 || (pos_x <= 10'd525 && pos_x>= 10'd521))
		 begin
			 crossGenerator = 12'b000100010001;
		 end

	end
	else if (pos_y == 89) // capisco in che riga sono
	begin
		//data la riga, posso calcolare in che posizione devo mettere le x:
		//pos_x = 89*640/480 = 119
		if((pos_x <= 10'd121 && pos_x>= 10'd117)
			 || (pos_x <= 10'd523 && pos_x>= 10'd519))
		 begin
			 crossGenerator = 12'b000100010001;
		 end

	end
	else if (pos_y == 90) // capisco in che riga sono
	begin
		//data la riga, posso calcolare in che posizione devo mettere le x:
		//pos_x = 90*640/480 = 120
		if((pos_x <= 10'd122 && pos_x>= 10'd118)
			 || (pos_x <= 10'd522 && pos_x>= 10'd518))
		 begin
			 crossGenerator = 12'b000100010001;
		 end

	end
	else if (pos_y == 91) // capisco in che riga sono
	begin
		//data la riga, posso calcolare in che posizione devo mettere le x:
		//pos_x = 91*640/480 = 121
		if((pos_x <= 10'd123 && pos_x>= 10'd119)
			 || (pos_x <= 10'd521 && pos_x>= 10'd517))
		 begin
			 crossGenerator = 12'b000100010001;
		 end

	end
	else if (pos_y == 92) // capisco in che riga sono
	begin
		//data la riga, posso calcolare in che posizione devo mettere le x:
		//pos_x = 92*640/480 = 123
		if((pos_x <= 10'd125 && pos_x>= 10'd121)
			 || (pos_x <= 10'd519 && pos_x>= 10'd515))
		 begin
			 crossGenerator = 12'b000100010001;
		 end

	end
	else if (pos_y == 93) // capisco in che riga sono
	begin
		//data la riga, posso calcolare in che posizione devo mettere le x:
		//pos_x = 93*640/480 = 124
		if((pos_x <= 10'd126 && pos_x>= 10'd122)
			 || (pos_x <= 10'd518 && pos_x>= 10'd514))
		 begin
			 crossGenerator = 12'b000100010001;
		 end

	end
	else if (pos_y == 94) // capisco in che riga sono
	begin
		//data la riga, posso calcolare in che posizione devo mettere le x:
		//pos_x = 94*640/480 = 125
		if((pos_x <= 10'd127 && pos_x>= 10'd123)
			 || (pos_x <= 10'd517 && pos_x>= 10'd513))
		 begin
			 crossGenerator = 12'b000100010001;
		 end

	end
	else if (pos_y == 95) // capisco in che riga sono
	begin
		//data la riga, posso calcolare in che posizione devo mettere le x:
		//pos_x = 95*640/480 = 127
		if((pos_x <= 10'd129 && pos_x>= 10'd125)
			 || (pos_x <= 10'd515 && pos_x>= 10'd511))
		 begin
			 crossGenerator = 12'b000100010001;
		 end

	end
	else if (pos_y == 96) // capisco in che riga sono
	begin
		//data la riga, posso calcolare in che posizione devo mettere le x:
		//pos_x = 96*640/480 = 128
		if((pos_x <= 10'd130 && pos_x>= 10'd126)
			 || (pos_x <= 10'd514 && pos_x>= 10'd510))
		 begin
			 crossGenerator = 12'b000100010001;
		 end

	end
	else if (pos_y == 97) // capisco in che riga sono
	begin
		//data la riga, posso calcolare in che posizione devo mettere le x:
		//pos_x = 97*640/480 = 129
		if((pos_x <= 10'd131 && pos_x>= 10'd127)
			 || (pos_x <= 10'd513 && pos_x>= 10'd509))
		 begin
			 crossGenerator = 12'b000100010001;
		 end

	end
	else if (pos_y == 98) // capisco in che riga sono
	begin
		//data la riga, posso calcolare in che posizione devo mettere le x:
		//pos_x = 98*640/480 = 131
		if((pos_x <= 10'd133 && pos_x>= 10'd129)
			 || (pos_x <= 10'd511 && pos_x>= 10'd507))
		 begin
			 crossGenerator = 12'b000100010001;
		 end

	end
	else if (pos_y == 99) // capisco in che riga sono
	begin
		//data la riga, posso calcolare in che posizione devo mettere le x:
		//pos_x = 99*640/480 = 132
		if((pos_x <= 10'd134 && pos_x>= 10'd130)
			 || (pos_x <= 10'd510 && pos_x>= 10'd506))
		 begin
			 crossGenerator = 12'b000100010001;
		 end

	end
	else if (pos_y == 100) // capisco in che riga sono
	begin
		//data la riga, posso calcolare in che posizione devo mettere le x:
		//pos_x = 100*640/480 = 133
		if((pos_x <= 10'd135 && pos_x>= 10'd131)
			 || (pos_x <= 10'd509 && pos_x>= 10'd505))
		 begin
			 crossGenerator = 12'b000100010001;
		 end

	end
	else if (pos_y == 101) // capisco in che riga sono
	begin
		//data la riga, posso calcolare in che posizione devo mettere le x:
		//pos_x = 101*640/480 = 135
		if((pos_x <= 10'd137 && pos_x>= 10'd133)
			 || (pos_x <= 10'd507 && pos_x>= 10'd503))
		 begin
			 crossGenerator = 12'b000100010001;
		 end

	end
	else if (pos_y == 102) // capisco in che riga sono
	begin
		//data la riga, posso calcolare in che posizione devo mettere le x:
		//pos_x = 102*640/480 = 136
		if((pos_x <= 10'd138 && pos_x>= 10'd134)
			 || (pos_x <= 10'd506 && pos_x>= 10'd502))
		 begin
			 crossGenerator = 12'b000100010001;
		 end

	end
	else if (pos_y == 103) // capisco in che riga sono
	begin
		//data la riga, posso calcolare in che posizione devo mettere le x:
		//pos_x = 103*640/480 = 137
		if((pos_x <= 10'd139 && pos_x>= 10'd135)
			 || (pos_x <= 10'd505 && pos_x>= 10'd501))
		 begin
			 crossGenerator = 12'b000100010001;
		 end

	end
	else if (pos_y == 104) // capisco in che riga sono
	begin
		//data la riga, posso calcolare in che posizione devo mettere le x:
		//pos_x = 104*640/480 = 139
		if((pos_x <= 10'd141 && pos_x>= 10'd137)
			 || (pos_x <= 10'd503 && pos_x>= 10'd499))
		 begin
			 crossGenerator = 12'b000100010001;
		 end

	end
	else if (pos_y == 105) // capisco in che riga sono
	begin
		//data la riga, posso calcolare in che posizione devo mettere le x:
		//pos_x = 105*640/480 = 140
		if((pos_x <= 10'd142 && pos_x>= 10'd138)
			 || (pos_x <= 10'd502 && pos_x>= 10'd498))
		 begin
			 crossGenerator = 12'b000100010001;
		 end

	end
	else if (pos_y == 106) // capisco in che riga sono
	begin
		//data la riga, posso calcolare in che posizione devo mettere le x:
		//pos_x = 106*640/480 = 141
		if((pos_x <= 10'd143 && pos_x>= 10'd139)
			 || (pos_x <= 10'd501 && pos_x>= 10'd497))
		 begin
			 crossGenerator = 12'b000100010001;
		 end

	end
	else if (pos_y == 107) // capisco in che riga sono
	begin
		//data la riga, posso calcolare in che posizione devo mettere le x:
		//pos_x = 107*640/480 = 143
		if((pos_x <= 10'd145 && pos_x>= 10'd141)
			 || (pos_x <= 10'd499 && pos_x>= 10'd495))
		 begin
			 crossGenerator = 12'b000100010001;
		 end

	end
	else if (pos_y == 108) // capisco in che riga sono
	begin
		//data la riga, posso calcolare in che posizione devo mettere le x:
		//pos_x = 108*640/480 = 144
		if((pos_x <= 10'd146 && pos_x>= 10'd142)
			 || (pos_x <= 10'd498 && pos_x>= 10'd494))
		 begin
			 crossGenerator = 12'b000100010001;
		 end

	end
	else if (pos_y == 109) // capisco in che riga sono
	begin
		//data la riga, posso calcolare in che posizione devo mettere le x:
		//pos_x = 109*640/480 = 145
		if((pos_x <= 10'd147 && pos_x>= 10'd143)
			 || (pos_x <= 10'd497 && pos_x>= 10'd493))
		 begin
			 crossGenerator = 12'b000100010001;
		 end

	end
	else if (pos_y == 110) // capisco in che riga sono
	begin
		//data la riga, posso calcolare in che posizione devo mettere le x:
		//pos_x = 110*640/480 = 147
		if((pos_x <= 10'd149 && pos_x>= 10'd145)
			 || (pos_x <= 10'd495 && pos_x>= 10'd491))
		 begin
			 crossGenerator = 12'b000100010001;
		 end

	end
	else if (pos_y == 111) // capisco in che riga sono
	begin
		//data la riga, posso calcolare in che posizione devo mettere le x:
		//pos_x = 111*640/480 = 148
		if((pos_x <= 10'd150 && pos_x>= 10'd146)
			 || (pos_x <= 10'd494 && pos_x>= 10'd490))
		 begin
			 crossGenerator = 12'b000100010001;
		 end

	end
	else if (pos_y == 112) // capisco in che riga sono
	begin
		//data la riga, posso calcolare in che posizione devo mettere le x:
		//pos_x = 112*640/480 = 149
		if((pos_x <= 10'd151 && pos_x>= 10'd147)
			 || (pos_x <= 10'd493 && pos_x>= 10'd489))
		 begin
			 crossGenerator = 12'b000100010001;
		 end

	end
	else if (pos_y == 113) // capisco in che riga sono
	begin
		//data la riga, posso calcolare in che posizione devo mettere le x:
		//pos_x = 113*640/480 = 151
		if((pos_x <= 10'd153 && pos_x>= 10'd149)
			 || (pos_x <= 10'd491 && pos_x>= 10'd487))
		 begin
			 crossGenerator = 12'b000100010001;
		 end

	end
	else if (pos_y == 114) // capisco in che riga sono
	begin
		//data la riga, posso calcolare in che posizione devo mettere le x:
		//pos_x = 114*640/480 = 152
		if((pos_x <= 10'd154 && pos_x>= 10'd150)
			 || (pos_x <= 10'd490 && pos_x>= 10'd486))
		 begin
			 crossGenerator = 12'b000100010001;
		 end

	end
	else if (pos_y == 115) // capisco in che riga sono
	begin
		//data la riga, posso calcolare in che posizione devo mettere le x:
		//pos_x = 115*640/480 = 153
		if((pos_x <= 10'd155 && pos_x>= 10'd151)
			 || (pos_x <= 10'd489 && pos_x>= 10'd485))
		 begin
			 crossGenerator = 12'b000100010001;
		 end

	end
	else if (pos_y == 116) // capisco in che riga sono
	begin
		//data la riga, posso calcolare in che posizione devo mettere le x:
		//pos_x = 116*640/480 = 155
		if((pos_x <= 10'd157 && pos_x>= 10'd153)
			 || (pos_x <= 10'd487 && pos_x>= 10'd483))
		 begin
			 crossGenerator = 12'b000100010001;
		 end

	end
	else if (pos_y == 117) // capisco in che riga sono
	begin
		//data la riga, posso calcolare in che posizione devo mettere le x:
		//pos_x = 117*640/480 = 156
		if((pos_x <= 10'd158 && pos_x>= 10'd154)
			 || (pos_x <= 10'd486 && pos_x>= 10'd482))
		 begin
			 crossGenerator = 12'b000100010001;
		 end

	end
	else if (pos_y == 118) // capisco in che riga sono
	begin
		//data la riga, posso calcolare in che posizione devo mettere le x:
		//pos_x = 118*640/480 = 157
		if((pos_x <= 10'd159 && pos_x>= 10'd155)
			 || (pos_x <= 10'd485 && pos_x>= 10'd481))
		 begin
			 crossGenerator = 12'b000100010001;
		 end

	end
	else if (pos_y == 119) // capisco in che riga sono
	begin
		//data la riga, posso calcolare in che posizione devo mettere le x:
		//pos_x = 119*640/480 = 159
		if((pos_x <= 10'd161 && pos_x>= 10'd157)
			 || (pos_x <= 10'd483 && pos_x>= 10'd479))
		 begin
			 crossGenerator = 12'b000100010001;
		 end

	end
	else if (pos_y == 120) // capisco in che riga sono
	begin
		//data la riga, posso calcolare in che posizione devo mettere le x:
		//pos_x = 120*640/480 = 160
		if((pos_x <= 10'd162 && pos_x>= 10'd158)
			 || (pos_x <= 10'd482 && pos_x>= 10'd478))
		 begin
			 crossGenerator = 12'b000100010001;
		 end

	end
	else if (pos_y == 121) // capisco in che riga sono
	begin
		//data la riga, posso calcolare in che posizione devo mettere le x:
		//pos_x = 121*640/480 = 161
		if((pos_x <= 10'd163 && pos_x>= 10'd159)
			 || (pos_x <= 10'd481 && pos_x>= 10'd477))
		 begin
			 crossGenerator = 12'b000100010001;
		 end

	end
	else if (pos_y == 122) // capisco in che riga sono
	begin
		//data la riga, posso calcolare in che posizione devo mettere le x:
		//pos_x = 122*640/480 = 163
		if((pos_x <= 10'd165 && pos_x>= 10'd161)
			 || (pos_x <= 10'd479 && pos_x>= 10'd475))
		 begin
			 crossGenerator = 12'b000100010001;
		 end

	end
	else if (pos_y == 123) // capisco in che riga sono
	begin
		//data la riga, posso calcolare in che posizione devo mettere le x:
		//pos_x = 123*640/480 = 164
		if((pos_x <= 10'd166 && pos_x>= 10'd162)
			 || (pos_x <= 10'd478 && pos_x>= 10'd474))
		 begin
			 crossGenerator = 12'b000100010001;
		 end

	end
	else if (pos_y == 124) // capisco in che riga sono
	begin
		//data la riga, posso calcolare in che posizione devo mettere le x:
		//pos_x = 124*640/480 = 165
		if((pos_x <= 10'd167 && pos_x>= 10'd163)
			 || (pos_x <= 10'd477 && pos_x>= 10'd473))
		 begin
			 crossGenerator = 12'b000100010001;
		 end

	end
	else if (pos_y == 125) // capisco in che riga sono
	begin
		//data la riga, posso calcolare in che posizione devo mettere le x:
		//pos_x = 125*640/480 = 167
		if((pos_x <= 10'd169 && pos_x>= 10'd165)
			 || (pos_x <= 10'd475 && pos_x>= 10'd471))
		 begin
			 crossGenerator = 12'b000100010001;
		 end

	end
	else if (pos_y == 126) // capisco in che riga sono
	begin
		//data la riga, posso calcolare in che posizione devo mettere le x:
		//pos_x = 126*640/480 = 168
		if((pos_x <= 10'd170 && pos_x>= 10'd166)
			 || (pos_x <= 10'd474 && pos_x>= 10'd470))
		 begin
			 crossGenerator = 12'b000100010001;
		 end

	end
	else if (pos_y == 127) // capisco in che riga sono
	begin
		//data la riga, posso calcolare in che posizione devo mettere le x:
		//pos_x = 127*640/480 = 169
		if((pos_x <= 10'd171 && pos_x>= 10'd167)
			 || (pos_x <= 10'd473 && pos_x>= 10'd469))
		 begin
			 crossGenerator = 12'b000100010001;
		 end

	end
	else if (pos_y == 128) // capisco in che riga sono
	begin
		//data la riga, posso calcolare in che posizione devo mettere le x:
		//pos_x = 128*640/480 = 171
		if((pos_x <= 10'd173 && pos_x>= 10'd169)
			 || (pos_x <= 10'd471 && pos_x>= 10'd467))
		 begin
			 crossGenerator = 12'b000100010001;
		 end

	end
	else if (pos_y == 129) // capisco in che riga sono
	begin
		//data la riga, posso calcolare in che posizione devo mettere le x:
		//pos_x = 129*640/480 = 172
		if((pos_x <= 10'd174 && pos_x>= 10'd170)
			 || (pos_x <= 10'd470 && pos_x>= 10'd466))
		 begin
			 crossGenerator = 12'b000100010001;
		 end

	end
	else if (pos_y == 130) // capisco in che riga sono
	begin
		//data la riga, posso calcolare in che posizione devo mettere le x:
		//pos_x = 130*640/480 = 173
		if((pos_x <= 10'd175 && pos_x>= 10'd171)
			 || (pos_x <= 10'd469 && pos_x>= 10'd465))
		 begin
			 crossGenerator = 12'b000100010001;
		 end

	end
	else if (pos_y == 131) // capisco in che riga sono
	begin
		//data la riga, posso calcolare in che posizione devo mettere le x:
		//pos_x = 131*640/480 = 175
		if((pos_x <= 10'd177 && pos_x>= 10'd173)
			 || (pos_x <= 10'd467 && pos_x>= 10'd463))
		 begin
			 crossGenerator = 12'b000100010001;
		 end

	end
	else if (pos_y == 132) // capisco in che riga sono
	begin
		//data la riga, posso calcolare in che posizione devo mettere le x:
		//pos_x = 132*640/480 = 176
		if((pos_x <= 10'd178 && pos_x>= 10'd174)
			 || (pos_x <= 10'd466 && pos_x>= 10'd462))
		 begin
			 crossGenerator = 12'b000100010001;
		 end

	end
	else if (pos_y == 133) // capisco in che riga sono
	begin
		//data la riga, posso calcolare in che posizione devo mettere le x:
		//pos_x = 133*640/480 = 177
		if((pos_x <= 10'd179 && pos_x>= 10'd175)
			 || (pos_x <= 10'd465 && pos_x>= 10'd461))
		 begin
			 crossGenerator = 12'b000100010001;
		 end

	end
	else if (pos_y == 134) // capisco in che riga sono
	begin
		//data la riga, posso calcolare in che posizione devo mettere le x:
		//pos_x = 134*640/480 = 179
		if((pos_x <= 10'd181 && pos_x>= 10'd177)
			 || (pos_x <= 10'd463 && pos_x>= 10'd459))
		 begin
			 crossGenerator = 12'b000100010001;
		 end

	end
	else if (pos_y == 135) // capisco in che riga sono
	begin
		//data la riga, posso calcolare in che posizione devo mettere le x:
		//pos_x = 135*640/480 = 180
		if((pos_x <= 10'd182 && pos_x>= 10'd178)
			 || (pos_x <= 10'd462 && pos_x>= 10'd458))
		 begin
			 crossGenerator = 12'b000100010001;
		 end

	end
	else if (pos_y == 136) // capisco in che riga sono
	begin
		//data la riga, posso calcolare in che posizione devo mettere le x:
		//pos_x = 136*640/480 = 181
		if((pos_x <= 10'd183 && pos_x>= 10'd179)
			 || (pos_x <= 10'd461 && pos_x>= 10'd457))
		 begin
			 crossGenerator = 12'b000100010001;
		 end

	end
	else if (pos_y == 137) // capisco in che riga sono
	begin
		//data la riga, posso calcolare in che posizione devo mettere le x:
		//pos_x = 137*640/480 = 183
		if((pos_x <= 10'd185 && pos_x>= 10'd181)
			 || (pos_x <= 10'd459 && pos_x>= 10'd455))
		 begin
			 crossGenerator = 12'b000100010001;
		 end

	end
	else if (pos_y == 138) // capisco in che riga sono
	begin
		//data la riga, posso calcolare in che posizione devo mettere le x:
		//pos_x = 138*640/480 = 184
		if((pos_x <= 10'd186 && pos_x>= 10'd182)
			 || (pos_x <= 10'd458 && pos_x>= 10'd454))
		 begin
			 crossGenerator = 12'b000100010001;
		 end

	end
	else if (pos_y == 139) // capisco in che riga sono
	begin
		//data la riga, posso calcolare in che posizione devo mettere le x:
		//pos_x = 139*640/480 = 185
		if((pos_x <= 10'd187 && pos_x>= 10'd183)
			 || (pos_x <= 10'd457 && pos_x>= 10'd453))
		 begin
			 crossGenerator = 12'b000100010001;
		 end

	end
	else if (pos_y == 140) // capisco in che riga sono
	begin
		//data la riga, posso calcolare in che posizione devo mettere le x:
		//pos_x = 140*640/480 = 187
		if((pos_x <= 10'd189 && pos_x>= 10'd185)
			 || (pos_x <= 10'd455 && pos_x>= 10'd451))
		 begin
			 crossGenerator = 12'b000100010001;
		 end

	end
	else if (pos_y == 141) // capisco in che riga sono
	begin
		//data la riga, posso calcolare in che posizione devo mettere le x:
		//pos_x = 141*640/480 = 188
		if((pos_x <= 10'd190 && pos_x>= 10'd186)
			 || (pos_x <= 10'd454 && pos_x>= 10'd450))
		 begin
			 crossGenerator = 12'b000100010001;
		 end

	end
	else if (pos_y == 142) // capisco in che riga sono
	begin
		//data la riga, posso calcolare in che posizione devo mettere le x:
		//pos_x = 142*640/480 = 189
		if((pos_x <= 10'd191 && pos_x>= 10'd187)
			 || (pos_x <= 10'd453 && pos_x>= 10'd449))
		 begin
			 crossGenerator = 12'b000100010001;
		 end

	end
	else if (pos_y == 143) // capisco in che riga sono
	begin
		//data la riga, posso calcolare in che posizione devo mettere le x:
		//pos_x = 143*640/480 = 191
		if((pos_x <= 10'd193 && pos_x>= 10'd189)
			 || (pos_x <= 10'd451 && pos_x>= 10'd447))
		 begin
			 crossGenerator = 12'b000100010001;
		 end

	end
	else if (pos_y == 144) // capisco in che riga sono
	begin
		//data la riga, posso calcolare in che posizione devo mettere le x:
		//pos_x = 144*640/480 = 192
		if((pos_x <= 10'd194 && pos_x>= 10'd190)
			 || (pos_x <= 10'd450 && pos_x>= 10'd446))
		 begin
			 crossGenerator = 12'b000100010001;
		 end

	end
	else if (pos_y == 145) // capisco in che riga sono
	begin
		//data la riga, posso calcolare in che posizione devo mettere le x:
		//pos_x = 145*640/480 = 193
		if((pos_x <= 10'd195 && pos_x>= 10'd191)
			 || (pos_x <= 10'd449 && pos_x>= 10'd445))
		 begin
			 crossGenerator = 12'b000100010001;
		 end

	end
	else if (pos_y == 146) // capisco in che riga sono
	begin
		//data la riga, posso calcolare in che posizione devo mettere le x:
		//pos_x = 146*640/480 = 195
		if((pos_x <= 10'd197 && pos_x>= 10'd193)
			 || (pos_x <= 10'd447 && pos_x>= 10'd443))
		 begin
			 crossGenerator = 12'b000100010001;
		 end

	end
	else if (pos_y == 147) // capisco in che riga sono
	begin
		//data la riga, posso calcolare in che posizione devo mettere le x:
		//pos_x = 147*640/480 = 196
		if((pos_x <= 10'd198 && pos_x>= 10'd194)
			 || (pos_x <= 10'd446 && pos_x>= 10'd442))
		 begin
			 crossGenerator = 12'b000100010001;
		 end

	end
	else if (pos_y == 148) // capisco in che riga sono
	begin
		//data la riga, posso calcolare in che posizione devo mettere le x:
		//pos_x = 148*640/480 = 197
		if((pos_x <= 10'd199 && pos_x>= 10'd195)
			 || (pos_x <= 10'd445 && pos_x>= 10'd441))
		 begin
			 crossGenerator = 12'b000100010001;
		 end

	end
	else if (pos_y == 149) // capisco in che riga sono
	begin
		//data la riga, posso calcolare in che posizione devo mettere le x:
		//pos_x = 149*640/480 = 199
		if((pos_x <= 10'd201 && pos_x>= 10'd197)
			 || (pos_x <= 10'd443 && pos_x>= 10'd439))
		 begin
			 crossGenerator = 12'b000100010001;
		 end

	end
	else if (pos_y == 150) // capisco in che riga sono
	begin
		//data la riga, posso calcolare in che posizione devo mettere le x:
		//pos_x = 150*640/480 = 200
		if((pos_x <= 10'd202 && pos_x>= 10'd198)
			 || (pos_x <= 10'd442 && pos_x>= 10'd438))
		 begin
			 crossGenerator = 12'b000100010001;
		 end

	end
	else if (pos_y == 151) // capisco in che riga sono
	begin
		//data la riga, posso calcolare in che posizione devo mettere le x:
		//pos_x = 151*640/480 = 201
		if((pos_x <= 10'd203 && pos_x>= 10'd199)
			 || (pos_x <= 10'd441 && pos_x>= 10'd437))
		 begin
			 crossGenerator = 12'b000100010001;
		 end

	end
	else if (pos_y == 152) // capisco in che riga sono
	begin
		//data la riga, posso calcolare in che posizione devo mettere le x:
		//pos_x = 152*640/480 = 203
		if((pos_x <= 10'd205 && pos_x>= 10'd201)
			 || (pos_x <= 10'd439 && pos_x>= 10'd435))
		 begin
			 crossGenerator = 12'b000100010001;
		 end

	end
	else if (pos_y == 153) // capisco in che riga sono
	begin
		//data la riga, posso calcolare in che posizione devo mettere le x:
		//pos_x = 153*640/480 = 204
		if((pos_x <= 10'd206 && pos_x>= 10'd202)
			 || (pos_x <= 10'd438 && pos_x>= 10'd434))
		 begin
			 crossGenerator = 12'b000100010001;
		 end

	end
	else if (pos_y == 154) // capisco in che riga sono
	begin
		//data la riga, posso calcolare in che posizione devo mettere le x:
		//pos_x = 154*640/480 = 205
		if((pos_x <= 10'd207 && pos_x>= 10'd203)
			 || (pos_x <= 10'd437 && pos_x>= 10'd433))
		 begin
			 crossGenerator = 12'b000100010001;
		 end

	end
	else if (pos_y == 155) // capisco in che riga sono
	begin
		//data la riga, posso calcolare in che posizione devo mettere le x:
		//pos_x = 155*640/480 = 207
		if((pos_x <= 10'd209 && pos_x>= 10'd205)
			 || (pos_x <= 10'd435 && pos_x>= 10'd431))
		 begin
			 crossGenerator = 12'b000100010001;
		 end

	end
	else if (pos_y == 156) // capisco in che riga sono
	begin
		//data la riga, posso calcolare in che posizione devo mettere le x:
		//pos_x = 156*640/480 = 208
		if((pos_x <= 10'd210 && pos_x>= 10'd206)
			 || (pos_x <= 10'd434 && pos_x>= 10'd430))
		 begin
			 crossGenerator = 12'b000100010001;
		 end

	end
	else if (pos_y == 157) // capisco in che riga sono
	begin
		//data la riga, posso calcolare in che posizione devo mettere le x:
		//pos_x = 157*640/480 = 209
		if((pos_x <= 10'd211 && pos_x>= 10'd207)
			 || (pos_x <= 10'd433 && pos_x>= 10'd429))
		 begin
			 crossGenerator = 12'b000100010001;
		 end

	end
	else if (pos_y == 158) // capisco in che riga sono
	begin
		//data la riga, posso calcolare in che posizione devo mettere le x:
		//pos_x = 158*640/480 = 211
		if((pos_x <= 10'd213 && pos_x>= 10'd209)
			 || (pos_x <= 10'd431 && pos_x>= 10'd427))
		 begin
			 crossGenerator = 12'b000100010001;
		 end

	end
	else if (pos_y == 159) // capisco in che riga sono
	begin
		//data la riga, posso calcolare in che posizione devo mettere le x:
		//pos_x = 159*640/480 = 212
		if((pos_x <= 10'd214 && pos_x>= 10'd210)
			 || (pos_x <= 10'd430 && pos_x>= 10'd426))
		 begin
			 crossGenerator = 12'b000100010001;
		 end

	end
	else if (pos_y == 160) // capisco in che riga sono
	begin
		//data la riga, posso calcolare in che posizione devo mettere le x:
		//pos_x = 160*640/480 = 213
		if((pos_x <= 10'd215 && pos_x>= 10'd211)
			 || (pos_x <= 10'd429 && pos_x>= 10'd425))
		 begin
			 crossGenerator = 12'b000100010001;
		 end

	end
	else if (pos_y == 161) // capisco in che riga sono
	begin
		//data la riga, posso calcolare in che posizione devo mettere le x:
		//pos_x = 161*640/480 = 215
		if((pos_x <= 10'd217 && pos_x>= 10'd213)
			 || (pos_x <= 10'd427 && pos_x>= 10'd423))
		 begin
			 crossGenerator = 12'b000100010001;
		 end

	end
	else if (pos_y == 162) // capisco in che riga sono
	begin
		//data la riga, posso calcolare in che posizione devo mettere le x:
		//pos_x = 162*640/480 = 216
		if((pos_x <= 10'd218 && pos_x>= 10'd214)
			 || (pos_x <= 10'd426 && pos_x>= 10'd422))
		 begin
			 crossGenerator = 12'b000100010001;
		 end

	end
	else if (pos_y == 163) // capisco in che riga sono
	begin
		//data la riga, posso calcolare in che posizione devo mettere le x:
		//pos_x = 163*640/480 = 217
		if((pos_x <= 10'd219 && pos_x>= 10'd215)
			 || (pos_x <= 10'd425 && pos_x>= 10'd421))
		 begin
			 crossGenerator = 12'b000100010001;
		 end

	end
	else if (pos_y == 164) // capisco in che riga sono
	begin
		//data la riga, posso calcolare in che posizione devo mettere le x:
		//pos_x = 164*640/480 = 219
		if((pos_x <= 10'd221 && pos_x>= 10'd217)
			 || (pos_x <= 10'd423 && pos_x>= 10'd419))
		 begin
			 crossGenerator = 12'b000100010001;
		 end

	end
	else if (pos_y == 165) // capisco in che riga sono
	begin
		//data la riga, posso calcolare in che posizione devo mettere le x:
		//pos_x = 165*640/480 = 220
		if((pos_x <= 10'd222 && pos_x>= 10'd218)
			 || (pos_x <= 10'd422 && pos_x>= 10'd418))
		 begin
			 crossGenerator = 12'b000100010001;
		 end

	end
	else if (pos_y == 166) // capisco in che riga sono
	begin
		//data la riga, posso calcolare in che posizione devo mettere le x:
		//pos_x = 166*640/480 = 221
		if((pos_x <= 10'd223 && pos_x>= 10'd219)
			 || (pos_x <= 10'd421 && pos_x>= 10'd417))
		 begin
			 crossGenerator = 12'b000100010001;
		 end

	end
	else if (pos_y == 167) // capisco in che riga sono
	begin
		//data la riga, posso calcolare in che posizione devo mettere le x:
		//pos_x = 167*640/480 = 223
		if((pos_x <= 10'd225 && pos_x>= 10'd221)
			 || (pos_x <= 10'd419 && pos_x>= 10'd415))
		 begin
			 crossGenerator = 12'b000100010001;
		 end

	end
	else if (pos_y == 168) // capisco in che riga sono
	begin
		//data la riga, posso calcolare in che posizione devo mettere le x:
		//pos_x = 168*640/480 = 224
		if((pos_x <= 10'd226 && pos_x>= 10'd222)
			 || (pos_x <= 10'd418 && pos_x>= 10'd414))
		 begin
			 crossGenerator = 12'b000100010001;
		 end

	end
	else if (pos_y == 169) // capisco in che riga sono
	begin
		//data la riga, posso calcolare in che posizione devo mettere le x:
		//pos_x = 169*640/480 = 225
		if((pos_x <= 10'd227 && pos_x>= 10'd223)
			 || (pos_x <= 10'd417 && pos_x>= 10'd413))
		 begin
			 crossGenerator = 12'b000100010001;
		 end

	end
	else if (pos_y == 170) // capisco in che riga sono
	begin
		//data la riga, posso calcolare in che posizione devo mettere le x:
		//pos_x = 170*640/480 = 227
		if((pos_x <= 10'd229 && pos_x>= 10'd225)
			 || (pos_x <= 10'd415 && pos_x>= 10'd411))
		 begin
			 crossGenerator = 12'b000100010001;
		 end

	end
	else if (pos_y == 171) // capisco in che riga sono
	begin
		//data la riga, posso calcolare in che posizione devo mettere le x:
		//pos_x = 171*640/480 = 228
		if((pos_x <= 10'd230 && pos_x>= 10'd226)
			 || (pos_x <= 10'd414 && pos_x>= 10'd410))
		 begin
			 crossGenerator = 12'b000100010001;
		 end

	end
	else if (pos_y == 172) // capisco in che riga sono
	begin
		//data la riga, posso calcolare in che posizione devo mettere le x:
		//pos_x = 172*640/480 = 229
		if((pos_x <= 10'd231 && pos_x>= 10'd227)
			 || (pos_x <= 10'd413 && pos_x>= 10'd409))
		 begin
			 crossGenerator = 12'b000100010001;
		 end

	end
	else if (pos_y == 173) // capisco in che riga sono
	begin
		//data la riga, posso calcolare in che posizione devo mettere le x:
		//pos_x = 173*640/480 = 231
		if((pos_x <= 10'd233 && pos_x>= 10'd229)
			 || (pos_x <= 10'd411 && pos_x>= 10'd407))
		 begin
			 crossGenerator = 12'b000100010001;
		 end

	end
	else if (pos_y == 174) // capisco in che riga sono
	begin
		//data la riga, posso calcolare in che posizione devo mettere le x:
		//pos_x = 174*640/480 = 232
		if((pos_x <= 10'd234 && pos_x>= 10'd230)
			 || (pos_x <= 10'd410 && pos_x>= 10'd406))
		 begin
			 crossGenerator = 12'b000100010001;
		 end

	end
	else if (pos_y == 175) // capisco in che riga sono
	begin
		//data la riga, posso calcolare in che posizione devo mettere le x:
		//pos_x = 175*640/480 = 233
		if((pos_x <= 10'd235 && pos_x>= 10'd231)
			 || (pos_x <= 10'd409 && pos_x>= 10'd405))
		 begin
			 crossGenerator = 12'b000100010001;
		 end

	end
	else if (pos_y == 176) // capisco in che riga sono
	begin
		//data la riga, posso calcolare in che posizione devo mettere le x:
		//pos_x = 176*640/480 = 235
		if((pos_x <= 10'd237 && pos_x>= 10'd233)
			 || (pos_x <= 10'd407 && pos_x>= 10'd403))
		 begin
			 crossGenerator = 12'b000100010001;
		 end

	end
	else if (pos_y == 177) // capisco in che riga sono
	begin
		//data la riga, posso calcolare in che posizione devo mettere le x:
		//pos_x = 177*640/480 = 236
		if((pos_x <= 10'd238 && pos_x>= 10'd234)
			 || (pos_x <= 10'd406 && pos_x>= 10'd402))
		 begin
			 crossGenerator = 12'b000100010001;
		 end

	end
	else if (pos_y == 178) // capisco in che riga sono
	begin
		//data la riga, posso calcolare in che posizione devo mettere le x:
		//pos_x = 178*640/480 = 237
		if((pos_x <= 10'd239 && pos_x>= 10'd235)
			 || (pos_x <= 10'd405 && pos_x>= 10'd401))
		 begin
			 crossGenerator = 12'b000100010001;
		 end

	end
	else if (pos_y == 179) // capisco in che riga sono
	begin
		//data la riga, posso calcolare in che posizione devo mettere le x:
		//pos_x = 179*640/480 = 239
		if((pos_x <= 10'd241 && pos_x>= 10'd237)
			 || (pos_x <= 10'd403 && pos_x>= 10'd399))
		 begin
			 crossGenerator = 12'b000100010001;
		 end

	end
	else if (pos_y == 180) // capisco in che riga sono
	begin
		//data la riga, posso calcolare in che posizione devo mettere le x:
		//pos_x = 180*640/480 = 240
		if((pos_x <= 10'd242 && pos_x>= 10'd238)
			 || (pos_x <= 10'd402 && pos_x>= 10'd398))
		 begin
			 crossGenerator = 12'b000100010001;
		 end

	end
	else if (pos_y == 181) // capisco in che riga sono
	begin
		//data la riga, posso calcolare in che posizione devo mettere le x:
		//pos_x = 181*640/480 = 241
		if((pos_x <= 10'd243 && pos_x>= 10'd239)
			 || (pos_x <= 10'd401 && pos_x>= 10'd397))
		 begin
			 crossGenerator = 12'b000100010001;
		 end

	end
	else if (pos_y == 182) // capisco in che riga sono
	begin
		//data la riga, posso calcolare in che posizione devo mettere le x:
		//pos_x = 182*640/480 = 243
		if((pos_x <= 10'd245 && pos_x>= 10'd241)
			 || (pos_x <= 10'd399 && pos_x>= 10'd395))
		 begin
			 crossGenerator = 12'b000100010001;
		 end

	end
	else if (pos_y == 183) // capisco in che riga sono
	begin
		//data la riga, posso calcolare in che posizione devo mettere le x:
		//pos_x = 183*640/480 = 244
		if((pos_x <= 10'd246 && pos_x>= 10'd242)
			 || (pos_x <= 10'd398 && pos_x>= 10'd394))
		 begin
			 crossGenerator = 12'b000100010001;
		 end

	end
	else if (pos_y == 184) // capisco in che riga sono
	begin
		//data la riga, posso calcolare in che posizione devo mettere le x:
		//pos_x = 184*640/480 = 245
		if((pos_x <= 10'd247 && pos_x>= 10'd243)
			 || (pos_x <= 10'd397 && pos_x>= 10'd393))
		 begin
			 crossGenerator = 12'b000100010001;
		 end

	end
	else if (pos_y == 185) // capisco in che riga sono
	begin
		//data la riga, posso calcolare in che posizione devo mettere le x:
		//pos_x = 185*640/480 = 247
		if((pos_x <= 10'd249 && pos_x>= 10'd245)
			 || (pos_x <= 10'd395 && pos_x>= 10'd391))
		 begin
			 crossGenerator = 12'b000100010001;
		 end

	end
	else if (pos_y == 186) // capisco in che riga sono
	begin
		//data la riga, posso calcolare in che posizione devo mettere le x:
		//pos_x = 186*640/480 = 248
		if((pos_x <= 10'd250 && pos_x>= 10'd246)
			 || (pos_x <= 10'd394 && pos_x>= 10'd390))
		 begin
			 crossGenerator = 12'b000100010001;
		 end

	end
	else if (pos_y == 187) // capisco in che riga sono
	begin
		//data la riga, posso calcolare in che posizione devo mettere le x:
		//pos_x = 187*640/480 = 249
		if((pos_x <= 10'd251 && pos_x>= 10'd247)
			 || (pos_x <= 10'd393 && pos_x>= 10'd389))
		 begin
			 crossGenerator = 12'b000100010001;
		 end

	end
	else if (pos_y == 188) // capisco in che riga sono
	begin
		//data la riga, posso calcolare in che posizione devo mettere le x:
		//pos_x = 188*640/480 = 251
		if((pos_x <= 10'd253 && pos_x>= 10'd249)
			 || (pos_x <= 10'd391 && pos_x>= 10'd387))
		 begin
			 crossGenerator = 12'b000100010001;
		 end

	end
	else if (pos_y == 189) // capisco in che riga sono
	begin
		//data la riga, posso calcolare in che posizione devo mettere le x:
		//pos_x = 189*640/480 = 252
		if((pos_x <= 10'd254 && pos_x>= 10'd250)
			 || (pos_x <= 10'd390 && pos_x>= 10'd386))
		 begin
			 crossGenerator = 12'b000100010001;
		 end

	end
	else if (pos_y == 190) // capisco in che riga sono
	begin
		//data la riga, posso calcolare in che posizione devo mettere le x:
		//pos_x = 190*640/480 = 253
		if((pos_x <= 10'd255 && pos_x>= 10'd251)
			 || (pos_x <= 10'd389 && pos_x>= 10'd385))
		 begin
			 crossGenerator = 12'b000100010001;
		 end

	end
	else if (pos_y == 191) // capisco in che riga sono
	begin
		//data la riga, posso calcolare in che posizione devo mettere le x:
		//pos_x = 191*640/480 = 255
		if((pos_x <= 10'd257 && pos_x>= 10'd253)
			 || (pos_x <= 10'd387 && pos_x>= 10'd383))
		 begin
			 crossGenerator = 12'b000100010001;
		 end

	end
	else if (pos_y == 192) // capisco in che riga sono
	begin
		//data la riga, posso calcolare in che posizione devo mettere le x:
		//pos_x = 192*640/480 = 256
		if((pos_x <= 10'd258 && pos_x>= 10'd254)
			 || (pos_x <= 10'd386 && pos_x>= 10'd382))
		 begin
			 crossGenerator = 12'b000100010001;
		 end

	end
	else if (pos_y == 193) // capisco in che riga sono
	begin
		//data la riga, posso calcolare in che posizione devo mettere le x:
		//pos_x = 193*640/480 = 257
		if((pos_x <= 10'd259 && pos_x>= 10'd255)
			 || (pos_x <= 10'd385 && pos_x>= 10'd381))
		 begin
			 crossGenerator = 12'b000100010001;
		 end

	end
	else if (pos_y == 194) // capisco in che riga sono
	begin
		//data la riga, posso calcolare in che posizione devo mettere le x:
		//pos_x = 194*640/480 = 259
		if((pos_x <= 10'd261 && pos_x>= 10'd257)
			 || (pos_x <= 10'd383 && pos_x>= 10'd379))
		 begin
			 crossGenerator = 12'b000100010001;
		 end

	end
	else if (pos_y == 195) // capisco in che riga sono
	begin
		//data la riga, posso calcolare in che posizione devo mettere le x:
		//pos_x = 195*640/480 = 260
		if((pos_x <= 10'd262 && pos_x>= 10'd258)
			 || (pos_x <= 10'd382 && pos_x>= 10'd378))
		 begin
			 crossGenerator = 12'b000100010001;
		 end

	end
	else if (pos_y == 196) // capisco in che riga sono
	begin
		//data la riga, posso calcolare in che posizione devo mettere le x:
		//pos_x = 196*640/480 = 261
		if((pos_x <= 10'd263 && pos_x>= 10'd259)
			 || (pos_x <= 10'd381 && pos_x>= 10'd377))
		 begin
			 crossGenerator = 12'b000100010001;
		 end

	end
	else if (pos_y == 197) // capisco in che riga sono
	begin
		//data la riga, posso calcolare in che posizione devo mettere le x:
		//pos_x = 197*640/480 = 263
		if((pos_x <= 10'd265 && pos_x>= 10'd261)
			 || (pos_x <= 10'd379 && pos_x>= 10'd375))
		 begin
			 crossGenerator = 12'b000100010001;
		 end

	end
	else if (pos_y == 198) // capisco in che riga sono
	begin
		//data la riga, posso calcolare in che posizione devo mettere le x:
		//pos_x = 198*640/480 = 264
		if((pos_x <= 10'd266 && pos_x>= 10'd262)
			 || (pos_x <= 10'd378 && pos_x>= 10'd374))
		 begin
			 crossGenerator = 12'b000100010001;
		 end

	end
	else if (pos_y == 199) // capisco in che riga sono
	begin
		//data la riga, posso calcolare in che posizione devo mettere le x:
		//pos_x = 199*640/480 = 265
		if((pos_x <= 10'd267 && pos_x>= 10'd263)
			 || (pos_x <= 10'd377 && pos_x>= 10'd373))
		 begin
			 crossGenerator = 12'b000100010001;
		 end

	end
	else if (pos_y == 200) // capisco in che riga sono
	begin
		//data la riga, posso calcolare in che posizione devo mettere le x:
		//pos_x = 200*640/480 = 267
		if((pos_x <= 10'd269 && pos_x>= 10'd265)
			 || (pos_x <= 10'd375 && pos_x>= 10'd371))
		 begin
			 crossGenerator = 12'b000100010001;
		 end

	end
	else if (pos_y == 201) // capisco in che riga sono
	begin
		//data la riga, posso calcolare in che posizione devo mettere le x:
		//pos_x = 201*640/480 = 268
		if((pos_x <= 10'd270 && pos_x>= 10'd266)
			 || (pos_x <= 10'd374 && pos_x>= 10'd370))
		 begin
			 crossGenerator = 12'b000100010001;
		 end

	end
	else if (pos_y == 202) // capisco in che riga sono
	begin
		//data la riga, posso calcolare in che posizione devo mettere le x:
		//pos_x = 202*640/480 = 269
		if((pos_x <= 10'd271 && pos_x>= 10'd267)
			 || (pos_x <= 10'd373 && pos_x>= 10'd369))
		 begin
			 crossGenerator = 12'b000100010001;
		 end

	end
	else if (pos_y == 203) // capisco in che riga sono
	begin
		//data la riga, posso calcolare in che posizione devo mettere le x:
		//pos_x = 203*640/480 = 271
		if((pos_x <= 10'd273 && pos_x>= 10'd269)
			 || (pos_x <= 10'd371 && pos_x>= 10'd367))
		 begin
			 crossGenerator = 12'b000100010001;
		 end

	end
	else if (pos_y == 204) // capisco in che riga sono
	begin
		//data la riga, posso calcolare in che posizione devo mettere le x:
		//pos_x = 204*640/480 = 272
		if((pos_x <= 10'd274 && pos_x>= 10'd270)
			 || (pos_x <= 10'd370 && pos_x>= 10'd366))
		 begin
			 crossGenerator = 12'b000100010001;
		 end

	end
	else if (pos_y == 205) // capisco in che riga sono
	begin
		//data la riga, posso calcolare in che posizione devo mettere le x:
		//pos_x = 205*640/480 = 273
		if((pos_x <= 10'd275 && pos_x>= 10'd271)
			 || (pos_x <= 10'd369 && pos_x>= 10'd365))
		 begin
			 crossGenerator = 12'b000100010001;
		 end

	end
	else if (pos_y == 206) // capisco in che riga sono
	begin
		//data la riga, posso calcolare in che posizione devo mettere le x:
		//pos_x = 206*640/480 = 275
		if((pos_x <= 10'd277 && pos_x>= 10'd273)
			 || (pos_x <= 10'd367 && pos_x>= 10'd363))
		 begin
			 crossGenerator = 12'b000100010001;
		 end

	end
	else if (pos_y == 207) // capisco in che riga sono
	begin
		//data la riga, posso calcolare in che posizione devo mettere le x:
		//pos_x = 207*640/480 = 276
		if((pos_x <= 10'd278 && pos_x>= 10'd274)
			 || (pos_x <= 10'd366 && pos_x>= 10'd362))
		 begin
			 crossGenerator = 12'b000100010001;
		 end

	end
	else if (pos_y == 208) // capisco in che riga sono
	begin
		//data la riga, posso calcolare in che posizione devo mettere le x:
		//pos_x = 208*640/480 = 277
		if((pos_x <= 10'd279 && pos_x>= 10'd275)
			 || (pos_x <= 10'd365 && pos_x>= 10'd361))
		 begin
			 crossGenerator = 12'b000100010001;
		 end

	end
	else if (pos_y == 209) // capisco in che riga sono
	begin
		//data la riga, posso calcolare in che posizione devo mettere le x:
		//pos_x = 209*640/480 = 279
		if((pos_x <= 10'd281 && pos_x>= 10'd277)
			 || (pos_x <= 10'd363 && pos_x>= 10'd359))
		 begin
			 crossGenerator = 12'b000100010001;
		 end

	end
	else if (pos_y == 210) // capisco in che riga sono
	begin
		//data la riga, posso calcolare in che posizione devo mettere le x:
		//pos_x = 210*640/480 = 280
		if((pos_x <= 10'd282 && pos_x>= 10'd278)
			 || (pos_x <= 10'd362 && pos_x>= 10'd358))
		 begin
			 crossGenerator = 12'b000100010001;
		 end

	end
	else if (pos_y == 211) // capisco in che riga sono
	begin
		//data la riga, posso calcolare in che posizione devo mettere le x:
		//pos_x = 211*640/480 = 281
		if((pos_x <= 10'd283 && pos_x>= 10'd279)
			 || (pos_x <= 10'd361 && pos_x>= 10'd357))
		 begin
			 crossGenerator = 12'b000100010001;
		 end

	end
	else if (pos_y == 212) // capisco in che riga sono
	begin
		//data la riga, posso calcolare in che posizione devo mettere le x:
		//pos_x = 212*640/480 = 283
		if((pos_x <= 10'd285 && pos_x>= 10'd281)
			 || (pos_x <= 10'd359 && pos_x>= 10'd355))
		 begin
			 crossGenerator = 12'b000100010001;
		 end

	end
	else if (pos_y == 213) // capisco in che riga sono
	begin
		//data la riga, posso calcolare in che posizione devo mettere le x:
		//pos_x = 213*640/480 = 284
		if((pos_x <= 10'd286 && pos_x>= 10'd282)
			 || (pos_x <= 10'd358 && pos_x>= 10'd354))
		 begin
			 crossGenerator = 12'b000100010001;
		 end

	end
	else if (pos_y == 214) // capisco in che riga sono
	begin
		//data la riga, posso calcolare in che posizione devo mettere le x:
		//pos_x = 214*640/480 = 285
		if((pos_x <= 10'd287 && pos_x>= 10'd283)
			 || (pos_x <= 10'd357 && pos_x>= 10'd353))
		 begin
			 crossGenerator = 12'b000100010001;
		 end

	end
	else if (pos_y == 215) // capisco in che riga sono
	begin
		//data la riga, posso calcolare in che posizione devo mettere le x:
		//pos_x = 215*640/480 = 287
		if((pos_x <= 10'd289 && pos_x>= 10'd285)
			 || (pos_x <= 10'd355 && pos_x>= 10'd351))
		 begin
			 crossGenerator = 12'b000100010001;
		 end

	end
	else if (pos_y == 216) // capisco in che riga sono
	begin
		//data la riga, posso calcolare in che posizione devo mettere le x:
		//pos_x = 216*640/480 = 288
		if((pos_x <= 10'd290 && pos_x>= 10'd286)
			 || (pos_x <= 10'd354 && pos_x>= 10'd350))
		 begin
			 crossGenerator = 12'b000100010001;
		 end

	end
	else if (pos_y == 217) // capisco in che riga sono
	begin
		//data la riga, posso calcolare in che posizione devo mettere le x:
		//pos_x = 217*640/480 = 289
		if((pos_x <= 10'd291 && pos_x>= 10'd287)
			 || (pos_x <= 10'd353 && pos_x>= 10'd349))
		 begin
			 crossGenerator = 12'b000100010001;
		 end

	end
	else if (pos_y == 218) // capisco in che riga sono
	begin
		//data la riga, posso calcolare in che posizione devo mettere le x:
		//pos_x = 218*640/480 = 291
		if((pos_x <= 10'd293 && pos_x>= 10'd289)
			 || (pos_x <= 10'd351 && pos_x>= 10'd347))
		 begin
			 crossGenerator = 12'b000100010001;
		 end

	end
	else if (pos_y == 219) // capisco in che riga sono
	begin
		//data la riga, posso calcolare in che posizione devo mettere le x:
		//pos_x = 219*640/480 = 292
		if((pos_x <= 10'd294 && pos_x>= 10'd290)
			 || (pos_x <= 10'd350 && pos_x>= 10'd346))
		 begin
			 crossGenerator = 12'b000100010001;
		 end

	end
	else if (pos_y == 220) // capisco in che riga sono
	begin
		//data la riga, posso calcolare in che posizione devo mettere le x:
		//pos_x = 220*640/480 = 293
		if((pos_x <= 10'd295 && pos_x>= 10'd291)
			 || (pos_x <= 10'd349 && pos_x>= 10'd345))
		 begin
			 crossGenerator = 12'b000100010001;
		 end

	end
	else if (pos_y == 221) // capisco in che riga sono
	begin
		//data la riga, posso calcolare in che posizione devo mettere le x:
		//pos_x = 221*640/480 = 295
		if((pos_x <= 10'd297 && pos_x>= 10'd293)
			 || (pos_x <= 10'd347 && pos_x>= 10'd343))
		 begin
			 crossGenerator = 12'b000100010001;
		 end

	end
	else if (pos_y == 222) // capisco in che riga sono
	begin
		//data la riga, posso calcolare in che posizione devo mettere le x:
		//pos_x = 222*640/480 = 296
		if((pos_x <= 10'd298 && pos_x>= 10'd294)
			 || (pos_x <= 10'd346 && pos_x>= 10'd342))
		 begin
			 crossGenerator = 12'b000100010001;
		 end

	end
	else if (pos_y == 223) // capisco in che riga sono
	begin
		//data la riga, posso calcolare in che posizione devo mettere le x:
		//pos_x = 223*640/480 = 297
		if((pos_x <= 10'd299 && pos_x>= 10'd295)
			 || (pos_x <= 10'd345 && pos_x>= 10'd341))
		 begin
			 crossGenerator = 12'b000100010001;
		 end

	end
	else if (pos_y == 224) // capisco in che riga sono
	begin
		//data la riga, posso calcolare in che posizione devo mettere le x:
		//pos_x = 224*640/480 = 299
		if((pos_x <= 10'd301 && pos_x>= 10'd297)
			 || (pos_x <= 10'd343 && pos_x>= 10'd339))
		 begin
			 crossGenerator = 12'b000100010001;
		 end

	end
	else if (pos_y == 225) // capisco in che riga sono
	begin
		//data la riga, posso calcolare in che posizione devo mettere le x:
		//pos_x = 225*640/480 = 300
		if((pos_x <= 10'd302 && pos_x>= 10'd298)
			 || (pos_x <= 10'd342 && pos_x>= 10'd338))
		 begin
			 crossGenerator = 12'b000100010001;
		 end

	end
	else if (pos_y == 226) // capisco in che riga sono
	begin
		//data la riga, posso calcolare in che posizione devo mettere le x:
		//pos_x = 226*640/480 = 301
		if((pos_x <= 10'd303 && pos_x>= 10'd299)
			 || (pos_x <= 10'd341 && pos_x>= 10'd337))
		 begin
			 crossGenerator = 12'b000100010001;
		 end

	end
	else if (pos_y == 227) // capisco in che riga sono
	begin
		//data la riga, posso calcolare in che posizione devo mettere le x:
		//pos_x = 227*640/480 = 303
		if((pos_x <= 10'd305 && pos_x>= 10'd301)
			 || (pos_x <= 10'd339 && pos_x>= 10'd335))
		 begin
			 crossGenerator = 12'b000100010001;
		 end

	end
	else if (pos_y == 228) // capisco in che riga sono
	begin
		//data la riga, posso calcolare in che posizione devo mettere le x:
		//pos_x = 228*640/480 = 304
		if((pos_x <= 10'd306 && pos_x>= 10'd302)
			 || (pos_x <= 10'd338 && pos_x>= 10'd334))
		 begin
			 crossGenerator = 12'b000100010001;
		 end

	end
	else if (pos_y == 229) // capisco in che riga sono
	begin
		//data la riga, posso calcolare in che posizione devo mettere le x:
		//pos_x = 229*640/480 = 305
		if((pos_x <= 10'd307 && pos_x>= 10'd303)
			 || (pos_x <= 10'd337 && pos_x>= 10'd333))
		 begin
			 crossGenerator = 12'b000100010001;
		 end

	end
	else if (pos_y == 230) // capisco in che riga sono
	begin
		//data la riga, posso calcolare in che posizione devo mettere le x:
		//pos_x = 230*640/480 = 307
		if((pos_x <= 10'd309 && pos_x>= 10'd305)
			 || (pos_x <= 10'd335 && pos_x>= 10'd331))
		 begin
			 crossGenerator = 12'b000100010001;
		 end

	end
	else if (pos_y == 231) // capisco in che riga sono
	begin
		//data la riga, posso calcolare in che posizione devo mettere le x:
		//pos_x = 231*640/480 = 308
		if((pos_x <= 10'd310 && pos_x>= 10'd306)
			 || (pos_x <= 10'd334 && pos_x>= 10'd330))
		 begin
			 crossGenerator = 12'b000100010001;
		 end

	end
	else if (pos_y == 232) // capisco in che riga sono
	begin
		//data la riga, posso calcolare in che posizione devo mettere le x:
		//pos_x = 232*640/480 = 309
		if((pos_x <= 10'd311 && pos_x>= 10'd307)
			 || (pos_x <= 10'd333 && pos_x>= 10'd329))
		 begin
			 crossGenerator = 12'b000100010001;
		 end

	end
	else if (pos_y == 233) // capisco in che riga sono
	begin
		//data la riga, posso calcolare in che posizione devo mettere le x:
		//pos_x = 233*640/480 = 311
		if((pos_x <= 10'd313 && pos_x>= 10'd309)
			 || (pos_x <= 10'd331 && pos_x>= 10'd327))
		 begin
			 crossGenerator = 12'b000100010001;
		 end

	end
	else if (pos_y == 234) // capisco in che riga sono
	begin
		//data la riga, posso calcolare in che posizione devo mettere le x:
		//pos_x = 234*640/480 = 312
		if((pos_x <= 10'd314 && pos_x>= 10'd310)
			 || (pos_x <= 10'd330 && pos_x>= 10'd326))
		 begin
			 crossGenerator = 12'b000100010001;
		 end

	end
	else if (pos_y == 235) // capisco in che riga sono
	begin
		//data la riga, posso calcolare in che posizione devo mettere le x:
		//pos_x = 235*640/480 = 313
		if((pos_x <= 10'd315 && pos_x>= 10'd311)
			 || (pos_x <= 10'd329 && pos_x>= 10'd325))
		 begin
			 crossGenerator = 12'b000100010001;
		 end

	end
	else if (pos_y == 236) // capisco in che riga sono
	begin
		//data la riga, posso calcolare in che posizione devo mettere le x:
		//pos_x = 236*640/480 = 315
		if((pos_x <= 10'd317 && pos_x>= 10'd313)
			 || (pos_x <= 10'd327 && pos_x>= 10'd323))
		 begin
			 crossGenerator = 12'b000100010001;
		 end

	end
	else if (pos_y == 237) // capisco in che riga sono
	begin
		//data la riga, posso calcolare in che posizione devo mettere le x:
		//pos_x = 237*640/480 = 316
		if((pos_x <= 10'd318 && pos_x>= 10'd314)
			 || (pos_x <= 10'd326 && pos_x>= 10'd322))
		 begin
			 crossGenerator = 12'b000100010001;
		 end

	end
	else if (pos_y == 238) // capisco in che riga sono
	begin
		//data la riga, posso calcolare in che posizione devo mettere le x:
		//pos_x = 238*640/480 = 317
		if((pos_x <= 10'd319 && pos_x>= 10'd315)
			 || (pos_x <= 10'd325 && pos_x>= 10'd321))
		 begin
			 crossGenerator = 12'b000100010001;
		 end

	end
	else if (pos_y == 239) // capisco in che riga sono
	begin
		//data la riga, posso calcolare in che posizione devo mettere le x:
		//pos_x = 239*640/480 = 319
		if((pos_x <= 10'd321 && pos_x>= 10'd317)
			 || (pos_x <= 10'd323 && pos_x>= 10'd319))
		 begin
			 crossGenerator = 12'b000100010001;
		 end

	end
	else if (pos_y == 240) // capisco in che riga sono
	begin
		//data la riga, posso calcolare in che posizione devo mettere le x:
		//pos_x = 240*640/480 = 320
		if((pos_x <= 10'd322 && pos_x>= 10'd318)
			 || (pos_x <= 10'd322 && pos_x>= 10'd318))
		 begin
			 crossGenerator = 12'b000100010001;
		 end

	end
	else if (pos_y == 241) // capisco in che riga sono
	begin
		//data la riga, posso calcolare in che posizione devo mettere le x:
		//pos_x = 241*640/480 = 321
		if((pos_x <= 10'd323 && pos_x>= 10'd319)
			 || (pos_x <= 10'd321 && pos_x>= 10'd317))
		 begin
			 crossGenerator = 12'b000100010001;
		 end

	end
	else if (pos_y == 242) // capisco in che riga sono
	begin
		//data la riga, posso calcolare in che posizione devo mettere le x:
		//pos_x = 242*640/480 = 323
		if((pos_x <= 10'd325 && pos_x>= 10'd321)
			 || (pos_x <= 10'd319 && pos_x>= 10'd315))
		 begin
			 crossGenerator = 12'b000100010001;
		 end

	end
	else if (pos_y == 243) // capisco in che riga sono
	begin
		//data la riga, posso calcolare in che posizione devo mettere le x:
		//pos_x = 243*640/480 = 324
		if((pos_x <= 10'd326 && pos_x>= 10'd322)
			 || (pos_x <= 10'd318 && pos_x>= 10'd314))
		 begin
			 crossGenerator = 12'b000100010001;
		 end

	end
	else if (pos_y == 244) // capisco in che riga sono
	begin
		//data la riga, posso calcolare in che posizione devo mettere le x:
		//pos_x = 244*640/480 = 325
		if((pos_x <= 10'd327 && pos_x>= 10'd323)
			 || (pos_x <= 10'd317 && pos_x>= 10'd313))
		 begin
			 crossGenerator = 12'b000100010001;
		 end

	end
	else if (pos_y == 245) // capisco in che riga sono
	begin
		//data la riga, posso calcolare in che posizione devo mettere le x:
		//pos_x = 245*640/480 = 327
		if((pos_x <= 10'd329 && pos_x>= 10'd325)
			 || (pos_x <= 10'd315 && pos_x>= 10'd311))
		 begin
			 crossGenerator = 12'b000100010001;
		 end

	end
	else if (pos_y == 246) // capisco in che riga sono
	begin
		//data la riga, posso calcolare in che posizione devo mettere le x:
		//pos_x = 246*640/480 = 328
		if((pos_x <= 10'd330 && pos_x>= 10'd326)
			 || (pos_x <= 10'd314 && pos_x>= 10'd310))
		 begin
			 crossGenerator = 12'b000100010001;
		 end

	end
	else if (pos_y == 247) // capisco in che riga sono
	begin
		//data la riga, posso calcolare in che posizione devo mettere le x:
		//pos_x = 247*640/480 = 329
		if((pos_x <= 10'd331 && pos_x>= 10'd327)
			 || (pos_x <= 10'd313 && pos_x>= 10'd309))
		 begin
			 crossGenerator = 12'b000100010001;
		 end

	end
	else if (pos_y == 248) // capisco in che riga sono
	begin
		//data la riga, posso calcolare in che posizione devo mettere le x:
		//pos_x = 248*640/480 = 331
		if((pos_x <= 10'd333 && pos_x>= 10'd329)
			 || (pos_x <= 10'd311 && pos_x>= 10'd307))
		 begin
			 crossGenerator = 12'b000100010001;
		 end

	end
	else if (pos_y == 249) // capisco in che riga sono
	begin
		//data la riga, posso calcolare in che posizione devo mettere le x:
		//pos_x = 249*640/480 = 332
		if((pos_x <= 10'd334 && pos_x>= 10'd330)
			 || (pos_x <= 10'd310 && pos_x>= 10'd306))
		 begin
			 crossGenerator = 12'b000100010001;
		 end

	end
	else if (pos_y == 250) // capisco in che riga sono
	begin
		//data la riga, posso calcolare in che posizione devo mettere le x:
		//pos_x = 250*640/480 = 333
		if((pos_x <= 10'd335 && pos_x>= 10'd331)
			 || (pos_x <= 10'd309 && pos_x>= 10'd305))
		 begin
			 crossGenerator = 12'b000100010001;
		 end

	end
	else if (pos_y == 251) // capisco in che riga sono
	begin
		//data la riga, posso calcolare in che posizione devo mettere le x:
		//pos_x = 251*640/480 = 335
		if((pos_x <= 10'd337 && pos_x>= 10'd333)
			 || (pos_x <= 10'd307 && pos_x>= 10'd303))
		 begin
			 crossGenerator = 12'b000100010001;
		 end

	end
	else if (pos_y == 252) // capisco in che riga sono
	begin
		//data la riga, posso calcolare in che posizione devo mettere le x:
		//pos_x = 252*640/480 = 336
		if((pos_x <= 10'd338 && pos_x>= 10'd334)
			 || (pos_x <= 10'd306 && pos_x>= 10'd302))
		 begin
			 crossGenerator = 12'b000100010001;
		 end

	end
	else if (pos_y == 253) // capisco in che riga sono
	begin
		//data la riga, posso calcolare in che posizione devo mettere le x:
		//pos_x = 253*640/480 = 337
		if((pos_x <= 10'd339 && pos_x>= 10'd335)
			 || (pos_x <= 10'd305 && pos_x>= 10'd301))
		 begin
			 crossGenerator = 12'b000100010001;
		 end

	end
	else if (pos_y == 254) // capisco in che riga sono
	begin
		//data la riga, posso calcolare in che posizione devo mettere le x:
		//pos_x = 254*640/480 = 339
		if((pos_x <= 10'd341 && pos_x>= 10'd337)
			 || (pos_x <= 10'd303 && pos_x>= 10'd299))
		 begin
			 crossGenerator = 12'b000100010001;
		 end

	end
	else if (pos_y == 255) // capisco in che riga sono
	begin
		//data la riga, posso calcolare in che posizione devo mettere le x:
		//pos_x = 255*640/480 = 340
		if((pos_x <= 10'd342 && pos_x>= 10'd338)
			 || (pos_x <= 10'd302 && pos_x>= 10'd298))
		 begin
			 crossGenerator = 12'b000100010001;
		 end

	end
	else if (pos_y == 256) // capisco in che riga sono
	begin
		//data la riga, posso calcolare in che posizione devo mettere le x:
		//pos_x = 256*640/480 = 341
		if((pos_x <= 10'd343 && pos_x>= 10'd339)
			 || (pos_x <= 10'd301 && pos_x>= 10'd297))
		 begin
			 crossGenerator = 12'b000100010001;
		 end

	end
	else if (pos_y == 257) // capisco in che riga sono
	begin
		//data la riga, posso calcolare in che posizione devo mettere le x:
		//pos_x = 257*640/480 = 343
		if((pos_x <= 10'd345 && pos_x>= 10'd341)
			 || (pos_x <= 10'd299 && pos_x>= 10'd295))
		 begin
			 crossGenerator = 12'b000100010001;
		 end

	end
	else if (pos_y == 258) // capisco in che riga sono
	begin
		//data la riga, posso calcolare in che posizione devo mettere le x:
		//pos_x = 258*640/480 = 344
		if((pos_x <= 10'd346 && pos_x>= 10'd342)
			 || (pos_x <= 10'd298 && pos_x>= 10'd294))
		 begin
			 crossGenerator = 12'b000100010001;
		 end

	end
	else if (pos_y == 259) // capisco in che riga sono
	begin
		//data la riga, posso calcolare in che posizione devo mettere le x:
		//pos_x = 259*640/480 = 345
		if((pos_x <= 10'd347 && pos_x>= 10'd343)
			 || (pos_x <= 10'd297 && pos_x>= 10'd293))
		 begin
			 crossGenerator = 12'b000100010001;
		 end

	end
	else if (pos_y == 260) // capisco in che riga sono
	begin
		//data la riga, posso calcolare in che posizione devo mettere le x:
		//pos_x = 260*640/480 = 347
		if((pos_x <= 10'd349 && pos_x>= 10'd345)
			 || (pos_x <= 10'd295 && pos_x>= 10'd291))
		 begin
			 crossGenerator = 12'b000100010001;
		 end

	end
	else if (pos_y == 261) // capisco in che riga sono
	begin
		//data la riga, posso calcolare in che posizione devo mettere le x:
		//pos_x = 261*640/480 = 348
		if((pos_x <= 10'd350 && pos_x>= 10'd346)
			 || (pos_x <= 10'd294 && pos_x>= 10'd290))
		 begin
			 crossGenerator = 12'b000100010001;
		 end

	end
	else if (pos_y == 262) // capisco in che riga sono
	begin
		//data la riga, posso calcolare in che posizione devo mettere le x:
		//pos_x = 262*640/480 = 349
		if((pos_x <= 10'd351 && pos_x>= 10'd347)
			 || (pos_x <= 10'd293 && pos_x>= 10'd289))
		 begin
			 crossGenerator = 12'b000100010001;
		 end

	end
	else if (pos_y == 263) // capisco in che riga sono
	begin
		//data la riga, posso calcolare in che posizione devo mettere le x:
		//pos_x = 263*640/480 = 351
		if((pos_x <= 10'd353 && pos_x>= 10'd349)
			 || (pos_x <= 10'd291 && pos_x>= 10'd287))
		 begin
			 crossGenerator = 12'b000100010001;
		 end

	end
	else if (pos_y == 264) // capisco in che riga sono
	begin
		//data la riga, posso calcolare in che posizione devo mettere le x:
		//pos_x = 264*640/480 = 352
		if((pos_x <= 10'd354 && pos_x>= 10'd350)
			 || (pos_x <= 10'd290 && pos_x>= 10'd286))
		 begin
			 crossGenerator = 12'b000100010001;
		 end

	end
	else if (pos_y == 265) // capisco in che riga sono
	begin
		//data la riga, posso calcolare in che posizione devo mettere le x:
		//pos_x = 265*640/480 = 353
		if((pos_x <= 10'd355 && pos_x>= 10'd351)
			 || (pos_x <= 10'd289 && pos_x>= 10'd285))
		 begin
			 crossGenerator = 12'b000100010001;
		 end

	end
	else if (pos_y == 266) // capisco in che riga sono
	begin
		//data la riga, posso calcolare in che posizione devo mettere le x:
		//pos_x = 266*640/480 = 355
		if((pos_x <= 10'd357 && pos_x>= 10'd353)
			 || (pos_x <= 10'd287 && pos_x>= 10'd283))
		 begin
			 crossGenerator = 12'b000100010001;
		 end

	end
	else if (pos_y == 267) // capisco in che riga sono
	begin
		//data la riga, posso calcolare in che posizione devo mettere le x:
		//pos_x = 267*640/480 = 356
		if((pos_x <= 10'd358 && pos_x>= 10'd354)
			 || (pos_x <= 10'd286 && pos_x>= 10'd282))
		 begin
			 crossGenerator = 12'b000100010001;
		 end

	end
	else if (pos_y == 268) // capisco in che riga sono
	begin
		//data la riga, posso calcolare in che posizione devo mettere le x:
		//pos_x = 268*640/480 = 357
		if((pos_x <= 10'd359 && pos_x>= 10'd355)
			 || (pos_x <= 10'd285 && pos_x>= 10'd281))
		 begin
			 crossGenerator = 12'b000100010001;
		 end

	end
	else if (pos_y == 269) // capisco in che riga sono
	begin
		//data la riga, posso calcolare in che posizione devo mettere le x:
		//pos_x = 269*640/480 = 359
		if((pos_x <= 10'd361 && pos_x>= 10'd357)
			 || (pos_x <= 10'd283 && pos_x>= 10'd279))
		 begin
			 crossGenerator = 12'b000100010001;
		 end

	end
	else if (pos_y == 270) // capisco in che riga sono
	begin
		//data la riga, posso calcolare in che posizione devo mettere le x:
		//pos_x = 270*640/480 = 360
		if((pos_x <= 10'd362 && pos_x>= 10'd358)
			 || (pos_x <= 10'd282 && pos_x>= 10'd278))
		 begin
			 crossGenerator = 12'b000100010001;
		 end

	end
	else if (pos_y == 271) // capisco in che riga sono
	begin
		//data la riga, posso calcolare in che posizione devo mettere le x:
		//pos_x = 271*640/480 = 361
		if((pos_x <= 10'd363 && pos_x>= 10'd359)
			 || (pos_x <= 10'd281 && pos_x>= 10'd277))
		 begin
			 crossGenerator = 12'b000100010001;
		 end

	end
	else if (pos_y == 272) // capisco in che riga sono
	begin
		//data la riga, posso calcolare in che posizione devo mettere le x:
		//pos_x = 272*640/480 = 363
		if((pos_x <= 10'd365 && pos_x>= 10'd361)
			 || (pos_x <= 10'd279 && pos_x>= 10'd275))
		 begin
			 crossGenerator = 12'b000100010001;
		 end

	end
	else if (pos_y == 273) // capisco in che riga sono
	begin
		//data la riga, posso calcolare in che posizione devo mettere le x:
		//pos_x = 273*640/480 = 364
		if((pos_x <= 10'd366 && pos_x>= 10'd362)
			 || (pos_x <= 10'd278 && pos_x>= 10'd274))
		 begin
			 crossGenerator = 12'b000100010001;
		 end

	end
	else if (pos_y == 274) // capisco in che riga sono
	begin
		//data la riga, posso calcolare in che posizione devo mettere le x:
		//pos_x = 274*640/480 = 365
		if((pos_x <= 10'd367 && pos_x>= 10'd363)
			 || (pos_x <= 10'd277 && pos_x>= 10'd273))
		 begin
			 crossGenerator = 12'b000100010001;
		 end

	end
	else if (pos_y == 275) // capisco in che riga sono
	begin
		//data la riga, posso calcolare in che posizione devo mettere le x:
		//pos_x = 275*640/480 = 367
		if((pos_x <= 10'd369 && pos_x>= 10'd365)
			 || (pos_x <= 10'd275 && pos_x>= 10'd271))
		 begin
			 crossGenerator = 12'b000100010001;
		 end

	end
	else if (pos_y == 276) // capisco in che riga sono
	begin
		//data la riga, posso calcolare in che posizione devo mettere le x:
		//pos_x = 276*640/480 = 368
		if((pos_x <= 10'd370 && pos_x>= 10'd366)
			 || (pos_x <= 10'd274 && pos_x>= 10'd270))
		 begin
			 crossGenerator = 12'b000100010001;
		 end

	end
	else if (pos_y == 277) // capisco in che riga sono
	begin
		//data la riga, posso calcolare in che posizione devo mettere le x:
		//pos_x = 277*640/480 = 369
		if((pos_x <= 10'd371 && pos_x>= 10'd367)
			 || (pos_x <= 10'd273 && pos_x>= 10'd269))
		 begin
			 crossGenerator = 12'b000100010001;
		 end

	end
	else if (pos_y == 278) // capisco in che riga sono
	begin
		//data la riga, posso calcolare in che posizione devo mettere le x:
		//pos_x = 278*640/480 = 371
		if((pos_x <= 10'd373 && pos_x>= 10'd369)
			 || (pos_x <= 10'd271 && pos_x>= 10'd267))
		 begin
			 crossGenerator = 12'b000100010001;
		 end

	end
	else if (pos_y == 279) // capisco in che riga sono
	begin
		//data la riga, posso calcolare in che posizione devo mettere le x:
		//pos_x = 279*640/480 = 372
		if((pos_x <= 10'd374 && pos_x>= 10'd370)
			 || (pos_x <= 10'd270 && pos_x>= 10'd266))
		 begin
			 crossGenerator = 12'b000100010001;
		 end

	end
	else if (pos_y == 280) // capisco in che riga sono
	begin
		//data la riga, posso calcolare in che posizione devo mettere le x:
		//pos_x = 280*640/480 = 373
		if((pos_x <= 10'd375 && pos_x>= 10'd371)
			 || (pos_x <= 10'd269 && pos_x>= 10'd265))
		 begin
			 crossGenerator = 12'b000100010001;
		 end

	end
	else if (pos_y == 281) // capisco in che riga sono
	begin
		//data la riga, posso calcolare in che posizione devo mettere le x:
		//pos_x = 281*640/480 = 375
		if((pos_x <= 10'd377 && pos_x>= 10'd373)
			 || (pos_x <= 10'd267 && pos_x>= 10'd263))
		 begin
			 crossGenerator = 12'b000100010001;
		 end

	end
	else if (pos_y == 282) // capisco in che riga sono
	begin
		//data la riga, posso calcolare in che posizione devo mettere le x:
		//pos_x = 282*640/480 = 376
		if((pos_x <= 10'd378 && pos_x>= 10'd374)
			 || (pos_x <= 10'd266 && pos_x>= 10'd262))
		 begin
			 crossGenerator = 12'b000100010001;
		 end

	end
	else if (pos_y == 283) // capisco in che riga sono
	begin
		//data la riga, posso calcolare in che posizione devo mettere le x:
		//pos_x = 283*640/480 = 377
		if((pos_x <= 10'd379 && pos_x>= 10'd375)
			 || (pos_x <= 10'd265 && pos_x>= 10'd261))
		 begin
			 crossGenerator = 12'b000100010001;
		 end

	end
	else if (pos_y == 284) // capisco in che riga sono
	begin
		//data la riga, posso calcolare in che posizione devo mettere le x:
		//pos_x = 284*640/480 = 379
		if((pos_x <= 10'd381 && pos_x>= 10'd377)
			 || (pos_x <= 10'd263 && pos_x>= 10'd259))
		 begin
			 crossGenerator = 12'b000100010001;
		 end

	end
	else if (pos_y == 285) // capisco in che riga sono
	begin
		//data la riga, posso calcolare in che posizione devo mettere le x:
		//pos_x = 285*640/480 = 380
		if((pos_x <= 10'd382 && pos_x>= 10'd378)
			 || (pos_x <= 10'd262 && pos_x>= 10'd258))
		 begin
			 crossGenerator = 12'b000100010001;
		 end

	end
	else if (pos_y == 286) // capisco in che riga sono
	begin
		//data la riga, posso calcolare in che posizione devo mettere le x:
		//pos_x = 286*640/480 = 381
		if((pos_x <= 10'd383 && pos_x>= 10'd379)
			 || (pos_x <= 10'd261 && pos_x>= 10'd257))
		 begin
			 crossGenerator = 12'b000100010001;
		 end

	end
	else if (pos_y == 287) // capisco in che riga sono
	begin
		//data la riga, posso calcolare in che posizione devo mettere le x:
		//pos_x = 287*640/480 = 383
		if((pos_x <= 10'd385 && pos_x>= 10'd381)
			 || (pos_x <= 10'd259 && pos_x>= 10'd255))
		 begin
			 crossGenerator = 12'b000100010001;
		 end

	end
	else if (pos_y == 288) // capisco in che riga sono
	begin
		//data la riga, posso calcolare in che posizione devo mettere le x:
		//pos_x = 288*640/480 = 384
		if((pos_x <= 10'd386 && pos_x>= 10'd382)
			 || (pos_x <= 10'd258 && pos_x>= 10'd254))
		 begin
			 crossGenerator = 12'b000100010001;
		 end

	end
	else if (pos_y == 289) // capisco in che riga sono
	begin
		//data la riga, posso calcolare in che posizione devo mettere le x:
		//pos_x = 289*640/480 = 385
		if((pos_x <= 10'd387 && pos_x>= 10'd383)
			 || (pos_x <= 10'd257 && pos_x>= 10'd253))
		 begin
			 crossGenerator = 12'b000100010001;
		 end

	end
	else if (pos_y == 290) // capisco in che riga sono
	begin
		//data la riga, posso calcolare in che posizione devo mettere le x:
		//pos_x = 290*640/480 = 387
		if((pos_x <= 10'd389 && pos_x>= 10'd385)
			 || (pos_x <= 10'd255 && pos_x>= 10'd251))
		 begin
			 crossGenerator = 12'b000100010001;
		 end

	end
	else if (pos_y == 291) // capisco in che riga sono
	begin
		//data la riga, posso calcolare in che posizione devo mettere le x:
		//pos_x = 291*640/480 = 388
		if((pos_x <= 10'd390 && pos_x>= 10'd386)
			 || (pos_x <= 10'd254 && pos_x>= 10'd250))
		 begin
			 crossGenerator = 12'b000100010001;
		 end

	end
	else if (pos_y == 292) // capisco in che riga sono
	begin
		//data la riga, posso calcolare in che posizione devo mettere le x:
		//pos_x = 292*640/480 = 389
		if((pos_x <= 10'd391 && pos_x>= 10'd387)
			 || (pos_x <= 10'd253 && pos_x>= 10'd249))
		 begin
			 crossGenerator = 12'b000100010001;
		 end

	end
	else if (pos_y == 293) // capisco in che riga sono
	begin
		//data la riga, posso calcolare in che posizione devo mettere le x:
		//pos_x = 293*640/480 = 391
		if((pos_x <= 10'd393 && pos_x>= 10'd389)
			 || (pos_x <= 10'd251 && pos_x>= 10'd247))
		 begin
			 crossGenerator = 12'b000100010001;
		 end

	end
	else if (pos_y == 294) // capisco in che riga sono
	begin
		//data la riga, posso calcolare in che posizione devo mettere le x:
		//pos_x = 294*640/480 = 392
		if((pos_x <= 10'd394 && pos_x>= 10'd390)
			 || (pos_x <= 10'd250 && pos_x>= 10'd246))
		 begin
			 crossGenerator = 12'b000100010001;
		 end

	end
	else if (pos_y == 295) // capisco in che riga sono
	begin
		//data la riga, posso calcolare in che posizione devo mettere le x:
		//pos_x = 295*640/480 = 393
		if((pos_x <= 10'd395 && pos_x>= 10'd391)
			 || (pos_x <= 10'd249 && pos_x>= 10'd245))
		 begin
			 crossGenerator = 12'b000100010001;
		 end

	end
	else if (pos_y == 296) // capisco in che riga sono
	begin
		//data la riga, posso calcolare in che posizione devo mettere le x:
		//pos_x = 296*640/480 = 395
		if((pos_x <= 10'd397 && pos_x>= 10'd393)
			 || (pos_x <= 10'd247 && pos_x>= 10'd243))
		 begin
			 crossGenerator = 12'b000100010001;
		 end

	end
	else if (pos_y == 297) // capisco in che riga sono
	begin
		//data la riga, posso calcolare in che posizione devo mettere le x:
		//pos_x = 297*640/480 = 396
		if((pos_x <= 10'd398 && pos_x>= 10'd394)
			 || (pos_x <= 10'd246 && pos_x>= 10'd242))
		 begin
			 crossGenerator = 12'b000100010001;
		 end

	end
	else if (pos_y == 298) // capisco in che riga sono
	begin
		//data la riga, posso calcolare in che posizione devo mettere le x:
		//pos_x = 298*640/480 = 397
		if((pos_x <= 10'd399 && pos_x>= 10'd395)
			 || (pos_x <= 10'd245 && pos_x>= 10'd241))
		 begin
			 crossGenerator = 12'b000100010001;
		 end

	end
	else if (pos_y == 299) // capisco in che riga sono
	begin
		//data la riga, posso calcolare in che posizione devo mettere le x:
		//pos_x = 299*640/480 = 399
		if((pos_x <= 10'd401 && pos_x>= 10'd397)
			 || (pos_x <= 10'd243 && pos_x>= 10'd239))
		 begin
			 crossGenerator = 12'b000100010001;
		 end

	end
	else if (pos_y == 300) // capisco in che riga sono
	begin
		//data la riga, posso calcolare in che posizione devo mettere le x:
		//pos_x = 300*640/480 = 400
		if((pos_x <= 10'd402 && pos_x>= 10'd398)
			 || (pos_x <= 10'd242 && pos_x>= 10'd238))
		 begin
			 crossGenerator = 12'b000100010001;
		 end

	end
	else if (pos_y == 301) // capisco in che riga sono
	begin
		//data la riga, posso calcolare in che posizione devo mettere le x:
		//pos_x = 301*640/480 = 401
		if((pos_x <= 10'd403 && pos_x>= 10'd399)
			 || (pos_x <= 10'd241 && pos_x>= 10'd237))
		 begin
			 crossGenerator = 12'b000100010001;
		 end

	end
	else if (pos_y == 302) // capisco in che riga sono
	begin
		//data la riga, posso calcolare in che posizione devo mettere le x:
		//pos_x = 302*640/480 = 403
		if((pos_x <= 10'd405 && pos_x>= 10'd401)
			 || (pos_x <= 10'd239 && pos_x>= 10'd235))
		 begin
			 crossGenerator = 12'b000100010001;
		 end

	end
	else if (pos_y == 303) // capisco in che riga sono
	begin
		//data la riga, posso calcolare in che posizione devo mettere le x:
		//pos_x = 303*640/480 = 404
		if((pos_x <= 10'd406 && pos_x>= 10'd402)
			 || (pos_x <= 10'd238 && pos_x>= 10'd234))
		 begin
			 crossGenerator = 12'b000100010001;
		 end

	end
	else if (pos_y == 304) // capisco in che riga sono
	begin
		//data la riga, posso calcolare in che posizione devo mettere le x:
		//pos_x = 304*640/480 = 405
		if((pos_x <= 10'd407 && pos_x>= 10'd403)
			 || (pos_x <= 10'd237 && pos_x>= 10'd233))
		 begin
			 crossGenerator = 12'b000100010001;
		 end

	end
	else if (pos_y == 305) // capisco in che riga sono
	begin
		//data la riga, posso calcolare in che posizione devo mettere le x:
		//pos_x = 305*640/480 = 407
		if((pos_x <= 10'd409 && pos_x>= 10'd405)
			 || (pos_x <= 10'd235 && pos_x>= 10'd231))
		 begin
			 crossGenerator = 12'b000100010001;
		 end

	end
	else if (pos_y == 306) // capisco in che riga sono
	begin
		//data la riga, posso calcolare in che posizione devo mettere le x:
		//pos_x = 306*640/480 = 408
		if((pos_x <= 10'd410 && pos_x>= 10'd406)
			 || (pos_x <= 10'd234 && pos_x>= 10'd230))
		 begin
			 crossGenerator = 12'b000100010001;
		 end

	end
	else if (pos_y == 307) // capisco in che riga sono
	begin
		//data la riga, posso calcolare in che posizione devo mettere le x:
		//pos_x = 307*640/480 = 409
		if((pos_x <= 10'd411 && pos_x>= 10'd407)
			 || (pos_x <= 10'd233 && pos_x>= 10'd229))
		 begin
			 crossGenerator = 12'b000100010001;
		 end

	end
	else if (pos_y == 308) // capisco in che riga sono
	begin
		//data la riga, posso calcolare in che posizione devo mettere le x:
		//pos_x = 308*640/480 = 411
		if((pos_x <= 10'd413 && pos_x>= 10'd409)
			 || (pos_x <= 10'd231 && pos_x>= 10'd227))
		 begin
			 crossGenerator = 12'b000100010001;
		 end

	end
	else if (pos_y == 309) // capisco in che riga sono
	begin
		//data la riga, posso calcolare in che posizione devo mettere le x:
		//pos_x = 309*640/480 = 412
		if((pos_x <= 10'd414 && pos_x>= 10'd410)
			 || (pos_x <= 10'd230 && pos_x>= 10'd226))
		 begin
			 crossGenerator = 12'b000100010001;
		 end

	end
	else if (pos_y == 310) // capisco in che riga sono
	begin
		//data la riga, posso calcolare in che posizione devo mettere le x:
		//pos_x = 310*640/480 = 413
		if((pos_x <= 10'd415 && pos_x>= 10'd411)
			 || (pos_x <= 10'd229 && pos_x>= 10'd225))
		 begin
			 crossGenerator = 12'b000100010001;
		 end

	end
	else if (pos_y == 311) // capisco in che riga sono
	begin
		//data la riga, posso calcolare in che posizione devo mettere le x:
		//pos_x = 311*640/480 = 415
		if((pos_x <= 10'd417 && pos_x>= 10'd413)
			 || (pos_x <= 10'd227 && pos_x>= 10'd223))
		 begin
			 crossGenerator = 12'b000100010001;
		 end

	end
	else if (pos_y == 312) // capisco in che riga sono
	begin
		//data la riga, posso calcolare in che posizione devo mettere le x:
		//pos_x = 312*640/480 = 416
		if((pos_x <= 10'd418 && pos_x>= 10'd414)
			 || (pos_x <= 10'd226 && pos_x>= 10'd222))
		 begin
			 crossGenerator = 12'b000100010001;
		 end

	end
	else if (pos_y == 313) // capisco in che riga sono
	begin
		//data la riga, posso calcolare in che posizione devo mettere le x:
		//pos_x = 313*640/480 = 417
		if((pos_x <= 10'd419 && pos_x>= 10'd415)
			 || (pos_x <= 10'd225 && pos_x>= 10'd221))
		 begin
			 crossGenerator = 12'b000100010001;
		 end

	end
	else if (pos_y == 314) // capisco in che riga sono
	begin
		//data la riga, posso calcolare in che posizione devo mettere le x:
		//pos_x = 314*640/480 = 419
		if((pos_x <= 10'd421 && pos_x>= 10'd417)
			 || (pos_x <= 10'd223 && pos_x>= 10'd219))
		 begin
			 crossGenerator = 12'b000100010001;
		 end

	end
	else if (pos_y == 315) // capisco in che riga sono
	begin
		//data la riga, posso calcolare in che posizione devo mettere le x:
		//pos_x = 315*640/480 = 420
		if((pos_x <= 10'd422 && pos_x>= 10'd418)
			 || (pos_x <= 10'd222 && pos_x>= 10'd218))
		 begin
			 crossGenerator = 12'b000100010001;
		 end

	end
	else if (pos_y == 316) // capisco in che riga sono
	begin
		//data la riga, posso calcolare in che posizione devo mettere le x:
		//pos_x = 316*640/480 = 421
		if((pos_x <= 10'd423 && pos_x>= 10'd419)
			 || (pos_x <= 10'd221 && pos_x>= 10'd217))
		 begin
			 crossGenerator = 12'b000100010001;
		 end

	end
	else if (pos_y == 317) // capisco in che riga sono
	begin
		//data la riga, posso calcolare in che posizione devo mettere le x:
		//pos_x = 317*640/480 = 423
		if((pos_x <= 10'd425 && pos_x>= 10'd421)
			 || (pos_x <= 10'd219 && pos_x>= 10'd215))
		 begin
			 crossGenerator = 12'b000100010001;
		 end

	end
	else if (pos_y == 318) // capisco in che riga sono
	begin
		//data la riga, posso calcolare in che posizione devo mettere le x:
		//pos_x = 318*640/480 = 424
		if((pos_x <= 10'd426 && pos_x>= 10'd422)
			 || (pos_x <= 10'd218 && pos_x>= 10'd214))
		 begin
			 crossGenerator = 12'b000100010001;
		 end

	end
	else if (pos_y == 319) // capisco in che riga sono
	begin
		//data la riga, posso calcolare in che posizione devo mettere le x:
		//pos_x = 319*640/480 = 425
		if((pos_x <= 10'd427 && pos_x>= 10'd423)
			 || (pos_x <= 10'd217 && pos_x>= 10'd213))
		 begin
			 crossGenerator = 12'b000100010001;
		 end

	end
	else if (pos_y == 320) // capisco in che riga sono
	begin
		//data la riga, posso calcolare in che posizione devo mettere le x:
		//pos_x = 320*640/480 = 427
		if((pos_x <= 10'd429 && pos_x>= 10'd425)
			 || (pos_x <= 10'd215 && pos_x>= 10'd211))
		 begin
			 crossGenerator = 12'b000100010001;
		 end

	end
	else if (pos_y == 321) // capisco in che riga sono
	begin
		//data la riga, posso calcolare in che posizione devo mettere le x:
		//pos_x = 321*640/480 = 428
		if((pos_x <= 10'd430 && pos_x>= 10'd426)
			 || (pos_x <= 10'd214 && pos_x>= 10'd210))
		 begin
			 crossGenerator = 12'b000100010001;
		 end

	end
	else if (pos_y == 322) // capisco in che riga sono
	begin
		//data la riga, posso calcolare in che posizione devo mettere le x:
		//pos_x = 322*640/480 = 429
		if((pos_x <= 10'd431 && pos_x>= 10'd427)
			 || (pos_x <= 10'd213 && pos_x>= 10'd209))
		 begin
			 crossGenerator = 12'b000100010001;
		 end

	end
	else if (pos_y == 323) // capisco in che riga sono
	begin
		//data la riga, posso calcolare in che posizione devo mettere le x:
		//pos_x = 323*640/480 = 431
		if((pos_x <= 10'd433 && pos_x>= 10'd429)
			 || (pos_x <= 10'd211 && pos_x>= 10'd207))
		 begin
			 crossGenerator = 12'b000100010001;
		 end

	end
	else if (pos_y == 324) // capisco in che riga sono
	begin
		//data la riga, posso calcolare in che posizione devo mettere le x:
		//pos_x = 324*640/480 = 432
		if((pos_x <= 10'd434 && pos_x>= 10'd430)
			 || (pos_x <= 10'd210 && pos_x>= 10'd206))
		 begin
			 crossGenerator = 12'b000100010001;
		 end

	end
	else if (pos_y == 325) // capisco in che riga sono
	begin
		//data la riga, posso calcolare in che posizione devo mettere le x:
		//pos_x = 325*640/480 = 433
		if((pos_x <= 10'd435 && pos_x>= 10'd431)
			 || (pos_x <= 10'd209 && pos_x>= 10'd205))
		 begin
			 crossGenerator = 12'b000100010001;
		 end

	end
	else if (pos_y == 326) // capisco in che riga sono
	begin
		//data la riga, posso calcolare in che posizione devo mettere le x:
		//pos_x = 326*640/480 = 435
		if((pos_x <= 10'd437 && pos_x>= 10'd433)
			 || (pos_x <= 10'd207 && pos_x>= 10'd203))
		 begin
			 crossGenerator = 12'b000100010001;
		 end

	end
	else if (pos_y == 327) // capisco in che riga sono
	begin
		//data la riga, posso calcolare in che posizione devo mettere le x:
		//pos_x = 327*640/480 = 436
		if((pos_x <= 10'd438 && pos_x>= 10'd434)
			 || (pos_x <= 10'd206 && pos_x>= 10'd202))
		 begin
			 crossGenerator = 12'b000100010001;
		 end

	end
	else if (pos_y == 328) // capisco in che riga sono
	begin
		//data la riga, posso calcolare in che posizione devo mettere le x:
		//pos_x = 328*640/480 = 437
		if((pos_x <= 10'd439 && pos_x>= 10'd435)
			 || (pos_x <= 10'd205 && pos_x>= 10'd201))
		 begin
			 crossGenerator = 12'b000100010001;
		 end

	end
	else if (pos_y == 329) // capisco in che riga sono
	begin
		//data la riga, posso calcolare in che posizione devo mettere le x:
		//pos_x = 329*640/480 = 439
		if((pos_x <= 10'd441 && pos_x>= 10'd437)
			 || (pos_x <= 10'd203 && pos_x>= 10'd199))
		 begin
			 crossGenerator = 12'b000100010001;
		 end

	end
	else if (pos_y == 330) // capisco in che riga sono
	begin
		//data la riga, posso calcolare in che posizione devo mettere le x:
		//pos_x = 330*640/480 = 440
		if((pos_x <= 10'd442 && pos_x>= 10'd438)
			 || (pos_x <= 10'd202 && pos_x>= 10'd198))
		 begin
			 crossGenerator = 12'b000100010001;
		 end

	end
	else if (pos_y == 331) // capisco in che riga sono
	begin
		//data la riga, posso calcolare in che posizione devo mettere le x:
		//pos_x = 331*640/480 = 441
		if((pos_x <= 10'd443 && pos_x>= 10'd439)
			 || (pos_x <= 10'd201 && pos_x>= 10'd197))
		 begin
			 crossGenerator = 12'b000100010001;
		 end

	end
	else if (pos_y == 332) // capisco in che riga sono
	begin
		//data la riga, posso calcolare in che posizione devo mettere le x:
		//pos_x = 332*640/480 = 443
		if((pos_x <= 10'd445 && pos_x>= 10'd441)
			 || (pos_x <= 10'd199 && pos_x>= 10'd195))
		 begin
			 crossGenerator = 12'b000100010001;
		 end

	end
	else if (pos_y == 333) // capisco in che riga sono
	begin
		//data la riga, posso calcolare in che posizione devo mettere le x:
		//pos_x = 333*640/480 = 444
		if((pos_x <= 10'd446 && pos_x>= 10'd442)
			 || (pos_x <= 10'd198 && pos_x>= 10'd194))
		 begin
			 crossGenerator = 12'b000100010001;
		 end

	end
	else if (pos_y == 334) // capisco in che riga sono
	begin
		//data la riga, posso calcolare in che posizione devo mettere le x:
		//pos_x = 334*640/480 = 445
		if((pos_x <= 10'd447 && pos_x>= 10'd443)
			 || (pos_x <= 10'd197 && pos_x>= 10'd193))
		 begin
			 crossGenerator = 12'b000100010001;
		 end

	end
	else if (pos_y == 335) // capisco in che riga sono
	begin
		//data la riga, posso calcolare in che posizione devo mettere le x:
		//pos_x = 335*640/480 = 447
		if((pos_x <= 10'd449 && pos_x>= 10'd445)
			 || (pos_x <= 10'd195 && pos_x>= 10'd191))
		 begin
			 crossGenerator = 12'b000100010001;
		 end

	end
	else if (pos_y == 336) // capisco in che riga sono
	begin
		//data la riga, posso calcolare in che posizione devo mettere le x:
		//pos_x = 336*640/480 = 448
		if((pos_x <= 10'd450 && pos_x>= 10'd446)
			 || (pos_x <= 10'd194 && pos_x>= 10'd190))
		 begin
			 crossGenerator = 12'b000100010001;
		 end

	end
	else if (pos_y == 337) // capisco in che riga sono
	begin
		//data la riga, posso calcolare in che posizione devo mettere le x:
		//pos_x = 337*640/480 = 449
		if((pos_x <= 10'd451 && pos_x>= 10'd447)
			 || (pos_x <= 10'd193 && pos_x>= 10'd189))
		 begin
			 crossGenerator = 12'b000100010001;
		 end

	end
	else if (pos_y == 338) // capisco in che riga sono
	begin
		//data la riga, posso calcolare in che posizione devo mettere le x:
		//pos_x = 338*640/480 = 451
		if((pos_x <= 10'd453 && pos_x>= 10'd449)
			 || (pos_x <= 10'd191 && pos_x>= 10'd187))
		 begin
			 crossGenerator = 12'b000100010001;
		 end

	end
	else if (pos_y == 339) // capisco in che riga sono
	begin
		//data la riga, posso calcolare in che posizione devo mettere le x:
		//pos_x = 339*640/480 = 452
		if((pos_x <= 10'd454 && pos_x>= 10'd450)
			 || (pos_x <= 10'd190 && pos_x>= 10'd186))
		 begin
			 crossGenerator = 12'b000100010001;
		 end

	end
	else if (pos_y == 340) // capisco in che riga sono
	begin
		//data la riga, posso calcolare in che posizione devo mettere le x:
		//pos_x = 340*640/480 = 453
		if((pos_x <= 10'd455 && pos_x>= 10'd451)
			 || (pos_x <= 10'd189 && pos_x>= 10'd185))
		 begin
			 crossGenerator = 12'b000100010001;
		 end

	end
	else if (pos_y == 341) // capisco in che riga sono
	begin
		//data la riga, posso calcolare in che posizione devo mettere le x:
		//pos_x = 341*640/480 = 455
		if((pos_x <= 10'd457 && pos_x>= 10'd453)
			 || (pos_x <= 10'd187 && pos_x>= 10'd183))
		 begin
			 crossGenerator = 12'b000100010001;
		 end

	end
	else if (pos_y == 342) // capisco in che riga sono
	begin
		//data la riga, posso calcolare in che posizione devo mettere le x:
		//pos_x = 342*640/480 = 456
		if((pos_x <= 10'd458 && pos_x>= 10'd454)
			 || (pos_x <= 10'd186 && pos_x>= 10'd182))
		 begin
			 crossGenerator = 12'b000100010001;
		 end

	end
	else if (pos_y == 343) // capisco in che riga sono
	begin
		//data la riga, posso calcolare in che posizione devo mettere le x:
		//pos_x = 343*640/480 = 457
		if((pos_x <= 10'd459 && pos_x>= 10'd455)
			 || (pos_x <= 10'd185 && pos_x>= 10'd181))
		 begin
			 crossGenerator = 12'b000100010001;
		 end

	end
	else if (pos_y == 344) // capisco in che riga sono
	begin
		//data la riga, posso calcolare in che posizione devo mettere le x:
		//pos_x = 344*640/480 = 459
		if((pos_x <= 10'd461 && pos_x>= 10'd457)
			 || (pos_x <= 10'd183 && pos_x>= 10'd179))
		 begin
			 crossGenerator = 12'b000100010001;
		 end

	end
	else if (pos_y == 345) // capisco in che riga sono
	begin
		//data la riga, posso calcolare in che posizione devo mettere le x:
		//pos_x = 345*640/480 = 460
		if((pos_x <= 10'd462 && pos_x>= 10'd458)
			 || (pos_x <= 10'd182 && pos_x>= 10'd178))
		 begin
			 crossGenerator = 12'b000100010001;
		 end

	end
	else if (pos_y == 346) // capisco in che riga sono
	begin
		//data la riga, posso calcolare in che posizione devo mettere le x:
		//pos_x = 346*640/480 = 461
		if((pos_x <= 10'd463 && pos_x>= 10'd459)
			 || (pos_x <= 10'd181 && pos_x>= 10'd177))
		 begin
			 crossGenerator = 12'b000100010001;
		 end

	end
	else if (pos_y == 347) // capisco in che riga sono
	begin
		//data la riga, posso calcolare in che posizione devo mettere le x:
		//pos_x = 347*640/480 = 463
		if((pos_x <= 10'd465 && pos_x>= 10'd461)
			 || (pos_x <= 10'd179 && pos_x>= 10'd175))
		 begin
			 crossGenerator = 12'b000100010001;
		 end

	end
	else if (pos_y == 348) // capisco in che riga sono
	begin
		//data la riga, posso calcolare in che posizione devo mettere le x:
		//pos_x = 348*640/480 = 464
		if((pos_x <= 10'd466 && pos_x>= 10'd462)
			 || (pos_x <= 10'd178 && pos_x>= 10'd174))
		 begin
			 crossGenerator = 12'b000100010001;
		 end

	end
	else if (pos_y == 349) // capisco in che riga sono
	begin
		//data la riga, posso calcolare in che posizione devo mettere le x:
		//pos_x = 349*640/480 = 465
		if((pos_x <= 10'd467 && pos_x>= 10'd463)
			 || (pos_x <= 10'd177 && pos_x>= 10'd173))
		 begin
			 crossGenerator = 12'b000100010001;
		 end

	end
	else if (pos_y == 350) // capisco in che riga sono
	begin
		//data la riga, posso calcolare in che posizione devo mettere le x:
		//pos_x = 350*640/480 = 467
		if((pos_x <= 10'd469 && pos_x>= 10'd465)
			 || (pos_x <= 10'd175 && pos_x>= 10'd171))
		 begin
			 crossGenerator = 12'b000100010001;
		 end

	end
	else if (pos_y == 351) // capisco in che riga sono
	begin
		//data la riga, posso calcolare in che posizione devo mettere le x:
		//pos_x = 351*640/480 = 468
		if((pos_x <= 10'd470 && pos_x>= 10'd466)
			 || (pos_x <= 10'd174 && pos_x>= 10'd170))
		 begin
			 crossGenerator = 12'b000100010001;
		 end

	end
	else if (pos_y == 352) // capisco in che riga sono
	begin
		//data la riga, posso calcolare in che posizione devo mettere le x:
		//pos_x = 352*640/480 = 469
		if((pos_x <= 10'd471 && pos_x>= 10'd467)
			 || (pos_x <= 10'd173 && pos_x>= 10'd169))
		 begin
			 crossGenerator = 12'b000100010001;
		 end

	end
	else if (pos_y == 353) // capisco in che riga sono
	begin
		//data la riga, posso calcolare in che posizione devo mettere le x:
		//pos_x = 353*640/480 = 471
		if((pos_x <= 10'd473 && pos_x>= 10'd469)
			 || (pos_x <= 10'd171 && pos_x>= 10'd167))
		 begin
			 crossGenerator = 12'b000100010001;
		 end

	end
	else if (pos_y == 354) // capisco in che riga sono
	begin
		//data la riga, posso calcolare in che posizione devo mettere le x:
		//pos_x = 354*640/480 = 472
		if((pos_x <= 10'd474 && pos_x>= 10'd470)
			 || (pos_x <= 10'd170 && pos_x>= 10'd166))
		 begin
			 crossGenerator = 12'b000100010001;
		 end

	end
	else if (pos_y == 355) // capisco in che riga sono
	begin
		//data la riga, posso calcolare in che posizione devo mettere le x:
		//pos_x = 355*640/480 = 473
		if((pos_x <= 10'd475 && pos_x>= 10'd471)
			 || (pos_x <= 10'd169 && pos_x>= 10'd165))
		 begin
			 crossGenerator = 12'b000100010001;
		 end

	end
	else if (pos_y == 356) // capisco in che riga sono
	begin
		//data la riga, posso calcolare in che posizione devo mettere le x:
		//pos_x = 356*640/480 = 475
		if((pos_x <= 10'd477 && pos_x>= 10'd473)
			 || (pos_x <= 10'd167 && pos_x>= 10'd163))
		 begin
			 crossGenerator = 12'b000100010001;
		 end

	end
	else if (pos_y == 357) // capisco in che riga sono
	begin
		//data la riga, posso calcolare in che posizione devo mettere le x:
		//pos_x = 357*640/480 = 476
		if((pos_x <= 10'd478 && pos_x>= 10'd474)
			 || (pos_x <= 10'd166 && pos_x>= 10'd162))
		 begin
			 crossGenerator = 12'b000100010001;
		 end

	end
	else if (pos_y == 358) // capisco in che riga sono
	begin
		//data la riga, posso calcolare in che posizione devo mettere le x:
		//pos_x = 358*640/480 = 477
		if((pos_x <= 10'd479 && pos_x>= 10'd475)
			 || (pos_x <= 10'd165 && pos_x>= 10'd161))
		 begin
			 crossGenerator = 12'b000100010001;
		 end

	end
	else if (pos_y == 359) // capisco in che riga sono
	begin
		//data la riga, posso calcolare in che posizione devo mettere le x:
		//pos_x = 359*640/480 = 479
		if((pos_x <= 10'd481 && pos_x>= 10'd477)
			 || (pos_x <= 10'd163 && pos_x>= 10'd159))
		 begin
			 crossGenerator = 12'b000100010001;
		 end

	end
	else if (pos_y == 360) // capisco in che riga sono
	begin
		//data la riga, posso calcolare in che posizione devo mettere le x:
		//pos_x = 360*640/480 = 480
		if((pos_x <= 10'd482 && pos_x>= 10'd478)
			 || (pos_x <= 10'd162 && pos_x>= 10'd158))
		 begin
			 crossGenerator = 12'b000100010001;
		 end

	end
	else if (pos_y == 361) // capisco in che riga sono
	begin
		//data la riga, posso calcolare in che posizione devo mettere le x:
		//pos_x = 361*640/480 = 481
		if((pos_x <= 10'd483 && pos_x>= 10'd479)
			 || (pos_x <= 10'd161 && pos_x>= 10'd157))
		 begin
			 crossGenerator = 12'b000100010001;
		 end

	end
	else if (pos_y == 362) // capisco in che riga sono
	begin
		//data la riga, posso calcolare in che posizione devo mettere le x:
		//pos_x = 362*640/480 = 483
		if((pos_x <= 10'd485 && pos_x>= 10'd481)
			 || (pos_x <= 10'd159 && pos_x>= 10'd155))
		 begin
			 crossGenerator = 12'b000100010001;
		 end

	end
	else if (pos_y == 363) // capisco in che riga sono
	begin
		//data la riga, posso calcolare in che posizione devo mettere le x:
		//pos_x = 363*640/480 = 484
		if((pos_x <= 10'd486 && pos_x>= 10'd482)
			 || (pos_x <= 10'd158 && pos_x>= 10'd154))
		 begin
			 crossGenerator = 12'b000100010001;
		 end

	end
	else if (pos_y == 364) // capisco in che riga sono
	begin
		//data la riga, posso calcolare in che posizione devo mettere le x:
		//pos_x = 364*640/480 = 485
		if((pos_x <= 10'd487 && pos_x>= 10'd483)
			 || (pos_x <= 10'd157 && pos_x>= 10'd153))
		 begin
			 crossGenerator = 12'b000100010001;
		 end

	end
	else if (pos_y == 365) // capisco in che riga sono
	begin
		//data la riga, posso calcolare in che posizione devo mettere le x:
		//pos_x = 365*640/480 = 487
		if((pos_x <= 10'd489 && pos_x>= 10'd485)
			 || (pos_x <= 10'd155 && pos_x>= 10'd151))
		 begin
			 crossGenerator = 12'b000100010001;
		 end

	end
	else if (pos_y == 366) // capisco in che riga sono
	begin
		//data la riga, posso calcolare in che posizione devo mettere le x:
		//pos_x = 366*640/480 = 488
		if((pos_x <= 10'd490 && pos_x>= 10'd486)
			 || (pos_x <= 10'd154 && pos_x>= 10'd150))
		 begin
			 crossGenerator = 12'b000100010001;
		 end

	end
	else if (pos_y == 367) // capisco in che riga sono
	begin
		//data la riga, posso calcolare in che posizione devo mettere le x:
		//pos_x = 367*640/480 = 489
		if((pos_x <= 10'd491 && pos_x>= 10'd487)
			 || (pos_x <= 10'd153 && pos_x>= 10'd149))
		 begin
			 crossGenerator = 12'b000100010001;
		 end

	end
	else if (pos_y == 368) // capisco in che riga sono
	begin
		//data la riga, posso calcolare in che posizione devo mettere le x:
		//pos_x = 368*640/480 = 491
		if((pos_x <= 10'd493 && pos_x>= 10'd489)
			 || (pos_x <= 10'd151 && pos_x>= 10'd147))
		 begin
			 crossGenerator = 12'b000100010001;
		 end

	end
	else if (pos_y == 369) // capisco in che riga sono
	begin
		//data la riga, posso calcolare in che posizione devo mettere le x:
		//pos_x = 369*640/480 = 492
		if((pos_x <= 10'd494 && pos_x>= 10'd490)
			 || (pos_x <= 10'd150 && pos_x>= 10'd146))
		 begin
			 crossGenerator = 12'b000100010001;
		 end

	end
	else if (pos_y == 370) // capisco in che riga sono
	begin
		//data la riga, posso calcolare in che posizione devo mettere le x:
		//pos_x = 370*640/480 = 493
		if((pos_x <= 10'd495 && pos_x>= 10'd491)
			 || (pos_x <= 10'd149 && pos_x>= 10'd145))
		 begin
			 crossGenerator = 12'b000100010001;
		 end

	end
	else if (pos_y == 371) // capisco in che riga sono
	begin
		//data la riga, posso calcolare in che posizione devo mettere le x:
		//pos_x = 371*640/480 = 495
		if((pos_x <= 10'd497 && pos_x>= 10'd493)
			 || (pos_x <= 10'd147 && pos_x>= 10'd143))
		 begin
			 crossGenerator = 12'b000100010001;
		 end

	end
	else if (pos_y == 372) // capisco in che riga sono
	begin
		//data la riga, posso calcolare in che posizione devo mettere le x:
		//pos_x = 372*640/480 = 496
		if((pos_x <= 10'd498 && pos_x>= 10'd494)
			 || (pos_x <= 10'd146 && pos_x>= 10'd142))
		 begin
			 crossGenerator = 12'b000100010001;
		 end

	end
	else if (pos_y == 373) // capisco in che riga sono
	begin
		//data la riga, posso calcolare in che posizione devo mettere le x:
		//pos_x = 373*640/480 = 497
		if((pos_x <= 10'd499 && pos_x>= 10'd495)
			 || (pos_x <= 10'd145 && pos_x>= 10'd141))
		 begin
			 crossGenerator = 12'b000100010001;
		 end

	end
	else if (pos_y == 374) // capisco in che riga sono
	begin
		//data la riga, posso calcolare in che posizione devo mettere le x:
		//pos_x = 374*640/480 = 499
		if((pos_x <= 10'd501 && pos_x>= 10'd497)
			 || (pos_x <= 10'd143 && pos_x>= 10'd139))
		 begin
			 crossGenerator = 12'b000100010001;
		 end

	end
	else if (pos_y == 375) // capisco in che riga sono
	begin
		//data la riga, posso calcolare in che posizione devo mettere le x:
		//pos_x = 375*640/480 = 500
		if((pos_x <= 10'd502 && pos_x>= 10'd498)
			 || (pos_x <= 10'd142 && pos_x>= 10'd138))
		 begin
			 crossGenerator = 12'b000100010001;
		 end

	end
	else if (pos_y == 376) // capisco in che riga sono
	begin
		//data la riga, posso calcolare in che posizione devo mettere le x:
		//pos_x = 376*640/480 = 501
		if((pos_x <= 10'd503 && pos_x>= 10'd499)
			 || (pos_x <= 10'd141 && pos_x>= 10'd137))
		 begin
			 crossGenerator = 12'b000100010001;
		 end

	end
	else if (pos_y == 377) // capisco in che riga sono
	begin
		//data la riga, posso calcolare in che posizione devo mettere le x:
		//pos_x = 377*640/480 = 503
		if((pos_x <= 10'd505 && pos_x>= 10'd501)
			 || (pos_x <= 10'd139 && pos_x>= 10'd135))
		 begin
			 crossGenerator = 12'b000100010001;
		 end

	end
	else if (pos_y == 378) // capisco in che riga sono
	begin
		//data la riga, posso calcolare in che posizione devo mettere le x:
		//pos_x = 378*640/480 = 504
		if((pos_x <= 10'd506 && pos_x>= 10'd502)
			 || (pos_x <= 10'd138 && pos_x>= 10'd134))
		 begin
			 crossGenerator = 12'b000100010001;
		 end

	end
	else if (pos_y == 379) // capisco in che riga sono
	begin
		//data la riga, posso calcolare in che posizione devo mettere le x:
		//pos_x = 379*640/480 = 505
		if((pos_x <= 10'd507 && pos_x>= 10'd503)
			 || (pos_x <= 10'd137 && pos_x>= 10'd133))
		 begin
			 crossGenerator = 12'b000100010001;
		 end

	end
	else if (pos_y == 380) // capisco in che riga sono
	begin
		//data la riga, posso calcolare in che posizione devo mettere le x:
		//pos_x = 380*640/480 = 507
		if((pos_x <= 10'd509 && pos_x>= 10'd505)
			 || (pos_x <= 10'd135 && pos_x>= 10'd131))
		 begin
			 crossGenerator = 12'b000100010001;
		 end

	end
	else if (pos_y == 381) // capisco in che riga sono
	begin
		//data la riga, posso calcolare in che posizione devo mettere le x:
		//pos_x = 381*640/480 = 508
		if((pos_x <= 10'd510 && pos_x>= 10'd506)
			 || (pos_x <= 10'd134 && pos_x>= 10'd130))
		 begin
			 crossGenerator = 12'b000100010001;
		 end

	end
	else if (pos_y == 382) // capisco in che riga sono
	begin
		//data la riga, posso calcolare in che posizione devo mettere le x:
		//pos_x = 382*640/480 = 509
		if((pos_x <= 10'd511 && pos_x>= 10'd507)
			 || (pos_x <= 10'd133 && pos_x>= 10'd129))
		 begin
			 crossGenerator = 12'b000100010001;
		 end

	end
	else if (pos_y == 383) // capisco in che riga sono
	begin
		//data la riga, posso calcolare in che posizione devo mettere le x:
		//pos_x = 383*640/480 = 511
		if((pos_x <= 10'd513 && pos_x>= 10'd509)
			 || (pos_x <= 10'd131 && pos_x>= 10'd127))
		 begin
			 crossGenerator = 12'b000100010001;
		 end

	end
	else if (pos_y == 384) // capisco in che riga sono
	begin
		//data la riga, posso calcolare in che posizione devo mettere le x:
		//pos_x = 384*640/480 = 512
		if((pos_x <= 10'd514 && pos_x>= 10'd510)
			 || (pos_x <= 10'd130 && pos_x>= 10'd126))
		 begin
			 crossGenerator = 12'b000100010001;
		 end

	end
	else if (pos_y == 385) // capisco in che riga sono
	begin
		//data la riga, posso calcolare in che posizione devo mettere le x:
		//pos_x = 385*640/480 = 513
		if((pos_x <= 10'd515 && pos_x>= 10'd511)
			 || (pos_x <= 10'd129 && pos_x>= 10'd125))
		 begin
			 crossGenerator = 12'b000100010001;
		 end

	end
	else if (pos_y == 386) // capisco in che riga sono
	begin
		//data la riga, posso calcolare in che posizione devo mettere le x:
		//pos_x = 386*640/480 = 515
		if((pos_x <= 10'd517 && pos_x>= 10'd513)
			 || (pos_x <= 10'd127 && pos_x>= 10'd123))
		 begin
			 crossGenerator = 12'b000100010001;
		 end

	end
	else if (pos_y == 387) // capisco in che riga sono
	begin
		//data la riga, posso calcolare in che posizione devo mettere le x:
		//pos_x = 387*640/480 = 516
		if((pos_x <= 10'd518 && pos_x>= 10'd514)
			 || (pos_x <= 10'd126 && pos_x>= 10'd122))
		 begin
			 crossGenerator = 12'b000100010001;
		 end

	end
	else if (pos_y == 388) // capisco in che riga sono
	begin
		//data la riga, posso calcolare in che posizione devo mettere le x:
		//pos_x = 388*640/480 = 517
		if((pos_x <= 10'd519 && pos_x>= 10'd515)
			 || (pos_x <= 10'd125 && pos_x>= 10'd121))
		 begin
			 crossGenerator = 12'b000100010001;
		 end

	end
	else if (pos_y == 389) // capisco in che riga sono
	begin
		//data la riga, posso calcolare in che posizione devo mettere le x:
		//pos_x = 389*640/480 = 519
		if((pos_x <= 10'd521 && pos_x>= 10'd517)
			 || (pos_x <= 10'd123 && pos_x>= 10'd119))
		 begin
			 crossGenerator = 12'b000100010001;
		 end

	end
	else if (pos_y == 390) // capisco in che riga sono
	begin
		//data la riga, posso calcolare in che posizione devo mettere le x:
		//pos_x = 390*640/480 = 520
		if((pos_x <= 10'd522 && pos_x>= 10'd518)
			 || (pos_x <= 10'd122 && pos_x>= 10'd118))
		 begin
			 crossGenerator = 12'b000100010001;
		 end

	end
	else if (pos_y == 391) // capisco in che riga sono
	begin
		//data la riga, posso calcolare in che posizione devo mettere le x:
		//pos_x = 391*640/480 = 521
		if((pos_x <= 10'd523 && pos_x>= 10'd519)
			 || (pos_x <= 10'd121 && pos_x>= 10'd117))
		 begin
			 crossGenerator = 12'b000100010001;
		 end

	end
	else if (pos_y == 392) // capisco in che riga sono
	begin
		//data la riga, posso calcolare in che posizione devo mettere le x:
		//pos_x = 392*640/480 = 523
		if((pos_x <= 10'd525 && pos_x>= 10'd521)
			 || (pos_x <= 10'd119 && pos_x>= 10'd115))
		 begin
			 crossGenerator = 12'b000100010001;
		 end

	end
	else if (pos_y == 393) // capisco in che riga sono
	begin
		//data la riga, posso calcolare in che posizione devo mettere le x:
		//pos_x = 393*640/480 = 524
		if((pos_x <= 10'd526 && pos_x>= 10'd522)
			 || (pos_x <= 10'd118 && pos_x>= 10'd114))
		 begin
			 crossGenerator = 12'b000100010001;
		 end

	end
	else if (pos_y == 394) // capisco in che riga sono
	begin
		//data la riga, posso calcolare in che posizione devo mettere le x:
		//pos_x = 394*640/480 = 525
		if((pos_x <= 10'd527 && pos_x>= 10'd523)
			 || (pos_x <= 10'd117 && pos_x>= 10'd113))
		 begin
			 crossGenerator = 12'b000100010001;
		 end

	end
	else if (pos_y == 395) // capisco in che riga sono
	begin
		//data la riga, posso calcolare in che posizione devo mettere le x:
		//pos_x = 395*640/480 = 527
		if((pos_x <= 10'd529 && pos_x>= 10'd525)
			 || (pos_x <= 10'd115 && pos_x>= 10'd111))
		 begin
			 crossGenerator = 12'b000100010001;
		 end

	end
	else if (pos_y == 396) // capisco in che riga sono
	begin
		//data la riga, posso calcolare in che posizione devo mettere le x:
		//pos_x = 396*640/480 = 528
		if((pos_x <= 10'd530 && pos_x>= 10'd526)
			 || (pos_x <= 10'd114 && pos_x>= 10'd110))
		 begin
			 crossGenerator = 12'b000100010001;
		 end

	end
	else if (pos_y == 397) // capisco in che riga sono
	begin
		//data la riga, posso calcolare in che posizione devo mettere le x:
		//pos_x = 397*640/480 = 529
		if((pos_x <= 10'd531 && pos_x>= 10'd527)
			 || (pos_x <= 10'd113 && pos_x>= 10'd109))
		 begin
			 crossGenerator = 12'b000100010001;
		 end

	end
	else if (pos_y == 398) // capisco in che riga sono
	begin
		//data la riga, posso calcolare in che posizione devo mettere le x:
		//pos_x = 398*640/480 = 531
		if((pos_x <= 10'd533 && pos_x>= 10'd529)
			 || (pos_x <= 10'd111 && pos_x>= 10'd107))
		 begin
			 crossGenerator = 12'b000100010001;
		 end

	end
	else if (pos_y == 399) // capisco in che riga sono
	begin
		//data la riga, posso calcolare in che posizione devo mettere le x:
		//pos_x = 399*640/480 = 532
		if((pos_x <= 10'd534 && pos_x>= 10'd530)
			 || (pos_x <= 10'd110 && pos_x>= 10'd106))
		 begin
			 crossGenerator = 12'b000100010001;
		 end

	end
	else if (pos_y == 400) // capisco in che riga sono
	begin
		//data la riga, posso calcolare in che posizione devo mettere le x:
		//pos_x = 400*640/480 = 533
		if((pos_x <= 10'd535 && pos_x>= 10'd531)
			 || (pos_x <= 10'd109 && pos_x>= 10'd105))
		 begin
			 crossGenerator = 12'b000100010001;
		 end

	end
	else if (pos_y == 401) // capisco in che riga sono
	begin
		//data la riga, posso calcolare in che posizione devo mettere le x:
		//pos_x = 401*640/480 = 535
		if((pos_x <= 10'd537 && pos_x>= 10'd533)
			 || (pos_x <= 10'd107 && pos_x>= 10'd103))
		 begin
			 crossGenerator = 12'b000100010001;
		 end

	end
	else if (pos_y == 402) // capisco in che riga sono
	begin
		//data la riga, posso calcolare in che posizione devo mettere le x:
		//pos_x = 402*640/480 = 536
		if((pos_x <= 10'd538 && pos_x>= 10'd534)
			 || (pos_x <= 10'd106 && pos_x>= 10'd102))
		 begin
			 crossGenerator = 12'b000100010001;
		 end

	end
	else if (pos_y == 403) // capisco in che riga sono
	begin
		//data la riga, posso calcolare in che posizione devo mettere le x:
		//pos_x = 403*640/480 = 537
		if((pos_x <= 10'd539 && pos_x>= 10'd535)
			 || (pos_x <= 10'd105 && pos_x>= 10'd101))
		 begin
			 crossGenerator = 12'b000100010001;
		 end

	end
	else if (pos_y == 404) // capisco in che riga sono
	begin
		//data la riga, posso calcolare in che posizione devo mettere le x:
		//pos_x = 404*640/480 = 539
		if((pos_x <= 10'd541 && pos_x>= 10'd537)
			 || (pos_x <= 10'd103 && pos_x>= 10'd99))
		 begin
			 crossGenerator = 12'b000100010001;
		 end

	end
	else if (pos_y == 405) // capisco in che riga sono
	begin
		//data la riga, posso calcolare in che posizione devo mettere le x:
		//pos_x = 405*640/480 = 540
		if((pos_x <= 10'd542 && pos_x>= 10'd538)
			 || (pos_x <= 10'd102 && pos_x>= 10'd98))
		 begin
			 crossGenerator = 12'b000100010001;
		 end

	end
	else if (pos_y == 406) // capisco in che riga sono
	begin
		//data la riga, posso calcolare in che posizione devo mettere le x:
		//pos_x = 406*640/480 = 541
		if((pos_x <= 10'd543 && pos_x>= 10'd539)
			 || (pos_x <= 10'd101 && pos_x>= 10'd97))
		 begin
			 crossGenerator = 12'b000100010001;
		 end

	end
	else if (pos_y == 407) // capisco in che riga sono
	begin
		//data la riga, posso calcolare in che posizione devo mettere le x:
		//pos_x = 407*640/480 = 543
		if((pos_x <= 10'd545 && pos_x>= 10'd541)
			 || (pos_x <= 10'd99 && pos_x>= 10'd95))
		 begin
			 crossGenerator = 12'b000100010001;
		 end

	end
	else if (pos_y == 408) // capisco in che riga sono
	begin
		//data la riga, posso calcolare in che posizione devo mettere le x:
		//pos_x = 408*640/480 = 544
		if((pos_x <= 10'd546 && pos_x>= 10'd542)
			 || (pos_x <= 10'd98 && pos_x>= 10'd94))
		 begin
			 crossGenerator = 12'b000100010001;
		 end

	end
	else if (pos_y == 409) // capisco in che riga sono
	begin
		//data la riga, posso calcolare in che posizione devo mettere le x:
		//pos_x = 409*640/480 = 545
		if((pos_x <= 10'd547 && pos_x>= 10'd543)
			 || (pos_x <= 10'd97 && pos_x>= 10'd93))
		 begin
			 crossGenerator = 12'b000100010001;
		 end

	end
	else if (pos_y == 410) // capisco in che riga sono
	begin
		//data la riga, posso calcolare in che posizione devo mettere le x:
		//pos_x = 410*640/480 = 547
		if((pos_x <= 10'd549 && pos_x>= 10'd545)
			 || (pos_x <= 10'd95 && pos_x>= 10'd91))
		 begin
			 crossGenerator = 12'b000100010001;
		 end

	end
	else if (pos_y == 411) // capisco in che riga sono
	begin
		//data la riga, posso calcolare in che posizione devo mettere le x:
		//pos_x = 411*640/480 = 548
		if((pos_x <= 10'd550 && pos_x>= 10'd546)
			 || (pos_x <= 10'd94 && pos_x>= 10'd90))
		 begin
			 crossGenerator = 12'b000100010001;
		 end

	end
	else if (pos_y == 412) // capisco in che riga sono
	begin
		//data la riga, posso calcolare in che posizione devo mettere le x:
		//pos_x = 412*640/480 = 549
		if((pos_x <= 10'd551 && pos_x>= 10'd547)
			 || (pos_x <= 10'd93 && pos_x>= 10'd89))
		 begin
			 crossGenerator = 12'b000100010001;
		 end

	end
	else if (pos_y == 413) // capisco in che riga sono
	begin
		//data la riga, posso calcolare in che posizione devo mettere le x:
		//pos_x = 413*640/480 = 551
		if((pos_x <= 10'd553 && pos_x>= 10'd549)
			 || (pos_x <= 10'd91 && pos_x>= 10'd87))
		 begin
			 crossGenerator = 12'b000100010001;
		 end

	end
	else if (pos_y == 414) // capisco in che riga sono
	begin
		//data la riga, posso calcolare in che posizione devo mettere le x:
		//pos_x = 414*640/480 = 552
		if((pos_x <= 10'd554 && pos_x>= 10'd550)
			 || (pos_x <= 10'd90 && pos_x>= 10'd86))
		 begin
			 crossGenerator = 12'b000100010001;
		 end

	end
	else if (pos_y == 415) // capisco in che riga sono
	begin
		//data la riga, posso calcolare in che posizione devo mettere le x:
		//pos_x = 415*640/480 = 553
		if((pos_x <= 10'd555 && pos_x>= 10'd551)
			 || (pos_x <= 10'd89 && pos_x>= 10'd85))
		 begin
			 crossGenerator = 12'b000100010001;
		 end

	end
	else if (pos_y == 416) // capisco in che riga sono
	begin
		//data la riga, posso calcolare in che posizione devo mettere le x:
		//pos_x = 416*640/480 = 555
		if((pos_x <= 10'd557 && pos_x>= 10'd553)
			 || (pos_x <= 10'd87 && pos_x>= 10'd83))
		 begin
			 crossGenerator = 12'b000100010001;
		 end

	end
	else if (pos_y == 417) // capisco in che riga sono
	begin
		//data la riga, posso calcolare in che posizione devo mettere le x:
		//pos_x = 417*640/480 = 556
		if((pos_x <= 10'd558 && pos_x>= 10'd554)
			 || (pos_x <= 10'd86 && pos_x>= 10'd82))
		 begin
			 crossGenerator = 12'b000100010001;
		 end

	end
	else if (pos_y == 418) // capisco in che riga sono
	begin
		//data la riga, posso calcolare in che posizione devo mettere le x:
		//pos_x = 418*640/480 = 557
		if((pos_x <= 10'd559 && pos_x>= 10'd555)
			 || (pos_x <= 10'd85 && pos_x>= 10'd81))
		 begin
			 crossGenerator = 12'b000100010001;
		 end

	end
	else if (pos_y == 419) // capisco in che riga sono
	begin
		//data la riga, posso calcolare in che posizione devo mettere le x:
		//pos_x = 419*640/480 = 559
		if((pos_x <= 10'd561 && pos_x>= 10'd557)
			 || (pos_x <= 10'd83 && pos_x>= 10'd79))
		 begin
			 crossGenerator = 12'b000100010001;
		 end

	end
	else if (pos_y == 420) // capisco in che riga sono
	begin
		//data la riga, posso calcolare in che posizione devo mettere le x:
		//pos_x = 420*640/480 = 560
		if((pos_x <= 10'd562 && pos_x>= 10'd558)
			 || (pos_x <= 10'd82 && pos_x>= 10'd78))
		 begin
			 crossGenerator = 12'b000100010001;
		 end

	end
	else if (pos_y == 421) // capisco in che riga sono
	begin
		//data la riga, posso calcolare in che posizione devo mettere le x:
		//pos_x = 421*640/480 = 561
		if((pos_x <= 10'd563 && pos_x>= 10'd559)
			 || (pos_x <= 10'd81 && pos_x>= 10'd77))
		 begin
			 crossGenerator = 12'b000100010001;
		 end

	end
	else if (pos_y == 422) // capisco in che riga sono
	begin
		//data la riga, posso calcolare in che posizione devo mettere le x:
		//pos_x = 422*640/480 = 563
		if((pos_x <= 10'd565 && pos_x>= 10'd561)
			 || (pos_x <= 10'd79 && pos_x>= 10'd75))
		 begin
			 crossGenerator = 12'b000100010001;
		 end

	end
	else if (pos_y == 423) // capisco in che riga sono
	begin
		//data la riga, posso calcolare in che posizione devo mettere le x:
		//pos_x = 423*640/480 = 564
		if((pos_x <= 10'd566 && pos_x>= 10'd562)
			 || (pos_x <= 10'd78 && pos_x>= 10'd74))
		 begin
			 crossGenerator = 12'b000100010001;
		 end

	end
	else if (pos_y == 424) // capisco in che riga sono
	begin
		//data la riga, posso calcolare in che posizione devo mettere le x:
		//pos_x = 424*640/480 = 565
		if((pos_x <= 10'd567 && pos_x>= 10'd563)
			 || (pos_x <= 10'd77 && pos_x>= 10'd73))
		 begin
			 crossGenerator = 12'b000100010001;
		 end

	end
	else if (pos_y == 425) // capisco in che riga sono
	begin
		//data la riga, posso calcolare in che posizione devo mettere le x:
		//pos_x = 425*640/480 = 567
		if((pos_x <= 10'd569 && pos_x>= 10'd565)
			 || (pos_x <= 10'd75 && pos_x>= 10'd71))
		 begin
			 crossGenerator = 12'b000100010001;
		 end

	end
	else if (pos_y == 426) // capisco in che riga sono
	begin
		//data la riga, posso calcolare in che posizione devo mettere le x:
		//pos_x = 426*640/480 = 568
		if((pos_x <= 10'd570 && pos_x>= 10'd566)
			 || (pos_x <= 10'd74 && pos_x>= 10'd70))
		 begin
			 crossGenerator = 12'b000100010001;
		 end

	end
	else if (pos_y == 427) // capisco in che riga sono
	begin
		//data la riga, posso calcolare in che posizione devo mettere le x:
		//pos_x = 427*640/480 = 569
		if((pos_x <= 10'd571 && pos_x>= 10'd567)
			 || (pos_x <= 10'd73 && pos_x>= 10'd69))
		 begin
			 crossGenerator = 12'b000100010001;
		 end

	end
	else if (pos_y == 428) // capisco in che riga sono
	begin
		//data la riga, posso calcolare in che posizione devo mettere le x:
		//pos_x = 428*640/480 = 571
		if((pos_x <= 10'd573 && pos_x>= 10'd569)
			 || (pos_x <= 10'd71 && pos_x>= 10'd67))
		 begin
			 crossGenerator = 12'b000100010001;
		 end

	end
	else if (pos_y == 429) // capisco in che riga sono
	begin
		//data la riga, posso calcolare in che posizione devo mettere le x:
		//pos_x = 429*640/480 = 572
		if((pos_x <= 10'd574 && pos_x>= 10'd570)
			 || (pos_x <= 10'd70 && pos_x>= 10'd66))
		 begin
			 crossGenerator = 12'b000100010001;
		 end

	end
	else if (pos_y == 430) // capisco in che riga sono
	begin
		//data la riga, posso calcolare in che posizione devo mettere le x:
		//pos_x = 430*640/480 = 573
		if((pos_x <= 10'd575 && pos_x>= 10'd571)
			 || (pos_x <= 10'd69 && pos_x>= 10'd65))
		 begin
			 crossGenerator = 12'b000100010001;
		 end

	end
	else if (pos_y == 431) // capisco in che riga sono
	begin
		//data la riga, posso calcolare in che posizione devo mettere le x:
		//pos_x = 431*640/480 = 575
		if((pos_x <= 10'd577 && pos_x>= 10'd573)
			 || (pos_x <= 10'd67 && pos_x>= 10'd63))
		 begin
			 crossGenerator = 12'b000100010001;
		 end

	end
	else if (pos_y == 432) // capisco in che riga sono
	begin
		//data la riga, posso calcolare in che posizione devo mettere le x:
		//pos_x = 432*640/480 = 576
		if((pos_x <= 10'd578 && pos_x>= 10'd574)
			 || (pos_x <= 10'd66 && pos_x>= 10'd62))
		 begin
			 crossGenerator = 12'b000100010001;
		 end

	end
	else if (pos_y == 433) // capisco in che riga sono
	begin
		//data la riga, posso calcolare in che posizione devo mettere le x:
		//pos_x = 433*640/480 = 577
		if((pos_x <= 10'd579 && pos_x>= 10'd575)
			 || (pos_x <= 10'd65 && pos_x>= 10'd61))
		 begin
			 crossGenerator = 12'b000100010001;
		 end

	end
	else if (pos_y == 434) // capisco in che riga sono
	begin
		//data la riga, posso calcolare in che posizione devo mettere le x:
		//pos_x = 434*640/480 = 579
		if((pos_x <= 10'd581 && pos_x>= 10'd577)
			 || (pos_x <= 10'd63 && pos_x>= 10'd59))
		 begin
			 crossGenerator = 12'b000100010001;
		 end

	end
	else if (pos_y == 435) // capisco in che riga sono
	begin
		//data la riga, posso calcolare in che posizione devo mettere le x:
		//pos_x = 435*640/480 = 580
		if((pos_x <= 10'd582 && pos_x>= 10'd578)
			 || (pos_x <= 10'd62 && pos_x>= 10'd58))
		 begin
			 crossGenerator = 12'b000100010001;
		 end

	end
	else if (pos_y == 436) // capisco in che riga sono
	begin
		//data la riga, posso calcolare in che posizione devo mettere le x:
		//pos_x = 436*640/480 = 581
		if((pos_x <= 10'd583 && pos_x>= 10'd579)
			 || (pos_x <= 10'd61 && pos_x>= 10'd57))
		 begin
			 crossGenerator = 12'b000100010001;
		 end

	end
	else if (pos_y == 437) // capisco in che riga sono
	begin
		//data la riga, posso calcolare in che posizione devo mettere le x:
		//pos_x = 437*640/480 = 583
		if((pos_x <= 10'd585 && pos_x>= 10'd581)
			 || (pos_x <= 10'd59 && pos_x>= 10'd55))
		 begin
			 crossGenerator = 12'b000100010001;
		 end

	end
	else if (pos_y == 438) // capisco in che riga sono
	begin
		//data la riga, posso calcolare in che posizione devo mettere le x:
		//pos_x = 438*640/480 = 584
		if((pos_x <= 10'd586 && pos_x>= 10'd582)
			 || (pos_x <= 10'd58 && pos_x>= 10'd54))
		 begin
			 crossGenerator = 12'b000100010001;
		 end

	end
	else if (pos_y == 439) // capisco in che riga sono
	begin
		//data la riga, posso calcolare in che posizione devo mettere le x:
		//pos_x = 439*640/480 = 585
		if((pos_x <= 10'd587 && pos_x>= 10'd583)
			 || (pos_x <= 10'd57 && pos_x>= 10'd53))
		 begin
			 crossGenerator = 12'b000100010001;
		 end

	end
	else if (pos_y == 440) // capisco in che riga sono
	begin
		//data la riga, posso calcolare in che posizione devo mettere le x:
		//pos_x = 440*640/480 = 587
		if((pos_x <= 10'd589 && pos_x>= 10'd585)
			 || (pos_x <= 10'd55 && pos_x>= 10'd51))
		 begin
			 crossGenerator = 12'b000100010001;
		 end

	end
	else if (pos_y == 441) // capisco in che riga sono
	begin
		//data la riga, posso calcolare in che posizione devo mettere le x:
		//pos_x = 441*640/480 = 588
		if((pos_x <= 10'd590 && pos_x>= 10'd586)
			 || (pos_x <= 10'd54 && pos_x>= 10'd50))
		 begin
			 crossGenerator = 12'b000100010001;
		 end

	end
	else if (pos_y == 442) // capisco in che riga sono
	begin
		//data la riga, posso calcolare in che posizione devo mettere le x:
		//pos_x = 442*640/480 = 589
		if((pos_x <= 10'd591 && pos_x>= 10'd587)
			 || (pos_x <= 10'd53 && pos_x>= 10'd49))
		 begin
			 crossGenerator = 12'b000100010001;
		 end

	end
	else if (pos_y == 443) // capisco in che riga sono
	begin
		//data la riga, posso calcolare in che posizione devo mettere le x:
		//pos_x = 443*640/480 = 591
		if((pos_x <= 10'd593 && pos_x>= 10'd589)
			 || (pos_x <= 10'd51 && pos_x>= 10'd47))
		 begin
			 crossGenerator = 12'b000100010001;
		 end

	end
	else if (pos_y == 444) // capisco in che riga sono
	begin
		//data la riga, posso calcolare in che posizione devo mettere le x:
		//pos_x = 444*640/480 = 592
		if((pos_x <= 10'd594 && pos_x>= 10'd590)
			 || (pos_x <= 10'd50 && pos_x>= 10'd46))
		 begin
			 crossGenerator = 12'b000100010001;
		 end

	end
	else if (pos_y == 445) // capisco in che riga sono
	begin
		//data la riga, posso calcolare in che posizione devo mettere le x:
		//pos_x = 445*640/480 = 593
		if((pos_x <= 10'd595 && pos_x>= 10'd591)
			 || (pos_x <= 10'd49 && pos_x>= 10'd45))
		 begin
			 crossGenerator = 12'b000100010001;
		 end

	end
	else if (pos_y == 446) // capisco in che riga sono
	begin
		//data la riga, posso calcolare in che posizione devo mettere le x:
		//pos_x = 446*640/480 = 595
		if((pos_x <= 10'd597 && pos_x>= 10'd593)
			 || (pos_x <= 10'd47 && pos_x>= 10'd43))
		 begin
			 crossGenerator = 12'b000100010001;
		 end

	end
	else if (pos_y == 447) // capisco in che riga sono
	begin
		//data la riga, posso calcolare in che posizione devo mettere le x:
		//pos_x = 447*640/480 = 596
		if((pos_x <= 10'd598 && pos_x>= 10'd594)
			 || (pos_x <= 10'd46 && pos_x>= 10'd42))
		 begin
			 crossGenerator = 12'b000100010001;
		 end

	end
	else if (pos_y == 448) // capisco in che riga sono
	begin
		//data la riga, posso calcolare in che posizione devo mettere le x:
		//pos_x = 448*640/480 = 597
		if((pos_x <= 10'd599 && pos_x>= 10'd595)
			 || (pos_x <= 10'd45 && pos_x>= 10'd41))
		 begin
			 crossGenerator = 12'b000100010001;
		 end

	end
	else if (pos_y == 449) // capisco in che riga sono
	begin
		//data la riga, posso calcolare in che posizione devo mettere le x:
		//pos_x = 449*640/480 = 599
		if((pos_x <= 10'd601 && pos_x>= 10'd597)
			 || (pos_x <= 10'd43 && pos_x>= 10'd39))
		 begin
			 crossGenerator = 12'b000100010001;
		 end

	end
	else if (pos_y == 450) // capisco in che riga sono
	begin
		//data la riga, posso calcolare in che posizione devo mettere le x:
		//pos_x = 450*640/480 = 600
		if((pos_x <= 10'd602 && pos_x>= 10'd598)
			 || (pos_x <= 10'd42 && pos_x>= 10'd38))
		 begin
			 crossGenerator = 12'b000100010001;
		 end

	end
	else if (pos_y == 451) // capisco in che riga sono
	begin
		//data la riga, posso calcolare in che posizione devo mettere le x:
		//pos_x = 451*640/480 = 601
		if((pos_x <= 10'd603 && pos_x>= 10'd599)
			 || (pos_x <= 10'd41 && pos_x>= 10'd37))
		 begin
			 crossGenerator = 12'b000100010001;
		 end

	end
	else if (pos_y == 452) // capisco in che riga sono
	begin
		//data la riga, posso calcolare in che posizione devo mettere le x:
		//pos_x = 452*640/480 = 603
		if((pos_x <= 10'd605 && pos_x>= 10'd601)
			 || (pos_x <= 10'd39 && pos_x>= 10'd35))
		 begin
			 crossGenerator = 12'b000100010001;
		 end

	end
	else if (pos_y == 453) // capisco in che riga sono
	begin
		//data la riga, posso calcolare in che posizione devo mettere le x:
		//pos_x = 453*640/480 = 604
		if((pos_x <= 10'd606 && pos_x>= 10'd602)
			 || (pos_x <= 10'd38 && pos_x>= 10'd34))
		 begin
			 crossGenerator = 12'b000100010001;
		 end

	end
	else if (pos_y == 454) // capisco in che riga sono
	begin
		//data la riga, posso calcolare in che posizione devo mettere le x:
		//pos_x = 454*640/480 = 605
		if((pos_x <= 10'd607 && pos_x>= 10'd603)
			 || (pos_x <= 10'd37 && pos_x>= 10'd33))
		 begin
			 crossGenerator = 12'b000100010001;
		 end

	end
	else if (pos_y == 455) // capisco in che riga sono
	begin
		//data la riga, posso calcolare in che posizione devo mettere le x:
		//pos_x = 455*640/480 = 607
		if((pos_x <= 10'd609 && pos_x>= 10'd605)
			 || (pos_x <= 10'd35 && pos_x>= 10'd31))
		 begin
			 crossGenerator = 12'b000100010001;
		 end

	end
	else if (pos_y == 456) // capisco in che riga sono
	begin
		//data la riga, posso calcolare in che posizione devo mettere le x:
		//pos_x = 456*640/480 = 608
		if((pos_x <= 10'd610 && pos_x>= 10'd606)
			 || (pos_x <= 10'd34 && pos_x>= 10'd30))
		 begin
			 crossGenerator = 12'b000100010001;
		 end

	end
	else if (pos_y == 457) // capisco in che riga sono
	begin
		//data la riga, posso calcolare in che posizione devo mettere le x:
		//pos_x = 457*640/480 = 609
		if((pos_x <= 10'd611 && pos_x>= 10'd607)
			 || (pos_x <= 10'd33 && pos_x>= 10'd29))
		 begin
			 crossGenerator = 12'b000100010001;
		 end

	end
	else if (pos_y == 458) // capisco in che riga sono
	begin
		//data la riga, posso calcolare in che posizione devo mettere le x:
		//pos_x = 458*640/480 = 611
		if((pos_x <= 10'd613 && pos_x>= 10'd609)
			 || (pos_x <= 10'd31 && pos_x>= 10'd27))
		 begin
			 crossGenerator = 12'b000100010001;
		 end

	end
	else if (pos_y == 459) // capisco in che riga sono
	begin
		//data la riga, posso calcolare in che posizione devo mettere le x:
		//pos_x = 459*640/480 = 612
		if((pos_x <= 10'd614 && pos_x>= 10'd610)
			 || (pos_x <= 10'd30 && pos_x>= 10'd26))
		 begin
			 crossGenerator = 12'b000100010001;
		 end

	end
	else if (pos_y == 460) // capisco in che riga sono
	begin
		//data la riga, posso calcolare in che posizione devo mettere le x:
		//pos_x = 460*640/480 = 613
		if((pos_x <= 10'd615 && pos_x>= 10'd611)
			 || (pos_x <= 10'd29 && pos_x>= 10'd25))
		 begin
			 crossGenerator = 12'b000100010001;
		 end

	end
	else if (pos_y == 461) // capisco in che riga sono
	begin
		//data la riga, posso calcolare in che posizione devo mettere le x:
		//pos_x = 461*640/480 = 615
		if((pos_x <= 10'd617 && pos_x>= 10'd613)
			 || (pos_x <= 10'd27 && pos_x>= 10'd23))
		 begin
			 crossGenerator = 12'b000100010001;
		 end

	end
	else if (pos_y == 462) // capisco in che riga sono
	begin
		//data la riga, posso calcolare in che posizione devo mettere le x:
		//pos_x = 462*640/480 = 616
		if((pos_x <= 10'd618 && pos_x>= 10'd614)
			 || (pos_x <= 10'd26 && pos_x>= 10'd22))
		 begin
			 crossGenerator = 12'b000100010001;
		 end

	end
	else if (pos_y == 463) // capisco in che riga sono
	begin
		//data la riga, posso calcolare in che posizione devo mettere le x:
		//pos_x = 463*640/480 = 617
		if((pos_x <= 10'd619 && pos_x>= 10'd615)
			 || (pos_x <= 10'd25 && pos_x>= 10'd21))
		 begin
			 crossGenerator = 12'b000100010001;
		 end

	end
	else if (pos_y == 464) // capisco in che riga sono
	begin
		//data la riga, posso calcolare in che posizione devo mettere le x:
		//pos_x = 464*640/480 = 619
		if((pos_x <= 10'd621 && pos_x>= 10'd617)
			 || (pos_x <= 10'd23 && pos_x>= 10'd19))
		 begin
			 crossGenerator = 12'b000100010001;
		 end

	end
	else if (pos_y == 465) // capisco in che riga sono
	begin
		//data la riga, posso calcolare in che posizione devo mettere le x:
		//pos_x = 465*640/480 = 620
		if((pos_x <= 10'd622 && pos_x>= 10'd618)
			 || (pos_x <= 10'd22 && pos_x>= 10'd18))
		 begin
			 crossGenerator = 12'b000100010001;
		 end

	end
	else if (pos_y == 466) // capisco in che riga sono
	begin
		//data la riga, posso calcolare in che posizione devo mettere le x:
		//pos_x = 466*640/480 = 621
		if((pos_x <= 10'd623 && pos_x>= 10'd619)
			 || (pos_x <= 10'd21 && pos_x>= 10'd17))
		 begin
			 crossGenerator = 12'b000100010001;
		 end

	end
	else if (pos_y == 467) // capisco in che riga sono
	begin
		//data la riga, posso calcolare in che posizione devo mettere le x:
		//pos_x = 467*640/480 = 623
		if((pos_x <= 10'd625 && pos_x>= 10'd621)
			 || (pos_x <= 10'd19 && pos_x>= 10'd15))
		 begin
			 crossGenerator = 12'b000100010001;
		 end

	end
	else if (pos_y == 468) // capisco in che riga sono
	begin
		//data la riga, posso calcolare in che posizione devo mettere le x:
		//pos_x = 468*640/480 = 624
		if((pos_x <= 10'd626 && pos_x>= 10'd622)
			 || (pos_x <= 10'd18 && pos_x>= 10'd14))
		 begin
			 crossGenerator = 12'b000100010001;
		 end

	end
	else if (pos_y == 469) // capisco in che riga sono
	begin
		//data la riga, posso calcolare in che posizione devo mettere le x:
		//pos_x = 469*640/480 = 625
		if((pos_x <= 10'd627 && pos_x>= 10'd623)
			 || (pos_x <= 10'd17 && pos_x>= 10'd13))
		 begin
			 crossGenerator = 12'b000100010001;
		 end

	end
	else if (pos_y == 470) // capisco in che riga sono
	begin
		//data la riga, posso calcolare in che posizione devo mettere le x:
		//pos_x = 470*640/480 = 627
		if((pos_x <= 10'd629 && pos_x>= 10'd625)
			 || (pos_x <= 10'd15 && pos_x>= 10'd11))
		 begin
			 crossGenerator = 12'b000100010001;
		 end

	end
	else if (pos_y == 471) // capisco in che riga sono
	begin
		//data la riga, posso calcolare in che posizione devo mettere le x:
		//pos_x = 471*640/480 = 628
		if((pos_x <= 10'd630 && pos_x>= 10'd626)
			 || (pos_x <= 10'd14 && pos_x>= 10'd10))
		 begin
			 crossGenerator = 12'b000100010001;
		 end

	end
	else if (pos_y == 472) // capisco in che riga sono
	begin
		//data la riga, posso calcolare in che posizione devo mettere le x:
		//pos_x = 472*640/480 = 629
		if((pos_x <= 10'd631 && pos_x>= 10'd627)
			 || (pos_x <= 10'd13 && pos_x>= 10'd9))
		 begin
			 crossGenerator = 12'b000100010001;
		 end

	end
	else if (pos_y == 473) // capisco in che riga sono
	begin
		//data la riga, posso calcolare in che posizione devo mettere le x:
		//pos_x = 473*640/480 = 631
		if((pos_x <= 10'd633 && pos_x>= 10'd629)
			 || (pos_x <= 10'd11 && pos_x>= 10'd7))
		 begin
			 crossGenerator = 12'b000100010001;
		 end

	end
	else if (pos_y == 474) // capisco in che riga sono
	begin
		//data la riga, posso calcolare in che posizione devo mettere le x:
		//pos_x = 474*640/480 = 632
		if((pos_x <= 10'd634 && pos_x>= 10'd630)
			 || (pos_x <= 10'd10 && pos_x>= 10'd6))
		 begin
			 crossGenerator = 12'b000100010001;
		 end

	end
	else if (pos_y == 475) // capisco in che riga sono
	begin
		//data la riga, posso calcolare in che posizione devo mettere le x:
		//pos_x = 475*640/480 = 633
		if((pos_x <= 10'd635 && pos_x>= 10'd631)
			 || (pos_x <= 10'd9 && pos_x>= 10'd5))
		 begin
			 crossGenerator = 12'b000100010001;
		 end

	end
	else if (pos_y == 476) // capisco in che riga sono
	begin
		//data la riga, posso calcolare in che posizione devo mettere le x:
		//pos_x = 476*640/480 = 635
		if((pos_x <= 10'd637 && pos_x>= 10'd633)
			 || (pos_x <= 10'd7 && pos_x>= 10'd3))
		 begin
			 crossGenerator = 12'b000100010001;
		 end

	end
	else if (pos_y == 477) // capisco in che riga sono
	begin
		//data la riga, posso calcolare in che posizione devo mettere le x:
		//pos_x = 477*640/480 = 636
		if((pos_x <= 10'd638 && pos_x>= 10'd634)
			 || (pos_x <= 10'd6 && pos_x>= 10'd2))
		 begin
			 crossGenerator = 12'b000100010001;
		 end

	end
	else if (pos_y == 478) // capisco in che riga sono
	begin
		//data la riga, posso calcolare in che posizione devo mettere le x:
		//pos_x = 478*640/480 = 637
		if((pos_x <= 10'd639 && pos_x>= 10'd635)
			 || (pos_x <= 10'd5 && pos_x>= 10'd1))
		 begin
			 crossGenerator = 12'b000100010001;
		 end

	end
	else if (pos_y == 479) // capisco in che riga sono
	begin
		//data la riga, posso calcolare in che posizione devo mettere le x:
		//pos_x = 479*640/480 = 639
		if((pos_x <= 10'd639 && pos_x>= 10'd637)
			 || (pos_x <= 10'd3 && pos_x>= 10'd0))
		 begin
			 crossGenerator = 12'b000100010001;
		 end

	end
end
endfunction
