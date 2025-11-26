// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DFBVGER.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\cs_CZ\dialog.tlk
// dialogF  : (none)

BEGIN ~DFBVGER~

IF ~  Global("BV_Enemy","GLOBAL",1)
~ THEN BEGIN 0 // from:
  SAY #20029 /* ~Divoce vyhlížející žena na tebe vrhla pohled plný hrůzy. Než jsi stačil promluvit, dala se na útěk.~ */
  IF ~~ THEN REPLY #20030 /* ~"Tak sbohem."~ */ DO ~Enemy()
EscapeArea()
~ EXIT
END

IF ~  GlobalGT("AR0403_Visited","GLOBAL",0)
~ THEN BEGIN 1 // from:
  SAY #20031 /* ~Žena na tebe hledí s hrůzou v očích do široka rozevřených. "Nepřibližuj se ke mně, vole, a nic se ti nestane!"~ */
  IF ~~ THEN REPLY #20032 /* ~"Uklidni se. Jenom jsem chtěl vědět, kdo jsi."~ */ GOTO 2
  IF ~~ THEN REPLY #20033 /* ~"Hej, zklidni se. Co to děláš?"~ */ GOTO 4
  IF ~~ THEN REPLY #20034 /* ~"Čeho se tak bojíš?"~ */ GOTO 5
  IF ~~ THEN REPLY #20035 /* ~"Dobrá tedy. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.0 3.0
  SAY #20036 /* ~"Kdo jsem?" Hořce se zasmála. "Stejně tak se můžeš ptát na jméno jednoho zrnka písku, páč asi tak důležitá jsem já."~ */
  IF ~~ THEN REPLY #20037 /* ~"To je opravdu osvěžující názor na život. Mám pár otázek..."~ */ GOTO 3
  IF ~~ THEN REPLY #20038 /* ~"Aha. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 2.0 4.0 5.2 6.0 7.0 8.0
  SAY #20039 /* ~"Pokračuj... co chceš vědět?"~ */
  IF ~~ THEN REPLY #20040 /* ~"Kdo jsi?"~ */ GOTO 2
  IF ~~ THEN REPLY #20041 /* ~"Co to děláš?"~ */ GOTO 4
  IF ~  GlobalGT("AR0403_Visited","GLOBAL",0)
~ THEN REPLY #20042 /* ~"Čeho se bojíš?"~ */ GOTO 5
  IF ~~ THEN REPLY #20043 /* ~"No tak nic. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 1.1 3.1
  SAY #20044 /* ~"Co dělám? No snažím se žít svůj mizernej život pod Hadrnikovým náměstim a vyhejbám se těm, keří mě na todle místo strčili. To je to, co dělám."~ */
  IF ~~ THEN REPLY #20045 /* ~"Dobrá tedy. Mám pár dalších otázek..."~ */ GOTO 3
  IF ~~ THEN REPLY #20046 /* ~"Děkuju. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 1.2 3.2
  SAY #20047 /* ~"Jenom se ujišťuju, že nejseš jedna z těch potvor, co rozervali Pharoda na kusy."~ */
  IF ~~ THEN REPLY #20048 /* ~"Potvory? Jaké potvory?"~ */ GOTO 6
  IF ~~ THEN REPLY #20049 /* ~"Pharod je mrtvý?"~ */ GOTO 6
  IF ~~ THEN REPLY #20050 /* ~"Tak to mám ještě pár dalších otázek..."~ */ GOTO 3
  IF ~~ THEN REPLY #20051 /* ~"Aha. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 6 // from: 5.0 5.1
  SAY #20052 /* ~"Jó, byly to potvory stvořený z noci a temnoty, který tudyma proletěly a zmizely v Pharodově dvoře. Mám pocit, jako bysem eště teď slyšela ozvěnu jeho řevu..."~ */
  IF ~~ THEN REPLY #20053 /* ~"Dobrá. Řekni mi ještě něco..."~ */ GOTO 3
  IF ~~ THEN REPLY #20054 /* ~"To je všechno, co jsem chtěl vědět. Sbohem."~ */ EXIT
END

IF ~  NumTimesTalkedToGT(0)
~ THEN BEGIN 7 // from:
  SAY #20055 /* ~Utřela si nos do rukávu. "Co to chceš tentokrát, he?"~ */
  IF ~~ THEN REPLY #20056 /* ~"Chci pár odpovědí."~ */ GOTO 3
  IF ~~ THEN REPLY #20057 /* ~"Nic. Sbohem."~ */ EXIT
END

IF ~  NumTimesTalkedTo(0)
~ THEN BEGIN 8 // from:
  SAY #20058 /* ~Vidíš divoce vyhlížející ženu, které do tváře vyryl vrásky nejenom čas, ale i starosti. V jejích očích vidíš únavu. Než promluvila, několikrát popotáhla nosem. "Co vode mě chceš?"~ */
  IF ~~ THEN REPLY #20059 /* ~"Jenom odpovědi na pár otázek..."~ */ GOTO 3
  IF ~~ THEN REPLY #20060 /* ~"Nic. Sbohem."~ */ EXIT
END
