// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DGHIVEM.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\de_DE\dialog.tlk
// dialogF  : (none)

BEGIN ~DGHIVEM~
//////////////////////////////////////////////////
// WARNING: this file contains non-trivial WEIGHTs
//////////////////////////////////////////////////

IF WEIGHT #9 /* Triggers after states #: 52 48 45 44 43 57 56 55 54 even though they appear after this state */
~  NumTimesTalkedTo(0)
CheckStatLT(Protagonist,9,CHR)
RandomNum(6,1)
~ THEN BEGIN 0 // from:
  SAY #33152 /* ~Der Mann macht einen Schritt zurück und auf seinem Gesicht zeigt sich eine Mischung aus Furcht und Ekel. "Geh weg... weg! Laß mich in Ruhe!"~ */
  IF ~~ THEN REPLY #33153 /* ~Laß ihn gehen.~ */ EXIT
END

IF WEIGHT #10 /* Triggers after states #: 52 48 45 44 43 57 56 55 54 even though they appear after this state */
~  NumTimesTalkedTo(0)
CheckStatLT(Protagonist,9,CHR)
RandomNum(6,2)
~ THEN BEGIN 1 // from:
  SAY #33154 /* ~Die Augen des Mannes werden immer größer, als du dich ihm näherst, und er weicht vor dir zurück. "Ich nütz dir gar nichts, Schleifer, ich schwör's. Laß mich in Ruhe!"~ */
  IF ~~ THEN REPLY #33155 /* ~Laß ihn gehen.~ */ EXIT
END

IF WEIGHT #11 /* Triggers after states #: 52 48 45 44 43 57 56 55 54 even though they appear after this state */
~  NumTimesTalkedTo(0)
CheckStatLT(Protagonist,9,CHR)
RandomNum(6,3)
~ THEN BEGIN 2 // from:
  SAY #33156 /* ~"Zieh Leine! Ich will nichts mit dir zu tun haben!"~ */
  IF ~~ THEN REPLY #33157 /* ~Geh.~ */ EXIT
END

IF WEIGHT #12 /* Triggers after states #: 52 48 45 44 43 57 56 55 54 even though they appear after this state */
~  NumTimesTalkedTo(0)
CheckStatLT(Protagonist,9,CHR)
RandomNum(6,4)
~ THEN BEGIN 3 // from:
  SAY #33158 /* ~Der Mann gibt sich große Mühe, dich zu ignorieren. Je mehr du dich bemühst, seine Aufmerksamkeit zu erregen, desto deutlicher macht er es, daß er nicht mit dir sprechen will.~ */
  IF ~~ THEN REPLY #33159 /* ~Geh.~ */ EXIT
END

IF WEIGHT #13 /* Triggers after states #: 52 48 45 44 43 57 56 55 54 even though they appear after this state */
~  NumTimesTalkedTo(0)
CheckStatLT(Protagonist,9,CHR)
RandomNum(6,5)
~ THEN BEGIN 4 // from:
  SAY #33160 /* ~"Du siehst so aus, als ob du dein ganzes Leben im Stock, oder in noch was Schlimmerem, verbracht hast, Schleifer. Jetzt mach dich vom Acker und laß mich in Ruhe!"~ */
  IF ~~ THEN REPLY #33161 /* ~Geh.~ */ EXIT
END

IF WEIGHT #14 /* Triggers after states #: 52 48 45 44 43 57 56 55 54 even though they appear after this state */
~  NumTimesTalkedTo(0)
CheckStatLT(Protagonist,9,CHR)
CreatureInArea("AR0100")
~ THEN BEGIN 5 // from:
  SAY #33162 /* ~"Du siehst ja völlig fertig aus, Dussel. Geh zur Spelunke, wenn du dich ausruhen willst... sie liegt genau in der Mitte hier. Und jetzt laß mich in Ruhe! Ich werde meine Zeit nicht mit deinen Fragen verschwenden."~ */
  IF ~~ THEN REPLY #33163 /* ~Geh.~ */ EXIT
END

IF WEIGHT #15 /* Triggers after states #: 52 48 45 44 43 57 56 55 54 even though they appear after this state */
~  NumTimesTalkedTo(0)
CheckStatLT(Protagonist,9,CHR)
CreatureInArea("AR0200")
~ THEN BEGIN 6 // from:
  SAY #33164 /* ~"Bist du schon der Bar 'Zum Staubfänger' gewesen, Dussel? Du erinnerst mich irgendwie an einen der Angestellten da..." er lacht scharf auf.~ */
  IF ~~ THEN REPLY #33165 /* ~Geh.~ */ EXIT
END

IF WEIGHT #16 /* Triggers after states #: 52 48 45 44 43 57 56 55 54 even though they appear after this state */
~  NumTimesTalkedTo(0)
CheckStatLT(Protagonist,9,CHR)
CreatureInArea("AR0300")
~ THEN BEGIN 7 // from:
  SAY #33166 /* ~Der Mann kaut an etwas, das aussieht wie eine Ratte am Stiel. "Was, Dussel? Noch nie 'ne gekochte Ratte gesehen? Ist gesund und schmeckt auch noch! Geh zu Creeden, wenn du Hunger hast... er steht gleich vor dem Büro zur Schädlings- und Seuchenbekämpfung."~ */
  IF ~~ THEN REPLY #33167 /* ~Geh.~ */ EXIT
END

IF WEIGHT #17 /* Triggers after states #: 52 48 45 44 43 57 56 55 54 even though they appear after this state */
~  NumTimesTalkedTo(0)
CheckStatLT(Protagonist,9,CHR)
CreatureInArea("AR0400")
~ THEN BEGIN 8 // from:
  SAY #33168 /* ~"Bist du in letzter Zeit mal einem dieser Ausgehungerten Bellenden Hunde begegnet? An deiner Stelle würd ich diesen jaulenden, tobenden Idioten aus dem Weg gehen... völlig durchgedreht sind die!"~ */
  IF ~~ THEN REPLY #33169 /* ~Geh.~ */ EXIT
END

IF WEIGHT #18 /* Triggers after states #: 52 48 45 44 43 57 56 55 54 even though they appear after this state */
~  NumTimesTalkedTo(0)
CheckStatGT(Protagonist,8,CHR)
CheckStatLT(Protagonist,13,CHR)
RandomNum(6,1)
~ THEN BEGIN 9 // from:
  SAY #33170 /* ~"Ich weiß nichts, was dir was nützen könnte, Dussel... und jetzt laß mich in Ruhe."~ */
  IF ~~ THEN REPLY #33171 /* ~Geh.~ */ EXIT
END

IF WEIGHT #19 /* Triggers after states #: 52 48 45 44 43 57 56 55 54 even though they appear after this state */
~  NumTimesTalkedTo(0)
CheckStatGT(Protagonist,8,CHR)
CheckStatLT(Protagonist,13,CHR)
RandomNum(6,2)
~ THEN BEGIN 10 // from:
  SAY #33172 /* ~Der Mann mustert dich und beschreibt einen Halbkreis über seinem Herz. "Ich kümmere mich um meine eigenen Angelegenheiten, Vollblut, und bitte dich nur, das gleiche zu tun. Leb wohl."~ */
  IF ~~ THEN REPLY #33173 /* ~Laß ihn los.~ */ EXIT
END

IF WEIGHT #20 /* Triggers after states #: 52 48 45 44 43 57 56 55 54 even though they appear after this state */
~  NumTimesTalkedTo(0)
CheckStatGT(Protagonist,8,CHR)
CheckStatLT(Protagonist,13,CHR)
RandomNum(6,3)
~ THEN BEGIN 11 // from:
  SAY #33174 /* ~Der Mann runzelt die Stirn, als du dich ihm näherst. "Ich habe keine Zeit, meine Knochenschüssel mit Fremden zu klappern, Schleifer. Außerdem ist das im Stock sowieso meistens keine gute Idee. Leb wohl."~ */
  IF ~~ THEN REPLY #33175 /* ~"Auf bald, dann."~ */ EXIT
END

IF WEIGHT #21 /* Triggers after states #: 52 48 45 44 43 57 56 55 54 even though they appear after this state */
~  NumTimesTalkedTo(0)
CheckStatGT(Protagonist,8,CHR)
CheckStatLT(Protagonist,13,CHR)
RandomNum(6,4)
~ THEN BEGIN 12 // from:
  SAY #33176 /* ~"Das Leben im Stock ist ein elender Dreck, das sag ich dir."~ */
  IF ~~ THEN REPLY #33177 /* ~Geh weiter.~ */ EXIT
END

IF WEIGHT #22 /* Triggers after states #: 52 48 45 44 43 57 56 55 54 even though they appear after this state */
~  NumTimesTalkedTo(0)
CheckStatGT(Protagonist,8,CHR)
CheckStatLT(Protagonist,13,CHR)
RandomNum(6,5)
CreatureInArea("AR0100")
~ THEN BEGIN 13 // from:
  SAY #33178 /* ~"Du siehst ja völlig fertig aus, Dussel. Geh zur Spelunke, wenn du dich ausruhen willst... sie liegt genau in der Mitte hier. Und jetzt laß mich in Ruhe! Ich werde meine Zeit nicht mit deinen Fragen verschwenden."~ */
  IF ~~ THEN REPLY #33179 /* ~Verschwinde.~ */ EXIT
END

IF WEIGHT #23 /* Triggers after states #: 52 48 45 44 43 57 56 55 54 even though they appear after this state */
~  NumTimesTalkedTo(0)
CheckStatGT(Protagonist,8,CHR)
CheckStatLT(Protagonist,13,CHR)
RandomNum(6,5)
CreatureInArea("AR0200")
~ THEN BEGIN 14 // from:
  SAY #33180 /* ~"Bist du schon der Bar 'Zum Staubfänger' gewesen, Dussel? Du erinnerst mich irgendwie an einen der Angestellten da..." er lacht scharf auf.~ */
  IF ~~ THEN REPLY #33181 /* ~Geh weiter.~ */ EXIT
END

IF WEIGHT #24 /* Triggers after states #: 52 48 45 44 43 57 56 55 54 even though they appear after this state */
~  NumTimesTalkedTo(0)
CheckStatGT(Protagonist,8,CHR)
CheckStatLT(Protagonist,13,CHR)
RandomNum(6,5)
CreatureInArea("AR0300")
~ THEN BEGIN 15 // from:
  SAY #33182 /* ~Der Mann kaut an etwas, das aussieht wie eine Ratte am Stiel. "Was, Dussel? Noch nie 'ne gekochte Ratte gesehen? Ist gesund und schmeckt auch noch! Geh zu Creeden, wenn du Hunger hast... er steht gleich vor dem Büro zur Schädlings- und Seuchenbekämpfung."~ */
  IF ~~ THEN REPLY #339 /* ~Geh weiter.~ */ EXIT
END

IF WEIGHT #25 /* Triggers after states #: 52 48 45 44 43 57 56 55 54 even though they appear after this state */
~  NumTimesTalkedTo(0)
CheckStatGT(Protagonist,8,CHR)
CheckStatLT(Protagonist,13,CHR)
RandomNum(6,5)
CreatureInArea("AR0400")
~ THEN BEGIN 16 // from:
  SAY #340 /* ~"Bist du in letzter Zeit mal einem dieser Ausgehungerten Bellenden Hunde begegnet? An deiner Stelle würd ich diesen jaulenden, tobenden Idioten aus dem Weg gehen... völlig durchgedreht sind die!"~ */
  IF ~~ THEN REPLY #341 /* ~Geh weiter.~ */ EXIT
END

IF WEIGHT #26 /* Triggers after states #: 52 48 45 44 43 57 56 55 54 even though they appear after this state */
~  NumTimesTalkedTo(0)
CheckStatGT(Protagonist,8,CHR)
CheckStatLT(Protagonist,13,CHR)
CreatureInArea("AR0100")
~ THEN BEGIN 17 // from:
  SAY #3921 /* ~"Hab' von dir gehört, Dussel... du hast viele Fragen über den alten Pharod gestellt, stimmt's? Wenn du ihn immer noch suchst, versuch's mal nördlich von hier, auf dem Lumpensammler-Platz."~ */
  IF ~  Global("Pharod","GLOBAL",0)
~ THEN REPLY #33184 /* ~"Mach ich. Leb wohl."~ */ EXIT
  IF ~  GlobalGT("Pharod","GLOBAL",0)
~ THEN REPLY #33188 /* ~"Ich habe ihn schon gefunden, aber trotzdem danke. Leb wohl."~ */ EXIT
END

IF WEIGHT #27 /* Triggers after states #: 52 48 45 44 43 57 56 55 54 even though they appear after this state */
~  NumTimesTalkedTo(0)
CheckStatGT(Protagonist,8,CHR)
CheckStatLT(Protagonist,13,CHR)
CreatureInArea("AR0200")
~ THEN BEGIN 18 // from:
  SAY #33192 /* ~"Hast du schon mal was von der Gasse der Gefährlichen Ecken gehört? Da stand mal 'n ganzes Viertel, aber das wurde komplett niedergebrannt. Jetzt sind da nur Rumtreiber und Schläger."~ */
  IF ~  Global("AR0301_Visited","GLOBAL",1)
~ THEN REPLY #33193 /* ~"Ja, da war ich schon mal."~ */ EXIT
  IF ~  Global("AR0301_Visited","GLOBAL",0)
~ THEN REPLY #33194 /* ~Geh.~ */ EXIT
END

IF WEIGHT #28 /* Triggers after states #: 52 48 45 44 43 57 56 55 54 even though they appear after this state */
~  NumTimesTalkedTo(0)
CheckStatGT(Protagonist,8,CHR)
CheckStatLT(Protagonist,13,CHR)
CreatureInArea("AR0300")
~ THEN BEGIN 19 // from:
  SAY #33195 /* ~"Wenn du den Gestank von dem Sack nicht aushältst, gibt's hier 'nen Typen namens Übelwind, der dir bestimmt ein paar interessante Geschichten erzählen kann."~ */
  IF ~  Global("Reekwind","GLOBAL",0)
~ THEN REPLY #33196 /* ~"Dann gehe ich vielleicht mal zu ihm. Leb wohl."~ */ EXIT
  IF ~  GlobalGT("Reekwind","GLOBAL",0)
~ THEN REPLY #33197 /* ~"Ich bin ihm schon begegnet. Leb wohl."~ */ EXIT
END

IF WEIGHT #29 /* Triggers after states #: 52 48 45 44 43 57 56 55 54 even though they appear after this state */
~  NumTimesTalkedTo(0)
CheckStatGT(Protagonist,8,CHR)
CheckStatLT(Protagonist,13,CHR)
CreatureInArea("AR0400")
~ THEN BEGIN 20 // from:
  SAY #33198 /* ~"Die Bar 'Zur Schwelenden Leiche' ist meine Lieblingstaverne im Stock... wird aber manchmal ganz schön heiß da drin, wegen der schwelenden Leiche und so."~ */
  IF ~  GlobalGT("Ignus","GLOBAL",0)
~ THEN REPLY #33199 /* ~"Da ist keine Leiche mehr. Leb wohl."~ */ EXIT
  IF ~  Global("AR0402_Visited","GLOBAL",1)
~ THEN REPLY #33200 /* ~"Ja, ich bin da schon mal gewesen. Leb wohl."~ */ EXIT
  IF ~  Global("AR0402_Visited","GLOBAL",0)
~ THEN REPLY #33201 /* ~Geh.~ */ EXIT
END

IF WEIGHT #30 /* Triggers after states #: 52 48 45 44 43 57 56 55 54 even though they appear after this state */
~  NumTimesTalkedTo(0)
CheckStatGT(Protagonist,12,CHR)
RandomNum(8,1)
~ THEN BEGIN 21 // from:
  SAY #33202 /* ~Der Mann nickt dir zu. "Grüß dich, Schleifer. Ich würde dir ja helfen, wenn ich könnte... aber ich weiß einfach nichts, was dir was nützt."~ */
  IF ~~ THEN REPLY #33203 /* ~"Trotzdem vielen Dank. Leb wohl."~ */ EXIT
END

IF WEIGHT #31 /* Triggers after states #: 52 48 45 44 43 57 56 55 54 even though they appear after this state */
~  NumTimesTalkedTo(0)
CheckStatGT(Protagonist,12,CHR)
RandomNum(8,2)
~ THEN BEGIN 22 // from:
  SAY #33205 /* ~"Ich hasse es hier... ich wünschte, ich hätte genug Klimper, um den Stock ein für alle mal zu verlassen. Hör auf meinen Rat, Schleifer, und verschwinde, solange und sobald du kannst."~ */
  IF ~~ THEN REPLY #33206 /* ~Geh.~ */ EXIT
END

IF WEIGHT #32 /* Triggers after states #: 52 48 45 44 43 57 56 55 54 even though they appear after this state */
~  NumTimesTalkedTo(0)
CheckStatGT(Protagonist,12,CHR)
RandomNum(8,3)
~ THEN BEGIN 23 // from:
  SAY #33207 /* ~"Sei wachsam, Dussel... Gewalt ist für manche hier im Stock eine Lebensart."~ */
  IF ~~ THEN REPLY #33208 /* ~Geh.~ */ EXIT
END

IF WEIGHT #33 /* Triggers after states #: 52 48 45 44 43 57 56 55 54 even though they appear after this state */
~  NumTimesTalkedTo(0)
CheckStatGT(Protagonist,12,CHR)
RandomNum(8,4)
CreatureInArea("AR0100")
~ THEN BEGIN 24 // from:
  SAY #33209 /* ~"Du siehst ja völlig fertig aus, Dussel. Geh zur Spelunke, wenn du dich ausruhen willst... sie liegt genau in der Mitte hier. Und jetzt laß mich in Ruhe! Ich werde meine Zeit nicht mit deinen Fragen verschwenden."~ */
  IF ~~ THEN REPLY #33210 /* ~Geh.~ */ EXIT
END

IF WEIGHT #34 /* Triggers after states #: 52 48 45 44 43 57 56 55 54 even though they appear after this state */
~  NumTimesTalkedTo(0)
CheckStatGT(Protagonist,12,CHR)
RandomNum(8,5)
CreatureInArea("AR0100")
~ THEN BEGIN 25 // from:
  SAY #33211 /* ~"Hab' von dir gehört, Dussel... du hast viele Fragen über den alten Pharod gestellt, stimmt's? Wenn du ihn immer noch suchst, versuch's mal nördlich von hier, auf dem Lumpensammler-Platz."~ */
  IF ~  Global("Pharod","GLOBAL",0)
~ THEN REPLY #33212 /* ~"Mach ich. Leb wohl."~ */ EXIT
  IF ~  GlobalGT("Pharod","GLOBAL",0)
~ THEN REPLY #33213 /* ~"Ich habe ihn schon gefunden, aber trotzdem danke. Leb wohl."~ */ EXIT
END

IF WEIGHT #35 /* Triggers after states #: 52 48 45 44 43 57 56 55 54 even though they appear after this state */
~  NumTimesTalkedTo(0)
CheckStatGT(Protagonist,12,CHR)
RandomNum(8,6)
CreatureInArea("AR0100")
~ THEN BEGIN 26 // from:
  SAY #33214 /* ~"Da ist dieses Vollblut, das ich mal hier in der Nähe getroffen habe. Porphiron heißt er... der konnte einem wirklich das Kämpfen beibringen."~ */
  IF ~  Global("Porphiron ","GLOBAL",0)
~ THEN REPLY #33215 /* ~"Dann gehe ich vielleicht mal zu ihm. Leb wohl."~ */ EXIT
  IF ~  GlobalGT("Porphiron ","GLOBAL",0)
~ THEN REPLY #33216 /* ~"Ich bin ihm schon begegnet. Leb wohl."~ */ EXIT
END

IF WEIGHT #36 /* Triggers after states #: 52 48 45 44 43 57 56 55 54 even though they appear after this state */
~  NumTimesTalkedTo(0)
CheckStatGT(Protagonist,12,CHR)
RandomNum(8,4)
CreatureInArea("AR0200")
~ THEN BEGIN 27 // from:
  SAY #33217 /* ~"Geh zum Posten, wenn du dich hier zurechtfinden willst. Er steht draußen vor der Bar 'Zum Staubfänger'."~ */
  IF ~~ THEN REPLY #33218 /* ~Geh.~ */ EXIT
END

IF WEIGHT #37 /* Triggers after states #: 52 48 45 44 43 57 56 55 54 even though they appear after this state */
~  NumTimesTalkedTo(0)
CheckStatGT(Protagonist,12,CHR)
RandomNum(8,5)
CreatureInArea("AR0200")
~ THEN BEGIN 28 // from:
  SAY #33219 /* ~"Hast du schon mal was von der Gasse der Gefährlichen Ecken gehört? Da stand mal 'n ganzes Viertel, aber das wurde komplett niedergebrannt. Jetzt sind da nur Rumtreiber und Schläger."~ */
  IF ~  Global("AR0301_Visited","GLOBAL",1)
~ THEN REPLY #33220 /* ~"Ja, da war ich schon mal."~ */ EXIT
  IF ~  Global("AR0301_Visited","GLOBAL",0)
~ THEN REPLY #33221 /* ~Geh.~ */ EXIT
END

IF WEIGHT #38 /* Triggers after states #: 52 48 45 44 43 57 56 55 54 even though they appear after this state */
~  NumTimesTalkedTo(0)
CheckStatGT(Protagonist,12,CHR)
RandomNum(8,6)
CreatureInArea("AR0200")
~ THEN BEGIN 29 // from:
  SAY #33222 /* ~"Viele Leute kommen hierher, um ihren verstorbenen Verwandten und Bekannten die letzte Ehre zu erweisen... am Staubmenschen-Denkmal treibt sich ein ziemlich merkwürdiger Staubmensch rum, der dir sagen kann, ob eine bestimmte Person gestorben ist und auch den Namen der/des Toten für dich auf das Denkmal setzen kann, als letzte Ehre sozusagen."~ */
  IF ~  Global("Death_of_Names","GLOBAL",1)
~ THEN REPLY #1252 /* ~"Das stimmt. Der Mann heißt 'Tod-der-Namen'. Leb wohl."~ */ EXIT
  IF ~  Global("Death_of_Names","GLOBAL",0)
~ THEN REPLY #1254 /* ~Verschwinde.~ */ EXIT
END

IF WEIGHT #39 /* Triggers after states #: 52 48 45 44 43 57 56 55 54 even though they appear after this state */
~  NumTimesTalkedTo(0)
CheckStatGT(Protagonist,12,CHR)
RandomNum(8,7)
CreatureInArea("AR0200")
~ THEN BEGIN 30 // from:
  SAY #33223 /* ~"Praktisch jeder Staubmensch in Sigil verbringt einen Teil seiner Zeit in der Bar 'Zum Staubfänger'. Falls du mal nach einem bestimmten Staubmenschen suchst, solltest du zuerst da mal nachfragen."~ */
  IF ~~ THEN REPLY #33225 /* ~Geh.~ */ EXIT
END

IF WEIGHT #40 /* Triggers after states #: 52 48 45 44 43 57 56 55 54 even though they appear after this state */
~  NumTimesTalkedTo(0)
CheckStatGT(Protagonist,12,CHR)
RandomNum(8,4)
CreatureInArea("AR0300")
~ THEN BEGIN 31 // from:
  SAY #33228 /* ~Der Mann kaut an etwas, das aussieht wie eine Ratte am Stiel. "Was, Dussel? Noch nie 'ne gekochte Ratte gesehen? Ist gesund und schmeckt auch noch! Geh zu Creeden, wenn du Hunger hast... er steht gleich vor dem Büro zur Schädlings- und Seuchenbekämpfung."~ */
  IF ~~ THEN REPLY #33230 /* ~Geh.~ */ EXIT
END

IF WEIGHT #41 /* Triggers after states #: 52 48 45 44 43 57 56 55 54 even though they appear after this state */
~  NumTimesTalkedTo(0)
CheckStatGT(Protagonist,12,CHR)
RandomNum(8,5)
CreatureInArea("AR0300")
~ THEN BEGIN 32 // from:
  SAY #33232 /* ~"Wenn du den Gestank von dem Sack nicht aushältst, gibt's hier 'nen Typen namens Übelwind, der dir bestimmt ein paar interessante Geschichten erzählen kann."~ */
  IF ~  Global("Reekwind","GLOBAL",0)
~ THEN REPLY #33233 /* ~"Dann gehe ich vielleicht mal zu ihm. Leb wohl."~ */ EXIT
  IF ~  GlobalGT("Reekwind","GLOBAL",0)
~ THEN REPLY #33234 /* ~"Ich bin ihm schon begegnet. Leb wohl."~ */ EXIT
END

IF WEIGHT #42 /* Triggers after states #: 52 48 45 44 43 57 56 55 54 even though they appear after this state */
~  NumTimesTalkedTo(0)
CheckStatGT(Protagonist,12,CHR)
RandomNum(8,6)
CreatureInArea("AR0300")
~ THEN BEGIN 33 // from:
  SAY #33235 /* ~"Auf dem Markt hier müßtest du eigentlich alles kriegen, was du so brauchst."~ */
  IF ~~ THEN REPLY #33236 /* ~Geh.~ */ EXIT
END

IF WEIGHT #43 /* Triggers after states #: 52 48 45 44 43 57 56 55 54 even though they appear after this state */
~  NumTimesTalkedTo(0)
CheckStatGT(Protagonist,12,CHR)
RandomNum(8,7)
CreatureInArea("AR0300")
~ THEN BEGIN 34 // from:
  SAY #33237 /* ~"Bist du schon mal auf dem Markt stehengeblieben und hast Prophyra zugehört? Wird ein Riesenchaos in Sigil geben, wenn sie recht hat, und nicht bloß übergeschnappt ist, was die meisten behaupten."~ */
  IF ~~ THEN REPLY #33238 /* ~Geh.~ */ EXIT
END

IF WEIGHT #44 /* Triggers after states #: 52 48 45 44 43 57 56 55 54 even though they appear after this state */
~  NumTimesTalkedTo(0)
CheckStatGT(Protagonist,12,CHR)
RandomNum(8,8)
CreatureInArea("AR0300")
~ THEN BEGIN 35 // from:
  SAY #33239 /* ~"Hast du schon mal was von der Gasse der Gefährlichen Ecken gehört? Da stand mal 'n ganzes Viertel, aber das wurde komplett niedergebrannt. Jetzt sind da nur Rumtreiber und Schläger."~ */
  IF ~  Global("AR0301_Visited","GLOBAL",1)
~ THEN REPLY #33240 /* ~"Ja, da war ich schon mal."~ */ EXIT
  IF ~  Global("AR0301_Visited","GLOBAL",0)
~ THEN REPLY #33241 /* ~Geh.~ */ EXIT
END

IF WEIGHT #45 /* Triggers after states #: 52 48 45 44 43 57 56 55 54 even though they appear after this state */
~  NumTimesTalkedTo(0)
CheckStatGT(Protagonist,12,CHR)
RandomNum(8,4)
CreatureInArea("AR0400")
~ THEN BEGIN 36 // from:
  SAY #33242 /* ~"Bist du in letzter Zeit mal einem dieser Ausgehungerten Bellenden Hunde begegnet? An deiner Stelle würd ich diesen jaulenden, tobenden Idioten aus dem Weg gehen... völlig durchgedreht sind die!"~ */
  IF ~~ THEN REPLY #33243 /* ~Geh.~ */ EXIT
END

IF WEIGHT #46 /* Triggers after states #: 52 48 45 44 43 57 56 55 54 even though they appear after this state */
~  NumTimesTalkedTo(0)
CheckStatGT(Protagonist,12,CHR)
RandomNum(8,5)
CreatureInArea("AR0400")
~ THEN BEGIN 37 // from:
  SAY #33244 /* ~"Die Bar 'Zur Schwelenden Leiche' ist meine Lieblingstaverne im Stock... wird aber manchmal ganz schön heiß da drin, wegen der schwelenden Leiche und so."~ */
  IF ~  GlobalGT("Ignus","GLOBAL",0)
~ THEN REPLY #33246 /* ~"Da ist keine Leiche mehr. Leb wohl."~ */ EXIT
  IF ~  Global("AR0402_Visited","GLOBAL",1)
~ THEN REPLY #33247 /* ~"Ja, ich bin da schon mal gewesen. Leb wohl."~ */ EXIT
  IF ~  Global("AR0402_Visited","GLOBAL",0)
~ THEN REPLY #33248 /* ~Geh.~ */ EXIT
END

IF WEIGHT #47 /* Triggers after states #: 52 48 45 44 43 57 56 55 54 even though they appear after this state */
~  NumTimesTalkedTo(0)
CheckStatGT(Protagonist,12,CHR)
RandomNum(8,6)
CreatureInArea("AR0400")
~ THEN BEGIN 38 // from:
  SAY #33249 /* ~"Bist du schon diesen hohlköpfigen Schlucker 'Der um die Bäume trauert' begegnet? Was für ein Idiot... als ob irgendwer hier 'nen feuchten Dreck auf die Bäume gibt. Wer den überhaupt hierher geschleppt hat, möchte ich ja zu gern mal wissen!"~ */
  IF ~~ THEN REPLY #33250 /* ~Geh.~ */ EXIT
END

IF WEIGHT #48 /* Triggers after states #: 52 48 45 44 43 57 56 55 54 even though they appear after this state */
~  NumTimesTalkedTo(0)
CheckStatGT(Protagonist,12,CHR)
CreatureInArea("AR0100")
~ THEN BEGIN 39 // from:
  SAY #33251 /* ~"Ich kann nur sagen, paß hier auf deinen Geldbeutel auf, Schleifer... in dieser Gegend treiben sich oft Taschendiebe rum."~ */
  IF ~~ THEN REPLY #33252 /* ~"Danke. Leb wohl."~ */ EXIT
END

IF WEIGHT #49 /* Triggers after states #: 52 48 45 44 43 57 56 55 54 even though they appear after this state */
~  NumTimesTalkedTo(0)
CheckStatGT(Protagonist,12,CHR)
CreatureInArea("AR0200")
~ THEN BEGIN 40 // from:
  SAY #33253 /* ~"Hier läuft manchmal 'ne Verrückte rum... hab' gehört, sie ist 'ne planlose Tante, die übergeschnappt ist, als nicht wußte, wie sie nach Hause kommt."~ */
  IF ~  GlobalGT("Ingress","GLOBAL",5)
~ THEN REPLY #33254 /* ~"Ja... sie müßte jetzt bald zu Hause oder zumindest auf dem Weg dorthin sein. Leb wohl."~ */ EXIT
  IF ~  GlobalGT("Ingress","GLOBAL",0)
~ THEN REPLY #33255 /* ~"Ich bin ihr begegnet. Sie heißt Ingress. Leb wohl."~ */ EXIT
  IF ~  Global("Ingress","GLOBAL",0)
~ THEN REPLY #33256 /* ~Geh.~ */ EXIT
END

IF WEIGHT #50 /* Triggers after states #: 52 48 45 44 43 57 56 55 54 even though they appear after this state */
~  NumTimesTalkedTo(0)
CheckStatGT(Protagonist,12,CHR)
CreatureInArea("AR0300")
~ THEN BEGIN 41 // from:
  SAY #33257 /* ~"Wenn du ein bißchen Zeit und ein paar Klimper hast, dann sprich mit Gaoha auf dem Markt."~ */
  IF ~~ THEN REPLY #33258 /* ~Geh.~ */ EXIT
END

IF WEIGHT #51 /* Triggers after states #: 52 48 45 44 43 57 56 55 54 even though they appear after this state */
~  NumTimesTalkedTo(0)
CheckStatGT(Protagonist,12,CHR)
CreatureInArea("AR0400")
~ THEN BEGIN 42 // from:
  SAY #33259 /* ~"Ein paar interessante Tätowierungen hast du da, Schleifer. Hier gibt's 'nen Laden dafür, weißt du... gehört ausgerechnet einem Dabus!"~ */
  IF ~  GlobalGT("Fell","GLOBAL",0)
~ THEN REPLY #33260 /* ~"Ich weiß. Er heißt Fell. Leb wohl."~ */ EXIT
  IF ~  Global("AR0404_Visited","GLOBAL",1)
~ THEN REPLY #33261 /* ~"Ja, ich bin schon mal dagewesen. Leb wohl."~ */ EXIT
  IF ~  Global("AR0404_Visited","GLOBAL",0)
~ THEN REPLY #33262 /* ~"Vielleicht gehe ich da mal hin. Leb wohl."~ */ EXIT
END

IF WEIGHT #4 /* Triggers after states #: 57 56 55 54 even though they appear after this state */
~  NumTimesTalkedTo(0)
!Global("Current_Area","GLOBAL",305)
RandomNum(20,1)
Global("Hive_OT_A","GLOBAL",0)
~ THEN BEGIN 43 // from:
  SAY #33263 /* ~"Thlium! Ich habe geglaubt, daß ich dich nie wiedersehen würde. Wie lange ist das her? Vier Jahre? Du siehst... gut aus. Hier, das sind die hundert Kupfermünzen, die ich dir noch schulde. Ich hätte sie dir ja schon früher zurückgegeben, aber es war, als ob du dich in Luft aufgelöst hast! Ich muß jetzt gehen, Thlium... leb wohl!"~ */
  IF ~~ THEN REPLY #33264 /* ~"Ähh..."~ */ DO ~SetGlobal("Hive_OT_A","GLOBAL",1)
GiveGoldForce(100)
EscapeArea()
~ EXIT
  IF ~~ THEN REPLY #33265 /* ~Laß ihn los.~ */ DO ~SetGlobal("Hive_OT_A","GLOBAL",1)
GiveGoldForce(100)
EscapeArea()
~ EXIT
END

IF WEIGHT #5 /* Triggers after states #: 57 56 55 54 even though they appear after this state */
~  NumTimesTalkedTo(0)
!Global("Current_Area","GLOBAL",305)
RandomNum(20,2)
Global("Hive_OT_B","GLOBAL",0)
~ THEN BEGIN 44 // from:
  SAY #33266 /* ~Die Augen des Mannes werden immer größer und sein Gesicht wird immer bleicher. "B-b-bei den Mächten über und unter uns... sie haben gesagt, daß du zurückgekommen bist, a-a-aber ich hab's ihnen nicht geglaubt!" Plötztlich dreht er sich um und flüchtet.~ */
  IF ~~ THEN REPLY #33267 /* ~Versuch ihn festzuhalten.~ */ DO ~SetGlobal("Hive_OT_B","GLOBAL",1)
EscapeArea()
~ EXIT
  IF ~~ THEN REPLY #33268 /* ~Laß ihn los.~ */ DO ~SetGlobal("Hive_OT_B","GLOBAL",1)
EscapeArea()
~ EXIT
END

IF WEIGHT #6 /* Triggers after states #: 57 56 55 54 even though they appear after this state */
~  NumTimesTalkedTo(0)
!Global("Current_Area","GLOBAL",305)
RandomNum(20,3)
Global("Hive_OT_C","GLOBAL",0)
~ THEN BEGIN 45 // from:
  SAY #33269 /* ~Der Mann blinzelt dich an. "Morric? Bist du das?"~ */
  IF ~~ THEN REPLY #33270 /* ~Lüge: "Ja... ich bin Morric."~ */ DO ~SetGlobal("Hive_OT_C","GLOBAL",1)
~ GOTO 47
  IF ~~ THEN REPLY #33271 /* ~"Vielleicht..."~ */ DO ~SetGlobal("Hive_OT_C","GLOBAL",1)
~ GOTO 47
  IF ~~ THEN REPLY #33272 /* ~"Nein."~ */ DO ~SetGlobal("Hive_OT_C","GLOBAL",1)
~ GOTO 46
END

IF ~~ THEN BEGIN 46 // from: 45.2
  SAY #33273 /* ~"Dann bitte ich dich um Entschuldigung, Schleifer. Leb wohl."~ */
  IF ~~ THEN REPLY #33274 /* ~"Leb wohl."~ */ DO ~EscapeArea()
~ EXIT
END

IF ~~ THEN BEGIN 47 // from: 45.0 45.1
  SAY #33275 /* ~"Ich dachte, du wolltest nie wieder nach Sigil zurückkommen...? Wenn Amatael erfährt, daß du wieder hier bist, bist du ein toter Mann! Ich habe hier noch diese Schriftrolle, die du mir geliehen hast. Hier... nimm sie, und verschwinde, bevor man uns zusammen sieht."~ */
  IF ~~ THEN REPLY #33276 /* ~"Aber..."~ */ DO ~GiveItemCreate("SPWI107",Protagonist,1,1,0)
EscapeArea()
~ EXIT
  IF ~~ THEN REPLY #33277 /* ~"Danke... Leb wohl."~ */ DO ~GiveItemCreate("SPWI107",Protagonist,1,1,0)
EscapeArea()
~ EXIT
END

IF WEIGHT #7 /* Triggers after states #: 57 56 55 54 even though they appear after this state */
~  NumTimesTalkedTo(0)
!Global("Current_Area","GLOBAL",305)
RandomNum(20,4)
Global("Hive_OT_Morte","GLOBAL",0)
NearbyDialog("DMorte")
~ THEN BEGIN 48 // from:
  SAY #33278 /* ~Der Mann hält vor Überraschung die Luft an und zeigt auf Morte. "He! Ein schwebender Schädel!"~ */
  IF ~~ THEN DO ~SetGlobal("Hive_OT_Morte","GLOBAL",1)
~ EXTERN ~DMORTE~ 321
END

IF ~~ THEN BEGIN 49 // from:
  SAY #33279 /* ~"Was?! Willste dir'n paar Zähne ausschlagen lassen, du quasselnde Knochenschüssel?" Der Mann geht drohend auf Morte zu.~ */
  IF ~~ THEN REPLY #33280 /* ~Halte den Mann auf.~ */ GOTO 50
  IF ~~ THEN REPLY #33281 /* ~Überlaß die Sache Morte.~ */ EXTERN ~DMORTE~ 322
END

IF ~~ THEN BEGIN 50 // from: 49.0
  SAY #33282 /* ~Du stellst dich zwischen Morte und den Mann. Er wirft dir einen finsteren Blick zu und weicht dann zurück. "Rausgeschmissene Zeit!" Er dreht sich um und geht.~ */
  IF ~~ THEN REPLY #33283 /* ~Laß ihn gehen.~ */ DO ~EscapeArea()
~ EXIT
END

IF ~~ THEN BEGIN 51 // from:
  SAY #33284 /* ~Der Mann wirft Morte und dann dir einen finsteren Blick zu und schüttelt den Kopf. "Rausgeschmissene Zeit!" Er dreht sich um und geht.~ */
  IF ~~ THEN REPLY #33285 /* ~Laß ihn gehen.~ */ DO ~EscapeArea()
~ EXIT
END

IF WEIGHT #8 /* Triggers after states #: 57 56 55 54 even though they appear after this state */
~  NumTimesTalkedTo(0)
!Global("Current_Area","GLOBAL",305)
RandomNum(20,5)
Global("Hive_OT_Annah","GLOBAL",0)
NearbyDialog("DAnnah")
InParty("Annah")
~ THEN BEGIN 52 // from:
  SAY #33286 /* ~"Annah! Was machst du da mit *diesem* Miststück? Ich dachte, du willst *mein* Mädchen sein..." Der Mann lacht schallend und schlägt sich dabei auf die Schenkel.~ */
  IF ~~ THEN DO ~SetGlobal("Hive_OT_Annah","GLOBAL",1)
~ EXTERN ~DANNAH~ 180
END

IF ~~ THEN BEGIN 53 // from:
  SAY #33287 /* ~"Ach, das ist alles nur leeres Gerede, Annah... *alles* nur leeres Gerede... du würdest *niemals* den einzigen Mann zerfetzen, der dich *wirklich* befriedigen könnte! Komm her und gib mir einen langen, feuchten Kuß, meine dreckige kleine Tiefling-Prinzessin!" Er streckt die Hand aus, um Annah zu betatschen.~ */
  IF ~~ THEN DO ~ForceAttack("Annah",Myself)
Enemy()
Attack("Annah")
~ EXTERN ~DANNAH~ 181
END

IF WEIGHT #0 ~  NumTimesTalkedToGT(0)
RandomNum(4,1)
~ THEN BEGIN 54 // from:
  SAY #33288 /* ~Diese Person kann dir nichts weiter erzählen.~ */
  IF ~~ THEN REPLY #33289 /* ~Geh weg.~ */ EXIT
END

IF WEIGHT #1 ~  NumTimesTalkedToGT(0)
RandomNum(4,2)
~ THEN BEGIN 55 // from:
  SAY #33290 /* ~Diese Person kann dir nichts Wichtiges erzählen.~ */
  IF ~~ THEN REPLY #33291 /* ~Geh.~ */ EXIT
END

IF WEIGHT #2 ~  NumTimesTalkedToGT(0)
RandomNum(4,3)
~ THEN BEGIN 56 // from:
  SAY #33292 /* ~Diese Person kann dir nichts weiter erzählen, was für dich interessant ist.~ */
  IF ~~ THEN REPLY #33293 /* ~Geh.~ */ EXIT
END

IF WEIGHT #3 ~  NumTimesTalkedToGT(0)
~ THEN BEGIN 57 // from:
  SAY #33294 /* ~Diese Person kann dir nichts weiter erzählen.~ */
  IF ~~ THEN REPLY #33295 /* ~Geh weiter.~ */ EXIT
END

IF WEIGHT #52 ~  NumTimesTalkedTo(0)
CreatureInArea("AR0305")
~ THEN BEGIN 58 // from:
  SAY #33211 /* ~"Hab' von dir gehört, Dussel... du hast viele Fragen über den alten Pharod gestellt, stimmt's? Wenn du ihn immer noch suchst, versuch's mal nördlich von hier, auf dem Lumpensammler-Platz."~ */
  IF ~  Global("Pharod","GLOBAL",0)
~ THEN REPLY #33212 /* ~"Mach ich. Leb wohl."~ */ EXIT
  IF ~  GlobalGT("Pharod","GLOBAL",0)
~ THEN REPLY #33213 /* ~"Ich habe ihn schon gefunden, aber trotzdem danke. Leb wohl."~ */ EXIT
END
