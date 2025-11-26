// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DCSTGENM.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\fr_FR\dialog.tlk
// dialogF  : (none)

BEGIN ~DCSTGENM~
//////////////////////////////////////////////////
// WARNING: this file contains non-trivial WEIGHTs
//////////////////////////////////////////////////

IF WEIGHT #2 /* Triggers after states #: 17 18 even though they appear after this state */
~  RandomNum(2,0)
~ THEN BEGIN 0 // from:
  SAY #64432 /* ~Tu vois un homme à l'air inquiet. Il te regarde approcher et fronce les sourcils, .~ */
  IF ~~ THEN REPLY #64433 /* ~"Bonjour."~ */ GOTO 1
  IF ~~ THEN REPLY #64434 /* ~Ignore-le.~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #64435 /* ~Il soupire et se tourne vers toi. "Bonjour à toi… Que veux-tu ?"~ */
  IF ~~ THEN REPLY #64436 /* ~"J'ai quelques questions…"~ */ GOTO 2
  IF ~~ THEN REPLY #64437 /* ~"Rien, peu importe."~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.0
  SAY #64438 /* ~Il fronce les sourcils. "Questions… Bâcle ça, bige. Va caguer."~ */
  IF ~~ THEN REPLY #64439 /* ~"Cela ne prendra que quelques instants de votre temps…"~ */ GOTO 3
  IF ~~ THEN REPLY #64440 /* ~"Alors, au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 2.0
  SAY #64441 /* ~"Je n'ai pas un moment à t'accorder." Il porte la main à sa ceinture et en tire une dague. "Que dirais-tu d'un peu d'acier baatorien à la place ?"~ */
  IF ~~ THEN REPLY #64442 /* ~Attaque-le.~ */ DO ~Enemy()
ForceAttack(Protagonist,Myself)
~ EXIT
  IF ~~ THEN REPLY #64443 /* ~Pars.~ */ EXIT
END

IF WEIGHT #3 /* Triggers after states #: 17 18 even though they appear after this state */
~  RandomNum(2,1)
~ THEN BEGIN 4 // from:
  SAY #64444 /* ~Tu vois un jeune homme. Il te regarde approcher et fronce les sourcils.~ */
  IF ~~ THEN REPLY #64445 /* ~"Bonjour."~ */ GOTO 5
  IF ~~ THEN REPLY #64446 /* ~Ignore-le.~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 4.0
  SAY #64447 /* ~Il te sourit mais semble nerveux. "Oui, bonjour et tout ça… Tu veux quelque chose ?"~ */
  IF ~~ THEN REPLY #64448 /* ~"J'ai quelques questions…"~ */ GOTO 6
  IF ~~ THEN REPLY #64449 /* ~"Non, peu importe. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 6 // from: 5.0 7.0 8.0 9.1 10.0 11.0
  SAY #64450 /* ~Il fronce les sourcils et soupire. "Si tu le dois."~ */
  IF ~~ THEN REPLY #64451 /* ~"Qui es-tu ?"~ */ GOTO 7
  IF ~~ THEN REPLY #64452 /* ~"Qu'est-ce que tu fais ?"~ */ GOTO 8
  IF ~~ THEN REPLY #64453 /* ~"Que peux-tu me dire sur Maudith ?"~ */ GOTO 9
  IF ~~ THEN REPLY #64454 /* ~"Sais-tu quelque chose à propos d'un deva ?"~ */ GOTO 11
  IF ~~ THEN REPLY #64455 /* ~"Je dois m'en aller, au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 7 // from: 6.0
  SAY #64456 /* ~"Qui je suis n'a aucune importance. Contente-toi de me poser tes questions. " Il te jette un regard impatient.~ */
  IF ~~ THEN REPLY #64457 /* ~"Très bien. J'ai des questions…"~ */ GOTO 6
  IF ~~ THEN REPLY #64458 /* ~"Je dois m'en aller, au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 8 // from: 6.1
  SAY #64459 /* ~"Ce que je fais ne te regardes pas. Contente-toi de me poser tes questions."~ */
  IF ~~ THEN REPLY #64460 /* ~"Très bien. J'ai des questions…"~ */ GOTO 6
  IF ~~ THEN REPLY #64461 /* ~"Je dois m'en aller, au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 9 // from: 6.2
  SAY #64462 /* ~"Maudith…" Il marque une pause et jette un coup d'œil alentour. "Ne fais confiance à personne. C'est tout ce que tu dois savoir sur Maudith pour survivre. Ne fais confiance à personne…"~ */
  IF ~~ THEN REPLY #64463 /* ~"Es-tu inclus dans le lot ?"~ */ GOTO 10
  IF ~~ THEN REPLY #64464 /* ~"Je vois. J'ai d'autres questions…"~ */ GOTO 6
  IF ~~ THEN REPLY #64465 /* ~"Je dois m'en aller, au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 10 // from: 9.0
  SAY #64466 /* ~Il sourit. "Absolument…"~ */
  IF ~~ THEN REPLY #64467 /* ~"Je vois. J'ai d'autres questions…"~ */ GOTO 6
  IF ~~ THEN REPLY #64468 /* ~"Je dois m'en aller, au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 11 // from: 6.3
  SAY #64469 /* ~Tout en réfléchissant, il fronce les sourcils. "Non, je ne sais rien à propos d'un Deva." Il hausse les épaules. "Demande au bureau administratif, au centre de la ville."~ */
  IF ~~ THEN REPLY #64470 /* ~"Je le ferai. J'ai d'autres questions…"~ */ GOTO 6
  IF ~~ THEN REPLY #64471 /* ~"Merci, au revoir."~ */ EXIT
END

IF WEIGHT #4 /* Triggers after states #: 17 18 even though they appear after this state */
~  RandomNum(2,2)
~ THEN BEGIN 12 // from:
  SAY #64472 /* ~Tu vois un homme qui a l'air en colère. Il te regarde approcher et fronce les sourcils.~ */
  IF ~~ THEN REPLY #64473 /* ~"Bonjour."~ */ GOTO 13
  IF ~~ THEN REPLY #64474 /* ~Ignore-le.~ */ EXIT
END

IF ~~ THEN BEGIN 13 // from: 12.0
  SAY #64475 /* ~Il te regarde avec méfiance. "Euh… Bonjour. Quoi que tu veuilles, je ne l'ai pas. Quoi que tu veuilles vendre, je n'en veux pas. Maintenant, laisse-moi." Il te dévisage.~ */
  IF ~~ THEN REPLY #64476 /* ~"J'ai quelques questions…"~ */ GOTO 14
  IF ~~ THEN REPLY #64477 /* ~"Très bien, au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 14 // from: 13.0
  SAY #64478 /* ~"Hmm… Comme c'est charmant. Tu as des questions. Eh bien, quoi qu'il en soit, je ne veux pas que tu me déranges. File d'ici." Il se renfrogne.~ */
  IF ~~ THEN REPLY #64479 /* ~"Ça ne te prendra qu'un instant."~ */ GOTO 15
  IF ~~ THEN REPLY #64480 /* ~"Très bien, au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 15 // from: 14.0
  SAY #64481 /* ~Il soupire et fait un geste d'exaspération. "D'accord, apparemment, tu ne comprends pas quand je dis *non* poliment… Dois-je te le faire comprendre d'une manière un peu moins courtoise ?"~ */
  IF ~~ THEN REPLY #64482 /* ~"Oui, faites donc."~ */ GOTO 16
  IF ~~ THEN REPLY #64483 /* ~"Non, au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 16 // from: 15.0
  SAY #64484 /* ~Il sourit. "Très bien… Tu sais où tu peux te les mettre tes questions !" Il t'adresse un geste obscène. "Va caguer, bige !"~ */
  IF ~~ THEN REPLY #64485 /* ~"Très bien, au revoir."~ */ EXIT
END

IF WEIGHT #1 /* Triggers after states #: 18 even though they appear after this state */
~  NumTimesTalkedToGT(0)
~ THEN BEGIN 17 // from:
  SAY #64486 /* ~Tu vois un homme qui a l'air de s'ennuyer. Il te regarde approcher et fronce les sourcils. "J'en ai assez de toi, fous le camp…" Il se détourne et t'ignore.~ */
  IF ~~ THEN REPLY #64487 /* ~Pars.~ */ EXIT
END

IF WEIGHT #0 ~  Global("Current_Area","GLOBAL",702)
~ THEN BEGIN 18 // from:
  SAY #64488 /* ~Ces personnes ne semblent pas du tout apprécier d'être en prison. Quoi que tu tentes, tu ne réussis à obtenir aucune réponse d'elles.~ */
  IF ~~ THEN REPLY #64489 /* ~Pars.~ */ EXIT
END
