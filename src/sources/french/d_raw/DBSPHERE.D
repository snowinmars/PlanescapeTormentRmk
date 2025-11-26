// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DBSPHERE.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\fr_FR\dialog.tlk
// dialogF  : (none)

BEGIN ~DBSPHERE~

IF ~  Global("Absorb_Real_Incarnation","GLOBAL",0)
~ THEN BEGIN 0 // from:
  SAY #62409 /* ~Cette sphère en bronze toute simple de trente centimètres de diamètre paraît très légère. Elle doit être creuse.~ */
  IF ~~ THEN REPLY #62412 /* ~Examine la sphère.~ */ GOTO 1
  IF ~~ THEN REPLY #62413 /* ~Range la sphère. ~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #62410 /* ~Bien que d'un aspect tout à fait normal, cette sphère agresse tes autres sens. Sa texture te laisse l'impression qu'il s'agit d'un œuf prêt à éclore - la toucher suffit à te donner la chair de poule. Pire, le vague relent de crème tournée qui en émane emplit tes yeux de larmes.~ */
  IF ~~ THEN REPLY #62414 /* ~Range la sphère. ~ */ EXIT
END

IF ~  Global("Absorb_Real_Incarnation","GLOBAL",1)
~ THEN BEGIN 2 // from:
  SAY #64916 /* ~Comme tu portes la sphère pour l'examiner, les souvenirs de ta première incarnation affluent à ta conscience. Il ne s'agit pas d'un courant violent ou impérieux : il est calme, comme les pensées d'un homme qui parcourt une grande distance pour parler à un ami qu'il n'a pas vu depuis des siècles.~ */
  IF ~~ THEN GOTO 3
END

IF ~~ THEN BEGIN 3 // from: 2.0
  SAY #64917 /* ~Alors que tu sens cette présence en ton esprit, la sphère t'apparaît sous un autre jour, ni hideuse ni horrible, mais plutôt telle une chose précieuse, comme le serait un nouveau-né. Cette sphère est le dépositaire de tes derniers moments, avant que tu ne rencontres Ravel sur la Gaste Grise et ne lui demandes l'impossible.~ */
  IF ~~ THEN GOTO 4
END

IF ~~ THEN BEGIN 4 // from: 3.0
  SAY #64918 /* ~Tu sais pourquoi tu le lui as demandé. Tu sais aussi qu'il te suffit de toucher des deux mains la surface de la sphère et d'éprouver des regrets pour que la pierre s'ouvre à toi.~ */
  IF ~~ THEN REPLY #64919 /* ~Saisis la pierre en éprouvant des regrets.~ */ DO ~DestroyPartyItem("BSphere",TRUE)
~ GOTO 5
  IF ~~ THEN REPLY #64920 /* ~Laisse les souvenirs où ils sont, enfouis dans le bronze.~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 4.0
  SAY #64921 /* ~La surface de la sphère se plisse dans tes mains. Elle se décompose en larmes de bronze qui tombent en pluie autour de toi. À chaque gouttelette, à chaque fragment qui te pénètre, un souvenir de plus t'assaille - amour perdu, douleur oubliée, souffrance liée à une perte - et ce souvenir s'accompagne du poids des regrets. Regret de la négligence, de la souffrance, de la guerre, de la mort, et tu sens que ton esprit commence à *ployer* sous un tel poids - tant de tort fait aux autres - un poids tel, qu'une FORTERESSE entière pourrait être édifiée avec une telle douleur.~ */
  IF ~~ THEN REPLY #64922 /* ~Essaie de te concentrer, ne relâche pas ton attention.~ */ GOTO 6
END

IF ~~ THEN BEGIN 6 // from: 5.0
  SAY #64923 /* ~Et soudain, au milieu de ce torrent de regrets, tu sens à nouveau la présence de ta première incarnation. Sa main, invisible et légère, repose sur ton épaule et te calme. Elle ne parle pas, mais grâce à son contact, tu te rappelle tout à coup ton nom.~ */
  IF ~~ THEN DO ~GiveExperience(Protagonist,2000000)
FullHealEx(Protagonist)
~ GOTO 7
END

IF ~~ THEN BEGIN 7 // from: 6.0
  SAY #64924 /* ~… et c'est une chose si *simple*, si éloignée de tout ce que tu pensais, que tu te sens tout à coup réconforté. Par la connaissance de ton nom, de ton vrai nom, tu sais que tu as peut-être retrouvé la partie la plus essentielle de toi.~ */
  IF ~~ THEN GOTO 8
END

IF ~~ THEN BEGIN 8 // from: 7.0
  SAY #64925 /* ~Par la connaissance de ton nom, tu te connais toi-même, et tu sais qu'il y a très peu de choses que tu ne puisses faire. Ta première incarnation a retiré sa main de ton épaule et te regarde avec un léger sourire.~ */
  IF ~~ THEN REPLY #64927 /* ~"Ça a toujours été mon nom ? Mais si j'étais - "~ */ DO ~SetGlobal("Know_Nameless_Name","GLOBAL",1)
~ GOTO 9
END

IF ~~ THEN BEGIN 9 // from: 8.0
  SAY #64926 /* ~Un doigt sur les lèvres, ta première incarnation t'impose le silence. Elle regarde le symbole que tu portes au bras et te fait un signe de tête, comme si elle te conseillait de l'utiliser.~ */
  IF ~~ THEN REPLY #64929 /* ~Examine ton bras.~ */ DO ~GiveItemCreate("SymTorm",Protagonist,0,0,0)
~ GOTO 10
END

IF ~~ THEN BEGIN 10 // from: 9.0
  SAY #64928 /* ~Ce symbole, celui du Tourment, semble s'écailler sur ta peau, comme s'il était à peine collé. Inconsciemment, tu y portes la main et l'efface de ton bras.~ */
  IF ~~ THEN GOTO 12
END

IF ~~ THEN BEGIN 11 // from: 12.0
  SAY #64931 /* ~Tu n'as pas fini de poser ta question, mais tu prends conscience du silence profond qui règne en toi ; tu ne ressens plus la présence de ta première incarnation.~ */
  IF ~~ THEN REPLY #64935 /* ~Prends le symbole du Tourment.~ */ EXIT
END

IF ~~ THEN BEGIN 12 // from: 10.0
  SAY #64938 /* ~Il cède sans trop de résistance, comme une croûte que l'on fait tomber. Tandis que tu tiens le symbole, tu comprends que tu peux t'approprier son pouvoir. Il ne te gouverne plus.~ */
  IF ~~ THEN REPLY #64939 /* ~"Je ne porte plus le symbole. Est-ce que cela veut dire… ?"~ */ GOTO 11
END
