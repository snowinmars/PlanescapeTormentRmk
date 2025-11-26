// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DBROCUS6.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\de_DE\dialog.tlk
// dialogF  : (none)

BEGIN ~DBROCUS6~

IF ~  NumTimesTalkedTo(0)
NearbyDialog("DMorte")
~ THEN BEGIN 0 // from:
  SAY #3208 /* ~Dieses seltsame, würfelförmige Wesen scheint zu gleichen Teilen Maschine und lebendes Wesen zu sein. Als du dich dem Ding näherst, starrt es dich stumm mit weit geöffneten Augen an, ohne zu blinzeln. Sein Gesicht zeigt nicht die geringste Spur einer Emotion.~ */
  IF ~~ THEN EXTERN ~DMORTE~ 429
END

IF ~  NumTimesTalkedTo(0)
!NearbyDialog("DMorte")
~ THEN BEGIN 1 // from:
  SAY #40748 /* ~Dieses seltsame, würfelförmige Wesen scheint zu gleichen Teilen Maschine und lebendes Wesen zu sein. Als du dich dem Ding näherst, starrt es dich stumm mit weit geöffneten Augen an, ohne zu blinzeln. Sein Gesicht zeigt nicht die geringste Spur einer Emotion.~ */
  IF ~~ THEN REPLY #40749 /* ~"Sei gegrüßt..."~ */ DO ~SetGlobal("Met_Modrons","GLOBAL",1)
~ GOTO 3
  IF ~~ THEN REPLY #40750 /* ~Laß es in Ruhe.~ */ EXIT
END

IF ~  NumTimesTalkedToGT(0)
~ THEN BEGIN 2 // from:
  SAY #40751 /* ~Der Modron starrt dich stumm an.~ */
  IF ~  Global("Modron_ID","AR0605",0)
~ THEN REPLY #40752 /* ~"Ich hätte da ein paar Fragen..."~ */ GOTO 4
  IF ~  Global("Modron_ID","AR0605",1)
~ THEN REPLY #40753 /* ~"Ich hätte da ein paar Fragen..."~ */ GOTO 10
  IF ~~ THEN REPLY #40754 /* ~Laß es in Ruhe.~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 1.0
  SAY #40755 /* ~Seine Stimme ist metallisch und nachhallend, als ob es ein Ton wäre, der auf irgendeinem verzogenen Musikinstrument gespielt wird. "Deine Grüße seien erwidert." Es gibt ein sanftes *klick*, als das Wesen blinzelt. Eine peinliche Stille hängt zwischen euch beiden in der Luft.~ */
  IF ~  Global("Modron_ID","AR0605",0)
~ THEN REPLY #40756 /* ~"Ich hätte da ein paar Fragen..."~ */ GOTO 4
  IF ~  Global("Modron_ID","AR0605",1)
~ THEN REPLY #40757 /* ~"Ich hätte da ein paar Fragen..."~ */ GOTO 10
  IF ~~ THEN REPLY #65533 /* ~"Ich muß jetzt gehen. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 2.0 3.0
  SAY #40758 /* ~"Identifiziere dich."~ */
  IF ~~ THEN REPLY #40759 /* ~"Aber... meine Fragen..."~ */ GOTO 5
  IF ~~ THEN REPLY #40760 /* ~"Es ist nicht wichtig, wer ich bin."~ */ GOTO 6
  IF ~~ THEN REPLY #40761 /* ~Lüge: "Ich bin... Adahn."~ */ DO ~SetGlobal("Modron_ID","AR0605",1)
IncrementGlobal("Adahn","GLOBAL",1)
IncrementGlobalOnceEx("GLOBALChaotic_Brocust6_1","GLOBALLaw",-1)
~ GOTO 7
  IF ~~ THEN REPLY #40762 /* ~"Ich bin nicht sicher, wer ich bin."~ */ GOTO 8
  IF ~~ THEN REPLY #40763 /* ~"Vergiß es... Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 4.0
  SAY #40764 /* ~"Die Identität eines Subjekts zu lernen ist von hoher Priorität. Verschiedene Fragen zu beantworten, die vielleicht von dem Subjekt gestellt werden, ist von niedrigerer Priorität. Identifiziere dich."~ */
  IF ~~ THEN REPLY #40765 /* ~"Es ist nicht wichtig, wer ich bin."~ */ GOTO 6
  IF ~~ THEN REPLY #40766 /* ~Lüge: "Ich bin... Adahn."~ */ DO ~SetGlobal("Modron_ID","AR0605",1)
IncrementGlobal("Adahn","GLOBAL",1)
IncrementGlobalOnceEx("GLOBALChaotic_Brocust6_1","GLOBALLaw",-1)
~ GOTO 7
  IF ~~ THEN REPLY #40767 /* ~"Ich bin nicht sicher, wer ich bin."~ */ GOTO 8
  IF ~~ THEN REPLY #40768 /* ~"Vergiß es... Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 6 // from: 4.1 5.0 8.0
  SAY #40769 /* ~"Die Meinung des Subjekts bezüglich der Wichtigkeit seiner Identität ist irrelevant. Wir erachten die Identität des Subjekts als wichtig. Daher ist sie zu allen Zwecken und Zielen wichtig."~ */
  IF ~~ THEN REPLY #40770 /* ~Lüge: "Ich bin... Adahn."~ */ DO ~SetGlobal("Modron_ID","AR0605",1)
IncrementGlobal("Adahn","GLOBAL",1)
IncrementGlobalOnceEx("GLOBALChaotic_Brocust6_1","GLOBALLaw",-1)
~ GOTO 7
  IF ~~ THEN REPLY #40771 /* ~"Ich bin nicht sicher, wer ich bin."~ */ GOTO 8
  IF ~~ THEN REPLY #40772 /* ~"Vergiß es... Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 7 // from: 4.2 5.1 6.0 8.2
  SAY #40773 /* ~Das Wesen kippt auf seinen metallenen Beinen leicht nach vorn und dann zurück. Ob diese Bewegung eine Verbeugung oder ein Nicken andeuten soll, ist dir nicht klar. "Wir würden uns selbst als Modronen, vom Typ Quadron, die geflügelte Variante, identifizieren, Adahn."~ */
  IF ~~ THEN REPLY #40774 /* ~"Ich hätte da jetzt ein paar Fragen..."~ */ GOTO 10
  IF ~~ THEN REPLY #40775 /* ~"Ich werde jetzt gehen. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 8 // from: 4.3 5.2 6.1
  SAY #40776 /* ~"Wir würden gern wissen, warum das so ist."~ */
  IF ~~ THEN REPLY #40777 /* ~"Es ist eigentlich nicht wichtig..."~ */ GOTO 6
  IF ~~ THEN REPLY #40778 /* ~"Das weiß ich selbst nicht. Ich kann mich einfach nicht erinnern."~ */ DO ~SetGlobal("Modron_ID","AR0605",1)
~ GOTO 9
  IF ~~ THEN REPLY #40779 /* ~Lüge: "Ich bin... Adahn."~ */ DO ~SetGlobal("Modron_ID","AR0605",1)
IncrementGlobal("Adahn","GLOBAL",1)
IncrementGlobalOnceEx("GLOBALChaotic_Brocust6_1","GLOBALLaw",-1)
~ GOTO 7
  IF ~~ THEN REPLY #40780 /* ~"Vergiß es... Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 9 // from: 8.1
  SAY #40781 /* ~"Alle Dinge sollten einen Namen haben. Alle Dinge sollten identifiziert werden. Wir finden deine Antwort unbefriedigend, aber sie wird für den Augenblick genügen müssen." Das Wesen hält inne und blinzelt dich an. "Wir würden uns selbst als Modronen, vom Typ Quadron, die geflügelte Variante, identifizieren."~ */
  IF ~~ THEN REPLY #40782 /* ~"Ich hätte da jetzt ein paar Fragen..."~ */ GOTO 10
  IF ~~ THEN REPLY #40783 /* ~"Ich werde jetzt gehen. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 10 // from: 2.1 3.1 7.0 9.0 11.1 12.1 13.1 14.1 15.0 16.1 17.0 18.0 19.1 20.0 21.0 22.0 23.0 25.0
  SAY #40784 /* ~"Es steht dem Subjekt frei, eine Frage zu stellen."~ */
  IF ~  PartyHasItem("Cube")
Global("Know_Cube","GLOBAL",0)
~ THEN REPLY #40785 /* ~"Weißt du, was dieses kleine, würfelartige Spielzeugwesen ist?"~ */ DO ~SetGlobal("Know_Cube_Puzzle","GLOBAL",1)
~ GOTO 24
  IF ~~ THEN REPLY #40786 /* ~"Was machst du hier?"~ */ GOTO 11
  IF ~~ THEN REPLY #40787 /* ~"Was kannst du mir über diesen Ort erzählen?"~ */ GOTO 16
  IF ~  Global("Ecco_Speak","GLOBAL",1)
Global("Ecco_Name","AR0605",0)
~ THEN REPLY #40788 /* ~"Was kannst du mir über die schweigsame Prostituierte erzählen?"~ */ DO ~SetGlobal("Ecco_Name","AR0605",1)
~ GOTO 18
  IF ~  Global("Ecco_Speak","GLOBAL",1)
GlobalGT("Ecco_Name","AR0605",0)
~ THEN REPLY #68126 /* ~"Was kannst du mir über die stumme Hure erzählen?"~ */ GOTO 18
  IF ~  Global("Know_Kesai_Ravel","AR0605",1)
!Global("Kesai","GLOBAL",3)
~ THEN REPLY #40789 /* ~"Ich hab gehört, Kesai-Serris ist Ravels Tochter. Stimmt das?"~ */ GOTO 19
  IF ~  Global("Scent_Quest","AR0605",1)
~ THEN REPLY #40790 /* ~"Ich bin auf der Suche nach Vivians Duft... Weißt du, wo er sein könnte?"~ */ GOTO 21
  IF ~  Global("Veil_Quest","AR0605",1)
~ THEN REPLY #40791 /* ~"Ich suche Marissas Purpurschleier... Weißt du, wo er sein könnte?"~ */ GOTO 21
  IF ~  Global("Know_Ravel","GLOBAL",1)
~ THEN REPLY #40792 /* ~"Weißt du etwas über Ravel Rätselschön?"~ */ GOTO 22
  IF ~  GlobalGT("Dolora","GLOBAL",0)
Global("Grace_Quest","GLOBAL",1)
GlobalGT("Ecco","GLOBAL",0)
GlobalGT("Yves","GLOBAL",0)
GlobalGT("Vivian","GLOBAL",0)
GlobalGT("Nenny","GLOBAL",0)
GlobalGT("SadJuli","GLOBAL",0)
GlobalGT("Marissa","GLOBAL",0)
GlobalGT("Kesai","GLOBAL",0)
GlobalGT("Kimasxi","GLOBAL",0)
~ THEN REPLY #40793 /* ~"Ich habe insgesamt mit neun Prostituierten gesprochen... Weißt du, wer oder wo die zehnte Schülerin ist?"~ */ GOTO 23
  IF ~~ THEN REPLY #40794 /* ~"Vergiß es einfach. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 11 // from: 10.1
  SAY #40795 /* ~"Unser Ziel hier ist Beobachtung."~ */
  IF ~~ THEN REPLY #40796 /* ~"Was beobachtest du?"~ */ GOTO 12
  IF ~~ THEN REPLY #40797 /* ~"Ich hätte da noch eine Frage..."~ */ GOTO 10
  IF ~~ THEN REPLY #40798 /* ~"Mehr wollt' ich gar nicht wissen. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 12 // from: 11.0
  SAY #40799 /* ~"Wir beobachten ein Subjekt des Personals dieses Etablissements."~ */
  IF ~~ THEN REPLY #40800 /* ~"Wen beobachtest du?"~ */ GOTO 13
  IF ~~ THEN REPLY #40801 /* ~"Ich hätte da noch eine Frage..."~ */ GOTO 10
  IF ~~ THEN REPLY #40802 /* ~"Mehr wollt' ich gar nicht wissen. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 13 // from: 12.0
  SAY #40803 /* ~"Wie bereits festgestellt, beaobachten wir ein Subjekt des Personals dieses Etablissements."~ */
  IF ~~ THEN REPLY #40804 /* ~"Ja, aber wen *genau* beobachtest du?"~ */ GOTO 14
  IF ~~ THEN REPLY #40805 /* ~"Ich hätte da noch eine Frage..."~ */ GOTO 10
  IF ~~ THEN REPLY #40806 /* ~"Mehr wollt' ich gar nicht wissen. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 14 // from: 13.0
  SAY #40807 /* ~"Das Objekt unserer Beobachtung wird 'Dolora' genannt."~ */
  IF ~~ THEN REPLY #40808 /* ~"Warum beobachtest du sie?"~ */ GOTO 15
  IF ~~ THEN REPLY #40809 /* ~"Ich hätte da noch eine Frage..."~ */ GOTO 10
  IF ~~ THEN REPLY #40810 /* ~"Mehr wollt' ich gar nicht wissen. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 15 // from: 14.0
  SAY #40811 /* ~"Wir sind nicht darüber informiert worden, zu welchem Zweck uns unsere gegenwärtige Aufgabe übertragen wurde. Der Befehl unseres übergeordneten Pentadrons ist ausreichender Grund, die besagte Aufgabe durchzuführen. Der bzw. die Zwecke an sich sind für uns irrelevant."~ */
  IF ~~ THEN REPLY #40812 /* ~"Ich hätte da noch eine Frage..."~ */ GOTO 10
  IF ~~ THEN REPLY #40813 /* ~"Mehr wollt' ich gar nicht wissen. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 16 // from: 10.2
  SAY #40814 /* ~"Ein Gebäude in dem Bereich Sigils, der allgemein als der Bezirk der Kuratoren bekannt ist. Wir können nicht die exakten Koordinaten geben, da sich die Oberfläche Sigils in zeitlichen Abständen ändert, die wir zur Zeit noch nicht bestimmt haben. Das Gebäude selbst ist als das Bordell zum Befriedigen Intellektueller Lüste bekannt. Es dient einem Zweck, der grob als Sprachenschule umrissen werden kann. Die Schüler der Schule sind hauptsächlich Weibchen, die beabsichtigen, zu einem Zeitpunkt, den wir noch nicht bestimmt haben und der von Schüler zu Schüler variiert, ein Bundmitglied der Gesellschaft der Empfindung zu werden."~ */
  IF ~~ THEN REPLY #40815 /* ~"Die Gesellschaft der Empfindung?"~ */ GOTO 17
  IF ~~ THEN REPLY #40816 /* ~"Ich hätte da noch eine Frage..."~ */ GOTO 10
  IF ~~ THEN REPLY #40817 /* ~"Mehr wollt' ich gar nicht wissen. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 17 // from: 16.0
  SAY #40818 /* ~"Wir werden eine kurze Zusammenfassung zur Definition der Gesellschaft der Empfindung vortragen: Ein Bund, dessen Kernglaube darin besteht, daß durch Erfahrungen ein echtes Verständnis des Multiversums und seiner Geheimnisse erzielt werden kann."~ */
  IF ~~ THEN REPLY #40819 /* ~"Ich hätte da noch eine Frage..."~ */ GOTO 10
  IF ~~ THEN REPLY #40820 /* ~"Mehr wollt' ich gar nicht wissen. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 18 // from: 10.3 10.4
  SAY #40821 /* ~"Das angesprochene Subjekt heißt 'Ecco'. Wir haben keine weiteren Informationen zu dem besagten Subjekt gesammelt."~ */
  IF ~~ THEN REPLY #40822 /* ~"Ich hätte da noch eine Frage..."~ */ GOTO 10
  IF ~~ THEN REPLY #40823 /* ~"Mehr wollt' ich gar nicht wissen. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 19 // from: 10.5
  SAY #40824 /* ~"Würden wir über die Gewißheit dessen hypothetisieren, auf welche Ravel sich hier bezogen wird, würden wir noch immer kein Mittel besitzen zu bestimmen, ob Ravel die Mutter von Kesai ist oder nicht."~ */
  IF ~~ THEN REPLY #40825 /* ~"Welche Ravel? Gibt es denn mehr als eine?"~ */ GOTO 20
  IF ~~ THEN REPLY #40826 /* ~"Ich hätte da noch eine Frage..."~ */ GOTO 10
  IF ~~ THEN REPLY #40827 /* ~"Mehr wollt' ich gar nicht wissen. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 20 // from: 19.0
  SAY #40828 /* ~"Wir können solches nicht als Tatsache feststellen, sondern müssen in Betracht ziehen, daß nicht weniger als 11.032 Ebenen unendlich im Umfang sind, von denen nicht weniger als 3.701 von empfindungsfähigen Lebewesen bewohnt werden, die individuelle Namen verwenden. Daher ist anzunehmen, daß es zu jedem beliebigen Zeitpunkt eine unendliche Anzahl von Lebewesen dieses Namens geben könnte."~ */
  IF ~~ THEN REPLY #40829 /* ~"Ich hätte da noch eine Frage..."~ */ GOTO 10
  IF ~~ THEN REPLY #40830 /* ~"Mehr wollt' ich gar nicht wissen. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 21 // from: 10.6 10.7
  SAY #40831 /* ~"Das tun wir nicht. Wenn du dich nicht momentan in genau diesem Prozeß befindest, würden wir den methodischen Ansatz vorschlagen, bei dem du jeden Einwohner dieses Gebäudes befragst."~ */
  IF ~~ THEN REPLY #40832 /* ~"Ich hätte da noch eine Frage..."~ */ GOTO 10
  IF ~~ THEN REPLY #40833 /* ~"Dann frag ich einfach weiter rum. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 22 // from: 10.8
  SAY #40834 /* ~"Wir wissen nichts über ein Wesen oder Objekt, das eine solche Benennung besitzt."~ */
  IF ~~ THEN REPLY #40835 /* ~"Ich hätte da noch eine Frage..."~ */ GOTO 10
  IF ~~ THEN REPLY #40836 /* ~"Dann leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 23 // from: 10.9
  SAY #40837 /* ~"Das tun wir nicht. Wir haben bisher noch nicht den Versuch unternommen, jeden der Einwohner dieses Gebäudes zu katalogisieren, und haben auch nicht vor, das irgendwann zu tun."~ */
  IF ~~ THEN REPLY #40838 /* ~"Ich hätte da noch eine Frage..."~ */ GOTO 10
  IF ~~ THEN REPLY #40839 /* ~"Dann leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 24 // from: 10.0
  SAY #40840 /* ~Der Modron, dessen Aussehen in jedem Aspekt außer seiner Größe mit dem Objekt in deinen Händen identisch ist, blinzelt einmal, zweimal, und spricht dann: "Das Objekt ist ein Portalwürfel. Der Benutzer muß die Gliedmaßen des Portalwürfels in eine solche Position bringen, daß er aktiviert wird. Wenn er aktiviert ist, transportiert der Portalwürfel den Benutzer zu dem Ziel, auf das er bei seiner Erstellung eingestellt wurde."~ */
  IF ~~ THEN REPLY #40841 /* ~"Was ist die richtige Position, in der dieser hier aktiviert wird?"~ */ GOTO 25
  IF ~~ THEN REPLY #40842 /* ~"Wohin bringt dieser Würfel seinen Benutzer?"~ */ GOTO 25
END

IF ~~ THEN BEGIN 25 // from: 24.0 24.1
  SAY #40843 /* ~"Wir verfügen nicht über diese Information. Mehr als siebenundneunzig Prozent aller Portalwürfel funktionieren in einer Weise, die sich leicht von der Funktionsweise der anderen unterscheidet. Wir waren bei der Konstruktion des Portalwürfels des Subjekts nicht anwesend und haben auch keine Anleitungen zu seiner Verwendung erhalten. Sollte das Subjekt den Portalwürfel anzuwenden wünschen, muß es die Methode seines Betriebs sowie sein Ziel über eine Versuchsreihe bestimmen."~ */
  IF ~~ THEN REPLY #40844 /* ~"Ich hätte da noch eine Frage..."~ */ GOTO 10
  IF ~~ THEN REPLY #40845 /* ~"Dann leb wohl."~ */ EXIT
END
