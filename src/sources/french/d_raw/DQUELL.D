// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DQUELL.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\fr_FR\dialog.tlk
// dialogF  : (none)

BEGIN ~DQUELL~

IF ~  Global("Quell","GLOBAL",0)
~ THEN BEGIN 0 // from:
  SAY #29455 /* ~Ce vieil homme mâche quelque chose en marmonnant… puis, dans un *CRAC*, il croque ce que contient sa bouche, et l'avale. Il a des sourcils blanc broussailleux, qu'il fronce, puis hausse, puis fronce encore. "Hmm…"~ */
  IF ~~ THEN REPLY #29456 /* ~"Bonjour…"~ */ GOTO 1
  IF ~~ THEN REPLY #29457 /* ~Laisse l'homme tranquille.~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #29458 /* ~Sans vraiment te regarder, l'homme fouille dans sa tunique, en extrait une boule grenat, la regarde un instant, et la fourre dans sa bouche.~ */
  IF ~~ THEN REPLY #29459 /* ~"J'ai dit, 'bonjour'…"~ */ GOTO 2
  IF ~~ THEN REPLY #29460 /* ~Laisse l'homme tranquille.~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.0
  SAY #29461 /* ~L'homme fronce les sourcils et te fait signe de partir, puis hoche la tête d'un air pensif alors qu'il savoure ce qu'il vient de mettre dans sa bouche.~ */
  IF ~~ THEN REPLY #29462 /* ~"J'ai… des questions…"~ */ DO ~SetGlobal("Quell","GLOBAL",1)
~ GOTO 3
  IF ~~ THEN REPLY #29463 /* ~Laisse l'homme tranquille.~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 2.0
  SAY #29464 /* ~L'homme sourit d'un air narquois, se mord le pouce, puis s'arrête brusquement… ses joues enflent, et, grimaçant violemment, il crache une grosse mouche noire qui commence aussitôt à bourdonner dans toute la chambre. "*Maudits* bonbons minaurosiens !" crie-t-il en menaçant l'insecte du poing. Il fait volte-face vers toi. "Quoi ?!"~ */
  IF ~~ THEN REPLY #29465 /* ~"J'ai des questions à te poser sur toi…"~ */ GOTO 4
  IF ~~ THEN REPLY #29466 /* ~"J'ai des questions sur cet endroit…"~ */ GOTO 4
  IF ~  Global("Know_Ravel","GLOBAL",1)
~ THEN REPLY #29467 /* ~"Que sais-tu de Ravel Puits-de-Rébus ?"~ */ GOTO 4
  IF ~~ THEN REPLY #29468 /* ~"Rien, au revoir."~ */ GOTO 5
END

IF ~~ THEN BEGIN 4 // from: 3.0 3.1 3.2 5.0
  SAY #29469 /* ~Il glisse un petit bonbon rouge dans sa bouche. "Est-ce que tu ennuies toujours les puissants mages avec ton babillage ignorant ?! Babillage, bavardage, commérage, CAQUETAGE !" Alors qu'il prononce 'CAQUETAGE', il recrache violemment le bonbon, qui après avoir décrit une belle parabole, atterrit sur le sol avec un *plop* mouillé. Il le fixe avec tristesse.~ */
  IF ~~ THEN REPLY #68083 /* ~"Ma question ?"~ */ GOTO 6
  IF ~~ THEN REPLY #29470 /* ~"Euh, désolé pour ton bonbon."~ */ GOTO 6
  IF ~~ THEN REPLY #29471 /* ~Ramasse-le et mange-le.~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Quell_1","GLOBALLaw",-1)
~ GOTO 7
END

IF ~~ THEN BEGIN 5 // from: 3.3
  SAY #29473 /* ~Il grogne, incrédule, et se frappe le front. "Rien ? *ADIEU* ?"~ */
  IF ~~ THEN GOTO 4
END

IF ~~ THEN BEGIN 6 // from: 4.0 4.1
  SAY #29474 /* ~"Et il était si *bon*…" gémit-il. Il lève soudain la tête. "DÉSOLÉ ?! Tu ferais bien, espèce de bousier ! Les mages méritent le respect et les lascars de ton espèce devraient savoir se tenir !" Il commence à sautiller. "Se tenir ! Se tenir !"~ */
  IF ~~ THEN REPLY #29475 /* ~"Du calme, je voulais juste te poser quelques questions…"~ */ GOTO 11
  IF ~~ THEN REPLY #29476 /* ~Ramasse rapidement le bonbon du mage et mange-le.~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Quell_1","GLOBALLaw",-1)
~ GOTO 7
END

IF ~~ THEN BEGIN 7 // from: 4.2 6.1
  SAY #29478 /* ~Tu saisis le bonbon et le fourres dans ta bouche. Son goût est fort et sucré. Les mâchoires du mage en tombent. "Mon… mon succulent et délicieux bonbon aux fruits bytopien !"~ */
  IF ~~ THEN REPLY #29479 /* ~"C'était bon. Je peux en avoir un autre ?"~ */ GOTO 8
  IF ~~ THEN REPLY #29480 /* ~"Du calme, je voulais juste te poser quelques questions…"~ */ GOTO 11
END

IF ~~ THEN BEGIN 8 // from: 7.0
  SAY #29483 /* ~"Un autre ?! Un *autre* ?! Quel culot ! Qu'est-ce qui te fait croire que tu *mérites* un autre bonbon, grossier personnage ?!"~ */
  IF ~~ THEN REPLY #29484 /* ~"Peu importe si je le *mérite*, j'en *veux* un, c'est tout. Allez, donne."~ */ GOTO 12
  IF ~~ THEN REPLY #29485 /* ~"Allez… un seul."~ */ GOTO 9
  IF ~~ THEN REPLY #29486 /* ~"Laisse tomber."~ */ GOTO 10
END

IF ~~ THEN BEGIN 9 // from: 8.1 12.0
  SAY #29487 /* ~"Je ne te donnerai rien ! Et tu *l'apprécieras*." Il glisse un bonbon dans sa bouche pour souligner ses propos. "Mmmmmm. *Siiii* bon." Il le fait tourner dans sa bouche, les yeux fermés, comme en pleine extase. "*Siiiiii* délicieux."~ */
  IF ~~ THEN REPLY #29488 /* ~"J'en *veux* un et tu m'en *donneras* un. Allez, donne."~ */ GOTO 12
  IF ~~ THEN REPLY #29489 /* ~"Bien, alors… Laisse tomber."~ */ GOTO 10
END

IF ~~ THEN BEGIN 10 // from: 8.2 9.1 12.1
  SAY #29490 /* ~"Oui ! Oublié ! Il est oublié, espèce de bavasseur à la cervelle pourrie ! Maintenant, adieu."~ */
  IF ~~ THEN REPLY #29491 /* ~"Mais… j'ai quelques questions…"~ */ GOTO 11
END

IF ~~ THEN BEGIN 11 // from: 6.0 7.1 10.0 13.1
  SAY #29493 /* ~"Je n'en ai *RIEN* à faire, espèce de glouton baveux !" Ses yeux semblent sortir de leurs orbites et il pointe le doigt vers toi : "Maintenant, dehors ! DE-HORS ! Et ne reviens pas sans t'être préparé à me montrer les hommages et le respect qui me sont dus… apporte un cadeau !" Il s'approche soudain et murmure, du coin de la bouche : "Des bonbons ou du chocolat seraient parfaits. Mais rien d'ordinaire, attention - apporte quelque chose d'*exotique*. Maintenant, pars !"~ */
  IF ~  PartyHasItem("ChocoQ")
~ THEN REPLY #29494 /* ~"Attends… j'ai ce chocolat importé. Je pourrais te le donner, comme cadeau…"~ */ GOTO 14
  IF ~~ THEN REPLY #68057 /* ~"Très bien. Je vais voir si je trouve ce qu'il faut dans le quartier."~ */ JOURNAL #68058 /* ~Un mage excentrique du nom de Étouffe refuse de me parler sous prétexte que je lui ai manqué de respect en ne lui faisant pas de cadeau. Il m'a suggéré de lui offrir des bonbons ou des chocolats, à condition qu'ils aient quelque chose 'd'exotique', comme il dit. Je lui ai répondu que je trouverai bien une boutique qui en vend dans le Quartier des Gratte-Papier.~ */ EXIT
END

IF ~~ THEN BEGIN 12 // from: 8.0 9.0
  SAY #29495 /* ~"Comment *oses*-tu *exiger* des bonbons, comme s'il s'agissait d'un droit divin qui t'était accordé par la plus grande des Puissances ?! Devrais-je juste *t'accorder* ce caprice, ô Grandeur ? Offrir mes précieux bonbons à ta divinité sacrée ? Pourquoi ne pas les oindre d'huiles précieuses et les faire bénir, tant qu'on y est ?" Il tape du pied à chaque mot : "Non ! Non ! Non ! Certes pas !"~ */
  IF ~~ THEN REPLY #29496 /* ~"Allez… un seul."~ */ GOTO 9
  IF ~~ THEN REPLY #29497 /* ~"Bien, alors. Laisse tomber."~ */ GOTO 10
END

IF ~  Global("Quell","GLOBAL",1)
~ THEN BEGIN 13 // from:
  SAY #29498 /* ~L'expression du mage change à ton approche. "Incroyable ! Tu as choisi de m'infliger à nouveau ta détestable présence, résidu de fausse-couche ?" Il interrompt sa harangue pour avaler une petite pastille à la menthe. "J'espère qu'on t'a appris à te *tenir* !"~ */
  IF ~  PartyHasItem("ChocoQ")
~ THEN REPLY #29499 /* ~"Je t'ai apporté du chocolat importé comme cadeau."~ */ GOTO 14
  IF ~~ THEN REPLY #29500 /* ~"J'avais des questions, en fait…"~ */ GOTO 11
  IF ~~ THEN REPLY #29501 /* ~"Je m'en vais, maintenant. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 14 // from: 11.0 13.0
  SAY #29502 /* ~"Oh ?" Son comportement se modifie aussitôt. "C'est très gentil de ta part, très courtois ! Puis-je le voir ?"~ */
  IF ~~ THEN REPLY #29503 /* ~Montre-lui le chocolat.~ */ DO ~TakePartyItemNum("ChocoQ",1)
SetGlobal("Quell","GLOBAL",2)
AddexperienceParty(8000)
~ GOTO 22
  IF ~~ THEN REPLY #29504 /* ~"En fait, non."~ */ GOTO 15
  IF ~~ THEN REPLY #29505 /* ~"Ça attendra. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 15 // from: 14.1
  SAY #29506 /* ~Il recule, complètement sidéré. "QUOI ?!"~ */
  IF ~~ THEN REPLY #29507 /* ~"Je plaisantais, c'est tout. Tiens…"~ */ DO ~TakePartyItemNum("ChocoQ",1)
SetGlobal("Quell","GLOBAL",2)
AddexperienceParty(8000)
~ GOTO 22
  IF ~~ THEN REPLY #29508 /* ~"Vraiment, je ne pense pas que tu le mérites. Tu as été trop impoli."~ */ GOTO 16
  IF ~~ THEN REPLY #29509 /* ~"On verra ça plus tard. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 16 // from: 15.1
  SAY #29510 /* ~"Tu… tu *quoi* ?" Il se met à sautiller sur place. "Absurde ! Grotesque ! Ridicule ! L'*impolitesse* serait de te transformer en un bol de haricots épicés baatoriens, de te manger et de te répandre sur tout Sigil en souffles puants ! *Ça*, ce serait impoli, je t'assure, et je n'ai *rien* fait de la sorte !"~ */
  IF ~~ THEN REPLY #29511 /* ~"En tout cas, tu ne l'auras pas avant d'avoir fait tes excuses."~ */ GOTO 17
  IF ~~ THEN REPLY #29512 /* ~"Je plaisantais, c'est tout. Tiens…"~ */ DO ~TakePartyItemNum("ChocoQ",1)
SetGlobal("Quell","GLOBAL",2)
AddexperienceParty(8000)
~ GOTO 22
  IF ~~ THEN REPLY #29513 /* ~"Je l'apporterai peut-être plus tard. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 17 // from: 16.0
  SAY #29514 /* ~Il se calme aussitôt et plisse les yeux d'un air soupçonneux. "Tu me laisserais *voir* ce cadeau en premier, au moins ?"~ */
  IF ~~ THEN REPLY #29515 /* ~Montre-lui rapidement le chocolat.~ */ GOTO 18
  IF ~~ THEN REPLY #29516 /* ~"Je plaisantais, c'est tout. Tiens…"~ */ DO ~TakePartyItemNum("ChocoQ",1)
SetGlobal("Quell","GLOBAL",2)
AddexperienceParty(8000)
~ GOTO 22
  IF ~~ THEN REPLY #29517 /* ~"Je l'apporterai peut-être plus tard. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 18 // from: 17.0
  SAY #29518 /* ~La coiffe de l'homme  saute en l'air, avec un *pop* retentissant et retombe sur sa tête. "Oh… oh, bon sang. Est-ce que… Est-ce que c'est… ? Il se lèche les lèvres et tend la main vers le chocolat.~ */
  IF ~  !NearbyDialog("DMorte")
~ THEN REPLY #29519 /* ~"Oh, non. Des excuses. Tout de suite."~ */ GOTO 19
  IF ~  NearbyDialog("DMorte")
~ THEN REPLY #29520 /* ~"Oh, non. Des excuses. Tout de suite."~ */ GOTO 20
  IF ~~ THEN REPLY #29521 /* ~Donne-le-lui.~ */ DO ~TakePartyItemNum("ChocoQ",1)
SetGlobal("Quell","GLOBAL",2)
AddexperienceParty(8000)
~ GOTO 22
  IF ~~ THEN REPLY #29522 /* ~"Je l'apporterai peut-être plus tard. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 19 // from: 18.0
  SAY #29523 /* ~Il fait la moue, se mord la langue et brandit les poings sans un mot. Il s'arrête enfin, brosse ses vêtements et exhale lentement. "Très bien. Je m'excuse." Tu remarques qu'il cache une de ses mains  dans son dos.~ */
  IF ~~ THEN REPLY #29524 /* ~"Hum. Très bien, voilà : du chocolat."~ */ DO ~TakePartyItemNum("ChocoQ",1)
SetGlobal("Quell","GLOBAL",2)
AddexperienceParty(8000)
~ GOTO 22
  IF ~~ THEN REPLY #29525 /* ~"Je l'apporterai peut-être plus tard. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 20 // from: 18.1
  SAY #29526 /* ~Il fait la moue, se mord la langue et brandit les poings sans un mot. Il s'arrête enfin, brosse ses vêtements et exhale lentement. "Très bien. Je m'excuse." Tu remarques qu'il cache une de ses mains  dans son dos.~ */
  IF ~~ THEN EXTERN ~DMORTE~ 290
END

IF ~~ THEN BEGIN 21 // from:
  SAY #29527 /* ~"Silence, bredouillant… oh ! Je veux dire, en fait, je ne fais rien de la sorte !" Le mage te sourit innocemment et offre ses mains à ton examen.~ */
  IF ~~ THEN REPLY #29528 /* ~"Hum. Très bien, voilà : du chocolat."~ */ DO ~TakePartyItemNum("ChocoQ",1)
SetGlobal("Quell","GLOBAL",2)
AddexperienceParty(8000)
~ GOTO 22
  IF ~~ THEN REPLY #29529 /* ~"Je l'apporterai peut-être plus tard. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 22 // from: 14.0 15.0 16.1 17.1 18.2 19.0 21.0
  SAY #29530 /* ~Il te le prend. "Oh… ils sont très rares et plus que délectables." Il en prend une grosse bouchée et range le reste dans sa tunique.~ */
  IF ~~ THEN REPLY #29531 /* ~"J'ai quelques questions…"~ */ GOTO 23
  IF ~~ THEN REPLY #29532 /* ~"Très bien. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 23 // from: 22.0
  SAY #29533 /* ~Il fronce les sourcils et se lèche les doigts. "Qui t'a dit de m'ennuyer avec des questions ineptes ?!" Il te fixe d'un regard accusateur. "Allons… dis-moi pourquoi tu viens m'importuner, ou va-t'en !" Il sort une boule de malt de sa manche et la mange.~ */
  IF ~~ THEN REPLY #29534 /* ~"Qui es-tu ?"~ */ GOTO 25
  IF ~  Global("Quell_Spells","AR0604",1)
~ THEN REPLY #29535 /* ~"Je voudrais acheter des sorts."~ */ DO ~StartStore("Quell_S",Protagonist)
~ EXIT
  IF ~  Global("Quell_Candy","AR0604",0)
~ THEN REPLY #29537 /* ~"Je peux avoir un bonbon ?"~ */ GOTO 30
  IF ~  Global("Quell_Candy","AR0604",1)
~ THEN REPLY #29539 /* ~"Je voudrais acheter des bonbons."~ */ DO ~StartStore("Quell_C",Protagonist)
~ EXIT
  IF ~~ THEN REPLY #29540 /* ~"Qu'est-ce que tu peux me dire sur cet endroit ?"~ */ GOTO 33
  IF ~  Global("Know_Ravel","GLOBAL",1)
~ THEN REPLY #29541 /* ~"Qu'est-ce que tu sais sur Ravel Puits-de-Rébus ?"~ */ GOTO 34
  IF ~~ THEN REPLY #29542 /* ~"Rien. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 24 // from: 26.2 27.0 28.1 29.0 30.1 32.1 33.0 34.1 35.5 36.2 38.2 39.1 40.1 41.2 42.1 43.1 46.0 47.1 48.2 49.0 50.1 51.2 52.1 53.4 54.1 55.1 56.0 57.3
  SAY #29538 /* ~Il lève les yeux au ciel et te fait signe de continuer d'un geste de la main.~ */
  IF ~~ THEN REPLY #29543 /* ~"Qui es-tu ?"~ */ GOTO 25
  IF ~  Global("Quell_Spells","AR0604",1)
~ THEN REPLY #29544 /* ~"Je voudrais acheter des sorts."~ */ DO ~StartStore("Quell_S",Protagonist)
~ EXIT
  IF ~  Global("Quell_Candy","AR0604",0)
~ THEN REPLY #29546 /* ~"Je peux avoir un bonbon ?"~ */ GOTO 30
  IF ~  Global("Quell_Candy","AR0604",1)
~ THEN REPLY #29547 /* ~"Je voudrais acheter des bonbons."~ */ DO ~StartStore("Quell_C",Protagonist)
~ EXIT
  IF ~~ THEN REPLY #29548 /* ~"Qu'est-ce que tu peux me dire sur cet endroit ?"~ */ GOTO 33
  IF ~  Global("Know_Ravel","GLOBAL",1)
~ THEN REPLY #29549 /* ~"Qu'est-ce que tu sais sur Ravel Puits-de-Rébus ?"~ */ GOTO 34
  IF ~~ THEN REPLY #29550 /* ~"Rien. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 25 // from: 23.0 24.0
  SAY #29551 /* ~"Je… suis Étouffe." Il lève la main d'un geste autoritaire, comme pour t'empêcher de te présenter. "… et ne prends pas la peine de te présenter : tu dois être le plus insolent, le plus énervant des poisons de cette partie de Sigil ! J'ai beaucoup entendu parler de toi !"~ */
  IF ~~ THEN GOTO 26
END

IF ~~ THEN BEGIN 26 // from: 25.0
  SAY #29552 /* ~"C'est un réel *plaisir* de te rencontrer, et louées soient les Puissances, tu n'es pas encore mort et figé, m'épargnant ainsi la peine d'être forcé de badiner avec toi ! J'échangerais volontiers mes formidables pouvoirs de sorcier contre un enchantement mineur me permettant d'introduire au moins le concept de 'manières' dans ta cervelle !"~ */
  IF ~~ THEN REPLY #29553 /* ~"Manières ? Et le chocolat que je t'ai apporté ?"~ */ GOTO 27
  IF ~~ THEN REPLY #29554 /* ~"De formidables pouvoirs de sorcellerie ? Tu peux m'apprendre ?"~ */ GOTO 48
  IF ~~ THEN REPLY #29555 /* ~"J'ai d'autres questions…"~ */ GOTO 24
  IF ~~ THEN REPLY #29556 /* ~"C'est tout ce que je voulais savoir. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 27 // from: 26.0
  SAY #29557 /* ~Il ouvre la bouche, le doigt levé, puis s'arrête. "Hmm. Je me suis fait avoir." Il secoue les épaules et dévore un autre bonbon.~ */
  IF ~~ THEN REPLY #29558 /* ~"C'est ce que je pensais. J'ai d'autres questions…"~ */ GOTO 24
  IF ~~ THEN REPLY #29559 /* ~"Ah, ça oui. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 28 // from:
  SAY #29560 /* ~Il paraît perplexe. "Moi ? Un chapeau ? Tu m'embrouilles… je ne porte pas de chapeau !" Il pince ses lèvres et te jette un regard en biais, suspicieux, les yeux mi-clos.~ */
  IF ~~ THEN REPLY #29561 /* ~"Si ce n'est pas un chapeau, c'est quoi ce truc luisant sur ta tête ?"~ */ GOTO 29
  IF ~~ THEN REPLY #29562 /* ~"Non, mais j'ai d'autres questions…"~ */ GOTO 24
  IF ~~ THEN REPLY #29563 /* ~"Très bien… Peu importe. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 29 // from: 28.0
  SAY #29564 /* ~"C'est de la démence ! Je n'ai rien sur ma tête, rien, ai-je dit ! Et je ne veux plus parler de ça, merci."~ */
  IF ~~ THEN REPLY #29565 /* ~"Hum. J'ai d'autres questions…"~ */ GOTO 24
  IF ~~ THEN REPLY #29566 /* ~"Très bien… Peu importe. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 30 // from: 23.2 24.2
  SAY #29567 /* ~"Un bonbon ?! Je répète, pour ceux qui n'auraient pas compris : un *bonbon* ?! Qu'est-ce qui te fait croire que je donnerais un bonbon à un sans-chemise, une citrouille impertinente telle que toi, hmm ?" Il tape du pied, les bras croisés, en attendant ta réponse.~ */
  IF ~~ THEN REPLY #29568 /* ~"Alors, tu veux bien en *vendre* ?"~ */ DO ~SetGlobal("Quell_Candy","AR0604",1)
~ GOTO 31
  IF ~~ THEN REPLY #29569 /* ~"Rien. J'ai une autre question…"~ */ GOTO 24
  IF ~~ THEN REPLY #29570 /* ~"Rien. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 31 // from: 30.0
  SAY #29571 /* ~"Bon, là, peut-être… je dis bien *peut-être*. Mais je t'avertis, je ne vends pas des bonbons ordinaires, mais des chocolats… de *pouvoir* !" Il met l'accent sur ce dernier mot et se frotte les mains d'un air gourmand…~ */
  IF ~~ THEN REPLY #29572 /* ~"Des chocolats… de pouvoir ?"~ */ GOTO 32
END

IF ~~ THEN BEGIN 32 // from: 31.0
  SAY #29573 /* ~Il acquiesce. "En effet. Mais attention, ils ne sont pas *donnés*, alors, si tu n'as pas assez de jonc, je suggère de clore *tout de suite* la discussion. Veux-tu voir ce que j'ai à offrir, hmmm ?" Il incline la tête, en te regardant d'un air rusé.~ */
  IF ~~ THEN REPLY #29574 /* ~"Oui."~ */ DO ~StartStore("Quell_C",Protagonist)
~ JOURNAL #28833 /* ~J'ai rencontré un mage du nom de Étouffe, dans le Sensorium Privé de la Salle des Fêtes. Il vend différentes sortes de chocolats magiques, tous imprégnés de magies diverses qui prennent effet dès qu'on les mange.~ */ EXIT
  IF ~~ THEN REPLY #29575 /* ~"Non, mais j'ai des questions…"~ */ GOTO 24
  IF ~~ THEN REPLY #29576 /* ~"Non merci. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 33 // from: 23.4 24.4
  SAY #29577 /* ~"Tu te trouves dans la Salle des Fêtes, dans un endroit huppé… *très* huppé, jusqu'à ce que *tu* débarques… Le Sensorium Privé. Adresse-toi à l'homme qui se trouve à l'entrée de la Salle, Écharde, si tu as d'autres questions stupides sur ce lieu."~ */
  IF ~~ THEN REPLY #29578 /* ~"Je peux te demander autre chose…"~ */ GOTO 24
  IF ~~ THEN REPLY #29579 /* ~"C'est tout ce que je voulais savoir. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 34 // from: 23.5 24.5
  SAY #29580 /* ~Lorsque tu prononces ce nom, il avale le bonbon qu'il suçait avec un *gloup* sonore, et grimace de douleur. "Qu'y a t-il à dire ?! Pourquoi en parler ? De telles choses, de telles histoires doivent rester dans les livres poussiéreux et dans des esprits de vieux grigou ! Le mal, le mal ! Ce nom, ce nom… et les sombres histoires qui grouillent autour, telles des mouches sur un cadavre."~ */
  IF ~~ THEN REPLY #29581 /* ~"Peu importe, j'ai besoin de savoir."~ */ GOTO 35
  IF ~~ THEN REPLY #29582 /* ~"Peu importe, j'ai d'autres questions…"~ */ GOTO 24
  IF ~~ THEN REPLY #29583 /* ~"Oublie ce que je t'ai demandé. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 35 // from: 34.0
  SAY #29584 /* ~Il roule des yeux et fourre un autre bonbon dans sa bouche. "C'est une guenaude noire, mon garçon, qui est venue à Sigil… toute de maléfices et caquetages, et adepte de la magie de l'ombre, et prête à croiser le fer avec la Dame des Douleurs. Une vieille azimutée… qui a seulement réussi à se faire expédier dans les Dédales. Elle est sans doute morte, à présent."~ */
  IF ~~ THEN REPLY #29585 /* ~"Sa magie de l'ombre ?"~ */ GOTO 36
  IF ~  Global("Chaotic_Quell_1","GLOBAL",1)
~ THEN REPLY #29586 /* ~"Comment je peux la trouver ?"~ */ GOTO 37
  IF ~  Global("Chaotic_Quell_1","GLOBAL",0)
~ THEN REPLY #29587 /* ~"Comment je peux la trouver ?"~ */ GOTO 38
  IF ~~ THEN REPLY #29588 /* ~"Emprisonner dans un dédale ?"~ */ GOTO 57
  IF ~~ THEN REPLY #29589 /* ~"La Dame des Douleurs ?"~ */ GOTO 57
  IF ~~ THEN REPLY #29590 /* ~"J'ai d'autres questions…"~ */ GOTO 24
  IF ~~ THEN REPLY #29591 /* ~"C'est tout ce que je voulais savoir, au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 36 // from: 35.0 38.1 57.0
  SAY #29592 /* ~"Oui, oui, oui…" Il paraît gêné de parler d'elle. "Ravel touchait… non, elle ne touchait pas, mais *excellait* à la magie. Elle connaissait la magie de l'ombre, de l'illusion, et les ombres, résidus de choses mortes."~ */
  IF ~  Global("Chaotic_Quell_1","GLOBAL",1)
~ THEN REPLY #29593 /* ~"Comment je peux la trouver ?"~ */ GOTO 37
  IF ~  Global("Chaotic_Quell_1","GLOBAL",0)
~ THEN REPLY #29594 /* ~"Comment je peux la trouver ?"~ */ GOTO 38
  IF ~~ THEN REPLY #29595 /* ~"J'ai d'autres questions…"~ */ GOTO 24
  IF ~~ THEN REPLY #29596 /* ~"C'est tout ce que je voulais savoir, au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 37 // from: 35.1 36.0 57.1
  SAY #29597 /* ~"Comment est-ce que tu pourrais QUOI ?!" Son bonbon s'échappe de sa bouche et termine sur les carreaux. Avant même que tu puisses le voir, il l'attrape et le gobe en te regardant de travers.~ */
  IF ~~ THEN GOTO 38
END

IF ~~ THEN BEGIN 38 // from: 35.2 36.1 37.0 57.2
  SAY #29598 /* ~"Pourquoi… Pourquoi *demander* une telle chose ? Tu es *FOU* ? Que peux-tu avoir à faire avec une créature aussi mauvaise ?"~ */
  IF ~~ THEN REPLY #29599 /* ~"Elle sait quelque chose sur mon passé."~ */ GOTO 39
  IF ~~ THEN REPLY #29600 /* ~"Peu importe. Qu'est-ce que tu as dit à propos de la 'magie de l'ombre' ?"~ */ GOTO 36
  IF ~~ THEN REPLY #29601 /* ~"Laisse tomber. J'ai d'autres questions…"~ */ GOTO 24
  IF ~~ THEN REPLY #29602 /* ~"Oublie ce que je t'ai demandé. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 39 // from: 38.0
  SAY #29603 /* ~"J'en doute… elle a été envoyée dans les Dédales il y a bien des siècles. Elle est partie - inscrite au livre des morts. Et même si elle s'accrochait encore à la vie avec ses sombres, sanglantes serres, que diable pourrait-elle savoir de *toi* ? Même si elle n'était pas l'incarnation du mal et *acceptait* de t'aider, cela va sans dire…"~ */
  IF ~~ THEN REPLY #29604 /* ~"J'espère juste qu'elle est en vie et qu'elle va m'aider."~ */ GOTO 40
  IF ~~ THEN REPLY #29605 /* ~"Laisse tomber. J'ai d'autres questions…"~ */ GOTO 24
  IF ~~ THEN REPLY #29606 /* ~"Oublie ce que je t'ai demandé. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 40 // from: 39.0
  SAY #29607 /* ~"Par les six tétons et la panse gonflée de Leshe, ce serait comme allumer une chandelle dans les vents hurlants du Pandémonium ! Un espoir vite mouché ! Ne sois pas plus bête que nécessaire !"~ */
  IF ~~ THEN REPLY #29608 /* ~"Je dois quand même la trouver, qu'elle soit morte ou vivante."~ */ GOTO 41
  IF ~~ THEN REPLY #29609 /* ~"Laisse tomber. J'ai d'autres questions…"~ */ GOTO 24
  IF ~~ THEN REPLY #29610 /* ~"Oublie ce que je t'ai demandé. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 41 // from: 40.0
  SAY #29611 /* ~"Donc, si elle est morte - ce qui est sans doute le cas - quel est ton plan, si je puis me permettre ? Tu as déjà tout prévu, n'est-ce pas ? Étouffe parle dans le vide, hein, il débite des absurdités ! Que prévois-tu de *faire* si elle est déjà inscrite au livre des morts, hein ?"~ */
  IF ~~ THEN REPLY #29612 /* ~"Je ne sais pas. Je trouverai bien quelque chose."~ */ GOTO 42
  IF ~~ THEN REPLY #29613 /* ~"À ton avis, qu'est-ce que je devrais faire ?"~ */ GOTO 47
  IF ~~ THEN REPLY #29614 /* ~"Laisse tomber. J'ai d'autres questions…"~ */ GOTO 24
  IF ~~ THEN REPLY #29615 /* ~"Oublie ce que je t'ai demandé. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 42 // from: 41.0
  SAY #29616 /* ~"Bon sang, c'est le meilleur plan que j'aie jamais entendu ! Pure idée de génie ! Aucune idée de la manière d'entrer dans le dédale, aucune idée de la manière d'en sortir, aucune idée si elle est morte ou vivante, et certainement aucune idée sur la marche à suivre si elle est vivante. Autant parler à un lémure, vu les stupidités que tu débites !"~ */
  IF ~~ THEN REPLY #29617 /* ~"Tu peux me dire comment atteindre son dédale ?"~ */ GOTO 43
  IF ~~ THEN REPLY #29618 /* ~"Laisse tomber. J'ai d'autres questions…"~ */ GOTO 24
  IF ~~ THEN REPLY #29619 /* ~"Oublie ce que je t'ai demandé. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 43 // from: 42.0 47.0
  SAY #29620 /* ~"Fou ! Dément ! Enfumé ! Tu n'as pas écouté un mot de ce que j'ai dit ?! Elle est emprisonnée dans un *dédale* interdimensionnel car elle a essayé de se mesurer à *LA DAME DES DOULEURS* ! Ce qui signifie qu'elle est au moins dix fois plus azimutée et cent fois plus puissante que toi ! Elle est aussi très probablement morte, morte, morte, triplement morte et… si par hasard elle ne l'est pas… elle fera tout pour que *tu* meures !"~ */
  IF ~~ THEN REPLY #29621 /* ~"Je comprends, mais j'ai vraiment besoin de ton aide. Alors, tu peux me dire comment la trouver ou pas ?"~ */ GOTO 44
  IF ~~ THEN REPLY #29622 /* ~"Laisse tomber. J'ai d'autres questions…"~ */ GOTO 24
  IF ~~ THEN REPLY #29623 /* ~"Oublie ce que je t'ai demandé. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 44 // from: 43.0
  SAY #29624 /* ~Étouffe se tait et se mâchouille la lèvre. Au bout d'un moment, il extirpe une pastille à la menthe de sa tunique et la glisse dans sa bouche. "Tu es sérieux ? Vraiment sérieux ? Sérieux, décidé, têtu comme une mule ?" Il soupire. "Bah, tu es né béjaune, tu mourras béjaune."~ */
  IF ~  Global("Know_Ravel_Key","GLOBAL",0)
~ THEN REPLY #29625 /* ~"Oui… ?"~ */ DO ~SetGlobal("Know_Ravel_Key","GLOBAL",1)
~ JOURNAL #28832 /* ~Un mage du nom de Étouffe m'a dit que la clé du portail qui menait au dédale de Ravel était, bizarrement, un morceau de Ravel.~ */ GOTO 45
  IF ~  GlobalGT("Know_Ravel_Key","GLOBAL",0)
~ THEN REPLY #18041 /* ~"Oui… ?"~ */ GOTO 45
END

IF ~~ THEN BEGIN 45 // from: 44.0 44.1
  SAY #29626 /* ~"Tous les dédales ont des portails ; je le *sais*. Une entrée, une sortie… c'est comme ça que la Dame les aime. Je ne connais pas le portail - son emplacement ou même sa forme - mais j'ai entendu dire que sa clé… est une partie de Ravel."~ */
  IF ~~ THEN REPLY #29627 /* ~"Un morceau de Ravel ? Mais si Ravel est dans un DÉDALE, comment est-ce que je…"~ */ GOTO 46
END

IF ~~ THEN BEGIN 46 // from: 45.0
  SAY #29628 /* ~"Alors tu devras t'en contenter. Trouve quelque chose que Ravel a souillé, peut-être… c'est tout ce que je sais ! Tout ! Cesse de m'importuner avec ça ! Si tu veux embêter quelqu'un d'autre avec tes questions, va à la Maison de tolérance des Plaisirs Intellectuels - une des dames aura sans doute rencontré quelqu'un ou saura quelque chose d'utile."~ */
  IF ~~ THEN REPLY #29629 /* ~"Merci. J'ai d'autres questions…"~ */ JOURNAL #66703 /* ~Étouffe m'a suggéré d'aller chercher la clé du dédale de Ravel à la Maison de tolérance des Plaisirs Intellectuels. Il m'a dit qu'une ou plusieurs de ces dames sauraient sans doute quelque chose d'utile.~ */ GOTO 24
  IF ~~ THEN REPLY #29630 /* ~"Merci de ton aide. Au revoir."~ */ JOURNAL #66703 /* ~Étouffe m'a suggéré d'aller chercher la clé du dédale de Ravel à la Maison de tolérance des Plaisirs Intellectuels. Il m'a dit qu'une ou plusieurs de ces dames sauraient sans doute quelque chose d'utile.~ */ EXIT
END

IF ~~ THEN BEGIN 47 // from: 41.1
  SAY #29631 /* ~"Ah, première bonne question ! Moi ? *Je* pense que tu devrais abandonner et renoncer à cette stupide idée d'entrer dans les dédales et de bavarder avec les guenaudes noires et courir retourner dans le tombeau dont tu as dû sortir ! Ça m'a l'air plus sensé que de chercher à provoquer la colère de la Dame."~ */
  IF ~~ THEN REPLY #29632 /* ~"Tu peux me dire comment atteindre son dédale ?"~ */ GOTO 43
  IF ~~ THEN REPLY #29633 /* ~"Laisse tomber. J'ai d'autres questions…"~ */ GOTO 24
  IF ~~ THEN REPLY #29634 /* ~"Oublie ce que je t'ai demandé. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 48 // from: 26.1
  SAY #29635 /* ~"*T'enseigner* ?! Ha ! Tu es *mage*, au moins ?"~ */
  IF ~  Class(Protagonist,MAGE)
~ THEN REPLY #29636 /* ~"Oui."~ */ GOTO 50
  IF ~  !Class(Protagonist,MAGE)
~ THEN REPLY #29637 /* ~"Non, mais j'espérais que tu pourrais m'aider à le devenir."~ */ GOTO 49
  IF ~~ THEN REPLY #29638 /* ~"Laisse tomber. J'ai d'autres questions…"~ */ GOTO 24
  IF ~~ THEN REPLY #29639 /* ~"Oublie ce que je t'ai demandé. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 49 // from: 48.1
  SAY #29640 /* ~Il ricane. "Ooooh, si seulement j'avais les Bottes de Coups de Pieds au Derrière de Bigby ! NON !!! Je ne ferai *pas* de toi un mage, cervelle bouillie ! Ce serait déshonorer l'Art !"~ */
  IF ~~ THEN REPLY #29641 /* ~"Alors, j'aurais d'autres questions…"~ */ GOTO 24
  IF ~~ THEN REPLY #29642 /* ~"Bon, peu importe. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 50 // from: 48.0
  SAY #29643 /* ~"Oh ! Quelles merveilles le multivers réserve-t-il à Étouffe aujourd'hui ! Montre-moi ton livre de sorts."~ */
  IF ~~ THEN REPLY #29644 /* ~Laisse-le le regarder.~ */ GOTO 51
  IF ~~ THEN REPLY #29645 /* ~"Je ne crois pas. Je voudrais te demander autre chose…"~ */ GOTO 24
  IF ~~ THEN REPLY #29646 /* ~"Peut-être une autre fois. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 51 // from: 50.0
  SAY #29647 /* ~Il te l'arrache des mains et l'examine d'un œil mauvais, furieux. "Qu'est-ce que c'est que cette camelote ?! Je vais te le dire : de la crotte ! Comment peux-tu extirper des sorts de ces pages tachées… tu as utilisé cet ouvrage comme torchon ? Il est souillé d'alcool, de colle et de sang ! Tu ne fais donc pas attention à ton livre de sorts ?! Comment puis-je instruire quelqu'un qui ne respecte pas l'Art ?!"~ */
  IF ~~ THEN REPLY #29648 /* ~"En quoi son apparence a-t-elle de l'importance ?"~ */ GOTO 52
  IF ~~ THEN REPLY #29649 /* ~"Il contient mes sorts. Son apparence n'a pas d'importance."~ */ GOTO 53
  IF ~~ THEN REPLY #29650 /* ~"Laisse tomber. J'ai d'autres questions…"~ */ GOTO 24
  IF ~~ THEN REPLY #29651 /* ~"Oublie ce que je t'ai demandé. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 52 // from: 51.0 54.0
  SAY #29652 /* ~"L'apparence de ton livre de sorts doit refléter ton respect pour le pouvoir qu'il contient. Ton petit livre dégoûtant ne peut accueillir que les mots les plus simples ! On doit inscrire les *vrais* sorts avec des encres rares et précieuses sur des feuilles de vélin dorées sur tranche ! Chaque chose à sa place, ou rien du tout !" Il commence à sautiller sur place. "À sa place ! À sa place !"~ */
  IF ~~ THEN REPLY #29653 /* ~"Je… je vois. Alors, tu peux m'apprendre ou pas ?"~ */ DO ~SetGlobal("Quell_Spells","AR0604",1)
~ GOTO 55
  IF ~~ THEN REPLY #29654 /* ~"Laisse tomber. J'ai d'autres questions…"~ */ GOTO 24
  IF ~~ THEN REPLY #29655 /* ~"Oublie ma question. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 53 // from: 51.1
  SAY #29656 /* ~"Ridicule ! Absurde ! Une idée risible, s'il en est ! Qui t'a *enseigné* l'Art ?"~ */
  IF ~  Global("Mage_Training","GLOBAL",1)
~ THEN REPLY #29657 /* ~"Une sage-femme du Square du Chiffonnier, Mebbeth."~ */ GOTO 54
  IF ~  Global("Mage_Training","GLOBAL",2)
~ THEN REPLY #50720 /* ~"Madame Peignépine, ici à la Salle des Fêtes."~ */ GOTO 54
  IF ~  Global("Mage_Training","GLOBAL",3)
~ THEN REPLY #67160 /* ~"Sébastion, un mage que j'ai rencontré dans le Bas Quartier."~ */ GOTO 54
  IF ~  Global("Mage_Training","GLOBAL",4)
~ THEN REPLY #67161 /* ~"Kitla, une femme que j'ai rencontrée à Maudith."~ */ GOTO 54
  IF ~~ THEN REPLY #29658 /* ~"Laisse tomber. J'ai d'autres questions…"~ */ GOTO 24
  IF ~~ THEN REPLY #29659 /* ~"Oublie ma question. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 54 // from: 53.0 53.1 53.2 53.3
  SAY #29660 /* ~"Alors, que la honte s'abatte sur son nom pour avoir répandu de telles fadaises ! Et regarde ces sorts ! Qu'est-ce que c'est que cet embrouillamini que cette personne a déversé, avec ses noms romanesques et tout ce foutras controuvé ! Fragile, triviale magie aux noms grandioses !"~ */
  IF ~~ THEN REPLY #29661 /* ~"Alors, en quoi son apparence a de l'importance ?"~ */ GOTO 52
  IF ~~ THEN REPLY #29662 /* ~"Laisse tomber. J'ai d'autres questions…"~ */ GOTO 24
  IF ~~ THEN REPLY #29663 /* ~"Oublie ma question. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 55 // from: 52.0
  SAY #29664 /* ~Il ferme les yeux et se masse les tempes pendant un instant. Il parle finalement d'une voix froide, mesurée : "Il paraît évident que je ne peux rien t'enseigner. Je pourrais toutefois peut-être avoir quelques sorts que tu pourrais *m'acheter*. Veux-tu les voir ? Hmmm ?"~ */
  IF ~~ THEN REPLY #29665 /* ~"Oui."~ */ DO ~StartStore("Quell_S",Protagonist)
~ EXIT
  IF ~~ THEN REPLY #29666 /* ~"Pas maintenant. J'ai d'autres questions…"~ */ GOTO 24
  IF ~~ THEN REPLY #29667 /* ~"Non, merci. Au revoir."~ */ EXIT
END

IF ~  Global("Quell","GLOBAL",2)
~ THEN BEGIN 56 // from:
  SAY #29668 /* ~Étouffe regarde autour de lui à ton approche. "Zut ! Nulle part où me cacher !" Il soupire. "Bien, qu'il en soit ainsi ! Qu'est-ce que tu me veux *encore*, hmmm ?" Il glisse un bonbon dans sa bouche, te regarde et attend.~ */
  IF ~~ THEN REPLY #29669 /* ~"J'ai des questions…"~ */ GOTO 24
  IF ~~ THEN REPLY #29670 /* ~"Rien, je ne faisais que passer. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 57 // from: 35.3 35.4
  SAY #29671 /* ~Il acquiesce d'un air grave. "La Dame des Douleurs, elle… 'dirige' la cité de Sigil ; empêche les Puissances d'y pénétrer, et ainsi de suite. L'un des châtiments qu'elle réserve à ceux qui la trahissent est l'emprisonnement dans un dédale… elle brise une partie de Sigil, la tord en tous sens et la bannit on ne sait où, avec le coupable captif à l'intérieur. Et hop ! ils disparaissent sur les plans !"~ */
  IF ~~ THEN REPLY #29672 /* ~"Tu as parlé de 'magie de l'ombre' ?"~ */ GOTO 36
  IF ~  Global("Chaotic_Quell_1","GLOBAL",1)
~ THEN REPLY #29673 /* ~"Comment je peux la trouver ?"~ */ GOTO 37
  IF ~  Global("Chaotic_Quell_1","GLOBAL",0)
~ THEN REPLY #29674 /* ~"Comment je peux la trouver ?"~ */ GOTO 38
  IF ~~ THEN REPLY #29675 /* ~"J'ai d'autres questions…"~ */ GOTO 24
  IF ~~ THEN REPLY #29676 /* ~"C'est tout ce que je voulais savoir, au revoir."~ */ EXIT
END
