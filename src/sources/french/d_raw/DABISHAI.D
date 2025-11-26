// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DABISHAI.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\fr_FR\dialog.tlk
// dialogF  : (none)

BEGIN ~DABISHAI~
//////////////////////////////////////////////////
// WARNING: this file contains non-trivial WEIGHTs
//////////////////////////////////////////////////

IF WEIGHT #1 /* Triggers after states #: 6 even though they appear after this state */
~  True()
~ THEN BEGIN 0 // from:
  SAY #58136 /* ~Tu aperçois un abishaï rouge. La créature est d'aspect reptilien avec un corps de serpent, quatre pattes griffues, des ailes de cuir et une tête de dragon. Les écailles qui couvrent son corps sont d'un rouge terne. Elle se tient debout sur ses pattes de derrière, en s'équilibrant à l'aide de sa queue préhensile. Elle plisse les yeux et se met à siffler en te voyant approcher.~ */
  IF ~~ THEN REPLY #58137 /* ~"Bonjour."~ */ GOTO 1
  IF ~~ THEN REPLY #58138 /* ~Ignore la créature.~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #58139 /* ~L'abishaï te regarde d'un air furieux et siffle dans un langue gutturale. Tu réalises qu'il ne s'adresse pas à toi lorsque tu entends une réponse provenant de derrière lui. Un instant après, il penche la tête d'un côté et siffle en ta direction. "Quoi toi vouloir ?"~ */
  IF ~~ THEN REPLY #58140 /* ~"J'ai quelques questions…~ */ DO ~SetGlobal("Talk_Tek","GLOBAL",1)
~ GOTO 2
  IF ~~ THEN REPLY #58141 /* ~"Rien, au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.0
  SAY #58142 /* ~L'abishaï émet une série de sifflements auxquels répond bientôt la voix inconnue. "Non… tu parler Tek'elach" Il indique vaguement derrière lui. "Lui d'accord parler avec toi… "~ */
  IF ~~ THEN REPLY #58143 /* ~"Pourquoi ne peux-tu pas répondre à mes questions ?"~ */ GOTO 3
  IF ~~ THEN REPLY #58144 /* ~"Je vois. Dans ce cas j'irai parler à ce Tek'elach."~ */ GOTO 4
  IF ~~ THEN REPLY #58145 /* ~"Peu importe. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 2.0
  SAY #58146 /* ~L'abishaï te regarde furieusement avant de répondre. "Tek'elach veut parler toi. Pas moi. Toi partir."~ */
  IF ~~ THEN REPLY #58147 /* ~"Je vois. Dans ce cas j'irai parler à ce Tek'elach."~ */ GOTO 4
  IF ~~ THEN REPLY #58148 /* ~"Peu importe. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 2.1 3.0
  SAY #58149 /* ~Tu sens une onde de chaleur émaner de l'abishaï lorsqu'il se penche pour te parler. "Tu garder respect… tu faire attention… je regarder. Je te tuer si toi faire quelque chose pas bien." Son rictus haineux te montre une double rangée de dents aiguisées comme des rasoirs. "Tu comprendre ?"~ */
  IF ~~ THEN REPLY #58150 /* ~"Oui, je comprends. Au revoir."~ */ EXIT
  IF ~~ THEN REPLY #58151 /* ~"Non, je suis stupide. Pourquoi tu ne me l'expliques pas ?"~ */ GOTO 5
END

IF ~~ THEN BEGIN 5 // from: 4.1
  SAY #58152 /* ~L'abishaï siffle à ton attention et tend une patte en direction d'un mur proche. Ses yeux ne quittent pas les tiens tandis qu'il creuse plusieurs sillons profonds dans la pierre, d'un seul coup de griffes. "Compris maintenant ? Ou vouloir explication personnalisée ?"~ */
  IF ~~ THEN REPLY #58153 /* ~"Je comprends tout à fait. Au revoir."~ */ EXIT
  IF ~~ THEN REPLY #58154 /* ~Attaque l'abishaï : "Voyons ce que tu vaux face à un véritable adversaire." ~ */ DO ~Enemy()
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
~ EXIT
END

IF WEIGHT #0 ~  Global("Talk_Tek","GLOBAL",1)
~ THEN BEGIN 6 // from:
  SAY #58155 /* ~L'abishaï siffle méchamment. "Dire toi parler Tek'elach… pars !"~ */
  IF ~~ THEN REPLY #58156 /* ~"Très bien. Au revoir."~ */ EXIT
END
