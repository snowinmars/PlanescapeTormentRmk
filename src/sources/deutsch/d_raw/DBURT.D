// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DBURT.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\de_DE\dialog.tlk
// dialogF  : (none)

BEGIN ~DBURT~

IF ~  Global("Speak_With_Dead","GLOBAL",1)
Global("Know_Burt","GLOBAL",1)
~ THEN BEGIN 0 // from:
  SAY #2881 /* ~Burts Leiche zuckt, als du mit ihr sprichst. "Was... was willst du?"~ */
  IF ~~ THEN REPLY #2882 /* ~"Ich wollte dir noch ein paar weitere Fragen stellen..."
~ */ GOTO 1
  IF ~~ THEN REPLY #20787 /* ~"Nichts. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0 2.1 3.1 4.0 5.0 6.1 7.0 8.0
  SAY #20788 /* ~"Was... was wolltest du wissen... wissen?"~ */
  IF ~  Global("Know_Burt","GLOBAL",0)
~ THEN REPLY #20789 /* ~"Wer bist du?"~ */ DO ~SetGlobal("Know_BLDead","GLOBAL",1)
SetGlobal("Know_Burt","GLOBAL",1)
~ GOTO 2
  IF ~  Global("Know_Burt","GLOBAL",1)
~ THEN REPLY #20790 /* ~"Erzähl mir noch mal was über dich."~ */ GOTO 2
  IF ~  Global("Know_BLG_Grouped","GLOBAL",1)
Global("Know_Burt","GLOBAL",1)
~ THEN REPLY #20791 /* ~"Was ist mit Gris geschehen?"~ */ GOTO 5
  IF ~~ THEN REPLY #20792 /* ~"Wie bist du gestorben?"~ */ GOTO 6
  IF ~~ THEN REPLY #20793 /* ~"Erzähl mir was über die Katakomben."~ */ GOTO 7
  IF ~~ THEN REPLY #20794 /* ~"Nichts. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.0 1.1
  SAY #20795 /* ~"Ich... Ich war Burt. Ich und Lowden, mein bester Kumpel, wir sind jetzt tot."~ */
  IF ~~ THEN REPLY #20796 /* ~"Wo ist Lowden jetzt?"~ */ DO ~SetGlobal("Know_BLG_Grouped","GLOBAL",1)
~ GOTO 3
  IF ~~ THEN REPLY #20797 /* ~"Beantworte mir noch ein paar andere Fragen..."~ */ GOTO 1
  IF ~~ THEN REPLY #20798 /* ~"Verstehe. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 2.0 6.0
  SAY #20799 /* ~"Ist in irgendeiner schrecklichen Fallengruft gefangen. Wir sind Hals über Kopf weggerannt von Gris und dem *Ding*, das ihn erwischt hat. Lowden rannte zu einer ... einer Gruft, von der wir wußten, daß sie gefährlich war, aber... aber er hatte soviel Schiß, daß es ihm egal war. Ich hab' ihn sterben gehört." Einen Moment lang klingt er enttäuscht. "Er hatte auch die ganze Beute von dieser Tour... und es war eine gute Tour..."~ */
  IF ~~ THEN REPLY #20800 /* ~"Fallengruft?"~ */ GOTO 4
  IF ~~ THEN REPLY #20801 /* ~"Ganz bestimmt. Ich hätte noch ein paar andere Fragen..."~ */ GOTO 1
  IF ~~ THEN REPLY #20802 /* ~"Wirklich. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 3.0
  SAY #20803 /* ~"Ja. Stacheln, Klingen, Blut, Gitter am Boden. Wenn Lowden noch komplett ist, wird er dort sein. Such ihn, aber paß auf... paß auf, wo du hintrittst..."~ */
  IF ~~ THEN REPLY #20804 /* ~"Ganz bestimmt. Ich hätte noch ein paar andere Fragen..."~ */ GOTO 1
  IF ~~ THEN REPLY #20805 /* ~"Mach ich. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 1.2
  SAY #20806 /* ~"Was Schreckliches... hat eine Gruft aufgemacht, und *sie* war da. Lowden und ich, wir haben Gris reingeschubst und das Weite gesucht. Hab' ihn... hab' ihn schreien gehört."~ */
  IF ~~ THEN REPLY #20807 /* ~"Ich... verstehe. Ich hätte aber noch ein paar Fragen..."~ */ GOTO 1
  IF ~~ THEN REPLY #20808 /* ~"Ich verstehe. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 6 // from: 1.3
  SAY #20809 /* ~"Ich... ich bin tot? Muß ich wohl... flohen vor der Königin der Gruft und rannten durch die Katakomben. Lowden geriet an einen schlechten Ort... Ich... ich bin weitergerannt. Bin voll in die Mauer gerannt... hab' 'ne Weile geblutet... bin aufgewacht, da kauten Ratten an mir rum... die haben mich zu Tode gefressen..."~ */
  IF ~~ THEN REPLY #20810 /* ~"Wo ist Lowden?"~ */ DO ~SetGlobal("Know_BLG_Grouped","GLOBAL",1)
~ GOTO 3
  IF ~~ THEN REPLY #20811 /* ~"Ich hätte da noch ein paar Fragen."~ */ GOTO 1
  IF ~~ THEN REPLY #20812 /* ~"Ich verstehe. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 7 // from: 1.4
  SAY #20813 /* ~"Waren... waren... unser Jagdrevier... Goldgrube... wollte nur mit Knochen hier rauskommen... zu gefährlich... Gris? Gris?" Die Leiche verstummt.~ */
  IF ~~ THEN REPLY #20814 /* ~"Beantworte mir ein paar Fragen."~ */ GOTO 1
  IF ~~ THEN REPLY #20815 /* ~Laß sie liegen.~ */ EXIT
END

IF ~  Global("Speak_With_Dead","GLOBAL",1)
~ THEN BEGIN 8 // from:
  SAY #20816 /* ~Die Leiche ist relativ frisch - aus den letzten paar Wochen oder so - und große Teile von ihr sind von Rattenzähnen weggefressen. Die Haut an der Stirn der Leiche sieht aus, als ob jemand dem armen Tropf wirklich das Gehirn rausgezogen hat. Auf deine Fragen hin bewegt sie sich. "W... wer stört mich?"~ */
  IF ~~ THEN REPLY #20817 /* ~"Ich hätte noch ein paar Fragen an dich, Leiche..." ~ */ GOTO 1
  IF ~~ THEN REPLY #20818 /* ~"Niemand. Leb wohl."~ */ EXIT
END

IF ~  Global("Speak_With_Dead","GLOBAL",0)
~ THEN BEGIN 9 // from:
  SAY #20819 /* ~Die Leiche ist relativ frisch - aus den letzten paar Wochen oder so - und große Teile von ihr sind von Rattenzähnen weggefressen. Die Haut an der Stirn der Leiche sieht aus, als ob jemand dem armen Tropf wirklich das Gehirn rausgezogen hat. Du stößt die Leiche leicht mit den Zehen an, und sie wabbelt knochenlos.~ */
  IF ~~ THEN REPLY #20820 /* ~"Nichts zu holen hier..."~ */ EXIT
END
