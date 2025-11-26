// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DSCOFF.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\fr_FR\dialog.tlk
// dialogF  : (none)

BEGIN ~DSCOFF~

IF ~  NumTimesTalkedTo(0)
~ THEN BEGIN 0 // from:
  SAY #3032 /* ~Tu vois un type maigre et voûté sur son bureau. Il gribouille sur un bout de papier. Il perd ses cheveux, qu'il porte en queue de cheval, et son nez crochu arbore de fines lunettes. Il pourrait avoir de vingt à cinquante ans. Il prend la parole sans lever la tête. "Qu'est-ce que tu veux ? Dépêche-toi."~ */
  IF ~  Global("Gilt_Miss","GLOBAL",1)
~ THEN REPLY #3033 /* ~"Qui es-tu ?"~ */ GOTO 1
  IF ~~ THEN REPLY #61601 /* ~"Qu'est-ce que tu fais ici ?"~ */ GOTO 3
  IF ~~ THEN REPLY #65168 /* ~"Qu'est-ce que c'est que cet endroit ?"~ */ GOTO 3
  IF ~  !Global("AR0508_Visited","GLOBAL",1)
Global("Morte_Stolen","GLOBAL",1)
~ THEN REPLY #65169 /* ~"J'ai perdu un crâne."~ */ GOTO 4
  IF ~  GlobalGT("Smuggle","GLOBAL",4)
!Global("Know_Penn","AR0509",1)
~ THEN REPLY #65170 /* ~"La ville doit brûler."~ */ DO ~SetGlobal("Know_Penn","AR0509",1)
~ GOTO 7
  IF ~~ THEN REPLY #65172 /* ~"J'ai quelques questions…"~ */ GOTO 12
  IF ~  PartyHasItem("GiltBill")
Global("Gilt_Miss","GLOBAL",1)
~ THEN REPLY #65203 /* ~"Oui. Giltspur m'a demandé de te donner un prospectus pour que tu en imprimes cent copies."~ */ DO ~SetGlobal("Gilt_Miss","GLOBAL",2)
TakePartyItemNum("GiltBill",1)
~ GOTO 5
  IF ~~ THEN REPLY #66220 /* ~"Laisse tomber. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #65181 /* ~"Mon nom c'est Penn, bige. Et ta question répond à la mienne : tu ne savais pas du tout que c'était un magasin d'imprimerie avant d'entrer, et maintenant tu t'es mis dans la tête de gaspiller non seulement ton temps, mais aussi le mien."~ */
  IF ~~ THEN REPLY #65200 /* ~"Qu'est-ce que tu imprimes ?"~ */ GOTO 2
  IF ~~ THEN REPLY #65201 /* ~"J'ai quelques questions…"~ */ GOTO 12
  IF ~~ THEN REPLY #65202 /* ~"Bon, très bien. Laisse tomber. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.0 3.0 12.1
  SAY #65182 /* ~"Livres. Pamphlets. Prospectus. Paroles. Lettres. Tout ce que tu veux." Il rectifie, "mais je n'imprime pas de papiers scabreux, et je ne satisferai aucune de tes perversions et d'ailleurs je ne te poserai même pas la question."~ */
  IF ~~ THEN REPLY #65236 /* ~"J'ai quelques questions…"~ */ GOTO 12
  IF ~~ THEN REPLY #65237 /* ~"Bon, très bien. Merci. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 0.1 0.2 12.2
  SAY #65183 /* ~Il arrête d'écrire et te regarde fixement. "Es-tu complètement idiot ? C'est un magasin d'imprimerie. J'imprime des trucs, ici. Regarde autour de toi. J'imprime !"~ */
  IF ~~ THEN REPLY #65238 /* ~"Qu'est-ce que tu imprimes ?"~ */ GOTO 2
  IF ~~ THEN REPLY #65239 /* ~"J'ai quelques questions…"~ */ GOTO 12
  IF ~~ THEN REPLY #65240 /* ~"Je vois. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 0.3 12.4
  SAY #65184 /* ~Il grogne. "Ça m'en a tout l'air."~ */
  IF ~~ THEN REPLY #65241 /* ~"Ne prends pas ce ton-là avec moi ou tu vas le regretter."~ */ GOTO 14
  IF ~~ THEN REPLY #65242 /* ~"Je suis sérieux. On m'a volé un de mes compagnons."~ */ DO ~SetGlobal("Know_Lothar","GLOBAL",1)
~ GOTO 6
  IF ~~ THEN REPLY #65243 /* ~"J'ai quelques questions…"~ */ GOTO 12
  IF ~~ THEN REPLY #65244 /* ~"Laisse tomber. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 0.6 12.5
  SAY #65185 /* ~Il te prend le prospectus des mains, le regarde et dit : "je lui ferai plus tard, va lui dire." Il se retourne vers son bureau.~ */
  IF ~~ THEN REPLY #65245 /* ~"J'ai quelques questions…"~ */ GOTO 12
  IF ~~ THEN REPLY #65248 /* ~"Alors, au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 6 // from: 4.1
  SAY #65186 /* ~"Alors il faut que tu cherches Lothar, le Maître des Os. On m'a dit qu'il possédait une jolie petite collection de crânes. Mais je ne sais pas où le trouver et même si je le savais, je ne le dirais pas. Il en connaît plus sur la magie que n'importe quel bige, et je ne veux pas le contrarier." Il retourne à ses papiers. "Maintenant va-t'en."~ */
  IF ~~ THEN REPLY #65246 /* ~"J'ai quelques questions…"~ */ GOTO 12
  IF ~~ THEN REPLY #65249 /* ~"Ne prends pas ce ton-là avec moi, l'ami."~ */ GOTO 14
  IF ~~ THEN REPLY #65250 /* ~"Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 7 // from: 0.4 12.6
  SAY #65187 /* ~"Comment ? Qu'est-ce que tu as dit ? Ça ne me dit rien."~ */
  IF ~  Global("Lawful_Vaxis_3","GLOBAL",0)
~ THEN REPLY #65251 /* ~"J'ai dit que la ville devait brûler."~ */ GOTO 20
  IF ~  Global("Lawful_Vaxis_3","GLOBAL",0)
~ THEN REPLY #65252 /* ~"Bedai-Lihn m'a envoyé."~ */ GOTO 20
  IF ~  Global("Lawful_Vaxis_3","GLOBAL",0)
~ THEN REPLY #65253 /* ~"Laisse tomber. Au revoir."~ */ GOTO 20
  IF ~  Global("Lawful_Vaxis_3","GLOBAL",1)
~ THEN REPLY #65254 /* ~"J'ai dit que la ville devait brûler."~ */ GOTO 21
  IF ~  Global("Lawful_Vaxis_3","GLOBAL",1)
~ THEN REPLY #65255 /* ~"Bedai-Lihn m'a envoyé."~ */ GOTO 22
  IF ~  Global("Lawful_Vaxis_3","GLOBAL",1)
~ THEN REPLY #65256 /* ~"Laisse tomber. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 8 // from:
  SAY #65188 /* ~BLANK NODE~ */
  IF ~~ THEN REPLY #65247 /* ~"J'ai quelques questions…"~ */ GOTO 12
  IF ~~ THEN REPLY #65257 /* ~"Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 9 // from: 12.8
  SAY #65189 /* ~"Une lettre d'amour, hein ? Bon. Mais c'est pas gratuit. Disons… allez… cent pièces. Tu as l'air prêt à tout pour l'avoir."~ */
  IF ~  PartyGoldGT(99)
~ THEN REPLY #65258 /* ~"Voilà."~ */ DO ~TakePartyGold(100)
GiveItemCreate("LoveLtr",Protagonist,1,0,0)
~ GOTO 11
  IF ~  CheckStatGT(Protagonist,15,CHR)
~ THEN REPLY #65259 /* ~"Tu me fais un prix ?"~ */ GOTO 15
  IF ~  CheckStatLT(Protagonist,16,CHR)
~ THEN REPLY #65260 /* ~"Tu me fais un prix ?"~ */ GOTO 16
  IF ~~ THEN REPLY #65261 /* ~"Laisse tomber. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 10 // from: 12.3
  SAY #65190 /* ~Il te prend la lettre des mains, la regarde et en fait une boule qui est rapidement réduite en cendres. Il te regarde calmement. "On dirait que quelqu'un a diffamé mon honnête nom. Alors, tu voulais quelque chose ?"~ */
  IF ~~ THEN REPLY #65262 /* ~"N'es-tu pas inquiet au sujet de cette diffamation ?"~ */ GOTO 17
  IF ~~ THEN REPLY #65263 /* ~"Je veux faire partie de votre groupe."~ */ GOTO 18
  IF ~~ THEN REPLY #65264 /* ~"J'ai quelques questions…"~ */ GOTO 12
  IF ~~ THEN REPLY #65265 /* ~"Non. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 11 // from: 9.0 15.0 16.0
  SAY #65191 /* ~Il prend ton argent, réfléchit pendant un instant et choisit une feuille de papier parfumée dans un tiroir du bureau. Il y griffonne quelques lignes insignifiantes et soi-disant chargées d'amour dans une écriture fleurie et élégante. "Voilà qui fera sûrement l'affaire."~ */
  IF ~~ THEN REPLY #65266 /* ~"Oui. J'ai d'autres questions…"~ */ GOTO 12
  IF ~~ THEN REPLY #65267 /* ~"Oui. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 12 // from: 0.5 1.1 2.0 3.1 4.2 5.0 6.0 8.0 10.2 11.0 15.1 16.1 17.1 18.0 19.0 21.0 22.0 25.0 32.0 77.2 78.0 79.1
  SAY #65192 /* ~"Est-ce qu'elles ont quelque chose à voir avec mon travail ?"~ */
  IF ~~ THEN REPLY #65268 /* ~"Et bien, non…"~ */ GOTO 13
  IF ~~ THEN REPLY #65269 /* ~"Qu'est-ce que tu imprimes ?"~ */ GOTO 2
  IF ~~ THEN REPLY #65270 /* ~"Qu'est-ce que c'est que cet endroit ?"~ */ GOTO 3
  IF ~  PartyHasItem("PenNote")
~ THEN REPLY #65271 /* ~"C'est toi qui a écrit ce message à la Morgue ?"~ */ DO ~DestroyPartyItem("PenNote",TRUE)
~ GOTO 10
  IF ~  !Global("AR0508_Visited","GLOBAL",1)
Global("Morte_Stolen","GLOBAL",1)
~ THEN REPLY #65272 /* ~"Oui. J'ai perdu un crâne."~ */ GOTO 4
  IF ~  PartyHasItem("GiltBill")
Global("Gilt_Miss","GLOBAL",1)
~ THEN REPLY #65273 /* ~"Oui. Giltspur m'a demandé de te donner un prospectus pour que tu en imprimes cent copies."~ */ DO ~SetGlobal("Gilt_Miss","GLOBAL",2)
TakePartyItemNum("GiltBill",1)
~ GOTO 5
  IF ~  GlobalGT("Smuggle","GLOBAL",4)
!Global("Know_Penn","AR0509",1)
~ THEN REPLY #65274 /* ~"Oui. La ville doit brûler."~ */ DO ~SetGlobal("Know_Penn","AR0509",1)
~ GOTO 7
  IF ~  Global("Know_Penn","AR0509",1)
~ THEN REPLY #65275 /* ~"La ville doit brûler."~ */ GOTO 23
  IF ~  Global("Jul_Mission_1","GLOBAL",1)
~ THEN REPLY #65276 /* ~"Je voudrais que tu m'imprimes une lettre d'amour."~ */ GOTO 9
  IF ~~ THEN REPLY #65300 /* ~"Non. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 13 // from: 12.0
  SAY #65193 /* ~"Alors tu perds ton temps et le mien. Bonne journée." Il se retourne vers son bureau.~ */
  IF ~~ THEN REPLY #65280 /* ~"Ne m'ignore pas."~ */ GOTO 14
  IF ~~ THEN REPLY #65281 /* ~"Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 14 // from: 4.0 6.1 13.0 18.1 19.1 32.1 77.0 79.0
  SAY #65194 /* ~Il agite la main… et tu te retrouves à l'extérieur du magasin.~ */
  IF ~~ THEN REPLY #65282 /* ~"Qu'est-ce qu'…"~ */ DO ~IncrementGlobal("Penn_Out","GLOBAL",1)
TeleportParty("AR0500",[3348.1081],10)
~ EXIT
END

IF ~~ THEN BEGIN 15 // from: 9.1
  SAY #65195 /* ~"D'accord. Soixante-quinze pièces. C'est à prendre ou à laisser. "~ */
  IF ~  PartyGoldGT(74)
~ THEN REPLY #65283 /* ~"Je le prends."~ */ DO ~TakePartyGold(75)
GiveItemCreate("LoveLtr",Protagonist,1,0,0)
~ GOTO 11
  IF ~~ THEN REPLY #65284 /* ~"Ça ne m'intéresse pas. J'ai d'autres questions…"~ */ GOTO 12
  IF ~~ THEN REPLY #65285 /* ~"Ça ne m'intéresse pas. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 16 // from: 9.2
  SAY #65196 /* ~Il lâche un petit rire. "Sûrement pas, l'ami. C'est cent pièces ou rien."~ */
  IF ~  PartyGoldGT(99)
~ THEN REPLY #65286 /* ~"Voilà."~ */ DO ~TakePartyGold(100)
GiveItemCreate("LoveLtr",Protagonist,1,0,0)
~ GOTO 11
  IF ~~ THEN REPLY #65287 /* ~"Alors laisse tomber. J'aurais quelques questions à te poser…"~ */ GOTO 12
  IF ~~ THEN REPLY #65288 /* ~"Laisse tomber. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 17 // from: 10.0
  SAY #65197 /* ~"Pourquoi le serais-je ? C'est juste la concurrence à Sigil. Je crois savoir qui ça pourrait être, et j'ai une petite surprise pour lui."~ */
  IF ~~ THEN REPLY #65289 /* ~"Est-ce que je peux t'aider ?"~ */ GOTO 19
  IF ~~ THEN REPLY #65290 /* ~"Bon, très bien. J'ai d'autres questions…"~ */ GOTO 12
  IF ~~ THEN REPLY #65291 /* ~"Génial. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 18 // from: 10.1
  SAY #65198 /* ~Il te fixe. "Je suis sûr que tu me confonds avec quelqu'un d'autre. Est-ce que tu as quelque chose à imprimer aujourd'hui ou dois-je te jeter dehors ?"~ */
  IF ~~ THEN REPLY #65292 /* ~"J'ai quelques questions…"~ */ GOTO 12
  IF ~~ THEN REPLY #65293 /* ~"Tu devras me jeter dehors."~ */ GOTO 14
  IF ~~ THEN REPLY #65294 /* ~"Non. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 19 // from: 17.0
  SAY #65199 /* ~"Es-tu aussi stupide que tu en as l'air ? Certainement pas."~ */
  IF ~~ THEN REPLY #65295 /* ~"Bon, très bien. J'ai quelques questions à te poser…"~ */ GOTO 12
  IF ~~ THEN REPLY #65296 /* ~"Ne prends pas ce ton-là avec moi."~ */ GOTO 14
  IF ~~ THEN REPLY #65297 /* ~"Alors, au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 20 // from: 7.0 7.1 7.2
  SAY #65204 /* ~"J'ai entendu parler de toi." Il te regarde, d'un œil perçant. "Si Bedai-Lihn t'a envoyé jusqu'ici, cela signifie que tu veux te joindre à nous. C'est ça ?"~ */
  IF ~~ THEN REPLY #65298 /* ~"Oui."~ */ GOTO 31
  IF ~~ THEN REPLY #65299 /* ~"Pas vraiment."~ */ GOTO 32
END

IF ~~ THEN BEGIN 21 // from: 7.3
  SAY #65205 /* ~"Cela ne me dit absolument rien, sauf que tu as prêté attention aux divagations d'un azimuté. Bon maintenant, tu as besoin de quelque chose ?"~ */
  IF ~~ THEN REPLY #65301 /* ~"Oui. J'ai des questions…"~ */ GOTO 12
  IF ~~ THEN REPLY #65302 /* ~"Non. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 22 // from: 7.4
  SAY #65206 /* ~"Qui ? Bedai-Lihn ? C'est comme ça que cette horrible sorcière se fait appeler maintenant ?" Il soupire d'un air las. "C'est une vieille maîtresse jalouse. Elle a essayé de me faire arrêter en portant plainte plusieurs fois contre moi, mais elle n'a jamais réussi à me faire épingler." Il se redresse de nouveau. "As-tu besoin de quelque chose d'autre ?"~ */
  IF ~~ THEN REPLY #65303 /* ~"J'ai des questions à te poser…"~ */ GOTO 12
  IF ~~ THEN REPLY #65304 /* ~"Non. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 23 // from: 12.7
  SAY #65207 /* ~"Oui, oui, tu l'as déjà dit. Que voulais-tu dire ?"~ */
  IF ~  Global("Lawful_Vaxis_3","GLOBAL",1)
~ THEN REPLY #65305 /* ~"Pourquoi Bedai-Lihn m'a-t-elle envoyé pour te dire ça, si ça ne veut rien dire ?"~ */ GOTO 25
  IF ~  Global("Lawful_Vaxis_3","GLOBAL",0)
~ THEN REPLY #65306 /* ~"Pourquoi Bedai-Lihn m'a-t-elle envoyé ?"~ */ GOTO 24
END

IF ~~ THEN BEGIN 24 // from: 23.1
  SAY #65208 /* ~"À ton avis, bige ? Tu viens de l'aider à détruire les Hommes-Dieux. Elle a cru que tu voudrais aller plus loin. L'offre est toujours valable. Tu acceptes ou pas ?"~ */
  IF ~~ THEN REPLY #65307 /* ~"Pas tout de suite."~ */ GOTO 32
  IF ~~ THEN REPLY #65308 /* ~"Oui."~ */ GOTO 31
END

IF ~~ THEN BEGIN 25 // from: 23.0
  SAY #65209 /* ~"Les vieilles rancunes et les passions non partagées ne disparaissent pas facilement, et la démence encore moins." Tu as du mal à imaginer que cet homme puisse être aimé passionnément par qui que ce soit ; il fait plutôt penser à un fou. "Avais-tu besoin d'autre chose ?"~ */
  IF ~~ THEN REPLY #65309 /* ~"Oui, j'ai des questions…"~ */ GOTO 12
  IF ~~ THEN REPLY #65310 /* ~"Non. Au revoir."~ */ EXIT
END

IF ~  Global("Join_Anarchists","GLOBAL",2)
~ THEN BEGIN 26 // from:
  SAY #65210 /* ~Craye lève les yeux lorsque tu entres dans son magasin. "Dehors, et restes-y." Il fait un geste de la main et te voilà dehors.~ */
  IF ~~ THEN REPLY #65311 /* ~"Qu'est-ce qu'…"~ */ DO ~TeleportParty("AR0500",[3348.1081],10)
SetGlobal("Penn_Out","GLOBAL",2)
~ EXIT
END

IF ~  Global("Join_Anarchists","GLOBAL",1)
Global("AR0902_Visited","GLOBAL",1)
~ THEN BEGIN 27 // from:
  SAY #65211 /* ~"Re-bonjour." Penn garde la tête baissée sur ses papiers. "Ebb et ses copains t'ont-ils aidé à Maudith ?" Il a l'air de complètement se ficher de la réponse.~ */
  IF ~~ THEN REPLY #65312 /* ~"Oui. J'ai des questions à te poser…"~ */ GOTO 30
  IF ~~ THEN REPLY #65313 /* ~"Ouais. Tu as d'autres missions pour moi ?"~ */ GOTO 28
  IF ~~ THEN REPLY #65314 /* ~"D'accord. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 28 // from: 27.1
  SAY #65212 /* ~"Pas maintenant. Je te dirai s'il y a quelque chose. As-tu besoin d'autre chose tout de suite ou est-ce que tu ne cherches qu'à m'interrompre ?"~ */
  IF ~~ THEN REPLY #65315 /* ~"J'ai quelques questions…"~ */ GOTO 30
  IF ~~ THEN REPLY #65316 /* ~"Non. Au revoir."~ */ EXIT
END

IF ~  Global("Join_Anarchists","GLOBAL",1)
~ THEN BEGIN 29 // from:
  SAY #65213 /* ~Comme d'habitude, Penn semble très occupé à écrire. "As-tu besoin que j'écrive ou que j'imprime quelque chose ? Si oui, dis moi ce que c'est et je le ferai. Sinon, va parler aux gens de la cellule de la Voûte du Neuvième Monde et ils prendront soin de toi."~ */
  IF ~~ THEN REPLY #65317 /* ~"J'avais juste quelques questions…"~ */ GOTO 30
  IF ~~ THEN REPLY #65318 /* ~"Laisse tomber. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 30 // from: 27.0 28.0 29.0 33.0 34.0 35.0 36.0 37.0 38.0 39.0 40.0 41.1 42.1 69.2 70.4 71.1 72.1 73.1 74.1 75.1 76.1
  SAY #65214 /* ~"Sois bref, je suis occupé."~ */
  IF ~  !Global("AR0508_Visited","GLOBAL",1)
Global("Morte_Stolen","GLOBAL",1)
~ THEN REPLY #65319 /* ~"J'ai perdu un crâne."~ */ GOTO 33
  IF ~  PartyHasItem("GiltBill")
Global("Gilt_Miss","GLOBAL",1)
~ THEN REPLY #65320 /* ~"Giltspur m'a demandé de te donner un prospectus pour que tu en imprimes cent copies."~ */ DO ~SetGlobal("Gilt_Miss","GLOBAL",2)
TakePartyItemNum("GiltBill",1)
~ GOTO 34
  IF ~  Global("Jul_Mission_1","GLOBAL",1)
~ THEN REPLY #65323 /* ~"Je voudrais que tu m'imprimes une lettre d'amour."~ */ GOTO 36
  IF ~~ THEN REPLY #65324 /* ~"Quel est le mot de passe pour notre cellule déjà ?"~ */ GOTO 37
  IF ~  Global("Penn_Task","AR0509",0)
~ THEN REPLY #65325 /* ~"Sur quoi travailles-tu ?"~ */ DO ~IncrementGlobal("Penn_Task","AR0509",1)
~ GOTO 38
  IF ~  Global("Penn_Task","AR0509",1)
~ THEN REPLY #65326 /* ~"Sur quoi travailles-tu ?"~ */ DO ~IncrementGlobal("Penn_Task","AR0509",1)
~ GOTO 39
  IF ~  Global("Penn_Task","AR0509",2)
~ THEN REPLY #65327 /* ~"Sur quoi travailles-tu ?"~ */ DO ~IncrementGlobal("Penn_Task","AR0509",1)
~ GOTO 40
  IF ~  Global("Penn_Task","AR0509",3)
~ THEN REPLY #65328 /* ~"Sur quoi travailles-tu ?"~ */ GOTO 41
  IF ~~ THEN REPLY #65329 /* ~"Je voudrais parler de la révolution…"~ */ GOTO 42
  IF ~~ THEN REPLY #65330 /* ~"Je voudrais te poser quelques questions sur l'organisation."~ */ GOTO 70
  IF ~  Global("Kill_Vorten","GLOBAL",1)
!Dead("Vorten")
~ THEN REPLY #65429 /* ~"Leena veut que je fasse mes preuves."~ */ GOTO 71
  IF ~~ THEN REPLY #65430 /* ~"Très bien. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 31 // from: 20.0 24.1
  SAY #65215 /* ~"Sais-tu qui nous sommes ?"~ */
  IF ~~ THEN REPLY #65331 /* ~"Dis-le-moi."~ */ GOTO 43
  IF ~~ THEN REPLY #65332 /* ~"Non, je veux juste devenir membre. Si votre truc, c'est la destruction, je suis des vôtres."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Penn_1","GLOBALLaw",-1)
~ GOTO 43
  IF ~  Global("Good_Vaxis_3","GLOBAL",1)
~ THEN REPLY #65333 /* ~"Si tu es connecté à Vaxis, c'est que tu fais partie de la Ligue Révolutionnaire."~ */ GOTO 45
END

IF ~~ THEN BEGIN 32 // from: 20.1 24.0
  SAY #65216 /* ~"Alors pourquoi me parles-tu, d'abord ? Qu'est-ce que tu veux ? Tu attends que je te jette dehors ou quoi ?"~ */
  IF ~~ THEN REPLY #65334 /* ~"Non, mais j'ai des questions…"~ */ GOTO 12
  IF ~~ THEN REPLY #65335 /* ~"Oui. Jette-moi dehors."~ */ GOTO 14
  IF ~~ THEN REPLY #65336 /* ~"Non. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 33 // from: 30.0
  SAY #65217 /* ~"Si j'étais toi, je me dirigerais vers la maison en ruines près du mont-de-piété. Une fois à l'intérieur, cherche l'échelle qui descend. Fais tes prières, et descends le long de l'échelle. Lothar se trouve en bas, et ce n'est pas le type que j'aurais envie de contrarier. C'est un collectionneur de crânes et si le tien lui plaît, il le prendra. Et il le fera ! Même si tu te crois très fort, fais attention… tu es l'un de nos meilleurs atouts." Il lève les yeux de ses papiers. "Tu as besoin d'autre chose ?"~ */
  IF ~~ THEN REPLY #65337 /* ~"Juste la réponse à d'autres questions…"~ */ GOTO 30
  IF ~~ THEN REPLY #65338 /* ~"Non. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 34 // from: 30.1
  SAY #65218 /* ~Il te prend le prospectus des mains, le regarde et dit : "je lui ferai plus tard, va lui dire." Il se retourne vers son bureau.~ */
  IF ~~ THEN REPLY #65339 /* ~"J'ai d'autres questions…"~ */ GOTO 30
  IF ~~ THEN REPLY #65340 /* ~"Alors, au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 35 // from:
  SAY #65219 /* ~BLANK NODE~ */
  IF ~~ THEN REPLY #65341 /* ~"Juste la réponse à d'autres questions…"~ */ GOTO 30
  IF ~~ THEN REPLY #65342 /* ~"Non. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 36 // from: 30.2
  SAY #65220 /* ~"Une lettre d'amour, hein ? Vague et passionnée ? Très bien." Il réfléchit pendant un instant et choisit une feuille de papier parfumée dans un tiroir du bureau. Il y griffonne quelques lignes insignifiantes et soi-disant chargées d'amour dans une écriture fleurie et élégante. "Cela marchera, j'en suis sûr."~ */
  IF ~~ THEN REPLY #65343 /* ~"Merci. J'avais encore quelques questions…"~ */ DO ~GiveItemCreate("LoveLtr",Protagonist,1,0,0)
~ GOTO 30
  IF ~~ THEN REPLY #65344 /* ~"Merci. Au revoir."~ */ DO ~GiveItemCreate("LoveLtr",Protagonist,1,0,0)
~ EXIT
END

IF ~~ THEN BEGIN 37 // from: 30.3
  SAY #65221 /* ~Il lève les yeux de son travail et te jette un coup d'œil. "Le mot de passe est 'éclipse'. Dépêche-toi de l'utiliser avant qu'ils le changent."~ */
  IF ~~ THEN REPLY #65345 /* ~"Merci. J'ai d'autres questions."~ */ GOTO 30
  IF ~~ THEN REPLY #65346 /* ~"Merci. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 38 // from: 30.4
  SAY #65222 /* ~"Voici une pile de pamphlets contre l'Harmonium. Ils ne vont pas tarder à passer dans le Bas Quartier." Il continue de griffonner. "J'ai bientôt fini et je vais commencer autre chose." Son stylo touche à peine le papier.~ */
  IF ~~ THEN REPLY #65347 /* ~"Merci. J'ai d'autres questions."~ */ GOTO 30
  IF ~~ THEN REPLY #65350 /* ~"Je vois. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 39 // from: 30.5
  SAY #65223 /* ~"Une pétition anonyme exigeant une vraie représentation des tribunaux au lieu du semblant de loi que les Greffiers semblent maintenir." Cette fois-ci, il t'observe un peu plus longuement, comme-ci tu étais en train de tester sa patience.~ */
  IF ~~ THEN REPLY #65348 /* ~"Merci. J'ai d'autres questions."~ */ GOTO 30
  IF ~~ THEN REPLY #65351 /* ~"Je vois. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 40 // from: 30.6
  SAY #65224 /* ~"C'est un prospectus qui exige la libération de certains détenus des prisons de la ville. Ils ont été arrêtés à tort pour des crimes que la Ligue Révolutionnaire avait commis. Alors que j'apprécie un martyre pour la bonne cause…" Il s'arrête et te regarde fixement. "Alors que j'apprécie un martyre, je ne suis pas là pour sacrifier des innocents. Je suis là pour les sauver."~ */
  IF ~~ THEN REPLY #65349 /* ~"Merci. J'ai d'autres questions."~ */ GOTO 30
  IF ~~ THEN REPLY #65352 /* ~"Très bien. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 41 // from: 30.7
  SAY #65225 /* ~Il pose violemment son stylo et te lance un regard furieux. "Pourquoi n'arrêtes-tu pas de me poser ces questions et ne te mets-tu pas au travail comme tu es censé le faire ?" Il laisse échapper un profond soupir. "Je suis un homme très occupé et tout ce que tu sais faire, c'est me demander ce que je suis en train de fabriquer. Les enfants sont moins agaçants que toi parce qu'eux, au moins, lorsque je leur jette un regard furieux, ils comprennent qu'il faut qu'ils arrêtent de me demander ce que je suis en train de faire. Bon, qu'est-ce que tu voulais ?"~ */
  IF ~~ THEN REPLY #65353 /* ~"Pourquoi n'es-tu pas dehors en train de faire quelque chose d'utile ?"~ */ GOTO 46
  IF ~~ THEN REPLY #65354 /* ~"Juste la réponse à d'autres questions…"~ */ GOTO 30
  IF ~~ THEN REPLY #65355 /* ~"Rien, si tu te comportes comme ça. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 42 // from: 30.8
  SAY #65226 /* ~"Au lieu de parler de révolution, pourquoi ne sors-tu pas pour y prendre part ? Tue un agent de l'Harmonium ou abats un Homme-Poussière… Suis le vieil adage : ne parle pas, agis."~ */
  IF ~~ THEN REPLY #65356 /* ~"Pourquoi est-ce que tu n'es pas dehors en train d'agir au lieu d'écrire ?"~ */ GOTO 46
  IF ~~ THEN REPLY #65357 /* ~"D'accord, d'accord. J'ai d'autres questions…"~ */ GOTO 30
  IF ~~ THEN REPLY #65358 /* ~"Bon, d'accord. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 43 // from: 31.0 31.1
  SAY #65227 /* ~"Nous sommes la Ligue Révolutionnaire. Est-ce que tu sais ce pourquoi nous nous battons ?"~ */
  IF ~~ THEN REPLY #65359 /* ~"Oui."~ */ GOTO 44
  IF ~~ THEN REPLY #65360 /* ~"Non."~ */ GOTO 44
END

IF ~~ THEN BEGIN 44 // from: 43.0 43.1 45.0 45.1
  SAY #65228 /* ~"Nous nous battons pour le renversement de l'ordre de Sigil. Nous nous opposons aux autres factions. Nous sommes une faction qui n'en est pas vraiment une, nous nous organisons au nom du désordre. Nous démolissons pour que d'autres puissent reconstruire, avec de plus grandes libertés et un mode de vie meilleur. L'ordre ancien bouche le passage et les anciennes factions aveuglent le peuple."~ */
  IF ~~ THEN REPLY #65361 /* ~"Je croyais qu'ils recherchaient la vérité."~ */ GOTO 48
  IF ~~ THEN REPLY #65362 /* ~"Comment bouchent-ils le passage ?"~ */ GOTO 47
  IF ~~ THEN REPLY #65363 /* ~"Oui, je sais, et je suis d'accord avec toi. Perdons pas de temps."~ */ GOTO 50
END

IF ~~ THEN BEGIN 45 // from: 31.2
  SAY #65229 /* ~"C'est vrai. Et à la première tentative, qui plus est. Est-ce que tu sais pourquoi nous nous battons ?"~ */
  IF ~~ THEN REPLY #65364 /* ~"Oui."~ */ GOTO 44
  IF ~~ THEN REPLY #65365 /* ~"Non."~ */ GOTO 44
END

IF ~~ THEN BEGIN 46 // from: 41.0 42.0
  SAY #65230 /* ~Sa main se fige. Une goutte d'encre tombe sur le papier. "Qu'est-ce que tu as dit ?"~ */
  IF ~~ THEN REPLY #65378 /* ~"Je t'ai demandé pourquoi tu n'agissais pas, au lieu de te cacher ici dans ton magasin ?"~ */ GOTO 54
  IF ~~ THEN REPLY #65379 /* ~"Rien. Laisse tomber."~ */ GOTO 54
END

IF ~~ THEN BEGIN 47 // from: 44.1
  SAY #65231 /* ~"C'est simple : depuis toujours l'ordre ancien fait de son mieux pour écarter tout le monde des mystères du multivers. Après tout, que se passerait-il si nous avions *réellement* trouvé de quoi il s'agissait ? Cela pourrait faire s'écrouler leurs petits mondes. Certains sont déjà tellement sûrs qu'ils ont trouvé, que les autres ont automatiquement tort et doivent être exterminés. Ce n'est pas ce que j'appelle un forum où toutes les opinions sont tolérées."~ */
  IF ~~ THEN REPLY #65380 /* ~"Tu ne crois pas qu'ils font de leur mieux ?"~ */ GOTO 49
  IF ~~ THEN REPLY #65381 /* ~"Ne recherchent-ils pas la vérité ?"~ */ GOTO 48
  IF ~~ THEN REPLY #65382 /* ~"Je suis absolument d'accord. Perdons pas de temps. Je veux faire partie de ton groupe."~ */ GOTO 50
  IF ~~ THEN REPLY #65383 /* ~"Tu sais quoi, je crois que tu es un peu paranoïaque. Laisse tomber."~ */ DO ~SetGlobal("Join_Anarchists","GLOBAL",2)
~ GOTO 52
END

IF ~~ THEN BEGIN 48 // from: 44.0 47.1
  SAY #65232 /* ~"Non. Ils recherchent quelque chose qui prouve qu'ils ont raison et qui les fasse se sentir supérieurs. Ils se font des illusions en pensant qu'ils l'ont trouvé, et en plus ils persécutent ceux d'entre nous qui ne sont pas de leur avis."~ */
  IF ~~ THEN REPLY #65384 /* ~"Comment sais-tu qu'ils n'ont pas trouvé la Vérité ?"~ */ GOTO 51
  IF ~~ THEN REPLY #65385 /* ~"Comment sais-tu qu'ils ne font pas de leur mieux ?"~ */ GOTO 49
  IF ~~ THEN REPLY #65386 /* ~"Je suis d'accord. Je suis prêt à faire n'importe quoi pour leur faire du mal."~ */ GOTO 50
  IF ~~ THEN REPLY #65387 /* ~"Je pense que t'es complètement azimuté. Toute cette histoire de révolution me retourne l'estomac…"~ */ DO ~SetGlobal("Join_Anarchists","GLOBAL",2)
~ GOTO 52
END

IF ~~ THEN BEGIN 49 // from: 47.0 48.1
  SAY #65233 /* ~"L'ordre ancien cherche moins à découvrir la vérité qu'à conserver le pouvoir et à se remplir les poches. Nous ne pouvons progresser et apprendre tant que l'ordre ancien n'est pas balayé."~ */
  IF ~~ THEN REPLY #65388 /* ~"Comment sais-tu qu'ils n'ont pas trouvé la Vérité ?"~ */ GOTO 51
  IF ~~ THEN REPLY #65389 /* ~"Je suis d'accord. Je suis prêt à faire n'importe quoi pour leur faire du mal."~ */ GOTO 50
  IF ~~ THEN REPLY #65390 /* ~"Je pense que tu jettes le bébé avec l'eau du bain, et que tu as tout faux."~ */ DO ~SetGlobal("Join_Anarchists","GLOBAL",2)
~ GOTO 52
END

IF ~~ THEN BEGIN 50 // from: 44.2 47.2 48.2 49.1 51.1
  SAY #65234 /* ~"Si tu es si impatient, je vais t'assigner une mission. Finis ça et tu feras partie des nôtres."~ */
  IF ~~ THEN REPLY #65391 /* ~"Laisse-moi d'abord te poser quelques questions sur l'organisation de votre groupe."~ */ GOTO 58
  IF ~~ THEN REPLY #65392 /* ~"Quelle est la mission ?"~ */ GOTO 59
END

IF ~~ THEN BEGIN 51 // from: 48.0 49.0
  SAY #65235 /* ~"Parce que beaucoup d'entre eux ne l'ont pas trouvée, même leurs membres les plus fervents. Et ceux qui l'ont trouvée ne font pas tellement confiance à la 'vérité' qu'ils ont trouvée : les Hommes-Poussière pensent que nous devrions tous mourir. Les Sensats pensent que nous devrions tous nous faire plaisir et que l'Obscurité viendra. Les Hommes-Dieux sont de ceux qui n'ont même pas encore trouvé le Grand Soltif. Leur seule 'vérité' est 'ne baisse jamais les bras, un jour tu y arriveras'. Alors ils triment à la Grande Fonderie tous les jours jusqu'à leur mort. Quelles créatures intelligentes !"~ */
  IF ~~ THEN REPLY #65393 /* ~"C'est une vision bien erronée de leurs croyances."~ */ DO ~SetGlobal("Join_Anarchists","GLOBAL",2)
~ GOTO 52
  IF ~~ THEN REPLY #65394 /* ~"Il faut les démolir. Allons au bout de cette mission."~ */ GOTO 50
END

IF ~~ THEN BEGIN 52 // from: 47.3 48.3 49.2 51.0 54.3 55.2 56.3 57.0 59.1 60.2
  SAY #65366 /* ~"Tu n'approuve donc pas nos méthodes ?" Tu remarques que sa main tremble légèrement.~ */
  IF ~~ THEN REPLY #65395 /* ~"Je plaisante."~ */ GOTO 53
  IF ~~ THEN REPLY #65396 /* ~"Non, je ne vois pas."~ */ GOTO 53
END

IF ~~ THEN BEGIN 53 // from: 52.0 52.1
  SAY #65367 /* ~"Peut-être que tu ferais mieux d'aller dehors pour réfléchir à ta position." Il secoue sa main tremblante et tu te retrouves à l'extérieur du magasin.~ */
  IF ~~ THEN REPLY #65397 /* ~"Qu'est-ce qu'…"~ */ DO ~SetGlobal("Penn_Out","GLOBAL",2)
TeleportParty("AR0500",[3348.1081],10)
~ JOURNAL #65434 /* ~Apparemment, j'ai mis en colère Loimoqueuse Penn, l'imprimeur anarchiste, en lui disant que je n'étais pas d'accord avec ses méthodes. Il m'a téléporté hors de sa boutique et je ne peux plus y entrer, désormais.~ */ EXIT
END

IF ~~ THEN BEGIN 54 // from: 46.0 46.1
  SAY #65368 /* ~"Une révolution nécessite des chefs, bige. Une révolte nécessite un individu pour l'organiser. Tu penses qu'un simple chaos va anéantir les factions ? Des attaques au hasard ne suffisent pas, seul un plan cohérent pourra démolir les factions. Admets-le : il y a les épées, et il y a les mains qui guident les épées, et puis… et puis il y a les cerveaux qui guident ces mains."~ */
  IF ~~ THEN REPLY #65398 /* ~"Et qui t'a désigné comme cerveau ?"~ */ GOTO 55
  IF ~~ THEN REPLY #65399 /* ~"Pourquoi tous les individus ne sont-ils pas égaux ?"~ */ GOTO 56
  IF ~~ THEN REPLY #65400 /* ~"D'accord. Ce n'est pas la peine de te mettre dans tous tes états."~ */ GOTO 57
  IF ~~ THEN REPLY #65401 /* ~"Je crois que tu as tout faux et que tu ne devrais pas être le responsable ici."~ */ DO ~SetGlobal("Join_Anarchists","GLOBAL",2)
~ GOTO 52
END

IF ~~ THEN BEGIN 55 // from: 54.0 60.0
  SAY #65369 /* ~"Je l'ai fait. Personne d'autre ne semblait vouloir faire ce travail. Certains types ont besoin qu'on leur dise ce qu'ils ont à faire. D'autres prennent les initiatives. Je suis prêt à faire le travail, je suis prêt à me sentir coupable si j'échoue, et je suis prêt à me ranger lorsque mes plans se seront réalisés. J'ai abandonné tout ce que je chérissais pour guider notre peuple vers une existence meilleure. Je pense que ça me donne les qualités requises."~ */
  IF ~~ THEN REPLY #65402 /* ~"Pourquoi ne pas rendre tous les individus égaux ?"~ */ GOTO 56
  IF ~~ THEN REPLY #65403 /* ~"D'accord. Ce n'est pas la peine de te mettre dans tous tes états."~ */ GOTO 57
  IF ~~ THEN REPLY #65404 /* ~"À mon avis, t'as de la bouse de tanar'ri plein la tête si tu t'imagines qualifié pour être le chef."~ */ DO ~SetGlobal("Join_Anarchists","GLOBAL",2)
~ GOTO 52
END

IF ~~ THEN BEGIN 56 // from: 54.1 55.0 58.0 60.1
  SAY #65370 /* ~"La nature de ce genre de révolution implique que même notre peuple *doit* rester mal informé. Nous opérons en nous divisant en cellules individuelles, avec un contact minimum de la part du chef de faction. Ainsi les autres factions ont du mal à nous retrouver et à stopper nos opérations. S'ils détruisent une cellule, ils n'en trouveront pas d'autres, à moins d'être très chanceux. Tous les individus ne peuvent pas être égaux tant que nous n'aurons pas réussi notre mission ou tant qu'ils n'auront pas fait leurs preuves."~ */
  IF ~  Global("Join_Anarchists","GLOBAL",0)
~ THEN REPLY #65405 /* ~"Tu dois souvent agir en contradiction avec tes idées."~ */ GOTO 61
  IF ~  Global("Join_Anarchists","GLOBAL",0)
~ THEN REPLY #65406 /* ~"Qui est dans ta cellule ? Combien ?"~ */ GOTO 62
  IF ~  Global("Join_Anarchists","GLOBAL",0)
~ THEN REPLY #65407 /* ~"Comment obtiens-tu de l'aide des autres cellules ?"~ */ GOTO 63
  IF ~~ THEN REPLY #65408 /* ~"C'est absurde. C'est voué à l'échec. Cette faction est vouée à l'échec."~ */ DO ~SetGlobal("Join_Anarchists","GLOBAL",2)
~ GOTO 52
  IF ~  Global("Join_Anarchists","GLOBAL",1)
~ THEN REPLY #65435 /* ~"Parlons de l'organisation…"~ */ GOTO 70
END

IF ~~ THEN BEGIN 57 // from: 54.2 55.1
  SAY #65371 /* ~"Si tu avais abandonné ce que j'ai abandonné pour être au service des autres, tu ne me jugerais pas si rapidement. C'est un travail qui demande de la passion et de l'idéalisme, et j'ai bien peur que ces qualités aient disparu en toi." Il réfléchit pendant un moment. Tu remarques que sa main tremble légèrement.~ */
  IF ~~ THEN REPLY #65409 /* ~"Je me permets de te juger car tu ne connais rien au sacrifice et toi et ta cohorte, vous jouez aux anarchistes. Cette organisation, c'est de la connerie."~ */ DO ~SetGlobal("Join_Anarchists","GLOBAL",2)
~ GOTO 52
  IF ~  Global("Join_Anarchists","GLOBAL",0)
~ THEN REPLY #65410 /* ~"D'accord. Relax. Parlons de ton organisation…"~ */ GOTO 58
  IF ~  Global("Join_Anarchists","GLOBAL",1)
~ THEN REPLY #65436 /* ~"D'accord, relax. Parlons de l'organisation…"~ */ GOTO 70
END

IF ~~ THEN BEGIN 58 // from: 50.0 57.1 61.0 62.1 63.1
  SAY #65372 /* ~"Qu'est-ce que tu voulais savoir ?"~ */
  IF ~~ THEN REPLY #65411 /* ~"Comment est structurée l'organisation ?"~ */ GOTO 56
  IF ~~ THEN REPLY #65412 /* ~"Quelle mission veux-tu que j'effectue ?"~ */ GOTO 59
  IF ~~ THEN REPLY #65413 /* ~"Comment le chaos est-il organisé ?"~ */ GOTO 60
  IF ~~ THEN REPLY #65414 /* ~"Comment obtiens-tu de l'aide des autres cellules ?"~ */ GOTO 63
  IF ~~ THEN REPLY #65415 /* ~"Où sont vos abris ?"~ */ GOTO 62
END

IF ~~ THEN BEGIN 59 // from: 50.1 58.1 61.1 62.0 63.0
  SAY #65373 /* ~"Dans le Quartier des Gratte-Papier ou dans la Salle des Fêtes, il y a un genasi de pierre nommé Qui-Sai. Il constitue un danger pour nous, mais il ne le sait pas. Trouve-le et abats-le. Lorsque tu l'auras fait, reviens et je t'indiquerai l'un de nos abris."~ */
  IF ~~ THEN REPLY #65416 /* ~"Je vais revenir."~ */ DO ~SetGlobal("Waste_QuiSai","GLOBAL",1)
~ JOURNAL #65431 /* ~Penn Loimoqueuse m'a demandé d'aller tuer Qui-Sai, le génasi de pierre, à la Salle des Fêtes du Quartier des Gratte-Papier. J'ai accepté.~ */ EXIT
  IF ~~ THEN REPLY #65417 /* ~"Je ne le ferai pas. C'est mal de tuer des gens."~ */ DO ~SetGlobal("Join_Anarchists","GLOBAL",2)
~ JOURNAL #65432 /* ~J'ai dit à Penn que je refusais de tuer Qui-Sai. Il s'est énervé et m'a chassé de sa boutique.~ */ GOTO 52
END

IF ~~ THEN BEGIN 60 // from: 58.2
  SAY #65374 /* ~"Une révolution nécessite des chefs. Une révolte a besoin d'un organisateur. Tu penses qu'un simple chaos va anéantir les factions ? Des attaques au hasard ne suffisent pas, seul un plan cohérent pourra les démolir. Admets-le : il y a les épées, et il y a les mains qui guident les épées, et puis… et puis il y a les cerveaux qui guident ces mains."~ */
  IF ~~ THEN REPLY #65418 /* ~"Et qui t'a désigné comme cerveau ?"~ */ GOTO 55
  IF ~~ THEN REPLY #65419 /* ~"Pourquoi tous les individus ne sont-ils pas égaux ?"~ */ GOTO 56
  IF ~~ THEN REPLY #65420 /* ~"Je crois que tu as tout faux et que tu ne devrais pas être le responsable ici."~ */ DO ~SetGlobal("Join_Anarchists","GLOBAL",2)
~ GOTO 52
END

IF ~~ THEN BEGIN 61 // from: 56.0
  SAY #65375 /* ~"Oui, malheureusement. Mais c'est mieux que de regarder toute l'organisation prendre feu ou de périr par l'épée."~ */
  IF ~  Global("Join_Anarchists","GLOBAL",0)
~ THEN REPLY #65421 /* ~"Parle-moi encore."~ */ GOTO 58
  IF ~~ THEN REPLY #65422 /* ~"Quelle mission dois-je effectuer  ?"~ */ GOTO 59
  IF ~  Global("Join_Anarchists","GLOBAL",1)
~ THEN REPLY #65437 /* ~"Parle-moi encore."~ */ GOTO 70
END

IF ~~ THEN BEGIN 62 // from: 56.1 58.4
  SAY #65376 /* ~"Je te le dirai lorsque tu reviendras de ta mission."~ */
  IF ~~ THEN REPLY #65423 /* ~"Quelle est la mission ?"~ */ GOTO 59
  IF ~~ THEN REPLY #65424 /* ~"Dis-m'en plus sur l'organisation."~ */ GOTO 58
END

IF ~~ THEN BEGIN 63 // from: 56.2 58.3
  SAY #65377 /* ~"J'ai fait passer le mot. Nous possédons un large réseau d'informateurs. Nous savons lorsque quelqu'un a besoin d'aide, et si sa cause correspond aux objectifs de l'organisation, nous l'aidons."~ */
  IF ~~ THEN REPLY #65425 /* ~"Quelle mission veux-tu que j'effectue ?"~ */ GOTO 59
  IF ~~ THEN REPLY #65426 /* ~"Dis-m'en plus sur l'organisation."~ */ GOTO 58
END

IF ~  Global("Waste_Quisai","GLOBAL",1)
~ THEN BEGIN 64 // from:
  SAY #65438 /* ~"Alors ? T'es-tu occupé du genasi Qui-Sai ?"~ */
  IF ~  GlobalGT("Quisai_DEAD_KAPUTZ","GLOBAL",0)
!Global("Join_Sensates","GLOBAL",1)
!Global("Join_Dustmen","GLOBAL",1)
~ THEN REPLY #65454 /* ~"Il est mort."~ */ DO ~SetGlobal("Waste_QuiSai","GLOBAL",2)
SetGlobal("Join_Anarchists","GLOBAL",1)
SetGlobal("Know_An_Pass","GLOBAL",1)
AddexperienceParty(16000)
~ JOURNAL #65433 /* ~Je suis allé dire à Loimoqueuse Penn que j'avais réussi à tuer Qui-Sai. Il s'est montré aussi expressif qu'il peut l'être, j'imagine, mais il m'a fait entrer dans sa cellule de la Ligue Révolutionnaire, en me disant que je pourrais trouver certains des siens à la Voûte du Neuvième Monde, dans le Bas Quartier. Il m'a dit que le mot de passe "Eclipse" me permettrait de me faire connaître.~ */ GOTO 69
  IF ~  Global("Quisai_Dead_KAPUTZ","GLOBAL",0)
~ THEN REPLY #65455 /* ~Mensonge : "Il est mort."~ */ GOTO 65
  IF ~  Global("Quisai_Dead_KAPUTZ","GLOBAL",0)
~ THEN REPLY #65456 /* ~"Pas encore."~ */ GOTO 66
  IF ~  GlobalGT("Quisai_DEAD_KAPUTZ","GLOBAL",0)
Global("Join_Sensates","GLOBAL",1)
~ THEN REPLY #66565 /* ~"Il est mort."~ */ DO ~SetGlobal("Waste_QuiSai","GLOBAL",2)
SetGlobal("Join_Anarchists","GLOBAL",1)
SetGlobal("Know_An_Pass","GLOBAL",1)
ApplySpell(Protagonist,SPECIAL_REMOVE_SENSORY_TOUCH)
AddexperienceParty(16000)
~ JOURNAL #65433 /* ~Je suis allé dire à Loimoqueuse Penn que j'avais réussi à tuer Qui-Sai. Il s'est montré aussi expressif qu'il peut l'être, j'imagine, mais il m'a fait entrer dans sa cellule de la Ligue Révolutionnaire, en me disant que je pourrais trouver certains des siens à la Voûte du Neuvième Monde, dans le Bas Quartier. Il m'a dit que le mot de passe "Eclipse" me permettrait de me faire connaître.~ */ GOTO 69
  IF ~  GlobalGT("Quisai_DEAD_KAPUTZ","GLOBAL",0)
Global("Join_Dustmen","GLOBAL",1)
~ THEN REPLY #66566 /* ~"Il est mort."~ */ DO ~SetGlobal("Waste_QuiSai","GLOBAL",2)
SetGlobal("Join_Anarchists","GLOBAL",1)
SetGlobal("Know_An_Pass","GLOBAL",1)
SetGlobal("Dead_Truce","GLOBAL",0)
AddexperienceParty(16000)
~ JOURNAL #65433 /* ~Je suis allé dire à Loimoqueuse Penn que j'avais réussi à tuer Qui-Sai. Il s'est montré aussi expressif qu'il peut l'être, j'imagine, mais il m'a fait entrer dans sa cellule de la Ligue Révolutionnaire, en me disant que je pourrais trouver certains des siens à la Voûte du Neuvième Monde, dans le Bas Quartier. Il m'a dit que le mot de passe "Eclipse" me permettrait de me faire connaître.~ */ GOTO 69
END

IF ~~ THEN BEGIN 65 // from: 64.1
  SAY #65439 /* ~Penn te rit au nez et retourne à sa table. "Tu ne peux pas me mentir… Néanmoins je trouverais ça instructif de voir que tu essayes. Va-t'en et finis ton travail. Ne reviens pas avant de l'avoir fait."~ */
  IF ~~ THEN REPLY #65457 /* ~"Et si je décidais de te dénoncer ?"~ */ GOTO 67
  IF ~~ THEN REPLY #65458 /* ~"D'accord. Peux-tu imprimer quelques documents pour moi ?"~ */ GOTO 68
  IF ~~ THEN REPLY #65459 /* ~"Très bien. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 66 // from: 64.2
  SAY #65440 /* ~"Alors fais-le. Tu retardes nos plans."~ */
  IF ~~ THEN REPLY #65460 /* ~"Et si je décidais de te dénoncer ?"~ */ GOTO 67
  IF ~~ THEN REPLY #65461 /* ~"D'accord. Peux-tu imprimer quelques documents pour moi ?"~ */ GOTO 68
  IF ~~ THEN REPLY #65462 /* ~"Très bien. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 67 // from: 65.0 66.0 68.0
  SAY #65441 /* ~"Et qu'est-ce que tu dirais ? 'Officier, J'ai tué un régisseur des Hommes-Dieux et fait explosé leur machine mortelle, puis j'ai essayé de rejoindre les Anarchistes, mais ils voulaient que je tue encore quelqu'un et je ne pouvais pas. Va les arrêter ! Moi je suis innocent !' Désolé, bige. Tu n'es pas aussi stupide que ça, mais encore quelques bons coups sur la tête et tu le deviendras. Vas-y maintenant."~ */
  IF ~~ THEN REPLY #65463 /* ~"Très bien. Au revoir."~ */ JOURNAL #65464 /* ~J'ai demandé à Penn ce qu'il ferait si je le dénonçais, et il m'a donné plusieurs bonnes raisons de n'en rien faire. Je crois que je vais le laisser tranquille, pour le moment.~ */ EXIT
END

IF ~~ THEN BEGIN 68 // from: 65.1 66.1
  SAY #65442 /* ~Il te regarde fixement. "Lorsque tu te seras débarrassé du genasi, alors nous imprimerons tout ce dont tu as besoin. Avant ça, ne viens pas me déranger."~ */
  IF ~~ THEN REPLY #65465 /* ~"Et si je décidais de te dénoncer ?"~ */ GOTO 67
  IF ~~ THEN REPLY #65466 /* ~"Très bien. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 69 // from: 64.0 64.3 64.4
  SAY #65443 /* ~"Alors, tu as fais tes preuves." Il te tend la main et tu la serres. "Bienvenue dans ma cellule. Si tu as besoin de repos, de sorts ou d'autres bricoles, va voir Leena ou Conall dans l'entrepôt appelé la Voûte du Neuvième Monde, juste au coin de mon magasin. Le mot de passe est 'éclipse'. Y a-t-il quelque chose que tu voulais savoir ?"~ */
  IF ~~ THEN REPLY #65467 /* ~"Parle moi de l'organisation…"~ */ GOTO 70
  IF ~~ THEN REPLY #65468 /* ~"Quels sont nos plans ?"~ */ GOTO 72
  IF ~~ THEN REPLY #65469 /* ~"Oui, j'aurais quelques questions à te poser…"~ */ GOTO 30
  IF ~~ THEN REPLY #65470 /* ~"Non. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 70 // from: 30.9 56.4 57.2 61.2 69.0 71.0 72.0 73.0 74.0 75.0 75.2 76.0
  SAY #65444 /* ~"Qu'est-ce que tu voulais savoir ?"~ */
  IF ~~ THEN REPLY #65471 /* ~"Comment est structurée l'organisation ?"~ */ GOTO 73
  IF ~~ THEN REPLY #65472 /* ~"Comment obtiens-tu de l'aide des autres cellules ?"~ */ GOTO 74
  IF ~~ THEN REPLY #65473 /* ~"Où sont vos abris ?"~ */ GOTO 75
  IF ~~ THEN REPLY #65474 /* ~"Et si j'ai besoin d'aide ?"~ */ GOTO 76
  IF ~~ THEN REPLY #65475 /* ~"J'aurais encore quelques questions…"~ */ GOTO 30
  IF ~~ THEN REPLY #65476 /* ~"Rien. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 71 // from: 30.10
  SAY #65445 /* ~"J'espère bien. Et j'espère qu'elle t'a demandé de te débarrasser de ce Vorten. Elle m'a assez barbé avec lui."~ */
  IF ~~ THEN REPLY #65477 /* ~"Euh… d'accord. J'ai quelques questions à te poser sur l'organisation…"~ */ GOTO 70
  IF ~~ THEN REPLY #65478 /* ~"Bien. J'ai d'autres questions…"~ */ GOTO 30
  IF ~~ THEN REPLY #65479 /* ~"Oh. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 72 // from: 69.1
  SAY #65446 /* ~"Tu le découvriras assez tôt, J'en suis sûr. J'espère que tu verras bientôt un point culminant. Ne t'inquiète pas pour ça aujourd'hui."~ */
  IF ~~ THEN REPLY #65480 /* ~"Bien. Parle-moi de l'organisation."~ */ GOTO 70
  IF ~~ THEN REPLY #65481 /* ~"Bien. J'ai d'autres questions."~ */ GOTO 30
  IF ~~ THEN REPLY #65482 /* ~"Bien. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 73 // from: 70.0
  SAY #65447 /* ~"La nature de ce genre de révolution implique que même notre peuple *doit* rester mal informé. Nous opérons en nous divisant en cellules individuelles, avec un contact minimum de la part du chef de faction. Ainsi les autres factions ont du mal à nous retrouver et à stopper nos opérations. S'ils détruisent une cellule, ils n'en trouveront pas d'autres, à moins d'être très chanceux. Tous les individus ne peuvent pas être égaux tant que nous n'aurons pas réussi notre mission ou tant qu'ils n'auront pas fait leurs preuves."~ */
  IF ~~ THEN REPLY #65483 /* ~"J'ai d'autres questions sur l'organisation…"~ */ GOTO 70
  IF ~~ THEN REPLY #65484 /* ~"J'ai d'autres questions…"~ */ GOTO 30
  IF ~~ THEN REPLY #65485 /* ~"Merci. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 74 // from: 70.1
  SAY #65448 /* ~"Nous avons un réseau. Il nous permet de ne connaître que quelques contacts de base, et les informations refluent par le biais de ce réseau lorsque nous devons agir. Bien sûr, nous les examinons minutieusement, puis nous envoyons notre aide. Nos effectifs paraissent peut-être petits lorsque nous sommes séparés, mais nous sommes plus nombreux que toutes les factions le croient."~ */
  IF ~~ THEN REPLY #65486 /* ~"J'ai d'autres questions sur l'organisation…"~ */ GOTO 70
  IF ~~ THEN REPLY #65487 /* ~"J'ai d'autres questions…"~ */ GOTO 30
  IF ~~ THEN REPLY #65488 /* ~"Merci. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 75 // from: 70.2
  SAY #65449 /* ~"Notre abri actuel, comme je te l'ai déjà dit, est la Voûte du Neuvième Monde. Mon peuple se fait passer pour des ouvriers. Va voir Leena et dis-lui le mot de passe, elle t'arrangera le coup."~ */
  IF ~~ THEN REPLY #65489 /* ~"J'ai d'autres questions sur l'organisation…"~ */ GOTO 70
  IF ~~ THEN REPLY #65490 /* ~"J'ai d'autres questions…"~ */ GOTO 30
  IF ~~ THEN REPLY #65491 /* ~"Merci. Au revoir."~ */ GOTO 70
END

IF ~~ THEN BEGIN 76 // from: 70.3
  SAY #65450 /* ~"Si tu as besoin d'aide, on le saura. Si on peut, on t'enverra de l'aide en un clin d'œil. Ne la recherche pas, c'est elle qui te trouvera. Ne t'inquiète pas. Les adhésions sont récompensées par de subtils moyens."~ */
  IF ~~ THEN REPLY #65492 /* ~"J'ai d'autres questions sur l'organisation…"~ */ GOTO 70
  IF ~~ THEN REPLY #65493 /* ~"J'ai d'autres questions…"~ */ GOTO 30
  IF ~~ THEN REPLY #65494 /* ~"Merci. Au revoir."~ */ EXIT
END

IF ~  Global("Penn_Out","GLOBAL",1)
~ THEN BEGIN 77 // from:
  SAY #65451 /* ~"Oh là là ! Viens-tu encore pour me menacer ?" Il semble complètement indifférent.~ */
  IF ~~ THEN REPLY #65495 /* ~"Déplace-moi comme ça encore une fois et je te tue."~ */ GOTO 14
  IF ~~ THEN REPLY #65496 /* ~"Comment tu as fait pour me téléporter ?"~ */ GOTO 79
  IF ~~ THEN REPLY #65497 /* ~"J'ai quelques questions à te poser…"~ */ GOTO 12
  IF ~~ THEN REPLY #65498 /* ~"Pas maintenant. Au revoir."~ */ EXIT
END

IF ~  NumTimesTalkedToGT(0)
~ THEN BEGIN 78 // from:
  SAY #65452 /* ~"Et bien, c'est-y pas le dévoreur-de-temps en personne. Veux-tu vraiment quelque chose cette fois ?"~ */
  IF ~~ THEN REPLY #65499 /* ~"J'ai quelques questions…"~ */ GOTO 12
  IF ~~ THEN REPLY #65500 /* ~"Pas vraiment. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 79 // from: 77.1
  SAY #65453 /* ~"Secret de fabrication. Voulais-tu vraiment quelque chose cette fois ou es-tu venu pour fanfaronner encore ?"~ */
  IF ~~ THEN REPLY #65501 /* ~"Je suis venu pour te dire de ne jamais recommencer."~ */ GOTO 14
  IF ~~ THEN REPLY #65502 /* ~"J'ai quelques questions…"~ */ GOTO 12
  IF ~~ THEN REPLY #65503 /* ~"Non. Au revoir."~ */ EXIT
END
