# Project_LabAdvEl
Final projet of LabAdvEl


# VGA
## 28/03/2018 (mattina):
in mattinana ho implementato (due volte) i un controller VGA. In entrami i casi non funziona. In entrambi i casi ho capito il motivo. Il primo tentativo è stato cancellato di violenza, in quanto il codice risultava troppo illeggibile e io stesso non capivo più niente. Sostanzialmente l'erorre del primo sviloppo nascie nello considerare indipendenti i due contatori per la posizione. Assunzione legittima, se non fosse che, poi devono interagire sullo tra di loro non con un semplice clock (carry di uno è il clock dell'altro). Infatti, per il protocollo di comunicazione VGA, richiede che all'esterno dello schermo, vi sia nero, mentre all'interno, una combinazione di colori. Non è possibile a quanto ne so, condividere per entrambi lo stesso output (il compilatore si arrabbia). Bisognerebbe introdurre mutua escolusione e roba strane, ma non è questa la sede. Per far bene, sarebbe da usare la RAM, ma non sarà questa la sede.
Nella seconda implementazione, sono arrivato a qualcosa di più sensanto, tanto che il monitor, si è lamentato della risoluzione che gli davo. Ora, la risoluzione è stabilita dei vsync, e hsync, inpulsi blaba bla bla.... Quindi, guardando con l'oscilloscopio questi implulsi, ho notato che sono scazzati. Pomeriggio proverò o correggerli, ma sono fiducioso.
Enrico

