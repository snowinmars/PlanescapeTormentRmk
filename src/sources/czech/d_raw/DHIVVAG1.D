// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DHIVVAG1.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\cs_CZ\dialog.tlk
// dialogF  : (none)

BEGIN ~DHIVVAG1~

IF ~  NumTimesTalkedTo(0)
~ THEN BEGIN 0 // from:
  SAY #48800 /* ~Vidíš muže, který si zřejmě prohlíží vnitřek budovy.~ */
  IF ~~ THEN REPLY #48801 /* ~"Zdravím."~ */ GOTO 2
  IF ~~ THEN REPLY #48802 /* ~Nechej muže být.~ */ DO ~SetNumTimesTalkedTo(0)
~ EXIT
END

IF ~  NumTimesTalkedToGT(0)
~ THEN BEGIN 1 // from:
  SAY #48803 /* ~"Zase ty... copak jsem ti neříkal, že tohle místo je moje? Zmizni, nebo to bude po zlým!"~ */
  IF ~~ THEN REPLY #48804 /* ~"To bych docela rád viděl."~ */ GOTO 3
  IF ~~ THEN REPLY #48805 /* ~"Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 0.0
  SAY #48806 /* ~"Já to místo našel první. Tak si radši nic nezkoušej, jestli nechceš dopadnout jako sedláci u Chlumce!"~ */
  IF ~~ THEN REPLY #48807 /* ~"A co s tím jako budeš dělat? Zavoláš na mě královskou armádu?"~ */ GOTO 3
  IF ~~ THEN REPLY #48808 /* ~"Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 1.0 2.0
  SAY #48809 /* ~"Sám sis o to řekl!"~ */
  IF ~~ THEN REPLY #48810 /* ~Zaútoč na něj.~ */ DO ~Enemy()
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
~ EXIT
END
