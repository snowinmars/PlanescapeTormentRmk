// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DMENGINE.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\de_DE\dialog.tlk
// dialogF  : (none)

BEGIN ~DMENGINE~

IF ~  NumTimesTalkedTo(0)
~ THEN BEGIN 0 // from:
  SAY #48686 /* ~Du siehst einen Würfel mit zwei Armen, zwei Beinen und zwei kleinen Flügeln, die aus den Seiten sprießen. Auf der Vorderseite des Würfels ist ein lebhaftes Gesicht. Als du dich näherst, richtet das Wesen den Blick auf dich.~ */
  IF ~~ THEN REPLY #48687 /* ~"Sei gegrüßt."~ */ GOTO 1
  IF ~~ THEN REPLY #48688 /* ~Beachte das Wesen nicht.~ */ DO ~SetNumTimesTalkedTo(0)
~ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #48689 /* ~"Seid gegrüßt." Das Wesen spricht mit einer monotonen, geschlechtslosen Stimme.~ */
  IF ~~ THEN REPLY #48690 /* ~"Ich habe ein paar Fragen..."~ */ GOTO 2
  IF ~~ THEN REPLY #48691 /* ~"Vergiß es. Leb wohl."~ */ DO ~SetNumTimesTalkedTo(0)
~ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.0 3.1 4.1 5.1 6.2 7.1 8.1 9.1 10.2 11.3 12.2 13.1 14.1 15.1 16.1 18.0 19.1 21.0 26.0 27.0 28.2 29.1 30.2 31.1 34.0
  SAY #48692 /* ~Das Wesen sieht dich weiter mit leerem Blick an. "Stellt Eure Frage."~ */
  IF ~~ THEN REPLY #48693 /* ~"Wer bist du?"~ */ GOTO 3
  IF ~~ THEN REPLY #48694 /* ~"Was bist du?"~ */ GOTO 6
  IF ~  !Global("Rubikon_Direct","GLOBAL",3)
~ THEN REPLY #48695 /* ~"Was ist das für ein Ort?"~ */ GOTO 9
  IF ~  Global("Rubikon_Direct","GLOBAL",3)
~ THEN REPLY #48696 /* ~"Wozu genau ist Rubikon in der Lage?~ */ GOTO 19
  IF ~  Global("Rubikon_Direct","GLOBAL",3)
~ THEN REPLY #48697 /* ~"Ich möchte ein Verlies erschaffen und es dann erkunden."~ */ GOTO 22
  IF ~  Global("Portal_Lens","GLOBAL",1)
~ THEN REPLY #48698 /* ~"Ich möchte die Portallinse verwenden, um an einen anderen Ort zu gelangen."~ */ GOTO 25
  IF ~  !Global("Rubikon_Direct","GLOBAL",3)
~ THEN REPLY #54222 /* ~"Wie komme ich hier raus?"~ */ GOTO 31
  IF ~  Global("Rubikon_Direct","GLOBAL",3)
~ THEN REPLY #66393 /* ~"Gibt es irgendwelche Gefahren im Zusammenhang mit Rubikon, von denen ich wissen sollte?"~ */ GOTO 32
  IF ~~ THEN REPLY #68063 /* ~"Ich muß jetzt gehen, leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 2.0
  SAY #48700 /* ~"Wir sind Modron."~ */
  IF ~~ THEN REPLY #48701 /* ~"Heißt das, dein Name ist Modron?"~ */ GOTO 4
  IF ~~ THEN REPLY #48702 /* ~"Ich habe ein paar Fragen..."~ */ GOTO 2
  IF ~~ THEN REPLY #48703 /* ~"Ich muß jetzt los. Auf Wiedersehen."~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 3.0
  SAY #48704 /* ~"Wir sind Modron. Wir haben keinen Namen. Wir sind Modron. Alles, was Ihr hier seht, ist Teil des Modron. Wir sind eins."~ */
  IF ~~ THEN REPLY #48705 /* ~"Wenn ihr keine Namen habt, wie unterscheidet ihr dann einen Modron von einem anderen?"~ */ GOTO 5
  IF ~~ THEN REPLY #48706 /* ~"Ich habe ein paar Fragen..."~ */ GOTO 2
  IF ~~ THEN REPLY #48707 /* ~"Ich muß jetzt los. Auf Wiedersehen."~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 4.0
  SAY #48708 /* ~Der Modron hält kurz inne, um deine Frage zu bedenken. "Wir wissen es. Wir sind Modron. Wir sind Teil eines Ganzen. So wie Ihr wißt, daß die Hand ein Teil des Arms ist, wissen wir, daß alles Teil eines Ganzen ist."~ */
  IF ~~ THEN REPLY #48709 /* ~"Wie steht's mit dir, als Individuum..."~ */ GOTO 27
  IF ~~ THEN REPLY #48710 /* ~"Das ist interessant. Ich habe ein paar Fragen..."~ */ GOTO 2
  IF ~~ THEN REPLY #48711 /* ~"Ich muß jetzt los. Auf Wiedersehen."~ */ EXIT
END

IF ~~ THEN BEGIN 6 // from: 2.1
  SAY #48712 /* ~"Wir sind Modron, wir sind Quadron."~ */
  IF ~~ THEN REPLY #48713 /* ~"Was ist ein Modron?"~ */ GOTO 7
  IF ~~ THEN REPLY #48714 /* ~"Was ist ein Quadron?"~ */ GOTO 8
  IF ~~ THEN REPLY #48715 /* ~"Ich habe ein paar Fragen..."~ */ GOTO 2
  IF ~~ THEN REPLY #48716 /* ~"Ich muß jetzt los. Auf Wiedersehen."~ */ EXIT
END

IF ~~ THEN BEGIN 7 // from: 6.0 8.0
  SAY #48717 /* ~"Wir sind Modron. Dies ist die einzige Identität unserer Rasse."~ */
  IF ~~ THEN REPLY #48718 /* ~"Und was ist dann ein Quadron?"~ */ GOTO 8
  IF ~~ THEN REPLY #48719 /* ~"Ich habe ein paar Fragen..."~ */ GOTO 2
  IF ~~ THEN REPLY #48720 /* ~"Ich muß jetzt los. Auf Wiedersehen."~ */ EXIT
END

IF ~~ THEN BEGIN 8 // from: 6.1 7.0
  SAY #48721 /* ~"Innerhalb unserer Rasse werden wir als Typ Quadron klassifiziert."~ */
  IF ~~ THEN REPLY #48722 /* ~"Was ist dann ein Modron?"~ */ GOTO 7
  IF ~~ THEN REPLY #48723 /* ~"Ich habe ein paar Fragen..."~ */ GOTO 2
  IF ~~ THEN REPLY #48724 /* ~"Ich muß jetzt los. Auf Wiedersehen."~ */ EXIT
END

IF ~~ THEN BEGIN 9 // from: 2.2 31.0
  SAY #48725 /* ~"Dies ist das Rubikon-Verlies-Konstrukt."~ */
  IF ~~ THEN REPLY #48726 /* ~"Was soll das denn sein?~ */ GOTO 10
  IF ~~ THEN REPLY #48727 /* ~"Ich habe ein paar Fragen..."~ */ GOTO 2
  IF ~~ THEN REPLY #48728 /* ~"Ich muß jetzt los. Auf Wiedersehen."~ */ EXIT
END

IF ~~ THEN BEGIN 10 // from: 9.0
  SAY #48729 /* ~Als er dir antwortet, gibt der Modron einen weichen, summenden Laut von sich. "Rubikon: Ziel des Projekts ist zum einen die Ermittlung der sozialen und asozialen Dynamik, von der die für gewöhnlich als Verlies aufgefaßte Umgebung geprägt ist, und zum anderen der Versuch einer Erklärung der Anomalien, die in solchen Umgebungen verstärkt auftreten."~ */
  IF ~~ THEN REPLY #48730 /* ~"Wie willst du das anstellen?"~ */ GOTO 11
  IF ~~ THEN REPLY #48731 /* ~"Von welchen Anomalien sprichst du?"~ */ GOTO 12
  IF ~~ THEN REPLY #48732 /* ~"Ich habe ein paar Fragen..."~ */ GOTO 2
  IF ~~ THEN REPLY #48733 /* ~"Ich muß jetzt los. Auf Wiedersehen."~ */ EXIT
END

IF ~~ THEN BEGIN 11 // from: 10.0
  SAY #48734 /* ~"Rubikon ist in der Lage, eine Reihe von Räumen zu bilden, die so miteinander verbunden sind, daß sie ein Gebilde darstellen, das gemeinhin als *Verlies* bezeichnet wird. Jedes Verlies verfügt über einen von drei Schwierigkeitsgraden: leicht, normal oder schwer. Je nach gewähltem Schwierigkeitsgrad gibt es in den Verliesen unterschiedlich viele Monster, Fallen und Schätze. Nach seinem Bau kann das Verlies vollständig erkundet werden." Der Modron beginnt, ein leises Summen von sich zu geben.~ */
  IF ~~ THEN REPLY #48735 /* ~"Was ist das für ein summender Laut?"~ */ GOTO 30
  IF ~~ THEN REPLY #48736 /* ~"Hast du da gerade was von Anomalien erzählt?"~ */ GOTO 12
  IF ~~ THEN REPLY #48737 /* ~"Interessant. Ich würde gern eins dieser Verliese ausprobieren."~ */ GOTO 13
  IF ~~ THEN REPLY #48738 /* ~"Ich habe ein paar Fragen..."~ */ GOTO 2
  IF ~~ THEN REPLY #48739 /* ~"Ich muß jetzt los. Auf Wiedersehen."~ */ EXIT
END

IF ~~ THEN BEGIN 12 // from: 10.1 11.1 30.0
  SAY #48740 /* ~"Offene Fragen: Wodurch werden Leute von Verliesen angezogen? Warum versuchen Leute so oft, in sie hineinzugelangen, wo sie doch so gefahrvolle Orte sind? Warum gibt es Verliese überhaupt? Welche Dynamik geht von einem funktionstüchtigen Verlies aus? Wir verstehen es nicht..." Er hält inne. "Ich... versteh's nicht..."~ */
  IF ~~ THEN REPLY #48748 /* ~"Interessant. Ich würde gern eins dieser Verliese ausprobieren."~ */ GOTO 13
  IF ~~ THEN REPLY #48749 /* ~"Du hast gerade *ich* statt *wir* gesagt..."~ */ GOTO 28
  IF ~~ THEN REPLY #48750 /* ~"Ich habe ein paar Fragen..."~ */ GOTO 2
  IF ~~ THEN REPLY #48751 /* ~"Ich muß jetzt los. Auf Wiedersehen."~ */ EXIT
END

IF ~~ THEN BEGIN 13 // from: 11.2 12.0 28.0 29.0 30.1
  SAY #48752 /* ~Bevor er dir antwortet, macht der Modron eine bedeutsame Pause. "Bitte abgelehnt... Projekt gestoppt wegen... Unfall."~ */
  IF ~~ THEN REPLY #48753 /* ~"Was für ein Unfall?"~ */ GOTO 14
  IF ~~ THEN REPLY #48754 /* ~"Ich habe ein paar Fragen..."~ */ GOTO 2
  IF ~~ THEN REPLY #48755 /* ~"Ich muß jetzt los. Auf Wiedersehen."~ */ EXIT
END

IF ~~ THEN BEGIN 14 // from: 13.0
  SAY #48756 /* ~"Verlies-Konstrukt ist instabil geworden. Ursache unklar. Aktivierte Fail-safe-Mechanismen bringen Verlies zum Einsturz. Ursache unklar. Fehlfunktion der Portallinse führt zu Abbruch des Kontakts mit der Heimebene Mechanus. Ursache unklar. Neustart des Verlieses notwendig."~ */
  IF ~~ THEN REPLY #48757 /* ~"Warum führst du dann keinen Neustart durch?"~ */ GOTO 15
  IF ~~ THEN REPLY #48758 /* ~"Ich habe ein paar Fragen..."~ */ GOTO 2
  IF ~~ THEN REPLY #48759 /* ~"Ich muß jetzt los. Auf Wiedersehen."~ */ EXIT
END

IF ~~ THEN BEGIN 15 // from: 14.0
  SAY #48760 /* ~"Neustart kann nur durch Projektleiter eingeleitet werden. Projektleiter zerstört. Fehlfunktion der Torlinse hat Kontakt mit Mechanus abgebrochen. Erhalte keinen Ersatzprojektleiter aus Mechanus."~ */
  IF ~~ THEN REPLY #48761 /* ~"Hab ich das richtig verstanden? Du kannst keinen Neustart ohne einen Leiter durchführen, aber du kannst keinen Leiter ohne einen Neustart bekommen?"~ */ DO ~SetGlobal("Rubikon_Direct","GLOBAL",1)
~ GOTO 16
  IF ~~ THEN REPLY #48762 /* ~"Ich habe ein paar Fragen..."~ */ GOTO 2
  IF ~~ THEN REPLY #48763 /* ~"Ich muß jetzt los. Auf Wiedersehen."~ */ EXIT
END

IF ~~ THEN BEGIN 16 // from: 15.0
  SAY #48764 /* ~Der Modron wirkt besorgt und fängt an, unruhig zu werden. "Beurteilung korrekt. Projekt gestoppt."~ */
  IF ~~ THEN REPLY #48765 /* ~"Hör mal, ich bin ein Abenteurer und hab schon so manches Verlies kennengelernt. Ich könnte doch als Leiter einspringen."~ */ DO ~SetGlobal("Rubikon_Direct","GLOBAL",3)
~ GOTO 17
  IF ~~ THEN REPLY #48766 /* ~"Ich habe ein paar Fragen..."~ */ GOTO 2
  IF ~~ THEN REPLY #48767 /* ~"Ich muß jetzt los. Auf Wiedersehen."~ */ EXIT
END

IF ~~ THEN BEGIN 17 // from: 16.0
  SAY #48768 /* ~Der Raum wird plötzlich von einem Summen erfüllt, das genauso schnell wieder abklingt. "Hilfe erwünscht. Du bist jetzt Projektleiter. Erbitte Rat bei nächster Aufgabe."~ */
  IF ~~ THEN REPLY #48769 /* ~"Führe den Neustart des Verlieses durch."~ */ DO ~FixEngineRoom()
GenerateModronMaze()
~ GOTO 18
END

IF ~~ THEN BEGIN 18 // from: 17.0
  SAY #48770 /* ~"Neustart eingeleitet..." Der Raum wird von einem leisen trommelnden Geräusch erfüllt, das man mehr fühlen als hören kann. "Zerstöre bestehendes Verlies..." Das Geräusch nimmt an Lautstärke zu, bis der Boden zu vibrieren beginnt. "Initialisiere neues Verlies..." Das Geräusch nimmt an Lautstärke zu, bis du glaubst, daß dein Kopf kurz vor dem Platzen ist. Plötzlich wird es still im Raum. "Neustart abgeschlossen. Verlies-Konstrukt-Status: Leicht. Erwarte weitere Anweisungen, Leiter."~ */
  IF ~~ THEN REPLY #48771 /* ~"Ich habe ein paar Fragen..."~ */ GOTO 2
  IF ~~ THEN REPLY #48772 /* ~"Ich muß jetzt los. Auf Wiedersehen."~ */ EXIT
END

IF ~~ THEN BEGIN 19 // from: 2.3
  SAY #48773 /* ~"Rubikon ist in der Lage, eine Reihe von Räumen zu bilden, die so miteinander verbunden sind, daß sie ein Gebilde darstellen, das gemeinhin als *Verlies* bezeichnet wird. Jedes Verlies verfügt über einen von drei Schwierigkeitsgraden: leicht, normal oder schwer. Je nach gewähltem Schwierigkeitsgrad gibt es in den Verliesen unterschiedlich viele Monster, Fallen und Schätze. Nach seinem Bau kann das Verlies vollständig erkundet werden." Der Modron hält inne. "Weitere Fähigkeiten sind über die Portallinse verfügbar."~ */
  IF ~~ THEN REPLY #48774 /* ~"Was sind das für weitere Fähigkeiten?"~ */ DO ~SetGlobal("Portal_Lens","GLOBAL",1)
~ GOTO 20
  IF ~~ THEN REPLY #48775 /* ~"Ich habe ein paar Fragen..."~ */ GOTO 2
  IF ~~ THEN REPLY #48776 /* ~"Ich muß jetzt los. Auf Wiedersehen."~ */ EXIT
END

IF ~~ THEN BEGIN 20 // from: 19.0
  SAY #48777 /* ~"Rubikon kann ein Verbindungstor zu anderen Orten bilden, indem sich das Verlies zeitweilig mit bekannten existierenden Portalen verbindet. Dieser Effekt wird als *Portallinse* bezeichnet. Auf diese Weise kann das Portal vom Innern Rubikons aus durchschritten werden, ohne daß das Portal direkt aufgesucht werden muß."~ */
  IF ~~ THEN REPLY #48778 /* ~"Ich kann also, wenn ich ein Portal kenne, von hieraus zu dem Ort gelangen, zu dem es hinführt?"~ */ GOTO 21
END

IF ~~ THEN BEGIN 21 // from: 20.0
  SAY #48779 /* ~"So ist es, Leiter."~ */
  IF ~~ THEN REPLY #48780 /* ~"Ich habe ein paar Fragen..."~ */ GOTO 2
  IF ~~ THEN REPLY #48781 /* ~"Ich muß jetzt los. Auf Wiedersehen."~ */ EXIT
END

IF ~~ THEN BEGIN 22 // from: 2.4
  SAY #48782 /* ~"Wählt einen Schwierigkeitsgrad."~ */
  IF ~  Global("MazeDifficulty","GLOBAL",0)
~ THEN REPLY #48783 /* ~"Es hat schon den Schwierigkeitsgrad 'leicht'. Erschaffe also einfach ein neues Verlies."~ */ DO ~GenerateModronMaze()
~ GOTO 23
  IF ~  Global("MazeDifficulty","GLOBAL",0)
~ THEN REPLY #48784 /* ~"Es hat jetzt den Schwierigkeitsgrad 'leicht'. Wechsle in den Schwierigkeitsgrad 'normal'."~ */ DO ~SetGlobal("MazeDifficulty","GLOBAL",1)
GenerateModronMaze()
~ GOTO 23
  IF ~  Global("MazeDifficulty","GLOBAL",0)
~ THEN REPLY #48785 /* ~"Es hat jetzt den Schwierigkeitsgrad 'leicht'. Wechsle in den Schwierigkeitsgrad 'schwer'."~ */ DO ~SetGlobal("MazeDifficulty","GLOBAL",2)
GenerateModronMaze()
~ GOTO 23
  IF ~  Global("MazeDifficulty","GLOBAL",1)
~ THEN REPLY #48786 /* ~"Es hat schon den Schwierigkeitsgrad 'normal'. Erschaffe also einfach ein neues Verlies."~ */ DO ~GenerateModronMaze()
~ GOTO 23
  IF ~  Global("MazeDifficulty","GLOBAL",1)
~ THEN REPLY #48787 /* ~"Es hat den Schwierigkeitsgrad 'normal'. Wechsle in den Schwierigkeitsgrad 'leicht'."~ */ DO ~SetGlobal("MazeDifficulty","GLOBAL",0)
GenerateModronMaze()
~ GOTO 23
  IF ~  Global("MazeDifficulty","GLOBAL",1)
~ THEN REPLY #48788 /* ~"Es hat den Schwierigkeitsgrad 'normal'. Wechsle in den Schwierigkeitsgrad 'schwer'."~ */ DO ~SetGlobal("MazeDifficulty","GLOBAL",2)
GenerateModronMaze()
~ GOTO 23
  IF ~  Global("MazeDifficulty","GLOBAL",2)
~ THEN REPLY #48789 /* ~"Es hat schon den Schwierigkeitsgrad 'schwer'. Erschaffe also einfach ein neues Verlies."~ */ DO ~GenerateModronMaze()
~ GOTO 23
  IF ~  Global("MazeDifficulty","GLOBAL",2)
~ THEN REPLY #48790 /* ~"Es hat den Schwierigkeitsgrad 'schwer'. Wechsle in den Schwierigkeitsgrad 'normal'."~ */ DO ~SetGlobal("MazeDifficulty","GLOBAL",1)
GenerateModronMaze()
~ GOTO 23
  IF ~  Global("MazeDifficulty","GLOBAL",2)
~ THEN REPLY #48791 /* ~"Es hat den Schwierigkeitsgrad 'schwer'. Wechsle in den Schwierigkeitsgrad 'leicht'."~ */ DO ~SetGlobal("MazeDifficulty","GLOBAL",0)
GenerateModronMaze()
~ GOTO 23
  IF ~~ THEN REPLY #48792 /* ~"Ach, ist nicht so wichtig. Laß es, wie es ist!"~ */ GOTO 24
END

IF ~~ THEN BEGIN 23 // from: 22.0 22.1 22.2 22.3 22.4 22.5 22.6 22.7 22.8
  SAY #48793 /* ~"Zerstöre aktuelles Verlies..." Der Raum wird von einem leisen trommelnden Geräusch erfüllt. "Initialisiere neues Verlies..." Der Boden fängt zu vibrieren an, und dann ist alles still. "Verlies erstellt. Erwarte weitere Anweisungen, Leiter."~ */
  IF ~~ THEN REPLY #48794 /* ~"Das wär's für den Moment. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 24 // from: 22.9
  SAY #48795 /* ~"Aktuelle Einstellungen werden nicht geändert. Erwarte weitere Anweisungen, Leiter."~ */
  IF ~~ THEN REPLY #48796 /* ~"Das wär's für den Moment. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 25 // from: 2.5
  SAY #48797 /* ~"Gebt Euer Ziel an, Leiter."~ */
  IF ~  Global("AR0100_Visited","GLOBAL",1)
~ THEN REPLY #48905 /* ~"Der Stock, in die Nähe des Lumpensammler-Platzes."~ */ DO ~SetGlobal("Modron_Cube","GLOBAL",1)
TeleportParty("AR0100",[2068.468],0)
~ EXIT
  IF ~  Global("AR0200_Visited","GLOBAL",1)
~ THEN REPLY #48906 /* ~"Der Stock, in die Nähe der Leichenhalle."~ */ DO ~SetGlobal("Modron_Cube","GLOBAL",1)
TeleportParty("AR0200",[1748.1940],0)
~ EXIT
  IF ~  Global("AR0300_Visited","GLOBAL",1)
~ THEN REPLY #48907 /* ~"Der Stock, in die Nähe des Marktplatzes."~ */ DO ~SetGlobal("Modron_Cube","GLOBAL",1)
TeleportParty("AR0300",[1676.1336],0)
~ EXIT
  IF ~  Global("AR0400_Visited","GLOBAL",1)
~ THEN REPLY #48908 /* ~"Der Stock, in die Nähe der Bar Zur Schwelenden Leiche."~ */ DO ~SetGlobal("Modron_Cube","GLOBAL",1)
TeleportParty("AR0400",[1965.1662],0)
~ EXIT
  IF ~  Global("AR0500_Visited","GLOBAL",1)
~ THEN REPLY #48909 /* ~"Unterer Bezirk."~ */ DO ~SetGlobal("Modron_Cube","GLOBAL",1)
TeleportParty("AR0500",[1698.1937],0)
~ EXIT
  IF ~  Global("AR0600_Visited","GLOBAL",1)
~ THEN REPLY #48910 /* ~"Bezirk der Kuratoren."~ */ DO ~SetGlobal("Modron_Cube","GLOBAL",1)
TeleportParty("AR0600",[1865.1806],0)
~ EXIT
  IF ~  Global("AR1400_Visited","GLOBAL",1)
~ THEN REPLY #48911 /* ~"Katakomben der Weinenden Steine."~ */ DO ~SetGlobal("Modron_Cube","GLOBAL",1)
TeleportParty("AR1400",[1993.1747],0)
~ EXIT
  IF ~~ THEN REPLY #48912 /* ~"Ach, ist nicht so wichtig. Das wär's für den Moment. Leb wohl."~ */ EXIT
END

IF ~  NumTimesTalkedToGT(0)
~ THEN BEGIN 26 // from:
  SAY #48913 /* ~Du triffst auf den Modron-Ingenieur. "Sei gegrüßt."~ */
  IF ~~ THEN REPLY #48914 /* ~"Ich habe ein paar Fragen..."~ */ GOTO 2
  IF ~~ THEN REPLY #48915 /* ~"Vergiß es. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 27 // from: 5.0
  SAY #48916 /* ~"Ich..." Der Modron wirkt verwirrt und hält kurz inne. Ein heftiges Summen erfüllt den Raum, verklingt aber schnell wieder. "Wir sind Modron. Wir sind Teil des Ganzen. Das Ganze ist Modron. Es gibt keinen anderen."~ */
  IF ~~ THEN REPLY #48917 /* ~"Das ist interessant. Ich habe ein paar Fragen..."~ */ GOTO 2
  IF ~~ THEN REPLY #48918 /* ~"Ich muß jetzt los. Auf Wiedersehen."~ */ EXIT
END

IF ~~ THEN BEGIN 28 // from: 12.1
  SAY #48919 /* ~Der Modron wirft dir einen besorgten Blick zu und schaut sich dann im Raum um. "Ihr irrt Euch. Wir sind Modron. Wir sind das Ganze... Wir werden das jetzt nicht erörtern."~ */
  IF ~~ THEN REPLY #48920 /* ~"Gut. Ich würde gern eins der Verliese ausprobieren, die du erwähnt hast."~ */ GOTO 13
  IF ~~ THEN REPLY #48921 /* ~"Ich weiß doch, was ich gehört hab. Du hast angefangen, *ich* zu sagen und..."~ */ GOTO 29
  IF ~~ THEN REPLY #48922 /* ~"Ich habe ein paar Fragen..."~ */ GOTO 2
  IF ~~ THEN REPLY #48923 /* ~"Ich muß jetzt los. Auf Wiedersehen."~ */ EXIT
END

IF ~~ THEN BEGIN 29 // from: 28.1
  SAY #48924 /* ~Der Modron schaut dich düster an. Als er dir antwortet, hörst du einen Anflug von Zorn in seiner Stimme mitschwingen. "Nein. Wir sind Modron. Wir sind Teil des Ganzen. Wir werden das jetzt nicht weiter erörtern." Ein wütendes Summen erfüllt den Raum und verklingt dann.~ */
  IF ~~ THEN REPLY #48925 /* ~"Gut. Ich würde gern eins der Verliese ausprobieren, die du erwähnt hast."~ */ GOTO 13
  IF ~~ THEN REPLY #48926 /* ~"Ich habe ein paar Fragen..."~ */ GOTO 2
  IF ~~ THEN REPLY #48927 /* ~"Ich muß jetzt los. Auf Wiedersehen."~ */ EXIT
END

IF ~~ THEN BEGIN 30 // from: 11.0
  SAY #48928 /* ~"Rubikon ist eine herausragende Leistung und...", er hält einen Moment inne, "ich...wir... sind zufrieden."~ */
  IF ~~ THEN REPLY #48929 /* ~"Hast du da gerade was von Anomalien erzählt?"~ */ GOTO 12
  IF ~~ THEN REPLY #48930 /* ~"Interessant. Ich würde gern eins dieser Verliese ausprobieren."~ */ GOTO 13
  IF ~~ THEN REPLY #48931 /* ~"Ich habe ein paar Fragen..."~ */ GOTO 2
  IF ~~ THEN REPLY #48932 /* ~"Ich muß jetzt los. Auf Wiedersehen."~ */ EXIT
END

IF ~~ THEN BEGIN 31 // from: 2.6
  SAY #66394 /* ~Der Modron zögert mit seiner Antwort. "Ausgang nicht verfügbar. Projekt gestoppt..." Der Raum wird von einem irren, summenden Geräusch erfüllt, das plötzlich verstummt.~ */
  IF ~~ THEN REPLY #66395 /* ~"Was für ein Projekt? Wovon sprichst du?"~ */ GOTO 9
  IF ~~ THEN REPLY #66396 /* ~"Aha. Ich habe noch ein paar Fragen..."~ */ GOTO 2
  IF ~~ THEN REPLY #66397 /* ~"Ich muß jetzt weiter, Wiedersehen."~ */ EXIT
END

IF ~~ THEN BEGIN 32 // from: 2.7
  SAY #68064 /* ~"Ja, Herr Direktor. Laß dich auf keinen Fall von deinen Begleitern trennen, wenn du im Irrgang bist. Wenn der Irrgang neu gestartet oder ein neuer Schwierigkeitsgrad gewählt würde, würden alle getötet, die sich noch im Irrgang befinden."~ */
  IF ~~ THEN REPLY #68065 /* ~"Verstehe... Ich werde meine Gruppe nicht neu formieren, solange wir im Irrgang sind. Sonst noch etwas?"~ */ JOURNAL #68071 /* ~Während ich im Modronen-Irrgang bin, kann ich meine Gruppe nicht umbilden. Sollte der Irrgang neu gestartet oder der Schwierigkeitsgrad geändert werden, würde jeder, der im Irrgang zurückgelassen wurde, getötet werden.~ */ GOTO 33
END

IF ~~ THEN BEGIN 33 // from: 32.0
  SAY #68066 /* ~"Ja, Herr Direktor. Laß keine Gegenstände oder Ausrüstung im Irrgarten fallen. Wenn der Irrgang neu gestartet oder ein neuer Schwierigkeitsgrad gewählt würde, würden alle Gegenstände zerstört werden, die sich noch im Irrgang befinden."~ */
  IF ~~ THEN REPLY #68067 /* ~"Verstehe... Ich werde nichts Wichtiges fallenlassen, solange ich im Irrgang bin. Sonst noch etwas?"~ */ JOURNAL #68072 /* ~Laß keine wichtigen Gegenstände fallen, während du dich im Modronen-Irrgang aufhältst. Sollte der Irrgang neu gestartet oder der Schwierigkeitsgrad geändert werden, würde alles, was im Irrgang zurückgelassen wurde, zerstört werden.~ */ GOTO 34
END

IF ~~ THEN BEGIN 34 // from: 33.0
  SAY #68068 /* ~Er hält inne und überlegt einen Moment. "Nein, Herr Direktor."~ */
  IF ~~ THEN REPLY #68069 /* ~"Verstehe. Ich habe noch ein paar Fragen..."~ */ GOTO 2
  IF ~~ THEN REPLY #68070 /* ~"Also gut, leb wohl."~ */ EXIT
END
