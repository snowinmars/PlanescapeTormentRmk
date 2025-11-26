// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DDAKKON.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\fr_FR\dialog.tlk
// dialogF  : (none)

BEGIN ~DDAKKON~

IF ~~ THEN BEGIN 0 // from:
  SAY #2844 /* ~Je suis Dak'kon. Un githzeraï. Je fais partie de ton groupe. Je n'ai rien à dire pour l'instant, mais je te conseille d'essayer mes super animations de combat. Quel dommage qu'il n'y ait pas d'animations mortelles de film Chambara pour les monstres que je tue…
Dak'kon : "Regarde mon épée : koroshicharu !"
Sicaire de la Ruche : "Gaaahh… munen nariiii…" *Sssssssss* <--- du sang artériel gicle *pof*
Dak'kon : "Humpf." *sching* <-- lame de *karach* rengainée dans son fourreau
(Des fleurs de cerisier tombe du haut de l'écran.)~ */
  IF ~~ THEN REPLY #2845 /* ~Plus tard, Dak'kon. J'ai hâte que tu fasses partie du groupe.~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 2.0 3.0
  SAY #6855 /* ~Dak'kon acquiesce.~ */
  IF ~  Global("Know_Dabus_Speak","GLOBAL",0)
~ THEN REPLY #7000 /* ~"Demande-lui qui il est."~ */ EXTERN ~DDABUS~ 13
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatLT(Protagonist,15,INT)
~ THEN REPLY #7001 /* ~"Demande-lui qui il est."~ */ EXTERN ~DDABUS~ 15
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatGT(Protagonist,14,INT)
~ THEN REPLY #7002 /* ~"Demande-lui qui il est."~ */ EXTERN ~DDABUS~ 17
  IF ~  Global("Know_Dabus_Speak","GLOBAL",0)
~ THEN REPLY #7003 /* ~"Demande-lui ce qu'il fait."~ */ EXTERN ~DDABUS~ 14
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatLT(Protagonist,15,INT)
~ THEN REPLY #7004 /* ~"Demande-lui ce qu'il fait."~ */ EXTERN ~DDABUS~ 16
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatGT(Protagonist,14,INT)
~ THEN REPLY #7005 /* ~"Demande-lui ce qu'il fait."~ */ EXTERN ~DDABUS~ 18
  IF ~~ THEN REPLY #7006 /* ~"Demande-lui de nous parler de la Dame des Douleurs."~ */ EXTERN ~DDABUS~ 19
  IF ~~ THEN REPLY #7007 /* ~"Demande-lui de nous parler de Fell."~ */ EXTERN ~DDABUS~ 20
  IF ~~ THEN REPLY #7008 /* ~"Peu importe. Partons."~ */ DO ~SetGlobal("Translate_Dabus","GLOBAL",0)
~ EXTERN ~DDABUS~ 6
END

IF ~~ THEN BEGIN 2 // from:
  SAY #6856 /* ~"Il dit qu'il est un dabus."~ */
  IF ~~ THEN REPLY #7009 /* ~"Peux-tu lui poser d'autres questions ?"~ */ GOTO 1
  IF ~~ THEN REPLY #7010 /* ~"C'est tout ce que je voulais savoir. Au revoir."~ */ DO ~SetGlobal("Translate_Dabus","GLOBAL",0)
~ EXTERN ~DDABUS~ 6
END

IF ~~ THEN BEGIN 3 // from:
  SAY #6857 /* ~"Il dit qu'il fait son travail."~ */
  IF ~~ THEN REPLY #7011 /* ~"Peux-tu lui poser d'autres questions ?"~ */ GOTO 1
  IF ~~ THEN REPLY #7012 /* ~"C'est tout ce que je voulais savoir. Au revoir."~ */ DO ~SetGlobal("Translate_Dabus","GLOBAL",0)
~ EXTERN ~DDABUS~ 6
END

IF ~~ THEN BEGIN 4 // from:
  SAY #6471 /* ~"Mon compagnon voudrait te parler au sujet du fonctionnement de cet appareil. Peut-il parler en notre nom à tous les deux ?"~ */
  IF ~~ THEN EXTERN ~DKELLERA~ 35
END

IF ~~ THEN BEGIN 5 // from:
  SAY #6473 /* ~"Elle fait partie du Peuple. Ses marques montrent qu'elle vient des Limbes et qu'on a fait en sorte qu'elle ne *connaisse* pas la terre de ses ancêtres. Ses marques appellent tous les githzeraïs à l'aider et les préviennent qu'elle fait toujours partie du Peuple. La révérence dont elle a fait preuve à mon égard est celle que l'on doit à tous les *zerths*."~ */
  IF ~~ THEN REPLY #7999 /* ~"D'accord. Kel'lera, j'ai quelques questions à te poser…"~ */ EXTERN ~DKELLERA~ 21
END

IF ~~ THEN BEGIN 6 // from:
  SAY #5688 /* ~"Ce serait un honneur pour moi de rencontrer un autre paria, un autre exilé. Peut-être que la honte que nous partageons atténuera la douleur que nous endurons."~ */
  IF ~~ THEN REPLY #5689 /* ~"Tant mieux. Je ne te demandais pas ton avis. J'ai d'autres questions à poser à cet autre bougre, là."~ */ DO ~IncrementGlobal("BD_DAKKON_MORALE","GLOBAL",-2)
~ EXTERN ~GFWEAPS~ 14
  IF ~~ THEN REPLY #5690 /* ~"Nous lui parlerons suffisamment tôt, mon ami. En attendant, j'ai d'autres questions à poser à notre ami qui est là."~ */ EXTERN ~GFWEAPS~ 14
END

IF ~~ THEN BEGIN 7 // from:
  SAY #8694 /* ~Dak'kon parle lentement, comme pour calmer le gith. "Ses mots ne sont pas l'Evangile des Anarques. Sa grossièreté n'est pas voulue."~ */
  IF ~  Global("Dakkon_Slave","GLOBAL",1)
~ THEN REPLY #8994 /* ~"Oh, si. N'oublie pas qui tu es, Dak'kon. Tu es mon esclave et tu *dois* m'obéir."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Githzerai_4","GLOBALGood",-1)
IncrementGlobal("BD_DAKKON_MORALE","GLOBAL",-1)
~ EXTERN ~DGITH~ 64
  IF ~~ THEN REPLY #8995 /* ~"Oh, si. Je ne resterai pas là plus longtemps à vous écouter vous aboyer dessus, chiens gith."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Githzerai_5","GLOBALGood",-1)
IncrementGlobalOnceEx("GLOBALChaotic_Githzerai_4","GLOBALLaw",-1)
IncrementGlobal("BD_DAKKON_MORALE","GLOBAL",-1)
~ EXTERN ~DGITH~ 64
  IF ~~ THEN REPLY #8996 /* ~"Si je t'ai offensé, je m'en excuse. Tu me pardonnes ?"~ */ DO ~IncrementGlobalOnceEx("GLOBALLawful_Githzerai_1","GLOBALLaw",1)
IncrementGlobalOnceEx("GLOBALGood_Githzerai_1","GLOBALGood",1)
~ EXTERN ~DGITH~ 9
  IF ~~ THEN REPLY #8997 /* ~"Peu importe, Dak'kon. Allons-nous-en."~ */ EXIT
END

IF ~~ THEN BEGIN 8 // from:
  SAY #8695 /* ~"J'entends dans sa bouche la vérité d'un Anarque et l'autorité d'un Anarque. Je n'ai pas le… droit d'hésiter dans de telles circonstances."~ */
  IF ~~ THEN REPLY #8998 /* ~Attends de voir ce que fait le gith.~ */ EXTERN ~DGITH~ 66
  IF ~~ THEN REPLY #8999 /* ~"Nous sommes solidaires, gith. Je te demande de te rendre."~ */ EXTERN ~DGITH~ 66
  IF ~~ THEN REPLY #9000 /* ~"Si tu fais un seul pas vers moi, gith, il attaque. Et si tu viens à bout de lui, je te jure que c'est moi qui te tuerai. Maintenant, rends-toi."~ */ DO ~IncrementGlobal("BD_DAKKON_MORALE","GLOBAL",-1)
~ EXTERN ~DGITH~ 66
  IF ~~ THEN REPLY #9001 /* ~"Ça suffit. Tu vas mourir, gith."~ */ DO ~Enemy()
Attack(Protagonist)
ChangeAIScript("MDKTNO",DEFAULT)
ForceAttack(Protagonist,Myself)
IncrementGlobal("BD_DAKKON_MORALE","GLOBAL",-2)
~ EXIT
END

IF ~~ THEN BEGIN 9 // from:
  SAY #8696 /* ~"N'attaque pas. Je n'ai pas le droit de désobéir."~ */
  IF ~~ THEN REPLY #9002 /* ~Attends de voir ce que fait le gith.~ */ EXTERN ~DGITH~ 67
  IF ~~ THEN REPLY #9003 /* ~"Nous sommes solidaires, gith. Pour la dernière fois, je te demande de te rendre."~ */ EXTERN ~DGITH~ 67
  IF ~~ THEN REPLY #9004 /* ~"Si tu fais un seul pas vers moi, gith, il attaque. Et si tu viens à bout de lui, je te jure que c'est moi qui te tuerai. Maintenant, rends-toi."~ */ DO ~IncrementGlobal("BD_DAKKON_MORALE","GLOBAL",-1)
~ EXTERN ~DGITH~ 67
  IF ~~ THEN REPLY #9005 /* ~"Ça suffit. Tu vas mourir, gith."~ */ DO ~Enemy()
Attack(Protagonist)
ChangeAIScript("MDKTNO",DEFAULT)
ForceAttack(Protagonist,Myself)
IncrementGlobal("BD_DAKKON_MORALE","GLOBAL",-2)
~ EXIT
END

IF ~~ THEN BEGIN 10 // from:
  SAY #8697 /* ~Dak'kon parle lentement une fois encore. "Le choix de T'cha est le mien." Sa peau semble se décolorer à chaque mot qu'il prononce ; les mots en question semblent le tuer à petit feu. "Ces chaînes sont les miennes. Un Anarque de cent ans, dont aucun sablier ne pourrait mesurer l'histoire. Le problème est aussi complexe que les racines de Fri'hi. Il n'y a pas de solution possible." Il fronce les sourcils. "N'attaque pas, ou je devrai tuer l'un des miens."~ */
  IF ~~ THEN REPLY #9006 /* ~Attends…~ */ EXTERN ~DGITH~ 68
  IF ~~ THEN REPLY #9007 /* ~"À toi de choisir, gith. Veux-tu vraiment voir le sang se répandre ici aujourd'hui ?"~ */ EXTERN ~DGITH~ 68
  IF ~~ THEN REPLY #9008 /* ~"Ça suffit. Tu vas mourir, gith."~ */ DO ~Enemy()
Attack(Protagonist)
ChangeAIScript("MDKTNO",DEFAULT)
ForceAttack(Protagonist,Myself)
IncrementGlobal("BD_DAKKON_MORALE","GLOBAL",-2)
~ EXIT
END

IF ~~ THEN BEGIN 11 // from:
  SAY #8698 /* ~Dak'kon répond dans la même langue. La structure de la phrase est étrange ; il te semble qu'il a dit : "Celui-ci compte parmi les fidèles."~ */
  IF ~~ THEN REPLY #9009 /* ~"Que dit-il, Dak'kon ?"~ */ EXTERN ~DGITH~ 56
  IF ~~ THEN REPLY #9010 /* ~"Dak'kon, peu importe. Allons-nous-en."~ */ EXTERN ~DGITH~ 56
END

IF ~~ THEN BEGIN 12 // from:
  SAY #8699 /* ~Dak'kon fait la même réponse ; le ton a légèrement changé, mais le sens paraît identique. "Celui-ci compte parmi les fidèles." Puis il se tait, comme pour donner plus de poids à sa phrase. "Celui qui se tient près de moi parle. Veux-tu l'entendre ?"~ */
  IF ~~ THEN REPLY #9011 /* ~Écoute.~ */ EXTERN ~DGITH~ 58
  IF ~~ THEN REPLY #9012 /* ~"Dak'kon, peu importe. Allons-nous-en."~ */ EXIT
END

IF ~~ THEN BEGIN 13 // from:
  SAY #8700 /* ~La réponse de Dak'kon est brève, mais il parle lentement, comme s'il devait s'arracher les mots de la gorge. "Le choix de T'cha est devenu le mien."~ */
  IF ~~ THEN REPLY #9013 /* ~Écoute.~ */ EXTERN ~DGITH~ 59
  IF ~~ THEN REPLY #9014 /* ~"Dak'kon, peu importe. Allons-nous-en."~ */ EXIT
END

IF ~~ THEN BEGIN 14 // from:
  SAY #8701 /* ~Dak'kon parle lentement une fois encore. "Le choix de T'cha est le mien." Sa peau semble se décolorer à chaque mot qu'il prononce ; les mots en question semblent le tuer à petit feu. "Ces chaînes sont les miennes. Un Anarque de cent ans, dont aucun sablier ne pourrait mesurer l'histoire. Le problème est aussi complexe que les racines de Fri'hi. Il n'y a pas de solution possible." Il fronce les sourcils, puis hausse le ton. "Celui qui se tient près de moi parle. Veux-tu l'entendre ?"~ */
  IF ~~ THEN REPLY #9015 /* ~Attends.~ */ EXTERN ~DGITH~ 60
  IF ~~ THEN REPLY #9016 /* ~"Dak'kon, peu importe. Allons-nous-en."~ */ EXIT
END

IF ~~ THEN BEGIN 15 // from:
  SAY #8702 /* ~Dak'kon se tourne vers toi. "Il va t'écouter."~ */
  IF ~~ THEN REPLY #9017 /* ~"Si tu pouvais lui demander si…"~ */ EXTERN ~DGITH~ 54
  IF ~~ THEN REPLY #9018 /* ~"Dak'kon, peu importe. Allons-nous-en."~ */ EXIT
END

IF ~~ THEN BEGIN 16 // from:
  SAY #8703 /* ~Dak'kon hoche la tête lentement, comme si le geste lui en coûtait. "Tu… te trompes. Cet homme n'a tué personne du peuple."~ */
  IF ~~ THEN REPLY #9019 /* ~"Tu vois ? Maintenant, pose cette lame, s'il te plaît."~ */ EXTERN ~DGITH~ 72
END

IF ~~ THEN BEGIN 17 // from:
  SAY #8704 /* ~Dak'kon se tourne vers le githzeraï pour lui parler plus lentement et sur un ton plus mesuré. La réponse du githzeraï est brève.~ */
  IF ~~ THEN REPLY #9021 /* ~"Qu'a-t-il dit ?"~ */ EXTERN ~DGITH~ 54
  IF ~~ THEN REPLY #9022 /* ~"Peu importe, Dak'kon. Allons-nous-en."~ */ EXIT
END

IF ~  Global("Dakkon","GLOBAL",0)
!GlobalGT("Fortress_Dakkon","GLOBAL",2)
~ THEN BEGIN 18 // from:
  SAY #14980 /* ~L'homme devant toi est *âgé*. Sa peau sèche et jaune est marquée par les cicatrices d'un grand voyageur qui n'a jamais pris beaucoup de repos. Son visage tiré est inhumainement angulaire et ses oreilles sont pointues. Il porte une large tunique orange et une étrange lame miroitante attachée dans le dos. La lame ressemble à un glaive à deux fourches, fabriqué dans une sorte de métal dont la surface ondule comme une pellicule d'huile sur un étang.~ */
  IF ~~ THEN REPLY #15055 /* ~"Bonjour."~ */ DO ~SetAnimState("Dakkon",ANIM_MIMESTAND)
~ GOTO 19
  IF ~~ THEN REPLY #15056 /* ~Ignore l'homme.~ */ EXIT
END

IF ~~ THEN BEGIN 19 // from: 18.0
  SAY #14982 /* ~L'homme se tourne vers toi, ses yeux semblables à du charbon poli. Il te fixe un moment et tu te demandes s'il est aveugle. L'arme devient soudain noir opaque, reflétant les yeux de l'homme.~ */
  IF ~~ THEN REPLY #15058 /* ~"Ça va ?"~ */ GOTO 20
END

IF ~~ THEN BEGIN 20 // from: 19.0
  SAY #14984 /* ~Il se tait un instant, cherchant simplement ton visage de ses yeux. "Salut… voyageur." Sa voix est calme et morne comme le vent soufflant dans les branches d'un arbre immense.~ [DAK001B] */
  IF ~~ THEN REPLY #15060 /* ~"Salut."~ */ GOTO 21
  IF ~~ THEN REPLY #15061 /* ~"Excuse-moi, je ne voulais pas te déranger. Au revoir."~ */ GOTO 22
END

IF ~~ THEN BEGIN 21 // from: 20.0
  SAY #14985 /* ~L'homme croise ton regard, ses yeux s'enfoncent dans les tiens. Son arme perd sa couleur noire et reprend l'éclat que tu lui connaissais avant de lui parler. "Je vois dans tes yeux que le chemin a été long pour venir jusqu'ici."~ [DAK001C] */
  IF ~~ THEN REPLY #15062 /* ~"Tu n'as pas tort."~ */ GOTO 24
  IF ~~ THEN REPLY #15063 /* ~"Excuse-moi, je ne voulais pas te déranger. Au revoir."~ */ GOTO 23
END

IF ~~ THEN BEGIN 22 // from: 20.1
  SAY #14986 /* ~"Attends." La voix de l'homme est calme et morne, comme le vent soufflant dans les branches d'un arbre immense. Sans trop savoir pourquoi, sa voix te semble réconfortante. En te tournant, tu le vois t'examiner. "Tes yeux ont le poids de quelqu'un qui a longtemps voyagé pour arriver jusqu'ici."~ */
  IF ~~ THEN REPLY #15064 /* ~"Tu n'as pas tort."~ */ GOTO 24
  IF ~~ THEN REPLY #15065 /* ~"Je ne voulais pas te déranger. Au revoir."~ */ GOTO 23
END

IF ~~ THEN BEGIN 23 // from: 21.1 22.1
  SAY #14987 /* ~"Tu ne m'as pas dérangé. Mes pensées ne vont pas m'échapper." Le regard de l'homme ne vacille pas et tu as du mal à t'en détourner tant que tu fais l'objet de son attention. "Je suis *connu* sous le nom de Dak'kon." Sa façon d'accentuer le mot *connu* te semble étrange… mais familière aussi. "Je ne… je ne te *connais* pas."~ */
  IF ~~ THEN REPLY #15066 /* ~"Je ne sais pas qui je suis moi-même."~ */ DO ~SetGlobal("Dakkon","GLOBAL",1)
~ GOTO 25
  IF ~~ THEN REPLY #15067 /* ~"Je ne voulais pas te déranger. Au revoir."~ */ DO ~SetGlobal("Dakkon","GLOBAL",1)
~ GOTO 67
END

IF ~~ THEN BEGIN 24 // from: 21.0 22.0
  SAY #14989 /* ~Le regard de l'homme ne fléchit pas face au tien. "Je suis *connu* sous le nom de Dak'kon." Sa façon d'accentuer le mot *connu* te semble étrange… mais familière aussi. "Je ne… je ne te *connais* pas."~ */
  IF ~~ THEN REPLY #15068 /* ~"Je ne sais pas qui je suis moi-même."~ */ DO ~SetGlobal("Dakkon","GLOBAL",1)
~ GOTO 25
  IF ~~ THEN REPLY #15069 /* ~"Je visite cette cité."~ */ DO ~SetGlobal("Dakkon","GLOBAL",1)
~ GOTO 26
  IF ~~ THEN REPLY #15070 /* ~"Je ne te connais pas."~ */ DO ~SetGlobal("Dakkon","GLOBAL",1)
~ GOTO 27
END

IF ~~ THEN BEGIN 25 // from: 23.0 24.0
  SAY #14990 /* ~"C'est tant mieux. Si tu te *connais* toi-même, il n'y a pas grand-chose qui vaille la peine d'être *connu* dans les plans." Il devient silencieux un moment et t'examine de ses yeux noir charbon. "Je veux *connaître* la raison de ta venue dans cette cité."~ */
  IF ~~ THEN REPLY #15071 /* ~"Je cherche des réponses… J'ai beaucoup de questions."~ */ GOTO 28
END

IF ~~ THEN BEGIN 26 // from: 24.1
  SAY #14991 /* ~Dak'kon reste silencieux un moment et t'examine de ses yeux noir charbon. "Les plans sont infinis et pourtant tu es là. Je veux *connaître* la raison de ta venue dans cette cité."~ */
  IF ~~ THEN REPLY #15072 /* ~"Je cherche des réponses… J'ai beaucoup de questions."~ */ GOTO 28
END

IF ~~ THEN BEGIN 27 // from: 24.2
  SAY #14993 /* ~"Nous sommes d'accord sur ce point, alors." Dak'kon devient silencieux un moment et t'examine encore de ses yeux noir charbon. "Les plans sont infinis et pourtant tu es là. Je veux *connaître* la raison de ta venue dans cette cité."~ */
  IF ~~ THEN REPLY #15073 /* ~"Je cherche des réponses… J'ai beaucoup de questions."~ */ GOTO 28
END

IF ~~ THEN BEGIN 28 // from: 25.0 26.0 27.0 29.1 30.1 31.1 32.1 33.1 34.1 35.1 36.2 37.1 38.7 39.3 40.2 41.1 42.0 43.2 44.2 45.2 46.2 47.2 48.2 49.2 50.2 51.1 52.1 53.1 54.1 55.1 56.1 57.0 58.3 59.2 60.1 61.2 62.3 63.2 64.0 65.0 66.0 73.0
  SAY #14995 /* ~"Pose tes questions. Je t'écouterai."~ */
  IF ~  Global("Dakkon_Githzerai","GLOBAL",0)
~ THEN REPLY #15074 /* ~"Ton visage… ne m'est pas familier. Qui es-tu ?"~ */ GOTO 29
  IF ~  Global("Dakkon_Githzerai","GLOBAL",1)
~ THEN REPLY #15075 /* ~"Tu peux me reparler des githzeraï ?"~ */ GOTO 33
  IF ~~ THEN REPLY #15076 /* ~"Qu'est-ce que tu peux me dire sur cette cité ?"~ */ GOTO 35
  IF ~~ THEN REPLY #15077 /* ~"Tu sembles accorder de l'importance à la 'connaissance'. Qu'est-ce que tu veux dire par là ?"~ */ GOTO 52
  IF ~~ THEN REPLY #15078 /* ~"C'est quoi, cette lame ?"~ */ GOTO 58
  IF ~  Global("Pharod","GLOBAL",0)
~ THEN REPLY #15079 /* ~"Tu connais un certain Pharod ? On m'a dit qu'il savait des choses sur moi."~ */ GOTO 65
  IF ~  Global("Journal","GLOBAL",0)
~ THEN REPLY #15080 /* ~"J'ai perdu un journal. Tu sais où il pourrait être ?"~ */ GOTO 66
  IF ~~ THEN REPLY #15081 /* ~"Il n'y a rien à dire. Au revoir."~ */ GOTO 67
END

IF ~~ THEN BEGIN 29 // from: 28.0
  SAY #14997 /* ~"Un githzeraï."~ */
  IF ~~ THEN REPLY #15082 /* ~"Un githzeraï ?"~ */ GOTO 30
  IF ~~ THEN REPLY #15083 /* ~"J'ai d'autres questions…"~ */ GOTO 28
  IF ~~ THEN REPLY #15084 /* ~"Je vois. Je dois m'en aller. Au revoir."~ */ GOTO 67
END

IF ~~ THEN BEGIN 30 // from: 29.0 62.0
  SAY #14998 /* ~"Un githzeraï est un membre du Peuple."~ */
  IF ~~ THEN REPLY #15125 /* ~"Quoi ?"~ */ GOTO 31
  IF ~~ THEN REPLY #15126 /* ~"J'ai d'autres questions…"~ */ GOTO 28
  IF ~~ THEN REPLY #15127 /* ~"Je vois. Je dois m'en aller. Au revoir."~ */ GOTO 67
END

IF ~~ THEN BEGIN 31 // from: 30.0
  SAY #14999 /* ~"Un githzeraï."~ */
  IF ~~ THEN REPLY #15128 /* ~"Oui, mais qui sont exactement les githzeraï ?"~ */ GOTO 32
  IF ~~ THEN REPLY #15129 /* ~"Merci pour ces explications, j'ai compris beaucoup de choses. J'ai d'autres questions…"~ */ GOTO 28
  IF ~~ THEN REPLY #15130 /* ~"Je vois. Je dois m'en aller. Au revoir."~ */ GOTO 67
END

IF ~~ THEN BEGIN 32 // from: 31.0
  SAY #15000 /* ~Dak'kon reste silencieux un instant, puis il prend la parole. "Notre histoire n'a pas besoin d'être *connue* de toi. Nous saignerions jusqu'à la mort sur la lame du temps avant que j'aie récité une fraction des histoires de notre Peuple."~ */
  IF ~~ THEN REPLY #15131 /* ~"Je n'ai pas besoin de connaître tes histoires… Je voudrais juste savoir ce qu'est ton peuple aujourd'hui."~ */ DO ~SetGlobal("Dakkon_Githzerai","GLOBAL",1)
SetAnimState("Dakkon",ANIM_MIMESTANDTOSTANCE)
~ GOTO 33
  IF ~~ THEN REPLY #15132 /* ~"J'ai d'autres questions…"~ */ GOTO 28
  IF ~~ THEN REPLY #15133 /* ~"Je vois. Je dois m'en aller. Au revoir."~ */ GOTO 67
END

IF ~~ THEN BEGIN 33 // from: 28.1 32.0 62.1
  SAY #15002 /* ~Dak'kon reste silencieux un instant. "*Sache* ceci et accepte-le pour réponse : nous sommes le Peuple installé sur le Plan changeant des Limbes." D'un habile mouvement, Dak'kon fait glisser la lame sur son dos et la tient devant lui.~ */
  IF ~~ THEN REPLY #15134 /* ~Attends de voir ce qui se passe.~ */ DO ~SetAnimState("Dakkon",ANIM_MIMEATTACK2)
~ GOTO 34
  IF ~~ THEN REPLY #15135 /* ~"J'ai d'autres questions…"~ */ GOTO 28
  IF ~~ THEN REPLY #15136 /* ~"Il n'y a rien à dire. Au revoir."~ */ GOTO 67
END

IF ~~ THEN BEGIN 34 // from: 33.0
  SAY #15004 /* ~"Là, nous façonnons avec nos esprits la matière des Limbes. Avec nos pensées, nous forgeons des cités." Tandis que tu regardes, une série d'ondes métalliques commence à se dérouler à partir du centre de la lame. Le creux et la crête des vagues ponctuent les inflexions dans la voix de Dak'kon. "C'est dans ce chaos que nous résidons, avec pour seule protection notre *connaissance*. Nous sommes les githzeraï."~ */
  IF ~~ THEN REPLY #15137 /* ~"Qu'est-ce que c'est que cette lame… Elle bouge, elle réagit au son de ta voix."~ */ GOTO 58
  IF ~~ THEN REPLY #15138 /* ~"J'ai d'autres questions…"~ */ GOTO 28
  IF ~~ THEN REPLY #15139 /* ~"Très bien. Au revoir."~ */ GOTO 67
END

IF ~~ THEN BEGIN 35 // from: 28.2
  SAY #15005 /* ~"Elle est *connue* sous le nom de 'Sigil'. Pour le Peuple, elle est *connue* comme la cité qui ne se *connaît* pas elle-même."~ */
  IF ~~ THEN REPLY #15140 /* ~"Qui ne se connaît pas elle-même ? Qu'est-ce que tu veux dire ?"~ */ GOTO 36
  IF ~~ THEN REPLY #15141 /* ~"J'ai d'autres questions…"~ */ GOTO 28
  IF ~~ THEN REPLY #15142 /* ~"Il n'y a rien à dire. Au revoir."~ */ GOTO 67
END

IF ~~ THEN BEGIN 36 // from: 35.0
  SAY #15006 /* ~"La cité existe mais ne se *connaît* pas elle-même. Comme elle ne se *connaît* pas elle-même, son existence est imparfaite."~ */
  IF ~~ THEN REPLY #15143 /* ~"Comment ça ?"~ */ GOTO 38
  IF ~~ THEN REPLY #15144 /* ~"Tu parles de la cité comme si elle était vivante."~ */ GOTO 37
  IF ~~ THEN REPLY #15145 /* ~"J'ai d'autres questions…"~ */ GOTO 28
  IF ~~ THEN REPLY #15146 /* ~"Il n'y a rien à dire. Au revoir."~ */ GOTO 67
END

IF ~~ THEN BEGIN 37 // from: 36.1 38.6
  SAY #15007 /* ~"Elle peut ne pas être consciente et se *connaître* elle-même au sens où toi ou moi, nous nous *connaissons* nous-mêmes, mais elle vit. Elle grandit, change et affecte tous ceux qui y vivent."~ */
  IF ~~ THEN REPLY #15147 /* ~"Pourquoi est-ce que tu as dit que la cité ne se connaît pas elle-même ?"~ */ GOTO 38
  IF ~~ THEN REPLY #15148 /* ~"Je vois. J'ai d'autres questions…"~ */ GOTO 28
  IF ~~ THEN REPLY #15149 /* ~"Merci du renseignement. Au revoir."~ */ GOTO 67
END

IF ~~ THEN BEGIN 38 // from: 36.0 37.0 43.1 44.1 45.1 46.1 47.1 48.1 49.1 50.1 51.0
  SAY #15008 /* ~"La cité existe par opposition à elle-même. Elle s'est détachée des plans, pourtant elle cherche à être partout à la fois. Ses murs sont des portes, mais ces portes sont verrouillées. Une telle existence indique une chose qui ne se *connaît* pas elle-même. En ne se *connaissant* pas elle-même, elle est imparfaite."~ */
  IF ~~ THEN REPLY #15150 /* ~"Quand tu dis que cette cité est partout à la fois, qu'est-ce que tu veux dire ?"~ */ GOTO 43
  IF ~~ THEN REPLY #15151 /* ~"Ses murs sont des portes ?"~ */ GOTO 43
  IF ~  CheckStatGT(Protagonist,12,INT)
CheckStatLT(Protagonist,13,WIS)
~ THEN REPLY #15152 /* ~Vérité : "Et si la cité n'était *pas* imparfaite ? Les choses n'ont pas forcément besoin d'être en ordre et d'avoir un but pour se connaître. Et si ces contradictions étaient des forces invisibles ?"~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Dakkon_1","GLOBALLaw",-1)
~ GOTO 39
  IF ~  CheckStatGT(Protagonist,12,WIS)
~ THEN REPLY #15153 /* ~Vérité : "Et si la cité n'était *pas* imparfaite ? Les choses n'ont pas forcément besoin d'être en ordre et d'avoir un but pour se connaître. Et si ces contradictions étaient des forces invisibles ?"~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Dakkon_1","GLOBALLaw",-1)
~ GOTO 39
  IF ~  CheckStatGT(Protagonist,12,INT)
CheckStatLT(Protagonist,13,WIS)
~ THEN REPLY #15154 /* ~Vérité : "Peut-être que la cité n'est *pas* imparfaite, et que tu ne connais tout simplement pas les raisons de ses contradictions ? Il y a un ordre dans tout. Il existe peut-être quelque chose de sous-jacent que tu ne peux percevoir."~ */ DO ~IncrementGlobalOnceEx("GLOBALLawful_Dakkon_1","GLOBALLaw",1)
~ GOTO 39
  IF ~  CheckStatGT(Protagonist,12,WIS)
~ THEN REPLY #15155 /* ~Vérité : "Et si la cité n'était *pas* imparfaite et que tu ne connaissais pas les raisons de ses contradictions ? Il y a un ordre dans tout. Il existe peut-être quelque chose de sous-jacent que tu ne peux pas percevoir."~ */ DO ~IncrementGlobalOnceEx("GLOBALLawful_Dakkon_1","GLOBALLaw",1)
~ GOTO 39
  IF ~~ THEN REPLY #15156 /* ~"Tu parles de la cité comme si elle était vivante."~ */ GOTO 37
  IF ~~ THEN REPLY #15157 /* ~"J'ai d'autres questions…"~ */ GOTO 28
  IF ~~ THEN REPLY #15158 /* ~"Il n'y a rien à dire. Au revoir."~ */ GOTO 67
END

IF ~~ THEN BEGIN 39 // from: 38.2 38.3 38.4 38.5
  SAY #15010 /* ~"À ta question, une question : qu'est-ce qui se passe si la cité est imparfaite et que tu aperçois partout ses contradictions ?"~ */
  IF ~  CheckStatGT(Protagonist,13,INT)
CheckStatLT(Protagonist,14,WIS)
~ THEN REPLY #15159 /* ~Vérité : "À *ta* question, je répondrai aussi par une question : tu prétends que l'existence de cette cité est imparfaite. Mais tu l'acceptes sans chercher à savoir s'il existe quelque chose de meilleur. Tu es donc imparfait… Ce que tu cherches, ce n'est pas la connaissance, mais seulement une réponse qui t'arrange."~ */ GOTO 40
  IF ~  CheckStatGT(Protagonist,13,WIS)
~ THEN REPLY #15160 /* ~Vérité : "À *ta* question, je répondrai aussi par une question : tu prétends que l'existence de cette cité est imparfaite. Mais tu l'acceptes sans chercher à savoir s'il existe quelque chose de meilleur. Tu es donc imparfait… Ce que tu cherches, ce n'est pas la connaissance, mais seulement une réponse qui t'arrange."~ */ GOTO 40
  IF ~~ THEN REPLY #15161 /* ~"Quand tu disais que cette cité était partout à la fois, qu'est-ce que tu voulais dire ?"~ */ GOTO 43
  IF ~~ THEN REPLY #15162 /* ~"J'ai d'autres questions…"~ */ GOTO 28
  IF ~~ THEN REPLY #15163 /* ~"Il n'y a rien à dire. Au revoir."~ */ GOTO 67
END

IF ~~ THEN BEGIN 40 // from: 39.0 39.1
  SAY #15012 /* ~Dak'kon devient silencieux. "Il n'y a pas de *connaissance* de la réponse aux questions que nous avons posées. Pourtant la cité existe. C'est tout."~ */
  IF ~  Global("Dakkon_Word","GLOBAL",0)
~ THEN REPLY #15164 /* ~"Et moi je maintiens qu'on se *connaît* soi-même par les questions qu'on se pose et par celles qu'on ne se pose pas. Si on cesse de se poser des questions et qu'on accepte uniquement ce qu'on peut percevoir…"~ */ DO ~SetGlobal("Dakkon_Word","GLOBAL",1)
GiveExperience(Protagonist,500)
~ GOTO 41
  IF ~  Global("Dakkon_Word","GLOBAL",1)
~ THEN REPLY #15165 /* ~"Et moi je maintiens qu'on se *connaît* soi-même par les questions qu'on se pose et par celles qu'on ne se pose pas. Si on cesse de se poser des questions et qu'on accepte uniquement ce qu'on peut percevoir…"~ */ GOTO 41
  IF ~~ THEN REPLY #15166 /* ~"Peu importe. J'ai d'autres questions…"~ */ GOTO 28
  IF ~~ THEN REPLY #15167 /* ~"Je ne voulais pas te déranger. Au revoir."~ */ GOTO 67
END

IF ~~ THEN BEGIN 41 // from: 40.0 40.1
  SAY #15014 /* ~"Nous cesserons alors de nous *connaître* nous-mêmes." La voix de Dak'kon est devenue plus grave. "Ces mots ont déjà été prononcés. Je les ai entendus et *connus*."~ */
  IF ~~ THEN REPLY #15168 /* ~"Où est-ce que tu les as entendus ?"~ */ GOTO 42
  IF ~~ THEN REPLY #15169 /* ~"Peu importe. J'ai d'autres questions…"~ */ GOTO 28
  IF ~~ THEN REPLY #15170 /* ~"Je ne voulais pas te déranger. Au revoir."~ */ GOTO 67
END

IF ~~ THEN BEGIN 42 // from: 41.0
  SAY #15016 /* ~"Ces mots sont miens. Autrefois, je les *connaissais* et je *connaissais* leur signification. Je les avais oubliés jusqu'à ce que tu les prononces." Le regard de Dak'kon plonge en toi et sa lame cesse de miroiter, se vidant de toute couleur jusqu'à devenir translucide. Il y a un moment de silence, puis Dak'kon te regarde. "Je ferai le voyage avec toi."~ */
  IF ~~ THEN REPLY #15171 /* ~"Je vais y réfléchir. J'avais d'abord d'autres questions…"~ */ GOTO 28
  IF ~~ THEN REPLY #15172 /* ~"J'accepte. Une autre lame sera la bienvenue."~ */ GOTO 72
  IF ~~ THEN REPLY #15173 /* ~"Tu es vieux. À quoi tu pourrais me servir ?"~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Dakkon_1","GLOBALGood",-1)
~ GOTO 70
  IF ~~ THEN REPLY #15175 /* ~"Pas aujourd'hui. Au revoir."~ */ GOTO 68
END

IF ~~ THEN BEGIN 43 // from: 38.0 38.1 39.2
  SAY #15018 /* ~"La cité elle-même est faite de portes. Ces portes conduisent partout."~ */
  IF ~~ THEN REPLY #15174 /* ~"Où sont ces portes ?"~ */ GOTO 44
  IF ~~ THEN REPLY #15176 /* ~"Pourquoi tu as dit que la cité était imparfaite déjà ?"~ */ GOTO 38
  IF ~~ THEN REPLY #15177 /* ~"Je vois. J'ai d'autres questions…"~ */ GOTO 28
  IF ~~ THEN REPLY #15178 /* ~"Merci du renseignement. Au revoir."~ */ GOTO 67
END

IF ~~ THEN BEGIN 44 // from: 43.0
  SAY #15020 /* ~"Elles sont partout…" Dak'kon reste silencieux un moment. "On dit que tout espace limité dans cette cité est une porte qui mène partout."~ */
  IF ~~ THEN REPLY #15179 /* ~"Je ne comprends pas."~ */ GOTO 45
  IF ~~ THEN REPLY #15180 /* ~"Pourquoi est-ce que tu as dit que la cité était imparfaite, déjà ?"~ */ GOTO 38
  IF ~~ THEN REPLY #15181 /* ~"Je vois. J'ai d'autres questions…"~ */ GOTO 28
  IF ~~ THEN REPLY #15182 /* ~"Merci du renseignement. Au revoir."~ */ GOTO 67
END

IF ~~ THEN BEGIN 45 // from: 44.0
  SAY #15021 /* ~"Imagine la porte du Bar du Cadavre fumant. Enlève la porte. Le cadre reste. L'espace dans ce cadre reste une porte."~ */
  IF ~~ THEN REPLY #15183 /* ~"Mais j'ai emprunté cette porte pour entrer ici. C'est juste… une ouverture."~ */ GOTO 46
  IF ~~ THEN REPLY #15184 /* ~"Pourquoi est-ce que tu as dit que la cité était imparfaite, déjà ?"~ */ GOTO 38
  IF ~~ THEN REPLY #15185 /* ~"Je vois. J'ai d'autres questions…"~ */ GOTO 28
  IF ~~ THEN REPLY #15186 /* ~"Merci du renseignement. Au revoir."~ */ GOTO 67
END

IF ~~ THEN BEGIN 46 // from: 45.0
  SAY #15022 /* ~"Beaucoup de ces portes ne sont pas visibles. Tu peux passer à travers elles comme si c'était de l'air et ne pas les *connaître*. Elles sont fermées à ta vue et à ton toucher."~ */
  IF ~~ THEN REPLY #15187 /* ~"Et ces portes invisibles sont *partout* dans Sigil ?"~ */ GOTO 47
  IF ~~ THEN REPLY #15188 /* ~"Pourquoi est-ce que tu as dit que la cité était imparfaite, déjà ?"~ */ GOTO 38
  IF ~~ THEN REPLY #15189 /* ~"Je vois. J'ai d'autres questions…"~ */ GOTO 28
  IF ~~ THEN REPLY #15190 /* ~"Merci du renseignement. Au revoir."~ */ GOTO 67
END

IF ~~ THEN BEGIN 47 // from: 46.0
  SAY #15023 /* ~"On dit que tout espace délimité dans Sigil est une porte. Le phénomène n'est pas bien *connu*. Les portes se déplacent. Les portes changent. Les portes disparaissent. Toutes sont verrouillées."~ */
  IF ~~ THEN REPLY #15192 /* ~"Verrouillées ?"~ */ GOTO 48
  IF ~~ THEN REPLY #15191 /* ~"Pourquoi est-ce que tu as dit que la cité était imparfaite, déjà ?"~ */ GOTO 38
  IF ~~ THEN REPLY #15193 /* ~"Je vois. J'ai d'autres questions…"~ */ GOTO 28
  IF ~~ THEN REPLY #15194 /* ~"Merci du renseignement. Au revoir."~ */ GOTO 67
END

IF ~~ THEN BEGIN 48 // from: 47.0
  SAY #15024 /* ~"Les portes sont invisibles tant que tu n'as pas les clefs qui les ouvrent. Lorsque tu auras la clé, les portes se feront *connaître*."~ */
  IF ~~ THEN REPLY #15195 /* ~"Comment on sait ce qu'est la clé ?"~ */ GOTO 49
  IF ~~ THEN REPLY #15196 /* ~"Pourquoi est-ce que tu as dit que la cité était imparfaite, déjà ?"~ */ GOTO 38
  IF ~~ THEN REPLY #15197 /* ~"Je vois. J'ai d'autres questions…"~ */ GOTO 28
  IF ~~ THEN REPLY #15198 /* ~"Merci du renseignement. Au revoir."~ */ GOTO 67
END

IF ~~ THEN BEGIN 49 // from: 48.0
  SAY #15025 /* ~"Chaque porte a une clé différente. Certaines clés sont *connues*, d'autres ne sont pas *connues*."~ */
  IF ~~ THEN REPLY #15199 /* ~"À quoi ressemblent ces clés ?"~ */ GOTO 50
  IF ~~ THEN REPLY #15200 /* ~"Pourquoi est-ce que tu as dit que la cité était imparfaite, déjà ?"~ */ GOTO 38
  IF ~~ THEN REPLY #15201 /* ~"Je vois. J'ai d'autres questions…"~ */ GOTO 28
  IF ~~ THEN REPLY #15202 /* ~"Merci du renseignement. Au revoir."~ */ GOTO 67
END

IF ~~ THEN BEGIN 50 // from: 49.0
  SAY #15026 /* ~"Il y a autant de clés que de portes. Les clés ne sont pas toujours des choses métalliques. Les clés peuvent être le choc de deux épées, une goutte de sang tirée de la langue d'un homme mourant, le souvenir d'un amour passé ou un juron hurlé au ciel. Lorsque la clé et la porte s'accordent, la porte apparaît."~ */
  IF ~~ THEN REPLY #15204 /* ~"Ça doit être difficile de trouver toutes ces clés et ces portes."~ */ GOTO 51
  IF ~~ THEN REPLY #15208 /* ~"Pourquoi est-ce que tu as dit que la cité était imparfaite, déjà ?"~ */ GOTO 38
  IF ~~ THEN REPLY #15215 /* ~"Je vois. J'ai d'autres questions…"~ */ GOTO 28
  IF ~~ THEN REPLY #15218 /* ~"Merci du renseignement. Au revoir."~ */ GOTO 67
END

IF ~~ THEN BEGIN 51 // from: 50.0
  SAY #15027 /* ~"Une telle tâche a déjà été tentée, mais jamais menée à bien. Les portes évoluent avec la cité. Rien de ce qui est *connu* ne le reste bien longtemps."~ */
  IF ~~ THEN REPLY #15220 /* ~"Pourquoi est-ce que tu as dit que la cité était imparfaite, déjà ?"~ */ GOTO 38
  IF ~~ THEN REPLY #15222 /* ~"Je vois. J'ai d'autres questions…"~ */ GOTO 28
  IF ~~ THEN REPLY #15224 /* ~"Merci du renseignement. Au revoir."~ */ GOTO 67
END

IF ~~ THEN BEGIN 52 // from: 28.3
  SAY #15028 /* ~"Tout, que ce soit la structure ou la chair. Toute existence est définie par sa *connaissance* d'elle-même."~ */
  IF ~~ THEN REPLY #15226 /* ~"Et si un homme ne se connaît pas lui-même ?"~ */ GOTO 53
  IF ~~ THEN REPLY #15228 /* ~"J'ai d'autres questions…"~ */ GOTO 28
  IF ~~ THEN REPLY #15231 /* ~"Il n'y a rien à dire. Au revoir."~ */ GOTO 67
END

IF ~~ THEN BEGIN 53 // from: 52.0
  SAY #15030 /* ~"Lorsqu'un esprit ne se *connaît* pas lui-même, il est imparfait. Lorsque l'esprit est imparfait, l'homme est imparfait. Lorsque l'homme est imparfait, ce qu'il touche est imparfait." Dak'kon fait une pause. "On dit que ce qu'un homme imparfait voit, ses mains le cassent."~ */
  IF ~~ THEN REPLY #15234 /* ~"Est-ce que tu te connais toi-même ?"~ */ DO ~SetAnimState("Dakkon",ANIM_MIMESTAND)
~ GOTO 54
  IF ~~ THEN REPLY #15236 /* ~"J'ai d'autres questions…"~ */ GOTO 28
  IF ~~ THEN REPLY #15237 /* ~"Il n'y a rien à dire. Au revoir."~ */ GOTO 67
END

IF ~~ THEN BEGIN 54 // from: 53.0
  SAY #15032 /* ~Dak'kon reste silencieux. Ses yeux noir charbon prennent la même distance que tu as notée lorsque tu lui as parlé la première fois.~ */
  IF ~~ THEN REPLY #15238 /* ~"Je répète ma question : est-ce que tu te connais toi-même ?"~ */ GOTO 55
  IF ~~ THEN REPLY #15240 /* ~"Peu importe. J'ai d'autres questions…"~ */ GOTO 28
  IF ~~ THEN REPLY #15241 /* ~"Je ne voulais pas te déranger. Au revoir."~ */ GOTO 67
END

IF ~~ THEN BEGIN 55 // from: 54.0
  SAY #15034 /* ~Lorsque Dak'kon se remet à parler, ses paroles retentissent comme une grosse pierre qui tomberait dans un précipice. On dirait qu'il force les mots à sortir de sa poitrine. "Ma *volonté* est que tu ne *connaisses* pas cela."~ */
  IF ~~ THEN REPLY #15242 /* ~"J'ai peut-être été trop aimable en formulant ça sous forme de question : dis-le-moi."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Dakkon_2","GLOBALGood",-1)
~ GOTO 56
  IF ~~ THEN REPLY #15243 /* ~"Peu importe. J'ai d'autres questions…"~ */ GOTO 28
  IF ~~ THEN REPLY #15244 /* ~"Excuse-moi. Peu importe. Au revoir."~ */ GOTO 67
END

IF ~~ THEN BEGIN 56 // from: 55.0
  SAY #15036 /* ~Les paroles prononcées par Dak'kon sont hachées, les mots transportés un à un. "Il… m'est arrivé de ne pas me *connaître* moi-même."~ */
  IF ~~ THEN REPLY #15245 /* ~"Pourquoi ?"~ */ GOTO 57
  IF ~~ THEN REPLY #15246 /* ~"Peu importe. J'ai d'autres questions…"~ */ GOTO 28
  IF ~~ THEN REPLY #15247 /* ~"Excuse-moi. Peu importe. Au revoir."~ */ GOTO 67
END

IF ~~ THEN BEGIN 57 // from: 56.0
  SAY #15038 /* ~La voix de Dak'kon est réduite à un simple murmure qui te fait penser au sable qui s'écoule. "Je n'en *connais* pas la raison. Je *sais* que cela s'est produit, mais j'ignore quand, de même que j'en ignore le pourquoi… ou comment me *connaître* moi-même de nouveau."~ */
  IF ~~ THEN REPLY #15248 /* ~"Peu importe. J'ai d'autres questions…"~ */ GOTO 28
  IF ~~ THEN REPLY #15249 /* ~"Excuse-moi. Peu importe. Au revoir."~ */ GOTO 67
END

IF ~~ THEN BEGIN 58 // from: 28.4 34.0
  SAY #15039 /* ~"C'est une lame de *karach*, un objet qui permet aux autres de *connaître* le rang de l'utilisateur."~ */
  IF ~~ THEN REPLY #15250 /* ~"*Karach* ? Qu'est-ce que ça veut dire ?"~ */ GOTO 61
  IF ~~ THEN REPLY #15251 /* ~"Elle est faite d'un métal étrange… Ses va-et-vient sont presque hypnotiques."~ */ GOTO 61
  IF ~~ THEN REPLY #15252 /* ~"Elle désigne quel rang ?"~ */ GOTO 59
  IF ~~ THEN REPLY #15253 /* ~"J'ai d'autres questions…"~ */ GOTO 28
  IF ~~ THEN REPLY #15254 /* ~"Je vois. Je dois m'en aller. Au revoir."~ */ GOTO 67
END

IF ~~ THEN BEGIN 59 // from: 58.2 63.1
  SAY #15040 /* ~"La lame est un symbole porté par les *zerth*. Le *zerth* est celui qui *connaît* les enseignements de Zerthimon. En *connaissant* les enseignements de Zerthimon, il se *connaît* lui-même."~ */
  IF ~~ THEN REPLY #15255 /* ~"Zerthimon ?"~ */ GOTO 60
  IF ~~ THEN REPLY #15256 /* ~"En quoi est faite cette lame déjà ?"~ */ GOTO 61
  IF ~~ THEN REPLY #15257 /* ~"J'ai d'autres questions…"~ */ GOTO 28
  IF ~~ THEN REPLY #15259 /* ~"Je vois. Je dois m'en aller. Au revoir."~ */ GOTO 67
END

IF ~~ THEN BEGIN 60 // from: 59.0
  SAY #15041 /* ~"Zerthimon a fondé notre race. Il *connaissait* les githzeraïs avant qu'ils se *connaissent* eux-mêmes. Il a défini le Peuple. Il lui a donné un esprit."~ */
  IF ~~ THEN REPLY #15258 /* ~"En quoi est faite cette lame déjà ?"~ */ GOTO 61
  IF ~~ THEN REPLY #15260 /* ~"J'ai d'autres questions…"~ */ GOTO 28
  IF ~~ THEN REPLY #15261 /* ~"Je vois. Je dois m'en aller. Au revoir."~ */ GOTO 67
END

IF ~~ THEN BEGIN 61 // from: 58.0 58.1 59.1 60.0
  SAY #15042 /* ~Dak'kon se tait un instant, comme s'il cherchait ses mots. "Dans ta langue, la traduction la plus proche est 'matière de chaos'. Le Peuple peut la modeler par la force de la pensée."~ */
  IF ~~ THEN REPLY #15262 /* ~"Le Peuple ?"~ */ GOTO 62
  IF ~~ THEN REPLY #15263 /* ~"La modeler par la force de la pensée ?"~ */ GOTO 63
  IF ~~ THEN REPLY #15264 /* ~"J'ai d'autres questions…"~ */ GOTO 28
  IF ~~ THEN REPLY #15265 /* ~"Je vois. Je dois m'en aller. Au revoir."~ */ GOTO 67
END

IF ~~ THEN BEGIN 62 // from: 61.0
  SAY #15043 /* ~"Les githzeraï."~ */
  IF ~  Global("Dakkon_Githzerai","GLOBAL",0)
~ THEN REPLY #15266 /* ~"C'est quoi, un githzeraï ?"~ */ GOTO 30
  IF ~  Global("Dakkon_Githzerai","GLOBAL",1)
~ THEN REPLY #15267 /* ~"Que sont les githzeraï déjà ?"~ */ GOTO 33
  IF ~~ THEN REPLY #15268 /* ~"Et tu dis que les githzeraï peuvent modeler cette *karach*… par la pensée ?"~ */ GOTO 63
  IF ~~ THEN REPLY #15269 /* ~"J'ai d'autres questions…"~ */ GOTO 28
  IF ~~ THEN REPLY #15270 /* ~"Je vois. Je dois m'en aller. Au revoir."~ */ GOTO 67
END

IF ~~ THEN BEGIN 63 // from: 61.1 62.2
  SAY #15044 /* ~"La *karach* ne s'est pas forgée par la chaleur, mais par la *connaissance* de soi. C'est un miroir qui reflète sur sa surface et sur ses bords la volonté de l'utilisateur. Lorsque l'on se *connaît* soi-même, la lame est résistante, plus dure et plus forte que l'acier. Dans le cas contraire, la lame est comme de l'eau, sans forme et faible."~ */
  IF ~~ THEN REPLY #15271 /* ~"Tu veux bien la vendre ?"~ */ GOTO 64
  IF ~~ THEN REPLY #15272 /* ~"Cette lame désigne quel rang ?"~ */ GOTO 59
  IF ~~ THEN REPLY #15273 /* ~"J'ai d'autres questions…"~ */ GOTO 28
  IF ~~ THEN REPLY #15274 /* ~"Je vois. Je dois m'en aller. Au revoir."~ */ GOTO 67
END

IF ~~ THEN BEGIN 64 // from: 63.0
  SAY #15045 /* ~"Elle ne serait rien dans les mains d'un autre. La lame *connaît* mon esprit et je *connais* son cœur. Nous mourrons de la même mort."~ */
  IF ~~ THEN REPLY #15275 /* ~"J'ai d'autres questions…"~ */ GOTO 28
  IF ~~ THEN REPLY #15276 /* ~"Je vois. Je dois m'en aller. Au revoir."~ */ GOTO 67
END

IF ~~ THEN BEGIN 65 // from: 28.5
  SAY #15046 /* ~"Je ne le *connais* pas."~ */
  IF ~~ THEN REPLY #15277 /* ~"J'ai d'autres questions…"~ */ GOTO 28
  IF ~~ THEN REPLY #15278 /* ~"Il n'y a rien à dire. Au revoir."~ */ GOTO 67
END

IF ~~ THEN BEGIN 66 // from: 28.6
  SAY #15047 /* ~"J'*ignore* où il se trouve."~ */
  IF ~~ THEN REPLY #15279 /* ~"J'ai d'autres questions…"~ */ GOTO 28
  IF ~~ THEN REPLY #15280 /* ~"Il n'y a rien à dire. Au revoir."~ */ GOTO 67
END

IF ~~ THEN BEGIN 67 // from: 23.1 28.7 29.2 30.2 31.2 32.2 33.2 34.2 35.2 36.3 37.2 38.8 39.4 40.3 41.2 43.3 44.3 45.3 46.3 47.3 48.3 49.3 50.3 51.2 52.2 53.2 54.2 55.2 56.2 57.1 58.4 59.3 60.2 61.3 62.4 63.3 64.1 65.1 66.1
  SAY #15048 /* ~Alors que tu t'apprêtes à partir, l'homme parle soudain, c'est la première fois que tu entends le ton de sa voix changer depuis le début de la conversation. "Attends." La voix de l'homme devient égale. "Tu ne *connais* pas cette cité. Je voyagerai avec toi."~ */
  IF ~~ THEN REPLY #15281 /* ~"J'accepte. Une autre lame sera la bienvenue."~ */ GOTO 72
  IF ~~ THEN REPLY #15282 /* ~"Tu es vieux. À quoi tu pourrais me servir ?"~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Dakkon_1","GLOBALGood",-1)
~ GOTO 70
  IF ~~ THEN REPLY #15283 /* ~"Pas aujourd'hui. Au revoir."~ */ GOTO 68
END

IF ~~ THEN BEGIN 68 // from: 42.3 67.2 70.1 71.1
  SAY #15049 /* ~"J'aimerais que tu m'écoutes." Avant que tu ne partes, Dak'kon parle à nouveau. Tu as du mal à partir tant que tu fais l'objet de son attention. "Tu es un étranger dans cette cité. Comme tu ne la *connais* pas, la cité est un danger pour toi. Deux lames ont plus de poids qu'une, même lorsqu'elles restent dans leurs fourreaux." Alors qu'il parle, tu remarques que sa lame redevient du même noir mat que lorsque tu l'as vue pour la première fois.~ */
  IF ~~ THEN REPLY #15284 /* ~"Très bien. Une autre lame sera la bienvenue, Dak'kon."~ */ GOTO 72
  IF ~~ THEN REPLY #15285 /* ~"Tu voudrais que je t'écoute alors que toi, tu ne m'écoutes pas. Je ne veux pas de toi. Reste comme tu étais à mon arrivée. Maintenant, au revoir."~ */ GOTO 69
END

IF ~~ THEN BEGIN 69 // from: 68.1
  SAY #15050 /* ~"Je serai là quand tu reviendras. Annonce ton arrivée, et ton chemin sera le mien."~ */
  IF ~~ THEN REPLY #15286 /* ~"Je m'en souviendrai. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 70 // from: 42.2 67.1
  SAY #15051 /* ~Le regard de Dak'kon change. On dirait qu'il regarde derrière toi, comme il le faisait lorsque tu lui as parlé pour la première fois. "Je suis vieux, mais j'ai voyagé très loin. Je connais les arts de la guerre. Je *connais* l'histoire de cette cité."~ */
  IF ~~ THEN REPLY #15287 /* ~"Mais…"~ */ GOTO 71
  IF ~~ THEN REPLY #15288 /* ~"Pas aujourd'hui. Au revoir."~ */ GOTO 68
END

IF ~~ THEN BEGIN 71 // from: 70.0
  SAY #15052 /* ~"Alors que tu poignardes dans le noir, ma lame frappe au bon endroit. Les portes fermées pour toi sont des couloirs pour moi. En *connaissant* ces choses à travers moi, tu deviendras fort. Je t'accompagnerai."~ */
  IF ~~ THEN REPLY #15289 /* ~"Très bien, j'accepte."~ */ GOTO 72
  IF ~~ THEN REPLY #15290 /* ~"Je ne crois pas. Au revoir."~ */ GOTO 68
END

IF ~~ THEN BEGIN 72 // from: 42.1 67.0 68.0 71.0 73.1
  SAY #15053 /* ~"Ton chemin est le mien." Bizarrement, sa voix semble distante et retentit comme s'il parlait de très loin.~ [DAK206] */
  IF ~  GlobalLT("Dakkon","GLOBAL",2)
~ THEN REPLY #15291 /* ~"Très bien. Allons-y."~ */ DO ~SetGlobal("Dakkon","GLOBAL",2)
AddexperienceParty(1000)
ChangeAIScript("pcdakkon",DEFAULT)
JoinPartyEx(TRUE)
~ EXIT
  IF ~  GlobalGT("Dakkon","GLOBAL",1)
~ THEN REPLY #66762 /* ~"Très bien. Allons-y."~ */ DO ~ChangeAIScript("pcdakkon",DEFAULT)
JoinPartyEx(TRUE)
~ EXIT
END

IF ~  Global("Dakkon","GLOBAL",1)
!InParty("Dakkon")
!GlobalGT("Fortress_Dakkon","GLOBAL",2)
~ THEN BEGIN 73 // from:
  SAY #15054 /* ~Dak'kon se tourne à ton approche, ses yeux semblables à du charbon lisse. Il te fixe et pendant un moment, tu te demandes s'il ne serait pas aveugle.~ */
  IF ~~ THEN REPLY #15292 /* ~"Rebonjour, Dak'kon. J'ai quelques questions à te poser…"~ */ GOTO 28
  IF ~~ THEN REPLY #15293 /* ~"Ta lame serait la bienvenue, Dak'kon."~ */ GOTO 72
  IF ~~ THEN REPLY #15294 /* ~Ignore-le.~ */ EXIT
END

IF ~~ THEN BEGIN 74 // from:
  SAY #16628 /* ~"Ta requête est vraiment curieuse. Des arbres, dans la Ruche ? Comme des villes, dans les Limbes. Ils témoigneraient de la volonté des habitants de ne pas s'incliner devant ce qui les entoure et les dévore, de prendre ce qui leur a été jeté ou laissé et d'en faire bon usage. Moi aussi, je me soucierai de ces arbres."~ */
  IF ~  NearbyDialog("DMorte")
Global("Tree_M","AR0400",0)
~ THEN REPLY #16936 /* ~"Merci. Morte ? Qu'est-ce que tu en penses ?"~ */ DO ~SetGlobal("Tree_M","AR0400",1)
IncrementGlobal("Tree_Helpers","AR0400",1)
~ EXTERN ~DMORTE~ 181
  IF ~  NearbyDialog("DAnnah")
Global("Tree_A","AR0400",0)
~ THEN REPLY #16937 /* ~"Merci. Annah ? Tu pourrais ?"~ */ DO ~SetGlobal("Tree_A","AR0400",1)
IncrementGlobal("Tree_Helpers","AR0400",1)
~ EXTERN ~DANNAH~ 99
  IF ~  NearbyDialog("DIgnus")
Global("Tree_I","AR0400",0)
~ THEN REPLY #16938 /* ~"Merci. Ignus ?"~ */ DO ~SetGlobal("Tree_I","AR0400",1)
IncrementGlobal("Tree_Helpers","AR0400",1)
~ EXTERN ~DIGNUS~ 11
  IF ~  NearbyDialog("DGrace")
Global("Tree_G","AR0400",0)
~ THEN REPLY #16939 /* ~"Merci. Grâce, qu'en dites-vous ?"~ */ DO ~SetGlobal("Tree_G","AR0400",1)
IncrementGlobal("Tree_Helpers","AR0400",1)
~ EXTERN ~DGRACE~ 14
  IF ~  NearbyDialog("DNordom")
Global("Tree_N","AR0400",0)
~ THEN REPLY #16940 /* ~"Merci. Nordom, tu penses que tu pourrais l'aider ?"~ */ DO ~SetGlobal("Tree_N","AR0400",1)
IncrementGlobal("Tree_Helpers","AR0400",1)
~ EXTERN ~DNORDOM~ 1
  IF ~  NearbyDialog("DVhail")
Global("Tree_V","AR0400",0)
~ THEN REPLY #16941 /* ~"Merci. Vhailor, tu peux l'aider ?"~ */ DO ~SetGlobal("Tree_V","AR0400",1)
IncrementGlobal("Tree_Helpers","AR0400",1)
~ EXTERN ~DVHAIL~ 1
  IF ~~ THEN REPLY #16942 /* ~"Merci. J'ai des questions, Deuils…"~ */ DO ~IncrementGlobal("Tree_Helpers","AR0400",1)
~ EXTERN ~DMFTREE~ 28
  IF ~~ THEN REPLY #16943 /* ~"Merci, Dak'kon. Au revoir, Deuils-pour-Arbres."~ */ DO ~IncrementGlobal("Tree_Helpers","AR0400",1)
~ EXIT
END

IF ~~ THEN BEGIN 75 // from:
  SAY #16629 /* ~Dak'kon acquiesce. "Bien… sûr."~ */
  IF ~  NearbyDialog("DMorte")
Global("Tree_M","AR0400",0)
~ THEN REPLY #16944 /* ~"Bien. Morte ? Qu'est-ce que tu en penses ?"~ */ DO ~SetGlobal("Tree_M","AR0400",1)
~ EXTERN ~DMORTE~ 181
  IF ~  NearbyDialog("DAnnah")
Global("Tree_A","AR0400",0)
~ THEN REPLY #16945 /* ~"Bien. Annah ? Tu pourrais ?"~ */ DO ~SetGlobal("Tree_A","AR0400",1)
~ EXTERN ~DANNAH~ 99
  IF ~  NearbyDialog("DIgnus")
Global("Tree_I","AR0400",0)
~ THEN REPLY #16946 /* ~"Bien. Ignus ?"~ */ DO ~SetGlobal("Tree_I","AR0400",1)
~ EXTERN ~DIGNUS~ 11
  IF ~  NearbyDialog("DGrace")
Global("Tree_G","AR0400",0)
~ THEN REPLY #16947 /* ~"Bien. Grâce, qu'en dites-vous ?"~ */ DO ~SetGlobal("Tree_G","AR0400",1)
~ EXTERN ~DGRACE~ 14
  IF ~  NearbyDialog("DNordom")
Global("Tree_N","AR0400",0)
~ THEN REPLY #16948 /* ~"Bien. Nordom, tu penses que tu pourrais l'aider ?"~ */ DO ~SetGlobal("Tree_N","AR0400",1)
~ EXTERN ~DNORDOM~ 1
  IF ~  NearbyDialog("DVhail")
Global("Tree_V","AR0400",0)
~ THEN REPLY #16949 /* ~"Bien. Vhailor, tu peux l'aider ?"~ */ DO ~SetGlobal("Tree_V","AR0400",1)
~ EXTERN ~DVHAIL~ 1
  IF ~~ THEN REPLY #16950 /* ~"Voilà, Deuils. J'ai des questions…"~ */ EXTERN ~DMFTREE~ 28
  IF ~~ THEN REPLY #16951 /* ~"Ça devrait t'aider un peu, Deuils-pour-Arbres. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 76 // from:
  SAY #17626 /* ~"L'épice peut avoir le goût qu'on veut. Il suffit d'un peu de concentration et de volonté pour que sa saveur soit celle que l'on désire."~ */
  IF ~~ THEN REPLY #17725 /* ~Goûtes-en.~ */ DO ~TakePartyGold(5)
~ EXTERN ~D300MER6~ 20
  IF ~~ THEN REPLY #17726 /* ~"Je ne crois pas que j'aimerai ça. Je voudrais goûter autre chose."~ */ EXTERN ~D300MER6~ 6
  IF ~~ THEN REPLY #17727 /* ~"J'ai changé d'avis. Mais j'ai des questions…"~ */ EXTERN ~D300MER6~ 2
  IF ~~ THEN REPLY #17728 /* ~"Je n'en veux pas, en fait. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 77 // from: 78.0 79.1 80.3 81.3 82.0 83.12 84.12 85.12 86.9 87.9 88.0 89.2 90.5 91.5 92.4 93.8 94.3 95.3 96.3 97.1 98.3 99.5 100.3 101.1 102.3 103.0 104.3 105.0 106.3 107.3 108.3 109.3 110.3 111.12 112.5 113.0
  SAY #22541 /* ~Dak'kon acquiesce.~ */
  IF ~  Global("Know_Dabus_Speak","GLOBAL",0)
Global("Fell","GLOBAL",0)
~ THEN REPLY #25004 /* ~"Demande-lui qui il est."~ */ DO ~SetGlobal("Fell","GLOBAL",1)
~ EXTERN ~DFELL~ 14
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatLT(Protagonist,15,INT)
Global("Fell","GLOBAL",0)
~ THEN REPLY #25005 /* ~"Demande-lui qui il est."~ */ DO ~SetGlobal("Fell","GLOBAL",1)
~ EXTERN ~DFELL~ 15
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatGT(Protagonist,14,INT)
Global("Fell","GLOBAL",0)
~ THEN REPLY #25006 /* ~"Demande-lui qui il est."~ */ DO ~SetGlobal("Fell","GLOBAL",1)
~ EXTERN ~DFELL~ 16
  IF ~  Global("Know_Dabus_Speak","GLOBAL",0)
~ THEN REPLY #25007 /* ~"Demande-lui quel est cet endroit."~ */ DO ~SetGlobal("Fell_Work","GLOBAL",1)
~ EXTERN ~DFELL~ 17
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatLT(Protagonist,15,INT)
~ THEN REPLY #25008 /* ~"Demande-lui quel est cet endroit."~ */ DO ~SetGlobal("Fell_Work","GLOBAL",1)
~ EXTERN ~DFELL~ 18
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatGT(Protagonist,14,INT)
~ THEN REPLY #25009 /* ~"Demande-lui quel est cet endroit."~ */ DO ~SetGlobal("Fell_Work","GLOBAL",1)
~ EXTERN ~DFELL~ 19
  IF ~  Global("Know_Dabus_Speak","GLOBAL",0)
Global("Fell","GLOBAL",1)
~ THEN REPLY #25010 /* ~"J'ai l'impression que je te connais, Fell."~ */ DO ~SetGlobal("Fell","GLOBAL",2)
~ EXTERN ~DFELL~ 20
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatLT(Protagonist,15,INT)
Global("Fell","GLOBAL",1)
~ THEN REPLY #25011 /* ~"J'ai l'impression que je te connais, Fell."~ */ DO ~SetGlobal("Fell","GLOBAL",2)
~ EXTERN ~DFELL~ 21
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatGT(Protagonist,14,INT)
Global("Fell","GLOBAL",1)
~ THEN REPLY #25012 /* ~"J'ai l'impression que je te connais, Fell."~ */ DO ~SetGlobal("Fell","GLOBAL",2)
~ EXTERN ~DFELL~ 22
  IF ~  Global("Know_Dabus_Speak","GLOBAL",0)
GlobalGT("Fell","GLOBAL",1)
~ THEN REPLY #25013 /* ~"J'ai l'impression que je te connais, Fell."~ */ EXTERN ~DFELL~ 20
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatLT(Protagonist,15,INT)
GlobalGT("Fell","GLOBAL",1)
~ THEN REPLY #25014 /* ~"J'ai l'impression que je te connais, Fell."~ */ EXTERN ~DFELL~ 21
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatGT(Protagonist,14,INT)
GlobalGT("Fell","GLOBAL",1)
~ THEN REPLY #25015 /* ~"J'ai l'impression que je te connais, Fell."~ */ EXTERN ~DFELL~ 22
  IF ~  Global("Know_Dabus_Speak","GLOBAL",0)
GlobalGT("Fell","GLOBAL",1)
Global("Fell_Floor_Trigger","GLOBAL",0)
~ THEN REPLY #64400 /* ~"Qu'y a-t-il de l'autre côté de ce rideau, Fell ?"~ */ EXTERN ~DFELL~ 80
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatLT(Protagonist,15,INT)
GlobalGT("Fell","GLOBAL",1)
Global("Fell_Floor_Trigger","GLOBAL",0)
~ THEN REPLY #64401 /* ~"Qu'y a-t-il de l'autre côté de ce rideau, Fell ?"~ */ EXTERN ~DFELL~ 81
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatGT(Protagonist,14,INT)
GlobalGT("Fell","GLOBAL",1)
Global("Fell_Floor_Trigger","GLOBAL",0)
~ THEN REPLY #64402 /* ~"Qu'y a-t-il de l'autre côté de ce rideau, Fell ?"~ */ EXTERN ~DFELL~ 82
  IF ~  Global("Know_Dabus_Speak","GLOBAL",0)
GlobalGT("Fell","GLOBAL",1)
GlobalGT("Fell_Floor_Trigger","GLOBAL",0)
~ THEN REPLY #64403 /* ~"Quelles sont ces formes dans l'arrière-salle, Fell ?"~ */ EXTERN ~DFELL~ 80
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatLT(Protagonist,15,INT)
GlobalGT("Fell","GLOBAL",1)
GlobalGT("Fell_Floor_Trigger","GLOBAL",0)
~ THEN REPLY #64404 /* ~"Quelles sont ces formes dans l'arrière-salle, Fell ?"~ */ EXTERN ~DFELL~ 81
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatGT(Protagonist,14,INT)
GlobalGT("Fell","GLOBAL",1)
GlobalGT("Fell_Floor_Trigger","GLOBAL",0)
~ THEN REPLY #64405 /* ~"Quelles sont ces formes dans l'arrière-salle, Fell ?"~ */ EXTERN ~DFELL~ 82
  IF ~  Global("Know_Dabus_Speak","GLOBAL",0)
GlobalGT("Fell","GLOBAL",1)
~ THEN REPLY #25016 /* ~"Il a dit qu'il m'avait déjà rencontré… sait-il comment je suis mort ?"~ */ EXTERN ~DFELL~ 71
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatLT(Protagonist,15,INT)
GlobalGT("Fell","GLOBAL",1)
~ THEN REPLY #25017 /* ~"Il a dit qu'il m'avait déjà rencontré… sait-il comment je suis mort ?"~ */ EXTERN ~DFELL~ 72
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatGT(Protagonist,14,INT)
GlobalGT("Fell","GLOBAL",1)
~ THEN REPLY #25018 /* ~"Il a dit qu'il m'avait déjà rencontré… sait-il comment je suis mort ?"~ */ EXTERN ~DFELL~ 73
  IF ~  Global("Know_Dabus_Speak","GLOBAL",0)
GlobalGT("Fell","GLOBAL",0)
GlobalGT("Know_Ravel","GLOBAL",0)
Global("Ravel","GLOBAL",0)
~ THEN REPLY #25019 /* ~"Demande-lui s'il a entendu parler de Ravel."~ */ EXTERN ~DFELL~ 31
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
GlobalGT("Fell","GLOBAL",0)
GlobalGT("Know_Ravel","GLOBAL",0)
Global("Ravel","GLOBAL",0)
CheckStatLT(Protagonist,15,INT)
~ THEN REPLY #25020 /* ~"Demande-lui s'il a entendu parler de Ravel."~ */ EXTERN ~DFELL~ 32
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
GlobalGT("Fell","GLOBAL",0)
GlobalGT("Know_Ravel","GLOBAL",0)
Global("Ravel","GLOBAL",0)
CheckStatGT(Protagonist,14,INT)
~ THEN REPLY #25021 /* ~"Demande-lui s'il a entendu parler de Ravel."~ */ EXTERN ~DFELL~ 33
  IF ~  Global("Know_Dabus_Speak","GLOBAL",0)
GlobalGT("Fell","GLOBAL",0)
GlobalGT("Fell_Work","GLOBAL",0)
PartyHasItem("OldArm1")
~ THEN REPLY #25022 /* ~"Demande-lui si c'est lui qui a fait les tatouages sur le bras démembré que j'ai trouvé."~ */ EXTERN ~DFELL~ 52
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
GlobalGT("Fell","GLOBAL",0)
GlobalGT("Fell_Work","GLOBAL",0)
PartyHasItem("OldArm1")
CheckStatLT(Protagonist,15,INT)
~ THEN REPLY #25023 /* ~"Demande-lui si c'est lui qui a fait les tatouages sur le bras démembré que j'ai trouvé."~ */ EXTERN ~DFELL~ 53
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
GlobalGT("Fell","GLOBAL",0)
GlobalGT("Fell_Work","GLOBAL",0)
PartyHasItem("OldArm1")
CheckStatGT(Protagonist,14,INT)
~ THEN REPLY #25024 /* ~"Demande-lui si c'est lui qui a fait les tatouages sur le bras démembré que j'ai trouvé."~ */ EXTERN ~DFELL~ 54
  IF ~  Global("Know_Dabus_Speak","GLOBAL",0)
GlobalGT("Fell","GLOBAL",0)
GlobalGT("Fell_Work","GLOBAL",0)
~ THEN REPLY #25025 /* ~"Peut-il me dire quelque chose sur les tatouages de mon corps ?"~ */ EXTERN ~DFELL~ 64
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
GlobalGT("Fell","GLOBAL",0)
GlobalGT("Fell_Work","GLOBAL",0)
CheckStatLT(Protagonist,15,INT)
~ THEN REPLY #25026 /* ~"Peut-il me dire quelque chose sur les tatouages de mon corps ?"~ */ EXTERN ~DFELL~ 65
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
GlobalGT("Fell","GLOBAL",0)
GlobalGT("Fell_Work","GLOBAL",0)
CheckStatGT(Protagonist,14,INT)
~ THEN REPLY #25027 /* ~"Peut-il me dire quelque chose sur les tatouages de mon corps ?"~ */ EXTERN ~DFELL~ 66
  IF ~  Global("Know_Dabus_Speak","GLOBAL",0)
GlobalGT("Fell_Work","GLOBAL",0)
~ THEN REPLY #25028 /* ~"Est-ce que je peux voir les tatouages qu'il a ?"~ */ DO ~SetGlobal("Translate_Dabus","GLOBAL",0)
StartStore("Fell",Protagonist)
~ EXIT
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
GlobalGT("Fell_Work","GLOBAL",0)
CheckStatLT(Protagonist,15,INT)
~ THEN REPLY #25029 /* ~"Est-ce que je peux voir les tatouages qu'il a ?"~ */ DO ~SetGlobal("Translate_Dabus","GLOBAL",0)
StartStore("Fell",Protagonist)
~ EXIT
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
GlobalGT("Fell_Work","GLOBAL",0)
CheckStatGT(Protagonist,14,INT)
~ THEN REPLY #25030 /* ~"Est-ce que je peux voir les tatouages qu'il a ?"~ */ DO ~SetGlobal("Translate_Dabus","GLOBAL",0)
StartStore("Fell",Protagonist)
~ EXIT
  IF ~~ THEN REPLY #25031 /* ~"Peu importe. Au revoir."~ */ DO ~SetGlobal("Translate_Dabus","GLOBAL",0)
~ EXIT
END

IF ~~ THEN BEGIN 78 // from:
  SAY #22542 /* ~"Il est *connu* sous le nom de Fell."~ */
  IF ~~ THEN REPLY #25032 /* ~"J'ai une autre question à lui poser…"~ */ GOTO 77
  IF ~~ THEN REPLY #25033 /* ~"Je vois. C'est tout ce que je voulais savoir. Au revoir."~ */ DO ~SetGlobal("Translate_Dabus","GLOBAL",0)
~ EXIT
END

IF ~~ THEN BEGIN 79 // from:
  SAY #22543 /* ~"Il place des images sur la peau. Des tatouages.'"~ */
  IF ~~ THEN REPLY #25034 /* ~"Est-ce que je peux voir les tatouages qu'il a ?"~ */ DO ~SetGlobal("Translate_Dabus","GLOBAL",0)
StartStore("Fell",Protagonist)
~ EXIT
  IF ~~ THEN REPLY #25035 /* ~"J'ai une autre question à lui poser…"~ */ GOTO 77
  IF ~~ THEN REPLY #25036 /* ~"C'est tout ce que je voulais savoir. Au revoir."~ */ DO ~SetGlobal("Translate_Dabus","GLOBAL",0)
~ EXIT
END

IF ~~ THEN BEGIN 80 // from:
  SAY #22544 /* ~"Ses dires comportent une contradiction." Dak'kon s'arrête pendant un instant, ses yeux noirs allant d'un symbole à l'autre. "Il dit que c'est la première fois que tu viens ici. Il dit que ce n'est pas la première fois que tu viens ici."~ */
  IF ~  Global("Know_Dabus_Speak","GLOBAL",0)
~ THEN REPLY #25037 /* ~"Est-ce qu'il sait qui je suis ?"~ */ EXTERN ~DFELL~ 23
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatLT(Protagonist,15,INT)
~ THEN REPLY #25038 /* ~"Est-ce qu'il sait qui je suis ?"~ */ EXTERN ~DFELL~ 24
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatGT(Protagonist,14,INT)
~ THEN REPLY #25039 /* ~"Est-ce qu'il sait qui je suis ?"~ */ EXTERN ~DFELL~ 25
  IF ~~ THEN REPLY #25040 /* ~"J'ai une autre question à lui poser…"~ */ GOTO 77
  IF ~~ THEN REPLY #25041 /* ~"C'est tout ce que je voulais savoir. Au revoir."~ */ DO ~SetGlobal("Translate_Dabus","GLOBAL",0)
~ EXIT
END

IF ~~ THEN BEGIN 81 // from:
  SAY #22545 /* ~"Il te *connaît*. Mais il ne peut pas te dire ce que tu veux *connaître*."~ */
  IF ~  Global("Know_Dabus_Speak","GLOBAL",0)
~ THEN REPLY #25042 /* ~"Pourquoi pas ?"~ */ EXTERN ~DFELL~ 26
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatLT(Protagonist,15,INT)
~ THEN REPLY #25043 /* ~"Pourquoi pas ?"~ */ EXTERN ~DFELL~ 27
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatGT(Protagonist,14,INT)
~ THEN REPLY #25044 /* ~"Pourquoi pas ?"~ */ JOURNAL #24270 /* ~Fell m'a dit qu'il me connaissait mais qu'il ne pouvait pas me raconter mon 'histoire'. Mais le plus étrange a été la raison invoquée. Il m'a expliqué qu'il ne pouvait pas parce qu''il ne peut pas changer la nature d'un homme'.~ */ EXTERN ~DFELL~ 28
  IF ~~ THEN REPLY #25045 /* ~"J'ai une autre question à lui poser…"~ */ GOTO 77
  IF ~~ THEN REPLY #25046 /* ~"C'est tout ce que je voulais savoir. Au revoir."~ */ DO ~SetGlobal("Translate_Dabus","GLOBAL",0)
~ EXIT
END

IF ~~ THEN BEGIN 82 // from:
  SAY #22546 /* ~"Au lieu d'une réponse, il te prie de l'excuser pour son silence." Dak'kon s'arrête pendant un instant, et lorsqu'il parle à nouveau, sa voix est glacée. "Il dit qu'il ne peut pas changer la *nature d'un homme*." Alors que Dak'kon répète ces mots, tu sens une terrible pression sur ton crâne… qui disparaît avec le dernier mot.~ */
  IF ~~ THEN REPLY #25047 /* ~"J'ai une autre question à lui poser…"~ */ GOTO 77
  IF ~~ THEN REPLY #25048 /* ~"C'est tout ce que je voulais savoir. Au revoir."~ */ DO ~SetGlobal("Translate_Dabus","GLOBAL",0)
~ EXIT
END

IF ~~ THEN BEGIN 83 // from:
  SAY #22547 /* ~"Elle est réelle."~ */
  IF ~  Global("Know_Dabus_Speak","GLOBAL",0)
Global("AR0610_Visited","GLOBAL",0)
~ THEN REPLY #25049 /* ~"Est-ce qu'il sait où elle est ?"~ */ EXTERN ~DFELL~ 34
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatLT(Protagonist,15,INT)
Global("AR0610_Visited","GLOBAL",0)
~ THEN REPLY #25050 /* ~"Est-ce qu'il sait où elle est ?"~ */ EXTERN ~DFELL~ 35
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatGT(Protagonist,14,INT)
Global("AR0610_Visited","GLOBAL",0)
~ THEN REPLY #25051 /* ~"Est-ce qu'il sait où elle est ?"~ */ EXTERN ~DFELL~ 36
  IF ~  Global("Know_Dabus_Speak","GLOBAL",0)
~ THEN REPLY #25052 /* ~"Peut-il nous dire quelque chose sur elle ?"~ */ EXTERN ~DFELL~ 40
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatLT(Protagonist,15,INT)
~ THEN REPLY #25053 /* ~"Peut-il nous dire quelque chose sur elle ?"~ */ EXTERN ~DFELL~ 41
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatGT(Protagonist,14,INT)
~ THEN REPLY #25054 /* ~"Peut-il nous dire quelque chose sur elle ?"~ */ EXTERN ~DFELL~ 42
  IF ~  Global("Know_Dabus_Speak","GLOBAL",0)
Global("Fell_Ravel_Warning","GLOBAL",0)
~ THEN REPLY #25055 /* ~"J'ai une autre question à lui poser…"~ */ EXTERN ~DFELL~ 46
  IF ~  Global("Fell_Ravel_Warning","GLOBAL",0)
CheckStatLT(Protagonist,15,INT)
Global("Know_Dabus_Speak","GLOBAL",1)
~ THEN REPLY #25056 /* ~"J'ai une autre question à lui poser…"~ */ EXTERN ~DFELL~ 47
  IF ~  Global("Fell_Ravel_Warning","GLOBAL",0)
CheckStatGT(Protagonist,14,INT)
Global("Know_Dabus_Speak","GLOBAL",1)
~ THEN REPLY #25057 /* ~"J'ai une autre question à lui poser…"~ */ EXTERN ~DFELL~ 48
  IF ~  Global("Know_Dabus_Speak","GLOBAL",0)
Global("Fell_Ravel_Warning","GLOBAL",0)
~ THEN REPLY #25058 /* ~"C'est tout ce que je voulais savoir. Au revoir."~ */ EXTERN ~DFELL~ 49
  IF ~  Global("Fell_Ravel_Warning","GLOBAL",0)
CheckStatLT(Protagonist,15,INT)
Global("Know_Dabus_Speak","GLOBAL",1)
~ THEN REPLY #25059 /* ~"C'est tout ce que je voulais savoir. Au revoir."~ */ EXTERN ~DFELL~ 50
  IF ~  Global("Fell_Ravel_Warning","GLOBAL",0)
CheckStatGT(Protagonist,14,INT)
Global("Know_Dabus_Speak","GLOBAL",1)
~ THEN REPLY #25060 /* ~"C'est tout ce que je voulais savoir. Au revoir."~ */ EXTERN ~DFELL~ 51
  IF ~  Global("Fell_Ravel_Warning","GLOBAL",1)
~ THEN REPLY #25061 /* ~"J'ai une autre question à lui poser…"~ */ GOTO 77
  IF ~  Global("Fell_Ravel_Warning","GLOBAL",1)
~ THEN REPLY #25062 /* ~"C'est tout ce que je voulais savoir. Au revoir."~ */ DO ~SetGlobal("Translate_Dabus","GLOBAL",0)
~ EXIT
END

IF ~~ THEN BEGIN 84 // from:
  SAY #22548 /* ~"Elle est emprisonnée dans l'un des Dédales de la Dame."~ */
  IF ~  Global("Know_Dabus_Speak","GLOBAL",0)
~ THEN REPLY #25063 /* ~"Des dédales ?"~ */ EXTERN ~DFELL~ 37
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatLT(Protagonist,15,INT)
~ THEN REPLY #25064 /* ~"Des dédales ?"~ */ EXTERN ~DFELL~ 38
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatGT(Protagonist,14,INT)
~ THEN REPLY #25065 /* ~"Des dédales ?"~ */ EXTERN ~DFELL~ 39
  IF ~  Global("Know_Dabus_Speak","GLOBAL",0)
~ THEN REPLY #25066 /* ~"Peut-il nous dire quelque chose sur elle ?"~ */ EXTERN ~DFELL~ 40
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatLT(Protagonist,15,INT)
~ THEN REPLY #25067 /* ~"Peut-il nous dire quelque chose sur elle ?"~ */ EXTERN ~DFELL~ 41
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatGT(Protagonist,14,INT)
~ THEN REPLY #25068 /* ~"Peut-il nous dire quelque chose sur elle ?"~ */ EXTERN ~DFELL~ 42
  IF ~  Global("Know_Dabus_Speak","GLOBAL",0)
Global("Fell_Ravel_Warning","GLOBAL",0)
~ THEN REPLY #25069 /* ~"J'ai une autre question à lui poser…"~ */ EXTERN ~DFELL~ 46
  IF ~  Global("Fell_Ravel_Warning","GLOBAL",0)
CheckStatLT(Protagonist,15,INT)
Global("Know_Dabus_Speak","GLOBAL",1)
~ THEN REPLY #25070 /* ~"J'ai une autre question à lui poser…"~ */ EXTERN ~DFELL~ 47
  IF ~  Global("Fell_Ravel_Warning","GLOBAL",0)
CheckStatGT(Protagonist,14,INT)
Global("Know_Dabus_Speak","GLOBAL",1)
~ THEN REPLY #25071 /* ~"J'ai une autre question à lui poser…"~ */ EXTERN ~DFELL~ 48
  IF ~  Global("Know_Dabus_Speak","GLOBAL",0)
Global("Fell_Ravel_Warning","GLOBAL",0)
~ THEN REPLY #25072 /* ~"C'est tout ce que je voulais savoir. Au revoir."~ */ EXTERN ~DFELL~ 49
  IF ~  Global("Fell_Ravel_Warning","GLOBAL",0)
CheckStatLT(Protagonist,15,INT)
Global("Know_Dabus_Speak","GLOBAL",1)
~ THEN REPLY #25073 /* ~"C'est tout ce que je voulais savoir. Au revoir."~ */ EXTERN ~DFELL~ 50
  IF ~  Global("Fell_Ravel_Warning","GLOBAL",0)
CheckStatGT(Protagonist,14,INT)
Global("Know_Dabus_Speak","GLOBAL",1)
~ THEN REPLY #25074 /* ~"C'est tout ce que je voulais savoir. Au revoir."~ */ EXTERN ~DFELL~ 51
  IF ~  Global("Fell_Ravel_Warning","GLOBAL",1)
~ THEN REPLY #25075 /* ~"J'ai une autre question à lui poser…"~ */ GOTO 77
  IF ~  Global("Fell_Ravel_Warning","GLOBAL",1)
~ THEN REPLY #25076 /* ~"C'est tout ce que je voulais savoir. Au revoir."~ */ DO ~SetGlobal("Translate_Dabus","GLOBAL",0)
~ EXIT
END

IF ~~ THEN BEGIN 85 // from:
  SAY #22549 /* ~"Les désirs de Ravel n'étaient pas ceux de la Dame. La Dame l'a punie."~ */
  IF ~  Global("Know_Dabus_Speak","GLOBAL",0)
~ THEN REPLY #25077 /* ~"Pourquoi est-ce que Ravel a été envoyée dans un dédale ?"~ */ EXTERN ~DFELL~ 40
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatLT(Protagonist,15,INT)
~ THEN REPLY #25078 /* ~"Pourquoi est-ce que Ravel a été envoyée dans un dédale ?"~ */ EXTERN ~DFELL~ 41
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatGT(Protagonist,14,INT)
~ THEN REPLY #25079 /* ~"Pourquoi est-ce que Ravel a été envoyée dans un dédale ?"~ */ EXTERN ~DFELL~ 42
  IF ~  Global("Know_Dabus_Speak","GLOBAL",0)
Global("AR0610_Visited","GLOBAL",0)
~ THEN REPLY #25080 /* ~"Sait-il comment aller dans le dédale de Ravel ?"~ */ EXTERN ~DFELL~ 43
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatLT(Protagonist,15,INT)
Global("AR0610_Visited","GLOBAL",0)
~ THEN REPLY #25081 /* ~"Sait-il comment aller dans le dédale de Ravel ?"~ */ EXTERN ~DFELL~ 44
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatGT(Protagonist,14,INT)
Global("AR0610_Visited","GLOBAL",0)
~ THEN REPLY #25082 /* ~"Sait-il comment aller dans le dédale de Ravel ?"~ */ EXTERN ~DFELL~ 45
  IF ~  Global("Know_Dabus_Speak","GLOBAL",0)
Global("Fell_Ravel_Warning","GLOBAL",0)
~ THEN REPLY #25083 /* ~"J'ai une autre question à lui poser…"~ */ EXTERN ~DFELL~ 46
  IF ~  Global("Fell_Ravel_Warning","GLOBAL",0)
CheckStatLT(Protagonist,15,INT)
Global("Know_Dabus_Speak","GLOBAL",1)
~ THEN REPLY #25084 /* ~"J'ai une autre question à lui poser…"~ */ EXTERN ~DFELL~ 47
  IF ~  Global("Fell_Ravel_Warning","GLOBAL",0)
CheckStatGT(Protagonist,14,INT)
Global("Know_Dabus_Speak","GLOBAL",1)
~ THEN REPLY #25085 /* ~"J'ai une autre question à lui poser…"~ */ EXTERN ~DFELL~ 48
  IF ~  Global("Know_Dabus_Speak","GLOBAL",0)
Global("Fell_Ravel_Warning","GLOBAL",0)
~ THEN REPLY #25086 /* ~"C'est tout ce que je voulais savoir. Au revoir."~ */ EXTERN ~DFELL~ 49
  IF ~  Global("Fell_Ravel_Warning","GLOBAL",0)
CheckStatLT(Protagonist,15,INT)
Global("Know_Dabus_Speak","GLOBAL",1)
~ THEN REPLY #25087 /* ~"C'est tout ce que je voulais savoir. Au revoir."~ */ EXTERN ~DFELL~ 50
  IF ~  Global("Fell_Ravel_Warning","GLOBAL",0)
CheckStatGT(Protagonist,14,INT)
Global("Know_Dabus_Speak","GLOBAL",1)
~ THEN REPLY #25088 /* ~"C'est tout ce que je voulais savoir. Au revoir."~ */ EXTERN ~DFELL~ 51
  IF ~  Global("Fell_Ravel_Warning","GLOBAL",1)
~ THEN REPLY #25089 /* ~"J'ai une autre question à lui poser…"~ */ GOTO 77
  IF ~  Global("Fell_Ravel_Warning","GLOBAL",1)
~ THEN REPLY #25090 /* ~"C'est tout ce que je voulais savoir. Au revoir."~ */ DO ~SetGlobal("Translate_Dabus","GLOBAL",0)
~ EXIT
END

IF ~~ THEN BEGIN 86 // from:
  SAY #22550 /* ~"Elle a essayé de briser les murs de Sigil."~ */
  IF ~  Global("Know_Dabus_Speak","GLOBAL",0)
Global("AR0610_Visited","GLOBAL",0)
~ THEN REPLY #25091 /* ~"Est-ce qu'il sait comment trouver Ravel ?"~ */ EXTERN ~DFELL~ 43
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatLT(Protagonist,15,INT)
Global("AR0610_Visited","GLOBAL",0)
~ THEN REPLY #25092 /* ~"Est-ce qu'il sait comment trouver Ravel ?"~ */ EXTERN ~DFELL~ 44
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatGT(Protagonist,14,INT)
Global("AR0610_Visited","GLOBAL",0)
~ THEN REPLY #25093 /* ~"Est-ce qu'il sait comment trouver Ravel ?"~ */ EXTERN ~DFELL~ 45
  IF ~  Global("Know_Dabus_Speak","GLOBAL",0)
Global("Fell_Ravel_Warning","GLOBAL",0)
~ THEN REPLY #25094 /* ~"J'ai une autre question à lui poser…"~ */ EXTERN ~DFELL~ 46
  IF ~  Global("Fell_Ravel_Warning","GLOBAL",0)
CheckStatLT(Protagonist,15,INT)
Global("Know_Dabus_Speak","GLOBAL",1)
~ THEN REPLY #25095 /* ~"J'ai une autre question à lui poser…"~ */ EXTERN ~DFELL~ 47
  IF ~  Global("Fell_Ravel_Warning","GLOBAL",0)
CheckStatGT(Protagonist,14,INT)
Global("Know_Dabus_Speak","GLOBAL",1)
~ THEN REPLY #25096 /* ~"J'ai une autre question à lui poser…"~ */ EXTERN ~DFELL~ 48
  IF ~  Global("Know_Dabus_Speak","GLOBAL",0)
Global("Fell_Ravel_Warning","GLOBAL",0)
~ THEN REPLY #25097 /* ~"C'est tout ce que je voulais savoir. Au revoir."~ */ EXTERN ~DFELL~ 49
  IF ~  Global("Fell_Ravel_Warning","GLOBAL",0)
CheckStatLT(Protagonist,15,INT)
Global("Know_Dabus_Speak","GLOBAL",1)
~ THEN REPLY #25098 /* ~"C'est tout ce que je voulais savoir. Au revoir."~ */ EXTERN ~DFELL~ 50
  IF ~  Global("Fell_Ravel_Warning","GLOBAL",0)
CheckStatGT(Protagonist,14,INT)
Global("Know_Dabus_Speak","GLOBAL",1)
~ THEN REPLY #25099 /* ~"C'est tout ce que je voulais savoir. Au revoir."~ */ EXTERN ~DFELL~ 51
  IF ~  Global("Fell_Ravel_Warning","GLOBAL",1)
~ THEN REPLY #25100 /* ~"J'ai une autre question à lui poser…"~ */ GOTO 77
  IF ~  Global("Fell_Ravel_Warning","GLOBAL",1)
~ THEN REPLY #25101 /* ~"C'est tout ce que je voulais savoir. Au revoir."~ */ DO ~SetGlobal("Translate_Dabus","GLOBAL",0)
~ EXIT
END

IF ~~ THEN BEGIN 87 // from:
  SAY #22551 /* ~"Il ne *connaît* pas le moyen de la joindre."~ */
  IF ~  Global("Know_Dabus_Speak","GLOBAL",0)
~ THEN REPLY #25102 /* ~"Que sait-il d'autre sur Ravel?"~ */ EXTERN ~DFELL~ 40
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatLT(Protagonist,15,INT)
~ THEN REPLY #25103 /* ~"Que sait-il d'autre sur Ravel?"~ */ EXTERN ~DFELL~ 41
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatGT(Protagonist,14,INT)
~ THEN REPLY #25104 /* ~"Que sait-il d'autre sur Ravel?"~ */ EXTERN ~DFELL~ 42
  IF ~  Global("Know_Dabus_Speak","GLOBAL",0)
Global("Fell_Ravel_Warning","GLOBAL",0)
~ THEN REPLY #25105 /* ~"J'ai une autre question à lui poser…"~ */ EXTERN ~DFELL~ 46
  IF ~  Global("Fell_Ravel_Warning","GLOBAL",0)
CheckStatLT(Protagonist,15,INT)
Global("Know_Dabus_Speak","GLOBAL",1)
~ THEN REPLY #25106 /* ~"J'ai une autre question à lui poser…"~ */ EXTERN ~DFELL~ 47
  IF ~  Global("Fell_Ravel_Warning","GLOBAL",0)
CheckStatGT(Protagonist,14,INT)
Global("Know_Dabus_Speak","GLOBAL",1)
~ THEN REPLY #25107 /* ~"J'ai une autre question à lui poser…"~ */ EXTERN ~DFELL~ 48
  IF ~  Global("Know_Dabus_Speak","GLOBAL",0)
Global("Fell_Ravel_Warning","GLOBAL",0)
~ THEN REPLY #25108 /* ~"C'est tout ce que je voulais savoir. Au revoir."~ */ EXTERN ~DFELL~ 49
  IF ~  Global("Fell_Ravel_Warning","GLOBAL",0)
CheckStatLT(Protagonist,15,INT)
Global("Know_Dabus_Speak","GLOBAL",1)
~ THEN REPLY #25109 /* ~"C'est tout ce que je voulais savoir. Au revoir."~ */ EXTERN ~DFELL~ 50
  IF ~  Global("Fell_Ravel_Warning","GLOBAL",0)
CheckStatGT(Protagonist,14,INT)
Global("Know_Dabus_Speak","GLOBAL",1)
~ THEN REPLY #25110 /* ~"C'est tout ce que je voulais savoir. Au revoir."~ */ EXTERN ~DFELL~ 51
  IF ~  Global("Fell_Ravel_Warning","GLOBAL",1)
~ THEN REPLY #25111 /* ~"J'ai une autre question à lui poser…"~ */ GOTO 77
  IF ~  Global("Fell_Ravel_Warning","GLOBAL",1)
~ THEN REPLY #25112 /* ~"C'est tout ce que je voulais savoir. Au revoir."~ */ DO ~SetGlobal("Translate_Dabus","GLOBAL",0)
~ EXIT
END

IF ~~ THEN BEGIN 88 // from:
  SAY #22552 /* ~"Il nous avertit de ne pas chercher la guenaude noire. Il dit que son cœur est noir, et qu'elle cherchera à nous blesser."~ */
  IF ~~ THEN REPLY #25113 /* ~"Je n'oublierai pas. J'ai une autre question à lui poser…"~ */ DO ~SetGlobal("Fell_Ravel_Warning","GLOBAL",1)
~ GOTO 77
  IF ~~ THEN REPLY #25114 /* ~"Je pense que nos chemins sont destinés à se croiser. Au revoir."~ */ DO ~SetGlobal("Fell_Ravel_Warning","GLOBAL",1)
SetGlobal("Translate_Dabus","GLOBAL",0)
~ EXIT
END

IF ~~ THEN BEGIN 89 // from:
  SAY #22553 /* ~Dak'kon étudie les symboles, mais reste silencieux.~ */
  IF ~  Global("Fell_Dakkon_Truth","GLOBAL",0)
~ THEN REPLY #25115 /* ~"Dak'kon ? Qu'est-ce qu'il dit ?"~ */ GOTO 90
  IF ~  Global("Fell_Dakkon_Truth","GLOBAL",1)
~ THEN REPLY #25116 /* ~"Dak'kon ?"~ */ GOTO 96
  IF ~~ THEN REPLY #25117 /* ~"J'ai une autre question à lui poser…"~ */ GOTO 77
  IF ~~ THEN REPLY #25118 /* ~"C'est tout ce que je voulais savoir. Au revoir."~ */ DO ~SetGlobal("Translate_Dabus","GLOBAL",0)
~ EXIT
END

IF ~~ THEN BEGIN 90 // from: 89.0
  SAY #22554 /* ~"Le bras est à toi. Les tatouages sont à lui."~ */
  IF ~  CheckStatGT(Protagonist,14,WIS)
~ THEN REPLY #25119 /* ~"Est-ce qu'il a dit autre chose ?"~ */ JOURNAL #25126 /* ~J'ai demandé à Dak'kon de me traduire ce que disait Fell sur le bras tatoué que j'avais trouvé. Il a menti et m'a dit qu'il ne comprenait pas. Je ne sais pas pourquoi, mais il ne voulait pas m'expliquer la signification du tatouage du bras amputé.~ */ GOTO 91
  IF ~  CheckStatLT(Protagonist,15,WIS)
~ THEN REPLY #25120 /* ~"Est-ce qu'il a dit autre chose ?"~ */ GOTO 92
  IF ~  Global("Know_Dabus_Speak","GLOBAL",0)
~ THEN REPLY #25121 /* ~"Qu'est-ce qu'il peut me dire sur les tatouages ?"~ */ EXTERN ~DFELL~ 62
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatLT(Protagonist,15,INT)
~ THEN REPLY #25122 /* ~"Qu'est-ce qu'il peut me dire sur les tatouages ?"~ */ EXTERN ~DFELL~ 77
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatGT(Protagonist,14,INT)
~ THEN REPLY #25123 /* ~"Qu'est-ce qu'il peut me dire sur les tatouages ?"~ */ EXTERN ~DFELL~ 63
  IF ~~ THEN REPLY #25124 /* ~"J'ai une autre question à lui poser…"~ */ GOTO 77
  IF ~~ THEN REPLY #25125 /* ~"C'est tout ce que je voulais savoir. Au revoir."~ */ DO ~SetGlobal("Translate_Dabus","GLOBAL",0)
~ EXIT
END

IF ~~ THEN BEGIN 91 // from: 90.0
  SAY #22555 /* ~Dak'kon reste silencieux pendant un instant… et soudainement, instinctivement, tu sais que Dak'kon te *ment*. Il continue d'un ton macabre. "Le reste des symboles ne m'est pas *connu*."~ */
  IF ~~ THEN REPLY #25127 /* ~"Pourquoi est-ce que tu me mens ?"~ */ GOTO 93
  IF ~~ THEN REPLY #25128 /* ~"Je crois que ce qu'il a dit EST *connu* de toi. Traduis. Tout de suite."~ */ DO ~SetGlobal("Fell_Dakkon_Truth","GLOBAL",1)
IncrementGlobal("BD_DAKKON_MORALE","GLOBAL",-1)
~ GOTO 96
  IF ~  Global("Know_Dabus_Speak","GLOBAL",0)
~ THEN REPLY #25129 /* ~"Euh… d'accord. Qu'est-ce qu'il peut me dire au sujet des tatouages sur le bras ?"~ */ EXTERN ~DFELL~ 62
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatLT(Protagonist,15,INT)
~ THEN REPLY #25130 /* ~"Euh… d'accord. Qu'est-ce qu'il peut me dire au sujet des tatouages sur le bras ?"~ */ EXTERN ~DFELL~ 77
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatGT(Protagonist,14,INT)
~ THEN REPLY #25131 /* ~"Euh… d'accord. Qu'est-ce qu'il peut me dire au sujet des tatouages sur le bras ?"~ */ EXTERN ~DFELL~ 63
  IF ~~ THEN REPLY #25132 /* ~"Très bien. Il y a une autre question que je voulais lui poser…"~ */ GOTO 77
  IF ~~ THEN REPLY #25133 /* ~"C'est tout ce que je voulais savoir. Au revoir."~ */ DO ~SetGlobal("Translate_Dabus","GLOBAL",0)
~ EXIT
END

IF ~~ THEN BEGIN 92 // from: 90.1
  SAY #22556 /* ~Dak'kon reste silencieux pendant un instant. " Le reste des symboles ne m'est pas *connu*."~ */
  IF ~~ THEN REPLY #25134 /* ~"Tu es sûr ?"~ */ GOTO 95
  IF ~  Global("Know_Dabus_Speak","GLOBAL",0)
~ THEN REPLY #25135 /* ~"Euh… d'accord. Qu'est-ce qu'il peut me dire au sujet des tatouages sur le bras ?"~ */ EXTERN ~DFELL~ 62
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatLT(Protagonist,15,INT)
~ THEN REPLY #25136 /* ~"Euh… d'accord. Qu'est-ce qu'il peut me dire au sujet des tatouages sur le bras ?"~ */ EXTERN ~DFELL~ 77
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatGT(Protagonist,14,INT)
~ THEN REPLY #25137 /* ~"Euh… d'accord. Qu'est-ce qu'il peut me dire au sujet des tatouages sur le bras ?"~ */ EXTERN ~DFELL~ 63
  IF ~~ THEN REPLY #25138 /* ~"Très bien. Il y a une autre question que je voulais lui poser…"~ */ GOTO 77
  IF ~~ THEN REPLY #25139 /* ~"C'est tout ce que je voulais savoir. Au revoir."~ */ DO ~SetGlobal("Translate_Dabus","GLOBAL",0)
~ EXIT
END

IF ~~ THEN BEGIN 93 // from: 91.0
  SAY #22557 /* ~Dak'kon se tait à nouveau ; il ne se retourne pas pour te regarder - il semble fixer quelque chose au loin. "Les symboles… rien de bon ne sortira de la *connaissance* de la réponse à ta question."~ */
  IF ~  Global("Fell_Dakkon_Truth","GLOBAL",0)
~ THEN REPLY #25140 /* ~"Ma patience a des limites. J'ai besoin de réponses et tu ferais mieux de me dire tout ce que tu sais avant que je m'énerve pour de bon."~ */ DO ~GiveExperience(Protagonist,250)
SetGlobal("Fell_Dakkon_Truth","GLOBAL",1)
~ JOURNAL #25150 /* ~J'ai réussi à convaincre Dak'kon de m'expliquer la signification du tatouage de mon bras amputé, bien que ça n'ait pas été facile. Il m'a dit que le tatouage parlait de 'quatre personnes avec lesquelles j'avais voyagé par le passé'.~ */ GOTO 96
  IF ~  CheckStatGT(Protagonist,13,CHR)
CheckStatLT(Protagonist,13,WIS)
CheckStatLT(Protagonist,15,INT)
Global("Fell_Dakkon_Truth","GLOBAL",0)
~ THEN REPLY #25141 /* ~"Depuis quand l'ignorance de la connaissance de quelque chose a-t-elle aidé quelqu'un, Dak'kon ? Le conseiller qui conseille l'ignorance fait insulte à sa position."~ */ DO ~GiveExperience(Protagonist,500)
SetGlobal("Fell_Dakkon_Truth","GLOBAL",1)
~ JOURNAL #25150 /* ~J'ai réussi à convaincre Dak'kon de m'expliquer la signification du tatouage de mon bras amputé, bien que ça n'ait pas été facile. Il m'a dit que le tatouage parlait de 'quatre personnes avec lesquelles j'avais voyagé par le passé'.~ */ GOTO 94
  IF ~  CheckStatGT(Protagonist,14,INT)
CheckStatLT(Protagonist,13,WIS)
Global("Fell_Dakkon_Truth","GLOBAL",0)
~ THEN REPLY #25142 /* ~"Depuis quand l'ignorance de la connaissance de quelque chose a-t-elle aidé quelqu'un, Dak'kon ? Le conseiller qui conseille l'ignorance fait insulte à sa position."~ */ DO ~GiveExperience(Protagonist,500)
SetGlobal("Fell_Dakkon_Truth","GLOBAL",1)
~ JOURNAL #25150 /* ~J'ai réussi à convaincre Dak'kon de m'expliquer la signification du tatouage de mon bras amputé, bien que ça n'ait pas été facile. Il m'a dit que le tatouage parlait de 'quatre personnes avec lesquelles j'avais voyagé par le passé'.~ */ GOTO 94
  IF ~  CheckStatGT(Protagonist,12,WIS)
Global("Fell_Dakkon_Truth","GLOBAL",0)
~ THEN REPLY #25143 /* ~"Depuis quand l'*ignorance* de la connaissance de quelque chose a-t-elle aidé quelqu'un, Dak'kon ? Le conseiller qui conseille l'ignorance fait insulte à sa position."~ */ DO ~GiveExperience(Protagonist,750)
SetGlobal("Fell_Dakkon_Truth","GLOBAL",1)
~ JOURNAL #25150 /* ~J'ai réussi à convaincre Dak'kon de m'expliquer la signification du tatouage de mon bras amputé, bien que ça n'ait pas été facile. Il m'a dit que le tatouage parlait de 'quatre personnes avec lesquelles j'avais voyagé par le passé'.~ */ GOTO 94
  IF ~  Global("Fell_Dakkon_Truth","GLOBAL",1)
~ THEN REPLY #25144 /* ~"Continue, Dak'kon. Tu as déjà parlé d'eux."~ */ GOTO 96
  IF ~  Global("Know_Dabus_Speak","GLOBAL",0)
~ THEN REPLY #25145 /* ~"Peu importe. Qu'est-ce que Fell a à dire sur les tatouages du bras ?"~ */ EXTERN ~DFELL~ 62
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatLT(Protagonist,15,INT)
~ THEN REPLY #25146 /* ~"Peu importe. Qu'est-ce que Fell a à dire sur les tatouages du bras ?"~ */ EXTERN ~DFELL~ 77
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatGT(Protagonist,14,INT)
~ THEN REPLY #25147 /* ~"Peu importe. Qu'est-ce que Fell a à dire sur les tatouages du bras ?"~ */ EXTERN ~DFELL~ 63
  IF ~~ THEN REPLY #25148 /* ~"Laisse tomber, alors. J'ai une autre question à lui poser…"~ */ GOTO 77
  IF ~~ THEN REPLY #25149 /* ~"Très bien, dans ce cas garde tes conseils pour toi, Dak'kon. Au revoir."~ */ DO ~SetGlobal("Translate_Dabus","GLOBAL",0)
~ EXIT
END

IF ~~ THEN BEGIN 94 // from: 93.1 93.2 93.3
  SAY #22558 /* ~"Il y a de la vérité dans tes propos. Cette vérité… devrait m'être *connue*." Dak'kon reste silencieux pendant un instant, puis se tourne vers toi, le regard dur. "Les symboles parlent de quatre avec lesquels tu as voyagé dans le passé."~ */
  IF ~  Global("Know_Dabus_Speak","GLOBAL",0)
~ THEN REPLY #25151 /* ~"Continue… qui sont ces quatre ?"~ */ EXTERN ~DFELL~ 55
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatLT(Protagonist,15,INT)
~ THEN REPLY #25152 /* ~"Continue… qui sont ces quatre ?"~ */ EXTERN ~DFELL~ 56
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatGT(Protagonist,14,INT)
~ THEN REPLY #25153 /* ~"Continue… qui sont ces quatre ?"~ */ JOURNAL #24274 /* ~Fell a traduit la rune de mon ancien bras… Il m'a dit qu'elle mentionnait quatre êtres qui partageaient autrefois mon destin. Les quatre étaient 'Une mal aimée qui en aime un qui n'aime pas', 'Un qui ne voit pas ce que les autres voient et qui voit ce que les autres ne voient pas', 'Un qui a le sens du devoir' et 'Un qui est esclave et dont les chaînes sont des mots'. Il m'a expliqué qu'ils étaient aussi torturés que moi et que dans ma souffrance, j'en entraînais d'autres qui souffraient aussi.~ */ EXTERN ~DFELL~ 59
  IF ~~ THEN REPLY #25154 /* ~"Très bien. Il y a une autre question que je voulais lui poser…"~ */ GOTO 77
  IF ~~ THEN REPLY #25155 /* ~"C'est tout ce que je voulais savoir. Au revoir."~ */ DO ~SetGlobal("Translate_Dabus","GLOBAL",0)
~ EXIT
END

IF ~~ THEN BEGIN 95 // from: 92.0
  SAY #22559 /* ~Dak'kon se tourne vers toi, le regard dur. "Oui."~ */
  IF ~  Global("Know_Dabus_Speak","GLOBAL",0)
~ THEN REPLY #25156 /* ~"Peu importe. Qu'est-ce que Fell a à dire sur les tatouages du bras ?"~ */ EXTERN ~DFELL~ 62
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatLT(Protagonist,15,INT)
~ THEN REPLY #25157 /* ~"Peu importe. Qu'est-ce que Fell a à dire sur les tatouages du bras ?"~ */ EXTERN ~DFELL~ 77
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatGT(Protagonist,14,INT)
~ THEN REPLY #25158 /* ~"Peu importe. Qu'est-ce que Fell a à dire sur les tatouages du bras ?"~ */ EXTERN ~DFELL~ 63
  IF ~~ THEN REPLY #25159 /* ~"Très bien. Il y a une autre question que je voulais lui poser…"~ */ GOTO 77
  IF ~~ THEN REPLY #25160 /* ~"C'est tout ce que je voulais savoir. Au revoir."~ */ DO ~SetGlobal("Translate_Dabus","GLOBAL",0)
~ EXIT
END

IF ~~ THEN BEGIN 96 // from: 89.1 91.1 93.0 93.4
  SAY #22560 /* ~Dak'kon se tourne vers toi, le regard dur. "Les symboles parlent de quatre avec lesquels tu as voyagé dans le passé."~ */
  IF ~  Global("Know_Dabus_Speak","GLOBAL",0)
~ THEN REPLY #25161 /* ~"Continue… qui sont ces quatre ?"~ */ EXTERN ~DFELL~ 55
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatLT(Protagonist,15,INT)
~ THEN REPLY #25162 /* ~"Continue… qui sont ces quatre ?"~ */ EXTERN ~DFELL~ 56
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatGT(Protagonist,14,INT)
~ THEN REPLY #25163 /* ~"Continue… qui sont ces quatre ?"~ */ JOURNAL #24274 /* ~Fell a traduit la rune de mon ancien bras… Il m'a dit qu'elle mentionnait quatre êtres qui partageaient autrefois mon destin. Les quatre étaient 'Une mal aimée qui en aime un qui n'aime pas', 'Un qui ne voit pas ce que les autres voient et qui voit ce que les autres ne voient pas', 'Un qui a le sens du devoir' et 'Un qui est esclave et dont les chaînes sont des mots'. Il m'a expliqué qu'ils étaient aussi torturés que moi et que dans ma souffrance, j'en entraînais d'autres qui souffraient aussi.~ */ EXTERN ~DFELL~ 59
  IF ~~ THEN REPLY #25164 /* ~"Très bien. Il y a une autre question que je voulais lui poser…"~ */ GOTO 77
  IF ~~ THEN REPLY #25165 /* ~"C'est tout ce que je voulais savoir. Au revoir."~ */ DO ~SetGlobal("Translate_Dabus","GLOBAL",0)
~ EXIT
END

IF ~~ THEN BEGIN 97 // from:
  SAY #22561 /* ~Dak'kon ne regarde même pas les symboles. "Le tatouage parle de quatre esprits. L'un était une femme, qui aimait un homme qui la *connaissait* mais ne *connaissait* pas l'amour. Le deuxième était un homme aveugle, qui voyait des choses qu'aucun mortel ne pouvait voir. Le troisième était un familier, animal domestique d'un mage, acheté et lié. Et le dernier était un esclave."~ */
  IF ~~ THEN REPLY #25166 /* ~"Pourquoi tu ne voulais pas me le dire ?"~ */ GOTO 98
  IF ~  False()
~ THEN REPLY #25167 /* ~"Très bien. Il y a une autre question que je voulais lui poser…"~ */ GOTO 77
  IF ~  False()
~ THEN REPLY #25168 /* ~"C'est tout ce que je voulais savoir. Au revoir."~ */ DO ~SetGlobal("Translate_Dabus","GLOBAL",0)
~ EXIT
END

IF ~~ THEN BEGIN 98 // from: 97.0
  SAY #22562 /* ~"Les quatre sont liés par un symbole qui m'est *connu*."~ */
  IF ~  Global("Know_Dabus_Speak","GLOBAL",0)
~ THEN REPLY #25169 /* ~"Quel symbole ?"~ */ EXTERN ~DFELL~ 60
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatLT(Protagonist,15,INT)
~ THEN REPLY #25170 /* ~"Quel symbole ?"~ */ EXTERN ~DFELL~ 107
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatGT(Protagonist,14,INT)
~ THEN REPLY #25171 /* ~"Quel symbole ?"~ */ EXTERN ~DFELL~ 61
  IF ~  False()
~ THEN REPLY #25172 /* ~"Très bien. Il y a une autre question que je voulais lui poser…"~ */ GOTO 77
  IF ~  False()
~ THEN REPLY #25173 /* ~"C'est tout ce que je voulais savoir. Au revoir."~ */ DO ~SetGlobal("Translate_Dabus","GLOBAL",0)
~ EXIT
END

IF ~~ THEN BEGIN 99 // from:
  SAY #22563 /* ~"Ce symbole est le tourment. Il dit que tu l'as toujours porté, car la chair *sait* qu'elle souffre, même lorsque l'esprit ne le sait pas."~ */
  IF ~~ THEN REPLY #25174 /* ~"Assez sur le symbole. Dis-moi tout ce que tu sais sur ces quatre qui apparaissent sur le tatouage."~ */ GOTO 100
  IF ~~ THEN REPLY #25175 /* ~"Je vois. Peux-tu m'en dire plus sur les quatre sur le tatouage ?"~ */ GOTO 100
  IF ~  Global("Know_Dabus_Speak","GLOBAL",0)
~ THEN REPLY #25176 /* ~"Est-ce que Fell a dit autre chose sur les autres tatouages du bras ?"~ */ EXTERN ~DFELL~ 62
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatLT(Protagonist,15,INT)
~ THEN REPLY #25177 /* ~"Est-ce que Fell a dit autre chose sur les autres tatouages du bras ?"~ */ EXTERN ~DFELL~ 77
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatGT(Protagonist,14,INT)
~ THEN REPLY #25178 /* ~"Est-ce que Fell a dit autre chose sur les autres tatouages du bras ?"~ */ EXTERN ~DFELL~ 63
  IF ~~ THEN REPLY #25179 /* ~"J'ai une autre question à lui poser…"~ */ GOTO 77
  IF ~~ THEN REPLY #25180 /* ~"C'est tout ce que je voulais savoir. Au revoir."~ */ DO ~SetGlobal("Translate_Dabus","GLOBAL",0)
~ EXIT
END

IF ~~ THEN BEGIN 100 // from: 99.0 99.1
  SAY #22564 /* ~Dak'kon est à nouveau silencieux. "Je n'en parlerai pas ici. Demande cela lorsque ce dont nous parlerons ne sera entendu que par ceux qui marchent à tes côtés."~ */
  IF ~  Global("Know_Dabus_Speak","GLOBAL",0)
~ THEN REPLY #25181 /* ~"Très bien. Fell a-t-il dit quelque chose sur les autres tatouages du bras ?"~ */ EXTERN ~DFELL~ 62
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatLT(Protagonist,15,INT)
~ THEN REPLY #25182 /* ~"Très bien. Fell a-t-il dit quelque chose sur les autres tatouages du bras ?"~ */ EXTERN ~DFELL~ 77
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatGT(Protagonist,14,INT)
~ THEN REPLY #25183 /* ~"Très bien. Fell a-t-il dit quelque chose sur les autres tatouages du bras ?"~ */ EXTERN ~DFELL~ 63
  IF ~~ THEN REPLY #25184 /* ~"Très bien… mais d'abord, j'ai une autre question à poser à Fell…"~ */ GOTO 77
  IF ~~ THEN REPLY #25185 /* ~"Très bien, Dak'kon. Nous partirons."~ */ DO ~SetGlobal("Translate_Dabus","GLOBAL",0)
~ EXIT
END

IF ~~ THEN BEGIN 101 // from:
  SAY #22565 /* ~"Il dit que le bras porte des tatouages oubliés. Il s'en souvient maintenant. Ils sont à toi si tu les veux."~ */
  IF ~~ THEN REPLY #25186 /* ~"D'accord.. j'aimerais voir tous les tatouages qu'il a."~ */ DO ~SetGlobal("Translate_Dabus","GLOBAL",0)
SetGlobal("Fell_Arm","GLOBAL",1)
StartStore("Fell",Protagonist)
~ EXIT
  IF ~~ THEN REPLY #25187 /* ~"J'ai une autre question à lui poser…"~ */ DO ~SetGlobal("Fell_Arm","GLOBAL",1)
~ GOTO 77
  IF ~~ THEN REPLY #25188 /* ~"C'est tout ce que je voulais savoir. Au revoir."~ */ DO ~SetGlobal("Fell_Arm","GLOBAL",1)
SetGlobal("Translate_Dabus","GLOBAL",0)
~ EXIT
END

IF ~~ THEN BEGIN 102 // from:
  SAY #22566 /* ~"Il dit que les tatouages ne sont pas les siens."~ */
  IF ~  Global("Know_Dabus_Speak","GLOBAL",0)
~ THEN REPLY #24893 /* ~"Peut-il m'en parler ?"~ */ EXTERN ~DFELL~ 67
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatLT(Protagonist,15,INT)
~ THEN REPLY #24894 /* ~"Peut-il m'en parler ?"~ */ EXTERN ~DFELL~ 58
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatGT(Protagonist,14,INT)
~ THEN REPLY #24895 /* ~"Peut-il m'en parler ?"~ */ EXTERN ~DFELL~ 68
  IF ~~ THEN REPLY #25189 /* ~"Je vois. J'ai une autre question à lui poser …"~ */ GOTO 77
  IF ~~ THEN REPLY #25190 /* ~"C'est tout ce que je voulais savoir. Au revoir."~ */ DO ~SetGlobal("Translate_Dabus","GLOBAL",0)
~ EXIT
END

IF ~~ THEN BEGIN 103 // from:
  SAY #22567 /* ~"Les symboles sur ton dos sont des indications à ton intention. La marque sur ton épaule est la marque du tourment. Il dit que la marque est sur toi car la chair *sait* qu'elle souffre, même lorsque l'esprit ne le sait pas."~ */
  IF ~~ THEN REPLY #25191 /* ~"J'ai une autre question à lui poser…"~ */ GOTO 77
  IF ~~ THEN REPLY #25192 /* ~"C'est tout ce que je voulais savoir. Au revoir."~ */ DO ~SetGlobal("Translate_Dabus","GLOBAL",0)
~ EXIT
END

IF ~~ THEN BEGIN 104 // from:
  SAY #22568 /* ~"Des ombres."~ */
  IF ~  Global("Know_Dabus_Speak","GLOBAL",0)
~ THEN REPLY #25193 /* ~"Des ombres ?"~ */ EXTERN ~DFELL~ 74
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatLT(Protagonist,15,INT)
~ THEN REPLY #25194 /* ~"Des ombres ?"~ */ EXTERN ~DFELL~ 75
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatGT(Protagonist,14,INT)
~ THEN REPLY #25195 /* ~"Des ombres ?"~ */ EXTERN ~DFELL~ 76
  IF ~~ THEN REPLY #25196 /* ~"J'ai une autre question à lui poser…"~ */ GOTO 77
  IF ~~ THEN REPLY #25197 /* ~"C'est tout ce que je voulais savoir. Au revoir."~ */ DO ~SetGlobal("Translate_Dabus","GLOBAL",0)
~ EXIT
END

IF ~~ THEN BEGIN 105 // from:
  SAY #22569 /* ~"Il dit que de nombreuses ombres sont venues te prendre. La raison pour laquelle elles ont pris ta vie ne lui est pas *connue*."~ */
  IF ~~ THEN REPLY #25198 /* ~"J'ai une autre question à lui poser…"~ */ GOTO 77
  IF ~~ THEN REPLY #25199 /* ~"C'est tout ce que je voulais savoir. Au revoir."~ */ DO ~SetGlobal("Translate_Dabus","GLOBAL",0)
~ EXIT
END

IF ~~ THEN BEGIN 106 // from:
  SAY #22570 /* ~"C'est sa galerie. Il dit qu'il te *connaît* comme sa toile. Il respecte et admire ta force." Dak'kon reste silencieux un instant. "Puis il t'insulte en te montrant de la pitié."~ */
  IF ~  Global("Know_Dabus_Speak","GLOBAL",0)
~ THEN REPLY #25200 /* ~"Sa pitié ?"~ */ EXTERN ~DFELL~ 83
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatLT(Protagonist,15,INT)
~ THEN REPLY #25201 /* ~"Sa pitié ?"~ */ EXTERN ~DFELL~ 84
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatGT(Protagonist,14,INT)
~ THEN REPLY #25202 /* ~"Sa pitié ?"~ */ EXTERN ~DFELL~ 85
  IF ~~ THEN REPLY #25203 /* ~"J'ai une autre question à lui poser…"~ */ GOTO 77
  IF ~~ THEN REPLY #25204 /* ~"C'est tout ce que je voulais savoir. Au revoir."~ */ DO ~SetGlobal("Translate_Dabus","GLOBAL",0)
~ EXIT
END

IF ~~ THEN BEGIN 107 // from:
  SAY #22571 /* ~"Il a pitié de toi à cause des cicatrices que le tourment a laissées sur toi. Il dit que tu as souffert. En souffrant, tu es devenu plus fort."~ */
  IF ~  Global("Know_Dabus_Speak","GLOBAL",0)
~ THEN REPLY #25205 /* ~"Qu'est-ce qu'il veut dire ?"~ */ EXTERN ~DFELL~ 86
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatLT(Protagonist,15,INT)
~ THEN REPLY #25206 /* ~"Qu'est-ce qu'il veut dire ?"~ */ EXTERN ~DFELL~ 87
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatGT(Protagonist,14,INT)
~ THEN REPLY #25207 /* ~"Qu'est-ce qu'il veut dire ?"~ */ EXTERN ~DFELL~ 88
  IF ~~ THEN REPLY #25208 /* ~"J'ai une autre question à lui poser…"~ */ GOTO 77
  IF ~~ THEN REPLY #25209 /* ~"C'est tout ce que je voulais savoir. Au revoir."~ */ DO ~SetGlobal("Translate_Dabus","GLOBAL",0)
~ EXIT
END

IF ~~ THEN BEGIN 108 // from:
  SAY #22572 /* ~"Il dit que son admiration lui est *connue* au travers des pertes que tu as subies. Il dit que les pertes s'accrochent à toi comme des chaînes, et pourtant tu te dresses et tu marches."~ */
  IF ~  Global("Know_Dabus_Speak","GLOBAL",0)
~ THEN REPLY #25210 /* ~"Demande-lui de continuer."~ */ EXTERN ~DFELL~ 89
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatLT(Protagonist,15,INT)
~ THEN REPLY #25211 /* ~"Demande-lui de continuer."~ */ EXTERN ~DFELL~ 90
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatGT(Protagonist,14,INT)
~ THEN REPLY #25212 /* ~"Demande-lui de continuer."~ */ EXTERN ~DFELL~ 91
  IF ~~ THEN REPLY #25213 /* ~"J'ai une autre question à lui poser…"~ */ GOTO 77
  IF ~~ THEN REPLY #25214 /* ~"C'est tout ce que je voulais savoir. Au revoir."~ */ DO ~SetGlobal("Translate_Dabus","GLOBAL",0)
~ EXIT
END

IF ~~ THEN BEGIN 109 // from:
  SAY #22573 /* ~"Il dit que ces pertes couvrent cette vie et toutes celles d'avant. Il dit que tu mues comme un serpent, abandonnant ces vies derrière toi pendant que tu marches sur tous les sentiers de la vie."~ */
  IF ~  Global("Know_Dabus_Speak","GLOBAL",0)
~ THEN REPLY #25215 /* ~"Est-ce qu'il a dit autre chose ?"~ */ EXTERN ~DFELL~ 92
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatLT(Protagonist,15,INT)
~ THEN REPLY #25216 /* ~"Est-ce qu'il a dit autre chose ?"~ */ EXTERN ~DFELL~ 106
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatGT(Protagonist,14,INT)
~ THEN REPLY #25217 /* ~"Est-ce qu'il a dit autre chose ?"~ */ EXTERN ~DFELL~ 93
  IF ~~ THEN REPLY #25218 /* ~"J'ai une autre question à lui poser…"~ */ GOTO 77
  IF ~~ THEN REPLY #25219 /* ~"C'est tout ce que je voulais savoir. Au revoir."~ */ DO ~SetGlobal("Translate_Dabus","GLOBAL",0)
~ EXIT
END

IF ~~ THEN BEGIN 110 // from:
  SAY #22574 /* ~"Il veut que tu *connaisses* cet avertissement : chacune de tes vies jette une ombre sur le multivers. Ton chemin te mènera en un lieu où les ombres ne se *connaissent* pas elles-mêmes et où les murs sont faits de regrets."~ */
  IF ~  Global("Know_Dabus_Speak","GLOBAL",0)
~ THEN REPLY #25220 /* ~"Je… vois. Est-ce qu'il a dit autre chose ?"~ */ EXTERN ~DFELL~ 29
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatLT(Protagonist,15,INT)
~ THEN REPLY #25221 /* ~"Je… vois. Est-ce qu'il a dit autre chose ?"~ */ EXTERN ~DFELL~ 94
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatGT(Protagonist,14,INT)
~ THEN REPLY #25222 /* ~"Je… vois. Est-ce qu'il a dit autre chose ?"~ */ EXTERN ~DFELL~ 95
  IF ~~ THEN REPLY #25223 /* ~"J'ai une autre question à lui poser…"~ */ GOTO 77
  IF ~~ THEN REPLY #25224 /* ~"C'est tout ce que je voulais savoir. Au revoir."~ */ DO ~SetGlobal("Translate_Dabus","GLOBAL",0)
~ EXIT
END

IF ~~ THEN BEGIN 111 // from:
  SAY #22575 /* ~"Il te dit de ne rien signer."~ */
  IF ~  Global("Know_Dabus_Speak","GLOBAL",0)
Global("Mortai_Contract","GLOBAL",0)
Global("Coppereyes_Contract","GLOBAL",0)
Global("Emoric_Contract","GLOBAL",0)
~ THEN REPLY #25225 /* ~"Très bien."~ */ EXTERN ~DFELL~ 96
  IF ~  Global("Know_Dabus_Speak","GLOBAL",0)
Global("Mortai_Contract","GLOBAL",1)
~ THEN REPLY #25226 /* ~"Très bien. Enfin… euh… j'essaierai de ne plus rien signer d'autre."~ */ EXTERN ~DFELL~ 96
  IF ~  Global("Know_Dabus_Speak","GLOBAL",0)
Global("Mortai_Contract","GLOBAL",0)
Global("Coppereyes_Contract","GLOBAL",1)
~ THEN REPLY #25227 /* ~"Très bien. Enfin… euh… j'essaierai de ne plus rien signer d'autre."~ */ EXTERN ~DFELL~ 96
  IF ~  Global("Know_Dabus_Speak","GLOBAL",0)
Global("Mortai_Contract","GLOBAL",0)
Global("Coppereyes_Contract","GLOBAL",0)
Global("Emoric_Contract","GLOBAL",1)
~ THEN REPLY #25228 /* ~"Très bien. Enfin… euh… j'essaierai de ne plus rien signer d'autre."~ */ EXTERN ~DFELL~ 96
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatLT(Protagonist,15,INT)
Global("Mortai_Contract","GLOBAL",0)
Global("Coppereyes_Contract","GLOBAL",0)
Global("Emoric_Contract","GLOBAL",0)
~ THEN REPLY #25229 /* ~"Très bien."~ */ EXTERN ~DFELL~ 97
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatLT(Protagonist,15,INT)
Global("Mortai_Contract","GLOBAL",1)
~ THEN REPLY #25230 /* ~"Très bien. Enfin… euh… j'essaierai de ne plus rien signer d'autre."~ */ EXTERN ~DFELL~ 97
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatLT(Protagonist,15,INT)
Global("Mortai_Contract","GLOBAL",0)
Global("Coppereyes_Contract","GLOBAL",1)
~ THEN REPLY #25231 /* ~"Très bien. Enfin… euh… j'essaierai de ne plus rien signer d'autre."~ */ EXTERN ~DFELL~ 97
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatLT(Protagonist,15,INT)
Global("Mortai_Contract","GLOBAL",0)
Global("Coppereyes_Contract","GLOBAL",0)
Global("Emoric_Contract","GLOBAL",1)
~ THEN REPLY #25232 /* ~"Très bien. Enfin… euh… j'essaierai de ne plus rien signer d'autre."~ */ EXTERN ~DFELL~ 97
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatGT(Protagonist,14,INT)
Global("Mortai_Contract","GLOBAL",0)
Global("Coppereyes_Contract","GLOBAL",0)
Global("Emoric_Contract","GLOBAL",0)
~ THEN REPLY #25233 /* ~"Très bien."~ */ EXTERN ~DFELL~ 98
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatGT(Protagonist,14,INT)
Global("Mortai_Contract","GLOBAL",1)
~ THEN REPLY #25234 /* ~"Très bien. Enfin… euh… j'essaierai de ne plus rien signer d'autre."~ */ EXTERN ~DFELL~ 98
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatGT(Protagonist,14,INT)
Global("Mortai_Contract","GLOBAL",0)
Global("Coppereyes_Contract","GLOBAL",1)
~ THEN REPLY #25235 /* ~"Très bien. Enfin… euh… j'essaierai de ne plus rien signer d'autre."~ */ EXTERN ~DFELL~ 98
  IF ~  Global("Mortai_Contract","GLOBAL",0)
Global("Coppereyes_Contract","GLOBAL",0)
Global("Emoric_Contract","GLOBAL",1)
~ THEN REPLY #25236 /* ~"Très bien. Enfin… euh… j'essaierai de ne plus rien signer d'autre."~ */ EXTERN ~DFELL~ 98
  IF ~~ THEN REPLY #25237 /* ~"J'ai une autre question à lui poser…"~ */ GOTO 77
  IF ~~ THEN REPLY #25238 /* ~"C'est tout ce que je voulais savoir. Au revoir."~ */ DO ~SetGlobal("Translate_Dabus","GLOBAL",0)
~ EXIT
END

IF ~~ THEN BEGIN 112 // from:
  SAY #22576 /* ~"Il demande si tu *sais* si tu es entier."~ */
  IF ~  Global("Know_Dabus_Speak","GLOBAL",0)
~ THEN REPLY #25239 /* ~Vérité : "Non…. En fait, depuis que je me suis réveillé dans la Morgue, j'ai l'impression que quelque chose me manque… quelque chose à l'intérieur."~ */ DO ~IncrementGlobalOnceEx("GLOBALLawful_Fell_1","GLOBALLaw",1)
~ EXTERN ~DFELL~ 99
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatLT(Protagonist,15,INT)
~ THEN REPLY #25240 /* ~Vérité : "Non…. En fait, depuis que je me suis réveillé dans la Morgue, j'ai l'impression que quelque chose me manque… quelque chose à l'intérieur."~ */ DO ~IncrementGlobalOnceEx("GLOBALLawful_Fell_1","GLOBALLaw",1)
~ EXTERN ~DFELL~ 100
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatGT(Protagonist,14,INT)
~ THEN REPLY #25241 /* ~Vérité : "Non…. En fait, depuis que je me suis réveillé dans la Morgue, j'ai l'impression que quelque chose me manque… quelque chose à l'intérieur."~ */ DO ~IncrementGlobalOnceEx("GLOBALLawful_Fell_1","GLOBALLaw",1)
~ EXTERN ~DFELL~ 101
  IF ~~ THEN REPLY #25242 /* ~"Ça ne te regarde pas."~ */ EXTERN ~DFELL~ 102
  IF ~~ THEN REPLY #25243 /* ~Mensonge : "Je me sens entier, oui. Pourquoi ?"~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Fell_1","GLOBALLaw",-1)
~ EXTERN ~DFELL~ 102
  IF ~~ THEN REPLY #25244 /* ~"J'ai une autre question à lui poser…"~ */ GOTO 77
  IF ~~ THEN REPLY #25245 /* ~"C'est tout ce que je voulais savoir. Au revoir."~ */ DO ~SetGlobal("Translate_Dabus","GLOBAL",0)
~ EXIT
END

IF ~~ THEN BEGIN 113 // from:
  SAY #22577 /* ~"Il honore ta force. Il te dit de garder la foi, et alors tu te *connaîtras* à nouveau."~ */
  IF ~~ THEN REPLY #25246 /* ~"J'essaierai. J'ai une autre question à lui poser …"~ */ GOTO 77
  IF ~~ THEN REPLY #25247 /* ~"C'est tout ce que je voulais savoir. Au revoir."~ */ DO ~SetGlobal("Translate_Dabus","GLOBAL",0)
~ EXIT
END

IF ~~ THEN BEGIN 114 // from:
  SAY #32703 /* ~Dak'kon ne semble même pas se rendre compte de la présence de la jeune femme. Il regarde fixement devant lui.~ */
  IF ~~ THEN EXTERN ~DSARHAVA~ 33
END

IF ~~ THEN BEGIN 115 // from:
  SAY #32704 /* ~Dak'kon ne répond toujours pas - c'est comme si la femme n'existait pas pour lui.~ */
  IF ~~ THEN EXTERN ~DSARHAVA~ 35
END

IF ~~ THEN BEGIN 116 // from:
  SAY #32705 /* ~Dak'kon se met à parler d'une voix de baryton, comme s'il réprimandait un jeune enfant. "Lorsque Zerthimon arriva sur la Plaine de Shale et que le chemin des githzeraïs croisa celui de l'homme, il déclara qu'il y avait beaucoup à admirer en eux, mais que la route serait dure pour dissiper leur propre ignorance…"~ */
  IF ~~ THEN GOTO 117
END

IF ~~ THEN BEGIN 117 // from: 116.0
  SAY #32706 /* ~Dak'kon continue sa 'plaisanterie' : "Comme beaucoup d'humains, déclara Zerthimon, ils parlent de grandes choses, et pourtant agissent peu et dans cela se trouve le danger de leur sorte. L'humanité est le cauchemar incarné, le danger d'un peuple sans véritable histoire ni capacité à apprendre de ce qui est arrivé."~ */
  IF ~~ THEN EXTERN ~DSARHAVA~ 36
END

IF ~  GlobalGT("Dakkon","GLOBAL",1)
!InParty("Dakkon")
!GlobalGT("Fortress_Dakkon","GLOBAL",2)
~ THEN BEGIN 118 // from:
  SAY #33972 /* ~Dak'kon se retourne à ton approche, les yeux comme du charbon poli. "Je *savais* que tu reviendrais. Veux-tu que nos deux chemins n'en fassent plus qu'un ?"~ [DAK207] */
  IF ~~ THEN REPLY #33973 /* ~"Oui. J'ai besoin de ton aide, Dak'kon."~ */ DO ~ChangeAIScript("pcdakkon",DEFAULT)
JoinPartyEx(TRUE)
~ GOTO 119
  IF ~~ THEN REPLY #33974 /* ~"Pas pour le moment, Dak'kon, non."~ */ GOTO 120
END

IF ~~ THEN BEGIN 119 // from: 118.0
  SAY #33975 /* ~"Ton chemin est le mien."~ [DAK206] */
  IF ~~ THEN REPLY #33976 /* ~"Alors, allons-y."~ */ EXIT
END

IF ~~ THEN BEGIN 120 // from: 118.1
  SAY #33977 /* ~"Alors nos routes se séparent."~ */
  IF ~~ THEN REPLY #33978 /* ~"Au revoir, Dak'kon."~ */ EXIT
END

IF ~~ THEN BEGIN 121 // from:
  SAY #33979 /* ~"Que veux-tu ?"~ [DAK205] */
  IF ~~ THEN REPLY #33980 /* ~"Rien pour le moment. Je voulais juste savoir si je pouvais toujours compter sur toi."~ */ EXIT
END

IF ~~ THEN BEGIN 122 // from:
  SAY #39583 /* ~Dak'kon acquiesce d'un air solennel. "Je vais narrer l'histoire d''Ach'ali-La-Noyée'."

Dak'kon raconte l'histoire d'Ach'ali, une githzeraï idiote et légendaire qui s'est perdue dans le chaos des Limbes. Normalement, un githzeraï seul peut faire appel à sa concentration et sa discipline mentale pour transformer le chaos qui l'entoure en un petit environnement habitable. Mais Ach'ali a posé tellement de questions superflues et inutiles dans sa quête pour rentrer chez elle que son îlot de matière s'est dissout autour d'elle et qu'elle s'est noyée.~ */
  IF ~~ THEN EXTERN ~DYVES~ 61
END

IF ~~ THEN BEGIN 123 // from:
  SAY #39584 /* ~Dak'kon a l'air attentif et peut-être légèrement surpris.~ */
  IF ~~ THEN REPLY #39761 /* ~"Vas-y, Yvonne…"~ */ DO ~SetGlobal("Yves_Story_10","GLOBAL",1)
AddexperienceParty(500)
~ EXTERN ~DYVES~ 62
  IF ~~ THEN REPLY #39762 /* ~"Attends Yvonne… j'ai une question…"~ */ EXTERN ~DYVES~ 4
  IF ~~ THEN REPLY #39763 /* ~"J'écouterai la suite une autre fois, Yvonne. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 124 // from:
  SAY #42437 /* ~Dak'kon te jette un coup d'œil et dit, "Elle ne comprend pas ce que tu dis. Elle dit qu'elle est en train de mourir."~ */
  IF ~~ THEN REPLY #42438 /* ~"De quoi est-elle en train de mourir ?"~ */ DO ~SetGlobal("Know_Anazi","GLOBAL",2)
~ GOTO 125
  IF ~~ THEN REPLY #42439 /* ~"Alors, il vaut peut-être mieux que tu la tues. Mais, fais-la souffrir."~ */ DO ~IncrementGlobal("BD_DAKKON_MORALE","GLOBAL",-1)
IncrementGlobalOnceEx("GLOBALEvil_Anazi_1","GLOBALGood",-1)
~ GOTO 126
  IF ~~ THEN REPLY #42440 /* ~"Est-ce qu'on peut faire quelque chose pour elle ?"~ */ GOTO 127
  IF ~~ THEN REPLY #42441 /* ~"Génial. Il faut qu'on s'en aille."~ */ GOTO 128
END

IF ~~ THEN BEGIN 125 // from: 124.0
  SAY #42442 /* ~"Elle s'appelle An'azi. Elle dit qu'elle travaillait encore ici, dans une maison de salaison de viande, il y a une quinzaine de jours avant de tomber gravement malade. Elle a été abandonnée, expulsée de chez elle et laissée pour morte. Parler la fait souffrir et sa maladie a affaibli son esprit. Elle dit qu'elle n'a rien de précieux à t'offrir."~ */
  IF ~~ THEN REPLY #42443 /* ~"Et alors ?"~ */ GOTO 127
  IF ~~ THEN REPLY #42444 /* ~"Alors, laissons-la tranquille. Elle va peut-être se rétablir."~ */ GOTO 127
END

IF ~~ THEN BEGIN 126 // from: 124.1 127.0 132.0
  SAY #42445 /* ~Le regard de Dak'kon se vide, mais il te salue. Il se retourne vers la vieille femme, lui montre le Cercle ininterrompu de Zerthimon et s'adresse à elle en prononçant quelques syllabes saccadées. Elle te lance un regard de dégoût, mais se retourne vers Dak'kon. Il brandit sa lame ; elle se tient devant lui, le fixant droit dans les yeux. Il incline sa lame en arrière…~ */
  IF ~~ THEN REPLY #42446 /* ~"Arrête, Dak'kon. Laissons-la tranquille. Allons-y."~ */ GOTO 128
  IF ~~ THEN REPLY #42447 /* ~"Poignarde-la, Dak'kon. Et je t'ai dit de la faire souffrir."~ */ DO ~IncrementGlobal("BD_DAKKON_MORALE","GLOBAL",-1)
~ JOURNAL #67287 /* ~J'ai obligé Dak'kon à tuer une githzeraï malade en la faisant souffrir. Je crois qu'elle a compris le geste, sinon la raison pour laquelle je l'ai fait.~ */ GOTO 129
  IF ~~ THEN REPLY #42448 /* ~Laisse-le la tuer.~ */ JOURNAL #67287 /* ~J'ai obligé Dak'kon à tuer une githzeraï malade en la faisant souffrir. Je crois qu'elle a compris le geste, sinon la raison pour laquelle je l'ai fait.~ */ GOTO 131
END

IF ~~ THEN BEGIN 127 // from: 124.2 125.0 125.1
  SAY #42449 /* ~"*Sache* qu'elle ne guérira pas. Je peux mettre fin à ses souffrances. C'est tout. En tant que *zerth* du Peuple, il est de mon devoir de trouver une solution."~ */
  IF ~~ THEN REPLY #42450 /* ~"Alors, fais-le. Mais fais en sorte qu'elle souffre."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Anazi_1","GLOBALGood",-1)
IncrementGlobal("BD_DAKKON_MORALE","GLOBAL",-1)
~ GOTO 126
  IF ~~ THEN REPLY #42451 /* ~"Alors, abrège ses souffrances, Dak'kon."~ */ DO ~IncrementGlobalOnceEx("GLOBALGood_Anazi_1","GLOBALGood",1)
IncrementGlobal("BD_DAKKON_MORALE","GLOBAL",1)
~ GOTO 130
  IF ~~ THEN REPLY #42452 /* ~"Ne fais pas ça. On a autre chose à faire."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Anazi_1","GLOBALGood",-1)
~ GOTO 128
END

IF ~~ THEN BEGIN 128 // from: 124.3 126.0 127.2 132.2
  SAY #42453 /* ~Dak'kon te lance un regard vide, puis se retourne pour saluer la femme githzeraï au moment où tu pars.~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 129 // from: 126.1
  SAY #42454 /* ~Sans te regarder, Dak'kon lui plante sa lame de *karach* dans le ventre. Elle sursaute légèrement et un filet de sang coule sur ses lèvres. Ses yeux deviennent vitreux et ses jambes se ramollissent. Sous l'effet de l'épée, elle se penche en arrière en se fracassant par terre.~ */
  IF ~~ THEN REPLY #42455 /* ~"Allons-nous-en d'ici."~ */ DO ~AddexperienceParty(4000)
Kill("Anazi")
~ EXIT
END

IF ~~ THEN BEGIN 130 // from: 127.1 132.1
  SAY #42456 /* ~Dak'kon brandit sa lame et attend que la femme se prépare. Elle touche quelques instants le Cercle ininterrompu de Zerthimon qu'il porte et son visage se fige. Sa lame est floue, et une fois sa mission accomplie, elle reste étendue dans une mare de sang sur le pavé de Sigil.~ */
  IF ~~ THEN REPLY #42457 /* ~"Bien joué, Dak'kon. Allons-y."~ */ DO ~IncrementGlobal("Githzerai","GLOBAL",1)
AddexperienceParty(4000)
SetGlobal("Anazi_Help","GLOBAL",1)
Kill("Anazi")
~ JOURNAL #67288 /* ~J'ai permis à Dak'kon d'aider l'une de ses congénères, une githzeraï malade qui avait trop respiré l'air toxique du Bas Quartier. Il l'a achevée et elle lui en a semblé reconnaissante.~ */ EXIT
END

IF ~~ THEN BEGIN 131 // from: 126.2
  SAY #42458 /* ~Elle touche quelques instants le Cercle ininterrompu de Zerthimon qu'il porte et son visage se fige. Sa lame est floue, et une fois sa mission accomplie, elle reste étendue dans une mare de sang sur le pavé de Sigil.~ */
  IF ~~ THEN REPLY #42459 /* ~"Allons-y, Dak'kon."~ */ DO ~AddexperienceParty(4000)
SetGlobal("Anazi_Help","GLOBAL",1)
Kill("Anazi")
~ EXIT
END

IF ~~ THEN BEGIN 132 // from:
  SAY #42460 /* ~"Elle s'appelle An'azi. Sa maladie est incurable. Elle souffre. Le Peuple qui a été contaminé par l'air nocif de ce Quartier y résiste moins bien que vous, les humains. Je suis un *zerth*. Il est de mon devoir de trouver une solution. Elle m'a supplié de le faire, car le Peuple ne l'approchera pas."~ */
  IF ~~ THEN REPLY #42461 /* ~"Alors, fais-le. Mais fais en sorte qu'elle souffre."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Anazi_1","GLOBALGood",-1)
IncrementGlobal("BD_DAKKON_MORALE","GLOBAL",-1)
~ GOTO 126
  IF ~~ THEN REPLY #42462 /* ~"Alors, abrège ses souffrances, Dak'kon."~ */ DO ~IncrementGlobalOnceEx("GLOBALGood_Anazi_1","GLOBALGood",1)
IncrementGlobal("BD_DAKKON_MORALE","GLOBAL",1)
~ GOTO 130
  IF ~~ THEN REPLY #42463 /* ~"Ne fais pas ça. On a autre chose à faire."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Anazi_1","GLOBALGood",-1)
~ GOTO 128
END

IF ~~ THEN BEGIN 133 // from:
  SAY #43544 /* ~Avant que tu n'arrives à elle, Dak'kon s'interpose. "Tu ferais bien de m'écouter."~ */
  IF ~~ THEN REPLY #43545 /* ~"Qu'est-ce qu'il y a, Dak'kon ?"~ */ GOTO 134
  IF ~  Global("Know_Githzerai_Speak","GLOBAL",0)
~ THEN REPLY #43546 /* ~"Non. Tais-toi."~ */ DO ~IncrementGlobal("BD_DAKKON_MORALE","GLOBAL",-1)
~ EXTERN ~DKIINA~ 29
  IF ~  GlobalGT("Know_Githzerai_Speak","GLOBAL",0)
~ THEN REPLY #43546 /* ~"Non. Tais-toi."~ */ EXTERN ~DKIINA~ 30
END

IF ~~ THEN BEGIN 134 // from: 133.0
  SAY #43547 /* ~"Je ne veux pas que nous parlions à cette femme."~ */
  IF ~~ THEN REPLY #43548 /* ~"Pourquoi pas ?"~ */ GOTO 136
  IF ~  GlobalGT("Know_Githzerai_Speak","GLOBAL",0)
~ THEN REPLY #43549 /* ~"Je comprends. Mais on lui parlera quand même."~ */ DO ~IncrementGlobal("BD_DAKKON_MORALE","GLOBAL",-1)
~ EXTERN ~DKIINA~ 30
  IF ~  Global("Know_Githzerai_Speak","GLOBAL",0)
~ THEN REPLY #43550 /* ~"Je comprends. Mais on lui parlera quand même."~ */ DO ~IncrementGlobal("BD_DAKKON_MORALE","GLOBAL",-1)
~ EXTERN ~DKIINA~ 29
  IF ~  GlobalGT("Know_Githzerai_Speak","GLOBAL",0)
~ THEN REPLY #43551 /* ~"Alors, ne lui parle pas."~ */ DO ~IncrementGlobal("BD_DAKKON_MORALE","GLOBAL",-1)
~ EXTERN ~DKIINA~ 30
  IF ~  Global("Know_Githzerai_Speak","GLOBAL",0)
~ THEN REPLY #43552 /* ~"Alors, ne lui parle pas."~ */ DO ~IncrementGlobal("BD_DAKKON_MORALE","GLOBAL",-1)
~ EXTERN ~DKIINA~ 29
  IF ~  Global("Dakkon_Kiina_Morale","AR0500",0)
~ THEN REPLY #43553 /* ~"Bon, très bien. On ne lui parlera pas."~ */ DO ~SetGlobal("Dakkon_Kiina_Morale","AR0500",1)
IncrementGlobal("BD_DAKKON_MORALE","GLOBAL",1)
~ GOTO 135
  IF ~  Global("Dakkon_Kiina_Morale","AR0500",1)
~ THEN REPLY #43553 /* ~"Bon, très bien. On ne lui parlera pas."~ */ GOTO 135
END

IF ~~ THEN BEGIN 135 // from: 134.5 134.6 136.2 136.3
  SAY #43554 /* ~"Je t'en suis très reconnaissant."~ */
  IF ~~ THEN REPLY #43555 /* ~"N'y pense plus."~ */ EXIT
END

IF ~~ THEN BEGIN 136 // from: 134.0
  SAY #43556 /* ~"C'est une *zerth*. Nos désirs sont incompatibles. Nous n'avons rien en commun."~ */
  IF ~  Global("Know_Githzerai_Speak","GLOBAL",0)
~ THEN REPLY #43557 /* ~"Je t'ai compris. Mais on lui parlera quand même."~ */ DO ~IncrementGlobal("BD_DAKKON_MORALE","GLOBAL",-1)
~ EXTERN ~DKIINA~ 29
  IF ~  Global("Know_Githzerai_Speak","GLOBAL",0)
~ THEN REPLY #43558 /* ~"Alors, ne lui parle pas."~ */ DO ~IncrementGlobal("BD_DAKKON_MORALE","GLOBAL",-1)
~ EXTERN ~DKIINA~ 29
  IF ~  Global("Dakkon_Kiina_Morale","AR0500",0)
~ THEN REPLY #43559 /* ~"Bon, très bien. On ne lui parlera pas."~ */ DO ~SetGlobal("Dakkon_Kiina_Morale","AR0500",1)
IncrementGlobal("BD_DAKKON_MORALE","GLOBAL",1)
~ GOTO 135
  IF ~  Global("Dakkon_Kiina_Morale","AR0500",1)
~ THEN REPLY #43559 /* ~"Bon, très bien. On ne lui parlera pas."~ */ GOTO 135
  IF ~  GlobalGT("Know_Githzerai_Speak","GLOBAL",0)
~ THEN REPLY #43551 /* ~"Alors, ne lui parle pas."~ */ EXTERN ~DKIINA~ 30
  IF ~  GlobalGT("Know_Githzerai_Speak","GLOBAL",0)
~ THEN REPLY #43557 /* ~"Je t'ai compris. Mais on lui parlera quand même."~ */ EXTERN ~DKIINA~ 30
END

IF ~~ THEN BEGIN 137 // from:
  SAY #43560 /* ~"Je…" La voix de Dak'kon tremble. "Je ne *veux* pas faire ça."~ */
  IF ~  Global("Dakkon_Slave","GLOBAL",1)
~ THEN REPLY #43561 /* ~"Dak'kon, c'est un ordre et tu es mon esclave."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Kiina_1","GLOBALGood",-1)
IncrementGlobal("BD_DAKKON_MORALE","GLOBAL",-5)
~ EXTERN ~DKIINA~ 33
  IF ~~ THEN REPLY #43562 /* ~"Fais-le, Dak'kon."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Kiina_1","GLOBALGood",-1)
IncrementGlobal("BD_DAKKON_MORALE","GLOBAL",-5)
~ EXTERN ~DKIINA~ 33
  IF ~~ THEN REPLY #43563 /* ~"Très bien. Mais n'oublie pas qu'elle joue un double jeu."~ */ EXTERN ~DKIINA~ 34
END

IF ~~ THEN BEGIN 138 // from:
  SAY #43564 /* ~La lame de Dak'kon la frappe et elle tombe à terre, en sang. Le sang bout sur le bord de la lame, puis s'évapore, laissant des taches noires à la surface.~ */
  IF ~~ THEN REPLY #43565 /* ~"Allons-y."~ */ EXIT
END

IF ~~ THEN BEGIN 139 // from:
  SAY #43566 /* ~Dak'kon soupire. "Un Anarque de cent ans, dont aucun sablier ne pourrait mesurer l'histoire. Tout cela est aussi tortueux que des racines de Fri'hi et la résolution du problème semble impossible ; elle n'aura peut-être jamais lieu. Ne me juge pas trop sévèrement."~ */
  IF ~~ THEN EXTERN ~DKIINA~ 35
END

IF ~~ THEN BEGIN 140 // from:
  SAY #43567 /* ~Dak'kon bouge nerveusement. "Je ne peux pas le forcer à parler. Sérieusement, je voudrais qu'il parle, mais… sa vie lui appartient."~ */
  IF ~~ THEN REPLY #43568 /* ~"Un groupe de githyankis se prépare à attaquer la forteresse Vristigor dans les sept jours à venir. Ils sont déjà en route."~ */ DO ~SetGlobal("Vristigor","GLOBAL",2)
~ EXTERN ~DKIINA~ 37
  IF ~~ THEN REPLY #43569 /* ~"Je ne peux rien dire."~ */ EXTERN ~DKIINA~ 40
END

IF ~~ THEN BEGIN 141 // from:
  SAY #43570 /* ~"Ce ne sont pas les paroles de Zerthimon qui manquent de conviction. C'est leur écho qui a été déformé."~ */
  IF ~~ THEN EXTERN ~DKIINA~ 44
END

IF ~~ THEN BEGIN 142 // from:
  SAY #43571 /* ~"Tes paroles ne traduisent pas la pensée de Zerthimon. Elles sont pleines de préjugés et de haine, comme si elles sortaient tout droit de la bouche de Gith."~ */
  IF ~~ THEN EXTERN ~DKIINA~ 45
END

IF ~~ THEN BEGIN 143 // from:
  SAY #43572 /* ~Comme s'il pressentait ton intention, Dak'kon s'adresse à toi sans quitter Kii'na des yeux. "Reste où tu es, ne t'interpose pas entre nous."~ */
  IF ~~ THEN REPLY #43573 /* ~"Dak'kon, je t'ordonne d'arrêter ça."~ */ EXTERN ~DKIINA~ 48
  IF ~~ THEN REPLY #43574 /* ~"Laisse tomber, Dak'kon."~ */ EXTERN ~DKIINA~ 48
  IF ~~ THEN REPLY #43575 /* ~Attaque quand même la *zerth*.~ */ DO ~IncrementGlobal("BD_DAKKON_MORALE","GLOBAL",-1)
~ EXTERN ~DKIINA~ 46
  IF ~~ THEN REPLY #43576 /* ~Laisse-les se battre.~ */ EXTERN ~DKIINA~ 47
END

IF ~~ THEN BEGIN 144 // from:
  SAY #43577 /* ~"Ton esprit est moulé d'après celui de Gith, Kii'na."~ */
  IF ~  NearbyDialog("DMorte")
~ THEN REPLY #43578 /* ~"Allons-y, Dak'kon."~ */ EXTERN ~DMORTE~ 466
  IF ~  !NearbyDialog("DMorte")
~ THEN REPLY #43579 /* ~"Allons-y, Dak'kon."~ */ EXTERN ~DKIINA~ 35
END

IF ~~ THEN BEGIN 145 // from:
  SAY #43580 /* ~"Vas-tu écouter ce que dit cet humain ?"~ */
  IF ~~ THEN EXTERN ~DKIINA~ 49
END

IF ~~ THEN BEGIN 146 // from:
  SAY #43581 /* ~"Il voyage avec moi, Kii'na, disciple de Zerthimon. Il vient te voir pour entendre les paroles de Zerthimon que tu dois, en tant que *zerth*, nous transmettre. Tu peux l'écouter ?"~ */
  IF ~~ THEN EXTERN ~DKIINA~ 50
END

IF ~~ THEN BEGIN 147 // from:
  SAY #43582 /* ~"Tu fermeras ton esprit à ses paroles ? *Connais* tes paroles avant de dire ce que tu penses, Kii'na, *zerth* de Zerthimon."~ */
  IF ~~ THEN EXTERN ~DKIINA~ 51
END

IF ~~ THEN BEGIN 148 // from:
  SAY #43583 /* ~"Ça suffit." Dak'kon se tourne vers toi et parle dans ta langue. "Elle va t'apprendre."~ */
  IF ~~ THEN DO ~SetGlobal("Kiina_Speak","GLOBAL",1)
~ EXTERN ~DKIINA~ 52
END

IF ~~ THEN BEGIN 149 // from:
  SAY #44651 /* ~"Je voudrais te mettre en garde avant que tu parles à ce githyanki."~ */
  IF ~  Global("Know_Githyanki","GLOBAL",0)
~ THEN REPLY #44652 /* ~"C'est quoi un githyanki ?"~ */ DO ~SetGlobal("Know_Githyanki","GLOBAL",1)
~ JOURNAL #39453 /* ~Dak'kon m'a expliqué la différence entre githyankis et githzeraïs. Tous faisaient autrefois partie de la même race et étaient esclaves des cruels flagelleurs mentaux, ou illithids, comme ils les appellent. Mais quand ils se sont libérés du joug de l'oppresseur, les deux camps se sont choisi des chefs différents. Depuis, c'est la guerre.~ */ GOTO 150
  IF ~  Global("Know_Githyanki","GLOBAL",1)
~ THEN REPLY #44653 /* ~"Pourquoi ?"~ */ GOTO 151
END

IF ~~ THEN BEGIN 150 // from: 149.0
  SAY #44654 /* ~"Les githyankis et les githzeraïs formaient jadis un seul et même peuple. Nous étions les esclaves et la nourriture des *illithids* - des flagelleurs mentaux - qui dévoraient nos vies afin de sauver les leurs. Une de nos ancêtres, la reine-guerrière Gith, nous conduisit à la victoire contre les *illithids* et nous nous échappâmes. Nous avons depuis mené une guerre interminable contre les flagelleurs mentaux. Mais nous n'étions pas d'accord quant à l'avenir de notre Peuple. Sur les Plaines désolées, notre chef, Zerthimon, fit la Déclaration des Deux Cieux, et le fer fut croisé. Notre race se divisa en deux. Cette scission n'a aucune issue pacifique possible."~ */
  IF ~  !NearbyDialog("DMorte")
~ THEN REPLY #44655 /* ~"On va quand même aller lui parler."~ */ DO ~IncrementGlobal("BD_DAKKON_MORALE","GLOBAL",-1)
~ GOTO 152
  IF ~  NearbyDialog("DMorte")
~ THEN REPLY #44656 /* ~"On va quand même aller lui parler."~ */ DO ~IncrementGlobal("BD_DAKKON_MORALE","GLOBAL",-1)
~ GOTO 153
  IF ~~ THEN REPLY #44657 /* ~"On va laisser tomber, alors. Allons-y."~ */ DO ~IncrementGlobal("BD_DAKKON_MORALE","GLOBAL",1)
~ EXIT
END

IF ~~ THEN BEGIN 151 // from: 149.1
  SAY #44658 /* ~"*Sache* que ce sont les ennemis jurés du Peuple. Si nous échangeons des paroles, nous nous battons."~ */
  IF ~~ THEN REPLY #44659 /* ~"On va quand même aller lui parler."~ */ DO ~IncrementGlobal("BD_DAKKON_MORALE","GLOBAL",-1)
~ GOTO 152
  IF ~~ THEN REPLY #44660 /* ~"On va laisser tomber, alors. Allons-y."~ */ DO ~IncrementGlobal("BD_DAKKON_MORALE","GLOBAL",1)
~ EXTERN ~DYI'MINN~ 48
END

IF ~~ THEN BEGIN 152 // from: 150.0 151.0
  SAY #44661 /* ~Dak'kon acquiesce.~ */
  IF ~~ THEN EXTERN ~DYI'MINN~ 47
END

IF ~~ THEN BEGIN 153 // from: 150.1
  SAY #44662 /* ~Dak'kon acquiesce.~ */
  IF ~~ THEN EXTERN ~DMORTE~ 474
END

IF ~~ THEN BEGIN 154 // from:
  SAY #44663 /* ~Dak'kon brandit à son tour sa lame. "Yi'minn. Ton sang se répandra sur le pavé de la rue."~ */
  IF ~  Global("Shrakatlor","GLOBAL",0)
~ THEN REPLY #44664 /* ~Interpose-toi : "Arrêtez !" ~ */ DO ~SetGlobal("Shrakatlor","GLOBAL",1)
~ GOTO 155
  IF ~  Global("Shrakatlor","GLOBAL",1)
~ THEN REPLY #44665 /* ~Interpose-toi : "Arrêtez !" ~ */ GOTO 155
  IF ~  Global("Shrakatlor","GLOBAL",0)
~ THEN REPLY #44666 /* ~Attaque le githyanki.~ */ DO ~SetGlobal("Shrakatlor","GLOBAL",1)
~ EXTERN ~DYI'MINN~ 49
  IF ~  Global("Shrakatlor","GLOBAL",1)
~ THEN REPLY #44667 /* ~Attaque le githyanki.~ */ EXTERN ~DYI'MINN~ 49
  IF ~  Global("Shrakatlor","GLOBAL",0)
~ THEN REPLY #44668 /* ~Laisse-les se battre.~ */ DO ~SetGlobal("Shrakatlor","GLOBAL",1)
~ EXTERN ~DYI'MINN~ 49
  IF ~  Global("Shrakatlor","GLOBAL",1)
~ THEN REPLY #44669 /* ~Laisse-les se battre.~ */ EXTERN ~DYI'MINN~ 49
END

IF ~~ THEN BEGIN 155 // from: 154.0 154.1
  SAY #44670 /* ~Dak'kon te parle, sans pour autant lâcher une seule seconde son adversaire du regard. "Reste où tu es, ne t'interpose pas entre nous."~ */
  IF ~  Global("Dakkon_Slave","GLOBAL",1)
~ THEN REPLY #44671 /* ~"Ne me donne pas d'ordres, Dak'kon, ou c'est moi qui vais t'ordonner de te tuer."~ */ DO ~IncrementGlobal("BD_DAKKON_MORALE","GLOBAL",-1)
~ EXTERN ~DYI'MINN~ 50
  IF ~~ THEN REPLY #44672 /* ~"Laisse tomber, Dak'kon."~ */ GOTO 156
  IF ~~ THEN REPLY #44673 /* ~"Alors, vas-y."~ */ EXTERN ~DYI'MINN~ 49
END

IF ~~ THEN BEGIN 156 // from: 155.1
  SAY #44674 /* ~Dak'kon parle au githyanki : "Yi'minn, ce n'est pas un endroit pour se battre."~ */
  IF ~~ THEN EXTERN ~DYI'MINN~ 54
END

IF ~~ THEN BEGIN 157 // from:
  SAY #44675 /* ~"Je *sais* tout de la perfidie des githyankis. Je serai son ombre dans cette affaire."~ */
  IF ~~ THEN EXTERN ~DYI'MINN~ 57
END

IF ~~ THEN BEGIN 158 // from:
  SAY #44676 /* ~"Les ombres ne peuvent pas être tuées tant que leur maître n'est pas tombé. Ainsi, je voyage sans crainte."~ */
  IF ~~ THEN EXTERN ~DYI'MINN~ 58
END

IF ~~ THEN BEGIN 159 // from:
  SAY #44692 /* ~La lame de Dak'kon apparaît dans sa main. "Tu vas aujourd'hui même aller rejoindre tes ancêtres, githyanki."~ */
  IF ~~ THEN REPLY #44693 /* ~"Arrête !"~ */ DO ~SetAnimState(Myself,ANIM_MIMESTANDTOSTANCE)
~ EXTERN ~DGITHSOL~ 9
  IF ~~ THEN REPLY #44694 /* ~Laisse-les se battre.~ */ DO ~SetAnimState(Myself,ANIM_MIMESTANDTOSTANCE)
~ EXTERN ~DGITHSOL~ 10
END

IF ~~ THEN BEGIN 160 // from:
  SAY #45362 /* ~"Cet humain fait partie des fidèles, dit Dak'kon en s'inclinant, et tu dois *savoir* qu'il voyage avec moi. Acceptes-tu de l'entendre ?"~ */
  IF ~  GlobalLT("Vristigor","GLOBAL",2)
~ THEN REPLY #45363 /* ~"J'avais juste quelques questions à te poser…"~ */ EXTERN ~DHAILCII~ 28
  IF ~  Global("Vristigor","GLOBAL",2)
~ THEN REPLY #45364 /* ~"J'avais juste quelques questions à te poser…"~ */ EXTERN ~DHAILCII~ 44
END

IF ~~ THEN BEGIN 161 // from:
  SAY #45365 /* ~"Ta question est justifiée. Je souhaite que tu *saches* que nous suivons la même voie, lui et moi. Acceptes-tu de l'entendre ?"~ */
  IF ~~ THEN EXTERN ~DHAILCII~ 29
END

IF ~~ THEN BEGIN 162 // from:
  SAY #45366 /* ~"Poser des questions sur les cicatrices de quelqu'un est une marque d'honneur. Cela montre qu'on s'intéresse à son histoire."~ */
  IF ~~ THEN REPLY #45367 /* ~"À de rares exceptions près, je ne me souviens pas d'où elles proviennent."~ */ EXTERN ~DHAILCII~ 33
  IF ~~ THEN REPLY #45368 /* ~"Je les ai récoltées au cours de tant de batailles que leur histoire serait bien trop longue à raconter."~ */ EXTERN ~DHAILCII~ 36
  IF ~~ THEN REPLY #45369 /* ~"Ce sont des cicatrices, c'est tout. J'avais d'autres questions à te poser…"~ */ EXTERN ~DHAILCII~ 34
END

IF ~~ THEN BEGIN 163 // from:
  SAY #45730 /* ~Dak'kon pince les lèvres mais ne répond pas.~ */
  IF ~~ THEN REPLY #45731 /* ~"Laisse tomber, Morte. Il faut que je pose quelques questions dans le coin."~ */ EXTERN ~DGILTSP~ 4
  IF ~~ THEN REPLY #45733 /* ~"Fichons le camp, d'accord ?"~ */ EXIT
END

IF ~~ THEN BEGIN 164 // from:
  SAY #50168 /* ~"Il dit qu'il est un dabus."~ */
  IF ~~ THEN REPLY #50169 /* ~"Peux-tu lui poser une autre question ?"~ */ GOTO 165
  IF ~~ THEN REPLY #50211 /* ~"C'est tout ce que je voulais savoir. Au revoir."~ */ DO ~SetGlobal("Translate_Dabus","GLOBAL",0)
~ EXTERN ~DADABUS~ 6
END

IF ~~ THEN BEGIN 165 // from: 164.0 166.0
  SAY #50170 /* ~Dak'kon acquiesce.~ */
  IF ~  Global("Know_Dabus_Speak","GLOBAL",0)
~ THEN REPLY #50171 /* ~"Demande-lui qui il est."~ */ EXTERN ~DADABUS~ 11
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatLT(Protagonist,15,INT)
~ THEN REPLY #50172 /* ~"Demande-lui qui il est."~ */ EXTERN ~DADABUS~ 12
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatGT(Protagonist,14,INT)
~ THEN REPLY #50173 /* ~"Demande-lui qui il est."~ */ EXTERN ~DADABUS~ 13
  IF ~  Global("Know_Dabus_Speak","GLOBAL",0)
~ THEN REPLY #50182 /* ~"Demande-lui ce qu'il fait."~ */ EXTERN ~DADABUS~ 14
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatLT(Protagonist,15,INT)
~ THEN REPLY #50196 /* ~"Demande-lui ce qu'il fait."~ */ EXTERN ~DADABUS~ 15
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatGT(Protagonist,14,INT)
~ THEN REPLY #50201 /* ~"Demande-lui ce qu'il fait."~ */ EXTERN ~DADABUS~ 16
  IF ~~ THEN REPLY #50206 /* ~"Demande-lui de nous parler de la Dame des Douleurs."~ */ EXTERN ~DADABUS~ 10
  IF ~~ THEN REPLY #50207 /* ~"Demande-lui de nous parler de Fell."~ */ EXTERN ~DADABUS~ 17
  IF ~~ THEN REPLY #50210 /* ~"Aucune importance. Partons d'ici."~ */ DO ~SetGlobal("Translate_Dabus","GLOBAL",0)
~ EXTERN ~DADABUS~ 6
END

IF ~~ THEN BEGIN 166 // from:
  SAY #50189 /* ~"Il dit qu'il s'acquitte de ses tâches."~ */
  IF ~~ THEN REPLY #50190 /* ~"Peux-tu lui poser une autre question ?"~ */ GOTO 165
  IF ~~ THEN REPLY #50191 /* ~"C'est tout ce que je voulais savoir. Au revoir."~ */ DO ~SetGlobal("Translate_Dabus","GLOBAL",0)
~ EXTERN ~DADABUS~ 6
END

IF ~~ THEN BEGIN 167 // from:
  SAY #50706 /* ~Dak'kon est silencieux, puis ses paroles fusent violemment. "Je ne *veux* pas devenir l'esclave de cette femme."~ */
  IF ~  Global("Dakkon_Slave","GLOBAL",1)
~ THEN REPLY #50707 /* ~"Tu n'as pas le choix, esclave. Tu l'achètes, Vrischika ?"~ */ EXTERN ~DVRISCH~ 47
  IF ~~ THEN REPLY #50708 /* ~"Dommage, Dak'kon. Tu l'achètes, Vrischika ?"~ */ EXTERN ~DVRISCH~ 47
  IF ~~ THEN REPLY #50709 /* ~"Alors, tu ne le seras pas. J'avais une autre question, Vrischika…"~ */ EXTERN ~DVRISCH~ 7
  IF ~~ THEN REPLY #50710 /* ~"Bon… Allons-y, Dak'kon."~ */ EXIT
END

IF ~~ THEN BEGIN 168 // from:
  SAY #50711 /* ~"Je l'aurais jamais cru…" Son regard noir comme du charbon te dévisage un moment, puis il regarde par terre tout en secouant la tête. "Mon empressement m'a mené sur une voie bien cruelle. Ma voie… La voie de Dak'kon…" Il se détourne de toi en silence.~ */
  IF ~~ THEN DO ~DropInventory()
LeaveParty()
~ EXTERN ~DVRISCH~ 56
END

IF ~~ THEN BEGIN 169 // from:
  SAY #52538 /* ~"Seulement si ce qui se trouve de l'autre côté est encore plus douloureux."~ */
  IF ~~ THEN REPLY #52539 /* ~"Ravel… c'est très important ; as-tu une idée de la raison pour laquelle je t'ai demandé de faire ça ?"~ */ EXTERN ~DRAVEL~ 109
END

IF ~~ THEN BEGIN 170 // from:
  SAY #52540 /* ~Dak'kon est silencieux, mais sa lame *réagit* aux propos de Ravel… La lame s'assombrit, son fil devient plus coupant, jusqu'à ce que le *karach* lui-même semble revêtir quelque malveillance.~ */
  IF ~  NearbyDialog("DNordom")
~ THEN REPLY #52541 /* ~"Surveille tes propos, Ravel…"~ */ DO ~SetGlobal("Ravel_Nordom","GLOBAL",1)
~ EXTERN ~DRAVEL~ 33
  IF ~  !NearbyDialog("DNordom")
NearbyDialog("DIgnus")
~ THEN REPLY #52542 /* ~"Surveille tes propos, Ravel…"~ */ DO ~SetGlobal("Ravel_Ignus","GLOBAL",1)
~ EXTERN ~DRAVEL~ 34
  IF ~  !NearbyDialog("DNordom")
!NearbyDialog("DIgnus")
NearbyDialog("DMorte")
~ THEN REPLY #52543 /* ~"Surveille tes propos, Ravel…"~ */ DO ~SetGlobal("Ravel_Morte","GLOBAL",1)
~ EXTERN ~DRAVEL~ 35
  IF ~  !NearbyDialog("DNordom")
!NearbyDialog("DIgnus")
!NearbyDialog("DMorte")
NearbyDialog("Dgrace")
~ THEN REPLY #52544 /* ~"Surveille tes propos, Ravel…"~ */ DO ~SetGlobal("Ravel_Grace","GLOBAL",1)
~ EXTERN ~DRAVEL~ 36
  IF ~  !NearbyDialog("Dnordom")
!NearbyDialog("Dignus")
!NearbyDialog("DMorte")
!NearbyDialog("DGrace")
NearbyDialog("DAnnah")
~ THEN REPLY #52545 /* ~"Surveille tes propos, Ravel…"~ */ DO ~SetGlobal("Ravel_Annah","GLOBAL",1)
~ EXTERN ~DRAVEL~ 38
  IF ~  !NearbyDialog("Dnordom")
!NearbyDialog("Dignus")
!NearbyDialog("DMorte")
!NearbyDialog("DGrace")
!NearbyDialog("DAnnah")
~ THEN REPLY #52546 /* ~"Surveille tes propos, Ravel…"~ */ EXTERN ~DRAVEL~ 40
END

IF ~~ THEN BEGIN 171 // from:
  SAY #52547 /* ~La lame de Dak'kon devient d'une violente couleur noire, reflétant ses yeux… et, à ta grande surprise, le fil de *karach* se sépare silencieusement en deux crocs dentelés.~ */
  IF ~  NearbyDialog("DNordom")
~ THEN REPLY #52548 /* ~"Ravel… laisse-le tranquille. *Je* répondrai à tes questions, pas eux."~ */ DO ~SetGlobal("Ravel_Nordom","GLOBAL",2)
~ EXTERN ~DRAVEL~ 63
  IF ~  !NearbyDialog("DNordom")
NearbyDialog("DIgnus")
~ THEN REPLY #52549 /* ~"Ravel… laisse-le tranquille. *Je* répondrai à tes questions, pas eux."~ */ DO ~SetGlobal("Ravel_Ignus","GLOBAL",2)
~ EXTERN ~DRAVEL~ 64
  IF ~  !NearbyDialog("DNordom")
!NearbyDialog("DIgnus")
NearbyDialog("DMorte")
~ THEN REPLY #52550 /* ~"Ravel… laisse-le tranquille. *Je* répondrai à tes questions, pas eux."~ */ DO ~SetGlobal("Ravel_Morte","GLOBAL",2)
~ EXTERN ~DRAVEL~ 65
  IF ~  !NearbyDialog("DNordom")
!NearbyDialog("DIgnus")
!NearbyDialog("DMorte")
NearbyDialog("Dgrace")
~ THEN REPLY #52551 /* ~"Ravel… laisse-le tranquille. *Je* répondrai à tes questions, pas eux."~ */ DO ~SetGlobal("Ravel_Grace","GLOBAL",2)
~ EXTERN ~DRAVEL~ 66
  IF ~  !NearbyDialog("Dnordom")
!NearbyDialog("Dignus")
!NearbyDialog("DMorte")
!NearbyDialog("DGrace")
NearbyDialog("DAnnah")
~ THEN REPLY #52552 /* ~"Ravel… laisse-le tranquille. *Je* répondrai à tes questions, pas eux."~ */ DO ~SetGlobal("Ravel_Annah","GLOBAL",2)
~ EXTERN ~DRAVEL~ 67
  IF ~  !NearbyDialog("Dnordom")
!NearbyDialog("Dignus")
!NearbyDialog("DMorte")
!NearbyDialog("DGrace")
!NearbyDialog("DAnnah")
~ THEN REPLY #52553 /* ~"Ravel… laisse-le tranquille. *Je* répondrai à tes questions, pas eux."~ */ EXTERN ~DRAVEL~ 68
END

IF ~~ THEN BEGIN 172 // from:
  SAY #53990 /* ~"Ta route est mienne."~ */
  IF ~  NearbyDialog("Dmorte")
InParty("Morte")
Global("Morte_Quip_Regret_Portal","GLOBAL",0)
~ THEN REPLY #53991 /* ~"Morte ? Tu es prêt ?"~ */ DO ~SetGlobal("Morte_Quip_Regret_Portal","GLOBAL",1)
~ EXTERN ~DMORTE~ 536
  IF ~  NearbyDialog("Dmorte")
InParty("Morte")
GlobalGT("Morte_Quip_Regret_Portal","GLOBAL",0)
~ THEN REPLY #53992 /* ~"Morte ? Tu es prêt ?"~ */ EXTERN ~DMORTE~ 534
  IF ~  !NearbyDialog("Dmorte")
~ THEN REPLY #53993 /* ~"Très bien… voyons ce qui se trouve de l'autre côté de ce portail."~ */ DO ~SetPortalCursor("Fort_Port",PORTAL_CURSOR_VISIBLE,TRUE)
SetPortalCursor("Fort_Port",PORTAL_ENABLED,TRUE)
~ EXIT
  IF ~  NearbyDialog("Dmorte")
!InParty("Morte")
Global("Morte_Quip_Regret_Portal","GLOBAL",0)
~ THEN REPLY #53994 /* ~"Très bien… voyons ce qui se trouve de l'autre côté de ce portail."~ */ DO ~SetGlobal("Morte_Quip_Regret_Portal","GLOBAL",1)
~ EXTERN ~DMORTE~ 538
  IF ~  NearbyDialog("Dmorte")
!InParty("Morte")
GlobalGT("Morte_Quip_Regret_Portal","GLOBAL",0)
~ THEN REPLY #53995 /* ~"Très bien… voyons ce qui se trouve de l'autre côté de ce portail."~ */ DO ~SetPortalCursor("Fort_Port",PORTAL_CURSOR_VISIBLE,TRUE)
SetPortalCursor("Fort_Port",PORTAL_ENABLED,TRUE)
~ EXIT
END

IF ~~ THEN BEGIN 173 // from:
  SAY #53997 /* ~Dak'kon paraît brisé - toutes les parties de son corps paraissent prêtes à se rebeller, mais il fait un signe de tête. "Ta route est mienne…" Ses traits semblent se décomposer. "Je te suis uniquement pour pouvoir mourir."~ */
  IF ~  NearbyDialog("DMorte")
Global("Morte_Quip_Regret_Portal","GLOBAL",0)
~ THEN REPLY #53999 /* ~"C'est tout ce que je demande… tu obtiendras peut-être ce que tu veux plus tôt que tu ne crois. Morte ?"~ */ DO ~SetGlobal("Morte_Quip_Regret_Portal","GLOBAL",1)
~ EXTERN ~DMORTE~ 536
  IF ~  NearbyDialog("DMorte")
GlobalGT("Morte_Quip_Regret_Portal","GLOBAL",0)
~ THEN REPLY #54000 /* ~"C'est tout ce que je demande… tu obtiendras peut-être ce que tu veux plus tôt que tu ne crois. Morte ?"~ */ EXTERN ~DMORTE~ 534
  IF ~  !NearbyDialog("Dmorte")
~ THEN REPLY #54001 /* ~"Tu obtiendras peut-être ce que tu veux plus tôt que tu ne crois. Très bien, voyons ce qui se trouve de l'autre côté de ce portail…"~ */ DO ~SetPortalCursor("Fort_Port",PORTAL_CURSOR_VISIBLE,TRUE)
SetPortalCursor("Fort_Port",PORTAL_ENABLED,TRUE)
~ EXIT
  IF ~  NearbyDialog("Dmorte")
!InParty("Morte")
Global("Morte_Quip_Regret_Portal","GLOBAL",0)
~ THEN REPLY #54002 /* ~"Tu obtiendras peut-être ce que tu veux plus tôt que tu ne crois. Très bien, voyons ce qui se trouve de l'autre côté de ce portail…"~ */ DO ~SetGlobal("Morte_Quip_Regret_Portal","GLOBAL",1)
~ EXTERN ~DMORTE~ 538
  IF ~  NearbyDialog("Dmorte")
!InParty("Morte")
GlobalGT("Morte_Quip_Regret_Portal","GLOBAL",0)
~ THEN REPLY #54003 /* ~"Tu obtiendras peut-être ce que tu veux plus tôt que tu ne crois. Très bien, voyons ce qui se trouve de l'autre côté de ce portail…"~ */ DO ~SetPortalCursor("Fort_Port",PORTAL_CURSOR_VISIBLE,TRUE)
SetPortalCursor("Fort_Port",PORTAL_ENABLED,TRUE)
~ EXIT
END

IF ~~ THEN BEGIN 174 // from:
  SAY #54004 /* ~C'est si subtil que tu le manques presque - la lame de Dak'kon luit et son bord se ternit. Lorsque tu le regardes, ses mains tombent à ses côtés, comme s'il se préparait à se battre.~ */
  IF ~~ THEN EXTERN ~DMORTE~ 540
END

IF ~~ THEN BEGIN 175 // from:
  SAY #54007 /* ~"*Sache* que j'ai emprunté ta route de nombreuses fois." Dak'kon parle doucement, chaque mot est pesé. Sa lame tourne au gris brumeux, comme si l'esprit de Dak'kon s'égarait. "Une portion de ta route m'est *connue*. Ils sont cinq à avoir suivi ta route vers la Forteresse. Chacun d'eux est mort de sa propre mort."~ */
  IF ~~ THEN REPLY #54008 /* ~"Mais… C'était qui ? Comment ils sont morts ?"~ */ GOTO 176
END

IF ~~ THEN BEGIN 176 // from: 175.0
  SAY #54009 /* ~"Je suis mort de la mort de la foi. Le crâne est mort de la mort du courage. La femme est morte de la mort du regret. L'archer aveugle est mort de la mort finale qui l'a délivré, la mort du corps. Toi… tu es mort de la mort de la mémoire."~ */
  IF ~~ THEN REPLY #54010 /* ~"Mais… qui étaient ces gens ?"~ */ EXTERN ~DMORTE~ 566
END

IF ~~ THEN BEGIN 177 // from:
  SAY #54011 /* ~"C'était quelqu'un qui *connaissait* ses cibles sans les voir. Nombre d'ombres sont mortes sous sa pluie de flèches."~ */
  IF ~~ THEN EXTERN ~DMORTE~ 567
END

IF ~~ THEN BEGIN 178 // from:
  SAY #54012 /* ~"C'était l'obscurité et chaque ombre était Shra'kt'lor." La voix de Dak'kon n'est plus qu'un murmure et ses yeux noirs et éteints semblent regarder fixement quelque chose derrière toi. "Ce sont des créatures tourmentées. Les blessures de ton esprit leur sont *connues*. Elles t'attaqueront à travers elles."~ */
  IF ~~ THEN EXTERN ~DMORTE~ 568
END

IF ~~ THEN BEGIN 179 // from:
  SAY #54013 /* ~"Les ombres *souffrent*. Elles *connaissent* le tourment. Elles *savent* comment te torturer avec ce qui a blessé ton cœur. Lorsque tu leur feras face, *sache* que tu feras face à ce qui t'a tué une fois."~ */
  IF ~~ THEN REPLY #54014 /* ~"Dak'kon… Morte, toi et moi avons survécu. Mais qu'est-il arrivé à l'archer et à Deionarra ?"~ */ GOTO 180
END

IF ~~ THEN BEGIN 180 // from: 179.0
  SAY #54015 /* ~"L'archer est mort de la mort du corps. La femme est morte de la mort de l'esprit. Je n'ai pas pu sauver la femme, car ça allait à l'encontre de ta VOLONTÉ. Sa tombe était sèche de larmes. Personne ne *savait*, pour pouvoir pleurer son trépas."~ */
  IF ~~ THEN REPLY #54016 /* ~"Mais… pourquoi n'ai-je pas voulu qu'elle soit sauvée ?"~ */ GOTO 181
END

IF ~~ THEN BEGIN 181 // from: 180.0
  SAY #54018 /* ~"Ta volonté n'était *connue* que de toi."~ */
  IF ~  InParty("Morte")
~ THEN REPLY #54019 /* ~"Très bien ; écoutez, vous deux : dites-moi tout ce que vous savez à propos de cette forteresse…"~ */ EXTERN ~DMORTE~ 569
  IF ~  !InParty("Morte")
~ THEN REPLY #54020 /* ~"Très bien ; écoutez, vous deux : dites-moi tout ce que vous savez à propos de cette forteresse…"~ */ EXTERN ~DMORTE~ 570
END

IF ~~ THEN BEGIN 182 // from:
  SAY #54021 /* ~"Rien ne vit ici. Ces murs sont l'obscurité."~ */
  IF ~~ THEN REPLY #54022 /* ~"Très bien - avant que je ne passe à travers ce portail - y a-t-il AUTRE CHOSE que vous voudriez ajouter et qui pourrait M'AIDER ?"~ */ DO ~SetGlobal("Morte_Quip_Regret_Portal","GLOBAL",2)
~ EXTERN ~DMORTE~ 553
END

IF ~~ THEN BEGIN 183 // from:
  SAY #54084 /* ~Dak'kon regarde au loin et parle tranquillement : "C'est comme prendre de l'eau dans ses mains en coupe."~ */
  IF ~~ THEN EXTERN ~DMORTE~ 519
END

IF ~~ THEN BEGIN 184 // from:
  SAY #54085 /* ~Dak'kon te parle tranquillement : "Le Pilier des Crânes est un pilier de têtes vivantes, composé de ceux qui ont menti, en *sachant* que leur fourberie conduirait à la mort d'une autre personne. Il peut répondre à un grand nombre de questions car son savoir est grand, mais le prix à payer pour ses services est très élevé. On ne doit pas lui poser ce genre de questions."~ */
  IF ~~ THEN EXTERN ~DPILLAR~ 14
END

IF ~~ THEN BEGIN 185 // from:
  SAY #54773 /* ~"Ce ne sont pas les chaînes qui l'emprisonnent, mais la croyance."~ */
  IF ~  !NearbyDialog("DGrace")
~ THEN REPLY #54774 /* ~"Deva, j'ai des questions à te poser…"~ */ EXTERN ~DTRIAS~ 8
  IF ~  NearbyDialog("DGrace")
~ THEN REPLY #54774 /* ~"Deva, j'ai des questions à te poser…"~ */ EXTERN ~DTRIAS~ 9
END

IF ~~ THEN BEGIN 186 // from:
  SAY #57128 /* ~"C'est un traître à la cause des githzeraï. Notre peuple est maudit à cause de lui." Dak'kon sort son épée. "Cette raison suffit pour le tuer."~ */
  IF ~~ THEN REPLY #57129 /* ~"Range ta lame, Dak'kon."~ */ EXTERN ~DBURGHER~ 2
  IF ~~ THEN REPLY #57130 /* ~"Alors tue-le."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Burgher_1","GLOBALGood",-1)
~ EXTERN ~DBURGHER~ 3
END

IF ~~ THEN BEGIN 187 // from:
  SAY #57131 /* ~"On ne peut pas lui faire confiance. Laisse-le périr ici, sous le chariot."~ */
  IF ~~ THEN REPLY #57132 /* ~"Non, Dak'kon, nous allons le sortir de là."~ */ EXTERN ~DBURGHER~ 5
  IF ~~ THEN REPLY #57133 /* ~"Très bien. Allons-y."~ */ EXIT
END

IF ~~ THEN BEGIN 188 // from:
  SAY #57134 /* ~"C'est un traître à la cause des githzeraï. Notre peuple est maudit à cause de lui." Dak'kon sort son épée. "Cette raison suffit pour le tuer."~ */
  IF ~~ THEN REPLY #57135 /* ~"Range ta lame, Dak'kon."~ */ EXTERN ~DBURGHER~ 13
  IF ~~ THEN REPLY #57136 /* ~"Alors tue-le."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Burgher_1","GLOBALGood",-1)
~ EXTERN ~DBURGHER~ 14
END

IF ~~ THEN BEGIN 189 // from:
  SAY #57137 /* ~"On ne peut pas lui faire confiance. Laisse-le périr ici, sous le chariot."~ */
  IF ~~ THEN REPLY #57138 /* ~"Non, Dak'kon, nous allons le sortir de là."~ */ EXTERN ~DBURGHER~ 16
  IF ~~ THEN REPLY #57139 /* ~"Très bien. Allons-y."~ */ EXTERN ~DBURGHER~ 17
END

IF ~  GlobalGT("Dakkon","GLOBAL",0)
InParty("Dakkon")
GlobalGT("BD_DAKKON_MORALE","GLOBAL",14)
!GlobalGT("Fortress_Dakkon","GLOBAL",2)
~ THEN BEGIN 190 // from:
  SAY #59167 /* ~Dak'kon se retourne vers toi et ses yeux ont l'aspect du charbon poli. Son épée étincelle, le métal vacillant comme une plaque d'huile sur un point d'eau. Dak'kon parle d'une voix monocorde et forte… rien à voir avec son intonation précédente. "Que veux-tu ?"~ [DAK205] */
  IF ~~ THEN REPLY #59168 /* ~"Il y a des choses que j'aimerais *savoir*, Dak'kon…"~ */ GOTO 193
  IF ~~ THEN REPLY #59169 /* ~"Rien pour le moment, Dak'kon. Allons-y."~ */ EXIT
END

IF ~  GlobalGT("Dakkon","GLOBAL",0)
InParty("Dakkon")
GlobalGT("BD_DAKKON_MORALE","GLOBAL",5)
GlobalLT("BD_DAKKON_MORALE","GLOBAL",15)
!GlobalGT("Fortress_Dakkon","GLOBAL",2)
~ THEN BEGIN 191 // from:
  SAY #59170 /* ~Dak'kon se retourne vers toi et ses yeux ont l'aspect du charbon poli ; ses yeux se reflètent un moment sur son épée alors que tu lui parles, puis il hoche la tête. "Que veux-tu ?"~ [DAK205] */
  IF ~~ THEN REPLY #59171 /* ~"Il y a des choses que j'aimerais *savoir*, Dak'kon…"~ */ GOTO 193
  IF ~~ THEN REPLY #59172 /* ~"Rien pour le moment, Dak'kon. Allons-y."~ */ EXIT
END

IF ~  GlobalGT("Dakkon","GLOBAL",0)
InParty("Dakkon")
GlobalLT("BD_DAKKON_MORALE","GLOBAL",6)
!GlobalGT("Fortress_Dakkon","GLOBAL",2)
~ THEN BEGIN 192 // from:
  SAY #59173 /* ~Dak'kon se retourne et ses yeux ressemblent à deux pierres ternes et noires. Son visage est blême et son épée a la couleur du sang séché. En parlant, il semble *vieux*… et rompu. "Que veux-tu ?"~ [DAK205] */
  IF ~~ THEN REPLY #59174 /* ~"Il y a des choses que j'aimerais *savoir*, Dak'kon…"~ */ GOTO 193
  IF ~~ THEN REPLY #59175 /* ~"Rien pour le moment, Dak'kon. Allons-y."~ */ EXIT
END

IF ~~ THEN BEGIN 193 // from: 190.0 191.0 192.0 194.1 195.1 196.1 197.2 198.2 199.2 200.1 201.2 202.1 203.7 204.3 205.2 206.1 207.2 208.0 209.1 210.1 211.1 212.1 213.1 214.1 215.1 216.3 217.5 218.1 219.1 220.1 221.1 222.2 223.1 224.2 225.1 226.1 227.1 228.1 230.1 231.4 232.5 233.1 234.1 235.0 236.3 237.3 238.3 239.3 240.3 241.3 242.3 243.3 244.2 245.2 246.2 247.2 248.2 250.1 251.4 252.3 253.2 254.3 255.4 256.2 258.1 259.1 260.1 261.1 262.1 268.2 269.0 270.6 271.3 272.3 273.4 274.3 275.3 278.3 279.3 281.2 282.3 285.2 287.0 289.0 290.1 291.2 292.1 293.0 294.14 295.0 296.0 298.0 318.7 319.2 320.1 322.0 323.2 324.1 328.2 329.5 330.3 331.3 332.5 333.6 334.7 335.7 337.6 338.3 339.4 340.3 341.3 343.1 351.1 352.1 353.1 356.1 363.0
  SAY #59176 /* ~"Je t'écoute."~ */
  IF ~  Global("Dakkon_Githzerai","GLOBAL",0)
~ THEN REPLY #59177 /* ~"Tes traits… ne me sont pas familiers. Qu'est-ce que tu es ?"~ */ GOTO 194
  IF ~  Global("Dakkon_Githzerai","GLOBAL",1)
~ THEN REPLY #59178 /* ~"J'avais des questions sur les githzeraïs…"~ */ DO ~SetAnimState("Dakkon",ANIM_MIMESTAND)
~ GOTO 231
  IF ~~ THEN REPLY #59179 /* ~"Je voulais te poser des questions sur nos voyages…"~ */ DO ~SetAnimState("Dakkon",ANIM_MIMESTAND)
~ GOTO 232
  IF ~  !Range([ENEMY],64)
~ THEN REPLY #59180 /* ~"Je cherche un professeur. Tu peux peut-être m'aider…"~ */ DO ~SetAnimState("Dakkon",ANIM_MIMESTAND)
~ GOTO 318
  IF ~  Range([ENEMY],64)
~ THEN REPLY #68257 /* ~"Puis-je te parler de tes enseignements ?"~ */ GOTO 366
  IF ~  GlobalGT("Ravel_Dakkon","GLOBAL",0)
Global("Dakkon_Slave","GLOBAL",0)
~ THEN REPLY #59181 /* ~"Dak'kon… Ravel t'a traité d'esclave. Qu'est-ce qu'elle voulait dire ?"~ */ GOTO 352
  IF ~  GlobalGT("Shrakatlor","GLOBAL",0)
~ THEN REPLY #59182 /* ~"Dak'kon, c'est quoi 'Shra'kt'lor' ?"~ */ GOTO 260
  IF ~  GlobalGT("Dakkon_Circle","GLOBAL",0)
~ THEN REPLY #59183 /* ~"Dak'kon, redis-moi comment je t'ai sauvé à Shra'kt'lor."~ */ GOTO 223
  IF ~  GlobalGT("Dakkon_Circle","GLOBAL",0)
~ THEN REPLY #59184 /* ~"Tu as dit que c'est *moi* qui t'avais donné le Cercle de Zerthimon, Dak'kon ?"~ */ GOTO 226
  IF ~  Global("Dakkon_Slave","GLOBAL",1)
~ THEN REPLY #59185 /* ~"Parle-moi de cet autre 'moi'… l'incarnation que tu as connue. Comment était-elle ?"~ */ GOTO 210
  IF ~  Global("Dakkon_Slave","GLOBAL",1)
~ THEN REPLY #59186 /* ~"Comment ça se fait que tu aies une dette envers moi, Dak'kon ?"~ */ GOTO 217
  IF ~~ THEN REPLY #59187 /* ~"Peu importe, Dak'kon. Allons-y."~ */ EXIT
END

IF ~~ THEN BEGIN 194 // from: 193.0
  SAY #59188 /* ~"Un githzeraï."~ */
  IF ~~ THEN REPLY #59189 /* ~"Un githzeraï ?"~ */ GOTO 195
  IF ~~ THEN REPLY #59190 /* ~"Il y a d'autres choses que j'aimerais *savoir*…"~ */ GOTO 193
  IF ~~ THEN REPLY #59191 /* ~"Je vois. Allons-y."~ */ EXIT
END

IF ~~ THEN BEGIN 195 // from: 194.0 255.0
  SAY #59192 /* ~"Un githzeraï est un membre du Peuple."~ */
  IF ~~ THEN REPLY #59193 /* ~"Quoi ?"~ */ GOTO 196
  IF ~~ THEN REPLY #59194 /* ~"Il y a d'autres choses que j'aimerais *savoir*…"~ */ GOTO 193
  IF ~~ THEN REPLY #59195 /* ~"Je vois. Allons-y."~ */ EXIT
END

IF ~~ THEN BEGIN 196 // from: 195.0
  SAY #59196 /* ~"Un githzeraï."~ */
  IF ~~ THEN REPLY #59197 /* ~"Oui, mais qui sont exactement les githzeraïs ?"~ */ GOTO 197
  IF ~~ THEN REPLY #59198 /* ~"Bon… très bien. Il y a d'autres choses que j'aimerais *savoir*…"~ */ GOTO 193
  IF ~~ THEN REPLY #59199 /* ~"Je vois. Allons-y."~ */ EXIT
END

IF ~~ THEN BEGIN 197 // from: 196.0
  SAY #59200 /* ~Dak'kon reste silencieux un instant, puis il prend la parole. "Notre histoire n'a pas besoin d'être *connue* de toi. Nous saignerions jusqu'à la mort sur la lame du temps avant que j'aie récité une fraction des histoires de notre Peuple."~ */
  IF ~~ THEN REPLY #59201 /* ~"Je n'ai pas besoin de connaître tes histoires… Je voudrais juste savoir ce qu'est ton peuple aujourd'hui."~ */ DO ~SetGlobal("Dakkon_Githzerai","GLOBAL",1)
SetAnimState("Dakkon",ANIM_MIMESTANDTOSTANCE)
~ GOTO 198
  IF ~~ THEN REPLY #59202 /* ~"J'avais d'autres questions sur les githzeraïs…"~ */ DO ~SetAnimState("Dakkon",ANIM_MIMESTAND)
~ GOTO 231
  IF ~~ THEN REPLY #59203 /* ~"Il y a d'autres choses que j'aimerais *savoir*…"~ */ GOTO 193
  IF ~~ THEN REPLY #59204 /* ~"Je vois. Allons-y."~ */ EXIT
END

IF ~~ THEN BEGIN 198 // from: 197.0 231.0 255.1
  SAY #59205 /* ~Dak'kon reste silencieux un instant. "*Sache* ceci et accepte-le pour réponse : nous sommes le Peuple installé sur le Plan changeant des Limbes." D'un habile mouvement, Dak'kon fait glisser la lame sur son dos et la tient devant lui.~ */
  IF ~~ THEN REPLY #59206 /* ~Attends de voir ce qui se passe.~ */ DO ~SetAnimState("Dakkon",ANIM_MIMEATTACK2)
~ GOTO 199
  IF ~~ THEN REPLY #59207 /* ~"Peu importe. J'avais d'autres questions sur les githzeraïs…"~ */ DO ~SetAnimState("Dakkon",ANIM_MIMESTAND)
~ GOTO 231
  IF ~~ THEN REPLY #59208 /* ~"En fait, il y a d'autres choses que j'aimerais *savoir*…"~ */ GOTO 193
  IF ~~ THEN REPLY #59209 /* ~"Très bien, Dak'kon. Allons-y."~ */ EXIT
END

IF ~~ THEN BEGIN 199 // from: 198.0
  SAY #59210 /* ~"Là, nous façonnons avec nos esprits la matière des Limbes. Avec nos pensées, nous forgeons des cités." Tandis que tu regardes, une série d'ondes métalliques commence à se dérouler à partir du centre de l'épée. Le creux et la crête des vagues ponctuent les inflexions dans la voix de Dak'kon. "C'est dans ce chaos que nous résidons, avec pour seule protection notre *connaissance*. Nous sommes les githzeraï."~ */
  IF ~~ THEN REPLY #59211 /* ~"Qu'est-ce que c'est que cette lame… Elle bouge, elle réagit au son de ta voix."~ */ GOTO 251
  IF ~~ THEN REPLY #59212 /* ~"Peu importe. J'avais d'autres questions sur les githzeraïs…"~ */ DO ~SetAnimState("Dakkon",ANIM_MIMESTAND)
~ GOTO 231
  IF ~~ THEN REPLY #59213 /* ~"Compris. Il y a d'autres choses que j'aimerais *savoir*…"~ */ GOTO 193
  IF ~~ THEN REPLY #59214 /* ~"Je vois. Allons-y."~ */ EXIT
END

IF ~~ THEN BEGIN 200 // from: 232.0
  SAY #59215 /* ~"Elle est *connue* sous le nom de 'Sigil'. Pour le Peuple, elle est *connue* comme la cité qui ne se *connaît* pas elle-même."~ */
  IF ~~ THEN REPLY #59216 /* ~"Qui ne se connaît pas elle-même ? Qu'est-ce que tu veux dire ?"~ */ GOTO 201
  IF ~~ THEN REPLY #59217 /* ~"Il y a d'autres choses que j'aimerais *savoir*…"~ */ GOTO 193
  IF ~~ THEN REPLY #59218 /* ~"Je vois. Allons-y."~ */ EXIT
END

IF ~~ THEN BEGIN 201 // from: 200.0
  SAY #59219 /* ~"La cité existe mais ne se *connaît* pas elle-même. Comme elle ne se *connaît* pas elle-même, son existence est imparfaite."~ */
  IF ~~ THEN REPLY #59220 /* ~"Comment ça ?"~ */ GOTO 203
  IF ~~ THEN REPLY #59221 /* ~"Tu parles de la cité comme si elle était vivante."~ */ GOTO 202
  IF ~~ THEN REPLY #59222 /* ~"Il y a d'autres choses que j'aimerais *savoir*…"~ */ GOTO 193
  IF ~~ THEN REPLY #59223 /* ~"Je vois. Allons-y."~ */ EXIT
END

IF ~~ THEN BEGIN 202 // from: 201.1 203.6
  SAY #59224 /* ~"Elle ne se *connaît* pas dans le sens où toi ou moi on se *connaît*, mais elle vit. Elle grandit, elle change et elle touche les esprits de tout ce qui y vit."~ */
  IF ~~ THEN REPLY #59225 /* ~"Pourquoi est-ce que tu as dit que la cité ne se connaissait pas elle-même ?"~ */ GOTO 203
  IF ~~ THEN REPLY #59226 /* ~"Il y a d'autres choses que j'aimerais *savoir*…"~ */ GOTO 193
  IF ~~ THEN REPLY #59227 /* ~"Je vois. Allons-y."~ */ EXIT
END

IF ~~ THEN BEGIN 203 // from: 201.0 202.0 236.1 237.1 238.1 239.1 240.1 241.1 242.1 243.1 244.0
  SAY #59228 /* ~"La cité existe par opposition à elle-même. Elle s'est détachée des plans, pourtant elle cherche à être partout à la fois. Ses murs sont des portes, mais ces portes sont verrouillées. Une telle existence indique une chose qui ne se *connaît* pas elle-même. En ne se *connaissant* pas elle-même, elle est imparfaite."~ */
  IF ~~ THEN REPLY #59229 /* ~"Quand tu dis que cette cité est partout à la fois, qu'est-ce que tu veux dire ?"~ */ GOTO 236
  IF ~~ THEN REPLY #59230 /* ~"Ses murs sont des portes ?"~ */ GOTO 236
  IF ~  CheckStatGT(Protagonist,12,INT)
CheckStatLT(Protagonist,13,WIS)
~ THEN REPLY #59231 /* ~Vérité : "Et si la cité n'était *pas* imparfaite ? Les choses n'ont pas forcément besoin d'être en ordre et d'avoir un but pour se connaître. Et si ces contradictions étaient des forces invisibles ?" ~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Dakkon_1","GLOBALLaw",-1)
~ GOTO 204
  IF ~  CheckStatGT(Protagonist,12,WIS)
~ THEN REPLY #59232 /* ~Vérité : "Et si la cité n'était *pas* imparfaite ? Les choses n'ont pas forcément besoin d'être en ordre et d'avoir un but pour se connaître. Et si ces contradictions étaient des forces invisibles ?" ~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Dakkon_1","GLOBALLaw",-1)
~ GOTO 204
  IF ~  CheckStatGT(Protagonist,12,INT)
CheckStatLT(Protagonist,13,WIS)
~ THEN REPLY #59233 /* ~Vérité : "Et si la cité n'était *pas* imparfaite et que tu ne connaissais pas les raisons de ses contradictions ? Il y a un ordre dans tout. Il existe peut-être quelque chose de sous-jacent que tu ne peux pas percevoir."~ */ DO ~IncrementGlobalOnceEx("GLOBALLawful_Dakkon_1","GLOBALLaw",1)
~ GOTO 204
  IF ~  CheckStatGT(Protagonist,12,WIS)
~ THEN REPLY #59234 /* ~Vérité : "Et si la cité n'était *pas* imparfaite et que tu ne connaissais pas les raisons de ses contradictions ? Il y a un ordre dans tout. Il existe peut-être quelque chose de sous-jacent que tu ne peux pas percevoir."~ */ DO ~IncrementGlobalOnceEx("GLOBALLawful_Dakkon_1","GLOBALLaw",1)
~ GOTO 204
  IF ~~ THEN REPLY #59235 /* ~"Tu parles de la cité comme si elle était vivante."~ */ GOTO 202
  IF ~~ THEN REPLY #59236 /* ~"Il y a d'autres choses que j'aimerais *savoir*…"~ */ GOTO 193
  IF ~~ THEN REPLY #59237 /* ~"Je vois. Allons-y."~ */ EXIT
END

IF ~~ THEN BEGIN 204 // from: 203.2 203.3 203.4 203.5
  SAY #59238 /* ~"À ta question, une question : qu'est-ce qui se passe si la cité est imparfaite et que tu aperçois partout ses contradictions ?"~ */
  IF ~  CheckStatGT(Protagonist,13,INT)
CheckStatLT(Protagonist,14,WIS)
~ THEN REPLY #59239 /* ~Vérité : "À *ta* question, je répondrai aussi par une question : tu prétends que l'existence de cette cité est imparfaite. Mais tu l'acceptes sans chercher à savoir s'il existe quelque chose de meilleur. Tu es donc imparfait… Ce que tu cherches, ce n'est pas la connaissance, mais seulement une réponse qui t'arrange."~ */ GOTO 205
  IF ~  CheckStatGT(Protagonist,13,WIS)
~ THEN REPLY #59240 /* ~Vérité : "À *ta* question, je répondrai aussi par une question : tu prétends que l'existence de cette cité est imparfaite. Mais tu l'acceptes sans chercher à savoir s'il existe quelque chose de meilleur. Tu es donc imparfait… Ce que tu cherches, ce n'est pas la connaissance, mais seulement une réponse qui t'arrange."~ */ GOTO 205
  IF ~~ THEN REPLY #59241 /* ~"Quand tu disais que cette cité était partout à la fois, qu'est-ce que tu voulais dire ?"~ */ GOTO 236
  IF ~~ THEN REPLY #59242 /* ~"Il y a d'autres choses que j'aimerais *savoir*…"~ */ GOTO 193
  IF ~~ THEN REPLY #59243 /* ~"Je vois. Allons-y."~ */ EXIT
END

IF ~~ THEN BEGIN 205 // from: 204.0 204.1
  SAY #59244 /* ~Dak'kon devient silencieux. "Il n'y a pas de *connaissance* de la réponse aux questions que nous avons posées. Pourtant la cité existe. C'est tout."~ */
  IF ~  Global("Dakkon_Word","GLOBAL",0)
~ THEN REPLY #59245 /* ~"Et moi je maintiens qu'on se *connaît* soi-même par les questions qu'on se pose et par celles qu'on ne se pose pas. Si on cesse de se poser des questions et qu'on accepte uniquement ce qu'on peut percevoir…"~ */ DO ~SetGlobal("Dakkon_Word","GLOBAL",1)
GiveExperience(Protagonist,500)
~ GOTO 206
  IF ~  Global("Dakkon_Word","GLOBAL",1)
~ THEN REPLY #59246 /* ~"Et moi je maintiens qu'on se *connaît* soi-même par les questions qu'on se pose et par celles qu'on ne se pose pas. Si on cesse de se poser des questions et qu'on accepte uniquement ce qu'on peut percevoir…"~ */ GOTO 206
  IF ~~ THEN REPLY #59247 /* ~"Très bien. Il y a d'autres choses que j'aimerais *savoir*…"~ */ GOTO 193
  IF ~~ THEN REPLY #59248 /* ~"Peu importe alors. Allons-y."~ */ EXIT
END

IF ~~ THEN BEGIN 206 // from: 205.0 205.1
  SAY #59249 /* ~"Nous cesserons alors de nous *connaître* nous-mêmes." La voix de Dak'kon est devenue plus grave. "Ces mots ont déjà été prononcés. Je les ai entendus et *connus*."~ */
  IF ~~ THEN REPLY #59250 /* ~"Où est-ce que tu les as entendus ?"~ */ GOTO 207
  IF ~~ THEN REPLY #59251 /* ~"Il y a d'autres choses que j'aimerais *savoir*…"~ */ GOTO 193
  IF ~~ THEN REPLY #59252 /* ~"Peu importe. Allons-y."~ */ EXIT
END

IF ~~ THEN BEGIN 207 // from: 206.0
  SAY #59253 /* ~"Les mots sont les miens. Autrefois, je les *connaissais* et je *connaissais* leur signification. Je les avais oubliés jusqu'à ce que tu parles." Le regard de Dak'kon voyage à travers toi et son épée cesse d'étinceler, se vidant de toute couleur jusqu'à devenir translucide.~ */
  IF ~  Global("Dakkon_Slave","GLOBAL",0)
~ THEN REPLY #59254 /* ~"Dak'kon, comment ça se fait que je connaisse tes paroles ?"~ */ GOTO 208
  IF ~  Global("Dakkon_Slave","GLOBAL",1)
~ THEN REPLY #59255 /* ~"Dak'kon, est-ce que c'est toi qui m'as dit ces mots quand on a voyagé ensemble ?"~ */ GOTO 209
  IF ~~ THEN REPLY #59256 /* ~"Je… vois. Il y a d'autres choses que j'aimerais *savoir*…"~ */ GOTO 193
  IF ~~ THEN REPLY #59257 /* ~"Peu importe. Allons-y."~ */ EXIT
END

IF ~~ THEN BEGIN 208 // from: 207.0
  SAY #59258 /* ~"Je dis ces mots, mais ils ne m'appartiennent pas. D'autres peuvent les *connaître*, car leur *connaissance* réside dans toute chose. Les humains appellent cela la *sagesse*."~ */
  IF ~~ THEN REPLY #59259 /* ~"Très bien. Il y a d'autres choses que j'aimerais *savoir*…"~ */ GOTO 193
  IF ~~ THEN REPLY #59260 /* ~"Je vois. Allons-y."~ */ EXIT
END

IF ~~ THEN BEGIN 209 // from: 207.1
  SAY #59261 /* ~"Nous avons souvent discuté du sens de tels mots. Autrefois, lorsque le poids des années était moins lourd qu'il ne l'est actuellement. J'ai oublié beaucoup de choses sur cette voie."~ */
  IF ~~ THEN REPLY #59262 /* ~"Dak'kon, à quoi… ressemblait… cet autre moi ?"~ */ DO ~SetAnimState("Dakkon",ANIM_MIMESTAND)
~ GOTO 210
  IF ~~ THEN REPLY #59263 /* ~"Il y a d'autres choses que j'aimerais *savoir*…"~ */ GOTO 193
  IF ~~ THEN REPLY #59264 /* ~"Je vois. Allons-y."~ */ EXIT
END

IF ~~ THEN BEGIN 210 // from: 193.9 209.0
  SAY #59265 /* ~Dak'kon te fixe et se tait.~ */
  IF ~~ THEN REPLY #59266 /* ~"Dak'kon ?"~ */ JOURNAL #59269 /* ~Dak'kon prétend connaître l'une de mes incarnations. Il n'avait guère de compliments à faire sur l'individu que j'étais autrefois. D'après lui, mon 'moi' antérieur était un homme compétent, mais fourbe et égoïste. Je commence à me demander quels dégâts j'ai pu causer de par le passé.~ */ GOTO 211
  IF ~~ THEN REPLY #59267 /* ~"Peu importe, alors. Il y a d'autres choses que j'aimerais *savoir*…"~ */ GOTO 193
  IF ~~ THEN REPLY #59268 /* ~"Il vaut peut-être mieux ne pas en parler. Allons-y."~ */ EXIT
END

IF ~~ THEN BEGIN 211 // from: 210.0
  SAY #59270 /* ~"*Sache* qu'il était différent. *Sache* que ces différences n'apparaissaient ni sur la peau, ni sur la Voie de l'arme, ni dans la manière dont il était habillé. *Sache* qu'il était différent dans sa manière de penser et dans les actes qui découlaient de ses pensées. Sa VOLONTÉ est devenue substance. *Sache* qu'il en a vu d'autres mais SANS vraiment les voir. Il *savait* seulement comment ils pourraient le servir. Son cœur était traître, froid, et jamais sa froideur ne l'a brûlé."~ */
  IF ~~ THEN REPLY #59271 /* ~"Est-ce qu'il t'a déjà touché, Dak'kon ? Est-ce qu'il t'a déjà trahi ?"~ */ GOTO 212
  IF ~~ THEN REPLY #59272 /* ~"Je… vois. Il y a d'autres choses que j'aimerais *savoir*…"~ */ GOTO 193
  IF ~~ THEN REPLY #59273 /* ~"On parlera de ça une autre fois. Allons-y."~ */ EXIT
END

IF ~~ THEN BEGIN 212 // from: 211.0
  SAY #59274 /* ~L'épée de Dak'kon prend une coloration noire et terne et des sortes de dents se mettent à pousser sur l'extrémité de la lame. Son visage se crispe et il parle entre ses dents. "Je ne *veux* pas que tu le *saches*."~ */
  IF ~~ THEN REPLY #59275 /* ~"*Dis-moi*, Dak'kon. Est-ce qu'il t'a déjà *trahi* ?"~ */ GOTO 213
  IF ~~ THEN REPLY #59276 /* ~"Très bien. Il y a d'autres choses que j'aimerais *savoir*…"~ */ GOTO 193
  IF ~~ THEN REPLY #59277 /* ~"Bon, n'en parlons plus. Allons-y."~ */ EXIT
END

IF ~~ THEN BEGIN 213 // from: 212.0
  SAY #59278 /* ~"*Sache* qu'il y a eu BEAUCOUP d'actes de trahison. Toutes les trahisons à mon égard ont été faites par moi. C'est tout."~ */
  IF ~~ THEN REPLY #59279 /* ~"*Dis-moi*, Dak'kon. C'était quoi ces trahisons ?"~ */ GOTO 214
  IF ~~ THEN REPLY #59280 /* ~"Peu importe. Il y a d'autres choses que j'aimerais *savoir*…"~ */ GOTO 193
  IF ~~ THEN REPLY #59281 /* ~"On parlera de ça une autre fois. Allons-y."~ */ EXIT
END

IF ~~ THEN BEGIN 214 // from: 213.0
  SAY #59282 /* ~"Je lui ai donné ma PAROLE. Je lui ai donné ma PERSONNE."~ */
  IF ~~ THEN REPLY #59283 /* ~"De quoi parles-tu ?"~ */ JOURNAL #59286 /* ~Dak'kon m'a expliqué la nature de son esclavage. Quand je lui ai sauvé la vie, il a prêté serment de me servir jusqu'à la mort. Mais il ignorait que j'étais immortel, et il a donc promis de me servir éternellement.~ */ GOTO 215
  IF ~~ THEN REPLY #59284 /* ~"Peu importe. Il y a d'autres choses que j'aimerais *savoir*…"~ */ GOTO 193
  IF ~~ THEN REPLY #59285 /* ~"On parlera de ça une autre fois. Allons-y."~ */ EXIT
END

IF ~~ THEN BEGIN 215 // from: 214.0 278.0 356.0
  SAY #59287 /* ~"Le Peuple n'apprécie guère d'être asservi à des faits ou à des chaînes. Si on se retrouve dans une telle cage, on AGIT pour se libérer, même si cela signifie que l'on doit se retrouver dans une autre cage pendant un moment. Tu m'as rendu un grand service. Et ce faisant, tu m'as asservi. J'ai agi pour me libérer. *Sache* que je t'ai livré ma parole et ma personne pour *agir* en ton nom jusqu'à ta mort."~ */
  IF ~~ THEN REPLY #59288 /* ~"Mais… je ne peux pas mourir."~ */ GOTO 216
  IF ~~ THEN REPLY #59289 /* ~"Je… vois. Il y a d'autres choses que j'aimerais *savoir*…"~ */ GOTO 193
  IF ~~ THEN REPLY #59290 /* ~"On parlera de ça une autre fois. Allons-y."~ */ EXIT
END

IF ~~ THEN BEGIN 216 // from: 215.0
  SAY #59291 /* ~"Celui-là ne le *savait* pas. Je lui ai donné ma *parole*. J'ai donné ma *personne*. *Sache* que je n'ai plus rien à donner hormis ma vie. *Sache* que je te suis maintenant jusqu'à ma mort."~ */
  IF ~~ THEN REPLY #59292 /* ~"C'était quoi ce service que je t'ai rendu et qui… t'a enchaîné ?"~ */ GOTO 217
  IF ~  Global("Good_Dakkon_1","GLOBAL",0)
~ THEN REPLY #59293 /* ~"Dak'kon, ce n'est pas obligé… Je peux te libérer. Je ne veux plus que tu sois un esclave - considère que tu as payé ta dette."~ */ DO ~IncrementGlobalOnceEx("GLOBALGood_Dakkon_1","GLOBALGood",3)
IncrementGlobal("BD_DAKKON_MORALE","GLOBAL",2)
~ GOTO 233
  IF ~  Global("Good_Dakkon_1","GLOBAL",1)
~ THEN REPLY #59294 /* ~"Dak'kon, ce n'est pas obligé… Je peux te libérer. Je ne veux plus que tu sois un esclave - considère que tu as payé ta dette."~ */ GOTO 233
  IF ~~ THEN REPLY #59295 /* ~"Je vois.  Il y a d'autres choses que j'aimerais *savoir*…"~ */ GOTO 193
  IF ~  Global("Evil_Dakkon_3","GLOBAL",0)
~ THEN REPLY #59296 /* ~"Alors comme ça, cet autre moi t'a fait promettre de le servir jusqu'à sa mort et tu ne savais pas qu'il était *immortel* ? Parfait ; allons-y… esclave."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Dakkon_3","GLOBALGood",-2)
IncrementGlobal("BD_DAKKON_MORALE","GLOBAL",-2)
~ EXIT
  IF ~  Global("Evil_Dakkon_3","GLOBAL",1)
~ THEN REPLY #59297 /* ~"Alors comme ça, cet autre moi t'a fait promettre de le servir jusqu'à sa mort et tu ne savais pas qu'il était *immortel* ? Parfait ; allons-y… esclave."~ */ EXIT
  IF ~~ THEN REPLY #59298 /* ~"On parlera de ça une autre fois. Allons-y."~ */ EXIT
END

IF ~~ THEN BEGIN 217 // from: 193.10 216.0
  SAY #59299 /* ~"Tu lui as sauvé la vie. En échange, ta vie est mienne."~ */
  IF ~~ THEN REPLY #59300 /* ~"Comment est-ce que je t'ai sauvé la vie ?"~ */ DO ~SetAnimState("Dakkon",ANIM_MIMESTANDTOSTANCE)
~ GOTO 218
  IF ~  Global("Good_Dakkon_1","GLOBAL",0)
~ THEN REPLY #59301 /* ~"Dak'kon, ce n'est pas obligé… Je peux te libérer. Je ne veux plus que tu sois un esclave - considère que tu as payé ta dette."~ */ DO ~IncrementGlobalOnceEx("GLOBALGood_Dakkon_1","GLOBALGood",3)
IncrementGlobal("BD_DAKKON_MORALE","GLOBAL",2)
~ GOTO 233
  IF ~  Global("Good_Dakkon_1","GLOBAL",1)
~ THEN REPLY #59302 /* ~"Dak'kon, ce n'est pas obligé… Je peux te libérer. Je ne veux plus que tu sois un esclave - considère que tu as payé ta dette."~ */ GOTO 233
  IF ~  Global("Evil_Dakkon_3","GLOBAL",0)
~ THEN REPLY #59303 /* ~"Alors comme ça, cet autre moi t'a fait promettre de le servir jusqu'à sa mort et tu ne savais pas qu'il était *immortel* ? Parfait ; allons-y… esclave."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Dakkon_3","GLOBALGood",-2)
IncrementGlobal("BD_DAKKON_MORALE","GLOBAL",-2)
~ EXIT
  IF ~  Global("Evil_Dakkon_3","GLOBAL",1)
~ THEN REPLY #59304 /* ~"Alors comme ça, cet autre moi t'a fait promettre de le servir jusqu'à sa mort et tu ne savais pas qu'il était *immortel* ? Parfait ; allons-y… esclave."~ */ EXIT
  IF ~~ THEN REPLY #59305 /* ~"Je vois.  Il y a d'autres choses que j'aimerais *savoir*…"~ */ GOTO 193
  IF ~~ THEN REPLY #59306 /* ~"On parlera de ça une autre fois. Allons-y."~ */ EXIT
END

IF ~~ THEN BEGIN 218 // from: 217.0 262.0 331.0
  SAY #59307 /* ~"Sur le plan roulant des Limbes, le Peuple façonne des cités en pensées à partir du chaos. *Sache* qu'il n'y a pas de place pour un esprit divisé." Dak'kon lève l'épée par-dessus son épaule et la brandit devant lui. Tandis qu'il la fixe, elle *s'affile* jusqu'à devenir plus fine qu'une feuille de papier.~ */
  IF ~~ THEN REPLY #59308 /* ~"Continue…"~ */ DO ~SetAnimState("Dakkon",ANIM_MIMESTANCE)
~ GOTO 219
  IF ~~ THEN REPLY #59309 /* ~"Je crois que j'en ai assez entendu. Il y a d'autres choses que j'aimerais *savoir*…"~ */ GOTO 193
  IF ~~ THEN REPLY #59310 /* ~"On parlera de ça une autre fois. Allons-y."~ */ EXIT
END

IF ~~ THEN BEGIN 219 // from: 218.0
  SAY #59311 /* ~"Un esprit divisé est un esprit non concentré. Un esprit divisé brise les murs et affaiblit les pierres." Tandis que Dak'kon parle, les bords de l'épée se corrodent légèrement, le métal se voile et fond sur les bords. "De nombreux esprits divisés peuvent *détruire* une cité."~ */
  IF ~~ THEN REPLY #59312 /* ~"Je comprends. Continue…"~ */ GOTO 220
  IF ~~ THEN REPLY #59313 /* ~"J'en ai assez entendu. Il y a d'autres choses que j'aimerais *savoir*…"~ */ GOTO 193
  IF ~~ THEN REPLY #59315 /* ~"On parlera de ça une autre fois. Allons-y."~ */ EXIT
END

IF ~~ THEN BEGIN 220 // from: 219.0
  SAY #59316 /* ~"Je *connais* depuis longtemps les paroles de Zerthimon. Par ma voix, beaucoup ont *connu* les paroles de Zerthimon. Les *zerths* protègent la communauté de toutes les menaces, qu'elles aient trait au corps ou à l'esprit. Ce sont les guides au milieu du chaos. Mais il est arrivé que je prononce les paroles de Zerthimon sans *connaître* les paroles de Zerthimon. Il est arrivé que je ne me *connaisse* même plus moi-même."~ */
  IF ~~ THEN REPLY #59318 /* ~"Alors… tu as douté ?"~ */ GOTO 221
  IF ~~ THEN REPLY #59319 /* ~"J'en ai assez entendu. Il y a d'autres choses que j'aimerais *savoir*…"~ */ GOTO 193
  IF ~~ THEN REPLY #59320 /* ~"On parlera de ça une autre fois. Allons-y."~ */ EXIT
END

IF ~~ THEN BEGIN 221 // from: 220.0
  SAY #59322 /* ~"Non." La voix de Dak'kon est tranchante et son épée *s'affile* en conséquence. "Je *connaissais* les paroles. Mais je me suis dit que peut-être d'autres ne *connaissaient* pas ces paroles comme Zerthimon les *connaissait*. C'est ainsi qu'est née la division. Alors que mon esprit se divisait, ceux qui me considéraient comme un guide se divisèrent. Beaucoup de githzeraïs, des centaines de githzeraïs… se mirent à douter. Shra'kt'lor mourut ce jour-là."~ */
  IF ~~ THEN REPLY #59324 /* ~"Alors… ceux qui t'ont suivi ont eux aussi commencé à douter et la cité s'est affaiblie."~ */ GOTO 222
  IF ~~ THEN REPLY #59325 /* ~"J'en ai assez entendu. Il y a d'autres choses que j'aimerais *savoir*…"~ */ GOTO 193
  IF ~~ THEN REPLY #59326 /* ~"On parlera de ça une autre fois. Allons-y."~ */ EXIT
END

IF ~~ THEN BEGIN 222 // from: 221.0
  SAY #59330 /* ~"Les ennemis de Zerthimon sont venus. *Sache* que leur haine pour ses paroles et le Peuple a donné la force à leurs épées. *Sache* qu'ils se rendirent compte que la cité était affaiblie et qu'ils apportèrent la guerre avec eux. De nombreux githzeraïs sombrèrent dans le chaos et sous l'épée de nos ennemis." De petites perles de métal apparaissent à la surface de l'épée, comme si elle cloquait. "*Sache* que tout ceci s'est passé il y a longtemps."~ */
  IF ~  Global("Dakkon_Slave","GLOBAL",0)
~ THEN REPLY #59332 /* ~"Que t'est-il arrivé ?"~ */ GOTO 268
  IF ~  Global("Dakkon_Slave","GLOBAL",1)
~ THEN REPLY #59337 /* ~"Que t'est-il arrivé ?"~ */ GOTO 223
  IF ~~ THEN REPLY #59342 /* ~"Très bien. Il y a d'autres choses que j'aimerais *savoir*…"~ */ GOTO 193
  IF ~~ THEN REPLY #59344 /* ~"On parlera de ça une autre fois. Allons-y."~ */ EXIT
END

IF ~~ THEN BEGIN 223 // from: 193.7 222.1
  SAY #59347 /* ~"En tombant des murs de Shra'kt'lor, *sache* que je me suis brisé. Mon épée était trouble et mon esprit divisé. J'ai dérivé jusqu'aux mers des Limbes et je voulais sombrer. Je suis resté là, mourant, pendant des jours, mon esprit inondé de division, lorsque la mort est enfin venue à moi. Elle avait tes traits et elle avait ta voix."~ */
  IF ~~ THEN REPLY #59348 /* ~"Moi ?"~ */ GOTO 224
  IF ~~ THEN REPLY #59349 /* ~"J'en ai assez entendu. Il y a d'autres choses que j'aimerais *savoir*…"~ */ GOTO 193
  IF ~~ THEN REPLY #59351 /* ~"On parlera de ça une autre fois. Allons-y."~ */ EXIT
END

IF ~~ THEN BEGIN 224 // from: 223.0
  SAY #59353 /* ~"Tu m'as demandé de t'écouter."~ */
  IF ~  CheckStatGT(Protagonist,12,WIS)
~ THEN DO ~SetAnimState("Dakkon",ANIM_MIMESTAND)
~ GOTO 344
  IF ~  CheckStatLT(Protagonist,13,WIS)
~ THEN REPLY #59355 /* ~"Qu'est-ce que j'ai dit ?"~ */ GOTO 227
  IF ~  CheckStatLT(Protagonist,13,WIS)
~ THEN REPLY #59357 /* ~"Peu importe. Il y a d'autres choses que j'aimerais *savoir*…"~ */ GOTO 193
  IF ~  CheckStatLT(Protagonist,13,WIS)
~ THEN REPLY #59359 /* ~"On parlera de ça une autre fois. Allons-y."~ */ EXIT
END

IF ~~ THEN BEGIN 225 // from: 344.1 345.1 346.1 347.1 348.1 349.2 350.0
  SAY #59360 /* ~Dak'kon est silencieux. "J'ai entendu tes paroles. Le chaos de mon esprit s'est tu. Je me *connaissais* de nouveau."~ */
  IF ~~ THEN REPLY #59361 /* ~"Alors, c'est moi qui t'ai donné le Cercle ?"~ */ DO ~SetGlobal("Dakkon_Circle","GLOBAL",1)
~ JOURNAL #59372 /* ~Il apparaît que c'est *moi* qui ai donné le Cercle Ininterrompu de Zerthimon à Dak'kon.~ */ GOTO 226
  IF ~~ THEN REPLY #59362 /* ~"Très bien. Il y a d'autres choses que j'aimerais *savoir*…"~ */ GOTO 193
  IF ~~ THEN REPLY #59363 /* ~"On parlera de ça une autre fois. Allons-y."~ */ EXIT
END

IF ~~ THEN BEGIN 226 // from: 193.8 225.0 227.0
  SAY #59364 /* ~"Oui. En *connaissant* ses paroles, je me *connaissais*."~ */
  IF ~  GlobalGT("Dakkon_Teach","GLOBAL",12)
~ THEN REPLY #59365 /* ~"Mais est-ce qu'il t'a sauvé la vie, Dak'kon ? Ou est-ce qu'il t'a encore plus divisé après avoir étudié le cercle ?"~ */ GOTO 228
  IF ~~ THEN REPLY #59366 /* ~"Très bien. Il y a d'autres choses que j'aimerais *savoir*…"~ */ GOTO 193
  IF ~~ THEN REPLY #59367 /* ~"C'est tout ce que je voulais savoir. Allons-y."~ */ EXIT
END

IF ~~ THEN BEGIN 227 // from: 224.1
  SAY #59368 /* ~"Dak'kon, *zerth* de Shra'kt'lor-La-Noyée, dernier utilisateur de l'épée en *karach*, *sache* que je suis venu à toi avec le paroles de Zerthimon, non pas gravées dans le chaos, mais dans la pierre par la volonté d'un Cercle Ininterrompu. *Sache* qu'elles sont vraies, *sache* que ton esprit n'a plus besoin d'être divisé. Tout ce que tu fois faire, c'est prendre la pierre et tu te *connaîtras* de nouveau."~ */
  IF ~~ THEN REPLY #59369 /* ~"Alors c'est *moi* qui t'ai donné le Cercle ?"~ */ DO ~SetGlobal("Dakkon_Circle","GLOBAL",1)
~ JOURNAL #59372 /* ~Il apparaît que c'est *moi* qui ai donné le Cercle Ininterrompu de Zerthimon à Dak'kon.~ */ GOTO 226
  IF ~~ THEN REPLY #59370 /* ~"Je… vois. Il y a d'autres choses que j'aimerais *savoir*…"~ */ GOTO 193
  IF ~~ THEN REPLY #59371 /* ~"C'est tout ce que je voulais savoir. Allons-y."~ */ EXIT
END

IF ~~ THEN BEGIN 228 // from: 226.0
  SAY #59373 /* ~Dak'kon est silencieux pendant un moment, mais son épée se tord, comme si elle souffrait. Il met du temps à reprendre la parole et lorsqu'il le fait, sa voix est voilée. "Cela m'a divisé."~ */
  IF ~~ THEN REPLY #59374 /* ~"Alors, est-ce qu'il t'a sauvé la vie, Dak'kon ? Ou est-ce qu'il a seulement renforcé la souffrance que tu éprouvais déjà ? Ces paroles… ces paroles de Zerthimon - elles semblent uniquement te diviser davantage. Je le vois lorsque tu prodigues les enseignements."~ */ DO ~SetAnimState("Dakkon",ANIM_MIMESTAND)
~ GOTO 229
  IF ~~ THEN REPLY #59375 /* ~"C'est ce que je pensais. Il y a d'autres choses que j'aimerais *savoir*…"~ */ GOTO 193
  IF ~~ THEN REPLY #59376 /* ~"N'en parlons plus. Allons-y."~ */ EXIT
END

IF ~~ THEN BEGIN 229 // from: 228.0
  SAY #59377 /* ~Dak'kon est silencieux.~ */
  IF ~~ THEN REPLY #59378 /* ~"Je dis que je ne t'ai JAMAIS sauvé, Dak'kon… Je t'ai seulement aidé alors que tu étais à l'article de la mort pour que tu puisses mourir de nouveau. Si tu étais mort à Shra'kt'lor, tu aurais trouvé la paix."~ */ GOTO 230
END

IF ~~ THEN BEGIN 230 // from: 229.0
  SAY #59379 /* ~"Tes paroles portent le poids de la vérité. La mort qui m'a frappé à Shra'kt'lor a été la dernière. Chaque jour que j'ai vécu depuis est une nouvelle mort."~ */
  IF ~~ THEN REPLY #59380 /* ~"Tu n'as plus à me servir, Dak'kon. Je ne t'ai jamais sauvé la vie, je n'ai fait que te tuer deux fois. Tu ne me dois rien."~ */ DO ~IncrementGlobalOnceEx("GLOBALGood_Dakkon_2","GLOBALGood",3)
~ GOTO 233
  IF ~~ THEN REPLY #59381 /* ~"C'est ainsi. Il y a d'autres choses que j'aimerais *savoir*…"~ */ GOTO 193
  IF ~~ THEN REPLY #59382 /* ~"On reparlera de ça plus tard. Allons-y."~ */ EXIT
END

IF ~~ THEN BEGIN 231 // from: 193.1 197.1 198.1 199.1 245.1 246.1 247.1 248.1 250.0 251.3 252.2 253.1 254.2 255.3 256.1 270.5 271.2 272.2 273.3 274.2 275.2 278.2 279.2 281.1 282.2 285.1 343.0
  SAY #59383 /* ~Dak'kon attend.~ */
  IF ~  Global("Dakkon_Githzerai","GLOBAL",1)
~ THEN REPLY #59384 /* ~"Tu peux me reparler des githzeraïs ?"~ */ GOTO 198
  IF ~~ THEN REPLY #59385 /* ~"Tu sembles mettre l'accent sur le terme 'connaître'. Pourquoi ?"~ */ GOTO 245
  IF ~~ THEN REPLY #59386 /* ~"C'est quoi, cette lame ?"~ */ GOTO 251
  IF ~  Global("Dakkon_Githzerai","GLOBAL",1)
~ THEN REPLY #59387 /* ~"J'avais quelques questions sur le langage des githzeraïs…"~ */ DO ~SetAnimState("Dakkon",ANIM_MIMESTAND)
~ GOTO 270
  IF ~~ THEN REPLY #59388 /* ~"J'avais d'autres questions à la place…"~ */ GOTO 193
  IF ~~ THEN REPLY #59389 /* ~"Peu importe, Dak'kon. Allons-y."~ */ EXIT
END

IF ~~ THEN BEGIN 232 // from: 193.2 236.2 237.2 238.2 239.2 240.2 241.2 242.2 243.2 244.1 258.0 259.0 328.1
  SAY #59390 /* ~Dak'kon attend.~ */
  IF ~~ THEN REPLY #59391 /* ~"Qu'est-ce que tu peux me dire sur la cité de Sigil ?"~ */ GOTO 200
  IF ~  Global("Pharod","GLOBAL",0)
~ THEN REPLY #59392 /* ~"Tu connais un dénommé Pharod ?"~ */ GOTO 258
  IF ~  Global("Journal","GLOBAL",0)
~ THEN REPLY #59393 /* ~"J'ai perdu un journal. Tu sais où il pourrait être ?"~ */ GOTO 259
  IF ~  GlobalGT("Fell_Dakkon_Truth","GLOBAL",0)
~ THEN REPLY #59394 /* ~"Quand Fell décrivait le tatouage de mon bras, tu as dit que tu connaissais les symboles."~ */ GOTO 328
  IF ~  GlobalGT("Dakkon_Old_Companions","GLOBAL",0)
~ THEN REPLY #59395 /* ~"Tu as dit qu'autrefois, je voyageais avec quatre autres personnes. Qui étaient-elles ?"~ */ GOTO 329
  IF ~~ THEN REPLY #59396 /* ~"J'avais d'autres questions à la place…"~ */ GOTO 193
  IF ~~ THEN REPLY #59397 /* ~"Peu importe, Dak'kon. Allons-y."~ */ EXIT
END

IF ~~ THEN BEGIN 233 // from: 216.1 216.2 217.1 217.2 230.0
  SAY #59398 /* ~"Non…" Le front de Dak'kon se plisse de douleur et ses yeux te fixent. "Ta parole ne porte pas le poids et ta parole ne me libérera pas. Les mots qui m'asservissent sont miens. Le tourment est mien. Je *sais* au fond de moi que les chaînes demeurent. Les mots ne les libéreront pas."~ */
  IF ~~ THEN REPLY #59399 /* ~"Est-ce qu'il existe un moyen de te libérer ?"~ */ GOTO 234
  IF ~~ THEN REPLY #59400 /* ~"Peu importe, alors. Il y a d'autres choses que j'aimerais *savoir*…"~ */ GOTO 193
  IF ~~ THEN REPLY #59403 /* ~"On en reparlera une autre fois - l'affaire n'est pas close. Allons-y."~ */ JOURNAL #59404 /* ~Dak'kon dit qu'il ne pourra être libéré de sa servitude que quand je mourrai une bonne fois pour toutes. Je ne suis pas sûr que cela soit possible.~ */ EXIT
END

IF ~~ THEN BEGIN 234 // from: 233.0
  SAY #59406 /* ~"Tu dois mourir pour de bon. Mais ton chemin n'est pas celui de la mort. Il n'y a *pas* de solution à ce problème."~ */
  IF ~~ THEN REPLY #59409 /* ~Serment : "Je te promets d'en trouver une, Dak'kon. Je trouverai une solution pour te redonner ta liberté."~ */ DO ~IncrementGlobalOnceEx("GLOBALLawful_Dakkon_2","GLOBALLaw",3)
~ JOURNAL #59416 /* ~J'ai promis à Dak'kon que je trouverais le moyen de le libérer de son serment. Je pensais que cela lui remonterait le moral, mais c'est tout le contraire qui s'est produit.~ */ GOTO 235
  IF ~~ THEN REPLY #59412 /* ~"Je… vois. Il y a d'autres choses que j'aimerais *savoir*…"~ */ GOTO 193
  IF ~~ THEN REPLY #59414 /* ~"On en reparlera une autre fois - l'affaire n'est pas close. Allons-y."~ */ EXIT
END

IF ~~ THEN BEGIN 235 // from: 234.0
  SAY #59425 /* ~La voix de Dak'kon est décousue comme s'il était soudain malade. "*Sache* que tu as ajouté d'autres paroles aux miennes." Il semble souffrir et vos regards se croisent. "Tu nous as désormais tous deux enchaînés."~ */
  IF ~~ THEN REPLY #59426 /* ~"Je… vois. Il y a d'autres choses que j'aimerais *savoir*…"~ */ GOTO 193
  IF ~~ THEN REPLY #59428 /* ~"On en reparlera une autre fois - l'affaire n'est pas close. Allons-y."~ */ EXIT
END

IF ~~ THEN BEGIN 236 // from: 203.0 203.1 204.2
  SAY #59430 /* ~"La cité elle-même est faite de portes. Ces portes conduisent partout."~ */
  IF ~~ THEN REPLY #59432 /* ~"Où sont ces portes ?"~ */ GOTO 237
  IF ~~ THEN REPLY #59433 /* ~"Pourquoi est-ce que tu as dit que la cité était imparfaite, déjà ?"~ */ GOTO 203
  IF ~~ THEN REPLY #59435 /* ~"J'avais d'autres questions sur nos voyages…"~ */ DO ~SetAnimState("Dakkon",ANIM_MIMESTAND)
~ GOTO 232
  IF ~~ THEN REPLY #59437 /* ~"Il y a d'autres choses que j'aimerais *savoir*…"~ */ GOTO 193
  IF ~~ THEN REPLY #59439 /* ~"Je vois. Allons-y."~ */ EXIT
END

IF ~~ THEN BEGIN 237 // from: 236.0
  SAY #59442 /* ~"Elles sont partout dans la cité…" Dak'kon se tait un moment. "On dit que tous les recoins de la cité de Sigil cachent une porte qui mène ailleurs."~ */
  IF ~~ THEN REPLY #59445 /* ~"Je ne comprends pas."~ */ GOTO 238
  IF ~~ THEN REPLY #59447 /* ~"Pourquoi est-ce que tu as dit que la cité était imparfaite, déjà ?"~ */ GOTO 203
  IF ~~ THEN REPLY #59450 /* ~"J'avais d'autres questions sur nos voyages…"~ */ DO ~SetAnimState("Dakkon",ANIM_MIMESTAND)
~ GOTO 232
  IF ~~ THEN REPLY #59452 /* ~"Il y a d'autres choses que j'aimerais *savoir*…"~ */ GOTO 193
  IF ~~ THEN REPLY #59455 /* ~"Je vois. Allons-y."~ */ EXIT
END

IF ~~ THEN BEGIN 238 // from: 237.0
  SAY #59456 /* ~"Imagine la porte d'une maison. Enlève cette porte. L'encadrement demeure. L'espace formé par l'encadrement est toujours une porte."~ */
  IF ~~ THEN REPLY #59457 /* ~"Mais c'est juste… une ouverture."~ */ GOTO 239
  IF ~~ THEN REPLY #59459 /* ~"Pourquoi est-ce que tu as dit que la cité était imparfaite, déjà ?"~ */ GOTO 203
  IF ~~ THEN REPLY #59470 /* ~"J'avais d'autres questions sur nos voyages…"~ */ DO ~SetAnimState("Dakkon",ANIM_MIMESTAND)
~ GOTO 232
  IF ~~ THEN REPLY #59463 /* ~"Il y a d'autres choses que j'aimerais *savoir*…"~ */ GOTO 193
  IF ~~ THEN REPLY #59465 /* ~"Je vois. Allons-y."~ */ EXIT
END

IF ~~ THEN BEGIN 239 // from: 238.0
  SAY #59466 /* ~"Beaucoup de ces portes ne sont pas visibles. Tu peux passer à travers elles comme si c'était de l'air et ne pas les *connaître*. Elles sont fermées à ta vue et à ton toucher."~ */
  IF ~~ THEN REPLY #59467 /* ~"Et ces portes invisibles sont *partout* dans Sigil ?"~ */ GOTO 240
  IF ~~ THEN REPLY #59469 /* ~"Pourquoi est-ce que tu as dit que la cité était imparfaite, déjà ?"~ */ GOTO 203
  IF ~~ THEN REPLY #59470 /* ~"J'avais d'autres questions sur nos voyages…"~ */ DO ~SetAnimState("Dakkon",ANIM_MIMESTAND)
~ GOTO 232
  IF ~~ THEN REPLY #59472 /* ~"Il y a d'autres choses que j'aimerais *savoir*…"~ */ GOTO 193
  IF ~~ THEN REPLY #59474 /* ~"Je vois. Allons-y."~ */ EXIT
END

IF ~~ THEN BEGIN 240 // from: 239.0
  SAY #59475 /* ~"On dit que tous les recoins de la cité de Sigil cachent une porte. Certains ne le *savent* pas. Les portes se déplacent. Les portes changent. Les portes disparaissent. Toutes sont verrouillées."~ */
  IF ~~ THEN REPLY #59476 /* ~"Verrouillées ?"~ */ GOTO 241
  IF ~~ THEN REPLY #59477 /* ~"Pourquoi est-ce que tu as dit que la cité était imparfaite, déjà ?"~ */ GOTO 203
  IF ~~ THEN REPLY #59478 /* ~"J'avais d'autres questions sur nos voyages…"~ */ DO ~SetAnimState("Dakkon",ANIM_MIMESTAND)
~ GOTO 232
  IF ~~ THEN REPLY #59479 /* ~"Il y a d'autres choses que j'aimerais *savoir*…"~ */ GOTO 193
  IF ~~ THEN REPLY #59480 /* ~"Je vois. Allons-y."~ */ EXIT
END

IF ~~ THEN BEGIN 241 // from: 240.0
  SAY #59481 /* ~"Les portes sont invisibles tant que tu n'as pas les clefs qui les ouvrent. Lorsque tu auras la clé, les portes se feront *connaître*."~ */
  IF ~~ THEN REPLY #59482 /* ~"Comment sait-on ce qu'est la clé ?"~ */ GOTO 242
  IF ~~ THEN REPLY #59483 /* ~"Pourquoi est-ce que tu as dit que la cité était imparfaite, déjà ?"~ */ GOTO 203
  IF ~~ THEN REPLY #59484 /* ~"J'avais d'autres questions sur nos voyages…"~ */ DO ~SetAnimState("Dakkon",ANIM_MIMESTAND)
~ GOTO 232
  IF ~~ THEN REPLY #59487 /* ~"Il y a d'autres choses que j'aimerais *savoir*…"~ */ GOTO 193
  IF ~~ THEN REPLY #59488 /* ~"Je vois. Allons-y."~ */ EXIT
END

IF ~~ THEN BEGIN 242 // from: 241.0
  SAY #59489 /* ~"Chaque porte a une clé différente. Certaines clés sont *connues*, d'autres ne sont pas *connues*."~ */
  IF ~~ THEN REPLY #59491 /* ~"À quoi ressemblent ces clés ?"~ */ GOTO 243
  IF ~~ THEN REPLY #59492 /* ~"Pourquoi est-ce que tu as dit que la cité était imparfaite, déjà ?"~ */ GOTO 203
  IF ~~ THEN REPLY #59494 /* ~"J'avais d'autres questions sur nos voyages…"~ */ DO ~SetAnimState("Dakkon",ANIM_MIMESTAND)
~ GOTO 232
  IF ~~ THEN REPLY #59495 /* ~"Il y a d'autres choses que j'aimerais *savoir*…"~ */ GOTO 193
  IF ~~ THEN REPLY #59497 /* ~"Je vois. Allons-y."~ */ EXIT
END

IF ~~ THEN BEGIN 243 // from: 242.0
  SAY #59498 /* ~"Il y a autant de clés que de portes. Les clés ne sont pas toujours des choses métalliques. Les clés peuvent être le choc de deux épées, une goutte de sang tirée de la langue d'un homme mourant, le souvenir d'un amour passé ou un juron hurlé au ciel. Lorsque la clé et la porte s'accordent, la porte apparaît."~ */
  IF ~~ THEN REPLY #59500 /* ~"Ça doit être difficile de trouver toutes ces clés et ces portes."~ */ GOTO 244
  IF ~~ THEN REPLY #59501 /* ~"Pourquoi est-ce que tu as dit que la cité était imparfaite, déjà ?"~ */ GOTO 203
  IF ~~ THEN REPLY #59503 /* ~"J'avais d'autres questions sur nos voyages…"~ */ DO ~SetAnimState("Dakkon",ANIM_MIMESTAND)
~ GOTO 232
  IF ~~ THEN REPLY #59504 /* ~"Il y a d'autres choses que j'aimerais *savoir*…"~ */ GOTO 193
  IF ~~ THEN REPLY #59506 /* ~"Je vois. Allons-y."~ */ EXIT
END

IF ~~ THEN BEGIN 244 // from: 243.0
  SAY #59507 /* ~"Une telle tâche a déjà été tentée, mais jamais menée à bien. Les portes évoluent avec la cité. Rien de ce qui est *connu* ne le reste bien longtemps."~ */
  IF ~~ THEN REPLY #59508 /* ~"Pourquoi est-ce que tu as dit que la cité était imparfaite, déjà ?"~ */ GOTO 203
  IF ~~ THEN REPLY #59509 /* ~"J'avais d'autres questions sur nos voyages…"~ */ DO ~SetAnimState("Dakkon",ANIM_MIMESTAND)
~ GOTO 232
  IF ~~ THEN REPLY #59510 /* ~"Il y a d'autres choses que j'aimerais *savoir*…"~ */ GOTO 193
  IF ~~ THEN REPLY #59511 /* ~"Je vois. Allons-y."~ */ EXIT
END

IF ~~ THEN BEGIN 245 // from: 231.1
  SAY #59512 /* ~"L'existence de toutes les choses, qu'elles soient structurelles ou charnelles, est définie par leur propre *connaissance*."~ */
  IF ~~ THEN REPLY #59513 /* ~"Et si un homme ne se connaît pas lui-même ?"~ */ GOTO 246
  IF ~~ THEN REPLY #59514 /* ~"Je vois. J'avais d'autres questions sur les githzeraïs…"~ */ DO ~SetAnimState("Dakkon",ANIM_MIMESTAND)
~ GOTO 231
  IF ~~ THEN REPLY #59517 /* ~"Il y a d'autres choses que j'aimerais *savoir*…"~ */ GOTO 193
  IF ~~ THEN REPLY #59518 /* ~"Je vois. Allons-y."~ */ EXIT
END

IF ~~ THEN BEGIN 246 // from: 245.0
  SAY #59520 /* ~"Lorsqu'un esprit ne se *connaît* pas lui-même, il est imparfait. Lorsque l'esprit est imparfait, l'homme est imparfait. Lorsque l'homme est imparfait, ce qu'il touche est imparfait." Dak'kon fait une pause. "On dit que ce qu'un homme imparfait voit, ses mains le cassent."~ */
  IF ~  GlobalLT("Dakkon_Teach","GLOBAL",19)
~ THEN REPLY #59521 /* ~"Est-ce que tu te connais toi-même ?"~ */ DO ~SetAnimState("Dakkon",ANIM_MIMESTAND)
~ GOTO 247
  IF ~~ THEN REPLY #59522 /* ~"Je vois. J'avais d'autres questions sur les githzeraïs…"~ */ DO ~SetAnimState("Dakkon",ANIM_MIMESTAND)
~ GOTO 231
  IF ~~ THEN REPLY #59523 /* ~"Il y a d'autres choses que j'aimerais *savoir*…"~ */ GOTO 193
  IF ~~ THEN REPLY #59524 /* ~"Je vois. Allons-y."~ */ EXIT
END

IF ~~ THEN BEGIN 247 // from: 246.0
  SAY #59525 /* ~Dak'kon se tait. Ses yeux noir charbon reprennent une certaine distance comme tu l'avais remarqué la première fois que tu l'avais rencontré.~ */
  IF ~~ THEN REPLY #59528 /* ~"Je répète ma question : est-ce que tu te connais toi-même ?"~ */ GOTO 248
  IF ~~ THEN REPLY #59529 /* ~"J'avais d'autres questions sur les githzeraïs…"~ */ DO ~SetAnimState("Dakkon",ANIM_MIMESTAND)
~ GOTO 231
  IF ~~ THEN REPLY #59531 /* ~"Peu importe. Il y a d'autres choses que j'aimerais *savoir*…"~ */ GOTO 193
  IF ~~ THEN REPLY #59532 /* ~"On en reparlera une autre fois. Allons-y."~ */ EXIT
END

IF ~~ THEN BEGIN 248 // from: 247.0
  SAY #59534 /* ~Lorsque Dak'kon se remet à parler, ses paroles retentissent comme une grosse pierre qui tomberait dans un précipice. On dirait qu'il force les mots à sortir de sa poitrine. "Ma *volonté* est que tu ne *connaisses* pas cela."~ */
  IF ~~ THEN REPLY #59535 /* ~"J'ai peut-être été trop aimable en formulant ça sous forme de question : dis-le-moi."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Dakkon_2","GLOBALGood",-1)
~ GOTO 249
  IF ~~ THEN REPLY #59536 /* ~"Très bien. J'avais d'autres questions sur les githzeraïs…"~ */ DO ~SetAnimState("Dakkon",ANIM_MIMESTAND)
~ GOTO 231
  IF ~~ THEN REPLY #59538 /* ~"Très bien. Il y a d'autres choses que j'aimerais *savoir*…"~ */ GOTO 193
  IF ~~ THEN REPLY #59539 /* ~"Je vois. Allons-y."~ */ EXIT
END

IF ~~ THEN BEGIN 249 // from: 248.0
  SAY #59541 /* ~Les paroles prononcées par Dak'kon sont hachées, les mots transportés un à un. "Il… m'est arrivé de ne pas me *connaître* moi-même."~ */
  IF ~~ THEN REPLY #59543 /* ~"Pourquoi ?"~ */ GOTO 250
END

IF ~~ THEN BEGIN 250 // from: 249.0
  SAY #59545 /* ~La voix de Dak'kon est réduite à un simple murmure qui te fait penser au sable qui s'écoule. "Je n'en *connais* pas la raison. Je *sais* que cela s'est produit, mais j'ignore quand, de même que j'en ignore le pourquoi… ou comment me *connaître* moi-même de nouveau."~ */
  IF ~~ THEN REPLY #59546 /* ~"Je vois… J'avais d'autres questions sur les githzeraïs…"~ */ DO ~SetAnimState("Dakkon",ANIM_MIMESTAND)
~ GOTO 231
  IF ~~ THEN REPLY #59548 /* ~"Peu importe, alors. Il y a d'autres choses que j'aimerais *savoir*…"~ */ GOTO 193
  IF ~~ THEN REPLY #59550 /* ~"On en reparlera une autre fois. Allons-y."~ */ EXIT
END

IF ~~ THEN BEGIN 251 // from: 199.0 231.2
  SAY #59551 /* ~"C'est une lame de *karach*, un objet qui permet aux autres de *connaître* le rang de l'utilisateur."~ */
  IF ~~ THEN REPLY #59552 /* ~"*Karach* ? Qu'est-ce que ça veut dire ?"~ */ GOTO 254
  IF ~~ THEN REPLY #59554 /* ~"Elle est faite d'un métal étrange… Ses va-et-vient sont presque hypnotiques."~ */ GOTO 254
  IF ~~ THEN REPLY #59555 /* ~"Elle désigne quel rang ?"~ */ GOTO 252
  IF ~~ THEN REPLY #59556 /* ~"J'avais d'autres questions sur les githzeraïs…"~ */ DO ~SetAnimState("Dakkon",ANIM_MIMESTAND)
~ GOTO 231
  IF ~~ THEN REPLY #59557 /* ~"Je vois.  Il y a d'autres choses que j'aimerais *savoir*…"~ */ GOTO 193
  IF ~~ THEN REPLY #59559 /* ~"On en reparlera une autre fois. Allons-y."~ */ EXIT
END

IF ~~ THEN BEGIN 252 // from: 251.2 256.0
  SAY #59561 /* ~"La lame est un symbole porté par les *zerths*. Le *zerth* est celui qui *connaît* les enseignements de Zerthimon. En *connaissant* les enseignements de Zerthimon, il se *connaît* lui-même."~ */
  IF ~~ THEN REPLY #59563 /* ~"Zerthimon ?"~ */ GOTO 253
  IF ~~ THEN REPLY #59564 /* ~"De quoi est faite cette lame déjà ?"~ */ GOTO 254
  IF ~~ THEN REPLY #59565 /* ~"J'avais d'autres questions sur les githzeraïs…"~ */ DO ~SetAnimState("Dakkon",ANIM_MIMESTAND)
~ GOTO 231
  IF ~~ THEN REPLY #59566 /* ~"Je vois.  Il y a d'autres choses que j'aimerais *savoir*…"~ */ GOTO 193
  IF ~~ THEN REPLY #59567 /* ~"On en reparlera une autre fois. Allons-y."~ */ EXIT
END

IF ~~ THEN BEGIN 253 // from: 252.0
  SAY #59569 /* ~"Zerthimon a fondé notre race. Il *connaissait* les githzeraïs avant qu'ils se *connaissent* eux-mêmes. Il a défini le Peuple. Il lui a donné un esprit."~ */
  IF ~~ THEN REPLY #59570 /* ~"De quoi est faite cette lame déjà ?"~ */ GOTO 254
  IF ~~ THEN REPLY #59571 /* ~"J'avais d'autres questions sur les githzeraïs…"~ */ DO ~SetAnimState("Dakkon",ANIM_MIMESTAND)
~ GOTO 231
  IF ~~ THEN REPLY #59572 /* ~"Je vois.  Il y a d'autres choses que j'aimerais *savoir*…"~ */ GOTO 193
  IF ~~ THEN REPLY #59573 /* ~"On en reparlera une autre fois. Allons-y."~ */ EXIT
END

IF ~~ THEN BEGIN 254 // from: 251.0 251.1 252.1 253.0
  SAY #59575 /* ~Dak'kon se tait un instant, comme s'il cherchait ses mots. "Dans ta langue, la traduction la plus proche est 'matière de chaos'. Le Peuple peut la modeler par la force de la pensée."~ */
  IF ~~ THEN REPLY #59576 /* ~"'Le Peuple' ?"~ */ GOTO 255
  IF ~~ THEN REPLY #59577 /* ~"La modeler par la force de la pensée ?"~ */ GOTO 256
  IF ~~ THEN REPLY #59579 /* ~"J'avais d'autres questions sur les githzeraïs…"~ */ DO ~SetAnimState("Dakkon",ANIM_MIMESTAND)
~ GOTO 231
  IF ~~ THEN REPLY #59580 /* ~"Je vois.  Il y a d'autres choses que j'aimerais *savoir*…"~ */ GOTO 193
  IF ~~ THEN REPLY #59581 /* ~"On en reparlera une autre fois. Allons-y."~ */ EXIT
END

IF ~~ THEN BEGIN 255 // from: 254.0
  SAY #59583 /* ~"Les githzeraï."~ */
  IF ~  Global("Dakkon_Githzerai","GLOBAL",0)
~ THEN REPLY #59584 /* ~"C'est quoi, un githzeraï ?"~ */ GOTO 195
  IF ~  Global("Dakkon_Githzerai","GLOBAL",1)
~ THEN REPLY #59586 /* ~"Que sont les githzeraïs déjà ?"~ */ GOTO 198
  IF ~~ THEN REPLY #59587 /* ~"Et tu dis que les githzeraïs peuvent modeler cette *karach*… par la pensée ?"~ */ GOTO 256
  IF ~~ THEN REPLY #59589 /* ~"J'avais d'autres questions sur ton peuple…"~ */ DO ~SetAnimState("Dakkon",ANIM_MIMESTAND)
~ GOTO 231
  IF ~~ THEN REPLY #59591 /* ~"Je vois.  Il y a d'autres choses que j'aimerais *savoir*…"~ */ GOTO 193
  IF ~~ THEN REPLY #59593 /* ~"C'est tout ce que je voulais savoir. Allons-y."~ */ EXIT
END

IF ~~ THEN BEGIN 256 // from: 254.1 255.2
  SAY #59594 /* ~"La lame de *karach* n'est pas façonnée par la chaleur mais par la *connaissance* de soi. C'est un miroir qui reflète la volonté de l'utilisateur à sa surface et sur ses bords. Lorsque l'on se *connaît*, l'épée est forte - plus dure et plus résistante que l'acier. Lorsque l'on ne se *connaît* pas, l'épée est comme de l'eau - informe et faible."~ */
  IF ~~ THEN REPLY #59596 /* ~"Cette lame désigne quel rang ?"~ */ GOTO 252
  IF ~~ THEN REPLY #59597 /* ~"J'avais d'autres questions sur les githzeraïs…"~ */ DO ~SetAnimState("Dakkon",ANIM_MIMESTAND)
~ GOTO 231
  IF ~~ THEN REPLY #59598 /* ~"Je vois.  Il y a d'autres choses que j'aimerais *savoir*…"~ */ GOTO 193
  IF ~~ THEN REPLY #59600 /* ~"C'est tout ce que je voulais savoir. Allons-y."~ */ EXIT
END

IF ~~ THEN BEGIN 257 // from: 318.2
  SAY #59602 /* ~"Mes *connaissances* de l'Art tel que les humains le *connaissent* sont limitées." Dak'kon fait glisser son épée et la place devant lui en décrivant un mouvement circulaire. "Mais j'en *connais* assez. Je te les enseignerai."~ */
  IF ~~ THEN REPLY #59604 /* ~"Très bien…"~ */ DO ~FadeToColor([20.0],0)
Wait(3)
FadeFromColor([20.0],0)
SetNamelessClass(MAGE)
~ GOTO 289
END

IF ~~ THEN BEGIN 258 // from: 232.1
  SAY #59607 /* ~"Je ne le *connais* pas."~ */
  IF ~~ THEN REPLY #59608 /* ~"J'avais d'autres questions sur nos voyages…"~ */ DO ~SetAnimState("Dakkon",ANIM_MIMESTAND)
~ GOTO 232
  IF ~~ THEN REPLY #59613 /* ~"Je vois.  Il y a d'autres choses que j'aimerais *savoir*…"~ */ GOTO 193
  IF ~~ THEN REPLY #59614 /* ~"C'est tout ce que je voulais savoir. Allons-y."~ */ EXIT
END

IF ~~ THEN BEGIN 259 // from: 232.2
  SAY #59615 /* ~"Je n'en *connais* pas l'emplacement."~ */
  IF ~~ THEN REPLY #59616 /* ~"J'avais d'autres questions sur nos voyages…"~ */ DO ~SetAnimState("Dakkon",ANIM_MIMESTAND)
~ GOTO 232
  IF ~~ THEN REPLY #59617 /* ~"Je vois.  Il y a d'autres choses que j'aimerais *savoir*…"~ */ GOTO 193
  IF ~~ THEN REPLY #59618 /* ~"C'est tout ce que je voulais savoir. Allons-y."~ */ EXIT
END

IF ~~ THEN BEGIN 260 // from: 193.6
  SAY #59619 /* ~Le front de Dak'kon se plisse comme s'il avait reçu un coup. "Je ne veux *pas* que l'on parle de cet endroit."~ */
  IF ~~ THEN REPLY #59620 /* ~"Dak'kon, *dis-moi*. C'est quoi, Shra'kt'lor ?"~ */ GOTO 261
  IF ~~ THEN REPLY #59621 /* ~"Peu importe, alors. Il y a d'autres choses que j'aimerais *savoir*…"~ */ GOTO 193
  IF ~~ THEN REPLY #59622 /* ~"Bon, n'en parlons plus. Allons-y."~ */ EXIT
END

IF ~~ THEN BEGIN 261 // from: 260.0
  SAY #59623 /* ~Dak'kon se tait un moment. "*Sache* que c'est l'endroit où je suis mort pour la première fois."~ */
  IF ~~ THEN REPLY #59624 /* ~"Qu'est-ce que c'est que cet endroit ?"~ */ GOTO 262
  IF ~~ THEN REPLY #59625 /* ~"Je vois.  Il y a d'autres choses que j'aimerais *savoir*…"~ */ GOTO 193
  IF ~~ THEN REPLY #59626 /* ~"On en reparlera une autre fois. Allons-y."~ */ EXIT
END

IF ~~ THEN BEGIN 262 // from: 261.0
  SAY #59627 /* ~"C'est une des grandes demeures du Peuple qui a subi de nombreuses blessures au cours de sa vie. Je suis responsable de l'une de ses cicatrices."~ */
  IF ~~ THEN REPLY #59628 /* ~"Qu'est-ce que tu veux dire ?"~ */ GOTO 218
  IF ~~ THEN REPLY #59629 /* ~"Je vois.  Il y a d'autres choses que j'aimerais *savoir*…"~ */ GOTO 193
  IF ~~ THEN REPLY #59630 /* ~"On en reparlera une autre fois. Allons-y."~ */ EXIT
END

IF ~~ THEN BEGIN 263 // from:
  SAY #59631 /* ~TEMP~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 264 // from:
  SAY #59632 /* ~TEMP~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 265 // from:
  SAY #59633 /* ~TEMP~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 266 // from:
  SAY #59634 /* ~TEMP~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 267 // from: 268.0
  SAY #59636 /* ~En prononçant ces mots, tu éprouves une étrange sensation à l'arrière du crâne et ta vue se brouille… Tu respires profondément et tu te reprends. Sans comprendre pourquoi, tu te sens nauséeux, comme si le paysage s'était mis à tourner autour de toi.~ */
  IF ~~ THEN REPLY #59638 /* ~"Comment… est-ce que tu as survécu, Dak'kon ?"~ */ GOTO 269
END

IF ~~ THEN BEGIN 268 // from: 222.0
  SAY #59640 /* ~"En tombant des murs de Shra'kt'lor, *sache* que je me suis brisé. Mon épée s'est troublée et mon esprit s'est divisé. J'ai dérivé sur les mers des Limbes et je voulais sombrer. Je suis resté là, mourant, pendant des jours et mon esprit s'est réveillé divisé."~ */
  IF ~  CheckStatGT(Protagonist,12,WIS)
~ THEN REPLY #59642 /* ~"Comment tu as survécu ?"~ */ DO ~SetAnimState("Dakkon",ANIM_MIMESTAND)
~ JOURNAL #59654 /* ~Quand Dak'kon m'a parlé de Shra'kt'lor, je me suis senti comme étourdi. Je crois que je *sais* quelque chose à propos de ce lieu… mais j'ignore de quoi il s'agit.~ */ GOTO 267
  IF ~  CheckStatLT(Protagonist,13,WIS)
~ THEN REPLY #59647 /* ~"Comment tu as survécu ?"~ */ GOTO 269
  IF ~~ THEN REPLY #59650 /* ~"Je crois que j'en ai assez entendu. Il y a d'autres choses que j'aimerais *savoir*…"~ */ GOTO 193
  IF ~~ THEN REPLY #59652 /* ~"On en reparlera une autre fois. Allons-y."~ */ EXIT
END

IF ~~ THEN BEGIN 269 // from: 267.0 268.1
  SAY #59656 /* ~"J'ai souffert. Alors que la mort me guettait, j'ai réussi à me *connaître*. J'ai survécu. C'est tout."~ */
  IF ~~ THEN REPLY #59658 /* ~"Je vois.  Il y a d'autres choses que j'aimerais *savoir*…"~ */ GOTO 193
  IF ~~ THEN REPLY #59660 /* ~"Bon, n'en parlons plus. Allons-y."~ */ EXIT
END

IF ~~ THEN BEGIN 270 // from: 231.3 271.1 272.1 273.2 274.1 275.1 278.1 279.1 281.0 282.1 285.0
  SAY #59664 /* ~Dak'kon attend.~ */
  IF ~  Global("Know_Githzerai_Speak","GLOBAL",0)
~ THEN REPLY #59666 /* ~"Tu peux m'apprendre à parler comme ton peuple ?"~ */ GOTO 342
  IF ~  Global("Dictionary_Githzerai_Tcha","GLOBAL",1)
~ THEN REPLY #59667 /* ~"C'est quoi le 'choix de T'cha' ?"~ */ GOTO 271
  IF ~  Global("Dictionary_Githzerai_Tcha","GLOBAL",2)
~ THEN REPLY #59668 /* ~"C'est quoi le 'choix de T'cha' déjà ?"~ */ GOTO 273
  IF ~  GlobalGT("Dictionary_Githzerai_Katznii","GLOBAL",0)
~ THEN REPLY #59669 /* ~"C'est quoi 'K'atzn'ii-à-la-Porte' ?"~ */ GOTO 279
  IF ~  GlobalGT("Dictionary_Githzerai_Achali","GLOBAL",0)
~ THEN REPLY #59672 /* ~"C'est quoi 'Ach'ali-La-Noyée' ?"~ */ DO ~SetGlobal("Dictionary_Githzerai_Achali","GLOBAL",2)
~ GOTO 282
  IF ~~ THEN REPLY #59675 /* ~"En fait, j'avais d'autres questions sur les githzeraïs…"~ */ DO ~SetAnimState("Dakkon",ANIM_MIMESTAND)
~ GOTO 231
  IF ~~ THEN REPLY #59676 /* ~"Peu importe. Il y a d'autres choses que j'aimerais *savoir*…"~ */ GOTO 193
  IF ~~ THEN REPLY #59677 /* ~"On discutera du langage une autre fois. Allons-y."~ */ EXIT
END

IF ~~ THEN BEGIN 271 // from: 270.1
  SAY #59678 /* ~Le front de Dak'kon se plisse et ses yeux se froncent. "J'aimerais *savoir* comment tu *connais* cette expression."~ */
  IF ~~ THEN REPLY #59679 /* ~"Tu l'as utilisée quand on a rencontré ce githzeraï. Je voudrais savoir ce que tu voulais dire par là."~ */ GOTO 272
  IF ~~ THEN REPLY #59680 /* ~"Laisse tomber. J'avais d'autres questions sur le langage…"~ */ DO ~SetAnimState("Dakkon",ANIM_MIMESTAND)
~ GOTO 270
  IF ~~ THEN REPLY #59681 /* ~"Ça n'a pas d'importance. J'avais d'autres questions sur les githzeraïs…"~ */ DO ~SetAnimState("Dakkon",ANIM_MIMESTAND)
~ GOTO 231
  IF ~~ THEN REPLY #59682 /* ~"Peu importe. Il y a d'autres choses que j'aimerais *savoir*…"~ */ GOTO 193
  IF ~~ THEN REPLY #59683 /* ~"On parlera de ça une autre fois. Allons-y."~ */ EXIT
END

IF ~~ THEN BEGIN 272 // from: 271.0
  SAY #59684 /* ~"C'est une expression qui a de *multiples* sens."~ */
  IF ~~ THEN REPLY #59685 /* ~"Donne-m'en un."~ */ DO ~SetGlobal("Dictionary_Githzerai_Tcha","GLOBAL",2)
~ GOTO 273
  IF ~~ THEN REPLY #59686 /* ~"J'avais d'autres questions sur le langage…"~ */ DO ~SetAnimState("Dakkon",ANIM_MIMESTAND)
~ GOTO 270
  IF ~~ THEN REPLY #59687 /* ~"Ça n'a pas d'importance. J'avais d'autres questions sur les githzeraïs…"~ */ DO ~SetAnimState("Dakkon",ANIM_MIMESTAND)
~ GOTO 231
  IF ~~ THEN REPLY #59688 /* ~"Peu importe, alors. Il y a d'autres choses que j'aimerais *savoir*…"~ */ GOTO 193
  IF ~~ THEN REPLY #59689 /* ~"On parlera de ça une autre fois. Allons-y."~ */ EXIT
END

IF ~~ THEN BEGIN 273 // from: 270.2 272.0
  SAY #59690 /* ~"Le 'choix de T'cha' est celui d'une personne qui n'a en fait pas le choix d'agir."~ */
  IF ~  Global("Dakkon_Slave","GLOBAL",0)
~ THEN REPLY #59691 /* ~"Alors, quand je t'ai demandé de parler au githzeraï, tu n'avais pas d'autre choix que de le faire ? Pourquoi ?"~ */ GOTO 274
  IF ~  Global("Dakkon_Slave","GLOBAL",1)
~ THEN REPLY #59692 /* ~"Alors, quand je t'ai demandé de parler au githzeraï, tu n'avais pas d'autre choix que de le faire ? Parce que tu es mon esclave ?"~ */ GOTO 275
  IF ~~ THEN REPLY #59693 /* ~"J'avais d'autres questions sur le langage…"~ */ DO ~SetAnimState("Dakkon",ANIM_MIMESTAND)
~ GOTO 270
  IF ~~ THEN REPLY #59694 /* ~"Ça n'a pas d'importance. J'avais d'autres questions sur les githzeraïs…"~ */ DO ~SetAnimState("Dakkon",ANIM_MIMESTAND)
~ GOTO 231
  IF ~~ THEN REPLY #59695 /* ~"Très bien. Il y a d'autres choses que j'aimerais *savoir*…"~ */ GOTO 193
  IF ~~ THEN REPLY #59696 /* ~"C'est tout ce que je voulais savoir. Allons-y."~ */ EXIT
END

IF ~~ THEN BEGIN 274 // from: 273.0
  SAY #59697 /* ~L'épée de Dak'kon ondule et ses bords deviennent gris et ternes. Son visage se crispe et il parle entre ses dents. "Je n'ai pas *envie* de parler de cela."~ */
  IF ~~ THEN REPLY #59698 /* ~"Je veux que tu en parles… En fait, tu as dit plusieurs choses intéressantes au cours de cette conversation."~ */ GOTO 275
  IF ~~ THEN REPLY #59699 /* ~"J'avais d'autres questions sur le langage…"~ */ DO ~SetAnimState("Dakkon",ANIM_MIMESTAND)
~ GOTO 270
  IF ~~ THEN REPLY #59700 /* ~"Alors, peu importe. J'avais d'autres questions sur les githzeraïs…"~ */ DO ~SetAnimState("Dakkon",ANIM_MIMESTAND)
~ GOTO 231
  IF ~~ THEN REPLY #59701 /* ~"Très bien. Il y a d'autres choses que j'aimerais *savoir*…"~ */ GOTO 193
  IF ~~ THEN REPLY #59702 /* ~"Alors, n'en parlons plus. Allons-y."~ */ EXIT
END

IF ~~ THEN BEGIN 275 // from: 273.1 274.0
  SAY #59703 /* ~"*Sache* que ta volonté est ma *volonté*. Lorsque tu parles, *sache* que je dois t'entendre. *Sache* que tes paroles peuvent immobiliser mon épée ou la guider vers la gorge de quelqu'un."~ */
  IF ~  Global("Dakkon_Slave","GLOBAL",0)
~ THEN REPLY #59704 /* ~"Quoi ? Mais pourquoi ?"~ */ DO ~SetGlobal("Dakkon_Slave","GLOBAL",1)
GiveExperience(Protagonist,3000)
~ GOTO 276
  IF ~~ THEN REPLY #59708 /* ~"J'avais d'autres questions sur le langage…"~ */ DO ~SetAnimState("Dakkon",ANIM_MIMESTAND)
~ GOTO 270
  IF ~~ THEN REPLY #59709 /* ~"J'avais d'autres questions sur les githzeraïs…"~ */ DO ~SetAnimState("Dakkon",ANIM_MIMESTAND)
~ GOTO 231
  IF ~~ THEN REPLY #59713 /* ~"N'en parlons plus. Il y a d'autres choses que j'aimerais *savoir*…"~ */ GOTO 193
  IF ~~ THEN REPLY #59714 /* ~"Je ne veux pas en entendre davantage. Allons-y."~ */ EXIT
END

IF ~~ THEN BEGIN 276 // from: 275.0
  SAY #59716 /* ~Dak'kon semble t'ignorer, comme si ton regard lui était insoutenable. "Ta voie est ma voie. Je suis enchaîné à toi."~ */
  IF ~~ THEN REPLY #59718 /* ~"Tu es mon esclave ?"~ */ DO ~SetAnimState("Dakkon",ANIM_MIMESTAND)
~ GOTO 277
END

IF ~~ THEN BEGIN 277 // from: 276.0
  SAY #59720 /* ~Au mot 'esclave', le visage de Dak'kon se tord de douleur comme s'il était frappé… comme si le mot était une dague, le blessant au cœur de sa souffrance.~ */
  IF ~~ THEN REPLY #59721 /* ~"Mais… pourquoi, Dak'kon ?"~ */ GOTO 278
END

IF ~~ THEN BEGIN 278 // from: 277.0
  SAY #59723 /* ~"*Sache* que c'est… une longue histoire et *sache* que rien n'est gagné en la racontant."~ */
  IF ~~ THEN REPLY #59725 /* ~"J'aimerais l'entendre."~ */ JOURNAL #59286 /* ~Dak'kon m'a expliqué la nature de son esclavage. Quand je lui ai sauvé la vie, il a prêté serment de me servir jusqu'à la mort. Mais il ignorait que j'étais immortel, et il a donc promis de me servir éternellement.~ */ GOTO 215
  IF ~~ THEN REPLY #59727 /* ~"Bon, peu importe. J'avais d'autres questions sur le langage…"~ */ DO ~SetAnimState("Dakkon",ANIM_MIMESTAND)
~ GOTO 270
  IF ~~ THEN REPLY #59728 /* ~"Très bien, alors. J'avais d'autres questions sur les githzeraïs…"~ */ DO ~SetAnimState("Dakkon",ANIM_MIMESTAND)
~ GOTO 231
  IF ~~ THEN REPLY #59731 /* ~"Peu importe, alors. Il y a d'autres choses que j'aimerais *savoir*…"~ */ GOTO 193
  IF ~~ THEN REPLY #59732 /* ~"Alors, n'en parlons plus. Allons-y."~ */ EXIT
END

IF ~~ THEN BEGIN 279 // from: 270.3
  SAY #59755 /* ~"*Sache* ceci : lorsque 'K'atzn'ii-à-la Porte' est prononcé, l'interlocuteur te dit qu'en demandant, tu répondras à tes questions et à celles de la personne à qui tu parles."~ */
  IF ~~ THEN REPLY #59756 /* ~"Qu'est-ce que ça veut dire ? Qui est 'K'atzn'ii' ?"~ */ DO ~SetGlobal("Dictionary_Githzerai_Katznii","GLOBAL",2)
~ GOTO 280
  IF ~~ THEN REPLY #59758 /* ~"J'avais d'autres questions sur le langage…"~ */ DO ~SetAnimState("Dakkon",ANIM_MIMESTAND)
~ GOTO 270
  IF ~~ THEN REPLY #59759 /* ~"Je vois. J'avais d'autres questions sur les githzeraïs…"~ */ GOTO 231
  IF ~~ THEN REPLY #59760 /* ~"Très bien. Il y a d'autres choses que j'aimerais *savoir*…"~ */ GOTO 193
  IF ~~ THEN REPLY #59763 /* ~"Compris. Allons-y."~ */ EXIT
END

IF ~~ THEN BEGIN 280 // from: 279.0
  SAY #59912 /* ~"K'atzn'ii faisait partie du Peuple. On dit qu'elle ne se *connaissait* pas. Plutôt que de chercher à se *connaître*, elle a choisi de mettre le Peuple à l'épreuve. Elle franchissait les portes des cités pour interroger le Peuple et tester sa volonté. Les réponses que lui donnait le Peuple lui ont permis de *connaître* la nature du Peuple qui vivait au-delà de ses murs."~ */
  IF ~~ THEN GOTO 281
END

IF ~~ THEN BEGIN 281 // from: 280.0
  SAY #59914 /* ~"Mais K'aztn'ii ne *savait* pas que les questions qu'elle posait au Peuple lui permettaient aussi de la *connaître*. Ils ont vu son cœur et ils ont *su* que cela ne l'aiderait pas à vivre parmi eux. C'est pour cela qu'elle restait toujours à la porte. C'est une leçon qui nous apprend que nos questions peuvent *révéler* notre volonté."~ */
  IF ~~ THEN REPLY #59915 /* ~"J'avais d'autres questions sur le langage…"~ */ DO ~SetAnimState("Dakkon",ANIM_MIMESTAND)
~ GOTO 270
  IF ~~ THEN REPLY #59916 /* ~"Je vois. J'avais d'autres questions sur les githzeraïs…"~ */ DO ~SetAnimState("Dakkon",ANIM_MIMESTAND)
~ GOTO 231
  IF ~~ THEN REPLY #59917 /* ~"Très bien. Il y a d'autres choses que j'aimerais *savoir*…"~ */ GOTO 193
  IF ~~ THEN REPLY #59918 /* ~"Compris. Allons-y."~ */ EXIT
END

IF ~~ THEN BEGIN 282 // from: 270.4
  SAY #59919 /* ~"*Sache* ceci : lorsque l'on dit 'Ach'ali-La-Noyée', l'interlocuteur te dit que la réponse à ta question n'a pas de but. *Sache* que cela traduit l'intention tacite que la question soit plus spécifique."~ */
  IF ~~ THEN REPLY #59920 /* ~"Qui était Ach'ali ?"~ */ GOTO 283
  IF ~~ THEN REPLY #59921 /* ~"J'avais d'autres questions sur le langage…"~ */ DO ~SetAnimState("Dakkon",ANIM_MIMESTAND)
~ GOTO 270
  IF ~~ THEN REPLY #59922 /* ~"Je vois. J'avais d'autres questions sur les githzeraïs…"~ */ DO ~SetAnimState("Dakkon",ANIM_MIMESTAND)
~ GOTO 231
  IF ~~ THEN REPLY #59923 /* ~"Très bien. Il y a d'autres choses que j'aimerais *savoir*…"~ */ GOTO 193
  IF ~~ THEN REPLY #59924 /* ~"Compris. Allons-y."~ */ EXIT
END

IF ~~ THEN BEGIN 283 // from: 282.0
  SAY #59925 /* ~"Dans notre Plan natal des Limbes, nous devons façonner le plan avec nos esprits, sinon le chaos nous emportera. Ach'ali faisait partie du Peuple qui ne se *connaissait* pas. Le temps l'a surpris après qu'elle se soit perdue dans le chaos du plan. Elle ne *savait* pas comment revenir chez elle. Alors elle a créé une petite île avec ses pensées et elle a attendu."~ */
  IF ~~ THEN GOTO 284
END

IF ~~ THEN BEGIN 284 // from: 283.0
  SAY #59926 /* ~"Elle a attendu et, ce faisant, elle a rencontré un voyageur qui nageait dans la mer des Limbes. On dit qu'Ach'ali a interpellé le voyageur pour lui demander comment rentrer chez elle. Elle n'a posé qu'une seule question : 'Tu *connais* le chemin pour rentrer chez moi ?' Mais elle a aussi demandé : 'Qu'est-ce que tu *sais* sur le plan ?'"~ */
  IF ~~ THEN GOTO 285
END

IF ~~ THEN BEGIN 285 // from: 284.0
  SAY #59927 /* ~"Le voyageur en *savait* beaucoup et dévoila de nouvelles choses à Ach'ali. Ses questions fusèrent, se nourrissant des réponses, jusqu'à ce qu'elle ne sache plus où elle se trouvait et qu'elle oublie de se concentrer. La petite île qu'elle avait créée sombra dans le chaos et elle se noya. Cette leçon souligne le danger de poser des questions sans but."~ */
  IF ~~ THEN REPLY #59928 /* ~"J'avais d'autres questions sur le langage…"~ */ DO ~SetAnimState("Dakkon",ANIM_MIMESTAND)
~ GOTO 270
  IF ~~ THEN REPLY #59929 /* ~"Je vois. J'avais d'autres questions sur les githzeraïs…"~ */ DO ~SetAnimState("Dakkon",ANIM_MIMESTAND)
~ GOTO 231
  IF ~~ THEN REPLY #59930 /* ~"Très bien. Il y a d'autres choses que j'aimerais *savoir*…"~ */ GOTO 193
  IF ~~ THEN REPLY #59931 /* ~"Compris. Allons-y."~ */ EXIT
END

IF ~~ THEN BEGIN 286 // from: 318.1
  SAY #59932 /* ~L'épée de Dak'kon glisse de son épaule jusqu'à sa main comme de l'eau et ses contours affichent de dangereux reflets. "Nous devrons montrer l'acier sans colère. Tu *connaîtras* de nouveau le chemin des armes."~ */
  IF ~~ THEN REPLY #59933 /* ~"Très bien…"~ */ DO ~FadeToColor([20.0],0)
Wait(3)
FadeFromColor([20.0],0)
SetNamelessClass(FIGHTER)
SetAnimState("Dakkon",ANIM_MIMESTANCETOSTAND)
~ GOTO 287
END

IF ~~ THEN BEGIN 287 // from: 286.0
  SAY #59934 /* ~À la fin de ta séance d'entraînement, tu parviens aisément à te glisser dans la peau d'un guerrier. Dak'kon fait glisser son épée pour la faire reposer sur son épaule. "Tu apprends vite. Quand la guerre éclatera, tu seras prêt."~ */
  IF ~~ THEN REPLY #59935 /* ~"Très bien. Il y a d'autres choses que j'aimerais *savoir*…"~ */ GOTO 193
  IF ~~ THEN REPLY #59936 /* ~"Très bien. Allons-y."~ */ EXIT
END

IF ~~ THEN BEGIN 288 // from: 318.3
  SAY #59937 /* ~L'épée de Dak'kon glisse et il la place devant lui en décrivant un mouvement circulaire. "Nous réciterons les enseignements. Tu *connaîtras* de nouveau les chemins de l'Art."~ */
  IF ~~ THEN REPLY #59938 /* ~"Très bien…"~ */ DO ~FadeToColor([20.0],0)
Wait(3)
FadeFromColor([20.0],0)
SetNamelessClass(MAGE)
~ GOTO 289
END

IF ~~ THEN BEGIN 289 // from: 257.0 288.0
  SAY #59939 /* ~À la fin de ta séance d'apprentissage, tu parviens aisément à te glisser dans la peau d'un mage. Dak'kon hoche la tête. "Tu apprends vite. Tu es maintenant prêt à invoquer ta volonté contre tes ennemis."~ */
  IF ~~ THEN REPLY #59940 /* ~"Très bien. Il y a d'autres choses que j'aimerais *savoir*…"~ */ GOTO 193
  IF ~~ THEN REPLY #59941 /* ~"Très bien. Allons-y."~ */ EXIT
END

IF ~~ THEN BEGIN 290 // from: 318.4
  SAY #59942 /* ~"*Sache* que le chemin du Peuple n'est pas celui de l'Art que tu viens d'apprendre. Ce n'est pas l'énergie qui donne la force. C'est en se *connaissant* qu'on devient fort. Les enseignements de Zerthimon évoquent ce genre de choses."~ */
  IF ~~ THEN REPLY #59943 /* ~"Est-ce que tu pourrais m'enseigner la Voie de Zerthimon, Dak'kon ?"~ */ GOTO 291
  IF ~~ THEN REPLY #59944 /* ~"Il y avait d'autres choses que je voulais *savoir*, Dak'kon…"~ */ GOTO 193
  IF ~~ THEN REPLY #59945 /* ~"Je vois. Allons-y."~ */ EXIT
END

IF ~~ THEN BEGIN 291 // from: 290.0
  SAY #59946 /* ~"Tu *sais* ce que tu as demandé ?" La texture de l'épée de Dak'kon change jusqu'à devenir comme de la pierre. "Pour franchir la voie de Zerthimon, tu dois *connaître* le Peuple. La *connaissance* de telles choses est difficile pour une personne extérieure au Peuple. Certaines personnes qui n'appartiennent pas au Peuple ont entendu la Voie de Zerthimon, mais elles ne *connaissent* pas la Voie."~ */
  IF ~  CheckStatGT(Protagonist,12,WIS)
~ THEN REPLY #59947 /* ~Dak'kon, j'aimerais en *savoir* plus sur le Peuple et sur les enseignements de Zerthimon. Je crois qu'il y a de la sagesse à tirer de toutes ces choses."~ */ DO ~SetGlobal("Dakkon_Teach","GLOBAL",1)
~ JOURNAL #59744 /* ~Dak'kon a accepté de m'enseigner la Voie de Zerthimon. Il m'a ouvert l'accès au Cercle Ininterrompu avant de me dire d'étudier et d'apprendre l'histoire de son peuple.~ */ GOTO 293
  IF ~~ THEN REPLY #59948 /* ~"Si tu me l'enseignes, j'apprendrai."~ */ GOTO 292
  IF ~~ THEN REPLY #59949 /* ~"Il y avait d'autres choses que je voulais *savoir*, Dak'kon…"~ */ GOTO 193
  IF ~~ THEN REPLY #59950 /* ~"Peu importe alors. Allons-y."~ */ EXIT
END

IF ~~ THEN BEGIN 292 // from: 291.1
  SAY #59951 /* ~"Je *sais* comment les humains en sont venus à connaître l'Art. Ils connaissent l'Art à travers les manuscrits, les sorts et les livres. Une telle division n'est *pas* la Voie de Zerthimon. Tu ne peux pas apprendre des bribes et ignorer l'ensemble." Dak'kon te regarde en silence ; la surface de son épée a retrouvé son éclat. "*Sache* que c'est une voie qui nécessite de la concentration. Si ton esprit est divisé, si tu ne *connais* pas le sens de la Voie, ta volonté est perdue."~ */
  IF ~~ THEN REPLY #59952 /* ~"Je veux toujours apprendre."~ */ DO ~SetGlobal("Dakkon_Teach","GLOBAL",1)
~ JOURNAL #59744 /* ~Dak'kon a accepté de m'enseigner la Voie de Zerthimon. Il m'a ouvert l'accès au Cercle Ininterrompu avant de me dire d'étudier et d'apprendre l'histoire de son peuple.~ */ GOTO 293
  IF ~~ THEN REPLY #59953 /* ~"Il y avait d'autres choses que je voulais *savoir*, Dak'kon…"~ */ GOTO 193
  IF ~~ THEN REPLY #59954 /* ~"Peu importe alors. Allons-y."~ */ EXIT
END

IF ~~ THEN BEGIN 293 // from: 291.0 292.0
  SAY #59955 /* ~"*Sache* que j'ai entendu tes paroles et que je les testerai. Pour apprendre, tu dois *connaître* le Peuple. Pour *connaître* le Peuple, tu dois *connaître* le Cercle Ininterrompu de Zerthimon." Dak'kon lève le disque en pierre et ses doigts qui ressemblent à des pattes d'araignée s'y agrippent. Un *déclic* se fait entendre et les plaques du Cercle prennent une nouvelle configuration. Il inverse le mouvement, scellant la pierre. "*Sache* que le Premier Cercle de Zerthimon t'est ouvert. Étudie-le et j'écouterai alors tes paroles."~ */
  IF ~~ THEN REPLY #59956 /* ~"Je lirai le Premier Cercle, alors. Entre-temps, il y a des choses que j'aimerais *savoir*…"~ */ GOTO 193
  IF ~~ THEN REPLY #59957 /* ~"Très bien. Je l'examinerai et on en reparlera."~ */ EXIT
END

IF ~~ THEN BEGIN 294 // from: 318.6
  SAY #59958 /* ~"Comment en es-tu arrivé à *savoir* ?"~ */
  IF ~  CheckStatGT(Protagonist,11,WIS)
Global("Dakkon_Teach","GLOBAL",2)
~ THEN REPLY #59959 /* ~"La force réside dans la connaissance de soi. J'ai appris que ceux qui ne se *connaissaient* pas étaient perdus. Qu'ils devenaient les outils d'autrui."~ */ DO ~SetGlobal("Dakkon_Teach","GLOBAL",3)
GiveExperience(Protagonist,300)
~ JOURNAL #59743 /* ~J'ai réussi à comprendre le Premier Cercle de Zerthimon en réfléchissant vraiment au sens du texte. En échange, Dak'kon m'a ouvert l'accès au Deuxième Cercle. J'ai l'impression qu'il a l'intention de m'enseigner la Voie de Zerthimon cercle par cercle.~ */ GOTO 296
  IF ~  Global("Dakkon_Teach","GLOBAL",2)
~ THEN REPLY #59960 /* ~"J'ai appris que ton peuple était autrefois esclave des *illithids*. Il semble qu'ils aient commis de nombreux crimes contre ton peuple."~ */ JOURNAL #59742 /* ~Apparemment, je ne comprend pas le sens du Premier Cercle du Cercle Ininterrompu de Zerthimon. C'est du moins ce que me dit Dak'kon. Je crois que le sens du texte dépasse ce qui est inscrit dans la roche. Sans doute vais-je devoir réfléchir au sens de cet enseignement avant de comprendre enfin la Voie de Zerthimon.~ */ GOTO 295
  IF ~  CheckStatGT(Protagonist,11,WIS)
Global("Dakkon_Teach","GLOBAL",4)
~ THEN REPLY #59961 /* ~"J'ai appris que ne pas *connaître* quelque chose pouvait être un outil, comme la chair et l'acier, si en le découvrant, on essayait de *connaître* sa nature et son origine."~ */ DO ~SetGlobal("Dakkon_Teach","GLOBAL",5)
GiveExperience(Protagonist,600)
GiveItemCreate("Circle02",Protagonist,1,0,0)
~ GOTO 297
  IF ~  Global("Dakkon_Teach","GLOBAL",4)
~ THEN REPLY #59962 /* ~"J'ai appris que tout en travaillant les champs des *illithids*, Zerthimon avait appris la nature de l'acier et comment l'utiliser pour vaincre les *illithids*."~ */ JOURNAL #67782 /* ~Apparemment, je n'ai pas compris ce que signifiait le cercle suivant du Cercle Ininterrompu de Zerthimon. Du moins, c'est ce que dit Dak'kon. Je crois que le sens exact du texte dépasse l'inscription gravée dans la pierre. Sans doute devrai-je faire appel à ma propre sagesse si je veux un jour comprendre la Voie de Zerthimon.~ */ GOTO 295
  IF ~  CheckStatGT(Protagonist,13,WIS)
Global("Dakkon_Teach","GLOBAL",6)
~ THEN REPLY #59963 /* ~"Endure. En endurant, on devient fort."~ */ DO ~SetGlobal("Dakkon_Teach","GLOBAL",7)
GiveExperience(Protagonist,900)
SetAnimState("Dakkon",ANIM_MIMESTAND)
~ GOTO 299
  IF ~  Global("Dakkon_Teach","GLOBAL",6)
~ THEN REPLY #59964 /* ~"J'ai appris que parfois, un chef devait souffrir pour protéger ses objectifs."~ */ JOURNAL #67782 /* ~Apparemment, je n'ai pas compris ce que signifiait le cercle suivant du Cercle Ininterrompu de Zerthimon. Du moins, c'est ce que dit Dak'kon. Je crois que le sens exact du texte dépasse l'inscription gravée dans la pierre. Sans doute devrai-je faire appel à ma propre sagesse si je veux un jour comprendre la Voie de Zerthimon.~ */ GOTO 295
  IF ~  CheckStatGT(Protagonist,14,WIS)
Global("Dakkon_Teach","GLOBAL",8)
~ THEN REPLY #59965 /* ~"Lorsqu'on choisit de ne voir que ce qu'il y a devant soi, on ne voit qu'une partie de l'ensemble. On est aveugle. Et comme Vilquar a été aveuglé par la récompense qui lui avait été promise, les *illithids* ont été aveuglés par la véritable Révolte. Car lorsqu'ils ont entendu les paroles de Vilquar, ils ont tourné les yeux vers l'extérieur, c'est ça ? Et la Révolte avait libre cours ?"~ */ DO ~SetGlobal("Dakkon_Teach","GLOBAL",9)
GiveExperience(Protagonist,1500)
~ GOTO 303
  IF ~  Global("Dakkon_Teach","GLOBAL",8)
~ THEN REPLY #59966 /* ~"Lorsque l'on choisit de voir sans savoir, on se trahit."~ */ JOURNAL #67782 /* ~Apparemment, je n'ai pas compris ce que signifiait le cercle suivant du Cercle Ininterrompu de Zerthimon. Du moins, c'est ce que dit Dak'kon. Je crois que le sens exact du texte dépasse l'inscription gravée dans la pierre. Sans doute devrai-je faire appel à ma propre sagesse si je veux un jour comprendre la Voie de Zerthimon.~ */ GOTO 295
  IF ~  CheckStatGT(Protagonist,15,WIS)
Global("Dakkon_Teach","GLOBAL",10)
~ THEN REPLY #59967 /* ~"Il y a une grande force dans l'ensemble, mais il y a une grande puissance dans chacun, car la force de l'esprit d'un seul individu peut rallier les masses. La force ne réside pas seulement dans la *connaissance* de soi, mais aussi dans *l'aptitude* à la transmettre aux autres."~ */ DO ~SetGlobal("Dakkon_Teach","GLOBAL",11)
GiveExperience(Protagonist,3000)
GiveItemCreate("Circle05",Protagonist,1,0,0)
~ GOTO 307
  IF ~  Global("Dakkon_Teach","GLOBAL",10)
~ THEN REPLY #59968 /* ~"Zerthimon a appris à se joindre à un personnage encore plus puissant, Gith. Ensemble, le Peuple s'est renforcé."~ */ JOURNAL #67782 /* ~Apparemment, je n'ai pas compris ce que signifiait le cercle suivant du Cercle Ininterrompu de Zerthimon. Du moins, c'est ce que dit Dak'kon. Je crois que le sens exact du texte dépasse l'inscription gravée dans la pierre. Sans doute devrai-je faire appel à ma propre sagesse si je veux un jour comprendre la Voie de Zerthimon.~ */ GOTO 295
  IF ~  CheckStatGT(Protagonist,17,WIS)
Global("Dakkon_Teach","GLOBAL",12)
~ THEN REPLY #59969 /* ~"Je sais que la dévotion de Zerthimon pour le Peuple était telle qu'il voulait le protéger de lui-même. Il savait que les *illithids* n'étaient pas parvenus à se *connaître* dans leur obsession de contrôle et de domination. Alors, il a décidé d'arrêter Gith avant qu'elle n'entraîne le Peuple vers la mort. Tout doit avoir un équilibre, sinon l'individu ne peut survivre."~ */ DO ~SetGlobal("Dakkon_Teach","GLOBAL",13)
GiveExperience(Protagonist,5000)
GiveItemCreate("Circle06",Protagonist,1,0,0)
GiveItemCreate("Circle06",Protagonist,1,0,0)
~ GOTO 308
  IF ~  Global("Dakkon_Teach","GLOBAL",12)
~ THEN REPLY #59970 /* ~"Zerthimon a appris que même libre, on doit continuer à se battre pour la liberté, même au sein de sa propre race."~ */ JOURNAL #67782 /* ~Apparemment, je n'ai pas compris ce que signifiait le cercle suivant du Cercle Ininterrompu de Zerthimon. Du moins, c'est ce que dit Dak'kon. Je crois que le sens exact du texte dépasse l'inscription gravée dans la pierre. Sans doute devrai-je faire appel à ma propre sagesse si je veux un jour comprendre la Voie de Zerthimon.~ */ GOTO 295
  IF ~  Global("Dakkon_Teach","GLOBAL",15)
~ THEN REPLY #59971 /* ~"Il y avait un Septième Cercle dans la Pierre de Zerthimon. Il parlait de la montée de la rébellion contre les *illithids*."~ */ GOTO 319
  IF ~  Global("Dakkon_Teach","GLOBAL",18)
~ THEN REPLY #59972 /* ~"Il y avait un Huitième Cercle dans la Pierre de Zerthimon. Il parlait de la division de l'esprit et de l'importance de la concentration."~ */ GOTO 323
  IF ~~ THEN REPLY #59973 /* ~"Peu importe. Il y a d'autres choses que j'aimerais *savoir*, Dak'kon…"~ */ GOTO 193
  IF ~~ THEN REPLY #59974 /* ~"Je réfléchis toujours à ce que j'ai lu ; on en parlera plus tard. Allons-y."~ */ EXIT
END

IF ~~ THEN BEGIN 295 // from: 294.1 294.3 294.5 294.7 294.9 294.11
  SAY #59975 /* ~Le front de Dak'kon se fronce. "Alors, tu ne *sais* rien. Tu écoutes les paroles, mais tu ne les *connais* pas."~ */
  IF ~~ THEN REPLY #59976 /* ~"Très bien… Je réétudierai le texte. Entre-temps, il y a d'autres choses que j'aimerais *savoir*…"~ */ GOTO 193
  IF ~~ THEN REPLY #59977 /* ~"Bon, peu importe, Dak'kon."~ */ EXIT
END

IF ~~ THEN BEGIN 296 // from: 294.0
  SAY #59978 /* ~"Tu *connais* à présent le Premier Cercle de Zerthimon. Non seulement tu vois les paroles de Zerthimon, mais en plus, tu les *connais*." Dak'kon tient le Cercle et agrippe les bords de ses doigts. Tu entends un *déclic* et les plaques du Cercle adoptent une nouvelle configuration. Il inverse le mouvement, scellant la pierre. "*Sache* que le Deuxième Cercle de Zerthimon t'est ouvert. Examine-le, et alors j'entendrai tes paroles."~ */
  IF ~~ THEN REPLY #59979 /* ~"Je lirai le Deuxième Cercle, alors. Entre-temps, il y a d'autres choses que j'aimerais *savoir*…"~ */ GOTO 193
  IF ~~ THEN REPLY #59980 /* ~"Très bien. Je le lirai et on en reparlera."~ */ EXIT
END

IF ~~ THEN BEGIN 297 // from: 294.2
  SAY #59981 /* ~"Tu as vu les mots et tu as vu au-delà. Tu *connais* à présent le Deuxième Cercle de Zerthimon." Il prend le Cercle et d'un mouvement adroit, il exerce une pression sur un des liens, ce qui déplace une des plaques vers l'avant - mais curieusement, la pierre semble intacte. Il te tend la plaque. "Médite sur cet enseignement et la *connaissance* te donnera la force. Lorsque tu l'auras absorbée, tu en *sauras* plus."~ */
  IF ~~ THEN REPLY #59982 /* ~"Très bien… J'étudierai ce Cercle. Mais j'aimerais en savoir plus sur les enseignements de Zerthimon."~ */ GOTO 298
END

IF ~~ THEN BEGIN 298 // from: 297.0 302.0 306.0 307.0
  SAY #59983 /* ~Les doigts de Dak'kon tâtonnent sur les bords du cercle en pierre et il exerce une pression en sens inverse ; les liens émettent des *clics* jusqu'à adopter une nouvelle configuration. Il inverse alors le mouvement, repositionnant la pierre. "Le Cercle de Zerthimon suivant t'est ouvert. Étudie-le, et j'écouterai tes paroles."~ */
  IF ~~ THEN REPLY #59984 /* ~"Je lirai le Cercle suivant, alors. Entre-temps, il y a d'autres choses que j'aimerais *savoir*…"~ */ GOTO 193
  IF ~~ THEN REPLY #59985 /* ~"Très bien. Je le lirai et on en reparlera."~ */ EXIT
END

IF ~~ THEN BEGIN 299 // from: 294.4
  SAY #59986 /* ~Tes paroles semblent étrangement frapper Dak'kon… Tandis que tu parles, son front se plisse, puis reprend son expression passive habituelle.~ */
  IF ~~ THEN DO ~GiveItemCreate("Circle03",Protagonist,1,0,0)
~ GOTO 300
END

IF ~~ THEN BEGIN 300 // from: 299.0
  SAY #59987 /* ~"Ta volonté t'a apporté la *connaissance* du Troisième Cercle de Zerthimon. Avec cette *connaissance*, je te transmets ceci." Il prend le Cercle et d'un mouvement adroit, il exerce une pression sur un des liens pour faire glisser une des plaques vers l'avant. Il te remet la plaque. "Médite sur ses enseignements et leur *connaissance* te rendra plus fort."~ */
  IF ~~ THEN REPLY #59988 /* ~"Très bien… J'étudierai ce Cercle. Y a-t-il autre chose que tu peux m'enseigner ?"~ */ DO ~SetAnimState("Dakkon",ANIM_MIMESTAND)
~ GOTO 301
END

IF ~~ THEN BEGIN 301 // from: 300.0
  SAY #59989 /* ~Alors que tu demandes les paroles, tu te rends soudain compte que Dak'kon ne te regarde pas. Il tient le Cercle Ininterrompu entre les mains et l'étudie. Son épée a adopté la texture du Cercle Ininterrompu… et Dak'kon semble soudain plus *vieux*.~ */
  IF ~~ THEN REPLY #59990 /* ~"Dak'kon ?"~ */ GOTO 302
END

IF ~~ THEN BEGIN 302 // from: 301.0
  SAY #59991 /* ~Les yeux noirs de Dak'kon se détournent du Cercle pour te regarder. "*Sache* que je ne pensais pas que tu réussirais à *connaître* les enseignements du Cercle. C'est une… voie difficile que tu vas parcourir en apprenant la Voie de Zerthimon. Ton esprit est-il concentré ?"~ */
  IF ~~ THEN REPLY #59992 /* ~"Oui. Je veux apprendre davantage."~ */ GOTO 298
END

IF ~~ THEN BEGIN 303 // from: 294.6
  SAY #59993 /* ~"*Sache* que tu parles vrai. L'Œil de Vilquar a aveuglé Vilquar et les *illithids*. Les tentaculaires pensaient que la Révolte était terminée. Lors de la Révolte, le sol fut maculé de sang *illithid*. C'est ainsi que de la trahison naquit la victoire."~ */
  IF ~~ THEN REPLY #59994 /* ~"C'est une curieuse leçon. Pourquoi ferait-elle partie des enseignements de Zerthimon ?"~ */ GOTO 304
END

IF ~~ THEN BEGIN 304 // from: 303.0
  SAY #59995 /* ~L'épée de Dak'kon prend une coloration noire, une coloration de mort, et sa voix se fait plus grave - pendant un moment, tu crois qu'il est en colère, mais tu n'en es pas certain. "Il y a beaucoup de choses sur la Voie de Zerthimon et sur son chemin qui sont difficiles à comprendre."~ */
  IF ~~ THEN REPLY #59996 /* ~"Sais-*tu* pourquoi l'Œil de Vilquar fait partie de la Voie de Zerthimon ?"~ */ GOTO 305
END

IF ~~ THEN BEGIN 305 // from: 304.0
  SAY #59997 /* ~"Cela fait partie du récit évoquant la manière dont notre peuple a *connu* la liberté. Cela nous permet de *savoir* que certains, même parmi le Peuple, n'appartiennent pas au Peuple. Et que même par le biais de la plus grande trahison, une plus grande *connaissance* peut être acquise."~ */
  IF ~~ THEN REPLY #59998 /* ~"Très bien."~ */ DO ~GiveItemCreate("Circle04",Protagonist,1,0,0)
~ GOTO 306
END

IF ~~ THEN BEGIN 306 // from: 305.0
  SAY #59999 /* ~"Tu *connais* le Quatrième Cercle de Zerthimon." Il prend le Cercle et d'un mouvement adroit, il exerce une pression sur un des liens pour faire glisser une des plaques. Il te remet la plaque. "Médite sur ses enseignements et sa *connaissance* te rendra plus fort."~ */
  IF ~~ THEN REPLY #60000 /* ~"J'aimerais en savoir plus sur la Voie de Zerthimon."~ */ GOTO 298
END

IF ~~ THEN BEGIN 307 // from: 294.8
  SAY #60001 /* ~"Tu *connais* à présent le Cinquième Cercle de Zerthimon. Avec cette *connaissance*, je te transmets ceci." Il prend le Cercle et d'un mouvement adroit, il exerce une pression sur un des liens pour faire glisser une des plaques. Il te remet la plaque. "Médite sur ses enseignements et sa *connaissance* te rendra plus fort."~ */
  IF ~~ THEN REPLY #60002 /* ~"J'aimerais en savoir plus sur la Voie de Zerthimon."~ */ GOTO 298
END

IF ~~ THEN BEGIN 308 // from: 294.10
  SAY #60003 /* ~"Tu as vu les mots et tu les *connais*." La voix de Dak'kon ralentit et ses mains s'agrippent aux bords du Cercle Ininterrompu. Il exerce une pression en sens inverse et un *déclic* se fait entendre alors que deux plaques glissent. Dak'kon fixe les deux plaques qu'il tient dans la main - et sans bouger, il te les tend.~ */
  IF ~~ THEN REPLY #60004 /* ~"Dak'kon… est-ce que cette deuxième plaque est pour toi ?"~ */ DO ~SetAnimState("Dakkon",ANIM_MIMESTAND)
~ GOTO 309
END

IF ~~ THEN BEGIN 309 // from: 308.0
  SAY #60005 /* ~Dak'kon se tait. Son épée a perdu son éclat, un film de givre s'est formé à la surface. Il regarde la deuxième plaque, paralysé.~ */
  IF ~~ THEN REPLY #60006 /* ~"Connais-*tu* le Sixième Cercle ?"~ */ GOTO 310
END

IF ~~ THEN BEGIN 310 // from: 309.0
  SAY #60007 /* ~Dak'kon lève les yeux, mais ses yeux noir charbon ne croisent pas les tiens. "*Sache* que je ne peux plus rien t'apprendre. Tu *connais* la Voie comme le Peuple la *connaît* et elle t'indiquera comment te *connaître*."~ */
  IF ~~ THEN REPLY #60008 /* ~"Ce n'est *pas* ce que je t'ai demandé. Tu *connais* le Sixième Cercle ou pas ?"~ */ GOTO 311
END

IF ~~ THEN BEGIN 311 // from: 310.0
  SAY #60009 /* ~Dak'kon se tait un moment, puis parle d'une voix lente et posée. "Il se trouve que je ne *connais* pas le Sixième Cercle de Zerthimon. Autrefois, je le *connaissais*, mais je *sais* maintenant que je n'en avais vu que les mots." Dak'kon te fixe du regard. "C'est tout. Ma voie est désormais de ne plus *connaître* la Voie de Zerthimon."~ */
  IF ~  GlobalGT("Shrakatlor","GLOBAL",0)
~ THEN REPLY #60010 /* ~"Était-ce à cause de ce qui est arrivé à Shra'kt'lor ?"~ */ GOTO 317
  IF ~  Global("Shrakatlor","GLOBAL",0)
~ THEN REPLY #60011 /* ~"Dak'kon… il y a encore une chose que j'aimerais *savoir*. Pourquoi l'Œil de Vilquar est-il dans le Cercle de Zerthimon ? Ça semble étrange. Il explique comment le Peuple a tiré parti d'un acte de trahison. On dirait… "~ */ GOTO 312
END

IF ~~ THEN BEGIN 312 // from: 311.1 317.0
  SAY #60012 /* ~Les yeux de Dak'kon lancent des éclairs. "Je t'ai dit que cela faisait partie du récit sur la manière dont le Peuple a *connu* la liberté. Tu n'écoutes donc pas ?" Sa voix faiblit comme si un souvenir lui revenait. "Il dit au Peuple que même dans la plus grande trahison, une meilleure *connaissance* peut être acquise."~ */
  IF ~~ THEN REPLY #60013 /* ~"Je n'ai pas l'impression que tu le croies. Je pense qu'il y a une autre raison pour que l'Œil de Vilquar soit dans le Cercle de Zerthimon. Il est là à cause du Sixième Cercle et de la Déclaration des Deux Cieux. Il est là pour justifier la trahison de Zerthimon envers le Peuple sur les Plaines désolées."~ */ DO ~SetAnimState("Dakkon",ANIM_MIMESTAND)
~ GOTO 313
END

IF ~~ THEN BEGIN 313 // from: 312.0
  SAY #60014 /* ~Dak'kon est silencieux. Son épée prend la coloration noire de la mort et des dents apparaissent sur le bord.~ */
  IF ~~ THEN REPLY #60015 /* ~"Il a divisé le Peuple sur les Plaines désolées, Dak'kon. Il a divisé ta race alors qu'elle était sur le chemin de la victoire. J'aimerais *croire* que c'est parce qu'il voulait sauver le Peuple de lui-même, mais je ne pense pas que *tu* y croies."~ */ GOTO 314
END

IF ~~ THEN BEGIN 314 // from: 313.0
  SAY #60016 /* ~Dak'kon est silencieux un moment, puis parle, lentement. "Je… je ne *connais* pas le Sixième Cercle comme d'autres le *connaissent*. Je crains que les Troisième, Quatrième et Sixième Cercles ne soient plus étroitement liés que beaucoup ne le pensent. C'est en apprenant cela que je me suis perdu."~ */
  IF ~~ THEN REPLY #60017 /* ~"Dans ce Troisième Cercle, Zerthimon a refoulé sa volonté pour tromper les *illithids*, et le Quatrième Cercle parle des avantages de la *trahison*. Puis, dans le Sixième Cercle, Zerthimon divise son Peuple avant qu'il n'extermine les *illithids*. Tu penses que les paroles de Zerthimon peuvent ne pas avoir été ses propres paroles ?"~ */ GOTO 315
END

IF ~~ THEN BEGIN 315 // from: 314.0
  SAY #60018 /* ~"Souviens-toi de mes paroles et de la blessure de mon cœur. Je crains que lorsque Zerthimon se trouvait sur les Piliers du Silence, il ne se soit pas plongé dans sa volonté. J'ai bien peur que les *illithids* lui aient dérobé sa volonté. Et lorsqu'il a parlé sur les Plaines désolées, il a repris leurs mots. J'ai bien peur que ce qu'il a fait ne soit pas pour le Peuple, mais pour nos anciens maîtres."~ */
  IF ~~ THEN REPLY #60019 /* ~"C'est possible, mais *sache* que ça ne signifie pas nécessairement que…"~ */ DO ~SetGlobal("BD_DAKKON_FAITH","GLOBAL",1)
~ JOURNAL #60020 /* ~En apprenant le Sixième Cercle de Zerthimon, je me suis aperçu que Dak'kon n'y croyait pas. Ironie suprême, je crois que Dak'kon se connaissait lui-même, autrefois, mais que ce n'est plus le cas depuis qu'il a lu le Cercle Ininterrompu de Zerthimon.~ */ GOTO 316
END

IF ~~ THEN BEGIN 316 // from: 315.0
  SAY #60021 /* ~"Alors souviens-t'en et n'en parle PLUS." La voix de Dak'kon se fait tranchante comme un couteau. "*Sache* que je ne *connaîtrai* jamais la VÉRITÉ. Cette affaire ne peut PAS être résolue, car je ne *connaîtrai* jamais le cœur de Zerthimon sur les Plaines désolées." Ses yeux noir charbon fixent le cercle en pierre qu'il tient dans la main. "Et ainsi, je ne me *connais* pas moi-même à cause du Cercle Ininterrompu de Zerthimon."~ */
  IF ~~ THEN REPLY #60022 /* ~"Très bien, Dak'kon. N'en parlons plus… Allons-y."~ */ EXIT
END

IF ~~ THEN BEGIN 317 // from: 311.0
  SAY #60023 /* ~"Je ne *sais* pas. Le Peuple s'est divisé et le Peuple a souffert. En lisant le Cercle Ininterrompu, je *sais* maintenant que je *connais* le Cinquième Cercle et que j'ai utilisé la force d'un seul pour amener le Sixième Cercle à Shra'kt'lor. Ce faisant, j'ai divisé le Peuple. Il y a eu beaucoup de souffrance. Je porte toujours Shra'kt'lor avec moi."~ */
  IF ~~ THEN REPLY #60024 /* ~"Dak'kon… il y a une autre chose que j'aimerais *savoir*. Pourquoi l'Œil de Vilquar figure-t-il dans le Cercle de Zerthimon ? C'est étrange. Il dit au Peuple comment tirer parti d'un acte de trahison. On dirait- "~ */ GOTO 312
END

IF ~~ THEN BEGIN 318 // from: 193.3 351.0
  SAY #60025 /* ~Dak'kon attend.~ */
  IF ~  Class(Protagonist,FIGHTER)
~ THEN REPLY #60026 /* ~"Tu peux m'apprendre le maniement des armes, Dak'kon ?"~ */ GOTO 351
  IF ~  !Class(Protagonist,FIGHTER)
~ THEN REPLY #60027 /* ~"J'aimerais abandonner mon métier actuel pour reprendre l'étude du maniement des armes, Dak'kon. Tu peux m'aider ?"~ */ DO ~SetAnimState("Dakkon",ANIM_MIMESTANDTOSTANCE)
SetAnimState("Dakkon",ANIM_MIMESTANCE)
~ GOTO 286
  IF ~  !Class(Protagonist,MAGE)
Global("Dakkon_Teach","GLOBAL",0)
GlobalGT("Mage_Training","GLOBAL",0)
~ THEN REPLY #60028 /* ~"J'aimerais abandonner mon métier actuel pour reprendre l'étude de l'Art, Dak'kon. Tu peux m'aider ?"~ */ DO ~SetAnimState("Dakkon",ANIM_MIMESPELL1)
~ GOTO 257
  IF ~  !Class(Protagonist,MAGE)
GlobalGT("Dakkon_Teach","GLOBAL",0)
GlobalGT("Mage_Training","GLOBAL",0)
~ THEN REPLY #60029 /* ~"J'aimerais abandonner mon métier actuel pour reprendre l'étude de l'Art, Dak'kon. Tu peux m'aider ?"~ */ DO ~SetAnimState("Dakkon",ANIM_MIMESPELL1)
~ GOTO 288
  IF ~  Class(Protagonist,MAGE)
Global("Dakkon_Teach","GLOBAL",0)
~ THEN REPLY #60030 /* ~"Tu peux m'enseigner ce que tu connais sur l'Art, Dak'kon ?"~ */ GOTO 290
  IF ~  !Class(Protagonist,MAGE)
Global("Dakkon_Teach","GLOBAL",0)
~ THEN REPLY #68062 /* ~"Peux-tu m'enseigner la magie, Dak'kon ?"~ */ GOTO 363
  IF ~  Class(Protagonist,MAGE)
GlobalGT("Dakkon_Teach","GLOBAL",0)
~ THEN REPLY #60031 /* ~"J'ai lu le Cercle Ininterrompu de Zerthimon. J'aimerais encore te parler de la Voie de Zerthimon."~ */ GOTO 294
  IF ~~ THEN REPLY #60032 /* ~"En fait, j'avais d'autres questions à la place…"~ */ GOTO 193
  IF ~~ THEN REPLY #60033 /* ~"Peu importe, Dak'kon. Allons-y."~ */ EXIT
END

IF ~~ THEN BEGIN 319 // from: 294.12
  SAY #60034 /* ~Dak'kon se tait. "De quoi parle ce Septième Cercle ?"~ */
  IF ~  CheckStatGT(Protagonist,18,WIS)
~ THEN REPLY #60035 /* ~"Il décrit le temps comme un allié, non comme un ennemi. Il dit que la patience peut aiguiser les moindres efforts dans une arme qui peut frapper le cœur d'un empire. Tes victoires sont peut-être infimes, mais au fil du temps, tu peux remporter une plus grande victoire."~ */ GOTO 320
  IF ~~ THEN REPLY #60036 /* ~"Je ne sais pas… Il parle de temps et de travail, mais je n'en ai pas encore trouvé le sens. Quand ce sera le cas, je t'en parlerai."~ */ EXIT
  IF ~~ THEN REPLY #60037 /* ~"Je n'en parlerai pas maintenant. Il y a d'autres choses que j'aimerais *savoir*, Dak'kon…"~ */ GOTO 193
  IF ~~ THEN REPLY #60038 /* ~"Je t'en parlerai une autre fois. Allons-y pour le moment."~ */ EXIT
END

IF ~~ THEN BEGIN 320 // from: 319.0
  SAY #60039 /* ~Dak'kon se tait un moment. "Vas-tu me faire *connaître* ce cercle ?"~ */
  IF ~~ THEN REPLY #60040 /* ~Prends le Cercle Ininterrompu de Zerthimon et ouvre le Septième Cercle.~ */ DO ~SetGlobal("Dakkon_Teach","GLOBAL",16)
GiveExperience(Protagonist,5000)
GiveItemCreate("Circle07",Protagonist,1,0,0)
GiveItemCreate("Circle07",Protagonist,1,0,0)
SetAnimState("Dakkon",ANIM_MIMESTAND)
~ GOTO 321
  IF ~~ THEN REPLY #60041 /* ~"Plus tard. Il y a d'autres choses que j'aimerais *savoir*…"~ */ GOTO 193
  IF ~~ THEN REPLY #60042 /* ~"Pas pour le moment… Je t'en parlerai une autre fois. Allons-y maintenant."~ */ EXIT
END

IF ~~ THEN BEGIN 321 // from: 320.0
  SAY #60043 /* ~Alors que tu t'empares du cercle et que tu exerces une pression sur les liens, *deux* plaques glissent depuis l'intérieur pour retomber dans tes mains. Tu ne sais absolument pas d'où elles viennent, mais le Cercle Ininterrompu semble intact - le Septième Cercle demeure. Dak'kon te regarde en silence.~ */
  IF ~~ THEN REPLY #60044 /* ~"Il y a deux plaques ici… on devrait peut-être les étudier, toi et moi ?"~ */ GOTO 322
END

IF ~~ THEN BEGIN 322 // from: 321.0
  SAY #60045 /* ~Dak'kon demeure silencieux un moment. "Tu en *sais* à présent beaucoup sur le Cercle et tes *connaissances* sont supérieures aux miennes." Dak'kon soutient ton regard. "*Sache* que ta voie est mienne et il se trouve que comme tu as eu *connaissance* de la Voie de Zerthimon par moi, je *connaîtrai* la Voie de Zerthimon par toi."~ */
  IF ~~ THEN REPLY #60046 /* ~"On étudiera les plaques plus tard. Il y a d'autres choses que j'aimerais *savoir*…"~ */ GOTO 193
  IF ~~ THEN REPLY #60047 /* ~"Très bien, Dak'kon. Allons-y."~ */ EXIT
END

IF ~~ THEN BEGIN 323 // from: 294.13
  SAY #60048 /* ~Dak'kon se tait. Lorsqu'il reprend la parole… sa voix est posée, presque respectueuse. "De quoi parle le Huitième Cercle ?"~ */
  IF ~  CheckStatGT(Protagonist,18,WIS)
~ THEN REPLY #60049 /* ~"Il parle de concentration et de discipline… et comment l'absence de *connaissance* de soi peut physiquement nous diviser. Il évoque aussi les faiblesses provoquées par cette division. J'ai l'impression qu'il indique que la *connaissance* de soi est une force, mais aussi que la concentration peut révéler les faiblesses de l'ennemi."~ */ GOTO 324
  IF ~~ THEN REPLY #60050 /* ~"Je ne sais pas… Il parle de concentration et de division, mais je n'en ai pas trouvé le sens. Quand ce sera le cas, je t'en parlerai."~ */ EXIT
  IF ~~ THEN REPLY #60051 /* ~"Je n'en parlerai pas maintenant. Il y a d'autres choses que j'aimerais *savoir*, Dak'kon…"~ */ GOTO 193
  IF ~~ THEN REPLY #60052 /* ~"Je t'en parlerai une autre fois. Allons-y pour le moment."~ */ EXIT
END

IF ~~ THEN BEGIN 324 // from: 323.0
  SAY #60053 /* ~Dak'kon se tait un moment. "Vas-tu me faire *connaître* ce cercle ?"~ */
  IF ~~ THEN REPLY #60054 /* ~Prends le Cercle Ininterrompu de Zerthimon et ouvre le Huitième Cercle.~ */ DO ~SetGlobal("Dakkon_Teach","GLOBAL",19)
GiveExperience(Protagonist,10000)
GiveExperience("Dakkon",10000)
GiveItemCreate("Circle08",Protagonist,1,0,0)
GiveItemCreate("Circle08",Protagonist,1,0,0)
SetAnimState("Dakkon",ANIM_MIMESTAND)
~ GOTO 325
  IF ~~ THEN REPLY #60055 /* ~"Plus tard. Il y a d'autres choses que j'aimerais *savoir*…"~ */ GOTO 193
  IF ~~ THEN REPLY #60056 /* ~"Pas pour le moment… Je t'en parlerai une autre fois. Allons-y maintenant."~ */ EXIT
END

IF ~~ THEN BEGIN 325 // from: 324.0
  SAY #60057 /* ~Alors que tu prends le cercle et que tu exerces une pression sur les liens, deux autres plaques glissent de l'intérieur pour retomber dans tes mains. Tout comme pour le Septième Cercle, tu n'as aucune idée de leur provenance, mais le Cercle Ininterrompu semble toujours intact - le Huitième Cercle demeure. Dak'kon te regarde en silence.~ */
  IF ~~ THEN REPLY #60058 /* ~"Il y a deux plaques ici… On devrait les étudier, toi et moi. Peut-être qu'en *connaissant* le Huitième Cercle, on *connaît* le cœur de Zerthimon au moment où il a prononcé la Déclaration des Deux Cieux. Ses paroles n'étaient pas celles des *illithids*, mais celles du Peuple."~ */ DO ~SetAnimState("Dakkon",ANIM_MIMESTAND)
~ GOTO 326
END

IF ~~ THEN BEGIN 326 // from: 325.0
  SAY #60059 /* ~Dak'kon fixe les plaques, ses yeux clignent sur leur géométrie, puis il lève les yeux et te régarde. Son épée fléchit, se déplace, jusqu'à ce que le miroitement que tu avais précédemment remarqué se transforme en une lueur argentée. Il semble plus *fort*.~ */
  IF ~~ THEN DO ~IncrementGlobal("Githzerai","GLOBAL",3)
SetGlobal("BD_DAKKON_MORALE","GLOBAL",20)
PermanentStatChange("Dakkon",STR,RAISE,1)
PermanentStatChange("Dakkon",DEX,RAISE,2)
PermanentStatChange("Dakkon",CON,RAISE,2)
SetAnimState("Dakkon",ANIM_MIMEATTACK1)
~ GOTO 327
END

IF ~~ THEN BEGIN 327 // from: 326.0
  SAY #60060 /* ~"*Sache* que quand la mort viendra à toi, *sache* que mon épée rencontrera la sienne. *Sache* que même si tout meurt autour de toi, *sache* que je vivrai pour toi."~ */
  IF ~~ THEN REPLY #60061 /* ~"Lorsqu'on mourra, Dak'kon, ce sera de la même mort. Ce sera la Déclaration des Deux Morts en Une."~ */ JOURNAL #60062 /* ~Je crois que ma découverte du Huitième Cercle a permis à Dak'kon de mieux se comprendre et de se débarrasser des *doutes* qui l'habitaient. J'ai littéralement vu le poids des ans disparaître de ses épaules quand je lui ai parlé du Huitième Cercle. Après m'avoir écouté, il s'est lancé dans le Discours des Deux Morts en Une, au cours duquel il a prêté serment d'affronter la mort quand elle viendrait me prendre.~ */ EXIT
END

IF ~~ THEN BEGIN 328 // from: 232.3
  SAY #60063 /* ~"Les symboles de quatre personnes avec qui tu as voyagé par le passé."~ */
  IF ~~ THEN REPLY #60064 /* ~"Qui étaient ces quatre personnes ?"~ */ DO ~SetGlobal("Dakkon_Old_Companions","GLOBAL",1)
~ JOURNAL #60068 /* ~Dak'kon m'a parlé de quatre êtres qui ont emprunté cette voie avant moi. Il y a eu une femme aimant un homme qui la connaissait mais ne l'aimait pas, un archer, un familier et un esclave.~ */ GOTO 329
  IF ~~ THEN REPLY #60065 /* ~"En fait, j'avais d'autres questions sur nos voyages…"~ */ DO ~SetAnimState("Dakkon",ANIM_MIMESTAND)
~ GOTO 232
  IF ~~ THEN REPLY #60066 /* ~"On en reparlera plus tard. Pour le moment, il y a d'autres choses que j'aimerais *savoir*…"~ */ GOTO 193
  IF ~~ THEN REPLY #60067 /* ~"Peu importe, Dak'kon. Allons-y."~ */ EXIT
END

IF ~~ THEN BEGIN 329 // from: 232.4 328.0
  SAY #60069 /* ~"Les tatouages parlent de quatre esprits. L'un était une femme qui aimait un homme qui la *connaissait* mais qui ne *connaissait* pas l'amour. Un autre était un aveugle qui voyait des choses qu'aucun œil mortel ne pouvait voir. Un autre était une sorte d'animal familier de mage acheté et enchaîné. Et le dernier était un esclave."~ */
  IF ~  CheckStatGT(Protagonist,14,INT)
CheckStatLT(Protagonist,15,WIS)
Global("Dakkon_Slave","GLOBAL",0)
~ THEN REPLY #60070 /* ~"Et lequel étais-tu, Dak'kon ? L'esclave ?"~ */ DO ~SetGlobal("Dakkon_Slave","GLOBAL",1)
GiveExperience(Protagonist,3000)
~ GOTO 330
  IF ~  CheckStatGT(Protagonist,14,WIS)
Global("Dakkon_Slave","GLOBAL",0)
~ THEN REPLY #60071 /* ~"Et lequel étais-tu, Dak'kon ? L'esclave ?"~ */ DO ~SetGlobal("Dakkon_Slave","GLOBAL",1)
GiveExperience(Protagonist,3000)
~ GOTO 330
  IF ~  GlobalGT("Dakkon_Slave","GLOBAL",0)
~ THEN REPLY #60072 /* ~"Et tu étais l'esclave, Dak'kon ?"~ */ GOTO 330
  IF ~~ THEN REPLY #60073 /* ~"Qu'est-ce que tu peux me dire sur ces quatre personnes ?"~ */ GOTO 332
  IF ~~ THEN REPLY #60074 /* ~"Pourquoi tu ne voulais pas me le dire ?"~ */ GOTO 338
  IF ~~ THEN REPLY #60075 /* ~"Très bien. Pour le moment, il y a d'autres choses que j'aimerais *savoir*…"~ */ GOTO 193
  IF ~~ THEN REPLY #60076 /* ~"C'est tout ce que je voulais savoir, Dak'kon. Allons-y."~ */ EXIT
END

IF ~~ THEN BEGIN 330 // from: 329.0 329.1 329.2 333.3 334.1 335.1 337.0
  SAY #60077 /* ~Dak'kon se tait un moment et la surface de son épée se met à vaciller, comme en proie à des remous. "*Sache* que celui-là te devait un service. Et de ce fait, il est devenu esclave."~ */
  IF ~~ THEN REPLY #60078 /* ~"Comment est-ce que ça a pu arriver ?"~ */ GOTO 331
  IF ~~ THEN REPLY #60079 /* ~"Qu'est-ce que tu peux me dire sur les quatre qui voyageaient autrefois avec moi ?"~ */ GOTO 333
  IF ~~ THEN REPLY #60080 /* ~"Pourquoi tu ne voulais pas me parler des quatre qui apparaissent sur le tatouage ?"~ */ GOTO 338
  IF ~~ THEN REPLY #60081 /* ~"On en reparlera plus tard. Pour le moment, il y a d'autres choses que j'aimerais *savoir*…"~ */ GOTO 193
  IF ~~ THEN REPLY #60082 /* ~"Peu importe, Dak'kon. Allons-y."~ */ EXIT
END

IF ~~ THEN BEGIN 331 // from: 330.0
  SAY #60083 /* ~"*Sache* que c'est une longue histoire. C'est une affaire entre moi et celui que tu étais autrefois. *Sache* que si tu l'écoutes, ce sera une longue histoire."~ */
  IF ~~ THEN REPLY #60084 /* ~"J'aimerais l'entendre."~ */ GOTO 218
  IF ~~ THEN REPLY #60085 /* ~"Qu'est-ce que tu peux me dire sur les quatre qui voyageaient autrefois avec moi ?"~ */ GOTO 333
  IF ~~ THEN REPLY #60086 /* ~"Je l'écouterai plus tard, alors. Pourquoi tu ne voulais pas me parler des quatre qui apparaissent sur le tatouage ?"~ */ GOTO 338
  IF ~~ THEN REPLY #60087 /* ~"On en reparlera plus tard. Pour le moment, il y a d'autres choses que j'aimerais *savoir*…"~ */ GOTO 193
  IF ~~ THEN REPLY #60088 /* ~"Peu importe, Dak'kon. Allons-y."~ */ EXIT
END

IF ~~ THEN BEGIN 332 // from: 329.3 334.2 335.2 337.1 338.1 339.0 339.2 340.1 340.2
  SAY #60089 /* ~"La femme était jeune. Elle vénérait le temps, car dans son sang, elle *savait* ce qui allait arriver. L'archer était aveugle, mais il pouvait voir des choses que les autres ne voyaient pas. Ses flèches allaient toujours se planter dans le cœur d'un ennemi. De l'animal familier et de l'esclave, je ne *sais* pas grand-chose."~ */
  IF ~  GlobalGT("Prophecy","GLOBAL",0)
~ THEN REPLY #60090 /* ~"Ce qui allait arriver ? Cette femme s'appelait Deionarra, c'est ça ?"~ */ JOURNAL #60097 /* ~Je viens d'apprendre que Deionarra a voyagé à mes côtés de par le passé. Dak'kon m'affirme qu'elle avait la faculté de 'voir' les événements à venir avant qu'ils ne se produisent.~ */ GOTO 334
  IF ~  Global("Prophecy","GLOBAL",0)
GlobalGT("Deionarra_Sight","GLOBAL",0)
~ THEN REPLY #60091 /* ~"Ce qui allait arriver ? Cette femme s'appelait Deionarra, c'est ça ?"~ */ JOURNAL #60097 /* ~Je viens d'apprendre que Deionarra a voyagé à mes côtés de par le passé. Dak'kon m'affirme qu'elle avait la faculté de 'voir' les événements à venir avant qu'ils ne se produisent.~ */ GOTO 334
  IF ~~ THEN REPLY #60092 /* ~"Dis-m'en davantage sur l'archer."~ */ GOTO 335
  IF ~~ THEN REPLY #60093 /* ~"Pourquoi tu ne voulais pas me parler des quatre qui apparaissent sur le tatouage ?"~ */ GOTO 338
  IF ~~ THEN REPLY #60094 /* ~"Tu sais pourquoi je voyageais avec ces quatre personnes ?"~ */ GOTO 340
  IF ~~ THEN REPLY #60095 /* ~"On en reparlera plus tard. Pour le moment, il y a d'autres choses que j'aimerais *savoir*…"~ */ GOTO 193
  IF ~~ THEN REPLY #60096 /* ~"C'est tout ce que je voulais savoir, Dak'kon. Allons-y."~ */ EXIT
END

IF ~~ THEN BEGIN 333 // from: 330.1 331.1 334.3 335.3 337.2 338.2 339.1 339.3 341.1 341.2
  SAY #60098 /* ~"La femme était jeune. Elle vénérait le temps, car dans son sang, elle *savait* ce qui allait arriver. L'archer était aveugle, mais il pouvait voir des choses que les autres ne voyaient pas. De l'animal familier, je ne *sais* pas grand-chose."~ */
  IF ~  GlobalGT("Prophecy","GLOBAL",0)
~ THEN REPLY #60099 /* ~"Ce qui allait arriver ? Cette femme s'appelait Deionarra, c'est ça ?"~ */ JOURNAL #60107 /* ~Je viens d'apprendre que Deionarra a voyagé à mes côtés de par le passé, de même que Dak'kon. Ce dernier m'affirme que Deionarra avait la faculté de 'voir' les événements à venir avant qu'ils ne se produisent.~ */ GOTO 334
  IF ~  Global("Prophecy","GLOBAL",0)
GlobalGT("Deionarra_Sight","GLOBAL",0)
~ THEN REPLY #60100 /* ~"Ce qui allait arriver ? Cette femme s'appelait Deionarra, c'est ça ?"~ */ JOURNAL #60107 /* ~Je viens d'apprendre que Deionarra a voyagé à mes côtés de par le passé, de même que Dak'kon. Ce dernier m'affirme que Deionarra avait la faculté de 'voir' les événements à venir avant qu'ils ne se produisent.~ */ GOTO 334
  IF ~~ THEN REPLY #60101 /* ~"Dis-m'en davantage sur l'archer."~ */ GOTO 335
  IF ~~ THEN REPLY #60102 /* ~"Comment est-ce que tu es devenu mon esclave ?"~ */ GOTO 330
  IF ~~ THEN REPLY #60103 /* ~"Pourquoi tu ne voulais pas me parler des quatre qui apparaissent sur le tatouage ?"~ */ GOTO 338
  IF ~~ THEN REPLY #60104 /* ~"Tu sais pourquoi on voyageait ensemble ?"~ */ GOTO 341
  IF ~~ THEN REPLY #60105 /* ~"On en reparlera plus tard. Pour le moment, il y a d'autres choses que j'aimerais *savoir*…"~ */ GOTO 193
  IF ~~ THEN REPLY #60106 /* ~"C'est tout ce que je voulais savoir, Dak'kon. Allons-y."~ */ EXIT
END

IF ~~ THEN BEGIN 334 // from: 332.0 332.1 333.0 333.1
  SAY #60108 /* ~"*Sache* que Deionarra était son nom."~ */
  IF ~~ THEN REPLY #60109 /* ~"Qu'est-ce que tu sais sur l'archer ?"~ */ GOTO 335
  IF ~  GlobalGT("Dakkon_Slave","GLOBAL",0)
~ THEN REPLY #60110 /* ~"Comment est-ce que tu es devenu mon esclave ?"~ */ GOTO 330
  IF ~  Global("Dakkon_Slave","GLOBAL",0)
~ THEN REPLY #60111 /* ~"Parle-moi des autres."~ */ GOTO 332
  IF ~  GlobalGT("Dakkon_Slave","GLOBAL",0)
~ THEN REPLY #60112 /* ~"Parle-moi des autres."~ */ GOTO 333
  IF ~~ THEN REPLY #60113 /* ~"Pourquoi tu ne voulais pas me parler des quatre qui apparaissent sur le tatouage ?"~ */ GOTO 338
  IF ~  Global("Dakkon_Slave","GLOBAL",0)
~ THEN REPLY #60114 /* ~"Tu sais pourquoi je voyageais avec ces quatre personnes ?"~ */ GOTO 340
  IF ~  GlobalGT("Dakkon_Slave","GLOBAL",0)
~ THEN REPLY #60115 /* ~"Tu sais pourquoi on voyageait ensemble ?"~ */ GOTO 341
  IF ~~ THEN REPLY #60116 /* ~"On en reparlera plus tard. Pour le moment, il y a d'autres choses que j'aimerais *savoir*…"~ */ GOTO 193
  IF ~~ THEN REPLY #60117 /* ~"C'est tout ce que je voulais savoir, Dak'kon. Allons-y."~ */ EXIT
END

IF ~~ THEN BEGIN 335 // from: 332.2 333.2 334.0
  SAY #60118 /* ~"Je ne *sais* pas grand-chose sur lui. Je *sais* qu'il était soldat. Je *sais* qu'il était sous l'emprise de l'alcool. Son aveuglement lui a fait *voir* autre chose. Et *cela* l'a rendu fort. Mais il ne *connaissait* pas sa force."~ */
  IF ~  Global("Xachariah_Name","GLOBAL",0)
~ THEN REPLY #60119 /* ~"Tu sais comment il s'appelait ?"~ */ DO ~PlaySoundNotRanged("SPTR_01")
~ GOTO 336
  IF ~  GlobalGT("Dakkon_Slave","GLOBAL",0)
~ THEN REPLY #60120 /* ~"Comment est-ce que tu es devenu mon esclave ?"~ */ GOTO 330
  IF ~  Global("Dakkon_Slave","GLOBAL",0)
~ THEN REPLY #60121 /* ~"Parle-moi des autres."~ */ GOTO 332
  IF ~  GlobalGT("Dakkon_Slave","GLOBAL",0)
~ THEN REPLY #60122 /* ~"Parle-moi des autres."~ */ GOTO 333
  IF ~~ THEN REPLY #60123 /* ~"Pourquoi tu ne voulais pas me parler des quatre qui apparaissent sur le tatouage ?"~ */ GOTO 338
  IF ~  Global("Dakkon_Slave","GLOBAL",0)
~ THEN REPLY #60124 /* ~"Tu sais pourquoi je voyageais avec ces quatre personnes ?"~ */ GOTO 340
  IF ~  GlobalGT("Dakkon_Slave","GLOBAL",0)
~ THEN REPLY #60125 /* ~"Tu sais pourquoi on voyageait ensemble ?"~ */ GOTO 341
  IF ~~ THEN REPLY #60126 /* ~"On en reparlera plus tard. Pour le moment, il y a d'autres choses que j'aimerais *savoir*…"~ */ GOTO 193
  IF ~~ THEN REPLY #60127 /* ~"C'est tout ce que je voulais savoir, Dak'kon. Allons-y."~ */ EXIT
END

IF ~~ THEN BEGIN 336 // from: 335.0
  SAY #60128 /* ~Avant que Dak'kon puisse répondre, tu *connais* tout à coup la réponse. Une étrange sensation envahit l'arrière de ton crâne et tu sens le nom revenir à la surface comme s'il sortait d'un grand océan boueux.~ */
  IF ~~ THEN REPLY #60129 /* ~Écho : "Il se dénommait *Xachariah*… il était aveugle, mais sa cécité lui avait donné une seconde vue qui lui permettait de voir des choses cachées aux autres. Il était archer, et ses flèches trouvaient toujours le cœur de leurs cibles."~ */ DO ~SetGlobal("Xachariah_Name","GLOBAL",1)
GiveExperience(Protagonist,3000)
~ JOURNAL #60130 /* ~En discutant avec Dak'kon, je me suis rappelé le nom de l'archer aveugle qui voyageait autrefois à mon côté. Il se nommait Xachariah et son don de double vue lui permettait de planter ses flèches en plein dans le cœur de ses cibles.~ */ GOTO 337
END

IF ~~ THEN BEGIN 337 // from: 336.0
  SAY #60131 /* ~"*Sache* qu'il s'appelait Xachariah. Et *sache* que son nom a percé le cœur de nombreux ennemis."~ */
  IF ~  GlobalGT("Dakkon_Slave","GLOBAL",0)
~ THEN REPLY #60132 /* ~"Comment est-ce que tu es devenu mon esclave ?"~ */ GOTO 330
  IF ~  Global("Dakkon_Slave","GLOBAL",0)
~ THEN REPLY #60133 /* ~"Parle-moi des autres."~ */ GOTO 332
  IF ~  GlobalGT("Dakkon_Slave","GLOBAL",0)
~ THEN REPLY #60134 /* ~"Parle-moi des autres."~ */ GOTO 333
  IF ~~ THEN REPLY #60135 /* ~"Pourquoi tu ne voulais pas me parler des quatre qui apparaissent sur le tatouage ?"~ */ GOTO 338
  IF ~  Global("Dakkon_Slave","GLOBAL",0)
~ THEN REPLY #60136 /* ~"Tu sais pourquoi je voyageais avec ces quatre personnes ?"~ */ GOTO 340
  IF ~  GlobalGT("Dakkon_Slave","GLOBAL",0)
~ THEN REPLY #60137 /* ~"Tu sais pourquoi on voyageait ensemble ?"~ */ GOTO 341
  IF ~~ THEN REPLY #60138 /* ~"On en reparlera plus tard. Pour le moment, il y a d'autres choses que j'aimerais *savoir*…"~ */ GOTO 193
  IF ~~ THEN REPLY #60139 /* ~"C'est tout ce que je voulais savoir, Dak'kon. Allons-y."~ */ EXIT
END

IF ~~ THEN BEGIN 338 // from: 329.4 330.2 331.2 332.3 333.4 334.4 335.4 337.3
  SAY #60140 /* ~"Les quatre sont liés par un symbole qui m'est *connu*."~ */
  IF ~~ THEN REPLY #60141 /* ~"Quel symbole ?"~ */ GOTO 339
  IF ~  Global("Dakkon_Slave","GLOBAL",0)
~ THEN REPLY #60142 /* ~"Le symbole ne m'intéresse pas pour le moment ; dis-moi tout ce que tu sais sur les quatre qui apparaissent sur le tatouage."~ */ GOTO 332
  IF ~  GlobalGT("Dakkon_Slave","GLOBAL",0)
~ THEN REPLY #60143 /* ~"Le symbole ne m'intéresse pas pour le moment ; dis-moi tout ce que tu sais sur les quatre qui apparaissent sur le tatouage."~ */ GOTO 333
  IF ~~ THEN REPLY #60144 /* ~"On en reparlera plus tard. Pour le moment, il y a d'autres choses que j'aimerais *savoir*…"~ */ GOTO 193
  IF ~~ THEN REPLY #60145 /* ~"Peu importe, Dak'kon. Allons-y."~ */ EXIT
END

IF ~~ THEN BEGIN 339 // from: 338.0 340.0 341.0
  SAY #60146 /* ~"Le symbole est le tourment. Fell a dit que tu l'as toujours porté, car la chair *sait* qu'elle a souffert, même lorsque l'esprit ne le *sait* pas."~ */
  IF ~  Global("Dakkon_Slave","GLOBAL",0)
~ THEN REPLY #60147 /* ~"Assez sur le symbole. Dis-moi tout ce que tu sais sur ces quatre qui apparaissent sur le tatouage."~ */ GOTO 332
  IF ~  GlobalGT("Dakkon_Slave","GLOBAL",0)
~ THEN REPLY #60148 /* ~"Assez sur le symbole. Dis-moi tout ce que tu sais sur ces quatre qui apparaissent sur le tatouage."~ */ GOTO 333
  IF ~  Global("Dakkon_Slave","GLOBAL",0)
~ THEN REPLY #60149 /* ~"Je vois. Peux-tu m'en dire plus sur les quatre du tatouage ?"~ */ GOTO 332
  IF ~  GlobalGT("Dakkon_Slave","GLOBAL",0)
~ THEN REPLY #60150 /* ~"Je vois. Peux-tu m'en dire plus sur les quatre du tatouage ?"~ */ GOTO 333
  IF ~~ THEN REPLY #60151 /* ~"Très bien. Pour le moment, il y a d'autres choses que j'aimerais *savoir*…"~ */ GOTO 193
  IF ~~ THEN REPLY #60152 /* ~"C'est tout ce que je voulais savoir, Dak'kon. Allons-y."~ */ EXIT
END

IF ~~ THEN BEGIN 340 // from: 332.4 334.5 335.5 337.4
  SAY #60153 /* ~"Le tatouage ne dit rien sur leur voie, il ne parle que du symbole qui les lie. *Sache* que tu étais peut-être le seul à *connaître* la voie."~ */
  IF ~~ THEN REPLY #60154 /* ~"Parle-moi du symbole."~ */ GOTO 339
  IF ~~ THEN REPLY #60155 /* ~"Assez sur le symbole. Dis-moi tout ce que tu sais sur ces quatre qui apparaissent sur le tatouage."~ */ GOTO 332
  IF ~~ THEN REPLY #60156 /* ~"Je vois. Peux-tu m'en dire plus sur les quatre du tatouage ?"~ */ GOTO 332
  IF ~~ THEN REPLY #60157 /* ~"Très bien. Pour le moment, il y a d'autres choses que j'aimerais *savoir*…"~ */ GOTO 193
  IF ~~ THEN REPLY #60158 /* ~"C'est tout ce que je voulais savoir, Dak'kon. Allons-y."~ */ EXIT
END

IF ~~ THEN BEGIN 341 // from: 333.5 334.6 335.6 337.5
  SAY #60159 /* ~"*Sache* que tu étais le seul à *connaître* la voie et que tu n'as pas voulu qu'on la *connaisse*. *Sache* que ceux qui ont marché sur ta voie ne *connaissaient* que le symbole qui les liait."~ */
  IF ~~ THEN REPLY #60160 /* ~"Très bien… Parle-moi du symbole."~ */ GOTO 339
  IF ~~ THEN REPLY #60161 /* ~"Assez sur le symbole. Dis-moi tout ce que tu sais sur les autres qui apparaissent sur le tatouage."~ */ GOTO 333
  IF ~~ THEN REPLY #60162 /* ~"Je vois. Peux-tu m'en dire plus sur les quatre du tatouage ?"~ */ GOTO 333
  IF ~~ THEN REPLY #60163 /* ~"Très bien. Pour le moment, il y a d'autres choses que j'aimerais *savoir*…"~ */ GOTO 193
  IF ~~ THEN REPLY #60164 /* ~"C'est tout ce que je voulais savoir, Dak'kon. Allons-y."~ */ EXIT
END

IF ~~ THEN BEGIN 342 // from: 270.0
  SAY #60165 /* ~"*Sache* que le discours du Peuple repose sur l'histoire. Toutes les choses sont comme des histoires pour nous ; les métaphores sont des outils et inspirent la force. *Sache* que lorsque l'on parle de la table de Toryg, on se souvient de l'hospitalité et de la bonne volonté de Toryg. Lorsqu'on parle du cœur de Selqant, on se souvient de la nature débauchée et cruelle de Selqant."~ */
  IF ~~ THEN REPLY #60166 /* ~"Je comprends. Tu m'apprendras ?"~ */ DO ~IncrementGlobal("Githzerai","GLOBAL",1)
FadeToColor([20.0],0)
Wait(3)
FadeFromColor([20.0],0)
SetGlobal("Know_Githzerai_Speak","GLOBAL",1)
GiveExperience(Protagonist,600)
~ JOURNAL #60167 /* ~Dak'kon m'a beaucoup appris au sujet du langage des githzeraïs. Celui-ci semble être basé sur l'usage d'histoires et de métaphores. Je ne le connais qu'imparfaitement mais, si j'entends un nouveau terme, je pourrai toujours demander à Dak'kon de me le traduire.~ */ GOTO 343
END

IF ~~ THEN BEGIN 343 // from: 342.0
  SAY #60168 /* ~Dak'kon t'apprend certaines expressions courantes : on dit de quelqu'un qu'il 'a écrit le livre des Anarques' lorsqu'il fait preuve de sagesse et lorsqu'on accuse quelqu'un de trahison, on dit qu'on se souvient de 'l'Œil de Vilquar'. On dit des gens généreux que leurs 'placards sont vides'. Parmi les formes de politesse les plus courantes, on trouve 'Salut à toi, sonneur d'épées', et 'Zerchai et les tiens te saluent', ce à quoi tu dois répondre, 'Et le voyageur en est heureux'. Dak'kon est un brillant professeur, car grâce à lui tu peux échanger des formules de politesse avec d'autres githzeraïs.~ */
  IF ~~ THEN REPLY #60169 /* ~"J'avais d'autres questions sur les githzeraïs…"~ */ DO ~SetAnimState("Dakkon",ANIM_MIMESTAND)
~ GOTO 231
  IF ~~ THEN REPLY #60170 /* ~"Merci, Dak'kon. Il y a d'autres choses que j'aimerais *savoir*…"~ */ GOTO 193
  IF ~~ THEN REPLY #60171 /* ~"J'en ai assez entendu pour le moment. Allons-y."~ */ EXIT
END

IF ~~ THEN BEGIN 344 // from: 224.0
  SAY #60172 /* ~Alors que Dak'kon parle, ton regard est attiré vers l'extérieur et tu commences à ressentir une étrange sensation à l'arrière de ton crâne… Tu as la nausée un moment et ta vision se met soudain, tel le chaos, à baisser, à se troubler et tu te retrouves ailleurs, dans le *passé*…~ */
  IF ~~ THEN REPLY #60173 /* ~Laisse surgir le souvenir…~ */ DO ~PlaySoundNotRanged("SPTR_01")
SetAnimState("Dakkon",ANIM_MIMESTAND)
FadeToColor([20.0],0)
Wait(3)
FadeFromColor([20.0],0)
~ GOTO 345
  IF ~~ THEN REPLY #60174 /* ~Refoule le souvenir…~ */ GOTO 225
END

IF ~~ THEN BEGIN 345 // from: 344.0
  SAY #60175 /* ~Tu vois tout tourner - ta vision se fait TOUT À COUP floue, tournoyante et tu es pris d'un vertige… Il y a de la brume, des poches de feu, des îles de boue, de la pierre et des rochers couverts de glace nageant dans le Plan comme des poissons, se brisant et se dispersant, des gouttelettes d'eau jaillissant de l'air hurlant et te fouettant la peau comme des dents - tu ravales ta nausée et tu te reprends, c'est le Plan des *Limbes* où tout n'est que chaos et rien n'est stable… Tu te concentres sur l'homme mourant étendu devant toi. C'est pour ça que tu es venu ici.~ */
  IF ~~ THEN REPLY #60176 /* ~Écho : Examine le *zerth*, vois s'il est toujours en vie.~ */ DO ~SetAnimState("Dakkon",ANIM_MIMESTAND)
~ GOTO 346
  IF ~~ THEN REPLY #60177 /* ~Refoule le souvenir…~ */ GOTO 225
END

IF ~~ THEN BEGIN 346 // from: 345.0
  SAY #60178 /* ~'L'homme' est un githzeraï. Son corps repose dans une poche de terre qui tourbillonne autour de lui ; sans le vouloir, il a modelé une tombe à partir des éléments et malgré le feu et l'eau qui lui lèchent le visage, il ne réagit pas. Ses mains sont couvertes de cendres et ses yeux noir charbon ne se concentrent sur rien. Sa frêle ossature témoigne de sa privation de nourriture, mais c'est la moindre de ses blessures. C'est la foi qui lui a infligé le coup fatal.~ */
  IF ~~ THEN REPLY #60179 /* ~Écho : Cherche la lame qu'il porte.~ */ GOTO 347
  IF ~~ THEN REPLY #60180 /* ~Refoule le souvenir…~ */ GOTO 225
END

IF ~~ THEN BEGIN 347 // from: 346.0
  SAY #60181 /* ~Dans sa fragile main gauche se trouve une masse métallique dont la surface a fondu en formant une sorte de gantelet. Alors que tu la regardes, elle fume et siffle comme un serpent malade. Le githzeraï ne semble pas en être conscient… mais c'est pour cette arme que tu es ici.~ */
  IF ~~ THEN REPLY #60182 /* ~Écho : "Dak'kon, *zerth* de Shra'kt'lor-La-Noyée, dernier utilisateur de la lame de *karach*, sache que je viens à toi porteur des paroles de Zerthimon, gravées non pas dans le chaos, mais sur la pierre, gravées par la volonté dans un Cercle Ininterrompu."~ */ DO ~SetAnimState("Dakkon",ANIM_MIMESTAND)
~ GOTO 348
  IF ~~ THEN REPLY #60183 /* ~Refoule le souvenir…~ */ GOTO 225
END

IF ~~ THEN BEGIN 348 // from: 347.0
  SAY #60184 /* ~En entendant le nom de 'Zerthimon', les yeux de Dak'kon roulent et tentent de se fixer sur toi. Difficilement, il essaie d'ouvrir la bouche pour parler, mais il n'en sort qu'un sifflement sec. Tu sors la pierre de ton sac et la mets devant lui pour qu'il puisse la voir.~ */
  IF ~~ THEN REPLY #60185 /* ~Écho : "Sache que les paroles de Zerthimon inscrites sur cette pierre sont vraies et sache que ton esprit divisé n'a plus besoin de l'être davantage. Tu dois juste prendre la pierre pour te *connaître* de nouveau."~ */ DO ~SetAnimState("Dakkon",ANIM_MIMESTAND)
~ GOTO 349
  IF ~~ THEN REPLY #60186 /* ~Refoule le souvenir…~ */ GOTO 225
END

IF ~~ THEN BEGIN 349 // from: 348.0
  SAY #60187 /* ~Les yeux de Dak'kon vacillent devant le Cercle Ininterrompu de Zerthimon et pendant un moment, tu penses qu'il est trop près de la mort pour le reconnaître. Puis sa main droite se crispe et il la tire lentement de sa prison de terre, la masse compacte de terre coulant sous ses doigts pour se transformer en eau sous les vents chaotiques des Limbes. Ses mains squelettiques saisissent la pierre, comme un homme qui sombre, et ses yeux lancent des éclairs.~ */
  IF ~  Global("Memory_Shraktlor","GLOBAL",0)
~ THEN REPLY #60188 /* ~Écho : "Sache que je t'ai sauvé la vie, Dak'kon, *zerth* de Shra'kt'lor."~ */ DO ~SetGlobal("Memory_Shraktlor","GLOBAL",1)
GiveExperience(Protagonist,6000)
SetAnimState("Dakkon",ANIM_MIMESTAND)
~ JOURNAL #60191 /* ~En parlant avec Dak'kon, je me suis souvenue lui avoir sauvé la vie à Shra'kt'lor avec le Cercle Ininterrompu de Zerthimon… ce qui est étrange, c'est que je ne pense pas que je voulais le sauver - je voulais empêcher la destruction de l'épée de *karach*. Mais je ne sais pas *pourquoi*.~ */ GOTO 350
  IF ~  GlobalGT("Memory_Shraktlor","GLOBAL",1)
~ THEN REPLY #60189 /* ~Écho : "Sache que je t'ai sauvé la vie, Dak'kon, *zerth* de Shra'kt'lor."~ */ DO ~SetAnimState("Dakkon",ANIM_MIMESTAND)
~ GOTO 350
  IF ~~ THEN REPLY #60190 /* ~Refoule le souvenir…~ */ GOTO 225
END

IF ~~ THEN BEGIN 350 // from: 349.0 349.1
  SAY #60192 /* ~Les yeux de Dak'kon se détournent de la pierre pour vaciller vers toi et il siffle de nouveau, mais trop sèchement pour prononcer le moindre mot. Il cligne des yeux, puis parle d'une voix à peine plus audible qu'un chuchotement, mais ses paroles sont celles que tu voulais entendre. "Ma… vie est à toi… jusqu'à ta mort…"~ */
  IF ~~ THEN REPLY #60193 /* ~Ferme les yeux, reviens dans le présent.~ */ DO ~FadeToColor([20.0],0)
Wait(3)
FadeFromColor([20.0],0)
~ GOTO 225
END

IF ~~ THEN BEGIN 351 // from: 318.0
  SAY #60194 /* ~Dak'kon secoue la tête. "Je peux t'aider dans l'art de la guerre, mais je ne peux pas t'enseigner le talent nécessaire. Mes armes ne sont pas faites d'acier, mais de la *volonté* et de la *connaissance* de soi."~ */
  IF ~  GlobalGT("Mage_Training","GLOBAL",0)
~ THEN REPLY #60195 /* ~"Tu peux peut-être m'aider et m'entraîner encore un peu…"~ */ DO ~SetAnimState("Dakkon",ANIM_MIMESTAND)
~ GOTO 318
  IF ~~ THEN REPLY #60196 /* ~"Très bien. Si je dois reprendre mon métier de guerrier, je m'adresserai à toi. J'avais d'autres questions…"~ */ GOTO 193
  IF ~~ THEN REPLY #60197 /* ~"Bon, peu importe. Allons-y."~ */ EXIT
END

IF ~~ THEN BEGIN 352 // from: 193.5
  SAY #60198 /* ~"La guenaude… elle ne *sait* RIEN…" L'épée de Dak'kon ondule et ses bords deviennent gris et ternes. son visage se crispe et il parle entre ses dents. "Je ne *veux* pas parler de ça."~ */
  IF ~~ THEN REPLY #60199 /* ~"J'aimerais quand même l'entendre… En fait, Ravel a dit certaines choses au cours de cette conversation qui m'intéressent."~ */ GOTO 353
  IF ~~ THEN REPLY #60200 /* ~"Très bien. Il y a d'autres choses que j'aimerais *savoir*…"~ */ GOTO 193
  IF ~~ THEN REPLY #60201 /* ~"Alors, n'en parlons plus. Allons-y."~ */ EXIT
END

IF ~~ THEN BEGIN 353 // from: 352.0
  SAY #60202 /* ~"*Sache* que ta volonté est ma *volonté*. Lorsque tu parles, *sache* que je dois t'entendre. *Sache* que tes paroles peuvent immobiliser mon épée ou la guider vers la gorge de quelqu'un."~ */
  IF ~~ THEN REPLY #60203 /* ~"Quoi ? Mais pourquoi ?"~ */ DO ~SetGlobal("Dakkon_Slave","GLOBAL",1)
GiveExperience(Protagonist,3000)
~ GOTO 354
  IF ~~ THEN REPLY #60204 /* ~"N'en parlons plus. Il y a d'autres choses que j'aimerais *savoir*…"~ */ GOTO 193
  IF ~~ THEN REPLY #60205 /* ~"Je ne veux pas en entendre davantage. Allons-y."~ */ EXIT
END

IF ~~ THEN BEGIN 354 // from: 353.0
  SAY #60206 /* ~Dak'kon semble t'ignorer, comme si ton regard lui était insoutenable. "Ta voie est ma voie. Je suis enchaîné à toi."~ */
  IF ~~ THEN REPLY #60207 /* ~"Tu es mon esclave ?"~ */ DO ~SetAnimState("Dakkon",ANIM_MIMESTAND)
~ GOTO 355
END

IF ~~ THEN BEGIN 355 // from: 354.0
  SAY #60208 /* ~En entendant le mot 'esclave', le visage de Dak'kon se crispe de douleur, comme s'il avait été frappé… comme si ce mot, tel une dague, le touchait au cœur de sa souffrance.~ */
  IF ~~ THEN REPLY #60209 /* ~"Mais… pourquoi, Dak'kon ?"~ */ GOTO 356
END

IF ~~ THEN BEGIN 356 // from: 355.0
  SAY #60210 /* ~"*Sache* que c'est… une longue histoire et *sache* que rien n'est gagné en la racontant."~ */
  IF ~~ THEN REPLY #60211 /* ~"J'aimerais l'entendre."~ */ JOURNAL #59286 /* ~Dak'kon m'a expliqué la nature de son esclavage. Quand je lui ai sauvé la vie, il a prêté serment de me servir jusqu'à la mort. Mais il ignorait que j'étais immortel, et il a donc promis de me servir éternellement.~ */ GOTO 215
  IF ~~ THEN REPLY #60212 /* ~"Peu importe, alors. Il y a d'autres choses que j'aimerais *savoir*…"~ */ GOTO 193
  IF ~~ THEN REPLY #60213 /* ~"Alors, n'en parlons plus. Allons-y."~ */ EXIT
END

IF ~~ THEN BEGIN 357 // from:
  SAY #60401 /* ~"Nous devons aider un githyanki ? Qu'est-ce qui l'a attiré ici, loin du chant sanguinaire de ses frères ?"~ */
  IF ~~ THEN EXTERN ~DANIZIUS~ 17
END

IF ~~ THEN BEGIN 358 // from:
  SAY #61670 /* ~"Simples mouches sur le chemin de Zerthimon."~ [DAK204] */
  IF ~~ THEN DO ~IncrementGlobal("Grace_Talked_Dakkon","GLOBAL",1)
~ EXIT
END

IF ~~ THEN BEGIN 359 // from:
  SAY #61671 /* ~"Aux yeux de Zerthimon, je ne suis rien."~ [DAK203A] */
  IF ~~ THEN EXTERN ~BGRACE~ 15
END

IF ~~ THEN BEGIN 360 // from:
  SAY #61672 /* ~"J'ai encore une longue route à parcourir. Ceci n'en est que le début."~ [DAK203B] */
  IF ~~ THEN DO ~SetGlobal("Grace_Talked_Dakkon","GLOBAL",0)
~ EXIT
END

IF ~~ THEN BEGIN 361 // from:
  SAY #64995 /* ~"Un instant. Regarde le sol ici." Tu baisses les yeux et remarques des traces de pas boueuses qui conduisent à l'arche… et ne la contournent pas. "Beaucoup de gens sont passés par là. Cette arche doit être un portail." ~ */
  IF ~~ THEN REPLY #64997 /* ~"Un portail ? Comment l'ouvrir ?"~ */ GOTO 362
  IF ~~ THEN REPLY #64998 /* ~"Peut-être. En route." ~ */ EXIT
END

IF ~~ THEN BEGIN 362 // from: 361.0
  SAY #64996 /* ~"Je ne *sais* pas, mais à en juger par le nombre de gens qui ont franchi ce portail, la clé ne peut pas être un objet rare. Peut-être que l'un des habitants de la place *sait* comment le franchir."~ */
  IF ~~ THEN REPLY #64999 /* ~"Je vais demander. En route." ~ */ EXIT
END

IF ~~ THEN BEGIN 363 // from: 318.5
  SAY #68059 /* ~"*Sache* que je ne puis te l'enseigner, mais je peux par contre faire office de guide. Je ne *sais* pas comment les humains parviennent à maîtriser l'Art mais, quand tu auras réussi, reviens me poser ta question."~ */
  IF ~~ THEN REPLY #68060 /* ~"Dans ce cas, je t'en reparlerai quand je serai mage. Mais en attendant, j'aurais d'autres questions…"~ */ GOTO 193
  IF ~~ THEN REPLY #68061 /* ~"Je vais d'abord essayer de trouver quelqu'un pouvant m'enseigner la magie. Allons-y."~ */ EXIT
END

IF ~  Global("Fortress_Dakkon","GLOBAL",3)
~ THEN BEGIN 364 // from:
  SAY #68195 /* ~Quand ton pouvoir l'enveloppe, Dak'kon se remet brusquement à respirer. Il lève la tête mais a l'air encore tout faible. Il vit à peine.~ */
  IF ~  Global("Dakkon_Teach","GLOBAL",19)
Global("Absorb","GLOBAL",0)
~ THEN REPLY #68196 /* ~"Un jour, Dak'kon, tu m'as parlé des Deux Morts en Une. L'heure est venue."~ */ DO ~SetGlobal("Fortress_Dakkon","GLOBAL",4)
SetGlobal("BD_TWO_DEATHS","GLOBAL",1)
JoinPartyEx(TRUE)
~ GOTO 367
  IF ~  GlobalLT("Dakkon_Teach","GLOBAL",19)
Global("Absorb","GLOBAL",0)
~ THEN REPLY #68197 /* ~"C'est maintenant que j'ai besoin de toi, Dak'kon. Peux-tu m'aider ?"~ */ DO ~SetGlobal("Fortress_Dakkon","GLOBAL",4)
JoinPartyEx(TRUE)
~ GOTO 365
  IF ~  GlobalGT("Absorb","GLOBAL",0)
~ THEN REPLY #68340 /* ~RÉVEILLE-TOI, DAK'KON DE SHRA'KT'LOR, DERNIER PORTEUR DE L'ÉPÉE DE *KARACH*.~ */ GOTO 368
END

IF ~~ THEN BEGIN 365 // from: 364.1 367.0
  SAY #68198 /* ~Dak'kon inspire profondément et son état s'améliore soudain. La lame de son épée retrouve tout son tranchant. "Cette arme est à toi."~ [DAK025] */
  IF ~  Global("Trans_Vanish","GLOBAL",0)
~ THEN REPLY #68199 /* ~"Très bien."~ */ EXTERN ~DTRANS~ 142
  IF ~  Global("Trans_Vanish","GLOBAL",1)
GlobalGT("Fortress_Annah","GLOBAL",0)
~ THEN REPLY #68200 /* ~"Très bien."~ */ DO ~StartCutSceneMode()
StartCutSceneEx("1204a0",FALSE)
~ EXIT
  IF ~  Global("Trans_Vanish","GLOBAL",1)
Global("Fortress_Annah","GLOBAL",0)
GlobalGT("Fortress_Grace","GLOBAL",0)
~ THEN REPLY #68201 /* ~"Très bien."~ */ DO ~StartCutSceneMode()
StartCutSceneEx("1204g0",FALSE)
~ EXIT
  IF ~  Global("Trans_Vanish","GLOBAL",1)
Global("Fortress_Annah","GLOBAL",0)
Global("Fortress_Grace","GLOBAL",0)
GlobalGT("Fortress_Ignus","GLOBAL",0)
Global("Fortress_Ignus_Battle","GLOBAL",0)
~ THEN REPLY #68202 /* ~"Très bien."~ */ DO ~StartCutSceneMode()
StartCutSceneEx("1204i0",FALSE)
~ EXIT
  IF ~  Global("Trans_Vanish","GLOBAL",1)
Global("Fortress_Annah","GLOBAL",0)
Global("Fortress_Grace","GLOBAL",0)
Global("Fortress_Ignus","GLOBAL",0)
GlobalGT("Fortress_Vhailor","GLOBAL",0)
Global("Fortress_Vhailor_Battle","GLOBAL",0)
~ THEN REPLY #68203 /* ~"Très bien."~ */ DO ~StartCutSceneMode()
StartCutSceneEx("1204v0",FALSE)
~ EXIT
  IF ~  Global("Trans_Vanish","GLOBAL",1)
Global("Fortress_Annah","GLOBAL",0)
Global("Fortress_Grace","GLOBAL",0)
Global("Fortress_Ignus","GLOBAL",0)
Global("Fortress_Vhailor","GLOBAL",0)
GlobalGT("Fortress_Nordom","GLOBAL",0)
~ THEN REPLY #68204 /* ~"Très bien."~ */ DO ~StartCutSceneMode()
StartCutSceneEx("1204n0",FALSE)
~ EXIT
  IF ~  Global("Trans_Vanish","GLOBAL",1)
Global("Fortress_Annah","GLOBAL",0)
Global("Fortress_Grace","GLOBAL",0)
Global("Fortress_Ignus","GLOBAL",0)
Global("Fortress_Vhailor","GLOBAL",0)
Global("Fortress_Nordom","GLOBAL",0)
~ THEN REPLY #68240 /* ~"Très bien."~ */ DO ~StartCutSceneMode()
StartCutSceneEx("1204tr",FALSE)
~ EXIT
  IF ~  Global("Trans_Vanish","GLOBAL",1)
Global("Fortress_Annah","GLOBAL",0)
Global("Fortress_Grace","GLOBAL",0)
Global("Fortress_Ignus","GLOBAL",0)
GlobalGT("Fortress_Vhailor","GLOBAL",0)
Global("Fortress_Vhailor_Battle","GLOBAL",1)
Global("Fortress_Nordom","GLOBAL",0)
~ THEN REPLY #68433 /* ~"Très bien."~ */ DO ~StartCutSceneMode()
StartCutSceneEx("1204tr",FALSE)
~ EXIT
  IF ~  Global("Trans_Vanish","GLOBAL",1)
Global("Fortress_Annah","GLOBAL",0)
Global("Fortress_Grace","GLOBAL",0)
GlobalGT("Fortress_Ignus","GLOBAL",0)
Global("Fortress_Vhailor","GLOBAL",0)
Global("Fortress_Ignus_Battle","GLOBAL",1)
Global("Fortress_Nordom","GLOBAL",0)
~ THEN REPLY #68434 /* ~"Très bien."~ */ DO ~StartCutSceneMode()
StartCutSceneEx("1204tr",FALSE)
~ EXIT
  IF ~  Global("Trans_Vanish","GLOBAL",1)
Global("Fortress_Annah","GLOBAL",0)
Global("Fortress_Grace","GLOBAL",0)
GlobalGT("Fortress_Ignus","GLOBAL",0)
Global("Fortress_Ignus_Battle","GLOBAL",1)
GlobalGT("Fortress_Vhailor","GLOBAL",0)
Global("Fortress_Vhailor_Battle","GLOBAL",0)
~ THEN REPLY #68444 /* ~"Très bien."~ */ DO ~StartCutSceneMode()
StartCutSceneEx("1204v0",FALSE)
~ EXIT
END

IF ~~ THEN BEGIN 366 // from: 193.4
  SAY #68255 /* ~Dak'kon secoue la tête. "*Sache* que nos ennemis sont proches. Le moment est mal choisi."~ */
  IF ~~ THEN REPLY #68256 /* ~"Très bien."~ */ EXIT
END

IF ~~ THEN BEGIN 367 // from: 364.0
  SAY #68270 /* ~Lorsque tu prononces ces paroles, Dak'kon ferme les yeux. L'espace d'un instant, tu as l'impression qu'il ne parvient pas à s'accrocher à la vie. Puis, quand il rouvre les yeux, ceux-ci ne sont plus noirs. Ils sont désormais métalliques, comme sa lame, et tu sais que Dak'kon est devenu un être *différent*… et bien plus puissant.~ */
  IF ~~ THEN DO ~GiveExperience("Dakkon",2000000)
SetGlobal("BD_DAKKON_MORALE","GLOBAL",20)
PermanentStatChange("Dakkon",STR,RAISE,1)
PermanentStatChange("Dakkon",DEX,RAISE,3)
PermanentStatChange("Dakkon",CON,RAISE,3)
FullHealEx("Dakkon")
~ GOTO 365
END

IF ~~ THEN BEGIN 368 // from: 364.2
  SAY #68341 /* ~Dak'kon hoche lentement la tête en t'entendant parler. "Ta voix… es-tu enfin parvenu à te *connaître* toi-même ?"~ */
  IF ~~ THEN REPLY #68342 /* ~OUI, MAIS CELA A ÉTÉ LABORIEUX ET A COÛTÉ PLUSIEURS VIES. NOMBREUX SONT CEUX QUI ONT PÉRI AFIN QUE JE PUISSE DE NOUVEAU ME CONNAÎTRE MOI-MÊME.~ */ GOTO 369
END

IF ~~ THEN BEGIN 369 // from: 368.0
  SAY #68343 /* ~"Se *connaître* soi-même est une voie difficile."~ */
  IF ~~ THEN REPLY #68344 /* ~CE FAISANT, JE SAIS OÙ J'IRAI BIENTÔT. LE TEMPS ET LE DESTIN SE RAPPROCHENT DE MOI ALORS MÊME QUE NOUS PARLONS, ET JE NE RESTERAI PAS ICI LONGTEMPS. SI TU VEUX, DAK'KON, JE PEUX TE RENVOYER À SIGIL.~ */ GOTO 370
END

IF ~~ THEN BEGIN 370 // from: 369.0
  SAY #68345 /* ~Dak'kon garde un instant le silence. Quand il reprend la parole, c'est d'un ton sec, comme pour rompre le lien qui vous unit. "*Sache* que j'avais autrefois une dette envers toi. *Sache* que tu m'as sauvé la vie, et que je t'ai suivi pour payer ma dette."~ */
  IF ~~ THEN GOTO 371
END

IF ~~ THEN BEGIN 371 // from: 370.0
  SAY #68346 /* ~"Je l'ai payée en donnant ma vie pour toi. Nous sommes quittes."~ [DAK030] */
  IF ~  GlobalGT("Fortress_Grace","GLOBAL",0)
~ THEN REPLY #68347 /* ~TRÈS BIEN, DAK'KON. NOS DEUX MORTS N'EN ONT FAIT QU'UNE. C'EST LIBRE QUE TU QUITTERAS CE LIEU.~ */ DO ~StartCutSceneMode()
StartCutSceneEx("1204g0",FALSE)
~ EXIT
  IF ~  GlobalGT("Fortress_Nordom","GLOBAL",0)
Global("Fortress_Grace","GLOBAL",0)
~ THEN REPLY #68348 /* ~TRÈS BIEN, DAK'KON. NOS DEUX MORTS N'EN ONT FAIT QU'UNE. C'EST LIBRE QUE TU QUITTERAS CE LIEU.~ */ DO ~StartCutSceneMode()
StartCutSceneEx("1204n0",FALSE)
~ EXIT
  IF ~  GlobalGT("Fortress_Ignus","GLOBAL",0)
Global("Fortress_Ignus_Battle","GLOBAL",0)
Global("Fortress_Nordom","GLOBAL",0)
Global("Fortress_Grace","GLOBAL",0)
~ THEN REPLY #68349 /* ~TRÈS BIEN, DAK'KON. NOS DEUX MORTS N'EN ONT FAIT QU'UNE. C'EST LIBRE QUE TU QUITTERAS CE LIEU.~ */ DO ~StartCutSceneMode()
StartCutSceneEx("1204i0",FALSE)
~ EXIT
  IF ~  GlobalGT("Fortress_Vhailor","GLOBAL",0)
Global("Fortress_Vhailor_Battle","GLOBAL",0)
Global("Fortress_Ignus","GLOBAL",0)
Global("Fortress_Nordom","GLOBAL",0)
Global("Fortress_Grace","GLOBAL",0)
~ THEN REPLY #68350 /* ~TRÈS BIEN, DAK'KON. NOS DEUX MORTS N'EN ONT FAIT QU'UNE. C'EST LIBRE QUE TU QUITTERAS CE LIEU.~ */ DO ~StartCutSceneMode()
StartCutSceneEx("1204v0",FALSE)
~ EXIT
  IF ~  Global("Fortress_Vhailor","GLOBAL",0)
Global("Fortress_Ignus","GLOBAL",0)
Global("Fortress_Nordom","GLOBAL",0)
Global("Fortress_Grace","GLOBAL",0)
~ THEN REPLY #68351 /* ~TRÈS BIEN, DAK'KON. NOS DEUX MORTS N'EN ONT FAIT QU'UNE. C'EST LIBRE QUE TU QUITTERAS CE LIEU.~ */ DO ~QuitGame(FINALE,0,0)
~ EXIT
  IF ~  GlobalGT("Fortress_Vhailor","GLOBAL",0)
Global("Fortress_Vhailor_Battle","GLOBAL",0)
GlobalGT("Fortress_Ignus","GLOBAL",0)
Global("Fortress_Nordom","GLOBAL",0)
Global("Fortress_Grace","GLOBAL",0)
Global("Fortress_Ignus_Battle","GLOBAL",1)
~ THEN REPLY #68496 /* ~TRÈS BIEN, DAK'KON. NOS DEUX MORTS N'EN ONT FAIT QU'UNE. C'EST LIBRE QUE TU QUITTERAS CE LIEU.~ */ DO ~StartCutSceneMode()
StartCutSceneEx("1204v0",FALSE)
~ EXIT
  IF ~  GlobalGT("Fortress_Vhailor","GLOBAL",0)
Global("Fortress_Vhailor_Battle","GLOBAL",1)
Global("Fortress_Ignus","GLOBAL",0)
Global("Fortress_Grace","GLOBAL",0)
Global("Fortress_Nordom","GLOBAL",0)
~ THEN REPLY #68497 /* ~TRÈS BIEN, DAK'KON. NOS DEUX MORTS N'EN ONT FAIT QU'UNE. C'EST LIBRE QUE TU QUITTERAS CE LIEU.~ */ DO ~QuitGame(FINALE,0,0)
~ EXIT
  IF ~  GlobalGT("Fortress_Ignus","GLOBAL",0)
Global("Fortress_Ignus_Battle","GLOBAL",1)
Global("Fortress_Vhailor","GLOBAL",0)
Global("Fortress_Grace","GLOBAL",0)
Global("Fortress_Nordom","GLOBAL",0)
~ THEN REPLY #68498 /* ~TRÈS BIEN, DAK'KON. NOS DEUX MORTS N'EN ONT FAIT QU'UNE. C'EST LIBRE QUE TU QUITTERAS CE LIEU.~ */ DO ~QuitGame(FINALE,0,0)
~ EXIT
END

IF ~  Global("Fortress_Dakkon","GLOBAL",4)
~ THEN BEGIN 372 // from:
  SAY #68412 /* ~Dak'kon hoche la tête. "Cette arme est à toi."~ [DAK025] */
  IF ~~ THEN REPLY #68413 /* ~"Très bien. Autant l'utiliser, dans ce cas…"~ */ EXIT
END
