// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DSKATCH.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\fr_FR\dialog.tlk
// dialogF  : (none)

BEGIN ~DSKATCH~

IF ~  True()
~ THEN BEGIN 0 // from:
  SAY #50896 /* ~Tu vois un officier de l'Harmonium, vêtu de son armure de cérémonie. Apparemment, il est responsable des esclaves employés par l'Harmonium et les Thokolas. Il semble que ce soit un membre particulièrement dur et arrogant de cette race. "Qu'est-ce que tu veux ?"~ */
  IF ~  Global("Curst_Key","GLOBAL",1)
~ THEN REPLY #50897 /* ~"Je suis venu chercher la fille de Barlouche."~ */ GOTO 1
  IF ~~ THEN REPLY #50898 /* ~"Qu'est-ce que tu fais ici ?"~ */ GOTO 2
  IF ~~ THEN REPLY #50899 /* ~"Qui es-tu ?"~ */ GOTO 5
  IF ~~ THEN REPLY #50900 /* ~"Rien. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #50901 /* ~Il te sourit d'un air supérieur. "Et qu'est-ce que tu feras si je la tue ?" Il fait signe à ses hommes. "Tuez-la !" Il brandit sa lame et t'attaque !~ */
  IF ~~ THEN REPLY #50902 /* ~Bats-toi.~ */ DO ~Enemy()
Help()
ForceAttack(Protagonist,Myself)
Attack(Protagonist)
~ EXIT
END

IF ~~ THEN BEGIN 2 // from: 0.1
  SAY #50903 /* ~"Mes hommes et moi rassemblons les recrues pour leur apprendre ce qui est bien et ce qui est mal. Comme tu peux le voir, elles ne sont pas toujours bien disposées… mais nous finirons par leur faire voir la lumière." Il t'observe. "J'imagine que tu feras une bonne recrue."~ */
  IF ~~ THEN REPLY #50904 /* ~"Ça ne m'intéresse pas."~ */ GOTO 3
  IF ~~ THEN REPLY #50905 /* ~"Dis-m'en plus."~ */ GOTO 4
END

IF ~~ THEN BEGIN 3 // from: 2.0 5.0
  SAY #50906 /* ~"C'est dommage." Il fait signe à ses hommes. "Laissez tomber la fille. Emparez-vous de lui."~ */
  IF ~~ THEN REPLY #50907 /* ~Bats-toi.~ */ DO ~Enemy()
Help()
ForceAttack(Protagonist,Myself)
Attack(Protagonist)
~ EXIT
END

IF ~~ THEN BEGIN 4 // from: 2.1 5.1
  SAY #50908 /* ~"Avec plaisir. On t'emmènera en Arcadie pour te faire voir la vérité." Il fait signe à ses hommes. "Emparez-vous de lui."~ */
  IF ~~ THEN REPLY #50909 /* ~Bats-toi.~ */ DO ~Enemy()
Help()
ForceAttack(Protagonist,Myself)
Attack(Protagonist)
~ EXIT
END

IF ~~ THEN BEGIN 5 // from: 0.2
  SAY #50910 /* ~"Je suis Skatch, Deuxième Mesure de l'Harmonium." Il s'incline. "Mes hommes et moi sommes ici pour recruter. Est-ce que ça t'intéresserait d'en savoir plus sur la façon de faire de l'Harmonium ?"~ */
  IF ~~ THEN REPLY #50911 /* ~"Non."~ */ GOTO 3
  IF ~~ THEN REPLY #50912 /* ~"Dis-m'en plus."~ */ GOTO 4
  IF ~~ THEN REPLY #50913 /* ~"Pour moi, c'est de l'esclavage. Tu ne pourrais pas faire une exception pour une fois ?"~ */ GOTO 6
END

IF ~~ THEN BEGIN 6 // from: 5.2
  SAY #50914 /* ~"Tu n'es pas très malin, si ? Non. Aucune chance. Il y a notre manière de faire, et il y a l'autre, qui est mauvaise. Tous ceux qui la choisissent doivent être… punis." Il te montre du doigt et appelle ses hommes. "Emparez-vous de lui !"~ */
  IF ~~ THEN REPLY #50915 /* ~Bats-toi.~ */ DO ~Enemy()
Help()
ForceAttack(Protagonist,Myself)
Attack(Protagonist)
~ EXIT
END
