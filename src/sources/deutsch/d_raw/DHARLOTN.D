// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DHARLOTN.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\de_DE\dialog.tlk
// dialogF  : (none)

BEGIN ~DHARLOTN~

IF ~  True()
~ THEN BEGIN 0 // from:
  SAY #1809 /* ~Du siehst eine müde wirkende Frau in einem engen Ledermieder und Leggings. Ein billiger Parfümgeruch umgibt sie wie eine Wolke, und ihr Gesicht ist mit Schminke zugekleistert. Als sie dich sieht, lächelt sie. "Hast du keine Lust, dich ein Weilchen mit mir zu unterhalten, Liebster?"~ */
  IF ~~ THEN REPLY #7190 /* ~"Sei gegrüßt."~ */ GOTO 1
  IF ~~ THEN REPLY #7191 /* ~Geh vorbei.~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #1810 /* ~Die Frau schaut dich kokett an. "Du siehst aus wie ein Typ, der was *verloren* hat. Vielleicht kann ich dir bei der Suche helfen, Schleifer?" Sie lächelt verhalten.~ */
  IF ~  NearbyDialog("DMorte")
~ THEN REPLY #7192 /* ~"Oh?"~ */ EXTERN ~DMORTE~ 37
  IF ~  Global("Journal","GLOBAL",0)
!NearbyDialog("DMorte")
~ THEN REPLY #7193 /* ~"Ich vermisse ein Journal."~ */ GOTO 2
  IF ~  !NearbyDialog("DMorte")
~ THEN REPLY #7194 /* ~"Vielleicht kannst du mir bei der Suche nach dem, was ich vermisse, behilflich sein."~ */ GOTO 3
  IF ~  !NearbyDialog("DMorte")
~ THEN REPLY #7195 /* ~"Ehrlich gesagt hätte ich da ein paar Fragen..."~ */ GOTO 9
  IF ~~ THEN REPLY #7196 /* ~"Nein danke, nicht heute."~ */ GOTO 11
END

IF ~~ THEN BEGIN 2 // from: 1.1
  SAY #1812 /* ~"Hä?" Sie sieht verwirrt aus. "Wovon redest du?"~ */
  IF ~~ THEN REPLY #7197 /* ~"Vergiß das Journal. Vielleicht kannst du mir bei der Suche nach dem helfen, was ich *wirklich* vermisse."~ */ GOTO 3
  IF ~~ THEN REPLY #7198 /* ~"Ich suche gar nichts, aber ich hätte da ein paar Fragen..."~ */ GOTO 9
  IF ~~ THEN REPLY #7199 /* ~"Macht nichts. Auf bald."~ */ GOTO 11
END

IF ~~ THEN BEGIN 3 // from: 1.2 2.0
  SAY #1813 /* ~Ihr Ton wird nüchtern. "Tja, mein Lieber, da wäre dann noch die Sache mit dem Finderlohn."~ */
  IF ~~ THEN REPLY #7200 /* ~"Ich verstehe. Wieviel?"~ */ GOTO 4
  IF ~~ THEN REPLY #7201 /* ~"Vergiß es. Ich hätte da ein paar Fragen..."~ */ GOTO 9
  IF ~~ THEN REPLY #7202 /* ~"Vergiß es. Leb wohl."~ */ GOTO 11
END

IF ~~ THEN BEGIN 4 // from: 3.0
  SAY #1814 /* ~"Ein paar Kupfermünzen für einen *Blick* auf das, was du suchst, und zehn Kupfermünzen dafür, daß du es tatsächlich wiederfindest."~ */
  IF ~  PartyGoldGT(9)
~ THEN REPLY #7203 /* ~"Abgemacht."~ */ DO ~TakePartyGold(10)
IncrementGlobal("Banged_Harlot","GLOBAL",1)
~ GOTO 5
  IF ~~ THEN REPLY #7204 /* ~"Vergiß es. Ich hätte da aber noch ein paar Fragen..."~ */ GOTO 9
  IF ~  PartyGoldGT(9)
!NearbyDialog("DMorte")
~ THEN REPLY #7205 /* ~"Schon gut. Danke, aber ich werde das, was ich suche, auch alleine finden."~ */ GOTO 11
  IF ~  PartyGoldLT(10)
~ THEN REPLY #7206 /* ~"Schon gut. Danke, aber ich werde das, was ich suche, auch alleine finden."~ */ GOTO 6
  IF ~  PartyGoldGT(9)
NearbyDialog("DMorte")
Global("Morte_Harlot_Quip_1","GLOBAL",0)
~ THEN REPLY #7207 /* ~"Schon gut. Danke, aber ich werde das, was ich suche, auch alleine finden."~ */ DO ~SetGlobal("Morte_Harlot_Quip_1","GLOBAL",1)
~ EXTERN ~DMORTE~ 38
END

IF ~~ THEN BEGIN 5 // from: 4.0
  SAY #1815 /* ~"Ich glaube, du hast gefunden, wonach du gesucht hast. Komm mit, mein Lieber."~ */
  IF ~  InParty("Annah")
NearbyDialog("DAnnah")
~ THEN REPLY #7208 /* ~Folge ihr...~ */ DO ~IncrementGlobal("BD_ANNAH_MORALE","GLOBAL",-1)
SetGlobal("Harlot_Annah_Sex","GLOBAL",1)
~ EXTERN ~DANNAH~ 49
  IF ~  !InParty("Annah")
!NearbyDialog("DAnnah")
NearbyDialog("DGrace")
~ THEN REPLY #7211 /* ~Folge ihr...~ */ DO ~MoraleDec("Grace",1)
SetGlobal("Harlot_Grace_Sex","GLOBAL",1)
IncrementGlobal("Banged_Harlot","GLOBAL",1)
~ EXTERN ~DGRACE~ 6
  IF ~  !InParty("Annah")
!NearbyDialog("DAnnah")
!NearbyDialog("DGrace")
~ THEN REPLY #7212 /* ~Folge ihr...~ */ DO ~FadeToColor([20.0],0)
FadeFromColor([20.0],0)
IncrementGlobal("Banged_Harlot","GLOBAL",1)
~ GOTO 32
  IF ~  !InParty("Annah")
NearbyDialog("DAnnah")
!NearbyDialog("DGrace")
~ THEN REPLY #7208 /* ~Folge ihr...~ */ DO ~FadeToColor([20.0],0)
FadeFromColor([20.0],0)
IncrementGlobal("Banged_Harlot","GLOBAL",1)
~ GOTO 32
  IF ~  InParty("Annah")
!NearbyDialog("DAnnah")
!NearbyDialog("DGrace")
~ THEN REPLY #7208 /* ~Folge ihr...~ */ DO ~FadeToColor([20.0],0)
FadeFromColor([20.0],0)
IncrementGlobal("Banged_Harlot","GLOBAL",1)
~ GOTO 32
END

IF ~~ THEN BEGIN 6 // from: 4.3
  SAY #1816 /* ~Die Frau lächelt. "Nicht genug Klimper, was? Keine Sorge, mein Lieber... komm wieder, wenn dein Geldbeutel besser gefüllt ist."~ */
  IF ~~ THEN REPLY #7213 /* ~"Ähh... dann leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 7 // from:
  SAY #1817 /* ~Die Frau unterbricht. "Der Preis ist doppelt so hoch für einen Mimir... oder jeden anderen Degenerierten."~ */
  IF ~  Global("Know_Mimir","GLOBAL",0)
~ THEN REPLY #7214 /* ~"Ähh... 'Mimir'?"~ */ DO ~SetGlobal("Know_Mimir","GLOBAL",1)
~ EXTERN ~DMORTE~ 129
  IF ~  Global("Know_Mimir","GLOBAL",1)
~ THEN REPLY #7215 /* ~"Steiger dich da lieber nicht rein, Morte. So wie die aussieht, rette ich dich hier bestimmt vor einem zweiten Sterben."~ */ DO ~IncrementGlobal("BD_MORTE_MORALE","GLOBAL",1)
~ GOTO 8
  IF ~  Global("Know_Mimir","GLOBAL",1)
~ THEN REPLY #7217 /* ~"Naja, egal. Leb wohl."
~ */ EXIT
END

IF ~~ THEN BEGIN 8 // from: 7.1
  SAY #1823 /* ~"Sollen die Pocken deine Eingeweide zerfressen! Du stinkst wie eine Ziegenherde und bist doppelt so häßlich."~ */
  IF ~~ THEN REPLY #7218 /* ~"Äh..."~ */ EXTERN ~DMORTE~ 130
END

IF ~~ THEN BEGIN 9 // from: 1.3 2.1 3.1 4.1 32.0
  SAY #1824 /* ~Die Frau runzelt die Stirn. "Ich bin kein Schnüffler..." Sie runzelt die Stirn und reibt zwei Finger aneinander. "*Es sei denn*, du hast ein bißchen Klimper, um mich für meine Bemühungen zu entschädigen."~ */
  IF ~  CheckStatLT(Protagonist,10,CHR)
~ THEN REPLY #7219 /* ~"Ich kann zahlen. Wieviel willst du?"~ */ GOTO 10
  IF ~  CheckStatGT(Protagonist,9,CHR)
CheckStatLT(Protagonist,13,CHR)
~ THEN REPLY #7223 /* ~"Ich kann zahlen. Wieviel willst du?"~ */ GOTO 33
  IF ~  CheckStatGT(Protagonist,12,CHR)
~ THEN REPLY #7224 /* ~"Ich kann zahlen. Wieviel willst du?"~ */ GOTO 34
  IF ~~ THEN REPLY #7225 /* ~"Naja, egal. Leb wohl."~ */ GOTO 11
END

IF ~~ THEN BEGIN 10 // from: 9.0
  SAY #1825 /* ~"Zehn Kupfermünzen. Andere Fragen, die mehr ins Detail gehen, kosten dich mehr."~ */
  IF ~  PartyGoldGT(9)
~ THEN REPLY #7226 /* ~"Klingt akzeptabel. Hier hast du zehn Kupfermünzen."~ */ DO ~TakePartyGold(10)
~ GOTO 12
  IF ~~ THEN REPLY #7227 /* ~"Ach, egal."~ */ GOTO 11
END

IF ~~ THEN BEGIN 11 // from: 1.4 2.2 3.2 4.2 9.3 10.1 13.7 33.1 34.1
  SAY #1826 /* ~"Wie du meinst. Wenn du die Nase voll davon hast, dauernd Sachen zu verlieren, und bestimmte Sachen finden mußt, dann komm zu mir, mein Lieber."~ */
  IF ~  Global("Morte_Harlot_Quip_1","GLOBAL",0)
NearbyDialog("DMorte")
~ THEN REPLY #7228 /* ~"Ich werd's mir merken. Leb wohl."~ */ DO ~SetGlobal("Morte_Harlot_Quip_1","GLOBAL",0)
~ EXTERN ~DMORTE~ 38
  IF ~  Global("Morte_Harlot_Quip_1","GLOBAL",0)
!NearbyDialog("DMorte")
~ THEN REPLY #7229 /* ~"Ich werd's mir merken. Leb wohl."~ */ EXIT
  IF ~  Global("Morte_Harlot_Quip_1","GLOBAL",1)
~ THEN REPLY #7230 /* ~"Ich werd's mir merken. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 12 // from: 10.0 33.0 34.0
  SAY #1827 /* ~"Also gut." Sie nimmt den Klimper in ihre Hand, wo er sofort verschwindet. "Jetzt..."~ */
  IF ~~ THEN REPLY #7231 /* ~"Da waren noch ein paar Sachen, die ich wissen wollte..."~ */ GOTO 13
END

IF ~~ THEN BEGIN 13 // from: 12.0 14.2 15.1 16.1 17.0 19.1 20.1 21.1 22.0 23.0 24.3 24.4 24.5 24.6 25.2 26.2 27.1 28.1 29.1 30.0 31.0
  SAY #1828 /* ~"Stell deine Fragen, mein Lieber."
~ */
  IF ~  Global("Know_Sigil","GLOBAL",0)
~ THEN REPLY #7232 /* ~"Kannst du mir was über diese Stadt erzählen?"~ */ GOTO 14
  IF ~  Global("Know_Sigil","GLOBAL",1)
~ THEN REPLY #7233 /* ~"Kannst du mir was über Sigil erzählen?"~ */ GOTO 14
  IF ~~ THEN REPLY #7236 /* ~"Kannst du mir sagen, ob es hier in der Gegend irgendwas Interessantes gibt?"~ */ GOTO 18
  IF ~  Global("Know_Factions","GLOBAL",1)
~ THEN REPLY #7237 /* ~"Kannst du mir was über die Bünde erzählen?"~ */ GOTO 21
  IF ~  Global("Know_Lady","GLOBAL",1)
~ THEN REPLY #7238 /* ~"Was kannst du mir über die Dame der Schmerzen erzählen?"~ */ GOTO 31
  IF ~  Global("Pharod","GLOBAL",0)
~ THEN REPLY #7239 /* ~"Ich suche jemanden namens Pharod."~ */ GOTO 24
  IF ~  Global("Journal","GLOBAL",0)
~ THEN REPLY #7240 /* ~"Ich suche nach einem Journal."~ */ GOTO 23
  IF ~~ THEN REPLY #7241 /* ~"Ist schon gut. Leb wohl."~ */ GOTO 11
END

IF ~~ THEN BEGIN 14 // from: 13.0 13.1
  SAY #1829 /* ~Ihre Augen verengen sich voller Mißtrauen. "Die Stadt? Was ist damit?"~ */
  IF ~  Global("Know_Sigil","GLOBAL",0)
~ THEN REPLY #7242 /* ~"Was denn?"~ */ DO ~SetGlobal("Know_Sigil","GLOBAL",1)
~ GOTO 15
  IF ~  GlobalGT("Know_Sigil","GLOBAL",0)
~ THEN REPLY #7243 /* ~"Was soll damit sein?"~ */ GOTO 15
  IF ~~ THEN REPLY #7244 /* ~"Ehrlich gesagt, hätte ich da noch ein paar Fragen..."~ */ GOTO 13
  IF ~  Global("Morte_Harlot_Quip_1","GLOBAL",0)
NearbyDialog("DMorte")
~ THEN REPLY #7245 /* ~"Vergiß es. Leb wohl."~ */ DO ~SetGlobal("Morte_Harlot_Quip_1","GLOBAL",0)
~ EXTERN ~DMORTE~ 38
  IF ~  Global("Morte_Harlot_Quip_1","GLOBAL",0)
!NearbyDialog("DMorte")
~ THEN REPLY #7246 /* ~"Vergiß es. Leb wohl."~ */ EXIT
  IF ~  Global("Morte_Harlot_Quip_1","GLOBAL",1)
~ THEN REPLY #7247 /* ~"Vergiß es. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 15 // from: 14.0 14.1
  SAY #1830 /* ~"Was Sigil ist, willst du wissen?" Sie zuckt die Achseln und schaut sich um. "Es ist die Stadt in der du stehst, die links und rechts von dir in die Höhe wächst." Sie lächelt. "Sie schlägt Besuchern auf den Magen."~ */
  IF ~~ THEN REPLY #7248 /* ~"Und wo genau ist Sigil?"~ */ GOTO 16
  IF ~~ THEN REPLY #7249 /* ~"Ehrlich gesagt, hätte ich da noch ein paar Fragen..."~ */ GOTO 13
  IF ~  Global("Morte_Harlot_Quip_1","GLOBAL",0)
NearbyDialog("DMorte")
~ THEN REPLY #7250 /* ~"Vergiß es. Leb wohl."~ */ DO ~SetGlobal("Morte_Harlot_Quip_1","GLOBAL",0)
~ EXTERN ~DMORTE~ 38
  IF ~  Global("Morte_Harlot_Quip_1","GLOBAL",0)
!NearbyDialog("DMorte")
~ THEN REPLY #7251 /* ~"Vergiß es. Leb wohl."~ */ EXIT
  IF ~  Global("Morte_Harlot_Quip_1","GLOBAL",1)
~ THEN REPLY #7252 /* ~"Vergiß es. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 16 // from: 15.0
  SAY #1831 /* ~"Zentrum der Ebenen, wie es so schön heißt." Ihr Tonfall wird verächtlich. "Wenn du das Gewäsch glaubst."~ */
  IF ~~ THEN REPLY #7253 /* ~"Warum 'Gewäsch'?"
~ */ GOTO 17
  IF ~~ THEN REPLY #7254 /* ~"Ehrlich gesagt, hätte ich da noch ein paar Fragen..."~ */ GOTO 13
  IF ~  Global("Morte_Harlot_Quip_1","GLOBAL",0)
NearbyDialog("DMorte")
~ THEN REPLY #7255 /* ~"Vergiß es. Leb wohl."~ */ DO ~SetGlobal("Morte_Harlot_Quip_1","GLOBAL",0)
~ EXTERN ~DMORTE~ 38
  IF ~  Global("Morte_Harlot_Quip_1","GLOBAL",0)
!NearbyDialog("DMorte")
~ THEN REPLY #7256 /* ~"Vergiß es. Leb wohl."~ */ EXIT
  IF ~  Global("Morte_Harlot_Quip_1","GLOBAL",1)
~ THEN REPLY #7257 /* ~"Vergiß es. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 17 // from: 16.0
  SAY #1832 /* ~Sie grinst. "Tja, mein Lieber, nach allem, was die Graubärte und Gelehrten und Chefs und die ganzen Klugscheißer so sagen, hören die Ebenen niemals auf." Sie tippt sich an den Kopf. "Wer kann dann sagen, wo das 'Zentrum' ist?"~ */
  IF ~~ THEN REPLY #7258 /* ~"Hmmmm. Ich hätte noch ein paar Fragen..."~ */ GOTO 13
  IF ~  Global("Morte_Harlot_Quip_1","GLOBAL",0)
NearbyDialog("DMorte")
~ THEN REPLY #7259 /* ~"Vielen Dank für die Informationen. Auf bald."~ */ DO ~SetGlobal("Morte_Harlot_Quip_1","GLOBAL",0)
~ EXTERN ~DMORTE~ 38
  IF ~  Global("Morte_Harlot_Quip_1","GLOBAL",0)
!NearbyDialog("DMorte")
~ THEN REPLY #7260 /* ~"Vielen Dank für die Informationen. Auf bald."
~ */ EXIT
  IF ~  Global("Morte_Harlot_Quip_1","GLOBAL",1)
~ THEN REPLY #7261 /* ~"Vielen Dank für die Informationen. Auf bald."~ */ EXIT
END

IF ~~ THEN BEGIN 18 // from: 13.2 19.0 20.0
  SAY #1833 /* ~Sie stemmt die Hände in die Hüften und schürzt die Lippen. "Hängt davon ab, woran du interessiert bist, Schleifer."~ */
  IF ~~ THEN REPLY #7379 /* ~"Ich will mich ein wenig amüsieren."~ */ GOTO 19
  IF ~~ THEN REPLY #7381 /* ~"Ich suche Arbeit."~ */ GOTO 20
  IF ~  Global("Morte_Harlot_Quip_1","GLOBAL",0)
NearbyDialog("DMorte")
~ THEN REPLY #7385 /* ~"Schon gut. Leb wohl."~ */ DO ~SetGlobal("Morte_Harlot_Quip_1","GLOBAL",0)
~ EXTERN ~DMORTE~ 38
  IF ~  Global("Morte_Harlot_Quip_1","GLOBAL",0)
!NearbyDialog("DMorte")
~ THEN REPLY #7389 /* ~"Macht nichts. Auf bald."~ */ EXIT
  IF ~  Global("Morte_Harlot_Quip_1","GLOBAL",1)
~ THEN REPLY #7393 /* ~"Macht nichts. Auf bald."~ */ EXIT
END

IF ~~ THEN BEGIN 19 // from: 18.0
  SAY #1834 /* ~"Ich habe dir schon ein Angebot gemacht, mein Lieber, und der Preis ist in Ordnung. Ich kenne keinen anderen Ort, wo du soviel Spaß haben könntest wie hier mit mir."~ */
  IF ~~ THEN REPLY #7263 /* ~"Gibt es hier in der Gegend sonst noch was Interessantes?"~ */ GOTO 18
  IF ~~ THEN REPLY #7264 /* ~"Schön... Ich hätte aber noch ein paar Fragen..."~ */ GOTO 13
  IF ~  Global("Morte_Harlot_Quip_1","GLOBAL",0)
NearbyDialog("DMorte")
~ THEN REPLY #7265 /* ~"Schon gut. Leb wohl."~ */ DO ~SetGlobal("Morte_Harlot_Quip_1","GLOBAL",0)
~ EXTERN ~DMORTE~ 38
  IF ~  Global("Morte_Harlot_Quip_1","GLOBAL",0)
!NearbyDialog("DMorte")
~ THEN REPLY #7266 /* ~"Schon gut. Leb wohl."~ */ EXIT
  IF ~  Global("Morte_Harlot_Quip_1","GLOBAL",1)
~ THEN REPLY #7267 /* ~"Schon gut. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 20 // from: 18.1
  SAY #1835 /* ~Sie lacht. "Du fragst *mich?* Was, hast du etwa vor, in die Schwesternschaft einzutreten?" Sie biegt sich vor Lachen... das Gekreische ähnelt dem einer betrunkenen Hexe. Schließlich ebbt das Gelächter ab, und sie atmet tief ein. "Du bist... du bist wohl ein reicher Mann."~ */
  IF ~~ THEN REPLY #7269 /* ~"Gibt es hier in der Gegend sonst noch was Interessantes?"~ */ GOTO 18
  IF ~~ THEN REPLY #7270 /* ~"Schön... Ich hätte aber noch ein paar Fragen..."~ */ GOTO 13
  IF ~  Global("Morte_Harlot_Quip_1","GLOBAL",0)
NearbyDialog("DMorte")
~ THEN REPLY #7272 /* ~"Macht nichts. Auf bald."~ */ DO ~SetGlobal("Morte_Harlot_Quip_1","GLOBAL",0)
~ EXTERN ~DMORTE~ 38
  IF ~  Global("Morte_Harlot_Quip_1","GLOBAL",0)
!NearbyDialog("DMorte")
~ THEN REPLY #7273 /* ~"Macht nichts. Auf bald."~ */ EXIT
  IF ~  Global("Morte_Harlot_Quip_1","GLOBAL",1)
~ THEN REPLY #7274 /* ~"Macht nichts. Auf bald."~ */ EXIT
END

IF ~~ THEN BEGIN 21 // from: 13.3
  SAY #1837 /* ~Sie lächelt wissend. "Ich... 'diene'... nur den Bünden. Ich mache keine Geschäfte mit ihnen."~ */
  IF ~~ THEN REPLY #7275 /* ~"Nicht mal die Staubmenschen?"~ */ GOTO 22
  IF ~~ THEN REPLY #7276 /* ~"Schön... Ich hätte aber noch ein paar Fragen..."~ */ GOTO 13
  IF ~  Global("Morte_Harlot_Quip_1","GLOBAL",0)
NearbyDialog("DMorte")
~ THEN REPLY #7277 /* ~"Macht nichts. Auf bald."~ */ DO ~SetGlobal("Morte_Harlot_Quip_1","GLOBAL",0)
~ EXTERN ~DMORTE~ 38
  IF ~  Global("Morte_Harlot_Quip_1","GLOBAL",0)
!NearbyDialog("DMorte")
~ THEN REPLY #7278 /* ~"Macht nichts. Auf bald."~ */ EXIT
  IF ~  Global("Morte_Harlot_Quip_1","GLOBAL",1)
~ THEN REPLY #7279 /* ~"Macht nichts. Auf bald."~ */ EXIT
END

IF ~~ THEN BEGIN 22 // from: 21.0
  SAY #1838 /* ~"Die Staubmenschen benehmen sich in meinen Armen ganz und gar nicht wie Staubies, mein Lieber." Sie spricht mit abfälligem Unterton. "Diese Knochenbrecher reden viel über den Tod, aber wenn sie bei mir sind, kriegen sie kaum ein Wort raus, verstehst du?"~ */
  IF ~~ THEN REPLY #7280 /* ~"Ich verstehe... Ich hätte aber noch ein paar Fragen..."~ */ GOTO 13
  IF ~  Global("Morte_Harlot_Quip_1","GLOBAL",0)
NearbyDialog("DMorte")
~ THEN REPLY #7281 /* ~"Aufschlußreich... leb wohl."~ */ DO ~SetGlobal("Morte_Harlot_Quip_1","GLOBAL",0)
~ EXTERN ~DMORTE~ 38
  IF ~  Global("Morte_Harlot_Quip_1","GLOBAL",0)
!NearbyDialog("DMorte")
~ THEN REPLY #7282 /* ~"Aufschlußreich... leb wohl."~ */ EXIT
  IF ~  Global("Morte_Harlot_Quip_1","GLOBAL",1)
~ THEN REPLY #7283 /* ~"Aufschlußreich... leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 23 // from: 13.6
  SAY #1839 /* ~"Keine Ahnung, wo du so ein Ding finden könntest, mein Lieber. Vielleicht mußt du woanders suchen." Sie lächelt vielsagend. "Ich kenne ein paar Orte, wo du anfangen könntest."~ */
  IF ~~ THEN REPLY #7284 /* ~"Ich hätte noch ein paar andere Fragen..."~ */ GOTO 13
  IF ~  Global("Morte_Harlot_Quip_1","GLOBAL",0)
NearbyDialog("DMorte")
~ THEN REPLY #7285 /* ~"Schon gut. Leb wohl."~ */ DO ~SetGlobal("Morte_Harlot_Quip_1","GLOBAL",0)
~ EXTERN ~DMORTE~ 38
  IF ~  Global("Morte_Harlot_Quip_1","GLOBAL",0)
!NearbyDialog("DMorte")
~ THEN REPLY #7286 /* ~"Schon gut. Leb wohl."~ */ EXIT
  IF ~  Global("Morte_Harlot_Quip_1","GLOBAL",1)
~ THEN REPLY #7287 /* ~"Schon gut. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 24 // from: 13.5
  SAY #1840 /* ~"Pharod? Also *das* ist eines der ganz großen Dunkel, mein Lieber. Wenn du über diesen Kerl etwas wissen willst, dann kostet das dreimal soviel Kupfermünzen wie eine normale Frage."~ */
  IF ~  CheckStatLT(Protagonist,10,CHR)
PartyGoldGT(29)
~ THEN REPLY #7318 /* ~"Okay, okay. Hier hast du dreißig Kupfermünzen."~ */ DO ~TakePartyGold(30)
~ GOTO 25
  IF ~  CheckStatGT(Protagonist,9,CHR)
CheckStatLT(Protagonist,13,CHR)
PartyGoldGT(20)
~ THEN REPLY #7319 /* ~"Okay, okay. Hier hast du einundzwanzig Kupfermünzen."~ */ DO ~TakePartyGold(21)
~ GOTO 25
  IF ~  CheckStatGT(Protagonist,12,CHR)
PartyGoldGT(8)
~ THEN REPLY #7320 /* ~"Okay, okay. Hier hast du neun Kupfermünzen."~ */ DO ~TakePartyGold(9)
~ GOTO 25
  IF ~  CheckStatLT(Protagonist,10,CHR)
PartyGoldLT(30)
~ THEN REPLY #7321 /* ~"Hmmm. Soviel hab' ich nicht. Ich hätte aber noch ein paar andere Fragen..."~ */ GOTO 13
  IF ~  CheckStatGT(Protagonist,9,CHR)
CheckStatLT(Protagonist,13,CHR)
PartyGoldLT(21)
~ THEN REPLY #7322 /* ~"Hmmm. Soviel hab' ich nicht. Ich hätte aber noch ein paar andere Fragen..."~ */ GOTO 13
  IF ~  CheckStatGT(Protagonist,12,CHR)
PartyGoldLT(9)
~ THEN REPLY #7323 /* ~"Hmmm. Soviel hab' ich nicht. Ich hätte aber noch ein paar andere Fragen..."~ */ GOTO 13
  IF ~~ THEN REPLY #7324 /* ~"Dann vergiß es... Ich hätte aber noch ein paar Fragen..."~ */ GOTO 13
  IF ~  Global("Morte_Harlot_Quip_1","GLOBAL",0)
NearbyDialog("DMorte")
~ THEN REPLY #7325 /* ~"Schon gut. Leb wohl."~ */ DO ~SetGlobal("Morte_Harlot_Quip_1","GLOBAL",0)
~ EXTERN ~DMORTE~ 38
  IF ~  Global("Morte_Harlot_Quip_1","GLOBAL",0)
!NearbyDialog("DMorte")
~ THEN REPLY #7326 /* ~"Macht nichts. Auf bald."~ */ EXIT
  IF ~  Global("Morte_Harlot_Quip_1","GLOBAL",1)
~ THEN REPLY #7327 /* ~"Schon gut. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 25 // from: 24.0 24.1 24.2
  SAY #1841 /* ~Sie schaut deine Münzen prüfend an, zuckt mit den Schultern und steckt sie ein. "Was willst du über den alten Pharod wissen?"~ */
  IF ~~ THEN REPLY #7328 /* ~"Bei *dem* Preis alles, was du mir über ihn erzählen kannst."~ */ GOTO 26
  IF ~~ THEN REPLY #7329 /* ~"Was kannst du mir über ihn erzählen?"~ */ GOTO 26
  IF ~~ THEN REPLY #7330 /* ~"Dann vergiß es... Ich hätte aber noch ein paar Fragen..."~ */ GOTO 13
  IF ~  Global("Morte_Harlot_Quip_1","GLOBAL",0)
NearbyDialog("DMorte")
~ THEN REPLY #7331 /* ~"Macht nichts. Auf bald."~ */ DO ~SetGlobal("Morte_Harlot_Quip_1","GLOBAL",0)
~ EXTERN ~DMORTE~ 38
  IF ~  Global("Morte_Harlot_Quip_1","GLOBAL",0)
!NearbyDialog("DMorte")
~ THEN REPLY #7332 /* ~"Macht nichts. Auf bald."~ */ EXIT
  IF ~  Global("Morte_Harlot_Quip_1","GLOBAL",1)
~ THEN REPLY #7333 /* ~"Macht nichts. Auf bald."~ */ EXIT
END

IF ~~ THEN BEGIN 26 // from: 25.0 25.1
  SAY #1842 /* ~Sie zuckt mit den Schultern. "Man sagt, daß er ein Sammler-Boss sei. Er hat eine ganze Menge Typen in seinem Gefolge."~ */
  IF ~  Global("Harlot_Reveals_Pharod","GLOBAL",0)
~ THEN REPLY #7334 /* ~"Wo kann ich ihn finden?"~ */ DO ~SetGlobal("Harlot_Reveals_Pharod","GLOBAL",1)
AddexperienceParty(250)
~ GOTO 27
  IF ~  Global("Harlot_Reveals_Pharod","GLOBAL",1)
~ THEN REPLY #7335 /* ~"Wo kann ich ihn finden?"~ */ GOTO 27
  IF ~~ THEN REPLY #7336 /* ~"Vergiß Pharod... Ich hätte noch ein paar andere Fragen..."~ */ GOTO 13
  IF ~  Global("Morte_Harlot_Quip_1","GLOBAL",0)
NearbyDialog("DMorte")
~ THEN REPLY #7337 /* ~"Macht nichts. Auf bald."~ */ DO ~SetGlobal("Morte_Harlot_Quip_1","GLOBAL",0)
~ EXTERN ~DMORTE~ 38
  IF ~  Global("Morte_Harlot_Quip_1","GLOBAL",0)
!NearbyDialog("DMorte")
~ THEN REPLY #7338 /* ~"Macht nichts. Auf bald."~ */ EXIT
  IF ~  Global("Morte_Harlot_Quip_1","GLOBAL",1)
~ THEN REPLY #7339 /* ~"Macht nichts. Auf bald."~ */ EXIT
END

IF ~~ THEN BEGIN 27 // from: 26.0 26.1
  SAY #1843 /* ~"Naja, keiner weiß das so ganz genau, aber wenn *ich* einen Ort nennen sollte, mein Lieber, würde ich sagen Lumpensammler Platz."~ */
  IF ~~ THEN REPLY #7340 /* ~"Lumpensammler-Platz?"~ */ GOTO 28
  IF ~~ THEN REPLY #7341 /* ~"Ich verstehe... Ich hätte aber noch ein paar Fragen..."~ */ GOTO 13
  IF ~  Global("Morte_Harlot_Quip_1","GLOBAL",0)
NearbyDialog("DMorte")
~ THEN REPLY #7342 /* ~"Vielen Dank für die Informationen. Auf bald."~ */ DO ~SetGlobal("Morte_Harlot_Quip_1","GLOBAL",0)
~ EXTERN ~DMORTE~ 38
  IF ~  Global("Morte_Harlot_Quip_1","GLOBAL",0)
!NearbyDialog("DMorte")
~ THEN REPLY #7343 /* ~"Vielen Dank für die Informationen. Auf bald."
~ */ EXIT
  IF ~  Global("Morte_Harlot_Quip_1","GLOBAL",1)
~ THEN REPLY #7344 /* ~"Vielen Dank für die Informationen. Auf bald."~ */ EXIT
END

IF ~~ THEN BEGIN 28 // from: 27.0
  SAY #1848 /* ~"Ja, ein riesiger, alter Haufen aus Lumpen und Müll drei Blocks westlich der Leichenhalle... alle Sammler richten sich dort ihre Absteige ein. Möglich, daß auch Pharod dort seine Absteige hat."~ */
  IF ~~ THEN REPLY #7345 /* ~Was ist denn ein Sammler?"~ */ GOTO 29
  IF ~~ THEN REPLY #7346 /* ~"Ich verstehe... Ich hätte aber noch ein paar Fragen..."~ */ GOTO 13
  IF ~  Global("Morte_Harlot_Quip_1","GLOBAL",0)
NearbyDialog("DMorte")
~ THEN REPLY #7347 /* ~"Vielen Dank für die Informationen. Auf bald."~ */ DO ~SetGlobal("Morte_Harlot_Quip_1","GLOBAL",0)
~ EXTERN ~DMORTE~ 38
  IF ~  Global("Morte_Harlot_Quip_1","GLOBAL",0)
!NearbyDialog("DMorte")
~ THEN REPLY #7348 /* ~"Vielen Dank für die Informationen. Auf bald."~ */ EXIT
  IF ~  Global("Morte_Harlot_Quip_1","GLOBAL",1)
~ THEN REPLY #7349 /* ~"Vielen Dank für die Informationen. Auf bald."~ */ EXIT
END

IF ~~ THEN BEGIN 29 // from: 28.0
  SAY #1849 /* ~"Weißt du... diese Schlucker, die für Klimper die Toten aufsammeln. Ein erbärmlicher Haufen."~ */
  IF ~~ THEN REPLY #7262 /* ~"Sie sammeln Leichen ein? Warum?"~ */ GOTO 30
  IF ~~ THEN REPLY #7395 /* ~"Ich verstehe... Ich hätte aber noch ein paar Fragen..."~ */ GOTO 13
  IF ~  Global("Morte_Harlot_Quip_1","GLOBAL",0)
NearbyDialog("DMorte")
~ THEN REPLY #7396 /* ~"Vielen Dank für die Informationen. Auf bald."~ */ DO ~SetGlobal("Morte_Harlot_Quip_1","GLOBAL",0)
~ EXTERN ~DMORTE~ 38
  IF ~  Global("Morte_Harlot_Quip_1","GLOBAL",0)
!NearbyDialog("DMorte")
~ THEN REPLY #7397 /* ~"Vielen Dank für die Informationen. Auf bald."~ */ EXIT
  IF ~  Global("Morte_Harlot_Quip_1","GLOBAL",1)
~ THEN REPLY #7398 /* ~"Vielen Dank für die Informationen. Auf bald."~ */ EXIT
END

IF ~~ THEN BEGIN 30 // from: 29.0
  SAY #1850 /* ~"Weil sie nicht das Aussehen haben, um meinen Job zu machen."~ */
  IF ~~ THEN REPLY #7399 /* ~"Ich verstehe... Ich hätte aber noch ein paar Fragen..."~ */ GOTO 13
  IF ~  Global("Morte_Harlot_Quip_1","GLOBAL",0)
NearbyDialog("DMorte")
~ THEN REPLY #7400 /* ~"Vielen Dank für die Informationen. Auf bald."~ */ DO ~SetGlobal("Morte_Harlot_Quip_1","GLOBAL",0)
~ EXTERN ~DMORTE~ 38
  IF ~  Global("Morte_Harlot_Quip_1","GLOBAL",0)
!NearbyDialog("DMorte")
~ THEN REPLY #7401 /* ~"Vielen Dank für die Informationen. Auf bald."~ */ EXIT
  IF ~  Global("Morte_Harlot_Quip_1","GLOBAL",1)
~ THEN REPLY #7402 /* ~"Vielen Dank für die Informationen. Auf bald."~ */ EXIT
END

IF ~~ THEN BEGIN 31 // from: 13.4
  SAY #1851 /* ~Sie deutet einen Halbkreis um ihr Herz herum an. "Diese klingengespickte Hexe! Groß und mächtig, Herrscherin dieser Stadt, schwebend und schweigend tötet sie jeden in ihrem Schatten. Sie kümmert sich um die Stadt, oh ja..." Sie faucht. "Und läßt die Lebenden darin *verrotten.*"~ */
  IF ~~ THEN REPLY #7457 /* ~"Schön... Ich hätte aber noch ein paar Fragen..."~ */ GOTO 13
  IF ~  Global("Morte_Harlot_Quip_1","GLOBAL",0)
NearbyDialog("DMorte")
~ THEN REPLY #7458 /* ~"Schon gut. Leb wohl."~ */ DO ~SetGlobal("Morte_Harlot_Quip_1","GLOBAL",0)
~ EXTERN ~DMORTE~ 38
  IF ~  Global("Morte_Harlot_Quip_1","GLOBAL",0)
!NearbyDialog("DMorte")
~ THEN REPLY #7459 /* ~"Schon gut. Leb wohl."~ */ EXIT
  IF ~  Global("Morte_Harlot_Quip_1","GLOBAL",1)
~ THEN REPLY #7460 /* ~"Schon gut. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 32 // from: 5.2 5.3 5.4
  SAY #1852 /* ~"Das ist alles, Schleifer."~ */
  IF ~~ THEN REPLY #7461 /* ~"Ich hätte da ein paar Fragen an dich. Nun... wo ich mich konzentrieren kann."~ */ GOTO 9
  IF ~  Global("Morte_Harlot_Quip_1","GLOBAL",0)
NearbyDialog("DMorte")
~ THEN REPLY #7462 /* ~"Danke. Leb wohl."~ */ DO ~SetGlobal("Morte_Harlot_Quip_1","GLOBAL",0)
~ EXTERN ~DMORTE~ 38
  IF ~  Global("Morte_Harlot_Quip_1","GLOBAL",0)
!NearbyDialog("DMorte")
~ THEN REPLY #7463 /* ~"Danke. Leb wohl."~ */ EXIT
  IF ~  Global("Morte_Harlot_Quip_1","GLOBAL",1)
~ THEN REPLY #7464 /* ~"Danke. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 33 // from: 9.1
  SAY #1853 /* ~"Für dich..." Sie beäugt dich kritisch. "Sieben Kupfermünzen, nicht mehr, nicht weniger. Andere Fragen, die tiefer gehen, kosten dich mehr."~ */
  IF ~  PartyGoldGT(6)
~ THEN REPLY #7465 /* ~"Klingt akzeptabel. Hier hast du sieben Kupfermünzen."~ */ DO ~TakePartyGold(7)
~ GOTO 12
  IF ~~ THEN REPLY #7466 /* ~"Ach, nichts."~ */ GOTO 11
END

IF ~~ THEN BEGIN 34 // from: 9.2
  SAY #1854 /* ~"Für einen hübschen Knochenbrecher wie dich..." Sie lächelt breit, so daß eine Reihe schwarzer Zähne sichtbar wird. "Drei Kupfermünzen sind genug, um meine Zunge zu lösen." Sie leckt sich die Lippen und runzelt die Stirn. "Andere Fragen, die tiefer gehen, kosten dich allerdings mehr."~ */
  IF ~  PartyGoldGT(2)
~ THEN REPLY #7467 /* ~"Klingt akzeptabel. Hier hast du drei Kupfermünzen."~ */ DO ~TakePartyGold(3)
~ GOTO 12
  IF ~~ THEN REPLY #7468 /* ~"Ach, nichts."~ */ GOTO 11
END

IF ~~ THEN BEGIN 35 // from:
  SAY #30536 /* ~Die Hure nutzt die Gelegenheit, um das Weite zu suchen.~ */
  IF ~~ THEN REPLY #30537 /* ~"Verdammt, Annah..."~ */ DO ~EscapeArea()
~ EXIT
END
