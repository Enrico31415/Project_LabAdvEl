Qui, l'implementazione dell VGA, associata al core, cioè il modulo che dovà gestire, come matrice, la griglia della battaglia navale. **Il codice è commentato**.
# Implemetazione attuale:
Al momento, l'implementazione è la seguente:

```sequence
Controller->Main: gestisce tutte le connessione tra i moduli. Non compie azioni logiche.
VGASyncronizer->Si occupa solo di mandare gli inpusli allo schermo: VSYNC e HSYNC temporezzati in maniera opportuna. Non dovrebbe essere modificato ulteriormente.
VGADriver->Mosulo che gestisce tutto quello che deve essere stampato a schermo.
MouseSimulator->Implementazione per simulare l'eventuale puntantore del mouse. 
GridEngine->Gestisce la griglia, quindi la logica del gioco. Qui tutto quello che serve per implementare la battaglia.
pos_to_quadrant->Generato in python, date due coordinate (x,y), ritorna la posizione in una griglia 10x10 in cui si trovano.
cellMemory->Generato in python, tiene traccia di tutte le celle, e dello stato per ogni cella.
```

Nella cartella [PytonScript] (/Core/PythonScript) sono presenti degli script in python, commentati. Sostanzialmente generano il codice sopra descritto. Per i pigri, è apparso un `updatePython.sh` che se lanciato dov'è, permette di generare e sostituire in automatico il codice degli script.

**Nota bene: lo schermo parte da (x,y) = (0,0) in ALTO A SINISTRA.**

## Da fare:
1. implementare e testare, un modo furbo per dividere il display in 10x10 (non 640x480 pixcel).
   - ~~Vedere se è possibile utilizzare la divisione per intero, ed eventualmente il prodotto.~~ La divisione è solo per multipli di 2, il prodotto, va testato, ma potrebbe funzionare. La divisione è stata aggirata con il modulo  *pos_to_quadrant*. 
   - Verificare il corretto funzionamento della memoria, eventualmente trovare qualche sgamo per eviatre di leggere/scrivere in due accessi separati. L'idea che mi è venuta in mente è che: se lo stato letto è diverso da quello 'attuale' (cioè da impostare), allora lo aggiorna. Altrimenti legge sempre.
   - Implementare bene i bordi della girglia, che non sograno problemi di posizione. Probabilmente, altre 250 righe di codice generato da Python.
2. Interfacciare il mouse:
   - Gestire l'evento del Click del mouse. In parte è gestito. Bisogna implementare l'effetto. Magari click sx per girare le navi in posizionamento.
   - Gestire la posizione nella griglia (sulle celle, o sui bordi della griglia. Fare riferimento al punto 1.).
   - Gestire il segnale del mouse. Attualmente il simulatore del mouse, permette solamente incrementi unitari alla posizione, con un clock prestabilito. Bisogna studiare una maniera furba per generare spostamento proporzionale al segnale, dato un clock. L'unica credo sarà provare.
3. Porovare il posizionamento delle navi, coerente con le regole, non necessariamente con il generatore random al momento.
   - Implementare un generatore pseudorandom (già pronto) ed interfacciarlo. Come fargli generare due numeri tra 0 e 9 per ogni nave? Eventualmente considerare l'orientamento? Bel casino.
4. Implementare la fase di gioco del giocatore.
   - Fintanto che la il giocatore non ha concluso sparando, la board deve seguire il mouse.
5. Implementare la fase di gioco dell'ia.
   - Usare sempre il generatore pseudorandom per sparare con più o meno furbizia.  
6. Implementare le win condition.
