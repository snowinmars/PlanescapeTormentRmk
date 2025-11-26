// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DZ1094.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\fr_FR\dialog.tlk
// dialogF  : (none)

BEGIN ~DZ1094~

IF ~  Global("Asonje","GLOBAL",0)
~ THEN BEGIN 0 // from:
  SAY #6562 /* ~Le numéro '1094' est gravé sur le front de ce cadavre errant. Ses lèvres sont cousues, et l'odeur chimique de formol frais flotte dans l'air sous la forme d'un nuage. Malgré ses formes floues et sans vie et ses yeux laiteux, ce corps devait être autrefois celui d'un beau jeune homme.~ */
  IF ~  Global("Zombie_Chaotic","GLOBAL",0)
~ THEN REPLY #6565 /* ~"Alors… Tu as vu quelque chose d'intéressant ?"~ */ DO ~IncrementGlobal("Law","GLOBAL",-1)
SetGlobal("Zombie_Chaotic","GLOBAL",1)
~ GOTO 1
  IF ~  Global("Zombie_Chaotic","GLOBAL",1)
~ THEN REPLY #6566 /* ~"Alors… t'as vu quelque chose d'intéressant ?"~ */ GOTO 1
  IF ~  Global("Vaxis_Exposed","GLOBAL",1)
~ THEN REPLY #6567 /* ~"Je sais que tu n'es pas un zombi. Tu ne trompes personne."~ */ GOTO 1
  IF ~  Global("Speak_with_Dead","GLOBAL",1)
~ THEN REPLY #6568 /* ~Utilise Histoires-Os-Conter sur le cadavre.~ */ DO ~SetGlobal("Asonje","GLOBAL",1)
~ GOTO 2
  IF ~~ THEN REPLY #6569 /* ~"Je suis heureux de t'avoir parlé. Au revoir."~ */ EXIT
  IF ~~ THEN REPLY #6570 /* ~Laisse le cadavre tranquille.~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0 0.1 0.2
  SAY #6563 /* ~Le cadavre continue à te fixer.~ */
  IF ~~ THEN REPLY #6571 /* ~Laisse le cadavre tranquille.~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 0.3
  SAY #6564 /* ~Le corps tremble, puis s'immobilise, l'esprit une fois de plus plongé dans sa carapace mortelle à l'abandon. L'espace de quelques secondes, un semblant de vie semble surgir dans les yeux de ce zombi, qui se met à regarder autour de lui d'un air intrigué et perplexe. Le corps tout entier semble maintenant entouré d'une aura douce et dorée.~ */
  IF ~~ THEN REPLY #6572 /* ~"Je voudrais te poser une question…"~ */ GOTO 3
  IF ~~ THEN REPLY #9246 /* ~Laisse l'esprit.~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 2.0
  SAY #9224 /* ~Soudain, l'esprit s'aperçoit de ta présence et te dédie un sourire désarmant qui fait sauter tous les points de suture autour de sa bouche. Étonné, il porte la main à ses lèvres, hausse les épaules et te salue d'un hochement de tête. "Où… où suis-je ? Drôle d'endroit ! On se connaît ?" Il a un petit toussotement et masse sa gorge roide.~ */
  IF ~~ THEN REPLY #9247 /* ~"Tu es là pour répondre à *mes* questions, esprit."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Asonje_1","GLOBALGood",-1)
SetGlobal("Asonje","GLOBAL",3)
~ GOTO 4
  IF ~~ THEN REPLY #9248 /* ~"Tu… Tes restes, en tout cas… sont dans une morgue."~ */ GOTO 13
  IF ~~ THEN REPLY #9249 /* ~"Non, je doute que tu me connaisses. Maintenant, j'ai une question à te poser…"~ */ GOTO 14
  IF ~~ THEN REPLY #9250 /* ~"Ça m'étonnerait. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 3.0
  SAY #9225 /* ~Il se départit aussitôt de son attitude cordiale. Il t'observe un long moment, sourcils froncés ; des lambeaux de fil de suture pendent à ses lèvres grises et parcheminées. "Très bien, pose donc tes questions." Il détourne la tête, comme s'il s'ennuyait.~ */
  IF ~~ THEN REPLY #9251 /* ~"Qui es-tu ?"~ */ GOTO 5
  IF ~~ THEN REPLY #9252 /* ~"D'où viens-tu ?"~ */ GOTO 6
  IF ~~ THEN REPLY #9253 /* ~"Comment es-tu arrivé ici ? En tant que zombi, je veux dire ?"~ */ GOTO 7
  IF ~~ THEN REPLY #9254 /* ~"Où es-tu… Où réside ton esprit… en ce moment ?"~ */ GOTO 8
  IF ~~ THEN REPLY #9255 /* ~"Que sais-tu sur cet endroit ?"~ */ GOTO 9
  IF ~  Global("Pharod","GLOBAL",0)
~ THEN REPLY #9256 /* ~"Connais-tu un certain Pharod ?"~ */ GOTO 10
  IF ~~ THEN REPLY #9257 /* ~"Rien, peu importe."~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 4.0 11.0
  SAY #9226 /* ~"Je m'appelais Asonje. Puis-je disposer ?"~ */
  IF ~~ THEN REPLY #9258 /* ~"Non, j'ai une autre question…"~ */ GOTO 11
  IF ~~ THEN REPLY #9259 /* ~"C'est tout ce que je voulais savoir. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 6 // from: 4.1 11.1
  SAY #9227 /* ~"Je ne m'en souviens pas. Autre chose ?"~ */
  IF ~~ THEN REPLY #9260 /* ~"Oui, j'ai une autre question…"~ */ GOTO 11
  IF ~~ THEN REPLY #9261 /* ~"C'est tout ce que je voulais savoir. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 7 // from: 4.2 11.2
  SAY #9228 /* ~L'esprit hausse les épaules, les yeux au ciel. "Je n'en sais rien. Qu'importe, d'ailleurs ?" Sa bouche dessine un pli amer, et il te dévisage d'un regard dur ; la lueur spectrale au fond de ses orbites prend un éclat furieux. "Autre chose ?"~ */
  IF ~~ THEN REPLY #9262 /* ~"Oui, j'ai une autre question…"~ */ GOTO 11
  IF ~~ THEN REPLY #9263 /* ~"C'est tout ce que je voulais savoir. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 8 // from: 4.3 11.3
  SAY #9229 /* ~"Mon esprit réside en Arborée…" Il s'interrompt, perdu dans ses souvenirs. "Il me tarde d'y retourner et de mettre fin à cet interrogatoire aussi égoïste que déplacé et lassant. Puis-je disposer ?"~ */
  IF ~~ THEN REPLY #9264 /* ~"Non, j'ai une autre question…"~ */ GOTO 11
  IF ~~ THEN REPLY #9265 /* ~"Oui, vas-y. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 9 // from: 4.4 11.4
  SAY #9230 /* ~Il te jette un regard exaspéré. "Rien, bien sûr!" Il secoue la tête, agacé ; dans le mouvement, les fils de suture se balancent.~ */
  IF ~~ THEN REPLY #9266 /* ~"Alors, comment ton corps a-t-il pu arriver ici, dans ces salles lugubres ?"~ */ GOTO 12
  IF ~~ THEN REPLY #9267 /* ~"J'ai une autre question…"~ */ GOTO 11
  IF ~~ THEN REPLY #9268 /* ~"C'est tout ce que je voulais savoir. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 10 // from: 4.5 11.5
  SAY #9231 /* ~"Non." L'esprit ne semble guère te prêter beaucoup d'attention.~ */
  IF ~~ THEN REPLY #9269 /* ~"Alors, j'ai une autre question…"~ */ GOTO 11
  IF ~~ THEN REPLY #9270 /* ~"C'est tout ce que je voulais savoir. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 11 // from: 5.0 6.0 7.0 8.0 9.1 10.0 12.0 27.0
  SAY #9232 /* ~Il pousse un grand soupir qui emplit l'atmosphère d'une odeur de formol. "Oui, oui… pose tes questions."~ */
  IF ~~ THEN REPLY #9271 /* ~"Qui es-tu ?"~ */ GOTO 5
  IF ~~ THEN REPLY #9272 /* ~"D'où viens-tu ?"~ */ GOTO 6
  IF ~~ THEN REPLY #9273 /* ~"Comment es-tu arrivé ici ? En tant que zombi, je veux dire ?"~ */ GOTO 7
  IF ~~ THEN REPLY #9274 /* ~"Où es-tu… Où réside ton esprit… en ce moment ?"~ */ GOTO 8
  IF ~~ THEN REPLY #9275 /* ~"Que sais-tu sur cet endroit ?"~ */ GOTO 9
  IF ~  Global("Pharod","GLOBAL",0)
~ THEN REPLY #9276 /* ~"Connais-tu un certain Pharod ?"~ */ GOTO 10
  IF ~~ THEN REPLY #9277 /* ~"Rien, peu importe."~ */ EXIT
END

IF ~~ THEN BEGIN 12 // from: 9.0
  SAY #9233 /* ~"Tu en sais autant que moi, mon beau. J'aimerais disposer, à présent, si cela ne t'ennuie pas."~ */
  IF ~~ THEN REPLY #9278 /* ~"Non, j'ai une autre question…"~ */ GOTO 11
  IF ~~ THEN REPLY #9279 /* ~"C'est tout ce que je voulais savoir. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 13 // from: 3.1
  SAY #9234 /* ~Après un temps de réflexion, il s'esclaffe. "Oui ! Voilà qui expliquerait tout, hein ? Je te connais, au fait ?" Il incline la tête pour te dévisager. Tâcher de découvrir ton identité doit lui paraître un jeu.~ */
  IF ~~ THEN REPLY #9280 /* ~"Non, je doute que tu me connaisses. Maintenant, j'ai une question à te poser…"~ */ GOTO 14
  IF ~~ THEN REPLY #9281 /* ~"Ça m'étonnerait. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 14 // from: 3.2 13.0
  SAY #9235 /* ~L'esprit hausse les épaules et sourit. "Tu as peut-être raison ! Que voulais-tu me demander ?" D'un air absent, il entreprend de retirer de ses lèvres les fils de suture brisés qu'il laisse tomber par terre un par un.~ */
  IF ~  !Global("Asonje","GLOBAL",2)
~ THEN REPLY #9282 /* ~"Qui es-tu ?"~ */ GOTO 15
  IF ~  Global("Asonje","GLOBAL",2)
~ THEN REPLY #9286 /* ~"Qui es-tu ?"~ */ GOTO 25
  IF ~~ THEN REPLY #9287 /* ~"D'où viens-tu ?"~ */ GOTO 16
  IF ~~ THEN REPLY #9288 /* ~"Comment es-tu arrivé ici ? En tant que zombi, je veux dire ?"~ */ GOTO 17
  IF ~~ THEN REPLY #9317 /* ~"Où es-tu… Où réside ton esprit… en ce moment ?"~ */ GOTO 18
  IF ~~ THEN REPLY #9318 /* ~"Que sais-tu sur cet endroit ?"~ */ GOTO 19
  IF ~  Global("Pharod","GLOBAL",0)
~ THEN REPLY #9319 /* ~"Connais-tu un certain Pharod ?"~ */ GOTO 20
  IF ~~ THEN REPLY #9320 /* ~"Rien, peu importe."~ */ EXIT
END

IF ~~ THEN BEGIN 15 // from: 14.0 22.0
  SAY #9236 /* ~"Je m'appelais Asonje. Et toi ?"~ */
  IF ~~ THEN REPLY #9289 /* ~"Je… Je ne sais pas."~ */ DO ~SetGlobal("Asonje","GLOBAL",2)
~ GOTO 21
  IF ~~ THEN REPLY #9290 /* ~"Je t'en parlerai une autre fois. J'ai une question…"~ */ DO ~SetGlobal("Asonje","GLOBAL",2)
~ GOTO 22
  IF ~~ THEN REPLY #9291 /* ~"Une autre fois, peut-être. Au revoir."~ */ DO ~SetGlobal("Asonje","GLOBAL",2)
~ EXIT
END

IF ~~ THEN BEGIN 16 // from: 14.2 22.2
  SAY #9237 /* ~"Je suis de partout et de nulle part ! En vérité, j'ignore où je suis né. J'ai beaucoup voyagé et habité en divers endroits durant ma vie. À présent, j'ai l'Arborée toute entière à explorer…" Il a l'air ravi.~ */
  IF ~~ THEN REPLY #9292 /* ~"Je vois. J'ai une autre question…"~ */ GOTO 22
  IF ~~ THEN REPLY #9293 /* ~"C'est tout ce que je voulais savoir. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 17 // from: 14.3
  SAY #9238 /* ~Son sourire s'efface, et il prend un air troublé. "Bizarre… Je n'en sais rien ! Je ne me souviens pas comment je suis mort." Il hausse les épaules. "Peu importe !" Il retrouve son sourire réjoui qui, bien que plaqué sur ce visage cadavérique, a quelque chose de réconfortant.~ */
  IF ~~ THEN REPLY #9294 /* ~"J'ai une autre question…"~ */ GOTO 22
  IF ~~ THEN REPLY #9295 /* ~"C'est tout ce que je voulais savoir. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 18 // from: 14.4 22.3
  SAY #9239 /* ~"L'Arborée ! Il n'y a pas plus merveilleux. Jamais dans ma vie de mortel je n'ai vu un lieu aussi vibrant… aussi majestueux…" Il marque une pause, perdu dans ses pensées. "La beauté de cette contrée, de ses habitants… ah, un endroit magnifique. En fait, il me manque déjà, pour dire vrai !"~ */
  IF ~~ THEN REPLY #9296 /* ~"Je vois. J'ai une autre question…"~ */ GOTO 22
  IF ~~ THEN REPLY #9297 /* ~"C'est tout ce que je voulais savoir. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 19 // from: 14.5 22.4
  SAY #9240 /* ~"C'est ça. J'ai signé un contrat avec une femme Homme-Poussière, sur un coup de tête… elle m'avait indiqué cet endroit lugubre et dit qu'on y animerait mon cadavre pour y servir de main-d'œuvre. Je me suis dit : Je n'en aurai pas besoin dans l'au-delà, pourquoi pas ? Autant en tirer quelques pièces d'argent pour me payer des femmes et du vin ! " Il en rit, et la lueur spectrale de son regard prend un éclat joyeux.~ */
  IF ~~ THEN REPLY #9298 /* ~"Que sais-tu sur la cité qui entoure la Morgue ?"~ */ GOTO 24
  IF ~~ THEN REPLY #9299 /* ~"Je vois. J'ai une autre question…"~ */ GOTO 22
  IF ~~ THEN REPLY #9300 /* ~"C'est tout ce que je voulais savoir. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 20 // from: 14.6 22.5
  SAY #9241 /* ~L'esprit réfléchit. "Non, dit-il, je crains de n'avoir jamais entendu parler de cet homme. Un ami à toi ?"~ */
  IF ~~ THEN REPLY #9301 /* ~"Peut-être. J'ai une autre question…"~ */ GOTO 22
  IF ~~ THEN REPLY #9302 /* ~"Je ne sais pas. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 21 // from: 15.0
  SAY #9242 /* ~Il paraît surpris. "Curieux ! Et dommage… Comment veux-tu que je t'appelle, alors ?" Il te considère d'un air interrogateur.~ */
  IF ~~ THEN REPLY #9303 /* ~"À mon avis, tu trouveras bien quelque chose. J'ai une question…"~ */ GOTO 22
  IF ~~ THEN REPLY #9304 /* ~Invente un nom : "J'sais pas… 'Adahn' ?"~ */ DO ~IncrementGlobal("Adahn","GLOBAL",1)
~ GOTO 23
  IF ~~ THEN REPLY #9305 /* ~"Non, ça n'a pas d'importance. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 22 // from: 15.1 16.0 17.0 18.0 19.1 20.0 21.0 23.0 24.0 25.0 26.0
  SAY #9243 /* ~"Certes. Vas-y !" Il sourit d'un air aimable et attend ta question avec intérêt. Son sourire paraît presque normal, sans les fils de suture.~ */
  IF ~  !Global("Asonje","GLOBAL",2)
~ THEN REPLY #9306 /* ~"Qui es-tu ?"~ */ GOTO 15
  IF ~  Global("Asonje","GLOBAL",2)
~ THEN REPLY #9307 /* ~"Qui es-tu ?"~ */ GOTO 25
  IF ~~ THEN REPLY #9308 /* ~"D'où viens-tu ?"~ */ GOTO 16
  IF ~~ THEN REPLY #9309 /* ~"Comment es-tu arrivé ici ? En tant que zombi, je veux dire ?"~ */ GOTO 18
  IF ~~ THEN REPLY #9310 /* ~"Où es-tu… Où réside ton esprit… en ce moment ?"~ */ GOTO 19
  IF ~  Global("Pharod","GLOBAL",0)
~ THEN REPLY #9311 /* ~"Que sais-tu sur cet endroit ?"~ */ GOTO 20
  IF ~~ THEN REPLY #9312 /* ~"Connais-tu un certain Pharod ?"~ */ EXIT
  IF ~~ THEN REPLY #9321 /* ~"Rien, peu importe."~ */ EXIT
END

IF ~~ THEN BEGIN 23 // from: 21.1
  SAY #9244 /* ~Sentant ta frustration, l'esprit a un rire franc. "Pauvre bougre ! Ce sera donc Adahn, l'ami. Alors, tu as une question à me poser ?"~ */
  IF ~~ THEN REPLY #9313 /* ~"Oui…"~ */ GOTO 22
  IF ~~ THEN REPLY #9314 /* ~"Non. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 24 // from: 19.0
  SAY #9245 /* ~"Sigil ?" Te voyant hocher la tête, il sourit plus largement, l'air mutin. "Oh, je ne vais pas te gâcher la surprise ! Explore la cité par toi-même ! Perds-toi parmi ses rues, ses tavernes, ses gens… mais sois prudent ! Elle peut s'avérer aussi dangereuse que merveilleuse. Cela dit, c'est ce qui fait son charme, non ?"~ */
  IF ~~ THEN REPLY #9315 /* ~"Je… suppose. J'ai une autre question…"~ */ GOTO 22
  IF ~~ THEN REPLY #9316 /* ~"Peut-être. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 25 // from: 14.1 22.1
  SAY #9283 /* ~"Je m'appelais Asonje."~ */
  IF ~~ THEN REPLY #9284 /* ~"J'ai une autre question…"~ */ GOTO 22
  IF ~~ THEN REPLY #9285 /* ~"C'est tout ce que je voulais savoir. Au revoir."~ */ EXIT
END

IF ~  GlobalGT("Asonje","GLOBAL",0)
GlobalLT("Asonje","GLOBAL",3)
~ THEN BEGIN 26 // from:
  SAY #20061 /* ~"T'es de retour, hein ?" Il affiche un large sourire.~ */
  IF ~~ THEN REPLY #20063 /* ~"J'ai quelques questions…"~ */ GOTO 22
  IF ~~ THEN REPLY #20064 /* ~"Je ne faisais que passer. Au revoir."~ */ EXIT
END

IF ~  Global("Asonje","GLOBAL",3)
~ THEN BEGIN 27 // from:
  SAY #20062 /* ~"Oh, toi… encore." Il fronce les sourcils et détourne son regard.~ */
  IF ~~ THEN REPLY #20065 /* ~"J'ai quelques questions…"~ */ GOTO 11
  IF ~~ THEN REPLY #20066 /* ~"Je ne faisais que passer. Au revoir."~ */ EXIT
END
