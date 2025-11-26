// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DELI.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\fr_FR\dialog.tlk
// dialogF  : (none)

BEGIN ~DELI~
//////////////////////////////////////////////////
// WARNING: this file contains non-trivial WEIGHTs
//////////////////////////////////////////////////

IF WEIGHT #2 /* Triggers after states #: 51 50 even though they appear after this state */
~  NumTimesTalkedTo(0)
GlobalLT("Eli","GLOBAL",2)
~ THEN BEGIN 0 // from:
  SAY #31866 /* ~Cet homme aux yeux étroits et aux traits acérés, parcourt les alentours d'un regard blasé, s'arrêtant de temps en temps pour baisser la tête et se curer les ongles. Bien qu'il soit vêtu de soie et de velours fin, il se débrouille pour avoir l'air peu recommandable et plus que dangereux.~ */
  IF ~~ THEN REPLY #31937 /* ~"Bonjour…"~ */ GOTO 1
  IF ~~ THEN REPLY #31938 /* ~Laisse l'homme tranquille.~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #2911 /* ~L'homme regarde dans ta direction. Ses yeux sont réduits à de sombres fentes, comme des coups de couteau, en dessous de ses sourcils. Sa voix est grave et bourrue, malgré sa maigre constitution. "Va caguer."~ */
  IF ~  Global("Eli","GLOBAL",1)
~ THEN REPLY #31939 /* ~"Pas encore. Tu es Eli Havelock ?"~ */ DO ~SetGlobal("Eli","GLOBAL",2)
~ GOTO 20
  IF ~~ THEN REPLY #31940 /* ~"Pas encore. J'ai quelques questions…"~ */ GOTO 2
  IF ~~ THEN REPLY #31941 /* ~"À ta place, je ferais attention à ce que je dis."~ */ GOTO 3
  IF ~~ THEN REPLY #31942 /* ~Pars.~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.1 21.1
  SAY #31868 /* ~"Tu crois que je me balade dans le quartier à la recherche d'étrangers à qui cracher mes soltifs ? Maintenant, va caguer."~ */
  IF ~  CheckStatGT(Protagonist,8,CHR)
~ THEN REPLY #31943 /* ~"Alors, pourquoi tu *es* ici ? Pour être désagréable avec les passants ?"~ */ DO ~SetGlobal("Eli","GLOBAL",2)
~ GOTO 4
  IF ~  CheckStatLT(Protagonist,9,CHR)
~ THEN REPLY #31944 /* ~"Alors, pourquoi tu *es* ici ? Pour être désagréable avec les passants ?"~ */ GOTO 3
  IF ~~ THEN REPLY #31945 /* ~"À ta place, je ferais attention à ce que je dis."~ */ GOTO 3
  IF ~~ THEN REPLY #31946 /* ~Pars.~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 1.2 2.1 2.2
  SAY #31870 /* ~Il t'ignore visiblement.~ */
  IF ~~ THEN REPLY #31947 /* ~Prends-le, secoue-le un peu pour avoir des réponses.~ */ DO ~Enemy()
ForceAttack(Protagonist,Myself)
~ EXIT
  IF ~~ THEN REPLY #31948 /* ~Pars.~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 2.0
  SAY #31871 /* ~"Hé." Il reste impassible pendant un instant, puis fait un sourire de travers. "C'est bon, ça." Il t'examine pendant un instant. "Je suis professeur à la Salle des Fêtes. Je m'appelle Havelock - Eli Havelock. En tant qu'éclaireur vétéran, j'enseigne l'art du subterfuge."~ */
  IF ~~ THEN REPLY #31949 /* ~"Tu veux parler de vol ?"~ */ GOTO 5
  IF ~~ THEN REPLY #31950 /* ~"Tu pourrais m'entraîner ?"~ */ GOTO 6
  IF ~  Global("CW_Qui_Question","GLOBAL",1)
Global("CW_Eli_Ans","GLOBAL",0)
~ THEN REPLY #65427 /* ~"Tu es chargé de l'entraînement des voleurs de la Salle des Fêtes ? Écoute… Qui-Sai ne fera pas de moi un guerrier. Il dit que je n'ai qu'à voler l'arme d'un opposant et les laisser sans défense. Qu'en penses-tu ?"~ */ DO ~SetGlobal("CW_Eli_Ans","GLOBAL",1)
AddexperienceParty(250)
~ GOTO 54
  IF ~  Global("CW_Qui_Question","GLOBAL",2)
GlobalLT("CW_Eli_Ans","GLOBAL",2)
~ THEN REPLY #65428 /* ~"Tu es chargé de l'entraînement des voleurs de la Salle des Fêtes ? Écoute… Qui-Sai ne fera pas de moi un guerrier. Il a dit que je pouvais me cacher pour que mes ennemis ne me voient pas et devenir ainsi invulnérable. Qu'en penses-tu ?"~ */ DO ~SetGlobal("CW_Eli_Ans","GLOBAL",2)
AddexperienceParty(250)
~ GOTO 55
  IF ~~ THEN REPLY #31951 /* ~"D'accord. Au revoir, Eli."~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 4.0 20.2
  SAY #28796 /* ~Il retrousse les lèvres avec dédain. "Du *vol* et des *voleurs*, que c'est ! J'ai effectué plus de cinq missions de reconnaissance pendant la Guerre des Mensonges. J'suis éclaireur, ouais… *éclaireur*. J'enseigne la furtivité et l'espionnage, pas le vol de bas-étage."~ */
  IF ~  CheckStatGT(Protagonist,12,CHR)
~ THEN REPLY #31952 /* ~"Excuse-moi, je ne voulais pas te vexer. Tu pourrais m'entraîner ?"~ */ GOTO 6
  IF ~  CheckStatLT(Protagonist,13,CHR)
~ THEN REPLY #31953 /* ~"Tu pourrais quand même m'entraîner ?"~ */ GOTO 11
  IF ~~ THEN REPLY #31954 /* ~"Je vois. Au revoir, Eli."~ */ EXIT
END

IF ~~ THEN BEGIN 6 // from: 4.1 5.0 22.3
  SAY #31872 /* ~Eli fronce les sourcils, aigri. "Je ne sais pas. J'en ai assez d'instruire de misérables voleurs à la tire et des Sensats adeptes de la nouveauté." Il murmure, presque pour lui-même : "Je me demande même pourquoi j'ai accepté de le faire."~ */
  IF ~  CheckStatGT(Protagonist,13,WIS)
~ THEN REPLY #31955 /* ~"Peut-être parce que l'enseignement te permet de transmettre tes talents."~ */ GOTO 7
  IF ~~ THEN REPLY #31956 /* ~"Qu'est-ce que je pourrais faire pour que tu changes d'avis ?"~ */ GOTO 12
  IF ~~ THEN REPLY #31957 /* ~"Alors, au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 7 // from: 6.0
  SAY #31873 /* ~"Hmm…"~ */
  IF ~~ THEN REPLY #31958 /* ~"En même temps, tu défends la noblesse de tes talents en leur montrant que tu n'es pas un simple voleur, mais aussi un éclaireur et un espion, un maître du subterfuge."~ */ GOTO 8
END

IF ~~ THEN BEGIN 8 // from: 7.0
  SAY #31883 /* ~Eli acquiesce, ruminant ce que tu viens de dire. "Ouais… ça fait pas de doute. C'est un peu dommage, vu sous cet angle."~ */
  IF ~~ THEN REPLY #31959 /* ~"Je ne crois pas. Ton métier est souvent mal compris et injustement logé à la même enseigne que celui de voleur ou de brigand. Il n'y a rien de mal à dissiper de fausses idées."~ */ GOTO 10
  IF ~~ THEN REPLY #31960 /* ~"Tu as raison, c'est lamentable."~ */ GOTO 9
END

IF ~~ THEN BEGIN 9 // from: 8.1
  SAY #31884 /* ~Il hausse les sourcils pendant un bref instant, surpris, puis sa colère éclate. "Tu cherches les problèmes, hein ? Va jouer dans l'ombre de la dame, bige. Va caguer !"~ */
  IF ~~ THEN REPLY #31961 /* ~Pars.~ */ EXIT
END

IF ~~ THEN BEGIN 10 // from: 8.0
  SAY #31885 /* ~"Hé ! T'as encore raison." Il te donne une tape amicale sur l'épaule. "Merci, affranchi." Il regarde subitement au loin. "Bien… assez perdu de temps ici. Je retourne à la Salles des Fêtes. Si tu veux toujours t'entraîner, tu me trouveras là-bas."~ */
  IF ~~ THEN REPLY #31962 /* ~"Je te retrouverai peut-être là-bas, Eli. Au revoir."~ */ DO ~SetGlobal("Eli","GLOBAL",3)
AddexperienceParty(12000)
StartCutSceneMode()
StartCutSceneEx("0600cut1",FALSE)
~ EXIT
END

IF ~~ THEN BEGIN 11 // from: 5.1
  SAY #31886 /* ~"Nan… J'en ai marre d'instruire de misérables voleurs à la tire et des amateurs de sensations fortes."~ */
  IF ~~ THEN REPLY #31963 /* ~"Qu'est-ce que je pourrais faire pour que tu changes d'avis ?"~ */ GOTO 12
  IF ~~ THEN REPLY #31964 /* ~"Alors, au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 12 // from: 6.1 11.0
  SAY #31887 /* ~Il pince les lèvres et regarde vers le ciel. "Hmm… beaucoup de choses, je crois." Il te regarde droit dans les yeux. "J'vais être franc avec toi : du jonc. Tu veux t'entraîner, va falloir débourser. J'pincerai le derrière de la Dame avant d'entraîner un autre bige gratuitement !"~ */
  IF ~~ THEN REPLY #31965 /* ~"Combien ?"~ */ GOTO 13
  IF ~~ THEN REPLY #31966 /* ~"Laisse tomber. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 13 // from: 12.0
  SAY #31888 /* ~Eli hausse les épaules. "Diable, je ne sais pas. Cinq cents pièces devraient suffire… Je suis *vraiment* un éclaireur vétéran, tu sais… cinq missions de reconnaissance durant la Guerre des Mensonges ! Ça fait pas mal d'expérience à partager…"~ */
  IF ~~ THEN REPLY #31971 /* ~"D'accord."~ */ DO ~SetGlobal("CW_Thief_Train","AR0600",1)
~ GOTO 17
  IF ~  CheckStatGT(Protagonist,12,CHR)
~ THEN REPLY #31972 /* ~"Qu'est-ce que tu dirais de trois cents ?"~ */ DO ~SetGlobal("CW_Thief_Train","AR0600",2)
~ GOTO 17
  IF ~  CheckStatLT(Protagonist,13,CHR)
~ THEN REPLY #31973 /* ~"Qu'est-ce que tu dirais de trois cents ?"~ */ GOTO 14
  IF ~~ THEN REPLY #31975 /* ~"Qu'est-ce que tu dirais de deux cents ?"~ */ GOTO 15
  IF ~~ THEN REPLY #31978 /* ~"Laisse tomber. Au revoir."~ */ DO ~SetGlobal("CW_Thief_Train","AR0600",1)
~ GOTO 16
END

IF ~~ THEN BEGIN 14 // from: 13.2 15.1
  SAY #31889 /* ~Il secoue la tête. "Non. J'en veux cinq, et tu vas m'en payer cinq."~ */
  IF ~~ THEN REPLY #31979 /* ~"Bon, d'accord."~ */ DO ~SetGlobal("CW_Thief_Train","AR0600",1)
~ GOTO 17
  IF ~~ THEN REPLY #31980 /* ~"Alors, laisse tomber. Au revoir."~ */ DO ~SetGlobal("CW_Thief_Train","AR0600",1)
~ GOTO 16
END

IF ~~ THEN BEGIN 15 // from: 13.3
  SAY #31890 /* ~Il écarquille les yeux. "Espèce de dingue de bige ? Diable, non ! Cinq cents, un point c'est tout."~ */
  IF ~  CheckStatGT(Protagonist,15,CHR)
~ THEN REPLY #31981 /* ~"Bon, et qu'est-ce que tu dirais de trois cents ?"~ */ DO ~SetGlobal("CW_Thief_Train","AR0600",2)
~ GOTO 17
  IF ~  CheckStatLT(Protagonist,16,CHR)
~ THEN REPLY #31982 /* ~"Bon, et qu'est-ce que tu dirais de trois cents ?"~ */ GOTO 14
  IF ~~ THEN REPLY #31983 /* ~"Alors, laisse tomber. Au revoir."~ */ DO ~SetGlobal("CW_Thief_Train","AR0600",1)
~ GOTO 16
END

IF ~~ THEN BEGIN 16 // from: 13.4 14.1 15.2 17.1 23.1
  SAY #31891 /* ~"Si jamais tu reviens, tu connais déjà mon prix : cinq cents pièces de cuivre. Adieu, matois."~ */
  IF ~~ THEN REPLY #31984 /* ~Pars.~ */ EXIT
END

IF ~~ THEN BEGIN 17 // from: 13.0 13.1 14.0 15.0
  SAY #31892 /* ~"Marché conclu, alors." Vous vous serrez la main. "Tu les as ici ?"~ */
  IF ~  Global("CW_Thief_Train","AR0600",1)
PartyGoldGT(499)
~ THEN REPLY #31985 /* ~"Oui… Tiens."~ */ DO ~TakePartyGold(500)
~ GOTO 18
  IF ~  Global("CW_Thief_Train","AR0600",1)
PartyGoldLT(500)
~ THEN REPLY #31986 /* ~"Non… Pas encore."~ */ GOTO 16
  IF ~  Global("CW_Thief_Train","AR0600",2)
PartyGoldGT(299)
~ THEN REPLY #31987 /* ~"Oui… Tiens."~ */ DO ~TakePartyGold(300)
~ GOTO 18
  IF ~  Global("CW_Thief_Train","AR0600",2)
PartyGoldLT(300)
~ THEN REPLY #31988 /* ~"Non… Pas encore."~ */ GOTO 19
  IF ~~ THEN REPLY #31989 /* ~"En fait, je ne veux pas m'entraîner tout de suite. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 18 // from: 17.0 17.2 23.0 23.2
  SAY #31893 /* ~Il prend le rouleau de pièces que tu lui tends et le cache dans sa tunique. "J'te verrai à la Salle des Fêtes. C'est là-bas que je t'entraînerai. D'ici là, adieu, matois."~ */
  IF ~~ THEN REPLY #31990 /* ~"On se retrouvera là-bas, Eli. Au revoir."~ */ DO ~SetGlobal("Eli","GLOBAL",3)
AddexperienceParty(12000)
StartCutSceneMode()
StartCutSceneEx("0600cut1",FALSE)
~ EXIT
END

IF ~~ THEN BEGIN 19 // from: 17.3 23.3
  SAY #31894 /* ~"Si jamais tu reviens, tu connais déjà mon prix : cinq cents pièces de cuivre. Adieu, matois."~ */
  IF ~~ THEN REPLY #31991 /* ~"Au revoir, Eli."~ */ EXIT
END

IF ~~ THEN BEGIN 20 // from: 1.0 21.0
  SAY #31895 /* ~Il te sourit avec dédain. "Oui, c'est moi…"~ */
  IF ~  Global("CW_Qui_Question","GLOBAL",1)
Global("CW_Eli_Ans","GLOBAL",0)
~ THEN REPLY #31992 /* ~"Qui-Sai ne veut pas m'entraîner à être guerrier… Il dit que je pourrais juste voler les armes des adversaires pour les laisser sans défenses. Qu'est-ce que tu en penses ?"~ */ DO ~SetGlobal("CW_Eli_Ans","GLOBAL",1)
AddexperienceParty(250)
~ GOTO 54
  IF ~  Global("CW_Qui_Question","GLOBAL",2)
GlobalLT("CW_Eli_Ans","GLOBAL",2)
~ THEN REPLY #31993 /* ~"Qui-Sai ne veut toujours pas m'entraîner à être guerrier… Il dit que je pourrais me cacher des ennemis, et ainsi devenir invulnérable. Qu'est-ce que tu en penses ?"~ */ DO ~SetGlobal("CW_Eli_Ans","GLOBAL",2)
AddexperienceParty(250)
~ GOTO 55
  IF ~~ THEN REPLY #31994 /* ~"Tu pourrais m'entraîner à être voleur ?"~ */ GOTO 5
  IF ~~ THEN REPLY #31995 /* ~"C'est tout ce que je voulais savoir. Au revoir."~ */ EXIT
END

IF WEIGHT #3 /* Triggers after states #: 51 50 even though they appear after this state */
~  NumTimesTalkedToGT(0)
GlobalLT("Eli","GLOBAL",2)
~ THEN BEGIN 21 // from:
  SAY #31896 /* ~Cet homme aux yeux étroits et aux traits acérés, parcourt les alentours d'un regard blasé. "Toujours dans les environs ?" Il fronce les sourcils. "Qu'est-ce que tu veux ?"~ */
  IF ~  Global("Eli","GLOBAL",1)
~ THEN REPLY #31996 /* ~"Je me demande si tu es Eli Havelock."~ */ DO ~SetGlobal("Eli","GLOBAL",2)
~ GOTO 20
  IF ~~ THEN REPLY #31997 /* ~"J'ai des questions…"~ */ GOTO 2
  IF ~~ THEN REPLY #31998 /* ~"Rien. Au revoir."~ */ EXIT
END

IF WEIGHT #4 /* Triggers after states #: 51 50 even though they appear after this state */
~  Global("Eli","GLOBAL",2)
~ THEN BEGIN 22 // from:
  SAY #31899 /* ~Eli te regarde approcher avec une expression indéchiffrable. Tu te demandes s'il peut vraiment te voir avec ses yeux étroits et noirs. "Hmm ?"~ */
  IF ~  Global("CW_Qui_Question","GLOBAL",1)
Global("CW_Eli_Ans","GLOBAL",0)
~ THEN REPLY #31999 /* ~"Qui-Sai ne veut pas m'entraîner à être guerrier… Il dit que je pourrais juste voler les armes des adversaires pour les laisser sans défenses. Qu'est-ce que tu en penses ?"~ */ DO ~SetGlobal("CW_Eli_Ans","GLOBAL",1)
AddexperienceParty(250)
~ GOTO 54
  IF ~  Global("CW_Qui_Question","GLOBAL",2)
GlobalLT("CW_Eli_Ans","GLOBAL",2)
~ THEN REPLY #32000 /* ~"Qui-Sai ne veut toujours pas m'entraîner à être guerrier… Il dit que je pourrais me cacher des ennemis, et ainsi devenir invulnérable. Qu'est-ce que tu en penses ?"~ */ DO ~SetGlobal("CW_Eli_Ans","GLOBAL",2)
AddexperienceParty(250)
~ GOTO 55
  IF ~  GlobalGT("CW_Thief_Train","AR0600",0)
~ THEN REPLY #32001 /* ~"Eli… Tu pourrais m'entraîner ?"~ */ GOTO 23
  IF ~  Global("CW_Thief_Train","AR0600",0)
~ THEN REPLY #32001 /* ~"Eli… Tu pourrais m'entraîner ?"~ */ GOTO 6
  IF ~~ THEN REPLY #32002 /* ~"Je ne faisais que passer. Au revoir, Eli."~ */ EXIT
END

IF ~~ THEN BEGIN 23 // from: 22.2
  SAY #31903 /* ~"Tu as le jonc ?"~ */
  IF ~  Global("CW_Thief_Train","AR0600",1)
PartyGoldGT(499)
~ THEN REPLY #32003 /* ~"Tout y est : cinq cents communs… Tiens."~ */ DO ~TakePartyGold(500)
~ GOTO 18
  IF ~  Global("CW_Thief_Train","AR0600",1)
PartyGoldLT(500)
~ THEN REPLY #32004 /* ~"Non… Pas encore."~ */ GOTO 16
  IF ~  Global("CW_Thief_Train","AR0600",2)
PartyGoldGT(299)
~ THEN REPLY #32005 /* ~"Tout y est : trois cents communs… Tiens."~ */ DO ~TakePartyGold(300)
~ GOTO 18
  IF ~  Global("CW_Thief_Train","AR0600",2)
PartyGoldLT(300)
~ THEN REPLY #32006 /* ~"Non… Pas encore."~ */ GOTO 19
  IF ~~ THEN REPLY #32007 /* ~"En fait, je ne veux pas m'entraîner tout de suite. Au revoir."~ */ EXIT
END

IF WEIGHT #5 /* Triggers after states #: 51 50 even though they appear after this state */
~  Global("Eli","GLOBAL",3)
~ THEN BEGIN 24 // from:
  SAY #31904 /* ~"J'm'en vais à la salle d'entraînement de la Salle des fêtes, matois. Si tu veux discuter ou t'entraîner, rejoins-moi là-bas. Au revoir."~ */
  IF ~~ THEN REPLY #32008 /* ~"Au revoir, Eli."~ */ EXIT
END

IF WEIGHT #6 /* Triggers after states #: 51 50 even though they appear after this state */
~  Global("Eli","GLOBAL",4)
~ THEN BEGIN 25 // from:
  SAY #31906 /* ~"Hourra, regarde qui arrive !" Eli te fait un sourire malin. "Bienvenue sur mon terrain, matois. Prêt à t'entraîner ?"~ */
  IF ~  Global("CW_Qui_Question","GLOBAL",1)
Global("CW_Eli_Ans","GLOBAL",0)
~ THEN REPLY #32009 /* ~"Pas maintenant. Qui-Sai ne veut pas m'entraîner à être guerrier… Il dit que je pourrais juste voler les armes des adversaires pour les laisser sans défenses. Qu'est-ce que tu en penses ?"~ */ DO ~SetGlobal("CW_Eli_Ans","GLOBAL",1)
AddexperienceParty(250)
~ GOTO 54
  IF ~  Global("CW_Qui_Question","GLOBAL",2)
GlobalLT("CW_Eli_Ans","GLOBAL",2)
~ THEN REPLY #32010 /* ~"Pas encore. Qui-Sai ne veut toujours pas m'entraîner à être guerrier… Il dit que je pourrais me cacher des ennemis, et ainsi devenir invulnérable. Qu'est-ce que tu en penses ?"~ */ DO ~SetGlobal("CW_Eli_Ans","GLOBAL",2)
AddexperienceParty(250)
~ GOTO 55
  IF ~  GlobalGT("Thief_Training","GLOBAL",0)
~ THEN REPLY #32011 /* ~"Oui."~ */ GOTO 45
  IF ~  Global("Thief_Training","GLOBAL",0)
~ THEN REPLY #32012 /* ~"Oui."~ */ GOTO 26
  IF ~~ THEN REPLY #32013 /* ~"Non, pas encore, Eli. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 26 // from: 25.3 49.3
  SAY #31907 /* ~"D'accord, d'accord. Voilà… voyons comment tu prends ça de ma main, matois." Il tend le bras, une pièce de cuivre dans la paume de la main.~ */
  IF ~  CheckStatGT(Protagonist,17,DEX)
~ THEN REPLY #32014 /* ~Arrache la pièce.~ */ DO ~GiveGoldForce(1)
SetGlobal("Eli","GLOBAL",4)
~ GOTO 27
  IF ~  CheckStatGT(Protagonist,8,DEX)
CheckStatLT(Protagonist,18,DEX)
~ THEN REPLY #32015 /* ~Attrape de la pièce.~ */ DO ~SetGlobal("Eli","GLOBAL",4)
~ GOTO 28
  IF ~  CheckStatLT(Protagonist,9,DEX)
~ THEN REPLY #32016 /* ~Saisis la pièce.~ */ GOTO 29
END

IF ~~ THEN BEGIN 27 // from: 26.0
  SAY #31908 /* ~Ta main fuse et saisit la pièce si rapidement que tu es aussi choqué qu'Eli. "Par les puissances ! T'es plus rapide que tu en as l'air, matois…"~ */
  IF ~~ THEN REPLY #32017 /* ~"Merci."~ */ GOTO 40
END

IF ~~ THEN BEGIN 28 // from: 26.1
  SAY #31909 /* ~Tu as un geste vif… Mais celui d'Eli l'est davantage. "Pas mal, matois. On continue."~ */
  IF ~~ THEN REPLY #32018 /* ~"D'accord…"~ */ GOTO 40
END

IF ~~ THEN BEGIN 29 // from: 26.2
  SAY #31910 /* ~Ta tentative est risible. Eli fronce les sourcils et secoue tristement la tête.~ */
  IF ~  Global("CW_Thief_Train","AR0600",0)
~ THEN REPLY #32019 /* ~"Quoi ?"~ */ GOTO 30
  IF ~  GlobalGT("CW_Thief_Train","AR0600",0)
~ THEN REPLY #32020 /* ~"Quoi ?"~ */ GOTO 31
END

IF ~~ THEN BEGIN 30 // from: 29.0
  SAY #31911 /* ~"Désolé, matois… J'suis désolé d'avoir à te dire ça, mais t'es trop lent pour ce type de boulot. Bonne chance, quoi que tu décides de faire d'autre… adieu."~ */
  IF ~~ THEN REPLY #32021 /* ~"Je… vois. Alors, au revoir, Eli."~ */ DO ~SetGlobal("Eli","GLOBAL",5)
~ EXIT
END

IF ~~ THEN BEGIN 31 // from: 29.1
  SAY #31912 /* ~"Désolé, matois… J'suis désolé d'avoir à te dire ça, mais t'es trop lent pour ce type de boulot. Écoute - ça serait injuste de te piquer ton jonc, alors… reprends-le. Bonne chance, quoi que tu décides de faire d'autre… adieu."~ */
  IF ~  Global("CW_Thief_Train","AR0600",1)
~ THEN REPLY #32022 /* ~"Je… vois. Alors, au revoir, Eli."~ */ DO ~SetGlobal("Eli","GLOBAL",5)
GivePartyGold(500)
~ EXIT
  IF ~  Global("CW_Thief_Train","AR0600",2)
~ THEN REPLY #32023 /* ~"Je… vois. Alors, au revoir, Eli."~ */ DO ~SetGlobal("Eli","GLOBAL",5)
GivePartyGold(300)
~ EXIT
END

IF ~~ THEN BEGIN 32 // from: 40.0
  SAY #31913 /* ~"On est prêts à commencer, matois. J't'apprendrai les six arts de base du subterfuge : comment se déplacer avec discrétion, en utilisant les ombres pour te cacher, le filoutage des poches et des serrures, la détection et le désamorçage des pièges, comment tendre des embuscades à tes ennemis et les frapper dans le dos."~ */
  IF ~~ THEN REPLY #32024 /* ~"Continue…"~ */ GOTO 33
  IF ~~ THEN REPLY #32025 /* ~"Je crois comprendre les rudiments, Eli. Passons à l'entraînement."~ */ GOTO 39
END

IF ~~ THEN BEGIN 33 // from: 32.0
  SAY #31914 /* ~"La capacité à se déplacer sans bruit, caché dans l'ombre, est très précieuse. Beaucoup d'ennemis peuvent être évités en échappant à leur vue. Mais attaquer un ennemi en étant embusqué donne à un éclaireur un avantage certain, comme je te l'expliquerai plus tard. Mais rappelle-toi, matois : un éclaireur ne peut pas se cacher si un ennemi l'a déjà vu."~ */
  IF ~~ THEN REPLY #32026 /* ~"Continue…"~ */ GOTO 34
  IF ~~ THEN REPLY #32027 /* ~"Je crois comprendre les rudiments, Eli. Passons à l'entraînement."~ */ GOTO 39
END

IF ~~ THEN BEGIN 34 // from: 33.0
  SAY #31915 /* ~"Souvent les éclaireurs trouvent des portails verrouillés leur barrant la route, ou des objets ou documents essentiels à leur mission cachés dans un coffre verrouillé. La capacité à crocheter une serrure est pratique dans ces cas-là. Il est toutefois toujours conseillé de vérifier que ces verrous ne sont pas piégés. Mais j'y reviendrai."~ */
  IF ~~ THEN REPLY #32028 /* ~"Continue…"~ */ GOTO 35
END

IF ~~ THEN BEGIN 35 // from: 34.0
  SAY #31916 /* ~"Quelquefois, un ennemi peut porter sur lui un objet ou un document essentiels à la mission d'un éclaireur. C'est dans ces occasions qu'un éclaireur doit se résoudre à leur faire les poches en se faufilant près d'eux. Un éclaireur doit néanmoins rester prêt à se battre ou à fuir, s'il échoue dans sa tentative."~ */
  IF ~~ THEN REPLY #32029 /* ~"Continue…"~ */ GOTO 36
  IF ~~ THEN REPLY #32030 /* ~"Je crois comprendre les rudiments, Eli. Passons à l'entraînement."~ */ GOTO 39
END

IF ~~ THEN BEGIN 36 // from: 35.0
  SAY #31917 /* ~"Souvent un éclaireur découvre que ses ennemis ont piégé des endroits qu'il faut traverser ou des coffres qu'il faut ouvrir. De tels pièges sont invariablement bien cachés ; un éclaireur doit approcher l'endroit ou l'objet avec beaucoup de prudence et rechercher tout ce qui peut paraître suspect. Sois patient… il faut parfois quelque temps avant de pouvoir déceler un piège."~ */
  IF ~~ THEN REPLY #32031 /* ~"Continue…"~ */ GOTO 37
  IF ~~ THEN REPLY #32032 /* ~"Je crois comprendre les rudiments, Eli. Passons à l'entraînement."~ */ GOTO 39
END

IF ~~ THEN BEGIN 37 // from: 36.0
  SAY #31918 /* ~"Si un éclaireur *trouve* un tel piège, il doit choisir entre le contourner ou le désarmer. Il doit toutefois prendre les plus grandes précautions avant d'essayer de désarmer un piège, car il y a de grandes chances qu'il soit activé par ses manipulations."~ */
  IF ~~ THEN REPLY #32033 /* ~"Continue…"~ */ GOTO 38
END

IF ~~ THEN BEGIN 38 // from: 37.0
  SAY #31919 /* ~"La dernière chose que je t'enseignerai est le mouvement ultime de l'éclaireur… la frappe dans le dos. Si un éclaireur rencontre et attaque un ennemi alors qu'il est caché, son premier coup sera plus précis et frappera plus fort. Plus un éclaireur prend de l'expérience, plus il devient dangereux lorsqu'il frappe dans l'ombre. Rappelle-toi, toutefois… un éclaireur qui attaque depuis sa cachette se révèle à ses ennemis."~ */
  IF ~~ THEN REPLY #32034 /* ~"Très bien, Eli. Passons à l'entraînement."~ */ GOTO 39
END

IF ~~ THEN BEGIN 39 // from: 32.1 33.1 35.1 36.1 38.0
  SAY #31920 /* ~Eli acquiesce. "D'accord, matois… tout d'abord, il faut que tu te décontractes. Tu es trop tendu. Il va falloir que tu laisses parfois ton instinct prendre le dessus, que tu te fies à tes intuitions…"

Et ton entraînement de voleur débute.~ */
  IF ~  CheckStatLT(Protagonist,13,DEX)
~ THEN REPLY #32035 /* ~Apprends tout ce que tu peux.~ */ DO ~FadeToColor([20.0],0)
Wait(3)
FadeFromColor([20.0],0)
SetGlobal("Thief_Training","GLOBAL",1)
GiveExperience(Protagonist,2500)
PermanentStatChange(Protagonist,STEALTH,RAISE,17)
PermanentStatChange(Protagonist,TRAPS,RAISE,13)
PermanentStatChange(Protagonist,PICKPOCKET,RAISE,22)
PermanentStatChange(Protagonist,LOCKPICKING,RAISE,18)
~ JOURNAL #39473 /* ~J'ai été formé au métier de voleur par un dénommé Eli Havelock, chargé de l'apprentissage des "éclaireurs" (comme il dit) à la Salle des Fêtes.~ */ GOTO 41
  IF ~  CheckStatGT(Protagonist,12,DEX)
CheckStatLT(Protagonist,16,DEX)
~ THEN REPLY #32036 /* ~Apprends tout ce que tu peux.~ */ DO ~FadeToColor([20.0],0)
Wait(3)
FadeFromColor([20.0],0)
SetGlobal("Thief_Training","GLOBAL",1)
GiveExperience(Protagonist,3125)
PermanentStatChange(Protagonist,STEALTH,RAISE,17)
PermanentStatChange(Protagonist,TRAPS,RAISE,13)
PermanentStatChange(Protagonist,PICKPOCKET,RAISE,22)
PermanentStatChange(Protagonist,LOCKPICKING,RAISE,18)
~ JOURNAL #39473 /* ~J'ai été formé au métier de voleur par un dénommé Eli Havelock, chargé de l'apprentissage des "éclaireurs" (comme il dit) à la Salle des Fêtes.~ */ GOTO 42
  IF ~  CheckStatGT(Protagonist,15,DEX)
CheckStatLT(Protagonist,18,DEX)
~ THEN REPLY #32037 /* ~Apprends tout ce que tu peux.~ */ DO ~FadeToColor([20.0],0)
Wait(3)
FadeFromColor([20.0],0)
SetGlobal("Thief_Training","GLOBAL",1)
GiveExperience(Protagonist,3438)
PermanentStatChange(Protagonist,STEALTH,RAISE,17)
PermanentStatChange(Protagonist,TRAPS,RAISE,13)
PermanentStatChange(Protagonist,PICKPOCKET,RAISE,22)
PermanentStatChange(Protagonist,LOCKPICKING,RAISE,18)
~ JOURNAL #39473 /* ~J'ai été formé au métier de voleur par un dénommé Eli Havelock, chargé de l'apprentissage des "éclaireurs" (comme il dit) à la Salle des Fêtes.~ */ GOTO 43
  IF ~  CheckStatGT(Protagonist,17,DEX)
~ THEN REPLY #32038 /* ~Apprends tout ce que tu peux.~ */ DO ~FadeToColor([20.0],0)
Wait(3)
FadeFromColor([20.0],0)
SetGlobal("Thief_Training","GLOBAL",1)
GiveExperience(Protagonist,3750)
PermanentStatChange(Protagonist,STEALTH,RAISE,17)
PermanentStatChange(Protagonist,TRAPS,RAISE,13)
PermanentStatChange(Protagonist,PICKPOCKET,RAISE,22)
PermanentStatChange(Protagonist,LOCKPICKING,RAISE,18)
~ JOURNAL #39473 /* ~J'ai été formé au métier de voleur par un dénommé Eli Havelock, chargé de l'apprentissage des "éclaireurs" (comme il dit) à la Salle des Fêtes.~ */ GOTO 43
END

IF ~~ THEN BEGIN 40 // from: 27.0 28.0
  SAY #31921 /* ~Eli secoue la tête. "Maintenant, tu comprends qu'il faut que tu abandonnes ta profession actuelle, d'accord ? Es-tu prêt à le faire ?"~ */
  IF ~~ THEN REPLY #32039 /* ~"Oui."~ */ DO ~FadeToColor([20.0],0)
Wait(2)
FadeFromColor([20.0],0)
SetNamelessClass(THIEF)
~ GOTO 32
  IF ~~ THEN REPLY #32040 /* ~"Non, il ne vaut mieux pas. Peut-être une autre fois… Au revoir, Eli."~ */ EXIT
END

IF ~~ THEN BEGIN 41 // from: 39.0
  SAY #31922 /* ~Après une longue période d'entraînement, Eli te fait un signe de tête satisfait. "Je dois avouer, matois - j'ai jamais rencontré quelqu'un qui apprenne aussi vite que toi. C'est à croire que tu as fait ça toute ta vie !"~ */
  IF ~~ THEN REPLY #32041 /* ~"Peut-être, Eli. Et peut-être que j'avais oublié, tout simplement. Merci et au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 42 // from: 39.1
  SAY #31923 /* ~Après une longue période d'entraînement, Eli te fait un signe de tête satisfait. "Je dois avouer, matois - j'ai jamais rencontré quelqu'un qui apprenne aussi vite que toi. C'est à jurer que tu as fait ça toute ta vie !" Alors qu'Eli parle, tu réalises que tu as *déjà* fait cela auparavant… qu'il fut un temps où tu maîtrisais toutes ces techniques, et que l'entraînement les a ravivées.~ */
  IF ~~ THEN REPLY #32042 /* ~"Peut-être, Eli. Et peut-être que j'avais oublié, tout simplement. Merci et au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 43 // from: 39.2 39.3
  SAY #31924 /* ~Après une longue période d'entraînement, Eli te fait un signe de tête satisfait. "Je dois avouer, matois - j'ai jamais rencontré quelqu'un qui apprenne aussi vite que toi. C'est à croire que tu as fait ça toute ta vie !" Alors qu'Eli parle, tu réalises que tu as *déjà* fait cela auparavant… qu'il fut un temps où tu maîtrisais toutes ces techniques.~ */
  IF ~~ THEN REPLY #32043 /* ~"Peut-être, Eli. Et peut-être que j'avais oublié, tout simplement. Merci et au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 44 // from:
  SAY #31925 /* ~Alors que des souvenirs de dissimulation dans des corridors sombres et de tentatives de déjouer des pièges mortels te reviennent à l'esprit, tu arrives à te 'rappeler' assez pour en 'apprendre' plus que ce qu'Eli t'a enseigné.~ */
  IF ~~ THEN REPLY #32044 /* ~Pars.~ */ EXIT
END

IF ~~ THEN BEGIN 45 // from: 25.2 49.2
  SAY #31926 /* ~"J'ai peu à t'apprendre si on t'a déjà entraîné, matois. Si tu t'es toutefois éloigné du chemin des éclaireurs, je peux toujours te montrer comment y revenir."~ */
  IF ~  !Class(Protagonist,THIEF)
~ THEN REPLY #32045 /* ~"J'aimerais de nouveau emprunter la voie du subterfuge, Eli."~ */ GOTO 46
  IF ~~ THEN REPLY #32046 /* ~"Je comprends. Au revoir, Eli."~ */ EXIT
END

IF ~~ THEN BEGIN 46 // from: 45.0
  SAY #31927 /* ~"Bien, tu comprends qu'il faut que tu abandonnes ta profession actuelle, d'accord ? Es-tu prêt à le faire ?"~ */
  IF ~  Class(Protagonist,FIGHTER)
~ THEN REPLY #32047 /* ~"Oui, je ne veux plus être guerrier."~ */ GOTO 47
  IF ~  Class(Protagonist,MAGE)
~ THEN REPLY #32048 /* ~"Oui. Je ne veux plus devenir mage."~ */ GOTO 47
  IF ~~ THEN REPLY #32049 /* ~"En fait, pas encore. Au revoir, Eli."~ */ EXIT
END

IF ~~ THEN BEGIN 47 // from: 46.0 46.1
  SAY #31928 /* ~"Bien, bien ! Allons nous entraîner, dans ce cas-là… redonner du mordant à tes dons négligés !"~ */
  IF ~~ THEN REPLY #32050 /* ~Entraîne-toi encore à devenir Voleur.~ */ DO ~FadeToColor([20.0],0)
Wait(2)
FadeFromColor([20.0],0)
SetNamelessClass(THIEF)
~ GOTO 48
END

IF ~~ THEN BEGIN 48 // from: 47.0
  SAY #31929 /* ~"T'apprends vite, matois, il faut l'avouer." Il te regarde curieusement, à travers les fentes noires de ses yeux, puis secoue la tête. "Bien, c'est tout- tu es prêt."~ */
  IF ~~ THEN REPLY #32051 /* ~"Merci, Eli. Au revoir."~ */ EXIT
END

IF WEIGHT #7 /* Triggers after states #: 51 50 even though they appear after this state */
~  Global("Eli","GLOBAL",5)
~ THEN BEGIN 49 // from:
  SAY #31930 /* ~Eli s'arrête et te fait un signe de la tête. "Alors, matois. Besoin de quelque chose ?"~ */
  IF ~  Global("CW_Qui_Question","GLOBAL",1)
Global("CW_Eli_Ans","GLOBAL",0)
~ THEN REPLY #32052 /* ~"Qui-Sai ne veut pas m'entraîner à être guerrier… Il dit que je pourrais juste voler les armes des adversaires pour les laisser sans défenses. Qu'est-ce que tu en penses ?"~ */ DO ~SetGlobal("CW_Eli_Ans","GLOBAL",1)
AddexperienceParty(250)
~ GOTO 54
  IF ~  Global("CW_Qui_Question","GLOBAL",2)
GlobalLT("CW_Eli_Ans","GLOBAL",2)
~ THEN REPLY #32053 /* ~"Qui-Sai ne veut toujours pas m'entraîner à être guerrier… Il dit que je pourrais me cacher des ennemis, et ainsi devenir invulnérable. Qu'est-ce que tu en penses ?"~ */ DO ~SetGlobal("CW_Eli_Ans","GLOBAL",2)
AddexperienceParty(250)
~ GOTO 55
  IF ~  GlobalGT("Thief_Training","GLOBAL",0)
~ THEN REPLY #64675 /* ~"Oui… Je voudrais encore m'entraîner avec toi."~ */ GOTO 45
  IF ~  Global("Thief_Training","GLOBAL",0)
~ THEN REPLY #64676 /* ~"Oui… Je voudrais encore m'entraîner avec toi."~ */ GOTO 26
  IF ~~ THEN REPLY #32054 /* ~"Non… Je ne faisais que passer. Au revoir, Eli."~ */ EXIT
END

IF WEIGHT #0 ~  Global("CW_PP_Eli","GLOBAL",1)
!Global("Eli","GLOBAL",4)
~ THEN BEGIN 50 // from:
  SAY #31931 /* ~L'homme pointe brusquement le doigt à ton visage. "Fais gaffe, bige…la plupart des affranchis te tueraient ou appelleraient les têtes de bois pour ça. Maintenant, va caguer avant que je change d'avis et décide de sortir ma lame."~ */
  IF ~~ THEN REPLY #32055 /* ~"Vas-y, sors ton épée : je te la planterai dans le crâne."~ */ DO ~SetGlobal("CW_PP_Eli","GLOBAL",0)
Enemy()
ForceAttack(Protagonist,Myself)
~ EXIT
  IF ~~ THEN REPLY #32056 /* ~Pars.~ */ DO ~SetGlobal("CW_PP_Eli","GLOBAL",0)
~ EXIT
END

IF WEIGHT #1 ~  Global("CW_PP_Eli","GLOBAL",1)
Global("Eli","GLOBAL",4)
~ THEN BEGIN 51 // from:
  SAY #31932 /* ~Eli rit amèrement, secouant la tête. "Bien tenté, matois… pas mal du tout."~ */
  IF ~  Class(Protagonist,THIEF)
Global("CW_PP_Training","AR0601",0)
~ THEN REPLY #32057 /* ~"Euh… Merci."~ */ DO ~SetGlobal("CW_PP_Eli","GLOBAL",0)
SetGlobal("CW_PP_Training","AR0601",1)
PermanentStatChange(Protagonist,PICKPOCKET,RAISE,5)
~ GOTO 52
  IF ~  !Class(Protagonist,THIEF)
~ THEN REPLY #32058 /* ~"Euh… merci."~ */ DO ~SetGlobal("CW_PP_Eli","GLOBAL",0)
~ GOTO 53
  IF ~  Class(Protagonist,THIEF)
Global("CW_PP_Training","AR0601",1)
~ THEN REPLY #32059 /* ~"Euh… merci."~ */ DO ~SetGlobal("CW_PP_Eli","GLOBAL",0)
~ GOTO 53
END

IF ~~ THEN BEGIN 52 // from: 51.0
  SAY #26793 /* ~"Il faut que tes mains bougent plus vite. Dans les poches, hors des poches… ou tu vas te faire rectifier à coup sûr."~ */
  IF ~~ THEN REPLY #32060 /* ~"Merci, Eli. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 53 // from: 51.1 51.2
  SAY #31934 /* ~"Ouais, ouais… maintenant arrête ça, avant de commencer à m'énerver."~ */
  IF ~~ THEN REPLY #32061 /* ~"Au revoir, Eli."~ */ EXIT
END

IF ~~ THEN BEGIN 54 // from: 4.2 20.0 22.0 25.0 49.0
  SAY #31935 /* ~Il secoue la tête. "Pas vrai, matois. Même moi je dois avouer que la bataille doit toujours avoir lieu. Ne compter que sur le vol est une erreur."~ */
  IF ~~ THEN REPLY #32062 /* ~"Merci, Eli. Au revoir."~ */ DO ~SetGlobal("CW_Eli_Ans","GLOBAL",2)
~ JOURNAL #66575 /* ~Qui-Sai a de nouveau refusé de me former à la carrière de guerrier, arguant du fait qu'un voleur était plus puissant car il pouvait éviter le combat en dérobant les armes de l'adversaire. Mais je suis allé m'entretenir avec Eli Havelock, qui forme les voleurs à la Salle des Fêtes, et ce dernier m'a expliqué que s'appuyer sur des dons de voleur était une grave erreur quand il fallait tout de même mener le combat. Enfin, il a ajouté que la discrétion et la furtivité n'étaient pas tout, car certaines créatures remarquent tout ce qui se passent à côté d'elles. Voilà qui devrait me permettre de réfuter l'argument de Qui-Sai.~ */ GOTO 56
END

IF ~~ THEN BEGIN 55 // from: 4.3 20.1 22.1 25.1 49.1
  SAY #31936 /* ~Il secoue la tête. "Aucun éclaireur, pas même moi, n'a maîtrisé la discrétion à un tel niveau. Et il y a certains ennemis dont tu ne peux tout simplement te cacher ; ton odeur ou même tes pensées te trahiront."~ */
  IF ~~ THEN REPLY #32063 /* ~"Merci, Eli. Au revoir."~ */ JOURNAL #66576 /* ~Qui-Sai a de nouveau refusé de me former à la carrière de guerrier, arguant du fait qu'un voleur était invulnérable car il pouvait éviter tout combat en se cachant de l'adversaire. Mais je suis allé m'entretenir avec Eli Havelock, qui forme les voleurs à la Salle des Fêtes, et ce dernier m'a expliqué que la discrétion et la furtivité n'étaient pas tout, car certaines créatures remarquent tout ce qui se passent à côté d'elles. Voilà qui devrait me permettre de réfuter l'argument de Qui-Sai.~ */ EXIT
END

IF ~~ THEN BEGIN 56 // from: 54.0
  SAY #65166 /* ~"Attends : si Qui-Sai fait ce que je pense, il ne va pas se contenter de ça. S'il te tanne avec ses histoires de furtivité, dis-lui qu'aucun éclaireur, pas même moi, n'a jamais fait preuve d'un tel degré de furtivité. Il y a des ennemis dont on ne peut pas se cacher, car notre odeur ou même nos pensées nous trahissent." ~ */
  IF ~~ THEN REPLY #65167 /* ~"Je pige. Merci encore. Au revoir." ~ */ EXIT
END
