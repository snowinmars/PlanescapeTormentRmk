// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DBRASKEN.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\fr_FR\dialog.tlk
// dialogF  : (none)

BEGIN ~DBRASKEN~
//////////////////////////////////////////////////
// WARNING: this file contains non-trivial WEIGHTs
//////////////////////////////////////////////////

IF WEIGHT #5 /* Triggers after states #: 2 3 14 7 5 even though they appear after this state */
~  NumTimesTalkedTo(0)
~ THEN BEGIN 0 // from:
  SAY #45442 /* ~"Qu'est-ce que tu fiches chez moi, au nom des Abysses ?" demande Brasken d'une voix de tonnerre. "Va-t'en si tu ne veux pas que je te rende plus laid que tu ne l'es déjà."~ */
  IF ~  Global("FedEx","Global",2)
PartyHasItem("DBox")
~ THEN REPLY #45443 /* ~"On m'a demandé de te remettre cette boîte."~ */ GOTO 8
  IF ~~ THEN REPLY #45445 /* ~"Au revoir."~ */ EXIT
END

IF WEIGHT #6 /* Triggers after states #: 2 3 14 7 5 even though they appear after this state */
~  NumTimesTalkedToGT(0)
~ THEN BEGIN 1 // from:
  SAY #45446 /* ~"Quoi ? Encore toi ? Si tu n'as pas une bonne raison d'être ici, je te conseille de déguerpir sans attendre."~ */
  IF ~  Global("FedEx","Global",2)
PartyHasItem("DBox")
~ THEN REPLY #45447 /* ~"On m'a demandé de te livrer cette boîte."~ */ GOTO 8
  IF ~~ THEN REPLY #45448 /* ~"Désolé, j'ai dû me tromper d'adresse. Au revoir."~ */ EXIT
END

IF WEIGHT #4 /* Triggers after states #: 3 14 7 5 even though they appear after this state */
~  GlobalGT("FedEx","Global",2)
~ THEN BEGIN 2 // from:
  SAY #45449 /* ~"Disparais, espèce de crétin ! Je t'ai déjà dit tout de que je savais sur la Boîte de Moridor."~ */
  IF ~~ THEN REPLY #45450 /* ~"Au revoir."~ */ EXIT
END

IF WEIGHT #3 /* Triggers after states #: 14 7 5 even though they appear after this state */
~  GlobalGT("Demonbox","Global",2)
~ THEN BEGIN 3 // from:
  SAY #45451 /* ~"Dans la Ruche, une rumeur dit qu'un matois aurait tué le démon qui était emprisonné dans la Boîte de Moridor. On dit que la bataille aurait laissé de terribles cicatrices sur tout le corps du pauvre type. Ce serait pas toi, des fois ?"~ */
  IF ~~ THEN REPLY #45452 /* ~"Bien sûr. Et qui d'autre aurait pu le faire, à ton avis ?"~ */ GOTO 4
END

IF ~~ THEN BEGIN 4 // from: 3.0
  SAY #45453 /* ~"Brave et impudent, avec ça ! Ça me plaît ! Tu deviendras une légende quand on commencera à raconter tes exploits. Permets-moi d'être le premier à te féliciter. Allons, viens boire un verre avec moi ; tu me parleras de tes hauts faits d'armes."~ */
  IF ~~ THEN REPLY #45454 /* ~"Ce sera un plaisir que de boire une ou deux chopes en ta compagnie."~ */ DO ~SetGlobal("Drunk","Global",2)
FadeToColor([20.0],0)
Wait(1)
SetAnimState(Myself,ANIM_MIMEDIE)
RestPartyEx(0,10,FALSE)
FadeFromColor([20.0],0)
~ GOTO 6
  IF ~~ THEN REPLY #45455 /* ~"Une autre fois, peut-être. Je suis très occupé. Au revoir."~ */ DO ~SetGlobal("Drunk","Global",1)
~ EXIT
END

IF WEIGHT #0 ~  Global("Drunk","Global",1)
~ THEN BEGIN 5 // from:
  SAY #45456 /* ~"Le matois légendaire est de retour. Alors, ce verre, ça te dit ? J'aimerais beaucoup que tu me racontes tes exploits."~ */
  IF ~~ THEN REPLY #45457 /* ~"Ce sera un plaisir que de boire une ou deux chopes en ta compagnie."~ */ DO ~SetGlobal("Drunk","Global",2)
FadeToColor([20.0],0)
Wait(1)
SetAnimState(Myself,ANIM_MIMEDIE)
RestPartyEx(0,10,FALSE)
FadeFromColor([20.0],0)
~ GOTO 6
  IF ~~ THEN REPLY #45458 /* ~"Une autre fois, peut-être. Je suis très occupé. Au revoir."~ */ DO ~SetGlobal("Drunk","Global",1)
~ EXIT
END

IF ~~ THEN BEGIN 6 // from: 4.0 5.0 14.0
  SAY #45459 /* ~Après quelques chopes, deux ou trois chansons et un échange de plaisanteries, tu t'aperçois que ce Brasken te plaît. En fait, tout le monde te plaît, en ce moment. Bien vite, Brasken s'effondre, ivre mort. Il est temps d'y aller.~ */
  IF ~~ THEN REPLY #45460 /* ~"Au revoir."~ */ EXIT
END

IF WEIGHT #1 ~  Global("Drunk","Global",2)
~ THEN BEGIN 7 // from:
  SAY #45461 /* ~"Oh, ma pauvre tête ! Je ne m'en remettrai jamais !"~ */
  IF ~~ THEN REPLY #45462 /* ~Laisse Brasken se morfondre seul.~ */ DO ~SetAnimState(Myself,ANIM_MIMEDIE)
~ EXIT
END

IF ~~ THEN BEGIN 8 // from: 0.0 1.0
  SAY #45463 /* ~"Pourquoi ne l'as-tu pas dit plus tôt ? Donne-la-moi, comme ça, tu pourras y aller." Il tend la main, manifestement impatient, puis a l'air amusé lorsque tu sors la boîte. "Holà ! Pas de risque que je me fasse avoir une seconde fois. Range ce truc et va-t'en."~ */
  IF ~~ THEN REPLY #45464 /* ~"Je ne comprends pas ; pourquoi personne ne veut de cette boîte ? C'est d'abord Ku'atraa qui l'a refusée, et maintenant, toi…"~ */ GOTO 9
END

IF ~~ THEN BEGIN 9 // from: 8.0
  SAY #45465 /* ~"Ku'atraa, tu dis ?" Brasken part d'un grand éclat de rire. "C'est le type qui m'a acheté la boîte. Il croyait m'avoir arnaqué, ce jour-là. Sans doute qu'il pensait que la gemme valait à elle seule plus que ce qu'il avait payé. Quand le pauvre type a compris, il était déjà trop tard."~ */
  IF ~~ THEN REPLY #45466 /* ~"Mais qu'est-ce qu'elle a de si terrible, cette boîte ?"~ */ GOTO 10
  IF ~~ THEN REPLY #46623 /* ~"Je me moque de l'histoire de ce truc ! Dis-moi seulement comment je peux m'en débarrasser !"~ */ GOTO 13
END

IF ~~ THEN BEGIN 10 // from: 9.0
  SAY #45467 /* ~"Tu veux dire que tu ignores tout de cette boîte ? J'imagine que je peux sans risque te dire ce que je sais. Tout d'abord, pour que tu n'ailles pas tenter un truc idiot, je te signale que la malédiction n'affecte que le propriétaire de la boîte et que, pour être considéré comme tel, il faut l'avoir acceptée de son plein gré."~ */
  IF ~~ THEN REPLY #45468 /* ~"Autrement dit, plus la peine de penser à l'abandonner sur le bas-côté… Bon, alors, qu'est-ce qu'il y a dedans ?"~ */ GOTO 11
END

IF ~~ THEN BEGIN 11 // from: 10.0
  SAY #45469 /* ~"Bonne question. De mémoire d'homme, cette boîte s'est toujours trouvée dans la Ruche. De nombreuses rumeurs y font référence. Tu t'en doutes, depuis le temps, on s'est peu à peu éloigné de la vérité."~ */
  IF ~~ THEN REPLY #45470 /* ~"Continue."~ */ GOTO 12
END

IF ~~ THEN BEGIN 12 // from: 11.0
  SAY #45471 /* ~"J'ai entendu beaucoup d'histoires au sujet de cette boîte, mais toutes ont un thème récurrent. Cet objet maudit a pour nom 'Boîte de Moridor' et son propriétaire mourra si lui ou quelqu'un d'autre soulève le couvercle. Quant à savoir ce qu'elle contient… certains prétendent qu'il s'agit d'un dragon, d'autres que c'est l'esprit maléfique de Moridor. Personnellement, je n'en sais rien, mais il suffit de la regarder pour comprendre que son occupant est un être malfaisant et qu'il faudrait être stupide pour vouloir l'ouvrir."~ */
  IF ~~ THEN REPLY #45472 /* ~"Qu'est-ce que je suis censé faire de ça ?"~ */ GOTO 13
END

IF ~~ THEN BEGIN 13 // from: 9.1 12.0
  SAY #45473 /* ~"Je te conseille d'aller voir Shilandra, dans le quartier nord-est de la Ruche. C'est à elle que j'ai 'gagné' la boîte. Qui sait, peut-être qu'elle pourra t'aider à t'en débarrasser. À moins que tu ne trouves un pauvre bige à qui la refiler en chemin. À toi de voir. Bonne chance."~ */
  IF ~~ THEN REPLY #45474 /* ~"Au revoir."~ */ DO ~SetGlobal("FedEx","Global",3)
SetGlobal("Beta","Global",2)
SetGlobal("Delta","Global",1)
AddexperienceParty(250)
~ JOURNAL #60387 /* ~J'ai beaucoup appris en discutant avec Brasken. Il semblerait que je sois le propriétaire malheureux d'une boîte maudite. Comme si je n'avais pas assez d'ennuis ! L'objet en question a désormais un nom. On l'appelle la Boîte de Moridor, et il semblerait que quiconque s'en empare de son plein gré est voué à une mort certaine si jamais la boîte vient à être ouverte. Quant à la nature de son contenu, cela reste un mystère. Brasken m'a suggéré d'aller rendre visite à Shilandra. Je la trouverai près de la Morgue, dans le quartier nord-est de la Ruche. Suis-je condamné à chercher éternellement les précédents propriétaires de cette boîte ?~ */ EXIT
END

IF WEIGHT #2 ~  GlobalGT("FedEx","Global",9)
~ THEN BEGIN 14 // from:
  SAY #45475 /* ~"Tout le monde est au courant que tu as mis un terme à la malédiction de la Boîte de Moridor. Félicitations ! Je dois te dire que j'ai du mal à croire qu'un bige aussi moche que toi ait pu y parvenir, mais bon… comprends-moi bien : je te trouve toujours aussi laid qu'un cul de baku, hein… mais au moins, je respecte ce que tu as accompli. Allez, viens boire un verre avec moi ; tu pourras me raconter."~ */
  IF ~~ THEN REPLY #45476 /* ~"Ce sera un plaisir que de boire une ou deux chopes en ta compagnie."~ */ DO ~SetGlobal("Drunk","Global",2)
FadeToColor([20.0],0)
Wait(3)
SetAnimState(Myself,ANIM_MIMEDIE)
RestPartyEx(0,10,FALSE)
FadeFromColor([20.0],0)
~ GOTO 6
  IF ~~ THEN REPLY #45477 /* ~"Une autre fois, peut-être. Je suis très occupé. Au revoir."~ */ DO ~SetGlobal("Drunk","Global",1)
~ EXIT
END
