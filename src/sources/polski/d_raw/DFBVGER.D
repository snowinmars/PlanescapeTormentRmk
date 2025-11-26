// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DFBVGER.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\pl_PL\dialog.tlk
// dialogF  : (none)

BEGIN ~DFBVGER~

IF ~  Global("BV_Enemy","GLOBAL",1)
~ THEN BEGIN 0 // from:
  SAY #20029 /* ~Ta wybiedzona kobieta patrzy na ciebie z przerażeniem i ucieka zanim zdążysz się odezwać.~ */
  IF ~~ THEN REPLY #20030 /* ~"No to na razie..."~ */ DO ~Enemy()
EscapeArea()
~ EXIT
END

IF ~  GlobalGT("AR0403_Visited","GLOBAL",0)
~ THEN BEGIN 1 // from:
  SAY #20031 /* ~Kobieta patrzy na ciebie rozszerzonymi ze strachu oczyma. "Trzymaj się ode mnie z daleka, trepie, to nic ci się nie stanie!"~ */
  IF ~~ THEN REPLY #20032 /* ~"Uspokój się. Chciałem się tylko dowiedzieć kim jesteś."~ */ GOTO 2
  IF ~~ THEN REPLY #20033 /* ~"Hej, spokojnie. Co robisz?"~ */ GOTO 4
  IF ~~ THEN REPLY #20034 /* ~"Kogo się tak boisz?"~ */ GOTO 5
  IF ~~ THEN REPLY #20035 /* ~"Dobrze. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.0 3.0
  SAY #20036 /* ~"Kim jestem? Śmieje się gorzko. "Śmiałku, równie dobrze mógłbyś zapytać o imię ziarnko piasku, bo jest tak samo ważne jak ja."~ */
  IF ~~ THEN REPLY #20037 /* ~"Taki punkt widzenia dodaje otuchy. Mam kilka pytań..."~ */ GOTO 3
  IF ~~ THEN REPLY #20038 /* ~"Rozumiem. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 2.0 4.0 5.2 6.0 7.0 8.0
  SAY #20039 /* ~"Mów dalej... co chciałeś wiedzieć?"~ */
  IF ~~ THEN REPLY #20040 /* ~"Kim jesteś?"~ */ GOTO 2
  IF ~~ THEN REPLY #20041 /* ~"Co robisz?"~ */ GOTO 4
  IF ~  GlobalGT("AR0403_Visited","GLOBAL",0)
~ THEN REPLY #20042 /* ~"Czego się tak boisz?"~ */ GOTO 5
  IF ~~ THEN REPLY #20043 /* ~"Nieważne. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 1.1 3.1
  SAY #20044 /* ~"Co robię? Czemu, próbuję tylko wieść żebracze życie pod Placem Szmaciarzy i unikać tych, którzy mnie w to wpakowali. Oto co robię."~ */
  IF ~~ THEN REPLY #20045 /* ~"Dobrze. Mam jeszcze kilka pytań..."~ */ GOTO 3
  IF ~~ THEN REPLY #20046 /* ~"Dzięki. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 1.2 3.2
  SAY #20047 /* ~"Tylko się upewniam, że nie jesteś jednym z tych stworów, które rozdarły na strzępy Faroda."~ */
  IF ~~ THEN REPLY #20048 /* ~"Stworów? Jakich stworów?"~ */ GOTO 6
  IF ~~ THEN REPLY #20049 /* ~"Farod nie żyje?"~ */ GOTO 6
  IF ~~ THEN REPLY #20050 /* ~"Mam jeszcze kilka pytań..."~ */ GOTO 3
  IF ~~ THEN REPLY #20051 /* ~"Rozumiem. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 6 // from: 5.0 5.1
  SAY #20052 /* ~"Taa, to stwory nocy i ciemności, stwory nie-światła, przemknęły tędy i zniknęły w dworze Faroda. Echo krzyków zostało, jakby..."~ */
  IF ~~ THEN REPLY #20053 /* ~"W porządku. W takim razie powiedz mi coś jeszcze..."~ */ GOTO 3
  IF ~~ THEN REPLY #20054 /* ~"To wszystko, co chciałem wiedzieć. Żegnaj."~ */ EXIT
END

IF ~  NumTimesTalkedToGT(0)
~ THEN BEGIN 7 // from:
  SAY #20055 /* ~Wyciera zakatarzony nos w rękaw. "Czego chcesz tym razem?"~ */
  IF ~~ THEN REPLY #20056 /* ~"Chciałem usłyszeć kilka odpowiedzi."~ */ GOTO 3
  IF ~~ THEN REPLY #20057 /* ~"Nic. Żegnaj."~ */ EXIT
END

IF ~  NumTimesTalkedTo(0)
~ THEN BEGIN 8 // from:
  SAY #20058 /* ~Widzisz wybiedzoną kobietę, na jej pobrużdżonej twarzy widać wszystkie blizny jakie pozostawiły po sobie mijające lata. Jej oczy są rozumne i zmęczone. Podczas mówienia pociąga nosem. "Czego ode mnie chcesz?"~ */
  IF ~~ THEN REPLY #20059 /* ~"Tylko odpowiedzi na kilka pytań..."~ */ GOTO 3
  IF ~~ THEN REPLY #20060 /* ~"Nic. Żegnaj."~ */ EXIT
END
