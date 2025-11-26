// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DNESTOR.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\fr_FR\dialog.tlk
// dialogF  : (none)

BEGIN ~DNESTOR~
//////////////////////////////////////////////////
// WARNING: this file contains non-trivial WEIGHTs
//////////////////////////////////////////////////

IF WEIGHT #1 /* Triggers after states #: 14 even though they appear after this state */
~  NumTimesTalkedTo(0)
~ THEN BEGIN 0 // from:
  SAY #30119 /* ~Tu vois un homme âgé portant des vêtements souillés, en lambeaux, qui fait les cent pas dans le coin. Sa chevelure blanche et sale tombe sur ses épaules en mèches emmêlées et sa barbe ébouriffée incrustée de saletés et de filets de sang séché lui descend en dessous de la taille. À intervalles réguliers, il s'arrête de marcher et se met à battre l'air, marmonnant et jurant, comme s'il était attaqué par quelque ennemi invisible. Il ne semble pas remarquer ton approche.~ */
  IF ~~ THEN REPLY #30133 /* ~"Bonjour."~ */ GOTO 2
  IF ~~ THEN REPLY #30134 /* ~Laisse-le tranquille.~ */ EXIT
END

IF WEIGHT #2 /* Triggers after states #: 14 even though they appear after this state */
~  NumTimesTalkedToGT(0)
~ THEN BEGIN 1 // from:
  SAY #30120 /* ~Le vieil homme s'arrête et te regarde, nerveux. "Fourchette ? Fourchette ? Fourchette ? J'peux pas rentrer chez moi sans ma fourchette."~ */
  IF ~  Global("Arlo_Quest","GLOBAL",1)
~ THEN REPLY #30135 /* ~"Écoute… Arlo m'a demandé de me débarrasser de toi, alors tu vas devoir partir."~ */ GOTO 5
  IF ~  Global("Nestor_Quest","GLOBAL",0)
~ THEN REPLY #30136 /* ~"Ta… fourchette ?"~ */ GOTO 6
  IF ~  PartyHasItem("NesFork")
~ THEN REPLY #30137 /* ~"C'est la fourchette dont tu parlais ?" Donne la fourchette en acier à Nestor.~ */ DO ~TakePartyItemNum("NesFork",1)
~ GOTO 12
  IF ~~ THEN REPLY #30138 /* ~"Peu importe. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 0.0
  SAY #30121 /* ~Au son de ta voix, le vieux cinglé se retourne pour te fixer de ses yeux exorbités. Il te regarde un bref instant, puis recommence à fulminer. "Non ! Non ! Nooooooooon ! Ce n'est pas toi… hoo hoo ! Mais bientôt… oui, bientôt."~ */
  IF ~  Global("Arlo_Quest","GLOBAL",1)
~ THEN REPLY #30139 /* ~"C'est toi qu'on appelle Nestor ?"~ */ GOTO 3
  IF ~~ THEN REPLY #30140 /* ~"Euh… à qui tu parles ?"~ */ GOTO 3
  IF ~~ THEN REPLY #30141 /* ~Laisse-le.~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 2.0 2.1
  SAY #30122 /* ~Le vieil homme semble avoir oublié ta présence. "Hoo hoo hoo ! Tu viendras. Oui… Tu viendras. Et l'vieux Nestor sera là !"~ */
  IF ~~ THEN REPLY #30142 /* ~"Est-ce que ça va ?"~ */ GOTO 5
  IF ~~ THEN REPLY #30143 /* ~"Tu attends ? Tu attends qui ?"~ */ GOTO 4
  IF ~  Global("Arlo_Quest","GLOBAL",1)
~ THEN REPLY #30144 /* ~"Écoute… Arlo m'a demandé de me débarrasser de toi, alors tu vas devoir partir."~ */ GOTO 5
  IF ~~ THEN REPLY #30145 /* ~"Peu importe. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 3.1
  SAY #30123 /* ~"T'attendra, oui…" Il s'affale subitement sur le sol, comme submergé par l'épuisement. "Longtemps j'ai attendu… attendu." Il prend une profonde respiration et saute à nouveau sur ses pieds. "J'attendrai pour toujours s'il le faut ! Tu m'entends ?"~ */
  IF ~  Global("Arlo_Quest","GLOBAL",1)
~ THEN REPLY #30146 /* ~"Écoute… Arlo m'a demandé de me débarrasser de toi, alors tu vas devoir partir."~ */ GOTO 5
  IF ~~ THEN REPLY #30147 /* ~"Est-ce que ça va ?"~ */ GOTO 5
  IF ~~ THEN REPLY #30148 /* ~"Euh… comme tu voudras, alors. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 1.0 3.0 3.2 4.0 4.1
  SAY #30124 /* ~"Nooooooon !" Le visage de Nestor devient rouge pivoine et tout son corps tremble en signe de protestation. "Ma fourchette ! Peux pas partir sans ma fourchette ! Hoo hoo ! Fourchette, fourchette, fourchette !"~ */
  IF ~  Global("Nestor_Quest","GLOBAL",0)
~ THEN REPLY #30149 /* ~"Ta… fourchette ?"~ */ GOTO 6
  IF ~  Global("Arlo_Quest","GLOBAL",1)
~ THEN REPLY #30150 /* ~"Assez de tes radotages, vieil homme. Tu dois partir… d'une façon ou d'une autre."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Nestor_1","GLOBALGood",-1)
~ GOTO 9
  IF ~~ THEN REPLY #30151 /* ~"Je vois que ça ne me mène nulle part. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 6 // from: 1.1 5.0 11.0
  SAY #30125 /* ~"Fourchette ? Fourchette ! Fourchette ! J'peux pas rentrer chez moi sans ma fourchette !" La frénésie de Nestor atteint son apogée. Il commence à sautiller comme un fou, puis s'arrête brusquement, baisse la tête et court tout droit vers un large placard en bois appuyé contre le mur. La force de l'impact assomme le vieil homme, qui tombe à plat sur le dos. Après quelques secondes, il se remet debout, l'air complètement ahuri. "Disparue. Volée. J'peux pas rentrer chez moi sans ma fourchette."~ */
  IF ~~ THEN REPLY #30152 /* ~"Volée, tu dis ? Qui a volé ta fourchette ?"~ */ GOTO 7
  IF ~~ THEN REPLY #30153 /* ~"Je vois que ça ne me mène nulle part. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 7 // from: 6.0
  SAY #30126 /* ~Nestor te fixe pendant un bon moment, puis commence à fouiller dans les poches de sa robe. Après quelques secondes, il en sort ce qui semble être une oreille coupée. À en juger par l'odeur et la couleur de l'oreille, tu peux parier que le vieux cinglé l'a dans sa poche depuis quelque temps. "Tu as ma fourchette, hein ? Hein ! Hoo hoo !" Il garde l'oreille près de lui, comme pour lui parler. "Rapporte-moi ma fourchette !"~ */
  IF ~  Global("Arlo_Quest","GLOBAL",1)
Global("Nestor_Quest","GLOBAL",0)
~ THEN REPLY #30154 /* ~"Si je te trouve une fourchette, tu partiras ?"~ */ GOTO 8
  IF ~  Global("Nestor_Quest","GLOBAL",0)
~ THEN REPLY #30155 /* ~"Je peux peut-être t'aider."~ */ DO ~IncrementGlobalOnceEx("GLOBALGood_Nestor_1","GLOBALGood",1)
~ GOTO 8
  IF ~~ THEN REPLY #30156 /* ~"Euh… peu importe. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 8 // from: 7.0 7.1
  SAY #30127 /* ~"Attends ! Attends ! Attends ! Hoo hoo !" Il secoue violemment l'oreille, tout en lui criant : "Jusqu'à ce que tu la rapportes ! Après je pourrai rentrer chez moi !"~ */
  IF ~  PartyHasItem("NesFork")
~ THEN REPLY #30157 /* ~"C'est la fourchette dont tu parlais ?"~ */ DO ~TakePartyItemNum("NesFork",1)
~ GOTO 12
  IF ~~ THEN REPLY #30158 /* ~"Bien. Je vais essayer de trouver ta fourchette, alors. Au revoir."~ */ DO ~SetGlobal("Nestor_Quest","GLOBAL",1)
~ JOURNAL #29868 /* ~J'ai accepté d'aider le fou du refuge, Nestor, à retrouver sa fourchette. Le pauvre bougre avait l'air assez dérangé et portait une oreille arrachée dans sa poche ; il lui parlait comme si elle avait pu l'entendre. Je me suis dit que malgré tout, ça ne pouvait pas faire de mal de rechercher sa fourchette.~ */ EXIT
  IF ~~ THEN REPLY #30159 /* ~"Peu importe. J'ai mieux à faire que de chercher des couverts pour un fou. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 9 // from: 5.1
  SAY #30128 /* ~"Nooooon ! Peux pas rentrer chez moi sans ma fourchette !" Il recule en grognant et en montrant les dents comme un animal acculé.~ */
  IF ~~ THEN REPLY #30160 /* ~Empoigne-le.~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Nestor_2","GLOBALGood",-1)
~ GOTO 10
  IF ~~ THEN REPLY #30161 /* ~"Écoute, je ne veux pas te faire de mal… mais tu *dois* partir."~ */ GOTO 11
  IF ~~ THEN REPLY #30162 /* ~"Fais comme bon te semble, alors. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 10 // from: 9.0
  SAY #30129 /* ~Tu tends le bras, mais le vieil homme est étonnamment vif pour son âge. Avant que tu puisses assurer ta prise, il t'échappe et plante ses dents dans ta main tendue. Tu t'écartes dans un sursaut de douleur.~ */
  IF ~~ THEN REPLY #30163 /* ~"Très bien. On va employer la force alors…"~ */ DO ~Enemy()
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
~ EXIT
  IF ~~ THEN REPLY #30164 /* ~"Écoute, je ne veux pas te faire de mal… mais tu *dois* partir."~ */ GOTO 11
  IF ~~ THEN REPLY #30165 /* ~"Fais comme bon te semble, alors. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 11 // from: 9.1 10.1
  SAY #30130 /* ~Nestor se calme un peu ; les yeux exorbités, il semble au bord des larmes. "Peux pas rentrer chez moi. Peux pas. Peux pas. Peux pas. Pas sans fourchette."~ */
  IF ~  Global("Nestor_Quest","GLOBAL",0)
~ THEN REPLY #30166 /* ~"Ta… fourchette ?"~ */ GOTO 6
  IF ~~ THEN REPLY #30167 /* ~"Je vois que ça ne me mène nulle part. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 12 // from: 1.2 8.0
  SAY #30131 /* ~Nestor saisit rapidement la fourchette. "Ma fourchette ? Ma fourchette ! Fourchette ! Fourchette ! Fourchette ! Hoo hoo !" Il sautille d'excitation, et agite la fourchette en tous sens au-dessus de sa tête, comme s'il exécutait un rituel. "Maintenant je peux rentrer chez moi ! Adieu ! Hoo hoo !"~ */
  IF ~~ THEN REPLY #30168 /* ~"Au revoir, Nestor."~ */ GOTO 13
END

IF ~~ THEN BEGIN 13 // from: 12.0
  SAY #30132 /* ~Nestor se retourne alors pour partir, puis, après coup, fait demi-tour et te tend un lambeau mou et caoutchouteux : l'oreille coupée. Après un examen plus attentif, tu remarques qu'une boucle d'oreille y reste attachée.~ */
  IF ~~ THEN REPLY #30169 /* ~Empoche la boucle d'oreille et débarrasse-toi du morceau de chair pourri.~ */ DO ~GiveItemCreate("ObEar",Protagonist,1,0,0)
SetGlobal("Nestor_Quest","GLOBAL",2)
AddexperienceParty(500)
~ JOURNAL #28825 /* ~J'ai rapporté la fourchette de Nestor. C'était en fait une clé de portail. Une fois la clé récupérée, Nestor a pu retourner sur son plan natal. Je me demande depuis combien de temps le pauvre bougre était coincé à Sigil sans aucun moyen de rentrer chez lui.~ */ EXIT
END

IF WEIGHT #0 ~  NumTimesTalkedToGT(0)
Global("Nestor_Quest","GLOBAL",2)
~ THEN BEGIN 14 // from:
  SAY #61633 /* ~Nestor t'ignore complètement, le regard fixé sur le placard à l'arrière de la pièce.~ */
  IF ~~ THEN REPLY #61634 /* ~Pars.~ */ EXIT
END
