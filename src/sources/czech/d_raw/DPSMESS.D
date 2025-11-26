// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DPSMESS.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\cs_CZ\dialog.tlk
// dialogF  : (none)

BEGIN ~DPSMESS~

IF ~  True()
~ THEN BEGIN 0 // from:
  SAY #47024 /* ~Tenhle mladík očividně spěchá. Vypadá rozzlobeně, že jej zdržuješ a rád by už byl jinde.~ */
  IF ~~ THEN REPLY #47025 /* ~"Chtěl jsem se tě na něco zeptat."~ */ GOTO 1
  IF ~~ THEN REPLY #47026 /* ~"Kdo jsi?"~ */ GOTO 1
  IF ~~ THEN REPLY #47027 /* ~"Můžeš mi něco povědět o tomhle místě?"~ */ GOTO 1
  IF ~~ THEN REPLY #47031 /* ~"Zapomeň na to. Můžeš jít dál svou cestou."~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0 0.1 0.2
  SAY #47029 /* ~Na chvíli se zastavil, ale je zřejmé, že tvým slovům nevěnoval pozornost. "Nevím," řekl a odešel.~ */
  IF ~~ THEN REPLY #47030 /* ~"Tak sbohem."~ */ EXIT
END
