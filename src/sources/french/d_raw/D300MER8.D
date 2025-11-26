// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : D300MER8.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\fr_FR\dialog.tlk
// dialogF  : (none)

BEGIN ~D300MER8~

IF ~  NumTimesTalkedTo(0)
~ THEN BEGIN 0 // from:
  SAY #17772 /* ~Cette vieille femme se tient sans parler près du mur, le regard perdu au loin. Elle ne semble pas faire attention à la circulation autour d'elle et agrippe un bâton en bois sur lequel pendent des douzaines de petits poissons.~ */
  IF ~~ THEN REPLY #17790 /* ~"Bonjour…"~ */ GOTO 2
  IF ~~ THEN REPLY #17791 /* ~Laisse-la.~ */ DO ~SetNumTimesTalkedTo(0)
~ EXIT
END

IF ~  NumTimesTalkedToGT(0)
!Global("Good_Fishwife_1","GLOBAL",1)
~ THEN BEGIN 1 // from:
  SAY #17773 /* ~"'jour, m'sieur, tu veux ach'ter quelqu…" Soudain, elle te reconnaît. "Oh, tu es revenu."~ */
  IF ~~ THEN REPLY #22136 /* ~"Oui, j'ai des questions…"~ */ GOTO 3
  IF ~~ THEN REPLY #17793 /* ~"Je ne faisais que passer. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 0.0
  SAY #17774 /* ~"Oh…, 'jour m'sieur." Elle te fixe en essayant de te reconnaître. "Oh ! je pensais à un des mes clients réguliers." Elle présente son bâton à poissons. "Du thon, m'sieur ? Du maquereau ? Du concombre de mer ?"~ */
  IF ~~ THEN REPLY #17794 /* ~"Pas de poisson, merci. J'ai des questions…"~ */ GOTO 3
  IF ~~ THEN REPLY #17795 /* ~"Non merci. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 1.0 2.0
  SAY #17775 /* ~"Humm…" Elle fait une moue en serrant les lèvres et regarde fixement par-dessus ton épaule.~ */
  IF ~  Global("Mebbeth_Quest","GLOBAL",9)
PartyHasItem("Tankard")
~ THEN REPLY #22143 /* ~"J'ai apporté une chope. Est-ce que je peux y mettre l'encre du poisson ?"~ */ DO ~DestroyPartyItem("Tankard",FALSE)
GiveItemCreate("TankardF",Protagonist,1,0,0)
SetGlobal("Mebbeth_Quest","GLOBAL",10)
~ GOTO 20
  IF ~  Global("Mebbeth_Quest","GLOBAL",7)
~ THEN REPLY #22108 /* ~"As-tu entendu parler d'un *aileron-brogota* ? On m'a dit qu'il perdait de l'encre par les ouïes."~ */ DO ~SetGlobal("Mebbeth_Quest","GLOBAL",8)
~ GOTO 18
  IF ~~ THEN REPLY #17796 /* ~Retourne-toi pour voir ce qu'elle regarde.~ */ GOTO 4
  IF ~~ THEN REPLY #17797 /* ~"Euh… Tu peux me parler de cette région ?"~ */ GOTO 15
  IF ~  Global("Pharod","GLOBAL",0)
~ THEN REPLY #17798 /* ~"Tu connais un dénommé Pharod ?"~ */ GOTO 15
  IF ~  Global("Journal","GLOBAL",0)
~ THEN REPLY #17799 /* ~"J'ai perdu un journal quelque part. Tu n'en aurais pas trouvé un par hasard ?"~ */ GOTO 15
  IF ~~ THEN REPLY #17800 /* ~"Peu importe… Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 3.2
  SAY #17776 /* ~Tu ne vois rien d'intéressant derrière toi. Comme tu te retournes vers elle, tu croises son regard… elle détourne rapidement les yeux, et reprend sa contemplation lointaine.~ */
  IF ~  Global("Mebbeth_Quest","GLOBAL",9)
PartyHasItem("Tankard")
~ THEN REPLY #22149 /* ~"J'ai apporté une chope. Est-ce que je peux y mettre l'encre du poisson ?"~ */ DO ~DestroyPartyItem("Tankard",FALSE)
GiveItemCreate("TankardF",Protagonist,1,0,0)
SetGlobal("Mebbeth_Quest","GLOBAL",10)
~ GOTO 20
  IF ~  Global("Mebbeth_Quest","GLOBAL",7)
~ THEN REPLY #22109 /* ~"As-tu entendu parler d'un *aileron-brogota* ? On m'a dit qu'il perdait de l'encre par les ouïes."~ */ DO ~SetGlobal("Mebbeth_Quest","GLOBAL",8)
~ GOTO 18
  IF ~~ THEN REPLY #17801 /* ~"Qu'est-ce qu'il y a ? Tu me connais ?"~ */ GOTO 5
  IF ~~ THEN REPLY #17802 /* ~"Peux-tu me parler de cette zone ?"~ */ GOTO 15
  IF ~  Global("Pharod","GLOBAL",0)
~ THEN REPLY #17803 /* ~"Tu connais un dénommé Pharod ?"~ */ GOTO 15
  IF ~  Global("Journal","GLOBAL",0)
~ THEN REPLY #17804 /* ~"J'ai perdu un journal quelque part. Tu n'en aurais pas trouvé un par hasard ?"~ */ GOTO 15
  IF ~~ THEN REPLY #17805 /* ~"Euh… Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 4.2 15.2
  SAY #17777 /* ~"Bonté divine, non !" Elle s'arrête un moment. "Si, c'est vrai."~ */
  IF ~~ THEN REPLY #17806 /* ~"Alors, tu m'as déjà vu ?"~ */ GOTO 6
  IF ~~ THEN REPLY #17807 /* ~"Intéressant. Au revoir, poissonnière."~ */ EXIT
END

IF ~~ THEN BEGIN 6 // from: 5.0
  SAY #17778 /* ~"Je crois… toi ou un homme qui te ressemble beaucoup. Cela fait bien longtemps."~ */
  IF ~~ THEN REPLY #17808 /* ~"Je t'écoute…"~ */ GOTO 7
  IF ~~ THEN REPLY #17809 /* ~"Intéressant. Au revoir, poissonnière."~ */ EXIT
END

IF ~~ THEN BEGIN 7 // from: 6.0 17.0
  SAY #17779 /* ~"Et bien, tu vois… ma vue n'est pas très bonne, et à l'époque non plus. Mais je pensais t'avoir vu avec un petit groupe derrière toi."~ */
  IF ~~ THEN REPLY #17810 /* ~"À quoi ressemblaient ces gens ?"~ */ GOTO 8
  IF ~~ THEN REPLY #17811 /* ~"Intéressant. Au revoir, poissonnière."~ */ EXIT
END

IF ~~ THEN BEGIN 8 // from: 7.0
  SAY #17780 /* ~"C'est dur à dire, m'sieur… il y a si longtemps, et vous marchiez si vite. Mais je me rappelle maintenant, la façon dont tu tenais la tête haute… il y avait une femme derrière qui essayait de t'arrêter. Elle voulait que tu te tournes, que tu lui parles… mais tu l'as repoussée."~ */
  IF ~~ THEN REPLY #17812 /* ~"Et qu'est-ce qui s'est passé ?"~ */ GOTO 9
  IF ~~ THEN REPLY #17813 /* ~"Intéressant. Au revoir, poissonnière."~ */ EXIT
END

IF ~~ THEN BEGIN 9 // from: 8.0
  SAY #17781 /* ~"Une belle femme, elle avait… l'air si triste, si fâché à la fois. Elle s'est arrêtée un moment puis a continué à te suivre, en hâtant le pas pour pas te perdre."~ */
  IF ~~ THEN REPLY #17814 /* ~"Tu as parlé d'un groupe, non ? Il y avait qui encore ?"~ */ GOTO 10
  IF ~~ THEN REPLY #17815 /* ~"Intéressant. Au revoir, poissonnière."~ */ EXIT
END

IF ~~ THEN BEGIN 10 // from: 9.0
  SAY #17782 /* ~Elle hausse les épaules. "Il y avait au moins deux autres messieurs avec toi… le seul dont je me rappelle clairement était grand, mince. Il sentait le fauve, même à distance. Ça devait faire des siècles qu'il avait pas dû se laver. Il te suivait de près et ne disait jamais un mot. Il f'sait comme si la femme n'était pas là, même quand elle le bousculait en essayant de t'arrêter. C'est tout ce dont je me rappelle, monsieur."~ */
  IF ~  PartyGoldGT(0)
~ THEN REPLY #17816 /* ~Donne-lui quelques pièces de cuivre pour le temps qu'elle t'a accordé.~ */ GOTO 11
  IF ~~ THEN REPLY #17817 /* ~"Intéressant. Merci et au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 11 // from: 10.0
  SAY #17783 /* ~Qu'est-ce que tu donnes à la poissonnière ?~ */
  IF ~  PartyGoldGT(0)
~ THEN REPLY #17818 /* ~Une pièce de cuivre.~ */ DO ~IncrementGlobalOnceEx("GLOBALGood_Fishwife_1","GLOBALGood",1)
TakePartyGold(1)
~ GOTO 12
  IF ~  PartyGoldGT(4)
~ THEN REPLY #17819 /* ~Cinq pièces de cuivre.~ */ DO ~IncrementGlobalOnceEx("GLOBALGood_Fishwife_1","GLOBALGood",1)
TakePartyGold(5)
~ GOTO 13
  IF ~  PartyGoldGT(9)
~ THEN REPLY #17820 /* ~Dix pièces de cuivre.~ */ DO ~IncrementGlobalOnceEx("GLOBALGood_Fishwife_1","GLOBALGood",1)
TakePartyGold(10)
~ GOTO 13
  IF ~  PartyGoldGT(19)
~ THEN REPLY #17821 /* ~Vingt pièces de cuivre.~ */ DO ~IncrementGlobalOnceEx("GLOBALGood_Fishwife_1","GLOBALGood",1)
TakePartyGold(20)
~ GOTO 14
  IF ~~ THEN REPLY #17822 /* ~Rien : "Intéressant. Merci et au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 12 // from: 11.0
  SAY #17784 /* ~Elle sourit et incline la tête. "Merci, monsieur."~ */
  IF ~~ THEN REPLY #17823 /* ~"Bien sûr. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 13 // from: 11.1 11.2
  SAY #17785 /* ~"Oh ! Merci beaucoup, monsieur, très aimable. Puisse l'ombre de la Dame à jamais t'épargner."~ */
  IF ~~ THEN REPLY #17824 /* ~"Merci. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 14 // from: 11.3
  SAY #17786 /* ~Elle contemple un instant la grosse poignée de pièces, comme si elle ne savait pas que faire. Tu les rapproches et elle les prend enfin, avec un rire gêné. "Oh… oh ! Et ben ! Merci, Monsieur ! Puisse l'ombre de la Dame à jamais t'épargner et la fortune toujours te sourire ! Reviens quand tu veux."~ */
  IF ~~ THEN REPLY #17825 /* ~"Merci. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 15 // from: 3.3 3.4 3.5 4.3 4.4 4.5 15.3 15.4 15.5
  SAY #17787 /* ~Elle secoue la tête, la bouche bien fermée et continue à regarder par-dessus ton épaule. Chaque fois que tu essaies de voir ce qu'elle regarde, tu t'aperçois en te retournant qu'elle t'observe du coin de l'œil.~ */
  IF ~  Global("Mebbeth_Quest","GLOBAL",9)
PartyHasItem("Tankard")
~ THEN REPLY #22153 /* ~"J'ai apporté une chope. Est-ce que je peux y mettre l'encre du poisson ?"~ */ DO ~DestroyPartyItem("Tankard",FALSE)
GiveItemCreate("TankardF",Protagonist,1,0,0)
SetGlobal("Mebbeth_Quest","GLOBAL",10)
~ GOTO 20
  IF ~  Global("Mebbeth_Quest","GLOBAL",7)
~ THEN REPLY #22112 /* ~"As-tu entendu parler d'un *aileron-brogota* ? On m'a dit qu'il perdait de l'encre par les ouïes."~ */ DO ~SetGlobal("Mebbeth_Quest","GLOBAL",8)
~ GOTO 18
  IF ~~ THEN REPLY #17826 /* ~"Qu'est-ce qu'il y a ? Tu me connais ?"~ */ GOTO 5
  IF ~~ THEN REPLY #17827 /* ~"Peux-tu me parler de cette zone ?"~ */ GOTO 15
  IF ~  Global("Pharod","GLOBAL",0)
~ THEN REPLY #17828 /* ~"Tu connais un dénommé Pharod ?"~ */ GOTO 15
  IF ~  Global("Journal","GLOBAL",0)
~ THEN REPLY #17829 /* ~"J'ai perdu un journal quelque part. Tu n'en aurais pas trouvé un par hasard ?"~ */ GOTO 15
  IF ~~ THEN REPLY #17830 /* ~"Euh… Au revoir."~ */ EXIT
END

IF ~  NumTimesTalkedToGT(0)
Global("Good_Fishwife_1","GLOBAL",1)
~ THEN BEGIN 16 // from:
  SAY #17788 /* ~"Re-bonjour, monsieur ! Que puis-je pour toi ?"~ */
  IF ~  Global("Mebbeth_Quest","GLOBAL",9)
PartyHasItem("Tankard")
~ THEN REPLY #22157 /* ~"J'ai apporté une chope. Est-ce que je peux y mettre l'encre du poisson ?"~ */ DO ~TransformPartyItem("Tankard","TankardF",1,0,0)
SetGlobal("Mebbeth_Quest","GLOBAL",10)
~ GOTO 20
  IF ~  Global("Mebbeth_Quest","GLOBAL",7)
~ THEN REPLY #22116 /* ~"As-tu entendu parler d'un *aileron-brogota* ? On m'a dit qu'il perdait de l'encre par les ouïes."~ */ DO ~SetGlobal("Mebbeth_Quest","GLOBAL",8)
~ GOTO 18
  IF ~~ THEN REPLY #17831 /* ~"Tu peux me redire quand tu m'as vu ?"~ */ GOTO 17
  IF ~~ THEN REPLY #17832 /* ~"Rien, je ne faisais que passer. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 17 // from: 16.2
  SAY #17789 /* ~"Oh, sûrement, monsieur !"~ */
  IF ~~ THEN GOTO 7
END

IF ~~ THEN BEGIN 18 // from: 3.1 4.1 15.1 16.1
  SAY #22105 /* ~Elle cligne des yeux, puis acquiesce. "Ouais, ce poisson… il est bizarre, ouais. Y'en a pas beaucoup qui ont entendu parler d'lui, et encore moins qui ont voulu en manger… difficile à tuer, et même mort, on dirait qu'il vit encore. Y'en a pas beaucoup qui veulent mordre quelque chose qui frétille encore."~ */
  IF ~~ THEN REPLY #22120 /* ~"Tu en as un ?"~ */ JOURNAL #21904 /* ~Meir'am a le poisson, mais *comme d'habitude*, ce n'est pas si simple. J'ai besoin d'un récipient pour transporter l'encre, une tasse ou une chope par exemple. J'en trouverai peut-être une à acheter chez l'un des marchands de la place.~ */ GOTO 19
END

IF ~~ THEN BEGIN 19 // from: 18.0
  SAY #22106 /* ~"Ouais… mais pour l'encre, t'auras besoin de quelque chose pour la transporter. T'as pas un bol ou une tasse, par hasard ?"~ */
  IF ~  CheckStatLT(Protagonist,15,INT)
~ THEN REPLY #22126 /* ~"Super.. Je vais en chercher un et je reviens."~ */ EXIT
  IF ~  CheckStatGT(Protagonist,14,INT)
~ THEN REPLY #22127 /* ~"Hummm. Ou une chope…  un des marchands doit en vendre. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 20 // from: 3.0 4.0 15.0 16.0
  SAY #22107 /* ~Elle acquiesce et ramasse un poisson de son étal… il se crispe lorsqu'elle l'attrape, puis commence à se débattre lorsqu'elle le tord comme un chiffon, jusqu'à ce qu'une encre bleu foncé s'écoule de ses ouïes. Lorsque ton récipient est presque plein, elle relâche sa pression et jette le poisson frétillant dans un sac à ses côtés.~ */
  IF ~~ THEN REPLY #22129 /* ~"Merci et au revoir."~ */ JOURNAL #21905 /* ~J'ai finalement récupéré l'encre, toute une chope. Maintenant je peux rapporter cette saleté infâme à Mebbeth… Qui sait, je réussirai peut-être à la lui faire boire.~ */ EXIT
END
