// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DSCPAT1.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\de_DE\dialog.tlk
// dialogF  : (none)

BEGIN ~DSCPAT1~

IF ~  NumTimesTalkedTo(0)
~ THEN BEGIN 0 // from:
  SAY #3072 /* ~Du siehst einen ungepflegten, schlecht gekämmten Mann. Er hat eine starke Fahne. "Jaaa? Wwwas wwwillst du?" Er beugt sich vor und mustert dich von Kopf bis Fuß. "Sieht aus, als könntest du einen HEILKUNDIGEN gebrauchen!" Er lacht lauthals über seinen eigenen schlechten Witz, und der widerliche Geruch von Alkohol und halb gekautem Essen schlägt dir entgegen.~ */
  IF ~~ THEN REPLY #3372 /* ~"Wer bist du?"~ */ GOTO 2
  IF ~  Global("Journal","GLOBAL",0)
~ THEN REPLY #10782 /* ~"Ich suche nach einem Journal. Du hast nicht zufällig eins gesehen?"~ */ GOTO 3
  IF ~  Global("Pharod","GLOBAL",0)
~ THEN REPLY #10783 /* ~"Ich suche nach einem Sammler namens Pharod. Weißt du vielleicht was über ihn?"~ */ GOTO 7
  IF ~~ THEN REPLY #10784 /* ~"Was kannst du mir über diesen Ort erzählen?"~ */ GOTO 4
  IF ~  !Global("Ignus_Free","GLOBAL",1)
~ THEN REPLY #10785 /* ~"Wer brennt denn da vorne beim Eingang?"~ */ GOTO 5
  IF ~~ THEN REPLY #10786 /* ~"Du scheinst mir da nicht weiterhelfen zu können. Schönen Tag noch."~ */ EXIT
END

IF ~  NumTimesTalkedToGT(0)
~ THEN BEGIN 1 // from:
  SAY #10787 /* ~"Wenn das nicht mein alter Freund das Narbengesicht ist!" Er kichert hämisch oder versucht es jedenfalls. Er ist so betrunken, daß ihm die einfachste Handlung schwerfällt. "Was kann der alte Haudrauf für dich tun, Narbengesicht?"
~ */
  IF ~~ THEN REPLY #10788 /* ~"Wer bist du?"~ */ GOTO 2
  IF ~  Global("Journal","GLOBAL",0)
~ THEN REPLY #10789 /* ~"Ich suche nach einem Journal. Ich muß es wohl verlegt haben."~ */ GOTO 3
  IF ~~ THEN REPLY #10790 /* ~"Was kannst du mir über diesen Ort erzählen?"~ */ GOTO 4
  IF ~  !Global("Ignus_Free","GLOBAL",1)
~ THEN REPLY #10791 /* ~"Wer brennt denn da vorne beim Eingang?"
~ */ GOTO 5
  IF ~~ THEN REPLY #10792 /* ~"Nichts. Schönen Tag noch."~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 0.0 1.0 6.0
  SAY #10793 /* ~"Ich? Ich bin ANDOR!" Er schwankt hin und her. "Ich war mal ein ganz schön zäher Bursche, bevor ich dem Fusel verfallen bin. Meine Freunde nannten mich Haudrauf, weil ich ein wahrer Meister im Draufhauen war. Heute nennt man mich so, weil mir Frauen für gewöhnlich eins auf die Fresse geben, wenn ich sie anquatsche."~ */
  IF ~~ THEN REPLY #10794 /* ~"Das ist großartig. Kannst du mir vielleicht ein paar Fragen beantworten?"~ */ GOTO 6
  IF ~~ THEN REPLY #10795 /* ~"Das ist klasse... ähm... Andor. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 0.1 1.1 6.1
  SAY #10796 /* ~Er zögert kurz. "Also wenn du es hier im Stock verloren hast, ist es gut möglich, daß irgendein Sammler es gefunden hat. Frag doch mal im Stock rum. Die Sammler finden hier alles Mögliche. Vielleicht können sie dir helfen."~ */
  IF ~~ THEN REPLY #10797 /* ~"In Ordnung. Ich bräuchte da noch einige Antworten."~ */ GOTO 6
  IF ~~ THEN REPLY #10798 /* ~"Danke. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 0.3 1.2 6.3
  SAY #10799 /* ~"Das ist die Schwelende Leiche. Die beste Kneipe am Ort - wenn dich die Gesellschaft von Scheusalen nicht stört. Und wenn es dir nichts ausmacht, daß die Patrouille des Roten Todes hier ab und zu reinschaut. Hier trifft man jede Menge Leute, und es ist immer was los."~ */
  IF ~~ THEN REPLY #10800 /* ~"Ich gehe davon aus, daß du eine der Attraktionen hier bist. Beantworte mir noch ein paar Fragen."~ */ GOTO 6
  IF ~~ THEN REPLY #10801 /* ~"Ich verstehe. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 0.4 1.3 6.4
  SAY #10802 /* ~"Das? Das ist Ignus. Ein durchgedrehter Zauberer, der die tolle Idee hatte, den Stock abzufackeln. Kennst du die Gasse der gefährlichen Ecken? Das ist sein Werk. Zur Strafe wurde er von seinen eigenen Kollegen verzaubert - und jetzt ist er eine Art... ähm... Maskottchen dieser Kneipe. Mein Cousin war einer von ihnen. Als Magier ist er zwar nicht grad 'ne Leuchte, aber den Dussel hat er kleingekriegt!"~ */
  IF ~~ THEN REPLY #10803 /* ~"Das ist großartig, Haudrauf. Beantworte mir noch ein paar andere Fragen."~ */ GOTO 6
  IF ~~ THEN REPLY #10804 /* ~"Danke, Haudrauf. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 6 // from: 2.0 3.0 4.0 5.0 7.0
  SAY #10805 /* ~"Was willst du wissen?"~ */
  IF ~~ THEN REPLY #10806 /* ~"Wer bist du?"~ */ GOTO 2
  IF ~  Global("Journal","GLOBAL",0)
~ THEN REPLY #10807 /* ~"Ich suche nach einem Journal. Hast du in letzter Zeit eins gesehen?"~ */ GOTO 3
  IF ~  Global("Pharod","GLOBAL",0)
~ THEN REPLY #10808 /* ~"Ich suche nach einem Sammler namens Pharod. Weißt du vielleicht was über ihn?"~ */ GOTO 7
  IF ~~ THEN REPLY #10809 /* ~"Was kannst du mir über diesen Ort erzählen?"~ */ GOTO 4
  IF ~  !Global("Ignus_Free","GLOBAL",1)
~ THEN REPLY #10810 /* ~"Wer brennt denn da vorne beim Eingang?"~ */ GOTO 5
  IF ~~ THEN REPLY #10811 /* ~"Nichts. Schönen Tag noch."~ */ EXIT
END

IF ~~ THEN BEGIN 7 // from: 0.2 6.2
  SAY #10812 /* ~"Pharod? Der Name kommt mir irgendwie bekannt vor, aber... du weißt ja, wie das ist, wenn man völlig benebelt in der Birne ist. Ich kann mich einfach nicht erinnern. Tut mir echt leid, Narbengesicht."
~ */
  IF ~~ THEN REPLY #10813 /* ~"Also schön. Dann beantworte mir doch noch ein paar andere Fragen, ja?"~ */ GOTO 6
  IF ~~ THEN REPLY #10814 /* ~"Also gut. Schönen Tag noch."~ */ EXIT
END
