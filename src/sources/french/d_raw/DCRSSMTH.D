// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DCRSSMTH.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\fr_FR\dialog.tlk
// dialogF  : (none)

BEGIN ~DCRSSMTH~

IF ~  GlobalLT("Mediate","GLOBAL",3)
NumTimesTalkedTo(0)
~ THEN BEGIN 0 // from:
  SAY #3168 /* ~Cet homme baraqué à l'air aigri te lance un regard noir lorsque tu interromps son travail. Il semble un peu lent, mais plus honnête que la plupart des habitants de la ville. "Ouais ? Qu'est-ce que tu veux ?"~ */
  IF ~~ THEN REPLY #3169 /* ~"Qui es-tu ?"~ */ GOTO 2
  IF ~~ THEN REPLY #61319 /* ~"Qu'est-ce que c'est que cet endroit ?"~ */ GOTO 7
  IF ~~ THEN REPLY #61320 /* ~"Tu as entendu dire qu'il y avait un deva ici, à Maudith ?"~ */ GOTO 8
  IF ~~ THEN REPLY #61321 /* ~"Rien. Au revoir."~ */ EXIT
END

IF ~  GlobalLT("Mediate","GLOBAL",3)
NumTimesTalkedToGT(0)
~ THEN BEGIN 1 // from:
  SAY #61322 /* ~Le forgeron te dévisage, irrité. "Qu'est-ce que tu veux encore ?"~ */
  IF ~  Global("Mediate","GLOBAL",2)
~ THEN REPLY #61344 /* ~"Je viens de la part de ton frère. Une histoire de dettes entre vous…"~ */ GOTO 9
  IF ~  Global("Mediate","GLOBAL",1)
~ THEN REPLY #61345 /* ~"Il paraît que tu as un problème avec ton frère. J'aimerais apporter mon aide."~ */ GOTO 9
  IF ~~ THEN REPLY #61347 /* ~"Tu as entendu dire qu'il y avait un deva ici, à Maudith ?"~ */ GOTO 8
  IF ~~ THEN REPLY #61348 /* ~"Je voudrais t'acheter quelque chose."~ */ DO ~StartStore("Crumple1",Protagonist)
~ EXIT
  IF ~~ THEN REPLY #61349 /* ~"Rien du tout, merci. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 0.0
  SAY #61323 /* ~"Poingfroissé Malako, le forgeron de la ville. Tu veux quelque chose ?"~ */
  IF ~  Global("Mediate","GLOBAL",2)
~ THEN REPLY #61350 /* ~"Je viens de la part de ton frère. Une histoire de dettes entre vous…"~ */ GOTO 9
  IF ~  Global("Mediate","GLOBAL",1)
~ THEN REPLY #61351 /* ~"Il paraît que tu as un problème avec ton frère. J'aimerais apporter mon aide."~ */ GOTO 9
  IF ~~ THEN REPLY #61352 /* ~"J'aimerais voir ce que tu as à vendre."~ */ DO ~StartStore("Crumple1",Protagonist)
~ EXIT
  IF ~~ THEN REPLY #61353 /* ~"Non, merci. Au revoir."~ */ EXIT
END

IF ~  GlobalGT("Mediate","GLOBAL",2)
GlobalLT("Mediate","GLOBAL",5)
~ THEN BEGIN 3 // from:
  SAY #61324 /* ~"Alors ? Tu as avancé ?"~ */
  IF ~  Global("Negotiate_Kester","GLOBAL",1)
!PartyHasItem("CrumLeg")
~ THEN REPLY #61354 /* ~" Ton frère a accepté de me laisser jouer les médiateurs. Il me faudrait ton exemplaire du testament pour évaluer ta part de l'héritage."~ */ DO ~GiveItem("CrumLeg",Protagonist)
SetGlobal("Mediate","GLOBAL",5)
~ GOTO 4
  IF ~  Global("Negotiate_Kester","GLOBAL",1)
PartyHasItem("CrumLeg")
~ THEN REPLY #61355 /* ~"Ton frère a accepté de me laisser jouer les médiateurs."~ */ DO ~SetGlobal("Mediate","GLOBAL",5)
~ GOTO 5
  IF ~  PartyHasItem("KestLeg")
PartyHasItem("CrumLeg")
Global("Negotiate_Kester","GLOBAL",1)
~ THEN REPLY #61356 /* ~"J'ai décidé que tout l'argent te revenait. Ce n'est que justice, puisque tu es l'aîné."~ */ DO ~TakePartyItemNum("KestLeg",1)
TakePartyItemNum("CrumLeg",1)
SetGlobal("Mediate","GLOBAL",7)
AddexperienceParty(131250)
~ GOTO 13
  IF ~~ THEN REPLY #61357 /* ~"Ça avance. Je veux voir ce que tu as à vendre…"~ */ DO ~StartStore("Crumple1",Protagonist)
~ EXIT
  IF ~~ THEN REPLY #61358 /* ~"Ça avance. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 3.0
  SAY #61325 /* ~"Bon, d'accord. Je suppose que tu dois l'étudier pour prendre ta décision." Il te tend un bout de papier froissé. "Tu auras qu'à avertir l'un ou l'autre."~ */
  IF ~~ THEN REPLY #61359 /* ~"Merci. Je te ferai savoir ma décision dès que possible."~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 3.1
  SAY #61326 /* ~"Bien. Alors vas-y et décide-toi. Tu auras qu'à avertir l'un ou l'autre."~ */
  IF ~~ THEN REPLY #61360 /* ~"D'accord. Au revoir."~ */ EXIT
END

IF ~  Global("Mediate","GLOBAL",5)
~ THEN BEGIN 6 // from:
  SAY #61327 /* ~"Tu t'es décidé, maintenant ?"~ */
  IF ~  PartyHasItem("KestLeg")
PartyHasItem("CrumLeg")
~ THEN REPLY #61361 /* ~"Je me suis prononcé en faveur de ton frère. Après avoir lu les testaments, il m'apparaît qu'il doit recevoir la totalité de l'héritage."~ */ DO ~TakePartyItemNum("KestLeg",1)
TakePartyItemNum("CrumLeg",1)
SetGlobal("Mediate","GLOBAL",6)
AddexperienceParty(131250)
~ GOTO 12
  IF ~  PartyHasItem("KestLeg")
PartyHasItem("CrumLeg")
~ THEN REPLY #61362 /* ~"J'ai décidé que tu devais être propriétaire de la distillerie et recevoir l'argent de ton père. Il est évident que tu es dans ton bon droit."~ */ DO ~TakePartyItemNum("KestLeg",1)
TakePartyItemNum("CrumLeg",1)
SetGlobal("Mediate","GLOBAL",7)
AddexperienceParty(131250)
~ GOTO 13
  IF ~  PartyHasItem("KestLeg")
PartyHasItem("CrumLeg")
~ THEN REPLY #61363 /* ~"Vous devriez vous répartir l'argent des deux affaires. À l'évidence, c'est ce que votre père aurait voulu."~ */ DO ~TakePartyItemNum("KestLeg",1)
TakePartyItemNum("CrumLeg",1)
SetGlobal("Mediate","GLOBAL",8)
AddexperienceParty(150000)
~ GOTO 14
  IF ~~ THEN REPLY #61364 /* ~"Aucun de vous ne mérite l'héritage. Je vais le donner à quelqu'un qui fera bon usage de l'argent. Au revoir."~ */ DO ~SetGlobal("Mediate","GLOBAL",9)
IncrementGlobalOnceEx("GLOBALEvil_Mediate_1","GLOBALGood",-1)
~ GOTO 15
  IF ~~ THEN REPLY #61365 /* ~"Pas encore. Mais j'aimerais jeter un œil à tes marchandises."~ */ DO ~StartStore("Crumple1",Protagonist)
~ EXIT
  IF ~~ THEN REPLY #61366 /* ~"Pas encore. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 7 // from: 0.1
  SAY #61328 /* ~"C'est une forge, idiot. Tu veux quelque chose ou pas ?"~ */
  IF ~  Global("Mediate","GLOBAL",2)
~ THEN REPLY #61367 /* ~"Je viens de la part de ton frère. Une histoire de dettes entre vous…"~ */ GOTO 9
  IF ~  Global("Mediate","GLOBAL",1)
~ THEN REPLY #61368 /* ~"Il paraît que tu as un problème avec ton frère. J'aimerais apporter mon aide."~ */ GOTO 9
  IF ~~ THEN REPLY #61369 /* ~"J'aimerais voir ce que tu as à vendre."~ */ DO ~StartStore("Crumple1",Protagonist)
~ EXIT
  IF ~~ THEN REPLY #61370 /* ~"Tu as entendu dire qu'il y avait un deva ici, à Maudith ?"~ */ GOTO 8
  IF ~~ THEN REPLY #61371 /* ~"Non. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 8 // from: 0.2 1.2 7.3
  SAY #61329 /* ~"Un quoi ? Un deva ? C'est pas un ange ? Non, on en a pas ici." Un temps. "Tu veux quelque chose de moi ?"~ */
  IF ~  Global("Mediate","GLOBAL",2)
~ THEN REPLY #61372 /* ~"Je viens de la part de ton frère. Une histoire de dettes entre vous…"~ */ GOTO 9
  IF ~  Global("Mediate","GLOBAL",1)
~ THEN REPLY #61373 /* ~"Il paraît que tu as un problème avec ton frère. J'aimerais apporter mon aide."~ */ GOTO 9
  IF ~~ THEN REPLY #61374 /* ~"J'aimerais voir ce que tu as à vendre."~ */ DO ~StartStore("Crumple1",Protagonist)
~ EXIT
  IF ~  False()
~ THEN REPLY #61375 /* ~"Il paraît que tu as un problème avec ton frère. J'aimerais apporter mon aide."~ */ EXIT
  IF ~~ THEN REPLY #67886 /* ~"Merci de m'avoir accordé quelques instants. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 9 // from: 1.0 1.1 2.0 2.1 7.0 7.1 8.0 8.1
  SAY #61330 /* ~"Ah oui, hein ? Toute la ville parle peut-être de mon affaire avec mon cadet ? Mon rat de bibliothèque de frère répand toutes sortes de rumeurs sur moi ? Tout le monde se fout de moi parce que je suis pas instruit ? Les plans se liguent contre moi !" Il brandit le poing face au ciel.~ */
  IF ~  !Global("Mediate","GLOBAL",2)
~ THEN REPLY #61376 /* ~"En fait, je veux résoudre le problème."~ */ DO ~SetGlobal("Mediate","GLOBAL",3)
~ GOTO 10
  IF ~  Global("Mediate","GLOBAL",2)
~ THEN REPLY #66570 /* ~"En fait, je veux résoudre le problème."~ */ DO ~SetGlobal("Mediate","GLOBAL",4)
~ GOTO 10
END

IF ~~ THEN BEGIN 10 // from: 9.0 9.1
  SAY #61331 /* ~Il te regarde d'un air rusé. "Voilà toute l'histoire. Notre père était un vieux salaud azimuté, mais riche. À sa mort, il nous a laissé sa forge et sa distillerie, mais mon frère veut me priver de ma part sur la distillerie, qui rapporte plus, et j'essaie de la récupérer. J'ai un testament pour prouver mon bon droit, mais je m'y connais mal et je fais confiance à personne en ville. Si tu m'aides, je te donnerai un peu de jonc et j'accepterai ta décision."~ */
  IF ~  !PartyHasItem("CrumLeg")
~ THEN REPLY #61377 /* ~"D'accord. Je veux étudier ton testament."~ */ DO ~GiveItem("CrumLeg",Protagonist)
~ JOURNAL #61381 /* ~J'ai accepté d'aider le forgeron, qui est opposé à son frère distillateur au sujet de l'héritage que leur a légué leur père.~ */ GOTO 11
  IF ~  False()
~ THEN REPLY #61378 /* ~"D'accord. Je vais parler à ton frère. Au revoir."~ */ JOURNAL #61381 /* ~J'ai accepté d'aider le forgeron, qui est opposé à son frère distillateur au sujet de l'héritage que leur a légué leur père.~ */ EXIT
END

IF ~~ THEN BEGIN 11 // from: 10.0
  SAY #61332 /* ~"Bon, d'accord. Je suppose que tu dois l'étudier pour prendre ta décision." Il te tend un bout de papier froissé.~ */
  IF ~~ THEN REPLY #61379 /* ~"Merci. Je te tiendrai au courant."~ */ EXIT
END

IF ~~ THEN BEGIN 12 // from: 6.0
  SAY #61333 /* ~"TOUT ? Rien que pour lui ?" Il baisse la tête. "Je vais devoir travailler deux fois plus, alors. Sois maudit, étranger, sale tricheur ! Si t'as besoin de ma forge, tu peux revenir… mais tu vas payer plus cher que n'importe qui en ville."~ */
  IF ~~ THEN REPLY #61380 /* ~"Je m'en souviendrai."~ */ JOURNAL #61384 /* ~J'ai réglé le problème de l'héritage en faveur du distillateur.~ */ EXIT
END

IF ~~ THEN BEGIN 13 // from: 3.2 6.1
  SAY #61334 /* ~"Tout ?" Ses yeux se mettent à briller. "Tout ?" Il danse sur place et te serre la main. "Si t'as besoin d'un bon boulot, tu viens ici quand tu veux, l'ami ! Là, je crois que c'est le moment de se biber un bon coup !"~ */
  IF ~~ THEN REPLY #61382 /* ~"Alors, au revoir."~ */ JOURNAL #61383 /* ~J'ai réglé le problème de l'héritage en faveur du forgeron, qui m'a dit qu'il m'offrirait des réductions.~ */ EXIT
END

IF ~~ THEN BEGIN 14 // from: 6.2
  SAY #61335 /* ~"Tu veux dire partager les bénéfices des deux affaires, hein ? Dans ce cas, je suis d'accord. Tu m'as bien traité, l'ami. Si t'as besoin d'un bon boulot, tu viens ici quand tu veux."~ */
  IF ~~ THEN REPLY #61385 /* ~"D'accord. Au revoir."~ */ JOURNAL #61386 /* ~J'ai réglé le problème de l'héritage en disant que les deux frères devaient tout se partager à parts égales.~ */ EXIT
END

IF ~~ THEN BEGIN 15 // from: 6.3
  SAY #61336 /* ~"QUOI ? Sale voleur ! Sors de ma forge ! DEHORS !"~ */
  IF ~~ THEN REPLY #61387 /* ~"Au revoir."~ */ JOURNAL #61388 /* ~J'ai réglé le problème du testament en ne prenant parti pour aucun des deux frères. Ils ne méritent pas cet argent, ni l'un ni l'autre.~ */ EXIT
END

IF ~  Global("Mediate","GLOBAL",7)
~ THEN BEGIN 16 // from:
  SAY #61337 /* ~"Te revoilà, hein ? T'as besoin d'un travail ?"~ */
  IF ~~ THEN REPLY #61389 /* ~"Voyons ce que tu as…"~ */ DO ~StartStore("Crumple2",Protagonist)
~ EXIT
  IF ~~ THEN REPLY #61390 /* ~"Non, merci. Au revoir."~ */ EXIT
END

IF ~  Global("Mediate","GLOBAL",8)
~ THEN BEGIN 17 // from:
  SAY #61338 /* ~"Te revoilà, hein ? Tu m'as bien traité, je vais tâcher de faire pareil."~ */
  IF ~~ THEN REPLY #61391 /* ~"Voyons ce que tu as…"~ */ DO ~StartStore("Crumple2",Protagonist)
~ EXIT
  IF ~~ THEN REPLY #61392 /* ~"Non, merci. Au revoir."~ */ EXIT
END

IF ~  Global("Mediate","GLOBAL",6)
~ THEN BEGIN 18 // from:
  SAY #61339 /* ~"Tu reviens voir celui que t'as ruiné, hein ? Qu'est-ce que tu veux ?"~ */
  IF ~~ THEN REPLY #61342 /* ~"Voyons ce que tu as."~ */ DO ~StartStore("Crumple3",Protagonist)
~ EXIT
  IF ~~ THEN REPLY #61343 /* ~"Rien. Au revoir."~ */ EXIT
END

IF ~  GlobalGT("Mediate","GLOBAL",8)
~ THEN BEGIN 19 // from:
  SAY #61340 /* ~"Sors de ma boutique, espèce de fourbe. On ne fera pas affaire aujourd'hui."~ */
  IF ~~ THEN REPLY #61341 /* ~"Bien. Au revoir."~ */ EXIT
END
