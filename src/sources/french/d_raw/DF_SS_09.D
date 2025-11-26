// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DF_SS_09.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\fr_FR\dialog.tlk
// dialogF  : (none)

BEGIN ~DF_SS_09~

IF ~  !Global("S_Stone","AR0603",16)
!Global("S_Stone","AR0603",19)
~ THEN BEGIN 0 // from:
  SAY #34220 /* ~Voici une pierre violette peu commune. Elle est solidement attachée au piédestal sur lequel elle repose.~ */
  IF ~~ THEN REPLY #47529 /* ~Pars.~ */ EXIT
END

IF ~  Global("S_Stone","AR0603",19)
~ THEN BEGIN 1 // from:
  SAY #47530 /* ~C'est vers cette pierre violette que l'employé t'a envoyé. Elle recèle l'expérience intitulée 'le plus grand des secrets'.~ */
  IF ~~ THEN REPLY #47531 /* ~Laisse les sensations affluer.~ */ GOTO 2
  IF ~~ THEN REPLY #47532 /* ~Pars.~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.0
  SAY #47533 /* ~Six serviteurs impériaux se précipitent devant toi pour ouvrir en grand les portes d'or du Palais du Dragon. "Longue vie à l'impératrice !" s'exclament-ils à l'unisson. "Un millier d'années ! Longue vie à l'impératrice ! Un millier d'années !"~ */
  IF ~~ THEN REPLY #47534 /* ~Poursuis l'expérience.~ */ GOTO 3
  IF ~~ THEN REPLY #47535 /* ~Interromps l'expérience et va-t'en.~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 2.0
  SAY #47536 /* ~De l'autre côté de la porte, plusieurs dizaines de chefs de guerre loyaux, tous aussi puissants que des rois, s'agenouillent et touchent le sol de leur front alors que tu passes devant eux pour te rendre au trône impérial.~ */
  IF ~~ THEN REPLY #47537 /* ~Poursuis l'expérience.~ */ GOTO 4
  IF ~~ THEN REPLY #47538 /* ~Interromps l'expérience et va-t'en.~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 3.0
  SAY #47539 /* ~Une fois assise sur le trône impérial, tu observes tes serviteurs en te permettant un petit sourire de satisfaction qui ne nuira pas à la perfection de ton maquillage. En ce moment, tu ne penses qu'à une seule et unique chose :~ */
  IF ~~ THEN REPLY #47540 /* ~Poursuis l'expérience.~ */ GOTO 5
  IF ~~ THEN REPLY #47541 /* ~Interromps l'expérience et va-t'en.~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 4.0
  SAY #47542 /* ~… au corps de la jeune impératrice Wu Tsun Sha, qui gît brisé et sans vie au fond du Puits de la Solitude, alors que toi, Bai Hwa, fille d'un humble marchand de chevaux, tu te prépares à secouer les fondements de l'empire et de la dynastie corrompue des Wu.~ */
  IF ~  Global("Sensation19","AR0603",0)
~ THEN REPLY #47543 /* ~Reprends tes esprits.~ */ DO ~SetGlobal("Sensation19","AR0603",1)
GiveExperience(Protagonist,1500)
~ GOTO 10
  IF ~  Global("Sensation19","AR0603",1)
~ THEN REPLY #47544 /* ~Reprends tes esprits et va-t'en.~ */ EXIT
END

IF ~  Global("S_Stone","AR0603",16)
~ THEN BEGIN 6 // from:
  SAY #47545 /* ~C'est vers cette pierre violette que l'employé t'a envoyé. Elle recèle l'expérience intitulée 'le choc et la terrible vengeance'.~ */
  IF ~~ THEN REPLY #47546 /* ~Laisse les sensations affluer.~ */ GOTO 7
  IF ~~ THEN REPLY #47547 /* ~Pars.~ */ EXIT
END

IF ~~ THEN BEGIN 7 // from: 6.0
  SAY #47548 /* ~Tu te trouves au fin fond des plans, dans un lieu où le sol est de cuivre et le ciel d'airain. Les corps des pécheurs - les suppliants de cet horrible endroit - sont ici broyés contre les buissons de fer et les scorpions de bronze jusqu'à ce que leurs os ne soient plus que fine poussière.~ */
  IF ~~ THEN REPLY #47549 /* ~Poursuis l'expérience.~ */ GOTO 8
  IF ~~ THEN REPLY #47550 /* ~Interromps l'expérience et va-t'en.~ */ EXIT
END

IF ~~ THEN BEGIN 8 // from: 7.0
  SAY #47551 /* ~Tu plisses les yeux pour mieux voir l'horizon, en ignorant l'odeur de la poussière d'ossements et les cris d'agonie des mourants charriés par le vent. À perte de vue, le paysage est plat et métallique. La poussière est partout, en tout… elle te pique les yeux et t'obstrue la gorge. Tu craches et tentes de l'extraire avec tes doigts, mais il est déjà trop tard : tes papilles gustatives auront toujours son horrible goût en mémoire.~ */
  IF ~~ THEN REPLY #47552 /* ~Poursuis l'expérience.~ */ GOTO 9
  IF ~~ THEN REPLY #47553 /* ~Interromps l'expérience et va-t'en.~ */ EXIT
END

IF ~~ THEN BEGIN 9 // from: 8.0
  SAY #47554 /* ~Tu regardes la 'clé' que tu tiens en main - un minuscule orbe de platine - et tu te représentes les traits de l'homme qui t'a solennellement juré que le portail magique par lequel tu viens de passer - et qui a depuis disparu, comme de bien entendu - te conduirait aux vertes prairies de Bytopie. Mais, par tous les dieux, il faudra bien que quelqu'un paye…~ */
  IF ~  Global("Sensation16","AR0603",0)
~ THEN REPLY #47555 /* ~Reprends tes esprits.~ */ DO ~SetGlobal("Sensation16","AR0603",1)
GiveExperience(Protagonist,1500)
~ GOTO 10
  IF ~  Global("Sensation16","AR0603",1)
~ THEN REPLY #47556 /* ~Reprends tes esprits et va-t'en.~ */ EXIT
END

IF ~~ THEN BEGIN 10 // from: 5.0 9.0
  SAY #47557 /* ~L'expérience te rappelle un événement vaguement familier. Tu as la très nette impression que l'utilisation de cette pierre sensorielle t'a été bénéfique.~ */
  IF ~~ THEN REPLY #47558 /* ~Pars.~ */ EXIT
END
