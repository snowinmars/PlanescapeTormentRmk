// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DDNMERCH.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\fr_FR\dialog.tlk
// dialogF  : (none)

BEGIN ~DDNMERCH~
//////////////////////////////////////////////////
// WARNING: this file contains non-trivial WEIGHTs
//////////////////////////////////////////////////

IF WEIGHT #1 /* Triggers after states #: 5 even though they appear after this state */
~  NumTimesTalkedTo(0)
~ THEN BEGIN 0 // from:
  SAY #50999 /* ~Tu vois un squelette qui rebondit d'un pied sur l'autre. En passant entre ses dents, l'air siffle. Il semble s'ennuyer à mourir. À ton approche, son attitude change du tout au tout. "Bienvenue, bienvenue ! J'ai une multitude d'objets à te montrer ; je les tiens directement des derniers biges qui essaient de piller les gens sans histoires. Tu veux les voir ?"~ */
  IF ~~ THEN REPLY #51002 /* ~"Oui. Montre-moi ce que tu as."~ */ DO ~StartStore("Gaerien",Protagonist)
~ EXIT
  IF ~~ THEN REPLY #51001 /* ~"Non. Mais à la place, je voudrais que tu répondes à quelques questions."~ */ GOTO 1
  IF ~~ THEN REPLY #51003 /* ~"Non. J'ai fait erreur. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.1
  SAY #51004 /* ~Il soupire. "Écoute, je sais bien que j'ai toute l'éternité pour bavarder, jusqu'à qu'il pleuve des vaches, mais le fait est que je n'aime pas trop côtoyer des vivants. Moi, je prends ce qu'ils ont à proposer et je le revends à d'autres rectifiés, alors si ça ne te dérange pas, je voudrais mener cette affaire à bien et rentrer chez moi, vu ? Bien. Tu veux voir ce que j'ai ? D'accord. Je te le montre. Sinon, dégage."~ */
  IF ~~ THEN REPLY #51006 /* ~"Montre-moi ce que tu as."~ */ DO ~StartStore("Gaerien",Protagonist)
~ EXIT
  IF ~~ THEN REPLY #51005 /* ~"Alors, laisse tomber."~ */ EXIT
END

IF WEIGHT #2 /* Triggers after states #: 5 even though they appear after this state */
~  NumTimesTalkedToGT(0)
~ THEN BEGIN 2 // from:
  SAY #51007 /* ~"Oh. Encore toi. Qu'est-ce que tu veux, cette fois ?"~ */
  IF ~~ THEN REPLY #51008 /* ~"Est-ce que tu acceptes de répondre à mes questions ?"~ */ GOTO 3
  IF ~~ THEN REPLY #51009 /* ~"Tu as de nouveaux articles à me proposer ?"~ */ DO ~StartStore("Gaerien",Protagonist)
~ EXIT
  IF ~~ THEN REPLY #51010 /* ~"Rien. J'ai fait erreur. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 2.0
  SAY #51011 /* ~"Non." Il regarde derrière toi. "Franchement, je préférerais encore fixer le mur." Il te regarde de nouveau. "Tu as l'intention d'acheter quelque chose, oui ou non ?"~ */
  IF ~~ THEN REPLY #51012 /* ~"Je crois que oui."~ */ DO ~StartStore("Gaerien",Protagonist)
~ EXIT
  IF ~~ THEN REPLY #51034 /* ~"Non, sûrement pas."~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from:
  SAY #51035 /* ~"Alors, bonne journée." Il continue à émettre des sifflements discordants entre ses dents blanches.~ */
  IF ~~ THEN REPLY #51036 /* ~"Bonne journée."~ */ EXIT
END

IF WEIGHT #0 ~  Global("Undead_Alert","AR1500",1)
~ THEN BEGIN 5 // from:
  SAY #51037 /* ~Le marchand ne semble pas impressionné par le brouhaha ambiant. "Alors, comme ça, tu es venu me tuer, eh ? Vas-y. Ça m'est égal."~ */
  IF ~~ THEN REPLY #51038 /* ~"Ça t'est vraiment égal ?"~ */ GOTO 6
  IF ~~ THEN REPLY #51039 /* ~"On va voir ça tout de suite."~ */ DO ~Enemy()
ForceAttack(Protagonist,"DNMerch")
~ EXIT
  IF ~~ THEN REPLY #51040 /* ~"Alors, je te laisse tranquille. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 6 // from: 5.0
  SAY #51041 /* ~"Bien sûr que ça m'est égal. Je suis mort dans des circonstances atroces il y a très longtemps. Ce que tu pourrais me faire m'est complètement égal. La douleur ne signifie rien pour moi. Tout ce qu'il me reste maintenant, c'est la conscience, et elle n'a pas assez de valeur pour que je me batte avec toi."~ */
  IF ~~ THEN REPLY #51042 /* ~"Bien. Meurs."~ */ DO ~Enemy()
ForceAttack(Protagonist,"DNMerch")
~ EXIT
  IF ~~ THEN REPLY #51043 /* ~"Intéressant. Alors, au revoir."~ */ EXIT
END
