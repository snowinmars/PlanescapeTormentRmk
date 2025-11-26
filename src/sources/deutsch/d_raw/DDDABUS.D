// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DDDABUS.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\de_DE\dialog.tlk
// dialogF  : (none)

BEGIN ~DDDABUS~

IF ~  Global("Alley_Dabus_SC","GLOBAL",0)
~ THEN BEGIN 0 // from:
  SAY #50355 /* ~Du siehst den leblosen Körper eines Dabus. Der von ihm ausgehende Verwesungsgeruch ist unerträglich, und wenn man seine steife, unnatürliche Körperhaltung so betrachet, muß die Totenstarre schon vor geraumer Zeit eingesetzt haben. Und doch erregt dich die ganze Szene auf unerklärliche Weise.~ */
  IF ~  Global("Speak_with_Dead","GLOBAL",1)
~ THEN REPLY #50356 /* ~Wende die Kraft Erzählende Knochen auf die Leiche an.~ */ DO ~SetGlobal("Alley_Dabus_SC","GLOBAL",1)
~ GOTO 1
  IF ~~ THEN REPLY #50370 /* ~Laß den Steifgewordenen in Frieden ruhen.~ */ DO ~SetGlobal("Alley_Dabus_SC","GLOBAL",1)
~ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0 7.0
  SAY #50357 /* ~Einige Sekunden lang scheint es, als ob nichts weiter geschehen wird. Dann entströmt dem offenen Mund der Leiche plötzlich ein schwacher Schwall rasselnder Atemluft. ~ */
  IF ~~ THEN REPLY #50358 /* ~"Hallo? Kannst du mich hören?"~ */ GOTO 2
END

IF ~~ THEN BEGIN 2 // from: 1.0
  SAY #50359 /* ~Für einige Augenblicke herrscht Stille, bevor - ohne jegliche Vorwarnung - der Mund der Leiche beginnt, sich zu bewegen. "Natürlich kann ich dich hören! Ich bin *tot*, nicht taub... So 'ne Scheiße."[Provisorische Zeile von Steve Bokkes geschrieben]~ */
  IF ~~ THEN REPLY #50360 /* ~"Immer mit der Ruhe... Ich will dir bloß ein paar Fragen stellen."~ */ GOTO 3
END

IF ~~ THEN BEGIN 3 // from: 2.0
  SAY #50361 /* ~Fragen? Sehe ich wie ein Infoschalter aus, du Idiot?[Provisorische Zeile von Steve Bokkes geschrieben]~ */
  IF ~~ THEN REPLY #50362 /* ~Was soll das Gequatsche... Solltest du, Dabus, nicht in Bilderrätseln sprechen?[Provisorische Zeile von Steve Bokkes geschrieben]~ */ GOTO 4
  IF ~~ THEN REPLY #50369 /* ~"Kannst du mir wenigstens sagen, wie du gestorben bist, damit ich diese bescheuerte Aufgabe in der Trächtigen Gasse endlich beenden und weiter in den Unteren Bezirk gehen kann?"~ */ GOTO 5
END

IF ~~ THEN BEGIN 4 // from: 3.0
  SAY #50363 /* ~Verdammt! Du bist ein richtig dummes Weißbrot. Jeder weiß, dass Tod eine universale Sprache ist. Was soll es mir zur Hölle bringen, wenn ich hier damit beginne, all diese dämlichen Symbole auszuspucken, wenn du nichts davon verstehst? Wie würdest du dann diese Mission bewältigen, hm? Abgesehen davon ist das nur ein Platzhalter-Dialog, du Trottel.[Provisorische Zeile von Steve Bokkes geschrieben]~ */
  IF ~~ THEN REPLY #50364 /* ~"Kannst du mir wenigstens sagen, wie du gestorben bist, damit ich diese bescheuerte Aufgabe in der Trächtigen Gasse endlich beenden und weiter in den Unteren Bezirk gehen kann?"~ */ GOTO 5
END

IF ~~ THEN BEGIN 5 // from: 3.1 4.0
  SAY #50365 /* ~"Klar, Weißbrot! Also, das war so: Ich bin hier runter in die Gasse gekommen und wollte mal rausfinden, was es zum Teufel nochmal mit den sich verändernden Gebäuden auf sich hat und so. Ich also hier in das Gebäude rein, und dann weiß ich nur noch, daß die Fenster und Türen plötzlich zugingen. Ich saß in der Falle, und es gab keinen Ausweg. Ich hab versucht, mir durch die Mauern einen Weg nach draußen zu bahnen, doch jedesmal, wenn ich einen Brocken herausgebrochen hatte, schien sich das Gebäude von selbst zu reparieren."~ */
  IF ~~ THEN REPLY #50366 /* ~"Danke. Du bist wirklich eine große Hilfe gewesen."~ */ DO ~SetGlobal("Know_Dead_Dabus","GLOBAL",1)
~ GOTO 6
END

IF ~~ THEN BEGIN 6 // from: 5.0
  SAY #50367 /* ~"Keine Ursache, Trottel!"[Provisorische Zeile von Steve Bokkes geschrieben]~ */
  IF ~~ THEN REPLY #50368 /* ~Geh weg.~ */ EXIT
END

IF ~  GlobalGT("Alley_Dabus_SC","GLOBAL",0)
Global("Know_Dead_Dabus","GLOBAL",0)
~ THEN BEGIN 7 // from:
  SAY #50371 /* ~Du siehst den leblosen Körper eines Dabus. Der von ihm ausgehende Verwesungsgeruch ist unerträglich, und wenn man seine steife, unnatürliche Körperhaltung so betrachet, muß die Totenstarre schon vor geraumer Zeit eingesetzt haben. Und doch erregt dich die ganze Szene auf unerklärliche Weise.~ */
  IF ~  Global("Speak_with_Dead","GLOBAL",1)
~ THEN REPLY #50372 /* ~Wende die Kraft Erzählende Knochen auf die Leiche an.~ */ GOTO 1
  IF ~~ THEN REPLY #50373 /* ~Laß den Steifgewordenen in Frieden ruhen.~ */ EXIT
END

IF ~  GlobalGT("Alley_Dabus_SC","GLOBAL",0)
Global("Know_Dead_Dabus","GLOBAL",1)
~ THEN BEGIN 8 // from:
  SAY #50374 /* ~Es gibt nichts, was der tote Dabus noch zu dir sagen will. Versuche es noch einmal, sobald Steve den finalen Dialog eingefügt hat.[Provisorische Zeile von Steve Bokkes geschrieben]~ */
  IF ~~ THEN REPLY #50375 /* ~Geh weg.~ */ EXIT
END
