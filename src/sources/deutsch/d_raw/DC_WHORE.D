// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DC_WHORE.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\de_DE\dialog.tlk
// dialogF  : (none)

BEGIN ~DC_WHORE~

IF ~  True()
~ THEN BEGIN 0 // from:
  SAY #67953 /* ~Diese billig aussehende und spärlich bekleidete Frau lächelt verschämt und streift einen Träger ihres Büstenhalters von ihrer Schulter, als du auf sie zugehst. "Zwanzig Münzen, Schleifer, und ich gehöre dir..."~ */
  IF ~~ THEN REPLY #67958 /* ~"Eigentlich hätte ich ein paar Fragen..."~ */ GOTO 1
  IF ~  PartyGoldGT(19)
~ THEN REPLY #67959 /* ~"Klingt vernünftig... Hier ist die Münze."~ */ DO ~TakePartyGold(20)
FadeToColor([20.0],0)
Wait(2)
FadeFromColor([20.0],0)
~ GOTO 4
  IF ~  PartyGoldGT(19)
~ THEN REPLY #67960 /* ~"Äh... vor den anderen hier?"~ */ GOTO 2
  IF ~~ THEN REPLY #67961 /* ~"Nein danke. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0 2.1
  SAY #67954 /* ~Sie seufzt und zieht den Träger wieder hoch. "Nein. Tut mir leid, niemals."~ */
  IF ~~ THEN REPLY #67962 /* ~"Sag mir wenigstens, was mit der Wache draußen los ist..."~ */ GOTO 3
  IF ~  PartyGoldGT(19)
~ THEN REPLY #67963 /* ~"Nun... wie wäre es dann mit: Zwanzig Münzen, und du gehörst mir?"~ */ DO ~TakePartyGold(20)
FadeToColor([20.0],0)
Wait(2)
FadeFromColor([20.0],0)
~ GOTO 4
  IF ~~ THEN REPLY #67964 /* ~"Schön... Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 0.2 3.1
  SAY #67955 /* ~"Warum nicht?" Sie lächelt verwegen und spielt mit ihrem Haar. "Wenn es genug Spaß verspricht, dann machen sie vielleicht mit..." Sie winkt dich zu sich.~ */
  IF ~  PartyGoldGT(19)
~ THEN REPLY #67965 /* ~"Du hast recht... warum nicht? Hier ist die Münze..."~ */ DO ~TakePartyGold(20)
FadeToColor([20.0],0)
Wait(2)
FadeFromColor([20.0],0)
~ GOTO 4
  IF ~~ THEN REPLY #67966 /* ~"Eigentlich... hätte ich nur ein paar Fragen..."~ */ GOTO 1
  IF ~~ THEN REPLY #67967 /* ~"Nein danke. Leb wohl.~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 1.0
  SAY #67956 /* ~"Oh, er?" Sie sieht hinüber zu dem stämmigen Wachmann im Eingang, der mit dem Rücken zum Raum den Flur beobachtet. "Meine Freundinnen und ich stecken ihm ein bißchen was zu, damit er auf uns aufpaßt, sonst nichts. Warum? Macht er dich nervös? Keine Angst, er wird nicht zuschauen... komm her..." Sie breitet die Arme aus.~ */
  IF ~  PartyGoldGT(19)
~ THEN REPLY #67968 /* ~"Warum nicht? Hier ist die Münze..."~ */ DO ~TakePartyGold(20)
FadeToColor([20.0],0)
Wait(2)
FadeFromColor([20.0],0)
~ EXIT
  IF ~  PartyGoldGT(19)
~ THEN REPLY #67969 /* ~"Äh... vor den anderen hier?"~ */ GOTO 2
  IF ~~ THEN REPLY #67970 /* ~"Nein danke. Leb wohl.~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 0.1 1.1 2.0
  SAY #67957 /* ~Du beendest das erbärmliche kleine Vergnügen, ziehst dich an und packst deinen Kram zusammen.

"Mmm, dich schafft so schnell nichts, wie? Also, komm bald wieder, wenn du willst. Leb wohl."~ */
  IF ~~ THEN REPLY #67971 /* ~"Vielleicht. Leb wohl."~ */ EXIT
  IF ~~ THEN REPLY #67972 /* ~Geh weg.~ */ EXIT
END
