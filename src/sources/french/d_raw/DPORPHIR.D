// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DPORPHIR.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\fr_FR\dialog.tlk
// dialogF  : (none)

BEGIN ~DPORPHIR~

IF ~  Global("Porphiron","GLOBAL",0)
~ THEN BEGIN 0 // from:
  SAY #25992 /* ~La peau de cet homme est couverte d'un réseau de lignes noires, comme si quelque artiste avait choisi d'accentuer les plis de sa chair avec une plume. L'effet est tel que lorsque son visage n'exprime aucune expression, il semble pourtant renfrogné.~ */
  IF ~~ THEN REPLY #25993 /* ~"Bonjour."~ */ DO ~SetGlobal("Porphiron","GLOBAL",1)
~ GOTO 4
  IF ~~ THEN REPLY #25994 /* ~Laisse l'homme tatoué tranquille.~ */ EXIT
END

IF ~  GlobalGT("Porphiron","GLOBAL",0)
~ THEN BEGIN 1 // from:
  SAY #26633 /* ~Tu aperçois Porphiron ; il est dans la rue, toujours immobile, l'air mécontent, ignorant les passants. L'entrelacs de lignes de son visage se rejoint en une série d'angles droits.~ */
  IF ~  Global("Porphiron_Quest","GLOBAL",0)
CheckStatLT(Protagonist,11,CHR)
~ THEN REPLY #26686 /* ~"Bonjour, Porphiron. Je peux te poser quelques questions ?"~ */ GOTO 5
  IF ~  Global("Porphiron_Quest","GLOBAL",1)
CheckStatLT(Protagonist,11,CHR)
~ THEN REPLY #26687 /* ~"Bonjour, Porphiron."~ */ GOTO 2
  IF ~  Global("Porphiron_Quest","GLOBAL",2)
CheckStatLT(Protagonist,11,CHR)
~ THEN REPLY #26688 /* ~"Bonjour, Porphiron. Je peux te poser quelques questions ?"~ */ GOTO 3
  IF ~  Global("Porphiron_Quest","GLOBAL",0)
CheckStatGT(Protagonist,10,CHR)
~ THEN REPLY #26689 /* ~"Il faut que je te demande quelque chose, Porphiron : je peux te poser quelques questions ?"~ */ GOTO 5
  IF ~  Global("Porphiron_Quest","GLOBAL",1)
CheckStatGT(Protagonist,10,CHR)
~ THEN REPLY #26690 /* ~"Il faut que je te demande quelque chose, Porphiron."~ */ GOTO 2
  IF ~  Global("Porphiron_Quest","GLOBAL",2)
CheckStatGT(Protagonist,10,CHR)
~ THEN REPLY #26691 /* ~"Il faut que je te demande quelque chose, Porphiron : je peux te poser quelques questions ?"~ */ GOTO 3
  IF ~~ THEN REPLY #26692 /* ~Laisse Porphiron tranquille.~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.1 1.4
  SAY #26634 /* ~Alors que tu parles, les angles de son visage se détendent pour former une série d'étranges courbes. "Celui-ci demanderait : as-tu la cordelette de perles qui a été volée ?"~ */
  IF ~  PartyHasItem("PorNeck")
~ THEN REPLY #26694 /* ~"Je crois. C'est ça ?"~ */ DO ~TakePartyItemNum("PorNeck",1)
~ JOURNAL #26697 /* ~Après avoir repris le chapelet de Porphiron des mains des sicaires à l'extérieur du Cadavre fumant, je le lui ai rapporté.~ */ GOTO 24
  IF ~  !PartyHasItem("PorNeck")
~ THEN REPLY #26695 /* ~"Pas encore… Où est-ce qu'il a été volé déjà ?"~ */ GOTO 23
  IF ~  !PartyHasItem("PorNeck")
~ THEN REPLY #26696 /* ~"Pas pour le moment. Je vais continuer à chercher, et je reviendrai."~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 1.2 1.5
  SAY #26635 /* ~"Celui-ci attend : quelle question veux-tu poser ?"~ */
  IF ~  Class(Protagonist,FIGHTER)
~ THEN REPLY #26698 /* ~"Tu peux m'apprendre à devenir un guerrier ?"~ */ GOTO 35
  IF ~  !Class(Protagonist,FIGHTER)
~ THEN REPLY #26699 /* ~"Je voudrais quitter mon métier actuel pour assumer mes responsabilités de guerrier."~ */ GOTO 32
  IF ~  ExtraProficiency(Protagonist,0)
Class(Protagonist,FIGHTER)
~ THEN REPLY #26700 /* ~"Tu peux me dire si je suis prêt pour plus d'instructions ?"~ */ GOTO 51
  IF ~  ExtraProficiencyGT(Protagonist,0)
Class(Protagonist,FIGHTER)
~ THEN REPLY #26701 /* ~"Tu peux me dire si je suis prêt pour plus d'instructions ?"~ */ GOTO 53
  IF ~  ExtraProficiencyGT(Protagonist,0)
ProficiencyGT(Protagonist,FIST,0)
ProficiencyGT(Protagonist,DAGGER,0)
ProficiencyGT(Protagonist,HAMMER,0)
ProficiencyGT(Protagonist,AXE,0)
ProficiencyGT(Protagonist,CLUB,0)
Class(Protagonist,FIGHTER)
~ THEN REPLY #26702 /* ~"J'ai atteint le niveau compétent pour toutes les armes, Porphiron. Est-ce que tu peux m'apprendre autre chose ?"~ */ GOTO 52
  IF ~  Class(Protagonist,FIGHTER)
~ THEN REPLY #26703 /* ~"Je voudrais en savoir plus sur les armes."~ */ GOTO 42
  IF ~~ THEN REPLY #26704 /* ~"Je n'ai pas de questions pour le moment. Je reviendrai peut-être plus tard."~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 0.0
  SAY #26636 /* ~"Celui-ci a un nom : celui-ci s'appelle Porphiron." La voix de l'homme résonne à la manière d'un gong. Pendant qu'il parle, les lignes de son visage se meuvent et forment une série de dessins sphériques. "Celui-ci veut savoir : pourquoi tu t'adresses à celui-ci ?"~ */
  IF ~~ THEN REPLY #26706 /* ~"Je voudrais te poser quelques questions sur la cité."~ */ GOTO 5
  IF ~~ THEN REPLY #26707 /* ~"Peu importe. Excuse-moi de t'avoir dérangé."~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 1.0 1.3 4.0
  SAY #26637 /* ~"Celui-ci te prévient : celui-ci ne peut répondre à tes questions." Les lignes de son visage se tordent puis éclatent dans un entrelacs de gribouillis. "Celui-ci est entré récemment dans ce lieu de murs."~ */
  IF ~~ THEN REPLY #26708 /* ~"Bon, d'accord. Euh, mais je dois te poser une question : pourquoi ces lignes, sur ton visage… bougent-elles ?"~ */ GOTO 6
  IF ~~ THEN REPLY #26709 /* ~"Très bien. Pardon de t'avoir dérangé. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 6 // from: 5.0
  SAY #26638 /* ~"Les lignes indiquent de la colère. Es-tu offensé ?" Les lignes se redressent lentement pour former des courbes lisses. "Aucune offense n'était voulue : accepteras-tu les mille excuses de celui-ci ?"~ */
  IF ~~ THEN REPLY #26710 /* ~"Il n'y a pas de mal… Pourquoi est-ce que tu es en colère ?"~ */ GOTO 7
  IF ~~ THEN REPLY #26712 /* ~"Très bien. Merci de m'avoir accordé un peu de temps. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 7 // from: 6.0
  SAY #26639 /* ~"Celui-ci parle d'un événement récent : savais-tu que celui-ci avait été assailli par trois ? Les trois réclamaient un objet à celui-ci. Celui-ci craignait une attaque : que fait celui-ci ? Celui-ci a donné l'objet."~ */
  IF ~~ THEN REPLY #26713 /* ~"Eh bien, tu as eu raison d'avoir peur. S'ils étaient trois, ils auraient pu te tuer si tu ne leur avais pas donné l'objet."~ */ GOTO 8
  IF ~~ THEN REPLY #26714 /* ~"Je vois. Je suis désolé pour toi. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 8 // from: 7.0
  SAY #26640 /* ~"Celui-ci a été mal compris." Les lignes de son visage deviennent angulaires, puis reprennent des courbes lisses. "Celui-ci n'a pas eu peur d'être tué : celui-ci avait peur de tuer les trois."~ */
  IF ~~ THEN REPLY #26715 /* ~"Eh bien… si tu pouvais les tuer, pourquoi tu les as laissés te voler ?"~ */ GOTO 9
  IF ~~ THEN REPLY #26717 /* ~"Euh, ça a été très courageux de ta part. Et très aimable. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 9 // from: 8.0
  SAY #26641 /* ~"Celui-ci suit le chemin d'un guerrier : beaucoup d'armes ont marché avec celui-ci. Le poing, la lame, le bâton, la hachette, la masse : celui-ci connaît tous ces outils."~ */
  IF ~~ THEN REPLY #26718 /* ~"Ton explication ne colle pas… Encore une fois, si tu es un guerrier expérimenté, pourquoi tu les as laissés te voler ?"~ */ GOTO 10
  IF ~~ THEN REPLY #26719 /* ~"Je vois. Je suis désolé pour toi. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 10 // from: 9.0
  SAY #26642 /* ~"Il est interdit à celui-ci d'attaquer." Les lignes de son visage se plissent tandis qu'il parle. "Si celui-ci avait frappé les trois de colère : le vœu de non-violence aurait été rompu."~ */
  IF ~~ THEN REPLY #26720 /* ~"Une promesse de non-violence ? Tu es à la fois guerrier et *pacifiste* ?"~ */ GOTO 11
  IF ~~ THEN REPLY #26721 /* ~"Je vois. Je suis désolé pour toi. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 11 // from: 10.0
  SAY #26643 /* ~"Celui-ci n'est pas familier avec ton discours : qu'est-ce que ce 'passivisste' ?"~ */
  IF ~~ THEN REPLY #26722 /* ~"Peu importe. Pourquoi tu t'entraînes si tu ne peux attaquer personne ?"~ */ GOTO 12
  IF ~~ THEN REPLY #26723 /* ~"Ça n'a pas d'importance. Je suis désolé pour toi. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 12 // from: 11.0
  SAY #26644 /* ~"Celui-ci est de l'*Ordre d'Erit Agge* : nous attendons les Jours Derniers où tous seront appelés au combat. La formation et les compétences de celui-ci doivent être tenues secrètes jusque là."~ */
  IF ~~ THEN REPLY #26724 /* ~"Et en attendant, tu préfères te laisser voler dans la rue sans te défendre ?"~ */ GOTO 13
  IF ~~ THEN REPLY #26725 /* ~"Si telle est ta croyance, alors tu l'as respectée. Je suis désolé pour toi. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 13 // from: 12.0
  SAY #26645 /* ~"Celui-ci va préciser : l'objet est de valeur. La discipline de l'*Erit Agge* est de plus grande valeur encore."~ */
  IF ~~ THEN REPLY #26727 /* ~"Puisque tu ne veux pas te battre, tu crois que tu pourras convaincre ces voleurs de te rendre ton objet ?"~ */ GOTO 14
  IF ~~ THEN REPLY #26728 /* ~"Je vois. Je suis désolé pour toi. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 14 // from: 13.0
  SAY #26646 /* ~"Celui-ci s'adresse aux trois voleurs : qu'arrive-t-il ? Les requêtes de celui-ci sont reçues avec mépris : les trois ne rendront pas l'objet."~ */
  IF ~~ THEN REPLY #26729 /* ~"Je peux essayer de récupérer cet objet pour toi."~ */ DO ~IncrementGlobalOnceEx("GLOBALGood_Porphiron_1","GLOBALGood",1)
~ GOTO 19
  IF ~~ THEN REPLY #26730 /* ~"Je pourrais les battre comme des chiens et reprendre ce qu'ils ont volé."~ */ GOTO 19
  IF ~~ THEN REPLY #26731 /* ~"Je pourrais aller reprendre cet objet pour toi, si tu acceptes de me payer pour ce service."~ */ GOTO 15
  IF ~~ THEN REPLY #26732 /* ~"Je vois. Je suis désolé pour toi. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 15 // from: 14.2
  SAY #26647 /* ~"Celui-ci s'excuse : celui-ci n'a plus rien qui n'ait déjà été pris."~ */
  IF ~~ THEN REPLY #26733 /* ~"Bon, très bien. Je vais quand même aller les tuer."~ */ GOTO 19
  IF ~~ THEN REPLY #26734 /* ~"Tu n'as *rien* ?"~ */ GOTO 16
  IF ~~ THEN REPLY #26735 /* ~"Alors, je ne peux pas t'aider. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 16 // from: 15.1
  SAY #26648 /* ~"Celui-ci s'excuse deux fois : accepterais-tu d'être entraîné ?"~ */
  IF ~~ THEN REPLY #26736 /* ~"Tu veux m'entraîner ? À quoi ?"~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Porphiron_1","GLOBALGood",-1)
~ GOTO 17
  IF ~~ THEN REPLY #26738 /* ~"Ça ne m'intéresse pas. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 17 // from: 16.0
  SAY #26649 /* ~"Beaucoup d'armes ont marché avec celui-ci : le poing, la lame, le bâton, la hachette, la masse. Celui-ci connaît tous ces outils : désires-tu les connaître ?"~ */
  IF ~~ THEN REPLY #26739 /* ~"Hmmmm. Un entraînement aux armes ? Si c'est gratuit…"~ */ GOTO 18
  IF ~~ THEN REPLY #26740 /* ~"Ça ne m'intéresse pas. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 18 // from: 17.0
  SAY #26650 /* ~"Celui-ci parle du prix : retour de l'objet volé, rien de plus."~ */
  IF ~~ THEN REPLY #26741 /* ~"D'accord. Bon, à quoi ressemble cet objet volé ?"~ */ GOTO 22
  IF ~~ THEN REPLY #26742 /* ~"Ça ne m'intéresse pas. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 19 // from: 14.0 14.1 15.0
  SAY #26651 /* ~"Celui-ci doit demander : apporterais-tu la violence aux trois qui ont volé celui-ci ?"~ */
  IF ~~ THEN REPLY #26743 /* ~"Eh bien, s'ils n'ont pas l'intelligence de me le rendre quand je le leur demanderai, les choses risquent de s'envenimer."~ */ GOTO 20
  IF ~~ THEN REPLY #26744 /* ~"Pas si je peux l'éviter."~ */ GOTO 21
  IF ~~ THEN REPLY #26745 /* ~"Tu sais, je ne crois pas pouvoir t'aider. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 20 // from: 19.0
  SAY #26652 /* ~Les lignes de son visage forment maintenant une série d'ellipses qui se chevauchent. "Si c'est le message qu'ils comprendront, alors le message peut être transmis ainsi."~ */
  IF ~~ THEN REPLY #26747 /* ~"Bon, d'accord. C'est quoi cet objet que tu as perdu ?"~ */ GOTO 22
  IF ~~ THEN REPLY #26748 /* ~"Tu sais, je ne crois pas pouvoir t'aider. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 21 // from: 19.1
  SAY #26653 /* ~"Celui-ci craint qu'un message absent de violence ne soit pas compris." Les lignes de son visage forment une série d'ellipses. "Celui-ci n'est pas opposé à ce que tu essaies."~ */
  IF ~~ THEN REPLY #26749 /* ~"Bon, d'accord. C'est quoi cet objet que tu as perdu ?"~ */ GOTO 22
  IF ~~ THEN REPLY #26751 /* ~"Tu sais, je ne crois pas pouvoir t'aider. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 22 // from: 18.0 20.0 21.0
  SAY #26654 /* ~"Voici l'objet : un chapelet de perles noires et rouges porté autour du cou. La valeur de ces perles ne se mesure pas en pièces de cuivre : la valeur de ces perles se mesure en foi."~ */
  IF ~  PartyHasItem("PorNeck")
~ THEN REPLY #26752 /* ~"Attends une minute. J'ai déjà le chapelet que tu cherches. C'est ça ?"~ */ DO ~TakePartyItemNum("PorNeck",1)
~ JOURNAL #26756 /* ~En passant dans la Ruche, j'ai rencontré un homme qui avait sur la peau des lignes mouvantes. Il affirme qu'un chapelet de son 'ordre'… Erit Agge, je crois… a été volé par trois sicaires vêtus de noir et de rouge, qui, selon lui, se trouvent près d'un 'bar dont l'intérieur est en feu'. En fait, j'avais déjà arraché le chapelet à ces trois sicaires, ce qui fait que j'ai pu lui redonner tout de suite.~ */ GOTO 24
  IF ~  !PartyHasItem("PorNeck")
~ THEN REPLY #26754 /* ~"Bon, d'accord. Je vais voir si je peux trouver ce chapelet. Tu sais où je peux trouver ces 'trois' sicaires ?"~ */ GOTO 23
END

IF ~~ THEN BEGIN 23 // from: 2.1 22.1
  SAY #26655 /* ~"Celui-ci sait où les mots de colère ont été échangés et connaît l'objet perdu : dans le bar qui brûle de l'intérieur ? Les trois étaient à l'extérieur du lieu : vêtus de rouge et de noir."~ */
  IF ~  Global("AR0402_Visited","GLOBAL",0)
~ THEN REPLY #26757 /* ~"Trois voleurs, vêtus de rouge et noir, à l'extérieur d'un bar qui brûle de l'intérieur ? Ça ne devrait pas être trop difficile à trouver. Au revoir."~ */ DO ~SetGlobal("Porphiron_Quest","GLOBAL",1)
~ JOURNAL #26760 /* ~En passant dans la Ruche, j'ai rencontré un homme qui avait sur la peau des lignes mouvantes. Il affirme qu'un chapelet de son 'ordre'… Erit Agge, je crois… a été volé par trois sicaires vêtus de rouge et de noir, près d'un bar dont l'intérieur est en feu. Je vais essayer de retrouver l'endroit et de récupérer l'objet.~ */ EXIT
  IF ~  Global("AR0402_Visited","GLOBAL",1)
~ THEN REPLY #26758 /* ~"Trois voleurs, habillés en rouge et noir, à l'extérieur du Bar du Cadavre fumant ? Je vais essayer de les trouver. Au revoir."~ */ DO ~SetGlobal("Porphiron_Quest","GLOBAL",1)
~ JOURNAL #26759 /* ~En passant dans la Ruche, j'ai rencontré un homme qui avait sur la peau des lignes mouvantes. Il affirme qu'un chapelet de son 'ordre'… Erit Agge, je crois… a été volé par trois sicaires vêtus de noir et de rouge, à l'extérieur du Cadavre fumant. Je vais voir si je peux récupérer cet objet.~ */ EXIT
END

IF ~~ THEN BEGIN 24 // from: 2.0 22.0
  SAY #26656 /* ~"Celui-ci voit ce que tu tiens : ce sont les perles perdues." Il te les prend… tu remarques que l'entrelacs de lignes de ses mains est identique à celui de son visage. "Celui-ci a une question : comment t'es-tu procuré les perles des trois ?"~ */
  IF ~  Dead("ThugP1")
~ THEN REPLY #26761 /* ~"Je les ai tués et je leur ai pris les perles."~ */ GOTO 25
  IF ~  Global("Porphiron_Necklace","GLOBAL",0)
!Dead("ThugP1")
~ THEN REPLY #26762 /* ~"Je les ai volées."~ */ GOTO 26
  IF ~  Global("Porphiron_Necklace","GLOBAL",3)
~ THEN REPLY #26763 /* ~"Je les ai achetées."~ */ GOTO 28
  IF ~  GlobalGT("Porphiron_Necklace","GLOBAL",0)
GlobalLT("Porphiron_Necklace","GLOBAL",3)
~ THEN REPLY #26764 /* ~"Je leur ai raconté quelques mensonges anodins et ils ont accepté de me donner les perles."~ */ GOTO 27
  IF ~  GlobalGT("Porphiron_Necklace","GLOBAL",0)
GlobalLT("Porphiron_Necklace","GLOBAL",3)
~ THEN REPLY #26765 /* ~"Je les ai convaincus qu'ils avaient tout intérêt à me rendre le chapelet."~ */ GOTO 27
  IF ~  !Global("Porphiron_Necklace","GLOBAL",1)
!Global("Porphiron_Necklace","GLOBAL",1)
~ THEN REPLY #26766 /* ~Mensonge : "Euh… je leur ai expliqué la situation. Ils ont été ravis de me rendre les perles."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Porphiron_2","GLOBALLaw",-1)
~ GOTO 27
  IF ~  !Global("Porphiron_Necklace","GLOBAL",3)
~ THEN REPLY #26767 /* ~Mensonge : "Euh… je les leur ai achetées. Ils ont été ravis de négocier les perles."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Porphiron_2","GLOBALLaw",-1)
~ GOTO 28
END

IF ~~ THEN BEGIN 25 // from: 24.0 26.1 26.2 27.1 27.2 28.1 28.2
  SAY #26657 /* ~"Celui-ci est content : le message de violence a été transmis. Celui-ci accorde plusieurs mercis."~ */
  IF ~  Global("Evil_Porphiron_1","GLOBAL",0)
~ THEN REPLY #26768 /* ~"Tout le plaisir a été pour moi. Mais, j'ai une question à te poser : si tu ne peux pas combattre, comment est-ce que tu as fait pour devenir guerrier ?"~ */ DO ~SetGlobal("Porphiron_Quest","GLOBAL",2)
AddexperienceParty(1000)
~ GOTO 30
  IF ~  Global("Evil_Porphiron_1","GLOBAL",1)
~ THEN REPLY #26769 /* ~"Et l'entraînement aux armes que tu m'avais promis ?"~ */ DO ~SetGlobal("Porphiron_Quest","GLOBAL",2)
AddexperienceParty(1000)
~ GOTO 31
END

IF ~~ THEN BEGIN 26 // from: 24.1
  SAY #26658 /* ~"Celui-ci le sait : celui qui lutte avec tromperie porte un nom dans l'Ordre d'*Erit Agge*." Les angles réapparaissent sur le visage de Porphiron. "On les appelle les fourbes : c'est une voie sans discipline et sans honneur."~ */
  IF ~~ THEN REPLY #26770 /* ~"Si tu étais un vrai guerrier, tu apprendrais à te servir de TOUTES les armes dont tu disposes."~ */ GOTO 29
  IF ~  Dead("ThugP1")
~ THEN REPLY #26771 /* ~Vérité : "Oh, j'ai quand même tué les voleurs."~ */ GOTO 25
  IF ~  !Dead("ThugP1")
~ THEN REPLY #26772 /* ~Mensonge : "Oh, j'ai quand même tué les voleurs."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Porphiron_1","GLOBALLaw",-1)
~ GOTO 25
END

IF ~~ THEN BEGIN 27 // from: 24.3 24.4 24.5
  SAY #26659 /* ~"Celui-ci le sait : celui qui lutte avec des mots porte un nom dans l'Ordre d'*Erit Agge*." Les angles réapparaissent sur le visage de Porphiron. "On les appelle les diplomates : c'est une voie sans discipline et sans honneur."~ */
  IF ~~ THEN REPLY #26773 /* ~"Si tu étais un vrai guerrier, tu apprendrais à te servir de TOUTES les armes dont tu disposes."~ */ GOTO 29
  IF ~  Dead("ThugP1")
~ THEN REPLY #26774 /* ~Vérité : "Oh, j'ai quand même tué les voleurs."~ */ GOTO 25
  IF ~  !Dead("ThugP1")
~ THEN REPLY #26775 /* ~Mensonge : "Oh, j'ai quand même tué les voleurs."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Porphiron_1","GLOBALLaw",-1)
~ GOTO 25
END

IF ~~ THEN BEGIN 28 // from: 24.2 24.6
  SAY #26660 /* ~"Celui-ci le sait : celui qui lutte avec de l'argent porte un nom dans l'Ordre d'*Erit Agge*." Les angles réapparaissent sur le visage de Porphiron. "On les appelle les marchands : c'est une voie sans discipline et sans honneur."~ */
  IF ~~ THEN REPLY #26776 /* ~"Si tu étais un vrai guerrier, tu apprendrais à te servir de TOUTES les armes dont tu disposes."~ */ GOTO 29
  IF ~  Dead("ThugP1")
~ THEN REPLY #26777 /* ~Vérité : "Oh, j'ai quand même tué les voleurs."~ */ GOTO 25
  IF ~  !Dead("ThugP1")
~ THEN REPLY #26778 /* ~Mensonge : "Oh, j'ai quand même tué les voleurs."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Porphiron_1","GLOBALLaw",-1)
~ GOTO 25
END

IF ~~ THEN BEGIN 29 // from: 26.0 27.0 28.0
  SAY #26661 /* ~"Celui-ci demande pardon : celui-ci ne voulait pas offenser." Les angles sur son visage durcissent, puis forment lentement des rides. "Celui-ci envoie : de nombreux remerciements pour tes services, n'est-ce pas ?"~ */
  IF ~  Global("Evil_Porphiron_1","GLOBAL",0)
~ THEN REPLY #26779 /* ~"De rien… Mais, je crois que j'ai une question à te poser : si tu ne peux pas combattre, comment est-ce que tu as fait pour devenir guerrier ?"~ */ DO ~SetGlobal("Porphiron_Quest","GLOBAL",2)
AddexperienceParty(1000)
~ GOTO 30
  IF ~  Global("Evil_Porphiron_1","GLOBAL",1)
~ THEN REPLY #26780 /* ~"Hmmm. Et l'entraînement aux armes que tu avais promis ?"~ */ DO ~SetGlobal("Porphiron_Quest","GLOBAL",2)
AddexperienceParty(1000)
~ GOTO 31
END

IF ~~ THEN BEGIN 30 // from: 25.0 29.0
  SAY #26662 /* ~"Celui-ci précise : l'*Erit Agge* peut s'entraîner avec quelqu'un s'il n'y a pas de colère entre eux."~ */
  IF ~~ THEN REPLY #26781 /* ~"Je vois. Tu pourrais m'apprendre à utiliser ces armes ?"~ */ GOTO 31
  IF ~~ THEN REPLY #26782 /* ~"Simple curiosité. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 31 // from: 25.1 29.1 30.0
  SAY #26663 /* ~"Celui-ci pourrait t'instruire, oui. Mais celui-ci te prévient : la connaissance de la violence entraîne la tentation de l'utiliser."~ */
  IF ~~ THEN REPLY #26783 /* ~"Je l'espère vraiment."~ */ GOTO 32
  IF ~~ THEN REPLY #26784 /* ~"Bon, peu importe. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 32 // from: 3.1 31.0
  SAY #26664 /* ~"Celui-ci parle : est-ce ta volonté d'abandonner ta profession antérieure ? La voie du guerrier ne peut être poursuivie par un esprit distrait."~ */
  IF ~  Class(Protagonist,FIGHTER)
~ THEN REPLY #26785 /* ~"Je n'ai pas d'autre métier que celui de combattant pour le moment. Je veux emprunter le chemin des guerriers."~ */ GOTO 35
  IF ~  Class(Protagonist,MAGE)
~ THEN REPLY #26786 /* ~"Oui. Je voudrais abandonner l'Art de la magie pour me consacrer aux armes."~ */ GOTO 33
  IF ~  Class(Protagonist,THIEF)
~ THEN REPLY #26787 /* ~"Je ne veux plus voler… Je voudrais être guerrier professionnel."~ */ GOTO 33
  IF ~~ THEN REPLY #26788 /* ~"Non, pas pour le moment. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 33 // from: 32.1 32.2
  SAY #26665 /* ~"Celui-ci t'a entendu : tu es prêt à prendre la voie. Celui-ci te prie d'écouter…"~ */
  IF ~~ THEN REPLY #26790 /* ~"Très bien…"~ */ DO ~FadeToColor([20.0],0)
Wait(3)
FadeFromColor([20.0],0)
SetNamelessClass(FIGHTER)
~ GOTO 34
END

IF ~~ THEN BEGIN 34 // from: 33.0
  SAY #26666 /* ~"Tu suis maintenant la voie du guerrier. Désires-tu en savoir davantage sur son comportement ?"~ */
  IF ~~ THEN REPLY #26791 /* ~"Oui."~ */ GOTO 35
  IF ~  GlobalGT("Porphiron_Teach","GLOBAL",0)
~ THEN REPLY #26792 /* ~"Je les connais déjà. Qu'est-ce que tu peux m'apprendre sur les armes?"~ */ GOTO 42
  IF ~~ THEN REPLY #26794 /* ~"Pas pour le moment… Je voudrais seulement me réorienter. Merci, Porphiron."~ */ EXIT
END

IF ~~ THEN BEGIN 35 // from: 3.0 32.0 34.0 42.10 51.0
  SAY #26667 /* ~"Celui-ci t'instruira." Les lignes de son visage forment maintenant des triangles. "Voici les trois mots clés de ton instruction : concentration, expérience, compétence."~ */
  IF ~~ THEN REPLY #26795 /* ~"Je ne comprends pas. Tu peux expliquer ?"~ */ JOURNAL #26798 /* ~Porphiron m'a proposé de m'entraîner à l'art de la guerre. Il m'a expliqué que pour en savoir plus sur le combat, je devais me consacrer uniquement au métier de guerrier. Si j'étais un mage, un voleur ou si j'avais une autre profession, je devrais l'abandonner pour approfondir mon apprentissage des armes et du combat.~ */ GOTO 36
  IF ~  GlobalGT("Porphiron_Teach","GLOBAL",0)
~ THEN REPLY #26796 /* ~"Je connais déjà ces concepts. Qu'est-ce que tu peux me dire sur les armes ?"~ */ GOTO 42
  IF ~~ THEN REPLY #26797 /* ~"En fait, je reviendrai peut-être plus tard, quand je serai prêt à recevoir ton instruction. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 36 // from: 35.0
  SAY #26668 /* ~"Celui-ci parlera d'abord de concentration. Pour apprendre à prendre racine, tu dois te concentrer. Tu dois t'engager sur la voie du guerrier. Ta profession est d'être guerrier, aucune autre."~ */
  IF ~~ THEN REPLY #26799 /* ~"Compris : pour apprendre à utiliser des armes, je dois me consacrer au combat. Quel est le prochain thème d'entraînement ?"~ */ JOURNAL #26803 /* ~Porphiron m'a expliqué qu'un guerrier ne pouvait apprendre qu'un nombre limité de choses au début, en fonction de son niveau. Il m'a conseillé de revenir approfondir mes connaissances une fois que j'aurai acquis de l'expérience.~ */ GOTO 37
  IF ~  GlobalGT("Porphiron_Teach","GLOBAL",0)
~ THEN REPLY #26800 /* ~"Je connais déjà ces concepts. Qu'est-ce que tu peux me dire sur les armes ?"~ */ GOTO 42
  IF ~~ THEN REPLY #26801 /* ~"En fait, je reviendrai peut-être plus tard, quand je serai prêt à recevoir ton instruction. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 37 // from: 36.0
  SAY #26669 /* ~"Celui-ci parlera ensuite d'expérience. La vraie connaissance du combat ne s'obtient qu'avec l'expérience. L'instruction qu'il est possible de recevoir est limitée. Si tu atteins un nouveau niveau dans l'art du guerrier : tu seras peut-être prêt alors pour un nouvel enseignement."~ */
  IF ~  Global("Porphiron_Teach","GLOBAL",0)
~ THEN REPLY #26804 /* ~"Compris : il y a une limite à ce que je peux apprendre, mais cette limite peut être repoussée en passant à un nouveau niveau. Quel est le prochain thème d'entraînement ?"~ */ DO ~SetGlobal("Porphiron_Teach","GLOBAL",1)
~ GOTO 38
  IF ~  GlobalGT("Porphiron_Teach","GLOBAL",0)
~ THEN REPLY #26805 /* ~"Compris : il y a une limite à ce que je peux apprendre, mais cette limite peut être repoussée en passant à un nouveau niveau. Quel est le prochain thème d'entraînement ?"~ */ GOTO 38
  IF ~  GlobalGT("Porphiron_Teach","GLOBAL",0)
~ THEN REPLY #26806 /* ~"Je connais déjà ces concepts. Qu'est-ce que tu peux me dire sur les armes ?"~ */ GOTO 42
  IF ~~ THEN REPLY #26807 /* ~"En fait, je reviendrai peut-être plus tard, quand je serai prêt à recevoir ton instruction. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 38 // from: 37.0 37.1
  SAY #26670 /* ~"Celui-ci parlera enfin de compétence. Ce que l'on peut apprendre sur chaque arme est limité. Celui-ci ajouterait : l'enseignement de celui-ci aussi est limité. La connaissance de l'arme inclut trois niveaux : l'ignorant, le compétent et le spécialisé. Il y a des niveaux intermédiaires, des niveaux de progression, où l'étudiant n'a pas encore atteint la connaissance supérieure."~ */
  IF ~~ THEN REPLY #26808 /* ~"Quels sont ces niveaux ?"~ */ GOTO 39
  IF ~  Global("Porphiron_Teach","GLOBAL",2)
~ THEN REPLY #26809 /* ~"Je connais déjà les rudiments. Qu'est-ce que tu peux m'apprendre sur les armes ?"~ */ GOTO 42
  IF ~~ THEN REPLY #26810 /* ~"J'en ai assez entendu pour le moment… Je reviendrai plus tard, si j'ai besoin d'un entraînement."~ */ EXIT
END

IF ~~ THEN BEGIN 39 // from: 38.0
  SAY #26671 /* ~"Voici le niveau ignorant : lorsque la personne ne connaît pas l'arme qu'elle utilise. L'attaque est maladroite : les dégâts bien moindres de ce qu'ils pourraient être."~ */
  IF ~~ THEN REPLY #26811 /* ~"On dirait moi quand je me suis réveillé sur la dalle de la Morgue. Continue… comment est le niveau compétent ?"~ */ GOTO 40
  IF ~  Global("Porphiron_Teach","GLOBAL",2)
~ THEN REPLY #26812 /* ~"Je connais déjà les rudiments. Qu'est-ce que tu peux m'apprendre sur les armes ?"~ */ GOTO 42
  IF ~~ THEN REPLY #26813 /* ~"J'en ai assez entendu pour le moment… Je reviendrai plus tard, si j'ai besoin d'un entraînement."~ */ EXIT
END

IF ~~ THEN BEGIN 40 // from: 39.0
  SAY #26672 /* ~"Voici le niveau compétent : lorsque la personne a des connaissances sur une arme, on dit qu'elle est *compétente* dans son utilisation. Ses attaques ne sont plus maladroites : elles sont rapides et sûres."~ */
  IF ~~ THEN REPLY #26814 /* ~"Et le niveau du spécialiste ?"~ */ DO ~SetGlobal("Porphiron_Teach","GLOBAL",2)
~ JOURNAL #26817 /* ~Porphiron a expliqué qu'il existait trois niveaux de maîtrise pour toutes les armes.

Il y a le niveau du novice, niveau où l'attaquant utilise l'arme à son désavantage. Ses attaques sont maladroites, mal assurées et provoquent moins de dégâts que celles d'un guerrier maîtrisant son art. C'est le niveau auquel j'ai commencé lorsque je me suis réveillé à la Morgue, je crois. Je dois m'entraîner pour mieux maîtriser les armes de ce monde.

Au-dessus du novice, il y a l'expert, niveau acquis lorsque le guerrier a étudié le maniement d'une arme. Ses attaques ne sont plus entravées par son manque de maîtrise de l'arme ; elles sont plus rapides et plus assurées.

Au-dessus de l'expert, il y a le spécialiste. À ce niveau, l'attaquant maîtrise non seulement l'arme, mais en plus il en a fait une extension de sa volonté. Ses attaques avec l'arme maîtrisée sont plus rapides et les dégâts infligés sont plus importants.

Bien qu'il soit possible de devenir expert dans le maniement de toutes les armes, Porphiron a expliqué qu'il était conseillé de se spécialiser dans une seule arme au cours d'une vie ; il m'a donc vivement conseillé de bien réfléchir à mon choix au moment de suivre l'enseignement d'un maître.~ */ GOTO 41
  IF ~  Global("Porphiron_Teach","GLOBAL",2)
~ THEN REPLY #26815 /* ~"Je connais déjà les rudiments. Qu'est-ce que tu peux m'apprendre sur les armes ?"~ */ GOTO 42
  IF ~~ THEN REPLY #26816 /* ~"J'en ai assez entendu pour le moment… Je reviendrai plus tard, si j'ai besoin d'un entraînement."~ */ EXIT
END

IF ~~ THEN BEGIN 41 // from: 40.0
  SAY #26673 /* ~"Voici le niveau spécialiste : lorsque la personne est plus que compétente, elle devient *spécialisée* dans le maniement de l'arme. L'arme n'est plus un outil, mais un prolongement de sa volonté."~ */
  IF ~~ THEN REPLY #26818 /* ~"D'accord, je comprends. Qu'est-ce que tu peux m'apprendre sur les armes ?"~ */ GOTO 42
  IF ~~ THEN REPLY #26819 /* ~"J'en ai assez entendu. Je reviendrai peut-être. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 42 // from: 3.5 34.1 35.1 36.1 37.2 38.1 39.1 40.1 41.0 43.2 44.2 45.2 46.2 47.2 49.0 50.0 53.0
  SAY #26674 /* ~"Celui-ci a été formé au poing, à la lame, au bâton, à la hachette et à la masse : quelle arme voudrais-tu connaître ?"~ */
  IF ~  ExtraProficiency(Protagonist,0)
~ THEN REPLY #26820 /* ~"Je voudrais en savoir plus sur les poings."~ */ GOTO 51
  IF ~  ExtraProficiencyGT(Protagonist,0)
~ THEN REPLY #26821 /* ~"Je voudrais en savoir plus sur les poings."~ */ GOTO 43
  IF ~  ExtraProficiency(Protagonist,0)
~ THEN REPLY #26822 /* ~"Je voudrais en savoir plus sur les dagues."~ */ GOTO 51
  IF ~  ExtraProficiencyGT(Protagonist,0)
~ THEN REPLY #26823 /* ~"Je voudrais en savoir plus sur les dagues."~ */ GOTO 44
  IF ~  ExtraProficiency(Protagonist,0)
~ THEN REPLY #26824 /* ~"Je voudrais en savoir plus sur les gourdins."~ */ GOTO 51
  IF ~  ExtraProficiencyGT(Protagonist,0)
~ THEN REPLY #26825 /* ~"Je voudrais en savoir plus sur les gourdins."~ */ GOTO 45
  IF ~  ExtraProficiency(Protagonist,0)
~ THEN REPLY #26826 /* ~"Je voudrais en savoir plus sur les haches."~ */ GOTO 51
  IF ~  ExtraProficiencyGT(Protagonist,0)
~ THEN REPLY #26827 /* ~"Je voudrais en savoir plus sur les haches."~ */ GOTO 46
  IF ~  ExtraProficiency(Protagonist,0)
~ THEN REPLY #26828 /* ~"Je voudrais en savoir plus sur les marteaux."~ */ GOTO 51
  IF ~  ExtraProficiencyGT(Protagonist,0)
~ THEN REPLY #26829 /* ~"Je voudrais en savoir plus sur les marteaux."~ */ GOTO 47
  IF ~~ THEN REPLY #26830 /* ~"Tu peux me redire comment on devient guerrier ?"~ */ GOTO 35
  IF ~~ THEN REPLY #26831 /* ~"Pas d'entraînement aujourd'hui. Je reviendrai peut-être si je veux en savoir plus."~ */ EXIT
END

IF ~~ THEN BEGIN 43 // from: 42.1
  SAY #26675 /* ~"Quelqu'un qui utiliserait le poing : il frappe rapidement et écrase les os de l'adversaire. Il y a des armes que tu peux trouver : gantelets, poignards ou même le ceste. Ces armes écrasent, percent ou tranchent. Ta connaissance est limitée. Veux-tu utiliser une partie de ton talent pour arriver au niveau compétent dans le maniement de cette arme ?"~ */
  IF ~  ProficiencyLT(Protagonist,FIST,2)
~ THEN REPLY #26832 /* ~"Oui, je voudrais apprendre à utiliser cette arme."~ */ DO ~IncrementProficiency(Protagonist,FIST,1)
IncrementExtraProficiency(Protagonist,-1)
~ JOURNAL #26836 /* ~Avec l'aide de Porphiron… et bien des bleus plus tard… j'ai atteint le niveau d'expert dans le combat à mains nues.~ */ GOTO 48
  IF ~  ProficiencyGT(Protagonist,FIST,1)
~ THEN REPLY #26833 /* ~"Oui, je voudrais apprendre à utiliser cette arme."~ */ DO ~FadeToColor([20.0],0)
Wait(3)
FadeFromColor([20.0],0)
~ JOURNAL #24443 /* ~Porphiron m'a expliqué qu'il ne pouvait plus rien m'apprendre sur le combat à mains nues. Il m'a dit qu'il fallait que je trouve un maître d'armes pour me spécialiser dans le combat à mains nues.~ */ GOTO 50
  IF ~~ THEN REPLY #26834 /* ~"Non… de quelles autres armes tu peux m'apprendre à me servir ?"~ */ GOTO 42
  IF ~~ THEN REPLY #26835 /* ~"Non, je n'ai pas vraiment envie de m'entraîner aujourd'hui. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 44 // from: 42.3
  SAY #26676 /* ~"Quelqu'un qui utiliserait la dague : elle frappe rapidement. Elle tranche comme une griffe ou perce comme une aiguille. Les dégâts sont déterminés par le type de dague. Veux-tu utiliser une partie de ton talent pour atteindre le niveau compétent dans le maniement de cette arme ?"~ */
  IF ~  ProficiencyLT(Protagonist,DAGGER,2)
~ THEN REPLY #26837 /* ~"Oui, je voudrais apprendre à utiliser cette arme."~ */ DO ~IncrementProficiency(Protagonist,DAGGER,1)
IncrementExtraProficiency(Protagonist,-1)
~ JOURNAL #26841 /* ~Avec l'aide de Porphiron… et bien des cicatrices plus tard… j'ai atteint le niveau d'expert dans le maniement de la dague. Une fois que Porphiron s'est rendu compte que mes coupures cicatrisaient vite, il a eu vite fait de m'utiliser comme planche à découper.~ */ GOTO 48
  IF ~  ProficiencyGT(Protagonist,DAGGER,1)
~ THEN REPLY #26838 /* ~"Oui, je voudrais apprendre à utiliser cette arme."~ */ DO ~FadeToColor([20.0],0)
Wait(3)
FadeFromColor([20.0],0)
~ JOURNAL #26842 /* ~Porphiron m'a expliqué qu'il ne pouvait plus rien m'apprendre sur le maniement des dagues. Il m'a dit qu'il fallait que je trouve un maître d'armes pour me spécialiser dans les dagues.~ */ GOTO 50
  IF ~~ THEN REPLY #26839 /* ~"Non… De quelles autres armes tu peux m'apprendre à me servir ?"~ */ GOTO 42
  IF ~~ THEN REPLY #26840 /* ~"Non, je n'ai pas vraiment envie de m'entraîner aujourd'hui. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 45 // from: 42.5
  SAY #26677 /* ~"Quelqu'un qui utiliserait le gourdin. Sa vitesse n'est pas celle du poing ou de la dague, mais les dégâts sont plus importants. Il écrase le corps de l'adversaire comme un rocher en chute libre. Veux-tu utiliser une partie de ton talent pour atteindre le niveau compétent dans le maniement de cette arme ?"~ */
  IF ~  ProficiencyLT(Protagonist,CLUB,2)
~ THEN REPLY #26843 /* ~"Oui, je voudrais apprendre à utiliser cette arme."~ */ DO ~IncrementProficiency(Protagonist,CLUB,1)
IncrementExtraProficiency(Protagonist,-1)
~ JOURNAL #26850 /* ~Avec l'aide de Porphiron… et bien des bleus plus tard… j'ai atteint le niveau d'expert dans le maniement des gourdins.~ */ GOTO 48
  IF ~  ProficiencyGT(Protagonist,CLUB,1)
~ THEN REPLY #26847 /* ~"Oui, je voudrais apprendre à utiliser cette arme."~ */ DO ~FadeToColor([20.0],0)
Wait(3)
FadeFromColor([20.0],0)
~ JOURNAL #26851 /* ~Porphiron m'a expliqué qu'il ne pouvait plus rien m'apprendre sur le maniement des gourdins. Il m'a dit qu'il fallait que je trouve un maître d'armes pour me spécialiser dans les gourdins.~ */ GOTO 50
  IF ~~ THEN REPLY #26848 /* ~"Non… de quelles autres armes tu peux m'apprendre à me servir ?"~ */ GOTO 42
  IF ~~ THEN REPLY #26849 /* ~"Non, je n'ai pas vraiment envie de m'entraîner aujourd'hui. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 46 // from: 42.7
  SAY #26678 /* ~"Quelqu'un qui utiliserait la hache : sa vitesse n'est pas celle du gourdin, mais les dégâts sont plus importants. Elle tranche comme une énorme griffe le corps de l'adversaire. Veux-tu utiliser une partie de ton talent pour atteindre le niveau compétent dans le maniement de cette arme ?"~ */
  IF ~  ProficiencyLT(Protagonist,AXE,2)
~ THEN REPLY #26852 /* ~"Oui, je voudrais apprendre à utiliser cette arme."~ */ DO ~IncrementProficiency(Protagonist,AXE,1)
IncrementExtraProficiency(Protagonist,-1)
~ JOURNAL #26856 /* ~Avec l'aide de Porphiron… et bien des cicatrices plus tard… j'ai atteint le niveau d'expert dans le maniement de la hache. Une fois que Porphiron s'est rendu compte que je me remettais vite des entailles les plus graves, il a eu vite fait d'essayer de me transformer en bois à brûler.~ */ GOTO 48
  IF ~  ProficiencyGT(Protagonist,AXE,1)
~ THEN REPLY #26853 /* ~"Oui, je voudrais apprendre à utiliser cette arme."~ */ DO ~FadeToColor([20.0],0)
Wait(3)
FadeFromColor([20.0],0)
~ JOURNAL #26857 /* ~Porphiron m'a expliqué qu'il ne pouvait plus rien m'apprendre sur le maniement des haches. Il m'a dit qu'il fallait que je trouve un maître d'armes pour me spécialiser dans les haches.~ */ GOTO 50
  IF ~~ THEN REPLY #26854 /* ~"Non… De quelles autres armes tu peux m'apprendre à me servir ?"~ */ GOTO 42
  IF ~~ THEN REPLY #26855 /* ~"Non, je n'ai pas vraiment envie de m'entraîner aujourd'hui. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 47 // from: 42.9
  SAY #26679 /* ~"Quelqu'un qui utiliserait le marteau. Sa vitesse n'est pas celle du gourdin, mais les dégâts sont plus importants, comme la chute d'un grand rocher qui écraserait le corps d'un adversaire. Veux-tu utiliser une partie de ton talent pour atteindre le niveau compétent dans le maniement de cette arme ?"~ */
  IF ~  ProficiencyLT(Protagonist,HAMMER,2)
~ THEN REPLY #26858 /* ~"Oui, je voudrais apprendre à utiliser cette arme."~ */ DO ~IncrementProficiency(Protagonist,HAMMER,1)
IncrementExtraProficiency(Protagonist,-1)
~ JOURNAL #26862 /* ~Avec l'aide de Porphiron… et bien des bleus plus tard… j'ai atteint le niveau d'expert dans le maniement du marteau. Je crois qu'il va falloir du temps pour faire taire les cloches qui sonnent dans ma tête.~ */ GOTO 48
  IF ~  ProficiencyGT(Protagonist,HAMMER,1)
~ THEN REPLY #26859 /* ~"Oui, je voudrais apprendre à utiliser cette arme."~ */ DO ~FadeToColor([20.0],0)
Wait(3)
FadeFromColor([20.0],0)
~ JOURNAL #26863 /* ~Porphiron m'a expliqué qu'il ne pouvait plus rien m'apprendre sur le maniement des marteaux. Il m'a dit qu'il fallait que je trouve un maître d'armes pour me spécialiser dans les marteaux.~ */ GOTO 50
  IF ~~ THEN REPLY #26860 /* ~"Non… de quelles autres armes tu peux m'apprendre à me servir ?"~ */ GOTO 42
  IF ~~ THEN REPLY #26861 /* ~"Non, je n'ai pas vraiment envie de m'entraîner aujourd'hui. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 48 // from: 43.0 44.0 45.0 46.0 47.0
  SAY #26680 /* ~"Celui-ci t'instruira : d'abord, tiens-toi comme ça -"~ */
  IF ~~ THEN REPLY #26864 /* ~"Oui…"~ */ DO ~FadeToColor([20.0],0)
Wait(3)
FadeFromColor([20.0],0)
~ GOTO 49
END

IF ~~ THEN BEGIN 49 // from: 48.0
  SAY #26681 /* ~"Celui-ci te fait des compliments : tu apprends vite. Tu suis bien les cours."~ */
  IF ~  ExtraProficiencyGT(Protagonist,0)
~ THEN REPLY #26865 /* ~"Merci. Je voudrais savoir utiliser d'autres armes, si tu veux bien m'apprendre."~ */ GOTO 42
  IF ~  ExtraProficiency(Protagonist,0)
~ THEN REPLY #26866 /* ~"Merci. Je voudrais savoir utiliser d'autres armes, si tu veux bien m'apprendre."~ */ GOTO 51
  IF ~~ THEN REPLY #26867 /* ~"Merci. C'est tout ce que je voulais savoir pour aujourd'hui."~ */ EXIT
END

IF ~~ THEN BEGIN 50 // from: 43.1 44.1 45.1 46.1 47.1
  SAY #26682 /* ~"Celui-ci n'a plus rien à t'enseigner : sais-tu que tu as déjà atteint le niveau compétent dans le maniement de cette arme ? Celui-ci peut seulement te donner cette dernière leçon : trouve un maître qui t'en apprendra davantage. Reste fidèle à la voie du guerrier, et il te faudra très longtemps avant d'atteindre la limite du savoir."~ */
  IF ~~ THEN REPLY #26868 /* ~"Très bien. Quelles autres armes est-ce que tu peux m'apprendre à utiliser ?"~ */ GOTO 42
  IF ~~ THEN REPLY #26869 /* ~"Bon, je vais voir si je peux en trouver un. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 51 // from: 3.2 42.0 42.2 42.4 42.6 42.8 49.1
  SAY #26683 /* ~"Celui-ci voit que ton esprit est déjà à la limite de la connaissance des armes. Reviendras-tu me voir lorsque tu auras atteint un nouveau niveau ? Celui-ci t'enseignera alors les armes."~ */
  IF ~~ THEN REPLY #26870 /* ~"Si tu n'as plus rien à m'apprendre sur les armes, tu peux me dire comment devenir un guerrier ?"~ */ JOURNAL #26872 /* ~Porphiron m'a dit qu'il ne pouvait plus rien m'apprendre sur le maniement des armes ; il m'a dit qu'à mon niveau, j'avais atteint le maximum de connaissances sur les armes. Il m'a conseillé de revenir une fois que j'aurais atteint un nouveau niveau dans cet art ; il pourrait peut-être alors approfondir mon enseignement.~ */ GOTO 35
  IF ~~ THEN REPLY #26871 /* ~"Bon d'accord. Je reviendrai quand j'aurai atteint un nouveau niveau."~ */ JOURNAL #26872 /* ~Porphiron m'a dit qu'il ne pouvait plus rien m'apprendre sur le maniement des armes ; il m'a dit qu'à mon niveau, j'avais atteint le maximum de connaissances sur les armes. Il m'a conseillé de revenir une fois que j'aurais atteint un nouveau niveau dans cet art ; il pourrait peut-être alors approfondir mon enseignement.~ */ EXIT
END

IF ~~ THEN BEGIN 52 // from: 3.4
  SAY #26684 /* ~"Celui-ci peut seulement te donner cette dernière leçon : trouve un maître qui t'en apprendra davantage."~ */
  IF ~~ THEN REPLY #26873 /* ~"Bon, je vais voir si je peux en trouver un. Au revoir."~ */ JOURNAL #26875 /* ~Porphiron m'a expliqué qu'il ne pouvait plus rien m'apprendre sur le maniement des armes. Il m'a dit qu'il fallait que je trouve un maître d'armes pour me spécialiser dans une arme.~ */ EXIT
END

IF ~~ THEN BEGIN 53 // from: 3.3
  SAY #26685 /* ~"Celui-ci voit que ton esprit est prêt pour un autre enseignement : dans quelles armes aimerais-tu devenir compétent ?"~ */
  IF ~~ THEN REPLY #26876 /* ~"Lesquelles tu me proposes ?"~ */ GOTO 42
  IF ~~ THEN REPLY #26877 /* ~"Aucune, aujourd'hui, merci. Peut-être plus tard."~ */ EXIT
END
