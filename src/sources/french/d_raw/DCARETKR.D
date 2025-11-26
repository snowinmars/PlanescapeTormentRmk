// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DCARETKR.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\fr_FR\dialog.tlk
// dialogF  : (none)

BEGIN ~DCARETKR~

IF ~  Global("Current_Area","GLOBAL",900)
Global("Know_Kyse","GLOBAL",0)
~ THEN BEGIN 0 // from:
  SAY #3196 /* ~Un vieil homme sale et débrayé qui empeste les ordures t'interpelle. "Étranger ! Attends un peu ! Il faut que je te raconte ce qui s'est passé ici !"~ */
  IF ~~ THEN REPLY #3197 /* ~"Qui es-tu ?"~ */ DO ~SetGlobal("Know_Kyse","GLOBAL",1)
~ GOTO 2
  IF ~~ THEN REPLY #60250 /* ~"Qu'est-ce qui s'est passé ?"~ */ GOTO 1
  IF ~~ THEN REPLY #60251 /* ~"Non. Fiche le camp."~ */ GOTO 3
END

IF ~  Global("Current_Area","GLOBAL",900)
Global("Know_Kyse","GLOBAL",1)
~ THEN BEGIN 1 // from: 0.1 2.0
  SAY #60252 /* ~"Te revoilà dans une cité de calamité, étranger. Le deva est sorti triomphant du naufrage après nous avoir entraînés dans les ténèbres. Il n'y a qu'une seule manière de revenir - il faut anéantir le deva pour amener la cité à abjurer sa trahison et sa tromperie. Plus grande sera la croyance de la cité dans le pardon, plus le deva s'affaiblira."~ */
  IF ~~ THEN REPLY #60253 /* ~"Trias a fait tout ça ?"~ */ JOURNAL #60254 /* ~Kyse, le gardien de la décharge, m'a dit que Trias était sorti de sa prison et qu'il avait condamné la ville, l'envoyant par là-même dans les Carcères. Kyse m'a expliqué que le meilleur moyen de vaincre Trias consistait à affaiblir l'emprise que le mal et le chaos ont sur la cité, en incitant les habitants à revenir à de meilleurs sentiments.~ */ GOTO 4
END

IF ~~ THEN BEGIN 2 // from: 0.0
  SAY #60255 /* ~"Je m'appelle Kyse, je suis le gardien de la décharge de la cité. J'ai essayé de leur apprendre les bonnes manières et la gentillesse mais ils ont refusé et voilà où ça les a menés."~ */
  IF ~~ THEN REPLY #60256 /* ~"Qu'est-ce qui s'est passé ?"~ */ GOTO 1
  IF ~~ THEN REPLY #60257 /* ~"Fiche le camp. J'ai à faire."~ */ GOTO 3
END

IF ~~ THEN BEGIN 3 // from: 0.2 2.1
  SAY #60258 /* ~"Le malheur te guette, étranger ! Si le deva n'est pas vaincu, la ville sera détruite ! Elle doit regagner l'Outreterre, ou tout est perdu ! On est aux Carcères, dont même les Titans ne peuvent pas s'échapper ! Prends ceci, ça peut t'aider !" Il se tourne et s'enfuit dans le chaos derrière lui.~ */
  IF ~~ THEN REPLY #60259 /* ~"Étrange."~ */ DO ~GiveItem("SPWI802",Protagonist)
EscapeArea()
EscapeArea()
~ EXIT
END

IF ~~ THEN BEGIN 4 // from: 1.0
  SAY #60260 /* ~"Le deva est sorti de terre et a condamné la ville pour ses iniquités. Il y a eu une grande confusion alors que les maisons s'écroulaient autour de nous - puis on est arrivés ici. Il n'y a qu'un moyen de battre Trias : l'affaiblir par de bonnes actions, détourner les citadins du chaos et du mal et les pousser vers le bien. Sinon, il vaincra." Il regarde autour de lui. "J'ai un travail à faire. Prends ceci, ça t'aidera."~ */
  IF ~~ THEN REPLY #60261 /* ~"Bonne chance. Au revoir."~ */ DO ~GiveItem("SPWI802",Protagonist)
EscapeArea()
~ EXIT
END

IF ~  GlobalGT("Caretaker","GLOBAL",4)
~ THEN BEGIN 5 // from:
  SAY #60262 /* ~"Je te suis reconnaissant, étranger. Qu'est-ce que je peux faire pour toi ?"~ */
  IF ~~ THEN REPLY #60263 /* ~"J'ai besoin de soins."~ */ DO ~StartStore("Kyse",Protagonist)
~ EXIT
  IF ~~ THEN REPLY #60264 /* ~"Qu'est-ce que ces brutes cherchaient ?"~ */ GOTO 6
  IF ~~ THEN REPLY #60265 /* ~"Parle-moi de toi."~ */ GOTO 7
  IF ~~ THEN REPLY #60266 /* ~"Parle-moi de Maudith."~ */ GOTO 8
  IF ~~ THEN REPLY #60267 /* ~"Parle-moi de cette décharge."~ */ GOTO 17
  IF ~~ THEN REPLY #68154 /* ~"Rien. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 6 // from: 5.1 7.1 8.1
  SAY #60268 /* ~"Ça m'échappe. Selon la rumeur, j'aurais beaucoup d'or, j'aurais acquis de nombreuses richesses. Ce n'est pas vrai, ce n'est pas vrai - ma seule richesse, c'est la foi, cette foi qui m'aide à vivre dans une cité de tromperie. J'ai essayé de partager cette richesse, mais ça ne semble pas intéresser grand monde."~ */
  IF ~~ THEN REPLY #60269 /* ~"Bien. Parle-moi de toi."~ */ GOTO 7
  IF ~~ THEN REPLY #60270 /* ~"Parle-moi de Maudith."~ */ GOTO 8
  IF ~~ THEN REPLY #60271 /* ~"J'ai besoin de soins."~ */ DO ~StartStore("Kyse",Protagonist)
~ EXIT
  IF ~~ THEN REPLY #60272 /* ~"Parle-moi de cette décharge."~ */ GOTO 17
  IF ~~ THEN REPLY #68153 /* ~"Je vois. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 7 // from: 5.2 6.0 8.2
  SAY #60273 /* ~"Je suis Kyse, le gardien de la décharge de la cité. Je surveille leurs ordures et, par métaphore, j'ai aussi vu un bon nombre d'âmes flotter ici. Je suis la voix qui leur conseille la bonté - et j'ai bien peur qu'ils ne m'écoutent pas."~ */
  IF ~~ THEN REPLY #60274 /* ~"J'ai besoin de soins."~ */ DO ~StartStore("Kyse",Protagonist)
~ EXIT
  IF ~~ THEN REPLY #60275 /* ~"Qu'est-ce que ces brutes cherchaient ?"~ */ GOTO 6
  IF ~~ THEN REPLY #60276 /* ~"Parle-moi de Maudith."~ */ GOTO 8
  IF ~~ THEN REPLY #60277 /* ~"Parle-moi de cette décharge."~ */ GOTO 17
  IF ~~ THEN REPLY #68152 /* ~"Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 8 // from: 5.3 6.1 7.2
  SAY #60278 /* ~"Cette cité est au bord du gouffre. Le mal y est omniprésent et les apparences sont trompeuses. Tout est caché sous un vernis de civilité, mais le venin frappe ceux qui y respirent. C'est une cité empoisonnée grouillant de gens empoisonnés."~ */
  IF ~~ THEN REPLY #60279 /* ~"J'ai besoin de soins."~ */ DO ~StartStore("Kyse",Protagonist)
~ EXIT
  IF ~~ THEN REPLY #60280 /* ~"Qu'est-ce que ces brutes cherchaient ?"~ */ GOTO 6
  IF ~~ THEN REPLY #60281 /* ~"Parle-moi de toi."~ */ GOTO 7
  IF ~~ THEN REPLY #60282 /* ~"Parle-moi de cette décharge."~ */ GOTO 17
  IF ~~ THEN REPLY #68151 /* ~"Je vois. Au revoir."~ */ EXIT
END

IF ~  Global("Caretaker","GLOBAL",4)
~ THEN BEGIN 9 // from:
  SAY #60283 /* ~"Tu m'as sauvé la vie." Kyse semble vaguement stupéfait que cela ait pu arriver à Maudith. "Je te dois beaucoup. Si tu as besoin de soins, viens me voir. Je ferai de mon mieux pour t'aider. Excuse-moi. Je dois aller m'asseoir."~ */
  IF ~~ THEN REPLY #60284 /* ~"D'accord. Au revoir."~ */ DO ~SetGlobal("Caretaker","GLOBAL",5)
~ EXIT
END

IF ~  GlobalLT("Caretaker","GLOBAL",3)
NumTimesTalkedTo(0)
~ THEN BEGIN 10 // from:
  SAY #60285 /* ~Tu vois un vieil homme débraillé qui empeste les ordures. Sans que tu saches pourquoi, il te donne l'impression d'être plus puissant que tous les gens de cette cité, plus vibrant, comme s'il n'était pas d'ici. En te voyant approcher, il lève les yeux et se redresse. "Tu viens voir Kyse ? Tu as entendu parler d'histoires de sagesse et de droiture ? Des exemples à suivre ?"~ */
  IF ~~ THEN REPLY #60286 /* ~"Qui es-tu ?"~ */ DO ~SetGlobal("Know_Kyse","GLOBAL",1)
~ GOTO 12
  IF ~~ THEN REPLY #60287 /* ~"Qu'est-ce que c'est que cet endroit ?"~ */ DO ~SetGlobal("Know_Kyse","GLOBAL",1)
~ GOTO 13
  IF ~~ THEN REPLY #60288 /* ~"Qu'est-ce que tu peux me dire sur Maudith ?"~ */ DO ~SetGlobal("Know_Kyse","GLOBAL",1)
~ GOTO 14
  IF ~  Global("Caretaker","GLOBAL",1)
~ THEN REPLY #60289 /* ~"J'ai entendu dire que tu avais des ennuis avec un groupe de brutes."~ */ DO ~SetGlobal("Know_Kyse","GLOBAL",1)
SetGlobal("Caretaker","GLOBAL",2)
~ GOTO 15
  IF ~~ THEN REPLY #60290 /* ~"Parle-moi de cette décharge."~ */ DO ~SetGlobal("Know_Kyse","GLOBAL",1)
~ GOTO 17
  IF ~~ THEN REPLY #68150 /* ~"Non. Au revoir."~ */ DO ~SetGlobal("Know_Kyse","GLOBAL",1)
~ EXIT
END

IF ~  GlobalLT("Caretaker","GLOBAL",3)
NumTimesTalkedToGT(0)
~ THEN BEGIN 11 // from:
  SAY #60291 /* ~"Tu cherches l'illumination ? La sagesse ? La… oh, c'est toi." Il paraît plus ou moins désappointé.~ */
  IF ~~ THEN REPLY #60292 /* ~"Qui es-tu ?"~ */ GOTO 12
  IF ~~ THEN REPLY #60293 /* ~"C'est quoi, cet endroit ?"~ */ GOTO 13
  IF ~~ THEN REPLY #60294 /* ~"Qu'est-ce que tu peux me dire sur Maudith ?"~ */ GOTO 14
  IF ~  Global("Caretaker","GLOBAL",1)
~ THEN REPLY #60295 /* ~"J'ai entendu dire que tu avais des ennuis avec un groupe de brutes."~ */ DO ~SetGlobal("Caretaker","GLOBAL",2)
~ GOTO 15
  IF ~~ THEN REPLY #60296 /* ~"Parle-moi de cette décharge."~ */ GOTO 17
  IF ~~ THEN REPLY #68149 /* ~"Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 12 // from: 10.0 11.0 16.0
  SAY #60297 /* ~"Je suis Kyse, le gardien de la décharge de la cité. Je surveille leurs ordures et, par métaphore, j'ai aussi vu un bon nombre d'âmes flotter ici. Je suis la voix qui leur conseille la bonté - et j'ai bien peur qu'ils ne m'écoutent pas."~ */
  IF ~~ THEN REPLY #60298 /* ~"Je vois. J'ai encore quelques questions…"~ */ GOTO 16
  IF ~~ THEN REPLY #60299 /* ~"Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 13 // from: 10.1 11.1 16.1
  SAY #60300 /* ~"C'est la décharge de la cité. Je la surveille pour éviter que la vermine n'y prolifère. Je l'empêche de gagner du terrain et en échange, ils m'en apportent plus."~ */
  IF ~~ THEN REPLY #60301 /* ~"Je vois. J'ai encore quelques questions…"~ */ GOTO 16
  IF ~~ THEN REPLY #60302 /* ~"Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 14 // from: 10.2 11.2 16.2
  SAY #60303 /* ~"Cette cité est au bord du gouffre. Le mal y est omniprésent et les apparences sont trompeuses. Tout est caché sous un vernis de civilité, mais le venin frappe ceux qui y respirent. C'est une cité empoisonnée grouillant de gens empoisonnés."~ */
  IF ~~ THEN REPLY #60304 /* ~"Je vois. J'ai encore quelques questions…"~ */ GOTO 16
  IF ~~ THEN REPLY #60305 /* ~"Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 15 // from: 10.3 11.3 16.3
  SAY #60306 /* ~"Ton homme, c'est Wernet, un maître de la vermine, un collectionneur de péchés. Il me dit que j'ai de l'argent, que je devrais lui donner, alors que ma seule fortune réside dans mon cœur et ma foi. Je le lui ai dit. Je crains qu'il ne me croit guère. Va, persuade-le. Je t'en prie. Tu le trouveras près des marchands à l'ouest."~ */
  IF ~~ THEN REPLY #60307 /* ~"Bien sûr. J'avais d'autres questions…"~ */ JOURNAL #60309 /* ~Kyse, le gardien de la décharge, m'a demandé d'aller trouver un sicaire du nom de Wernet et de le convaincre que Kyse ne possède aucun objet de valeur. Pour ma part, je suis prêt à le croire.~ */ GOTO 16
  IF ~~ THEN REPLY #60308 /* ~"Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 16 // from: 12.0 13.0 14.0 15.0 17.0
  SAY #60310 /* ~"Qu'est-ce que tu veux ?"~ */
  IF ~~ THEN REPLY #60311 /* ~"Qui es-tu ?"~ */ GOTO 12
  IF ~~ THEN REPLY #60312 /* ~"Qu'est-ce que c'est que cet endroit ?"~ */ GOTO 13
  IF ~~ THEN REPLY #60313 /* ~"Qu'est-ce que tu peux me dire sur Maudith ?"~ */ GOTO 14
  IF ~  Global("Caretaker","GLOBAL",1)
~ THEN REPLY #60314 /* ~"J'ai entendu dire que tu avais des ennuis avec un groupe de brutes."~ */ DO ~SetGlobal("Caretaker","GLOBAL",2)
~ GOTO 15
  IF ~~ THEN REPLY #60315 /* ~"Parle-moi de cette décharge."~ */ GOTO 17
  IF ~~ THEN REPLY #68148 /* ~"Rien. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 17 // from: 5.4 6.3 7.3 8.3 10.4 11.4 16.4
  SAY #68144 /* ~Il se penche vers toi et chuchote : "J'ai ici un passage secret menant aux catacombes. Presque personne ne le connaît. Il permet de descendre dans les souterrains…" Il s'interrompt. "Mais je ne l'ai jamais utilisé, car je sais que, si je venais à descendre, je ne pourrais jamais remonter. Le passage est glissant et s'éboulerait derrière moi. Quand je serai prêt à mourir, je descendrai et je laisserai les monstres se repaître de mes os."~ */
  IF ~~ THEN REPLY #68145 /* ~"J'aurais encore quelques questions…"~ */ JOURNAL #68147 /* ~Le gardien de la décharge m'a dit qu'il existait une entrée secrète menant dans les souterrains de Maudith. Par contre, il a ajouté qu'il y a de fortes chances pour qu'il me soit impossible de revenir par là. Je tâcherai de m'en souvenir.~ */ GOTO 16
  IF ~~ THEN REPLY #68146 /* ~"Je vois. Au revoir."~ */ JOURNAL #68147 /* ~Le gardien de la décharge m'a dit qu'il existait une entrée secrète menant dans les souterrains de Maudith. Par contre, il a ajouté qu'il y a de fortes chances pour qu'il me soit impossible de revenir par là. Je tâcherai de m'en souvenir.~ */ EXIT
END
