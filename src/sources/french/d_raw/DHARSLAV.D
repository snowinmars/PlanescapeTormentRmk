// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DHARSLAV.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\fr_FR\dialog.tlk
// dialogF  : (none)

BEGIN ~DHARSLAV~

IF ~  NumTimesTalkedTo(0)
~ THEN BEGIN 0 // from:
  SAY #50939 /* ~Tu vois un garde de l'Harmonium particulièrement costaud. Il est grisonnant, maussade et passablement ivre. Il surveille les esclaves qui sont rassemblés là, et te parle du coin de la bouche. "Qu'est-ce' tu veux ?"~ */
  IF ~  Global("Curst_Key","GLOBAL",1)
~ THEN REPLY #50940 /* ~"Je suis venu chercher la fille de Barlouche."~ */ GOTO 2
  IF ~~ THEN REPLY #50941 /* ~"Qui es-tu ?"~ */ GOTO 3
  IF ~~ THEN REPLY #50942 /* ~"Qu'est-ce que tu fais ?"~ */ GOTO 4
  IF ~~ THEN REPLY #50943 /* ~"Je suis là pour mettre un terme à l'esclavage."~ */ GOTO 5
  IF ~~ THEN REPLY #50944 /* ~"Rien. Au revoir."~ */ EXIT
END

IF ~  NumTimesTalkedToGT(0)
~ THEN BEGIN 1 // from:
  SAY #50945 /* ~"Tu r'viens encore ?"~ */
  IF ~  Global("Curst_Key","GLOBAL",1)
~ THEN REPLY #50946 /* ~"Je suis venu chercher la fille de Barlouche."~ */ GOTO 2
  IF ~~ THEN REPLY #50947 /* ~"Qui es-tu ?"~ */ GOTO 3
  IF ~~ THEN REPLY #50948 /* ~"Qu'est-ce que tu fais ?"~ */ GOTO 4
  IF ~~ THEN REPLY #50949 /* ~"Je suis là pour mettre un terme à l'esclavage."~ */ GOTO 5
  IF ~~ THEN REPLY #50950 /* ~"Rien. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 0.0 1.0 3.0 4.0
  SAY #50951 /* ~"Tu veux la racheter ? Va en parler à Skatch, alors… c'est lui qui s'occupe de ça."~ */
  IF ~~ THEN REPLY #50952 /* ~"Qui es-tu ?"~ */ GOTO 3
  IF ~~ THEN REPLY #50953 /* ~"Qu'est-ce que tu fais ?"~ */ GOTO 4
  IF ~~ THEN REPLY #50954 /* ~"Je suis là pour mettre un terme à l'esclavage."~ */ GOTO 5
  IF ~~ THEN REPLY #50955 /* ~"Merci. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 0.1 1.1 2.0 4.1
  SAY #50956 /* ~Il pousse un grognement. "À quoi ça ressemble ? À des 'recruteurs' de l'Harmonium."~ */
  IF ~  Global("Curst_Key","GLOBAL",1)
~ THEN REPLY #50957 /* ~"Dans ce cas, je suis venu chercher la fille de Barlouche."~ */ GOTO 2
  IF ~~ THEN REPLY #50958 /* ~"Qu'est-ce que tu fais ?"~ */ GOTO 4
  IF ~~ THEN REPLY #50959 /* ~"Et bien, je suis là pour mettre un terme à votre trafic d'esclaves."~ */ GOTO 5
  IF ~~ THEN REPLY #50960 /* ~"Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 0.2 1.2 2.1 3.1
  SAY #50961 /* ~"À quoi ça ressemble ? Skatch appelle ça du recrutement et moi du trafic d'esclaves. Qu'est-ce que ça peut faire ? Hein ? Ça rapporte de l'argent." Il te regarde attentivement. "Tu veux quelque chose ?"~ */
  IF ~  Global("Curst_Key","GLOBAL",1)
~ THEN REPLY #50962 /* ~"Je suis venu chercher la fille de Barlouche."~ */ GOTO 2
  IF ~~ THEN REPLY #50963 /* ~"Qui es-tu ?"~ */ GOTO 3
  IF ~~ THEN REPLY #50964 /* ~"Je suis là pour mettre un terme à l'esclavage."~ */ GOTO 5
  IF ~~ THEN REPLY #50965 /* ~"Non. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 0.3 1.3 2.2 3.2 4.2
  SAY #50966 /* ~"Hé. Quoi ? Maintenant, il faut que je te tue." Il brandit son arme et attaque !~ */
  IF ~~ THEN REPLY #50967 /* ~Bats-toi.~ */ DO ~Enemy()
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
~ EXIT
END
