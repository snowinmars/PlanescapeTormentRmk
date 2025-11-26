// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DPHAROD.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\de_DE\dialog.tlk
// dialogF  : (none)

BEGIN ~DPHAROD~

IF ~  Global("Pharod","GLOBAL",0)
~ THEN BEGIN 0 // from:
  SAY #2841 /* ~Vor dir steht ein alter Mann, der sich mit seinem ganzen Gewicht auf eine Krücke stützt. Sein linkes Bein ist verdreht, als wäre er dafür bestraft worden, daß er mal versucht hat, in zwei Richtungen gleichzeitig zu gehen. Seine madenfarbige, mit Leberflecken bedeckte Haut ist oben am Schädel zusammengerafft. Nuschelnd und schmatzend läßt er seinen Blick durch den Raum schweifen.~ */
  IF ~~ THEN REPLY #17912 /* ~"Sei gegrüßt."~ */ DO ~SetGlobal("Pharod","GLOBAL",1)
~ JOURNAL #17915 /* ~Ich habe *endlich* Pharod in einem begrabenen Dorf unter dem Lumpensammler-Platz gefunden. Leider riecht es dort nicht besser als im Stock... Wenigstens könnte Pharod Informationen für mich haben.~ */ GOTO 3
  IF ~~ THEN REPLY #17913 /* ~Ignoriere den Mann und erkunde den Raum.~ */ EXIT
END

IF ~  GlobalGT("Pharod","GLOBAL",0)
Global("Pharod_Quest","GLOBAL",0)
~ THEN BEGIN 1 // from:
  SAY #2842 /* ~Du siehst Pharod. Er läßt seine Augen durch das Zimmer wandern. Dabei nuschelt er vor sich hin und leckt sich die Lippen. Seine teigige Haut fällt sogar im flackernden Licht der Fackel auf.~ */
  IF ~~ THEN REPLY #17916 /* ~"Sei gegrüßt."~ */ GOTO 3
  IF ~~ THEN REPLY #17917 /* ~Ignoriere Pharod und erkunde den Raum.~ */ EXIT
END

IF ~  GlobalGT("Pharod","GLOBAL",0)
GlobalGT("Pharod_Quest","GLOBAL",1)
~ THEN BEGIN 2 // from:
  SAY #2843 /* ~"Ah, Leiche..." Pharod dreht sich um, als du näherkommst. Dabei *klackert* seine Krücke auf den Pflastersteinen im Hof. "Herzlich willkommen..."~ */
  IF ~~ THEN REPLY #17918 /* ~"Ich hätte da ein paar Fragen an dich, Pharod."~ */ GOTO 17
  IF ~~ THEN REPLY #17919 /* ~"Ich habe keine Zeit zum Reden, Pharod. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 0.0 1.0
  SAY #17834 /* ~"Aha!" Seine Augen leuchten, als er deine Stimme hört. "Schön, daß die Ware immer wieder in Pharods Arme zurückkehrt! Sei gegrüßt, Leiche." Er lächelt boshaft. "Willst du Pharod fragen, ob er noch 'ne Spritztour mit dir zur Leichenhalle macht?"~ */
  IF ~~ THEN REPLY #17920 /* ~"Pharod, ich brauche Informationen. Ich habe gehört,, daß du etwas über mich weißt."~ */ GOTO 4
  IF ~~ THEN REPLY #17921 /* ~"Nein, ich bin hier, um dich was zu fragen, was nur du beantworten kannst."~ */ GOTO 6
  IF ~~ THEN REPLY #17922 /* ~"Ja, Pharod, ich bin wieder da. Ist alles nach Plan gelaufen?"~ */ GOTO 9
  IF ~~ THEN REPLY #17923 /* ~"Ich habe keine Zeit, mit dir zu reden, Pharod. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 3.0
  SAY #17835 /* ~"Was über dich weiß...?" Pharods Miene verfinstert sich. Er mustert dich von Kopf bis Fuß und nuschelt vor sich hin. "Leiche...? Ja oder nein?" Jetzt schaut er dir in die Augen. "Ah! Nein..."~ */
  IF ~~ THEN REPLY #17924 /* ~"Pharod? Was ist los?"~ */ GOTO 7
  IF ~~ THEN REPLY #17925 /* ~"Sieh genau hin... weißt du, wer ich bin?"~ */ GOTO 7
  IF ~~ THEN REPLY #17926 /* ~"Ich habe keine Zeit, mit dir zu reden, Pharod. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 9.0 9.2 9.4
  SAY #17836 /* ~Die kleinste Unsicherheit in deinem Ton oder eine Sprechpause verrät dich... Pharod hält inne; mit finsterer Miene beginnt er, dich genau zu mustern. "Leiche...? Ja oder nein?" Eure Blicke kreuzen sich. "Ah! Nein..."~ */
  IF ~~ THEN REPLY #17927 /* ~"Pharod...?"~ */ GOTO 6
END

IF ~~ THEN BEGIN 6 // from: 3.1 5.0
  SAY #17837 /* ~Er nuschelt leise vor sich hin, während er dich von Kopf bis Fuß begutachtet. "Das ist hier kein Schauspiel-Wettbewerb, Leiche. Pharod hat keine Zeit für Spielchen... Wer bist du? Was stellst du solche Fragen?"~ */
  IF ~~ THEN REPLY #17928 /* ~Wahrheit: "Ich habe mein Gedächtnis verloren, und man hat mir gesagt, daß ich dich aufsuchen soll. Weil du etwas über mich weißt."~ */ DO ~IncrementGlobalOnceEx("GLOBALLawful_Pharod_1","GLOBALLaw",1)
~ GOTO 8
  IF ~~ THEN REPLY #17929 /* ~"Ich brauche Antworten, Pharod. Ich habe gehört, daß ich sie von dir kriegen könnte."~ */ GOTO 8
END

IF ~~ THEN BEGIN 7 // from: 4.0 4.1
  SAY #17838 /* ~Pharod mustert dich mit gleichmütigem Gesicht. "Das ist hier kein Schauspiel-Wettbewerb, Leiche. Pharod hat keine Zeit für Spielchen... Was stellst du solche Fragen?"~ */
  IF ~~ THEN REPLY #17930 /* ~Wahrheit: "Ich habe mein Gedächtnis verloren, und man hat mir gesagt, daß ich dich aufsuchen soll. Weil du etwas über mich weißt."~ */ DO ~IncrementGlobalOnceEx("GLOBALLawful_Pharod_1","GLOBALLaw",1)
~ GOTO 8
  IF ~~ THEN REPLY #17931 /* ~"Ich brauche Antworten, Pharod. Ich habe gehört, daß ich sie von dir kriegen könnte."~ */ GOTO 8
END

IF ~~ THEN BEGIN 8 // from: 6.0 6.1 7.0 7.1
  SAY #17839 /* ~"Äh..." Pharod leckt sich die Lippen; es kratzt wie Sand auf trockenem Pergament. "Wer hat dir das denn erzählt, Leiche?"~ */
  IF ~~ THEN REPLY #17932 /* ~Wahrheit: "Nun, niemand hat es mir wirklich *gesagt*. Diese Tätowierungen auf meinem Rücken... daher weiß ich, daß ich dich aufsuchen soll, sollte ich jemals mein Gedächtnis verlieren."~ */ DO ~IncrementGlobalOnceEx("GLOBALLawful_Pharod_2","GLOBALLaw",1)
~ GOTO 14
  IF ~~ THEN REPLY #17933 /* ~"Wer würde mir so was ohne Grund sagen? Bist du nicht Pharod?"~ */ GOTO 14
END

IF ~~ THEN BEGIN 9 // from: 3.2
  SAY #17840 /* ~"Ja. Alles nach Plan... meine Sammler haben genau das getan, worum du gebeten hast." Er stützt sein ganzes Gewicht auf den Krückstock, der daraufhin gefährlich knarrt. "Aber... mit dem Glitzerding hatten wir weniger Glück. Weißt du zufällig, *wo* das Ding da unten ist? Das wär mir eine große Hilfe..."~ */
  IF ~  CheckStatLT(Protagonist,13,CHR)
~ THEN REPLY #17934 /* ~"Bitte, Pharod... um was habe ich deine Sammler noch mal gebeten? Was sollten sie machen?"
~ */ GOTO 5
  IF ~  CheckStatGT(Protagonist,12,CHR)
~ THEN REPLY #17935 /* ~"Bitte, Pharod... um was habe ich deine Sammler noch mal gebeten? Was sollten sie machen?"~ */ GOTO 11
  IF ~  CheckStatLT(Protagonist,13,CHR)
~ THEN REPLY #17936 /* ~"Nein... was hast du da noch mal gesagt, über eine 'Spritztour zur Leichenhalle'?"~ */ GOTO 5
  IF ~  CheckStatGT(Protagonist,12,CHR)
~ THEN REPLY #17937 /* ~"Nein... was hast du da noch mal gesagt, über eine 'Spritztour zur Leichenhalle'?"~ */ GOTO 12
  IF ~  CheckStatLT(Protagonist,13,CHR)
~ THEN REPLY #17938 /* ~"Glitzerding?"~ */ GOTO 5
  IF ~  CheckStatGT(Protagonist,12,CHR)
~ THEN REPLY #17939 /* ~"Glitzerding?"~ */ GOTO 10
  IF ~~ THEN REPLY #17940 /* ~"Vergiß es, Pharod. Ich muß jetzt gehen."~ */ EXIT
END

IF ~~ THEN BEGIN 10 // from: 9.5 11.1 12.1 13.1
  SAY #17841 /* ~"Die *Kugel*, Leiche, die Kugel! Hast du..." Pharods Stimme klingt verzweifelt und flehend wie die eines Bettlers - dann beruhigt er sich wieder. "Macht nichts... Ich werd sie finden."~ */
  IF ~~ THEN REPLY #17941 /* ~"Bitte, Pharod... um was habe ich deine Sammler noch mal gebeten? Was sollten sie machen?"~ */ GOTO 11
  IF ~~ THEN REPLY #17942 /* ~"Was hast du da vorhin gesagt, über eine 'Spritztour zur Leichenhalle'?"~ */ GOTO 12
  IF ~~ THEN REPLY #17943 /* ~"Vergiß es, Pharod. Ich muß jetzt gehen."~ */ EXIT
END

IF ~~ THEN BEGIN 11 // from: 9.1 10.0 12.0 13.0
  SAY #17842 /* ~Pharod klopft mit seinem Stock auf das Steinpflaster. Dann verlagert er sein Gewicht auf die Fersen. "Wie du sagtest -" Er leckt sich die Lippen. "Daß sie, wenn sie dich finden, gut auf dich aufpassen und dafür sorgen sollen, daß du auch wirklich in die Leichenhalle kommst und so." Er schaut dich fast besorgt an. "Wieso? Hat jemand den Spieß gedreht und dich woanders abgeladen?"~ */
  IF ~~ THEN REPLY #17944 /* ~"Nein, aber beantworte mir dies: Wie hätte ich aus der Leichenhalle herauskommen sollen, nachdem ich dort abgeladen wurde?"~ */ GOTO 13
  IF ~~ THEN REPLY #17945 /* ~"Nein... was hast du da vorhin mit 'Glitzerding' gemeint?"
~ */ GOTO 10
  IF ~~ THEN REPLY #17946 /* ~"Vergiß es, Pharod. Ich muß jetzt gehen."~ */ EXIT
END

IF ~~ THEN BEGIN 12 // from: 9.3 10.1
  SAY #17843 /* ~"Ach... ja?" Pharod nickt. "Die Leichenhalle. Staubies und so." Seine Stimme senkt sich, und seine Finger streichen nervös über den Knauf des Krückstocks. "Wir sind doch quitt, Leiche? Oder stimmt was nicht?"~ */
  IF ~~ THEN REPLY #17947 /* ~"Bitte, Pharod... um was habe ich deine Sammler noch mal gebeten? Was sollten sie machen?"~ */ GOTO 11
  IF ~~ THEN REPLY #17948 /* ~"Was hast du da vorhin mit 'Glitzerding' gemeint?"~ */ GOTO 10
  IF ~~ THEN REPLY #17949 /* ~"Vergiß es, Pharod. Ich muß jetzt gehen."~ */ EXIT
END

IF ~~ THEN BEGIN 13 // from: 11.0
  SAY #17844 /* ~Pharod lacht leise vor sich hin. Dann kratzt er sich. "Ah, Leiche, du sagtest nichts davon, daß du aus diesem Loch wieder *raus* wolltest... Du warst nur versessen drauf, reinzukommen. Es schien, als hättest du schon geplant, wie du den Staubies eins grinsen würdest, sobald wir dich reingeschleust hätten. Ich dachte, wir sind quitt."
~ */
  IF ~~ THEN REPLY #17950 /* ~"Bitte, Pharod... um was habe ich deine Sammler noch mal gebeten? Was sollten sie machen?"~ */ GOTO 11
  IF ~~ THEN REPLY #17951 /* ~"Was hast du da vorhin mit 'Glitzerding' gemeint?"~ */ GOTO 10
  IF ~~ THEN REPLY #17952 /* ~"Vergiß es, Pharod. Ich muß jetzt gehen."~ */ EXIT
END

IF ~~ THEN BEGIN 14 // from: 8.0 8.1
  SAY #17845 /* ~"Ah... so wenige Worte, die so viel sagen..." Pharod verstummt. Plötzlich hast du das Gefühl, von Pharod wie eine Leiche auf einer Totenbank seziert zu werden. "Ich weiß vieles, das dich interessieren würde. Sehr vieles, sogar..." Pharod verzieht sein Gesicht langsam zu einem Lächeln. Dabei schieben sich seine Gesichtsfalten wie ein Vorhang zusammen.~ */
  IF ~~ THEN REPLY #17953 /* ~"Was weißt du über mich?"~ */ GOTO 15
END

IF ~~ THEN BEGIN 15 // from: 14.0
  SAY #17846 /* ~Pharod leckt sich die Lippen und stützt sich wie ein Geier auf seinen Stock. "Nein, nein... Meine Antworten sind nicht umsonst." Seine teigigen Finger trommeln gegen den Stock. "Ich kann dir vieles erzählen, aber nicht umsonst."~ */
  IF ~~ THEN REPLY #17954 /* ~"Sprich weiter, Pharod..."~ */ GOTO 34
END

IF ~  GlobalGT("Pharod","GLOBAL",0)
Global("Pharod_Quest","GLOBAL",1)
~ THEN BEGIN 16 // from:
  SAY #17847 /* ~"Ah, Leiche..." Pharod dreht sich um, als du näherkommst. Dabei *klackert* sein Stock auf das Pflaster im Hof. Er leckt sich die Lippen und lächelt erwartungsvoll. "Hast du mitgebracht, worum ich dich gebeten habe?"~ */
  IF ~  PartyHasItem("Bsphere")
~ THEN REPLY #17955 /* ~"Die Bronzekugel? Sie ist hier."~ */ DO ~SetGlobal("Pharod_Quest","GLOBAL",2)
TakePartyItemNum("Bsphere",1)
AddexperienceParty(15000)
~ GOTO 54
  IF ~~ THEN REPLY #17956 /* ~"Ich hätte erst noch ein paar Fragen..."~ */ GOTO 17
  IF ~  !PartyHasItem("Bsphere")
~ THEN REPLY #17957 /* ~"Noch nicht. Ich komme zurück, wenn ich sie habe."~ */ EXIT
  IF ~  PartyHasItem("Bsphere")
~ THEN REPLY #17958 /* ~"Ich... bin immer noch auf der Suche. Ich komme zurück, wenn ich sie habe."~ */ EXIT
END

IF ~~ THEN BEGIN 17 // from: 2.0 16.1 18.1 19.0 20.1 21.1 22.3 23.1 24.1 25.0 26.1 27.1 28.1 29.2 30.1 31.0 44.0 45.3 46.2 47.1 48.1 49.1 50.1 51.1 52.1 53.0 54.1 55.1 56.3 57.2 58.1 59.2 60.1 61.2 62.4 63.2 64.2 65.3 66.1 67.1 68.1 69.1 71.2 73.1 74.1 76.1 79.0 80.0 85.1 86.2 87.0
  SAY #17848 /* ~"Dann frag!" Pharod klopft mit seiner Krücke auf die Steine, als ob er gerade ein Urteil verkünde. "Nun komm schon, Leiche, Zeit ist Geld, und ich hab bald keine Geduld mehr."~ */
  IF ~~ THEN REPLY #17959 /* ~"Als du mich begrüßt hast, hast du gesagt, daß du mit mir 'eine Spritztour zur Leichenhalle' machen willst. Was hast du damit gemeint?"~ */ GOTO 18
  IF ~~ THEN REPLY #17960 /* ~"Was ist dies für ein Ort?"~ */ GOTO 20
  IF ~  Global("Journal","GLOBAL",0)
~ THEN REPLY #17961 /* ~"Als ich in der Leichenhalle aufgewacht bin, war mein Journal weg. Weißt du, wo es ist?"~ */ GOTO 79
  IF ~  Global("Story_Reekwind_Pharod","GLOBAL",1)
~ THEN REPLY #17962 /* ~"Ich habe einmal eine Geschichte über einen Mann namens Pharod gehört. Ein König der Lumpen."~ */ GOTO 26
  IF ~  Global("Know_Pharod_Bodies","GLOBAL",0)
~ THEN REPLY #17963 /* ~"Ich habe gehört, daß du sehr viele Leichen gefunden hast, Pharod. Wo kommen sie her?"~ */ GOTO 45
  IF ~  GlobalGT("Pharod","GLOBAL",2)
~ THEN REPLY #17964 /* ~"Ich frage dich noch mal, denn ich habe dir gebracht, was du verlangt hast: Was weißt du über mich?"~ */ GOTO 58
  IF ~  GlobalGT("Pharod","GLOBAL",2)
~ THEN REPLY #17965 /* ~"Noch einmal: Hast du irgendwas von meiner Leiche genommen, als du sie gefunden hast?"~ */ GOTO 69
  IF ~  GlobalGT("Pharod","GLOBAL",2)
~ THEN REPLY #17966 /* ~"Wo hat Annah noch mal meine Leiche gefunden?"~ */ GOTO 74
  IF ~~ THEN REPLY #17967 /* ~"Keine Fragen... leb wohl, Pharod."~ */ EXIT
END

IF ~~ THEN BEGIN 18 // from: 17.0
  SAY #17849 /* ~"Das frag ich dich, Leiche - sind dir die Staubies vielleicht lieber als ein knackiges Mädel?" Pharod klopft mit seiner Krücke so fest auf den Boden, daß es durch den ganzen Hof hallt. "Äußerst nett von den Staubies, dich einfach so rein und rausspazieren zu lassen, wie es dir gefiel, obwohl du nicht mal Anstand genug hattest, dich ins Totenbuch schreiben zu lassen."~ */
  IF ~~ THEN REPLY #17968 /* ~"Ich wollte in die Leichenhalle rein? Aber warum?"~ */ JOURNAL #17971 /* ~Pharod hat gesagt, daß ich aus irgendeinem Grund *zurück* zur Leichenhalle wollte... Aber warum? Habe ich dort etwas gesucht?~ */ GOTO 19
  IF ~~ THEN REPLY #17969 /* ~"Ich hätte da noch ein paar Fragen."~ */ GOTO 17
  IF ~~ THEN REPLY #17970 /* ~"Ich muß jetzt gehen. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 19 // from: 18.0
  SAY #17850 /* ~Pharod sagt spöttisch: "Leiche, wenn du so erpicht drauf warst, reinzukommen, dann kannst du mir doch nicht weismachen wollen, daß du nicht mehr weißt, weshalb? Manchmal ist es ein Wunder, daß die Ebenen sich drehen..."~ */
  IF ~~ THEN REPLY #17972 /* ~"Schon gut. Ich hätte da noch ein paar Fragen..."~ */ GOTO 17
  IF ~~ THEN REPLY #17973 /* ~"Ich hab' genug gehört. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 20 // from: 17.1
  SAY #17851 /* ~Pharod rollt mit den Augen, läßt sie über die Decke, die Wände und dann über den Boden wandern. "Das hier ist der Hof der Kranken Winde - glaub nicht, den Namen hätte ich mir selbst ausgesucht - und die Absteige vor dem Hof ist das Begrabene Dorf, Leiche."~ */
  IF ~~ THEN REPLY #17974 /* ~"Was ist das Begrabene Dorf?"~ */ GOTO 21
  IF ~~ THEN REPLY #17975 /* ~"Schon gut. Ich hätte aber noch ein paar Fragen..."~ */ GOTO 17
  IF ~~ THEN REPLY #17976 /* ~"Mehr will ich gar nicht hören. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 21 // from: 20.0
  SAY #17852 /* ~"Da gibt es so eine Geschichte..." Pharod leckt sich wieder die Lippen und zuckt mit den Achseln. "Aber ehrlich gesagt langweilt sie mich. Machen wir's kurz: Eines Tages wurde ein Stück des Stocks zugepflastert. Ein Teil Sigils wurde einfach ins Totenbuch geschrieben."~ */
  IF ~~ THEN REPLY #17977 /* ~"Wie meinst du das?"~ */ GOTO 22
  IF ~~ THEN REPLY #17978 /* ~"Vergiß es. Ich hätte da noch ein paar andere Fragen an dich..."~ */ GOTO 17
  IF ~~ THEN REPLY #17979 /* ~"Mehr wollt' ich gar nicht wissen. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 22 // from: 21.0
  SAY #17853 /* ~"Du kennst sie doch, diese schwebenden Ziegenköpfe, diese Dabus, die Diener der Dame? Na ja, egal, wenn nicht - sie sind die ganze Zeit nur am Reparieren, Bauen, Abreißen und Vergraben. Verstehst du?"~ */
  IF ~  Global("Know_Dabus","GLOBAL",0)
~ THEN REPLY #17980 /* ~"Dabus?"~ */ DO ~SetGlobal("Know_Dabus","GLOBAL",1)
~ GOTO 23
  IF ~  GlobalGT("Know_Dabus","GLOBAL",0)
~ THEN REPLY #17981 /* ~"Dabus?"~ */ GOTO 23
  IF ~~ THEN REPLY #17982 /* ~"Ja. Erzähl weiter."~ */ GOTO 24
  IF ~~ THEN REPLY #17983 /* ~"Vergiß es. Ich hätte da noch ein paar andere Fragen an dich..."~ */ GOTO 17
  IF ~~ THEN REPLY #17984 /* ~"Na, egal. Ich muß mich verabschieden. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 23 // from: 22.0 22.1
  SAY #17854 /* ~"Diese Ziegenköpfe? Hey, hast du deinen Verstand an der Tür abgegeben?! Diese schwebenden Wesen mit dem Hammer, die immer in Symbolen jammern? Die Vollstrecker des Willens der Dame?" Pharod klopft mit dem Stock auf das Pflaster, was ein lautes, pochendes Geräusch erzeugt. "Na, komm schon. Ich hab' keine Zeit für solche Witze. Pharods Geduld ist bald am Ende."~ */
  IF ~~ THEN REPLY #17985 /* ~"In Ordnung, red' weiter."~ */ GOTO 24
  IF ~~ THEN REPLY #17986 /* ~"Vergiß es. Ich hätte da noch ein paar andere Fragen an dich..."~ */ GOTO 17
  IF ~~ THEN REPLY #17987 /* ~"Na, egal. Ich muß mich verabschieden. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 24 // from: 22.2 23.0
  SAY #17855 /* ~"Also, der Plausch besagt... und es ist ein staubiger Plausch, so alt ist er schon... daß diese Dabus eines Tages einen Teil des Stocks zugepflastert haben. Doch die ganzen Knochengerüste dachten bald nicht mehr daran und fingen an, ihren Müll dort zu deponieren und alle Spuren zu verwischen." Pharod lächelt. "Verrückt, was? Ein Teil Sigils, den man einfach so vergessen hat?"~ */
  IF ~~ THEN REPLY #17988 /* ~"Wie hast du es gefunden?"~ */ GOTO 25
  IF ~~ THEN REPLY #17989 /* ~"Aha. Ich hätte da noch ein paar andere Fragen an dich..."~ */ GOTO 17
  IF ~~ THEN REPLY #17990 /* ~"Mehr wollt' ich gar nicht wissen. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 25 // from: 24.0
  SAY #17856 /* ~Pharod zischt. "*Tsss*. Ich habe noch Augen im Kopf, Leiche, und Ohren auch. Und wenn ich es schaffe, beide zu kombinieren, ist es gar nicht so schwer, das Dunkel vieler Dinge herauszufinden." Pharod reibt über seine schmutzige Robe. "War das alles, worüber du meine Rübe ausquetschen wolltest? Du bist wohl kaum hier, nur um dir die Geschichte dieses Lochs anzuhören?"~ */
  IF ~~ THEN REPLY #17991 /* ~"Ich hatte da noch ein paar andere Fragen an dich..."~ */ GOTO 17
  IF ~~ THEN REPLY #17992 /* ~"Nein, das ist alles, was ich wissen wollte. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 26 // from: 17.3
  SAY #17857 /* ~Pharods linkes Auge öffnet sich weit, obwohl du nicht sagen kannst, ob er das bewußt macht oder sich nur seine Hautfalten zusammenschieben. "So, so? In Sigil wird allerhand erzählt. Aber eine Geschichte, die sich um Pharod dreht, kann keine Geschichte sein, die diese Ohren nicht hören wollen." Er grinst spöttisch. "Verdingst du dich jetzt als Geschichtenerzähler?"~ */
  IF ~~ THEN REPLY #17993 /* ~"Das ist eine seltsame Geschichte. Sie handelt von einem einflußreichen, wohlhabenden Mann, der alles hatte und dann feststellte, daß er nichts hatte."~ */ GOTO 27
  IF ~~ THEN REPLY #17994 /* ~"Nein. Ich hätte da noch ein paar andere Fragen an dich."~ */ GOTO 17
  IF ~~ THEN REPLY #17995 /* ~"Nein, das ist alles, was ich wissen wollte. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 27 // from: 26.0
  SAY #17858 /* ~Pharod gefriert das Lächeln im Gesicht, und seine Augen beginnen, merkwürdig zu funkeln. "Willst du diese Geschichte wirklich erzählen, Leiche? Obwohl dir das Ende nicht gefallen könnte?"~ */
  IF ~~ THEN REPLY #17996 /* ~"Der Mann war solch ein Lügner, ein Betrüger, daß er sich selbst in die Ecke bugsiert hatte. Er entdeckte, daß der Tod ihn, wenn er ihn holen käme, an einen schrecklichen Ort bringen würde."~ */ GOTO 28
  IF ~~ THEN REPLY #17997 /* ~"Dann will ich dich mal was fragen..."~ */ GOTO 17
  IF ~~ THEN REPLY #17998 /* ~"Dann halte ich jetzt meinen Mund. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 28 // from: 27.0
  SAY #17859 /* ~Pharods Lächeln erstirbt; er leckt sich die Lippen. Er wirkt... verängstigt.~ */
  IF ~~ THEN REPLY #17999 /* ~"Er war entschlossen, diesem Schicksal zu entgehen und suchte deshalb verzweifelt nach einem Ausweg. Er wollte das Schicksal austricksen, so wie er andere ausgetrickst hatte."~ */ GOTO 29
  IF ~~ THEN REPLY #18000 /* ~"Hier endet die Geschichte. Aber jetzt will ich dich mal was fragen..."~ */ GOTO 17
  IF ~~ THEN REPLY #18001 /* ~"Ich habe genug gesagt. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 29 // from: 28.0
  SAY #17860 /* ~Pharod verzieht das Gesicht, als hätte er einen schlechten Geschmack im Mund.~ */
  IF ~  GlobalLT("Pharod","GLOBAL",3)
~ THEN REPLY #18002 /* ~"Er fand eine Antwort... oder er fand einen Ort, an dem er die Antwort suchen konnte. Man sagte ihm, im Müll von Sigil nach dem zu suchen, wodurch er seinem Schicksal entkommen würde. Nun, Pharod... vielleicht kannst du mir sagen, wie die Geschichte endet."~ */ GOTO 32
  IF ~  GlobalGT("Pharod","GLOBAL",2)
~ THEN REPLY #18003 /* ~Er fand eine Antwort... bzw. er fand einen Ort, an dem er die Antwort suchen konnte. Man sagte ihm, im Müll von Sigil nach dem zu suchen, wodurch er seinem Schicksal entkommen würde. Ist das die Kugel? Etwas, mit dem man dem Schicksal eins grinsen kann?"~ */ GOTO 30
  IF ~~ THEN REPLY #18004 /* ~"Hier endet die Geschichte. Aber jetzt will ich dich mal was fragen..."~ */ GOTO 17
  IF ~~ THEN REPLY #18005 /* ~"Ich habe genug gesagt. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 30 // from: 29.1
  SAY #17861 /* ~Pharod starrt dich an. Seine Finger trommeln gegen den Stock. "Das werden wir schon noch sehen, wir beide." Er grinst höhnisch. "Und womit willst *du* dem Schicksal eins grinsen? Du bist ohne Glitzerding, ohne ein Schmuckstück. So ein Pech aber auch."~ */
  IF ~~ THEN REPLY #18006 /* ~"Du weißt nicht, was die Kugel ist, oder?"~ */ GOTO 31
  IF ~~ THEN REPLY #18007 /* ~"Ich werde es herausfinden. Ich hätte da noch ein paar andere Fragen an dich..."~ */ GOTO 17
  IF ~~ THEN REPLY #18008 /* ~"Wir werden sehen, Pharod. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 31 // from: 30.0
  SAY #17862 /* ~Pharod zischt dich an: "Finden reicht erst mal, Leiche. Alles andere ergibt sich dann."~ */
  IF ~~ THEN REPLY #18009 /* ~"Na gut. Ich habe noch ein paar andere Fragen an dich..."~ */ GOTO 17
  IF ~~ THEN REPLY #18010 /* ~"Wir werden sehen, Pharod. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 32 // from: 29.0
  SAY #17863 /* ~Pharods Gesicht verzieht sich zu einem Knurren. "Sie hat KEIN Ende! Nicht für mich!" Du siehst zu, wie das Blut seine Gesichtszüge füllt. "Und nun habe ich eine Geschichte für DICH, Leiche!"~ */
  IF ~~ THEN REPLY #18011 /* ~"Na g..."~ */ GOTO 33
  IF ~~ THEN REPLY #18012 /* ~"Ich w..."~ */ GOTO 33
END

IF ~~ THEN BEGIN 33 // from: 32.0 32.1
  SAY #17864 /* ~Pharod versucht, dich mit dem Finger zu fassen; dieser ist jetzt krumm wie ein Hirtenstab. "Eine Leiche besucht Pharod in seinem Hof, macht viel Wind um ein Versprechen und behauptet, sie würde FINDEN, was Pharod braucht - und was bringt sie mit? *Nichts*! Du hast dein Versprechen nicht eingehalten, Leiche! Oder bestreitest du das?! Wenn ja, dann heißt das, daß du mich angelogen hast. Und ich muß dafür *sterben*!"~ */
  IF ~  Global("Pharod_Quest","GLOBAL",1)
~ THEN REPLY #18013 /* ~"Ich bin noch auf der Suche danach, Pharod. Wenn ich sie finde, bringe ich sie dir. Ich habe keine Versprechen gebrochen."~ */ GOTO 80
  IF ~  PartyHasItem("Bsphere")
~ THEN REPLY #18014 /* ~"Meinst du die Bronzekugel? Krieg dich wieder ein... Hier ist sie."~ */ DO ~SetGlobal("Pharod_Quest","GLOBAL",2)
TakePartyItemNum("Bsphere",1)
AddexperienceParty(4000)
~ GOTO 54
END

IF ~~ THEN BEGIN 34 // from: 15.0
  SAY #17865 /* ~Pharod klopft mit dem Krückstock aufs Pflaster und grinst höhnisch. "Dieses Dorf ist nicht das Einzige, was unter dem Lumpensammler-Platz begraben liegt."~ */
  IF ~~ THEN REPLY #18041 /* ~"Ja...?"~ */ GOTO 35
END

IF ~~ THEN BEGIN 35 // from: 34.0
  SAY #17866 /* ~"Kammern, Gewölbe, Korridore... und darin lauter Tote, die in ihren Särgen schlafen. Aber in diesen Hallen, irgendwo da unten, liegt etwas, das dort nicht hingehört, etwas, das mir gehört."~ */
  IF ~  CheckStatGT(Protagonist,12,WIS)
~ THEN REPLY #18042 /* ~"Was ist es?"~ */ GOTO 36
  IF ~  CheckStatLT(Protagonist,13,WIS)
~ THEN REPLY #18043 /* ~"Was?"~ */ GOTO 37
END

IF ~~ THEN BEGIN 36 // from: 35.0
  SAY #17867 /* ~"Es ist so ein kleines Ding, nichts von Wert..." Pharods Worte erzeugen ein Echo, als würden zwei Personen dasselbe sagen... Du kennst diese Worte... Du hast sie schon einmal gehört... aus deinem eigenen Munde.~ */
  IF ~~ THEN REPLY #18044 /* ~"...es ist eine Kugel. Aus Bronze. Häßlich. Fühlt sich an wie ein Ei, und riecht nach vergammelter Vanillesoße. Stimmt's?"~ */ GOTO 38
  IF ~~ THEN REPLY #18045 /* ~Schweige und höre zu.~ */ GOTO 37
END

IF ~~ THEN BEGIN 37 // from: 35.1 36.1
  SAY #17868 /* ~"Es ist so ein kleines Ding, nichts von Wert..." Pharod dreht sich wie verlegen weg; seine Stimme jedoch wird scharf wie ein Messer. "Eine Kugel. Aus Bronze. Häßlich. Fühlt sich an, wie ein Ei, ist aber keins, und riecht nach vergammelter Vanillesoße. Hol sie mir - tu mir diesen winzigen Gefallen - dann tu ich auch was für dich."~ */
  IF ~~ THEN REPLY #18046 /* ~"Weißt du, wo diese Kugel ist?"~ */ GOTO 40
  IF ~~ THEN REPLY #18047 /* ~"Warum läßt du nicht einen deiner Sammler danach suchen?"~ */ GOTO 39
END

IF ~~ THEN BEGIN 38 // from: 36.0
  SAY #17869 /* ~Pharod verstummt. Dann nickt er. "Ja... Was verbirgst du vor mir, Leiche?" Er lacht. "Bist du hier, um herauszufinden, ob ich noch weiß, was ich will?"
~ */
  IF ~~ THEN REPLY #18048 /* ~"Weißt du, wo diese Kugel ist?"~ */ GOTO 40
  IF ~~ THEN REPLY #18049 /* ~"Warum läßt du nicht einen deiner Sammler danach suchen?"~ */ GOTO 39
END

IF ~~ THEN BEGIN 39 // from: 37.1 38.1 40.0
  SAY #17870 /* ~"Weil die Korridore nicht noch mehr Tote aus diesem Dorf brauchen." Pharod zischt abfällig. "Tss. Stark, schnell, clever... Das sind die Qualitäten, die meine Dorfbewohner nicht haben. Sie gehen nach unten - sie kehren nicht zurück." Pharod sieht dich an. "Vielleicht werden die Toten ihresgleichen ja willkommen heißen, hmmm? Das ist es, was *ich* glaube, Leiche."~ */
  IF ~~ THEN REPLY #18050 /* ~"Weißt du, wo diese Kugel ist?"~ */ GOTO 40
  IF ~~ THEN REPLY #18051 /* ~"Na gut... ich mach's. Aber ich will wissen, was ich für dieses Schmuckstück kriege."~ */ GOTO 41
END

IF ~~ THEN BEGIN 40 // from: 37.0 38.0 39.0
  SAY #17871 /* ~"Ah..." Pharods Seufzer ist wie treibender Sand. "Was glaubst du wohl, weshalb ich dich gebeten habe, danach zu suchen, Leiche? Ich weiß nicht, *wo* sie ist. Ich weiß, daß sie tief vergraben ist, viel tiefer, als je ein Dorfbewohner vorgedrungen ist." Pharod zischt. "Tss. Vielleicht liegt sie in den Katakomben, wo die Wasser tief sind, tief..."~ */
  IF ~~ THEN REPLY #18052 /* ~"Warum läßt du nicht einen deiner Sammler danach suchen?"~ */ GOTO 39
  IF ~~ THEN REPLY #18053 /* ~"Na gut... ich mach's. Aber ich will wissen, was ich für dieses Schmuckstück kriege."~ */ GOTO 41
END

IF ~~ THEN BEGIN 41 // from: 39.1 40.1
  SAY #17872 /* ~"In meiner Rübe rattert es nur so vor Weisheit, Leiche." Er hält einen vertrockneten Finger hoch. "Ein Teil davon ist dieses Stück Weisheit: Jeder *will* etwas, ob er es nun weiß oder nicht. Ich weiß viel über dich... viel, das du wissen *willst*..."~ */
  IF ~~ THEN REPLY #18054 /* ~"Ich bezweifle, daß du mir irgendwas Nützliches sagen kannst, Pharod."~ */ GOTO 43
  IF ~~ THEN REPLY #18055 /* ~"Na gut, ich werde versuchen, diese Kugel für dich zu finden... wenn du mir sagst, was du weißt."~ */ GOTO 44
  IF ~~ THEN REPLY #18056 /* ~Wahrheit: "Vielleicht solltest du mir lieber sagen, was du weißt, Pharod, oder ich schreibe deinen Namen mit deinem Blut ins Totenbuch."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Pharod_1","GLOBALGood",-1)
~ GOTO 42
  IF ~~ THEN REPLY #18057 /* ~Täuschung: "Vielleicht solltest du mir lieber sagen, was du weißt, Pharod, oder ich schreibe deinen Namen mit deinem Blut ins Totenbuch."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Pharod_1","GLOBALLaw",-1)
~ GOTO 42
END

IF ~~ THEN BEGIN 42 // from: 41.2 41.3 43.0 43.1
  SAY #17873 /* ~Pharods nächste Worte hören sich an, als hätte er sie zuvor auswendig gelernt. "Dann wird all mein Wissen mit mir sterben, Leiche... Wenn ich sterbe, wird es zu Asche werden. Und du wirst nichts davon haben..."~ */
  IF ~~ THEN REPLY #18058 /* ~"Ich bezweifle, daß du mir irgendwas Nützliches sagen kannst, Pharod."~ */ GOTO 43
  IF ~~ THEN REPLY #18059 /* ~"Na gut, ich werde versuchen, diese Kugel für dich zu finden... wenn du mir sagst, was du weißt."~ */ GOTO 44
END

IF ~~ THEN BEGIN 43 // from: 41.0 42.0
  SAY #17874 /* ~"Ich kenne noch eine andere unbezahlbare Weisheit... Du bekommst sie umsonst: Ein Mensch *irrt* sich in vielen wichtigen Dingen. Ein toter Mensch hat sich einmal zuviel geirrt." Pharod leckt sich die Lippen. "Ich könnte dir so viel Nützliches erzählen."~ */
  IF ~~ THEN REPLY #18060 /* ~Wahrheit: "Vielleicht solltest du mir lieber sagen, was du weißt, Pharod, oder ich schreibe deinen Namen mit deinem Blut ins Totenbuch."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Pharod_1","GLOBALGood",-1)
~ GOTO 42
  IF ~~ THEN REPLY #18061 /* ~Täuschung: "Vielleicht solltest du mir lieber sagen, was du weißt, Pharod, oder ich schreibe deinen Namen mit deinem Blut ins Totenbuch."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Pharod_1","GLOBALLaw",-1)
~ GOTO 42
  IF ~~ THEN REPLY #18062 /* ~"Na gut, ich werde versuchen, diese Kugel für dich zu finden... wenn du mir sagst, was du weißt."~ */ GOTO 44
END

IF ~~ THEN BEGIN 44 // from: 41.1 42.1 43.2
  SAY #17875 /* ~"Gut, abgemacht..." Pharod *donnert* seinen Krückstock auf das Pflaster. "Eine Kugel gegen einen Einblick in meine Rübe. Nun denn, Leiche - wir haben keine Zeit zu verlieren. Geh zum Tor im Südosten und sag diesen schlafenden Idioten, sie sollen es dir öffnen - aber mach schnell, schnell."~ */
  IF ~~ THEN REPLY #18063 /* ~"Moment mal... ich hätte da noch ein paar andere Fragen an dich, bevor ich gehe..."~ */ DO ~SetGlobal("Pharod_Quest","GLOBAL",1)
~ JOURNAL #18065 /* ~Ich habe eingewilligt, für Pharod in die Katakomben hinabzusteigen und ihm eine Bronzekugel zu bringen. Er glaubt, daß die Kugel sich im tiefsten Teil der Katakomben befindet... dort wo das Wasser die Gänge überspült hat. Der Eingang zum ersten Teil der Katakomben ist im südöstlichen Bereich des Dorfes, hinter dem Tor... Pharod hat gesagt, daß ich den Wachen von meiner Aufgabe erzählen soll, damit sie mir die Tore öffnen.~ */ GOTO 17
  IF ~~ THEN REPLY #18064 /* ~"Na gut. Ich werde jetzt zu dem Tor und in die Katakomben gehen."~ */ DO ~SetGlobal("Pharod_Quest","GLOBAL",1)
~ JOURNAL #18065 /* ~Ich habe eingewilligt, für Pharod in die Katakomben hinabzusteigen und ihm eine Bronzekugel zu bringen. Er glaubt, daß die Kugel sich im tiefsten Teil der Katakomben befindet... dort wo das Wasser die Gänge überspült hat. Der Eingang zum ersten Teil der Katakomben ist im südöstlichen Bereich des Dorfes, hinter dem Tor... Pharod hat gesagt, daß ich den Wachen von meiner Aufgabe erzählen soll, damit sie mir die Tore öffnen.~ */ EXIT
END

IF ~~ THEN BEGIN 45 // from: 17.4
  SAY #17876 /* ~"Verrät ein Magier etwa die Geheimnisse seiner Kunst? Genauso wenig tun dies die Sammler..." Pharod runzelt die Stirn. "Aber ich könnte es dir sagen... Wenn du versprichst, daß du die Sache vertraulich behandelst."~ */
  IF ~  CheckStatGT(Protagonist,13,CHR)
~ THEN REPLY #18066 /* ~"Vergleichst du dich mit einem *Magier*, Pharod? Ich glaube, du beleidigst dieses Handwerk."~ */ GOTO 46
  IF ~~ THEN REPLY #18067 /* ~Schwur: "Was ich höre, ist nur für meine Ohren bestimmt."~ */ DO ~IncrementGlobalOnceEx("GLOBALLawful_Pharod_3","GLOBALLaw",1)
~ JOURNAL #18071 /* ~Ich habe Pharod versprochen, niemandem zu erzählen, woher er die Leichen bekommt.~ */ GOTO 48
  IF ~~ THEN REPLY #18068 /* ~Lüge: "Was ich höre, ist nur für meine Ohren bestimmt."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Pharod_2","GLOBALLaw",-1)
~ JOURNAL #18072 /* ~Ich habe gelogen und "geschworen", daß ich niemandem erzählen würde, woher Pharod die Leichen bekommt. Der alte Ghul hat mir tatsächlich geglaubt... Ich glaube, er brannte nur darauf, jemandem zu erzählen, wie klug er ist.~ */ GOTO 48
  IF ~~ THEN REPLY #18069 /* ~"So viel will ich gar nicht wissen. Ich hätte da noch ein paar andere Fragen..."~ */ GOTO 17
  IF ~~ THEN REPLY #18070 /* ~"Vergiß es. Ich muß jetzt gehen. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 46 // from: 45.0
  SAY #17877 /* ~Pharod läuft rot an und schlägt mit dem Krückstock auf den Boden. "Das Leichensammeln ist genauso knifflig wie so mancher Zaubertrick."~ */
  IF ~  Global("Pharod_Extortion_Bodies","GLOBAL",0)
~ THEN REPLY #18073 /* ~"Pharod, ein paar Leichen finden und verkaufen kann man wohl kaum mit dem Studium der Magie vergleichen."~ */ DO ~AddexperienceParty(500)
SetGlobal("Pharod_Extortion_Bodies","GLOBAL",1)
~ GOTO 47
  IF ~  Global("Pharod_Extortion_Bodies","GLOBAL",1)
~ THEN REPLY #18074 /* ~"Ich hab's schon mal gesagt, Pharod: Einen Stapel Leichen finden und verkaufen kann man wohl kaum mit dem Studium der Magie vergleichen."~ */ GOTO 47
  IF ~~ THEN REPLY #18075 /* ~"Ich will mit dir jetzt nicht darüber streiten. Ich hätte da  noch ein paar andere Fragen..."~ */ GOTO 17
  IF ~~ THEN REPLY #18076 /* ~"Ich muß jetzt gehen. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 47 // from: 46.0 46.1
  SAY #17878 /* ~"Und wie hab' ich wohl diesen Ort hier gefunden?!" Pharod brüllt dich an; seine Finger halten krampfhaft den Krückstock umklammert. "Es erforderte nicht wenig Gespür, diesen Ort zu finden und etwas aus ihm zu machen!"~ */
  IF ~~ THEN REPLY #18077 /* ~"Das Begrabene Dorf? Komm schon, was ist sein Geheimnis?"~ */ JOURNAL #18080 /* ~Ich habe Pharod mit List dazu gebracht, mir zu erzählen, woher er die Leichen bekommt, ohne versprechen zu müssen, es niemandem zu erzählen. Ich glaube nicht einmal, daß er es gemerkt hat..., der Dummkopf.~ */ GOTO 48
  IF ~~ THEN REPLY #18078 /* ~"Ich will mit dir jetzt nicht darüber streiten. Ich hätte da  noch ein paar andere Fragen..."~ */ GOTO 17
  IF ~~ THEN REPLY #18079 /* ~"Ich muß jetzt gehen. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 48 // from: 45.1 45.2 47.0
  SAY #17879 /* ~"Na schön..." Pharod klopft mit seinem Stock auf das Pflaster und grinst höhnisch. "Dieses Dorf ist nicht alles, was unter dem Lumpensammler-Platz vergraben liegt."~ */
  IF ~~ THEN REPLY #18081 /* ~"Erzähl weiter..."~ */ GOTO 49
  IF ~~ THEN REPLY #18082 /* ~"So viel will ich gar nicht wissen. Ich hätte da noch ein paar andere Fragen..."~ */ GOTO 17
  IF ~~ THEN REPLY #18083 /* ~"Ich habe genug gehört... ich muß jetzt gehen. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 49 // from: 48.0
  SAY #17880 /* ~"Kammern, Gewölbe, Korridore..." Pharod deutet an Lächeln an; dabei glänzen seine Augen wie Gold. "Pechschwarz ist es da unten, alles voller weinender Steine und den lieben Toten, die in ihren Särgen schlafen. Schlafen..."~ */
  IF ~~ THEN REPLY #18084 /* ~"Wo kommen alle diese Toten her?"~ */ GOTO 50
  IF ~~ THEN REPLY #18085 /* ~"Macht nichts. Ich hätte da noch ein paar Fragen..."~ */ GOTO 17
  IF ~~ THEN REPLY #18086 /* ~"Ich habe genug gehört... ich muß jetzt gehen. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 50 // from: 49.0
  SAY #17881 /* ~Pharod schaut dich schief von der Seite an. "Leiche, Leiche... alles stirbt. Das Leben ist so kurz, und der Tod so lang. So viele Menschen, so viele Tode..." Er schaut durch dich hindurch. "Ist doch ein Jammer, daß ihr Tod in der Obhut der Staubies gar nicht richtig genutzt wird. Findest du nicht?"~ */
  IF ~~ THEN REPLY #18087 /* ~"Was meinst du?"~ */ DO ~SetGlobal("Know_Pharod_Bodies","GLOBAL",1)
~ JOURNAL #18090 /* ~Ich habe herausgefunden, woher der alte Ghul Pharod seine vielen Leichen bekommt: Er hat einen Teil der Katakomben entdeckt, unter dem Begrabenen Dorf. Die Staubmenschen haben dort einige ihrer Leichen vergraben, also gräbt Pharod sie aus, verkauft sie wieder an die Staubmenschen, und gräbt sie dann wieder aus. Eine nie versiegende Quelle für Klimper... Typisch Ghul, aber effektiv.~ */ GOTO 51
  IF ~~ THEN REPLY #18088 /* ~"Macht nichts. Ich hätte da noch ein paar Fragen..."~ */ GOTO 17
  IF ~~ THEN REPLY #18089 /* ~"Ich habe genug gehört... ich muß jetzt gehen. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 51 // from: 50.0
  SAY #17882 /* ~Pharod lächelt gierig. "Nicht alle Toten, die am Tor zur Leichenhalle abgegeben werden, werden verbrannt, Leiche. Die Staubies vergraben auch ein paar Tote im Innersten der Stadt. Unter dem Dorf... in nächster Nähe... ich wäre bescheuert gewesen, keinen Nutzen daraus zu schlagen..."~ */
  IF ~~ THEN REPLY #18091 /* ~"Du raubst also die Toten aus den Katakomben, die die Staubmenschen dorthin gebracht haben, und verkaufst sie zurück an die Staubmenschen, und die begraben sie dann wieder?"~ */ GOTO 52
  IF ~~ THEN REPLY #18092 /* ~"Macht nichts. Ich hätte da noch ein paar Fragen..."~ */ GOTO 17
  IF ~~ THEN REPLY #18093 /* ~"Ich habe genug gehört... ich muß jetzt gehen. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 52 // from: 51.0
  SAY #17883 /* ~Pharod nickt. Dann lacht er leise vor sich hin - es hört sich an wie rieselnder Sand. "Diese Katakomben sind so tief wie die Taschen der Staubies."~ */
  IF ~~ THEN REPLY #18094 /* ~"Und so tief wie die Gier der Menschen."~ */ GOTO 53
  IF ~~ THEN REPLY #18095 /* ~"Sehr clever, Pharod. Ich hätte da noch ein paar andere Fragen..."~ */ GOTO 17
  IF ~~ THEN REPLY #18096 /* ~"Ich habe genug gehört... ich muß jetzt gehen. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 53 // from: 52.0
  SAY #17884 /* ~"Oh, ja..." Pharod grinst höhnisch. "Und auf die Gier der Menschen kann man sich sogar dann verlassen, wenn alles andere versagt, was?"~ */
  IF ~~ THEN REPLY #18097 /* ~"Sehr clever, Pharod. Ich hätte da noch ein paar andere Fragen..."~ */ GOTO 17
  IF ~~ THEN REPLY #18098 /* ~"Ich habe genug gehört... ich muß jetzt gehen. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 54 // from: 16.0 33.1
  SAY #17885 /* ~Pharods Augen leuchten, als du ihm die Bronzekugel überreichst - er berührt sie vorsichtig, fast ehrfürchtig. "Du..." Er lacht. "Ah, Leiche, du warst ein Wagnis, das sich gelohnt hat. Du hast..." Pharod betrachtet sein Spiegelbild in der Kugel. "Tsss. Die Jahre waren grausam zu mir..."~ */
  IF ~~ THEN REPLY #18099 /* ~"Ich habe getan, worum du mich gebeten hast, Pharod. Jetzt will ich ein paar Antworten."~ */ GOTO 55
  IF ~  GlobalGT("Pharod","GLOBAL",2)
~ THEN REPLY #18100 /* ~"Vergiß es. Ich hätte da noch ein paar andere Fragen an dich..."~ */ GOTO 17
  IF ~  GlobalGT("Pharod","GLOBAL",2)
~ THEN REPLY #18101 /* ~"Mehr wollt' ich gar nicht wissen. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 55 // from: 54.0
  SAY #17886 /* ~Pharod würdigt dich keines Blickes, während du sprichst... Seine ganze Aufmerksamkeit gilt der Kugel, die er in den Händen hält. "Ja, ja, stell deine Fragen..." Pharod dreht die Kugel in seinen Händen. "Sehr wichtig, deine Fragen..."~ */
  IF ~~ THEN REPLY #18102 /* ~"Was weißt du über mich? Warum hat man mir gesagt, daß ich dich aufsuchen soll?"~ */ GOTO 56
  IF ~  GlobalGT("Pharod","GLOBAL",2)
~ THEN REPLY #18103 /* ~"Vergiß es. Ich hätte da noch ein paar andere Fragen an dich..."~ */ GOTO 17
  IF ~  GlobalGT("Pharod","GLOBAL",2)
~ THEN REPLY #18104 /* ~"Mehr wollt' ich gar nicht wissen. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 56 // from: 55.0
  SAY #17887 /* ~Pharod beäugt dich kritisch. "Du darfst jetzt nicht die Hand gegen mich erheben, wenn du hörst, was ich dir sage. Es könnte nämlich sein, daß dir die Ohren abfallen.." Pharod grinst boshaft. "Bei meinen Ohren ist es egal, aber deine sind noch schön frisch."~ */
  IF ~~ THEN REPLY #18105 /* ~"Nun erzähl schon, Pharod. Ich verliere langsam die Geduld."~ */ GOTO 57
  IF ~~ THEN REPLY #18106 /* ~Schwur: "Ich gebe dir mein Wort, daß ich meine Hand nicht erheben werde, Pharod. Aber ich muß wissen, was du weißt."~ */ DO ~IncrementGlobalOnceEx("GLOBALLawful_Pharod_4","GLOBALLaw",1)
~ GOTO 57
  IF ~~ THEN REPLY #18107 /* ~Lüge: "Ich gebe dir mein Wort, daß ich meine Hand nicht erheben werde, Pharod. Aber ich muß wissen, was du weißt."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Pharod_3","GLOBALLaw",-1)
IncrementGlobalOnceEx("GLOBALEvil_Pharod_2","GLOBALGood",-1)
~ GOTO 57
  IF ~  GlobalGT("Pharod","GLOBAL",2)
~ THEN REPLY #18108 /* ~"Vergiß es. Ich hätte da noch ein paar andere Fragen an dich..."
~ */ GOTO 17
  IF ~  GlobalGT("Pharod","GLOBAL",2)
~ THEN REPLY #18109 /* ~"Mehr wollt' ich gar nicht wissen. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 57 // from: 56.0 56.1 56.2
  SAY #17888 /* ~"Die Wahrheit..." Pharod spricht mit sanfter, schmeichelnder Stimme. "Ich habe es mit der Wahrheit nicht so genau genommen vorhin, Leiche - denn ich weiß eigentlich gar nicht viel über dich." Er erhebt einen seiner verkrüppelten Finger. "Aber hör mir zu..."~ */
  IF ~~ THEN REPLY #18110 /* ~"Ja...?"~ */ GOTO 58
  IF ~~ THEN REPLY #18111 /* ~"Ich kann nur für dich hoffen, daß du mir diesmal *keinen* Blödsinn erzählst, Pharod."~ */ GOTO 58
  IF ~  GlobalGT("Pharod","GLOBAL",2)
~ THEN REPLY #18112 /* ~"Vergiß es. Ich hätte da noch ein paar andere Fragen an dich..."~ */ GOTO 17
  IF ~  GlobalGT("Pharod","GLOBAL",2)
~ THEN REPLY #18113 /* ~"Mehr wollt' ich gar nicht wissen. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 58 // from: 17.5 57.0 57.1
  SAY #17889 /* ~"Du bist ein Schleifer, der einen Toten mimt, wenn ich das recht erkenne." Pharod schaut dich blinzelnd an. "Vor einiger Zeit kamst du zu mir, ein wenig so wie jetzt, kamst reingeschneit und wolltest eine 'Audienz' bei mir."~ */
  IF ~~ THEN REPLY #18114 /* ~"Eine Audienz bei dir?"~ */ GOTO 59
  IF ~  GlobalGT("Pharod","GLOBAL",2)
~ THEN REPLY #18115 /* ~"Vergiß es. Ich hätte da noch ein paar andere Fragen an dich..."~ */ GOTO 17
  IF ~  GlobalGT("Pharod","GLOBAL",2)
~ THEN REPLY #18116 /* ~"Mehr wollt' ich gar nicht wissen. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 59 // from: 58.0
  SAY #17890 /* ~"Ja, eine 'Audienz'." Pharod kichert, wie flüsternder Sand. "Als ob ich ein König wäre..." Er scheint amüsiert zu sein, aber seine Stimme ist scharf. "Du wußtest die richtigen Dinge zu sagen, das wußtest du, oh ja. Du hast den Plausch wie ein geborener und echter Herrschner gesprochen. Und ich hab zugehört."~ */
  IF ~  Global("Story_Reekwind_Pharod","GLOBAL",1)
~ THEN REPLY #18117 /* ~"Aber du warst doch früher mal ein Adeliger... oder zumindest ein sehr einflußreicher Mann, oder nicht?"~ */ GOTO 60
  IF ~  Global("Story_Reekwind_Pharod","GLOBAL",0)
~ THEN REPLY #18118 /* ~"Was hat er... habe ich... von dir gewollt?"~ */ GOTO 61
  IF ~  GlobalGT("Pharod","GLOBAL",2)
~ THEN REPLY #18119 /* ~"Vergiß es. Ich hätte da noch ein paar andere Fragen an dich..."~ */ GOTO 17
  IF ~  GlobalGT("Pharod","GLOBAL",2)
~ THEN REPLY #18120 /* ~"Mehr wollt' ich gar nicht wissen. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 60 // from: 59.0
  SAY #17891 /* ~"Früher", zischt Pharod. "*Früher*. Titel, nichts als Worte, von denen NICHTS übrig blieb..." Er hält inne, dann zischt er: "Tsss. Selbst das hast du gewußt, meine Vergangenheit..."~ */
  IF ~~ THEN REPLY #18121 /* ~"Was hat er... habe ich... von dir gewollt?"~ */ GOTO 61
  IF ~  GlobalGT("Pharod","GLOBAL",2)
~ THEN REPLY #18122 /* ~"Vergiß es. Ich hätte da noch ein paar andere Fragen an dich..."~ */ GOTO 17
  IF ~  GlobalGT("Pharod","GLOBAL",2)
~ THEN REPLY #18123 /* ~"Mehr wollt' ich gar nicht wissen. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 61 // from: 59.1 60.0
  SAY #17892 /* ~Pharod verbeugt sich spöttisch, wobei sein Krückstock verdächtig knarrt. "'Oh, Pharod, großer König der Sammler', sprachst du, 'ich bitte Euch, mir eine Gunst zu erweisen.' 'Eine Gunst?' fragte ich. 'Was kann ich einem Mann von so offensichtlicher Stärke noch bieten?'"~ */
  IF ~~ THEN REPLY #18124 /* ~"Erzähl weiter..."~ */ GOTO 62
  IF ~~ THEN REPLY #18125 /* ~"Genug von diesem Geplapper, Pharod. Was wollte ich?"~ */ GOTO 62
  IF ~  GlobalGT("Pharod","GLOBAL",2)
~ THEN REPLY #18126 /* ~"Vergiß es. Ich hätte da noch ein paar andere Fragen an dich..."~ */ GOTO 17
  IF ~  GlobalGT("Pharod","GLOBAL",2)
~ THEN REPLY #18127 /* ~"Mehr wollt' ich gar nicht wissen. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 62 // from: 61.0 61.1
  SAY #17893 /* ~Pharod erhebt seinen krummen Finger. "Und du hattest einen seltsamen Wunsch: Du sprachst, 'Lord Pharod, ich möchte Euch höflichst um eine *Gefälligkeit* bitten. Falls Eure Sammler auf ihren Streifzügen durch den Stock meinen Körper finden, mögen sie ihn an einen sicheren Ort bringen. Das ist alles.'" Pharod zuckt mit den Achseln. "Eine einfache Gunst."
~ */
  IF ~  CheckStatGT(Protagonist,13,WIS)
~ THEN REPLY #18128 /* ~"Aha. Ist das alles, was du weißt?"~ */ GOTO 63
  IF ~  CheckStatLT(Protagonist,14,WIS)
~ THEN REPLY #18129 /* ~"Aha. Ist das alles, was du weißt?"~ */ GOTO 68
  IF ~  CheckStatGT(Protagonist,12,CHR)
CheckStatLT(Protagonist,14,WIS)
~ THEN REPLY #18130 /* ~"Nur... dabei springt für dich doch nichts raus. Warum hast du's dann gemacht?"~ */ GOTO 64
  IF ~  CheckStatGT(Protagonist,13,INT)
CheckStatLT(Protagonist,13,CHR)
CheckStatLT(Protagonist,14,WIS)
~ THEN REPLY #18131 /* ~"Nur... dabei springt für dich doch nichts raus. Warum hast du's dann gemacht?"~ */ GOTO 64
  IF ~  GlobalGT("Pharod","GLOBAL",2)
~ THEN REPLY #18132 /* ~"Vergiß es. Ich hätte da noch ein paar andere Fragen an dich..."~ */ GOTO 17
  IF ~  GlobalGT("Pharod","GLOBAL",2)
~ THEN REPLY #18133 /* ~"Mehr wollt' ich gar nicht wissen. Leb wohl."
~ */ EXIT
END

IF ~~ THEN BEGIN 63 // from: 62.0
  SAY #17894 /* ~Bevor du etwas sagen kannst, spürst du in dem Moment, als Pharod das Wort 'Gunst' ausspricht, plötzlich einen stechenden Schmerz im Schädel und der Geruch von Blut und Angst schießt dir in die Nase... Pharod verheimlicht dir etwas, eine Geschichte aus der Vergangenheit, die irgendetwas mit dir zu tun hatte - und die ihm Angst macht. Die Gunst, die er dir erwiesen hat, war doch nicht einfach.~ */
  IF ~~ THEN REPLY #18134 /* ~"Du hast mir also einfach so eine Gunst erwiesen? Für dich ist dabei doch nichts rausgesprungen. Warum hast du's dann gemacht?"~ */ GOTO 64
  IF ~~ THEN REPLY #18135 /* ~"Äh... aha. Und ist das alles, was du weißt?"~ */ GOTO 68
  IF ~  GlobalGT("Pharod","GLOBAL",2)
~ THEN REPLY #18136 /* ~"Vergiß es. Ich hätte da noch ein paar andere Fragen an dich..."~ */ GOTO 17
  IF ~  GlobalGT("Pharod","GLOBAL",2)
~ THEN REPLY #18137 /* ~"Mehr wollt' ich gar nicht wissen. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 64 // from: 62.2 62.3 63.0
  SAY #17895 /* ~Pharod schweigt einen Moment lang. "Ein Toter kann keine Versprechen einhalten. Und es ist einfach, einem Toten ein Versprechen zu geben, Leiche."~ */
  IF ~~ THEN REPLY #18138 /* ~"Du bist ein Händler, Pharod, kein Samariter. Du mußt einen anderen Grund gehabt haben..."~ */ DO ~SetGlobal("Pharod_Sphere_Truth","GLOBAL",1)
~ GOTO 65
  IF ~~ THEN REPLY #18139 /* ~"Okay. Ist das alles, was du weißt?"~ */ GOTO 68
  IF ~  GlobalGT("Pharod","GLOBAL",2)
~ THEN REPLY #18140 /* ~"Vergiß es. Ich hätte da noch ein paar andere Fragen an dich..."~ */ GOTO 17
  IF ~  GlobalGT("Pharod","GLOBAL",2)
~ THEN REPLY #18141 /* ~"Mehr wollt' ich gar nicht wissen. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 65 // from: 64.0
  SAY #17896 /* ~"Ja..." Pharods Gesicht pellt sich plötzlich vor Wut zurück, und seine Haut läuft rot an. "Nachdem du mein Blut massenweise an den Mauern des Stocks AUFGEHÄNGT hattest, hatte ich Grund *genug*, dir die EBENEN selbst zu versprechen. Und dann kommst du schlachtendes Etwas in mein HEIM, in meine ABSTEIGE, und VERLANGST eine 'Gunst' von mir..." Pharod beruhigt sich, wenn sein Gesicht auch rot bleibt. "Ja, ich hab zugestimmt..."~ */
  IF ~~ THEN REPLY #18142 /* ~Wahrheit: "Deine Leute tun mir leid, Pharod. Das war nicht ich... aber wenn ich den Verlust wieder gutmachen kann, werde ich das tun."~ */ DO ~IncrementGlobalOnceEx("GLOBALGood_Pharod_1","GLOBALGood",1)
IncrementGlobalOnceEx("GLOBALLawful_Pharod_5","GLOBALLaw",1)
~ GOTO 66
  IF ~~ THEN REPLY #18143 /* ~Wahrheit: "Deine Leute tun mir leid, Pharod. Das ist meine bescheidene Meinung."~ */ DO ~IncrementGlobalOnceEx("GLOBALGood_Pharod_1","GLOBALGood",1)
~ GOTO 66
  IF ~~ THEN REPLY #18144 /* ~"Erzähl weiter... was ist dann passiert?"~ */ GOTO 67
  IF ~  GlobalGT("Pharod","GLOBAL",2)
~ THEN REPLY #18145 /* ~"Vergiß es. Ich hätte da noch ein paar andere Fragen an dich..."~ */ GOTO 17
  IF ~  GlobalGT("Pharod","GLOBAL",2)
~ THEN REPLY #18146 /* ~"Mehr wollt' ich gar nicht wissen. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 66 // from: 65.0 65.1
  SAY #17897 /* ~Pharod zischt: "Tsss. Na ja, diese Leichen haben mir gute Dienste getan. Die Staubies zahlen für frische Totenbüchler genauso viel wie für alte..."~ */
  IF ~~ THEN REPLY #18147 /* ~"War das der einzige Grund, aus dem du meiner Bitte zugestimmt hast?"~ */ GOTO 67
  IF ~  GlobalGT("Pharod","GLOBAL",2)
~ THEN REPLY #18148 /* ~"Vergiß es. Ich hätte da noch ein paar andere Fragen an dich..."~ */ GOTO 17
  IF ~  GlobalGT("Pharod","GLOBAL",2)
~ THEN REPLY #18149 /* ~"Mehr wollt' ich gar nicht wissen. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 67 // from: 65.2 66.0
  SAY #17898 /* ~"Du wußtest Dinge über mich, die außer mir sonst keiner wußte. Du wußtest, daß ich etwas suchte, daß unter Sigil begraben lag, und diesem Etwas gabst du einen Namen: die Bronzekugel. Ich hätte nicht gedacht, daß du sie mir holen würdest..." Er lacht. "Aber du hast es getan. Manchmal ist es schon merkwürdig, wie die Ebenen sich drehen..."~ */
  IF ~~ THEN REPLY #18150 /* ~"Und das ist *alles*, was du weißt?"~ */ GOTO 68
  IF ~  GlobalGT("Pharod","GLOBAL",2)
~ THEN REPLY #18151 /* ~"Vergiß es. Ich hätte da noch ein paar andere Fragen an dich..."~ */ GOTO 17
  IF ~  GlobalGT("Pharod","GLOBAL",2)
~ THEN REPLY #18152 /* ~"Mehr wollt' ich gar nicht wissen. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 68 // from: 62.1 63.1 64.1 67.0
  SAY #17899 /* ~"Alles, was ich weiß? Nein... Aber alles, was ich über dich weiß, Leiche."~ */
  IF ~~ THEN REPLY #18153 /* ~"Na gut. Nächste Frage... was hast du von meiner Leiche genommen, nachdem ich gestorben war?"~ */ GOTO 69
  IF ~  GlobalGT("Pharod","GLOBAL",2)
~ THEN REPLY #18154 /* ~"Vergiß es. Ich hätte da noch ein paar andere Fragen an dich..."~ */ GOTO 17
  IF ~  GlobalGT("Pharod","GLOBAL",2)
~ THEN REPLY #18155 /* ~"Mehr wollt' ich gar nicht wissen. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 69 // from: 17.6 68.0
  SAY #17900 /* ~"Ich?" Pharod leckt sich die Lippen. "Nein, *ich* hab' nichts genommen, Leiche." Er grinst. "Aber ich hab' deine Leiche ja auch nicht selbst gefunden..."~ */
  IF ~~ THEN REPLY #18156 /* ~"Wer denn?"~ */ GOTO 70
  IF ~  GlobalGT("Pharod","GLOBAL",2)
~ THEN REPLY #18157 /* ~"Vergiß es. Ich hätte da noch ein paar andere Fragen an dich..."~ */ GOTO 17
  IF ~  GlobalGT("Pharod","GLOBAL",2)
~ THEN REPLY #18158 /* ~"Mehr wollt' ich gar nicht wissen. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 70 // from: 69.0 75.4
  SAY #17901 /* ~Pharod lächelt breit, wobei sich seine teigige Haut wie ein Vorhang zurückschiebt. "Meine Tochter, die Schönste, die Liebste, die Klügste unserer Familie..." Er befeuchtet seine trockenen Lippen und seufzt mit gespielter Traurigkeit. "Aber mit so einer spitzen Zunge..."~ */
  IF ~  !Dead("Annah")
~ THEN REPLY #18159 /* ~"Deine *Tochter*? Wer ist das?"~ */ DO ~SetGlobal("Pharod","GLOBAL",3)
~ JOURNAL #18161 /* ~Ich habe Pharod die Bronzekugel gebracht. Er konnte mir nicht viel Nützliches sagen: Er sagte, daß ich zu ihm gekommen sei und ihn um seine "Hilfe" dabei gebeten hätte sicherzustellen, daß seine Sammlerbande meine Leiche nach meinem Tod sicher in die Leichenhalle bringt. Er erzählte mir, daß meine Leiche von seiner Tochter Annah gefunden wurde.~ */ GOTO 71
  IF ~  Dead("Annah")
~ THEN REPLY #18160 /* ~"Deine *Tochter*? Wer ist das?"~ */ DO ~SetGlobal("Pharod","GLOBAL",3)
~ JOURNAL #18162 /* ~Ich habe Pharod die Bronzekugel gebracht. Er konnte mir nicht viel Nützliches sagen: Er sagte, daß ich zu ihm gekommen sei und ihn um seine "Hilfe" dabei gebeten hätte sicherzustellen, daß seine Sammlerbande meine Leiche nach meinem Tod sicher in die Leichenhalle bringt. Er erzählte mir, daß meine Leiche von seiner Tochter Annah gefunden wurde... Ich glaube, das könnte der Name eines der Tieflinge sein, die ich im Stock getötet habe. Macht ja nichts, solange Pharod weiß, wo meine Leiche gefunden wurde...~ */ GOTO 72
END

IF ~~ THEN BEGIN 71 // from: 70.0 78.0 78.1 78.2
  SAY #17902 /* ~"Meine liebe Annah. Sie hat dich an einem Ort gefunden, wo sich die meisten Sammler nicht mal für einen ganzen *Berg* Kupfermünzen hin trauen würden. Du warst mausetot. Ob sie etwas von dir genommen hat? Kann sein, kann aber auch nicht sein..." Er rückt näher heran und schüttelt den Kopf. "Das mußt du sie schon selber fragen, und nicht ihren Vater."
~ */
  IF ~  CheckStatGT(Protagonist,13,INT)
Global("Pharod_Extortion","GLOBAL",0)
~ THEN REPLY #18163 /* ~"Lüg mich nicht an, Pharod. Du bist ein Händler und holst dir immer deinen Anteil von deinen Arbeitern. Was hat Annah *dir* von meiner Leiche gegeben?"~ */ GOTO 75
  IF ~  Global("Annah","GLOBAL",0)
~ THEN REPLY #18164 /* ~"Annah? Okay, ich werde sie fragen. Wo ist sie?"~ */ GOTO 73
  IF ~  GlobalGT("Annah","GLOBAL",0)
~ THEN REPLY #18166 /* ~"Ich hätte da noch ein paar Fragen..."~ */ GOTO 17
  IF ~  GlobalGT("Annah","GLOBAL",0)
~ THEN REPLY #18167 /* ~"Na gut, das war alles, was ich wissen wollte."
~ */ EXIT
END

IF ~~ THEN BEGIN 72 // from: 70.1
  SAY #17903 /* ~"Meine liebe Annah. Sie hat dich an einem Ort gefunden, wo sich die meisten Sammler nicht mal für einen ganzen *Berg* Kupfermünzen hin trauen würden. Du warst mausetot. Wenn du dort suchst, könntest du deine wertvollen Sachen vielleicht wiederfinden..."~ */
  IF ~~ THEN REPLY #18168 /* ~"Wo hat sie mich gefunden?"~ */ GOTO 74
END

IF ~~ THEN BEGIN 73 // from: 71.1
  SAY #17904 /* ~"Wo ist Annah?" Pharod zuckt mit den Schultern. "Sie versteckt sich irgendwo in den Schatten hier, nehme ich an, und hört uns bei unserem kleinen Plausch zu. Ich hab nach ihr gerufen, nachdem du nach unten gegangen warst... mußte sie fragen, ob du *wirklich* im Totenbuch standst, als sie dich gefunden hat, oder nicht..." Er kichert trocken, atmet dann tief ein und ruft in die Dunkelheit: "Annah! Hör auf, dich im Schatten rumzudrücken... Komm her und begrüße unseren Gast!"~ */
  IF ~~ THEN REPLY #18169 /* ~"Sie ist hier...?"~ */ DO ~SetGlobal("0110_Cut_Scene","GLOBAL",1)
StartCutSceneMode()
StartCutSceneEx("0110cut1",FALSE)
~ EXIT
  IF ~  GlobalGT("Annah","GLOBAL",0)
~ THEN REPLY #18170 /* ~"Ich hätte da noch ein paar Fragen..."~ */ GOTO 17
  IF ~  GlobalGT("Annah","GLOBAL",0)
~ THEN REPLY #18171 /* ~"Na gut, das war alles, was ich wissen wollte. Ich werde losziehen und sie suchen."~ */ EXIT
END

IF ~~ THEN BEGIN 74 // from: 17.7 72.0
  SAY #17905 /* ~"Sie sagt, daß sie dich hier im Stock gefunden hat, jawohl. In einer Gasse, in der es spukt, nordöstlich von der Schwelenden Leiche..." Pharod denkt nach und klopft mit den Fingern gegen seine Krücke. "'Natürlich mußt du erst an diesen Chaoten aus dem Stock vorbei..."~ */
  IF ~  GlobalLT("Know_Painted_Door","GLOBAL",2)
~ THEN REPLY #18172 /* ~"Was meinst du?"~ */ GOTO 85
  IF ~  GlobalGT("Know_Painted_Door","GLOBAL",1)
~ THEN REPLY #18173 /* ~"Ich hätte da noch ein paar Fragen..."~ */ GOTO 17
  IF ~  GlobalGT("Know_Painted_Door","GLOBAL",1)
~ THEN REPLY #47828 /* ~"Nun gut, mehr wollt ich gar nicht wissen. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 75 // from: 71.0
  SAY #17906 /* ~"Ach ja... Mein Tribut..." Fast beschützend faltet Pharod seine verkrüppelten Hände um den Krückstock. "Es läßt sich nicht mehr sagen, was von *dir* war und was nicht, Leiche. Höchstwahrscheinlich nichts."~ */
  IF ~~ THEN REPLY #18175 /* ~Wahrheit: "Pharod, meine Geduld ist am Ende. Von dir oder diesem Dorf wird nichts übrigbleiben, wenn du mir nicht den 'Tribut' gibst."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Pharod_3","GLOBALGood",-1)
~ GOTO 76
  IF ~~ THEN REPLY #18176 /* ~Täuschung: "Pharod, meine Geduld ist am Ende. Von dir oder diesem Dorf wird nichts übrigbleiben, wenn du mir nicht den 'Tribut' gibst.'"~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Pharod_4","GLOBALLaw",-1)
~ GOTO 76
  IF ~  !Global("Lawful_Pharod_3","GLOBAL",1)
~ THEN REPLY #18177 /* ~Wahrheit: "Pharod, meine Geduld ist am Ende. Gib mir, was mir gestohlen wurde, oder ich werde dafür sorgen, daß die Staubmenschen erfahren, wo sie dich finden können."~ */ GOTO 76
  IF ~  Global("Lawful_Pharod_3","GLOBAL",1)
~ THEN REPLY #18178 /* ~Wahrheit: "Pharod, meine Geduld ist am Ende. Gib mir, was mir gestohlen wurde, oder ich werde dafür sorgen, daß die Staubmenschen erfahren, wo sie dich finden können."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Pharod_5","GLOBALLaw",-3)
IncrementGlobalOnceEx("GLOBALEvil_Pharod_4","GLOBALGood",-1)
~ GOTO 76
  IF ~~ THEN REPLY #18179 /* ~"Na gut... wer hat mich noch mal gefunden?"~ */ GOTO 70
END

IF ~~ THEN BEGIN 76 // from: 75.0 75.1 75.2 75.3
  SAY #17907 /* ~Pharod sagt eine Weile nichts. Langsam trommelt er mit den Fingern gegen die Krücke.~ */
  IF ~~ THEN REPLY #18180 /* ~"Also?"~ */ DO ~SetGlobal("Pharod_Extortion","GLOBAL",1)
AddexperienceParty(1000)
~ GOTO 77
  IF ~  GlobalGT("Pharod","GLOBAL",2)
~ THEN REPLY #18181 /* ~"Vergiß es. Ich hätte da noch ein paar andere Fragen an dich..."~ */ GOTO 17
  IF ~  GlobalGT("Pharod","GLOBAL",2)
~ THEN REPLY #18182 /* ~"Mehr wollt' ich gar nicht wissen. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 77 // from: 76.0
  SAY #17908 /* ~"Die Leute haben keinen Anstand mehr..." grummelt Pharod kopfschüttelnd. "Ich tu dir den Gefallen, Leiche... Und was für einen Gefallen. Pharod *trennt sich* von allem... Ich lande im Totenbuch, wenn uns jemand hört... Warte hier, und rühr dich nicht von der Stelle. Ich bin gleich wieder da."~ */
  IF ~  CheckStatLT(Protagonist,14,INT)
~ THEN REPLY #18183 /* ~Warte...~ */ DO ~FadeToColor([20.0],0)
Wait(3)
FadeFromColor([20.0],0)
~ JOURNAL #18185 /* ~Pharod holte den Tribut, den seine Tochter meiner Leiche abgenommen und ihm gegeben hatte. Bei dem Tribut befand sich ein seltsamer Papierfetzen... Ich habe das komische Gefühl, daß ich ihn an mich selbst geschrieben habe.~ */ GOTO 78
  IF ~  CheckStatGT(Protagonist,13,INT)
~ THEN REPLY #18184 /* ~"Hmmm. Ich frage mich, wo er hingeht..."~ */ DO ~FadeToColor([20.0],0)
Wait(3)
FadeFromColor([20.0],0)
~ JOURNAL #18186 /* ~Pharod holte den Tribut, den seine Tochter meiner Leiche abgenommen und ihm gegeben hatte. Bei dem Tribut befand sich ein seltsamer Papierfetzen... Ich habe das komische Gefühl, daß ich ihn an mich selbst geschrieben habe. Ich frage mich außerdem, wohin Pharod gegangen ist, um den Tribut zu holen... Seltsamerweise nahm er nicht die Haupttür, aber ich glaube nicht, daß es noch andere Türen gibt, die aus dem Hof der Kranken Winde hinausführen.~ */ GOTO 78
END

IF ~~ THEN BEGIN 78 // from: 77.0 77.1
  SAY #17909 /* ~Eine ganze Weile später kommt Pharod zurück. Sein Stock *klackert* gegen das Pflaster. In den Händen hält er verschiedene Gegenstände, die er dir überreicht. "*Kein Wort* zu niemandem. Sei *froh*, daß ich mich überhaupt erinnert habe..."~ */
  IF ~  CheckStatLT(Protagonist,11,CHR)
~ THEN REPLY #18187 /* ~"Ein paar hundert Kupfermünzen und ein Papierfetzen? Na klasse. Wer hat mich noch mal gefunden?"~ */ DO ~GiveGoldForce(200)
GiveItemCreate("Npharod",Protagonist,1,0,0)
~ GOTO 71
  IF ~  CheckStatGT(Protagonist,10,CHR)
CheckStatLT(Protagonist,15,CHR)
~ THEN REPLY #18188 /* ~"Ein paar hundert Kupfermünzen, ein Papierfetzen und ein Ring? Na gut... wer hat mich noch mal gefunden?"~ */ DO ~GiveGoldForce(250)
GiveItemCreate("Npharod",Protagonist,1,0,0)
GiveItemCreate("Ring01",Protagonist,1,0,0)
~ GOTO 71
  IF ~  CheckStatGT(Protagonist,14,CHR)
~ THEN REPLY #18189 /* ~"Ein paar hundert Kupfermünzen, ein Papierfetzen, Bandagen und ein Ring? Na gut... wer hat mich noch mal gefunden?"~ */ DO ~GiveGoldForce(350)
GiveItemCreate("Npharod",Protagonist,1,0,0)
GiveItemCreate("Bandage",Protagonist,1,0,0)
GiveItemCreate("Bandage",Protagonist,1,0,0)
GiveItemCreate("Bandage",Protagonist,1,0,0)
GiveItemCreate("Ring01",Protagonist,1,0,0)
~ GOTO 71
END

IF ~~ THEN BEGIN 79 // from: 17.2
  SAY #17910 /* ~Pharod schaut dich blinzelnd an. Seine Stirnfalten hängen ihm fast über die Augen herunter. "Letztes Mal hattest du ein Journal... Ist es etwa verloren gegangen?" Pharod lacht heiser. "Diese Augen haben es nicht gesehen... Aber ich werde sie offen halten. Dieses *großartige* Werk würde ich auch gerne lesen..."~ */
  IF ~~ THEN REPLY #18190 /* ~"Ich hätte da noch ein paar Fragen..."~ */ GOTO 17
  IF ~~ THEN REPLY #18191 /* ~"Ich muß jetzt gehen. Leb wohl."
~ */ EXIT
END

IF ~~ THEN BEGIN 80 // from: 33.0
  SAY #17911 /* ~"Lügen, die den Tod anderer Leute zur Folge haben, sind das Letzte..." Leicht keuchend klopft Pharod mit seinem Stock auf den Boden. "Ich rate dir, Wort zu halten, Leiche, sonst zermahlen dich die Ebenen wie Mühlsteine."~ */
  IF ~~ THEN REPLY #18192 /* ~"Ich werd's mir merken. Ich hätte da noch ein paar andere Fragen an dich..."~ */ GOTO 17
  IF ~~ THEN REPLY #18193 /* ~"Wir werden sehen, Pharod. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 81 // from:
  SAY #47307 /* ~"Annah, Rose meines Auges - habe ich dich nicht gelehrt, die Toten zu *achten*?" Ein flüchtiges Lächeln schlängelt sich über Pharods Gesicht, und er macht eine kurze Verbeugung vor dir. "Diese findige Leiche muß wissen, wo du ihn gefunden hast."~ */
  IF ~~ THEN EXTERN ~DANNAH~ 220
END

IF ~~ THEN BEGIN 82 // from:
  SAY #47308 /* ~"Ah! Ja, mein Fehler..." Pharod nickt, dann senkt sich seine Stimme gefährlich. "Und doch, teure Annah, es bleibt doch DEIN Fehler... denn der hier hat nur mit einem Fuß im Totenbuch gesteckt, als du ihn zu mir gebracht hast." Er klopft mit seiner Krücke leise gegen den Steinboden. "Er ist aufgewacht und hat mich aufgesucht - HÖCHST unangenehm."~ */
  IF ~~ THEN EXTERN ~DANNAH~ 221
END

IF ~~ THEN BEGIN 83 // from:
  SAY #47309 /* ~"Zeig ihm, wo du seine Leiche gefunden hast, Annah." Pharod tippt seine Krücke erneut auf, um seinen Worten Nachdruck zu verleihen. "Bring ihn zu dieser gespenstischen Gasse." Pharod mustert Annah einen Moment lang, grinst dann und wendet sich dir zu. "Und solltest du meine geliebte Annah auf dem Weg zur Gasse verlieren, Leiche, dann kommst du zurück zu Pharod. Ich werde dich dann führen..."~ */
  IF ~~ THEN JOURNAL #59007 /* ~Ich weiß nicht, ob ich mich geschmeichelt oder beleidigt fühlen soll... Pharod hat gerade seiner 'Tochter' aufgetragen, mich zu dem Ort zu begleiten, an dem sie meine Leiche gefleddert hat, in irgendeiner Gasse, in der es spukt. Er hat gesagt, ich solle zu ihm zurückkommen, wenn sie mich unterwegs verlieren sollte. Er würde mich dann selbst hinführen...~ */ EXTERN ~DANNAH~ 224
END

IF ~~ THEN BEGIN 84 // from:
  SAY #47310 /* ~"Annah..." Pharods Stimme ist leise, aber sie schneidet durch die Worte des Mädchens wie ein Messer. "Paß auf ihn auf. Sieh zu, daß ihm im Dorf nichts zustößt. Dann führe ihn an sein Ziel."~ */
  IF ~~ THEN EXTERN ~DANNAH~ 226
END

IF ~~ THEN BEGIN 85 // from: 74.0
  SAY #47829 /* ~"Meine süße Annah mußte sich einen Weg durch eine ihrer Absteigen bahnen, um zu der Gasse zu gelangen, in der sie dich gefunden hat... Zwischen ihr und der Gasse, in der sie deine Leiche gefunden hat, lag ein Mietshaus, in dem es von ihnen nur so gewimmelt hat."~ */
  IF ~  GlobalLT("Know_Painted_Door","GLOBAL",2)
~ THEN REPLY #47832 /* ~"Also... da ist ein Gebäude, durch das ich hindurchgeh'n muß, *bevor* ich in diese 'gespenstische Gasse' gelange?"~ */ GOTO 86
  IF ~  GlobalGT("Know_Painted_Door","GLOBAL",1)
~ THEN REPLY #47833 /* ~"Ich hätte da noch ein paar Fragen..."~ */ GOTO 17
  IF ~  GlobalGT("Know_Painted_Door","GLOBAL",1)
~ THEN REPLY #47834 /* ~"Nun gut, mehr wollt ich gar nicht wissen. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 86 // from: 85.0
  SAY #47830 /* ~"Ja... Sie hat etwas davon erzählt, daß diese Chaoten über einen besonderen Zugang verfügen." Pharod überlegt einen Augenblick. "Es war eine Tür, die man nur mit geschlossenen Augen öffnen konnte - ansonsten hat sie wie ein ganz gewöhnliches Stock-Bild ausgesehen, das eine Tür darstellt."~ */
  IF ~  Global("Know_Painted_Door","GLOBAL",1)
~ THEN REPLY #47835 /* ~"Ich erinnere mich an diese Tür... Sie befindet sich nordöstlich von der Schwelenden Leiche. Ich hab sie aber für ein simples Bild gehalten. Es wird also eine WIRKLICHE Tür daraus, wenn man sie mit geschlossenen Augen öffnet?"~ */ DO ~SetGlobal("Know_Painted_Door","GLOBAL",2)
~ JOURNAL #47848 /* ~Pharod hat mir gesagt, wo meine Leiche gefunden wurde... In einer 'Spukgasse' in der Nähe der Bar "Zur Schwelenden Leiche" im Stock. Vielleicht kann ich dort mehr darüber herausfinden, wie ich gestorben bin. Er hat mir gesagt, daß ich durch ein Mietshaus voller Chaoten gehen müsse, wenn ich zu der Gasse gelangen wolle. Der Eingang zu dem Gebäude sei das Gemälde einer Tür nördlich der Bar "Zur Schwelenden Leiche". Wenn man die Augen schließe, würde eine echte Tür entstehen. Diese Stadt erscheint mir immer seltsamer...~ */ GOTO 87
  IF ~  Global("Know_Painted_Door","GLOBAL",0)
~ THEN REPLY #47836 /* ~"Also diese... gemalte Tür... befindet sich nordöstlich der Schwelenden Leiche? Und es wird zu MEHR als einem Bild, wenn man sie mit geschlossenen Augen öffnet?"~ */ DO ~SetGlobal("Know_Painted_Door","GLOBAL",2)
~ JOURNAL #47848 /* ~Pharod hat mir gesagt, wo meine Leiche gefunden wurde... In einer 'Spukgasse' in der Nähe der Bar "Zur Schwelenden Leiche" im Stock. Vielleicht kann ich dort mehr darüber herausfinden, wie ich gestorben bin. Er hat mir gesagt, daß ich durch ein Mietshaus voller Chaoten gehen müsse, wenn ich zu der Gasse gelangen wolle. Der Eingang zu dem Gebäude sei das Gemälde einer Tür nördlich der Bar "Zur Schwelenden Leiche". Wenn man die Augen schließe, würde eine echte Tür entstehen. Diese Stadt erscheint mir immer seltsamer...~ */ GOTO 87
  IF ~  GlobalGT("Know_Painted_Door","GLOBAL",1)
~ THEN REPLY #47837 /* ~"Ich hätte da noch ein paar Fragen..."~ */ GOTO 17
  IF ~  GlobalGT("Know_Painted_Door","GLOBAL",1)
~ THEN REPLY #47838 /* ~"Nun gut, mehr wollt ich gar nicht wissen. Ich geh jetzt diese gemalte Tür suchen."~ */ EXIT
END

IF ~~ THEN BEGIN 87 // from: 86.0 86.1
  SAY #47831 /* ~"Ja..." Pharod lächelt. "Sigils Wege sind sonderbar, Leiche. Sigils Wege sind sonderbar." ~ */
  IF ~~ THEN REPLY #47839 /* ~"Ich hätte da noch ein paar Fragen..."~ */ GOTO 17
  IF ~~ THEN REPLY #47840 /* ~"Nun gut, mehr wollt ich gar nicht wissen. Ich geh jetzt diese gemalte Tür suchen."~ */ EXIT
END
