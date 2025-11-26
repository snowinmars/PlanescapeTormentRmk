// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DKIDMORT.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\pl_PL\dialog.tlk
// dialogF  : (none)

BEGIN ~DKIDMORT~

IF ~  Global("Morte_Stolen","GLOBAL",1)
~ THEN BEGIN 0 // from:
  SAY #28709 /* ~"Dzięki Mocom, że tu jesteś, szefie. Wyciągnij mnie stąd!"~ */
  IF ~  Global("KidMorte_Talk","AR0508",0)
~ THEN REPLY #28719 /* ~"A cóż ty tam robisz?"~ */ DO ~SetGlobal("KidMorte_Talk","AR0508",1)
~ GOTO 1
  IF ~  Global("KidMorte_Talk","AR0508",0)
~ THEN REPLY #28720 /* ~"Dlaczego?"~ */ DO ~SetGlobal("KidMorte_Talk","AR0508",1)
~ GOTO 1
  IF ~  GlobalGT("KidMorte_Talk","AR0508",0)
~ THEN REPLY #28721 /* ~"Pracuję nad tym, Morte. Daj mi trochę czasu."~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0 0.1
  SAY #28710 /* ~"Te przeklęte szczurołaki przycięły mi i przyprowadziły tutaj! Dalej, szefie... Spadajmy stąd! To miejsce mi śmierdzi!"~ */
  IF ~~ THEN REPLY #28722 /* ~"Dlaczego, po prostu, nie spłyniesz na dół?"~ */ GOTO 2
  IF ~~ THEN REPLY #28723 /* ~"No nie wiem, całkiem nieźle pasujesz do tych czaszek..."~ */ GOTO 3
END

IF ~~ THEN BEGIN 2 // from: 1.0
  SAY #28711 /* ~"Nie mogę! Już próbowałem! Dalej, ściągnij mnie stąd, zanim..."~ */
  IF ~~ THEN DO ~SetGlobal("KidMorte_Speak","AR0508",1)
StartCutSceneMode()
StartCutSceneEx("0508cs1",FALSE)
~ EXIT
END

IF ~~ THEN BEGIN 3 // from: 1.1
  SAY #28712 /* ~"Przestań robić sobie jaja, szefie... musimy się stąd zmywać, zanim..."~ */
  IF ~~ THEN DO ~SetGlobal("KidMorte_Speak","AR0508",1)
StartCutSceneMode()
StartCutSceneEx("0508cs1",FALSE)
~ EXIT
END

IF ~~ THEN BEGIN 4 // from:
  SAY #28713 /* ~"Och... nie." Słyszysz przerażony szept Mortego. "NIE obrażaj tego krwawnika, szefie... wpisze cię do księgi umarłych zanim zdążysz splunąć."~ */
  IF ~~ THEN EXTERN ~DLOTHAR~ 23
END

IF ~~ THEN BEGIN 5 // from:
  SAY #28714 /* ~Morte zaczyna mówić głośniej. W jego głosie słychać przerażenie i bojaźń. Oczywiste jest, że jego zdaniem, Lotar nie jest kimś, z kim można zadzierać. "To o mnie mu chodzi. Wypuść mnie, panie, a damy sobie z tym spokój. Zapomnijmy o starych zgrzytach, co?"~ */
  IF ~~ THEN EXTERN ~DLOTHAR~ 51
END

IF ~~ THEN BEGIN 6 // from:
  SAY #28715 /* ~Morte zaczyna mówić głośniej. "To o mnie mu chodzi. Wypuść mnie, panie, a damy sobie z tym spokój. Zapomnijmy o starych zgrzytach, co?"~ */
  IF ~~ THEN EXTERN ~DLOTHAR~ 51
END

IF ~~ THEN BEGIN 7 // from:
  SAY #28716 /* ~"Dla mnie wystarczy, szefie, a to ja tutaj tkwię. Daj sobie z tym spokój, dobra? Idźże po tę czaszkę, a potem wróć po mnie."~ */
  IF ~~ THEN REPLY #28724 /* ~"W porządku, Lotarze. Zaraz po niego wrócę. Żegnaj."~ */ EXIT
  IF ~~ THEN REPLY #28725 /* ~"Nie wystarczy dla MNIE. Będę walczył o niego, Lotarze."~ */ EXIT
END

IF ~~ THEN BEGIN 8 // from:
  SAY #28717 /* ~"Szefie, nie! Zmiecie cię z ziemi jak nic!" Morte jest okropnie przerażony. "To jeden z najbardziej wpływowych gości w całej przeklętej Klatce!"~ */
  IF ~~ THEN REPLY #28726 /* ~"To niedobrze. Zwróć go, Lotarze."~ */ EXTERN ~DLOTHAR~ 18
  IF ~~ THEN REPLY #28727 /* ~"Dobrze. Ale wrócę po niego, Lotarze."~ */ EXIT
END

IF ~~ THEN BEGIN 9 // from:
  SAY #28718 /* ~"Szefie, odpuść sobie! Daj spokój!"~ */
  IF ~~ THEN EXTERN ~DLOTHAR~ 34
END

IF ~  Global("Morte_Stolen","GLOBAL",0)
~ THEN BEGIN 10 // from:
  SAY #54289 /* ~To półka, na której leżą dwie szczerzące zęby czaszki. Pomiędzy nimi można dostrzec lukę, w której idealnie zmieściłby się jeszcze jeden czerep.~ */
  IF ~~ THEN REPLY #54292 /* ~Zostaw ją w spokoju.~ */ EXIT
END

IF ~  GlobalGT("Morte_Stolen","GLOBAL",1)
~ THEN BEGIN 11 // from:
  SAY #54290 /* ~Między dwoma wyszczerzonymi czaszkami widnieje pusta przestrzeń – również wielkości czaszki.~ */
  IF ~~ THEN REPLY #54291 /* ~Zostaw ją w spokoju.~ */ EXIT
END
