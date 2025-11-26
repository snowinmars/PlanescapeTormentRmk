// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DHERMIT.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\fr_FR\dialog.tlk
// dialogF  : (none)

BEGIN ~DHERMIT~

IF ~  Global("Know_Hermit","GLOBAL",0)
CreatureInArea("AR0708")
~ THEN BEGIN 0 // from:
  SAY #57262 /* ~Tu aperçois un homme sale, bossu, sombre et grincheux. Ses cheveux gras virevoltent sur ses épaules pendant qu'il t'observe et ses yeux s'écarquillent de peur. Il dessine des signes mystérieux de ses doigts…~ */
  IF ~~ THEN REPLY #57263 /* ~"N'aie pas peur… Je ne te ferai pas de mal."~ */ DO ~SetGlobal("Know_Hermit","GLOBAL",1)
~ GOTO 2
  IF ~~ THEN REPLY #57264 /* ~Attaque-le avant qu'il jette le sort.~ */ DO ~SetGlobal("Know_Hermit","GLOBAL",1)
ForceAttack(Protagonist,Myself)
Enemy()
Attack(Protagonist)
~ EXIT
  IF ~~ THEN REPLY #57265 /* ~Attends de voir ce qui se passe.~ */ DO ~SetGlobal("Know_Hermit","GLOBAL",1)
~ GOTO 2
END

IF ~  Global("Know_Hermit","GLOBAL",1)
CreatureInArea("AR0708")
~ THEN BEGIN 1 // from:
  SAY #57266 /* ~L'ermite décampe, et ses mains dessinent des signes mystérieux. "Recule, créature… oh, c'est toi. Qu'est-ce qu'tu veux au vieil ermite, hein ?"~ */
  IF ~~ THEN REPLY #57267 /* ~"Parle-moi encore de toi."~ */ GOTO 3
  IF ~~ THEN REPLY #57268 /* ~"Parle-moi de cet endroit."~ */ GOTO 4
  IF ~~ THEN REPLY #57269 /* ~"Je cherche un deva."~ */ GOTO 5
  IF ~~ THEN REPLY #15954 /* ~"J'ai besoin d'un endroit pour me reposer."~ */ GOTO 22
  IF ~~ THEN REPLY #57270 /* ~"Rien. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 0.0 0.2
  SAY #57271 /* ~"Arh, un autre visiteur, hein ? Vous voulez tous faire crever l'vieil ermite de peur, hein ? Ces tunnels sont pas faits pour les promenades, tu sais. Qu'est-ce qu'tu m'veux ?"~ */
  IF ~~ THEN REPLY #57272 /* ~"Je cherche un deva."~ */ GOTO 5
  IF ~~ THEN REPLY #57273 /* ~"Qu'est-ce qu'il y a là-dedans ?"~ */ GOTO 4
  IF ~~ THEN REPLY #57274 /* ~"Ça ne te regarde pas."~ */ GOTO 6
  IF ~~ THEN REPLY #57275 /* ~"Qui es-tu ?"~ */ GOTO 3
  IF ~~ THEN REPLY #15954 /* ~"J'ai besoin d'un endroit pour me reposer."~ */ GOTO 22
  IF ~~ THEN REPLY #57270 /* ~"Rien. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 1.0 2.3 4.0 5.1
  SAY #57277 /* ~Il soupire bruyamment, se reprend, et regarde alentour. "J'suis venu à Maudith parce que mon dieu a été exilé dans les Carcères. J'me suis tout l'temps rapproché d'lui, mais j'vais pas l'rejoindre dans ce plan-prison. J'essaie d'trouver un moyen d'le libérer. Puisque c'est une puissance du bien, il devrait même pas être là-bas, mais j'imagine qu'c'est comme ça qu'l'exil fonctionne."~ */
  IF ~~ THEN REPLY #57278 /* ~"Depuis combien de temps es-tu ici ?"~ */ GOTO 7
  IF ~~ THEN REPLY #57279 /* ~"Est-ce que tu as vu un deva aux alentours, par hasard ?"~ */ GOTO 5
  IF ~~ THEN REPLY #57280 /* ~"Que peux-tu me dire sur cet endroit ?"~ */ GOTO 4
  IF ~~ THEN REPLY #57281 /* ~"Tu es un prêtre ? Est-ce que tu peux me guérir ?"~ */ DO ~StartStore("Hermit",Protagonist)
~ EXIT
  IF ~~ THEN REPLY #57282 /* ~"Merci. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 1.1 2.1 3.2 5.0
  SAY #57283 /* ~"Cet endroit ? Plein d'monstres et d'criminels. Pas moi, mais les autres, qui veulent du mal à tout le monde. Plus sûr qu'la cité du dessus, tout d'même. Au moins, ici, on sait à quoi s'en tenir. Là-haut ? Non, m'sieur."~ */
  IF ~~ THEN REPLY #57284 /* ~"Mais que fais-tu ici ?"~ */ GOTO 3
  IF ~~ THEN REPLY #57285 /* ~"Est-ce que tu as vu un deva aux alentours ?"~ */ GOTO 5
  IF ~~ THEN REPLY #57286 /* ~"Merci. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 1.2 2.0 3.1 4.1
  SAY #57287 /* ~"Je l'ai entendu dire, mais je n'en ai rien vu. Je me disais qu'il pouvait se trouver sous terre, puisqu'on enferme tout ce qui est bon, ici. Je lui aurais demandé des nouvelles de mon dieu." Il pousse un nouveau soupir et regarde vers l'extrémité du couloir. "Je crois qu'il pourrait se trouver vers l'ouest, par là. Mais je ne l'ai pas trouvé. Il doit avoir un gardien." Il te fait un clin d'œil.~ */
  IF ~~ THEN REPLY #57288 /* ~"Qu'est-ce que tu peux me dire sur cet endroit ?"~ */ DO ~GiveItem("SPWI704",Protagonist)
~ GOTO 4
  IF ~~ THEN REPLY #57289 /* ~"Mais que fais-tu ici ?"~ */ DO ~GiveItem("SPWI704",Protagonist)
~ GOTO 3
  IF ~~ THEN REPLY #57290 /* ~"Merci. Au revoir."~ */ DO ~GiveItem("SPWI704",Protagonist)
~ EXIT
END

IF ~~ THEN BEGIN 6 // from: 2.2
  SAY #57291 /* ~"Peuh ! Ficher la trouille comme ça à un vieux pour rien ! Allez, dégage !" Il te fait signe de partir et recommence à courir dans le souterrain.~ */
  IF ~~ THEN REPLY #57292 /* ~"Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 7 // from: 3.0
  SAY #57293 /* ~"Beaucoup trop longtemps au service d'un dieu oublié. Mais j'me souviens toujours d'lui… j'le retrouverai, même si j'dois passer ma vie à éviter les monstres des environs. J'le retrouverai." Il grommelle, le regard perdu dans le vide.~ */
  IF ~~ THEN REPLY #57294 /* ~"Merci pour ton temps. Au revoir."~ */ EXIT
END

IF ~  Global("Know_Hermit","GLOBAL",0)
Global("Current_Area","GLOBAL",900)
GlobalLT("Curst_Counter","GLOBAL",3)
~ THEN BEGIN 8 // from:
  SAY #57295 /* ~Tu aperçois un homme sale, bossu, sombre et grincheux. Ses cheveux gras virevoltent sur ses épaules tandis qu'il regarde alentour. Lorsqu'il t'aperçoit, il s'écrie, "Kyse le gardien m'a dit qu'tu viendrais. Le deva est fort, voyageur. Tu ferais mieux d'signer ton arrêt d'mort tout d'suite plutôt que d'lui faire face. Tu peux l'affaiblir en réduisant l'chaos qui règne en ville… il s'en nourrit."~ */
  IF ~~ THEN REPLY #57296 /* ~"Comment tu sais ça ?"~ */ DO ~SetGlobal("Know_Hermit","GLOBAL",1)
~ GOTO 14
  IF ~~ THEN REPLY #57297 /* ~"De toute façon, je remonte."~ */ DO ~SetGlobal("Know_Hermit","GLOBAL",1)
~ GOTO 15
  IF ~~ THEN REPLY #57298 /* ~"Hors de mon chemin, vieil homme."~ */ DO ~SetGlobal("Know_Hermit","GLOBAL",1)
~ GOTO 16
END

IF ~  Global("Know_Hermit","GLOBAL",0)
Global("Current_Area","GLOBAL",900)
GlobalGT("Curst_Counter","GLOBAL",2)
GlobalLT("Curst_Counter","GLOBAL",6)
~ THEN BEGIN 9 // from:
  SAY #57299 /* ~Tu aperçois un homme sale, bossu, sombre et grincheux. Ses cheveux gras virevoltent sur ses épaules tandis qu'il regarde alentour. Lorsqu'il t'aperçoit, il s'écrie, "Kyse le gardien m'a dit qu'tu viendrais. Le deva est toujours fort, voyageur, mais tes actions l'ont un peu ralenti. Tu peux l'affaiblir encore plus en réduisant l'chaos qui règne en ville… il s'en nourrit."~ */
  IF ~~ THEN REPLY #57300 /* ~"Comment tu sais ça ?"~ */ DO ~SetGlobal("Know_Hermit","GLOBAL",1)
~ GOTO 14
  IF ~~ THEN REPLY #57301 /* ~"Je suis prêt à lui faire face."~ */ DO ~SetGlobal("Know_Hermit","GLOBAL",1)
~ GOTO 15
  IF ~~ THEN REPLY #57302 /* ~"Hors de mon chemin, vieil homme."~ */ DO ~SetGlobal("Know_Hermit","GLOBAL",1)
~ GOTO 16
END

IF ~  Global("Know_Hermit","GLOBAL",0)
Global("Current_Area","GLOBAL",900)
GlobalGT("Curst_Counter","GLOBAL",5)
~ THEN BEGIN 10 // from:
  SAY #57303 /* ~Tu aperçois un homme sale, bossu, sombre et grincheux. Ses cheveux gras virevoltent sur ses épaules tandis qu'il regarde alentour. Lorsqu'il t'aperçoit, il s'écrie, "Kyse le gardien m'a dit qu'tu viendrais. Tu l'as bien affaibli… le chaos a été réduit en ville et les plans du deva vont pas fort. Va finir l'boulot, maintenant."~ */
  IF ~~ THEN REPLY #57304 /* ~"Comment tu sais ça ?"~ */ DO ~SetGlobal("Know_Hermit","GLOBAL",1)
~ GOTO 14
  IF ~~ THEN REPLY #57305 /* ~"D'accord. Au revoir."~ */ DO ~SetGlobal("Know_Hermit","GLOBAL",1)
~ GOTO 15
END

IF ~  Global("Know_Hermit","GLOBAL",1)
Global("Current_Area","GLOBAL",900)
GlobalLT("Curst_Counter","GLOBAL",3)
~ THEN BEGIN 11 // from:
  SAY #57306 /* ~Tu aperçois le vieil ermite du tunnel. Lorsqu'il t'aperçoit, il s'écrie, "Kyse le gardien m'a dit qu'tu viendrais. Le deva est fort, voyageur. Tu ferais mieux d'signer ton arrêt d'mort tout d'suite plutôt que d'lui faire face. Tu peux l'affaiblir en réduisant l'chaos qui règne en ville… il s'en nourrit."~ */
  IF ~~ THEN REPLY #57307 /* ~"Comment tu sais ça ?"~ */ GOTO 14
  IF ~~ THEN REPLY #57308 /* ~"De toute façon, je remonte."~ */ GOTO 15
  IF ~~ THEN REPLY #57309 /* ~"Hors de mon chemin, vieil homme."~ */ GOTO 16
END

IF ~  Global("Know_Hermit","GLOBAL",1)
Global("Current_Area","GLOBAL",900)
GlobalGT("Curst_Counter","GLOBAL",2)
GlobalLT("Curst_Counter","GLOBAL",6)
~ THEN BEGIN 12 // from:
  SAY #57310 /* ~Tu aperçois le vieil ermite du tunnel. Lorsqu'il t'aperçoit, il s'écrie, "Kyse le gardien m'a dit qu'tu viendrais. Le deva est toujours fort, voyageur, mais tes actions l'ont un peu ralenti. Tu peux l'affaiblir encore plus en réduisant l'chaos qui règne en ville… il s'en nourrit."~ */
  IF ~~ THEN REPLY #57311 /* ~"Comment tu sais ça ?"~ */ GOTO 14
  IF ~~ THEN REPLY #57312 /* ~"Je suis prêt à lui faire face."~ */ GOTO 15
  IF ~~ THEN REPLY #57313 /* ~"Hors de mon chemin, vieil homme."~ */ GOTO 16
END

IF ~  Global("Know_Hermit","GLOBAL",1)
Global("Current_Area","GLOBAL",900)
GlobalGT("Curst_Counter","GLOBAL",5)
~ THEN BEGIN 13 // from:
  SAY #57317 /* ~Tu aperçois un homme sale, bossu, sombre et grincheux. Ses cheveux gras virevoltent sur ses épaules tandis qu'il regarde alentour. Lorsqu'il t'aperçoit, il s'écrie, "Kyse le gardien m'a dit qu'tu viendrais. Tu l'as bien affaibli… le chaos a été réduit en ville et les plans du deva vont pas fort. Va finir l'boulot, maintenant."~ */
  IF ~~ THEN REPLY #57315 /* ~"Comment tu sais ça ?"~ */ GOTO 14
  IF ~~ THEN REPLY #57316 /* ~"D'accord. Au revoir."~ */ GOTO 15
END

IF ~~ THEN BEGIN 14 // from: 8.0 9.0 10.0 11.0 12.0 13.0
  SAY #57318 /* ~"J'peux *l'sentir* là-haut, croissant et décroissant comme une lune brûlante. J'peux *l'entendre* se demander quand tu viendras. L'envie de t'affronter le démange."~ */
  IF ~~ THEN REPLY #57319 /* ~"Il aura bientôt ce qu'il cherche, mais pas tout de suite. Au revoir."~ */ GOTO 15
  IF ~~ THEN REPLY #57320 /* ~"Alors il aura ce qu'il cherche."~ */ GOTO 15
END

IF ~~ THEN BEGIN 15 // from: 8.1 9.1 10.1 11.1 12.1 13.1 14.0 14.1
  SAY #57321 /* ~"Avant qu'tu partes.. tu accepteras bien la bénédiction d'un vieil homme ? Elle pourrait t'être utile contre le deva ou les autres horreurs qu'tu pourrais rencontrer. Tu veux qu'je te guérisse ?"~ */
  IF ~~ THEN REPLY #57322 /* ~"Non, merci."~ */ GOTO 18
  IF ~~ THEN REPLY #57323 /* ~"Non. Hors de mon chemin."~ */ GOTO 17
  IF ~  NumInParty(1)
~ THEN REPLY #57324 /* ~"Oui."~ */ GOTO 19
  IF ~  NumInPartyGT(1)
~ THEN REPLY #57325 /* ~"Oui."~ */ GOTO 20
END

IF ~~ THEN BEGIN 16 // from: 8.2 9.2 11.2 12.2
  SAY #57326 /* ~Il pose une main étonnamment forte sur ta poitrine. "Avant de partir, tu accepteras bien ma bénédiction ? Même si j'déteste ta tête de balafré, faut qu'je sois sûr que t'es prêt… c'est pas qu'pour toi. Laisse-moi guérir tes blessures."~ */
  IF ~~ THEN REPLY #57327 /* ~"Je ne veux pas de ta bénédiction. Hors de mon chemin."~ */ GOTO 17
  IF ~  NumInParty(1)
~ THEN REPLY #57328 /* ~"D'accord."~ */ GOTO 19
  IF ~  NumInPartyGT(1)
~ THEN REPLY #57329 /* ~"D'accord."~ */ GOTO 20
END

IF ~~ THEN BEGIN 17 // from: 15.1 16.0
  SAY #57331 /* ~"Alors souviens-toi d'ça quand tu t'videras de ton sang à ses pieds." Il grimace. "Ça m'coûte, mais j'te souhaite bonne chance."~ */
  IF ~~ THEN REPLY #57332 /* ~"Ouais, merci. Au revoir."~ */ DO ~EscapeArea()
~ EXIT
END

IF ~~ THEN BEGIN 18 // from: 15.0
  SAY #57334 /* ~"Dans ce cas, il en ira de ta responsabilité. N'échoue pas balafré." Il s'agenouille devant toi.~ */
  IF ~~ THEN REPLY #57335 /* ~"Merci. Au revoir."~ */ DO ~EscapeArea()
~ EXIT
END

IF ~~ THEN BEGIN 19 // from: 15.2 16.1
  SAY #57338 /* ~Il ferme les yeux, se concentre et déclare, "Permets-moi de guérir tes blessures." Il ouvre les yeux. "Maintenant, va."~ */
  IF ~~ THEN REPLY #57340 /* ~"Merci.~ */ DO ~FullHeal(Protagonist)
EscapeArea()
~ EXIT
END

IF ~~ THEN BEGIN 20 // from: 15.3 16.2 21.0 21.1 21.2 21.3 21.4 21.5 21.6 21.7
  SAY #57342 /* ~"Qui a besoin de mes soins ?"~ */
  IF ~  HPPercentLT(Protagonist,100)
~ THEN REPLY #57344 /* ~"Moi."~ */ DO ~FullHeal(Protagonist)
~ GOTO 21
  IF ~  NearbyDialog("DAnnah")
HPPercentLT("Annah",100)
~ THEN REPLY #57349 /* ~"Annah."~ */ DO ~FullHeal("Annah")
~ GOTO 21
  IF ~  NearbyDialog("DMorte")
HPPercentLT("Morte",100)
~ THEN REPLY #57351 /* ~"Morte."~ */ DO ~FullHeal("Morte")
~ GOTO 21
  IF ~  NearbyDialog("DDakkon")
HPPercentLT("Dakkon",100)
~ THEN REPLY #57355 /* ~"Dak'kon."~ */ DO ~FullHeal("Dakkon")
~ GOTO 21
  IF ~  NearbyDialog("DNordom")
HPPercentLT("Nordom",100)
~ THEN REPLY #57356 /* ~"Nordom."~ */ DO ~FullHeal("Nordom")
~ GOTO 21
  IF ~  NearbyDialog("DGrace")
HPPercentLT("Grace",100)
~ THEN REPLY #57358 /* ~"Tombée-en-Disgrâce."~ */ DO ~FullHeal("Grace")
~ GOTO 21
  IF ~  NearbyDialog("DIgnus")
HPPercentLT("Ignus",100)
~ THEN REPLY #57360 /* ~"Ignus."~ */ DO ~FullHeal("Ignus")
~ GOTO 21
  IF ~  NearbyDialog("DVhail")
HPPercentLT("Vhail",100)
~ THEN REPLY #57362 /* ~"Vhailor."~ */ DO ~FullHeal("Vhail")
~ GOTO 21
  IF ~~ THEN REPLY #57366 /* ~"Aucun d'entre nous. Mais merci pour la bénédiction. Au revoir."~ */ DO ~EscapeArea()
~ EXIT
END

IF ~~ THEN BEGIN 21 // from: 20.0 20.1 20.2 20.3 20.4 20.5 20.6 20.7
  SAY #57367 /* ~"Voilà. Quelqu'un d'autre a des blessures à me montrer ?"~ */
  IF ~  HPPercentLT(Protagonist,100)
~ THEN REPLY #57368 /* ~"Moi."~ */ DO ~FullHeal(Protagonist)
~ GOTO 20
  IF ~  NearbyDialog("DAnnah")
HPPercentLT("Annah",100)
~ THEN REPLY #57369 /* ~"Annah."~ */ DO ~FullHeal("Annah")
~ GOTO 20
  IF ~  NearbyDialog("DMorte")
HPPercentLT("Morte",100)
~ THEN REPLY #57370 /* ~"Morte."~ */ DO ~FullHeal("Morte")
~ GOTO 20
  IF ~  NearbyDialog("DDakkon")
HPPercentLT("Dakkon",100)
~ THEN REPLY #57372 /* ~"Dak'kon."~ */ DO ~FullHeal("Dakkon")
~ GOTO 20
  IF ~  NearbyDialog("DNordom")
HPPercentLT("Nordom",100)
~ THEN REPLY #57373 /* ~"Nordom."~ */ DO ~FullHeal("Nordom")
~ GOTO 20
  IF ~  NearbyDialog("DGrace")
HPPercentLT("Grace",100)
~ THEN REPLY #57374 /* ~"Tombée-en-Disgrâce."~ */ DO ~FullHeal("Grace")
~ GOTO 20
  IF ~  NearbyDialog("DIgnus")
HPPercentLT("Ignus",100)
~ THEN REPLY #57375 /* ~"Ignus."~ */ DO ~FullHeal("Ignus")
~ GOTO 20
  IF ~  NearbyDialog("DVhail")
HPPercentLT("Vhail",100)
~ THEN REPLY #57376 /* ~"Vhailor."~ */ DO ~FullHeal("Vhail")
~ GOTO 20
  IF ~~ THEN REPLY #57377 /* ~"Aucun d'entre nous. Mais merci pour la bénédiction. Au revoir."~ */ DO ~EscapeArea()
~ EXIT
END

IF ~~ THEN BEGIN 22 // from: 1.3 2.4
  SAY #68484 /* ~"Vraiment ? D'accord. Tu peux dormir chez moi, tout près d'ici. Si des monstres approchent, je te réveillerai."~ */
  IF ~~ THEN REPLY #32017 /* ~"Merci."~ */ DO ~FadeToColor([20.0],0)
Wait(1)
RestPartyEx(0,10,FALSE)
FadeFromColor([20.0],0)
~ EXIT
END
