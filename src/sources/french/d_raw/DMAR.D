// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DMAR.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\fr_FR\dialog.tlk
// dialogF  : (none)

BEGIN ~DMAR~
//////////////////////////////////////////////////
// WARNING: this file contains non-trivial WEIGHTs
//////////////////////////////////////////////////

IF WEIGHT #5 /* Triggers after states #: 1 2 20 16 10 even though they appear after this state */
~  NumTimesTalkedTo(0)
~ THEN BEGIN 0 // from:
  SAY #45076 /* ~De prime abord, Mar te fait l'impression d'avoir besoin d'un bon bain, de préférence très loin de quiconque a le moindre sens olfactif. Tu vois presque la puanteur s'élever de son corps en longues volutes jaunâtres. Il te fait de grands signes pour que tu viennes lui parler.~ */
  IF ~~ THEN REPLY #45077 /* ~Approche de cet individu et écoute ce qu'il a à dire.~ */ GOTO 4
  IF ~~ THEN REPLY #45399 /* ~Retiens ton souffle et pars.~ */ EXIT
END

IF WEIGHT #4 /* Triggers after states #: 2 20 16 10 even though they appear after this state */
~  NumTimesTalkedToGT(0)
Global("FedEx","Global",0)
~ THEN BEGIN 1 // from:
  SAY #45400 /* ~Tu te prépares à affronter l'odeur en approchant Mar. "Tu veux donner un coup de main à Mar, pas vrai ? Y a une boîte qu'y faut que tu livres pour moi."~ */
  IF ~~ THEN REPLY #45401 /* ~"D'accord, j'accepte de porter ce colis pour toi."~ */ DO ~SetGlobal("FedEx","Global",1)
SetGlobal("Alpha","Global",1)
~ GOTO 6
  IF ~~ THEN REPLY #45402 /* ~"Pourquoi est-ce que tu veux que je porte ce colis à ta place ?"~ */ GOTO 5
  IF ~~ THEN REPLY #45403 /* ~"Au revoir."~ */ EXIT
END

IF WEIGHT #3 /* Triggers after states #: 20 16 10 even though they appear after this state */
~  GlobalGT("FedEx","Global",0)
~ THEN BEGIN 2 // from:
  SAY #45404 /* ~Mar a soudain l'air affolé en te voyant approcher. "Qu'est-ce que tu fabriques là ?" demande-t-il d'une voix aiguë. "Reviens pas tant que t'auras pas livré la boîte."~ */
  IF ~  Global("FedEx","Global",2)
Global("Demonbox","Global",0)
~ THEN REPLY #45405 /* ~"L'individu à qui tu m'avais demandé d'apporter cette boîte s'est enfui. Et maintenant ?"~ */ GOTO 8
  IF ~  Global("FedEx","Global",10)
~ THEN REPLY #45406 /* ~"Je me suis débarrassé de la boîte."~ */ DO ~SetGlobal("FedEx","Global",11)
~ GOTO 11
  IF ~  Global("Demonbox","Global",4)
~ THEN REPLY #45407 /* ~"J'ai tué le démon de la boîte."~ */ GOTO 18
  IF ~  Global("Demonbox","Global",3)
~ THEN REPLY #45408 /* ~"J'ai tué le démon de la boîte."~ */ GOTO 19
  IF ~  Global("Demonbox","Global",1)
~ THEN REPLY #45409 /* ~"J'ai ouvert la boîte et un fiélon en est sorti. Je me suis enfui."~ */ GOTO 3
  IF ~  !Global("FedEx","Global",2)
!Global("FedEx","Global",10)
GlobalGT("FedEx","Global",0)
Global("Demonbox","Global",0)
~ THEN REPLY #45410 /* ~"Personne ne veut de ta boîte. Reprends-la."~ */ GOTO 9
  IF ~  !Global("FedEx","GLOBAL",10)
Global("Demonbox","Global",2)
~ THEN REPLY #45411 /* ~"J'ai quitté la Ruche et il ne s'est rien produit."~ */ GOTO 17
  IF ~~ THEN REPLY #45412 /* ~"Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 2.4
  SAY #45413 /* ~"Espèce de crétin ! Si t'ouvres cette maudite boîte, c'est la mort que t'y gagneras ! Cours, si tu sais ce qui est bon pour toi !" Comme pour te donner l'exemple, il file à toutes jambes.~ */
  IF ~~ THEN REPLY #45414 /* ~"Au revoir."~ */ DO ~StartCutSceneMode()
StartCutSceneEx("0100CUT2",FALSE)
~ JOURNAL #39511 /* ~J'ai commis deux erreurs. Tout d'abord, j'aurais dû tenir compte des avertissements de Mar et ne jamais ouvrir la boîte. Ensuite, je n'aurais pas dû m'enfuir en voyant le fiélon apparaître. Je ne peux rien faire pour la première erreur, mais il m'est encore possible de réparer la seconde. Je dois tuer le fiélon.~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 0.0
  SAY #46322 /* ~Il a l'air tout excité en te voyant approcher. "Merci de t'être arrêté. Je m'appelle Mar et j'ai un service à te demander."~ */
  IF ~~ THEN REPLY #46323 /* ~"J'écoute."~ */ GOTO 5
  IF ~~ THEN REPLY #46324 /* ~"Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 1.1 4.0
  SAY #46325 /* ~"C'est une question de vie ou de mort ! Je dois absolument porter cette boîte à quelqu'un ou elle finira par avoir ma peau ! Mais j'ai eu la déveine de me tordre méchamment la cheville. Tu veux bien te charger de la commission pour moi ?"~ */
  IF ~~ THEN REPLY #46326 /* ~"J'accepte de lui apporter la boîte à ta place."~ */ DO ~SetGlobal("FedEx","Global",1)
SetGlobal("Alpha","Global",1)
~ GOTO 6
  IF ~~ THEN REPLY #46327 /* ~"Non."~ */ EXIT
END

IF ~~ THEN BEGIN 6 // from: 1.0 5.0
  SAY #46328 /* ~Mar sort une boîte de sous ses vêtements en lambeaux. L'espace d'un instant, une expression de profond regret s'imprime sur ses traits, mais elle disparaît lorsqu'il te tend la boîte. Cette dernière semble entourée d'une légère lueur alors que tes mains touchent celles de Mar. Avec un soupir de soulagement, celui-ci te confie l'objet.~ */
  IF ~~ THEN REPLY #46329 /* ~"Et maintenant ?"~ */ DO ~GiveItemCreate("DBox",Player1,1,0,0)
~ GOTO 7
END

IF ~~ THEN BEGIN 7 // from: 6.0
  SAY #46330 /* ~"Il faut l'apporter à Ku'atraa, que l'on trouve généralement dans le quartier sud-est de la Ruche. Oh, et des fois qu'il te dise que je ne t'avais pas prévenu, quoi qu'il advienne, N'OUVRE PAS LA BOÎTE ! Et ne quitte pas non plus la Ruche en l'ayant sur toi. Et maintenant, file !"~ */
  IF ~~ THEN REPLY #46331 /* ~"Je reviendrai après avoir apporté la boîte. Au revoir."~ */ DO ~SetGlobal("Notalk","AR0100",1)
StartCutSceneMode()
StartCutSceneEx("0100CUT1",FALSE)
~ JOURNAL #39481 /* ~J'ai accepté de porter une étrange boîte à un dénommé Ku'atraa, dont Mar dit qu'il se trouve généralement dans le quartier sud-est de la Ruche.~ */ EXIT
END

IF ~~ THEN BEGIN 8 // from: 2.0
  SAY #46461 /* ~"C'est plus mon problème. Tu pourras pas te débarrasser de la boîte tant que tu l'auras pas donnée à quelqu'un. Je te conseille de la refiler à n'importe qui ! Et maintenant, fiche-moi le camp ! Je veux plus te voir tant que tu auras encore ce truc avec toi !"~ */
  IF ~  Global("FedEx","Global",2)
~ THEN REPLY #46462 /* ~On dirait que tu vas devoir te débrouiller seul. Mais Ku'atraa n'a pas parlé de quelqu'un d'autre à qui tu pourrais remettre la boîte ?~ */ DO ~SetGlobal("Notalk","AR0100",1)
~ EXIT
  IF ~  GlobalGT("FedEx","Global",2)
~ THEN REPLY #46463 /* ~Que diable peut contenir cette boîte…~ */ DO ~SetGlobal("Notalk","AR0100",1)
~ EXIT
END

IF ~~ THEN BEGIN 9 // from: 2.5
  SAY #46464 /* ~Mar recule, visiblement terrifié. "Non ! Je refuse de toucher cette maudite boîte ! Éloigne-la de moi ! Tu l'as acceptée de ton plein gré, alors garde-la ou donne-la à quelqu'un d'autre. Moi, je m'en balance. Mais je vais te dire un truc : plutôt crever que de devoir recommencer à me coltiner cette boîte ! Et maintenant, laisse-moi tranquille !"~ */
  IF ~~ THEN REPLY #46465 /* ~"Quand j'aurai réglé la question de cette boîte, je reviendrai m'occuper de toi. Au revoir."~ */ DO ~SetGlobal("Notalk","AR0100",1)
~ EXIT
END

IF WEIGHT #0 ~  Global("FedEx","Global",9)
~ THEN BEGIN 10 // from:
  SAY #46466 /* ~"Je t'ai dit tout ce que j'avais à dire pour le moment."~ */
  IF ~~ THEN REPLY #46467 /* ~"Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 11 // from: 2.1
  SAY #46468 /* ~"Je suis heureux de l'entendre. Mais avant de me tuer pour le mauvais tour que je t'ai joué, laisse-moi t'expliquer…"~ */
  IF ~~ THEN REPLY #46469 /* ~"Tu es un homme mort."~ */ DO ~GivePartyGold(500)
Enemy()
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
IncrementGlobalOnceEx("GLOBALEvil_Mar_1","GLOBALGood",-1)
~ JOURNAL #60399 /* ~Ma justice est expéditive et impitoyable. Mar a payé ses crimes de sa vie. Je souhaite juste poursuivre mon voyage ; je ne veux plus m'occuper de boîtes magiques.~ */ EXIT
  IF ~~ THEN REPLY #46470 /* ~"Je suis tout ouïe. Explique-toi."~ */ GOTO 12
END

IF ~~ THEN BEGIN 12 // from: 11.1
  SAY #46471 /* ~"De mémoire d'homme, cette boîte a toujours existé. La chanson veut que plusieurs types se soient affrontés et que, quand ils en ont eu fini, un énorme démon s'est retrouvé emprisonné dans la boîte. Y'en a d'autres qui disent que c'est un sorcier malfaisant qui a fabriqué la boîte pour faire souffrir les gens. En fait, personne sait vraiment ce qu'il en est. Mais ce qui est sûr, c'est que le possesseur de la boîte mourra si jamais elle est ouverte."~ */
  IF ~~ THEN REPLY #46472 /* ~"Pourquoi le propriétaire de la boîte ne l'a pas cachée là où personne ne risquait de la trouver ?"~ */ GOTO 13
  IF ~~ THEN REPLY #46473 /* ~"Je ne veux pas le savoir. Qu'est-ce que j'y gagne ?"~ */ GOTO 15
END

IF ~~ THEN BEGIN 13 // from: 12.0
  SAY #46474 /* ~"C'est vrai que ça pourrait être simple. Mais tu en connais beaucoup, toi, des gars qui accepteraient de vivre avec une épée de Damoclès au-dessus de la tête ? Sûr que le fait de se demander en permanence où se trouve cette fichue boîte finirait par rendre n'importe qui marteau."~ */
  IF ~~ THEN REPLY #46475 /* ~"Pourquoi moi ?"~ */ GOTO 14
END

IF ~~ THEN BEGIN 14 // from: 13.0
  SAY #46476 /* ~"Pour commencer, je t'avais jamais vu dans le coin. Fallait que je trouve un bige qui connaisse pas la boîte pour qu'il l'accepte de son plein gré. Tout le monde est prévenu, par ici. Ensuite, si tu as examiné la boîte pendant que tu l'avais en ta possession, tu as dû voir que ses sorts étaient en train de s'affaiblir. Autrement dit, j'avais intérêt à la refiler sans traîner. Eh puis, faut bien reconnaître que t'avais l'air de quelqu'un qu'était déjà prêt à partir pour l'au-delà sans aucune aide extérieure."~ */
  IF ~~ THEN REPLY #46477 /* ~"Tu veux savoir ce que ça fait de passer dans l'au-delà ? Continue de parler ou tu vas l'apprendre sans attendre."~ */ GOTO 15
END

IF ~~ THEN BEGIN 15 // from: 12.1 14.0
  SAY #46478 /* ~"Évidemment, je ne suis pas tombé sur n'importe quel matois. Ceci n'a dû être qu'un petit souci pour toi. Je t'offre cette arme et ces quelques pièces pour te dédommager des problèmes que tu as rencontrés. C'est tout ce que j'ai… et bizarrement, il se trouve que c'est ce que ce rat de Ku'atraa m'avait offert pour m'inciter à prendre la boite."~ */
  IF ~~ THEN REPLY #46479 /* ~"De toute façon, je vais te tuer et encaisser la récompense."~ */ DO ~GivePartyGold(500)
Enemy()
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
IncrementGlobalOnceEx("GLOBALEvil_Mar_1","GLOBALGood",-1)
~ JOURNAL #60399 /* ~Ma justice est expéditive et impitoyable. Mar a payé ses crimes de sa vie. Je souhaite juste poursuivre mon voyage ; je ne veux plus m'occuper de boîtes magiques.~ */ EXIT
  IF ~~ THEN REPLY #46480 /* ~"Donne-moi ma récompense et laisse-moi."~ */ DO ~GiveItem("Hax",Protagonist)
AddexperienceParty(1250)
GivePartyGold(500)
~ JOURNAL #39484 /* ~Même si je ne suis pas sûr que ce soit une bonne idée, j'ai décidé de pardonner Mar pour ce qu'il a fait. Je cherche toujours à recouvrer la mémoire, mais ça, j'aimerais bien pouvoir l'oublier.~ */ EXIT
END

IF WEIGHT #1 ~  Global("FedEx","Global",11)
~ THEN BEGIN 16 // from:
  SAY #46481 /* ~"Les gens du coin dormiront sur leurs deux oreilles maintenant qu'ils savent que tu as détruit cette maudite boîte. Encore merci !"~ */
  IF ~~ THEN REPLY #46482 /* ~"Heureux d'avoir pu te rendre service. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 17 // from: 2.6
  SAY #46483 /* ~"Espèce de crétin ! Je t'avais bien dit de pas quitter la Ruche. Fiche-moi le camp d'ici avant que le fiélon vienne te rendre visite !"~ */
  IF ~~ THEN REPLY #46484 /* ~Mar s'enfuit en courant.~ */ DO ~SetGlobal("Boxleft","Global",1)
SetGlobal("Gamma","Global",1)
StartCutSceneMode()
StartCutSceneEx("0100CUT2",FALSE)
~ JOURNAL #39482 /* ~Apparemment, en quittant la Ruche, j'ai libéré la créature qui se trouvait enfermée dans la boîte. Je ne sais pourquoi, mais je crains qu'elle ne se mette en chasse du dernier possesseur de sa prison. Je ferais mieux de me tenir sur mes gardes, au cas où…~ */ EXIT
END

IF ~~ THEN BEGIN 18 // from: 2.2
  SAY #46485 /* ~"Tu as ouvert la boîte et tu es encore en vie ! Euh… bref, je t'avais dit de ne l'ouvrir sous aucun prétexte et tu ne m'as pas obéi. Dans ces conditions, je crains fort de ne pouvoir te payer. Ouste, donc ! Hors de ma vue." ~ */
  IF ~  Global("FedEx","Global",1)
~ THEN REPLY #46486 /* ~"Au revoir."~ */ DO ~SetGlobal("FedEx","Global",9)
SetGlobal("ReleaseB","Global",1)
SetGlobal("Gamma","Global",1)
~ JOURNAL #39507 /* ~J'ai dit à Mar que j'avais ouvert la boîte et tué le fiélon qui se trouvait à l'intérieur. Je lui en ai tout d'abord voulu de ne pas m'avoir fait part de la présence de cette créature, mais il est vrai que je n'ai tenu aucun compte de ses avertissements. Cela m'apprendra à faire taire ma curiosité.~ */ EXIT
  IF ~  GlobalGT("FedEx","Global",1)
~ THEN REPLY #46487 /* ~"Au revoir."~ */ DO ~SetGlobal("FedEx","Global",9)
SetGlobal("ReleaseB","Global",1)
SetGlobal("Gamma","Global",1)
~ JOURNAL #39505 /* ~J'ai avoué à Mar que j'avais ouvert la boîte en ne sachant plus à qui je devais la livrer. Il refuse de me payer. Je ne sais que penser, car j'ai la sensation que j'aurais dû recevoir une compensation, même minime. Après tout, j'ai bien essayé de livrer la boîte ; ce n'est pas de ma faute si personne n'en a voulu ! Mais il est également vrai que je l'ai ouverte, alors que Mar me l'avait interdit. L'esprit empli de confusion, j'ai quitté Mar sans rien réclamer. Je suis bien content d'en avoir terminé avec cette boîte et le fiélon qu'elle contenait.~ */ EXIT
END

IF ~~ THEN BEGIN 19 // from: 2.3
  SAY #46488 /* ~"Je t'avais prévenu de pas quitter la Ruche avec la boîte. J'en reviens pas, que le fiélon t'ait pas encore réduit en charpie. Si t'es revenu pour te faire payer, je te dis tout de suite que tu te fourres le doigt dans l'œil ! T'étais censé livrer la boîte, pas tuer le fiélon qu'était à l'intérieur."~ */
  IF ~~ THEN REPLY #46489 /* ~"Au revoir."~ */ DO ~SetGlobal("FedEx","Global",9)
SetGlobal("ReleaseH","Global",1)
SetGlobal("Gamma","Global",1)
~ JOURNAL #39504 /* ~J'ai dit à Mar que j'avais tué le fiélon que j'avais libéré lors de mon départ de la Ruche. Bien qu'impressionné par mon exploit, il refuse de me payer quoi que ce soit. Je peux difficilement le lui reprocher, vu que je n'ai pas tenu compte de ses avertissements et que je n'ai pas livré la boîte à qui de droit.~ */ EXIT
END

IF WEIGHT #2 ~  Global("notalk","AR0100",1)
~ THEN BEGIN 20 // from:
  SAY #46490 /* ~"Je t'ai dit tout ce que j'avais à dire pour le moment."~ */
  IF ~~ THEN REPLY #46491 /* ~"Au revoir."~ */ EXIT
END
