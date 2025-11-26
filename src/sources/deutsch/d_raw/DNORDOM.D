// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DNORDOM.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\de_DE\dialog.tlk
// dialogF  : (none)

BEGIN ~DNORDOM~

IF ~  Global("Nordom","GLOBAL",0)
!GlobalGT("Fortress_Nordom","GLOBAL",2)
~ THEN BEGIN 0 // from:
  SAY #2852 /* ~Du siehst einen Würfel mit vier Armen und zwei Beinen. Trotz seines mechanischen Aussehens besteht die Vorderseite des Würfels aus einem seltsamen, organischen, grünen Gesicht mit zwei großen, elliptischen Augen. Der Würfel scheint dich nicht zu bemerken. Er starrt intensiv die zwei Armbrüste an, die in seinen Händen liegt. Eine Linse mit vielen Facetten baumelt von der rechten oberen Ecke des Würfels. Sie sieht so aus, als sei sie dafür gedacht, wie ein Fernglas über eines der Würfelaugen zu fallen. ~ */
  IF ~~ THEN REPLY #2853 /* ~"Äh... Sei gegrüßt...?"~ */ DO ~SetAnimState("Nordom",ANIM_MIMESPELL1)
~ GOTO 18
  IF ~~ THEN REPLY #34013 /* ~Ignoriere den... Würfel.~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from:
  SAY #16630 /* ~"Definiere: Hilfe angefordert."~ */
  IF ~  CheckStatLT(Protagonist,15,INT)
NearbyDialog("DMorte")
~ THEN REPLY #16952 /* ~"Ich bitte dich, Der um die Bäume trauert dabei zu helfen, für die Bäume hier zu sorgen."~ */ EXTERN ~DMORTE~ 183
  IF ~  CheckStatLT(Protagonist,15,INT)
!NearbyDialog("DMorte")
~ THEN REPLY #16953 /* ~"Ich bitte dich, Der um die Bäume trauert dabei zu helfen, für die Bäume hier zu sorgen."~ */ GOTO 2
  IF ~  CheckStatGT(Protagonist,14,INT)
~ THEN REPLY #16954 /* ~"Nordom: Wünsch dir, daß alle Bäume im 'Stock'-Bezirk von Sigil gesund werden und wachsen."~ */ GOTO 4
END

IF ~~ THEN BEGIN 2 // from: 1.1
  SAY #16631 /* ~"Auf welche Weise soll ich sie pflegen."~ */
  IF ~  NearbyDialog("DMorte")
~ THEN REPLY #16955 /* ~"Äh... nein, ich meinte 'sorgen'. Daß einem etwas lieb und teuer ist."~ */ EXTERN ~DMORTE~ 184
  IF ~  !NearbyDialog("DMorte")
~ THEN REPLY #16956 /* ~"Äh... nein, ich meinte 'sorgen'. Daß einem etwas lieb und teuer ist."~ */ GOTO 3
  IF ~~ THEN REPLY #16957 /* ~"Vergiß es. Ich hätte da ein paar Fragen, Der um die Bäume trauert..."~ */ EXTERN ~DMFTREE~ 28
  IF ~~ THEN REPLY #16958 /* ~"Vergiß es. Leb wohl, Der um die Bäume trauert."~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 2.1
  SAY #16632 /* ~"Anfrage: Hilf Der um die Bäume trauert [Bäume pflegen]. Ungültiger Befehls-/Objekt-Name."~ */
  IF ~  NearbyDialog("DMorte")
Global("Tree_M","AR0400",0)
~ THEN REPLY #16970 /* ~"Vergiß es. Morte? Was meinst du?"~ */ DO ~SetGlobal("Tree_M","AR0400",1)
~ EXTERN ~DMORTE~ 181
  IF ~  NearbyDialog("DAnnah")
Global("Tree_A","AR0400",0)
~ THEN REPLY #16971 /* ~"Vergiß es. Annah? Könntest du?"~ */ DO ~SetGlobal("Tree_A","AR0400",1)
~ EXTERN ~DANNAH~ 99
  IF ~  NearbyDialog("DIgnus")
Global("Tree_I","AR0400",0)
~ THEN REPLY #16972 /* ~"Vergiß es. Ignus?"~ */ DO ~SetGlobal("Tree_I","AR0400",1)
~ EXTERN ~DIGNUS~ 11
  IF ~  NearbyDialog("DGrace")
Global("Tree_G","AR0400",0)
~ THEN REPLY #16973 /* ~"Vergiß es. Grace, würdest du drüber nachdenken?"~ */ DO ~SetGlobal("Tree_G","AR0400",1)
~ EXTERN ~DGRACE~ 14
  IF ~  NearbyDialog("DDakkon")
Global("Tree_D","AR0400",0)
~ THEN REPLY #16981 /* ~"Vergiß es. Dak'kon, könntest du diesem Mann helfen?"
~ */ DO ~SetGlobal("Tree_D","AR0400",1)
~ EXTERN ~DDAKKON~ 74
  IF ~  NearbyDialog("DDakkon")
Global("Tree_D","AR0400",0)
Global("Dakkon_Slave","Global",1)
~ THEN REPLY #16982 /* ~"Vergiß es. Dak'kon: Hilf diesem Mann."~ */ DO ~IncrementGlobal("BD_DAKKON_MORALE","GLOBAL",-1)
SetGlobal("Tree_D","AR0400",1)
~ EXTERN ~DDAKKON~ 75
  IF ~  NearbyDialog("DVhail")
Global("Tree_V","AR0400",0)
~ THEN REPLY #16983 /* ~"Vergiß es. Vhailor, könntest du helfen?"~ */ DO ~SetGlobal("Tree_V","AR0400",1)
~ EXTERN ~DVHAIL~ 1
  IF ~~ THEN REPLY #16984 /* ~"Vergiß es. Ich hätte da ein paar Fragen, Der um die Bäume trauert..."~ */ EXTERN ~DMFTREE~ 28
  IF ~~ THEN REPLY #16990 /* ~"Vergiß es. Leb wohl, Der um die Bäume trauert."~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 1.2
  SAY #16633 /* ~"Der Befehl wurde verstanden. Die Parameter sind akzeptabel. Welchem Zweck dient er?"~ */
  IF ~  NearbyDialog("DMorte")
~ THEN REPLY #16991 /* ~"Der Stock ist ein Ort des Chaos und Verfalls. Es ist gut möglich, daß die Anwesenheit der gestärkten Bäume wieder eine Art Ordnung herstellen wird."~ */ DO ~IncrementGlobal("Tree_Helpers","AR0400",1)
~ GOTO 5
  IF ~  !NearbyDialog("DMorte")
~ THEN REPLY #16993 /* ~"Der Stock ist ein Ort des Chaos und Verfalls. Es ist gut möglich, daß die Anwesenheit der gestärkten Bäume wieder eine Art Ordnung herstellen wird."~ */ DO ~IncrementGlobal("Tree_Helpers","AR0400",1)
~ GOTO 6
END

IF ~~ THEN BEGIN 5 // from: 4.0
  SAY #16634 /* ~"Der Wunsch beginnt unverzüglich."~ */
  IF ~~ THEN EXTERN ~DMORTE~ 185
END

IF ~~ THEN BEGIN 6 // from: 4.1
  SAY #16992 /* ~"Der Wunsch beginnt unverzüglich."~ */
  IF ~  NearbyDialog("DMorte")
Global("Tree_M","AR0400",0)
~ THEN REPLY #16994 /* ~"Ich danke dir, Nordom. Morte? Was denkst du?"~ */ DO ~SetGlobal("Tree_M","AR0400",1)
~ EXTERN ~DMORTE~ 181
  IF ~  NearbyDialog("DAnnah")
Global("Tree_A","AR0400",0)
~ THEN REPLY #16995 /* ~"Ich danke dir, Nordom. Annah? Könntest du?"~ */ DO ~SetGlobal("Tree_A","AR0400",1)
~ EXTERN ~DANNAH~ 99
  IF ~  NearbyDialog("DIgnus")
Global("Tree_I","AR0400",0)
~ THEN REPLY #16996 /* ~"Ich danke dir, Nordom. Ignus?"~ */ DO ~SetGlobal("Tree_I","AR0400",1)
~ EXTERN ~DIGNUS~ 11
  IF ~  NearbyDialog("DGrace")
Global("Tree_G","AR0400",0)
~ THEN REPLY #16997 /* ~"Ich danke dir, Nordom. Grace, würdest du es angehen?"~ */ DO ~SetGlobal("Tree_G","AR0400",1)
~ EXTERN ~DGRACE~ 14
  IF ~  NearbyDialog("DDakkon")
Global("Tree_D","AR0400",0)
~ THEN REPLY #16998 /* ~"Ich danke dir, Nordom. Dak'kon, könntest du diesem Mann helfen?"~ */ DO ~SetGlobal("Tree_D","AR0400",1)
~ EXTERN ~DDAKKON~ 74
  IF ~  NearbyDialog("DDakkon")
Global("Tree_D","AR0400",0)
Global("Dakkon_Slave","Global",1)
~ THEN REPLY #16999 /* ~"Ich danke dir, Nordom. Dak'kon: Hilf diesem Mann."~ */ DO ~IncrementGlobal("BD_DAKKON_MORALE","GLOBAL",-1)
SetGlobal("Tree_D","AR0400",1)
~ EXTERN ~DDAKKON~ 75
  IF ~  NearbyDialog("DVhail")
Global("Tree_V","AR0400",0)
~ THEN REPLY #17000 /* ~"Ich danke dir, Nordom. Vhailor, könntest du helfen?"~ */ DO ~SetGlobal("Tree_V","AR0400",1)
~ EXTERN ~DVHAIL~ 1
  IF ~~ THEN REPLY #17001 /* ~"Ich danke dir, Nordom. Ich hätte da ein paar Fragen, Der um die Bäume trauert..."~ */ EXTERN ~DMFTREE~ 28
  IF ~~ THEN REPLY #17002 /* ~"Ich bin dir dankbar, Nordom. Auf Wiedersehen, Der um die Bäume trauert."~ */ EXIT
END

IF ~  GlobalGT("Nordom","GLOBAL",0)
!InParty("Nordom")
!GlobalGT("Fortress_Nordom","GLOBAL",2)
~ THEN BEGIN 7 // from:
  SAY #34006 /* ~Nordom sieht gedankenverloren aus. Im wahrsten Sinne des Wortes. Er *klickt* und *wrrringt* vor sich hin wie eine Rechenmaschine.~ */
  IF ~~ THEN REPLY #34007 /* ~"Nordom, ich brauche deine Hilfe. Willst du mit mir ziehen?"~ */ GOTO 8
  IF ~~ THEN REPLY #34008 /* ~Überlaß Nordom seinen "Gedanken".~ */ EXIT
END

IF ~~ THEN BEGIN 8 // from: 7.0
  SAY #34009 /* ~Nordoms 'Mund' formt einen bizarren, seitlich geneigten Halbkreis. "Positivisch! Zutritt erteilt, Berechtigung ausgetauscht." Seine zwei Armbrüste beginnen, laut zu *klicken* und zu *klimpern*, wobei sie so stark vibrieren, daß sie ihm beinahe aus den Händen fallen. "Status: Alle bereit und im Wartemodus."~ [NOR298] */
  IF ~  Global("Nordom","GLOBAL",2)
~ THEN REPLY #34010 /* ~"Dann laß uns gehen."~ */ DO ~ChangeAIScript("pcnordom",DEFAULT)
JoinPartyEx(TRUE)
~ EXIT
  IF ~  GlobalLT("Nordom","GLOBAL",2)
~ THEN REPLY #66820 /* ~"Geh'n wir."~ */ DO ~SetGlobal("Nordom","GLOBAL",2)
AddexperienceParty(36000)
ChangeAIScript("pcnordom",DEFAULT)
JoinPartyEx(TRUE)
~ EXIT
END

IF ~  InParty("Nordom")
!GlobalGT("Fortress_Nordom","GLOBAL",2)
~ THEN BEGIN 9 // from:
  SAY #34011 /* ~Nordom starrt konzentriert auf seine Armbrüste. Sie geben unterschiedliche klickende Geräusche von sich, zuerst die eine und dann die andere. Es klingt fast so, als würden sie sich unterhalten.~ */
  IF ~  Global("Know_Director_Truth","GLOBAL",3)
Global("Nordom_Order","GLOBAL",0)
~ THEN REPLY #55968 /* ~"Nordom, kannst du mir sagen, was für Aufgaben so ein Entwicklungsleiter hat?"~ */ GOTO 79
  IF ~  GlobalGT("Nordom_Order","GLOBAL",0)
~ THEN REPLY #55971 /* ~"Nordom, sag mir doch noch mal, was für Aufgaben ein Entwicklungsleiter hat."~ */ GOTO 79
  IF ~  GlobalGT("Nordom_Order","GLOBAL",0)
~ THEN REPLY #55974 /* ~"Als Entwicklungsleiter habe ich ein paar Befehle für dich."~ */ GOTO 81
  IF ~~ THEN REPLY #55975 /* ~"Was machst du mit deinen Armbrüsten?"~ */ GOTO 43
  IF ~~ THEN REPLY #55977 /* ~"Ich bin neugierig, Nordom... wie bist du nach Rubikon gelangt?"~ */ GOTO 49
  IF ~~ THEN REPLY #55979 /* ~"Nordom, was *sind* Modronen?"~ */ GOTO 72
  IF ~  Global("Know_Mechanus","GLOBAL",1)
~ THEN REPLY #55980 /* ~"Erzähl mir was über Mechanus, Nordom."~ */ DO ~SetAnimState("Nordom",ANIM_MIMESTAND)
~ GOTO 64
  IF ~  Global("Nordom_Self","GLOBAL",0)
~ THEN REPLY #55984 /* ~"Äh... wie geht's, Nordom?"~ */ DO ~SetGlobal("Nordom_Self","GLOBAL",1)
SetAnimState("Nordom",ANIM_MIMESTAND)
~ GOTO 105
  IF ~  Global("Nordom_Self","GLOBAL",1)
~ THEN REPLY #55988 /* ~"Wie geht es dir, Nordom?"~ */ GOTO 105
  IF ~  GlobalGT("Nordom_Solution","GLOBAL",0)
~ THEN REPLY #55991 /* ~"Nordom, du hast mich doch gefragt, wie es mir geht, oder etwa nicht?"~ */ GOTO 111
  IF ~  GlobalGT("Nordom_Solution","GLOBAL",1)
~ THEN REPLY #55994 /* ~"Können wir noch mal über meine Unsterblichkeit reden?"~ */ GOTO 130
  IF ~  GlobalGT("Know_Ravel","GLOBAL",0)
Global("Ravel","GLOBAL",0)
~ THEN REPLY #55996 /* ~"Hast du schon mal von jemandem namens Ravel Rätselschön gehört, Nordom?"~ */ GOTO 75
  IF ~  GlobalGT("Know_Blood_War","GLOBAL",0)
~ THEN REPLY #56000 /* ~"Nordom, weißt du etwas über den Blutkrieg?"~ */ GOTO 76
  IF ~~ THEN REPLY #56002 /* ~Laß Nordom mit seinen Waffen spielen.~ */ EXIT
END

IF ~~ THEN BEGIN 10 // from:
  SAY #39579 /* ~"In der 13,7. Umdrehung sollten wir den Zahnradgetriebeteilsatz Einunddreißig im fünften Ring von Mechanus reparieren. Wir haben das Hindernis entfernt, und das Getriebe drehte sich wieder mit normaler Geschwindigkeit. Als wir die Aufgabe erfüllt hatten, kehrten wir wieder zur Quelle zurück."~ */
  IF ~  NearbyDialog("DMorte")
~ THEN EXTERN ~DMORTE~ 418
  IF ~  !NearbyDialog("DMorte")
~ THEN REPLY #39759 /* ~"Das war eine... interessante Geschichte, Nordom."~ */ GOTO 11
END

IF ~~ THEN BEGIN 11 // from: 10.1
  SAY #39580 /* ~"So hat es sich zugetragen. Mit ein paar Ausschmückungen natürlich."~ */
  IF ~  NearbyDialog("DMorte")
~ THEN EXTERN ~DMORTE~ 419
  IF ~  !NearbyDialog("DMorte")
~ THEN REPLY #39760 /* ~"Ausschmückungen?"~ */ GOTO 12
END

IF ~~ THEN BEGIN 12 // from: 11.1
  SAY #39582 /* ~"Ich dachte, die Rückkehr zur Quelle wäre ein besonders passendes Bild, mit dem ich meine Geschichte abschließen könnte."~ */
  IF ~~ THEN EXTERN ~DYVES~ 59
END

IF ~~ THEN BEGIN 13 // from:
  SAY #50712 /* ~"Darf ich das so verstehen, daß meine Dienste hier zum Kauf angeboten werden? Eine Übertragung der Autorität von dir auf Vrischika auf der Grundlage eines Geldaustauschs?"~ */
  IF ~~ THEN REPLY #50713 /* ~"Ja, das stimmt. Nimmst du ihn, Vrischika?"~ */ EXTERN ~DVRISCH~ 49
  IF ~~ THEN REPLY #50714 /* ~"Ja, aber vergiß es. Ich hätte noch eine Frage, Vrischika..."~ */ EXTERN ~DVRISCH~ 7
  IF ~~ THEN REPLY #50715 /* ~"Ja... Aber ich hab's mir noch mal überlegt. Laß uns gehen, Nordom."~ */ EXIT
END

IF ~~ THEN BEGIN 14 // from:
  SAY #50716 /* ~"Nordom bereitet sich vor, Vrischika - Alu-Scheusal, Importeurin und Besitzerin eines Kuriositätenladens - als primäre Autoritätsperson anzunehmen."~ */
  IF ~~ THEN DO ~DropInventory()
LeaveParty()
~ EXTERN ~DVRISCH~ 57
END

IF ~~ THEN BEGIN 15 // from:
  SAY #52580 /* ~"Frage: Wie definiert Nordom /Wahl/? Definiere: WAHL: Die Handlung des Wählens, Auswahl; das Recht oder die Möglichkeit, zu wäh-"~ */
  IF ~  NearbyDialog("DIgnus")
~ THEN REPLY #52581 /* ~"Nordom, hör auf. Dies ist eine Sache zwischen Ravel und mir. Hör zu, Ravel..."~ */ DO ~SetGlobal("Ravel_Ignus","GLOBAL",2)
~ EXTERN ~DRAVEL~ 64
  IF ~  !NearbyDialog("DIgnus")
NearbyDialog("DMorte")
~ THEN REPLY #52582 /* ~"Nordom, hör auf. Dies ist eine Sache zwischen Ravel und mir. Hör zu, Ravel..."~ */ DO ~SetGlobal("Ravel_Morte","GLOBAL",2)
~ EXTERN ~DRAVEL~ 65
  IF ~  !NearbyDialog("DIgnus")
!NearbyDialog("DMorte")
NearbyDialog("Dgrace")
~ THEN REPLY #52583 /* ~"Nordom, hör auf. Dies ist eine Sache zwischen Ravel und mir. Hör zu, Ravel..."~ */ DO ~SetGlobal("Ravel_Grace","GLOBAL",2)
~ EXTERN ~DRAVEL~ 66
  IF ~  !NearbyDialog("Dignus")
!NearbyDialog("DMorte")
!NearbyDialog("DGrace")
NearbyDialog("DAnnah")
~ THEN REPLY #52584 /* ~"Nordom, hör auf. Dies ist eine Sache zwischen Ravel und mir. Hör zu, Ravel..."~ */ DO ~SetGlobal("Ravel_Annah","GLOBAL",2)
~ EXTERN ~DRAVEL~ 67
  IF ~  !NearbyDialog("Dignus")
!NearbyDialog("DMorte")
!NearbyDialog("DGrace")
!NearbyDialog("DAnnah")
~ THEN REPLY #52585 /* ~"Nordom, hör auf. Dies ist eine Sache zwischen Ravel und mir. Hör zu, Ravel..."~ */ EXTERN ~DRAVEL~ 68
END

IF ~~ THEN BEGIN 16 // from:
  SAY #54847 /* ~"Frage: Empfangen. Antwort: Nordom ist bereitet und wartet. Erwarte weitere Anmaßungen."~ */
  IF ~  NearbyDialog("DVhail")
InParty("Vhail")
~ THEN REPLY #54848 /* ~"Eigentlich heißt es 'Anweisungen'... aber egal. Vhailor?"~ */ EXTERN ~DVHAIL~ 15
  IF ~  !InParty("Vhail")
NearbyDialog("Dignus")
InParty("Ignus")
~ THEN REPLY #54849 /* ~"Eigentlich heißt es 'Anweisungen'... aber egal. Ignus?"~ */ EXTERN ~DIGNUS~ 19
  IF ~  !InParty("Vhail")
!InParty("ignus")
NearbyDialog("DGrace")
InParty("Grace")
~ THEN REPLY #54850 /* ~"Eigentlich heißt es 'Anweisungen'... aber egal. Grace?"~ */ EXTERN ~DGRACE~ 168
  IF ~  !InParty("Vhail")
!InParty("ignus")
!InParty("Grace")
NearbyDialog("DAnnah")
InParty("Annah")
~ THEN REPLY #54851 /* ~"Eigentlich heißt es 'Anweisungen'... aber egal. Annah?"~ */ EXTERN ~DANNAH~ 272
  IF ~  !InParty("Vhail")
!InParty("ignus")
!InParty("Grace")
!InParty("annah")
NearbyDialog("DDakkon")
GlobalLT("BD_DAKKON_MORALE","GLOBAL",6)
InParty("Dakkon")
~ THEN REPLY #54852 /* ~"Eigentlich heißt es 'Anweisungen'... aber egal. Dak'kon?"~ */ EXTERN ~DDAKKON~ 173
  IF ~  !InParty("Vhail")
!InParty("ignus")
!InParty("grace")
!InParty("annah")
NearbyDialog("DDakkon")
GlobalGT("BD_DAKKON_MORALE","GLOBAL",5)
InParty("Dakkon")
~ THEN REPLY #54853 /* ~"Eigentlich heißt es 'Anweisungen'... aber egal. Dak'kon?"~ */ EXTERN ~DDAKKON~ 172
  IF ~  !InParty("vhail")
!InParty("ignus")
!InParty("grace")
!InParty("annah")
!InParty("dakkon")
NearbyDialog("Dmorte")
InParty("Morte")
Global("Morte_Quip_Regret_Portal","GLOBAL",0)
~ THEN REPLY #54854 /* ~"Eigentlich heißt es 'Anweisungen'... aber egal. Morte?"~ */ DO ~SetGlobal("Morte_Quip_Regret_Portal","GLOBAL",1)
~ EXTERN ~DMORTE~ 536
  IF ~  !InParty("Vhail")
!InParty("ignus")
!InParty("Grace")
!InParty("annah")
!InParty("Dakkon")
NearbyDialog("DMorte")
InParty("Morte")
GlobalGT("Morte_Quip_Regret_Portal","GLOBAL",0)
~ THEN REPLY #54855 /* ~"Eigentlich heißt es 'Anweisungen'... aber egal. Morte?"~ */ EXTERN ~DMORTE~ 534
  IF ~  !NearbyDialog("DMorte")
~ THEN REPLY #54856 /* ~"Also gut... Dann wollen wir mal sehen, was auf der anderen Seite des Portals liegt."~ */ DO ~SetPortalCursor("Fort_Port",PORTAL_CURSOR_VISIBLE,TRUE)
SetPortalCursor("Fort_Port",PORTAL_ENABLED,TRUE)
~ EXIT
  IF ~  NearbyDialog("DMorte")
!InParty("Morte")
Global("Morte_Quip_Regret_Portal","GLOBAL",0)
~ THEN REPLY #54857 /* ~"Also gut... Dann wollen wir mal sehen, was auf der anderen Seite des Portals liegt."~ */ DO ~SetGlobal("Morte_Quip_Regret_Portal","GLOBAL",1)
~ EXTERN ~DMORTE~ 538
  IF ~  NearbyDialog("DMorte")
!InParty("Morte")
GlobalGT("Morte_Quip_Regret_Portal","GLOBAL",0)
~ THEN REPLY #54858 /* ~"Also gut... Dann wollen wir mal sehen, was auf der anderen Seite des Portals liegt."~ */ DO ~SetPortalCursor("Fort_Port",PORTAL_CURSOR_VISIBLE,TRUE)
SetPortalCursor("Fort_Port",PORTAL_ENABLED,TRUE)
~ EXIT
END

IF ~~ THEN BEGIN 17 // from:
  SAY #55092 /* ~"Schädelsäule: Besteht aus den lebenden Köpfen von Sterblichen, die gelogen haben, wobei besagte Lügen zum Tod anderer Sterblicher geführt haben. Die Säule dient als Wissensquelle. Sie verlangt in mindestens 97 Prozent der Fälle eine Bezahlung für die Weitergabe des besagten Wissens. Die Forderungen der Säule sind meist von einem Ausmaß, das der gewöhnliche Sterbliche als 'sehr hoch' bezeichnen würde. Die Logik legt es nahe, die Säule nicht zu befragen, es sei denn, der Bedarf an einer bestimmten Informationseinheit wird als 'sehr hoch' eingestuft."~ */
  IF ~~ THEN EXTERN ~DPILLAR~ 14
END

IF ~~ THEN BEGIN 18 // from: 0.0
  SAY #55099 /* ~Der Würfel *schrappt*, und es ertönt ein *Klick-klick-klick*, während seine Augen heftig zwinkern. Er wirbelt mit weit aufgerissenen Augen zu dir herum und reißt dann seine zwei freien Arme in die Luft, als wolle er sich ergeben... Doch seine zwei Armbrüste haben sich in seinen Händen gedreht und sind nun auf dich gerichtet. Auf eine merkwürdig unbeteiligte Weise stellst du fest, daß jedes Gelenk an diesem Wesen aus einer Reihe *klirrender* Getriebe und Zahnräder besteht. ~ */
  IF ~  NearbyDialog("Dmorte")
~ THEN EXTERN ~DMORTE~ 571
  IF ~  !NearbyDialog("Dmorte")
~ THEN REPLY #55102 /* ~"Äh..."~ */ GOTO 19
END

IF ~~ THEN BEGIN 19 // from: 18.1
  SAY #55105 /* ~Nachdem er dich kurz angestarrt hat, dreht sich sein würfelförmiger Körper von dir weg und beginnt, auf und nieder zu wippen, als würde er weglaufen - aber seine Füße bleiben fest auf dem Boden. Während er "rennt", *klicken* und *scheppern* die Getriebe der Armbrüste in den Händen des Wesens.~ */
  IF ~~ THEN REPLY #55106 /* ~"Äh... weißt du, daß du verkehrt herum stehst?"~ */ GOTO 20
END

IF ~~ THEN BEGIN 20 // from: 19.0
  SAY #55107 /* ~Das Wesen hört plötzlich auf herumzuwippen und dreht sich zu dir um. "Modron rückwärts = 'Nordom?'" Die Stimme des Würfels besitzt einen metallischen, schnarrenden Klang, als ob er bei jedem Wort von einer Spiralfeder hüpfen und... naja, woanders landen würde. Sein Mund besteht aus einem bizarren, seitwärts gerichteten Halbkreis, den du für ein Lächeln hältst. "Dankbarkeiten! Dankbare!"~ */
  IF ~~ THEN REPLY #55108 /* ~"Äh... wie bitte?"~ */ DO ~SetGlobal("Nordom","GLOBAL",1)
~ JOURNAL #55109 /* ~Ich habe die Gefahr der Namen erkannt. Während ich in Rubikon rumgewandert bin, hab ich einen eigenartigen Modron getroffen. Als ich ihn angesprochen habe, glaubte er, ich würde ihm einen Namen geben. Sein neuer Name lautet 'Nordom', und für einen Modron scheinen bei ihm ziemlich viele Schrauben locker zu sein.~ */ GOTO 22
END

IF ~~ THEN BEGIN 21 // from:
  SAY #55110 /* ~"Modron rückwärts = 'Nordom?'" Die Stimme des Würfels besitzt einen metallischen, schnarrenden Klang, als ob er bei jedem Wort von einer Spiralfeder hüpfen und... naja, woanders landen würde. Sein Mund besteht aus einem bizarren, seitwärts gerichteten Halbkreis, den du für ein Lächeln hältst. "Dankbarkeiten! Dankbare!"~ */
  IF ~~ THEN REPLY #55111 /* ~"Äh... wie bitte?"~ */ DO ~SetGlobal("Nordom","GLOBAL",1)
~ JOURNAL #55109 /* ~Ich habe die Gefahr der Namen erkannt. Während ich in Rubikon rumgewandert bin, hab ich einen eigenartigen Modron getroffen. Als ich ihn angesprochen habe, glaubte er, ich würde ihm einen Namen geben. Sein neuer Name lautet 'Nordom', und für einen Modron scheinen bei ihm ziemlich viele Schrauben locker zu sein.~ */ GOTO 22
END

IF ~~ THEN BEGIN 22 // from: 20.0 21.0
  SAY #55112 /* ~"Nicht leid. Null leid. Dankbarkeiten! Indentifikation des Selbst komprosiziert aus Zweifeln + Nachdenken + Analyse." Der Würfel *schrappt* noch einmal, und eines seiner Augen zwinkert mit einem *Klick* - und nach einer kurzen Weile *klickt* auch das andere Auge, als wollte es nicht zu kurz kommen.~ */
  IF ~~ THEN REPLY #55113 /* ~"Ich verstehe immer noch nicht."~ */ GOTO 23
  IF ~  CheckStatGT(Protagonist,15,INT)
~ THEN REPLY #55114 /* ~"Du bist dankbar dafür, daß ich dich identifiziert habe? Bist du denn kein Modron?"~ */ GOTO 23
END

IF ~~ THEN BEGIN 23 // from: 22.0 22.1
  SAY #55115 /* ~Die Gesichtszüge des Würfels beruhigen sich, und sein Mund bildet eine gerade Linie. "Indemnifikation dieser Einheit (wurde) kompromisiert. Subjekt - Angesprochener indemnifizierte Einheit als 'Nordom.' Dankbarkeiten werden exprimiziert für Bereitstellung der Indemnifikation Nordom." ~ */
  IF ~~ THEN REPLY #55116 /* ~"Das war nichts Besonderes. Ehrlich."~ */ GOTO 24
END

IF ~~ THEN BEGIN 24 // from: 23.0
  SAY #55117 /* ~Nordoms Augen *klicken* und -zwinkern ein-, zwei-, dreimal. Mit jedem Zwinkern weiten sich die schwarzen Punkte in der Mitte seiner Augen - beim dritten Zwinkern sind sie große Flecken. "Real-iris-ierung erreicht: Nordom null wissen Namen von Angesprochenem. Indemnifiziere dich."~ */
  IF ~~ THEN REPLY #55118 /* ~"Du meinst 'identifizieren', oder?"~ */ GOTO 25
  IF ~~ THEN REPLY #55119 /* ~Wahrheit: "Ich *habe* eigentlich keinen Namen, Nordom."~ */ DO ~IncrementGlobalOnceEx("GLOBALLawful_Nordom_1","GLOBALLaw",1)
SetAnimState("Nordom",ANIM_MIMESTAND)
~ GOTO 26
  IF ~~ THEN REPLY #55120 /* ~Lüge: "Adahn. Mein Name ist Adahn."~ */ DO ~IncrementGlobal("Adahn","GLOBAL",1)
IncrementGlobalOnceEx("GLOBALChaotic_Nordom_1","GLOBALLaw",-1)
SetAnimState("Nordom",ANIM_MIMESTAND)
~ GOTO 33
END

IF ~~ THEN BEGIN 25 // from: 24.0
  SAY #55121 /* ~"Bestätigung: Indentifizierung erforderlich. Anforderung: Identität gegenüber Nordom identifizieren."~ */
  IF ~~ THEN REPLY #55122 /* ~Wahrheit: "Ich *habe* eigentlich keinen Namen, Nordom."~ */ DO ~IncrementGlobalOnceEx("GLOBALLawful_Nordom_1","GLOBALLaw",1)
SetAnimState("Nordom",ANIM_MIMESTAND)
~ GOTO 26
  IF ~~ THEN REPLY #55123 /* ~Lüge: "Adahn. Mein Name ist Adahn."~ */ DO ~IncrementGlobal("Adahn","GLOBAL",1)
IncrementGlobalOnceEx("GLOBALChaotic_Nordom_1","GLOBALLaw",-1)
SetAnimState("Nordom",ANIM_MIMESTAND)
~ GOTO 33
  IF ~~ THEN REPLY #55124 /* ~"Nordom, ich möchte mich nicht identifizieren. Ich möchte eigentlich dieses Gespräch mit dir beenden und mich wieder um meine Angelegenheiten kümmern."~ */ DO ~SetAnimState("Nordom",ANIM_MIMESTANDFIDGET1)
~ GOTO 35
END

IF ~~ THEN BEGIN 26 // from: 24.1 25.0
  SAY #55125 /* ~Nordoms Augen weiten sich, der Durchmesser seiner 'Pupillen' geht wieder auf Normalgröße zurück. Er *klickt* und zwinkert einmal - doch die Metall-Läden, die vor seine Augen fallen, gehen nicht mehr auf. Nach einer Weile beginnen sie zu klappern, als wären sie verklemmt.~ */
  IF ~~ THEN REPLY #55126 /* ~"Äh... Nordom. Du kannst jetzt die Augen aufmachen."~ */ GOTO 27
END

IF ~~ THEN BEGIN 27 // from: 26.0
  SAY #55127 /* ~Mit einem erneuten *Klick* öffnen sich Nordoms Augen. "Nicht Augen schließen: Beschäftigt mit Aktion Klärifizierung des Subjekts (Unidentifiziert, Namenlos). Formuliere Frage... Stelle Frage: Hast du dich verirrt?"~ */
  IF ~  CheckStatLT(Protagonist,13,WIS)
CheckStatLT(Protagonist,13,INT)
~ THEN REPLY #55128 /* ~"Verirrt? Was meinst du damit?"~ */ GOTO 29
  IF ~  CheckStatGT(Protagonist,12,INT)
CheckStatLT(Protagonist,13,WIS)
~ THEN REPLY #55129 /* ~"Verirrt? Was meinst du damit?"~ */ DO ~SetAnimState("Nordom",ANIM_MIMESTAND)
~ GOTO 28
  IF ~  CheckStatGT(Protagonist,12,WIS)
~ THEN REPLY #55130 /* ~"Verirrt? Was meinst du damit?"~ */ DO ~SetAnimState("Nordom",ANIM_MIMESTAND)
~ GOTO 28
END

IF ~~ THEN BEGIN 28 // from: 27.1 27.2
  SAY #55131 /* ~Als Nordoms schnarrende Frage mit dem Wort 'verirrt' endet, kriecht in deinem Hinterkopf ein seltsames Gefühl empor - dann stellen sich zwei Gewißheiten ein: Es ist nicht das erste Mal, daß du diese Frage hörst, und was Nordom gleich zu deiner *nächsten* Frage sagen wird, ist wichtig.~ */
  IF ~~ THEN REPLY #55132 /* ~"Wenn du 'verirrt' sagst, Nordom, was meinst du dann damit?"~ */ GOTO 29
END

IF ~~ THEN BEGIN 29 // from: 27.0 28.0
  SAY #55133 /* ~"Fehlen von Namen = Fehlen von Identität = Fehlen von Zweck = Fehlen von Platz im Multiversum = Kein Status = Verirrt. Nordom existierte in Status Null, bis Subjekt (Unidentifiziert, Namenlos) Nordom Identität verlieh. Null Identität, null Zweck, null Platz ist gleich 'Verirrt'."~ */
  IF ~~ THEN REPLY #55134 /* ~"Nun, ich glaube, ich hatte mal einen Namen, aber ich habe ihn vergessen."~ */ GOTO 30
END

IF ~~ THEN BEGIN 30 // from: 29.0
  SAY #55135 /* ~"Formuliere neue Frage." Man hört ein *Tkkk-tkkk-tkkk*, als Nordom dreimal schnell zwinkert - es klingt wie Hämmern auf einem Blech. "Erkläre Nordom warum du diese Aktion ausgeführt hast: VERGESSEN."~ */
  IF ~~ THEN REPLY #55136 /* ~"Es ist einfach passiert. Es war keine Absicht."~ */ GOTO 31
  IF ~~ THEN REPLY #55137 /* ~"Es ist nun mal meine Art, Sachen zu vergessen, glaube ich."~ */ GOTO 31
  IF ~~ THEN REPLY #55138 /* ~"Es ist eine Nebenwirkung meines Zustands, glaube ich."~ */ GOTO 31
END

IF ~~ THEN BEGIN 31 // from: 30.0 30.1 30.2
  SAY #55139 /* ~Die Metall-Läden schließen sich über Nordoms Augen mit einem *whrrr*, dann rattert er eine Weile mit geschlossenen Augen vor sich hin. Als sie auf-*klicken*, macht Nordom *schrapps*. "Frage: Gedächtnis fehlerhaft?"~ */
  IF ~~ THEN REPLY #55140 /* ~"Ja, so könnte man das sagen."~ */ GOTO 32
END

IF ~~ THEN BEGIN 32 // from: 31.0
  SAY #55141 /* ~"Prä-konditionelle Aktion zur Klärung von Frage: Nordom Gedächtnisspeicher noch nicht auf Kapazität. Frage/Aktion: Falls Subjekt (Unidentifiziert, Namenlos) 'Ja' zurückgibt, kann Nordom sich für dich wieder neu erinnern."~ */
  IF ~~ THEN REPLY #55142 /* ~"Klar, nur zu, Nordom... Aber, ich glaube, ich muß mich wieder um meine Angelegenheiten kümmern."~ */ DO ~SetAnimState("Nordom",ANIM_MIMESTANDFIDGET1)
~ GOTO 35
  IF ~~ THEN REPLY #55143 /* ~"Danke für das Angebot, Nordom. Wenn du möchtest, kannst du das gerne. Aber sieh mal, ich muß jetzt wirklich los."~ */ DO ~SetAnimState("Nordom",ANIM_MIMESTANDFIDGET1)
~ GOTO 35
END

IF ~~ THEN BEGIN 33 // from: 24.2 25.1
  SAY #55144 /* ~Nordoms Augen weiten sich, der Durchmesser seiner 'Pupillen' geht wieder auf Normalgröße zurück. Er *klickt* und blinkt einmal, aber die Metall-Läden über seinen Augen bleiben geschlossen.~ */
  IF ~~ THEN REPLY #55145 /* ~"Äh... Nordom. Du kannst jetzt die Augen aufmachen."~ */ GOTO 34
END

IF ~~ THEN BEGIN 34 // from: 33.0
  SAY #55146 /* ~Mit einem weiteren *Klick* öffnen sich Nordoms Augen. "Nicht Augen schließen: Aktion Klärifizierung für Adahn. Lese Information ein. Erinnerung wird durchgeführt. Adahn: Name katalogisiert. Nordom wird Identität nicht vergessen, empfindungsfähig: Adahn."~ */
  IF ~~ THEN REPLY #55147 /* ~"Klasse. Nordom, es war wirklich nett, aber ich muß jetzt gehen."~ */ DO ~SetAnimState("Nordom",ANIM_MIMESTANDFIDGET1)
~ GOTO 35
END

IF ~~ THEN BEGIN 35 // from: 25.2 32.0 32.1 34.0
  SAY #55148 /* ~Plötzlich vernimmst du eine rasche Folge von *Klicks* und *Schnarren* von den Armbrüsten in Nordoms Hand. Seine Augen kreisen und fixieren dann die Armbrüste, von denen er nun die rechte höher hält, als wolle er ihr zuhören.~ */
  IF ~~ THEN REPLY #55149 /* ~"Ist alles in Ordnung?"~ */ GOTO 36
END

IF ~~ THEN BEGIN 36 // from: 35.0
  SAY #55150 /* ~Eines von Nordoms Augen fixiert weiterhin die Armbrust, die leise *klickt*, sein anderes Auge heftet sich auf dich. "Frage: Dürfen diese dich auf deiner Reuse begleiten?"~ */
  IF ~~ THEN REPLY #55157 /* ~"Äh, du meinst doch bestimmt 'Reise?'"~ */ GOTO 37
  IF ~~ THEN REPLY #55164 /* ~"Weißt du, ich glaube WIRKLICH nicht, daß das eine gute Idee wäre. Nein, jetzt nicht... Nordom."~ */ GOTO 38
  IF ~  NumInParty(6)
~ THEN REPLY #55165 /* ~"Tja... also gut. Ich werde allerdings ein paar Änderungen in der Gruppe vornehmen müssen."~ */ GOTO 39
  IF ~  NumInPartyLT(6)
~ THEN REPLY #55166 /* ~"Klar. Wir können immer eine hilfreiche Hand gebrauchen... oder vier."~ */ DO ~SetGlobal("Nordom","GLOBAL",2)
~ GOTO 40
END

IF ~~ THEN BEGIN 37 // from: 36.0
  SAY #55167 /* ~"In der Tat. Reise, bestätigt. Genehmigung erteilt?"~ */
  IF ~~ THEN REPLY #55168 /* ~"Weißt du, ich glaube WIRKLICH nicht, daß das eine gute Idee wäre. Nein, jetzt nicht... Nordom."~ */ GOTO 38
  IF ~  NumInParty(6)
~ THEN REPLY #55169 /* ~"Tja... also gut. Ich werde allerdings ein paar Änderungen in der Gruppe vornehmen müssen."~ */ GOTO 40
  IF ~  NumInPartyLT(6)
~ THEN REPLY #55170 /* ~"Klar. Wir können immer eine hilfreiche Hand gebrauchen... oder vier."~ */ DO ~SetGlobal("Nordom","GLOBAL",2)
~ GOTO 40
END

IF ~~ THEN BEGIN 38 // from: 36.1 37.0
  SAY #55171 /* ~Nordom starrt dich mit weit aufgerissenen Augen an. Seine rechte Armbrust *tscha-klackt*, dann zwinkert Nordom. "Appendix-Frage: Bitte?"~ */
  IF ~~ THEN REPLY #55172 /* ~"Diesmal nicht, Nordom."~ */ GOTO 39
  IF ~  NumInParty(6)
~ THEN REPLY #55173 /* ~"Tja... also gut. Ich werde allerdings ein paar Änderungen in der Gruppe vornehmen müssen."~ */ GOTO 40
  IF ~  NumInPartyLT(6)
~ THEN REPLY #55174 /* ~"Nun... also gut. Wir können immer eine hilfreiche Hand gebrauchen... oder vier."~ */ DO ~SetGlobal("Nordom","GLOBAL",2)
~ GOTO 40
END

IF ~~ THEN BEGIN 39 // from: 36.2 38.0
  SAY #55175 /* ~Nordoms Mund verdreht sich in einen Halbkreis nach unten. "Antwort auf Frage empfangen und anerkannt. Nordom wird weiterhin in Abwesenheit einer größeren Gemeinschaft existieren. Nordom wird weiterhin diesen polygonalen Raum bewohnen, bis er abgeholt wird."~ */
  IF ~~ THEN REPLY #55176 /* ~"In Ordnung. Vielleicht komme ich wieder, Nordom."~ */ EXIT
END

IF ~~ THEN BEGIN 40 // from: 36.3 37.1 37.2 38.1 38.2
  SAY #55177 /* ~Nordoms 'Mund' bildet wieder den bizarren Halbkreis von vorhin, seine beiden Armbrüste beginnen heftig zu *klicken* und zu *schnarren*, wobei sie ihm fast aus der Hand hüpfen. "Dankbarkeiten! Dankbare! Nordom und Armbrüste wurden mit größerer Gemeinschaft verbunden."~ */
  IF ~~ THEN REPLY #55178 /* ~"Ich wäre im Moment noch nicht so dankbar. Los, gehen wir..."~ */ DO ~SetGlobal("Nordom","GLOBAL",2)
AddexperienceParty(36000)
ChangeAIScript("pcnordom",DEFAULT)
JoinPartyEx(TRUE)
~ EXIT
END

IF ~~ THEN BEGIN 41 // from:
  SAY #55179 /* ~Null_Node~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 42 // from:
  SAY #55180 /* ~Null_Node~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 43 // from: 9.3
  SAY #55181 /* ~"Achtung, Nordom: erforderlich!" Nordom dreht sich zu dir um, stolpert dabei und richtet sich mit einem *Klank* wieder auf. "Antwort auf Frage: Wird Aktion mit Armbrust durchgeführt? Stelle Antrag auf Klärifizierung: Null Armbrust vorhanden."~ */
  IF ~~ THEN REPLY #55182 /* ~"Du hast doch dort ein Paar Armbüste, Nordom."~ */ GOTO 44
  IF ~~ THEN REPLY #55183 /* ~"Oh, echt? Und was sind das für zwei schnarrende Dinger in deiner Hand?"~ */ DO ~SetAnimState("Nordom",ANIM_MIMESTANCEFIDGET1)
~ GOTO 46
  IF ~~ THEN REPLY #55184 /* ~"Macht nichts, Nordom. Ich hätte da noch ein paar andere Fragen an dich..."~ */ GOTO 74
  IF ~~ THEN REPLY #55185 /* ~"Vergiß es, Nordom. Ziehen wir weiter."~ */ EXIT
END

IF ~~ THEN BEGIN 44 // from: 43.0
  SAY #55186 /* ~"Klärifizierung: Aussage 'fehlerhaft.' Nordom verwendet keine Armbrust." Er stottert einen Moment, dann zeigen plötzlich die Armbrüste auf dich - obwohl du nicht gesehen hast, wie sie sich bewegt haben. "N-N-N-Null Armbrüste."~ */
  IF ~~ THEN REPLY #55189 /* ~"Ziel nicht mit deinen Armbrüsten auf mich."~ */ GOTO 45
  IF ~~ THEN REPLY #55190 /* ~"Nordom, natürlich *verwendest* du Armbrüste - du hast sogar ZWEI davon."~ */ GOTO 45
  IF ~~ THEN REPLY #55191 /* ~"Oh, echt? Und was sind das für zwei schnarrende Dinger in deiner Hand?"~ */ DO ~SetAnimState("Nordom",ANIM_MIMESTANCEFIDGET1)
~ GOTO 46
  IF ~~ THEN REPLY #55192 /* ~"Macht nichts, Nordom. Ich hätte da noch ein paar andere Fragen an dich..."~ */ GOTO 74
  IF ~~ THEN REPLY #55193 /* ~"Vergiß es, Nordom. Ziehen wir weiter."~ */ EXIT
END

IF ~~ THEN BEGIN 45 // from: 44.0 44.1
  SAY #55194 /* ~Du zwinkerst einen Augenblick - und plötzlich sind die Armbrüste auf Nordom gerichtet. Er scheint ihre Bewegung nicht bemerkt zu haben, sein Blick bleibt weiter auf dich gerichtet. "Widerspruch initiiert nicht Kontraktion. Null Armbrüste."~ */
  IF ~~ THEN REPLY #55195 /* ~"Oh, wirklich? Und was sind das für schnarrende Dinger in deiner Hand, Nordom?"~ */ DO ~SetAnimState("Nordom",ANIM_MIMESTANCEFIDGET1)
~ GOTO 46
  IF ~~ THEN REPLY #55196 /* ~"Macht nichts, Nordom. Ich hätte da noch ein paar andere Fragen an dich..."~ */ GOTO 74
  IF ~~ THEN REPLY #55197 /* ~"Vergiß es, Nordom. Ziehen wir weiter."~ */ EXIT
END

IF ~~ THEN BEGIN 46 // from: 43.1 44.2 45.0
  SAY #55198 /* ~"Antwort: Zwei - KLICKENDE - Objekte werden in gegenüberliegenden Fingern gehalten." Nordom hebt seine Nietenfinger und schwenkt die zwei Armbrüste, die unvermittelt zu *klicken* und zu *schnarren* beginnen, als wären sie irritiert. "Antwort: Objekte = Getriebegeister."~ */
  IF ~~ THEN REPLY #55199 /* ~"Getriebegeister? Was meinst du damit?"~ */ GOTO 47
  IF ~~ THEN REPLY #55200 /* ~"Macht nichts, Nordom. Ich hätte da noch ein paar andere Fragen an dich..."~ */ GOTO 74
  IF ~~ THEN REPLY #55201 /* ~"Vergiß es, Nordom. Ziehen wir weiter."~ */ EXIT
END

IF ~~ THEN BEGIN 47 // from: 46.0
  SAY #55202 /* ~"Frage: Definiere: Getriebegeister. Antwort: Getriebegeister."~ */
  IF ~  NearbyDialog("Dmorte")
~ THEN REPLY #55203 /* ~"Ja, aber was *sind* Getriebegeister?"~ */ EXTERN ~DMORTE~ 573
  IF ~  !NearbyDialog("Dmorte")
~ THEN REPLY #55204 /* ~"Ja, aber was *sind* Getriebegeister?"~ */ GOTO 48
END

IF ~~ THEN BEGIN 48 // from: 47.1
  SAY #55205 /* ~"Frage = Frage: Definiere = Definiere: Getriebegeister. Antwort = Getriebegeister."~ */
  IF ~~ THEN REPLY #55206 /* ~"Macht nichts, Nordom. Ich hätte da noch ein paar andere Fragen an dich..."~ */ GOTO 74
  IF ~~ THEN REPLY #55207 /* ~"Vergiß es, Nordom. Ziehen wir weiter."~ */ EXIT
END

IF ~~ THEN BEGIN 49 // from: 9.4 74.3
  SAY #55208 /* ~Nordom *schrappt*. "Frage erfordert Einlesen der Chronologie: Soll Nordom Chronologie einlesen?"~ */
  IF ~~ THEN REPLY #55209 /* ~"Ja, das wüßte ich gerne."~ */ DO ~SetGlobal("Know_Mechanus","GLOBAL",1)
~ GOTO 50
  IF ~~ THEN REPLY #55210 /* ~"Macht nichts, Nordom. Ich hätte da noch ein paar andere Fragen an dich..."~ */ GOTO 74
  IF ~~ THEN REPLY #55211 /* ~"Vergiß es, Nordom. Ziehen wir weiter."~ */ EXIT
END

IF ~~ THEN BEGIN 50 // from: 49.0
  SAY #55212 /* ~"Befehle erhalten zu Beginn des Rubikon-Projekts: Abreise von Ebene/Mechanus. Erste Stufe: Ankunft an Bestimmungsort: Ebene/Limbus. Zweite Stufe: Parameter diktiert von Vorgesetztem/Entwicklungsleiter: Geformte Materie der Ebene (Limbus) zum Test von Hypothese. Rubikon-Verlies konstruiert."~ */
  IF ~~ THEN REPLY #55213 /* ~"Erzähl weiter..."~ */ GOTO 51
  IF ~~ THEN REPLY #55214 /* ~"Moment mal, Nordom. Was ist die Ebene Mechanus?"~ */ DO ~SetAnimState("Nordom",ANIM_MIMESTAND)
~ GOTO 64
  IF ~~ THEN REPLY #55215 /* ~"Macht nichts, Nordom. Ich hätte da noch ein paar andere Fragen an dich..."~ */ GOTO 74
  IF ~~ THEN REPLY #55216 /* ~"Vergiß es, Nordom. Ziehen wir weiter."~ */ EXIT
END

IF ~~ THEN BEGIN 51 // from: 50.0
  SAY #55217 /* ~"Vorgesetzter/ - Leiter der Forschungs- und Entwicklungsabteilung - bei Feldversuch vermißt. Chronologie unterbrochen bei Erreichen von zweiter Stufe, dritte Stufe (Unterbrechung) aufgetreten, nicht Teil der Projekt-Anweisungen."~ */
  IF ~~ THEN REPLY #55218 /* ~"Was ist während der dritten Stufe passiert?"~ */ GOTO 60
  IF ~~ THEN REPLY #55219 /* ~"Was war das für ein Feldtest?"~ */ GOTO 52
  IF ~~ THEN REPLY #55220 /* ~"Macht nichts, Nordom. Ich hätte da noch ein paar andere Fragen an dich..."~ */ GOTO 74
  IF ~~ THEN REPLY #55221 /* ~"Vergiß es, Nordom. Ziehen wir weiter."~ */ EXIT
END

IF ~~ THEN BEGIN 52 // from: 51.1
  SAY #55222 /* ~"Vorgesetzter/ - Leiter der Forschungs- und Entwicklungsabteilung - Feldversuch: Erkundung der Perimeter von (Schwierigem) Rubikon Verlies-Konstrukt zur Bestimmung von: Unstimmigkeiten. Viele Abweichungen entdeckt: Fehler beträchtlich." Nordom gibt ein leises Heulen von sich und schließt die Augen mit einem *Klick*. "Entwicklungsleiter nicht von Feldversuch zurückgekehrt."~ */
  IF ~~ THEN REPLY #55223 /* ~"Verstehe. Und was passierte während der besagten dritten Stufe?"~ */ GOTO 60
  IF ~  Global("Know_Director_Truth","GLOBAL",2)
~ THEN REPLY #55224 /* ~"Was ist mit ihm passiert?"~ */ GOTO 55
  IF ~  Global("Know_Director_Truth","GLOBAL",1)
~ THEN REPLY #55225 /* ~"Ich habe gehört, daß der Rubikon-Zauberer den Entwicklungsleiter zerstört hat."~ */ GOTO 56
  IF ~  Global("Know_Director_Truth","GLOBAL",0)
~ THEN REPLY #55226 /* ~"Was ist mit ihm passiert?"~ */ DO ~SetAnimState("Nordom",ANIM_MIMESTANDFIDGET1)
~ GOTO 53
  IF ~~ THEN REPLY #55227 /* ~"Macht nichts, Nordom. Ich hätte da noch ein paar andere Fragen an dich..."~ */ GOTO 74
  IF ~~ THEN REPLY #55228 /* ~"Vergiß es, Nordom. Ziehen wir weiter."~ */ EXIT
END

IF ~~ THEN BEGIN 53 // from: 52.3
  SAY #55229 /* ~Die linke Armbrust gibt plötzlich ein heftiges *Klicken* von sich. Nordom hebt sie an, wie um sie besser verstehen zu können. Das *Klicken* dauert eine Weile an, bis es plötzlich von einem langen, hallenden *Schnarren* der rechten Armbrust unterbrochen wird.~ */
  IF ~~ THEN REPLY #55230 /* ~"Äh, Nordom? Hast du eine Ahnung, was mit ihm passiert ist?"~ */ GOTO 54
  IF ~~ THEN REPLY #55231 /* ~"Vergiß es - was ist während der dritten Stufe des Projekts passiert?"~ */ GOTO 60
  IF ~~ THEN REPLY #55232 /* ~"Macht nichts, Nordom. Ich hätte da noch ein paar andere Fragen an dich..."~ */ GOTO 74
  IF ~~ THEN REPLY #55233 /* ~"Vergiß es, Nordom. Ziehen wir weiter."~ */ EXIT
END

IF ~~ THEN BEGIN 54 // from: 53.0
  SAY #55234 /* ~"Verdacht, unbegründet: Vorgesetzter stieß auf Fehler." Nordoms Augen *klicken*, als hätte er etwas im Auge. "Hypothese: Der Fehler war groß und unerwartet."~ */
  IF ~~ THEN REPLY #55235 /* ~"Das wäre schon möglich. Was ist während der dritten Stufe des Projekts passiert?"~ */ GOTO 60
  IF ~~ THEN REPLY #55236 /* ~"Macht nichts, Nordom. Ich hätte da noch ein paar andere Fragen an dich..."~ */ GOTO 74
  IF ~~ THEN REPLY #55237 /* ~"Vergiß es, Nordom. Ziehen wir weiter."~ */ EXIT
END

IF ~~ THEN BEGIN 55 // from: 52.1
  SAY #55244 /* ~"Zitiere/Rubikon-Zauberer/Größenwahnsinnige Freiheitserklärung: Entwicklungsleiter stieß auf Fehler: Rubikon-Zauberer. Hypothese: Leiter unterschätzte Größe des Fehlers. Versuchte, Abweichung in Rubikon-Zauberer zu korrigieren. Ergebnis: Leiter = Genullt."~ */
  IF ~~ THEN REPLY #55245 /* ~"Um genau zu sein hat Rubikon noch einen Leiter, Nordom, und zwar mich."~ */ DO ~SetAnimState("Nordom",ANIM_MIMESTAND)
~ GOTO 58
  IF ~~ THEN REPLY #55246 /* ~"Das hat der Zauberer behauptet. Also, nachdem er 'genullt' worden war, was passierte dann während der dritten Stufe des Projekts?"~ */ GOTO 60
  IF ~~ THEN REPLY #55247 /* ~"Macht nichts, Nordom. Ich hätte da noch ein paar andere Fragen an dich..."~ */ GOTO 74
  IF ~~ THEN REPLY #55248 /* ~"Vergiß es, Nordom. Ziehen wir weiter."~ */ EXIT
END

IF ~~ THEN BEGIN 56 // from: 52.2
  SAY #55249 /* ~"Verdacht, unbegründet = Jetzt bestätigt: Vorgesetzter stieß auf Fehler." Nordoms Augen *klicken*, als hätte er etwas im Auge. "Frage: Der Fehler war groß und unerwartet?"~ */
  IF ~~ THEN REPLY #55250 /* ~"Und ob. Ich glaube nicht, daß es ihm sehr schwer gefallen ist, den Leiter auszulöschen."~ */ DO ~SetGlobal("Know_Director_Truth","GLOBAL",2)
~ GOTO 57
  IF ~~ THEN REPLY #55251 /* ~"Wir reden ein andermal darüber. Erzähl mir lieber von der dritten Stufe des Projekts."~ */ GOTO 60
  IF ~~ THEN REPLY #55252 /* ~"Das sag ich dir später, Nordom. Im Moment hätte ich noch ein paar Fragen an dich..."~ */ GOTO 74
  IF ~~ THEN REPLY #55253 /* ~"Vergiß es, Nordom. Ziehen wir weiter."~ */ EXIT
END

IF ~~ THEN BEGIN 57 // from: 56.0
  SAY #55254 /* ~"Verarbeite neue Informationen..." Nordom starrt dich einen Moment lang schweigend an, dann erklingt ein leises Knirschen der Zahnräder in seinem Inneren. Nach einer Weile *schrappst* er: "Schicksal des Entwicklungsleiters bestätigt. Leiter = Genullt."~ */
  IF ~~ THEN REPLY #55255 /* ~"Nun, Nordom, um die Wahrheit zu sagen: Ich bin der neue Leiter der Forschungs- und Entwicklungsabteilung von Rubikon."~ */ DO ~SetAnimState("Nordom",ANIM_MIMESTAND)
~ GOTO 58
  IF ~~ THEN REPLY #55256 /* ~"Ich freue mich, daß ich das für dich klarstellen konnte, Nordom. Jetzt hätte ich noch ein paar Fragen an dich..."~ */ GOTO 74
  IF ~~ THEN REPLY #55257 /* ~"Vergiß es, Nordom. Ziehen wir weiter."~ */ EXIT
END

IF ~~ THEN BEGIN 58 // from: 55.0 57.0
  SAY #55258 /* ~Nordom starrt dich einen Moment lang an, dann erklingt ein langsames *whrrrr* aus seinem Inneren und er *KLICKT*. Du bist dir nicht sicher, aber es klingt, als wäre etwas eingerastet. ~ */
  IF ~  GlobalGT("Nordom_Self_Truth","GLOBAL",0)
~ THEN REPLY #55259 /* ~"Äh... geht's dir gut, Nordom?"~ */ DO ~AddexperienceParty(36000)
PermanentStatChange("Nordom",INT,RAISE,1)
PermanentStatChange("Nordom",DEX,RAISE,1)
SetGlobal("Know_Director_Truth","GLOBAL",3)
~ JOURNAL #55261 /* ~Hatte wieder so einen stabilisierenden Vorfall mit Nordom, so wie damals, als ich ihm sagte, daß die Verschiebung seiner Perspektive vielleicht durch seine Abspaltung von der Quelle verursacht wurde... Als ich ihm gesagt habe, daß ich der neue Leiter der Forschungs- und Entwicklungsabteilung von Rubikon bin, schien ihn das irgendwie zu stabilisieren. Ich denke, vielleicht hilft Nordom das Einrichten einer neuen Befehlskette, noch 'fokussierter' zu werden. Möglicherweise hat ihn der Verlust des alten Leiters doch stärker aus der Bahn geworfen, als ich dachte.~ */ GOTO 59
  IF ~  Global("Nordom_Self_Truth","GLOBAL",0)
~ THEN REPLY #55260 /* ~"Äh... geht's dir gut, Nordom?"~ */ DO ~AddexperienceParty(36000)
PermanentStatChange("Nordom",INT,RAISE,1)
PermanentStatChange("Nordom",DEX,RAISE,1)
SetGlobal("Know_Director_Truth","GLOBAL",3)
~ JOURNAL #55262 /* ~Als ich Nordom gesagt habe, daß ich der neue Leiter der Forschungs- und Entwicklungsabteilung sei, ist was Komisches passiert - die Nachricht schien ihn irgendwie zu *stabilisieren*. Das ist merkwürdig, aber ich denke, möglicherweise hat das Einrichten einer neuen Befehlskette Nordom dabei geholfen, ein wenig... 'fokussierter' zu werden. Vielleicht hat ihn der Verlust des früheren Leiters doch stärker aus der Bahn geworfen, als ich dachte.~ */ GOTO 59
END

IF ~~ THEN BEGIN 59 // from: 58.0 58.1
  SAY #55263 /* ~"Status aktualisiert: Entwicklungsleiter jetzt in Hierarchie wieder bestätigt." Zu deinem Erstaunen ist das Schnarren in seiner Stimme schwächer geworden. Sie klingt nun glatter, kontrollierter als zuvor. Das ist etwas beunruhigend.~ */
  IF ~  CheckStatGT(Protagonist,15,INT)
CheckStatLT(Protagonist,18,WIS)
~ THEN REPLY #55264 /* ~"Hmmmm. Nordom... aus reiner Neugierde: Sag mir doch mal, wofür ein Entwicklungsleiter so verantwortlich ist. Und wie sehr du ihm gehorchen mußt!?"~ */ DO ~SetGlobal("Nordom_Order","GLOBAL",1)
~ GOTO 79
  IF ~  CheckStatGT(Protagonist,17,WIS)
~ THEN REPLY #55265 /* ~"Hmmmm. Nordom... aus reiner Neugierde: Sag mir doch mal, wofür ein Entwicklungsleiter so verantwortlich ist. Und wie sehr du ihm gehorchen mußt!?"~ */ DO ~SetGlobal("Nordom_Order","GLOBAL",1)
~ GOTO 79
  IF ~~ THEN REPLY #55266 /* ~"Verstehe. Ich bin ja froh, daß ich das für dich klären konnte. Aber zurück zu den Stufen des Projekts: Was ist in der dritten Stufe passiert?"~ */ GOTO 60
  IF ~~ THEN REPLY #55267 /* ~"Nordom, ich habe noch einige Fragen an dich..."~ */ GOTO 74
  IF ~~ THEN REPLY #55268 /* ~"Ich glaube, wir haben uns genug unterhalten. Gehen wir."~ */ EXIT
END

IF ~~ THEN BEGIN 60 // from: 51.0 52.0 53.1 54.0 55.1 56.1 59.2
  SAY #55269 /* ~"Dritte Stufe, einmalig: Nordom-spezifische Stufe. Hypothese: Fehlen des Leiters, plus Aussetzen gegenüber Ebene (Chaos) verursachte Abweichung in /Nordoms/ Perpektive von Norm."~ */
  IF ~~ THEN REPLY #55270 /* ~"'Von der Norm abweichen?' Wie?"~ */ GOTO 61
  IF ~~ THEN REPLY #55271 /* ~"Macht nichts, Nordom. Ich hätte da noch ein paar andere Fragen an dich..."~ */ GOTO 74
  IF ~~ THEN REPLY #55272 /* ~"Vergiß es, Nordom. Ziehen wir weiter."~ */ EXIT
END

IF ~~ THEN BEGIN 61 // from: 60.0
  SAY #55273 /* ~"Selbstbeobachtungszyklus beginnt." Nordom *klickt* seine Augen zu und fängt an zu *summen*. Nach einigen Augenblicken *klicken* seine Augen wieder auf. "Auswertung der Selbstbeobachtung: Wahrnehmungen wurden (1) kleiner und (B) lauter. Flügel wurden durch Arme ersetzt: Grund unbekannt. Verdacht/Hypothese: Flügel unerwünscht? Spekulation. Nordom war einmal - EINS - aber ist jetzt kleineres, lauteres - EINS! - Veränderung hat zu Schwierigkeiten bei der Informationsverarbeitung geführt."~ */
  IF ~  CheckStatGT(Protagonist,15,INT)
Global("Nordom_Self_Truth","GLOBAL",0)
Global("Know_Source","GLOBAL",1)
~ THEN REPLY #55274 /* ~"Glaubst du, es ist die Trennung von deiner Quelle, die für die Verschiebung deiner Perspektive von dem ruhigeren und breiteren 'Einem' zum kleineren und lauteren verantwortlich ist?'"~ */ DO ~SetGlobal("Nordom_Self_Truth","GLOBAL",1)
SetAnimState("Nordom",ANIM_MIMESTAND)
~ GOTO 62
  IF ~~ THEN REPLY #55275 /* ~"Aha, Nordom. Ich habe noch ein paar Fragen an dich..."~ */ GOTO 74
  IF ~~ THEN REPLY #55276 /* ~"Ich hab' genug gehört, Nordom. Weiter geht's."~ */ EXIT
END

IF ~~ THEN BEGIN 62 // from: 61.0 106.0 107.0
  SAY #55277 /* ~Nordom starrt dich einen Moment lang schweigend an, dann ertönt ein langsames *whrrrr* aus seinem Inneren und er *TSCHA-KLACKT*. Du bist dir nicht sicher, aber es klingt, als wäre etwas eingerastet. ~ */
  IF ~  Global("Know_Director_Truth","GLOBAL",3)
~ THEN REPLY #55278 /* ~"Nordom?"~ */ DO ~AddexperienceParty(36000)
PermanentStatChange("Nordom",INT,RAISE,1)
PermanentStatChange("Nordom",CON,RAISE,1)
FullHeal("Nordom")
~ JOURNAL #55280 /* ~Hatte wieder so einen stabilisierenden Vorfall mit Nordom, so wie damals, als ich ihm gesagt habe, daß ich der neue Leiter der Forschungs- und Entwicklungsabteilung sei... Als ich gemeint habe, daß wahrscheinlich seine Abspaltung von der Quelle für die Verschiebung seiner Perspektive verantwortlich sei, schien ihn das irgendwie zu stabilisieren. Ich denke, vielleicht hat Nordom die Erkenntnis darüber, *was* mit ihm geschehen ist, geholfen, um noch 'fokussierter' zur werden. Möglicherweise hat ihn die Abspaltung von der Quelle doch stärker aus der Bahn geworfen, als ich dachte.~ */ GOTO 63
  IF ~  !Global("Know_Director_Truth","GLOBAL",3)
~ THEN REPLY #55279 /* ~"Nordom?"~ */ DO ~AddexperienceParty(36000)
PermanentStatChange("Nordom",INT,RAISE,1)
PermanentStatChange("Nordom",CON,RAISE,1)
FullHeal("Nordom")
~ JOURNAL #55281 /* ~Als ich Nordom gesagt habe, daß wahrscheinlich seine Abspaltung von der der Quelle der Grund für die Verschiebung seiner Perspektive war, ist was Komisches passiert - die Nachricht schien ihn irgendwie zu *stabilisieren*. Das ist merkwürdig, aber ich denke, möglicherweise hat ihm die Erkenntnis darüber, *was* mit ihm geschehen ist, dabei geholfen, ein wenig... 'fokussierter' zu werden. Vielleicht hat ihn seine Abspaltung von der Quelle doch stärker aus der Bahn geworfen, als ich dachte.~ */ GOTO 63
END

IF ~~ THEN BEGIN 63 // from: 62.0 62.1
  SAY #55282 /* ~"Status aktualisiert: Selbstbeobachtungsbelastung abgebrochen. Leite Spekulationsroutine auf Hauptschleife zurück." Zu deiner Überraschung klingt Nordoms Stimme nun weniger schnarrend als zuvor, sie ist glatter und kontrollierter. Das ist etwas beunruhigend.~ */
  IF ~~ THEN REPLY #55283 /* ~"Nordom, ich habe noch einige Fragen an dich..."~ */ GOTO 74
  IF ~~ THEN REPLY #55284 /* ~"Ich glaube, wir haben uns genug unterhalten. Gehen wir."~ */ EXIT
END

IF ~~ THEN BEGIN 64 // from: 9.6 50.1 74.5
  SAY #55285 /* ~Nordom erstarrt, dann beginnen die Zahnradgetriebe in seinen Ellbogen plötzlich, sich synchron in einer langsamen, hypnotischen Bewegung zu drehen. "Definiere/Frage: Mechanus. Ebene der Ordnung. Vernunft. Ursache bewirkt Wirkung. Vorhersagbar. Gesetz. Logik. Reglementiert. Gehorsam. Zahnräder drehen. Mechanus = Nordom Herkunft. Mechanus = Null Heimat/Nordom."~ */
  IF ~  NearbyDialog("DMorte")
~ THEN EXTERN ~DMORTE~ 576
  IF ~  !NearbyDialog("DMorte")
~ THEN REPLY #55286 /* ~"Nordom, was meinst du, 'Null Heimat?'"~ */ GOTO 65
  IF ~  !NearbyDialog("DMorte")
~ THEN REPLY #55293 /* ~"Mehr wollte ich gar nicht wissen. Gehen wir."~ */ EXIT
END

IF ~~ THEN BEGIN 65 // from: 64.1
  SAY #55288 /* ~"Mechanus = Ursprungsort - !QUELLE! - Energie. Kann nicht zu Mechanus zurückkehren. Null Heimat. Gesetz mit Dasein gebrochen. Zentralbüro für Bestrafung von Straftätern wartet in Regulus. Mechanus: Herkunft, Null Heimat, Heimat: Null Ort."~ */
  IF ~  NearbyDialog("Dmorte")
~ THEN REPLY #55289 /* ~"Was meinst du mit '!QUELLE!?'"~ */ DO ~SetGlobal("Know_Source","GLOBAL",1)
~ GOTO 70
  IF ~  NearbyDialog("Dgrace")
!NearbyDialog("Dmorte")
~ THEN REPLY #55290 /* ~"Was meinst du mit '!QUELLE!?'"~ */ DO ~SetGlobal("Know_Source","GLOBAL",1)
~ GOTO 71
  IF ~  !NearbyDialog("Dgrace")
!NearbyDialog("Dmorte")
~ THEN REPLY #55291 /* ~"Was meinst du mit '!QUELLE!?'"~ */ GOTO 66
  IF ~~ THEN REPLY #55292 /* ~"Ach so. Nordom, ich hätte noch einige Fragen an dich..."~ */ GOTO 74
  IF ~~ THEN REPLY #55293 /* ~"Mehr wollte ich gar nicht wissen. Gehen wir."~ */ EXIT
END

IF ~~ THEN BEGIN 66 // from: 65.2
  SAY #55294 /* ~"!QUELLE! = Energie."~ */
  IF ~~ THEN REPLY #55295 /* ~"Also... dieses Mechanus ist eine Energiequelle?"~ */ DO ~SetGlobal("Know_Source","GLOBAL",1)
~ GOTO 67
  IF ~~ THEN REPLY #55296 /* ~"Ach so. Nordom, ich hätte noch einige Fragen an dich..."~ */ GOTO 74
  IF ~~ THEN REPLY #55297 /* ~"Mehr wollte ich gar nicht wissen. Gehen wir."~ */ EXIT
END

IF ~~ THEN BEGIN 67 // from: 66.0
  SAY #55298 /* ~"Bestätige." Nordoms Läden rutschen über seine Augen, und er *whrrrrrt* eine Zeitlang vor sich hin, dann öffnet sich sein linkes Auge. "Stück/Prozentsatz/Kleiner Bruchteil von !QUELLE! in Nordom. Energie geteilt. Bindeglied abgetr'r'r'rennt." Nordom stottert das letzte Wort, dann fängt er sich wieder.~ */
  IF ~~ THEN REPLY #55299 /* ~"Du bist also von der 'Quelle' abgeschnitten? Ist das nicht... schmerzhaft?"~ */ GOTO 68
  IF ~~ THEN REPLY #55300 /* ~"Ach so. Nordom, ich hätte noch einige Fragen an dich..."~ */ GOTO 74
  IF ~~ THEN REPLY #55301 /* ~"Mehr wollte ich gar nicht wissen. Gehen wir."~ */ EXIT
END

IF ~~ THEN BEGIN 68 // from: 67.0
  SAY #55302 /* ~"Negativ. Keine Schmerzen." Nordoms Mund krümmt sich plötzlich, formt einen Halbkreis und dreht sich auf den Kopf. "Bestätige. Schmerzen." Er *klickt*. "Antwort Abweichung: Antwort ist sowohl /Wahr/ als auch /Falsch/. Antwort ist inakzeptabel."~ */
  IF ~~ THEN REPLY #55303 /* ~"Nun ja... Wenn ein *Teil* der Antwort wahr ist, ist dann nicht die Antwort wahr?"~ */ GOTO 69
  IF ~~ THEN REPLY #55304 /* ~"Ach so. Nordom, ich hätte noch einige Fragen an dich..."~ */ GOTO 74
  IF ~~ THEN REPLY #55305 /* ~"Mehr wollte ich gar nicht wissen. Gehen wir."~ */ EXIT
END

IF ~~ THEN BEGIN 69 // from: 68.0
  SAY #55306 /* ~Nordom ist eine Weile still. "Antwort Abweichung: Wird erklärt durch Definition von 'Schmerzen.' Keine körperlichen Scherzen durch Trennung von !QUELLE! entstanden. Dennoch sind Betriebseffizienzparameter verändert, so daß unbekannter Schaden aufgetreten sein kann. Formuliere Antwort: Schmerzhaft = Unbekannt."~ */
  IF ~~ THEN REPLY #55307 /* ~"Ach so. Nordom, ich hätte noch einige Fragen an dich..."~ */ GOTO 74
  IF ~~ THEN REPLY #55308 /* ~"Mehr wollte ich gar nicht wissen. Gehen wir."~ */ EXIT
END

IF ~~ THEN BEGIN 70 // from: 65.0
  SAY #55309 /* ~"!QUELLE! = Energie."~ */
  IF ~~ THEN EXTERN ~DMORTE~ 578
END

IF ~~ THEN BEGIN 71 // from: 65.1
  SAY #55310 /* ~"!QUELLE! = Energie."~ */
  IF ~~ THEN EXTERN ~DGRACE~ 185
END

IF ~~ THEN BEGIN 72 // from: 9.5 74.4
  SAY #55311 /* ~Es ertönt ein *Klick-klick-klick* während Nordom in schneller Folge zwinkert, dann *schrappst* er. "Frage: Modron, was ist? Definiere: Modron? Ich bin Modron."~ */
  IF ~~ THEN REPLY #55312 /* ~"Ja, aber was *ist* ein Modron?"~ */ GOTO 73
  IF ~~ THEN REPLY #55313 /* ~"Macht nichts, Nordom. Ich hätte da noch ein paar andere Fragen an dich..."~ */ GOTO 74
  IF ~~ THEN REPLY #55314 /* ~"Vergiß es, Nordom. Ziehen wir weiter."~ */ EXIT
END

IF ~~ THEN BEGIN 73 // from: 72.0 97.1
  SAY #55315 /* ~"Frage: Modron, Definiert: Modron, ich bin Modron, Beantwortet." Die Läden *klicken* einige Male über Nordoms Augen zu, und seine 'Augen' erweitern sich zu großen Punkten. "Neue Frage - "Modron, Aber was IST? Definiere: Aber was ist Modron? Modron ist Nordom. Rückwärts Nordom = Modron."~ */
  IF ~  NearbyDialog("Dmorte")
~ THEN REPLY #55316 /* ~"Aber..."~ */ EXTERN ~DMORTE~ 587
  IF ~  !NearbyDialog("Dmorte")
~ THEN REPLY #55317 /* ~"Aber... na egal, Nordom. Ich wollte dich noch was anderes fragen..."~ */ GOTO 74
END

IF ~~ THEN BEGIN 74 // from: 43.2 44.3 45.1 46.1 48.0 49.1 50.2 51.2 52.4 53.2 54.1 55.2 56.2 57.1 59.3 60.1 61.1 63.0 65.3 66.1 67.1 68.1 69.0 72.1 73.1 75.0 76.2 77.1 78.1 79.4 81.8 86.2 87.2 91.1 92.1 93.3 94.2 97.2 98.2 99.4 100.1 101.2 102.3 103.2 104.1 105.4 106.1 107.1 108.0 110.2 110.3 111.3 112.1 113.4 114.2 115.1 116.2 117.4 118.1 119.2 130.4
  SAY #55318 /* ~"Status: Erwarte Fragen."~ */
  IF ~  Global("Know_Director_Truth","GLOBAL",3)
Global("Nordom_Order","GLOBAL",0)
~ THEN REPLY #55319 /* ~"Nordom, kannst du mir sagen, was für Aufgaben so ein Entwicklungsleiter hat?"~ */ GOTO 79
  IF ~  GlobalGT("Nordom_Order","GLOBAL",0)
~ THEN REPLY #55320 /* ~"Nordom, sag mir doch noch mal, was für Aufgaben ein Entwicklungsleiter hat."~ */ GOTO 79
  IF ~  GlobalGT("Nordom_Order","GLOBAL",0)
~ THEN REPLY #55321 /* ~"Als Entwicklungsleiter habe ich ein paar Befehle für dich."~ */ GOTO 81
  IF ~~ THEN REPLY #55322 /* ~"Ich bin neugierig, Nordom... wie bist du nach Rubikon gelangt?"~ */ GOTO 49
  IF ~~ THEN REPLY #55323 /* ~"Nordom, was *sind* Modronen?"~ */ GOTO 72
  IF ~  Global("Know_Mechanus","GLOBAL",1)
~ THEN REPLY #55324 /* ~"Erzähl mir was über Mechanus, Nordom."~ */ DO ~SetAnimState("Nordom",ANIM_MIMESTAND)
~ GOTO 64
  IF ~  Global("Nordom_Self","GLOBAL",0)
~ THEN REPLY #55325 /* ~"Äh... wie geht's, Nordom?"~ */ DO ~SetGlobal("Nordom_Self","GLOBAL",1)
SetAnimState("Nordom",ANIM_MIMESTAND)
~ GOTO 105
  IF ~  Global("Nordom_Self","GLOBAL",1)
~ THEN REPLY #55326 /* ~"Wie geht es dir, Nordom?"~ */ DO ~SetAnimState("Nordom",ANIM_MIMESTAND)
~ GOTO 105
  IF ~  GlobalGT("Nordom_Solution","GLOBAL",0)
~ THEN REPLY #55327 /* ~"Nordom, du hast mich doch gefragt, wie es mir geht, oder etwa nicht?"~ */ GOTO 111
  IF ~  GlobalGT("Nordom_Solution","GLOBAL",1)
~ THEN REPLY #55328 /* ~"Können wir noch mal über meine Unsterblichkeit reden?"~ */ GOTO 130
  IF ~  GlobalGT("Know_Ravel","GLOBAL",0)
Global("Ravel","GLOBAL",0)
~ THEN REPLY #55329 /* ~"Hast du schon mal von jemandem namens Ravel Rätselschön gehört, Nordom?"~ */ GOTO 75
  IF ~  GlobalGT("Know_Blood_War","GLOBAL",0)
~ THEN REPLY #55330 /* ~"Nordom, weißt du etwas über den Blutkrieg?"~ */ GOTO 76
  IF ~~ THEN REPLY #55331 /* ~"Keine... Fragen mehr, Nordom. Gehen wir."~ */ EXIT
END

IF ~~ THEN BEGIN 75 // from: 9.11 74.10
  SAY #55332 /* ~"Negativ." Nordoms Körper beginnt zu vibrieren, dann erklingt ein scharfes *Schnappen*, und er ist wieder ruhig. "Subjekt der Frage ist /Nordom/ nicht bekannt."~ */
  IF ~~ THEN REPLY #55333 /* ~"In Ordnung, Nordom. Ich wollte dich noch etwas anderes fragen..."~ */ GOTO 74
  IF ~~ THEN REPLY #55334 /* ~"Mehr wollte ich gar nicht wissen. Gehen wir."~ */ EXIT
END

IF ~~ THEN BEGIN 76 // from: 9.12 74.11
  SAY #55335 /* ~"Definiere: Blutkrieg. Der größte Konflikt der Geschichte. Zugrundeliegende Ursache des Krieges: ideologische Unterschiede zwischen Baatezu - Gesetz und Tanar-Ri - Chaos. Charakterisierung des Kriegs: Rassenmord. Aussicht darauf, daß Krieg endet, bevor alle Baatezu und/oder alle Tanar-Ri ausgerottet sind, ist 0,0000000000000000000001%. Hauptkämpfer: Baatezu, Tanar-Ri. Kriegsbeteiligte: Alle."~ */
  IF ~~ THEN REPLY #55336 /* ~"Erzähl mir was über die Baatezu."~ */ GOTO 77
  IF ~~ THEN REPLY #55337 /* ~"Erzähl mir was über die Tanar-Ri."~ */ GOTO 78
  IF ~~ THEN REPLY #55338 /* ~"In Ordnung, Nordom. Ich wollte dich noch etwas anderes fragen..."~ */ GOTO 74
  IF ~~ THEN REPLY #55339 /* ~"Mehr wollte ich gar nicht wissen. Gehen wir."~ */ EXIT
END

IF ~~ THEN BEGIN 77 // from: 76.0 78.0
  SAY #55340 /* ~"Auch 'Scheusale, Teufel' genannt. Information unvollständig: Generischer Deskriptor, Baatezu. Bewohner der Ebene: Baator. Anzahl: Unkalkulierbar. Hauptangriffsform: Abhängig von Kaste. Immunitäten: Feuer, Mattes Eisen, Gift. Körperliche Merkmale: Abhängig von Unterrasse, die Mehrheit zeigt Resistenz gegenüber Kälte/Gas. Persönlichkeitsmerkmale: Rechtschaffen, Böse, Manipulatierend, Effizienz: 73 %."~ */
  IF ~~ THEN REPLY #55341 /* ~"Erzähl mir was über die Tanar-Ri."~ */ GOTO 78
  IF ~~ THEN REPLY #55342 /* ~"In Ordnung, Nordom. Ich wollte dich noch etwas anderes fragen..."~ */ GOTO 74
  IF ~~ THEN REPLY #55343 /* ~"Mehr wollte ich gar nicht wissen. Gehen wir."~ */ EXIT
END

IF ~~ THEN BEGIN 78 // from: 76.1 77.0
  SAY #55344 /* ~"Auch 'Scheusale, Dämonen' genannt. Information unvollständig: Generischer Deskriptor, Tanar-Ri. Bewohner der Ebene: Abgrund. Anzahl: Unkalkulierbar. Hauptangriffsform: Abhängig von Kategorie. Immunitäten: Blitz, nicht-magisches Feuer, Gift. Körperliche Merkmale: Abhängig von Unterrasse, die Mehrheit zeigt Resistenz gegen Kälte, magisches Feuer, Gas. Persönlichkeitsmerkmale: Chaotisch, Böse, Effizienz: 13%."~ */
  IF ~~ THEN REPLY #55345 /* ~"Erzähl mir was über die Baatezu."~ */ GOTO 77
  IF ~~ THEN REPLY #55346 /* ~"In Ordnung, Nordom. Ich wollte dich noch etwas anderes fragen..."~ */ GOTO 74
  IF ~~ THEN REPLY #55347 /* ~"Mehr wollte ich gar nicht wissen. Gehen wir."~ */ EXIT
END

IF ~~ THEN BEGIN 79 // from: 9.0 9.1 59.0 59.1 74.0 74.1
  SAY #55348 /* ~Ein langsames *tkkk-tkkk-tkkk* ist von Nordom zu vernehmen - wie eine Uhr, die gleich explodieren wird. "Antwort: Verantwortlichkeit des Leiters: (A) Integrität - Unterstützung des Rubikon-Projekts, (2) Befehlsvergabe an Rubikon-Bataillon/Arbeitsgruppe. Zeitraum der Einhaltung in Übereinstimmung mit Nordom Gehorsam: Bis Rubikon-Projekt abgebrochen, Entwicklungsleiter = Nordoms Vorgesetzter."~ */
  IF ~~ THEN REPLY #55349 /* ~"Du... machst also genau, was ich dir sage?"~ */ GOTO 80
  IF ~~ THEN REPLY #55350 /* ~"Dann habe ich ein paar Befehle für dich, Nordom..."~ */ GOTO 81
  IF ~  CheckStatGT(Protagonist,16,INT)
~ THEN REPLY #55351 /* ~"Hmmm. Was für Sachen hat denn der Entwicklungsleiter von dir verlangt?"~ */ GOTO 93
  IF ~  CheckStatGT(Protagonist,16,WIS)
CheckStatLT(Protagonist,17,INT)
~ THEN REPLY #55352 /* ~"Hmmm. Was für Sachen hat denn der Entwicklungsleiter von dir verlangt?"~ */ GOTO 93
  IF ~~ THEN REPLY #55353 /* ~"Ach, vergiß es, Nordom. Ich wollte dich noch was anderes fragen..."~ */ GOTO 74
  IF ~~ THEN REPLY #55354 /* ~"Ach, vergiß es, Nordom. Gehen wir."~ */ EXIT
END

IF ~~ THEN BEGIN 80 // from: 79.0
  SAY #55355 /* ~"Bestätige."~ */
  IF ~~ THEN REPLY #55356 /* ~"Na, dann habe ich ein paar Befehle für dich..."~ */ GOTO 81
  IF ~  CheckStatGT(Protagonist,16,INT)
~ THEN REPLY #55357 /* ~"Hmmm. Was für Sachen hat denn der Entwicklungsleiter von dir verlangt?"~ */ GOTO 93
  IF ~~ THEN REPLY #55358 /* ~"Ach, vergiß es, Nordom. Ich wollte dich noch was anderes fragen..."~ */ GOTO 93
  IF ~~ THEN REPLY #55359 /* ~"Ach, vergiß es, Nordom. Gehen wir."~ */ EXIT
END

IF ~~ THEN BEGIN 81 // from: 9.2 74.2 79.1 80.0 86.1 87.1 91.0 92.0
  SAY #55360 /* ~"Status: Erwarte Befehle."~ */
  IF ~  Global("Nordom_Fighter_Order","GLOBAL",0)
CheckStatGT(Protagonist,16,STR)
Class(Protagonist,FIGHTER)
~ THEN REPLY #55361 /* ~"Ich befehle dir hiermit, mehr von deiner Energie von der Selbstbeobachtung abzuziehen und sie für das Gefecht zu kanalisieren. Ich erwarte einen *sofortigen* Anstieg deiner Kampffähigkeit und deiner Genauigkeit, Soldat."~ */ DO ~SetAnimState("Nordom",ANIM_STANDTOSTANCE)
SetGlobal("Nordom_Fighter_Order","GLOBAL",1)
AddexperienceParty(36000)
~ GOTO 82
  IF ~  Global("Nordom_Mage_Order","GLOBAL",0)
CheckStatGT(Protagonist,16,INT)
Class(Protagonist,MAGE)
~ THEN REPLY #55362 /* ~"Nordom, ich möchte, daß du allen überflüssigen Ballast aus deinem Gedächtnis streichst und es statt dessen dafür verwendest, deine Logik und deine Selbstbeobachtungsroutine zu verbessern."~ */ DO ~SetGlobal("Nordom_Mage_Order","GLOBAL",1)
AddexperienceParty(36000)
SetAnimState("Nordom",ANIM_MIMESPELL1)
~ GOTO 84
  IF ~  Global("Nordom_Thief_Order","GLOBAL",0)
CheckStatGT(Protagonist,16,DEX)
Class(Protagonist,THIEF)
~ THEN REPLY #55363 /* ~"Nordom, ich möchte, daß du etwas von der Energie, die du auf deine Kraft verwendest, abziehst, und sie in deine Genauigkeit und List kanalisierst. Im Moment bist du mir zu tolpatschig und zu laut."~ */ DO ~SetGlobal("Nordom_Thief_Order","GLOBAL",1)
AddexperienceParty(36000)
~ GOTO 85
  IF ~  CheckStatGT(Protagonist,16,CHR)
Global("Nordom_Charisma_Order","GLOBAL",0)
~ THEN REPLY #55364 /* ~"Nordom, ich befehle dir, mir zuzuhören. Ich möchte dir ein paar Dinge sagen."~ */ DO ~SetAnimState("Nordom",ANIM_MIMESTAND)
~ GOTO 86
  IF ~~ THEN REPLY #55365 /* ~"Warum wirst du nicht aggressiv und greifst alle an, die du erwischst?"~ */ DO ~LeaveParty()
IncrementGlobalOnceEx("GLOBALChaotic_Nordom_2","GLOBALLaw",-3)
IncrementGlobalOnceEx("GLOBALEvil_Nordom_1","GLOBALGood",-3)
Enemy()
Attack(Protagonist)
ChangeAIScript("MDKTNO",DEFAULT)
~ EXIT
  IF ~~ THEN REPLY #55366 /* ~"Führ mir einen kleinen Tanz auf, Nordom."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Nordom_3","GLOBALLaw",-1)
SetAnimState("Nordom",ANIM_STANDTOSTANCE)
SetAnimState("Nordom",ANIM_STANCETOSTAND)
~ GOTO 92
  IF ~~ THEN REPLY #55367 /* ~"Ich befehle dir, auf die Nase zu fallen und dann wieder aufzustehen."~ */ DO ~SetAnimState("Nordom",ANIM_MIMEDIE)
SetAnimState("Nordom",ANIM_MIMEGETUP)
~ GOTO 92
  IF ~~ THEN REPLY #55368 /* ~"Wechsle die Armbrüste von einer Hand in die andere."~ */ DO ~SetAnimState("Nordom",ANIM_MIMESTANCEFIDGET1)
~ GOTO 92
  IF ~~ THEN REPLY #55369 /* ~"Ach, vergiß es, Nordom. Ich wollte dich noch was anderes fragen..."~ */ GOTO 74
  IF ~~ THEN REPLY #55370 /* ~"Ach, vergiß es, Nordom. Gehen wir."~ */ EXIT
END

IF ~~ THEN BEGIN 82 // from: 81.0
  SAY #55371 /* ~"Bestätige." Einen Moment herrscht Stille, dann schließen sich langsam die Läden über Nordoms Augen. Ein *Tkk-tkk-tkk* ist aus seinem Inneren zu vernehmen, gefolgt von einem leisen Knirschen. Das Knirschen geht in ein metallisches Quietschen über, als sich in Nordoms Seite das Gehäuse öffnet und Metallplatten über sein Gerüst fahren.~ */
  IF ~~ THEN DO ~PermanentStatChange("Nordom",INT,LOWER,2)
PermanentStatChange("Nordom",ARMORCLASS,LOWER,2)
PermanentStatChange("Nordom",CON,RAISE,1)
~ GOTO 83
END

IF ~~ THEN BEGIN 83 // from: 82.0
  SAY #55372 /* ~Seine Finger beginnen, auf die Armbrust zu tippen, und du siehst, wie die Nieten in seinen Fingern herausfahren, zurückfahren, und sich dann die Löcher plötzlich mit einer Schar extrem winziger, komplizierter Zahnräder füllen. Die Zahnräder *klinken* und *ticken*, während sie an ihren Platz wandern, dann beginnen sie ein gleichmäßiges, methodisches *Tick-tick-tick*.~ */
  IF ~~ THEN DO ~PermanentStatChange("Nordom",DEX,RAISE,1)
~ GOTO 92
END

IF ~~ THEN BEGIN 84 // from: 81.1
  SAY #55373 /* ~"Bestätige." Einen Moment herrscht Stille, dann schließen sich die Läden über Nordoms Augen. Man vernimmt ein *Tkk-tkk-tkk* aus seinem Inneren, gefolgt von einem Knirschen. Das Knirschen geht in ein metallisches Quietschen über, als sich in Nordoms Seite das Gehäuse öffnet und... dir überflüssiger "Ballast" entgegenfliegt. Du versuchst, die einzelnen herausfliegenden Teile aufzufangen.~ */
  IF ~~ THEN DO ~PermanentStatChange("Nordom",INT,RAISE,2)
GiveItemCreate("Junk",Protagonist,1,0,0)
GiveItemCreate("Junk",Protagonist,1,0,0)
GiveItemCreate("Junk",Protagonist,1,0,0)
GiveItemCreate("Enoll",Protagonist,1,0,0)
~ GOTO 92
END

IF ~~ THEN BEGIN 85 // from: 81.2
  SAY #55374 /* ~"Bestätige." Er ist eine Weile still, dann schließen sich langsam die Läden über Nordoms Augen. Aus seinem Inneren ertönt ein *whrrrrrr*, wie ein Tretwerk mit Hochgeschwindigkeit. Es erklingt ein Chor von *Klicks* aus allen Gelenken Nordoms, und neue Zahnräder schießen wie Unkraut hervor. Sie setzen sich an seinen Schultern, Ellbogen, Knien. Handgelenken und Knöcheln fest. In wenigen Augenblicken sind sie an den Gelenken fixiert und Nordom sieht noch... zahnradbeladener aus als sonst.~ */
  IF ~~ THEN DO ~PermanentStatChange("Nordom",STR,LOWER,2)
PermanentStatChange("Nordom",DEX,RAISE,2)
~ GOTO 92
END

IF ~~ THEN BEGIN 86 // from: 81.3
  SAY #55375 /* ~Nordom erstarrt. "Erwarte: Gespräch."~ */
  IF ~~ THEN REPLY #55376 /* ~Wahrheit: "Ich befehle dir, MEHR zu sein, als du sein kannst, Nordom. Ich befehle dir, stärker, schneller und konzentrierter zu werden, als du je warst. Ich WEISS, daß du es kannst, weil ich daran GLAUBE, daß du es kannst."~ */ DO ~SetAnimState("Nordom",ANIM_MIMESTAND)
~ GOTO 87
  IF ~~ THEN REPLY #55377 /* ~"Vergiß es. Ich habe einen anderen Befehl für dich..."~ */ GOTO 81
  IF ~~ THEN REPLY #55378 /* ~"Vergiß meinen letzten Befehl. Ich würde dich gerne noch etwas fragen..."~ */ GOTO 74
  IF ~~ THEN REPLY #55379 /* ~"Macht nichts, Nordom. Machen wir, daß wir weiterkommen."~ */ EXIT
END

IF ~~ THEN BEGIN 87 // from: 86.0
  SAY #55380 /* ~Nordom starrt dich stumm an. Seine Armbrüste sind ebenfalls verstummt.~ */
  IF ~~ THEN REPLY #55382 /* ~"Jetzt sprich mir die folgenden Worte nach: 'Ich bin ein starker Modron.' 'Ich bin ein schneller Modron.' 'Ich bin ein mächtiger Modron.' 'Mein Entwicklungsleiter glaubt an mich.' 'Ich konzentriere mich für meinen Leiter.' Komm schon, sprich mir nach."~ */ DO ~SetGlobal("Nordom_Charisma_Order","GLOBAL",1)
SetAnimState("Nordom",ANIM_MIMESTAND)
~ GOTO 88
  IF ~~ THEN REPLY #55383 /* ~"Vergiß es. Ich habe einen anderen Befehl für dich..."~ */ GOTO 81
  IF ~~ THEN REPLY #55384 /* ~"Vergiß meinen letzten Befehl. Ich würde dich gerne noch etwas fragen..."~ */ GOTO 74
  IF ~~ THEN REPLY #55385 /* ~"Macht nichts, Nordom. Machen wir, daß wir weiterkommen."~ */ EXIT
END

IF ~~ THEN BEGIN 88 // from: 87.0
  SAY #55386 /* ~Nordom spricht, aber seine Stimme besitzt nicht mehr das metallische Schnarren, das du zuvor gehört hast: Sie ist klar. Konzentriert. Gefühllos. "Ich bin ein starker Modron. Ich bin ein schneller Modron. Ich bin ein mächtiger Modron. Mein Entwicklungsleiter glaubt an mich. Ich konzentriere mich für meinen Leiter."~ */
  IF ~~ THEN REPLY #55387 /* ~"Jetzt SPÜRE diese Worte, Nordom. WERDE stärker. WERDE schneller. WERDE mächtiger. Hol deine innere Energie an die Oberfläche und benutze sie, um NORDOM zu werden.."~ */ DO ~SetAnimState("Nordom",ANIM_MIMESTAND)
~ GOTO 89
END

IF ~~ THEN BEGIN 89 // from: 88.0
  SAY #55388 /* ~Nordom starrt dich weiter an, aber du SPÜRST, wie deine Worte Fuß fassen - du spürst einen *Funken*, einen winzigen *Funken* der Energie in seinem Inneren... wenn du sie herauslocken kannst... an die Oberfläche fördern kannst...~ */
  IF ~  CheckStatLT(Protagonist,19,CHR)
~ THEN REPLY #55390 /* ~"Komm schon, Nordom... Stärke. Geschwindigkeit. Macht. Konzentration."~ */ DO ~SetAnimState("Nordom",ANIM_MIMESPELL2)
PermanentStatChange("Nordom",STR,RAISE,1)
PermanentStatChange("Nordom",CON,RAISE,1)
AddexperienceParty(36000)
~ GOTO 90
  IF ~  CheckStatGT(Protagonist,18,CHR)
CheckStatLT(Protagonist,25,CHR)
~ THEN REPLY #55393 /* ~"Komm schon, Nordom... Stärke. Geschwindigkeit. Macht. Konzentration."~ */ DO ~SetAnimState("Nordom",ANIM_MIMESPELL2)
PermanentStatChange("Nordom",ARMORCLASS,LOWER,1)
PermanentStatChange("Nordom",STR,RAISE,2)
PermanentStatChange("Nordom",CON,RAISE,1)
AddexperienceParty(48000)
~ GOTO 90
  IF ~  CheckStatGT(Protagonist,24,CHR)
~ THEN REPLY #55395 /* ~"Komm schon, Nordom... Stärke. Geschwindigkeit. Macht. Konzentration."~ */ DO ~SetAnimState("Nordom",ANIM_MIMESPELL2)
PermanentStatChange("Nordom",ARMORCLASS,LOWER,2)
PermanentStatChange("Nordom",STR,RAISE,2)
PermanentStatChange("Nordom",CON,RAISE,1)
PermanentStatChange("Nordom",LUCK,RAISE,1)
AddexperienceParty(60000)
~ GOTO 90
END

IF ~~ THEN BEGIN 90 // from: 89.0 89.1 89.2
  SAY #55398 /* ~"BESTÄTIGE." Die Pupillen von Nordoms Augen *klicken* plötzlich und fangen an zu glänzen, wie winzige weiße Sonnen. Seine Arme heben sich in einer ruckartigen Flugbewegung über seinen Kopf. Dann hängen sie wieder ruhig an seiner Seite... Als sie sich herunterbewegen, scheint Nordom etwas... entschlossener. Irgendwie aufmerksamer. Etwas hat sich *verändert*. ~ */
  IF ~~ THEN REPLY #55399 /* ~"Nordom...?"~ */ DO ~SetAnimState("Nordom",ANIM_STANDTOSTANCE)
~ GOTO 91
END

IF ~~ THEN BEGIN 91 // from: 90.0
  SAY #55401 /* ~"BEFEHL VERARBEITET." Nordom zwinkert und gibt plötzlich ein *Klank* von sich. Aus einer seiner Öffnungen steigt ein Dampfwölkchen hervor, seine Stimme scheint ungewöhnlich tief, als spräche er aus einem riesigen Ofen, dann wird sie wieder normal. "Be-be-befehl verarbeitet."~ */
  IF ~~ THEN REPLY #55402 /* ~"Das hat ja ganz gut funktioniert. Ich habe noch ein paar andere Befehle für dich..."~ */ GOTO 81
  IF ~~ THEN REPLY #55403 /* ~"Ausgezeichnet. Ich wollte dich noch etwas fragen..."~ */ GOTO 74
  IF ~~ THEN REPLY #55405 /* ~"Mehr wollte ich gar nicht, Nordom. Danke."~ */ EXIT
END

IF ~~ THEN BEGIN 92 // from: 81.5 81.6 81.7 83.0 84.0 85.0
  SAY #55407 /* ~Nordom sammelt sich einen Moment, dann *klicken* seine Augen auf. "Befehl verarbeitet."~ */
  IF ~~ THEN REPLY #55408 /* ~"Ich habe noch mehr Befehle für dich..."~ */ GOTO 81
  IF ~~ THEN REPLY #55409 /* ~"Ausgezeichnet. Ich wollte dich noch etwas fragen..."~ */ GOTO 74
  IF ~~ THEN REPLY #55410 /* ~"Mehr wollte ich gar nicht, Nordom. Danke."~ */ EXIT
END

IF ~~ THEN BEGIN 93 // from: 79.2 79.3 80.1 80.2 94.1 95.1 96.0 98.1 99.3 100.0 101.1 102.2 103.1 104.0
  SAY #55412 /* ~Nordoms Läden schließen sich mit einem *whrrr* vor seinen Augen, als dächte er nach. "Auftragsroutine: Auswertung/Vorwärts-Erkundung/Aufräumer: Zugewiesener Perimeter von Rubikon-Projekt auszuwerten, zu katalogisieren, aufzuräumen und Bericht zu erstatten. Bericht beinhaltet: In-in-in-tegritäts-Auswertungen/Ausmerzung der Projekt-Fehler / Rettung von eigenwilligen Gegenständen vor Un-Ordnung."~ */
  IF ~~ THEN REPLY #55414 /* ~"Integritätsauswertungen?"~ */ GOTO 94
  IF ~~ THEN REPLY #55415 /* ~"Ausmerzung von Fehlern?"~ */ GOTO 97
  IF ~~ THEN REPLY #55417 /* ~"Rettung von eigenwilligen Gegenständen?"~ */ GOTO 101
  IF ~~ THEN REPLY #55418 /* ~"Ach, vergiß es, Nordom. Ich wollte dich noch was anderes fragen..."~ */ GOTO 74
  IF ~~ THEN REPLY #55420 /* ~"Ach, vergiß es, Nordom. Gehen wir."~ */ EXIT
END

IF ~~ THEN BEGIN 94 // from: 93.0 95.2 96.1
  SAY #55421 /* ~"Wiederholte Wortwahl bestätigt (Echo?): Inter-gritäts-Auswertung. Ziel der Auswertung: Fehler in Rubikon-Projekt entdecken, katalogisieren, dann solche Fehler /beheben/. Natur des Multiversums und Natur der Ebene: Limbus gefährdet Rubikon-Projekt."~ */
  IF ~~ THEN REPLY #55427 /* ~"Und wie genau gefährden das, äh, Multiversum... und der Limbus... das Projekt?"~ */ GOTO 95
  IF ~~ THEN REPLY #55429 /* ~"Was waren noch mal deine Aufgaben?"~ */ GOTO 93
  IF ~~ THEN REPLY #55431 /* ~"Ach, vergiß es, Nordom. Ich wollte dich noch was anderes fragen..."~ */ GOTO 74
  IF ~~ THEN REPLY #55432 /* ~"Ach, vergiß es, Nordom. Gehen wir."~ */ EXIT
END

IF ~~ THEN BEGIN 95 // from: 94.0
  SAY #55434 /* ~"Eigenschaften des Multiversums: - Risse - Ausbesserungen - Neue Risse - Fehler. Verursacht "Portale"/Leitungen im Raum. Häufigkeit: Muster Unbestimmt. Lösung: Unbekannt." Nordom gibt ein leises *Sssss* von sich, während Dampf aus einer seiner Öffnungen aufsteigt. "Nordom kann Risse nicht reparieren/verschließen. Aktueller Status: Nordom ist beschränkt auf: Wahrnehmung der Risse."~ */
  IF ~~ THEN REPLY #55435 /* ~"Einen Moment mal. Du kannst 'Risse' in Ebenen sehen? Portale? Wie?"~ */ JOURNAL #55442 /* ~Nordom hat gemeint, daß er die Fähigkeit hat, Portale zu sehen - bzw. "Fehler in den Ebenen", wie er sie nennt. Hört sich so an, als ob er sich lediglich einem Portal nähern muß, um es zu entdecken. Das wird mir zwar nicht sagen, wie ich dieses Portal öffnen kann, aber wenigstens weiß ich dann, wo ein paar davon sind.~ */ GOTO 96
  IF ~~ THEN REPLY #55436 /* ~"Ich verstehe. Was waren noch mal deine Aufgaben?"~ */ GOTO 93
  IF ~~ THEN REPLY #55438 /* ~"Macht nichts, Nordom. Ich hätte da noch ein paar andere Fragen an dich..."~ */ GOTO 94
  IF ~~ THEN REPLY #55439 /* ~"Vergiß es, Nordom. Ziehen wir weiter."~ */ EXIT
END

IF ~~ THEN BEGIN 96 // from: 95.0
  SAY #55445 /* ~"Fähigkeit, Portale zu entdecken: Maximaler Abstand zu Portalen varriiert - abhängig von Fehler/Mittlere Distanz = Y+78..." Eine merkwürdige Folge von *Klicken* ertönt von Nordom, als würde eine Parade knackender Käfer durch sein Inneres marschieren. "Nordom muß sich auf 3 Meter an das Portal annähern. Fehlertoleranz: +/- 6 cm. Werde Warnsignal geben, wenn Portal in der Nähe."~ */
  IF ~~ THEN REPLY #55449 /* ~"In Ordnung. Was waren noch mal deine anderen Aufgaben?"~ */ GOTO 93
  IF ~~ THEN REPLY #55450 /* ~"Ich wäre dir sehr dankbar, Nordom. Ich hätte da noch ein paar Fragen..."~ */ GOTO 94
  IF ~~ THEN REPLY #55452 /* ~"Danke, Nordom. Gehen wir."~ */ EXIT
END

IF ~~ THEN BEGIN 97 // from: 93.1
  SAY #55453 /* ~Nordoms normales Schnarren weicht einem zitternden Murmeln. "Fehler: Viele. Alle Konstrukte im Rubikon-Projekt sind fehlerhaft und existieren gegen den Willen des Entwicklungsleiters und des Personals des Rubikon-Projekts. Befehl erteilt: Fehler, die gegen den Willen existieren, müssen aufgehoben werden. Hindernis: Nordom nicht in der Lage, Spezifika der Aufgabe auszuführen, ohne Null-Status zu erleiden."~ */
  IF ~~ THEN REPLY #55454 /* ~"Du konntest diese abtrünnigen Konstrukte also nicht alleine aufhalten... zumindest nicht, ohne in deine Zahnräder zerlegt zu werden?"~ */ GOTO 98
  IF ~~ THEN REPLY #55456 /* ~"Was waren noch mal deine anderen Aufgaben?"~ */ GOTO 73
  IF ~~ THEN REPLY #55458 /* ~"Ich hätte da noch ein paar Fragen..."~ */ GOTO 74
  IF ~~ THEN REPLY #55459 /* ~"Ich hab' genug gehört, Nordom. Weiter geht's."~ */ EXIT
END

IF ~~ THEN BEGIN 98 // from: 97.0
  SAY #55461 /* ~"Bestätige. Null-Status kontraproduktiv zu Ausführung der Aufgabe."~ */
  IF ~~ THEN REPLY #55462 /* ~"Naja, vielleicht, wenn sie dir bessere Waffen gegeben hätten..."~ */ DO ~SetAnimState("Nordom",ANIM_MIMESTANDFIDGET1)
~ GOTO 99
  IF ~~ THEN REPLY #55464 /* ~"Was waren noch mal deine anderen Aufgaben?"~ */ GOTO 93
  IF ~~ THEN REPLY #55465 /* ~"Ach, vergiß es, Nordom. Ich wollte dich noch was anderes fragen..."~ */ GOTO 74
  IF ~~ THEN REPLY #55466 /* ~"Ach, vergiß es, Nordom. Gehen wir."~ */ EXIT
END

IF ~~ THEN BEGIN 99 // from: 98.0
  SAY #55468 /* ~Die Armbrüste in Nordoms Händen beginnen zu *klicketi-klicken* und zu *scha-narren* wie zwei seltsame Insekten. Er hört ihnen eine Weile zu, dann sieht er dich an. "Meine Armbrüste möchten eine Frage einreichen, gefolgt von 33 Bitten um Hilfe: 'Munition begrenzt durch Vorschlag des Erschaffers.' Möchtest du ihnen neue Spezifikationen eingeben?"~ */
  IF ~  CheckStatGT(Protagonist,17,INT)
Global("Nordom_Bolt_03","GLOBAL",0)
~ THEN REPLY #55469 /* ~"Klar... naja, wie wär's mit... hmm, keine Ahnung - vielleicht einem pyramidenförmigen Kopf, nur daß der Kopf in drei Teile springt, wenn er auf etwas aufschlägt?"~ */ DO ~GiveItemCreate("Bolt03","Nordom",10,0,0)
SetGlobal("Nordom_Bolt_03","GLOBAL",1)
SetAnimState("Nordom",ANIM_MIMEATTACK1)
~ GOTO 100
  IF ~  Global("Nordom_Bolt_07","GLOBAL",0)
~ THEN REPLY #55470 /* ~"Etwas mit größerer Treffsicherheit wäre gut. Mit einer Art Feder-Ästhetik, um seine Reichweite zu demonstrieren."~ */ DO ~GiveItemCreate("Bolt07","Nordom",10,0,0)
SetGlobal("Nordom_Bolt_07","GLOBAL",1)
SetAnimState("Nordom",ANIM_MIMEATTACK1)
~ GOTO 100
  IF ~  GlobalLT("Good","GLOBAL",-20)
Global("Nordom_Bolt_06","GLOBAL",0)
~ THEN REPLY #55471 /* ~"Ich weiß nicht. Etwas hinterhältiges. Ich meine so RICHTIG hinterhältig. Ich meine, schrecklich, gemeingefährlich, niederträchtig hinterhältig."~ */ DO ~GiveItemCreate("Bolt06","Nordom",10,0,0)
SetGlobal("Nordom_Bolt_06","GLOBAL",1)
SetAnimState("Nordom",ANIM_MIMEATTACK1)
~ GOTO 100
  IF ~~ THEN REPLY #55472 /* ~"Im Moment fällt mir irgendwie nichts ein. Was hattest du noch mal für andere Aufgaben?"~ */ GOTO 93
  IF ~~ THEN REPLY #55473 /* ~"Nicht jetzt, Nordom. Ich hätte da noch ein paar andere Fragen..."~ */ GOTO 74
  IF ~~ THEN REPLY #55474 /* ~"Schlag's dir aus dem Kopf, Nordom. Vielleicht ein andermal. Gehen wir."~ */ EXIT
END

IF ~~ THEN BEGIN 100 // from: 99.0 99.1 99.2
  SAY #55475 /* ~Plötzlich ertönt ein *Pling* von Nordoms Armbrüsten und eine Ladung Armbrustbolzen wird aus ihnen heraus in die Luft geschleudert. Zwei Klappen öffnen sich an Nordoms Seite, und die Armbrustbolzen fallen mit einem Rasseln hinein, einer nach dem anderen. Als die Armbrüste circa 10 Bolzen herausgeschleudert haben, sind sie wieder still. Du hast das seltsame Gefühl, daß sie erschöpft sind.~ */
  IF ~~ THEN REPLY #55476 /* ~"Vielleicht sollten sie sich eine Weile ausruhen... Was hattest du doch gleich für andere Aufgaben?"~ */ GOTO 93
  IF ~~ THEN REPLY #55477 /* ~"Das sollte für's erste reichen, Nordom. Ich wollte dich noch was anderes fragen..."~ */ GOTO 74
  IF ~~ THEN REPLY #55478 /* ~"Packen wir diese Bolzen ein und sehen wir, daß wir weiterkommen, Nordom."~ */ EXIT
END

IF ~~ THEN BEGIN 101 // from: 93.2
  SAY #55479 /* ~"Bestätige. Es erscheinen Gegenstände im Irrgang, die im ursprünglichen Plan von Rubikon nicht vorgesehen waren. Sie müssen gesammelt, katalogisiert, ausgewertet und gelagert werden, um Störungen zu vermeiden. Modronen werden ausgeschickt, um sie zu holen und sicherzustellen."~ */
  IF ~~ THEN REPLY #55480 /* ~"Hmmm. Hast du auf deiner letzten Reise irgend etwas gefunden?"~ */ GOTO 102
  IF ~~ THEN REPLY #55481 /* ~"Verstehe. Und was hattest du sonst noch für Aufgaben?"~ */ GOTO 93
  IF ~~ THEN REPLY #55482 /* ~"Ach, vergiß es, Nordom. Ich wollte dich noch was anderes fragen..."~ */ GOTO 74
  IF ~~ THEN REPLY #55483 /* ~"Ach, vergiß es, Nordom. Gehen wir."~ */ EXIT
END

IF ~~ THEN BEGIN 102 // from: 101.0
  SAY #55484 /* ~"Bestätige."~ */
  IF ~  Global("Nordom_Item_Bank","GLOBAL",0)
~ THEN REPLY #55486 /* ~"Kannst du mir das geben, was du gefunden hast?"~ */ DO ~SetGlobal("Nordom_Item_Bank","GLOBAL",1)
GiveItemCreate("Junk",Protagonist,1,0,0)
GiveItemCreate("Junk",Protagonist,1,0,0)
GiveItemCreate("Junk",Protagonist,1,0,0)
GiveItemCreate("StingEar",Protagonist,1,0,0)
GiveItemCreate("GolBra",Protagonist,1,0,0)
GiveItemCreate("EyeGlas1",Protagonist,1,0,0)
GiveItemCreate("FangMirr",Protagonist,3,0,0)
GiveGoldForce(333)
~ GOTO 103
  IF ~  Global("Nordom_Item_Bank","GLOBAL",1)
CheckStatGT(Protagonist,16,INT)
~ THEN REPLY #55487 /* ~"Du hast gesagt, du hast Gegenstände ausgewertet, die du gefunden hast - wie?"~ */ DO ~SetGlobal("Nordom_Item_Bank","GLOBAL",2)
GiveItemCreate("Lens03","Nordom",1,0,0)
~ GOTO 104
  IF ~~ THEN REPLY #55488 /* ~"Was waren noch mal deine anderen Aufgaben?"~ */ GOTO 93
  IF ~~ THEN REPLY #55489 /* ~"Ach, vergiß es, Nordom. Ich wollte dich noch was anderes fragen..."~ */ GOTO 74
  IF ~~ THEN REPLY #55490 /* ~"Ach, vergiß es, Nordom. Gehen wir."~ */ EXIT
END

IF ~~ THEN BEGIN 103 // from: 102.0
  SAY #55491 /* ~"Bestätige." Nach einem Moment der Stille schließen sich die Läden langsam über Nordoms Augen. Aus seinem Inneren ertönt ein *Tkk-tkk-tkk*, gefolgt von einem *Whrrr-klick*. In Nordoms linker Seite öffnet sich eine Luke, in die er mit seiner freien Hand hineingreift. Er gibt dir verschiedene Dinge, darunter eine Handvoll Kupfermünzen.~ */
  IF ~  CheckStatGT(Protagonist,16,INT)
~ THEN REPLY #55492 /* ~"Hmmmm. Du hast gesagt, du hättest Gegenstände ausgewertet, die du gefunden hast - wie?"~ */ DO ~SetGlobal("Nordom_Item_Bank","GLOBAL",2)
GiveItemCreate("Lens03","Nordom",1,0,0)
~ GOTO 104
  IF ~  CheckStatLT(Protagonist,17,INT)
~ THEN REPLY #55493 /* ~"Danke, Nordom. Ich werde sie untersuchen. Was hattest du sonst noch für Aufgaben?"~ */ GOTO 93
  IF ~  CheckStatLT(Protagonist,17,INT)
~ THEN REPLY #55494 /* ~"Ich schaue sie mir später an, Nordom. Im Moment würde ich dir gerne noch ein paar Fragen stellen..."~ */ GOTO 74
  IF ~  CheckStatLT(Protagonist,17,INT)
~ THEN REPLY #55495 /* ~"Ich werde sie aufbewahren, Nordom, danke. Sehen wir, daß wir weiterkommen."~ */ EXIT
END

IF ~~ THEN BEGIN 104 // from: 102.1 103.0
  SAY #55496 /* ~Plötzlich ertönt ein *Pling* von Nordom und ein *Klack-klack*, während sein Linsengehäuse zu rotieren beginnt. Eine kleine Klappe öffnet sich in Nordoms Seite und eine neue Linse springt heraus, fast wie durch Zufall. Nordom betrachet sie. "Antwort: Austauschlinse mit Vergrößerungsfunktion in Gehäuse befestigt."~ */
  IF ~~ THEN REPLY #55497 /* ~"Was waren noch mal deine anderen Aufgaben?"~ */ GOTO 93
  IF ~~ THEN REPLY #55498 /* ~"Verstehe. Ich hätte da noch ein paar Fragen..."~ */ GOTO 74
  IF ~~ THEN REPLY #55499 /* ~"Ich hab' genug gehört, Nordom. Weiter geht's."~ */ EXIT
END

IF ~~ THEN BEGIN 105 // from: 9.7 9.8 74.6 74.7
  SAY #55500 /* ~"Selbstbeobachtungszyklus beginnt." Nordom *klickt* seine Augen zu und beginnt zu *summmmen*. ~ */
  IF ~  Global("Nordom_Self_Truth","GLOBAL",0)
!Global("Know_Director_Truth","GLOBAL",3)
~ THEN REPLY #55501 /* ~Warte, bis Nordom seine Analyse beendet hat.~ */ GOTO 106
  IF ~  Global("Nordom_Self_Truth","GLOBAL",0)
GlobalGT("Know_Director_Truth","GLOBAL",2)
~ THEN REPLY #55502 /* ~Warte, bis Nordom seine Analyse beendet hat.~ */ GOTO 107
  IF ~  GlobalGT("Nordom_Self_Truth","GLOBAL",0)
!Global("Know_Director_Truth","GLOBAL",3)
~ THEN REPLY #55503 /* ~Warte, bis Nordom seine Analyse beendet hat.~ */ GOTO 108
  IF ~  GlobalGT("Nordom_Self_Truth","GLOBAL",0)
GlobalGT("Know_Director_Truth","GLOBAL",2)
~ THEN REPLY #55504 /* ~Warte, bis Nordom seine Analyse beendet hat.~ */ GOTO 109
  IF ~~ THEN REPLY #55505 /* ~"Ach, vergiß es, Nordom. Ich wollte dich noch was anderes fragen..."~ */ GOTO 74
  IF ~~ THEN REPLY #55506 /* ~"Ach, vergiß es, Nordom. Gehen wir."~ */ EXIT
END

IF ~~ THEN BEGIN 106 // from: 105.0
  SAY #55507 /* ~Kurz darauf *klicken* seine Augen wieder auf. "Auswertung der Selbstbeobachtung: Wahrnehmungen sind (1) kleiner und (B) lauter geworden. Flügel wurden durch Arme ersetzt: Grund unbekannt. Verdacht/Hypothese: Flügel unerwünscht? Spekulation. Nordom war einmal - EINS - aber ist jetzt kleineres, lauteres - EINS! - Veränderung hat zu Schwierigkeiten bei der Informationsverarbeitung geführt."~ */
  IF ~  CheckStatGT(Protagonist,15,INT)
Global("Nordom_Self_Truth","GLOBAL",0)
Global("Know_Source","GLOBAL",1)
~ THEN REPLY #55508 /* ~"Glaubst du, es ist die Trennung von deiner Quelle, die für die Verschiebung deiner Perspektive von dem ruhigeren und breiteren 'Einem' zum kleineren und lauteren verantwortlich ist?'"~ */ DO ~SetGlobal("Nordom_Self_Truth","GLOBAL",1)
SetAnimState("Nordom",ANIM_MIMESTAND)
~ GOTO 62
  IF ~~ THEN REPLY #55509 /* ~"Aha, Nordom. Ich habe noch ein paar Fragen an dich..."~ */ GOTO 74
  IF ~~ THEN REPLY #55510 /* ~"Ich hab' genug gehört, Nordom. Weiter geht's."~ */ EXIT
END

IF ~~ THEN BEGIN 107 // from: 105.1
  SAY #55511 /* ~Kurz darauf *klicken* seine Augen wieder auf. "Auswertung der Selbstbeobachtung: Wahrnehmungen sind (1) kleiner und (B) lauter geworden. Flügel wurden durch Arme ersetzt: Grund unbekannt. Verdacht/Hypothese: Flügel unerwünscht? Spekulation. Nordom war einmal - EINS - aber ist jetzt kleineres, lauteres - EINS! - Veränderung hat zu Schwierigkeiten bei der Informationsverarbeitung geführt. Hinzufügen der LEITER-Hierarchie hat Informationsverarbeitung um 5 % gesteigert."~ */
  IF ~  CheckStatGT(Protagonist,15,INT)
Global("Nordom_Self_Truth","GLOBAL",0)
Global("Know_Source","GLOBAL",1)
~ THEN REPLY #55512 /* ~"Glaubst du, es ist die Trennung von deiner Quelle, die für die Verschiebung deiner Perspektive von dem ruhigeren und breiteren 'Einem' zum kleineren und lauteren verantwortlich ist?'"~ */ DO ~SetGlobal("Nordom_Self_Truth","GLOBAL",1)
SetAnimState("Nordom",ANIM_MIMESTAND)
~ GOTO 62
  IF ~~ THEN REPLY #55513 /* ~"Aha, Nordom. Ich habe noch ein paar Fragen an dich..."~ */ GOTO 74
  IF ~~ THEN REPLY #55514 /* ~"Ich hab' genug gehört, Nordom. Weiter geht's."~ */ EXIT
END

IF ~~ THEN BEGIN 108 // from: 105.2
  SAY #55515 /* ~Kurz darauf *klicken* seine Augen wieder auf. "Auswertung der Selbstbeobachtung: Wahrnehmungen sind (1) kleiner und (B) lauter geworden. Flügel wurden durch Arme ersetzt: Grund unbekannt. Verdacht/Hypothese: Flügel unerwünscht? Spekulation. Nordom war einmal - EINS - aber ist jetzt kleineres, lauteres - EINS! - Hinzufügen von !QUELLE! GRUND: WAHRNEHMUNGSVERSCHIEBUNG hat Informationsverarbeitung um 5 % gesteigert."~ */
  IF ~~ THEN REPLY #55516 /* ~"Aha, Nordom. Ich habe noch ein paar Fragen an dich..."~ */ GOTO 74
  IF ~~ THEN REPLY #55517 /* ~"Ich hab' genug gehört, Nordom. Weiter geht's."~ */ EXIT
END

IF ~~ THEN BEGIN 109 // from: 105.3
  SAY #55518 /* ~Kurz darauf *klicken* seine Augen wieder auf. "Auswertung der Selbstbeobachtung: Wahrnehmungen sind (1) kleiner und (B) lauter geworden. Flügel wurden durch Arme ersetzt: Grund unbekannt. Verdacht/Hypothese: Flügel unerwünscht? Spekulation. Nordom war einmal - EINS - aber ist jetzt kleineres, lauteres - EINS! - Stabilisierung erreicht. LEITER und !QUELLE! GRUND: WAHRNEHMUNGSVERSCHIEBUNG hat Informationsverarbeitung um 10 % gesteigert."~ */
  IF ~~ THEN REPLY #55519 /* ~"Aha, Nordom. Ich habe noch ein paar Fragen an dich..."~ */ GOTO 110
  IF ~~ THEN REPLY #55520 /* ~"Ich hab' genug gehört, Nordom. Weiter geht's."~ */ GOTO 110
END

IF ~~ THEN BEGIN 110 // from: 109.0 109.1
  SAY #55521 /* ~Bevor du die Worte aussprechen kannst, fangen Nordoms Augen an zu *klick-klick-klicken* und er *schrappt*: "Subjekt hat Nordom geholfen. Hypothese: Nordom hilft Adressatem. Frage: Nordom Anfrage nach Status von Adressatem?"~ */
  IF ~  Global("Nordom_Solution","GLOBAL",0)
~ THEN REPLY #55522 /* ~"Wie es *mir* geht?"~ */ DO ~SetGlobal("Nordom_Solution","GLOBAL",1)
~ GOTO 111
  IF ~  GlobalGT("Nordom_Solution","GLOBAL",0)
~ THEN REPLY #55523 /* ~"Wie es *mir* geht?"~ */ GOTO 111
  IF ~  Global("Nordom_Solution","GLOBAL",0)
~ THEN REPLY #55524 /* ~"Nicht jetzt, Nordom. Ich hätte da noch ein paar andere Fragen..."~ */ DO ~SetGlobal("Nordom_Solution","GLOBAL",1)
~ GOTO 74
  IF ~  GlobalGT("Nordom_Solution","GLOBAL",0)
~ THEN REPLY #55525 /* ~"Nicht jetzt, Nordom. Ich hätte da noch ein paar andere Fragen..."~ */ GOTO 74
  IF ~  Global("Nordom_Solution","GLOBAL",0)
~ THEN REPLY #55526 /* ~"Mach dir deswegen keine Gedanken, Nordom. Gehen wir."~ */ DO ~SetGlobal("Nordom_Solution","GLOBAL",1)
~ EXIT
  IF ~  GlobalGT("Nordom_Solution","GLOBAL",0)
~ THEN REPLY #55527 /* ~"Mach dir deswegen keine Gedanken, Nordom. Gehen wir."~ */ EXIT
END

IF ~~ THEN BEGIN 111 // from: 9.9 74.8 110.0 110.1
  SAY #55528 /* ~"Bestätige. Anfrage eingereicht bezüglich /Status/ des Angesprochenen. Antwort?"~ */
  IF ~  Global("Ravel","GLOBAL",0)
Global("Know_Shadow_Player_Connection","GLOBAL",0)
~ THEN REPLY #55529 /* ~"Naja, abgesehen von meiner Amnesie und der Tatsache, daß ich nicht wie ein normaler Mensch sterben kann, geht es mit gut."~ */ GOTO 112
  IF ~  GlobalGT("Ravel","GLOBAL",0)
Global("Know_Shadow_Player_Connection","GLOBAL",0)
~ THEN REPLY #55530 /* ~"Naja, abgesehen von meiner Amnesie und der Tatsache, daß ich nicht wie ein normaler Mensch sterben kann, und daß meine Sterblichkeit mir abhanden gekommen ist und sich irgendwohin verflüchtigt hat, geht es mit gut."~ */ GOTO 112
  IF ~  Global("Know_Shadow_Player_Connection","GLOBAL",1)
~ THEN REPLY #55531 /* ~"Naja, abgesehen von meiner Amnesie und der Tatsache, daß mir meine Sterblichkeit gestohlen wurde und sich in die Festung der Reue verdünnisiert hat und daß jedesmal, wenn ich sterbe, jemand anders an meiner Stelle stirbt... geht es mir nicht so gut."~ */ GOTO 112
  IF ~~ THEN REPLY #55532 /* ~"Nicht jetzt, Nordom. Ich hätte da noch ein paar andere Fragen..."~ */ GOTO 74
  IF ~~ THEN REPLY #55533 /* ~"Mach dir deswegen keine Gedanken, Nordom. Gehen wir."~ */ EXIT
END

IF ~~ THEN BEGIN 112 // from: 111.0 111.1 111.2
  SAY #55534 /* ~"Verarbeite: Amnesie. Verarbeite: Null Tod/Trotz Versuchen." Nordom *whrrrrt* eine Weile, seine Augen auf dich geheftet. "Folgerung: Status: Unsterblich. Frage Ursache/Wirkung: Amnesie bewirkt Unsterblichkeit oder Unsterblichkeit bewirkt Amnesie?"~ */
  IF ~~ THEN REPLY #55535 /* ~"Ich weiß nicht... Ich weiß nur, daß ich, wenn ich von den 'Toten' erwache, alle meine Erinnerungen verloren habe. Daher glaube ich, daß die Unsterblichkeit die Amnesie verursacht."~ */ GOTO 113
  IF ~~ THEN REPLY #55536 /* ~"Vergiß es, Nordom. Ich wollte dich noch was anderes fragen..."~ */ GOTO 74
  IF ~~ THEN REPLY #55537 /* ~"Mach dir deswegen keine Gedanken, Nordom. Gehen wir."~ */ EXIT
END

IF ~~ THEN BEGIN 113 // from: 112.0
  SAY #55557 /* ~"Verarbeite..." Nordom knirscht eine Weile wie ein Mühlstein. "Neue Frage formuliert: Jedesmal, wenn du stirbst, verlierst du deine Erinnerung?"~ */
  IF ~~ THEN REPLY #55559 /* ~"Richtig."~ */ GOTO 114
  IF ~  GlobalGT("Ravel","GLOBAL",0)
~ THEN REPLY #55561 /* ~"Zumindest hat Ravel das gesagt."~ */ GOTO 114
  IF ~  Global("Death","GLOBAL",1)
~ THEN REPLY #55564 /* ~"Ja... nein, warte. Das stimmt nicht. Das letzte Mal habe ich mein Gedächtnis nicht verloren."~ */ GOTO 115
  IF ~  GlobalGT("Death","GLOBAL",1)
~ THEN REPLY #55566 /* ~"Ja... nein, warte. Das stimmt nicht. Das letzte Mal habe ich mein Gedächtnis nicht verloren. Eigentlich habe ich mein Gedächtnis nicht mehr verloren, seit ich in der Leichenhalle aufgewacht bin."~ */ GOTO 115
  IF ~~ THEN REPLY #55570 /* ~"Vergiß es, Nordom. Ich wollte dich noch was anderes fragen..."~ */ GOTO 74
  IF ~~ THEN REPLY #55572 /* ~"Mach dir deswegen keine Gedanken, Nordom. Gehen wir."~ */ EXIT
END

IF ~~ THEN BEGIN 114 // from: 113.0 113.1
  SAY #55576 /* ~"Antwort: Katalogisiert." Nordom gibt ein letztes *Klick* von sich, dann steht er still da und sieht dich an. ~ */
  IF ~  Global("Death","GLOBAL",1)
~ THEN REPLY #55577 /* ~"...außer, daß ich bei meinem letzten Tod mein Gedächtnis nicht verloren habe."~ */ GOTO 115
  IF ~  GlobalGT("Death","GLOBAL",1)
~ THEN REPLY #55578 /* ~"...außer, daß ich bei meinem letzten Tod mein Gedächtnis nicht verloren habe. Und das Mal davor auch nicht."~ */ GOTO 115
  IF ~~ THEN REPLY #55579 /* ~"Ich wollte dir noch ein paar Fragen stellen, Nordom..."~ */ GOTO 74
  IF ~~ THEN REPLY #55580 /* ~"In Ordnung, Nordom. Gehen wir."~ */ EXIT
END

IF ~~ THEN BEGIN 115 // from: 113.2 113.3 114.0 114.1
  SAY #55581 /* ~"Antwort: Folgerung: Unsterblichkeit ist nicht Grund für Amnesie."~ */
  IF ~~ THEN REPLY #55582 /* ~"Ich weiß es auch nicht. Es könnte Zufall sein, daß es letztes Mal nicht passiert ist."~ */ GOTO 116
  IF ~~ THEN REPLY #55583 /* ~"Vergiß es, Nordom. Ich wollte dich noch was anderes fragen..."~ */ GOTO 74
  IF ~~ THEN REPLY #55584 /* ~"Mach dir deswegen keine Gedanken, Nordom. Gehen wir."~ */ EXIT
END

IF ~~ THEN BEGIN 116 // from: 115.0
  SAY #55585 /* ~"Element des Zufalls unberücksichtigt. Vorschlag: Suche nach neuem Muster beginnen. Amnesie/Unsterblichkeit - Frage: Weitere Faktoren vorhanden? Eingreifen/Vorhandensein weiterer Faktoren oder Nichtvorhandensein weiterer Faktoren?"~ */
  IF ~  GlobalGT("Nordom_Solution","GLOBAL",1)
~ THEN REPLY #55586 /* ~"Was für andere Faktoren könnte es noch geben?"~ */ GOTO 117
  IF ~  Global("Nordom_Solution","GLOBAL",1)
~ THEN REPLY #55586 /* ~"Was für andere Faktoren könnte es noch geben?"~ */ DO ~SetGlobal("Nordom_Solution","GLOBAL",2)
~ GOTO 117
  IF ~~ THEN REPLY #55588 /* ~"Vergiß es, Nordom. Ich wollte dich noch was anderes fragen..."~ */ GOTO 74
  IF ~~ THEN REPLY #55589 /* ~"Mach dir deswegen keine Gedanken, Nordom. Gehen wir."~ */ EXIT
END

IF ~~ THEN BEGIN 117 // from: 116.0 116.1 120.0 121.0 124.0 129.0
  SAY #55597 /* ~"Unbekannt. Frage: Zusätzliche Informationen?"~ */
  IF ~  Global("Know_Player_Killer","GLOBAL",1)
Global("Nordom_Solution","GLOBAL",2)
~ THEN REPLY #55599 /* ~"Ich glaube, daß mich jemand umbringen will.... daher habe ich eine Gruftfalle gebaut, um ihn zu fangen und zu töten. Einer der Inschriften in der Gruft zufolge verfolgt er mich anscheinend schon so lange, wie sich meine Inkarnationen erinnern können."~ */ GOTO 118
  IF ~  GlobalGT("Ravel","GLOBAL",0)
Global("Nordom_Solution","GLOBAL",3)
~ THEN REPLY #55602 /* ~"Noch etwas: Ich war nicht immer unsterblich... Erst Ravel hat mich dazu gemacht."~ */ GOTO 121
  IF ~  Global("Know_Fortress_Location_Forgot","GLOBAL",1)
Global("Nordom_Solution","GLOBAL",4)
~ THEN REPLY #55604 /* ~"Die Anzahl der Leute, die mir helfen könnten, meine Sterblichkeit wiederzufinden oder wissen, wo sie sein könnte, scheint immer kleiner zu werden. Wenn das so weitergeht, weiß bald keiner mehr, wo meine Sterblichkeit ist. Die Schädelsäule sagte, es gäbe nur drei. Einer davon war ich, aber ich hab's vergessen."~ */ GOTO 122
  IF ~  Global("Know_Keeper_Mortality","GLOBAL",1)
Global("Nordom_Solution","GLOBAL",5)
~ THEN REPLY #55605 /* ~"Trias sagte, es gäbe einen 'Wächter' in dieser Festung der Reue, der meine Sterblichkeit gefangenhält."~ */ GOTO 125
  IF ~~ THEN REPLY #55608 /* ~"Ich habe noch keine weiteren Informationen, Nordom. Ich wollte dir noch ein paar Fragen stellen..."~ */ GOTO 74
  IF ~~ THEN REPLY #55610 /* ~"Vergiß es, Nordom. Gehen wir."~ */ EXIT
END

IF ~~ THEN BEGIN 118 // from: 117.0 130.0
  SAY #55612 /* ~"Zusätzliche Informationen: Mörder. Unsterblichkeit = Kann nicht ermordet werden." Nordom *tkkk-tkkk-tkkkt* kurz, dann *schrappt* er: "Frage: Nicht Mörder?"~ */
  IF ~~ THEN REPLY #55613 /* ~"Was meinst du?"~ */ GOTO 119
  IF ~~ THEN REPLY #55616 /* ~"Vergiß es, Nordom. Ich wollte dich noch was anderes fragen..."~ */ GOTO 74
  IF ~~ THEN REPLY #55618 /* ~"Mach dir deswegen keine Gedanken, Nordom. Gehen wir."~ */ EXIT
END

IF ~~ THEN BEGIN 119 // from: 118.0
  SAY #55619 /* ~"Antwort: Unsterblichkeit schließt aus, daß Mord erfolgreich ist. Frage: Nicht Mörder?"~ */
  IF ~~ THEN REPLY #55621 /* ~"Was sonst könnte jemand davon haben, mich zu töten... oder es immer wieder zu versuchen...?"~ */ DO ~SetGlobal("Nordom_Solution","GLOBAL",3)
~ JOURNAL #55631 /* ~Nordom hat eine komische Theorie über meinen 'Mörder' - er meint, vielleicht sei dieser ja gar kein Mörder, sondern lediglich darauf aus, daß ich stets alles vergesse. Aber was vergesse?~ */ GOTO 120
  IF ~  CheckStatGT(Protagonist,15,INT)
~ THEN REPLY #55625 /* ~"Willst du etwa sagen, der Mörder versucht *nicht*, mich umzubringen? Wozu dann das Ganze?"~ */ DO ~SetGlobal("Nordom_Solution","GLOBAL",3)
~ JOURNAL #55631 /* ~Nordom hat eine komische Theorie über meinen 'Mörder' - er meint, vielleicht sei dieser ja gar kein Mörder, sondern lediglich darauf aus, daß ich stets alles vergesse. Aber was vergesse?~ */ GOTO 120
  IF ~~ THEN REPLY #55628 /* ~"Vergiß es, Nordom. Ich wollte dich noch was anderes fragen..."~ */ GOTO 74
  IF ~~ THEN REPLY #55629 /* ~"Mach dir deswegen keine Gedanken, Nordom. Gehen wir."~ */ EXIT
END

IF ~~ THEN BEGIN 120 // from: 119.0 119.1
  SAY #55637 /* ~"Antwort: Unsterblichkeit = Amnesie."~ */
  IF ~~ THEN REPLY #55638 /* ~"Wer auch immer dieser Mörder ist, er versucht also nicht, mich umzubringen, sondern mich zum *Vergessen* zu bringen? Hmmm. Das wäre eine Möglichkeit. Ich meine, es hätte *andere* Wege gegeben, mich auszuschalten, wenn der Mörder mich aus dem Weg räumen wollte. Aber wenn der Mörder will, daß ich vergesse, *was* soll ich dann vergessen?"~ */ GOTO 117
END

IF ~~ THEN BEGIN 121 // from: 117.1 130.1
  SAY #55639 /* ~"Frage: Formuliere weitere Frage... Null Unsterblichkeit in Vergangenheit, Unsterblichkeit erbeten von Subjekt: Ravel. Frage: Warum?"~ */
  IF ~~ THEN REPLY #55642 /* ~"Ich weiß nicht genau... aber wer will denn *nicht* ewig leben?"~ */ DO ~SetGlobal("Nordom_Solution","GLOBAL",4)
~ GOTO 117
END

IF ~~ THEN BEGIN 122 // from: 117.2 130.2
  SAY #55644 /* ~"Achtung: Zitat: 'Einer davon war ich, aber ich hab's vergessen' (Ort der Sterblichkeit). Achtung: Vorheriges Zitat: 'Wer auch immer dieser Mörder ist, er versucht also nicht, mich umzubringen, sondern mich zum *Vergessen* zu bringen.' Frage: Mörder Ziel = Null Mord, Mörder Ziel = Vergessen = Ort der Sterblichkeit?"~ */
  IF ~~ THEN REPLY #55645 /* ~"Du meinst also, der 'Mörder' wollte, daß ich den Ort meiner Sterblichkeit vergesse? Warum?"~ */ DO ~SetGlobal("Nordom_Solution","GLOBAL",5)
~ GOTO 123
END

IF ~~ THEN BEGIN 123 // from: 122.0
  SAY #55647 /* ~"Achtung/Hypothese: Vergessen Ort der Sterblichkeit = Wertvoll für 'Mörder.'"~ */
  IF ~~ THEN REPLY #55648 /* ~"Hmmm. Das wäre möglich... aber warum sollte das Wissen um den *Ort* so wichtig sein?"~ */ JOURNAL #55650 /* ~Nordom hat noch eine Theorie über meinen 'Mörder' aufgestellt - er meinte, vielleicht sei dieser ja gar kein Mörder, sondern lediglich darauf aus, daß ich stets alles vergesse. Wenn man danach geht, was die Schädelsäule erzählt hat, gibt es immer weniger Leute, die wissen, wo meine Sterblichkeit ist. Ich war einer davon, aber ich hab's vergessen. Ist es das, was der Mörder will - daß ich vergesse, wo meine Sterblichkeit ist?~ */ GOTO 124
END

IF ~~ THEN BEGIN 124 // from: 123.0
  SAY #55653 /* ~"Korrektur: NULL Ort der Sterblichkeit = Wertvoll für 'Mörder.'"~ */
  IF ~~ THEN REPLY #55655 /* ~"Hmmm. Möglich... Dann will jemand, daß niemand weiß, wo der Ort ist? Oder dieser Mörder will, daß niemand außer ihm weiß, wo er ist?"~ */ GOTO 117
END

IF ~~ THEN BEGIN 125 // from: 117.3 130.3
  SAY #55657 /* ~"Achtung: Trias der - Verräter - Veranlagung: Falschheit/Schild der goldenen Lügen. Information/Quelle: Trias, Richtigkeit der Information: Fragwürdig."~ */
  IF ~  GlobalGT("Ravel_Nordom","GLOBAL",0)
~ THEN REPLY #55660 /* ~"Ich glaube nicht, daß er gelogen hat, Nordom. Das hätte ihm überhaupt nichts gebracht... Du hättest seine Augen sehen sollen. Er hat die Wahrheit gesagt... diesmal. Warum hält dieser Wächter meine Sterblichkeit gefangen?"~ */ GOTO 127
  IF ~  Global("Ravel_Nordom","GLOBAL",0)
~ THEN REPLY #55662 /* ~"Ich glaube nicht, daß er gelogen hat, Nordom. Das hätte ihm überhaupt nichts gebracht... Du hättest seine Augen sehen sollen. Er hat die Wahrheit gesagt... diesmal. Warum hält dieser Wächter meine Sterblichkeit gefangen?"~ */ GOTO 126
END

IF ~~ THEN BEGIN 126 // from: 125.1
  SAY #55664 /* ~"Annahme: Ort der Sterblichkeit ist wertvoll. Frage: Sterblichkeit ist wertvoll?"~ */
  IF ~~ THEN REPLY #55666 /* ~"Weißt du, Ravel hat gesagt, meine Sterblichkeit wäre wertvoll... daß jemand sie als *Geisel* halten könnte. Daß man mich als eine Marionette verwenden könnte, wenn jemand sie gefangen hätte."~ */ GOTO 128
END

IF ~~ THEN BEGIN 127 // from: 125.0
  SAY #55668 /* ~"Frage: Warum? Formuliere... Motive..." Nordom macht *whrrrr*, dann *schrapps*. "Nordom erinnert an Ravel Antwort: "- Nicht auszudenken, welch schreckliche Dinge derjenige dir antun könnte, der deine Sterblichkeit als GEISEL hält. Es wäre, als würde man jemandes süße, saftige Seele festhalten... Eine Marionette wärst du, deren Fäden jemand anderes hält, und eine höchst traurige Marionette dazu..." Nordom *schrappt*. "Erinnerung beendet."~ */
  IF ~~ THEN REPLY #55669 /* ~"Du hast recht - Ravel hat gesagt, meine Sterblichkeit sei kostbar... Daß man als Geisel halten oder Druck auf mich ausüben könnte. Aber Geisel setzt voraus, daß jemand Lösegeld FORDERT... Und wie eine Marionette bin ich auch nicht benutzt worden.... Glaube ich jedenfalls. Also..."~ */ DO ~SetGlobal("Nordom_Solution","GLOBAL",6)
SetAnimState("Nordom",ANIM_MIMESTAND)
~ JOURNAL #55681 /* ~Ich versuche nach wie vor herauszufinden, was mein 'Mörder' eigentlich will, und ich treffe immer wieder auf dieselben verdammten Hindernisse - das einzige, was er zu wollen scheint, ist, daß ich vergesse, wo meine Sterblichkeit ist. Er stellt keine 'Lösegeldforderungen', und er versucht nicht, mich mit meiner Sterblichkeit zu beeinflussen, zumindest soweit ich das beurteilen kann. Vielleicht besitzt er meine Sterblichkeit ja gar nicht... oder verwendet sie einfach nicht? Zu viele Fragen, und zu wenig Antworten.~ */ GOTO 129
END

IF ~~ THEN BEGIN 128 // from: 126.0
  SAY #55673 /* ~"Hypothese: Geisel - Frage: Lösegeldforderung erhalten?"~ */
  IF ~~ THEN REPLY #55675 /* ~Du hast recht. Es gab keine. Und wer auch immer dieser Wächter ist, der meine Sterblichkeit gefangenhält, er scheint nicht sehr an diesen Fäden zu ziehen, die mich zu etwas bewegen sollen... zumindest merke ich nichts davon. Also...?"~ */ DO ~SetGlobal("Nordom_Solution","GLOBAL",6)
SetAnimState("Nordom",ANIM_MIMESTAND)
~ JOURNAL #55681 /* ~Ich versuche nach wie vor herauszufinden, was mein 'Mörder' eigentlich will, und ich treffe immer wieder auf dieselben verdammten Hindernisse - das einzige, was er zu wollen scheint, ist, daß ich vergesse, wo meine Sterblichkeit ist. Er stellt keine 'Lösegeldforderungen', und er versucht nicht, mich mit meiner Sterblichkeit zu beeinflussen, zumindest soweit ich das beurteilen kann. Vielleicht besitzt er meine Sterblichkeit ja gar nicht... oder verwendet sie einfach nicht? Zu viele Fragen, und zu wenig Antworten.~ */ GOTO 129
END

IF ~~ THEN BEGIN 129 // from: 127.0 128.0
  SAY #55683 /* ~Nordom verstummt. Er zwinkert nicht einmal.~ */
  IF ~~ THEN REPLY #55685 /* ~"Also... ist meine Sterblichkeit in dieser verdammten Festung eingesperrt, und je mehr Leute vergessen, wo sie ist, um so geringer ist die Wahrscheinlichkeit, daß sie je wiedergefunden wird. Wer auch immer dieser Wächter ist - und vielleicht sind er und der Mörder *ein und dieselbe* Person - er will nicht, daß meine Sterblichkeit gefunden wird.... oder zumindest nicht, daß irgend jemand erfährt, wo sie ist. Aber... dieser Wächter, der meine Sterblichkeit gefangenhält, kann oder will sie nicht dafür benutzen, mich zu kontrollieren. Warum?"~ */ GOTO 117
END

IF ~~ THEN BEGIN 130 // from: 9.10 74.9
  SAY #55687 /* ~"Bestätige. Frage: Weitere Informationen?"~ */
  IF ~  Global("Know_Player_Killer","GLOBAL",1)
Global("Nordom_Solution","GLOBAL",2)
~ THEN REPLY #55689 /* ~"Ich glaube, daß mich jemand umbringen will.... daher habe ich eine Gruftfalle gebaut, um ihn zu fangen und zu töten. Einer der Inschriften in der Gruft zufolge verfolgt er mich anscheinend schon so lange, wie sich meine Inkarnationen erinnern können."~ */ GOTO 118
  IF ~  GlobalGT("Ravel","GLOBAL",0)
Global("Nordom_Solution","GLOBAL",3)
~ THEN REPLY #55691 /* ~"Noch etwas: Ich war nicht immer unsterblich... Erst Ravel hat mich dazu gemacht."~ */ GOTO 121
  IF ~  Global("Know_Fortress_Location_Forgot","GLOBAL",1)
Global("Nordom_Solution","GLOBAL",4)
~ THEN REPLY #55692 /* ~"Die Anzahl der Leute, die mir helfen könnten, meine Sterblichkeit wiederzufinden oder wissen, wo sie sein könnte, scheint immer kleiner zu werden. Wenn das so weitergeht, weiß bald keiner mehr, wo meine Sterblichkeit ist. Die Schädelsäule sagte, es gäbe nur drei. Einer davon war ich, aber ich hab's vergessen."~ */ GOTO 122
  IF ~  Global("Know_Keeper_Mortality","GLOBAL",1)
Global("Nordom_Solution","GLOBAL",5)
~ THEN REPLY #55694 /* ~"Trias sagte, es gäbe einen 'Wächter' in dieser Festung der Reue, der meine Sterblichkeit gefangenhält."~ */ GOTO 125
  IF ~~ THEN REPLY #55697 /* ~"Ich habe noch keine weiteren Informationen, Nordom. Ich wollte dir noch ein paar Fragen stellen..."~ */ GOTO 74
  IF ~~ THEN REPLY #55699 /* ~"Vergiß es, Nordom. Gehen wir."~ */ EXIT
END

IF ~~ THEN BEGIN 131 // from:
  SAY #61281 /* ~"Schädelsäule: Besteht aus den lebenden Köpfen von Sterblichen, die gelogen haben, wobei besagte Lügen zum Tod anderer Sterblicher geführt haben. Die Säule dient als Wissensquelle. Sie verlangt in mindestens 97 Prozent der Fälle eine Bezahlung für die Weitergabe des besagten Wissens. Die Forderungen der Säule sind meist von einem Ausmaß, das der gewöhnliche Sterbliche als 'sehr hoch' bezeichnen würde. Die Logik legt es nahe, die Säule nicht zu befragen, es sei denn, der Bedarf an einer bestimmten Informationseinheit wird als 'sehr hoch' eingestuft."~ */
  IF ~~ THEN EXTERN ~DPILLAR~ 14
END

IF ~~ THEN BEGIN 132 // from:
  SAY #61673 /* ~"Einst war ich 'einer'. Jetzt bin ich 'einer', aber es ist ein kleinerer, lauterer 'einer'."~ [NOR309] */
  IF ~~ THEN EXTERN ~BGRACE~ 17
END

IF ~~ THEN BEGIN 133 // from:
  SAY #61674 /* ~"Negativ."~ [NOR310A] */
  IF ~~ THEN EXTERN ~BGRACE~ 19
END

IF ~~ THEN BEGIN 134 // from:
  SAY #61675 /* ~"Ich spreche nicht mit ihnen, ich höre ihnen zu. Sie haben Anfragen vorgelegt, wann sie endlich auf etwas schießen dürfen."~ [NOR310B] */
  IF ~~ THEN EXTERN ~BGRACE~ 20
END

IF ~~ THEN BEGIN 135 // from:
  SAY #61676 /* ~"Wo einmal zwei Flügel waren, sind jetzt zwei Arme. Ich weiß nicht, warum ich meine Flügel verloren habe."~ [NOR308A] */
  IF ~~ THEN EXTERN ~BGRACE~ 22
END

IF ~~ THEN BEGIN 136 // from:
  SAY #61677 /* ~"Das Thema 'bei seinen Leuten in Ungnade fallen' in Verbindung mit dem Verlust meiner Flügel ist etwas, das ich wahrgenommen und katalogisiert hatte. Ich habe seine Wiederspiegelung in vielen Personen gesehen, mit denen ich Umgang habe."~ [NOR308B] */
  IF ~~ THEN DO ~IncrementGlobal("Grace_Talked_Nordom","GLOBAL",1)
~ EXIT
END

IF ~~ THEN BEGIN 137 // from:
  SAY #61678 /* ~"'Niedlichster' ist ein subjektives Urteil. Ich bevorzuge die Bezeichnung 'furchterregender würfelförmiger Krieger'."~ [NOR296] */
  IF ~~ THEN EXTERN ~BGRACE~ 24
END

IF ~~ THEN BEGIN 138 // from:
  SAY #61785 /* ~"Ich nehme keine Befehle von dir an."~ [NOR284] */
  IF ~~ THEN DO ~SetGlobal("Morte_Talked_Nordom","GLOBAL",1)
~ EXIT
END

IF ~~ THEN BEGIN 139 // from:
  SAY #61786 /* ~"Das ist ohne Ersatzarme für dich physisch unmöglich. Außerdem trage ich keine Zahlen wie ein Spielwürfel."~ [NOR283] */
  IF ~~ THEN EXTERN ~BMORTE~ 41
END

IF ~~ THEN BEGIN 140 // from:
  SAY #61787 /* ~"Sie müssen nicht nachgeladen werden. Sie sind immer schußbereit."~ [NOR306] */
  IF ~~ THEN EXTERN ~BMORTE~ 43
END

IF ~~ THEN BEGIN 141 // from:
  SAY #61788 /* ~"Sie klicken nicht. Sie befinden sich in einer Phase intensiver Diskussion über diese Reise."~ [NOR307] */
  IF ~~ THEN EXTERN ~BMORTE~ 45
END

IF ~~ THEN BEGIN 142 // from:
  SAY #61789 /* ~"Warum redest du mich immer als Tür an?"~ [NOR305A] */
  IF ~~ THEN EXTERN ~BMORTE~ 47
END

IF ~~ THEN BEGIN 143 // from:
  SAY #61790 /* ~"Ich weiß, wer da ist. Du bist es. Warum sollte ich eine Frage stellen, wenn ich die Antwort schon weiß?"~ [NOR305B] */
  IF ~~ THEN EXTERN ~BMORTE~ 48
END

IF ~~ THEN BEGIN 144 // from:
  SAY #61791 /* ~"Annah! Morte will 'mit deinen Kissen kuscheln'."~ [NOR285] */
  IF ~~ THEN EXTERN ~BMORTE~ 50
END

IF ~  Global("Fortress_Nordom","GLOBAL",3)
~ THEN BEGIN 145 // from:
  SAY #68234 /* ~Du wendest deine Macht an und hauchst Nordoms Hülle die Seele ein, ganz langsam, bis du merkst, daß sie wieder zurück in den Körper des Modronen gleitet. Nordoms Hülle bebt, dann kommt er auf die Beine. ~ */
  IF ~  Global("Absorb","GLOBAL",0)
~ THEN REPLY #68235 /* ~"Nordom, ich brauche deine Hilfe *wirklich* sofort... Ich habe meinen Mörder gefunden, und es ist meine Sterblichkeit."~ */ DO ~SetGlobal("Fortress_Nordom","GLOBAL",4)
JoinPartyEx(TRUE)
~ GOTO 146
  IF ~  GlobalGT("Absorb","GLOBAL",0)
~ THEN REPLY #68372 /* ~NORDOM. ~ */ GOTO 147
END

IF ~~ THEN BEGIN 146 // from: 145.0
  SAY #68236 /* ~"Warte auf Befehle."~ [NOR063] */
  IF ~  Global("Trans_Vanish","GLOBAL",0)
~ THEN REPLY #68237 /* ~"Mach dich bereit. Du bekommst noch früh genug ein Ziel für deine Armbrüste..."~ */ EXTERN ~DTRANS~ 142
  IF ~  Global("Trans_Vanish","GLOBAL",1)
~ THEN REPLY #68238 /* ~"Mach dich bereit. Du bekommst noch früh genug ein Ziel für deine Armbrüste..."~ */ DO ~StartCutSceneMode()
StartCutSceneEx("1204tr",FALSE)
~ EXIT
END

IF ~~ THEN BEGIN 147 // from: 145.1
  SAY #68373 /* ~Nordom blinzelt, seine Augendeckel *klimpern* schnell, dann erweitern sie sich zu Punkten, als ob er dich anschielt. "Deine Stimme liegt außerhalb der bekannten Standardparameter."~ */
  IF ~~ THEN REPLY #68374 /* ~ICH BIN WIEDER... EIN GANZES GEWORDEN. ICH HABE MICH VERÄNDERT, ABER ICH KANN NICHT MEHR SEHR LANGE HIER BLEIBEN. ICH BRINGE DICH ZURÜCK NACH SIGIL, NORDOM, WENN DU WILLST.~ */ GOTO 148
END

IF ~~ THEN BEGIN 148 // from: 147.0
  SAY #68375 /* ~"Frage: Wo ist dein nächstes Ziel? Nordom wird dich begleiten und schützen."~ */
  IF ~~ THEN REPLY #68376 /* ~ICH HABE VIELE VERBRECHEN IN VIELEN LEBEN BEGANGEN. ICH GEHE NUN ZU EINEM ORT DER BESTRAFUNG. DU KANNST NICHT MIT MIR KOMMEN.~ */ GOTO 149
END

IF ~~ THEN BEGIN 149 // from: 148.0
  SAY #68377 /* ~"Auswahlfrage: (Brauchst) oder (willst) du Nordoms Anwesenheit nicht?"~ */
  IF ~~ THEN REPLY #68378 /* ~DU KANNST MIR NICHT FOLGEN, NORDOM. ICH HABE KEINE WAHL. ANDERE MÄCHTE BESTIMMEN NUN MEIN HANDELN. SIE HABEN ES IMMER GETAN, ABER NUN WISSEN SIE, WER ICH BIN, UND SIE KOMMEN JEDEN MOMENT NÄHER.~ */ GOTO 150
END

IF ~~ THEN BEGIN 150 // from: 149.0
  SAY #68379 /* ~Nordom gibt ein kurzes metallisches Rasseln von sich, dann beginnen seine Armbrüste in seinen Händen zu *klicken* und zu *klimpern*. "Nordom erweist Danksagungen. Du hast Nordom geholfen, seine Idemnität zu finden."~ */
  IF ~~ THEN REPLY #68380 /* ~SO WIE DU MIR GEHOLFEN HAST, MEINE ZU FINDEN. ICH SCHENKE DIR DIE FREIHEIT, NORDOM. ERKUNDE, LERNE, WACHSE. VIELLEICHT SEHEN WIR UNS WIEDER, AUF EINER ANDEREN EBENE, WEIT IN DER ZUKUNFT.~ */ GOTO 151
END

IF ~~ THEN BEGIN 151 // from: 150.0
  SAY #68381 /* ~"Antwort: Gehört und zur Kenntnis genommen. Nordom erwartet besagten Tag."~ */
  IF ~~ THEN REPLY #68382 /* ~BLEIB BEI DEINER LOGIK, NORDOM. DU WIRST MERKEN, DASS SIE EIN BESSERER SCHILD IST ALS DIE MEISTEN ANDEREN LEIDENSCHAFTEN, DIE DIE EBENEN BEHERRSCHEN.~ */ GOTO 152
END

IF ~~ THEN BEGIN 152 // from: 151.0
  SAY #68383 /* ~"Dieses Problem basiert nicht länger auf reiner Logik."~ [NOR149] */
  IF ~  GlobalGT("Fortress_Ignus","GLOBAL",0)
Global("Fortress_Ignus_Battle","GLOBAL",0)
~ THEN REPLY #68384 /* ~LEB WOHL, NORDOM.~ */ DO ~StartCutSceneMode()
StartCutSceneEx("1204i0",FALSE)
~ EXIT
  IF ~  GlobalGT("Fortress_Vhailor","GLOBAL",0)
Global("Fortress_Vhailor_Battle","GLOBAL",0)
Global("Fortress_Ignus","GLOBAL",0)
~ THEN REPLY #68385 /* ~LEB WOHL, NORDOM.~ */ DO ~StartCutSceneMode()
StartCutSceneEx("1204v0",FALSE)
~ EXIT
  IF ~  GlobalGT("Fortress_Vhailor","GLOBAL",0)
Global("Fortress_Vhailor_Battle","GLOBAL",0)
GlobalGT("Fortress_Ignus","GLOBAL",0)
Global("Fortress_Ignus_Battle","GLOBAL",1)
~ THEN REPLY #68386 /* ~LEB WOHL, NORDOM.~ */ DO ~StartCutSceneMode()
StartCutSceneEx("1204v0",FALSE)
~ EXIT
  IF ~  Global("Fortress_Vhailor","GLOBAL",0)
Global("Fortress_Ignus","GLOBAL",0)
~ THEN REPLY #68487 /* ~LEB WOHL, NORDOM.~ */ DO ~QuitGame(FINALE,0,0)
~ EXIT
  IF ~  GlobalGT("Fortress_Vhailor","GLOBAL",0)
Global("Fortress_Vhailor_Battle","GLOBAL",1)
Global("Fortress_Ignus","GLOBAL",0)
~ THEN REPLY #68488 /* ~LEB WOHL, NORDOM.~ */ DO ~QuitGame(FINALE,0,0)
~ EXIT
  IF ~  GlobalGT("Fortress_Ignus","GLOBAL",0)
Global("Fortress_Ignus_Battle","GLOBAL",1)
Global("Fortress_Vhailor","GLOBAL",0)
~ THEN REPLY #68489 /* ~LEB WOHL, NORDOM.~ */ DO ~QuitGame(FINALE,0,0)
~ EXIT
END

IF ~  Global("Fortress_Nordom","GLOBAL",4)
~ THEN BEGIN 153 // from:
  SAY #68414 /* ~"Warte auf Befehle."~ [NOR063] */
  IF ~~ THEN REPLY #68415 /* ~"Schieß einfach weiter Bolzen aus deiner Armbrust in dieses verzweigte Ding. Den Rest erledigen wir später..."~ */ EXIT
END
