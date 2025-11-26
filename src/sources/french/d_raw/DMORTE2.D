// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DMORTE2.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\fr_FR\dialog.tlk
// dialogF  : (none)

BEGIN ~DMORTE2~
//////////////////////////////////////////////////
// WARNING: this file contains non-trivial WEIGHTs
//////////////////////////////////////////////////

IF WEIGHT #0 ~  Global("Mortuary_Walkthrough","GLOBAL",1)
InParty("Morte")
~ THEN BEGIN 0 // from:
  SAY #41144 /* ~"Pfff… un p'tit conseil, chef : à ta place, j'la mettrais en veilleuse à partir de maintenant ; pas besoin d'inscrire trop de cadavres dans le livre des morts… surtout les femmes. En plus, si tu les tues, ça risque d'attirer les gardiens."~ */
  IF ~~ THEN REPLY #41145 /* ~"Je ne crois pas que tu en aies déjà parlé… *Qui* sont ces gardiens ?"~ */ DO ~SetGlobal("Morte_Mortuary_Walkthrough_1","GLOBAL",1)
~ GOTO 1
  IF ~~ THEN REPLY #41146 /* ~"Tous ces cadavres… d'où ils viennent ?"~ */ DO ~SetGlobal("Morte_Mortuary_Walkthrough_1","GLOBAL",1)
~ GOTO 3
  IF ~~ THEN REPLY #41147 /* ~"Pourquoi tu t'intéresses aux cadavres féminins ?"~ */ DO ~SetGlobal("Morte_Mortuary_Walkthrough_1","GLOBAL",1)
~ GOTO 4
  IF ~~ THEN REPLY #41148 /* ~"D'accord… Je vais… essayer de m'en souvenir."~ */ DO ~SetGlobal("Morte_Mortuary_Walkthrough_1","GLOBAL",1)
~ GOTO 8
END

IF ~~ THEN BEGIN 1 // from: 0.0 3.0 7.0
  SAY #41149 /* ~"Ils se donnent le nom d'Hommes-Poussière. Tu ne peux pas les rater : ils sont obsédés par le noir et la rigidité cadavérique du visage. C'est une bande enfumée d'adorateurs vampiriques de la mort, ils croient que tout le monde doit mourir… et que le plus tôt sera le mieux."~ */
  IF ~~ THEN REPLY #41150 /* ~"Je ne comprends pas… Qu'est-ce que ça peut leur faire, à ces Hommes-Poussière, si je m'enfuis ?"~ */ GOTO 2
END

IF ~~ THEN BEGIN 2 // from: 1.0
  SAY #41151 /* ~"Tu n'écoutais pas ?! J'ai dit que les Hommes-Poussière croient que TOUT LE MONDE doit mourir, et que le plus tôt sera le mieux. Tu crois que les cadavres que tu as rencontrés sont plus heureux dans le livre des morts qu'à l'extérieur ?"~ */
  IF ~~ THEN REPLY #41152 /* ~"Les cadavres que j'ai vus ici… d'où ils venaient ?"~ */ GOTO 3
  IF ~~ THEN REPLY #41153 /* ~"Tout à l'heure, tu as dit que je devais veiller à ne pas tuer de cadavres *féminins*. Pourquoi ?"~ */ GOTO 4
  IF ~~ THEN REPLY #41154 /* ~"D'accord… Je vais… essayer de m'en souvenir."~ */ GOTO 8
END

IF ~~ THEN BEGIN 3 // from: 0.1 2.0 7.1
  SAY #41155 /* ~"La mort rend visite aux plans tous les jours, chef. Ces loques, c'est tout c'qui reste des pauvres bougres qui ont vendu leurs corps aux gardiens après leur mort."~ */
  IF ~~ THEN REPLY #41156 /* ~"Explique-moi… *Qui* sont ces gardiens ?"~ */ GOTO 1
  IF ~~ THEN REPLY #41157 /* ~"Tout à l'heure, tu as dit que je devais veiller à ne pas tuer de cadavres *féminins*. Pourquoi ?"~ */ GOTO 4
  IF ~~ THEN REPLY #41158 /* ~"D'accord… Je vais… essayer de m'en souvenir."~ */ GOTO 8
END

IF ~~ THEN BEGIN 4 // from: 0.2 2.1 3.1
  SAY #41159 /* ~"Tu es *sérieux* ? Écoute, chef, ces petites mortes représentent la dernière chance pour deux courageux lascars comme nous. Nous devons être *chevaleresques*… Il est hors de question d'aller les charcuter ou les découper pour trouver les clés."~ */
  IF ~~ THEN REPLY #41160 /* ~"Dernière chance ? De quoi tu *parles* ?"~ */ GOTO 5
END

IF ~~ THEN BEGIN 5 // from: 4.0
  SAY #41161 /* ~"Chef, ELLES SONT mortes, NOUS SOMMES morts… tu piges ? Eh ? Eh ?"~ */
  IF ~~ THEN REPLY #41162 /* ~"Non… non, en fait, non."~ */ GOTO 6
  IF ~  CheckStatGT(Protagonist,12,INT)
~ THEN REPLY #41163 /* ~"C'est une *blague* ?"~ */ GOTO 6
END

IF ~~ THEN BEGIN 6 // from: 5.0 5.1
  SAY #41164 /* ~"Chef, on a une bonne entrée en matière avec ces dames boiteuses. Nous sommes *tous* morts ne serait-ce qu'une fois ; on aura au moins un sujet de conversation possible. Elles apprécieront des hommes qui ont notre expérience de la mort."~ */
  IF ~~ THEN REPLY #41165 /* ~"Attends… tu as bien dit tout à l'heure que j'étais *pas* mort ?"~ */ GOTO 7
END

IF ~~ THEN BEGIN 7 // from: 6.0
  SAY #41166 /* ~"Bon… d'accord, *tu* n'es peut-être pas mort, mais *moi* si. Et comme je le vois, ça ne me déplairait pas de partager un cercueil avec l'un des cadavres délicieux que je vois ici." Morte commence à claquer des dents d'envie. "Bien sûr, les gardiens devraient d'abord s'en séparer et il y a peu de chances…"~ */
  IF ~~ THEN REPLY #41167 /* ~"Qui sont ces gardiens déjà ?"~ */ GOTO 1
  IF ~~ THEN REPLY #41168 /* ~"Mais d'où viennent tous ces cadavres ?"~ */ GOTO 3
  IF ~~ THEN REPLY #41169 /* ~"Très bien… Je vais essayer de m'en souvenir."~ */ GOTO 8
END

IF ~~ THEN BEGIN 8 // from: 0.3 2.2 3.2 7.2 12.7 13.2 14.2 15.2 16.2 17.1 18.1 19.2 20.1 21.1 22.1
  SAY #41170 /* ~"Écoute, chef ; on voit bien qu't'es pas encore remis de ta rencontre avec la mort, alors j'ai deux conseils à te donner : premièrement, si t'as des questions, *pose-les moi*, d'accord ?"

^NREMARQUE : <SPEAKTO>^-~ */
  IF ~~ THEN REPLY #41171 /* ~"D'accord… si j'ai des questions, je te les poserai."~ */ GOTO 9
END

IF ~~ THEN BEGIN 9 // from: 8.0
  SAY #41172 /* ~"Deuxièmement, si t'es *aussi* distrait que t'en as l'air, commence à tout noter - chaque fois que tu tombes sur quelque chose qui *pourrait* être important, note-le pour pas oublier."~ */
  IF ~~ THEN REPLY #41173 /* ~"Si je détenais ce journal que je suis *supposé* avoir sur moi, c'est ce que je ferais."~ */ GOTO 10
END

IF ~~ THEN BEGIN 10 // from: 9.0
  SAY #41174 /* ~"Alors commences-en un nouveau, chef. T'as rien à perdre. Y a plein de parchemin et d'encre par ici."~ */
  IF ~~ THEN REPLY #41175 /* ~"Hmmmm. D'accord. Ça coûte rien… je vais en commencer un nouveau, alors."~ */ GOTO 11
END

IF ~~ THEN BEGIN 11 // from: 10.0
  SAY #41176 /* ~"Utilise-le pour garder une trace de tes mouvements. Si tu commences à t'embrouiller sur les trucs importants, comme qui tu es… ou plus important, qui *je* suis… utilise-le pour te rafraîchir la mémoire."

^NREMARQUE : Pour accéder au journal, sélectionne le bouton du journal dans le menu rapide. Le journal est mis à jour automatiquement durant la partie.^-~ */
  IF ~~ THEN REPLY #41177 /* ~"Très bien… Compris. Allons-y."~ */ JOURNAL #39516 /* ~J'ignore où se trouve mon ancien journal, aussi en ai-je commencé un nouveau. Je me suis réveillé dans un lieu nommé la 'Morgue'. J'ignore qui je suis, ce que je fais là, ou même comment j'y suis arrivé. L'unique 'individu' que j'ai rencontré est un crâne bavard du nom de Morte. Alors qu'il examinait mes blessures, il a remarqué une série d'instructions tatouées dans mon dos :

'Je sais que tu as l'impression d'avoir bu un peu trop d'eau du Styx, mais tu dois absolument te RESSAISIR. Parmi tes possessions matérielles se trouve un JOURNAL qui devrait t'éclairer sur le soltif de cette affaire. PHAROD devrait pouvoir t'en dire plus sur la chanson, du moins s'il ne se trouve pas déjà dans le livre des morts.'

'Ne perds pas le journal, ou c'est encore le Styx qui nous attend. Et, quoi que tu fasses, ne dit à PERSONNE qui tu es ou ce qui t'est arrivé, sans quoi tu gagneras un aller simple pour le crématorium. Fais ce que je te dis : LIS le journal, puis VA TROUVER Pharod.'

Est-ce moi qui me suis tatoué ce message dans le dos ? En tout cas, on dirait que je vais devoir trouver ce 'Pharod' ET mon journal.~ */ EXIT
END

IF WEIGHT #1 ~  !Global("Mortuary_Walkthrough","GLOBAL",0)
!Global("Mortuary_Walkthrough","GLOBAL",1)
!Global("Mortuary_Walkthrough","GLOBAL",3)
InParty("Morte")
~ THEN BEGIN 12 // from: 13.1 14.1 15.1 16.1 17.0 18.0 19.1 20.0 21.0 22.0 23.1 24.2 25.1 26.0
  SAY #41178 /* ~"Qu'est-ce qui te dérange, chef ?"~ */
  IF ~~ THEN REPLY #41179 /* ~"Tu peux me relire ce qui est tatoué sur mon dos ?~ */ GOTO 13
  IF ~~ THEN REPLY #41180 /* ~"C'est quoi cet endroit déjà ?"~ */ GOTO 18
  IF ~  Global("Morte_Mortuary_Walkthrough_1","GLOBAL",0)
~ THEN REPLY #41181 /* ~"Cet endroit est immense… qui s'en occupe ?"~ */ GOTO 19
  IF ~  Global("Morte_Mortuary_Walkthrough_1","GLOBAL",1)
~ THEN REPLY #41182 /* ~"C'est qui, déjà, les gardiens de cet endroit ?"~ */ GOTO 19
  IF ~~ THEN REPLY #41183 /* ~"Tous ces cadavres… d'où ils viennent ?"~ */ GOTO 22
  IF ~  Global("Morte_Mortuary_Walkthrough_1","GLOBAL",1)
~ THEN REPLY #41184 /* ~"Tout à l'heure, tu as dit que je devais veiller à ne pas tuer de cadavres *féminins*. Pourquoi ?"~ */ GOTO 23
  IF ~  PartyHasItem("Bandage")
~ THEN REPLY #41185 /* ~"Qu'est-ce que je fais de ces bandages ?"~ */ GOTO 21
  IF ~  Global("Morte_Mortuary_Walkthrough_1","GLOBAL",0)
~ THEN REPLY #41186 /* ~"Rien pour le moment, Morte. Je voulais juste savoir si je pouvais toujours compter sur toi."~ */ GOTO 8
  IF ~  Global("Morte_Mortuary_Walkthrough_1","GLOBAL",1)
~ THEN REPLY #41187 /* ~"Rien pour le moment, Morte. Je voulais juste savoir si je pouvais toujours compter sur toi."~ */ EXIT
END

IF ~~ THEN BEGIN 13 // from: 12.0
  SAY #41188 /* ~"Oh, *allez,* chef. Ne m'dis pas qu't'as déjà oublié."~ */
  IF ~~ THEN REPLY #41189 /* ~"J'ai juste besoin de me rafraîchir la mémoire."~ */ GOTO 14
  IF ~~ THEN REPLY #41190 /* ~"Bon, peu importe. J'ai d'autres questions…"~ */ GOTO 12
  IF ~  Global("Morte_Mortuary_Walkthrough_1","GLOBAL",0)
~ THEN REPLY #41191 /* ~"Alors laisse tomber. On y va."~ */ GOTO 8
  IF ~  Global("Morte_Mortuary_Walkthrough_1","GLOBAL",1)
~ THEN REPLY #41192 /* ~"Alors laisse tomber. On y va."~ */ EXIT
END

IF ~~ THEN BEGIN 14 // from: 13.0
  SAY #41193 /* ~"Quelque chose me dit que je vais entendre ÇA souvent." Morte s'éclaircit la voix. "Voyons…"

'Je sais que tu as l'impression d'avoir bu plusieurs barils d'eau du Styx, mais il faut te RESSAISIR. Parmi tes biens, tu dois avoir un JOURNAL qui pourra éclaircir le soltif de cette affaire. PHAROD devrait pouvoir te donner les dernières notes de la chanson, s'il n'est pas déjà inscrit dans le livre des morts.'~ */
  IF ~~ THEN REPLY #41194 /* ~"Pharod… hmmm. Continue."~ */ GOTO 15
  IF ~~ THEN REPLY #41195 /* ~"Peu importe. J'avais d'autres questions…"~ */ GOTO 12
  IF ~  Global("Morte_Mortuary_Walkthrough_1","GLOBAL",0)
~ THEN REPLY #41196 /* ~"Laisse. J'en ai assez entendu. On y va."~ */ GOTO 8
  IF ~  Global("Morte_Mortuary_Walkthrough_1","GLOBAL",1)
~ THEN REPLY #41197 /* ~"Laisse. J'en ai assez entendu. On y va."~ */ EXIT
END

IF ~~ THEN BEGIN 15 // from: 14.0
  SAY #41198 /* ~"Oui, oui, attends." Morte s'interrompt un instant. "D'accord, voilà la fin…"

'Ne perds pas le journal ou on se retrouvera encore à traverser le Styx. Et quoi que tu fasses, NE raconte à personne QUI tu es et CE qui t'arrive, ou on t'enverra faire un rapide pèlerinage vers le crématorium. Fais ce que je te dis : LIS le journal, puis TROUVE Pharod.'~ */
  IF ~~ THEN REPLY #41199 /* ~"Et il n'y avait pas de journal sur moi quand je me suis réveillé ?"~ */ GOTO 16
  IF ~~ THEN REPLY #41200 /* ~"Peu importe. J'avais d'autres questions…"~ */ GOTO 12
  IF ~  Global("Morte_Mortuary_Walkthrough_1","GLOBAL",0)
~ THEN REPLY #41201 /* ~"Laisse. J'en ai assez entendu. On y va."~ */ GOTO 8
  IF ~  Global("Morte_Mortuary_Walkthrough_1","GLOBAL",1)
~ THEN REPLY #41203 /* ~"Laisse. J'en ai assez entendu. On y va."~ */ EXIT
END

IF ~~ THEN BEGIN 16 // from: 15.0
  SAY #41202 /* ~"Non… t'étais nu comme un ver. Comme j'te l'ai déjà dit, on dirait que t'as déjà un journal écrit sur le corps."~ */
  IF ~~ THEN REPLY #41204 /* ~"Et tu es sûr que tu ne connais personne du nom de Pharod ?"~ */ GOTO 17
  IF ~~ THEN REPLY #41205 /* ~"C'est vrai. J'ai d'autres questions…"~ */ GOTO 12
  IF ~  Global("Morte_Mortuary_Walkthrough_1","GLOBAL",0)
~ THEN REPLY #41206 /* ~"Bon, très bien. Allons-y."~ */ GOTO 8
  IF ~  Global("Morte_Mortuary_Walkthrough_1","GLOBAL",1)
~ THEN REPLY #41207 /* ~"Bon, très bien. Allons-y."~ */ EXIT
END

IF ~~ THEN BEGIN 17 // from: 16.0
  SAY #41208 /* ~"Non. Mais y doit bien y avoir un bige qui saura où le trouver. On va demander… UNE FOIS qu'on sera sorti d'ici."~ */
  IF ~~ THEN REPLY #41209 /* ~"Avant d'y aller, j'ai d'autres questions…"~ */ GOTO 12
  IF ~  Global("Morte_Mortuary_Walkthrough_1","GLOBAL",0)
~ THEN REPLY #41210 /* ~"Bon, très bien. Allons-y."~ */ GOTO 8
  IF ~  Global("Morte_Mortuary_Walkthrough_1","GLOBAL",1)
~ THEN REPLY #41211 /* ~"Bon, très bien. Allons-y."~ */ EXIT
END

IF ~~ THEN BEGIN 18 // from: 12.1
  SAY #41212 /* ~"Ça s'appelle la 'Morgue'… c'est un grand édifice noir avec tout le charme architectural d'une araignée pleine."~ */
  IF ~~ THEN REPLY #41213 /* ~"J'ai compris. J'ai d'autres questions à te poser…"~ */ GOTO 12
  IF ~  Global("Morte_Mortuary_Walkthrough_1","GLOBAL",0)
~ THEN REPLY #41214 /* ~"C'est tout ce que je voulais savoir. Merci."~ */ GOTO 8
  IF ~  Global("Morte_Mortuary_Walkthrough_1","GLOBAL",1)
~ THEN REPLY #41215 /* ~"C'est tout ce que je voulais savoir. Merci."~ */ EXIT
END

IF ~~ THEN BEGIN 19 // from: 12.2 12.3
  SAY #41216 /* ~"Ils se donnent le nom d'Hommes-Poussière. Tu ne peux pas les rater : ils sont obsédés par le noir et la rigidité cadavérique du visage. C'est une bande enfumée d'adorateurs vampiriques de la mort, ils croient que tout le monde doit mourir… et que le plus tôt sera le mieux."~ */
  IF ~~ THEN REPLY #41217 /* ~"Je ne comprends pas… Qu'est-ce que ça peut leur faire, à ces Hommes-Poussière, si je m'enfuis ?"~ */ GOTO 20
  IF ~~ THEN REPLY #41218 /* ~"J'ai compris. J'ai d'autres questions à te poser…"~ */ GOTO 12
  IF ~  Global("Morte_Mortuary_Walkthrough_1","GLOBAL",0)
~ THEN REPLY #41219 /* ~"Compris. J'ferais gaffe, alors."~ */ GOTO 8
  IF ~  Global("Morte_Mortuary_Walkthrough_1","GLOBAL",1)
~ THEN REPLY #41220 /* ~"Compris. J'ferais gaffe, alors."~ */ EXIT
END

IF ~~ THEN BEGIN 20 // from: 19.0
  SAY #41221 /* ~"Tu n'écoutais pas ?! J'ai dit que les Hommes-Poussière croient que TOUT LE MONDE doit mourir, et que le plus tôt sera le mieux. Tu crois que les cadavres que tu as rencontrés sont plus heureux dans le livre des morts qu'à l'extérieur ?"~ */
  IF ~~ THEN REPLY #41222 /* ~"J'ai compris. J'ai d'autres questions à te poser…"~ */ GOTO 12
  IF ~  Global("Morte_Mortuary_Walkthrough_1","GLOBAL",0)
~ THEN REPLY #41223 /* ~"D'accord… Je vais… essayer de m'en souvenir."~ */ GOTO 8
  IF ~  Global("Morte_Mortuary_Walkthrough_1","GLOBAL",1)
~ THEN REPLY #41224 /* ~"D'accord… Je vais… essayer de m'en souvenir."~ */ EXIT
END

IF ~~ THEN BEGIN 21 // from: 12.6
  SAY #41225 /* ~"Tu, ben… tu les *utilises*. Pour épancher le sang et tout ça."

^NREMARQUE : <BANDAGES2>^-~ */
  IF ~~ THEN REPLY #41226 /* ~"J'ai compris. J'ai d'autres questions à te poser…"~ */ GOTO 12
  IF ~  Global("Morte_Mortuary_Walkthrough_1","GLOBAL",0)
~ THEN REPLY #41227 /* ~"Merci. Je devrais pouvoir y arriver."~ */ GOTO 8
  IF ~  Global("Morte_Mortuary_Walkthrough_1","GLOBAL",1)
~ THEN REPLY #41228 /* ~"Merci. Je devrais pouvoir y arriver."~ */ EXIT
END

IF ~~ THEN BEGIN 22 // from: 12.4
  SAY #41229 /* ~"La mort rend visite aux plans tous les jours, chef. Ces loques, c'est tout c'qui reste des pauvres bougres qui ont vendu leurs corps aux gardiens après leur mort."~ */
  IF ~~ THEN REPLY #41230 /* ~"J'ai compris. J'ai d'autres questions à te poser…"~ */ GOTO 12
  IF ~  Global("Morte_Mortuary_Walkthrough_1","GLOBAL",0)
~ THEN REPLY #41231 /* ~"D'accord… Je vais… essayer de m'en souvenir."~ */ GOTO 8
  IF ~  Global("Morte_Mortuary_Walkthrough_1","GLOBAL",1)
~ THEN REPLY #41232 /* ~"D'accord… Je vais… essayer de m'en souvenir."~ */ EXIT
END

IF ~~ THEN BEGIN 23 // from: 12.5
  SAY #41233 /* ~"Tu es *sérieux* ? Écoute, chef, ces petites mortes représentent la dernière chance pour deux courageux lascars comme nous. Nous devons être *chevaleresques*… Il est hors de question d'aller les charcuter ou les découper pour trouver les clés."~ */
  IF ~~ THEN REPLY #41234 /* ~"Dernière chance ? De quoi tu *parles* ?"~ */ GOTO 24
  IF ~~ THEN REPLY #41235 /* ~"Peu importe. J'avais d'autres questions à te poser…"~ */ GOTO 12
  IF ~~ THEN REPLY #41236 /* ~"D'accord… Je vais… essayer de m'en souvenir."~ */ EXIT
END

IF ~~ THEN BEGIN 24 // from: 23.0
  SAY #41237 /* ~"Chef, ELLES SONT mortes, NOUS SOMMES morts… tu piges ? Eh ? Eh ?"~ */
  IF ~~ THEN REPLY #41238 /* ~"Non… non, en fait, non."~ */ GOTO 25
  IF ~  CheckStatGT(Protagonist,12,INT)
~ THEN REPLY #41239 /* ~"C'est une *blague* ?"~ */ GOTO 25
  IF ~~ THEN REPLY #41240 /* ~"Peu importe. J'avais d'autres questions à te poser…"~ */ GOTO 12
  IF ~~ THEN REPLY #41241 /* ~"J'en ai assez entendu. On y va."~ */ EXIT
END

IF ~~ THEN BEGIN 25 // from: 24.0 24.1
  SAY #41242 /* ~"Chef, on a une bonne entrée en matière avec ces dames boiteuses. Nous sommes *tous* morts ne serait-ce qu'une fois ; on aura au moins un sujet de conversation possible. Elles apprécieront des hommes qui ont notre expérience de la mort."~ */
  IF ~~ THEN REPLY #41243 /* ~"Attends… tu as bien dit tout à l'heure que j'étais *pas* mort ?"~ */ GOTO 26
  IF ~~ THEN REPLY #41244 /* ~"Peu importe. J'avais d'autres questions à te poser…"~ */ GOTO 12
  IF ~~ THEN REPLY #41245 /* ~"J'en ai assez entendu. On y va."~ */ EXIT
END

IF ~~ THEN BEGIN 26 // from: 25.0
  SAY #41246 /* ~"Bon… d'accord, *tu* n'es peut-être pas mort, mais *moi* si. Et comme je le vois, ça ne me déplairait pas de partager un cercueil avec l'un des cadavres délicieux que je vois ici." Morte commence à claquer des dents d'envie. "Bien sûr, les gardiens devraient d'abord s'en séparer et il y a peu de chances…"~ */
  IF ~~ THEN REPLY #41247 /* ~"J'ai d'autres questions à te poser, Morte…"~ */ GOTO 12
  IF ~~ THEN REPLY #41248 /* ~"J'en ai assez entendu. On y va."~ */ EXIT
END

IF WEIGHT #3 /* Triggers after states #: 31 even though they appear after this state */
~  !InParty("Morte")
~ THEN BEGIN 27 // from:
  SAY #41250 /* ~"Je savais que tu reviendrais, chef ! T'as finalement réalisé que t'avais besoin de moi, hein ?"~ */
  IF ~~ THEN REPLY #41251 /* ~"Ouais… on y va."~ */ DO ~ChangeAIScript("pcmorte",DEFAULT)
JoinPartyEx(TRUE)
~ EXIT
  IF ~~ THEN REPLY #41252 /* ~"Pas pour le moment, Morte."~ */ GOTO 28
END

IF ~~ THEN BEGIN 28 // from: 27.1
  SAY #41253 /* ~"Hmmff. Bien, je ne sais pas combien de temps je vais attendre ici, alors je vais te donner un DERNIERE chance. Tu es sûr que tu ne veux pas de mes sages conseils et de mon vif esprit ?"~ */
  IF ~~ THEN REPLY #41254 /* ~"Morte, tu n'as RIEN de tout ça."~ */ GOTO 29
  IF ~~ THEN REPLY #41255 /* ~"Très bien, j'ai changé d'avis. Allez, partons."~ */ DO ~ChangeAIScript("pcmorte",DEFAULT)
JoinPartyEx(TRUE)
~ EXIT
  IF ~~ THEN REPLY #41256 /* ~"Pas pour le moment, Morte. Peut-être plus tard."~ */ GOTO 29
END

IF ~~ THEN BEGIN 29 // from: 28.0 28.2
  SAY #41257 /* ~"Est-ce que tu essaies de me vexer, chef ? Qu'est-ce qu'il y a, c'est quelque chose que j'ai dit ? Le fait que je n'ai pas de bras ? Quoi ?"~ */
  IF ~~ THEN REPLY #41258 /* ~"Très bien, j'ai changé d'avis. Allez, partons."~ */ DO ~ChangeAIScript("pcmorte",DEFAULT)
JoinPartyEx(TRUE)
~ EXIT
  IF ~~ THEN REPLY #41259 /* ~"Non, ce n'est pas ça. C'est juste que je n'ai pas besoin de ta compagnie pour le moment. Au revoir, Morte."~ */ GOTO 30
END

IF ~~ THEN BEGIN 30 // from: 29.1
  SAY #41260 /* ~"Bien, je ne vais pas attendre pour TOUJOURS, alors tu ferais mieux de revenir, dès que tu auras changé d'avis."~ */
  IF ~~ THEN REPLY #41261 /* ~"Je le ferai. Au revoir, Morte."~ */ EXIT
END

IF WEIGHT #2 ~  Global("Mortuary_Walkthrough","GLOBAL",3)
InParty("Morte")
~ THEN BEGIN 31 // from:
  SAY #41262 /* ~"Par les Puissances d'en haut. Tu PARLES d'un livre !"~ */
  IF ~~ THEN REPLY #41263 /* ~"Quoi ?"~ */ DO ~SetGlobal("Morte_Mortuary_Walkthrough_2","GLOBAL",1)
~ GOTO 32
END

IF ~~ THEN BEGIN 32 // from: 31.0
  SAY #41264 /* ~"Si j'devais deviner, j'dirais que c'est le livre où ils gribouillent le nom de tous les pauvres bougres suffisamment malchanceux pour finir ici."~ */
  IF ~~ THEN REPLY #41265 /* ~"Tu crois que mon nom pourrait y être inscrit ?"~ */ GOTO 33
END

IF ~~ THEN BEGIN 33 // from: 32.0
  SAY #41266 /* ~"Euh… ben… *j'suppose.* Pour le savoir, il faudrait que t'ailles branler ton râtelier avec l'Homme-Poussière flottant, là-bas. J'suis pas sûr que ce soit une bonne idée."~ */
  IF ~~ THEN REPLY #41267 /* ~"Ben, j'ai besoin de réponses. Je vais aller lui parler." ~ */ EXIT
END
