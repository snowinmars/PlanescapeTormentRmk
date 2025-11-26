// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DCOLSRGR.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\fr_FR\dialog.tlk
// dialogF  : (none)

BEGIN ~DCOLSRGR~

IF ~  Global("Sharegrave","GLOBAL",0)
!Global("Pox","GLOBAL",2)
~ THEN BEGIN 0 // from:
  SAY #18194 /* ~Grand et sec, cet homme pâle à l'air menaçant respire l'autorité malgré son allure dégingandée et quelque peu gauche. Une bonne partie de son oreille gauche a disparu laissant une vilaine cicatrice, comme si l'oreille avait été mordue, plus que coupée. Ses yeux étroits, changeants - de simples fentes presque - semblent rusés… et dangereux.~ */
  IF ~~ THEN REPLY #18195 /* ~"Bonjour…"~ */ DO ~SetGlobal("Sharegrave","GLOBAL",1)
~ GOTO 1
  IF ~~ THEN REPLY #18196 /* ~Laisse l'homme.~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #18197 /* ~Il crache une réponse : "J'te connais pas, bige." Il te regarde. "Qu'est-ce que tu veux ? Réponds vite, avant que j'appelle mes hommes qui auront vite fait de s'occuper de toi."~ */
  IF ~~ THEN REPLY #18198 /* ~"Qui es-tu ?"~ */ GOTO 3
  IF ~~ THEN REPLY #18199 /* ~"J'ai quelques questions…"~ */ GOTO 7
  IF ~  CheckStatLT(Protagonist,11,CHR)
~ THEN REPLY #18200 /* ~"Rien. Au revoir."~ */ GOTO 2
  IF ~  CheckStatGT(Protagonist,10,CHR)
~ THEN REPLY #18201 /* ~"Rien. Excuse-moi pour cette intrusion… Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.2 3.4 4.3 5.2 5.3 7.3 8.2 9.2 10.6 11.5 12.1 14.4 17.1 19.1 20.2 21.1 22.4 25.3 50.1 57.1
  SAY #18202 /* ~"Dégage alors, bige. Si l'envie de t'arrêter te reprenait, continue ta route, pigé ? Sinon, j'ai des affranchis qu'ça dérangerait pas de t'empêcher d'continuer ta route pour de bon."~ */
  IF ~~ THEN REPLY #18203 /* ~Pars.~ */ DO ~SetGlobal("Sharegrave","GLOBAL",2)
~ EXIT
END

IF ~~ THEN BEGIN 3 // from: 1.0
  SAY #18204 /* ~Il ricane et te regarde l'air incrédule. "Bige, c'est bien la *deuxième* chose que tu aurais dû savoir avant de ramener ton espèce de cadavre balafré ici."~ */
  IF ~~ THEN REPLY #18205 /* ~"C'est quoi la première ?"~ */ GOTO 4
  IF ~~ THEN REPLY #18206 /* ~"Calme-toi. Je ne te veux aucun mal."~ */ GOTO 5
  IF ~~ THEN REPLY #18207 /* ~"Tu as intérêt à me parler sur un autre ton si tu veux rester en vie."~ */ GOTO 6
  IF ~~ THEN REPLY #18208 /* ~"J'ai des questions…"~ */ GOTO 7
  IF ~  CheckStatLT(Protagonist,11,CHR)
~ THEN REPLY #18209 /* ~"Bon, laisse tomber. Au revoir."~ */ GOTO 2
  IF ~  CheckStatGT(Protagonist,10,CHR)
~ THEN REPLY #18210 /* ~"Alors, excuse-moi. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 3.0
  SAY #18211 /* ~"Que je hais les visiteurs et je déteste les étrangers. Toi t'es les deux." Il ricane et se tape la tempe du bout du doigt. "Devine le reste tout seul."~ */
  IF ~~ THEN REPLY #18212 /* ~"Calme-toi. Je ne te veux aucun mal."~ */ GOTO 5
  IF ~~ THEN REPLY #18213 /* ~"Tu as intérêt à me parler sur un autre ton si tu veux rester en vie."~ */ GOTO 6
  IF ~~ THEN REPLY #18214 /* ~"J'ai des questions…"~ */ GOTO 7
  IF ~  CheckStatLT(Protagonist,11,CHR)
~ THEN REPLY #18215 /* ~"Alors, au revoir."~ */ GOTO 2
  IF ~  CheckStatGT(Protagonist,10,CHR)
~ THEN REPLY #18216 /* ~"Alors, excuse-moi. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 3.1 4.0
  SAY #18217 /* ~"Oh, *pas* possible ! Mais alors y'a *plus* aucun problème, c'est ça ? Bon, je t'demande une dernière fois avant que je n'te jette dans la rue - et pas forcément en un seul morceau - qu'est-ce que tu *veux* ?"~ */
  IF ~~ THEN REPLY #18218 /* ~"Tu as intérêt à me parler sur un autre ton si tu veux rester en vie."~ */ GOTO 6
  IF ~~ THEN REPLY #18219 /* ~"J'ai des questions…"~ */ GOTO 7
  IF ~  CheckStatLT(Protagonist,11,CHR)
~ THEN REPLY #18220 /* ~"Rien. Au revoir."~ */ GOTO 2
  IF ~  CheckStatGT(Protagonist,10,CHR)
~ THEN REPLY #18221 /* ~"Rien. Excuse-moi pour l'intrusion. Au revoir."~ */ GOTO 2
END

IF ~~ THEN BEGIN 6 // from: 3.2 4.1 5.0
  SAY #18222 /* ~"Heuh. Bon, ça suffit maintenant." Il te regarde droit dans les yeux, une ébauche de sourire sur son visage et hurle. "Affranchis ! Venez tuer cet homme !"~ */
  IF ~~ THEN REPLY #18223 /* ~Réponds à l'attaque.~ */ DO ~Enemy()
ForceAttack(Protagonist,Myself)
SetGlobal("Sharegrave","GLOBAL",3)
~ EXIT
  IF ~~ THEN REPLY #18224 /* ~Fuis.~ */ DO ~Enemy()
SetGlobal("Sharegrave","GLOBAL",3)
~ EXIT
END

IF ~~ THEN BEGIN 7 // from: 1.1 3.3 4.2 5.1 50.0
  SAY #18225 /* ~Il reste silencieux un moment, puis acquiesce. "Ah vraiment ? Par exemple ?"~ */
  IF ~~ THEN REPLY #18226 /* ~"Parle-moi de Sigil."~ */ GOTO 8
  IF ~  Global("Pharod","GLOBAL",0)
~ THEN REPLY #18227 /* ~"Je cherche un certain Pharod."~ */ GOTO 10
  IF ~  Global("Journal","GLOBAL",0)
~ THEN REPLY #18228 /* ~"Je cherche un journal que j'ai perdu."~ */ GOTO 9
  IF ~  CheckStatLT(Protagonist,11,CHR)
~ THEN REPLY #18229 /* ~"Peu importe. Au revoir."~ */ GOTO 2
  IF ~  CheckStatGT(Protagonist,10,CHR)
~ THEN REPLY #18230 /* ~"Peu importe. Excuse-moi pour l'intrusion… Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 8 // from: 7.0 9.0
  SAY #18231 /* ~Il lève les yeux au ciel, puis tend ses mains comme s'il était en présence d'une image de splendeur. "La Cité des Portes, où les rues sont pavées d'or et…" Il recouvre son sérieux. "… de morts. T'as pas l'air assez abruti pour venir me poser des questions sur Sigil… alors, de quoi il retourne exactement ? Joue pas avec moi, bige - ma patience a des limites."~ */
  IF ~  Global("Pharod","GLOBAL",0)
~ THEN REPLY #18232 /* ~"En fait, je cherche un certain Pharod."~ */ GOTO 10
  IF ~  Global("Journal","GLOBAL",0)
~ THEN REPLY #18233 /* ~"En fait, je cherche un journal que j'ai perdu."~ */ GOTO 9
  IF ~  CheckStatLT(Protagonist,11,CHR)
~ THEN REPLY #18234 /* ~"Rien d'autre. Au revoir."~ */ GOTO 2
  IF ~  CheckStatGT(Protagonist,10,CHR)
~ THEN REPLY #18235 /* ~"Rien d'autre. Excuse-moi pour l'intrusion… Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 9 // from: 7.2 8.1
  SAY #18236 /* ~"J'sais rien là-dessus." Il fronce les sourcils, puis te regarde durement. "Il faudrait ?"~ */
  IF ~~ THEN REPLY #18237 /* ~"Non. Parle-moi de Sigil."~ */ GOTO 8
  IF ~  Global("Pharod","GLOBAL",0)
~ THEN REPLY #18238 /* ~"Non. Je cherche aussi un certain Pharod."~ */ GOTO 10
  IF ~~ THEN REPLY #18239 /* ~"Non. Au revoir."~ */ GOTO 2
  IF ~~ THEN REPLY #18240 /* ~"Non. Excuse-moi pour l'intrusion… Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 10 // from: 7.1 8.0 9.1 57.0
  SAY #18241 /* ~La tension augmente soudain dans la pièce. "Tiens, quelle drôle de question. Pourquoi tu veux savoir des choses sur le vieux Pharod ?"~ */
  IF ~~ THEN REPLY #18242 /* ~"Il m'a volé quelque chose que je veux récupérer."~ */ GOTO 17
  IF ~~ THEN REPLY #18243 /* ~"Il a certaines choses qui m'appartiennent et que je veux récupérer."~ */ GOTO 17
  IF ~~ THEN REPLY #18244 /* ~"Il sait quelque chose que je veux savoir."~ */ GOTO 12
  IF ~~ THEN REPLY #18245 /* ~"Je veux juste le rencontrer."~ */ GOTO 11
  IF ~  CheckStatLT(Protagonist,13,WIS)
~ THEN REPLY #18246 /* ~"C'est un ami."~ */ GOTO 13
  IF ~  CheckStatGT(Protagonist,12,WIS)
~ THEN REPLY #18247 /* ~"C'est un ami."~ */ GOTO 14
  IF ~  CheckStatLT(Protagonist,11,CHR)
~ THEN REPLY #18248 /* ~"Oublie ce que je t'ai demandé. Au revoir."~ */ GOTO 2
  IF ~  CheckStatGT(Protagonist,10,CHR)
~ THEN REPLY #18249 /* ~"Rien, vraiment. Excuse-moi pour l'intrusion… Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 11 // from: 10.3
  SAY #18250 /* ~"Bah ! Un tas de fumier puant pour autant que je sache !" Il te fixe de plus près. "Pourquoi ?"~ */
  IF ~~ THEN REPLY #18251 /* ~"Il m'a volé quelque chose que je veux récupérer."~ */ GOTO 17
  IF ~~ THEN REPLY #18252 /* ~"Il a certaines choses qui m'appartiennent et que je veux récupérer."~ */ GOTO 17
  IF ~~ THEN REPLY #18253 /* ~"Il sait quelque chose que je veux savoir."~ */ GOTO 12
  IF ~  CheckStatLT(Protagonist,13,WIS)
~ THEN REPLY #18254 /* ~"C'est un ami."~ */ GOTO 13
  IF ~  CheckStatGT(Protagonist,12,WIS)
~ THEN REPLY #18255 /* ~"C'est un ami."~ */ GOTO 14
  IF ~  CheckStatLT(Protagonist,11,CHR)
~ THEN REPLY #18256 /* ~"Oublie ce que je t'ai demandé. Au revoir."~ */ GOTO 2
  IF ~  CheckStatGT(Protagonist,10,CHR)
~ THEN REPLY #18257 /* ~"Rien, vraiment. Excuse-moi pour l'intrusion… Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 12 // from: 10.2 11.2 14.2
  SAY #18258 /* ~"Ah vraiment ? Par exemple, hein ?"~ */
  IF ~~ THEN REPLY #18259 /* ~"Qui je suis, par exemple."~ */ GOTO 15
  IF ~  CheckStatLT(Protagonist,11,CHR)
~ THEN REPLY #18260 /* ~"Rien. Au revoir."~ */ GOTO 2
  IF ~  CheckStatGT(Protagonist,10,CHR)
~ THEN REPLY #18261 /* ~"Rien. Excuse-moi pour l'intrusion… Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 13 // from: 10.4 11.3 14.3
  SAY #18269 /* ~"Oh ?" Il minaude, puis sourit méchamment. "Alors, donne lui ce message de ma part…" Soudain, il crie : "Affranchis ! Tuez-moi ce type !"~ */
  IF ~~ THEN REPLY #18270 /* ~Réponds à l'attaque.~ */ DO ~Enemy()
ForceAttack(Protagonist,Myself)
SetGlobal("Sharegrave","GLOBAL",3)
~ EXIT
  IF ~~ THEN REPLY #18271 /* ~Fuis.~ */ DO ~Enemy()
SetGlobal("Sharegrave","GLOBAL",3)
~ EXIT
END

IF ~~ THEN BEGIN 14 // from: 10.5 11.4
  SAY #18272 /* ~Tu réalises soudain que ce ne serait pas une bonne idée de dire ça. Il y a dans le regard de l'autre un lueur qui te donne à penser que Pharod et lui ne sont pas les meilleurs amis du monde. Mais alors pas du tout.~ */
  IF ~~ THEN REPLY #18273 /* ~"Il m'a volé quelque chose que je veux récupérer."~ */ GOTO 17
  IF ~~ THEN REPLY #18274 /* ~"Il a certaines choses qui m'appartiennent et que je veux récupérer."~ */ GOTO 17
  IF ~~ THEN REPLY #18275 /* ~"Il sait quelque chose que je veux savoir."~ */ GOTO 12
  IF ~~ THEN REPLY #18276 /* ~"C'est un ami."~ */ GOTO 13
  IF ~  CheckStatLT(Protagonist,11,CHR)
~ THEN REPLY #18277 /* ~"Oublie ce que je t'ai demandé. Au revoir."~ */ GOTO 2
  IF ~  CheckStatGT(Protagonist,10,CHR)
~ THEN REPLY #18278 /* ~"Rien, vraiment. Excuse-moi pour l'intrusion… Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 15 // from: 12.0
  SAY #18279 /* ~Après un lourd silence, il se met à parler : "Tu es complètement azimuté, bige, et il fait pas bon t'avoir dans les parages, suffit de te voir. Dégage et fais vite."~ */
  IF ~~ THEN REPLY #18280 /* ~"Mais j'ai d'autres questions…"~ */ GOTO 16
  IF ~~ THEN REPLY #18281 /* ~Pars.~ */ DO ~SetGlobal("Sharegrave","GLOBAL",2)
~ EXIT
END

IF ~~ THEN BEGIN 16 // from: 15.0 23.0 26.1 32.0 34.0 46.0 48.0 54.1
  SAY #18282 /* ~"Ah vraiment ? Hum. Comme c'est intéressant." Il crie soudain : "Affranchis ! Tuez-moi ce type !"~ */
  IF ~~ THEN REPLY #18283 /* ~Réponds à leur attaque.~ */ DO ~Enemy()
ForceAttack(Protagonist,Myself)
SetGlobal("Sharegrave","GLOBAL",3)
~ EXIT
  IF ~~ THEN REPLY #18284 /* ~Fuis.~ */ DO ~Enemy()
SetGlobal("Sharegrave","GLOBAL",3)
~ EXIT
END

IF ~~ THEN BEGIN 17 // from: 10.0 10.1 11.0 11.1 14.0 14.1
  SAY #18285 /* ~L'homme reste silencieux un moment, puis se fend d'un sourire. "Il nous vole tous, hein, les vivants comme les morts ?" Il ricane.~ */
  IF ~~ THEN REPLY #18286 /* ~"Que veux-tu dire ?"~ */ GOTO 18
  IF ~  CheckStatLT(Protagonist,11,CHR)
~ THEN REPLY #18287 /* ~"Peut-être. Au revoir."~ */ GOTO 2
  IF ~  CheckStatGT(Protagonist,10,CHR)
~ THEN REPLY #18288 /* ~"Peut-être. Excuse-moi pour l'intrusion… Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 18 // from: 17.0
  SAY #18289 /* ~"Notre principale source de… revenu… par ici, ce sont les morts. Tu piges ?"~ */
  IF ~~ THEN REPLY #18290 /* ~"Pas vraiment."~ */ GOTO 19
  IF ~~ THEN REPLY #18291 /* ~"Tu es un Récupérateur."~ */ GOTO 20
END

IF ~~ THEN BEGIN 19 // from: 18.0
  SAY #18292 /* ~"Mes affranchis et moi, on se fait un peu de jonc en ramassant les corps des morts dans la Ruche et en les vendant aux Hommes-Poussière. Tu comprends, maintenant ?"~ */
  IF ~~ THEN REPLY #18293 /* ~"Tu es un Récupérateur."~ */ GOTO 20
  IF ~  CheckStatLT(Protagonist,11,CHR)
~ THEN REPLY #18294 /* ~"Oui. Au revoir."~ */ GOTO 2
  IF ~  CheckStatGT(Protagonist,10,CHR)
~ THEN REPLY #18295 /* ~"Oui. Excuse-moi pour l'intrusion… Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 20 // from: 18.1 19.0
  SAY #18296 /* ~"Ouais, c'est ça." Il te regarde comme s'il songeait à quelque chose. "Écoute, à tout moment le nombre de morts est limité. Mes affranchis et moi, on ne peut en ramasser qu'un certain nombre. Si quelqu'un d'autre les ramasse, c'est ça de moins qui va dans nos poches."~ */
  IF ~  CheckStatGT(Protagonist,12,INT)
~ THEN REPLY #18297 /* ~"Pharod récupère des corps, lui aussi ?"~ */ GOTO 21
  IF ~~ THEN REPLY #18298 /* ~"Alors…"~ */ JOURNAL #17089 /* ~Dans le Square du Chiffonnier, un homme m'a dit que Pharod avait déniché une réserve inépuisable de cadavres. Il en est contrarié, car il est lui-même dans le commerce de la collecte de cadavres. Il veut savoir comment fait Pharod.~ */ GOTO 22
  IF ~  CheckStatLT(Protagonist,11,CHR)
~ THEN REPLY #18299 /* ~"C'est tout ce que je voulais savoir. Au revoir."~ */ GOTO 2
  IF ~  CheckStatGT(Protagonist,10,CHR)
~ THEN REPLY #18300 /* ~"Je vois. Excuse-moi pour l'intrusion… Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 21 // from: 20.0
  SAY #18301 /* ~"Ouais."~ */
  IF ~~ THEN REPLY #18302 /* ~"Alors…"~ */ JOURNAL #17089 /* ~Dans le Square du Chiffonnier, un homme m'a dit que Pharod avait déniché une réserve inépuisable de cadavres. Il en est contrarié, car il est lui-même dans le commerce de la collecte de cadavres. Il veut savoir comment fait Pharod.~ */ GOTO 22
  IF ~  CheckStatLT(Protagonist,11,CHR)
~ THEN REPLY #18303 /* ~"Intéressant. Au revoir."~ */ GOTO 2
  IF ~  CheckStatGT(Protagonist,10,CHR)
~ THEN REPLY #18304 /* ~"Je vois. Excuse-moi pour l'intrusion… Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 22 // from: 20.1 21.0
  SAY #18305 /* ~"Le hic, c'est qu'il en a trouvé une *flopée*. Pourtant, j'ai pas entendu parler de massacres à Sigil." Il fronce les sourcils, en se tapotant le menton. "Alors ça m'intéresserait de savoir d'où ils viennent, tous ces morts."~ */
  IF ~  GlobalGT("Know_Pharod_Bodies","GLOBAL",0)
~ THEN REPLY #18306 /* ~"Je le sais déjà, en fait."~ */ GOTO 52
  IF ~  Global("Know_Pharod_Bodies","GLOBAL",0)
~ THEN REPLY #18307 /* ~"Je pourrais me renseigner, si tu veux."~ */ DO ~IncrementGlobalOnceEx("GLOBALGood_Sharegrave_1","GLOBALGood",1)
~ GOTO 24
  IF ~  Global("Know_Pharod_Bodies","GLOBAL",0)
~ THEN REPLY #18308 /* ~"Je pourrais me renseigner… si tu me paies."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Sharegrave_1","GLOBALGood",-1)
~ GOTO 25
  IF ~~ THEN REPLY #18309 /* ~"Étrange. Mais peu importe. J'ai d'autres questions…"~ */ GOTO 23
  IF ~  CheckStatLT(Protagonist,11,CHR)
~ THEN REPLY #18310 /* ~"Tu le découvriras peut-être un jour. Au revoir."~ */ GOTO 2
  IF ~  CheckStatGT(Protagonist,10,CHR)
~ THEN REPLY #18311 /* ~"Bonne chance dans ta recherche de réponses. Excuse-moi pour l'intrusion… Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 23 // from: 22.3
  SAY #18312 /* ~Il ricane, soudain furieux de ta réponse. "J'en ai assez de toi. Va-t'en avant que j'appelle mes affranchis pour te montrer la sortie."~ */
  IF ~~ THEN REPLY #18313 /* ~"Mais j'ai d'autres questions…"~ */ GOTO 16
  IF ~~ THEN REPLY #18314 /* ~Pars.~ */ DO ~SetGlobal("Sharegrave","GLOBAL",2)
~ EXIT
END

IF ~~ THEN BEGIN 24 // from: 22.1
  SAY #18315 /* ~"Ah ouais ? Et comment tu ferais ça ?"~ */
  IF ~~ THEN REPLY #18316 /* ~"Il faut simplement que je le trouve. Le reste, je m'en occupe."~ */ JOURNAL #18449 /* ~J'ai accepté d'aider un homme du Square du Chiffonnier à en apprendre davantage sur la manière dont Pharod se débrouille pour ne jamais manquer de corps à livrer. Il m'a proposé de me payer en échange de renseignements. Il a également dit que, pour trouver Pharod, je devrai suivre les plates-formes en direction du nord-ouest, jusqu'à arriver à un portail qui me mènera à sa cachette.~ */ GOTO 49
END

IF ~~ THEN BEGIN 25 // from: 22.2
  SAY #18317 /* ~Il te regarde un moment, en tirant sur les restes de son lobe gauche. "Très bien… dis ton prix, et on verra."~ */
  IF ~~ THEN REPLY #18318 /* ~"Trois cents pièces de cuivre."~ */ GOTO 26
  IF ~~ THEN REPLY #18319 /* ~"Deux cents pièces de cuivre."~ */ DO ~SetGlobal("Sharegrave","GLOBAL",5)
~ JOURNAL #18450 /* ~J'ai rencontré un homme dans le Square du Chiffonnier qui m'offrira une récompense si je découvre où et comment Pharod amasse autant de corps.~ */ GOTO 27
  IF ~~ THEN REPLY #18320 /* ~"Cent pièces de cuivre."~ */ DO ~SetGlobal("Sharegrave","GLOBAL",6)
~ JOURNAL #18450 /* ~J'ai rencontré un homme dans le Square du Chiffonnier qui m'offrira une récompense si je découvre où et comment Pharod amasse autant de corps.~ */ GOTO 28
  IF ~  CheckStatLT(Protagonist,11,CHR)
~ THEN REPLY #18321 /* ~"Peu importe. Au revoir."~ */ GOTO 2
  IF ~  CheckStatGT(Protagonist,10,CHR)
~ THEN REPLY #18322 /* ~"On verra ça une autre fois. Excuse-moi pour l'intrusion… Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 26 // from: 25.0
  SAY #18323 /* ~Il se gausse. "J'ai pas autant besoin que ça de le savoir." "Dégage d'ici, avant que j'appelle mes affranchis pour te montrer la sortie."~ */
  IF ~~ THEN REPLY #18324 /* ~"Attends ! Cent pièces de cuivre, alors."~ */ DO ~SetGlobal("Sharegrave","GLOBAL",6)
~ JOURNAL #18450 /* ~J'ai rencontré un homme dans le Square du Chiffonnier qui m'offrira une récompense si je découvre où et comment Pharod amasse autant de corps.~ */ GOTO 27
  IF ~~ THEN REPLY #18325 /* ~"Mais j'ai d'autres questions…"~ */ GOTO 16
  IF ~~ THEN REPLY #18326 /* ~Pars.~ */ DO ~SetGlobal("Sharegrave","GLOBAL",2)
~ EXIT
END

IF ~~ THEN BEGIN 27 // from: 25.1 26.0
  SAY #18327 /* ~Il réfléchit un moment avant d'accepter. "Très bien. Affaire conclue. Reviens ici avec le soltif et le jonc changera de mains. Tu veux savoir où est le vieux Pharod ?"~ */
  IF ~~ THEN REPLY #18328 /* ~"Oui."~ */ GOTO 29
  IF ~~ THEN REPLY #18329 /* ~"Non."~ */ GOTO 30
END

IF ~~ THEN BEGIN 28 // from: 25.2
  SAY #18330 /* ~"Affaire conclue. Tu veux savoir où se trouve le vieux Pharod ?"~ */
  IF ~~ THEN REPLY #18331 /* ~"Oui."~ */ JOURNAL #18451 /* ~Dans le Square du Chiffonnier, un homme m'a dit que pour trouver Pharod, il fallait que je suive la plate-forme au-dessus du square, direction nord-ouest, jusqu'à la porte. Celle-ci devrait me mener à son refuge.~ */ GOTO 29
  IF ~~ THEN REPLY #18332 /* ~"Non."~ */ GOTO 30
END

IF ~~ THEN BEGIN 29 // from: 27.0 28.0
  SAY #18333 /* ~"Monte sur la plate-forme, suis-la vers le nord et l'ouest et tu arriveras à une porte qui mène au refuge de Pharod. Y arriver et trouver les informations, c'est ton affaire. Si on t'pose la question, tu m'connais pas et on en a jamais parlé, pigé ?"~ */
  IF ~~ THEN REPLY #18334 /* ~"*Qui* es-tu ?"~ */ GOTO 31
  IF ~~ THEN REPLY #18335 /* ~"Bien sûr. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 30 // from: 27.1 28.1
  SAY #18336 /* ~"Très bien. Si tu rencontres quelqu'un, t'me connais pas et on en a jamais parlé, pigé ?"~ */
  IF ~~ THEN REPLY #18337 /* ~"*Qui* es-tu ?"~ */ GOTO 31
  IF ~~ THEN REPLY #18338 /* ~"Bien sûr. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 31 // from: 29.0 30.0 49.0
  SAY #18339 /* ~"Pour un malin matois, t'écoutes pas trop bien."~ */
  IF ~~ THEN REPLY #18340 /* ~"Euh…"~ */ EXIT
  IF ~~ THEN REPLY #18341 /* ~Pars.~ */ EXIT
END

IF ~  Global("Sharegrave","GLOBAL",2)
~ THEN BEGIN 32 // from:
  SAY #18342 /* ~L'homme n'a pas l'air ravi de te revoir. "J'veux pas entendre un seul mot de toi, bige, pas un seul. Dégage, maintenant, avant que j'appelle mes affranchis pour te montrer la sortie."~ */
  IF ~~ THEN REPLY #18343 /* ~"Mais j'ai quelques questions…"~ */ GOTO 16
  IF ~~ THEN REPLY #18344 /* ~Pars.~ */ EXIT
END

IF ~  GlobalGT("Sharegrave","GLOBAL",4)
~ THEN BEGIN 33 // from:
  SAY #18345 /* ~L'homme te fait un tout petit signe de bienvenue. "As-tu fait ce que je t'ai demandé ? T'as trouvé ce qu'il mijote ?"~ */
  IF ~  GlobalGT("Know_Pharod_Bodies","GLOBAL",0)
Global("Sharegrave","GLOBAL",5)
~ THEN REPLY #18346 /* ~"Oui. Pharod s'approvisionne en corps morts dans les catacombes, sous Sigil. Il se fait beaucoup de jonc en vendant aux Hommes-Poussière des cadavres qu'ils ont eux-mêmes déjà enterrés."~ */ DO ~GivePartyGold(200)
AddexperienceParty(750)
~ JOURNAL #18455 /* ~J'ai dit à l'homme qui m'a demandé de découvrir les activités de Pharod ce qu'il avait besoin de savoir et il m'a payé en conséquence.~ */ GOTO 35
  IF ~  GlobalGT("Know_Pharod_Bodies","GLOBAL",0)
Global("Sharegrave","GLOBAL",6)
~ THEN REPLY #18347 /* ~"Oui. Pharod s'approvisionne en corps morts dans les catacombes, sous Sigil. Il se fait beaucoup de jonc en vendant aux Hommes-Poussière des cadavres qu'ils ont eux-mêmes déjà enterrés."~ */ DO ~GivePartyGold(100)
AddexperienceParty(750)
~ JOURNAL #18455 /* ~J'ai dit à l'homme qui m'a demandé de découvrir les activités de Pharod ce qu'il avait besoin de savoir et il m'a payé en conséquence.~ */ GOTO 35
  IF ~~ THEN REPLY #18348 /* ~Mensonge : "Pharod a simplement de la chance de trouver des corps morts. C'est tout."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Sharegrave_1","GLOBALLaw",-1)
~ GOTO 45
  IF ~~ THEN REPLY #18349 /* ~"Pas encore."~ */ GOTO 34
END

IF ~~ THEN BEGIN 34 // from: 33.3 49.1
  SAY #18350 /* ~"Trouve ce que j'ai besoin de savoir… et j'veux pas te revoir tant qu't'a pas la chanson. Va, avant que j'appelle mes affranchis pour te montrer la sortie."~ */
  IF ~~ THEN REPLY #18351 /* ~"Mais j'ai quelques questions…"~ */ GOTO 16
  IF ~~ THEN REPLY #18352 /* ~Pars.~ */ EXIT
END

IF ~~ THEN BEGIN 35 // from: 33.0 33.1 53.0 55.0
  SAY #18353 /* ~Ses yeux s'écarquillent de surprise et il se met à crier : "Par Baator, comment a-t-il pu y descendre ?! Ce maudit bâtard ?~ */
  IF ~~ THEN REPLY #18354 /* ~"Son 'refuge' est en fait un ensemble de cavernes qui mène à un petit quartier de la cité enterré sous le Square du Chiffonnier. De là, il y a une porte qui donne sur les catacombes."~ */ DO ~SetGlobal("Sharegrave","GLOBAL",4)
SetGlobal("Shite","GLOBAL",1)
~ GOTO 36
  IF ~  Global("Sharegrave","GLOBAL",5)
~ THEN REPLY #18355 /* ~"Si tu veux le savoir, ça te coûtera plus cher."~ */ GOTO 39
  IF ~  Global("Sharegrave","GLOBAL",6)
~ THEN REPLY #18356 /* ~"Si tu veux le savoir, ça te coûtera plus cher."~ */ GOTO 40
END

IF ~~ THEN BEGIN 36 // from: 35.0 39.0 40.0 41.0 42.0
  SAY #18357 /* ~"Je peux pas croire à la chance de ce bâtard."~ */
  IF ~  Dead("Pharod")
~ THEN REPLY #18358 /* ~"En fait, je crois que la chance l'a abandonné. Il est mort."~ */ DO ~SetGlobal("Sharegrave","GLOBAL",4)
SetGlobal("Shite","GLOBAL",1)
~ GOTO 37
  IF ~  !Dead("Pharod")
~ THEN REPLY #18359 /* ~"Maintenant que son secret a été levé, combien de temps tout cela durera encore ?"~ */ DO ~SetGlobal("Sharegrave","GLOBAL",4)
SetGlobal("Shite","GLOBAL",1)
~ GOTO 44
END

IF ~~ THEN BEGIN 37 // from: 36.0
  SAY #18360 /* ~"Quoi ?!" Les nouvelles font lentement leur chemin. "Oh, j'ai été béni par la Dame aujourd'hui ! Ça, oui ! Voici ton jonc, matois. Profites-en."~ */
  IF ~~ THEN REPLY #18361 /* ~"Merci. J'ai des questions…"~ */ GOTO 38
  IF ~~ THEN REPLY #18362 /* ~"Merci. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 38 // from: 37.0 44.0
  SAY #18363 /* ~"Eh ? Quoi ? Désolé, matois - pas de temps pour toi, maintenant. Continue ton chemin, j'ai des plans à préparer."~ */
  IF ~~ THEN REPLY #18364 /* ~Pars.~ */ EXIT
END

IF ~~ THEN BEGIN 39 // from: 35.1
  SAY #18365 /* ~"Très bien, la moitié de ce que je te paie plus ce que je te donne déjà : trois cents pièces en tout. D'accord ?"~ */
  IF ~~ THEN REPLY #18366 /* ~"D'accord. Son 'refuge' est en fait un ensemble de cavernes qui mène à un petit quartier de la cité enterré sous le Square du Chiffonnier. De là, il y a une porte qui donne sur les catacombes."~ */ DO ~GivePartyGold(100)
~ JOURNAL #18458 /* ~En lui expliquant comment accéder aux catacombes de Sigil, j'ai réussi à soutirer cinquante pour cent supplémentaires à celui qui m'a payé pour l'information sur la réserve de cadavres de Pharod.~ */ GOTO 36
  IF ~~ THEN REPLY #18367 /* ~"Le double et c'est d'accord."~ */ GOTO 41
  IF ~~ THEN REPLY #18368 /* ~"Non. Laisse tomber."~ */ GOTO 43
END

IF ~~ THEN BEGIN 40 // from: 35.2
  SAY #18369 /* ~"Très bien, la moitié de ce que je te paie plus ce que je te donne déjà : cent cinquante pièces en tout. D'accord ?~ */
  IF ~~ THEN REPLY #18370 /* ~"D'accord. Son 'refuge' est en fait un ensemble de cavernes qui mène à un petit quartier de la cité enterré sous le Square du Chiffonnier. De là, il y a une porte qui donne sur les catacombes."~ */ DO ~GivePartyGold(50)
SetGlobal("Sharegrave","GLOBAL",4)
SetGlobal("Shite","GLOBAL",1)
~ JOURNAL #18458 /* ~En lui expliquant comment accéder aux catacombes de Sigil, j'ai réussi à soutirer cinquante pour cent supplémentaires à celui qui m'a payé pour l'information sur la réserve de cadavres de Pharod.~ */ GOTO 36
  IF ~~ THEN REPLY #18371 /* ~"Le double et c'est d'accord."~ */ GOTO 42
  IF ~~ THEN REPLY #18372 /* ~"Non. Laisse tomber."~ */ GOTO 43
END

IF ~~ THEN BEGIN 41 // from: 39.1
  SAY #18373 /* ~"La moitié de ce que je paierai, pas plus. Je veux que tu songes *très* sérieusement à ce que tu vas dire, bige."~ */
  IF ~~ THEN REPLY #18374 /* ~"D'accord. Son 'refuge' est en fait un ensemble de cavernes qui mène à un petit quartier de la cité enterré sous le Square du Chiffonnier. De là, il y a une porte qui donne sur les catacombes."~ */ DO ~GivePartyGold(100)
SetGlobal("Sharegrave","GLOBAL",4)
SetGlobal("Shite","GLOBAL",1)
~ JOURNAL #18458 /* ~En lui expliquant comment accéder aux catacombes de Sigil, j'ai réussi à soutirer cinquante pour cent supplémentaires à celui qui m'a payé pour l'information sur la réserve de cadavres de Pharod.~ */ GOTO 36
  IF ~~ THEN REPLY #18375 /* ~"Non. Laisse tomber."~ */ GOTO 43
END

IF ~~ THEN BEGIN 42 // from: 40.1
  SAY #18376 /* ~"La moitié de ce que je paierai, pas plus. Je veux que tu songes *très* sérieusement à ce que tu vas dire, bige."~ */
  IF ~~ THEN REPLY #18377 /* ~"D'accord. Son 'refuge' est en fait un ensemble de cavernes qui mène à un petit quartier de la cité enterré sous le Square du Chiffonnier. De là, il y a une porte qui donne sur les catacombes."~ */ DO ~GivePartyGold(50)
SetGlobal("Sharegrave","GLOBAL",4)
SetGlobal("Shite","GLOBAL",1)
~ JOURNAL #18458 /* ~En lui expliquant comment accéder aux catacombes de Sigil, j'ai réussi à soutirer cinquante pour cent supplémentaires à celui qui m'a payé pour l'information sur la réserve de cadavres de Pharod.~ */ GOTO 36
  IF ~~ THEN REPLY #18378 /* ~"Non. Laisse tomber."~ */ GOTO 43
END

IF ~~ THEN BEGIN 43 // from: 39.2 40.2 41.1 42.1
  SAY #18379 /* ~"C'est bon, j'en ai assez de toi." Il crie soudain. "Affranchis ! Ramenez-vous et tuez-moi ce type !"~ */
  IF ~~ THEN REPLY #18380 /* ~Réponds à l'attaque.~ */ DO ~Enemy()
ForceAttack(Protagonist,Myself)
SetGlobal("Sharegrave","GLOBAL",3)
~ EXIT
  IF ~~ THEN REPLY #18381 /* ~Fuis.~ */ DO ~Enemy()
SetGlobal("Sharegrave","GLOBAL",3)
~ EXIT
END

IF ~~ THEN BEGIN 44 // from: 36.1
  SAY #18382 /* ~"Hum. Eh ! Eh-eh, eh !" L'homme se met à rire avec entrain. "T'as raison, vrai ! Voici ton jonc, matois. Profites-en."~ */
  IF ~~ THEN REPLY #18383 /* ~"Merci. J'ai des questions…"~ */ GOTO 38
  IF ~~ THEN REPLY #18384 /* ~"Merci. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 45 // from: 33.2
  SAY #18385 /* ~"J'te crois pas. D'où viendraient-ils tous ?"~ */
  IF ~~ THEN REPLY #18386 /* ~"Je ne sais pas."~ */ GOTO 46
  IF ~  CheckStatGT(Protagonist,13,INT)
~ THEN REPLY #18387 /* ~"D'un autre Plan ?"~ */ GOTO 47
END

IF ~~ THEN BEGIN 46 // from: 45.0 47.0
  SAY #18388 /* ~"Tire-toi d'ici, incapable. Et ne reviens pas. Toi et moi, c'est terminé. Dégage avant que j'appelle mes gars pour te jeter d'ici."~ */
  IF ~~ THEN REPLY #18389 /* ~"Mais j'ai quelques questions…"~ */ JOURNAL #18462 /* ~J'ai essayé de mentir à l'homme qui m'a payé pour l'information sur la réserve de cadavres de Pharod. Il était furieux et ne veut plus rien avoir à faire avec moi.~ */ GOTO 16
  IF ~~ THEN REPLY #18390 /* ~Pars.~ */ DO ~SetGlobal("Sharegrave","GLOBAL",2)
~ JOURNAL #18462 /* ~J'ai essayé de mentir à l'homme qui m'a payé pour l'information sur la réserve de cadavres de Pharod. Il était furieux et ne veut plus rien avoir à faire avec moi.~ */ EXIT
END

IF ~~ THEN BEGIN 47 // from: 45.1
  SAY #18391 /* ~Il y réfléchit, en tirant sur ce qui lui reste de lobe. "Peut-être… mais comment ? Quel Plan ?"~ */
  IF ~~ THEN REPLY #18392 /* ~"Je ne sais pas."~ */ GOTO 46
  IF ~  CheckStatGT(Protagonist,15,INT)
Global("Sharegrave","GLOBAL",5)
~ THEN REPLY #18393 /* ~"Des champs mortels de la Gaste Grise, peut-être ?"~ */ DO ~SetGlobal("Sharegrave","GLOBAL",4)
SetGlobal("Shite","GLOBAL",1)
GivePartyGold(200)
AddexperienceParty(750)
~ JOURNAL #18465 /* ~J'ai menti à l'homme qui m'a payé pour l'information sur la réserve de cadavres de Pharod. Il était méfiant, mais il m'a quand même payé… Malgré tout, j'ai comme l'impression que je ne suis plus le bienvenu.~ */ GOTO 48
  IF ~  CheckStatGT(Protagonist,15,INT)
Global("Sharegrave","GLOBAL",6)
~ THEN REPLY #18394 /* ~"Des champs mortels de la Gaste Grise, peut-être ?"~ */ DO ~SetGlobal("Sharegrave","GLOBAL",4)
SetGlobal("Shite","GLOBAL",1)
GivePartyGold(100)
AddexperienceParty(750)
~ JOURNAL #18465 /* ~J'ai menti à l'homme qui m'a payé pour l'information sur la réserve de cadavres de Pharod. Il était méfiant, mais il m'a quand même payé… Malgré tout, j'ai comme l'impression que je ne suis plus le bienvenu.~ */ GOTO 48
END

IF ~~ THEN BEGIN 48 // from: 47.1 47.2
  SAY #18395 /* ~"Hum." Il te regarde l'air soupçonneux. "Voici ton argent, bige. Dégage avant que j'en aie assez et que je t'envoie mes affranchis."~ */
  IF ~~ THEN REPLY #18396 /* ~"Mais j'ai quelques questions…"~ */ GOTO 16
  IF ~~ THEN REPLY #18397 /* ~Pars.~ */ DO ~SetGlobal("Sharegrave","GLOBAL",2)
~ EXIT
END

IF ~~ THEN BEGIN 49 // from: 24.0
  SAY #18398 /* ~"Hum. Eh. C'est ça, je vais même te donner cent pièces de cuivre pour ta peine. Va sur la plate-forme, suis-la vers le nord et vers l'est et t'arriveras à une porte qui conduit au refuge de Pharod. Y arriver et trouver les informations, c'est ton affaire. Si tu rencontres quelqu'un, tu m'connais pas et on en a jamais parlé, pigé ?"~ */
  IF ~~ THEN REPLY #18399 /* ~"*Qui* es-tu ?"~ */ DO ~SetGlobal("Sharegrave","GLOBAL",6)
~ GOTO 31
  IF ~~ THEN REPLY #18400 /* ~"Bien sûr. J'ai des questions…"~ */ DO ~SetGlobal("Sharegrave","GLOBAL",6)
~ GOTO 34
  IF ~~ THEN REPLY #18401 /* ~"Bien sûr. Au revoir."~ */ DO ~SetGlobal("Sharegrave","GLOBAL",6)
~ EXIT
END

IF ~  Global("Sharegrave","GLOBAL",1)
~ THEN BEGIN 50 // from:
  SAY #18402 /* ~Il semble modérément surpris de ton arrivée. "Hum ! Je ne m'attendais pas à te revoir, abruti. Qu'est-ce que tu attends de moi ?"~ */
  IF ~~ THEN REPLY #18403 /* ~"J'ai des questions…"~ */ GOTO 7
  IF ~  CheckStatLT(Protagonist,11,CHR)
~ THEN REPLY #18404 /* ~"Rien. Au revoir."~ */ GOTO 2
  IF ~  CheckStatGT(Protagonist,10,CHR)
~ THEN REPLY #18405 /* ~"Rien. Excuse-moi pour cette intrusion… Au revoir."~ */ EXIT
END

IF ~  Global("Sharegrave","GLOBAL",4)
~ THEN BEGIN 51 // from:
  SAY #18406 /* ~Il semble modérément surpris de te revoir. "Désolé, matois - pas de temps pour toi, maintenant. Une autre fois, peut-être. Passe ton chemin, j'ai des plans à faire."~ */
  IF ~~ THEN REPLY #18407 /* ~Pars.~ */ EXIT
END

IF ~~ THEN BEGIN 52 // from: 22.0
  SAY #18408 /* ~"Cent pièces pour la chanson. D'accord ?"~ */
  IF ~  CheckStatGT(Protagonist,13,CHR)
~ THEN REPLY #18409 /* ~"Le triple et c'est d'accord."~ */ GOTO 54
  IF ~  CheckStatGT(Protagonist,10,CHR)
~ THEN REPLY #18410 /* ~"Le double et c'est d'accord."~ */ DO ~SetGlobal("Sharegrave","GLOBAL",5)
~ GOTO 53
  IF ~~ THEN REPLY #18411 /* ~"D'accord."~ */ DO ~SetGlobal("Sharegrave","GLOBAL",6)
~ GOTO 55
END

IF ~~ THEN BEGIN 53 // from: 52.1
  SAY #18412 /* ~"Conclu ; deux cents pièces de cuivre. D'accord ?"~ */
  IF ~~ THEN REPLY #18413 /* ~"Pharod s'approvisionne en corps morts dans les catacombes, sous Sigil. Il se fait beaucoup de jonc en vendant aux Hommes-Poussière des cadavres qu'ils ont eux-mêmes déjà enterrés."~ */ DO ~SetGlobal("Sharegrave","GLOBAL",4)
SetGlobal("Shite","GLOBAL",1)
GivePartyGold(200)
AddexperienceParty(750)
~ JOURNAL #18468 /* ~Dans le Square du Chiffonnier, un homme m'a payé pour que je lui fournisse des informations sur la réserve de cadavres de Pharod, réserve qui semble inépuisable.~ */ GOTO 35
END

IF ~~ THEN BEGIN 54 // from: 52.0
  SAY #18414 /* ~Il ricane. "J'ai pas autant besoin que ça de savoir. Dégage, avant que j'appelle mes affranchis pour te montrer la sortie."~ */
  IF ~~ THEN REPLY #18415 /* ~"Attends ! Cent pièces de cuivre, alors."~ */ DO ~SetGlobal("Sharegrave","GLOBAL",6)
~ GOTO 55
  IF ~~ THEN REPLY #18416 /* ~"Mais j'ai d'autres questions…"~ */ GOTO 16
  IF ~~ THEN REPLY #18417 /* ~Pars.~ */ DO ~SetGlobal("Sharegrave","GLOBAL",2)
~ EXIT
END

IF ~~ THEN BEGIN 55 // from: 52.2 54.0
  SAY #18418 /* ~"D'accord ; cent pièces. Alors ?"~ */
  IF ~~ THEN REPLY #18419 /* ~"Pharod s'approvisionne en corps morts dans les catacombes, sous Sigil. Il se fait beaucoup de jonc en vendant aux Hommes-Poussière des cadavres qu'ils ont eux-mêmes déjà enterrés."~ */ DO ~SetGlobal("Sharegrave","GLOBAL",4)
SetGlobal("Shite","GLOBAL",1)
GivePartyGold(100)
AddexperienceParty(750)
~ JOURNAL #18468 /* ~Dans le Square du Chiffonnier, un homme m'a payé pour que je lui fournisse des informations sur la réserve de cadavres de Pharod, réserve qui semble inépuisable.~ */ GOTO 35
END

IF ~  Global("Sharegrave","GLOBAL",0)
Global("Pox","GLOBAL",2)
~ THEN BEGIN 56 // from:
  SAY #18420 /* ~Grand et sec, cet homme pâle à l'air menaçant respire l'autorité malgré son allure dégingandée et quelque peu gauche. Une bonne partie de son oreille gauche a disparu laissant une vilaine cicatrice, comme si l'oreille avait été mordue, plus que coupée. Ses yeux étroits, changeants - de simples fentes presque - semblent rusés… et dangereux.~ */
  IF ~~ THEN REPLY #18421 /* ~"Tu ne serais pas Partagetombe ?"~ */ GOTO 57
  IF ~~ THEN REPLY #18422 /* ~Laisse l'homme.~ */ EXIT
END

IF ~~ THEN BEGIN 57 // from: 56.0
  SAY #18423 /* ~Il crache une réponse : "J'te connais pas, bige." Il te regarde. "Qui es-tu pour demander des renseignements sur un matois du nom de 'Partagetombe' ?"~ */
  IF ~~ THEN REPLY #18424 /* ~"Un dénommé Variole m'a demandé d'aller voir Partagetombe. Il m'a dit qu'il saurait peut-être où se trouve un certain Pharod."~ */ GOTO 10
  IF ~  CheckStatLT(Protagonist,11,CHR)
~ THEN REPLY #18425 /* ~"Oublie ce que je t'ai demandé. Au revoir."~ */ GOTO 2
  IF ~  CheckStatGT(Protagonist,10,CHR)
~ THEN REPLY #18426 /* ~"Personne. Excuse-moi pour l'intrusion. Au revoir."~ */ EXIT
END
