# Project_LabAdvEl
Final projet of LabAdvEl

# Chiedere a Ricci:
 1. drivers VGA: ce li facciamo o ce li dà?
 2. dove ci si attacca con la sonda dell'OSC sulla scheda?
 3. se alla fine funziona, ci paga da bere?


# Link utili:
 1. [protocollo PS/2](http://www.burtonsys.com/ps2_chapweske.htm) spiegata in dettaglio la parte di livello fisico e il timing
 2. [protocollo PS/2](https://allpinouts.org/pinouts/connectors/input_device/mouse-keyboard-ps-2/) parla di timing e pins
## Da wikidev:
 1. [PS/2 mouse](https://wiki.osdev.org/PS/2_Mouse) alcuni codici e struttura del pacchetto
 2. [PS/2](https://wiki.osdev.org/PS/2) pins del cavo m/f e bits nei pacchetti nel caso client -> host e viceversa
 3. [PS/2 controller](https://wiki.osdev.org/"8042"_PS/2_Controller) comandi per il mouse, inizializzazione e registri interni
 4. [Mouse input](https://wiki.osdev.org/Mouse_Input) struttura dei pacchetti, handling doppio click e rotellina, sample rate, risoluzione. In più altri comandi.

# TODO:
## Protocollo mouse:
 * Capire quando campionare il segnale dev->host in ingresso in termini del clock: falling-edge OR low OR high OR rising-edge?
 * Stessa cosa per le comunicazioni host->dev
 * timing
 * programma pc per capire cosa si dicono


## modulo mouse:
 * portare il programma su FPGA
## VGA
## generatore random per le navi
