Qui il piazzamento delle navi, implementato con il mouse, e relativa fase di gioco del giocatore. Manca tutta la gestione dell'ia.

**Il codice è commentato**.
## Implemetazione attuale:
Al momento, l'implementazione è la seguente:

```sequence
Controller->Main: gestisce tutte le connessione tra i moduli. Non compie azioni logiche.
VGASyncronizer->Si occupa solo di mandare gli inpusli allo schermo: VSYNC e HSYNC temporezzati in maniera opportuna. Non dovrebbe essere modificato ulteriormente.
VGADriver->Mosulo che gestisce tutto quello che deve essere stampato a schermo.
GridEngine->Gestisce la griglia, quindi la logica del gioco. Qui tutto quello che serve per implementare la battaglia.
pos_to_quadrant->Generato in python, date due coordinate (x,y), ritorna la posizione in una griglia 8x8 in cui si trovano.
cellMemory->Generato in python, tiene traccia di tutte le celle, e dello stato per ogni cella. Oltre che del piazzamento.
Del mouse bisogna chiedere a Matteo.
```

Nella cartella [PytonScript](/Core/PythonScript) sono presenti degli script in python, commentati. Sostanzialmente generano il codice sopra descritto. Per i pigri, è apparso un `updatePython.sh` che se lanciato dov'è, permette di generare e sostituire in automatico il codice degli script.

**Nota bene: lo schermo parte da (x,y) = (0,0) in ALTO A SINISTRA.**

## Compilazione
Al momento sto compilando con hight effort, ottimizzando l'area, ma sembra che nel caso sia attorno al 60%, riesca ad ottimizzare qualcosa. Con i numeri attuali, non cambia quasi nulla. Tipo l'1%, che e' >> rispetto alla statistica intrinseca dell'ISE nel routing.

[Stati Di gioco](https://docs.google.com/spreadsheets/u/0/d/1Qd8FopQ8yWa7iJ-2ZOG8bOZxmg-6VDnGaTrMq8usKbg/edit?usp=sharing)

## TODO:
1. Unire il tutto con l'IA. Non sara' possibile visto il consumo attuale di silicio della board. Ogni riga aggiunta aumenta esponenzialmente il consumo
2. Implementare le win condition
