// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DSHILAND.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\de_DE\dialog.tlk
// dialogF  : (none)

BEGIN ~DSHILAND~
//////////////////////////////////////////////////
// WARNING: this file contains non-trivial WEIGHTs
//////////////////////////////////////////////////

IF WEIGHT #5 /* Triggers after states #: 1 2 3 4 16 even though they appear after this state */
~  NumTimesTalkedTo(0)
~ THEN BEGIN 0 // from:
  SAY #45742 /* ~"Verdammt! Jetzt hatt ich's fast. Weißt du nicht, daß es gefährlich ist, einen Zauberwirker bei der Arbeit zu stören? Du kannst von Glück reden, daß ich nur geübt habe. Was willst du?"~ */
  IF ~  Global("FedEx","Global",3)
PartyHasItem("DBox")
~ THEN REPLY #45743 /* ~"Ich würde gern mehr über dieses Kästchen erfahren..."~ */ GOTO 5
  IF ~~ THEN REPLY #45744 /* ~"Entschuldigung für die Störung. Leb wohl."~ */ EXIT
END

IF WEIGHT #4 /* Triggers after states #: 2 3 4 16 even though they appear after this state */
~  NumTimesTalkedToGT(0)
~ THEN BEGIN 1 // from:
  SAY #45745 /* ~"Schon wieder so ein Störenfried! Kann man denn nicht mal mehr zu Hause eine Weile allein mit sich sein? Bitte geh, bevor ich die Wache rufe... Oder ich probier mal diesen Zauberspruch aus, an dem ich gerade arbeite..."~ */
  IF ~  Global("FedEx","Global",3)
PartyHasItem("DBox")
~ THEN REPLY #45748 /* ~"Ich würde gern mehr über dieses Kästchen erfahren..."~ */ GOTO 5
  IF ~~ THEN REPLY #45749 /* ~"Entschuldigung für die Störung. Leb wohl."~ */ EXIT
END

IF WEIGHT #3 /* Triggers after states #: 3 4 16 even though they appear after this state */
~  GlobalGT("FedEx","Global",3)
~ THEN BEGIN 2 // from:
  SAY #45750 /* ~"Du hast meine Zeit schon lang genug in Anspruch genommen. Bitte geh jetzt." ~ */
  IF ~~ THEN REPLY #45751 /* ~Geh weg.~ */ EXIT
END

IF WEIGHT #2 /* Triggers after states #: 4 16 even though they appear after this state */
~  GlobalGT("Demonbox","Global",2)
~ THEN BEGIN 3 // from:
  SAY #45752 /* ~"Im Stock geht das Gerücht um, du hättest das Scheusal getötet, das in Moridors Kästchen eingesperrt war. Du hast es nicht etwa geschafft , ein paar Stücke einzusammeln und aufzuheben?"~ */
  IF ~~ THEN REPLY #45753 /* ~"Was würdest du denn damit anfangen wollen?"~ */ GOTO 15
  IF ~~ THEN REPLY #45754 /* ~"Äh... nein." ~ */ GOTO 15
END

IF WEIGHT #1 /* Triggers after states #: 16 even though they appear after this state */
~  GlobalGT("FedEx","Global",9)
~ THEN BEGIN 4 // from:
  SAY #45755 /* ~"Es geht das Gerücht um, du hättest es geschafft, Moridors Kästchen zu zerstören. Dann darf man dir wohl gratulieren. Aber es wurmt mich immer noch, daß ich nicht alle Zaubersprüche entziffern konnte, mit dem dieses Scheusal in Schach gehalten wurde."~ */
  IF ~~ THEN REPLY #45756 /* ~"Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 0.0 1.0
  SAY #45757 /* ~Du streckst Shilandra Moridors Kästchen entgegen. "Ah, ja! Ich erinnere mich sehr gut an dieses Kästchen. Ich habe sie vor einiger Zeit gekauft. Was möchtest wissen?"~ */
  IF ~  Global("Q1","Global",0)
~ THEN REPLY #45758 /* ~"Woher hattest du es?"~ */ DO ~SetGlobal("Q1","Global",1)
~ GOTO 7
  IF ~  Global("Q2","Global",0)
~ THEN REPLY #45759 /* ~"Du scheinst dich mit Magie auszukennen. Kannst du mir sagen, welche Zauber in dieses Kästchen eingearbeitet sind?"~ */ DO ~SetGlobal("Q2","Global",1)
~ GOTO 8
  IF ~  Global("Q4","Global",0)
~ THEN REPLY #45760 /* ~"Weißt du, was es mit diesem Kästchen auf sich hat?"~ */ DO ~SetGlobal("Q4","Global",1)
~ GOTO 13
END

IF ~~ THEN BEGIN 6 // from: 7.1 9.0 10.0 11.1 12.0 13.0
  SAY #45761 /* ~"Was möchtest du sonst noch wissen?"~ */
  IF ~  Global("Q1","Global",0)
~ THEN REPLY #45762 /* ~"Woher hattest du es?"~ */ DO ~SetGlobal("Q1","Global",1)
~ GOTO 7
  IF ~  Global("Q2","Global",0)
~ THEN REPLY #45763 /* ~"Du scheinst dich mit Magie auszukennen. Kannst du mir sagen, welche Zauber in dieses Kästchen eingearbeitet sind?"~ */ DO ~SetGlobal("Q2","Global",1)
~ GOTO 8
  IF ~  Global("Q3","Global",0)
Global("Q2","Global",1)
~ THEN REPLY #45764 /* ~"Kannst du die Zauber, die auf diesem Kästchen liegen, sicher bannen?"~ */ DO ~SetGlobal("Q3","Global",1)
~ GOTO 10
  IF ~  Global("Q4","Global",0)
~ THEN REPLY #45765 /* ~"Weißt du, was es mit diesem Kästchen auf sich hat?"~ */ DO ~SetGlobal("Q4","Global",1)
~ GOTO 13
  IF ~  Global("Q1","Global",1)
Global("Q2","Global",1)
Global("Q3","Global",1)
Global("Q4","Global",1)
~ THEN REPLY #45766 /* ~"Gibt es eine Möglichkeit, sich Moridors Kästchen zu entledigen, ohne jemandem zu schaden?"~ */ GOTO 14
END

IF ~~ THEN BEGIN 7 // from: 5.0 6.0
  SAY #45767 /* ~"Hmmm.... Laß mich überlegen. Ich weiß nicht mehr, von wem ich es habe. Ich erinnere mich nur noch, daß ich auf dem Marktplatz nach ein paar Zauberkomponenten suchte, als jemand kam und mir das Kästchen anbot. Ich merkte bald, daß ein Fluch auf ihm lag, aber ich war so fasziniert von diesen vielen Zauberformeln, daß ich es trotzdem kaufte."~ */
  IF ~~ THEN REPLY #45768 /* ~"Wenn du so fasziniert von diesem Kästchen warst, weshalb hast du's dann weggegeben?"~ */ GOTO 11
  IF ~~ THEN REPLY #45769 /* ~"Ich habe noch mehr Fragen...."~ */ GOTO 6
END

IF ~~ THEN BEGIN 8 // from: 5.1 6.1
  SAY #45770 /* ~"Ich habe das Kästchen jahrelang untersucht und versucht, hinter seine Geheimnisse zu kommen. Unzählige Zauberformeln sind darin eingearbeitet. Zu meinem Erstaunen fand ich heraus, daß alle dazu geeignet waren, Scheusale einsperren."~ */
  IF ~~ THEN REPLY #45771 /* ~"Scheusale? In diesem Kästchen sollen Scheusale eingesperrt sein?"~ */ GOTO 9
END

IF ~~ THEN BEGIN 9 // from: 8.0
  SAY #45772 /* ~"Nein! Nicht mehrere Scheusale. Ein Scheusal. Und da diese Zaubersprüche so unglaublich ausgeklügelt waren, mußte es sich um ein unglaublich mächtiges Scheusal handeln."~ */
  IF ~~ THEN REPLY #45773 /* ~"Ich habe noch mehr Fragen...."~ */ GOTO 6
END

IF ~~ THEN BEGIN 10 // from: 6.2
  SAY #45774 /* ~"Du willst das Kästchen wohl loswerden? Aber hier greift der schlimmste Zauber von allen: Er zieht praktisch Energie aus dem gegenwärtigen Besitzer und benutzt sie, um den Zauber zu bekräftigen, mit dem das Scheusal gefangen wird. Aber das ist nicht alles. Das Scheusal wittert diese Energie und würde den Spender sofort abschlachten, wenn es das Kästchen je verlassen könnte. Als Besitzer dieses Kästchens kannst du gar nicht gewinnen. Entweder, es saugt deine ganze Energie leer, oder das Scheusal darin bringt dich um."~ */
  IF ~~ THEN REPLY #45775 /* ~"Verstehe. Wenn du nichts dagegen hast, würde ich dir gern noch ein paar Fragen stellen..."~ */ GOTO 6
END

IF ~~ THEN BEGIN 11 // from: 7.0
  SAY #45776 /* ~"Damals war ich noch jung und keck. In meinem unstillbaren Wissensdrang habe ich versehentlich einen Zauber entkräftigt. Schau dir das Kästchen genau an: Es war wie neu, als ich es hatte. Der langsame Zerfall ist ein Hinweis darauf, daß der Zauber nachläßt. Ich wußte, daß ich das Kästchen auf keinen Fall länger behalten durfte. Also habe ich einen Wettkampf veranstaltet, um es loszuwerden."~ */
  IF ~~ THEN REPLY #45777 /* ~"Einen Wettkampf?"~ */ GOTO 12
  IF ~~ THEN REPLY #45778 /* ~"Ich habe noch mehr Fragen...."~ */ GOTO 6
END

IF ~~ THEN BEGIN 12 // from: 11.0
  SAY #45779 /* ~"Es war der beste Weg, es mir vom Hals zu schaffen. Ich hab einfach alle Knochenbrecher im Stock zu einem Kampf eingeladen, um zu sehen, wer der beste ist. Knochenbrecher sind ja bekannt dafür, daß sie große Muskeln, aber nicht viel im Oberstübchen haben, wenn du verstehst, was ich meine. Tatsächlich zog sie der Wettkampf, für den ich eine Geldsumme und das Kästchen als Preis ausgesetzt habe, wie ein Magnet an. Ich glaube, irgendein Knochenbrecher namens Brasken hat ihn gewonnen."~ */
  IF ~~ THEN REPLY #45780 /* ~"Ich habe noch mehr Fragen...."~ */ GOTO 6
END

IF ~~ THEN BEGIN 13 // from: 5.2 6.3
  SAY #45781 /* ~"Bisher habe ich nur herausgefunden, wie es heißt, und zwar Moridors Kästchen. Aber wer dieser Moridor ist, oder woher das Kästchen kommt, weiß ich nicht."~ */
  IF ~~ THEN REPLY #45782 /* ~"Ich habe noch mehr Fragen...."~ */ GOTO 6
END

IF ~~ THEN BEGIN 14 // from: 6.4
  SAY #45783 /* ~"Ich bin nicht stark genug, um solch eine Kreatur zu bekämpfen oder zu bannen. Es ist Ewigkeiten her, daß ich dort war, aber in der Mitte der Gasse der gefährlichen Ecken stand eine Kathedrale. Ein Priester, oder jemand, der seine Macht aus einer höheren Quelle erhält, kann dir vielleicht helfen."~ */
  IF ~~ THEN REPLY #45784 /* ~"Du warst mir eine große Hilfe. Danke."~ */ DO ~SetGlobal("FedEx","Global",4)
SetGlobal("Delta","Global",2)
SetGlobal("Epsilon","Global",1)
AddexperienceParty(250)
~ JOURNAL #60388 /* ~Shilandra hat mir viel über Moridors Kästchen erzählt... und eine Menge davon wollte ich gar nicht hören. Es scheint, daß dieses Kästchen ein Scheusal enthält, das hoch in den Rängen der Scheusale steht. Noch schlimmer, die Zauber, die dieses Scheusal festhalten, werden mit der Zeit schwächer. Ich fürchte, daß es bald entkommen kann, um Rache für seine Gefangenschaft zu suchen. Shilandra hat vorgeschlagen, daß ich die Kathedrale aufsuche, die sich mitten in der Gasse der Gefährlichen Ecken befindet. Es besteht die Hoffnung, daß eine höhere Machtquelle intervenieren und das Scheusal verbannen wird, bevor es entkommen kann.~ */ EXIT
END

IF ~~ THEN BEGIN 15 // from: 3.0 3.1
  SAY #45785 /* ~"Ich glaube, ein Zauberlaie kann das gar nicht verstehen. Es gibt Dinge, die sehr kostbar, weil sie als Zauberkomponenten benutzt werden können. Aber jetzt entschuldige mich: Ich muß jetzt ein wenig üben."~ */
  IF ~~ THEN REPLY #45786 /* ~"Leb wohl."~ */ DO ~SetGlobal("Shil","Global",1)
~ EXIT
END

IF WEIGHT #0 ~  Global("Shil","Global",1)
~ THEN BEGIN 16 // from:
  SAY #45787 /* ~"Ich habe dir nichts mehr zu sagen."~ */
  IF ~~ THEN REPLY #45788 /* ~"Leb wohl."~ */ EXIT
END
