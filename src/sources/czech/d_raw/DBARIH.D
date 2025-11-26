// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DBARIH.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\cs_CZ\dialog.tlk
// dialogF  : (none)

BEGIN ~DBARIH~

IF ~  True()
~ THEN BEGIN 0 // from:
  SAY #9708 /* ~Toto stvoření má tělo berana a torso muže. Ze zarostlé hlavy mu vyrůstají zkroucené rohy, srst má obarvenou a vyholenou do složitých vzorků. Barevné korále a jednoduché šperky jsou vpletené do vlasů a pověšené na rozích. Zdá se, že si tě nevšímá.~ */
  IF ~~ THEN REPLY #7544 /* ~"Zdravím."~ */ GOTO 1
  IF ~~ THEN REPLY #7565 /* ~Nechej ho na pokoji.~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #2725 /* ~Buďto tě neslyšel nebo předstírá, že ně. Asi půjde dál.~ */
  IF ~~ THEN REPLY #7623 /* ~"Řekl jsem, 'Zdravím.'"~ */ GOTO 2
  IF ~~ THEN REPLY #7646 /* ~Nechej ho jít.~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.0
  SAY #2734 /* ~Pozorně tě sleduje... tváří se podezřívavě, ale nemá strach.~ */
  IF ~~ THEN REPLY #12334 /* ~"Mám pár otázek..."~ */ GOTO 3
  IF ~~ THEN REPLY #12335 /* ~"No tak nic. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 2.0
  SAY #2743 /* ~Hlas stvoření je hluboký. "Na ulicích Úlu? Tady na to není vhodné místo. Nech mě být, možná se potkáme znovu na vhodnějším místě a pak si promluvíme."~ */
  IF ~~ THEN REPLY #12336 /* ~"Jenom jsem se chtěl zeptat na pár věcí."~ */ GOTO 4
  IF ~~ THEN REPLY #12337 /* ~"Tak tedy sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 3.0
  SAY #2753 /* ~"Příště, dvounožče, příště."Stvoření jde pomalu pryč.~ */
  IF ~~ THEN REPLY #12339 /* ~Zaútoč na něj, než stačí odejít.~ */ DO ~Enemy()
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
~ EXIT
  IF ~~ THEN REPLY #12340 /* ~Nechej ho jít.~ */ EXIT
END
