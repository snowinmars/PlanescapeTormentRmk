// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DGSPIRIT.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\de_DE\dialog.tlk
// dialogF  : (none)

BEGIN ~DGSPIRIT~
//////////////////////////////////////////////////
// WARNING: this file contains non-trivial WEIGHTs
//////////////////////////////////////////////////

IF WEIGHT #1 /* Triggers after states #: 10 even though they appear after this state */
~  NumTimesTalkedTo(0)
~ THEN BEGIN 0 // from:
  SAY #32434 /* ~Die spektrale Gestalt materialisiert sich aus der Düsternis des vor dir liegenden Gangs und bewegt sich schnell, um dir den Weg zu versperren. Sie schwebt vor dir und ihre einst menschlichen Gesichtszüge sind zu einer Maske des Zorns verzerrt. "Schänder! Verlaß auf der Stelle diesen Ort!"~ */
  IF ~~ THEN REPLY #32444 /* ~"Sei gegrüßt."~ */ GOTO 2
  IF ~~ THEN REPLY #32445 /* ~Geh schnell weg.~ */ DO ~SetGlobalTimer("0208_Doomsday","AR0208",10)
~ EXIT
END

IF WEIGHT #2 /* Triggers after states #: 10 even though they appear after this state */
~  NumTimesTalkedToGT(0)
~ THEN BEGIN 1 // from:
  SAY #32435 /* ~Die Luft um dich herum fühlt sich plötzlich eiskalt an, als der Schutzgeist sich manifestiert. Wieder schwebt er auf dich zu, wobei seine spektralen Gewänder wie auf einer ätherischen Brise flattern.~ */
  IF ~  Global("Spirit_Quest","GLOBAL",0)
~ THEN REPLY #32446 /* ~"Halt, Geist. Ich habe da ein paar Fragen..."~ */ GOTO 4
  IF ~  Global("Spirit_Quest","GLOBAL",1)
~ THEN REPLY #32447 /* ~"Warte, Geist. Ich möchte dir helfen, diesen Eindringling loszuwerden, von dem du gesprochen hast."~ */ GOTO 8
  IF ~~ THEN REPLY #32448 /* ~"Vergiß es. Leb wohl."~ */ DO ~SetGlobalTimer("0208_Doomsday","AR0208",10)
~ EXIT
END

IF ~~ THEN BEGIN 2 // from: 0.0
  SAY #32436 /* ~"Verschwinde!" Seine dröhnende Stimme hallt tief wider. "Dieser Ort ist für Lebende verboten. Verlaß ihn, solange du noch kannst."~ */
  IF ~~ THEN REPLY #32449 /* ~"Ich habe da erst noch ein paar Fragen..."~ */ GOTO 4
  IF ~~ THEN REPLY #32450 /* ~"Ich geh da hin, wo es mir paßt... zur Seite, Geist."~ */ GOTO 3
  IF ~~ THEN REPLY #32451 /* ~"Na gut. Leb wohl."~ */ DO ~SetGlobalTimer("0208_Doomsday","AR0208",10)
~ EXIT
END

IF ~~ THEN BEGIN 3 // from: 2.1 4.1
  SAY #32437 /* ~"Unverschämtheit!" Die schiere Lautstärke des Gebrülls des Geistes zwingt dich, dir die Ohren zuzuhalten. "Ich habe dich gewarnt... ich kann nicht zulassen, daß diese heilige Ruhestätte schon wieder gestört wird."~ */
  IF ~~ THEN REPLY #32452 /* ~"Schon wieder? Wieso, war hier schon jemand anders?"~ */ GOTO 5
  IF ~~ THEN REPLY #32453 /* ~"Ja, ja. Warum suchst du dir nicht ein paar Kinder, denen du das Fürchten lehren kannst?"~ */ DO ~Enemy()
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
~ EXIT
  IF ~~ THEN REPLY #32454 /* ~"Ach, weißt du... ich glaube, ich geh' jetzt. Leb wohl."~ */ DO ~SetGlobalTimer("0208_Doomsday","AR0208",10)
~ EXIT
END

IF ~~ THEN BEGIN 4 // from: 1.0 2.0
  SAY #32438 /* ~"Such dir deine Antworten anderswo. Dieser Ort ist ein Refugium für die Toten. Ich werde nicht zulassen, daß ihre Ruhe schon wieder durch das Eindringen eines unverschämten Sterblichen gestört wird!"~ */
  IF ~~ THEN REPLY #32455 /* ~"Schon wieder? Wieso, war hier schon jemand anders?"~ */ GOTO 5
  IF ~~ THEN REPLY #32456 /* ~"Ich geh da hin, wo es mir paßt... zur Seite, Geist."~ */ GOTO 3
  IF ~~ THEN REPLY #32457 /* ~"Na gut. Leb wohl."~ */ DO ~SetGlobalTimer("0208_Doomsday","AR0208",10)
~ EXIT
END

IF ~~ THEN BEGIN 5 // from: 3.0 4.0
  SAY #32439 /* ~"Wenn du's unbedingt wissen mußt... ja, da ist ein anderer Eindringling, der selbst in diesem Moment weiter die Unantastbarkeit dieser heiligen Hallen verletzt." Der Zorn in der Stimme des Geistes verfliegt. Das Eingeständnis scheint ihn etwas zu betrüben. "Die Seelen meiner Brüder und Schwestern schreien nach Frieden."
~ */
  IF ~~ THEN REPLY #32458 /* ~"Wer ist dieser andere Eindringling?"~ */ DO ~SetGlobal("Spirit_Quest","GLOBAL",1)
~ GOTO 6
  IF ~~ THEN REPLY #32459 /* ~"Wieso vertreibst du diesen Eindringling nicht?"~ */ DO ~SetGlobal("Spirit_Quest","GLOBAL",1)
~ GOTO 7
  IF ~~ THEN REPLY #32460 /* ~"Ach, weißt du... ich glaube, ich geh' jetzt. Leb wohl."~ */ DO ~SetGlobal("Spirit_Quest","GLOBAL",1)
SetGlobalTimer("0208_Doomsday","AR0208",10)
~ EXIT
END

IF ~~ THEN BEGIN 6 // from: 5.0
  SAY #32440 /* ~"Er ist ein böser Feigling, der große Macht über die Toten hat. Er sucht etwas in diesen Hallen... was das sein könnte oder warum er es sucht, kann ich nicht sagen."~ */
  IF ~~ THEN REPLY #32461 /* ~"Wieso vertreibst du diesen Eindringling nicht?"~ */ GOTO 7
  IF ~~ THEN REPLY #32462 /* ~"Ach, weißt du... ich glaube, ich geh' jetzt. Leb wohl."~ */ DO ~SetGlobalTimer("0208_Doomsday","AR0208",10)
~ EXIT
END

IF ~~ THEN BEGIN 7 // from: 5.1 6.0
  SAY #32441 /* ~"Ich kann nicht. Der Feigling hat sich in der inneren Kammer des Mausoleums eingeschlossen. Er hat mächtige Schutzwälle errichtet, die mir den Eintritt in die Kammer verwehren. Von dort ruft er seine dunklen Künste an, um meine Brüder aufzuwecken und sie seinem bösen Willen zu unterwerfen."~ */
  IF ~~ THEN REPLY #32463 /* ~"Vielleicht kann ich dir helfen..."~ */ GOTO 8
  IF ~~ THEN REPLY #32464 /* ~"Klingt so, als ob du die Hilfe eines Eindringlings brauchst, um einen anderen Eindringling loszuwerden."~ */ GOTO 8
  IF ~~ THEN REPLY #32465 /* ~"Ach, weißt du... ich glaube, ich geh' jetzt. Leb wohl."~ */ DO ~SetGlobalTimer("0208_Doomsday","AR0208",10)
~ EXIT
END

IF ~~ THEN BEGIN 8 // from: 1.1 7.0 7.1
  SAY #32442 /* ~Der Geist schweigt eine ganze Weile. Du kannst beinahe das Gewicht seines leblosen Blicks auf dir spüren. "Ja... vielleicht schaffst du ja, woran ich gescheitert bin. Wenn du mir versprichst, mich von diesem Bösewicht zu befreien, werde ich dich hier durchlassen. Was sagst du?"~ */
  IF ~~ THEN REPLY #32466 /* ~"Einverstanden."~ */ DO ~SetGlobal("Spirit_Quest","GLOBAL",2)
~ JOURNAL #31881 /* ~Ich habe versprochen, daß ich dem Geist helfe, der das Mausoleum bewacht. Scheinbar ist ein Nekromant in das Mausoleum eingedrungen und hat sich mit mächtigen Schutzwällen, die ihn vor dem Geist beschützen, in der inneren Kammer eingeschlossen. Er muß für die "wandelnden Toten" verantwortlich sein, über die sich Norochj solche Sorgen macht.~ */ GOTO 9
  IF ~~ THEN REPLY #32467 /* ~"Ach, weißt du... ich glaube, ich geh' jetzt. Leb wohl."~ */ DO ~SetGlobalTimer("0208_Doomsday","AR0208",10)
~ EXIT
END

IF ~~ THEN BEGIN 9 // from: 8.0
  SAY #32443 /* ~"Gut." Der Geist verblaßt langsam, bis nur noch das Echo seiner körperlosen Stimme bleibt. "Aber hör zu... tritt in diesen Hallen leise auf, damit nicht auch du hier deine ewige Ruhe findest."~ */
  IF ~~ THEN EXIT
END

IF WEIGHT #0 ~  Dead("Strahan")
~ THEN BEGIN 10 // from:
  SAY #32468 /* ~Als du den Gang betrittst, materialisiert sich der Schutzgeist vor dir. Sein Geistergesicht betrachtet dich mit Wohlwollen. "Ich danke dir. Du hast mir einen großen Dienst erwiesen. Die Geister meiner Schützlinge ruhen wieder in Frieden. Geh' in Frieden... mein Freund." Die Erscheinung verblaßt und läßt dich allein in den verlassenen Hallen des Mausoleums zurück.~ */
  IF ~~ THEN REPLY #32469 /* ~Geh.~ */ DO ~AddexperienceParty(2000)
SetGlobal("Spirit_Quest","GLOBAL",4)
SetGlobal("Mausoleum_Quest","GLOBAL",2)
~ JOURNAL #37705 /* ~Ich habe den eingedrungenen Nekromanten getötet, von dem der Schutzgeist gesprochen hatte. Nun, da seine Macht gebrochen ist, werden die Toten nicht länger durch die Hallen des Mausoleums wandeln. Norochj wird sich freuen.~ */ EXIT
END
