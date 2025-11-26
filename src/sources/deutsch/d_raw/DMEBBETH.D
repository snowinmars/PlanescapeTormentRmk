// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DMEBBETH.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\de_DE\dialog.tlk
// dialogF  : (none)

BEGIN ~DMEBBETH~
//////////////////////////////////////////////////
// WARNING: this file contains non-trivial WEIGHTs
//////////////////////////////////////////////////

IF WEIGHT #4 /* Triggers after states #: 2 87 88 123 even though they appear after this state */
~  Global("Mebbeth","GLOBAL",0)
~ THEN BEGIN 0 // from:
  SAY #1801 /* ~Diese gedrungene alte Frau sieht so aus, als sei sämtliche Farbe aus ihr herausgeblutet - alles, von ihren Haaren über ihr Schultertuch bis zu ihrer Kleidung ist grau in diversen Schattierungen. Die einzigen Farbflecken an ihr sind einige seltsame Kräuter, die sie an den Stengeln an ihren Gürtel gebunden hat. Die Kräuter machen bei jeder ihrer Bewegungen ein seltsames raschelndes Geräusch, wie ein Besen.~ */
  IF ~~ THEN REPLY #1802 /* ~"Sei gegrüßt."~ */ GOTO 1
  IF ~~ THEN REPLY #23159 /* ~Ignoriere die Frau, erkunde den Raum.~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #23160 /* ~Die alte Frau dreht sich um und starrt dich an... Und du bemerkst die grauen Schatten, die ihren Körper bedecken und auch vor ihren Gesichtszügen nicht Halt machen. Sie hat dünnes graues Haar und Augen wie Granitsplitter. Sie runzelt die Stirn, als sie dich sieht. "Wer bist du denn, hmmm?"~ */
  IF ~~ THEN REPLY #23161 /* ~"Ich bin ein Reisender."~ */ GOTO 3
  IF ~~ THEN REPLY #23162 /* ~"Ich weiß nicht wirklich, wer ich bin."~ */ GOTO 8
  IF ~  Global("Chaotic_Mebbeth_1","GLOBAL",0)
~ THEN REPLY #23163 /* ~Lüge: "Der Name ist Adahn. Wer bist du?"~ */ DO ~IncrementGlobal("Adahn","GLOBAL",1)
IncrementGlobalOnceEx("GLOBALChaotic_Mebbeth_1","GLOBALLaw",-1)
~ GOTO 9
  IF ~  Global("Chaotic_Mebbeth_1","GLOBAL",1)
~ THEN REPLY #23164 /* ~Lüge: "Der Name ist Adahn. Wer bist du?"~ */ GOTO 9
  IF ~~ THEN REPLY #23165 /* ~"Verzeih, daß ich dich gestört hab'. Leb wohl."~ */ EXIT
END

IF WEIGHT #3 /* Triggers after states #: 87 88 123 even though they appear after this state */
~  GlobalGT("Mebbeth","GLOBAL",0)
~ THEN BEGIN 2 // from:
  SAY #23166 /* ~Als du eintrittst, wirft Mebbeth dir einen skeptischen Blick zu. "Dein Weg führt dich hierher zurück, nicht wahr, Kind...?"~ */
  IF ~  Global("Mebbeth_Quest","GLOBAL",2)
~ THEN REPLY #23167 /* ~"Ich hab' den Obsthändler auf dem Markt gefunden."~ */ GOTO 58
  IF ~  Global("Mebbeth_Quest","GLOBAL",3)
~ THEN REPLY #23168 /* ~"Hier sind die Kräuter, die du wolltest... aber befrei mich zuerst mal von diesem Gestrüpp hier."~ */ GOTO 63
  IF ~  Global("Mebbeth_Quest","GLOBAL",5)
PartyHasItem("MebRags")
~ THEN REPLY #23169 /* ~"Hier ist deine Wäsche... ich muß allerdings sagen, Giscorl hat's ein wenig übertrieben mit den Waschgängen."~ */ DO ~SetGlobal("Mebbeth_Quest","GLOBAL",6)
DestroyPartyItem("MebRags",TRUE)
AddexperienceParty(500)
~ GOTO 73
  IF ~~ THEN REPLY #23170 /* ~"Ja, ich hätte ein paar Fragen an dich..."~ */ GOTO 17
  IF ~~ THEN REPLY #23171 /* ~"Ja, ich brauche Heilung."~ */ GOTO 12
  IF ~~ THEN REPLY #23172 /* ~"Ich wollte ein paar Heilmittel und Talismane bei dir kaufen..."~ */ DO ~StartStore("Mebbeth",Protagonist)
~ EXIT
  IF ~~ THEN REPLY #23173 /* ~"Könnte ich mich hier ausruhen?"~ */ GOTO 41
  IF ~~ THEN REPLY #23174 /* ~"Nein, ich wollte nur mal sehen, was du so treibst. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 1.0
  SAY #23175 /* ~"Ach ja? Und wohin bist du so gereist?"~ */
  IF ~~ THEN REPLY #23176 /* ~"Zum Reich des Todes und zurück, denk ich."~ */ GOTO 4
  IF ~~ THEN REPLY #23177 /* ~"Von der Leichenhalle über den Stock hierher."~ */ GOTO 5
  IF ~~ THEN REPLY #23178 /* ~"Ich war hier und da... an einigen Orten, ehrlich gesagt."~ */ GOTO 7
  IF ~~ THEN REPLY #23179 /* ~"Ist nicht wichtig. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 3.0
  SAY #23180 /* ~Die Frau spuckt einmal... zweimal... dreimal und beschreibt dann einen Halbkreis über ihrem Herz. "'Paß auf, was du sagst, Kind - und bete, daß sich keine der Todesmächte durch deine Worte beleidigt fühlt."~ */
  IF ~~ THEN REPLY #23181 /* ~"Ich... verstehe. Wer bist du?"~ */ GOTO 9
  IF ~~ THEN REPLY #23182 /* ~"Ich werd's mir merken. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 3.1
  SAY #23183 /* ~"Hah! Diese Bleichgesichter in der Leichenhalle sorgen sich bloß darum, daß die Totenbüchler auch am richtigen Platz liegen! Pah! Staubies und Idioten - alles ein und dasselbe." Das Gesicht der Frau wird plötzlich ausdruckslos und ihre Augen befinden sich jetzt an ihrem Hinterkopf.~ */
  IF ~~ THEN REPLY #23184 /* ~"Geht's dir nicht gut?"~ */ GOTO 6
  IF ~~ THEN REPLY #23185 /* ~"Äh... ich will dann mal nicht weiter stören. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 6 // from: 5.0
  SAY #23186 /* ~Die Frau fängt an, spöttisch vor sich hin zu murmeln. "Ich bin 'n Staubie. Ich will sterben, weil dieses Leben eine Täuschung ist." Ihre Augen schnellen wieder nach vorn zurück, und sie prustet los. "Staubies! Unwissende, ohne Verstand!" Sie zeigt mit dem Finger auf dich. " Laß dieses Leben hinter dir, Kind! Es gibt keinen, oder fast keinen Ort, für den Weg lohnt."~ */
  IF ~~ THEN REPLY #23187 /* ~"Ich... verstehe. Wer bist du?"~ */ GOTO 9
  IF ~~ THEN REPLY #23188 /* ~"Entschuldige, daß ich dich gestört hab'. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 7 // from: 3.2
  SAY #23189 /* ~"Ahhh..." Sie nickt. "Und trotz dem du so viel umherziehst, hast du dich doch entschlossen, an meine Tür zu klopfen, stimmt's?" Sie schnaubt. "Was für ein Glücksfall!"~ */
  IF ~~ THEN REPLY #23190 /* ~"Wer bist du?"~ */ GOTO 9
  IF ~~ THEN REPLY #23191 /* ~"Tut mir leid, daß ich dich gestört habe. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 8 // from: 1.1
  SAY #23192 /* ~"Also du kennst dich nicht, Kind?" Sie zwinkert und zeigt auf deine Brust. "Ganz schön schwer, den Menschen unter all dem Gekritzel und Narbenflechtwerk zu erkennen, hm?"~ */
  IF ~~ THEN REPLY #23193 /* ~"Vielleicht... wer bist du?"~ */ GOTO 9
  IF ~~ THEN REPLY #23194 /* ~"Ich muß jetzt gehen. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 9 // from: 1.2 1.3 4.0 6.0 7.0 8.0
  SAY #23195 /* ~Sie gackert listig und bewegt ihre Augenbrauen auf und ab. "Hast du noch nie was von der alten Mebbeth, der Hebamme vom Platz, gehört? Noch nie?" Sie kneift die Augen zusammen und senkt ihre Stimme. "Nun, jetzt hast du, denn *ich* bin Mebbeth."~ */
  IF ~~ THEN REPLY #23196 /* ~"Du bist eine Hebamme? Was tust du?"~ */ DO ~SetGlobal("Mebbeth","GLOBAL",1)
~ JOURNAL #22703 /* ~Ich habe eine alte Frau, Mebbeth, eine Hebamme, am Lumpensammler-Platz getroffen. Sie scheint etwas verwirrt zu sein... Aber da ist sie hier nicht die Einzige.~ */ GOTO 10
END

IF ~~ THEN BEGIN 10 // from: 9.0
  SAY #23197 /* ~"Ich richte Knochen wieder gerade, treibe den Kranken den Husten aus, hole kreischende störrische Kinder auf die Welt, flicke Mäntel und Lumpen, mische Heilmittel und Kräuter und dergleichen." Sie zwinkert dir zu und betrachtet dabei deine Narben. "Du brauchst doch bestimmt auch ein paar Mittelchen, hab' ich recht?"~ */
  IF ~~ THEN REPLY #23198 /* ~"Heilmittel?"~ */ GOTO 11
  IF ~~ THEN REPLY #23199 /* ~"Nein danke. Ich muß mich verabschieden. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 11 // from: 10.0
  SAY #23200 /* ~"Klar, du brauchst dringend ein paar Heilmittel. Du willst doch bestimmt eins kaufen, stimmt's...?" Sie wirft abermals einen Blick auf die Narben, die deinen Körper bedecken, und zuckt dann mit den Achseln. "Na ja, ist wahrscheinlich eh schon zu spät dafür."~ */
  IF ~  NumInParty(1)
~ THEN REPLY #23201 /* ~"Eigentlich könnte ich schon Heilung gebrauchen..."~ */ GOTO 12
  IF ~  NumInPartyGT(1)
~ THEN REPLY #23202 /* ~"Eigentlich könnten wir schon Heilung gebrauchen..."~ */ GOTO 12
  IF ~~ THEN REPLY #23203 /* ~"Ich brauch gerade keine Heilmittel, aber sie könnten später mal von Nutzen sein. Könnte ich sehen, was du so hast?"~ */ DO ~StartStore("Mebbeth",Protagonist)
~ EXIT
  IF ~~ THEN REPLY #23204 /* ~"Ich könnte, ehrlich gesagt, ein bißchen Ruhe gebrauchen. Würde es dich stören, wenn ich mich hier ein wenig aufs Ohr haue?"~ */ GOTO 41
  IF ~~ THEN REPLY #23205 /* ~"Im Moment nicht. Ich hätte eine Frage an dich..."~ */ GOTO 17
  IF ~~ THEN REPLY #23206 /* ~"Aha. Ich muß jetzt gehen. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 12 // from: 2.4 11.0 11.1 17.3 87.2 88.3
  SAY #23207 /* ~Mebbeth nickt. "In Ordnung." Sie greift nach ein paar der getrockneten Kräuter an ihrem Gürtel, reißt sie am Stengel ab und zerreibt sie dann in ihren schwieligen Händen. Kleine Wolken aus Staub und Pollen steigen von ihren Händen auf. Dann murmelt sie vor sich hin und bläst den Staub in die Luft...~ */
  IF ~  NumInParty(1)
~ THEN REPLY #23208 /* ~Atme tief ein.~ */ DO ~FullHeal(Protagonist)
FadeToColor([20.0],0)
Wait(1)
FadeFromColor([20.0],0)
~ JOURNAL #22704 /* ~Mebbeth hat mir angeboten, meine Wunden umsonst zu heilen... Es könnte eine gute Idee sein, ab und zu mal bei ihr vorbeizuschauen, wenn ich mal wieder geheilt werden muß.~ */ GOTO 13
  IF ~  NumInPartyGT(1)
~ THEN REPLY #23209 /* ~Atme tief ein.~ */ DO ~FullHeal(Player1)
FullHeal(Player2)
FullHeal(Player3)
FullHeal(Player4)
FullHeal(Player5)
FullHeal(Player6)
FadeToColor([20.0],0)
Wait(1)
FadeFromColor([20.0],0)
~ JOURNAL #22704 /* ~Mebbeth hat mir angeboten, meine Wunden umsonst zu heilen... Es könnte eine gute Idee sein, ab und zu mal bei ihr vorbeizuschauen, wenn ich mal wieder geheilt werden muß.~ */ GOTO 14
END

IF ~~ THEN BEGIN 13 // from: 12.0
  SAY #23210 /* ~Der graue Blütenstaub schwebt durch den Raum, und du atmest tief ein... Nur kurze Zeit später fühlst du dich wunderbar erholt.~ */
  IF ~~ THEN REPLY #23211 /* ~"Danke, Mebbeth. Bevor ich gehe hätte ich noch weitere Fragen an dich..."~ */ GOTO 17
  IF ~~ THEN REPLY #23212 /* ~"Danke, Mebbeth... jetzt geht's mir wieder gut. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 14 // from: 12.1
  SAY #23213 /* ~Der graue Blütenstaub schwebt durch den Raum und bedeckt dich und deine Gefährten. Du atmest tief ein... Nur kurze Zeit später fühlst du dich wunderbar erholt.~ */
  IF ~~ THEN REPLY #23214 /* ~"Danke, Mebbeth. Bevor ich gehe hätte ich noch weitere Fragen an dich..."~ */ GOTO 17
  IF ~~ THEN REPLY #23215 /* ~"Danke, Mebbeth... jetzt geht's mir wieder gut. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 15 // from:
  SAY #23216 /* ~"Willst du sonst noch irgendwas, Kind?"~ */
  IF ~~ THEN REPLY #23217 /* ~"Ehrlich gesagt, ja... könnte ich noch mal sehen, was du so hast?"~ */ DO ~StartStore("Mebbeth",Protagonist)
~ EXIT
  IF ~~ THEN REPLY #23218 /* ~"Nein, aber ich hätte noch ein paar Fragen an dich..."~ */ GOTO 17
  IF ~~ THEN REPLY #23219 /* ~"Nicht heute, Mebbeth... danke. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 16 // from: 17.4 88.4
  SAY #23220 /* ~"Ich verkaufe Lumpen, Kräuter, Heilmittel, Talismane, Mixturen, Breipackungen und jede Mengen Lotionen..." Sie zuckt mit den Achseln. "Wenn du mal etwas Sonderbares findest, mit dem du nichts anfangen kannst, dann bring es zu Mebbeth... Ich kann's dir nicht versprechen, Kind, aber vielleicht find ich raus, was es ist."~ */
  IF ~~ THEN REPLY #23221 /* ~"Ich verstehe. Kann ich mal sehen, was du so im Angebot hast?"~ */ DO ~StartStore("Mebbeth",Protagonist)
~ EXIT
  IF ~~ THEN REPLY #23222 /* ~"Na gut. Ich hätte da noch ein paar andere Fragen an dich..."~ */ GOTO 17
  IF ~~ THEN REPLY #23223 /* ~"Mehr wollt' ich gar nicht wissen. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 17 // from: 2.3 11.4 13.0 14.0 15.1 16.1 18.1 19.1 20.1 21.0 22.0 23.1 24.1 25.1 26.1 27.1 29.0 30.1 31.1 32.1 33.1 34.0 36.0 37.0 39.0 45.0 46.0 47.1 48.1 49.5 53.3 54.0 57.0 58.2 60.1 61.1 62.0 72.0 79.0 80.0 87.1 88.2
  SAY #23224 /* ~"Nur zu, dann frag."~ */
  IF ~  Global("Pharod","GLOBAL",0)
~ THEN REPLY #23225 /* ~"Kennst du jemanden namens Pharod?"~ */ GOTO 18
  IF ~  Global("Journal","GLOBAL",0)
~ THEN REPLY #23226 /* ~"Ich vermisse ein Journal. Weißt du, wo man eins finden könnte?"~ */ GOTO 22
  IF ~  GlobalGT("Know_Ravel","GLOBAL",0)
Global("Ravel","GLOBAL",0)
~ THEN REPLY #23227 /* ~"Mebbeth, hast du schon mal von jemandem namens 'Ravel' gehört?"~ */ GOTO 23
  IF ~~ THEN REPLY #23228 /* ~"Ich könnte ein wenig Heilung vertragen..."~ */ GOTO 12
  IF ~~ THEN REPLY #23229 /* ~"Was verkaufst du hier, Mebbeth?"~ */ GOTO 16
  IF ~~ THEN REPLY #23230 /* ~"Könnte ich ein paar Heilmittel bei dir kaufen?"~ */ DO ~StartStore("Mebbeth",Protagonist)
~ EXIT
  IF ~~ THEN REPLY #23231 /* ~"Könnte ich mich hier ausruhen?"~ */ GOTO 41
  IF ~  Global("Mebbeth_Quest","GLOBAL",2)
~ THEN REPLY #23232 /* ~"Ich hab' den Obsthändler auf dem Markt gefunden."~ */ GOTO 58
  IF ~  Global("Mebbeth_Quest","GLOBAL",3)
~ THEN REPLY #23233 /* ~"Hier sind die Kräuter, die du wolltest... aber befrei mich zuerst mal von diesem Gestrüpp hier."~ */ GOTO 63
  IF ~  Global("Mebbeth_Quest","GLOBAL",5)
PartyHasItem("MebRags")
~ THEN REPLY #23234 /* ~"Hier ist deine Wäsche... ich muß allerdings sagen, Giscorl hat's ein wenig übertrieben mit den Waschgängen."~ */ DO ~SetGlobal("Mebbeth_Quest","GLOBAL",6)
DestroyPartyItem("MebRags",TRUE)
AddexperienceParty(500)
~ GOTO 73
  IF ~  Global("Mebbeth_Quest","GLOBAL",8)
~ THEN REPLY #23235 /* ~"Ich habe Kossah-Jai gefunden. Sie hat keine Tinte, aber ein anderes Fischweib verkauft welche... die Sache ist die, ich brauche ein Gefäß für die Tinte."~ */ GOTO 80
  IF ~  Global("Mebbeth_Quest","GLOBAL",10)
PartyHasItem("TankardF")
~ THEN REPLY #23236 /* ~"Hier ist die Tinte, die du wolltest."~ */ DO ~SetGlobal("Mebbeth_Quest","GLOBAL",11)
AddexperienceParty(1000)
DestroyPartyItem("TankardF",TRUE)
~ GOTO 81
  IF ~  Global("Mebbeth_Teach","GLOBAL",0)
Global("Mebbeth_Art_Answer","GLOBAL",0)
~ THEN REPLY #23237 /* ~"Bist du eine Hexe, Mebbeth?"~ */ GOTO 47
  IF ~  GlobalGT("Mebbeth_Teach","GLOBAL",0)
Global("Mebbeth_Art_Answer","GLOBAL",0)
Global("Mage_Training","GLOBAL",0)
~ THEN REPLY #23238 /* ~"Ich möchte die 'Kunst' erlernen, Mebbeth."~ */ GOTO 49
  IF ~  GlobalGT("Mebbeth_Teach","GLOBAL",0)
GlobalGT("Mage_Training","GLOBAL",0)
!Class(Protagonist,MAGE)
~ THEN REPLY #23239 /* ~"Ich denke über einen Berufswechsel nach und will mich mehr auf meine Magierstudien konzentrieren, Mebbeth."~ */ GOTO 35
  IF ~~ THEN REPLY #23242 /* ~"Keine Fragen heute. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 18 // from: 17.0
  SAY #23243 /* ~"Pharod?! Dieser - dieser - pah!" Mebbeth spuckt, einmal... zweimal... dreimal und beschreibt dann einen Halbkreis über ihrem Herz. "Dieser Dreckskerl! Was hast du denn mit so einem wie dem zu schaffen?"~ */
  IF ~~ THEN REPLY #23244 /* ~"Ich muß ihn finden. Weißt du, wo er ist?"~ */ GOTO 19
  IF ~~ THEN REPLY #23245 /* ~"Unwichtig. Ich hätte da noch ein paar Fragen..."~ */ GOTO 17
  IF ~~ THEN REPLY #23246 /* ~"Nichts, gar nichts. Ich muß gehen. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 19 // from: 18.0
  SAY #23247 /* ~"Er ist jedenfalls nicht *am* Lumpensammler-Platz, soviel kann ich dir sagen... Du mußt einen Weg *unter* den Platz finden, um zu diesem Miesling zu gelangen." Sie spuckt wieder. "Selbst von ihm zu reden hinterläßt einen üblen Geschmack im Mund, und wie!"
~ */
  IF ~~ THEN REPLY #23248 /* ~"Er ist unter dem Platz?"~ */ GOTO 20
  IF ~~ THEN REPLY #23249 /* ~"Verstehe. Ich hätte da noch ein paar Fragen..."~ */ GOTO 17
  IF ~~ THEN REPLY #23250 /* ~"Mehr wollt' ich gar nicht wissen. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 20 // from: 19.0
  SAY #23251 /* ~Sie tippt mit dem Finger auf den Fußboden. "Ja, unter diesem Haufen Müll sind er und seine Jungs begraben. Du müßtest ganz schön schuften, um ihn aus seinem Versteck auszubuddeln." Sie schüttelt ihren Kopf. "Laß gut sein, laß gut sein, Kind."~ */
  IF ~~ THEN REPLY #23252 /* ~"Ich muß ihn finden. Wie komme ich dort hinunter?"~ */ JOURNAL #22705 /* ~Mebbeth hat mir erzählt, daß ein Tor irgendwo auf dem Platz zu Pharods Absteige führt. Sie sagte, ich solle einen der anderen Sammler fragen, wo ich es finden kann. ~ */ GOTO 21
  IF ~~ THEN REPLY #23253 /* ~"Verstehe. Ich hätte da noch ein paar Fragen..."~ */ GOTO 17
  IF ~~ THEN REPLY #23254 /* ~"Mehr wollt' ich gar nicht wissen. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 21 // from: 20.0
  SAY #23256 /* ~Mebbeth runzelt die Stirn und seufzt dann. "Hör zu, Pharod hat irgendwo hier auf dem Platz ein Tor, das zu seinem Versteck führt... Du brauchst es nur zu finden. Vielleicht willst du ein paar von den anderen fragen, Leute, die ein bißchen mehr rumkommen als die alte Mebbeth."~ */
  IF ~~ THEN REPLY #23257 /* ~"Ich verstehe. Ich hätte noch ein paar Fragen..."~ */ GOTO 17
  IF ~~ THEN REPLY #23258 /* ~"Das ist alles, was ich wissen wollte. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 22 // from: 17.1
  SAY #23259 /* ~Mebbeth überlegt. "Ich hab' keines gesehen. Wenn es auf dem Platz war - was ich bezweifle, weil die Leute nicht viel mit Büchern und dergleichen handeln - ist es höchstwahrscheinlich verkauft oder gestohlen worden. War es denn sehr wichtig für dich? Ein magisches Ding, das glüht und glitzert, was? Wenn dem so ist, wirst du es wohl nie wiedersehen."
~ */
  IF ~~ THEN REPLY #23260 /* ~"Vielleicht nicht. Ich hätte noch ein paar weitere Fragen..."~ */ GOTO 17
  IF ~~ THEN REPLY #23261 /* ~"Tja, ich glaube, ich werde es wohl nicht wiedersehen. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 23 // from: 17.2
  SAY #23262 /* ~"Pah!" Mebbeth zischt und beschreibt einen Halbkreis über ihrem Herz. "Von was für 'nem dummen Nichtswisser sprichst du denn da! Diesen Namen in *meiner* Gegenwart auszusprechen!" Sie droht dir mit dem Finger. "Unheil, Unheil, wer so was sagt, bringt Unheil ins Haus."~ */
  IF ~~ THEN REPLY #23263 /* ~"Was weißt du über sie?"~ */ GOTO 24
  IF ~~ THEN REPLY #23264 /* ~"Dann vergiß es. Ich hätte aber noch ein paar Fragen..."~ */ GOTO 17
  IF ~~ THEN REPLY #23265 /* ~"Verzeihung, ich wollte dich nicht beleidigen. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 24 // from: 23.0
  SAY #23266 /* ~"Ravel? Pah! Das sind doch Geschichten und Schauermärchen für Kinder." Ihre Stimme wird tiefer, als ob sie dich warnen will. "Hör zu, Kind: Hier war KEINE Ravel, überhaupt keine... Und selbst *wenn*, mußt du noch lange nicht alle im Käfig verrückt machen."~ */
  IF ~~ THEN REPLY #23267 /* ~"Du mußt mir alles sagen, was du über sie weißt, Mebbeth. Es ist wichtig."~ */ GOTO 25
  IF ~~ THEN REPLY #23268 /* ~"Dann vergiß es. Ich hätte aber noch ein paar Fragen..."~ */ GOTO 17
  IF ~~ THEN REPLY #23269 /* ~"Verzeihung, ich wollte dich nicht beleidigen. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 25 // from: 24.0
  SAY #23270 /* ~Mebbeths Miene verfinstert sich... Sie will anscheinend nicht deinem Blick begegnen. "Nichts Gutes... der Name verheißt nichts Gutes..." Sie schaut dich wieder an. "In Ravels seltsamen Hexenherzen tummeln sich viele böse und schreckliche Schatten. Die kreuchen und winden sich da wie Schlangen. Genug jetzt davon! Laß gut sein, laß gut sein!"~ */
  IF ~~ THEN REPLY #23271 /* ~"Weißt du, wo sie ist, Mebbeth? Ich muß sie finden."~ */ GOTO 26
  IF ~~ THEN REPLY #23272 /* ~"Dann vergiß es. Ich hätte aber noch ein paar Fragen..."~ */ GOTO 17
  IF ~~ THEN REPLY #23273 /* ~"Verzeihung, ich wollte dich nicht beleidigen. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 26 // from: 25.0
  SAY #23274 /* ~"Und wo wohnt der Froschkönig?! So was weiß Mebbeth nicht!" Sie zischt. "Und *selbst* wenn ich's wüßte, seh' ich so aus, als ob ich's dir sagen würde? Nee, du würdest versuchen, sie aufzutreiben, und daß kann ich nicht verantworten, kann ich nicht..." Es scheint, als ob ihr Herz gebrochen sei. "Doch, Kind... wenn du's unbedingt wissen mußt, wenn du absolut sicher bist, daß es dir keine ruhige Minute mehr läßt, dann... also dann sag ich's dir."~ */
  IF ~~ THEN REPLY #23275 /* ~"Bitte... ich muß sie finden, Mebbeth."~ */ JOURNAL #23278 /* ~Mebbeth hat vorgeschlagen, daß ich mit einem der Weisen in der Städtischen Festhalle im Bezirk der Kuratoren darüber spreche, wie ich den Eingang zu Ravels Irrgang finden kann.~ */ GOTO 27
  IF ~~ THEN REPLY #23276 /* ~"Dann vergiß es. Ich hätte aber noch ein paar Fragen..."~ */ GOTO 17
  IF ~~ THEN REPLY #23277 /* ~"So wichtig ist es dann auch wieder nicht. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 27 // from: 26.0
  SAY #23279 /* ~"Ravel..." Mebbeth seufzt. "Ravel, die grausame Ravel, ist in den Fängen der Dame, ja, in einem Gefängnis, einem Irrgang... Sie soll da schon sehr lange drin sein, sehr, sehr lange... Aber wie man da hinkommt? Mebbeth kennt den Weg nicht." Sie seufzt. "Frag in der Festhalle nach, vielleicht im Bezirk der Kuratoren. Einer der Graubärte hat vielleicht das Dunkel davon..."~ */
  IF ~~ THEN REPLY #23280 /* ~"Weißt du noch mehr über Ravel... etwas, was du mir sagen kannst, bevor ich sie suche?"~ */ GOTO 28
  IF ~~ THEN REPLY #23281 /* ~"Danke... dann werd ich mal sehen, was ich sonst noch herausfinden kann. Zuvor hätte ich noch ein paar Fragen..."~ */ GOTO 17
  IF ~~ THEN REPLY #23282 /* ~"Dann werde ich einen von ihnen fragen. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 28 // from: 27.0
  SAY #23283 /* ~"Kind..." Mebbeth spricht, doch ihre Stimme klingt müde und gebrochen. "...wenn du in den Ebenen Unheil suchst... dann brauchst du nicht weit zu gehen." Sie hustet. "Hexe kennt Hexe, Macht kennt Macht, doch *niemand* kennt sämtliche von Ravels Schlichen und Kniffen. Trainiere deine Fähigkeiten gut und paß auf, wenn dir etwas spanisch vorkommt. Vertraue auf dich, und trau ihr nicht, hörst du?"~ */
  IF ~~ THEN REPLY #23285 /* ~"Werd ich. Danke, Mebbeth."~ */ GOTO 29
END

IF ~~ THEN BEGIN 29 // from: 28.0
  SAY #23286 /* ~Mebbeth seufzt. "Ich wünsche niemandem etwas Schlechtes außer dieser einen da. Ich bin wirklich froh, daß Sie weg ist. Das ist auch besser für den Käfig. Ich sag's noch mal, Kind... Laß die Vergangenheit vor sich hin rotten. Laß sie ruhen, laß sie ruhen."~ */
  IF ~~ THEN REPLY #23287 /* ~"Ich werd mir deine Warnung zu Herzen nehmen. Ich hätte noch ein paar Fragen an dich..."~ */ GOTO 17
  IF ~~ THEN REPLY #23289 /* ~"Es tut mir leid, Mebbeth. Ich muß Ravel finden. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 30 // from:
  SAY #23290 /* ~"Wenn ich jetzt eine Geschichte erzählen sollte, vielleicht..." Mebbeth spricht langsam und wählt ihre Worte sorgfältig aus. "Vielleicht würde die Geschichte mit einer grauen *Schwester* beginnen, die in den Ebenen, auf den Feldern der Grauen Einöde lebte. Die Einöde war ein so ruhiger Ort, und es war die Stille, die Unzufriedenheit in Ravels Herz gesät hat.~ */
  IF ~~ THEN REPLY #23291 /* ~"Ja...?"~ */ GOTO 31
  IF ~~ THEN REPLY #23292 /* ~"Ich denke, ich habe genug gehört. Ich hätte noch ein paar andere Fragen..."~ */ GOTO 17
  IF ~~ THEN REPLY #23293 /* ~"Ich muß jetzt gehen. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 31 // from: 30.0
  SAY #23294 /* ~"Ständig muß nach dem *Warum*, dem *Wie* und dem *Was könnte sein* gefragt werden, ständig noch ein Schritt weiter auf dem Weg gegangen werden, auf dem man besser nicht reisen sollte." Mebbeth seufzt. "Und vielleicht..."~ */
  IF ~~ THEN REPLY #23295 /* ~"Und vielleicht...?"~ */ GOTO 32
  IF ~~ THEN REPLY #23296 /* ~"Ich denke, ich habe genug gehört. Ich hätte noch ein paar andere Fragen..."~ */ GOTO 17
  IF ~~ THEN REPLY #23297 /* ~"Ich muß jetzt gehen. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 32 // from: 31.0
  SAY #23298 /* ~"Und vielleicht kam Ravel mit ihrer ganzen Macht und ihrer Schläue und ihrer Grausamkeit, vielleicht kam sie in diese Stadt, diesen Käfig, in dem ein zu reges Treiben und Denken herrscht, denn die Leute dort streben nach Dingen, bloß um sie zu *kennen*."~ */
  IF ~~ THEN REPLY #23299 /* ~Hör zu.~ */ GOTO 33
  IF ~~ THEN REPLY #23300 /* ~"Ich denke, ich habe genug gehört. Ich hätte noch ein paar andere Fragen..."~ */ GOTO 17
  IF ~~ THEN REPLY #23301 /* ~"Ich muß jetzt gehen. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 33 // from: 32.0
  SAY #23302 /* ~"Aber das Kennen allein war für jemanden mit Ravels Macht nicht *genug*, und so kamen viele... sehr viele zu Schaden, und der Käfig, diese Stadt, erschütterte unter ihren Bedürfnissen. Die Schandtaten..." Sie beschreibt einen Halbkreis über ihrem Herz. "Die Schandtaten gehen auf Ravels Konto... Allein der Gedanke daran verschlägt mir die Sprache. Sie wurde verbannt und in einen Irrgang gesteckt..."~ */
  IF ~~ THEN REPLY #23303 /* ~Hör zu.~ */ GOTO 34
  IF ~~ THEN REPLY #23304 /* ~"Ich denke, ich habe genug gehört. Ich hätte noch ein paar andere Fragen..."~ */ GOTO 17
  IF ~~ THEN REPLY #23305 /* ~"Ich muß jetzt gehen. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 34 // from: 33.0
  SAY #23306 /* ~"Und vielleicht herrschte in diesem Irrgang dieselbe Stille wie in ihrer kleinen Hütte in der Grauen Einöde, und vielleicht gelang es dieser Stille in Ravels Geist vorzudringen, da sie nun nicht mehr unwillkommen war, und die grausame Ravel mit all ihren Schlichen und Kniffen war wieder mit sich im Reinen." Mebbeth seufzt. "Und vielleicht endet so Ravels Geschichte. Wer weiß?"~ */
  IF ~~ THEN REPLY #23307 /* ~"Ganz recht. Ich hätte noch ein paar andere Fragen..."~ */ DO ~SetGlobal("Story_Mebbeth_Ravel","GLOBAL",1)
~ JOURNAL #22706 /* ~Mebbeth hat mir Ravels Geschichte erzählt... sie sagte, sie sei eine Nachthexe in der Grauen Einöde gewesen, daß aber die Tristesse des Ortes Unzufriedenheit in Ravels Gemüt gesät habe. Ravel habe dann ihre Sachen gepackt und sei auf der Suche nach Wissen nach Sigil gekommen - aber was sie hier gelernt habe, verwende sie gegen die Stadt und die Einwohner selbst, und dies seien so böse Taten, daß Mebbeth sie gar nicht beschreiben könne. Ravel sei von der Dame bestraft und in einen Irrgang geschickt worden, wo die Stille des Ortes vielleicht ihr raffgieriges Herz beruhigt habe.~ */ GOTO 17
  IF ~~ THEN REPLY #23308 /* ~"Vielen Dank für die Geschichte, Mebbeth. Ich muß jetzt gehen. Leb wohl."~ */ DO ~SetGlobal("Story_Mebbeth_Ravel","GLOBAL",1)
~ JOURNAL #22706 /* ~Mebbeth hat mir Ravels Geschichte erzählt... sie sagte, sie sei eine Nachthexe in der Grauen Einöde gewesen, daß aber die Tristesse des Ortes Unzufriedenheit in Ravels Gemüt gesät habe. Ravel habe dann ihre Sachen gepackt und sei auf der Suche nach Wissen nach Sigil gekommen - aber was sie hier gelernt habe, verwende sie gegen die Stadt und die Einwohner selbst, und dies seien so böse Taten, daß Mebbeth sie gar nicht beschreiben könne. Ravel sei von der Dame bestraft und in einen Irrgang geschickt worden, wo die Stille des Ortes vielleicht ihr raffgieriges Herz beruhigt habe.~ */ EXIT
END

IF ~~ THEN BEGIN 35 // from: 17.14 49.0
  SAY #23311 /* ~"Oh, du bist wieder zurück, ja?" Mebbeth kichert trocken. "Nun gut, dann woll'n wir doch mal sehen, was du vergessen und was du behalten hast..."~ */
  IF ~~ THEN REPLY #23312 /* ~"Also gut..."~ */ DO ~FadeToColor([20.0],0)
Wait(3)
FadeFromColor([20.0],0)
SetNamelessClass(MAGE)
~ JOURNAL #23314 /* ~Mebbeth hat mir die Kunst beigebracht, so daß ich mich nun aufs Erlernen von Magie konzentriere... Ich muß einen Dieb oder Kampflehrer finden, wenn ich wieder zu einem der anderen Berufe zurückwechseln möchte.~ */ GOTO 36
END

IF ~~ THEN BEGIN 36 // from: 35.0
  SAY #23316 /* ~Mebbeth runzelt die Stirn und nickt dann. "Du hast dir die Lehren der Kunst gut genug eingeprägt, muß man sagen. Du konzentrierst dich nun voll auf die Zauberkünste - also kein Kämpfen und Stehlen mehr, es sei denn, du triffst auf jemanden, der dir so was beibringen kann."~ */
  IF ~~ THEN REPLY #23317 /* ~"Danke, Mebbeth. Ich hätte noch ein paar Fragen an dich..."~ */ GOTO 17
  IF ~~ THEN REPLY #23318 /* ~"Ich werd's mir merken. Leb wohl, Mebbeth."~ */ EXIT
END

IF ~~ THEN BEGIN 37 // from:
  SAY #23319 /* ~Mebbeth schüttelt den Kopf... ein bißchen traurig, so scheint es. "Ich hab' dir alles beigebracht, was ich weiß, Kind... Das Bißchen, was ich dir sonst noch erklären kann, wäre für jemanden wie dich nicht von Interesse. Ich bin stolz auf dich, ehrlich! Du hast wirklich das Zeug zu einem mächtigen Magier."~ */
  IF ~~ THEN REPLY #23320 /* ~"Danke, Mebbeth. Ich hätte noch ein paar andere Fragen an dich..."~ */ JOURNAL #23322 /* ~Sieht so aus, als gebe es nichts mehr, das Mebbeth mir über die Kunst beibringen könnte. Ich muß andere Lehrer finden, die noch mehr über Magie wissen.~ */ GOTO 17
  IF ~~ THEN REPLY #23321 /* ~"Ich hatte eine gute Lehrmeisterin. Leb wohl, Mebbeth."~ */ JOURNAL #23322 /* ~Sieht so aus, als gebe es nichts mehr, das Mebbeth mir über die Kunst beibringen könnte. Ich muß andere Lehrer finden, die noch mehr über Magie wissen.~ */ EXIT
END

IF ~~ THEN BEGIN 38 // from:
  SAY #23323 /* ~Mebbeth nimmt dich genau unter die Lupe. "Du willst also sehen, was ich dir sonst noch beibringen kann? Dann woll'n wir erst mal seh'n, ob du noch weißt, was ich dich schon gelehrt hab'... und ob du überhaupt noch Platz in deinen grauen Zellen dafür hast, Kind..."~ */
  IF ~~ THEN REPLY #23324 /* ~"Nun gut..."~ */ DO ~FadeToColor([20.0],0)
Wait(3)
FadeFromColor([20.0],0)
~ JOURNAL #23326 /* ~Mebbeth sagt, daß ich noch etwas mehr Erfahrungen sammeln muß, bevor sie mir mehr über die Kunst beibringen kann.~ */ GOTO 39
  IF ~~ THEN REPLY #23325 /* ~"Nun gut..."~ */ DO ~FadeToColor([20.0],0)
Wait(3)
FadeFromColor([20.0],0)
~ GOTO 40
END

IF ~~ THEN BEGIN 39 // from: 38.0
  SAY #23327 /* ~Mebbeth schüttelt den Kopf. "Du bist noch nicht soweit, Kind. Komm wieder, wenn du ein bißchen mehr über die Welt gelernt hast. Dann schau'n wir mal, ob ich dir nicht was Neues beibringen kann.~ */
  IF ~~ THEN REPLY #23328 /* ~"Also, in Ordnung. Ich hätte noch ein paar Fragen an dich, bevor ich gehe..."~ */ GOTO 17
  IF ~~ THEN REPLY #23330 /* ~"Ich komme zurück, wenn ich mehr Erfahrung habe. Leb wohl, Mebbeth."~ */ EXIT
END

IF ~~ THEN BEGIN 40 // from: 38.1
  SAY #23332 /* ~Mebbeth nickt. "Oh ja, du bist reifer geworden, du hast was gelernt, scheint mir. Es gibt da noch 'n paar Dinge, die ich dir beibringen kann, zum Beispiel... noch eins von meinen Rezepten..."~ */
  IF ~~ THEN REPLY #23333 /* ~Zauber 1: Einschüchtern~ */ EXIT
  IF ~~ THEN REPLY #23334 /* ~Zauber 2: Freunde~ */ EXIT
  IF ~~ THEN REPLY #23336 /* ~Zauber 3: Beruhigen~ */ EXIT
  IF ~~ THEN REPLY #23338 /* ~Zauber 4: Anfall~ */ EXIT
  IF ~~ THEN REPLY #23339 /* ~Zauber 5: Blutbrücke~ */ EXIT
  IF ~~ THEN REPLY #23341 /* ~Zauber 6: Hautreizung~ */ EXIT
END

IF ~~ THEN BEGIN 41 // from: 2.6 11.3 17.6 87.4 88.6
  SAY #23343 /* ~Sie nickt. "Selbstverständlich, Kind. Ich hab' 'ne ganze Menge Decken in der Ecke..."~ */
  IF ~  Global("Mebbeth_Dreams","GLOBAL",0)
Global("Player_Dream","GLOBAL",0)
~ THEN REPLY #23346 /* ~"Das wäre schön. Vielen Dank."~ */ DO ~FadeToColor([20.0],0)
Wait(1)
RestPartyEx(0,10,FALSE)
FadeFromColor([20.0],0)
~ EXIT
  IF ~  Global("Mebbeth_Dreams","GLOBAL",0)
Global("Player_Dream","GLOBAL",1)
~ THEN REPLY #23356 /* ~"Das wäre schön. Vielen Dank."~ */ DO ~FadeToColor([20.0],0)
Wait(1)
RestPartyEx(0,10,FALSE)
FadeFromColor([20.0],0)
~ EXIT
  IF ~  Global("Mebbeth_Dreams","GLOBAL",1)
~ THEN REPLY #23358 /* ~"Das wäre schön. Vielen Dank."~ */ DO ~FadeToColor([20.0],0)
Wait(1)
RestPartyEx(0,10,FALSE)
FadeFromColor([20.0],0)
~ EXIT
END

IF ~~ THEN BEGIN 42 // from:
  SAY #23360 /* ~Du wachst auf und fühlst dich gut erholt. Mebbeth pusselt vor der Hütte herum. Sie hält jedoch inne, als sie dich aufwachen hört. "Schon wach? Du hast geschlafen wie ein Toter..." Sie lächelt. "Weißt du noch was von deinen Träumen?"~ */
  IF ~~ THEN REPLY #23361 /* ~"Ach, weißt du... ich hatte überhaupt keine Träume."~ */ GOTO 43
END

IF ~~ THEN BEGIN 43 // from: 42.0
  SAY #23362 /* ~Mebbeth zuckt mit den Achseln. "Das ist nicht weiter schlimm. Die meisten Träume sind ziemlich scheu. Sie fliehen davon, wenn der Schlafende die Augen öffnet."~ */
  IF ~~ THEN REPLY #23363 /* ~"Nein, aber ich habe nicht das Gefühl, als ob ich sie vergessen hätte... ich glaube nicht, daß ich *irgendetwas* geträumt habe. Ich habe das Gefühl... als ob was nicht stimmt."~ */ GOTO 44
END

IF ~~ THEN BEGIN 44 // from: 43.0
  SAY #23364 /* ~Mebbeth denkt kurz darüber nach und zuckt dann mit den Achseln. "Träume können die Menschen groß machen, aber genau so viele haben durch sie große Enttäuschungen erlebt. Vielleicht ist es besser so, daß sie dir nicht im Kopf rumschwirren."~ */
  IF ~~ THEN REPLY #23365 /* ~"Vielleicht... aber ich glaube nicht."~ */ JOURNAL #23367 /* ~Als ich in Mebbeths Hütte war, bemerkte ich plötzlich, daß ich nicht träume. Ich habe nicht das Gefühl, daß ich meine Träume vergesse... Ich glaube einfach, daß ich *überhaupt* nicht träume. Irgend etwas ist daran... faul. Ich kümmere mich besser darum, wenn ich mal die Gelegenheit habe.~ */ GOTO 45
END

IF ~~ THEN BEGIN 45 // from: 44.0
  SAY #23369 /* ~Mebbeth schnaubt. "Nun, Träume hin oder her, ich bin niemand, der das Wesen eines Menschen ändern kann. Hast du genug geschlafen?"
~ */
  IF ~~ THEN REPLY #23413 /* ~"Ja, danke... ich hätte noch ein paar Fragen an dich..."~ */ GOTO 17
  IF ~~ THEN REPLY #23414 /* ~"Ja, denke schon. Ich mach mich mal lieber auf den Weg. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 46 // from:
  SAY #23415 /* ~Du wachst auf und fühlst dich gut erholt. Mebbeth pusselt vor der Hütte herum. Sie hält jedoch inne, als sie dich aufwachen hört. "Schon wach? Hast du gut geschlafen?"~ */
  IF ~~ THEN REPLY #23416 /* ~"Ja, danke... ich hätte noch ein paar Fragen an dich..."~ */ GOTO 17
  IF ~~ THEN REPLY #23417 /* ~"Ja, denke schon. Ich mach mich mal lieber auf den Weg. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 47 // from: 17.12
  SAY #23418 /* ~Mebbeth mustert dich. "Ich sag nichts darüber, was ich bin oder nicht bin, aber ist das, was du da wissen willst, so wichtig, daß du eine alte Frau belagerst und nach ein bißchen Klatsch lechzt?"~ */
  IF ~~ THEN REPLY #23419 /* ~"Ich möchte die Zauberkunst erlernen. Könntest du meine Lehrmeisterin sein?"~ */ GOTO 48
  IF ~~ THEN REPLY #23420 /* ~"Egal. Ich hätte noch ein paar andere Fragen..."~ */ GOTO 17
  IF ~~ THEN REPLY #23421 /* ~"Na, egal. Ich muß mich verabschieden. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 48 // from: 47.0
  SAY #23422 /* ~Mebbeth lacht. "Pah! Ich bin keine Lehrerin. Keine Lehrerin in der Schule könnte es mit denen in der großen Festhalle aufnehmen! Ich bin sicher, es gibt irgendwo noch andere, die dich das Dunkel wissen lassen können... du verschwendest nur deine Zeit mit der alten Mebbeth."~ */
  IF ~~ THEN REPLY #23423 /* ~"Das sehe ich anders. Ich denke, du könntest mich eine Menge lehren."~ */ DO ~SetGlobal("Mebbeth_Teach","GLOBAL",1)
~ GOTO 49
  IF ~~ THEN REPLY #23424 /* ~"Dann nicht. Ich hätte noch ein paar andere Fragen..."~ */ GOTO 17
  IF ~~ THEN REPLY #23425 /* ~"Ich muß jetzt gehen. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 49 // from: 17.13 48.0
  SAY #23426 /* ~Mebbeth sieht dich eindringlich an. "Oh, ja? *Warum* willst du so was lernen?"~ */
  IF ~  GlobalGT("Mage_Training","GLOBAL",0)
~ THEN REPLY #62022 /* ~"Ich war einmal ein Magier, aber ich habe mich vom Pfad der Kunst abgewendet. Ich würde gerne wieder auf ihn zurückkehren."~ */ GOTO 35
  IF ~  Global("Mage_Training","GLOBAL",0)
~ THEN REPLY #23427 /* ~Wahrheit: "Weil ich es eben wissen will."~ */ DO ~SetGlobal("Mebbeth_Art_Answer","GLOBAL",1)
~ GOTO 50
  IF ~  Global("Mage_Training","GLOBAL",0)
~ THEN REPLY #23428 /* ~Wahrheit: "Weil ich sie gebrauchen könnte um herauszufinden, wer ich bin."~ */ DO ~SetGlobal("Mebbeth_Art_Answer","GLOBAL",2)
~ GOTO 51
  IF ~  Global("Mage_Training","GLOBAL",0)
~ THEN REPLY #23429 /* ~Wahrheit: "Weil ich Macht brauche."~ */ DO ~SetGlobal("Mebbeth_Art_Answer","GLOBAL",3)
IncrementGlobalOnceEx("GLOBALEvil_Mebbeth_1","GLOBALGood",-1)
~ GOTO 52
  IF ~  Global("Mage_Training","GLOBAL",0)
~ THEN REPLY #23431 /* ~"Ich habe meine Gründe."~ */ GOTO 53
  IF ~~ THEN REPLY #23432 /* ~"Egal. Ich hätte noch ein paar andere Fragen..."~ */ GOTO 17
  IF ~~ THEN REPLY #23433 /* ~"Na, egal... ich muß mich verabschieden. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 50 // from: 49.1 53.0
  SAY #23430 /* ~Mebbeth spottet. "Das ist keine Kindergrammatik und kein Gesetzeswerk... das ist die *Kunst,* Kind. Ich werde dich in ihr unterrichten, aber dafür mußt du einen kühlen Kopf bewahren."~ */
  IF ~~ THEN REPLY #23435 /* ~"Ich verstehe. Wirst du mich unterweisen?"~ */ GOTO 55
END

IF ~~ THEN BEGIN 51 // from: 49.2 53.1
  SAY #23438 /* ~Einen Augenblick später nickt, Mebbeth. "Die Kunst kann helfen oder auch nicht, und du darfst dich nicht auf sie verlassen, um all deine Probleme zu lösen." Sie seufzt. "Kind, meistens erhöht sich dein Berg von Fragen noch um eine weitere Frage..."~ */
  IF ~~ THEN REPLY #23439 /* ~"Ich verstehe. Wirst du mich unterweisen?"~ */ GOTO 55
END

IF ~~ THEN BEGIN 52 // from: 49.3 53.2
  SAY #23442 /* ~"Pah! Ein vermessener Wunsch, denn die Leiter der Kunst wird dich immer daran erinnern, daß es über dir noch eine Sprosse gibt und das auch eine ganze Menge Leute und Dinge auf dieser Sprosse stehen. Es wird immer welche geben, die besser sind, und die werden *dir* etwas beibringen, wenn du all zu sehr darum bittest."~ */
  IF ~~ THEN REPLY #23443 /* ~"Ich verstehe. Wirst du mich trotzdem unterweisen?"~ */ GOTO 55
END

IF ~~ THEN BEGIN 53 // from: 49.4
  SAY #23446 /* ~"Ist das so? Nun, wenn du deine Gründe hast, dann behalte ich eben mein *Wissen* für mich. Ich unterrichte niemand, der sich dem Lehrer verschließt... Dieser Weg bringt nur Unheil mit sich."~ */
  IF ~~ THEN REPLY #23447 /* ~Wahrheit: "Also gut, ich möchte die 'Kunst' erlernen, weil ich sie kennen möchte."~ */ DO ~SetGlobal("Mebbeth_Art_Answer","GLOBAL",1)
~ GOTO 50
  IF ~~ THEN REPLY #23448 /* ~Wahrheit: "Ich möchte die 'Kunst' erlernen, weil ich sie gebrauchen könnte um herauszufinden, wer ich bin."~ */ DO ~SetGlobal("Mebbeth_Art_Answer","GLOBAL",2)
~ GOTO 51
  IF ~~ THEN REPLY #23449 /* ~Wahrheit: "Ich möchte die 'Kunst' erlernen, weil ich Macht brauche."~ */ DO ~SetGlobal("Mebbeth_Art_Answer","GLOBAL",3)
IncrementGlobalOnceEx("GLOBALEvil_Mebbeth_1","GLOBALGood",-1)
~ GOTO 52
  IF ~~ THEN REPLY #23450 /* ~"Egal. Ich hätte noch ein paar andere Fragen..."~ */ GOTO 17
  IF ~~ THEN REPLY #23451 /* ~"Naja, egal. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 54 // from: 59.0
  SAY #23452 /* ~"Ja, nun..." Sie rümpft die Nase. "Wenn du immer noch was lernen willst, dann mußt du noch einen Auftrag erfüllen. Beim letzten Mal hab' ich vergessen, dir zu sagen, daß du noch etwas für mich erledigen sollst. Geh zurück zum Handelsplatz... und such den Stoffhändler Giscorl. Er hat noch Lumpen von mir, die er eigentlich waschen sollte, und es ist schon lang' her, daß ich ihn darum gebeten hab'."~ */
  IF ~~ THEN REPLY #23453 /* ~"Ich... verstehe. Schau, ich hätte da ein paar Fragen an dich..."~ */ GOTO 17
  IF ~~ THEN REPLY #23454 /* ~"Das hättest du mir auch *sagen* können, bevor ich losgegangen bin... also gut, ich bin bald wieder da."~ */ EXIT
  IF ~~ THEN REPLY #23455 /* ~"Ich hol sie. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 55 // from: 50.0 51.0 52.0
  SAY #23456 /* ~"Pah!" Mebbeth schüttelt den Kopf." Man sollte besser Lieder schreiben als zu zaubern. Lieder sind etwas Schöneres. Die Zauberei ist zu etwas Dummem und Gewöhnlichem geworden. Ihr Ruf wurde durch das Pack geschmälert, das sich von ihr hatte täuschen lassen... hmpppph." Sie zwinkert dir zu. "Ich werde dich unterrichten... aber vorher mußt du *mir* noch einen Gefallen tun, hörst du?"~ */
  IF ~~ THEN REPLY #23457 /* ~"Zum Beispiel?"~ */ GOTO 56
END

IF ~~ THEN BEGIN 56 // from: 55.0
  SAY #23458 /* ~"Meine Beine tragen mich nicht mehr quer durch Sigil, und es gibt da etwas, daß du für mich von dort *besorgen* könntest. Ich brauche ein paar Kräuter vom Markt... und zwar - östlich und südlich von hier, auf den Mittelpunkt des Rings zu - auf dem Markt vom Stock. Hier hast du eine Probe..." Sie holt einen schwarzen Samen aus ihrem Mantel hervor und schnippst ihn dir mit den Fingern zu.~ */
  IF ~~ THEN REPLY #23459 /* ~Untersuche den Samen.~ */ DO ~GiveItemCreate("BSeed1",Protagonist,1,0,0)
SetGlobal("Mebbeth_Quest","GLOBAL",1)
~ JOURNAL #22700 /* ~Mebbeth hat mich gebeten, einen seltsamen schwarzen Samen zu einem der Obsthändler auf dem Stockmarkt mitzunehmen und einige Kräuter von ihm zu holen. Sie sagte, daß der Markt südöstlich von ihrer Hütte liege.~ */ GOTO 57
END

IF ~~ THEN BEGIN 57 // from: 56.0
  SAY #23460 /* ~Du drehst den schwarzen Samen in deiner Hand... dabei spürst du plötzlich ein kurzes Stechen, und dann quillt ein kleiner Blutstropfen aus deinem Daumen hervor... der Samen hat kleine Stacheln, wie Zähne. Mebbeth schnaubt. "Sei vorsichtig damit... zeig es einem der Obsthändler auf dem Markt. Die wissen schon, welche Kräuter du suchst."~ */
  IF ~~ THEN REPLY #23461 /* ~"In Ordnung. Aber ich hab' ein paar Fragen, bevor ich gehe..."~ */ GOTO 17
  IF ~~ THEN REPLY #23462 /* ~"Also gut. Ich komme wieder, wenn ich die Kräuter habe."~ */ EXIT
END

IF ~~ THEN BEGIN 58 // from: 2.0 17.7
  SAY #23463 /* ~"Ja? Hast du die Kräuter bekommen, die ich haben wollte?"~ */
  IF ~  !Dead("MFTree")
Global("Mebbeth_Quest","GLOBAL",2)
~ THEN REPLY #23464 /* ~"Noch nicht, Mebbeth. Er meinte, er könne mir nicht helfen... und daß ich einen Gärtner finden müsse."~ */ GOTO 60
  IF ~  Dead("MFTree")
Global("Mebbeth_Quest","GLOBAL",2)
~ THEN REPLY #23465 /* ~"Noch nicht, Mebbeth. Er meinte, er könne mir nicht helfen... und daß ich einen Gärtner finden müsse."~ */ GOTO 59
  IF ~~ THEN REPLY #23466 /* ~"Nein, aber ich hätte noch ein paar andere Fragen..."~ */ GOTO 17
  IF ~~ THEN REPLY #23467 /* ~"Ich arbeite noch dran. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 59 // from: 58.1
  SAY #23468 /* ~Mebbeth seufzt. "Nichts zu machen, fürcht ich." Sie grunzt. "Also, egal, Kind, egal. Ich schau mal, ob ich einen von meinen alten Samen zum Keimen kriege, auch wenn das ganz schön dauern wird. Ich glaub, ich hab' noch ein paar übrig..."~ */
  IF ~~ THEN REPLY #23469 /* ~"Nun gut..."~ */ DO ~SetGlobal("Mebbeth_Quest","GLOBAL",4)
SetGlobal("Mebbeth_Fail","GLOBAL",1)
~ JOURNAL #23471 /* ~Mebbeth möchte, daß ich ihre Wäsche vom Stoffverkäufer auf dem Markt hole, einem Typ namens Giscorl. Ich wünschte, sie hätte daran gedacht, bevor ich wegen ihrer Kräuter dorthin gegangen bin...~ */ GOTO 54
END

IF ~~ THEN BEGIN 60 // from: 58.0
  SAY #23472 /* ~Mebbeth grunzt. "Faulpelze... früher kamen die Leute mit Zutaten, nicht mit faulen Ausreden..."~ */
  IF ~~ THEN REPLY #23473 /* ~"Also was sollte getan werden?"~ */ GOTO 61
  IF ~~ THEN REPLY #23474 /* ~"Wahrscheinlich. Abgesehen davon, ich hätte noch ein paar Fragen..."~ */ GOTO 17
  IF ~~ THEN REPLY #23475 /* ~"Gut, dann werd ich also noch ein wenig weiter suchen. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 61 // from: 60.0
  SAY #23476 /* ~Mebbeth seufzt. "Du suchst nach einem Gärtner, vermute ich." Sie beißt sich auf die Lippe.~ */
  IF ~~ THEN REPLY #23477 /* ~"Wo?"~ */ GOTO 62
  IF ~~ THEN REPLY #23478 /* ~"Also gut. Ach, ich hätte auch noch ein paar Fragen..."~ */ GOTO 17
  IF ~~ THEN REPLY #23479 /* ~"Dann werd ich noch ein wenig weiter suchen. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 62 // from: 61.0
  SAY #23480 /* ~Mebbeth runzelt die Stirn. "Ich bin schon ewig nicht mehr aus meiner Hütte rausgekommen, Kind. Ich hab' keine Ahnung, wo man hier einen Gärtner finden könnte... aber wenn du die Kunst lernen willst, mußt du auch Ausdauer lernen. Also *schau*: Irgendwo im Stock muß es einen geben.."~ */
  IF ~~ THEN REPLY #23481 /* ~"Wie du meinst... aber bevor ich gehe, würde ich dir gern noch ein paar Fragen stellen."~ */ GOTO 17
  IF ~  Global("Mourns","GLOBAL",0)
~ THEN REPLY #23482 /* ~"Dann werd ich mal einen suchen."~ */ EXIT
  IF ~  GlobalGT("Mourns","GLOBAL",0)
~ THEN REPLY #23483 /* ~"Vielleicht kann mir ja 'Der um die Bäume trauert' helfen... Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 63 // from: 2.1 17.8
  SAY #23484 /* ~"Stimmt das?" Mebbeth schaut sich die Stacheln an deinem Handgelenk an. "Wenn ja, dann *denk* sie dir weg."~ */
  IF ~~ THEN REPLY #23485 /* ~Tu es.~ */ DO ~SetGlobal("Mebbeth_Quest","GLOBAL",4)
GiveExperience(Protagonist,500)
~ JOURNAL #23487 /* ~Mebbeth möchte, daß ich ihre Wäsche vom Stoffverkäufer auf dem Markt hole, einem Typ namens Giscorl. Ich wünschte, sie hätte daran gedacht, bevor ich wegen ihrer Kräuter dorthin gegangen bin... ~ */ GOTO 64
END

IF ~~ THEN BEGIN 64 // from: 63.0
  SAY #23486 /* ~Ächzend und knackend lösen sich die schwarzen stacheligen Zweige von deinem Handgelenk und bilden ein Knäuel. Es sieht wie ein Nest mit toten schwarzen Schlangen aus. Mebbeth schnaubt. "Wünsch dir, daß es ein Bilderrahmen oder so was Ähnliches wird, etwas mit mehr Struktur und weniger Winkeln."~ */
  IF ~  CheckStatLT(Protagonist,13,INT)
CheckStatLT(Protagonist,13,WIS)
~ THEN REPLY #23488 /* ~Versuch, dir den Stachelball in einen Bilderrahmen zu denken.~ */ GOTO 65
  IF ~  CheckStatGT(Protagonist,12,INT)
CheckStatLT(Protagonist,16,INT)
CheckStatLT(Protagonist,13,WIS)
~ THEN REPLY #23489 /* ~Denk dir den Stachelball in einen Bilderrahmen.~ */ DO ~GiveExperience(Protagonist,500)
~ GOTO 69
  IF ~  CheckStatGT(Protagonist,15,INT)
CheckStatLT(Protagonist,13,WIS)
~ THEN REPLY #23490 /* ~Konzentrier dich auf den Stachelball und denk ihn dir dann als Bilderrahmen.~ */ DO ~GiveExperience(Protagonist,750)
~ GOTO 70
  IF ~  CheckStatGT(Protagonist,12,WIS)
CheckStatLT(Protagonist,16,WIS)
~ THEN REPLY #23503 /* ~Denk dir den Stachelball in einen Bilderrahmen.~ */ DO ~GiveExperience(Protagonist,500)
~ GOTO 69
  IF ~  CheckStatGT(Protagonist,15,WIS)
~ THEN REPLY #23505 /* ~Konzentriere dich auf den Stachelball und denk' ihn dir dann als Bilderrahmen.~ */ DO ~GiveExperience(Protagonist,750)
~ GOTO 70
END

IF ~~ THEN BEGIN 65 // from: 64.0
  SAY #23535 /* ~Du konzentrierst dich einen Augenblick und versuchst in Gedanken einen Rahmen entstehen zu lassen... Da hörst du ein Ächzen und Knacken, das vom Knäuel kommt, und du öffnest deine Augen: Es hat sich in einen bizarren Würfel verwandelt, bei dem die Stacheln alle nach außen zeigen. Jeder, der den Würfel aufhöbe, würde sich daran die Hände zerschneiden.~ */
  IF ~~ THEN REPLY #23536 /* ~"Äh..."~ */ GOTO 66
END

IF ~~ THEN BEGIN 66 // from: 65.0
  SAY #23538 /* ~Mebbeth schnaubt. "Du versuchst es vielleicht besser noch mal."~ */
  IF ~~ THEN REPLY #23540 /* ~Atme tief ein, konzentrier dich und versuch es noch einmal.~ */ GOTO 67
END

IF ~~ THEN BEGIN 67 // from: 66.0
  SAY #23541 /* ~Das Zweigknäuel ächzt, die Zweige biegen und winden sich, bis sie einen groben Bildrahmen darstellen, der an jeder Seite zwei Handbreiten lang ist.~ */
  IF ~~ THEN REPLY #23542 /* ~"Nicht schlecht, was?"~ */ GOTO 68
END

IF ~~ THEN BEGIN 68 // from: 67.0
  SAY #23544 /* ~Mebbeth beäugt den Rahmen einen Moment lang kritisch und nickt dann. "Quadratisch genug." Sie hebt den Rahmen auf und betrachtet ihn eingehend. "Das reicht... das reicht."~ */
  IF ~~ THEN REPLY #23546 /* ~"Das ist alles? Dafür hast du das gebraucht?"~ */ GOTO 72
END

IF ~~ THEN BEGIN 69 // from: 64.1 64.3
  SAY #23548 /* ~Das Zweigknäuel ächzt, die Zweige biegen und winden sich, bis sie einen kleinen Bildrahmen darstellen, der an jeder Seite zwei Handbreiten lang ist. Fast unbewußt formst du den Rahmen mit deinen Gedanken so um, daß die Stacheln nach hinten zeigen, so daß er problemlos an eine Wand gehängt werden kann.~ */
  IF ~~ THEN REPLY #23549 /* ~"Nicht schlecht, was?"~ */ GOTO 71
END

IF ~~ THEN BEGIN 70 // from: 64.2 64.4
  SAY #23550 /* ~Das Zweigknäuel ächzt, die Zweige biegen und winden sich, bis sie einen kleinen Bildrahmen darstellen, der an jeder Seite zwei Handbreiten lang ist. Fast unbewußt formst du den Rahmen mit deinen Gedanken so um, daß die Stacheln nach hinten zeigen, so daß er problemlos an eine Wand gehängt werden kann.... Und als nachträglichen Einfall drehst du die übrigen Stacheln in das Innere des Rahmens, so daß er an den Kanten angefaßt werden kann.~ */
  IF ~~ THEN REPLY #23551 /* ~"Nicht schlecht, was?"~ */ GOTO 71
END

IF ~~ THEN BEGIN 71 // from: 69.0 70.0
  SAY #23552 /* ~Mebbeth starrt den Rahmen eine Weile an und gackert dann los. "Ha! Quadratisch genug ist er ja! Gute Arbeit , Kind, gute Arbeit." Sie hebt den Rahmen auf und beäugt ihn kritisch, "Das reicht vollkommen."~ */
  IF ~~ THEN REPLY #23553 /* ~"Das ist alles? Dafür hast du das gebraucht?"~ */ GOTO 72
END

IF ~~ THEN BEGIN 72 // from: 68.0 71.0
  SAY #23554 /* ~"Ja, nun, das ist genug..." Sie rümpft die Nase. "Ja, aber als du das letzte Mal gegangen bist, hab' ich vergessen zu sagen, daß du mir noch etwas besorgen müßtest, und dazu mußt du zurück zum Handelsplatz... Dort suchst du nach Giscorl, dem Stoffhändler. Er hat noch Lumpen von mir, die er eigentlich waschen sollte, und es ist schon lang' her, daß ich ihn darum gebeten hab'."~ */
  IF ~~ THEN REPLY #23556 /* ~"Ich... verstehe. Schau, ich hätte da ein paar Fragen an dich..."~ */ GOTO 17
  IF ~~ THEN REPLY #23558 /* ~"Das hättest du mir auch *sagen* können, bevor ich losgegangen bin... also gut, ich bin bald wieder da."~ */ EXIT
  IF ~~ THEN REPLY #23559 /* ~"Ich hol sie. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 73 // from: 2.2 17.9 87.0
  SAY #23561 /* ~Sie nimmt dir den Stapel gestärkter grüner Lumpen ab und überprüft sie kritisch. "Wenigstens reißen sie nicht." Sie seufzt. "Und knittern nicht."~ */
  IF ~~ THEN REPLY #23562 /* ~"Was war mit dem Stoffhändler Giscorl? Seine Hände waren voller Narben, und er schien sehr... langsam zu sein."~ */ GOTO 74
END

IF ~~ THEN BEGIN 74 // from: 73.0
  SAY #23563 /* ~Mebbeth dreht und wendet den Stoff immer noch in ihren Händen und tippt mit dem Finger darauf. "Nun ja, Kind, manchmal ist man Feuer und Flamme für die Kunst , und manchmal verbrennt man sich die Finger daran."~ */
  IF ~~ THEN REPLY #23564 /* ~"Ist ihm das passiert?"~ */ GOTO 75
END

IF ~~ THEN BEGIN 75 // from: 74.0
  SAY #23565 /* ~Mebbeth schnalzt mit der Zunge. "Vielleicht. Manche brauchen die Kunst wie die Luft zum Atmen. Sie ziehen umher mit spitzen Hüten und Stinkkraut-Pfeifen... Dann gibt's Möchtegern-Zauberer und Ebenen-Zigeuner und Weissager und Halbpropheten und Hebammen, die mit der Kunst herumspielen... Die haben's schwerer."~ */
  IF ~~ THEN REPLY #23567 /* ~"Und Giscorl war einer davon?"~ */ GOTO 76
END

IF ~~ THEN BEGIN 76 // from: 75.0
  SAY #23568 /* ~Mebbeth nickt. "Ja... sozusagen. In mancher Hinsicht hat er sich nicht verändert. Ganz der Gewohnheit und Ritualen verschrieben." Sie legt die steifen Lumpen auf den Boden. Dabei ist ein *dumpfer* Plumps zu hören. "Tja, da wär noch eine letzte Sache, die du für mich erledigen müßtest, Kind..."~ */
  IF ~~ THEN REPLY #23569 /* ~"Du solltest dir besser zweimal überlegen, bevor du mich wieder auf den Markt schickst, Mebbeth."~ */ GOTO 77
  IF ~~ THEN REPLY #23570 /* ~"Natürlich. Was brauchst du?"~ */ GOTO 79
END

IF ~~ THEN BEGIN 77 // from: 76.0
  SAY #23571 /* ~"Oh? Und wenn doch, Kind?!" Mebbeth baut sich vor dir auf, und starrt dich an. Selbst wenn sie sich ganz aufrichtet, reicht ihr Kopf kaum bis an deine Schultern.~ */
  IF ~~ THEN REPLY #23572 /* ~"Mebbeth, es ist reine Zeitverschwendung, wieder und wieder zum Markt zu trotten. Warum kannst du dir nicht früher überlegen, was du alles brauchst, anstatt mich dreimal in derselben Angelegenheit loszuschicken."~ */ GOTO 78
  IF ~~ THEN REPLY #23574 /* ~"Ich sage nur, daß du mir sicher nicht viel über Magie beibringen kannst, wenn du dir nicht mal vorher überlegen kannst, was du alles vom Markt brauchst."~ */ GOTO 78
  IF ~~ THEN REPLY #23575 /* ~"Naja, egal. Was brauchst du?"~ */ GOTO 79
END

IF ~~ THEN BEGIN 78 // from: 77.0 77.1
  SAY #23577 /* ~Mebbeth plustert sich auf. Ihr Gesicht wird rot wie eine Steckrübe. "Ach ja? So denkst du also darüber, ja? Wenn das so ist, dann geh! Ich verschwende doch nicht meine Zeit, um einem Dickkopf wie dir die Erleuchtung zu bringen!"~ */
  IF ~~ THEN REPLY #23578 /* ~"Nein, ich werd das für dich erledigen... aber sag mir: gibt es noch irgendetwas anderes, was ich für dich mitbringen soll, wenn ich schon mal dort bin?"~ */ GOTO 79
  IF ~~ THEN REPLY #23580 /* ~"Schon gut, schon gut. Ich hab's nicht so gemeint. Was brauchst du?"~ */ GOTO 79
  IF ~~ THEN REPLY #23581 /* ~"Gut, ich gehe. Leb wohl."~ */ DO ~SetGlobal("Mebbeth_Teach","GLOBAL",4)
SetGlobal("Mebbeth_Quest","GLOBAL",12)
~ EXIT
END

IF ~~ THEN BEGIN 79 // from: 76.1 77.2 78.0 78.1
  SAY #23583 /* ~"Nur noch dies: Ich brauch' etwas Tinte, um ein paar Zutaten in eines meiner Kochbücher zu schreiben. Du mußt ein bißchen von einem der Händler holen - Kossah-Jai, ist ihr Name."~ */
  IF ~~ THEN REPLY #23584 /* ~"Also gut. Ich werd sehen, ob ich sie finden kann. Zuvor hätte ich jedoch noch ein paar Fragen..."~ */ JOURNAL #23587 /* ~Mebbeth hat *noch* so einen vermaledeiten Auftrag für mich... Noch mal auf den Markt, diesmal, um Tinte zu holen. Sie sagt, ich soll mit einer Frau namens Kossah-Jai auf dem Marktplatz sprechen. Sie ist wahrscheinlich die einzige unter den Kaufleuten dort, mit der ich noch *nicht* gesprochen habe.~ */ GOTO 17
  IF ~~ THEN REPLY #23585 /* ~"Also gut... ich bin schon weg. Leb wohl."~ */ JOURNAL #23587 /* ~Mebbeth hat *noch* so einen vermaledeiten Auftrag für mich... Noch mal auf den Markt, diesmal, um Tinte zu holen. Sie sagt, ich soll mit einer Frau namens Kossah-Jai auf dem Marktplatz sprechen. Sie ist wahrscheinlich die einzige unter den Kaufleuten dort, mit der ich noch *nicht* gesprochen habe.~ */ EXIT
END

IF ~~ THEN BEGIN 80 // from: 17.10 88.0
  SAY #23589 /* ~"Kannst du nicht 'ne Tasse oder 'ne Schüssel oder 'nen Krug von einem der anderen Händler kriegen?"~ */
  IF ~~ THEN REPLY #23590 /* ~"Ich könnte einen der anderen Händler fragen, aber zuvor hätte ich noch ein paar andere Fragen an dich..."~ */ GOTO 17
  IF ~~ THEN REPLY #23592 /* ~"Tja, denke schon... also gut, ich bin schon weg. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 81 // from: 17.11 88.1
  SAY #23595 /* ~Mebbeth nimmt den Krug mit der Tinte von dir entgegen und riecht daran. "Materier-Tinte, schön frisch, ja..." Sie nickt dir zu. "Gut gemacht, Kind. Alles, was ich haben wollte. Jetzt frag ich noch mal: Willst du nach allem, was du gesehen hast, immer noch die Kunst erlernen?"~ */
  IF ~  CheckStatLT(Protagonist,14,INT)
CheckStatLT(Protagonist,14,WIS)
~ THEN REPLY #23596 /* ~"Nach allem, was ich gesehen habe? Was meinst du?"~ */ GOTO 85
  IF ~  CheckStatLT(Protagonist,14,INT)
CheckStatLT(Protagonist,14,WIS)
~ THEN REPLY #23597 /* ~"Ja."~ */ DO ~SetNamelessClass(MAGE)
SetGlobal("Mage_Training","GLOBAL",1)
~ GOTO 89
  IF ~  CheckStatGT(Protagonist,13,WIS)
CheckStatLT(Protagonist,14,INT)
~ THEN REPLY #23598 /* ~"Ja. Schließlich war es ja wohl das oberste Ziel meiner Botengänge, meine Ausdauer zu testen, oder etwa nicht?"~ */ GOTO 82
  IF ~  CheckStatGT(Protagonist,13,INT)
~ THEN REPLY #23600 /* ~"Ja. Schließlich war es ja wohl das oberste Ziel meiner Botengänge, meine Ausdauer zu testen, oder etwa nicht?"~ */ GOTO 82
  IF ~~ THEN REPLY #23601 /* ~"Nein, ich denke, daß die 'Kunst' nichts für mich ist. Leb wohl, Mebbeth."~ */ DO ~SetGlobal("Mebbeth_Teach","GLOBAL",4)
SetGlobal("Mebbeth_Quest","GLOBAL",12)
~ EXIT
END

IF ~~ THEN BEGIN 82 // from: 81.2 81.3
  SAY #23604 /* ~Mebbeth lächelt und nickt dann. "Ja... vielleicht, Kind, vielleicht."~ */
  IF ~~ THEN REPLY #23605 /* ~"Und damit nicht genug: du wußtest auch genau, an wen ich mich wenden müßte, um das Gewünschte zu erhalten, nicht wahr?"~ */ GOTO 83
  IF ~~ THEN REPLY #23607 /* ~"Gut. Ich will nach wie vor die 'Kunst' erlernen."~ */ DO ~SetNamelessClass(MAGE)
SetGlobal("Mage_Training","GLOBAL",1)
~ GOTO 89
END

IF ~~ THEN BEGIN 83 // from: 82.0
  SAY #23609 /* ~Mebbeth nickt abermals, langsamer diesmal. "Vielleicht, Kind, vielleicht... Und wenn, was sagt dir dein Verstand über sie?"~ */
  IF ~~ THEN REPLY #23611 /* ~"'Der um die Bäume trauert' hat mir gezeigt, daß ich durch meinen Glauben meine Umwelt ändern kann, Giscorl hat mich gelehrt, daß Rituale reine Kraftverschwendung sind, wenn das Ziel eines Rituals unbeachtet bleibt, und dank Meir'am weiß ich jetzt, daß ich immer noch von anderen lernen kann, egal, wieviel ich mir einbilde, selbst zu wissen."~ */ GOTO 84
END

IF ~~ THEN BEGIN 84 // from: 83.0
  SAY #23612 /* ~Mebbeth schweigt einen Augenblick, dann geht sie langsam auf dich zu und streicht dir über die Wange. "Oh, Kind..." Sie seufzt. "Du wirst eines Tages mal 'n Meistermagier, ehrlich. Du hast das Zeug dazu, und doch... fragst du die alte Mebbeth um Rat. Was könnte eine Hebamme einem wie dir beibringen?"~ */
  IF ~~ THEN REPLY #23613 /* ~"Viel, Mebbeth. Ich möchte alles lernen, was du mich lehren kannst."~ */ DO ~SetNamelessClass(MAGE)
SetGlobal("Mage_Training","GLOBAL",1)
GiveExperience(Protagonist,2000)
~ GOTO 89
END

IF ~~ THEN BEGIN 85 // from: 81.0
  SAY #23614 /* ~"Von allem, was du geseh'n hast... hast du was daraus gelernt?"~ */
  IF ~~ THEN REPLY #23615 /* ~"Ich habe gelernt, daß ich bereit sein muß, eine Menge Rennereien auf mich zu nehmen, wenn ich irgendwas aus dir herausbekommen will."~ */ GOTO 86
  IF ~~ THEN REPLY #23616 /* ~"Nun, einiges. Nichts, was man so richtig beim Namen nennen könnte... außer, daß ich die 'Kunst' erlernen möchte."~ */ DO ~SetNamelessClass(MAGE)
SetGlobal("Mage_Training","GLOBAL",1)
~ GOTO 89
END

IF ~~ THEN BEGIN 86 // from: 85.0
  SAY #23619 /* ~Mebbeth lacht. "Genau so ist das mit der Kunst, Kind, haargenau so. So manche Anstrengung mußt du in ihrem Namen auf dich nehmen, und einige davon scheinen völlig sinnlos zu sein. Willst du trotzdem noch etwas lernen?"~ */
  IF ~~ THEN REPLY #23621 /* ~"Ja."~ */ DO ~SetNamelessClass(MAGE)
SetGlobal("Mage_Training","GLOBAL",1)
~ GOTO 89
END

IF WEIGHT #2 /* Triggers after states #: 88 123 even though they appear after this state */
~  GlobalGT("Mebbeth","GLOBAL",0)
GlobalGT("Mebbeth_Quest","GLOBAL",3)
GlobalLT("Mebbeth_Quest","GLOBAL",6)
Global("Mebbeth_Fail","GLOBAL",0)
~ THEN BEGIN 87 // from:
  SAY #23623 /* ~Mebbeth scheint völlig darin versunken zu sein, den Bildrahmen aus schwarzen Zweigen, den du für sie gemacht hast, hin und her zu drehen... Sie strafft die Kanten und knipst einige der stacheligen Samen von den Zweigen ab. Plötzlich bemerkt sie dich und setzt den Rahmen ab. "Ja, Kind?"~ */
  IF ~  Global("Mebbeth_Quest","GLOBAL",5)
PartyHasItem("MebRags")
~ THEN REPLY #23624 /* ~"Hier ist deine Wäsche... ich muß allerdings sagen, Giscorl hat's ein wenig übertrieben mit den Waschgängen."~ */ DO ~SetGlobal("Mebbeth_Quest","GLOBAL",6)
DestroyPartyItem("MebRags",TRUE)
AddexperienceParty(500)
~ GOTO 73
  IF ~~ THEN REPLY #23626 /* ~"Ich hätte da ein paar Fragen..."~ */ GOTO 17
  IF ~~ THEN REPLY #23627 /* ~"Ich könnte ein wenig Heilung vertragen..."~ */ GOTO 12
  IF ~~ THEN REPLY #23628 /* ~"Könnte ich ein paar Heilmittel bei dir kaufen?"~ */ DO ~StartStore("Mebbeth",Protagonist)
~ EXIT
  IF ~~ THEN REPLY #23629 /* ~"Könnte ich mich hier ausruhen?"~ */ GOTO 41
  IF ~~ THEN REPLY #23630 /* ~"Keine Fragen heute. Leb wohl."~ */ EXIT
END

IF WEIGHT #1 /* Triggers after states #: 123 even though they appear after this state */
~  GlobalGT("Mebbeth","GLOBAL",0)
GlobalGT("Mebbeth_Quest","GLOBAL",5)
GlobalLT("Mebbeth_Quest","GLOBAL",11)
~ THEN BEGIN 88 // from:
  SAY #23632 /* ~Mebbeth zerrt an dem Haufen hellgrüner, gestärkter Lumpen, die du von Giscorl mitgebracht hast... Sie scheint die Ränder absichtlich auszufransen, so als ob sie sie irgendwie voneinander lösen will. Als sie dich kommen hört, dreht sie sich um. "Ja, Kind?"~ */
  IF ~  Global("Mebbeth_Quest","GLOBAL",8)
~ THEN REPLY #23633 /* ~"Ich habe Kossah-Jai gefunden. Sie hat keine Tinte, aber ein anderes Fischweib verkauft welche... die Sache ist die, ich brauche ein Gefäß für die Tinte."~ */ GOTO 80
  IF ~  Global("Mebbeth_Quest","GLOBAL",10)
PartyHasItem("TankardF")
~ THEN REPLY #23635 /* ~"Hier ist die Tinte, die du wolltest."~ */ DO ~SetGlobal("Mebbeth_Quest","GLOBAL",11)
DestroyPartyItem("TankardF",TRUE)
AddexperienceParty(1000)
~ GOTO 81
  IF ~~ THEN REPLY #23636 /* ~"Ich hätte da ein paar Fragen..."~ */ GOTO 17
  IF ~~ THEN REPLY #23638 /* ~"Ich könnte ein wenig Heilung vertragen..."~ */ GOTO 12
  IF ~~ THEN REPLY #23639 /* ~"Was verkaufst du hier, Mebbeth?"~ */ GOTO 16
  IF ~~ THEN REPLY #23641 /* ~"Könnte ich ein paar Heilmittel bei dir kaufen?"~ */ DO ~StartStore("Mebbeth",Protagonist)
~ EXIT
  IF ~~ THEN REPLY #23642 /* ~"Könnte ich mich hier ausruhen?"~ */ GOTO 41
  IF ~~ THEN REPLY #23643 /* ~"Nichts. Will nur mal sehen, was du so treibst."~ */ EXIT
END

IF ~~ THEN BEGIN 89 // from: 81.1 82.1 84.0 85.1 86.0
  SAY #23644 /* ~"Du willst also diesen Weg einschlagen..." Mebbeth hält kurz inne. "Nun, Regel Nummer eins: Nur Talent für die Kunst zu haben ist nicht genug. Du brauchst etwas, an dem du dich entlanghangeln kannst: für gewöhnlich 'Zaubersprüche'. Die Zaubersprüche stehen normalerweise in einem Buch. Für die Ausübung der Kunst brauchst du also ein Zauberbuch oder etwas Ähnliches. Kannst du lesen?"~ */
  IF ~~ THEN REPLY #23647 /* ~"Keine Ahnung."~ */ GOTO 90
  IF ~~ THEN REPLY #23648 /* ~"Ja."~ */ GOTO 90
END

IF ~~ THEN BEGIN 90 // from: 89.0 89.1
  SAY #23649 /* ~"Dann woll'n wir mal sehen. Kannst du das hier lesen?" Mebbeth zieht eine zerfledderte Karte hervor, die wie ein Rezept aussieht...~ */
  IF ~  CheckStatGT(Protagonist,13,INT)
~ THEN REPLY #23651 /* ~Untersuche das Rezept.~ */ DO ~PlaySoundNotRanged("SPTR_01")
~ GOTO 91
  IF ~  CheckStatLT(Protagonist,14,INT)
~ THEN REPLY #23652 /* ~Untersuche das Rezept.~ */ GOTO 92
END

IF ~~ THEN BEGIN 91 // from: 90.0
  SAY #23654 /* ~Die Schrift auf der Rezeptkarte verschwimmt vor deinen Augen. Jedes Symbol wird sofort unscharf, wenn du es lesen willst. Beinahe instinktiv entspannst du deine Augen und läßt sie die Seite als Ganzes betrachten... Da setzen sich die Symbole plötzlich zusammen: Das Rezept enthält Maßangaben, Zutaten... Es scheint eine leichte Sinnestäuschung zu sein.~ */
  IF ~~ THEN REPLY #23674 /* ~"Dies ist eine kleine Illusion, nicht wahr? Sieht aus wie ein Zauber, um andere einzuschüchtern... oder um ihnen Angst zu machen."~ */ GOTO 96
END

IF ~~ THEN BEGIN 92 // from: 90.1
  SAY #23675 /* ~"Da, kannst du das lesen?" Mebbeth zieht eine zerfledderte Karte hervor, die wie ein Rezept aussieht. Merkwürdigerweise verschwimmt die Schrift auf der Karte vor deinen Augen. Jedes Symbol wird sofort unscharf, wenn du es lesen willst.~ */
  IF ~~ THEN REPLY #23676 /* ~Untersuche die Symbole, sieh, ob du sie entziffern kannst.~ */ GOTO 93
  IF ~~ THEN REPLY #23677 /* ~"Ich geb's auch, Mebbeth... was bedeutet das Gekritzel?"~ */ DO ~PlaySoundNotRanged("SPTR_01")
~ GOTO 95
END

IF ~~ THEN BEGIN 93 // from: 92.0
  SAY #23678 /* ~Intensiv studierst du die Symbole. So sehr du dich auch konzentrierst, die Schrift auf der Rezeptkarte scheint immer wieder unscharf zu werden und sich dabei zu winden und zu schlängeln wie Schlangen in ihrem Nest. Allein vom Verfolgen der Bewegungen tun  dir die Augen weh.~ */
  IF ~~ THEN REPLY #23679 /* ~Untersuche die Symbole weiter und versuche, ihre Bedeutung herauszufinden. ~ */ GOTO 94
  IF ~~ THEN REPLY #23680 /* ~"Ich geb's auch, Mebbeth... was bedeutet das Gekritzel?"~ */ DO ~PlaySoundNotRanged("SPTR_01")
~ GOTO 95
END

IF ~~ THEN BEGIN 94 // from: 93.0 94.0
  SAY #23681 /* ~Mebbeth schaut dir schweigend zu, wie du die Symbole studierst.~ */
  IF ~~ THEN REPLY #23682 /* ~Untersuche die Symbole weiter und versuche, ihre Bedeutung herauszufinden. ~ */ GOTO 94
  IF ~~ THEN REPLY #23683 /* ~"Ich geb's auch, Mebbeth... was bedeutet das Gekritzel?"~ */ DO ~PlaySoundNotRanged("SPTR_01")
~ GOTO 95
END

IF ~~ THEN BEGIN 95 // from: 92.1 93.1 94.1
  SAY #23684 /* ~Als du schon aufgeben und weggehen willst, entspannst du deine Augen und betrachtest die Seite als Ganzes... Dabei setzen sich die Symbole plötzlich zusammen: Das Rezept enthält Maßangaben und Zutaten wie für eine Art leichte Sinnestäuschung.~ */
  IF ~~ THEN REPLY #23685 /* ~"Dies ist eine kleine Illusion, nicht wahr? Sieht aus wie ein Zauber, um andere einzuschüchtern... oder um ihnen Angst zu machen."~ */ GOTO 96
END

IF ~~ THEN BEGIN 96 // from: 91.0 95.0
  SAY #23686 /* ~Mebbeths Augen weiten sich. "Wer bist du, daß du die alte Mebbeth so auf die Probe stellst?! Bist du ein Scheusal?"~ */
  IF ~~ THEN REPLY #23687 /* ~"Was hast du denn?"~ */ JOURNAL #23690 /* ~Mebbeth hat mir einen Test gegeben: ein kleines Rezept, eine leichte Illusion, in der Sprache der Kunst geschrieben. Ich konnte seine Bedeutung ohne Schulung entziffern. Ich muß irgendwann einmal in der Vergangenheit gelernt haben, Magie zu lesen.~ */ GOTO 97
  IF ~~ THEN REPLY #23688 /* ~"Nein... also, nicht, daß ich wüßte. Was ist los?"~ */ JOURNAL #23690 /* ~Mebbeth hat mir einen Test gegeben: ein kleines Rezept, eine leichte Illusion, in der Sprache der Kunst geschrieben. Ich konnte seine Bedeutung ohne Schulung entziffern. Ich muß irgendwann einmal in der Vergangenheit gelernt haben, Magie zu lesen.~ */ GOTO 97
  IF ~~ THEN REPLY #23689 /* ~"Ja, andere haben mich schon so genannt, allerdings nicht in meiner Gegenwart. Stimmt irgendwas nicht?"~ */ JOURNAL #23690 /* ~Mebbeth hat mir einen Test gegeben: ein kleines Rezept, eine leichte Illusion, in der Sprache der Kunst geschrieben. Ich konnte seine Bedeutung ohne Schulung entziffern. Ich muß irgendwann einmal in der Vergangenheit gelernt haben, Magie zu lesen.~ */ GOTO 97
END

IF ~~ THEN BEGIN 97 // from: 96.0 96.1 96.2
  SAY #23691 /* ~"Nun... so was hab' ich nicht erwartet, echt nicht..." Sie schaut auf das Rezept und reißt es dir aus der Hand. "Was du da siehst, ist in der Sprache der *Kunst* formuliert. Wenn man noch kein Zauberkundiger ist, sollte einem das wie Kauderwelsch erscheinen." Sie schnippt mit dem Finger. "Aber, und das ist klar wie Kloßbrühe, du hast sofort den Sinn des Ganzen erfaßt. Vielleicht erzählst du der alten Mebbeth mal, wie das angeht?"~ */
  IF ~~ THEN REPLY #23692 /* ~"Ich weiß es, ehrlich gesagt, nicht... ich *wußte* einfach, was dort stand."~ */ GOTO 98
  IF ~~ THEN REPLY #23693 /* ~"Ich hab' es vielleicht früher mal gewußt, aber jetzt vergessen... diese Symbole haben einfach an meiner Erinnerung gerüttelt." ~ */ GOTO 98
END

IF ~~ THEN BEGIN 98 // from: 97.0 97.1
  SAY #23694 /* ~"Oder hast du vielleicht eine übernatürliche Gabe... egal, egal, du hast jedenfalls zig deiner Lehrstunden übersprungen, ehrlich." Mebbeth seufzt. "Und ich hab' jemand gesucht, der hier die Drecksarbeit erledigen kann..."~ */
  IF ~~ THEN REPLY #23695 /* ~"So soll es dann vielleicht sein."~ */ GOTO 99
  IF ~~ THEN REPLY #23696 /* ~"Du kannst mich nach wie vor fragen, wenn du Hilfe brauchst... das ist das Mindeste, was ich tun kann, als Gegenleistung für die Dinge, die du mich gelehrt hast."~ */ DO ~IncrementGlobalOnceEx("GLOBALLawful_Mebbeth_1","GLOBALLaw",1)
IncrementGlobalOnceEx("GLOBALGood_Mebbeth_1","GLOBALGood",1)
~ GOTO 100
END

IF ~~ THEN BEGIN 99 // from: 98.0
  SAY #23697 /* ~"Pah! Daß ich dich überhaupt reingelassen hab'..." Sie runzelt die Stirn. "Also, Zaubersprüche kannst du gut genug lesen, aber die  nützen dir nicht viel ohne ein Buch, in das du sie reinschreiben kannst..."~ */
  IF ~  Global("Mebbeth_Fail","GLOBAL",1)
~ THEN REPLY #23698 /* ~"Hast du eine?"~ */ GOTO 102
  IF ~  Global("Mebbeth_Fail","GLOBAL",0)
~ THEN REPLY #23699 /* ~"Hast du eine?"~ */ GOTO 101
END

IF ~~ THEN BEGIN 100 // from: 98.1
  SAY #23700 /* ~"Nein, nein, mach dir darum keine Sorgen..." Sie runzelt die Stirn. "Also, Zaubersprüche kannst du gut genug lesen, aber die nützen dir nicht viel ohne ein Buch, in das du sie reinschreiben kannst..."~ */
  IF ~  Global("Mebbeth_Fail","GLOBAL",1)
~ THEN REPLY #23701 /* ~"Hast du eine?"~ */ GOTO 102
  IF ~  Global("Mebbeth_Fail","GLOBAL",0)
~ THEN REPLY #23702 /* ~"Hast du eine?"~ */ GOTO 101
END

IF ~~ THEN BEGIN 101 // from: 99.1 100.1
  SAY #23703 /* ~Mebbeth schaut sich in der Hütte um. Dann fällt ihr Blick auf den Bilderrahmen mit schwarzen Stacheln, den du gemacht hast. Sie nimmt ihn vorsichtig in die Hand und betrachtet ihn eingehend. "Das sollte reichen."~ */
  IF ~~ THEN REPLY #23704 /* ~"Dieses Ding. Das ist doch bloß ein Rahmen."~ */ GOTO 103
END

IF ~~ THEN BEGIN 102 // from: 99.0 100.0
  SAY #23705 /* ~Mebbeth schaut sich in der Hütte um. Dann fällt ihr Blick auf einen Bildrahmen mit schwarzen Stacheln, der an einer der Wände hängt. Sie nimmt ihn vorsichtig von der Wand ab und betrachtet ihn eingehend. "Das reicht."~ */
  IF ~~ THEN REPLY #23706 /* ~"Dieses Ding. Das ist doch bloß ein Rahmen."~ */ GOTO 103
END

IF ~~ THEN BEGIN 103 // from: 101.0 102.0
  SAY #23707 /* ~"Ah, du dienst der Kunst doch auch nur als Verpackung..." Sie hält immer noch den Rahmen in der Hand und nimmt einen der gestärkten Lumpen, die du von Giscorl mitgebracht hast. Mit einem Ruck zieht sie die grünliche Oberschicht ab. Sie fliegt durch die Luft wie ein dünner Stoffetzen. "Was Giscorl auch immer zum Waschen nimmt, auf jeden Fall ist es besser als das übliche Waschen und Bügeln von Lumpen. Kann mir kein Pergament leisten, kann ich nicht..."~ */
  IF ~~ THEN REPLY #23708 /* ~"Pergament...?"~ */ GOTO 104
END

IF ~~ THEN BEGIN 104 // from: 103.0
  SAY #23709 /* ~Sie nimmt die gestärkte Oberschicht und zieht sie über den schwarzen Stachelrahmen und stülpt dabei die Lumpenränder über die Haken am Rahmen, bis das Ganze wie eine grünlich-schwarze Malerleinwand aussieht. "Irgendwas fehlt noch..."~ */
  IF ~~ THEN REPLY #23710 /* ~"Tja, da müßte was raufgemalt werden."~ */ GOTO 105
END

IF ~~ THEN BEGIN 105 // from: 104.0
  SAY #23711 /* ~Sie nickt. "Genau, oder man muß es beschriften..." Sie nimmt den Krug mit der Tinte, die du ihr besorgt hast, und stellt ihn neben sich ab. Sie taucht einen ihrer Fingernägel kurz in den Krug und murmelt dabei vor sich hin. Sie fängt an, nacheinander mehrere Symbole in den Rahmen einzuritzen und murmelt dabei weiter vor sich hin.~ */
  IF ~~ THEN REPLY #23712 /* ~Warte...~ */ GOTO 106
END

IF ~~ THEN BEGIN 106 // from: 105.0
  SAY #23713 /* ~"Fertig." Mebbeth trocknet ihren mit Tinte befleckten Fingernagel an ihrer Robe ab. Sie neigt ihren Kopf und betrachtet die seltsame, eingerahmte Seite vor sich. "Das ist 'ne Seite für dein Zauberbuch." Mit einer Geste fordert sie dich auf, die Seite zu nehmen.~ */
  IF ~~ THEN REPLY #23714 /* ~Nimm sie...~ */ GOTO 107
END

IF ~~ THEN BEGIN 107 // from: 106.0 108.1
  SAY #23715 /* ~"In deinem Zauberbuch sind deine Rezepte... deine 'Zaubersprüche'... wenn du so willst. Solange sie sich in dem Buch befinden, sind es bloß Wörter." Sie tippt sich an den Kopf. "Die Kunst sieht vor, daß du die Magie aus dem Buch herausziehst und sie in dein Oberstüb... deinen Kopf steckst, damit du ihre Macht nutzen kannst."~ */
  IF ~~ THEN REPLY #23716 /* ~"Erzähl weiter..."~ */ GOTO 108
  IF ~~ THEN REPLY #23717 /* ~"Ich glaube, ich verstehe die Grundlagen, Mebbeth. Leb wohl."~ */ GOTO 118
END

IF ~~ THEN BEGIN 108 // from: 107.0
  SAY #23718 /* ~"Du kriegst die Magie in dein Oberstübchen, indem du die Sprüche studierst und dir *einprägst*. Bevor du damit anfangen kannst, mußt du dich gewöhnlich 'n bißchen ausruhen. Noch Fragen?"~ */
  IF ~~ THEN REPLY #23719 /* ~"Nein, Mebbeth."~ */ GOTO 109
  IF ~~ THEN REPLY #23720 /* ~"Ja... erklär das bitte noch einmal."~ */ GOTO 107
  IF ~~ THEN REPLY #23721 /* ~"Ich glaube, ich verstehe die Grundlagen, Mebbeth. Leb wohl."~ */ GOTO 118
END

IF ~~ THEN BEGIN 109 // from: 108.0
  SAY #23722 /* ~"Oh, keine Fragen? Also, du *solltest* eigentlich Fragen haben! Du weißt also schon alles darüber, wie man sich Zaubersprüche einprägt, ja? Du bist ja ganz schön clever! Du brauchst Mebbeths Gerede dann gar nicht mehr. Das stiehlt dir nur deine kostbare Zeit... Du bist jetzt schon ein Meisterzauberer!"~ */
  IF ~~ THEN REPLY #23723 /* ~"Vergib mir, Mebbeth, ich wollte sagen, daß ich *keine* Fragen zu dem habe, was du gesagt hast. Bitte erklär mir, wie man sich Zauber einprägt."~ */ GOTO 110
  IF ~~ THEN REPLY #23724 /* ~"Du machst es einem wirklich nicht einfach, Mebbeth..."~ */ GOTO 111
  IF ~~ THEN REPLY #23725 /* ~"Ich glaube, ich verstehe die Grundlagen, Mebbeth. Leb wohl."~ */ GOTO 118
END

IF ~~ THEN BEGIN 110 // from: 109.0 111.0 111.1
  SAY #23726 /* ~"Hmmpff. Also gut. Ich laß dich das Dunkel zum Einprägen der Zaubersprüche wissen: Such dir aus dem Zauberbuch die Zaubersprüche aus, die du dir einprägen willst, und zwar *bevor* du schlafen gehst. Wenn du am nächsten Morgen aufwachst, schwirren sie in deinem Kopf wie Fliegen herum, und warten nur darauf, rausgelassen zu werden."~ */
  IF ~~ THEN REPLY #23727 /* ~"Wie viele Zauber kann ich aussprechen?"~ */ GOTO 112
  IF ~~ THEN REPLY #23728 /* ~"Ich glaube, ich verstehe die Grundlagen, Mebbeth. Leb wohl."~ */ GOTO 118
END

IF ~~ THEN BEGIN 111 // from: 109.1
  SAY #23729 /* ~"Ich geh mit dir um, wie ich das für richtig halte, Kind, so ist das, und jetzt paß mal gut auf, wenn du das Dunkel der Kunst wissen möchtest!"~ */
  IF ~~ THEN REPLY #23730 /* ~"Vergib mir, Mebbeth. Bitte erklär mir, wie man sich Zauber einprägen kann."~ */ GOTO 110
  IF ~~ THEN REPLY #23731 /* ~"Sag mir Bescheid, wenn du *fertig* bist mit deinem Vortrag."~ */ GOTO 110
END

IF ~~ THEN BEGIN 112 // from: 110.0
  SAY #23732 /* ~"Du kannst nur einen, höchstens zwei anwenden. Dann brauchst du wieder eine Pause... Als kleiner Anfänger-Zauberkundiger hast du nicht so viel Platz in deinem Oberstübchen. Setz deine Zaubersprüche also weise ein, bis du weiser in der Anwendung der Kunst bist. Wenn deine Macht wächst, wirst du mehr Platz für Zaubersprüche in deinem Oberstübchen haben."~ */
  IF ~~ THEN REPLY #23733 /* ~"In Ordnung... erzähl weiter..."~ */ GOTO 113
  IF ~~ THEN REPLY #23734 /* ~"Ich glaube, ich verstehe die Grundlagen, Mebbeth. Leb wohl."~ */ GOTO 118
END

IF ~~ THEN BEGIN 113 // from: 112.0
  SAY #23735 /* ~"Du kannst nur die Zaubersprüche anwenden, die du dir eingeprägt hast. Also, wenn du die Kunst verwenden möchtest, um zu sagen, daß etwas zweimal geflickt werden soll, mußt du dir den Spruch gut einprägen...und zwar wie oft?"~ */
  IF ~~ THEN REPLY #23736 /* ~"Einmal."~ */ GOTO 114
  IF ~~ THEN REPLY #23737 /* ~"Zweimal."~ */ GOTO 115
  IF ~~ THEN REPLY #23738 /* ~"Äh..."~ */ GOTO 114
  IF ~~ THEN REPLY #23739 /* ~"Ich glaube, ich verstehe die Grundlagen, Mebbeth. Leb wohl."~ */ GOTO 118
END

IF ~~ THEN BEGIN 114 // from: 113.0 113.2
  SAY #23740 /* ~"Zweimal! Um einen Zauberspruch *zweimal* anzuwenden, mußt du dir den Spruch *zweimal* einprägen."~ */
  IF ~~ THEN REPLY #23741 /* ~"Kapiert. Wie kann ich an weitere Zauber kommen?"~ */ GOTO 116
  IF ~~ THEN REPLY #23742 /* ~"Ich glaube, ich verstehe die Grundlagen, Mebbeth. Leb wohl."~ */ GOTO 118
END

IF ~~ THEN BEGIN 115 // from: 113.1
  SAY #23743 /* ~Mebbeth nickt. "Ja, zweimal, ganz genau."~ */
  IF ~~ THEN REPLY #23744 /* ~"Wie kann ich an weitere Zauber kommen?"~ */ JOURNAL #23746 /* ~Mebbeth hat mir die Grundlagen der Kunst beigebracht. Sie sagt, daß ich vor einer Pause aussuchen muß, welche Zauber ich mir merken möchte, indem ich mein Zauberbuch heranziehe und sie aussuche. Wenn ich einen Zauber mehrmals anwenden können möchte, muß ich ihn auch mehrmals lernen. Immer, wenn ich schlafe, wache ich am nächsten Morgen mit dem Zauberspruch in meinem Gedächtnis auf und kann ihn dann jederzeit anwenden. Sie sagt, ich kann täglich nur einige wenige Zaubersprüche anwenden, bis ich mit ihrer Anwendung vertrauter werde. Vielleicht finde ich im Stock ja noch andere Lehrer, die mir Zaubersprüche beibringen können.~ */ GOTO 116
  IF ~~ THEN REPLY #23745 /* ~"Ich glaube, ich verstehe die Grundlagen, Mebbeth. Leb wohl."~ */ GOTO 118
END

IF ~~ THEN BEGIN 116 // from: 114.0 115.0
  SAY #23747 /* ~Mebbeth zuckt mit den Achseln. "Geh mit offenen Augen und Ohren durchs Leben - selbst einfache Leute können dir vielleicht noch ein bißchen anspruchslosere Zauberei beibringen. Außerdem gibt es noch Schriftrollen, Rezepte, Bücher und sogar einige seltsame Gegenstände mit eingravierten Zaubersprüchen. Wenn du etwas dergleichen findest, untersuche es genau und schreib den Spruch dann, wenn du willst, in dein Buch."~ */
  IF ~~ THEN REPLY #23748 /* ~"Verstanden."~ */ GOTO 117
  IF ~~ THEN REPLY #23749 /* ~"Ich glaube, ich verstehe die Grundlagen, Mebbeth. Leb wohl."~ */ GOTO 118
END

IF ~~ THEN BEGIN 117 // from: 116.0
  SAY #23750 /* ~"Ich kann dir noch mehr Zaubersprüche zeigen, wenn du wiederkommst, vor allem, wenn du 'n bißchen mehr von den Ebenen in dir hast."~ */
  IF ~~ THEN REPLY #23751 /* ~"Ja, das wäre wirklich gut. Danke." ~ */ GOTO 118
  IF ~~ THEN REPLY #23752 /* ~"Ich glaube, ich verstehe die Grundlagen, Mebbeth. Leb wohl."~ */ GOTO 118
END

IF ~~ THEN BEGIN 118 // from: 107.1 108.2 109.2 110.1 112.1 113.3 114.1 115.1 116.1 117.0 117.1
  SAY #23753 /* ~"Bevor du gehst, Kind, brauchste 'n bißchen Zauber zum Appetitanregen..." Mebbeth wühlt in ihrer Robe und zieht dann drei Rezepte heraus, die sie dir übergibt. "Die solltest du in dein Buch kopieren, damit sie so bald wie möglich in deiner Dachkammer verschwinden können. Für das dritte mußte allerdings 'n bißchen mehr in der Kunst geübt sein, um es anwenden zu können..."~ */
  IF ~~ THEN REPLY #23754 /* ~"Danke, Mebbeth."~ */ DO ~GiveItemCreate("Recipe01",Protagonist,1,1,0)
GiveItemCreate("Recipe02",Protagonist,1,1,0)
GiveItemCreate("Recipe03",Protagonist,1,1,0)
GiveExperience(Protagonist,5000)
~ JOURNAL #23759 /* ~Mebbeth hat mir drei "Rezepte" gegeben, die ich in mein Zauberbuch kopieren soll. Sie hat mir gesagt, daß ich sie in meinem Inventar überprüfen soll, dann die Option "Kopieren" auswählen und sie in mein Zauberbuch kopieren soll.~ */ GOTO 138
END

IF ~~ THEN BEGIN 119 // from: 138.0
  SAY #23755 /* ~"Gut, Kind - du brauchst hier nicht länger zu bleiben. Jemand wie du kann seine Zeit besser nutzen, als bei der alten Mebbeth herumzuhängen."~ */
  IF ~~ THEN REPLY #23756 /* ~"Ach, komm schon, Mebbeth, du bist doch nicht alt."~ */ GOTO 120
  IF ~~ THEN REPLY #23757 /* ~"So alt bist du doch gar nicht."~ */ GOTO 120
  IF ~~ THEN REPLY #23758 /* ~"Wo du recht hast, hast du recht. Ich hab' hier wahrlich schon genug Zeit verbracht."~ */ GOTO 121
END

IF ~~ THEN BEGIN 120 // from: 119.0 119.1
  SAY #23760 /* ~"Pah, du Schmeichler! Du bist so zungenfertig, daß es einen Baatezu beschämen würde! Mach, daß du fortkommst!"~ */
  IF ~~ THEN REPLY #23761 /* ~"Vielen Dank für alles, Mebbeth."~ */ DO ~IncrementGlobalOnceEx("GLOBALGood_Mebbeth_1","GLOBALGood",1)
~ GOTO 122
  IF ~~ THEN REPLY #23762 /* ~"Leb wohl, Mebbeth."~ */ EXIT
END

IF ~~ THEN BEGIN 121 // from: 119.2
  SAY #23763 /* ~"Mit deiner Art wirst du sicher mal einer dieser naseweisen Magier." Mebbeth schnaubt. "Aber... ich wünsch dir trotzdem alles Gute, Kind, alles Gute."~ */
  IF ~~ THEN REPLY #23764 /* ~"Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 122 // from: 120.0
  SAY #23765 /* ~"Pah! Du kannst mir danken, indem du bedacht mit dem umgehst, was du gelernt hast. Die Kunst hat schon manchen Dummkopf zu Fall gebracht, der versucht hat, sie so hinzubiegen, wie man es nicht tun sollte. Und jetzt mach dich auf!"~ */
  IF ~~ THEN REPLY #23766 /* ~"Leb wohl."~ */ EXIT
END

IF WEIGHT #0 ~  GlobalGT("Mebbeth","GLOBAL",0)
Dead("Ravel")
~ THEN BEGIN 123 // from:
  SAY #23767 /* ~Als du eintrittst, schaut Mebbeth dich mit aschfahlem Gesicht an... Sie sieht krank aus. Als du genauer hinsiehst, erkennst du, daß ihr Gesicht vor Falten völlig zerfurcht ist, und daß ihre grauen Augen so heftig blinzeln, als ob sie Schwierigkeiten hat, dich klar zu erkennen.~ */
  IF ~  GlobalGT("Ravel_Shape","GLOBAL",1)
~ THEN REPLY #64215 /* ~"Mebbeth, geht's dir gut?"~ */ GOTO 124
  IF ~  GlobalLT("Ravel_Shape","GLOBAL",2)
~ THEN REPLY #23768 /* ~"Ich dachte, du wärst vielleicht noch hier, Mebbeth."~ */ GOTO 124
  IF ~  GlobalLT("Ravel_Shape","GLOBAL",2)
~ THEN REPLY #23769 /* ~"Du bist noch nicht tot, 'Mebbeth', oder? "~ */ GOTO 125
  IF ~  GlobalLT("Ravel_Shape","GLOBAL",2)
~ THEN REPLY #23770 /* ~"Mebbeth... *wußtest* du, daß du Ravel bist?"~ */ GOTO 126
END

IF ~~ THEN BEGIN 124 // from: 123.0 123.1
  SAY #23771 /* ~"Ja..." Sie lächelt schwach, ihre Stimme ist heiser, als müsse sie sich einen Weg durch Schichten von Staub bahnen. Wenn sie spricht, klingt es wie ein Echo. "Ich hab... noch ein bißchen länger..."~ */
  IF ~  GlobalGT("Ravel_Shape","GLOBAL",1)
~ THEN REPLY #23772 /* ~"Mebbeth... *wußtest* du, daß du Ravel bist?"~ */ GOTO 126
  IF ~  GlobalLT("Ravel_Shape","GLOBAL",2)
~ THEN REPLY #64216 /* ~"Mebbeth... deine Stimme... du sprichst mit Ravels Stimme. Wer bist du?!"~ */ GOTO 126
END

IF ~~ THEN BEGIN 125 // from: 123.2
  SAY #23773 /* ~"Nee..." Sie lächelt schwach. "Ich hab'... noch ein bißchen länger..."
~ */
  IF ~~ THEN REPLY #23774 /* ~"Mebbeth... *wußtest* du, daß du Ravel bist?"~ */ GOTO 126
END

IF ~~ THEN BEGIN 126 // from: 123.3 124.0 124.1 125.0
  SAY #23775 /* ~Sie holt tief Luft... ihre Worte kommen langsam, ihre Stimme rasselt in ihrer Kehle. "Vielleicht... hat Mebbeth oft vergessen, wer sie ist... Ich hab' oft geträumt, daß ich jemand anders war..." Die Worte kommen ihr immer schwerer über die Lippen, so als ob die Last von Jahrhunderten auf ihnen liegt. Ihr Körper scheint sich etwas zu bewegen, als ob er sich *entspannen* will.~ */
  IF ~~ THEN REPLY #23776 /* ~"Wie kommt es, daß du nicht weißt, wer du bist?"~ */ GOTO 127
END

IF ~~ THEN BEGIN 127 // from: 126.0
  SAY #23777 /* ~"Wie kommt's, daß *du* dich selbst nicht kennst?" Mebbeth leckt ihre Lippen. "Viele Dinge... sogar Teile von einem selbst... sie fallen durch die Lücken im Gedächtnis, Schatten von vergessenen Dingen, diese Gedächtnisbruchstücke, vielleicht schlecht... vielleicht gut."~ */
  IF ~~ THEN REPLY #23778 /* ~"Aber warum Mebbeth? Warum die Verkleidung, wenn du doch wieder Ravel hättest sein können?"~ */ GOTO 128
END

IF ~~ THEN BEGIN 128 // from: 127.0
  SAY #23779 /* ~"Hier, an diesem Ort, hab' ich immer nur Dinge und Körper wieder hergerichtet, Knochen geheilt, Kinder auf die Welt geholt... All diese Dinge haben mir Freude bereitet." Sie seufzt. "Was mein Leben als diese *andere,* diese Ravel angeht..." Sie leckt sich wieder über die Lippen. "Ich glaub... du wirst mir abnehmen, was für ein Trost es manchmal wäre, wenn man ein paar Erinnerungen verdrängen könnte."~ */
  IF ~~ THEN REPLY #23780 /* ~"Ich war mir nicht sicher, ob du hier sein würdest, nach allem, was passiert ist..."~ */ GOTO 129
END

IF ~~ THEN BEGIN 129 // from: 128.0
  SAY #23781 /* ~Mebbeth nickt - jede Bewegung ist eine Qual. "Ja, mein Lieber..." Sie zuckt zusammen, als sie einatmet. "Dich hier zu sehen... das ist wie ein Echo. Es bleibt nicht viel Zeit... die Fäden, diese Dunkel... sie entwirren sich und treten ans Licht, während wir sprechen."~ */
  IF ~~ THEN REPLY #23782 /* ~"Hast du Schmerzen?"~ */ GOTO 130
END

IF ~~ THEN BEGIN 130 // from: 129.0
  SAY #23783 /* ~Sie nickt. "Ja... doch am meisten schmerzt die Ironie..." Sie lächelt gequält. "Ein Akt der Güte, dreifach vergolten... Es ist der Wille der Ebenen, daß meine wenigen guten Taten den Tod für mich bedeuten sollen." Sie lacht leise. "Doch ich bereue nichts..."~ */
  IF ~~ THEN REPLY #23784 /* ~" Mebbeth, ich muß wissen, wer dir das *angetan* hat? Kannst du m-"~ */ GOTO 131
END

IF ~~ THEN BEGIN 131 // from: 130.0
  SAY #23785 /* ~Sie hebt ihre Hand, um dich zum Schweigen zu bringen. "Guter Mann... Ich möchte, daß du mir nur noch dieses eine Mal zuhörst..."~ */
  IF ~~ THEN REPLY #23786 /* ~"Mebbeth, wir haben nicht viel *Zeit*..."~ */ GOTO 132
  IF ~~ THEN REPLY #23788 /* ~"Also gut..."~ */ GOTO 132
END

IF ~~ THEN BEGIN 132 // from: 131.0 131.1
  SAY #23792 /* ~"Guter Mann..." Sie seufzt. "Alles was ich wollte war, daß die Dame aus ihrem Käfig befreit wird... Und dir, alles was ich dir wünsche ist, daß du *lebst*... und meiner Tochter, ich..." Sie seufzt. "Es gibt ein Sprichwort hier in den Ebenen... und zwar, daß die Güte einer Hexe grausamer ist... als ihr Haß, und alles vergiftet, mit dem sie in Berührung kommt..."~ */
  IF ~  !PartyHasItem("BBSeed")
~ THEN REPLY #23793 /* ~"Ich denke, das haben wir gesehen."~ */ GOTO 133
  IF ~  !PartyHasItem("BBSeed")
~ THEN REPLY #23794 /* ~"Es tut mir leid, daß sich alles so entwickelt hat. Wenn ich dich hätte retten können, ich h-"~ */ DO ~IncrementGlobalOnceEx("GLOBALGood_Mebbeth_2","GLOBALGood",1)
~ GOTO 133
  IF ~  PartyHasItem("BBSeed")
~ THEN REPLY #23795 /* ~"Ich denke, das haben wir gesehen."~ */ GOTO 134
  IF ~  PartyHasItem("BBSeed")
~ THEN REPLY #23796 /* ~"Es tut mir leid, daß sich alles so entwickelt hat. Wenn ich dich hätte retten können, ich h-"~ */ DO ~IncrementGlobalOnceEx("GLOBALGood_Mebbeth_2","GLOBALGood",1)
~ GOTO 134
END

IF ~~ THEN BEGIN 133 // from: 132.0 132.1
  SAY #23797 /* ~Sie lächelt etwas. "Ich bereue nicht, was passiert ist, mein Guter..." Ihr Lächeln verfliegt. "Das solltest du auch nicht." Tränen treten ihr in die Augen, und ihr Blick wird unscharf. "Ah... ich... kann hier... nicht länger bleiben."~ */
  IF ~~ THEN REPLY #23798 /* ~"Scher dich zum Teufel, Ravel. Auf daß ein dunklerer Ort als dieser dein Heim werde."~ */ DO ~DestroySelf()
IncrementGlobalOnceEx("GLOBALEvil_Mebbeth_2","GLOBALGood",-1)
~ EXIT
  IF ~~ THEN REPLY #23799 /* ~"Leb wohl, Ravel."~ */ DO ~DestroySelf()
~ EXIT
END

IF ~~ THEN BEGIN 134 // from: 132.2 132.3
  SAY #23800 /* ~"Ich sterbe jetzt..." Sie blinzelt mit ihren feuchten Augen. "Mein Ende... es kommt aus allen Richtungen der Zeit, alle Fäden von Ravel lösen sich auf..." Sie hustet. "Doch..." Ihre grauen Augen sehen dich an. "Vielleicht ist noch nicht alles verloren... Einer meiner Schwarzstachel-Samen aus dem Irrgang... Hast du einen mitgebracht?"~ */
  IF ~~ THEN REPLY #23801 /* ~"Ja. Hier."~ */ DO ~AddexperienceParty(12000)
DestroyPartyItem("BBSeed",FALSE)
~ GOTO 135
  IF ~~ THEN REPLY #23802 /* ~"Ja, hab' ich, aber ich werd's dir nicht geben."~ */ GOTO 136
END

IF ~~ THEN BEGIN 135 // from: 134.0
  SAY #23803 /* ~"Ah..." Sie nimmt den Samen sehr behutsam und steckt ihn in ihre grauen Haarsträhnen. "Damit ist der Einheit der Ringe gedient..." Mit flackernden Lidern hebt sie ihre Hand und fordert dich auf näherzukommen.~ */
  IF ~~ THEN REPLY #23804 /* ~Trete an sie heran und knie nieder. ~ */ DO ~SetGlobal("BD_UNITYRINGS","GLOBAL",1)
~ GOTO 137
  IF ~~ THEN REPLY #23805 /* ~"Nein... egal, in welcher Verkleidung du erscheinst, du bist Ravel, und ich trau dir nicht. Ich trauere um Mebbeth, jedoch nicht um dich."~ */ DO ~SetGlobal("BD_UNITYRINGS","GLOBAL",1)
~ GOTO 136
END

IF ~~ THEN BEGIN 136 // from: 134.1 135.1
  SAY #23806 /* ~Sie nickt. Es scheint, als ob sie etwas sagen möchte, dann lächelt sie und schließt ihre Augen.~ */
  IF ~~ THEN REPLY #23807 /* ~"Leb wohl."~ */ DO ~DestroySelf()
~ EXIT
END

IF ~~ THEN BEGIN 137 // from: 135.0
  SAY #23809 /* ~Sie flüstert leise etwas beim Atmen, nimmt dann deinen Kopf in ihre Hände und haucht dir einen Kuß auf die Stirn. Du schließt deine Augen, als ihre Lippen deine Haut berühren...~ */
  IF ~~ THEN REPLY #23810 /* ~"Mögen die Ebenen dich freundlich aufnehmen, Mebbeth."~ */ DO ~SetGlobal("Ravel_Death_Kiss","GLOBAL",1)
DestroySelf()
~ EXIT
END

IF ~~ THEN BEGIN 138 // from: 118.0
  SAY #66278 /* ~"Warte... Da ist noch was..." Mebbeth holt ein kleines Bündel schwarzen Stoffes aus ihrer Schürze hervor und legt es auseinander. Zum Vorschein kommt ein Paar bernsteinfarbene Ohrringe. "Die werden dich auf deinen Reisen beschützen, Kind... Ich trag sie nicht mehr, also nimm sie ruhig."~ */
  IF ~~ THEN REPLY #66279 /* ~"Vielen Dank nochmal..."~ */ DO ~GiveItemCreate("AmbEar",Protagonist,1,0,0)
~ GOTO 119
END
