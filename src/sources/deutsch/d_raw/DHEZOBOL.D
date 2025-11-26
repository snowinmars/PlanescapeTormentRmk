// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DHEZOBOL.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\de_DE\dialog.tlk
// dialogF  : (none)

BEGIN ~DHEZOBOL~

IF ~  NumTimesTalkedTo(0)
~ THEN BEGIN 0 // from:
  SAY #50917 /* ~Du siehst einen schlanken Mann in wallendem Gewand. Sein Gesicht ist von Zorn verdunkelt, und er schreit seine Untergebenen an, die sich mit behender Effizienz bewegen. "Macht Tempo, ihr Dreckskerle! Wir haben nur Zeit, um ein Opfer zu bringen!" Er scheint dich nicht zu bemerken.~ */
  IF ~~ THEN REPLY #50918 /* ~"Was machst du da?"~ */ GOTO 1
  IF ~~ THEN REPLY #50919 /* ~"Ich bin hier, um dich aufzuhalten."~ */ GOTO 2
  IF ~~ THEN REPLY #50920 /* ~Geh ganz leise fort.~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0 5.0
  SAY #50921 /* ~Er dreht sich irritiert zu dir um. "Ich schlage Profit aus dem Chaos, Dussel. Jetzt ist die beste Zeit, sich Sklaven zu holen, während alle damit beschäftigt sind, in der Stadt wieder Ordnung zu schaffen. Entschuldige mich jetzt, ich habe zu tun." Er dreht sich wieder zu seinen Männern um.~ */
  IF ~  CheckStatGT(Protagonist,14,INT)
~ THEN REPLY #50922 /* ~"Ich glaube, du wirst feststellen, daß die Unruhe in der Stadt daher kommt, daß Leute versuchen, aus dieser Katastrophe Profit zu schlagen. Hör damit auf, dann kannst du vielleicht der Stadt helfen zurückzugleiten - und dann kannst du dein Geschäft wieder aufnehmen."~ */ GOTO 3
  IF ~  CheckStatGT(Protagonist,14,WIS)
~ THEN REPLY #50923 /* ~"Das Problem der Stadt ist, daß zu viele Leute das Chaos durch das Böse, das sie einander antun, nur noch verschlimmern. Wenn du und deine Männer bei der Verteidigung der Stadt mithelfen würden, könntet ihr das Gleichgewicht vielleicht wiederherstellen."~ */ GOTO 3
  IF ~  CheckStatGT(Protagonist,14,CHR)
~ THEN REPLY #50924 /* ~"Siehst du nicht, daß es genau dieses Verhalten ist, das die Stadt in die Klemme gebracht hat, in der sie jetzt steckt? Schließ dich mir an im Kampf gegen diese Einstellung, dann können wir alle viel schneller hier rauskommen."~ */ GOTO 3
  IF ~~ THEN REPLY #50925 /* ~"Ich bin hier, um dich aufzuhalten."~ */ GOTO 2
  IF ~~ THEN REPLY #50926 /* ~Greif ihn an.~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Slaver_1","GLOBALGood",-1)
IncrementGlobal("Curst_Counter","GLOBAL",1)
Enemy()
ForceAttack(Protagonist,Myself)
~ EXIT
END

IF ~~ THEN BEGIN 2 // from: 0.1 1.3 5.1
  SAY #50927 /* ~Er grinst dich höhnisch an. "Du willst mich aufhalten? Das möchte ich sehen. Männer! Vergeßt die Sklaven und tötet diesen Eindringling!"~ */
  IF ~~ THEN REPLY #50928 /* ~Kämpfe.~ */ DO ~IncrementGlobal("Curst_Counter","GLOBAL",1)
Enemy()
ForceAttack(Protagonist,Myself)
~ EXIT
END

IF ~~ THEN BEGIN 3 // from: 1.0 1.1 1.2
  SAY #50930 /* ~Er ruft seinen Männern zu: "Aufhören!" Er sieht dich nachdenklich an. "Du sagst also, daß wir kein Opfer an die Gehreless brauchen?"~ */
  IF ~~ THEN REPLY #50931 /* ~"Nein. Diese ganze Stadt wird ein Opfer sein, wenn ihr nicht mit den anderen Stadtbewohnern zusammenarbeitet."~ */ DO ~IncrementGlobal("Curst_Counter","GLOBAL",1)
AddexperienceParty(150000)
~ JOURNAL #50932 /* ~Ich habe den Sklavenhändler überredet, den Sklavenhandel aufzugeben und sich lieber dem Kampf gegen die Gehreless, die die Stadt bedrohen, anzuschließen.~ */ GOTO 4
END

IF ~~ THEN BEGIN 4 // from: 3.0
  SAY #50933 /* ~Er flucht. "Ich hab immer so ein Glück. Hatte schon ganz schön Beute gemacht. OK, Jungs, laßt sie frei! Wir haben eine Stadt zu retten!" Er wirft dir einen nicht zu deutenden Blick zu und führt seine Truppe weg. "Danke für den Tip, Fremder."~ */
  IF ~~ THEN REPLY #50934 /* ~"Keine Ursache. Viel Glück."~ */ DO ~SetGlobal("Slaver_Gone","GLOBAL",1)
EscapeArea()
~ EXIT
END

IF ~  NumTimesTalkedToGT(0)
~ THEN BEGIN 5 // from:
  SAY #50935 /* ~Der Sklavenführer scheint sein Vorhaben ohne Unterbrechung durchzuziehen, obwohl er auf drohende Gehreless-Angriffe achtet. "Was willst du, Dussel?"~ */
  IF ~~ THEN REPLY #50936 /* ~"Was machst du da?"~ */ GOTO 1
  IF ~~ THEN REPLY #50937 /* ~"Ich bin hier, um dich aufzuhalten."~ */ GOTO 2
  IF ~~ THEN REPLY #50938 /* ~Geh ganz leise fort.~ */ EXIT
END
