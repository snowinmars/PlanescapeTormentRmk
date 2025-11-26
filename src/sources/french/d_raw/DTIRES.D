// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DTIRES.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\fr_FR\dialog.tlk
// dialogF  : (none)

BEGIN ~DTIRES~

IF ~  NumTimesTalkedTo(0)
~ THEN BEGIN 0 // from:
  SAY #38116 /* ~Tu vois un homme vieillissant en haillons. En t'approchant de lui, tu remarques qu'il a perdu les deux yeux. Le tissu cicatriciel de ses paupières cache ses orbites vides, lui conférant ainsi l'apparence macabre d'un crâne en décomposition.~ */
  IF ~~ THEN REPLY #38141 /* ~"Bonjour."~ */ GOTO 1
  IF ~~ THEN REPLY #38142 /* ~Laisse le vieil homme tranquille.~ */ DO ~SetNumTimesTalkedTo(0)
~ EXIT
END

IF ~  NumTimesTalkedToGT(0)
~ THEN BEGIN 1 // from: 0.0
  SAY #38117 /* ~Le vieil homme se retourne vers toi, les bras tendus comme s'il essayait de te sonder. "Les ténèbres dans voix sont ? Les paroles ami, je parlerai de toi et appellerai chaos."~ */
  IF ~  CheckStatGT(Protagonist,12,INT)
GlobalGT("Join_Chaosmen","GLOBAL",0)
~ THEN REPLY #38143 /* ~"Les mots expriment le chaos qui est le mien. N'aie pas peur, je *suis* membre de la faction des Xaositectes."~ */ GOTO 2
  IF ~  CheckStatLT(Protagonist,13,INT)
GlobalGT("Join_Chaosmen","GLOBAL",0)
~ THEN REPLY #38144 /* ~"Paroles… voix - poix - foix."~ */ GOTO 2
  IF ~  CheckStatGT(Protagonist,13,INT)
Global("Join_Chaosmen","GLOBAL",0)
~ THEN REPLY #38145 /* ~"Parler les paroles du chaos et se dire un ami ? Tout ce charabia est-il bien nécessaire ?"~ */ GOTO 16
  IF ~  CheckStatLT(Protagonist,14,INT)
Global("Join_Chaosmen","GLOBAL",0)
~ THEN REPLY #38146 /* ~"Han ?"~ */ GOTO 16
  IF ~~ THEN REPLY #38147 /* ~"Euh… Peu importe. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.0 1.1
  SAY #38118 /* ~"Ah… chaos pour toi, tout comme pour moi." L'aveugle sourit et fait un pas prudent vers toi. Alors qu'il se déplace, tu remarques qu'il semble plus à l'aise sur une de ses deux jambes.~ */
  IF ~  Global("Know_Tiresias","GLOBAL",0)
~ THEN REPLY #38148 /* ~"Qu'est-ce que tu as à la jambe… Tu es blessé ?"~ */ GOTO 3
  IF ~  Global("Know_Tiresias","GLOBAL",0)
~ THEN REPLY #38149 /* ~"Tu peux m'expliquer comment franchir l'Allée des Longs Soupirs ?"~ */ GOTO 15
  IF ~  Global("Know_Tiresias","GLOBAL",1)
~ THEN REPLY #38150 /* ~"Tu as dit que tu connaissais un chemin pour atteindre l'Allée en évitant les Chiens Affamés ?"~ */ GOTO 8
  IF ~  Global("Know_Tiresias","GLOBAL",2)
~ THEN REPLY #38151 /* ~"Où était cette porte secrète déjà ?"~ */ GOTO 18
  IF ~~ THEN REPLY #38152 /* ~"Oui… Et bien, il faut que je parte, maintenant. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 2.0
  SAY #38119 /* ~"Non, aller je vais. Une vilaine blessure, juste, c'est tout." Tout en parlant, il se penche et remonte le tissu en lambeaux qui recouvre sa jambe, révélant ainsi une grosse entaille qui s'étend de sa rotule à sa cuisse.~ */
  IF ~~ THEN REPLY #38153 /* ~"Qu'est-ce qui s'est passé ?"~ */ GOTO 4
  IF ~~ THEN REPLY #38154 /* ~"Tu peux m'expliquer comment franchir l'Allée des Longs Soupirs ?"~ */ GOTO 15
  IF ~~ THEN REPLY #38155 /* ~"Oui… Et bien, il faut que je parte, maintenant. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 3.0
  SAY #38120 /* ~"Un coup d'épée donné par un des Chiens Affamés. Regroupés dans la grande salle, ils sont. Ils hurlent, grognent, rôdent en quête de proies."~ */
  IF ~  Global("Know_SDB","GLOBAL",0)
~ THEN REPLY #38157 /* ~"Parle-moi de ces Chiens Affamés."~ */ GOTO 5
  IF ~  Global("Know_SDB","GLOBAL",1)
~ THEN REPLY #38158 /* ~"Les Chiens Affamés Aboyants ? Ils sont combien là-dedans ?"~ */ GOTO 7
  IF ~~ THEN REPLY #38159 /* ~"Je vois. Alors, au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 4.0 15.0
  SAY #38122 /* ~"Eux, chaos vicieux. Frères d'eux mais frères de personne."~ */
  IF ~~ THEN REPLY #38160 /* ~"Si ce sont des Xaositectes, pourquoi ils t'ont attaqué ?"~ */ GOTO 6
  IF ~~ THEN REPLY #38161 /* ~"Ils sont combien ?"~ */ GOTO 7
  IF ~~ THEN REPLY #38162 /* ~"Je vois. Alors, au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 6 // from: 5.0
  SAY #38127 /* ~Le vieil homme secoue la tête. "Sans importance aucune. Ils attaquent tout, tous. C'est ainsi que le chaos parle à eux. Toi aussi ils mettront en pièces, si tu y vas."~ */
  IF ~~ THEN REPLY #38163 /* ~"Ils sont combien ?"~ */ GOTO 7
  IF ~~ THEN REPLY #38165 /* ~"Je vois. Alors, au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 7 // from: 4.1 5.1 6.0 15.1
  SAY #38129 /* ~Le vieux Chaoteux s'arrête un moment, son regard aveugle semble fixer le vide. "Beaucoup… forts et violents. Mais il y a autre chemin. Un chemin secret que seul moi connais. Un chemin sûr vers l'Allée au-delà."~ */
  IF ~~ THEN REPLY #38166 /* ~"C'est quoi ce chemin secret ?"~ */ DO ~SetGlobal("Know_Tiresias","GLOBAL",1)
~ GOTO 8
  IF ~~ THEN REPLY #38167 /* ~"Peu importe. Je trouverai moi-même mon chemin."~ */ DO ~SetGlobal("Know_Tiresias","GLOBAL",1)
~ EXIT
END

IF ~~ THEN BEGIN 8 // from: 2.2 7.0
  SAY #38130 /* ~"L'obscurité pas lumière et la lumière pas obscurité. Les pièces brillantes et scintillantes peuvent donner lumière." Le vieil homme se frotte les doigts pour se faire comprendre.~ */
  IF ~  PartyGoldGT(9)
~ THEN REPLY #38168 /* ~Donne dix pièces de cuivre à l'aveugle.~ */ GOTO 9
  IF ~  PartyGoldGT(19)
~ THEN REPLY #38169 /* ~Donne vingt pièces de cuivre à l'aveugle.~ */ DO ~TakePartyGold(20)
~ GOTO 10
  IF ~~ THEN REPLY #38170 /* ~"Je ne te donnerai pas la moindre pièce. Dis-moi ce que je veux savoir… ou tu connaîtras le véritable sens du mot obscurité."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Tiresias_1","GLOBALGood",-1)
~ GOTO 11
  IF ~  Global("Sybil_Quest","GLOBAL",1)
~ THEN REPLY #38171 /* ~"Si on faisait soltif contre soltif. Je peux te dire où se trouve une certaine voleuse qui se cache là, sur le Terrain."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Tiresias_1","GLOBALLaw",-1)
~ GOTO 13
  IF ~~ THEN REPLY #38172 /* ~"Peu importe. Je trouverai moi-même mon chemin."~ */ EXIT
END

IF ~~ THEN BEGIN 9 // from: 8.0
  SAY #38131 /* ~Tu déposes dix pièces dans la main du vieil homme. Il attend un moment, puis il secoue la main comme pour évaluer le poids des pièces. Après un moment de réflexion, il te rend les pièces. "Pas assez. La vie vaut plus de dix pièces, non ?"~ */
  IF ~  PartyGoldGT(19)
~ THEN REPLY #38173 /* ~Donne-lui vingt pièces de cuivre.~ */ DO ~TakePartyGold(20)
~ GOTO 10
  IF ~~ THEN REPLY #38174 /* ~"Tu veux marchander ? Très bien… Dis-moi ce que je veux savoir et je te laisse la vie sauve."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Tiresias_1","GLOBALGood",-1)
~ GOTO 11
  IF ~  Global("Sybil_Quest","GLOBAL",1)
~ THEN REPLY #38175 /* ~"Si on faisait soltif contre soltif. Je peux te dire où se trouve une certaine voleuse qui se cache là, sur le Terrain."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Tiresias_1","GLOBALLaw",-1)
~ GOTO 13
  IF ~~ THEN REPLY #38176 /* ~"Peu importe. Je trouverai moi-même mon chemin."~ */ EXIT
END

IF ~~ THEN BEGIN 10 // from: 8.1 9.0 13.1
  SAY #38132 /* ~Tu tends au vieil homme les pièces qu'il s'empresse de mettre dans sa poche. "Trouve la porte dissimulée dans salle au sud-ouest. Elle donne sur autre bout de la salle grande, près de la sortie vers l'Allée."~ */
  IF ~~ THEN REPLY #38177 /* ~"Merci de ton aide. Au revoir."~ */ DO ~SetGlobal("Know_Tiresias","GLOBAL",2)
~ JOURNAL #37703 /* ~J'ai rencontré un vieux Xaositecte aveugle sur le Terrain des Sicaires. Il m'a parlé d'une porte secrète qui me permettrait de me rendre dans l'Allée des Longs Soupirs sans tomber sur les Chiens Affamés Aboyant qui se réunissent dans la salle principale du Terrain. La porte est censée se trouver dans une pièce au sud-ouest, à côté de la salle principale.~ */ EXIT
END

IF ~~ THEN BEGIN 11 // from: 8.2 9.1 13.2 17.0
  SAY #38133 /* ~Le vieil homme semble outragé par ta menace. "Toi pas un ami et un ami n'as pas ici ! Des amis j'ai que j'appellerai !" Il reprend son souffle comme s'il s'apprêtait à crier.~ */
  IF ~  CheckStatGT(Protagonist,12,DEX)
~ THEN REPLY #38178 /* ~Attrape-le et brise-lui la nuque avant qu'il ait le temps de crier.~ */ GOTO 12
  IF ~~ THEN REPLY #38179 /* ~Attaque-le.~ */ DO ~Enemy()
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
SetGlobal("Tenement_Alarm","GLOBAL",1)
~ EXIT
  IF ~~ THEN REPLY #38180 /* ~Pars vite.~ */ DO ~Enemy()
SetGlobal("Tenement_Alarm","GLOBAL",1)
FloatMessage(Myself,9635)
~ EXIT
END

IF ~~ THEN BEGIN 12 // from: 11.0
  SAY #38134 /* ~Tu attaques rapidement le vieil homme. Lui mettant une main devant la bouche pour l'empêcher de crier, tu l'attrapes par l'arrière de la tête avec ta main libre et tu lui tords le cou jusqu'à entendre un claquement net.~ */
  IF ~~ THEN REPLY #38181 /* ~"Trop facile."~ */ DO ~IncrementGlobal("Choke","GLOBAL",1)
PlaySoundNotRanged("SPE_11")
SetAnimState(Myself,ANIM_MIMEDIE)
Kill(Myself)
~ EXIT
END

IF ~~ THEN BEGIN 13 // from: 8.3 9.2
  SAY #38135 /* ~"Un voleur ? Ici ? Quelqu'un *a* volé Tiresias… celui peut-être dont tu as parlé." Le vieil homme se caresse le menton, comme s'il étudiait ton offre. "C'est d'accord… Soltif contre soltif. En premier, parle."~ */
  IF ~~ THEN REPLY #38182 /* ~"Ta voleuse n'est qu'une gamine. Elle se cache dans l'antichambre de l'autre côté du passage, près de la porte de la salle principale."~ */ DO ~SetGlobal("Sybil_Betrayed","GLOBAL",1)
IncrementGlobalOnceEx("GLOBALEvil_Tiresias_2","GLOBALGood",-1)
~ GOTO 14
  IF ~  PartyGoldGT(19)
~ THEN REPLY #38183 /* ~"Tout bien réfléchi, voilà vingt pièces. Dis-moi ce que tu sais."~ */ DO ~TakePartyGold(20)
~ GOTO 10
  IF ~~ THEN REPLY #38184 /* ~"Tout bien réfléchi, dis-moi ce que je veux savoir… et je te laisse la vie sauve."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Tiresias_1","GLOBALGood",-1)
~ GOTO 11
  IF ~~ THEN REPLY #38185 /* ~"Peu importe. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 14 // from: 13.0
  SAY #38136 /* ~Tiresias fait un signe de tête pour apprécier. "Une jeune voleuse fille, tu dis ? Je vais chercher."~ */
  IF ~~ THEN REPLY #38186 /* ~"C'est ça. Maintenant, parle-moi de ce chemin secret."~ */ GOTO 19
  IF ~~ THEN REPLY #38188 /* ~"Ça m'étonnerait fort. Maintenant, dis-moi ce que tu sais, vieil homme."~ */ GOTO 19
END

IF ~~ THEN BEGIN 15 // from: 2.1 3.1
  SAY #38137 /* ~"Oui, Tiresias connaît le chemin. La sortie vers l'Allée est par la salle grande, au sud, mais la traverser tu pourras pas. Les Chiens Affamés l'occupent et bloquent accès."~ */
  IF ~  Global("Know_SDB","GLOBAL",0)
~ THEN REPLY #38189 /* ~"Parle-moi de ces Chiens Affamés."~ */ GOTO 5
  IF ~  Global("Know_SDB","GLOBAL",1)
~ THEN REPLY #38190 /* ~"Les Chiens Affamés Aboyants ? Ils sont combien là-dedans ?"~ */ GOTO 7
  IF ~~ THEN REPLY #38191 /* ~"Je vois. Alors, au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 16 // from: 1.2 1.3
  SAY #38138 /* ~Le vieil homme penche la tête d'un côté, son regard aveugle semble fixer le vide. "Chaos, toi pas chaos. Pas ! Ta ! Tra !"~ */
  IF ~  CheckStatLT(Protagonist,14,INT)
~ THEN REPLY #38192 /* ~"Euh… Je ne comprends rien."~ */ GOTO 17
  IF ~~ THEN REPLY #38193 /* ~"Est-ce que tout le monde a perdu la tête, ici ?"~ */ GOTO 17
  IF ~~ THEN REPLY #38194 /* ~Ne fais pas attention à ses divagations, pars.~ */ EXIT
END

IF ~~ THEN BEGIN 17 // from: 16.0 16.1
  SAY #38139 /* ~"Marche, parle pas. Parler terminé. Terminement terminé !" Il se retourne, comme pour indiquer qu'il en a terminé avec cette conversation.~ */
  IF ~~ THEN REPLY #38195 /* ~"Écoute, vieil homme, tu as intérêt à me répondre, sinon il te manquera bientôt autre chose que tes yeux."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Tiresias_1","GLOBALGood",-1)
~ GOTO 11
  IF ~~ THEN REPLY #38196 /* ~"Tout ça ne me mène nulle part. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 18 // from: 2.3
  SAY #38140 /* ~"Dans salle du sud-ouest se trouve la porte cachée. Pas par porte en face, celle-là mène aux Chiens."~ */
  IF ~~ THEN REPLY #38197 /* ~"Merci de ton aide. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 19 // from: 14.0 14.1
  SAY #38187 /* ~"Trouve la porte qui se cache dans la salle du sud-ouest. Elle donne au bout de la salle grande, près de la sortie vers Allée."~ */
  IF ~~ THEN REPLY #38198 /* ~"Merci de ton aide. Au revoir."~ */ DO ~SetGlobal("Know_Tiresias","GLOBAL",2)
~ JOURNAL #37703 /* ~J'ai rencontré un vieux Xaositecte aveugle sur le Terrain des Sicaires. Il m'a parlé d'une porte secrète qui me permettrait de me rendre dans l'Allée des Longs Soupirs sans tomber sur les Chiens Affamés Aboyant qui se réunissent dans la salle principale du Terrain. La porte est censée se trouver dans une pièce au sud-ouest, à côté de la salle principale.~ */ EXIT
END
