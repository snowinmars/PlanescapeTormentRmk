// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DGREEN.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\de_DE\dialog.tlk
// dialogF  : (none)

BEGIN ~DGREEN~

IF ~  True()
~ THEN BEGIN 0 // from:
  SAY #51177 /* ~Dies scheint ein gewöhnliches Lim-Lim zu sein. Es ist kaum zu glauben, daß dieses niedliche, kleine Geschöpf fünf Zauberlehrlinge einfach so dahinmetzeln konnte.~ */
  IF ~~ THEN REPLY #51178 /* ~Gib dem Lim-Lim einen Tritt.~ */ DO ~Enemy()
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
~ EXIT
  IF ~~ THEN REPLY #60321 /* ~Geh.~ */ EXIT
END
