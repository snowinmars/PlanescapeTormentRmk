// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DHAILCII.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\de_DE\dialog.tlk
// dialogF  : (none)

BEGIN ~DHAILCII~
//////////////////////////////////////////////////
// WARNING: this file contains non-trivial WEIGHTs
//////////////////////////////////////////////////

IF WEIGHT #0 ~  GlobalGT("Kill_Githzerai_KAPUTZ","GLOBAL",0)
~ THEN BEGIN 0 // from:
  SAY #2919 /* ~Dieser fähige Githzeraiische Krieger hat dich beim Näherkommen scharf beobachtet. Als du herankommst, zieht er plötzlich sein Schwert und greift an!~ */
  IF ~~ THEN REPLY #45139 /* ~Kämpfe.~ */ DO ~Enemy()
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
~ EXIT
  IF ~~ THEN REPLY #45140 /* ~Flüchte.~ */ DO ~Enemy()
Attack(Protagonist)
~ EXIT
END

IF WEIGHT #2 /* Triggers after states #: 10 even though they appear after this state */
~  !NearbyDialog("DDakkon")
NumTimesTalkedTo(0)
GlobalGT("Vristigor","GLOBAL",1)
~ THEN BEGIN 1 // from:
  SAY #45141 /* ~Dieser Mann hat eine gelbliche Haut und ein hageres Gesicht. Sein Körper ist voller Tätowierungen und Narben. Über die Brust trägt er eine lange Klinge. Seine Augen sind wie zwei kleine schwarze Steine. Er verneigt sich vor dir, als du näherkommst. "Sei gegrüßt, Schwertschwinger. Ich *weiß*, daß du uns rechtzeitig gewarnt hast. Du kannst mich fragen, was du willst."~ */
  IF ~~ THEN REPLY #45142 /* ~"Wer bist du?"~ */ GOTO 18
  IF ~~ THEN REPLY #45143 /* ~"Kannst du dich meiner Gruppe anschließen?"~ */ GOTO 2
  IF ~~ THEN REPLY #45144 /* ~"Woher hast du all diese Narben?"~ */ GOTO 4
  IF ~~ THEN REPLY #45145 /* ~"Woher hast du diese Tätowierungen?"~ */ GOTO 5
  IF ~  Global("Know_Githyanki","GLOBAL",0)
Global("Met_Githyanki","GLOBAL",1)
~ THEN REPLY #45146 /* ~"Was ist der Unterschied zwischen Githzerei und Githyanki?"~ */ DO ~SetGlobal("Know_Githyanki","GLOBAL",1)
~ GOTO 6
  IF ~  Global("Know_Githyanki","GLOBAL",1)
~ THEN REPLY #45147 /* ~"Was ist der Unterschied zwischen Githzerei und Githyanki?"~ */ GOTO 6
  IF ~  Global("Know_Githzerai_Speak","GLOBAL",0)
~ THEN REPLY #45148 /* ~"Kannst du mir deine Sprache beibringen?"~ */ GOTO 7
  IF ~~ THEN REPLY #45149 /* ~"Nein, danke. Ich brauch nichts. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.1 3.1 9.0 21.1 22.1
  SAY #45150 /* ~"Ich kann nicht. Ich habe meinem Volk gegenüber eine Verpflichtung."~ */
  IF ~~ THEN REPLY #45151 /* ~"Was ist das für eine Verpflichtung?"~ */ GOTO 47
  IF ~~ THEN REPLY #45152 /* ~"Dann würd ich gern noch ein paar Fragen stellen."~ */ GOTO 3
END

IF ~~ THEN BEGIN 3 // from: 2.1 6.1 7.0 8.0 12.0 13.1 14.0 14.1 15.2 16.1 17.1 18.3 19.0 19.1 20.0 23.0 24.0 26.0 40.2 47.0
  SAY #45153 /* ~"Stell deine Fragen, aber sei nicht wie Ach'alis Flut - sei direkt und komm auf den Punkt."~ */
  IF ~~ THEN REPLY #45154 /* ~"Wer bist du?"~ */ GOTO 18
  IF ~~ THEN REPLY #45155 /* ~"Kannst du dich meiner Gruppe anschließen?"~ */ GOTO 2
  IF ~~ THEN REPLY #45156 /* ~"Woher hast du all diese Narben?"~ */ GOTO 4
  IF ~~ THEN REPLY #45157 /* ~"Woher hast du diese Tätowierungen?"~ */ GOTO 5
  IF ~  Global("Know_Githyanki","GLOBAL",0)
Global("Met_Githyanki","GLOBAL",1)
~ THEN REPLY #45158 /* ~"Was ist der Unterschied zwischen Githzerei und Githyanki?"~ */ DO ~SetGlobal("Know_Githyanki","GLOBAL",1)
~ GOTO 6
  IF ~  Global("Know_Githyanki","GLOBAL",1)
~ THEN REPLY #45159 /* ~"Was ist der Unterschied zwischen Githzerei und Githyanki?"~ */ GOTO 6
  IF ~  Global("Know_Githzerai_Speak","GLOBAL",0)
~ THEN REPLY #45160 /* ~"Kannst du mir deine Sprache beibringen?"~ */ GOTO 7
  IF ~~ THEN REPLY #45161 /* ~"Nein, danke. Ich brauch nichts. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 1.2 3.2 9.1 21.2 22.2 25.1
  SAY #45162 /* ~Er hebt seine Arme hoch und hält sie ehrfürchtig vors Gesicht, dann vor die Brust. "Die Narben in meinem Gesicht stammen von verschiedenen Begegnungen in den Hallen von Ilsensine. Beinahe hätten diese feigen *Illithiden* mein Rrakma-Band verschlungen. Die Narben oben auf meinem Torso hingegen stammen von dem schwachen Hieb einer githyankischen Chaosklinge." Mit einem Kopfnicken macht er auf deine Narben aufmerksm. "Erzähl mir die Geschichte deiner Narben."~ */
  IF ~~ THEN REPLY #45163 /* ~"Ich erinnere mich nicht, woher ich sie alle habe."~ */ GOTO 11
  IF ~~ THEN REPLY #45164 /* ~"Sie stammen von vielen Kämpfen. Aber das ist eine viel zu lange Geschichte..."~ */ GOTO 19
  IF ~  GlobalLT("Hail_Mad","GLOBAL",3)
~ THEN REPLY #45165 /* ~"Es sind einfach nur Narben. Ich hätte da noch ein paar Fragen..."~ */ DO ~IncrementGlobal("Hail_Mad","GLOBAL",1)
~ GOTO 9
  IF ~  Global("Hail_Mad","GLOBAL",3)
~ THEN REPLY #45166 /* ~"Es sind einfach nur Narben. Ich hätte da noch ein paar Fragen..."~ */ DO ~IncrementGlobal("Hail_Mad","GLOBAL",1)
~ GOTO 10
END

IF ~~ THEN BEGIN 5 // from: 1.3 3.3 9.2 21.3 22.3 25.2
  SAY #45167 /* ~"Sie erzählen die Geschichte meines Geschlechts und schenken mir ihre Stärke und ihren Geist. Die eine, die Arja'rok von der Insel des Siegels gemacht hat, erzählt von meinem Bruder Ji'li'kai, der seine Feinde in Shrak'at'lor eingemauert hat. Diese hier ist von Fell, dem gehenden Dabus; sie erzählt von der Schlacht, die Ro'jhi und ich gegen sieben Slaadi in den Ebenen des Limbus geführt haben, bevor der achte Ro'jhis Geist lähmte." Mit einem Kopfnicken weist er auf deine Tätowierungen. "Erzähl mir die Geschichte deiner Tätowierungen."~ */
  IF ~~ THEN REPLY #45168 /* ~"Sie erzählen, was ich erreichen will."~ */ GOTO 13
  IF ~~ THEN REPLY #45169 /* ~"Sie erzählen von all den Hindernissen, die ich überwunden habe, und von meiner Vergangenheit, damit ich sie nicht vergesse."~ */ GOTO 14
  IF ~  GlobalLT("Hail_Mad","GLOBAL",3)
~ THEN REPLY #45170 /* ~"Es sind einfach nur Tätowierungen. Erzähl mir von Fell."~ */ DO ~IncrementGlobal("Hail_Mad","GLOBAL",1)
~ GOTO 15
  IF ~  Global("Hail_Mad","GLOBAL",3)
~ THEN REPLY #45171 /* ~"Es sind einfach nur Tätowierungen. Erzähl mir von Fell."~ */ DO ~IncrementGlobal("Hail_Mad","GLOBAL",1)
~ GOTO 10
  IF ~  GlobalLT("Hail_Mad","GLOBAL",3)
~ THEN REPLY #45172 /* ~"Es sind einfach nur Tätowierungen. Ich hätte noch ein paar Fragen..."~ */ DO ~IncrementGlobal("Hail_Mad","GLOBAL",1)
~ GOTO 9
  IF ~  Global("Hail_Mad","GLOBAL",3)
~ THEN REPLY #45173 /* ~"Es sind einfach nur Tätowierungen. Ich hätte noch ein paar Fragen..."~ */ DO ~IncrementGlobal("Hail_Mad","GLOBAL",1)
~ GOTO 10
END

IF ~~ THEN BEGIN 6 // from: 1.4 1.5 3.4 3.5 9.3 9.4 18.0 18.1 21.4 21.5 22.4 22.5 25.3 25.4
  SAY #45174 /* ~Er kneift seine Augen zusammen und spuckt auf den Boden. "Sie sind nichts als ein Haufen hundsföttischer Lügner, Diebe und Verräter, denen man nicht über den Weg trauen kann. Falls du je einem begegnen solltest, so denk an die Lehre von Selqants Herz und Vilquars Auge - und denk dran, daß die Githyanki dreimal so schlimm sind."~ */
  IF ~~ THEN REPLY #45175 /* ~"Was für eine Lehre?"~ */ GOTO 8
  IF ~~ THEN REPLY #45176 /* ~"Danke. Ich hätte da noch ein paar Fragen..."~ */ GOTO 3
  IF ~~ THEN REPLY #45177 /* ~"Danke. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 7 // from: 1.6 3.6 9.5 18.2 21.6 22.6 25.5
  SAY #45178 /* ~Er verneigt sich. "Wenn ich nicht meinem Volk verpflichtet wäre, würde ich es gerne tun. Doch wie bei einem Gast an Torygs Tafel ist mein Teller voll. Ich kann nicht. Vielleicht kann dir jemand anderes helfen..."~ */
  IF ~~ THEN REPLY #45179 /* ~"Trotzdem vielen Dank. Ich hätte da noch ein paar Fragen..."~ */ GOTO 3
  IF ~~ THEN REPLY #45180 /* ~"Trotzdem vielen Dank. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 8 // from: 6.0
  SAY #45181 /* ~"Selqant und Vilquar waren für ihre Grausamkeit und ihre verräterische Seele bekannt - und sie waren Githzerai. Ihre Exzesse sind nichts im Vergleich zu den Githyanki, der hartherzigsten Schädlingsbrut, die je über das Silbermeer gesegelt ist."~ */
  IF ~~ THEN REPLY #45182 /* ~"Ich hätte da noch ein paar andere Fragen..."~ */ GOTO 3
  IF ~~ THEN REPLY #45183 /* ~"Danke, daß du mir deine Zeit geopfert hast. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 9 // from: 4.2 5.4 11.0
  SAY #45184 /* ~Er hält einen Moment inne. Dir schwant, daß er mit dieser Antwort nicht zufrieden ist. "Ach'alis Flut, dann stell deine Fragen."~ */
  IF ~~ THEN REPLY #45185 /* ~"Kannst du dich meiner Gruppe anschließen?"~ */ GOTO 2
  IF ~~ THEN REPLY #45186 /* ~"Woher hast du all diese Narben?"~ */ GOTO 4
  IF ~~ THEN REPLY #45187 /* ~"Woher hast du diese Tätowierungen?"~ */ GOTO 5
  IF ~  Global("Know_Githyanki","GLOBAL",0)
Global("Met_Githyanki","GLOBAL",1)
~ THEN REPLY #45188 /* ~"Was ist der Unterschied zwischen Githzerei und Githyanki?"~ */ DO ~SetGlobal("Know_Githyanki","GLOBAL",1)
~ GOTO 6
  IF ~  Global("Know_Githyanki","GLOBAL",1)
~ THEN REPLY #45191 /* ~"Was ist der Unterschied zwischen Githzerei und Githyanki?"~ */ GOTO 6
  IF ~  Global("Know_Githzerai_Speak","GLOBAL",0)
~ THEN REPLY #45192 /* ~"Kannst du mir deine Sprache beibringen?"~ */ GOTO 7
  IF ~~ THEN REPLY #45194 /* ~"Nein, danke. Ich brauch nichts. Leb wohl."~ */ EXIT
END

IF WEIGHT #1 ~  Global("Hail_Mad","GLOBAL",4)
~ THEN BEGIN 10 // from: 4.3 5.3 5.5 11.1
  SAY #45197 /* ~Seine Augen funkeln vor Zorn, doch er verneigt sich und sagt: "Du erweist dir keine Ehre mit deinen Worten. Und ich erweise mir keine Ehre, wenn ich sie mir anhöre. Ich werde nicht mehr mit dir sprechen." Er blinzelt einmal und schaut an dir vorbei.~ */
  IF ~~ THEN REPLY #45198 /* ~"Ich möchte nur ein paar Fragen stellen..."~ */ EXIT
  IF ~~ THEN REPLY #45199 /* ~"Dann leb wohl."~ */ EXIT
  IF ~~ THEN REPLY #45200 /* ~Greif ihn an.~ */ DO ~ForceAttack(Protagonist,Myself)
Enemy()
Attack(Protagonist)
~ EXIT
END

IF ~~ THEN BEGIN 11 // from: 4.0
  SAY #45201 /* ~Seine Miene verändert sich leicht - du kannst aber nicht sagen, ob es Verwirrung oder Verachtung ist. "Wie kann es sein, daß Narben nicht die Geschichte ihrer Entstehung erzählen?"~ */
  IF ~  GlobalLT("Hail_Mad","GLOBAL",3)
~ THEN REPLY #45202 /* ~"Es sind Narben wie alle anderen auch."~ */ DO ~IncrementGlobal("Hail_Mad","GLOBAL",1)
~ GOTO 9
  IF ~  Global("Hail_Mad","GLOBAL",3)
~ THEN REPLY #45203 /* ~"Es sind Narben wie alle anderen auch."~ */ DO ~IncrementGlobal("Hail_Mad","GLOBAL",1)
~ GOTO 10
  IF ~~ THEN REPLY #45204 /* ~"Ich erinnere mich weder an die Geschichte meiner Narben noch an meine eigene Vergangenheit."~ */ GOTO 12
END

IF ~~ THEN BEGIN 12 // from: 11.2
  SAY #45205 /* ~Er hält kurz inne, verinnerlicht deine Worte und sagt: "T'chas Klage. Ich beweine den Verlust deines Gedächtnisses und deiner Geschichte."~ */
  IF ~~ THEN REPLY #45206 /* ~"Danke. Ich hätte noch ein paar Fragen..."~ */ GOTO 3
  IF ~~ THEN REPLY #45207 /* ~"Danke. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 13 // from: 5.0
  SAY #45208 /* ~Er wartet kurz. Dann schließt er die Augen und verneigt sich erneut. "Deine Tätowierungen rücken die Zukunft in die Gegenwart und geben ihr Fokus. In ihnen steckt die Weisheit eines Anarchen. Deine Geschichten sind bekannt."~ */
  IF ~~ THEN REPLY #45209 /* ~"Danke. Hattest du vorhin von Fell gesprochen?"~ */ GOTO 15
  IF ~~ THEN REPLY #45210 /* ~"Danke. Ich hätte da noch ein paar Fragen..."~ */ GOTO 3
  IF ~~ THEN REPLY #45211 /* ~"Danke. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 14 // from: 5.1
  SAY #45212 /* ~Er schließt die Augen und verneigt sich. "Deine Geschichten sind bekannt, Schwertschwinger."~ */
  IF ~~ THEN REPLY #45213 /* ~"Deine auch. Ich hätte da noch ein paar Fragen..."~ */ DO ~IncrementGlobal("Hail_Mad","GLOBAL",-1)
~ GOTO 3
  IF ~~ THEN REPLY #45214 /* ~"Ich hätte da noch ein paar Fragen."~ */ GOTO 3
  IF ~~ THEN REPLY #45215 /* ~"Deine auch. Leb wohl."~ */ DO ~IncrementGlobal("Hail_Mad","GLOBAL",-1)
~ EXIT
  IF ~~ THEN REPLY #45216 /* ~"Danke. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 15 // from: 5.2 13.0
  SAY #45217 /* ~"Der Dabus-der-läuft ist ein Meister dieser Fertigkeit. Manche Tätowierungen erzählen Geschichten. Andere erzählen von dem Geist. Die Tätowierungen, die Fell in die Haut einbringt, verleihen - basierend auf der Geschichte - Stärke des Körpers und Stärke der Seele."~ */
  IF ~  Global("Fell","GLOBAL",0)
~ THEN REPLY #45218 /* ~"Wo finde ich Fell?"~ */ GOTO 16
  IF ~~ THEN REPLY #45219 /* ~"Was für eine Stärke?"~ */ GOTO 17
  IF ~~ THEN REPLY #45220 /* ~"Danke. Ich hätte da noch ein paar Fragen..."~ */ GOTO 3
  IF ~~ THEN REPLY #45221 /* ~"Danke. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 16 // from: 15.0 17.0 40.0
  SAY #45222 /* ~"Du findest ihn im Stock, im nördlichen Teil des südöstlichen Abschnitts. Die Wegbeschreibungen in dieser Stadt lassen zu wünschen übrig - sie sind wie das Gerede eines Anarchen, der sich selbst nicht *kennt*." ~ */
  IF ~~ THEN REPLY #45223 /* ~"Inwiefern können seine Tätowierungen dem Träger Stärke verleihen?"~ */ GOTO 17
  IF ~~ THEN REPLY #45224 /* ~"Ich hätte da noch ein paar Fragen."~ */ GOTO 3
  IF ~~ THEN REPLY #45225 /* ~"Danke. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 17 // from: 15.1 16.0 40.1
  SAY #45226 /* ~"Die Tätowierung, die Ro'jhi, den Bezwinger der sieben Slaadi, darstellt, verleiht mir Stärke, wenn der Feind in der Überzahl ist und unbezwingbar scheint. Diese Stärke hängt anscheinend von der eigenen Erfahrung ab: Erzähl Fell deine Geschichten. Seine Tätowierungen werden ihre Wirkung entfalten, wenn er sie dir ins Fleisch ritzt."~ */
  IF ~~ THEN REPLY #45227 /* ~"Wo kann ich ihn finden?"~ */ GOTO 16
  IF ~~ THEN REPLY #45228 /* ~"Danke. Ich hätte da noch ein paar Fragen..."~ */ GOTO 3
  IF ~~ THEN REPLY #45229 /* ~"Danke. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 18 // from: 1.0 3.0 21.0 22.0 25.0
  SAY #45230 /* ~Er verbeugt sich vor dir. "Ich bin Hailciin, ein Githzerai-Soldat. Ich bin dabei, Vorräte zu sammeln. Ich habe entdeckt, daß diese Stadt wie Try'ig'ors Edelstein ist - oft gepriesen, aber ohne tatsächlichen Wert."~ */
  IF ~  Global("Know_Githyanki","GLOBAL",0)
Global("Met_Githyanki","GLOBAL",1)
~ THEN REPLY #45231 /* ~"Was ist der Unterschied zwischen Githzerei und Githyanki?"~ */ DO ~SetGlobal("Know_Githyanki","GLOBAL",1)
~ GOTO 6
  IF ~  Global("Know_Githyanki","GLOBAL",1)
~ THEN REPLY #45232 /* ~"Was ist der Unterschied zwischen Githzerei und Githyanki?"~ */ GOTO 6
  IF ~  Global("Know_Githzerai_Speak","GLOBAL",0)
~ THEN REPLY #45233 /* ~"Kannst du mir deine Sprache beibringen?"~ */ GOTO 7
  IF ~~ THEN REPLY #45234 /* ~"Ich hätte da noch ein paar Fragen."~ */ GOTO 3
  IF ~~ THEN REPLY #45235 /* ~"Danke. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 19 // from: 4.1
  SAY #45236 /* ~Er verneigt sich vor dir. "Deine Tapferkeit ist bekannt, Schwertschwinger."~ */
  IF ~~ THEN REPLY #45237 /* ~"Deine auch. Ich hätte da noch ein paar Fragen..."~ */ DO ~IncrementGlobal("Hail_Mad","GLOBAL",-1)
~ GOTO 3
  IF ~~ THEN REPLY #45238 /* ~"Ich hätte da noch ein paar Fragen."~ */ GOTO 3
  IF ~~ THEN REPLY #45239 /* ~"Deine auch. Leb wohl."~ */ DO ~IncrementGlobal("Hail_Mad","GLOBAL",-1)
~ EXIT
  IF ~~ THEN REPLY #45240 /* ~"Danke. Leb wohl."~ */ EXIT
END

IF WEIGHT #3 ~  !NearbyDialog("DDakkon")
NumTimesTalkedToGT(0)
GlobalGT("Vristigor","GLOBAL",1)
~ THEN BEGIN 20 // from:
  SAY #45241 /* ~Hailcii'n verneigt sich vor dir. "Sei gegrüßt, Schwertschwinger."~ */
  IF ~~ THEN REPLY #45242 /* ~"Sei gegrüßt. Ich hätte da ein paar Fragen..."~ */ GOTO 3
  IF ~~ THEN REPLY #45247 /* ~"Leb wohl."~ */ EXIT
END

IF WEIGHT #5 /* Triggers after states #: 45 even though they appear after this state */
~  Global("Anazi_Help","GLOBAL",1)
!NearbyDialog("DDakkon")
NumTimesTalkedTo(0)
GlobalLT("Vristigor","GLOBAL",2)
~ THEN BEGIN 21 // from:
  SAY #45248 /* ~Dieser Mann hat eine gelbliche Haut und ein hageres Gesicht. Sein Körper ist voller Tätowierungen und Narben. Über die Brust trägt er eine lange Klinge. Seine Augen sind wie zwei kleine schwarze Steine. Er verbeugt sich, als du näherkommst. "Sei gegrüßt, Schwertschwinger. Ich *weiß*, daß du unserem Volk geholfen hast. Du kannst mich fragen, was du willst."~ */
  IF ~~ THEN REPLY #45249 /* ~"Wer bist du?"~ */ GOTO 18
  IF ~~ THEN REPLY #45250 /* ~"Kannst du dich meiner Gruppe anschließen?"~ */ GOTO 2
  IF ~~ THEN REPLY #45251 /* ~"Woher hast du all diese Narben?"~ */ GOTO 4
  IF ~~ THEN REPLY #45252 /* ~"Woher hast du diese Tätowierungen?"~ */ GOTO 5
  IF ~  Global("Know_Githyanki","GLOBAL",0)
Global("Met_Githyanki","GLOBAL",1)
~ THEN REPLY #45146 /* ~"Was ist der Unterschied zwischen Githzerei und Githyanki?"~ */ DO ~SetGlobal("Know_Githyanki","GLOBAL",1)
~ GOTO 6
  IF ~  Global("Know_Githyanki","GLOBAL",1)
~ THEN REPLY #45147 /* ~"Was ist der Unterschied zwischen Githzerei und Githyanki?"~ */ GOTO 6
  IF ~  Global("Know_Githzerai_Speak","GLOBAL",0)
~ THEN REPLY #45261 /* ~"Kannst du mir deine Sprache beibringen?"~ */ GOTO 7
  IF ~~ THEN REPLY #45253 /* ~"Nein, danke. Ich brauch nichts. Leb wohl."~ */ EXIT
END

IF WEIGHT #6 /* Triggers after states #: 45 even though they appear after this state */
~  GlobalGT("Githzerai","GLOBAL",4)
Global("Anazi_Help","GLOBAL",0)
!NearbyDialog("DDakkon")
NumTimesTalkedTo(0)
GlobalLT("Vristigor","GLOBAL",2)
~ THEN BEGIN 22 // from:
  SAY #45254 /* ~Dieser Mann hat eine gelbliche Haut und ein hageres Gesicht. Sein Körper ist voller Tätowierungen und Narben. Über die Brust trägt er eine lange Klinge. Seine Augen sind wie zwei kleine schwarze Steine. Er verbeugt sich, als du näherkommst. "Sei gegrüßt, Schwertschwinger. Ich *weiß*, daß du unserem Volk geholfen hast. Du kannst mich fragen, was du willst."~ */
  IF ~~ THEN REPLY #45255 /* ~"Wer bist du?"~ */ GOTO 18
  IF ~~ THEN REPLY #45256 /* ~"Kannst du dich meiner Gruppe anschließen?"~ */ GOTO 2
  IF ~~ THEN REPLY #45257 /* ~"Woher hast du all diese Narben?"~ */ GOTO 4
  IF ~~ THEN REPLY #45258 /* ~"Woher hast du diese Tätowierungen?"~ */ GOTO 5
  IF ~  Global("Know_Githyanki","GLOBAL",0)
Global("Met_Githyanki","GLOBAL",1)
~ THEN REPLY #45259 /* ~"Was ist der Unterschied zwischen Githzerei und Githyanki?"~ */ DO ~SetGlobal("Know_Githyanki","GLOBAL",1)
~ GOTO 6
  IF ~  Global("Know_Githyanki","GLOBAL",1)
~ THEN REPLY #45260 /* ~"Was ist der Unterschied zwischen Githzerei und Githyanki?"~ */ GOTO 6
  IF ~  Global("Know_Githzerai_Speak","GLOBAL",0)
~ THEN REPLY #45261 /* ~"Kannst du mir deine Sprache beibringen?"~ */ GOTO 7
  IF ~~ THEN REPLY #45262 /* ~"Nein, danke. Ich brauch nichts. Leb wohl."~ */ EXIT
END

IF WEIGHT #7 /* Triggers after states #: 45 even though they appear after this state */
~  Global("Anazi_Help","GLOBAL",1)
!NearbyDialog("DDakkon")
NumTimesTalkedToGT(0)
GlobalLT("Vristigor","GLOBAL",2)
~ THEN BEGIN 23 // from:
  SAY #45263 /* ~Hailcii'n verneigt sich vor dir. "Sei gegrüßt, Schwertschwinger."~ */
  IF ~~ THEN REPLY #45264 /* ~"Sei gegrüßt. Ich hätte da ein paar Fragen..."~ */ GOTO 3
  IF ~~ THEN REPLY #45265 /* ~"Leb wohl."~ */ EXIT
END

IF WEIGHT #8 /* Triggers after states #: 45 even though they appear after this state */
~  GlobalGT("Githzerai","GLOBAL",4)
Global("Anazi_Help","GLOBAL",0)
!NearbyDialog("DDakkon")
NumTimesTalkedToGT(0)
GlobalLT("Vristigor","GLOBAL",2)
~ THEN BEGIN 24 // from:
  SAY #45266 /* ~Hailcii'n verneigt sich vor dir. "Sei gegrüßt, Schwertschwinger."~ */
  IF ~~ THEN REPLY #45267 /* ~"Sei gegrüßt. Ich hätte da ein paar Fragen..."~ */ GOTO 3
  IF ~~ THEN REPLY #45268 /* ~"Leb wohl."~ */ EXIT
END

IF WEIGHT #9 /* Triggers after states #: 45 even though they appear after this state */
~  NumTimesTalkedTo(0)
!NearbyDialog("DDakkon")
GlobalLT("Vristigor","GLOBAL",2)
~ THEN BEGIN 25 // from:
  SAY #45269 /* ~Dieser Mann hat eine gelbliche Haut und ein hageres Gesicht. Sein Körper ist voller Tätowierungen und Narben. Über die Brust trägt er eine lange Klinge. Seine Augen sind wie zwei kleine schwarze Steine. Er beobachtet dich, als du näherkommst und wartet, bis du etwas sagst. "Ich *weiß* nicht, wer du bist... Aber ich werde mit dir sprechen."~ */
  IF ~~ THEN REPLY #45270 /* ~"Wer bist du?"~ */ GOTO 18
  IF ~~ THEN REPLY #45271 /* ~"Woher hast du all diese Narben?"~ */ GOTO 4
  IF ~~ THEN REPLY #45272 /* ~"Woher hast du diese Tätowierungen?"~ */ GOTO 5
  IF ~  Global("Know_Githyanki","GLOBAL",0)
Global("Met_Githyanki","GLOBAL",1)
~ THEN REPLY #45273 /* ~"Was ist der Unterschied zwischen Githzerei und Githyanki?"~ */ DO ~SetGlobal("Know_Githyanki","GLOBAL",1)
~ GOTO 6
  IF ~  Global("Know_Githyanki","GLOBAL",1)
~ THEN REPLY #45274 /* ~"Was ist der Unterschied zwischen Githzerei und Githyanki?"~ */ GOTO 6
  IF ~  Global("Know_Githzerai_Speak","GLOBAL",0)
~ THEN REPLY #45275 /* ~"Kannst du mir deine Sprache beibringen?"~ */ GOTO 7
  IF ~~ THEN REPLY #45276 /* ~"Nein, danke. Ich brauch nichts. Leb wohl."~ */ EXIT
END

IF WEIGHT #10 /* Triggers after states #: 45 even though they appear after this state */
~  NumTimesTalkedToGT(0)
!NearbyDialog("DDakkon")
GlobalLT("Vristigor","GLOBAL",2)
~ THEN BEGIN 26 // from:
  SAY #45277 /* ~Hailciin beobachtet dich gelassen, als du näherkommst, und entbietet dir ein lakonisches "Sei gegrüßt, Reisender."~ */
  IF ~~ THEN REPLY #45278 /* ~"Sei gegrüßt. Ich hätte da ein paar Fragen..."~ */ GOTO 3
  IF ~~ THEN REPLY #45279 /* ~"Leb wohl."~ */ EXIT
END

IF WEIGHT #11 /* Triggers after states #: 45 even though they appear after this state */
~  NumTimesTalkedTo(0)
NearbyDialog("DDakkon")
~ THEN BEGIN 27 // from:
  SAY #45280 /* ~Dieser Mann hat eine gelbliche Haut und ein hageres Gesicht. Sein Körper ist voller Tätowierungen und Narben. Über die Brust trägt er eine lange Klinge. Seine Augen sind wie zwei kleine schwarze Steine. Als du näherkommst, verbeugt er sich vor Dak'kon. "Zu deinen Diensten, *Zerth.*"~ */
  IF ~~ THEN EXTERN ~DDAKKON~ 160
END

IF ~~ THEN BEGIN 28 // from:
  SAY #45281 /* ~"Ich *kenne* seine Worte, *Zerth.* Nicht jedoch seine Taten. Sein Schatten zeugt von einem, der viel gekämpft und alle besiegt hat, die sich ihm widersetzt haben. Sehen meine Augen nicht hinter den stehenden Kreis?"~ */
  IF ~~ THEN EXTERN ~DDAKKON~ 161
END

IF ~~ THEN BEGIN 29 // from:
  SAY #45282 /* ~"Ich werde ihn anhören, *Zerth.*" Er dreht sich zu dir um und wartet auf deine Fragen. "Stell deine Fragen. Leite sie, wie du deinen Verstand leiten würdest."~ */
  IF ~~ THEN REPLY #45283 /* ~"Wer bist du?"~ */ GOTO 31
  IF ~~ THEN REPLY #45284 /* ~"Woher hast du all diese Narben?"~ */ GOTO 32
  IF ~~ THEN REPLY #45285 /* ~"Woher hast du diese Tätowierungen?"~ */ GOTO 37
  IF ~  Global("Know_Githyanki","GLOBAL",0)
Global("Met_Githyanki","GLOBAL",1)
~ THEN REPLY #45146 /* ~"Was ist der Unterschied zwischen Githzerei und Githyanki?"~ */ DO ~SetGlobal("Know_Githyanki","GLOBAL",1)
~ GOTO 48
  IF ~  Global("Know_Githyanki","GLOBAL",1)
~ THEN REPLY #45147 /* ~"Was ist der Unterschied zwischen Githzerei und Githyanki?"~ */ GOTO 48
  IF ~  Global("Know_Githzerai_Speak","GLOBAL",0)
~ THEN REPLY #45286 /* ~"Kannst du mir deine Sprache beibringen?"~ */ GOTO 43
  IF ~~ THEN REPLY #45287 /* ~"Nein, danke. Ich brauch nichts. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 30 // from: 31.0 34.0 35.0 36.0 38.1 39.1 41.1 42.1 43.0 45.0 46.0 48.1 49.0
  SAY #45288 /* ~"Jetzt frag schon."~ */
  IF ~~ THEN REPLY #45289 /* ~"Wer bist du?"~ */ GOTO 31
  IF ~~ THEN REPLY #45290 /* ~"Woher hast du all diese Narben?"~ */ GOTO 32
  IF ~~ THEN REPLY #45291 /* ~"Woher hast du diese Tätowierungen?"~ */ GOTO 37
  IF ~  Global("Know_Githyanki","GLOBAL",0)
Global("Met_Githyanki","GLOBAL",1)
~ THEN REPLY #45146 /* ~"Was ist der Unterschied zwischen Githzerei und Githyanki?"~ */ DO ~SetGlobal("Know_Githyanki","GLOBAL",1)
~ GOTO 48
  IF ~  Global("Know_Githyanki","GLOBAL",1)
~ THEN REPLY #45147 /* ~"Was ist der Unterschied zwischen Githzerei und Githyanki?"~ */ GOTO 48
  IF ~  Global("Know_Githzerai_Speak","GLOBAL",0)
~ THEN REPLY #45292 /* ~"Kannst du mir deine Sprache beibringen?"~ */ GOTO 43
  IF ~~ THEN REPLY #45293 /* ~"Nein, danke. Ich brauch nichts. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 31 // from: 29.0 30.0 44.0
  SAY #45294 /* ~Er verbeugt sich vor dir. "Ich bin Hailciin, ein Githzerai-Soldat. Ich bin dabei, Vorräte zu sammeln. Ich hab entdeckt, daß diese Stadt wie Try'ig'ors Edelstein ist - oft gepriesen, aber ohne tatsächlichen Wert. Die Luft ist schlecht für einen vom Volk, und die Leute *kennen* sich selbst nicht. Sie sind leere Hüllen."~ */
  IF ~~ THEN REPLY #45295 /* ~"Ich verstehe. Ich hätte da noch ein paar Fragen..."~ */ GOTO 30
  IF ~~ THEN REPLY #45296 /* ~"In der Tat. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 32 // from: 29.1 30.1 44.1
  SAY #45297 /* ~Er hebt seine Arme hoch und hält sie ehrfürchtig vors Gesicht, dann vor die Brust. "Die Narben in meinem Gesicht stammen von verschiedenen Begegnungen in den Hallen von Ilsensine. Beinahe hätten diese feigen *Illithiden* mein Rrakma-Band verschlungen. Die Narben oben auf meinem Torso hingegen stammen von dem schwachen Hieb einer githyankischen Chaosklinge." Mit einem Kopfnicken macht er auf deine Narben aufmerksm. "Erzähl mir die Geschichte deiner Narben."~ */
  IF ~~ THEN EXTERN ~DDAKKON~ 162
END

IF ~~ THEN BEGIN 33 // from:
  SAY #45298 /* ~Seine Miene verändert sich leicht - du kannst aber nicht sagen, ob es Verwirrung oder Verachtung ist. "Wie kann es sein, daß Narben nicht die Geschichte ihrer Entstehung erzählen?"~ */
  IF ~~ THEN REPLY #45299 /* ~"Es sind Narben wie alle anderen auch."~ */ GOTO 34
  IF ~~ THEN REPLY #45300 /* ~"Ich erinnere mich weder an die Geschichte meiner Narben noch an meine eigene Vergangenheit."~ */ GOTO 35
END

IF ~~ THEN BEGIN 34 // from: 33.0 37.2
  SAY #45301 /* ~Er wirft Dak'kon einen undurchsichtigen Blick zu. Dir kommt es vor, als hättest du irgendeinen Test nicht bestanden. "Möchtest du noch mehr *wissen*?"~ */
  IF ~~ THEN REPLY #45302 /* ~"Ja."~ */ GOTO 30
  IF ~~ THEN REPLY #45309 /* ~"Nein. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 35 // from: 33.1
  SAY #45311 /* ~Er hält kurz inne, verinnerlicht deine Worte und sagt: "T'chas Klage. Ich beweine den Verlust deines Gedächtnisses und deiner Geschichte."~ */
  IF ~~ THEN REPLY #45312 /* ~"Danke. Ich hätte noch ein paar Fragen..."~ */ GOTO 30
  IF ~~ THEN REPLY #45314 /* ~"Danke. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 36 // from:
  SAY #45315 /* ~Er verneigt sich vor dir. "Deine Tapferkeit ist bekannt, Schwertschwinger."~ */
  IF ~~ THEN REPLY #45317 /* ~"Ich hätte da noch ein paar Fragen."~ */ GOTO 30
  IF ~~ THEN REPLY #45318 /* ~"Danke. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 37 // from: 29.2 30.2 44.2
  SAY #45319 /* ~"Sie erzählen die Geschichte meines Geschlechts und schenken mir ihre Stärke und ihren Geist. Die eine, die Arja'rok von der Insel des Siegels gemacht hat, erzählt von meinem Bruder Ji'li'kai, der seine Feinde in Shrak'at'lor eingemauert hat. Diese hier ist von Fell, dem gehenden Dabus; sie erzählt von der Schlacht, die Ro'jhi und ich gegen sieben Slaadi in den Ebenen des Limbus geführt haben, bevor der achte Ro'jhis Geist lähmte." Mit einem Kopfnicken weist er auf deine Tätowierungen. "Erzähl mir die Geschichte deiner Tätowierungen."~ */
  IF ~~ THEN REPLY #45320 /* ~"Sie erzählen, was ich erreichen will."~ */ GOTO 38
  IF ~~ THEN REPLY #45321 /* ~"Sie erzählen von all den Hindernissen, die ich überwunden habe, und von meiner Vergangenheit, damit ich sie nicht vergesse."~ */ GOTO 39
  IF ~~ THEN REPLY #45322 /* ~"Es sind einfach nur Tätowierungen. Ich hätte noch ein paar Fragen..."~ */ GOTO 34
END

IF ~~ THEN BEGIN 38 // from: 37.0
  SAY #45323 /* ~Er wartet kurz. Dann schließt er die Augen und verneigt sich erneut. "Deine Tätowierungen rücken die Zukunft in die Gegenwart und geben ihr Fokus. In ihnen steckt die Weisheit eines Anarchen. Deine Geschichten sind bekannt."~ */
  IF ~~ THEN REPLY #45324 /* ~"Danke. Hattest du vorhin von Fell gesprochen?"~ */ GOTO 40
  IF ~~ THEN REPLY #45325 /* ~"Danke. Ich hätte da noch ein paar Fragen..."~ */ GOTO 30
  IF ~~ THEN REPLY #45326 /* ~"Danke. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 39 // from: 37.1
  SAY #45327 /* ~Er schließt die Augen und verneigt sich. "Deine Geschichten sind bekannt, Schwertschwinger."~ */
  IF ~~ THEN REPLY #45328 /* ~"Danke. Hattest du vorhin von Fell gesprochen?"~ */ GOTO 40
  IF ~~ THEN REPLY #45329 /* ~"Ich hätte da noch ein paar Fragen."~ */ GOTO 30
  IF ~~ THEN REPLY #45330 /* ~"Danke. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 40 // from: 38.0 39.0
  SAY #45331 /* ~"Der gehende Dabus ist ein Meister seiner Kunst. Er macht Tätowierungen, die Geschichten erzählen oder einen Geist vermitteln. Die Tätowierungen, die Fell in die Haut einritzt, spenden aufgrund dieser Geschichte dem Träger körperliche und geistige Stärke."~ */
  IF ~  Global("Fell","GLOBAL",0)
~ THEN REPLY #45332 /* ~"Wo finde ich Fell?"~ */ GOTO 16
  IF ~~ THEN REPLY #45333 /* ~"Was für eine Stärke?"~ */ GOTO 17
  IF ~~ THEN REPLY #45334 /* ~"Danke. Ich hätte da noch ein paar Fragen.."~ */ GOTO 3
  IF ~~ THEN REPLY #45335 /* ~"Danke. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 41 // from: 42.0
  SAY #45336 /* ~"Du findest ihn im Stock, im nördlichen Teil des südöstlichen Abschnitts. Die Wegbeschreibungen in dieser Stadt lassen zu wünschen übrig - sie sind wie das Gerede eines Anarchen, der sich selbst nicht *kennt*." ~ */
  IF ~~ THEN REPLY #45337 /* ~"Inwiefern können seine Tätowierungen dem Träger Stärke verleihen?"~ */ GOTO 42
  IF ~~ THEN REPLY #45338 /* ~"Ich hätte da noch ein paar Fragen."~ */ GOTO 30
  IF ~~ THEN REPLY #45339 /* ~"Danke. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 42 // from: 41.0
  SAY #45340 /* ~"Die Tätowierung, die Ro'jhi, den Bezwinger der sieben Slaadi, darstellt, verleiht mir Stärke, wenn der Feind in der Überzahl ist und unbezwingbar scheint. Diese Stärke hängt anscheinend von der eigenen Erfahrung ab: Erzähl Fell deine Geschichten. Seine Tätowierungen werden ihre Wirkung entfalten, wenn er sie dir ins Fleisch ritzt."~ */
  IF ~~ THEN REPLY #45341 /* ~"Wo kann ich ihn finden?"~ */ GOTO 41
  IF ~~ THEN REPLY #45342 /* ~"Danke. Ich hätte da noch ein paar Fragen..."~ */ GOTO 30
  IF ~~ THEN REPLY #45343 /* ~"Danke. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 43 // from: 29.5 30.5 44.5
  SAY #45344 /* ~Er verneigt sich. "Mit dir reist ein unvergleichlicher Meister der Sprache. Frag ihn - vielleicht bringt er sie dir ja bei."~ */
  IF ~~ THEN REPLY #45345 /* ~"Trotzdem vielen Dank. Ich hätte da noch ein paar Fragen..."~ */ GOTO 30
  IF ~~ THEN REPLY #45346 /* ~"Trotzdem vielen Dank. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 44 // from:
  SAY #45347 /* ~"Ich *kenne* seine Worte, *Zerth*, und *weiß*, daß er uns bei der Festung rechtzeitig gewarnt hat. Ich werde ihn anhören."~ */
  IF ~~ THEN REPLY #45348 /* ~"Wer bist du?"~ */ GOTO 31
  IF ~~ THEN REPLY #45349 /* ~"Woher hast du all diese Narben?"~ */ GOTO 32
  IF ~~ THEN REPLY #45350 /* ~"Woher hast du diese Tätowierungen?"~ */ GOTO 37
  IF ~  Global("Know_Githyanki","GLOBAL",0)
Global("Met_Githyanki","GLOBAL",1)
~ THEN REPLY #45146 /* ~"Was ist der Unterschied zwischen Githzerei und Githyanki?"~ */ DO ~SetGlobal("Know_Githyanki","GLOBAL",1)
~ GOTO 48
  IF ~  Global("Know_Githyanki","GLOBAL",1)
~ THEN REPLY #45147 /* ~"Was ist der Unterschied zwischen Githzerei und Githyanki?"~ */ GOTO 48
  IF ~  Global("Know_Githzerai_Speak","GLOBAL",0)
~ THEN REPLY #45351 /* ~"Kannst du mir deine Sprache beibringen?"~ */ GOTO 43
  IF ~~ THEN REPLY #45352 /* ~"Nein, danke. Ich brauch nichts. Leb wohl."~ */ EXIT
END

IF WEIGHT #4 ~  NumTimesTalkedToGT(0)
NearbyDialog("DDakkon")
Global("Vristigor","GLOBAL",2)
~ THEN BEGIN 45 // from:
  SAY #45353 /* ~Hailcii'n verbeugt sich, als du näherkommst. "Es ist mir eine Ehre, erneut deine Gegenwart genießen zu dürfen."~ */
  IF ~~ THEN REPLY #45354 /* ~"Danke. Ich hätte noch ein paar Fragen..."~ */ GOTO 30
  IF ~~ THEN REPLY #45355 /* ~"Danke, aber ich muß weg. Leb wohl."~ */ EXIT
END

IF WEIGHT #12 ~  NumTimesTalkedToGT(0)
NearbyDialog("DDakkon")
GlobalLT("Vristigor","GLOBAL",2)
~ THEN BEGIN 46 // from:
  SAY #45356 /* ~"Du bist wieder hier mit diesem Menschen, *Zerth*. Möchtest du noch mehr *wissen*?"~ */
  IF ~~ THEN REPLY #45357 /* ~"Ja."~ */ GOTO 30
  IF ~~ THEN REPLY #45358 /* ~"Nein. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 47 // from: 2.0
  SAY #45359 /* ~"Ich bin hier, um Vorräte zu sammeln und Verstärkung zu holen. Die Githyanki sind zur Zeit recht kühn. Wir rüsten uns für einen blutigen Krieg."~ */
  IF ~~ THEN REPLY #45360 /* ~"Wie aufregend. Ich würd dir gern noch ein paar Fragen stellen."~ */ GOTO 3
  IF ~~ THEN REPLY #45361 /* ~"Verstehe. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 48 // from: 29.3 29.4 30.3 30.4 44.3 44.4
  SAY #45174 /* ~Er kneift seine Augen zusammen und spuckt auf den Boden. "Sie sind nichts als ein Haufen hundsföttischer Lügner, Diebe und Verräter, denen man nicht über den Weg trauen kann. Falls du je einem begegnen solltest, so denk an die Lehre von Selqants Herz und Vilquars Auge - und denk dran, daß die Githyanki dreimal so schlimm sind."~ */
  IF ~~ THEN REPLY #45175 /* ~"Was für eine Lehre?"~ */ GOTO 49
  IF ~~ THEN REPLY #45176 /* ~"Danke. Ich hätte da noch ein paar Fragen..."~ */ GOTO 30
  IF ~~ THEN REPLY #45177 /* ~"Danke. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 49 // from: 48.0
  SAY #45181 /* ~"Selqant und Vilquar waren für ihre Grausamkeit und ihre verräterische Seele bekannt - und sie waren Githzerai. Ihre Exzesse sind nichts im Vergleich zu den Githyanki, der hartherzigsten Schädlingsbrut, die je über das Silbermeer gesegelt ist."~ */
  IF ~~ THEN REPLY #45182 /* ~"Ich hätte da noch ein paar andere Fragen..."~ */ GOTO 30
  IF ~~ THEN REPLY #45183 /* ~"Danke, daß du mir deine Zeit geopfert hast. Leb wohl."~ */ EXIT
END
