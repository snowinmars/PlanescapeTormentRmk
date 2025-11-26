// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DELOBRAN.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\fr_FR\dialog.tlk
// dialogF  : (none)

BEGIN ~DELOBRAN~

IF ~  NumTimesTalkedTo(0)
~ THEN BEGIN 0 // from:
  SAY #46012 /* ~Les yeux gris et perçants de la vieille femme te dévisagent des pieds à la tête, en s'arrêtant sur tes nombreux tatouages. "Bonjour, balafré. Alors, comme ça, tu viens voir Elobrande ? Tu veux peut-être connaître ton avenir pour cinq misérables piécettes ?"~ */
  IF ~  PartyGoldGT(4)
~ THEN REPLY #46013 /* ~"Oui, dis-moi la bonne aventure…"~ */ DO ~FadeToColor([20.0],0)
Wait(3)
FadeFromColor([20.0],0)
SetGlobal("CW_Fortune","AR0600",1)
~ GOTO 1
  IF ~~ THEN REPLY #46014 /* ~"Non, mais j'avais des questions…"~ */ GOTO 2
  IF ~~ THEN REPLY #46015 /* ~"Non, merci. Au revoir, Elobrande."~ */ GOTO 3
END

IF ~~ THEN BEGIN 1 // from: 0.0 2.1
  SAY #46016 /* ~Elobrande range les pièces dans sa bourse de ceinture et prend tes mains. Elle examine tes paumes et fronce les sourcils. "Quelques rares personnes ne sont pas contrôlées par le destin", dit-elle enfin. "Elles vivent comme elles le souhaitent et créent leur propre destinée. Je ne peux te lire la bonne aventure, balafré. Tes paumes sont muettes et je n'ai rien à te dire. Tiens, reprends tes pièces." Ce disant, elle te les rend.~ */
  IF ~~ THEN REPLY #46017 /* ~"Je vois… j'aurais quelques questions à te poser…"~ */ GOTO 2
  IF ~  NumTimesTalkedTo(1)
~ THEN REPLY #46018 /* ~"Alors, au revoir."~ */ GOTO 3
  IF ~  NumTimesTalkedToGT(1)
~ THEN REPLY #51349 /* ~"Alors, au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 0.1 1.0 5.1
  SAY #46019 /* ~"Je ne parle pas de choses triviales, balafré."~ */
  IF ~  Global("CW_Scroll_Trap","GLOBAL",1)
~ THEN REPLY #46020 /* ~"Dans ce cas, peut-être accepteras-tu de me parler du parchemin : je l'ai lu, mais il était piégé."~ */ GOTO 6
  IF ~  PartyGoldGT(4)
Global("CW_Fortune","AR0600",0)
~ THEN REPLY #46021 /* ~"Dans ce cas, dis-moi la bonne aventure…"~ */ DO ~FadeToColor([20.0],0)
Wait(3)
FadeFromColor([20.0],0)
SetGlobal("CW_Fortune","AR0600",1)
~ GOTO 1
  IF ~  NumTimesTalkedTo(1)
~ THEN REPLY #46022 /* ~"Dans ce cas, au revoir."~ */ GOTO 3
  IF ~  NumTimesTalkedToGT(1)
~ THEN REPLY #46023 /* ~"Dans ce cas, au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 0.2 1.1 2.2
  SAY #46024 /* ~"Attends un instant, balafré," dit Elobrande en te touchant le bras. "Il y a bien longtemps, ma mère m'a donné un parchemin cacheté de cire. Un individu encapuchonné le lui avait confié, en lui disant qu'un homme tel que toi viendrait un jour le récupérer sans le savoir. Tiens, prends-le."~ */
  IF ~~ THEN REPLY #46025 /* ~"Quoi ?"~ */ DO ~GiveItemCreate("ScTrap",Protagonist,1,0,0)
~ GOTO 4
END

IF ~~ THEN BEGIN 4 // from: 3.0
  SAY #46026 /* ~Elobrande secoue la tête et fronce les sourcils. "Je l'ignore. Elle avait juré de ne jamais le lire et m'a fait prêter serment de ne pas le décacheter. L'inconnu lui avait offert une forte somme pour garder le parchemin, tout en l'avertissant qu'elle le regretterait si elle venait un jour à le lire."~ */
  IF ~~ THEN REPLY #46027 /* ~"Merci, dans ce cas. Au revoir."~ */ EXIT
END

IF ~  NumTimesTalkedToGT(0)
~ THEN BEGIN 5 // from:
  SAY #46028 /* ~Tu vois Elobrande, la diseuse de bonne aventure. "Bonjour à toi, balafré."~ */
  IF ~  Global("CW_Scroll_Trap","GLOBAL",1)
~ THEN REPLY #46029 /* ~"J'ai lu le parchemin, mais il était piégé."~ */ GOTO 6
  IF ~~ THEN REPLY #46030 /* ~"J'aurais des questions à te poser, Elobrande…"~ */ GOTO 2
  IF ~~ THEN REPLY #46031 /* ~"Je ne faisais que passer. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 6 // from: 2.0 5.0
  SAY #46032 /* ~Elobrande semble nager en pleine confusion. "Je… je ne sais pas quoi te dire, balafré…"~ */
  IF ~~ THEN REPLY #46033 /* ~"Tu pourrais commencer par me raconter en détail comment il est arrivé jusqu'à toi."~ */ GOTO 7
  IF ~~ THEN REPLY #46034 /* ~"Je n'ai pas grand-chose à dire à ce sujet. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 7 // from: 6.0
  SAY #46035 /* ~"Comme je te l'ai dit, balafré, c'est un homme encapuchonné qui l'a donné à ma mère. Il le lui a confié il y a une cinquantaine d'années de cela, en la payant bien mais en l'avertissant de ne jamais le lire, quelles que soient les circonstances." Elobrande soupire et détourne le regard. "Ma mère était une puissante magicienne, mais cet homme lui a tout de même fait peur. Elle n'a vu que ses yeux, mais m'a dit que l'inconnu avait le regard d'un homme près à sombrer à tout instant dans la démence. Quant à sa peau, elle était grise et ridée, comme la tienne. C'est tout ce que je sais de lui."~ */
  IF ~~ THEN REPLY #46036 /* ~"Dans ce cas, je saurai m'en contenter. Au revoir."~ */ EXIT
END
