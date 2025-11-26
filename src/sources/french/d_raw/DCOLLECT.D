// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DCOLLECT.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\fr_FR\dialog.tlk
// dialogF  : (none)

BEGIN ~DCOLLECT~

IF ~  NumTimesTalkedTo(0)
~ THEN BEGIN 0 // from:
  SAY #1805 /* ~L'homme est drapé d'un habit brun sale, en loques. Une longue capuche cache presque entièrement son visage.~ */
  IF ~~ THEN REPLY #21697 /* ~"Bonjour…"~ */ GOTO 1
  IF ~~ THEN REPLY #21698 /* ~Laisse-le.~ */ DO ~SetNumTimesTalkedTo(0)
~ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #21677 /* ~Tu vois ses yeux se plisser derrière son capuchon, et il recule d'un pas. "Qu'est-ce que tu veux ?"~ */
  IF ~~ THEN REPLY #21699 /* ~"Qu'est-ce que tu fais ?"~ */ GOTO 2
  IF ~~ THEN REPLY #21700 /* ~"C'est quoi, cet endroit ?"~ */ GOTO 5
  IF ~~ THEN REPLY #21701 /* ~"J'ai quelques questions…"~ */ GOTO 6
  IF ~~ THEN REPLY #21702 /* ~"Rien. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.0 18.0
  SAY #21678 /* ~"Je cherche des bon sang de corps, voilà c'que j'fais. Mais à voir comme les gens sont en bonne santé, on croirait que les Pouvoirs Morts ont fichu le camp des Plans." Ses yeux s'éclairent d'une soudaine lueur : "On a eu une épidémie le mois dernier, et c'était quelque chose… des corps puants jusqu'au ciel, et plein de jonc à se faire."~ */
  IF ~~ THEN REPLY #21703 /* ~"Pourquoi cherches-tu des corps ?"~ */ GOTO 3
  IF ~~ THEN REPLY #21704 /* ~"Qu'est-ce que c'est que cet endroit ?"~ */ GOTO 5
  IF ~~ THEN REPLY #21705 /* ~"J'ai des questions…"~ */ GOTO 6
  IF ~~ THEN REPLY #21706 /* ~"C'est tout ce que je voulais savoir. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 2.0 5.0
  SAY #21679 /* ~Il paraît surpris. "Ben, on traîne les types à la morgue. Là-bas, on discute avec les Hommes-Poussière, on marchande un peu et on récolte un peu d'jonc."~ */
  IF ~~ THEN REPLY #21707 /* ~"Pourquoi est-ce que les Hommes-Poussière achètent les corps ?"~ */ GOTO 4
  IF ~~ THEN REPLY #21708 /* ~"C'est quoi, cet endroit ?"~ */ GOTO 5
  IF ~~ THEN REPLY #21709 /* ~"J'ai quelques questions…"~ */ GOTO 6
  IF ~~ THEN REPLY #21710 /* ~"C'est tout ce que je voulais savoir. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 3.0
  SAY #21680 /* ~"Ils récupèrent les morts… c'est leur boulot. Ils nous paient pour ramasser le plus de corps possible. Puis ils donnent au corps du type la place qu'il lui faut ou ils le font incinérer. Ils prennent ça très au sérieux, leur philosophie d'azimuté, mais moi ça me rapporte du jonc." Il fait un clin d'œil.~ */
  IF ~~ THEN REPLY #21711 /* ~"Où sommes-nous ?"~ */ GOTO 5
  IF ~~ THEN REPLY #21712 /* ~"J'ai des questions…"~ */ GOTO 6
  IF ~~ THEN REPLY #21713 /* ~"C'est tout ce que je voulais savoir. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 1.1 2.1 3.1 4.0 18.1
  SAY #21681 /* ~Il fronce les sourcils. "T'es au Square du Chiffonnier, pardi. D'où est-ce que tu viens, matois ? T'es du Primaire ou quoi ?"~ */
  IF ~~ THEN REPLY #21714 /* ~"Non. Pourquoi cherches-tu des corps ?"~ */ GOTO 3
  IF ~~ THEN REPLY #21715 /* ~"Non. J'ai des questions…"~ */ GOTO 6
  IF ~~ THEN REPLY #21826 /* ~"Non. C'est tout c'que je voulais savoir. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 6 // from: 1.2 2.2 3.2 4.1 5.1 18.2
  SAY #21682 /* ~Il lève les sourcils. "Alors moi aussi j'en ai : Qu'est-ce que tu veux savoir, et combien t'es prêt à payer pour le savoir ?"~ */
  IF ~~ THEN REPLY #21717 /* ~"Qu'est-ce que tu veux dire ?"~ */ GOTO 7
  IF ~~ THEN REPLY #21718 /* ~"Parle-moi des Récupérateurs."~ */ GOTO 7
  IF ~  Global("Pharod","GLOBAL",0)
~ THEN REPLY #21719 /* ~"Je cherche un certain Pharod."~ */ GOTO 7
  IF ~  Global("Journal","GLOBAL",0)
~ THEN REPLY #21720 /* ~"Je cherche un journal que j'ai perdu."~ */ GOTO 7
  IF ~  GlobalGT("Mebbeth","GLOBAL",0)
~ THEN REPLY #21721 /* ~"Que sais-tu de Mebbeth ?"~ */ GOTO 7
  IF ~~ THEN REPLY #21722 /* ~"Peu importe. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 7 // from: 6.0 6.1 6.2 6.3 6.4
  SAY #21683 /* ~"Regarde autour de toi, matois… Je m'fais pas assez de jonc pour aller cracher l'soltif gratos. Faudra m'payer un peu, si tu veux la chanson."~ */
  IF ~  PartyGoldGT(2)
~ THEN REPLY #21723 /* ~Donne-lui deux pièces.~ */ GOTO 8
  IF ~  PartyGoldGT(4)
~ THEN REPLY #21724 /* ~Lance-lui cinq pièces de cuivre.~ */ DO ~TakePartyGold(5)
~ GOTO 9
  IF ~  PartyGoldGT(9)
~ THEN REPLY #21725 /* ~Verse dix pièces de cuivre dans le creux de ses mains.~ */ DO ~TakePartyGold(10)
~ GOTO 10
  IF ~~ THEN REPLY #21726 /* ~"T'auras rien et tu vas répondre à mes questions."~ */ GOTO 17
  IF ~~ THEN REPLY #21727 /* ~"Bon, peu importe. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 8 // from: 7.0 17.1
  SAY #21684 /* ~Il pouffe. "Même les Hommes-Poussière paieraient plus que ça, matois. Tu dois pas avoir besoin d'savoir grand-chose."~ */
  IF ~  PartyGoldGT(4)
~ THEN REPLY #21728 /* ~Lance-lui cinq pièces de cuivre.~ */ DO ~TakePartyGold(5)
~ GOTO 9
  IF ~  PartyGoldGT(9)
~ THEN REPLY #21729 /* ~Verse dix pièces de cuivre dans le creux de ses mains.~ */ DO ~TakePartyGold(10)
~ GOTO 10
  IF ~~ THEN REPLY #21730 /* ~"T'auras rien et tu vas répondre à mes questions."~ */ GOTO 17
  IF ~~ THEN REPLY #21731 /* ~"Bon, peu importe. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 9 // from: 7.1 8.0 17.2
  SAY #21685 /* ~Il étudie les pièces se trouvant dans sa main pendant un instant. "Hé". Il les empoche prestement. "Pose tes questions."~ */
  IF ~~ THEN REPLY #21732 /* ~"Parle-moi des Récupérateurs."~ */ GOTO 12
  IF ~  Global("Pharod","GLOBAL",0)
~ THEN REPLY #21733 /* ~"Je cherche un certain Pharod."~ */ GOTO 13
  IF ~  Global("Journal","GLOBAL",0)
~ THEN REPLY #21734 /* ~"Je cherche un journal que j'ai perdu."~ */ GOTO 16
  IF ~  GlobalGT("Mebbeth","GLOBAL",0)
~ THEN REPLY #21735 /* ~"Que sais-tu de Mebbeth ?"~ */ GOTO 15
  IF ~~ THEN REPLY #21736 /* ~"Peu importe. Au revoir."~ */ GOTO 11
END

IF ~~ THEN BEGIN 10 // from: 7.2 8.1 17.3
  SAY #21686 /* ~"Pose tes questions. J'peux pas jurer que j'peux t'aider, mais on sait jamais."~ */
  IF ~~ THEN REPLY #21737 /* ~"Parle-moi des Récupérateurs."~ */ GOTO 12
  IF ~  Global("Pharod","GLOBAL",0)
~ THEN REPLY #21738 /* ~"Je cherche un certain Pharod."~ */ GOTO 13
  IF ~  Global("Journal","GLOBAL",0)
~ THEN REPLY #21739 /* ~"Je cherche un journal que j'ai perdu."~ */ GOTO 16
  IF ~  GlobalGT("Mebbeth","GLOBAL",0)
~ THEN REPLY #21740 /* ~"Que sais-tu de Mebbeth ?"~ */ GOTO 15
  IF ~~ THEN REPLY #21741 /* ~"Peu importe. Au revoir."~ */ GOTO 11
END

IF ~~ THEN BEGIN 11 // from: 9.4 10.4 12.3 13.5 14.4 15.3 16.3 19.5 20.4
  SAY #21687 /* ~"Bien, fais gaffe à toi, matois. Si j'te trouve dans la rue, j'ferai attention à ton cadavre."~ */
  IF ~~ THEN REPLY #21742 /* ~Pars.~ */ EXIT
END

IF ~~ THEN BEGIN 12 // from: 9.0 10.0 13.2 14.1 15.0 16.0 19.2 20.1
  SAY #21688 /* ~"Je… on… gagne notre vie en ramassant les morts dans les rues de Sigil et en traînant leurs derrières puants jusqu'à la morgue. Pas la meilleure façon d'gagner sa vie, mais faut un début à tout. C'est tout c'que tu veux savoir, matois ?" Il te regarde bizarrement.~ */
  IF ~  Global("Pharod","GLOBAL",0)
~ THEN REPLY #21743 /* ~"Je cherche un certain Pharod."~ */ GOTO 13
  IF ~  Global("Journal","GLOBAL",0)
~ THEN REPLY #21744 /* ~"Je cherche un journal que j'ai perdu."~ */ GOTO 16
  IF ~  GlobalGT("Mebbeth","GLOBAL",0)
~ THEN REPLY #21745 /* ~"Que sais-tu de Mebbeth ?"~ */ GOTO 15
  IF ~~ THEN REPLY #21746 /* ~"C'est tout ce que je voulais savoir. Au revoir."~ */ GOTO 11
END

IF ~~ THEN BEGIN 13 // from: 9.1 10.1 12.0 15.1 16.1
  SAY #21689 /* ~Il plisse soudainement des yeux. "Pharod… qu'est-ce que tu veux savoir sur lui ?"~ */
  IF ~~ THEN REPLY #21747 /* ~"Tu sembles méfiant d'un seul coup … pourquoi ?"~ */ GOTO 19
  IF ~~ THEN REPLY #21748 /* ~"Tu sais où il est ?"~ */ GOTO 14
  IF ~~ THEN REPLY #21749 /* ~"Parle-moi des Récupérateurs."~ */ GOTO 12
  IF ~  Global("Journal","GLOBAL",0)
~ THEN REPLY #21750 /* ~"Je cherche aussi un journal que j'ai perdu."~ */ GOTO 16
  IF ~  GlobalGT("Mebbeth","GLOBAL",0)
~ THEN REPLY #21751 /* ~"Que sais-tu de Mebbeth ?"~ */ GOTO 15
  IF ~~ THEN REPLY #21752 /* ~"C'est tout ce que je voulais savoir. Au revoir."~ */ GOTO 11
END

IF ~~ THEN BEGIN 14 // from: 13.1 19.1 20.0
  SAY #21690 /* ~"Je sais où ce rat puant n'est pas… Il est pas *sur* le Square, mais paraît qu'il est pas loin."~ */
  IF ~~ THEN REPLY #21753 /* ~"Est-ce que tous les Récupérateurs partagent ton avis sur Pharod ?"~ */ GOTO 19
  IF ~~ THEN REPLY #21754 /* ~"Parle-moi des Récupérateurs."~ */ GOTO 12
  IF ~  Global("Journal","GLOBAL",0)
~ THEN REPLY #21755 /* ~"Je cherche aussi un journal que j'ai perdu."~ */ GOTO 16
  IF ~  GlobalGT("Mebbeth","GLOBAL",0)
~ THEN REPLY #21756 /* ~"Que sais-tu de Mebbeth ?"~ */ GOTO 15
  IF ~~ THEN REPLY #21757 /* ~"C'est tout ce que je voulais savoir. Au revoir."~ */ GOTO 11
END

IF ~~ THEN BEGIN 15 // from: 9.3 10.3 12.2 13.4 14.3 16.2 19.4 20.3
  SAY #21691 /* ~"La sage-femme ? Une brave femme, c'est sûr. Elle t'aide quand t'es malade et tout. Elle habite dans une cabane le long de la plate-forme, si tu veux la voir."~ */
  IF ~~ THEN REPLY #21758 /* ~"Parle-moi des Récupérateurs."~ */ GOTO 12
  IF ~  Global("Pharod","GLOBAL",0)
~ THEN REPLY #21759 /* ~"Je cherche un certain Pharod."~ */ GOTO 13
  IF ~  Global("Journal","GLOBAL",0)
~ THEN REPLY #21760 /* ~"Je cherche un journal que j'ai perdu."~ */ GOTO 16
  IF ~~ THEN REPLY #21761 /* ~"C'est tout ce que je voulais savoir. Au revoir."~ */ GOTO 11
END

IF ~~ THEN BEGIN 16 // from: 9.2 10.2 12.1 13.3 14.2 15.2 19.3 20.2
  SAY #21692 /* ~Il ne fait que secouer la tête, intrigué.~ */
  IF ~~ THEN REPLY #21762 /* ~"Parle-moi des Récupérateurs."~ */ GOTO 12
  IF ~  Global("Pharod","GLOBAL",0)
~ THEN REPLY #21763 /* ~"Je cherche aussi un certain Pharod."~ */ GOTO 13
  IF ~  GlobalGT("Mebbeth","GLOBAL",0)
~ THEN REPLY #21764 /* ~"Que sais-tu de Mebbeth ?"~ */ GOTO 15
  IF ~~ THEN REPLY #21765 /* ~"Alors, au revoir."~ */ GOTO 11
END

IF ~~ THEN BEGIN 17 // from: 7.3 8.2
  SAY #21693 /* ~"J'sais rien du tout, lascar, et j'suggère que tu cherches tes réponses ailleurs… si tu m'touches, t'auras affaire à la moitié des affranchis du square, pour sûr."~ */
  IF ~  CheckStatGT(Protagonist,15,STR)
CheckStatGT(Protagonist,11,DEX)
~ THEN REPLY #21766 /* ~Saisis-le, secoue-le un peu.~ */ DO ~Enemy()
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
~ EXIT
  IF ~  PartyGoldGT(2)
~ THEN REPLY #21768 /* ~Donne-lui deux pièces.~ */ GOTO 8
  IF ~  PartyGoldGT(4)
~ THEN REPLY #21773 /* ~Lance-lui cinq pièces de cuivre.~ */ DO ~TakePartyGold(5)
~ GOTO 9
  IF ~  PartyGoldGT(9)
~ THEN REPLY #21778 /* ~Verse dix pièces de cuivre dans le creux de ses mains.~ */ DO ~TakePartyGold(10)
~ GOTO 10
  IF ~~ THEN REPLY #21781 /* ~"Bon, peu importe. Au revoir."~ */ EXIT
END

IF ~  NumTimesTalkedToGT(0)
~ THEN BEGIN 18 // from:
  SAY #21694 /* ~L'homme recule d'un pas, te scrutant avec méfiance sous son capuchon. "Encore, hein ? Qu'est-ce que tu veux ?"~ */
  IF ~~ THEN REPLY #21783 /* ~"Qu'est-ce que tu fais ?"~ */ GOTO 2
  IF ~~ THEN REPLY #21785 /* ~"C'est quoi, cet endroit ?"~ */ GOTO 5
  IF ~~ THEN REPLY #21787 /* ~"J'ai des questions…"~ */ GOTO 6
  IF ~~ THEN REPLY #21789 /* ~"Rien. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 19 // from: 13.0 14.0
  SAY #21695 /* ~"Pharod, pff !" Il crache, ricanant avec mépris. "Le Square du Chiffonnier est le territoire de mon patron, Partagetombe, tu vois. Pharod et ses chiens sont venus il y a longtemps et ont essayé de nous faire déguerpir. On les a chassés, ben vrai, et ils s'cachent maintenant quelque part. On attrape de temps en temps un de ses gars dans les environs. D'habitude, on les transforme rapidement en jonc à la morgue, ces bons à riens."~ */
  IF ~~ THEN REPLY #21791 /* ~"Parle-moi de Partagetombe."~ */ GOTO 20
  IF ~~ THEN REPLY #21793 /* ~"Sais-tu où est Pharod ?"~ */ GOTO 14
  IF ~~ THEN REPLY #21795 /* ~"Parle-moi des Récupérateurs."~ */ GOTO 12
  IF ~  Global("Journal","GLOBAL",0)
~ THEN REPLY #21796 /* ~"Je cherche aussi un journal que j'ai perdu."~ */ GOTO 16
  IF ~  GlobalGT("Mebbeth","GLOBAL",0)
~ THEN REPLY #21797 /* ~"Que sais-tu de Mebbeth ?"~ */ GOTO 15
  IF ~~ THEN REPLY #21798 /* ~"C'est tout ce que je voulais savoir. Au revoir."~ */ GOTO 11
END

IF ~~ THEN BEGIN 20 // from: 19.0
  SAY #21696 /* ~"C'est mon patron… il a pas mal de Récupérateurs dans sa poche, crois-moi. J'resterais loin de lui, si j'étais toi, sauf si t'as *vraiment* une bonne raison d'parler au gars… J'lui ai jamais parlé en face, moi-même."~ */
  IF ~~ THEN REPLY #21802 /* ~"Sais-tu où est Pharod ?"~ */ GOTO 14
  IF ~~ THEN REPLY #21803 /* ~"Parle-moi des Récupérateurs."~ */ GOTO 12
  IF ~  Global("Journal","GLOBAL",0)
~ THEN REPLY #21804 /* ~"Je cherche aussi un journal que j'ai perdu."~ */ GOTO 16
  IF ~  GlobalGT("Mebbeth","GLOBAL",0)
~ THEN REPLY #21807 /* ~"Que sais-tu de Mebbeth ?"~ */ GOTO 15
  IF ~~ THEN REPLY #21810 /* ~"C'est tout ce que je voulais savoir. Au revoir."~ */ GOTO 11
END
