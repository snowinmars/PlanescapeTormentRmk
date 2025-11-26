// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DNABAT.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\fr_FR\dialog.tlk
// dialogF  : (none)

BEGIN ~DNABAT~

IF ~  NumTimesTalkedTo(0)
GlobalLT("Curst_Key","GLOBAL",3)
~ THEN BEGIN 0 // from:
  SAY #49302 /* ~Tu vois un homme au visage d'ange, les yeux clos, comme s'il refusait soit de voir l'horreur du monde, soit de laisser le monde voir l'horreur en lui - mais il a des rides de rire au coin des yeux et des lèvres, et il t'accueille d'un ton amical et désinvolte. "Salut."~ */
  IF ~~ THEN REPLY #49303 /* ~"J'avais des questions à te poser…"~ */ GOTO 1
  IF ~~ THEN REPLY #49304 /* ~"Bonjour et au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0 5.0
  SAY #49305 /* ~"Qu'est-ce que tu veux savoir ?"~ */
  IF ~~ THEN REPLY #49306 /* ~"Qu'est-ce que tu peux me dire sur cet endroit ?"~ */ GOTO 2
  IF ~~ THEN REPLY #49307 /* ~"Qui es-tu ?"~ */ GOTO 3
  IF ~~ THEN REPLY #49308 /* ~"Je cherche un deva."~ */ GOTO 4
  IF ~~ THEN REPLY #49309 /* ~"Rien, merci. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.0 3.0 4.0
  SAY #49310 /* ~"La taverne de la Porte du Traître ? Tenue par Barlouche, là-bas. Quant aux clients, regarde : un ancien de l'Harmonium, Marquez ; une ancienne employée, Kitla ; un ancien tout et rien, Dallan, il faudra que je te raconte une des histoires que je sais à son sujet, un de ces jours ; et Dona Quisho, dont je connais pas l'histoire… pas encore."~ */
  IF ~~ THEN REPLY #49311 /* ~"Qui es-tu ?"~ */ GOTO 3
  IF ~~ THEN REPLY #49312 /* ~"Je cherche un deva."~ */ GOTO 4
  IF ~~ THEN REPLY #49313 /* ~"Rien, merci. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 1.1 2.0 4.1
  SAY #49314 /* ~"Moi ? C'est Nabat. Un ancien conteur aujourd'hui réduit à vendre des histoires dans les tavernes. Je ne travaille pas pour le moment. Je te raconterai peut-être une histoire plus tard. Peut-être. Tu veux autre chose ?~ */
  IF ~~ THEN REPLY #49315 /* ~"Qu'est-ce que tu peux me dire sur cet endroit ?"~ */ GOTO 2
  IF ~~ THEN REPLY #49316 /* ~"Je cherche un deva."~ */ GOTO 4
  IF ~~ THEN REPLY #49317 /* ~"Rien, merci. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 1.2 2.1 3.1
  SAY #49318 /* ~Il esquisse un sourire. "Qu'est-ce qui te dit que j'en sais quelque chose ? Sérieusement… Qu'est-ce que tu voulais savoir ?"~ */
  IF ~~ THEN REPLY #49319 /* ~"Qu'est-ce que tu peux me dire sur cet endroit ?"~ */ GOTO 2
  IF ~~ THEN REPLY #49320 /* ~"Qui es-tu ?"~ */ GOTO 3
  IF ~~ THEN REPLY #49321 /* ~"Rien, merci. Au revoir."~ */ EXIT
END

IF ~  NumTimesTalkedToGT(0)
GlobalLT("Curst_Key","GLOBAL",3)
~ THEN BEGIN 5 // from:
  SAY #49322 /* ~Nabat te sourit. "Bon, qu'est-ce que tu veux maintenant ?"~ */
  IF ~~ THEN REPLY #49323 /* ~"Je voudrais juste que tu répondes à quelques questions…"~ */ GOTO 1
  IF ~~ THEN REPLY #49324 /* ~"Rien. Au revoir."~ */ EXIT
END

IF ~  NumTimesTalkedTo(0)
Global("Curst_Key","GLOBAL",3)
~ THEN BEGIN 6 // from:
  SAY #49325 /* ~Tu vois un homme au visage d'ange, les yeux clos, comme s'il refusait soit de voir l'horreur du monde, soit de laisser le monde voir l'horreur en lui - mais il a des rides de rire au coin des yeux et des lèvres, et il t'accueille d'un ton amical et désinvolte. "Salut. Paraît que tu cherches une certaine Clé."~ */
  IF ~~ THEN REPLY #49326 /* ~"C'est vrai."~ */ DO ~SetGlobal("Caretaker","GLOBAL",1)
~ GOTO 8
  IF ~~ THEN REPLY #49327 /* ~"Oui, mais pas pour le moment. J'avais des questions à te poser…"~ */ GOTO 9
  IF ~~ THEN REPLY #49328 /* ~"Pas maintenant. Au revoir."~ */ EXIT
END

IF ~  NumTimesTalkedToGT(0)
Global("Curst_Key","GLOBAL",3)
Global("Caretaker","GLOBAL",0)
~ THEN BEGIN 7 // from:
  SAY #49329 /* ~"Alors… Te revoilà. Tu veux la troisième partie de la Clé ?"~ */
  IF ~~ THEN REPLY #49330 /* ~"Oui."~ */ DO ~SetGlobal("Caretaker","GLOBAL",1)
~ GOTO 8
  IF ~~ THEN REPLY #49331 /* ~"Oui, mais pas pour le moment. J'avais des questions à te poser…"~ */ GOTO 9
  IF ~~ THEN REPLY #49332 /* ~"Pas maintenant. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 8 // from: 6.0 7.0 9.0 10.0
  SAY #49333 /* ~"Le gardien de la décharge est un certain Kyse. D'après Catimini, il a de l'or caché sous les lattes de son plancher et une bande de ruffians compte le lui dérober. Je tiens, pour des motifs personnels, à ce qu'ils échouent. Va parler à Kyse, il te racontera toute l'histoire. Ensuite, je te donnerai la Clé. Si ça te dit, je pourrai aussi te montrer deux ou trois trucs utiles à ceux qui veulent être discrets."~ */
  IF ~~ THEN REPLY #49334 /* ~"D'accord. J'avais d'abord quelques questions."~ */ JOURNAL #47847 /* ~À la taverne de la Porte du Traître, Nabat m'a dit ce que je devais faire pour obtenir la troisième partie de la clé : près du Portail menant en Outreterre vit un gardien que l'on dit très riche… et les rumeurs précisent que l'on va tenter de l'assassiner pour le dépouiller.~ */ GOTO 9
  IF ~~ THEN REPLY #49335 /* ~"Très bien. Au revoir."~ */ JOURNAL #47847 /* ~À la taverne de la Porte du Traître, Nabat m'a dit ce que je devais faire pour obtenir la troisième partie de la clé : près du Portail menant en Outreterre vit un gardien que l'on dit très riche… et les rumeurs précisent que l'on va tenter de l'assassiner pour le dépouiller.~ */ EXIT
END

IF ~~ THEN BEGIN 9 // from: 6.1 7.1 8.0
  SAY #49336 /* ~"Tu as des questions ? Super. Le problème, c'est que je me demande si tu vas le faire ou pas. J'ai une Clé, tu as des questions et tu auras les réponses quand ce sera terminé. Tu n'as pas beaucoup de temps."~ */
  IF ~  Global("Caretaker","GLOBAL",0)
~ THEN REPLY #49337 /* ~"D'accord. Que dois-je faire ?"~ */ DO ~SetGlobal("Caretaker","GLOBAL",1)
~ GOTO 8
  IF ~  Global("Caretaker","GLOBAL",1)
~ THEN REPLY #49338 /* ~"Pourquoi est-ce que c'est si important pour toi ?"~ */ GOTO 10
  IF ~~ THEN REPLY #49339 /* ~"Peu importe. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 10 // from: 9.1
  SAY #49340 /* ~"C'est vraiment important ? Et si j'avais dit que c'était mon grand-père ? Et si j'avais dit que je voulais me venger des gens qui vont essayer de l'attaquer? Et si j'avais dit que je voulais garder l'argent pour moi ? La motivation a-t-elle de l'importance ? Tu obtiens ce que tu veux - la Clé - et j'en retire quelque chose qui m'intéresse."~ */
  IF ~  Global("Caretaker","GLOBAL",0)
~ THEN REPLY #49341 /* ~"D'accord. Que dois-je faire ?"~ */ DO ~SetGlobal("Caretaker","GLOBAL",1)
~ GOTO 8
  IF ~~ THEN REPLY #49342 /* ~"Bon, très bien. Au revoir."~ */ EXIT
END

IF ~  GlobalLT("Caretaker","GLOBAL",5)
~ THEN BEGIN 11 // from:
  SAY #49343 /* ~Tu as l'impression que ses yeux te jugent. "Selon mes sources, tu n'as pas encore terminé le travail que je t'avais demandé de faire. Alors, termine-le et tu auras la troisième partie de la Clé."~ */
  IF ~~ THEN REPLY #49344 /* ~"Tu peux répondre à quelques questions ?"~ */ GOTO 12
  IF ~~ THEN REPLY #49345 /* ~"Très bien. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 12 // from: 11.0
  SAY #49346 /* ~Il soupire. "Qu'est-ce que tu veux savoir ? Tu veux en savoir plus sur moi ? Je m'appelle Nabat. Tu veux en savoir plus sur Maudith ? Interroge quelqu'un que ça intéresse. Tu veux en savoir plus sur cette taverne ? Elle est pleine de gens qui ont été trahis. Tu veux en savoir plus sur le deva ? Finis ton travail et tu te rapprocheras un peu plus de lui. Bon, mets-toi au travail qu'on puisse tous y trouver notre compte."~ */
  IF ~~ THEN REPLY #49347 /* ~"Très bien. Au revoir."~ */ EXIT
END

IF ~  Global("Caretaker","GLOBAL",5)
Global("Curst_Key","GLOBAL",3)
~ THEN BEGIN 13 // from:
  SAY #49348 /* ~Nabat t'adresse un large sourire lorsqu'il te voit entrer. "Il paraît que tu as réussi. Tu as donc mérité ta troisième partie de la Clé." Son regard flamboie et il déclame le vers : "… leur destin scellé…" Après que ses yeux ont repris leur aspect usuel, il hausse les épaules. "Ce n'est pas grand-chose, je le crains… mais il faudra t'en contenter. Merci de ton aide. Dallan détient la partie suivante de la Clé. C'est lui, là-bas, avec sa jeune amie. Ou bien je peux t'entraîner aux talents de voleur…"~ */
  IF ~~ THEN REPLY #49349 /* ~"Tu peux répondre à quelques questions maintenant ?"~ */ DO ~AddexperienceParty(43750)
SetGlobal("Curst_Key","GLOBAL",4)
SetGlobal("Caretaker","GLOBAL",6)
~ JOURNAL #49351 /* ~Nabat m'a donné la troisième partie de la clé ('… leur destin scellé…'). Maintenant, je vais voir Dallan, le type qui a une petite amie plus jeune que lui.~ */ GOTO 14
  IF ~  !Class(Protagonist,THIEF)
~ THEN REPLY #49350 /* ~"Forme-moi à l'art de la furtivité."~ */ DO ~SetGlobal("Curst_Key","GLOBAL",4)
AddexperienceParty(43750)
SetGlobal("Caretaker","GLOBAL",6)
~ JOURNAL #49351 /* ~Nabat m'a donné la troisième partie de la clé ('… leur destin scellé…'). Maintenant, je vais voir Dallan, le type qui a une petite amie plus jeune que lui.~ */ GOTO 20
  IF ~~ THEN REPLY #67170 /* ~"Merci. Au revoir."~ */ DO ~SetGlobal("Curst_Key","GLOBAL",4)
AddexperienceParty(43750)
SetGlobal("Caretaker","GLOBAL",6)
~ JOURNAL #49351 /* ~Nabat m'a donné la troisième partie de la clé ('… leur destin scellé…'). Maintenant, je vais voir Dallan, le type qui a une petite amie plus jeune que lui.~ */ EXIT
END

IF ~~ THEN BEGIN 14 // from: 13.0 15.0 16.0 17.0 18.0 19.0 22.0 24.1 25.1 26.0
  SAY #49352 /* ~"Pourquoi pas ? J'ai envie de parler maintenant."~ */
  IF ~~ THEN REPLY #49353 /* ~"Pourquoi est-ce que tu voulais que je sauve le vieil homme ? La trahison est pourtant censée être de mise dans cette cité, non ?"~ */ GOTO 16
  IF ~~ THEN REPLY #49354 /* ~"Parle-moi de toi."~ */ GOTO 17
  IF ~~ THEN REPLY #49355 /* ~"Raconte-moi une histoire."~ */ GOTO 18
  IF ~~ THEN REPLY #49356 /* ~"Parle-moi de cet endroit."~ */ GOTO 19
  IF ~  !Class(Protagonist,THIEF)
~ THEN REPLY #49357 /* ~"Peux-tu me former à l'art de la furtivité ?"~ */ GOTO 20
  IF ~~ THEN REPLY #67172 /* ~"Laisse tomber. Au revoir."~ */ EXIT
END

IF ~  Global("Caretaker","GLOBAL",6)
GlobalGT("Curst_Key","GLOBAL",3)
~ THEN BEGIN 15 // from:
  SAY #49358 /* ~"Encore toi, eh ? Qu'est-ce que tu veux cette fois ?"~ */
  IF ~~ THEN REPLY #49359 /* ~"Les réponses à quelques questions…"~ */ GOTO 14
  IF ~~ THEN REPLY #49360 /* ~"Je veux que tu me formes à l'art de la furtivité."~ */ GOTO 20
  IF ~~ THEN REPLY #67173 /* ~"Rien. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 16 // from: 14.0
  SAY #49361 /* ~"Ils faisaient partie de mon gang. Et puis, ils m'ont abandonné pour aller chercher leur argent - c'était un coup monté. C'est moi qui ai lancé la rumeur à propos de Kyse - je savais qu'ils se feraient prendre et que les gardes leur tomberaient dessus, soit parce que quelqu'un les dénoncerait, soit parce qu'ils laisseraient des preuves derrière eux. Quoi qu'il en soit, j'ai gagné."~ */
  IF ~~ THEN REPLY #49362 /* ~"Je vois… J'avais encore quelques questions…"~ */ GOTO 14
  IF ~~ THEN REPLY #49363 /* ~"Génial. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 17 // from: 14.1
  SAY #49364 /* ~"Je m'appelle Nabat. Juste Nabat. Je suis venu d'Automata il y a quelque temps pour voir ce que je pouvais trouver ici, s'il y avait des gens dignes d'écouter mes histoires. Je ne suis pas tombé sur les bonnes personnes, et le reste, eh bien le reste, c'est de l'histoire ancienne."~ */
  IF ~~ THEN REPLY #49365 /* ~"Quelle histoire ! J'avais encore quelques questions…"~ */ GOTO 14
  IF ~~ THEN REPLY #49366 /* ~"Merci. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 18 // from: 14.2
  SAY #49367 /* ~"En ce moment, je travaille sur une histoire de vengeance. Il faut dire que j'ai de quoi être inspiré." Il sourit d'un air maléfique. "Je te la montrerai peut-être quand j'aurai terminé, mais pas avant. J'aime finir mon travail avant de le montrer à qui que ce soit."~ */
  IF ~~ THEN REPLY #49368 /* ~"Bon, d'accord. Réponds encore à quelques questions…"~ */ GOTO 14
  IF ~~ THEN REPLY #49369 /* ~"Très bien. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 19 // from: 14.3
  SAY #49370 /* ~"C'est ce que tu vois, à l'exception des zones que tu ne vois pas. Cette cité est remplie de traîtres, d'intrigues et de fourberie. Elle abrite ce que la nature humaine a de pire. Elle n'est pas belle. J'espère que ta question portait sur l'aspect métaphysique de Maudith, car je ne suis *pas* un guide."~ */
  IF ~~ THEN REPLY #49371 /* ~"D'accord. J'avais encore quelques questions…"~ */ GOTO 14
  IF ~~ THEN REPLY #49372 /* ~"Merci. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 20 // from: 13.1 14.4 15.1
  SAY #67171 /* ~"Tu as déjà utilisé les dons de ceux qui vivent dans l'ombre ? Est-ce que tu as volé des bourses pour survivre, ou traversé des rues sans faire de bruit ? Bref, vais-je devoir tout t'apprendre ou connais-tu déjà les bases ?"~ */
  IF ~  GlobalGT("Thief_Training","GLOBAL",0)
~ THEN REPLY #67191 /* ~"Je l'ai déjà fait."~ */ GOTO 21
  IF ~  Global("Thief_Training","GLOBAL",0)
~ THEN REPLY #67192 /* ~"J'ai bien peur qu'il te faille commencer par le commencement."~ */ GOTO 23
  IF ~~ THEN REPLY #67193 /* ~"Laisse tomber, va. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 21 // from: 20.0
  SAY #67174 /* ~"Tu es sûr de vouloir effectuer ce changement ? Tu ne peux être guerrier et voleur en même temps, tu sais…"~ */
  IF ~  Class(Protagonist,FIGHTER)
~ THEN REPLY #67196 /* ~"Je sais. J'en ai marre d'être guerrier. Voyons si je ne suis pas trop rouillé…"~ */ DO ~FadeToColor([20.0],0)
Wait(2)
FadeFromColor([20.0],0)
SetNamelessClass(THIEF)
~ GOTO 22
  IF ~  Class(Protagonist,MAGE)
~ THEN REPLY #67197 /* ~"Je sais. J'en ai marre d'être mage. Voyons si je ne suis pas trop rouillé…"~ */ DO ~FadeToColor([20.0],0)
Wait(2)
FadeFromColor([20.0],0)
SetNamelessClass(THIEF)
~ GOTO 22
  IF ~~ THEN REPLY #67198 /* ~"Je pense que non, en effet. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 22 // from: 21.0 21.1
  SAY #67175 /* ~"D'accord. Il faut pas oublier les bases, hein ?"~ */
  IF ~~ THEN REPLY #67199 /* ~"Non. J'avais encore quelques questions…"~ */ GOTO 14
  IF ~~ THEN REPLY #67200 /* ~"Non. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 23 // from: 20.1
  SAY #67176 /* ~"Toi, les petits services, tu connais pas, hein ? Bon, allons-y. Commençons par voir si tu es agile. Tiens cette dague en équilibre sur le bout de ton index." Il t'envoie un couteau.~ */
  IF ~  CheckStatGT(Protagonist,18,DEX)
~ THEN REPLY #67201 /* ~Attrape-la sur le bout de l'index.~ */ GOTO 24
  IF ~  CheckStatGT(Protagonist,8,DEX)
CheckStatLT(Protagonist,19,DEX)
~ THEN REPLY #67202 /* ~Attrape-la par le manche et mets-la en équilibre sur ton index.~ */ GOTO 25
  IF ~  CheckStatLT(Protagonist,9,DEX)
~ THEN REPLY #67203 /* ~Essaye de l'attraper.~ */ GOTO 26
END

IF ~~ THEN BEGIN 24 // from: 23.0
  SAY #67177 /* ~Tu réceptionnes la dague sur le bout de ton doigt tendu et tu l'envoies tourbillonner dans les airs, laissant Nabat bouche bée. "Ça, pour être vif, tu l'es. T'es sûr d'avoir besoin d'entraînement ?"~ */
  IF ~~ THEN REPLY #67224 /* ~"Oui. Enseigne-moi."~ */ GOTO 27
  IF ~~ THEN REPLY #67225 /* ~"Non, laisse tomber. Mais si tu pouvais répondre à quelques questions…"~ */ GOTO 14
  IF ~~ THEN REPLY #67226 /* ~"Non, laisse tomber. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 25 // from: 23.1
  SAY #67178 /* ~Tu attrapes la dague par le manche et tu la mets en équilibre sur l'extrémité de ton index. "Bien joué. T'es sûr d'avoir besoin d'entraînement ?"~ */
  IF ~~ THEN REPLY #67227 /* ~"Oui. Enseigne-moi."~ */ GOTO 27
  IF ~~ THEN REPLY #67228 /* ~"Non, laisse tomber. Mais si tu pouvais répondre à quelques questions…"~ */ GOTO 14
  IF ~~ THEN REPLY #67229 /* ~"Non, laisse tomber. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 26 // from: 23.2
  SAY #67179 /* ~Tu essaie d'attraper le manche de la dague, mais tu le rates et tu manques te couper sur la lame. "Désolé, mon vieux, mais tu n'as pas les réflexes requis pour devenir le roi des voleurs. Autre chose ?"~ */
  IF ~~ THEN REPLY #67230 /* ~"Réponds à quelques questions."~ */ GOTO 14
  IF ~~ THEN REPLY #67231 /* ~"Non, laisse tomber. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 27 // from: 24.0 25.0
  SAY #67180 /* ~"D'accord. Pour commencer, il te faut acquérir les bases : la furtivité, le camouflage, le crochetage de serrures, la détection et le désamorçage des pièges, et l'analyse des points faibles de la cible."~ */
  IF ~~ THEN REPLY #67232 /* ~"Continue…"~ */ GOTO 28
  IF ~~ THEN REPLY #67233 /* ~"Je crois que j'ai saisi les bases. Passons à l'entraînement."~ */ GOTO 34
END

IF ~~ THEN BEGIN 28 // from: 27.0
  SAY #67181 /* ~"Un des talents les plus utiles qui soient consiste à se déplacer silencieusement. Il te permet de passer à côté des gardes, de contourner un ennemi, d'éviter de te faire repérer, et ainsi de suite. Mais n'oublie pas que cela ne te sert à rien si tu as déjà été remarqué."~ */
  IF ~~ THEN REPLY #67234 /* ~"Continue…"~ */ GOTO 29
  IF ~~ THEN REPLY #67240 /* ~"Je crois que j'ai saisi les bases. Passons à l'entraînement."~ */ GOTO 34
END

IF ~~ THEN BEGIN 29 // from: 28.0
  SAY #67182 /* ~"Bon, et maintenant, les serrures. Elles, ce sont pas tes copines. Tu dois connaître les divers mécanismes existant si tu veux pouvoir les ouvrir. Certains salopards aiment bien renforcer la difficulté en te préparant une petite surprise de leur cru, alors tu as tout intérêt à vérifier qu'il n'y a pas de piège en vue. J'aborde la question dans un instant."~ */
  IF ~~ THEN REPLY #67235 /* ~"Continue…"~ */ GOTO 30
  IF ~~ THEN REPLY #67236 /* ~"Je crois que j'ai saisi les bases. Passons à l'entraînement."~ */ GOTO 34
END

IF ~~ THEN BEGIN 30 // from: 29.0
  SAY #67183 /* ~"Bien sûr, tu vas aussi vouloir apprendre comment te servir de tes mains sans te faire remarquer. Ça peut te permettre de faire les poches de quelqu'un ou de t'emparer d'un truc qui te plaît. Mais tiens-toi prêt à filer, des fois qu'on te remarque."~ */
  IF ~~ THEN REPLY #67237 /* ~"Continue…"~ */ GOTO 31
  IF ~~ THEN REPLY #67241 /* ~"Je crois que j'ai saisi les bases. Passons à l'entraînement."~ */ GOTO 34
END

IF ~~ THEN BEGIN 31 // from: 30.0
  SAY #67184 /* ~"Tu te rappelles quand je te parlais des pièges ? Ce sont tes pires ennemis, ou tout comme. Quand un endroit ou un objet est gardé - ou pire, quand il ne l'est *pas* - redouble de prudence. Les pièges ne seront pas tout de suite évidents, alors prend bien ton temps pour les repérer."~ */
  IF ~~ THEN REPLY #67238 /* ~"Continue…"~ */ GOTO 32
  IF ~~ THEN REPLY #67242 /* ~"Je crois que j'ai saisi les bases. Passons à l'entraînement."~ */ GOTO 34
END

IF ~~ THEN BEGIN 32 // from: 31.0
  SAY #67185 /* ~"Si tu en trouves un, tu as le choix entre le contourner et tenter de le désamorcer. Si tu choisis la seconde option, il a des chances de te péter à la figure. Et le risque est plus grand encore si tu as affaire à un truc magique ou une machine que tu ne comprends pas."~ */
  IF ~~ THEN REPLY #67239 /* ~"Continue…"~ */ GOTO 33
  IF ~~ THEN REPLY #67243 /* ~"Je crois que j'ai saisi les bases. Passons à l'entraînement."~ */ GOTO 34
END

IF ~~ THEN BEGIN 33 // from: 32.0
  SAY #67186 /* ~"Mais le gros avantage, le voilà : l'attaque sournoise. Avec des bras comme les tiens, tu peux délivrer des coups dont tes adversaires te souviendront. Glisse-toi derrière ta cible, localise bien l'endroit à frapper, et lance-toi. Si tu t'y prends bien, tu peux lui faire sacrément mal. Par contre, une fois que tu attaques, attends-toi à te faire repérer. Choisis donc ta cible avec soin."~ */
  IF ~~ THEN REPLY #67244 /* ~"D'accord. Passons à l'entraînement."~ */ GOTO 34
END

IF ~~ THEN BEGIN 34 // from: 27.1 28.1 29.1 30.1 31.1 32.1 33.0
  SAY #67187 /* ~"Pour commencer, apprends à prendre ton temps. La précipitation se traduit souvent par des erreurs, et qui dit erreur dit ennuis. Comme tu ne veux pas en avoir…"
Ta formation de voleur commence.~ */
  IF ~  CheckStatLT(Protagonist,13,DEX)
~ THEN REPLY #67245 /* ~Apprends tout ce que tu peux.~ */ DO ~FadeToColor([20.0],0)
Wait(3)
FadeFromColor([20.0],0)
SetGlobal("Thief_Training","GLOBAL",4)
GiveExperience(Protagonist,3000)
PermanentStatChange(Protagonist,STEALTH,RAISE,17)
PermanentStatChange(Protagonist,TRAPS,RAISE,13)
PermanentStatChange(Protagonist,PICKPOCKET,RAISE,22)
PermanentStatChange(Protagonist,LOCKPICKING,RAISE,18)
SetNamelessClass(THIEF)
~ JOURNAL #67248 /* ~Je me suis entraîné à devenir voleur avec Nabat, professeur de la taverne de la Porte du Traître, à Maudith.~ */ GOTO 35
  IF ~  CheckStatGT(Protagonist,12,DEX)
CheckStatLT(Protagonist,18,DEX)
~ THEN REPLY #67246 /* ~Apprends tout ce que tu peux.~ */ DO ~FadeToColor([20.0],0)
Wait(3)
FadeFromColor([20.0],0)
SetGlobal("Thief_Training","GLOBAL",4)
GiveExperience(Protagonist,3500)
PermanentStatChange(Protagonist,STEALTH,RAISE,17)
PermanentStatChange(Protagonist,TRAPS,RAISE,13)
PermanentStatChange(Protagonist,PICKPOCKET,RAISE,22)
PermanentStatChange(Protagonist,LOCKPICKING,RAISE,18)
SetNamelessClass(THIEF)
~ JOURNAL #67248 /* ~Je me suis entraîné à devenir voleur avec Nabat, professeur de la taverne de la Porte du Traître, à Maudith.~ */ GOTO 36
  IF ~  CheckStatGT(Protagonist,17,DEX)
~ THEN REPLY #67247 /* ~Apprends tout ce que tu peux.~ */ DO ~FadeToColor([20.0],0)
Wait(3)
FadeFromColor([20.0],0)
SetGlobal("Thief_Training","GLOBAL",4)
GiveExperience(Protagonist,3750)
PermanentStatChange(Protagonist,STEALTH,RAISE,17)
PermanentStatChange(Protagonist,TRAPS,RAISE,13)
PermanentStatChange(Protagonist,PICKPOCKET,RAISE,22)
PermanentStatChange(Protagonist,LOCKPICKING,RAISE,18)
SetNamelessClass(THIEF)
~ JOURNAL #67248 /* ~Je me suis entraîné à devenir voleur avec Nabat, professeur de la taverne de la Porte du Traître, à Maudith.~ */ GOTO 36
END

IF ~~ THEN BEGIN 35 // from: 34.0
  SAY #67188 /* ~Il s'interrompt au bout de quelques instants. "Assez. Tu apprends vite. Je ne peux rien t'enseigner de plus. Le reste, tu devras l'apprendre par toi-même."~ */
  IF ~~ THEN REPLY #67249 /* ~"Merci et au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 36 // from: 34.1 34.2
  SAY #67189 /* ~Il s'interrompt au bout de quelques instants. "Assez. Tu apprends vite. Je ne peux rien t'enseigner de plus. Le reste, tu devras l'apprendre par toi-même. Mais, doué comme tu l'es, j'ai l'impression que tu as déjà fait cela." Alors qu'il prononce ces paroles, tu prends conscience qu'il a raison. Tu maîtrisais en effet déjà ces talents et la séance d'entraînement n'a fait que te les remettre en mémoire.~ */
  IF ~~ THEN REPLY #67250 /* ~"Peut-être l'ai-je déjà fait auparavant. Merci et au revoir."~ */ GOTO 37
END

IF ~~ THEN BEGIN 37 // from: 36.0
  SAY #67190 /* ~Alors que les images te reviennent en mémoire (les allées sombres, les nombreux pièges que tu as évités…), tu en "apprends" davantage que ce que Nabat t'as enseigné.~ */
  IF ~~ THEN REPLY #67251 /* ~Pars.~ */ EXIT
END
