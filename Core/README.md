Qui, l'implementazione dell VGA, associata al core, cioè il modulo che dovà gestire, come matrice, la griglia della battaglia navale. **Il codice è commentato**.
# Implemetazione attuale:
Al momento, l'implementazione è la seguente:

```sequence
VGASyncronizer->Schermo: VGA_HSYNC, VGA_VSYNC 
VGASyncronizer->VGADriver: positon_x, position_y, write_enable
VGADriver->Schermo: color@(x,y)
MouseSimulator->VGADriver: pointer@(x,y)
```
In pratica, tutto quello che disegna è contenuto in *VGADriver*.
*VGASyncronizer* serve a sincronizzare lo schermo con la risoluzione.
*MouseSimulator* utilizza due registri di posizione, per simulare la posizione del puntantore a schermo (vedi "da fare").
*write_enable* serve ad avere colore nero, nelle parti 'esterne' dello schermo. Per 'esterne', intendo le parti dove avviene il porch ovvero la bobine, ai tempi, veniva polarizzata al contrario per riprendere a dipingere lo schermo.

**Nota bene: lo schermo parte da (x,y) = (0,0) in ALTO A SINISTRA.**

## Da fare:
1. implementare e testare, un modo furbo per dividere il display in 10x10 (non 640x480 pixcel).
   - Vedere se è possibile utilizzare la divisione per intero, ed eventualmente il prodotto.
   - Implementare bene i bordi della girglia, che non sograno problemi di posizione.
2. Interfacciare il mouse con il core, non con il controller.
   - Gestire l'evento del Click del mouse.
   - Gestire la posizione nella griglia (sulle celle, o sui bordi della griglia. Fare riferimento al punto 1.).
   - Gestire il segnale del mouse. Attualmente il simulatore del mouse, permette solamente incrementi unitari alla posizione, con un clock prestabilito. Bisogna studiare una maniera furba per generare spostamento proporzionale al segnale, dato un clock. L'unica credo sarà provare.
3. Porovare il posizionamento delle navi, coerente con le regole, non necessariamente con il generatore random al momento.
   - Implementare un generatore pseudorandom (già pronto) ed interfacciarlo. Come fargli generare due numeri tra 0 e 9 per ogni nave? Eventualmente considerare l'orientamento? Bel casino.
4. Implementare la fase di gioco del giocatore.
   - Fintanto che la il giocatore non ha concluso sparando, la board deve seguire il mouse.
5. Implementare la fase di gioco dell'ia.
   - Usare sempre il generatore pseudorandom per sparare con più o meno furbizia.  
6. Implementare le win condition.
