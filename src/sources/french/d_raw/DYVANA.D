// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DYVANA.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\fr_FR\dialog.tlk
// dialogF  : (none)

BEGIN ~DYVANA~

IF ~  Global("Yvana","GLOBAL",0)
~ THEN BEGIN 0 // from:
  SAY #3003 /* ~Devant toi se tient une vieille femme élégante vêtue d'un habit couleur pêche cousu de fil d'or. Silencieuse, les mains sagement jointes, elle fait un signe de tête dans ta direction. C'est alors que tu remarques qu'elle n'a pas de pupilles ; ses yeux sont entièrement blancs. "Bonjour, monsieur. Je suis Yvana ; bienvenue dans ma galerie. N'hésite pas à chiner, tu peux passer autant de temps que tu veux ici ; si tu as des questions sur l'une des pièces, n'hésite pas à me les poser."~ */
  IF ~~ THEN REPLY #3004 /* ~"J'ai quelques questions, Yvana…"~ */ DO ~SetGlobal("Yvana","GLOBAL",1)
~ GOTO 8
  IF ~~ THEN REPLY #42094 /* ~"Alors, je vais peut-être jeter un coup d'œil. Au revoir."~ */ DO ~SetGlobal("Yvana","GLOBAL",1)
~ GOTO 9
END

IF ~~ THEN BEGIN 1 // from: 2.0 3.1 4.1 5.1 6.1 7.0 10.0 12.0 13.0 15.0 16.0 17.1 18.1 19.1 20.0 21.8 22.10 23.2 24.1 25.2 26.1 27.2 28.1 29.1 31.1 33.1 34.1 35.1 36.1 37.1 38.1 39.1 40.1 41.2 42.1 43.1 44.0 45.1 46.0 47.0 48.1
  SAY #42095 /* ~"Bien sûr. Je t'écoute."~ */
  IF ~  PartyHasItem("P_Jrnl")
Global("P_Journal","GLOBAL",3)
~ THEN REPLY #65156 /* ~"As-tu déjà rencontré quelque chose de semblable aux inscriptions de ce dodécaèdre ?"~ */ GOTO 47
  IF ~~ THEN REPLY #42096 /* ~"J'ai une question sur une pièce…"~ */ GOTO 21
  IF ~  !NearbyDialog("DGrace")
GlobalLT("Yvana","GLOBAL",2)
~ THEN REPLY #42097 /* ~"Tu vois, Yvana ?"~ */ GOTO 13
  IF ~  NearbyDialog("DGrace")
GlobalLT("Yvana","GLOBAL",2)
~ THEN REPLY #42098 /* ~"Tu vois, Yvana ?"~ */ EXTERN ~DGRACE~ 141
  IF ~  PartyHasItem("Cube")
Global("Know_Cube","GLOBAL",0)
~ THEN REPLY #42099 /* ~"Est-ce que tu sais ce qu'est ce petit jouet en forme de cube ?"~ */ DO ~SetGlobal("Know_Cube_Puzzle","GLOBAL",1)
~ GOTO 45
  IF ~  GlobalGT("Yves","GLOBAL",1)
GlobalLT("Yvana","GLOBAL",2)
~ THEN REPLY #42100 /* ~"J'ai l'impression que tu ne m'es pas inconnue… Est-ce que tu connais une certaine Yvonne ?"~ */ GOTO 3
  IF ~  Global("Yvana","GLOBAL",3)
~ THEN REPLY #42101 /* ~"Tu as parlé à ta fille dernièrement, Yvana ?"~ */ GOTO 15
  IF ~~ THEN REPLY #42102 /* ~"Qu'est-ce que c'est que cet endroit ?"~ */ GOTO 16
  IF ~~ THEN REPLY #42103 /* ~"Qu'est-ce qu'il y a d'intéressant par ici ?"~ */ GOTO 2
  IF ~~ THEN REPLY #42104 /* ~"Où est-ce que je pourrais trouver du travail par ici ?"~ */ GOTO 2
  IF ~  Global("CW_Location","GLOBAL",1)
~ THEN REPLY #42105 /* ~"Je voulais t'interroger sur un endroit précis…"~ */ GOTO 2
  IF ~  Global("CW_Location","GLOBAL",1)
~ THEN REPLY #42106 /* ~"Je veux juste des indications…"~ */ GOTO 2
  IF ~  Global("Know_Ravel","GLOBAL",1)
~ THEN REPLY #42107 /* ~"Que sais-tu de Ravel Puits-de-Rébus ?"~ */ GOTO 17
  IF ~~ THEN REPLY #42108 /* ~"En fait, peu importe. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.8 1.9 1.10 1.11
  SAY #42109 /* ~"Désolée, je ne m'éloigne jamais bien loin de cette galerie. Je ne peux pas te répondre. Il vaudrait mieux que tu demandes ça à quelqu'un d'autre."~ */
  IF ~~ THEN REPLY #42110 /* ~"J'avais une autre question…"~ */ GOTO 1
  IF ~~ THEN REPLY #42111 /* ~"Alors, au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 1.5
  SAY #42112 /* ~"C'est ma fille." L'espace d'un instant, une lueur de tristesse traverse ses yeux d'une blancheur laiteuse. "On ne se parle plus."~ */
  IF ~~ THEN REPLY #42113 /* ~"Pourquoi ça ?"~ */ GOTO 4
  IF ~~ THEN REPLY #42114 /* ~"J'ai une autre question…"~ */ GOTO 1
  IF ~~ THEN REPLY #42115 /* ~"C'est tout ce que je voulais savoir. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 3.0
  SAY #42116 /* ~"Nous n'avons rien à nous dire. Elle est partie en quête d'histoires… pour des raisons qui me sont inconnues."~ */
  IF ~  Global("Yves","GLOBAL",2)
~ THEN REPLY #42117 /* ~"Elle m'a raconté une histoire qui pourrait peut-être répondre à cette question…"~ */ GOTO 5
  IF ~~ THEN REPLY #42118 /* ~"J'ai une autre question…"~ */ GOTO 1
  IF ~~ THEN REPLY #42119 /* ~"C'est tout ce que je voulais savoir. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 4.0
  SAY #42120 /* ~Yvana hausse les sourcils. "Oh ? Tu peux me la raconter, s'il te plaît ? Je t'en serais très reconnaissante…"~ */
  IF ~~ THEN REPLY #42121 /* ~Parle-lui de la Collectionneuse d'histoires et de sa quête interminable de l'histoire qui contient la vérité qu'elle cherche.~ */ DO ~SetGlobal("Yvana","GLOBAL",2)
~ GOTO 6
  IF ~~ THEN REPLY #42122 /* ~"Une autre fois, peut-être. J'ai une autre question…"~ */ GOTO 1
  IF ~~ THEN REPLY #42123 /* ~"Une autre fois. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 6 // from: 5.0
  SAY #42124 /* ~Yvana dodeline lentement de la tête. "Je… n'en savais rien. Je vais aller la voir, tout de suite. Je te remercie, mon bon monsieur, de m'avoir donné des nouvelles de mon unique fille." Pendant qu'elle parle, ses pâles iris se colorent lentement jusqu'à afficher un vert éclatant.~ */
  IF ~~ THEN REPLY #42125 /* ~"Tes yeux… Tu vois maintenant, Yvana ?"~ */ GOTO 7
  IF ~~ THEN REPLY #42126 /* ~"J'avais une autre question…"~ */ GOTO 1
  IF ~~ THEN REPLY #42127 /* ~"C'est tout ce que je voulais savoir. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 7 // from: 6.0
  SAY #42128 /* ~Elle acquiesce en souriant.~ */
  IF ~~ THEN REPLY #42129 /* ~"J'ai une autre question…"~ */ GOTO 1
  IF ~~ THEN REPLY #42130 /* ~"C'est tout ce que je voulais savoir. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 8 // from: 0.0 9.0
  SAY #42131 /* ~"Attends… Ta voix ; elle révèle ton âge et tes blessures. Aurais-tu la gentillesse de me permettre de toucher ton visage ?"~ */
  IF ~~ THEN REPLY #42132 /* ~"Oui, vas-y."~ */ GOTO 11
  IF ~~ THEN REPLY #42133 /* ~"Non. Je ne préfère pas."~ */ GOTO 10
END

IF ~~ THEN BEGIN 9 // from: 0.1
  SAY #42134 /* ~"Attends…"~ */
  IF ~~ THEN GOTO 8
END

IF ~~ THEN BEGIN 10 // from: 8.1
  SAY #42135 /* ~Yvana incline la tête. "Très bien ; je ne te le redemanderai pas."~ */
  IF ~~ THEN REPLY #42136 /* ~"J'avais des questions…"~ */ GOTO 1
  IF ~~ THEN REPLY #42137 /* ~"Je m'en vais, maintenant. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 11 // from: 8.0
  SAY #42138 /* ~Yvana sourit en promenant doucement ses vieilles mains sur ton visage. Elle fronce les sourcils, apparemment un peu gênée. "Tu as tant de cicatrices… à la fois anciennes et nouvelles. Elles ont l'air de…" Elle passe la main sur ta gorge, rougit, puis la retire. "Pardonne-moi. Je voulais juste savoir jusqu'où elles allaient."~ */
  IF ~~ THEN REPLY #42139 /* ~"C'est rien. J'en ai partout, sur tout le corps."~ */ GOTO 12
  IF ~~ THEN REPLY #42140 /* ~"Ne recommence pas ça, vieille femme."~ */ GOTO 12
END

IF ~~ THEN BEGIN 12 // from: 11.0 11.1
  SAY #42141 /* ~Yvana incline la tête.~ */
  IF ~~ THEN REPLY #42142 /* ~"J'avais des questions…"~ */ GOTO 1
  IF ~~ THEN REPLY #42143 /* ~"Je m'en vais, maintenant. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 13 // from: 1.2 14.0
  SAY #42144 /* ~"Je ne vois pas, mais seulement parce que je le veux. En temps voulu, je laisserai ma vision revenir de manière à redécouvrir le contenu de ma galerie avec un regard neuf."~ */
  IF ~~ THEN REPLY #42145 /* ~"J'avais une autre question…"~ */ GOTO 1
  IF ~~ THEN REPLY #42146 /* ~"C'est tout ce que je voulais savoir. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 14 // from:
  SAY #42147 /* ~Yvana acquiesce en souriant. "Ton amie a raison…"~ */
  IF ~~ THEN GOTO 13
END

IF ~~ THEN BEGIN 15 // from: 1.6
  SAY #42148 /* ~"Nous sommes de nouveau en bons termes, oui… grâce à toi. Je suis très heureuse d'avoir retrouvé ma fille." Yvana te sourit.~ */
  IF ~~ THEN REPLY #42149 /* ~"J'ai une autre question…"~ */ GOTO 1
  IF ~~ THEN REPLY #42150 /* ~"C'est tout ce que je voulais savoir. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 16 // from: 1.7
  SAY #42151 /* ~"Eh bien, c'est ma galerie des plans." Elle sourit en faisant des gestes autour d'elle. "Ces pièces viennent de loin. J'en vends certaines et j'en garde d'autres - mais je les expose toujours un jour ou l'autre. Je te laisse regarder… et comme je te l'ai déjà dit, si tu as des questions sur certaines pièces, n'hésite pas à venir me voir."~ */
  IF ~~ THEN REPLY #42152 /* ~"J'avais une autre question…"~ */ GOTO 1
  IF ~~ THEN REPLY #42153 /* ~"C'est tout ce que je voulais savoir. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 17 // from: 1.12 41.0
  SAY #42154 /* ~"C'est une guenaude noire, l'une des plus vieilles Sœurs grises des Gastes. Elle est arrivée à Sigil il y a des siècles pour faire des expériences magiques. On dit que ces expériences allaient à l'encontre des volontés de la Dame, que Ravel fut bannie de Sigil, puis emprisonnée dans l'un des dédales de la Dame, sur le Plan Éthéré, où son corps repose depuis…"~ */
  IF ~~ THEN REPLY #42155 /* ~"Continue…"~ */ GOTO 18
  IF ~~ THEN REPLY #42156 /* ~"Attends… J'ai une autre question…"~ */ GOTO 1
  IF ~~ THEN REPLY #42157 /* ~"J'écouterai la suite une autre fois. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 18 // from: 17.0
  SAY #42158 /* ~"Selon la légende, Ravel était experte en devinettes et énigmes, mais on dit qu'une devinette - une question particulière - tourmentait l'ancienne guenaude noire : 'Qu'est-ce qui peut changer la nature d'un homme ?'"~ */
  IF ~~ THEN REPLY #42159 /* ~"Continue…"~ */ GOTO 19
  IF ~~ THEN REPLY #42160 /* ~"Attends… J'ai une autre question…"~ */ GOTO 1
  IF ~~ THEN REPLY #42161 /* ~"J'écouterai la suite une autre fois. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 19 // from: 18.0
  SAY #42162 /* ~"Elle lança un défi en promettant à quiconque oserait venir la voir de lui enseigner son savoir… à condition de répondre à la question qui la tourmentait. À défaut de pouvoir y répondre, ils consentaient à lui servir de repas. Beaucoup périrent après avoir convoité les enseignements de Ravel, et on dit que jusqu'à ses dernières heures passées à Sigil, Ravel ne connut jamais la réponse à sa question."~ */
  IF ~~ THEN REPLY #42163 /* ~"Continue…"~ */ GOTO 20
  IF ~~ THEN REPLY #42164 /* ~"Attends… J'ai une autre question…"~ */ GOTO 1
  IF ~~ THEN REPLY #42165 /* ~"J'écouterai la suite une autre fois. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 20 // from: 19.0
  SAY #42166 /* ~"On dit que le crime de Ravel est d'avoir essayé de briser la Cage, d'avoir tenté d'ouvrir Sigil pour une raison inconnue." Yvana soupire. "C'est tout ce que je sais sur elle."~ */
  IF ~~ THEN REPLY #42167 /* ~"J'ai une autre question…"~ */ GOTO 1
  IF ~~ THEN REPLY #42168 /* ~"C'est tout ce que je voulais savoir. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 21 // from: 1.1 23.1 24.0 25.1 26.0 27.1 28.0 29.0 31.0 33.0 44.1 48.0
  SAY #42169 /* ~"Oh ? Laquelle ? Un tableau ?"~ */
  IF ~  Global("View_Art_01","AR0608",1)
~ THEN REPLY #42170 /* ~"Sur le vitrail de l'Arcadie."~ */ GOTO 23
  IF ~  Global("View_Art_02","AR0608",1)
~ THEN REPLY #42171 /* ~"Sur la corne de combat de l'Achéron."~ */ GOTO 25
  IF ~  Global("View_Art_DBirds","AR0608",1)
~ THEN REPLY #42172 /* ~"Sur les Oiseaux noirs d'Ocanthus."~ */ DO ~SetGlobal("Know_Styx_Ice","GLOBAL",1)
~ JOURNAL #67816 /* ~Yvana, la conservatrice de la galerie d'art du Quartier des Gratte-Papier, m'a dit que les Oiseaux Noirs d'Ocanthus qu'elle expose actuellement sont en fait des éclats gelés du Styx. Quiconque serait assez fou pour en manger un serait sans doute affecté comme s'il buvait un peu d'eau du fleuve de l'oubli. Ce serait un sacré pas en arrière pour moi, même si certains pourraient trouver l'expérience intéressante.~ */ GOTO 27
  IF ~  Global("View_Art_03","AR0608",1)
~ THEN REPLY #42173 /* ~"Sur la statuette en rubis."~ */ GOTO 29
  IF ~  Global("View_Art_04","AR0608",1)
~ THEN REPLY #42174 /* ~"Sur la chaîne animée du kyton."~ */ GOTO 30
  IF ~  Global("View_Art_Tomb","AR0608",1)
Global("CW_Statue_Cursed","GLOBAL",0)
~ THEN REPLY #42175 /* ~"Sur la statue de l'homme qui hurle."~ */ GOTO 32
  IF ~  Global("View_Art_Tomb","AR0608",1)
Global("CW_Statue_Cursed","GLOBAL",1)
~ THEN REPLY #66658 /* ~"La… euh, "statue" de l'homme hurlant."~ */ GOTO 48
  IF ~~ THEN REPLY #42176 /* ~"Oui, sur un tableau…"~ */ GOTO 22
  IF ~~ THEN REPLY #42177 /* ~"En fait, je voudrais te demander autre chose…"~ */ GOTO 1
  IF ~~ THEN REPLY #42178 /* ~"En fait, peu importe. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 22 // from: 21.7 34.0 35.0 36.0 37.0 38.0 39.0 40.0 41.1 42.0 43.0
  SAY #42179 /* ~"Lequel, monsieur ?"~ */
  IF ~  Global("View_Art_07","AR0608",1)
~ THEN REPLY #42180 /* ~"'Côte de Karasuthra'."~ */ GOTO 34
  IF ~  Global("View_Art_08","AR0608",1)
~ THEN REPLY #42181 /* ~"'Pillards de l'Outreterre'."~ */ GOTO 35
  IF ~  Global("View_Art_09","AR0608",1)
~ THEN REPLY #42182 /* ~"'Hazazoth consommant N'gar'."~ */ GOTO 36
  IF ~  Global("View_Art_10","AR0608",1)
~ THEN REPLY #42183 /* ~"'La surface de la Thalassie.'"~ */ GOTO 37
  IF ~  Global("View_Art_11","AR0608",1)
~ THEN REPLY #42184 /* ~"'La Bibliothèque'."~ */ GOTO 38
  IF ~  Global("View_Art_12","AR0608",1)
~ THEN REPLY #42185 /* ~"'La Folie d'Udo'."~ */ GOTO 39
  IF ~  Global("View_Art_13","AR0608",1)
~ THEN REPLY #42186 /* ~"'Vallée au pied du Clanggedin'."~ */ GOTO 40
  IF ~  Global("View_Art_14","AR0608",1)
~ THEN REPLY #42187 /* ~"'Guenaude grise d'Oïnos'."~ */ GOTO 41
  IF ~  Global("View_Art_06","AR0608",1)
~ THEN REPLY #42188 /* ~"'Mouvement de vague, étude n°7'."~ */ GOTO 42
  IF ~  Global("View_Art_05","AR0608",1)
~ THEN REPLY #42189 /* ~"'Coup d'œil du moment des Murs de Moch'chma'."~ */ GOTO 43
  IF ~~ THEN REPLY #42190 /* ~"En fait, je voudrais te demander autre chose…"~ */ GOTO 1
  IF ~~ THEN REPLY #42191 /* ~"En fait, peu importe. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 23 // from: 21.0
  SAY #42192 /* ~"Ce vitrail a été retrouvé il y a trente-deux ans alors qu'il planait sur la troisième strate de l'Arcadie, présageant d'un certain événement. Quand cet événement se produisit, les images s'effacèrent pour laisser place à ce que tu vois. On dit que la lumière et l'obscurité de l'Orbe de la nuit et du jour de l'Arcadie ont toutes deux été capturées, pour être ensuite lentement libérées, créant une aurore et un crépuscule brefs et lents - mais seulement sur le vitrail lui-même."~ */
  IF ~~ THEN REPLY #42193 /* ~"L'Orbe de la nuit et du jour ? L'Arcadie ?"~ */ GOTO 24
  IF ~~ THEN REPLY #42194 /* ~"Je voudrais t'interroger sur une autre pièce…"~ */ GOTO 21
  IF ~~ THEN REPLY #42195 /* ~"J'avais une autre question…"~ */ GOTO 1
  IF ~~ THEN REPLY #42196 /* ~"C'est tout ce que je voulais savoir. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 24 // from: 23.0
  SAY #42197 /* ~"L'Arcadie est un plan à l'ordre paisible, également connu sous le nom de Terre du Bien Parfait. L'Orbe de la nuit et du jour est une sphère située au sommet de la montagne la plus élevée de l'Arcadie ; chaque moitié émet soit de la lumière, soit de l'obscurité. Le jour et la nuit de l'Arcadie sont issus de la rotation de l'Orbe."~ */
  IF ~~ THEN REPLY #42198 /* ~"Je voudrais t'interroger sur une autre pièce…"~ */ GOTO 21
  IF ~~ THEN REPLY #42199 /* ~"J'ai une autre question…"~ */ GOTO 1
  IF ~~ THEN REPLY #42200 /* ~"C'est tout ce que je voulais savoir. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 25 // from: 21.1
  SAY #42201 /* ~"Ah, la Corne de purification… une corne en plomb martelé, dont le métal vient tout droit du cube de l'Achéron. On dit que la Corne de purification retentit pour la dernière fois quand les Compagnies des clans du Chacal et de l'Œil crevé se retrouvèrent pour la bataille des Terres disputées. Selon la légende, à la fin de la bataille, le pouvoir de cette corne permit d'attirer les cubes flottants les uns vers les autres, écrasant la Compagnie du Chacal en déroute sans lui laisser le temps de s'enfuir."~ */
  IF ~~ THEN REPLY #42202 /* ~"Des cubes ? L'Achéron ?"~ */ GOTO 26
  IF ~~ THEN REPLY #42203 /* ~"Je voudrais t'interroger sur une autre pièce…"~ */ GOTO 21
  IF ~~ THEN REPLY #42204 /* ~"J'avais une autre question…"~ */ GOTO 1
  IF ~~ THEN REPLY #42205 /* ~"C'est tout ce que je voulais savoir. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 26 // from: 25.0
  SAY #42206 /* ~"L'Achéron est un plan où l'on fait régner l'ordre de manière drastique et où le conformisme l'emporte sur le bien. Ce plan est composé de gigantesques cubes métalliques qui flottent dans un vide sans fin… Certains cubes sont si grands que des villes ou des royaumes entiers y ont été construits."~ */
  IF ~~ THEN REPLY #42207 /* ~"Je voudrais t'interroger sur une autre pièce…"~ */ GOTO 21
  IF ~~ THEN REPLY #42208 /* ~"J'ai une autre question…"~ */ GOTO 1
  IF ~~ THEN REPLY #42209 /* ~"C'est tout ce que je voulais savoir. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 27 // from: 21.2
  SAY #42210 /* ~"Tous sont issus de l'immense couche noire et infinie de glace magique qui recouvre la surface obscure d'Ocanthus." Yvana marque une pause, se tapote le menton. "On dit que cette couche de glace est la destination finale du Styx et que la mémoire de tout ce qui a plongé dans les eaux destructrices de souvenirs du Styx reste emprisonnée dans la glace."~ */
  IF ~~ THEN REPLY #42211 /* ~"Si les eaux du Styx détruisent les souvenirs, est-ce que la glace d'Ocanthus en fait autant ?"~ */ GOTO 28
  IF ~~ THEN REPLY #42212 /* ~"Je voudrais t'interroger sur une autre pièce…"~ */ GOTO 21
  IF ~~ THEN REPLY #42213 /* ~"J'avais une autre question…"~ */ GOTO 1
  IF ~~ THEN REPLY #42214 /* ~"C'est tout ce que je voulais savoir. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 28 // from: 27.0
  SAY #42215 /* ~"Je suppose que oui."~ */
  IF ~~ THEN REPLY #42216 /* ~"Je voudrais t'interroger sur une autre pièce…"~ */ GOTO 21
  IF ~~ THEN REPLY #42217 /* ~"J'ai une autre question…"~ */ GOTO 1
  IF ~~ THEN REPLY #42218 /* ~"C'est tout ce que je voulais savoir. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 29 // from: 21.3
  SAY #42219 /* ~"Cette pièce fut découverte dans une cathédrale, sur les champs fertiles des Élysées, sur la première strate, l'Amorie tranquille, au bord du Fleuve Océan. Le nom de cette pièce est inconnu, mais on dit que sa composition en ferait l'un des plus beaux exemples de joaillerie des plans. La façon dont la pièce capture, répand et met en valeur la lumière à travers ses différentes facettes en fait une incroyable merveille. Elle semble établir un possible lien idéologique entre le mal le plus terrible et les êtres les plus purs du multivers… C'est fascinant."~ */
  IF ~~ THEN REPLY #42220 /* ~"Je voudrais t'interroger sur une autre pièce…"~ */ GOTO 21
  IF ~~ THEN REPLY #42221 /* ~"J'avais une autre question…"~ */ GOTO 1
  IF ~~ THEN REPLY #42222 /* ~"C'est tout ce que je voulais savoir. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 30 // from: 21.4
  SAY #42223 /* ~"La chaîne vient de la ville de Tintacogne, la cité des chaînes accrochée à Minauros, la troisième strate du Plan de Baator. Les chaînes y sont les plus fines du multivers, mais les habitants de Tintacogne sont malveillants et cruels, usant des chaînes comme d'armes vivantes contre tous ceux qui pénètrent dans leur cité et y violent leurs lois."~ */
  IF ~~ THEN GOTO 31
END

IF ~~ THEN BEGIN 31 // from: 30.0
  SAY #42224 /* ~"Les kytons se déplacent dans la cité des chaînes comme des araignées sur leurs toiles, parés de chaînes qui entourent étroitement leurs corps. Les kytons sont dotés d'un pouvoir appelé le 'don des chaînes' qui leur permet de manipuler les chaînes avec leurs esprits. On dit que la chaîne de ma galerie fut animée pendant une bataille au cours de laquelle le kyton qui la contrôlait fut tué par un marteau maudit… transmettant alors son essence de vie à la chaîne elle-même."~ */
  IF ~~ THEN REPLY #42225 /* ~"Je voudrais t'interroger sur une autre pièce…"~ */ GOTO 21
  IF ~~ THEN REPLY #42227 /* ~"J'ai une autre question…"~ */ GOTO 1
  IF ~~ THEN REPLY #42228 /* ~"C'est tout ce que je voulais savoir. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 32 // from: 21.5
  SAY #42229 /* ~"On dit que cette statue n'est pas représentative du sort final du sorcier éthersérien Gangroighydon. Attaqué par un conclave de sorciers rivaux à l'apogée de sa folie, il fut victime d'un sort qui changea sa chair en pierre. On dit que Gangroighydron fut pétrifié alors qu'il était en train de prononcer une terrible malédiction, si terrible qu'elle était censée ne *jamais* être prononcée par la bouche d'un homme vivant."~ */
  IF ~~ THEN GOTO 33
END

IF ~~ THEN BEGIN 33 // from: 32.0
  SAY #42230 /* ~"On dit que la malédiction était si violente qu'elle suffisait à décoller la peau des os de ceux qui l'entendait et qu'elle pouvait même briser la pierre."~ */
  IF ~~ THEN REPLY #42231 /* ~"Je voudrais t'interroger sur une autre pièce…"~ */ GOTO 21
  IF ~~ THEN REPLY #42232 /* ~"J'ai une autre question…"~ */ GOTO 1
  IF ~~ THEN REPLY #42233 /* ~"C'est tout ce que je voulais savoir. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 34 // from: 22.0
  SAY #42234 /* ~"Karasuthra est une strate des Terres des Bêtes perpétuellement plongée dans l'obscurité, grouillant d'animaux de toutes sortes qui chassent leurs proies dans la nuit. C'est un peintre qui était tombé amoureux d'une Dame-Chat et qui l'avait suivie dans son pays qui m'a donné ces tableaux. Il ne m'a jamais révélé les secrets de leur création."~ */
  IF ~~ THEN REPLY #42235 /* ~"Je voudrais t'interroger sur un autre tableau…"~ */ GOTO 22
  IF ~~ THEN REPLY #42236 /* ~"J'avais une autre question…"~ */ GOTO 1
  IF ~~ THEN REPLY #42237 /* ~"C'est tout ce que je voulais savoir. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 35 // from: 22.1
  SAY #42238 /* ~"C'est une pièce captivante, n'est-ce pas ? Le peintre a réussi à reproduire un effet très intéressant avec les formes dans les ombres de la falaise. La femme qui m'a confié cette pièce m'a dit qu'elle l'avait trouvée dans un camp abandonné de l'Outreterre… Le peintre ne fut jamais retrouvé. Il fut sans doute tué par les pilleurs représentés sur le tableau."~ */
  IF ~~ THEN REPLY #42239 /* ~"Je voudrais t'interroger sur un autre tableau…"~ */ GOTO 22
  IF ~~ THEN REPLY #42240 /* ~"J'ai une autre question…"~ */ GOTO 1
  IF ~~ THEN REPLY #42241 /* ~"C'est tout ce que je voulais savoir. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 36 // from: 22.2
  SAY #42242 /* ~"Ce tableau est une copie du mur d'une cellule de la Loge - le plus grand asile de Sigil. Son occupant ne savait dire qu'une seule chose : 'Hazazoth a dévoré N'gar… Hazazoth a dévoré N'gar…' Un peu effrayant, je trouve, mais c'est malgré tout une belle toile."~ */
  IF ~~ THEN REPLY #42243 /* ~"Je voudrais t'interroger sur un autre tableau…"~ */ GOTO 22
  IF ~~ THEN REPLY #42244 /* ~"J'avais une autre question…"~ */ GOTO 1
  IF ~~ THEN REPLY #42245 /* ~"C'est tout ce que je voulais savoir. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 37 // from: 22.3
  SAY #42246 /* ~"La Thalassie est la mer dans laquelle le Fleuve Océan, qui serpente à travers la plus grande partie du Plan des Élysées, se jette et prend sa source. Cette toile a été peinte par un des nombreux habitants de l'île."~ */
  IF ~~ THEN REPLY #42247 /* ~"Je voudrais t'interroger sur un autre tableau…"~ */ GOTO 22
  IF ~~ THEN REPLY #42248 /* ~"J'ai une autre question…"~ */ GOTO 1
  IF ~~ THEN REPLY #42249 /* ~"C'est tout ce que je voulais savoir. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 38 // from: 22.4
  SAY #42250 /* ~"Je ne sais pas grand-chose sur cette pièce… Je l'ai simplement trouvée sur le pas de la porte de ma galerie un jour, enveloppée d'une étoffe noire avec un mot disant : 'De la Citadelle'. Selon un mécène bien informé, il pourrait s'agir de la forteresse d'un grand sorcier en suspension dans un demi-plan créé par lui."~ */
  IF ~~ THEN REPLY #42251 /* ~"Je voudrais t'interroger sur un autre tableau…"~ */ GOTO 22
  IF ~~ THEN REPLY #42252 /* ~"J'avais une autre question…"~ */ GOTO 1
  IF ~~ THEN REPLY #42253 /* ~"C'est tout ce que je voulais savoir. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 39 // from: 22.5
  SAY #42254 /* ~"Ce tableau illustre l'une des légendes du Plan primaire de Goha. Udo était un roi-magicien si talentueux et si puissant qu'il s'était mis en tête de créer un sort qui le transformerait en Puissance, et le peuple de sa grande nation en serviteurs divins. Quand le sort fut achevé, la foudre tomba sur le palais d'Udo, qui s'embrasa et, avant même que le tonnerre ne s'éloigne, la cité s'était vidée… Il ne restait plus âme qui vive. Plus de soixante-dix mille personnes avaient disparu en un éclair, sans laisser la moindre trace. Nul ne sait ce qu'il est advenu d'Udo et de son peuple."~ */
  IF ~~ THEN REPLY #42255 /* ~"Je voudrais t'interroger sur un autre tableau…"~ */ GOTO 22
  IF ~~ THEN REPLY #42256 /* ~"J'ai une autre question…"~ */ GOTO 1
  IF ~~ THEN REPLY #42257 /* ~"C'est tout ce que je voulais savoir. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 40 // from: 22.6
  SAY #42258 /* ~"C'est Bulbog Pierrenez qui m'a vendu ce tableau… Il vient d'un champ situé sous le Mont Clanggedin, domaine des Einheriars nains - les esprits des Plans Supérieurs, tous gardiens ou guerriers - sur le Plan de l'Arcadie."~ */
  IF ~~ THEN REPLY #42259 /* ~"Je voudrais t'interroger sur un autre tableau…"~ */ GOTO 22
  IF ~~ THEN REPLY #42260 /* ~"J'avais une autre question…"~ */ GOTO 1
  IF ~~ THEN REPLY #42261 /* ~"C'est tout ce que je voulais savoir. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 41 // from: 22.7
  SAY #42262 /* ~"On dit qu'il s'agit du portrait de Ravel Puits-de-Rébus, qui fut sans doute la plus maléfique des guenaudes ayant jamais terrorisé la Gaste Grise et ses alentours."~ */
  IF ~  Global("Know_Ravel","GLOBAL",1)
~ THEN REPLY #42263 /* ~"Que sais-tu de Ravel Puits-de-Rébus ?"~ */ GOTO 17
  IF ~~ THEN REPLY #42264 /* ~"Je voudrais t'interroger sur un autre tableau…"~ */ GOTO 22
  IF ~~ THEN REPLY #42265 /* ~"J'ai une autre question…"~ */ GOTO 1
  IF ~~ THEN REPLY #42266 /* ~"C'est tout ce que je voulais savoir. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 42 // from: 22.8
  SAY #42267 /* ~"C'est un jeune homme dont je ne connais pas le nom qui m'a vendu cette pièce. Il en avait d'autres, mais elles avaient déjà des propriétaires… Enfin, c'est ce qu'il m'a dit. J'aurais aimé acquérir toute la collection, mais hélas - souvent, il semble que certaines choses ne doivent pas se faire."~ */
  IF ~~ THEN REPLY #42268 /* ~"Je voudrais t'interroger sur un autre tableau…"~ */ GOTO 22
  IF ~~ THEN REPLY #42269 /* ~"J'avais une autre question…"~ */ GOTO 1
  IF ~~ THEN REPLY #42270 /* ~"C'est tout ce que je voulais savoir. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 43 // from: 22.9
  SAY #42271 /* ~"Moch'chma est une forteresse githzeraï qui flotte sur le Plan des Limbes. Le Coup d'œil du moment fut peint par la spécialiste du chaos, Dy, qui quand elle n'est pas frappée de folie se souvient de tout ce qu'elle voit avec une parfaite lucidité."~ */
  IF ~~ THEN REPLY #42272 /* ~"Je voudrais t'interroger sur un autre tableau…"~ */ GOTO 22
  IF ~~ THEN REPLY #42273 /* ~"J'avais une autre question…"~ */ GOTO 1
  IF ~~ THEN REPLY #42274 /* ~"C'est tout ce que je voulais savoir. Au revoir."~ */ EXIT
END

IF ~  GlobalGT("Yvana","GLOBAL",0)
~ THEN BEGIN 44 // from:
  SAY #42275 /* ~Yvana sourit et te fait signe de t'approcher d'elle. "Rebonjour. Tu as des questions sur l'une des pièces ?"~ */
  IF ~~ THEN REPLY #42276 /* ~"Non, mais j'ai d'autres questions…"~ */ GOTO 1
  IF ~~ THEN REPLY #42277 /* ~"Oui…"~ */ GOTO 21
  IF ~~ THEN REPLY #42278 /* ~"Pas pour le moment. Au revoir, Yvana."~ */ EXIT
END

IF ~~ THEN BEGIN 45 // from: 1.4
  SAY #42279 /* ~Yvana prend l'objet et le caresse des doigts. Elle promène sa main sur l'objet, puis te le tend. "C'est plus qu'un simple beau jouet modrone, c'est certain. C'est peut-être une sorte de boîte à énigmes ou une clé de portail."~ */
  IF ~~ THEN REPLY #42280 /* ~"C'est quoi un modrone ?"~ */ GOTO 46
  IF ~~ THEN REPLY #42281 /* ~"J'ai une autre question…"~ */ GOTO 1
  IF ~~ THEN REPLY #42282 /* ~"C'est tout ce que je voulais savoir. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 46 // from: 45.0
  SAY #42283 /* ~"Les modrones sont une race composée d'êtres droits et disciplinés. Ils se présentent sous de multiples formes, chacun occupant un niveau différent dans la hiérarchie rigide modrone. Je crois que celui-ci s'appelle un 'tétradrone'."~ */
  IF ~~ THEN REPLY #42284 /* ~"J'ai une autre question…"~ */ GOTO 1
  IF ~~ THEN REPLY #42285 /* ~"C'est tout ce que je voulais savoir. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 47 // from: 1.0
  SAY #65153 /* ~Yvana caresse du bout des doigts les inscriptions gravées sur le 'journal'. "Non. Tu ferais bien de demander à un vrai linguiste… Il y en a peut-être à la Salle des Fêtes."~ */
  IF ~~ THEN REPLY #65154 /* ~"J'ai une autre question…"~ */ GOTO 1
  IF ~~ THEN REPLY #65155 /* ~"C'est tout ce que je voulais savoir. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 48 // from: 21.6
  SAY #66654 /* ~"C'est étrange que tu me demandes ça. Juste après qu'il y ait eu un grand bruit, des clients sont arrivés en courant et m'ont dit qu'ils avaient trouvé un mort étendu par terre. Les hommes de l'Harmonium ont emporté le corps, mais ils n'ont pas trouvé le coupable. Je leur ai dit que je pensais qu'un inconscient avait libéré Gangroihydron et avait été tué par la malédiction, mais le vieux sorcier avait disparu, lui aussi. Je ne sais rien d'autre."~ */
  IF ~~ THEN REPLY #66655 /* ~"Je voudrais t'interroger sur une autre pièce…"~ */ GOTO 21
  IF ~~ THEN REPLY #66656 /* ~"J'ai une autre question…"~ */ GOTO 1
  IF ~~ THEN REPLY #66657 /* ~"C'est tout ce que je voulais savoir. Au revoir."~ */ EXIT
END
