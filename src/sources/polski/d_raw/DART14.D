// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DART14.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\pl_PL\dialog.tlk
// dialogF  : (none)

BEGIN ~DART14~

IF ~  Global("View_Art_14","AR0608",0)
~ THEN BEGIN 0 // from:
  SAY #34206 /* ~To portret groteskowo wyglądającej, starej wiedźmy z zakrzywionym nosem. Jej ciało ma chory, niebiesko-szary kolor. Jej oczy świecą na czerwono jak węgle w gasnącym ognisku. Jej podbródek, długi i ostry, wystaje do przodu, jakby miała okropny zgryz. Z dolnej szczęki wystają jej dwa pożółkłe kły. Uśmiech na jej zniszczonych, fioletowawych ustach mówi o okropnej tajemnicy. Na podpisie widnieją słowa: 'Szara Wiedźma z Oinos'.~ */
  IF ~~ THEN REPLY #42684 /* ~Odejdź.~ */ DO ~SetGlobal("View_Art_14","AR0608",1)
~ GOTO 2
END

IF ~  Global("View_Art_14","AR0608",1)
~ THEN BEGIN 1 // from:
  SAY #42681 /* ~To portret groteskowo wyglądającej, starej wiedźmy z zakrzywionym nosem. Jej ciało ma chory, niebiesko-szary kolor. Jej oczy świecą na czerwono jak węgle w gasnącym ognisku. Jej podbródek, długi i ostry, wystaje do przodu, jakby miała okropny zgryz. Z dolnej szczęki wystają jej dwa pożółkłe kły. Uśmiech na jej zniszczonych, fioletowawych ustach mówi o okropnej tajemnicy. Na podpisie widnieją słowa: 'Szara Wiedźma z Oinos'.~ */
  IF ~~ THEN REPLY #42686 /* ~Odejdź.~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 0.0
  SAY #42682 /* ~Już zaczynasz odwracać się od obrazu, kiedy coś przyciąga twoją uwagę... z tyłu twojego umysłu narasta dziwne, szczypiące uczucie... pamięć, która zaczyna wydostawać się na powierzchnię...~ */
  IF ~~ THEN REPLY #42687 /* ~Spróbuj przypomnieć sobie to wspomnienie.~ */ DO ~PlaySoundNotRanged("SPTR_01")
GiveExperience(Protagonist,300)
~ GOTO 3
  IF ~~ THEN REPLY #42688 /* ~Odwróć się i stłum wspomnienie.~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 2.0
  SAY #42683 /* ~Przypominasz sobie, jak stoisz w zagubieniu pośrodku cierniowego labiryntu. Podła czarownica z malowidła stoi przed tobą, chichotając dziko. W zdenerwowaniu zaciskasz zęby, zastanawiając się, dlaczego wiedźma śmieje się z ciebie. "Mój biedny, drogi, uroczy człowieczku! To było twoje *pierwsze* życzenie!" Wskazuje swoim kościstym palcem zakończonym szponem na twoje czoło. Twoje skronie zaczynają pulsować bólem... i nic już nie pamiętasz.~ */
  IF ~~ THEN REPLY #42689 /* ~Odejdź.~ */ EXIT
END
