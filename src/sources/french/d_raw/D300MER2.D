// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : D300MER2.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\fr_FR\dialog.tlk
// dialogF  : (none)

BEGIN ~D300MER2~

IF ~  NumTimesTalkedTo(0)
~ THEN BEGIN 0 // from:
  SAY #17378 /* ~Cette vieille commère édentée pue le poisson et la saumure. Guettant ton approche, elle te gratifie d'un large sourire. "Du poisson, mon enfant ? Des têtes de poisson, p'être ben ?"~ */
  IF ~  Global("Mebbeth_Quest","GLOBAL",6)
~ THEN REPLY #22064 /* ~"Mebbeth a dit que tu vendais de l'encre. Elle m'a envoyé en acheter."~ */ GOTO 8
  IF ~~ THEN REPLY #17386 /* ~"Enfant ? Pas vraiment."~ */ GOTO 2
  IF ~~ THEN REPLY #17387 /* ~"Pas de poisson pour moi, mais j'ai des questions…"~ */ GOTO 5
  IF ~~ THEN REPLY #17388 /* ~"Qu'est-ce que tu me proposes exactement ?"~ */ GOTO 6
  IF ~~ THEN REPLY #17389 /* ~"Non merci. Au revoir."~ */ EXIT
END

IF ~  NumTimesTalkedToGT(0)
~ THEN BEGIN 1 // from:
  SAY #17379 /* ~La vieille femme te gratifie d'un sourire visqueux. "Du poisson, mon enfant ? Des têtes de poisson ?" Une écœurante odeur de poisson l'entoure.~ */
  IF ~  Global("Mebbeth_Quest","GLOBAL",6)
~ THEN REPLY #22069 /* ~"Mebbeth a dit que tu vendais de l'encre. Elle m'a envoyé en acheter."~ */ GOTO 8
  IF ~~ THEN REPLY #17390 /* ~"Pas de poisson pour moi, mais j'ai des questions…"~ */ GOTO 5
  IF ~~ THEN REPLY #17391 /* ~"Non merci, au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 0.1
  SAY #17380 /* ~"Oh oui, oui ! Mais pour moi, t'es qu'un gamin ! Hé-hé, ces jeunes…"~ */
  IF ~~ THEN REPLY #17392 /* ~"Je crois que tu te trompes. Regarde bien."~ */ GOTO 3
END

IF ~~ THEN BEGIN 3 // from: 2.0
  SAY #17381 /* ~Elle traîne les pieds vers toi, l'odeur forte de poisson devient presque suffocante. La vieille plisse les yeux en regardant d'abord ton visage, puis en fronçant les sourcils, regarde tes yeux. Elle recule alors avec effroi : "Oh ! Combien d'années *ont vu* ces yeux ?"~ */
  IF ~~ THEN REPLY #17394 /* ~"Je ne sais pas… Combien, d'après toi ?"~ */ GOTO 4
END

IF ~~ THEN BEGIN 4 // from: 3.0
  SAY #17382 /* ~"J'sais pas, j'sais pas. Trop, bien trop. Peu importe !" Elle s'approche pour chuchoter dans ton oreille. "Inutile de rameuter le chaland ; gardons notre petit secret." Elle reprend sa voix normale. "Alors, du poisson, mon enfant ? Eh, eh ." Elle te tapote le ventre.~ */
  IF ~  Global("Mebbeth_Quest","GLOBAL",6)
~ THEN REPLY #22076 /* ~"Mebbeth a dit que tu vendais de l'encre. Elle m'a envoyé en acheter."~ */ GOTO 8
  IF ~~ THEN REPLY #17395 /* ~"Pas de poisson pour moi, mais j'ai des questions…"~ */ GOTO 5
  IF ~~ THEN REPLY #17396 /* ~"Qu'est-ce que tu me proposes exactement ?"~ */ GOTO 6
  IF ~~ THEN REPLY #17397 /* ~"Non merci. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 0.2 1.1 4.1 6.2 7.1
  SAY #17383 /* ~Elle secoue sa petite tête ridée. "Des réponses, point… du poisson seulement."~ */
  IF ~~ THEN REPLY #17401 /* ~"Très bien. Qu'est-ce que tu me proposes exactement ?"~ */ GOTO 6
  IF ~~ THEN REPLY #17402 /* ~"Alors, au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 6 // from: 0.3 4.2 5.0
  SAY #17384 /* ~"Et ben, du poisson, petit idiot ! Du poisson en tout genre - et des têtes de poisson pour ceux qui ne peuvent se payer que ça. Des têtes bien grassouillettes ! Eh-eh !"~ */
  IF ~  Global("Mebbeth_Quest","GLOBAL",6)
~ THEN REPLY #22077 /* ~"Mebbeth a dit que tu vendais de l'encre. Elle m'a envoyé en acheter."~ */ GOTO 8
  IF ~~ THEN REPLY #17403 /* ~"D'où vient le poisson ?"~ */ GOTO 7
  IF ~~ THEN REPLY #17404 /* ~"Je n'ai pas besoin de poisson, mais j'ai quelques questions…"~ */ GOTO 5
  IF ~~ THEN REPLY #17405 /* ~"Je n'ai besoin ni de poisson, ni de têtes de poisson. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 7 // from: 6.1
  SAY #17385 /* ~"Il est expédié à Sigil de tous les Plans, mon gars ! T'en veux ? J'vends que les têtes, si tu peux pas te payer le reste…"~ */
  IF ~  Global("Mebbeth_Quest","GLOBAL",6)
~ THEN REPLY #22078 /* ~"Mebbeth a dit que tu vendais de l'encre. Elle m'a envoyé en acheter."~ */ GOTO 8
  IF ~~ THEN REPLY #17406 /* ~"Je n'ai pas besoin de poisson, mais j'ai quelques questions…"~ */ GOTO 5
  IF ~~ THEN REPLY #17407 /* ~"Je n'ai besoin ni de poisson, ni de têtes de poisson. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 8 // from: 0.0 1.0 4.0 6.0 7.0
  SAY #22065 /* ~"De l'encre ?" Elle ricane. "Nan, m'sieur, j'vends pas d'encre, j'vends que des poissons…"~ */
  IF ~~ THEN REPLY #22070 /* ~"Tu en es sûre ? Mebbeth… la sage-femme du Square du Chiffonnier… a bien mentionné ton nom."~ */ DO ~SetGlobal("Mebbeth_Quest","GLOBAL",7)
~ GOTO 9
END

IF ~~ THEN BEGIN 9 // from: 8.0
  SAY #22066 /* ~"Hé ! Kossah-Jai était l'nom d'ma mère et d'ma grand-mère, alors ça pourrait être n'importe laquelle d'entre nous… mais elles sont toutes les deux inscrites au livre des morts, alors y'a que *cette* Kossah-Jai qui importe. Aucune idée de c'qu'elle fait… une sage-femme dans l'Square du Chiffonnier, tu dis ?" Elle réfléchit pendant un instant. "Non, la connais pas."~ */
  IF ~~ THEN REPLY #22071 /* ~"Alors… tu n'as pas d'encre ? Autant dire que c'est pas vraiment une SURPRISE. Je jurerais que Mebbeth me fait tourner en rond…"~ */ GOTO 10
  IF ~~ THEN REPLY #22072 /* ~"Bon. Elle a dit que tu pouvais m'aider mais si c'est pas le cas, tant pis."~ */ GOTO 10
END

IF ~~ THEN BEGIN 10 // from: 9.0 9.1
  SAY #22067 /* ~"Attends un peu… ton amie sage-femme a pas tout à fait tort. J'sais où tu peux trouver de l'encre… mais c'est p'têt pas l'encre que tu cherches… l'encre dont je parle coule des ouïes d'un *aileron-brogota*, ouais."~ */
  IF ~~ THEN REPLY #22073 /* ~"Cet *aileron-brogota*…  il perd de l'encre ?"~ */ GOTO 11
  IF ~~ THEN REPLY #22074 /* ~"Mais tu n'as pas cet *aileron-brogota*, c'est ça ?"~ */ GOTO 11
END

IF ~~ THEN BEGIN 11 // from: 10.0 10.1
  SAY #22068 /* ~Elle fronce les sourcils. "Ouais… c't'à-dire, ce poisson *s'mange* pas, il a un goût horrible, il brûle la langue… tu peux demander à Meir'am, elle tient un stand de poissons en bas de la rue, vers le sud." Elle glousse. "Elle a peut-être un poisson comme tu en cherches…"~ */
  IF ~~ THEN REPLY #22075 /* ~"Je vais la chercher. Au revoir."~ */ JOURNAL #21903 /* ~Kossah-Jai, l'une des poissonnières du marché, m'a dit qu'à son avis, le seul endroit où je pouvais trouver l'encre de Mebbeth était dans un *aileron-brogota*, mais elle n'en vend pas. Elle m'a conseillé d'essayer Meir'am, poissonnière qui vend ses marchandises dans une rue située juste au sud du marché.~ */ EXIT
END
