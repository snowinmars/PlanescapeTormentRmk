// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DAWAIT.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\fr_FR\dialog.tlk
// dialogF  : (none)

BEGIN ~DAWAIT~

IF ~  Global("Await","GLOBAL",0)
~ THEN BEGIN 0 // from:
  SAY #1788 /* ~Devant toi se tient un jeune Homme-Poussière. Il a des cernes et une barbe de plusieurs jours. Il fixe le mur, et son expression est sinistre.~ */
  IF ~~ THEN REPLY #14076 /* ~"Bonjour."~ */ DO ~SetGlobal("Await","GLOBAL",1)
~ GOTO 3
  IF ~~ THEN REPLY #14077 /* ~Laisse-le.~ */ EXIT
END

IF ~  Global("Await","GLOBAL",1)
~ THEN BEGIN 1 // from:
  SAY #1789 /* ~Tu aperçois Attente-de-la-Mort. Il ne semble pas te voir.~ */
  IF ~~ THEN REPLY #14078 /* ~"Bonjour."~ */ GOTO 3
  IF ~~ THEN REPLY #14079 /* ~Ignore-le et passe ton chemin.~ */ EXIT
END

IF ~  Global("Await","GLOBAL",2)
~ THEN BEGIN 2 // from:
  SAY #14007 /* ~Alors que tu t'approches, Attente-de-la-Mort se tourne vers toi. "Rebonjour." Son visage se fend d'un léger sourire. "Merci pour ton aide."~ */
  IF ~~ THEN REPLY #14080 /* ~"Je t'en prie. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 0.0 1.0
  SAY #14008 /* ~L'Homme-Poussière ne lève pas les yeux. Il regarde droit devant lui, comme s'il voyait quelque chose à plusieurs lieues au-delà des murs du bar.~ */
  IF ~  NearbyDialog("DMorte")
Global("Morte_Await_Quip_1","GLOBAL",0)
~ THEN REPLY #14081 /* ~"Je peux te poser quelques questions ?"~ */ DO ~SetGlobal("Morte_Await_Quip_1","GLOBAL",1)
~ GOTO 4
  IF ~  NearbyDialog("DMorte")
Global("Morte_Await_Quip_1","GLOBAL",1)
~ THEN REPLY #14082 /* ~"Je peux te poser quelques questions ?"~ */ GOTO 5
  IF ~  !NearbyDialog("DMorte")
~ THEN REPLY #14083 /* ~"Je peux te poser quelques questions ?"~ */ GOTO 5
  IF ~  Global("Mortai_Contract","GLOBAL",1)
GlobalGT("Coppereyes_Contract","GLOBAL",0)
~ THEN REPLY #14084 /* ~"Au revoir."~ */ GOTO 6
  IF ~  Global("Mortai_Contract","GLOBAL",1)
Global("Coppereyes_Contract","GLOBAL",0)
~ THEN REPLY #14085 /* ~"Au revoir."~ */ GOTO 6
  IF ~  Global("Mortai_Contract","GLOBAL",0)
GlobalGT("Coppereyes_Contract","GLOBAL",0)
~ THEN REPLY #14086 /* ~"Au revoir."~ */ GOTO 6
  IF ~  Global("Mortai_Contract","GLOBAL",0)
Global("Coppereyes_Contract","GLOBAL",0)
~ THEN REPLY #14087 /* ~"Au revoir."~ */ GOTO 15
END

IF ~~ THEN BEGIN 4 // from: 3.0
  SAY #14009 /* ~L'Homme-Poussière ne répond pas. Il regarde toujours au loin.~ */
  IF ~~ THEN EXTERN ~DMORTE~ 168
END

IF ~~ THEN BEGIN 5 // from: 3.1 3.2
  SAY #14010 /* ~L'Homme-Poussière ne répond pas. Il regarde toujours au loin.~ */
  IF ~  Global("Mortai_Contract","GLOBAL",1)
GlobalGT("Coppereyes_Contract","GLOBAL",0)
~ THEN REPLY #14088 /* ~"Alors, au revoir."~ */ GOTO 6
  IF ~  Global("Mortai_Contract","GLOBAL",1)
Global("Coppereyes_Contract","GLOBAL",0)
~ THEN REPLY #14089 /* ~"Alors, au revoir."~ */ GOTO 6
  IF ~  Global("Mortai_Contract","GLOBAL",0)
GlobalGT("Coppereyes_Contract","GLOBAL",0)
~ THEN REPLY #14090 /* ~"Alors, au revoir."~ */ GOTO 6
  IF ~  Global("Mortai_Contract","GLOBAL",0)
Global("Coppereyes_Contract","GLOBAL",0)
~ THEN REPLY #14091 /* ~"Alors, au revoir."~ */ GOTO 15
END

IF ~~ THEN BEGIN 6 // from: 3.3 3.4 3.5 5.0 5.1 5.2
  SAY #14011 /* ~Alors que tu t'apprêtes à partir, l'Homme-Poussière parle soudain, sa voix est quasiment inaudible - tu dois faire un effort pour entendre ses paroles. Tu *penses* qu'il a mentionné un contrat.~ */
  IF ~~ THEN REPLY #14092 /* ~"Qu'est-ce que tu as dit ?"~ */ GOTO 7
  IF ~~ THEN REPLY #14093 /* ~Ignore-le et pars.~ */ EXIT
END

IF ~~ THEN BEGIN 7 // from: 6.0
  SAY #14012 /* ~L'Homme-Poussière se tourne vers toi, le visage de marbre, les yeux éteints. "Pourquoi as-tu signé ce Contrat à mort ?"~ */
  IF ~~ THEN REPLY #14094 /* ~Vérité : "J'avais besoin d'argent."~ */ GOTO 8
  IF ~~ THEN REPLY #14095 /* ~Vérité : "Je me disais que je retrouverais peut-être la mémoire."~ */ GOTO 9
  IF ~~ THEN REPLY #14096 /* ~Vérité : "Eh bien, étant donné que la mort et moi sommes brouillés, je ne pouvais pas perdre."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Await_1","GLOBALLaw",-1)
~ GOTO 10
  IF ~~ THEN REPLY #14097 /* ~Vérité : "Pour être honnête, je ne sais pas."~ */ GOTO 11
  IF ~~ THEN REPLY #14098 /* ~"Ça te regarde ?"~ */ GOTO 16
  IF ~~ THEN REPLY #14099 /* ~"Ça ne te regarde pas. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 8 // from: 7.0
  SAY #14013 /* ~Il a l'air dégoûté. "Le jonc. J'aurais dû m'en douter."~ */
  IF ~~ THEN REPLY #14100 /* ~"Pourquoi est-ce que j'aurais fait ça sinon ?"~ */ GOTO 12
END

IF ~~ THEN BEGIN 9 // from: 7.1
  SAY #14014 /* ~"Réveiller tes souvenirs ?" Il se renfrogne. "Et ne te souvenir que de cette vie que tu as laissée derrière ?"~ */
  IF ~~ THEN REPLY #14101 /* ~"Pourquoi est-ce que j'aurais fait ça sinon ?"~ */ GOTO 12
END

IF ~~ THEN BEGIN 10 // from: 7.2
  SAY #14015 /* ~Il te regarde avec une expression bizarre. "Que veux-tu dire ?"~ */
  IF ~  GlobalGT("Death","GLOBAL",0)
~ THEN REPLY #14102 /* ~"J'ai vu ce qu'il y a après la mort."~ */ GOTO 26
  IF ~  Global("Death","GLOBAL",0)
~ THEN REPLY #14103 /* ~"Je ne sais pas. Il faut encore que je sache ce qu'il y a après la mort et que je m'en souvienne. Si je meurs de nouveau, je pourrai peut-être en parler."~ */ GOTO 59
  IF ~  Global("Death","GLOBAL",0)
~ THEN REPLY #14104 /* ~"J'ai déjà connu la mort. Mais, je ne m'en souviens pas vraiment."~ */ GOTO 59
  IF ~~ THEN REPLY #14105 /* ~"Rien de spécial. Disons que c'est un pressentiment."~ */ GOTO 57
  IF ~~ THEN REPLY #14106 /* ~"Tant pis. Je dois m'en aller. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 11 // from: 7.3
  SAY #14016 /* ~L'Homme-Poussière *toussote*. "Et tu as vendu ton corps sans arrière-pensée, sans aucune considération… et voilà. Tu ne cherchais rien d'autre ?"~ */
  IF ~~ THEN REPLY #14107 /* ~"Quoi… ?"~ */ GOTO 12
END

IF ~~ THEN BEGIN 12 // from: 8.0 9.0 11.0
  SAY #14017 /* ~"Une délivrance ? Une délivrance de cette existence. Écoute… t'as sûrement vu les cadavres qui marchent dans les rues de Sigil ?" Il soupire. "Sans esprit, incapables de ressentir de la douleur ou de la colère ou le poids des années… voilà la Vraie Mort qui marche là. La perfection."~ */
  IF ~~ THEN REPLY #14108 /* ~"Qui voudrait une chose pareille ?"~ */ GOTO 13
  IF ~~ THEN REPLY #14109 /* ~"La 'perfection' ? Bâcle ça. Ce n'est rien d'autre que de la pourriture."~ */ GOTO 14
  IF ~~ THEN REPLY #14110 /* ~"Tu n'es pas bien vieux, tu es juste ignorant. Tu as toute la vie devant toi avant de mourir. La mort viendra te chercher suffisamment tôt, alors profite de la vie."~ */ GOTO 24
  IF ~~ THEN REPLY #14111 /* ~"Peut-être, ce n'est pas à moi de le dire. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 13 // from: 12.0
  SAY #14018 /* ~"J'aimerais - la délivrance est ce que je désire le plus. Le vide. Plus de douleur et de souffrance."~ */
  IF ~~ THEN REPLY #14112 /* ~"Tu as envie de mourir ?"~ */ GOTO 22
  IF ~~ THEN REPLY #14113 /* ~"Je dois m'en aller. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 14 // from: 12.1
  SAY #14019 /* ~"*Vraiment* ? Tu ne vois que la surface, je vois une délivrance de la douleur et de la misère."~ */
  IF ~~ THEN REPLY #14114 /* ~"Tu as envie de mourir ?"~ */ GOTO 22
  IF ~~ THEN REPLY #14115 /* ~"Je dois m'en aller. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 15 // from: 3.6 5.3
  SAY #14020 /* ~Alors que tu t'apprêtes à partir, l'Homme-Poussière se met à parler et sa voix est quasiment inaudible - tu dois tendre l'oreille pour entendre ses paroles. Tu *penses* qu'il a dit qu'il voulait mourir.~ */
  IF ~~ THEN REPLY #14116 /* ~"Qu'est-ce que tu as dit ?"~ */ GOTO 16
  IF ~~ THEN REPLY #14117 /* ~Ignore-le et pars.~ */ EXIT
END

IF ~~ THEN BEGIN 16 // from: 7.4 15.0
  SAY #14021 /* ~L'expression du garçon ne vacille pas. "Tu veux mourir ?"~ */
  IF ~~ THEN REPLY #14118 /* ~Vérité : "Non. Et toi ?"~ */ DO ~SetGlobal("Await_Die_Answer","GLOBAL",1)
~ GOTO 19
  IF ~~ THEN REPLY #14120 /* ~Vérité : "Oui. Et toi ?"~ */ DO ~SetGlobal("Await_Die_Answer","GLOBAL",3)
~ GOTO 18
  IF ~~ THEN REPLY #14121 /* ~Mensonge : "Oui. Et toi ?"~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Await_3","GLOBALLaw",-1)
SetGlobal("Await_Die_Answer","GLOBAL",4)
~ GOTO 18
  IF ~~ THEN REPLY #14122 /* ~"Je ne sais pas vraiment. Et *toi*, tu veux mourir ?"~ */ DO ~SetGlobal("Await_Die_Answer","GLOBAL",5)
~ GOTO 22
  IF ~~ THEN REPLY #14123 /* ~"Tu me *menaces*, mon gars ?"~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Await_1","GLOBALGood",-1)
~ GOTO 17
  IF ~~ THEN REPLY #14124 /* ~"Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 17 // from: 16.4
  SAY #14022 /* ~Il cligne des yeux. "Oui… oui. Pourquoi, tu vas me tuer ?" Il se raidit, comme s'il prenait une résolution. "Vas-y, ça m'est égal."~ */
  IF ~~ THEN REPLY #14125 /* ~"Si c'est ce que tu veux, j'exhausserai ton souhait… Prépare-toi à mourir."~ */ DO ~Help()
Enemy()
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
~ EXIT
  IF ~~ THEN REPLY #14126 /* ~"Tu *veux* mourir ?"~ */ GOTO 22
  IF ~~ THEN REPLY #14127 /* ~"Moi aussi, ça m'est égal. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 18 // from: 16.1 16.2
  SAY #14023 /* ~"Oui…" Il t'examine. "Pourquoi veux-tu mourir ?"~ */
  IF ~~ THEN REPLY #14128 /* ~Vérité : "Pourquoi est-ce que j'aurais envie de vivre ? Pour moi, cette cité n'est qu'un piège rempli de bêtes et de monstres, et je ne me souviens même pas pourquoi je suis là. Tout comme moi-même, cette cité m'est étrangère. La vie n'a aucune valeur pour moi."~ */ GOTO 20
  IF ~~ THEN REPLY #14129 /* ~Vérité : "Parce que je ne le peux pas. C'est pour ça que j'en ai envie."~ */ GOTO 20
  IF ~~ THEN REPLY #14130 /* ~Vérité : "Il me… manque quelque chose. Je suis là, en train de parler avec toi, mais je me sens comme vide à l'intérieur. Quoi que je fasse, je ne ressens rien. Je crois que la mort serait préférable."~ */ GOTO 20
  IF ~~ THEN REPLY #14131 /* ~Vérité : "Je crois que la mort me permettrait d'apprendre sur moi des choses que la vie ne peut pas m'apprendre."~ */ GOTO 20
  IF ~  Global("Await_Die_Answer","GLOBAL",3)
~ THEN REPLY #14132 /* ~Vérité : "Je t'ai menti quand je t'ai dit que je voulais mourir. Qui a envie de mourir ? Tu en as envie, toi ?"~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Await_7","GLOBALLaw",-2)
~ GOTO 20
  IF ~  Global("Await_Die_Answer","GLOBAL",4)
~ THEN REPLY #14133 /* ~Vérité : "Je t'ai menti quand je t'ai dit que je voulais mourir. Qui a envie de mourir ? Tu en as envie, toi ?"~ */ DO ~IncrementGlobalOnceEx("GLOBALLawful_Await_2","GLOBALLaw",1)
~ GOTO 20
  IF ~~ THEN REPLY #14282 /* ~"Je n'ai pas envie de parler de ça avec toi. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 19 // from: 16.0
  SAY #14024 /* ~"Oui…" Il t'examine. "Pourquoi veux-tu vivre ?"~ */
  IF ~~ THEN REPLY #14134 /* ~Vérité : "J'en ai envie, c'est tout."~ */ GOTO 20
  IF ~~ THEN REPLY #14135 /* ~Vérité : "L'instinct de survie. Je *veux* vivre."~ */ GOTO 20
  IF ~~ THEN REPLY #14136 /* ~Vérité : "Je n'ai pas encore envie de rejoindre l'oubli. Je préfère *largement* la vie."~ */ GOTO 20
  IF ~~ THEN REPLY #14137 /* ~Vérité : "J'ai besoin de connaître les réponses à certaines questions sur ma vie avant de la quitter. Je veux découvrir qui je suis."~ */ GOTO 20
  IF ~~ THEN REPLY #14138 /* ~"Je ne sais pas."~ */ GOTO 21
  IF ~~ THEN REPLY #14139 /* ~"Je n'ai pas envie de parler de ça avec toi. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 20 // from: 18.0 18.1 18.2 18.3 18.4 18.5 19.0 19.1 19.2 19.3
  SAY #14025 /* ~L'Homme-Poussière écoute en silence. Une fois que tu as parlé, il ne répond pas et se contente de te regarder. Il semble réfléchir.~ */
  IF ~~ THEN REPLY #14140 /* ~"Tu veux mourir ? C'est pour ça que tu m'as demandé ça ?"~ */ GOTO 22
  IF ~~ THEN REPLY #14141 /* ~"Je dois m'en aller. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 21 // from: 19.4
  SAY #14026 /* ~L'Homme-Poussière baisse les yeux et se tait. "Nous n'avons rien à nous dire… maintenant ou jamais. Adieu."~ */
  IF ~~ THEN REPLY #14142 /* ~"Avant de partir, dis-moi… Pourquoi est-ce que tu veux mourir ?"~ */ GOTO 23
  IF ~~ THEN REPLY #14143 /* ~"Alors, au revoir."~ */ DO ~SetGlobal("Await","GLOBAL",3)
~ EXIT
END

IF ~~ THEN BEGIN 22 // from: 13.0 14.0 16.3 17.1 20.0
  SAY #14027 /* ~"Oui."~ */
  IF ~~ THEN REPLY #14144 /* ~"Pourquoi est-ce que tu veux mourir ?"~ */ GOTO 23
  IF ~~ THEN REPLY #14145 /* ~"Pourquoi est-ce que tu n'as pas envie de vivre ?"~ */ GOTO 24
  IF ~~ THEN REPLY #14146 /* ~"Alors, pourquoi est-ce que tu n'as pas déjà mis fin à tes jours ?"~ */ GOTO 42
  IF ~~ THEN REPLY #14147 /* ~"Je dois m'en aller. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 23 // from: 21.0 22.0 44.1 45.2 55.0 56.1 62.2
  SAY #14028 /* ~"Cette existence… cette existence est un simulacre de vie. Je ne veux plus jouer cette charade." Son visage se ride de dégoût. "Pourquoi voudrait-on rester dans cette cité insensée au centre d'un multivers qui se nourrit de douleur et de haine ? La mort… est silencieuse… réconfortante."~ */
  IF ~~ THEN REPLY #14148 /* ~"La vie n'est sûrement pas aussi terrible que tu veux bien le croire."~ */ GOTO 24
  IF ~~ THEN REPLY #14149 /* ~"Quelle triste perspective… La vie a bien plus à offrir que de la douleur et de la haine."~ */ DO ~IncrementGlobalOnceEx("GLOBALGood_Await_1","GLOBALGood",1)
~ GOTO 24
  IF ~~ THEN REPLY #14150 /* ~"Alors, pourquoi est-ce que tu n'as pas déjà mis fin à tes jours ?"~ */ GOTO 42
  IF ~~ THEN REPLY #14151 /* ~"Je dois m'en aller. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 24 // from: 12.2 22.1 23.0 23.1
  SAY #14029 /* ~"C'est ça, la *vie* ?" Il découvre ses dents et ses mains se serrent. "Cette existence… cette existence est un *simulacre* de vie. Je ne veux plus jouer à cette charade. La mort est silencieuse… réconfortante."~ */
  IF ~~ THEN REPLY #14152 /* ~"Crois-moi, ce n'est pas le cas."~ */ GOTO 25
  IF ~~ THEN REPLY #14153 /* ~"Peut-être après la première mort."~ */ GOTO 58
  IF ~~ THEN REPLY #14154 /* ~"Alors, pourquoi est-ce que tu n'as pas déjà mis fin à tes jours ?"~ */ GOTO 42
  IF ~~ THEN REPLY #14155 /* ~"Si rien ne te rattache à cette vie, il vaudrait peut-être mieux que tu meurs."~ */ GOTO 42
  IF ~~ THEN REPLY #14156 /* ~"Je dois m'en aller. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 25 // from: 24.0
  SAY #14030 /* ~Le garçon semble irrité de la remarque. "Et comment le sais-tu ?"~ */
  IF ~  GlobalGT("Death","GLOBAL",0)
~ THEN REPLY #14157 /* ~"J'ai vu ce qu'il y a après la mort."~ */ GOTO 26
  IF ~  Global("Death","GLOBAL",0)
~ THEN REPLY #14158 /* ~"Je ne sais pas. Il faut encore que je sache ce qu'il y a après la mort et que je m'en souvienne. Si je meurs de nouveau, je pourrai peut-être en parler."~ */ GOTO 59
  IF ~  Global("Death","GLOBAL",0)
~ THEN REPLY #14159 /* ~"Je crois que j'ai déjà connu la mort. Mais, je ne m'en souviens pas vraiment."~ */ GOTO 59
  IF ~~ THEN REPLY #14160 /* ~"Rien de spécial. Disons que c'est un pressentiment."~ */ GOTO 57
  IF ~~ THEN REPLY #14161 /* ~"Tant pis. Je dois m'en aller. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 26 // from: 10.0 25.0 57.2 58.3
  SAY #14031 /* ~Le garçon te regarde. "Tu dis vrai." Il te regarde stupéfait. "Qu'y a-t-il derrière ? Qu'est-ce que tu as vu ?"~ */
  IF ~~ THEN REPLY #14162 /* ~Vérité : "J'étais sur une île qui dérivait sur un océan obscur. L'île était formée de roches sombres… mais ces roches n'en étaient *pas*, car elles me murmuraient et me chuchotaient des mots que je ne comprenais pas. Il n'y a là-bas ni silence, ni confort, et le froid transperce la chair et pénètre les os."~ */ GOTO 31
  IF ~~ THEN REPLY #14163 /* ~"Je n'en parlerai à personne. J'en ai déjà trop dit."~ */ GOTO 27
END

IF ~~ THEN BEGIN 27 // from: 26.1
  SAY #14032 /* ~"Tu *dois* me le dire ! Je dois savoir !"~ */
  IF ~~ THEN REPLY #14164 /* ~Vérité : "J'étais sur une île qui dérivait sur un océan obscur. L'île était formée de roches sombres… mais ces roches n'en étaient *pas*, car elles me murmuraient et me chuchotaient des mots que je ne comprenais pas. Il n'y a là-bas ni silence, ni confort, et le froid transperce la chair et pénètre les os."~ */ GOTO 31
  IF ~~ THEN REPLY #14165 /* ~"Je ne te dirai rien."~ */ GOTO 28
  IF ~~ THEN REPLY #14166 /* ~"Je n'en parlerai pas. Au revoir."~ */ GOTO 28
END

IF ~~ THEN BEGIN 28 // from: 27.1 27.2
  SAY #14033 /* ~"Tu dois me le dire !" Il serre son poing. "Qu'est-ce que tu *veux* en échange ?!"~ */
  IF ~~ THEN REPLY #14167 /* ~"Je te demanderais de vivre."~ */ GOTO 29
  IF ~~ THEN REPLY #14168 /* ~"Je ne te donnerai rien. Et je te demanderai rien non plus. Au revoir."~ */ GOTO 36
END

IF ~~ THEN BEGIN 29 // from: 28.0
  SAY #14034 /* ~"Tu te moques de moi. Tu ridiculises mes questions…"~ */
  IF ~~ THEN REPLY #14169 /* ~"*Tu* es un imbécile de vouloir gâcher ta vie avec tant de dédain. Tu insultes à la fois les morts et les vivants."~ */ GOTO 30
  IF ~~ THEN REPLY #14170 /* ~"On n'a plus rien à se dire. Au revoir."~ */ GOTO 36
END

IF ~~ THEN BEGIN 30 // from: 29.0
  SAY #14035 /* ~"Dis ce que tu as vu ! Qu'est-ce que la Vraie Mort ?! Qu'est-ce que tu as vu là-bas ?" Sa voix devient plus forte et insistante, à tel point que les Hommes-Poussière tournent la tête.~ */
  IF ~~ THEN REPLY #14171 /* ~Vérité : "J'étais sur une île qui dérivait sur un océan obscur. L'île était formée de roches sombres… mais ces roches n'en étaient *pas*, car elles me murmuraient et me chuchotaient des mots que je ne comprenais pas. Il n'y a là-bas ni silence, ni confort, et le froid transperce la chair et pénètre les os."~ */ GOTO 31
  IF ~~ THEN REPLY #14172 /* ~Mensonge : "C'est l'oubli. Il n'y a rien là-bas. C'est la non-existence."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Await_2","GLOBALGood",-1)
~ GOTO 34
  IF ~~ THEN REPLY #14173 /* ~Mensonge : "C'est un lieu de grande joie, de beauté céleste. C'est un endroit où chaque âme peut être heureuse."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Await_3","GLOBALGood",-1)
~ GOTO 35
  IF ~~ THEN REPLY #14174 /* ~"Je ne te dirai rien. Au revoir."~ */ GOTO 36
END

IF ~~ THEN BEGIN 31 // from: 26.0 27.0 30.0
  SAY #14036 /* ~"C'est la même chose…" Il regarde le plancher et pince ses lèvres avec une expression étrange. "Au-delà de l'ombre de cette existence, il n'y a plus de misère. Il n'y a pas d'oubli, pas de nettoyage… rien ne change. Les plans tournent… et rien ne change jamais."~ */
  IF ~~ THEN REPLY #14175 /* ~"Sauf toi. Tu peux encore changer."~ */ GOTO 32
  IF ~~ THEN REPLY #14176 /* ~"Si tu y crois, alors tu y arriveras."~ */ GOTO 33
  IF ~~ THEN REPLY #14177 /* ~"Je m'en vais. Au revoir."~ */ GOTO 36
END

IF ~~ THEN BEGIN 32 // from: 31.0
  SAY #14037 /* ~Il se gausse. "Non, j'ai essayé. Plusieurs fois."~ */
  IF ~~ THEN REPLY #14178 /* ~"Si tu y crois, alors tu y arriveras."~ */ GOTO 33
  IF ~~ THEN REPLY #14179 /* ~"Alors, il n'y a rien d'autre à dire. Maintenant, je m'en vais."~ */ GOTO 36
END

IF ~~ THEN BEGIN 33 // from: 31.1 32.0
  SAY #14038 /* ~"C'est plus qu'une croyance, c'est la réalité." Son regard s'assombrit. "As-tu vu cette cité ? Elle pourrit et tout pourrit avec elle… il n'y a pas d'espoir, rien qui en *vaille* la peine. Tout est entaché d'obscurité et d'ombre."~ */
  IF ~~ THEN REPLY #14180 /* ~"Et tes croyances d'Homme-Poussière ? Cet objectif n'est pas suffisamment digne ?"~ */ GOTO 37
  IF ~~ THEN REPLY #14181 /* ~"Alors, il n'y a rien d'autre à dire. Maintenant, je m'en vais."~ */ GOTO 36
END

IF ~~ THEN BEGIN 34 // from: 30.1
  SAY #14039 /* ~"Je m'en doutais." Il soupire. "Alors ce sera mieux qu'ici. Et comme je dois mourir pour y parvenir…" Il te regarde. "M'aideras-tu à mourir ?"~ */
  IF ~~ THEN REPLY #14182 /* ~"Non."~ */ GOTO 43
  IF ~~ THEN REPLY #14183 /* ~"Oui."~ */ GOTO 44
  IF ~~ THEN REPLY #14184 /* ~"Ça dépend… Combien tu me proposes ?"~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Await_4","GLOBALGood",-1)
~ GOTO 56
  IF ~~ THEN REPLY #14185 /* ~"Si tu n'as pas la force de te tuer, je ne le ferai pas pour toi."~ */ GOTO 55
  IF ~~ THEN REPLY #14186 /* ~"Non… Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 35 // from: 30.2
  SAY #14040 /* ~L'Homme-Poussière sourit brièvement, puis la mélancolie s'empare de ses traits. "Alors je *dois* mourir." Il te regarde avec espoir. "M'aideras-tu ?"~ */
  IF ~~ THEN REPLY #14187 /* ~"Non."~ */ GOTO 43
  IF ~~ THEN REPLY #14188 /* ~"Oui."~ */ GOTO 44
  IF ~~ THEN REPLY #14189 /* ~"Ça dépend… Combien tu me proposes ?"~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Await_4","GLOBALGood",-1)
~ GOTO 56
  IF ~~ THEN REPLY #14190 /* ~"Si tu n'as pas la force de te tuer, je ne le ferai pas pour toi."~ */ GOTO 55
  IF ~~ THEN REPLY #14191 /* ~"Non… Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 36 // from: 28.1 29.1 30.3 31.2 32.1 33.1
  SAY #14041 /* ~Il te dévisage un moment, ouvre la bouche puis la referme. "Alors pars. Nous ne parlerons plus."~ */
  IF ~~ THEN REPLY #14192 /* ~Pars.~ */ DO ~SetGlobal("Await","GLOBAL",3)
~ EXIT
END

IF ~~ THEN BEGIN 37 // from: 33.0
  SAY #14042 /* ~Il acquiesce. "La philosophie de l'Homme-Poussière est un objectif honorable. Sinon je ne serais pas devenu un Homme-Poussière."~ */
  IF ~  GlobalGT("Know_Dustmen","GLOBAL",0)
~ THEN REPLY #14193 /* ~"Alors, écoute-moi bien : tu es impatient d'accéder à l'oubli. Or, d'après les croyances des Hommes-Poussière, si tu es impatient d'atteindre la Vraie Mort, tu ne pourras jamais y accéder."~ */ GOTO 38
  IF ~~ THEN REPLY #14194 /* ~"Alors, pourquoi est-ce que tu ne te concentres sur les croyances des Hommes-Poussière ? Cette vie est peut-être faite de douleurs et de souffrances, mais si tu te concentres sur tes croyances et qu'elles ont un sens pour toi, elles t'aideront à dépasser tout ça."~ */ GOTO 40
  IF ~~ THEN REPLY #14195 /* ~"Alors, il n'y a rien d'autre à dire. Maintenant, je m'en vais."~ */ EXIT
END

IF ~~ THEN BEGIN 38 // from: 37.0
  SAY #14043 /* ~Il gronde. "On dirait un de ces régisseurs… ils ne cessent jamais de me *faire la leçon*…"~ */
  IF ~~ THEN REPLY #14196 /* ~"Ils ont raison - ils ne voient que ton désir de mourir. Si tu veux atteindre la Vraie Mort, tu dois d'abord accepter cette vie, quoi qu'il t'en coûte. C'est une chance pour toi, et tu es encore jeune. En apprenant à apprécier cette vie, tu arriveras peut-être à apaiser ta soif de mourir."~ */ GOTO 39
  IF ~~ THEN REPLY #14197 /* ~"Bon, j'arrête de te faire la morale. Au revoir."~ */ GOTO 43
END

IF ~~ THEN BEGIN 39 // from: 38.0
  SAY #14044 /* ~"Mais comment…" Il a l'air surpris. "Comment dois-je faire ?"~ */
  IF ~~ THEN REPLY #14198 /* ~"Essaie juste de vivre du mieux que tu peux. Utilise cette vie, aussi pénible soit elle, comme une chance. Tu es jeune. En apprenant à apprécier cette vie, tu arriveras peut-être à oublier la mort."~ */ DO ~SetGlobal("Await_Deal_Answer","GLOBAL",1)
~ GOTO 41
  IF ~~ THEN REPLY #14199 /* ~"Tu dois accepter cette vie. C'est comme ça que tu apprendras à dépasser la douleur et la souffrance. Bientôt, elles ne t'affecteront plus du tout, et alors tu commenceras à progresser vers la Vraie Mort et l'oubli que tu cherches à atteindre."~ */ DO ~SetGlobal("Await_Deal_Answer","GLOBAL",2)
~ GOTO 41
  IF ~~ THEN REPLY #14200 /* ~"C'est ton problème. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 40 // from: 37.1
  SAY #14045 /* ~"Peut-être…" Il pense à ce que tu as dit. "Tu as peut-être raison. Mais… parfois c'est dur d'ignorer la douleur de cette vie. Que dois-je faire ?"~ */
  IF ~~ THEN REPLY #14201 /* ~"Essaie juste de vivre du mieux que tu peux. Utilise cette vie, aussi pénible soit elle, comme une chance. Tu es jeune. En apprenant à apprécier cette vie, tu arriveras peut-être à oublier la mort."~ */ DO ~SetGlobal("Await_Deal_Answer","GLOBAL",1)
~ GOTO 41
  IF ~~ THEN REPLY #14202 /* ~"Tu dois accepter cette vie. C'est comme ça que tu apprendras à dépasser la douleur et la souffrance. Bientôt, elles ne t'affecteront plus du tout, et alors tu commenceras à progresser vers la Vraie Mort et l'oubli que tu cherches à atteindre."~ */ DO ~SetGlobal("Await_Deal_Answer","GLOBAL",2)
~ GOTO 41
  IF ~~ THEN REPLY #14203 /* ~"Notre vie durant, nous essayons d'apprendre à mourir. Toi seul peux répondre à ta question."~ */ DO ~SetGlobal("Await_Deal_Answer","GLOBAL",3)
~ GOTO 41
  IF ~~ THEN REPLY #14204 /* ~"C'est ton problème. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 41 // from: 39.0 39.1 40.0 40.1 40.2 69.0
  SAY #14046 /* ~Le garçon se tait, songeur. Finalement, il se tourne de nouveau vers toi. "Tes mots ont du sens… et ouvrent une nouvelle perspective. Je ferai ce que tu as dit."~ */
  IF ~~ THEN REPLY #14205 /* ~"C'est tout ce que je te demande… Vivre, vieillir et apprendre. Au revoir."~ */ DO ~SetGlobal("Await","GLOBAL",2)
AddexperienceParty(500)
~ EXIT
END

IF ~~ THEN BEGIN 42 // from: 22.2 23.2 24.2 24.3
  SAY #14047 /* ~"Je cherche un moyen de mettre un terme à ma vie. Me tueras-tu ?"~ */
  IF ~~ THEN REPLY #14206 /* ~"Non."~ */ GOTO 43
  IF ~~ THEN REPLY #14207 /* ~"Oui."~ */ GOTO 44
  IF ~~ THEN REPLY #14208 /* ~"Ça dépend… Combien tu me proposes ?"~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Await_4","GLOBALGood",-1)
~ GOTO 56
  IF ~~ THEN REPLY #14209 /* ~"Si tu n'as pas la force de te tuer, je ne le ferai pas pour toi."~ */ GOTO 55
  IF ~~ THEN REPLY #14210 /* ~"Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 43 // from: 34.0 35.0 38.1 42.0 44.2 45.3 55.1 56.2
  SAY #14048 /* ~"Très bien. Laisse-moi. Nous ne parlerons plus."~ */
  IF ~~ THEN REPLY #14211 /* ~"Alors, au revoir."~ */ DO ~SetGlobal("Await","GLOBAL",3)
~ EXIT
END

IF ~~ THEN BEGIN 44 // from: 34.1 35.1 42.1
  SAY #14049 /* ~Il soupire soulagé puis tire un sac de sa robe.
Le sac *tinte* tandis qu'il le place devant lui. "Fais-le maintenant. Je ne peux plus attendre."~ */
  IF ~~ THEN REPLY #14212 /* ~"Très bien… Ferme les yeux."~ */ GOTO 45
  IF ~~ THEN REPLY #14213 /* ~"Attends… Je ne veux pas de ton argent. Je veux juste savoir pourquoi tu veux mourir."~ */ GOTO 23
  IF ~~ THEN REPLY #14214 /* ~"Je ne ferai pas ça. Au revoir."~ */ GOTO 43
END

IF ~~ THEN BEGIN 45 // from: 44.0 56.0
  SAY #14050 /* ~Il ferme les yeux.~ */
  IF ~~ THEN REPLY #14215 /* ~Mets tes mains autour de son cou et étrangle-le.~ */ GOTO 47
  IF ~~ THEN REPLY #14216 /* ~Prends l'argent et pars en silence.~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Await_4","GLOBALLaw",-1)
IncrementGlobalOnceEx("GLOBALEvil_Await_5","GLOBALGood",-1)
~ GOTO 46
  IF ~~ THEN REPLY #14217 /* ~"Garde ton argent. Je veux juste savoir pourquoi tu veux mourir."~ */ GOTO 23
  IF ~~ THEN REPLY #14218 /* ~"Je ne ferai pas ça. Au revoir."~ */ GOTO 43
END

IF ~~ THEN BEGIN 46 // from: 45.1
  SAY #14051 /* ~Tu ramasses doucement le sac et tu pars tranquillement - le sac semble contenir une cinquantaine de pièces de cuivre. L'Homme-Poussière reste immobile, les yeux fermés, tandis que tu t'éloignes.~ */
  IF ~~ THEN REPLY #14219 /* ~"Le contenu de ce sac est le prix de ta bêtise. Au revoir…"~ */ DO ~GivePartyGold(50)
SetGlobal("Await","GLOBAL",3)
~ EXIT
END

IF ~~ THEN BEGIN 47 // from: 45.0
  SAY #14052 /* ~Tu poses tes mains sur son cou et tu commences lentement à serrer. Il suffoque et, les yeux grands ouverts, il commence d'un air implorant à agripper tes mains.~ */
  IF ~~ THEN REPLY #14220 /* ~Brise-lui la nuque.~ */ DO ~PlaySoundNotRanged("SPE_11")
SetAnimState(Myself,ANIM_MIMEDIE)
AddexperienceParty(35)
IncrementGlobalOnceEx("GLOBALChaotic_Await_5","GLOBALLaw",-1)
IncrementGlobalOnceEx("GLOBALEvil_Await_6","GLOBALGood",-1)
~ GOTO 48
  IF ~~ THEN REPLY #14221 /* ~Délivre-le.~ */ GOTO 51
END

IF ~~ THEN BEGIN 48 // from: 47.0
  SAY #14053 /* ~Tu veux continuer à l'étrangler lorsque soudain, sans même y penser, tu retires les mains de son cou. Attente-de-la-mort reprend sa respiration - il semble sur le point de te remercier d'avoir arrêté - quand soudain tu bloques tes mains sur ses tempes et tords brusquement sa tête vers la gauche. Un *craquement* se produit et le garçon tombe inanimé dans tes bras.~ */
  IF ~  Global("Choke_Memory","GLOBAL",0)
~ THEN REPLY #14222 /* ~"Rendez-vous de l'autre côté, Homme-Poussière…"~ */ DO ~SetGlobal("Choke_Memory","GLOBAL",1)
PlaySoundNotRanged("SPTR_01")
IncrementGlobal("Choke_Dustman","GLOBAL",1)
IncrementGlobal("Choke","GLOBAL",1)
~ GOTO 49
  IF ~  GlobalGT("Choke_Memory","GLOBAL",0)
~ THEN REPLY #14223 /* ~"Rendez-vous de l'autre côté, Homme-Poussière…"~ */ DO ~IncrementGlobal("Choke_Dustman","GLOBAL",1)
IncrementGlobal("Choke","GLOBAL",1)
~ GOTO 50
END

IF ~~ THEN BEGIN 49 // from: 48.0
  SAY #14054 /* ~À ta grande surprise, cette action t'a paru instinctive, comme si tu l'avais déjà réalisée plusieurs fois… cela te rappelle vaguement quelque chose, mais le souvenir n'est pas assez fort pour refaire surface.~ */
  IF ~~ THEN REPLY #14224 /* ~Laisse tomber le corps.~ */ DO ~GiveExperience(Protagonist,250)
~ GOTO 50
END

IF ~~ THEN BEGIN 50 // from: 48.1 49.0
  SAY #14055 /* ~Comme le corps tombe au sol, un rugissement effarant se produit soudain dans le bar…~ */
  IF ~~ THEN REPLY #14225 /* ~"Euh-oh…"~ */ DO ~Help()
Kill(Myself)
Deactivate(Myself)
GivePartyGold(50)
~ EXIT
END

IF ~~ THEN BEGIN 51 // from: 47.1
  SAY #14056 /* ~Tu le libères… et tu te sens honteux car tu le fais presque avec déplaisir. Le garçon halète en toussant violemment.~ */
  IF ~~ THEN REPLY #14226 /* ~"Tu as changé d'avis ?"~ */ GOTO 52
END

IF ~~ THEN BEGIN 52 // from: 51.0
  SAY #14057 /* ~Le garçon acquiesce faiblement.~ */
  IF ~~ THEN REPLY #14227 /* ~"Écoute… La prochaine fois que tu auras envie de 'mourir', essaie d'en être sûr, car il n'y aura peut-être personne pour t'en empêcher. Maintenant, arrête de broyer du noir sur les souffrances de la vie, alors que tu as manifestement envie d'en faire partie."~ */ GOTO 53
END

IF ~~ THEN BEGIN 53 // from: 52.0
  SAY #14058 /* ~Le garçon te regarde un moment en silence, puis acquiesce lentement, en se frottant le cou.~ */
  IF ~~ THEN REPLY #14228 /* ~"Je garde l'argent en échange de la leçon."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Await_6","GLOBALLaw",-1)
GivePartyGold(50)
~ GOTO 54
  IF ~~ THEN REPLY #14229 /* ~"Je n'ai pas respecté notre accord, alors garde ton argent."~ */ DO ~IncrementGlobalOnceEx("GLOBALLawful_Await_1","GLOBALLaw",1)
~ GOTO 54
END

IF ~~ THEN BEGIN 54 // from: 53.0 53.1
  SAY #14059 /* ~Le garçon acquiesce de nouveau et reprend enfin son souffle. "Très… bien. Merci… Merci de cette… nouvelle perspective."~ */
  IF ~~ THEN REPLY #14230 /* ~"Ne me remercie pas, contente-toi de *vivre*. Tu insultes les morts en traitant la vie avec tant de dédain. Au revoir."~ */ DO ~SetGlobal("Await","GLOBAL",2)
AddexperienceParty(500)
~ EXIT
END

IF ~~ THEN BEGIN 55 // from: 34.3 35.3 42.3
  SAY #14060 /* ~"Ce n'est pas une affaire de conviction…"~ */
  IF ~~ THEN REPLY #14231 /* ~"Alors, il doit s'agir d'autre chose. Bon, je te le demande : qu'est-ce que tu reproches à la vie pour la haïr à ce point ?"~ */ GOTO 23
  IF ~~ THEN REPLY #14232 /* ~"Si. Si tu avais vraiment voulu mourir, tu aurais déjà trouvé un moyen de te tuer. Tu nous fais perdre notre temps avec ces bavardages inutiles. Au revoir."~ */ GOTO 43
END

IF ~~ THEN BEGIN 56 // from: 34.2 35.2 42.2
  SAY #14061 /* ~Il lance un petit sac sur la table. "Ce petit sac contient tout ce que je possède. Cinquante pièces de cuivre. Tue moi et il est à toi."~ */
  IF ~~ THEN REPLY #14233 /* ~"Très bien… Ferme les yeux."~ */ GOTO 45
  IF ~~ THEN REPLY #14234 /* ~"Attends… Je ne veux pas de ton argent. Je veux juste savoir pourquoi tu veux mourir."~ */ GOTO 23
  IF ~~ THEN REPLY #14235 /* ~"Je ne ferai pas ça. Au revoir."~ */ GOTO 43
END

IF ~~ THEN BEGIN 57 // from: 10.3 25.3
  SAY #14062 /* ~L'Homme-Poussière se gausse. "Pas très convaincant."~ */
  IF ~~ THEN REPLY #14236 /* ~"Alors, essaie de me tuer et on verra ce qui se passera."~ */ GOTO 62
  IF ~~ THEN REPLY #14237 /* ~"Je peux te le prouver."~ */ GOTO 63
  IF ~  GlobalGT("Death","GLOBAL",0)
~ THEN REPLY #14238 /* ~"J'ai vu ce qu'il y a après la mort."~ */ GOTO 26
  IF ~  Global("Death","GLOBAL",0)
~ THEN REPLY #14239 /* ~"Je ne sais pas. Il faut encore que je sache ce qu'il y a après la mort et que je m'en souvienne. Si je meurs de nouveau, je pourrai peut-être en parler."~ */ GOTO 59
  IF ~~ THEN REPLY #14240 /* ~"Je crois que le seul à mentir, ici, c'est toi, et seulement à toi-même. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 58 // from: 24.1
  SAY #14063 /* ~L'Homme-Poussière cligne des yeux puis ricane. "La première mort ? Quoi, tu es déjà ressuscité ?"~ */
  IF ~~ THEN REPLY #14241 /* ~"Ressuscité ?"~ */ GOTO 60
  IF ~~ THEN REPLY #14242 /* ~"Alors, essaie de me tuer et on verra ce qui se passera."~ */ GOTO 62
  IF ~~ THEN REPLY #14243 /* ~"Tu veux voir ?"~ */ GOTO 63
  IF ~  GlobalGT("Death","GLOBAL",0)
~ THEN REPLY #14244 /* ~"J'ai vu ce qu'il y a après la mort."~ */ GOTO 26
  IF ~  Global("Death","GLOBAL",0)
~ THEN REPLY #14245 /* ~"Je ne sais pas. Il faut encore que je sache ce qu'il y a après la mort et que je m'en souvienne. Si je meurs de nouveau, je pourrai peut-être en parler."~ */ GOTO 59
  IF ~~ THEN REPLY #14246 /* ~"Si jamais je meurs et que je m'en souviens, je reviendrai t'en parler. Tu jugeras alors si je mens ou non. Au revoir."~ */ GOTO 59
  IF ~~ THEN REPLY #14247 /* ~"Je crois que le seul à mentir, ici, c'est toi, et seulement à toi-même. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 59 // from: 10.1 10.2 25.1 25.2 57.3 58.4 58.5
  SAY #14064 /* ~L'Homme-Poussière cligne des yeux puis ricane. "Tu mens. Aucun homme ne peut mourir plus d'une fois… sans être ressuscité par une magie puissante."~ */
  IF ~~ THEN REPLY #14248 /* ~"Ressuscité ?"~ */ GOTO 60
  IF ~~ THEN REPLY #14249 /* ~"Alors, essaie de me tuer et on verra ce qui se passera."~ */ GOTO 62
  IF ~~ THEN REPLY #14250 /* ~"Tu veux voir ?"~ */ GOTO 63
  IF ~~ THEN REPLY #14251 /* ~"Si jamais je meurs et que je m'en souviens, je reviendrai t'en parler. Tu jugeras alors si je mens ou non. Au revoir."~ */ EXIT
  IF ~~ THEN REPLY #14252 /* ~"Je crois que le seul à mentir, ici, c'est toi, et seulement à toi-même. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 60 // from: 58.0 59.0 62.1
  SAY #14065 /* ~"Ressuscité… ramené à la vie… cette magie est vraiment puissante."~ */
  IF ~~ THEN REPLY #14253 /* ~"Qui aurait un tel pouvoir ?"~ */ GOTO 61
  IF ~~ THEN REPLY #14254 /* ~"Tu ne crois pas que je ne peux pas mourir ? Alors, essaie de me tuer et on verra bien."~ */ GOTO 62
  IF ~~ THEN REPLY #14255 /* ~"Tu ne crois pas que je ne peux pas mourir ? Je peux te le prouver."~ */ GOTO 63
  IF ~~ THEN REPLY #14256 /* ~"Si jamais je meurs et que je m'en souviens, je reviendrai t'en parler. Tu jugeras alors si je mens ou non. Au revoir."~ */ EXIT
  IF ~~ THEN REPLY #14257 /* ~"Je dois m'en aller. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 61 // from: 60.0
  SAY #14066 /* ~"Un sorcier ou un prêtre puissant… ou l'une des Puissances… personne de ma connaissance." Il fronce les sourcils. "Et je ne pense pas que tu en connaisses une non plus."~ */
  IF ~~ THEN REPLY #14258 /* ~"Tu crois que je ne peux pas mourir ? Alors, essaie de me tuer et on verra bien."~ */ GOTO 62
  IF ~~ THEN REPLY #14259 /* ~"Tu ne crois pas que je ne peux pas mourir ? Je peux te le prouver."~ */ GOTO 63
  IF ~~ THEN REPLY #14260 /* ~"Si jamais je meurs et que je m'en souviens, je reviendrai t'en parler. Tu jugeras alors si je mens ou non. Au revoir."~ */ EXIT
  IF ~~ THEN REPLY #14261 /* ~"Je crois que le seul à mentir, ici, c'est toi, et seulement à toi-même. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 62 // from: 57.0 58.1 59.1 60.1 61.0
  SAY #14067 /* ~Il te regarde d'un air sceptique. "Non, j'crois pas, même si j'ai envie d'essayer."~ */
  IF ~~ THEN REPLY #14262 /* ~"Alors, je vais t'obliger à me regarder : je vais te montrer ce qu'est la mort."~ */ GOTO 63
  IF ~~ THEN REPLY #14263 /* ~"Alors, tant pis. Qu'est-ce que tu voulais dire tout à l'heure à propos de 'résurrection' ?"~ */ GOTO 60
  IF ~~ THEN REPLY #14264 /* ~"Si la peur et l'hésitation commandent tous tes actes, je doute que cette existence t'apporte beaucoup de joies."~ */ GOTO 23
  IF ~~ THEN REPLY #14265 /* ~"Bon, ça suffit. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 63 // from: 57.1 58.2 59.2 60.2 61.1 62.0
  SAY #14068 /* ~"Que… que veux-tu dire ?" Il semble vouloir s'en aller mais n'y parvient pas. "Tu ne peux pas sérieusement…"~ */
  IF ~~ THEN REPLY #14266 /* ~Prends tes mains, tords-toi le cou.~ */ DO ~FadeToColor([20.0],0)
FadeFromColor([20.0],0)
IncrementGlobal("Death","GLOBAL",1)
~ GOTO 64
END

IF ~~ THEN BEGIN 64 // from: 63.0
  SAY #14069 /* ~Ta vision revient lentement… Cette fois-ci, ta mort était différente. Tu vois Attente-de-la-mort devant toi… il a l'air horrifié et fasciné. Il t'a installé sur une chaise et regarde avec appréhension les autres clients du bar… ils n'ont pas eu l'air de remarquer ou t'ont pris pour un ivrogne.~ */
  IF ~~ THEN REPLY #14267 /* ~"Tu es convaincu maintenant ?"~ */ GOTO 66
END

IF ~~ THEN BEGIN 65 // from:
  SAY #14070 /* ~"T'es azimuté." Il regarde tes plaies. "Tu n'as pas dû mourir, tu as simplement été blessé."~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 66 // from: 64.0
  SAY #14071 /* ~"Es… es-tu un de ces morts errants ?"~ */
  IF ~~ THEN REPLY #14268 /* ~"Non."~ */ GOTO 67
  IF ~~ THEN REPLY #14269 /* ~"Oui."~ */ GOTO 68
  IF ~~ THEN REPLY #14270 /* ~"Je ne sais pas."~ */ GOTO 67
END

IF ~~ THEN BEGIN 67 // from: 66.0 66.2
  SAY #14072 /* ~"Alors, qui es-tu ?"~ */
  IF ~~ THEN REPLY #14271 /* ~"Je ne sais pas. En tout cas, je meurs et je renais."~ */ GOTO 68
END

IF ~~ THEN BEGIN 68 // from: 66.1 67.0
  SAY #14073 /* ~"Mais… tu penses encore, tu sens encore ?"~ */
  IF ~~ THEN REPLY #14272 /* ~"Oui."~ */ GOTO 69
  IF ~~ THEN REPLY #14273 /* ~"Oui, mais il y a… Il y a un vide. Il te manque quelque chose, et ça te ronge, sans jamais te laisser le moindre répit."~ */ GOTO 69
END

IF ~~ THEN BEGIN 69 // from: 68.0 68.1
  SAY #14074 /* ~"Être mort… et penser et sentir *encore* ?! La souffrance ne laissera-t-elle donc jamais le corps tranquille ?" Cette pensée l'horrifie. "La mort même n'est pas une délivrance."~ */
  IF ~~ THEN REPLY #14274 /* ~"En effet. Tu ne devrais peut-être pas être si impatient de quitter cette vie avant de savoir ce que te réserve la suivante."~ */ GOTO 41
END

IF ~  Global("Await","GLOBAL",3)
~ THEN BEGIN 70 // from:
  SAY #61496 /* ~Attend-la-mort t'ignore ; il refuse de croiser ton regard.~ */
  IF ~~ THEN REPLY #61497 /* ~Pars.~ */ EXIT
END
