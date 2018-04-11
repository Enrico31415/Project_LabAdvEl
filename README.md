# Chiedere a Ricci:
 1.  ~~drivers VGA: ce li facciamo o ce li dà?~~ FATTI
 2.  ~~dove ci si attacca con la sonda dell'OSC sulla scheda?~~ Non si pone più il problema
 3.  se alla fine funziona, ci paga da bere? ~~Non funzionerà mai.~~


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


# Branch:
## Master (modulo mouse):
 * Implementazione in corso del modulo di comunicazione del mouse. (Sarebbe da dare una bella pulita ai file non necessari.)
## VGADevelop:
 * Implementato il protocollo di comunicazione: lo si trova sotto il branch VGADevelop.
## CORE
 * Nel branch *core* è presente l'attuale versione a cui sto lavorando, ampiamente commentata, che coordina l'uscita a schermo, con l'engine della battaglia navale.
