// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DTHUGB2.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\cs_CZ\dialog.tlk
// dialogF  : (none)

BEGIN ~DTHUGB2~

IF ~  True()
~ THEN BEGIN 0 // from:
  SAY #33529 /* ~Ošuntělý grázl přímo smrdí problémem.~ */
  IF ~~ THEN REPLY #33532 /* ~"Zdravím..."~ */ GOTO 1
  IF ~~ THEN REPLY #33534 /* ~Nechej ho být.~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #33530 /* ~Muž si tě prohlídl a plivl ti na nohu. "Co? Chceš se rvát, hm?"~ */
  IF ~~ THEN REPLY #33535 /* ~"Ano, jsem... jseš připravenej?"~ */ DO ~Enemy()
ForceAttack(Protagonist,Myself)
~ EXIT
  IF ~~ THEN REPLY #33537 /* ~"Ne... Mám jenom pár otázek..."~ */ GOTO 2
  IF ~~ THEN REPLY #33538 /* ~"Ne; sbohem."~ */ GOTO 2
END

IF ~~ THEN BEGIN 2 // from: 1.1 1.2
  SAY #33531 /* ~"To je blbý, vole... protože se budeš rvát!" Muž vytáhl dlouhý nůž...~ */
  IF ~~ THEN REPLY #33540 /* ~Bojuj.~ */ DO ~Enemy()
ForceAttack(Protagonist,Myself)
~ EXIT
  IF ~~ THEN REPLY #33541 /* ~Uteč.~ */ DO ~Enemy()
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
~ EXIT
END
