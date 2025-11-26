// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DRAIMON.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\de_DE\dialog.tlk
// dialogF  : (none)

BEGIN ~DRAIMON~
//////////////////////////////////////////////////
// WARNING: this file contains non-trivial WEIGHTs
//////////////////////////////////////////////////

IF WEIGHT #0 ~  Global("Zap","GLOBAL",1)
Global("Rat_Guard","GLOBAL",0)
~ THEN BEGIN 0 // from:
  SAY #23859 /* ~Diese gelangweilt aussehende Werratte scheint sich über alles froh zu sein, das die Langeweile mindert. "Was willst du, Fleisch?"~ */
  IF ~~ THEN REPLY #23860 /* ~"Ich will raus."~ */ DO ~SetGlobal("Rat_Guard","GLOBAL",1)
~ GOTO 1
  IF ~~ THEN REPLY #23861 /* ~"Ich will nur mit dir sprechen."~ */ DO ~SetGlobal("Rat_Guard","GLOBAL",1)
~ GOTO 10
  IF ~~ THEN REPLY #23862 /* ~"Nichts. Vergiß es."~ */ DO ~SetGlobal("Rat_Guard","GLOBAL",1)
~ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0 10.0 12.1
  SAY #23863 /* ~"Das würdest du gern, was? Warum in aller Welt sollten wir die Befehle Mantuoks ignorieren und den Zorn der Ratten riskieren, hm?"~ */
  IF ~  CheckStatGT(Protagonist,12,STR)
~ THEN REPLY #23864 /* ~"Um eure Leben zu schonen. Wenn du mich jetzt hier rausläßt, laß ich euch leben."~ */ DO ~SetGlobal("Zap","GlOBAL",3)
OpenDoor("A1600d10")
~ GOTO 2
  IF ~  CheckStatLT(Protagonist,13,STR)
~ THEN REPLY #23865 /* ~"Um eure Leben zu schonen. Wenn du mich jetzt hier rausläßt, laß ich euch leben."~ */ GOTO 4
  IF ~  CheckStatGT(Protagonist,12,CHR)
~ THEN REPLY #23866 /* ~"Ich verspreche, daß niemand jemals erfahren wird, was ich getan habe... und daß vielleicht später ein paar Münzen rausspringen."~ */ DO ~SetGlobal("Zap","GLOBAL",2)
OpenDoor("A1600d10")
~ GOTO 5
  IF ~  CheckStatLT(Protagonist,13,CHR)
~ THEN REPLY #23867 /* ~"Wie sollten sie das je erfahren?"~ */ GOTO 11
  IF ~~ THEN REPLY #23868 /* ~"Wie wär's mit ein bißchen Klimper?"~ */ GOTO 6
  IF ~  CheckStatGT(Protagonist,12,INT)
~ THEN REPLY #23869 /* ~"Überleg mal: Ich bin ganz klar eine Gefahr für dich, und doch spreche ich mit dir wie mit einem Ebenbürtigen. Glaubst du wirklich, daß mich diese Mauern aufhalten können, wenn ich mir was in den Kopf setze? Ich schlage vor, und zwar ohne dir zu drohen, daß du mich in deinem eigenen Interesse besser gehen läßt."~ */ DO ~SetGlobal("Zap","GLOBAL",2)
OpenDoor("A1600d10")
~ GOTO 5
  IF ~  CheckStatLT(Protagonist,13,INT)
~ THEN REPLY #23870 /* ~"Weil ich hier irgendwann rauskomme, und wenn's soweit ist, dann geht's rund."~ */ GOTO 4
  IF ~~ THEN REPLY #23871 /* ~"Überleg doch selbst mal, ich kann ja nicht an alles denken."~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.0 11.0
  SAY #23872 /* ~Raimon mustert dich sorgfältig von oben bis unten. Als er die Wildheit in deinen Augen und die Größe deiner Muskeln bemerkt, entriegelt und öffnet er behutsam die Tür für dich. Er tritt zur Seite und meidet deinen Blick.~ */
  IF ~~ THEN REPLY #23873 /* ~"Danke, Kumpel."~ */ DO ~AddexperienceParty(100)
~ GOTO 3
  IF ~~ THEN REPLY #23874 /* ~"Bis dann."~ */ DO ~AddexperienceParty(100)
~ GOTO 3
END

IF WEIGHT #3 /* Triggers after states #: 13 12 even though they appear after this state */
~  Global("Zap","GLOBAL",3)
~ THEN BEGIN 3 // from: 2.0 2.1
  SAY #23875 /* ~Er meidet deinen Blick. "Bitte tu mir nichts, Mann... Ich hab' doch nur meine Arbeit gemacht."~ */
  IF ~~ THEN REPLY #23876 /* ~"Ich denk drüber nach. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 1.1 1.6 4.4 11.1 11.4
  SAY #23877 /* ~Er mustert dich mit einem höhnischen Grinsen. "Du glaubst, du könntest mir was tun, was? Vorher mußt du einen Weg nach draußen finden!"~ */
  IF ~  CheckStatGT(Protagonist,12,CHR)
~ THEN REPLY #23878 /* ~"Was ist, wenn ich verspreche, daß niemand jemals erfahren wird, was ich getan hab'... und daß vielleicht später noch ein paar Münzen rausspringen."~ */ DO ~SetGlobal("Zap","GLOBAL",2)
OpenDoor("A1600d10")
~ GOTO 5
  IF ~  CheckStatLT(Protagonist,13,CHR)
~ THEN REPLY #23879 /* ~"Warum läßt du mich nicht einfach raus?"~ */ GOTO 11
  IF ~~ THEN REPLY #23880 /* ~"Was, wenn ich dir ein paar Kupfermünzen gebe?"~ */ GOTO 6
  IF ~  CheckStatGT(Protagonist,12,INT)
~ THEN REPLY #23881 /* ~"Überleg mal: Ich bin ganz klar eine Gefahr für dich, und doch spreche ich mit dir wie mit einem Ebenbürtigen. Glaubst du wirklich, daß mich diese Mauern aufhalten können, wenn ich mir was in den Kopf setze? Ich schlage vor, und zwar ohne dir zu drohen, daß du mich in deinem eigenen Interesse besser gehen läßt."~ */ DO ~SetGlobal("Zap","GLOBAL",2)
OpenDoor("A1600d10")
~ GOTO 5
  IF ~  CheckStatLT(Protagonist,13,INT)
~ THEN REPLY #23882 /* ~"Weil ich hier irgendwann rauskomme, und wenn's soweit ist, dann geht's rund."~ */ GOTO 4
  IF ~~ THEN REPLY #23883 /* ~"Ich werd schon einen finden. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 1.2 1.5 4.0 4.3 11.3
  SAY #23884 /* ~"Das klingt nach einer guten Lösung. Ich hab' sowieso nie besonders viel von Mantuoks Chefallüren gehalten." Er entriegelt die Tür, öffnet sie und tritt zur Seite. "Und jetzt raus hier, bevor ich nicht länger behaupten kann, dich nicht gesehen zu haben."~ */
  IF ~~ THEN REPLY #23885 /* ~"Du hast es kapiert. Leb wohl."~ */ DO ~AddexperienceParty(250)
~ EXIT
END

IF ~~ THEN BEGIN 6 // from: 1.4 4.2 11.2
  SAY #23886 /* ~"Ich sag dir was... Dein Geldbeutel hat so schön geklingelt, als du reingekommen bist. Hundert Münzen daraus - wobei ich mir sicher bin, daß du die entbehren kannst - und du kannst gehen."~ */
  IF ~~ THEN REPLY #23887 /* ~"Einverstanden."~ */ GOTO 7
  IF ~~ THEN REPLY #23888 /* ~"Vergiß es."~ */ EXIT
END

IF ~~ THEN BEGIN 7 // from: 6.0
  SAY #23889 /* ~"Wirf sie durch die Gitter, und dann laß ich dich gehen. Und bevor du fragst, du mußt mir einfach vertrauen, daß ich es tue, was, Shaddeus?" Er grinst seinen Kumpel an.~ */
  IF ~  PartyGoldGT(99)
~ THEN REPLY #23890 /* ~"In Ordnung. Hier."~ */ DO ~SetGlobal("Zap","GLOBAL",2)
OpenDoor("A1600d10")
TakePartyGold(100)
AddexperienceParty(200)
~ GOTO 8
  IF ~  PartyGoldLT(100)
~ THEN REPLY #23891 /* ~"Ich hab' nicht so viel..."~ */ GOTO 9
  IF ~~ THEN REPLY #23892 /* ~"Vergiß es einfach."~ */ EXIT
END

IF ~~ THEN BEGIN 8 // from: 7.0
  SAY #23893 /* ~Er zählt sorgfältig die Münzen. Als er endlich überzeugt ist, daß er alles bekommen hat, entriegelt er die Tür für dich. "Jetzt mach, daß du rauskommst!"~ */
  IF ~~ THEN REPLY #23894 /* ~"Schon gut, schon gut."~ */ EXIT
END

IF ~~ THEN BEGIN 9 // from: 7.1
  SAY #23895 /* ~"Dann sieht's wohl so aus, als ob du drin bleibst?" Er lacht wie ein Kind und wendet sich ab.~ */
  IF ~~ THEN REPLY #23896 /* ~"Verdammt..."~ */ EXIT
END

IF ~~ THEN BEGIN 10 // from: 0.1 12.0
  SAY #23897 /* ~"Du willst nur reden, was? Nun, der alte Raimon will aber keinen Plausch mit dir halten, das kannst du glauben!" Er wendet sich von dir ab.~ */
  IF ~~ THEN REPLY #23898 /* ~"Dann würd ich gern mit dir besprechen, wie ich hier rauskomme."~ */ GOTO 1
  IF ~~ THEN REPLY #23899 /* ~"Na gut."~ */ EXIT
END

IF ~~ THEN BEGIN 11 // from: 1.3 4.1
  SAY #23900 /* ~Er grinst dich höhnisch an. "Ich soll dir trauen?" Seine Schnurrhaare zucken. "Versuch's noch mal."~ */
  IF ~  CheckStatGT(Protagonist,12,STR)
~ THEN REPLY #23901 /* ~"Wenn du mich hier rausläßt, laß ich dich leben."~ */ DO ~SetGlobal("Zap","GlOBAL",3)
OpenDoor("A1600d10")
~ GOTO 2
  IF ~  CheckStatLT(Protagonist,13,STR)
~ THEN REPLY #23902 /* ~"Wenn du mich hier rausläßt, laß ich dich leben."~ */ GOTO 4
  IF ~~ THEN REPLY #23903 /* ~"Wie wär's mit ein bißchen Klimper?"~ */ GOTO 6
  IF ~  CheckStatGT(Protagonist,12,INT)
~ THEN REPLY #23904 /* ~"Überleg mal: Ich bin ganz klar eine Gefahr für dich, und doch spreche ich mit dir wie mit einem Ebenbürtigen. Glaubst du wirklich, daß mich diese Mauern aufhalten können, wenn ich mir was in den Kopf setze? Ich schlage vor, und zwar ohne dir zu drohen, daß du mich in deinem eigenen Interesse besser gehen läßt."~ */ DO ~SetGlobal("Zap","GLOBAL",2)
OpenDoor("A1600d10")
~ GOTO 5
  IF ~  CheckStatLT(Protagonist,13,INT)
~ THEN REPLY #23905 /* ~"Weil ich hier irgendwann rauskomme, und wenn's soweit ist, dann geht's rund."~ */ GOTO 4
  IF ~~ THEN REPLY #23906 /* ~"Vergiß es."~ */ EXIT
END

IF WEIGHT #1 ~  Global("Zap","GLOBAL",1)
NumTimesTalkedToGT(0)
~ THEN BEGIN 12 // from:
  SAY #23907 /* ~"Was willst du nun schon wieder, du Hohlkopf?"~ */
  IF ~~ THEN REPLY #23908 /* ~"Ich will mit dir reden."~ */ GOTO 10
  IF ~~ THEN REPLY #23909 /* ~"Ich will mit dir über eine Möglichkeit reden, wie ich hier rauskommen kann."~ */ GOTO 1
  IF ~~ THEN REPLY #23910 /* ~"Nichts. Vergiß es einfach."~ */ EXIT
END

IF WEIGHT #2 ~  Global("Zap","GLOBAL",2)
~ THEN BEGIN 13 // from:
  SAY #23911 /* ~"Was hängst du hier immer noch rum, du Dussel? Zisch ab!" Er zieht seinen Kopf ein und meidet deinen Blick.~ */
  IF ~~ THEN REPLY #23912 /* ~"Wie du meinst."~ */ EXIT
END

IF WEIGHT #4 ~  Global("Zap","GLOBAL",4)
~ THEN BEGIN 14 // from:
  SAY #23913 /* ~"Was zum... SHADDEUS! AUF IHN!" Die zwei Werratten greifen dich an.~ */
  IF ~~ THEN REPLY #23914 /* ~Kämpfe.~ */ DO ~Enemy()
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
~ EXIT
END
