// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DHIVVAR5.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\cs_CZ\dialog.tlk
// dialogF  : (none)

BEGIN ~DHIVVAR5~

IF ~  NumTimesTalkedTo(0)
~ THEN BEGIN 0 // from:
  SAY #49004 /* ~Vidíš bledého muže, stojícího uprostřed místnosti. Je nahrbený a vůbec nevypadá dobře.~ */
  IF ~~ THEN REPLY #49005 /* ~"Zdravím."~ */ GOTO 2
  IF ~~ THEN REPLY #49006 /* ~Nechej muže být.~ */ DO ~SetNumTimesTalkedTo(0)
~ EXIT
END

IF ~  NumTimesTalkedToGT(0)
~ THEN BEGIN 1 // from:
  SAY #49007 /* ~"Zase ty... copak jsem ti neříkal, že si potřebuju odpočinout?"~ */
  IF ~~ THEN REPLY #49008 /* ~"Hmm... Co se stalo?"~ */ GOTO 4
  IF ~~ THEN REPLY #49009 /* ~"Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 0.0
  SAY #49010 /* ~"Cítím se hrozně."~ */
  IF ~~ THEN REPLY #49011 /* ~"Co se stalo?"~ */ GOTO 3
END

IF ~~ THEN BEGIN 3 // from: 2.0
  SAY #49012 /* ~"Nejsem si jistý, ale myslím si, že trocha odpočinku mi prospěje. Můžeš mě prosím nechat o samotě?"~ */
  IF ~~ THEN REPLY #49013 /* ~"Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 1.0
  SAY #49014 /* ~"Můžeš prosím odejít, ať si můžu odpočinout? Hodinka dvě spánku mě snad postaví na nohy."~ */
  IF ~~ THEN REPLY #49015 /* ~"Sbohem."~ */ EXIT
END
