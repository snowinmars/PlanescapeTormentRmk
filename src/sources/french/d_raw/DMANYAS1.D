// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DMANYAS1.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\fr_FR\dialog.tlk
// dialogF  : (none)

BEGIN ~DMANYAS1~
//////////////////////////////////////////////////
// WARNING: this file contains non-trivial WEIGHTs
//////////////////////////////////////////////////

IF WEIGHT #10 /* Triggers after states #: 15 14 12 11 9 25 24 8 7 13 even though they appear after this state */
~  Global("RatWarren","GLOBAL",0)
~ THEN BEGIN 0 // from:
  SAY #2955 /* ~Tu es abasourdi par le son de centaines de voix n'en formant qu'une dans ton esprit - il y a là une profondeur et une insistance qui rappellent les paroles que prononcent les clochards. "ANNONCE LA RAISON DE TA PRÉSENCE ICI, BIPÈDE, ET PARLE VITE ET FRANCHEMENT. TU ES DANS LES SALLES DE TANT-EN-UN. TU NE QUITTERAS CES LIEUX QUE PAR NOTRE GRÂCE. SACHE QUE NOUS POUVONS LIRE DANS TES PENSÉES ET SENTIR TES MENSONGES."~ */
  IF ~  NearbyDialog("DAnnah")
NearbyDialog("DMorte")
~ THEN REPLY #2956 /* ~"Qui es-tu ?"~ */ GOTO 1
  IF ~  !NearbyDialog("DAnnah")
NearbyDialog("DMorte")
~ THEN REPLY #38655 /* ~"Qui es-tu ?"~ */ GOTO 2
  IF ~  NearbyDialog("DAnnah")
!NearbyDialog("DMorte")
~ THEN REPLY #38656 /* ~"Qui es-tu ?"~ */ GOTO 3
  IF ~  !NearbyDialog("DAnnah")
!NearbyDialog("DMorte")
~ THEN REPLY #38657 /* ~"Qui es-tu ?"~ */ GOTO 4
  IF ~  NearbyDialog("DAnnah")
NearbyDialog("DMorte")
~ THEN REPLY #38658 /* ~"Qu'est-ce que c'est que cet endroit ?"~ */ GOTO 1
  IF ~  !NearbyDialog("DAnnah")
NearbyDialog("DMorte")
~ THEN REPLY #38659 /* ~"Qu'est-ce que c'est que cet endroit ?"~ */ GOTO 2
  IF ~  NearbyDialog("DAnnah")
!NearbyDialog("DMorte")
~ THEN REPLY #38660 /* ~"Qu'est-ce que c'est que cet endroit ?"~ */ GOTO 3
  IF ~  !NearbyDialog("DAnnah")
!NearbyDialog("DMorte")
~ THEN REPLY #38661 /* ~"Qu'est-ce que c'est que cet endroit ?"~ */ GOTO 4
  IF ~  Global("Silent_King","GLOBAL",1)
Global("Lawful_Hargrimm_1","GLOBAL",1)
~ THEN REPLY #38662 /* ~"Sache que le Roi Silencieux n'est qu'un squelette mort. Il n'a aucun pouvoir."~ */ DO ~SetGlobal("CR_Vic","GLOBAL",4)
IncrementGlobalOnceEx("GLOBALChaotic_Hargrimm_7","GLOBALLaw",-3)
IncrementGlobalOnceEx("GLOBALEvil_Hargrimm_3","GLOBALGood",-1)
~ GOTO 6
  IF ~  Global("Silent_King","GLOBAL",1)
!Global("Lawful_Hargrimm_1","GLOBAL",1)
~ THEN REPLY #38663 /* ~"Sache que le Roi Silencieux n'est qu'un squelette mort. Il n'a aucun pouvoir."~ */ DO ~SetGlobal("CR_Vic","GLOBAL",4)
~ GOTO 6
  IF ~  Global("Silent_King","GLOBAL",1)
~ THEN REPLY #38664 /* ~Bluff : "Sache que le Roi Silencieux est trop puissant pour qu'on l'attaque. Reste à l'écart des Nations Mortes ou les cadavres te détruiront."~ */ DO ~SetGlobal("CR_Vic","GLOBAL",5)
~ GOTO 26
  IF ~~ THEN REPLY #38665 /* ~"Je suis venu te voir, Tant-en-Un."~ */ GOTO 27
  IF ~~ THEN REPLY #38666 /* ~"Je suis venu par hasard."~ */ GOTO 28
  IF ~  CheckStatGT(Protagonist,13,INT)
~ THEN REPLY #38667 /* ~"Si tu peux lire ma pensée, pourquoi devrais-je dire ce que je cherche ?"~ */ GOTO 29
END

IF ~~ THEN BEGIN 1 // from: 0.0 0.4
  SAY #38668 /* ~"NOUS SOMMES LES YEUX DES SOMBRES LIEUX. NOUS SOMMES LES MULTIPLES QUI NE FONT QU'UN. NOUS NE RÉPONDRONS PAS À TES QUESTIONS. AUX NÔTRES TU RÉPONDRAS. QUE FAIS-TU ICI, SI LOIN DES CORRIDORS ÉCLAIRÉS DE L'HUMANITÉ ?"~ */
  IF ~~ THEN EXTERN ~DANNAH~ 188
END

IF ~~ THEN BEGIN 2 // from: 0.1 0.5
  SAY #38669 /* ~"NOUS SOMMES LES YEUX DES SOMBRES LIEUX. NOUS SOMMES LES MULTIPLES QUI NE FONT QU'UN. NOUS NE RÉPONDRONS PAS À TES QUESTIONS. AUX NÔTRES TU RÉPONDRAS. QUE FAIS-TU ICI, SI LOIN DES CORRIDORS ÉCLAIRÉS DE L'HUMANITÉ ?"~ */
  IF ~~ THEN EXTERN ~DMORTE~ 404
END

IF ~~ THEN BEGIN 3 // from: 0.2 0.6
  SAY #38670 /* ~"NOUS SOMMES LES YEUX DES SOMBRES LIEUX. NOUS SOMMES LES MULTIPLES QUI NE FONT QU'UN. NOUS NE RÉPONDRONS PAS À TES QUESTIONS. AUX NÔTRES TU RÉPONDRAS. QUE FAIS-TU ICI, SI LOIN DES CORRIDORS ÉCLAIRÉS DE L'HUMANITÉ ?"~ */
  IF ~~ THEN EXTERN ~DANNAH~ 189
END

IF ~~ THEN BEGIN 4 // from: 0.3 0.7
  SAY #38671 /* ~"NOUS SOMMES LES YEUX DES SOMBRES LIEUX. NOUS SOMMES LES MULTIPLES QUI NE FONT QU'UN. NOUS NE RÉPONDRONS PAS À TES QUESTIONS. AUX NÔTRES TU RÉPONDRAS. DIS TA PENSÉE ET RAPPELLE-TOI QUE NOUS ENTENDONS LES MENSONGES. QUE FAIS-TU ICI, SI LOIN DES CORRIDORS ÉCLAIRÉS DE L'HUMANITÉ  ?"~ */
  IF ~  Global("Silent_King","GLOBAL",1)
Global("Lawful_Hargrimm_1","GLOBAL",1)
~ THEN REPLY #38672 /* ~"Sache que le Roi Silencieux n'est qu'un squelette mort. Il n'a aucun pouvoir."~ */ DO ~SetGlobal("CR_Vic","GLOBAL",4)
IncrementGlobalOnceEx("GLOBALChaotic_Hargrimm_7","GLOBALLaw",-3)
IncrementGlobalOnceEx("GLOBALEvil_Hargrimm_3","GLOBALGood",-1)
~ GOTO 6
  IF ~  Global("Silent_King","GLOBAL",1)
!Global("Lawful_Hargrimm_1","GLOBAL",1)
~ THEN REPLY #38673 /* ~"Sache que le Roi Silencieux n'est qu'un squelette mort. Il n'a aucun pouvoir."~ */ DO ~SetGlobal("CR_Vic","GLOBAL",4)
~ GOTO 6
  IF ~  Global("Silent_King","GLOBAL",1)
~ THEN REPLY #38674 /* ~Bluff : "Sache que le Roi Silencieux est trop puissant pour qu'on l'attaque. Reste à l'écart des Nations Mortes ou les cadavres te détruiront."~ */ DO ~SetGlobal("CR_Vic","GLOBAL",5)
~ GOTO 26
  IF ~~ THEN REPLY #38675 /* ~"Je suis venu te voir, Tant-en-Un."~ */ GOTO 27
  IF ~~ THEN REPLY #38676 /* ~"Je suis venu par hasard."~ */ GOTO 28
  IF ~  CheckStatGT(Protagonist,13,INT)
~ THEN REPLY #38677 /* ~"Si tu peux lire ma pensée, pourquoi devrais-je dire ce que je cherche ?"~ */ GOTO 29
END

IF ~~ THEN BEGIN 5 // from:
  SAY #38678 /* ~Les voix qui te résonnent dans la tête sont muettes ; pourtant, elles sont presque assourdissantes. "NOUS RÉDUISONS CEUX QUI SONT AVEC TOI AU SILENCE. TU ES DANS LES DÉDALES DE LA PENSÉE. TANT-EN-UN RÈGNE SANS PARTAGE. DIS TA PENSÉE ET RAPPELLE-TOI QUE NOUS ENTENDONS LES MENSONGES. QUE CHERCHES-TU DANS LES TUNNELS TÉNÉBREUX ?"~ */
  IF ~  Global("Silent_King","GLOBAL",1)
Global("Lawful_Hargrimm_1","GLOBAL",1)
~ THEN REPLY #38679 /* ~"Sache que le Roi Silencieux n'est qu'un squelette mort. Il n'a aucun pouvoir."~ */ DO ~SetGlobal("CR_Vic","GLOBAL",4)
IncrementGlobalOnceEx("GLOBALChaotic_Hargrimm_7","GLOBALLaw",-3)
IncrementGlobalOnceEx("GLOBALEvil_Hargrimm_3","GLOBALGood",-1)
~ GOTO 6
  IF ~  Global("Silent_King","GLOBAL",1)
!Global("Lawful_Hargrimm_1","GLOBAL",1)
~ THEN REPLY #38680 /* ~"Sache que le Roi Silencieux n'est qu'un squelette mort. Il n'a aucun pouvoir."~ */ DO ~SetGlobal("CR_Vic","GLOBAL",4)
~ GOTO 6
  IF ~  Global("Silent_King","GLOBAL",1)
~ THEN REPLY #38681 /* ~Bluff : "Sache que le Roi Silencieux est trop puissant pour qu'on l'attaque. Reste à l'écart des Nations Mortes ou les cadavres te détruiront."~ */ DO ~SetGlobal("CR_Vic","GLOBAL",5)
~ GOTO 26
  IF ~~ THEN REPLY #38682 /* ~"Je suis venu te voir, Tant-en-Un."~ */ GOTO 27
  IF ~~ THEN REPLY #38683 /* ~"Je suis venu par hasard."~ */ GOTO 28
  IF ~  CheckStatGT(Protagonist,13,INT)
~ THEN REPLY #38684 /* ~"Si tu peux lire ma pensée, pourquoi devrais-je dire ce que je cherche ?"~ */ GOTO 29
END

IF ~~ THEN BEGIN 6 // from: 0.8 0.9 4.0 4.1 5.0 5.1 8.0 8.1
  SAY #38685 /* ~"CONSIDÈRE QUE LES MORTS SONT MORTS. LEUR ROI IMPUISSANT NE PEUT PLUS NOUS GÊNER. TU T'ES MONTRÉ UTILE. POUR CES INFORMATIONS, NOUS ABATTONS LA BARRIÈRE DE TON ESPRIT ET TE RÉVÉLONS À TOI-MÊME. PRÉPARE-TOI À LA RÉVÉLATION."~ */
  IF ~~ THEN REPLY #38686 /* ~"Attends ! Pas encore !"~ */ DO ~AddexperienceParty(7500)
SetGlobal("CR_Vic","GLOBAL",6)
~ JOURNAL #38208 /* ~J'ai informé Tant-en-Un que le Roi Silencieux n'était qu'un misérable squelette dénué de pouvoirs. Les rats ont promis de s'emparer sans attendre des catacombes de Sigil.~ */ GOTO 16
  IF ~~ THEN REPLY #38687 /* ~"Je suis prêt."~ */ DO ~AddexperienceParty(7500)
SetGlobal("CR_Vic","GLOBAL",6)
~ JOURNAL #38208 /* ~J'ai informé Tant-en-Un que le Roi Silencieux n'était qu'un misérable squelette dénué de pouvoirs. Les rats ont promis de s'emparer sans attendre des catacombes de Sigil.~ */ GOTO 16
END

IF WEIGHT #1 /* Triggers after states #: 13 even though they appear after this state */
~  Global("CR_Vic","GLOBAL",2)
~ THEN BEGIN 7 // from:
  SAY #38690 /* ~"TU OSES REAPPARAITRE ICI, BIPEDE ? IMPRUDENT. PREPARE-TOI."~ */
  IF ~~ THEN REPLY #38691 /* ~Bats-toi.~ */ DO ~SetGlobal("MAO_Warn","GLOBAL",3)
Enemy()
~ EXIT
END

IF WEIGHT #2 /* Triggers after states #: 13 even though they appear after this state */
~  GlobalGT("CR_Vic","GLOBAL",0)
Global("RatWarren","GLOBAL",0)
~ THEN BEGIN 8 // from: 35.9 36.7 37.7 40.2
  SAY #38692 /* ~"DIS-NOUS CE QUE TU SAIS, BIPÈDE."~ */
  IF ~  Global("Silent_King","GLOBAL",1)
Global("Lawful_Hargrimm_1","GLOBAL",1)
~ THEN REPLY #38693 /* ~"Le Roi Silencieux n'est qu'un squelette mort. Il n'a aucun pouvoir."~ */ DO ~SetGlobal("CR_Vic","GLOBAL",4)
IncrementGlobalOnceEx("GLOBALChaotic_Hargrimm_7","GLOBALLaw",-3)
IncrementGlobalOnceEx("GLOBALEvil_Hargrimm_3","GLOBALGood",-1)
~ GOTO 6
  IF ~  Global("Silent_King","GLOBAL",1)
!Global("Lawful_Hargrimm_1","GLOBAL",1)
~ THEN REPLY #38694 /* ~"Le Roi Silencieux n'est qu'un squelette mort. Il n'a aucun pouvoir."~ */ DO ~SetGlobal("CR_Vic","GLOBAL",4)
~ GOTO 6
  IF ~  Global("Silent_King","GLOBAL",1)
~ THEN REPLY #38695 /* ~Bluff : "Le Roi Silencieux est trop fort pour attaquer. Ne t'approche pas des Nations Mortes ou les cadavres te détruiront."~ */ DO ~SetGlobal("CR_Vic","GLOBAL",5)
~ GOTO 26
  IF ~~ THEN REPLY #38696 /* ~"Je n'ai encore rien."~ */ GOTO 30
  IF ~  Global("Ghoul_Attack","GLOBAL",1)
~ THEN REPLY #66547 /* ~"Les goules sont devenues folles et ont pris le contrôle des Nations Mortes."~ */ DO ~SetGlobal("CR_Vic","GLOBAL",3)
~ GOTO 9
END

IF WEIGHT #5 /* Triggers after states #: 25 24 13 even though they appear after this state */
~  Global("Ghoul_Attack","GLOBAL",1)
Global("Ghoul_Attack","GLOBAL",1)
GlobalGT("CR_Vic","GLOBAL",0)
!Global("CR_Vic","GLOBAL",2)
GlobalLT("CR_Vic","GLOBAL",5)
~ THEN BEGIN 9 // from: 8.4 24.4 25.4
  SAY #38697 /* ~"LES GOULES SONT TROP PUISSANTES, MÊME POUR MES RATS-GAROUS. TA MISSION A ÉCHOUÉ. ON N'A PLUS BESOIN DE TES SERVICES. VA-T'EN. SI TU RESTES, C'EST À TES RISQUES ET PÉRILS."~ */
  IF ~~ THEN REPLY #38698 /* ~"Quoi, mais tu ne peux pas me rejeter comme ça ?"~ */ DO ~SetGlobal("CR_Vic","GLOBAL",3)
AddexperienceParty(7500)
SetGlobal("MAO_Warn","GLOBAL",1)
~ GOTO 10
  IF ~~ THEN REPLY #38699 /* ~"Alors, au revoir."~ */ DO ~SetGlobal("CR_Vic","GLOBAL",3)
AddexperienceParty(7500)
SetGlobal("Mao_warn","GLOBAL",1)
~ JOURNAL #38207 /* ~Les goules ont envahi les Nations Mortes et les rats-crânes ont du mal à s'y implanter. Ils m'ont chassé de chez eux, en me prévenant qu'un sort terrible m'attendait si j'osais un jour revenir.~ */ EXIT
END

IF ~~ THEN BEGIN 10 // from: 9.0 12.0 14.0 26.0
  SAY #38789 /* ~"OUI. SI NOUS N'AVONS PAS À ÉTENDRE NOTRE PUISSANCE SUR LE ROI SILENCIEUX, NOUS EN AVONS PLUS QU'IL N'EN FAUT POUR ÉCRASER TON EGO FRAGILE. FILE. NE REVIENS PAS."~ */
  IF ~~ THEN REPLY #38859 /* ~"Non."~ */ DO ~SetGlobal("MAO_Warn","GLOBAL",3)
Enemy()
~ EXIT
  IF ~~ THEN REPLY #38860 /* ~"Alors, au revoir."~ */ EXIT
END

IF WEIGHT #6 /* Triggers after states #: 25 24 13 even though they appear after this state */
~  Global("CR_Vic","GLOBAL",3)
~ THEN BEGIN 11 // from:
  SAY #38790 /* ~"TU ÉTAIS PRÉVENU, BIPÈDE. PRÉPARE TON ESPRIT POUR LA FRONTIÈRE ÉTERNELLE."~ */
  IF ~~ THEN REPLY #38861 /* ~"On peut trouver une solution !"~ */ DO ~SetGlobal("MAO_Warn","GLOBAL",3)
Enemy()
~ EXIT
  IF ~~ THEN REPLY #38862 /* ~Bats-toi.~ */ DO ~SetGlobal("MAO_Warn","GLOBAL",3)
Enemy()
ForceAttack(Protagonist,Myself)
~ EXIT
END

IF WEIGHT #7 /* Triggers after states #: 25 24 13 even though they appear after this state */
~  Global("Know_Mantuok","GLOBAL",1)
Global("CR_Vic","GLOBAL",5)
~ THEN BEGIN 12 // from:
  SAY #38791 /* ~"LA VOIX DE TANT A FAIT PARLER TA MISSION. LE ROI SILENCIEUX EST TROP PUISSANT, DIS-TU. NOUS NE VOYONS PAS DE MENSONGES DANS TON CŒUR. QUITTE LES DÉDALES DE LA PENSÉE EN GARDANT LA VIE EN CADEAU. TU AS SERVI TON DESSEIN."~ */
  IF ~~ THEN REPLY #38863 /* ~"Tu ne vas quand même pas me rejeter comme ça ?"~ */ DO ~SetGlobal("MAO_Warn","GLOBAL",1)
AddexperienceParty(7500)
~ JOURNAL #38206 /* ~J'ai averti Tant-en-Un que le Roi Silencieux était trop puissant pour lui. L'esprit commun des rats-crânes n'a pas perçu le mensonge dans mes dires, mais il m'a interdit de revenir aux Dédales de la Pensée, sous peine de mort. Nous verrons bien.~ */ GOTO 10
  IF ~~ THEN REPLY #38864 /* ~"Très bien. Au revoir."~ */ DO ~SetGlobal("MAO_Warn","GLOBAL",1)
AddexperienceParty(7500)
~ JOURNAL #38206 /* ~J'ai averti Tant-en-Un que le Roi Silencieux était trop puissant pour lui. L'esprit commun des rats-crânes n'a pas perçu le mensonge dans mes dires, mais il m'a interdit de revenir aux Dédales de la Pensée, sous peine de mort. Nous verrons bien.~ */ EXIT
END

IF WEIGHT #0 ~  GlobalGT("MAO_Warn","GLOBAL",0)
GlobalLT("MAO_Warn","GLOBAL",3)
~ THEN BEGIN 13 // from:
  SAY #38792 /* ~"TU ÉTAIS PRÉVENU, BIPÈDE. PRÉPARE TON ESPRIT POUR LA FRONTIÈRE ÉTERNELLE."~ */
  IF ~~ THEN REPLY #38865 /* ~"On peut trouver une solution !"~ */ DO ~SetGlobal("MAO_Warn","GLOBAL",3)
Enemy()
~ EXIT
  IF ~~ THEN REPLY #38866 /* ~Bats-toi.~ */ DO ~SetGlobal("MAO_Warn","GLOBAL",3)
Enemy()
~ EXIT
END

IF WEIGHT #8 /* Triggers after states #: 25 24 even though they appear after this state */
~  Global("Know_Mantuok","GLOBAL",1)
Global("CR_Vic","GLOBAL",4)
GlobalGT("RatWarren","GLOBAL",0)
~ THEN BEGIN 14 // from:
  SAY #38793 /* ~"L'ESPRIT DE LA VOIX DE TANT RÉVÈLE TES SECRETS. MAINTENANT, NOUS CONNAISSONS LA VÉRITÉ DU ROI SILENCIEUX. NOUS SOMMES RECONNAISSANTS POUR CES INFORMATIONS…" Plus menaçante, la voix qui te résonne dans la tête continue : "… ET DONC NOUS NE VENGERONS PAS CEUX QUE TU AS TUÉS. PARS. ET NE REVIENS JAMAIS DANS LES DÉDALES DE LA PENSÉE. PARS, BIPÈDE. TON UTILITÉ EST TERMINÉE."~ */
  IF ~~ THEN REPLY #38867 /* ~"Alors, tu vas me rejeter comme ça ? Après tout ce que j'ai fait pour toi ?"~ */ DO ~SetGlobal("MAO_Warn","GLOBAL",1)
AddexperienceParty(7500)
~ JOURNAL #38869 /* ~J'ai dit à Tant-en-Un que le Roi Silencieux ne constituait pas une menace. Comme j'avais tué un ou deux rats-crânes, ils m'ont laissé la vie sauve, mais tout juste. Je hais ces saletés de rats !~ */ GOTO 10
  IF ~~ THEN REPLY #38868 /* ~"Très bien. Au revoir."~ */ DO ~SetGlobal("MAO_Warn","GLOBAL",1)
AddexperienceParty(7500)
~ JOURNAL #38869 /* ~J'ai dit à Tant-en-Un que le Roi Silencieux ne constituait pas une menace. Comme j'avais tué un ou deux rats-crânes, ils m'ont laissé la vie sauve, mais tout juste. Je hais ces saletés de rats !~ */ EXIT
END

IF WEIGHT #9 /* Triggers after states #: 25 24 even though they appear after this state */
~  Global("Know_Mantuok","GLOBAL",1)
Global("CR_Vic","GLOBAL",4)
Global("RatWarren","GLOBAL",0)
~ THEN BEGIN 15 // from:
  SAY #38794 /* ~"L'ESPRIT DE LA VOIX DE TANT RÉVÈLE TES SECRETS. MAINTENANT, NOUS CONNAISSONS LA VÉRITÉ DU ROI SILENCIEUX. TU T'ES MONTRÉ UTILE. NOUS ABATTRONS LES BARRIÈRES DE TON ESPRIT ET TE RÉVÉLERONS À TOI-MÊME."~ */
  IF ~~ THEN REPLY #38875 /* ~"Attends ! Pas encore !"~ */ DO ~AddexperienceParty(7500)
~ GOTO 16
  IF ~~ THEN REPLY #38876 /* ~"Je suis prêt."~ */ DO ~AddexperienceParty(7500)
~ GOTO 16
END

IF ~~ THEN BEGIN 16 // from: 6.0 6.1 15.0 15.1 59.0
  SAY #38795 /* ~Tu sens une pression se former dans ta tête, comme si des milliers de minuscules corps gesticulants poussaient un mur contre ton esprit. Instinctivement, tu résistes, mais après une éternité, la pression devient trop forte et une vague de souvenirs noirs vient exploser tes défenses.~ */
  IF ~  CheckStatLT(Protagonist,14,WIS)
~ THEN REPLY #67715 /* ~Abandonne.~ */ DO ~PlaySoundNotRanged("SPTR_01")
GiveExperience(Protagonist,1000)
~ GOTO 17
  IF ~  CheckStatGT(Protagonist,13,WIS)
~ THEN REPLY #67718 /* ~Abandonne.~ */ DO ~PlaySoundNotRanged("SPTR_01")
GiveExperience(Protagonist,2000)
~ GOTO 17
END

IF ~~ THEN BEGIN 17 // from: 16.0 16.1
  SAY #38796 /* ~Éperdu, tu cours dans une cité entièrement faite de chaînes… immeubles, rues, égouts et canalisations, tous forment un réseau serré de torons métalliques. Au-dessus, un ciel coagulé jette ses lueurs maléfiques tandis que ton pas affolé résonne à travers cette toile dense de fils noirs argentés. Tu jettes un coup d'œil par-dessus ton épaule pour voir si tu as semé tes poursuivants… Rien, personne. Tu fonces…~ */
  IF ~  Class(Protagonist,FIGHTER)
~ THEN REPLY #38880 /* ~(continue)~ */ DO ~GiveExperience(Protagonist,1000)
~ GOTO 18
  IF ~  Class(Protagonist,THIEF)
~ THEN REPLY #38881 /* ~(continue)~ */ DO ~GiveExperience(Protagonist,1000)
~ GOTO 20
  IF ~  Class(Protagonist,MAGE)
~ THEN REPLY #38882 /* ~(continue)~ */ DO ~GiveExperience(Protagonist,1000)
~ GOTO 21
END

IF ~~ THEN BEGIN 18 // from: 17.0
  SAY #38797 /* ~… debout en silence devant toi, une créature enveloppée de chaînes de la tête aux pieds ; elle arbore sous son masque un large sourire démoniaque. Une chaîne se déroule de sa main tendue et vient t'enserrer la cheville. Une autre jaillit du mur sur ta gauche et vient te balafrer le poignet. Tu l'attrapes au vol et, d'un nœud habile, tu la lances autour du cou de ton ennemi. Tu tires d'un coup sec sur la chaîne… et tu entends les vertèbres de la créature se rompre… C'est alors qu'une horde caquetante de monstres semblables jette des chaînes sur toi. Tu te débats et arrives à te libérer de ce souvenir.~ */
  IF ~~ THEN REPLY #38883 /* ~(continue)~ */ DO ~GiveExperience(Protagonist,1000)
~ GOTO 19
END

IF ~~ THEN BEGIN 19 // from: 18.0 20.0 21.0
  SAY #38798 /* ~"TU AS EU TES RÉPONSES." La voix caverneuse semble étrangement épuisée par l'effort. "NOS AFFAIRES FINISSENT LÀ. PLUS LA PEINE DE NOUS RENCONTRER. SI TU REVIENS, NOUS TE DÉTRUIRONS."~ */
  IF ~~ THEN REPLY #38884 /* ~"Alors, au revoir."~ */ DO ~SetGlobal("MAO_Warn","GLOBAL",1)
~ EXIT
END

IF ~~ THEN BEGIN 20 // from: 17.1
  SAY #38799 /* ~… debout en silence devant toi, une créature enveloppée de chaînes de la tête aux pieds ; elle arborre sous son masque un large sourire débile. Une chaîne se déroule de sa main tendue et vient t'enserrer la cheville. Une autre jaillit du mur sur ta gauche et vient te balafrer le poignet. Tu te débarrasses de la chaîne qui t'emprisonne la jambe et en esquives une autre ; tes gestes sont désordonnés mais ils évitent quand même un paquet de chaînes envoyées par la créature. En moins de temps qu'il n'en faut pour t'en souvenir, tu es arrivé près du monstre et tu lui enfonces les pouces dans les yeux, lui transperçant le cerveau. Le corps pend entre tes mains… et une horde caquetante de ses comparses jette des chaînes sur toi. Tu te débats et arrives à te libérer de ce souvenir.~ */
  IF ~~ THEN REPLY #38886 /* ~(continue)~ */ DO ~GiveExperience(Protagonist,1000)
~ GOTO 19
END

IF ~~ THEN BEGIN 21 // from: 17.2
  SAY #38800 /* ~… debout en silence devant toi, une créature enveloppée de chaînes de la tête aux pieds ; elle arbore sous son masque un large sourire débile. Une chaîne s'échappe en dansant de sa main tendue et se dirige vers ta gorge… Tu l'arrêtes sur sa lancée par une vague de flammes… Ne reste plus qu'un tas de scories et le propriétaire en feu, qui fond et fuit en hurlant. Tu restes à le regarder, puis tu entends les gloussements de ses comparses derrière toi. Ils jettent un filet de chaînes sur toi et tout devient noir. Tu parviens à t'arracher de ce souvenir.~ */
  IF ~~ THEN REPLY #38887 /* ~(continue)~ */ DO ~GiveExperience(Protagonist,1000)
~ GOTO 19
END

IF WEIGHT #11 /* Triggers after states #: 25 24 even though they appear after this state */
~  GlobalLT("RatWarren","GLOBAL",5)
GlobalGT("RatWarren","GLOBAL",0)
~ THEN BEGIN 22 // from:
  SAY #38801 /* ~Une voix qui semble en contenir des milliers parlant toutes ensemble, telles des écailles qui se tortillent, résonne dans ta tête. Une formidable colère - et un sentiment d'impuissance - palpite sous la surface, un flot de rage. "MEURTRIER. AVOUE TON DESSEIN."~ */
  IF ~  NearbyDialog("DAnnah")
NearbyDialog("DMorte")
~ THEN REPLY #38890 /* ~"Qui es-tu ?"~ */ GOTO 53
  IF ~  !NearbyDialog("DAnnah")
NearbyDialog("DMorte")
~ THEN REPLY #38891 /* ~"Qui es-tu ?"~ */ GOTO 54
  IF ~  NearbyDialog("DAnnah")
!NearbyDialog("DMorte")
~ THEN REPLY #38892 /* ~"Qui es-tu ?"~ */ GOTO 55
  IF ~  !NearbyDialog("DAnnah")
!NearbyDialog("DMorte")
~ THEN REPLY #38893 /* ~"Qui es-tu ?"~ */ GOTO 56
  IF ~  NearbyDialog("DAnnah")
NearbyDialog("DMorte")
~ THEN REPLY #38894 /* ~"C'est quoi, cet endroit ?"~ */ GOTO 53
  IF ~  !NearbyDialog("DAnnah")
NearbyDialog("DMorte")
~ THEN REPLY #38895 /* ~"C'est quoi, cet endroit ?"~ */ GOTO 54
  IF ~  NearbyDialog("DAnnah")
!NearbyDialog("DMorte")
~ THEN REPLY #38896 /* ~"C'est quoi, cet endroit ?"~ */ GOTO 55
  IF ~  !NearbyDialog("DAnnah")
!NearbyDialog("DMorte")
~ THEN REPLY #38897 /* ~"C'est quoi, cet endroit ?"~ */ GOTO 57
  IF ~  Global("Silent_King","GLOBAL",1)
Global("Lawful_Hargrimm_1","GLOBAL",1)
~ THEN REPLY #38898 /* ~"Sache que le Roi Silencieux n'est qu'un squelette mort. Il n'a aucun pouvoir."~ */ DO ~SetGlobal("CR_Vic","GLOBAL",4)
IncrementGlobalOnceEx("GLOBALChaotic_Hargrimm_7","GLOBALLaw",-3)
IncrementGlobalOnceEx("GLOBALEvil_Hargrimm_3","GLOBALGood",-1)
~ GOTO 59
  IF ~  Global("Silent_King","GLOBAL",1)
!Global("Lawful_Hargrimm_1","GLOBAL",1)
~ THEN REPLY #38899 /* ~"Sache que le Roi Silencieux n'est qu'un squelette mort. Il n'a aucun pouvoir."~ */ DO ~SetGlobal("CR_Vic","GLOBAL",4)
~ GOTO 59
  IF ~~ THEN REPLY #38900 /* ~"Pourquoi m'appelles-tu 'meurtrier' ?"~ */ GOTO 60
  IF ~~ THEN REPLY #38901 /* ~"Aucun dessein particulier. Je m'apprêtais à partir."~ */ GOTO 28
END

IF WEIGHT #12 /* Triggers after states #: 25 24 even though they appear after this state */
~  GlobalGT("RatWarren","GLOBAL",4)
~ THEN BEGIN 23 // from:
  SAY #38802 /* ~Une voix qui semble contenir la douleur et l'angoisse de milliers résonne dans ton crâne. Elle paraît étrangement soumise à un courant de colère formidable. "MEURTRIER… NOUS TE DEMANDONS DE QUITTER NOS SALLES. NOUS NE VOULONS PLUS D'AFFRONTEMENT AVEC TOI. SI TU NOUS FAIS UNE FAVEUR, NOUS POUVONS TE RENDRE UN SERVICE, ET CHACUN PEUT REPRENDRE SON CHEMIN EN PAIX."~ */
  IF ~  NearbyDialog("DAnnah")
NearbyDialog("DMorte")
~ THEN REPLY #38902 /* ~"Qui es-tu ?"~ */ GOTO 70
  IF ~  !NearbyDialog("DAnnah")
NearbyDialog("DMorte")
~ THEN REPLY #38903 /* ~"Qui es-tu ?"~ */ GOTO 71
  IF ~  NearbyDialog("DAnnah")
!NearbyDialog("DMorte")
~ THEN REPLY #38904 /* ~"Qui es-tu ?"~ */ GOTO 72
  IF ~  !NearbyDialog("DAnnah")
!NearbyDialog("DMorte")
~ THEN REPLY #38905 /* ~"Qui es-tu ?"~ */ GOTO 73
  IF ~~ THEN REPLY #38906 /* ~"Pourquoi m'appelles-tu 'meurtrier' ?"~ */ GOTO 35
  IF ~~ THEN REPLY #38907 /* ~"Que veux-tu que je fasse ?"~ */ GOTO 35
  IF ~~ THEN REPLY #38908 /* ~"À dire vrai, je suis là pour t'éliminer."~ */ GOTO 75
  IF ~~ THEN REPLY #38909 /* ~"Je vais y réfléchir."~ */ GOTO 76
END

IF WEIGHT #3 ~  GlobalGT("CR_Vic","GLOBAL",0)
GlobalLT("RatWarren","GLOBAL",5)
GlobalGT("RatWarren","GLOBAL",0)
~ THEN BEGIN 24 // from: 35.7 36.5 37.5 40.0
  SAY #38803 /* ~" DIS-NOUS CE QUE TU SAIS, ASSASSIN."~ */
  IF ~  Global("Silent_King","GLOBAL",1)
Global("Lawful_Hargrimm_1","GLOBAL",1)
~ THEN REPLY #38910 /* ~"Le Roi Silencieux n'est qu'un squelette mort. Il n'a aucun pouvoir."~ */ DO ~SetGlobal("CR_Vic","GLOBAL",4)
IncrementGlobalOnceEx("GLOBALChaotic_Hargrimm_7","GLOBALLaw",-3)
IncrementGlobalOnceEx("GLOBALEvil_Hargrimm_3","GLOBALGood",-1)
~ GOTO 59
  IF ~  Global("Silent_King","GLOBAL",1)
!Global("Lawful_Hargrimm_1","GLOBAL",1)
~ THEN REPLY #38911 /* ~"Le Roi Silencieux n'est qu'un squelette mort. Il n'a aucun pouvoir."~ */ DO ~SetGlobal("CR_Vic","GLOBAL",4)
~ GOTO 59
  IF ~  Global("Silent_King","GLOBAL",1)
~ THEN REPLY #38912 /* ~Bluff : "Le Roi Silencieux est trop fort pour attaquer. Ne t'approche pas des Nations Mortes ou les cadavres te détruiront."~ */ DO ~SetGlobal("CR_Vic","GLOBAL",5)
~ GOTO 26
  IF ~~ THEN REPLY #38913 /* ~"Rien encore."~ */ GOTO 30
  IF ~  Global("Ghoul_Attack","GLOBAL",1)
~ THEN REPLY #66548 /* ~"Les goules sont devenues folles et ont pris le contrôle des Nations Mortes."~ */ DO ~SetGlobal("CR_Vic","GLOBAL",3)
~ GOTO 9
END

IF WEIGHT #4 ~  GlobalGT("CR_Vic","GLOBAL",0)
GlobalGT("RatWarren","GLOBAL",4)
~ THEN BEGIN 25 // from: 35.8 36.6 37.6 40.1
  SAY #38804 /* ~"DIS-NOUS CE QUE TU SAIS, TUEUR GÉNOCIDE."~ */
  IF ~  Global("Silent_King","GLOBAL",1)
Global("Lawful_Hargrimm_1","GLOBAL",1)
~ THEN REPLY #38914 /* ~"Le Roi Silencieux n'est qu'un squelette mort. Il n'a aucun pouvoir."~ */ DO ~SetGlobal("CR_Vic","GLOBAL",4)
IncrementGlobalOnceEx("GLOBALChaotic_Hargrimm_7","GLOBALLaw",-3)
IncrementGlobalOnceEx("GLOBALEvil_Hargrimm_3","GLOBALGood",-1)
~ GOTO 69
  IF ~  Global("Silent_King","GLOBAL",1)
!Global("Lawful_Hargrimm_1","GLOBAL",1)
~ THEN REPLY #38915 /* ~"Le Roi Silencieux n'est qu'un squelette mort. Il n'a aucun pouvoir."~ */ DO ~SetGlobal("CR_Vic","GLOBAL",4)
~ GOTO 69
  IF ~  Global("Silent_King","GLOBAL",1)
~ THEN REPLY #38916 /* ~Bluff : "Le Roi Silencieux est trop fort pour attaquer. Ne t'approche pas des Nations Mortes ou les cadavres te détruiront."~ */ DO ~SetGlobal("CR_Vic","GLOBAL",5)
~ GOTO 26
  IF ~~ THEN REPLY #38917 /* ~"Rien encore."~ */ GOTO 30
  IF ~  Global("Ghoul_Attack","GLOBAL",1)
~ THEN REPLY #66549 /* ~"Les goules sont devenues folles et ont pris le contrôle des Nations Mortes."~ */ DO ~SetGlobal("CR_Vic","GLOBAL",3)
~ GOTO 9
END

IF ~~ THEN BEGIN 26 // from: 0.10 4.2 5.2 8.2 24.2 25.2
  SAY #38805 /* ~"LE ROI MORT SE TIENT PRÊT À S'OPPOSER À NOUS ?" L'esprit-voix des rats s'interrompt un instant. NOUS NE VOYONS PAS DE MENSONGES DANS TON ESPRIT. NOTRE GRATITUDE SERA TELLE : NOUS NE CONSIGNERONS PAS TON CORPS VIVANT DANS LES SOUS-SOLS DE NOTRE DÉDALE POUR SERVIR DE FESTIN SANS FIN À NOTRE PROGÉNITURE. QUITTE NOS TUNNELS ET NE REVIENS PAS."~ */
  IF ~~ THEN REPLY #38918 /* ~"Tu ne vas quand même pas me rejeter comme ça ?"~ */ DO ~SetGlobal("MAO_Warn","GLOBAL",1)
AddexperienceParty(7500)
~ JOURNAL #38870 /* ~J'ai averti Tant-en-Un que le Roi Silencieux était trop puissant pour lui. L'esprit commun des rats-crânes n'a pas perçu le mensonge dans mes dires, mais il m'a interdit de revenir aux Dédales de la Pensée, sous peine de mort. Nous verrons bien.~ */ GOTO 10
  IF ~~ THEN REPLY #38919 /* ~"Très bien. Au revoir."~ */ DO ~SetGlobal("MAO_Warn","GLOBAL",1)
AddexperienceParty(7500)
~ JOURNAL #38870 /* ~J'ai averti Tant-en-Un que le Roi Silencieux était trop puissant pour lui. L'esprit commun des rats-crânes n'a pas perçu le mensonge dans mes dires, mais il m'a interdit de revenir aux Dédales de la Pensée, sous peine de mort. Nous verrons bien.~ */ EXIT
END

IF ~~ THEN BEGIN 27 // from: 0.11 4.3 5.3
  SAY #38806 /* ~"TU MENS, BIPÈDE.
NOUS N'AVONS RIEN À FAIRE AVEC LES GENS DE TON ESPÈCE.
NUL BESOIN. NUL DÉSIR.
ON T'A VU DANS LE VILLAGE DES CHAROGNARDS, PARLER AU ROI INFIRME. TU ES UN ESPION. UN ASSASSIN."~ */
  IF ~~ THEN REPLY #38920 /* ~"C'est vrai. Et je reste ouvert au plus offrant."~ */ GOTO 32
  IF ~~ THEN REPLY #38921 /* ~"Non, c'est faux."~ */ GOTO 45
END

IF ~~ THEN BEGIN 28 // from: 0.12 4.4 5.4 22.11 57.3 58.3
  SAY #38807 /* ~"C'EST LE DOMAINE DE TANT-EN-UN.
TU ES UN INTRUS.
NOTRE ROYAUME EST SECRET.
TA VOIX DOIT ÊTRE RÉDUITE AU SILENCE."~ */
  IF ~~ THEN REPLY #38922 /* ~"Je garderai le secret."~ */ GOTO 31
  IF ~~ THEN REPLY #38923 /* ~"Ça me plairait de te voir essayer."~ */ DO ~Enemy()
~ EXIT
END

IF ~~ THEN BEGIN 29 // from: 0.13 4.5 5.5 45.0 46.2
  SAY #38808 /* ~"NOUS POUVONS LIRE TA PENSÉE, BIPÈDE. NE NOUS METS PAS À L'ÉPREUVE."~ */
  IF ~~ THEN REPLY #38924 /* ~"Non. Je pense un nom. Dis-moi ce que c'est." Pense : Pharod~ */ GOTO 47
  IF ~  Global("AR0302_Visited","GLOBAL",1)
~ THEN REPLY #38925 /* ~"Non. Je pense un nom. Dis-moi ce que c'est." Pense : Maison de Lutte contre la vermine et la maladie~ */ GOTO 47
  IF ~  Global("Silent_King","GLOBAL",1)
~ THEN REPLY #38926 /* ~"Non. Je pense un nom. Dis-moi ce que c'est." Pense : Roi Silencieux~ */ GOTO 47
  IF ~~ THEN REPLY #38927 /* ~"Non. Je pense un nom. Dis-moi ce que c'est." Pense : Mort errant~ */ GOTO 47
  IF ~~ THEN REPLY #64641 /* ~"Non. Je pense à un nom. Dis-moi lequel." Pense : Barr, le garde de la porte~ */ GOTO 47
END

IF ~~ THEN BEGIN 30 // from: 8.3 24.3 25.3
  SAY #38809 /* ~"ALORS, DISPARAIS. NUL BESOIN DE TOI - ET PAS DE RÉPONSES - TANT QUE TU N'AS PAS APPORTE LES RÉPONSES QUE NOUS VOULONS."~ */
  IF ~~ THEN REPLY #38928 /* ~"Très bien. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 31 // from: 28.0
  SAY #38810 /* ~"OUI.
TU LE FERAS."~ */
  IF ~~ THEN REPLY #38929 /* ~"Qu'est-ce que tu veux dire ?"~ */ DO ~Enemy()
~ EXIT
  IF ~~ THEN REPLY #38930 /* ~"Si tu crois pouvoir m'y forcer…"~ */ DO ~Enemy()
~ EXIT
END

IF ~~ THEN BEGIN 32 // from: 27.0 51.0
  SAY #38811 /* ~L'esprit marque une pause, le temps de digérer ces informations.
"EXPLIQUE."~ */
  IF ~~ THEN REPLY #38931 /* ~"Je veux dire qu'on pourrait s'aider mutuellement."~ */ GOTO 33
  IF ~~ THEN REPLY #38932 /* ~"Allons, tu sais bien. J'ai des talents qui te seraient utiles… et toi des pouvoirs qui peuvent m'aider."~ */ GOTO 33
END

IF ~~ THEN BEGIN 33 // from: 32.0 32.1
  SAY #38812 /* ~"CE GENRE DE MARCHÉ A UN PRIX.
CE GENRE DE MARCHÉ EXIGE LA CONFIANCE.
NOUS N'AVONS PAS CONFIANCE EN TOI.
TENTE DE NOUS CONVAINCRE, BIPÈDE."~ */
  IF ~~ THEN REPLY #38933 /* ~"Comment puis-je te convaincre ?"~ */ GOTO 35
  IF ~  NumInPartyGT(1)
~ THEN REPLY #38934 /* ~"Te convaincre ? Inutile. À toi de me faire confiance… ou non."~ */ GOTO 38
  IF ~  NumInPartyGT(1)
~ THEN REPLY #38935 /* ~"Que pourrais-tu donc m'offrir ?"~ */ GOTO 37
  IF ~  NumInParty(1)
~ THEN REPLY #38936 /* ~"Que pourrais-tu donc m'offrir ?"~ */ GOTO 39
  IF ~~ THEN REPLY #38937 /* ~"Oublie ma proposition. Je pars."~ */ GOTO 34
END

IF ~~ THEN BEGIN 34 // from: 33.4 35.4 36.2 37.3 39.1 41.0 51.1 56.3 73.4
  SAY #38813 /* ~"NOUS, TE LAISSER PARTIR ? NON, CERTES NON."~ */
  IF ~~ THEN REPLY #38938 /* ~"Je pourrais vous tuer tous à l'instant, et tu ne pourrais pas m'arrêter. Je ne peux pas mourir."~ */ GOTO 42
  IF ~~ THEN REPLY #38939 /* ~"Essaies-donc de m'arrêter."~ */ DO ~SetGlobal("MAO_Warn","GLOBAL",3)
Enemy()
ForceAttack(Protagonist,Myself)
SetGlobal("CR_Vic","GLOBAL",2)
~ EXIT
END

IF ~~ THEN BEGIN 35 // from: 23.4 23.5 33.0 45.1 65.0 66.0 67.0 68.0
  SAY #38814 /* ~"PROUVE QUE TU ES DIGNE DE CONFIANCE.
RENDS-TOI AUX SALLES DES MORTS ERRANTS.
TUE LE ROI SILENCIEUX.
TUE-LE."~ */
  IF ~  Global("Silent_King","GLOBAL",1)
~ THEN REPLY #38941 /* ~Bluff : "Qui ?"~ */ GOTO 36
  IF ~  Global("Silent_King","GLOBAL",0)
~ THEN REPLY #38942 /* ~"Qui ?"~ */ GOTO 36
  IF ~  NumInPartyGT(1)
~ THEN REPLY #38943 /* ~"Que pourrais-tu donc m'offrir ?"~ */ GOTO 37
  IF ~  NumInParty(1)
~ THEN REPLY #38944 /* ~"Que pourrais-tu donc m'offrir ?"~ */ GOTO 39
  IF ~~ THEN REPLY #38945 /* ~"Sûrement pas. Je pars."~ */ GOTO 34
  IF ~~ THEN REPLY #38946 /* ~"Pourquoi tu ne le fais pas ?"~ */ GOTO 52
  IF ~~ THEN REPLY #38947 /* ~"Très bien. Je le ferai."~ */ DO ~SetGlobal("CR_Vic","GLOBAL",1)
~ JOURNAL #38871 /* ~Tant-en-Un, l'esprit commun des rats-crânes, m'a demandé d'aller dans les Nations Mortes pour y tuer le Roi Silencieux. J'ai accepté. Je dois revenir voir Tant-en-Un quand j'aurai accompli ma mission.~ */ GOTO 40
  IF ~  Global("Silent_King","GLOBAL",1)
GlobalLT("RatWarren","GLOBAL",5)
GlobalGT("RatWarren","GLOBAL",0)
~ THEN REPLY #64635 /* ~"Je suis déjà allé là-bas."~ */ GOTO 24
  IF ~  Global("Silent_King","GLOBAL",1)
GlobalGT("RatWarren","GLOBAL",4)
~ THEN REPLY #64636 /* ~"Je suis déjà allé là-bas."~ */ GOTO 25
  IF ~  Global("Silent_King","GLOBAL",1)
Global("RatWarren","GLOBAL",0)
~ THEN REPLY #64642 /* ~"Je suis déjà allé là-bas."~ */ GOTO 8
END

IF ~~ THEN BEGIN 36 // from: 35.0 35.1 48.0
  SAY #38815 /* ~"LES MORTS ERRANTS SONT DIRIGÉS PAR UN ROI QUI DEMEURE DANS UN LIEU QUE NOUS NE POUVONS VOIR.
NOUS DEVONS LE DÉTRUIRE POUR LES DÉTRUIRE.
Il EST POUR NOUS UN MYSTÈRE.
NOUS NE L'AVONS JAMAIS VU.
IL DOIT MOURIR."~ */
  IF ~  NumInPartyGT(1)
~ THEN REPLY #38948 /* ~"Que pourrais-tu donc m'offrir ?"~ */ GOTO 37
  IF ~  NumInParty(1)
~ THEN REPLY #38949 /* ~"Que pourrais-tu donc m'offrir ?"~ */ GOTO 39
  IF ~~ THEN REPLY #38950 /* ~"Sûrement pas. Je pars."~ */ GOTO 34
  IF ~~ THEN REPLY #38953 /* ~"Pourquoi tu ne le fais pas ?"~ */ GOTO 52
  IF ~~ THEN REPLY #38954 /* ~"Très bien. Je le ferai."~ */ DO ~SetGlobal("CR_Vic","GLOBAL",1)
~ JOURNAL #38872 /* ~Tant-en-Un, l'esprit commun des rats-crânes, m'a demandé d'aller dans les Nations Mortes pour y tuer le Roi Silencieux. J'ai accepté. Je dois revenir voir Tant-en-Un quand j'aurai accompli ma mission.~ */ GOTO 40
  IF ~  Global("Silent_King","GLOBAL",1)
GlobalLT("RatWarren","GLOBAL",5)
GlobalGT("RatWarren","GLOBAL",0)
~ THEN REPLY #64637 /* ~"Je suis déjà allé là-bas."~ */ GOTO 24
  IF ~  Global("Silent_King","GLOBAL",1)
GlobalGT("RatWarren","GLOBAL",4)
~ THEN REPLY #64638 /* ~"Je suis déjà allé là-bas."~ */ GOTO 25
  IF ~  Global("Silent_King","GLOBAL",1)
Global("RatWarren","GLOBAL",0)
~ THEN REPLY #64670 /* ~"Je suis déjà allé là-bas."~ */ GOTO 8
END

IF ~~ THEN BEGIN 37 // from: 33.2 35.2 36.0 38.0
  SAY #38816 /* ~"NOUS AVONS BEAUCOUP À OFFRIR.
LE LIBRE PASSAGE.
LA VIE DE TES AMIS."~ */
  IF ~  CheckStatGT(Protagonist,12,INT)
~ THEN REPLY #38955 /* ~"Pas très motivant tout ça. Tu dois m'en offrir plus."~ */ GOTO 41
  IF ~  CheckStatLT(Protagonist,13,INT)
~ THEN REPLY #38956 /* ~"Très bien. Si c'est ce que tu peux me donner, c'est ce que je prendrai. Que dois-je faire ?"~ */ DO ~SetGlobal("CR_Vic","GLOBAL",1)
~ GOTO 40
  IF ~~ THEN REPLY #38957 /* ~"Ça pourrait marcher… si j'en avais quelque chose à faire."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_MaO_1","GLOBALGood",-1)
~ GOTO 41
  IF ~~ THEN REPLY #38958 /* ~"Je crains fort de ne pouvoir accepter. Je pars."~ */ GOTO 34
  IF ~~ THEN REPLY #38959 /* ~"D'accord. Que dois-je faire ?"~ */ DO ~SetGlobal("CR_Vic","GLOBAL",1)
~ JOURNAL #38873 /* ~Tant-en-Un, l'esprit commun des rats-crânes, m'a demandé d'aller dans les Nations Mortes pour y tuer le Roi Silencieux. J'ai accepté. Je dois revenir voir Tant-en-Un quand j'aurai accompli ma mission.~ */ GOTO 40
  IF ~  Global("Silent_King","GLOBAL",1)
GlobalLT("RatWarren","GLOBAL",5)
GlobalGT("RatWarren","GLOBAL",0)
~ THEN REPLY #64639 /* ~"Je connais le secret du Roi Silencieux."~ */ GOTO 24
  IF ~  Global("Silent_King","GLOBAL",1)
GlobalGT("RatWarren","GLOBAL",4)
~ THEN REPLY #64640 /* ~"Je connais le secret du Roi Silencieux."~ */ GOTO 25
  IF ~  Global("Silent_King","GLOBAL",1)
Global("RatWarren","GLOBAL",0)
~ THEN REPLY #64671 /* ~"Je connais le secret du Roi Silencieux."~ */ GOTO 8
END

IF ~~ THEN BEGIN 38 // from: 33.1
  SAY #38817 /* ~"ON NE PEUT PAS TE FAIRE CONFIANCE.
SI TES PAROLES SONT VRAIES, ALORS TU TRAHIS CEUX QUE TU SERS."~ */
  IF ~  NumInPartyGT(1)
~ THEN REPLY #38960 /* ~"Peut-être. Mais tu ne m'as toujours pas dit ce que tu as à m'offrir pour mes services."~ */ GOTO 37
  IF ~  NumInParty(1)
~ THEN REPLY #38961 /* ~"Peut-être. Mais tu ne m'as toujours pas dit ce que tu as à m'offrir pour mes services."~ */ GOTO 39
END

IF ~~ THEN BEGIN 39 // from: 33.3 35.3 36.1 38.1
  SAY #38818 /* ~"NOUS POUVONS T'OFFRIR LE LIBRE PASSAGE.
LA LIBERTÉ.
PEUT-ÊTRE PLUS."~ */
  IF ~  CheckStatGT(Protagonist,12,WIS)
~ THEN REPLY #38962 /* ~"Oui, peut-être plus. Continue."~ */ GOTO 41
  IF ~~ THEN REPLY #38963 /* ~"Je crains fort de ne pouvoir accepter. Je pars."~ */ GOTO 34
  IF ~~ THEN REPLY #38964 /* ~"Pourquoi tu ne le fais pas ?"~ */ GOTO 52
  IF ~~ THEN REPLY #38965 /* ~"D'accord. Que dois-je faire ?"~ */ DO ~SetGlobal("CR_Vic","GLOBAL",1)
~ JOURNAL #38874 /* ~Tant-en-Un, l'esprit commun des rats-crânes, m'a demandé d'aller dans les Nations Mortes pour y tuer le Roi Silencieux. J'ai accepté. Je dois revenir voir Tant-en-Un quand j'aurai accompli ma mission.~ */ GOTO 40
END

IF ~~ THEN BEGIN 40 // from: 35.6 36.4 37.1 37.4 39.3 41.2 43.0 52.0
  SAY #38819 /* ~"TU ES SAGE D'ACCEPTER NOS CONDITIONS.
VA JUSQU'AUX SALLES DES MORTS.
ABATS LEUR SOUVERAIN SILENCIEUX.
REVIENS ICI, ET NOUS PARLERONS DE TA RÉCOMPENSE."~ */
  IF ~  Global("Silent_King","GLOBAL",1)
GlobalLT("RatWarren","GLOBAL",5)
GlobalGT("RatWarren","GLOBAL",0)
~ THEN REPLY #38966 /* ~"Je suis déjà allé là-bas."~ */ GOTO 24
  IF ~  Global("Silent_King","GLOBAL",1)
GlobalGT("RatWarren","GLOBAL",4)
~ THEN REPLY #64672 /* ~"Je suis déjà allé là-bas."~ */ GOTO 25
  IF ~  Global("Silent_King","GLOBAL",1)
Global("RatWarren","GLOBAL",0)
~ THEN REPLY #64673 /* ~"Je suis déjà allé là-bas."~ */ GOTO 8
  IF ~~ THEN REPLY #64674 /* ~"Très bien. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 41 // from: 37.0 37.2 39.0
  SAY #38820 /* ~"NOUS AVONS BIEN D'AUTRES CHOSES À OFFRIR.
DES SECRETS.
LA RICHESSE.
LA MAGIE.
LES MORTS DANS LEURS TOMBES ÉTAIENT CHARGÉS DE BIENS QUAND ILS SONT MORTS."~ */
  IF ~~ THEN REPLY #38967 /* ~"Sûrement pas. Je pars."~ */ GOTO 34
  IF ~~ THEN REPLY #38968 /* ~"Pourquoi tu ne le fais pas ?"~ */ GOTO 52
  IF ~~ THEN REPLY #38969 /* ~"Très bien. Que dois-je faire ?"~ */ DO ~SetGlobal("CR_Vic","GLOBAL",1)
~ JOURNAL #38970 /* ~Tant-en-Un, l'esprit commun des rats-crânes, m'a demandé d'aller dans les Nations Mortes pour y tuer le Roi Silencieux. J'ai accepté. Je dois revenir voir Tant-en-Un quand j'aurai accompli ma mission.~ */ GOTO 40
END

IF ~~ THEN BEGIN 42 // from: 34.0 50.0
  SAY #38821 /* ~"TU AS TORT. TA VIE DÉPEND DE NOTRE BON PLAISIR.
PEUT-ÊTRE NE POUVONS-NOUS PAS TE TUER D'UN SEUL COUP.
NOUS POUVONS TE FAIRE TANT HURLER QUE TU SUPPLIERAS LA MORT DE TE PRENDRE.
NOUS POUVONS T'ENTERRER DANS UNE TERRE SANS FIN.
NOUS POUVONS TE CONDAMNER AUX FLAMMES ÉTERNELLES.
NOUS POUVONS DÉTRUIRE TOUT CE QUE TU AIMES.
NOUS SOMMES PARTOUT.
TU NE PEUX NOUS ARRÊTER TOUS."~ */
  IF ~~ THEN REPLY #38971 /* ~"Alors, on pourra peut-être s'entendre."~ */ GOTO 43
  IF ~~ THEN REPLY #38972 /* ~"Je demanderais pas mieux que d'essayer. Crève, vermine !"~ */ DO ~SetGlobal("MAO_Warn","GLOBAL",3)
Enemy()
ForceAttack(Protagonist,Myself)
~ EXIT
END

IF ~~ THEN BEGIN 43 // from: 42.0 74.1 76.0 78.1 79.0
  SAY #38822 /* ~"TU IRAS JUSQU'AUX SALLES DES MORTS.
TU ABATTRAS LEUR SOUVERAIN SILENCIEUX.
TU REVIENDRAS ICI UNE FOIS TA MISSION ACCOMPLIE."~ */
  IF ~~ THEN REPLY #38973 /* ~"J'accepte."~ */ DO ~SetGlobal("CR_Vic","GLOBAL",1)
~ JOURNAL #38977 /* ~Tant-en-Un, l'esprit commun des rats-crânes, m'a demandé d'aller dans les Nations Mortes pour y tuer le Roi Silencieux. J'ai accepté. Je dois revenir voir Tant-en-Un quand j'aurai accompli ma mission.~ */ GOTO 40
  IF ~~ THEN REPLY #38974 /* ~"Pourquoi tu ne le fais pas ?"~ */ GOTO 52
  IF ~~ THEN REPLY #38975 /* ~"Pas question."~ */ DO ~SetGlobal("CR_Vic","GLOBAL",2)
~ GOTO 44
END

IF ~~ THEN BEGIN 44 // from: 43.2 48.1 52.1
  SAY #38823 /* ~"ALORS, BIPÈDE, TU MOURRAS."~ */
  IF ~~ THEN REPLY #38978 /* ~"Essaie de me tuer."~ */ DO ~SetGlobal("MAO_Warn","GLOBAL",3)
Enemy()
ForceAttack(Protagonist,Myself)
~ EXIT
END

IF ~~ THEN BEGIN 45 // from: 27.1
  SAY #38824 /* ~"TU MENS !"~ */
  IF ~  CheckStatGT(Protagonist,13,INT)
~ THEN REPLY #38979 /* ~"Lis dans mes pensées et tu verras si je mens…. Enfin, si tu le peux vraiment ?!"~ */ GOTO 29
  IF ~~ THEN REPLY #38980 /* ~"Comment puis-je prouver que je ne mens pas ?"~ */ GOTO 35
  IF ~~ THEN REPLY #38981 /* ~"Non, pas du tout."~ */ GOTO 46
END

IF ~~ THEN BEGIN 46 // from: 45.2
  SAY #38825 /* ~"SI. TU NE PEUX RIEN ME CACHER. JE SAIS POURQUOI TU ES ICI. DÉFENDS-TOI, BIPÈDE, CAR TU VAS MOURIR."~ */
  IF ~~ THEN REPLY #38982 /* ~"Attends ! On peut trouver une solution !"~ */ DO ~SetGlobal("MAO_Warn","GLOBAL",3)
Enemy()
ForceAttack(Protagonist,Myself)
~ EXIT
  IF ~~ THEN REPLY #38983 /* ~"Je suis prêt. C'est quand tu veux…"~ */ DO ~SetGlobal("MAO_Warn","GLOBAL",3)
Enemy()
ForceAttack(Protagonist,Myself)
~ EXIT
  IF ~  CheckStatGT(Protagonist,13,INT)
~ THEN REPLY #38984 /* ~"Lis dans mes pensées et tu verras si je mens…. Enfin, si tu le peux vraiment ?!"~ */ GOTO 29
END

IF ~~ THEN BEGIN 47 // from: 29.0 29.1 29.2 29.3 29.4
  SAY #38826 /* ~Moment de pause, puis : "C'EST LE ROI SILENCIEUX QUI T'ENVOIE."~ */
  IF ~~ THEN REPLY #38985 /* ~"Tu as raison. Je vois que je ne peux rien te cacher."~ */ GOTO 48
  IF ~~ THEN REPLY #38986 /* ~"C'est faux."~ */ GOTO 49
  IF ~~ THEN REPLY #38987 /* ~"Tu ne peux pas lire ma pensée. Comment ça se fait ?"~ */ GOTO 50
  IF ~  Global("Silent_King","GLOBAL",0)
~ THEN REPLY #38988 /* ~"Le Roi Silencieux ? Qui ?"~ */ GOTO 49
  IF ~  Global("Silent_King","GLOBAL",1)
~ THEN REPLY #38989 /* ~Bluff : "Le Roi Silencieux ? Qui ?"~ */ GOTO 49
END

IF ~~ THEN BEGIN 48 // from: 47.0
  SAY #38827 /* ~"C'EST COMME NOUS L'AVONS DIT, BIPÈDE. LES MURS DE TON ESPRIT SONT PEUT-ÊTRE HAUTS, MAIS AUCUNE BARRIÈRE NE NOUS ARRÊTE. BIEN… TU VAS NOUS SERVIR."~ */
  IF ~~ THEN REPLY #38990 /* ~"Quoi ?"~ */ GOTO 36
  IF ~~ THEN REPLY #38991 /* ~"Pas question."~ */ GOTO 44
END

IF ~~ THEN BEGIN 49 // from: 47.1 47.3 47.4
  SAY #38828 /* ~"TU PRÉTENDS NE RIEN SAVOIR DE TON MAÎTRE ? TU MOURRAS, BIPÈDE."~ */
  IF ~~ THEN REPLY #38992 /* ~"Tu ne peux pas lire ma pensée, hein ?"~ */ GOTO 50
  IF ~~ THEN REPLY #38993 /* ~"Vas-y."~ */ DO ~Enemy()
~ EXIT
END

IF ~~ THEN BEGIN 50 // from: 47.2 49.0
  SAY #38829 /* ~Les voix ont l'air effrayé : "TON ESPRIT EST PEUT-ÊTRE PROTÉGÉ PAR DES MURS. MAIS COMME N'IMPORTE QUELLE CRÉATURE, TU PEUX MOURIR."~ */
  IF ~~ THEN REPLY #38994 /* ~"Non. Mais je pourrais vous tuer tous et tu ne peux pas m'arrêter."~ */ GOTO 42
  IF ~~ THEN REPLY #38995 /* ~"Pourquoi ne peux-tu pas lire ma pensée ?"~ */ GOTO 51
END

IF ~~ THEN BEGIN 51 // from: 50.1
  SAY #38830 /* ~"NOUS NE SAVONS PAS.
CELA TE REND DANGEREUX POUR NOUS.
MENACE/DANGER/ASSASSIN… INVISIBLES."~ */
  IF ~~ THEN REPLY #38996 /* ~"Peut-être alors pouvons-nous trouver un… arrangement ?"~ */ GOTO 32
  IF ~~ THEN REPLY #38997 /* ~"Laisse-moi partir et je ne t'ennuierai plus."~ */ GOTO 34
END

IF ~~ THEN BEGIN 52 // from: 35.5 36.3 39.2 41.1 43.1
  SAY #38831 /* ~"LES MORTS… SONT RETRANCHÉS. DIFFICILES À ATTEINDRE. LEUR ROI SILENCIEUX : UN MYSTÈRE. NOUS N'AIMONS PAS CES MYSTÈRES. NOUS FRAPPONS LORSQUE NOS COUPS PEUVENT PORTER À COUP SÛR. LE ROI SILENCIEUX NOUS FAIT DOUTER."~ */
  IF ~~ THEN REPLY #38998 /* ~"J'accepte."~ */ DO ~SetGlobal("CR_Vic","GLOBAL",1)
~ JOURNAL #38977 /* ~Tant-en-Un, l'esprit commun des rats-crânes, m'a demandé d'aller dans les Nations Mortes pour y tuer le Roi Silencieux. J'ai accepté. Je dois revenir voir Tant-en-Un quand j'aurai accompli ma mission.~ */ GOTO 40
  IF ~~ THEN REPLY #38999 /* ~"Pas question."~ */ DO ~SetGlobal("CR_Vic","GLOBAL",2)
~ GOTO 44
END

IF ~~ THEN BEGIN 53 // from: 22.0 22.4
  SAY #38832 /* ~"NOUS NOUS SOMMES DÉJÀ VUS DANS LES SOMBRES SALLES.
NOUS AVONS VU TON VISAGE QUAND TU AS VERSÉ NOTRE SANG. AVOUE TON DESSEIN, MEURTRIER. SI TU ES VENU NOUS TUER TOUS, TU NE PEUX RÉUSSIR."~ */
  IF ~~ THEN EXTERN ~DANNAH~ 190
END

IF ~~ THEN BEGIN 54 // from: 22.1 22.5
  SAY #38833 /* ~"NOUS NOUS SOMMES DÉJÀ VUS DANS LES SOMBRES SALLES.
NOUS AVONS VU TON VISAGE QUAND TU AS VERSÉ NOTRE SANG. AVOUE TON DESSEIN, MEURTRIER. SI TU ES VENU NOUS TUER TOUS, TU NE PEUX RÉUSSIR."~ */
  IF ~~ THEN EXTERN ~DMORTE~ 405
END

IF ~~ THEN BEGIN 55 // from: 22.2 22.6
  SAY #38834 /* ~"NOUS NOUS SOMMES DÉJÀ VUS DANS LES SOMBRES SALLES.
NOUS AVONS VU TON VISAGE QUAND TU AS VERSÉ NOTRE SANG. AVOUE TON DESSEIN, MEURTRIER. SI TU ES VENU NOUS TUER TOUS, TU NE PEUX RÉUSSIR."~ */
  IF ~~ THEN EXTERN ~DANNAH~ 193
END

IF ~~ THEN BEGIN 56 // from: 22.3
  SAY #38835 /* ~"NOUS NOUS SOMMES DÉJÀ VUS DANS LES SOMBRES SALLES.
NOUS AVONS VU TON VISAGE QUAND TU AS VERSÉ NOTRE SANG. AVOUE TON DESSEIN, MEURTRIER. SI TU ES VENU NOUS TUER TOUS, TU NE PEUX RÉUSSIR."~ */
  IF ~  Global("Silent_King","GLOBAL",1)
Global("Lawful_Hargrimm_1","GLOBAL",1)
~ THEN REPLY #39009 /* ~"Je viens te dire que le Roi Silencieux n'est qu'un simple squelette. Il n'a aucun pouvoir."~ */ DO ~SetGlobal("CR_Vic","GLOBAL",4)
IncrementGlobalOnceEx("GLOBALChaotic_Hargrimm_7","GLOBALLaw",-3)
IncrementGlobalOnceEx("GLOBALEvil_Hargrimm_3","GLOBALGood",-1)
~ GOTO 59
  IF ~  Global("Silent_King","GLOBAL",1)
!Global("Lawful_Hargrimm_1","GLOBAL",1)
~ THEN REPLY #39010 /* ~"Je viens te dire que le Roi Silencieux n'est qu'un simple squelette. Il n'a aucun pouvoir."~ */ DO ~SetGlobal("CR_Vic","GLOBAL",4)
~ GOTO 59
  IF ~~ THEN REPLY #39011 /* ~"Pourquoi m'appelles-tu 'meurtrier' ?"~ */ GOTO 60
  IF ~~ THEN REPLY #39012 /* ~"Aucun dessein particulier. Je m'apprêtais à partir."~ */ GOTO 34
END

IF ~~ THEN BEGIN 57 // from: 22.7
  SAY #38836 /* ~"TU ES DANS LES DÉDALES DE LA PENSÉE. TU ES DANS LE DOMAINE DE TANT-EN-UN. TU VAS MOURIR, MEURTRIER."~ */
  IF ~  Global("Silent_King","GLOBAL",1)
Global("Lawful_Hargrimm_1","GLOBAL",1)
~ THEN REPLY #39013 /* ~"Mais je viens te dire que le Roi Silencieux n'est qu'un simple squelette. Il n'a aucun pouvoir."~ */ DO ~SetGlobal("CR_Vic","GLOBAL",4)
IncrementGlobalOnceEx("GLOBALChaotic_Hargrimm_7","GLOBALLaw",-3)
IncrementGlobalOnceEx("GLOBALEvil_Hargrimm_3","GLOBALGood",-1)
~ GOTO 59
  IF ~  Global("Silent_King","GLOBAL",1)
!Global("Lawful_Hargrimm_1","GLOBAL",1)
~ THEN REPLY #39014 /* ~"Mais je viens te dire que le Roi Silencieux n'est qu'un simple squelette. Il n'a aucun pouvoir."~ */ DO ~SetGlobal("CR_Vic","GLOBAL",4)
~ GOTO 59
  IF ~~ THEN REPLY #39015 /* ~"Pourquoi ? Et pourquoi m'appeler 'meurtrier' ?"~ */ GOTO 60
  IF ~~ THEN REPLY #39017 /* ~"Aucun dessein particulier. Je suis venu par hasard."~ */ GOTO 28
END

IF ~~ THEN BEGIN 58 // from:
  SAY #38837 /* ~"SILENCE ! NOUS PARLONS AU BALAFRÉ.
NOUS T'ÉLIMINERONS SI TU PRONONCES UN MOT DE PLUS. SACHE QUE TU ES DANS LES DÉDALES DE LA PENSÉE… ET SACHE QUE TU AS ENCOURU NOTRE DÉPLAISIR. AVOUE TON DESSEIN, MEURTRIER."~ */
  IF ~  Global("Silent_King","GLOBAL",1)
Global("Lawful_Hargrimm_1","GLOBAL",1)
~ THEN REPLY #39018 /* ~"Aucun dessein particulier. Je suis venu par hasard."~ */ DO ~SetGlobal("CR_Vic","GLOBAL",4)
IncrementGlobalOnceEx("GLOBALChaotic_Hargrimm_7","GLOBALLaw",-3)
IncrementGlobalOnceEx("GLOBALEvil_Hargrimm_3","GLOBALGood",-1)
~ GOTO 59
  IF ~  Global("Silent_King","GLOBAL",1)
!Global("Lawful_Hargrimm_1","GLOBAL",1)
~ THEN REPLY #39019 /* ~"Je suis venu te dire que le Roi Silencieux n'est qu'un simple squelette. Il n'a aucun pouvoir."~ */ DO ~SetGlobal("CR_Vic","GLOBAL",4)
~ GOTO 59
  IF ~~ THEN REPLY #39020 /* ~"Pourquoi m'appelles-tu 'meurtrier' ?"~ */ GOTO 60
  IF ~~ THEN REPLY #39021 /* ~" Aucun dessein particulier. Je suis entré par hasard."~ */ GOTO 28
END

IF ~~ THEN BEGIN 59 // from: 22.8 22.9 24.0 24.1 56.0 56.1 57.0 57.1 58.0 58.1
  SAY #38838 /* ~"LE ROI SILENCIEUX GÎT EN PAIX ? TU AS BIEN AGI, MEURTRIER." Les voix se taisent un moment. "QU'IL NE SOIT PAS DIT QUE TANT-EN-UN NE CONNAÎT POINT LA GRATITUDE."~ */
  IF ~~ THEN REPLY #39022 /* ~"Qu'est-ce que tu veux dire ?"~ */ DO ~AddexperienceParty(7500)
~ GOTO 16
END

IF ~~ THEN BEGIN 60 // from: 22.10 56.2 57.2 58.2
  SAY #38839 /* ~"TU TRAÎNES À TA SUITE LA PUANTEUR DES MENSONGES. SACHE QUE NOUS AVONS VU TON VISAGE LORSQUE TU NOUS AS MASSACRÉS. SACHE QUE NOUS AVONS SENTI S'ÉTEINDRE LA DOULEUR DE NOTRE ESPRIT. SACHE QUE LE PASSAGE DE CHAQUE ÉTINCELLE DIMINUE LA GLOIRE DES FLAMMES. TU AS MASSACRÉ BEAUCOUP DES NÔTRES. LE NIERAS-TU ?"~ */
  IF ~~ THEN REPLY #39024 /* ~"Et comment."~ */ GOTO 62
  IF ~~ THEN REPLY #39025 /* ~"Pas du tout."~ */ GOTO 61
  IF ~~ THEN REPLY #39026 /* ~"Je ne savais pas qu'ils étaient avec toi."~ */ GOTO 62
  IF ~~ THEN REPLY #39027 /* ~"Ils m'ont attaqué les premiers."~ */ GOTO 62
END

IF ~~ THEN BEGIN 61 // from: 60.1
  SAY #38840 /* ~"QU'IL EN SOIT AINSI. TU AVOUES TON CRIME.
TU SOUFFRIRAS.
COMME NOUS AVONS SOUFFERT."~ */
  IF ~~ THEN REPLY #39028 /* ~"Et pourquoi donc tu me fais pas souffrir, espèce de gros sac à puces ?"~ */ DO ~SetGlobal("MAO_Warn","GLOBAL",3)
Enemy()
ForceAttack(Protagonist,Myself)
~ EXIT
END

IF ~~ THEN BEGIN 62 // from: 60.0 60.2 60.3
  SAY #38841 /* ~"MENSONGES !
SACHE QUE TU SOUFFRIRAS COMME NOUS AVONS SOUFFERT."~ */
  IF ~~ THEN REPLY #39029 /* ~"Et pourquoi donc tu me fais pas souffrir, espèce de gros sac à puces ?"~ */ DO ~SetGlobal("MAO_Warn","GLOBAL",3)
Enemy()
ForceAttack(Protagonist,Myself)
~ EXIT
  IF ~~ THEN REPLY #39030 /* ~"Pitié !"~ */ GOTO 63
  IF ~~ THEN REPLY #39031 /* ~"Y a pas moyen de me faire pardonner ?"~ */ GOTO 64
END

IF ~~ THEN BEGIN 63 // from: 62.1
  SAY #38842 /* ~"TU NE TROUVERAS POINT DE PITIÉ, MEURTRIER. TU DOIS PAYER POUR TON CRIME."~ */
  IF ~~ THEN REPLY #39032 /* ~"Et pourquoi donc tu me fais pas souffrir, espèce de gros sac à puces ?"~ */ DO ~SetGlobal("MAO_Warn","GLOBAL",3)
Enemy()
ForceAttack(Protagonist,Myself)
~ EXIT
  IF ~~ THEN REPLY #39033 /* ~"Comment me faire pardonner ?"~ */ GOTO 64
END

IF ~~ THEN BEGIN 64 // from: 62.2 63.1
  SAY #38843 /* ~"À QUOI SERS-TU ?"~ */
  IF ~  Class(Protagonist,MAGE)
~ THEN REPLY #39034 /* ~"Je suis difficile à tuer et je connais des sorts."~ */ GOTO 65
  IF ~~ THEN REPLY #39035 /* ~"Je suis difficile à tuer."~ */ GOTO 66
  IF ~  Class(Protagonist,THIEF)
~ THEN REPLY #39036 /* ~"Je suis furtif et difficile à repérer."~ */ GOTO 67
  IF ~  Class(Protagonist,FIGHTER)
~ THEN REPLY #39037 /* ~"Je suis difficile à tuer et féroce guerrier."~ */ GOTO 68
END

IF ~~ THEN BEGIN 65 // from: 64.0
  SAY #38844 /* ~"NOUS NE CRAIGNONS PAS LES SORTS. L'ART DES MAGES N'EST PAS UNE CHOSE RARE… CEPENDANT…"~ */
  IF ~~ THEN REPLY #39038 /* ~"Cependant ?"~ */ GOTO 35
END

IF ~~ THEN BEGIN 66 // from: 64.1
  SAY #38845 /* ~"CELA POURRAIT SE RÉVÉLER UTILE… OUI…"~ */
  IF ~~ THEN REPLY #39039 /* ~"Oui ?"~ */ GOTO 35
END

IF ~~ THEN BEGIN 67 // from: 64.2
  SAY #38846 /* ~"CES TALENTS POURRAIENT SE RÉVÉLER UTILES… OUI…"~ */
  IF ~~ THEN REPLY #39040 /* ~"Oui ?"~ */ GOTO 35
END

IF ~~ THEN BEGIN 68 // from: 64.3
  SAY #38847 /* ~"CES TALENTS POURRAIENT SE RÉVÉLER UTILES… OUI…"~ */
  IF ~~ THEN REPLY #39041 /* ~"Oui ?"~ */ GOTO 35
END

IF ~~ THEN BEGIN 69 // from: 25.0 25.1 73.0 73.1
  SAY #38848 /* ~"LE ROI SILENCIEUX N'EST POINT POUR NOUS UNE MENACE ? EN ES-TU CERTAIN ? AS-TU VU SON CADAVRE ?"~ */
  IF ~~ THEN REPLY #39042 /* ~"Oui."~ */ GOTO 77
END

IF ~~ THEN BEGIN 70 // from: 23.0
  SAY #38849 /* ~"NOUS NOUS SOMMES DÉJÀ VUS DANS LES SOMBRES SALLES.
NOUS AVONS VU TON VISAGE QUAND TU AS VERSÉ NOTRE SANG. AVOUE TON DESSEIN, MEURTRIER. SI TU ES VENU NOUS TUER TOUS, TU NE PEUX RÉUSSIR. NOTRE DÉSIR N'EST POINT DE COMBATTRE, MAIS SI TU INSISTES, ALORS SOIT."~ */
  IF ~~ THEN EXTERN ~DANNAH~ 192
END

IF ~~ THEN BEGIN 71 // from: 23.1
  SAY #38850 /* ~"NOUS NOUS SOMMES DÉJÀ VUS DANS LES SOMBRES SALLES.
NOUS AVONS VU TON VISAGE QUAND TU AS VERSÉ NOTRE SANG. AVOUE TON DESSEIN, MEURTRIER. SI TU ES VENU NOUS TUER TOUS, TU NE PEUX RÉUSSIR. NOTRE DÉSIR N'EST POINT DE COMBATTRE, MAIS SI TU INSISTES, ALORS SOIT."~ */
  IF ~~ THEN EXTERN ~DMORTE~ 406
END

IF ~~ THEN BEGIN 72 // from: 23.2
  SAY #38851 /* ~"NOUS NOUS SOMMES DÉJÀ VUS DANS LES SOMBRES SALLES.
NOUS AVONS VU TON VISAGE QUAND TU AS VERSÉ NOTRE SANG. AVOUE TON DESSEIN, MEURTRIER. SI TU ES VENU NOUS TUER TOUS, TU NE PEUX RÉUSSIR. NOTRE DÉSIR N'EST POINT DE COMBATTRE, MAIS SI TU INSISTES, ALORS SOIT."~ */
  IF ~~ THEN EXTERN ~DANNAH~ 193
END

IF ~~ THEN BEGIN 73 // from: 23.3
  SAY #38852 /* ~"NOUS NOUS SOMMES DÉJÀ VUS DANS LES SOMBRES SALLES.
NOUS AVONS VU TON VISAGE QUAND TU AS VERSÉ NOTRE SANG. AVOUE TON DESSEIN, MEURTRIER. SI TU ES VENU NOUS TUER TOUS, TU NE PEUX RÉUSSIR. NOTRE DÉSIR N'EST POINT DE COMBATTRE, MAIS SI TU INSISTES, ALORS SOIT."~ */
  IF ~  Global("Silent_King","GLOBAL",1)
Global("Lawful_Hargrimm_1","GLOBAL",1)
~ THEN REPLY #39043 /* ~"Je viens te dire que le Roi Silencieux n'est qu'un simple squelette. Il n'a aucun pouvoir."~ */ DO ~SetGlobal("CR_Vic","GLOBAL",4)
IncrementGlobalOnceEx("GLOBALChaotic_Hargrimm_7","GLOBALLaw",-3)
IncrementGlobalOnceEx("GLOBALEvil_Hargrimm_3","GLOBALGood",-1)
~ GOTO 69
  IF ~  Global("Silent_King","GLOBAL",1)
!Global("Lawful_Hargrimm_1","GLOBAL",1)
~ THEN REPLY #39044 /* ~"Je viens te dire que le Roi Silencieux n'est qu'un simple squelette. Il n'a aucun pouvoir."~ */ DO ~SetGlobal("CR_Vic","GLOBAL",4)
~ GOTO 69
  IF ~~ THEN REPLY #39045 /* ~"Pourquoi m'appelles-tu 'meurtrier' ?"~ */ GOTO 74
  IF ~~ THEN REPLY #39046 /* ~"À dire vrai, je suis là pour t'éliminer."~ */ GOTO 75
  IF ~~ THEN REPLY #39047 /* ~"Aucun dessein particulier. Je m'apprêtais à partir."~ */ GOTO 34
END

IF ~~ THEN BEGIN 74 // from: 73.2
  SAY #38853 /* ~"BIPÈDE, TU AS MASSACRÉ BEAUCOUP DES NÔTRES. NOUS AVONS SENTI LES LUMIÈRES S'ÉTEINDRE EN NOUS SOUS LA FULGURANCE DE LA DOULEUR. TU AS APPORTÉ LA SOUFFRANCE DANS LES DÉDALES DE LA PENSÉE. POUR CELA, TU DOIS FAIRE AMENDE HONORABLE… OU NOUS T'ÉLIMINERONS."~ */
  IF ~~ THEN REPLY #39048 /* ~"Pas question."~ */ GOTO 76
  IF ~~ THEN REPLY #39049 /* ~"Qu'est-ce que je dois faire ?"~ */ GOTO 43
  IF ~~ THEN REPLY #39050 /* ~"Je ne savais pas qu'ils faisaient partie de ton espèce."~ */ GOTO 79
END

IF ~~ THEN BEGIN 75 // from: 23.6 73.3 78.0
  SAY #38854 /* ~"NE NOUS AS-TU PAS ASSEZ FRAPPÉS, PRIMATE ? N'ES-TU POINT RASSASIÉ PAR TES MASSACRES ? AUCUN ASSENTIMENT NE SE LIT DANS TON ESPRIT. NOUS COMMENCERONS PAR TE TUER, BIPÈDE."~ */
  IF ~~ THEN REPLY #39051 /* ~"Je suis à ta disposition…"~ */ DO ~SetGlobal("MAO_Warn","GLOBAL",3)
Enemy()
ForceAttack(Protagonist,Myself)
~ EXIT
END

IF ~~ THEN BEGIN 76 // from: 23.7 74.0 78.2 79.1
  SAY #38855 /* ~"TU FERAS CELA POUR NOUS OU NOUS PROLONGERONS NOTRE DERNIÈRE VIE POUR LA CONSACRER À T'ÉLIMINER DU MULTIVERS. TU AS UNE *DETTE* ENVERS NOUS POUR LA DOULEUR QUE TU AS CAUSÉE."~ */
  IF ~~ THEN REPLY #39052 /* ~"Que veux-tu que je fasse ?"~ */ GOTO 43
  IF ~~ THEN REPLY #39053 /* ~"J'aimerais bien te voir essayer."~ */ DO ~SetGlobal("MAO_Warn","GLOBAL",3)
Enemy()
ForceAttack(Protagonist,Myself)
~ EXIT
END

IF ~~ THEN BEGIN 77 // from: 69.0
  SAY #38857 /* ~"DANS CE CAS, TU NE NOUS SERS PLUS À RIEN.
IL EST L'HEURE POUR TOI DE SOUFFRIR COMME TU NOUS AS FAIT SOUFFRIR.
IL EST L'HEURE DE CRACHER TA PETITE ÉTINCELLE.
TU MOURRAS, HUMANOÏDE.
TU MOURRAS DANS LA *DOULEUR*."~ */
  IF ~~ THEN REPLY #39054 /* ~"C'est comme ça qu'on me remercie ?"~ */ DO ~AddexperienceParty(7500)
SetGlobal("MAO_Warn","GLOBAL",3)
Enemy()
ForceAttack(Protagonist,Myself)
~ EXIT
  IF ~~ THEN REPLY #39055 /* ~"Je te défie d'essayer."~ */ DO ~AddexperienceParty(7500)
SetGlobal("MAO_Warn","GLOBAL",3)
Enemy()
ForceAttack(Protagonist,Myself)
~ EXIT
END

IF ~~ THEN BEGIN 78 // from:
  SAY #39323 /* ~NOUS EXIGEONS QUE TES COMPAGNONS RESTENT SILENCIEUX. TU NOUS AS APPORTÉ LA DOULEUR, IMMENSE, ET NOUS EXIGEONS QUE TU FASSES AMENDE HONORABLE."~ */
  IF ~~ THEN REPLY #39056 /* ~"Je suis là pour t'éliminer."~ */ GOTO 75
  IF ~~ THEN REPLY #39057 /* ~"Que veux-tu que je fasse ?"~ */ GOTO 43
  IF ~~ THEN REPLY #39058 /* ~"Je ne te donnerai pas cette satisfaction."~ */ GOTO 76
END

IF ~~ THEN BEGIN 79 // from: 74.2
  SAY #56039 /* ~"LE TORT EST FAIT. TES SIMPLES EXCUSES NE SUFFIRONT PAS À CHANGER LE PASSÉ. RENDS-NOUS CE SERVICE OU NOUS T'ÉLIMINERONS."~ */
  IF ~~ THEN REPLY #56040 /* ~"Qu'est-ce que je dois faire ?"~ */ GOTO 43
  IF ~~ THEN REPLY #56041 /* ~"Pas question."~ */ GOTO 76
END
