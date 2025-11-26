// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DTHUGB3.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\cs_CZ\dialog.tlk
// dialogF  : (none)

BEGIN ~DTHUGB3~

IF ~  True()
~ THEN BEGIN 0 // from:
  SAY #33542 /* ~Chlápek se temně mračí, jako by měl nějakou divnou masku. Zúžil oči, když jsi přistoupil blíž.~ */
  IF ~~ THEN REPLY #33545 /* ~"Zdravím..."~ */ GOTO 1
  IF ~~ THEN REPLY #33546 /* ~Nechej ho být.~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #33543 /* ~"Drž hubu, ty hnusnej bastarde! Nikdo ti nedovolil otvírat si na mně pysk! A teď vypadni, než se naseru a rozpářu tě jako prase!"~ */
  IF ~~ THEN REPLY #33544 /* ~"Zkus to a budeš mít pár nových děr."~ */ DO ~Enemy()
ForceAttack(Protagonist,Myself)
~ EXIT
  IF ~~ THEN REPLY #33547 /* ~Odejdi.~ */ EXIT
END
