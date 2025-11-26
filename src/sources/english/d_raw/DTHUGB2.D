// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DTHUGB2.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\en_US\dialog.tlk
// dialogF  : (none)

BEGIN ~DTHUGB2~

IF ~  True()
~ THEN BEGIN 0 // from:
  SAY #33529 /* ~This seedy-looking thug reeks of trouble.~ */
  IF ~~ THEN REPLY #33532 /* ~"Greetings..."~ */ GOTO 1
  IF ~~ THEN REPLY #33534 /* ~Leave him alone.~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #33530 /* ~The man looks you over and spits at your feet. "Wot? Lookin' fer a fight, are ye?"~ */
  IF ~~ THEN REPLY #33535 /* ~"Yes, I am... you ready?"~ */ DO ~Enemy()
ForceAttack(Protagonist,Myself)
~ EXIT
  IF ~~ THEN REPLY #33537 /* ~"No... I just had some questions..."~ */ GOTO 2
  IF ~~ THEN REPLY #33538 /* ~"No; farewell."~ */ GOTO 2
END

IF ~~ THEN BEGIN 2 // from: 1.1 1.2
  SAY #33531 /* ~"Too bad, sod... 'cause ye gots a fight!" The man draws a long-bladed knife...~ */
  IF ~~ THEN REPLY #33540 /* ~Fight.~ */ DO ~Enemy()
ForceAttack(Protagonist,Myself)
~ EXIT
  IF ~~ THEN REPLY #33541 /* ~Flee.~ */ DO ~Enemy()
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
~ EXIT
END
