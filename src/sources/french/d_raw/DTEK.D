// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DTEK.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\fr_FR\dialog.tlk
// dialogF  : (none)

BEGIN ~DTEK~

IF ~  Global("Know_Tek","GLOBAL",0)
~ THEN BEGIN 0 // from:
  SAY #58197 /* ~Tu aperçois une créature vaguement humanoïde, couverte de grotesques écailles. Elle a d'immenses ailes et une queue préhensile. Elle te regarde approcher d'un air amusé.~ */
  IF ~~ THEN REPLY #58198 /* ~"Bonjour."~ */ GOTO 1
  IF ~~ THEN REPLY #58199 /* ~Ignore la créature.~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #58200 /* ~Elle rit brièvement et te sourit. "Oui… bonjour à toi aussi, petit humain."~ */
  IF ~~ THEN REPLY #58201 /* ~"J'ai des questions…"~ */ GOTO 2
  IF ~~ THEN REPLY #58202 /* ~"Je dois m'en aller, au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.0 3.1 4.0 5.1 6.2 8.0 9.2 11.1 12.1 13.1 14.1 17.1 18.1 19.1 21.1 22.0 26.1 27.1 29.1 30.0
  SAY #58203 /* ~"Je t'en prie, pose tes questions…" Il te dédie un sourire amusé.~ */
  IF ~~ THEN REPLY #58204 /* ~"Qui es-tu ?"~ */ GOTO 3
  IF ~~ THEN REPLY #58205 /* ~"Qu'est-ce que tu es ?"~ */ GOTO 5
  IF ~~ THEN REPLY #58206 /* ~"Qu'est-ce que tu fais ici ?"~ */ GOTO 11
  IF ~~ THEN REPLY #58207 /* ~"Qu'est-ce que tu peux me dire sur cet endroit ?"~ */ GOTO 13
  IF ~  Global("AR0800_Visited","GLOBAL",0)
~ THEN REPLY #58208 /* ~"Que peux-tu me dire sur Maudith ?"~ */ GOTO 15
  IF ~  Global("AR0800_Visited","GLOBAL",1)
Global("Know_Curst_Cure","GLOBAL",0)
~ THEN REPLY #58209 /* ~"Qu'est-il arrivé à Maudith ? Pourquoi tous ces changements ?"~ */ GOTO 23
  IF ~  Global("AR0800_Visited","GLOBAL",1)
Global("Know_Curst_Cure","GLOBAL",1)
~ THEN REPLY #58210 /* ~"Qu'est-il arrivé à Maudith ? Pourquoi tous ces changements ?"~ */ GOTO 28
  IF ~  GlobalGT("Join_Godsmen","GLOBAL",5)
~ THEN REPLY #58211 /* ~"En tant qu'Homme-Dieu, je sais que nous travaillons sur un appareil secret à la fonderie. Peux-tu m'en dire plus ?"~ */ GOTO 29
  IF ~~ THEN REPLY #58212 /* ~"Je dois m'en aller, maintenant. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 2.0
  SAY #58213 /* ~Il pèse ta question pendant un long moment. "Mon nom n'a pas d'importance. S'il y avait une raison pour que tu me connaisses, alors tu me connaîtrais." Il s'interrompt. "Si tu veux mettre un nom sur ma personne, appelle-moi Tek'elach." La créature sourit.~ */
  IF ~~ THEN REPLY #58214 /* ~"Quel nom bizarre."~ */ DO ~SetGlobal("Know_Tek","GLOBAL",1)
~ GOTO 4
  IF ~~ THEN REPLY #58215 /* ~"J'ai des questions…"~ */ DO ~SetGlobal("Know_Tek","GLOBAL",1)
~ GOTO 2
  IF ~~ THEN REPLY #58216 /* ~"Au revoir."~ */ DO ~SetGlobal("Know_Tek","GLOBAL",1)
~ EXIT
END

IF ~~ THEN BEGIN 4 // from: 3.0
  SAY #58217 /* ~"Le seul que tu obtiendras de moi…" Il te fixe attentivement.~ */
  IF ~~ THEN REPLY #58218 /* ~"Je vois. J'ai quelques questions…"~ */ GOTO 2
  IF ~~ THEN REPLY #58219 /* ~"Je crois qu'il vaudrait mieux que je parte. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 2.1
  SAY #58220 /* ~Il penche la tête sur le côté et t'observe d'un air pensif. "Ce que je suis ? Hum… tu as vraiment besoin de le savoir ?" Il s'interrompt pour réfléchir. "J'imagine qu'il n'y a pas de mal à ça. Je crois que les tiens me considèrent comme un baatezu majeur… un cornugon, pour être plus précis."~ */
  IF ~~ THEN REPLY #58221 /* ~"Tu es un baatezu majeur ?"~ */ GOTO 6
  IF ~~ THEN REPLY #58222 /* ~"J'ai des questions…"~ */ GOTO 2
  IF ~~ THEN REPLY #58223 /* ~"Je dois m'en aller, au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 6 // from: 5.0
  SAY #58224 /* ~"Oui… ça te surprend ?" Il te regarde, attendant quelque chose.~ */
  IF ~  Global("Know_Blood_War","GLOBAL",1)
~ THEN REPLY #58225 /* ~"C'est juste que je ne vois pas pourquoi tu es ici. Est-ce que tu n'es pas censé combattre dans la Guerre Sanglante ou quelque chose, chez toi ?"~ */ GOTO 7
  IF ~  Global("Know_Blood_War","GLOBAL",0)
~ THEN REPLY #58226 /* ~"C'est juste que je ne vois pas pourquoi tu es ici. Est-ce que tu n'es pas censé faire quelque chose d'autre ?"~ */ GOTO 9
  IF ~~ THEN REPLY #58227 /* ~"J'ai des questions…"~ */ GOTO 2
  IF ~~ THEN REPLY #58228 /* ~"Je dois m'en aller, au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 7 // from: 6.0
  SAY #58229 /* ~Il se renfrogne. "Oui… il y a la Guerre Sanglante. Mais elle est loin pour le moment, et il n'est pas nécessaire d'en parler…"~ */
  IF ~~ THEN REPLY #58230 /* ~"Pourquoi pas ?"~ */ GOTO 8
END

IF ~~ THEN BEGIN 8 // from: 7.0 10.0 12.0 14.0
  SAY #58231 /* ~"Simplement parce que je ne le veux pas… pour l'instant." Il te regarde d'un air furieux.~ */
  IF ~~ THEN REPLY #58232 /* ~"Je vois. J'ai d'autres questions…"~ */ GOTO 2
  IF ~~ THEN REPLY #58233 /* ~"Bon, je m'en vais. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 9 // from: 6.1
  SAY #58234 /* ~Il te jette un regard troublé. "Quelque chose d'autre ? Tu fais peut-être référence à la Guerre Sanglante ?"~ */
  IF ~~ THEN REPLY #58235 /* ~"Qu'est-ce que la Guerre Sanglante ?"~ */ GOTO 10
  IF ~~ THEN REPLY #58236 /* ~"Pas spécialement à la guerre, juste à autre chose qu'être assis dans ce tunnel."~ */ GOTO 11
  IF ~~ THEN REPLY #58237 /* ~"Peu importe, j'ai des questions…"~ */ GOTO 2
  IF ~~ THEN REPLY #58238 /* ~"Je dois m'en aller. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 10 // from: 9.0 29.0
  SAY #58239 /* ~Il étudie ta question pendant un long moment. Tu penses tout d'abord qu'il ne te répondra pas. "La Guerre Sanglante est… un accrochage avec les tanar'ris. Rien de bien important et rien qui ne nécessite d'être mentionné."~ */
  IF ~~ THEN REPLY #58240 /* ~"Pourquoi ça ?"~ */ GOTO 8
END

IF ~~ THEN BEGIN 11 // from: 2.2 9.1
  SAY #58241 /* ~"Mes affaires ici ne regardent que moi et je ne vois pas en quoi elles te concernent." Il te sourit d'un air entendu. "Je te suggère de changer de sujet."~ */
  IF ~~ THEN REPLY #58242 /* ~"Je ne comprends pas, pourquoi tous ces secrets ? Tu me donnes l'impression qu'il se passe quelque chose d'autre ici."~ */ GOTO 12
  IF ~~ THEN REPLY #58243 /* ~"Très bien, j'ai des questions…"~ */ GOTO 2
  IF ~~ THEN REPLY #58244 /* ~"Je dois m'en aller. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 12 // from: 11.0
  SAY #58245 /* ~Il te regarde d'un air faussement surpris. "Vraiment ? Ou est-ce que tu choisis d'interpréter mes dires et mes actes comme il te convient ? Quoi qu'il en soit, j'ai répondu à ta question. Je ne m'étendrai pas sur le sujet."~ */
  IF ~~ THEN REPLY #58246 /* ~"Pourquoi ?"~ */ GOTO 8
  IF ~~ THEN REPLY #58247 /* ~"Très bien, j'ai des questions…"~ */ GOTO 2
  IF ~~ THEN REPLY #58248 /* ~"Je dois m'en aller. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 13 // from: 2.3
  SAY #58249 /* ~"Qu'est-ce qu'il y a à dire ?" Il indique vaguement les alentours. "Vois toi-même ; tout est là."~ */
  IF ~~ THEN REPLY #58252 /* ~"Je ne peux pas m'empêcher de sentir qu'il se passe plus ici qu'il n'y paraît…"~ */ GOTO 14
  IF ~~ THEN REPLY #58253 /* ~"Je vois… j'ai quelques questions…"~ */ GOTO 2
  IF ~~ THEN REPLY #58254 /* ~"Je dois m'en aller. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 14 // from: 13.0
  SAY #58250 /* ~Il te regarde d'un air faussement surpris. "Vraiment ? Es-tu si méfiant ou paranoïaque que ça ? Quoi qu'il en soit, j'ai répondu à ta question. Je ne m'étendrai pas sur le sujet."~ */
  IF ~~ THEN REPLY #58251 /* ~"Pourquoi ?"~ */ GOTO 8
  IF ~~ THEN REPLY #58255 /* ~"Très bien, j'ai des questions…"~ */ GOTO 2
  IF ~~ THEN REPLY #58256 /* ~"Je dois m'en aller. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 15 // from: 2.4
  SAY #58257 /* ~Il fronce les sourcils et réfléchit longuement à ta question. "C'est un endroit abandonné… un lieu de trahison et de chaos… une cité en équilibre au bord du désastre. Sois très prudent si tu dois te déplacer à l'intérieur de ses limites."~ */
  IF ~~ THEN REPLY #58258 /* ~"En équilibre au bord du désastre ?"~ */ GOTO 16
END

IF ~~ THEN BEGIN 16 // from: 15.0
  SAY #58259 /* ~Il soupire et détourne le regarde. "Nous sommes dans une ville *frontière*, petit humain. D'un côté, tu as l'Outreterre et de l'autre, le plan prison des Carcères. Tant que le statu quo perdurera, Maudith restera une ville frontière." Il s'interrompt pour marquer ses propos.~ */
  IF ~~ THEN REPLY #58260 /* ~"Continue."~ */ DO ~SetGlobal("Know_Curst_Cure","GLOBAL",1)
~ GOTO 17
END

IF ~~ THEN BEGIN 17 // from: 16.0
  SAY #58261 /* ~"Si les événements deviennent incontrôlables dans la cité, elle peut glisser dans les Carcères et s'y intégrer. Si l'ordre imposé est trop grand, elle cessera d'être une ville frontière, pour glisser dans l'Outreterre." Il hausse les épaules. "C'est ainsi que fonctionne ce genre d'endroit."~ */
  IF ~~ THEN REPLY #58262 /* ~"Tu as dit que la cité pouvait être… déplacée ?"~ */ GOTO 18
  IF ~~ THEN REPLY #58263 /* ~"J'ai d'autres questions…"~ */ GOTO 2
  IF ~~ THEN REPLY #58264 /* ~"Je dois m'en aller, maintenant. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 18 // from: 17.0
  SAY #58265 /* ~Il te fait un sourire moqueur. "Oui…"~ */
  IF ~~ THEN REPLY #58266 /* ~"Si cela se produisait, que pourrait-on faire ?"~ */ GOTO 19
  IF ~~ THEN REPLY #58267 /* ~"J'ai d'autres questions…"~ */ GOTO 2
  IF ~~ THEN REPLY #58268 /* ~"Je dois m'en aller, maintenant. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 19 // from: 18.0
  SAY #58269 /* ~Il hausse les épaules. "Déterminer de quel côté la cité a glissé et appliquer la force opposée. Trop d'ordre ? Incite au chaos. Trop peu d'ordre ? Impose plus de lois." Il te sourit. "En se montrant suffisamment persévérant, il est possible de rendre à la cité son statut de ville frontière… ou de la faire glisser du côté opposé."~ */
  IF ~~ THEN REPLY #58270 /* ~"Tu as été d'une aide précieuse… Ce qui m'incite à te poser une autre question… Pourquoi ?"~ */ GOTO 20
  IF ~~ THEN REPLY #58271 /* ~"J'ai d'autres questions…"~ */ GOTO 2
  IF ~~ THEN REPLY #58272 /* ~"Je dois m'en aller, maintenant. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 20 // from: 19.0 27.0
  SAY #58273 /* ~Il te jette un regard troublé. "Pourquoi quoi ?"~ */
  IF ~~ THEN REPLY #58274 /* ~"Vous autres baatezus êtes censés être l'incarnation du mal. Pourquoi m'aides-tu ainsi ?"~ */ GOTO 21
END

IF ~~ THEN BEGIN 21 // from: 20.0
  SAY #58275 /* ~Il rit brièvement et te sourit. "Ne prends pas mon aide pour de la bonté et ne me considère pas autrement que maléfique. Je t'aide tout simplement parce que c'est dans mon intérêt… rien de plus."~ */
  IF ~~ THEN REPLY #58276 /* ~"En quoi m'apporter ton aide peut-il t'être utile ?"~ */ GOTO 22
  IF ~~ THEN REPLY #58277 /* ~"J'ai d'autres questions…"~ */ GOTO 2
  IF ~~ THEN REPLY #58278 /* ~"Je dois m'en aller, maintenant. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 22 // from: 21.0
  SAY #58279 /* ~"C'est la question, en effet…" Il continue à te sourire.~ */
  IF ~~ THEN REPLY #58280 /* ~"J'ai d'autres questions…"~ */ GOTO 2
  IF ~~ THEN REPLY #58281 /* ~"Je dois m'en aller, maintenant. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 23 // from: 2.5 28.0
  SAY #58282 /* ~Il soupire et détourne le regard. "Maudith était une ville frontière, équilibrée entre deux extrêmes. D'un côté se trouvait l'Outreterre; de l'autre le plan des Carcères." Il s'interrompt.~ */
  IF ~~ THEN REPLY #58283 /* ~"Oui, je comprends. Qu'est-ce qui a provoqué le déséquilibre et fait glisser la cité dans les Carcères ?"~ */ GOTO 24
END

IF ~~ THEN BEGIN 24 // from: 23.0
  SAY #58284 /* ~Il hausse les épaules. "Trias. C'est sa faute. À cause de lui, le chaos a pris le dessus et a fait glisser la cité dans les Carcères… et elle restera là, jusqu'à ce que des mesures drastiques soient prises."~ */
  IF ~~ THEN REPLY #58285 /* ~"Que peut-on faire ?"~ */ GOTO 25
  IF ~~ THEN REPLY #58286 /* ~"Trias ? Qu'a-t-il à faire là-dedans ?"~ */ GOTO 31
END

IF ~~ THEN BEGIN 25 // from: 24.0 31.0
  SAY #58287 /* ~"Déterminer de quel côté la cité a glissé et appliquer la force opposée. Trop d'ordre ? Incite au chaos. Trop peu d'ordre ? Impose plus de lois." Il te sourit. "En se montrant suffisamment persévérant, il est possible de rendre à la cité son statut de ville frontière… ou de la faire glisser du côté opposé."~ */
  IF ~~ THEN REPLY #58288 /* ~"Tu veux dire que quelqu'un doit imposer la loi et l'ordre dans cette cité ?~ */ GOTO 26
END

IF ~~ THEN BEGIN 26 // from: 25.0
  SAY #58289 /* ~Il te sourit. "Oui… c'est exactement ce que je dis."~ */
  IF ~~ THEN REPLY #58290 /* ~"M'aiderais-tu à faire cela ?"~ */ GOTO 27
  IF ~~ THEN REPLY #58291 /* ~"J'ai d'autres questions…"~ */ GOTO 2
  IF ~~ THEN REPLY #58292 /* ~"Je dois m'en aller, maintenant. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 27 // from: 26.0
  SAY #58293 /* ~Il te fixe pendant quelques instants avant de répondre. "Oui… je crois que cela serait dans mon intérêt. Mes serviteurs et moi-même t'aiderons volontiers."~ */
  IF ~~ THEN REPLY #58294 /* ~"Tu as été d'une aide précieuse… Ce qui m'incite à te poser une autre question… Pourquoi ?"~ */ GOTO 20
  IF ~~ THEN REPLY #58295 /* ~"J'ai d'autres questions…"~ */ GOTO 2
  IF ~~ THEN REPLY #58296 /* ~"Je dois m'en aller, maintenant. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 28 // from: 2.6
  SAY #58297 /* ~Il hausse les épaules. "Exactement ce contre quoi je t'ai mis en garde quand nous avons parlé la dernière fois."~ */
  IF ~~ THEN REPLY #58298 /* ~"C'est-à-dire ?"~ */ GOTO 23
END

IF ~~ THEN BEGIN 29 // from: 2.7
  SAY #58299 /* ~"Tu es un Homme-Dieu ?" Il te regarde avec un certain respect. "En raison de ton affiliation, je répondrai à ta question. Mon supérieur a commandé cette machine. C'est une arme qui sera utilisée dans la Guerre Sanglante."~ */
  IF ~~ THEN REPLY #58300 /* ~"Qu'est-ce que la Guerre Sanglante ?"~ */ GOTO 10
  IF ~~ THEN REPLY #58301 /* ~"Je vois. J'ai d'autres questions…"~ */ GOTO 2
  IF ~~ THEN REPLY #58303 /* ~"Je dois m'en aller, maintenant. Au revoir."~ */ EXIT
END

IF ~  Global("Know_Tek","GLOBAL",1)
~ THEN BEGIN 30 // from:
  SAY #58306 /* ~Tu aperçois Tek'elach, le cornugon. Il te dédie un sourire amusé. "Ainsi, nous nous rencontrons à nouveau, petit humain. Que veux-tu ?"~ */
  IF ~~ THEN REPLY #58307 /* ~"J'ai des questions…"~ */ GOTO 2
  IF ~~ THEN REPLY #58309 /* ~"Rien, au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 31 // from: 24.1
  SAY #58310 /* ~Il soupire. "Trias est un agent du Chaos. Il a été emprisonné pour une bonne raison. Malheureusement, un idiot l'a libéré, ce qui lui a permis d'infliger de terribles ravages à la ville." Il s'interrompt et soupire à nouveau. "J'ai été envoyé ici pour le tenir à l'œil…"~ */
  IF ~~ THEN REPLY #58311 /* ~"Alors, que peut-on faire ?"~ */ GOTO 25
END
