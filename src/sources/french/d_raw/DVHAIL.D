// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DVHAIL.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\fr_FR\dialog.tlk
// dialogF  : (none)

BEGIN ~DVHAIL~
//////////////////////////////////////////////////
// WARNING: this file contains non-trivial WEIGHTs
//////////////////////////////////////////////////

IF ~~ THEN BEGIN 0 // from:
  SAY #2848 /* ~Vhailor reste silencieux et immobile. Si ses yeux ne lançaient pas des éclairs rouges, on le prendrait pour une statue.~ */
  IF ~~ THEN REPLY #2849 /* ~Alors, je reviendrai plus tard, quand ce gros tas de ferraille pourra dire quelque chose.~ */ EXIT
  IF ~~ THEN REPLY #33998 /* ~"Allez… Vhailor. Secoue-toi les puces et dépêchons-nous. On a des injustices à réparer."~ */ DO ~SetGlobal("Vhailor","GLOBAL",2)
ChangeAIScript("pcvhail",DEFAULT)
JoinPartyEx(TRUE)
~ EXIT
END

IF ~~ THEN BEGIN 1 // from:
  SAY #16635 /* ~Vhailor se dresse immobile. Si la lueur rouge brillante dans ses yeux ne le trahissait pas, il pourrait passer pour une statue.~ */
  IF ~~ THEN REPLY #17003 /* ~"… Vhailor ? Tu m'entends ?"~ */ GOTO 2
END

IF ~~ THEN BEGIN 2 // from: 1.0
  SAY #16636 /* ~La voix de Vhailor finit par résonner sous son casque vide : *L'état de l'arbre est hors de propos pour moi. Sa mort n'est ni juste ni injuste - c'est un fait, c'est tout.*~ */
  IF ~  NearbyDialog("DMorte")
Global("Tree_M","AR0400",0)
~ THEN REPLY #17004 /* ~"Très bien. Morte ? Qu'est-ce que tu en penses ?"~ */ DO ~SetGlobal("Tree_M","AR0400",1)
~ EXTERN ~DMORTE~ 181
  IF ~  NearbyDialog("DAnnah")
Global("Tree_A","AR0400",0)
~ THEN REPLY #17005 /* ~"Très bien. Annah ? Tu pourrais ?"~ */ DO ~SetGlobal("Tree_A","AR0400",1)
~ EXTERN ~DANNAH~ 99
  IF ~  NearbyDialog("DIgnus")
Global("Tree_I","AR0400",0)
~ THEN REPLY #17006 /* ~"Très bien. Merci. Ignus ?"~ */ DO ~SetGlobal("Tree_I","AR0400",1)
~ EXTERN ~DIGNUS~ 11
  IF ~  NearbyDialog("DGrace")
Global("Tree_G","AR0400",0)
~ THEN REPLY #17007 /* ~"Très bien. Grâce, qu'en dites-vous ?"~ */ DO ~SetGlobal("Tree_G","AR0400",1)
~ EXTERN ~DGRACE~ 14
  IF ~  NearbyDialog("DDakkon")
Global("Tree_D","AR0400",0)
~ THEN REPLY #17008 /* ~"Très bien. Dak'kon, pourrais-tu aider cet homme ?"~ */ DO ~SetGlobal("Tree_D","AR0400",1)
~ EXTERN ~DDAKKON~ 74
  IF ~  NearbyDialog("DDakkon")
Global("Tree_D","AR0400",0)
Global("Dakkon_Slave","Global",1)
~ THEN REPLY #17009 /* ~"Très bien. Dak'kon : aide cet homme."~ */ DO ~IncrementGlobal("BD_DAKKON_MORALE","GLOBAL",-1)
SetGlobal("Tree_D","AR0400",1)
~ EXTERN ~DDAKKON~ 75
  IF ~  NearbyDialog("DNordom")
Global("Tree_N","AR0400",0)
~ THEN REPLY #17010 /* ~"Très bien. Nordom, tu penses que tu pourrais l'aider ?"~ */ DO ~SetGlobal("Tree_N","AR0400",1)
~ EXTERN ~DNORDOM~ 1
  IF ~~ THEN REPLY #17011 /* ~"Très bien. J'ai des questions, Deuils…"~ */ EXTERN ~DMFTREE~ 28
  IF ~~ THEN REPLY #17012 /* ~"Très bien, Vhailor. Au revoir, Deuils-pour-Arbres."~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from:
  SAY #30529 /* ~Alors que tu prends Iannis par la gorge, on entend le cliquetis d'une armure de plates et Vhailor s'avance, la hache brandie, prêt à frapper. *INJUSTICE*.~ */
  IF ~~ THEN REPLY #30530 /* ~"Bon sang…!"~ */ DO ~LeaveParty()
Enemy()
Attack(Protagonist)
ChangeAIScript("MDKTNO",DEFAULT)
ForceAttack(Protagonist,Myself)
~ EXIT
END

IF ~~ THEN BEGIN 4 // from:
  SAY #30531 /* ~Vhailor s'anime alors que tu te confesses, et brandit sa hache. Mais il n'attaque pas. Il *attend*.~ */
  IF ~~ THEN EXTERN ~DIANNIS~ 40
END

IF ~~ THEN BEGIN 5 // from:
  SAY #30532 /* ~Vhailor s'anime alors que Iannis appelle les gardes. Il avance sur toi, la hache brandie. *INJUSTICE*.~ */
  IF ~~ THEN REPLY #30533 /* ~"Bon sang…!"~ */ DO ~LeaveParty()
Enemy()
Attack(Protagonist)
ChangeAIScript("MDKTNO",DEFAULT)
ForceAttack(Protagonist,Myself)
~ EXIT
END

IF ~~ THEN BEGIN 6 // from:
  SAY #30534 /* ~Vhailor s'anime alors que tu te confesses, et brandit sa hache. Mais il n'attaque pas. Il *attend*.~ */
  IF ~~ THEN EXTERN ~DIANNIS~ 76
END

IF ~~ THEN BEGIN 7 // from:
  SAY #30535 /* ~Vhailor s'anime alors que tu te confesses, et brandit sa hache. Mais il n'attaque pas. Il *attend*.~ */
  IF ~~ THEN EXTERN ~DIANNIS~ 77
END

IF WEIGHT #1 /* Triggers after states #: 16 even though they appear after this state */
~  GlobalGT("Vhailor","GLOBAL",0)
!InParty("Vhail")
!GlobalGT("Fortress_Vhailor","GLOBAL",2)
~ THEN BEGIN 8 // from:
  SAY #33999 /* ~Vhailor se dresse immobile. Si la lueur rouge brillante dans ses yeux ne le trahissait pas, il pourrait passer pour une statue.~ */
  IF ~  GlobalGT("Vhailor_Join","GLOBAL",0)
~ THEN REPLY #34000 /* ~"Vhailor, j'ai besoin de ton aide. Tu veux bien faire le voyage avec moi ?"~ */ DO ~ChangeAIScript("pcvhail",DEFAULT)
JoinPartyEx(TRUE)
~ GOTO 9
  IF ~  Global("Vhailor_Join","GLOBAL",0)
~ THEN REPLY #34001 /* ~"Vhailor, j'ai besoin de ton aide. Tu veux bien faire le voyage avec moi ?"~ */ GOTO 82
  IF ~~ THEN REPLY #56052 /* ~Laisse Vhailor tranquille.~ */ EXIT
END

IF ~~ THEN BEGIN 9 // from: 8.0
  SAY #34002 /* ~*JE LE FERAI.*~ [VHA127] */
  IF ~~ THEN REPLY #34003 /* ~"Alors, allons-y."~ */ EXIT
END

IF WEIGHT #2 /* Triggers after states #: 16 even though they appear after this state */
~  InParty("Vhail")
!GlobalGT("Fortress_Vhailor","GLOBAL",2)
~ THEN BEGIN 10 // from:
  SAY #34004 /* ~Vhailor se dresse immobile. Si la lueur rouge brillante dans ses yeux ne le trahissait pas, il pourrait passer pour une statue.~ */
  IF ~~ THEN REPLY #34005 /* ~"Je voulais te poser quelques questions, Vhailor…"~ */ GOTO 35
  IF ~~ THEN REPLY #56053 /* ~Laisse Vhailor tranquille.~ */ EXIT
END

IF ~~ THEN BEGIN 11 // from:
  SAY #54088 /* ~*TOI. C'est TOI. COMBIEN de temps t'ai-je pourchassé, Sans-nom ? Et combien de temps devrai-je rester AUPRÈS de toi avant que la SUPERCHERIE ne soit révélée ?* Tandis qu'il lève la hache dans les airs, de *l'énergie* pure le parcourt… son dévouement, son incroyable conviction font de Vhailor l'expression littérale, physique, de la justice. *C'est le DESTIN qui m'a placé si près de toi, CRIMINEL. La JUSTICE sera faite. Tu TOMBERAS sous ma lame, immortel, même si je dois me tenir sur ton cadavre pour L'ÉTERNITÉ*.~ */
  IF ~~ THEN REPLY #54089 /* ~Défends-toi.~ */ DO ~LeaveParty()
Enemy()
Attack(Protagonist)
ChangeAIScript("MDKTNO",DEFAULT)
ForceAttack(Protagonist,Myself)
SetGlobal("Vhailor_Kill_Nameless","GLOBAL",1)
~ EXIT
  IF ~~ THEN REPLY #54090 /* ~Essaie de t'échapper~ */ DO ~LeaveParty()
Enemy()
Attack(Protagonist)
ChangeAIScript("MDKTNO",DEFAULT)
SetGlobal("Vhailor_Kill_Nameless","GLOBAL",1)
~ EXIT
END

IF ~~ THEN BEGIN 12 // from:
  SAY #54775 /* ~*Il n'y a aucune JUSTICE dans tes actions, deva. Cette fois, tu ne m'emprisonneras PAS avec de FAUSSES paroles. Cette fois, tu seras PUNI.* Vhailor s'avance sur Trias, hache à la main.~ */
  IF ~~ THEN REPLY #54776 /* ~"Vhailor, arrête !"~ */ EXTERN ~DTRIAS~ 70
  IF ~~ THEN REPLY #54777 /* ~Attaque Trias.~ */ EXTERN ~DTRIAS~ 70
END

IF ~~ THEN BEGIN 13 // from:
  SAY #54778 /* ~*Ça fait trop LONGTEMPS que tu défies la justice, deva. Avec ce CRIME, tu seras PUNI.* Vhailor s'avance sur Trias, hache à la main.~ */
  IF ~~ THEN REPLY #54779 /* ~"Vhailor, arrête !"~ */ EXTERN ~DTRIAS~ 70
  IF ~~ THEN REPLY #54780 /* ~Attaque Trias.~ */ EXTERN ~DTRIAS~ 70
END

IF ~~ THEN BEGIN 14 // from:
  SAY #54781 /* ~*Le deva ne partira PAS. Peu importe ta promesse, la JUSTICE doit être RENDUE.*~ */
  IF ~~ THEN REPLY #54779 /* ~"Vhailor, arrête !"~ */ EXTERN ~DTRIAS~ 113
  IF ~~ THEN REPLY #54782 /* ~Observe.~ */ EXTERN ~DTRIAS~ 113
  IF ~  Global("Lawful_Trias_1","GLOBAL",1)
~ THEN REPLY #54784 /* ~Attaque le deva, malgré ta promesse.~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Trias_1","GLOBALLaw",-3)
~ EXTERN ~DTRIAS~ 113
  IF ~  !Global("Lawful_Trias_1","GLOBAL",1)
~ THEN REPLY #54785 /* ~Attaque le deva.~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Trias_2","GLOBALGood",-1)
~ EXTERN ~DTRIAS~ 113
END

IF ~~ THEN BEGIN 15 // from:
  SAY #54859 /* ~Vhailor répond par un silence. En le regardant, tu vois ses yeux dardés sur toi. Ils vacillent un instant, comme songeurs. Tu as soudain la terrible impression qu'il étudie tes traits… comme s'il cherchait quelque chose… une faiblesse.~ */
  IF ~  NearbyDialog("Dignus")
InParty("Ignus")
~ THEN REPLY #54860 /* ~"Euh… Ignus ?"~ */ EXTERN ~DIGNUS~ 19
  IF ~  !InParty("ignus")
NearbyDialog("DGrace")
InParty("Grace")
~ THEN REPLY #54861 /* ~"Euh… Tombée-en-Disgrâce ?"~ */ EXTERN ~DGRACE~ 168
  IF ~  !InParty("ignus")
!InParty("Grace")
NearbyDialog("DAnnah")
InParty("Annah")
~ THEN REPLY #54862 /* ~"Euh… Annah ?"~ */ EXTERN ~DANNAH~ 272
  IF ~  !InParty("ignus")
!InParty("Grace")
!InParty("annah")
NearbyDialog("DDakkon")
GlobalLT("BD_DAKKON_MORALE","GLOBAL",6)
InParty("Dakkon")
~ THEN REPLY #54863 /* ~"Euh… Dak'kon ?"~ */ EXTERN ~DDAKKON~ 173
  IF ~  !InParty("ignus")
!InParty("Grace")
!InParty("annah")
NearbyDialog("DDakkon")
GlobalGT("BD_DAKKON_MORALE","GLOBAL",5)
InParty("Dakkon")
~ THEN REPLY #54864 /* ~"Euh… Dak'kon ?"~ */ EXTERN ~DDAKKON~ 172
  IF ~  !InParty("ignus")
!InParty("Grace")
!InParty("annah")
!InParty("Dakkon")
NearbyDialog("DMorte")
InParty("Morte")
Global("Morte_Quip_Regret_Portal","GLOBAL",0)
~ THEN REPLY #54865 /* ~"Euh… Morte ?"~ */ DO ~SetGlobal("Morte_Quip_Regret_Portal","GLOBAL",1)
~ EXTERN ~DMORTE~ 536
  IF ~  !InParty("ignus")
!InParty("Grace")
!InParty("annah")
!InParty("Dakkon")
NearbyDialog("DMorte")
InParty("Morte")
GlobalGT("Morte_Quip_Regret_Portal","GLOBAL",0)
~ THEN REPLY #54866 /* ~"Euh… Morte ?"~ */ EXTERN ~DMORTE~ 534
  IF ~  !NearbyDialog("DMorte")
~ THEN REPLY #54867 /* ~"Très bien… voyons ce qui se trouve de l'autre côté de ce portail."~ */ DO ~SetPortalCursor("Fort_Port",PORTAL_CURSOR_VISIBLE,TRUE)
SetPortalCursor("Fort_Port",PORTAL_ENABLED,TRUE)
~ EXIT
  IF ~  NearbyDialog("DMorte")
!InParty("Morte")
Global("Morte_Quip_Regret_Portal","GLOBAL",0)
~ THEN REPLY #54868 /* ~"Très bien… voyons ce qui se trouve de l'autre côté de ce portail."~ */ DO ~SetGlobal("Morte_Quip_Regret_Portal","GLOBAL",1)
~ EXTERN ~DMORTE~ 538
  IF ~  NearbyDialog("DMorte")
!InParty("Morte")
GlobalGT("Morte_Quip_Regret_Portal","GLOBAL",0)
~ THEN REPLY #54869 /* ~"Très bien… voyons ce qui se trouve de l'autre côté de ce portail."~ */ DO ~SetPortalCursor("Fort_Port",PORTAL_CURSOR_VISIBLE,TRUE)
SetPortalCursor("Fort_Port",PORTAL_ENABLED,TRUE)
~ EXIT
END

IF WEIGHT #0 ~  Global("Vhailor","GLOBAL",0)
!GlobalGT("Fortress_Vhailor","GLOBAL",2)
~ THEN BEGIN 16 // from:
  SAY #56054 /* ~Devant toi se dresse une armure vide… Ses plates sont suspendues dans l'air, comme maintenues par un cadre invisible. Les jambières sont parcourues de veines rouges et une énorme hache de bourreau à double tranchant repose dans la main. Des dessins sont gravés sur la surface de l'armure… le plus proéminent : un serpent écarlate aux ailes déployées.~ */
  IF ~  CheckStatGT(Protagonist,17,WIS)
~ THEN REPLY #56055 /* ~"Vhailor… ?"~ */ DO ~SetAnimState("Vhail",ANIM_MIMESTAND)
~ GOTO 20
  IF ~~ THEN REPLY #56056 /* ~Examine l'armure. ~ */ DO ~SetAnimState("Vhail",ANIM_MIMESTAND)
~ GOTO 17
  IF ~~ THEN REPLY #56057 /* ~Examine la hache.~ */ DO ~SetAnimState("Vhail",ANIM_MIMESTAND)
~ GOTO 18
  IF ~~ THEN REPLY #56058 /* ~Examine le heaume.~ */ DO ~SetAnimState("Vhail",ANIM_MIMESTAND)
~ GOTO 19
  IF ~~ THEN REPLY #56059 /* ~Laisse l'armure tranquille.~ */ EXIT
END

IF ~~ THEN BEGIN 17 // from: 16.1 18.1 19.1 20.2 21.1
  SAY #56060 /* ~C'est une armure ancienne et les bandes de métal des épaulières sont frustes : une simple rangée de lames faisant saillie sur les plates des épaules. Ces lames pourraient presque passer pour des décorations, n'était leur aspect trop lourd et dangereux pour être rien d'autre qu'une arme de plus sur une armure déjà menaçante. Tu remarques que l'armure est couverte de bosses et autres marques de combat, mais qu'elle n'a souffert ni de la rouille ni du temps ni de la poussière.~ */
  IF ~  CheckStatGT(Protagonist,17,WIS)
~ THEN REPLY #56061 /* ~"Vhailor… ?"~ */ DO ~SetAnimState("Vhail",ANIM_MIMESTAND)
~ GOTO 20
  IF ~~ THEN REPLY #56062 /* ~Examine la hache.~ */ DO ~SetAnimState("Vhail",ANIM_MIMESTAND)
~ GOTO 18
  IF ~~ THEN REPLY #56063 /* ~Examine le heaume.~ */ DO ~SetAnimState("Vhail",ANIM_MIMESTAND)
~ GOTO 19
  IF ~~ THEN REPLY #56064 /* ~Prends l'armure.~ */ DO ~Polymorph(Vhailor)
SetAnimState("Vhail",ANIM_MIMEATTACK1)
~ GOTO 23
  IF ~~ THEN REPLY #56065 /* ~Laisse l'armure tranquille.~ */ EXIT
END

IF ~~ THEN BEGIN 18 // from: 16.2 17.1 19.2 20.3 21.2
  SAY #56067 /* ~Cette hache d'armes à double tranchant rappelle une hache de bourreau ; la tête représente un serpent rouge sang aux ailes déployées, recourbées pour former les tranchants de la hache. La hache elle-même est *énorme* ; même à deux mains, il faudrait une force colossale pour la manier efficacement. Pourtant, elle est portée presque sans effort par le gantelet vide de l'armure.~ */
  IF ~  CheckStatGT(Protagonist,17,WIS)
~ THEN REPLY #56068 /* ~"Vhailor… ?"~ */ DO ~SetAnimState("Vhail",ANIM_MIMESTAND)
~ GOTO 20
  IF ~~ THEN REPLY #56069 /* ~Examine l'armure. ~ */ DO ~SetAnimState("Vhail",ANIM_MIMESTAND)
~ GOTO 17
  IF ~~ THEN REPLY #56070 /* ~Examine le heaume.~ */ DO ~SetAnimState("Vhail",ANIM_MIMESTAND)
~ GOTO 19
  IF ~~ THEN REPLY #56071 /* ~Prends la hache.~ */ DO ~Polymorph(Vhailor)
SetAnimState("Vhail",ANIM_MIMEATTACK1)
~ GOTO 23
  IF ~~ THEN REPLY #56072 /* ~Laisse l'armure tranquille.~ */ EXIT
END

IF ~~ THEN BEGIN 19 // from: 16.3 17.2 18.2 20.4 21.3
  SAY #56073 /* ~Le heaume ressemble à un crâne ; des dents métalliques recourbées s'alignent sur la mentonnière, au-dessus du vide. Le heaume flotte dans l'air, l'intérieur caché dans l'ombre.~ */
  IF ~  CheckStatGT(Protagonist,17,WIS)
~ THEN REPLY #56074 /* ~"Vhailor… ?"~ */ DO ~SetAnimState("Vhail",ANIM_MIMESTAND)
~ GOTO 20
  IF ~~ THEN REPLY #56075 /* ~Examine l'armure. ~ */ DO ~SetAnimState("Vhail",ANIM_MIMESTAND)
~ GOTO 17
  IF ~~ THEN REPLY #56076 /* ~Examine la hache.~ */ DO ~SetAnimState("Vhail",ANIM_MIMESTAND)
~ GOTO 18
  IF ~~ THEN REPLY #56077 /* ~Prends le heaume.~ */ DO ~Polymorph(Vhailor)
SetAnimState("Vhail",ANIM_MIMEATTACK1)
~ GOTO 23
  IF ~~ THEN REPLY #56078 /* ~Laisse l'armure tranquille.~ */ EXIT
END

IF ~~ THEN BEGIN 20 // from: 16.0 17.0 18.0 19.0
  SAY #56079 /* ~Tu ne sais pas d'où vient le nom, mais tu sais qu'il *appartient* à l'armure. Tu le prononces tout bas, mais il résonne étrangement dans la salle. L'air frémit à peine, juste assez pour qu'un frisson te traverse le crâne et pour t'étreindre le cœur.~ */
  IF ~  Global("Memory_Vhailor","GLOBAL",0)
~ THEN REPLY #56080 /* ~Essaie de te rappeler ce souvenir, de le ramener à la surface.~ */ DO ~SetAnimState("Vhail",ANIM_MIMESTAND)
SetGlobal("Memory_Vhailor","GLOBAL",1)
GiveExperience(Protagonist,60000)
~ GOTO 21
  IF ~  Global("Memory_Vhailor","GLOBAL",1)
~ THEN REPLY #56081 /* ~Laisse le souvenir revenir à la surface…~ */ DO ~SetAnimState("Vhail",ANIM_MIMESTAND)
~ GOTO 21
  IF ~~ THEN REPLY #56082 /* ~Examine l'armure. ~ */ DO ~SetAnimState("Vhail",ANIM_MIMESTAND)
~ GOTO 17
  IF ~~ THEN REPLY #56083 /* ~Examine la hache.~ */ DO ~SetAnimState("Vhail",ANIM_MIMESTAND)
~ GOTO 18
  IF ~~ THEN REPLY #56084 /* ~Examine le heaume.~ */ DO ~SetAnimState("Vhail",ANIM_MIMESTAND)
~ GOTO 19
  IF ~~ THEN REPLY #56085 /* ~Laisse l'armure tranquille.~ */ EXIT
END

IF ~~ THEN BEGIN 21 // from: 20.0 20.1
  SAY #56086 /* ~Tu scrutes l'armure… et les ombres sous la visière prennent forme… Elles se fondent dans les traits d'un homme puissant à la peau couleur d'ébène et aux yeux de braise. Il est couvert de cicatrices… Serait-ce 'Vhailor', lorsqu'il était de chair ? Apparition envoûtante car elle te semble familière… par l'armure ET par l'homme de chair et de sang.~ */
  IF ~~ THEN REPLY #56087 /* ~"Vhailor… réveille-toi."~ */ DO ~Polymorph(Vhailor)
SetAnimState("Vhail",ANIM_MIMEATTACK1)
~ GOTO 22
  IF ~~ THEN REPLY #56088 /* ~Examine l'armure. ~ */ DO ~SetAnimState("Vhail",ANIM_MIMESTAND)
~ GOTO 17
  IF ~~ THEN REPLY #56089 /* ~Examine la hache.~ */ DO ~SetAnimState("Vhail",ANIM_MIMESTAND)
~ GOTO 18
  IF ~~ THEN REPLY #56090 /* ~Examine le heaume.~ */ DO ~SetAnimState("Vhail",ANIM_MIMESTAND)
~ GOTO 19
  IF ~~ THEN REPLY #56091 /* ~Laisse l'armure tranquille.~ */ EXIT
END

IF ~~ THEN BEGIN 22 // from: 21.0
  SAY #56092 /* ~Un éclair éblouissant de lumière rouge jaillit de sous le heaume, presque aveuglant ; tu te protèges les yeux… Quand tu les rouvres, tu vois deux charbons ardents brûler au fond des ombres du heaume.~ */
  IF ~~ THEN GOTO 24
END

IF ~~ THEN BEGIN 23 // from: 17.3 18.3 19.3
  SAY #56093 /* ~Quand tu tends la main, un éclair éblouissant de lumière rouge jaillit de sous le heaume, presque aveuglant ; tu te protèges les yeux… Quand tu les rouvres, tu vois deux charbons ardents brûler au fond des ombres du heaume.~ */
  IF ~~ THEN GOTO 24
END

IF ~~ THEN BEGIN 24 // from: 22.0 23.0
  SAY #56094 /* ~*Je me suis RÉVEILLÉ.*~ [VHA002] */
  IF ~~ THEN DO ~SetAnimState("Vhail",ANIM_MIMESTAND)
~ GOTO 25
END

IF ~~ THEN BEGIN 25 // from: 24.0
  SAY #56095 /* ~La voix est spectrale, creuse… Elle résonne à l'intérieur de l'armure. Ce n'est pas une voix humaine… plutôt une *force*, une présence. Ça ne ressemble à rien de *vivant*… ou à rien qui ait jamais vécu.~ */
  IF ~~ THEN REPLY #56096 /* ~"Qui es-tu ?"~ */ DO ~SetGlobal("Vhailor","GLOBAL",1)
~ JOURNAL #56097 /* ~J'ai rencontré une armure spectrale dans les fins fonds de la prison de Maudith. On dirait qu'elle est là depuis longtemps. Elle dit s'appeler 'Vhailor' et être un Rectifieur, c'est-à-dire un serviteur de la justice.~ */ GOTO 26
END

IF ~~ THEN BEGIN 26 // from: 25.0
  SAY #56098 /* ~*Je suis VHAILOR.*~ */
  IF ~  NearbyDialog("Dmorte")
NearbyDialog("Dannah")
~ THEN REPLY #56099 /* ~"Tu es *quoi* ?"~ */ GOTO 27
  IF ~  NearbyDialog("Dmorte")
!NearbyDialog("Dannah")
~ THEN REPLY #56100 /* ~"Tu es *quoi* ?"~ */ GOTO 29
  IF ~  !NearbyDialog("Dmorte")
NearbyDialog("Dannah")
~ THEN REPLY #56101 /* ~"Tu es *quoi* ?"~ */ GOTO 28
  IF ~  !NearbyDialog("Dmorte")
!NearbyDialog("Dannah")
~ THEN REPLY #56102 /* ~"Tu es *quoi* ?"~ */ GOTO 30
END

IF ~~ THEN BEGIN 27 // from: 26.0
  SAY #56103 /* ~*Je suis un RECTIFIEUR.*~ */
  IF ~~ THEN DO ~SetAnimState("Vhail",ANIM_MIMESTAND)
~ GOTO 31
END

IF ~~ THEN BEGIN 28 // from: 26.2
  SAY #56104 /* ~*Je suis un RECTIFIEUR.*~ */
  IF ~~ THEN DO ~SetAnimState("Vhail",ANIM_MIMESTAND)
~ GOTO 32
END

IF ~~ THEN BEGIN 29 // from: 26.1
  SAY #56105 /* ~*Je suis un RECTIFIEUR.*~ */
  IF ~~ THEN DO ~SetAnimState("Vhail",ANIM_MIMESTAND)
~ GOTO 33
END

IF ~~ THEN BEGIN 30 // from: 26.3
  SAY #56106 /* ~*Je suis un RECTIFIEUR.*~ */
  IF ~~ THEN REPLY #56107 /* ~"Rectifieur ?"~ */ GOTO 34
END

IF ~~ THEN BEGIN 31 // from: 27.0
  SAY #56108 /* ~Lorsque Vhailor prononce le mot 'Rectifieur', Annah et Morte se raidissent.~ */
  IF ~~ THEN REPLY #56109 /* ~"Rectifieur ?"~ */ GOTO 34
END

IF ~~ THEN BEGIN 32 // from: 28.0
  SAY #56110 /* ~Lorsque Vhailor prononce le mot 'Rectifieur', Annah se raidit et, à voix basse, lance un avertissement.~ */
  IF ~~ THEN REPLY #56111 /* ~"Rectifieur ?"~ */ GOTO 34
END

IF ~~ THEN BEGIN 33 // from: 29.0
  SAY #56112 /* ~Lorsque Vhailor prononce le mot 'Rectifieur', Morte se fige à côté de toi.~ */
  IF ~~ THEN REPLY #56113 /* ~"Rectifieur ?"~ */ GOTO 34
END

IF ~~ THEN BEGIN 34 // from: 30.0 31.0 32.0 33.0 35.0
  SAY #56114 /* ~*Les Rectifieurs servent la JUSTICE. La justice PURGE le mal. Quand TOUT sera purifié, le multivers atteindra la PERFECTION.*~ */
  IF ~~ THEN REPLY #56115 /* ~"Pourquoi on vous appelle des 'Rectifieurs' ?"~ */ GOTO 36
  IF ~~ THEN REPLY #56116 /* ~"Comment servez-vous la justice ?"~ */ GOTO 83
  IF ~~ THEN REPLY #56117 /* ~"J'ai quelques questions à te poser, Vhailor…"~ */ GOTO 35
  IF ~  !InParty("Vhail")
~ THEN REPLY #56118 /* ~"Je… vois, Vhailor. C'est ici que nos chemins se séparent."~ */ EXIT
  IF ~  InParty("Vhail")
~ THEN REPLY #56119 /* ~"Peu importe, Vhailor. Poursuivons."~ */ EXIT
END

IF ~~ THEN BEGIN 35 // from: 10.0 34.2 36.3 37.0 38.2 39.1 40.1 41.1 42.1 43.1 44.1 45.2 48.1 49.1 50.1 51.2 52.0 53.1 55.1 56.1 57.1 58.1 59.0 60.1 61.2 65.1 68.0 69.0 70.1 71.2 72.1 73.2 74.0 75.2 76.1 77.2 83.2 84.2 88.1 89.2 90.10 91.10 92.1 93.2 105.2 106.2 107.4 108.16 109.1 115.1 116.2 117.2 118.1 119.1 120.2 121.2 122.2 123.2 126.3 127.2 146.0 151.0
  SAY #56120 /* ~*DEMANDE. Je RÉPONDRAI.*~ */
  IF ~~ THEN REPLY #56121 /* ~"C'est quoi, des Rectifieurs ?"~ */ GOTO 34
  IF ~~ THEN REPLY #56122 /* ~"Tu dis servir la justice, Vhailor. Comment ?"~ */ GOTO 83
  IF ~  Global("Current_Area","GLOBAL",702)
~ THEN REPLY #56123 /* ~"Combien de temps es-tu resté emprisonné ?"~ */ GOTO 55
  IF ~  !Global("Current_Area","GLOBAL",702)
~ THEN REPLY #56124 /* ~"Combien de temps es-tu resté emprisonné sous Maudith ?"~ */ GOTO 55
  IF ~~ THEN REPLY #56125 /* ~"Comment est-ce que tu es mort ?"~ */ DO ~SetAnimState("Vhail",ANIM_MIMESTAND)
~ GOTO 70
  IF ~  Global("Vhailor_Sight","GLOBAL",1)
~ THEN REPLY #56126 /* ~"Tu dis que tu peux lire dans les cœurs, Vhailor. Comment ?"~ */ GOTO 90
  IF ~  Class(Protagonist,FIGHTER)
InParty("Vhail")
Global("Vhailor_Teach","GLOBAL",0)
~ THEN REPLY #56127 /* ~"Peux-tu m'apprendre à manier une hache, Vhailor ?"~ */ GOTO 60
  IF ~  !InParty("Vhail")
GlobalGT("Law","GLOBAL",14)
Global("Vhailor_Join","GLOBAL",0)
~ THEN REPLY #56128 /* ~Mensonge : "Moi aussi, je cherche la justice, Vhailor. D'accord pour s'associer ?"~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Vhailor_2","GLOBALLaw",-1)
~ GOTO 78
  IF ~  !InParty("Vhail")
GlobalLT("Law","GLOBAL",15)
Global("Vhailor_Join","GLOBAL",0)
~ THEN REPLY #56129 /* ~Mensonge : "Moi aussi, je cherche la justice, Vhailor. D'accord pour s'associer ?"~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Vhailor_2","GLOBALLaw",-1)
~ GOTO 80
  IF ~  !InParty("Vhail")
GlobalGT("Law","GLOBAL",14)
Global("Vhailor_Join","GLOBAL",0)
~ THEN REPLY #56130 /* ~Vérité : "Moi aussi, je cherche la justice, Vhailor. D'accord pour s'associer ?"~ */ DO ~IncrementGlobalOnceEx("GLOBALLawful_Vhailor_2","GLOBALLaw",1)
IncrementGlobalOnceEx("GLOBALGood_Vhailor_2","GLOBALGood",1)
~ GOTO 78
  IF ~  !InParty("Vhail")
GlobalLT("Law","GLOBAL",15)
Global("Vhailor_Join","GLOBAL",0)
~ THEN REPLY #56131 /* ~Vérité : "Moi aussi, je cherche la justice, Vhailor. D'accord pour s'associer ?"~ */ DO ~IncrementGlobalOnceEx("GLOBALLawful_Vhailor_2","GLOBALLaw",1)
IncrementGlobalOnceEx("GLOBALGood_Vhailor_2","GLOBALGood",1)
~ GOTO 80
  IF ~  !InParty("Vhail")
~ THEN REPLY #56132 /* ~"Veux-tu voyager avec moi, Vhailor ? Ton aide ne serait pas de trop."~ */ GOTO 82
  IF ~  !InParty("Vhail")
~ THEN REPLY #56133 /* ~"Peu importe, Vhailor. C'est ici que nos chemins se séparent."~ */ EXIT
  IF ~  InParty("Vhail")
~ THEN REPLY #56134 /* ~"Peu importe, Vhailor. Poursuivons."~ */ EXIT
END

IF ~~ THEN BEGIN 36 // from: 34.0
  SAY #56135 /* ~*La pitié est le bouclier des FAIBLES. La pitié est FAIBLESSE. La pitié est la MORT. PERSONNE n'est innocent. Les Rectifieurs ne font pas de pardon à la pitié et à ses TRAÎNÉES, où que leur peste les ait portées.*~ */
  IF ~  Global("Vhailor_Mercy_Answer","GLOBAL",0)
~ THEN REPLY #56136 /* ~Vérité : "J'ai donc rencontré quelqu'un qui pense comme *moi*. La pitié corrompt la justice. La pitié *est* faiblesse."~ */ DO ~IncrementGlobalOnceEx("GLOBALLawful_Vhailor_1","GLOBALLaw",1)
IncrementGlobalOnceEx("GLOBALEvil_Vhailor_1","GLOBALGood",-1)
SetGlobal("Vhailor_Mercy_Answer","GLOBAL",1)
~ GOTO 37
  IF ~  Global("Vhailor_Mercy_Answer","GLOBAL",0)
~ THEN REPLY #56137 /* ~Mensonge : "J'ai donc rencontré quelqu'un qui pense comme *moi*. La pitié corrompt la justice. La pitié *est* faiblesse."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Vhailor_1","GLOBALLaw",-1)
SetGlobal("Vhailor_Mercy_Answer","GLOBAL",2)
~ GOTO 37
  IF ~  Global("Vhailor_Mercy_Answer","GLOBAL",0)
~ THEN REPLY #56138 /* ~Vérité : "Objection votre honneur ! La pitié est la force… et il arrive que même la justice soit injuste, surtout lorsqu'elle est rendue dans toute sa rigueur."~ */ DO ~IncrementGlobalOnceEx("GLOBALGood_Vhailor_1","GLOBALGood",1)
SetGlobal("Vhailor_Mercy_Answer","GLOBAL",3)
~ GOTO 38
  IF ~~ THEN REPLY #56139 /* ~"Je vois. J'ai encore des questions à te poser…"~ */ GOTO 35
  IF ~  !InParty("Vhail")
~ THEN REPLY #56140 /* ~"C'est ici que nos chemins se séparent, Vhailor. Au revoir."~ */ EXIT
  IF ~  InParty("Vhail")
~ THEN REPLY #56141 /* ~"Peu importe, Vhailor. Poursuivons."~ */ EXIT
END

IF ~~ THEN BEGIN 37 // from: 36.0 36.1
  SAY #56142 /* ~*Le châtiment BRISE les âmes. Il les rend bonnes pour servir la JUSTICE.*~ */
  IF ~~ THEN REPLY #56143 /* ~"Je vois. J'ai encore des questions à te poser…"~ */ GOTO 35
  IF ~  !InParty("Vhail")
~ THEN REPLY #56144 /* ~"C'est ici que nos chemins se séparent, Vhailor. Au revoir."~ */ EXIT
  IF ~  InParty("Vhail")
~ THEN REPLY #56145 /* ~"Peu importe, Vhailor. Poursuivons."~ */ EXIT
END

IF ~~ THEN BEGIN 38 // from: 36.2
  SAY #56146 /* ~*La pitié ronge la JUSTICE en son cœur. PERSONNE n'est INNOCENT.*~ */
  IF ~  CheckStatGT(Protagonist,15,WIS)
~ THEN REPLY #56147 /* ~"Qu'est-ce qui *définit* la justice, Vhailor ? Qu'est-ce que c'EST, exactement ?"~ */ GOTO 39
  IF ~  CheckStatGT(Protagonist,15,INT)
~ THEN REPLY #56148 /* ~"Si on suit tes paroles, toi non plus, tu n'es pas innocent. Devrais-*tu* être puni ?"~ */ GOTO 48
  IF ~~ THEN REPLY #56149 /* ~"Très bien. J'ai encore des questions à te poser…"~ */ GOTO 35
  IF ~  !InParty("Vhail")
~ THEN REPLY #56150 /* ~"C'est ici que nos chemins se séparent, Vhailor. Au revoir."~ */ EXIT
  IF ~  InParty("Vhail")
~ THEN REPLY #56151 /* ~"On ne va pas passer le réveillon là-dessus, Vhailor. Poursuivons."~ */ EXIT
END

IF ~~ THEN BEGIN 39 // from: 38.0
  SAY #56152 /* ~*La JUSTICE est définie par la LOI.*~ */
  IF ~~ THEN REPLY #56153 /* ~"Et c'est quoi, la loi, Vhailor ?"~ */ GOTO 40
  IF ~~ THEN REPLY #56154 /* ~"Très bien. J'ai encore des questions à te poser…"~ */ GOTO 35
  IF ~  !InParty("Vhail")
~ THEN REPLY #56155 /* ~"C'est ici que nos chemins se séparent, Vhailor. Au revoir."~ */ EXIT
  IF ~  InParty("Vhail")
~ THEN REPLY #56156 /* ~"On ne va pas passer le réveillon là-dessus, Vhailor. Poursuivons."~ */ EXIT
END

IF ~~ THEN BEGIN 40 // from: 39.0
  SAY #56157 /* ~*La LOI est l'instrument qui sert la JUSTICE.*~ */
  IF ~~ THEN REPLY #56158 /* ~"Et qu'est-ce qui fait les lois, Vhailor ?"~ */ GOTO 41
  IF ~~ THEN REPLY #56159 /* ~"Très bien. J'ai encore des questions à te poser…"~ */ GOTO 35
  IF ~  !InParty("Vhail")
~ THEN REPLY #56160 /* ~"C'est ici que nos chemins se séparent, Vhailor. Au revoir."~ */ EXIT
  IF ~  InParty("Vhail")
~ THEN REPLY #56161 /* ~"On ne va pas passer le réveillon là-dessus, Vhailor. Poursuivons."~ */ EXIT
END

IF ~~ THEN BEGIN 41 // from: 40.0
  SAY #56162 /* ~*La LOI est définie par la JUSTICE.*~ */
  IF ~~ THEN REPLY #56163 /* ~"Mais c'est le serpent qui se mord la queue, Vhailor… ça n'a pas de sens. Tu dis que la justice se définit par la loi, qui se définit par la justice."~ */ GOTO 42
  IF ~~ THEN REPLY #56164 /* ~"Très bien. J'ai encore des questions à te poser…"~ */ GOTO 35
  IF ~  !InParty("Vhail")
~ THEN REPLY #56165 /* ~"C'est ici que nos chemins se séparent, Vhailor. Au revoir."~ */ EXIT
  IF ~  InParty("Vhail")
~ THEN REPLY #56166 /* ~"On ne va pas passer le réveillon là-dessus, Vhailor. Poursuivons."~ */ EXIT
END

IF ~~ THEN BEGIN 42 // from: 41.0
  SAY #56167 /* ~*La LOI -EST- définie par la JUSTICE.*~ */
  IF ~~ THEN REPLY #56168 /* ~"Les vivants, hommes et femmes, font des lois, Vhailor… Leurs lois sont-elles 'justes' ?"~ */ GOTO 43
  IF ~~ THEN REPLY #56169 /* ~"Très bien. J'ai encore des questions à te poser…"~ */ GOTO 35
  IF ~  !InParty("Vhail")
~ THEN REPLY #56170 /* ~"C'est ici que nos chemins se séparent, Vhailor. Au revoir."~ */ EXIT
  IF ~  InParty("Vhail")
~ THEN REPLY #56171 /* ~"On ne va pas passer le réveillon là-dessus, Vhailor. Poursuivons."~ */ EXIT
END

IF ~~ THEN BEGIN 43 // from: 42.0
  SAY #56172 /* ~*Les LOIS sont JUSTES.*~ */
  IF ~~ THEN REPLY #56173 /* ~"Mais si ces lois sont faites par des vivants, hommes et femmes - qui, selon *toi*, ne sont PAS innocents -, alors les lois n'ont-elles pas été souillées par leurs mains ?"~ */ GOTO 44
  IF ~~ THEN REPLY #56174 /* ~"Très bien. J'ai encore des questions à te poser…"~ */ GOTO 35
  IF ~  !InParty("Vhail")
~ THEN REPLY #56175 /* ~"C'est ici que nos chemins se séparent, Vhailor. Au revoir."~ */ EXIT
  IF ~  InParty("Vhail")
~ THEN REPLY #56176 /* ~"On ne va pas passer le réveillon là-dessus, Vhailor. Poursuivons."~ */ EXIT
END

IF ~~ THEN BEGIN 44 // from: 43.0
  SAY #56177 /* ~*RIEN de ce qui vit n'est INNOCENT. Pourtant, la LOI s'élève AU-DESSUS de la chair et du sang. DE L'IMPERFECTION PEUT NAÎTRE LA PERFECTION. Les LOIS INJUSTES peuvent être CORRIGÉES. SAIGNÉES DE LEUR MAL.*~ */
  IF ~~ THEN REPLY #56178 /* ~"Donc, tu admets que les lois ne sont pas toujours parfaites… Mais si ces mêmes lois définissent la justice, alors la *justice* n'est-elle pas elle aussi imparfaite ?"~ */ DO ~SetAnimState("Vhail",ANIM_MIMESTAND)
~ GOTO 45
  IF ~~ THEN REPLY #56179 /* ~"Très bien. J'ai encore des questions à te poser…"~ */ GOTO 35
  IF ~  !InParty("Vhail")
~ THEN REPLY #56180 /* ~"C'est ici que nos chemins se séparent, Vhailor. Au revoir."~ */ EXIT
  IF ~  InParty("Vhail")
~ THEN REPLY #56181 /* ~"On ne va pas passer le réveillon là-dessus, Vhailor. Poursuivons."~ */ EXIT
END

IF ~~ THEN BEGIN 45 // from: 44.0
  SAY #56182 /* ~Vhailor reste silencieux.~ */
  IF ~  CheckStatGT(Protagonist,20,CHR)
~ THEN REPLY #56183 /* ~"Vhailor… il n'y a PAS de justice. Tout ce que tu fais n'a aucun sens… Ta VIE n'a aucun sens."~ */ DO ~SetAnimState("Vhail",ANIM_MIMEDIE)
AddexperienceParty(90000)
~ JOURNAL #56188 /* ~J'ai convaincu Vhailor que sa quête n'avait aucun sens. Il pensait en effet que la justice et la loi étaient totalement imbriquées, à telle point que, si l'une d'elles était imparfaite, alors l'autre l'était forcément aussi. S'il était plus intelligent, il aurait sans doute été capable d'argumenter, mais l'obsession qui l'a transformé en mort-vivant l'empêche de réfléchir en dehors d'un cadre très restreint. Quand il a compris mes arguments, ses doutes l'ont tué, en l'incitant à "rendre l'âme".~ */ GOTO 46
  IF ~  CheckStatLT(Protagonist,21,CHR)
~ THEN REPLY #56184 /* ~"Vhailor… il n'y a PAS de justice. Tout ce que tu fais n'a aucun sens… Ta VIE n'a aucun sens."~ */ GOTO 47
  IF ~~ THEN REPLY #56185 /* ~"Peu importe, Vhailor. J'ai encore des questions à te poser…"~ */ GOTO 35
  IF ~  !InParty("Vhail")
~ THEN REPLY #56186 /* ~"C'est ici que nos chemins se séparent, Vhailor. Au revoir."~ */ EXIT
  IF ~  InParty("Vhail")
~ THEN REPLY #56187 /* ~"On ne va pas passer le réveillon là-dessus, Vhailor. Poursuivons."~ */ EXIT
END

IF ~~ THEN BEGIN 46 // from: 45.0
  SAY #56189 /* ~Tes paroles semblent résonner, aller en s'amplifiant. Au même instant, les braises dans les yeux de Vhailor vacillent… et se mettent à couler. Son armure s'effondre, la hache et les plates métalliques s'affaissant dans un fracas de ferraille. Mais en touchant terre, elles soulèvent des nuages de poussière…  des particules de cendre et de rouille montent du métal, tandis que les plates et la hache vieillissent et se désagrègent sous tes yeux. Restent seulement quelques plates métalliques trouées comme vestige de l'existence passée de Vhailor.~ */
  IF ~~ THEN REPLY #56190 /* ~"Au revoir, Vhailor."~ */ DO ~LeaveParty()
Kill(Myself)
SetGlobal("Belief_Kill_Vhailor","GLOBAL",1)
~ EXIT
END

IF ~~ THEN BEGIN 47 // from: 45.1
  SAY #56191 /* ~Au fond des yeux de Vhailor, les braises vacillent… puis FLAMBOIENT. *Tes PAROLES ne me sont RIEN. Tu veux me faire DEVIER du CHEMIN DE LA JUSTICE.* Il lève sa hache d'un air menaçant. *Sois PUNI.*~ */
  IF ~~ THEN REPLY #56192 /* ~"Vhailor, attends ! Fais pas ça !"~ */ DO ~LeaveParty()
Enemy()
Attack(Protagonist)
ChangeAIScript("MDKTNO",DEFAULT)
~ EXIT
  IF ~~ THEN REPLY #56193 /* ~"Très bien, Vhailor. Si c'est le combat que tu veux…"~ */ DO ~LeaveParty()
Enemy()
Attack(Protagonist)
ChangeAIScript("MDKTNO",DEFAULT)
ForceAttack(Protagonist,Myself)
~ EXIT
END

IF ~~ THEN BEGIN 48 // from: 38.1
  SAY #56194 /* ~*JE SERS LA JUSTICE. SI JE FAILLAIS À MA MISSION, JE SERAIS PUNI.*~ */
  IF ~~ THEN REPLY #56195 /* ~"Donc, si jamais tu avais laissé un criminel échapper au châtiment, toi-même tu serais puni ?"~ */ GOTO 49
  IF ~~ THEN REPLY #56196 /* ~"Très bien. J'ai encore des questions à te poser…"~ */ GOTO 35
  IF ~  !InParty("Vhail")
~ THEN REPLY #56197 /* ~"C'est ici que nos chemins se séparent, Vhailor. Au revoir."~ */ EXIT
  IF ~  InParty("Vhail")
~ THEN REPLY #56198 /* ~"Peu importe, Vhailor. Poursuivons."~ */ EXIT
END

IF ~~ THEN BEGIN 49 // from: 48.0
  SAY #56199 /* ~*OUI.*~ */
  IF ~~ THEN REPLY #56200 /* ~"Mais pendant que tu étais emprisonné sous Maudith, des milliers, des centaines de milliers… peut-être des millions de criminels sont nés dans les plans, ont vécu leur vie et sont morts. Et *jamais* tu n'as eu l'occasion de les punir. Peux-tu vraiment faire justice à toutes les créatures du multivers ?"~ */ GOTO 50
  IF ~~ THEN REPLY #56201 /* ~"Très bien. J'ai encore des questions à te poser…"~ */ GOTO 35
  IF ~  !InParty("Vhail")
~ THEN REPLY #56202 /* ~"C'est ici que nos chemins se séparent, Vhailor. Au revoir."~ */ EXIT
  IF ~  InParty("Vhail")
~ THEN REPLY #56203 /* ~"Peu importe, Vhailor. Poursuivons."~ */ EXIT
END

IF ~~ THEN BEGIN 50 // from: 49.0
  SAY #56204 /* ~*Alors, j'irai les chercher PAR-DELA la mort pour les punir.*~ */
  IF ~~ THEN REPLY #56205 /* ~"Dans ce cas, tu ne pourras plus punir les vivants. Alors, que fais-tu, Vhailor?"~ */ GOTO 51
  IF ~~ THEN REPLY #56206 /* ~"Très bien. J'ai encore des questions à te poser…"~ */ GOTO 35
  IF ~  !InParty("Vhail")
~ THEN REPLY #56207 /* ~"C'est ici que nos chemins se séparent, Vhailor. Au revoir."~ */ EXIT
  IF ~  InParty("Vhail")
~ THEN REPLY #56208 /* ~"Peu importe, Vhailor. Poursuivons."~ */ EXIT
END

IF ~~ THEN BEGIN 51 // from: 50.0
  SAY #56209 /* ~*Alors, je poursuivrai ma quête de JUSTICE sur le plan des VIVANTS.*~ */
  IF ~  CheckStatLT(Protagonist,21,CHR)
~ THEN REPLY #56210 /* ~"Mais il y a bien plus de criminels morts que vivants… et tout ce qui vit meurt, non ? Si tu meurs, alors tu pourras tous les atteindre."~ */ GOTO 52
  IF ~  CheckStatGT(Protagonist,20,CHR)
~ THEN REPLY #56211 /* ~"Mais il y a bien plus de criminels morts que vivants… et tout ce qui vit meurt, non ? Si tu meurs, alors tu pourras tous les atteindre."~ */ DO ~SetAnimState("Vhail",ANIM_MIMESTAND)
~ GOTO 53
  IF ~~ THEN REPLY #56212 /* ~"Très bien. J'ai encore des questions à te poser…"~ */ GOTO 35
  IF ~  !InParty("Vhail")
~ THEN REPLY #56213 /* ~"C'est ici que nos chemins se séparent, Vhailor. Au revoir."~ */ EXIT
  IF ~  InParty("Vhail")
~ THEN REPLY #56214 /* ~"Peu importe, Vhailor. Poursuivons."~ */ EXIT
END

IF ~~ THEN BEGIN 52 // from: 51.0
  SAY #56217 /* ~*Tes paroles sont CREUSES. Elles manquent de CONVICTION. Elles empestent MENSONGE et TROMPERIE. Silence !*~ */
  IF ~~ THEN REPLY #56218 /* ~"Très bien. J'ai encore des questions à te poser…"~ */ GOTO 35
  IF ~  !InParty("Vhail")
~ THEN REPLY #56219 /* ~"Dans ce cas, c'est ici que nos chemins se séparent, Vhailor. Au revoir."~ */ EXIT
  IF ~  InParty("Vhail")
~ THEN REPLY #56220 /* ~"Peu importe, Vhailor. Poursuivons."~ */ EXIT
END

IF ~~ THEN BEGIN 53 // from: 51.1
  SAY #56221 /* ~Vhailor reste silencieux, ses yeux de braise scrutant de sous son heaume.~ */
  IF ~~ THEN REPLY #56222 /* ~"Va les chercher par-delà la mort, Vhailor… peut-être qu'un jour, je te retrouverai là-bas."~ */ DO ~SetAnimState("Vhail",ANIM_MIMEDIE)
AddexperienceParty(90000)
~ GOTO 54
  IF ~~ THEN REPLY #56223 /* ~"Oublie ce que je t'ai dit, Vhailor. J'ai encore des questions à te poser…"~ */ GOTO 35
  IF ~  !InParty("Vhail")
~ THEN REPLY #56224 /* ~"C'est ici que nos chemins se séparent, Vhailor. Au revoir."~ */ EXIT
  IF ~  InParty("Vhail")
~ THEN REPLY #56225 /* ~"Peu importe, Vhailor. Poursuivons."~ */ EXIT
END

IF ~~ THEN BEGIN 54 // from: 53.0
  SAY #56226 /* ~Tes paroles semblent résonner, aller en s'amplifiant. Au même instant, les braises dans les yeux de Vhailor vacillent… et se mettent à couler. Son armure s'effondre, la hache et les plates métalliques s'affaissant dans un fracas de ferraille. Mais en touchant terre, elles soulèvent des nuages de poussière…  des particules de cendre et de rouille montent du métal, tandis que les plates et la hache vieillissent et se désagrègent sous tes yeux. Restent seulement quelques plates métalliques trouées comme vestige de l'existence passée de Vhailor.~ */
  IF ~~ THEN REPLY #56227 /* ~"Repose en paix, Vhailor."~ */ DO ~LeaveParty()
Kill(Myself)
SetGlobal("Belief_Kill_Vhailor","GLOBAL",1)
~ JOURNAL #56228 /* ~J'ai convaincu Vhailor qu'il devrait mourir s'il souhaitait vraiment châtier tous les criminels. Mes arguments l'ont manifestement persuadé, puisqu'il est mort une seconde fois sous mes yeux. Son armure et sa hache se sont désintégrées quand il a "rendu l'âme".~ */ EXIT
END

IF ~~ THEN BEGIN 55 // from: 35.2 35.3
  SAY #56229 /* ~*Le temps a PASSÉ pendant que je gisais dans ma prison. Le temps n'est RIEN. Seule la JUSTICE importe.*~ */
  IF ~~ THEN REPLY #56230 /* ~"Sais-tu *pourquoi* tu es venu à Maudith ?"~ */ GOTO 56
  IF ~~ THEN REPLY #56231 /* ~"Très bien. J'ai encore des questions à te poser…"~ */ GOTO 35
  IF ~  !InParty("Vhail")
~ THEN REPLY #56232 /* ~"C'est ici que nos chemins se séparent, Vhailor. Au revoir."~ */ EXIT
  IF ~  InParty("Vhail")
~ THEN REPLY #56233 /* ~"Peu importe, Vhailor. Poursuivons."~ */ EXIT
END

IF ~~ THEN BEGIN 56 // from: 55.0
  SAY #56234 /* ~*Il reste peu de choses de mon voyage à la poursuite des TRAÎTRES. Ils m'ont trouvé et emprisonné. Un acte de TRAÎTRISE.*~ */
  IF ~~ THEN REPLY #56235 /* ~"Quels traîtres ?"~ */ GOTO 57
  IF ~~ THEN REPLY #56236 /* ~"Très bien. J'ai encore des questions à te poser…"~ */ GOTO 35
  IF ~  !InParty("Vhail")
~ THEN REPLY #56237 /* ~"C'est ici que nos chemins se séparent, Vhailor. Au revoir."~ */ EXIT
  IF ~  InParty("Vhail")
~ THEN REPLY #56238 /* ~"Peu importe, Vhailor. Poursuivons."~ */ EXIT
END

IF ~~ THEN BEGIN 57 // from: 56.0
  SAY #56239 /* ~*Maudith est une CITÉ de TRAÎTRES. Une cité qui défie la JUSTICE. Je suis venu la PURIFIER.*~ */
  IF ~~ THEN REPLY #56240 /* ~"Comment t'es-tu fait emprisonner ?"~ */ DO ~SetAnimState("Vhail",ANIM_MIMESTAND)
~ GOTO 58
  IF ~~ THEN REPLY #56241 /* ~"Très bien. J'ai encore des questions à te poser…"~ */ GOTO 35
  IF ~  !InParty("Vhail")
~ THEN REPLY #56242 /* ~"C'est ici que nos chemins se séparent, Vhailor. Au revoir."~ */ EXIT
  IF ~  InParty("Vhail")
~ THEN REPLY #56243 /* ~"Peu importe, Vhailor. Poursuivons."~ */ EXIT
END

IF ~~ THEN BEGIN 58 // from: 57.0
  SAY #56244 /* ~Vhailor reste un moment silencieux. Au fond de ses yeux, les braises vacillent.~ */
  IF ~~ THEN REPLY #56245 /* ~"Vhailor ? Te souviens-tu comment ils t'ont emprisonné ?"~ */ GOTO 59
  IF ~~ THEN REPLY #56246 /* ~"Oublie ce que je t'ai dit, Vhailor. J'ai encore des questions à te poser…"~ */ GOTO 35
  IF ~  !InParty("Vhail")
~ THEN REPLY #56247 /* ~"C'est ici que nos chemins se séparent, Vhailor. Au revoir."~ */ EXIT
  IF ~  InParty("Vhail")
~ THEN REPLY #56248 /* ~"Peu importe, Vhailor. Poursuivons."~ */ EXIT
END

IF ~~ THEN BEGIN 59 // from: 58.0
  SAY #56249 /* ~*Je ne SAIS pas.*~ */
  IF ~~ THEN REPLY #56250 /* ~"Très bien. J'ai encore des questions à te poser…"~ */ GOTO 35
  IF ~  !InParty("Vhail")
~ THEN REPLY #56251 /* ~"Dans ce cas, c'est ici que nos chemins se séparent, Vhailor. Au revoir."~ */ EXIT
  IF ~  InParty("Vhail")
~ THEN REPLY #56252 /* ~"Ah, peu importe, Vhailor. Poursuivons."~ */ EXIT
END

IF ~~ THEN BEGIN 60 // from: 35.6
  SAY #56253 /* ~*Il n'est rien que je puisse t'enseigner. Ce n'est pas la MAIN qui tient l'arme, mais la VOLONTÉ.*~ */
  IF ~~ THEN REPLY #56254 /* ~"Qu'est-ce que tu veux dire ?"~ */ GOTO 61
  IF ~~ THEN REPLY #56255 /* ~"D'accord, d'accord, Vhailor. J'ai encore des questions à te poser…"~ */ GOTO 35
  IF ~~ THEN REPLY #56256 /* ~"Peu importe, Vhailor. Poursuivons."~ */ EXIT
END

IF ~~ THEN BEGIN 61 // from: 60.0
  SAY #56257 /* ~*Si la VOLONTÉ est forte, la LAME aussi. Si la cause est JUSTE, la lame frappe JUSTE également. Si la pitié ronge le cœur, DOUTE, HÉSITATION et COMPASSION suivent. La lame n'est plus rien que POUSSIÈRE.*~ */
  IF ~  GlobalGT("Law","GLOBAL",14)
~ THEN REPLY #56258 /* ~"Ma volonté est forte, Vhailor. Ma conviction donne de la force à ma lame."~ */ DO ~SetAnimState("Vhail",ANIM_MIMESTAND)
~ GOTO 62
  IF ~  GlobalLT("Law","GLOBAL",15)
~ THEN REPLY #56259 /* ~"Ma volonté est forte, Vhailor. Ma conviction donne de la force à ma lame."~ */ DO ~SetAnimState("Vhail",ANIM_MIMESTAND)
~ GOTO 69
  IF ~~ THEN REPLY #56260 /* ~"D'accord, d'accord, Vhailor. J'ai encore des questions à te poser…"~ */ GOTO 35
  IF ~~ THEN REPLY #56261 /* ~"Peu importe, Vhailor. Poursuivons."~ */ EXIT
END

IF ~~ THEN BEGIN 62 // from: 61.0
  SAY #56262 /* ~Les yeux de braise de Vhailor se posent sur toi. Suit un lourd silence.~ */
  IF ~~ THEN GOTO 63
END

IF ~~ THEN BEGIN 63 // from: 62.0
  SAY #56263 /* ~*Ta VOLONTÉ est forte. Ta DISCIPLINE est forte. Ta VOLONTÉ est celle de la LOI.*~ */
  IF ~~ THEN REPLY #56264 /* ~"Mais alors, comment tu… ?"~ */ GOTO 64
END

IF ~~ THEN BEGIN 64 // from: 63.0
  SAY #56265 /* ~*SACHE CECI : rien sur les PLANS ne peut ARRÊTER la main de la JUSTICE quand elle se dresse contre eux. Elle peut défaire des ARMÉES. Elle peut briser les trônes des DIEUX. Si ta cause est JUSTE, la JUSTICE te prêtera sa FORCE.*~ */
  IF ~~ THEN REPLY #56266 /* ~"Je vois."~ */ DO ~SetGlobal("Vhailor_Kill_Nameless","GLOBAL",1)
~ GOTO 65
END

IF ~~ THEN BEGIN 65 // from: 64.0
  SAY #56267 /* ~*Tu ne vois PAS. PAS encore. Regarde-moi bien et tu pourras VOIR les PLANS à travers les yeux de la JUSTICE.*~ */
  IF ~~ THEN REPLY #56268 /* ~"Très bien… montre-moi ce que tu vois."~ */ DO ~SetAnimState("Vhail",ANIM_MIMESTAND)
~ GOTO 66
  IF ~~ THEN REPLY #56269 /* ~"Non, Vhailor… je n'ai pas envie de voir. Mais j'ai encore des questions à te poser…"~ */ GOTO 35
  IF ~~ THEN REPLY #56270 /* ~"Je ne crois pas être prêt pour ce que tu veux me montrer, Vhailor. Poursuivons."~ */ EXIT
END

IF ~~ THEN BEGIN 66 // from: 65.0
  SAY #56271 /* ~Tu scrutes les yeux de Vhailor. Les deux flammes FLAMBOIENT soudain…~ */
  IF ~  GlobalLT("Law","GLOBAL",25)
~ THEN REPLY #56272 /* ~"Qu…"~ */ DO ~FadeToColor([20.0],0)
Wait(3)
FadeFromColor([20.0],0)
SetGlobal("Vhailor_Teach","GLOBAL",1)
PermanentStatChange(Protagonist,STR,RAISE,1)
PermanentStatChange(Protagonist,DAMAGEBONUS,RAISE,1)
GiveExperience(Protagonist,90000)
SetAnimState("Vhail",ANIM_MIMESTAND)
~ GOTO 67
  IF ~  GlobalGT("Law","GLOBAL",24)
GlobalLT("Law","GLOBAL",35)
~ THEN REPLY #56273 /* ~"Qu…"~ */ DO ~FadeToColor([20.0],0)
Wait(3)
FadeFromColor([20.0],0)
SetGlobal("Vhailor_Teach","GLOBAL",2)
PermanentStatChange(Protagonist,STR,RAISE,2)
PermanentStatChange(Protagonist,DAMAGEBONUS,RAISE,2)
GiveExperience(Protagonist,120000)
SetAnimState("Vhail",ANIM_MIMESTAND)
~ GOTO 67
  IF ~  GlobalGT("Law","GLOBAL",34)
~ THEN REPLY #56274 /* ~"Qu…"~ */ DO ~FadeToColor([20.0],0)
Wait(3)
FadeFromColor([20.0],0)
SetGlobal("Vhailor_Teach","GLOBAL",3)
PermanentStatChange(Protagonist,STR,RAISE,3)
PermanentStatChange(Protagonist,DAMAGEBONUS,RAISE,3)
GiveExperience(Protagonist,150000)
SetAnimState("Vhail",ANIM_MIMESTAND)
~ GOTO 67
END

IF ~~ THEN BEGIN 67 // from: 66.0 66.1 66.2
  SAY #56275 /* ~L'éclair t'aveugle un moment. Quand tu rouvres les yeux, toutes les choses semblent avoir un BORD, comme si elles s'étaient enrichies d'un nouvel angle ; tu te sens plus pointu, comme si tu pouvais FENDRE chaque objet rien qu'à le regarder.~ */
  IF ~~ THEN REPLY #56276 /* ~"Vhailor… est-ce que c'est… ?"~ */ GOTO 68
END

IF ~~ THEN BEGIN 68 // from: 67.0
  SAY #56277 /* ~*VOIS toutes les choses. VOIS leur force. VOIS leur FAIBLESSE. JUGE toutes les choses. Si la PITIÉ a rongé leur cœur, elles TOMBERONT sous la JUSTICE. Ta VOLONTÉ te donne le DROIT. Ta DISCIPLINE te donne le DROIT.*~ */
  IF ~~ THEN REPLY #56278 /* ~"Très bien… Il y a… autre chose que je voulais te demander."~ */ GOTO 35
  IF ~~ THEN REPLY #56279 /* ~"Je… vois maintenant. Euh… poursuivons."~ */ EXIT
END

IF ~~ THEN BEGIN 69 // from: 61.1
  SAY #56280 /* ~*Ta VOLONTÉ est forte. Mais tu manques de DISCIPLINE. Ta VOLONTÉ est TA volonté, pas celle de la LOI. Je n'ai rien à te montrer que tu puisses VOIR ni COMPRENDRE.*~ */
  IF ~~ THEN REPLY #56281 /* ~"D'accord, d'accord, Vhailor. J'ai encore des questions à te poser…"~ */ GOTO 35
  IF ~~ THEN REPLY #56282 /* ~"Peu importe, peu importe. Poursuivons."~ */ EXIT
END

IF ~~ THEN BEGIN 70 // from: 35.4
  SAY #56283 /* ~Les yeux de braise de Vhailor se posent sur toi. Suit un lourd silence.~ */
  IF ~~ THEN REPLY #56284 /* ~"Vhailor? Comment es-tu mort ?"~ */ GOTO 71
  IF ~~ THEN REPLY #56285 /* ~"Laisse tomber, Vhailor. J'ai encore des questions à te poser…"~ */ GOTO 35
  IF ~  !InParty("Vhail")
~ THEN REPLY #56286 /* ~"C'est ici que nos chemins se séparent, Vhailor. Au revoir."~ */ EXIT
  IF ~  InParty("Vhail")
~ THEN REPLY #56287 /* ~"Peu importe, Vhailor. Poursuivons."~ */ EXIT
END

IF ~~ THEN BEGIN 71 // from: 70.0
  SAY #56288 /* ~*JE VIS.*~ */
  IF ~  CheckStatLT(Protagonist,16,WIS)
~ THEN REPLY #56289 /* ~"Certes, façon de parler… Mais qu'est-il advenu de ton corps physique ?"~ */ GOTO 73
  IF ~  CheckStatGT(Protagonist,15,WIS)
~ THEN REPLY #56290 /* ~"Certes, façon de parler… Mais qu'est-il advenu de ton corps physique ?"~ */ DO ~SetAnimState("Vhail",ANIM_MIMESTAND)
~ GOTO 72
  IF ~~ THEN REPLY #56291 /* ~"D'accord, d'accord, Vhailor. J'ai encore des questions à te poser…"~ */ GOTO 35
  IF ~  !InParty("Vhail")
~ THEN REPLY #56292 /* ~"C'est ici que nos chemins se séparent, Vhailor. Au revoir."~ */ EXIT
  IF ~  InParty("Vhail")
~ THEN REPLY #56293 /* ~"Peu importe, Vhailor. Poursuivons."~ */ EXIT
END

IF ~~ THEN BEGIN 72 // from: 71.1
  SAY #56294 /* ~Tu t'apprêtes à prendre la parole, mais tu sens un étrange frisson te parcourir l'arrière du crâne… et brusquement, tu *sais* que Vhailor n'a pas conscience d'être mort. Tu ignores pourquoi, mais tu as le sentiment que cette révélation pourrait s'avérer extrêmement dangereuse.~ */
  IF ~~ THEN REPLY #56295 /* ~"Vhailor ? Qu'est-il advenu de ton corps physique ?"~ */ GOTO 73
  IF ~~ THEN REPLY #56296 /* ~"Laisse tomber, Vhailor. J'ai encore des questions à te poser…"~ */ GOTO 35
  IF ~  !InParty("Vhail")
~ THEN REPLY #56297 /* ~"C'est ici que nos chemins se séparent, Vhailor. Au revoir."~ */ EXIT
  IF ~  InParty("Vhail")
~ THEN REPLY #56298 /* ~"Peu importe, Vhailor. Poursuivons."~ */ EXIT
END

IF ~~ THEN BEGIN 73 // from: 71.0 72.0
  SAY #56299 /* ~*JE VIS. Alors que les CONDAMNÉS attendent leur CHÂTIMENT, JE VIS.*~ */
  IF ~~ THEN REPLY #56300 /* ~"Vhailor, tu n'es pas *vraiment* vivant… Tu es devenu un esprit, un spectre… un fantôme."~ */ DO ~SetAnimState("Vhail",ANIM_MIMESTAND)
~ GOTO 74
  IF ~  CheckStatGT(Protagonist,20,CHR)
~ THEN REPLY #56301 /* ~"Tu te SENS vivant, Vhailor ? Enlève ton gantelet… tes yeux voient-ils de la peau ? Touche ton bras avec ta hache… est-ce que ça saigne ? Et tes yeux… ils brûlent comme des flammes, mais peuvent-ils verser des larmes ? Ton esprit demeure, Vhailor, mais tu ne *vis* plus."~ */ DO ~SetAnimState("Vhail",ANIM_MIMESTAND)
~ GOTO 75
  IF ~~ THEN REPLY #56302 /* ~"D'accord, d'accord, Vhailor. J'ai encore des questions à te poser…"~ */ GOTO 35
  IF ~  !InParty("Vhail")
~ THEN REPLY #56303 /* ~"C'est ici que nos chemins se séparent, Vhailor. Au revoir."~ */ EXIT
  IF ~  InParty("Vhail")
~ THEN REPLY #56304 /* ~"Peu importe, Vhailor. Poursuivons."~ */ EXIT
END

IF ~~ THEN BEGIN 74 // from: 73.0
  SAY #56305 /* ~Il règne un lourd et dangereux silence ; Vhailor ne réagit pas.~ */
  IF ~~ THEN REPLY #56306 /* ~"Laisse tomber, Vhailor. J'ai encore des questions à te poser…"~ */ GOTO 35
  IF ~  !InParty("Vhail")
~ THEN REPLY #56307 /* ~"C'est ici que nos chemins se séparent, Vhailor. Au revoir."~ */ EXIT
  IF ~  InParty("Vhail")
~ THEN REPLY #56308 /* ~"Peu importe, Vhailor. Poursuivons."~ */ EXIT
END

IF ~~ THEN BEGIN 75 // from: 73.1
  SAY #56309 /* ~Durant un instant… juste un instant, les yeux de Vhailor vacillent.~ */
  IF ~  Global("Memory_Vhailor","GLOBAL",0)
~ THEN REPLY #56310 /* ~"As-tu seulement le SOUVENIR de ce que tu étais jadis derrière cette armure, Vhailor ? Tu étais un homme de chair et de sang, vivant, assoiffé de justice. Mais aujourd'hui cet homme est mort. Il ne reste plus que la coquille tourmentée."~ */ GOTO 76
  IF ~  Global("Memory_Vhailor","GLOBAL",1)
~ THEN REPLY #56311 /* ~"As-tu seulement le SOUVENIR de ce que tu étais jadis derrière cette armure, Vhailor ? Tu étais un homme de chair et de sang, sombre de peau, les yeux tels des flammes… ta chair était labourée de cicatrices… Et combien de justices n'a-t-on pas commises en ton nom ? Mais aujourd'hui cet homme est mort. Il ne reste plus que la coquille tourmentée."~ */ GOTO 76
  IF ~~ THEN REPLY #56312 /* ~"Oublie ce que je t'ai dit, Vhailor. J'ai encore des questions à te poser…"~ */ GOTO 35
  IF ~  !InParty("Vhail")
~ THEN REPLY #56313 /* ~"C'est ici que nos chemins se séparent, Vhailor. Au revoir."~ */ EXIT
  IF ~  InParty("Vhail")
~ THEN REPLY #56314 /* ~"Peu importe, Vhailor. Poursuivons."~ */ EXIT
END

IF ~~ THEN BEGIN 76 // from: 75.0 75.1
  SAY #56315 /* ~*Je… me rappelle.* Les yeux de Vhailor vacillent, plus erratiques qu'auparavant. Sa hache tombe à ses côtés. *Le souvenir est… DIFFICILE à se remémorer. Il y a eu une MORT… et j'ai CHANGÉ. Je ne suis plus CELUI-LÀ. Que SUIS-JE ?*~ */
  IF ~~ THEN REPLY #56316 /* ~"Je ne sais pas, Vhailor. L'homme qui fut Vhailor est mort… Aujourd'hui, tu es autre chose."~ */ GOTO 77
  IF ~~ THEN REPLY #56317 /* ~"Oublie ce que je t'ai dit, Vhailor… J'ai encore des questions à te poser…"~ */ GOTO 35
  IF ~  !InParty("Vhail")
~ THEN REPLY #56318 /* ~"C'est ici que nos chemins se séparent, Vhailor. Au revoir."~ */ EXIT
  IF ~  InParty("Vhail")
~ THEN REPLY #56319 /* ~"Peu importe, Vhailor. Poursuivons."~ */ EXIT
END

IF ~~ THEN BEGIN 77 // from: 76.0
  SAY #56320 /* ~*La JUSTICE était ma cause. La CHAIR… la CHAIR ne pouvait demeurer. Pourtant, la JUSTICE devait être SERVIE. Il y a eu la MORT de la chair, mais la VOLONTÉ n'a pas cédé… il fallait ENCORE punir. ENCORE et TOUJOURS. La JUSTICE… n'aurait pas été servie par ma MORT.*~ */
  IF ~~ THEN REPLY #56321 /* ~"Mais tu ES mort, Vhailor, et pas d'hier. Il serait temps de lâcher du lest."~ */ DO ~SetAnimState("Vhail",ANIM_MIMEDIE)
AddexperienceParty(12000)
~ JOURNAL #56677 /* ~J'ai convaincu Vhailor qu'il était mort. Mes arguments l'ont manifestement persuadé, puisqu'il est mort une seconde fois sous mes yeux. Son armure et sa hache se sont désintégrées quand il a "rendu l'âme".~ */ GOTO 152
  IF ~~ THEN REPLY #56322 /* ~"Alors tu ne fais que te MENTIR à toi-même en pensant que tu vis. Tu es MORT, Vhailor. En quoi la JUSTICE est-elle servie quand son serviteur se ment à lui-même ?"~ */ DO ~SetAnimState("Vhail",ANIM_MIMEDIE)
AddexperienceParty(12000)
~ JOURNAL #56326 /* ~J'ai convaincu Vhailor qu'il était mort et qu'il devait abandonner sa croisade de justicier. Mes arguments l'ont manifestement persuadé, puisqu'il est mort une seconde fois sous mes yeux. Son armure et sa hache se sont désintégrées quand il a "rendu l'âme".~ */ GOTO 152
  IF ~~ THEN REPLY #56323 /* ~"D'accord, d'accord, Vhailor. J'ai encore des questions à te poser…"~ */ GOTO 35
  IF ~  !InParty("Vhail")
~ THEN REPLY #56324 /* ~"C'est ici que nos chemins se séparent, Vhailor. Au revoir."~ */ EXIT
  IF ~  InParty("Vhail")
~ THEN REPLY #56325 /* ~"Peu importe, Vhailor. Poursuivons."~ */ EXIT
END

IF ~~ THEN BEGIN 78 // from: 35.7 35.9 82.0 82.2 82.4
  SAY #56327 /* ~Les yeux de braise de Vhailor se posent sur toi. Suit un lourd silence.~ */
  IF ~~ THEN GOTO 79
END

IF ~~ THEN BEGIN 79 // from: 78.0
  SAY #56328 /* ~*Je vais me JOINDRE à toi. Nous chercherons la JUSTICE ensemble. Là où se terre la pitié, nous la TUERONS.*~ */
  IF ~~ THEN REPLY #56329 /* ~"Très bien."~ */ DO ~SetGlobal("Vhailor_Join","GLOBAL",1)
AddexperienceParty(90000)
ChangeAIScript("pcvhail",DEFAULT)
JoinPartyEx(TRUE)
~ EXIT
END

IF ~~ THEN BEGIN 80 // from: 35.8 35.10 82.1 82.3 82.5
  SAY #56330 /* ~Les yeux de braise de Vhailor se posent sur toi. Suit un lourd silence.~ */
  IF ~~ THEN GOTO 81
END

IF ~~ THEN BEGIN 81 // from: 80.0
  SAY #56331 /* ~*Je vais me JOINDRE à toi. Ta VOLONTÉ est une chose INCONSTANTE, mais je T'ENSEIGNERAI la JUSTICE. Je T'ENSEIGNERAI comment TUER la PITIÉ.*~ */
  IF ~~ THEN REPLY #56332 /* ~"Très bien."~ */ DO ~SetGlobal("Vhailor_Join","GLOBAL",2)
AddexperienceParty(90000)
ChangeAIScript("pcvhail",DEFAULT)
JoinPartyEx(TRUE)
~ EXIT
END

IF ~~ THEN BEGIN 82 // from: 8.1 35.11
  SAY #56333 /* ~*Ton cœur est-il en quête de JUSTICE ? Ou ton VOYAGE est-il sans OBJET ?*~ */
  IF ~  GlobalGT("Law","GLOBAL",14)
~ THEN REPLY #56334 /* ~Vérité : "Je cherche la justice, Vhailor. D'accord pour s'associer ?"~ */ DO ~IncrementGlobalOnceEx("GLOBALLawful_Vhailor_2","GLOBALLaw",1)
IncrementGlobalOnceEx("GLOBALGood_Vhailor_2","GLOBALGood",1)
SetAnimState("Vhail",ANIM_MIMESTAND)
~ GOTO 78
  IF ~  GlobalLT("Law","GLOBAL",15)
~ THEN REPLY #56335 /* ~Vérité : "Je cherche la justice, Vhailor. D'accord pour s'associer ?"~ */ DO ~IncrementGlobalOnceEx("GLOBALLawful_Vhailor_2","GLOBALLaw",1)
IncrementGlobalOnceEx("GLOBALGood_Vhailor_2","GLOBALGood",1)
SetAnimState("Vhail",ANIM_MIMESTAND)
~ GOTO 80
  IF ~  GlobalGT("Law","GLOBAL",14)
~ THEN REPLY #56336 /* ~Mensonge : "Je cherche la justice, Vhailor. D'accord pour s'associer ?"~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Vhailor_2","GLOBALLaw",-1)
SetAnimState("Vhail",ANIM_MIMESTAND)
~ GOTO 78
  IF ~  GlobalLT("Law","GLOBAL",15)
~ THEN REPLY #56337 /* ~Mensonge : "Je cherche la justice, Vhailor. D'accord pour s'associer ?"~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Vhailor_2","GLOBALLaw",-1)
SetAnimState("Vhail",ANIM_MIMESTAND)
~ GOTO 80
  IF ~  GlobalGT("Law","GLOBAL",14)
~ THEN REPLY #56339 /* ~"Je recherche la connaissance de moi-même, Vhailor, et si elle recèle de la justice, alors je la trouverai aussi."~ */ DO ~SetAnimState("Vhail",ANIM_MIMESTAND)
~ GOTO 78
  IF ~  GlobalLT("Law","GLOBAL",15)
~ THEN REPLY #56340 /* ~"Je recherche la connaissance de moi-même, Vhailor, et si elle recèle de la justice, alors je la trouverai aussi."~ */ DO ~SetAnimState("Vhail",ANIM_MIMESTAND)
~ GOTO 80
END

IF ~~ THEN BEGIN 83 // from: 34.1 35.1
  SAY #56338 /* ~*Les Rectifieurs sont les YEUX de la JUSTICE. La JUSTICE utilise les Rectifieurs pour exécuter sa VOLONTÉ. Une fois la CONDAMNATION prononcée, elle nous PRÊTE sa FORCE.*~ */
  IF ~~ THEN REPLY #56347 /* ~"Et comment sais-tu *quand* rendre justice ?"~ */ GOTO 89
  IF ~~ THEN REPLY #56348 /* ~"De la force ? Comment ?"~ */ GOTO 84
  IF ~~ THEN REPLY #56349 /* ~"D'accord, d'accord, Vhailor. J'ai encore des questions à te poser…"~ */ GOTO 35
  IF ~  !InParty("Vhail")
~ THEN REPLY #56350 /* ~"C'est ici que nos chemins se séparent, Vhailor. Au revoir."~ */ EXIT
  IF ~  InParty("Vhail")
~ THEN REPLY #56351 /* ~"Peu importe, Vhailor. Poursuivons."~ */ EXIT
END

IF ~~ THEN BEGIN 84 // from: 83.1 89.1
  SAY #56341 /* ~*La FORCE de la JUSTICE est fonction du mal causé par l'INJUSTICE.*~ */
  IF ~~ THEN REPLY #56342 /* ~"Alors… plus l'injustice est grande - plus grand est le crime -, plus la 'justice' te prête de la force ?"~ */ GOTO 85
  IF ~~ THEN REPLY #56343 /* ~"Et comment sais-tu *quand* rendre justice ?"~ */ GOTO 89
  IF ~~ THEN REPLY #56344 /* ~"D'accord, d'accord, Vhailor. J'ai encore des questions à te poser…"~ */ GOTO 35
  IF ~  !InParty("Vhail")
~ THEN REPLY #56345 /* ~"C'est ici que nos chemins se séparent, Vhailor. Au revoir."~ */ EXIT
  IF ~  InParty("Vhail")
~ THEN REPLY #56346 /* ~"Peu importe, Vhailor. Poursuivons."~ */ EXIT
END

IF ~~ THEN BEGIN 85 // from: 84.0
  SAY #56352 /* ~*Si l'INJUSTICE est assez grande, la JUSTICE me prêtera la FORCE nécessaire pour la CORRIGER. PERSONNE n'y résiste. Elle RENVERSE les obstacles, DÉTRUIT les boucliers, BRISE les ENCHANTEMENTS et donne à son serviteur le POUVOIR de PRONONCER la CONDAMNATION.*~ */
  IF ~~ THEN DO ~SetAnimState("Vhail",ANIM_MIMESTAND)
~ JOURNAL #56353 /* ~Vhailor est plus qu'un mort-vivant comme les autres. Il semble être l'incarnation de la justice. Il m'a dit que c'était cet idéal qui lui conférait la force nécessaire pour corriger les injustices : plus l'injustice est grande, plus la force de Vhailor l'est aussi. Il affirme que son idéal pourrait le rendre suffisamment puissant pour écraser une armée, voire renverser un dieu. Sans que je sache pourquoi, ses paroles m'ont rappelé quelque chose. Je suis persuadé de les avoir déjà entendues auparavant et, même si cela a l'air stupide, je sais qu'elles sont vraies.~ */ GOTO 86
END

IF ~~ THEN BEGIN 86 // from: 85.0
  SAY #56354 /* ~Lorsque Vhailor psalmodie ces paroles, un frisson te parcourt l'échine… si fort qu'il te fait trembler. Tu as déjà *entendu* ces paroles et tu sais qu'elles sont *vraies*.~ */
  IF ~~ THEN GOTO 87
END

IF ~~ THEN BEGIN 87 // from: 86.0
  SAY #56355 /* ~*SACHE CECI : rien sur les PLANS ne peut ARRÊTER la main de la JUSTICE quand elle se dresse contre eux. Elle peut défaire des ARMÉES. Elle peut briser les trônes des DIEUX. Sache que tous ceux qui TRAHISSENT la justice trouvent en moi leur SORT. Et le sort porte une HACHE de BOURREAU.*~ */
  IF ~~ THEN REPLY #56356 /* ~"Je vois."~ */ DO ~SetGlobal("Vhailor_Kill_Nameless","GLOBAL",1)
~ GOTO 88
END

IF ~~ THEN BEGIN 88 // from: 87.0
  SAY #56357 /* ~*NON, tu ne vois PAS.* Les yeux de Vhailor brûlent comme deux torches dans les ombres de son heaume. *PRIE pour que ça ne t'arrive JAMAIS.*~ */
  IF ~~ THEN REPLY #56358 /* ~"Et comment sais-tu *quand* rendre justice ?"~ */ GOTO 89
  IF ~~ THEN REPLY #56359 /* ~"D'accord, d'accord, Vhailor. J'ai encore des questions à te poser…"~ */ GOTO 35
  IF ~  !InParty("Vhail")
~ THEN REPLY #56360 /* ~"C'est ici que nos chemins se séparent, Vhailor. Au revoir."~ */ EXIT
  IF ~  InParty("Vhail")
~ THEN REPLY #56361 /* ~"Peu importe, Vhailor. Poursuivons."~ */ EXIT
END

IF ~~ THEN BEGIN 89 // from: 83.0 84.1 88.0
  SAY #56362 /* ~*La JUSTICE voit à travers mes yeux. Les YEUX d'un RECTIFIEUR voient les FISSURES de la FAIBLESSE, les FRAGILITÉS, les blessures de la PITIÉ sur le CŒUR. En VOYANT, je CONNAIS les coupables. Je CONNAIS leur CRAINTE.*~ */
  IF ~~ THEN REPLY #56363 /* ~"Qu'est-ce que tu vois quand tu regardes quelqu'un ?"~ */ DO ~SetGlobal("Vhailor_Sight","GLOBAL",1)
~ GOTO 90
  IF ~~ THEN REPLY #56364 /* ~"Quand tu as dit que la justice te prêtait sa 'force', que voulais-tu dire ?"~ */ GOTO 84
  IF ~~ THEN REPLY #56365 /* ~"D'accord, d'accord, Vhailor. J'ai encore des questions à te poser…"~ */ GOTO 35
  IF ~  !InParty("Vhail")
~ THEN REPLY #56366 /* ~"C'est ici que nos chemins se séparent, Vhailor. Au revoir."~ */ EXIT
  IF ~  InParty("Vhail")
~ THEN REPLY #56367 /* ~"Peu importe, Vhailor. Poursuivons."~ */ EXIT
END

IF ~~ THEN BEGIN 90 // from: 35.5 89.0
  SAY #56368 /* ~*Tout ce que je vois est JUGE. Je peux regarder le cœur et la pensée d'un autre et les CONNAÎTRE. L'œil de la JUSTICE voit à travers MOI.*~ */
  IF ~  NearbyDialog("Dmorte")
~ THEN REPLY #56369 /* ~"Qu'est-ce que tu vois quand tu regardes Morte ?"~ */ GOTO 92
  IF ~  NearbyDialog("Dannah")
~ THEN REPLY #56370 /* ~"Qu'est-ce que tu vois quand tu regardes Annah ?"~ */ DO ~SetGlobal("Vhailor_Prejudice_Annah","GLOBAL",1)
~ GOTO 93
  IF ~  NearbyDialog("Ddakkon")
~ THEN REPLY #56371 /* ~"Qu'est-ce que tu vois quand tu regardes Dak'kon ?"~ */ GOTO 105
  IF ~  NearbyDialog("Dgrace")
Global("Vhailor_Prejudice_Grace","GLOBAL",0)
~ THEN REPLY #56372 /* ~"Qu'est-ce que tu vois quand tu regardes Tombée-en-Disgrâce ?"~ */ DO ~SetGlobal("Vhailor_Prejudice_Grace","GLOBAL",1)
~ GOTO 110
  IF ~  NearbyDialog("Dgrace")
Global("Vhailor_Prejudice_Grace","GLOBAL",1)
~ THEN REPLY #56373 /* ~"Qu'est-ce que tu vois quand tu regardes Tombée-en-Disgrâce ?"~ */ GOTO 115
  IF ~  NearbyDialog("Dnordom")
~ THEN REPLY #56374 /* ~"Qu'est-ce que tu vois quand tu regardes Nordom ?"~ */ GOTO 119
  IF ~  NearbyDialog("DIgnus")
~ THEN REPLY #56375 /* ~"Qu'est-ce que tu vois quand tu regardes Ignus ?"~ */ GOTO 116
  IF ~  CheckStatGT(Protagonist,14,INT)
~ THEN REPLY #56376 /* ~"Qu'est-ce que tu vois quand tu te regardes ?"~ */ GOTO 120
  IF ~  CheckStatGT(Protagonist,14,WIS)
CheckStatLT(Protagonist,15,INT)
~ THEN REPLY #56377 /* ~"Qu'est-ce que tu vois quand tu te regardes ?"~ */ GOTO 120
  IF ~~ THEN REPLY #56378 /* ~"Qu'est-ce que tu vois quand tu me regardes ?"~ */ DO ~SetAnimState("Vhail",ANIM_MIMESTAND)
~ GOTO 130
  IF ~~ THEN REPLY #56379 /* ~"D'accord, d'accord, Vhailor. J'ai encore des questions à te poser…"~ */ GOTO 35
  IF ~  !InParty("Vhail")
~ THEN REPLY #56380 /* ~"C'est ici que nos chemins se séparent, Vhailor. Au revoir."~ */ EXIT
  IF ~  InParty("Vhail")
~ THEN REPLY #56381 /* ~"Peu importe, Vhailor. Poursuivons."~ */ EXIT
END

IF ~~ THEN BEGIN 91 // from: 92.0 93.1 105.1 106.1 107.0 108.15 109.0 115.0 116.1 117.1 118.0 119.0 120.1 121.1 122.1 123.1 126.2 127.1
  SAY #56382 /* ~*DEMANDE.*~ */
  IF ~  NearbyDialog("Dmorte")
~ THEN REPLY #56383 /* ~"Qu'est-ce que tu vois quand tu regardes Morte ?"~ */ GOTO 92
  IF ~  NearbyDialog("Dannah")
~ THEN REPLY #56384 /* ~"Qu'est-ce que tu vois quand tu regardes Annah ?"~ */ DO ~SetGlobal("Vhailor_Prejudice_Annah","GLOBAL",1)
~ GOTO 93
  IF ~  NearbyDialog("Ddakkon")
~ THEN REPLY #56385 /* ~"Qu'est-ce que tu vois quand tu regardes Dak'kon ?"~ */ GOTO 105
  IF ~  NearbyDialog("Dgrace")
Global("Vhailor_Prejudice_Grace","GLOBAL",0)
~ THEN REPLY #56386 /* ~"Qu'est-ce que tu vois quand tu regardes Tombée-en-Disgrâce ?"~ */ DO ~SetGlobal("Vhailor_Prejudice_Grace","GLOBAL",1)
~ GOTO 110
  IF ~  NearbyDialog("Dgrace")
Global("Vhailor_Prejudice_Grace","GLOBAL",1)
~ THEN REPLY #56387 /* ~"Qu'est-ce que tu vois quand tu regardes Tombée-en-Disgrâce ?"~ */ GOTO 115
  IF ~  NearbyDialog("Dnordom")
~ THEN REPLY #56388 /* ~"Qu'est-ce que tu vois quand tu regardes Nordom ?"~ */ GOTO 119
  IF ~  NearbyDialog("DIgnus")
~ THEN REPLY #56389 /* ~"Qu'est-ce que tu vois quand tu regardes Ignus ?"~ */ GOTO 116
  IF ~  CheckStatGT(Protagonist,14,INT)
~ THEN REPLY #56390 /* ~"Qu'est-ce que tu vois quand tu te regardes ?"~ */ GOTO 120
  IF ~  CheckStatGT(Protagonist,14,WIS)
CheckStatLT(Protagonist,15,INT)
~ THEN REPLY #56391 /* ~"Qu'est-ce que tu vois quand tu te regardes ?"~ */ GOTO 120
  IF ~~ THEN REPLY #56392 /* ~"Qu'est-ce que tu vois quand tu me regardes ?"~ */ DO ~SetAnimState("Vhail",ANIM_MIMESTAND)
~ GOTO 130
  IF ~~ THEN REPLY #56393 /* ~"D'accord, d'accord, Vhailor. J'ai encore des questions à te poser…"~ */ GOTO 35
  IF ~  !InParty("Vhail")
~ THEN REPLY #56394 /* ~"C'est ici que nos chemins se séparent, Vhailor. Au revoir."~ */ EXIT
  IF ~  InParty("Vhail")
~ THEN REPLY #56395 /* ~"Peu importe, Vhailor. Poursuivons."~ */ EXIT
END

IF ~~ THEN BEGIN 92 // from: 90.0 91.0
  SAY #56396 /* ~*Le crâne en sait LONG. Mais il ne sait RIEN de la justice. Combien gisent à présent dans une PRISON ou une TOMBE, qui avaient un cœur tel celui du crâne ?*~ */
  IF ~~ THEN REPLY #56397 /* ~"Passons à quelqu'un d'autre…"~ */ GOTO 91
  IF ~~ THEN REPLY #56398 /* ~"D'accord, d'accord, Vhailor. J'ai encore des questions à te poser…"~ */ GOTO 35
  IF ~  !InParty("Vhail")
~ THEN REPLY #56399 /* ~"C'est ici que nos chemins se séparent, Vhailor. Au revoir."~ */ EXIT
  IF ~  InParty("Vhail")
~ THEN REPLY #56400 /* ~"Peu importe, Vhailor. Poursuivons."~ */ EXIT
END

IF ~~ THEN BEGIN 93 // from: 90.1 91.1
  SAY #56401 /* ~*La tieffeline est SOUILLÉE par les Plans Inférieurs. Son sang EMPÊCHE toute loyauté envers la JUSTICE. Elle comprend la JUSTICE, mais l'IGNORE.* Les yeux de Vhailor flamboient comme des torches. *Elle ne M'IGNORERA pas.*~ */
  IF ~  Global("Annah_Accuse","GLOBAL",0)
~ THEN DO ~SetGlobal("Annah_Accuse","GLOBAL",1)
~ EXTERN ~DANNAH~ 274
  IF ~  Global("Annah_Accuse","GLOBAL",1)
~ THEN REPLY #56402 /* ~"Passons à quelqu'un d'autre…"~ */ GOTO 91
  IF ~  Global("Annah_Accuse","GLOBAL",1)
~ THEN REPLY #56403 /* ~"D'accord, d'accord, Vhailor. J'ai encore des questions à te poser…"~ */ GOTO 35
  IF ~  !InParty("Vhail")
Global("Annah_Accuse","GLOBAL",1)
~ THEN REPLY #56404 /* ~"C'est ici que nos chemins se séparent, Vhailor. Au revoir."~ */ EXIT
  IF ~  InParty("Vhail")
Global("Annah_Accuse","GLOBAL",1)
~ THEN REPLY #56405 /* ~"Peu importe, Vhailor. Poursuivons."~ */ EXIT
END

IF ~~ THEN BEGIN 94 // from:
  SAY #56406 /* ~Les yeux de Vhailor flamboient. *Tieffeline, réponds-moi : as-tu jamais commis une INJUSTICE ?*~ */
  IF ~~ THEN EXTERN ~DANNAH~ 275
END

IF ~~ THEN BEGIN 95 // from:
  SAY #56407 /* ~*La JUSTICE me donne le DROIT.*~ */
  IF ~~ THEN EXTERN ~DANNAH~ 276
END

IF ~~ THEN BEGIN 96 // from:
  SAY #56408 /* ~*Les Rectifieurs SONT la justice. Nos actions sont IRRÉFUTABLES, TIEFFELINE.*~ */
  IF ~~ THEN EXTERN ~DANNAH~ 277
END

IF ~~ THEN BEGIN 97 // from:
  SAY #56410 /* ~*Pour la DERNIÈRE fois, tieffeline, as-tu jamais commis une injustice ? REFUSER de répondre est un aveu de CULPABILITÉ.*~ */
  IF ~~ THEN REPLY #56411 /* ~"Vhailor, arrête ça. Je t'interdis de l'interroger."~ */ DO ~IncrementGlobal("BD_ANNAH_MORALE","GLOBAL",1)
~ GOTO 99
  IF ~  NearbyDialog("Dgrace")
~ THEN REPLY #56412 /* ~Attends de voir ce que dit Annah.~ */ DO ~IncrementGlobal("BD_ANNAH_MORALE","GLOBAL",-1)
MoraleDec("Grace",1)
~ EXTERN ~DGRACE~ 200
  IF ~  !NearbyDialog("Dgrace")
~ THEN REPLY #56413 /* ~Attends de voir ce que dit Annah.~ */ DO ~IncrementGlobal("BD_ANNAH_MORALE","GLOBAL",-1)
~ EXTERN ~DANNAH~ 278
END

IF ~~ THEN BEGIN 98 // from:
  SAY #56414 /* ~*Tu as REFUSÉ de répondre à la JUSTICE. Je dois te PUNIR.*~ */
  IF ~~ THEN REPLY #56415 /* ~"Non, Vhailor, certainement pas. Tu n'as pas le droit."~ */ GOTO 99
  IF ~~ THEN REPLY #56416 /* ~Attends de voir ce qui se passe.~ */ DO ~LeaveParty()
Enemy()
Attack("Annah")
ChangeAIScript("MDKAnnah",DEFAULT)
ForceAttack("Annah",Myself)
~ EXIT
END

IF ~~ THEN BEGIN 99 // from: 97.0 98.0 102.0
  SAY #56418 /* ~*La JUSTICE me donne le DROIT. La culpabilité l'ENVELOPPE comme une seconde peau.*~ */
  IF ~~ THEN REPLY #56419 /* ~"Je t'ai dit d'arrêter, Vhailor, et ce n'était pas pour plaisanter."~ */ GOTO 103
END

IF ~~ THEN BEGIN 100 // from:
  SAY #56420 /* ~~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 101 // from:
  SAY #56421 /* ~*Elle a commis des INJUSTICES. Je dois la PUNIR.*~ */
  IF ~~ THEN EXTERN ~DGRACE~ 201
END

IF ~~ THEN BEGIN 102 // from:
  SAY #56423 /* ~*Tout ce qui est dans le CHEMIN de la JUSTICE sera CONDAMNÉ. Tu as MÉRITÉ ton sort, SUCCUBE.*~ */
  IF ~~ THEN REPLY #56424 /* ~"Non, Vhailor, certainement pas. Tu n'as pas le droit."~ */ GOTO 99
  IF ~~ THEN REPLY #56425 /* ~Attends de voir ce qui se passe.~ */ DO ~LeaveParty()
Enemy()
Attack("Grace")
ChangeAIScript("MDKGrace",DEFAULT)
ForceAttack("Grace",Myself)
ForceAttack("Annah",Myself)
~ EXIT
END

IF ~~ THEN BEGIN 103 // from: 99.0
  SAY #56426 /* ~*Ainsi donc, voici qu'apparaît la traînée qu'est la PITIÉ. La FAIBLESSE a empoisonné ton cœur.*~ */
  IF ~~ THEN REPLY #56427 /* ~"Ce n'est pas de la pitié. C'est un *ordre*. Veux-tu tâter de ma faiblesse, Vhailor ?"~ */ GOTO 104
  IF ~~ THEN REPLY #56428 /* ~"La pitié n'est pas la faiblesse, Vhailor. Laisse-la tranquille ou tu vas me trouver."~ */ GOTO 104
  IF ~~ THEN REPLY #56429 /* ~"C'est vrai ? Alors juge-moi, Vhailor… si tu trouves que le zèle me fait défaut, alors condamne-*moi*."~ */ GOTO 129
END

IF ~~ THEN BEGIN 104 // from: 103.0 103.1
  SAY #56430 /* ~* Tout ce qui est dans le CHEMIN de la JUSTICE sera CONDAMNÉ. *Les yeux de Vhailor flamboient et il lève sa hache.* Tu as MÉRITÉ ton sort.*~ */
  IF ~~ THEN REPLY #56431 /* ~"Prépare-toi à mourir une seconde mort, Vhailor…"~ */ DO ~LeaveParty()
Enemy()
Attack(Protagonist)
ChangeAIScript("MDKTNO",DEFAULT)
ForceAttack(Protagonist,Myself)
~ EXIT
END

IF ~~ THEN BEGIN 105 // from: 90.2 91.2
  SAY #56432 /* ~*Le cœur de ce githzeraï est dépourvu des PRÉJUGÉS qui empoisonnent son ESPÈCE. Mais il vit en CONFLIT avec lui-même, car sa PAROLE reflète sa VOLONTÉ et sa LOI. Là où les githzeraïs prospèrent dans le chaos, celui-ci souffre.*~ */
  IF ~~ THEN REPLY #56433 /* ~"Préjugés ? Qu'est-ce que tu veux dire ?"~ */ GOTO 106
  IF ~~ THEN REPLY #56434 /* ~"Passons à quelqu'un d'autre."~ */ GOTO 91
  IF ~~ THEN REPLY #56435 /* ~"D'accord, d'accord, Vhailor. J'ai encore des questions à te poser…"~ */ GOTO 35
  IF ~  !InParty("Vhail")
~ THEN REPLY #56436 /* ~"C'est ici que nos chemins se séparent, Vhailor. Au revoir."~ */ EXIT
  IF ~  InParty("Vhail")
~ THEN REPLY #56437 /* ~"Peu importe, Vhailor. Poursuivons."~ */ EXIT
END

IF ~~ THEN BEGIN 106 // from: 105.0
  SAY #56438 /* ~*La race des githzeraïs est rongée par les PRÉJUGÉS. Il n'y a pas de place pour les PRÉJUGÉS aux yeux de la JUSTICE.*~ */
  IF ~~ THEN REPLY #56439 /* ~"Quels préjugés ?"~ */ GOTO 107
  IF ~~ THEN REPLY #56440 /* ~"Passons à quelqu'un d'autre."~ */ GOTO 91
  IF ~~ THEN REPLY #56441 /* ~"D'accord, d'accord, Vhailor. J'ai encore des questions à te poser…"~ */ GOTO 35
  IF ~  !InParty("Vhail")
~ THEN REPLY #56442 /* ~"C'est ici que nos chemins se séparent, Vhailor. Au revoir."~ */ EXIT
  IF ~  InParty("Vhail")
~ THEN REPLY #56443 /* ~"Peu importe, Vhailor. Poursuivons."~ */ EXIT
END

IF ~~ THEN BEGIN 107 // from: 106.0
  SAY #56444 /* ~*Par sa nature, le préjugé SOUILLE la justice. Les githzeraïs sont prévenus CONTRE les githyankis, leurs cousins par la race, et contre les illithids, anciens PROPRIÉTAIRES des peuples giths. La haine envers les githyankis ET les illithids brûle dans le cœur des githzeraïs.*~ */
  IF ~~ THEN REPLY #56445 /* ~"Passons à quelqu'un d'autre."~ */ GOTO 91
  IF ~  Global("Vhailor_Prejudice_Annah","GLOBAL",1)
Global("Vhailor_Prejudice_Grace","GLOBAL",0)
~ THEN REPLY #56446 /* ~"Les préjugés souillent la justice, hein ? Et ce que tu as dit sur Annah ?"~ */ GOTO 108
  IF ~  Global("Vhailor_Prejudice_Annah","GLOBAL",0)
Global("Vhailor_Prejudice_Grace","GLOBAL",1)
~ THEN REPLY #56447 /* ~"Les préjugés souillent la justice, hein ? Et ce que tu as dit sur Tombée-en-Disgrâce ?"~ */ GOTO 108
  IF ~  Global("Vhailor_Prejudice_Grace","GLOBAL",1)
Global("Vhailor_Prejudice_Annah","GLOBAL",1)
~ THEN REPLY #56448 /* ~"Les préjugés souillent la justice, hein ? Et ce que tu as dit sur Annah et Tombée-en-Disgrâce ?"~ */ GOTO 108
  IF ~~ THEN REPLY #56449 /* ~"D'accord, d'accord, Vhailor. J'ai encore des questions à te poser…"~ */ GOTO 35
  IF ~  !InParty("Vhail")
~ THEN REPLY #56450 /* ~"C'est ici que nos chemins se séparent, Vhailor. Au revoir."~ */ EXIT
  IF ~  InParty("Vhail")
~ THEN REPLY #56451 /* ~"Peu importe, Vhailor. Poursuivons."~ */ EXIT
END

IF ~~ THEN BEGIN 108 // from: 107.1 107.2 107.3
  SAY #56452 /* ~*Mes paroles ne sont PAS alimentées par les préjugés. Elles procèdent de l'OBSERVATION et du SOUVENIR.*~ */
  IF ~  Global("Vhailor_Prejudice_Grace","GLOBAL",0)
NearbyDialog("Dannah")
Global("Annah_Prejudice_Morale","GLOBAL",0)
~ THEN REPLY #56453 /* ~"Eh bien, je pense que tes 'observations' sont le reflet de tes préjugés, Vhailor… Tu as vite fait de mettre tous les fiélons dans le même sac. Peut-être devrais-tu revoir tes observations."~ */ DO ~IncrementGlobal("BD_ANNAH_MORALE","GLOBAL",1)
SetGlobal("Annah_Prejudice_Morale","GLOBAL",1)
~ GOTO 109
  IF ~  Global("Vhailor_Prejudice_Grace","GLOBAL",0)
NearbyDialog("Dannah")
GlobalGT("Annah_Prejudice_Morale","GLOBAL",0)
~ THEN REPLY #56454 /* ~"Eh bien, je pense que tes 'observations' sont le reflet de tes préjugés, Vhailor… Tu as vite fait de mettre tous les fiélons dans le même sac. Peut-être devrais-tu revoir tes observations."~ */ GOTO 109
  IF ~  Global("Vhailor_Prejudice_Grace","GLOBAL",0)
!NearbyDialog("Dannah")
~ THEN REPLY #56455 /* ~"Eh bien, je pense que tes 'observations' sont le reflet de tes préjugés, Vhailor… Tu as vite fait de mettre tous les fiélons dans le même sac. Peut-être devrais-tu revoir tes observations."~ */ GOTO 109
  IF ~  Global("Vhailor_Prejudice_Annah","GLOBAL",0)
NearbyDialog("Dgrace")
Global("Grace_Prejudice_Morale","GLOBAL",0)
~ THEN REPLY #56456 /* ~"Eh bien, je pense que tes 'observations' sont le reflet de tes préjugés, Vhailor… Tu as vite fait de mettre tous les fiélons dans le même sac. Peut-être devrais-tu revoir tes observations."~ */ DO ~MoraleInc("Grace",1)
SetGlobal("Grace_Prejudice_Morale","GLOBAL",1)
~ GOTO 109
  IF ~  Global("Vhailor_Prejudice_Annah","GLOBAL",0)
NearbyDialog("Dgrace")
GlobalGT("Grace_Prejudice_Morale","GLOBAL",0)
~ THEN REPLY #56457 /* ~"Eh bien, je pense que tes 'observations' sont le reflet de tes préjugés, Vhailor… Tu as vite fait de mettre tous les fiélons dans le même sac. Peut-être devrais-tu revoir tes observations."~ */ GOTO 109
  IF ~  Global("Vhailor_Prejudice_Annah","GLOBAL",0)
!NearbyDialog("Dgrace")
~ THEN REPLY #56458 /* ~"Eh bien, je pense que tes 'observations' sont le reflet de tes préjugés, Vhailor… Tu as vite fait de mettre tous les fiélons dans le même sac. Peut-être devrais-tu revoir tes observations."~ */ GOTO 109
  IF ~  Global("Vhailor_Prejudice_Grace","GLOBAL",1)
Global("Vhailor_Prejudice_Annah","GLOBAL",1)
!NearbyDialog("Dannah")
!NearbyDialog("Dgrace")
~ THEN REPLY #56459 /* ~"Eh bien, je pense que tes 'observations' sont le reflet de tes préjugés, Vhailor… Tu as vite fait de mettre tous les fiélons dans le même sac. Peut-être devrais-tu revoir tes observations."~ */ GOTO 109
  IF ~  Global("Vhailor_Prejudice_Grace","GLOBAL",1)
Global("Vhailor_Prejudice_Annah","GLOBAL",1)
NearbyDialog("Dannah")
NearbyDialog("DGrace")
Global("Annah_Prejudice_Morale","GLOBAL",0)
Global("Grace_Prejudice_Morale","GLOBAL",0)
~ THEN REPLY #56460 /* ~"Eh bien, je pense que tes 'observations' sont le reflet de tes préjugés, Vhailor… Tu as vite fait de mettre tous les fiélons dans le même sac. Peut-être devrais-tu revoir tes observations."~ */ DO ~IncrementGlobal("BD_ANNAH_MORALE","GLOBAL",1)
MoraleInc("Grace",1)
SetGlobal("Annah_Prejudice_Morale","GLOBAL",1)
SetGlobal("Grace_Prejudice_Morale","GLOBAL",1)
~ GOTO 109
  IF ~  Global("Vhailor_Prejudice_Grace","GLOBAL",1)
Global("Vhailor_Prejudice_Annah","GLOBAL",1)
NearbyDialog("Dannah")
NearbyDialog("DGrace")
Global("Annah_Prejudice_Morale","GLOBAL",0)
Global("Grace_Prejudice_Morale","GLOBAL",1)
~ THEN REPLY #56461 /* ~"Eh bien, je pense que tes 'observations' sont le reflet de tes préjugés, Vhailor… Tu as vite fait de mettre tous les fiélons dans le même sac. Peut-être devrais-tu revoir tes observations."~ */ DO ~IncrementGlobal("BD_ANNAH_MORALE","GLOBAL",1)
SetGlobal("Annah_Prejudice_Morale","GLOBAL",1)
~ GOTO 109
  IF ~  Global("Vhailor_Prejudice_Grace","GLOBAL",1)
Global("Vhailor_Prejudice_Annah","GLOBAL",1)
NearbyDialog("Dannah")
NearbyDialog("Dgrace")
Global("Annah_Prejudice_Morale","GLOBAL",1)
Global("Grace_Prejudice_Morale","GLOBAL",0)
~ THEN REPLY #56462 /* ~"Eh bien, je pense que tes 'observations' sont le reflet de tes préjugés, Vhailor… Tu as vite fait de mettre tous les fiélons dans le même sac. Peut-être devrais-tu revoir tes observations."~ */ DO ~MoraleInc("Grace",1)
SetGlobal("Grace_Prejudice_Morale","GLOBAL",1)
~ GOTO 109
  IF ~  Global("Vhailor_Prejudice_Grace","GLOBAL",1)
Global("Vhailor_Prejudice_Annah","GLOBAL",1)
NearbyDialog("Dannah")
NearbyDialog("DGrace")
Global("Annah_Prejudice_Morale","GLOBAL",1)
Global("Grace_Prejudice_Morale","GLOBAL",1)
~ THEN REPLY #56463 /* ~"Eh bien, je pense que tes 'observations' sont le reflet de tes préjugés, Vhailor… Tu as vite fait de mettre tous les fiélons dans le même sac. Peut-être devrais-tu revoir tes observations."~ */ GOTO 109
  IF ~  Global("Vhailor_Prejudice_Grace","GLOBAL",1)
Global("Vhailor_Prejudice_Annah","GLOBAL",1)
!NearbyDialog("Dannah")
NearbyDialog("DGrace")
Global("Grace_Prejudice_Morale","GLOBAL",0)
~ THEN REPLY #56464 /* ~"Eh bien, je pense que tes 'observations' sont le reflet de tes préjugés, Vhailor… Tu as vite fait de mettre tous les fiélons dans le même sac. Peut-être devrais-tu revoir tes observations."~ */ DO ~MoraleInc("Grace",1)
SetGlobal("Grace_Prejudice_Morale","GLOBAL",1)
~ GOTO 109
  IF ~  Global("Vhailor_Prejudice_Grace","GLOBAL",1)
Global("Vhailor_Prejudice_Annah","GLOBAL",1)
!NearbyDialog("Dannah")
NearbyDialog("DGrace")
Global("Grace_Prejudice_Morale","GLOBAL",1)
~ THEN REPLY #56465 /* ~"Eh bien, je pense que tes 'observations' sont le reflet de tes préjugés, Vhailor… Tu as vite fait de mettre tous les fiélons dans le même sac. Peut-être devrais-tu revoir tes observations."~ */ GOTO 109
  IF ~  Global("Vhailor_Prejudice_Grace","GLOBAL",1)
Global("Vhailor_Prejudice_Annah","GLOBAL",1)
NearbyDialog("Dannah")
!NearbyDialog("DGrace")
Global("Annah_Prejudice_Morale","GLOBAL",0)
~ THEN REPLY #56466 /* ~"Eh bien, je pense que tes 'observations' sont le reflet de tes préjugés, Vhailor… Tu as vite fait de mettre tous les fiélons dans le même sac. Peut-être devrais-tu revoir tes observations."~ */ DO ~IncrementGlobal("BD_ANNAH_MORALE","GLOBAL",1)
SetGlobal("Annah_Prejudice_Morale","GLOBAL",1)
~ GOTO 109
  IF ~  Global("Vhailor_Prejudice_Grace","GLOBAL",1)
Global("Vhailor_Prejudice_Annah","GLOBAL",1)
NearbyDialog("Dannah")
!NearbyDialog("DGrace")
Global("Annah_Prejudice_Morale","GLOBAL",1)
~ THEN REPLY #56467 /* ~"Eh bien, je pense que tes 'observations' sont le reflet de tes préjugés, Vhailor… Tu as vite fait de mettre tous les fiélons dans le même sac. Peut-être devrais-tu revoir tes observations."~ */ GOTO 109
  IF ~~ THEN REPLY #56468 /* ~"Passons à quelqu'un d'autre."~ */ GOTO 91
  IF ~~ THEN REPLY #56469 /* ~"D'accord, d'accord, Vhailor. J'ai encore des questions à te poser…"~ */ GOTO 35
  IF ~  !InParty("Vhail")
~ THEN REPLY #56470 /* ~"C'est ici que nos chemins se séparent, Vhailor. Au revoir."~ */ EXIT
  IF ~  InParty("Vhail")
~ THEN REPLY #56471 /* ~"Peu importe, Vhailor. Poursuivons."~ */ EXIT
END

IF ~~ THEN BEGIN 109 // from: 108.0 108.1 108.2 108.3 108.4 108.5 108.6 108.7 108.8 108.9 108.10 108.11 108.12 108.13 108.14
  SAY #56472 /* ~*Mes OBSERVATIONS se font à travers l'ŒIL de la JUSTICE. J'OBSERVE, puis j'AGIS. Tu ferais bien de te RAPPELER cela, même si tu oublies tout le reste.*~ */
  IF ~~ THEN REPLY #56473 /* ~"Passons à quelqu'un d'autre…"~ */ GOTO 91
  IF ~~ THEN REPLY #56474 /* ~"D'accord, d'accord, Vhailor. J'ai encore des questions à te poser…"~ */ GOTO 35
  IF ~  !InParty("Vhail")
~ THEN REPLY #56475 /* ~"C'est ici que nos chemins se séparent, Vhailor. Au revoir."~ */ EXIT
  IF ~  InParty("Vhail")
~ THEN REPLY #56476 /* ~"Peu importe, Vhailor. Poursuivons."~ */ EXIT
END

IF ~~ THEN BEGIN 110 // from: 90.3 91.3
  SAY #56504 /* ~*Les TANAR'RIS sont nés du chaos. Ils se FICHENT de la JUSTICE. La SUCCUBE connaît la JUSTICE, mais elle s'en est DÉTOURNÉE. La PITIÉ a EMPOISONNÉ son cœur.*~ */
  IF ~~ THEN REPLY #56505 /* ~"Passons à quelqu'un d'au…"~ */ EXTERN ~DGRACE~ 196
  IF ~~ THEN REPLY #56506 /* ~"D'accord, d'accord, Vhailor. J'ai encore quelques ques…"~ */ EXTERN ~DGRACE~ 196
  IF ~~ THEN REPLY #56507 /* ~"Peu importe, Vhailor. Pours…"~ */ EXTERN ~DGRACE~ 196
END

IF ~~ THEN BEGIN 111 // from:
  SAY #56508 /* ~Les yeux de Vhailor flamboient. *La PITIÉ ronge le CŒUR de la JUSTICE. La PITIÉ dévore tout ce qui est PERFECTION. La COMPASSION et le PARDON sont les POISONS de la PITIÉ.*~ */
  IF ~~ THEN EXTERN ~DGRACE~ 197
END

IF ~~ THEN BEGIN 112 // from:
  SAY #56509 /* ~*Tu es FAIBLE, SUCCUBE… Aussi FAIBLE que tous ceux de ton ESPÈCE. Alors que ton ESPÈCE séduit par la CHAIR, c'est la PITIÉ qui t'a SÉDUITE. Tu es la TRAÎNÉE de la PITIÉ. Tu n'es RIEN.*~ */
  IF ~~ THEN EXTERN ~DGRACE~ 198
END

IF ~~ THEN BEGIN 113 // from:
  SAY #56510 /* ~Les yeux de Vhailor flamboient en dévisageant Tombée-en-Disgrâce, les deux braises rougeoyant comme des torches. Tombée-en-Disgrâce soutient ce regard sans fléchir, les yeux purs et pleins de détermination.~ */
  IF ~~ THEN GOTO 114
END

IF ~~ THEN BEGIN 114 // from: 113.0
  SAY #56511 /* ~*Les RACINES de la FAIBLESSE sont là. Tu te CROIS forte, mais la PITIÉ prospérera par les racines. Elle DÉVORERA ta volonté.* Vhailor s'interrompt un instant. Maintenant, ses paroles tombent comme un marteau. *Pourtant… il est d'AUTRES faiblesses que tu PORTES en ton CŒUR, SUCCUBE. C'est ce que voient MES yeux. Tu AIMES. En AIMANT, tu es devenue FAIBLE.*~ */
  IF ~~ THEN EXTERN ~DGRACE~ 199
END

IF ~~ THEN BEGIN 115 // from: 90.4 91.4
  SAY #56512 /* ~*Les TANAR'RIS sont nés du chaos. Ils se FICHENT de la JUSTICE. La SUCCUBE connaît la JUSTICE, mais elle s'en est DETOURNÉE. La PITIÉ a jeté ses RACINES dans son cœur. Elle AIME. En AIMANT, elle est devenue FAIBLE.*"~ */
  IF ~~ THEN REPLY #56513 /* ~"Passons à quelqu'un d'autre."~ */ GOTO 91
  IF ~~ THEN REPLY #56514 /* ~"D'accord, d'accord, Vhailor. J'ai encore des questions à te poser…"~ */ GOTO 35
  IF ~  !InParty("Vhail")
~ THEN REPLY #56515 /* ~"C'est ici que nos chemins se séparent, Vhailor. Au revoir."~ */ EXIT
  IF ~  InParty("Vhail")
~ THEN REPLY #56516 /* ~"Peu importe, Vhailor. Poursuivons."~ */ EXIT
END

IF ~~ THEN BEGIN 116 // from: 90.6 91.6
  SAY #56517 /* ~*Je vois le sceau de la JUSTICE sur le sorcier.*~ */
  IF ~~ THEN REPLY #56518 /* ~"Est-ce que ça veut dire qu'Ignus a été jugé ?"~ */ GOTO 117
  IF ~~ THEN REPLY #56519 /* ~"Passons à quelqu'un d'autre."~ */ GOTO 91
  IF ~~ THEN REPLY #56520 /* ~"D'accord, d'accord, Vhailor. J'ai encore des questions à te poser…"~ */ GOTO 35
  IF ~  !InParty("Vhail")
~ THEN REPLY #56521 /* ~"C'est ici que nos chemins se séparent, Vhailor. Au revoir."~ */ EXIT
  IF ~  InParty("Vhail")
~ THEN REPLY #56522 /* ~"Peu importe, Vhailor. Poursuivons."~ */ EXIT
END

IF ~~ THEN BEGIN 117 // from: 116.0
  SAY #56523 /* ~*Les flammes qui BRÛLENT autour de lui parlent de justice. Le sorcier est PUNI. Il ne VIT plus mais fait désormais PARTIE des PLANS. Son corps est un CONDUIT. Il n'y a pas de CŒUR. Il a été CONDAMNÉ.*~ */
  IF ~~ THEN REPLY #56524 /* ~"Sais-tu pourquoi Ignus n'est pas mort ? Est-ce que ces flammes n'auraient pas dû le tuer ?"~ */ GOTO 118
  IF ~~ THEN REPLY #56525 /* ~"Passons à quelqu'un d'autre."~ */ GOTO 91
  IF ~~ THEN REPLY #56526 /* ~"D'accord, d'accord, Vhailor. J'ai encore des questions à te poser…"~ */ GOTO 35
  IF ~  !InParty("Vhail")
~ THEN REPLY #56527 /* ~"C'est ici que nos chemins se séparent, Vhailor. Au revoir."~ */ EXIT
  IF ~  InParty("Vhail")
~ THEN REPLY #56528 /* ~"Peu importe, Vhailor. Poursuivons."~ */ EXIT
END

IF ~~ THEN BEGIN 118 // from: 117.0
  SAY #56529 /* ~*Il ne VIT plus. Il EXISTE seulement. Ce n'est pas la MÊME chose.*~ */
  IF ~~ THEN REPLY #56530 /* ~"Passons à quelqu'un d'autre."~ */ GOTO 91
  IF ~~ THEN REPLY #56531 /* ~"D'accord, d'accord, Vhailor. J'ai encore des questions à te poser…"~ */ GOTO 35
  IF ~  !InParty("Vhail")
~ THEN REPLY #56532 /* ~"C'est ici que nos chemins se séparent, Vhailor. Au revoir."~ */ EXIT
  IF ~  InParty("Vhail")
~ THEN REPLY #56533 /* ~"Peu importe, Vhailor. Poursuivons."~ */ EXIT
END

IF ~~ THEN BEGIN 119 // from: 90.5 91.5
  SAY #56534 /* ~*Le MODRONE ne compte pas. Il peut DÉFINIR la justice, mais il ne la COMPREND pas. Ce n'est pas satisfaisant. Mais c'est SUFFISANT.*~ */
  IF ~~ THEN REPLY #56535 /* ~"Passons à quelqu'un d'autre."~ */ GOTO 91
  IF ~~ THEN REPLY #56536 /* ~"D'accord, d'accord, Vhailor. J'ai encore des questions à te poser…"~ */ GOTO 35
  IF ~  !InParty("Vhail")
~ THEN REPLY #56537 /* ~"C'est ici que nos chemins se séparent, Vhailor. Au revoir."~ */ EXIT
  IF ~  InParty("Vhail")
~ THEN REPLY #56538 /* ~"Peu importe, Vhailor. Poursuivons."~ */ EXIT
END

IF ~~ THEN BEGIN 120 // from: 90.7 90.8 91.7 91.8
  SAY #56539 /* ~*Je suis VHAILOR. Je suis un rectifieur. Mes ACTIONS sont le reflet de mon cœur.*~ */
  IF ~~ THEN REPLY #56540 /* ~"C'est pas ce que j'ai demandé."~ */ DO ~SetAnimState("Vhail",ANIM_MIMESTAND)
~ GOTO 121
  IF ~~ THEN REPLY #56541 /* ~"Passons à quelqu'un d'autre."~ */ GOTO 91
  IF ~~ THEN REPLY #56542 /* ~"D'accord, d'accord, Vhailor. J'ai encore des questions à te poser…"~ */ GOTO 35
  IF ~  !InParty("Vhail")
~ THEN REPLY #56543 /* ~"C'est ici que nos chemins se séparent, Vhailor. Au revoir."~ */ EXIT
  IF ~  InParty("Vhail")
~ THEN REPLY #56544 /* ~"Peu importe, Vhailor. Poursuivons."~ */ EXIT
END

IF ~~ THEN BEGIN 121 // from: 120.0
  SAY #56545 /* ~Il règne un lourd silence… mais Vhailor ne le brise pas. Ses yeux de braise rencontrent ton regard sans ciller.~ */
  IF ~~ THEN REPLY #56546 /* ~"Je t'ai demandé ce que tu vois quand tu te regardes. Qu'est-ce que tu vois quand tu te juges, Vhailor ?"~ */ GOTO 122
  IF ~~ THEN REPLY #56547 /* ~"Passons à quelqu'un d'autre."~ */ GOTO 91
  IF ~~ THEN REPLY #56548 /* ~"Laisse tomber, Vhailor. J'ai encore des questions à te poser…"~ */ GOTO 35
  IF ~  !InParty("Vhail")
~ THEN REPLY #56549 /* ~"C'est ici que nos chemins se séparent, Vhailor. Au revoir."~ */ EXIT
  IF ~  InParty("Vhail")
~ THEN REPLY #56550 /* ~"Peu importe, Vhailor. Poursuivons."~ */ EXIT
END

IF ~~ THEN BEGIN 122 // from: 121.0
  SAY #56551 /* ~*Je ne me JUGE pas. Je suis un RECTIFIEUR. Mes ACTIONS sont le reflet de mon CŒUR. Ma VOLONTÉ est la VOLONTÉ de la JUSTICE.*~ */
  IF ~~ THEN REPLY #56552 /* ~"Donc, tu es au-delà de la justice ?"~ */ GOTO 123
  IF ~~ THEN REPLY #56553 /* ~"Passons à quelqu'un d'autre."~ */ GOTO 91
  IF ~~ THEN REPLY #56554 /* ~"D'accord, d'accord, Vhailor. J'ai encore des questions à te poser…"~ */ GOTO 35
  IF ~  !InParty("Vhail")
~ THEN REPLY #56555 /* ~"C'est ici que nos chemins se séparent, Vhailor. Au revoir."~ */ EXIT
  IF ~  InParty("Vhail")
~ THEN REPLY #56556 /* ~"Peu importe, Vhailor. Poursuivons."~ */ EXIT
END

IF ~~ THEN BEGIN 123 // from: 122.0
  SAY #56557 /* ~*Je SERS la justice. Je ne suis jamais AU-DELÀ de la justice. RIEN n'est au-delà de la JUSTICE.*~ */
  IF ~~ THEN REPLY #56558 /* ~"Regarde-toi, Vhailor. Que voit l'œil de la justice quand il scrute son serviteur ?"~ */ DO ~SetAnimState("Vhail",ANIM_MIMESTAND)
~ GOTO 124
  IF ~~ THEN REPLY #56559 /* ~"Passons à quelqu'un d'autre."~ */ GOTO 91
  IF ~~ THEN REPLY #56560 /* ~"D'accord, d'accord, Vhailor. J'ai encore des questions à te poser…"~ */ GOTO 35
  IF ~  !InParty("Vhail")
~ THEN REPLY #56561 /* ~"C'est ici que nos chemins se séparent, Vhailor. Au revoir."~ */ EXIT
  IF ~  InParty("Vhail")
~ THEN REPLY #56562 /* ~"Peu importe, Vhailor. Poursuivons."~ */ EXIT
END

IF ~~ THEN BEGIN 124 // from: 123.0
  SAY #56563 /* ~Les braises s'éteignent soudain dans les yeux de Vhailor et un terrible SILENCE s'installe.~ */
  IF ~~ THEN DO ~SetAnimState("Vhail",ANIM_MIMESTAND)
~ GOTO 125
END

IF ~~ THEN BEGIN 125 // from: 124.0
  SAY #56564 /* ~Juste au moment où tu commences à te demander si les yeux de Vhailor vont se rallumer, un ÉCLAIR jaillit et tu dois t'abriter les yeux.~ */
  IF ~~ THEN REPLY #56565 /* ~"Vhailor…"~ */ GOTO 126
END

IF ~~ THEN BEGIN 126 // from: 125.0
  SAY #56566 /* ~*Je suis VHAILOR. Je suis un rectifieur. Mes ACTIONS sont le reflet de mon cœur. Je suis le SERVITEUR de la JUSTICE.*~ */
  IF ~  CheckStatLT(Protagonist,15,WIS)
~ THEN REPLY #56567 /* ~"Mais… Vhailor, qu'est-ce que tu as VU quand…~ */ GOTO 128
  IF ~  CheckStatGT(Protagonist,14,WIS)
~ THEN REPLY #56568 /* ~"Mais… Vhailor, qu'est-ce que tu as VU quand…~ */ DO ~SetAnimState("Vhail",ANIM_MIMESTAND)
~ GOTO 127
  IF ~~ THEN REPLY #56569 /* ~"Très bien. Je voulais t'interroger sur quelqu'un d'autre…"~ */ GOTO 91
  IF ~~ THEN REPLY #56570 /* ~"D'accord, d'accord, Vhailor. J'ai encore des questions à te poser…"~ */ GOTO 35
  IF ~  !InParty("Vhail")
~ THEN REPLY #56571 /* ~"C'est ici que nos chemins se séparent, Vhailor. Au revoir."~ */ EXIT
  IF ~  InParty("Vhail")
~ THEN REPLY #56572 /* ~"Peu importe, Vhailor. Poursuivons."~ */ EXIT
END

IF ~~ THEN BEGIN 127 // from: 126.1
  SAY #56573 /* ~Avant même d'avoir le temps de parler, tu sens un étrange frisson te parcourir l'arrière du crâne, et les mots te restent collés au bout de la langue… Tu sais que si tu insistes, tu vas réveiller quelque chose chez Vhailor. Quelque chose de dangereux.~ */
  IF ~~ THEN REPLY #56574 /* ~"Mais… Vhailor, qu'est-ce que tu as VU quand tu as regardé en toi-même ?"~ */ GOTO 128
  IF ~~ THEN REPLY #56575 /* ~"Peu importe, Vhailor. Je voulais t'interroger sur quelqu'un d'autre…"~ */ GOTO 91
  IF ~~ THEN REPLY #56576 /* ~"D'accord, d'accord, Vhailor. J'ai encore des questions à te poser…"~ */ GOTO 35
  IF ~  !InParty("Vhail")
~ THEN REPLY #56577 /* ~"C'est ici que nos chemins se séparent, Vhailor. Au revoir."~ */ EXIT
  IF ~  InParty("Vhail")
~ THEN REPLY #56578 /* ~"Peu importe, Vhailor. Poursuivons."~ */ EXIT
END

IF ~~ THEN BEGIN 128 // from: 126.0 127.0
  SAY #56579 /* ~*JAMAIS LE ZÈLE NE ME FAIT DÉFAUT. LÀ OÙ SÉVIT LA PITIÉ, JE LA TUERAI. LÀ OÙ LA COMPASSION EMPOISONNE LE CŒUR, JE LE SAIGNERAI POUR QU'IL LIBÈRE SA VICTIME. LÀ OÙ LES MENTEURS ET LES TRAÎTRES DE LA VÉRITÉ ENCOURAGENT LE MENSONGE, JE RÉPONDRAI PAR L'ÉPÉE DE LA JUSTICE.*~ */
  IF ~~ THEN REPLY #56580 /* ~"Mais ce que j'ai *demandé*, c'était…"~ */ GOTO 129
END

IF ~~ THEN BEGIN 129 // from: 103.2 128.0
  SAY #56581 /* ~*QUI ES-TU POUR INTERROGER UN SERVITEUR DE LA JUSTICE ? TU N'ES RIEN. UNE SIMPLE COQUILLE VIDE. JE VAIS FOUILLER TON CŒUR. NOUS VERRONS SI LE ZÈLE TE FAIT DÉFAUT.*~ */
  IF ~~ THEN REPLY #56582 /* ~"Mais…"~ */ DO ~SetAnimState("Vhail",ANIM_MIMESTAND)
~ GOTO 130
END

IF ~~ THEN BEGIN 130 // from: 90.9 91.9 129.0
  SAY #56583 /* ~Les yeux rougeoyants de Vhailor se posent sur toi. Tu sens alors qu'ils te lacèrent la peau… des cloques s'y forment et elle est arrachée… Tu n'éprouves pas de douleur… un simple étourdissement, l'impression de te *noyer*. Alors que ses yeux brûlent en toi, tu sens surgir un souvenir…~ */
  IF ~~ THEN REPLY #56584 /* ~Succombe au souvenir.~ */ DO ~SetAnimState("Vhail",ANIM_MIMESTAND)
PlaySoundNotRanged("SPTR_01")
~ GOTO 131
  IF ~~ THEN REPLY #56585 /* ~Débarrasse-toi du souvenir, essaie de rester dans le présent.~ */ DO ~SetAnimState("Vhail",ANIM_MIMESTAND)
~ GOTO 138
END

IF ~~ THEN BEGIN 131 // from: 130.0
  SAY #56586 /* ~Les yeux rougeoyants deviennent plus brillants, presque aveuglants… Maintenant FACE à Vhailor, tu vois que le vide est remplacé par de la *chair*… De sous le heaume, un homme couvert de cicatrices et à la peau couleur d'ébène te scrute, le visage convulsé par la colère, les yeux dansant comme des flammes. Son armure luit. Il est *venu* pour toi.~ */
  IF ~~ THEN REPLY #56587 /* ~Écho : "Tu m'as trouvé, Vhailor. Tu as dû beaucoup voyager… Je suppose qu'il n'a pas été facile de me trouver."~ */ DO ~SetAnimState("Vhail",ANIM_MIMESTAND)
~ GOTO 132
  IF ~~ THEN REPLY #56588 /* ~Débarrasse-toi du souvenir, essaie de rester dans le présent.~ */ DO ~SetAnimState("Vhail",ANIM_MIMESTAND)
~ GOTO 138
END

IF ~~ THEN BEGIN 132 // from: 131.0
  SAY #56589 /* ~"La justice m'a conduit à toi. Tes pas laissent un sillage de souffrance." La voix de l'homme gronde mais il n'y a pas d'écho, rien de la voix spectrale de Vhailor ; seulement rage et colère, sang et chair… Il est dangereux, mais ce n'est pas une force spectrale, seulement un homme, et tu en as terrassé beaucoup comme lui. "Je te ferai passer devant les cours sigiliennes pour te punir. Si tu nies, DIS-le et je te jugerai."~ */
  IF ~~ THEN REPLY #56590 /* ~Écho : "Je nie. Juge-moi… alors je te jugerai."~ */ DO ~SetAnimState("Vhail",ANIM_MIMESTAND)
~ GOTO 133
  IF ~~ THEN REPLY #56591 /* ~Débarrasse-toi du souvenir, essaie de rester dans le présent.~ */ DO ~SetAnimState("Vhail",ANIM_MIMESTAND)
~ GOTO 138
END

IF ~~ THEN BEGIN 133 // from: 132.0
  SAY #56592 /* ~"ME juger ?" Les yeux de Vhailor *brûlent* et il serre sa hache ; les muscles de son cou et de son bras se tendent lorsqu'il se met à la balancer, lentement, d'un air menaçant. "Tu n'as pas le DROIT de me juger."~ */
  IF ~~ THEN REPLY #56593 /* ~Écho : "Si, Vhailor, car je connais ton cœur… et mon pouvoir me donne le droit de te juger. Mais je ne te jugerai pas maintenant : tu dois demeurer dans cette cage jusqu'au jour où je pourrai te laisser retourner dans les plans."~ */ DO ~SetAnimState("Vhail",ANIM_MIMESTAND)
~ GOTO 134
  IF ~~ THEN REPLY #56594 /* ~Débarrasse-toi du souvenir, essaie de rester dans le présent.~ */ DO ~SetAnimState("Vhail",ANIM_MIMESTAND)
~ GOTO 138
END

IF ~~ THEN BEGIN 134 // from: 133.0
  SAY #56595 /* ~Lorsque ton incarnation prononce le mot 'cage', Vhailor se détourne aussitôt de toi pour regarder les murs alentour… Ce sont les murs de la prison de Maudith où tu l'as trouvé, il y a de *nombreuses* années… Assez pour qu'un homme meure plusieurs morts. Ou peut-être rien qu'une.~ */
  IF ~~ THEN REPLY #56596 /* ~Écho : "Jusqu'à présent, je t'avais échappé, Vhailor… Pourquoi crois-tu que j'aie accepté de te rencontrer *ici* ? Pensais-tu que je me rendais ? Ou que j'allais me battre avec toi ? Non… ceci est la ville-portail de Maudith, Vhailor. Elle jouxte le plan-*prison* des Carcères, où même les *dieux* sont emprisonnés. Tu as du pouvoir, Vhailor, mais ici, les énergies permettent de tenir même les plus puissants en cage."~ */ DO ~SetAnimState("Vhail",ANIM_MIMESTAND)
~ GOTO 135
  IF ~~ THEN REPLY #56597 /* ~Débarrasse-toi du souvenir, essaie de rester dans le présent.~ */ DO ~SetAnimState("Vhail",ANIM_MIMESTAND)
~ GOTO 138
END

IF ~~ THEN BEGIN 135 // from: 134.0
  SAY #56598 /* ~Vhailor se tourne mais dans ses yeux, une des flammes s'est éteinte. "C'est de la *traîtrise*."~ */
  IF ~~ THEN REPLY #56599 /* ~Écho : "La traîtrise coule en ce lieu comme le sang dans les veines. C'est elle qui me prête la force de cet enchantement… C'est ce qui m'a obligé à te rencontrer à Maudith. Je peux quitter cette cellule, Vhailor, mais jusqu'à ce que je vienne te chercher, pas toi. Ta croisade pour la justice est vraiment remarquable, mais elle sera oubliée ; et peut-être qu'avec le temps…. même la justice t'oubliera."~ */ DO ~SetAnimState("Vhail",ANIM_MIMESTAND)
~ GOTO 136
  IF ~~ THEN REPLY #56600 /* ~Débarrasse-toi du souvenir, essaie de rester dans le présent.~ */ DO ~SetAnimState("Vhail",ANIM_MIMESTAND)
~ GOTO 138
END

IF ~~ THEN BEGIN 136 // from: 135.0
  SAY #56601 /* ~"Tu fais plus que te nier justice à toi-même… Tu nies ma *croisade*…"~ */
  IF ~~ THEN REPLY #56602 /* ~Écho : "Je connais ta mission. Mais elle devra attendre jusqu'à ce que j'aie fini la *mienne*… et c'est la deuxième fois que tu me trouves et que tu essaies de me juger. Ça n'arrivera pas une troisième fois, crois-moi."~ */ DO ~SetAnimState("Vhail",ANIM_MIMESTAND)
~ GOTO 137
  IF ~~ THEN REPLY #56603 /* ~Débarrasse-toi du souvenir, essaie de rester dans le présent.~ */ DO ~SetAnimState("Vhail",ANIM_MIMESTAND)
~ GOTO 138
END

IF ~~ THEN BEGIN 137 // from: 136.0
  SAY #56604 /* ~Vhailor se tait… Jamais tu n'as paru si CATÉGORIQUE. Tu es en train de prononcer contre lui un jugement terrible, un jugement dénué de toute justice.~ */
  IF ~  Global("Memory_Caging_Vhailor","GLOBAL",0)
~ THEN REPLY #56605 /* ~Écho : "Je suis immortel, Vhailor. Mais tu es quelqu'un… d'étrange. La justice t'a *touché* et cette justice-là est peut-être plus puissante que ce qui me soutient. Pourtant, réjouis-toi : je ne veux point ta mort… Il se peut qu'un jour, j'aie besoin d'un bras qui ait le pouvoir de me tuer. Aussi resteras-tu ici jusqu'à mon retour."~ */ DO ~FadeToColor([20.0],0)
Wait(3)
FadeFromColor([20.0],0)
SetAnimState("Vhail",ANIM_MIMESTAND)
SetGlobal("Memory_Caging_Vhailor","GLOBAL",1)
GiveExperience(Protagonist,90000)
~ JOURNAL #56607 /* ~Je me souviens vaguement avoir emprisonné Vhailor dans les souterrains de Maudith. Il était venu me chercher, mais j'avais fait préparer la cellule à son intention afin de me débarrasser de lui une bonne fois pour toutes. Je me souviens désormais de ma traîtrise, ainsi que des paroles étranges proférées par mon incarnation précédente. Selon elle, Vhailor a le pouvoir de me tuer si c'est la justice qui guide sa hache. Mon intuition me dit que c'est vrai mais, dans ce cas, pourquoi mon incarnation ne l'a-t-elle pas détruit ? L'a-t-elle gardé en 'vie' dans un but bien précis ?~ */ GOTO 138
  IF ~  Global("Memory_Caging_Vhailor","GLOBAL",1)
~ THEN REPLY #56606 /* ~Echo : "Je suis immortel, Vhailor. Mais tu es quelqu'un… d'étrange. La justice t'a *touché* et cette justice-là est peut-être plus puissante que ce qui me soutient. Pourtant, réjouis-toi : je ne veux point ta mort… Il se peut qu'un jour, j'aie besoin d'un bras qui ait le pouvoir de me tuer. Aussi resteras-tu ici jusqu'à mon retour."~ */ DO ~FadeToColor([20.0],0)
Wait(3)
FadeFromColor([20.0],0)
SetAnimState("Vhail",ANIM_MIMESTAND)
~ GOTO 138
END

IF ~~ THEN BEGIN 138 // from: 130.1 131.1 132.1 133.1 134.1 135.1 136.1 137.0 137.1
  SAY #56608 /* ~Le souvenir s'estompe, se perd dans les ténèbres et, brusquement, tu te retrouves face au spectre de Vhailor, devant son visage en armure, vide de chair… seulement les braises rougeoyantes.~ */
  IF ~~ THEN REPLY #56609 /* ~"Vhailor… ?"~ */ DO ~SetAnimState("Vhail",ANIM_MIMESTAND)
~ GOTO 139
END

IF ~~ THEN BEGIN 139 // from: 138.0
  SAY #56610 /* ~*Tu seras JUGE.*~ */
  IF ~  CheckStatGT(Protagonist,13,WIS)
~ THEN REPLY #56611 /* ~"Très bien…"~ */ DO ~SetAnimState("Vhail",ANIM_MIMESTAND)
~ GOTO 140
  IF ~  CheckStatLT(Protagonist,14,WIS)
~ THEN REPLY #56612 /* ~"Très bien…"~ */ DO ~SetAnimState("Vhail",ANIM_MIMESTAND)
~ GOTO 141
END

IF ~~ THEN BEGIN 140 // from: 139.0
  SAY #56614 /* ~Le regard brûlant de Vhailor s'arrête sur toi. Tu es alors soudain envahi par un curieux sentiment d'indifférence, l'impression de sortir de ton corps… Dans ton crâne, tu perçois un faible murmure, un frisson ; tu sais brusquement que, peu importe ce que Vhailor *prétend* voir, il ne verra que ce que tu VEUX qu'il voie. Tu sais qu'il doit accepter jusqu'aux plus simples des duperies… Tu es pour lui un livre clos.~ */
  IF ~~ THEN GOTO 141
END

IF ~~ THEN BEGIN 141 // from: 139.1 140.0
  SAY #56618 /* ~*As-tu jamais commis un MEURTRE ?*~ */
  IF ~  GlobalGT("Murder","GLOBAL",0)
~ THEN REPLY #56619 /* ~Mensonge : "Non."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Vhailor_3","GLOBALLaw",-1)
~ GOTO 147
  IF ~  Global("Murder","GLOBAL",0)
~ THEN REPLY #56620 /* ~Vérité : "Non."~ */ GOTO 147
  IF ~  GlobalGT("Murder","GLOBAL",0)
~ THEN REPLY #56621 /* ~Vérité : "Oui."~ */ DO ~IncrementGlobalOnceEx("GLOBALLawful_Vhailor_3","GLOBALLaw",2)
~ GOTO 149
  IF ~  Global("Murdered_Fin","GLOBAL",1)
~ THEN REPLY #56622 /* ~Vérité : "Oui… mais c'était ma main, pas mon esprit, Vhailor. Dans une de mes incarnations antérieures, j'ai assassiné un homme, un certain Fin Andlye, à cause du savoir qu'il détenait."~ */ GOTO 149
  IF ~  Global("Know_Shadow_Player_Connection","GLOBAL",1)
~ THEN REPLY #56623 /* ~Vérité : "Vhailor, je pense être responsable de la mort de milliers… peut-être beaucoup de milliers d'âmes… à travers les plans. Le Pilier des Crânes a dit que chaque fois que je mourais, un autre mourait à ma place."~ */ DO ~IncrementGlobalOnceEx("GLOBALLawful_Vhailor_3","GLOBALLaw",2)
~ GOTO 149
  IF ~~ THEN REPLY #56624 /* ~"Je ne répondrai pas à tes questions, Vhailor, pas plus que je ne me soumettrai à ton jugement."~ */ GOTO 142
END

IF ~~ THEN BEGIN 142 // from: 141.5 147.5 148.15
  SAY #56625 /* ~*Celui qui ne RÉPOND pas à la JUSTICE sera PUNI.*~ */
  IF ~  InParty("Vhail")
~ THEN REPLY #56626 /* ~"Alors vas-y, Vhailor… mais prépare-toi à mourir une seconde mort…"~ */ DO ~LeaveParty()
Enemy()
Attack(Protagonist)
ChangeAIScript("MDKTNO",DEFAULT)
ForceAttack(Protagonist,Myself)
~ EXIT
  IF ~  !InParty("Vhail")
~ THEN REPLY #56627 /* ~"Alors vas-y, Vhailor… mais prépare-toi à mourir une seconde mort…"~ */ DO ~Enemy()
Attack(Protagonist)
ChangeAIScript("MDKTNO",DEFAULT)
ForceAttack(Protagonist,Myself)
~ EXIT
  IF ~  CheckStatGT(Protagonist,15,INT)
~ THEN REPLY #56628 /* ~"Mais j'ai *déjà* été puni, Vhailor."~ */ GOTO 143
  IF ~  CheckStatGT(Protagonist,15,WIS)
CheckStatLT(Protagonist,16,INT)
~ THEN REPLY #56629 /* ~"Mais j'ai *déjà* été puni, Vhailor."~ */ GOTO 143
END

IF ~~ THEN BEGIN 143 // from: 142.2 142.3 149.2 149.3
  SAY #56630 /* ~Vhailor se calme. *QUEL EST ton châtiment ?*~ */
  IF ~  InParty("Vhail")
~ THEN REPLY #56631 /* ~"Peu importe, Vhailor. J'en ai marre d'essayer de te faire entendre raison ; j'aimerais mieux qu'on règle ça aux mains."~ */ DO ~LeaveParty()
Enemy()
Attack(Protagonist)
ChangeAIScript("MDKTNO",DEFAULT)
ForceAttack(Protagonist,Myself)
~ EXIT
  IF ~  !InParty("Vhail")
~ THEN REPLY #56632 /* ~"Peu importe, Vhailor. J'en ai marre d'essayer de te faire entendre raison ; j'aimerais mieux qu'on règle ça aux mains."~ */ DO ~Enemy()
Attack(Protagonist)
ChangeAIScript("MDKTNO",DEFAULT)
ForceAttack(Protagonist,Myself)
~ EXIT
  IF ~~ THEN REPLY #56633 /* ~"Chaque fois que je meurs, Vhailor, je perds mes souvenirs. Je perds le sens de mon être, de qui je suis ou de qui j'ÉTAIS… Dans ma pensée et mon corps, des milliers de cicatrices témoignent de blessures dont je ne me souviens pas. La mort me rejette et je crains de ne jamais trouver la paix."~ */ GOTO 144
END

IF ~~ THEN BEGIN 144 // from: 143.2
  SAY #56634 /* ~Vhailor te dévisage, les yeux brillants. Comme auparavant, tu te sens scruté… ta peau lacérée et arrachée lorsque Vhailor semble te disséquer. Tu te sens envahi par une vague de nausée, par l'impression de te *noyer*, plus profond cette fois… jusqu'à ce que ta vision s'évanouisse presque…~ */
  IF ~~ THEN GOTO 145
END

IF ~~ THEN BEGIN 145 // from: 144.0
  SAY #56635 /* ~*Tu as été PUNI. Le sceau de la JUSTICE est sur toi. Je le VOIS sur ta CHAIR.*~ */
  IF ~~ THEN REPLY #56636 /* ~"Dans ce cas…"~ */ GOTO 146
END

IF ~~ THEN BEGIN 146 // from: 145.0
  SAY #56637 /* ~*SACHE CECI : il y a BEAUCOUP de choses INVISIBLES en toi. Je te SURVEILLERAI. Tu as été PUNI. Mais cela ne te sauvera pas des châtiments FUTURS pour les CRIMES à venir.*~ */
  IF ~~ THEN REPLY #56638 /* ~"Très bien, Vhailor, considérons l'affaire classée… pour le moment. J'ai quelques questions à te poser…"~ */ GOTO 35
  IF ~  !InParty("Vhail")
~ THEN REPLY #56639 /* ~"Dans ce cas, c'est ici que nos chemins se séparent, Vhailor. Au revoir."~ */ EXIT
  IF ~  InParty("Vhail")
~ THEN REPLY #56640 /* ~"Reçu 5 sur 5, Vhailor. Poursuivons."~ */ EXIT
END

IF ~~ THEN BEGIN 147 // from: 141.0 141.1
  SAY #56641 /* ~*As-tu jamais commis une INJUSTICE ?*~ */
  IF ~  GlobalLT("Good","GLOBAL",-20)
~ THEN REPLY #56642 /* ~Mensonge : "Non."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Vhailor_4","GLOBALLaw",-1)
~ GOTO 148
  IF ~  GlobalGT("Good","GLOBAL",-21)
~ THEN REPLY #56643 /* ~Vérité : "Non."~ */ GOTO 148
  IF ~  GlobalLT("Good","GLOBAL",-20)
~ THEN REPLY #56644 /* ~Vérité : "Oui."~ */ DO ~IncrementGlobalOnceEx("GLOBALLawful_Vhailor_4","GLOBALLaw",2)
~ GOTO 149
  IF ~~ THEN REPLY #56645 /* ~Vérité : "Oui… mais c'était ma main, pas mon esprit, Vhailor. J'étais une autre personne qui habitait ce corps."~ */ GOTO 149
  IF ~  Global("Know_Shadow_Player_Connection","GLOBAL",1)
~ THEN REPLY #56646 /* ~Vérité : "Vhailor, je pense être responsable de la mort de milliers… peut-être beaucoup de milliers d'âmes… à travers les plans. Le Pilier des Crânes a dit que chaque fois que je mourais, un autre mourait à ma place. Je ne connais pas de plus grande injustice."~ */ DO ~IncrementGlobalOnceEx("GLOBALLawful_Vhailor_4","GLOBALLaw",2)
~ GOTO 149
  IF ~~ THEN REPLY #56647 /* ~"Je ne répondrai pas à tes questions, Vhailor, pas plus que je ne me soumettrai à ton jugement."~ */ GOTO 142
END

IF ~~ THEN BEGIN 148 // from: 147.0 147.1
  SAY #56648 /* ~*As-tu jamais LÉSÉ ton prochain ?*~ */
  IF ~~ THEN REPLY #56649 /* ~Mensonge : "Non. Jamais je n'ai fait de mal à quiconque dans toutes mes vies."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Vhailor_5","GLOBALLaw",-1)
SetAnimState("Vhail",ANIM_MIMESTAND)
~ GOTO 150
  IF ~~ THEN REPLY #56650 /* ~Vérité : "Oui… beaucoup ont été lésés par ma faute, Vhailor. Mais j'étais une autre personne qui habitait ce corps."~ */ DO ~IncrementGlobalOnceEx("GLOBALLawful_Vhailor_5","GLOBALLaw",1)
~ GOTO 149
  IF ~  Global("AR1900_Visited","GLOBAL",1)
~ THEN REPLY #56651 /* ~Vérité : "J'ai défié la Dame des Douleurs et elle m'a enfermé dans un dédale."~ */ DO ~IncrementGlobalOnceEx("GLOBALLawful_Vhailor_5","GLOBALLaw",1)
~ GOTO 149
  IF ~  Global("Memory_Deionarra_Longing","GLOBAL",1)
~ THEN REPLY #56652 /* ~Vérité : "Une de mes anciennes incarnations a menti à une femme nommée Deionarra… lui disant l'aimer alors que c'était faux. Croyant en cet amour, la femme l'a suivi jusqu'à la mort."~ */ DO ~IncrementGlobalOnceEx("GLOBALLawful_Vhailor_5","GLOBALLaw",1)
~ GOTO 149
  IF ~  GlobalGT("Deionarra_Death_Truth","GLOBAL",0)
~ THEN REPLY #56653 /* ~Vérité : "Je pense avoir été responsable de la mort de Deionarra, fille unique de Iannis l'Avocat."~ */ DO ~IncrementGlobalOnceEx("GLOBALLawful_Vhailor_5","GLOBALLaw",1)
~ GOTO 149
  IF ~  GlobalGT("Deionarra_Death_Truth","GLOBAL",1)
GlobalGT("Know_Iannis_Deionarra_Death","GLOBAL",0)
~ THEN REPLY #56654 /* ~Vérité : "Je pense avoir été responsable de la mort de Deionarra, fille unique de Iannis l'Avocat."~ */ DO ~IncrementGlobalOnceEx("GLOBALLawful_Vhailor_5","GLOBALLaw",1)
~ GOTO 149
  IF ~  GlobalGT("Dakkon_Slave","GLOBAL",0)
~ THEN REPLY #56655 /* ~Vérité : "Mon ancienne incarnation a extorqué une promesse à un homme : le vœu de me servir jusqu'à ma mort, sachant que j'étais immortel. J'ai volé sa vie pour qu'il me serve. Il s'appelait Dak'kon."~ */ DO ~IncrementGlobalOnceEx("GLOBALLawful_Vhailor_5","GLOBALLaw",1)
~ GOTO 149
  IF ~  Global("Sell_Annah","GLOBAL",2)
~ THEN REPLY #56656 /* ~Vérité : "J'ai vendu une jeune femme, Annah, comme esclave."~ */ DO ~IncrementGlobalOnceEx("GLOBALLawful_Vhailor_5","GLOBALLaw",1)
~ GOTO 149
  IF ~  Global("Sell_Dakkon","GLOBAL",2)
~ THEN REPLY #56657 /* ~Vérité : "J'ai vendu mon compagnon, Dak'kon, comme esclave."~ */ DO ~IncrementGlobalOnceEx("GLOBALLawful_Vhailor_5","GLOBALLaw",1)
~ GOTO 149
  IF ~  Global("Sell_Nordom","GLOBAL",2)
~ THEN REPLY #56658 /* ~Vérité : "J'ai vendu mon compagnon, Nordom, comme esclave."~ */ DO ~IncrementGlobalOnceEx("GLOBALLawful_Vhailor_5","GLOBALLaw",1)
~ GOTO 149
  IF ~  Global("Know_Ignus_Teacher","GLOBAL",2)
~ THEN REPLY #56659 /* ~Vérité : "Une de mes incarnations antérieures a enseigné à Ignus le pouvoir de nuire aux autres ; ce qui a préparé le terrain de ses souffrances et de celles des autres."~ */ DO ~IncrementGlobalOnceEx("GLOBALLawful_Vhailor_5","GLOBALLaw",1)
~ GOTO 149
  IF ~  Global("Evil_Pillar_2","GLOBAL",1)
~ THEN REPLY #56660 /* ~Vérité : "J'ai trahi Morte et l'ai abandonné dans le Pilier des Crânes."~ */ DO ~IncrementGlobalOnceEx("GLOBALLawful_Vhailor_5","GLOBALLaw",1)
~ GOTO 149
  IF ~  Global("Chaotic_Coaxmetal_1","GLOBAL",1)
~ THEN REPLY #56661 /* ~Vérité : "J'ai lésé le multivers… J'ai laissé une dangereuse créature, Coaxmétal, s'enfuir de la tour de siège."~ */ DO ~IncrementGlobalOnceEx("GLOBALLawful_Vhailor_5","GLOBALLaw",1)
~ GOTO 149
  IF ~  Global("Chaotic_Fhjull_1","GLOBAL",1)
~ THEN REPLY #56662 /* ~Vérité : "J'ai trahi Fhjull au Pilier des Crânes pour servir mes intérêts."~ */ DO ~IncrementGlobalOnceEx("GLOBALLawful_Vhailor_5","GLOBALLaw",1)
~ GOTO 149
  IF ~  Global("Memory_Caging_Vhailor","GLOBAL",1)
~ THEN REPLY #56663 /* ~Vérité : "Je t'ai nui, Vhailor… C'est moi qui t'ai emprisonné sous Maudith."~ */ DO ~IncrementGlobalOnceEx("GLOBALLawful_Vhailor_5","GLOBALLaw",1)
~ GOTO 149
  IF ~~ THEN REPLY #56664 /* ~"Je ne répondrai pas à tes questions, Vhailor, pas plus que je ne me soumettrai à ton jugement."~ */ GOTO 142
END

IF ~~ THEN BEGIN 149 // from: 141.2 141.3 141.4 147.2 147.3 147.4 148.1 148.2 148.3 148.4 148.5 148.6 148.7 148.8 148.9 148.10 148.11 148.12 148.13 148.14
  SAY #56665 /* ~*Tu as ADMIS le crime.* Les yeux de Vhailor lance des éclairs de sous son heaume, et tu prends soudain la pleine mesure de la terrible *force* tapie dans cette armure spectrale. *Les COUPABLES seront PUNIS.*~ */
  IF ~  InParty("Vhail")
~ THEN REPLY #56666 /* ~"Alors vas-y, Vhailor… mais prépare-toi à mourir une seconde mort…"~ */ DO ~LeaveParty()
Enemy()
Attack(Protagonist)
ChangeAIScript("MDKTNO",DEFAULT)
ForceAttack(Protagonist,Myself)
~ EXIT
  IF ~  !InParty("Vhail")
~ THEN REPLY #56667 /* ~"Alors vas-y, Vhailor… mais prépare-toi à mourir une seconde mort…"~ */ DO ~Enemy()
Attack(Protagonist)
ChangeAIScript("MDKTNO",DEFAULT)
ForceAttack(Protagonist,Myself)
~ EXIT
  IF ~  CheckStatGT(Protagonist,15,INT)
~ THEN REPLY #56668 /* ~"Mais j'ai *déjà* été puni, Vhailor."~ */ GOTO 143
  IF ~  CheckStatGT(Protagonist,15,WIS)
CheckStatLT(Protagonist,16,INT)
~ THEN REPLY #56669 /* ~"Mais j'ai *déjà* été puni, Vhailor."~ */ GOTO 143
END

IF ~~ THEN BEGIN 150 // from: 148.0
  SAY #56670 /* ~Vhailor te dévisage, les yeux brillants. Comme auparavant, tu te sens scruté… ta peau lacérée et arrachée lorsque Vhailor semble te disséquer. Tu te sens envahi par une vague de nausée, par l'impression de te *noyer*, plus profond cette fois… jusqu'à ce que ta vision s'évanouisse presque…~ */
  IF ~~ THEN GOTO 151
END

IF ~~ THEN BEGIN 151 // from: 150.0
  SAY #56671 /* ~*SACHE CECI : il y a BEAUCOUP de choses INVISIBLES en toi. Je te SURVEILLERAI. Tu ne peux ECHAPPER aux châtiments pour les CRIMES à venir.*~ */
  IF ~~ THEN REPLY #56672 /* ~"Très bien, Vhailor, considérons l'affaire classée… pour le moment. J'ai quelques questions à te poser…"~ */ GOTO 35
  IF ~  !InParty("Vhail")
~ THEN REPLY #56673 /* ~"Dans ce cas, c'est ici que nos chemins se séparent, Vhailor. Au revoir."~ */ EXIT
  IF ~  InParty("Vhail")
~ THEN REPLY #56674 /* ~"Reçu 5 sur 5, Vhailor. Poursuivons."~ */ EXIT
END

IF ~~ THEN BEGIN 152 // from: 77.0 77.1
  SAY #56675 /* ~Tes paroles semblent résonner, aller en s'amplifiant. Au même instant, les braises dans les yeux de Vhailor vacillent… et se mettent à couler. Son armure s'effondre, la hache et les plates métalliques s'affaissant dans un fracas de ferraille. Mais en touchant terre, elles soulèvent des nuages de poussière…  des particules de cendre et de rouille montent du métal, tandis que les plates et la hache vieillissent et se désagrègent sous tes yeux. Restent seulement quelques plates métalliques trouées comme vestige de l'existence passée de Vhailor.~ */
  IF ~~ THEN REPLY #56676 /* ~"Repose en paix, Vhailor."~ */ DO ~LeaveParty()
Kill(Myself)
SetGlobal("Belief_Kill_Vhailor","GLOBAL",1)
~ EXIT
END

IF ~~ THEN BEGIN 153 // from:
  SAY #56883 /* ~*La stupidité est un signe de FAIBLESSE. Il n'y a rien d'INJUSTE à PRENDRE avantage sur quiconque cherche à en faire autant.*~ */
  IF ~~ THEN EXTERN ~DFHJULL~ 42
END

IF ~~ THEN BEGIN 154 // from:
  SAY #56892 /* ~*La JUSTICE s'applique même aux FIÉLONS.*~ */
  IF ~~ THEN REPLY #56894 /* ~"Oui. Allons-y."~ */ EXIT
END

IF ~~ THEN BEGIN 155 // from:
  SAY #57391 /* ~Vhailor s'avance soudainement, les yeux luisant de colère. "Je n'appelle *pas* ça la justice, mais à peine une *parodie* infantile. Il n'y aura *pas* d'exécution, 'magistrat'… à moins que tes actes ne me forcent à rendre justice moi-même."~ */
  IF ~~ THEN EXTERN ~DJUDGE~ 2
END

IF ~~ THEN BEGIN 156 // from:
  SAY #57392 /* ~"Tu te conduiras désormais de manière plus appropriée, magistrat. Que je n'apprenne pas le contraire… ou je *reviendrai* pour toi, quelle que soit la distance. Efforce-toi de servir la justice et tu seras sauf. Au revoir."~ */
  IF ~~ THEN REPLY #57393 /* ~"Merci, Vhailor. Au revoir, magistrat."~ */ DO ~IncrementGlobal("Curst_Counter","GLOBAL",1)
~ EXIT
END

IF ~~ THEN BEGIN 157 // from:
  SAY #63704 /* ~"La Justice n'est *pas* aveugle. *Je* suis ses yeux."~ [VHA255] */
  IF ~~ THEN EXIT
END

IF WEIGHT #3 ~  Global("Fortress_Vhailor","GLOBAL",3)
~ THEN BEGIN 158 // from:
  SAY #68222 /* ~La carapace métallique de Vhailor réagit instantanément à ton pouvoir : elle s'élève dans les airs et reprend forme humaine. Les pièces se fixent les unes aux autres et, une fois cela fait, deux yeux brûlants apparaissent derrière le heaume.~ */
  IF ~  Global("Absorb","GLOBAL",0)
~ THEN REPLY #68223 /* ~"Vhailor ?"~ */ DO ~SetGlobal("Fortress_Vhailor","GLOBAL",4)
JoinPartyEx(TRUE)
~ GOTO 159
  IF ~  GlobalGT("Absorb","GLOBAL",0)
~ THEN REPLY #68398 /* ~LÈVE-TOI, VHAILOR.~ */ GOTO 164
END

IF ~~ THEN BEGIN 159 // from: 158.0
  SAY #68225 /* ~*Me voici SORTI de mon SOMMEIL*.~ [VHA002] */
  IF ~~ THEN REPLY #68226 /* ~"Écoute-moi, Vhailor : une grande injustice a été commise. Chaque fois que je meurs, quelqu'un d'autre périt à ma place. Cela s'est produit des centaines, des milliers de fois, ou peut-être plus encore. Le multivers ne cesse de mourir afin que je puisse continuer à vivre."~ */ DO ~PermanentStatChange("Vhail",STR,RAISE,3)
PermanentStatChange("Vhail",DEX,SET,25)
PermanentStatChange("Vhail",CON,SET,25)
GiveExperience("Vhail",2000000)
~ GOTO 160
  IF ~~ THEN REPLY #68263 /* ~"J'ai besoin de ton aide, Vhailor ; ma mortalité cherche à nous tuer."~ */ GOTO 163
END

IF ~~ THEN BEGIN 160 // from: 159.0
  SAY #68227 /* ~Lorsque tu prononces ces paroles, Vhailor semble *gonfler* et devenir un être d'énergie pure plutôt qu'une armure animée.~ */
  IF ~~ THEN REPLY #68228 /* ~"J'ai conscience de mon crime et j'essaye de faire en sorte qu'il ne se reproduise plus jamais, mais la seule créature pouvant mettre un terme à cette situation est trop égoïste pour accepter de le faire."~ */ DO ~FullHealEx("Vhail")
~ GOTO 161
END

IF ~~ THEN BEGIN 161 // from: 160.0
  SAY #68229 /* ~*TU FAIS DÉSORMAIS PARTIE DES CONDAMNÉS, TOUT COMME CET AUTRE. VOS ÂMES À TOUS LES DEUX FINIRONT EMBROCHÉES SUR LA LAME DE LA JUSTICE.*~ */
  IF ~~ THEN REPLY #68230 /* ~"Très bien, Vhailor. Mais il faut d'abord que tu t'occupes de l'autre."~ */ GOTO 162
END

IF ~~ THEN BEGIN 162 // from: 161.0
  SAY #68231 /* ~*JE VAIS LE FAIRE, APRÈS QUOI JE REVIENDRAI POUR TOI.*~ */
  IF ~  Global("Trans_Vanish","GLOBAL",0)
~ THEN REPLY #68232 /* ~"Très bien, Vhailor."~ */ EXTERN ~DTRANS~ 142
  IF ~  Global("Trans_Vanish","GLOBAL",1)
GlobalGT("Fortress_Nordom","GLOBAL",0)
~ THEN REPLY #68233 /* ~"Très bien, Vhailor."~ */ DO ~StartCutSceneMode()
StartCutSceneEx("1204n0",FALSE)
~ EXIT
  IF ~  Global("Trans_Vanish","GLOBAL",1)
Global("Fortress_Nordom","GLOBAL",0)
~ THEN REPLY #68244 /* ~"Très bien, Vhailor."~ */ DO ~StartCutSceneMode()
StartCutSceneEx("1204tr",FALSE)
~ EXIT
END

IF ~~ THEN BEGIN 163 // from: 159.1
  SAY #68264 /* ~*DANS CE CAS, TA MORTALITÉ VA MOURIR.*~ */
  IF ~  Global("Trans_Vanish","GLOBAL",0)
~ THEN REPLY #68265 /* ~"D'accord, Vhailor…"~ */ EXTERN ~DTRANS~ 142
  IF ~  Global("Trans_Vanish","GLOBAL",1)
GlobalGT("Fortress_Nordom","GLOBAL",0)
~ THEN REPLY #68266 /* ~"D'accord, Vhailor…"~ */ DO ~StartCutSceneMode()
StartCutSceneEx("1204n0",FALSE)
~ EXIT
  IF ~  Global("Trans_Vanish","GLOBAL",1)
Global("Fortress_Nordom","GLOBAL",0)
~ THEN REPLY #68267 /* ~"D'accord, Vhailor…"~ */ DO ~StartCutSceneMode()
StartCutSceneEx("1204tr",FALSE)
~ EXIT
END

IF ~~ THEN BEGIN 164 // from: 158.1
  SAY #68399 /* ~Le heaume de Vhailor se tourne vers toi, ses yeux battant comme un cœur.~ */
  IF ~~ THEN REPLY #68400 /* ~LA MAIN DE LA JUSTICE EST RAPIDE, VHAILOR, ET ELLE VIENT ME CHERCHER ALORS MÊME QUE NOUS PARLONS. JE NE PUIS RESTER ICI BIEN LONGTEMPS. SI TU VEUX, JE PEUX TE RENVOYER À SIGIL.~ */ GOTO 165
END

IF ~~ THEN BEGIN 165 // from: 164.0
  SAY #68401 /* ~*Quel CRIME a attiré vers toi l'attention de la JUSTICE ?*~ */
  IF ~~ THEN REPLY #68402 /* ~BEAUCOUP SONT MORTS AFIN QUE JE PUISSE VIVRE, VHAILOR. LE CRIME QUE J'AI COMMIS EST TERRIBLE, ET LE TEMPS ET LE DESTIN VIENNENT ME CHERCHER.~ */ GOTO 166
END

IF ~~ THEN BEGIN 166 // from: 165.0
  SAY #68403 /* ~*Laisse-toi porter par mes PAROLES. La JUSTICE a pour vocation d'enseigner. Trouve une nouvelle FORCE dans ton CHÂTIMENT et il te permettra d'atteindre la PERFECTION.*~ */
  IF ~~ THEN REPLY #68404 /* ~PEUT-ÊTRE, VHAILOR. JE RÉFLÉCHIRAI À TES PAROLES.~ */ GOTO 167
END

IF ~~ THEN BEGIN 167 // from: 166.0
  SAY #68405 /* ~*SACHE que, si tu venais à échapper à ton châtiment, je te retrouverais, SANS-NOM.*~ */
  IF ~~ THEN GOTO 168
END

IF ~~ THEN BEGIN 168 // from: 167.0
  SAY #68406 /* ~*Rien ne doit arrêter la main de la justice.*~ [VHA010] */
  IF ~~ THEN REPLY #68407 /* ~JE CROIS QUE NOUS NE NOUS REVERRONS PLUS, VHAILOR. JE VIVRAI POUR UN TEMPS DANS LE PALAIS DE LA JUSTICE, LÀ OÙ LE TEMPS NE SE MESURE PAS EN ANNÉES. AU REVOIR.~ */ DO ~QuitGame(FINALE,0,0)
~ EXIT
END

IF WEIGHT #4 ~  Global("Fortress_Vhailor","GLOBAL",4)
~ THEN BEGIN 169 // from:
  SAY #68420 /* ~*Rien ne doit arrêter la main de la justice.*~ [VHA010] */
  IF ~~ THEN REPLY #68421 /* ~"Maintiens-le sous pression, Vhailor. Ne lui laisse pas la possibilité de se concentrer."~ */ EXIT
END

IF ~~ THEN BEGIN 170 // from:
  SAY #106513 /* ~Vhailor se détourne du corps de Trias pour te faire face directement. *Tu es aussi CLÉMENT que FAIBLE. RENFORCE ton CŒUR avant que la maladie ne se RÉPANDE.*~ [VHA013] */
  IF ~~ THEN REPLY #62707 /* ~"On en parlera une autre fois. Allons-y."~ */ EXIT
END
