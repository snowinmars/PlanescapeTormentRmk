// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DANSKULL.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\fr_FR\dialog.tlk
// dialogF  : (none)

BEGIN ~DANSKULL~

IF ~~ THEN BEGIN 0 // from:
  SAY #31732 /* ~Un chuintement s'échappe des dents du crâne : "Tu veux dire que tu es un sorcier, un assassin et un empoisonneur."~ */
  IF ~~ THEN EXTERN ~DEVSKULL~ 8
END

IF ~  Global("AnSkull_Talk","AR0508",0)
~ THEN BEGIN 1 // from:
  SAY #31733 /* ~La voix du crâne est grave et âpre, comme le bruit de la pierre sur le métal. "Je… Je crois que je t'ai déjà vu, étranger."~ */
  IF ~~ THEN REPLY #31734 /* ~"Où ça ?"~ */ DO ~SetGlobal("AnSkull_Talk","AR0508",1)
~ GOTO 3
  IF ~~ THEN REPLY #31743 /* ~"C'est possible, mais je n'ai pas le temps."~ */ DO ~SetGlobal("AnSkull_Talk","AR0508",1)
~ EXIT
END

IF ~  GlobalGT("AnSkull_Talk","AR0508",0)
~ THEN BEGIN 2 // from:
  SAY #31744 /* ~"Encore toi ? Que me veux-tu maintenant ?"~ */
  IF ~~ THEN REPLY #31745 /* ~"Tu as dit que tu m'avais déjà vu. Où ça ?"~ */ GOTO 3
  IF ~~ THEN REPLY #31746 /* ~"Parle-moi de toi."~ */ GOTO 4
  IF ~~ THEN REPLY #31747 /* ~"Comment est-ce que tu as atterri ici ?"~ */ GOTO 5
  IF ~~ THEN REPLY #31748 /* ~"Parle-moi de Lothar."~ */ GOTO 6
  IF ~~ THEN REPLY #31749 /* ~"Parle-moi des autres crânes qui sont là."~ */ GOTO 7
  IF ~~ THEN REPLY #31750 /* ~"Rien. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 1.0 2.0 10.0 11.0
  SAY #31751 /* ~"Maudith. La ville-portail vers les Carcères."~ */
  IF ~~ THEN REPLY #31752 /* ~"Maudith ? Ville-portail ? Carcères ?"~ */ GOTO 8
  IF ~~ THEN REPLY #31753 /* ~"Qu'est-ce que je faisais là ?"~ */ GOTO 9
END

IF ~~ THEN BEGIN 4 // from: 2.1 5.0 6.2 7.0
  SAY #31754 /* ~"Moi ? Je suis Sinistrescalp. J'étais un anarchiste - de la Ligue Révolutionnaire. On avait nos cellules et nos secrets. On allait bouleverser la nature des plans pour que tout le monde vive en liberté. On savait ce que faisaient les factions et on était prêts pour l'action. Mais on a été trahis par une autre faction. Je me suis retrouvé mort, et Lothar m'a récupéré pour mes secrets. Heureusement que la plupart d'entre eux sont maintenant dépassés, on ne résiste pas aux charmes de Lothar."~ */
  IF ~~ THEN REPLY #31755 /* ~"Qu'est-ce que tu peux me dire sur les Anarchistes ?"~ */ GOTO 12
  IF ~~ THEN REPLY #31756 /* ~"Parle-moi de Lothar."~ */ GOTO 6
  IF ~~ THEN REPLY #31757 /* ~"Parle-moi des autres crânes qui sont là."~ */ GOTO 7
  IF ~~ THEN REPLY #31758 /* ~"Merci. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 2.2 6.3 7.1
  SAY #31759 /* ~"Trahison. J'aurais dû m'y attendre, étant donné qui je suis - ou plutôt qui j'étais."~ */
  IF ~~ THEN REPLY #31760 /* ~"Qui étais-tu ?"~ */ GOTO 4
  IF ~~ THEN REPLY #31761 /* ~"Sans doute. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 6 // from: 2.3 4.1 7.2
  SAY #31762 /* ~"J'ai trahi pas mal de soltifs, mais je ne suis pas prêt à sacrifier celui-ci. J'ai vu des horreurs dans les mains de Lothar qui feraient honte aux règles rigides de l'Harmonium. Il connaît mes secrets mieux que je ne connais les siens, et je serai maudit si je les dévoile à qui que ce soit. Même à toi. Surtout à toi."~ */
  IF ~  Global("Morte_Stolen","GLOBAL",0)
~ THEN REPLY #31763 /* ~"Pourquoi ? Qu'est-ce que tu sais sur moi ?"~ */ GOTO 10
  IF ~  GlobalGT("Morte_Stolen","GLOBAL",0)
~ THEN REPLY #31764 /* ~"Pourquoi ? Qu'est-ce que tu sais sur moi ?"~ */ GOTO 11
  IF ~~ THEN REPLY #31765 /* ~"Alors, parle-moi de toi."~ */ GOTO 4
  IF ~~ THEN REPLY #31766 /* ~"Alors, comment tu as atterri ici ?"~ */ GOTO 5
  IF ~~ THEN REPLY #31767 /* ~"Qu'est-ce que tu peux me dire sur les autres crânes ?"~ */ GOTO 7
  IF ~~ THEN REPLY #31768 /* ~"D'accord. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 7 // from: 2.4 4.2 6.4
  SAY #31769 /* ~"Eux ? Ce ne sont que des outils, bien qu'ils ne le sachent pas. Leurs rêves sont ridicules et égoïstes. Ils ne voient pas la toile complète de l'intrigue. Ils ne voient pas derrière eux. Ils sont sans intérêt. Je ne leur adresse pas la parole."~ */
  IF ~~ THEN REPLY #31770 /* ~"Je vois. Alors, parle-moi de toi."~ */ GOTO 4
  IF ~~ THEN REPLY #31771 /* ~"Alors, comment tu as atterri ici ?"~ */ GOTO 5
  IF ~~ THEN REPLY #31772 /* ~"Et Lothar ?"~ */ GOTO 6
  IF ~~ THEN REPLY #31773 /* ~"C'est tout ce que je voulais savoir. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 8 // from: 3.0 9.0
  SAY #31774 /* ~"T'es béjaune ou quoi ? C'est une ville-portail, à la limite de l'Outreterre, l'entrée du plan prison des Carcères. C'est un endroit pour les traîtres et les lâches, aussi rempli de combines que les dessous d'un baatezu. Être situé à côté des Carcères a tendance à changer la nature d'un bled. Je ne serais pas surpris que la ville soit sur le point de basculer."~ */
  IF ~~ THEN REPLY #31775 /* ~"De basculer ? Qu'est-ce que tu veux dire ?"~ */ GOTO 16
  IF ~~ THEN REPLY #31776 /* ~"Qu'est-ce que je faisais là ?"~ */ GOTO 9
  IF ~~ THEN REPLY #31777 /* ~"Merci. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 9 // from: 3.1 8.1
  SAY #31778 /* ~"Que faisais-tu là-bas ? Tu baragouinais à propos d'un bige qui essayait de te tuer, et d'errer au mauvais endroit. Eh bien, tu étais visiblement azimuté et tout, alors mes amis et moi t'avons détroussé. On t'a poignardé et on s'est réparti tes affaires. On m'a trahi juste après, mais pas avant que j'aie pu cacher certaines de ces affaires."~ */
  IF ~~ THEN REPLY #31779 /* ~"Qu'est-ce que tu peux me dire sur Maudith ?"~ */ GOTO 8
  IF ~  Global("Join_Anarchists","GLOBAL",0)
~ THEN REPLY #31780 /* ~"Où elles sont ?"~ */ GOTO 14
  IF ~  Global("Join_Anarchists","GLOBAL",2)
~ THEN REPLY #31781 /* ~"Où elles sont ?"~ */ GOTO 14
  IF ~  Global("Join_Anarchists","GLOBAL",1)
~ THEN REPLY #31782 /* ~"Où elles sont ?"~ */ DO ~SetGlobal("Anarchist_Treasure","GLOBAL",1)
~ GOTO 15
  IF ~~ THEN REPLY #31783 /* ~"Oh. Et bien, merci. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 10 // from: 6.0
  SAY #31784 /* ~"Je sais que tu es d'une manière ou d'une autre important pour Lothar, et il y a quelque chose en toi qu'il veut comprendre. Tu es une sorte d'énigme. Tu l'intéresses, mon gars, et il veut que tu répondes à ses questions. Il gardera un œil sur toi et je sais que tu peux voyager loin - on t'a déjà vu."~ */
  IF ~~ THEN REPLY #31734 /* ~"Où ça ?"~ */ GOTO 3
  IF ~~ THEN REPLY #31794 /* ~"Je m'en souviendrai. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 11 // from: 6.1
  SAY #31795 /* ~"J'en ai déjà dit une grande partie à ton ami, là-bas. Tu es d'une manière ou d'une autre important pour Lothar, et il y a quelque chose en toi qu'il veut comprendre. Tu es comme une sorte d'énigme. Tu l'intéresses, mon gars, et il veut que tu répondes à ses questions. Il gardera un œil sur toi et je sais que tu vas voyager loin - on t'a déjà observé."~ */
  IF ~~ THEN REPLY #31734 /* ~"Où ça ?"~ */ GOTO 3
  IF ~~ THEN REPLY #31797 /* ~"Je n'oublierai pas. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 12 // from: 4.0 16.0
  SAY #31798 /* ~"Nous sommes une organisation secrète, un réseau de membres qui travaillent en solo, ou selon des directives passées par les informateurs ou les dirigeants-qui-restent-cachés. Notre but est de détruire la structure du pouvoir, pour libérer les gens des mensonges des politiciens et des puissances, pour tous les laisser diriger leur propre vie selon leur propre vouloir. Nous travaillons en secret - travaillions en secret - et changions constamment nos habitudes pour éviter d'être infiltrés. Mais c'était pour moi il y a des décennies, et tous les secrets que je connais ne sont plus valides, excepté les visages dont je me souviens - et même ceux-ci doivent avoir maintenant changé."~ */
  IF ~~ THEN REPLY #31799 /* ~"Vous avez l'air d'une bande de paranoïaques."~ */ GOTO 13
  IF ~~ THEN REPLY #31800 /* ~"C'est tout ce que je voulais savoir. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 13 // from: 12.0
  SAY #31801 /* ~"Si l'organisation à laquelle tu appartenais se développait dans l'intrigue, les infiltrations et la haine de ceux qui traitaient avec les puissances, tu ferais aussi attention. Ce n'est pas de la paranoïa lorsqu'ils sont prêts à tout pour t'attraper. Pour nous, une personne prenant part à une double trahison est un amateur." Le crâne te regarde calmement pendant un instant. "Je crois avoir fini de m'adresser à toi. Adieu."~ */
  IF ~~ THEN REPLY #31802 /* ~"Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 14 // from: 9.1 9.2
  SAY #31803 /* ~"Je ne te le dirai pas. Peut-être qu'un jour je récupérerai un corps et que je pourrai le faire moi-même, et peut-être que non, mais pour le moment je suis plus qu'heureux de te voir t'interroger ainsi. Bonne chance dans ta recherche." Le crâne redevient silencieux et tu as beau le cajoler, il reste coi.~ */
  IF ~~ THEN REPLY #31804 /* ~"Salaud."~ */ EXIT
END

IF ~~ THEN BEGIN 15 // from: 9.3
  SAY #31805 /* ~Tu as l'impression que le crâne te regarde avec méfiance. "T'es un frère, hein ? J'ai - enfin, j'avais - l'œil pour ces choses-là  et j'crois que tu es des nôtres. Bien, dans ce cas-là, c'est dans le hangar. Parle au propriétaire et dis-lui que je t'envoie. Ne lui dis pas que je suis mort, et il devrait te le donner sans problème."~ */
  IF ~~ THEN REPLY #31806 /* ~"Je m'en souviendrai. Merci, même si ça ne me fait pas très plaisir de savoir que j'ai été tué par toi. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 16 // from: 8.0
  SAY #31807 /* ~"Lorsque les croyances d'une ville-portail deviennent trop similaires à celles du plan qu'elle borde, la force de ces croyances suffit à la faire absorber par le plan qui la borde. Ça arrive tout le temps - tout du moins lorsque les Anarchistes sont de la partie." Il prononce cette dernière phrase avec une fierté lugubre.~ */
  IF ~~ THEN REPLY #31808 /* ~"Parle-moi des Anarchistes."~ */ GOTO 12
  IF ~~ THEN REPLY #31809 /* ~"Merci. Au revoir."~ */ EXIT
END
