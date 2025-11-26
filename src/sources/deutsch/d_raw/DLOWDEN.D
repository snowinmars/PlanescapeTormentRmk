// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DLOWDEN.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\de_DE\dialog.tlk
// dialogF  : (none)

BEGIN ~DLOWDEN~

IF ~  Global("Speak_With_Dead","GLOBAL",1)
Global("Know_Lowden","GLOBAL",1)
~ THEN BEGIN 0 // from:
  SAY #2883 /* ~Lowdens entstellte Leiche bewegt sich unruhig, als du näherkommst. "He, was willst du?"~ */
  IF ~~ THEN REPLY #2884 /* ~"Ach, bloß Antworten auf ein paar Fragen, Lowden."~ */ GOTO 1
  IF ~~ THEN REPLY #20821 /* ~"Nichts. Vergiß es."~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0 2.2 3.1 4.1 5.0 6.0 7.0
  SAY #20822 /* ~"Vielleicht antworte ich... vielleicht nicht... Stell deine Fragen..."~ */
  IF ~  Global("Know_Lowden","GLOBAL",0)
~ THEN REPLY #20823 /* ~"Wer bist du?"~ */ DO ~SetGlobal("Know_BLDead","GLOBAL",1)
SetGlobal("Know_Lowden","GLOBAL",1)
~ GOTO 2
  IF ~  Global("Know_Lowden","GLOBAL",1)
~ THEN REPLY #20824 /* ~"Erzähl mir noch mal was über dich."~ */ GOTO 2
  IF ~  Global("Know_Lowden","GLOBAL",1)
~ THEN REPLY #20825 /* ~"Was ist mit Gris geschehen?"~ */ GOTO 4
  IF ~~ THEN REPLY #20826 /* ~"Wie bist du gestorben?"~ */ GOTO 3
  IF ~~ THEN REPLY #20827 /* ~"Erzähl mir was über die Katakomben."~ */ GOTO 6
  IF ~~ THEN REPLY #20828 /* ~"Nichts. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.0 1.1
  SAY #20829 /* ~"Lowden, was? Ich und Burt - und manchmal Gris, obwohl er nur eine großmäulige Nervensäge war, er war beim letzten Mal mit uns zusammen - wir waren die Könige der Katakomben. Weiß nicht, wo Burt steckt. Ist wahrscheinlich tot."~ */
  IF ~~ THEN REPLY #20830 /* ~"Was ist denn passiert?"~ */ GOTO 3
  IF ~~ THEN REPLY #20831 /* ~"Was ist mit Gris geschehen?"~ */ GOTO 4
  IF ~~ THEN REPLY #20832 /* ~"Tja, Pech. Ich hätte noch ein paar Fragen..."~ */ GOTO 1
  IF ~~ THEN REPLY #20833 /* ~"Wahrscheinlich. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 1.3 2.0
  SAY #20834 /* ~"Bin irgendwo falsch abgebogen, als wir von dem Ort weggerannt sind, wo wir Gris zurückgelassen haben, bin hier reingestürzt, und bevor ich meinen Fehler bemerkt hab', wurd ich auf zwanzig verschiedene Arten aufgemischt. Meine Überreste wurden durchs Gitter gedrückt und jetzt... he... jetzt zahlen nicht mal mehr die Staubies dafür." Er gibt ein feuchtes Kichern von sich, das wie Sumpfgas riecht.~ */
  IF ~~ THEN REPLY #20835 /* ~"Was ist mit Gris geschehen?"~ */ GOTO 4
  IF ~~ THEN REPLY #20836 /* ~"Was für eine Ironie. Ich hätte noch ein paar Fragen..."~ */ GOTO 1
  IF ~~ THEN REPLY #20837 /* ~"Das ist echt komisch. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 1.2 2.1 3.0
  SAY #20838 /* ~"He. Das ist eine Geschichte für sich. War eigentlich meine Idee, und zuerst lief's auch gut - Burt hatte keinen Schimmer, was ich machte. Hab' mich ein bißchen umgesehen, herausgefunden, wo sich ein Ghul niedergelassen hatte und dachte, wir könnten den alten Gris da runter bringen. Stellte sich raus, daß der Ghul noch mehr Ghule produziert hatte, und fast hätten sie uns erwischt. Haben Gris reingeschubst und Fersengeld gegeben, als ob die Dame selbst hinter uns her gewesen wäre. Wette, Gris ist tot."~ */
  IF ~  Global("Know_Gris_Dead","GLOBAL",1)
~ THEN REPLY #20839 /* ~"Ja, ist er."~ */ GOTO 5
  IF ~~ THEN REPLY #20840 /* ~"Wahrscheinlich. Ich hätte noch ein paar andere Fragen an dich."~ */ GOTO 1
  IF ~~ THEN REPLY #20841 /* ~"Hört sich so an, als wärst du sehr gründlich gewesen. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 4.0
  SAY #20842 /* ~"Ich könnt sagen, es täte mir leid, aber das tut es nicht. Der Mann hatte das Herz eines Wurms und die Seele einer Schlange, und es hatte seinen Grund, daß wir ihn den Geier nannten. Wenn ich schon tot bin, darf ich ja wohl froh drüber sein, daß es ihm auch nicht besser geht."~ */
  IF ~~ THEN REPLY #20843 /* ~"Hübsch. Ich hätte noch ein paar andere Fragen an dich..."~ */ GOTO 1
  IF ~~ THEN REPLY #20844 /* ~"Hübsch. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 6 // from: 1.4
  SAY #20845 /* ~"Weinende Steine nennen wir sie wegen dem Wasser, das von der Decke kommt und den weinenden Gesichtern an den Wänden. Gibt viele Gruften da unten, und viele davon haben wir geplündert. Echt schade, daß es damit schiefgelaufen ist, aber es mußte ja so kommen. Ich kannte diesen Ort wie meine Westentasche, aber... jetzt kann ich mich an nichts mehr erinnern..."~ */
  IF ~~ THEN REPLY #20846 /* ~"Beantworte mir noch ein paar Fragen..."~ */ GOTO 1
  IF ~~ THEN REPLY #20847 /* ~"Na, dann eben nicht. Leb wohl."~ */ EXIT
END

IF ~  Global("Speak_With_Dead","GLOBAL",1)
~ THEN BEGIN 7 // from:
  SAY #20848 /* ~Diese Leiche wurde gräßlich durch die Mangel gedreht. Sie sieht aus, als wäre sie verbrannt, erstochen, zerstückelt, geknüppelt und durch ein Gitter gedrückt worden. Sie ist in zwei Hälften geteilt und liegt in einer getrockneten Lache aus altem Blut. Die Stimme, die aus ihr dringt, klingt trotzdem fast jovial, und man kann einen leisen Unterton verrückter Freude heraushören. "Ja, Dussel, was willst du?"~ */
  IF ~~ THEN REPLY #20849 /* ~"Antworten auf ein paar Fragen..."~ */ GOTO 1
  IF ~~ THEN REPLY #20850 /* ~"Nichts."~ */ EXIT
END

IF ~  Global("Speak_With_Dead","GLOBAL",0)
~ THEN BEGIN 8 // from:
  SAY #20851 /* ~Diese Leiche wurde gräßlich durch die Mangel gedreht. Sie sieht aus, als wäre sie verbrannt, erstochen, zerstückelt, geknüppelt und durch ein Gitter gedrückt worden. Sie ist in zwei Hälften geteilt und liegt in einer getrockneten Lache aus altem Blut.~ */
  IF ~~ THEN REPLY #20852 /* ~"Nichts, was? Na gut."~ */ EXIT
END
