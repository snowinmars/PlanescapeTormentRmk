// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : D0202P.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\fr_FR\dialog.tlk
// dialogF  : (none)

BEGIN ~D0202P~

IF ~  !PartyHasItem("SkScrap")
!PartyHasItem("SkRegret")
~ THEN BEGIN 0 // from:
  SAY #36382 /* ~Cette voûte devant toi a quelque chose… quelque chose qui te dit quelque chose ! Un froid glacial enveloppe l'air entre ces deux piliers noirs, comme si la voûte elle-même touchait un autre endroit plus froid. Tu ignores comment, mais tu SAIS que c'est le portail de la Forteresse des Regrets… et qu'il te suffit maintenant de l'ouvrir.~ */
  IF ~~ THEN REPLY #36383 /* ~Serre les dents et arrache la peau de ton avant-bras gauche…~ */ DO ~GiveItemCreate("SkScrap",Protagonist,1,0,0)
~ GOTO 1
  IF ~~ THEN REPLY #36384 /* ~Laisse le portail tranquille… pour l'instant.~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #53637 /* ~Tu serres les dents et enfonces tes ongles dans ton avant-bras gauche. Dans un bruit de déchirement, tu arraches une bande de peau. Le froid s'accroît entre les piliers, presque insupportable, comme si le portail avait ouvert une brèche…~ */
  IF ~  !PartyHasItem("SkScrap")
~ THEN GOTO 14
  IF ~  PartyHasItem("SkScrap")
~ THEN REPLY #66928 /* ~Examine la peau…~ */ GOTO 3
  IF ~  PartyHasItem("SkScrap")
~ THEN REPLY #66929 /* ~Laisse le portail tranquille… pour l'instant.~ */ EXIT
END

IF ~  PartyHasItem("SkScrap")
!PartyHasItem("SkRegret")
~ THEN BEGIN 2 // from:
  SAY #53640 /* ~Tu te retrouves à nouveau devant l'arche. Le froid entre ces deux piliers pourrait geler les os, comme si l'arche ouvrait sur un autre endroit, plus froid. C'est le portail de la Forteresse des Regrets… Tout ce dont tu as maintenant besoin, c'est d'inscrire le regret sur le morceau de peau que tu as arraché de ton bras.~ */
  IF ~~ THEN REPLY #53641 /* ~Pique ton index et inscris un regret sur le bout de peau avec ton sang…~ */ GOTO 4
  IF ~~ THEN REPLY #53642 /* ~Laisse le portail tranquille… pour l'instant.~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 1.1
  SAY #53643 /* ~Ce morceau de peau a été arraché de ton avant-bras gauche. Sa surface grise pleine de cicatrices te fait penser à la dépouille d'un zombi. Il ressemble plus à un morceau de cuir séché qu'à un morceau de peau.~ */
  IF ~~ THEN REPLY #53644 /* ~Pique ton index et inscris un regret sur le bout de peau avec ton sang…~ */ GOTO 4
  IF ~~ THEN REPLY #53645 /* ~Repose le morceau de peau…~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 2.0 3.0
  SAY #53646 /* ~Tu piques le bout de ton index. Avant que la blessure ne puisse se refermer, tu presses pour obtenir plusieurs gouttes de sang. Tandis que tu te prépares à griffonner tes regrets, une série d'images envahit ton esprit…~ */
  IF ~  NumInPartyGT(1)
~ THEN REPLY #53647 /* ~Regret : "Je regrette ce qui est arrivé à mes compagnons…"~ */ GOTO 5
  IF ~~ THEN REPLY #53648 /* ~Regret : "Je regrette mes actes…"~ */ GOTO 6
  IF ~~ THEN REPLY #53649 /* ~Regret : "Je regrette mon passé…"~ */ GOTO 7
  IF ~~ THEN REPLY #53650 /* ~Regret : "Je regrette les événements qui ont provoqué ceci…"~ */ GOTO 8
  IF ~~ THEN REPLY #53651 /* ~Laisse la blessure se refermer sans écrire sur la chair et pose la peau.~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 4.0 13.0
  SAY #53653 /* ~Tu murmures les mots, et un sentiment de regret résonne dans ton esprit : 'Je regrette…'~ */
  IF ~  NumInPartyGT(1)
~ THEN REPLY #53655 /* ~"… que tous mes compagnons aient dû souffrir pour que je puisse arriver ici."~ */ DO ~IncrementGlobalOnceEx("GLOBALGood_Skin_Regret_1","GLOBALGood",3)
~ GOTO 9
  IF ~  Global("Sell_Morte","GLOBAL",1)
~ THEN REPLY #53869 /* ~"… d'avoir essayé de vendre Morte à Vrischika."~ */ DO ~IncrementGlobalOnceEx("GLOBALGood_Skin_Regret_1","GLOBALGood",1)
~ GOTO 9
  IF ~  Global("Sell_Annah","GLOBAL",1)
~ THEN REPLY #53870 /* ~"… d'avoir essayé de vendre Annah à Vrischika."~ */ DO ~IncrementGlobalOnceEx("GLOBALGood_Skin_Regret_1","GLOBALGood",1)
~ GOTO 9
  IF ~  Global("Sell_Dakkon","GLOBAL",1)
~ THEN REPLY #53871 /* ~"… d'avoir essayé de vendre Dak'kon à Vrischika."~ */ DO ~IncrementGlobalOnceEx("GLOBALGood_Skin_Regret_1","GLOBALGood",1)
~ GOTO 9
  IF ~  Global("Sell_Grace","GLOBAL",1)
~ THEN REPLY #53872 /* ~"… d'avoir essayé de vendre Tombée-en-Disgrâce à Vrischika."~ */ DO ~IncrementGlobalOnceEx("GLOBALGood_Skin_Regret_1","GLOBALGood",1)
~ GOTO 9
  IF ~  Global("Sell_Nordom","GLOBAL",1)
~ THEN REPLY #53873 /* ~"… d'avoir essayé de vendre Nordom à Vrischika."~ */ DO ~IncrementGlobalOnceEx("GLOBALGood_Skin_Regret_1","GLOBALGood",1)
~ GOTO 9
  IF ~  Global("Sell_Morte","GLOBAL",1)
~ THEN REPLY #53874 /* ~"… de ne pas avoir vendu Morte à Vrischika."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Skin_Regret_1","GLOBALGood",-2)
~ GOTO 9
  IF ~  Global("Sell_Annah","GLOBAL",1)
~ THEN REPLY #53875 /* ~"… de ne pas avoir vendu Annah à Vrischika."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Skin_Regret_1","GLOBALGood",-2)
~ GOTO 9
  IF ~  Global("Sell_Dakkon","GLOBAL",1)
~ THEN REPLY #53878 /* ~"… de ne pas avoir vendu Dak'kon à Vrischika."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Skin_Regret_1","GLOBALGood",-2)
~ GOTO 9
  IF ~  Global("Sell_Nordom","GLOBAL",1)
~ THEN REPLY #53879 /* ~"… de ne pas avoir vendu Nordom à Vrischika."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Skin_Regret_1","GLOBALGood",-2)
~ GOTO 9
  IF ~  Global("Sell_Morte","GLOBAL",2)
~ THEN REPLY #53880 /* ~"… d'avoir vendu Morte à Vrischika."~ */ DO ~IncrementGlobalOnceEx("GLOBALGood_Skin_Regret_1","GLOBALGood",1)
~ GOTO 9
  IF ~  Global("Sell_Annah","GLOBAL",2)
~ THEN REPLY #53881 /* ~"… d'avoir vendu Annah à Vrischika."~ */ DO ~IncrementGlobalOnceEx("GLOBALGood_Skin_Regret_1","GLOBALGood",1)
~ GOTO 9
  IF ~  Global("Sell_Dakkon","GLOBAL",2)
~ THEN REPLY #53882 /* ~"… d'avoir vendu Dak'kon à Vrischika."~ */ DO ~IncrementGlobalOnceEx("GLOBALGood_Skin_Regret_1","GLOBALGood",1)
~ GOTO 9
  IF ~  Global("Sell_Nordom","GLOBAL",2)
~ THEN REPLY #53883 /* ~"… d'avoir vendu Nordom à Vrischika."~ */ DO ~IncrementGlobalOnceEx("GLOBALGood_Skin_Regret_1","GLOBALGood",1)
~ GOTO 9
  IF ~  GlobalGT("Dakkon_Slave","GLOBAL",0)
~ THEN REPLY #53884 /* ~"… d'avoir fait de Dak'kon mon esclave durant toutes ces décades."~ */ DO ~IncrementGlobalOnceEx("GLOBALGood_Skin_Regret_1","GLOBALGood",2)
~ GOTO 9
  IF ~  Global("Know_Ignus_Teacher","GLOBAL",2)
~ THEN REPLY #53885 /* ~"… d'avoir enseigné à Ignus le pouvoir de blesser les autres."~ */ DO ~IncrementGlobalOnceEx("GLOBALGood_Skin_Regret_1","GLOBALGood",2)
~ GOTO 9
  IF ~  Global("Evil_Pillar_2","GLOBAL",1)
~ THEN REPLY #53886 /* ~"… d'avoir trahi Morte et de l'avoir laissé au Pilier des Crânes."~ */ DO ~IncrementGlobalOnceEx("GLOBALGood_Skin_Regret_1","GLOBALGood",2)
~ GOTO 9
  IF ~  Dead("Dakkon")
~ THEN REPLY #53887 /* ~"… la mort de Dak'kon."~ */ GOTO 9
  IF ~  Dead("Annah")
~ THEN REPLY #53888 /* ~"… la mort d'Annah."~ */ GOTO 9
  IF ~  Dead("Morte")
~ THEN REPLY #53889 /* ~"… la mort de Morte."~ */ GOTO 9
  IF ~  Dead("Grace")
~ THEN REPLY #53890 /* ~"… la mort de Tombée-en-Disgrâce."~ */ GOTO 9
  IF ~  Dead("Ignus")
~ THEN REPLY #53891 /* ~"… la mort d'Ignus."~ */ GOTO 9
  IF ~  Dead("Nordom")
~ THEN REPLY #53892 /* ~"… la mort de Nordom."~ */ GOTO 9
  IF ~  Dead("Vhail")
~ THEN REPLY #53893 /* ~"… la mort de Vhailor."~ */ GOTO 9
  IF ~~ THEN REPLY #53894 /* ~Réfléchis à un autre regret…~ */ GOTO 13
  IF ~~ THEN REPLY #53895 /* ~Laisse la blessure se refermer sans écrire sur la chair et pose la peau.~ */ EXIT
END

IF ~~ THEN BEGIN 6 // from: 4.1 13.1
  SAY #53896 /* ~Tu murmures les mots, et un sentiment de regret résonne dans ton esprit : 'Je regrette…'~ */
  IF ~  GlobalGT("Murder","GLOBAL",20)
~ THEN REPLY #53897 /* ~"… de ne pas avoir tué plus de gens."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Skin_Regret_1","GLOBALGood",-3)
~ GOTO 9
  IF ~  Global("Lawful_Coaxmetal_1","GLOBAL",1)
~ THEN REPLY #53898 /* ~"… de ne pas avoir libéré Coaxmétal de la tour de siège."~ */ GOTO 9
  IF ~  Global("Lawful_Coaxmetal_1","GLOBAL",0)
Global("Evil_Coaxmetal_4","GLOBAL",1)
~ THEN REPLY #53899 /* ~"… de ne pas avoir libéré Coaxmétal de la tour de siège."~ */ GOTO 9
  IF ~  Global("Chaotic_Coaxmetal_1","GLOBAL",1)
~ THEN REPLY #53900 /* ~"… d'avoir libéré Coaxmétal de la tour de siège."~ */ GOTO 9
  IF ~~ THEN REPLY #53903 /* ~"… d'avoir dû tuer Ravel."~ */ DO ~IncrementGlobalOnceEx("GLOBALGood_Skin_Regret_1","GLOBALGood",2)
~ GOTO 9
  IF ~~ THEN REPLY #53904 /* ~"… d'avoir erré sur les plans alors que le maudit portail se trouvait devant moi lorsque je me suis éveillé pour la PREMIÈRE fois."~ */ GOTO 9
  IF ~~ THEN REPLY #53905 /* ~Réfléchis à un autre regret…~ */ GOTO 13
  IF ~~ THEN REPLY #53906 /* ~Laisse la blessure se refermer sans écrire sur la chair et pose la peau.~ */ EXIT
END

IF ~~ THEN BEGIN 7 // from: 4.2 13.2
  SAY #53907 /* ~Tu murmures les mots, et un sentiment de regret résonne dans ton esprit : 'Je regrette…'~ */
  IF ~~ THEN REPLY #53908 /* ~"… d'avoir demandé à être immortel."~ */ GOTO 9
  IF ~  Global("Murdered_Fin","GLOBAL",1)
~ THEN REPLY #53909 /* ~"… le meurtre de Fin Andlye. Si je n'étais pas devenu immortel, mon incarnation paranoïaque ne l'aurait jamais tué…"~ */ DO ~IncrementGlobalOnceEx("GLOBALGood_Skin_Regret_1","GLOBALGood",1)
~ GOTO 9
  IF ~~ THEN REPLY #53910 /* ~"… les dommages causés par mes précédentes incarnations, à elles-mêmes et aux autres."~ */ DO ~IncrementGlobalOnceEx("GLOBALGood_Skin_Regret_1","GLOBALGood",3)
~ GOTO 9
  IF ~~ THEN REPLY #53911 /* ~"… les morts que j'ai causées, ici et partout dans le multivers."~ */ DO ~IncrementGlobalOnceEx("GLOBALGood_Skin_Regret_1","GLOBALGood",3)
~ GOTO 9
  IF ~  Global("Memory_Deionarra_Longing","GLOBAL",1)
~ THEN REPLY #53912 /* ~"… d'avoir menti à Deionarra pour la forcer à m'accompagner dans mon voyage."~ */ DO ~IncrementGlobalOnceEx("GLOBALGood_Skin_Regret_1","GLOBALGood",2)
~ GOTO 9
  IF ~  GlobalGT("Deionarra_Death_Truth","GLOBAL",0)
~ THEN REPLY #53913 /* ~"… d'avoir tué Deionarra à la Forteresse des Regrets."~ */ DO ~IncrementGlobalOnceEx("GLOBALGood_Skin_Regret_1","GLOBALGood",2)
~ GOTO 9
  IF ~  GlobalGT("Deionarra_Death_Truth","GLOBAL",1)
GlobalGT("Know_Iannis_Deionarra_Death","GLOBAL",0)
~ THEN REPLY #53914 /* ~"… la souffrance que j'ai causée à Iannis en menant sa fille à sa mort."~ */ DO ~IncrementGlobalOnceEx("GLOBALGood_Skin_Regret_1","GLOBALGood",2)
~ GOTO 9
  IF ~~ THEN REPLY #53915 /* ~Réfléchis à un autre regret…~ */ GOTO 13
  IF ~~ THEN REPLY #53916 /* ~Laisse la blessure se refermer sans écrire sur la chair et pose la peau.~ */ EXIT
END

IF ~~ THEN BEGIN 8 // from: 4.3 13.3
  SAY #53917 /* ~Tu murmures les mots, et un sentiment de regret résonne dans ton esprit : 'Je regrette…'~ */
  IF ~~ THEN REPLY #53918 /* ~"… qu'il m'ait fallu si *longtemps* pour trouver ma mortalité."~ */ GOTO 9
  IF ~  GlobalGT("Death","GLOBAL",20)
~ THEN REPLY #53919 /* ~"… qu'il ait fallu tant de morts pour en arriver là."~ */ GOTO 9
  IF ~  NumInParty(1)
!NearbyDialog("DNordom")
!NearbyDialog("DVhail")
!NearbyDialog("Dignus")
!NearbyDialog("DGrace")
!NearbyDialog("Dannah")
!NearbyDialog("DDakkon")
!NearbyDialog("DMorte")
~ THEN REPLY #53920 /* ~"… qu'il n'y ait personne ici pour partager ce moment avec moi."~ */ GOTO 9
  IF ~~ THEN REPLY #53921 /* ~"… de n'avoir aucun regret à écrire sur ce morceau de peau."~ */ GOTO 9
  IF ~~ THEN REPLY #53922 /* ~Réfléchis à un autre regret…~ */ GOTO 13
  IF ~~ THEN REPLY #53923 /* ~Laisse la blessure se refermer sans écrire sur la chair et pose la peau.~ */ EXIT
END

IF ~~ THEN BEGIN 9 // from: 5.0 5.1 5.2 5.3 5.4 5.5 5.6 5.7 5.8 5.9 5.10 5.11 5.12 5.13 5.14 5.15 5.16 5.17 5.18 5.19 5.20 5.21 5.22 5.23 6.0 6.1 6.2 6.3 6.4 6.5 7.0 7.1 7.2 7.3 7.4 7.5 7.6 8.0 8.1 8.2 8.3
  SAY #53924 /* ~Tu griffonnes les regrets sur le bout de chair… mais ta force de guérison t'oblige plusieurs fois à rouvrir la coupure de ton doigt et à appuyer pour obtenir plus de sang. Quelques instants plus tard, tu as terminé, ton sang brille sur le morceau de peau… un mélange de chair, de sang et de regrets.~ */
  IF ~  Global("Regret_Experience","GLOBAL",0)
~ THEN REPLY #53926 /* ~Regarde le sang sécher…~ */ DO ~TransformPartyItem("SkScrap","SkRegret",1,0,0)
AddexperienceParty(250000)
SetGlobal("Regret_Experience","GLOBAL",1)
~ GOTO 10
  IF ~  Global("Regret_Experience","GLOBAL",1)
~ THEN REPLY #53927 /* ~Regarde le sang sécher…~ */ DO ~TransformPartyItem("SkScrap","SkRegret",1,0,0)
~ GOTO 10
END

IF ~~ THEN BEGIN 10 // from: 9.0 9.1
  SAY #53928 /* ~Tandis que tu regardes le regret sanglant sécher, une sensation de froid t'envahit. Tu lèves les yeux. Les piliers noirs de chaque côté de l'arche brillent légèrement et des poussières lumineuses et bleutées s'écoulent des côtés pour former un rideau brillant entre eux. Au-delà du rideau, tu aperçois vaguement un chemin de pierres érodées qui se perd dans l'obscurité.~ */
  IF ~  NearbyDialog("DNordom")
InParty("Nordom")
~ THEN REPLY #53929 /* ~"Tout le monde est prêt ?"~ */ EXTERN ~DNORDOM~ 16
  IF ~  !InParty("Nordom")
NearbyDialog("DVhail")
InParty("Vhail")
~ THEN REPLY #53930 /* ~"Tout le monde est prêt ?"~ */ EXTERN ~DVHAIL~ 15
  IF ~  !InParty("Nordom")
!InParty("Vhail")
NearbyDialog("Dignus")
InParty("Ignus")
~ THEN REPLY #53931 /* ~"Tout le monde est prêt ?"~ */ EXTERN ~DIGNUS~ 19
  IF ~  !InParty("Nordom")
!InParty("Vhail")
!InParty("Ignus")
NearbyDialog("DGrace")
InParty("Grace")
~ THEN REPLY #53932 /* ~"Tout le monde est prêt ?"~ */ EXTERN ~DGRACE~ 168
  IF ~  !InParty("Nordom")
!InParty("Vhail")
!InParty("Ignus")
!InParty("Grace")
NearbyDialog("DAnnah")
InParty("Annah")
~ THEN REPLY #53934 /* ~"Tout le monde est prêt ?"~ */ EXTERN ~DANNAH~ 272
  IF ~  !InParty("Nordom")
!InParty("Vhail")
!InParty("ignus")
!InParty("Grace")
!InParty("annah")
NearbyDialog("DDakkon")
InParty("Dakkon")
GlobalLT("BD_DAKKON_MORALE","GLOBAL",6)
~ THEN REPLY #53935 /* ~"Tout le monde est prêt ?"~ */ EXTERN ~DDAKKON~ 173
  IF ~  !InParty("nordom")
!InParty("Vhail")
!InParty("ignus")
!InParty("Grace")
!InParty("annah")
NearbyDialog("DDakkon")
InParty("Dakkon")
GlobalGT("BD_DAKKON_MORALE","GLOBAL",5)
~ THEN REPLY #53936 /* ~"Tout le monde est prêt ?"~ */ EXTERN ~DDAKKON~ 172
  IF ~  !InParty("Nordom")
!InParty("Vhail")
!InParty("ignus")
!InParty("Grace")
!InParty("annah")
!InParty("Dakkon")
NearbyDialog("DMorte")
InParty("Morte")
Global("Morte_Quip_Regret_Portal","GLOBAL",0)
~ THEN REPLY #53937 /* ~"Tout le monde est prêt ?"~ */ DO ~SetGlobal("Morte_Quip_Regret_Portal","GLOBAL",1)
~ EXTERN ~DMORTE~ 536
  IF ~  !InParty("nordom")
!InParty("vhail")
!InParty("ignus")
!InParty("grace")
!InParty("annah")
!InParty("dakkon")
NearbyDialog("Dmorte")
InParty("Morte")
GlobalGT("Morte_Quip_Regret_Portal","GLOBAL",0)
~ THEN REPLY #53938 /* ~"Tout le monde est prêt ?"~ */ EXTERN ~DMORTE~ 534
  IF ~  !InParty("nordom")
!InParty("Vhail")
!InParty("ignus")
!InParty("Grace")
!InParty("annah")
!InParty("dakkon")
!InParty("Morte")
NumInPartyGT(1)
~ THEN REPLY #53939 /* ~"Tout le monde est prêt ?"~ */ GOTO 12
  IF ~  PartyHasItem("SkRegret")
!NearbyDialog("DMorte")
~ THEN REPLY #53940 /* ~Prends en main le lambeau de chair sur lequel est inscrit ton regret et franchis le rideau.~ */ DO ~SetPortalCursor("Fort_Port",PORTAL_CURSOR_VISIBLE,TRUE)
SetPortalCursor("Fort_Port",PORTAL_ENABLED,TRUE)
~ EXIT
  IF ~  PartyHasItem("SkRegret")
NearbyDialog("DMorte")
!InParty("Morte")
Global("Morte_Quip_Regret_Portal","GLOBAL",0)
~ THEN REPLY #53941 /* ~Prends en main le lambeau de chair sur lequel est inscrit ton regret et franchis le rideau.~ */ DO ~SetGlobal("Morte_Quip_Regret_Portal","GLOBAL",1)
~ EXTERN ~DMORTE~ 538
  IF ~  PartyHasItem("SkRegret")
NearbyDialog("DMorte")
!InParty("Morte")
GlobalGT("Morte_Quip_Regret_Portal","GLOBAL",0)
~ THEN REPLY #53942 /* ~Prends en main le lambeau de chair sur lequel est inscrit ton regret et franchis le rideau.~ */ DO ~SetPortalCursor("Fort_Port",PORTAL_CURSOR_VISIBLE,TRUE)
SetPortalCursor("Fort_Port",PORTAL_ENABLED,TRUE)
~ EXIT
  IF ~~ THEN REPLY #53943 /* ~Laisse le portail.~ */ EXIT
END

IF ~  PartyHasItem("SkRegret")
~ THEN BEGIN 11 // from:
  SAY #53947 /* ~Tandis que tu t'approches des deux piliers qui mènent à la Forteresse, la peau de regrets dans la main, tu ressens une vague de froid. Les piliers noirs de chaque côté de l'arche brillent légèrement et des poussières lumineuses et bleutées s'écoulent des côtés pour former un rideau brillant entre eux. Au-delà du rideau, tu aperçois difficilement un chemin de pierres érodées qui se perd dans l'obscurité.~ */
  IF ~  NearbyDialog("DNordom")
InParty("Nordom")
~ THEN REPLY #53948 /* ~"Tout le monde est prêt ?"~ */ EXTERN ~DNORDOM~ 16
  IF ~  !InParty("Nordom")
NearbyDialog("DVhail")
InParty("Vhail")
~ THEN REPLY #53949 /* ~"Tout le monde est prêt ?"~ */ EXTERN ~DVHAIL~ 15
  IF ~  !InParty("Nordom")
!InParty("Vhail")
NearbyDialog("Dignus")
InParty("Ignus")
~ THEN REPLY #53950 /* ~"Tout le monde est prêt ?"~ */ EXTERN ~DIGNUS~ 19
  IF ~  !InParty("Nordom")
!InParty("Vhail")
!InParty("ignus")
NearbyDialog("DGrace")
InParty("Grace")
~ THEN REPLY #53951 /* ~"Tout le monde est prêt ?"~ */ EXTERN ~DGRACE~ 168
  IF ~  !InParty("Nordom")
!InParty("Vhail")
!InParty("ignus")
!InParty("Grace")
NearbyDialog("DAnnah")
InParty("Annah")
~ THEN REPLY #53952 /* ~"Tout le monde est prêt ?"~ */ EXTERN ~DANNAH~ 272
  IF ~  !InParty("Nordom")
!InParty("Vhail")
!InParty("ignus")
!InParty("Grace")
!InParty("annah")
NearbyDialog("DDakkon")
InParty("Dakkon")
GlobalLT("BD_DAKKON_MORALE","GLOBAL",6)
~ THEN REPLY #53954 /* ~"Tout le monde est prêt ?"~ */ EXTERN ~DDAKKON~ 173
  IF ~  !InParty("nordom")
!InParty("Vhail")
!InParty("ignus")
!InParty("Grace")
!InParty("annah")
NearbyDialog("DDakkon")
InParty("Dakkon")
GlobalGT("BD_DAKKON_MORALE","GLOBAL",5)
~ THEN REPLY #53956 /* ~"Tout le monde est prêt ?"~ */ EXTERN ~DDAKKON~ 172
  IF ~  !InParty("nordom")
!InParty("Vhail")
!InParty("ignus")
!InParty("Grace")
!InParty("annah")
!InParty("Dakkon")
NearbyDialog("DMorte")
InParty("Morte")
Global("Morte_Quip_Regret_Portal","GLOBAL",0)
~ THEN REPLY #53957 /* ~"Tout le monde est prêt ?"~ */ EXTERN ~DMORTE~ 536
  IF ~  !InParty("nordom")
!InParty("Vhail")
!InParty("ignus")
!InParty("Grace")
!InParty("annah")
!InParty("dakkon")
NearbyDialog("DMorte")
InParty("Morte")
GlobalGT("Morte_Quip_Regret_Portal","GLOBAL",0)
~ THEN REPLY #53958 /* ~"Tout le monde est prêt ?"~ */ EXTERN ~DMORTE~ 534
  IF ~  !InParty("nordom")
!InParty("Vhail")
!InParty("ignus")
!InParty("Grace")
!InParty("annah")
!InParty("dakkon")
!InParty("Morte")
NumInPartyGT(1)
~ THEN REPLY #53959 /* ~"Tout le monde est prêt ?"~ */ GOTO 12
  IF ~  PartyHasItem("SkRegret")
!NearbyDialog("DMorte")
~ THEN REPLY #53960 /* ~Tiens dans ta main la peau avec les regrets, et prépare-toi à passer le rideau.~ */ DO ~SetPortalCursor("Fort_Port",PORTAL_CURSOR_VISIBLE,TRUE)
SetPortalCursor("Fort_Port",PORTAL_ENABLED,TRUE)
~ EXIT
  IF ~  PartyHasItem("SkRegret")
NearbyDialog("DMorte")
!InParty("Morte")
Global("Morte_Quip_Regret_Portal","GLOBAL",0)
~ THEN REPLY #53961 /* ~Tiens dans ta main la peau avec les regrets, et prépare-toi à passer le rideau.~ */ DO ~SetGlobal("Morte_Quip_Regret_Portal","GLOBAL",1)
~ EXTERN ~DMORTE~ 538
  IF ~  PartyHasItem("SkRegret")
NearbyDialog("DMorte")
!InParty("Morte")
GlobalGT("Morte_Quip_Regret_Portal","GLOBAL",0)
~ THEN REPLY #53962 /* ~Tiens dans ta main la peau avec les regrets, et prépare-toi à passer le rideau.~ */ DO ~SetPortalCursor("Fort_Port",PORTAL_CURSOR_VISIBLE,TRUE)
SetPortalCursor("Fort_Port",PORTAL_ENABLED,TRUE)
~ EXIT
  IF ~~ THEN REPLY #53963 /* ~Laisse le portail.~ */ EXIT
END

IF ~~ THEN BEGIN 12 // from: 10.9 11.9
  SAY #53964 /* ~Ta question ne trouve que le silence. Aucun de tes compagnons n'est assez proche pour t'entendre.~ */
  IF ~  PartyHasItem("SkRegret")
~ THEN REPLY #53965 /* ~Tiens dans ta main la peau avec les regrets, et prépare-toi à passer le rideau.~ */ DO ~SetPortalCursor("Fort_Port",PORTAL_CURSOR_VISIBLE,TRUE)
SetPortalCursor("Fort_Port",PORTAL_ENABLED,TRUE)
~ EXIT
  IF ~~ THEN REPLY #53966 /* ~Va chercher tes compagnons, puis retourne au portail.~ */ DO ~SetPortalCursor("Fort_Port",PORTAL_CURSOR_VISIBLE,TRUE)
SetPortalCursor("Fort_Port",PORTAL_ENABLED,TRUE)
~ EXIT
END

IF ~~ THEN BEGIN 13 // from: 5.24 6.6 7.7 8.4
  SAY #53967 /* ~Pendant les quelques instants que tu as passé à réfléchir, la coupure sur ton doigt s'est complètement refermée. Tu es obligé de rouvrir la blessure de ton doigt et de presser pour obtenir plusieurs gouttes de sang. Tandis que tu te prépares à griffonner tes regrets, une série d'images envahit ton esprit….~ */
  IF ~  NumInPartyGT(1)
~ THEN REPLY #53969 /* ~Regret : "Je regrette ce qui est arrivé à mes compagnons…"~ */ GOTO 5
  IF ~~ THEN REPLY #53970 /* ~Regret : "Je regrette mes actes…"~ */ GOTO 6
  IF ~~ THEN REPLY #53971 /* ~Regret : "Je regrette mon passé…"~ */ GOTO 7
  IF ~~ THEN REPLY #53972 /* ~Regret : "Je regrette les événements qui ont provoqué ceci…"~ */ GOTO 8
  IF ~~ THEN REPLY #53973 /* ~Repose le morceau de peau…~ */ EXIT
END

IF ~~ THEN BEGIN 14 // from: 1.0
  SAY #66925 /* ~… mais tu n'as plus de place et le lambeau de chair tombe par terre.~ */
  IF ~~ THEN REPLY #66926 /* ~Détourne-toi du portail et ramasse le lambeau de chair.~ */ EXIT
END
