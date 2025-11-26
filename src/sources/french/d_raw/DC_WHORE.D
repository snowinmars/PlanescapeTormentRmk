// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DC_WHORE.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\fr_FR\dialog.tlk
// dialogF  : (none)

BEGIN ~DC_WHORE~

IF ~  True()
~ THEN BEGIN 0 // from:
  SAY #67953 /* ~Cette femme habillée de manière ostentatoire et légère te dédie un sourire aguicheur. D'un haussement d'épaule, elle fait tomber une de ses bretelles de soutien-gorge alors que tu t'approches d'elle. "Pour vingt pièces, je suis tout à toi, matois…"~ */
  IF ~~ THEN REPLY #67958 /* ~"En fait, j'ai des questions à te poser…"~ */ GOTO 1
  IF ~  PartyGoldGT(19)
~ THEN REPLY #67959 /* ~"Ça m'a l'air raisonnable. Voici ton argent."~ */ DO ~TakePartyGold(20)
FadeToColor([20.0],0)
Wait(2)
FadeFromColor([20.0],0)
~ GOTO 4
  IF ~  PartyGoldGT(19)
~ THEN REPLY #67960 /* ~"Euh… dans la même pièce que les autres ?"~ */ GOTO 2
  IF ~~ THEN REPLY #67961 /* ~"Non merci. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0 2.1
  SAY #67954 /* ~Elle soupire et remet sa bretelle de soutien-gorge en place. "Désolée. Aucune chance."~ */
  IF ~~ THEN REPLY #67962 /* ~"Dis-moi au moins ce que ce garde fait là, dehors…"~ */ GOTO 3
  IF ~  PartyGoldGT(19)
~ THEN REPLY #67963 /* ~"Dans ce cas, que dirais-tu d'être à moi pour vingt pièces ?"~ */ DO ~TakePartyGold(20)
FadeToColor([20.0],0)
Wait(2)
FadeFromColor([20.0],0)
~ GOTO 4
  IF ~~ THEN REPLY #67964 /* ~"Très bien. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 0.2 3.1
  SAY #67955 /* ~"Pourquoi pas ?" Elle se passe la main dans les cheveux en te dédiant un sourire coquin. "Si ça a l'air chouette, peut-être qu'elles se joindront à nous…" Sur un clin d'œil, elle te fait signe d'approcher.~ */
  IF ~  PartyGoldGT(19)
~ THEN REPLY #67965 /* ~"Tu as raison, pourquoi pas ? Tiens, voici ton argent…"~ */ DO ~TakePartyGold(20)
FadeToColor([20.0],0)
Wait(2)
FadeFromColor([20.0],0)
~ GOTO 4
  IF ~~ THEN REPLY #67966 /* ~"En fait, je souhaitais juste te poser quelques questions…"~ */ GOTO 1
  IF ~~ THEN REPLY #67967 /* ~"Non merci. Au revoir.~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 1.0
  SAY #67956 /* ~"Oh, lui ?" Elle regarde le garde musclé qui vous tourne le dos et inspecte le hall. "Mes amies et moi, on lui file un peu de jonc pour qu'il monte la garde pour nous. Pourquoi, il te rend nerveux ? T'inquiète pas, il regardera pas. Viens un peu ici…" Elle t'ouvre grand ses bras.~ */
  IF ~  PartyGoldGT(19)
~ THEN REPLY #67968 /* ~"Pourquoi pas ? Voici ton argent…"~ */ DO ~TakePartyGold(20)
FadeToColor([20.0],0)
Wait(2)
FadeFromColor([20.0],0)
~ EXIT
  IF ~  PartyGoldGT(19)
~ THEN REPLY #67969 /* ~"Euh… dans la même pièce que les autres ?"~ */ GOTO 2
  IF ~~ THEN REPLY #67970 /* ~"Non merci. Au revoir.~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 0.1 1.1 2.0
  SAY #67957 /* ~Après un accouplement aussi rapide que sordide, tu te rhabilles et tu récupères tes affaires.

"Mmm, tu es plein d'énergie, pas vrai ? Reviens me voir bientôt, si tu veux. Au revoir."~ */
  IF ~~ THEN REPLY #67971 /* ~"Peut-être que je le ferai. Au revoir."~ */ EXIT
  IF ~~ THEN REPLY #67972 /* ~Pars.~ */ EXIT
END
