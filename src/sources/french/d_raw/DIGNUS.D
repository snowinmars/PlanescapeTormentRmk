// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DIGNUS.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\fr_FR\dialog.tlk
// dialogF  : (none)

BEGIN ~DIGNUS~

IF ~  Global("Ignus","GLOBAL",0)
!GlobalGT("Fortress_Ignus","GLOBAL",2)
~ THEN BEGIN 0 // from:
  SAY #2846 /* ~Cette créature crépitante, ondulante se tord lentement au-dessus d'un grill en fer sur le plancher du bar. Ce fut peut-être un humain, mais elle n'est désormais plus reconnaissable. Des volutes de feu forment une spirale autour du corps de la créature et les flammes lèchent les quelques lambeaux de chair épargnés, qui se mettent en ébullition et coulent comme de la cire le long du squelette de la créature.~ */
  IF ~~ THEN REPLY #16198 /* ~"Bonjour… ?"~ */ DO ~SetAnimState("Ignus",ANIM_MIMESTANDFIDGET1)
~ GOTO 1
  IF ~~ THEN REPLY #16200 /* ~Examine le cadavre fumant.~ */ DO ~SetAnimState("Ignus",ANIM_MIMESTANDFIDGET1)
~ GOTO 2
  IF ~  PartyHasItem("Decant2")
~ THEN REPLY #16201 /* ~"Hmmm. Je me demande si cette Carafe d'eau intarissable servira à quelque chose…"~ */ DO ~SetAnimState("Ignus",ANIM_MIMEGETHIT)
~ GOTO 3
  IF ~~ THEN REPLY #16210 /* ~Laisse la chose tranquille.~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0 2.0
  SAY #2847 /* ~La chose ne répond pas. Elle se contorsionne lentement dans les flammes ; elle vit, mais ne semble pas *consciente* de quoi que ce soit qui l'entoure à l'exception du feu. Sa peau est flammes, son cœur est flammes et tu sais, dans un recoin de ta mémoire, que cette chose est *dangereuse*.~ */
  IF ~~ THEN REPLY #16212 /* ~Examine la créature.~ */ DO ~SetAnimState("Ignus",ANIM_MIMESTANDFIDGET1)
~ GOTO 2
  IF ~  PartyHasItem("Decant2")
~ THEN REPLY #16213 /* ~"Hmmm. Je me demande si cette Carafe d'eau intarissable servira à quelque chose…"~ */ DO ~SetAnimState("Ignus",ANIM_MIMEGETHIT)
~ GOTO 3
  IF ~~ THEN REPLY #16214 /* ~Laisse la chose tranquille.~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 0.1 1.0
  SAY #16199 /* ~La chaleur qui entoure cette… créature… est incroyable. À ta grande surprise, la chaleur a fait se ployer et se tordre le grill en fer au-dessus duquel plane la créature. Au début, tu pensais que la chaleur provenait du grill… tu comprends à présent qu'elle émane de la créature. Des particules de cendre se séparent de la créature en contorsion et montent lentement vers le plafond.~ */
  IF ~~ THEN REPLY #16215 /* ~"Bonjour… ?"~ */ DO ~SetAnimState("Ignus",ANIM_MIMESTANDFIDGET1)
~ GOTO 1
  IF ~  PartyHasItem("Decant2")
~ THEN REPLY #16216 /* ~"Hmmm. Je me demande si cette Carafe d'eau intarissable servira à quelque chose…"~ */ DO ~SetAnimState("Ignus",ANIM_MIMEGETHIT)
~ GOTO 3
  IF ~~ THEN REPLY #16217 /* ~Laisse la chose tranquille.~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 0.2 1.1 2.1
  SAY #16202 /* ~Tu inclines la carafe au-dessus du grill et tu commences à verser. Un petit filet d'eau bleu vif tombe de la carafe et touche les flammes du grill provoquant un chuintement violent et un jet de vapeur… comme pour répondre à ce défi, la carafe semble se *jeter* en avant, tomber dans le grill et éclater !~ */
  IF ~~ THEN REPLY #16218 /* ~"Par tous les diables… ?!"~ */ DO ~DestroyPartyItem("Decant2",TRUE)
AddexperienceParty(5000)
SetAnimState("Ignus",ANIM_MIMESTANCEFIDGET1)
~ GOTO 4
END

IF ~~ THEN BEGIN 4 // from: 3.0
  SAY #16203 /* ~Des flots chuintants de vapeur et un pétillement impétueux s'échappent du grill, se répandant sur toi et te force à te boucher les oreilles et à fuir… il y a un hurlement, un craquèlement, un bruit terrible semblable à des centaines de bâtiments en feu, des gens qui hurlent, leurs hurlements interrompus par le rugissement des flammes et la peau en fusion…~ */
  IF ~~ THEN REPLY #16219 /* ~Bouche-toi les oreilles, protège-toi du bruit.~ */ DO ~SetAnimState("Ignus",ANIM_MIMESTANCEFIDGET1)
~ GOTO 5
END

IF ~~ THEN BEGIN 5 // from: 4.0
  SAY #16204 /* ~Alors que tu te bouches les oreilles pour te protéger du bruit, tu as l'impression que tes mains sont visqueuses, comme du fromage fondu ou de la cire de bougie… tes oreilles sont meurtries par le bruit et saignent ! Tu regardes tes mains et tu t'aperçois qu'elles sont couvertes de morceaux de chair fondue pleins de volutes sanglantes…~ */
  IF ~~ THEN REPLY #16220 /* ~Essaie de sortir du bar.~ */ DO ~SetAnimState("Ignus",ANIM_MIMESTANCEFIDGET1)
~ GOTO 6
END

IF ~~ THEN BEGIN 6 // from: 5.0
  SAY #16205 /* ~Tu es sur le point de quitter le bar, de fuir ce bruit, lorsque soudain tout devient silencieux, hormis un vif craquèlement provenant du grill. Tu te tournes -- sur le grill repose la Carafe d'eau intarissable, qui n'est plus que tessons et vapeur. Au-dessus il y a la créature, des flammes se détachant toujours de son corps, planant au-dessus du plancher du bar. Elle te regarde, ses yeux vacillant comme deux torches…~ */
  IF ~~ THEN REPLY #16221 /* ~"Je te *connais*…"~ */ GOTO 7
END

IF ~~ THEN BEGIN 7 // from: 6.0
  SAY #16206 /* ~Le visage de la créature se fend et quelques lambeaux de chair carbonisée se décollent de sa mâchoire pour lui permettre de parler. *"Ouiiii…"* Sa voix crépite, brûle, mugit dans sa poitrine, et à chaque syllabe, de la cendre et de la fumée sortent de sa bouche et s'envolent. Sa vue est quasiment insoutenable pour toi ; l'éclat flamboyant qui l'entoure est à la limite du supportable.~ [IGN116] */
  IF ~~ THEN REPLY #16222 /* ~"Ignus…"~ */ DO ~SetGlobal("Ignus_Free","GLOBAL",1)
SetGlobal("Ignus","GLOBAL",2)
ChangeAIScript("pcignus",DEFAULT)
JoinPartyEx(TRUE)
~ GOTO 8
END

IF ~~ THEN BEGIN 8 // from: 7.0
  SAY #16207 /* ~*"Ouiiii…"* La créature plane vers toi, et l'air tourbillonne sous la chaleur qu'il dégage. *"Longtemps j'ai sssommmeillé… ssssonges de flammmes…"* Comme en réponse, des flammes se forment dans la gorge d'Ignus, et une langue de feu s'échappe de ses dents noircies. *"Je ssssuisss à toiiii… jussssqu'à ccce que la mort nous ssssaisissse tous deux…"*~ [IGN004C] */
  IF ~~ THEN REPLY #48406 /* ~"On verra…"~ */ EXIT
END

IF ~  Global("Ignus","GLOBAL",1)
!InParty("Ignus")
!GlobalGT("Fortress_Ignus","GLOBAL",2)
~ THEN BEGIN 9 // from:
  SAY #16208 /* ~Tandis que tu t'approches, la créature se tourne vers toi, et l'air tourbillonne sous la chaleur qu'il dégage. *"Longtemps j'ai sssommmeillé… ssssonges de flammmes…"*~ [IGN004B] */
  IF ~~ THEN REPLY #16223 /* ~"Bonjour, Ignus… tu veux voyager avec moi ?"~ */ DO ~SetGlobal("Ignus","GLOBAL",2)
ChangeAIScript("pcignus",DEFAULT)
JoinPartyEx(TRUE)
~ GOTO 10
  IF ~~ THEN REPLY #52781 /* ~"Garde tes rêves pour toi, Ignus… Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 10 // from: 9.0
  SAY #16209 /* ~Comme en réponse, des flammes se forment dans la gorge d'Ignus, et une langue de feu s'échappe de ses dents noircies. *"Je ssssuisss à toiiii… jussssqu'à ccce que la mort nous ssssaisissse tous deux…"*~ [IGN248] */
  IF ~~ THEN REPLY #52782 /* ~"On verra…"~ */ DO ~SetGlobal("Party_Ignus_Rejoining_VO","GLOBAL",1)
~ EXIT
END

IF ~~ THEN BEGIN 11 // from:
  SAY #16624 /* ~Ignus se retourne lentement pour te regarder droit dans les yeux. *"Ouiii ?"*~ */
  IF ~  !Global("Evil_Mourns_2","GLOBAL",1)
~ THEN REPLY #16922 /* ~"Peu importe. Ce n'était pas une bonne idée. J'ai des questions, Deuils…"~ */ EXTERN ~DMFTREE~ 28
  IF ~  Global("Evil_Mourns_2","GLOBAL",1)
~ THEN REPLY #16923 /* ~"Tu vois ces arbres, Ignus ? Tu penses que tu pourrais t'en *soucier* sincèrement ?"~ */ GOTO 12
  IF ~~ THEN REPLY #16924 /* ~"Rien. Je ne sais pas à quoi je pensais. Au revoir, Deuils-pour-Arbres."~ */ EXIT
END

IF ~~ THEN BEGIN 12 // from: 11.1
  SAY #16625 /* ~Ignus se tourne vers les arbres, et l'air qui l'entoure devient très vite trop chaud pour toi. *"Ouiii… brûûûle…"*~ */
  IF ~~ THEN EXTERN ~DMFTREE~ 52
END

IF ~~ THEN BEGIN 13 // from:
  SAY #16626 /* ~Ignus lâche un rire terrible ; des langues de flammes font éruption de sa gorge. *"Tu t'interrrposes entre moiii et la chooose quiii brûuule ? Toiiii ausssi, tuuu vaaas brûûûler…"*~ */
  IF ~~ THEN REPLY #16925 /* ~"Ignus, attends…"~ */ DO ~Attack("MFTree")
~ EXIT
  IF ~~ THEN REPLY #16926 /* ~Laisse-le faire ce qu'il veut.~ */ DO ~Attack("MFTree")
IncrementGlobalOnceEx("GLOBALEvil_Mourns_3","GLOBALGood",-2)
~ EXIT
END

IF ~  GlobalGT("Ignus","GLOBAL",1)
!InParty("Ignus")
Global("Party_Ignus_Waiting_VO","GLOBAL",0)
!GlobalGT("Fortress_Ignus","GLOBAL",2)
~ THEN BEGIN 14 // from:
  SAY #33991 /* ~Alors que tu t'approches de lui, Ignus se retourne et l'air tourbillonne sous la chaleur qu'il dégage. *"Lorsssque je gissssais iccccci… mes penssssées pleines de flammesssss…"*~ [IGN247] */
  IF ~  Global("Party_Ignus_Rejoining_VO","GLOBAL",0)
~ THEN REPLY #33992 /* ~"Ignus, j'ai besoin de ton aide."~ */ DO ~SetGlobal("Party_Ignus_Waiting_VO","GLOBAL",1)
ChangeAIScript("pcignus",DEFAULT)
JoinPartyEx(TRUE)
~ GOTO 15
  IF ~  Global("Party_Ignus_Rejoining_VO","GLOBAL",1)
~ THEN REPLY #61855 /* ~"Ignus, j'ai besoin de ton aide."~ */ DO ~SetGlobal("Party_Ignus_Waiting_VO","GLOBAL",1)
ChangeAIScript("pcignus",DEFAULT)
JoinPartyEx(TRUE)
~ GOTO 86
  IF ~  Global("Party_Ignus_Rejoining_VO","GLOBAL",2)
~ THEN REPLY #61856 /* ~"Ignus, j'ai besoin de ton aide."~ */ DO ~SetGlobal("Party_Ignus_Waiting_VO","GLOBAL",1)
ChangeAIScript("pcignus",DEFAULT)
JoinPartyEx(TRUE)
~ GOTO 87
  IF ~  Global("Party_Ignus_Rejoining_VO","GLOBAL",3)
~ THEN REPLY #61857 /* ~"Ignus, j'ai besoin de ton aide."~ */ DO ~SetGlobal("Party_Ignus_Waiting_VO","GLOBAL",1)
ChangeAIScript("pcignus",DEFAULT)
JoinPartyEx(TRUE)
~ GOTO 88
  IF ~  Global("Party_Ignus_Rejoining_VO","GLOBAL",4)
~ THEN REPLY #61858 /* ~"Ignus, j'ai besoin de ton aide."~ */ DO ~SetGlobal("Party_Ignus_Waiting_VO","GLOBAL",1)
ChangeAIScript("pcignus",DEFAULT)
JoinPartyEx(TRUE)
~ GOTO 89
  IF ~  Global("Party_Ignus_Rejoining_VO","GLOBAL",5)
~ THEN REPLY #61859 /* ~"Ignus, j'ai besoin de ton aide."~ */ DO ~SetGlobal("Party_Ignus_Waiting_VO","GLOBAL",1)
ChangeAIScript("pcignus",DEFAULT)
JoinPartyEx(TRUE)
~ GOTO 90
  IF ~~ THEN REPLY #61860 /* ~"Ah… je vois. Au revoir."~ */ DO ~SetGlobal("Party_Ignus_Waiting_VO","GLOBAL",1)
~ EXIT
END

IF ~~ THEN BEGIN 15 // from: 14.0 84.0 85.0
  SAY #33994 /* ~*"Je sssssuis à toi… jusssqu'à cccce que la mort nous ssssaisissse tous deux…"*~ [IGN248] */
  IF ~~ THEN REPLY #33995 /* ~"Très bien. Allons-y."~ */ DO ~SetGlobal("Party_Ignus_Rejoining_VO","GLOBAL",1)
~ EXIT
END

IF ~  InParty("Ignus")
!GlobalGT("Fortress_Ignus","GLOBAL",2)
~ THEN BEGIN 16 // from:
  SAY #33996 /* ~Des flammes s'enroulent autour de la langue d'Ignus, et une langue enflammée s'échappe de derrière ses dents noircies. *"Qu'est-ccccce…?"*~ [IGN249] */
  IF ~~ THEN REPLY #33997 /* ~"Ignus, qu'est-ce qui t'a mis dans un état pareil ?"~ */ GOTO 31
  IF ~  Global("Story_Reekwind_Ignus","GLOBAL",1)
~ THEN REPLY #57439 /* ~"Ignus… est-il vrai que tu as incendié l'Allée des Angles Dangereux ?"~ */ GOTO 36
  IF ~~ THEN REPLY #57440 /* ~"Que faisais-tu dans le bar du Cadavre fumant ?"~ */ GOTO 40
  IF ~  Global("Know_Ignus_Teacher","GLOBAL",1)
~ THEN REPLY #57441 /* ~"Ignus, j'ai discuté avec un conteur de la Ruche et il a dit que quelqu'un t'avait *enseigné* ces choses… qui ?"~ */ DO ~SetGlobal("Know_Ignus_Teacher","GLOBAL",2)
AddexperienceParty(10000)
~ GOTO 46
  IF ~  Global("Know_Ignus_Teacher","GLOBAL",2)
~ THEN REPLY #57442 /* ~"Ignus, es-tu SÛR que c'est moi qui t'ai enseigné ces choses ?"~ */ GOTO 47
  IF ~  Class(Protagonist,MAGE)
Global("Ignus_Teach","GLOBAL",0)
~ THEN REPLY #57443 /* ~"Ignus, ta maîtrise de l'Art… peux-tu m'enseigner quelques-uns de tes pouvoirs ?"~ */ GOTO 63
  IF ~  Class(Protagonist,MAGE)
Global("Ignus_Teach","GLOBAL",1)
~ THEN REPLY #57444 /* ~"Ignus, ta maîtrise de l'Art… je suis prêt à souffrir pour en apprendre plus."~ */ GOTO 65
  IF ~  Class(Protagonist,MAGE)
GlobalGT("Ignus_Teach","GLOBAL",1)
~ THEN REPLY #57445 /* ~"Ignus, ta maîtrise de l'Art… je suis prêt à souffrir pour en apprendre plus."~ */ GOTO 73
  IF ~  Global("Memory_Ignus_Taught","GLOBAL",1)
~ THEN REPLY #57446 /* ~"Ignus, pour ton enseignement, le tourment auquel je t'ai soumis… je suis désolé."~ */ DO ~IncrementGlobalOnceEx("GLOBALGood_Ignus_1","GLOBALGood",2)
~ GOTO 81
  IF ~~ THEN REPLY #57447 /* ~"Rien, Ignus. Je vérifiais juste que tu étais toujours avec nous… façon de parler."~ */ EXIT
END

IF ~~ THEN BEGIN 17 // from:
  SAY #52561 /* ~"*Brûûûle*…."~ [IGN144A] */
  IF ~  NearbyDialog("DMorte")
~ THEN REPLY #52562 /* ~"Et quels autres tourments tes yeux voient-ils, Ravel ?"~ */ DO ~SetGlobal("Ravel_Morte","GLOBAL",1)
~ EXTERN ~DRAVEL~ 35
  IF ~  !NearbyDialog("DMorte")
NearbyDialog("Dgrace")
~ THEN REPLY #52563 /* ~"Et quels autres tourments tes yeux voient-ils, Ravel ?"~ */ DO ~SetGlobal("Ravel_Grace","GLOBAL",1)
~ EXTERN ~DRAVEL~ 36
  IF ~  !NearbyDialog("DMorte")
!NearbyDialog("DGrace")
NearbyDialog("DAnnah")
~ THEN REPLY #52564 /* ~"Et quels autres tourments tes yeux voient-ils, Ravel ?"~ */ DO ~SetGlobal("Ravel_Annah","GLOBAL",1)
~ EXTERN ~DRAVEL~ 38
  IF ~  !NearbyDialog("DMorte")
!NearbyDialog("DGrace")
!NearbyDialog("DAnnah")
~ THEN REPLY #52565 /* ~"Et quels autres tourments tes yeux voient-ils, Ravel ?"~ */ EXTERN ~DRAVEL~ 40
END

IF ~~ THEN BEGIN 18 // from:
  SAY #52566 /* ~"*Brûûûle*…"~ [IGN144A] */
  IF ~  NearbyDialog("DMorte")
~ THEN REPLY #52567 /* ~"Ravel, tu t'es bien fait comprendre. Maintenant, ça suf-"~ */ DO ~SetGlobal("Ravel_Morte","GLOBAL",2)
~ EXTERN ~DRAVEL~ 65
  IF ~  !NearbyDialog("DMorte")
NearbyDialog("Dgrace")
~ THEN REPLY #52568 /* ~"Ravel, tu t'es bien fait comprendre. Maintenant, ça suf-"~ */ DO ~SetGlobal("Ravel_Grace","GLOBAL",2)
~ EXTERN ~DRAVEL~ 66
  IF ~  !NearbyDialog("DMorte")
!NearbyDialog("DGrace")
NearbyDialog("DAnnah")
~ THEN REPLY #52569 /* ~"Ravel, tu t'es bien fait comprendre. Maintenant, ça suf-"~ */ DO ~SetGlobal("Ravel_Annah","GLOBAL",2)
~ EXTERN ~DRAVEL~ 67
  IF ~  !NearbyDialog("DMorte")
!NearbyDialog("DGrace")
!NearbyDialog("DAnnah")
~ THEN REPLY #52570 /* ~"Ravel, tu t'es bien fait comprendre. Maintenant, ça suf-"~ */ EXTERN ~DRAVEL~ 68
END

IF ~~ THEN BEGIN 19 // from: 46.1
  SAY #54145 /* ~"*Je ssssuis à toi… jusssqu'à ccce que la mort nous sssurprenne tous DEUX…"*~ */
  IF ~  NearbyDialog("DGrace")
InParty("Grace")
~ THEN REPLY #54146 /* ~"Je… je vois. Tombée-en-Disgrâce ?"~ */ EXTERN ~DGRACE~ 168
  IF ~  !InParty("Grace")
NearbyDialog("DAnnah")
InParty("Annah")
~ THEN REPLY #54147 /* ~" Je… je vois. Annah ?"~ */ EXTERN ~DANNAH~ 272
  IF ~  !InParty("Grace")
!InParty("annah")
NearbyDialog("DDakkon")
GlobalLT("BD_DAKKON_MORALE","GLOBAL",6)
InParty("Dakkon")
~ THEN REPLY #54148 /* ~" Je… vois. Dak'kon ?"~ */ EXTERN ~DDAKKON~ 173
  IF ~  !InParty("grace")
!InParty("annah")
NearbyDialog("Ddakkon")
GlobalGT("BD_DAKKON_MORALE","GLOBAL",5)
InParty("Dakkon")
~ THEN REPLY #54149 /* ~" Je… vois. Dak'kon ?"~ */ EXTERN ~DDAKKON~ 172
  IF ~  !InParty("grace")
!InParty("annah")
!InParty("dakkon")
NearbyDialog("Dmorte")
InParty("Morte")
Global("Morte_Quip_Regret_Portal","GLOBAL",0)
~ THEN REPLY #54150 /* ~" Je… je vois. Morte ?"~ */ DO ~SetGlobal("Morte_Quip_Regret_Portal","GLOBAL",1)
~ EXTERN ~DMORTE~ 536
  IF ~  !InParty("grace")
!InParty("annah")
!InParty("dakkon")
NearbyDialog("Dmorte")
InParty("Morte")
GlobalGT("Morte_Quip_Regret_Portal","GLOBAL",0)
~ THEN REPLY #54151 /* ~" Je… je vois. Morte ?"~ */ EXTERN ~DMORTE~ 534
  IF ~  !NearbyDialog("DMorte")
~ THEN REPLY #54152 /* ~"Très bien… voyons ce qui se trouve de l'autre côté de ce portail."~ */ DO ~SetPortalCursor("Fort_Port",PORTAL_CURSOR_VISIBLE,TRUE)
SetPortalCursor("Fort_Port",PORTAL_ENABLED,TRUE)
~ EXIT
  IF ~  NearbyDialog("DMorte")
!InParty("Morte")
Global("Morte_Quip_Regret_Portal","GLOBAL",0)
~ THEN REPLY #54153 /* ~"Très bien… voyons ce qui se trouve de l'autre côté de ce portail."~ */ DO ~SetGlobal("Morte_Quip_Regret_Portal","GLOBAL",1)
~ EXTERN ~DMORTE~ 538
  IF ~  NearbyDialog("DMorte")
!InParty("Morte")
GlobalGT("Morte_Quip_Regret_Portal","GLOBAL",0)
~ THEN REPLY #54154 /* ~"Très bien… voyons ce qui se trouve de l'autre côté de ce portail."~ */ DO ~SetPortalCursor("Fort_Port",PORTAL_CURSOR_VISIBLE,TRUE)
SetPortalCursor("Fort_Port",PORTAL_ENABLED,TRUE)
~ EXIT
END

IF ~~ THEN BEGIN 20 // from: 31.2 33.2 34.3 35.1 39.1 40.2 45.1 46.2 47.3 48.3 49.2 51.1 63.2 64.2 65.4 68.2 72.2 73.3 77.2 81.2 82.2 83.2
  SAY #57448 /* ~"*HSSSS'SSSSS !*" Ton cœur fait un bond dans ta poitrine lorsque Ignus s'élève dans les airs, la mâchoire grande ouverte et laissant fuser des traînées de feu. "*PLUS DE QUESSSTIONS ! Ssssilenssse… !*"~ */
  IF ~  CheckStatGT(Protagonist,15,INT)
Global("Ignus_Coax","GLOBAL",0)
~ THEN REPLY #57449 /* ~"Mais je veux parler de flammes, Ignus, et d'incendie…"~ */ DO ~SetGlobal("Ignus_Coax","GLOBAL",1)
AddexperienceParty(1500)
~ GOTO 26
  IF ~  CheckStatGT(Protagonist,15,INT)
Global("Ignus_Coax","GLOBAL",1)
~ THEN REPLY #57450 /* ~"Mais je veux parler de flammes, Ignus, et d'incendie…"~ */ GOTO 27
  IF ~  CheckStatGT(Protagonist,10,CHR)
CheckStatLT(Protagonist,16,INT)
Global("Ignus_Coax","GLOBAL",0)
~ THEN REPLY #57451 /* ~"Mais je veux parler de flammes, Ignus, et d'incendie…"~ */ DO ~SetGlobal("Ignus_Coax","GLOBAL",1)
AddexperienceParty(1500)
~ GOTO 26
  IF ~  CheckStatGT(Protagonist,10,CHR)
CheckStatLT(Protagonist,16,INT)
Global("Ignus_Coax","GLOBAL",1)
~ THEN REPLY #57452 /* ~"Mais je veux parler de flammes, Ignus, et d'incendie…"~ */ GOTO 27
  IF ~~ THEN REPLY #57453 /* ~"Tu VAS répondre à mes questions, Ignus. Je t'ai libéré, et je pourrais très bien te renvoyer dans ton enfer."~ */ GOTO 21
  IF ~~ THEN REPLY #57454 /* ~"Très bien, dans ce cas…"~ */ EXIT
END

IF ~~ THEN BEGIN 21 // from: 20.4
  SAY #57580 /* ~"*TU pensssais pouvoir enchaîner Ignussss…?*" Les flammes tourbillonnent autour d'Ignus, puis s'éloignent de lui, comme pour venir te caresser. "*Ignussss peut te TUER… te réduire en pousssière… Ignusssss te ssssuit pour l'inssstant… mais les menassses mettent Ignusss… en COLÈRE…"*~ */
  IF ~~ THEN REPLY #57581 /* ~"Au fait, Ignus, tu ne peux pas m'arrêter - tu peux me brûler, mais je reviendrai vers toi jusqu'à ce que tu sois du petit bois. Alors *suffit*, plus de menaces…"~ */ DO ~SetAnimState("Ignus",ANIM_MIMETALK1)
~ GOTO 22
  IF ~~ THEN REPLY #57582 /* ~"Si *tu* le dis… nous parlerons plus tard, Ignus."~ */ EXIT
END

IF ~~ THEN BEGIN 22 // from: 21.0
  SAY #57583 /* ~L'air se met à crépiter et Ignus incline la tête de côté, comme pour mieux t'observer. "*Les FLAMMES brûleront ton immortalité, siffle-t-il. Tu n'es PAS à l'abri des mes flammes…*"~ */
  IF ~~ THEN REPLY #57584 /* ~"Peut-être que tu ne comprends pas ce que SIGNIFIE l'immortalité, Ignus…"~ */ DO ~SetAnimState("Ignus",ANIM_MIMESPELL2)
~ GOTO 23
  IF ~~ THEN REPLY #57585 /* ~"Comment sais-tu que je suis immortel ?"~ */ GOTO 23
  IF ~~ THEN REPLY #57586 /* ~"Si *tu* le dis… nous parlerons plus tard, Ignus."~ */ EXIT
END

IF ~~ THEN BEGIN 23 // from: 22.0 22.1
  SAY #57587 /* ~"*Tu n'es *PAS* immortel… Ignusssss peut te TUER… éparpiller tes sssendres dans le vent…"* Tu le regardes écarter les bras et la CHALEUR qu'il dégage est si puissante qu'elle te force à te protéger les yeux. Dans un rugissement assourdissant, l'air autour de toi est aspiré par Ignus.~ */
  IF ~~ THEN REPLY #57588 /* ~"Ignus ! Arrête ç -"~ */ DO ~SetAnimState("Ignus",ANIM_MIMESTANCEFIDGET1)
~ GOTO 24
END

IF ~~ THEN BEGIN 24 // from: 23.0
  SAY #57589 /* ~Alors que tu essaies de crier à Ignus d'arrêter, le flux de chaleur retourne d'où il est issu et une chaleur dévastatrice te submerge. Tu sens ta chair se consumer, puis fumer, puis la DOULEUR naissante… tu serres les dents et tu entends Ignus glousser…~ */
  IF ~~ THEN REPLY #57590 /* ~"Ignus !"~ */ DO ~SetGlobal("Ignus_Kill_Nameless","GLOBAL",1)
~ JOURNAL #57591 /* ~Ignus est devenu complètement azimuté quand je lui ai parlé. J'ai survécu à sa crise de folie, mais son pouvoir élémentaire est si puissant que je me demande s'il ne serait pas capable de me tuer… de manière permanente.~ */ GOTO 25
END

IF ~~ THEN BEGIN 25 // from: 24.0
  SAY #57603 /* ~Tu cries une nouvelle fois son nom, et la chaleur s'évanouit. Lorsque tu enlèves les bras de ton visage, tu t'aperçois que ta peau à noirci là où Ignus l'a brûlée… et que ce dernier te regarde d'un air affamé. Tu sais mieux que quiconque que quoi qu'Ignus puisse être, quelle que soit la puissance qui l'ait adopté, il a le pouvoir de te détruire. Et si ses flammes venaient à te tuer, il ne resterait plus rien de ton corps.~ */
  IF ~~ THEN REPLY #57605 /* ~"J'en ai plus qu'ASSEZ de toi, Ignus… peut-être que tu peux me tuer, peut-être que non - je suis prêt à essayer."~ */ GOTO 29
  IF ~~ THEN REPLY #57607 /* ~"Très bien, Ignus. Nous discuterons plus tard, toi et moi…"~ */ EXIT
END

IF ~~ THEN BEGIN 26 // from: 20.0 20.2
  SAY #57608 /* ~Tes mots sont comme du pétrole qui emplirait les yeux d'Ignus et alimenterait les flammes qui y dansent. "Des *flammes* ?" Ignus flotte lentement, la chaleur montant autour de lui, comme s'il était intéressé. "*Parle… Ignusss t'écoute…*"~ */
  IF ~~ THEN REPLY #57609 /* ~"Ignus, qu'est-ce qui t'a mis dans un état pareil ?"~ */ GOTO 31
  IF ~  Global("Story_Reekwind_Ignus","GLOBAL",1)
~ THEN REPLY #57610 /* ~"Ignus… est-il vrai que tu as incendié l'Allée des Angles Dangereux ?"~ */ GOTO 36
  IF ~~ THEN REPLY #57612 /* ~"Que faisais-tu dans le bar du Cadavre fumant ?"~ */ GOTO 40
  IF ~  Global("Know_Ignus_Teacher","GLOBAL",1)
~ THEN REPLY #57613 /* ~"Ignus, j'ai discuté avec un conteur de la Ruche et il a dit que quelqu'un t'avait *enseigné* ces choses… qui ?"~ */ DO ~SetGlobal("Know_Ignus_Teacher","GLOBAL",2)
AddexperienceParty(6000)
~ GOTO 46
  IF ~  Global("Know_Ignus_Teacher","GLOBAL",2)
~ THEN REPLY #57616 /* ~"Ignus, es-tu SÛR que c'est moi qui t'ai enseigné ces choses ?"~ */ GOTO 47
  IF ~  Class(Protagonist,MAGE)
Global("Ignus_Teach","GLOBAL",0)
~ THEN REPLY #57619 /* ~"Ignus, ta maîtrise de l'Art… peux-tu m'enseigner quelques-uns de tes pouvoirs ?"~ */ GOTO 63
  IF ~  Class(Protagonist,MAGE)
Global("Ignus_Teach","GLOBAL",1)
~ THEN REPLY #57624 /* ~"Ignus, ta maîtrise de l'Art… je suis prêt à souffrir pour en apprendre plus."~ */ GOTO 65
  IF ~  Class(Protagonist,MAGE)
GlobalGT("Ignus_Teach","GLOBAL",1)
~ THEN REPLY #57628 /* ~"Ignus, ta maîtrise de l'Art… je suis prêt à souffrir pour en apprendre plus."~ */ GOTO 73
  IF ~  Global("Memory_Ignus_Taught","GLOBAL",1)
~ THEN REPLY #57630 /* ~"Ignus, pour ton enseignement, le tourment auquel je t'ai soumis… je suis désolé."~ */ DO ~IncrementGlobalOnceEx("GLOBALGood_Ignus_1","GLOBALGood",2)
~ GOTO 81
  IF ~~ THEN REPLY #57633 /* ~"Nous discuterons de flammes plus tard, Ignus, pas maintenant."~ */ DO ~SetAnimState("Ignus",ANIM_MIMEATTACK2)
~ GOTO 28
END

IF ~~ THEN BEGIN 27 // from: 20.1 20.3 28.0 31.1 33.1 34.2 35.0 39.0 40.1 45.0 47.2 48.2 49.1 51.0 63.1 64.1 65.3 68.1 72.1 73.2 77.1 81.1 82.1 83.1
  SAY #57636 /* ~"Des *flammes*… ?" La voix d'Ignus crépite, comme s'il était intéressé. "Parle… Ignusss t'écoute…"*~ */
  IF ~~ THEN REPLY #57637 /* ~"Ignus, qu'est-ce qui t'a mis dans un état pareil ?"~ */ GOTO 31
  IF ~  Global("Story_Reekwind_Ignus","GLOBAL",1)
~ THEN REPLY #57639 /* ~"Ignus… est-il vrai que tu as incendié l'Allée des Angles Dangereux ?"~ */ GOTO 36
  IF ~~ THEN REPLY #57641 /* ~"Que faisais-tu dans le bar du Cadavre fumant ?"~ */ GOTO 40
  IF ~  Global("Know_Ignus_Teacher","GLOBAL",1)
~ THEN REPLY #57643 /* ~"Ignus, j'ai discuté avec un conteur de la Ruche et il a dit que quelqu'un t'avait *enseigné* ces choses… qui ?"~ */ DO ~SetGlobal("Know_Ignus_Teacher","GLOBAL",2)
AddexperienceParty(6000)
~ GOTO 46
  IF ~  Global("Know_Ignus_Teacher","GLOBAL",2)
~ THEN REPLY #57645 /* ~"Ignus, es-tu SÛR que c'est moi qui t'ai enseigné ces choses ?"~ */ GOTO 47
  IF ~  Class(Protagonist,MAGE)
Global("Ignus_Teach","GLOBAL",0)
~ THEN REPLY #57648 /* ~"Ignus, ta maîtrise de l'Art… peux-tu m'enseigner quelques-uns de tes pouvoirs ?"~ */ GOTO 63
  IF ~  Class(Protagonist,MAGE)
Global("Ignus_Teach","GLOBAL",1)
~ THEN REPLY #57650 /* ~"Ignus, ta maîtrise de l'Art… je suis prêt à souffrir pour en apprendre plus."~ */ GOTO 65
  IF ~  Class(Protagonist,MAGE)
GlobalGT("Ignus_Teach","GLOBAL",1)
~ THEN REPLY #57654 /* ~"Ignus, ta maîtrise de l'Art… je suis prêt à souffrir pour en apprendre plus."~ */ GOTO 73
  IF ~  Global("Memory_Ignus_Taught","GLOBAL",1)
~ THEN REPLY #57656 /* ~"Ignus, pour ton enseignement, le tourment auquel je t'ai soumis… je suis désolé."~ */ DO ~IncrementGlobalOnceEx("GLOBALGood_Ignus_1","GLOBALGood",2)
~ GOTO 81
  IF ~~ THEN REPLY #57658 /* ~"Je n'ai pas d'autres questions… que tes rêves soient enflammés, Ignus…"~ */ DO ~SetAnimState("Ignus",ANIM_MIMEATTACK2)
~ GOTO 28
END

IF ~~ THEN BEGIN 28 // from: 26.9 27.9
  SAY #57659 /* ~"*NON ! PARLE !*" Ignus hurle et l'air autour de toi tourbillonne une nouvelle fois sous l'effet de la chaleur. "*PARLE DES FLAMMES ! PARLE DE L'INSSSENDIE !*"~ */
  IF ~~ THEN REPLY #57660 /* ~"Euh… très bien. J'avais des questions… à propos de flammes…"~ */ GOTO 27
  IF ~~ THEN REPLY #57661 /* ~"Non, Ignus… nous discuterons une autre fois ! Pas maintenant !"~ */ DO ~SetAnimState("Ignus",ANIM_MIMESTANDFIDGET1)
~ GOTO 29
  IF ~  CheckStatGT(Protagonist,12,CHR)
Global("Ignus_Calm_Tale","GLOBAL",0)
~ THEN REPLY #57662 /* ~"Ignus… as-tu déjà *ressenti* un bâtiment en flammes ? Les flammes qui lèchent les poutres, noircissent le bois à l'intérieur, la chaleur qui arrache la peinture des murs, le craquement du chaume, l'odeur de la paille brûlée…"~ */ DO ~SetGlobal("Ignus_Calm_Tale","GLOBAL",1)
AddexperienceParty(1500)
SetAnimState("Ignus",ANIM_MIMESTAND)
~ GOTO 30
  IF ~  CheckStatGT(Protagonist,12,CHR)
GlobalGT("Ignus_Calm_Tale","GLOBAL",0)
~ THEN REPLY #57663 /* ~"Ignus… as-tu déjà *ressenti* un bâtiment en flammes ? Les flammes qui lèchent les poutres, noircissent le bois à l'intérieur, la chaleur qui arrache la peinture des murs, le craquement du chaume, l'odeur de la paille brûlée…"~ */ DO ~SetAnimState("Ignus",ANIM_MIMESTAND)
~ GOTO 30
END

IF ~~ THEN BEGIN 29 // from: 25.0 28.1 82.0
  SAY #57664 /* ~Ignus pousse un horrible *rugissement* et une aura de flammes l'entoure soudainement. Dans le même temps, ses yeux deviennent comme une fenêtre ouverte sur un autre LIEU. Il lève les mains et les flammes qui crépitent autour de ses doigts grandissent pour devenir des fouets de feu. "*Tu vas BRÛLEEER !*"~ */
  IF ~~ THEN REPLY #57665 /* ~"Ignus, tu l'as *cherché*…"~ */ DO ~LeaveParty()
Enemy()
Attack(Protagonist)
ChangeAIScript("MDKTNO",DEFAULT)
ForceAttack(Protagonist,Myself)
~ EXIT
END

IF ~~ THEN BEGIN 30 // from: 28.2 28.3
  SAY #57666 /* ~Tandis que tu parles, le crépitement des flammes qui entourent Ignus se fait moins fort, comme si le feu lui-même t'écoutait… lorsque tu as fini, Ignus siffle doucement et les flammes qui brûlaient dans ses yeux ont perdu de leur intensité, comme s'il était perdu dans ses souvenirs. "*Ouiiii….*"~ */
  IF ~~ THEN REPLY #57667 /* ~"Nous discuterons plus tard, Ignus… d'ici là, calme-toi."~ */ EXIT
END

IF ~~ THEN BEGIN 31 // from: 16.0 26.0 27.0
  SAY #57668 /* ~"*Comme ççça…*" Une poche de chair *éclate* sur la joue d'Ignus et s'écoule en bouillonnant le long de sa mâchoire. "*Ignussss a toujours été… Comme ççça…*"~ */
  IF ~~ THEN REPLY #57669 /* ~"Mais… tu parais humain. Ou, du moins, tu as l'air d'avoir autrefois été humain."~ */ DO ~SetAnimState("Ignus",ANIM_MIMESTANDFIDGET1)
~ GOTO 32
  IF ~  Global("Ignus_Coax","GLOBAL",1)
~ THEN REPLY #57670 /* ~"Je veux encore parler d'incendies et de flammes…"~ */ GOTO 27
  IF ~~ THEN REPLY #57671 /* ~"J'avais d'autres questions à te poser…"~ */ DO ~SetAnimState("Ignus",ANIM_MIMESTANDFIDGET1)
~ GOTO 20
  IF ~~ THEN REPLY #57672 /* ~"Je vois. Nous discuterons encore, toi et moi… plus tard."~ */ EXIT
END

IF ~~ THEN BEGIN 32 // from: 31.0
  SAY #57673 /* ~Ignus se tourne, penchant la tête en avant tandis que son corps s'élève au-dessus du sol… tu as l'impression de te retrouver face à un tourbillon de flammes et les courants d'air chaud qui l'entourent font perdre leur netteté à ses traits. "*Encore Ignusss… toujours Ignusss…*"~ */
  IF ~  Global("Ignus_Coax","GLOBAL",1)
~ THEN REPLY #57674 /* ~"Je ne désire plus parler d'incend-"~ */ GOTO 33
  IF ~~ THEN REPLY #57675 /* ~"Peu importe, dans ce cas-là. J'avais d'autres quest-"~ */ DO ~SetAnimState("Ignus",ANIM_MIMESTANDFIDGET1)
~ GOTO 33
  IF ~~ THEN REPLY #57676 /* ~"Je vois. Bien, ça suffit pour l'in-"~ */ DO ~SetAnimState("Ignus",ANIM_MIMESTANDFIDGET1)
~ GOTO 33
END

IF ~~ THEN BEGIN 33 // from: 32.0 32.1 32.2
  SAY #57677 /* ~Tu t'apprêtes à ouvrir la bouche quand Ignus se retourne brusquement vers toi. Submergé par la brusque chaleur, tu ravales tes paroles en t'étranglant. "*Ignussss pourrait être toi… étinssselles dans les corps, toujours prêtes à sss'enflammer…*"~ */
  IF ~~ THEN REPLY #57678 /* ~"'Étincelles dans les corps' ? Que veux-tu dire ?"~ */ DO ~SetAnimState("Ignus",ANIM_MIMESPELL1)
~ GOTO 34
  IF ~  Global("Ignus_Coax","GLOBAL",1)
~ THEN REPLY #57679 /* ~"Je veux encore parler d'incendies et de flammes…"~ */ GOTO 27
  IF ~~ THEN REPLY #57680 /* ~"J'avais d'autres questions à te poser…"~ */ DO ~SetAnimState("Ignus",ANIM_MIMESTANDFIDGET1)
~ GOTO 20
  IF ~~ THEN REPLY #57681 /* ~"Je vois. Nous discuterons encore, toi et moi… plus tard."~ */ EXIT
END

IF ~~ THEN BEGIN 34 // from: 33.0
  SAY #57682 /* ~"*TOUT peut brûler… à l'intérieur…*" Ignus tend la tête en arrière et écarte grand les bras, des spirales de chaleur parcourant ses bras. "*Jussste besoin d'embraser la flamme pour devenir Ignusssss… tu aurais pu être ainsssi… Ignussss…*"~ */
  IF ~~ THEN REPLY #57683 /* ~"En fait, si tu cherches à allumer la flamme à l'intérieur des gens, tu finis en général par les tuer."~ */ GOTO 35
  IF ~~ THEN REPLY #57684 /* ~"Alors… tu dis que tout le monde peut potentiellement devenir comme toi, avec l'étincelle… appropriée ?"~ */ DO ~SetAnimState("Ignus",ANIM_MIMETALK1)
~ GOTO 35
  IF ~  Global("Ignus_Coax","GLOBAL",1)
~ THEN REPLY #57685 /* ~"Je veux encore parler d'incendies et de flammes…"~ */ GOTO 27
  IF ~~ THEN REPLY #57686 /* ~"J'avais d'autres questions à te poser…"~ */ DO ~SetAnimState("Ignus",ANIM_MIMESTANDFIDGET1)
~ GOTO 20
  IF ~~ THEN REPLY #57688 /* ~"Je vois. Nous discuterons encore, toi et moi… plus tard."~ */ EXIT
END

IF ~~ THEN BEGIN 35 // from: 34.0 34.1
  SAY #57689 /* ~"*Ouiii…*" Ignus 'sourit', la tête penchée sur le côté. Les cendres qui tombent de son crâne sont balayées par le halo de flammes qui l'entoure.~ */
  IF ~  Global("Ignus_Coax","GLOBAL",1)
~ THEN REPLY #57690 /* ~"Je veux encore parler d'incendies et de flammes…"~ */ GOTO 27
  IF ~~ THEN REPLY #57691 /* ~"J'avais d'autres questions à te poser…"~ */ DO ~SetAnimState("Ignus",ANIM_MIMESTANDFIDGET1)
~ GOTO 20
  IF ~~ THEN REPLY #57693 /* ~"Je vois. Nous discuterons encore, toi et moi… plus tard."~ */ EXIT
END

IF ~~ THEN BEGIN 36 // from: 16.1 26.1 27.1
  SAY #57694 /* ~Le visage d'Ignus se fend, la chair se craquèle à la commissure de ses lèvres, puis redonne naissance à ses traits narquois de chair rouge et noire. "*Oui… Ignussss va partager sssson rêve…*"~ */
  IF ~  Global("Ignus_Coax","GLOBAL",1)
~ THEN REPLY #57696 /* ~"Peut-être plus tard. Pour l'instant, je ne veux plus parler d'incend-"~ */ DO ~SetAnimState("Ignus",ANIM_MIMESTANCEFIDGET1)
~ GOTO 37
  IF ~~ THEN REPLY #57697 /* ~"Euh… pas maintenant. J'avais d'autres quest-"~ */ DO ~SetAnimState("Ignus",ANIM_MIMESTANCEFIDGET1)
~ GOTO 37
  IF ~~ THEN REPLY #57698 /* ~"J'en ai assez entendu. On parl-"~ */ DO ~SetAnimState("Ignus",ANIM_MIMESTANCEFIDGET1)
~ GOTO 37
END

IF ~~ THEN BEGIN 37 // from: 36.0 36.1 36.2
  SAY #57700 /* ~Un torrent de flammes s'échappe d'Ignus, et tu recules, car l'air se *courbe* à cause de la chaleur. "*Les rues ssssont sssi froides la nuit… ssssi froides… Ignussss BRÛÛÛLE les maisons, les habitants… tousss courent loin d'Ignussss, des flammes et des maisons qui brûûûlent… des cris quand les habitants SSSS'ENFLAMMENT…*"~ */
  IF ~~ THEN REPLY #57701 /* ~"J'en ai assez entendu, Ign-"~ */ DO ~SetAnimState("Ignus",ANIM_MIMESTANCEFIDGET1)
~ GOTO 38
  IF ~~ THEN REPLY #57703 /* ~Écoute tranquillement, attends qu'il arrête ses invectives.~ */ DO ~SetAnimState("Ignus",ANIM_MIMESTANCEFIDGET1)
~ GOTO 38
END

IF ~~ THEN BEGIN 38 // from: 37.0 37.1
  SAY #57704 /* ~"*Des SSSQUELETTES de maisons… à tous les coins de rues, des ssssquelettes… rouges, oranges et noires, les flammes grandissssent, les lumières… les CARESSSES…*"~ */
  IF ~~ THEN REPLY #57706 /* ~"Ignus, j'en ai ASSEZ entendu -"~ */ DO ~SetAnimState("Ignus",ANIM_MIMESTAND)
~ GOTO 39
  IF ~~ THEN REPLY #57707 /* ~Écoute tranquillement, attends qu'il arrête ses invectives.~ */ DO ~SetAnimState("Ignus",ANIM_MIMESTAND)
~ GOTO 39
END

IF ~~ THEN BEGIN 39 // from: 38.0 38.1
  SAY #57709 /* ~"*Sss…*" La fureur d'Ignus s'éteint et le halo de flammes qui l'entoure s'atténue quelque peu. Il est perdu dans ses pensées, ou peut-être dans ses souvenirs. "*Ssss… et Ignussss était ssssi content…*"~ */
  IF ~  Global("Ignus_Coax","GLOBAL",1)
~ THEN REPLY #57710 /* ~"Je veux encore parler d'incendies et de flammes…"~ */ GOTO 27
  IF ~~ THEN REPLY #57712 /* ~"J'ai d'autres questions pour toi, Ignus…"~ */ DO ~SetAnimState("Ignus",ANIM_MIMESTANDFIDGET1)
~ GOTO 20
  IF ~~ THEN REPLY #57713 /* ~"Je vois. Nous discuterons plus tard, toi et moi…"~ */ EXIT
END

IF ~~ THEN BEGIN 40 // from: 16.2 26.2 27.2
  SAY #57714 /* ~Pendant un instant, tu penses qu'Ignus ne t'a pas entendu. Et puis, soudain, les flammes que tu lis dans ses yeux s'atténuent légèrement et il se met à siffler. Braises et cendres dansent à la commissure de ses lèvres. "*Autrefois, Ignusss…ne ssssavait RIEN… des flammes…*"~ */
  IF ~~ THEN REPLY #57717 /* ~"Oui ?"~ */ GOTO 41
  IF ~  Global("Ignus_Coax","GLOBAL",1)
~ THEN REPLY #57718 /* ~"Je veux encore parler d'incendies et de flammes…"~ */ GOTO 27
  IF ~~ THEN REPLY #57719 /* ~"Peu importe. J'avais d'autres questions…"~ */ DO ~SetAnimState("Ignus",ANIM_MIMESTANDFIDGET1)
~ GOTO 20
  IF ~~ THEN REPLY #57723 /* ~"Peu importe, Ignus. Nous parlerons une autre fois."~ */ EXIT
END

IF ~~ THEN BEGIN 41 // from: 40.0
  SAY #57725 /* ~"*Autrefois, Ignusss… ne ssssavait RIEN des flammes… il allumait de petits feux, petites flammes, petites étincccelles… petits morssseaux de flammes…*" Ignus siffle à nouveau, libérant par ce qui lui sert de bouche cendres et minuscules scories. "*Les feux ont grandi… Ignussss à mis le feu à leurs rues… et allumé le feu de la colère dans leurs cœurs…*"~ */
  IF ~~ THEN REPLY #57726 /* ~"Oui ?"~ */ DO ~SetAnimState("Ignus",ANIM_MIMESTAND)
~ GOTO 42
  IF ~  Global("Ignus_Coax","GLOBAL",1)
~ THEN REPLY #57727 /* ~"Je veux encore parler d'incendies et de flammes…"~ */ DO ~SetAnimState("Ignus",ANIM_MIMESTAND)
~ GOTO 42
  IF ~~ THEN REPLY #57729 /* ~"Peu importe. J'avais d'autres questions…"~ */ DO ~SetAnimState("Ignus",ANIM_MIMESTAND)
~ GOTO 42
  IF ~~ THEN REPLY #57730 /* ~"Peu importe, Ignus. Nous parlerons une autre fois."~ */ DO ~SetAnimState("Ignus",ANIM_MIMESTAND)
~ GOTO 42
END

IF ~~ THEN BEGIN 42 // from: 41.0 41.1 41.2 41.3
  SAY #57733 /* ~Tu parles, mais Ignus ne t'entend pas… il paraît ailleurs, comme si ses paroles lui rappelaient quelque chose… à contrecœur, tu t'interromps pour l'écouter.~ */
  IF ~~ THEN DO ~SetAnimState("Ignus",ANIM_MIMESTAND)
~ GOTO 43
END

IF ~~ THEN BEGIN 43 // from: 42.0
  SAY #57734 /* ~"*Ils ont cherché à punir Ignus, les minussscules mouches de la Ruche. Ilsss sssssouhaitaient voir Ignusss BRÛLEEER après qu'Ignusss ait mis le feu à leurs rues… petits mages, apprentis-sssorccciers, jeteurs de sssorts… des étinssselles de magie ssssont venues punir Ignusss pour avoir blessssé les leurs… ilsss ont condamné Ignusssss à BRÛLEEER, ont transsssformé Ignusss en torche brûlante, brûlante… ilsss ont dit que sss'était la JUSSSTISSSE…*"~ */
  IF ~~ THEN DO ~SetAnimState("Ignus",ANIM_MIMESTANDFIDGET1)
~ GOTO 44
END

IF ~~ THEN BEGIN 44 // from: 43.0
  SAY #57736 /* ~"*Jussstissse…*" Tu fixes, hypnotisé, Ignus qui se remet lentement à tourner. "*… mais ççça n'était pas un châtiment… tellement de flammes et de douleur qu'il n'y a pas de douleur… il y a la LUMIÈRE et la CHALEUR, et la chair coule comme du sssuif ssssur mes os… et pour la première fois… Ignussss est SSSSATISSSFAIT…*"~ */
  IF ~~ THEN GOTO 45
END

IF ~~ THEN BEGIN 45 // from: 44.0
  SAY #57738 /* ~Ignus arrête sa rotation et son regard retombe sur toi. Le feu de ses yeux flamboie alors, et un sourire charbonneux éclaire son visage. Sa chair se craquèle et forme des bulles tandis qu'elle fond et coule sur son visage. Ignus porte le masque de l'enfer, ses flammes et les mots qu'il prononce ensuite sonnent comme une sentence de mort - pas seulement pour toi, mais pour tout le monde. "*Quand les Plans brûleront et toute vie ssss'enflammera, alors sssseulement, Ignusss connaîtra… la paix…*"~ */
  IF ~  Global("Ignus_Coax","GLOBAL",1)
~ THEN REPLY #57739 /* ~"Je désire continuer à parler de flammes et d'incendies, Ignus…"~ */ GOTO 27
  IF ~~ THEN REPLY #57740 /* ~"Je… je vois. J'ai d'autres questions…"~ */ DO ~SetAnimState("Ignus",ANIM_MIMESTANDFIDGET1)
~ GOTO 20
  IF ~~ THEN REPLY #57741 /* ~Laisse Ignus réfléchir à ses flammes…~ */ EXIT
END

IF ~~ THEN BEGIN 46 // from: 16.3 26.3 27.3
  SAY #57743 /* ~"*Tu sssais qu'il faut apprendre et ensssseigner…*" Des flammèches s'échappent de la bouche d'Ignus, dans un horrible semblant de rire. "*Tu as TOUJOURS enssseigné à Ignussss… tu *étais* le MAÎTRE d'Ignusss.*"~ */
  IF ~~ THEN REPLY #57744 /* ~"Moi ? Tu en es *sûr*… ?"~ */ JOURNAL #57592 /* ~Ignus affirme que je suis son maître et que c'est moi qui lui ai enseigné la magie. Il a dit que c'est la seule raison pour laquelle il m'obéit.~ */ GOTO 47
  IF ~  Global("Ignus_Coax","GLOBAL",1)
~ THEN REPLY #57745 /* ~"Je désire continuer à parler de flammes et d'incendies, Ignus…"~ */ GOTO 19
  IF ~~ THEN REPLY #57747 /* ~"Je… je vois. J'ai d'autres questions…"~ */ DO ~SetAnimState("Ignus",ANIM_MIMESTANDFIDGET1)
~ GOTO 20
  IF ~~ THEN REPLY #57748 /* ~"Peu importe, Ignus. Nous reparlerons plus tard."~ */ EXIT
END

IF ~~ THEN BEGIN 47 // from: 16.4 26.4 27.4 46.0
  SAY #57751 /* ~Ignus *baisse le ton* et le crépitement des flammes diminue. "*Oui… sss'est la ssseule raison… pour laquelle Ignussss… T'OBÉIT…*" Les flammes s'élèvent autour de lui, comme une spirale crépitante. "*Jusssqu'à ssse que la MORT nous emporte… les mots que tu as adresssés… à ton élève IGNUSSSS… Ignusss n'a PAS oublié… maître…*"~ */
  IF ~~ THEN REPLY #57753 /* ~"Ignus… il doit y avoir longtemps que tu as appris l'Art… tu es vraiment sûr que c'était moi ?~ */ DO ~SetAnimState("Ignus",ANIM_MIMESTANCEFIDGET1)
~ GOTO 48
  IF ~~ THEN REPLY #57754 /* ~"Ignus, si j'étais ton 'Maître'… te souviens-tu de quelque chose me concernant ?"~ */ GOTO 50
  IF ~  Global("Ignus_Coax","GLOBAL",1)
~ THEN REPLY #57755 /* ~"Je désire continuer à parler de flammes et d'incendies, Ignus…"~ */ GOTO 27
  IF ~~ THEN REPLY #57757 /* ~"Je… je vois. J'ai d'autres questions…"~ */ DO ~SetAnimState("Ignus",ANIM_MIMESTANDFIDGET1)
~ GOTO 20
  IF ~~ THEN REPLY #57759 /* ~"Peu importe, Ignus… nous reparlerons plus tard."~ */ EXIT
END

IF ~~ THEN BEGIN 48 // from: 47.0
  SAY #57760 /* ~"*Oui*…." Ignus glousse. "*Oui… le visage est différent… mais tu as enssseigné de nombreuses leçççons à Ignussss…"*~ */
  IF ~~ THEN REPLY #57761 /* ~"Si mon visage a changé, comment le sais-tu ?"~ */ GOTO 49
  IF ~~ THEN REPLY #57763 /* ~"Ignus… c'est très important. Est-ce que tu te souviens de quelque chose me concernant ?"~ */ GOTO 50
  IF ~  Global("Ignus_Coax","GLOBAL",1)
~ THEN REPLY #57764 /* ~"Je désire continuer à parler de flammes et d'incendies, Ignus…"~ */ GOTO 27
  IF ~~ THEN REPLY #57765 /* ~"Je… je vois. J'ai d'autres questions…"~ */ DO ~SetAnimState("Ignus",ANIM_MIMESTANDFIDGET1)
~ GOTO 20
  IF ~~ THEN REPLY #57766 /* ~"Peu importe, Ignus… nous reparlerons de ça plus tard."~ */ EXIT
END

IF ~~ THEN BEGIN 49 // from: 48.0
  SAY #57768 /* ~"*À l'intérieur de tousss… de minussscules flammes… des étinssselles, des flammes… quelle que ssssoit la peau… la peau peut sssaigner… la peau peut ssss'enflammer… mais la flamme INTÉRIEURE demeure…*"~ */
  IF ~~ THEN REPLY #57769 /* ~"Ignus… c'est très important. Est-ce que tu te souviens de quelque chose me concernant ?"~ */ GOTO 50
  IF ~  Global("Ignus_Coax","GLOBAL",1)
~ THEN REPLY #57771 /* ~"Je désire continuer à parler de flammes et d'incendies, Ignus…"~ */ GOTO 27
  IF ~~ THEN REPLY #57773 /* ~"Je… vois. J'avais d'autres questions…"~ */ DO ~SetAnimState("Ignus",ANIM_MIMESTANDFIDGET1)
~ GOTO 20
  IF ~~ THEN REPLY #57775 /* ~"Peu importe, Ignus… nous reparlerons plus tard."~ */ EXIT
END

IF ~~ THEN BEGIN 50 // from: 47.1 48.1 49.0
  SAY #57776 /* ~Ignus siffle… et, l'espace d'un instant, ses *traits* se modifient. Tu penses tout d'abord que ce sont les flammes qui te donnent cette impression, mais non… c'est la *mémoire* qui te revient…~ */
  IF ~~ THEN REPLY #57777 /* ~Laisse revenir le souvenir.~ */ DO ~SetAnimState("Ignus",ANIM_MIMESTAND)
PlaySoundNotRanged("SPTR_01")
~ GOTO 52
  IF ~~ THEN REPLY #57778 /* ~Repousse le souvenir.~ */ DO ~SetAnimState("Ignus",ANIM_MIMETALK1)
~ GOTO 51
END

IF ~~ THEN BEGIN 51 // from: 50.1 52.1 53.1 54.1 55.1 56.1 57.1 58.1 59.1 60.1 61.1 62.0 62.1 62.2
  SAY #57779 /* ~Ta vision s'éclaircit, les souvenirs refluant comme de la fumée. Ignus flotte au-dessus de toi, la tête penchée sur le côté, un sourire dément et noirci étalé sur son visage… "*Maître… Ignusssss n'a PAS oublié tes enssseignements…*"~ */
  IF ~  Global("Ignus_Coax","GLOBAL",1)
~ THEN REPLY #57780 /* ~"Je désire continuer à parler de flammes et d'incendies, Ignus…"~ */ GOTO 27
  IF ~~ THEN REPLY #57781 /* ~"Je… je vois. J'ai d'autres questions…"~ */ DO ~SetAnimState("Ignus",ANIM_MIMESTANDFIDGET1)
~ GOTO 20
  IF ~~ THEN REPLY #57782 /* ~"Peu importe, Ignus… nous reparlerons plus tard."~ */ EXIT
END

IF ~~ THEN BEGIN 52 // from: 50.0
  SAY #57783 /* ~Le crépitement des flammes d'Ignus diminue, tandis que ses os carbonisés se replient, jusqu'à ce que ses membres gisent sans vie, devenant une pile de bois à l'intérieur d'une immense cheminée brûlant vivement dans une pièce voûtée. Le feu craque et crache des braises sur le sol de pierre, tandis que de minuscules scories lumineuses s'échappent de la cheminée. Tu entends faiblement le bruit d'une respiration derrière toi.~ */
  IF ~~ THEN REPLY #57784 /* ~Souvenir : "Je *t'entends*… approche-toi dans la lumière."~ */ DO ~SetAnimState("Ignus",ANIM_MIMESTAND)
~ GOTO 53
  IF ~~ THEN REPLY #57785 /* ~Repousse le souvenir.~ */ DO ~SetAnimState("Ignus",ANIM_MIMETALK1)
~ GOTO 51
END

IF ~~ THEN BEGIN 53 // from: 52.0
  SAY #57786 /* ~Dans un bruissement de sandales, un frêle jeune homme apparaît en limite de la zone éclairée par les flammes, qui se reflètent dans ses grands yeux noirs. Il est nerveux et ses muscles tremblent tout autant que sa voix, ce qui ne fait que t'irriter plus encore. "Pardonnez mon intrusion, maître. Je…"~ */
  IF ~~ THEN REPLY #57787 /* ~Souvenir : "Tu as *déjà* fait intrusion, implorant. Tu l'as fait dans un certain but. Je vais maintenant t'entendre, puis tu me laisseras à mes réflexions."~ */ DO ~SetAnimState("Ignus",ANIM_MIMESTAND)
~ GOTO 54
  IF ~~ THEN REPLY #57788 /* ~Repousse le souvenir.~ */ DO ~SetAnimState("Ignus",ANIM_MIMETALK1)
~ GOTO 51
END

IF ~~ THEN BEGIN 54 // from: 53.0
  SAY #57789 /* ~Le garçon respire profondément, et regarde le feu. "Maître, j'ai… rêvé de flammes à nouveau la nuit dernière… elles paraissaient réelles, et vous m'avez dit de venir vous parler si…"~ */
  IF ~~ THEN REPLY #57790 /* ~Souvenir : "C'était un *rêve*, rien de plus. Maintenant, va-t'en." ~ */ DO ~SetAnimState("Ignus",ANIM_MIMESTAND)
~ GOTO 55
  IF ~~ THEN REPLY #57791 /* ~Repousse le souvenir.~ */ DO ~SetAnimState("Ignus",ANIM_MIMETALK1)
~ GOTO 51
END

IF ~~ THEN BEGIN 55 // from: 54.0
  SAY #57792 /* ~Le garçon ne bouge pas, ses sourcils se rejoignent, et il montre lentement ses mains. La chair autour de ses doigts est… noircie, brûlée.~ */
  IF ~~ THEN REPLY #57793 /* ~Souvenir : "Comment t'es-tu brûlé les mains, implorant ?" ~ */ DO ~SetAnimState("Ignus",ANIM_MIMESTAND)
~ GOTO 56
  IF ~~ THEN REPLY #57794 /* ~Repousse le souvenir.~ */ DO ~SetAnimState("Ignus",ANIM_MIMETALK1)
~ GOTO 51
END

IF ~~ THEN BEGIN 56 // from: 55.0
  SAY #57795 /* ~"Je me suis réveillé, et mes mains étaient comme de la cendre." Le regard du garçon rencontre le tien. Il tremble toujours légèrement et l'anxiété dans sa voix t'énerve. "J'ai rêvé que je planais au-dessus de la terre, et que le sol et le ciel étaient en feu. Le monde lui-même était si brillant que… ça faisait mal de le regarder, maître. Et quand je me suis réveillé, mes mains… elles étaient brûlées comme si j'avais tenu une flamme à main nue."~ */
  IF ~~ THEN REPLY #57796 /* ~Souvenir : "Tu mens, implorant. Tu es venu à moi avec tes boniments et maintenant, tu risques dangereusement de me mettre en *colère*." ~ */ DO ~SetAnimState("Ignus",ANIM_MIMESTAND)
~ GOTO 57
  IF ~~ THEN REPLY #57797 /* ~Repousse le souvenir.~ */ DO ~SetAnimState("Ignus",ANIM_MIMETALK1)
~ GOTO 51
END

IF ~~ THEN BEGIN 57 // from: 56.0
  SAY #57798 /* ~"Non, maître…" Le garçon transpire de peur. "Non, sur ma vie !"~ */
  IF ~~ THEN REPLY #57799 /* ~Souvenir : "Tu t'es brûlé avec une bougie, implorant. Ou peut-être as-tu mis la main dans un des bûchers du Caveau des Murmures. Et tu viens maintenant me dire qu'un rêve t'a brûlé. Je suis las de tes mensonges."~ */ DO ~SetAnimState("Ignus",ANIM_MIMESTAND)
~ GOTO 58
  IF ~~ THEN REPLY #57800 /* ~Repousse le souvenir.~ */ DO ~SetAnimState("Ignus",ANIM_MIMETALK1)
~ GOTO 51
END

IF ~~ THEN BEGIN 58 // from: 57.0
  SAY #57801 /* ~Le garçon redevient silencieux et serre les dents de colère. "Non. Je ne mens pas. C'est le *rêve* qui m'a brûlé, maître, comme vous avez dit qu'il le ferait si je sentais le pouvoir affluer. Ce sont là vos propres paroles, et je suis venu vous les *répéter* et vous dire que vous aviez *raison*." Il te montre ses mains. "Regardez, maître…"~ */
  IF ~~ THEN REPLY #57802 /* ~Souvenir : Attrape ses mains.~ */ DO ~SetAnimState("Ignus",ANIM_MIMESTAND)
~ GOTO 59
  IF ~~ THEN REPLY #57803 /* ~Repousse le souvenir.~ */ DO ~SetAnimState("Ignus",ANIM_MIMETALK1)
~ GOTO 51
END

IF ~~ THEN BEGIN 59 // from: 58.0
  SAY #57804 /* ~Avant que le garçon ne puisse réagir, ta main, immense en comparaison des siennes, écrase ses doigts brûlés. L'écho de ses cris résonne dans la pièce voûtée. Avec un grognement de rage, tu le projètes en direction de la cheminée et un terrible craquement se produit lorsque ses genoux frappent le dallage.~ */
  IF ~~ THEN REPLY #57805 /* ~Souvenir : "Regarde ces flammes, implorant ! Lève la tête et regarde !" ~ */ DO ~SetAnimState("Ignus",ANIM_MIMESTAND)
~ GOTO 60
  IF ~~ THEN REPLY #57806 /* ~Repousse le souvenir.~ */ DO ~SetAnimState("Ignus",ANIM_MIMETALK1)
~ GOTO 51
END

IF ~~ THEN BEGIN 60 // from: 59.0
  SAY #57807 /* ~La douleur émanant de ses genoux fait frissonner le garçon… tu regardes ses yeux se brouiller de larmes alors qu'il lève la tête pour regarder la cheminée. Les flammes donnent à son visage un air rougeoyant, décharné…~ */
  IF ~~ THEN REPLY #57808 /* ~Souvenir : "C'est *ça* que tu veux tenir, implorant ? Est-ce que ton cœur te pousse à créer des flammes ? Sache que les flammes peuvent brûler et que si tu veux apprendre leur pouvoir, tu dois souffrir leur toucher."~ */ DO ~SetAnimState("Ignus",ANIM_MIMESTAND)
~ GOTO 61
  IF ~~ THEN REPLY #57809 /* ~Repousse le souvenir.~ */ DO ~SetAnimState("Ignus",ANIM_MIMETALK1)
~ GOTO 51
END

IF ~~ THEN BEGIN 61 // from: 60.0
  SAY #57810 /* ~Le garçon est silencieux, regardant fixement les flammes. Il semble hypnotisé. Ses larmes ont séché à la chaleur, et il ne tremble plus. Il est concentré sur les flammes. Il ne t'ÉCOUTE plus, et tu sens la fureur te submerger.~ */
  IF ~~ THEN REPLY #57811 /* ~Souvenir : "Si c'est ce qui te consume, assez pour te permettre de me *déranger* pendant ma méditation, alors je t'apprendrai à créer les flammes, implorant." ~ */ DO ~SetAnimState("Ignus",ANIM_MIMESTAND)
~ GOTO 62
  IF ~~ THEN REPLY #57812 /* ~Repousse le souvenir.~ */ DO ~SetAnimState("Ignus",ANIM_MIMETALK1)
~ GOTO 51
END

IF ~~ THEN BEGIN 62 // from: 61.0
  SAY #57814 /* ~Ta main attrape brusquement le poignet du garçon. Il hurle lorsque que tu l'approches de la cheminée, puis que tu plonges ses mains sur les braises ardentes. Tu entends un crépitement, puis un sifflement de chair brûlée. Ses *cris* sont horribles, et pourtant…~ */
  IF ~  Global("Memory_Ignus_Taught","GLOBAL",0)
~ THEN REPLY #57815 /* ~Souvenir : "Pour apprendre, tu dois *souffrir*, implorant. Tu dois te laisser brûler par le pouvoir que tu veux exercer. Connais son tourment et tu sauras l'utiliser contre tes ennemis."~ */ DO ~SetGlobal("Memory_Ignus_Taught","GLOBAL",1)
GiveExperience(Protagonist,10000)
SetAnimState("Ignus",ANIM_MIMETALK1)
~ JOURNAL #57818 /* ~Un souvenir très net m'est revenu en mémoire quand j'ai parlé à Ignus de son 'maître'. Apparemment… à un moment ou un autre… *je* lui ai bien donné des leçons, mais je ne pense pas lui avoir appris les bonnes…~ */ GOTO 51
  IF ~  Global("Memory_Ignus_Taught","GLOBAL",1)
~ THEN REPLY #57816 /* ~Souvenir : "Pour apprendre, tu dois *souffrir*, implorant. Tu dois te laisser brûler par le pouvoir que tu veux exercer. Connais son tourment et tu sauras l'utiliser contre tes ennemis."~ */ DO ~SetAnimState("Ignus",ANIM_MIMETALK1)
~ GOTO 51
  IF ~~ THEN REPLY #57817 /* ~Repousse le souvenir.~ */ DO ~SetAnimState("Ignus",ANIM_MIMETALK1)
~ GOTO 51
END

IF ~~ THEN BEGIN 63 // from: 16.5 26.5 27.5
  SAY #57819 /* ~"*Ssss… Autrefois Ignussss ssssavait *tant*… plus maintenant… Ignussss brûle et ssssouffre, Ignusssss a appris…*" Une minuscule flamme s'échappe de sa bouche, comme un rire, et il souffle un jet de braises. "*Ssssouffre… apprends…*"~ */
  IF ~~ THEN REPLY #57820 /* ~"Je suis prêt à souffrir pour obtenir ce savoir…"~ */ DO ~SetAnimState("Ignus",ANIM_MIMESTAND)
~ GOTO 64
  IF ~  Global("Ignus_Coax","GLOBAL",1)
~ THEN REPLY #57821 /* ~"Je désire continuer à parler de flammes et d'incendies, Ignus…"~ */ GOTO 27
  IF ~~ THEN REPLY #57822 /* ~"Je… je vois. J'ai d'autres questions…"~ */ DO ~SetAnimState("Ignus",ANIM_MIMESTANDFIDGET1)
~ GOTO 20
  IF ~~ THEN REPLY #57823 /* ~"Peut-être une autre fois, Ignus… nous reparlerons plus tard."~ */ EXIT
END

IF ~~ THEN BEGIN 64 // from: 63.0
  SAY #57824 /* ~Tu t'apprêtes à parler, lorsqu'un terrible pressentiment te vient… tu es brusquement certain que ce qu'Ignus s'apprête à t'apprendre te blessera à jamais… mais tu ignores *comment* tu sais cela.~ */
  IF ~~ THEN REPLY #57825 /* ~Répète : "Je suis prêt à souffrir pour obtenir ce savoir…"~ */ GOTO 65
  IF ~  Global("Ignus_Coax","GLOBAL",1)
~ THEN REPLY #57826 /* ~"Je désire continuer à parler de flammes et d'incendies, Ignus…"~ */ GOTO 27
  IF ~~ THEN REPLY #57827 /* ~"Je… je vois. J'ai d'autres questions…"~ */ DO ~SetAnimState("Ignus",ANIM_MIMESTANDFIDGET1)
~ GOTO 20
  IF ~~ THEN REPLY #57828 /* ~"Peut-être une autre fois, Ignus… nous reparlerons plus tard."~ */ EXIT
END

IF ~~ THEN BEGIN 65 // from: 16.6 26.6 27.6 64.0 68.0
  SAY #57829 /* ~"*Ssssoufffrir… ?*" Les flammes vacillent au coin de la bouche d'Ignus et remontent en spirale le long de son visage ravagé. "*Brûleeer ? Des parties de ssssoi brûlées… sssss… Ignusss… Ignusss peut toujours enssseigner *TANT*."~ */
  IF ~  Global("Ignus_Teach","GLOBAL",0)
~ THEN REPLY #57830 /* ~"Je souhaite apprendre, Ignus… peux-tu m'enseigner un peu de l'Art ?"~ */ DO ~SetGlobal("Ignus_Teach","GLOBAL",1)
SetAnimState("Ignus",ANIM_MIMEATTACK2)
~ GOTO 66
  IF ~  Global("Ignus_Teach","GLOBAL",1)
~ THEN REPLY #57831 /* ~"Je souhaite apprendre, Ignus… peux-tu m'instruire un peu plus sur l'Art ?"~ */ DO ~SetGlobal("Ignus_Teach","GLOBAL",2)
SetAnimState("Ignus",ANIM_MIMEATTACK2)
~ GOTO 69
  IF ~  GlobalGT("Ignus_Teach","GLOBAL",1)
~ THEN REPLY #57832 /* ~"Je souhaite apprendre, Ignus… peux-tu m'instruire un peu plus sur l'Art ?"~ */ GOTO 73
  IF ~  Global("Ignus_Coax","GLOBAL",1)
~ THEN REPLY #57833 /* ~"Je désire continuer à parler de flammes et d'incendies, Ignus…"~ */ GOTO 27
  IF ~~ THEN REPLY #57834 /* ~"Je… je vois. J'ai d'autres questions…"~ */ DO ~SetAnimState("Ignus",ANIM_MIMESTANDFIDGET1)
~ GOTO 20
  IF ~~ THEN REPLY #57835 /* ~"Peut-être une autre fois, Ignus… nous reparlerons plus tard."~ */ EXIT
END

IF ~~ THEN BEGIN 66 // from: 65.0
  SAY #57836 /* ~"*Là où les flammes ont brûlé, elles peuvent être envoyées à nouveau…*" Avant que tu ne puisses réagir, les griffes d'Ignus attrapent ton doigt, et il le brûle d'un *hssssss* gourmand. Sous la douleur virulente, tu fermes les yeux et tu HURLES…~ */
  IF ~~ THEN DO ~FadeToColor([20.0],0)
Wait(3)
FadeFromColor([20.0],0)
PermanentStatChange(Protagonist,MAXHITPOINTS,LOWER,1)
PermanentStatChange(Protagonist,RESISTMAGICFIRE,RAISE,3)
PermanentStatChange(Protagonist,RESISTFIRE,RAISE,3)
GiveExperience(Protagonist,6000)
~ GOTO 67
END

IF ~~ THEN BEGIN 67 // from: 66.0
  SAY #57837 /* ~Tu te forces à ouvrir les yeux pour voir ta main calcinée qu'Ignus vient de toucher… sans t'accorder la moindre attention, Ignus flotte au-dessus de toi, tenant délicatement ton doigt, puis il en coupe l'extrémité, ne laissant que la base. Il *siffle*, des cendres et des braises jaillissant de sa bouche, et te jette les restes carbonisés de ton doigt.~ */
  IF ~~ THEN REPLY #57838 /* ~"Erhkk… qu'est-ce… que… tu… as… fait… ?"~ */ DO ~GiveItemCreate("Ignus01",Protagonist,1,0,0)
SetAnimState("Ignus",ANIM_MIMESTANCEFIDGET1)
~ JOURNAL #57839 /* ~Ignus m'a 'enseigné' une partie de son savoir magique en m'arrachant le doigt et en me le rendant après l'avoir calciné. Il a l'air persuadé que je saurai quoi faire avec cet os noirci. Je crois bien que l'expérience aura des séquelles permanentes pour ce qui est de ma santé, même si ma résistance au feu a augmenté. Quant à mon doigt, il semble être en train de repousser. Je devrais donc pouvoir continuer à combattre et à jeter des sorts comme avant.~ */ GOTO 68
END

IF ~~ THEN BEGIN 68 // from: 67.0
  SAY #57840 /* ~"*Leçççons…*" Ignus glousse, un son étrangement pénible à tes oreilles. "*Il faut sssouffrir pour apprendre.*"~ */
  IF ~~ THEN REPLY #57841 /* ~"Je… veux… en apprendre… plus…"~ */ GOTO 65
  IF ~  Global("Ignus_Coax","GLOBAL",1)
~ THEN REPLY #57842 /* ~"J'… aimerais… parler davantage… de flammes et d'incendies, Ignus…"~ */ GOTO 27
  IF ~~ THEN REPLY #57843 /* ~"Je… vois. J'avais… d'autres… questions…"~ */ DO ~SetAnimState("Ignus",ANIM_MIMESTANDFIDGET1)
~ GOTO 20
  IF ~~ THEN REPLY #57844 /* ~"Assez… Ignus… nous reparlerons plus tard."~ */ EXIT
END

IF ~~ THEN BEGIN 69 // from: 65.1
  SAY #57845 /* ~"*Oui…*" Avant que tu ne puisses réagir, les griffes d'Ignus attrapent ta main gauche et dans un gloussement dément et un *hssssss* gourmand, il la brûle. Sous la douleur virulente, tu fermes les yeux et tu HURLES…~ */
  IF ~~ THEN DO ~FadeToColor([20.0],0)
Wait(3)
FadeFromColor([20.0],0)
PermanentStatChange(Protagonist,MAXHITPOINTS,LOWER,3)
PermanentStatChange(Protagonist,RESISTMAGICFIRE,RAISE,5)
PermanentStatChange(Protagonist,RESISTFIRE,RAISE,5)
GiveExperience(Protagonist,12000)
~ GOTO 70
END

IF ~~ THEN BEGIN 70 // from: 69.0
  SAY #57846 /* ~Tu te forces à ouvrir les yeux pour voir ce qui reste de ta main calcinée qu'Ignus vient de toucher… seul subsiste un moignon noirci et dégoulinant de sang fumant. Ignus semble ignorer ta douleur. Son attention est tout entière tournée vers ta main, qu'il tient et admire comme un trophée.~ */
  IF ~~ THEN REPLY #57847 /* ~"Ig… nus… RENDS… moi… ma… main…"~ */ GOTO 71
END

IF ~~ THEN BEGIN 71 // from: 70.0
  SAY #57848 /* ~Ignus t'ignore. Les flammes jaillies de ses mains viennent faire comme un halo autour de ton moignon. Elles en brûlent la chair restante pour que seuls subsistent les os, soudés les uns aux autres. Ignus pousse un long sifflement et te jette la main décharnée… tu réussis à l'attraper dans ton autre main. Tu remarques que la chair de ta main coupée se rassemble, lentement et douloureusement… comme si elle repoussait.~ */
  IF ~~ THEN REPLY #57849 /* ~"Qu'est-ce que… tu as fait…"~ */ DO ~GiveItemCreate("Ignus04",Protagonist,1,0,0)
SetAnimState("Ignus",ANIM_MIMESTANCEFIDGET1)
~ JOURNAL #57850 /* ~Ignus m'a 'enseigné' une partie de son art en me brûlant la main et en me la rendant après en avoir fait disparaître toute la chair. Il a l'air persuadé que je saurai quoi faire avec ces os noircis. Je crois bien que l'expérience aura des séquelles permanentes pour ce qui est de ma santé, même si ma résistance au feu a augmenté. Quant à ma main, elle semble être en train de repousser. Je devrais donc pouvoir continuer à combattre et à jeter des sorts comme avant.~ */ GOTO 72
END

IF ~~ THEN BEGIN 72 // from: 71.0
  SAY #57851 /* ~"*Leçççons…*" Ignus glousse, un son étrangement pénible à tes oreilles. "*Il faut sssouffrir pour apprendre.*"~ */
  IF ~~ THEN REPLY #57852 /* ~"Je… veux… en apprendre… plus…"~ */ GOTO 73
  IF ~  Global("Ignus_Coax","GLOBAL",1)
~ THEN REPLY #57853 /* ~"J'… aimerais… parler davantage… de flammes et d'incendies, Ignus…"~ */ GOTO 27
  IF ~~ THEN REPLY #57854 /* ~"Je… vois. J'avais… d'autres… questions…"~ */ DO ~SetAnimState("Ignus",ANIM_MIMESTANDFIDGET1)
~ GOTO 20
  IF ~~ THEN REPLY #57855 /* ~"Assez… Ignus… nous reparlerons plus tard."~ */ EXIT
END

IF ~~ THEN BEGIN 73 // from: 16.7 26.7 27.7 65.2 72.0 77.0 83.0
  SAY #57856 /* ~"*Ssssss…*" Suivi d'une traînée enflammée, Ignus s'élève brusquement dans les airs. "*Fini ! Des morccceaux de sssoi brûlés… sssss… Ignusss… mais Ignusss n'ensssseignera plus…*"~ */
  IF ~  PartyHasItem("Eyeball")
Global("Ignus_Teach","GLOBAL",2)
~ THEN REPLY #57857 /* ~"Tu as besoin de morceaux de moi pour m'instruire ? Pourquoi pas mon œil ?"~ */ DO ~SetGlobal("Ignus_Teach","GLOBAL",3)
GiveExperience(Protagonist,12000)
SetAnimState("Ignus",ANIM_MIMEATTACK2)
~ GOTO 74
  IF ~  PartyHasItem("Intest")
~ THEN REPLY #57858 /* ~"Tu as besoin de morceaux de moi pour m'instruire ? Pourquoi pas ce bout d'intestin ?"~ */ DO ~DestroyPartyItem("Intest",TRUE)
GiveExperience(Protagonist,24000)
SetAnimState("Ignus",ANIM_MIMETALK1)
~ GOTO 78
  IF ~  Global("Ignus_Coax","GLOBAL",1)
~ THEN REPLY #57859 /* ~"Très bien. Je voulais parler davantage de flammes et d'incendies, Ignus…"~ */ GOTO 27
  IF ~~ THEN REPLY #57860 /* ~"Je… vois. J'avais d'autres questions…"~ */ DO ~SetAnimState("Ignus",ANIM_MIMESTANDFIDGET1)
~ GOTO 20
  IF ~~ THEN REPLY #57861 /* ~"Alors, peu importe, Ignus… nous reparlerons plus tard."~ */ EXIT
END

IF ~~ THEN BEGIN 74 // from: 73.0
  SAY #57862 /* ~Ignus frappe à nouveau, le doigt tendu telle une lance… il ne vise pas l'œil que tu peux enlever, mais l'AUTRE. De prime abord, la surprise est telle que tu ne ressens aucune douleur. Puis tu *cries* lorsqu'Ignus crache un torrent de flammes dans ton orbite. Tu as l'impression qu'elles dévorent ton cerveau… le sifflement de la chair brûlée emplit tes narines et des nuages de fumée bloquent ta vision…~ */
  IF ~~ THEN DO ~FadeToColor([20.0],0)
Wait(3)
FadeFromColor([20.0],0)
PermanentStatChange(Protagonist,MAXHITPOINTS,LOWER,2)
PermanentStatChange(Protagonist,RESISTMAGICFIRE,RAISE,3)
PermanentStatChange(Protagonist,RESISTFIRE,RAISE,3)
~ GOTO 75
END

IF ~~ THEN BEGIN 75 // from: 74.0
  SAY #57863 /* ~Tu te forces à ouvrir les yeux malgré le sang qui les poisse, mais un seul t'obéit. Tu discernes à peine Ignus qui flotte dans les airs devant toi et tient une petite sphère enflammée dans ses mains ; il s'agit de ton œil, apparemment épargné par la chaleur. Puis les mains d'Ignus se referment sur ton œil et tu ressens une seconde brûlure dans ton orbite…~ */
  IF ~~ THEN GOTO 76
END

IF ~~ THEN BEGIN 76 // from: 75.0
  SAY #57864 /* ~Et soudain, à travers la douleur virulente, tu y vois de nouveau normalement… Ignus ouvre la main et tu discernes à l'intérieur ton œil calciné, à peine reconnaissable… et pourtant, il se trouve toujours dans son orbite. Ignus glousse et dans un souffle de flammes, l'œil s'échappe de sa main et dérive vers toi, telle une cendre emportée par le vent.~ */
  IF ~~ THEN REPLY #57865 /* ~Prends l'œil… ton œil…~ */ DO ~GiveItemCreate("Ignus02",Protagonist,1,0,0)
~ JOURNAL #57866 /* ~Ignus m'a 'enseigné' une partie de son savoir magique en m'arrachant l'œil et en me le rendant après l'avoir calciné. Il a l'air persuadé que je saurai quoi faire avec ce globe oculaire noirci. Je crois bien que l'expérience aura des séquelles permanentes pour ce qui est de ma santé, même si ma résistance au feu a augmenté. Il y a vraiment des moments où j'aimerais qu'Ignus se serve de parchemins au lieu de m'incinérer par petits bouts. Au moins, j'y vois encore avec mon œil.~ */ GOTO 77
END

IF ~~ THEN BEGIN 77 // from: 76.0
  SAY #57867 /* ~Des serpentins de feu s'échappent en spirale des orbites ravagées d'Ignus et montent jusqu'au sommet de son crâne carbonisé. "*Encore des leçççons…*" les deux serpents de feu font le tour de son crâne et se transforment en torches dans ses mains. "*Encore de ssssoufranccces…*"~ */
  IF ~~ THEN REPLY #57868 /* ~"Je suis prêt à souffrir pour plus de savoir… peux-tu m'en apprendre plus ?"~ */ GOTO 73
  IF ~  Global("Ignus_Coax","GLOBAL",1)
~ THEN REPLY #57869 /* ~"Je désire continuer à parler de flammes et d'incendies, Ignus…"~ */ GOTO 27
  IF ~~ THEN REPLY #57870 /* ~"Je… je vois. J'ai d'autres questions…"~ */ DO ~SetAnimState("Ignus",ANIM_MIMESTANDFIDGET1)
~ GOTO 20
  IF ~~ THEN REPLY #57871 /* ~"Merci, Ignus… je crois. Nous reparlerons plus tard."~ */ EXIT
END

IF ~~ THEN BEGIN 78 // from: 73.1
  SAY #57872 /* ~Ignus incline la tête sur le côté pendant que tu retiens tes intestins, puis plonge subitement et te les arrache. Il les tient et les file entre ses mains comme une corde, en sifflant tout seul… tu regardes tes intestins fumer et noircir dans ses mains… et tu ressens une lente sensation de brûlure dans ton abdomen…~ */
  IF ~~ THEN DO ~SetAnimState("Ignus",ANIM_MIMESTANDFIDGET1)
~ GOTO 79
END

IF ~~ THEN BEGIN 79 // from: 78.0
  SAY #57873 /* ~Ignus file tes intestins, poignée par poignée, et laisse chaque longueur tomber de ses mains et tourner autour de lui comme une lente spirale, chaque portion étant grillée par les flammes. Ces dernières semblent danser autour des intestins, qu'elles noircissent lentement, jusqu'à ce qu'ils ressemblent à une longue chaîne de chair carbonisée…~ */
  IF ~~ THEN DO ~SetAnimState("Ignus",ANIM_MIMESTANDFIDGET1)
~ GOTO 80
END

IF ~~ THEN BEGIN 80 // from: 79.0
  SAY #57874 /* ~La sensation de brûlure que tu ressens à l'abdomen te fait te crisper, mais elle n'est rien comparée à la douleur que tu as éprouvée quand Ignus a carbonisé les autres parties de ton corps. Tu regardes tes entrailles enflammées tourbillonner autour d'Ignus puis, soudain, elles s'éteignent et tombent dans ses mains. Il siffle et te les lance. "*TANT de puissssanssse dans les organes d'un immortel…"*~ */
  IF ~~ THEN REPLY #57875 /* ~Prends les intestins carbonisés…~ */ DO ~GiveItemCreate("Ignus03",Protagonist,1,0,0)
~ JOURNAL #57876 /* ~Ignus m'a 'enseigné' une partie de son savoir magique en m'arrachant les intestins et en me les rendant après les avoir calcinés. Il a l'air persuadé que je saurai quoi faire avec ces viscères noircis. Contrairement à ce qui s'est passé les autres fois, je ne crois pas avoir souffert quand il a 'traité' mes intestins de la sorte.~ */ GOTO 83
END

IF ~~ THEN BEGIN 81 // from: 16.8 26.8 27.8
  SAY #57877 /* ~"*Des flammes… pas… de tortuuuures…"* Ignus tourne doucement au-dessus du sol. Il t'a peut-être entendu, mais tu ne sais pas si tes paroles ont eu la moindre *signification* pour lui…~ */
  IF ~  CheckStatGT(Protagonist,13,INT)
~ THEN REPLY #57878 /* ~"En es-tu sûr, implorant ?"~ */ DO ~SetAnimState("Ignus",ANIM_MIMEATTACK2)
~ GOTO 82
  IF ~  Global("Ignus_Coax","GLOBAL",1)
~ THEN REPLY #57879 /* ~"Je désire continuer à parler de flammes et d'incendies, Ignus…"~ */ GOTO 27
  IF ~~ THEN REPLY #57880 /* ~"J'aurai au moins essayé… J'avais d'autres questions pour toi, Ignus…"~ */ DO ~SetAnimState("Ignus",ANIM_MIMESTANDFIDGET1)
~ GOTO 20
  IF ~~ THEN REPLY #57881 /* ~"Bien, ça ne change peut-être pas grand-chose, Ignus, mais je suis désolé de ce qui t'est arrivé… nous reparlerons plus tard."~ */ EXIT
END

IF ~~ THEN BEGIN 82 // from: 81.0
  SAY #57882 /* ~Ignus s'arrête instantanément et se retourne vers toi. Dans un grand craquement, de *nouvelles* flammes jaillissent de sa poitrine et de son crâne… tu as l'impression que des serpents de feu viennent de surgir du moindre recoin de son corps. "*Un ssssuppliant Ignussss n'est PLUS… ! Parle encore ainssssi et Ignusssss te BRÛÛÛÛLERA !*"~ */
  IF ~~ THEN REPLY #57883 /* ~"Essaye, *implorant*. Je crois qu'il va falloir que je te rappelle à quelle famille tu appartiens…"~ */ GOTO 29
  IF ~  Global("Ignus_Coax","GLOBAL",1)
~ THEN REPLY #57884 /* ~"Alors, peu importe. Je désirais parler un peu plus de flammes et d'incendies, Ignus…"~ */ GOTO 27
  IF ~~ THEN REPLY #57885 /* ~"Compris… J'avais d'autres questions…"~ */ DO ~SetAnimState("Ignus",ANIM_MIMESTANDFIDGET1)
~ GOTO 20
  IF ~~ THEN REPLY #57886 /* ~"Alors, peu importe, Ignus… nous reparlerons plus tard."~ */ EXIT
END

IF ~~ THEN BEGIN 83 // from: 80.0
  SAY #57887 /* ~Tu tiens tes intestins carbonisés dans tes mains. Ils ressemblent à une corde noircie. Ignus flotte au-dessus de toi, de minuscules poussières de cendres émanant de son ossature brûlante.~ */
  IF ~~ THEN REPLY #57888 /* ~"Je suis prêt à souffrir pour plus de savoir… peux-tu m'en apprendre plus ?"~ */ GOTO 73
  IF ~  Global("Ignus_Coax","GLOBAL",1)
~ THEN REPLY #57889 /* ~"Je désire continuer à parler de flammes et d'incendies, Ignus…"~ */ GOTO 27
  IF ~~ THEN REPLY #57890 /* ~"Je… je vois. J'ai d'autres questions…"~ */ DO ~SetAnimState("Ignus",ANIM_MIMESTANDFIDGET1)
~ GOTO 20
  IF ~~ THEN REPLY #57891 /* ~"Merci, Ignus… nous reparlerons plus tard."~ */ EXIT
END

IF ~  GlobalGT("Ignus","GLOBAL",1)
!InParty("Ignus")
Global("Party_Ignus_Waiting_VO","GLOBAL",1)
!GlobalGT("Fortress_Ignus","GLOBAL",2)
~ THEN BEGIN 84 // from:
  SAY #61827 /* ~Les flammes s'enroulent autour de la gorge d'Ignus et dansent sur son crâne. Il retrousse ses lèvres calcinées et, d'une voix crépitante, dit : "J'attends."~ [IGN148] */
  IF ~  Global("Party_Ignus_Rejoining_VO","GLOBAL",0)
~ THEN REPLY #61828 /* ~"Ignus, j'ai besoin de ton aide."~ */ DO ~SetGlobal("Party_Ignus_Waiting_VO","GLOBAL",2)
ChangeAIScript("pcignus",DEFAULT)
JoinPartyEx(TRUE)
~ GOTO 15
  IF ~  Global("Party_Ignus_Rejoining_VO","GLOBAL",1)
~ THEN REPLY #61829 /* ~"Ignus, j'ai besoin de ton aide."~ */ DO ~SetGlobal("Party_Ignus_Waiting_VO","GLOBAL",2)
ChangeAIScript("pcignus",DEFAULT)
JoinPartyEx(TRUE)
~ GOTO 86
  IF ~  Global("Party_Ignus_Rejoining_VO","GLOBAL",2)
~ THEN REPLY #61830 /* ~"Ignus, j'ai besoin de ton aide."~ */ DO ~SetGlobal("Party_Ignus_Waiting_VO","GLOBAL",2)
ChangeAIScript("pcignus",DEFAULT)
JoinPartyEx(TRUE)
~ GOTO 87
  IF ~  Global("Party_Ignus_Rejoining_VO","GLOBAL",3)
~ THEN REPLY #61831 /* ~"Ignus, j'ai besoin de ton aide."~ */ DO ~SetGlobal("Party_Ignus_Waiting_VO","GLOBAL",2)
ChangeAIScript("pcignus",DEFAULT)
JoinPartyEx(TRUE)
~ GOTO 88
  IF ~  Global("Party_Ignus_Rejoining_VO","GLOBAL",4)
~ THEN REPLY #61832 /* ~"Ignus, j'ai besoin de ton aide."~ */ DO ~SetGlobal("Party_Ignus_Waiting_VO","GLOBAL",2)
ChangeAIScript("pcignus",DEFAULT)
JoinPartyEx(TRUE)
~ GOTO 89
  IF ~  Global("Party_Ignus_Rejoining_VO","GLOBAL",5)
~ THEN REPLY #61833 /* ~"Ignus, j'ai besoin de ton aide."~ */ DO ~SetGlobal("Party_Ignus_Waiting_VO","GLOBAL",2)
ChangeAIScript("pcignus",DEFAULT)
JoinPartyEx(TRUE)
~ GOTO 90
  IF ~~ THEN REPLY #61834 /* ~"Ah… je vois. Au revoir."~ */ DO ~SetGlobal("Party_Ignus_Waiting_VO","GLOBAL",2)
~ EXIT
END

IF ~  GlobalGT("Ignus","GLOBAL",1)
!InParty("Ignus")
Global("Party_Ignus_Waiting_VO","GLOBAL",2)
!GlobalGT("Fortress_Ignus","GLOBAL",2)
~ THEN BEGIN 85 // from:
  SAY #61835 /* ~Ignus émet un sifflement crépitant à ton approche. "J'attends de ssssuivre le chemin des flammes."~ [IGN149] */
  IF ~  Global("Party_Ignus_Rejoining_VO","GLOBAL",0)
~ THEN REPLY #61836 /* ~"Ignus, j'ai besoin de ton aide."~ */ DO ~SetGlobal("Party_Ignus_Waiting_VO","GLOBAL",0)
ChangeAIScript("pcignus",DEFAULT)
JoinPartyEx(TRUE)
~ GOTO 15
  IF ~  Global("Party_Ignus_Rejoining_VO","GLOBAL",1)
~ THEN REPLY #61837 /* ~"Ignus, j'ai besoin de ton aide."~ */ DO ~SetGlobal("Party_Ignus_Waiting_VO","GLOBAL",0)
ChangeAIScript("pcignus",DEFAULT)
JoinPartyEx(TRUE)
~ GOTO 86
  IF ~  Global("Party_Ignus_Rejoining_VO","GLOBAL",2)
~ THEN REPLY #61838 /* ~"Ignus, j'ai besoin de ton aide."~ */ DO ~SetGlobal("Party_Ignus_Waiting_VO","GLOBAL",0)
ChangeAIScript("pcignus",DEFAULT)
JoinPartyEx(TRUE)
~ GOTO 87
  IF ~  Global("Party_Ignus_Rejoining_VO","GLOBAL",3)
~ THEN REPLY #61839 /* ~"Ignus, j'ai besoin de ton aide."~ */ DO ~SetGlobal("Party_Ignus_Waiting_VO","GLOBAL",0)
ChangeAIScript("pcignus",DEFAULT)
JoinPartyEx(TRUE)
~ GOTO 88
  IF ~  Global("Party_Ignus_Rejoining_VO","GLOBAL",4)
~ THEN REPLY #61840 /* ~"Ignus, j'ai besoin de ton aide."~ */ DO ~SetGlobal("Party_Ignus_Waiting_VO","GLOBAL",0)
ChangeAIScript("pcignus",DEFAULT)
JoinPartyEx(TRUE)
~ GOTO 89
  IF ~  Global("Party_Ignus_Rejoining_VO","GLOBAL",5)
~ THEN REPLY #61841 /* ~"Ignus, j'ai besoin de ton aide."~ */ DO ~SetGlobal("Party_Ignus_Waiting_VO","GLOBAL",0)
ChangeAIScript("pcignus",DEFAULT)
JoinPartyEx(TRUE)
~ GOTO 90
  IF ~~ THEN REPLY #61842 /* ~"Ah… je vois. Au revoir."~ */ DO ~SetGlobal("Party_Ignus_Waiting_VO","GLOBAL",0)
~ EXIT
END

IF ~~ THEN BEGIN 86 // from: 14.1 84.1 85.1
  SAY #61843 /* ~On entend un bruit de chair qui brasille, et puis Ignus émet un sifflement. "Comment tu voudras."~ [IGN106] */
  IF ~~ THEN REPLY #61844 /* ~"Allons-y."~ */ DO ~SetGlobal("Party_Ignus_Rejoining_VO","GLOBAL",2)
~ EXIT
END

IF ~~ THEN BEGIN 87 // from: 14.2 84.2 85.2
  SAY #61845 /* ~Ignus claque des mâchoires et un torrent de braises jaillit de sa bouche. "Le feu ssse répandra dans les rues."~ [IGN077] */
  IF ~~ THEN REPLY #61846 /* ~"Allons-y."~ */ DO ~SetGlobal("Party_Ignus_Rejoining_VO","GLOBAL",3)
~ EXIT
END

IF ~~ THEN BEGIN 88 // from: 14.3 84.3 85.3
  SAY #61847 /* ~Des cendres pleuvent de sa bouche tandis qu'il hoche la tête. "Ignus obéit…"~ [IGN101] */
  IF ~~ THEN REPLY #61848 /* ~"Allons-y."~ */ DO ~SetGlobal("Party_Ignus_Rejoining_VO","GLOBAL",4)
~ EXIT
END

IF ~~ THEN BEGIN 89 // from: 14.4 84.4 85.4
  SAY #61849 /* ~Ignus prend la parole tout bas et les flammes qui entourent les vestiges de son visage s'atténuent. "Je sssuivrai le chemin des flammes avec toi."~ [IGN151] */
  IF ~~ THEN REPLY #61850 /* ~"Allons-y."~ */ DO ~SetGlobal("Party_Ignus_Rejoining_VO","GLOBAL",5)
~ EXIT
END

IF ~~ THEN BEGIN 90 // from: 14.5 84.5 85.5
  SAY #61851 /* ~Une langue de feu jaillit d'entre les lèvres d'Ignus, tel un serpent, et se dissipe en un panache de fumées et de cendres. "Oui."~ [IGN191A] */
  IF ~~ THEN REPLY #61852 /* ~"Allons-y."~ */ DO ~SetGlobal("Party_Ignus_Rejoining_VO","GLOBAL",0)
~ EXIT
END

IF ~  Global("Fortress_Ignus","GLOBAL",3)
~ THEN BEGIN 91 // from:
  SAY #68216 /* ~Ignus bouge légèrement et l'air qui l'entoure se met à scintiller. Le pouvoir suffit presque à le ramener à la vie.~ */
  IF ~  Global("Absorb","GLOBAL",0)
~ THEN REPLY #68218 /* ~"Lève-toi, Ignus. J'ai besoin de toi."~ */ DO ~SetGlobal("Fortress_Ignus","GLOBAL",4)
JoinPartyEx(TRUE)
~ GOTO 92
  IF ~  GlobalGT("Absorb","GLOBAL",0)
~ THEN REPLY #68387 /* ~LÈVE-TOI, IGNUS.~ */ GOTO 93
END

IF ~~ THEN BEGIN 92 // from: 91.0
  SAY #68217 /* ~Il se produit une soudaine éruption de flammes et Ignus s'élève dans les airs, déformé par les courants d'air chaud qui le portent. Il se tourne vers toi et ses yeux sont comme deux portails s'ouvrant sur les enfers. *"Je suis tien jusqu'à ce que la mort nous emporte tous deux."*~ [IGN248] */
  IF ~  Global("Trans_Vanish","GLOBAL",0)
~ THEN REPLY #68219 /* ~"Ce sera peut-être aujourd'hui, Ignus…"~ */ EXTERN ~DTRANS~ 142
  IF ~  Global("Trans_Vanish","GLOBAL",1)
GlobalGT("Fortress_Vhailor","GLOBAL",0)
Global("Fortress_Vhailor_Battle","GLOBAL",0)
~ THEN REPLY #68220 /* ~"Ce sera peut-être aujourd'hui, Ignus…"~ */ DO ~StartCutSceneMode()
StartCutSceneEx("1204v0",FALSE)
~ EXIT
  IF ~  Global("Trans_Vanish","GLOBAL",1)
Global("Fortress_Vhailor","GLOBAL",0)
GlobalGT("Fortress_Nordom","GLOBAL",0)
~ THEN REPLY #68221 /* ~"Ce sera peut-être aujourd'hui, Ignus…"~ */ DO ~StartCutSceneMode()
StartCutSceneEx("1204n0",FALSE)
~ EXIT
  IF ~  Global("Trans_Vanish","GLOBAL",1)
Global("Fortress_Vhailor","GLOBAL",0)
Global("Fortress_Nordom","GLOBAL",0)
~ THEN REPLY #68243 /* ~"Ce sera peut-être aujourd'hui, Ignus…"~ */ DO ~StartCutSceneMode()
StartCutSceneEx("1204tr",FALSE)
~ EXIT
  IF ~  Global("Trans_Vanish","GLOBAL",1)
Global("Fortress_Vhailor","GLOBAL",1)
Global("Fortress_Vhailor_Battle","GLOBAL",1)
Global("Fortress_Nordom","GLOBAL",0)
~ THEN REPLY #68441 /* ~"Ce sera peut-être aujourd'hui, Ignus…"~ */ DO ~StartCutSceneMode()
StartCutSceneEx("1204tr",FALSE)
~ EXIT
END

IF ~~ THEN BEGIN 93 // from: 91.1
  SAY #68388 /* ~Il se produit une soudaine éruption de flammes et Ignus s'élève dans les airs, déformé par les courants d'air chaud qui le portent. Il se tourne vers toi et ses yeux sont comme deux portails s'ouvrant sur les enfers. Il siffle longuement, mais sans se montrer menaçant. Il fait juste preuve d'une circonspection dont tu ne le savais pas capable.~ */
  IF ~~ THEN REPLY #68389 /* ~JE NE PUIS RESTER ICI BIEN LONGTEMPS, IGNUS. JE PEUX TE RENVOYER À SIGIL, SI TU LE SOUHAITES.~ */ GOTO 94
END

IF ~~ THEN BEGIN 94 // from: 93.0
  SAY #68390 /* ~Ignus te fixe longuement. Ses traits sont tellement ravagés qu'il t'est impossible d'y lire quoi que ce soit… et pourtant, soudain, tu sais ce qu'il veut.~ */
  IF ~  GlobalGT("Memory_Ignus_Taught","GLOBAL",0)
~ THEN REPLY #68391 /* ~JE VAIS T'ENVOYER DANS LE PLAN ÉLÉMENTAIRE DU FEU, IGNUS. LÀ, TU POURRAS TE LAISSER ALLER AU GRÉ DES COURANTS DE FLAMMES, ET TOUTES LES CRÉATURES CONNAÎTRONT TON CŒUR. TU VIVRAS ENFIN DANS LE FEU PERPÉTUEL, COMME TU AURAIS TOUJOURS DÛ LE FAIRE.~ */ GOTO 95
  IF ~  Global("Memory_Ignus_Taught","GLOBAL",0)
~ THEN REPLY #68422 /* ~JE VAIS T'ENVOYER DANS LE PLAN ÉLÉMENTAIRE DU FEU, IGNUS. LÀ, TU POURRAS TE LAISSER ALLER AU GRÉ DES COURANTS DE FLAMMES, ET TOUTES LES CRÉATURES CONNAÎTRONT TON CŒUR. TU VIVRAS ENFIN DANS LE FEU PERPÉTUEL, COMME TU AURAIS TOUJOURS DÛ LE FAIRE.~ */ GOTO 96
END

IF ~~ THEN BEGIN 95 // from: 94.0
  SAY #68392 /* ~Ignus flotte en silence et, quand il parle enfin, sa voix te rappelle celle de quelqu'un d'autre… un élève que tu as eu il y a bien longtemps, alors que tu vivais dans le corps de l'une de tes incarnations. "Pardonne-moi, maître… j'ai trahi ton enseignement…"~ [IGN254] */
  IF ~~ THEN REPLY #68393 /* ~UN JOUR, JE T'AI ENSEIGNÉ LA SOUFFRANCE, IGNUS, ET C'EST MOI QUI T'AI TRAHI. MAIS JE VAIS T'ENVOYER DANS UN LIEU OÙ TU CONNAÎTRAS ENFIN LA PAIX ET LA LIBERTÉ.~ */ GOTO 96
  IF ~~ THEN REPLY #68394 /* ~LES TRAHISONS FURENT NOMBREUSES, ET PAS SEULEMENT DE TON FAIT, IGNUS. JE TE PARDONNE.~ */ GOTO 96
END

IF ~~ THEN BEGIN 96 // from: 94.1 95.0 95.1
  SAY #68395 /* ~Ignus se contente d'incliner la tête. Les flammes qui l'entourent se mettent à craquer et des volutes de cendre l'environnent telles des feuilles mortes.~ */
  IF ~  GlobalGT("Fortress_Vhailor","GLOBAL",0)
Global("Fortress_Vhailor_Battle","GLOBAL",0)
~ THEN REPLY #68396 /* ~AU REVOIR, IGNUS.~ */ DO ~StartCutSceneMode()
StartCutSceneEx("1204v0",FALSE)
~ EXIT
  IF ~  Global("Fortress_Vhailor","GLOBAL",0)
~ THEN REPLY #68397 /* ~AU REVOIR, IGNUS.~ */ DO ~QuitGame(FINALE,0,0)
~ EXIT
  IF ~  GlobalGT("Fortress_Vhailor","GLOBAL",0)
Global("Fortress_Vhailor_Battle","GLOBAL",1)
~ THEN REPLY #68467 /* ~AU REVOIR, IGNUS.~ */ DO ~QuitGame(FINALE,0,0)
~ EXIT
END

IF ~  Global("Fortress_Ignus","GLOBAL",4)
~ THEN BEGIN 97 // from:
  SAY #68418 /* ~Ignus est un tourbillon de flammes, un océan de feu démonté. *"Brûûûllle…."*~ [IGN090A] */
  IF ~~ THEN REPLY #68419 /* ~"Maintiens-le sous pression, Ignus. Ne lui laisse pas la possibilité de se concentrer."~ */ EXIT
END
