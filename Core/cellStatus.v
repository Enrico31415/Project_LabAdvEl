// contiene le definizioni degli stati delle celle.


`define free 4'd0//libera


//P: player
//I: IA
//s: shoot
//n: nave
//per ordine: prima le navi (del giocatore e poi dell'ia), poi gli spari

`define Ps 4'd1//Player shoot
`define Is 4'd2//Ia shoot
`define PsIs 4'd3//PlayerIa shoo
`define Pn 4'd4//Player nave
`define In 4'd5//Ia nave //DA MODIFICARE PER DEBUG
`define PnIn 4'd6//P and IA nave //DA MODIFICARE PER DEBUG
`define PnIs 4'd7//P nave Ia shot
`define InIs 4'd8//I nave I shoot
`define PnPs 4'd9//p nave p shoot
`define InPs 4'd10//I nave p shoot
`define PnInPs 4'd11//P nave I nave P shoot
`define PnInIs 4'd12//P nave I nave I shoot
`define PnPsIs 4'd13//P nave P shoot I shoot
`define InPsIs 4'd14//I nave P shoot I shoot
`define PnInPsIs 4'd15//P nave, I nave, P shoot, I shoot

