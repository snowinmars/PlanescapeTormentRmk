// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DHAILCII.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\fr_FR\dialog.tlk
// dialogF  : (none)

BEGIN ~DHAILCII~
//////////////////////////////////////////////////
// WARNING: this file contains non-trivial WEIGHTs
//////////////////////////////////////////////////

IF WEIGHT #0 ~  GlobalGT("Kill_Githzerai_KAPUTZ","GLOBAL",0)
~ THEN BEGIN 0 // from:
  SAY #2919 /* ~Ce guerrier githzeraï à l'air compétent te regarde approcher avec attention. Soudain, quand il te juge suffisamment prêt, il dégaine son épée et t'attaque !~ */
  IF ~~ THEN REPLY #45139 /* ~Bats-toi.~ */ DO ~Enemy()
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
~ EXIT
  IF ~~ THEN REPLY #45140 /* ~Fuis.~ */ DO ~Enemy()
Attack(Protagonist)
~ EXIT
END

IF WEIGHT #2 /* Triggers after states #: 10 even though they appear after this state */
~  !NearbyDialog("DDakkon")
NumTimesTalkedTo(0)
GlobalGT("Vristigor","GLOBAL",1)
~ THEN BEGIN 1 // from:
  SAY #45141 /* ~L'homme a les traits émaciés et le teint jaunâtre. Son corps est couvert de tatouages et de cicatrices et il porte une longue épée en travers de la poitrine. Ses yeux ressemblent à deux petites billes noires. Il s'incline en te voyant approcher. "Bonjour, sonneur d'épées. Je suis au courant de ton intervention opportune. Demande-moi ce que tu veux savoir."~ */
  IF ~~ THEN REPLY #45142 /* ~"Qui es-tu ?"~ */ GOTO 18
  IF ~~ THEN REPLY #45143 /* ~"Peux-tu te joindre à mon groupe ?"~ */ GOTO 2
  IF ~~ THEN REPLY #45144 /* ~"Où as-tu écopé de ces cicatrices ?"~ */ GOTO 4
  IF ~~ THEN REPLY #45145 /* ~"Où as-tu eu ces tatouages ?"~ */ GOTO 5
  IF ~  Global("Know_Githyanki","GLOBAL",0)
Global("Met_Githyanki","GLOBAL",1)
~ THEN REPLY #45146 /* ~"Quelle est la différence entre les githzeraïs et les githyankis ?"~ */ DO ~SetGlobal("Know_Githyanki","GLOBAL",1)
~ GOTO 6
  IF ~  Global("Know_Githyanki","GLOBAL",1)
~ THEN REPLY #45147 /* ~"Quelle est la différence entre les githzeraïs et les githyankis ?"~ */ GOTO 6
  IF ~  Global("Know_Githzerai_Speak","GLOBAL",0)
~ THEN REPLY #45148 /* ~"Peux-tu m'apprendre à parler ta langue ?"~ */ GOTO 7
  IF ~~ THEN REPLY #45149 /* ~"Je n'ai besoin de rien, merci. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.1 3.1 9.0 21.1 22.1
  SAY #45150 /* ~"Je ne peux le faire. J'ai un devoir envers les miens."~ */
  IF ~~ THEN REPLY #45151 /* ~"De quel devoir parles-tu ?"~ */ GOTO 47
  IF ~~ THEN REPLY #45152 /* ~"Dans ce cas, j'aimerais bien te poser deux ou trois autres questions."~ */ GOTO 3
END

IF ~~ THEN BEGIN 3 // from: 2.1 6.1 7.0 8.0 12.0 13.1 14.0 14.1 15.2 16.1 17.1 18.3 19.0 19.1 20.0 23.0 24.0 26.0 40.2 47.0
  SAY #45153 /* ~"Pose tes questions, mais évite de te comporter comme Ach'ali alors qu'il se noyait : sois direct et sans détour."~ */
  IF ~~ THEN REPLY #45154 /* ~"Qui es-tu ?"~ */ GOTO 18
  IF ~~ THEN REPLY #45155 /* ~"Peux-tu te joindre à mon groupe ?"~ */ GOTO 2
  IF ~~ THEN REPLY #45156 /* ~"Où as-tu écopé de ces cicatrices ?"~ */ GOTO 4
  IF ~~ THEN REPLY #45157 /* ~"Où as-tu eu ces tatouages ?"~ */ GOTO 5
  IF ~  Global("Know_Githyanki","GLOBAL",0)
Global("Met_Githyanki","GLOBAL",1)
~ THEN REPLY #45158 /* ~"Quelle est la différence entre les githzeraïs et les githyankis ?"~ */ DO ~SetGlobal("Know_Githyanki","GLOBAL",1)
~ GOTO 6
  IF ~  Global("Know_Githyanki","GLOBAL",1)
~ THEN REPLY #45159 /* ~"Quelle est la différence entre les githzeraïs et les githyankis ?"~ */ GOTO 6
  IF ~  Global("Know_Githzerai_Speak","GLOBAL",0)
~ THEN REPLY #45160 /* ~"Peux-tu m'apprendre à parler ta langue ?"~ */ GOTO 7
  IF ~~ THEN REPLY #45161 /* ~"Je n'ai besoin de rien, merci. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 1.2 3.2 9.1 21.2 22.2 25.1
  SAY #45162 /* ~Il lève les mains et les place avec révérence devant son visage, puis sa poitrine. "Ces cicatrices qui me défigurent, je les tiens de divers affrontements dans les galeries d'Ilsensine. Mes rrakmas se sont presque fait dévorer par des *illithids* d'une grande lâcheté. Quant à la longue cicatrice qui barre ma poitrine, je la dois à l'épée d'un githyanki. Raconte-moi l'histoire des tiennes" ajoute-t-il d'un hochement de tête.~ */
  IF ~~ THEN REPLY #45163 /* ~"À de rares exceptions près, je ne me souviens pas d'où elles proviennent."~ */ GOTO 11
  IF ~~ THEN REPLY #45164 /* ~"Je les ai récoltées au cours de tant de batailles que leur histoire serait bien trop longue à raconter."~ */ GOTO 19
  IF ~  GlobalLT("Hail_Mad","GLOBAL",3)
~ THEN REPLY #45165 /* ~"Ce sont des cicatrices, c'est tout. J'avais d'autres questions à te poser…"~ */ DO ~IncrementGlobal("Hail_Mad","GLOBAL",1)
~ GOTO 9
  IF ~  Global("Hail_Mad","GLOBAL",3)
~ THEN REPLY #45166 /* ~"Ce sont des cicatrices, c'est tout. J'avais d'autres questions à te poser…"~ */ DO ~IncrementGlobal("Hail_Mad","GLOBAL",1)
~ GOTO 10
END

IF ~~ THEN BEGIN 5 // from: 1.3 3.3 9.2 21.3 22.3 25.2
  SAY #45167 /* ~"Mes tatouages racontent l'histoire des miens et me confèrent leur force et leurs facultés de réflexion. L'un d'entre eux, exécuté par Arja'rok de l'île des Phoques, explique comment mon parent Ji'li'kaï a enseveli ses ennemis entre les murailles de Shra'kt'lor. Celui-ci, je le dois à Fell, le dabus qui marche, et il évoque la bataille au cours de laquelle Ro'jhi et moi-même avons affronté sept slaadis dans les Limbes avant qu'un huitième ne mette un terme à l'existence de mon compagnon. Toi aussi, raconte-moi l'histoire de tes tatouages."~ */
  IF ~~ THEN REPLY #45168 /* ~"Ils évoquent ce que j'espère accomplir."~ */ GOTO 13
  IF ~~ THEN REPLY #45169 /* ~"Ils évoquent les obstacles que j'ai surmontés et les exploits que j'ai accomplis, des fois que je vienne à les oublier."~ */ GOTO 14
  IF ~  GlobalLT("Hail_Mad","GLOBAL",3)
~ THEN REPLY #45170 /* ~"Ce sont des tatouages comme les autres. Si tu me parlais de Fell ?"~ */ DO ~IncrementGlobal("Hail_Mad","GLOBAL",1)
~ GOTO 15
  IF ~  Global("Hail_Mad","GLOBAL",3)
~ THEN REPLY #45171 /* ~"Ce sont des tatouages comme les autres. Si tu me parlais de Fell ?"~ */ DO ~IncrementGlobal("Hail_Mad","GLOBAL",1)
~ GOTO 10
  IF ~  GlobalLT("Hail_Mad","GLOBAL",3)
~ THEN REPLY #45172 /* ~"Ce sont des tatouages comme les autres. J'avais encore deux ou trois questions à te poser…"~ */ DO ~IncrementGlobal("Hail_Mad","GLOBAL",1)
~ GOTO 9
  IF ~  Global("Hail_Mad","GLOBAL",3)
~ THEN REPLY #45173 /* ~"Ce sont des tatouages comme les autres. J'avais encore deux ou trois questions à te poser…"~ */ DO ~IncrementGlobal("Hail_Mad","GLOBAL",1)
~ GOTO 10
END

IF ~~ THEN BEGIN 6 // from: 1.4 1.5 3.4 3.5 9.3 9.4 18.0 18.1 21.4 21.5 22.4 22.5 25.3 25.4
  SAY #45174 /* ~Il plisse les yeux et crache par terre. "Ce sont des chiens, des traîtres et des menteurs. Il ne faut leur accorder aucune confiance. Si jamais tu en rencontres un, souviens-toi du cœur de Selqant et de l'œil de Vilquard. Et n'oublie pas que les githyankis sont trois fois pires encore."~ */
  IF ~~ THEN REPLY #45175 /* ~"De quelles leçons s'agit-il ?"~ */ GOTO 8
  IF ~~ THEN REPLY #45176 /* ~"Merci. J'ai d'autres questions…"~ */ GOTO 3
  IF ~~ THEN REPLY #45177 /* ~"Merci. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 7 // from: 1.6 3.6 9.5 18.2 21.6 22.6 25.5
  SAY #45178 /* ~Il s'incline légèrement. "Si je n'avais pas ces obligations envers mon peuple, ce serait un plaisir. Mais je suis invité à la table de Toryg et mon assiette est déjà pleine. Je dois décliner. Peut-être pourras-tu trouver quelqu'un d'autre…"~ */
  IF ~~ THEN REPLY #45179 /* ~"Merci quand même. Il me reste encore une ou deux questions…"~ */ GOTO 3
  IF ~~ THEN REPLY #45180 /* ~"Merci quand même. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 8 // from: 6.0
  SAY #45181 /* ~"Selqant et Vilquar étaient connus pour leur cruauté et leur traîtrise. Mais tous deux étaient githzeraïs. Leurs crimes paraissent bien modestes comparés aux actes des githyankis. Jamais race plus cruelle n'a vogué sur la Mer d'Argent."~ */
  IF ~~ THEN REPLY #45182 /* ~"J'avais d'autres questions…"~ */ GOTO 3
  IF ~~ THEN REPLY #45183 /* ~"Merci pour ton temps. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 9 // from: 4.2 5.4 11.0
  SAY #45184 /* ~Il s'interrompt quelques instants et tu as la sensation que ta réponse ne lui plaît guère. "Pose tes questions, par la noyade d'Ach'ali !"~ */
  IF ~~ THEN REPLY #45185 /* ~"Peux-tu te joindre à mon groupe ?"~ */ GOTO 2
  IF ~~ THEN REPLY #45186 /* ~"Où as-tu écopé de ces cicatrices ?"~ */ GOTO 4
  IF ~~ THEN REPLY #45187 /* ~"Où as-tu eu ces tatouages ?"~ */ GOTO 5
  IF ~  Global("Know_Githyanki","GLOBAL",0)
Global("Met_Githyanki","GLOBAL",1)
~ THEN REPLY #45188 /* ~"Quelle est la différence entre les githzeraïs et les githyankis ?"~ */ DO ~SetGlobal("Know_Githyanki","GLOBAL",1)
~ GOTO 6
  IF ~  Global("Know_Githyanki","GLOBAL",1)
~ THEN REPLY #45191 /* ~"Quelle est la différence entre les githzeraïs et les githyankis ?"~ */ GOTO 6
  IF ~  Global("Know_Githzerai_Speak","GLOBAL",0)
~ THEN REPLY #45192 /* ~"Peux-tu m'apprendre à parler ta langue ?"~ */ GOTO 7
  IF ~~ THEN REPLY #45194 /* ~"Je n'ai besoin de rien, merci. Au revoir."~ */ EXIT
END

IF WEIGHT #1 ~  Global("Hail_Mad","GLOBAL",4)
~ THEN BEGIN 10 // from: 4.3 5.3 5.5 11.1
  SAY #45197 /* ~Il s'incline mais te jette un regard courroucé. "Tes paroles te déshonorent, et moi aussi, car je n'ai d'autre choix que de les entendre. Je n'ai plus rien à te dire." Il ferme les yeux un instant et, quand il les rouvre, fait comme si tu n'étais plus là.~ */
  IF ~~ THEN REPLY #45198 /* ~"Je voulais juste te poser quelques questions…"~ */ EXIT
  IF ~~ THEN REPLY #45199 /* ~"Alors, au revoir."~ */ EXIT
  IF ~~ THEN REPLY #45200 /* ~Frappe-le.~ */ DO ~ForceAttack(Protagonist,Myself)
Enemy()
Attack(Protagonist)
~ EXIT
END

IF ~~ THEN BEGIN 11 // from: 4.0
  SAY #45201 /* ~Son expression se modifie légèrement, mais tu ignores s'il a l'air confus ou méprisant. "Comment des cicatrices peuvent-elles ne pas avoir d'histoire à raconter ?"~ */
  IF ~  GlobalLT("Hail_Mad","GLOBAL",3)
~ THEN REPLY #45202 /* ~"Ce sont des cicatrices sans importance. Tout le monde en a, non ?"~ */ DO ~IncrementGlobal("Hail_Mad","GLOBAL",1)
~ GOTO 9
  IF ~  Global("Hail_Mad","GLOBAL",3)
~ THEN REPLY #45203 /* ~"Ce sont des cicatrices sans importance. Tout le monde en a, non ?"~ */ DO ~IncrementGlobal("Hail_Mad","GLOBAL",1)
~ GOTO 10
  IF ~~ THEN REPLY #45204 /* ~"J'ai perdu tout souvenir de leur passé et du mien."~ */ GOTO 12
END

IF ~~ THEN BEGIN 12 // from: 11.2
  SAY #45205 /* ~Il s'interrompt un instant, comme pour digérer ce que tu viens de lui dire, puis : "Par T'cha l'Infortuné, je pleure ta perte de mémoire et d'histoire."~ */
  IF ~~ THEN REPLY #45206 /* ~"Merci. J'avais encore quelques questions…"~ */ GOTO 3
  IF ~~ THEN REPLY #45207 /* ~"Merci. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 13 // from: 5.0
  SAY #45208 /* ~Il attend un instant, puis ferme les yeux et s'incline de nouveau. "Tes tatouages ramènent l'avenir au présent et lui donnent une meilleure définition. Ils recèlent la sagesse des anarques. Je prends bonne note de tes histoires."~ */
  IF ~~ THEN REPLY #45209 /* ~"Merci. Tu parlais de Fell ?"~ */ GOTO 15
  IF ~~ THEN REPLY #45210 /* ~"Merci. J'ai d'autres questions…"~ */ GOTO 3
  IF ~~ THEN REPLY #45211 /* ~"Merci. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 14 // from: 5.1
  SAY #45212 /* ~Il ferme les yeux et s'incline. "Je prends bonne note de tes histoires, sonneur d'épées."~ */
  IF ~~ THEN REPLY #45213 /* ~"Toi aussi. J'avais encore deux ou trois questions…"~ */ DO ~IncrementGlobal("Hail_Mad","GLOBAL",-1)
~ GOTO 3
  IF ~~ THEN REPLY #45214 /* ~"J'avais d'autres questions…"~ */ GOTO 3
  IF ~~ THEN REPLY #45215 /* ~"Toi aussi. Au revoir."~ */ DO ~IncrementGlobal("Hail_Mad","GLOBAL",-1)
~ EXIT
  IF ~~ THEN REPLY #45216 /* ~"Merci. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 15 // from: 5.2 13.0
  SAY #45217 /* ~"Le dabus-qui-marche est passé maître dans cet art. Certains tatouages racontent des légendes. D'autres parlent des esprits. Les tatouages que Fell inscrit sur la peau confèrent force au corps et force à l'esprit selon la légende racontée."~ */
  IF ~  Global("Fell","GLOBAL",0)
~ THEN REPLY #45218 /* ~"Où puis-je trouver Fell ?"~ */ GOTO 16
  IF ~~ THEN REPLY #45219 /* ~"Quelle sorte de force ?"~ */ GOTO 17
  IF ~~ THEN REPLY #45220 /* ~"Merci. J'ai d'autres questions…"~ */ GOTO 3
  IF ~~ THEN REPLY #45221 /* ~"Merci. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 16 // from: 15.0 17.0 40.0
  SAY #45222 /* ~"Tu le trouveras dans la Ruche, qui est située au nord du quartier sud-est. Il est difficile de se repérer dans cette ville. Autant essayer de comprendre les divagations d'un anarque qui ne se connaît pas lui-même."~ */
  IF ~~ THEN REPLY #45223 /* ~"Quelle sorte de force ces tatouages peuvent-ils conférer ?"~ */ GOTO 17
  IF ~~ THEN REPLY #45224 /* ~"J'avais d'autres questions…"~ */ GOTO 3
  IF ~~ THEN REPLY #45225 /* ~"Merci. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 17 // from: 15.1 16.0 40.1
  SAY #45226 /* ~"Le tatouage de Ro'jhi, qui a tué sept slaadis, me confère une grande force lorsque je me retrouve face à de nombreux adversaires. L'aide que chaque tatouage apporte dépend de ce qu'il évoque. Raconte tes histoires à Fell et tes tatouages te conféreront leur pouvoir quand leur histoire sera gravée dans ta chair."~ */
  IF ~~ THEN REPLY #45227 /* ~"Où est-ce que je peux le trouver ?"~ */ GOTO 16
  IF ~~ THEN REPLY #45228 /* ~"Merci. J'ai d'autres questions…"~ */ GOTO 3
  IF ~~ THEN REPLY #45229 /* ~"Merci. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 18 // from: 1.0 3.0 21.0 22.0 25.0
  SAY #45230 /* ~Il s'incline devant toi. "Je suis Hailcii'n, soldat githzeraï. Je suis ici pour rassembler des provisions. J'ai découvert que cette ville était semblable à la gemme de Try'ig'or ; beaucoup de gens en disent du bien, mais elle n'a en fait que peu de valeur."~ */
  IF ~  Global("Know_Githyanki","GLOBAL",0)
Global("Met_Githyanki","GLOBAL",1)
~ THEN REPLY #45231 /* ~"Quelle est la différence entre les githzeraïs et les githyankis ?"~ */ DO ~SetGlobal("Know_Githyanki","GLOBAL",1)
~ GOTO 6
  IF ~  Global("Know_Githyanki","GLOBAL",1)
~ THEN REPLY #45232 /* ~"Quelle est la différence entre les githzeraïs et les githyankis ?"~ */ GOTO 6
  IF ~  Global("Know_Githzerai_Speak","GLOBAL",0)
~ THEN REPLY #45233 /* ~"Peux-tu m'apprendre à parler ta langue ?"~ */ GOTO 7
  IF ~~ THEN REPLY #45234 /* ~"J'avais d'autres questions…"~ */ GOTO 3
  IF ~~ THEN REPLY #45235 /* ~"Merci. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 19 // from: 4.1
  SAY #45236 /* ~Il te fait un petit signe de tête. "Je connais tes prouesses, sonneur d'épées."~ */
  IF ~~ THEN REPLY #45237 /* ~"Toi aussi. J'avais encore une ou deux questions…"~ */ DO ~IncrementGlobal("Hail_Mad","GLOBAL",-1)
~ GOTO 3
  IF ~~ THEN REPLY #45238 /* ~"J'avais d'autres questions…"~ */ GOTO 3
  IF ~~ THEN REPLY #45239 /* ~"Toi aussi. Au revoir."~ */ DO ~IncrementGlobal("Hail_Mad","GLOBAL",-1)
~ EXIT
  IF ~~ THEN REPLY #45240 /* ~"Merci. Au revoir."~ */ EXIT
END

IF WEIGHT #3 ~  !NearbyDialog("DDakkon")
NumTimesTalkedToGT(0)
GlobalGT("Vristigor","GLOBAL",1)
~ THEN BEGIN 20 // from:
  SAY #45241 /* ~Hailcii'n s'incline devant toi. "Bonjour, sonneur d'épées."~ */
  IF ~~ THEN REPLY #45242 /* ~"Bonjour. J'ai quelques questions…"~ */ GOTO 3
  IF ~~ THEN REPLY #45247 /* ~"Au revoir."~ */ EXIT
END

IF WEIGHT #5 /* Triggers after states #: 45 even though they appear after this state */
~  Global("Anazi_Help","GLOBAL",1)
!NearbyDialog("DDakkon")
NumTimesTalkedTo(0)
GlobalLT("Vristigor","GLOBAL",2)
~ THEN BEGIN 21 // from:
  SAY #45248 /* ~L'homme a les traits émaciés et le teint jaunâtre. Son corps est couvert de tatouages et de cicatrices et il porte une longue épée en travers de la poitrine. Ses yeux ressemblent à deux petites billes noires. Il s'incline en te voyant approcher. "Bonjour, sonneur d'épées. Je *sais* que tu es venu en aide au Peuple. Demande-moi ce que tu veux."~ */
  IF ~~ THEN REPLY #45249 /* ~"Qui es-tu ?"~ */ GOTO 18
  IF ~~ THEN REPLY #45250 /* ~"Peux-tu te joindre à mon groupe ?"~ */ GOTO 2
  IF ~~ THEN REPLY #45251 /* ~"Où as-tu écopé de ces cicatrices ?"~ */ GOTO 4
  IF ~~ THEN REPLY #45252 /* ~"Où as-tu eu ces tatouages ?"~ */ GOTO 5
  IF ~  Global("Know_Githyanki","GLOBAL",0)
Global("Met_Githyanki","GLOBAL",1)
~ THEN REPLY #45146 /* ~"Quelle est la différence entre les githzeraïs et les githyankis ?"~ */ DO ~SetGlobal("Know_Githyanki","GLOBAL",1)
~ GOTO 6
  IF ~  Global("Know_Githyanki","GLOBAL",1)
~ THEN REPLY #45147 /* ~"Quelle est la différence entre les githzeraïs et les githyankis ?"~ */ GOTO 6
  IF ~  Global("Know_Githzerai_Speak","GLOBAL",0)
~ THEN REPLY #45261 /* ~"Peux-tu m'apprendre à parler ta langue ?"~ */ GOTO 7
  IF ~~ THEN REPLY #45253 /* ~"Je n'ai besoin de rien, merci. Au revoir."~ */ EXIT
END

IF WEIGHT #6 /* Triggers after states #: 45 even though they appear after this state */
~  GlobalGT("Githzerai","GLOBAL",4)
Global("Anazi_Help","GLOBAL",0)
!NearbyDialog("DDakkon")
NumTimesTalkedTo(0)
GlobalLT("Vristigor","GLOBAL",2)
~ THEN BEGIN 22 // from:
  SAY #45254 /* ~L'homme a les traits émaciés et le teint jaunâtre. Son corps est couvert de tatouages et de cicatrices et il porte une longue épée en travers de la poitrine. Ses yeux ressemblent à deux petites billes noires. Il s'incline en te voyant approcher. "Bonjour, sonneur d'épées. Je *sais* que tu es venu en aide au Peuple. Demande-moi ce que tu veux."~ */
  IF ~~ THEN REPLY #45255 /* ~"Qui es-tu ?"~ */ GOTO 18
  IF ~~ THEN REPLY #45256 /* ~"Peux-tu te joindre à mon groupe ?"~ */ GOTO 2
  IF ~~ THEN REPLY #45257 /* ~"Où as-tu écopé de ces cicatrices ?"~ */ GOTO 4
  IF ~~ THEN REPLY #45258 /* ~"Où as-tu eu ces tatouages ?"~ */ GOTO 5
  IF ~  Global("Know_Githyanki","GLOBAL",0)
Global("Met_Githyanki","GLOBAL",1)
~ THEN REPLY #45259 /* ~"Quelle est la différence entre les githzeraïs et les githyankis ?"~ */ DO ~SetGlobal("Know_Githyanki","GLOBAL",1)
~ GOTO 6
  IF ~  Global("Know_Githyanki","GLOBAL",1)
~ THEN REPLY #45260 /* ~"Quelle est la différence entre les githzeraïs et les githyankis ?"~ */ GOTO 6
  IF ~  Global("Know_Githzerai_Speak","GLOBAL",0)
~ THEN REPLY #45261 /* ~"Peux-tu m'apprendre à parler ta langue ?"~ */ GOTO 7
  IF ~~ THEN REPLY #45262 /* ~"Je n'ai besoin de rien, merci. Au revoir."~ */ EXIT
END

IF WEIGHT #7 /* Triggers after states #: 45 even though they appear after this state */
~  Global("Anazi_Help","GLOBAL",1)
!NearbyDialog("DDakkon")
NumTimesTalkedToGT(0)
GlobalLT("Vristigor","GLOBAL",2)
~ THEN BEGIN 23 // from:
  SAY #45263 /* ~Hailcii'n s'incline devant toi. "Bonjour, sonneur d'épées."~ */
  IF ~~ THEN REPLY #45264 /* ~"Bonjour. J'ai quelques questions…"~ */ GOTO 3
  IF ~~ THEN REPLY #45265 /* ~"Au revoir."~ */ EXIT
END

IF WEIGHT #8 /* Triggers after states #: 45 even though they appear after this state */
~  GlobalGT("Githzerai","GLOBAL",4)
Global("Anazi_Help","GLOBAL",0)
!NearbyDialog("DDakkon")
NumTimesTalkedToGT(0)
GlobalLT("Vristigor","GLOBAL",2)
~ THEN BEGIN 24 // from:
  SAY #45266 /* ~Hailcii'n s'incline devant toi. "Bonjour, sonneur d'épées."~ */
  IF ~~ THEN REPLY #45267 /* ~"Bonjour. J'ai quelques questions…"~ */ GOTO 3
  IF ~~ THEN REPLY #45268 /* ~"Au revoir."~ */ EXIT
END

IF WEIGHT #9 /* Triggers after states #: 45 even though they appear after this state */
~  NumTimesTalkedTo(0)
!NearbyDialog("DDakkon")
GlobalLT("Vristigor","GLOBAL",2)
~ THEN BEGIN 25 // from:
  SAY #45269 /* ~L'homme a les traits émaciés et le teint jaunâtre. Son corps est couvert de tatouages et de cicatrices et il porte une longue épée en travers de la poitrine. Ses yeux ressemblent à deux petites billes noires. Il te regarde approcher et attend que tu parles. "J'ignore qui tu es, répond-il, mais j'accepte de te parler."~ */
  IF ~~ THEN REPLY #45270 /* ~"Qui es-tu ?"~ */ GOTO 18
  IF ~~ THEN REPLY #45271 /* ~"Où as-tu écopé de ces cicatrices ?"~ */ GOTO 4
  IF ~~ THEN REPLY #45272 /* ~"Où as-tu eu ces tatouages ?"~ */ GOTO 5
  IF ~  Global("Know_Githyanki","GLOBAL",0)
Global("Met_Githyanki","GLOBAL",1)
~ THEN REPLY #45273 /* ~"Quelle est la différence entre les githzeraïs et les githyankis ?"~ */ DO ~SetGlobal("Know_Githyanki","GLOBAL",1)
~ GOTO 6
  IF ~  Global("Know_Githyanki","GLOBAL",1)
~ THEN REPLY #45274 /* ~"Quelle est la différence entre les githzeraïs et les githyankis ?"~ */ GOTO 6
  IF ~  Global("Know_Githzerai_Speak","GLOBAL",0)
~ THEN REPLY #45275 /* ~"Peux-tu m'apprendre à parler ta langue ?"~ */ GOTO 7
  IF ~~ THEN REPLY #45276 /* ~"Je n'ai besoin de rien, merci. Au revoir."~ */ EXIT
END

IF WEIGHT #10 /* Triggers after states #: 45 even though they appear after this state */
~  NumTimesTalkedToGT(0)
!NearbyDialog("DDakkon")
GlobalLT("Vristigor","GLOBAL",2)
~ THEN BEGIN 26 // from:
  SAY #45277 /* ~Hailcii'n te regarde calmement approcher et t'accueille d'un ton laconique "Bonjour, voyageur."~ */
  IF ~~ THEN REPLY #45278 /* ~"Bonjour. J'ai quelques questions…"~ */ GOTO 3
  IF ~~ THEN REPLY #45279 /* ~"Au revoir."~ */ EXIT
END

IF WEIGHT #11 /* Triggers after states #: 45 even though they appear after this state */
~  NumTimesTalkedTo(0)
NearbyDialog("DDakkon")
~ THEN BEGIN 27 // from:
  SAY #45280 /* ~L'homme a les traits émaciés et le teint jaunâtre. Son corps est couvert de tatouages et de cicatrices et il porte une longue épée en travers de la poitrine. Ses yeux ressemblent à deux petites billes noires. Il s'incline devant Dak'kon lorsque tu t'approches de lui. "Je suis ton obligé, *zerth*," lui dit-il.~ */
  IF ~~ THEN EXTERN ~DDAKKON~ 160
END

IF ~~ THEN BEGIN 28 // from:
  SAY #45281 /* ~"Ses paroles me sont *connues*, *zerth*, mais ses actes, non. Son ombre évoque un homme qui connaît le combat et qui a vaincu tous ceux qui se dressaient devant lui. Mes yeux sont-ils incapables de voir au-delà du cercle immobile ?"~ */
  IF ~~ THEN EXTERN ~DDAKKON~ 161
END

IF ~~ THEN BEGIN 29 // from:
  SAY #45282 /* ~"J'accepte de l'entendre, *zerth*." Ce disant, il se tourne vers toi : "Pose tes questions et dirige ton interrogatoire comme tu dirigerais ton esprit."~ */
  IF ~~ THEN REPLY #45283 /* ~"Qui es-tu ?"~ */ GOTO 31
  IF ~~ THEN REPLY #45284 /* ~"Où as-tu écopé de ces cicatrices ?"~ */ GOTO 32
  IF ~~ THEN REPLY #45285 /* ~"Où as-tu eu ces tatouages ?"~ */ GOTO 37
  IF ~  Global("Know_Githyanki","GLOBAL",0)
Global("Met_Githyanki","GLOBAL",1)
~ THEN REPLY #45146 /* ~"Quelle est la différence entre les githzeraïs et les githyankis ?"~ */ DO ~SetGlobal("Know_Githyanki","GLOBAL",1)
~ GOTO 48
  IF ~  Global("Know_Githyanki","GLOBAL",1)
~ THEN REPLY #45147 /* ~"Quelle est la différence entre les githzeraïs et les githyankis ?"~ */ GOTO 48
  IF ~  Global("Know_Githzerai_Speak","GLOBAL",0)
~ THEN REPLY #45286 /* ~"Peux-tu m'apprendre à parler ta langue ?"~ */ GOTO 43
  IF ~~ THEN REPLY #45287 /* ~"Je n'ai besoin de rien, merci. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 30 // from: 31.0 34.0 35.0 36.0 38.1 39.1 41.1 42.1 43.0 45.0 46.0 48.1 49.0
  SAY #45288 /* ~"Pose tes questions."~ */
  IF ~~ THEN REPLY #45289 /* ~"Qui es-tu ?"~ */ GOTO 31
  IF ~~ THEN REPLY #45290 /* ~"Où as-tu écopé de ces cicatrices ?"~ */ GOTO 32
  IF ~~ THEN REPLY #45291 /* ~"Où as-tu eu ces tatouages ?"~ */ GOTO 37
  IF ~  Global("Know_Githyanki","GLOBAL",0)
Global("Met_Githyanki","GLOBAL",1)
~ THEN REPLY #45146 /* ~"Quelle est la différence entre les githzeraïs et les githyankis ?"~ */ DO ~SetGlobal("Know_Githyanki","GLOBAL",1)
~ GOTO 48
  IF ~  Global("Know_Githyanki","GLOBAL",1)
~ THEN REPLY #45147 /* ~"Quelle est la différence entre les githzeraïs et les githyankis ?"~ */ GOTO 48
  IF ~  Global("Know_Githzerai_Speak","GLOBAL",0)
~ THEN REPLY #45292 /* ~"Peux-tu m'apprendre à parler ta langue ?"~ */ GOTO 43
  IF ~~ THEN REPLY #45293 /* ~"Je n'ai besoin de rien, merci. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 31 // from: 29.0 30.0 44.0
  SAY #45294 /* ~Il s'incline devant toi. "Je suis Hailcii'n, soldat githzeraï. Je suis ici pour rassembler des provisions. J'ai découvert que cette ville était semblable à la gemme de Try'ig'or ; beaucoup de gens en disent du bien, mais elle n'a en fait que peu de valeur. L'air y est presque vicié pour le Peuple et les habitants ne se connaissent pas eux-mêmes. Ce ne sont que des carapaces vides."~ */
  IF ~~ THEN REPLY #45295 /* ~"Je vois. J'avais d'autres questions…"~ */ GOTO 30
  IF ~~ THEN REPLY #45296 /* ~"Absolument. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 32 // from: 29.1 30.1 44.1
  SAY #45297 /* ~Il lève les mains et les place avec révérence devant son visage, puis sa poitrine. "Ces cicatrices qui me défigurent, je les tiens de divers affrontements dans les galeries d'Ilsensine. Mes rrakmas se sont presque fait dévorer par des *illithids* d'une grande lâcheté. Quant à la longue cicatrice qui barre ma poitrine, je la dois à l'épée d'un githyanki. Raconte-moi l'histoire des tiennes" ajoute-t-il d'un hochement de tête.~ */
  IF ~~ THEN EXTERN ~DDAKKON~ 162
END

IF ~~ THEN BEGIN 33 // from:
  SAY #45298 /* ~Son expression se modifie légèrement, mais tu ignores s'il a l'air confus ou méprisant. "Comment des cicatrices peuvent-elles ne pas avoir d'histoire à raconter ?"~ */
  IF ~~ THEN REPLY #45299 /* ~"Ce sont des cicatrices sans importance. Tout le monde en a, non ?"~ */ GOTO 34
  IF ~~ THEN REPLY #45300 /* ~"J'ai perdu tout souvenir de leur passé et du mien."~ */ GOTO 35
END

IF ~~ THEN BEGIN 34 // from: 33.0 37.2
  SAY #45301 /* ~Il lance un regard insondable à Dak'kon. Tu as l'impression d'avoir échoué à une sorte de test. "Souhaites-tu *savoir* quoi que ce soit d'autre ?" te demande-t-il.~ */
  IF ~~ THEN REPLY #45302 /* ~"Oui."~ */ GOTO 30
  IF ~~ THEN REPLY #45309 /* ~"Non. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 35 // from: 33.1
  SAY #45311 /* ~Il s'interrompt un instant, comme pour digérer ce que tu viens de lui dire, puis : "Par T'cha l'Infortuné, je pleure ta perte de mémoire et d'histoire."~ */
  IF ~~ THEN REPLY #45312 /* ~"Merci. J'avais encore quelques questions…"~ */ GOTO 30
  IF ~~ THEN REPLY #45314 /* ~"Merci. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 36 // from:
  SAY #45315 /* ~Il te fait un petit signe de tête. "Je connais tes prouesses, sonneur d'épées."~ */
  IF ~~ THEN REPLY #45317 /* ~"J'avais d'autres questions…"~ */ GOTO 30
  IF ~~ THEN REPLY #45318 /* ~"Merci. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 37 // from: 29.2 30.2 44.2
  SAY #45319 /* ~"Mes tatouages racontent l'histoire des miens et me confèrent leur force et leurs facultés de réflexion. L'un d'entre eux, exécuté par Arja'rok de l'île des Phoques, explique comment mon parent Ji'li'kaï a enseveli ses ennemis entre les murailles de Shra'kt'lor. Celui-ci, je le dois à Fell, le dabus qui marche, et il évoque la bataille au cours de laquelle Ro'jhi et moi-même avons affronté sept slaadis dans les Limbes avant qu'un huitième ne mette un terme à l'existence de mon compagnon. Toi aussi, raconte-moi l'histoire de tes tatouages."~ */
  IF ~~ THEN REPLY #45320 /* ~"Ils évoquent ce que j'espère accomplir."~ */ GOTO 38
  IF ~~ THEN REPLY #45321 /* ~"Ils évoquent les obstacles que j'ai surmontés et les exploits que j'ai accomplis, des fois que je vienne à les oublier."~ */ GOTO 39
  IF ~~ THEN REPLY #45322 /* ~"Ce sont des tatouages comme les autres. J'avais encore deux ou trois questions à te poser…"~ */ GOTO 34
END

IF ~~ THEN BEGIN 38 // from: 37.0
  SAY #45323 /* ~Il attend un instant, puis ferme les yeux et s'incline de nouveau. "Tes tatouages ramènent l'avenir au présent et lui donnent une meilleure définition. Ils recèlent la sagesse des anarques. Je prends bonne note de tes histoires."~ */
  IF ~~ THEN REPLY #45324 /* ~"Merci. Tu parlais de Fell ?"~ */ GOTO 40
  IF ~~ THEN REPLY #45325 /* ~"Merci. J'ai d'autres questions…"~ */ GOTO 30
  IF ~~ THEN REPLY #45326 /* ~"Merci. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 39 // from: 37.1
  SAY #45327 /* ~Il ferme les yeux et s'incline. "Je prends bonne note de tes histoires, sonneur d'épées."~ */
  IF ~~ THEN REPLY #45328 /* ~"Merci. Tu parlais de Fell ?"~ */ GOTO 40
  IF ~~ THEN REPLY #45329 /* ~"J'avais d'autres questions…"~ */ GOTO 30
  IF ~~ THEN REPLY #45330 /* ~"Merci. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 40 // from: 38.0 39.0
  SAY #45331 /* ~"Le dabus qui marche est passé maître dans l'exécution de son art. Certains tatouages racontent des histoires, tandis que d'autres mettent à nu l'âme de qui les porte. Ceux de Fell aident le corps et l'âme, en fonction de l'histoire dans laquelle ils puisent leur force."~ */
  IF ~  Global("Fell","GLOBAL",0)
~ THEN REPLY #45332 /* ~"Où puis-je trouver Fell ?"~ */ GOTO 16
  IF ~~ THEN REPLY #45333 /* ~"Quelle sorte de force ?"~ */ GOTO 17
  IF ~~ THEN REPLY #45334 /* ~"Merci. J'avais encore une ou deux questions…"~ */ GOTO 3
  IF ~~ THEN REPLY #45335 /* ~"Merci. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 41 // from: 42.0
  SAY #45336 /* ~"Tu le trouveras dans la Ruche, qui est située au nord du quartier sud-est. Il est difficile de se repérer dans cette ville. Autant essayer de comprendre les divagations d'un anarque qui ne se connaît pas lui-même."~ */
  IF ~~ THEN REPLY #45337 /* ~"Quelle sorte de force ces tatouages peuvent-ils conférer ?"~ */ GOTO 42
  IF ~~ THEN REPLY #45338 /* ~"J'avais d'autres questions…"~ */ GOTO 30
  IF ~~ THEN REPLY #45339 /* ~"Merci. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 42 // from: 41.0
  SAY #45340 /* ~"Le tatouage de Ro'jhi, qui a tué sept slaadis, me confère une grande force lorsque je me retrouve face à de nombreux adversaires. L'aide que chaque tatouage apporte dépend de ce qu'il évoque. Raconte tes histoires à Fell et tes tatouages te conféreront leur pouvoir quand leur histoire sera gravée dans ta chair."~ */
  IF ~~ THEN REPLY #45341 /* ~"Où est-ce que je peux le trouver ?"~ */ GOTO 41
  IF ~~ THEN REPLY #45342 /* ~"Merci. J'ai d'autres questions…"~ */ GOTO 30
  IF ~~ THEN REPLY #45343 /* ~"Merci. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 43 // from: 29.5 30.5 44.5
  SAY #45344 /* ~Il s'incline légèrement. "Tu as avec toi un maître incomparable de notre langue. Demande-lui de te l'apprendre, et peut-être acceptera-t-il."~ */
  IF ~~ THEN REPLY #45345 /* ~"Merci quand même. Il me reste encore une ou deux questions…"~ */ GOTO 30
  IF ~~ THEN REPLY #45346 /* ~"Merci quand même. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 44 // from:
  SAY #45347 /* ~"Je *connais* ses paroles, *zerth*, et je suis aussi au courant de son intervention opportune pour ce qui est de notre forteresse. J'accepte de l'entendre."~ */
  IF ~~ THEN REPLY #45348 /* ~"Qui es-tu ?"~ */ GOTO 31
  IF ~~ THEN REPLY #45349 /* ~"Où as-tu écopé de ces cicatrices ?"~ */ GOTO 32
  IF ~~ THEN REPLY #45350 /* ~"Où as-tu eu ces tatouages ?"~ */ GOTO 37
  IF ~  Global("Know_Githyanki","GLOBAL",0)
Global("Met_Githyanki","GLOBAL",1)
~ THEN REPLY #45146 /* ~"Quelle est la différence entre les githzeraïs et les githyankis ?"~ */ DO ~SetGlobal("Know_Githyanki","GLOBAL",1)
~ GOTO 48
  IF ~  Global("Know_Githyanki","GLOBAL",1)
~ THEN REPLY #45147 /* ~"Quelle est la différence entre les githzeraïs et les githyankis ?"~ */ GOTO 48
  IF ~  Global("Know_Githzerai_Speak","GLOBAL",0)
~ THEN REPLY #45351 /* ~"Peux-tu m'apprendre à parler ta langue ?"~ */ GOTO 43
  IF ~~ THEN REPLY #45352 /* ~"Je n'ai besoin de rien, merci. Au revoir."~ */ EXIT
END

IF WEIGHT #4 ~  NumTimesTalkedToGT(0)
NearbyDialog("DDakkon")
Global("Vristigor","GLOBAL",2)
~ THEN BEGIN 45 // from:
  SAY #45353 /* ~Hailcii'n s'incline à ton approche. "Je suis honoré que tu aies décidé de revenir me voir."~ */
  IF ~~ THEN REPLY #45354 /* ~"Merci. J'aurais quelques questions à te poser…"~ */ GOTO 30
  IF ~~ THEN REPLY #45355 /* ~"Merci, mais il faut que j'y aille. Au revoir."~ */ EXIT
END

IF WEIGHT #12 ~  NumTimesTalkedToGT(0)
NearbyDialog("DDakkon")
GlobalLT("Vristigor","GLOBAL",2)
~ THEN BEGIN 46 // from:
  SAY #45356 /* ~"Te voilà de retour avec ton humain, *zerth*. Y a-t-il autre chose que tu souhaites *savoir* ?"~ */
  IF ~~ THEN REPLY #45357 /* ~"Oui."~ */ GOTO 30
  IF ~~ THEN REPLY #45358 /* ~"Non. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 47 // from: 2.0
  SAY #45359 /* ~"Je suis venu chercher des provisions et des renforts. Les githyankis redoublent d'audace ces temps-ci. Nous nous préparons à une guerre sanglante."~ */
  IF ~~ THEN REPLY #45360 /* ~"Ça a l'air excitant. J'aurais encore une ou deux questions à te poser…"~ */ GOTO 3
  IF ~~ THEN REPLY #45361 /* ~"Je vois. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 48 // from: 29.3 29.4 30.3 30.4 44.3 44.4
  SAY #45174 /* ~Il plisse les yeux et crache par terre. "Ce sont des chiens, des traîtres et des menteurs. Il ne faut leur accorder aucune confiance. Si jamais tu en rencontres un, souviens-toi du cœur de Selqant et de l'œil de Vilquard. Et n'oublie pas que les githyankis sont trois fois pires encore."~ */
  IF ~~ THEN REPLY #45175 /* ~"De quelles leçons s'agit-il ?"~ */ GOTO 49
  IF ~~ THEN REPLY #45176 /* ~"Merci. J'ai d'autres questions…"~ */ GOTO 30
  IF ~~ THEN REPLY #45177 /* ~"Merci. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 49 // from: 48.0
  SAY #45181 /* ~"Selqant et Vilquar étaient connus pour leur cruauté et leur traîtrise. Mais tous deux étaient githzeraïs. Leurs crimes paraissent bien modestes comparés aux actes des githyankis. Jamais race plus cruelle n'a vogué sur la Mer d'Argent."~ */
  IF ~~ THEN REPLY #45182 /* ~"J'avais d'autres questions…"~ */ GOTO 30
  IF ~~ THEN REPLY #45183 /* ~"Merci pour ton temps. Au revoir."~ */ EXIT
END
