// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DZM79.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\pl_PL\dialog.tlk
// dialogF  : (none)

BEGIN ~DZM79~

IF ~  True()
~ THEN BEGIN 0 // from:
  SAY #34942 /* ~Jest oczywiste, że mięsista głowa truposza została w którymś miejscu odrąbana i pośpiesznie przyszyta z powrotem. Różne rodzaje szwów - każdy w jakiś sposób postrzępiony - wydają się wskazywać na to, że głowa wciąż za bardzo odchyla się do tyłu i z powrotem jest przytwierdzana w trakcie pracy truposza. Na skroni ktoś wyciął numer "79". Jest otaczony kręgiem kłów. Takie same znaki znajdują się na jego czole.~ */
  IF ~~ THEN REPLY #34943 /* ~"Więc jak... widziałeś, aby działo się tu coś interesującego?"~ */ DO ~IncrementGlobalOnceEx("GLOBALZombie_Chaotic","GLOBALLaw",-1)
~ GOTO 1
  IF ~  Global("Know_Copper_Earring_Secret","GLOBAL",0)
~ THEN REPLY #34946 /* ~Przyjrzyj się dobrze kręgowi kłów.~ */ DO ~SetGlobal("Know_Copper_Earring_Secret","GLOBAL",1)
~ GOTO 3
  IF ~  Global("Vaxis_Exposed","GLOBAL",1)
~ THEN REPLY #34947 /* ~"Przecież wiem, że nie jesteś zombie. Nikogo nie oszukasz."~ */ GOTO 1
  IF ~  Global("Speak_with_Dead","GLOBAL",1)
~ THEN REPLY #34948 /* ~Posłuż się swoją umiejętnością Gadaj-Kości-Opowieści.~ */ GOTO 2
  IF ~~ THEN REPLY #34951 /* ~"Miło było z tobą pogadać. Żegnaj."~ */ EXIT
  IF ~~ THEN REPLY #34952 /* ~Zostaw truposza w spokoju.~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0 0.2
  SAY #34944 /* ~Trup wciąż się w ciebie wpatruje.~ */
  IF ~~ THEN REPLY #34945 /* ~Zostaw truposza w spokoju.~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 0.3 3.0 3.1
  SAY #34949 /* ~Truposz nie odpowiada. Wygląda na to, że jest w zbyt daleko posuniętym stadium rozkładu, aby odpowiedzieć na twoje pytania.~ */
  IF ~~ THEN REPLY #34950 /* ~Zostaw truposza w spokoju.~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 0.1
  SAY #64278 /* ~Krąg kłów wygląda tak, jakby oznakowano nim czoło truposza dawno temu, przypuszczalnie przed jego śmiercią. Być może jest to jakiś religijny znak, lub rytuał przejścia. Zauważasz, że jedna z przerw pomiędzy wewnętrznymi 'kłami' ma niewielki trójkącik w środku, jakby miało to jakieś specjalne znaczenie.~ */
  IF ~  !PartyHasItem("CopEarC")
~ THEN REPLY #64279 /* ~"Hmmm. Interesujące... w jaki sposób znalazło się tu to znamię, trupku?"~ */ JOURNAL #64536 /* ~Na czole Zombie nr 79 znalazłem dziwny okrągły zakrzywiony symbol. Z jakiegoś powodu znak ten wydał mi się bardzo ważny, jakkolwiek nie wiem, dlaczego.~ */ GOTO 2
  IF ~  PartyHasItem("CopEarC")
~ THEN REPLY #64280 /* ~"Hmmm... Zastanawiam się, czy ta przerwa pomiędzy kłami pasuje do wyżłobień na tym miedzianym kolczyku, który mam..."~ */ JOURNAL #64537 /* ~Na czole Zombie nr 79 znalazłem dziwny okrągły zakrzywiony symbol. Jeden rzut oka na ten znak przypomniał mi o starożytnym kolczyku, jaki znalazłem w Południowo-Wschodniej Komnacie Sekcyjnej. Może te dwie rzeczy łączą się w jakiś sposób?~ */ GOTO 2
END
