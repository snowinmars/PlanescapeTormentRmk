// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DSCPAT2.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\de_DE\dialog.tlk
// dialogF  : (none)

BEGIN ~DSCPAT2~
//////////////////////////////////////////////////
// WARNING: this file contains non-trivial WEIGHTs
//////////////////////////////////////////////////

IF WEIGHT #0 ~  GlobalGT("Ignus","GLOBAL",1)
NearbyDialog("DIgnus")
~ THEN BEGIN 0 // from:
  SAY #3073 /* ~Als du dich der Frau näherst und mit ihr reden willst, lodern Ignus Augen auf. Bevor du ihn bremsen kannst, hat er sie bereits umarmt. Sie erwidert die Umarmung und verliert sich in den Flammen. Dabei schreit sie kein einziges Mal. Ihr letzter Anblick brennt sich in dein Gedächtnis ein: In ihren Augen glüht die Leidenschaft und eine alles verschlingende Liebe. Von ihr bleibt nichts übrig, nicht einmal ein Häufchen Asche.~ */
  IF ~~ THEN REPLY #10815 /* ~"Das war gründlich, Ignus, und etwas schnell. Ich wollte mit ihr reden."~ */ DO ~SetAnimState("Ignus",ANIM_MIMESPELL2)
SetAnimState(Myself,ANIM_MIMEDIE)
SetGlobal("Drusilla","GLOBAL",2)
DestroySelf()
~ EXIT
END

IF WEIGHT #2 /* Triggers after states #: 15 even though they appear after this state */
~  NumTimesTalkedTo(0)
~ THEN BEGIN 1 // from:
  SAY #10816 /* ~Diese Frau hat blaue Flecken im Gesicht und auf den Armen, die gerade am abheilen sind. Ihre eingefallenen Augen sprechen von verzweifelter Sehnsucht. Sie mag einst sehr schön gewesen sein, doch das ist lange her. Sie dreht sich langsam zu dir um. Ihre Gesichtszüge werden mit Leben erfüllt, und das boshafte Funkeln in ihren Augen gibt dir das Gefühl, daß dein erster Eindruck von ihr dich vielleicht getäuscht hat. "Willkommen in der Schwelenden Leiche, Narbengesicht."~ */
  IF ~~ THEN REPLY #10817 /* ~"Wer bist du?"~ */ GOTO 3
  IF ~  Global("Journal","GLOBAL",0)
~ THEN REPLY #10818 /* ~"Ich suche nach einem Journal. Du hast es nicht zufällig gesehen, oder?"~ */ GOTO 4
  IF ~~ THEN REPLY #10819 /* ~"Was kannst du mir über diesen Ort erzählen?"~ */ GOTO 5
  IF ~  !Global("Ignus_Free","GLOBAL",1)
~ THEN REPLY #10820 /* ~"Wer brennt denn da vorne beim Eingang?"~ */ JOURNAL #68053 /* ~Drusilla, die am Eingang der Bar 'Zur Schwelenden Leiche' steht, hat mir von dem Mann erzählt, der dort über dem Rost brennt. Er heißt Ignus und war angeblich einer der besten Magier, die der Stock je hervorgebracht hat, bis seine Rivalen einen Kanal zur Feuerebene durch ihn hindurch geöffnet haben. Jetzt hält er sich durch reine Konzentration am Leben - ein wahrhaft mächtiger Mann...~ */ GOTO 6
  IF ~  Global("Pharod","GLOBAL",0)
~ THEN REPLY #10821 /* ~"Ich suche einen Sammler namens Pharod. Du hast ihn nicht zufällig gesehen oder von ihm gehört?"~ */ GOTO 19
  IF ~~ THEN REPLY #10822 /* ~"Nichts. Schönen Tag noch."~ */ EXIT
END

IF WEIGHT #3 /* Triggers after states #: 15 even though they appear after this state */
~  NumTimesTalkedToGT(0)
~ THEN BEGIN 2 // from:
  SAY #10823 /* ~Dieses Mal wirkt Drusilla etwas lebhafter - jedenfalls bemerkst du nichts von der Verzweiflung, die du bei eurer ersten Unterhaltung gespürt hast. "Da bist du ja wieder, Reisender."~ */
  IF ~~ THEN REPLY #10824 /* ~"Hallo, Drusilla. Ich hätte gern, daß du mir ein paar Fragen beantwortest."~ */ GOTO 7
  IF ~~ THEN REPLY #10825 /* ~"Hallo, Drusilla, und leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 1.0 7.0
  SAY #10826 /* ~"Ich? Ich bin Drusilla. Und du mußt völlig planlos sein. Frag mich nicht, wie ich drauf komme. Man sieht's dir einfach an."~ */
  IF ~~ THEN REPLY #10827 /* ~"Planlos? Das denk ich nicht."~ */ GOTO 8
  IF ~~ THEN REPLY #10828 /* ~"Soso, das sieht man also. Beantworte mir dann mal ein paar Fragen."~ */ GOTO 7
  IF ~~ THEN REPLY #10829 /* ~"Ich will's gar nicht hören. Vor allen Dingen nicht von dir. Schönen Tag noch."~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 1.1 7.1
  SAY #10830 /* ~"Ein Journal? Aber sicher. Ich hab' nichts Besseres zu tun, als den ganzen Tag nach irgendwelchen Journalen Ausschau zu halten, nur für den Fall, daß irgendwann ein Narbengesicht in meine Lieblingsbar kommt und danach fragt. Fragst du das jeden, der dir über den Weg läuft? Was für ein faszinierendes Leben."~ */
  IF ~~ THEN REPLY #10831 /* ~"Du hast wirklicht ein pfiffiges Mundwerk, was?"~ */ GOTO 9
  IF ~~ THEN REPLY #10832 /* ~"Beantworte mir einfach meine Fragen, dann haben wir das hinter uns."~ */ GOTO 7
  IF ~~ THEN REPLY #10833 /* ~"Jedenfalls faszinierender als deins, das wette ich."~ */ GOTO 10
END

IF ~~ THEN BEGIN 5 // from: 1.2 7.2
  SAY #10834 /* ~"Das ist die Schwelende Leiche, obwohl der Schwelende noch gar nicht tot ist. Er versucht, sich am Leben zu halten, bis jemand kommt, ihn zu retten. Hier treffen sich Fusler, die Freude am Leid anderer Leute haben. Oder Scheusale. Und es kommen Leute, die sich nichts aus schlechter Gesellschaft machen... Die meisten Dussel bleiben der Bar hingegen allein wegen ihres Namens fern."
~ */
  IF ~~ THEN REPLY #10835 /* ~"Wer ist er denn eigentlich?"~ */ JOURNAL #68053 /* ~Drusilla, die am Eingang der Bar 'Zur Schwelenden Leiche' steht, hat mir von dem Mann erzählt, der dort über dem Rost brennt. Er heißt Ignus und war angeblich einer der besten Magier, die der Stock je hervorgebracht hat, bis seine Rivalen einen Kanal zur Feuerebene durch ihn hindurch geöffnet haben. Jetzt hält er sich durch reine Konzentration am Leben - ein wahrhaft mächtiger Mann...~ */ GOTO 6
  IF ~~ THEN REPLY #10836 /* ~"Versteh schon. Beantworte mir noch ein paar Fragen."~ */ GOTO 7
  IF ~~ THEN REPLY #10837 /* ~"Guter Name dafür. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 6 // from: 1.3 5.0 7.4
  SAY #10838 /* ~Der Schatten der Verzweiflung, den du bereits zuvor an ihr bemerkt hast, huscht wieder über ihr Gesicht, bevor sie sich fängt. "Das ist Ignus, einer der größten Zauberer, die dieses Dreckloch je hervorgebracht hat. Sie haben ihn gefangen und durch ihn hindurch einen Kanal zur Feuerebene geöffnet. Jetzt ist er sozusagen eine Durchgangsstation dafür und hält sich durch pure Willenskraft am Leben. Wenn jemand seine Flammen löschen würde, könnte er wieder leben - aber soviel Wasser gibt es gar nicht."~ */
  IF ~  PartyHasItem("Decant")
~ THEN REPLY #10839 /* ~"Wie wär's mit dieser Karaffe? Es wird gesagt, sie sei bodenlos."~ */ DO ~SetGlobal("Drusilla","GLOBAL",1)
~ GOTO 16
  IF ~~ THEN REPLY #10840 /* ~"Irgendjemand sollte doch in der Lage sein, etwas zu finden. Nun gut. Kannst du mir vielleicht noch ein paar Fragen beantworten?"~ */ GOTO 7
  IF ~~ THEN REPLY #10841 /* ~"Und was hast du mit ihm zu tun?"~ */ GOTO 18
  IF ~  PartyHasItem("Decant2")
~ THEN REPLY #20699 /* ~"Was ist mit dieser Wasserkaraffe? Man sagt, sie würde nie leer werden."~ */ DO ~SetGlobal("Drusilla","GLOBAL",1)
~ GOTO 16
  IF ~~ THEN REPLY #10842 /* ~"Oh je. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 7 // from: 2.0 3.1 4.1 5.1 6.1 8.0 9.0 18.0 19.0
  SAY #10843 /* ~"Ja, Reisender? Was ist dein Begehr?"~ */
  IF ~~ THEN REPLY #10844 /* ~"Wer bist du?"~ */ GOTO 3
  IF ~  Global("Journal","GLOBAL",0)
~ THEN REPLY #10845 /* ~"Ich suche nach einem Journal. Du hast es nicht zufällig gesehen, oder?"~ */ GOTO 4
  IF ~~ THEN REPLY #10846 /* ~"Was kannst du mir über diesen Ort erzählen?"~ */ GOTO 5
  IF ~  Global("Pharod","GLOBAL",0)
~ THEN REPLY #10847 /* ~"Ich suche einen Sammler namens Pharod. Du hast ihn nicht zufällig gesehen oder von ihm gehört?"~ */ GOTO 19
  IF ~  !Global("Ignus_Free","GLOBAL",1)
~ THEN REPLY #10848 /* ~"Wer brennt denn da vorne beim Eingang?"~ */ JOURNAL #68053 /* ~Drusilla, die am Eingang der Bar 'Zur Schwelenden Leiche' steht, hat mir von dem Mann erzählt, der dort über dem Rost brennt. Er heißt Ignus und war angeblich einer der besten Magier, die der Stock je hervorgebracht hat, bis seine Rivalen einen Kanal zur Feuerebene durch ihn hindurch geöffnet haben. Jetzt hält er sich durch reine Konzentration am Leben - ein wahrhaft mächtiger Mann...~ */ GOTO 6
  IF ~~ THEN REPLY #10849 /* ~"Nichts. Schönen Tag noch."~ */ EXIT
END

IF ~~ THEN BEGIN 8 // from: 3.0
  SAY #10850 /* ~Sie grinst dich an. Ihre blauen Flecken scheinen beinahe zu verblassen. "Wie du meinst, Schätzchen."~ */
  IF ~~ THEN REPLY #10851 /* ~"Genau. Beantworte mir ein paar Fragen."~ */ GOTO 7
  IF ~~ THEN REPLY #10852 /* ~"Wie auch immer. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 9 // from: 4.0
  SAY #10853 /* ~"Ja, ein pfiffiges Mundwerk und ein pfiffiges Köpfchen. Ich bin nicht so blöd, wie du vielleicht denkst, Schlucker. Ich hab' Köpfchen."~ */
  IF ~~ THEN REPLY #10854 /* ~"Wenn du wirklich so schlau bist, solltest du wohl meine Fragen beantworten können."~ */ GOTO 7
  IF ~~ THEN REPLY #10855 /* ~"Zu schade, daß es nicht IN dir ist. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 10 // from: 4.2
  SAY #10856 /* ~"Ach ja? Weißt du überhaupt, was es bedeutet, in eine lebende Flamme verliebt zu sein? Hattest du je das Verlangen, in den Armen eines geliebten Menschen zu liegen und dich im Feuer der Leidenschaft zu verlieren? Dein Blick verrät, daß du dies gern getan hättest, aber kein Glück hattest. Komm du mir nicht mit Faszination. Narben sind nicht faszinierend. Kämpfe sind nicht faszinierend. Harte Kerle sind nicht faszinierend. DU bist nicht faszinierend."~ */
  IF ~~ THEN REPLY #10857 /* ~"Seit wann habe ich es denn nötig, mich vor dir zu rechtfertigen?"~ */ GOTO 11
  IF ~  NearbyDialog("DMorte")
~ THEN REPLY #10858 /* ~"Wo soll ich anfangen? Ich bin unsterblich, ich verliere meine Erinnerung jedesmal, wenn ich sterbe, ich habe einen schwebenden Totenschädel als Kumpan, ich mache Erfahrungen, bei denen sich die meisten Sterblichen ihre Seele durch die Augen ausheulen würden, und du willst behaupten, daß es faszinierend ist, sich in ein Feuer zu verlieben? Das ist nicht faszinierend - einfach nur verrückt."~ */ DO ~SetGlobal("Drusilla","GLOBAL",1)
~ GOTO 12
  IF ~  !NearbyDialog("DMorte")
~ THEN REPLY #10859 /* ~"Wo soll ich anfangen? Ich bin unsterblich, ich verliere meine Erinnerung jedesmal, wenn ich sterbe, ich mache Erfahrungen, bei denen die meisten Sterblichen ihre Seele durch die Augen ausheulen würden, und du willst behaupten, daß es faszinierend ist, sich in ein Feuer zu verlieben? Das ist nicht faszinierend - einfach nur verrückt."~ */ DO ~SetGlobal("Drusilla","GLOBAL",1)
~ GOTO 12
  IF ~~ THEN REPLY #10860 /* ~"Unsere Unterhaltung ist hiermit beendet."~ */ EXIT
END

IF ~~ THEN BEGIN 11 // from: 10.0
  SAY #10861 /* ~"Nein, das wäre natürlich zuviel verlangt. Ich brauch nicht mit dir zu reden." Sie kehrt dir den Rücken.~ */
  IF ~~ THEN REPLY #10862 /* ~"Du hast mich nicht zum letzten Mal gesehen."~ */ EXIT
  IF ~~ THEN REPLY #10863 /* ~"Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 12 // from: 10.1 10.2
  SAY #10864 /* ~Plötzlich zuckt sie zusammen und sieht dich genauer an. Ihre Stimme wird ganz aufgeregt. "Bist du es? Ja, du bist es!"~ */
  IF ~~ THEN REPLY #10865 /* ~"Was meinst du?"~ */ GOTO 13
  IF ~~ THEN REPLY #10866 /* ~"Nein, bin ich nicht. Beantworte mir noch ein paar Fragen."~ */ GOTO 13
  IF ~~ THEN REPLY #10867 /* ~"Nein, tu ich nicht. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 13 // from: 12.0 12.1
  SAY #10868 /* ~Er sagte Ihr würdet kommen! Er sagte Ihr seid der Eine, der ihn befreien würde! Er sprach zu mir im Traum und erzählte mir, daß Ihr sein Gleichgewicht mit einem Ozean von Wasser wieder herstellen würdet, damit er über die Ebenen brennen könne. Befreit Ihn! Ich bitte Euch, rettet Ihn!~ */
  IF ~~ THEN REPLY #10869 /* ~"Und was hast du mit ihm zu tun?"~ */ GOTO 14
  IF ~~ THEN REPLY #10870 /* ~"Ich werd mal drüber nachdenken. Beantworte mir erst noch ein paar Fragen."~ */ GOTO 15
  IF ~~ THEN REPLY #10871 /* ~"Ich werd mal drüber nachdenken. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 14 // from: 13.0 15.1
  SAY #10872 /* ~"Ich war Ignus' Geliebte. Wir haben beide die Flammen geliebt, er jedoch mehr als ich. Und jetzt, wo er sich im Herzen des Feuers windet, sehe ich Ignus' Schönheit, und ich, Drusilla liebe beide gleichermaßen."~ */
  IF ~~ THEN REPLY #10873 /* ~"Du bist wohl komplett übergeschnappt, was? Aber gut, beantworte mir doch ein paar Fragen."~ */ GOTO 15
  IF ~~ THEN REPLY #10874 /* ~"Du bist wohl völlig abgedreht. Leb wohl."~ */ EXIT
END

IF WEIGHT #1 ~  Global("Drusilla","GLOBAL",1)
~ THEN BEGIN 15 // from: 13.1 14.0 17.0 20.0 21.0 22.0 23.0
  SAY #10875 /* ~"Wann wirst du Ignus befreien?"~ */
  IF ~  PartyHasItem("Decant")
~ THEN REPLY #10876 /* ~"Sobald ich dies hier zu ihm rüber kriege. Man sagt, diese Karaffe enthält eine endlose Menge Wasser."~ */ GOTO 16
  IF ~~ THEN REPLY #10877 /* ~"Und wer bist du genau?"~ */ GOTO 14
  IF ~  Global("Journal","GLOBAL",0)
~ THEN REPLY #10878 /* ~"Ich suche nach einem Journal. Du hast es nicht zufällig gesehen, oder?"~ */ GOTO 21
  IF ~  Global("Pharod","GLOBAL",0)
~ THEN REPLY #10879 /* ~"Ich suche einen Sammler namens Pharod. Du hast ihn nicht zufällig gesehen oder von ihm gehört?"~ */ GOTO 20
  IF ~~ THEN REPLY #10880 /* ~"Was kannst du mir über diese Taverne erzählen?"~ */ GOTO 17
  IF ~  PartyHasItem("Decant2")
~ THEN REPLY #20700 /* ~"Sobald ich ihm das hier gebracht habe. Man sagt, die Karaffe würde unendlich viel Wasser enthalten."~ */ GOTO 16
  IF ~~ THEN REPLY #20710 /* ~"Wenn ich Zeit dazu habe. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 16 // from: 6.0 6.3 15.0 15.5
  SAY #10882 /* ~"Ja! Dann benutze sie! Damit kannst du ihn bestimmt erlösen! Oh, mein Ignus, ich warte auf dich!" Plötzlich überkommt sie ein schrecklicher Gedanke. "Kennst du das Zauberwort?"~ */
  IF ~  PartyHasItem("Decant")
~ THEN REPLY #10883 /* ~"Noch nicht."~ */ GOTO 23
  IF ~  PartyHasItem("Decant2")
~ THEN REPLY #10884 /* ~"Ja."~ */ GOTO 22
END

IF ~~ THEN BEGIN 17 // from: 15.4
  SAY #10885 /* ~"Es ist der Kerker, in dem sie meinen Liebsten seit Jahrhunderten gefangenhalten. Seit Ewigkeiten komme ich hierher, um ihm in seiner brennenden Qual beizustehen und mit ihm zu reden. Dieser Ort hat mich dazu veranlasst, über meine Jahre und meine Verhältnisse hinaus zu leben. Ich hasse diesen Ort."~ */
  IF ~~ THEN REPLY #10886 /* ~"Also schön. Beantworte mir noch ein paar andere Fragen."~ */ GOTO 15
  IF ~~ THEN REPLY #10887 /* ~"Ich verstehe. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 18 // from: 6.2
  SAY #10888 /* ~In ihrer Stimme schwingt tiefes Leid mit. "Ich war Ignus' Geliebte, und er war mein Liebster. Er liebte die Flammen mehr als mich, und jetzt ist er das Feuer selbst, und weil ich ihn liebe, liebe ich die Flammen... doch das spielt jetzt keine Rolle mehr. Ich warte darauf, daß er sich selbst löscht. Einstweilen verkaufe ich das Wenige, das ich habe, um bei ihm sein zu können."
~ */
  IF ~~ THEN REPLY #10889 /* ~"Also schön. Beantworte mir noch ein paar andere Fragen."~ */ GOTO 7
  IF ~~ THEN REPLY #10890 /* ~"Ich verstehe. Leb wohl."
~ */ EXIT
END

IF ~~ THEN BEGIN 19 // from: 1.4 7.3
  SAY #10891 /* ~"Pharod?" kichert sie. "Der König der Sammler? Wahrscheinlich findest du ihn und seine stinkenden Kumpanen in den Müll-Labyrinthen am anderen Ende des Stocks. Bin ja gespannt, ob du aus dem was herauskriegst - er ist ein gerissener Bursche, ein wahrer Teufel."~ */
  IF ~~ THEN REPLY #10892 /* ~"Also schön. Beantworte mir noch ein paar andere Fragen."~ */ GOTO 7
  IF ~~ THEN REPLY #10893 /* ~"Ich verstehe. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 20 // from: 15.3
  SAY #10894 /* ~"Pharod?" fragt sie spöttisch. "Der König der Sammler? Wahrscheinlich findest du ihn und seine stinkenden Kumpanen in den Müll-Labyrinthen am anderen Ende des Stocks. Er ist ein gerissener Teufel, aber er ist längst nicht so gerissen wie mein Ignus."
~ */
  IF ~~ THEN REPLY #10895 /* ~"Also schön. Beantworte mir noch ein paar andere Fragen."~ */ GOTO 15
  IF ~~ THEN REPLY #10896 /* ~"Ich verstehe. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 21 // from: 15.2
  SAY #10897 /* ~"Ich erinnere mich nicht, ein Journal gesehen zu haben. Keine Ahnung. Frag doch einen der Sammler!"~ */
  IF ~~ THEN REPLY #10898 /* ~"Das ist keine Hilfe. Gib mir ein paar Antworten, Drusilla."~ */ GOTO 15
  IF ~~ THEN REPLY #10899 /* ~"Ich verstehe. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 22 // from: 16.1
  SAY #20711 /* ~Ihre Augen hellen sich noch weiter auf, wenn so was möglich ist. "Dann mach davon Gebrauch! Mach davon Gebrauch! An ihm!"~ */
  IF ~~ THEN REPLY #20712 /* ~"In einer Minute. Ich brauche noch ein paar Antworten von dir."~ */ GOTO 15
  IF ~~ THEN REPLY #20713 /* ~"Sofort, sofort."~ */ EXIT
END

IF ~~ THEN BEGIN 23 // from: 16.0
  SAY #20714 /* ~Dann gehe und finde ihn, ich flehe dich an! Sie zerrt an deinem Arm. In ihren Augen leuchtet der wilde Schimmer des Wahnsinns auf.~ */
  IF ~~ THEN REPLY #20715 /* ~"Werd ich schon. Vorher brauch ich noch ein paar Antworten..."~ */ GOTO 15
  IF ~~ THEN REPLY #20716 /* ~"Mach ich. Leb wohl."~ */ EXIT
END
