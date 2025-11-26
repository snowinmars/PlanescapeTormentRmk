// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DART14.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\fr_FR\dialog.tlk
// dialogF  : (none)

BEGIN ~DART14~

IF ~  Global("View_Art_14","AR0608",0)
~ THEN BEGIN 0 // from:
  SAY #34206 /* ~C'est le portrait d'une vieille bique grotesque au nez crochu. La chair de la sorcière est d'un bleu-gris malsain ; les yeux rougeoient comme les braises d'un feu mourant. Son menton, long et pointu, avance, comme s'il était prêt à mordre ; deux canines jaunies dépassent de sa mâchoire inférieure, telles deux défenses. Sur ses lèvres violettes et flétries, un sourire laisse deviner un horrible secret. Une pancarte annonce : 'Guenaude grise d'Oïnos'.~ */
  IF ~~ THEN REPLY #42684 /* ~Pars.~ */ DO ~SetGlobal("View_Art_14","AR0608",1)
~ GOTO 2
END

IF ~  Global("View_Art_14","AR0608",1)
~ THEN BEGIN 1 // from:
  SAY #42681 /* ~Il s'agit du portrait d'une vieille mégère grotesque au nez crochu. La guenaude affiche un teint vert-de-gris maladif ; une lueur rouge se lit dans ses yeux, telle les braises d'un feu qui s'éteint. Son menton, long et pointu, part exagérément en avant ; les deux canines jaunies de sa mâchoire inférieure ressortent, telles des petites défenses. Le sourire que forment ses lèvres desséchées et violacées laisse transparaître un horrible secret. Un écriteau indique 'Guenaude grise d'Oïnos'.~ */
  IF ~~ THEN REPLY #42686 /* ~Pars.~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 0.0
  SAY #42682 /* ~Alors que tu t'apprêtes à te détourner du tableau, quelque chose attire ton attention… Une étrange sensation surgit du fond de ta mémoire… un souvenir commence à te revenir…~ */
  IF ~~ THEN REPLY #42687 /* ~Essaie de te souvenir.~ */ DO ~PlaySoundNotRanged("SPTR_01")
GiveExperience(Protagonist,300)
~ GOTO 3
  IF ~~ THEN REPLY #42688 /* ~Détourne-toi, refoule le souvenir.~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 2.0
  SAY #42683 /* ~Tu te vois debout, perdu, dans un dédale de bruyères. La vieille mégère hideuse du tableau se tient devant toi, caquetant de manière extravagante. Tu grinces des dents de frustration, te demandant pourquoi elle se moque de toi. "Mon pauvre chou, mon adorable chose humaine !" chantonne-t-elle. "C'était ton *premier* vœu !" Elle pointe un doigt anguleux et crochu sur ton front. Tes tempes commencent à battre fort et douloureusement…… et tu ne te souviens de rien d'autre.~ */
  IF ~~ THEN REPLY #42689 /* ~Pars.~ */ EXIT
END
