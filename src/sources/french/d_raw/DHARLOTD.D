// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DHARLOTD.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\fr_FR\dialog.tlk
// dialogF  : (none)

BEGIN ~DHARLOTD~

IF ~  True()
~ THEN BEGIN 0 // from:
  SAY #1857 /* ~La femme te bouscule, puis fait un pas en arrière et te regarde avec un demi-sourire. Elle dégage une odeur de distillerie.~ */
  IF ~~ THEN REPLY #1893 /* ~"Euh… Bonjour."~ */ GOTO 1
  IF ~~ THEN REPLY #1894 /* ~"Regarde où tu mets les pieds, femme !"~ */ GOTO 1
  IF ~  !NearbyDialog("DAnnah")
CheckStatLT(Protagonist,13,WIS)
CheckStatLT(Protagonist,10,PICKPOCKET)
PartyGoldGT(0)
~ THEN REPLY #1895 /* ~"Au revoir."~ */ DO ~TakePartyGold(5)
~ EXIT
  IF ~  CheckStatGT(Protagonist,12,WIS)
CheckStatLT(Protagonist,10,PICKPOCKET)
PartyGoldGT(0)
~ THEN REPLY #1896 /* ~"Au revoir."~ */ DO ~TakePartyGold(5)
~ GOTO 10
  IF ~  CheckStatGT(Protagonist,9,PICKPOCKET)
PartyGoldGT(0)
~ THEN REPLY #1897 /* ~"Au revoir."~ */ DO ~TakePartyGold(5)
~ GOTO 16
  IF ~  CheckStatLT(Protagonist,13,WIS)
CheckStatLT(Protagonist,10,PICKPOCKET)
NearbyDialog("DAnnah")
PartyGoldGT(0)
~ THEN REPLY #1898 /* ~"Au revoir."~ */ DO ~TakePartyGold(5)
~ EXTERN ~DANNAH~ 54
  IF ~  PartyGold(0)
~ THEN REPLY #61582 /* ~"Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0 0.1
  SAY #1858 /* ~"Bon-*jooour*…" Elle te fait signe, puis se met à glousser. "Bon-jooour, gros matois…" Elle se remet à rire.~ */
  IF ~~ THEN REPLY #7486 /* ~"Ça va ?"~ */ GOTO 2
  IF ~  !NearbyDialog("DAnnah")
CheckStatLT(Protagonist,13,WIS)
CheckStatLT(Protagonist,10,PICKPOCKET)
PartyGoldGT(0)
~ THEN REPLY #7487 /* ~"Au revoir."~ */ DO ~TakePartyGold(5)
~ EXIT
  IF ~  CheckStatGT(Protagonist,12,WIS)
CheckStatLT(Protagonist,10,PICKPOCKET)
PartyGoldGT(0)
~ THEN REPLY #7488 /* ~"Au revoir."~ */ DO ~TakePartyGold(5)
~ GOTO 10
  IF ~  CheckStatGT(Protagonist,9,PICKPOCKET)
PartyGoldGT(0)
~ THEN REPLY #7489 /* ~"Au revoir."~ */ DO ~TakePartyGold(5)
~ GOTO 16
  IF ~  CheckStatLT(Protagonist,13,WIS)
CheckStatLT(Protagonist,10,PICKPOCKET)
NearbyDialog("DAnnah")
PartyGoldGT(0)
~ THEN REPLY #7490 /* ~"Au revoir."~ */ DO ~TakePartyGold(5)
~ EXTERN ~DANNAH~ 54
  IF ~  PartyGold(0)
~ THEN REPLY #61583 /* ~"Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.0
  SAY #1859 /* ~Elle plisse les yeux, met ses mains sur ses hanches et se penche suffisamment pour que tu aies une vue plongeante sur sa poitrine. "Y'a quelque chose qui *cloche*, matois ?! Hein ?" Elle se remue, provoquant une série de secousses, puis se met de nouveau à rire. "T'as l'air d'avoir b'soin qu'on s'occupe de toi !" Elle accompagne ses paroles de petits coups dans ta poitrine avec le doigt.~ */
  IF ~~ THEN REPLY #7491 /* ~"C'est une proposition ?"~ */ GOTO 3
  IF ~~ THEN REPLY #7492 /* ~"Ouais, bon. Écoute, tu peux peut-être m'aider. J'ai des questions…"~ */ GOTO 6
  IF ~  !NearbyDialog("DAnnah")
CheckStatLT(Protagonist,13,WIS)
CheckStatLT(Protagonist,10,PICKPOCKET)
PartyGoldGT(0)
~ THEN REPLY #7493 /* ~"Au revoir."~ */ DO ~TakePartyGold(5)
~ EXIT
  IF ~  CheckStatGT(Protagonist,12,WIS)
CheckStatLT(Protagonist,10,PICKPOCKET)
PartyGoldGT(0)
~ THEN REPLY #7494 /* ~"Au revoir."~ */ DO ~TakePartyGold(5)
~ GOTO 10
  IF ~  CheckStatGT(Protagonist,9,PICKPOCKET)
PartyGoldGT(0)
~ THEN REPLY #7495 /* ~"Au revoir."~ */ DO ~TakePartyGold(5)
~ GOTO 16
  IF ~  CheckStatLT(Protagonist,13,WIS)
CheckStatLT(Protagonist,10,PICKPOCKET)
NearbyDialog("DAnnah")
PartyGoldGT(0)
~ THEN REPLY #7496 /* ~"Au revoir."~ */ DO ~TakePartyGold(5)
~ EXTERN ~DANNAH~ 54
  IF ~  PartyGold(0)
~ THEN REPLY #61584 /* ~"Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 2.0
  SAY #1860 /* ~Elle te regarde d'un air moqueur. "Peut-être, si ton offre est correcte." Elle se presse contre toi. "T'es partant alors ?"~ */
  IF ~~ THEN REPLY #7497 /* ~"Non, merci. Mais j'ai des questions…"~ */ GOTO 6
  IF ~~ THEN REPLY #7498 /* ~"Non, merci."~ */ GOTO 4
  IF ~~ THEN REPLY #7499 /* ~"Bien sûr."~ */ GOTO 5
  IF ~  !NearbyDialog("DAnnah")
CheckStatLT(Protagonist,13,WIS)
CheckStatLT(Protagonist,10,PICKPOCKET)
PartyGoldGT(0)
~ THEN REPLY #7500 /* ~"Au revoir."~ */ DO ~TakePartyGold(5)
~ EXIT
  IF ~  CheckStatGT(Protagonist,12,WIS)
CheckStatLT(Protagonist,10,PICKPOCKET)
PartyGoldGT(0)
~ THEN REPLY #7501 /* ~"Au revoir."~ */ DO ~TakePartyGold(5)
~ GOTO 10
  IF ~  CheckStatGT(Protagonist,9,PICKPOCKET)
PartyGoldGT(0)
~ THEN REPLY #7502 /* ~"Au revoir."~ */ DO ~TakePartyGold(5)
~ GOTO 16
  IF ~  CheckStatLT(Protagonist,13,WIS)
CheckStatLT(Protagonist,10,PICKPOCKET)
NearbyDialog("DAnnah")
PartyGoldGT(0)
~ THEN REPLY #7503 /* ~"Au revoir."~ */ DO ~TakePartyGold(5)
~ EXTERN ~DANNAH~ 54
  IF ~  PartyGold(0)
~ THEN REPLY #61585 /* ~"Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 3.1
  SAY #1861 /* ~Elle fait la moue. "La variole soit sur toi, alors ! Essaie d'trouver mieux qu'moi, avec ta tronche."~ */
  IF ~  !NearbyDialog("DAnnah")
CheckStatLT(Protagonist,13,WIS)
CheckStatLT(Protagonist,10,PICKPOCKET)
PartyGoldGT(0)
~ THEN REPLY #7504 /* ~"Au revoir."~ */ DO ~TakePartyGold(5)
~ EXIT
  IF ~  CheckStatGT(Protagonist,12,WIS)
CheckStatLT(Protagonist,10,PICKPOCKET)
PartyGoldGT(0)
~ THEN REPLY #7505 /* ~"Au revoir."~ */ DO ~TakePartyGold(5)
~ GOTO 10
  IF ~  CheckStatGT(Protagonist,9,PICKPOCKET)
PartyGoldGT(0)
~ THEN REPLY #7506 /* ~"Au revoir."~ */ DO ~TakePartyGold(5)
~ GOTO 16
  IF ~  CheckStatLT(Protagonist,13,WIS)
CheckStatLT(Protagonist,10,PICKPOCKET)
NearbyDialog("DAnnah")
PartyGoldGT(0)
~ THEN REPLY #7507 /* ~"Au revoir."~ */ DO ~TakePartyGold(5)
~ EXTERN ~DANNAH~ 54
  IF ~  PartyGold(0)
~ THEN REPLY #61586 /* ~"Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 3.2
  SAY #1862 /* ~"D'accord." Elle t'examine de la tête aux pieds, puis semble se dégriser un peu. "Eh… nan, nan, c'est trop pour moi."~ */
  IF ~~ THEN REPLY #7508 /* ~"Bon, d'accord. J'ai des questions…"~ */ GOTO 6
  IF ~  !NearbyDialog("DAnnah")
CheckStatLT(Protagonist,13,WIS)
CheckStatLT(Protagonist,10,PICKPOCKET)
PartyGoldGT(0)
~ THEN REPLY #7509 /* ~"Je vois… Alors, au revoir."~ */ DO ~TakePartyGold(5)
~ EXIT
  IF ~  CheckStatGT(Protagonist,12,WIS)
CheckStatLT(Protagonist,10,PICKPOCKET)
PartyGoldGT(0)
~ THEN REPLY #7510 /* ~"Je vois… Alors, au revoir."~ */ DO ~TakePartyGold(5)
~ GOTO 10
  IF ~  CheckStatGT(Protagonist,9,PICKPOCKET)
PartyGoldGT(0)
~ THEN REPLY #7511 /* ~"Je vois… Alors, au revoir."~ */ DO ~TakePartyGold(5)
~ GOTO 16
  IF ~  CheckStatLT(Protagonist,13,WIS)
CheckStatLT(Protagonist,10,PICKPOCKET)
NearbyDialog("DAnnah")
PartyGoldGT(0)
~ THEN REPLY #7512 /* ~"Je vois… Alors, au revoir."~ */ DO ~TakePartyGold(5)
~ EXTERN ~DANNAH~ 54
  IF ~  PartyGold(0)
~ THEN REPLY #61587 /* ~"Je vois… Au revoir, donc."~ */ EXIT
END

IF ~~ THEN BEGIN 6 // from: 2.1 3.0 5.0
  SAY #1863 /* ~"Oh, alors comme ça, tu penses que *je* peux t'aider, *toi* ?! Eh ben, t'es du genre exigeant, dis donc ! Allez, flatte-moi encore un peu !" Elle sourit.~ */
  IF ~~ THEN REPLY #7513 /* ~"Qu'est-ce que tu peux me dire sur cette cité ?"~ */ GOTO 7
  IF ~~ THEN REPLY #7514 /* ~"Peux-tu me parler de cette zone ?"~ */ GOTO 8
  IF ~  Global("Journal","GLOBAL",0)
~ THEN REPLY #7515 /* ~"Je cherche un journal. Tu l'as vu ?"~ */ GOTO 8
  IF ~  Global("Pharod","GLOBAL",0)
~ THEN REPLY #7516 /* ~"Je cherche un certain Pharod. Sais-tu où je pourrais le trouver ?"~ */ GOTO 7
  IF ~  !NearbyDialog("DAnnah")
CheckStatLT(Protagonist,13,WIS)
CheckStatLT(Protagonist,10,PICKPOCKET)
PartyGoldGT(0)
~ THEN REPLY #7517 /* ~"Peu importe. Au revoir."~ */ DO ~TakePartyGold(5)
~ EXIT
  IF ~  CheckStatGT(Protagonist,12,WIS)
CheckStatLT(Protagonist,10,PICKPOCKET)
PartyGoldGT(0)
~ THEN REPLY #7518 /* ~"Peu importe. Au revoir."~ */ DO ~TakePartyGold(5)
~ GOTO 10
  IF ~  CheckStatGT(Protagonist,9,PICKPOCKET)
PartyGoldGT(0)
~ THEN REPLY #7519 /* ~"Peu importe. Au revoir."~ */ DO ~TakePartyGold(5)
~ GOTO 16
  IF ~  CheckStatLT(Protagonist,13,WIS)
CheckStatLT(Protagonist,10,PICKPOCKET)
NearbyDialog("DAnnah")
PartyGoldGT(0)
~ THEN REPLY #7520 /* ~"Peu importe. Au revoir."~ */ DO ~TakePartyGold(5)
~ EXTERN ~DANNAH~ 54
  IF ~  PartyGold(0)
~ THEN REPLY #61588 /* ~"Peu importe. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 7 // from: 6.0 6.3 9.0 9.3
  SAY #1864 /* ~"Ouais !" Elle rit d'un rire ivre.~ */
  IF ~~ THEN REPLY #7521 /* ~"Ouais, quoi ?"~ */ GOTO 9
  IF ~~ THEN REPLY #7522 /* ~"J'ai d'autres questions…"~ */ GOTO 9
  IF ~  !NearbyDialog("DAnnah")
CheckStatLT(Protagonist,13,WIS)
CheckStatLT(Protagonist,10,PICKPOCKET)
PartyGoldGT(0)
~ THEN REPLY #7523 /* ~"Peu importe. Au revoir."~ */ DO ~TakePartyGold(5)
~ EXIT
  IF ~  CheckStatGT(Protagonist,12,WIS)
CheckStatLT(Protagonist,10,PICKPOCKET)
PartyGoldGT(0)
~ THEN REPLY #7524 /* ~"Peu importe. Au revoir."~ */ DO ~TakePartyGold(5)
~ GOTO 10
  IF ~  CheckStatGT(Protagonist,9,PICKPOCKET)
PartyGoldGT(0)
~ THEN REPLY #7525 /* ~"Peu importe. Au revoir."~ */ DO ~TakePartyGold(5)
~ GOTO 16
  IF ~  CheckStatLT(Protagonist,13,WIS)
CheckStatLT(Protagonist,10,PICKPOCKET)
NearbyDialog("DAnnah")
PartyGoldGT(0)
~ THEN REPLY #7526 /* ~"Peu importe. Au revoir."~ */ DO ~TakePartyGold(5)
~ EXTERN ~DANNAH~ 54
  IF ~  PartyGold(0)
~ THEN REPLY #61589 /* ~"Peu importe. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 8 // from: 6.1 6.2 9.1 9.2
  SAY #1865 /* ~"Nooooon !" Ce mot semble l'amuser particulièrement et elle te tape sur la poitrine en le prononçant. "Non ! Non !"~ */
  IF ~~ THEN REPLY #7527 /* ~"Euh… J'ai d'autres questions…"~ */ GOTO 9
  IF ~  !NearbyDialog("DAnnah")
CheckStatLT(Protagonist,13,WIS)
CheckStatLT(Protagonist,10,PICKPOCKET)
PartyGoldGT(0)
~ THEN REPLY #7528 /* ~"Alors, peu importe."~ */ DO ~TakePartyGold(5)
~ EXIT
  IF ~  CheckStatGT(Protagonist,12,WIS)
CheckStatLT(Protagonist,10,PICKPOCKET)
PartyGoldGT(0)
~ THEN REPLY #7529 /* ~"Alors, peu importe."~ */ DO ~TakePartyGold(5)
~ GOTO 10
  IF ~  CheckStatGT(Protagonist,9,PICKPOCKET)
PartyGoldGT(0)
~ THEN REPLY #7530 /* ~"Alors, peu importe."~ */ DO ~TakePartyGold(5)
~ GOTO 16
  IF ~  CheckStatLT(Protagonist,13,WIS)
CheckStatLT(Protagonist,10,PICKPOCKET)
NearbyDialog("DAnnah")
PartyGoldGT(0)
~ THEN REPLY #7531 /* ~"Alors, peu importe."~ */ DO ~TakePartyGold(5)
~ EXTERN ~DANNAH~ 54
  IF ~  PartyGold(0)
~ THEN REPLY #61590 /* ~"Peu importe. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 9 // from: 7.0 7.1 8.0
  SAY #1866 /* ~"Ouiiiiiishhh ?" Elle te regarde en plissant les yeux. "Quoi ?"~ */
  IF ~~ THEN REPLY #7532 /* ~"Qu'est-ce que tu peux me dire sur cette cité ?"~ */ GOTO 7
  IF ~~ THEN REPLY #7533 /* ~"Tu peux me parler de cet endroit ?"~ */ GOTO 8
  IF ~  Global("Journal","GLOBAL",0)
~ THEN REPLY #7534 /* ~"Je cherche un journal. Tu l'aurais pas vu ?"~ */ GOTO 8
  IF ~  Global("Pharod","GLOBAL",0)
~ THEN REPLY #7535 /* ~"Je cherche un certain Pharod. Sais-tu où je pourrais le trouver ?"~ */ GOTO 7
  IF ~  !NearbyDialog("DAnnah")
CheckStatLT(Protagonist,13,WIS)
CheckStatLT(Protagonist,10,PICKPOCKET)
PartyGoldGT(0)
~ THEN REPLY #7536 /* ~"Peu importe. Au revoir."~ */ DO ~TakePartyGold(5)
~ EXIT
  IF ~  CheckStatGT(Protagonist,12,WIS)
CheckStatLT(Protagonist,10,PICKPOCKET)
PartyGoldGT(0)
~ THEN REPLY #7537 /* ~"Peu importe. Au revoir."~ */ DO ~TakePartyGold(5)
~ GOTO 10
  IF ~  CheckStatGT(Protagonist,9,PICKPOCKET)
PartyGoldGT(0)
~ THEN REPLY #7538 /* ~"Peu importe. Au revoir."~ */ DO ~TakePartyGold(5)
~ GOTO 16
  IF ~  CheckStatLT(Protagonist,13,WIS)
CheckStatLT(Protagonist,10,PICKPOCKET)
NearbyDialog("DAnnah")
PartyGoldGT(0)
~ THEN REPLY #7539 /* ~"Peu importe. Au revoir."~ */ DO ~TakePartyGold(5)
~ EXTERN ~DANNAH~ 54
  IF ~  PartyGold(0)
~ THEN REPLY #61591 /* ~"Peu importe. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 10 // from: 0.3 1.2 2.3 3.4 4.1 5.2 6.5 7.3 8.2 9.5
  SAY #1867 /* ~Tu es sur le point de t'en aller, mais tu te ravises. Il te semble soudain que quelque chose *cloche*… et tu réalises alors que l'ivresse de cette femme est feinte. Lorsque tu la regardes de plus près, tu vois que la catin glisse quelque chose dans sa manche… Ça ressemble à quelque chose qui t'appartient.~ */
  IF ~  CheckStatLT(Protagonist,13,DEX)
~ THEN REPLY #7540 /* ~Attrape sa main.~ */ GOTO 12
  IF ~  CheckStatGT(Protagonist,12,DEX)
~ THEN REPLY #7541 /* ~Attrape sa main.~ */ GOTO 11
  IF ~~ THEN REPLY #7542 /* ~"Hé ! Mais qu'est-ce que tu fais ?!"~ */ GOTO 13
  IF ~  CheckStatLT(Protagonist,13,WIS)
CheckStatGT(Protagonist,12,INT)
Global("Drunk_Harlot_Technique","GLOBAL",0)
~ THEN REPLY #7543 /* ~Guette la femme qui te vole de nouveau et observe sa technique.~ */ DO ~TakePartyGold(5)
SetGlobal("Drunk_Harlot_Technique","GLOBAL",1)
GiveExperience(Protagonist,750)
PermanentStatChange(Protagonist,PICKPOCKET,RAISE,1)
~ GOTO 17
  IF ~  CheckStatGT(Protagonist,12,WIS)
CheckStatLT(Protagonist,16,WIS)
Global("Drunk_Harlot_Technique","GLOBAL",0)
~ THEN REPLY #7545 /* ~Guette la femme qui te vole de nouveau et observe sa technique.~ */ DO ~TakePartyGold(5)
SetGlobal("Drunk_Harlot_Technique","GLOBAL",1)
GiveExperience(Protagonist,1000)
PermanentStatChange(Protagonist,PICKPOCKET,RAISE,3)
~ GOTO 17
  IF ~  CheckStatGT(Protagonist,15,WIS)
Global("Drunk_Harlot_Technique","GLOBAL",0)
~ THEN REPLY #7546 /* ~Guette la femme qui te vole de nouveau et observe sa technique.~ */ DO ~TakePartyGold(5)
SetGlobal("Drunk_Harlot_Technique","GLOBAL",1)
GiveExperience(Protagonist,1250)
PermanentStatChange(Protagonist,PICKPOCKET,RAISE,5)
~ GOTO 17
  IF ~~ THEN REPLY #7547 /* ~Attaque-la.~ */ DO ~Help()
~ EXIT
  IF ~~ THEN REPLY #7548 /* ~Ignore l'incident, pars.~ */ EXIT
END

IF ~~ THEN BEGIN 11 // from: 10.1 16.1 17.1
  SAY #1868 /* ~En un éclair, tu saisis son poignet presque en le broyant. Elle est tout de suite dégrisée et essaie désespérément de se libérer, puis elle se met à crier à pleins poumons.~ */
  IF ~  CheckStatGT(Protagonist,10,CHR)
~ THEN REPLY #7549 /* ~Doucement : "Arrête de crier ou je t'arrache les poumons."~ */ GOTO 18
  IF ~  CheckStatLT(Protagonist,11,CHR)
~ THEN REPLY #7550 /* ~"Silence ! Ça suffit, femme, tais-toi !"~ */ GOTO 14
  IF ~~ THEN REPLY #7551 /* ~Brise-lui le cou avec ta main libre.~ */ DO ~PlaySoundNotRanged("SPE_11")
SetAnimState(Myself,ANIM_MIMEDIE)
~ GOTO 23
  IF ~~ THEN REPLY #7552 /* ~Laisse-la partir.~ */ DO ~Help()
Enemy()
~ EXIT
END

IF ~~ THEN BEGIN 12 // from: 10.0 16.0 17.0
  SAY #1869 /* ~Elle retire sa main avant que tu puisses l'attraper. L'expression d'ivresse disparaît de son visage et elle se met à crier à pleins poumons.~ */
  IF ~~ THEN REPLY #7553 /* ~"Alors très bien…"~ */ DO ~Enemy()
Help()
~ EXIT
END

IF ~~ THEN BEGIN 13 // from: 10.2 16.2 17.2
  SAY #1870 /* ~L'expression d'ivresse disparaît du visage de la femme, qui se met à crier à pleins poumons.~ */
  IF ~~ THEN REPLY #7554 /* ~"Alors très bien…"~ */ DO ~Enemy()
Help()
~ EXIT
END

IF ~~ THEN BEGIN 14 // from: 11.1
  SAY #1871 /* ~Elle continue de te résister tout en criant pour demander de l'aide. Tu as du mal à croire qu'elle puisse avoir une telle force… Sa voix retentit dans tes oreilles.~ */
  IF ~~ THEN REPLY #7555 /* ~Attaque-la.~ */ DO ~Enemy()
Help()
~ EXIT
  IF ~~ THEN REPLY #7556 /* ~Brise-lui le cou avec ta main libre.~ */ DO ~PlaySoundNotRanged("SPE_11")
SetAnimState(Myself,ANIM_MIMEDIE)
~ GOTO 23
  IF ~~ THEN REPLY #7557 /* ~Laisse-la partir.~ */ DO ~Enemy()
Help()
~ EXIT
END

IF ~~ THEN BEGIN 15 // from:
  SAY #1872 /* ~Elle continue de se débattre tout en criant à l'aide. Tu as du mal à croire qu'elle puisse avoir une telle force… Sa voix résonne dans tes oreilles.~ */
  IF ~~ THEN REPLY #7558 /* ~Attaque-la.~ */ DO ~Enemy()
Help()
~ EXIT
  IF ~~ THEN REPLY #7559 /* ~Brise-lui le cou avec ta main libre.~ */ DO ~PlaySoundNotRanged("SPE_11")
SetAnimState(Myself,ANIM_MIMEDIE)
~ GOTO 23
  IF ~~ THEN REPLY #7560 /* ~Laisse-la partir.~ */ DO ~Enemy()
Help()
~ EXIT
END

IF ~~ THEN BEGIN 16 // from: 0.4 1.3 2.4 3.5 4.2 5.3 6.6 7.4 8.3 9.6
  SAY #1873 /* ~Peut-être que c'est ta manie de chaparder qui te fait te tenir sur tes gardes, mais, alors que tu es sur le point de partir, tu vérifies instinctivement ta bourse… et tu remarques que la catin retire sa main. Elle ne semble pas se rendre compte que tu l'as vue.~ */
  IF ~  CheckStatLT(Protagonist,13,DEX)
~ THEN REPLY #7561 /* ~Attrape sa main.~ */ GOTO 12
  IF ~  CheckStatGT(Protagonist,12,DEX)
~ THEN REPLY #7562 /* ~Saisis sa main.~ */ GOTO 11
  IF ~~ THEN REPLY #7563 /* ~"Hé ! Mais qu'est-ce que tu fais ?!"~ */ GOTO 13
  IF ~  CheckStatLT(Protagonist,13,WIS)
CheckStatGT(Protagonist,12,INT)
Global("Drunk_Harlot_Technique","GLOBAL",0)
~ THEN REPLY #7564 /* ~Guette la femme qui te vole de nouveau et observe sa technique.~ */ DO ~TakePartyGold(5)
SetGlobal("Drunk_Harlot_Technique","GLOBAL",1)
GiveExperience(Protagonist,750)
PermanentStatChange(Protagonist,PICKPOCKET,RAISE,1)
~ GOTO 17
  IF ~  CheckStatGT(Protagonist,12,WIS)
CheckStatLT(Protagonist,16,WIS)
Global("Drunk_Harlot_Technique","GLOBAL",0)
~ THEN REPLY #7566 /* ~Guette la femme qui te vole de nouveau et observe sa technique.~ */ DO ~TakePartyGold(5)
SetGlobal("Drunk_Harlot_Technique","GLOBAL",1)
GiveExperience(Protagonist,1000)
PermanentStatChange(Protagonist,PICKPOCKET,RAISE,3)
~ GOTO 17
  IF ~  CheckStatGT(Protagonist,15,WIS)
Global("Drunk_Harlot_Technique","GLOBAL",0)
~ THEN REPLY #7567 /* ~Guette la femme qui te vole de nouveau et observe sa technique.~ */ DO ~TakePartyGold(5)
SetGlobal("Drunk_Harlot_Technique","GLOBAL",1)
GiveExperience(Protagonist,1250)
PermanentStatChange(Protagonist,PICKPOCKET,RAISE,5)
~ GOTO 17
  IF ~~ THEN REPLY #7568 /* ~Attaque-la.~ */ DO ~Enemy()
Help()
~ EXIT
  IF ~~ THEN REPLY #7569 /* ~Ignore l'incident, pars.~ */ EXIT
END

IF ~~ THEN BEGIN 17 // from: 10.3 10.4 10.5 16.3 16.4 16.5
  SAY #1874 /* ~Tu te rapproches et te mets à rire avec elle. Tu vois sa main se tendre de nouveau vers ta bourse… Apparemment, sa technique consiste à distraire sa victime avec son discours d'alcoolique (et sa poitrine) tandis qu'elle lui vide sa bourse. Les manches de sa robe semblent conçues pour cacher rapidement les objets dérobés. Tu mémorises sa technique… alors même que ses mains tentent de nouveau d'attraper ta bourse.~ */
  IF ~  CheckStatLT(Protagonist,13,DEX)
~ THEN REPLY #7571 /* ~Attrape sa main.~ */ GOTO 12
  IF ~  CheckStatGT(Protagonist,12,DEX)
~ THEN REPLY #7572 /* ~Saisis sa main.~ */ GOTO 11
  IF ~~ THEN REPLY #7573 /* ~"Hé ! Mais qu'est-ce que tu fais ?!"~ */ GOTO 13
  IF ~~ THEN REPLY #7574 /* ~Attaque-la.~ */ DO ~Enemy()
Help()
~ EXIT
  IF ~~ THEN REPLY #7575 /* ~Ignore l'incident, pars.~ */ EXIT
END

IF ~~ THEN BEGIN 18 // from: 11.0
  SAY #1875 /* ~Il doit y avoir *quelque chose* dans ta voix, car elle s'arrête net et te regarde avec de grands yeux effrayés.~ */
  IF ~~ THEN REPLY #7576 /* ~"Rends-moi tout de suite ce que tu m'as volé."~ */ DO ~GivePartyGold(100)
~ GOTO 19
  IF ~~ THEN REPLY #7577 /* ~Brise-lui le cou avec ta main libre.~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Drunk_Harlot_3","GLOBALLaw",-2)
IncrementGlobalOnceEx("GLOBALEvil_Drunk_Harlot_2","GLOBALGood",-2)
PlaySoundNotRanged("SPE_11")
SetAnimState(Myself,ANIM_MIMEDIE)
~ GOTO 23
  IF ~~ THEN REPLY #7578 /* ~Laisse-la s'en aller et pars.~ */ DO ~Enemy()
~ EXIT
END

IF ~~ THEN BEGIN 19 // from: 18.0
  SAY #1876 /* ~Elle acquiesce. Elle dégage ses grandes manches bouffantes et montre un petit sac matelassé qu'elle tient au poignet. Elle semble capable de capter les pièces pour les mettre ensuite dans son sac ; le rembourrage masque le bruit des pièces. Sans un mot, elle te tend le sac… Il contient plusieurs dizaines de pièces de cuivre.~ */
  IF ~~ THEN REPLY #7579 /* ~"Nous sommes quittes. Maintenant, je ne veux plus jamais te revoir. Compris ?"~ */ GOTO 22
  IF ~~ THEN REPLY #7580 /* ~Bluff : "Donne-moi tout ce que tu as et je te laisserai vivre."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Drunk_Harlot_1","GLOBALLaw",-1)
GiveGoldForce(20)
~ GOTO 20
  IF ~~ THEN REPLY #7581 /* ~Vérité : "Donne-moi tout ce que tu as et je te laisserai vivre."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Drunk_Harlot_2","GLOBALLaw",-1)
IncrementGlobalOnceEx("GLOBALEvil_Drunk_Harlot_2","GLOBALGood",-1)
GiveGoldForce(20)
~ GOTO 20
  IF ~~ THEN REPLY #7582 /* ~Remercie-la d'un signe de tête et brise-lui le cou avec ta main libre.~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Drunk_Harlot_3","GLOBALLaw",-2)
IncrementGlobalOnceEx("GLOBALEvil_Drunk_Harlot_2","GLOBALGood",-2)
PlaySoundNotRanged("SPE_11")
SetAnimState(Myself,ANIM_MIMEDIE)
~ GOTO 23
  IF ~~ THEN REPLY #7583 /* ~Laisse-la s'en aller et pars.~ */ DO ~SetGlobal("Remove_Drunk_Harlot","GLOBAL",1)
Enemy()
~ EXIT
END

IF ~~ THEN BEGIN 20 // from: 19.1 19.2
  SAY #1877 /* ~Elle sort de sa jarretière un autre sac qu'elle te tend. Il est rempli de pièces de cuivre, que tu vides dans ta bourse.~ */
  IF ~  CheckStatGT(Protagonist,12,INT)
~ THEN REPLY #7584 /* ~"Je voulais dire *tout*, alors donne-moi *tout*."~ */ DO ~GiveItemCreate("Ear01",Protagonist,1,0,0)
GiveItem("Knife",Protagonist)
GiveItem("Stiletto",Protagonist)
~ GOTO 21
  IF ~~ THEN REPLY #7585 /* ~"Je ne veux plus jamais te revoir. Compris ?"~ */ GOTO 22
  IF ~~ THEN REPLY #7586 /* ~Remercie-la d'un signe de tête et brise-lui le cou avec ta main libre.~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Drunk_Harlot_3","GLOBALLaw",-2)
IncrementGlobalOnceEx("GLOBALEvil_Drunk_Harlot_2","GLOBALGood",-2)
PlaySoundNotRanged("SPE_11")
SetAnimState(Myself,ANIM_MIMEDIE)
~ GOTO 23
  IF ~~ THEN REPLY #7587 /* ~Laisse-la s'en aller et pars.~ */ DO ~SetGlobal("Remove_Drunk_Harlot","GLOBAL",1)
Enemy()
~ EXIT
END

IF ~~ THEN BEGIN 21 // from: 20.0
  SAY #1878 /* ~Elle fouille doucement dans sa botte et en ressort une étrange et élégante dague, qu'elle te tend, la pointe en premier. Elle fouille ensuite dans son autre botte, en ressort *une autre* dague (moins élégante que la précédente, avec une lame plus grande), qu'elle te tend, la pointe en premier de nouveau. Elle secoue ensuite la tête, laissant apparaître une petite boucle d'oreille que sa masse de cheveux cachait. Elle la retire et te la donne. ~ */
  IF ~~ THEN REPLY #7588 /* ~"Ça va. Maintenant, je ne veux plus jamais te revoir. Compris ?"~ */ GOTO 22
  IF ~~ THEN REPLY #7589 /* ~Remercie-la d'un signe de tête et brise-lui le cou avec ta main libre.~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Drunk_Harlot_3","GLOBALLaw",-2)
IncrementGlobalOnceEx("GLOBALEvil_Drunk_Harlot_2","GLOBALGood",-2)
PlaySoundNotRanged("SPE_11")
SetAnimState(Myself,ANIM_MIMEDIE)
~ GOTO 23
  IF ~~ THEN REPLY #7590 /* ~Laisse-la s'en aller et pars.~ */ DO ~SetGlobal("Remove_Drunk_Harlot","GLOBAL",1)
Enemy()
~ EXIT
END

IF ~~ THEN BEGIN 22 // from: 19.0 20.1 21.0
  SAY #1879 /* ~Elle acquiesce.~ */
  IF ~~ THEN REPLY #7591 /* ~Brise-lui le cou avec ta main libre.~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Drunk_Harlot_3","GLOBALLaw",-2)
IncrementGlobalOnceEx("GLOBALEvil_Drunk_Harlot_2","GLOBALGood",-2)
PlaySoundNotRanged("SPE_11")
SetAnimState(Myself,ANIM_MIMEDIE)
~ GOTO 23
  IF ~~ THEN REPLY #7592 /* ~Laisse-la s'en aller et pars.~ */ DO ~SetGlobal("Remove_Drunk_Harlot","GLOBAL",1)
Enemy()
~ EXIT
END

IF ~~ THEN BEGIN 23 // from: 11.2 14.1 15.1 18.1 19.3 20.2 21.1 22.0
  SAY #1880 /* ~Ses yeux s'élargissent tandis que ta main serre son cou, et elle s'accroche désespérément à tes doigts… Avant qu'elle réussisse à se dégager, un *bruit sec* se produit et elle cesse de se débattre.~ */
  IF ~  Global("Choke_Dustman","GLOBAL",0)
Global("Choke_Memory","GLOBAL",0)
~ THEN REPLY #7593 /* ~Laisse-la tomber.~ */ DO ~SetGlobal("Choke_Memory","GLOBAL",1)
PlaySoundNotRanged("SPTR_01")
SetGlobal("Choke_Drunk_Harlot","GLOBAL",1)
IncrementGlobal("Choke","GLOBAL",1)
Kill(Myself)
~ GOTO 25
  IF ~  GlobalGT("Choke_Dustman","GLOBAL",0)
~ THEN REPLY #7594 /* ~Lâche-la.~ */ DO ~SetGlobal("Choke_Drunk_Harlot","GLOBAL",1)
IncrementGlobal("Choke","GLOBAL",1)
Kill(Myself)
~ GOTO 24
  IF ~  GlobalGT("Choke_Memory","GLOBAL",0)
Global("Choke_Dustman","GLOBAL",0)
~ THEN REPLY #32766 /* ~Lâche-la.~ */ DO ~SetGlobal("Choke_Drunk_Harlot","GLOBAL",1)
IncrementGlobal("Choke","GLOBAL",1)
Kill(Myself)
~ EXIT
END

IF ~~ THEN BEGIN 24 // from: 23.1
  SAY #1881 /* ~Tu la relâches, et elle s'effondre sur le sol. Elle est bien plus facile à tuer qu'un Homme-Poussière. Tu ressens un étrange frisson en regardant son corps… Tu *sais* que tu en as tué d'autres de cette manière. Tu essaies désespérément de te souvenir, mais en vain, et tout cela disparaît dans ton inconscient.~ */
  IF ~~ THEN REPLY #7595 /* ~Pars.~ */ DO ~GiveExperience(Protagonist,250)
Kill(Myself)
~ EXIT
END

IF ~~ THEN BEGIN 25 // from: 23.0
  SAY #1882 /* ~Tu la lâches et elle s'effondre par terre. Tu ressens un frisson en regardant son corps brisé… tu *sais* que tu as tué d'autres personnes de la même façon. Cela te ramène un vague souvenir en mémoire, mais il n'est pas assez fort pour refaire surface.~ */
  IF ~~ THEN REPLY #7596 /* ~Pars.~ */ DO ~GiveExperience(Protagonist,250)
Kill(Myself)
~ EXIT
END

IF ~~ THEN BEGIN 26 // from:
  SAY #106497 /* ~La femme hoche la tête puis s'enfuit en toute hâte. Tu ne penses pas la revoir un jour.~ */
  IF ~~ THEN REPLY #7596 /* ~Pars.~ */ DO ~Enemy()
GivePartyGold(100)
SetGlobal("Remove_Drunk_Harlot","GLOBAL",1)
EscapeArea()
~ EXIT
END

IF ~~ THEN BEGIN 27 // from:
  SAY #106497 /* ~La femme hoche la tête puis s'enfuit en toute hâte. Tu ne penses pas la revoir un jour.~ */
  IF ~~ THEN REPLY #7596 /* ~Pars.~ */ DO ~Enemy()
SetGlobal("Remove_Drunk_Harlot","GLOBAL",1)
EscapeArea()
~ EXIT
END
