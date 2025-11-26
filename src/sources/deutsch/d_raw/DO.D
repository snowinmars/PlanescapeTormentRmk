// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DO.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\de_DE\dialog.tlk
// dialogF  : (none)

BEGIN ~DO~

IF ~  NumTimesTalkedTo(0)
~ THEN BEGIN 0 // from:
  SAY #3070 /* ~Du siehst einen Mann, der regungslos dasteht. Er zuckt nicht einmal mit der Wimper. Bei genauerer Betrachtung könnte man meinen, daß er nicht atmet, sondern einfach nur so dasteht. Seine Augenhöhlen sind klaffende Löcher in seinem Gesicht. Darin schimmert ein mattes graues Licht, das aufgeregt zu tanzen scheint. Der Blick in die Augenhöhlen vermittelt das unheimliche Gefühl unendlicher Leere, das dich schaudern läßt, als würdest du der Ewigkeit von Angesicht zu Angesicht gegenüberstehen. Der Kopf schwenkt langsam zu dir (während der Bewegung scheint sich unter der Haut kein einziger Muskel zu bewegen), und der Mann spricht mit klarer, glockenheller Stimme: "Schön, dich zu sehen, Streuner. Du hast schon wieder vergessen, nicht wahr?"~ */
  IF ~~ THEN REPLY #3370 /* ~"Kennst du mich, Fremder?"~ */ GOTO 2
  IF ~  Global("Journal","GLOBAL",0)
~ THEN REPLY #10698 /* ~"Ich habe keine Zeit für Rätselratereien. Ich suche nach einem Journal. Dringend. Weißt du vielleicht, wo ich es finden könnte?"~ */ GOTO 13
  IF ~  Global("Pharod","GLOBAL",0)
~ THEN REPLY #10699 /* ~"Bist du Pharod? Ich suche Pharod, den Sammler."~ */ GOTO 14
  IF ~~ THEN REPLY #10700 /* ~"Wer bist du?"~ */ GOTO 6
  IF ~~ THEN REPLY #10701 /* ~"Vergiß es. Ich hab' anderes zu tun. Leb wohl."~ */ EXIT
END

IF ~  NumTimesTalkedToGT(0)
~ THEN BEGIN 1 // from:
  SAY #10702 /* ~"Hallo, Reisender, da bist du ja wieder." O scheint sich nicht vom Fleck bewegt zu haben, seit du das letzte Mal mit ihm gesprochen hast. "Was willst du von mir?"~ */
  IF ~  Global("Know_O","GLOBAL",1)
~ THEN REPLY #10703 /* ~"Erzähl mir von diesem göttlichen Alphabet, von dem du vorhin sprachst."~ */ GOTO 9
  IF ~~ THEN REPLY #10704 /* ~"Erzähl mir was von dir."~ */ GOTO 6
  IF ~  Global("Journal","GLOBAL",0)
~ THEN REPLY #10705 /* ~"Ich suche nach einem Journal. Dringend. Weißt du vielleicht, wo ich es finden könnte?"~ */ GOTO 13
  IF ~  Global("Pharod","GLOBAL",0)
~ THEN REPLY #10706 /* ~"Hast du vielleicht Pharod, den Sammler, gesehen oder von ihm gehört?"~ */ GOTO 14
  IF ~~ THEN REPLY #10707 /* ~"Erzähl mir was über die Gäste dieser Taverne."~ */ GOTO 20
  IF ~~ THEN REPLY #10708 /* ~"Nichts. Auf bald."~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 0.0
  SAY #10709 /* ~Als er den Mund öffnet, überkommt dich wieder dieses Gefühl der Ewigkeit - in seinem Mund siehst du weder Zunge noch Zähne, als wäre dieser Mann eine Hülle, die eine grenzenlose Weite umschließt. "Wir haben uns schon mal unterhalten, aber das vergißt du ja immer. Deine unaufhörliche Suche nach deinem Selbst endet jedesmal im Gedächtnisverlust. Immer wenn du die Wahrheit fast gefunden hast, wirst du erneut zurückgeworfen. Hoffen wir, daß du stark genug bist, deine Existenz zu ertragen."~ */
  IF ~~ THEN REPLY #10710 /* ~"Was weißt Du von mir? Woher weißt du das?"~ */ GOTO 3
  IF ~~ THEN REPLY #10711 /* ~"Ich habe keine Zeit für solche Spinnereien. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 2.0
  SAY #10712 /* ~"Ich weiß, daß du wie eine Fliege aus deiner alten, kaputten Hülle kriechst, eine Weile herumschwirrst und dann am Fenster der Wahrheit verendest. Du klebst an der Scheibe, suchst völlig planlos nach dem Licht, und wenn die Suche erfolglos bleibt, überfällt dich Erschöpfung. Du setzt dich auf andere nieder, um dich eine Weile von ihnen zu ernähren, und dann fliegst du weiter, ohne auch nur einen weiteren Gedanken an sie zu verschwenden. Ich habe beobachtet, wie du hierher kamst, habe dir zugehört und gesehen, daß du am Ende kein bißchen klüger warst. Wann lernst du endlich aus deinen Fehlern, Suchender?"~ */
  IF ~~ THEN REPLY #10713 /* ~"Ich glaube nicht, daß dein Ton mir gefällt."~ */ GOTO 4
  IF ~~ THEN REPLY #10714 /* ~"Wer bist du?"~ */ GOTO 6
  IF ~~ THEN REPLY #10715 /* ~"Diesmal nicht. Leb wohl."~ */ EXIT
  IF ~~ THEN REPLY #10716 /* ~Greif ihn an.~ */ DO ~SetGlobal("Know_O","GLOBAL",2)
DestroySelf()
~ EXIT
END

IF ~~ THEN BEGIN 4 // from: 3.0 20.1
  SAY #10717 /* ~Obwohl er nicht lächelt, wirkt sein Tonfall amüsiert. "Willst du alle Probleme lösen, indem du blind weiterkämpfst? Bist du wirklich nur ein stechendes Insekt, oder lernst du irgendwann in deinem erbärmlichen Leben doch noch zu denken?"~ */
  IF ~~ THEN REPLY #10718 /* ~"Ich warne dich..."~ */ GOTO 5
  IF ~~ THEN REPLY #10719 /* ~"Wer bist du, daß du es wagst, in dieser Weise mit mir zu sprechen?"
~ */ GOTO 6
  IF ~~ THEN REPLY #10720 /* ~"Das hab' ich nicht nötig. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 4.0
  SAY #10721 /* ~"Du forderst mich heraus? Ich, der ich mein Dasein Worten verdanke, kenne Wörter, die dich vernichten, die das letzte Stück deiner Seele auslöschen und dich winselnd auf dem Boden zurücklassen könnten. Dennoch meine ich, daß ich solche Geheimnisse auf Leute wie dich nicht zu verschwenden brauche, wenn ich dich gegenüber meiner Anwesenheit einfach blind machen kann."~ */
  IF ~~ THEN REPLY #10722 /* ~Greif ihn an.~ */ DO ~SetGlobal("Know_O","GLOBAL",2)
DestroySelf()
~ EXIT
  IF ~~ THEN REPLY #10723 /* ~"Wer bist du überhaupt?"~ */ GOTO 6
  IF ~~ THEN REPLY #10724 /* ~"Na, das ist jetzt aber genug der Wichtigtuerei. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 6 // from: 0.3 1.1 3.1 4.1 5.1 11.4
  SAY #10725 /* ~"Ich bin O." Irgendwie spricht er seinen Namen so aus, als handele es sich dabei um mehr als einen einfachen Buchstaben, als berge der Klang seines Namens unzählige Möglichkeiten und Nuancen in sich. Keine menschliche Zunge könnte je einen solchen Laut erzeugen.~ */
  IF ~~ THEN REPLY #10726 /* ~"Was für eine Art Name ist das denn?"~ */ DO ~SetGlobal("Know_O","GLOBAL",1)
~ GOTO 7
  IF ~~ THEN REPLY #10727 /* ~"Was bist du?"~ */ DO ~SetGlobal("Know_O","GLOBAL",1)
~ GOTO 7
  IF ~~ THEN REPLY #10728 /* ~"Nett, dich kennenzulernen, O. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 7 // from: 6.0 6.1
  SAY #10729 /* ~"Es ist mein Name. Der Name eines Stückes Ewigkeit. Ich bin ein Buchstabe des göttlichen Alphabets. Mich zu verstehen, kann dazu führen, das Wesen der Existenz zu verstehen. Ich bin im wahren Namen der Hälfte aller Dinge enthalten. Und ich selbst enthalte die Wahrheit. Ich bin mathematisch, organisch, metaphysisch."
~ */
  IF ~~ THEN REPLY #10730 /* ~"Ich glaube, du bist ganz und gar verrückt."~ */ GOTO 8
  IF ~~ THEN REPLY #10731 /* ~"Und was soll das heißen?"~ */ GOTO 9
  IF ~~ THEN REPLY #10732 /* ~"...gut. Beantworte mir doch noch ein paar andere Fragen, ja?"~ */ GOTO 11
  IF ~~ THEN REPLY #10733 /* ~"Ich verstehe. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 8 // from: 7.0
  SAY #10734 /* ~"Das kannst du gerne glauben. Alles Gute, Reisender. Leb wohl."~ */
  IF ~~ THEN REPLY #10735 /* ~"Beantworte mir noch ein paar andere Fragen, ja?"~ */ GOTO 10
  IF ~~ THEN REPLY #10736 /* ~"Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 9 // from: 1.0 7.1 11.0
  SAY #10737 /* ~"Das göttliche Alphabet ist im Namen aller existierenden Dinge enthalten, vom Samen im Herzen der Elementarebenen bis zum Kern des Großen Jenseits. Meine Brüder/Schwestern" (ein einziger Begriff formt sich in deinem Kopf in diese beiden Wörter) "und ich umfassen alles, was ist, war oder je sein wird. Wir sind Traum und Realität, die Vorstellung und das Unvorstellbare."~ */
  IF ~~ THEN REPLY #10738 /* ~"Erzähl mir über das Große Jenseits."~ */ GOTO 12
  IF ~~ THEN REPLY #10739 /* ~"Nun, und was machst du hier?"~ */ GOTO 16
  IF ~~ THEN REPLY #10740 /* ~"Dann heißt das, daß du alle Geheimnisse der Existenz kennst, nicht wahr?"~ */ GOTO 18
  IF ~~ THEN REPLY #10741 /* ~"Dann solltest du in der Lage sein, mir ein paar Fragen zu beantworten."~ */ GOTO 11
  IF ~~ THEN REPLY #10742 /* ~"Darüber muß ich ein Weilchen nachdenken. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 10 // from: 8.0
  SAY #10743 /* ~Er ignoriert dich. Die Gewißheit, daß er dich noch eine ganze Weile ignorieren wird, überkommt dich, und du weißt nicht, wo sie herrührt.
~ */
  IF ~~ THEN REPLY #10744 /* ~"Auf bald, dann."~ */ EXIT
END

IF ~~ THEN BEGIN 11 // from: 7.2 9.3 12.1 13.2 14.0 15.0 17.0 18.1 20.0
  SAY #10745 /* ~"Was willst du von mir wissen?"~ */
  IF ~  Global("Know_O","GLOBAL",1)
~ THEN REPLY #10746 /* ~"Was hast du da von einem göttlichen Alphabet gesagt?"~ */ GOTO 9
  IF ~  Global("Journal","GLOBAL",0)
~ THEN REPLY #10747 /* ~"Ich suche nach einem Journal. Dringend. Weißt du vielleicht, wo ich es finden könnte?"~ */ GOTO 13
  IF ~  Global("Pharod","GLOBAL",0)
~ THEN REPLY #10748 /* ~"Hast du vielleicht Pharod, den Sammler, gesehen oder von ihm gehört?"~ */ GOTO 14
  IF ~~ THEN REPLY #10749 /* ~"Erzähl mir was über die Gäste dieser Taverne."~ */ GOTO 20
  IF ~~ THEN REPLY #10750 /* ~"Erzähl mir was über dich."~ */ GOTO 6
  IF ~~ THEN REPLY #10751 /* ~"Wenn ich recht darüber nachdenke: nichts. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 12 // from: 9.0
  SAY #10752 /* ~"Du würdest es nicht verstehen. Kein Sterblicher würde es je verstehen. Es geht über das Vorstellungsvermögen eines jeden hinaus. Nur die Mächtigsten aller Mächte können es verstehen, und wenn sie es verstanden haben, überschreiten sie die Grenze des menschlichen Vorstellungsvermögens. Besser kann ich es nicht erklären. Vielleicht verstehst du es eines Tages."~ */
  IF ~~ THEN REPLY #10753 /* ~"Nun, und was machst du hier?"~ */ GOTO 16
  IF ~~ THEN REPLY #10754 /* ~"Dann beantworte mir doch ein paar Fragen."~ */ GOTO 11
  IF ~~ THEN REPLY #10755 /* ~"Ich verstehe. Dann leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 13 // from: 0.1 1.2 11.1
  SAY #10756 /* ~"Ich weiß, wo du es findest, aber es steht mir nicht zu, es zu verraten. Du kannst versichert sein, daß du es finden WIRST, genau wie den Mann, den du suchst."~ */
  IF ~  Global("Pharod","GLOBAL",0)
~ THEN REPLY #10757 /* ~"Weißt du, wo Pharod ist?"~ */ GOTO 14
  IF ~~ THEN REPLY #10758 /* ~"Was weißt du davon?"~ */ GOTO 15
  IF ~~ THEN REPLY #10759 /* ~"Na, meinen Dank auch. Vielleicht könntest du mir noch eine andere Fragen beantworten?"~ */ GOTO 11
  IF ~~ THEN REPLY #10760 /* ~"Na, meinen Dank auch. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 14 // from: 0.2 1.3 11.2 13.0
  SAY #10761 /* ~"Ich weiß, wo er steckt, kann dir aber nur sagen, daß er nicht weit weg ist. Du findest ihn im Stock, unter dem Schleier des Geheimnisses."~ */
  IF ~~ THEN REPLY #10762 /* ~"Darunter scheinen mir auch alle deine Antworten zu fallen. Kannst du mir eine andere Frage beantworten?"~ */ GOTO 11
  IF ~~ THEN REPLY #10763 /* ~"Dann sollte ich mich am besten mal nach ihm umsehen. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 15 // from: 13.1
  SAY #10764 /* ~"Ich weiß, daß deine Reise nicht auf die Suche nach dem Journal beschränkt ist. Sie wird dich viel weiter führen, bis an den äußersten Rand der Existenz. Du wirst um dein Leben und um deinen Geist kämpfen müssen... aber mehr kann ich dazu nicht sagen."~ */
  IF ~~ THEN REPLY #10765 /* ~"Dann erzähl mir von etwas andrem."~ */ GOTO 11
  IF ~~ THEN REPLY #10766 /* ~"Wie du willst. Leb wohl."
~ */ EXIT
END

IF ~~ THEN BEGIN 16 // from: 9.1 12.0
  SAY #10767 /* ~"Nun, ich beobachte die Gezeiten der Sterblichkeit."~ */
  IF ~~ THEN REPLY #10768 /* ~"Und was siehst du?"~ */ GOTO 17
END

IF ~~ THEN BEGIN 17 // from: 16.0
  SAY #10769 /* ~"Ihr Sterblichen seid wie Wespen. Ihr errichtet euer Leben/eure Nester auf dem schwächsten Ast, und wenn der Wind an eurem Heim/Nest rüttelt, versucht ihr, ihm einen tödlichen Stich zu versetzen. Anstatt eure törichten Fehler zu bemerken, den selbstverschuldeten Schaden wiedergutzumachen und aus Erfahrung zu lernen, schadet ihr denjenigen, die das Pech haben, in eurer Nähe zu sein, wenn es euch schlecht geht. Ich rate dir sowie allen andern Sterblichen: Hört auf, euch wie Insekten zu verhalten, und lebt wie empfindsame Wesen."~ */
  IF ~~ THEN REPLY #10770 /* ~"Ich werd darüber nachdenken. In der Zwischenzeit könntest du mir noch ein paar Fragen beantworten."~ */ GOTO 11
  IF ~~ THEN REPLY #10771 /* ~"Vielen Dank für den Rat. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 18 // from: 9.2
  SAY #10772 /* ~"Viele davon kenne ich zum Teil. Ohne Verbindung zu meinen Brüdern/Schwestern bin ich nichts als ein Buchstabe. Alleine bin ich ein Symbol. Doch zusammen sind wir Sprache und Macht."~ */
  IF ~~ THEN REPLY #10773 /* ~"Also kennst du die Geheimnisse der Existenz doch nicht?"~ */ GOTO 19
  IF ~~ THEN REPLY #10774 /* ~"Dann weißt du nichts. Vielleicht weißt du aber die Antworten auf einige meiner Fragen?"~ */ GOTO 11
  IF ~~ THEN REPLY #10775 /* ~"Eine schöne Metapher, in jeder Hinsicht. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 19 // from: 18.0
  SAY #10776 /* ~"Das habe ich nicht gesagt. Ein Buchstabe allein birgt bereits eine gewaltige Macht in sich. Laß es mich dir zeigen." Er öffnet seinen Mund immer weiter. Sein Gesicht verzieht sich um Augen, Mund und Nase, und dich überkommt erneut dieses Gefühl der Ewigkeit. Du verlierst dich in ihr, treibst in ihr umher... bist Teil von ihr. Als du in die Realität zurückkehrst, stellst du fest, daß O verschwunden ist. Irgendwie wurde jedoch dein Horizont erweitert. Dein Geist wurde erhellt, wenn auch nur kurz.~ */
  IF ~~ THEN REPLY #10777 /* ~"Das war... unbeschreiblich."~ */ DO ~PermanentStatChange(Protagonist,WIS,RAISE,1)
DestroySelf()
~ EXIT
END

IF ~~ THEN BEGIN 20 // from: 1.4 11.3
  SAY #10778 /* ~"Die Gäste hier sind zwar sehr verschieden, aber doch alle sterblich. Und wie bei allen Sterblichen sind ihre Gedanken beschränkt. Theoretisch könnten sie jedoch die ultimative Wahrheit erfahren. Aber eins kann ich dir sagen: Du könntest hier einen Gefährten finden, den du ins Herz schließt - zumindest soweit dies bei dir möglich ist."~ */
  IF ~~ THEN REPLY #10779 /* ~"Ich schätze, das war eine Beleidigung, aber ich lasse das mal durchgehen. Beantworte mir noch eine andere Frage, ja?"~ */ GOTO 11
  IF ~~ THEN REPLY #10780 /* ~"Ich glaube nicht, daß dein Ton mir gefällt."~ */ GOTO 4
  IF ~~ THEN REPLY #10781 /* ~"Vielen Dank. Auf bald."~ */ EXIT
END
