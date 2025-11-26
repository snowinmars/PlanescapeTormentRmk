// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DGHYSIS.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\de_DE\dialog.tlk
// dialogF  : (none)

BEGIN ~DGHYSIS~

IF ~~ THEN BEGIN 0 // from: 69.0 69.1
  SAY #2947 /* ~"Gut! Jetzt paß mal auf... dies ist das Seminar über den *Krieg*. Wenn du etwas über den Blutkrieg erfahren möchtest, bist du hier goldrichtig. Falls nicht, bist du hier fehl am Platze und schaffst deine verweichlichten Glieder eines Sigil-Bewohners besser raus hier."~ */
  IF ~  NearbyDialog("DMorte")
~ THEN EXTERN ~DMORTE~ 320
  IF ~  !NearbyDialog("DMorte")
~ THEN REPLY #2948 /* ~Hör zu.~ */ GOTO 1
  IF ~  !NearbyDialog("DMorte")
~ THEN REPLY #32707 /* ~Hör auf zuzuhören und geh weg.~ */ DO ~SetGlobal("Lecture_Ghysis","GLOBAL",2)
~ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.1
  SAY #32708 /* ~Der Mann läßt seinen Blick plötzlich über das Publikum schweifen, als ob er etwas suchte. "Und wenn ihr Tanar-Ri oder Baatezu seid, dann bewegt eure schuppigen Häute vor die Tür. Ich laß euch Bastarde hier nicht zuhören, um mir mir dann eure bescheuerten Argumente anzuhören..."~ */
  IF ~~ THEN REPLY #32709 /* ~Höre weiter zu.~ */ GOTO 2
  IF ~~ THEN REPLY #32710 /* ~Verlaß die Vorlesungshalle.~ */ DO ~SetGlobal("Lecture_Ghysis","GLOBAL",2)
~ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.0
  SAY #32711 /* ~"...hier wird nämlich nicht diskutiert, wer recht hat." Hinter dir hörst du, wie etwas Großes die Vorlesungshalle verläßt. "Es wird einfach nur der Blutkrieg vom menschlichen Standpunkt aus erzählt. Ich ergreif nicht Partei für die eine oder andere Seite. *Beide* haben nämlich Dreck am Stecken."~ */
  IF ~~ THEN REPLY #32712 /* ~Hör weiter zu.~ */ GOTO 3
  IF ~~ THEN REPLY #32713 /* ~Verlaß die Vorlesungshalle.~ */ DO ~SetGlobal("Lecture_Ghysis","GLOBAL",2)
~ EXIT
END

IF ~~ THEN BEGIN 3 // from: 2.0
  SAY #32714 /* ~Der Sprecher wird feierlich. "So... die jetzt noch hier sind, wollen also Geschichten aus dem Blutkrieg hören... Geschichten aus dem *Krieg*. Seid wohl hier, um von dem ganzen *Horror* zu hören, ne? Die schwebenden Festungen aus Menschenhaut! Die Schlachtfelder, die über mehrere Ebenen gehen und auf denen der Blutkrieg ausgefochten wird!"~ */
  IF ~~ THEN REPLY #32716 /* ~Hör weiter zu.~ */ GOTO 4
  IF ~~ THEN REPLY #32717 /* ~Verlaß die Vorlesungshalle.~ */ DO ~SetGlobal("Lecture_Ghysis","GLOBAL",2)
~ EXIT
END

IF ~~ THEN BEGIN 4 // from: 3.0
  SAY #32718 /* ~Er bleckt die gelben Zähne: "Geschichten, wie Scheusale ihre Klauen ineinader hauen! Grr! Grrrr!" Sein Knurren verstummt, und er sieht plötzlich gelangweilt aus.~ */
  IF ~~ THEN REPLY #32719 /* ~Hör weiter zu.~ */ GOTO 5
  IF ~~ THEN REPLY #32720 /* ~Verlaß die Vorlesungshalle.~ */ DO ~SetGlobal("Lecture_Ghysis","GLOBAL",2)
~ EXIT
END

IF ~~ THEN BEGIN 5 // from: 4.0
  SAY #32721 /* ~"Nun, gleich werdet ihr die Augen und Knochenschüsseln aufreißen: Es ist völlig idiotisch, sich mit diesem Mist abzugeben." Er spuckt verächtlich aus und verdreht wild seine Augen.~ */
  IF ~~ THEN REPLY #32722 /* ~Hör weiter zu.~ */ GOTO 6
  IF ~~ THEN REPLY #32723 /* ~Verlaß die Vorlesungshalle.~ */ DO ~SetGlobal("Lecture_Ghysis","GLOBAL",2)
~ EXIT
END

IF ~~ THEN BEGIN 6 // from: 5.0
  SAY #32724 /* ~"Aber ich sag euch trotzdem *was*: Ihr könnt euch nicht *vorstellen*, welche Ausmaße der Blutkrieg hat. Nichts, was ihr gesehen, gehört oder erlebt habt, *nichts* ist damit vergleichbar: Zeit, Zahl der 'Legionen', Blutvergießen... nichts ist damit vergleichbar, ihr Dussel. Versucht gar nicht erst, euch das vorzustellen, das klappt nämlich nicht. Mein Rat? Einfach: Mischt euch bloß nicht in diesen blutigen Kampf ein."~ */
  IF ~~ THEN REPLY #32725 /* ~Hör weiter zu.~ */ GOTO 7
  IF ~~ THEN REPLY #32726 /* ~Verlaß die Vorlesungshalle.~ */ DO ~SetGlobal("Lecture_Ghysis","GLOBAL",2)
~ EXIT
END

IF ~~ THEN BEGIN 7 // from: 6.0
  SAY #32727 /* ~"Das einzige, was ihr wissen müßt, ist: Scheusale töten Scheusale. Baatezu schlachten Tanar-Ri, Tanar-Ri massakrieren Baatezu. Gut." Er spuckt wieder aus. "Gewinnen tut keiner. Weil keiner  gewinnen *kann*. Die größte Sackgasse diesseits der Ewigkeit... dank der Mächte."~ */
  IF ~~ THEN REPLY #32728 /* ~Hör weiter zu.~ */ GOTO 8
  IF ~~ THEN REPLY #32729 /* ~Verlaß die Vorlesungshalle.~ */ DO ~SetGlobal("Lecture_Ghysis","GLOBAL",2)
~ EXIT
END

IF ~~ THEN BEGIN 8 // from: 7.0
  SAY #32730 /* ~"Das war's." Er zuckt die Schultern. "Das war's. Jetzt beantworte ich Fragen, wenn ihr welche habt..."~ */
  IF ~~ THEN REPLY #32731 /* ~Stell eine Frage.~ */ GOTO 11
  IF ~~ THEN REPLY #32732 /* ~Sag nichts.~ */ GOTO 9
END

IF ~~ THEN BEGIN 9 // from: 8.1 11.10 12.2 13.2 14.3 15.2 16.2 17.2 18.3 19.3 20.2 21.2 22.2 23.2 24.3 25.2 26.2 27.5 28.2 29.2 30.2 31.5 32.2 33.2 34.2 35.2 36.2 37.2 38.1 39.2 40.1 41.2 42.2 43.2 44.2 45.2 46.3 47.2 48.7 49.2 50.2 51.2 52.2 54.2 55.2 56.1 57.2 58.1 59.2 60.4 61.1 62.2 64.2 70.1 74.3 75.1 76.1 77.1 79.1 80.1 81.1 82.0
  SAY #32733 /* ~"So... das war's dann. Den Sinnsaten unter euch muß ich noch was sagen: Kommt bloß nicht auf die Idee, selbst in diesem verdammten Blutkrieg mitzukämpfen. Seid nicht so doof. Befragt einen Sinnesstein, wenn ihr's unbedingt wissen wollt, aber bleibt bloß weit weg vom echten Blutkrieg."~ */
  IF ~~ THEN REPLY #32734 /* ~Höre weiter zu.~ */ GOTO 10
  IF ~~ THEN REPLY #32735 /* ~Verlaß die Vorlesungshalle.~ */ DO ~SetGlobal("Lecture_Ghysis","GLOBAL",2)
~ EXIT
END

IF ~~ THEN BEGIN 10 // from: 9.0
  SAY #32736 /* ~"Das isses einfach nicht wert. Es ist..." Einen Moment lang verdunkelt ein großer Schmerz das Gesicht des Mannes. Er sieht beinahe so aus, als würde er gleich weinen. "...überhaupt nicht wert. Das ist das Ende dieser Sitzung, also tschüs."~ */
  IF ~~ THEN REPLY #32737 /* ~Geh weg.~ */ DO ~SetGlobal("Lecture_Ghysis","GLOBAL",2)
~ EXIT
END

IF ~~ THEN BEGIN 11 // from: 8.0 12.1 13.1 14.2 15.1 16.1 17.1 18.2 19.2 20.1 21.1 22.1 23.1 24.2 25.1 26.1 27.4 28.1 29.1 30.1 31.4 32.1 33.1 34.1 35.1 36.1 37.1 38.0 39.1 40.0 41.1 42.1 43.1 44.1 45.1 46.2 47.1 48.6 49.1 50.1 51.1 52.1 54.1 55.1 56.0 57.1 58.0 59.1 60.3 61.0 62.1 64.1 70.0 74.2
  SAY #32738 /* ~"Was willst du fragen, Schleifer?"~ */
  IF ~  Global("CW_Ghysis_Survive","GLOBAL",1)
GlobalLT("Ghysis","GLOBAL",2)
~ THEN REPLY #49564 /* ~"Wie hast du den Blutkrieg doch gleich überlebt?"~ */ GOTO 62
  IF ~  Global("Ghysis","GLOBAL",2)
~ THEN REPLY #49565 /* ~"Wie hast du den Blutkrieg doch gleich überlebt?"~ */ GOTO 70
  IF ~~ THEN REPLY #32739 /* ~"Kannst du mir nicht ein bißchen mehr über den Blutkrieg erzählen?"~ */ GOTO 32
  IF ~~ THEN REPLY #32740 /* ~"Wie hat der Blutkrieg angefangen?"~ */ GOTO 41
  IF ~~ THEN REPLY #32741 /* ~"Wie wird man Söldner im Blutkrieg?"~ */ GOTO 59
  IF ~~ THEN REPLY #32742 /* ~"Wo wird der Blutkrieg gekämpft?"~ */ GOTO 55
  IF ~~ THEN REPLY #32743 /* ~"Wie überlebt man den Blutkrieg?"~ */ GOTO 12
  IF ~~ THEN REPLY #32744 /* ~"Beschreib die Tanar-Ri."~ */ GOTO 57
  IF ~~ THEN REPLY #32745 /* ~"Beschreib die Baatezu."~ */ GOTO 45
  IF ~~ THEN REPLY #32746 /* ~"Also erzählst du uns keine Geschichten über den Blutkrieg?"~ */ GOTO 39
  IF ~~ THEN REPLY #33088 /* ~"Nein, keine Fragen."~ */ GOTO 9
END

IF ~~ THEN BEGIN 12 // from: 11.6
  SAY #32747 /* ~"Du willst wissen, wie man den Blutkrieg überlebt? Drei Punkte, Schleifer:" Er hält eine verstümmelte Hand mit nur noch zwei Fingern hoch.~ */
  IF ~~ THEN REPLY #32748 /* ~"Erzähl weiter..."~ */ GOTO 13
  IF ~~ THEN REPLY #32749 /* ~"Warte... ich will dich noch mal was Anderes fragen..."~ */ GOTO 11
  IF ~~ THEN REPLY #32750 /* ~"Ach, vergiß es. Keine weiteren Fragen."~ */ GOTO 9
END

IF ~~ THEN BEGIN 13 // from: 12.0
  SAY #32751 /* ~"Erstens: Halt' dich zum Teufel da raus. Zweitens: Halt' dich zum Teufel verdammt noch mal da raus. Und drittens... halt' dich zum Teufel verdammt verflixt noch mal da raus."~ */
  IF ~~ THEN REPLY #32752 /* ~"Erzähl weiter..."~ */ GOTO 14
  IF ~~ THEN REPLY #32753 /* ~"Warte... ich will dich noch mal was Anderes fragen..."~ */ GOTO 11
  IF ~~ THEN REPLY #32754 /* ~"Ach, vergiß es. Keine weiteren Fragen."~ */ GOTO 9
END

IF ~~ THEN BEGIN 14 // from: 13.0
  SAY #32755 /* ~"Wenn irgendwas vom Krieg in deine Nähe kommt, dann renn so schnell du kannst. Wenn du nicht rennen kannst, leg dich *ganz* still hin und bete, daß er an dir vorbeizieht." Er hält kurz inne. "Das geht natürlich nicht, wenn er überall ist und wenn du nirgendwo hinrennen kannst."~ */
  IF ~~ THEN REPLY #32756 /* ~"Wenn man nirgendwo hinrennen kann, warum kämpfen ihre Scheusale dann nicht in Sigil?"~ */ GOTO 21
  IF ~~ THEN REPLY #32757 /* ~"Sonst noch was?"~ */ GOTO 15
  IF ~~ THEN REPLY #32758 /* ~"Ich hätte da noch eine andere Frage..."~ */ GOTO 11
  IF ~~ THEN REPLY #32759 /* ~"Ich habe keine weiteren Fragen."~ */ GOTO 9
END

IF ~~ THEN BEGIN 15 // from: 14.1 29.0
  SAY #32760 /* ~"Ja: Egal, was du tust, *rede* mit *keinem* Scheusal über den Blutkrieg... und auch mit keinem Deva oder Archon. Rede einfach nie drüber. Man weiß ja nie, mit wem man wirklich redet. Und einige sind ganz schön empfindlich, wenn man den Krieg erwähnt. Er ist ihr Lebensinhalt."~ */
  IF ~~ THEN REPLY #32761 /* ~"Sonst noch was?"~ */ GOTO 16
  IF ~~ THEN REPLY #32762 /* ~"Ich hätte da noch eine andere Frage..."~ */ GOTO 11
  IF ~~ THEN REPLY #32763 /* ~"Ich habe keine weiteren Fragen."~ */ GOTO 9
END

IF ~~ THEN BEGIN 16 // from: 15.0
  SAY #32764 /* ~Er nickt. "Geh durch kein Portal, wenn du nicht todsicher weißt, wo's hinführt. Vielleicht hast du noch keine Geschichten von den planlosen Ebenenwanderern gehört, die durch ein Portal gehen und, peng, mitten im Blutkrieg landen. Und weißt du auch warum? Weil die Idioten tot sind, tot, *tot*."~ */
  IF ~~ THEN REPLY #32765 /* ~"Sonst noch was?"~ */ GOTO 17
  IF ~~ THEN REPLY #32767 /* ~"Laß mich dich noch was anderes fragen..."~ */ GOTO 11
  IF ~~ THEN REPLY #32768 /* ~"Ich habe keine weiteren Fragen."~ */ GOTO 9
END

IF ~~ THEN BEGIN 17 // from: 16.0
  SAY #32769 /* ~"Und egal, was du tust, werde bloß niemals Söldner im Blutkrieg, gleichgültig wieviel Klimper sie dir in den Becher werfen. Wer Söldner im Blutkrieg wird, der kann sich auch gleich umbringen. Glaub's mir, Schleifer."~ */
  IF ~~ THEN REPLY #32770 /* ~"Wieso?"~ */ GOTO 18
  IF ~~ THEN REPLY #32771 /* ~"Laß mich dich noch was anderes fragen..."~ */ GOTO 11
  IF ~~ THEN REPLY #32772 /* ~"Ich habe keine weiteren Fragen."~ */ GOTO 9
END

IF ~~ THEN BEGIN 18 // from: 17.0
  SAY #32773 /* ~"Wenn du Söldner im Blutkrieg wirst, wirst du wahrscheinlich kämpfen, bis die Zeit stillsteht. Und selbst der Tod wäre keine Erlösung, denn dann sinkst du in die Unteren Ebenen und wirst als was Schlimmeres wieder raufgezerrt, als das, was du vorher warst. Aus ihren Fängen kommst du nie wieder raus."~ */
  IF ~~ THEN REPLY #32774 /* ~"Wie kommt man denn aus einem Söldnervertrag *raus*?"~ */ GOTO 30
  IF ~~ THEN REPLY #32775 /* ~"Im Blutkrieg zu sterben wäre dann wohl besonders schlecht, was?"~ */ GOTO 19
  IF ~~ THEN REPLY #32776 /* ~"Laß mich dich noch was anderes fragen..."~ */ GOTO 11
  IF ~~ THEN REPLY #32777 /* ~"Ich habe keine weiteren Fragen."~ */ GOTO 9
END

IF ~~ THEN BEGIN 19 // from: 18.1 31.0
  SAY #32778 /* ~"Ja, wenn du böse wärst, schon. Wenn du aber gut bist, kommst du in deinem nächsten Leben auf eine andere Ebene. Aber du wärst trotzdem ein Totenbüchler. *Ich* zum Beispiel muß meine Seele noch 'ner Menge Bösem reinigen. Wenn ich auf den Unteren Ebenen sterben würde, würden die mich gleich einkassieren."~ */
  IF ~~ THEN REPLY #32779 /* ~"Man kommt auf eine andere Ebene, wenn man stirbt? Kannst du mir das erklären?"~ */ GOTO 20
  IF ~~ THEN REPLY #32780 /* ~"Wie kommt man denn aus einem Söldnervertrag *raus*?"~ */ GOTO 30
  IF ~~ THEN REPLY #32781 /* ~"Laß mich dich noch was anderes fragen..."~ */ GOTO 11
  IF ~~ THEN REPLY #32782 /* ~"Ich habe keine weiteren Fragen."~ */ GOTO 9
END

IF ~~ THEN BEGIN 20 // from: 19.0
  SAY #32783 /* ~"Geh und sprich mit dem anderen Todesdozenten hier, wenn du das Dunkel darüber wissen willst. Ich kann's nicht so gut erklären wie er, obwohl er zweimal so dumm ist und du dich vielleicht an der heißen Luft verbrennst, die er von sich gibt."~ */
  IF ~~ THEN REPLY #32784 /* ~"Wie kommt man denn aus einem Söldnervertrag *raus*?"~ */ GOTO 30
  IF ~~ THEN REPLY #32785 /* ~"Laß mich dich noch was anderes fragen..."~ */ GOTO 11
  IF ~~ THEN REPLY #32786 /* ~"Ich habe keine weiteren Fragen."~ */ GOTO 9
END

IF ~~ THEN BEGIN 21 // from: 14.0
  SAY #32788 /* ~"Also, Schleifer, hör zu: sie haben hier 'n paar mal gekämpft. Manchmal kriegen wir'n paar Spritzer vom Blutkrieg ab. Unsere Dame der Schmerzen, gesegnet sei ihr stählernes Herz, löscht dann den Brand..."~ */
  IF ~~ THEN REPLY #32789 /* ~"Erzähl weiter..."~ */ GOTO 22
  IF ~~ THEN REPLY #32790 /* ~"Warte... ich will dich noch mal was Anderes fragen..."~ */ GOTO 11
  IF ~~ THEN REPLY #32791 /* ~"Ach, vergiß es. Keine weiteren Fragen."~ */ GOTO 9
END

IF ~~ THEN BEGIN 22 // from: 21.0
  SAY #32792 /* ~"... zumindest *manchmal*." Er grinst verächtlich. "Gab Zeiten, wo du soviel Schiß hattest, daß du dir in die Hosen gemacht hast. Als sie in Sigil ganze Straßenblöcke angesteckt und zerstört haben, bevor sich die Dame bequemt hat, dem ein Ende zu setzen." Er schnalzt mit der Zunge und zwinkert zynisch. "Sie ist also nicht immer so scharf drauf, den Blutkrieg zu stoppen, wie man meinen könnte, verstehste?"~ */
  IF ~~ THEN REPLY #33089 /* ~"Warum nehmen die Scheusale nicht einfach Sigil ein?"~ */ GOTO 23
  IF ~~ THEN REPLY #32794 /* ~"Laß mich dich noch was anderes fragen..."~ */ GOTO 11
  IF ~~ THEN REPLY #32805 /* ~"Ich habe keine weiteren Fragen."~ */ GOTO 9
END

IF ~~ THEN BEGIN 23 // from: 22.0
  SAY #32806 /* ~Er lacht, aber sein Lachen geht in ein Husten über. "Versteh mich nicht falsch: Die Tanar-Ri und die Baatezu wollen beide unbedingt Sigil einnehmen. Das ist die beste Bühne im ganzen verdammten Multiversum. Der Käfig ist die Stadt der Tore, von der man *überall* hin kommt. Das weiß jeder. Wenn man im Blutkrieg kämpft und gewinnen will, *muß* man's einnehmen."~ */
  IF ~~ THEN REPLY #32807 /* ~"Erzähl weiter..."~ */ GOTO 24
  IF ~~ THEN REPLY #32808 /* ~"Warte... ich will dich noch mal was Anderes fragen..."~ */ GOTO 11
  IF ~~ THEN REPLY #32809 /* ~"Ach, vergiß es. Keine weiteren Fragen."~ */ GOTO 9
END

IF ~~ THEN BEGIN 24 // from: 23.0
  SAY #32810 /* ~Der Mann hustet wieder. "Nur werden die Scheusale es nicht *kriegen*, solange die Dame das Sagen hat. Sie ist hart wie Stahl und ihre Klingen schneiden tiefer als alle Klauen der Scheusale. Und gegen sie können die Scheusale nichts ausrichten. Eine ruhige Dame, mit ihren Händen in ihren Ärmeln, hält ganz allein den Blutkrieg zurück." Er lacht scharf auf.~ */
  IF ~  NearbyDialog("DGrace")
~ THEN EXTERN ~DGRACE~ 134
  IF ~  !NearbyDialog("DGrace")
~ THEN REPLY #32811 /* ~"Aber Scheusale sind in Sigil doch noch erlaubt, oder?"~ */ GOTO 25
  IF ~  !NearbyDialog("DGrace")
~ THEN REPLY #32812 /* ~"Laß mich dich noch was anderes fragen..."~ */ GOTO 11
  IF ~  !NearbyDialog("DGrace")
~ THEN REPLY #32813 /* ~"Ich habe keine weiteren Fragen."~ */ GOTO 9
END

IF ~~ THEN BEGIN 25 // from: 24.1
  SAY #32814 /* ~"Oh, natürlich. Schlägereien in den Straßen können sie sich nicht erlauben... nicht zu viele jedenfalls. Weil Sigil neutrales Gebiet ist, können sie hier mit ihren Knochenschüsseln klappern, ohne sich gegenseitig umzubringen. Manchmal handeln sie dann einen Frieden aus. Aber der hält nie lange..."~ */
  IF ~~ THEN REPLY #32815 /* ~"Erzähl weiter..."~ */ GOTO 26
  IF ~~ THEN REPLY #32816 /* ~"Warte... ich will dich noch mal was Anderes fragen..."~ */ GOTO 11
  IF ~~ THEN REPLY #32817 /* ~"Ach, vergiß es. Keine weiteren Fragen."~ */ GOTO 9
END

IF ~~ THEN BEGIN 26 // from: 25.0
  SAY #32818 /* ~"Aber weil sie sich auf den Straßen nicht abschlachten können, heißt das noch lange nicht, daß es hier keine Spione, Rekrutierungen und Verrat gibt. Sie kämpfen mit Lügen und Worten, Dussel. Manchmal ist alles nur Geschrei und Geschwätz. Und ein paar sichere Häuser gibt's auch. Da können sie ihre Klauen abkühlen, bevor's ins nächste Gefecht geht..."
~ */
  IF ~~ THEN REPLY #32819 /* ~"Erzähl weiter..."~ */ GOTO 27
  IF ~~ THEN REPLY #32820 /* ~"Warte... ich will dich noch mal was Anderes fragen..."~ */ GOTO 11
  IF ~~ THEN REPLY #32821 /* ~"Ach, vergiß es. Keine weiteren Fragen."~ */ GOTO 9
END

IF ~~ THEN BEGIN 27 // from: 26.0
  SAY #32822 /* ~"Und sie rekrutieren auch gern hier. Suchen nach Jungs mit Gier im Herzen, die frisch von den Ebenen kommen und die sie ihrer glorreichen Armee einverleiben können." Er macht eine Pause, um dich genauer anzusehen. "Vielleicht haben sie dich ja auch mal rekrutiert, was, Schleifer? Du siehst aus, als ob du schon mal im Krieg warst."~ */
  IF ~  Global("Memory_Ghysis","GLOBAL",0)
~ THEN REPLY #32823 /* ~"Das bezweifle ich."~ */ DO ~SetGlobal("Memory_Ghysis","GLOBAL",1)
~ GOTO 63
  IF ~  Global("Memory_Ghysis","GLOBAL",0)
~ THEN REPLY #32824 /* ~"Vielleicht."~ */ DO ~SetGlobal("Memory_Ghysis","GLOBAL",1)
~ GOTO 63
  IF ~  Global("Memory_Ghysis","GLOBAL",1)
~ THEN REPLY #32825 /* ~"Das bezweifle ich."~ */ GOTO 28
  IF ~  Global("Memory_Ghysis","GLOBAL",1)
~ THEN REPLY #32884 /* ~"Vielleicht."~ */ GOTO 28
  IF ~  Global("Memory_Ghysis","GLOBAL",1)
~ THEN REPLY #32885 /* ~"Vielleicht. Ich will dich noch was anderes fragen..."~ */ GOTO 11
  IF ~  Global("Memory_Ghysis","GLOBAL",1)
~ THEN REPLY #32886 /* ~"Vielleicht. Ich habe keine weiteren Fragen."~ */ GOTO 9
END

IF ~~ THEN BEGIN 28 // from: 27.2 27.3
  SAY #32887 /* ~"Der Krieg hinterläßt seine Narben, Schleifer. Das würdest du *wissen*. Und du würdest auch wissen, daß du da *nie* wieder hin willst."~ */
  IF ~~ THEN REPLY #32888 /* ~"Rekrutieren sie oft?"~ */ GOTO 29
  IF ~~ THEN REPLY #32889 /* ~"Warte... ich will dich noch mal was Anderes fragen..."~ */ GOTO 11
  IF ~~ THEN REPLY #32890 /* ~"Ach, vergiß es. Keine weiteren Fragen."~ */ GOTO 9
END

IF ~~ THEN BEGIN 29 // from: 28.0 64.0
  SAY #32891 /* ~Er nickt grimmig. "Da kannst du Gift drauf nehmen. Sigil ist die beste Futterquelle auf den ganzen Ebenen. Viel besser als den Planeten ihre besten Bewohner abzuluchsen... zu viel Arbeit."~ */
  IF ~~ THEN REPLY #32892 /* ~"Hast du noch mehr Ratschläge, wie man den Blutkrieg überleben kann?"~ */ GOTO 15
  IF ~~ THEN REPLY #32893 /* ~"Laß mich dich noch was anderes fragen..."~ */ GOTO 11
  IF ~~ THEN REPLY #32894 /* ~"Ich habe keine weiteren Fragen."~ */ GOTO 9
END

IF ~~ THEN BEGIN 30 // from: 18.0 19.1 20.0
  SAY #32895 /* ~"Wenn sie dich nicht wollen, hast du wenig Chancen. Ich hab' noch nie davon gehört, daß sie hinterhältige Typen oder einen, den sie wirklich in ihren Fängen behalten wollten, wieder rauslassen. Einem Tanar-Ri zu entwischen ist riskant aber nicht unmöglich... die Baatezu mit ihren Verträgen sind sehr viel gefährlicher. Unterschreib einen und du hast dein Leben verwirkt..."~ */
  IF ~~ THEN REPLY #32896 /* ~"Erzähl weiter..."~ */ GOTO 31
  IF ~~ THEN REPLY #32897 /* ~"Warte... ich will dich noch mal was Anderes fragen..."~ */ GOTO 11
  IF ~~ THEN REPLY #32898 /* ~"Ach, vergiß es. Keine weiteren Fragen."~ */ GOTO 9
END

IF ~~ THEN BEGIN 31 // from: 30.0
  SAY #32899 /* ~"Versuch's mit ein bißchen Zierrat, schmeichle ihnen und vielleicht lassen sie dich dann laufen... aber wo würdest du hingehen? Es gibt viele Höllen..."~ */
  IF ~~ THEN REPLY #32900 /* ~"Und wenn man im Blutkrieg stirbt, wäre das *besonders* schlecht?"~ */ GOTO 19
  IF ~  Global("CW_Ghysis_Survive","GLOBAL",0)
~ THEN REPLY #32901 /* ~"Wie hast du den Blutkrieg überlebt?"~ */ DO ~SetGlobal("CW_Ghysis_Survive","GLOBAL",1)
~ GOTO 62
  IF ~  Global("CW_Ghysis_Survive","GLOBAL",1)
GlobalLT("Ghysis","GLOBAL",2)
~ THEN REPLY #49558 /* ~"Also, wie hast du doch gleich den Blutkrieg überlebt?"~ */ GOTO 62
  IF ~  Global("Ghysis","GLOBAL",2)
~ THEN REPLY #49559 /* ~"Also, wie hast du doch gleich den Blutkrieg überlebt?"~ */ GOTO 70
  IF ~~ THEN REPLY #32902 /* ~"Laß mich dich noch was anderes fragen..."~ */ GOTO 11
  IF ~~ THEN REPLY #32903 /* ~"Ich habe keine weiteren Fragen."~ */ GOTO 9
END

IF ~~ THEN BEGIN 32 // from: 11.2
  SAY #32904 /* ~"Auf den Punkt gebracht kann ich dir das sagen: Den Blutkrieg gibt's schon seit einer verdammten Ewigkeit und er wird erst zu Ende sein, wenn die verdammte Ewigkeit selbst ins Totenbuch gesteckt wird. Die Tanar-Ri, die Verfechter des *Chaos* und Bösen, versuchen, den grünen Schiet aus den Baatezu zu prügeln, den Meistern der *Ordnung* und des Bösen. Sie schlachten sich gegenseitig ab wegen der Frage, wie das Böse sein *sollte*, kaum zu glauben. Ha!"~ */
  IF ~~ THEN REPLY #32905 /* ~"Was würde passieren, wenn jemand den Blutkrieg beenden würde?"~ */ GOTO 33
  IF ~~ THEN REPLY #32906 /* ~"Laß mich dich noch was anderes fragen..."~ */ GOTO 11
  IF ~~ THEN REPLY #32907 /* ~"Ich habe keine weiteren Fragen."~ */ GOTO 9
END

IF ~~ THEN BEGIN 33 // from: 32.0
  SAY #32908 /* ~"Du kannst in diesem Krieg überhaupt nichts ausrichten! Er ist viel zu *groß*. Du bist ein Tropfen in einem Ozean, der ein Tropfen in einem anderen Ozean ist, der ein Tropfen in einem anderen Ozean ist und so weiter bis zum Nimmerleinstag. Als Tropfen ist dein Ziel, nicht auf dich aufmerksam zu machen und im Ozean zu bleiben..."~ */
  IF ~~ THEN REPLY #32909 /* ~"Erzähl weiter..."~ */ GOTO 34
  IF ~~ THEN REPLY #32910 /* ~"Warte... ich will dich noch mal was Anderes fragen..."~ */ GOTO 11
  IF ~~ THEN REPLY #32911 /* ~"Ach, vergiß es. Keine weiteren Fragen."~ */ GOTO 9
END

IF ~~ THEN BEGIN 34 // from: 33.0
  SAY #32912 /* ~"Wenn du etwas ausrichten könntest, was du nicht *kannst*, versuch's bloß nicht. Weil dann nämlich die Ebenen einstürzen würden."~ */
  IF ~~ THEN REPLY #32913 /* ~"Die Ebenen würden einstürzen? Wieso?"~ */ GOTO 35
  IF ~~ THEN REPLY #32914 /* ~"Laß mich dich noch was anderes fragen..."~ */ GOTO 11
  IF ~~ THEN REPLY #32915 /* ~"Ich habe keine weiteren Fragen."~ */ GOTO 9
END

IF ~~ THEN BEGIN 35 // from: 34.0
  SAY #32916 /* ~Er hält seine Hände wie Säulen hoch. "Der Blutkrieg ist wie ein verdammt großer Stützbalken für die Ebenen... reiß ihn runter, und viele Ebenen krachen mit runter. Viel Zeug lastet auf dem Rücken des Krieges." Er schreit plötzlich wie ein Esel und lacht dann scharf auf. "Das größte, fieseste Lasttier aller Ebenen..."~ */
  IF ~~ THEN REPLY #32917 /* ~"Erzähl weiter..."~ */ GOTO 36
  IF ~~ THEN REPLY #32918 /* ~"Warte... ich will dich noch mal was Anderes fragen..."~ */ GOTO 11
  IF ~~ THEN REPLY #32919 /* ~"Ach, vergiß es. Keine weiteren Fragen."~ */ GOTO 9
END

IF ~~ THEN BEGIN 36 // from: 35.0
  SAY #32920 /* ~Er grinst zynisch. "Außerdem ist der Krieg *großartig* fürs Geschäft, wie manche sagen." Er lacht hohl, dann sieht er so aus, als würde er gleich losheulen. "Äh... Schwamm drüber... noch 'ne Frage?"~ */
  IF ~~ THEN REPLY #32921 /* ~"Geht's dir nicht gut? Du siehst bekümmert aus..."~ */ GOTO 37
  IF ~~ THEN REPLY #32922 /* ~"Ja, ich hätte da noch eine andere Frage..."~ */ DO ~IncrementGlobalOnceEx("GLOBALGood_Ghysis_1","GLOBALGood",1)
~ GOTO 11
  IF ~~ THEN REPLY #32923 /* ~"Nein, keine weiteren Fragen."~ */ GOTO 9
END

IF ~~ THEN BEGIN 37 // from: 36.0
  SAY #32924 /* ~Der Mann lächelt traurig. "Doch, doch, mir geht's gut... hör zu, Schleifer: Ich bin kein Priester und will auch gar keiner sein, aber merk dir das: Laß das Böse nicht in dein Herz. Wenn du mit Bösem im Herz stirbst, fällt dein Geist auf die Unteren Ebenen, wo du ein Sucher wirst..."~ */
  IF ~~ THEN REPLY #32925 /* ~"Erzähl weiter..."~ */ GOTO 38
  IF ~~ THEN REPLY #32926 /* ~"Warte... ich will dich noch mal was Anderes fragen..."~ */ GOTO 11
  IF ~~ THEN REPLY #32927 /* ~"Ach, vergiß es. Keine weiteren Fragen."~ */ GOTO 9
END

IF ~~ THEN BEGIN 38 // from: 37.0
  SAY #32928 /* ~"Weiß irgendwer, was dann passiert? Sucher im Abgrund und in Baator werden zu Infanteristen umgebogen... und müssen auf immer und ewig im Blutkrieg kämpfen." Er kichert und schüttelt den Kopf. "Darum versuchen die Baatezu und Tanar-Ri, alle zu verderben, die sie berühren: weil sie Nachschub brauchen. Merk dir: Laß das Böse nicht in dein Herz, Dussel."~ */
  IF ~~ THEN REPLY #32929 /* ~"Laß mich dich noch was anderes fragen..."~ */ GOTO 11
  IF ~~ THEN REPLY #32930 /* ~"Ich habe keine weiteren Fragen."~ */ GOTO 9
END

IF ~~ THEN BEGIN 39 // from: 11.9
  SAY #32931 /* ~"Also gut, ich erzähl euch eine Geschichte: Ich gebe euch mal ein Beispiel, was 'Fleisch' für sie bedeutet. Sie trommeln ein paar hinterhältige sterbliche Söldner zusammen, vielleicht ein paar von den mehreren Millionen, die sie haben, und lassen sie sich grundlos gegenseitig abschlachten. Dabei geht's um einen sinnlosen Kampf um irgendein machtverlassenes Stück Land. Und wo kommen *alle* diese Seelen hin, he?"~ */
  IF ~~ THEN REPLY #32932 /* ~"Wohin denn?"~ */ GOTO 40
  IF ~~ THEN REPLY #32933 /* ~"Warte... ich will dich noch mal was Anderes fragen..."~ */ GOTO 11
  IF ~~ THEN REPLY #32934 /* ~"Ach, vergiß es. Keine weiteren Fragen."~ */ GOTO 9
END

IF ~~ THEN BEGIN 40 // from: 39.0
  SAY #32935 /* ~"Ihre Seelen sinken auf die Ebenen des Bösen, auf denen sie kämpfen. Dort können sie aus der Brühe der Ebene gezogen werden und als Lemuren, Manen oder was zum Teufel auch immer aus diesen kleinen Mistscheusalen wird weiterkämpfen. Je mehr sie von diesen verdammten Suchern kriegen, desto mehr Truppen haben sie."~ */
  IF ~~ THEN REPLY #32936 /* ~"Laß mich dich noch was anderes fragen..."~ */ GOTO 11
  IF ~~ THEN REPLY #32937 /* ~"Ich habe keine weiteren Fragen."~ */ GOTO 9
END

IF ~~ THEN BEGIN 41 // from: 11.3
  SAY #32938 /* ~"Du hast ein Recht zu erfahren, wie dieser alte, brühige Schlamassel überhaupt angefangen hat: warum die Scheusale aneinander geraten sind und wieso sie sich mit Zähnen und Klauen bekämpfen, bis das der einzige Grund für ihre Existenz wurde..."~ */
  IF ~~ THEN REPLY #32939 /* ~"Erzähl weiter..."~ */ GOTO 42
  IF ~~ THEN REPLY #32940 /* ~"Warte... ich will dich noch mal was Anderes fragen..."~ */ GOTO 11
  IF ~~ THEN REPLY #32941 /* ~"Ach, vergiß es. Keine weiteren Fragen."~ */ GOTO 9
END

IF ~~ THEN BEGIN 42 // from: 41.0
  SAY #32942 /* ~"Der Grund ist ganz einfach: sie sind sich begegnet." Er seufzt. "Die Tanar-Ri und die Baatezu liefen sich eines Tages wie zwei betrunkene Pfaffen über den Weg und haben einen Streit vom Zaun gebrochen. So einfach ist das." Er runzelt die Stirn. "Dann..."~ */
  IF ~~ THEN REPLY #32943 /* ~"Erzähl weiter..."~ */ GOTO 43
  IF ~~ THEN REPLY #32944 /* ~"Warte... ich will dich noch mal was Anderes fragen..."~ */ GOTO 11
  IF ~~ THEN REPLY #32945 /* ~"Ach, vergiß es. Keine weiteren Fragen."~ */ GOTO 9
END

IF ~~ THEN BEGIN 43 // from: 42.0
  SAY #32946 /* ~"Stell dir nur mal vor: zwei betrunkene *Priester*, von denen jeder behauptet, daß nur *er* wisse, wie man zu leben hat. Stell dir die Priester vor: mit Schuppen, Fängen, Hörnern und einer grausamen Ader, die mehrere Meilen breit ist. Steck sie in eine verdammt kleine Zelle... dann kannst du dir vorstellen, was für eine Gegenliebe sich da entwickelt. Und so hat's angefangen! Der Anfang des Blutkriegs."~ */
  IF ~~ THEN REPLY #32947 /* ~"Wieso bekämpfen sich denn die beiden *bösen* Rassen?"~ */ GOTO 44
  IF ~~ THEN REPLY #32948 /* ~"Laß mich dich noch was anderes fragen..."~ */ GOTO 11
  IF ~~ THEN REPLY #32949 /* ~"Ich habe keine weiteren Fragen."~ */ GOTO 9
END

IF ~~ THEN BEGIN 44 // from: 43.0
  SAY #32950 /* ~"Der eine glaubt, das Böse sollte adrett und ordentlich sein. Der andere glaubt, das Böse sollte Chaos sein, Amok laufen auf den Ebenen. Beides ist böse, aber das heißt noch lange nicht, daß sie sich über irgendwas einig werden. Böses Blut, böses Blut... jeder will den anderen kalt machen, damit nur sein Böses übrig bleibt. Sie hassen sich wie... wie..."~ */
  IF ~~ THEN REPLY #32951 /* ~"Erzähl weiter..."~ */ GOTO 61
  IF ~~ THEN REPLY #32952 /* ~"Warte... ich will dich noch mal was Anderes fragen..."~ */ GOTO 11
  IF ~~ THEN REPLY #32953 /* ~"Ach, vergiß es. Keine weiteren Fragen."~ */ GOTO 9
END

IF ~~ THEN BEGIN 45 // from: 11.8
  SAY #32954 /* ~Der Mann nickt. "Sie zahlen gewöhnlich nicht so viel wie die Tanar-Ri, halten sich dafür aber an ihre Verträge. Aber sie sind schlau, hundert-, tausend-, *Millionen* mal schlauer und sie schließen schon seit Beginn der Zeitrechnung Verträge ab. Sie verstehen sich darauf, Leute mit Worten einzulullen. Wenn du bei ihnen Söldner wirst, dann haben sie dich in ihren Fängen und lassen dich nie mehr los..."~ */
  IF ~~ THEN REPLY #32955 /* ~"Erzähl weiter..."~ */ GOTO 46
  IF ~~ THEN REPLY #32956 /* ~"Warte... ich will dich noch mal was Anderes fragen..."~ */ GOTO 11
  IF ~~ THEN REPLY #32957 /* ~"Ach, vergiß es. Keine weiteren Fragen."~ */ GOTO 9
END

IF ~~ THEN BEGIN 46 // from: 45.0
  SAY #32958 /* ~"Sie planen wie verrückt. Sie grübeln mehr und bereiten ein einziges strategisches Gefecht gründlicher vor als die meisten menschlichen Armeen einen ganzen Feldzug." Er schnieft und kratzt sich am Kinn. "Gewöhnlich versammeln sie ihre Kräfte auf Avernus, der ersten Ebene von Baator."~ */
  IF ~~ THEN REPLY #32960 /* ~"Wie ist es denn so auf Avernus?"~ */ GOTO 47
  IF ~~ THEN REPLY #32961 /* ~"Wer kämpft denn im Blutkrieg?"~ */ GOTO 48
  IF ~~ THEN REPLY #32962 /* ~"Laß mich dich noch was anderes fragen..."~ */ GOTO 11
  IF ~~ THEN REPLY #32963 /* ~"Ich habe keine weiteren Fragen."~ */ GOTO 9
END

IF ~~ THEN BEGIN 47 // from: 46.0
  SAY #32964 /* ~"Avernus? Hm..." Der Mann zieht eine Grimasse, als ob die Erinnerung an den Ort ihm körperlichen Schmerz bereitet. "Da wohnen die Verdammten und die, die von den Verdammten leben. Die rotbefleckten Länder sind voll giftiger Sände und sengenden Feuern, die über die Landschaft brüllen. Das war mein Eindruck von Baator, der Ebene Avernus. Schrecklicher Ort."~ */
  IF ~~ THEN REPLY #32965 /* ~"Wer kämpft denn im Blutkrieg?"~ */ GOTO 48
  IF ~~ THEN REPLY #32966 /* ~"Laß mich dich noch was anderes fragen..."~ */ GOTO 11
  IF ~~ THEN REPLY #32967 /* ~"Ich habe keine weiteren Fragen."~ */ GOTO 9
END

IF ~~ THEN BEGIN 48 // from: 46.1 47.0 49.0 50.0 51.0 52.0 54.0
  SAY #32968 /* ~"Alle möglichen Kreaturen und natürlich auch verschiedene sterbliche Dussel aus allen Ebenen. Abishai und Cornugons, Lemuren und Nupperibos, Sukkuben... eine endlose Liste."~ */
  IF ~~ THEN REPLY #32969 /* ~"Erzähl mir was über die Abishai."~ */ GOTO 49
  IF ~~ THEN REPLY #32970 /* ~"Erzähl mir was über die Cornugons."~ */ GOTO 50
  IF ~~ THEN REPLY #32971 /* ~"Erzähl mir was über die Lemuren."~ */ GOTO 51
  IF ~~ THEN REPLY #32972 /* ~"Erzähl mir was über die Nupperibo."~ */ GOTO 52
  IF ~  NearbyDialog("DGrace")
~ THEN REPLY #32973 /* ~"Erzähl mir was über die Sukkuben."~ */ GOTO 53
  IF ~  !NearbyDialog("DGrace")
~ THEN REPLY #32974 /* ~"Erzähl mir was über die Sukkuben."~ */ GOTO 54
  IF ~~ THEN REPLY #32975 /* ~"Laß mich dich noch was anderes fragen..."~ */ GOTO 11
  IF ~~ THEN REPLY #32976 /* ~"Ich habe keine weiteren Fragen."~ */ GOTO 9
END

IF ~~ THEN BEGIN 49 // from: 48.0
  SAY #32977 /* ~"Sie machen die Drecksarbeit in den meisten Baatezu-Armeen. Gibt verschiedene Rassen, aber die mit den schwarzen Schuppen sind am schwächsten und am weitesten verbreitet."~ */
  IF ~~ THEN REPLY #32978 /* ~"Was für Mächte kämpfen denn noch im Blutkrieg?"~ */ GOTO 48
  IF ~~ THEN REPLY #32979 /* ~"Laß mich dich noch was anderes fragen..."~ */ GOTO 11
  IF ~~ THEN REPLY #32980 /* ~"Ich habe keine weiteren Fragen."~ */ GOTO 9
END

IF ~~ THEN BEGIN 50 // from: 48.1
  SAY #32981 /* ~"Cornugons sind *extrem* starke Burschen, Schleifer. Man sieht selten mehr als ein paar von ihnen zusammen, obwohl sie manchmal Elitetruppen bilden. Meistens führen sie die schwächeren Kampftruppen in den Kampf, wie zum Beispiel die Abishai und sterbliche Söldner."~ */
  IF ~~ THEN REPLY #32982 /* ~"Was für Mächte kämpfen denn noch im Blutkrieg?"~ */ GOTO 48
  IF ~~ THEN REPLY #32983 /* ~"Laß mich dich noch was anderes fragen..."~ */ GOTO 11
  IF ~~ THEN REPLY #32984 /* ~"Ich habe keine weiteren Fragen."~ */ GOTO 9
END

IF ~~ THEN BEGIN 51 // from: 48.2
  SAY #32985 /* ~"Lemuren sind diese... Dinger... die aussehen wie geschmolzene Menschen. Nervige kleine Typen, die sich regenerieren, während man noch dabei ist, sie zu töten. Sie haben keine Angst vor Gefahren und kennen keine Schmerzen und deshalb rennen sie auch nie vor einem Kampf weg. Sind für nicht viel mehr gut als an der Front zu sterben."~ */
  IF ~~ THEN REPLY #32986 /* ~"Was für Mächte kämpfen denn noch im Blutkrieg?"~ */ GOTO 48
  IF ~~ THEN REPLY #32987 /* ~"Laß mich dich noch was anderes fragen..."~ */ GOTO 11
  IF ~~ THEN REPLY #32988 /* ~"Ich habe keine weiteren Fragen."~ */ GOTO 9
END

IF ~~ THEN BEGIN 52 // from: 48.3
  SAY #32989 /* ~"Fette, kleine Viecher mit diesen winzig kleinen Köpfen. Sie sind taub, stumm und blind und existieren nur, um an der Front zu sterben. Sind schwer zu töten... selbst das kleinste Stück von ihnen wächst wieder nach, wenn man's abgehackt hat."~ */
  IF ~~ THEN REPLY #32990 /* ~"Was für Mächte kämpfen denn noch im Blutkrieg?"~ */ GOTO 48
  IF ~~ THEN REPLY #32991 /* ~"Laß mich dich noch was anderes fragen..."~ */ GOTO 11
  IF ~~ THEN REPLY #32992 /* ~"Ich habe keine weiteren Fragen."~ */ GOTO 9
END

IF ~~ THEN BEGIN 53 // from: 48.4
  SAY #32993 /* ~"Tanar-Ri, das sind hübsche, aber extrem böse Kreaturen. Sie verführen Sterbliche, um sie in den Abgrund zu bringen." Er nickt Grace, der Gefallenen zu. "Nimm's nicht persönlich, meine liebe Frau."~ */
  IF ~~ THEN EXTERN ~DGRACE~ 135
END

IF ~~ THEN BEGIN 54 // from: 48.5
  SAY #32997 /* ~"Tanar-Ri, das sind hübsche, aber extrem böse Kreaturen. Sie verführen Sterbliche, um sie in den Abgrund zu bringen... je mehr Sucher, desto mehr Futter für den Krieg."~ */
  IF ~~ THEN REPLY #32998 /* ~"Was für Mächte kämpfen denn noch im Blutkrieg?"~ */ GOTO 48
  IF ~~ THEN REPLY #32999 /* ~"Laß mich dich noch was anderes fragen..."~ */ GOTO 11
  IF ~~ THEN REPLY #33000 /* ~"Ich habe keine weiteren Fragen."~ */ GOTO 9
END

IF ~~ THEN BEGIN 55 // from: 11.5
  SAY #33001 /* ~"Gekämpft wird an allen möglichen Orten... *meistens* aber auf den Unteren Ebenen. Irgendwo entlang der Styx, das ist ein Fluß... auf den neun Ebenen von Baator, bei den vier Öfen von Dschehenna, auf der Grauen Einöde, auf der kalten, roten Carzeri, das ist die Gefängnisebene, und im Abgrund, dieser verdammten, ewigen Quelle des Bösen." Irgendwie kommt dir die Graue Einöde bekannt vor...~ */
  IF ~~ THEN REPLY #33002 /* ~"Erzähl mir was über die Graue Einöde."~ */ GOTO 56
  IF ~~ THEN REPLY #33003 /* ~"Laß mich dich noch was anderes fragen..."~ */ GOTO 11
  IF ~~ THEN REPLY #33004 /* ~"Ich habe keine weiteren Fragen."~ */ GOTO 9
END

IF ~~ THEN BEGIN 56 // from: 55.0
  SAY #33005 /* ~"Die Graue Einöde wird auch die 'Düsteren' genannt." Er zuckt die Schultern, dann schaudert er nur beim Gedanken daran. "Sie ist in jeder Hinsicht grau. Die Farben da verbrennen dir die Augen. Sie schreien, sind zu laut, und deine Träume werden an die Oberfläche gezogen und auf den Boden geschüttet und sind für immer verloren. Nur die Nachthexen herrschen da... die Grauen Damen der Einöde."~ */
  IF ~~ THEN REPLY #33006 /* ~"Laß mich dich noch was anderes fragen..."~ */ GOTO 11
  IF ~~ THEN REPLY #33007 /* ~"Ich habe keine weiteren Fragen."~ */ GOTO 9
END

IF ~~ THEN BEGIN 57 // from: 11.7
  SAY #33008 /* ~Der Mann nickt. "Die Tanar-Ri zahlen besser als die Baatezu, aber man muß zwei oder drei Gesichter und Augen am ganzen Körper haben, weil man ihnen nie den Rücken zuwenden darf: Sie sind chaotisch und die mit dem launischen Herz. Vertrauen oder Versprechen halten stehen bei denen nicht hoch im Kurs..."~ */
  IF ~~ THEN REPLY #33009 /* ~"Erzähl weiter..."~ */ GOTO 58
  IF ~~ THEN REPLY #33010 /* ~"Warte... ich will dich noch mal was Anderes fragen..."~ */ GOTO 11
  IF ~~ THEN REPLY #33011 /* ~"Ach, vergiß es. Keine weiteren Fragen."~ */ GOTO 9
END

IF ~~ THEN BEGIN 58 // from: 57.0
  SAY #33012 /* ~Er schnieft, dann zuckt er die Schultern. "Denen ist egal, was passiert, solange *irgendwas* passiert und es was Böses ist. Meistens greifen sie die Baatezu an, um sich nicht untereinander umzubringen."~ */
  IF ~~ THEN REPLY #33013 /* ~"Laß mich dich noch was anderes fragen..."~ */ GOTO 11
  IF ~~ THEN REPLY #33014 /* ~"Ich habe keine weiteren Fragen."~ */ GOTO 9
END

IF ~~ THEN BEGIN 59 // from: 11.4
  SAY #33015 /* ~"Weißt du, es kommt immer mal wieder irgendein lederköpfiger Dussel vorbei und bittet darum, im Blutkrieg kämpfen zu dürfen. Die woll'n ein bißchen Klimper, einen kurzen Einsatz und dann ihr Leben weiterleben. Könnte sein, daß ich einer dieser Lederköpfe war. Kann sein, daß ich meine Dienste als Schwertkämpfer verkauft hab' und gehört hab', daß man in dem Krieg ein bißchen Klimper machen kann. Hat mein Interesse geweckt..."~ */
  IF ~~ THEN REPLY #33016 /* ~"Erzähl weiter..."~ */ GOTO 60
  IF ~~ THEN REPLY #33017 /* ~"Warte... ich will dich noch mal was Anderes fragen..."~ */ GOTO 11
  IF ~~ THEN REPLY #33018 /* ~"Ach, vergiß es. Keine weiteren Fragen."~ */ GOTO 9
END

IF ~~ THEN BEGIN 60 // from: 59.0
  SAY #33019 /* ~"Aber das war mir eine Lehre: Wir sind wie Ameisen, die um die Füße von verdammten tanzenden Götter rumrennen. Ich habe große Männer gesehen, die behauptet haben, große Soldaten zu sein..." Er schüttelt den Kopf. "*Papier*-Soldaten. Der Krieg ist ein *Ofen* für sie. Entweder sie wachen auf oder *verbrennen*."~ */
  IF ~  Global("CW_Ghysis_Survive","GLOBAL",0)
~ THEN REPLY #33020 /* ~"Wie hast du denn den Blutkrieg überlebt?"~ */ DO ~SetGlobal("CW_Ghysis_Survive","GLOBAL",1)
~ GOTO 62
  IF ~  Global("CW_Ghysis_Survive","GLOBAL",1)
GlobalLT("Ghysis","GLOBAL",2)
~ THEN REPLY #49556 /* ~"Also, wie hast du doch gleich den Blutkrieg überlebt?"~ */ GOTO 62
  IF ~  Global("Ghysis","GLOBAL",2)
~ THEN REPLY #49557 /* ~"Also, wie hast du doch gleich den Blutkrieg überlebt?"~ */ GOTO 70
  IF ~~ THEN REPLY #33021 /* ~"Laß mich dich noch was anderes fragen..."~ */ GOTO 11
  IF ~~ THEN REPLY #33022 /* ~"Ich habe keine weiteren Fragen."~ */ GOTO 9
END

IF ~~ THEN BEGIN 61 // from: 44.0
  SAY #33023 /* ~Er ringt die Hände in dem Versuch, die richtigen Worte zu finden. "Nun, sie hassen nicht, wie *wir* hassen. Wir wissen gar nicht, was Haß *ist*. Wir haben ein, *ein* Wort für Haß. Sie haben..." Seine Stimme wird leise. "...Tausende, Abertausende und ihre Bedeutungen sind verdreht und aufeinandergehäuft wie... Leichen. *Deshalb* kämpfen sie."~ */
  IF ~~ THEN REPLY #33024 /* ~"Laß mich dich noch was anderes fragen..."~ */ GOTO 11
  IF ~~ THEN REPLY #33025 /* ~"Ich habe keine weiteren Fragen."~ */ GOTO 9
END

IF ~~ THEN BEGIN 62 // from: 11.0 31.1 31.2 60.0 60.1
  SAY #33026 /* ~Das Gesicht des Mannes verdunkelt sich. "Ich... also, das ist das Einzige, worüber ich nicht spreche, Schleifer. Laß mich einfach nur sagen, daß ein Mann tut, was er tun muß, um dem Krieg zu entkommen."~ */
  IF ~  Global("CW_Vrischika_Ghysis","GLOBAL",1)
~ THEN REPLY #49560 /* ~"Aber eine Frau namens Vrischika hat mir erzählt, daß du deine eigenen Männer töten mußtest, um dem Krieg zu entkommen."~ */ GOTO 74
  IF ~~ THEN REPLY #33027 /* ~"Dann laß mich dich noch was anderes fragen..."~ */ GOTO 11
  IF ~~ THEN REPLY #33028 /* ~"Dann habe ich keine Fragen mehr."~ */ GOTO 9
END

IF ~~ THEN BEGIN 63 // from: 27.0 27.1
  SAY #33029 /* ~"Der Krieg hinterläßt Narben, Schleifer. Du würdest es *wissen*. Und du würdest auch wissen, daß du da *nie* wieder hin willst." Deine Schläfen fangen an, schmerzhaft zu pochen, als du über die Worte des Mannes nachdenkst... du erinnerst dich an etwas...~ */
  IF ~  CheckStatLT(Protagonist,9,WIS)
~ THEN REPLY #33030 /* ~Versuche, dich zu erinnern.~ */ DO ~GiveExperience(Protagonist,500)
~ GOTO 65
  IF ~  CheckStatGT(Protagonist,8,WIS)
CheckStatLT(Protagonist,13,WIS)
~ THEN REPLY #33031 /* ~Versuche, dich zu erinnern.~ */ DO ~GiveExperience(Protagonist,1000)
~ GOTO 65
  IF ~  CheckStatGT(Protagonist,12,WIS)
~ THEN REPLY #33032 /* ~Versuche, dich zu erinnern.~ */ DO ~GiveExperience(Protagonist,1500)
~ GOTO 65
  IF ~~ THEN REPLY #32996 /* ~Versuch nicht, dich daran zu erinnern.~ */ GOTO 64
END

IF ~~ THEN BEGIN 64 // from: 63.3 68.0
  SAY #33035 /* ~"Schleifer? Geht's dir nicht gut?"~ */
  IF ~~ THEN REPLY #33098 /* ~"Doch... mir geht's gut. Sag mal, rekrutieren die Scheusale eigentlich oft?~ */ GOTO 29
  IF ~~ THEN REPLY #33099 /* ~"Mir geht's gut. Ich möchte dich noch was anderes fragen ..."~ */ GOTO 11
  IF ~~ THEN REPLY #33100 /* ~"Mir geht's gut. Ich habe keine weiteren Fragen."~ */ GOTO 9
END

IF ~~ THEN BEGIN 65 // from: 63.0 63.1 63.2
  SAY #33036 /* ~Die Vorlesungshalle entrückt deinem Blick, als schreckliche Visionen aus den tiefsten Tiefen deiner Gedanken hervorquellen... Visionen von einem Ort, wo die Jahreszeiten wie etwas sind, was du noch nie gefühlt oder gehört oder zu verdrängen versucht hast. Ein Ort, an dem Gebete ungehört verhallen, wie Steine zu Boden fallen... venenfarbene Blitze über etwas zucken, das einst der Himmel war, was jetzt aber unter deinen Füßen kocht und schreit, wenn du es berührst...~ */
  IF ~~ THEN REPLY #33102 /* ~Versuche, dich zu erinnern...~ */ GOTO 66
END

IF ~~ THEN BEGIN 66 // from: 65.0
  SAY #33037 /* ~Du läufst an der Spitze einer großen Gruppe von Männern durch dunkle Schluchten, deren Wände feucht beben und schlagen wie ein Herz, und du trägst als Kleidung nur dein eigenes Blut. Schließlich bist du an einem Ort, an dem das aschgraue Gelände wie eine Masse von Schlangen wuselt, die sich um deine Knöchel winden und der Erde zuflüstern, wie böse du bist. Du marschierst endlos und schweigend weiter durch dieses farblose Land, in dem die Erschöpfung zu *leben* und dich wie einen Schatten durch die Einöden zu jagen scheint und dich mit Verzweiflung peitscht...~ */
  IF ~~ THEN REPLY #33112 /* ~Versuche, dich zu erinnern...~ */ GOTO 67
END

IF ~~ THEN BEGIN 67 // from: 66.0
  SAY #33039 /* ~Nach einiger Zeit treffen du und die zerlumpten Männer, die dir folgen, auf eine Hexe, die auf einem Hügel aus gigantischen, sich windenden Larven sitzt und mit einer abgebrochenen Klaue an einem dieser schleimbedeckten Dinger pult. Du machst ein Zeichen, daß einer der Männer vorläuft und mit ihr spricht. Die kratzende Stimme der Hexe dringt bis an deine Ohren...~ */
  IF ~~ THEN REPLY #33113 /* ~Versuche, dich zu erinnern...~ */ GOTO 68
END

IF ~~ THEN BEGIN 68 // from: 67.0
  SAY #33056 /* ~"Ich würde mit ihm reden", sagte sie und gackerte dann. Ihre Augen glänzen, als sie dir den Mann zeigt. "Der hübsche da, der eure Lumpenkolonne anführt. Ich würde mit ihm reden." ...und das ist alles, woran du dich erinnern kannst.~ */
  IF ~~ THEN GOTO 64
END

IF ~  True()
~ THEN BEGIN 69 // from:
  SAY #33057 /* ~Dieser stämmige, gebeugte alte Mann hat noch immer die breiten Schultern und vernarbten, schwieligen Hände eines Arbeiters oder Kriegers. Eine Aura müder Verzweiflung scheint ihn zu umgeben. Im Moment scheint er einen Vortrag zu halten.~ */
  IF ~  Global("Ghysis","GLOBAL",0)
~ THEN REPLY #33114 /* ~Bleib, um dem Vortrag zuzuhören.~ */ DO ~SetGlobal("Ghysis","GLOBAL",1)
SetGlobal("Know_Blood_War","GLOBAL",1)
~ GOTO 0
  IF ~  GlobalGT("Ghysis","GLOBAL",0)
~ THEN REPLY #33115 /* ~Bleib, um dem Vortrag zuzuhören.~ */ DO ~SetGlobal("Know_Blood_War","GLOBAL",1)
~ GOTO 0
  IF ~~ THEN REPLY #49551 /* ~Geh weg.~ */ EXIT
END

IF ~~ THEN BEGIN 70 // from: 11.1 31.3 60.2
  SAY #33059 /* ~Ghysis' Gesicht verdunkelt sich. "Du nervst mich an! Darüber red ich mit dir nicht mehr!"~ */
  IF ~~ THEN REPLY #49554 /* ~"Dann laß mich dich was anderes fragen..."~ */ GOTO 11
  IF ~~ THEN REPLY #49555 /* ~"Wenn das so ist, hab ich keine weiteren Fragen."~ */ GOTO 9
END

IF ~~ THEN BEGIN 71 // from:
  SAY #33060 /* ~Er kichert und klatscht in die Hände. "Was für eine *Antwort*, also wirklich. Ich halte Vorträge über den Krieg, Scheifer... den Blutkrieg. Wenn dich das interessiert, dann sprich mit Splitter, dem Führer und Türsteher der Festhalle. Er sagt dir, wann die Vorträge stattfinden."~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 72 // from:
  SAY #33061 /* ~Ghysis nickt, als du dich ihm näherst. "Hallo, Schleifer. Da bist du ja wieder."~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 73 // from:
  SAY #33062 /* ~Das Gesicht des Mannes verfinstert sich. "Ich... nun, das ist etwas, worüber ich nicht rede, Schleifer. Man tut eben, was man kann, um dem Krieg zu entkommen."~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 74 // from: 62.0
  SAY #33063 /* ~Das Gesicht des Mannes wird rot vor Zorn. "Paß auf, was du sagst, Schleifer! Das ist eine Lüge! Eine erbärmliche Lüge! Bist du *von Sinnen*, mit einem Scheusel über den Krieg zu quatschen und jedes Wort zu glauben?!"~ */
  IF ~~ THEN REPLY #33124 /* ~"Das ist, was sie mir erzählt hat. Ich habe nicht gesagt, daß ich es glaube."~ */ GOTO 75
  IF ~~ THEN REPLY #33125 /* ~"Was ist dann geschehen?"~ */ GOTO 75
  IF ~~ THEN REPLY #33126 /* ~"Vergiß, daß ich es erwähnt habe. Ich hätte da noch ein paar Fragen..."~ */ DO ~SetGlobal("Ghysis","GLOBAL",2)
~ GOTO 11
  IF ~~ THEN REPLY #49566 /* ~"Vergiß es. Ich habe keine weiteren Fragen."~ */ DO ~SetGlobal("Ghysis","GLOBAL",2)
~ GOTO 9
END

IF ~~ THEN BEGIN 75 // from: 74.0 74.1
  SAY #33064 /* ~"Ich sag dir, was dann passiert ist, Dussel!" Er seufzt und beruhigt sich etwas. "Ich gehörte zur Kompanie des Brennenden Bildnisses... eigentlich waren das mal 53 sterbliche Söldner, aber nur noch neun von uns waren übrig geblieben. Wir hatten unser Lager irgendwo in Avernus aufgeschlagen und haben auf Verstärkung für die nächste Schlacht gewartet..."~ */
  IF ~~ THEN REPLY #33127 /* ~"Erzähl weiter..."~ */ GOTO 76
  IF ~~ THEN REPLY #33128 /* ~"Weißt du, den Rest muß ich mir wohl ein anderes Mal anhören."~ */ GOTO 9
END

IF ~~ THEN BEGIN 76 // from: 75.0
  SAY #33065 /* ~"Nun, meine Dienstzeit war fast zu Ende... genauer gesagt hätte ich nach der Schlacht nach Hause gehen können. Das Problem war, wäre ich da gestorben, hätten sie mich für immer gehabt , zu viel Schwärze, zuviel Böses in meinem Herz. Ich wär als Sucher in Baator geendet, als ewiger Soldat im Krieg." Er schaudert bei dem Gedanken.~ */
  IF ~~ THEN REPLY #33129 /* ~"Was ist passiert?"~ */ GOTO 77
  IF ~~ THEN REPLY #33130 /* ~"Weißt du, den Rest muß ich mir wohl ein anderes Mal anhören."~ */ GOTO 9
END

IF ~~ THEN BEGIN 77 // from: 76.0
  SAY #33066 /* ~"Ich und zwei andere Kerle sind wie Hunde weggerannt, das ist passiert. Wir rannten ein paar Tage lang über die Ebene, bevor wir zu dieser großen Säule aus lebenden Köpfen kamen... ein gräßlicher Anblick war das... sie quasselten und zischten uns an, wir sollten näherkommen. In der Nacht hab' ich mich von den anderen weggeschlichen und mit der Säule geredet."
~ */
  IF ~~ THEN REPLY #33131 /* ~"Und...?"~ */ GOTO 78
  IF ~~ THEN REPLY #33132 /* ~"Weißt du, den Rest muß ich mir wohl ein anderes Mal anhören."~ */ GOTO 9
END

IF ~~ THEN BEGIN 78 // from: 77.0
  SAY #33067 /* ~Ghysis schließt die Augen und reibt sich die Schläfen. "Ich... ich habe die Säule gefragt, wie ich befreit werden könnte, wie ich aus Baator entkommen könnte... und dafür, daß ich ihr meine zwei Gefährten überlassen habe, hat sie's mir gesagt." Er schweigt eine Weile und beißt sich auf die Fingerknöchel, als ob er versucht, seine Tränen zu unterdrücken. "Für mich hat sich das... damals... eben gerechnet."~ */
  IF ~~ THEN REPLY #33133 /* ~"Hört sich immer noch so an, als ob du sie umgebracht hast."~ */ GOTO 80
  IF ~~ THEN REPLY #33134 /* ~"Das ist ja furchtbar, eine solche Entscheidung treffen zu müssen."~ */ DO ~SetGlobal("CW_Ghysis_Survive","GLOBAL",2)
~ GOTO 79
END

IF ~~ THEN BEGIN 79 // from: 78.1
  SAY #33068 /* ~Er nickt. "Ich weiß nicht, ob ich mir das jemals selbst verzeihen kann. Jetzt bin ich nur ein Soldat, der einen Platz zum Sterben sucht. Der versucht, den Fleck des Bösen auszulöschen und meinen inneren Ghysis zu reinigen, bevor ich sterbe und zum Blutkrieg zurückkehre. Ich halte Vorträge, um die Leute von dem Ganzen fernzuhalten, und weil ich nicht will, daß sie jemals so eine Entscheidung treffen müssen."~ */
  IF ~~ THEN REPLY #33136 /* ~"Aha.. aber es hört sich immer noch so an, als ob du die beiden umgebracht hast."~ */ GOTO 80
  IF ~~ THEN REPLY #33137 /* ~"Ich verstehe, Ghysis."~ */ GOTO 9
END

IF ~~ THEN BEGIN 80 // from: 78.0 79.0
  SAY #33069 /* ~Er nickt. "Ich weiß nicht, ob ich mir das jemals selbst verzeihen kann. Jetzt bin ich nur ein Soldat, der einen Platz zum Sterben sucht. Der versucht, den Fleck des Bösen auszulöschen und meinen inneren Ghysis zu reinigen, bevor ich sterbe und zum Blutkrieg zurückkehre. Ich halte Vorträge, um die Leute von dem Ganzen fernzuhalten, und weil ich nicht will, daß sie jemals so eine Entscheidung treffen müssen."~ */
  IF ~~ THEN REPLY #33138 /* ~"Vielleicht sollte ich die Geschichte rumerzählen, Ghysis. Ich bin sicher, daß die Leute *genau* wissen wollen, wie du den Krieg überlebt hast."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Ghysis_1","GLOBALGood",-1)
~ GOTO 81
  IF ~~ THEN REPLY #33139 /* ~"Das ist okay."~ */ DO ~SetGlobal("Ghysis","GLOBAL",2)
~ GOTO 9
END

IF ~~ THEN BEGIN 81 // from: 80.0
  SAY #33070 /* ~"Ich behaupte ja nicht, daß es richtig war, Dussel, aber du mußt zugeben, daß sich jeder in so einer Situation genauso entschieden hätte. Ich nenne das *Überleben*, nicht Mord... und jetzt laß mich in Ruhe. Der alte Ghysis wird kein Wort mehr mit *dir* reden."
~ */
  IF ~~ THEN REPLY #33140 /* ~"Muß ich noch deutlicher werden, du alter Kerl? Ich ERPRESSE dich. Ich werde schweigen, wenn du mir etwas Wertvolles gibst."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Ghysis_2","GLOBALGood",-1)
~ GOTO 82
  IF ~~ THEN REPLY #33141 /* ~"Nichts... Vergiß einfach, daß ich was gesagt habe."~ */ DO ~SetGlobal("Ghysis","GLOBAL",2)
~ GOTO 9
END

IF ~~ THEN BEGIN 82 // from: 81.0
  SAY #33071 /* ~Ghysis verzieht sein Gesicht und schüttelt den Kopf. "Du... du ekelst mich an, Dussel. Hier, nimm, was ich hab', gehört alles dir... aber halt' ja die Klappe. Aber ich habe das Gefühl, daß ich weiß, wer neben mir stehen wird, falls ich wieder im Blutkrieg enden sollte..." Er gibt dir einige Münzen und eine Handvoll anderer Gegenstände.~ */
  IF ~~ THEN REPLY #33142 /* ~"Wird nicht so bald passieren, Ghysis. Und jetzt komm mit diesem Vortrag zu Ende."~ */ DO ~SetGlobal("Ghysis","GLOBAL",2)
GivePartyGold(200)
GiveItemCreate("ClotChrm",Protagonist,1,0,0)
GiveItemCreate("ClotChrm",Protagonist,1,0,0)
GiveItemCreate("BloodFly",Protagonist,1,0,0)
~ GOTO 9
END
