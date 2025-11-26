// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DDOUBT.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\de_DE\dialog.tlk
// dialogF  : (none)

BEGIN ~DDOUBT~

IF ~  NumTimesTalkedTo(0)
~ THEN BEGIN 0 // from:
  SAY #20725 /* ~An den Knochen dieser uralten, untoten Leiche hängt kein bißchen Fleisch mehr... nur ein paar bunte Fetzen, die mehr als Dekoration denn als Kleidung zu dienen scheinen. Sie starrt auf den Boden, schüttelt den Kopf und faßt sich nachdenklich ans Kinn.~ */
  IF ~~ THEN REPLY #21891 /* ~"Sei gegrüßt..."~ */ GOTO 1
  IF ~~ THEN REPLY #21892 /* ~Laß das Skelett in Ruhe.~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0 8.0
  SAY #21883 /* ~Es antwortet nicht, offenbar in Gedanken versunken.~ */
  IF ~~ THEN REPLY #21893 /* ~"Ich sagte: 'Sei gegrüßt'."~ */ GOTO 2
  IF ~~ THEN REPLY #21894 /* ~Laß das Skelett in Ruhe.~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.0
  SAY #21884 /* ~Es schaut hoch und sieht dich, worauf es zusammen mit einem Seufzer eine kleine Staubwolke ausstößt. "Ich muß über vieles nachdenken und würde es bevorzugen, in Ruhe gelassen zu werden."~ */
  IF ~~ THEN REPLY #21895 /* ~"Kann ich dir irgendwie behilflich sein?"~ */ DO ~IncrementGlobalOnceEx("GLOBALGood_Doubtful_1","GLOBALGood",1)
~ GOTO 4
  IF ~~ THEN REPLY #21896 /* ~"Nichtsdestotrotz hätte ich gern ein paar Fragen beantwortet."~ */ GOTO 3
  IF ~~ THEN REPLY #21897 /* ~"Okay. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 2.1
  SAY #21885 /* ~"Dann wirst du hier kein Glück haben, denn ich habe keine Antworten für dich. Laß mich in Ruhe."~ */
  IF ~~ THEN REPLY #21898 /* ~"Warte... kann ich dir irgendwie behilflich sein?"~ */ DO ~IncrementGlobalOnceEx("GLOBALGood_Doubtful_1","GLOBALGood",1)
~ GOTO 4
  IF ~~ THEN REPLY #21899 /* ~Geh weg.~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 2.0 3.0
  SAY #21886 /* ~"Nein. Ich muß eine schwere Entscheidung treffen, sonst nichts."~ */
  IF ~~ THEN REPLY #21900 /* ~"Was für eine Entscheidung?"~ */ DO ~SetGlobal("Doubtful_Skel","GLOBAL",1)
~ JOURNAL #21902 /* ~Ich habe mit einem Skelett gesprochen, das mit dem Gedanken spielt, sein Dasein als Untoter aufzugeben und für immer zu sterben. Ich denke mal, daß Soego sehr daran interessiert wäre, mit ihm zu sprechen.~ */ GOTO 5
  IF ~~ THEN REPLY #21901 /* ~"Ich verstehe. Dann überlaß ich dich mal deinen Gedanken... Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 4.0
  SAY #21887 /* ~"Ob ich mein... 'Leben'... hier fortsetzen oder ob ich sterben soll, schließlich den Wahren Tod erreichen, von dem man mir erzählt hat."~ */
  IF ~  !Global("Join_Dustmen","GLOBAL",1)
~ THEN REPLY #21927 /* ~"Wahrer Tod?"~ */ GOTO 6
  IF ~  Global("Join_Dustmen","GLOBAL",1)
~ THEN REPLY #21928 /* ~"Wer weiß, wozu es gut ist. Alle Geschöpfe sollten den Wahren Tod suchen."~ */ GOTO 7
  IF ~~ THEN REPLY #21929 /* ~"Ich sehe keinen Grund, warum du dein Leben aufgeben solltest."~ */ GOTO 7
  IF ~  !Global("Join_Dustmen","GLOBAL",1)
~ THEN REPLY #21930 /* ~"Ich denke, es ist vielleicht an der Zeit, daß du dich vom Leben löst."~ */ GOTO 7
  IF ~~ THEN REPLY #21931 /* ~"Ich überlaß dich wieder deinen Gedanken. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 6 // from: 5.0
  SAY #21888 /* ~"Mit dem Fehlen jeglicher Leidenschaft ist der Wahre Tod das wahre Leben jenseits dieses Schattens der Existenz. Es wird gesagt, dass wir diesen Ort erreichen müssen, um uns zu befreien."~ */
  IF ~~ THEN REPLY #21932 /* ~"Ich sehe keinen Grund, warum du dein Leben aufgeben solltest."~ */ GOTO 7
  IF ~~ THEN REPLY #21933 /* ~"Ich denke, es ist vielleicht an der Zeit, daß du dich vom Leben löst."~ */ GOTO 7
  IF ~~ THEN REPLY #21934 /* ~"Ich überlaß dich wieder deinen Gedanken. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 7 // from: 5.1 5.2 5.3 6.0 6.1
  SAY #21889 /* ~"Ich werde deine Worte bedenken. Jetzt bitte ich dich, mich meinen Gedanken zu überlassen. Leb wohl."~ */
  IF ~~ THEN REPLY #21935 /* ~Geh weg.~ */ EXIT
END

IF ~  NumTimesTalkedToGT(0)
~ THEN BEGIN 8 // from:
  SAY #21890 /* ~Dieses Skelett sieht bedrückt aus, wie es seinen Kopf schüttelt und vor sich hin murmelt.~ */
  IF ~~ THEN REPLY #21936 /* ~"Sei gegrüßt..."~ */ GOTO 1
  IF ~~ THEN REPLY #21937 /* ~Laß das Skelett in Ruhe.~ */ EXIT
END
