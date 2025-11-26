// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DCGOON2.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\cs_CZ\dialog.tlk
// dialogF  : (none)

BEGIN ~DCGOON2~
//////////////////////////////////////////////////
// WARNING: this file contains non-trivial WEIGHTs
//////////////////////////////////////////////////

IF WEIGHT #2 /* Triggers after states #: 3 4 even though they appear after this state */
~  NumTimesTalkedTo(0)
CreatureInArea("AR0707")
~ THEN BEGIN 0 // from:
  SAY #53701 /* ~"Nikdo tě tady nechce, vole. Radši jdi pryč, než se ti něco stane."~ */
  IF ~~ THEN REPLY #53702 /* ~"Sbohem."~ */ EXIT
END

IF WEIGHT #3 /* Triggers after states #: 3 4 even though they appear after this state */
~  NumTimesTalkedTo(1)
CreatureInArea("AR0707")
~ THEN BEGIN 1 // from:
  SAY #53703 /* ~"Máš poslední šanci, cizinče. Odejdi támhle těma dveřma, nebo budeš mít spoustu problémůu. Ale jenom na chviličku. Pak už nebudeš mít žádný problémy."~ */
  IF ~~ THEN REPLY #53704 /* ~"Sbohem."~ */ EXIT
END

IF WEIGHT #4 /* Triggers after states #: 3 4 even though they appear after this state */
~  NumTimesTalkedTo(2)
CreatureInArea("AR0707")
~ THEN BEGIN 2 // from:
  SAY #53705 /* ~"Holt to musí být po zlým, co vole? Měl jsi odejít, dokuds měl šanci." Zableskla se ocel!~ */
  IF ~~ THEN REPLY #53706 /* ~Zaútoč.~ */ DO ~Enemy()
ForceAttack(Protagonist,Myself)
Attack(Protagonist)
~ EXIT
END

IF WEIGHT #1 /* Triggers after states #: 4 even though they appear after this state */
~  Global("Lynch_Mob","GLOBAL",0)
CreatureInArea("AR0900")
~ THEN BEGIN 3 // from:
  SAY #66781 /* ~Jeho oči jsou plné krvežíznivosti, hlas má ochraptělý z neustálého vyřvávání nenávistných pokřiků. Dokonale tě ignoruje.~ */
  IF ~~ THEN REPLY #66784 /* ~"Tak tedy sbohem."~ */ EXIT
END

IF WEIGHT #0 ~  Global("Lynch_Mob","GLOBAL",1)
CreatureInArea("AR0900")
~ THEN BEGIN 4 // from:
  SAY #66782 /* ~"Díky, příteli. Máme tady město, které je třeba zachránit..."~ */
  IF ~~ THEN REPLY #66783 /* ~"Hodně štěstí..."~ */ EXIT
END
