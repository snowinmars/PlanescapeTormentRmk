// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DCSTCPR3.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\fr_FR\dialog.tlk
// dialogF  : (none)

BEGIN ~DCSTCPR3~

IF ~  True()
~ THEN BEGIN 0 // from:
  SAY #10089 /* ~Tu vois une jeune femme aux habits et au parfum bon marché et au sourire peint. Remarquant l'attention que tu lui portes, elle te sourit.~ */
  IF ~~ THEN REPLY #10090 /* ~"Bonjour."~ */ GOTO 1
  IF ~~ THEN REPLY #10091 /* ~Ignore-la.~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #10092 /* ~Elle s'approche, pose une main sur ton épaule, passe l'autre dans ton dos pour te caresser la nuque, puis elle sourit et laisse glisser la main sur ton épaule le long de ton bras. "Dis-donc, matois, t'es un colosse. J'aime bien les hommes forts capables de prendre ce qu'ils veulent." Soudain, elle t'attire contre elle. "Alors, dis-moi… Qu'est-ce que tu veux ?"~ */
  IF ~~ THEN REPLY #10093 /* ~"Euh… Réponds juste à quelques questions."~ */ GOTO 2
  IF ~~ THEN REPLY #10094 /* ~"Peu importe. Je dois m'en aller."~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.0
  SAY #10095 /* ~Elle te regarde droit dans les yeux et son sourire s'élargit. "Je ne suis pas là pour parler. Tu es sûr que c'est ce que tu veux ?"~ */
  IF ~  CheckStatGT(Protagonist,12,WIS)
~ THEN REPLY #10096 /* ~Cette femme est un peu trop agressive. Il y a quelque chose d'anormal.~ */ GOTO 3
  IF ~  PartyGoldGT(10)
~ THEN REPLY #10097 /* ~"Et bien… Je pourrais peut-être m'amuser un peu."~ */ DO ~TakePartyGold(10)
~ GOTO 10
  IF ~  PartyGoldLT(10)
~ THEN REPLY #10098 /* ~"Et bien… Je pourrais peut-être m'amuser un peu."~ */ GOTO 10
  IF ~~ THEN REPLY #10099 /* ~"Peu importe. Je dois partir maintenant."~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 2.0
  SAY #10100 /* ~Tu trouves son attitude un peu ambiguë ; tu la repousses donc. Ce faisant, tu sens une traction au niveau de ta hanche. Tu baisses alors les yeux, et tu vois la femme sortir sa main *vide* de ta bourse. Elle a l'air pressé de partir, soudain, et elle recule de deux pas.~ */
  IF ~  CheckStatGT(Protagonist,12,DEX)
~ THEN REPLY #10101 /* ~Empoigne-la.~ */ GOTO 4
  IF ~  CheckStatLT(Protagonist,13,DEX)
~ THEN REPLY #10102 /* ~Empoigne-la.~ */ GOTO 9
  IF ~~ THEN REPLY #10103 /* ~Laisse-la partir.~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 3.0
  SAY #10104 /* ~D'un geste vif, tu l'attrapes par le poignet. Elle se débat pour se libérer de ta prise. "Lâche-moi, bige, ou j'appelle les gardes à la rescousse !"~ */
  IF ~~ THEN REPLY #10105 /* ~"Vas-y, crie. Avant que quelqu'un arrive, tu ne seras plus de ce monde."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Pros3_1","GLOBALGood",-1)
~ GOTO 5
  IF ~~ THEN REPLY #10106 /* ~"Vas-y, crie. Je crois que toute la ville s'en fiche éperdument."~ */ GOTO 5
  IF ~~ THEN REPLY #10107 /* ~Laisse-la partir.~ */ DO ~EscapeArea()
~ GOTO 8
END

IF ~~ THEN BEGIN 5 // from: 4.0 4.1
  SAY #10108 /* ~Elle te scrute pendant un instant et cesse de se débattre. "Je t'en prie, laisse-moi partir. Tu m'as eue avant que je puisse te peler."~ */
  IF ~~ THEN REPLY #10109 /* ~"Donne-moi tout ton argent et je te laisserai partir."~ */ GOTO 6
  IF ~~ THEN REPLY #10110 /* ~"Bien, mais que je ne te revoie plus dans les parages. Compris ?"~ */ GOTO 8
END

IF ~~ THEN BEGIN 6 // from: 5.0
  SAY #10111 /* ~Elle hoche la tête, met la main dans sa propre bourse, la ressort pleine de pièces et te la tend. "Je t'en prie, m'sieur, je ne pourrai plus acheter de quoi manger si tu prends mon jonc. Laisse-moi simplement partir, s'il te plaît."~ */
  IF ~~ THEN REPLY #10112 /* ~Prends l'argent et laisse-la partir.~ */ DO ~GivePartyGold(10)
~ GOTO 7
  IF ~~ THEN REPLY #10113 /* ~Prends l'argent et tue-la.~ */ DO ~GivePartyGold(10)
Enemy()
ForceAttack(Protagonist,Myself)
~ EXIT
  IF ~~ THEN REPLY #10114 /* ~Laisse-la partir.~ */ DO ~EscapeArea()
~ GOTO 8
END

IF ~~ THEN BEGIN 7 // from: 6.0
  SAY #10115 /* ~Tu prends les pièces et tu les empoches. Elle te dévisage un bref instant, puis se détourne et s'éloigne à pas lents.~ */
  IF ~~ THEN REPLY #10116 /* ~Laisse-la partir.~ */ DO ~EscapeArea()
~ EXIT
END

IF ~~ THEN BEGIN 8 // from: 4.2 5.1 6.2
  SAY #10117 /* ~Tu la lâches et tu lui fais signe de décamper. Elle te dévisage, puis t'adresse un petit sourire. "Merci, m'sieur." Puis elle se détourne et s'éloigne à pas lents.~ */
  IF ~~ THEN REPLY #10118 /* ~Pars.~ */ DO ~EscapeArea()
~ EXIT
END

IF ~~ THEN BEGIN 9 // from: 3.1
  SAY #10119 /* ~Tu tentes de lui saisir le poignet mais, esquivant ta prise, elle s'écarte d'un bond et s'enfuit.~ */
  IF ~~ THEN REPLY #10120 /* ~Attaque-la.~ */ DO ~Enemy()
ForceAttack(Protagonist,Myself)
~ EXIT
  IF ~~ THEN REPLY #10121 /* ~Laisse-la partir.~ */ DO ~EscapeArea()
~ EXIT
END

IF ~~ THEN BEGIN 10 // from: 2.1 2.2
  SAY #10122 /* ~Elle desserre son étreinte, recule d'un pas et te sourit. "Désolée, matois, mais j'ai changé d'avis. Bonne journée." Elle se retourne et part.~ */
  IF ~~ THEN REPLY #10123 /* ~Laisse-la partir.~ */ EXIT
END
