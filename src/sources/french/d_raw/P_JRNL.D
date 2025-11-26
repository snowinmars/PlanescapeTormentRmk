// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : P_JRNL.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\fr_FR\dialog.tlk
// dialogF  : (none)

BEGIN ~P_JRNL~

IF ~  Global("P_Journal","GLOBAL",0)
~ THEN BEGIN 0 // from:
  SAY #45746 /* ~Ce dodécaèdre est lourd et gros comme deux poings réunis. Il te semble étonnamment familier. Sa texture est froide et lisse, mais tu ignores s'il s'agit de pierre ou de métal. La tension est presque perceptible, comme si tu t'attendais à tout instant à ce que l'objet se mette à faire des bonds.~ */
  IF ~~ THEN REPLY #45747 /* ~Examine attentivement le dodécaèdre.~ */ GOTO 1
  IF ~~ THEN REPLY #46207 /* ~Range-le.~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #46208 /* ~En examinant le dodécaèdre de plus près, tu remarques que chacune de ses faces peut être tournée vers la droite ou la gauche. On dirait une sorte de puzzle en trois dimensions. Chacune des douze faces a cinq positions possibles, ce qui donne un total de deux cents quarante-quatre millions, cent quarante mille six cent vingt-cinq combinaisons différentes ! Si tu les modifiais sans cesse, sans manger ni dormir, il te faudrait plus de soixante-dix-sept ans pour toutes les essayer… à moins que tu ne trouves la bonne de suite, bien sûr…~ */
  IF ~~ THEN REPLY #46209 /* ~Inspecte-le quelques instants.~ */ DO ~PlaySoundNotRanged("SPTR_01")
~ GOTO 2
  IF ~~ THEN REPLY #46210 /* ~Range-le.~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.0
  SAY #46211 /* ~Alors que tu tournes méthodiquement les faces grises du dodécaèdre, tu ressens une étrange sensation à la base de ton crâne. Tes mains se mettent à bouger toutes seules et les faces s'emboîtent les unes dans les autres avec une précision diabolique. Manifestement, tu connaissais autrefois la combinaison. Tu sens désormais aussi que l'objet recèle un certain *danger*, mais tu ignores s'il s'agit d'un piège ou de quelque chose de surnaturel.~ */
  IF ~  CheckStatGT(Protagonist,8,INT)
~ THEN REPLY #46212 /* ~Continue de t'intéresser au dodécaèdre.~ */ DO ~SetGlobal("P_Journal","GLOBAL",1)
~ GOTO 3
  IF ~  CheckStatLT(Protagonist,9,INT)
HPGT(Protagonist,25)
~ THEN REPLY #46213 /* ~Continue de t'intéresser au dodécaèdre.~ */ DO ~Damage(Protagonist,LOWER,25)
SetGlobal("P_Journal","GLOBAL",1)
~ GOTO 6
  IF ~  CheckStatLT(Protagonist,9,INT)
HPLT(Protagonist,26)
~ THEN REPLY #46214 /* ~Continue de t'intéresser au dodécaèdre.~ */ DO ~Damage(Protagonist,LOWER,25)
SetGlobal("P_Journal","GLOBAL",1)
~ GOTO 7
END

IF ~~ THEN BEGIN 3 // from: 2.0
  SAY #46215 /* ~En quelques secondes, tu positionnes les quatre premières faces comme elles doivent l'être. Au moment où tu t'apprêtes à faire pivoter la cinquième, tu te souviens que des lames sont censées jaillir à cet instant et te trancher les doigts. Tu les évites en effectuant le nombre de rotations requis, certain d'être sur la bonne voie pour percer tous les secrets de l'objet.~ */
  IF ~  CheckStatGT(Protagonist,12,INT)
~ THEN REPLY #46216 /* ~Continue de t'intéresser au dodécaèdre.~ */ DO ~SetGlobal("P_Journal","GLOBAL",2)
~ GOTO 4
  IF ~  CheckStatLT(Protagonist,13,INT)
HPGT(Protagonist,25)
~ THEN REPLY #46217 /* ~Continue de t'intéresser au dodécaèdre.~ */ DO ~Damage(Protagonist,LOWER,25)
SetGlobal("P_Journal","GLOBAL",2)
~ GOTO 8
  IF ~  CheckStatLT(Protagonist,13,INT)
HPLT(Protagonist,26)
~ THEN REPLY #46218 /* ~Continue de t'intéresser au dodécaèdre.~ */ DO ~Damage(Protagonist,LOWER,25)
SetGlobal("P_Journal","GLOBAL",2)
~ GOTO 9
  IF ~~ THEN REPLY #46219 /* ~Range le dodécaèdre.~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 3.0 13.0
  SAY #46220 /* ~Après avoir évité les lames, tu réfléchis soigneusement aux rotations qu'il te faut ensuite accomplir. Lorsque tu arrives à la neuvième face, tu te souviens brusquement d'un autre piège, un jet de gaz toxique destiné à tuer les curieux un peu trop doués ou chanceux. Tu l'évites grâce à la combinaison prévue à cet effet. Cette fois, tu as presque réussi à ouvrir le dodécaèdre.~ */
  IF ~  CheckStatGT(Protagonist,15,INT)
~ THEN REPLY #46221 /* ~Continue de t'intéresser au dodécaèdre.~ */ DO ~SetGlobal("P_Journal","GLOBAL",3)
GiveExperience(Protagonist,5000)
~ GOTO 5
  IF ~  CheckStatLT(Protagonist,16,INT)
HPGT(Protagonist,25)
~ THEN REPLY #46222 /* ~Continue de t'intéresser au dodécaèdre.~ */ DO ~Damage(Protagonist,LOWER,25)
SetGlobal("P_Journal","GLOBAL",3)
GiveExperience(Protagonist,5000)
~ GOTO 10
  IF ~  CheckStatLT(Protagonist,16,INT)
HPLT(Protagonist,26)
~ THEN REPLY #46223 /* ~Continue de t'intéresser au dodécaèdre.~ */ DO ~Damage(Protagonist,LOWER,25)
SetGlobal("P_Journal","GLOBAL",3)
GiveExperience(Protagonist,5000)
~ GOTO 11
  IF ~~ THEN REPLY #46224 /* ~Range le dodécaèdre.~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 4.0 14.0
  SAY #46225 /* ~Après avoir évité le gaz mortel, tu t'intéresses aux dernières faces. Alors que tu fais coulisser la douzième et dernière face, tu te souviens que des runes magiques cachées dans le dodécaèdre sont là pour électrocuter quiconque le tient, à grands renforts d'éclairs. Une fois encore, tu désarmes le piège. Cela fait, le dodécaèdre émet un cliquetis perceptible et s'ouvre dans tes mains…~ */
  IF ~~ THEN GOTO 12
END

IF ~~ THEN BEGIN 6 // from: 2.1
  SAY #46226 /* ~En quelques secondes, tu positionnes les quatre premières faces comme elles doivent l'être. Au moment où tu t'apprêtes à faire pivoter la cinquième, des lames jaillissent entre les faces de l'objet et te lacèrent les mains. Plusieurs de tes doigts manquent d'être tranchés sur le coup. Serrant les dents, tu ramasses le dodécaèdre que tu viens de laisser tomber… et, ce faisant, tu te souviens de la combinaison nécessaire pour éviter ce piège.~ */
  IF ~  HPGT(Protagonist,25)
~ THEN REPLY #46227 /* ~Continue de t'intéresser au dodécaèdre.~ */ DO ~Damage(Protagonist,LOWER,25)
SetGlobal("P_Journal","GLOBAL",2)
~ GOTO 8
  IF ~  HPLT(Protagonist,26)
~ THEN REPLY #46228 /* ~Continue de t'intéresser au dodécaèdre.~ */ DO ~Damage(Protagonist,LOWER,25)
SetGlobal("P_Journal","GLOBAL",2)
~ GOTO 9
  IF ~~ THEN REPLY #46229 /* ~Range le dodécaèdre.~ */ EXIT
END

IF ~~ THEN BEGIN 7 // from: 2.2
  SAY #46230 /* ~En quelques secondes, tu positionnes les quatre premières faces comme elles doivent l'être. Au moment où tu t'apprêtes à faire pivoter la cinquième, des lames jaillissent entre les faces de l'objet et te lacèrent les mains. Plusieurs de tes doigts manquent d'être tranchés sur le coup. Laissant tomber le dodécaèdre, tu t'effondres et tu te vides de ton sang. Alors que toute sensation te fuit et que les ténèbres se referment sur toi, tu te souviens, mais trop tard, comment éviter ce piège.~ */
  IF ~~ THEN REPLY #46231 /* ~Tu sombres dans l'obscurité…~ */ DO ~Kill(Protagonist)
~ EXIT
END

IF ~~ THEN BEGIN 8 // from: 3.1 6.0 13.1
  SAY #46232 /* ~Après avoir évité les lames, tu réfléchis soigneusement aux rotations qu'il te faut ensuite accomplir. Lorsque tu tournes la neuvième face, le dodécaèdre te crache un jet de gaz en pleine figure. Pris de vertige et à demi-aveuglé par le nuage de vapeur toxique, tu te mets à vomir, l'estomac secoué de spasmes douloureux. Un peu tard, tu te souviens comment contourner ce piège.~ */
  IF ~  HPGT(Protagonist,25)
~ THEN REPLY #46233 /* ~Continue de t'intéresser au dodécaèdre.~ */ DO ~Damage(Protagonist,LOWER,25)
SetGlobal("P_Journal","GLOBAL",3)
~ GOTO 10
  IF ~  HPLT(Protagonist,26)
~ THEN REPLY #46234 /* ~Continue de t'intéresser au dodécaèdre.~ */ DO ~Damage(Protagonist,LOWER,25)
SetGlobal("P_Journal","GLOBAL",3)
~ GOTO 11
  IF ~~ THEN REPLY #46235 /* ~Range le dodécaèdre.~ */ EXIT
END

IF ~~ THEN BEGIN 9 // from: 3.2 6.1 13.2
  SAY #46236 /* ~Après avoir évité les lames, tu réfléchis soigneusement aux rotations qu'il te faut ensuite accomplir. Lorsque tu tournes la neuvième face, le dodécaèdre te crache un jet de gaz en pleine figure. Pris de vertige et à demi-aveuglé par le nuage de vapeur toxique, tu te mets à vomir, l'estomac secoué de spasmes douloureux. Un peu tard, tu te souviens comment contourner ce piège. Tu meurs dans d'atroces souffrances, le corps pris de violentes convulsions jusqu'à l'ultime instant, le dodécaèdre collé contre la poitrine.~ */
  IF ~~ THEN REPLY #46321 /* ~Tu sombres dans l'obscurité…~ */ DO ~Kill(Protagonist)
~ EXIT
END

IF ~~ THEN BEGIN 10 // from: 4.1 8.0 14.1
  SAY #46237 /* ~Après avoir évité le gaz mortel, tu t'intéresses aux dernières faces. Alors que tu amènes la douzième et dernière face dans la position prévue à cet effet, des runes magiques cachées au cœur du dodécaèdre libèrent une tempête violente mais extrêmement localisée. Des éclairs bleutés te frappent en maints endroits au niveau des bras et ta chair noircit immédiatement aux points d'impact. Une fois que les derniers spasmes ont quitté tes muscles malmenés, tu te reprends et tu te souviens comment éviter ce piège. Tu ajustes la position de la dernière face ; un cliquetis retentit et le dodécaèdre s'ouvre dans tes mains…~ */
  IF ~~ THEN REPLY #16191 /* ~Continue…~ */ GOTO 12
END

IF ~~ THEN BEGIN 11 // from: 4.2 8.1 14.2
  SAY #46238 /* ~Après avoir évité le gaz mortel, tu t'intéresses aux dernières faces. Alors que tu amènes la douzième et dernière face dans la position prévue à cet effet, des runes magiques cachées au cœur du dodécaèdre libèrent une tempête violente mais extrêmement localisée. Des éclairs bleutés te frappent en maints endroits au niveau des bras et ta chair noircit immédiatement aux points d'impact. Alors que tu t'effondres, pris de spasmes, tu te souviens comment éviter ce piège. Mais il est trop tard et tu succombes à la violence du choc…~ */
  IF ~~ THEN REPLY #46615 /* ~"Comment est-ce qu'un tel… truc est… sacrénom !"~ */ DO ~Kill(Protagonist)
~ EXIT
END

IF ~~ THEN BEGIN 12 // from: 5.0 10.0 15.0
  SAY #46239 /* ~Le dodécaèdre se fend une fois, deux fois, et, à l'encontre de toutes les lois naturelles, se déploie en une tablette parfaitement rectangulaire. D'étranges symboles sont gravés à sa surface. On dirait un code ou un langage qui devrait t'être familier… mais qui ne l'est pas. Un examen plus attentif te montre que redisposer les facettes pentagonales qui se trouvent à présent sous la tablette affiche des 'pages' différentes sur le dessus. Tu finis par comprendre que ce dodécaèdre est une sorte de livre ou de journal.~ */
  IF ~~ THEN REPLY #46240 /* ~"Hmm… jusqu'à ce que j'apprenne cette langue, autant le laisser de côté."~ */ JOURNAL #56754 /* ~J'ai réussi à ouvrir le dodécaèdre piégé, et il semblerait qu'il s'agisse d'une sorte de livre ou de journal. Je suis incapable de déchiffrer la langue dans laquelle il a été écrit. Peut-être trouverai-je à la Salle des Fêtes un linguiste ou érudit capable de m'aider.~ */ EXIT
END

IF ~  Global("P_Journal","GLOBAL",1)
~ THEN BEGIN 13 // from:
  SAY #46241 /* ~Tu soulèves le dodécaèdre gris et froid pour l'examiner de plus près, conscient de la présence des lames qui attendent de châtier les inconscients.~ */
  IF ~  CheckStatGT(Protagonist,12,INT)
~ THEN REPLY #46242 /* ~Continue de t'intéresser au dodécaèdre.~ */ DO ~SetGlobal("P_Journal","GLOBAL",2)
~ GOTO 4
  IF ~  CheckStatLT(Protagonist,13,INT)
HPGT(Protagonist,25)
~ THEN REPLY #46243 /* ~Continue de t'intéresser au dodécaèdre.~ */ DO ~Damage(Protagonist,LOWER,25)
SetGlobal("P_Journal","GLOBAL",2)
~ GOTO 8
  IF ~  CheckStatLT(Protagonist,13,INT)
HPLT(Protagonist,26)
~ THEN REPLY #46244 /* ~Continue de t'intéresser au dodécaèdre.~ */ DO ~Damage(Protagonist,LOWER,25)
SetGlobal("P_Journal","GLOBAL",2)
~ GOTO 9
  IF ~~ THEN REPLY #46245 /* ~Range le dodécaèdre.~ */ EXIT
END

IF ~  Global("P_Journal","GLOBAL",2)
~ THEN BEGIN 14 // from:
  SAY #46246 /* ~Tu soulèves le dodécaèdre gris et froid pour l'examiner de plus près, conscient de la présence des lames et du gaz toxique qui attendent de châtier les inconscients.~ */
  IF ~  CheckStatGT(Protagonist,15,INT)
~ THEN REPLY #46247 /* ~Continue de t'intéresser au dodécaèdre.~ */ DO ~SetGlobal("P_Journal","GLOBAL",3)
GiveExperience(Protagonist,5000)
~ GOTO 5
  IF ~  CheckStatLT(Protagonist,16,INT)
HPGT(Protagonist,25)
~ THEN REPLY #46248 /* ~Continue de t'intéresser au dodécaèdre.~ */ DO ~Damage(Protagonist,LOWER,25)
SetGlobal("P_Journal","GLOBAL",3)
GiveExperience(Protagonist,5000)
~ GOTO 10
  IF ~  CheckStatLT(Protagonist,16,INT)
HPLT(Protagonist,26)
~ THEN REPLY #46249 /* ~Continue de t'intéresser au dodécaèdre.~ */ DO ~Damage(Protagonist,LOWER,25)
SetGlobal("P_Journal","GLOBAL",3)
GiveExperience(Protagonist,5000)
~ GOTO 11
  IF ~~ THEN REPLY #46250 /* ~Range le dodécaèdre.~ */ EXIT
END

IF ~  Global("P_Journal","GLOBAL",3)
~ THEN BEGIN 15 // from:
  SAY #46251 /* ~Tu soulèves le dodécaèdre gris et froid pour l'examiner de plus près, conscient de la présence des divers pièges qui attendent de châtier les inconscients et de la façon de les contourner.~ */
  IF ~~ THEN REPLY #46252 /* ~Déplie-le.~ */ GOTO 12
  IF ~~ THEN REPLY #46253 /* ~Range le dodécaèdre.~ */ EXIT
END

IF ~  Global("P_Journal","GLOBAL",4)
~ THEN BEGIN 16 // from:
  SAY #46254 /* ~Tu soulèves le dodécaèdre gris et froid pour l'examiner de plus près, conscient de la présence des divers pièges qui attendent de châtier les inconscients et de la façon de les contourner. Comme tu connais le langage des Uyos, tu vas pouvoir déchiffrer le texte caché par le dodécaèdre.~ */
  IF ~~ THEN REPLY #46255 /* ~Déplie le dodécaèdre et lis-le.~ */ DO ~GiveExperience(Protagonist,10000)
SetGlobal("P_Journal","GLOBAL",5)
SetGlobal("Journal","GLOBAL",1)
~ JOURNAL #66194 /* ~J'ai enfin percé l'ultime mystère du dodécaèdre piégé. Ce dernier est en fait un journal, rédigé par une de mes incarnations qui avait sérieusement perdu la boule.~ */ GOTO 17
  IF ~~ THEN REPLY #46256 /* ~Range le dodécaèdre.~ */ EXIT
END

IF ~~ THEN BEGIN 17 // from: 16.0
  SAY #46257 /* ~La tablette s'avère être une sorte de journal, manifestement tenu par l'une de tes incarnations précédentes… incarnation qui ne devait pas avoir toute sa tête, s'il faut en juger par ce qu'elle a écrit. Seuls quelques passages sont cohérents.~ */
  IF ~~ THEN REPLY #46258 /* ~Parcours-le.~ */ GOTO 19
  IF ~~ THEN REPLY #46259 /* ~Range le journal.~ */ EXIT
END

IF ~  Global("P_Journal","GLOBAL",5)
~ THEN BEGIN 18 // from:
  SAY #46260 /* ~Tu soulèves le dodécaèdre gris et froid, qui n'est autre qu'un journal piégé et codé par l'une de tes précédentes incarnations.~ */
  IF ~~ THEN REPLY #46261 /* ~Déplie le journal et lis-le.~ */ GOTO 19
  IF ~~ THEN REPLY #46262 /* ~Range le journal.~ */ EXIT
END

IF ~~ THEN BEGIN 19 // from: 17.0 18.0 20.0 21.0 22.0 23.0 24.0 25.1 26.0 27.0 28.0 29.1 30.1 31.1 32.0 33.0 34.0
  SAY #46263 /* ~Que souhaites-tu lire ?~ */
  IF ~~ THEN REPLY #46264 /* ~Lis ce qui concerne les "ombres murmurantes".~ */ GOTO 20
  IF ~~ THEN REPLY #46265 /* ~Lis ce qui concerne la fille-fantôme.~ */ GOTO 21
  IF ~~ THEN REPLY #46266 /* ~Lis ce qui t'explique que tu as caché quelque chose dans ton propre corps.~ */ GOTO 22
  IF ~~ THEN REPLY #46267 /* ~Lis quelques délires paranoïaques.~ */ GOTO 23
  IF ~~ THEN REPLY #46268 /* ~Lis ce qui concerne les tatouages "maudits".~ */ GOTO 24
  IF ~~ THEN REPLY #46269 /* ~Lis ce qui concerne les rêves et Ravel.~ */ GOTO 25
  IF ~~ THEN REPLY #46270 /* ~Lis ce qui évoque le danger des noms.~ */ GOTO 26
  IF ~~ THEN REPLY #46271 /* ~Lis ce qui concerne le meurtre de la Salle des Fêtes.~ */ GOTO 27
  IF ~~ THEN REPLY #46272 /* ~Lis ce qui concerne le meurtre de quelqu'un qui a essayé de t'aider.~ */ GOTO 28
  IF ~~ THEN REPLY #46273 /* ~Lis une réponse énigmatique en provenance d'une source inconnue.~ */ GOTO 29
  IF ~  Global("Know_Nameless_Legacy","GLOBAL",0)
~ THEN REPLY #46274 /* ~Lis quelque chose au sujet d'un héritage.~ */ DO ~SetGlobal("Know_Iannis_Fire_Responsible","GLOBAL",1)
SetGlobal("Know_Nameless_Legacy","GLOBAL",1)
~ GOTO 34
  IF ~  Global("Know_Nameless_Legacy","GLOBAL",1)
~ THEN REPLY #53673 /* ~Lis quelque chose au sujet d'un héritage.~ */ GOTO 34
  IF ~~ THEN REPLY #47074 /* ~Rien. Range le journal.~ */ EXIT
END

IF ~~ THEN BEGIN 20 // from: 19.0
  SAY #46275 /* ~"Les murmures ne sont pas les ombres MOUVANTES. Ils PARLENT et COMPLOTENT sans cesse. Je les comprends en partie."~ */
  IF ~~ THEN REPLY #46276 /* ~Lis autre chose.~ */ GOTO 19
  IF ~~ THEN REPLY #46277 /* ~Range le journal.~ */ EXIT
END

IF ~~ THEN BEGIN 21 // from: 19.1
  SAY #46278 /* ~"Le livre me dit des choses, me les susurre. Il m'a conseillé d'éviter la fille-fantôme, de l'éviter, JE NE LA CONNAIS PAS mais elle me TOURMENTE."~ */
  IF ~~ THEN REPLY #46279 /* ~Lis autre chose.~ */ GOTO 19
  IF ~~ THEN REPLY #46280 /* ~Range le journal.~ */ EXIT
END

IF ~~ THEN BEGIN 22 // from: 19.2
  SAY #46281 /* ~"Et je l'ai AVALÉ, dans l'ESPOIR qu'il se coincerait dans mes BOYAUX et que je pourrais inciter quelqu'un à me l'OTER quand j'en aurais besoin."~ */
  IF ~~ THEN REPLY #46282 /* ~Lis autre chose.~ */ GOTO 19
  IF ~~ THEN REPLY #46284 /* ~Range le journal.~ */ EXIT
END

IF ~~ THEN BEGIN 23 // from: 19.3
  SAY #46283 /* ~"J'ai appris que MA VIE NE M'APPARTIENT PAS. Je ne te laisserai PAS me la prendre…"

"Il faudra que TU arraches ma vie à mon CORPS BRISÉ si tu la veux…"

"C'est TOI qui MOURRAS. Si je ne peux l'avoir, TU ne l'auras pas NON PLUS."

"TU ES RESPONSABLE DE CETTE TRAHISON DE MA CHAIR ; JE NE TE LAISSERAI PAS VIVRE MA VIE."~ */
  IF ~~ THEN REPLY #46285 /* ~Lis autre chose.~ */ GOTO 19
  IF ~~ THEN REPLY #46286 /* ~Range le journal.~ */ EXIT
END

IF ~~ THEN BEGIN 24 // from: 19.4
  SAY #46287 /* ~"Ces maudits TATOUAGES refusent de s'effacer ! J'ai voulu les ôter par le feu - et j'ai ÉCHOUÉ, échoué ! Quand j'essaie de les DISSIMULER, je sens que les gens lisent ma CHAIR, qu'ils me lisent ainsi qu'ils liraient un LIVRE. Quand ils me REGARDENT, j'ai envie de leur ARRACHER LES YEUX, de les extirper de leurs orbites et de les ÉCRASER SOUS MON TALON…"~ */
  IF ~~ THEN REPLY #46288 /* ~Lis autre chose.~ */ GOTO 19
  IF ~~ THEN REPLY #46289 /* ~Range le journal.~ */ EXIT
END

IF ~~ THEN BEGIN 25 // from: 19.5
  SAY #46290 /* ~"POURQUOI EST-CE QUE JE NE RÊVE JAMAIS ?"

"J'ai utilisé le Gobelet de Sémir pour me forcer à faire un RÊVE ÉVEILLÉ. J'ai vu une GUENAUDE. Elle m'a TENTÉ et m'a MENACÉ de ses OMBRES ! Je ne l'ai jamais VUE, mais elle m'est apparue dans mon SOMMEIL. Je ne dois PLUS JAMAIS rêver. Je dois toujours rester CONSCIENT. J'AI DÉTRUIT LE GOBELET."

"Elle dit qu'elle est PUISSANTE et qu'elle finira par me TROUVER et me faire SIEN. Va-t'en, MAUDITE GUENAUDE ! Laisse-moi TRANQUILLE ! Je ne veux RIEN avoir à faire avec toi !"~ */
  IF ~~ THEN REPLY #46291 /* ~Continue de lire cette partie du journal.~ */ GOTO 33
  IF ~~ THEN REPLY #46292 /* ~Lis autre chose.~ */ GOTO 19
  IF ~~ THEN REPLY #46293 /* ~Range le journal.~ */ EXIT
END

IF ~~ THEN BEGIN 26 // from: 19.6
  SAY #46294 /* ~"Crains les NOMS, car ils sont synonymes de pouvoir. Ils peuvent être utilisés comme des ARMES par les AUTRES. Ils sont un FIL permettant de TE PISTER TE TRAQUER TE TROUVER dans l'infinité des plans. Reste SANS NOM et tu ne risqueras RIEN."~ */
  IF ~~ THEN REPLY #46295 /* ~Lis autre chose.~ */ GOTO 19
  IF ~~ THEN REPLY #46296 /* ~Range le journal.~ */ EXIT
END

IF ~~ THEN BEGIN 27 // from: 19.7
  SAY #46297 /* ~"Je suis allé à la Salle des Fêtes chercher la voie de mon ÊTRE FACTICE dans ses murs. Elle était VISIBLE à tel point que ceux que je ne connaissais pas, les FACTICES, m'ont DONNÉ leur confiance, traité en AMI, montré MA CHAMBRE, satisfait mes BESOINS. J'ai dû me retenir de les attaquer. Cela aurait été prématuré. Tout d'abord, il me fallait PROTÉGER mon IDENTITÉ. J'en ai trouvé un qui connaissait la langue secrète Uyo, je l'ai apprise de mon mieux, et puis je l'ai TUÉ. Ensuite, j'ai pénétré dans le sensorium et je me suis préparé à mettre un TERME à cette affaire. Bientôt, très bientôt…"~ */
  IF ~~ THEN REPLY #46298 /* ~Lis autre chose.~ */ GOTO 19
  IF ~~ THEN REPLY #46299 /* ~Range le journal.~ */ EXIT
END

IF ~~ THEN BEGIN 28 // from: 19.8
  SAY #46300 /* ~"Il n'y a RIEN qu'il puisse faire. Il dit que mes souvenirs ont DISPARU et que je ne les retrouverai JAMAIS. Il affirme (MENTEUR !) qu'il me l'avait déjà dit. Il prétend que mon esprit s'AFFAIBLIT chaque fois que je meurs ! MENSONGES ! Il ne cesse de TRAHIR ma CONFIANCE !"
"Il dit qu'il me faut encore TROIS MORTS ET TROIS VIES pour que je puisse retrouver mes souvenirs, mais que le MOI que je suis MOURRA alors. MOURIR ! Comment est-ce possible lorsque l'on est immortel ? Il n'a pas su me répondre, INCAPABLE qu'il est. Je l'ai MASSACRÉ afin que mes incarnations suivantes n'aient pas à souffrir de son INCOMPÉTENCE."~ */
  IF ~~ THEN REPLY #46302 /* ~Lis autre chose.~ */ GOTO 19
  IF ~~ THEN REPLY #46303 /* ~Range le journal.~ */ EXIT
END

IF ~~ THEN BEGIN 29 // from: 19.9
  SAY #46301 /* ~"Voici ce qu'a dit l'HORRIBLE TÊTE :"

"TU as été DIVISÉ. Tu n'es que L'UN DE TANT (l'un de TANT D'HOMMES ?). Tu portes de nombreux NOMS, qui tous ont laissé leur marque dans tes chairs…"~ */
  IF ~~ THEN REPLY #46304 /* ~Continue de lire cette partie du journal.~ */ GOTO 30
  IF ~~ THEN REPLY #46305 /* ~Lis autre chose.~ */ GOTO 19
  IF ~~ THEN REPLY #46306 /* ~Range le journal.~ */ EXIT
END

IF ~~ THEN BEGIN 30 // from: 29.0
  SAY #46307 /* ~L'ÉGARÉ
L'IMMORTEL
FIN D'INCARNATION
L'HOMME AUX MILLE MORTS
L'HOMME CONDAMNÉ À VIVRE
LE SANS REPOS
L'UN DE TANT
LE PRISONNIER DE L'EXISTENCE
CELUI PAR QUI LES OMBRES ARRIVENT
LE BLESSÉ
TRAÎNE-MISÈRE
YEMETH~ */
  IF ~~ THEN REPLY #46308 /* ~Continue de lire cette partie du journal.~ */ GOTO 31
  IF ~~ THEN REPLY #46309 /* ~Lis autre chose.~ */ GOTO 19
  IF ~~ THEN REPLY #46310 /* ~Range le journal.~ */ EXIT
END

IF ~~ THEN BEGIN 31 // from: 30.0
  SAY #46311 /* ~"TU es un bout de verre argenté qui s'est CRAQUELÉ et dont les morceaux ont été éparpillés aux confins de l'histoire."

"UNE SEULE PIÈCE a de l'importance. Retrouve-la et tu récupéreras ta VIE. Il y a un prix à payer, qui t'offrira une chance. Sans elle, tu es PERDU…"~ */
  IF ~~ THEN REPLY #46312 /* ~Continue de lire cette partie du journal.~ */ GOTO 32
  IF ~~ THEN REPLY #46313 /* ~Lis autre chose.~ */ GOTO 19
  IF ~~ THEN REPLY #46314 /* ~Range le journal.~ */ EXIT
END

IF ~~ THEN BEGIN 32 // from: 31.0
  SAY #46315 /* ~"TU AS PERDU L'ESSENCE MÊME DE L'HUMANITÉ. TA MORTALITÉ T'A ÉTÉ ARRACHÉE ET TU NE L'AS PLUS. ELLE EXISTE TOUJOURS, MAIS TU DOIS LA RETROUVER AVANT DE PERDRE ÉGALEMENT LA RAISON."~ */
  IF ~~ THEN REPLY #46316 /* ~Lis autre chose.~ */ GOTO 19
  IF ~~ THEN REPLY #46317 /* ~Range le journal.~ */ EXIT
END

IF ~~ THEN BEGIN 33 // from: 25.0
  SAY #46318 /* ~"Sa voix m'a fait penser aux GRIFFES du mal. Telles des ARAIGNÉES, elles se sont ENFONCÉES dans ma matière grise. HORS de mon ESPRIT, maudite guenaude !"

"C'était un MYTHE, un CONTE DE FÉES qui, seul, a DÉFIÉ la DAME DES DOULEURS. Comment COMBATTRE un MYTHE ? Je ne possède pas les ARMES nécessaires. J'ai besoin d'en trouver qui me permettront de la TUER si jamais elle me TROUVE. Il me faut également une STRATÉGIE pour l'emporter si elle VIENT ME CHERCHER. Je dois PENSER, PRÉVOIR… et je finirai par la VAINCRE."~ */
  IF ~~ THEN REPLY #46319 /* ~Lis autre chose.~ */ GOTO 19
  IF ~~ THEN REPLY #46320 /* ~Range le journal.~ */ EXIT
END

IF ~~ THEN BEGIN 34 // from: 19.10 19.11
  SAY #47071 /* ~"La note faisait mention d'un HÉRITAGE : 'N'OUBLIE PAS D'ALLER CHERCHER TON HÉRITAGE'. Et un CODE était inscrit à côté : 51-AA…"

"Nul doute qu'il s'agit d'un PIÈGE, conçu par un autre de mes FAUX MOI. Je le DÉTRUIRAI."~ */
  IF ~~ THEN REPLY #47079 /* ~Lis autre chose.~ */ GOTO 19
  IF ~~ THEN REPLY #47081 /* ~Range le journal.~ */ EXIT
END
