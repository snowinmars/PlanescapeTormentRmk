// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DJUMBLE.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\fr_FR\dialog.tlk
// dialogF  : (none)

BEGIN ~DJUMBLE~

IF ~  Global("Jumble","GLOBAL",0)
~ THEN BEGIN 0 // from:
  SAY #2937 /* ~La tunique orange et la panse rebondie de ce petit homme à moitié chauve lui donnent l'allure d'une citrouille ambulante. L'esprit ailleurs, il tapote sa bedaine, comme s'il s'agissait d'un tambour. Son étrange rictus et la lueur qui brille dans son regard lui donnent un peu l'air d'un fou.~ */
  IF ~~ THEN REPLY #2938 /* ~"Bonjour…"~ */ DO ~SetGlobal("Jumble","GLOBAL",1)
~ GOTO 1
  IF ~~ THEN REPLY #41917 /* ~Laisse-le tranquille.~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #41918 /* ~L'homme te salue exagérément et te tend une petite carte sur laquelle on peut lire 'Méli Sensdumeurtre - Xaositecte Xorceror X-traordinare'. Il t'arrache alors brusquement la carte des mains et, avec un large sourire, commence à la manger.~ */
  IF ~  NearbyDialog("DMorte")
~ THEN EXTERN ~DMORTE~ 462
  IF ~  !NearbyDialog("DMorte")
~ THEN REPLY #41928 /* ~"J'ai quelques questions, Méli…"~ */ GOTO 2
  IF ~  !NearbyDialog("DMorte")
Global("Story_Reekwind_Curse","GLOBAL",1)
Global("Jumble_Reekwind","GLOBAL",0)
~ THEN REPLY #41929 /* ~"C'est toi qui as lancé une malédiction à Pestilent, n'est-ce pas ?"~ */ DO ~SetGlobal("Jumble_Reekwind","GLOBAL",1)
~ JOURNAL #67862 /* ~À la Salle des Fêtes, j'ai rencontré Méli Sensdumeurtre, l'homme qui avait maudit Pestilent.~ */ GOTO 8
  IF ~  Global("Jumble_Reekwind","GLOBAL",1)
!NearbyDialog("DMorte")
~ THEN REPLY #67863 /* ~"J'aimerais que tu fasses disparaître la malédiction dont souffre Pestilent."~ */ GOTO 9
  IF ~  !NearbyDialog("DMorte")
~ THEN REPLY #41930 /* ~"Bon, je m'en vais, Méli. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.1 11.0
  SAY #41931 /* ~Méli bâille et détourne le regard en se tapotant le ventre de la paume des mains.~ */
  IF ~~ THEN REPLY #41932 /* ~"Méli ? Mes questions ?"~ */ GOTO 3
  IF ~~ THEN REPLY #41933 /* ~"Peu importe… Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 2.0 8.1 12.2
  SAY #41934 /* ~Méli roule les yeux. Il se tourne vers toi, sourit d'un air narquois, puis se mord le pouce.~ */
  IF ~  Global("Story_Reekwind_Curse","GLOBAL",1)
Global("Jumble_Reekwind","GLOBAL",0)
~ THEN REPLY #41935 /* ~"Réponds au moins à ça : est-ce que tu as maudit Pestilent ?"~ */ DO ~SetGlobal("Jumble_Reekwind","GLOBAL",1)
~ JOURNAL #67862 /* ~À la Salle des Fêtes, j'ai rencontré Méli Sensdumeurtre, l'homme qui avait maudit Pestilent.~ */ GOTO 8
  IF ~  Global("Jumble_Reekwind","GLOBAL",1)
~ THEN REPLY #67865 /* ~"Bien, mais j'aimerais que tu fasses disparaître la malédiction dont souffre Pestilent."~ */ GOTO 9
  IF ~~ THEN REPLY #41936 /* ~"Tu es muet ? C'est pour ça que tu ne me réponds pas ?"~ */ GOTO 4
  IF ~  !Global("Jumble ","GLOBAL",2)
~ THEN REPLY #41937 /* ~Vérité : "J'ai besoin de certaines réponses et s'il le faut, je n'hésiterai pas à employer la force."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Jumble_1","GLOBALGood",-1)
~ GOTO 5
  IF ~  !Global("Jumble ","GLOBAL",2)
~ THEN REPLY #41938 /* ~Bluff : "J'ai besoin de certaines réponses et s'il le faut, je n'hésiterai pas à employer la force."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Jumble_1","GLOBALLaw",-1)
~ GOTO 5
  IF ~~ THEN REPLY #41939 /* ~Pars.~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 3.2
  SAY #41940 /* ~Méli relève la tête et te sourit d'un air stupide. Lentement, il hausse les épaules… Puis, il ferme les yeux et te tire la langue.~ */
  IF ~  !Global("Jumble ","GLOBAL",2)
~ THEN REPLY #41941 /* ~Vérité : "J'ai besoin de certaines réponses et s'il le faut, je n'hésiterai pas à employer la force."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Jumble_1","GLOBALGood",-1)
~ GOTO 5
  IF ~  !Global("Jumble ","GLOBAL",2)
~ THEN REPLY #41942 /* ~Bluff : "J'ai besoin de certaines réponses et s'il le faut, je n'hésiterai pas à employer la force."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Jumble_1","GLOBALLaw",-1)
~ GOTO 5
  IF ~~ THEN REPLY #41943 /* ~Pars.~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 3.3 3.4 4.0 4.1 9.1 9.2 10.0 10.1
  SAY #41944 /* ~Méli hausse un sourcil et recule d'un pas. Il ouvre grand la bouche, et (bien que ni ses lèvres, ni sa gorge ne bougent pour former le moindre mot ou le moindre son) un torrent de paroles incompréhensibles commence à déferler de sa bouche.~ */
  IF ~~ THEN REPLY #41945 /* ~"Qu'est-ce qu'… ?"~ */ DO ~SetGlobal("Jumble","GLOBAL",2)
ApplySpell(Protagonist,SPECIAL_ADD_JUMBLE_CURSE)
~ JOURNAL #66219 /* ~J'ai été maudit par un mage Xaositecte du nom de Méli Sensdumeurtre et j'ai désormais le hoquet en permanence. J'espère que quelqu'un à la Salle des Fêtes saura me délivrer de cette malédiction… ou comment inciter Méli à le faire.~ */ GOTO 6
END

IF ~~ THEN BEGIN 6 // from: 5.0
  SAY #41946 /* ~Méli referme la bouche et le silence revient… Il te scrute du regard à travers ses paupières à demi fermées, un sourire suffisant sur son visage joufflu. Soudain, tu es pris d'un hoquet.

Ton hoquet continue, encore et encore.

Méli Sensdumeurtre se contente de tourner la tête et te fait signe de partir.~ */
  IF ~  NearbyDialog("DMorte")
~ THEN EXTERN ~DMORTE~ 463
  IF ~  !NearbyDialog("DMorte")
~ THEN REPLY #41947 /* ~"Qu'est-ce que tu m'as fait ?"~ */ GOTO 7
  IF ~  !NearbyDialog("DMorte")
~ THEN REPLY #41948 /* ~"Méli… S'il te plaît, annule ce que tu as fait."~ */ GOTO 7
  IF ~  !NearbyDialog("DMorte")
~ THEN REPLY #41949 /* ~"Quoi que tu aies fait, annule-le ou tu le regretteras amèrement."~ */ GOTO 7
  IF ~  !NearbyDialog("DMorte")
~ THEN REPLY #41950 /* ~"Je ferais mieux de trouver quelqu'un qui m'aidera à me débarrasser de cette malédiction. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 7 // from: 6.1 6.2 6.3
  SAY #41951 /* ~Méli t'ignore.~ */
  IF ~~ THEN REPLY #41952 /* ~Attaque-le.~ */ DO ~ForceAttack(Protagonist,Myself)
Enemy()
RunAwayFromEx(Protagonist,TWO_AI_SECONDS,FALSE)
~ EXIT
  IF ~~ THEN REPLY #41953 /* ~"Je ferais mieux de trouver quelqu'un qui m'aidera à me débarrasser de cette malédiction. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 8 // from: 1.2 3.0 11.1
  SAY #41954 /* ~Méli fait une grimace innocente et hausse les épaules, comme pour dire 'je ne sais pas'. Il se met ensuite la main devant la bouche et glousse comme une écolière insouciante.~ */
  IF ~~ THEN REPLY #41955 /* ~"Je voudrais que tu lèves cette malédiction."~ */ GOTO 9
  IF ~~ THEN REPLY #41956 /* ~"J'ai une autre question…"~ */ GOTO 3
  IF ~~ THEN REPLY #41957 /* ~"C'est tout ce que je voulais savoir. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 9 // from: 1.3 3.1 8.0 11.2
  SAY #41958 /* ~Méli fait semblant de ne pas t'entendre, rote bruyamment et recommence à se tapoter le ventre en promenant son regard autour de la Salle des Fêtes.~ */
  IF ~~ THEN REPLY #41959 /* ~"Qu'est-ce que je peux faire pour que tu lèves la malédiction de Pestilent ?"~ */ GOTO 10
  IF ~  !Global("Jumble ","GLOBAL",2)
~ THEN REPLY #41960 /* ~Vérité : "Lève sa malédiction, Méli, ou je serai obligé de te faire du mal."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Jumble_1","GLOBALGood",-1)
~ GOTO 5
  IF ~  !Global("Jumble ","GLOBAL",2)
~ THEN REPLY #41961 /* ~Bluff : "Lève sa malédiction, Méli, ou je serai obligé de te faire du mal."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Jumble_1","GLOBALLaw",-1)
~ GOTO 5
  IF ~~ THEN REPLY #41962 /* ~Pars.~ */ EXIT
END

IF ~~ THEN BEGIN 10 // from: 9.0
  SAY #41963 /* ~Sans te regarder, Méli secoue la tête.~ */
  IF ~  !Global("Jumble ","GLOBAL",2)
~ THEN REPLY #41964 /* ~Vérité : "Lève la malédiction de Pestilent, Méli, ou je serai obligé de te faire du mal."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Jumble_1","GLOBALGood",-1)
~ GOTO 5
  IF ~  !Global("Jumble ","GLOBAL",2)
~ THEN REPLY #41965 /* ~Bluff : "Lève la malédiction de Pestilent, Méli, ou je serai obligé de te faire du mal."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Jumble_1","GLOBALLaw",-1)
~ GOTO 5
  IF ~~ THEN REPLY #41966 /* ~Pars.~ */ EXIT
END

IF ~  Global("Jumble","GLOBAL",1)
~ THEN BEGIN 11 // from:
  SAY #41967 /* ~Méli Sensdumeurtre te salue exagérément, comme à son habitude, puis relève la tête et te regarde avec curiosité.~ */
  IF ~~ THEN REPLY #41968 /* ~"J'ai quelques questions, Méli…"~ */ GOTO 2
  IF ~  Global("Story_Reekwind_Curse","GLOBAL",1)
Global("Jumble_Reekwind","GLOBAL",0)
~ THEN REPLY #41969 /* ~"C'est toi qui as lancé une malédiction à Pestilent, n'est-ce pas ?"~ */ DO ~SetGlobal("Jumble_Reekwind","GLOBAL",1)
~ JOURNAL #67862 /* ~À la Salle des Fêtes, j'ai rencontré Méli Sensdumeurtre, l'homme qui avait maudit Pestilent.~ */ GOTO 8
  IF ~  Global("Jumble_Reekwind","GLOBAL",1)
~ THEN REPLY #67866 /* ~"J'aimerais que tu fasses disparaître la malédiction dont souffre Pestilent."~ */ GOTO 9
  IF ~~ THEN REPLY #41970 /* ~"Je ne faisais que passer. Au revoir."~ */ EXIT
END

IF ~  Global("Jumble","GLOBAL",2)
~ THEN BEGIN 12 // from:
  SAY #41971 /* ~Méli te regarde en fronçant les sourcils, se mord le pouce et te fait signe de partir.~ */
  IF ~  Global("Know_Salabesh_Curse","GLOBAL",1)
~ THEN REPLY #41972 /* ~Jette la malédiction de Salabesh sur lui.~ */ GOTO 15
  IF ~~ THEN REPLY #41973 /* ~"Méli, je veux que tu me délivres de ta malédiction."~ */ GOTO 13
  IF ~~ THEN REPLY #41974 /* ~"J'ai des questions…"~ */ GOTO 3
  IF ~~ THEN REPLY #41975 /* ~Pars.~ */ EXIT
END

IF ~~ THEN BEGIN 13 // from: 12.1
  SAY #41976 /* ~Il roule les yeux et bâille sans retenue.~ */
  IF ~  Global("Know_Salabesh_Curse","GLOBAL",1)
~ THEN REPLY #41977 /* ~Jette la malédiction de Salabesh sur lui.~ */ GOTO 15
  IF ~~ THEN REPLY #41978 /* ~Vérité : "Ôte la malédiction, Méli, ou je serai forcé de te faire mal."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Jumble_1","GLOBALGood",-1)
~ GOTO 14
  IF ~~ THEN REPLY #41979 /* ~Bluff : "Ôte la malédiction, Méli, ou je serai forcé de te faire mal."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Jumble_1","GLOBALLaw",-1)
~ GOTO 14
  IF ~~ THEN REPLY #41980 /* ~Pars.~ */ EXIT
END

IF ~~ THEN BEGIN 14 // from: 13.1 13.2
  SAY #41981 /* ~Méli Sensdumeurtre se donne en spectacle en examinant et en curant ses ongles.~ */
  IF ~  Global("Know_Salabesh_Curse","GLOBAL",1)
~ THEN REPLY #41982 /* ~Jette la malédiction de Salabesh sur lui.~ */ GOTO 15
  IF ~~ THEN REPLY #41983 /* ~Attaque-le.~ */ DO ~ForceAttack(Protagonist,Myself)
Enemy()
RunAwayFromEx(Protagonist,TWO_AI_SECONDS,FALSE)
~ EXIT
  IF ~~ THEN REPLY #41984 /* ~Pars.~ */ EXIT
END

IF ~~ THEN BEGIN 15 // from: 12.0 13.0 14.0
  SAY #41985 /* ~Il te dévisage, l'air sceptique, tandis que tu énonces les syllabes mystiques du maléfice de Salabesh. Après un silence gêné, le mage xaositecte s'avise qu'il ne s'est rien passé, semble-t-il… et un vilain sourire s'étale sur son visage.~ */
  IF ~~ THEN REPLY #41986 /* ~Continue…~ */ GOTO 16
END

IF ~~ THEN BEGIN 16 // from: 15.0
  SAY #41987 /* ~Il ouvre la bouche pour riposter en lançant une autre de ses malédictions… mais s'aperçoit qu'il n'a plus de voix ! La malédiction de Salabesh empêche Méli de parler, ôtant du même coup au Xaositecte la capacité de lancer des sorts. Il porte ses mains à sa gorge, les yeux emplis de panique.~ */
  IF ~~ THEN REPLY #41988 /* ~"On dirait que les vents ont tourné, Méli. À ton avis, qu'est-ce qui arrivera quand ceux - *hoquet !* - sur qui tu as lancé une malédiction découvriront que tu ne peux plus parler - ni lancer aucun sort ?"~ */ GOTO 17
END

IF ~~ THEN BEGIN 17 // from: 16.0
  SAY #41989 /* ~Méli tombe à genoux, une expression implorante dans les yeux. Il est sur le point de fondre en larmes.~ */
  IF ~~ THEN REPLY #41990 /* ~"Vas-tu enfin - *hoquet !* - me délivrer de ta malédiction ? Et jurer de ne plus jamais lancer de malédiction sur quelqu'un qui ne t'a rien fait ?"~ */ DO ~SetGlobal("Jumble","GLOBAL",3)
AddexperienceParty(10000)
~ GOTO 18
END

IF ~~ THEN BEGIN 18 // from: 17.0
  SAY #41991 /* ~Méli porte ses mains à son cœur et acquiesce avec force.~ */
  IF ~~ THEN REPLY #41992 /* ~"Très bien. Alors, je vais lever la malédiction…"~ */ DO ~ApplySpell(Protagonist,SPECIAL_REMOVE_JUMBLE_CURSE)
~ JOURNAL #66550 /* ~J'ai obligé Méli Sensdumeutre à me débarrasser de la malédiction dont il m'avait affublé, cela grâce à un sort que m'a enseigné Salabesh l'Onyx, le 'Maître des Malédictions'.~ */ GOTO 19
END

IF ~~ THEN BEGIN 19 // from: 18.0
  SAY #41993 /* ~Méli soupire de soulagement lorsque tu lèves la malédiction de Salabesh. À son tour, il lève la sienne et ton hoquet cesse enfin. Il s'incline ensuite humblement, les yeux baissés.~ */
  IF ~  Global("Story_Reekwind_Curse","GLOBAL",1)
Global("Reekwind","GLOBAL",1)
Global("Jumble_Reekwind","GLOBAL",0)
~ THEN REPLY #67870 /* ~"Tu as également maudit Pestilent, n'est-ce pas ?"~ */ DO ~SetGlobal("Jumble_Reekwind","GLOBAL",1)
~ JOURNAL #67862 /* ~À la Salle des Fêtes, j'ai rencontré Méli Sensdumeurtre, l'homme qui avait maudit Pestilent.~ */ GOTO 22
  IF ~  Global("Story_Reekwind_Curse","GLOBAL",1)
Global("Reekwind","GLOBAL",1)
Global("Jumble_Reekwind","GLOBAL",1)
~ THEN REPLY #41994 /* ~"Je voudrais aussi que tu lèves la malédiction de Pestilent."~ */ DO ~SetGlobal("Reekwind","GLOBAL",2)
AddexperienceParty(1000)
~ JOURNAL #66551 /* ~Une petite malédiction m'a permis de convaincre Méli Sensdumeurtre de faire disparaître celle de Pestilent.~ */ GOTO 20
  IF ~~ THEN REPLY #41995 /* ~"Au revoir, Méli."~ */ EXIT
END

IF ~~ THEN BEGIN 20 // from: 19.1 21.1 22.0
  SAY #41996 /* ~Méli acquiesce en faisant la moue et, d'un geste de la main, lève la malédiction de Pestilent.~ */
  IF ~~ THEN REPLY #41997 /* ~"Merci. Au revoir, Méli."~ */ EXIT
END

IF ~  Global("Jumble","GLOBAL",3)
~ THEN BEGIN 21 // from:
  SAY #41998 /* ~Méli te salue maladroitement en te regardant d'un air gêné. Il est clair qu'il préférerait ne plus avoir affaire à toi.~ */
  IF ~  Global("Story_Reekwind_Curse","GLOBAL",1)
Global("Reekwind","GLOBAL",1)
Global("Jumble_Reekwind","GLOBAL",0)
~ THEN REPLY #67871 /* ~"Tu as également maudit Pestilent, n'est-ce pas ?"~ */ DO ~SetGlobal("Jumble_Reekwind","GLOBAL",1)
~ GOTO 22
  IF ~  Global("Story_Reekwind_Curse","GLOBAL",1)
Global("Reekwind","GLOBAL",1)
Global("Jumble_Reekwind","GLOBAL",1)
~ THEN REPLY #41999 /* ~"Je voudrais que tu lèves la vieille malédiction de Pestilent."~ */ DO ~SetGlobal("Reekwind","GLOBAL",2)
AddexperienceParty(1000)
~ JOURNAL #66551 /* ~Une petite malédiction m'a permis de convaincre Méli Sensdumeurtre de faire disparaître celle de Pestilent.~ */ GOTO 20
  IF ~~ THEN REPLY #42000 /* ~"Je ne faisais que passer, Méli. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 22 // from: 19.0 21.0
  SAY #67867 /* ~Laissant échapper un long soupir, Méli lève les yeux au ciel puis acquiesce.~ */
  IF ~~ THEN REPLY #67868 /* ~"J'aimerais que tu le délivres de ta malédiction."~ */ DO ~SetGlobal("Reekwind","GLOBAL",2)
AddexperienceParty(1000)
~ GOTO 20
  IF ~~ THEN REPLY #67869 /* ~"C'est tout ce que je voulais savoir. Au revoir."~ */ EXIT
END
