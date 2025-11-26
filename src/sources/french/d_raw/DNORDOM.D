// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DNORDOM.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\fr_FR\dialog.tlk
// dialogF  : (none)

BEGIN ~DNORDOM~

IF ~  Global("Nordom","GLOBAL",0)
!GlobalGT("Fortress_Nordom","GLOBAL",2)
~ THEN BEGIN 0 // from:
  SAY #2852 /* ~Tu vois un cube à quatre bras et deux jambes ; malgré son aspect métallique, l'avant du cube est constitué d'un étrange visage organique vert doté de deux grands yeux en ellipse. Le cube ne semble pas te remarquer ; il observe intensément les deux arbalètes qu'il tient en main. Une lentille à multiples facettes pend sur le côté supérieur gauche de la créature ; elle semble conçue pour venir se placer devant l'un des yeux du cube, comme une lunette de visée.~ */
  IF ~~ THEN REPLY #2853 /* ~"Euh… bonjour… ?"~ */ DO ~SetAnimState("Nordom",ANIM_MIMESPELL1)
~ GOTO 18
  IF ~~ THEN REPLY #34013 /* ~Ignore le… cube.~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from:
  SAY #16630 /* ~"Définir : Aide, requise."~ */
  IF ~  CheckStatLT(Protagonist,15,INT)
NearbyDialog("DMorte")
~ THEN REPLY #16952 /* ~"Je te demande d'aider Deuils à se soucier des arbres."~ */ EXTERN ~DMORTE~ 183
  IF ~  CheckStatLT(Protagonist,15,INT)
!NearbyDialog("DMorte")
~ THEN REPLY #16953 /* ~"Je te demande d'aider Deuils à se soucier des arbres."~ */ GOTO 2
  IF ~  CheckStatGT(Protagonist,14,INT)
~ THEN REPLY #16954 /* ~"Nordom : Désir que tous les arbres du quartier de la 'Ruche' de Sigil redeviennent sains et florissants."~ */ GOTO 4
END

IF ~~ THEN BEGIN 2 // from: 1.1
  SAY #16631 /* ~"Jusqu'à quel point dois-je me faire du soucis pour eux ?"~ */
  IF ~  NearbyDialog("DMorte")
~ THEN REPLY #16955 /* ~"Euh… Non, j'ai dit 'te soucier'. Chérir."~ */ EXTERN ~DMORTE~ 184
  IF ~  !NearbyDialog("DMorte")
~ THEN REPLY #16956 /* ~"Euh… Non, j'ai dit 'te soucier'. Chérir."~ */ GOTO 3
  IF ~~ THEN REPLY #16957 /* ~"Peu importe. J'ai quelques questions, Deuils…"~ */ EXTERN ~DMFTREE~ 28
  IF ~~ THEN REPLY #16958 /* ~"Laisse tomber. Au revoir, Deuils-pour-Arbres."~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 2.1
  SAY #16632 /* ~"Demande : Aide Deuils (c.-à-d., Deuils-pour-Arbres) [Chérir les arbres]. Commande/nom d'objet invalide."~ */
  IF ~  NearbyDialog("DMorte")
Global("Tree_M","AR0400",0)
~ THEN REPLY #16970 /* ~"Peu importe. Morte ? Qu'est-ce que tu en penses ?"~ */ DO ~SetGlobal("Tree_M","AR0400",1)
~ EXTERN ~DMORTE~ 181
  IF ~  NearbyDialog("DAnnah")
Global("Tree_A","AR0400",0)
~ THEN REPLY #16971 /* ~"Peu importe. Annah ? Tu pourrais ?"~ */ DO ~SetGlobal("Tree_A","AR0400",1)
~ EXTERN ~DANNAH~ 99
  IF ~  NearbyDialog("DIgnus")
Global("Tree_I","AR0400",0)
~ THEN REPLY #16972 /* ~"Peu importe. Ignus ?"~ */ DO ~SetGlobal("Tree_I","AR0400",1)
~ EXTERN ~DIGNUS~ 11
  IF ~  NearbyDialog("DGrace")
Global("Tree_G","AR0400",0)
~ THEN REPLY #16973 /* ~"Peu importe. Grâce, qu'en dites-vous ?"~ */ DO ~SetGlobal("Tree_G","AR0400",1)
~ EXTERN ~DGRACE~ 14
  IF ~  NearbyDialog("DDakkon")
Global("Tree_D","AR0400",0)
~ THEN REPLY #16981 /* ~"Peu importe. Dak'kon, tu pourrais aider cet homme ?"~ */ DO ~SetGlobal("Tree_D","AR0400",1)
~ EXTERN ~DDAKKON~ 74
  IF ~  NearbyDialog("DDakkon")
Global("Tree_D","AR0400",0)
Global("Dakkon_Slave","Global",1)
~ THEN REPLY #16982 /* ~"Peu importe. Dak'kon : aide cet homme."~ */ DO ~IncrementGlobal("BD_DAKKON_MORALE","GLOBAL",-1)
SetGlobal("Tree_D","AR0400",1)
~ EXTERN ~DDAKKON~ 75
  IF ~  NearbyDialog("DVhail")
Global("Tree_V","AR0400",0)
~ THEN REPLY #16983 /* ~"Peu importe. Vhailor, pourrais-tu l'aider ?"~ */ DO ~SetGlobal("Tree_V","AR0400",1)
~ EXTERN ~DVHAIL~ 1
  IF ~~ THEN REPLY #16984 /* ~"Peu importe. J'ai quelques questions, Deuils…"~ */ EXTERN ~DMFTREE~ 28
  IF ~~ THEN REPLY #16990 /* ~"Laisse tomber. Au revoir, Deuils-pour-Arbres."~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 1.2
  SAY #16633 /* ~"La commande est comprise. Les paramètres sont acceptables. À quoi servira ledit souhait ?"~ */
  IF ~  NearbyDialog("DMorte")
~ THEN REPLY #16991 /* ~"La Ruche est un lieu de Chaos et de décadence. Une fois fortifiés, les arbres ramèneront sûrement de l'ordre dans cet endroit."~ */ DO ~IncrementGlobal("Tree_Helpers","AR0400",1)
~ GOTO 5
  IF ~  !NearbyDialog("DMorte")
~ THEN REPLY #16993 /* ~"La Ruche est un lieu de Chaos et de décadence. Une fois fortifiés, les arbres ramèneront sûrement de l'ordre dans cet endroit."~ */ DO ~IncrementGlobal("Tree_Helpers","AR0400",1)
~ GOTO 6
END

IF ~~ THEN BEGIN 5 // from: 4.0
  SAY #16634 /* ~"Ledit souhait prendra effet immédiatement."~ */
  IF ~~ THEN EXTERN ~DMORTE~ 185
END

IF ~~ THEN BEGIN 6 // from: 4.1
  SAY #16992 /* ~"Ledit souhait prendra effet immédiatement."~ */
  IF ~  NearbyDialog("DMorte")
Global("Tree_M","AR0400",0)
~ THEN REPLY #16994 /* ~"Merci, Nordom. Morte ? Qu'est-ce que t'en penses ?"~ */ DO ~SetGlobal("Tree_M","AR0400",1)
~ EXTERN ~DMORTE~ 181
  IF ~  NearbyDialog("DAnnah")
Global("Tree_A","AR0400",0)
~ THEN REPLY #16995 /* ~"Merci, Nordom. Annah ? Tu peux ?"~ */ DO ~SetGlobal("Tree_A","AR0400",1)
~ EXTERN ~DANNAH~ 99
  IF ~  NearbyDialog("DIgnus")
Global("Tree_I","AR0400",0)
~ THEN REPLY #16996 /* ~"Merci, Nordom. Ignus ?"~ */ DO ~SetGlobal("Tree_I","AR0400",1)
~ EXTERN ~DIGNUS~ 11
  IF ~  NearbyDialog("DGrace")
Global("Tree_G","AR0400",0)
~ THEN REPLY #16997 /* ~"Merci, Nordom. Grâce, vous pourriez y réfléchir ?"~ */ DO ~SetGlobal("Tree_G","AR0400",1)
~ EXTERN ~DGRACE~ 14
  IF ~  NearbyDialog("DDakkon")
Global("Tree_D","AR0400",0)
~ THEN REPLY #16998 /* ~"Merci, Nordom. Dak'kon, tu pourrais aider cet homme ?"~ */ DO ~SetGlobal("Tree_D","AR0400",1)
~ EXTERN ~DDAKKON~ 74
  IF ~  NearbyDialog("DDakkon")
Global("Tree_D","AR0400",0)
Global("Dakkon_Slave","Global",1)
~ THEN REPLY #16999 /* ~"Merci, Nordom. Dak'kon : aide cet homme."~ */ DO ~IncrementGlobal("BD_DAKKON_MORALE","GLOBAL",-1)
SetGlobal("Tree_D","AR0400",1)
~ EXTERN ~DDAKKON~ 75
  IF ~  NearbyDialog("DVhail")
Global("Tree_V","AR0400",0)
~ THEN REPLY #17000 /* ~"Merci, Nordom. Vhailor, tu pourrais aider ?"~ */ DO ~SetGlobal("Tree_V","AR0400",1)
~ EXTERN ~DVHAIL~ 1
  IF ~~ THEN REPLY #17001 /* ~"Merci, Nordom. J'ai quelques questions, Deuils…"~ */ EXTERN ~DMFTREE~ 28
  IF ~~ THEN REPLY #17002 /* ~"Je te remercie, Nordom. Au revoir, Deuils-pour-Arbres."~ */ EXIT
END

IF ~  GlobalGT("Nordom","GLOBAL",0)
!InParty("Nordom")
!GlobalGT("Fortress_Nordom","GLOBAL",2)
~ THEN BEGIN 7 // from:
  SAY #34006 /* ~Nordom semble perdu dans ses pensées. Littéralement. Il *clique* et *ronronne* comme une machine à calculer.~ */
  IF ~~ THEN REPLY #34007 /* ~"Nordom, j'ai besoin de ton aide. Voyageras-tu avec moi ?"~ */ GOTO 8
  IF ~~ THEN REPLY #34008 /* ~Laisse Nordom à ses "pensées".~ */ EXIT
END

IF ~~ THEN BEGIN 8 // from: 7.0
  SAY #34009 /* ~La 'bouche' de Nordom forme une bizarre ellipse oblique. "Affirmatif ! Entrée autorisée, autorisations échangées." Ses deux arbalètes commencent à *cliquer* et à *vibrer* violemment, jusqu'à presque lui échapper des mains. "Statut : fin prêt et en attente."~ [NOR298] */
  IF ~  Global("Nordom","GLOBAL",2)
~ THEN REPLY #34010 /* ~"Alors, allons-y."~ */ DO ~ChangeAIScript("pcnordom",DEFAULT)
JoinPartyEx(TRUE)
~ EXIT
  IF ~  GlobalLT("Nordom","GLOBAL",2)
~ THEN REPLY #66820 /* ~"Dans ce cas, allons-y."~ */ DO ~SetGlobal("Nordom","GLOBAL",2)
AddexperienceParty(36000)
ChangeAIScript("pcnordom",DEFAULT)
JoinPartyEx(TRUE)
~ EXIT
END

IF ~  InParty("Nordom")
!GlobalGT("Fortress_Nordom","GLOBAL",2)
~ THEN BEGIN 9 // from:
  SAY #34011 /* ~Nordom fixe ses arbalètes avec intensité. Elles font toute une gamme de cliquetis, un, puis un autre, comme si elles conversaient.~ */
  IF ~  Global("Know_Director_Truth","GLOBAL",3)
Global("Nordom_Order","GLOBAL",0)
~ THEN REPLY #55968 /* ~"Nordom, peux-tu me dire quelles sont les fonctions du Directeur créatif ?"~ */ GOTO 79
  IF ~  GlobalGT("Nordom_Order","GLOBAL",0)
~ THEN REPLY #55971 /* ~"Nordom, répète-moi quelles sont les fonctions du Directeur créatif."~ */ GOTO 79
  IF ~  GlobalGT("Nordom_Order","GLOBAL",0)
~ THEN REPLY #55974 /* ~"En tant que Directeur créatif, j'ai quelques ordres à te donner."~ */ GOTO 81
  IF ~~ THEN REPLY #55975 /* ~"Qu'est-ce que tu fais avec tes arbalètes ?"~ */ GOTO 43
  IF ~~ THEN REPLY #55977 /* ~"Je suis curieux, Nordom… Comment as-tu atterri à Rubikon ?"~ */ GOTO 49
  IF ~~ THEN REPLY #55979 /* ~"Nordom, c'est *quoi* un modrone ?"~ */ GOTO 72
  IF ~  Global("Know_Mechanus","GLOBAL",1)
~ THEN REPLY #55980 /* ~"Parle-moi de Méchanus, Nordom."~ */ DO ~SetAnimState("Nordom",ANIM_MIMESTAND)
~ GOTO 64
  IF ~  Global("Nordom_Self","GLOBAL",0)
~ THEN REPLY #55984 /* ~"Euh… comment ça va, Nordom ?"~ */ DO ~SetGlobal("Nordom_Self","GLOBAL",1)
SetAnimState("Nordom",ANIM_MIMESTAND)
~ GOTO 105
  IF ~  Global("Nordom_Self","GLOBAL",1)
~ THEN REPLY #55988 /* ~"Comment ça va, Nordom ?"~ */ GOTO 105
  IF ~  GlobalGT("Nordom_Solution","GLOBAL",0)
~ THEN REPLY #55991 /* ~"Nordom, tu as demandé comment j'allais avant, hein ?"~ */ GOTO 111
  IF ~  GlobalGT("Nordom_Solution","GLOBAL",1)
~ THEN REPLY #55994 /* ~"Est-ce qu'on peut reparler de mon immortalité ?"~ */ GOTO 130
  IF ~  GlobalGT("Know_Ravel","GLOBAL",0)
Global("Ravel","GLOBAL",0)
~ THEN REPLY #55996 /* ~"T'as entendu parler d'une certaine Ravel Puits-de-Rébus, Nordom ?"~ */ GOTO 75
  IF ~  GlobalGT("Know_Blood_War","GLOBAL",0)
~ THEN REPLY #56000 /* ~"Nordom, sais-tu quelque chose de la Guerre Sanglante ?"~ */ GOTO 76
  IF ~~ THEN REPLY #56002 /* ~Laisse Nordom à ses armes.~ */ EXIT
END

IF ~~ THEN BEGIN 10 // from:
  SAY #39579 /* ~"Dans la 13,7e Révolution, notre mission consistait à réparer les engrenages et rouages du sous-jeu trente-et-un, dans le cinquième anneau de Méchanus. Nous avons enlevé l'obstruction et l'engrenage s'est mis à tourner à sa vitesse normale. Après avoir accompli notre mission, nous avons été reconduits à la Source."~ */
  IF ~  NearbyDialog("DMorte")
~ THEN EXTERN ~DMORTE~ 418
  IF ~  !NearbyDialog("DMorte")
~ THEN REPLY #39759 /* ~"C'est une histoire… intéressante, Nordom."~ */ GOTO 11
END

IF ~~ THEN BEGIN 11 // from: 10.1
  SAY #39580 /* ~"C'est ce qui s'est passé. À quelques enjolivements près, évidemment."~ */
  IF ~  NearbyDialog("DMorte")
~ THEN EXTERN ~DMORTE~ 419
  IF ~  !NearbyDialog("DMorte")
~ THEN REPLY #39760 /* ~"Des enjolivements ?"~ */ GOTO 12
END

IF ~~ THEN BEGIN 12 // from: 11.1
  SAY #39582 /* ~"J'ai trouvé que le retour à la Source était une image parfaite pour finir l'histoire."~ */
  IF ~~ THEN EXTERN ~DYVES~ 59
END

IF ~~ THEN BEGIN 13 // from:
  SAY #50712 /* ~"Dois-je en conclure que mes services sont à vendre ? Un transfert d'autorité entre toi et Vrischika reposant sur un échange d'argent ?"~ */
  IF ~~ THEN REPLY #50713 /* ~"Oui, c'est exact. Tu le prends, Vrischika ?"~ */ EXTERN ~DVRISCH~ 49
  IF ~~ THEN REPLY #50714 /* ~"Oui, mais laisse tomber. J'avais une autre question, Vrischika…"~ */ EXTERN ~DVRISCH~ 7
  IF ~~ THEN REPLY #50715 /* ~"Oui… Mais j'ai changé d'avis. Allons-y, Nordom."~ */ EXIT
END

IF ~~ THEN BEGIN 14 // from:
  SAY #50716 /* ~"Nordom s'apprête à prendre Vrischika - alu-fiélonne, importatrice, propriétaire du magasin de brocante - comme autorité principale."~ */
  IF ~~ THEN DO ~DropInventory()
LeaveParty()
~ EXTERN ~DVRISCH~ 57
END

IF ~~ THEN BEGIN 15 // from:
  SAY #52580 /* ~"Requête: qu'est-ce que Nordom définit/choisit/ ? Définir : CHOIX : l'acte de choisir, sélection ; le droit ou la possibilité de choi-"~ */
  IF ~  NearbyDialog("DIgnus")
~ THEN REPLY #52581 /* ~"Nordom, arrête ça. Ça se passe entre Ravel et moi. Écoute, Ravel -"~ */ DO ~SetGlobal("Ravel_Ignus","GLOBAL",2)
~ EXTERN ~DRAVEL~ 64
  IF ~  !NearbyDialog("DIgnus")
NearbyDialog("DMorte")
~ THEN REPLY #52582 /* ~"Nordom, arrête ça. Ça se passe entre Ravel et moi. Écoute, Ravel -"~ */ DO ~SetGlobal("Ravel_Morte","GLOBAL",2)
~ EXTERN ~DRAVEL~ 65
  IF ~  !NearbyDialog("DIgnus")
!NearbyDialog("DMorte")
NearbyDialog("Dgrace")
~ THEN REPLY #52583 /* ~"Nordom, arrête ça. Ça se passe entre Ravel et moi. Écoute, Ravel -"~ */ DO ~SetGlobal("Ravel_Grace","GLOBAL",2)
~ EXTERN ~DRAVEL~ 66
  IF ~  !NearbyDialog("Dignus")
!NearbyDialog("DMorte")
!NearbyDialog("DGrace")
NearbyDialog("DAnnah")
~ THEN REPLY #52584 /* ~"Nordom, arrête ça. Ça se passe entre Ravel et moi. Écoute, Ravel -"~ */ DO ~SetGlobal("Ravel_Annah","GLOBAL",2)
~ EXTERN ~DRAVEL~ 67
  IF ~  !NearbyDialog("Dignus")
!NearbyDialog("DMorte")
!NearbyDialog("DGrace")
!NearbyDialog("DAnnah")
~ THEN REPLY #52585 /* ~"Nordom, arrête ça. Ça se passe entre Ravel et moi. Écoute, Ravel -"~ */ EXTERN ~DRAVEL~ 68
END

IF ~~ THEN BEGIN 16 // from:
  SAY #54847 /* ~"Requête : Reçue. Réponse : Nordom est fin prêt. Il attend de traîner d'autres directives."~ */
  IF ~  NearbyDialog("DVhail")
InParty("Vhail")
~ THEN REPLY #54848 /* ~"En fait, c'est 'traiter'… peu importe. Vhailor ?"~ */ EXTERN ~DVHAIL~ 15
  IF ~  !InParty("Vhail")
NearbyDialog("Dignus")
InParty("Ignus")
~ THEN REPLY #54849 /* ~"En fait, c'est 'traiter'… peu importe. Ignus ?"~ */ EXTERN ~DIGNUS~ 19
  IF ~  !InParty("Vhail")
!InParty("ignus")
NearbyDialog("DGrace")
InParty("Grace")
~ THEN REPLY #54850 /* ~"En fait, c'est 'traiter'… peu importe. Tombée-en-Disgrâce ?"~ */ EXTERN ~DGRACE~ 168
  IF ~  !InParty("Vhail")
!InParty("ignus")
!InParty("Grace")
NearbyDialog("DAnnah")
InParty("Annah")
~ THEN REPLY #54851 /* ~"En fait, c'est 'traiter'… peu importe. Annah ?"~ */ EXTERN ~DANNAH~ 272
  IF ~  !InParty("Vhail")
!InParty("ignus")
!InParty("Grace")
!InParty("annah")
NearbyDialog("DDakkon")
GlobalLT("BD_DAKKON_MORALE","GLOBAL",6)
InParty("Dakkon")
~ THEN REPLY #54852 /* ~"En fait, c'est 'traiter'… peu importe. Dak'kon ?"~ */ EXTERN ~DDAKKON~ 173
  IF ~  !InParty("Vhail")
!InParty("ignus")
!InParty("grace")
!InParty("annah")
NearbyDialog("DDakkon")
GlobalGT("BD_DAKKON_MORALE","GLOBAL",5)
InParty("Dakkon")
~ THEN REPLY #54853 /* ~"En fait, c'est 'traiter'… peu importe. Dak'kon ?"~ */ EXTERN ~DDAKKON~ 172
  IF ~  !InParty("vhail")
!InParty("ignus")
!InParty("grace")
!InParty("annah")
!InParty("dakkon")
NearbyDialog("Dmorte")
InParty("Morte")
Global("Morte_Quip_Regret_Portal","GLOBAL",0)
~ THEN REPLY #54854 /* ~"En fait, c'est 'traiter'… peu importe. Morte ?"~ */ DO ~SetGlobal("Morte_Quip_Regret_Portal","GLOBAL",1)
~ EXTERN ~DMORTE~ 536
  IF ~  !InParty("Vhail")
!InParty("ignus")
!InParty("Grace")
!InParty("annah")
!InParty("Dakkon")
NearbyDialog("DMorte")
InParty("Morte")
GlobalGT("Morte_Quip_Regret_Portal","GLOBAL",0)
~ THEN REPLY #54855 /* ~"En fait, c'est 'traiter'… peu importe. Morte ?"~ */ EXTERN ~DMORTE~ 534
  IF ~  !NearbyDialog("DMorte")
~ THEN REPLY #54856 /* ~"Très bien… voyons ce qui se trouve de l'autre côté de ce portail."~ */ DO ~SetPortalCursor("Fort_Port",PORTAL_CURSOR_VISIBLE,TRUE)
SetPortalCursor("Fort_Port",PORTAL_ENABLED,TRUE)
~ EXIT
  IF ~  NearbyDialog("DMorte")
!InParty("Morte")
Global("Morte_Quip_Regret_Portal","GLOBAL",0)
~ THEN REPLY #54857 /* ~"Très bien… voyons ce qui se trouve de l'autre côté de ce portail."~ */ DO ~SetGlobal("Morte_Quip_Regret_Portal","GLOBAL",1)
~ EXTERN ~DMORTE~ 538
  IF ~  NearbyDialog("DMorte")
!InParty("Morte")
GlobalGT("Morte_Quip_Regret_Portal","GLOBAL",0)
~ THEN REPLY #54858 /* ~"Très bien… voyons ce qui se trouve de l'autre côté de ce portail."~ */ DO ~SetPortalCursor("Fort_Port",PORTAL_CURSOR_VISIBLE,TRUE)
SetPortalCursor("Fort_Port",PORTAL_ENABLED,TRUE)
~ EXIT
END

IF ~~ THEN BEGIN 17 // from:
  SAY #55092 /* ~"Pilier des Crânes : connu pour être composé des têtes vivantes de mortels ayant menti et dont les mensonges ont entraîné la mort d'autres mortels. Le Pilier sert de dépôt du savoir. Le Pilier exige une rétribution en échange du dit savoir… pas moins de 97 % du temps. En général, les demandes du Pilier sont d'un niveau que le commun des mortels taxerait de "très élevé". La logique voudrait donc qu'on n'adresse pas de requête au Pilier à moins d'une nécessité pareillement "très élevée".~ */
  IF ~~ THEN EXTERN ~DPILLAR~ 14
END

IF ~~ THEN BEGIN 18 // from: 0.0
  SAY #55099 /* ~Le cube émet un *chrrrup* et un *clic-clic-clic* en clignant des yeux d'un air affolé. Yeux écarquillés, il pivote vers toi, lève brusquement ses deux mains libres comme pour se rendre… Mais ses deux arbalètes ont tourné dans ses mains et sont braquées sur toi. Avec une étrange indifférence, tu remarques incidemment que les jointures de la créature ressemblent à une série de rouages et d'engrenages vrombissant.~ */
  IF ~  NearbyDialog("Dmorte")
~ THEN EXTERN ~DMORTE~ 571
  IF ~  !NearbyDialog("Dmorte")
~ THEN REPLY #55102 /* ~"Euh…"~ */ GOTO 19
END

IF ~~ THEN BEGIN 19 // from: 18.1
  SAY #55105 /* ~Il te regarde fixement, puis son corps cubique pivote… Il te tourne le dos et commence à tressauter comme s'il détalait… Pourtant, ses pieds restent fermement plantés dans ta direction. Durant cette "course", les engrenages des arbalètes se mettent à *cliqueter* et à *vibrer* dans les mains de la créature.~ */
  IF ~~ THEN REPLY #55106 /* ~"Euh… tu sais que t'es à l'envers ?"~ */ GOTO 20
END

IF ~~ THEN BEGIN 20 // from: 19.0
  SAY #55107 /* ~La créature arrête soudain son tressautement et pivote vers toi. "Modron(e) à l'envers = 'Nordom' ?" La voix du cube sort tel un gazouillis métallique, comme si chaque parole, mue par un ressort, atterrissait… ailleurs. Sa bouche forme une bizarre ellipse oblique, que tu supposes être un sourire. "Mille fois merci ! Mille mercis !"~ */
  IF ~~ THEN REPLY #55108 /* ~"Euh… pardon ?"~ */ DO ~SetGlobal("Nordom","GLOBAL",1)
~ JOURNAL #55109 /* ~J'ai appris le danger des noms. Alors que j'errais à Rubikon, j'ai rencontré un étrange modrone. Quand je lui ai parlé, il a cru que je le baptisais. Son nouveau nom est 'Nordom', et il a l'air plutôt dérangé… pour un modrone, bien sûr.~ */ GOTO 22
END

IF ~~ THEN BEGIN 21 // from:
  SAY #55110 /* ~"Modron(e) à l'envers  = 'Nordom' ?" La voix du cube sort tel un gazouillis métallique, comme si chaque parole, mue par un ressort, atterrissait… ailleurs. Sa bouche forme une bizarre ellipse oblique, que tu supposes être un sourire. "Mille fois merci ! Mille mercis !"~ */
  IF ~~ THEN REPLY #55111 /* ~"Euh… pardon ?"~ */ DO ~SetGlobal("Nordom","GLOBAL",1)
~ JOURNAL #55109 /* ~J'ai appris le danger des noms. Alors que j'errais à Rubikon, j'ai rencontré un étrange modrone. Quand je lui ai parlé, il a cru que je le baptisais. Son nouveau nom est 'Nordom', et il a l'air plutôt dérangé… pour un modrone, bien sûr.~ */ GOTO 22
END

IF ~~ THEN BEGIN 22 // from: 20.0 21.0
  SAY #55112 /* ~"Pas de 'pardon' qui tienne. Mille fois merci ! Identification de soi compropice par doute + réflexion + analyse." Le cube émet encore un *chrrrup* et cligne un œil en faisant un *clic*… Au bout d'un moment, l'autre œil en fait autant, comme pour ne pas être en reste.~ */
  IF ~~ THEN REPLY #55113 /* ~"Je ne comprends toujours rien."~ */ GOTO 23
  IF ~  CheckStatGT(Protagonist,15,INT)
~ THEN REPLY #55114 /* ~"Tu me remercies… de t'avoir identifié ? N'es-tu pas un modrone ?"~ */ GOTO 23
END

IF ~~ THEN BEGIN 23 // from: 22.0 22.1
  SAY #55115 /* ~Les traits du cube se stabilisent et sa bouche s'aplatit en une ligne horizontale. "L'indemnisation de cette unité (a été) compromise. Sujet : unité du destinataire indemnisée en tant que 'Nordom'. Mille fois merci pour avoir assuré l'indemnisation de Nordom."~ */
  IF ~~ THEN REPLY #55116 /* ~"Oh, je t'en prie, ce n'est rien."~ */ GOTO 24
END

IF ~~ THEN BEGIN 24 // from: 23.0
  SAY #55117 /* ~Nordom cligne des yeux une fois, deux fois, trois fois en émettant un *clic* ; chaque fois, la tache noire au centre des yeux se dilate… La troisième fois, elle a atteint la taille d'un gros pois. "Ré-œilli-sation atteinte : Nordom sait nom du destinataire. Indemnise-toi."~ */
  IF ~~ THEN REPLY #55118 /* ~"Tu veux dire 'identifier', c'est ça ?"~ */ GOTO 25
  IF ~~ THEN REPLY #55119 /* ~Vérité : "Je n'ai *pas* vraiment de nom, Nordom."~ */ DO ~IncrementGlobalOnceEx("GLOBALLawful_Nordom_1","GLOBALLaw",1)
SetAnimState("Nordom",ANIM_MIMESTAND)
~ GOTO 26
  IF ~~ THEN REPLY #55120 /* ~Mensonge : "Adahn. Je m'appelle Adahn."~ */ DO ~IncrementGlobal("Adahn","GLOBAL",1)
IncrementGlobalOnceEx("GLOBALChaotic_Nordom_1","GLOBALLaw",-1)
SetAnimState("Nordom",ANIM_MIMESTAND)
~ GOTO 33
END

IF ~~ THEN BEGIN 25 // from: 24.0
  SAY #55121 /* ~"Affirmatif. Indent-ification, requise. Requête : Identifier identité pour Nordom."~ */
  IF ~~ THEN REPLY #55122 /* ~Vérité : "Je n'ai *pas* vraiment de nom, Nordom."~ */ DO ~IncrementGlobalOnceEx("GLOBALLawful_Nordom_1","GLOBALLaw",1)
SetAnimState("Nordom",ANIM_MIMESTAND)
~ GOTO 26
  IF ~~ THEN REPLY #55123 /* ~Mensonge : "Adahn. Je m'appelle Adahn."~ */ DO ~IncrementGlobal("Adahn","GLOBAL",1)
IncrementGlobalOnceEx("GLOBALChaotic_Nordom_1","GLOBALLaw",-1)
SetAnimState("Nordom",ANIM_MIMESTAND)
~ GOTO 33
  IF ~~ THEN REPLY #55124 /* ~"Nordom, je ne veux pas m'identifier. En fait, j'aimerais mettre fin à cette conversation et m'occuper de mes oignons."~ */ DO ~SetAnimState("Nordom",ANIM_MIMESTANDFIDGET1)
~ GOTO 35
END

IF ~~ THEN BEGIN 26 // from: 24.1 25.0
  SAY #55125 /* ~Les yeux de Nordom s'agrandissent ; le diamètre des 'pupilles' redevient normal. Les yeux clignent une fois avec un *clic*… mais leurs volets métalliques restent clos. Puis, ils se mettent à cliqueter, comme s'ils étaient collés.~ */
  IF ~~ THEN REPLY #55126 /* ~"Euh… Nordom. Tu peux ouvrir les yeux maintenant."~ */ GOTO 27
END

IF ~~ THEN BEGIN 27 // from: 26.0
  SAY #55127 /* ~Nouveau *clic*… les yeux de Nordom s'ouvrent. "Ne pas fermer les yeux : engagé-gé dans Action de Clarification de Sujet (Non identifié, Sans nom). Formulation… soumission de la demande : es-tu perdu ?"~ */
  IF ~  CheckStatLT(Protagonist,13,WIS)
CheckStatLT(Protagonist,13,INT)
~ THEN REPLY #55128 /* ~"Perdu ? Qu'est-ce que tu veux dire ?"~ */ GOTO 29
  IF ~  CheckStatGT(Protagonist,12,INT)
CheckStatLT(Protagonist,13,WIS)
~ THEN REPLY #55129 /* ~"Perdu ? Qu'est-ce que tu veux dire ?"~ */ DO ~SetAnimState("Nordom",ANIM_MIMESTAND)
~ GOTO 28
  IF ~  CheckStatGT(Protagonist,12,WIS)
~ THEN REPLY #55130 /* ~"Perdu ? Qu'est-ce que tu veux dire ?"~ */ DO ~SetAnimState("Nordom",ANIM_MIMESTAND)
~ GOTO 28
END

IF ~~ THEN BEGIN 28 // from: 27.1 27.2
  SAY #55131 /* ~Lorsque Nordom finit de gazouiller sa demande et prononce le mot 'perdu', tu sens un curieux frisson te parcourir l'arrière du crâne… et surgissent en toi deux certitudes : ce n'est pas la première fois que tu entends cela, et ce que Nordom *va* répondre à ta prochaine question est important.~ */
  IF ~~ THEN REPLY #55132 /* ~"Qu'entends-tu, Nordom, par 'perdu' ?"~ */ GOTO 29
END

IF ~~ THEN BEGIN 29 // from: 27.0 28.0
  SAY #55133 /* ~"Absence de nom = Absence d'identité = Absence d'objectif = Absence de place dans le multivers = État nul = Perte. Nordom existait en État, Nul, jusqu'à ce que Sujet (Non identifié, Sans nom) associe identité à Nordom. Identité nulle, Objectif nul, Place nulle égalent 'Perte'."~ */
  IF ~~ THEN REPLY #55134 /* ~"Oh, je suppose que j'ai eu un nom, mais je l'ai oublié."~ */ GOTO 30
END

IF ~~ THEN BEGIN 30 // from: 29.0
  SAY #55135 /* ~"Formulation de nouvelle demande." *Tkkk-tkkk-tkkk* font les yeux de Nordom en clignant rapidement trois fois ; on croirait un marteau qui tape sur une feuille de zinc. "Explique à Nordom pourquoi toi faire cette action : OUBLIER."~ */
  IF ~~ THEN REPLY #55136 /* ~"C'est arrivé comme ça… Je l'ai pas fait exprès."~ */ GOTO 31
  IF ~~ THEN REPLY #55137 /* ~"Je crois que c'est dans ma nature d'oublier les choses."~ */ GOTO 31
  IF ~~ THEN REPLY #55138 /* ~"Je pense que c'est un effet secondaire de ma… condition."~ */ GOTO 31
END

IF ~~ THEN BEGIN 31 // from: 30.0 30.1 30.2
  SAY #55139 /* ~*Vrrr*… les volets métalliques se ferment sur les yeux de Nordom, puis, yeux clos, il fait un bruit de ferraille. Nouveau *clic* et Nordom rouvre les yeux en émettant un *chrrrup*. "Demande : mémoire défectueuse ?"~ */
  IF ~~ THEN REPLY #55140 /* ~"Oui, en quelque sorte."~ */ GOTO 32
END

IF ~~ THEN BEGIN 32 // from: 31.0
  SAY #55141 /* ~"Action préconditionnelle pour clarifier demande : l'espace mémoire de Nordom n'a pas encore atteint sa capacité. Demande/Action : si réponse 'Oui' émise par Sujet (Non identifié, Sans nom), Nordom peut se remémorer à ta place."~ */
  IF ~~ THEN REPLY #55142 /* ~"Certainement, Nordom, fais comme chez toi… de toute façon, faut vraiment que je retourne à mes affaires."~ */ DO ~SetAnimState("Nordom",ANIM_MIMESTANDFIDGET1)
~ GOTO 35
  IF ~~ THEN REPLY #55143 /* ~"Merci de ton offre, Nordom. Fais comme tu le sens. Écoute, faut vraiment que j'y aille."~ */ DO ~SetAnimState("Nordom",ANIM_MIMESTANDFIDGET1)
~ GOTO 35
END

IF ~~ THEN BEGIN 33 // from: 24.2 25.1
  SAY #55144 /* ~Les yeux de Nordom s'agrandissent ; le diamètre des 'pupilles' redevient normal. Les yeux clignent une fois avec un *clic*… mais leurs volets métalliques restent clos.~ */
  IF ~~ THEN REPLY #55145 /* ~"Euh… Nordom. Tu peux ouvrir les yeux maintenant."~ */ GOTO 34
END

IF ~~ THEN BEGIN 34 // from: 33.0
  SAY #55146 /* ~Nouveau *clic*… les yeux de Nordom s'ouvrent. "Ne pas fermer les yeux : Action de Clarification pour Adahn. Classement des informations, Remémorisation. Adahn : nom catalogué. Nordom n'oubliera pas identité, sensible : Adahn."~ */
  IF ~~ THEN REPLY #55147 /* ~"Super. Écoute, Nordom, c'était super mais faut que j'y aille."~ */ DO ~SetAnimState("Nordom",ANIM_MIMESTANDFIDGET1)
~ GOTO 35
END

IF ~~ THEN BEGIN 35 // from: 25.2 32.0 32.1 34.0
  SAY #55148 /* ~Série brusque et rapide de *cliquetis* et de *vibrations* émise par les arbalètes que tient Nordom. Ses yeux roulent et se recadrent sur les arbalètes ; il tient celle de droite tout près de lui, comme s'il l'écoutait.~ */
  IF ~~ THEN REPLY #55149 /* ~"Tout va bien ?"~ */ GOTO 36
END

IF ~~ THEN BEGIN 36 // from: 35.0
  SAY #55150 /* ~Un œil de Nordom reste fixé sur l'arbalète qui *cliquète* légèrement. L'autre œil est rivé sur toi. "Demande : peuvent-elles t'accompagner dans ton fromage ?"~ */
  IF ~~ THEN REPLY #55157 /* ~"Euh, tu veux sans doute dire 'voyage' ?"~ */ GOTO 37
  IF ~~ THEN REPLY #55164 /* ~"Tu sais, je crois VRAIMENT que ce serait pas une bonne idée. Non, pas maintenant… Nordom."~ */ GOTO 38
  IF ~  NumInParty(6)
~ THEN REPLY #55165 /* ~"Bon … d'accord. Mais, j'aurai peut-être à déplacer quelques personnes."~ */ GOTO 39
  IF ~  NumInPartyLT(6)
~ THEN REPLY #55166 /* ~"Certainement. On peut toujours avoir besoin de… bras supplémentaires."~ */ DO ~SetGlobal("Nordom","GLOBAL",2)
~ GOTO 40
END

IF ~~ THEN BEGIN 37 // from: 36.0
  SAY #55167 /* ~"Tout à fait. Voyage, affirmé. Permission accordée ?"~ */
  IF ~~ THEN REPLY #55168 /* ~"Tu sais, je crois VRAIMENT que ce serait pas une bonne idée. Non, pas maintenant… Nordom."~ */ GOTO 38
  IF ~  NumInParty(6)
~ THEN REPLY #55169 /* ~"Bon … d'accord. Mais, j'aurai peut-être à déplacer quelques personnes."~ */ GOTO 40
  IF ~  NumInPartyLT(6)
~ THEN REPLY #55170 /* ~"Certainement. On peut toujours avoir besoin de… bras supplémentaires."~ */ DO ~SetGlobal("Nordom","GLOBAL",2)
~ GOTO 40
END

IF ~~ THEN BEGIN 38 // from: 36.1 37.0
  SAY #55171 /* ~Nordom te dévisage les yeux grands ouverts. Son arbalète de droite fait un *cliquetis*, puis il cligne des yeux. "Demande annexe : s'il te plaît ?"~ */
  IF ~~ THEN REPLY #55172 /* ~"Pas cette fois, Nordom."~ */ GOTO 39
  IF ~  NumInParty(6)
~ THEN REPLY #55173 /* ~"Bon … d'accord. Mais, j'aurai peut-être à déplacer quelques personnes."~ */ GOTO 40
  IF ~  NumInPartyLT(6)
~ THEN REPLY #55174 /* ~"Bon… d'accord. On peut toujours avoir besoin de… bras supplémentaires."~ */ DO ~SetGlobal("Nordom","GLOBAL",2)
~ GOTO 40
END

IF ~~ THEN BEGIN 39 // from: 36.2 38.0
  SAY #55175 /* ~La bouche de Nordom s'abaisse. "Réponse à la demande : bien reçu. Nordom persistera dans l'abstinence d'une plus large communauté. Nordom continuera d'habiter dans ce polygone jusqu'à ce qu'on le retrouve."~ */
  IF ~~ THEN REPLY #55176 /* ~"Très bien. Je reviendrai peut-être, Nordom."~ */ EXIT
END

IF ~~ THEN BEGIN 40 // from: 36.3 37.1 37.2 38.1 38.2
  SAY #55177 /* ~La 'bouche' de Nordom forme à nouveau cette bizarre ellipse, et ses deux arbalètes se mettent à *cliqueter* et à *vibrer* violemment, à tel point qu'elles manquent de lui échapper des mains. "Mille fois merci ! Mille mercis ! Nordom et les arbalètes sont maintenant associés à une communauté plus large."~ */
  IF ~~ THEN REPLY #55178 /* ~"À ta place, je ne me réjouirais pas trop vite. Allez, sortons…"~ */ DO ~SetGlobal("Nordom","GLOBAL",2)
AddexperienceParty(36000)
ChangeAIScript("pcnordom",DEFAULT)
JoinPartyEx(TRUE)
~ EXIT
END

IF ~~ THEN BEGIN 41 // from:
  SAY #55179 /* ~Null_Node~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 42 // from:
  SAY #55180 /* ~Null_Node~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 43 // from: 9.3
  SAY #55181 /* ~"Attention, Nordom : requis !" Nordom pivote vers toi, se met à bégayer à mi-parcours, puis se réoriente dans un *cliquetis*. "Réponse à la demande : action exécutée sur les arbalètes ? Soumission de la requête pour clarification : zéro arbalètes présentes."~ */
  IF ~~ THEN REPLY #55182 /* ~"Mais t'as deux arbalètes sous ton nez, Nordom."~ */ GOTO 44
  IF ~~ THEN REPLY #55183 /* ~"Ah, vraiment ? Comment t'appelles ces deux choses cliquetantes que tu tiens ?"~ */ DO ~SetAnimState("Nordom",ANIM_MIMESTANCEFIDGET1)
~ GOTO 46
  IF ~~ THEN REPLY #55184 /* ~"Peu importe, Nordom. J'ai encore quelques questions à te poser…"~ */ GOTO 74
  IF ~~ THEN REPLY #55185 /* ~"Laisse tomber, Nordom. Perdons pas de temps."~ */ EXIT
END

IF ~~ THEN BEGIN 44 // from: 43.0
  SAY #55186 /* ~"Clarification : déclaration 'fallacieuse'. Nordom n'utilise pas d'arbalètes." Il bégaie un peu, puis brusquement, pointe les arbalètes sur toi… Pourtant, tu ne les as pas vues bouger. "Z-z-z-zéro arbalètes."~ */
  IF ~~ THEN REPLY #55189 /* ~"Pointe pas ces arbalètes sur moi."~ */ GOTO 45
  IF ~~ THEN REPLY #55190 /* ~"Nordom, tu *utilises* des arbalètes… t'en as DEUX dans les mains."~ */ GOTO 45
  IF ~~ THEN REPLY #55191 /* ~"Ah, vraiment ? Comment t'appelles ces deux choses cliquetantes que tu tiens ?"~ */ DO ~SetAnimState("Nordom",ANIM_MIMESTANCEFIDGET1)
~ GOTO 46
  IF ~~ THEN REPLY #55192 /* ~"Peu importe, Nordom. J'ai encore quelques questions à te poser…"~ */ GOTO 74
  IF ~~ THEN REPLY #55193 /* ~"Laisse tomber, Nordom. Perdons pas de temps."~ */ EXIT
END

IF ~~ THEN BEGIN 45 // from: 44.0 44.1
  SAY #55194 /* ~Tu clignes des yeux un instant… et les arbalètes pointent brusquement sur Nordom. Il ne paraît pas prendre garde à leurs mouvements car son regard reste fixé sur toi. "La contradiction n'entraîne pas la contraction. Zéro arbalètes."~ */
  IF ~~ THEN REPLY #55195 /* ~"Ah, vraiment ? Comment t'appelles ces deux choses cliquetantes que tu tiens ?"~ */ DO ~SetAnimState("Nordom",ANIM_MIMESTANCEFIDGET1)
~ GOTO 46
  IF ~~ THEN REPLY #55196 /* ~"Peu importe, Nordom. J'ai encore quelques questions à te poser…"~ */ GOTO 74
  IF ~~ THEN REPLY #55197 /* ~"Laisse tomber, Nordom. Perdons pas de temps."~ */ EXIT
END

IF ~~ THEN BEGIN 46 // from: 43.1 44.2 45.0
  SAY #55198 /* ~"Réponse : deux objets (CLIQUETANTS) tenus entre deux doigts opposables." Nordom lève ses doigts rivetés et brandit les deux arbalètes. Elles se mettent soudain à *cliqueter* et à *vibrer*, comme irritées. "Réponse : Objets = Esprits d'engrenage."~ */
  IF ~~ THEN REPLY #55199 /* ~"Esprits d'engrenage ? Qu'est-ce que tu veux dire ?"~ */ GOTO 47
  IF ~~ THEN REPLY #55200 /* ~"Peu importe, Nordom. J'ai encore quelques questions à te poser…"~ */ GOTO 74
  IF ~~ THEN REPLY #55201 /* ~"Laisse tomber, Nordom. Perdons pas de temps."~ */ EXIT
END

IF ~~ THEN BEGIN 47 // from: 46.0
  SAY #55202 /* ~"Demande : définir : Esprits d'engrenage. Réponse : Esprits d'engrenage."~ */
  IF ~  NearbyDialog("Dmorte")
~ THEN REPLY #55203 /* ~"Ah, ouais, mais c'est *quoi*, des esprits d'engrenage ?"~ */ EXTERN ~DMORTE~ 573
  IF ~  !NearbyDialog("Dmorte")
~ THEN REPLY #55204 /* ~"Ah, ouais, mais c'est *quoi*, des esprits d'engrenage ?"~ */ GOTO 48
END

IF ~~ THEN BEGIN 48 // from: 47.1
  SAY #55205 /* ~"Demande = Demande : définir = Définir : Esprits d'engrenage. Réponse = Esprits d'engrenage."~ */
  IF ~~ THEN REPLY #55206 /* ~"Peu importe, Nordom. J'ai encore quelques questions à te poser…"~ */ GOTO 74
  IF ~~ THEN REPLY #55207 /* ~"Laisse tomber, Nordom. Perdons pas de temps."~ */ EXIT
END

IF ~~ THEN BEGIN 49 // from: 9.4 74.3
  SAY #55208 /* ~Nordom émet un *chrrrup*. "Demande requiert soumission de la chronologie : Nordom soumettra-t-il la chronologie ?"~ */
  IF ~~ THEN REPLY #55209 /* ~"Oui, j'aimerais bien savoir."~ */ DO ~SetGlobal("Know_Mechanus","GLOBAL",1)
~ GOTO 50
  IF ~~ THEN REPLY #55210 /* ~"Peu importe, Nordom. J'ai encore quelques questions à te poser…"~ */ GOTO 74
  IF ~~ THEN REPLY #55211 /* ~"Laisse tomber, Nordom. Perdons pas de temps."~ */ EXIT
END

IF ~~ THEN BEGIN 50 // from: 49.0
  SAY #55212 /* ~"Ordres reçus sur initiative du projet Rubikon : départ du plan/Méchanus. Étape un : arrivée à destination : plan/Limbes. Étape deux : paramètres dictés par Supérieur/Directeur créatif : façonner matière du plan (Limbes) pour tester hypothèse. Donjon de Rubikon construit."~ */
  IF ~~ THEN REPLY #55213 /* ~"Continue…"~ */ GOTO 51
  IF ~~ THEN REPLY #55214 /* ~"Attends, Nordom. C'est quoi, le plan de Méchanus ?"~ */ DO ~SetAnimState("Nordom",ANIM_MIMESTAND)
~ GOTO 64
  IF ~~ THEN REPLY #55215 /* ~"Peu importe, Nordom. J'ai encore quelques questions à te poser…"~ */ GOTO 74
  IF ~~ THEN REPLY #55216 /* ~"Laisse tomber, Nordom. Perdons pas de temps."~ */ EXIT
END

IF ~~ THEN BEGIN 51 // from: 50.0
  SAY #55217 /* ~"Supérieur/ - Directeur 'Création' : perdu dans essai sur le terrain. Chronologie perturbée à la réalisation étape deux ; (perturbation) étape trois, hors directives du projet."~ */
  IF ~~ THEN REPLY #55218 /* ~"Que s'est-il passé pendant cette troisième étape ?"~ */ GOTO 60
  IF ~~ THEN REPLY #55219 /* ~"Ça consistait en quoi, cet essai sur le terrain ?"~ */ GOTO 52
  IF ~~ THEN REPLY #55220 /* ~"Peu importe, Nordom. J'ai encore quelques questions à te poser…"~ */ GOTO 74
  IF ~~ THEN REPLY #55221 /* ~"Laisse tomber, Nordom. Perdons pas de temps."~ */ EXIT
END

IF ~~ THEN BEGIN 52 // from: 51.1
  SAY #55222 /* ~"Supérieur/ - Directeur 'Création' - essai sur le terrain : périmètres de recherche de Rubikon (Difficile). Construction de donjon à déterminer : divergences. Nombreuses déviations détectées : erreurs considérables." Nordom pousse une sourde plainte et ferme les yeux en émettant un *clic.* "Directeur 'Création' pas revenu d'essai sur le terrain."~ */
  IF ~~ THEN REPLY #55223 /* ~"Je vois. Que s'est-il passé pendant cette troisième étape dont tu parles ?"~ */ GOTO 60
  IF ~  Global("Know_Director_Truth","GLOBAL",2)
~ THEN REPLY #55224 /* ~"Qu'est-ce qui lui est arrivé ?"~ */ GOTO 55
  IF ~  Global("Know_Director_Truth","GLOBAL",1)
~ THEN REPLY #55225 /* ~"Il paraît que le Magicien de Rubikon a désintégré le Directeur créatif."~ */ GOTO 56
  IF ~  Global("Know_Director_Truth","GLOBAL",0)
~ THEN REPLY #55226 /* ~"Qu'est-ce qui lui est arrivé ?"~ */ DO ~SetAnimState("Nordom",ANIM_MIMESTANDFIDGET1)
~ GOTO 53
  IF ~~ THEN REPLY #55227 /* ~"Peu importe, Nordom. J'ai encore quelques questions à te poser…"~ */ GOTO 74
  IF ~~ THEN REPLY #55228 /* ~"Laisse tomber, Nordom. Perdons pas de temps."~ */ EXIT
END

IF ~~ THEN BEGIN 53 // from: 52.3
  SAY #55229 /* ~L'arbalète de gauche émet soudain un gros *cliquetis* … Nordom l'approche de lui, comme pour mieux l'entendre. Le *cliquetis* continue un peu, puis est brusquement interrompu par une longue *vibration* sonore venue de l'arbalète de droite.~ */
  IF ~~ THEN REPLY #55230 /* ~"Euh, Nordom ? T'as une idée de ce qui lui est arrivé ?"~ */ GOTO 54
  IF ~~ THEN REPLY #55231 /* ~"Laisse tomber… Que s'est-il passé pendant la troisième étape du projet ?"~ */ GOTO 60
  IF ~~ THEN REPLY #55232 /* ~"Peu importe, Nordom. J'ai encore quelques questions à te poser…"~ */ GOTO 74
  IF ~~ THEN REPLY #55233 /* ~"Laisse tomber, Nordom. Perdons pas de temps."~ */ EXIT
END

IF ~~ THEN BEGIN 54 // from: 53.0
  SAY #55234 /* ~"Supposition, Pas de preuves : Supérieur a relevé une erreur." Les yeux de Nordom *cliquètent*, comme pour y voir plus clair. "Hypothèse : possibilité d'erreur importante et imprévue."~ */
  IF ~~ THEN REPLY #55235 /* ~"Sans doute est-ce possible. Que s'est-il passé pendant la troisième étape du projet ?"~ */ GOTO 60
  IF ~~ THEN REPLY #55236 /* ~"Peu importe, Nordom. J'ai encore quelques questions à te poser…"~ */ GOTO 74
  IF ~~ THEN REPLY #55237 /* ~"Laisse tomber, Nordom. Perdons pas de temps."~ */ EXIT
END

IF ~~ THEN BEGIN 55 // from: 52.1
  SAY #55244 /* ~"Citation/Magicien de Rubikon/Déclaration de liberté mégalomaniaque : Directeur créatif a relevé une erreur : Magicien de Rubikon. Hypothèse : Directeur n'a pas pris en compte la force de l'erreur. A tenté de corriger l'anomalie dans Magicien de Rubikon. Résultat : Directeur = annulé."~ */
  IF ~~ THEN REPLY #55245 /* ~"Tu sais, Nordom, Rubikon a toujours un directeur… Moi."~ */ DO ~SetAnimState("Nordom",ANIM_MIMESTAND)
~ GOTO 58
  IF ~~ THEN REPLY #55246 /* ~"C'est ce qu'a prétendu le magicien… Alors, après qu'il a été 'annulé', que s'est-il passé pendant la troisième étape du projet ?"~ */ GOTO 60
  IF ~~ THEN REPLY #55247 /* ~"Peu importe, Nordom. J'ai encore quelques questions à te poser…"~ */ GOTO 74
  IF ~~ THEN REPLY #55248 /* ~"Laisse tomber, Nordom. Perdons pas de temps."~ */ EXIT
END

IF ~~ THEN BEGIN 56 // from: 52.2
  SAY #55249 /* ~"Supposition, Pas de preuves = Maintenant confirmé : Supérieur a relevé une erreur." Les yeux de Nordom *cliquètent*, comme pour y voir plus clair. "Demande : l'erreur était-elle importante et imprévue ?"~ */
  IF ~~ THEN REPLY #55250 /* ~"Sans doute. Je ne crois pas qu'il ait eu beaucoup de mal à éliminer le directeur."~ */ DO ~SetGlobal("Know_Director_Truth","GLOBAL",2)
~ GOTO 57
  IF ~~ THEN REPLY #55251 /* ~"On discutera un autre jour… Parle-moi de la troisième étape du projet."~ */ GOTO 60
  IF ~~ THEN REPLY #55252 /* ~"Je te dirai ça plus tard, Nordom. Pour l'instant, j'ai encore quelques questions à te poser…"~ */ GOTO 74
  IF ~~ THEN REPLY #55253 /* ~"Laisse tomber, Nordom. Perdons pas de temps."~ */ EXIT
END

IF ~~ THEN BEGIN 57 // from: 56.0
  SAY #55254 /* ~"Traitement nouvelles informations…" Nordom te regarde en silence avec insistance. Puis, on entend monter de ses 'entrailles' un grincement sourd d'engrenages. Enfin, il émet un *chrrrup*. "Sort du Directeur créatif confirmé. Directeur = annulé."~ */
  IF ~~ THEN REPLY #55255 /* ~Eh bien, tu sais Nordom, je suis le nouveau Directeur créatif de Rubikon."~ */ DO ~SetAnimState("Nordom",ANIM_MIMESTAND)
~ GOTO 58
  IF ~~ THEN REPLY #55256 /* ~"Ravi d'avoir pu t'apporter mes lumières, Nordom. Bon, j'ai encore quelques questions à te poser…"~ */ GOTO 74
  IF ~~ THEN REPLY #55257 /* ~"Laisse tomber, Nordom. Perdons pas de temps."~ */ EXIT
END

IF ~~ THEN BEGIN 58 // from: 55.0 57.0
  SAY #55258 /* ~Nordom te regarde en silence avec insistance, puis un lent *vrrrr* monte de ses 'entrailles' et il *CLIQUETTE*. Tu as comme l'impression que quelque chose s'est enclenché.~ */
  IF ~  GlobalGT("Nordom_Self_Truth","GLOBAL",0)
~ THEN REPLY #55259 /* ~"Euh… ça va, Nordom ?"~ */ DO ~AddexperienceParty(36000)
PermanentStatChange("Nordom",INT,RAISE,1)
PermanentStatChange("Nordom",DEX,RAISE,1)
SetGlobal("Know_Director_Truth","GLOBAL",3)
~ JOURNAL #55261 /* ~L'étrange incident stabilisateur s'est reproduit avec Nordom, comme quand je lui ai dit que le fait d'être séparé de la Source avait peut-être entraîné son changement de perspective. Cette fois-ci, quand je lui ai annoncé que j'étais le nouveau Directeur de Création de Rubikon, il est devenu encore plus stable. Peut-être le fait de lui proposer une nouvelle hiérarchie l'aide-t-il à rester plus 'concentré'. À moins que la perte du directeur ne l'ai plus secoué que je ne le pensais…~ */ GOTO 59
  IF ~  Global("Nordom_Self_Truth","GLOBAL",0)
~ THEN REPLY #55260 /* ~"Euh… ça va, Nordom ?"~ */ DO ~AddexperienceParty(36000)
PermanentStatChange("Nordom",INT,RAISE,1)
PermanentStatChange("Nordom",DEX,RAISE,1)
SetGlobal("Know_Director_Truth","GLOBAL",3)
~ JOURNAL #55262 /* ~Un étrange phénomène s'est produit quand j'ai dit à Nordom que j'étais le nouveau Directeur de Création de Rubikon ; d'un seul coup, il a eu l'air de devenir plus *stable*. Bizarre. Peut-être le fait de lui proposer une nouvelle hiérarchie l'aide-t-il à rester plus 'concentré'. À moins que la perte du directeur ne l'ai plus secoué que je ne le pensais…~ */ GOTO 59
END

IF ~~ THEN BEGIN 59 // from: 58.0 58.1
  SAY #55263 /* ~"Statut mis à jour : Directeur créatif maintenant hiérarchiquement réaffirmé." À ta surprise, la voix de Nordom a perdu de son gazouillis ; elle est plus égale, plus contrôlée qu'avant. L'effet est un peu déconcertant.~ */
  IF ~  CheckStatGT(Protagonist,15,INT)
CheckStatLT(Protagonist,18,WIS)
~ THEN REPLY #55264 /* ~"Hum. Nordom… simple curiosité, quelles sont exactement les fonctions du Directeur créatif ? Et dans quelle mesure dois-tu lui obéir ?"~ */ DO ~SetGlobal("Nordom_Order","GLOBAL",1)
~ GOTO 79
  IF ~  CheckStatGT(Protagonist,17,WIS)
~ THEN REPLY #55265 /* ~"Hum. Nordom… simple curiosité, quelles sont exactement les fonctions du Directeur créatif ? Et dans quelle mesure dois-tu lui obéir ?"~ */ DO ~SetGlobal("Nordom_Order","GLOBAL",1)
~ GOTO 79
  IF ~~ THEN REPLY #55266 /* ~"Je vois. Ravi d'avoir pu t'apporter mes lumières. Mais revenons-en aux étapes du projet… Qu'est-il arrivé pendant la troisième étape ?"~ */ GOTO 60
  IF ~~ THEN REPLY #55267 /* ~"Nordom, j'ai encore quelques questions à te poser…"~ */ GOTO 74
  IF ~~ THEN REPLY #55268 /* ~"Je crois qu'on a assez parlé. Perdons pas de temps."~ */ EXIT
END

IF ~~ THEN BEGIN 60 // from: 51.0 52.0 53.1 54.0 55.1 56.1 59.2
  SAY #55269 /* ~"Étape trois, sans précédent : étape réservée à Nordom. Hypothèse : absence de Directeur, plus exposition aux plans (chaos) ont fait dévier le point de vue de /Nordom/ de la norme."~ */
  IF ~~ THEN REPLY #55270 /* ~"'Dévier de la norme' ? Comment ça ?"~ */ GOTO 61
  IF ~~ THEN REPLY #55271 /* ~"Peu importe, Nordom. J'ai encore quelques questions à te poser…"~ */ GOTO 74
  IF ~~ THEN REPLY #55272 /* ~"Laisse tomber, Nordom. Perdons pas de temps."~ */ EXIT
END

IF ~~ THEN BEGIN 61 // from: 60.0
  SAY #55273 /* ~"Démarrage du cycle introspectif." Nordom fait *cliqueter* ses yeux clos et se met à *fredonner*. Au bout d'un moment, il rouvre les yeux en émettant un *clic*. "Évaluation introspective : perceptions devenues (1) plus petites et (B) plus bruyantes. Les ailes ont été remplacées par des bras : raison inconnue. Supposition/hypothèse : ailes mal-aimées ? Spéculation. Nordom fut un jour - QUELQU'UN - mais il est maintenant - QUELQU'UN ! - plus petit, plus bruyant ! Ce changement a compliqué le traitement des informations."~ */
  IF ~  CheckStatGT(Protagonist,15,INT)
Global("Nordom_Self_Truth","GLOBAL",0)
Global("Know_Source","GLOBAL",1)
~ THEN REPLY #55274 /* ~"Crois-tu que c'est ta séparation de la Source qui a fait changer ton 'point de vue'… de 'celui' plus calme, plus large à 'celui' plus petit et bruyant ?"~ */ DO ~SetGlobal("Nordom_Self_Truth","GLOBAL",1)
SetAnimState("Nordom",ANIM_MIMESTAND)
~ GOTO 62
  IF ~~ THEN REPLY #55275 /* ~"Je vois, Nordom. j'ai encore quelques questions à te poser…"~ */ GOTO 74
  IF ~~ THEN REPLY #55276 /* ~"J'en ai assez entendu, Nordom. Perdons pas de temps."~ */ EXIT
END

IF ~~ THEN BEGIN 62 // from: 61.0 106.0 107.0
  SAY #55277 /* ~Nordom te regarde en silence avec insistance, puis un lent *vrrrr* monte de ses 'entrailles' et il *CLIQUETTE*. Tu as comme l'impression que quelque chose s'est enclenché.~ */
  IF ~  Global("Know_Director_Truth","GLOBAL",3)
~ THEN REPLY #55278 /* ~"Nordom ?"~ */ DO ~AddexperienceParty(36000)
PermanentStatChange("Nordom",INT,RAISE,1)
PermanentStatChange("Nordom",CON,RAISE,1)
FullHeal("Nordom")
~ JOURNAL #55280 /* ~L'étrange incident stabilisateur s'est reproduit avec Nordom, comme quand je lui ai dit que le fait d'être séparé de la Source avait peut-être entraîné son changement de perspective. Cette fois-ci, quand je lui ai annoncé que j'étais le nouveau Directeur de Création de Rubikon, il est devenu encore plus stable. Peut-être le fait de l'aider à comprendre ce qui lui était arrivé lui permet-il de rester plus 'concentré'. Le fait d'être séparé de la Source l'avait peut-être plus secoué que je ne le pensais…~ */ GOTO 63
  IF ~  !Global("Know_Director_Truth","GLOBAL",3)
~ THEN REPLY #55279 /* ~"Nordom ?"~ */ DO ~AddexperienceParty(36000)
PermanentStatChange("Nordom",INT,RAISE,1)
PermanentStatChange("Nordom",CON,RAISE,1)
FullHeal("Nordom")
~ JOURNAL #55281 /* ~Quelque chose d'étrange s'est produit quand j'ai dit à Nordom que le fait d'être séparé de la Source expliquait sans doute son changement de perspective. D'un seul coup, il m'a semblé devenir plus stable. Peut-être le fait de l'aider à comprendre ce qui lui était arrivé lui permet-il de rester… disons, plus 'concentré'. Le fait d'être séparé de la Source l'avait peut-être plus secoué que je ne le pensais…~ */ GOTO 63
END

IF ~~ THEN BEGIN 63 // from: 62.0 62.1
  SAY #55282 /* ~"Statut mis à jour : drainage introspectif interrompu ; réacheminement des routines de spéculation vers la file d'attente principale." À ta surprise, la voix de Nordom a perdu de son gazouillis ; elle est plus égale, plus contrôlée qu'avant. L'effet est un peu déconcertant.~ */
  IF ~~ THEN REPLY #55283 /* ~"Nordom, j'ai encore quelques questions à te poser…"~ */ GOTO 74
  IF ~~ THEN REPLY #55284 /* ~"Je crois qu'on a assez parlé. Perdons pas de temps."~ */ EXIT
END

IF ~~ THEN BEGIN 64 // from: 9.6 50.1 74.5
  SAY #55285 /* ~Nordom s'immobilise. Lentement, les engrenages de ses coudes commencent à tourner en un mouvement synchronisé et hypnotique. "Définir/Demande : Méchanus. Plan de l'Ordre. Sens. La cause génère l'effet. Prévisible. Loi. Logique. Réglementé. Obéissance. Les engrenages tournent. Méchanus = Plan d'origine de Nordom. Méchanus = Origine nulle/Nordom."~ */
  IF ~  NearbyDialog("DMorte")
~ THEN EXTERN ~DMORTE~ 576
  IF ~  !NearbyDialog("DMorte")
~ THEN REPLY #55286 /* ~"'Origine nulle'… que veux-tu dire, Nordom ?"~ */ GOTO 65
  IF ~  !NearbyDialog("DMorte")
~ THEN REPLY #55293 /* ~"C'est tout ce que je voulais savoir. Perdons pas de temps."~ */ EXIT
END

IF ~~ THEN BEGIN 65 // from: 64.1
  SAY #55288 /* ~"Méchanus = Point d'origine. - !SOURCE! - Énergie. Impossible de retourner à Méchanus. Origine nulle. Enfreindre la loi de l'existence. Le Bureau central des punitions des contrevenants attend à Régulus. Méchanus : Origine, Origine nulle, Origine : Place nulle."~ */
  IF ~  NearbyDialog("Dmorte")
~ THEN REPLY #55289 /* ~"Que veux-tu dire par '!SOURCE!' ?"~ */ DO ~SetGlobal("Know_Source","GLOBAL",1)
~ GOTO 70
  IF ~  NearbyDialog("Dgrace")
!NearbyDialog("Dmorte")
~ THEN REPLY #55290 /* ~"Que veux-tu dire par '!SOURCE!' ?"~ */ DO ~SetGlobal("Know_Source","GLOBAL",1)
~ GOTO 71
  IF ~  !NearbyDialog("Dgrace")
!NearbyDialog("Dmorte")
~ THEN REPLY #55291 /* ~"Que veux-tu dire par '!SOURCE!' ?"~ */ GOTO 66
  IF ~~ THEN REPLY #55292 /* ~"Je vois. Nordom, j'ai encore quelques questions à te poser…"~ */ GOTO 74
  IF ~~ THEN REPLY #55293 /* ~"C'est tout ce que je voulais savoir. Perdons pas de temps."~ */ EXIT
END

IF ~~ THEN BEGIN 66 // from: 65.2
  SAY #55294 /* ~"!SOURCE! = Énergie."~ */
  IF ~~ THEN REPLY #55295 /* ~Donc… ce Méchanus est une source d'énergie ?"~ */ DO ~SetGlobal("Know_Source","GLOBAL",1)
~ GOTO 67
  IF ~~ THEN REPLY #55296 /* ~"Je vois. Nordom, j'ai encore quelques questions à te poser…"~ */ GOTO 74
  IF ~~ THEN REPLY #55297 /* ~"C'est tout ce que je voulais savoir. Perdons pas de temps."~ */ EXIT
END

IF ~~ THEN BEGIN 67 // from: 66.0
  SAY #55298 /* ~"Affirmatif." Les volets de Nordom s'abaissent sur ses yeux. Durant quelques instants, il émet un *vrrrrr*, puis ouvre son œil gauche. "Pièce/Pourcentage/Fragment de fraction de !SOURCE! à l'intérieur de Nordom. Énergie divisée. Lien a'b'b'b'bîmé." Nordom bégaie le dernier mot, puis se stabilise.~ */
  IF ~~ THEN REPLY #55299 /* ~"Tu as donc été coupé de la 'Source' ? Et ce n'est pas… douloureux?"~ */ GOTO 68
  IF ~~ THEN REPLY #55300 /* ~"Je vois. Nordom, j'ai encore quelques questions à te poser…"~ */ GOTO 74
  IF ~~ THEN REPLY #55301 /* ~"C'est tout ce que je voulais savoir. Perdons pas de temps."~ */ EXIT
END

IF ~~ THEN BEGIN 68 // from: 67.0
  SAY #55302 /* ~"Négatif. Sans douleur." Nordom abaisse brusquement la courbe de sa bouche, puis l'inverse. "Affirmatif. Douleur." Il émet un *clic*. "Déviation des réponses : réponse à la fois /Vraie/ et /Fausse/. Réponse inacceptable."~ */
  IF ~~ THEN REPLY #55303 /* ~"Oh… il suffit peut-être qu'une *partie* de la réponse soit vraie pour que la réponse soit vraie ?!"~ */ GOTO 69
  IF ~~ THEN REPLY #55304 /* ~"Je vois. Nordom, j'ai encore quelques questions à te poser…"~ */ GOTO 74
  IF ~~ THEN REPLY #55305 /* ~"C'est tout ce que je voulais savoir. Perdons pas de temps."~ */ EXIT
END

IF ~~ THEN BEGIN 69 // from: 68.0
  SAY #55306 /* ~Nordom s'interrompt. "Déviation des réponses : attestée par la Définition de la 'douleur'. Pas de rupture physique engendrée par la séparation de !SOURCE!. Toutefois, les paramètres d'efficacité des opérations ayant changé, il se peut que des dégâts se soient produits. Formulation d'une nouvelle réponse : Douloureux = Inconnu."~ */
  IF ~~ THEN REPLY #55307 /* ~"Je vois. Nordom, j'ai encore quelques questions à te poser…"~ */ GOTO 74
  IF ~~ THEN REPLY #55308 /* ~"C'est tout ce que je voulais savoir. Perdons pas de temps."~ */ EXIT
END

IF ~~ THEN BEGIN 70 // from: 65.0
  SAY #55309 /* ~"!SOURCE! = Énergie."~ */
  IF ~~ THEN EXTERN ~DMORTE~ 578
END

IF ~~ THEN BEGIN 71 // from: 65.1
  SAY #55310 /* ~"!SOURCE! = Énergie."~ */
  IF ~~ THEN EXTERN ~DGRACE~ 185
END

IF ~~ THEN BEGIN 72 // from: 9.5 74.4
  SAY #55311 /* ~On entend un *clic-clic-clic* lorsque Nordom exécute une rapide série de clins d'œil, puis il émet un *chrrrup*. "Demande : Modrone, qu'est-ce que c'est ? Définir : Modrone ? Je suis un modrone."~ */
  IF ~~ THEN REPLY #55312 /* ~"Oui, mais c'est *quoi* un modrone ?"~ */ GOTO 73
  IF ~~ THEN REPLY #55313 /* ~"Peu importe, Nordom. J'ai encore quelques questions à te poser…"~ */ GOTO 74
  IF ~~ THEN REPLY #55314 /* ~"Laisse tomber, Nordom. Perdons pas de temps."~ */ EXIT
END

IF ~~ THEN BEGIN 73 // from: 72.0 97.1
  SAY #55315 /* ~"Demande : Modrone, Défini : Modrone, je suis un modrone, Répondu." Les volets sur les 'yeux' de Nordom *cliquettent* plusieurs fois, et ses yeux se dilatent en gros pois. "Nouvelle demande : Modrone, mais qu'est-ce que c'EST ? Définir : mais qu'est-ce que c'est Modrone ? Modrone est Nordom. Nordom à l'envers = Modron(e)."~ */
  IF ~  NearbyDialog("Dmorte")
~ THEN REPLY #55316 /* ~"Mais…"~ */ EXTERN ~DMORTE~ 587
  IF ~  !NearbyDialog("Dmorte")
~ THEN REPLY #55317 /* ~"Mais… peu importe, Nordom. J'ai encore quelques questions à te poser…"~ */ GOTO 74
END

IF ~~ THEN BEGIN 74 // from: 43.2 44.3 45.1 46.1 48.0 49.1 50.2 51.2 52.4 53.2 54.1 55.2 56.2 57.1 59.3 60.1 61.1 63.0 65.3 66.1 67.1 68.1 69.0 72.1 73.1 75.0 76.2 77.1 78.1 79.4 81.8 86.2 87.2 91.1 92.1 93.3 94.2 97.2 98.2 99.4 100.1 101.2 102.3 103.2 104.1 105.4 106.1 107.1 108.0 110.2 110.3 111.3 112.1 113.4 114.2 115.1 116.2 117.4 118.1 119.2 130.4
  SAY #55318 /* ~"Statut : en attente de demandes."~ */
  IF ~  Global("Know_Director_Truth","GLOBAL",3)
Global("Nordom_Order","GLOBAL",0)
~ THEN REPLY #55319 /* ~"Nordom, peux-tu me dire quelles sont les fonctions du Directeur créatif ?"~ */ GOTO 79
  IF ~  GlobalGT("Nordom_Order","GLOBAL",0)
~ THEN REPLY #55320 /* ~"Nordom, répète-moi quelles sont les fonctions du Directeur créatif."~ */ GOTO 79
  IF ~  GlobalGT("Nordom_Order","GLOBAL",0)
~ THEN REPLY #55321 /* ~"En tant que Directeur créatif, j'ai quelques ordres à te donner."~ */ GOTO 81
  IF ~~ THEN REPLY #55322 /* ~"Je suis curieux, Nordom… Comment as-tu atterri à Rubikon ?"~ */ GOTO 49
  IF ~~ THEN REPLY #55323 /* ~"Nordom, c'est *quoi* un modrone ?"~ */ GOTO 72
  IF ~  Global("Know_Mechanus","GLOBAL",1)
~ THEN REPLY #55324 /* ~"Parle-moi de Méchanus, Nordom."~ */ DO ~SetAnimState("Nordom",ANIM_MIMESTAND)
~ GOTO 64
  IF ~  Global("Nordom_Self","GLOBAL",0)
~ THEN REPLY #55325 /* ~"Euh… comment ça va, Nordom ?"~ */ DO ~SetGlobal("Nordom_Self","GLOBAL",1)
SetAnimState("Nordom",ANIM_MIMESTAND)
~ GOTO 105
  IF ~  Global("Nordom_Self","GLOBAL",1)
~ THEN REPLY #55326 /* ~"Comment ça va, Nordom ?"~ */ DO ~SetAnimState("Nordom",ANIM_MIMESTAND)
~ GOTO 105
  IF ~  GlobalGT("Nordom_Solution","GLOBAL",0)
~ THEN REPLY #55327 /* ~"Nordom, tu as demandé comment j'allais avant, hein ?"~ */ GOTO 111
  IF ~  GlobalGT("Nordom_Solution","GLOBAL",1)
~ THEN REPLY #55328 /* ~"Est-ce qu'on peut reparler de mon immortalité ?"~ */ GOTO 130
  IF ~  GlobalGT("Know_Ravel","GLOBAL",0)
Global("Ravel","GLOBAL",0)
~ THEN REPLY #55329 /* ~"T'as entendu parler d'une certaine Ravel Puits-de-Rébus, Nordom ?"~ */ GOTO 75
  IF ~  GlobalGT("Know_Blood_War","GLOBAL",0)
~ THEN REPLY #55330 /* ~"Nordom, sais-tu quelque chose de la Guerre Sanglante ?"~ */ GOTO 76
  IF ~~ THEN REPLY #55331 /* ~"Plus d'autres… demandes, Nordom. Allons-y."~ */ EXIT
END

IF ~~ THEN BEGIN 75 // from: 9.11 74.10
  SAY #55332 /* ~"Négatif." Le corps de Nordom se met à vibrer… *Bruit sec* et il s'arrête. "L'objet de l'enquête n'est pas connu de /Nordom/."~ */
  IF ~~ THEN REPLY #55333 /* ~"D'accord, d'accord, Nordom. J'ai encore quelques questions à te poser…"~ */ GOTO 74
  IF ~~ THEN REPLY #55334 /* ~"C'est tout ce que je voulais savoir. Perdons pas de temps."~ */ EXIT
END

IF ~~ THEN BEGIN 76 // from: 9.12 74.11
  SAY #55335 /* ~"Définir : Guerre Sanglante. Le plus grand conflit de l'histoire. Cause profonde de la guerre : divergences idéologiques entre baatezus - loi et tanar'ris - chaos. Type de guerre : génocide racial. Perspective de fin de guerre (sauf si baatezus et/ou tanar'ris tous exterminés) : 0,0000000000000000000001 %. Principaux combattants : baatezus, tanar'ris. Participants à la guerre : tous."~ */
  IF ~~ THEN REPLY #55336 /* ~"Parle-moi des baatezus."~ */ GOTO 77
  IF ~~ THEN REPLY #55337 /* ~"Parle-moi des tanar'ris."~ */ GOTO 78
  IF ~~ THEN REPLY #55338 /* ~"D'accord, d'accord, Nordom. J'ai encore quelques questions à te poser…"~ */ GOTO 74
  IF ~~ THEN REPLY #55339 /* ~"C'est tout ce que je voulais savoir. Perdons pas de temps."~ */ EXIT
END

IF ~~ THEN BEGIN 77 // from: 76.0 78.0
  SAY #55340 /* ~"Alias 'Fiélons, diables'. Informations incomplètes : Descripteur générique, Baatezu. Habitants du plan : Baator. Nombre : incalculable. Principal mode d'agression : variable selon la caste. Immunités : feu, froid, fonte, poison. Caractéristiques physiques : variables selon la sous-race ; la majorité présente une résistance au froid/gaz. Personnalité : loyaux, mauvais, manipulateurs. Efficacité : 73 %."~ */
  IF ~~ THEN REPLY #55341 /* ~"Parle-moi des tanar'ris."~ */ GOTO 78
  IF ~~ THEN REPLY #55342 /* ~"D'accord, d'accord, Nordom. J'ai encore quelques questions à te poser…"~ */ GOTO 74
  IF ~~ THEN REPLY #55343 /* ~"C'est tout ce que je voulais savoir. Perdons pas de temps."~ */ EXIT
END

IF ~~ THEN BEGIN 78 // from: 76.1 77.0
  SAY #55344 /* ~"Alias 'Fiélons, démons'. Informations incomplètes : Descripteur générique, Tanar'ri. Habitants du plan : Les Abysses. Nombre : incalculable. Principal mode d'agression : variable selon la catégorie. Immunités : foudre, feu non magique, poison. Caractéristiques physiques : variables selon la sous-race ; la majorité présente une résistance au froid, au feu magique, au gaz. Personnalité : chaotique, mauvais. Efficacité : 13 %."~ */
  IF ~~ THEN REPLY #55345 /* ~"Parle-moi des baatezus."~ */ GOTO 77
  IF ~~ THEN REPLY #55346 /* ~"D'accord, d'accord, Nordom. J'ai encore quelques questions à te poser…"~ */ GOTO 74
  IF ~~ THEN REPLY #55347 /* ~"C'est tout ce que je voulais savoir. Perdons pas de temps."~ */ EXIT
END

IF ~~ THEN BEGIN 79 // from: 9.0 9.1 59.0 59.1 74.0 74.1
  SAY #55348 /* ~Un lent *tkkk-tkkk-tkkk* commence à monter des 'entrailles' de Nordom… comme une horloge sur le point d'exploser. "Réponse : Responsabilités de Directeur : (A) Maintenance de l'intégrité du projet Rubikon, (2) Émission des ordres au bataillon/groupe de travail Rubikon. Période d'obéissance en accord avec l'obéissance de Nordom : jusqu'à arrêt du projet Rubikon, Directeur créatif = supérieur de Nordom."~ */
  IF ~~ THEN REPLY #55349 /* ~"Donc… tu feras tout ce que je te dis de faire ?"~ */ GOTO 80
  IF ~~ THEN REPLY #55350 /* ~"Dans ce cas, j'ai quelques ordres à te donner, Nordom…"~ */ GOTO 81
  IF ~  CheckStatGT(Protagonist,16,INT)
~ THEN REPLY #55351 /* ~"Hum. Quelles sortes de tâches le Directeur créatif te confiait-il ?"~ */ GOTO 93
  IF ~  CheckStatGT(Protagonist,16,WIS)
CheckStatLT(Protagonist,17,INT)
~ THEN REPLY #55352 /* ~"Hum. Quelles sortes de tâches le Directeur créatif te confiait-il ?"~ */ GOTO 93
  IF ~~ THEN REPLY #55353 /* ~"Finalement, laisse tomber, Nordom. J'ai encore quelques questions à te poser…"~ */ GOTO 74
  IF ~~ THEN REPLY #55354 /* ~"Oublie ça, Nordom. Perdons pas de temps."~ */ EXIT
END

IF ~~ THEN BEGIN 80 // from: 79.0
  SAY #55355 /* ~"Affirmatif."~ */
  IF ~~ THEN REPLY #55356 /* ~"Dans ce cas, j'ai quelques ordres à te donner…"~ */ GOTO 81
  IF ~  CheckStatGT(Protagonist,16,INT)
~ THEN REPLY #55357 /* ~"Hum. Quelles sortes de tâches le Directeur créatif te confiait-il ?"~ */ GOTO 93
  IF ~~ THEN REPLY #55358 /* ~"Finalement, laisse tomber, Nordom. J'ai encore quelques questions à te poser…"~ */ GOTO 93
  IF ~~ THEN REPLY #55359 /* ~"Oublie ça, Nordom. Perdons pas de temps."~ */ EXIT
END

IF ~~ THEN BEGIN 81 // from: 9.2 74.2 79.1 80.0 86.1 87.1 91.0 92.0
  SAY #55360 /* ~"Statut : en attente des ordres."~ */
  IF ~  Global("Nordom_Fighter_Order","GLOBAL",0)
CheckStatGT(Protagonist,16,STR)
Class(Protagonist,FIGHTER)
~ THEN REPLY #55361 /* ~"Je t'ordonne de concentrer plus d'énergie consacrée à tes tâches courantes d'introspection pour mieux les adapter au combat. J'escompte une amélioration *immédiate* de tes talents et de ta précision au combat, soldat."~ */ DO ~SetAnimState("Nordom",ANIM_STANDTOSTANCE)
SetGlobal("Nordom_Fighter_Order","GLOBAL",1)
AddexperienceParty(36000)
~ GOTO 82
  IF ~  Global("Nordom_Mage_Order","GLOBAL",0)
CheckStatGT(Protagonist,16,INT)
Class(Protagonist,MAGE)
~ THEN REPLY #55362 /* ~"Nordom, je veux que tu t'appliques à éliminer tous les bagages en excédent qui encombrent ta mémoire et que tu améliores ta logique et tes tâches courantes d'introspection."~ */ DO ~SetGlobal("Nordom_Mage_Order","GLOBAL",1)
AddexperienceParty(36000)
SetAnimState("Nordom",ANIM_MIMESPELL1)
~ GOTO 84
  IF ~  Global("Nordom_Thief_Order","GLOBAL",0)
CheckStatGT(Protagonist,16,DEX)
Class(Protagonist,THIEF)
~ THEN REPLY #55363 /* ~"Nordom, je veux que tu prélèves de l'énergie consacrée à ta force pour la porter sur ta furtivité et ta précision. Pour l'heure, tu es trop maladroit et bruyant."~ */ DO ~SetGlobal("Nordom_Thief_Order","GLOBAL",1)
AddexperienceParty(36000)
~ GOTO 85
  IF ~  CheckStatGT(Protagonist,16,CHR)
Global("Nordom_Charisma_Order","GLOBAL",0)
~ THEN REPLY #55364 /* ~"Nordom, je t'ordonne de m'écouter. J'ai des choses à te dire."~ */ DO ~SetAnimState("Nordom",ANIM_MIMESTAND)
~ GOTO 86
  IF ~~ THEN REPLY #55365 /* ~"Pourquoi ne deviens-tu pas hostile pour attaquer tout le monde ?"~ */ DO ~LeaveParty()
IncrementGlobalOnceEx("GLOBALChaotic_Nordom_2","GLOBALLaw",-3)
IncrementGlobalOnceEx("GLOBALEvil_Nordom_1","GLOBALGood",-3)
Enemy()
Attack(Protagonist)
ChangeAIScript("MDKTNO",DEFAULT)
~ EXIT
  IF ~~ THEN REPLY #55366 /* ~"Fais-moi trois petits pas de danse, Nordom."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Nordom_3","GLOBALLaw",-1)
SetAnimState("Nordom",ANIM_STANDTOSTANCE)
SetAnimState("Nordom",ANIM_STANCETOSTAND)
~ GOTO 92
  IF ~~ THEN REPLY #55367 /* ~"Je t'ordonne de tomber face à terre et de te relever."~ */ DO ~SetAnimState("Nordom",ANIM_MIMEDIE)
SetAnimState("Nordom",ANIM_MIMEGETUP)
~ GOTO 92
  IF ~~ THEN REPLY #55368 /* ~"Passe tes arbalètes d'une main à l'autre."~ */ DO ~SetAnimState("Nordom",ANIM_MIMESTANCEFIDGET1)
~ GOTO 92
  IF ~~ THEN REPLY #55369 /* ~"Finalement, laisse tomber, Nordom. J'ai encore quelques questions à te poser…"~ */ GOTO 74
  IF ~~ THEN REPLY #55370 /* ~"Oublie ça, Nordom. Perdons pas de temps."~ */ EXIT
END

IF ~~ THEN BEGIN 82 // from: 81.0
  SAY #55371 /* ~"Affirmatif." Silence… puis les volets tombent lentement sur les yeux de Nordom. Bruit de *tkk-tkk-tkk* venant de ses 'entrailles', suivi d'un grincement sourd, qui se transforme en crissement métallique lorsque des panneaux s'ouvrent sur les côtés de Nordom et que des plaques métalliques recouvrent peu à peu sa structure.~ */
  IF ~~ THEN DO ~PermanentStatChange("Nordom",INT,LOWER,2)
PermanentStatChange("Nordom",ARMORCLASS,LOWER,2)
PermanentStatChange("Nordom",CON,RAISE,1)
~ GOTO 83
END

IF ~~ THEN BEGIN 83 // from: 82.0
  SAY #55372 /* ~Ses doigts se mettent à tapoter contre les arbalètes… Tu regardes les rivets de ses doigts sortir et rentrer, puis les trous vides se remplir brusquement d'une foule de minuscules et complexes engrenages. Après force *cliquetis* et *tic-tac* pour se mettre en place, les engrenages se stabilisent dans un *tic-tac* régulier.~ */
  IF ~~ THEN DO ~PermanentStatChange("Nordom",DEX,RAISE,1)
~ GOTO 92
END

IF ~~ THEN BEGIN 84 // from: 81.1
  SAY #55373 /* ~"Affirmatif". Silence… puis les volets tombent lentement sur les yeux de Nordom. Bruit de *tkk-tkk-tkk* venant de ses 'entrailles', suivi d'un grincement sourd, qui se transforme en crissement métallique lorsque des panneaux s'ouvrent sur les côtés de Nordom et que… des 'bagages' en excédent sont éjectés. Tu tentes de les attraper au vol.~ */
  IF ~~ THEN DO ~PermanentStatChange("Nordom",INT,RAISE,2)
GiveItemCreate("Junk",Protagonist,1,0,0)
GiveItemCreate("Junk",Protagonist,1,0,0)
GiveItemCreate("Junk",Protagonist,1,0,0)
GiveItemCreate("Enoll",Protagonist,1,0,0)
~ GOTO 92
END

IF ~~ THEN BEGIN 85 // from: 81.2
  SAY #55374 /* ~"Affirmatif". Silence… puis les volets tombent lentement sur les yeux de Nordom. Bruit de *vrrrrrr* montant de ses 'entrailles', comme un tapis de jogging lancé à toute vitesse. Puis, toutes les jointures de Nordom se mettent à faire des *clic*… de nouveaux engrenages poussent comme des champignons, envahissent rapidement les goupilles des épaules, coudes, genoux, poignets et chevilles. En quelques minutes, tous sont fixés solidement à ses jointures et Nordom a l'air… euh, plus chargé d'engrenages que d'habitude.~ */
  IF ~~ THEN DO ~PermanentStatChange("Nordom",STR,LOWER,2)
PermanentStatChange("Nordom",DEX,RAISE,2)
~ GOTO 92
END

IF ~~ THEN BEGIN 86 // from: 81.3
  SAY #55375 /* ~Nordom s'immobilise. "En attente : Parler."~ */
  IF ~~ THEN REPLY #55376 /* ~Vérité : Je t'ordonne d'être PLUS que tu ne peux être, Nordom. Je t'ordonne de devenir plus fort, plus rapide et plus concentré que tu ne l'as jamais été. Je SAIS que tu le peux, car je CROIS que tu le peux."~ */ DO ~SetAnimState("Nordom",ANIM_MIMESTAND)
~ GOTO 87
  IF ~~ THEN REPLY #55377 /* ~"Annule ça. J'ai encore quelques ordres à te donner…"~ */ GOTO 81
  IF ~~ THEN REPLY #55378 /* ~"Laisse tomber mon dernier ordre. J'ai encore quelques questions à te poser…"~ */ GOTO 74
  IF ~~ THEN REPLY #55379 /* ~"Peu importe, Nordom. Perdons pas de temps."~ */ EXIT
END

IF ~~ THEN BEGIN 87 // from: 86.0
  SAY #55380 /* ~Nordom te dévisage en silence. Ses arbalètes se sont elles aussi calmées.~ */
  IF ~~ THEN REPLY #55382 /* ~"Alors répète ces paroles : 'je suis un modrone fort'. 'Je suis un modrone rapide'. 'Je suis un modrone puissant'. 'Mon Directeur créatif croit en moi'. 'Je suis concentré pour mon Directeur'. Allez, répète."~ */ DO ~SetGlobal("Nordom_Charisma_Order","GLOBAL",1)
SetAnimState("Nordom",ANIM_MIMESTAND)
~ GOTO 88
  IF ~~ THEN REPLY #55383 /* ~"Annule ça. J'ai encore quelques ordres à te donner…"~ */ GOTO 81
  IF ~~ THEN REPLY #55384 /* ~"Laisse tomber mon dernier ordre. J'ai encore quelques questions à te poser…"~ */ GOTO 74
  IF ~~ THEN REPLY #55385 /* ~"Peu importe, Nordom. Perdons pas de temps."~ */ EXIT
END

IF ~~ THEN BEGIN 88 // from: 87.0
  SAY #55386 /* ~Nordom parle, mais sa voix a perdu son tremblement métallique ; elle est plate, déterminée, sans émotion. "Je suis un modrone fort. Je suis un modrone rapide. Je suis un modrone puissant. Mon Directeur créatif croit en moi. Je suis concentré pour mon Directeur."~ */
  IF ~~ THEN REPLY #55387 /* ~"Maintenant, SENS ces paroles, Nordom. DEVIENS plus fort. DEVIENS plus rapide. DEVIENS plus puissant. Laisse ton énergie venir à la SURFACE et utilise-la pour devenir NORDOM."~ */ DO ~SetAnimState("Nordom",ANIM_MIMESTAND)
~ GOTO 89
END

IF ~~ THEN BEGIN 89 // from: 88.0
  SAY #55388 /* ~Nordom continue à te dévisager, mais tu SENS que tes paroles portent… Tu sens une toute petite *étincelle* de l'énergie qui est en lui… Si tu arrives à la faire sortir… à l'amener à la surface…~ */
  IF ~  CheckStatLT(Protagonist,19,CHR)
~ THEN REPLY #55390 /* ~"Allez, Nordom… Force. Vitesse. Puissance. Concentration."~ */ DO ~SetAnimState("Nordom",ANIM_MIMESPELL2)
PermanentStatChange("Nordom",STR,RAISE,1)
PermanentStatChange("Nordom",CON,RAISE,1)
AddexperienceParty(36000)
~ GOTO 90
  IF ~  CheckStatGT(Protagonist,18,CHR)
CheckStatLT(Protagonist,25,CHR)
~ THEN REPLY #55393 /* ~"Allez, Nordom… Force. Vitesse. Puissance. Concentration."~ */ DO ~SetAnimState("Nordom",ANIM_MIMESPELL2)
PermanentStatChange("Nordom",ARMORCLASS,LOWER,1)
PermanentStatChange("Nordom",STR,RAISE,2)
PermanentStatChange("Nordom",CON,RAISE,1)
AddexperienceParty(48000)
~ GOTO 90
  IF ~  CheckStatGT(Protagonist,24,CHR)
~ THEN REPLY #55395 /* ~"Allez, Nordom… Force. Vitesse. Puissance. Concentration."~ */ DO ~SetAnimState("Nordom",ANIM_MIMESPELL2)
PermanentStatChange("Nordom",ARMORCLASS,LOWER,2)
PermanentStatChange("Nordom",STR,RAISE,2)
PermanentStatChange("Nordom",CON,RAISE,1)
PermanentStatChange("Nordom",LUCK,RAISE,1)
AddexperienceParty(60000)
~ GOTO 90
END

IF ~~ THEN BEGIN 90 // from: 89.0 89.1 89.2
  SAY #55398 /* ~"AFFIRMATIF". Les pupilles de Nordom font soudain un *clic* et deviennent brillantes : des points blancs pareils à de minuscules soleils. Il lève les mains au-dessus de sa tête, les agite en un étrange ballet aérien, puis les laisse retomber. Lorsqu'elles descendent, Nordom semble plus… défini. Mieux perceptible… Bref, quelque chose a *changé*.~ */
  IF ~~ THEN REPLY #55399 /* ~"Nordom… ?"~ */ DO ~SetAnimState("Nordom",ANIM_STANDTOSTANCE)
~ GOTO 91
END

IF ~~ THEN BEGIN 91 // from: 90.0
  SAY #55401 /* ~"ORDRE TRAITÉ." Nordom cligne des yeux et, brusquement, s'immobilise en *cliquetant*. Un petit jet de vapeur s'échappe de l'une de ses fentes ; sa voix semble étrangement profonde, comme si elle montait de l'intérieur d'un énorme four, puis reprend son timbre normal. "O-o-o-rdre traité."~ */
  IF ~~ THEN REPLY #55402 /* ~"Eh, ça n'a pas mal marché. J'ai encore quelques ordres à te donner…"~ */ GOTO 81
  IF ~~ THEN REPLY #55403 /* ~"Excellent. J'ai encore quelques questions à te poser…"~ */ GOTO 74
  IF ~~ THEN REPLY #55405 /* ~"C'est tout ce que je voulais, Nordom. Merci."~ */ EXIT
END

IF ~~ THEN BEGIN 92 // from: 81.5 81.6 81.7 83.0 84.0 85.0
  SAY #55407 /* ~Nordom se calme quelques instants, ses yeux s'ouvrent en émettant un *clic*. "Ordre traité".~ */
  IF ~~ THEN REPLY #55408 /* ~" J'ai encore quelques ordres à te donner…"~ */ GOTO 81
  IF ~~ THEN REPLY #55409 /* ~"Excellent. J'ai encore quelques questions à te poser…"~ */ GOTO 74
  IF ~~ THEN REPLY #55410 /* ~"C'est tout ce que je voulais, Nordom. Merci."~ */ EXIT
END

IF ~~ THEN BEGIN 93 // from: 79.2 79.3 80.1 80.2 94.1 95.1 96.0 98.1 99.3 100.0 101.1 102.2 103.1 104.0
  SAY #55412 /* ~En émettant un *vrrrr*, Nordom abaisse les volets sur ses yeux, comme s'il réfléchissait : "Routine des tâches : Évaluation/Envoi éclaireur/nettoyeur : périmètre affecté au projet Rubikon à évaluer, cataloguer, nettoyer, puis à notifier. Rapport inclut : Évaluations de l'in-in-in-tégrité/Elimination des erreurs du projet/Récupération des objets capricieux et désordonnés".~ */
  IF ~~ THEN REPLY #55414 /* ~"Évaluations de l'intégrité ?"~ */ GOTO 94
  IF ~~ THEN REPLY #55415 /* ~"Extermination des erreurs ?"~ */ GOTO 97
  IF ~~ THEN REPLY #55417 /* ~"Récupération des objets capricieux ?"~ */ GOTO 101
  IF ~~ THEN REPLY #55418 /* ~"Finalement, laisse tomber, Nordom. J'ai encore quelques questions à te poser…"~ */ GOTO 74
  IF ~~ THEN REPLY #55420 /* ~"Oublie ça, Nordom. Perdons pas de temps."~ */ EXIT
END

IF ~~ THEN BEGIN 94 // from: 93.0 95.2 96.1
  SAY #55421 /* ~"Sélection du mot répété confirmée (Écho ?) : évaluation de l'inter-grité. Évaluation destinée à détecter les failles du projet Rubikon, à les cataloguer, puis à les /réparer/. Nature du multivers et nature du plan : les Limbes compromettent le projet Rubikon."~ */
  IF ~~ THEN REPLY #55427 /* ~"Le, euh, multivers… et les, euh, Limbes… compromettent le Projet ? Comment exactement ?"~ */ GOTO 95
  IF ~~ THEN REPLY #55429 /* ~"C'est quoi, déjà, tes tâches ?"~ */ GOTO 93
  IF ~~ THEN REPLY #55431 /* ~"Finalement, laisse tomber, Nordom. J'ai encore quelques questions à te poser…"~ */ GOTO 74
  IF ~~ THEN REPLY #55432 /* ~"Oublie ça, Nordom. Perdons pas de temps."~ */ EXIT
END

IF ~~ THEN BEGIN 95 // from: 94.0
  SAY #55434 /* ~"Propriétés du multivers : se fissure - se scelle - se fissure à nouveau - création de failles. Crée des "portails"/conduits dans l'espace. Fréquence : indéterminée. Solution : inconnue." On entend un sifflement (*sssss*) lorsqu'un petit jet de vapeur s'échappe de l'une des fentes de Nordom. "Nordom ne peut pas réparer/sceller les fissures. Statut courant : Nordom est limité à : perception des fissures."~ */
  IF ~~ THEN REPLY #55435 /* ~"Minute, minute… Tu vois des 'fissures' dans les plans ? Des portails ? Comment ?"~ */ JOURNAL #55442 /* ~Nordom m'a appris qu'il avait la faculté de distinguer les portails, qu'il nomme "défauts" des plans. Apparemment, il lui suffit de se trouver à proximité d'un portail pour le remarquer. Certes, cela ne me dira pas comment l'ouvrir, mais je pourrai au moins repérer où il se trouve.~ */ GOTO 96
  IF ~~ THEN REPLY #55436 /* ~"Je 'vois'. C'est quoi, déjà, tes tâches ?"~ */ GOTO 93
  IF ~~ THEN REPLY #55438 /* ~"Peu importe, Nordom. J'ai encore quelques questions à te poser…"~ */ GOTO 94
  IF ~~ THEN REPLY #55439 /* ~"Laisse tomber, Nordom. Perdons pas de temps."~ */ EXIT
END

IF ~~ THEN BEGIN 96 // from: 95.0
  SAY #55445 /* ~"Capacité de détection des portails : distance maximale de perception varie en fonction de la faille/distance moyenne = Y+78…" Nordom émet toute une série de *clics* affolés… on dirait un défilé de scarabées tapageurs qui grouillent sur son corps. "Nordom doit s'approcher à trois mètres du portail. Marge d'erreur : +/- 5 centimètres. Signal sonore quand près du portail."~ */
  IF ~~ THEN REPLY #55449 /* ~"D'accord. Bon, c'est quoi, déjà, tes tâches ?"~ */ GOTO 93
  IF ~~ THEN REPLY #55450 /* ~"Je comprends parfaitement, Nordom. j'ai encore quelques questions à te poser…"~ */ GOTO 94
  IF ~~ THEN REPLY #55452 /* ~"Merci, Nordom. Perdons pas de temps."~ */ EXIT
END

IF ~~ THEN BEGIN 97 // from: 93.1
  SAY #55453 /* ~Le gazouillis habituel de Nordom se réduit à un vague murmure. "Erreurs : nombreuses. Toutes les constructions du projet Rubikon sont erronées et en désaccord avec le Directeur créatif et tout le personnel du projet Rubikon. Ordres émis : annuler les erreurs en désaccord. Obstacle : Nordom non conforme aux spécifications de la tâche sans passer par État nul".~ */
  IF ~~ THEN REPLY #55454 /* ~"Alors t'as pas pu arrêter tout seul ces vilaines constructions… du moins pas sans être à moitié démantibulé ?"~ */ GOTO 98
  IF ~~ THEN REPLY #55456 /* ~"C'est quoi, déjà, tes autres tâches ?"~ */ GOTO 73
  IF ~~ THEN REPLY #55458 /* ~"J'avais d'autres questions à te poser…"~ */ GOTO 74
  IF ~~ THEN REPLY #55459 /* ~"J'en ai assez entendu, Nordom. Perdons pas de temps."~ */ EXIT
END

IF ~~ THEN BEGIN 98 // from: 97.0
  SAY #55461 /* ~"Affirmatif. État nul anti-productif à l'exécution de la tâche."~ */
  IF ~~ THEN REPLY #55462 /* ~"Tu sais, peut-être que s'ils t'avaient donné de meilleures armes…"~ */ DO ~SetAnimState("Nordom",ANIM_MIMESTANDFIDGET1)
~ GOTO 99
  IF ~~ THEN REPLY #55464 /* ~"C'est quoi, déjà, tes autres tâches ?"~ */ GOTO 93
  IF ~~ THEN REPLY #55465 /* ~"Finalement, laisse tomber, Nordom. J'ai encore quelques questions à te poser…"~ */ GOTO 74
  IF ~~ THEN REPLY #55466 /* ~"Oublie ça, Nordom. Perdons pas de temps."~ */ EXIT
END

IF ~~ THEN BEGIN 99 // from: 98.0
  SAY #55468 /* ~Les arbalètes que tient Nordom se mettent à *cliqueter* et à *vibrer* tels deux insectes bizarres. Il les écoute, puis te jette un coup d'œil. "Mes arbalètes désirent présenter une requête suivie de trente-trois demandes d'aide : 'Munitions limitées au bon vouloir du créateur.' Souhaites-tu leur définir de nouvelles spécifications ?"~ */
  IF ~  CheckStatGT(Protagonist,17,INT)
Global("Nordom_Bolt_03","GLOBAL",0)
~ THEN REPLY #55469 /* ~"Certainement… euh, je sais pas, pourquoi pas… une tête pyramidale, sauf que la tête se fend en trois quand elle atteint une cible ?"~ */ DO ~GiveItemCreate("Bolt03","Nordom",10,0,0)
SetGlobal("Nordom_Bolt_03","GLOBAL",1)
SetAnimState("Nordom",ANIM_MIMEATTACK1)
~ GOTO 100
  IF ~  Global("Nordom_Bolt_07","GLOBAL",0)
~ THEN REPLY #55470 /* ~"Quelque chose de plus précis, ça serait bien. Avec des plumes pour faire joli et montrer que ça tire loin."~ */ DO ~GiveItemCreate("Bolt07","Nordom",10,0,0)
SetGlobal("Nordom_Bolt_07","GLOBAL",1)
SetAnimState("Nordom",ANIM_MIMEATTACK1)
~ GOTO 100
  IF ~  GlobalLT("Good","GLOBAL",-20)
Global("Nordom_Bolt_06","GLOBAL",0)
~ THEN REPLY #55471 /* ~"Je sais pas. Quelque chose de méchant. Je veux dire VRAIMENT méchant. Une méchanceté tranchante, horrible, qui fait tordre de douleur."~ */ DO ~GiveItemCreate("Bolt06","Nordom",10,0,0)
SetGlobal("Nordom_Bolt_06","GLOBAL",1)
SetAnimState("Nordom",ANIM_MIMEATTACK1)
~ GOTO 100
  IF ~~ THEN REPLY #55472 /* ~"Là, comme ça, à brûle-pourpoint, je vois pas. C'est quoi, déjà, tes autres tâches ?"~ */ GOTO 93
  IF ~~ THEN REPLY #55473 /* ~"Pas maintenant, Nordom. J'ai encore quelques questions à te poser…"~ */ GOTO 74
  IF ~~ THEN REPLY #55474 /* ~"Oublie ça, Nordom ; peut-être une autre fois. Perdons pas de temps."~ */ EXIT
END

IF ~~ THEN BEGIN 100 // from: 99.0 99.1 99.2
  SAY #55475 /* ~Un énorme cliquetis retentit soudain du côté de Nordom. Des carreaux d'arbalète se mettent à jaillir en faisceau, décrivant un arc en l'air. Deux panneaux s'ouvrent sur les côtés de Nordom, et les carreaux d'arbalète s'y engouffrent l'un après l'autre avec fracas. Puis, les arbalètes se taisent. Tu as la curieuse impression qu'elles sont épuisées.~ */
  IF ~~ THEN REPLY #55476 /* ~"Peut-être qu'elles devraient prendre un peu de repos… C'est quoi, déjà, tes autres tâches?"~ */ GOTO 93
  IF ~~ THEN REPLY #55477 /* ~"Ça devrait aller maintenant, Nordom. J'ai encore quelques questions à te poser…"~ */ GOTO 74
  IF ~~ THEN REPLY #55478 /* ~"Ramassons ces carreaux et filons, Nordom."~ */ EXIT
END

IF ~~ THEN BEGIN 101 // from: 93.2
  SAY #55479 /* ~"Affirmatif. Dans le dédale apparaissent des objets qui ne faisaient pas partie de la conception initiale du projet Rubikon. Il faut les rassembler, les cataloguer, les évaluer et les stocker pour empêcher toute interférence. Les modrones doivent aller les récupérer."~ */
  IF ~~ THEN REPLY #55480 /* ~"Hum. As-tu trouvé quelque chose lors de ton dernier voyage ?"~ */ GOTO 102
  IF ~~ THEN REPLY #55481 /* ~"Je vois. C'est quoi, déjà, tes autres tâches?"~ */ GOTO 93
  IF ~~ THEN REPLY #55482 /* ~"Finalement, laisse tomber, Nordom. J'ai encore quelques questions à te poser…"~ */ GOTO 74
  IF ~~ THEN REPLY #55483 /* ~"Oublie ça, Nordom. Perdons pas de temps."~ */ EXIT
END

IF ~~ THEN BEGIN 102 // from: 101.0
  SAY #55484 /* ~"Affirmatif."~ */
  IF ~  Global("Nordom_Item_Bank","GLOBAL",0)
~ THEN REPLY #55486 /* ~"Tu peux me donner ce que t'as trouvé ?"~ */ DO ~SetGlobal("Nordom_Item_Bank","GLOBAL",1)
GiveItemCreate("Junk",Protagonist,1,0,0)
GiveItemCreate("Junk",Protagonist,1,0,0)
GiveItemCreate("Junk",Protagonist,1,0,0)
GiveItemCreate("StingEar",Protagonist,1,0,0)
GiveItemCreate("GolBra",Protagonist,1,0,0)
GiveItemCreate("EyeGlas1",Protagonist,1,0,0)
GiveItemCreate("FangMirr",Protagonist,3,0,0)
GiveGoldForce(333)
~ GOTO 103
  IF ~  Global("Nordom_Item_Bank","GLOBAL",1)
CheckStatGT(Protagonist,16,INT)
~ THEN REPLY #55487 /* ~"Tu disais que tu évalues les objets quand tu les trouves… Comment ?"~ */ DO ~SetGlobal("Nordom_Item_Bank","GLOBAL",2)
GiveItemCreate("Lens03","Nordom",1,0,0)
~ GOTO 104
  IF ~~ THEN REPLY #55488 /* ~"C'est quoi, déjà, tes autres tâches ?"~ */ GOTO 93
  IF ~~ THEN REPLY #55489 /* ~"Finalement, laisse tomber, Nordom. J'ai encore quelques questions à te poser…"~ */ GOTO 74
  IF ~~ THEN REPLY #55490 /* ~"Oublie ça, Nordom. Perdons pas de temps."~ */ EXIT
END

IF ~~ THEN BEGIN 103 // from: 102.0
  SAY #55491 /* ~"Affirmatif." Temps de silence… puis les volets s'abaissent lentement sur les yeux de Nordom. Bruit de *tkk-tkk-tkk* venant de ses 'entrailles', suivi d'un *vrrr-clic*. Une trappe s'ouvre sur le côté gauche de Nordom… De sa main libre, il te passe plusieurs objets, notamment un flot de pièces de cuivre.~ */
  IF ~  CheckStatGT(Protagonist,16,INT)
~ THEN REPLY #55492 /* ~"Hum. Tu disais que tu évalues les objets quand tu les trouves… Comment ?"~ */ DO ~SetGlobal("Nordom_Item_Bank","GLOBAL",2)
GiveItemCreate("Lens03","Nordom",1,0,0)
~ GOTO 104
  IF ~  CheckStatLT(Protagonist,17,INT)
~ THEN REPLY #55493 /* ~"Merci, Nordom. Je les examinerai. C'est quoi, déjà, tes autres tâches ?"~ */ GOTO 93
  IF ~  CheckStatLT(Protagonist,17,INT)
~ THEN REPLY #55494 /* ~"J'y jetterai un œil plus tard, Nordom. Pour l'instant, j'ai encore quelques questions à te poser…"~ */ GOTO 74
  IF ~  CheckStatLT(Protagonist,17,INT)
~ THEN REPLY #55495 /* ~"Je les garde, Nordom, merci. Perdons pas de temps."~ */ EXIT
END

IF ~~ THEN BEGIN 104 // from: 102.1 103.0
  SAY #55496 /* ~Un énorme cliquetis retentit soudain du côté de Nordom lorsque son étui à lentilles se met à pivoter… Un petit panneau s'ouvre sur le côté de Nordom et de nouvelles lentilles jaillissent, presque accidentellement. Nordom y jette en coup d'œil. "Réponse : Autres lentilles, grossissantes, protégées par casier."~ */
  IF ~~ THEN REPLY #55497 /* ~"C'est quoi, déjà, tes autres tâches ?"~ */ GOTO 93
  IF ~~ THEN REPLY #55498 /* ~"Je vois. J'avais d'autres questions à te poser…"~ */ GOTO 74
  IF ~~ THEN REPLY #55499 /* ~"J'en ai assez entendu, Nordom. Perdons pas de temps."~ */ EXIT
END

IF ~~ THEN BEGIN 105 // from: 9.7 9.8 74.6 74.7
  SAY #55500 /* ~"Démarrage du cycle introspectif." Nordom fait *cliqueter* ses yeux clos et se met à *fredonner*.~ */
  IF ~  Global("Nordom_Self_Truth","GLOBAL",0)
!Global("Know_Director_Truth","GLOBAL",3)
~ THEN REPLY #55501 /* ~Attends que Nordom ait terminé son analyse.~ */ GOTO 106
  IF ~  Global("Nordom_Self_Truth","GLOBAL",0)
GlobalGT("Know_Director_Truth","GLOBAL",2)
~ THEN REPLY #55502 /* ~Attends que Nordom ait terminé son analyse.~ */ GOTO 107
  IF ~  GlobalGT("Nordom_Self_Truth","GLOBAL",0)
!Global("Know_Director_Truth","GLOBAL",3)
~ THEN REPLY #55503 /* ~Attends que Nordom ait terminé son analyse.~ */ GOTO 108
  IF ~  GlobalGT("Nordom_Self_Truth","GLOBAL",0)
GlobalGT("Know_Director_Truth","GLOBAL",2)
~ THEN REPLY #55504 /* ~Attends que Nordom ait terminé son analyse.~ */ GOTO 109
  IF ~~ THEN REPLY #55505 /* ~"Finalement, laisse tomber, Nordom. J'ai encore quelques questions à te poser…"~ */ GOTO 74
  IF ~~ THEN REPLY #55506 /* ~"Oublie ça, Nordom. Perdons pas de temps."~ */ EXIT
END

IF ~~ THEN BEGIN 106 // from: 105.0
  SAY #55507 /* ~Au bout d'un moment, il rouvre les yeux en émettant un *clic*. "Évaluation introspective : perceptions devenues (1) plus petites et (B) plus bruyantes. Les ailes ont été remplacées par des bras : raison inconnue. Supposition/hypothèse : ailes mal-aimées ? Spéculation. Nordom fut un jour - QUELQU'UN - mais il est maintenant - QUELQU'UN - plus petit, plus bruyant ! Ce changement a compliqué le traitement des informations."~ */
  IF ~  CheckStatGT(Protagonist,15,INT)
Global("Nordom_Self_Truth","GLOBAL",0)
Global("Know_Source","GLOBAL",1)
~ THEN REPLY #55508 /* ~"Crois-tu que c'est ta séparation de la Source qui a fait changer ton 'point de vue'… de 'celui' plus calme, plus large à 'celui' plus petit et bruyant ?"~ */ DO ~SetGlobal("Nordom_Self_Truth","GLOBAL",1)
SetAnimState("Nordom",ANIM_MIMESTAND)
~ GOTO 62
  IF ~~ THEN REPLY #55509 /* ~"Je vois, Nordom. j'ai encore quelques questions à te poser…"~ */ GOTO 74
  IF ~~ THEN REPLY #55510 /* ~"J'en ai assez entendu, Nordom. Perdons pas de temps."~ */ EXIT
END

IF ~~ THEN BEGIN 107 // from: 105.1
  SAY #55511 /* ~Au bout d'un moment, il rouvre les yeux en émettant un *clic*. "Évaluation introspective : perceptions devenues (1) plus petites et (B) plus bruyantes. Les ailes ont été remplacées par des bras : raison inconnue. Supposition/hypothèse : ailes mal-aimées ? Spéculation. Nordom fut un jour - QUELQU'UN - mais il est maintenant - QUELQU'UN - plus petit, plus bruyant ! Ce changement a compliqué le traitement des informations. L'ajout d'une hiérarchie de DIRECTION a amélioré le traitement des informations de +5 %."~ */
  IF ~  CheckStatGT(Protagonist,15,INT)
Global("Nordom_Self_Truth","GLOBAL",0)
Global("Know_Source","GLOBAL",1)
~ THEN REPLY #55512 /* ~"Crois-tu que c'est ta séparation de la Source qui a fait changer ton 'point de vue'… de 'celui' plus calme, plus large à 'celui' plus petit et bruyant ?"~ */ DO ~SetGlobal("Nordom_Self_Truth","GLOBAL",1)
SetAnimState("Nordom",ANIM_MIMESTAND)
~ GOTO 62
  IF ~~ THEN REPLY #55513 /* ~"Je vois, Nordom. j'ai encore quelques questions à te poser…"~ */ GOTO 74
  IF ~~ THEN REPLY #55514 /* ~"J'en ai assez entendu, Nordom. Perdons pas de temps."~ */ EXIT
END

IF ~~ THEN BEGIN 108 // from: 105.2
  SAY #55515 /* ~Au bout d'un moment, il rouvre les yeux en émettant un *clic*. "Évaluation introspective : perceptions devenues (1) plus petites et (B) plus bruyantes. Les ailes ont été remplacées par des bras : raison inconnue. Supposition/hypothèse : ailes mal-aimées ? Spéculation. Nordom fut un jour - QUELQU'UN - mais il est maintenant - QUELQU'UN - plus petit, plus bruyant ! L'ajout de !SOURCE! RAISON : CHANGEMENT DE PERCEPTION a amélioré le traitement des informations de +5 %".~ */
  IF ~~ THEN REPLY #55516 /* ~"Je vois, Nordom. j'ai encore quelques questions à te poser…"~ */ GOTO 74
  IF ~~ THEN REPLY #55517 /* ~"J'en ai assez entendu, Nordom. Perdons pas de temps."~ */ EXIT
END

IF ~~ THEN BEGIN 109 // from: 105.3
  SAY #55518 /* ~Au bout d'un moment, il rouvre les yeux en émettant un *clic*. "Évaluation introspective : perceptions devenues (1) plus petites et (B) plus bruyantes. Les ailes ont été remplacées par des bras : raison inconnue. Supposition/hypothèse : ailes mal-aimées ? Spéculation. Nordom fut un jour - QUELQU'UN - mais il est maintenant - QUELQU'UN - plus petit, plus bruyant ! Stabilisation réalisée : DIRECTEUR et !SOURCE! CHANGEMENT DE PERCEPTION a amélioré le traitement des informations de +10 %."~ */
  IF ~~ THEN REPLY #55519 /* ~"Je vois, Nordom. j'ai encore quelques questions à te poser…"~ */ GOTO 110
  IF ~~ THEN REPLY #55520 /* ~"J'en ai assez entendu, Nordom. Perdons pas de temps."~ */ GOTO 110
END

IF ~~ THEN BEGIN 110 // from: 109.0 109.1
  SAY #55521 /* ~Avant que tu aies le temps de parler, les yeux de Nordom émettent des *clic-clic-clic* et il lance un *chrrrup*. "Le Sujet a aidé Nordom. Hypothèse : Nordom aide destinataire. Demande : Nordom veut connaître statut du destinataire."~ */
  IF ~  Global("Nordom_Solution","GLOBAL",0)
~ THEN REPLY #55522 /* ~"Comment *je* vais ?"~ */ DO ~SetGlobal("Nordom_Solution","GLOBAL",1)
~ GOTO 111
  IF ~  GlobalGT("Nordom_Solution","GLOBAL",0)
~ THEN REPLY #55523 /* ~"Comment *je* vais ?"~ */ GOTO 111
  IF ~  Global("Nordom_Solution","GLOBAL",0)
~ THEN REPLY #55524 /* ~"Pas maintenant, Nordom. J'ai encore quelques questions à te poser…"~ */ DO ~SetGlobal("Nordom_Solution","GLOBAL",1)
~ GOTO 74
  IF ~  GlobalGT("Nordom_Solution","GLOBAL",0)
~ THEN REPLY #55525 /* ~"Pas maintenant, Nordom. J'ai encore quelques questions à te poser…"~ */ GOTO 74
  IF ~  Global("Nordom_Solution","GLOBAL",0)
~ THEN REPLY #55526 /* ~"Te fais pas de bile pour mon état, Nordom. Perdons pas de temps."~ */ DO ~SetGlobal("Nordom_Solution","GLOBAL",1)
~ EXIT
  IF ~  GlobalGT("Nordom_Solution","GLOBAL",0)
~ THEN REPLY #55527 /* ~"Te fais pas de bile pour mon état, Nordom. Perdons pas de temps."~ */ EXIT
END

IF ~~ THEN BEGIN 111 // from: 9.9 74.8 110.0 110.1
  SAY #55528 /* ~"Affirmatif. Demande soumise en ce qui concerne /statut/ du destinataire. Réponse ?"~ */
  IF ~  Global("Ravel","GLOBAL",0)
Global("Know_Shadow_Player_Connection","GLOBAL",0)
~ THEN REPLY #55529 /* ~"Ma foi, mis à part mon amnésie et le fait que je semble ne pas pouvoir mourir comme tout un chacun, ça va."~ */ GOTO 112
  IF ~  GlobalGT("Ravel","GLOBAL",0)
Global("Know_Shadow_Player_Connection","GLOBAL",0)
~ THEN REPLY #55530 /* ~"Ma foi, mis à part mon amnésie et le fait que je semble ne pas pouvoir mourir comme tout un chacun et que ma mortalité se soit envolée comme par enchantement, ça va."~ */ GOTO 112
  IF ~  Global("Know_Shadow_Player_Connection","GLOBAL",1)
~ THEN REPLY #55531 /* ~"Ma foi, mis à part mon amnésie et le fait que ma mortalité s'est envolée comme par enchantement vers la Forteresse des regrets et que, chaque fois que je meurs, quelqu'un meurt à ma place… c'est pas brillant."~ */ GOTO 112
  IF ~~ THEN REPLY #55532 /* ~"Pas maintenant, Nordom. J'ai encore quelques questions à te poser…"~ */ GOTO 74
  IF ~~ THEN REPLY #55533 /* ~"Te fais pas de bile pour mon état, Nordom. Perdons pas de temps."~ */ EXIT
END

IF ~~ THEN BEGIN 112 // from: 111.0 111.1 111.2
  SAY #55534 /* ~"Traitement : amnésie. Traitement : Mort nulle/Malgré tentatives." Pendant un moment, Nordom émet un *vrrrr*, ses larges yeux fixés sur toi. "Conclusion : Statut : Immortel. Demande sur cause/effet : amnésie produit immortalité ou immortalité produit amnésie ?"~ */
  IF ~~ THEN REPLY #55535 /* ~"J'en sais rien… Tout ce que je sais, c'est que quand je me réveille de chez les 'morts', je perds tous mes souvenirs. À croire que l'immortalité provoque l'amnésie."~ */ GOTO 113
  IF ~~ THEN REPLY #55536 /* ~"Laisse tomber, Nordom. J'ai encore quelques questions à te poser…"~ */ GOTO 74
  IF ~~ THEN REPLY #55537 /* ~"Te fais pas de bile pour mon état, Nordom. Perdons pas de temps."~ */ EXIT
END

IF ~~ THEN BEGIN 113 // from: 112.0
  SAY #55557 /* ~"Traitement…" Nordom grince un moment comme une roue de moulin "Nouvelle demande formulée : chaque fois que tu meurs, tu perds la mémoire ?"~ */
  IF ~~ THEN REPLY #55559 /* ~"C'est vrai."~ */ GOTO 114
  IF ~  GlobalGT("Ravel","GLOBAL",0)
~ THEN REPLY #55561 /* ~"En tout cas, c'est ce que Ravel a dit."~ */ GOTO 114
  IF ~  Global("Death","GLOBAL",1)
~ THEN REPLY #55564 /* ~"Oui… non, attends. C'est pas vrai. La dernière fois, j'ai pas perdu mes souvenirs."~ */ GOTO 115
  IF ~  GlobalGT("Death","GLOBAL",1)
~ THEN REPLY #55566 /* ~"Oui… non, attends. C'est pas vrai. La dernière fois, j'ai pas perdu mes souvenirs. En fait, je les ai pas perdus depuis mon réveil à la Morgue."~ */ GOTO 115
  IF ~~ THEN REPLY #55570 /* ~"Laisse tomber, Nordom. J'ai encore quelques questions à te poser…"~ */ GOTO 74
  IF ~~ THEN REPLY #55572 /* ~"Te fais pas de bile pour mon état, Nordom. Perdons pas de temps."~ */ EXIT
END

IF ~~ THEN BEGIN 114 // from: 113.0 113.1
  SAY #55576 /* ~"Réponse : catalogué." Nordom émet un ultime *clic*, puis te regarde en silence.~ */
  IF ~  Global("Death","GLOBAL",1)
~ THEN REPLY #55577 /* ~"… sauf que j'ai pas perdu mes souvenirs la dernière fois que je suis mort."~ */ GOTO 115
  IF ~  GlobalGT("Death","GLOBAL",1)
~ THEN REPLY #55578 /* ~"… sauf que j'ai pas perdu mes souvenirs la dernière fois que je suis mort. Ni la fois d'avant."~ */ GOTO 115
  IF ~~ THEN REPLY #55579 /* ~"J'ai encore quelques questions à te poser, Nordom…"~ */ GOTO 74
  IF ~~ THEN REPLY #55580 /* ~"D'accord, Nordom. Perdons pas de temps."~ */ EXIT
END

IF ~~ THEN BEGIN 115 // from: 113.2 113.3 114.0 114.1
  SAY #55581 /* ~"Réponse : Conclusion : l'immortalité n'est pas la cause de l'amnésie."~ */
  IF ~~ THEN REPLY #55582 /* ~"Oh, j'en sais rien. C'est peut-être un hasard si c'est pas arrivé la dernière fois."~ */ GOTO 116
  IF ~~ THEN REPLY #55583 /* ~"Laisse tomber, Nordom. J'ai encore quelques questions à te poser…"~ */ GOTO 74
  IF ~~ THEN REPLY #55584 /* ~"Te fais pas de bile pour mon état, Nordom. Perdons pas de temps."~ */ EXIT
END

IF ~~ THEN BEGIN 116 // from: 115.0
  SAY #55585 /* ~"Elément de hasard non pris en compte. Suggestion : commencer à chercher un nouveau modèle. Amnésie/Immortalité - Demande : facteurs supplémentaires présents ? Intervention/Présence de nouveaux facteurs ou absence d'autres facteurs ?"~ */
  IF ~  GlobalGT("Nordom_Solution","GLOBAL",1)
~ THEN REPLY #55586 /* ~"Quels autres facteurs il pourrait y avoir ?"~ */ GOTO 117
  IF ~  Global("Nordom_Solution","GLOBAL",1)
~ THEN REPLY #55586 /* ~"Quels autres facteurs il pourrait y avoir ?"~ */ DO ~SetGlobal("Nordom_Solution","GLOBAL",2)
~ GOTO 117
  IF ~~ THEN REPLY #55588 /* ~"Laisse tomber, Nordom. J'ai encore quelques questions à te poser…"~ */ GOTO 74
  IF ~~ THEN REPLY #55589 /* ~"Te fais pas de bile pour mon état, Nordom. Perdons pas de temps."~ */ EXIT
END

IF ~~ THEN BEGIN 117 // from: 116.0 116.1 120.0 121.0 124.0 129.0
  SAY #55597 /* ~"Inconnu. Demande : informations supplémentaires ?"~ */
  IF ~  Global("Know_Player_Killer","GLOBAL",1)
Global("Nordom_Solution","GLOBAL",2)
~ THEN REPLY #55599 /* ~"Eh bien, je crois qu'on veut m'assassiner… Au point que j'ai construit une tombe piégée pour essayer de les tuer. D'après une inscription dans la tombe, il me poursuit… depuis, euh, aussi longtemps que mes incarnations s'en souviennent, semble-t-il."~ */ GOTO 118
  IF ~  GlobalGT("Ravel","GLOBAL",0)
Global("Nordom_Solution","GLOBAL",3)
~ THEN REPLY #55602 /* ~"Une chose : je n'ai pas toujours été immortel… C'est Ravel qui m'a rendu comme ça."~ */ GOTO 121
  IF ~  Global("Know_Fortress_Location_Forgot","GLOBAL",1)
Global("Nordom_Solution","GLOBAL",4)
~ THEN REPLY #55604 /* ~"Les gens capables de m'aider à retrouver ma mortalité ou de me dire où elle est semblent se raréfier… Si ça continue, plus personne ne saura où se trouve ma mortalité. Le Pilier des Crânes a dit qu'il y en avait seulement trois… dont moi, mais j'ai oublié."~ */ GOTO 122
  IF ~  Global("Know_Keeper_Mortality","GLOBAL",1)
Global("Nordom_Solution","GLOBAL",5)
~ THEN REPLY #55605 /* ~"Trias a dit qu'il y a un 'gardien' dans cette Forteresse des regrets, et qu'il retient ma mortalité prisonnière."~ */ GOTO 125
  IF ~~ THEN REPLY #55608 /* ~"Aucune information supplémentaire pour l'instant, Nordom. Mais j'ai encore quelques questions à te poser…"~ */ GOTO 74
  IF ~~ THEN REPLY #55610 /* ~"Oublie ça, Nordom. Perdons pas de temps."~ */ EXIT
END

IF ~~ THEN BEGIN 118 // from: 117.0 130.0
  SAY #55612 /* ~"Informations supplémentaires : meurtrier. Immortalité = ne peut être assassiné." Nordom émet quelques *tkkk-tkkk-tkkk*, puis un *chrrrup*. "Demande : pas meurtrier ?"~ */
  IF ~~ THEN REPLY #55613 /* ~"Qu'est-ce que tu veux dire ?"~ */ GOTO 119
  IF ~~ THEN REPLY #55616 /* ~"Laisse tomber, Nordom. J'ai encore quelques questions à te poser…"~ */ GOTO 74
  IF ~~ THEN REPLY #55618 /* ~"Te fais pas de bile pour mon état, Nordom. Perdons pas de temps."~ */ EXIT
END

IF ~~ THEN BEGIN 119 // from: 118.0
  SAY #55619 /* ~"Réponse : l'immortalité empêche le meurtre de réussir. Demande : pas meurtrier ?"~ */
  IF ~~ THEN REPLY #55621 /* ~"Mais alors, à quoi d'autre ça servirait de me… d'essayer de me tuer ?"~ */ DO ~SetGlobal("Nordom_Solution","GLOBAL",3)
~ JOURNAL #55631 /* ~Nordom m'a fait une suggestion étrange au sujet de mon "assassin" : selon lui, il se peut que ce dernier ne veuille pas me tuer, mais seulement me faire oublier quelque chose. D'accord, mais quoi ?~ */ GOTO 120
  IF ~  CheckStatGT(Protagonist,15,INT)
~ THEN REPLY #55625 /* ~"Donc selon toi, le meurtrier n'essaierait *pas* de me tuer ? Alors pourquoi tout ça ?"~ */ DO ~SetGlobal("Nordom_Solution","GLOBAL",3)
~ JOURNAL #55631 /* ~Nordom m'a fait une suggestion étrange au sujet de mon "assassin" : selon lui, il se peut que ce dernier ne veuille pas me tuer, mais seulement me faire oublier quelque chose. D'accord, mais quoi ?~ */ GOTO 120
  IF ~~ THEN REPLY #55628 /* ~"Laisse tomber, Nordom. J'ai encore quelques questions à te poser…"~ */ GOTO 74
  IF ~~ THEN REPLY #55629 /* ~"Te fais pas de bile pour mon état, Nordom. Perdons pas de temps."~ */ EXIT
END

IF ~~ THEN BEGIN 120 // from: 119.0 119.1
  SAY #55637 /* ~"Réponse : Immortalité = amnésie."~ */
  IF ~~ THEN REPLY #55638 /* ~"Alors, qui que soit ce tueur, il n'essaierait pas de me tuer mais de me faire *oublier* ? Hum. C'est une possibilité… Je veux dire qu'il y avait *d'autres* moyens de m'immobiliser si le tueur voulait se débarrasser de moi… hum. Et de toute façon, ce serait pour me faire oublier *quoi* ?"~ */ GOTO 117
END

IF ~~ THEN BEGIN 121 // from: 117.1 130.1
  SAY #55639 /* ~"Demande : formuler demande supplémentaire…. Immortalité nulle dans le passé, immortalité demandée par le Sujet : Ravel. Demande : Pourquoi ?"~ */
  IF ~~ THEN REPLY #55642 /* ~"Je ne vois pas au juste… et pourtant, qui ne *désire pas* vivre pour toujours ?"~ */ DO ~SetGlobal("Nordom_Solution","GLOBAL",4)
~ GOTO 117
END

IF ~~ THEN BEGIN 122 // from: 117.2 130.2
  SAY #55644 /* ~"Attention : Citation : 'J'ai été quelqu'un, mais j'ai oublié' (lieu de mortalité). Attention : Citation précédente : 'Alors, qui que soit ce tueur, il n'essaie pas de me tuer mais de me faire *oublier* ?' Demande : objectif du meurtrier = meurtre nul, objectif du meurtrier = oublier = lieu de mortalité ?"~ */
  IF ~~ THEN REPLY #55645 /* ~"Alors selon toi, c'est le lieu de ma mortalité que le 'meurtrier' voulait que j'oublie ? Pourquoi ?"~ */ DO ~SetGlobal("Nordom_Solution","GLOBAL",5)
~ GOTO 123
END

IF ~~ THEN BEGIN 123 // from: 122.0
  SAY #55647 /* ~"Attention/Hypothèse : oublier lieu de mortalité = valeur du 'meurtrier'".~ */
  IF ~~ THEN REPLY #55648 /* ~"Hum. C'est une possibilité… Mais pourquoi la connaissance du *lieu* serait-elle importante ?"~ */ JOURNAL #55650 /* ~Nordom m'a fait une autre suggestion au sujet de mon "assassin" : selon lui, il se peut que ce dernier ne veuille pas me tuer, mais seulement me faire oublier quelque chose. S'il faut en croire le Pilier des Crânes, les gens qui savent où se trouve ma mortalité sont de moins en moins nombreux, et je n'en fait plus partie. Est-ce cela que mon assassin voulait que j'oublie ?~ */ GOTO 124
END

IF ~~ THEN BEGIN 124 // from: 123.0
  SAY #55653 /* ~"Correction : Lieu de mortalité NUL = valeur du 'meurtrier'".~ */
  IF ~~ THEN REPLY #55655 /* ~"Hum. C'est une possibilité… Alors quelqu'un veut que personne ne sache où c'est ? Ou ce meurtrier ne veut pas qu'en dehors de lui, quelqu'un sache où c'est ?"~ */ GOTO 117
END

IF ~~ THEN BEGIN 125 // from: 117.3 130.3
  SAY #55657 /* ~"Attention : Trias le Traître - Caractère : fausseté/Bouclier de mensonges dorés. Informations/Source : Trias, Précision des informations : douteuse."~ */
  IF ~  GlobalGT("Ravel_Nordom","GLOBAL",0)
~ THEN REPLY #55660 /* ~"Non, je ne pense pas qu'il mentait, Nordom ; il n'avait rien à y gagner… Si tu avais vu ses yeux. Non, il disait la vérité… cette fois. Pourquoi ce gardien retient-il ma mortalité ?"~ */ GOTO 127
  IF ~  Global("Ravel_Nordom","GLOBAL",0)
~ THEN REPLY #55662 /* ~"Non, je ne pense pas qu'il mentait, Nordom ; il n'avait rien à y gagner… Si tu avais vu ses yeux. Non, il disait la vérité… cette fois. Pourquoi ce gardien retient-il ma mortalité ?"~ */ GOTO 126
END

IF ~~ THEN BEGIN 126 // from: 125.1
  SAY #55664 /* ~"Supposition : le lieu de mortalité est une chose de valeur. Demande : la mortalité a de la valeur ?"~ */
  IF ~~ THEN REPLY #55666 /* ~"Tu sais, Ravel a dit que ma mortalité était précieuse… qu'on pourrait l'échanger contre une *rançon* ; me traiter comme une marionnette si quelqu'un la capturait."~ */ GOTO 128
END

IF ~~ THEN BEGIN 127 // from: 125.0
  SAY #55668 /* ~"Demande : Pourquoi ? Formulation… des motivations…" Nordom émet un *vrrrr*, puis un *chrrrup*. "Nordom se souvient de Ravel. Réponse : "- Inutile d'imaginer les horreurs qui pourraient t'arriver si quelqu'un voulait échanger ta mortalité contre RANÇON. Ce serait comme de conserver la douce et succulente âme de quelqu'un… tu ne serais plus qu'une marionnette entre les mains de quelqu'un d'autre, une marionnette bien triste." Nordom émet un *chrrrup*. "Remémoration terminée."~ */
  IF ~~ THEN REPLY #55669 /* ~"Exact… Ravel a dit que ma mortalité était précieuse… qu'on pouvait s'en servir pour exiger une rançon ou pour me contrôler. Mais ça voudrait dire que quelqu'un DEMANDE une rançon… Et puis, je n'ai pas servi de marionnette… enfin, je ne crois pas. Alors…"~ */ DO ~SetGlobal("Nordom_Solution","GLOBAL",6)
SetAnimState("Nordom",ANIM_MIMESTAND)
~ JOURNAL #55681 /* ~J’essaye de comprendre ce que recherche mon 'assassin', mais je bute sans cesse sur les mêmes fichus obstacles. Son seul objectif semble être de me faire oublier où se trouve ma mortalité. Il n'a jamais cherché à me faire chanter et il ne se sert pas de ma mortalité pour me contrôler - du moins, pas que je sache -. Peut-être ne la possède-t-il pas, à moins qu'il ne rechigne à s'en servir ? Je n'ai que des questions et pas assez de réponses.~ */ GOTO 129
END

IF ~~ THEN BEGIN 128 // from: 126.0
  SAY #55673 /* ~"Hypothèse : Rançon - Demande : reçu demande de rançon ?"~ */
  IF ~~ THEN REPLY #55675 /* ~"Tu as raison, il n'y en a pas eu. Et je ne connais pas ce gardien qui retient ma mortalité… mais il ne semble pas tirer sur mes ficelles pour me faire faire quelque chose… du moins à ma connaissance. Alors… ?"~ */ DO ~SetGlobal("Nordom_Solution","GLOBAL",6)
SetAnimState("Nordom",ANIM_MIMESTAND)
~ JOURNAL #55681 /* ~J’essaye de comprendre ce que recherche mon 'assassin', mais je bute sans cesse sur les mêmes fichus obstacles. Son seul objectif semble être de me faire oublier où se trouve ma mortalité. Il n'a jamais cherché à me faire chanter et il ne se sert pas de ma mortalité pour me contrôler - du moins, pas que je sache -. Peut-être ne la possède-t-il pas, à moins qu'il ne rechigne à s'en servir ? Je n'ai que des questions et pas assez de réponses.~ */ GOTO 129
END

IF ~~ THEN BEGIN 129 // from: 127.0 128.0
  SAY #55683 /* ~Nordom se tait. Il ne cligne même pas des yeux.~ */
  IF ~~ THEN REPLY #55685 /* ~"Alors… ma mortalité est enfermée dans cette maudite Forteresse, et plus les gens oublient où elle est, moins il y a de chance qu'elle soit jamais récupérée. Alors, j'ignore qui est ce gardien - est-il vraiment *le* tueur ? -, mais il ne veut certainement pas qu'on retrouve ma mortalité… ou du moins qu'on sache où elle est. Et pourtant… il n'a pas l'air de pouvoir ou de désirer utiliser ma mortalité pour me contrôler. Pourquoi ?"~ */ GOTO 117
END

IF ~~ THEN BEGIN 130 // from: 9.10 74.9
  SAY #55687 /* ~"Affirmatif. Demande : informations supplémentaires ?"~ */
  IF ~  Global("Know_Player_Killer","GLOBAL",1)
Global("Nordom_Solution","GLOBAL",2)
~ THEN REPLY #55689 /* ~"Eh bien, je crois qu'on veut m'assassiner… Au point que j'ai construit une tombe piégée pour essayer de les tuer. D'après une inscription dans la tombe, il me poursuit… depuis, euh, aussi longtemps que mes incarnations s'en souviennent, semble-t-il."~ */ GOTO 118
  IF ~  GlobalGT("Ravel","GLOBAL",0)
Global("Nordom_Solution","GLOBAL",3)
~ THEN REPLY #55691 /* ~"Une chose : je n'ai pas toujours été immortel… C'est Ravel qui m'a rendu comme ça."~ */ GOTO 121
  IF ~  Global("Know_Fortress_Location_Forgot","GLOBAL",1)
Global("Nordom_Solution","GLOBAL",4)
~ THEN REPLY #55692 /* ~"Les gens capables de m'aider à retrouver ma mortalité ou de me dire où elle est semblent se raréfier… Si ça continue, plus personne ne saura où se trouve ma mortalité. Le Pilier des Crânes a dit qu'il y en avait seulement trois… dont moi, mais j'ai oublié."~ */ GOTO 122
  IF ~  Global("Know_Keeper_Mortality","GLOBAL",1)
Global("Nordom_Solution","GLOBAL",5)
~ THEN REPLY #55694 /* ~"Trias a dit qu'il y a un 'gardien' dans cette Forteresse des regrets, et qu'il retient ma mortalité prisonnière."~ */ GOTO 125
  IF ~~ THEN REPLY #55697 /* ~"Aucune information supplémentaire pour l'instant, Nordom. Mais j'ai encore quelques questions à te poser…"~ */ GOTO 74
  IF ~~ THEN REPLY #55699 /* ~"Oublie ça, Nordom. Perdons pas de temps."~ */ EXIT
END

IF ~~ THEN BEGIN 131 // from:
  SAY #61281 /* ~"Pilier des Crânes : connu pour être composé des têtes vivantes de mortels ayant menti et dont les mensonges ont entraîné la mort d'autres mortels. Le Pilier sert de dépôt du savoir. Le Pilier exige une rétribution en échange du dit savoir… pas moins de 97 % du temps. En général, les demandes du Pilier sont d'un niveau que le commun des mortels taxerait de "très élevé". La logique voudrait donc qu'on n'adresse pas de requête au Pilier à moins d'une nécessité pareillement "très élevée".~ */
  IF ~~ THEN EXTERN ~DPILLAR~ 14
END

IF ~~ THEN BEGIN 132 // from:
  SAY #61673 /* ~"Jadis, j'étais 'un'. À présent je suis 'un', mais c'est un 'un' plus petit et plus bruyant."~ [NOR309] */
  IF ~~ THEN EXTERN ~BGRACE~ 17
END

IF ~~ THEN BEGIN 133 // from:
  SAY #61674 /* ~"Négatif."~ [NOR310A] */
  IF ~~ THEN EXTERN ~BGRACE~ 19
END

IF ~~ THEN BEGIN 134 // from:
  SAY #61675 /* ~"Je ne leur parle pas, je les écoute. Elles me demandaient quand elles auront encore l'occasion de tirer sur quelque chose."~ [NOR310B] */
  IF ~~ THEN EXTERN ~BGRACE~ 20
END

IF ~~ THEN BEGIN 135 // from:
  SAY #61676 /* ~"Là où il y avait deux ailes, il y a maintenant deux bras. J'ignore pourquoi j'ai perdu mes ailes."~ [NOR308A] */
  IF ~~ THEN EXTERN ~BGRACE~ 22
END

IF ~~ THEN BEGIN 136 // from:
  SAY #61677 /* ~"Le thème de 'tomber en disgrâce auprès des siens' - dans mon cas, la perte de mes ailes - est une chose que j'ai ressentie et cataloguée. Je l'ai observé chez beaucoup d'individus que j'ai rencontré."~ [NOR308B] */
  IF ~~ THEN DO ~IncrementGlobal("Grace_Talked_Nordom","GLOBAL",1)
~ EXIT
END

IF ~~ THEN BEGIN 137 // from:
  SAY #61678 /* ~"L'expression 'le plus mignon' est subjective. Je préfère celle de 'farouche guerrier cubique'."~ [NOR296] */
  IF ~~ THEN EXTERN ~BGRACE~ 24
END

IF ~~ THEN BEGIN 138 // from:
  SAY #61785 /* ~"Je n'ai pas d'ordre à recevoir de toi."~ [NOR284] */
  IF ~~ THEN DO ~SetGlobal("Morte_Talked_Nordom","GLOBAL",1)
~ EXIT
END

IF ~~ THEN BEGIN 139 // from:
  SAY #61786 /* ~"Cela t'est physiquement impossible sans bras de substitution. Et je ne suis pas numéroté comme un dé."~ [NOR283] */
  IF ~~ THEN EXTERN ~BMORTE~ 41
END

IF ~~ THEN BEGIN 140 // from:
  SAY #61787 /* ~"Elles n'en ont pas besoin. Elles sont toujours prêtes à tirer."~ [NOR306] */
  IF ~~ THEN EXTERN ~BMORTE~ 43
END

IF ~~ THEN BEGIN 141 // from:
  SAY #61788 /* ~"Elles ne cliquètent pas, elles discutent de ce voyage avec beaucoup d'animation."~ [NOR307] */
  IF ~~ THEN EXTERN ~BMORTE~ 45
END

IF ~~ THEN BEGIN 142 // from:
  SAY #61789 /* ~"Pourquoi me prends-tu pour une porte ?"~ [NOR305A] */
  IF ~~ THEN EXTERN ~BMORTE~ 47
END

IF ~~ THEN BEGIN 143 // from:
  SAY #61790 /* ~"Je sais qui est là : toi. Pourquoi devrais-je poser une question dont je connais la réponse ?"~ [NOR305B] */
  IF ~~ THEN EXTERN ~BMORTE~ 48
END

IF ~~ THEN BEGIN 144 // from:
  SAY #61791 /* ~"Annah ! Morte veut 'se blottir sur tes coussins'."~ [NOR285] */
  IF ~~ THEN EXTERN ~BMORTE~ 50
END

IF ~  Global("Fortress_Nordom","GLOBAL",3)
~ THEN BEGIN 145 // from:
  SAY #68234 /* ~Tu utilises ton pouvoir pour façonner l'âme en fonction de la forme de Nordom. Lentement, tu la sens réintégrer le corps du modrone. Ce dernier est pris d'un bref tremblement puis bondit sur ses pieds.~ */
  IF ~  Global("Absorb","GLOBAL",0)
~ THEN REPLY #68235 /* ~"Nordom, j'ai *vraiment* besoin de ton aide, maintenant. J'ai trouvé mon meurtrier ; il s'agit de ma mortalité."~ */ DO ~SetGlobal("Fortress_Nordom","GLOBAL",4)
JoinPartyEx(TRUE)
~ GOTO 146
  IF ~  GlobalGT("Absorb","GLOBAL",0)
~ THEN REPLY #68372 /* ~NORDOM.~ */ GOTO 147
END

IF ~~ THEN BEGIN 146 // from: 145.0
  SAY #68236 /* ~"En attente d'ordres."~ [NOR063] */
  IF ~  Global("Trans_Vanish","GLOBAL",0)
~ THEN REPLY #68237 /* ~"Prépare-toi. Tu auras bientôt une cible pour tes carreaux…"~ */ EXTERN ~DTRANS~ 142
  IF ~  Global("Trans_Vanish","GLOBAL",1)
~ THEN REPLY #68238 /* ~"Prépare-toi. Tu auras bientôt une cible pour tes carreaux…"~ */ DO ~StartCutSceneMode()
StartCutSceneEx("1204tr",FALSE)
~ EXIT
END

IF ~~ THEN BEGIN 147 // from: 145.1
  SAY #68373 /* ~Nordom cligne des yeux et les rideaux métalliques qui recouvrent ses globes oculaires cliquètent rapidement. Puis ses yeux deviennent deux points qui te fixent. "Ta voix excède les paramètres enregistrés."~ */
  IF ~~ THEN REPLY #68374 /* ~JE SUIS DE NOUVEAU… ENTIER. J'AI CHANGÉ, MAIS JE NE PUIS RESTER ICI BIEN LONGTEMPS. SI TU VEUX, JE PEUX TE RENVOYER À SIGIL.~ */ GOTO 148
END

IF ~~ THEN BEGIN 148 // from: 147.0
  SAY #68375 /* ~"Question : quelle est ta prochaine destination ? Nordom te suivra et te protègera."~ */
  IF ~~ THEN REPLY #68376 /* ~J'AI COMMIS BEAUCOUP DE CRIMES AU COURS DE MES NOMBREUSES VIES, ET JE DOIS DÉSORMAIS ÊTRE CHATIÉ. TU NE PEUX PAS ME SUIVRE.~ */ GOTO 149
END

IF ~~ THEN BEGIN 149 // from: 148.0
  SAY #68377 /* ~"Question subsidiaire : requiers-tu (ou non) ou souhaites-tu (ou non) la présence de Nordom ?"~ */
  IF ~~ THEN REPLY #68378 /* ~TU NE PEUX PAS ME SUIVRE, NORDOM. LE CHOIX NE VIENT PAS DE MOI. MES ACTES SONT GUIDÉS PAR LES PUISSANCES SUPÉRIEURES. ILS L'ONT TOUJOURS ÉTÉ MAIS, MAINTENANT QUE LES DIEUX SAVENT CE QUE JE SUIS VRAIMENT, ILS APPROCHENT ALORS MÊME QUE NOUS PARLONS.~ */ GOTO 150
END

IF ~~ THEN BEGIN 150 // from: 149.0
  SAY #68379 /* ~Nordom laisse échapper une succession de bruits métalliques, puis ses arbalètes lui répondent. "Nordom se confond en gratitude. Tu as aidé Nordom à trouver son indemnité."~ */
  IF ~~ THEN REPLY #68380 /* ~TOUT COMME TU M'AS AIDÉ À TROUVER LA MIENNE. JE TE RENDS TA LIBERTÉ, NORDOM. EXPLORE, APPRENDS, ET GRANDIS. PEUT-ÊTRE NOUS RENCONTRERONS-NOUS DE NOUVEAU, SUR UN AUTRE PLAN, DANS UN JOUR LOINTAIN.~ */ GOTO 151
END

IF ~~ THEN BEGIN 151 // from: 150.0
  SAY #68381 /* ~"Réponse : bien compris. Nordom attend ce jour."~ */
  IF ~~ THEN REPLY #68382 /* ~ACCROCHE-TOI À TA LOGIQUE, NORDOM. TU VERRAS QUE C'EST UN PLUS PUISSANT BOUCLIER QUE LA PLUPART DES PASSIONS QUI GOUVERNENT LES PLANS.~ */ GOTO 152
END

IF ~~ THEN BEGIN 152 // from: 151.0
  SAY #68383 /* ~"La question sort du cadre de la logique."~ [NOR149] */
  IF ~  GlobalGT("Fortress_Ignus","GLOBAL",0)
Global("Fortress_Ignus_Battle","GLOBAL",0)
~ THEN REPLY #68384 /* ~AU REVOIR, NORDOM.~ */ DO ~StartCutSceneMode()
StartCutSceneEx("1204i0",FALSE)
~ EXIT
  IF ~  GlobalGT("Fortress_Vhailor","GLOBAL",0)
Global("Fortress_Vhailor_Battle","GLOBAL",0)
Global("Fortress_Ignus","GLOBAL",0)
~ THEN REPLY #68385 /* ~AU REVOIR, NORDOM.~ */ DO ~StartCutSceneMode()
StartCutSceneEx("1204v0",FALSE)
~ EXIT
  IF ~  GlobalGT("Fortress_Vhailor","GLOBAL",0)
Global("Fortress_Vhailor_Battle","GLOBAL",0)
GlobalGT("Fortress_Ignus","GLOBAL",0)
Global("Fortress_Ignus_Battle","GLOBAL",1)
~ THEN REPLY #68386 /* ~AU REVOIR, NORDOM.~ */ DO ~StartCutSceneMode()
StartCutSceneEx("1204v0",FALSE)
~ EXIT
  IF ~  Global("Fortress_Vhailor","GLOBAL",0)
Global("Fortress_Ignus","GLOBAL",0)
~ THEN REPLY #68487 /* ~AU REVOIR, NORDOM.~ */ DO ~QuitGame(FINALE,0,0)
~ EXIT
  IF ~  GlobalGT("Fortress_Vhailor","GLOBAL",0)
Global("Fortress_Vhailor_Battle","GLOBAL",1)
Global("Fortress_Ignus","GLOBAL",0)
~ THEN REPLY #68488 /* ~AU REVOIR, NORDOM.~ */ DO ~QuitGame(FINALE,0,0)
~ EXIT
  IF ~  GlobalGT("Fortress_Ignus","GLOBAL",0)
Global("Fortress_Ignus_Battle","GLOBAL",1)
Global("Fortress_Vhailor","GLOBAL",0)
~ THEN REPLY #68489 /* ~AU REVOIR, NORDOM.~ */ DO ~QuitGame(FINALE,0,0)
~ EXIT
END

IF ~  Global("Fortress_Nordom","GLOBAL",4)
~ THEN BEGIN 153 // from:
  SAY #68414 /* ~"J'attends les ordres."~ [NOR063] */
  IF ~~ THEN REPLY #68415 /* ~"Bâcle ce truc de carreaux d'arbalètes, et on réfléchira au problème plus tard…"~ */ EXIT
END
