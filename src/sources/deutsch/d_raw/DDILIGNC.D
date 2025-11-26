// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DDILIGNC.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\de_DE\dialog.tlk
// dialogF  : (none)

BEGIN ~DDILIGNC~

IF ~  Global("Diligence","GLOBAL",0)
GlobalLT("MK_Counter","GLOBAL",1000)
~ THEN BEGIN 0 // from:
  SAY #2889 /* ~Die ernst aussehende alte Frau hat es offensichtlich eilig. Als sie bemerkt, daß du näher kommst, mustert sie dich mit einem mürrischen Blick und preßt ihre Lippen zusammen.
~ */
  IF ~~ THEN REPLY #29200 /* ~"Sei gegrüßt..."~ */ DO ~SetGlobal("Diligence","GLOBAL",1)
~ GOTO 1
  IF ~~ THEN REPLY #29201 /* ~Laß sie in Ruhe.~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #29167 /* ~Die Frau nickt kurz und spricht mit eiskalter Stimme: "Ja? Was gibt's? Und hüte deine Zunge, denn ich bin Eifer, Vierte Friedensrichterin des Bezirks."~ */
  IF ~~ THEN REPLY #29202 /* ~"Du bist *wer*?"~ */ GOTO 14
  IF ~~ THEN REPLY #29203 /* ~"Ich hätte da ein paar Fragen..."~ */ GOTO 15
  IF ~~ THEN REPLY #29204 /* ~"Stimmt etwas mit meinem Äußeren nicht?"~ */ GOTO 2
  IF ~~ THEN REPLY #29205 /* ~"Nichts. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.2 14.1
  SAY #29168 /* ~"Das will ich doch wohl meinen! Wenn die Kleiderordnung erst einmal durch ist, dürfen Leute wie du nicht mehr so rumlaufen, halbnackt und dreckig wie du bist..."~ */
  IF ~  CheckStatGT(Protagonist,12,CHR)
CheckStatGT(Protagonist,12,INT)
~ THEN REPLY #29206 /* ~"Ich will ja nicht unhöflich sein, aber eigentlich sehe ich ziemlich sauber aus... aber so manche Kultur könnte *deine* Kleidung anstößig finden."~ */ GOTO 3
  IF ~~ THEN REPLY #29207 /* ~"Urteilst du immer so schnell über andere?"~ */ GOTO 9
  IF ~~ THEN REPLY #29208 /* ~"Dieser Look ist der letzte Schrei!. Probier's doch auch mal, vielleicht steht's dir ja!"~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Diligence_1","GLOBALLaw",-1)
~ GOTO 13
  IF ~~ THEN REPLY #29209 /* ~"Aha. Ich hätte da ein paar Fragen..."~ */ GOTO 15
  IF ~~ THEN REPLY #29210 /* ~"Hmm. Ich muß jetzt gehen. Leb wohl."~ */ GOTO 19
END

IF ~~ THEN BEGIN 3 // from: 2.0 9.0 13.0
  SAY #29169 /* ~Sie sieht dich noch einmal einen Moment an und nickt dann. "Naja, ich verstehe, was du meinst... Aber trotzdem kannst du nicht abstreiten, daß du ziemlich fertig aussiehst."~ */
  IF ~~ THEN REPLY #29211 /* ~"Mein Aussehen ist nur das Produkt meiner Umgebung und eines schweren Lebens. Dafür kann ich nichts."~ */ GOTO 4
  IF ~~ THEN REPLY #29212 /* ~"Das kann ich nicht. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 3.0
  SAY #29170 /* ~"Doch, doch, das kannst du! Es ist ja so einfach, für jede Schwäche sein Leben oder seine Umgebung verantwortlich zu machen! Deine Manieren zeigen mir, daß du gebildet bist, und doch hältst du an einem Leben fest, das aus Herumtreiberei und sinnloser Gewalt besteht. Warum läßt du dich nicht in Sigil nieder? Werde ein steuerzahlender Bewohner, anstatt weiter als blutbeschmierter Nomade durch die Straßen zu ziehen!"~ */
  IF ~~ THEN REPLY #29213 /* ~"Diese Entscheidung liegt leider nicht bei mir."~ */ GOTO 5
  IF ~~ THEN REPLY #29214 /* ~"Ich werde darüber nachdenken. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 4.0 18.0 25.0
  SAY #29171 /* ~"Oh? Wie das?" Ihre Kühle wird allmählich von Neugier verdrängt.~ */
  IF ~~ THEN REPLY #29215 /* ~"Das ist recht kompliziert..."~ */ GOTO 6
  IF ~~ THEN REPLY #29216 /* ~Erzähl ihr deine Geschichte... oder zumindest das, was du darüber weißt.~ */ DO ~FadeToColor([20.0],0)
Wait(2)
FadeFromColor([20.0],0)
~ GOTO 7
  IF ~~ THEN REPLY #29217 /* ~"Vergiß es. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 6 // from: 5.0
  SAY #29172 /* ~"Erzähl es mir bitte trotzdem."~ */
  IF ~~ THEN REPLY #29218 /* ~Erzähl ihr deine Geschichte... oder zumindest das, was du darüber weißt.~ */ DO ~FadeToColor([20.0],0)
Wait(2)
FadeFromColor([20.0],0)
~ GOTO 7
  IF ~~ THEN REPLY #29219 /* ~"Lieber nicht. Es ist eine sehr persönliche Angelegenheit. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 7 // from: 5.1 6.0
  SAY #29173 /* ~Du erzählst ihr deine Geschichte zu Ende.

Eifer sieht schockiert aus. "Das... das ist ja vielleicht 'ne Story!"


~ */
  IF ~~ THEN REPLY #29220 /* ~"Wenn es man nur 'ne Story wäre. Aber das ist mein Leben, und ich habe Narben, die es beweisen... die sind dir ja schon bei unserem ersten Zusammentreffen aufgefallen, ne?"~ */ DO ~SetGlobal("Diligence","GLOBAL",3)
~ GOTO 8
  IF ~~ THEN REPLY #29221 /* ~"Ja, das ist es. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 8 // from: 7.0
  SAY #29174 /* ~"Ja, ja... da hast du recht." Ein flüchtiges Lächeln zeigt sich auf ihrem Gesicht... du hattest dich schon gefragt, ob sie überhaupt lächeln konnte. "Viel Glück auf deinem weiteren Weg. Mögest du dich wiederfinden."~ */
  IF ~~ THEN REPLY #29222 /* ~"Danke. Ich hätte da aber noch ein paar Fragen..."~ */ GOTO 26
  IF ~~ THEN REPLY #29223 /* ~"Vielen Dank. Leb wohl, Eifer."~ */ EXIT
END

IF ~~ THEN BEGIN 9 // from: 2.1 13.1
  SAY #29175 /* ~"Du willst mir also weismachen, daß du *kein* Herumtreiber bist? Daß du nicht durch die Stadt strolchst und alle, die du triffst, mit deinen Fragen löcherst? Und daß du nicht mit praktisch jedem auf Gedeih und Verderb kämpfst, der dir über den Weg läuft?"~ */
  IF ~  CheckStatGT(Protagonist,12,CHR)
CheckStatGT(Protagonist,12,INT)
~ THEN REPLY #29224 /* ~"Naja, aber abgesehen davon sehe ich ziemlich sauber aus, und... ich will jetzt nicht unhöflich sein... aber so manche Kultur könnte *deine* Kleidung anstößig finden."~ */ GOTO 3
  IF ~~ THEN REPLY #29225 /* ~"Naja..."~ */ DO ~SetGlobal("Diligence","GLOBAL",2)
~ GOTO 12
  IF ~~ THEN REPLY #29226 /* ~Lüge: "Das ist nicht wahr."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Diligence_2","GLOBALLaw",-1)
SetGlobal("Diligence","GLOBAL",2)
~ GOTO 10
END

IF ~~ THEN BEGIN 10 // from: 9.2 19.2 21.2
  SAY #29176 /* ~Eifer starrt dich kühl an. "Du lügst. Ich werde keine Zeit mehr mit dir vergeuden. Wenn du noch ein Wort sagst oder nur in meine Nähe kommst, rufe ich die Wache. Und jetzt fort mit dir!"~ */
  IF ~~ THEN REPLY #29227 /* ~"Aber..."~ */ GOTO 11
  IF ~~ THEN REPLY #29228 /* ~Geh.~ */ EXIT
END

IF ~~ THEN BEGIN 11 // from: 10.0 12.0 16.0 31.1
  SAY #29177 /* ~"Wachen!"~ */
  IF ~~ THEN REPLY #29229 /* ~Greif sie an.~ */ DO ~SetGlobal("MK_Counter","GLOBAL",1000)
SetGlobal("Call_MK","GLOBAL",1)
Help()
RunAwayFromEx(Protagonist,TWO_AI_SECONDS,FALSE)
~ EXIT
  IF ~~ THEN REPLY #29230 /* ~Versuch zu verschwinden, bevor jemand kommt.~ */ DO ~IncrementGlobal("MK_Counter","GLOBAL",1)
SetGlobal("Call_MK","GLOBAL",1)
Help()
RunAwayFromEx(Protagonist,TWO_AI_SECONDS,FALSE)
~ EXIT
END

IF ~~ THEN BEGIN 12 // from: 9.1
  SAY #29178 /* ~Ein leiser Anflug von Hohn ist von ihren Lippen abzulesen. "Ich urteile sehr schnell, weil ich von Beruf Friedensrichterin bin. Ich werde keine Zeit mehr mit dir vergeuden. Wenn du noch ein Wort sagst oder nur in meine Nähe kommst, rufe ich die Wache. Und jetzt fort mit dir!"~ */
  IF ~~ THEN REPLY #29231 /* ~"Aber..."~ */ GOTO 11
  IF ~~ THEN REPLY #29232 /* ~Geh.~ */ EXIT
END

IF ~~ THEN BEGIN 13 // from: 2.2
  SAY #29179 /* ~Sie kneift ihre Augen noch mehr zusammen. "Nimm mich nicht auf den Arm! Für so was habe ich keine Zeit. Also, was willst du von mir?"~ */
  IF ~  CheckStatGT(Protagonist,12,CHR)
CheckStatGT(Protagonist,12,INT)
~ THEN REPLY #29233 /* ~"Vergib mir meine Torheit, aber um die Wahrheit zu sagen, sehe ich eigentlich ziemlich sauber aus. Ich will ja nicht unhöflich sein... aber so manche Kultur könnte *deine* Kleidung anstößig finden."~ */ GOTO 3
  IF ~~ THEN REPLY #29234 /* ~"Urteilst du immer so schnell über andere?"~ */ GOTO 9
  IF ~~ THEN REPLY #29235 /* ~"Ich hätte ein paar Fragen..."~ */ GOTO 15
  IF ~~ THEN REPLY #29236 /* ~"Hmm. Ich muß jetzt gehen. Leb wohl."~ */ GOTO 19
END

IF ~~ THEN BEGIN 14 // from: 1.0
  SAY #29180 /* ~Eifer starrt dich mit einem leicht angewiderten Gesichtsausdruck an.~ */
  IF ~~ THEN REPLY #29237 /* ~"Ich hätte ein paar Fragen..."~ */ GOTO 15
  IF ~~ THEN REPLY #29238 /* ~"Stimmt etwas mit meinem Äußeren nicht?"~ */ GOTO 2
  IF ~~ THEN REPLY #29239 /* ~"Ich muß jetzt gehen. Leb wohl."~ */ GOTO 19
END

IF ~~ THEN BEGIN 15 // from: 1.1 2.3 13.2 14.0 30.1
  SAY #29181 /* ~Eifer lächelt süffisant. "Ich bin kein Straßenhändler, der für eine Handvoll Münzen Fragen von Passanten beantwortet. Such dir jemand anders, der dir deine Fragen beantwortet. Ich habe zu tun. Regierungsgeschäfte."~ */
  IF ~  CheckStatGT(Protagonist,12,CHR)
CheckStatGT(Protagonist,12,INT)
~ THEN REPLY #29240 /* ~"Ich habe dich nicht für einen.... Schlepper gehalten. Ich hatte nur den Eindruck, daß du am meisten weißt und darum gehofft, daß du mir helfen könntest."~ */ GOTO 17
  IF ~~ THEN REPLY #29241 /* ~"Nur eine kurze Frage?"~ */ DO ~SetGlobal("Diligence","GLOBAL",2)
~ GOTO 16
  IF ~~ THEN REPLY #29242 /* ~"Na dann leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 16 // from: 15.1
  SAY #29182 /* ~"Nein, keine einzige. Und jetzt laß mich in Ruhe! Wenn du noch ein Wort sagst oder nur in meine Nähe kommst, rufe ich die Wache."~ */
  IF ~~ THEN REPLY #29243 /* ~"Aber..."~ */ GOTO 11
  IF ~~ THEN REPLY #29244 /* ~Verschwinde.~ */ EXIT
END

IF ~~ THEN BEGIN 17 // from: 15.0
  SAY #29183 /* ~"Ist mir völlig egal, was du gedacht hast. Ich hab' trotzdem keine Zeit für deine Fragen."
~ */
  IF ~~ THEN REPLY #29245 /* ~"Dann bitte ich um Entschuldigung und danke dir für die Zeit, die du mir geopfert hast. Leb wohl."~ */ GOTO 18
  IF ~~ THEN REPLY #29246 /* ~"Na gut. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 18 // from: 17.0
  SAY #29184 /* ~"Moment mal... deine Manieren zeigen mir, daß du gebildet bist, und doch hältst du an einem Leben fest, das aus Herumtreiberei und sinnloser Gewalt besteht. Warum läßt du dich nicht in Sigil nieder? Werde ein steuerzahlender Bewohner, anstatt weiter als blutbeschmierter Nomade durch die Straßen zu ziehen!"~ */
  IF ~~ THEN REPLY #29266 /* ~"Diese Entscheidung liegt leider nicht bei mir."~ */ GOTO 5
  IF ~~ THEN REPLY #29267 /* ~"Ich werd drüber nachdenken. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 19 // from: 2.4 13.3 14.2
  SAY #29185 /* ~"Nicht so schnell... halt!" Sie kneift ihre Augen zusammen und sieht dich an. "Wie heißt du?"~ */
  IF ~~ THEN REPLY #29268 /* ~"Ich... weiß es nicht."~ */ GOTO 22
  IF ~  CheckStatGT(Protagonist,11,CHR)
~ THEN REPLY #29269 /* ~Lüge: "Ich heiße Adahn."~ */ DO ~IncrementGlobal("Adahn","GLOBAL",1)
IncrementGlobalOnceEx("GLOBALChaotic_Diligence_2","GLOBALLaw",-1)
~ GOTO 20
  IF ~  CheckStatLT(Protagonist,12,CHR)
~ THEN REPLY #29270 /* ~Lüge: "Ich heiße Adahn."~ */ DO ~IncrementGlobal("Adahn","GLOBAL",1)
IncrementGlobalOnceEx("GLOBALChaotic_Diligence_2","GLOBALLaw",-1)
~ GOTO 10
  IF ~~ THEN REPLY #29271 /* ~"Das geht dich überhaupt nichts an."~ */ GOTO 21
END

IF ~~ THEN BEGIN 20 // from: 19.1 21.1
  SAY #29186 /* ~"Hmm. Na gut, 'Adahn.' Leb wohl."~ */
  IF ~~ THEN REPLY #29272 /* ~Geh.~ */ EXIT
END

IF ~~ THEN BEGIN 21 // from: 19.3
  SAY #29187 /* ~"Du hast mich grundlos auf der Straße angesprochen, mir deine Gegenwart aufgezwungen, und jetzt besitzt du auch noch die *Frechheit*, zu sagen, daß mich das nichts angeht? Und ob mich das was angeht!"~ */
  IF ~~ THEN REPLY #29273 /* ~"Ich... weiß es nicht."~ */ GOTO 22
  IF ~  CheckStatGT(Protagonist,11,CHR)
~ THEN REPLY #29274 /* ~Lüge: "Ich heiße Adahn."~ */ DO ~IncrementGlobal("Adahn","GLOBAL",1)
IncrementGlobalOnceEx("GLOBALChaotic_Diligence_2","GLOBALLaw",-1)
~ GOTO 20
  IF ~  CheckStatLT(Protagonist,12,CHR)
~ THEN REPLY #29275 /* ~Lüge: "Ich heiße Adahn."~ */ DO ~IncrementGlobal("Adahn","GLOBAL",1)
IncrementGlobalOnceEx("GLOBALChaotic_Diligence_2","GLOBALLaw",-1)
~ GOTO 10
END

IF ~~ THEN BEGIN 22 // from: 19.0 21.0
  SAY #29188 /* ~"Du glaubst doch wohl nicht, daß du so einfach davonkommst? Wie heißt du?! Raus mit der Sprache!"
~ */
  IF ~  CheckStatGT(Protagonist,12,CHR)
CheckStatGT(Protagonist,12,INT)
~ THEN REPLY #29276 /* ~"Das ist eine etwas verworrene Angelegenheit. Bitte hab' Geduld mit mir, denn ich weiß wirklich nicht, wie ich heiße. Ich habe mich selbst vergessen."~ */ GOTO 24
  IF ~~ THEN REPLY #29277 /* ~"Ich weiß es wirklich nicht. Ich habe meine Erinnerungen verloren."~ */ GOTO 23
END

IF ~~ THEN BEGIN 23 // from: 22.1
  SAY #29189 /* ~Eifer sieht dich prüfend mit einem mürrischen Blick an. Schließlich sagt sie: "Na gut. Geh mir aus den Augen, und sieh zu, daß du nicht in Schwierigkeiten gerätst."
~ */
  IF ~~ THEN REPLY #29278 /* ~Geh.~ */ EXIT
END

IF ~~ THEN BEGIN 24 // from: 22.0
  SAY #29190 /* ~"Deine Worte sind zwar sorgfältig gewählt, aber völlig verrückt." Sie runzelt die Stirn. "Ist es wirklich wahr, daß du dich selbst vergessen hast? Jetzt mal raus mit der Sprache, und überleg dir genau, was du als nächstes sagst."~ */
  IF ~~ THEN REPLY #29279 /* ~"Ich schwöre es dir: es ist wahr."~ */ GOTO 25
END

IF ~~ THEN BEGIN 25 // from: 24.0 30.0 31.0
  SAY #29191 /* ~Nach einer Weile seufzt sie verzweifelt. "Deine Manieren zeigen mir, daß du gebildet bist, und doch hältst du an einem Leben fest, das aus Herumtreiberei und sinnloser Gewalt besteht. Warum läßt du dich nicht in Sigil nieder? Werde ein steuerzahlender Bewohner, anstatt weiter als blutbeschmierter Nomade durch die Straßen zu ziehen!"~ */
  IF ~~ THEN REPLY #29280 /* ~"Diese Entscheidung liegt leider nicht bei mir."~ */ GOTO 5
  IF ~~ THEN REPLY #29281 /* ~"Ich werd drüber nachdenken. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 26 // from: 8.0 32.0
  SAY #29192 /* ~Sie schüttelt den Kopf. "Ich bin eine vielbeschäftigte Frau. Meine Position als Vierte Friedensrichterin läßt mir wenig Zeit für deine Fragen. Ein anderer Bewohner kann dir bestimmt weiterhelfen."
~ */
  IF ~  BitCheck("0600_Status","AR0600",BIT10)
GlobalLT("Diligence","GLOBAL",4)
~ THEN REPLY #29282 /* ~"Bitte, bevor du gehst, darf ich dich um einen Gefallen bitten?"~ */ DO ~SetGlobal("Diligence","GLOBAL",4)
~ GOTO 27
  IF ~~ THEN REPLY #29283 /* ~"Dann leb wohl, Eifer."~ */ EXIT
END

IF ~~ THEN BEGIN 27 // from: 26.0 32.1
  SAY #29193 /* ~Sie sieht dich neugierig an, sagt aber nichts.~ */
  IF ~~ THEN REPLY #29284 /* ~"Auf meinen Wanderungen scheine ich einige der Bewohner dieses Ortes beleidigt zu haben..."~ */ GOTO 28
END

IF ~~ THEN BEGIN 28 // from: 27.0
  SAY #29194 /* ~Sie beendet den Satz für dich: "und hast dadurch die Aufmerksamkeit des Harmoniums auf dich gezogen, stimmt's? Und du fürchtest, daß sie dich jetzt beobachten?"~ */
  IF ~~ THEN REPLY #29285 /* ~"Ja."~ */ DO ~SetGlobal("MK_Counter","GLOBAL",-5)
~ GOTO 29
END

IF ~~ THEN BEGIN 29 // from: 28.0
  SAY #29195 /* ~Sie schüttelt den Kopf und maßregelt dich wie ein ungezogenes Kind. "Ich werde tun, was ich kann. Aber du darfst in Zukunft nicht mehr so viel Streit vom Zaun brechen."~ */
  IF ~~ THEN REPLY #29286 /* ~"Vielen Dank, liebe Eifer. Leb wohl."~ */ EXIT
END

IF ~  Global("Diligence","GLOBAL",1)
GlobalLT("MK_Counter","GLOBAL",1000)
~ THEN BEGIN 30 // from:
  SAY #29196 /* ~Eifer runzelt die Stirn, als du dich ihr näherst. "Du kommst mir bekannt vor..." Ihr Gesichtsausdruck wird noch griesgrämiger und ihr Gesicht sieht so runzelig aus wie eine Pflaume. "Ja... jetzt erinnere ich mich an dich."~ */
  IF ~  CheckStatGT(Protagonist,12,CHR)
CheckStatGT(Protagonist,12,INT)
~ THEN REPLY #29287 /* ~"Ich fürchte, daß ich dir bei unserem letzten Treffen nicht den nötigen Respekt erwiesen habe. Bitte verzeih mir."~ */ GOTO 25
  IF ~~ THEN REPLY #29288 /* ~"Ich hätte ein paar Fragen..."~ */ GOTO 15
  IF ~~ THEN REPLY #29289 /* ~"Ich werd dann mal gehen. Leb wohl."~ */ EXIT
END

IF ~  Global("Diligence","GLOBAL",2)
GlobalLT("MK_Counter","GLOBAL",1000)
~ THEN BEGIN 31 // from:
  SAY #29197 /* ~Eifer wirft dir einen äußerst empörten Blick zu. "Hab' ich nicht gesagt, daß du von mir wegbleiben sollst? Ich hab' dich gewarnt, ich werde die Wache rufen..."~ */
  IF ~  CheckStatGT(Protagonist,15,CHR)
CheckStatGT(Protagonist,12,INT)
~ THEN REPLY #29290 /* ~"Eifer... warte, ich bitte dich. Ich fürchte, daß ich dir bei unserem letzten Treffen nicht den nötigen Respekt erwiesen habe. Bitte verzeih mir."~ */ GOTO 25
  IF ~~ THEN REPLY #29291 /* ~"Aber ich hätte da ein paar Fragen..."~ */ GOTO 11
  IF ~~ THEN REPLY #29292 /* ~"Na gut, dann gehe ich. Leb wohl."~ */ EXIT
END

IF ~  GlobalGT("Diligence","GLOBAL",2)
GlobalLT("MK_Counter","GLOBAL",1000)
~ THEN BEGIN 32 // from:
  SAY #29198 /* ~Eifer nickt, als du dich ihr näherst. "Sei wiedermals gegrüßt."~ */
  IF ~~ THEN REPLY #29293 /* ~"Sei gegrüßt, Eifer. Ich hätte da ein paar Fragen..."~ */ GOTO 26
  IF ~  BitCheck("0600_Status","AR0600",BIT10)
GlobalLT("Diligence","GLOBAL",4)
~ THEN REPLY #29294 /* ~"Sei gegrüßt. Darf ich dich um einen Gefallen bitten?"~ */ DO ~SetGlobal("Diligence","GLOBAL",4)
~ GOTO 27
  IF ~~ THEN REPLY #29295 /* ~"Komm nur gerade zufällig vorbei. Leb wohl, Eifer."~ */ EXIT
END

IF ~  GlobalGT("MK_Counter","GLOBAL",999)
~ THEN BEGIN 33 // from:
  SAY #29199 /* ~Die Frau schaudert bei deinem Anblick voller Überraschung zurück. "Bist du *verrückt*, mit deinem Ansehen der Vierten Friedensrichterin des Bezirks unter die Augen zu treten? Wachen! Wachen!"~ */
  IF ~~ THEN REPLY #29296 /* ~Greif sie an.~ */ DO ~SetGlobal("Call_MK","GLOBAL",1)
Enemy()
Help()
RunAwayFromEx(Protagonist,TWO_AI_SECONDS,FALSE)
~ EXIT
  IF ~~ THEN REPLY #29297 /* ~Versuch zu verschwinden, bevor jemand kommt.~ */ DO ~SetGlobal("Call_MK","GLOBAL",1)
Enemy()
Help()
RunAwayFromEx(Protagonist,TWO_AI_SECONDS,FALSE)
~ EXIT
END
