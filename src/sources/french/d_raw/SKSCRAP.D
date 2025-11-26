// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : SKSCRAP.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\fr_FR\dialog.tlk
// dialogF  : (none)

BEGIN ~SKSCRAP~

IF ~  True()
~ THEN BEGIN 0 // from:
  SAY #52402 /* ~Ce morceau de peau a été arraché de ton avant-bras gauche. Sa surface grise pleine de cicatrices te fait penser à la dépouille d'un zombi. Il ressemble plus à un morceau de cuir séché qu'à un morceau de peau.~ */
  IF ~~ THEN REPLY #52403 /* ~Pique ton index et inscris un regret sur le bout de peau avec ton sang…~ */ GOTO 1
  IF ~~ THEN REPLY #53254 /* ~Repose le morceau de peau…~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #53255 /* ~Tu piques le bout de ton index. Avant que la blessure ne puisse se refermer, tu presses pour obtenir plusieurs gouttes de sang. Tandis que tu te prépares à griffonner tes regrets, une série d'images envahit ton esprit.~ */
  IF ~  NumInPartyGT(1)
~ THEN REPLY #53256 /* ~Regret : "Je regrette ce qui est arrivé à mes compagnons…"~ */ GOTO 2
  IF ~~ THEN REPLY #53257 /* ~Regret : "Je regrette mes actes…"~ */ GOTO 3
  IF ~~ THEN REPLY #53258 /* ~Regret : "Je regrette mon passé…"~ */ GOTO 4
  IF ~~ THEN REPLY #53259 /* ~Regret : "Je regrette les événements qui ont provoqué ceci…"~ */ GOTO 5
  IF ~~ THEN REPLY #53260 /* ~Repose le morceau de peau…~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.0 7.0
  SAY #53261 /* ~Tu murmures les mots, et un sentiment de regret résonne dans ton esprit : 'Je regrette…'~ */
  IF ~  NumInPartyGT(1)
~ THEN REPLY #53262 /* ~"… que tous mes compagnons aient dû souffrir pour que je puisse arriver ici."~ */ DO ~IncrementGlobalOnceEx("GLOBALGood_Skin_Regret_1","GLOBALGood",3)
~ GOTO 6
  IF ~  Global("Sell_Morte","GLOBAL",1)
~ THEN REPLY #53263 /* ~"… d'avoir essayé de vendre Morte à Vrischika."~ */ DO ~IncrementGlobalOnceEx("GLOBALGood_Skin_Regret_1","GLOBALGood",1)
~ GOTO 6
  IF ~  Global("Sell_Annah","GLOBAL",1)
~ THEN REPLY #53264 /* ~"… d'avoir essayé de vendre Annah à Vrischika."~ */ DO ~IncrementGlobalOnceEx("GLOBALGood_Skin_Regret_1","GLOBALGood",1)
~ GOTO 6
  IF ~  Global("Sell_Dakkon","GLOBAL",1)
~ THEN REPLY #53265 /* ~"… d'avoir essayé de vendre Dak'kon à Vrischika."~ */ DO ~IncrementGlobalOnceEx("GLOBALGood_Skin_Regret_1","GLOBALGood",1)
~ GOTO 6
  IF ~  Global("Sell_Grace","GLOBAL",1)
~ THEN REPLY #53266 /* ~"… d'avoir essayé de vendre Tombée-en-Disgrâce à Vrischika."~ */ DO ~IncrementGlobalOnceEx("GLOBALGood_Skin_Regret_1","GLOBALGood",1)
~ GOTO 6
  IF ~  Global("Sell_Nordom","GLOBAL",1)
~ THEN REPLY #53267 /* ~"… d'avoir essayé de vendre Nordom à Vrischika."~ */ DO ~IncrementGlobalOnceEx("GLOBALGood_Skin_Regret_1","GLOBALGood",1)
~ GOTO 6
  IF ~  Global("Sell_Morte","GLOBAL",1)
~ THEN REPLY #53268 /* ~"… de ne pas avoir vendu Morte à Vrischika."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Skin_Regret_1","GLOBALGood",-2)
~ GOTO 6
  IF ~  Global("Sell_Annah","GLOBAL",1)
~ THEN REPLY #53269 /* ~"… de ne pas avoir vendu Annah à Vrischika."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Skin_Regret_1","GLOBALGood",-2)
~ GOTO 6
  IF ~  Global("Sell_Dakkon","GLOBAL",1)
~ THEN REPLY #53270 /* ~"… de ne pas avoir vendu Dak'kon à Vrischika."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Skin_Regret_1","GLOBALGood",-2)
~ GOTO 6
  IF ~  Global("Sell_Nordom","GLOBAL",1)
~ THEN REPLY #53271 /* ~"… de ne pas avoir vendu Nordom à Vrischika."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Skin_Regret_1","GLOBALGood",-2)
~ GOTO 6
  IF ~  Global("Sell_Morte","GLOBAL",2)
~ THEN REPLY #53272 /* ~"… d'avoir vendu Morte à Vrischika."~ */ DO ~IncrementGlobalOnceEx("GLOBALGood_Skin_Regret_1","GLOBALGood",1)
~ GOTO 6
  IF ~  Global("Sell_Annah","GLOBAL",2)
~ THEN REPLY #53273 /* ~"… d'avoir vendu Annah à Vrischika."~ */ DO ~IncrementGlobalOnceEx("GLOBALGood_Skin_Regret_1","GLOBALGood",1)
~ GOTO 6
  IF ~  Global("Sell_Dakkon","GLOBAL",2)
~ THEN REPLY #53274 /* ~"… d'avoir vendu Dak'kon à Vrischika."~ */ DO ~IncrementGlobalOnceEx("GLOBALGood_Skin_Regret_1","GLOBALGood",1)
~ GOTO 6
  IF ~  Global("Sell_Nordom","GLOBAL",2)
~ THEN REPLY #53275 /* ~"… d'avoir vendu Nordom à Vrischika."~ */ DO ~IncrementGlobalOnceEx("GLOBALGood_Skin_Regret_1","GLOBALGood",1)
~ GOTO 6
  IF ~  GlobalGT("Dakkon_Slave","GLOBAL",0)
~ THEN REPLY #53276 /* ~"… d'avoir fait de Dak'kon mon esclave durant toutes ces décades."~ */ DO ~IncrementGlobalOnceEx("GLOBALGood_Skin_Regret_1","GLOBALGood",2)
~ GOTO 6
  IF ~  Global("Know_Ignus_Teacher","GLOBAL",2)
~ THEN REPLY #53277 /* ~"… d'avoir enseigné à Ignus le pouvoir de blesser les autres."~ */ DO ~IncrementGlobalOnceEx("GLOBALGood_Skin_Regret_1","GLOBALGood",2)
~ GOTO 6
  IF ~  Global("Evil_Pillar_2","GLOBAL",1)
~ THEN REPLY #53278 /* ~"… d'avoir trahi Morte et de l'avoir laissé au Pilier des Crânes."~ */ DO ~IncrementGlobalOnceEx("GLOBALGood_Skin_Regret_1","GLOBALGood",2)
~ GOTO 6
  IF ~  Dead("Dakkon")
~ THEN REPLY #53279 /* ~"… la mort de Dak'kon."~ */ GOTO 6
  IF ~  Dead("Annah")
~ THEN REPLY #53280 /* ~"… la mort d'Annah."~ */ GOTO 6
  IF ~  Dead("Morte")
~ THEN REPLY #53281 /* ~"… la mort de Morte."~ */ GOTO 6
  IF ~  Dead("Grace")
~ THEN REPLY #53282 /* ~"… la mort de Tombée-en-Disgrâce."~ */ GOTO 6
  IF ~  Dead("Ignus")
~ THEN REPLY #53283 /* ~"… la mort d'Ignus."~ */ GOTO 6
  IF ~  Dead("Nordom")
~ THEN REPLY #53284 /* ~"… la mort de Nordom."~ */ GOTO 6
  IF ~  Dead("Vhail")
~ THEN REPLY #53286 /* ~"… la mort de Vhailor."~ */ GOTO 6
  IF ~~ THEN REPLY #53287 /* ~Réfléchis à un autre regret…~ */ GOTO 7
  IF ~~ THEN REPLY #53288 /* ~Repose le morceau de peau…~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 1.1 7.1
  SAY #53289 /* ~Tu murmures les mots, et un sentiment de regret résonne dans ton esprit : 'Je regrette…'~ */
  IF ~  GlobalGT("Murder","GLOBAL",20)
~ THEN REPLY #53290 /* ~"… de ne pas avoir tué plus de gens."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Skin_Regret_1","GLOBALGood",-3)
~ GOTO 6
  IF ~  Global("Lawful_Coaxmetal_1","GLOBAL",1)
~ THEN REPLY #53291 /* ~"… de ne pas avoir libéré Coaxmétal de la tour de siège."~ */ GOTO 6
  IF ~  Global("Lawful_Coaxmetal_1","GLOBAL",0)
Global("Evil_Coaxmetal_4","GLOBAL",1)
~ THEN REPLY #68188 /* ~"…de ne pas avoir libéré Coaxmétal de la tour de siège."~ */ GOTO 6
  IF ~  Global("Chaotic_Coaxmetal_1","GLOBAL",1)
~ THEN REPLY #53292 /* ~"… d'avoir libéré Coaxmétal de la tour de siège."~ */ GOTO 6
  IF ~~ THEN REPLY #53295 /* ~"… d'avoir dû tuer Ravel."~ */ DO ~IncrementGlobalOnceEx("GLOBALGood_Skin_Regret_1","GLOBALGood",2)
~ GOTO 6
  IF ~~ THEN REPLY #53297 /* ~"… d'avoir erré sur les plans alors que le maudit portail se trouvait devant moi lorsque je me suis éveillé pour la PREMIÈRE fois."~ */ GOTO 6
  IF ~~ THEN REPLY #53298 /* ~Réfléchis à un autre regret…~ */ GOTO 7
  IF ~~ THEN REPLY #53299 /* ~Repose le morceau de peau…~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 1.2 7.2
  SAY #53300 /* ~Tu murmures les mots, et un sentiment de regret résonne dans ton esprit : 'Je regrette…'~ */
  IF ~~ THEN REPLY #53301 /* ~"… d'avoir demandé à être immortel."~ */ GOTO 6
  IF ~  Global("Murdered_Fin","GLOBAL",1)
~ THEN REPLY #53302 /* ~"… le meurtre de Fin Andlye. Si je n'étais pas devenu immortel, mon incarnation paranoïaque ne l'aurait jamais tué…"~ */ DO ~IncrementGlobalOnceEx("GLOBALGood_Skin_Regret_1","GLOBALGood",1)
~ GOTO 6
  IF ~~ THEN REPLY #53303 /* ~"… les dommages causés par mes précédentes incarnations, à elles-mêmes et aux autres."~ */ DO ~IncrementGlobalOnceEx("GLOBALGood_Skin_Regret_1","GLOBALGood",3)
~ GOTO 6
  IF ~~ THEN REPLY #53304 /* ~"… les morts que j'ai causées, ici et partout dans le multivers."~ */ DO ~IncrementGlobalOnceEx("GLOBALGood_Skin_Regret_1","GLOBALGood",3)
~ GOTO 6
  IF ~  Global("Memory_Deionarra_Longing","GLOBAL",1)
~ THEN REPLY #53305 /* ~"… d'avoir menti à Deionarra pour la forcer à m'accompagner dans mon voyage."~ */ DO ~IncrementGlobalOnceEx("GLOBALGood_Skin_Regret_1","GLOBALGood",2)
~ GOTO 6
  IF ~  GlobalGT("Deionarra_Death_Truth","GLOBAL",0)
~ THEN REPLY #53306 /* ~"… d'avoir tué Deionarra à la Forteresse des Regrets."~ */ DO ~IncrementGlobalOnceEx("GLOBALGood_Skin_Regret_1","GLOBALGood",2)
~ GOTO 6
  IF ~  GlobalGT("Deionarra_Death_Truth","GLOBAL",1)
GlobalGT("Know_Iannis_Deionarra_Death","GLOBAL",0)
~ THEN REPLY #53307 /* ~"… la souffrance que j'ai causée à Iannis en menant sa fille à sa mort."~ */ DO ~IncrementGlobalOnceEx("GLOBALGood_Skin_Regret_1","GLOBALGood",2)
~ GOTO 6
  IF ~~ THEN REPLY #53308 /* ~Réfléchis à un autre regret…~ */ GOTO 7
  IF ~~ THEN REPLY #53309 /* ~Repose le morceau de peau…~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 1.3 7.3
  SAY #53310 /* ~Tu murmures les mots, et un sentiment de regret résonne dans ton esprit : 'Je regrette…'~ */
  IF ~~ THEN REPLY #53311 /* ~"… qu'il m'ait fallu si *longtemps* pour trouver ma mortalité."~ */ GOTO 6
  IF ~  GlobalGT("Death","GLOBAL",20)
~ THEN REPLY #53312 /* ~"… qu'il ait fallu tant de morts pour en arriver là."~ */ GOTO 6
  IF ~  NumInParty(1)
!NearbyDialog("DNordom")
!NearbyDialog("DVhail")
!NearbyDialog("Dignus")
!NearbyDialog("DGrace")
!NearbyDialog("Dannah")
!NearbyDialog("DDakkon")
!NearbyDialog("DMorte")
~ THEN REPLY #53313 /* ~"… qu'il n'y ait personne ici pour partager ce moment avec moi."~ */ GOTO 6
  IF ~~ THEN REPLY #53314 /* ~"… de n'avoir aucun regret à écrire sur ce morceau de peau."~ */ GOTO 6
  IF ~~ THEN REPLY #53315 /* ~Réfléchis à un autre regret…~ */ GOTO 7
  IF ~~ THEN REPLY #53316 /* ~Repose le morceau de peau…~ */ EXIT
END

IF ~~ THEN BEGIN 6 // from: 2.0 2.1 2.2 2.3 2.4 2.5 2.6 2.7 2.8 2.9 2.10 2.11 2.12 2.13 2.14 2.15 2.16 2.17 2.18 2.19 2.20 2.21 2.22 2.23 3.0 3.1 3.2 3.3 3.4 3.5 4.0 4.1 4.2 4.3 4.4 4.5 4.6 5.0 5.1 5.2 5.3
  SAY #53317 /* ~Tu griffonnes les regrets sur le bout de chair… mais ta force de guérison t'oblige plusieurs fois à rouvrir la coupure de ton doigt et à appuyer pour obtenir plus de sang. Quelques instants plus tard, tu as terminé, ton sang brille sur le morceau de peau… un mélange de chair, de sang et de regrets.~ */
  IF ~  Global("Regret_Experience","GLOBAL",0)
~ THEN REPLY #53318 /* ~"Ça devrait suffire…"~ */ DO ~TransformPartyItem("SkScrap","SkRegret",1,0,0)
AddexperienceParty(250000)
SetGlobal("Regret_Experience","GLOBAL",1)
~ EXIT
  IF ~  Global("Regret_Experience","GLOBAL",1)
~ THEN REPLY #53319 /* ~"Ça devrait suffire…"~ */ DO ~TransformPartyItem("SkScrap","SkRegret",1,0,0)
~ EXIT
END

IF ~~ THEN BEGIN 7 // from: 2.24 3.6 4.7 5.4
  SAY #53320 /* ~Au cours des quelques instants que tu as passés à réfléchir, la coupure de ton doigt s'est complètement refermée. Tu es obligé de rouvrir la blessure de ton doigt et de presser pour obtenir plusieurs gouttes de sang. Tandis que tu te prépares à griffonner tes regrets, une série d'images envahit ton esprit…~ */
  IF ~  NumInPartyGT(1)
~ THEN REPLY #53321 /* ~Regret : "Je regrette ce qui est arrivé à mes compagnons…"~ */ GOTO 2
  IF ~~ THEN REPLY #53322 /* ~Regret : "Je regrette mes actes…"~ */ GOTO 3
  IF ~~ THEN REPLY #53323 /* ~Regret : "Je regrette mon passé…"~ */ GOTO 4
  IF ~~ THEN REPLY #53324 /* ~Regret : "Je regrette les événements qui ont provoqué ceci…"~ */ GOTO 5
  IF ~~ THEN REPLY #53325 /* ~Repose le morceau de peau…~ */ EXIT
END
