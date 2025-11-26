// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : WDRGUARD.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\de_DE\dialog.tlk
// dialogF  : (none)

BEGIN ~WDRGUARD~
//////////////////////////////////////////////////
// WARNING: this file contains non-trivial WEIGHTs
//////////////////////////////////////////////////

IF WEIGHT #0 ~  Global("Zap","GLOBAL",1)
Global("Rat_Guard","GLOBAL",0)
!NearbyDialog("DAnnah")
~ THEN BEGIN 0 // from:
  SAY #48221 /* ~Diese gelangweilt aussehende Werratte scheint sich über alles froh zu sein, das die Langeweile mindert. "Was willst du, Fleisch?"~ */
  IF ~~ THEN REPLY #48222 /* ~"Ich will raus."~ */ DO ~SetGlobal("Rat_Guard","GLOBAL",1)
~ GOTO 1
  IF ~~ THEN REPLY #48223 /* ~"Ich will nur mit dir sprechen."~ */ DO ~SetGlobal("Rat_Guard","GLOBAL",1)
~ GOTO 10
  IF ~~ THEN REPLY #48224 /* ~"Nichts. Vergiß es."~ */ DO ~SetGlobal("Rat_Guard","GLOBAL",1)
~ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0 10.0 12.1
  SAY #48225 /* ~"Das würdest du gern, was? Warum in aller Welt sollten wir die Befehle Mantuoks ignorieren und den Zorn der Ratten riskieren, hm?"~ */
  IF ~  CheckStatGT(Protagonist,12,STR)
~ THEN REPLY #48226 /* ~"Um eure Leben zu schonen. Wenn du mich jetzt hier rausläßt, laß ich euch leben."~ */ DO ~SetGlobal("Zap","GlOBAL",3)
SetDoorLocked("a1600d10",FALSE)
OpenDoor("a1600d10")
~ GOTO 2
  IF ~  CheckStatLT(Protagonist,13,STR)
~ THEN REPLY #48227 /* ~"Um eure Leben zu schonen. Wenn du mich jetzt hier rausläßt, laß ich euch leben."~ */ GOTO 4
  IF ~~ THEN REPLY #48228 /* ~"Ich verspreche, daß niemand jemals erfahren wird, was ich getan habe... und daß vielleicht später ein paar Münzen rausspringen."~ */ DO ~SetGlobal("Zap","GLOBAL",2)
SetDoorLocked("a1600d10",FALSE)
OpenDoor("A1600d10")
~ GOTO 5
  IF ~  CheckStatLT(Protagonist,13,CHR)
~ THEN REPLY #48229 /* ~"Wie sollten sie das je erfahren?"~ */ GOTO 11
  IF ~~ THEN REPLY #48230 /* ~"Wie wär's mit ein bißchen Klimper?"~ */ GOTO 6
  IF ~  CheckStatGT(Protagonist,12,INT)
~ THEN REPLY #48231 /* ~"Überleg mal: Ich bin ganz klar eine Gefahr für dich, und doch spreche ich mit dir wie mit einem Ebenbürtigen. Glaubst du wirklich, daß mich diese Mauern aufhalten können, wenn ich mir was in den Kopf setze? Ich schlage vor, und zwar ohne dir zu drohen, daß du mich in deinem eigenen Interesse besser gehen läßt."~ */ DO ~SetGlobal("Zap","GLOBAL",2)
SetDoorLocked("a1600d10",FALSE)
OpenDoor("A1600d10")
~ GOTO 5
  IF ~  CheckStatLT(Protagonist,13,INT)
~ THEN REPLY #48232 /* ~"Weil ich hier irgendwann rauskomme, und wenn's soweit ist, dann geht's rund."~ */ GOTO 4
  IF ~~ THEN REPLY #48233 /* ~"Überleg doch selbst mal, ich kann ja nicht an alles denken."~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.0 11.0
  SAY #48234 /* ~Raimon mustert dich sorgfältig von oben bis unten. Als er die Wildheit in deinen Augen und die Größe deiner Muskeln bemerkt, entriegelt und öffnet er behutsam die Tür für dich. Er tritt zur Seite und meidet deinen Blick.~ */
  IF ~~ THEN REPLY #48235 /* ~"Danke, Kumpel."~ */ DO ~AddexperienceParty(3750)
~ GOTO 3
  IF ~~ THEN REPLY #48236 /* ~"Bis dann."~ */ DO ~AddexperienceParty(3750)
~ GOTO 3
END

IF ~~ THEN BEGIN 3 // from: 2.0 2.1
  SAY #48237 /* ~Er meidet deinen Blick. "Bitte tu mir nichts, Mann... Ich hab doch nur meine Arbeit gemacht."~ */
  IF ~~ THEN REPLY #48238 /* ~"Ich denk drüber nach. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 1.1 1.6 4.4 11.1 11.4
  SAY #48239 /* ~Er mustert dich mit einem höhnischen Grinsen. "Du glaubst, du könntest mir was tun, was? Vorher mußt du einen Weg nach draußen finden!"~ */
  IF ~  CheckStatGT(Protagonist,12,CHR)
~ THEN REPLY #48240 /* ~"Was ist, wenn ich verspreche, daß niemand jemals erfahren wird, was ich getan hab... und daß vielleicht später noch ein paar Münzen rausspringen."~ */ DO ~SetGlobal("Zap","GLOBAL",2)
SetDoorLocked("a1600d10",FALSE)
OpenDoor("A1600d10")
~ GOTO 5
  IF ~  CheckStatLT(Protagonist,13,CHR)
~ THEN REPLY #48241 /* ~"Warum läßt du mich nicht einfach raus?"~ */ GOTO 11
  IF ~~ THEN REPLY #48242 /* ~"Was, wenn ich dir ein paar Kupfermünzen gebe?"~ */ GOTO 6
  IF ~  CheckStatGT(Protagonist,12,INT)
~ THEN REPLY #48243 /* ~"Überleg mal: Ich bin ganz klar eine Gefahr für dich, und doch spreche ich mit dir wie mit einem Ebenbürtigen. Glaubst du wirklich, daß mich diese Mauern aufhalten können, wenn ich mir was in den Kopf setze? Ich schlage vor, und zwar ohne dir zu drohen, daß du mich in deinem eigenen Interesse besser gehen läßt."~ */ DO ~SetGlobal("Zap","GLOBAL",2)
SetDoorLocked("a1600d10",FALSE)
OpenDoor("A1600d10")
~ GOTO 5
  IF ~  CheckStatLT(Protagonist,13,INT)
~ THEN REPLY #48244 /* ~"Weil ich hier irgendwann rauskomme, und wenn's soweit ist, dann geht's rund."~ */ GOTO 4
  IF ~~ THEN REPLY #48245 /* ~"Ich werd schon einen finden. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 1.2 1.5 4.0 4.3 11.3
  SAY #48246 /* ~"Das klingt nach einer guten Lösung. Ich hab sowieso nie besonders viel von Mantuoks Chefallüren gehalten." Er entriegelt die Tür, öffnet sie und tritt zur Seite. "Und jetzt raus hier, bevor ich nicht länger behaupten kann, dich nicht gesehen zu haben."~ */
  IF ~~ THEN REPLY #48247 /* ~"Du hast es kapiert. Leb wohl."~ */ DO ~AddexperienceParty(3750)
~ EXIT
END

IF ~~ THEN BEGIN 6 // from: 1.4 4.2 11.2
  SAY #48248 /* ~"Ich sag dir was... Dein Geldbeutel hat so schön geklingelt, als du reingekommen bist. Hundert Münzen daraus - wobei ich mir sicher bin, daß du die entbehren kannst - und du kannst gehen."~ */
  IF ~~ THEN REPLY #48249 /* ~"Einverstanden."~ */ GOTO 7
  IF ~~ THEN REPLY #48250 /* ~"Vergiß es."~ */ EXIT
END

IF ~~ THEN BEGIN 7 // from: 6.0
  SAY #48251 /* ~"Wirf sie durch die Gitter, und dann laß ich dich gehen. Und bevor du fragst, du mußt mir einfach vertrauen, daß ich es tue, was, Shaddeus?" Er grinst seinen Kumpel an.~ */
  IF ~  PartyGoldGT(99)
~ THEN REPLY #48252 /* ~"In Ordnung. Hier."~ */ DO ~SetGlobal("Zap","GLOBAL",2)
SetDoorLocked("a1600d10",FALSE)
OpenDoor("A1600d10")
TakePartyGold(100)
AddexperienceParty(3750)
~ GOTO 8
  IF ~  PartyGoldLT(100)
~ THEN REPLY #48253 /* ~"Ich hab nicht so viel..."~ */ GOTO 9
  IF ~~ THEN REPLY #48254 /* ~"Vergiß es."~ */ EXIT
END

IF ~~ THEN BEGIN 8 // from: 7.0
  SAY #48255 /* ~Er zählt sorgfältig die Münzen. Als er endlich überzeugt ist, daß er alles bekommen hat, entriegelt er die Tür für dich. "Jetzt mach, daß du rauskommst!"~ */
  IF ~~ THEN REPLY #48256 /* ~"Schon gut, schon gut."~ */ EXIT
END

IF ~~ THEN BEGIN 9 // from: 7.1
  SAY #48257 /* ~"Dann sieht's wohl so aus, als ob du drin bleibst?" Er lacht wie ein Kind und wendet sich ab.~ */
  IF ~~ THEN REPLY #48258 /* ~"Verdammt..."~ */ EXIT
END

IF ~~ THEN BEGIN 10 // from: 0.1 12.0
  SAY #48259 /* ~"Du willst nur reden, was? Nun, der alte Raimon will aber keinen Plausch mit dir halten, das kannst du glauben!" Er wendet sich von dir ab.~ */
  IF ~~ THEN REPLY #48264 /* ~"Wenn du mich hier rausläßt, laß ich dich leben."~ */ GOTO 1
  IF ~~ THEN REPLY #48261 /* ~"Na gut."~ */ EXIT
END

IF ~~ THEN BEGIN 11 // from: 1.3 4.1
  SAY #48262 /* ~Er grinst dich höhnisch an. "Ich soll dir trauen?" Seine Schnurrhaare zucken. "Versuch's noch mal."~ */
  IF ~  CheckStatGT(Protagonist,12,STR)
~ THEN REPLY #48263 /* ~Er grinst dich höhnisch an. "Ich soll dir trauen?" Seine Schnurrhaare zucken. "Versuch's noch mal."~ */ DO ~SetGlobal("Zap","GLOBAL",3)
SetDoorLocked("a1600d10",FALSE)
OpenDoor("A1600d10")
~ GOTO 2
  IF ~  CheckStatLT(Protagonist,13,STR)
~ THEN REPLY #48264 /* ~"Wenn du mich hier rausläßt, laß ich dich leben."~ */ GOTO 4
  IF ~~ THEN REPLY #48265 /* ~"Wie wär's mit ein bißchen Klimper?"~ */ GOTO 6
  IF ~  CheckStatGT(Protagonist,12,INT)
~ THEN REPLY #48266 /* ~"Überleg mal: Ich bin ganz klar eine Gefahr für dich, und doch spreche ich mit dir wie mit einem Ebenbürtigen. Glaubst du wirklich, daß mich diese Mauern aufhalten können, wenn ich mir was in den Kopf setze? Ich schlage vor, und zwar ohne dir zu drohen, daß du mich in deinem eigenen Interesse besser gehen läßt."~ */ DO ~SetGlobal("Zap","GLOBAL",2)
SetDoorLocked("a1600d10",FALSE)
OpenDoor("A1600d10")
~ GOTO 5
  IF ~  CheckStatLT(Protagonist,13,INT)
~ THEN REPLY #48267 /* ~"Weil ich hier irgendwann rauskomme, und wenn's soweit ist, dann geht's rund."~ */ GOTO 4
  IF ~~ THEN REPLY #48268 /* ~"Vergiß es."~ */ EXIT
END

IF WEIGHT #2 /* Triggers after states #: 17 even though they appear after this state */
~  Global("Zap","GLOBAL",1)
Global("Rat_Guard","GLOBAL",1)
!NearbyDialog("DAnnah")
~ THEN BEGIN 12 // from:
  SAY #48269 /* ~"Was willst du nun schon wieder, du Hohlkopf?"~ */
  IF ~~ THEN REPLY #48270 /* ~"Ich will mit dir reden."~ */ GOTO 10
  IF ~~ THEN REPLY #48271 /* ~"Ich will mit dir über eine Möglichkeit reden, wie ich hier rauskommen kann."~ */ GOTO 1
  IF ~~ THEN REPLY #48272 /* ~"Nichts. Vergiß es."~ */ EXIT
END

IF WEIGHT #3 /* Triggers after states #: 17 even though they appear after this state */
~  Global("Zap","GLOBAL",1)
NearbyDialog("DAnnah")
~ THEN BEGIN 13 // from:
  SAY #48273 /* ~Als du dich den Gitterstäben näherst, nimmst du einen Silberblitz wahr, und die eine Werrattenwache stürzt sich mit blinder Wut auf die andere!~ */
  IF ~~ THEN DO ~SetAnimState("Shad",ANIM_MIMEATTACK1)
SetAnimState("Raimon",ANIM_MIMEDIE)
Kill("Raimon")
~ GOTO 16
END

IF ~~ THEN BEGIN 14 // from:
  SAY #48275 /* ~"Also, dann." Er nimmt Raimons Leiche die Schlüssel ab, entriegelt und öffnet die Tür für dich. "Hau jetzt ab." Er macht eine kurze Verbeugung und huscht davon.~ */
  IF ~~ THEN REPLY #48276 /* ~"Machen wir. Danke."~ */ DO ~SetGlobal("Zap","GLOBAL",5)
SetDoorLocked("a1600d10",FALSE)
OpenDoor("A1600d10")
~ EXIT
END

IF ~~ THEN BEGIN 15 // from:
  SAY #48277 /* ~"Du fragst dich, warum ich das gemacht hab, stimmt's? Ich war mal jemand aus dem Begrabenen Dorf. Shaddeus war mein Name. Ich will keine Werratte sein, und ich denke nicht, daß mich diese Krankheit unloyaler gegenüber der Menschheit macht. Komm jetzt da raus!" Er entriegelt und öffnet die Tür für dich und huscht davon.~ */
  IF ~~ THEN REPLY #48278 /* ~"Danke, Shaddeus. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 16 // from: 13.0
  SAY #48279 /* ~Nachdem er seinen Kumpel niedergemetzelt hat, sieht die Werratte Annah fest an. "Annah, ich bin's, Shaddeus! Ich laß dich raus! Ich kann es nicht ertragen, dich so eingesperrt zu sehen. Leg ein gutes Wort für mich ein, wenn du es zurück bis ins Dorf schaffst, und sag ihnen, daß etwas Schlimmes passieren wird. Kann noch nich' sagen, was, aber... nur daß du's weißt."~ */
  IF ~~ THEN EXTERN ~DANNAH~ 160
END

IF WEIGHT #1 ~  Global("Zap","GLOBAL",1)
Global("Rat_Guard","GLOBAL",1)
!NearbyDialog("DAnnah")
PartyGoldLT(100)
CheckStatLT(Protagonist,13,STR)
CheckStatLT(Protagonist,13,CHR)
CheckStatLT(Protagonist,13,INT)
~ THEN BEGIN 17 // from:
  SAY #48280 /* ~Als du dich den Gitterstäben näherst, nimmst du einen Silberblitz wahr, und die eine Werrattenwache stürzt sich mit blinder Wut auf die andere!~ */
  IF ~~ THEN DO ~SetAnimState("Shad",ANIM_MIMEATTACK1)
SetAnimState("Raimon",ANIM_MIMEDIE)
Kill("Raimon")
~ EXTERN ~DSHAD~ 8
END
