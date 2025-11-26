// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DTRIAS.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\fr_FR\dialog.tlk
// dialogF  : (none)

BEGIN ~DTRIAS~
//////////////////////////////////////////////////
// WARNING: this file contains non-trivial WEIGHTs
//////////////////////////////////////////////////

IF WEIGHT #0 ~  Global("Current_Area","GLOBAL",702)
NumTimesTalkedTo(0)
GlobalLT("Trias_Sword","GLOBAL",2)
~ THEN BEGIN 0 // from:
  SAY #2995 /* ~Tu vois un être à la peau d'ivoire et à la chevelure de neige. Ses ailes sont brûlées, ses plumes ont fondu, et pourtant il irradie encore la paix et l'amour. Il se tient debout, les bras écartés, comme en méditation, et ne prend pas garde à ta présence. Des chaînes enroulées autour de ses avant-bras le relient au dais sur lequel il se tient. Même si tu ne te rappelles pas avoir jamais vu un deva, tu n'as aucun doute sur sa nature. ~ */
  IF ~  NearbyDialog("DGrace")
NearbyDialog("DDakkon")
NearbyDialog("DMorte")
~ THEN REPLY #2996 /* ~"Je te cherchais, deva."~ */ DO ~SetGlobal("Trias","GLOBAL",1)
~ GOTO 114
  IF ~  NearbyDialog("DGrace")
!NearbyDialog("DDakkon")
NearbyDialog("DMorte")
~ THEN REPLY #54306 /* ~"Je te cherchais, deva."~ */ DO ~SetGlobal("Trias","GLOBAL",1)
~ GOTO 115
  IF ~  NearbyDialog("DGrace")
NearbyDialog("DDakkon")
!NearbyDialog("DMorte")
~ THEN REPLY #54307 /* ~"Je te cherchais, deva."~ */ DO ~SetGlobal("Trias","GLOBAL",1)
~ JOURNAL #54312 /* ~J'ai trouvé l'ange dont parlait Ravel. Il se nomme Trias et est enfermé à Maudith. Quand je pense à la façon dont il est traité… je suis vraiment tombé dans une ville d'assassins et de coupe-jarrets. Encore qu'elle ne soit guère différente des autres localités que je connais…~ */ GOTO 125
  IF ~  NearbyDialog("DGrace")
!NearbyDialog("DDakkon")
!NearbyDialog("DMorte")
~ THEN REPLY #54308 /* ~"Je te cherchais, deva."~ */ DO ~SetGlobal("Trias","GLOBAL",1)
~ JOURNAL #54312 /* ~J'ai trouvé l'ange dont parlait Ravel. Il se nomme Trias et est enfermé à Maudith. Quand je pense à la façon dont il est traité… je suis vraiment tombé dans une ville d'assassins et de coupe-jarrets. Encore qu'elle ne soit guère différente des autres localités que je connais…~ */ GOTO 126
  IF ~  !NearbyDialog("DGrace")
NearbyDialog("DMorte")
!NearbyDialog("DDakkon")
~ THEN REPLY #54309 /* ~"Je te cherchais, deva."~ */ DO ~SetGlobal("Trias","GLOBAL",1)
~ GOTO 116
  IF ~  !NearbyDialog("DGrace")
NearbyDialog("DMorte")
NearbyDialog("DDakkon")
~ THEN REPLY #54310 /* ~"Je te cherchais, deva."~ */ DO ~SetGlobal("Trias","GLOBAL",1)
~ GOTO 116
  IF ~  !NearbyDialog("DGrace")
!NearbyDialog("DMorte")
~ THEN REPLY #54311 /* ~"Je te cherchais, deva."~ */ DO ~SetGlobal("Trias","GLOBAL",1)
~ GOTO 4
END

IF WEIGHT #1 ~  Global("Current_Area","GLOBAL",702)
NumTimesTalkedToGT(0)
Global("Trias_Sword","GLOBAL",0)
!NearbyDialog("DGrace")
~ THEN BEGIN 1 // from:
  SAY #54313 /* ~"Que veux-tu de moi, mortel ? Parle sans détour, puis va-t'en."~ [TTB005] */
  IF ~~ THEN REPLY #54314 /* ~"J'ai des questions à te poser…"~ */ GOTO 10
  IF ~  PartyHasItem("Celestia")
~ THEN REPLY #54315 /* ~"J'ai ton épée."~ */ DO ~SetGlobal("Know_Sword","GLOBAL",1)
~ GOTO 11
  IF ~~ THEN REPLY #54316 /* ~"Laisse tomber. Au revoir."~ */ EXIT
END

IF WEIGHT #2 ~  Global("Current_Area","GLOBAL",702)
NumTimesTalkedToGT(0)
Global("Trias_Sword","GLOBAL",1)
!NearbyDialog("DGrace")
~ THEN BEGIN 2 // from:
  SAY #54317 /* ~"Que veux-tu, mortel ?"~ [TTB002] */
  IF ~~ THEN REPLY #54318 /* ~"J'avais des questions à te poser…"~ */ GOTO 117
  IF ~  PartyHasItem("Celestia")
~ THEN REPLY #54319 /* ~"J'ai ton épée."~ */ DO ~SetGlobal("Know_Sword","GLOBAL",1)
~ GOTO 11
  IF ~~ THEN REPLY #54320 /* ~"Rien. Au revoir."~ */ GOTO 117
END

IF WEIGHT #3 ~  Global("Current_Area","GLOBAL",702)
Global("Trias_Sword","GLOBAL",2)
~ THEN BEGIN 3 // from:
  SAY #54321 /* ~"Merci de m'avoir délivré. Je te dois une fière chandelle." Il agite ses ailes carbonisées. "Que désires-tu, mortel ? Je n'ai malheureusement pas grand-chose à t'offrir."~ [TTB098] */
  IF ~~ THEN REPLY #54322 /* ~"J'ai beaucoup de questions à te poser…"~ */ DO ~SetGlobal("Trias_Sword","GLOBAL",3)
~ GOTO 53
  IF ~~ THEN REPLY #54323 /* ~"Ah bien. Au revoir."~ */ DO ~SetGlobal("Trias_Sword","GLOBAL",3)
~ EXIT
END

IF ~~ THEN BEGIN 4 // from: 0.6
  SAY #54324 /* ~Le deva lève la tête et pose son regard sur toi. Il a une voix mélodieuse dans sa pureté. "Que veux-tu de moi, mortel ? Parle sans détour, puis laisse-moi à mes souvenirs du paradis."~ [TTB004] */
  IF ~~ THEN REPLY #54325 /* ~"Ravel la guenaude noire m'a dit de m'adresser à toi."~ */ JOURNAL #54312 /* ~J'ai trouvé l'ange dont parlait Ravel. Il se nomme Trias et est enfermé à Maudith. Quand je pense à la façon dont il est traité… je suis vraiment tombé dans une ville d'assassins et de coupe-jarrets. Encore qu'elle ne soit guère différente des autres localités que je connais…~ */ GOTO 12
  IF ~  Global("Deva_Plague","GLOBAL",1)
~ THEN REPLY #54326 /* ~"J'ai entendu parler d'une peste qui avait surgi quand ils ont ouvert cette prison."~ */ DO ~SetGlobal("Deva_Plague","GLOBAL",2)
~ JOURNAL #54312 /* ~J'ai trouvé l'ange dont parlait Ravel. Il se nomme Trias et est enfermé à Maudith. Quand je pense à la façon dont il est traité… je suis vraiment tombé dans une ville d'assassins et de coupe-jarrets. Encore qu'elle ne soit guère différente des autres localités que je connais…~ */ GOTO 13
  IF ~~ THEN REPLY #54327 /* ~"C'est quoi, cet endroit ?"~ */ JOURNAL #54312 /* ~J'ai trouvé l'ange dont parlait Ravel. Il se nomme Trias et est enfermé à Maudith. Quand je pense à la façon dont il est traité… je suis vraiment tombé dans une ville d'assassins et de coupe-jarrets. Encore qu'elle ne soit guère différente des autres localités que je connais…~ */ GOTO 14
  IF ~~ THEN REPLY #54328 /* ~"Qui es-tu ?"~ */ JOURNAL #54312 /* ~J'ai trouvé l'ange dont parlait Ravel. Il se nomme Trias et est enfermé à Maudith. Quand je pense à la façon dont il est traité… je suis vraiment tombé dans une ville d'assassins et de coupe-jarrets. Encore qu'elle ne soit guère différente des autres localités que je connais…~ */ GOTO 15
  IF ~~ THEN REPLY #54329 /* ~"Des souvenirs de paradis ?"~ */ JOURNAL #54312 /* ~J'ai trouvé l'ange dont parlait Ravel. Il se nomme Trias et est enfermé à Maudith. Quand je pense à la façon dont il est traité… je suis vraiment tombé dans une ville d'assassins et de coupe-jarrets. Encore qu'elle ne soit guère différente des autres localités que je connais…~ */ GOTO 16
  IF ~  PartyHasItem("Celestia")
~ THEN REPLY #54871 /* ~"C'est ton épée ? Elle était au milieu de la prison."~ */ DO ~SetGlobal("Know_Sword","GLOBAL",1)
~ JOURNAL #54312 /* ~J'ai trouvé l'ange dont parlait Ravel. Il se nomme Trias et est enfermé à Maudith. Quand je pense à la façon dont il est traité… je suis vraiment tombé dans une ville d'assassins et de coupe-jarrets. Encore qu'elle ne soit guère différente des autres localités que je connais…~ */ GOTO 11
  IF ~~ THEN REPLY #54872 /* ~"Laisse tomber. Au revoir."~ */ JOURNAL #54312 /* ~J'ai trouvé l'ange dont parlait Ravel. Il se nomme Trias et est enfermé à Maudith. Quand je pense à la façon dont il est traité… je suis vraiment tombé dans une ville d'assassins et de coupe-jarrets. Encore qu'elle ne soit guère différente des autres localités que je connais…~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 114.0
  SAY #54332 /* ~Le deva tourne la tête et pose son regard sur Morte. "Tu empestes les vils relents de Baator, crâne."~ */
  IF ~~ THEN EXTERN ~DMORTE~ 559
END

IF ~~ THEN BEGIN 6 // from: 115.0
  SAY #54333 /* ~Le deva tourne la tête et pose son regard sur Morte. "Tu empestes les vils relents de Baator, crâne."~ */
  IF ~~ THEN EXTERN ~DMORTE~ 560
END

IF ~~ THEN BEGIN 7 // from: 116.0
  SAY #54363 /* ~Le deva tourne la tête et pose son regard sur Morte. "Tu empestes les vils relents de Baator, crâne."~ */
  IF ~~ THEN EXTERN ~DMORTE~ 561
END

IF ~~ THEN BEGIN 8 // from:
  SAY #54364 /* ~"Ta compagnie n'est pas un cadeau… Pose donc tes questions et laisse-moi à mes souvenirs paradisiaques."~ */
  IF ~~ THEN REPLY #54365 /* ~"Ravel la guenaude noire m'a dit de m'adresser à toi."~ */ GOTO 12
  IF ~  Global("Deva_Plague","GLOBAL",1)
~ THEN REPLY #54366 /* ~"J'ai entendu parler d'une peste qui avait surgi quand ils ont ouvert cette prison."~ */ DO ~SetGlobal("Deva_Plague","GLOBAL",2)
~ GOTO 13
  IF ~~ THEN REPLY #54367 /* ~"C'est quoi, cet endroit ?"~ */ GOTO 14
  IF ~~ THEN REPLY #54368 /* ~"Qui es-tu ?"~ */ GOTO 15
  IF ~~ THEN REPLY #54369 /* ~"Des souvenirs de paradis ?"~ */ GOTO 16
  IF ~  PartyHasItem("Celestia")
~ THEN REPLY #54370 /* ~"C'est ton épée ? Elle était au milieu de la prison."~ */ DO ~SetGlobal("Know_Sword","GLOBAL",1)
~ GOTO 11
  IF ~~ THEN REPLY #54371 /* ~"Laisse tomber. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 9 // from:
  SAY #54372 /* ~"Tu apportes un *tanar'ri* (il crache le mot) en *ma* présence ?"~ */
  IF ~~ THEN REPLY #54373 /* ~"Quoi, les ailes l'auraient donc trahi ?"~ */ GOTO 33
  IF ~~ THEN REPLY #54374 /* ~"Ma foi, oui. Pourquoi pas ?"~ */ GOTO 33
END

IF ~~ THEN BEGIN 10 // from: 1.0 13.2 14.4 16.0 22.1 23.3 24.3 26.2 27.2 28.0 29.2 30.2 31.2 32.1 117.0 117.1
  SAY #54375 /* ~"Une autre requête ?"~ */
  IF ~~ THEN REPLY #54376 /* ~"Ravel la guenaude noire m'a dit de m'adresser à toi."~ */ GOTO 12
  IF ~  Global("Deva_Plague","GLOBAL",1)
~ THEN REPLY #54377 /* ~"J'ai entendu parler d'une peste qui avait surgi quand ils ont ouvert cette prison."~ */ DO ~SetGlobal("Deva_Plague","GLOBAL",2)
~ GOTO 13
  IF ~~ THEN REPLY #54378 /* ~"C'est quoi, cet endroit ?"~ */ GOTO 14
  IF ~~ THEN REPLY #54379 /* ~"Qui es-tu ?"~ */ GOTO 15
  IF ~~ THEN REPLY #54380 /* ~"Tu as dit quelque chose à propos de souvenirs de paradis ?"~ */ GOTO 16
  IF ~  PartyHasItem("Celestia")
~ THEN REPLY #54381 /* ~"C'est ton épée ? Elle était au milieu de la prison."~ */ DO ~SetGlobal("Know_Sword","GLOBAL",1)
~ GOTO 11
  IF ~~ THEN REPLY #54382 /* ~"Pourquoi tes ailes sont-elles brûlées ?"~ */ GOTO 28
  IF ~~ THEN REPLY #54383 /* ~"Laisse tomber. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 11 // from: 1.1 2.1 4.5 8.5 10.5 21.0 117.2
  SAY #54384 /* ~Il semble un instant stupéfait. "Feu céleste ? Tu as retrouvé ma lame ? Tu veux me délivrer ? Alors frappe sur cette chaîne !"~ */
  IF ~~ THEN REPLY #54385 /* ~"J'avais d'abord quelques questions…"~ */ GOTO 17
  IF ~~ THEN REPLY #54386 /* ~Frappe la chaîne.~ */ GOTO 20
  IF ~~ THEN REPLY #54387 /* ~Frappe le deva.~ */ GOTO 19
  IF ~~ THEN REPLY #54388 /* ~"Pas encore. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 12 // from: 4.0 8.0 10.0
  SAY #54389 /* ~"Ravel… Ravel… ce nom jette des étincelles dans mon cerveau… Mais non ! Ces chaînes sont comme les eaux glauques du Styx… plus elles demeurent, moins je me souviens. Si on me délivrait, je pourrais à loisir répondre à tes questions."~ */
  IF ~~ THEN REPLY #54390 /* ~"Comment peut-on te délivrer ?"~ */ DO ~SetGlobal("Trias_Sword","GLOBAL",1)
~ JOURNAL #54392 /* ~Trias m'a dit qu'il ne pouvait être libéré que par un acte de bonté et qu'il ma fallait récupérer son épée pour briser ses chaînes.~ */ GOTO 21
  IF ~~ THEN REPLY #54391 /* ~"Dans ce cas, je reviendrai. Au revoir. "~ */ EXIT
END

IF ~~ THEN BEGIN 13 // from: 4.1 8.1 10.1
  SAY #54393 /* ~"C'est leur faute. En me chargeant du poids de ces chaînes, ils ont empreint les maillons d'amertume et de trahison. Leur inconséquence a signé leur chute ; s'ils avaient daigné m'écouter, tout cela ne serait pas arrivé." Une grande tristesse envahit son regard. "Mon cœur saigne pour eux."~ */
  IF ~~ THEN REPLY #54394 /* ~"Comment est-ce que tu as atterri ici ?"~ */ GOTO 22
  IF ~~ THEN REPLY #54395 /* ~"Comment peut-on briser ces chaînes et supprimer la peste ?"~ */ JOURNAL #54392 /* ~Trias m'a dit qu'il ne pouvait être libéré que par un acte de bonté et qu'il ma fallait récupérer son épée pour briser ses chaînes.~ */ GOTO 21
  IF ~~ THEN REPLY #54396 /* ~"J'avais d'autres questions à te poser…"~ */ GOTO 10
  IF ~~ THEN REPLY #54397 /* ~"Au revoir… ou à la prochaine."~ */ EXIT
END

IF ~~ THEN BEGIN 14 // from: 4.2 8.2 10.2 15.0
  SAY #54398 /* ~"Te voici sur le sol neutre de l'Outreterre, dans les murs de la ville-portail de Maudith, patrie des traîtres et des félons. Une ville qui jouxte le plan-prison des Carcères. Te voici enterré dans la prison de Trias le condamné, jeté au fond de cette cellule où j'attends d'être libéré par un acte de bonté, de pitié et de justice."~ */
  IF ~~ THEN REPLY #54399 /* ~"Parle-moi de Maudith."~ */ GOTO 26
  IF ~~ THEN REPLY #54400 /* ~"Parle-moi des Carcères."~ */ GOTO 27
  IF ~~ THEN REPLY #54401 /* ~"Comment t'a-t-on terrassé ?"~ */ GOTO 22
  IF ~~ THEN REPLY #54402 /* ~"Comment peut-on te délivrer ?"~ */ JOURNAL #54392 /* ~Trias m'a dit qu'il ne pouvait être libéré que par un acte de bonté et qu'il ma fallait récupérer son épée pour briser ses chaînes.~ */ GOTO 21
  IF ~~ THEN REPLY #54403 /* ~"J'avais d'autres questions à te poser…"~ */ GOTO 10
END

IF ~~ THEN BEGIN 15 // from: 4.3 8.3 10.3
  SAY #54404 /* ~"Je suis Trias le condamné, Trias le blessé, enfant perdu des Élysées, général des armées des Plans Supérieurs."~ */
  IF ~~ THEN REPLY #54405 /* ~"Qu'est-ce que c'est que cet endroit ?"~ */ GOTO 14
  IF ~~ THEN REPLY #54406 /* ~"Comment est-ce que tu as atterri ici ?"~ */ GOTO 22
  IF ~~ THEN REPLY #54407 /* ~"Les Plans Supérieurs ?"~ */ GOTO 23
  IF ~~ THEN REPLY #54408 /* ~"Les condamnés ?"~ */ GOTO 24
END

IF ~~ THEN BEGIN 16 // from: 4.4 8.4 10.4
  SAY #54409 /* ~"C'est tout ce qu'il me reste en ce lieu. Bon, que veux-tu de moi, mortel ? Dis ta pensée et disparais."~ */
  IF ~~ THEN REPLY #54410 /* ~"J'ai quelques questions à te poser…"~ */ GOTO 10
  IF ~~ THEN REPLY #54411 /* ~"Comment est-ce que tu as atterri ici ?"~ */ GOTO 22
  IF ~~ THEN REPLY #54412 /* ~"Que peux-tu me dire de ce paradis ?"~ */ GOTO 23
  IF ~~ THEN REPLY #54413 /* ~"Laisse tomber. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 17 // from: 11.0 118.0
  SAY #54414 /* ~"Mortel, je répondrai à toutes tes questions dès que tu m'auras libéré… Ça m'éclaircira aussi les idées. Alors, frappe un grand coup et rends-moi mon épée !"~ */
  IF ~~ THEN REPLY #54415 /* ~Frappe les chaînes.~ */ GOTO 20
  IF ~  !NearbyDialog("DGrace")
~ THEN REPLY #54416 /* ~Frappe le deva.~ */ GOTO 19
  IF ~  NearbyDialog("DGrace")
~ THEN REPLY #54416 /* ~Frappe le deva.~ */ EXTERN ~DGRACE~ 181
  IF ~~ THEN REPLY #54417 /* ~Pars.~ */ EXIT
END

IF WEIGHT #4 ~  Global("Current_Area","GLOBAL",702)
NumTimesTalkedToGT(0)
Global("Know_Sword","GLOBAL",1)
PartyHasItem("Celestia")
GlobalLT("Trias_Sword","GLOBAL",2)
~ THEN BEGIN 18 // from:
  SAY #54418 /* ~"Oui ?"~ [TTB003C] */
  IF ~~ THEN REPLY #54419 /* ~"J'ai encore des questions."~ */ GOTO 118
  IF ~~ THEN REPLY #54420 /* ~Frappe les chaînes.~ */ GOTO 20
  IF ~  !NearbyDialog("DGrace")
~ THEN REPLY #54421 /* ~Frappe le deva.~ */ GOTO 19
  IF ~  NearbyDialog("DGrace")
~ THEN REPLY #61308 /* ~Frappe le deva.~ */ EXTERN ~DGRACE~ 181
  IF ~~ THEN REPLY #54422 /* ~Pars.~ */ EXIT
END

IF ~~ THEN BEGIN 19 // from: 11.2 17.1 18.2 118.2
  SAY #54423 /* ~La lame danse telle une flamme blanche entre tes mains lorsque tu frappes le deva. Il pousse un cri horrible en mourrant… Dans sa voix, on entend un monde qui s'éteint et, malgré toi te vient l'impression d'avoir commis une terrible erreur.~ */
  IF ~~ THEN REPLY #54424 /* ~"Ce qui est fait est fait…"~ */ DO ~SetGlobal("Game_Over","GLOBAL",3)
Kill(Myself)
~ EXIT
END

IF ~~ THEN BEGIN 20 // from: 11.1 17.0 18.1 49.0 118.1
  SAY #54425 /* ~Les chaînes cèdent facilement sous la lame… Le bruit d'un coup de tonnerre te résonne entre les oreilles. Tout s'obscurcit quelques instants et tu as l'impression que la lame te file entre les doigts.~ */
  IF ~~ THEN REPLY #54426 /* ~Attends…~ */ DO ~TakePartyItemNum("Celestia",1)
AddexperienceParty(306250)
SetGlobal("Trias_Sword","GLOBAL",2)
FadeToColor([20.0],0)
Wait(3)
Polymorph(Trias)
FadeFromColor([20.0],0)
~ EXIT
END

IF ~~ THEN BEGIN 21 // from: 12.0 13.1 14.3 22.0 24.1 32.0
  SAY #54427 /* ~"Un acte de bonté pourra me rendre la liberté. Mon épée - mon âme - peut servir un tel acte. Va la chercher et frappe ces chaînes pour me délivrer. Je te serai… redevable. Peut-être puis-je t'aider dans ta quête…"~ */
  IF ~  PartyHasItem("Celestia")
~ THEN REPLY #54428 /* ~"C'est ton épée ? Elle était au milieu de la prison."~ */ DO ~SetGlobal("Know_Sword","GLOBAL",1)
~ GOTO 11
  IF ~~ THEN REPLY #54429 /* ~"Comment sais-tu que je recherche quelque chose ?"~ */ DO ~SetGlobal("Curst_Key","GLOBAL",7)
~ GOTO 25
  IF ~~ THEN REPLY #68139 /* ~"D'accord. Au revoir."~ */ DO ~SetGlobal("Curst_Key","GLOBAL",7)
~ EXIT
END

IF ~~ THEN BEGIN 22 // from: 13.0 14.2 15.1 16.1 26.1 27.1
  SAY #54430 /* ~"Trahi… dans la ville connue pour ses trahisons. Je croyais pouvoir ici allumer les feux du bien, libérer quelques âmes des chaînes qu'elles se sont forgé. Et je me suis retrouvé piégé, bien malgré moi, par mes anciennes cohortes, prisonnier, sous terre, dans cette bulle sans lumière."~ */
  IF ~~ THEN REPLY #54431 /* ~"Comment peut-on te délivrer ?"~ */ JOURNAL #54392 /* ~Trias m'a dit qu'il ne pouvait être libéré que par un acte de bonté et qu'il ma fallait récupérer son épée pour briser ses chaînes.~ */ GOTO 21
  IF ~~ THEN REPLY #54432 /* ~"J'avais d'autres questions à te poser…"~ */ GOTO 10
  IF ~~ THEN REPLY #54433 /* ~"Bon ben, bonne chance. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 23 // from: 15.2 16.2
  SAY #54434 /* ~Une ombre passe sur son visage. "Jamais je ne reverrai, j'en ai peur, la beauté ordonnée de l'Arcadie, les horizons des Élysées, les sept pics du Mont Céleste… Là, toute la laideur concentrée dans ces Plans Inférieurs s'efface, et on peut vraiment croire en la rédemption. Mais je crains que trop cherchent secours et inspiration dans les Plans Inférieurs…"~ */
  IF ~~ THEN REPLY #54435 /* ~"Que peux-tu me dire de l'Arcadie ?"~ */ GOTO 29
  IF ~~ THEN REPLY #54436 /* ~"Que peux-tu me dire des Élysées ?"~ */ GOTO 30
  IF ~~ THEN REPLY #54437 /* ~"Que peux-tu me dire du Mont Céleste ?"~ */ GOTO 31
  IF ~~ THEN REPLY #54438 /* ~"Je vois… J'ai d'autres questions…"~ */ GOTO 10
  IF ~~ THEN REPLY #54439 /* ~"Sans doute. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 24 // from: 15.3 24.2
  SAY #54440 /* ~"Jadis champion des armées des Plans Supérieurs, me voici à présent soumis et enterré sous cette détestable cité. Ah, si seulement je pouvais fuir, libre, loin d'ici, loin de ces chaînes qui me paralysent !"~ */
  IF ~~ THEN REPLY #54441 /* ~"Que peux-tu me dire de ces chaînes ?"~ */ GOTO 32
  IF ~~ THEN REPLY #54442 /* ~"Comment peut-on te délivrer ?"~ */ JOURNAL #54392 /* ~Trias m'a dit qu'il ne pouvait être libéré que par un acte de bonté et qu'il ma fallait récupérer son épée pour briser ses chaînes.~ */ GOTO 21
  IF ~  False()
~ THEN REPLY #54443 /* ~"Mais avec tes ailes carbonisées, tu ne peux pas voler."~ */ GOTO 24
  IF ~~ THEN REPLY #54444 /* ~"J'avais d'autres questions…"~ */ GOTO 10
  IF ~~ THEN REPLY #54445 /* ~"Bonne chance. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 25 // from: 21.1
  SAY #54446 /* ~Il sourit tristement. "Je le lis sur ton visage et dans ton cœur. Si seulement on m'enlevait ces chaînes… Alors, je pourrais mieux deviner ton dessein, mieux te guider. En attendant…" Le deva hausse les épaules. "En attendant, je ne peux même pas te faire l'aumône d'un conseil. Ces chaînes m'étouffent la mémoire et l'instinct."~ */
  IF ~~ THEN REPLY #54447 /* ~"Très bien. Je trouverai ton épée. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 26 // from: 14.0 27.0
  SAY #54448 /* ~Son visage, d'abord assombri, s'éclaire de pitié. "Une ville de traîtres… envers eux-mêmes et envers les autres. Personne n'est digne de confiance ici. C'est à qui entraînera l'autre dans ses desseins scabreux…. même les mieux intentionnés."~ */
  IF ~~ THEN REPLY #54449 /* ~"Que peux-tu me dire des Carcères ?"~ */ GOTO 27
  IF ~~ THEN REPLY #54450 /* ~"Comment as-tu été trahi ?"~ */ GOTO 22
  IF ~~ THEN REPLY #54451 /* ~"J'avais d'autres questions à te poser…"~ */ GOTO 10
  IF ~~ THEN REPLY #54452 /* ~"Je vois. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 27 // from: 14.1 26.0
  SAY #54453 /* ~"C'est la prison des plans. Là, même les pouvoirs sont impuissants face à la trahison. Peu en sortent, et ceux-là n'en sortent pas indemnes."~ */
  IF ~~ THEN REPLY #54454 /* ~"Parle-moi de Maudith."~ */ GOTO 26
  IF ~~ THEN REPLY #54455 /* ~"Comment as-tu été trahi ?"~ */ GOTO 22
  IF ~~ THEN REPLY #54456 /* ~"J'avais d'autres questions à te poser…"~ */ GOTO 10
  IF ~~ THEN REPLY #54457 /* ~"Je vois. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 28 // from: 10.6
  SAY #54458 /* ~"Ça faisait partie de la grande trahison : ils m'ont brûlé les ailes en me passant les menottes, pour que je ne leur échappe pas même à travers la terre. C'est ce lieu qui veut cela… On n'y tolère pas la beauté."~ */
  IF ~~ THEN REPLY #54459 /* ~"Je vois. J'avais d'autres questions à te poser…"~ */ GOTO 10
  IF ~~ THEN REPLY #54460 /* ~"Je vois. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 29 // from: 23.0 30.0 31.0
  SAY #54461 /* ~"Un paradis ordonné, où chaque chose a sa place et son contenu… Pas le chaos et la traîtrise de ces mondes inférieurs. Un paradis de modèles comme tu n'en as jamais vu."~ */
  IF ~~ THEN REPLY #54462 /* ~"Que peux-tu me dire des Élysées ?"~ */ GOTO 30
  IF ~~ THEN REPLY #54463 /* ~"Que peux-tu me dire du Mont Céleste ?"~ */ GOTO 31
  IF ~~ THEN REPLY #54464 /* ~"J'avais d'autres questions…"~ */ GOTO 10
  IF ~~ THEN REPLY #54465 /* ~"Merci. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 30 // from: 23.1 29.0 31.1
  SAY #54466 /* ~"Le plan de la Sérénité, un plan où tout est repos, où les vagues du chaos et de l'ordre baignent les habitants dans le bon. Forêts, plaines fertiles, tout ne respire pas la beauté mais *est* la beauté incarnée. Un lieu unique… Le summum de la bonté et de la miséricorde."~ */
  IF ~~ THEN REPLY #54467 /* ~"Que peux-tu me dire de l'Arcadie ?"~ */ GOTO 29
  IF ~~ THEN REPLY #54468 /* ~"Que peux-tu me dire du Mont Céleste ?"~ */ GOTO 31
  IF ~~ THEN REPLY #54469 /* ~"J'avais d'autres questions…"~ */ GOTO 10
  IF ~~ THEN REPLY #54470 /* ~"Merci. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 31 // from: 23.2 29.1 30.1
  SAY #54471 /* ~"Les Sept montagnes du Bien et de la Loi, un plan où tout baigne dans la chaude lumière de la justice et de la miséricorde. Un idéal. Où les habitants luttent pour défendre justice et miséricorde, et ne se bornent pas à agir dans l'ombre de ces idéaux. Des idéaux à défendre, pas de la nourriture pour les mesquins et les âpres au gain."~ */
  IF ~~ THEN REPLY #54472 /* ~"Que peux-tu me dire de l'Arcadie ?"~ */ GOTO 29
  IF ~~ THEN REPLY #54473 /* ~"Que peux-tu me dire des Élysées ?"~ */ GOTO 30
  IF ~~ THEN REPLY #54474 /* ~"J'avais d'autres questions…"~ */ GOTO 10
  IF ~~ THEN REPLY #54475 /* ~"Merci. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 32 // from: 24.0
  SAY #54476 /* ~"Ces chaînes sont telles qu'elles me lient sans me lier. Elles noient mes souvenirs, les enfoncent sous la surface d'une eau stagnante, de sorte que mon savoir flue et reflue. Ma force ne peut les briser. Seule le pourra une force divine immortelle, un acte de pitié et de justice."~ */
  IF ~~ THEN REPLY #54477 /* ~"Et quelle est cette force ?"~ */ GOTO 21
  IF ~~ THEN REPLY #54478 /* ~"Je vois. J'avais d'autres questions…"~ */ GOTO 10
  IF ~~ THEN REPLY #54479 /* ~"Je vois. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 33 // from: 9.0 9.1
  SAY #54480 /* ~"Je ne me laisserai pas tourmenter par celui qui voyage avec des fiélons. Tanar'ri, malgré ta grande souplesse, je ferai une cible moins facile que ce mortel. Dis ta pensée et laisse Trias à son emprisonnement."~ */
  IF ~~ THEN EXTERN ~DGRACE~ 178
END

IF ~~ THEN BEGIN 34 // from:
  SAY #54481 /* ~"Tu as la langue bien pendue, tanar'ri, comme ceux de ton espèce. Pose tes questions, mortel, et file."~ */
  IF ~~ THEN REPLY #54482 /* ~"Je ne suis pas mortel."~ */ GOTO 35
  IF ~~ THEN REPLY #54483 /* ~"Ravel la guenaude m'envoie à toi. Selon elle, tu saurais des choses sur ma mortalité dérobée."~ */ GOTO 36
  IF ~  Global("Deva_Plague","GLOBAL",1)
~ THEN REPLY #54484 /* ~"J'ai entendu parler d'une peste qui avait surgi quand ils ont ouvert cette prison."~ */ DO ~SetGlobal("Deva_Plague","GLOBAL",2)
~ GOTO 37
  IF ~~ THEN REPLY #54485 /* ~"C'est quoi, cet endroit ?"~ */ GOTO 38
  IF ~~ THEN REPLY #54486 /* ~"Qui es-tu ?"~ */ GOTO 39
  IF ~  PartyHasItem("Celestia")
~ THEN REPLY #54487 /* ~"C'est ton épée ? Elle était au milieu de la prison."~ */ DO ~SetGlobal("Know_Sword","GLOBAL",1)
~ GOTO 40
  IF ~~ THEN REPLY #54488 /* ~"Pourquoi tes ailes sont-elles brûlées ?"~ */ GOTO 41
  IF ~~ THEN REPLY #54489 /* ~"Laisse tomber. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 35 // from: 34.0
  SAY #54490 /* ~Le deva part d'un rire sonore et cristallin. "Comme il te plaira, mortel. Qu'attends-tu de moi ?"~ */
  IF ~~ THEN REPLY #54491 /* ~"Ravel la guenaude m'envoie à toi. Selon elle, tu saurais des choses sur ma mortalité dérobée."~ */ GOTO 36
  IF ~  Global("Deva_Plague","GLOBAL",1)
~ THEN REPLY #54492 /* ~"J'ai entendu parler d'une peste qui avait surgi quand ils ont ouvert cette prison."~ */ DO ~SetGlobal("Deva_Plague","GLOBAL",2)
~ GOTO 37
  IF ~~ THEN REPLY #54493 /* ~"C'est quoi, cet endroit ?"~ */ GOTO 38
  IF ~~ THEN REPLY #54494 /* ~"Qui es-tu ?"~ */ GOTO 39
  IF ~  PartyHasItem("Celestia")
~ THEN REPLY #54495 /* ~"C'est ton épée ? Elle était au milieu de la prison."~ */ DO ~SetGlobal("Know_Sword","GLOBAL",1)
~ GOTO 40
  IF ~~ THEN REPLY #54496 /* ~"Pourquoi tes ailes sont-elles brûlées ?"~ */ GOTO 41
  IF ~~ THEN REPLY #54497 /* ~"Laisse tomber. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 36 // from: 34.1 35.0 45.0 52.0
  SAY #54498 /* ~"Ravel… la guenaude noire… une mortalité dérobée… Tout cela me dit quelque chose… Pourtant, je crains fort de ne pouvoir retrouver la mémoire tant que ces chaînes m'étoufferont."~ */
  IF ~~ THEN REPLY #54499 /* ~"Pourquoi pas ?"~ */ GOTO 42
  IF ~~ THEN REPLY #54500 /* ~"Comment peut-on briser ces chaînes ?"~ */ JOURNAL #54392 /* ~Trias m'a dit qu'il ne pouvait être libéré que par un acte de bonté et qu'il ma fallait récupérer son épée pour briser ses chaînes.~ */ GOTO 42
  IF ~~ THEN REPLY #54501 /* ~"Pourquoi t'a-t-on emprisonné ?"~ */ GOTO 44
END

IF ~~ THEN BEGIN 37 // from: 34.2 35.1 45.1 52.1
  SAY #54502 /* ~"C'est leur faute. En me chargeant du poids de ces chaînes, ils ont empreint les maillons d'amertume et de trahison. Leur inconséquence a signé leur chute ; s'ils avaient daigné m'écouter, tout cela ne serait pas arrivé." Une grande tristesse envahit son regard. "Mon cœur saigne pour eux."~ */
  IF ~~ THEN REPLY #54503 /* ~"Que peux-tu me dire de ces chaînes ?"~ */ GOTO 42
  IF ~~ THEN REPLY #54504 /* ~"Comment peut-on briser ces chaînes ?"~ */ JOURNAL #54392 /* ~Trias m'a dit qu'il ne pouvait être libéré que par un acte de bonté et qu'il ma fallait récupérer son épée pour briser ses chaînes.~ */ GOTO 43
  IF ~~ THEN REPLY #54505 /* ~"J'avais d'autres questions…"~ */ GOTO 45
END

IF ~~ THEN BEGIN 38 // from: 34.3 35.2 39.0 45.2 52.2
  SAY #54506 /* ~"Ça ? C'est le donjon au-dessous de la ville-portail de Maudith, portail vers les Carcères, le plan-prison des dieux. C'est le foyer des traîtres, les amers, les condamnés… qu'ils méritent ou non leur condamnation."~ */
  IF ~~ THEN EXTERN ~DGRACE~ 180
END

IF ~~ THEN BEGIN 39 // from: 34.4 35.3 45.3 52.3
  SAY #54507 /* ~"Je suis Trias, le Condamné, jadis général des armées des Plans Supérieurs. Aujourd'hui, je me morfonds dans une bulle fétide sous la plus misérable des villes-portail."~ */
  IF ~~ THEN REPLY #54508 /* ~"Qu'est-ce que c'est que cet endroit ?"~ */ GOTO 38
  IF ~~ THEN REPLY #54509 /* ~"Comment est-ce que tu as atterri ici ?"~ */ GOTO 44
END

IF ~~ THEN BEGIN 40 // from: 34.5 35.4 43.0 45.4 52.4
  SAY #54510 /* ~Il semble un instant stupéfait. "Feu céleste ? Tu as retrouvé ma lame ? Tu veux me délivrer ? Alors frappe sur cette chaîne !"~ */
  IF ~~ THEN REPLY #54511 /* ~"J'ai d'abord quelques questions…"~ */ GOTO 49
  IF ~~ THEN REPLY #54512 /* ~Frappe la chaîne.~ */ GOTO 50
  IF ~~ THEN REPLY #54513 /* ~Frappe le deva.~ */ EXTERN ~DGRACE~ 181
  IF ~~ THEN REPLY #54514 /* ~"Pas encore. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 41 // from: 34.6 35.5 45.5 52.5
  SAY #54515 /* ~"Ça faisait partie de la grande trahison : ils m'ont brûlé les ailes en me passant les menottes, pour que je ne leur échappe pas même à travers la terre. C'est ce lieu qui veut cela… On n'y tolère pas la beauté."~ */
  IF ~~ THEN REPLY #54516 /* ~"J'ai d'autres questions à te poser…"~ */ GOTO 45
  IF ~~ THEN REPLY #54517 /* ~"Je vois. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 42 // from: 36.0 36.1 37.0
  SAY #54518 /* ~"Ces chaînes n'emprisonnent pas seulement mes mouvements. Il me reste un tas de souvenirs, mais les chaînes déforment la mémoire."~ */
  IF ~~ THEN REPLY #54519 /* ~"Comment peut-on briser les chaînes ?"~ */ JOURNAL #54392 /* ~Trias m'a dit qu'il ne pouvait être libéré que par un acte de bonté et qu'il ma fallait récupérer son épée pour briser ses chaînes.~ */ GOTO 43
END

IF ~~ THEN BEGIN 43 // from: 37.1 42.0
  SAY #54520 /* ~"Si je possédais encore l'instrument qui faisait ma grandeur, il serait facile de briser ces chaînes. Mon épée, mon Feu céleste, est détenue par les ombres de cette ville. Elle sert à défendre leur pauvre prison. Si seulement je la tenais… je recouvrerais la liberté. Retrouve-la, frappe ces chaînes et brise-les. J'offrirai le peu qui est en mon pouvoir. Ma mémoire retrouvée devrait tous deux nous éclairer."~ */
  IF ~  PartyHasItem("Celestia")
~ THEN REPLY #54521 /* ~"Très bien. Attends-moi."~ */ DO ~SetGlobal("Know_Sword","GLOBAL",1)
~ GOTO 40
  IF ~~ THEN REPLY #68140 /* ~"Très bien. Je reviendrai."~ */ DO ~SetGlobal("Curst_Key","GLOBAL",7)
~ EXIT
END

IF ~~ THEN BEGIN 44 // from: 36.2 39.1
  SAY #54522 /* ~"Les gens de cette ville - tous des traîtres - ne connaissent rien à la vérité et à la beauté. Elle leur est insupportable. Ils m'ont entraîné ici pour m'enchaîner. Les mortels ne possèdent pas la clairvoyance qui développe la force de caractère et élève au-dessus du désir… Bref, tout ce que j'ai tenté de leur enseigner."~ */
  IF ~~ THEN EXTERN ~DGRACE~ 179
END

IF ~~ THEN BEGIN 45 // from: 37.2 41.0 46.0 47.1 48.0
  SAY #54523 /* ~"Encore ?"~ */
  IF ~~ THEN REPLY #54524 /* ~"Ravel la guenaude m'envoie à toi. Selon elle, tu saurais des choses sur ma mortalité dérobée."~ */ GOTO 36
  IF ~  Global("Deva_Plague","GLOBAL",1)
~ THEN REPLY #54525 /* ~"J'ai entendu parler d'une peste qui avait surgi quand ils ont ouvert cette prison."~ */ DO ~SetGlobal("Deva_Plague","GLOBAL",2)
~ GOTO 37
  IF ~~ THEN REPLY #54526 /* ~"C'est quoi, cet endroit ?"~ */ GOTO 38
  IF ~~ THEN REPLY #54527 /* ~"Qui es-tu ?"~ */ GOTO 39
  IF ~  PartyHasItem("Celestia")
~ THEN REPLY #54528 /* ~"C'est ton épée ? Elle était au milieu de la prison."~ */ DO ~SetGlobal("Know_Sword","GLOBAL",1)
~ GOTO 40
  IF ~~ THEN REPLY #54529 /* ~"Pourquoi tes ailes sont-elles brûlées ?"~ */ GOTO 41
  IF ~~ THEN REPLY #54530 /* ~"Laisse tomber. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 46 // from:
  SAY #54531 /* ~Une grimace tord son beau visage. "J'espère, maîtresse tanar'ri, que vous ne croyez pas les mortels capables de jamais posséder cette clairvoyance ? Pas en étant ce que vous êtes… Votre seule nature commande de réprimer la moindre chance qu'auraient les mortels de dominer leurs instincts primaires."~ */
  IF ~~ THEN REPLY #54532 /* ~"D'accord, d'accord, ça suffit. J'ai encore des questions, Trias."~ */ GOTO 45
  IF ~~ THEN REPLY #54533 /* ~"Ça suffit. Au revoir, Trias."~ */ EXIT
END

IF ~~ THEN BEGIN 47 // from:
  SAY #54534 /* ~Ses yeux lancent des éclairs. "Les armées ont perdu leur superbe car elles n'osent pas affronter directement les fiélons. Où est leur esprit, leur amour de la pureté ? Mes seigneurs conduisent la guerre à distance, ils poussent les fiélons à s'opposer dans de coûteuses batailles, en les armant et en leur bourrant le crâne des techniques d'extermination les plus sophistiquées… Pourquoi ? Pour les empêcher de lever les yeux vers nos champs dorés."~ */
  IF ~~ THEN REPLY #54535 /* ~"Comment faire pour changer les choses ?"~ */ GOTO 48
  IF ~~ THEN REPLY #54536 /* ~"Je vois. J'avais d'autres questions…"~ */ GOTO 45
END

IF ~~ THEN BEGIN 48 // from: 47.0
  SAY #54537 /* ~Trias se calme, mais ses ailes calcinées bruissent légèrement. "Mortel, il y a des moyens de changer l'esprit des généraux immortels. Un jour, ils verront… Là-dessus, je n'ai aucun doute."~ */
  IF ~~ THEN REPLY #54538 /* ~"Je vois. J'avais d'autres questions…"~ */ GOTO 45
  IF ~~ THEN REPLY #54539 /* ~"Je vois. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 49 // from: 40.0
  SAY #54540 /* ~"Mortel, je répondrai à toutes tes questions dès que tu m'auras libéré… Ça m'éclaircira aussi les idées. Alors, frappe un grand coup et rends-moi mon épée !"~ */
  IF ~~ THEN REPLY #54541 /* ~Frappe les chaînes.~ */ GOTO 20
  IF ~~ THEN REPLY #54542 /* ~Frappe le deva.~ */ EXTERN ~DGRACE~ 181
  IF ~~ THEN REPLY #54543 /* ~Pars.~ */ EXIT
END

IF ~~ THEN BEGIN 50 // from: 40.1
  SAY #54544 /* ~Les chaînes cèdent facilement sous la lame… Le bruit d'un coup de tonnerre te résonne entre les oreilles. Tout s'obscurcit quelques instants et tu as l'impression que la lame te file entre les doigts.~ */
  IF ~~ THEN REPLY #54545 /* ~Attends…~ */ DO ~TakePartyItemNum("Celestia",1)
AddexperienceParty(306250)
SetGlobal("Trias_Sword","GLOBAL",2)
FadeToColor([20.0],0)
Wait(3)
Polymorph(Trias)
FadeFromColor([20.0],0)
~ EXIT
END

IF ~~ THEN BEGIN 51 // from:
  SAY #54546 /* ~La lame danse telle une flamme blanche entre tes mains lorsque tu frappes le deva. Il pousse un cri horrible en mourrant… Dans sa voix, on entend un monde qui s'éteint et, malgré toi te vient l'impression d'avoir commis une terrible erreur.~ */
  IF ~~ THEN REPLY #54547 /* ~"Ce qui est fait est fait…"~ */ DO ~SetGlobal("Game_Over","GLOBAL",3)
~ EXIT
END

IF WEIGHT #5 ~  Global("Current_Area","GLOBAL",702)
NumTimesTalkedToGT(0)
NearbyDialog("DGrace")
GlobalLT("Trias_Sword","GLOBAL",2)
~ THEN BEGIN 52 // from:
  SAY #54548 /* ~"Tu as une autre question ?"~ [TTB034] */
  IF ~~ THEN REPLY #54549 /* ~"Ravel la guenaude m'envoie à toi. Selon elle, tu saurais des choses sur ma mortalité dérobée."~ */ GOTO 36
  IF ~  Global("Deva_Plague","GLOBAL",1)
~ THEN REPLY #54550 /* ~"J'ai entendu parler d'une peste qui avait surgi quand ils ont ouvert cette prison."~ */ DO ~SetGlobal("Deva_Plague","GLOBAL",2)
~ GOTO 37
  IF ~~ THEN REPLY #54551 /* ~"C'est quoi, cet endroit ?"~ */ GOTO 38
  IF ~~ THEN REPLY #54552 /* ~"Qui es-tu ?"~ */ GOTO 39
  IF ~  PartyHasItem("Celestia")
~ THEN REPLY #54553 /* ~"C'est ton épée ? Elle était au milieu de la prison."~ */ DO ~SetGlobal("Know_Sword","GLOBAL",1)
~ GOTO 40
  IF ~~ THEN REPLY #54554 /* ~"Pourquoi tes ailes sont-elles brûlées ?"~ */ GOTO 41
  IF ~~ THEN REPLY #54555 /* ~"Laisse tomber. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 53 // from: 3.0 112.0
  SAY #54556 /* ~"Cherches-tu à dominer l'esprit de tes semblables mortels ? Espères-tu voir tes désirs assouvis ? Est-ce la richesse que tu veux ? Ou d'autres âmes à tourmenter ?"~ */
  IF ~~ THEN REPLY #54557 /* ~"Je cherche le savoir, pas la richesse ni le pouvoir."~ */ GOTO 56
  IF ~~ THEN REPLY #54558 /* ~"Donne-moi le pouvoir."~ */ GOTO 54
  IF ~~ THEN REPLY #54559 /* ~"Parle-moi de la richesse."~ */ GOTO 55
END

IF ~~ THEN BEGIN 54 // from: 53.1 55.0
  SAY #54560 /* ~"Je ne peux te donner le pouvoir pas plus que je ne peux t'accorder sagesse ou perspicacité. Ce don, on ne le reçoit pas mais on le gagne. Faute de comprendre cette nuance, les mortels courent souvent à leur perte."~ */
  IF ~~ THEN REPLY #54561 /* ~"Alors, donne-moi le savoir."~ */ GOTO 56
  IF ~~ THEN REPLY #54562 /* ~"Alors, donne-moi la richesse."~ */ GOTO 55
END

IF ~~ THEN BEGIN 55 // from: 53.2 54.1
  SAY #54563 /* ~"Alors gagne-le, et vois comme ta nature diminue à mesure que tu *vaux* plus. Ne parle pas la langue des marchands avec moi."~ */
  IF ~~ THEN REPLY #54564 /* ~"Alors, donne-moi le pouvoir."~ */ GOTO 54
  IF ~~ THEN REPLY #54565 /* ~"Alors, donne-moi le savoir."~ */ GOTO 56
END

IF ~~ THEN BEGIN 56 // from: 53.0 54.0 55.1
  SAY #54566 /* ~"Alors, exprime ton vœu."~ */
  IF ~~ THEN REPLY #54567 /* ~"On m'a volé ma mortalité. Je voudrais la récupérer."~ */ JOURNAL #54569 /* ~Trias le deva m'a dit qu'un fiélon nommé Fhjull Langue-fourchue pourra peut-être m'aider dans ma quête. Cette créature, qui réside en Outreterre, aurait apparemment une dette envers Trias.~ */ GOTO 57
  IF ~~ THEN REPLY #54568 /* ~"Laisse tomber. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 57 // from: 56.0
  SAY #54570 /* ~"Tu dis des sottises. Pourtant… il y a peut-être quelqu'un qui pourrait t'aider. C'est un fiélon… Fhjull Langue-fourchue. Va, il t'aidera." Les lèvres du deva grimacent un léger sourire. "Il est tenu de faire la charité."~ */
  IF ~~ THEN REPLY #54571 /* ~"Où je peux le trouver ?"~ */ JOURNAL #54572 /* ~Je peux quitter Maudith et aller trouver Fhjull en prenant un maillon de la chaîne brisée de Trias et en cherchant le portail qui se trouve au nord.~ */ GOTO 59
END

IF ~~ THEN BEGIN 58 // from: 102.1 104.0
  SAY #54573 /* ~"Ses couloirs sont ténébreux et semblent vides… Mais, comme toi, il attire les âmes tourmentées tel un aimant. Comme toi, il est vide et pourtant plein de laissés-pour-compte du temps. Comme toi, c'est un monument au tourment. Veux-tu que je te parle de ces âmes, voyageur ?~ */
  IF ~~ THEN REPLY #54574 /* ~"Oui."~ */ GOTO 60
END

IF ~~ THEN BEGIN 59 // from: 57.0
  SAY #54575 /* ~"Il y a un portail au nord de cette prison. Un maillon de chaîne brisé sert de clé." Il regarde avec insistance les maillons brisés qui gisent à ses pieds, se baisse et en serre un dans la main. "Exactement la clé qu'il faut à celui qui veut quitter Maudith."~ */
  IF ~~ THEN REPLY #54576 /* ~"Merci. Au revoir."~ */ DO ~SetGlobal("Outland_Portal","GLOBAL",1)
~ GOTO 61
END

IF ~~ THEN BEGIN 60 // from: 58.0
  SAY #54577 /* ~Son sourire ensanglanté s'élargit. "Ce sont les âmes de ceux qui sont morts à ta place. Ils sont devenus des ombres pour te permettre de vivre. Ils sont *tes* ombres, les ombres que tu portes sur l'existence, et ils te trouveront, voyageur, et ils te feront souffrir pour leurs tourments. Tu recevras ton dû de leurs mains, toi et ceux qui sont assez fous pour t'accompagner."~ */
  IF ~~ THEN REPLY #54578 /* ~"Je n'en doute pas. Que peux-tu me dire de ce gardien ?"~ */ GOTO 103
  IF ~~ THEN REPLY #54579 /* ~"Merci pour ces encouragements, Trias. Maintenant, ton heure a sonné."~ */ GOTO 105
  IF ~~ THEN REPLY #54580 /* ~"C'est ce que nous verrons. Et que vas-tu faire quand je serai parti, Trias?"~ */ GOTO 106
END

IF ~~ THEN BEGIN 61 // from: 59.0
  SAY #54581 /* ~"Au revoir, mortel. J'ai… du travail… qui m'attend." Il regarde le plafond de la prison avec insistance, et bondit dans la terre au-dessus de lui, tel un plongeur dans l'océan.~ */
  IF ~~ THEN REPLY #61264 /* ~Pars.~ */ DO ~SinisterPoof("S0P2CUR3",[2577.3268],1)
PlaySoundNotRanged("CURES03")
DestroySelf()
~ EXIT
END

IF ~~ THEN BEGIN 62 // from:
  SAY #54582 /* ~Null Node~ */
  IF ~~ THEN EXIT
END

IF WEIGHT #6 ~  Global("Trias_Defeated","GLOBAL",1)
~ THEN BEGIN 63 // from:
  SAY #54583 /* ~"Je me rends, mortel. Mon emprisonnement m'a affaibli… dans ces conditions, je ne suis pas de taille à lutter contre toi."~ [TTB120] */
  IF ~~ THEN REPLY #54584 /* ~"Trias, même au sommet de ta splendeur, tu ne serais pas à ma hauteur. Bon, dis-moi ce que je veux savoir."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Trias_2","GLOBALGood",-1)
SetGlobal("cd_int_1","LOCALS",1)
~ GOTO 93
  IF ~~ THEN REPLY #54585 /* ~"J'ai encore besoin de ton savoir, Trias. Dis-moi comment me rendre à la Forteresse des regrets."~ */ DO ~SetGlobal("cd_int_1","LOCALS",1)
~ GOTO 94
  IF ~~ THEN REPLY #54586 /* ~Tue le deva.~ */ DO ~SetGlobal("Game_Over","GLOBAL",3)
SetGlobal("cd_int_1","LOCALS",1)
~ GOTO 98
END

IF ~~ THEN BEGIN 64 // from: 119.0
  SAY #54587 /* ~"Regarde-les détaler pour sauver leurs maigres possessions et leurs pauvres existences. Je remarque que tu n'as rien fait pour les aider. Ton égoïsme m'a rendu plus fort."~ */
  IF ~~ THEN EXTERN ~DVHAIL~ 12
END

IF ~~ THEN BEGIN 65 // from: 120.0
  SAY #54588 /* ~"Regarde-les détaler pour sauver leurs maigres possessions et leurs pauvres existences. Je remarque que tu n'as rien fait pour les aider. Ton égoïsme m'a rendu plus fort."~ */
  IF ~~ THEN REPLY #54589 /* ~"Pourquoi m'as-tu menti ?"~ */ GOTO 71
  IF ~~ THEN REPLY #54590 /* ~"Pourquoi as-tu fait glisser Maudith de l'Outreterre ?"~ */ GOTO 72
  IF ~~ THEN REPLY #54591 /* ~"Joli coup avec cette cité, Trias. Dis-moi comment atteindre la Forteresse des regrets et nous serons quittes."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Trias_1","GLOBALGood",-2)
~ GOTO 85
  IF ~~ THEN REPLY #54592 /* ~Attaque-le.~ */ GOTO 70
END

IF ~~ THEN BEGIN 66 // from: 121.0
  SAY #54599 /* ~"Tu as essayé de réformer cette ville, mortel, mais il est trop tard. À présent, ses habitants paient le prix de leur déloyauté."~ */
  IF ~~ THEN EXTERN ~DVHAIL~ 13
END

IF ~~ THEN BEGIN 67 // from: 122.0
  SAY #54600 /* ~"Tu as essayé de réformer cette ville, mortel, mais il est trop tard. À présent, ses habitants paient le prix de leur déloyauté."~ */
  IF ~~ THEN REPLY #54601 /* ~"Pourquoi m'as-tu menti ?"~ */ GOTO 71
  IF ~~ THEN REPLY #54602 /* ~"Pourquoi as-tu fait glisser Maudith de l'Outreterre ?"~ */ GOTO 72
  IF ~~ THEN REPLY #54603 /* ~"Joli coup avec cette cité, Trias. Dis-moi comment atteindre la Forteresse des regrets et nous serons quittes."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Trias_1","GLOBALGood",-2)
~ GOTO 75
  IF ~~ THEN REPLY #54604 /* ~Attaque-le.~ */ GOTO 70
END

IF ~~ THEN BEGIN 68 // from: 123.0
  SAY #54605 /* ~Trias regarde la ville. "En si peu de temps, tu as bien oeuvré, mortel. Cela ne suffira pas à empêcher ces traîtres de prendre conscience de l'ampleur de leur folie."~ */
  IF ~~ THEN EXTERN ~DVHAIL~ 13
END

IF ~~ THEN BEGIN 69 // from: 124.0
  SAY #54606 /* ~Trias regarde la ville. "En si peu de temps, tu as bien oeuvré, mortel. Cela ne suffira pas à empêcher ces traîtres de prendre conscience de l'ampleur de leur folie."~ */
  IF ~~ THEN REPLY #54607 /* ~"Pourquoi m'as-tu menti ?"~ */ GOTO 71
  IF ~~ THEN REPLY #54608 /* ~"Pourquoi as-tu fait glisser Maudith de l'Outreterre ?"~ */ GOTO 72
  IF ~~ THEN REPLY #54609 /* ~"Joli coup avec cette cité, Trias. Dis-moi comment atteindre la Forteresse des regrets et nous serons quittes."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Trias_1","GLOBALGood",-2)
~ GOTO 85
  IF ~~ THEN REPLY #54610 /* ~Attaque-le.~ */ GOTO 70
END

IF ~~ THEN BEGIN 70 // from: 65.3 67.3 69.3 80.2 86.2
  SAY #54611 /* ~Le regard de Trias s'éclaire et une étincelle danse sur sa lame. "Voyons maintenant si tu peux mourir. Tout du moins, tu souffriras."~ [TTB118] */
  IF ~  NearbyDialog("DVhail")
~ THEN REPLY #54612 /* ~Attaque-le.~ */ DO ~ForceAttack(Protagonist,Myself)
ForceAttack("Vhailor",Myself)
Enemy()
~ EXIT
  IF ~  NearbyDialog("DVhail")
~ THEN REPLY #54613 /* ~Attends.~ */ DO ~ForceAttack("Vhailor",Myself)
Enemy()
~ EXIT
  IF ~  NearbyDialog("DVhail")
~ THEN REPLY #54614 /* ~"Tout cela mérite des explications !"~ */ DO ~ForceAttack("Vhailor",Myself)
Enemy()
~ EXIT
  IF ~  !NearbyDialog("DVhail")
~ THEN REPLY #54615 /* ~Attaque-le.~ */ DO ~ForceAttack(Protagonist,Myself)
Enemy()
~ EXIT
  IF ~  !NearbyDialog("DVhail")
~ THEN REPLY #54616 /* ~Attends.~ */ DO ~Enemy()
~ EXIT
  IF ~  !NearbyDialog("DVhail")
~ THEN REPLY #54617 /* ~"Tout cela mérite des explications !"~ */ DO ~Enemy()
~ EXIT
END

IF ~~ THEN BEGIN 71 // from: 65.0 67.0 69.0
  SAY #54618 /* ~"Tu voulais des conseils. Ton prix était la trahison. Qu'est-ce qui te fait croire que tu as gagné le droit à toutes les vérités dans cette vie ou dans la prochaine ?! Quelle arrogance ! En fait, il était de ton devoir, en tant qu'être mineur, de me libérer. Je ne te dois rien, et c'est ce que je t'ai donné. Je t'ai accordé plus que tu ne méritais. Tu m'as délivré pour te rendre service."~ */
  IF ~~ THEN REPLY #54619 /* ~"Mais pourquoi as-tu fait glisser Maudith de l'Outreterre ?"~ */ GOTO 72
END

IF ~~ THEN BEGIN 72 // from: 65.1 67.1 69.1 71.0
  SAY #54620 /* ~"Une cité de traîtres a été trahie et a reçu ce qu'elle méritait. Il n'y a pas de 'pourquoi' qui tienne. Ainsi est scellée mon entente avec les Plans Inférieurs. Pour le bien de tous."~ */
  IF ~~ THEN REPLY #54621 /* ~"Tu as conclu une entente avec les Plans Inférieurs ?"~ */ GOTO 73
  IF ~~ THEN REPLY #54622 /* ~"Le bien de tous ? De quoi veux-tu parler ?"~ */ GOTO 74
  IF ~~ THEN REPLY #54623 /* ~"Qui t'a désigné comme bourreau ? De quel droit as-tu fait cela ?"~ */ GOTO 75
END

IF ~~ THEN BEGIN 73 // from: 72.0
  SAY #54624 /* ~"Impossible d'escalader le Mont Céleste sans armée. La composition de cette armée m'importe au plus haut point. Il est bien plus facile de recruter ce genre de créatures que de les obliger à attaquer."~ */
  IF ~  !NearbyDialog("DGrace")
~ THEN REPLY #54625 /* ~"Tu vas attaquer le Mont Céleste avec des *fiélons* ? Mais t'allier avec eux, n'est-ce pas contraire à ta nature ?"~ */ GOTO 76
  IF ~  NearbyDialog("DGrace")
~ THEN REPLY #54626 /* ~"Tu vas attaquer le Mont Céleste avec des *fiélons* ? Mais t'allier avec eux, n'est-ce pas contraire à ta nature ?"~ */ GOTO 77
END

IF ~~ THEN BEGIN 74 // from: 72.1
  SAY #54627 /* ~"Le sang versé par une armée de fiélons sera vengé par la juste colère des Armées célestes. Ceux qui tombent le font au nom du bien de tous. Ainsi cette ville… Sa chute contribuera à éradiquer le mal. Bien petit sacrifice, si l'on considère ceux qui doivent être sacrifiés !"~ */
  IF ~~ THEN REPLY #54628 /* ~"Le mal n'engendre que le mal, je le crains."~ */ GOTO 86
  IF ~~ THEN REPLY #54629 /* ~"Fort bien. J'adhère. Dis-moi juste comment aller à la Forteresse des regrets et je te laisse à ton sacrifice."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Trias_1","GLOBALGood",-2)
~ GOTO 85
END

IF ~~ THEN BEGIN 75 // from: 67.2 72.2 92.0
  SAY #54630 /* ~"Je suis *ici*. Je vois le mal. Je veux agir contre lui. Ma *volonté* m'en donne le droit."~ */
  IF ~~ THEN REPLY #54631 /* ~"Notre volonté ne nous donne aucun droit, Trias."~ */ GOTO 86
  IF ~~ THEN REPLY #54632 /* ~"Fort bien. J'adhère. Dis-moi juste comment aller à la Forteresse des regrets et je te laisse à ton sacrifice."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Trias_1","GLOBALGood",-2)
~ GOTO 85
END

IF ~~ THEN BEGIN 76 // from: 73.0
  SAY #54633 /* ~Le visage du deva s'assombrit. "Je fais cela pour sauver le nom du Bien !" grogne-t-il. "Les généraux des Plans Supérieurs se terrent derrière leurs portes dorées et entretiennent une guerre brutale qui dévore les innocents. Mais je les obligerai à se confronter à ce qu'ils redoutent le plus… Ainsi vaincront-ils leur crainte."~ */
  IF ~~ THEN REPLY #54634 /* ~"En trahissant ta *patrie* ?"~ */ GOTO 80
  IF ~~ THEN REPLY #54635 /* ~"Et tu souilleras du mal incarné les champs du Bien ?"~ */ GOTO 90
  IF ~~ THEN REPLY #54636 /* ~"Il doit y avoir une autre solution, Trias."~ */ GOTO 91
END

IF ~~ THEN BEGIN 77 // from: 73.1
  SAY #54637 /* ~Le visage du deva s'assombrit. "Je fais cela pour sauver le nom du Bien !" grogne-t-il. "Les généraux des Plans Supérieurs se terrent derrière leurs portes dorées et entretiennent une guerre brutale qui dévore les innocents. Mais je les obligerai à se confronter à ce qu'ils redoutent le plus… Ainsi vaincront-ils leur crainte."~ */
  IF ~~ THEN EXTERN ~DGRACE~ 182
END

IF ~~ THEN BEGIN 78 // from:
  SAY #54638 /* ~"Vous surestimez leurs chances, tanar'ri. Une idée qui a fait son chemin est plus forte que n'importe quelle armée. Et que savez-vous de la tactique militaire, *tentatrice* ? Vos talents visent d'autres buts." Il promène son regard sur son corps. "Laissez la stratégie à ceux d'entre nous qui la comprennent."~ */
  IF ~~ THEN EXTERN ~DGRACE~ 183
END

IF ~~ THEN BEGIN 79 // from:
  SAY #54639 /* ~"Vous êtes un mystère pour moi, tanar'ri. Et c'est, j'en suis sûr, précisément votre désir." Il retourne son attention vers toi.~ */
  IF ~~ THEN REPLY #54640 /* ~"Crois-tu résoudre ce problème en trahissant ta *patrie* ?"~ */ GOTO 80
  IF ~~ THEN REPLY #54641 /* ~"Vas-tu souiller du mal incarné les champs du Bien ?"~ */ GOTO 90
  IF ~  CheckStatGT(Protagonist,15,WIS)
GlobalGT("Good","GLOBAL",14)
~ THEN REPLY #54642 /* ~"Il doit y avoir une autre solution, Trias."~ */ DO ~IncrementGlobalOnceEx("GLOBALGood_Trias_1","GLOBALGood",1)
~ GOTO 87
  IF ~  CheckStatGT(Protagonist,15,WIS)
GlobalLT("Good","GLOBAL",15)
~ THEN REPLY #54643 /* ~"Il doit y avoir une autre solution, Trias."~ */ DO ~IncrementGlobalOnceEx("GLOBALGood_Trias_1","GLOBALGood",1)
~ GOTO 88
END

IF ~~ THEN BEGIN 80 // from: 76.0 79.0 90.0
  SAY #54644 /* ~"Je te parlerai de la trahison, humain. La trahison est un renoncement à la guerre contre le mal. La trahison est lâcheté. C'est vendre des armes à tes ennemis de peur qu'ils ne cessent de s'entretuer et ne se tournent vers toi. La trahison, c'est refuser de montrer l'exemple ; laisser les fiélons envahir les plans jusqu'à ce que le mal ait corrompu tous les cœurs. Ne demande pas pourquoi j'escalade le Mont Céleste et tente de déclencher la guerre sur ses pentes assoupies dans le confort. Ce n'est pas de la trahison."~ */
  IF ~~ THEN REPLY #54645 /* ~"Tu souillerais du mal incarné l'essence du bien. Pour moi, c'est de la trahison !"~ */ GOTO 81
  IF ~~ THEN REPLY #54646 /* ~"La trahison, c'est la trahison."~ */ GOTO 81
  IF ~~ THEN REPLY #54647 /* ~"J'en ai assez de ton autosatisfaction, Trias. Prépare-toi à mourir."~ */ GOTO 70
END

IF ~~ THEN BEGIN 81 // from: 80.0 80.1 86.0 86.1
  SAY #54648 /* ~"Les définitions de la trahison sont multiples. Il faut vivre assez longtemps pour les expérimenter toutes. Même ta vie, si elle n'était pas empêtrée dans l'oubli, ne couvre pas assez de siècles pour les apprécier. Trahir ainsi, ça n'est absolument pas de la trahison."~ */
  IF ~  CheckStatGT(Protagonist,15,INT)
~ THEN REPLY #54649 /* ~"Qu'est-ce qui est vraiment arrivé à tes ailes, Trias ?"~ */ GOTO 82
  IF ~~ THEN REPLY #54650 /* ~"Arrête ton char, Trias, si tu veux pas qu'on en vienne aux mains."~ */ GOTO 83
  IF ~~ THEN REPLY #54651 /* ~"Ça suffit, Trias. Défends-toi."~ */ GOTO 84
  IF ~~ THEN REPLY #54652 /* ~"Dis-moi comment atteindre la Forteresse des regrets, Trias, et je te fiche la paix."~ */ GOTO 85
END

IF ~~ THEN BEGIN 82 // from: 81.0 91.0
  SAY #54653 /* ~"En vérité, les feux de Baator sont brûlants, mais ce sont des chandelles à côté de la colère d'un père." Il agite les lambeaux calcinés de ses ailes. "Rien n'est aussi douloureux qu'être banni du Mont Céleste."~ */
  IF ~  CheckStatGT(Protagonist,15,WIS)
GlobalGT("Good","GLOBAL",14)
~ THEN REPLY #54654 /* ~"Arrête ton char, Trias. Tu peux encore être racheté."~ */ GOTO 87
  IF ~  CheckStatGT(Protagonist,15,WIS)
GlobalLT("Good","GLOBAL",15)
~ THEN REPLY #54655 /* ~"Arrête ton char, Trias. Tu peux encore être racheté."~ */ GOTO 88
  IF ~~ THEN REPLY #54656 /* ~"Ainsi donc tu as 'chuté' ? Et pourquoi devrais-je croire tes paroles ?"~ */ GOTO 92
END

IF ~~ THEN BEGIN 83 // from: 81.1 90.1 91.1
  SAY #54657 /* ~"Ta bêtise est-elle si grande que tu veuilles éprouver ta pseudo-immortalité contre un vrai immortel ? Écarte-toi, humain, ou nous devrons te prendre au mot."~ */
  IF ~~ THEN REPLY #54658 /* ~"Vas-y, Trias."~ */ GOTO 84
END

IF ~~ THEN BEGIN 84 // from: 81.2 83.0 88.0
  SAY #54659 /* ~"Cela fait longtemps que je n'ai pas levé ma lame contre quelqu'un. Nous nous battrons en duel, toi et moi."~ [TTB119] */
  IF ~~ THEN REPLY #54660 /* ~Attaque-le.~ */ DO ~Enemy()
ForceAttack(Protagonist,Myself)
~ EXIT
END

IF ~~ THEN BEGIN 85 // from: 65.2 69.2 74.1 75.1 81.3
  SAY #54661 /* ~Les yeux de Trias pétillent. "Je ne pense pas, mortel. Tu jettes des ombres sur l'existence, tu attires le tourment des cieux, et il est en mon pouvoir de t'ouvrir à la Lumière." Une flamme blanche danse sur son épée. "Que dirais-tu d'un petit duel… toi et moi ?!"~ */
  IF ~~ THEN REPLY #54662 /* ~"À ta guise, Trias… mais je vais te tuer."~ */ DO ~Enemy()
ForceAttack(Protagonist,Myself)
~ EXIT
END

IF ~~ THEN BEGIN 86 // from: 74.0 75.0
  SAY #54663 /* ~"De quel droit me juges-tu, mortel, avec les vies que tu as menées ?! Je vais te dire ce qu'est la trahison… La trahison est lâcheté. C'est vendre des armes à tes ennemis de peur qu'ils ne cessent de s'entretuer et ne se tournent vers toi. La trahison, c'est refuser de montrer l'exemple ; laisser les fiélons envahir les plans jusqu'à ce que le mal ait corrompu tous les cœurs. Alors, ne demande pas pourquoi j'escalade le Mont Céleste et tente de déclencher la guerre sur ses pentes."~ */
  IF ~~ THEN REPLY #54664 /* ~"Tu souillerais du mal incarné l'essence du bien. Pour moi, c'est de la trahison !"~ */ GOTO 81
  IF ~~ THEN REPLY #54665 /* ~"La trahison, c'est la trahison."~ */ GOTO 81
  IF ~~ THEN REPLY #54666 /* ~"J'en ai assez de ton autosatisfaction, Trias. Prépare-toi à mourir."~ */ GOTO 70
END

IF ~~ THEN BEGIN 87 // from: 79.2 82.0
  SAY #54667 /* ~Il te regarde au fond des yeux. "Le temps de la rédemption est révolu, mortel. Je ne regrette rien. Si l'on croit sincèrement en une cause, il faut être prêt à la trahir. Je crois sincèrement dans le Bien, et donc je choisis de le trahir."~ */
  IF ~~ THEN REPLY #54668 /* ~"Peut-être que je peux te faire changer d'avis…"~ */ GOTO 89
END

IF ~~ THEN BEGIN 88 // from: 79.3 82.1
  SAY #54669 /* ~(Railleur) "Ce n'est pas à toi de parler de rédemption, mortel. Relent du mal… tes paroles empestent le mensonge. Non, ce plan continuera, et un de ces jours, nous verrons brûler les portes des Cieux."~ */
  IF ~~ THEN REPLY #54670 /* ~"Dans ce cas, battons-nous."~ */ GOTO 84
END

IF ~~ THEN BEGIN 89 // from: 87.0 92.1
  SAY #54671 /* ~"Essayons-nous aux armes, mortel… Nous verrons bien qui de nous a le plus de répondant derrière ses idées. Défends-toi, mortel."~ */
  IF ~~ THEN REPLY #54672 /* ~Prépare-toi.~ */ DO ~Enemy()
~ EXIT
  IF ~~ THEN REPLY #54673 /* ~Attaque le deva.~ */ DO ~Enemy()
ForceAttack(Protagonist,Myself)
Attack(Protagonist)
~ EXIT
END

IF ~~ THEN BEGIN 90 // from: 76.1 79.1
  SAY #54674 /* ~"La souillure ne tiendra pas longtemps… Elle sera lavée par la pureté de ceux qui restent. C'est un sacrifice sur l'autel du bien de tous."~ */
  IF ~~ THEN REPLY #54675 /* ~"Trahir ta patrie ?"~ */ GOTO 80
  IF ~~ THEN REPLY #54676 /* ~"En voilà assez, Trias. Ou t'arrêtes ton char, ou on se bat !"~ */ GOTO 83
END

IF ~~ THEN BEGIN 91 // from: 76.2
  SAY #54677 /* ~"Toi qui parles en termes de longévité humaine, tu prétends dire à un vrai immortel qu'il doit y avoir une autre voie ?! Je les ai toutes examinées, mortel, et c'est la seule."~ */
  IF ~~ THEN REPLY #54678 /* ~"Qu'est-ce qui est vraiment arrivé à tes ailes, Trias ?"~ */ GOTO 82
  IF ~~ THEN REPLY #54679 /* ~"En voilà assez, Trias. Ou t'arrêtes ton char, ou on se bat !"~ */ GOTO 83
END

IF ~~ THEN BEGIN 92 // from: 82.2
  SAY #54680 /* ~"Ne viens pas me parler de traîtrises ni de chutes, mortel… Moi qui suis prêt à me sacrifier pour que le Bien triomphe."~ */
  IF ~~ THEN REPLY #54681 /* ~"Noble intention, Trias, mais de quel droit ?"~ */ GOTO 75
  IF ~~ THEN REPLY #54682 /* ~"Alors, j'espère que tu es prêt au sacrifice, Trias. J'ai l'intention d'être l'instrument du jugement."~ */ GOTO 89
END

IF ~~ THEN BEGIN 93 // from: 63.0
  SAY #54683 /* ~"Du calme, mortel. Tu viens à moi en quête d'un savoir que je suis seul à posséder. Nul autre dans les plans ne peut te révéler ce que je vais te dire. Si tu tiens vraiment à ce savoir, tu dois jurer de m'épargner la vie."~ */
  IF ~~ THEN REPLY #54684 /* ~"On ne marchande pas avec moi, Trias. Tu me dis maintenant, ou je te tue, et tant pis pour les conséquences."~ */ GOTO 95
  IF ~~ THEN REPLY #54685 /* ~"Je t'épargne la vie si tu me dis ce que je veux savoir."~ */ GOTO 96
  IF ~~ THEN REPLY #54686 /* ~"Je jure de t'épargner la vie si tu me dis ce que je veux savoir."~ */ DO ~IncrementGlobalOnceEx("GLOBALLawful_Trias_1","GLOBALLaw",1)
~ GOTO 96
  IF ~~ THEN REPLY #54687 /* ~Tue le deva.~ */ DO ~SetGlobal("Game_Over","GLOBAL",3)
~ GOTO 98
END

IF ~~ THEN BEGIN 94 // from: 63.1
  SAY #54688 /* ~Il tousse et crache du sang. "Avant de parler, je dois obtenir ta promesse. Jure de m'épargner la vie."~ */
  IF ~~ THEN REPLY #54689 /* ~"On ne marchande pas avec moi, Trias. Tu me dis maintenant, ou je te tue, et tant pis pour les conséquences."~ */ GOTO 95
  IF ~~ THEN REPLY #54690 /* ~"Je t'épargne la vie si tu me dis ce que je veux savoir."~ */ GOTO 96
  IF ~~ THEN REPLY #54691 /* ~"Je jure de t'épargner la vie si tu me dis ce que je veux savoir."~ */ DO ~IncrementGlobalOnceEx("GLOBALLawful_Trias_1","GLOBALLaw",1)
~ GOTO 96
  IF ~~ THEN REPLY #54692 /* ~Tue le deva.~ */ DO ~SetGlobal("Game_Over","GLOBAL",3)
~ GOTO 98
END

IF ~~ THEN BEGIN 95 // from: 93.0 94.0
  SAY #54693 /* ~"Tu as besoin de ce savoir. Sinon, tu souffriras… à jamais."~ */
  IF ~~ THEN REPLY #54694 /* ~"J'ai dit : *parle*."~ */ GOTO 97
  IF ~~ THEN REPLY #54695 /* ~"Je t'épargne la vie si tu me dis ce que je veux savoir."~ */ GOTO 96
  IF ~~ THEN REPLY #54696 /* ~"Je jure de t'épargner la vie si tu me dis ce que je veux savoir."~ */ DO ~IncrementGlobalOnceEx("GLOBALLawful_Trias_1","GLOBALLaw",1)
~ GOTO 96
  IF ~~ THEN REPLY #54697 /* ~Tue le deva.~ */ DO ~SetGlobal("Game_Over","GLOBAL",3)
~ GOTO 98
END

IF ~~ THEN BEGIN 96 // from: 93.1 93.2 94.1 94.2 95.1 95.2 97.0 97.1
  SAY #54698 /* ~"Le portail qui mène au lieu que tu cherches se trouve dans le tore au sommet de l'aiguille, dans Sigil, la Cité des Portes. Dans cette cité, il y a un endroit où l'on emporte les morts de ton espèce…~ */
  IF ~~ THEN REPLY #54699 /* ~"Tu veux dire la *Morgue* ?"~ */ GOTO 99
  IF ~~ THEN REPLY #54700 /* ~"Quelle est la clé ?"~ */ GOTO 100
END

IF ~~ THEN BEGIN 97 // from: 95.0
  SAY #54701 /* ~Il rit doucement. "Tu n'as guère le choix, mortel. Tu jures ou tu mets une croix sur ce savoir."~ */
  IF ~~ THEN REPLY #54702 /* ~"Très bien. Je t'épargne la vie si tu me dis ce que je veux savoir."~ */ GOTO 96
  IF ~~ THEN REPLY #54703 /* ~"Très bien. Je jure de t'épargner la vie si tu me dis ce que je veux savoir."~ */ DO ~IncrementGlobalOnceEx("GLOBALLawful_Trias_1","GLOBALLaw",1)
~ GOTO 96
  IF ~~ THEN REPLY #54704 /* ~Tue le deva.~ */ DO ~SetGlobal("Game_Over","GLOBAL",3)
~ GOTO 98
END

IF ~~ THEN BEGIN 98 // from: 63.2 93.3 94.3 95.3 97.2 107.0
  SAY #54705 /* ~Tu le frappes, tu écrabouilles les os de son fier visage, tu meurtris sa silhouette immaculée. Dans un dernier souffle, il murmure : "Sache que tu viens de te damner. En me tuant, tu as fait tomber le dernier rempart contre les horreurs qui te dévoreront. Le fiélon que j'ai berné… il est maintenant en liberté…" Son rire se liquéfie et la lumière s'éteint dans ses yeux.~ */
  IF ~~ THEN REPLY #54706 /* ~"Meurs donc, et qu'on n'en parle plus."~ */ DO ~AddexperienceParty(375000)
Kill(Myself)
~ EXIT
END

IF ~~ THEN BEGIN 99 // from: 96.0
  SAY #54707 /* ~"C'est là où tu t'es réveillé récemment, non ? Les plans semblent jouer de vilains tours ces temps-ci. Tu étais pourtant si *près*…"~ */
  IF ~~ THEN REPLY #54708 /* ~"Quelle est la clé ?"~ */ GOTO 100
END

IF ~~ THEN BEGIN 100 // from: 96.1 99.0
  SAY #54709 /* ~"La Forteresse des regrets est cimentée de larmes. Et les larmes appellent les larmes… Pour y pénétrer, tu dois donc payer un peu de ta personne. En passant près du portail, si tu nourris des regrets, tu sentiras la présence du portail, telle la froide étreinte de la mort."~ */
  IF ~~ THEN REPLY #54710 /* ~"Et alors ?"~ */ DO ~SetGlobal("Regret","GLOBAL",1)
~ JOURNAL #54711 /* ~Trias le Traître m'a donné la clé de la Forteresse des Regrets. Le portail se trouve à l'intérieur de la Morgue. Je peux le localiser en pensant constamment à l'un de mes plus récents regrets ; il me glacera de plus en plus au fur et à mesure que je me rapprocherai du portail. Une fois arrivé, il me faudra m'arracher un lambeau de chair et y inscrire l'un de mes regrets à l'aide de sang prélevé au niveau de mon index gauche.~ */ GOTO 101
END

IF ~~ THEN BEGIN 101 // from: 100.0
  SAY #54712 /* ~"Pendant que ce froid glacial t'envahit, tu dois t'arracher un morceau de peau et y inscrire un regret avec du sang de ton index gauche. Le portail s'ouvrira et tu pourras découvrir la vérité derrière la Forteresse des regrets… et peut-être rencontrer son gardien."~ */
  IF ~~ THEN REPLY #54713 /* ~"Comment tu sais ça ?"~ */ GOTO 102
  IF ~~ THEN REPLY #54714 /* ~"Que peux-tu me dire du gardien de la Forteresse ?"~ */ GOTO 103
END

IF ~~ THEN BEGIN 102 // from: 101.0
  SAY #54715 /* ~"J'ai recherché bien des alliances dans tous les plans. Ma quête m'a conduit à la Forteresse, où j'ai parlé au seigneur et gardien de ses salles obscures. Sans doute veux-tu maintenant retourner à Sigil… Le sang qui souille tes mains sera la clé qui ouvrira ce portail. Pour retourner, il te suffit de franchir la porte par où tu es entré."~ */
  IF ~~ THEN REPLY #54716 /* ~"Que peux-tu me dire de ce gardien ?"~ */ GOTO 103
  IF ~~ THEN REPLY #54717 /* ~"Que peux-tu me dire de la Forteresse ?"~ */ GOTO 58
  IF ~~ THEN REPLY #54718 /* ~"Grand merci, Trias. Maintenant, ton heure a sonné."~ */ GOTO 105
  IF ~~ THEN REPLY #54719 /* ~"Que vas-tu faire quand je serai parti, Trias ?"~ */ GOTO 106
END

IF ~~ THEN BEGIN 103 // from: 60.0 101.1 102.0
  SAY #54720 /* ~"Celui-là est puissant. Tu n'auras pas le dessus et tu ne pourras pas défaire ta mortalité de son emprise glaciale. C'est peine perdue. Tu t'es lancé dans une aventure insensée."~ */
  IF ~~ THEN REPLY #54721 /* ~"C'est peut-être insensé, mais j'en saurai plus sur ce gardien."~ */ DO ~SetGlobal("Know_Keeper_Mortality","GLOBAL",1)
~ GOTO 104
  IF ~~ THEN REPLY #54722 /* ~"Continue."~ */ DO ~SetGlobal("Know_Keeper_Mortality","GLOBAL",1)
~ GOTO 104
END

IF ~~ THEN BEGIN 104 // from: 103.0 103.1
  SAY #54723 /* ~"La mortalité d'un homme est une boussole qui indique la voie suivie. Si on peut s'en emparer comme d'un objet, on peut en savoir long sur la nature de l'homme dont on l'a arrachée. Ton adversaire en sait plus sur toi que tu n'en sauras jamais. Il t'a observé et étudié durant un grand nombre de tes demi-vies. Je connais son cœur. Il ne te rendra pas ce que tu cherches."~ */
  IF ~~ THEN REPLY #54717 /* ~"Que peux-tu me dire de la Forteresse ?"~ */ GOTO 58
  IF ~~ THEN REPLY #54724 /* ~"Grand merci, Trias. Maintenant, ton heure a sonné."~ */ GOTO 105
  IF ~~ THEN REPLY #54725 /* ~"Que vas-tu faire quand je serai parti, Trias ?"~ */ GOTO 106
END

IF ~~ THEN BEGIN 105 // from: 60.1 102.2 104.1
  SAY #54726 /* ~"Mais tu as juré…"~ */
  IF ~  Global("Lawful_Trias_1","GLOBAL",1)
~ THEN REPLY #54727 /* ~"J'ai menti."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Trias_1","GLOBALLaw",-3)
IncrementGlobalOnceEx("GLOBALEvil_Trias_2","GLOBALGood",-1)
~ GOTO 107
  IF ~  !Global("Lawful_Trias_1","GLOBAL",1)
~ THEN REPLY #54728 /* ~"J'ai rien juré du tout. J'ai juste dit que je t'épargnerais la vie… et j'ai changé d'avis."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Trias_2","GLOBALGood",-1)
~ GOTO 107
  IF ~~ THEN REPLY #54729 /* ~"Je plaisante. Que vas-tu faire quand je serai parti, Trias ?"~ */ GOTO 106
END

IF ~~ THEN BEGIN 106 // from: 60.2 102.3 104.2 105.2
  SAY #54730 /* ~"Je tenterai une fois encore de lever une armée contre les portes du Paradis. Pas question qu'ils me récupèrent, et mon existence n'a point d'autre but."~ */
  IF ~~ THEN REPLY #54731 /* ~"Dans ce cas, je dois t'arrêter. Maintenant."~ */ GOTO 108
  IF ~  CheckStatGT(Protagonist,15,WIS)
~ THEN REPLY #54732 /* ~"Trias, as-tu oublié le visage de ton père ?"~ */ DO ~IncrementGlobalOnceEx("GLOBALGood_Trias_2","GLOBALGood",1)
~ GOTO 109
  IF ~  !NearbyDialog("DVhail")
~ THEN REPLY #54733 /* ~"Alors, bonne chance. Au revoir."~ */ DO ~SinisterPoof("S0P2CUR3",[2577.3268],1)
PlaySoundNotRanged("CURES03")
DestroySelf()
~ EXIT
  IF ~  NearbyDialog("DVhail")
~ THEN REPLY #54734 /* ~"Alors, bonne chance. Au revoir."~ */ EXTERN ~DVHAIL~ 14
END

IF ~~ THEN BEGIN 107 // from: 105.0 105.1 108.0 108.1
  SAY #54735 /* ~"Je te maudis de vivre sans but. Puisses-tu souffrir dans ta coquille vouée à la douleur, et que t'échappent à jamais les souvenirs du plaisir procuré par la lumière et l'amour. Le peu qu'il te reste d'humanité sera ta mort, mortel."~ */
  IF ~~ THEN REPLY #54736 /* ~Terrasse-le. "Adieu, Trias." ~ */ GOTO 98
END

IF ~~ THEN BEGIN 108 // from: 106.0 111.1
  SAY #54737 /* ~"Tu as juré de m'épargner la vie, mortel."~ */
  IF ~  Global("Lawful_Trias_1","GLOBAL",1)
~ THEN REPLY #54738 /* ~"Disons simplement que j'agis pour le bien de tous, Trias."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Trias_1","GLOBALLaw",-3)
~ GOTO 107
  IF ~  !Global("Lawful_Trias_1","GLOBAL",1)
~ THEN REPLY #54739 /* ~"J'ai rien juré du tout. J'ai juste dit que je t'épargnerais la vie. Et maintenant, je vois que ce serait peine perdue. En d'autres termes, j'ai changé d'avis."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Trias_2","GLOBALGood",-1)
~ GOTO 107
  IF ~  !NearbyDialog("DVhail")
~ THEN REPLY #54740 /* ~"Alors, fonce, tente ta chance. Mais sache qu'ils t'attendront. Au revoir, Trias. Tous mes vœux d'échec."~ */ DO ~EscapeArea()
~ EXIT
  IF ~  NearbyDialog("DVhail")
~ THEN REPLY #54741 /* ~"Alors, fonce, tente ta chance. Mais sache qu'ils t'attendront. Au revoir, Trias. Tous mes vœux d'échec."~ */ EXTERN ~DVHAIL~ 14
END

IF ~~ THEN BEGIN 109 // from: 106.1
  SAY #54742 /* ~"Qu'est-ce que tu veux dire ?"~ */
  IF ~  CheckStatGT(Protagonist,13,CHR)
~ THEN REPLY #54743 /* ~"Les Plans Supérieurs sont le foyer de la justice, de la beauté et de la bonté. Ils sont aussi la patrie du pardon. Rentre chez toi. Admets ton erreur et implore le pardon."~ */ DO ~IncrementGlobalOnceEx("GLOBALGood_Trias_3","GLOBALGood",5)
SetGlobal("Trias_Redeem","GLOBAL",1)
~ GOTO 110
  IF ~  CheckStatLT(Protagonist,14,CHR)
~ THEN REPLY #54744 /* ~"Les Plans Supérieurs sont le foyer de la justice, de la beauté et de la bonté. Ils sont aussi la patrie du pardon. Rentre chez toi. Admets ton erreur et implore le pardon."~ */ GOTO 111
  IF ~  !NearbyDialog("DVhail")
~ THEN REPLY #54745 /* ~"Laisse tomber. Au revoir, Trias."~ */ DO ~SinisterPoof("S0P2CUR3",[2577.3268],1)
PlaySoundNotRanged("CURES03")
DestroySelf()
~ EXIT
  IF ~  NearbyDialog("DVhail")
~ THEN REPLY #54746 /* ~"Laisse tomber. Au revoir, Trias."~ */ EXTERN ~DVHAIL~ 14
END

IF ~~ THEN BEGIN 110 // from: 109.0 111.0
  SAY #54747 /* ~Il va pour répondre avec colère… mais se ravise et baisse la tête. "Tu t'es montré convaincant, mortel, et la sagesse de tes paroles me transperce. Je vais demander le pardon de mes pères et accepter leur punition. Prends ceci, et au revoir. Si nous devons nous rencontrer de nouveau, j'espère avoir d'ici là trouvé la rédemption."~ */
  IF ~  !NearbyDialog("DVhail")
~ THEN REPLY #54748 /* ~"Tous mes vœux de réussite, Trias. Au revoir."~ */ DO ~GiveItem("SPWI901",Protagonist)
AddexperienceParty(375000)
StickySinisterPoof("S113SMOK",Myself,1)
Wait(1)
DestroySelf()
~ JOURNAL #54750 /* ~J'ai convaincu Trias d'aller chercher le pardon dans les Plans Supérieurs.~ */ EXIT
  IF ~  NearbyDialog("DVhail")
~ THEN REPLY #54749 /* ~"Tous mes vœux de réussite, Trias. Au revoir."~ */ DO ~GiveItem("SPWI901",Protagonist)
~ JOURNAL #54751 /* ~J'avais convaincu Trias d'aller chercher le pardon dans les Plans Supérieurs, mais c'est le moment que Vhailor a choisi pour l'attaquer.~ */ EXTERN ~DVHAIL~ 14
END

IF ~~ THEN BEGIN 111 // from: 109.1
  SAY #54752 /* ~Son visage s'illumine, puis s'assombrit à nouveau. Il détourne le regard. "Impossible de revenir. Ma désobéissance est trop grande. Il n'y a pas de pardon pour ceux de mon espèce. Désormais, je servirai la cause du Bien à ma façon."~ */
  IF ~  CheckStatGT(Protagonist,16,WIS)
~ THEN REPLY #54753 /* ~"Il y a un pardon, Trias. De la même façon que tu es supérieur à un vil suppliant, les puissances des Plans Supérieurs sont plus justes que toi. Tu n'es pas le modèle de la bonté ; rappelle-toi : tu peux leur faire confiance."~ */ DO ~IncrementGlobalOnceEx("GLOBALGood_Trias_3","GLOBALGood",5)
SetGlobal("Trias_Redeem","GLOBAL",1)
~ GOTO 110
  IF ~~ THEN REPLY #54754 /* ~"Dans ce cas, je dois t'arrêter là."~ */ GOTO 108
  IF ~  !NearbyDialog("DVhail")
~ THEN REPLY #54755 /* ~"Alors, au revoir. Et n'oublie jamais que tu as eu l'occasion de te racheter et que tu l'as refusée."~ */ DO ~SinisterPoof("S0P2CUR3",[2577.3268],1)
PlaySoundNotRanged("CURES03")
DestroySelf()
~ EXIT
  IF ~  NearbyDialog("DVhail")
~ THEN REPLY #54756 /* ~"Alors, au revoir. Et n'oublie jamais que tu as eu l'occasion de te racheter et que tu l'as refusée."~ */ EXTERN ~DVHAIL~ 14
END

IF WEIGHT #13 /* Triggers after states #: 124 123 122 121 120 119 even though they appear after this state */
~  Global("Current_Area","GLOBAL",702)
NumTimesTalkedToGT(0)
Global("Trias_Sword","GLOBAL",3)
~ THEN BEGIN 112 // from:
  SAY #54757 /* ~"Quoi encore ?"~ [TTB037] */
  IF ~~ THEN REPLY #54758 /* ~"J'ai encore des questions à te poser."~ */ GOTO 53
  IF ~~ THEN REPLY #54759 /* ~"Rien. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 113 // from:
  SAY #54760 /* ~Vhailor le frappe, écrabouillant les os de son fier visage, ensanglantant sa silhouette immaculée. Dans un dernier souffle, il murmure : "Sache que tu viens de te damner. En me tuant, tu as fait tomber le dernier rempart contre les horreurs qui te dévoreront. Le fiélon que j'ai berné… il est maintenant en liberté…" Son rire se liquéfie et la lumière s'éteint dans ses yeux.~ */
  IF ~~ THEN REPLY #106512 /* ~"Diable, Vhailor, réalises-tu ce que tu viens de faire ?! "~ */ DO ~SetGlobal("Trias_Redeem","GLOBAL",0)
AddexperienceParty(375000)
Kill(Myself)
~ EXTERN ~DVHAIL~ 170
  IF ~~ THEN REPLY #54761 /* ~"Meurs donc, et qu'on n'en parle plus."~ */ DO ~SetGlobal("Trias_Redeem","GLOBAL",0)
AddexperienceParty(375000)
Kill(Myself)
~ EXIT
END

IF ~~ THEN BEGIN 114 // from: 0.0
  SAY #61293 /* ~Le deva lève la tête et pose son regard sur toi. Il a une voix mélodieuse dans sa pureté. "Que veux-tu de moi, mortel ? Parle sans détour, puis laisse-moi à mes souvenirs du paradis." Tu n'as pas encore répondu que son visage se durcit et qu'il fronce les sourcils.~ [TTB004] */
  IF ~~ THEN JOURNAL #54312 /* ~J'ai trouvé l'ange dont parlait Ravel. Il se nomme Trias et est enfermé à Maudith. Quand je pense à la façon dont il est traité… je suis vraiment tombé dans une ville d'assassins et de coupe-jarrets. Encore qu'elle ne soit guère différente des autres localités que je connais…~ */ GOTO 5
END

IF ~~ THEN BEGIN 115 // from: 0.1
  SAY #61294 /* ~Le deva lève la tête et pose son regard sur toi. Il a une voix mélodieuse dans sa pureté. "Que veux-tu de moi, mortel ? Parle sans détour, puis laisse-moi à mes souvenirs du paradis." Tu n'as pas encore répondu que son visage se durcit et qu'il fronce les sourcils.~ [TTB004] */
  IF ~~ THEN JOURNAL #54312 /* ~J'ai trouvé l'ange dont parlait Ravel. Il se nomme Trias et est enfermé à Maudith. Quand je pense à la façon dont il est traité… je suis vraiment tombé dans une ville d'assassins et de coupe-jarrets. Encore qu'elle ne soit guère différente des autres localités que je connais…~ */ GOTO 6
END

IF ~~ THEN BEGIN 116 // from: 0.4 0.5
  SAY #61295 /* ~Le deva lève la tête et pose son regard sur toi. Il a une voix mélodieuse dans sa pureté. "Que veux-tu de moi, mortel ? Parle sans détour, puis laisse-moi à mes souvenirs du paradis." Tu n'as pas encore répondu que son visage se durcit et qu'il fronce les sourcils.~ [TTB004] */
  IF ~~ THEN JOURNAL #54312 /* ~J'ai trouvé l'ange dont parlait Ravel. Il se nomme Trias et est enfermé à Maudith. Quand je pense à la façon dont il est traité… je suis vraiment tombé dans une ville d'assassins et de coupe-jarrets. Encore qu'elle ne soit guère différente des autres localités que je connais…~ */ GOTO 7
END

IF ~~ THEN BEGIN 117 // from: 2.0 2.2
  SAY #61296 /* ~"Tu as ma lame ?"~ */
  IF ~  !PartyHasItem("Celestia")
~ THEN REPLY #61297 /* ~"Pas encore. Il me reste des questions à te poser…"~ */ GOTO 10
  IF ~  PartyHasItem("Celestia")
~ THEN REPLY #61298 /* ~"Oh, elle doit être quelque part dans le coin. D'abord, j'ai quelques questions à te poser…"~ */ GOTO 10
  IF ~  PartyHasItem("Celestia")
~ THEN REPLY #61299 /* ~"J'ai ton épée."~ */ DO ~SetGlobal("Know_Sword","GLOBAL",1)
~ GOTO 11
  IF ~~ THEN REPLY #61300 /* ~"Tant pis. Je reviendrai."~ */ EXIT
END

IF ~~ THEN BEGIN 118 // from: 18.0
  SAY #61305 /* ~"Pourquoi ne pas me délivrer, mortel ? Je connais peut-être des choses fort utiles…"~ */
  IF ~~ THEN REPLY #61306 /* ~"Je voudrais juste que tu répondes à quelques questions…"~ */ GOTO 17
  IF ~  !NearbyDialog("DGrace")
~ THEN REPLY #61307 /* ~Frappe les chaînes.~ */ GOTO 20
  IF ~  !NearbyDialog("DGrace")
~ THEN REPLY #61308 /* ~Frappe le deva.~ */ GOTO 19
  IF ~  NearbyDialog("DGrace")
~ THEN REPLY #61308 /* ~Frappe le deva.~ */ EXTERN ~DGRACE~ 181
  IF ~~ THEN REPLY #61309 /* ~Pars.~ */ EXIT
END

IF WEIGHT #7 ~  Global("Current_Area","GLOBAL",901)
GlobalLT("Curst_Counter","GLOBAL",3)
NearbyDialog("DVhail")
~ THEN BEGIN 119 // from:
  SAY #61310 /* ~Le regard de Trias flamboie. "Ces gens… ce sont tous des traîtres, des menteurs, des meurtriers… ils n'ont que ce qu'ils méritent."~ [TTB111] */
  IF ~~ THEN GOTO 64
END

IF WEIGHT #8 ~  Global("Current_Area","GLOBAL",901)
GlobalLT("Curst_Counter","GLOBAL",3)
!NearbyDialog("DVhail")
~ THEN BEGIN 120 // from:
  SAY #61311 /* ~Le regard de Trias flamboie. "Ces gens… ce sont tous des traîtres, des menteurs, des meurtriers… ils n'ont que ce qu'ils méritent."~ [TTB111] */
  IF ~~ THEN GOTO 65
END

IF WEIGHT #9 ~  Global("Current_Area","GLOBAL",901)
GlobalGT("Curst_Counter","GLOBAL",2)
GlobalLT("Curst_Counter","GLOBAL",6)
NearbyDialog("DVhail")
~ THEN BEGIN 121 // from:
  SAY #61312 /* ~Trias te regarde avec mépris. "Et voici donc le retour des chiens."~ [TTB100] */
  IF ~~ THEN GOTO 66
END

IF WEIGHT #10 ~  Global("Current_Area","GLOBAL",901)
GlobalGT("Curst_Counter","GLOBAL",2)
GlobalLT("Curst_Counter","GLOBAL",6)
!NearbyDialog("DVhail")
~ THEN BEGIN 122 // from:
  SAY #61313 /* ~Trias te regarde avec mépris. "Et voici donc le retour des chiens."~ [TTB100] */
  IF ~~ THEN GOTO 67
END

IF WEIGHT #11 ~  Global("Current_Area","GLOBAL",901)
GlobalGT("Curst_Counter","GLOBAL",5)
NearbyDialog("DVhail")
~ THEN BEGIN 123 // from:
  SAY #61316 /* ~"Qu'espères-tu accomplir ici ?"~ [TTB106] */
  IF ~~ THEN GOTO 68
END

IF WEIGHT #12 ~  Global("Current_Area","GLOBAL",901)
GlobalGT("Curst_Counter","GLOBAL",5)
!NearbyDialog("DVhail")
~ THEN BEGIN 124 // from:
  SAY #61317 /* ~"Qu'espères-tu accomplir ici ?"~ [TTB106] */
  IF ~~ THEN GOTO 69
END

IF ~~ THEN BEGIN 125 // from: 0.2
  SAY #61293 /* ~Le deva lève la tête et pose son regard sur toi. Il a une voix mélodieuse dans sa pureté. "Que veux-tu de moi, mortel ? Parle sans détour, puis laisse-moi à mes souvenirs du paradis." Tu n'as pas encore répondu que son visage se durcit et qu'il fronce les sourcils.~ [TTB004] */
  IF ~~ THEN JOURNAL #54312 /* ~J'ai trouvé l'ange dont parlait Ravel. Il se nomme Trias et est enfermé à Maudith. Quand je pense à la façon dont il est traité… je suis vraiment tombé dans une ville d'assassins et de coupe-jarrets. Encore qu'elle ne soit guère différente des autres localités que je connais…~ */ EXTERN ~DGRACE~ 176
END

IF ~~ THEN BEGIN 126 // from: 0.3
  SAY #61293 /* ~Le deva lève la tête et pose son regard sur toi. Il a une voix mélodieuse dans sa pureté. "Que veux-tu de moi, mortel ? Parle sans détour, puis laisse-moi à mes souvenirs du paradis." Tu n'as pas encore répondu que son visage se durcit et qu'il fronce les sourcils.~ [TTB004] */
  IF ~~ THEN JOURNAL #54312 /* ~J'ai trouvé l'ange dont parlait Ravel. Il se nomme Trias et est enfermé à Maudith. Quand je pense à la façon dont il est traité… je suis vraiment tombé dans une ville d'assassins et de coupe-jarrets. Encore qu'elle ne soit guère différente des autres localités que je connais…~ */ EXTERN ~DGRACE~ 177
END
