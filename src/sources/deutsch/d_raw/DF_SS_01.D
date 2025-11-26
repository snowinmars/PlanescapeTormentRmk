// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DF_SS_01.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\de_DE\dialog.tlk
// dialogF  : (none)

BEGIN ~DF_SS_01~

IF ~  !Global("S_Stone","AR0603",1)
!Global("S_Stone","AR0603",8)
~ THEN BEGIN 0 // from:
  SAY #47094 /* ~Dies ist ein ungewöhnlicher grünlich-gelber Stein. Er ist fest an dem Sockel befestigt, auf dem er liegt.~ */
  IF ~~ THEN REPLY #47095 /* ~Geh weg.~ */ EXIT
END

IF ~  Global("S_Stone","AR0603",1)
~ THEN BEGIN 1 // from:
  SAY #47096 /* ~Dies ist der grüngelbe Stein, zu dem dir der Kurator den Weg gewiesen hat. In ihm ist die Erfahrung 'Unvermeidbarer Schmerz' eingeschlossen.~ */
  IF ~~ THEN REPLY #47097 /* ~Beginn die Erfahrung.~ */ GOTO 2
  IF ~~ THEN REPLY #47098 /* ~Geh weg.~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.0
  SAY #47099 /* ~Die Erfahrung ist kurz und heftig: Beim Kampf mit einem etwas stärkeren Mann am Rand eines glühendheißen Stroms geschmolzener Lava wird deine waffenführende Hand allmählich immer näher an das Magma gedrängt. Die Schweißperlen verdampfen, kaum daß sie aus den Poren getreten sind. Die Haare auf deinem Handrücken werden schwarz und fangen in der übergroßen Hitze an zu sengen. Schließlich hallen deine Schmerzensschreie von den Felswänden des Canyons um dich herum als Echo zurück, und deine Hand fällt samt der von ihr geführten Axt in die Lava und verkohlt in wenigen, schmerzhaften Sekunden.~ */
  IF ~  Global("Sensation01","AR0603",0)
~ THEN REPLY #47100 /* ~Lös dich von der Erfahrung.~ */ DO ~SetGlobal("Sensation01","AR0603",1)
GiveExperience(Protagonist,750)
~ GOTO 5
  IF ~  Global("Sensation01","AR0603",1)
~ THEN REPLY #47101 /* ~Lös dich von der Erfahrung, und geh weg.~ */ EXIT
END

IF ~  Global("S_Stone","AR0603",8)
~ THEN BEGIN 3 // from:
  SAY #47102 /* ~Dies ist der grüngelbe Stein, zu dem dir der Kurator den Weg gewiesen hat. In ihm ist die Erfahrung 'Psychose' eingeschlossen.~ */
  IF ~~ THEN REPLY #47103 /* ~Beginn die Erfahrung.~ */ GOTO 4
  IF ~~ THEN REPLY #47104 /* ~Geh weg.~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 3.0
  SAY #47105 /* ~Dies ist eine seltsame und sehr verstörende Erfahrung... Du drückst jemandem die Spitze eines Messers an die Kehle, hältst ihm mit der Hand den Mund zu und stößt ihm deinen heißen und schweren Atem ins Gesicht. Du fängst an, zuzustoßen... langsam. Das Messer gräbt sich in die Haut und reißt sie allmählich auf. Über deinen Unterarm ergießt sich ein Schwall warmen Blutes, ein Röcheln ist zu hören, ein perverses Gefühl der Freude stellt sich ein... und es ist vorbei.~ */
  IF ~  Global("Sensation08","AR0603",0)
~ THEN REPLY #47106 /* ~Lös dich von der Erfahrung.~ */ DO ~SetGlobal("Sensation08","AR0603",1)
GiveExperience(Protagonist,750)
~ GOTO 5
  IF ~  Global("Sensation08","AR0603",1)
~ THEN REPLY #47107 /* ~Lös dich von der Erfahrung, und geh weg.~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 2.0 4.0
  SAY #47108 /* ~Die Erfahrung scheint eine längst vergessene ähnliche Erinnerung in dir wachgerüttelt zu haben. Du hast das Gefühl, daß du irgendwie vom Gebrauch des Sinnessteins profitiert hast.~ */
  IF ~~ THEN REPLY #47109 /* ~Geh weg.~ */ EXIT
END
