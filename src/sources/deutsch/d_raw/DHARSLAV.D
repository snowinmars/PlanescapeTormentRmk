// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DHARSLAV.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\de_DE\dialog.tlk
// dialogF  : (none)

BEGIN ~DHARSLAV~

IF ~  NumTimesTalkedTo(0)
~ THEN BEGIN 0 // from:
  SAY #50939 /* ~Du siehst eine mächtige Wache des Harmoniums. Er sieht ergraut, grimmig und halb betrunken aus. Er behält die zusammengetriebenen Sklaven im Auge und redet aus dem Mundwinkel mit dir. "Was willste?"~ */
  IF ~  Global("Curst_Key","GLOBAL",1)
~ THEN REPLY #50940 /* ~"Ich bin hier, um die Tochter von Besudelter Barse zurückzuholen."~ */ GOTO 2
  IF ~~ THEN REPLY #50941 /* ~"Wer bist du?"~ */ GOTO 3
  IF ~~ THEN REPLY #50942 /* ~"Was machst du da?"~ */ GOTO 4
  IF ~~ THEN REPLY #50943 /* ~"Ich bin hier, um den Sklavenring zu sprengen."~ */ GOTO 5
  IF ~~ THEN REPLY #50944 /* ~"Nichts. Leb wohl."~ */ EXIT
END

IF ~  NumTimesTalkedToGT(0)
~ THEN BEGIN 1 // from:
  SAY #50945 /* ~"Wieder da?"~ */
  IF ~  Global("Curst_Key","GLOBAL",1)
~ THEN REPLY #50946 /* ~"Ich bin hier, um die Tochter von Besudelter Barse zurückzuholen."~ */ GOTO 2
  IF ~~ THEN REPLY #50947 /* ~"Wer bist du?"~ */ GOTO 3
  IF ~~ THEN REPLY #50948 /* ~"Was machst du da?"~ */ GOTO 4
  IF ~~ THEN REPLY #50949 /* ~"Ich bin hier, um den Sklavenring zu sprengen."~ */ GOTO 5
  IF ~~ THEN REPLY #50950 /* ~"Nichts. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 0.0 1.0 3.0 4.0
  SAY #50951 /* ~"Du willst sie zurückkaufen? Dann red darüber mit Skatch... Er hat hier das Sagen."~ */
  IF ~~ THEN REPLY #50952 /* ~"Wer bist du?"~ */ GOTO 3
  IF ~~ THEN REPLY #50953 /* ~"Was machst du da?"~ */ GOTO 4
  IF ~~ THEN REPLY #50954 /* ~"Ich bin hier, um den Sklavenring zu sprengen."~ */ GOTO 5
  IF ~~ THEN REPLY #50955 /* ~"Danke. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 0.1 1.1 2.0 4.1
  SAY #50956 /* ~Er knurrt: "Wonach sieht's denn aus? 'Rekrutierer' des Harmoniums."~ */
  IF ~  Global("Curst_Key","GLOBAL",1)
~ THEN REPLY #50957 /* ~"In diesem Fall bin ich hier, um die Tochter von Besudelter Barse zurückzuholen."~ */ GOTO 2
  IF ~~ THEN REPLY #50958 /* ~"Was machst du da?"~ */ GOTO 4
  IF ~~ THEN REPLY #50959 /* ~"Nun, ich bin hier, um den Sklavenring zu sprengen."~ */ GOTO 5
  IF ~~ THEN REPLY #50960 /* ~"Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 0.2 1.2 2.1 3.1
  SAY #50961 /* ~"Wonach sieht's denn aus? Skatch nennt es Rekrutierung. Ich nenn es Sklavenjagd. Spielt das eine Rolle? Nee. Bringt gutes Geld." Er sieht dich aufmerksam an. "Willste was?"~ */
  IF ~  Global("Curst_Key","GLOBAL",1)
~ THEN REPLY #50962 /* ~"Ich bin hier, um die Tochter von Besudelter Barse zurückzuholen."~ */ GOTO 2
  IF ~~ THEN REPLY #50963 /* ~"Wer bist du?"~ */ GOTO 3
  IF ~~ THEN REPLY #50964 /* ~"Ich bin hier, um den Sklavenring zu sprengen."~ */ GOTO 5
  IF ~~ THEN REPLY #50965 /* ~"Nein. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 0.3 1.3 2.2 3.2 4.2
  SAY #50966 /* ~"Heh. Warum sagst du mir das? Jetzt muß ich dich töten." Er zieht seine Waffe und greift an!~ */
  IF ~~ THEN REPLY #50967 /* ~Kämpfe.~ */ DO ~Enemy()
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
~ EXIT
END
