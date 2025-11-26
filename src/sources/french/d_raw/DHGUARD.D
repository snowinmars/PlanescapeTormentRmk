// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DHGUARD.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\fr_FR\dialog.tlk
// dialogF  : (none)

BEGIN ~DHGUARD~

IF ~  NumTimesTalkedTo(0)
GlobalLT("MK_Counter","GLOBAL",1000)
~ THEN BEGIN 0 // from:
  SAY #27728 /* ~Ce personnage imposant vêtu d'une armure rouge, immobile, semble garder l'escalier qui se trouve derrière lui. Tu te souviens vaguement que cette armure ornée est l'attribut des officiers de l'Harmonium, qui font respecter l'ordre dans la cité.~ */
  IF ~~ THEN REPLY #27898 /* ~"Bonjour…"~ */ GOTO 1
  IF ~~ THEN REPLY #27900 /* ~Laisse-le tranquille.~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0 8.0
  SAY #27923 /* ~L'homme recule avec désinvolture vers la rue. "Circule."~ */
  IF ~~ THEN REPLY #27924 /* ~"Qu'est-ce que tu fais ici ?"~ */ GOTO 11
  IF ~~ THEN REPLY #27925 /* ~"J'ai des questions…"~ */ GOTO 2
  IF ~~ THEN REPLY #27926 /* ~Pars.~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.1 11.1 12.1 13.1 14.0
  SAY #27927 /* ~"Ce n'est pas un endroit pour poser des questions. Circule."~ */
  IF ~~ THEN REPLY #27928 /* ~"Qu'est-ce que tu fais ici ?"~ */ GOTO 11
  IF ~~ THEN REPLY #27929 /* ~"J'ai juste besoin de quelques réponses…"~ */ GOTO 3
  IF ~~ THEN REPLY #27930 /* ~"J'ai besoin de ton aide…"~ */ GOTO 4
  IF ~~ THEN REPLY #27931 /* ~"Et si j'ai envie de rester ici ?"~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Patrolman_1","GLOBALLaw",-1)
~ GOTO 7
  IF ~~ THEN REPLY #27932 /* ~Pars.~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 2.1
  SAY #27933 /* ~Il secoue la tête. "Trouve un citoyen, dans ce cas. J'ai du boulot ici… et je ne vais pas le négliger pour parler avec qui que ce soit. Allez, circule."~ */
  IF ~~ THEN REPLY #27934 /* ~"Tu peux au moins me dire ce que tu fais ici ?"~ */ GOTO 11
  IF ~~ THEN REPLY #27935 /* ~"Mais j'ai besoin de ton aide…"~ */ DO ~SetAnimState(Myself,ANIM_MIMESTANDTOSTANCE)
~ GOTO 4
  IF ~~ THEN REPLY #27936 /* ~"Et si j'ai envie de rester ici ?"~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Patrolman_1","GLOBALLaw",-1)
~ GOTO 7
  IF ~~ THEN REPLY #27937 /* ~Pars.~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 2.2 3.1
  SAY #27938 /* ~Il soupèse son arme. "Tu veux de l'aide ? Un crime a été commis ?"~ */
  IF ~  CheckStatGT(Protagonist,14,CHR)
~ THEN REPLY #27939 /* ~"Eh bien… non. J'ai juste quelques questions."~ */ GOTO 5
  IF ~  CheckStatLT(Protagonist,15,CHR)
~ THEN REPLY #27940 /* ~"Eh bien… non. J'ai juste quelques questions."~ */ GOTO 6
  IF ~~ THEN REPLY #27941 /* ~"Non, tant pis. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 4.0
  SAY #27942 /* ~Il soupire. "Je crois comprendre que tu as des questions, et dans d'autres circonstances, je t'aurais volontiers aidé. Mais-." Il s'interrompt pour scruter avec suspicion le bas de l'escalier. "ce n'est pas le cas… allez, circule. Immédiatement."~ */
  IF ~~ THEN REPLY #27943 /* ~"Tu peux au moins me dire ce que tu fais ici ?"~ */ GOTO 11
  IF ~~ THEN REPLY #27944 /* ~"Et si j'ai envie de rester ici ?"~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Patrolman_1","GLOBALLaw",-1)
~ GOTO 7
  IF ~~ THEN REPLY #27945 /* ~Pars.~ */ EXIT
END

IF ~~ THEN BEGIN 6 // from: 4.1
  SAY #27946 /* ~"Écoute, bige, j'ai un -" Il s'interrompt pour scruter avec suspicion le bas de l'escalier, puis son attention revient vers toi. "boulot à faire et ce n'est pas en parlant à un bougre enfumé de ton espèce qui recherche quelqu'un ou qui veut qu'on lui explique comment aller je ne sais où que je vais le faire. Circule."~ */
  IF ~~ THEN REPLY #27947 /* ~"Tu peux au moins me dire ce que tu fais ici ?"~ */ GOTO 11
  IF ~~ THEN REPLY #27948 /* ~"Et si j'ai envie de rester ici ?"~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Patrolman_1","GLOBALLaw",-1)
~ GOTO 7
  IF ~~ THEN REPLY #27949 /* ~Pars.~ */ EXIT
END

IF ~~ THEN BEGIN 7 // from: 2.3 3.2 5.1 6.1
  SAY #27950 /* ~Il hausse les épaules, le mouvement faisant tinter son armure. "T'es libre de rester ici, mais pas de harceler un représentant de la loi. Je te suggère de partir, avant qu'il ne t'arrive des… ennuis. Au revoir."~ */
  IF ~~ THEN REPLY #27951 /* ~"Tu peux au moins me dire ce que tu fais ici ?"~ */ GOTO 11
  IF ~~ THEN REPLY #27952 /* ~Pars.~ */ EXIT
END

IF ~  NumTimesTalkedToGT(0)
GlobalLT("MK_Counter","GLOBAL",1000)
~ THEN BEGIN 8 // from:
  SAY #27953 /* ~Cet officier de l'Harmonium semble garder l'escalier qui se trouve derrière lui. Tu penses l'avoir déjà rencontré, mais c'est difficile à dire avec le heaume et l'uniforme de l'Harmonium.~ */
  IF ~~ THEN REPLY #27954 /* ~"Bonjour…"~ */ GOTO 1
  IF ~~ THEN REPLY #27955 /* ~Laisse l'officier tranquille.~ */ EXIT
END

IF ~  GlobalGT("MK_Counter","GLOBAL",999)
~ THEN BEGIN 9 // from:
  SAY #27956 /* ~Tu es sûr que cet homme est un membre de l'Harmonium, une faction qui était récemment à ta recherche. Il ne semble pas t'avoir remarqué.~ */
  IF ~~ THEN REPLY #27957 /* ~"Bonjour…"~ */ GOTO 10
  IF ~~ THEN REPLY #27958 /* ~Pars avant qu'il te voie.~ */ EXIT
END

IF ~~ THEN BEGIN 10 // from: 9.0
  SAY #27959 /* ~Les yeux de l'homme s'écarquillent à travers les fentes de son heaume. "C'est lui !" Il se prépare à charger, en hurlant : "Attrapez cet homme, mort ou vif !"~ */
  IF ~~ THEN REPLY #27960 /* ~Défends-toi.~ */ DO ~Enemy()
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
SetGlobal("Call_MK","GLOBAL",1)
~ EXIT
END

IF ~~ THEN BEGIN 11 // from: 1.0 2.0 3.0 5.0 6.0 7.0
  SAY #27961 /* ~Il désigne l'escalier derrière lui, qui semble descendre sous la cité. "Je garde cet escalier, monsieur."~ */
  IF ~~ THEN REPLY #27962 /* ~"Pourquoi ? Ça mène où ?"~ */ GOTO 12
  IF ~~ THEN REPLY #27963 /* ~"J'ai d'autres questions…"~ */ GOTO 2
  IF ~~ THEN REPLY #27964 /* ~"C'est tout ce que je voulais savoir. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 12 // from: 11.0
  SAY #27965 /* ~"Vers le Royaume d'en bas." À ton expression, il poursuit. "Le Sous-sol de Sigil, tu as peut-être entendu ce nom."~ */
  IF ~~ THEN REPLY #27966 /* ~"Pourquoi est-ce que tu empêches les gens d'entrer dans cet endroit ?"~ */ GOTO 13
  IF ~~ THEN REPLY #27967 /* ~"J'ai d'autres questions…"~ */ GOTO 2
  IF ~~ THEN REPLY #27968 /* ~"C'est tout ce que je voulais savoir. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 13 // from: 12.0
  SAY #27969 /* ~Il rit sous cape, les plaques de son armure s'entrechoquant. "Je surveille au cas où quelque chose en *sortirait*. Des choses qui n'*appartiendraient* pas à Sigil."~ */
  IF ~~ THEN REPLY #27970 /* ~"Qu'est-ce qu'il y a là-dessous ?"~ */ GOTO 14
  IF ~~ THEN REPLY #27971 /* ~"J'ai d'autres questions…"~ */ GOTO 2
  IF ~~ THEN REPLY #27972 /* ~"C'est tout ce que je voulais savoir. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 14 // from: 13.0
  SAY #27973 /* ~"Ne t'occupe pas de ça." Il te regarde un moment avec curiosité. "Tu envisages d'y descendre, hein ? Sois très prudent. Les pires espèces de créatures vivent là-dessous à ce qu'il paraît."~ */
  IF ~~ THEN REPLY #27974 /* ~"Merci. J'ai d'autres questions…"~ */ GOTO 2
  IF ~~ THEN REPLY #27975 /* ~"Merci du conseil. Au revoir."~ */ EXIT
END
