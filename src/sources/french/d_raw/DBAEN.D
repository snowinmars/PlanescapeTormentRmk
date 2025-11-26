// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DBAEN.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\fr_FR\dialog.tlk
// dialogF  : (none)

BEGIN ~DBAEN~

IF ~  Global("Baen","GLOBAL",0)
~ THEN BEGIN 0 // from:
  SAY #21485 /* ~Tu aperçois un homme fort aux traits nets, la douleur se lit sur son visage. Malgré sa carrure, il y a quelque chose d'efféminé en lui, et, contrairement aux autres habitants que tu as déjà vus, il semblerait qu'il se soit lavé récemment. Alors que tu approches, il lève le regard avec espoir, et clame d'une voix haut perchée : "Craddock… mon bon maître ?"~ */
  IF ~~ THEN REPLY #21486 /* ~"Quoi ?"~ */ DO ~SetGlobal("Baen","GLOBAL",1)
~ GOTO 1
  IF ~~ THEN REPLY #22732 /* ~Ignore l'homme, passe ton chemin.~ */ DO ~SetGlobal("Baen","GLOBAL",1)
~ GOTO 2
END

IF ~~ THEN BEGIN 1 // from: 0.0 2.0
  SAY #22733 /* ~"Hé…" Son expression d'espoir disparaît tandis qu'il observe ton visage. "Mille excuses, mon bon monsieur, si je vous ai offensé." Il s'incline légèrement. "On m'appelle Baen l'Expéditeur, troisième enfant de Dai'Baen l'Expéditeur. Je suis l'un des nombreux coursiers de la Maison des Expéditeurs."~ */
  IF ~~ THEN REPLY #22734 /* ~"Pas besoin de t'excuser, Baen. Que veux-tu ?"~ */ GOTO 4
  IF ~~ THEN REPLY #22735 /* ~"Tu ne m'as pas offensé… Pas encore. Qu'est-ce que tu veux ?"~ */ GOTO 4
  IF ~~ THEN REPLY #22736 /* ~"Écoute, je dois partir, Baen…"~ */ GOTO 3
END

IF ~~ THEN BEGIN 2 // from: 0.1
  SAY #22737 /* ~Tandis que tu t'apprêtes à continuer ton chemin, l'homme t'appelle, plus fortement cette fois-ci. Sa voix couine presque sous l'effort. "Craddock ?! Mon bon monsieur, je suis porteur d'un message pour vous !"~ */
  IF ~~ THEN REPLY #22738 /* ~"De quoi parles-tu ?"~ */ GOTO 1
END

IF ~~ THEN BEGIN 3 // from: 1.2
  SAY #22739 /* ~"Accordez-moi un peu de votre temps, mon bon monsieur. Je suis à la recherche d'un contremaître, Craddock, qu'on dit pouvoir trouver dans la Ruche, mais hélas… il m'échappe. Avez-vous entendu parler d'un tel homme ?"~ */
  IF ~~ THEN REPLY #22740 /* ~"Non."~ */ GOTO 5
  IF ~~ THEN REPLY #22741 /* ~"Désolé…"~ */ GOTO 5
END

IF ~~ THEN BEGIN 4 // from: 1.0 1.1
  SAY #22742 /* ~"Mille excuses de vous troubler ainsi avec une affaire si triviale, mais je recherche Craddock, un contremaître de la Ruche…" Baen a l'air de souffrir. "Mais hélas, il m'échappe." Il te regarde à nouveau avec espoir. "Serait-il possible que vous ayez entendu parler d'un tel homme ?"~ */
  IF ~~ THEN REPLY #22743 /* ~"Non."~ */ GOTO 5
  IF ~~ THEN REPLY #22744 /* ~"Désolé, non."~ */ GOTO 5
END

IF ~~ THEN BEGIN 5 // from: 3.0 3.1 4.0 4.1
  SAY #22745 /* ~Baen pousse un profond soupir. "Je suis tenu de lui délivrer ce message en personne, mais pour l'instant la chance ne m'a guère souri…"~ */
  IF ~~ THEN REPLY #22746 /* ~"Je pourrais peut-être t'aider… si je rencontre cet homme, je lui transmettrai ton message."~ */ DO ~IncrementGlobalOnceEx("GLOBALGood_Baen_1","GLOBALGood",1)
~ GOTO 7
  IF ~~ THEN REPLY #22747 /* ~"Je pourrai peut-être le trouver et lui remettre ton message… mais tout a un prix."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Baen_1","GLOBALGood",-1)
~ GOTO 8
  IF ~~ THEN REPLY #22748 /* ~"J'peux pas t'aider… écoute, il faut que je parte."~ */ GOTO 6
END

IF ~~ THEN BEGIN 6 // from: 5.2
  SAY #22749 /* ~"Bien sûr, mon bon monsieur, mille excuses de vous avoir retardé." Baen secoue la tête. "Merci de votre temps."~ */
  IF ~~ THEN REPLY #22750 /* ~"Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 7 // from: 5.0 12.0
  SAY #22751 /* ~Le visage de Baen s'éclaire comme une lanterne. "Oh, quel jour glorieux pour Baen et la Maison des Messagers ! Toute aide que vous pourrez apporter est la bienvenue ! Si vous pouvez trouver ce Craddock et lui délivrer ce message, je veillerai à ce que vous soyez récompensé pour vos efforts."~ */
  IF ~~ THEN REPLY #22752 /* ~"Très bien… quel est le message ?"~ */ GOTO 9
END

IF ~~ THEN BEGIN 8 // from: 5.1 12.1
  SAY #22753 /* ~Le visage de Baen s'éclaire comme une lanterne. "Bien entendu, mon bon monsieur. Si vous pouvez trouver ce Craddock et lui transmettre ce message, je vous récompenserai pour vos efforts."~ */
  IF ~~ THEN REPLY #22754 /* ~"Très bien… quel est le message ?"~ */ GOTO 9
END

IF ~~ THEN BEGIN 9 // from: 7.0 8.0
  SAY #22755 /* ~Baen lit le message presque comme un mantra : *"La cargaison doit arriver à Maudith avant le troisième jour ou une pénalité sera encourue."* Baen fronce les sourcils. "On m'a dit que Craddock sait de quelle 'cargaison' il s'agit."~ */
  IF ~~ THEN REPLY #22756 /* ~"Si je vois Craddock, je lui transmettrai le message. As-tu autre chose à me dire sur lui avant que je parte, et qui pourrait m'aider dans mes recherches ?"~ */ DO ~SetGlobal("Baen_Quest","GLOBAL",1)
~ GOTO 10
END

IF ~~ THEN BEGIN 10 // from: 9.0 13.1
  SAY #22757 /* ~"On dit de lui qu'il est un *géant*, aux traits austères. On dit aussi qu'il est contremaître sur l'un des marchés de la Ruche. Hélas, je n'en sais pas plus, mon bon monsieur."~ */
  IF ~~ THEN REPLY #22758 /* ~"Je vois. Ça devrait suffire pour l'instant."~ */ GOTO 11
END

IF ~~ THEN BEGIN 11 // from: 10.0
  SAY #22759 /* ~Baen s'incline. "Merci, monsieur. Si la chance vous sourit et que vous réussissez à porter le message à Craddock, soyez gentil de revenir me le dire. Je veillerai à ce que vos efforts soient récompensés."~ */
  IF ~~ THEN REPLY #22760 /* ~"Très bien. Au revoir, Baen."~ */ JOURNAL #22761 /* ~J'ai accepté de transmettre le message à Craddock si je le voyais. Baen m'a dit qu'il était contremaître sur un marché de la Ruche. Je vais ouvrir l'œil.~ */ EXIT
END

IF ~  GlobalGT("Baen","GLOBAL",0)
Global("Baen_Quest","GLOBAL",0)
~ THEN BEGIN 12 // from:
  SAY #22762 /* ~Tu aperçois Baen l'Expéditeur. Tandis que tu approches, il te regarde avec espoir… mais ne t'adresse pas la parole.~ */
  IF ~~ THEN REPLY #22763 /* ~"Écoute, t'as encore besoin d'un coup de main pour trouver…Craddock, c'est ça ? Si t'as besoin d'un coup de main pour le trouver, je t'aiderai."~ */ DO ~IncrementGlobalOnceEx("GLOBALGood_Baen_1","GLOBALGood",1)
~ GOTO 7
  IF ~~ THEN REPLY #22764 /* ~"J'ai changé d'avis. Je vais t'aider à trouver ce Craddock… mais tout a un prix."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Baen_1","GLOBALGood",-1)
~ GOTO 8
  IF ~~ THEN REPLY #22765 /* ~Ignore-le.~ */ EXIT
END

IF ~  GlobalGT("Baen","GLOBAL",0)
GlobalGT("Baen_Quest","GLOBAL",0)
GlobalLT("Baen_Quest","GLOBAL",3)
~ THEN BEGIN 13 // from:
  SAY #22766 /* ~Tu aperçois Baen l'Expéditeur. Alors que tu approches, il te regarde avec espoir. "Avez-vous réussi à trouver Craddock, mon bon monsieur ?"~ */
  IF ~  Global("Baen_Quest","GLOBAL",2)
~ THEN REPLY #22767 /* ~"Oui et je lui ai transmis ton message, mais ça n'a pas eu l'air de lui plaire."~ */ DO ~SetGlobal("Baen_Quest","GLOBAL",3)
AddexperienceParty(500)
~ JOURNAL #22770 /* ~Je suis retourné dire à Baen que j'avais transmis le message à Craddock. Il était content et m'a récompensé en me remettant une petite somme de cuivre. Pas mal payé pour transmettre un message à quelqu'un.~ */ GOTO 14
  IF ~~ THEN REPLY #22768 /* ~"Pas encore, Baen. Que peux-tu encore me dire sur lui ?"~ */ GOTO 10
  IF ~~ THEN REPLY #22769 /* ~"Non… je suis toujours à sa recherche. Je reviendrai si je le trouve."~ */ EXIT
END

IF ~~ THEN BEGIN 14 // from: 13.0
  SAY #22771 /* ~Baen ne semble pas avoir entendu un seul mot après le *oui*, car il sourit et soupire de soulagement. "Quelle chance ! Merci, mon bon monsieur, merci." Il fouille dans sa robe et en sort une poignée de pièces, qu'il compte, puis te tend.~ */
  IF ~  CheckStatLT(Protagonist,11,CHR)
~ THEN REPLY #22772 /* ~"Quinze pièces pour transmettre un message, hein ? C'est bien."~ */ DO ~GivePartyGold(15)
~ GOTO 15
  IF ~  CheckStatGT(Protagonist,10,CHR)
CheckStatLT(Protagonist,14,CHR)
~ THEN REPLY #22773 /* ~"Trente pièces pour transmettre un message, hein ? C'est bien."~ */ DO ~GivePartyGold(30)
~ GOTO 15
  IF ~  CheckStatGT(Protagonist,13,CHR)
~ THEN REPLY #22774 /* ~"Quarante-cinq pièces pour transmettre un message, hein ? C'est bien."~ */ DO ~GivePartyGold(45)
~ GOTO 15
END

IF ~~ THEN BEGIN 15 // from: 14.0 14.1 14.2
  SAY #22775 /* ~"Oh, *plus* que bien, mon bon monsieur, plus que bien ! Je peux dire sans hésiter qu'il n'y a pas de plus honorable profession sur Sigil que celle des courriers de la Maison des Messagers !"~ */
  IF ~~ THEN REPLY #22776 /* ~"Je m'en souviendrai. Au revoir, Baen."~ */ EXIT
END

IF ~  GlobalGT("Baen","GLOBAL",0)
Global("Baen_Quest","GLOBAL",3)
~ THEN BEGIN 16 // from:
  SAY #22777 /* ~Tu aperçois Baen l'Expéditeur. Alors que tu t'approches, il te salue avec respect. "Content de vous revoir, mon bon monsieur. Mille mercis de m'avoir aidé à chercher Craddock et de lui avoir délivré le message."~ */
  IF ~~ THEN REPLY #22778 /* ~"Pas de problème. Au revoir, Baen."~ */ EXIT
END
