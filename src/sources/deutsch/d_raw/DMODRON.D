// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DMODRON.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\de_DE\dialog.tlk
// dialogF  : (none)

BEGIN ~DMODRON~

IF ~  RandomNum(2,0)
~ THEN BEGIN 0 // from:
  SAY #2980 /* ~Du siehst einen Würfel mit zwei Armen, zwei Beinen und zwei kleinen Flügeln, die aus den Seiten sprießen. Auf der Vorderseite des Würfels ist ein lebhaftes Gesicht. Als du dich näherst, richtet das Wesen den Blick auf dich.~ */
  IF ~~ THEN REPLY #2981 /* ~"Sei gegrüßt."~ */ GOTO 1
  IF ~~ THEN REPLY #44710 /* ~Beachte das Wesen nicht.~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #44711 /* ~"Seid gegrüßt." Das Wesen spricht mit einer monotonen, geschlechtslosen Stimme.~ */
  IF ~~ THEN REPLY #44712 /* ~"Ich habe ein paar Fragen..."~ */ GOTO 2
  IF ~~ THEN REPLY #44713 /* ~"Also, ich muß weiter. Wiedersehen."~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.0 3.1 4.1 5.1 6.0 6.1 7.2 8.1 9.1 10.1 11.1 12.0 13.1 14.1
  SAY #44714 /* ~Das Wesen sieht dich weiter mit leerem Blick an. "Stellt Eure Frage."~ */
  IF ~~ THEN REPLY #44715 /* ~"Wer bist du?"~ */ GOTO 3
  IF ~~ THEN REPLY #44716 /* ~"Was bist du?"~ */ GOTO 7
  IF ~~ THEN REPLY #44717 /* ~"Was ist das für ein Ort?"~ */ GOTO 10
  IF ~~ THEN REPLY #44718 /* ~"Was machst du hier?"~ */ GOTO 13
  IF ~~ THEN REPLY #44719 /* ~"Also, ich muß weiter. Wiedersehen."~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 2.0
  SAY #44720 /* ~"Wir sind Modron."~ */
  IF ~~ THEN REPLY #44721 /* ~"Heißt das, dein Name ist Modron?"~ */ GOTO 4
  IF ~~ THEN REPLY #44722 /* ~"Ich habe ein paar Fragen..."~ */ GOTO 2
  IF ~~ THEN REPLY #44723 /* ~"Ich muß jetzt los. Auf Wiedersehen."~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 3.0
  SAY #44724 /* ~"Wir sind Modron. Wir haben keinen Namen. Wir sind Modron. Alles, was Ihr hier seht, ist Teil des Modron. Wir sind eins."~ */
  IF ~~ THEN REPLY #44725 /* ~"Ja, ja, ihr seid alle Modronen. Aber wie heißt *der* Modron, mit dem ich grade spreche?"~ */ GOTO 5
  IF ~~ THEN REPLY #44726 /* ~"Ich habe ein paar Fragen..."~ */ GOTO 2
  IF ~~ THEN REPLY #44727 /* ~"Ich muß jetzt los. Auf Wiedersehen."~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 4.0
  SAY #44728 /* ~Der Modron gibt sporadisch klopfende Geräusche von sich und starrt dich mit einem gequälten Gesichtsausdruck an. "Wir... ich..." Er wendet seinen Blick ab; das klopfende Geräusch hört auf. "Wir sind Modron. Unsere einzige Identität ist die Gesamtheit des Modron. Wir haben keinen Namen."~ */
  IF ~~ THEN REPLY #44729 /* ~"Wie haltet ihr euch auseinander?"~ */ GOTO 6
  IF ~~ THEN REPLY #44730 /* ~"Ich habe ein paar Fragen..."~ */ GOTO 2
  IF ~~ THEN REPLY #44731 /* ~"Ich muß jetzt los. Auf Wiedersehen."~ */ EXIT
END

IF ~~ THEN BEGIN 6 // from: 5.0
  SAY #44732 /* ~Der Modron hält kurz inne, um deine Frage zu bedenken. "Wir wissen es. Wir sind Modron. Wir sind Teil eines Ganzen. So wie Ihr wißt, daß die Hand ein Teil des Arms ist, wissen wir, daß alles Teil eines Ganzen ist."~ */
  IF ~~ THEN REPLY #44733 /* ~"Ich verstehe. Ich habe einige Fragen..."~ */ GOTO 2
  IF ~~ THEN REPLY #44734 /* ~"Ich habe ein paar Fragen..."~ */ GOTO 2
  IF ~~ THEN REPLY #44735 /* ~"Ich muß jetzt los. Auf Wiedersehen."~ */ EXIT
END

IF ~~ THEN BEGIN 7 // from: 2.1
  SAY #44736 /* ~"Wir sind Modron, wir sind Quadron."~ */
  IF ~~ THEN REPLY #44737 /* ~"Was ist ein Modron?"~ */ GOTO 8
  IF ~~ THEN REPLY #44738 /* ~"Was ist ein Quadron?"~ */ GOTO 9
  IF ~~ THEN REPLY #44739 /* ~"Ich habe ein paar Fragen..."~ */ GOTO 2
  IF ~~ THEN REPLY #44740 /* ~"Ich muß jetzt los. Auf Wiedersehen."~ */ EXIT
END

IF ~~ THEN BEGIN 8 // from: 7.0 9.0
  SAY #44741 /* ~"Wir sind Modron. Dies ist die einzige Identität unserer Rasse."~ */
  IF ~~ THEN REPLY #44742 /* ~"Und was ist dann ein Quadron?"~ */ GOTO 9
  IF ~~ THEN REPLY #44743 /* ~"Ich habe ein paar Fragen..."~ */ GOTO 2
  IF ~~ THEN REPLY #44744 /* ~"Ich muß jetzt los. Auf Wiedersehen."~ */ EXIT
END

IF ~~ THEN BEGIN 9 // from: 7.1 8.0
  SAY #44745 /* ~"Innerhalb unserer Rasse werden wir als Typ Quadron klassifiziert."~ */
  IF ~~ THEN REPLY #44746 /* ~"Was ist dann ein Modron?"~ */ GOTO 8
  IF ~~ THEN REPLY #44747 /* ~"Ich habe ein paar Fragen..."~ */ GOTO 2
  IF ~~ THEN REPLY #44748 /* ~"Ich muß jetzt los. Auf Wiedersehen."~ */ EXIT
END

IF ~~ THEN BEGIN 10 // from: 2.2
  SAY #44749 /* ~"Das Rubikon-Verlies-Konstrukt."~ */
  IF ~~ THEN REPLY #44750 /* ~"Was soll das denn sein?~ */ GOTO 11
  IF ~~ THEN REPLY #44751 /* ~"Ich habe ein paar Fragen..."~ */ GOTO 2
  IF ~~ THEN REPLY #44752 /* ~"Ich muß jetzt los. Auf Wiedersehen."~ */ EXIT
END

IF ~~ THEN BEGIN 11 // from: 10.0 14.0
  SAY #44753 /* ~Der Modron blickt dich mit gerunzelter Stirn an. Dann sieht er sich im Raum um. "Wir müßten es wissen... Wir sind Modron. Wir sind Teil eines Ganzen... Wir... Information nicht verfügbar. Richtet Eure Frage an den Ingenieur."~ */
  IF ~~ THEN REPLY #44754 /* ~"Wo finde ich den Ingenieur?"~ */ GOTO 12
  IF ~~ THEN REPLY #44755 /* ~"Ich habe ein paar Fragen..."~ */ GOTO 2
  IF ~~ THEN REPLY #44756 /* ~"Ich muß jetzt los. Auf Wiedersehen."~ */ EXIT
END

IF ~~ THEN BEGIN 12 // from: 11.0
  SAY #44757 /* ~Die Augen des Modronen wandern umher. "Wir wissen es nicht. Information nicht verfügbar... Wir sind verwirrt..."~ */
  IF ~~ THEN REPLY #44758 /* ~"Ich habe ein paar Fragen..."~ */ GOTO 2
  IF ~~ THEN REPLY #44759 /* ~"Ich muß jetzt los. Auf Wiedersehen."~ */ EXIT
END

IF ~~ THEN BEGIN 13 // from: 2.3
  SAY #44760 /* ~"Warten auf Anweisungen."~ */
  IF ~~ THEN REPLY #44761 /* ~"Anweisungen wofür?"~ */ GOTO 14
  IF ~~ THEN REPLY #44762 /* ~"Ich habe ein paar Fragen..."~ */ GOTO 2
  IF ~~ THEN REPLY #44763 /* ~"Ich muß jetzt los. Auf Wiedersehen."~ */ EXIT
END

IF ~~ THEN BEGIN 14 // from: 13.0
  SAY #44764 /* ~Der Modron sieht dich mit leerem Blick an. "Für die Aufgabe, die als nächstes auszuführen ist."~ */
  IF ~~ THEN REPLY #44765 /* ~"Was für Aufgaben? Was tust du hier eigentlich?"~ */ GOTO 11
  IF ~~ THEN REPLY #44766 /* ~"Ich habe ein paar Fragen..."~ */ GOTO 2
  IF ~~ THEN REPLY #44767 /* ~"Ich muß jetzt los. Auf Wiedersehen."~ */ EXIT
END

IF ~  RandomNum(2,1)
~ THEN BEGIN 15 // from:
  SAY #44768 /* ~Du siehst einen Würfel mit zwei Armen, zwei Beinen und zwei kleinen Flügeln, die aus den Seiten sprießen. Auf der Vorderseite des Würfels ist ein lebhaftes Gesicht. Als du dich näherst, richtet das Wesen den Blick auf dich.~ */
  IF ~~ THEN REPLY #44769 /* ~"Sei gegrüßt."~ */ GOTO 16
  IF ~~ THEN REPLY #44770 /* ~Beachte das Wesen nicht.~ */ EXIT
END

IF ~~ THEN BEGIN 16 // from: 15.0
  SAY #44771 /* ~"Seid gegrüßt." Das Wesen spricht mit einer monotonen, geschlechtslosen Stimme.~ */
  IF ~~ THEN REPLY #44772 /* ~"Ich habe ein paar Fragen..."~ */ GOTO 17
  IF ~~ THEN REPLY #44773 /* ~"Also, ich muß weiter. Wiedersehen."~ */ EXIT
END

IF ~~ THEN BEGIN 17 // from: 16.0 18.1 19.1 20.0 21.1 22.0 23.2 24.1 25.1 26.0 27.1 28.0
  SAY #44774 /* ~Das Wesen sieht dich weiter mit leerem Blick an. "Stellt Eure Frage."~ */
  IF ~~ THEN REPLY #44775 /* ~"Wer bist du?"~ */ GOTO 18
  IF ~~ THEN REPLY #44776 /* ~"Was bist du?"~ */ GOTO 21
  IF ~  Global("EnginInMaze","GLOBAL",1)
~ THEN REPLY #44777 /* ~"Was ist das für ein Ort?"~ */ GOTO 23
  IF ~  !Global("EnginInMaze","GLOBAL",1)
~ THEN REPLY #44778 /* ~"Was ist das für ein Ort?"~ */ GOTO 26
  IF ~~ THEN REPLY #44779 /* ~"Was machst du hier?"~ */ GOTO 27
  IF ~~ THEN REPLY #44780 /* ~"Also, ich muß weiter. Wiedersehen."~ */ EXIT
END

IF ~~ THEN BEGIN 18 // from: 17.0
  SAY #44781 /* ~Das Wesen starrt dich eine Weile an, bevor es antwortet. "Nicht sicher... verwirrt..." ~ */
  IF ~~ THEN REPLY #44782 /* ~"Wie meinst du das? Weißt du etwa nicht, wer du bist?"~ */ GOTO 19
  IF ~~ THEN REPLY #44783 /* ~"Ich habe ein paar Fragen..."~ */ GOTO 17
  IF ~~ THEN REPLY #44784 /* ~"Ich muß weiter, auf Wiedersehen."~ */ EXIT
END

IF ~~ THEN BEGIN 19 // from: 18.0
  SAY #44785 /* ~"Nein... manchmal nicht sicher." ~ */
  IF ~~ THEN REPLY #44786 /* ~"Ich weiß auch nicht  mehr, wer ich bin."~ */ GOTO 20
  IF ~~ THEN REPLY #44787 /* ~"Ich habe ein paar Fragen..."~ */ GOTO 17
  IF ~~ THEN REPLY #44788 /* ~"Ich muß weiter, auf Wiedersehen."~ */ EXIT
END

IF ~~ THEN BEGIN 20 // from: 19.0
  SAY #44789 /* ~"Ich versteh dich gut..." Das Wesen streckt seine Hand aus und faßt dir sanft an die Schulter. Dann nimmt es die Hand wieder weg.~ */
  IF ~~ THEN REPLY #44790 /* ~"Ich habe ein paar Fragen..."~ */ GOTO 17
  IF ~~ THEN REPLY #44791 /* ~"Ich muß weiter, auf Wiedersehen."~ */ EXIT
END

IF ~~ THEN BEGIN 21 // from: 17.1
  SAY #44792 /* ~"Wir sind die Rasse der Modronen. Wir stammen aus Mechanus, der Ebene des Gesetzes."~ */
  IF ~~ THEN REPLY #44793 /* ~"Was kannst du mir über Mechanus erzählen?"~ */ GOTO 22
  IF ~~ THEN REPLY #44794 /* ~"Ich habe ein paar Fragen..."~ */ GOTO 17
  IF ~~ THEN REPLY #44795 /* ~"Ich muß weiter, auf Wiedersehen."~ */ EXIT
END

IF ~~ THEN BEGIN 22 // from: 21.0
  SAY #44796 /* ~"Ein Ort der Gesetze... vieler Gesetze. Sehr strukturiert..." Das Wesen verstummt.~ */
  IF ~~ THEN REPLY #44797 /* ~"Ich habe ein paar Fragen..."~ */ GOTO 17
  IF ~~ THEN REPLY #44798 /* ~"Ich muß weiter, auf Wiedersehen."~ */ EXIT
END

IF ~~ THEN BEGIN 23 // from: 17.2
  SAY #44799 /* ~Das Wesen blickt um sich. "Ein Verlies-Simulator. Funktioniert aber nicht. Kaputt." Es seufzt.~ */
  IF ~~ THEN REPLY #44800 /* ~"Was ist passiert?"~ */ GOTO 24
  IF ~~ THEN REPLY #44801 /* ~"Was ist ein Verlies-Simulator?"~ */ GOTO 25
  IF ~~ THEN REPLY #44802 /* ~"Ich habe ein paar Fragen..."~ */ GOTO 17
  IF ~~ THEN REPLY #44803 /* ~"Ich muß weiter, auf Wiedersehen."~ */ EXIT
END

IF ~~ THEN BEGIN 24 // from: 23.0 25.0
  SAY #44804 /* ~"Nicht sicher. Geht einfach nicht mehr."~ */
  IF ~~ THEN REPLY #44805 /* ~"Was ist ein Verlies-Simulator?"~ */ GOTO 25
  IF ~~ THEN REPLY #44806 /* ~"Ich habe ein paar Fragen..."~ */ GOTO 17
  IF ~~ THEN REPLY #44807 /* ~"Ich muß weiter, auf Wiedersehen."~ */ EXIT
END

IF ~~ THEN BEGIN 25 // from: 23.1 24.0
  SAY #44808 /* ~Der Modron schaut dich an und sagt seufzend: "Er simuliert Verliese. Was denn sonst?"~ */
  IF ~~ THEN REPLY #44809 /* ~"Und wie ist er kaputt gegangen?"~ */ GOTO 24
  IF ~~ THEN REPLY #44810 /* ~"Ich habe ein paar Fragen..."~ */ GOTO 17
  IF ~~ THEN REPLY #44811 /* ~"Ich muß weiter, auf Wiedersehen."~ */ EXIT
END

IF ~~ THEN BEGIN 26 // from: 17.3
  SAY #44812 /* ~Er blickt dich stirnrunzelnd an. "Ihr müßtet es wissen: Ihr habt ihn schon mal repariert."~ */
  IF ~~ THEN REPLY #44813 /* ~"Ich habe ein paar Fragen..."~ */ GOTO 17
  IF ~~ THEN REPLY #44814 /* ~"Ich muß weiter, auf Wiedersehen."~ */ EXIT
END

IF ~~ THEN BEGIN 27 // from: 17.4
  SAY #44815 /* ~Er hält kurz inne. "Überlegen... Denken... Fragen beantworten..." Er schaut dich mit gerunzelter Stirn an.~ */
  IF ~~ THEN REPLY #44816 /* ~"Was überlegst du?"~ */ GOTO 28
  IF ~~ THEN REPLY #44817 /* ~"Ich habe ein paar Fragen..."~ */ GOTO 17
  IF ~~ THEN REPLY #44818 /* ~"Ich muß weiter, auf Wiedersehen."~ */ EXIT
END

IF ~~ THEN BEGIN 28 // from: 27.0
  SAY #44819 /* ~"Das Leben steckt voller Geheimnisse..." Er verstummt.~ */
  IF ~~ THEN REPLY #44820 /* ~"Ich habe ein paar Fragen..."~ */ GOTO 17
  IF ~~ THEN REPLY #44821 /* ~"Ich muß weiter, auf Wiedersehen."~ */ EXIT
END

IF ~  RandomNum(2,2)
~ THEN BEGIN 29 // from:
  SAY #44822 /* ~Du siehst einen Würfel mit zwei Armen, zwei Beinen und zwei kleinen Flügeln, die aus den Seiten sprießen. Auf der Vorderseite des Würfels ist ein lebhaftes Gesicht. Als du dich näherst, richtet das Wesen den Blick auf dich.~ */
  IF ~~ THEN REPLY #44823 /* ~"Sei gegrüßt."~ */ GOTO 30
  IF ~~ THEN REPLY #44824 /* ~Beachte das Wesen nicht.~ */ EXIT
END

IF ~~ THEN BEGIN 30 // from: 29.0
  SAY #44825 /* ~Er starrt dich nichtssagend an.~ */
  IF ~~ THEN REPLY #44826 /* ~"Ich habe ein paar Fragen..."~ */ GOTO 31
  IF ~~ THEN REPLY #44827 /* ~"Also, ich muß weiter. Wiedersehen."~ */ EXIT
END

IF ~~ THEN BEGIN 31 // from: 30.0
  SAY #44828 /* ~Er schaut dich weiter mit unverändert starrem Blick an.~ */
  IF ~~ THEN REPLY #44829 /* ~"Kannst du mir ein paar Fragen beantworten?"~ */ GOTO 32
  IF ~~ THEN REPLY #44830 /* ~"Also, ich muß weiter. Wiedersehen."~ */ EXIT
END

IF ~~ THEN BEGIN 32 // from: 31.0
  SAY #44831 /* ~Er starrt dich weiter an und zwinkert dir mit seinen ausdruckslosen Augen zu.~ */
  IF ~~ THEN REPLY #44832 /* ~"Also, ich muß weiter. Wiedersehen."~ */ EXIT
END
