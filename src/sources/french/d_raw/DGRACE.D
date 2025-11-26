// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DGRACE.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\fr_FR\dialog.tlk
// dialogF  : (none)

BEGIN ~DGRACE~

IF ~~ THEN BEGIN 0 // from:
  SAY #2850 /* ~"Bonjour. Je suis la succube puritaine. Je peux aussi faire partie de votre groupe… SI vous voulez de moi."~ */
  IF ~~ THEN REPLY #2851 /* ~"Oh, mais bien sûr que je veux de vous. Hé, hé. Plus tard pour toi, tanar'ri."~ */ EXIT
  IF ~~ THEN REPLY #24998 /* ~"Allez, Grâce. Je n'ai pas le temps de bavasser avec vous, alors dépêchez-vous et en avant."~ */ DO ~ChangeAIScript("",GENERAL)
ChangeAIScript("pcgrace",DEFAULT)
JoinPartyEx(TRUE)
~ EXIT
END

IF ~~ THEN BEGIN 1 // from: 2.0 3.0 4.0 5.2
  SAY #6858 /* ~Tombée-en-Disgrâce acquiesce. "Oui, bien sûr."~ */
  IF ~  Global("Know_Dabus_Speak","GLOBAL",0)
~ THEN REPLY #7013 /* ~"Demande-lui qui il est."~ */ EXTERN ~DDABUS~ 13
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatLT(Protagonist,15,INT)
~ THEN REPLY #7014 /* ~"Demande-lui qui il est."~ */ EXTERN ~DDABUS~ 15
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatGT(Protagonist,14,INT)
~ THEN REPLY #7015 /* ~"Demande-lui qui il est."~ */ EXTERN ~DDABUS~ 17
  IF ~  Global("Know_Dabus_Speak","GLOBAL",0)
~ THEN REPLY #7016 /* ~"Demande-lui ce qu'il fait."~ */ EXTERN ~DDABUS~ 14
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatLT(Protagonist,15,INT)
~ THEN REPLY #7017 /* ~"Demande-lui ce qu'il fait."~ */ EXTERN ~DDABUS~ 16
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatGT(Protagonist,14,INT)
~ THEN REPLY #7018 /* ~"Demande-lui ce qu'il fait."~ */ EXTERN ~DDABUS~ 18
  IF ~~ THEN REPLY #7019 /* ~"Demande-lui de nous parler de la Dame des Douleurs."~ */ EXTERN ~DDABUS~ 19
  IF ~~ THEN REPLY #7020 /* ~"Demande-lui de nous parler de Fell."~ */ GOTO 5
  IF ~~ THEN REPLY #7021 /* ~"Peu importe. Partons."~ */ DO ~SetGlobal("Translate_Dabus","GLOBAL",0)
~ EXTERN ~DDABUS~ 6
END

IF ~~ THEN BEGIN 2 // from:
  SAY #6859 /* ~"Il dit qu'il est un dabus." Grâce s'arrête. "Je n'ai jamais rencontré de dabus avec un nom… enfin, quelque chose qui puisse être identifié comme un nom. Il semble qu'ils préfèrent les symboles."~ */
  IF ~~ THEN REPLY #7022 /* ~"Peux-tu lui poser d'autres questions ?"~ */ GOTO 1
  IF ~~ THEN REPLY #7023 /* ~"C'est tout ce que je voulais savoir. Au revoir."~ */ DO ~SetGlobal("Translate_Dabus","GLOBAL",0)
~ EXTERN ~DDABUS~ 6
END

IF ~~ THEN BEGIN 3 // from:
  SAY #6860 /* ~"Il dit qu'il fait son travail." Elle se tourne vers toi. "Ils passent le plus clair de leur temps à réparer et à démonter des parties de la cité. En somme, ce sont les gardiens de la cité."~ */
  IF ~~ THEN REPLY #7024 /* ~"Peux-tu lui poser d'autres questions ?"~ */ GOTO 1
  IF ~~ THEN REPLY #7025 /* ~"C'est tout ce que je voulais savoir. Au revoir."~ */ DO ~SetGlobal("Translate_Dabus","GLOBAL",0)
~ EXTERN ~DDABUS~ 6
END

IF ~~ THEN BEGIN 4 // from:
  SAY #6861 /* ~"Je suppose que c'est trop demander que d'exiger une réponse définitive."~ */
  IF ~~ THEN REPLY #7026 /* ~"Peux-tu lui poser d'autres questions ?"~ */ GOTO 1
  IF ~~ THEN REPLY #7027 /* ~"C'est tout ce que je voulais savoir. Au revoir."~ */ DO ~SetGlobal("Translate_Dabus","GLOBAL",0)
~ EXTERN ~DDABUS~ 6
END

IF ~~ THEN BEGIN 5 // from: 1.7
  SAY #6862 /* ~Grâce fronce les sourcils. "Je ne suis pas sûre qu'il soit opportun de poser cette question. Ça risque d'offenser le dabus étant donné que Fell ne fait plus partie de leur communauté…"~ */
  IF ~~ THEN REPLY #7028 /* ~"Pouvez-vous quand même le lui demander ?"~ */ EXTERN ~DDABUS~ 20
  IF ~~ THEN REPLY #7029 /* ~"Arrêtez de me faire la leçon, demandez-lui."~ */ DO ~MoraleDec("Grace",1)
~ EXTERN ~DDABUS~ 20
  IF ~~ THEN REPLY #7030 /* ~"Peux-tu lui poser d'autres questions ?"~ */ GOTO 1
  IF ~~ THEN REPLY #7031 /* ~"Alors, peu importe. Partons."~ */ DO ~SetGlobal("Translate_Dabus","GLOBAL",0)
~ EXTERN ~DDABUS~ 6
END

IF ~~ THEN BEGIN 6 // from:
  SAY #7186 /* ~Grâce acquiesce, comme pour respecter ton intimité. "Je reviens." Puis elle tourne les talons et disparaît.~ */
  IF ~~ THEN REPLY #7482 /* ~Suis la catin…~ */ DO ~FadeToColor([20.0],0)
Wait(3)
FadeFromColor([20.0],0)
~ EXTERN ~DHARLOTN~ 32
END

IF ~~ THEN BEGIN 7 // from:
  SAY #6474 /* ~"Elle ne peut pas en parler en présence de fiélons. Je suppose que puisqu'elle a passé un contrat, c'est un projet de la Loi. Et puisque ce contrat est magique, on le doit sans doute aux baatezus."~ */
  IF ~~ THEN REPLY #8000 /* ~"Quel enchaînement de spéculations ! Elle a raison, Kel'lera ?"~ */ EXTERN ~DKELLERA~ 14
  IF ~~ THEN REPLY #8001 /* ~"Intéressant. Je m'en souviendrai. En attendant, Kel'lera, réponds à d'autres questions."~ */ EXTERN ~DKELLERA~ 21
END

IF ~~ THEN BEGIN 8 // from:
  SAY #6476 /* ~"Elle ne peut pas en parler en présence de fiélons. Je suppose que puisqu'elle a passé un contrat, c'est un projet de la Loi. Et puisque ce contrat est magique, on le doit sans doute aux baatezus."~ */
  IF ~~ THEN REPLY #8002 /* ~"Quel enchaînement de spéculations ! Elle a raison, Kel'lera ?"~ */ EXTERN ~DKELLERA~ 31
  IF ~~ THEN REPLY #8003 /* ~"Intéressant. Je m'en souviendrai. En attendant, Kel'lera, réponds à d'autres questions."~ */ EXTERN ~DKELLERA~ 23
END

IF ~~ THEN BEGIN 9 // from:
  SAY #6477 /* ~"Je comprends."~ */
  IF ~~ THEN EXTERN ~DKELLERA~ 36
END

IF ~~ THEN BEGIN 10 // from:
  SAY #7997 /* ~"Je comprends."~ */
  IF ~~ THEN EXTERN ~DKELLERA~ 37
END

IF ~~ THEN BEGIN 11 // from:
  SAY #11273 /* ~Tombée-en-Disgrâce parle avec sérénité. "Ilquix, je suis d'accord, ma mère serait heureuse d'entendre que ma santé est toujours bonne, que je garde le cap que j'ai choisi et que j'ai moi-même sélectionné mes compagnons de voyage. Quand vous retournerez dans les Abysses, pourriez-vous lui faire passer ce message de ma part ? Je suis certaine qu'elle sera prête à récompenser quiconque lui apportera d'aussi bonnes nouvelles de moi." Elle sourit gentiment.~ */
  IF ~~ THEN REPLY #11274 /* ~"Tout cela est vraiment fascinant, mais j'ai d'autres questions…"~ */ EXTERN ~DILQUIXT~ 5
  IF ~~ THEN REPLY #11275 /* ~"Ça suffit. Au revoir, Ilquix."~ */ EXIT
END

IF ~~ THEN BEGIN 12 // from:
  SAY #11404 /* ~Grâce répond par une petite révérence. "Vos paroles aimables pourraient faire fondre n'importe qui, j'en suis certaine, Ilquix. Mais il ne faut jamais oublier que l'on a tendance à sous-estimer ou à surestimer la plupart des gens. Ce serait vraiment dommage que tout soit révélé si vite ; une telle fin serait bien décevante, non ?"~ */
  IF ~~ THEN REPLY #11405 /* ~"Que voulez-vous dire exactement, Grâce ?"~ */ GOTO 13
  IF ~~ THEN REPLY #11406 /* ~"Ça suffit. Il me faut les réponses à certaines questions, Ilquix."~ */ EXTERN ~DILQUIXN~ 2
  IF ~~ THEN REPLY #11410 /* ~"Cette conversation est terminée. Au revoir, Ilquix."~ */ EXIT
END

IF ~~ THEN BEGIN 13 // from: 12.0
  SAY #11407 /* ~"Qu'en paroles comme en actes, la hâte cause souvent des regrets ultérieurs, et que nombreux sont ceux dont les caractéristiques, voire les vertus, échappent à l'attention. D'aucuns tirent des conclusions en s'appuyant sur une base fragile, sans songer qu'elle pourrait être sapée. Il faut donc peser nos mots, pour éviter qu'ils révèlent davantage sur nous que nous le désirons."~ */
  IF ~~ THEN REPLY #11408 /* ~"Je … vois. Ilquix, j'ai d'autres questions…"~ */ EXTERN ~DILQUIXN~ 2
  IF ~~ THEN REPLY #11409 /* ~"Bien dit, Grâce. Au revoir, Ilquix."~ */ EXIT
END

IF ~~ THEN BEGIN 14 // from:
  SAY #16627 /* ~Grâce acquiesce. "Certainement. C'est une excellente idée."~ */
  IF ~  NearbyDialog("DMorte")
Global("Tree_M","AR0400",0)
~ THEN REPLY #16927 /* ~"Merci. Morte ? Qu'est-ce que tu en penses ?"~ */ DO ~SetGlobal("Tree_M","AR0400",1)
IncrementGlobal("Tree_Helpers","AR0400",1)
~ EXTERN ~DMORTE~ 181
  IF ~  NearbyDialog("DAnnah")
Global("Tree_A","AR0400",0)
~ THEN REPLY #16928 /* ~"Merci. Annah ? Tu pourrais ?"~ */ DO ~SetGlobal("Tree_A","AR0400",1)
IncrementGlobal("Tree_Helpers","AR0400",1)
~ EXTERN ~DANNAH~ 99
  IF ~  NearbyDialog("DIgnus")
Global("Tree_I","AR0400",0)
~ THEN REPLY #16929 /* ~"Merci. Ignus ?"~ */ DO ~SetGlobal("Tree_I","AR0400",1)
IncrementGlobal("Tree_Helpers","AR0400",1)
~ EXTERN ~DIGNUS~ 11
  IF ~  NearbyDialog("DDakkon")
Global("Tree_D","AR0400",0)
~ THEN REPLY #16930 /* ~"Merci. Dak'kon, tu peux aider cet homme ?"~ */ DO ~SetGlobal("Tree_D","AR0400",1)
IncrementGlobal("Tree_Helpers","AR0400",1)
~ EXTERN ~DDAKKON~ 74
  IF ~  NearbyDialog("DDakkon")
Global("Tree_D","AR0400",0)
Global("Dakkon_Slave","Global",1)
~ THEN REPLY #16931 /* ~"Merci. Dak'kon : aide cet homme."~ */ DO ~IncrementGlobal("BD_DAKKON_MORALE","GLOBAL",-1)
SetGlobal("Tree_D","AR0400",1)
IncrementGlobal("Tree_Helpers","AR0400",1)
~ EXTERN ~DDAKKON~ 75
  IF ~  NearbyDialog("DNordom")
Global("Tree_N","AR0400",0)
~ THEN REPLY #16932 /* ~"Merci. Nordom, tu penses que tu pourrais l'aider ?"~ */ DO ~SetGlobal("Tree_N","AR0400",1)
IncrementGlobal("Tree_Helpers","AR0400",1)
~ EXTERN ~DNORDOM~ 1
  IF ~  NearbyDialog("DVhail")
Global("Tree_V","AR0400",0)
~ THEN REPLY #16933 /* ~"Merci. Vhailor, tu peux l'aider ?"~ */ DO ~SetGlobal("Tree_V","AR0400",1)
IncrementGlobal("Tree_Helpers","AR0400",1)
~ EXTERN ~DVHAIL~ 1
  IF ~~ THEN REPLY #16934 /* ~"Merci. J'ai des questions, Deuils…"~ */ DO ~IncrementGlobal("Tree_Helpers","AR0400",1)
~ EXTERN ~DMFTREE~ 28
  IF ~~ THEN REPLY #16935 /* ~"Merci, Grâce. Au revoir, Deuils-pour-Arbres."~ */ DO ~IncrementGlobal("Tree_Helpers","AR0400",1)
~ EXIT
END

IF ~~ THEN BEGIN 15 // from: 16.0 17.1 18.3 19.3 20.0 21.12 22.12 23.13 24.13 25.13 26.12 27.9 28.9 29.0 30.3 31.3 32.0 32.2 33.1 34.3 35.1 36.3 37.0 38.3 39.3 40.3 41.3 42.3 43.12 44.5 45.0 46.0 46.2
  SAY #22578 /* ~Tombée-en-Disgrâce acquiesce. "Oui, bien sûr."~ */
  IF ~  Global("Know_Dabus_Speak","GLOBAL",0)
Global("Fell","GLOBAL",0)
~ THEN REPLY #25256 /* ~"Demandez-lui qui il est."~ */ DO ~SetGlobal("Fell","GLOBAL",1)
~ EXTERN ~DFELL~ 14
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatLT(Protagonist,15,INT)
Global("Fell","GLOBAL",0)
~ THEN REPLY #25257 /* ~"Demandez-lui qui il est."~ */ DO ~SetGlobal("Fell","GLOBAL",1)
~ EXTERN ~DFELL~ 15
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatGT(Protagonist,14,INT)
Global("Fell","GLOBAL",0)
~ THEN REPLY #25258 /* ~"Demandez-lui qui il est."~ */ DO ~SetGlobal("Fell","GLOBAL",1)
~ EXTERN ~DFELL~ 16
  IF ~  Global("Know_Dabus_Speak","GLOBAL",0)
~ THEN REPLY #25259 /* ~"Demandez-lui quel est cet endroit."~ */ DO ~SetGlobal("Fell_Work","GLOBAL",1)
~ EXTERN ~DFELL~ 17
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatLT(Protagonist,15,INT)
~ THEN REPLY #25260 /* ~"Demandez-lui quel est cet endroit."~ */ DO ~SetGlobal("Fell_Work","GLOBAL",1)
~ EXTERN ~DFELL~ 18
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatGT(Protagonist,14,INT)
~ THEN REPLY #25261 /* ~"Demandez-lui quel est cet endroit."~ */ DO ~SetGlobal("Fell_Work","GLOBAL",1)
~ EXTERN ~DFELL~ 19
  IF ~  Global("Know_Dabus_Speak","GLOBAL",0)
Global("Fell","GLOBAL",1)
~ THEN REPLY #25262 /* ~"J'ai l'impression que je te connais, Fell."~ */ DO ~SetGlobal("Fell","GLOBAL",2)
~ EXTERN ~DFELL~ 20
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatLT(Protagonist,15,INT)
Global("Fell","GLOBAL",1)
~ THEN REPLY #25263 /* ~"J'ai l'impression que je te connais, Fell."~ */ DO ~SetGlobal("Fell","GLOBAL",2)
~ EXTERN ~DFELL~ 21
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatGT(Protagonist,14,INT)
Global("Fell","GLOBAL",1)
~ THEN REPLY #25264 /* ~"J'ai l'impression que je te connais, Fell."~ */ DO ~SetGlobal("Fell","GLOBAL",2)
~ EXTERN ~DFELL~ 22
  IF ~  Global("Know_Dabus_Speak","GLOBAL",0)
GlobalGT("Fell","GLOBAL",1)
~ THEN REPLY #25265 /* ~"J'ai l'impression que je te connais, Fell."~ */ EXTERN ~DFELL~ 20
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatLT(Protagonist,15,INT)
GlobalGT("Fell","GLOBAL",1)
~ THEN REPLY #25266 /* ~"J'ai l'impression que je te connais, Fell."~ */ EXTERN ~DFELL~ 21
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatGT(Protagonist,14,INT)
GlobalGT("Fell","GLOBAL",1)
~ THEN REPLY #25267 /* ~"J'ai l'impression que je te connais, Fell."~ */ EXTERN ~DFELL~ 22
  IF ~  Global("Know_Dabus_Speak","GLOBAL",0)
GlobalGT("Fell","GLOBAL",1)
Global("Fell_Floor_Trigger","GLOBAL",0)
~ THEN REPLY #64406 /* ~"Qu'y a-t-il de l'autre côté de ce rideau, Fell ?"~ */ EXTERN ~DFELL~ 80
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatLT(Protagonist,15,INT)
GlobalGT("Fell","GLOBAL",1)
Global("Fell_Floor_Trigger","GLOBAL",0)
~ THEN REPLY #64407 /* ~"Qu'y a-t-il de l'autre côté de ce rideau, Fell ?"~ */ EXTERN ~DFELL~ 81
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatGT(Protagonist,14,INT)
GlobalGT("Fell","GLOBAL",1)
Global("Fell_Floor_Trigger","GLOBAL",0)
~ THEN REPLY #64408 /* ~"Qu'y a-t-il de l'autre côté de ce rideau, Fell ?"~ */ EXTERN ~DFELL~ 82
  IF ~  Global("Know_Dabus_Speak","GLOBAL",0)
GlobalGT("Fell","GLOBAL",1)
GlobalGT("Fell_Floor_Trigger","GLOBAL",0)
~ THEN REPLY #64409 /* ~"Quelles sont ces formes dans l'arrière-salle, Fell ?"~ */ EXTERN ~DFELL~ 80
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatLT(Protagonist,15,INT)
GlobalGT("Fell","GLOBAL",1)
GlobalGT("Fell_Floor_Trigger","GLOBAL",0)
~ THEN REPLY #64410 /* ~"Quelles sont ces formes dans l'arrière-salle, Fell ?"~ */ EXTERN ~DFELL~ 81
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatGT(Protagonist,14,INT)
GlobalGT("Fell","GLOBAL",1)
GlobalGT("Fell_Floor_Trigger","GLOBAL",0)
~ THEN REPLY #64411 /* ~"Quelles sont ces formes dans l'arrière-salle, Fell ?"~ */ EXTERN ~DFELL~ 82
  IF ~  Global("Know_Dabus_Speak","GLOBAL",0)
GlobalGT("Fell","GLOBAL",1)
~ THEN REPLY #25268 /* ~"Il a dit qu'il m'avait déjà rencontré… sait-il comment je suis mort ?"~ */ EXTERN ~DFELL~ 71
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatLT(Protagonist,15,INT)
GlobalGT("Fell","GLOBAL",1)
~ THEN REPLY #25269 /* ~"Il a dit qu'il m'avait déjà rencontré… sait-il comment je suis mort ?"~ */ EXTERN ~DFELL~ 72
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatGT(Protagonist,14,INT)
GlobalGT("Fell","GLOBAL",1)
~ THEN REPLY #25270 /* ~"Il a dit qu'il m'avait déjà rencontré… sait-il comment je suis mort ?"~ */ EXTERN ~DFELL~ 73
  IF ~  Global("Know_Dabus_Speak","GLOBAL",0)
GlobalGT("Fell","GLOBAL",0)
GlobalGT("Know_Ravel","GLOBAL",0)
Global("Ravel","GLOBAL",0)
~ THEN REPLY #25271 /* ~"Demandez-lui s'il a entendu parler de Ravel."~ */ EXTERN ~DFELL~ 31
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
GlobalGT("Fell","GLOBAL",0)
GlobalGT("Know_Ravel","GLOBAL",0)
Global("Ravel","GLOBAL",0)
CheckStatLT(Protagonist,15,INT)
~ THEN REPLY #25272 /* ~"Demandez-lui s'il a entendu parler de Ravel."~ */ EXTERN ~DFELL~ 32
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
GlobalGT("Fell","GLOBAL",0)
GlobalGT("Know_Ravel","GLOBAL",0)
Global("Ravel","GLOBAL",0)
CheckStatGT(Protagonist,14,INT)
~ THEN REPLY #25273 /* ~"Demandez-lui s'il a entendu parler de Ravel."~ */ EXTERN ~DFELL~ 33
  IF ~  Global("Know_Dabus_Speak","GLOBAL",0)
GlobalGT("Fell","GLOBAL",0)
GlobalGT("Fell_Work","GLOBAL",0)
PartyHasItem("OldArm1")
~ THEN REPLY #25274 /* ~"Demandez-lui si c'est lui qui a fait les tatouages sur le bras démembré que j'ai trouvé."~ */ EXTERN ~DFELL~ 52
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
GlobalGT("Fell","GLOBAL",0)
GlobalGT("Fell_Work","GLOBAL",0)
PartyHasItem("OldArm1")
CheckStatLT(Protagonist,15,INT)
~ THEN REPLY #25275 /* ~"Demandez-lui si c'est lui qui a fait les tatouages sur le bras démembré que j'ai trouvé."~ */ EXTERN ~DFELL~ 53
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
GlobalGT("Fell","GLOBAL",0)
GlobalGT("Fell_Work","GLOBAL",0)
PartyHasItem("OldArm1")
CheckStatGT(Protagonist,14,INT)
~ THEN REPLY #25276 /* ~"Demandez-lui si c'est lui qui a fait les tatouages sur le bras démembré que j'ai trouvé."~ */ EXTERN ~DFELL~ 54
  IF ~  Global("Know_Dabus_Speak","GLOBAL",0)
GlobalGT("Fell","GLOBAL",0)
GlobalGT("Fell_Work","GLOBAL",0)
~ THEN REPLY #25277 /* ~"Peut-il me dire quelque chose sur les tatouages de mon corps ?"~ */ EXTERN ~DFELL~ 64
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
GlobalGT("Fell","GLOBAL",0)
GlobalGT("Fell_Work","GLOBAL",0)
CheckStatLT(Protagonist,15,INT)
~ THEN REPLY #25278 /* ~"Peut-il me dire quelque chose sur les tatouages de mon corps ?"~ */ EXTERN ~DFELL~ 65
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
GlobalGT("Fell","GLOBAL",0)
GlobalGT("Fell_Work","GLOBAL",0)
CheckStatGT(Protagonist,14,INT)
~ THEN REPLY #25279 /* ~"Peut-il me dire quelque chose sur les tatouages de mon corps ?"~ */ EXTERN ~DFELL~ 66
  IF ~  Global("Know_Dabus_Speak","GLOBAL",0)
GlobalGT("Fell_Work","GLOBAL",0)
~ THEN REPLY #25280 /* ~"Est-ce que je peux voir les tatouages qu'il a ?"~ */ DO ~SetGlobal("Translate_Dabus","GLOBAL",0)
StartStore("Fell",Protagonist)
~ EXIT
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
GlobalGT("Fell_Work","GLOBAL",0)
CheckStatLT(Protagonist,15,INT)
~ THEN REPLY #25281 /* ~"Est-ce que je peux voir les tatouages qu'il a ?"~ */ DO ~SetGlobal("Translate_Dabus","GLOBAL",0)
StartStore("Fell",Protagonist)
~ EXIT
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
GlobalGT("Fell_Work","GLOBAL",0)
CheckStatGT(Protagonist,14,INT)
~ THEN REPLY #25282 /* ~"Est-ce que je peux voir les tatouages qu'il a ?"~ */ DO ~SetGlobal("Translate_Dabus","GLOBAL",0)
StartStore("Fell",Protagonist)
~ EXIT
  IF ~~ THEN REPLY #25283 /* ~"Peu importe. Au revoir."~ */ DO ~SetGlobal("Translate_Dabus","GLOBAL",0)
~ EXIT
END

IF ~~ THEN BEGIN 16 // from:
  SAY #22580 /* ~"Son nom est Fell." Grâce regarde à peine le symbole avant de se tourner vers toi. "Ce symbole… L'ovale blanc traversé par l'éclair noir… Il se trouve aussi à l'extérieur de ce bâtiment. Je crois que l'ovale symbolise Sigil et l'éclair noir…" Grâce devient silencieuse. "Je ne sais pas vraiment."~ */
  IF ~~ THEN REPLY #25284 /* ~"Hummmm. J'ai une autre question à lui poser…"~ */ GOTO 15
  IF ~~ THEN REPLY #25285 /* ~"Je vois. C'est tout ce que je voulais savoir. Au revoir."~ */ DO ~SetGlobal("Translate_Dabus","GLOBAL",0)
~ EXIT
END

IF ~~ THEN BEGIN 17 // from:
  SAY #22583 /* ~Grâce attend patiemment que les symboles apparaissent clairement. "C'est son atelier. Il marque ici des tatouages sur la peau des autres." Grâce se tourne vers toi et sourit ; elle semble se nourrir de la présence de Fell. "Fell est connu dans tout Sigil comme un artiste talentueux. La chair des autres est sa toile."~ */
  IF ~~ THEN REPLY #25286 /* ~"Est-ce que je peux voir les tatouages qu'il a ?"~ */ DO ~SetGlobal("Translate_Dabus","GLOBAL",0)
StartStore("Fell",Protagonist)
~ EXIT
  IF ~~ THEN REPLY #25287 /* ~"Hmmm. J'ai une autre question à lui poser…"~ */ GOTO 15
  IF ~~ THEN REPLY #25288 /* ~"Bon, je m'en souviendrai. Au revoir."~ */ DO ~SetGlobal("Translate_Dabus","GLOBAL",0)
~ EXIT
END

IF ~~ THEN BEGIN 18 // from:
  SAY #22585 /* ~Grâce étudie les symboles attentivement, puis se tourne vers toi et te regarde étrangement. "Fell dit que c'est la première fois que vous venez ici, et que ce n'est pas la première fois." Grâce te regarde d'un œil critique. "Peut-être se souvient-il de vous, avant que vous ne soyez vous…" Elle réalise soudainement ses propos et se met à rire doucement. "Toutes mes excuses… Je n'aurais jamais pensé que j'aurais à utiliser plusieurs 'vous' pour m'adresser à quelqu'un."~ */
  IF ~  Global("Know_Dabus_Speak","GLOBAL",0)
~ THEN REPLY #25289 /* ~"Est-ce qu'il sait qui je suis ?"~ */ EXTERN ~DFELL~ 23
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatLT(Protagonist,15,INT)
~ THEN REPLY #25290 /* ~"Est-ce qu'il sait qui je suis ?"~ */ EXTERN ~DFELL~ 24
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatGT(Protagonist,14,INT)
~ THEN REPLY #25291 /* ~"Est-ce qu'il sait qui je suis ?"~ */ EXTERN ~DFELL~ 25
  IF ~~ THEN REPLY #25292 /* ~"J'ai une autre question à lui poser…"~ */ GOTO 15
  IF ~~ THEN REPLY #25293 /* ~"C'est tout ce que je voulais savoir. Au revoir."~ */ DO ~SetGlobal("Translate_Dabus","GLOBAL",0)
~ EXIT
END

IF ~~ THEN BEGIN 19 // from:
  SAY #22587 /* ~Grâce fronce les sourcils, puis porte la main à son menton, dans un geste de réflexion. "Fell dit qu'il vous connaît… puis, et c'est ce qui est étrange : qu'il n'est pas *autorisé* à vous dire votre histoire."~ */
  IF ~  Global("Know_Dabus_Speak","GLOBAL",0)
~ THEN REPLY #25294 /* ~"Pas 'autorisé' ? Et pourquoi ?"~ */ EXTERN ~DFELL~ 26
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatLT(Protagonist,15,INT)
~ THEN REPLY #25295 /* ~"Pas 'autorisé' ? Et pourquoi ?"~ */ EXTERN ~DFELL~ 27
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatGT(Protagonist,14,INT)
~ THEN REPLY #25296 /* ~"Pas 'autorisé' ? Et pourquoi ?"~ */ JOURNAL #24270 /* ~Fell m'a dit qu'il me connaissait mais qu'il ne pouvait pas me raconter mon 'histoire'. Mais le plus étrange a été la raison invoquée. Il m'a expliqué qu'il ne pouvait pas parce qu''il ne peut pas changer la nature d'un homme'.~ */ EXTERN ~DFELL~ 28
  IF ~~ THEN REPLY #25297 /* ~"J'ai une autre question à lui poser…"~ */ GOTO 15
  IF ~~ THEN REPLY #25298 /* ~"C'est tout ce que je voulais savoir. Au revoir."~ */ DO ~SetGlobal("Translate_Dabus","GLOBAL",0)
~ EXIT
END

IF ~~ THEN BEGIN 20 // from:
  SAY #22591 /* ~"Il s'excuse, mais il ne peut pas vous le dire." Grâce se retourne vers toi, rencontrant ton regard. "Ce qu'il dit ensuite est étrange : il dit qu'il ne peut pas *changer la nature d'un homme*." Alors que Grâce répète ces mots, tu ressens une pression terrible à l'intérieur de ton crâne… elle augmente, comme des marteaux te pilonnant jusqu'à ce que ton crâne semble sur le point d'exploser… puis se dissipe graduellement lorsqu'elle prononce le dernier mot.~ */
  IF ~~ THEN REPLY #25299 /* ~"J'ai une autre question à lui poser…"~ */ GOTO 15
  IF ~~ THEN REPLY #25300 /* ~"C'est tout ce que je voulais savoir. Au revoir."~ */ DO ~SetGlobal("Translate_Dabus","GLOBAL",0)
~ EXIT
END

IF ~~ THEN BEGIN 21 // from:
  SAY #23011 /* ~"Fell dit qu'elle n'est pas un mythe."~ */
  IF ~  Global("Know_Dabus_Speak","GLOBAL",0)
Global("AR0610_Visited","GLOBAL",0)
~ THEN REPLY #25301 /* ~"Est-ce qu'il sait où elle est ?"~ */ EXTERN ~DFELL~ 34
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatLT(Protagonist,15,INT)
Global("AR0610_Visited","GLOBAL",0)
~ THEN REPLY #25302 /* ~"Est-ce qu'il sait où elle est ?"~ */ EXTERN ~DFELL~ 35
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatGT(Protagonist,14,INT)
Global("AR0610_Visited","GLOBAL",0)
~ THEN REPLY #25303 /* ~"Est-ce qu'il sait où elle est ?"~ */ EXTERN ~DFELL~ 36
  IF ~  Global("Know_Dabus_Speak","GLOBAL",0)
~ THEN REPLY #25304 /* ~"Peut-il nous dire quelque chose sur elle ?"~ */ EXTERN ~DFELL~ 40
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatLT(Protagonist,15,INT)
~ THEN REPLY #25305 /* ~"Peut-il nous dire quelque chose sur elle ?"~ */ EXTERN ~DFELL~ 41
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatGT(Protagonist,14,INT)
~ THEN REPLY #25306 /* ~"Peut-il nous dire quelque chose sur elle ?"~ */ EXTERN ~DFELL~ 42
  IF ~  Global("Know_Dabus_Speak","GLOBAL",0)
Global("Fell_Ravel_Warning","GLOBAL",0)
~ THEN REPLY #25307 /* ~"J'ai une autre question à lui poser…"~ */ EXTERN ~DFELL~ 46
  IF ~  Global("Fell_Ravel_Warning","GLOBAL",0)
CheckStatLT(Protagonist,15,INT)
Global("Know_Dabus_Speak","GLOBAL",1)
~ THEN REPLY #25308 /* ~"J'ai une autre question à lui poser…"~ */ EXTERN ~DFELL~ 47
  IF ~  Global("Fell_Ravel_Warning","GLOBAL",0)
CheckStatGT(Protagonist,14,INT)
Global("Know_Dabus_Speak","GLOBAL",1)
~ THEN REPLY #25309 /* ~"J'ai une autre question à lui poser…"~ */ EXTERN ~DFELL~ 48
  IF ~  Global("Know_Dabus_Speak","GLOBAL",0)
Global("Fell_Ravel_Warning","GLOBAL",0)
~ THEN REPLY #25310 /* ~"C'est tout ce que je voulais savoir. Au revoir."~ */ EXTERN ~DFELL~ 49
  IF ~  Global("Fell_Ravel_Warning","GLOBAL",0)
CheckStatLT(Protagonist,15,INT)
Global("Know_Dabus_Speak","GLOBAL",1)
~ THEN REPLY #25311 /* ~"C'est tout ce que je voulais savoir. Au revoir."~ */ EXTERN ~DFELL~ 50
  IF ~  Global("Fell_Ravel_Warning","GLOBAL",0)
CheckStatGT(Protagonist,14,INT)
Global("Know_Dabus_Speak","GLOBAL",1)
~ THEN REPLY #25312 /* ~"C'est tout ce que je voulais savoir. Au revoir."~ */ EXTERN ~DFELL~ 51
  IF ~  Global("Fell_Ravel_Warning","GLOBAL",1)
~ THEN REPLY #25313 /* ~"J'ai une autre question à lui poser…"~ */ GOTO 15
  IF ~  Global("Fell_Ravel_Warning","GLOBAL",1)
~ THEN REPLY #25314 /* ~"C'est tout ce que je voulais savoir. Au revoir."~ */ DO ~SetGlobal("Translate_Dabus","GLOBAL",0)
~ EXIT
END

IF ~~ THEN BEGIN 22 // from:
  SAY #23012 /* ~La voix de Grâce devient sombre, alors qu'elle lit les symboles. "Fell dit que Ravel gît dans l'un des Dédales de la Dame."~ */
  IF ~  Global("Know_Dabus_Speak","GLOBAL",0)
~ THEN REPLY #25315 /* ~"Des dédales ?"~ */ EXTERN ~DFELL~ 37
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatLT(Protagonist,15,INT)
~ THEN REPLY #25316 /* ~"Des dédales ?"~ */ EXTERN ~DFELL~ 38
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatGT(Protagonist,14,INT)
~ THEN REPLY #25317 /* ~"Des dédales ?"~ */ EXTERN ~DFELL~ 39
  IF ~  Global("Know_Dabus_Speak","GLOBAL",0)
~ THEN REPLY #25318 /* ~"Peut-il nous dire quelque chose sur elle ?"~ */ EXTERN ~DFELL~ 40
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatLT(Protagonist,15,INT)
~ THEN REPLY #25319 /* ~"Peut-il nous dire quelque chose sur elle ?"~ */ EXTERN ~DFELL~ 41
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatGT(Protagonist,14,INT)
~ THEN REPLY #25320 /* ~"Peut-il nous dire quelque chose sur elle ?"~ */ EXTERN ~DFELL~ 42
  IF ~  Global("Know_Dabus_Speak","GLOBAL",0)
Global("Fell_Ravel_Warning","GLOBAL",0)
~ THEN REPLY #25321 /* ~"J'ai une autre question à lui poser…"~ */ EXTERN ~DFELL~ 46
  IF ~  Global("Fell_Ravel_Warning","GLOBAL",0)
CheckStatLT(Protagonist,15,INT)
Global("Know_Dabus_Speak","GLOBAL",1)
~ THEN REPLY #25322 /* ~"J'ai une autre question à lui poser…"~ */ EXTERN ~DFELL~ 47
  IF ~  Global("Fell_Ravel_Warning","GLOBAL",0)
CheckStatGT(Protagonist,14,INT)
Global("Know_Dabus_Speak","GLOBAL",1)
~ THEN REPLY #25323 /* ~"J'ai une autre question à lui poser…"~ */ EXTERN ~DFELL~ 48
  IF ~  Global("Know_Dabus_Speak","GLOBAL",0)
Global("Fell_Ravel_Warning","GLOBAL",0)
~ THEN REPLY #25324 /* ~"C'est tout ce que je voulais savoir. Au revoir."~ */ EXTERN ~DFELL~ 49
  IF ~  Global("Fell_Ravel_Warning","GLOBAL",0)
CheckStatLT(Protagonist,15,INT)
Global("Know_Dabus_Speak","GLOBAL",1)
~ THEN REPLY #25325 /* ~"C'est tout ce que je voulais savoir. Au revoir."~ */ EXTERN ~DFELL~ 50
  IF ~  Global("Fell_Ravel_Warning","GLOBAL",0)
CheckStatGT(Protagonist,14,INT)
Global("Know_Dabus_Speak","GLOBAL",1)
~ THEN REPLY #25326 /* ~"C'est tout ce que je voulais savoir. Au revoir."~ */ EXTERN ~DFELL~ 51
  IF ~  Global("Fell_Ravel_Warning","GLOBAL",1)
~ THEN REPLY #25327 /* ~"J'ai une autre question à lui poser…"~ */ GOTO 15
  IF ~  Global("Fell_Ravel_Warning","GLOBAL",1)
~ THEN REPLY #25328 /* ~"C'est tout ce que je voulais savoir. Au revoir."~ */ DO ~SetGlobal("Translate_Dabus","GLOBAL",0)
~ EXIT
END

IF ~~ THEN BEGIN 23 // from:
  SAY #23013 /* ~La voix de Grâce devient sombre, alors qu'elle lit les symboles. "Fell dit que les désirs de Ravel n'étaient pas ceux de la Dame, alors elle a été punie. Ravel a été placée dans l'un des Dédales de la Dame." Grâce se tourne vers toi. "Connaissez-vous les Dédales ?"~ */
  IF ~~ THEN REPLY #25329 /* ~"Pas vraiment. Pouvez-vous m'expliquer…"~ */ GOTO 24
  IF ~  Global("Know_Dabus_Speak","GLOBAL",0)
~ THEN REPLY #25330 /* ~"Oui. Pourquoi est-ce que Ravel a été envoyée dans un dédale ?"~ */ EXTERN ~DFELL~ 40
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatLT(Protagonist,15,INT)
~ THEN REPLY #25331 /* ~"Oui. Pourquoi est-ce que Ravel a été envoyée dans un dédale ?"~ */ EXTERN ~DFELL~ 40
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatGT(Protagonist,14,INT)
~ THEN REPLY #25332 /* ~"Oui. Pourquoi est-ce que Ravel a été envoyée dans un dédale ?"~ */ EXTERN ~DFELL~ 42
  IF ~  Global("Know_Dabus_Speak","GLOBAL",0)
Global("AR0610_Visited","GLOBAL",0)
~ THEN REPLY #25333 /* ~"Je les connais. Est-ce qu'il sait comment accéder au dédale de Ravel ?"~ */ EXTERN ~DFELL~ 43
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatLT(Protagonist,15,INT)
Global("AR0610_Visited","GLOBAL",0)
~ THEN REPLY #25334 /* ~"Je les connais. Est-ce qu'il sait comment accéder au dédale de Ravel ?"~ */ EXTERN ~DFELL~ 44
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatGT(Protagonist,14,INT)
Global("AR0610_Visited","GLOBAL",0)
~ THEN REPLY #25335 /* ~"Je les connais. Est-ce qu'il sait comment accéder au dédale de Ravel ?"~ */ EXTERN ~DFELL~ 45
  IF ~  Global("Know_Dabus_Speak","GLOBAL",0)
Global("Fell_Ravel_Warning","GLOBAL",0)
~ THEN REPLY #25336 /* ~"Oui. J'ai une autre question à lui poser …"~ */ EXTERN ~DFELL~ 46
  IF ~  Global("Fell_Ravel_Warning","GLOBAL",0)
CheckStatLT(Protagonist,15,INT)
Global("Know_Dabus_Speak","GLOBAL",1)
~ THEN REPLY #25337 /* ~"Oui. J'ai une autre question à lui poser …"~ */ EXTERN ~DFELL~ 47
  IF ~  Global("Fell_Ravel_Warning","GLOBAL",0)
CheckStatGT(Protagonist,14,INT)
Global("Know_Dabus_Speak","GLOBAL",1)
~ THEN REPLY #25338 /* ~"Oui. J'ai une autre question à lui poser …"~ */ EXTERN ~DFELL~ 48
  IF ~  Global("Know_Dabus_Speak","GLOBAL",0)
Global("Fell_Ravel_Warning","GLOBAL",0)
~ THEN REPLY #25339 /* ~"Oui. C'est tout ce que je voulais savoir. Au revoir."~ */ EXTERN ~DFELL~ 49
  IF ~  Global("Fell_Ravel_Warning","GLOBAL",0)
CheckStatLT(Protagonist,15,INT)
Global("Know_Dabus_Speak","GLOBAL",1)
~ THEN REPLY #25340 /* ~"Oui. C'est tout ce que je voulais savoir. Au revoir."~ */ EXTERN ~DFELL~ 50
  IF ~  Global("Fell_Ravel_Warning","GLOBAL",0)
CheckStatGT(Protagonist,14,INT)
Global("Know_Dabus_Speak","GLOBAL",1)
~ THEN REPLY #25341 /* ~"Oui. C'est tout ce que je voulais savoir. Au revoir."~ */ EXTERN ~DFELL~ 51
  IF ~  Global("Fell_Ravel_Warning","GLOBAL",1)
~ THEN REPLY #25342 /* ~"Oui. J'ai une autre question à lui poser …"~ */ GOTO 15
  IF ~  Global("Fell_Ravel_Warning","GLOBAL",1)
~ THEN REPLY #25343 /* ~"Oui. C'est tout ce que je voulais savoir. Au revoir."~ */ DO ~SetGlobal("Translate_Dabus","GLOBAL",0)
~ EXIT
END

IF ~~ THEN BEGIN 24 // from: 23.0
  SAY #23014 /* ~Grâce joint ses mains, pouces et index se touchant, pour former un cercle approximatif. "On dit que la Dame est assez puissante pour prendre des parties de Sigil…" Tu regardes avec surprise alors qu'une représentation fantomatique du petit doigt de Grâce sort de sa main et flotte dans les airs, se courbant en forme de cercle. "… et en faire un dédale."~ */
  IF ~~ THEN REPLY #25344 /* ~"Continue…"~ */ GOTO 25
  IF ~  Global("Know_Dabus_Speak","GLOBAL",0)
~ THEN REPLY #25345 /* ~"Je comprends. Pourquoi est-ce que Ravel a été envoyée dans un dédale ?"~ */ EXTERN ~DFELL~ 40
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatLT(Protagonist,15,INT)
~ THEN REPLY #25346 /* ~"Je comprends. Pourquoi est-ce que Ravel a été envoyée dans un dédale ?"~ */ EXTERN ~DFELL~ 41
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatGT(Protagonist,14,INT)
~ THEN REPLY #25347 /* ~"Je comprends. Pourquoi est-ce que Ravel a été envoyée dans un dédale ?"~ */ EXTERN ~DFELL~ 42
  IF ~  Global("Know_Dabus_Speak","GLOBAL",0)
Global("AR0610_Visited","GLOBAL",0)
~ THEN REPLY #25348 /* ~"J'en ai assez entendu. Sait-il comment accéder au dédale de Ravel ?"~ */ EXTERN ~DFELL~ 43
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatLT(Protagonist,15,INT)
Global("AR0610_Visited","GLOBAL",0)
~ THEN REPLY #25349 /* ~"J'en ai assez entendu. Sait-il comment accéder au dédale de Ravel ?"~ */ EXTERN ~DFELL~ 44
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatGT(Protagonist,14,INT)
Global("AR0610_Visited","GLOBAL",0)
~ THEN REPLY #25350 /* ~"J'en ai assez entendu. Sait-il comment accéder au dédale de Ravel ?"~ */ EXTERN ~DFELL~ 45
  IF ~  Global("Know_Dabus_Speak","GLOBAL",0)
Global("Fell_Ravel_Warning","GLOBAL",0)
~ THEN REPLY #25351 /* ~"Je comprends. J'ai une autre question à lui poser…"~ */ EXTERN ~DFELL~ 46
  IF ~  Global("Fell_Ravel_Warning","GLOBAL",0)
CheckStatLT(Protagonist,15,INT)
Global("Know_Dabus_Speak","GLOBAL",1)
~ THEN REPLY #25352 /* ~"Je comprends. J'ai une autre question à lui poser…"~ */ EXTERN ~DFELL~ 47
  IF ~  Global("Fell_Ravel_Warning","GLOBAL",0)
CheckStatGT(Protagonist,14,INT)
Global("Know_Dabus_Speak","GLOBAL",1)
~ THEN REPLY #25353 /* ~"Je comprends. J'ai une autre question à lui poser…"~ */ EXTERN ~DFELL~ 48
  IF ~  Global("Know_Dabus_Speak","GLOBAL",0)
Global("Fell_Ravel_Warning","GLOBAL",0)
~ THEN REPLY #25354 /* ~"Je vois. C'est tout ce que je voulais savoir. Au revoir."~ */ EXTERN ~DFELL~ 49
  IF ~  Global("Fell_Ravel_Warning","GLOBAL",0)
CheckStatLT(Protagonist,15,INT)
Global("Know_Dabus_Speak","GLOBAL",1)
~ THEN REPLY #25355 /* ~"Je vois. C'est tout ce que je voulais savoir. Au revoir."~ */ EXTERN ~DFELL~ 50
  IF ~  Global("Fell_Ravel_Warning","GLOBAL",0)
CheckStatGT(Protagonist,14,INT)
Global("Know_Dabus_Speak","GLOBAL",1)
~ THEN REPLY #25356 /* ~"Je vois. C'est tout ce que je voulais savoir. Au revoir."~ */ EXTERN ~DFELL~ 51
  IF ~  Global("Fell_Ravel_Warning","GLOBAL",1)
~ THEN REPLY #25357 /* ~"Je comprends. J'ai une autre question à lui poser…"~ */ GOTO 15
  IF ~  Global("Fell_Ravel_Warning","GLOBAL",1)
~ THEN REPLY #25358 /* ~"Je vois. C'est tout ce que je voulais savoir. Au revoir."~ */ DO ~SetGlobal("Translate_Dabus","GLOBAL",0)
~ EXIT
END

IF ~~ THEN BEGIN 25 // from: 24.0
  SAY #23015 /* ~Le petit cercle fantôme flotte dans les airs, puis commence à tourner lentement. "La partie de Sigil qu'elle prend renferme un prisonnier ; il n'y a pas moyen de s'échapper du dédale. Cela peut arriver à tout moment, en marchant dans la rue, en passant une porte…" Elle frappe des mains. "… et alors vous vous retrouvez ailleurs." Soudain, tu vois un semblant de mouvement, comme une personne marchant à l'intérieur du cercle fantôme.~ */
  IF ~~ THEN REPLY #25359 /* ~"Continue…"~ */ GOTO 26
  IF ~  Global("Know_Dabus_Speak","GLOBAL",0)
~ THEN REPLY #25360 /* ~"Je comprends. Pourquoi est-ce que Ravel a été envoyée dans un dédale ?"~ */ EXTERN ~DFELL~ 40
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatLT(Protagonist,15,INT)
~ THEN REPLY #25361 /* ~"Je comprends. Pourquoi est-ce que Ravel a été envoyée dans un dédale ?"~ */ EXTERN ~DFELL~ 41
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatGT(Protagonist,14,INT)
~ THEN REPLY #25362 /* ~"Je comprends. Pourquoi est-ce que Ravel a été envoyée dans un dédale ?"~ */ EXTERN ~DFELL~ 42
  IF ~  Global("Know_Dabus_Speak","GLOBAL",0)
Global("AR0610_Visited","GLOBAL",0)
~ THEN REPLY #25363 /* ~"J'en ai assez entendu. Sait-il comment accéder au dédale de Ravel ?"~ */ EXTERN ~DFELL~ 43
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatLT(Protagonist,15,INT)
Global("AR0610_Visited","GLOBAL",0)
~ THEN REPLY #25364 /* ~"J'en ai assez entendu. Sait-il comment accéder au dédale de Ravel ?"~ */ EXTERN ~DFELL~ 44
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatGT(Protagonist,14,INT)
Global("AR0610_Visited","GLOBAL",0)
~ THEN REPLY #25365 /* ~"J'en ai assez entendu. Sait-il comment accéder au dédale de Ravel ?"~ */ EXTERN ~DFELL~ 45
  IF ~  Global("Know_Dabus_Speak","GLOBAL",0)
Global("Fell_Ravel_Warning","GLOBAL",0)
~ THEN REPLY #25366 /* ~"Je comprends. J'ai une autre question à lui poser…"~ */ EXTERN ~DFELL~ 46
  IF ~  Global("Fell_Ravel_Warning","GLOBAL",0)
CheckStatLT(Protagonist,15,INT)
Global("Know_Dabus_Speak","GLOBAL",1)
~ THEN REPLY #25367 /* ~"Je comprends. J'ai une autre question à lui poser…"~ */ EXTERN ~DFELL~ 47
  IF ~  Global("Fell_Ravel_Warning","GLOBAL",0)
CheckStatGT(Protagonist,14,INT)
Global("Know_Dabus_Speak","GLOBAL",1)
~ THEN REPLY #25368 /* ~"Je comprends. J'ai une autre question à lui poser…"~ */ EXTERN ~DFELL~ 48
  IF ~  Global("Know_Dabus_Speak","GLOBAL",0)
Global("Fell_Ravel_Warning","GLOBAL",0)
~ THEN REPLY #25369 /* ~"Je vois. C'est tout ce que je voulais savoir. Au revoir."~ */ EXTERN ~DFELL~ 49
  IF ~  Global("Fell_Ravel_Warning","GLOBAL",0)
CheckStatLT(Protagonist,15,INT)
Global("Know_Dabus_Speak","GLOBAL",1)
~ THEN REPLY #25370 /* ~"Je vois. C'est tout ce que je voulais savoir. Au revoir."~ */ EXTERN ~DFELL~ 50
  IF ~  Global("Fell_Ravel_Warning","GLOBAL",0)
CheckStatGT(Protagonist,14,INT)
Global("Know_Dabus_Speak","GLOBAL",1)
~ THEN REPLY #25371 /* ~"Je vois. C'est tout ce que je voulais savoir. Au revoir."~ */ EXTERN ~DFELL~ 51
  IF ~  Global("Fell_Ravel_Warning","GLOBAL",1)
~ THEN REPLY #25372 /* ~"Je comprends. J'ai une autre question à lui poser…"~ */ GOTO 15
  IF ~  Global("Fell_Ravel_Warning","GLOBAL",1)
~ THEN REPLY #25373 /* ~"Je vois. C'est tout ce que je voulais savoir. Au revoir."~ */ DO ~SetGlobal("Translate_Dabus","GLOBAL",0)
~ EXIT
END

IF ~~ THEN BEGIN 26 // from: 25.0
  SAY #23016 /* ~Grâce continue, le minuscule dédale fantôme se reflète dans ses yeux. "On dit qu'il y a une porte permettant de quitter chaque dédale, mais elles sont difficiles à trouver. Peut-être ont-elles été laissées là pour donner de l'espoir au prisonnier. Ou alors pour le torturer." Le dédale fantôme se dissout. "Ou encore pour les deux."~ */
  IF ~  Global("Know_Dabus_Speak","GLOBAL",0)
~ THEN REPLY #25374 /* ~"Pourquoi est-ce que Ravel a été envoyée dans un dédale ?"~ */ EXTERN ~DFELL~ 40
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatLT(Protagonist,15,INT)
~ THEN REPLY #25375 /* ~"Pourquoi est-ce que Ravel a été envoyée dans un dédale ?"~ */ EXTERN ~DFELL~ 41
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatGT(Protagonist,14,INT)
~ THEN REPLY #25376 /* ~"Pourquoi est-ce que Ravel a été envoyée dans un dédale ?"~ */ EXTERN ~DFELL~ 42
  IF ~  Global("Know_Dabus_Speak","GLOBAL",0)
Global("AR0610_Visited","GLOBAL",0)
~ THEN REPLY #25377 /* ~"Sait-il comment aller dans le dédale de Ravel ?"~ */ EXTERN ~DFELL~ 43
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatLT(Protagonist,15,INT)
Global("AR0610_Visited","GLOBAL",0)
~ THEN REPLY #25378 /* ~"Sait-il comment aller dans le dédale de Ravel ?"~ */ EXTERN ~DFELL~ 44
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatGT(Protagonist,14,INT)
Global("AR0610_Visited","GLOBAL",0)
~ THEN REPLY #25379 /* ~"Sait-il comment aller dans le dédale de Ravel ?"~ */ EXTERN ~DFELL~ 45
  IF ~  Global("Know_Dabus_Speak","GLOBAL",0)
Global("Fell_Ravel_Warning","GLOBAL",0)
~ THEN REPLY #25380 /* ~"J'ai une autre question à lui poser…"~ */ EXTERN ~DFELL~ 46
  IF ~  Global("Fell_Ravel_Warning","GLOBAL",0)
CheckStatLT(Protagonist,15,INT)
Global("Know_Dabus_Speak","GLOBAL",1)
~ THEN REPLY #25381 /* ~"J'ai une autre question à lui poser…"~ */ EXTERN ~DFELL~ 47
  IF ~  Global("Fell_Ravel_Warning","GLOBAL",0)
CheckStatGT(Protagonist,14,INT)
Global("Know_Dabus_Speak","GLOBAL",1)
~ THEN REPLY #25382 /* ~"J'ai une autre question à lui poser…"~ */ EXTERN ~DFELL~ 48
  IF ~  Global("Know_Dabus_Speak","GLOBAL",0)
Global("Fell_Ravel_Warning","GLOBAL",0)
~ THEN REPLY #25383 /* ~"Je vois. C'est tout ce que je voulais savoir. Au revoir."~ */ EXTERN ~DFELL~ 49
  IF ~  Global("Fell_Ravel_Warning","GLOBAL",0)
CheckStatLT(Protagonist,15,INT)
Global("Know_Dabus_Speak","GLOBAL",1)
~ THEN REPLY #25384 /* ~"Je vois. C'est tout ce que je voulais savoir. Au revoir."~ */ EXTERN ~DFELL~ 50
  IF ~  Global("Fell_Ravel_Warning","GLOBAL",0)
CheckStatGT(Protagonist,14,INT)
Global("Know_Dabus_Speak","GLOBAL",1)
~ THEN REPLY #25385 /* ~"Je vois. C'est tout ce que je voulais savoir. Au revoir."~ */ EXTERN ~DFELL~ 51
  IF ~  Global("Fell_Ravel_Warning","GLOBAL",1)
~ THEN REPLY #25386 /* ~"J'ai une autre question à lui poser…"~ */ GOTO 15
  IF ~  Global("Fell_Ravel_Warning","GLOBAL",1)
~ THEN REPLY #25387 /* ~"Je vois. C'est tout ce que je voulais savoir. Au revoir."~ */ DO ~SetGlobal("Translate_Dabus","GLOBAL",0)
~ EXIT
END

IF ~~ THEN BEGIN 27 // from:
  SAY #23017 /* ~Grâce étudie les symboles avec attention. "Fell dit que Ravel a essayé 'd'ouvrir la Cage'." Grâce se tourne vers toi. "La 'Cage' est un autre nom pour Sigil." Grâce fronce mentalement les sourcils. "Je ne vois pas pourquoi elle essaierait de faire une telle chose… peut-être que Ravel a essayé de briser les murs de Sigil."~ */
  IF ~  Global("Know_Dabus_Speak","GLOBAL",0)
Global("AR0610_Visited","GLOBAL",0)
~ THEN REPLY #25388 /* ~"Sait-il comment la trouver ?"~ */ EXTERN ~DFELL~ 43
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatLT(Protagonist,15,INT)
Global("AR0610_Visited","GLOBAL",0)
~ THEN REPLY #25389 /* ~"Sait-il comment la trouver ?"~ */ EXTERN ~DFELL~ 44
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatGT(Protagonist,14,INT)
Global("AR0610_Visited","GLOBAL",0)
~ THEN REPLY #25390 /* ~"Sait-il comment la trouver ?"~ */ EXTERN ~DFELL~ 45
  IF ~  Global("Know_Dabus_Speak","GLOBAL",0)
Global("Fell_Ravel_Warning","GLOBAL",0)
~ THEN REPLY #25391 /* ~"J'ai une autre question à lui poser…"~ */ EXTERN ~DFELL~ 46
  IF ~  Global("Fell_Ravel_Warning","GLOBAL",0)
CheckStatLT(Protagonist,15,INT)
Global("Know_Dabus_Speak","GLOBAL",1)
~ THEN REPLY #25392 /* ~"J'ai une autre question à lui poser…"~ */ EXTERN ~DFELL~ 47
  IF ~  Global("Fell_Ravel_Warning","GLOBAL",0)
CheckStatGT(Protagonist,14,INT)
Global("Know_Dabus_Speak","GLOBAL",1)
~ THEN REPLY #25393 /* ~"J'ai une autre question à lui poser…"~ */ EXTERN ~DFELL~ 48
  IF ~  Global("Know_Dabus_Speak","GLOBAL",0)
Global("Fell_Ravel_Warning","GLOBAL",0)
~ THEN REPLY #25394 /* ~"C'est tout ce que je voulais savoir. Au revoir."~ */ EXTERN ~DFELL~ 49
  IF ~  Global("Fell_Ravel_Warning","GLOBAL",0)
CheckStatLT(Protagonist,15,INT)
Global("Know_Dabus_Speak","GLOBAL",1)
~ THEN REPLY #25395 /* ~"C'est tout ce que je voulais savoir. Au revoir."~ */ EXTERN ~DFELL~ 50
  IF ~  Global("Fell_Ravel_Warning","GLOBAL",0)
CheckStatGT(Protagonist,14,INT)
Global("Know_Dabus_Speak","GLOBAL",1)
~ THEN REPLY #25396 /* ~"C'est tout ce que je voulais savoir. Au revoir."~ */ EXTERN ~DFELL~ 51
  IF ~  Global("Fell_Ravel_Warning","GLOBAL",1)
~ THEN REPLY #25397 /* ~"J'ai une autre question à lui poser…"~ */ GOTO 15
  IF ~  Global("Fell_Ravel_Warning","GLOBAL",1)
~ THEN REPLY #25398 /* ~"C'est tout ce que je voulais savoir. Au revoir."~ */ DO ~SetGlobal("Translate_Dabus","GLOBAL",0)
~ EXIT
END

IF ~~ THEN BEGIN 28 // from:
  SAY #23018 /* ~"Fell ne sait pas où la trouver. Il nous conseille de ne pas la chercher car…" Grâce étudie la dernière section de symboles. "Fell dit que Ravel est 'sous la garde de la Dame'."~ */
  IF ~  Global("Know_Dabus_Speak","GLOBAL",0)
~ THEN REPLY #25399 /* ~"Que sait-il d'autre sur Ravel?"~ */ EXTERN ~DFELL~ 40
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatLT(Protagonist,15,INT)
~ THEN REPLY #25400 /* ~"Que sait-il d'autre sur Ravel?"~ */ EXTERN ~DFELL~ 41
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatGT(Protagonist,14,INT)
~ THEN REPLY #25401 /* ~"Que sait-il d'autre sur Ravel?"~ */ EXTERN ~DFELL~ 42
  IF ~  Global("Know_Dabus_Speak","GLOBAL",0)
Global("Fell_Ravel_Warning","GLOBAL",0)
~ THEN REPLY #25402 /* ~"J'ai une autre question à lui poser…"~ */ EXTERN ~DFELL~ 46
  IF ~  Global("Fell_Ravel_Warning","GLOBAL",0)
CheckStatLT(Protagonist,15,INT)
Global("Know_Dabus_Speak","GLOBAL",1)
~ THEN REPLY #25403 /* ~"J'ai une autre question à lui poser…"~ */ EXTERN ~DFELL~ 47
  IF ~  Global("Fell_Ravel_Warning","GLOBAL",0)
CheckStatGT(Protagonist,14,INT)
Global("Know_Dabus_Speak","GLOBAL",1)
~ THEN REPLY #25404 /* ~"J'ai une autre question à lui poser…"~ */ EXTERN ~DFELL~ 48
  IF ~  Global("Know_Dabus_Speak","GLOBAL",0)
Global("Fell_Ravel_Warning","GLOBAL",0)
~ THEN REPLY #25405 /* ~"C'est tout ce que je voulais savoir. Au revoir."~ */ EXTERN ~DFELL~ 49
  IF ~  Global("Fell_Ravel_Warning","GLOBAL",0)
CheckStatLT(Protagonist,15,INT)
Global("Know_Dabus_Speak","GLOBAL",1)
~ THEN REPLY #25406 /* ~"C'est tout ce que je voulais savoir. Au revoir."~ */ EXTERN ~DFELL~ 50
  IF ~  Global("Fell_Ravel_Warning","GLOBAL",0)
CheckStatGT(Protagonist,14,INT)
Global("Know_Dabus_Speak","GLOBAL",1)
~ THEN REPLY #25407 /* ~"C'est tout ce que je voulais savoir. Au revoir."~ */ EXTERN ~DFELL~ 51
  IF ~  Global("Fell_Ravel_Warning","GLOBAL",1)
~ THEN REPLY #25408 /* ~"J'ai une autre question à lui poser…"~ */ GOTO 15
  IF ~  Global("Fell_Ravel_Warning","GLOBAL",1)
~ THEN REPLY #25409 /* ~"C'est tout ce que je voulais savoir. Au revoir."~ */ DO ~SetGlobal("Translate_Dabus","GLOBAL",0)
~ EXIT
END

IF ~~ THEN BEGIN 29 // from:
  SAY #23019 /* ~Grâce étudie les symboles et fronce légèrement les sourcils, soucieuse. "Fell nous conseille de ne pas rechercher Ravel. Il dit qu'elle a un cœur noir, et que si elle vit, elle cherchera à vous blesser… et nous aussi."~ */
  IF ~~ THEN REPLY #25410 /* ~"Je n'oublierai pas. J'ai une autre question à lui poser…"~ */ DO ~SetGlobal("Fell_Ravel_Warning","GLOBAL",1)
~ GOTO 15
  IF ~~ THEN REPLY #25411 /* ~"Je pense que nos chemins sont destinés à se croiser. Au revoir."~ */ DO ~SetGlobal("Fell_Ravel_Warning","GLOBAL",1)
SetGlobal("Translate_Dabus","GLOBAL",0)
~ EXIT
END

IF ~~ THEN BEGIN 30 // from:
  SAY #23020 /* ~Grâce lit les symboles alors qu'ils se matérialisent. "Fell dit que le bras est en effet à vous. Les tatouages sont son travail." Elle s'arrête pour étudier la dernière section. "Il dit qu'un des tatouages parle d'une époque où vous partagiez votre route avec quatre autres."~ */
  IF ~  Global("Know_Dabus_Speak","GLOBAL",0)
~ THEN REPLY #25412 /* ~"Quatre autres ?"~ */ EXTERN ~DFELL~ 55
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatLT(Protagonist,15,INT)
~ THEN REPLY #25413 /* ~"Quatre autres ?"~ */ EXTERN ~DFELL~ 56
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatGT(Protagonist,14,INT)
~ THEN REPLY #25414 /* ~"Quatre autres ?"~ */ JOURNAL #24274 /* ~Fell a traduit la rune de mon ancien bras… Il m'a dit qu'elle mentionnait quatre êtres qui partageaient autrefois mon destin. Les quatre étaient 'Une mal aimée qui en aime un qui n'aime pas', 'Un qui ne voit pas ce que les autres voient et qui voit ce que les autres ne voient pas', 'Un qui a le sens du devoir' et 'Un qui est esclave et dont les chaînes sont des mots'. Il m'a expliqué qu'ils étaient aussi torturés que moi et que dans ma souffrance, j'en entraînais d'autres qui souffraient aussi.~ */ EXTERN ~DFELL~ 59
  IF ~~ THEN REPLY #25415 /* ~"J'ai une autre question à lui poser…"~ */ GOTO 15
  IF ~~ THEN REPLY #25416 /* ~"C'est tout ce que je voulais savoir. Au revoir."~ */ DO ~SetGlobal("Translate_Dabus","GLOBAL",0)
~ EXIT
END

IF ~~ THEN BEGIN 31 // from:
  SAY #23021 /* ~Grâce lit les symboles qui tourbillonnent, et elle devient grave. "Les esprits des quatre sont écrits sur le tatouage… Un qui aimait d'un amour non réciproque, un qui était aveugle mais pouvait voir, un… familier, je crois, et le dernier… un esclave dont les chaînes sont ses mots…" Grâce redevient silencieuse tandis que les quatre symboles forment des liens, puis une chaîne…~ */
  IF ~  Global("Know_Dabus_Speak","GLOBAL",0)
~ THEN REPLY #25417 /* ~"Quel est ce symbole…"~ */ EXTERN ~DFELL~ 60
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatLT(Protagonist,15,INT)
~ THEN REPLY #25418 /* ~"Quel est ce symbole…"~ */ EXTERN ~DFELL~ 107
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatGT(Protagonist,14,INT)
~ THEN REPLY #25419 /* ~"Quel est ce symbole…"~ */ EXTERN ~DFELL~ 61
  IF ~  False()
~ THEN REPLY #25420 /* ~"J'ai une autre question à lui poser…"~ */ GOTO 15
  IF ~  False()
~ THEN REPLY #25421 /* ~"C'est tout ce que je voulais savoir. Au revoir."~ */ DO ~SetGlobal("Translate_Dabus","GLOBAL",0)
~ EXIT
END

IF ~~ THEN BEGIN 32 // from:
  SAY #23022 /* ~Grâce dit doucement : "Tourment." Elle l'étudie, puis se détourne, comme si cela était douloureux. "Fell dit…" Elle reprend sa respiration. "Que la chair sait qu'elle souffre, même lorsque l'esprit oublie." Elle lève les yeux et rencontre ton regard, et ses yeux ont un étrange reflet azur, plein de tristesse et de larmes. "Fell dit que la rune agit comme un aimant naturel, attirant les âmes tourmentées vers vous."~ */
  IF ~  !NearbyDialog("Dmorte")
~ THEN REPLY #25422 /* ~"J'ai une autre question à lui poser…"~ */ DO ~SetGlobal("Torment_Fell","GLOBAL",1)
~ GOTO 15
  IF ~  !NearbyDialog("Dmorte")
~ THEN REPLY #25423 /* ~"C'est tout ce que je voulais savoir. Au revoir."~ */ DO ~SetGlobal("Translate_Dabus","GLOBAL",0)
SetGlobal("Torment_Fell","GLOBAL",1)
~ EXIT
  IF ~  NearbyDialog("Dmorte")
~ THEN REPLY #52609 /* ~"J'avais une autre question à lui poser…"~ */ DO ~SetGlobal("Torment_Fell","GLOBAL",2)
~ GOTO 15
  IF ~  NearbyDialog("Dmorte")
~ THEN REPLY #52610 /* ~"C'est tout ce que je voulais savoir. Au revoir."~ */ DO ~SetGlobal("Translate_Dabus","GLOBAL",0)
SetGlobal("Torment_Fell","GLOBAL",2)
~ EXIT
END

IF ~~ THEN BEGIN 33 // from:
  SAY #23023 /* ~"Le bras a des tatouages que Fell a oubliés. Il dit qu'il peut les remettre sur vous, si vous le désirez."~ */
  IF ~~ THEN REPLY #25424 /* ~"D'accord.. j'aimerais voir tous les tatouages qu'il a."~ */ DO ~SetGlobal("Translate_Dabus","GLOBAL",0)
SetGlobal("Fell_Arm","GLOBAL",1)
StartStore("Fell",Protagonist)
~ EXIT
  IF ~~ THEN REPLY #25425 /* ~"J'ai une autre question à lui poser…"~ */ DO ~SetGlobal("Fell_Arm","GLOBAL",1)
~ GOTO 15
  IF ~~ THEN REPLY #25426 /* ~"C'est tout ce que je voulais savoir. Au revoir."~ */ DO ~SetGlobal("Fell_Arm","GLOBAL",1)
SetGlobal("Translate_Dabus","GLOBAL",0)
~ EXIT
END

IF ~~ THEN BEGIN 34 // from:
  SAY #23024 /* ~"Fell dit qu'il n'a pas dessiné ces tatouages." Grâce réfléchit pendant un instant. "Il peut peut-être vous en dire plus à leur propos, si vous le souhaitez."~ */
  IF ~  Global("Know_Dabus_Speak","GLOBAL",0)
~ THEN REPLY #25427 /* ~"Très bien. Qu'est-ce qu'il peut me dire sur eux ?"~ */ EXTERN ~DFELL~ 67
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatLT(Protagonist,15,INT)
~ THEN REPLY #25428 /* ~"Très bien. Qu'est-ce qu'il peut me dire sur eux ?"~ */ EXTERN ~DFELL~ 58
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatGT(Protagonist,14,INT)
~ THEN REPLY #25429 /* ~"Très bien. Qu'est-ce qu'il peut me dire sur eux ?"~ */ EXTERN ~DFELL~ 68
  IF ~~ THEN REPLY #25430 /* ~"J'ai une autre question à lui poser…"~ */ GOTO 15
  IF ~~ THEN REPLY #25431 /* ~"C'est tout ce que je voulais savoir. Au revoir."~ */ DO ~SetGlobal("Translate_Dabus","GLOBAL",0)
~ EXIT
END

IF ~~ THEN BEGIN 35 // from:
  SAY #23025 /* ~"Fell dit que ceux de votre dos sont des indications pour un esprit qui s'oublie, inscrits par une main agile. Le symbole de votre épaule est…" Brusquement, les symboles autour de Fell se dissolvent, à l'exception d'un seul.~ */
  IF ~~ THEN REPLY #25432 /* ~"Que signifie ce symbole ?"~ */ GOTO 46
  IF ~~ THEN REPLY #25433 /* ~"Peu importe. J'ai une autre question à lui poser…"~ */ GOTO 15
  IF ~~ THEN REPLY #25434 /* ~"Peu importe. C'est tout ce que je voulais savoir. Au revoir."~ */ DO ~SetGlobal("Translate_Dabus","GLOBAL",0)
~ EXIT
END

IF ~~ THEN BEGIN 36 // from:
  SAY #23026 /* ~Grâce fronce les sourcils. "Fell dit 'des ombres'."~ */
  IF ~  Global("Know_Dabus_Speak","GLOBAL",0)
~ THEN REPLY #25435 /* ~"Des ombres ?"~ */ EXTERN ~DFELL~ 74
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatLT(Protagonist,15,INT)
~ THEN REPLY #25436 /* ~"Des ombres ?"~ */ EXTERN ~DFELL~ 75
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatGT(Protagonist,14,INT)
~ THEN REPLY #25437 /* ~"Des ombres ?"~ */ EXTERN ~DFELL~ 76
  IF ~~ THEN REPLY #25438 /* ~"J'ai une autre question à lui poser…"~ */ GOTO 15
  IF ~~ THEN REPLY #25439 /* ~"C'est tout ce que je voulais savoir. Au revoir."~ */ DO ~SetGlobal("Translate_Dabus","GLOBAL",0)
~ EXIT
END

IF ~~ THEN BEGIN 37 // from:
  SAY #23027 /* ~Grâce fronce les sourcils. "Fell dit que de nombreuses ombres sont venues vous chercher, vous ont pris au piège et ont abandonné votre corps dans leur sillage." Elle regarde à nouveau les symboles. "Il ne sait pas pourquoi elles vous ont attaqué."~ */
  IF ~~ THEN REPLY #25440 /* ~"J'ai une autre question à lui poser…"~ */ GOTO 15
  IF ~~ THEN REPLY #25441 /* ~"C'est tout ce que je voulais savoir. Au revoir."~ */ DO ~SetGlobal("Translate_Dabus","GLOBAL",0)
~ EXIT
END

IF ~~ THEN BEGIN 38 // from:
  SAY #23028 /* ~Grâce semble hypnotisée par les cadres fins qui t'entourent, mais réussit à se détourner pour traduire les symboles. "Ceci est sa galerie." Sa voix est pleine de révérence, de respect. "Il dit que vous êtes sa toile, qu'il est à la fois plein d'admiration et de tristesse pour vous."~ */
  IF ~  Global("Know_Dabus_Speak","GLOBAL",0)
~ THEN REPLY #25442 /* ~"Triste pour moi ?"~ */ EXTERN ~DFELL~ 83
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatLT(Protagonist,15,INT)
~ THEN REPLY #25443 /* ~"Triste pour moi ?"~ */ EXTERN ~DFELL~ 84
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatGT(Protagonist,14,INT)
~ THEN REPLY #25444 /* ~"Triste pour moi ?"~ */ EXTERN ~DFELL~ 85
  IF ~~ THEN REPLY #25445 /* ~"J'ai une autre question à lui poser…"~ */ GOTO 15
  IF ~~ THEN REPLY #25446 /* ~"C'est tout ce que je voulais savoir. Au revoir."~ */ DO ~SetGlobal("Translate_Dabus","GLOBAL",0)
~ EXIT
END

IF ~~ THEN BEGIN 39 // from:
  SAY #23029 /* ~"Il dit que la marque du tourment est sur votre chair." La voix de Grâce se brise. "Que des tragédies et des pertes ont été construites dessus, comme des pierres sur une fondation. Il dit que vous avez enduré beaucoup de souffrance."~ */
  IF ~  Global("Know_Dabus_Speak","GLOBAL",0)
~ THEN REPLY #25447 /* ~"Qu'est-ce qu'il veut dire ?"~ */ EXTERN ~DFELL~ 86
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatLT(Protagonist,15,INT)
~ THEN REPLY #25448 /* ~"Qu'est-ce qu'il veut dire ?"~ */ EXTERN ~DFELL~ 87
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatGT(Protagonist,14,INT)
~ THEN REPLY #25449 /* ~"Qu'est-ce qu'il veut dire ?"~ */ EXTERN ~DFELL~ 88
  IF ~~ THEN REPLY #25450 /* ~"J'ai une autre question à lui poser…"~ */ GOTO 15
  IF ~~ THEN REPLY #25451 /* ~"C'est tout ce que je voulais savoir. Au revoir."~ */ DO ~SetGlobal("Translate_Dabus","GLOBAL",0)
~ EXIT
END

IF ~~ THEN BEGIN 40 // from:
  SAY #23030 /* ~Grâce remue légèrement la tête, presque inconsciemment, alors qu'elle continue à traduire. "Fell dit qu'il vous admire car vous ne vous êtes pas abandonné aux pertes, malgré le fait que les chaînes de la perte soient toujours accrochées à vous." Grâce se tourne vers toi. "Il admire votre force."~ */
  IF ~  Global("Know_Dabus_Speak","GLOBAL",0)
~ THEN REPLY #25452 /* ~"Demande-lui de continuer."~ */ EXTERN ~DFELL~ 89
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatLT(Protagonist,15,INT)
~ THEN REPLY #25453 /* ~"Demande-lui de continuer."~ */ EXTERN ~DFELL~ 90
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatGT(Protagonist,14,INT)
~ THEN REPLY #25454 /* ~"Demande-lui de continuer."~ */ EXTERN ~DFELL~ 91
  IF ~~ THEN REPLY #25455 /* ~"J'ai une autre question à lui poser…"~ */ GOTO 15
  IF ~~ THEN REPLY #25456 /* ~"C'est tout ce que je voulais savoir. Au revoir."~ */ DO ~SetGlobal("Translate_Dabus","GLOBAL",0)
~ EXIT
END

IF ~~ THEN BEGIN 41 // from:
  SAY #23031 /* ~"Fell dit que ces pertes que vous avez endurées couvrent cette vie et toutes vos vies antérieures." La voix de Grâce se brise, et ses yeux brillent, comme si elle était fascinée. "Il dit que vous changez de vie comme un serpent qui mue, et que vous faites l'expérience de toutes les vies possibles pour un homme."~ */
  IF ~  Global("Know_Dabus_Speak","GLOBAL",0)
~ THEN REPLY #25457 /* ~"Est-ce qu'il a dit autre chose ?"~ */ EXTERN ~DFELL~ 92
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatLT(Protagonist,15,INT)
~ THEN REPLY #25458 /* ~"Est-ce qu'il a dit autre chose ?"~ */ EXTERN ~DFELL~ 106
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatGT(Protagonist,14,INT)
~ THEN REPLY #25459 /* ~"Est-ce qu'il a dit autre chose ?"~ */ EXTERN ~DFELL~ 93
  IF ~~ THEN REPLY #25460 /* ~"J'ai une autre question à lui poser…"~ */ GOTO 15
  IF ~~ THEN REPLY #25461 /* ~"C'est tout ce que je voulais savoir. Au revoir."~ */ DO ~SetGlobal("Translate_Dabus","GLOBAL",0)
~ EXIT
END

IF ~~ THEN BEGIN 42 // from:
  SAY #23032 /* ~"Fell veut vous avertir de…" Grâce étudie la série de symboles suivante. "Il veut vous avertir que chacune de vos vies porte une ombre sur l'existence." Elle semble ruminer cela pendant un instant, puis continue. "Il dit que vous voyagerez vers un endroit où ces ombres sont devenues folles et où les regrets ont défiguré la terre."~ */
  IF ~  Global("Know_Dabus_Speak","GLOBAL",0)
~ THEN REPLY #25462 /* ~"Je… vois. Est-ce qu'il a dit autre chose ?"~ */ EXTERN ~DFELL~ 29
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatLT(Protagonist,15,INT)
~ THEN REPLY #25463 /* ~"Je… vois. Est-ce qu'il a dit autre chose ?"~ */ EXTERN ~DFELL~ 94
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatGT(Protagonist,14,INT)
~ THEN REPLY #25464 /* ~"Je… vois. Est-ce qu'il a dit autre chose ?"~ */ EXTERN ~DFELL~ 95
  IF ~~ THEN REPLY #25465 /* ~"J'ai une autre question à lui poser…"~ */ GOTO 15
  IF ~~ THEN REPLY #25466 /* ~"C'est tout ce que je voulais savoir. Au revoir."~ */ DO ~SetGlobal("Translate_Dabus","GLOBAL",0)
~ EXIT
END

IF ~~ THEN BEGIN 43 // from:
  SAY #23033 /* ~"Fell dit que vous ne devriez 'rien signer'." Grâce lève les sourcils. "Il ne dit pas pourquoi."~ */
  IF ~  Global("Know_Dabus_Speak","GLOBAL",0)
Global("Mortai_Contract","GLOBAL",0)
Global("Coppereyes_Contract","GLOBAL",0)
Global("Emoric_Contract","GLOBAL",0)
~ THEN REPLY #25467 /* ~"Très bien."~ */ EXTERN ~DFELL~ 96
  IF ~  Global("Know_Dabus_Speak","GLOBAL",0)
Global("Mortai_Contract","GLOBAL",1)
~ THEN REPLY #25468 /* ~"Très bien. Enfin… euh… j'essaierai de ne plus rien signer d'autre."~ */ EXTERN ~DFELL~ 96
  IF ~  Global("Know_Dabus_Speak","GLOBAL",0)
Global("Mortai_Contract","GLOBAL",0)
Global("Coppereyes_Contract","GLOBAL",1)
~ THEN REPLY #25469 /* ~"Très bien. Enfin… euh… j'essaierai de ne plus rien signer d'autre."~ */ EXTERN ~DFELL~ 96
  IF ~  Global("Know_Dabus_Speak","GLOBAL",0)
Global("Mortai_Contract","GLOBAL",0)
Global("Coppereyes_Contract","GLOBAL",0)
Global("Emoric_Contract","GLOBAL",1)
~ THEN REPLY #25470 /* ~"Très bien. Enfin… euh… j'essaierai de ne plus rien signer d'autre."~ */ EXTERN ~DFELL~ 96
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatLT(Protagonist,15,INT)
Global("Mortai_Contract","GLOBAL",0)
Global("Coppereyes_Contract","GLOBAL",0)
Global("Emoric_Contract","GLOBAL",0)
~ THEN REPLY #25471 /* ~"Très bien."~ */ EXTERN ~DFELL~ 97
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatLT(Protagonist,15,INT)
Global("Mortai_Contract","GLOBAL",1)
~ THEN REPLY #25472 /* ~"Très bien. Enfin… euh… j'essaierai de ne plus rien signer d'autre."~ */ EXTERN ~DFELL~ 97
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatLT(Protagonist,15,INT)
Global("Mortai_Contract","GLOBAL",0)
Global("Coppereyes_Contract","GLOBAL",1)
~ THEN REPLY #25473 /* ~"Très bien. Enfin… euh… j'essaierai de ne plus rien signer d'autre."~ */ EXTERN ~DFELL~ 97
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatLT(Protagonist,15,INT)
Global("Mortai_Contract","GLOBAL",0)
Global("Coppereyes_Contract","GLOBAL",0)
Global("Emoric_Contract","GLOBAL",1)
~ THEN REPLY #25474 /* ~"Très bien. Enfin… euh… j'essaierai de ne plus rien signer d'autre."~ */ EXTERN ~DFELL~ 97
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatGT(Protagonist,14,INT)
Global("Mortai_Contract","GLOBAL",0)
Global("Coppereyes_Contract","GLOBAL",0)
Global("Emoric_Contract","GLOBAL",0)
~ THEN REPLY #25475 /* ~"Très bien."~ */ EXTERN ~DFELL~ 98
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatGT(Protagonist,14,INT)
Global("Mortai_Contract","GLOBAL",1)
~ THEN REPLY #25476 /* ~"Très bien. Enfin… euh… j'essaierai de ne plus rien signer d'autre."~ */ EXTERN ~DFELL~ 98
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatGT(Protagonist,14,INT)
Global("Mortai_Contract","GLOBAL",0)
Global("Coppereyes_Contract","GLOBAL",1)
~ THEN REPLY #25477 /* ~"Très bien. Enfin… euh… j'essaierai de ne plus rien signer d'autre."~ */ EXTERN ~DFELL~ 98
  IF ~  Global("Mortai_Contract","GLOBAL",0)
Global("Coppereyes_Contract","GLOBAL",0)
Global("Emoric_Contract","GLOBAL",1)
~ THEN REPLY #25478 /* ~"Très bien. Enfin… euh… j'essaierai de ne plus rien signer d'autre."~ */ EXTERN ~DFELL~ 98
  IF ~~ THEN REPLY #25479 /* ~"J'ai une autre question à lui poser…"~ */ GOTO 15
  IF ~~ THEN REPLY #25480 /* ~"C'est tout ce que je voulais savoir. Au revoir."~ */ DO ~SetGlobal("Translate_Dabus","GLOBAL",0)
~ EXIT
END

IF ~~ THEN BEGIN 44 // from:
  SAY #23034 /* ~"Fell vous demande si vous vous sentez entier. Si vous vous sentez… incomplet, en quelque sorte."~ */
  IF ~  Global("Know_Dabus_Speak","GLOBAL",0)
~ THEN REPLY #25481 /* ~Vérité : "Non…. En fait, depuis que je me suis réveillé dans la Morgue, j'ai l'impression que quelque chose me manque… quelque chose à l'intérieur."~ */ DO ~IncrementGlobalOnceEx("GLOBALLawful_Fell_1","GLOBALLaw",1)
~ EXTERN ~DFELL~ 99
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatLT(Protagonist,15,INT)
~ THEN REPLY #25482 /* ~Vérité : "Non…. En fait, depuis que je me suis réveillé dans la Morgue, j'ai l'impression que quelque chose me manque… quelque chose à l'intérieur."~ */ DO ~IncrementGlobalOnceEx("GLOBALLawful_Fell_1","GLOBALLaw",1)
~ EXTERN ~DFELL~ 100
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatGT(Protagonist,14,INT)
~ THEN REPLY #25483 /* ~Vérité : "Non…. En fait, depuis que je me suis réveillé dans la Morgue, j'ai l'impression que quelque chose me manque… quelque chose à l'intérieur."~ */ DO ~IncrementGlobalOnceEx("GLOBALLawful_Fell_1","GLOBALLaw",1)
~ EXTERN ~DFELL~ 101
  IF ~~ THEN REPLY #25484 /* ~"Ça ne le regarde pas."~ */ EXTERN ~DFELL~ 102
  IF ~~ THEN REPLY #25485 /* ~Mensonge : "Je me sens entier, oui. Pourquoi ?"~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Fell_1","GLOBALLaw",-1)
~ EXTERN ~DFELL~ 102
  IF ~~ THEN REPLY #25486 /* ~"J'ai une autre question à lui poser…"~ */ GOTO 15
  IF ~~ THEN REPLY #25487 /* ~"C'est tout ce que je voulais savoir. Au revoir."~ */ DO ~SetGlobal("Translate_Dabus","GLOBAL",0)
~ EXIT
END

IF ~~ THEN BEGIN 45 // from:
  SAY #23035 /* ~"Fell dit que vous êtes un homme fort, pour avoir tant enduré." Grâce se tourne vers toi. "Les mots qui suivent sont aussi les miens : gardez la foi ; ce faisant, vous deviendrez à nouveau complet."~ */
  IF ~~ THEN REPLY #25488 /* ~"J'essaierai. J'ai une autre question à lui poser …"~ */ GOTO 15
  IF ~~ THEN REPLY #25489 /* ~"C'est tout ce que je voulais savoir. Au revoir."~ */ DO ~SetGlobal("Translate_Dabus","GLOBAL",0)
~ EXIT
END

IF ~~ THEN BEGIN 46 // from: 35.0
  SAY #23036 /* ~Grâce dit doucement : "Tourment." Elle étudie le symbole, puis se retourne, comme si le regarder était douloureux. "Fell dit…" Elle prend sa respiration. "Que la chair sait qu'elle souffre, même lorsque l'esprit l'oublie." Elle lève les yeux et rencontre ton regard, et ses yeux ont un étrange reflet azur, plein de tristesse et de larmes. "Fell dit que la rune agit comme un aimant naturel, attirant les âmes tourmentées vers vous."~ */
  IF ~  !NearbyDialog("Dmorte")
~ THEN REPLY #25490 /* ~"J'ai une autre question à lui poser…"~ */ DO ~SetGlobal("Torment_Fell","GLOBAL",1)
~ GOTO 15
  IF ~  !NearbyDialog("Dmorte")
~ THEN REPLY #25491 /* ~"C'est tout ce que je voulais savoir. Au revoir."~ */ DO ~SetGlobal("Translate_Dabus","GLOBAL",0)
SetGlobal("Torment_Fell","GLOBAL",1)
~ EXIT
  IF ~  NearbyDialog("Dmorte")
~ THEN REPLY #52611 /* ~"J'avais une autre question à lui poser…"~ */ DO ~SetGlobal("Torment_Fell","GLOBAL",2)
~ GOTO 15
  IF ~  NearbyDialog("Dmorte")
~ THEN REPLY #52612 /* ~"C'est tout ce que je voulais savoir. Au revoir."~ */ DO ~SetGlobal("Translate_Dabus","GLOBAL",0)
SetGlobal("Torment_Fell","GLOBAL",2)
~ EXIT
END

IF ~  Global("Grace","GLOBAL",0)
!GlobalGT("Fortress_Grace","GLOBAL",2)
~ THEN BEGIN 47 // from:
  SAY #28229 /* ~Devant toi se tient une superbe blonde, vêtue d'une robe bleue et pourpre, deux ailes longues et élégantes drapées autour de ses épaules. Elle examine la salle avec un sourire imperceptible… tu n'as jamais vu de femme plus belle.~ */
  IF ~~ THEN REPLY #28230 /* ~"Bonjour…"~ */ GOTO 50
  IF ~~ THEN REPLY #28231 /* ~Ignore la femme ailée, explore le bâtiment.~ */ EXIT
END

IF ~  Global("Grace","GLOBAL",1)
!InParty("Grace")
!GlobalGT("Fortress_Grace","GLOBAL",2)
~ THEN BEGIN 48 // from:
  SAY #28233 /* ~Tombée-en-Disgrâce se tourne à ton approche et sourit légèrement. "Comment puis-je vous aider ?"~ [FFG002] */
  IF ~~ THEN REPLY #28234 /* ~"Il y a d'autres questions que je voudrais vous poser…"~ */ GOTO 49
  IF ~~ THEN REPLY #28235 /* ~"Excusez-moi, je ne voulais pas vous déranger. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 49 // from: 48.0 52.4 53.0 54.1 58.2 60.2 61.2 62.1 63.3 64.2 65.1 66.2 67.2 68.1 69.1 70.0 72.1 73.1 74.0 75.1 76.1 77.0 78.5 79.4 81.1 82.3 83.1 85.1 86.1 87.2 88.2 89.1 90.4 91.3 92.2 93.0 94.4 95.3 96.3 97.3 98.4 99.5 100.5 101.5 102.4 103.4 104.2 105.1 106.1 107.2 108.1 109.3 110.3 111.2 112.2 114.1 115.1 116.0 117.4 118.5 119.4 120.5 122.4 123.3 124.3 125.2
  SAY #28236 /* ~"Oui ?"~ */
  IF ~~ THEN REPLY #28237 /* ~"Qui êtes-vous déjà ?"~ */ GOTO 52
  IF ~  CheckStatLT(Protagonist,15,CHR)
!InParty("Annah")
!NearbyDialog("DMorte")
~ THEN REPLY #28238 /* ~"Ces ailes sur votre dos… Vous êtes quoi ?"~ */ GOTO 73
  IF ~  CheckStatLT(Protagonist,15,CHR)
NearbyDialog("DAnnah")
~ THEN REPLY #28239 /* ~"Ces ailes sur votre dos… Vous êtes quoi ?"~ */ EXTERN ~DANNAH~ 163
  IF ~  CheckStatLT(Protagonist,15,CHR)
!NearbyDialog("DAnnah")
NearbyDialog("DMorte")
~ THEN REPLY #28240 /* ~"Ces ailes sur votre dos… Vous êtes quoi ?"~ */ EXTERN ~DMORTE~ 276
  IF ~  CheckStatGT(Protagonist,14,CHR)
!InParty("Annah")
!NearbyDialog("DMorte")
~ THEN REPLY #28241 /* ~"Si je peux me permettre une question, Dame Grâce, ces ailes dans votre dos… Vous n'êtes pas humaine, c'est ça ?"~ */ GOTO 73
  IF ~  CheckStatGT(Protagonist,14,CHR)
NearbyDialog("DAnnah")
~ THEN REPLY #28242 /* ~"Si je peux me permettre une question, Dame Grâce, ces ailes dans votre dos… Vous n'êtes pas humaine, c'est ça ?"~ */ EXTERN ~DANNAH~ 163
  IF ~  CheckStatGT(Protagonist,14,CHR)
!NearbyDialog("DAnnah")
NearbyDialog("DMorte")
~ THEN REPLY #28243 /* ~"Si je peux me permettre une question, Dame Grâce, ces ailes dans votre dos… Vous n'êtes pas humaine, c'est ça ?"~ */ EXTERN ~DMORTE~ 276
  IF ~~ THEN REPLY #28244 /* ~"C'est quoi, cet endroit ?"~ */ GOTO 58
  IF ~~ THEN REPLY #28245 /* ~"Je suis ici pour trouver de l'aide. Vous pouvez peut-être m'aider."~ */ GOTO 85
  IF ~  GlobalGT("Grace_Quest","GLOBAL",0)
~ THEN REPLY #28246 /* ~"Vous pouvez me parler des filles d'ici ?"~ */ GOTO 67
  IF ~  GlobalGT("Know_Grace_Sensates","GLOBAL",0)
~ THEN REPLY #28247 /* ~"Vous pouvez me parler des Sensats ?"~ */ GOTO 75
  IF ~  Global("Know_Ravel","GLOBAL",1)
Global("Ravel","GLOBAL",0)
Global("Grace_Ravel_Answer","GLOBAL",0)
~ THEN REPLY #28248 /* ~"Vous avez entendu parler d'une guenaude noire dénommée Ravel ?"~ */ GOTO 104
  IF ~  Global("Know_Ravel","GLOBAL",1)
Global("Ravel","GLOBAL",0)
Global("Grace_Ravel_Answer","GLOBAL",1)
~ THEN REPLY #28249 /* ~"Vous pouvez me répéter ce que vous savez de Ravel ?"~ */ GOTO 109
  IF ~  Global("Know_Blood_War","GLOBAL",1)
GlobalGT("Kimasxi","GLOBAL",0)
GlobalGT("Marissa","GLOBAL",0)
GlobalGT("Nenny","GLOBAL",0)
GlobalGT("SadJuli","GLOBAL",0)
GlobalGT("Vivian","GLOBAL",0)
GlobalGT("Yves","GLOBAL",0)
GlobalGT("Dolora","GLOBAL",0)
~ THEN REPLY #28250 /* ~"Que savez-vous de la Guerre Sanglante ?~ */ GOTO 94
  IF ~  Global("Grace_Quest","GLOBAL",1)
GlobalGT("Ecco","GLOBAL",0)
GlobalGT("Kesai","GLOBAL",0)
GlobalGT("Kimasxi","GLOBAL",0)
GlobalGT("Marissa","GLOBAL",0)
GlobalGT("Nenny","GLOBAL",0)
GlobalGT("SadJuli","GLOBAL",0)
GlobalGT("Vivian","GLOBAL",0)
GlobalGT("Yves","GLOBAL",0)
GlobalGT("Dolora","GLOBAL",0)
~ THEN REPLY #28251 /* ~"J'ai parlé à neuf étudiantes, comme vous me l'avez demandé… mais je n'ai pas trouvé la dixième."~ */ GOTO 120
  IF ~  NearbyDialog("DAnnah")
NearbyDialog("DMorte")
~ THEN REPLY #28252 /* ~"Qu'est-ce que vous diriez de m'accompagner dans mes voyages ?"~ */ EXTERN ~DANNAH~ 165
  IF ~  !NearbyDialog("DAnnah")
NearbyDialog("DMorte")
~ THEN REPLY #28253 /* ~"Qu'est-ce que vous diriez de m'accompagner dans mes voyages ?"~ */ EXTERN ~DMORTE~ 280
  IF ~  NearbyDialog("DAnnah")
!NearbyDialog("DMorte")
~ THEN REPLY #28254 /* ~"Qu'est-ce que vous diriez de m'accompagner dans mes voyages ?"~ */ EXTERN ~DANNAH~ 164
  IF ~  !NearbyDialog("DAnnah")
!NearbyDialog("DMorte")
~ THEN REPLY #28255 /* ~"Qu'est-ce que vous diriez de m'accompagner dans mes voyages ?"~ */ GOTO 78
  IF ~~ THEN REPLY #61965 /* ~"Pas de questions, aujourd'hui. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 50 // from: 47.0
  SAY #28256 /* ~La femme se tourne vers toi lorsque tu lui parles. Elle te jauge, puis acquiesce légèrement… tu remarques que ses yeux sont assortis au bleu de sa robe. "Bonjour, voyageur." Elle repousse de sa main une mèche de cheveux blonds. "Comment puis-je vous aider ?"~ [FFG004] */
  IF ~~ THEN REPLY #28257 /* ~"Qui êtes-vous ?"~ */ DO ~SetGlobal("Grace","GLOBAL",1)
~ JOURNAL #27467 /* ~J'ai rencontré une femme dénommée Tombée-en-Disgrâce dans le Quartier des Gratte-Papier. C'est sans conteste l'une des plus belles femmes que j'ai jamais vues… Mais elle n'est pas humaine ; elle arbore une paire d'ailes repliées sur son dos.~ */ GOTO 51
  IF ~~ THEN REPLY #28258 /* ~"Rien aujourd'hui, merci. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 51 // from: 50.0
  SAY #28259 /* ~"Je m'appelle Tombée-en-Disgrâce." Elle t'examine un moment. "C'est la première fois que vous venez à Sigil, n'est-ce pas ?"~ */
  IF ~~ THEN REPLY #28260 /* ~"Oui. Ça se voit ?"~ */ GOTO 55
  IF ~~ THEN REPLY #28261 /* ~"Non, en fait je pense que je suis ici depuis un moment."~ */ GOTO 113
  IF ~~ THEN REPLY #28262 /* ~"Tombée-en-Disgrâce… C'est un nom intéressant."~ */ GOTO 56
  IF ~~ THEN REPLY #28263 /* ~"Je n'ai pas envie d'en parler pour le moment. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 52 // from: 49.0
  SAY #28264 /* ~"Je m'appelle Tombée-en-Disgrâce." Elle sourit légèrement. "Est-ce que vous m'auriez déjà oubliée ?"~ */
  IF ~  CheckStatGT(Protagonist,14,CHR)
NearbyDialog("DAnnah")
~ THEN REPLY #28265 /* ~"Dame Grâce, je vous assure que vous n'avez pas à avoir peur que je vous oublie. Vous n'êtes *pas* quelqu'un qu'on oublie si facilement."~ */ EXTERN ~DANNAH~ 161
  IF ~  CheckStatGT(Protagonist,14,CHR)
!NearbyDialog("DAnnah")
~ THEN REPLY #28266 /* ~"Dame Grâce, je vous assure que vous n'avez pas à avoir peur que je vous oublie. Vous n'êtes *pas* quelqu'un qu'on oublie si facilement."~ */ GOTO 54
  IF ~~ THEN REPLY #28267 /* ~"Non, pas du tout."~ */ GOTO 54
  IF ~~ THEN REPLY #28268 /* ~"Tombée-en-Disgrâce… C'est un nom intéressant."~ */ GOTO 114
  IF ~~ THEN REPLY #28269 /* ~"Non, je ne vous ai pas oubliée. Je peux vous poser d'autres questions ?"~ */ GOTO 49
  IF ~~ THEN REPLY #28270 /* ~"Peut-être bien. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 53 // from:
  SAY #28271 /* ~Tombée-en-Disgrâce s'assombrit en vous regardant tour à tour, le spectacle et toi. "Je ne voulais pas vous blesser. Excusez ma taquinerie."~ */
  IF ~~ THEN REPLY #28272 /* ~"Il n'y a pas de mal, chère Dame, vous n'avez pas à vous excuser. Je peux vous poser d'autres questions ?"~ */ GOTO 49
  IF ~~ THEN REPLY #28273 /* ~"Je crois quand même qu'on ferait mieux de se quitter. Au revoir, Dame Grâce."~ */ EXIT
END

IF ~~ THEN BEGIN 54 // from: 52.1 52.2
  SAY #28274 /* ~Elle esquisse un léger sourire, puis se détend. "Très bien, je vous pardonne dans ces conditions."~ */
  IF ~~ THEN REPLY #28275 /* ~"Tombée-en-Disgrâce… C'est un nom intéressant."~ */ GOTO 56
  IF ~~ THEN REPLY #28276 /* ~"Je peux vous poser d'autres questions ?"~ */ GOTO 49
  IF ~~ THEN REPLY #28277 /* ~"Je dois m'en aller. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 55 // from: 51.0
  SAY #28278 /* ~Elle sourit légèrement. "Pas autant que vous le pensez. Vous vous comportez assez bien."~ */
  IF ~~ THEN REPLY #28279 /* ~"C'est quoi, cet endroit ?"~ */ GOTO 57
  IF ~~ THEN REPLY #28280 /* ~"Je dois m'en aller. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 56 // from: 51.2 54.0
  SAY #28281 /* ~Elle acquiesce. "Je suis contente que ça vous plaise. Mais je suis sûre que vous n'avez pas fait tout ce chemin pour venir me flatter. En quoi puis-je vous être utile ?"~ */
  IF ~~ THEN REPLY #28282 /* ~"Qu'est-ce que c'est que cet endroit ?"~ */ GOTO 57
  IF ~~ THEN REPLY #28283 /* ~"Rien aujourd'hui. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 57 // from: 55.0 56.0 113.0
  SAY #28284 /* ~"C'est la *Maison de tolérance des Plaisirs Intellectuels*." Elle t'examine un instant. "Je vois à votre question que vous n'avez pas l'intention d'essayer cet établissement ?"~ */
  IF ~  NearbyDialog("DMorte")
~ THEN REPLY #28285 /* ~"La 'Maison de tolérance des Plaisirs Intellectuels' ? C'est quoi comme type de maison de tolérance ?"~ */ GOTO 59
  IF ~  !NearbyDialog("DMorte")
~ THEN REPLY #28286 /* ~"La 'Maison de tolérance des Plaisirs Intellectuels' ? C'est quoi comme type de maison de tolérance ?"~ */ GOTO 61
  IF ~~ THEN REPLY #28287 /* ~"Non, je ne crois pas. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 58 // from: 49.7
  SAY #28288 /* ~"C'est la Maison de tolérance des Plaisirs Intellectuels."~ */
  IF ~  NearbyDialog("DMorte")
~ THEN REPLY #28289 /* ~"La 'Maison de tolérance des Plaisirs Intellectuels' ? C'est quoi comme type de maison de tolérance ?"~ */ GOTO 59
  IF ~  !NearbyDialog("DMorte")
~ THEN REPLY #28290 /* ~"La 'Maison de tolérance des Plaisirs Intellectuels' ? C'est quoi comme type de maison de tolérance ?"~ */ GOTO 61
  IF ~~ THEN REPLY #28292 /* ~"Oh. Je vois. Je peux vous poser d'autres questions ?"~ */ GOTO 49
  IF ~~ THEN REPLY #28293 /* ~"Simple curiosité. Merci du renseignement. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 59 // from: 57.0 58.0
  SAY #28294 /* ~"J'ai créé cette maison de tolérance pour donner à ces fièvres libidineuses qui frappent l'esprit des moyens d'expression autres que la chair pure et simple. On peut prendre beaucoup de plaisir à converser et à manier l'art de la parole avec les autres."~ */
  IF ~~ THEN EXTERN ~DMORTE~ 275
END

IF ~~ THEN BEGIN 60 // from:
  SAY #28295 /* ~"Je vous assure, pas du tout. Visitez la maison de tolérance, vous le constaterez par vous-même."~ */
  IF ~~ THEN REPLY #28296 /* ~"Alors, c'est une maison de tolérance… où il n'y a pas de rapports sexuels ?"~ */ GOTO 62
  IF ~~ THEN REPLY #28297 /* ~"J'ai une question à vous poser : pourquoi avez-vous créé un endroit pareil ?"~ */ DO ~SetGlobal("Grace_Brothel_Answer","GLOBAL",1)
~ GOTO 63
  IF ~~ THEN REPLY #28298 /* ~"Peut-être. Je peux vous poser d'autres questions, d'abord ?"~ */ GOTO 49
  IF ~~ THEN REPLY #28299 /* ~"Très bien. C'est ce qu'on va faire. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 61 // from: 57.1 58.1
  SAY #28300 /* ~"J'ai créé cette maison de tolérance pour donner à ces fièvres libidineuses qui frappent l'esprit des moyens d'expression autres que la chair pure et simple. On peut prendre beaucoup de plaisir à converser et à manier l'art de la parole avec les autres."~ */
  IF ~~ THEN REPLY #28301 /* ~"Alors, c'est une maison de tolérance… où il n'y a pas de rapports sexuels ?"~ */ GOTO 62
  IF ~~ THEN REPLY #28302 /* ~"J'ai une question à vous poser : pourquoi avez-vous créé un endroit pareil ?"~ */ DO ~SetGlobal("Grace_Brothel_Answer","GLOBAL",1)
~ GOTO 63
  IF ~~ THEN REPLY #28303 /* ~"Je vois. Je peux vous poser d'autres questions ?"~ */ GOTO 49
  IF ~~ THEN REPLY #28304 /* ~"Merci pour l'explication… Je dois m'en aller. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 62 // from: 60.0 61.0
  SAY #28305 /* ~"De nature psychologique uniquement. Soyez rassuré, cela reste malgré tout assez stimulant."~ */
  IF ~~ THEN REPLY #28306 /* ~"J'ai une question à vous poser : pourquoi avez-vous créé un endroit pareil ?"~ */ DO ~SetGlobal("Grace_Brothel_Answer","GLOBAL",1)
~ GOTO 63
  IF ~~ THEN REPLY #28307 /* ~"Je peux vous poser d'autres questions ?"~ */ GOTO 49
  IF ~~ THEN REPLY #28308 /* ~"J'irai peut-être faire une petit tour à la maison de tolérance, alors. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 63 // from: 60.1 61.1 62.0
  SAY #28309 /* ~Tombée-en-Disgrâce hausse un sourcil. "C'est une question bizarre." Elle fronce les sourcils. "Je ne pense pas que l'on m'ait déjà posé cette question. Directement, du moins."~ */
  IF ~  CheckStatGT(Protagonist,14,CHR)
~ THEN REPLY #28310 /* ~"Pardon, Dame Grâce. Je ne voulais pas être aussi direct. J'étais simplement curieux."~ */ GOTO 64
  IF ~~ THEN REPLY #28311 /* ~"Alors… pourquoi ?"~ */ DO ~SetGlobal("Know_Grace_Sensates","GLOBAL",1)
~ GOTO 65
  IF ~  Global("Know_Grace_Succubus","GLOBAL",1)
~ THEN REPLY #28312 /* ~"Eh bien, c'est bizarre qu'une succube ait créé un endroit de ce genre… Sa fonction me semble aller à l'encontre de votre nature."~ */ DO ~SetGlobal("Know_Grace_Sensates","GLOBAL",1)
~ GOTO 65
  IF ~~ THEN REPLY #28313 /* ~"Je peux vous poser d'autres questions ?"~ */ GOTO 49
  IF ~~ THEN REPLY #28314 /* ~"J'irai peut-être faire une petit tour à la maison de tolérance, alors. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 64 // from: 63.0
  SAY #28315 /* ~"Oh, inutile de vous excuser. Je serai très contente de discuter des raisons de la création de cette maison avec vous, si c'est ce que vous voulez."~ */
  IF ~~ THEN REPLY #28316 /* ~"Oui, je voudrais les entendre."~ */ DO ~SetGlobal("Know_Grace_Sensates","GLOBAL",1)
~ GOTO 65
  IF ~  Global("Know_Grace_Succubus","GLOBAL",1)
~ THEN REPLY #28317 /* ~"C'est bizarre qu'une succube ait créé un endroit de ce genre… Sa fonction me semble aller à l'encontre de votre nature."~ */ DO ~SetGlobal("Know_Grace_Sensates","GLOBAL",1)
~ GOTO 65
  IF ~~ THEN REPLY #28318 /* ~"Pas pour le moment. Je peux vous poser d'autres questions ?"~ */ GOTO 49
  IF ~~ THEN REPLY #28319 /* ~"Peut-être une autre fois. Je dois m'en aller. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 65 // from: 63.1 63.2 64.0 64.1
  SAY #28320 /* ~"Pour répondre à votre question, vous devez savoir que je suis membre de la Société des Sensations. Notre faction pense qu'il faut avoir le plus d'expériences possible du multivers."~ */
  IF ~~ THEN REPLY #28321 /* ~"Et c'est pour ça que vous avez créé cet endroit ?"~ */ GOTO 66
  IF ~~ THEN REPLY #28322 /* ~"Je vois, inutile d'en dire plus. Je peux vous poser d'autres questions ?"~ */ GOTO 49
  IF ~~ THEN REPLY #28323 /* ~"J'irai peut-être faire une petit tour à la maison de tolérance, alors. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 66 // from: 65.0
  SAY #28324 /* ~"Cette maison a pour objectif de démolir les désirs des plus endurcis des intellectuels. Elle est conçue pour stimuler l'esprit, accroître la conscience de soi-même et des autres, créer de nouvelles façons de *faire l'expérience* d'une autre personne. C'est pour ceux qui désirent autre chose que les plaisirs physiques superficiels qui regorgent dans les quartiers de la Ruche et le Bas Quartier."~ */
  IF ~  GlobalGT("Banged_Harlot","GLOBAL",0)
~ THEN REPLY #28325 /* ~"Eh bien, je ne les appellerais pas… euh, je veux dire, je peux comprendre ça. Les femmes ici doivent être spéciales."~ */ GOTO 67
  IF ~  Global("Banged_Harlot","GLOBAL",0)
~ THEN REPLY #28326 /* ~"Je vois. Alors cet établissement encourage les échanges intellectuels plutôt que les *autres* types d'échanges. En effet, les femmes doivent être spéciales ici."~ */ GOTO 67
  IF ~~ THEN REPLY #28327 /* ~"Je peux vous poser d'autres questions ?"~ */ GOTO 49
  IF ~~ THEN REPLY #28328 /* ~"J'irai peut-être faire une petit tour à la maison de tolérance, alors. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 67 // from: 49.9 66.0 66.1
  SAY #28329 /* ~"Les femmes ici aspirent à devenir des Sensats. Elles sont venues me voir en quête d'un enseignement, pour se préparer à entrer dans cette faction. La plupart d'entre elles ont aussi une compréhension naturelle de la langue qui peut briser la carapace des individus les plus endurcis."~ */
  IF ~~ THEN REPLY #28330 /* ~"Des Sensats ?"~ */ DO ~SetGlobal("Know_Grace_Sensates","GLOBAL",1)
~ GOTO 68
  IF ~~ THEN REPLY #28332 /* ~"Je vois. Alors, les dames sont ici en stage, si on peut appeler ça comme ça ?"~ */ GOTO 70
  IF ~~ THEN REPLY #28333 /* ~"Je peux vous poser d'autres questions ?"~ */ GOTO 49
  IF ~~ THEN REPLY #28334 /* ~"J'irai peut-être faire une petit tour à la maison de tolérance, alors. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 68 // from: 67.0
  SAY #28335 /* ~Elle s'incline légèrement. "Oui, je suis un membre de la Société des Sensations. Notre faction croit que chacun devrait avoir l'expérience la plus vaste possible du multivers."~ */
  IF ~~ THEN REPLY #28336 /* ~"Et les filles sont ici en apprentissage pour devenir des Sensats ?"~ */ GOTO 70
  IF ~~ THEN REPLY #28337 /* ~"Je vois, inutile d'en dire plus. Je peux vous poser d'autres questions ?"~ */ GOTO 49
  IF ~~ THEN REPLY #28338 /* ~"J'irai peut-être faire une petit tour à la maison de tolérance, alors. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 69 // from:
  SAY #28339 /* ~"Toutes ne le ferons pas, vraisemblablement. Mais nous les encourageons à essayer et je ne leur refuserai pas l'occasion de joindre notre faction si tel est leur souhait. Elles pourraient apprendre beaucoup par la même occasion."~ */
  IF ~~ THEN REPLY #28340 /* ~"Je vois. Alors, c'est une école préparatoire, en quelque sorte ?"~ */ GOTO 70
  IF ~~ THEN REPLY #28341 /* ~"Je peux vous poser d'autres questions ?"~ */ GOTO 49
  IF ~~ THEN REPLY #28342 /* ~"J'irai peut-être faire un tour à la maison de tolérance pour en juger par moi-même. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 70 // from: 67.1 68.0 69.0
  SAY #28343 /* ~"Oui. J'espère qu'en apprenant l'art du langage et ses subtilités, les clients et les étudiantes venus ici pourront en savoir davantage sur eux-mêmes. Seule la maîtrise du langage nous limite. L'emploi du langage pour évoquer des émotions relève d'une grande compétence."~ */
  IF ~~ THEN REPLY #28344 /* ~"Je vois. Je peux vous poser d'autres questions ?"~ */ GOTO 49
  IF ~~ THEN REPLY #28345 /* ~"J'irai peut-être faire un tour à la maison de tolérance pour en juger par moi-même. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 71 // from:
  SAY #28346 /* ~[no text]~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 72 // from:
  SAY #28347 /* ~"Votre compagnon a raison. Je suis une tanar'ri mineure, plus précisément, une succube." Elle soupire légèrement. "J'ai bien peur que nous ne soyons un peu trop communs dans les plans Inférieurs et ailleurs pour notre bien. La plupart des membres de ma race passent leur temps à séduire les mortels avec divers plaisirs de la chair."~ */
  IF ~~ THEN REPLY #28348 /* ~"Et vous… ?"~ */ DO ~SetGlobal("Know_Grace_Succubus","GLOBAL",1)
~ JOURNAL #27466 /* ~Tombée-en-Disgrâce m'a dit qu'elle était une succube, une 'tanar'ri mineure', l'un des fiélons qui errent dans les Plans Inférieurs. Apparemment, sa race recherche des mortels et les séduit, emportant leurs âmes dans les Abysses. Charmant.~ */ GOTO 74
  IF ~~ THEN REPLY #28349 /* ~"Je vois. Je peux vous poser d'autres questions ?"~ */ DO ~SetGlobal("Know_Grace_Succubus","GLOBAL",1)
~ JOURNAL #27466 /* ~Tombée-en-Disgrâce m'a dit qu'elle était une succube, une 'tanar'ri mineure', l'un des fiélons qui errent dans les Plans Inférieurs. Apparemment, sa race recherche des mortels et les séduit, emportant leurs âmes dans les Abysses. Charmant.~ */ GOTO 49
  IF ~~ THEN REPLY #28350 /* ~"Je dois m'en aller. Au revoir."~ */ DO ~SetGlobal("Know_Grace_Succubus","GLOBAL",1)
~ JOURNAL #27466 /* ~Tombée-en-Disgrâce m'a dit qu'elle était une succube, une 'tanar'ri mineure', l'un des fiélons qui errent dans les Plans Inférieurs. Apparemment, sa race recherche des mortels et les séduit, emportant leurs âmes dans les Abysses. Charmant.~ */ EXIT
END

IF ~~ THEN BEGIN 73 // from: 49.1 49.4
  SAY #26918 /* ~Je suis une tanar'ri mineure, plus précisément, une succube." Elle soupire légèrement. "J'ai bien peur que nous ne soyons un peu trop communs dans les plans Inférieurs et ailleurs pour notre bien. La plupart des membres de ma race passent leur temps à séduire les mortels avec divers plaisirs de la chair.~ */
  IF ~~ THEN REPLY #26919 /* ~"Et vous… ?"~ */ DO ~SetGlobal("Know_Grace_Succubus","GLOBAL",1)
~ JOURNAL #27465 /* ~Tombée-en-Disgrâce m'a dit qu'elle était une succube, une 'tanar'ri mineure', l'un des fiélons qui errent dans les Plans Inférieurs. Apparemment, sa race recherche des mortels et les séduit, emportant leurs âmes dans les Abysses. Charmant.~ */ GOTO 74
  IF ~~ THEN REPLY #26920 /* ~"Je vois. Je peux vous poser d'autres questions ?"~ */ DO ~SetGlobal("Know_Grace_Succubus","GLOBAL",1)
~ JOURNAL #27465 /* ~Tombée-en-Disgrâce m'a dit qu'elle était une succube, une 'tanar'ri mineure', l'un des fiélons qui errent dans les Plans Inférieurs. Apparemment, sa race recherche des mortels et les séduit, emportant leurs âmes dans les Abysses. Charmant.~ */ GOTO 49
  IF ~~ THEN REPLY #26921 /* ~"Je dois m'en aller. Au revoir."~ */ DO ~SetGlobal("Know_Grace_Succubus","GLOBAL",1)
~ JOURNAL #27465 /* ~Tombée-en-Disgrâce m'a dit qu'elle était une succube, une 'tanar'ri mineure', l'un des fiélons qui errent dans les Plans Inférieurs. Apparemment, sa race recherche des mortels et les séduit, emportant leurs âmes dans les Abysses. Charmant.~ */ EXIT
END

IF ~~ THEN BEGIN 74 // from: 72.0 73.0
  SAY #26922 /* ~"J'aime à penser que j'ai pris mes distances par rapport à ça… c'est une façon frivole et non-productive en fin de compte de passer son temps dans le multivers. La vie est beaucoup plus riche que ça, n'est-ce pas ?"~ */
  IF ~~ THEN REPLY #26923 /* ~"Peut-être bien. Je peux vous poser d'autres questions ?"~ */ GOTO 49
  IF ~~ THEN REPLY #28351 /* ~"Oui. Je dois m'en aller. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 75 // from: 49.10
  SAY #28352 /* ~"Les Sensats sont la faction de Sigil qui consacrent leur vie à l'expérience. Sans expérience, sans sensation, nous sommes aveugles à tout le multivers ou presque. Ainsi, les Sensats cherchent à vivre autant d'expériences qu'ils le peuvent - lorsque toutes les expériences auront été vécues, la vérité du multivers verra le jour."~ */
  IF ~  !Global("Join_Sensates","GLOBAL",1)
~ THEN REPLY #28353 /* ~"C'est une philosophie intéressante. Est-ce que je pourrais faire partie des Sensats ?"~ */ GOTO 76
  IF ~~ THEN REPLY #28354 /* ~"Je vois. Je peux vous poser d'autres questions ?"~ */ GOTO 49
  IF ~~ THEN REPLY #28355 /* ~"Peut-être. Quoi qu'il en soit, je dois m'en aller. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 76 // from: 75.0
  SAY #28356 /* ~Elle sourit. "Pour devenir membre de la faction des Sensats, il suffit d'être un étudiant de la vie."~ */
  IF ~~ THEN REPLY #28357 /* ~"Je voulais dire que ça m'intéresserait de devenir membre de leur faction."~ */ JOURNAL #27464 /* ~Tombée-en-Disgrâce m'a suggéré d'essayer la Salle des Fêtes pour devenir membre de la Société des Sensations. Elle m'a dit que j'y trouverais peut-être quelqu'un qui pourrait m'aider.~ */ GOTO 77
  IF ~~ THEN REPLY #28358 /* ~"Je vois. Je peux vous poser d'autres questions ?"~ */ GOTO 49
  IF ~~ THEN REPLY #28359 /* ~"Très bien. Je dois m'en aller. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 77 // from: 76.0
  SAY #28360 /* ~"Bien sûr… excusez ma taquinerie." Grâce acquiesce. "Si vous voulez devenir un Sensat, je me renseignerai à la Salle des Fêtes. Quelqu'un devrait pouvoir vous y aider."~ */
  IF ~~ THEN REPLY #28361 /* ~"Je vois. Je peux vous poser d'autres questions ?"~ */ GOTO 49
  IF ~~ THEN REPLY #28362 /* ~"Merci. Je vais y aller, alors. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 78 // from: 49.18
  SAY #28363 /* ~"Et bien…" Elle sourit légèrement. "C'est assez hardi de votre part."~ */
  IF ~  CheckStatGT(Protagonist,14,CHR)
!NearbyDialog("DMorte")
~ THEN REPLY #28364 /* ~"Autant être honnête quant à mes intentions. Vous avez l'air très agréable et vous semblez bien connaître les plans. Une amie dotée de ces connaissances serait la bienvenue."~ */ GOTO 79
  IF ~  CheckStatGT(Protagonist,14,CHR)
NearbyDialog("DMorte")
~ THEN REPLY #28365 /* ~"Autant être honnête quant à mes intentions. Vous avez l'air très agréable et vous semblez bien connaître les plans. Une amie dotée de ces connaissances serait la bienvenue."~ */ EXTERN ~DMORTE~ 278
  IF ~~ THEN REPLY #28366 /* ~"Je suis comme ça."~ */ GOTO 79
  IF ~~ THEN REPLY #28367 /* ~"Je veux dire, qu'est-ce qu'il y a d'intéressant ici ?"~ */ GOTO 83
  IF ~  Global("Know_Grace_Sensates","GLOBAL",1)
~ THEN REPLY #28368 /* ~"Vous êtes une Sensat. Il y a certainement une limite à ce que vous pouvez apprendre ici."~ */ GOTO 83
  IF ~~ THEN REPLY #28369 /* ~"Alors, je retire ce que je vous ai demandé. Je peux vous poser d'autres questions à la place ?"~ */ GOTO 49
  IF ~~ THEN REPLY #28370 /* ~"Alors, excusez-moi. Je dois m'en aller. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 79 // from: 78.0 78.2 117.1 118.0 118.2 119.1
  SAY #28371 /* ~"J'apprécie votre franchise. Je vais en faire de même : pourquoi devrais-je voyager avec vous ?"~ */
  IF ~  GlobalGT("Grace_Companion","GLOBAL",0)
~ THEN REPLY #28372 /* ~"Vous voulez dire que ça ne vous intéresse pas de voyager avec un amnésique immortel à la recherche de lui-même dans les plans ?"~ */ GOTO 80
  IF ~  CheckStatGT(Protagonist,14,CHR)
~ THEN REPLY #28373 /* ~"Dame Grâce, j'ai l'intention de voyager dans des endroits où d'autres ne sont peut-être jamais allés… ou qu'ils n'ont jamais atteint. Ça vous intéresse ?"~ */ GOTO 82
  IF ~~ THEN REPLY #28374 /* ~"En quoi cet endroit est-il intéressant ?"~ */ GOTO 83
  IF ~  Global("Know_Grace_Sensates","GLOBAL",1)
~ THEN REPLY #28375 /* ~"Vous êtes une Sensat. Il y a certainement une limite à ce que vous pouvez apprendre ici."~ */ GOTO 83
  IF ~~ THEN REPLY #28376 /* ~"Je retire ce que je vous ai demandé. Je peux vous poser d'autres questions à la place ?"~ */ GOTO 49
  IF ~~ THEN REPLY #28377 /* ~"Je retire ce que je vous ai dit. Je dois m'en aller. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 80 // from: 79.0 82.0 83.0
  SAY #28378 /* ~"Oh, je serais *extrêmement* intéressée." Elle sourit légèrement. "Cette suggestion est bien intrigante, c'est sûr."~ */
  IF ~~ THEN REPLY #28379 /* ~"Alors, ça vous *plairait* de voyager avec moi ?"~ */ GOTO 81
END

IF ~~ THEN BEGIN 81 // from: 80.0
  SAY #28380 /* ~"Si vous voulez que je vous accompagne, vous devez faire quelque chose pour moi. Il y a dix étudiantes dans cet établissement. J'aimerais que vous leur parliez et que vous me rapportiez leurs pensées. Nous verrons alors si nous voyagerons ou non ensemble."~ */
  IF ~  Global("Grace_Quest","GLOBAL",1)
GlobalGT("Ecco","GLOBAL",0)
GlobalGT("Kesai","GLOBAL",0)
GlobalGT("Kimasxi","GLOBAL",0)
GlobalGT("Marissa","GLOBAL",0)
GlobalGT("Nenny","GLOBAL",0)
GlobalGT("SadJuli","GLOBAL",0)
GlobalGT("Vivian","GLOBAL",0)
GlobalGT("Yves","GLOBAL",0)
GlobalGT("Dolora","GLOBAL",0)
~ THEN REPLY #28381 /* ~"Je leur ai déjà parlé… mais il n'y a que neuf étudiantes ici. Je n'ai pas trouvé la dixième."~ */ JOURNAL #27463 /* ~J'ai convaincu Tombée-en-Disgrâce de m'accompagner à une condition : je dois parler aux dix étudiantes de la Maison de tolérance et lui rapporter mes impressions. J'ai déjà parlé à neuf d'entre elles, mais la dixième m'évite.~ */ GOTO 120
  IF ~~ THEN REPLY #28382 /* ~"Très bien. Je peux vous poser d'autres questions avant de partir ?"~ */ DO ~SetGlobal("Grace_Quest","GLOBAL",1)
~ JOURNAL #27462 /* ~J'ai convaincu Tombée-en-Disgrâce de m'accompagner à une condition : je dois parler aux dix étudiantes de la Maison de tolérance et lui rapporter mes impressions.~ */ GOTO 49
  IF ~~ THEN REPLY #28383 /* ~"Je vais aller leur parler alors. Je reviendrai quand je leur aurai parlé à toutes."~ */ DO ~SetGlobal("Grace_Quest","GLOBAL",1)
~ JOURNAL #27462 /* ~J'ai convaincu Tombée-en-Disgrâce de m'accompagner à une condition : je dois parler aux dix étudiantes de la Maison de tolérance et lui rapporter mes impressions.~ */ EXIT
END

IF ~~ THEN BEGIN 82 // from: 79.1
  SAY #28384 /* ~"Oui, bien sûr." Elle pose son menton dans sa main et réfléchit un moment. "Pourtant…"~ */
  IF ~  GlobalGT("Grace_Companion","GLOBAL",0)
~ THEN REPLY #28385 /* ~"Vous voulez dire que ça ne vous intéresse pas de voyager avec un amnésique immortel à la recherche de lui-même dans les plans ?"~ */ GOTO 80
  IF ~~ THEN REPLY #28386 /* ~"En quoi cet endroit est-il intéressant ?"~ */ GOTO 83
  IF ~  Global("Know_Grace_Sensates","GLOBAL",1)
~ THEN REPLY #28387 /* ~"Vous êtes une Sensat. Il y a certainement une limite à ce que vous pouvez apprendre ici."~ */ GOTO 83
  IF ~~ THEN REPLY #28388 /* ~"Peu importe. Je peux vous poser d'autres questions à la place ?"~ */ GOTO 49
  IF ~~ THEN REPLY #28389 /* ~"Réfléchissez-y, je reviendrai plus tard. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 83 // from: 78.3 78.4 79.2 79.3 82.1 82.2 117.2 117.3 118.3 118.4 119.2 119.3
  SAY #28390 /* ~"Je pense que vous seriez surpris. Si vous voulez que je vous accompagne dans vos voyages, vous devez me donner une raison beaucoup plus convaincante que ça."~ */
  IF ~  GlobalGT("Grace_Companion","GLOBAL",0)
~ THEN REPLY #28391 /* ~"Vous voulez dire que ça ne vous intéresse pas de voyager avec un amnésique immortel à la recherche de lui-même dans les plans ?"~ */ GOTO 80
  IF ~~ THEN REPLY #28392 /* ~"Peu importe. Je peux vous poser d'autres questions à la place ?"~ */ GOTO 49
  IF ~~ THEN REPLY #28393 /* ~"Eh bien, je vais voir si je peux trouver une meilleure raison. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 84 // from:
  SAY #28394 /* ~[no text]~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 85 // from: 49.8
  SAY #28395 /* ~"De l'aide ? Quelle sorte d'aide recherchez-vous ?"~ */
  IF ~~ THEN REPLY #28396 /* ~"Apparemment, j'ai perdu la mémoire… et ce faisant, et je me suis perdu moi-même."~ */ GOTO 86
  IF ~~ THEN REPLY #28397 /* ~"Peu importe. Je peux vous poser d'autres questions ?"~ */ GOTO 49
  IF ~~ THEN REPLY #28398 /* ~"Nous en reparlerons peut-être une autre fois. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 86 // from: 85.0
  SAY #28399 /* ~"Vous avez été frappé d'amnésie ?" Tombée-en-Disgrâce a l'air attristée. "C'est terrible ! Savez-vous comment c'est arrivé ?"~ */
  IF ~~ THEN REPLY #28400 /* ~"Pas vraiment… du moins, pas que je me souvienne. À mon réveil, j'étais sur une dalle de la Morgue et avant ça, je ne me souviens de rien."~ */ GOTO 87
  IF ~~ THEN REPLY #28401 /* ~"Peu importe. Je peux vous poser d'autres questions ?"~ */ GOTO 49
  IF ~~ THEN REPLY #28402 /* ~"Nous en reparlerons peut-être une autre fois. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 87 // from: 86.0
  SAY #28403 /* ~"Vous vous êtes réveillé dans la Morgue ?"~ */
  IF ~  Global("Grace_Companion","GLOBAL",0)
~ THEN REPLY #28404 /* ~"Je crois que les Hommes-Poussière ont pensé que je ne vivais plus… ou quelque chose comme ça. Tout ce que je sais, c'est que mes blessures ont rapidement guéri. Je fais peut-être partie des immortels, mais je n'en ai aucune certitude."~ */ DO ~SetGlobal("Grace_Companion","GLOBAL",1)
~ GOTO 88
  IF ~  GlobalGT("Grace_Companion","GLOBAL",0)
~ THEN REPLY #28405 /* ~"Je crois que les Hommes-Poussière ont pensé que je ne vivais plus… ou quelque chose comme ça. Tout ce que je sais, c'est que mes blessures ont rapidement guéri. Je fais peut-être partie des immortels, mais je n'en ai aucune certitude."~ */ GOTO 88
  IF ~~ THEN REPLY #28406 /* ~"Peu importe. Je peux vous poser d'autres questions ?"~ */ GOTO 49
  IF ~~ THEN REPLY #28407 /* ~"Nous en reparlerons peut-être une autre fois. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 88 // from: 87.0 87.1
  SAY #28408 /* ~Tombée-en-Disgrâce semble t'évaluer avec un intérêt renouvelé. "Ces cicatrices sur votre corps." Elle tend la main, comme pour te toucher. "Je peux ?"~ */
  IF ~~ THEN REPLY #28409 /* ~"Euh… certainement."~ */ GOTO 89
  IF ~~ THEN REPLY #28410 /* ~"Oui."~ */ GOTO 89
  IF ~~ THEN REPLY #28411 /* ~"En fait, je préférerais ne plus en parler. Je peux vous poser d'autres questions ?"~ */ GOTO 49
  IF ~~ THEN REPLY #28412 /* ~"Nous en reparlerons peut-être une autre fois. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 89 // from: 88.0 88.1
  SAY #28413 /* ~Tombée-en-Disgrâce passe légèrement son doigt sur ta poitrine, en suivant les contours de tes cicatrices et les courbes où elles rejoignent certains de tes tatouages. Elle semble fascinée. "À voir ces cicatrices, on dirait qu'il a fallu plusieurs vies pour les accumuler."~ */
  IF ~~ THEN REPLY #28414 /* ~"Certainement… Mais il y en a de plus récentes."~ */ GOTO 90
  IF ~~ THEN REPLY #28415 /* ~"Je préférerais ne plus en parler. Je peux vous poser quelques questions ?"~ */ GOTO 49
  IF ~~ THEN REPLY #28416 /* ~"Nous en reparlerons peut-être une autre fois. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 90 // from: 89.0
  SAY #28417 /* ~Tombée-en-Disgrâce recule. "Certaines de ces blessures auraient été fatales. Pour un homme normal." Elle tapote son menton en réfléchissant. "Que pensez-vous faire maintenant ?"~ */
  IF ~  CheckStatGT(Protagonist,13,INT)
~ THEN REPLY #28418 /* ~"Je dois retrouver la mémoire, et ma vie. J'ai l'intention de parcourir les plans en quête de moi-même jusqu'à ce que je découvre qui je suis et ce qui m'a mis dans cet état."~ */ DO ~SetGlobal("Grace_Answer","GLOBAL",1)
~ GOTO 91
  IF ~  CheckStatLT(Protagonist,14,INT)
CheckStatGT(Protagonist,13,WIS)
~ THEN REPLY #28419 /* ~"Je dois retrouver la mémoire, et ma vie. J'ai l'intention de parcourir les plans en quête de moi-même jusqu'à ce que je découvre qui je suis et ce qui m'a mis dans cet état."~ */ DO ~SetGlobal("Grace_Answer","GLOBAL",1)
~ GOTO 91
  IF ~~ THEN REPLY #28420 /* ~"Je ne sais pas vraiment. Pour le moment, je cherche des indices sur qui je suis et ce qui m'est arrivé."~ */ DO ~SetGlobal("Grace_Answer","GLOBAL",2)
~ GOTO 91
  IF ~~ THEN REPLY #28421 /* ~"Je n'ai pas l'intention de faire quoi que ce soit. Les réponses viendront à moi… au moment voulu."~ */ DO ~SetGlobal("Grace_Answer","GLOBAL",3)
~ GOTO 91
  IF ~~ THEN REPLY #28422 /* ~"Je préférerais ne plus en parler. Je peux vous poser quelques questions ?"~ */ GOTO 49
  IF ~~ THEN REPLY #28423 /* ~"Nous en reparlerons peut-être une autre fois. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 91 // from: 90.0 90.1 90.2 90.3
  SAY #28424 /* ~Tombée-en-Disgrâce réfléchit encore, son doigt tapotant son menton. "Je dois avouer que je n'ai jamais rencontré un homme qui s'était perdu au sens littéral du terme." Elle lève un sourcil. "Pardonnez-moi, mais votre état est intrigant."~ */
  IF ~~ THEN REPLY #28425 /* ~"Eh bien, ça me fait plaisir de savoir que vous pensez ça."~ */ GOTO 92
  IF ~~ THEN REPLY #28426 /* ~"C'est ça."~ */ GOTO 93
  IF ~~ THEN REPLY #28427 /* ~"'Intrigant' ? Effrayant, vous voulez dire. Je déteste ne pas savoir qui je suis, ce que j'ai pu faire, qui sont mes ennemis et qui sont mes amis."~ */ GOTO 92
  IF ~~ THEN REPLY #28428 /* ~"Je préférerais ne plus en parler. Je peux vous poser quelques questions ?"~ */ GOTO 49
  IF ~~ THEN REPLY #28429 /* ~"Nous en reparlerons peut-être une autre fois. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 92 // from: 91.0 91.2
  SAY #28430 /* ~"Je vous ai offensé avec mes paroles." Tombée-en-Disgrâce incline la tête. "Je vous prie de m'excuser."~ */
  IF ~~ THEN REPLY #28431 /* ~"Excuses acceptées."~ */ GOTO 93
  IF ~~ THEN REPLY #28432 /* ~"Peu importe, il n'y a pas de mal."~ */ GOTO 93
  IF ~~ THEN REPLY #28433 /* ~"Je préférerais ne plus en parler. Je peux vous poser quelques questions ?"~ */ GOTO 49
  IF ~~ THEN REPLY #28434 /* ~"Nous en reparlerons peut-être une autre fois. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 93 // from: 91.1 92.0 92.1
  SAY #28435 /* ~Tombée-en-Disgrâce acquiesce. "Si ça peut vous aider, visitez la Maison de tolérance. Plusieurs de nos étudiantes sont fort instruites dans les arts de la parole. Certaines pourraient vous aider à réveiller vos souvenirs."~ */
  IF ~~ THEN REPLY #28436 /* ~"Peut-être. Je peux vous poser quelques questions, d'abord ?"~ */ JOURNAL #27461 /* ~Tombée-en-Disgrâce m'a conseillé de parler avec les étudiantes de la Maison de tolérance ; elle m'a dit que le fait de communiquer avec certaines d'entre elles pourrait éveiller ma mémoire sur mon identité.~ */ GOTO 49
  IF ~~ THEN REPLY #28437 /* ~"Merci beaucoup. J'irai peut-être leur parler. Au revoir."~ */ JOURNAL #27461 /* ~Tombée-en-Disgrâce m'a conseillé de parler avec les étudiantes de la Maison de tolérance ; elle m'a dit que le fait de communiquer avec certaines d'entre elles pourrait éveiller ma mémoire sur mon identité.~ */ EXIT
END

IF ~~ THEN BEGIN 94 // from: 49.13
  SAY #28438 /* ~"La Guerre Sanglante est le conflit qui fait rage dans les Plans Inférieurs entre les baatezus et les tanar'ris. Ils se battent pour décider si le mal doit s'exprimer de manière loyale ou chaotique." Tombée-en-Disgrâce s'interrompt. "C'est une guerre qu'il vaut mieux éviter à tout prix. Que tanar'ris et baatezus continuent de s'affronter et qu'ils laissent le reste des plans en paix… même si cette dernière est toute relative."~ */
  IF ~~ THEN REPLY #28439 /* ~"Une paix relative ?"~ */ GOTO 95
  IF ~~ THEN REPLY #28440 /* ~"Ils utilisent des troupes humaines ?"~ */ GOTO 96
  IF ~~ THEN REPLY #28441 /* ~"Ça fait combien de temps que ça dure ?"~ */ GOTO 97
  IF ~~ THEN REPLY #28442 /* ~"Vous y avez combattu ?"~ */ GOTO 98
  IF ~~ THEN REPLY #28443 /* ~"J'ai d'autres questions, sans rapport avec la Guerre Sanglante."~ */ GOTO 49
  IF ~~ THEN REPLY #28444 /* ~"Je vois. Merci du renseignement. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 95 // from: 94.0 96.0 97.0 98.1 99.1 100.1 101.1 102.0 103.0
  SAY #28445 /* ~"Eh bien, la Guerre est tellement étendue que la plupart des races s'y sont retrouvées impliquées contre leur gré. N'en tenir aucun compte est bien souvent aussi dangereux que d'y prendre part."~ */
  IF ~~ THEN REPLY #28446 /* ~"Ils utilisent des troupes humaines ?"~ */ GOTO 96
  IF ~~ THEN REPLY #28447 /* ~"Ça fait combien de temps que ça dure ?"~ */ GOTO 97
  IF ~~ THEN REPLY #28448 /* ~"Vous y avez combattu ?"~ */ GOTO 98
  IF ~~ THEN REPLY #28449 /* ~"J'ai d'autres questions, sans rapport avec la Guerre Sanglante."~ */ GOTO 49
  IF ~~ THEN REPLY #28450 /* ~"Je vois. Merci du renseignement. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 96 // from: 94.1 95.0 97.1 98.2 99.2 100.2 101.2 102.1 103.1
  SAY #28451 /* ~"À l'occasion, oui. Il y a plusieurs mercenaires humains qui participent à la Guerre Sanglante. Ils servent de soldats, de chair à canon ou d'aliments pour fiélons."~ */
  IF ~~ THEN REPLY #28452 /* ~"Vous avez dit que tant que la guerre durerait, le reste des plans ne connaîtrait qu'une 'paix relative' ?"~ */ GOTO 95
  IF ~~ THEN REPLY #28453 /* ~"Ça fait combien de temps que ça dure ?"~ */ GOTO 97
  IF ~~ THEN REPLY #28454 /* ~"Ça fait combien de temps que ça dure ?"~ */ GOTO 98
  IF ~~ THEN REPLY #28455 /* ~"J'ai d'autres questions, sans rapport avec la Guerre Sanglante."~ */ GOTO 49
  IF ~~ THEN REPLY #28456 /* ~"Je vois. Merci du renseignement. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 97 // from: 94.2 95.1 96.1 98.3 99.3 100.3 101.3 102.2 103.2
  SAY #28457 /* ~"D'après les chroniques, la Guerre Sanglante dure depuis que les baatezus ont rencontré les tanar'ris… il y a *très* longtemps. Je ne suis pas certaine qu'il y ait un terme humain permettant de concevoir une telle durée." Tombée-en-Disgrâce secoue la tête. "Je crois bien que les baatezus et les tanar'ris ne se sont jamais appréciés."~ */
  IF ~~ THEN REPLY #28458 /* ~"Vous avez dit que tant que la guerre durerait, le reste des plans ne connaîtrait qu'une 'paix relative' ?"~ */ GOTO 95
  IF ~~ THEN REPLY #28459 /* ~"Ils utilisent des troupes humaines ?"~ */ GOTO 96
  IF ~~ THEN REPLY #28460 /* ~"Vous y avez combattu ?"~ */ GOTO 98
  IF ~~ THEN REPLY #28461 /* ~"J'ai d'autres questions, sans rapport avec la Guerre Sanglante."~ */ GOTO 49
  IF ~~ THEN REPLY #28462 /* ~"Je vois. Merci du renseignement. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 98 // from: 94.3 95.2 96.2 97.2 103.3
  SAY #28463 /* ~"Non. Ma mère si. Les succubes séduisent généralement les mortels pour entraîner leurs esprits dans les Abysses et créer d'autres tanar'ris qui mourront dans la Guerre Sanglante."~ */
  IF ~~ THEN REPLY #28464 /* ~"Votre mère ? Elle a combattu dans la Guerre Sanglante ?"~ */ GOTO 99
  IF ~~ THEN REPLY #28465 /* ~"Vous avez dit que tant que la guerre durerait, le reste des plans ne connaîtrait qu'une 'paix relative' ?"~ */ GOTO 95
  IF ~~ THEN REPLY #28466 /* ~"Ils utilisent des troupes humaines ?"~ */ GOTO 96
  IF ~~ THEN REPLY #28467 /* ~"Ça fait combien de temps que ça dure ?"~ */ GOTO 97
  IF ~~ THEN REPLY #28468 /* ~"J'ai d'autres questions, sans rapport avec la Guerre Sanglante."~ */ GOTO 49
  IF ~~ THEN REPLY #28469 /* ~"Je vois. Merci du renseignement. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 99 // from: 98.0
  SAY #28470 /* ~"Oui. Elle faisait parti des meilleures, séduisant d'innombrables hommes mortels. Elle réside désormais dans les Abysses et vend ses enfants en esclavage."~ */
  IF ~~ THEN REPLY #28471 /* ~"C'est… votre mère qui vous a vendue comme esclave ?"~ */ GOTO 100
  IF ~~ THEN REPLY #28472 /* ~"Vous avez dit que tant que la guerre durerait, le reste des plans ne connaîtrait qu'une 'paix relative' ?"~ */ GOTO 95
  IF ~~ THEN REPLY #28473 /* ~"Ils utilisent des troupes humaines ?"~ */ GOTO 96
  IF ~~ THEN REPLY #28474 /* ~"Ça fait combien de temps que ça dure ?"~ */ GOTO 97
  IF ~~ THEN REPLY #28475 /* ~"Ces questions vous ennuient ?"~ */ GOTO 103
  IF ~~ THEN REPLY #28476 /* ~"J'ai d'autres questions, sans rapport avec la Guerre Sanglante."~ */ GOTO 49
  IF ~~ THEN REPLY #28477 /* ~"Je vois. Merci du renseignement. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 100 // from: 99.0
  SAY #28478 /* ~"Pendant un certain temps. J'ai conquis ma liberté dans un concours d'improvisation, il y a bien longtemps."~ */
  IF ~~ THEN REPLY #28479 /* ~"À qui vous a-t-elle vendue ?"~ */ DO ~SetGlobal("Grace_History","GLOBAL",1)
~ JOURNAL #27460 /* ~Tombée-en-Disgrâce m'a dit que sa propre mère l'avait vendue comme esclave… aux ennemis jurés des tanar'ris, les baatezus, pas moins. Apparemment, Tombée-en-Disgrâce a gagné sa liberté dans un concours d'improvisation contre son maître baatezu. Elle ne s'est pas étendue sur les détails.~ */ GOTO 101
  IF ~~ THEN REPLY #28480 /* ~"Vous avez dit que tant que la guerre durerait, le reste des plans ne connaîtrait qu'une 'paix relative' ?"~ */ GOTO 95
  IF ~~ THEN REPLY #28481 /* ~"Ils utilisent des troupes humaines ?"~ */ GOTO 96
  IF ~~ THEN REPLY #28482 /* ~"Ça fait combien de temps que ça dure ?"~ */ GOTO 97
  IF ~~ THEN REPLY #28483 /* ~"Ces questions vous ennuient ?"~ */ GOTO 103
  IF ~~ THEN REPLY #28484 /* ~"J'ai d'autres questions, sans rapport avec la Guerre Sanglante."~ */ GOTO 49
  IF ~~ THEN REPLY #28485 /* ~"Je vois. Merci du renseignement. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 101 // from: 100.0
  SAY #28486 /* ~"Elle m'a vendu aux baatezus. Je pense qu'elle s'attendait à ce qu'ils me tuent. Malgré ses vastes connaissances, elle ignore tout de leur culture."~ */
  IF ~~ THEN REPLY #28487 /* ~"Elle vous a vendue aux ennemis jurés des tanar'ris ?"~ */ GOTO 102
  IF ~~ THEN REPLY #28488 /* ~"Vous avez dit que tant que la guerre durerait, le reste des plans ne connaîtrait qu'une 'paix relative' ?"~ */ GOTO 95
  IF ~~ THEN REPLY #28489 /* ~"Ils utilisent des troupes humaines ?"~ */ GOTO 96
  IF ~~ THEN REPLY #28490 /* ~"Ça fait combien de temps que ça dure ?"~ */ GOTO 97
  IF ~~ THEN REPLY #28491 /* ~"Ces questions vous ennuient ?"~ */ GOTO 103
  IF ~~ THEN REPLY #28492 /* ~"J'ai d'autres questions, sans rapport avec la Guerre Sanglante."~ */ GOTO 49
  IF ~~ THEN REPLY #28493 /* ~"Je vois. Merci du renseignement. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 102 // from: 101.0
  SAY #28494 /* ~"Oui." Tombée-en-Disgrâce se redresse. "Voulez-vous savoir autre chose ?"~ */
  IF ~~ THEN REPLY #28495 /* ~"Vous avez dit que tant que la guerre durerait, le reste des plans ne connaîtrait qu'une 'paix relative' ?"~ */ GOTO 95
  IF ~~ THEN REPLY #28496 /* ~"Ils utilisent des troupes humaines ?"~ */ GOTO 96
  IF ~~ THEN REPLY #28497 /* ~"Ça fait combien de temps que ça dure ?"~ */ GOTO 97
  IF ~~ THEN REPLY #28498 /* ~"Ces questions vous ennuient ?"~ */ GOTO 103
  IF ~~ THEN REPLY #28499 /* ~"J'ai d'autres questions, sans rapport avec la Guerre Sanglante."~ */ GOTO 49
  IF ~~ THEN REPLY #28500 /* ~"Je vois. Merci du renseignement. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 103 // from: 99.4 100.4 101.4 102.3
  SAY #28501 /* ~"Oh, non, pas du tout. C'est mieux que vous le sachiez - la Guerre Sanglante est à l'origine de la plupart des événements sur les plans ; il est important que vous en compreniez la nature et les causes."~ */
  IF ~~ THEN REPLY #28502 /* ~"Vous avez dit que tant que la guerre durerait, le reste des plans ne connaîtrait qu'une 'paix relative' ?"~ */ GOTO 95
  IF ~~ THEN REPLY #28503 /* ~"Ils utilisent des troupes humaines ?"~ */ GOTO 96
  IF ~~ THEN REPLY #28504 /* ~"Ça fait combien de temps que ça dure ?"~ */ GOTO 97
  IF ~~ THEN REPLY #28505 /* ~"Vous y avez combattu ?"~ */ GOTO 98
  IF ~~ THEN REPLY #28506 /* ~"J'ai d'autres questions, sans rapport avec la Guerre Sanglante."~ */ GOTO 49
  IF ~~ THEN REPLY #28507 /* ~"Je vois. Merci du renseignement. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 104 // from: 49.11
  SAY #28508 /* ~"Le nom me dit quelque chose." Tombée-en-Disgrâce s'interrompt et réfléchit un instant. "Les rumeurs abondent autour de ce nom et la plupart tendent à en faire un mythe, mais je pense qu'elle a existé et qu'elle a fait grande impression dans la Cage lors de son séjour ici." Elle a l'air surpris. "Pourquoi me posez-vous cette question ?"~ */
  IF ~~ THEN REPLY #28509 /* ~"J'ai l'intention de la chercher."~ */ GOTO 105
  IF ~  Global("Grace_Ravel_Answer","GLOBAL",1)
~ THEN REPLY #28510 /* ~"Qu'est-ce que vous savez d'autre sur elle ?"~ */ GOTO 109
  IF ~~ THEN REPLY #28511 /* ~"Peu importe. J'ai d'autres questions…"~ */ GOTO 49
  IF ~~ THEN REPLY #28512 /* ~"Pour rien. Merci du renseignement. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 105 // from: 104.0
  SAY #28513 /* ~Grâce hausse un sourcil. "Vraiment ? Je suis obligée de vous demander pourquoi."~ */
  IF ~~ THEN REPLY #28514 /* ~"J'ai besoin des informations dont elle dispose."~ */ GOTO 106
  IF ~~ THEN REPLY #28515 /* ~"Peu importe. J'ai d'autres questions…"~ */ GOTO 49
  IF ~~ THEN REPLY #28516 /* ~"Pour rien. Merci du renseignement. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 106 // from: 105.0
  SAY #28517 /* ~"Personne d'autre ne dispose de ces informations ?"~ */
  IF ~~ THEN REPLY #28518 /* ~"Je pense que seule Ravel dispose des connaissances dont j'ai besoin."~ */ JOURNAL #27459 /* ~Tombée-en-Disgrâce m'a mis en garde contre Ravel… Elle m'a dit que si le quart de ce qu'on racontait sur la guenaude noire était vrai, elle était sans doute l'une des guenaudes noires les plus diaboliques et les plus puissantes jamais vues dans les plans.~ */ GOTO 107
  IF ~~ THEN REPLY #28519 /* ~"Peu importe. J'ai d'autres questions…"~ */ GOTO 49
  IF ~~ THEN REPLY #28520 /* ~"Je ne sais pas, mais j'ai l'intention de le découvrir. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 107 // from: 106.0
  SAY #28521 /* ~Grâce pose légèrement la main sur ton bras. "Attention - si Ravel existe vraiment, elle est extrêmement puissante et rusée. Si une fraction seulement des histoires qui la concernent sont véridiques, c'est une créature qui a découvert de nouvelles significations du mal. Sa recherche n'est pas une quête à entreprendre à la légère."~ */
  IF ~  InParty("Grace")
~ THEN REPLY #28522 /* ~"Je m'en rends compte."~ */ DO ~SetGlobal("Grace_Ravel_Answer","GLOBAL",1)
~ GOTO 108
  IF ~  !InParty("Grace")
~ THEN REPLY #28523 /* ~"Je m'en rends compte. Vous savez autre chose sur Ravel ?"~ */ DO ~SetGlobal("Grace_Ravel_Answer","GLOBAL",1)
~ GOTO 109
  IF ~  !InParty("Grace")
~ THEN REPLY #28524 /* ~"Je vois. Je peux vous poser d'autres questions ?"~ */ GOTO 49
  IF ~  !InParty("Grace")
~ THEN REPLY #28525 /* ~"Je sais. Mais je dois la trouver. Merci du renseignement. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 108 // from: 107.0
  SAY #28526 /* ~"Et bien, je n'ai jamais rencontré de mythe. Ce devrait être une véritable partie de plaisir." Elle sourit. "Avez-vous jamais essayé de faire quelque chose d'ennuyeux ?"~ */
  IF ~~ THEN REPLY #28527 /* ~"J'essaie d'éviter… Vous savez autre chose sur Ravel ?"~ */ GOTO 109
  IF ~~ THEN REPLY #28528 /* ~"Non, sauf si ça m'aide. Je peux vous poser d'autres questions ?"~ */ GOTO 49
  IF ~~ THEN REPLY #28529 /* ~"Je le ferai peut-être dans une prochaine vie, je ne sais pas. Allons-y."~ */ EXIT
END

IF ~~ THEN BEGIN 109 // from: 49.12 104.1 107.1 108.0
  SAY #28530 /* ~"D'après la rumeur, c'était une des sorcières de la Gaste Grise ; ses pouvoirs et sa fourberie étaient bien supérieurs à ceux de ses sœurs. Elle est venue il y a bien longtemps à Sigil, et outre les méfaits commis pendant son séjour, ses actions auraient menacé la Cage elle-même. Elle existe désormais essentiellement sous forme de fiction, un personnage de contes pour enfants." Grâce s'interrompt. "J'imagine que la Dame des Douleurs l'a traitée comme toutes les menaces sur Sigil."~ */
  IF ~~ THEN REPLY #28531 /* ~"Comment ça ?"~ */ JOURNAL #27458 /* ~Tombée-en-Disgrâce m'a dit que Ravel était une guenaude noire, l'une des sœurs grises qui errent dans la Gaste Grise. Ses pouvoirs sont bien supérieurs à ceux de ses sœurs et elle est arrivée à Sigil il y a très longtemps. Au cours de son séjour, elle a contrarié la Dame des Douleurs et a été punie.~ */ GOTO 110
  IF ~~ THEN REPLY #28532 /* ~"C'est quoi la Gaste Grise ?"~ */ JOURNAL #27458 /* ~Tombée-en-Disgrâce m'a dit que Ravel était une guenaude noire, l'une des sœurs grises qui errent dans la Gaste Grise. Ses pouvoirs sont bien supérieurs à ceux de ses sœurs et elle est arrivée à Sigil il y a très longtemps. Au cours de son séjour, elle a contrarié la Dame des Douleurs et a été punie.~ */ GOTO 111
  IF ~~ THEN REPLY #28533 /* ~"Est-ce que quelqu'un d'autre la connaîtrait ?"~ */ JOURNAL #27458 /* ~Tombée-en-Disgrâce m'a dit que Ravel était une guenaude noire, l'une des sœurs grises qui errent dans la Gaste Grise. Ses pouvoirs sont bien supérieurs à ceux de ses sœurs et elle est arrivée à Sigil il y a très longtemps. Au cours de son séjour, elle a contrarié la Dame des Douleurs et a été punie.~ */ GOTO 112
  IF ~~ THEN REPLY #28534 /* ~"Je peux vous poser d'autres questions ?"~ */ JOURNAL #27458 /* ~Tombée-en-Disgrâce m'a dit que Ravel était une guenaude noire, l'une des sœurs grises qui errent dans la Gaste Grise. Ses pouvoirs sont bien supérieurs à ceux de ses sœurs et elle est arrivée à Sigil il y a très longtemps. Au cours de son séjour, elle a contrarié la Dame des Douleurs et a été punie.~ */ GOTO 49
  IF ~~ THEN REPLY #28535 /* ~"Je vois. Merci du renseignement. Au revoir."~ */ JOURNAL #27458 /* ~Tombée-en-Disgrâce m'a dit que Ravel était une guenaude noire, l'une des sœurs grises qui errent dans la Gaste Grise. Ses pouvoirs sont bien supérieurs à ceux de ses sœurs et elle est arrivée à Sigil il y a très longtemps. Au cours de son séjour, elle a contrarié la Dame des Douleurs et a été punie.~ */ EXIT
END

IF ~~ THEN BEGIN 110 // from: 109.0 111.0 112.0
  SAY #28536 /* ~"Ravel a certainement été envoyée dans un dédale. Une des prisons de la Dame."~ */
  IF ~~ THEN REPLY #28537 /* ~"Un dédale ? C'est quoi ?"~ */ JOURNAL #27457 /* ~Tombée-en-Disgrâce m'a dit que Ravel était emprisonnée dans l'un des dédales de la Dame des Douleurs.~ */ GOTO 123
  IF ~~ THEN REPLY #28538 /* ~"C'est quoi la Gaste Grise ?"~ */ GOTO 111
  IF ~~ THEN REPLY #28539 /* ~"Est-ce que quelqu'un d'autre la connaîtrait ?"~ */ GOTO 112
  IF ~~ THEN REPLY #28540 /* ~"Je peux vous poser d'autres questions ?"~ */ GOTO 49
  IF ~~ THEN REPLY #28541 /* ~"Je vois. Merci du renseignement. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 111 // from: 109.1 110.1 112.1 123.1 124.1 125.0
  SAY #28542 /* ~"Un horrible plan qui se trouve 'entre' Baator et les Abysses. C'est fréquemment un terrain de bataille dans la Guerre Sanglante."~ */
  IF ~~ THEN REPLY #28543 /* ~"Vous savez ce qui est arrivé à Ravel ?"~ */ GOTO 110
  IF ~~ THEN REPLY #28544 /* ~"Est-ce que quelqu'un d'autre la connaîtrait ?"~ */ GOTO 112
  IF ~~ THEN REPLY #28545 /* ~"Je peux vous poser d'autres questions ?"~ */ GOTO 49
  IF ~~ THEN REPLY #28546 /* ~"Je vois. Merci du renseignement. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 112 // from: 109.2 110.2 111.1 123.2 124.2 125.1
  SAY #28547 /* ~"Vous trouverez peut-être quelqu'un dans la Salle des Fêtes susceptible d'en savoir plus sur elle."~ */
  IF ~~ THEN REPLY #28548 /* ~"Vous savez ce qui est arrivé à Ravel ?"~ */ JOURNAL #27456 /* ~Tombée-en-Disgrâce m'a dit que quelqu'un dans la Salle des Fêtes pourrait m'en dire plus sur Ravel.~ */ GOTO 110
  IF ~~ THEN REPLY #28549 /* ~"C'est quoi la Gaste Grise ?"~ */ JOURNAL #27456 /* ~Tombée-en-Disgrâce m'a dit que quelqu'un dans la Salle des Fêtes pourrait m'en dire plus sur Ravel.~ */ GOTO 111
  IF ~~ THEN REPLY #28550 /* ~"Je peux vous poser d'autres questions ?"~ */ JOURNAL #27456 /* ~Tombée-en-Disgrâce m'a dit que quelqu'un dans la Salle des Fêtes pourrait m'en dire plus sur Ravel.~ */ GOTO 49
  IF ~~ THEN REPLY #28551 /* ~"Je vois. Merci du renseignement. Au revoir."~ */ JOURNAL #27456 /* ~Tombée-en-Disgrâce m'a dit que quelqu'un dans la Salle des Fêtes pourrait m'en dire plus sur Ravel.~ */ EXIT
END

IF ~~ THEN BEGIN 113 // from: 51.1
  SAY #28552 /* ~Tombée-en-Disgrâce hausse les sourcils. "Vraiment ?"~ */
  IF ~~ THEN REPLY #28553 /* ~"Oui… mais c'est une longue histoire, peut-être même plus longue que je ne le pense. Cet endroit m'intéresse plus."~ */ GOTO 57
  IF ~~ THEN REPLY #28554 /* ~"Oui, mais c'est une longue histoire. Je dois m'en aller. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 114 // from: 52.3
  SAY #28555 /* ~Elle acquiesce. "Contente qu'il vous plaise. J'y suis moi-même attachée."~ */
  IF ~~ THEN REPLY #28556 /* ~"Qu'est-ce qu'il signifie, exactement ?"~ */ GOTO 115
  IF ~~ THEN REPLY #28557 /* ~"Je peux vous poser d'autres questions ?"~ */ GOTO 49
  IF ~~ THEN REPLY #28558 /* ~"Rien aujourd'hui. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 115 // from: 114.0
  SAY #28559 /* ~"Le sens des noms est un sujet complexe. Il y a beaucoup à dire et encore plus à taire. Ça fera l'objet d'une autre histoire, je pense."~ */
  IF ~~ THEN REPLY #28560 /* ~"Tombée-en-Disgrâce est votre vrai nom ?"~ */ GOTO 116
  IF ~~ THEN REPLY #28561 /* ~"Alors, très bien. Je peux vous poser d'autres questions ?"~ */ GOTO 49
  IF ~~ THEN REPLY #28562 /* ~"Pardon de vous avoir dérangée alors. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 116 // from: 115.0
  SAY #28563 /* ~"Peut-être." Elle sourit légèrement. "Peut-être pas. Il y des noms qui se donnent et d'autres qui se gagnent. Qui peut dire lequel est réel ? Sûrement pas moi."~ */
  IF ~~ THEN REPLY #28564 /* ~"Alors, très bien. Je peux vous poser d'autres questions ?"~ */ GOTO 49
  IF ~~ THEN REPLY #28565 /* ~"Pardon de vous avoir dérangée alors. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 117 // from:
  SAY #28566 /* ~"Voyager avec vous ?" Tombée-en-Disgrâce esquisse un léger sourire. Elle semble ignorer tes compagnons. "C'est assez hardi de votre part."~ */
  IF ~  CheckStatGT(Protagonist,14,CHR)
~ THEN REPLY #28567 /* ~"Autant être honnête quant à mes intentions. Vous avez l'air très agréable et vous semblez bien connaître les plans. Une amie dotée de ces connaissances serait la bienvenue."~ */ EXTERN ~DMORTE~ 278
  IF ~~ THEN REPLY #28568 /* ~"Je suis comme ça."~ */ GOTO 79
  IF ~~ THEN REPLY #28569 /* ~"Je veux dire, qu'est-ce qu'il y a d'intéressant ici ?"~ */ GOTO 83
  IF ~  Global("Know_Grace_Sensates","GLOBAL",1)
~ THEN REPLY #28570 /* ~"Vous êtes une Sensat. Il y a certainement une limite à ce que vous pouvez apprendre ici."~ */ GOTO 83
  IF ~~ THEN REPLY #28571 /* ~"Alors, je retire ce que je vous ai demandé. Je peux vous poser d'autres questions à la place ?"~ */ GOTO 49
  IF ~~ THEN REPLY #28572 /* ~"Alors, excusez-moi. Je dois m'en aller. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 118 // from:
  SAY #28573 /* ~"Voyager avec vous ?" Tombée-en-Disgrâce esquisse un léger sourire. Elle semble ignorer Annah. "C'est assez hardi de votre part."~ */
  IF ~  CheckStatGT(Protagonist,14,CHR)
!NearbyDialog("DMorte")
~ THEN REPLY #28574 /* ~"Autant être honnête quant à mes intentions. Vous avez l'air très agréable et vous semblez bien connaître les plans. Une amie dotée de ces connaissances serait la bienvenue."~ */ GOTO 79
  IF ~  CheckStatGT(Protagonist,14,CHR)
NearbyDialog("DMorte")
~ THEN REPLY #28575 /* ~"Autant être honnête quant à mes intentions. Vous avez l'air très agréable et vous semblez bien connaître les plans. Une amie dotée de ces connaissances serait la bienvenue."~ */ EXTERN ~DMORTE~ 278
  IF ~~ THEN REPLY #28576 /* ~"Je suis comme ça."~ */ GOTO 79
  IF ~~ THEN REPLY #28577 /* ~"Je veux dire, qu'est-ce qu'il y a d'intéressant ici ?"~ */ GOTO 83
  IF ~  Global("Know_Grace_Sensates","GLOBAL",1)
~ THEN REPLY #28578 /* ~"Vous êtes une Sensat. Il y a certainement une limite à ce que vous pouvez apprendre ici."~ */ GOTO 83
  IF ~~ THEN REPLY #28579 /* ~"Alors, je retire ce que je vous ai demandé. Je peux vous poser d'autres questions à la place ?"~ */ GOTO 49
  IF ~~ THEN REPLY #28580 /* ~"Alors, excusez-moi. Je dois m'en aller. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 119 // from:
  SAY #28581 /* ~"Voyager avec vous ?" Tombée-en-Disgrâce esquisse un léger sourire. Elle semble ignorer Morte. "C'est assez hardi de votre part."~ */
  IF ~  CheckStatGT(Protagonist,14,CHR)
~ THEN REPLY #28582 /* ~"Autant être honnête quant à mes intentions. Vous avez l'air très agréable et vous semblez bien connaître les plans. Une amie dotée de ces connaissances serait la bienvenue."~ */ EXTERN ~DMORTE~ 278
  IF ~~ THEN REPLY #28583 /* ~"Je suis comme ça."~ */ GOTO 79
  IF ~~ THEN REPLY #28584 /* ~"Je veux dire, qu'est-ce qu'il y a d'intéressant ici ?"~ */ GOTO 83
  IF ~  Global("Know_Grace_Sensates","GLOBAL",1)
~ THEN REPLY #28585 /* ~"Vous êtes une Sensat. Il y a certainement une limite à ce que vous pouvez apprendre ici."~ */ GOTO 83
  IF ~~ THEN REPLY #28586 /* ~"Alors, je retire ce que je vous ai demandé. Je peux vous poser d'autres questions à la place ?"~ */ GOTO 49
  IF ~~ THEN REPLY #28587 /* ~"Alors, excusez-moi. Je dois m'en aller. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 120 // from: 49.14 81.0
  SAY #28588 /* ~"Et vous n'avez pas trouvé la dixième étudiante ? Étrange."~ */
  IF ~  CheckStatGT(Protagonist,14,INT)
~ THEN REPLY #28589 /* ~"Je crois que la dixième étudiante, c'est moi. Et dans ce cas, je leur ai parlé à toutes."~ */ DO ~AddexperienceParty(3000)
~ GOTO 121
  IF ~  CheckStatGT(Protagonist,13,WIS)
CheckStatLT(Protagonist,15,INT)
~ THEN REPLY #28590 /* ~"Je crois que la dixième étudiante, c'est moi. Et dans ce cas, je leur ai parlé à toutes."~ */ DO ~AddexperienceParty(3000)
~ GOTO 121
  IF ~  CheckStatLT(Protagonist,14,WIS)
CheckStatLT(Protagonist,15,INT)
Global("Grace_Quest_Answer","GLOBAL",1)
~ THEN REPLY #28591 /* ~"J'ai vu dix pierres sous la Maison de Tolérance, et l'une était vierge… je pense qu'il n'y a que neuf prostituées, ici. Et que la dixième *étudiante*, c'est moi. Et dans ce cas, je leur ai parlé à toutes."~ */ DO ~AddexperienceParty(3000)
~ GOTO 121
  IF ~  GlobalGT("Armoire","GLOBAL",0)
~ THEN REPLY #28592 /* ~"Je crois que Luis est la dixième étudiante… à sa manière."~ */ DO ~SetGlobal("Luis_Student","GLOBAL",1)
~ GOTO 121
  IF ~~ THEN REPLY #28593 /* ~"Vous savez où je peux trouver la dixième étudiante ?"~ */ GOTO 122
  IF ~~ THEN REPLY #28594 /* ~"Peut-être qu'il y en a une qui m'a échappé. Je peux plutôt vous poser quelques questions ?"~ */ GOTO 49
  IF ~~ THEN REPLY #28595 /* ~"Je vais encore essayer de trouver la dixième étudiante. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 121 // from: 120.0 120.1 120.2 120.3 122.0 122.1 122.2 122.3
  SAY #28596 /* ~Elle acquiesce. "Très bien. Et qu'en pensez-vous ?"~ */
  IF ~~ THEN REPLY #28597 /* ~"On devrait partir explorer les Plans, vous et moi. Ici, il n'y a plus rien dont nous puissions faire l'expérience."~ */ GOTO 203
  IF ~~ THEN REPLY #61636 /* ~"J'ai appris ce que ça signifie que de vouloir être un Sensat et qu'il vaut mieux chercher les expériences qu'attendre de les voir venir à soi."~ */ GOTO 203
  IF ~  Global("Luis_Student","GLOBAL",1)
~ THEN REPLY #61638 /* ~"Luis a grand besoin d'un charpentier pour ébarber sa libido."~ */ GOTO 204
  IF ~  Global("Luis_Student","GLOBAL",0)
GlobalGT("Armoire","GLOBAL",0)
~ THEN REPLY #61639 /* ~"Vous devriez vous débarrasser des armoires de la Maison de Tolérance et vous en servir comme bois de chauffage."~ */ GOTO 204
  IF ~~ THEN REPLY #61640 /* ~"Recevoir un enseignement dans un lieu clos tel que celui-ci n'est en rien bénéficiaire à l'étudiant. Les Plans sont souvent la meilleure école."~ */ GOTO 203
END

IF ~~ THEN BEGIN 122 // from: 120.4
  SAY #28598 /* ~"L'étudiante y est… vous devrez peut-être chercher davantage."~ */
  IF ~  CheckStatGT(Protagonist,14,INT)
~ THEN REPLY #28599 /* ~"Je crois que la dixième étudiante, c'est moi. Et dans ce cas, je leur ai parlé à toutes."~ */ DO ~AddexperienceParty(3000)
~ GOTO 121
  IF ~  CheckStatGT(Protagonist,13,WIS)
CheckStatLT(Protagonist,15,INT)
~ THEN REPLY #28600 /* ~"Je crois que la dixième étudiante, c'est moi. Et dans ce cas, je leur ai parlé à toutes."~ */ DO ~AddexperienceParty(3000)
~ GOTO 121
  IF ~  CheckStatLT(Protagonist,14,WIS)
CheckStatLT(Protagonist,15,INT)
Global("Grace_Quest_Answer","GLOBAL",1)
~ THEN REPLY #28591 /* ~"J'ai vu dix pierres sous la Maison de Tolérance, et l'une était vierge… je pense qu'il n'y a que neuf prostituées, ici. Et que la dixième *étudiante*, c'est moi. Et dans ce cas, je leur ai parlé à toutes."~ */ DO ~AddexperienceParty(3000)
~ GOTO 121
  IF ~  GlobalGT("Armoire","GLOBAL",0)
~ THEN REPLY #28602 /* ~"Je crois que Luis est la dixième étudiante… à sa manière."~ */ DO ~SetGlobal("Luis_Student","GLOBAL",1)
~ GOTO 121
  IF ~~ THEN REPLY #28603 /* ~"Peut-être qu'il y en a une qui m'a échappé. Je peux plutôt vous poser quelques questions ?"~ */ GOTO 49
  IF ~~ THEN REPLY #28604 /* ~"Je vais encore essayer de trouver la dixième étudiante. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 123 // from: 110.0
  SAY #28605 /* ~Grâce se joint les mains, les pouces et les doigts se touchant pour former un cercle approximatif. "On dit que la Dame a le pouvoir de prendre des morceaux de Sigil…" Tu regardes surpris une image spectrale du petit doigt de Grâce se détacher de sa main et planer dans l'air, en formant un petit cercle."… et d'en faire un dédale."~ */
  IF ~~ THEN REPLY #28606 /* ~"Continuez…"~ */ GOTO 124
  IF ~~ THEN REPLY #28607 /* ~"Je vois. Vous pouvez m'en dire plus sur le plan d'où vient Ravel… la Gaste Grise ?"~ */ GOTO 111
  IF ~~ THEN REPLY #28608 /* ~"Je crois que je comprends. Vous connaissez quelqu'un qui pourrait en savoir davantage sur Ravel ?"~ */ GOTO 112
  IF ~~ THEN REPLY #28609 /* ~"Peu importe. Je peux vous poser d'autres questions ?"~ */ GOTO 49
  IF ~~ THEN REPLY #28610 /* ~"Je vois. C'est tout ce que je voulais savoir. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 124 // from: 123.0
  SAY #28611 /* ~Le petit cercle spectral plane puis commence à tourner lentement. "Le morceau de Sigil qu'elle prend renferme le prisonnier ; il n'y a pas d'issue possible au dédale. Ça peut vous arriver à tout moment, lorsque vous marchez dans la rue, que vous passez par une porte…" Elle frappe dans ses mains. "… Et hop, vous êtes ailleurs." Dans le cercle spectral, tu discernes soudain un léger mouvement vacillant comme si quelqu'un y marchait.~ */
  IF ~~ THEN REPLY #28612 /* ~"Continuez…"~ */ GOTO 125
  IF ~~ THEN REPLY #28613 /* ~"Je vois. Vous pouvez m'en dire plus sur le plan d'où vient Ravel… la Gaste Grise ?"~ */ GOTO 111
  IF ~~ THEN REPLY #28614 /* ~"Je crois que je comprends. Vous connaissez quelqu'un qui pourrait en savoir davantage sur Ravel ?"~ */ GOTO 112
  IF ~~ THEN REPLY #28615 /* ~"Peu importe. Je peux vous poser d'autres questions ?"~ */ GOTO 49
  IF ~~ THEN REPLY #28616 /* ~"Je vois. C'est tout ce que je voulais savoir. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 125 // from: 124.0
  SAY #28617 /* ~Grâce continue, le minuscule dédale fantôme se reflète dans ses yeux. "On dit qu'il y a une porte permettant de quitter chaque dédale, mais elles sont difficiles à trouver. Peut-être ont-elles été laissées là pour donner de l'espoir au prisonnier. Ou alors pour le torturer." Le dédale fantôme se dissout. "Ou encore pour les deux."~ */
  IF ~~ THEN REPLY #28618 /* ~"Je vois. Vous pouvez m'en dire plus sur le plan d'où vient Ravel… la Gaste Grise ?"~ */ GOTO 111
  IF ~~ THEN REPLY #28619 /* ~"Je crois que je comprends. Vous connaissez quelqu'un qui pourrait en savoir davantage sur Ravel ?"~ */ GOTO 112
  IF ~~ THEN REPLY #28620 /* ~"Peu importe. Je peux vous poser d'autres questions ?"~ */ GOTO 49
  IF ~~ THEN REPLY #28621 /* ~"Je vois. C'est tout ce que je voulais savoir. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 126 // from:
  SAY #28896 /* ~Grâce acquiesce avec un sourire. "Vous êtes trop bon, monsieur."~ */
  IF ~~ THEN EXTERN ~DCWCAFEM~ 20
END

IF ~~ THEN BEGIN 127 // from:
  SAY #30528 /* ~Grâce annonce dans un murmure. "Un avocat est quelqu'un qui plaide devant les tribunaux de Sigil. Ils fournissent aussi des conseils et des renseignements juridiques à ceux qui le demandent."~ */
  IF ~~ THEN EXTERN ~DIANNIS~ 10
END

IF ~~ THEN BEGIN 128 // from:
  SAY #30827 /* ~Elle a un léger sourire. "Ce n'est pas grave, Pensée Pondérée. Je suis certain que seul Tuerny aurait pu se vexer de ce commentaire, et, comme vous le savez, ses sujets l'ont enterré vivant, il y a plus de trois siècles."~ */
  IF ~~ THEN EXTERN ~DABLE~ 5
END

IF ~~ THEN BEGIN 129 // from:
  SAY #30828 /* ~Grâce sourit, réussissant à protester poliment : "Et pourquoi croyez-vous être toujours le bienvenu, mon bon Pensée Pondérée ?"~ */
  IF ~~ THEN EXTERN ~DABLE~ 40
END

IF ~~ THEN BEGIN 130 // from:
  SAY #32697 /* ~"Petite Sarhava ? Sarhava Vhjul, est-il possible que ce soit vous ?"~ */
  IF ~~ THEN EXTERN ~DSARHAVA~ 25
END

IF ~~ THEN BEGIN 131 // from:
  SAY #32698 /* ~Tombée-en-Disgrâce salue simplement de la tête. "Vos mots sont choisis avec attention, contrairement à ceux que j'ai pu entendre à l'instant."~ */
  IF ~~ THEN EXTERN ~DSARHAVA~ 26
END

IF ~~ THEN BEGIN 132 // from:
  SAY #32699 /* ~"Il est dommage qu'ils aient même été prononcés." Son ton ne change guère, mais la subtile réprimande semble frapper le visage de la jeune femme comme un fouet. "Il m'est pénible de voir l'une de mes anciennes élèves se comporter ainsi…"~ */
  IF ~~ THEN EXTERN ~DSARHAVA~ 27
END

IF ~~ THEN BEGIN 133 // from:
  SAY #32700 /* ~"Ce sont là mes compagnons de voyage. Je veux qu'ils soient traités avec la courtoisie que tu me témoignes. Telle est la marque et la responsabilité de… ceux qui sont nés nobles."~ */
  IF ~  NearbyDialog("DAnnah")
~ THEN REPLY #32701 /* ~Continue.~ */ EXTERN ~DANNAH~ 177
  IF ~  !NearbyDialog("DAnnah")
~ THEN REPLY #32702 /* ~Continue.~ */ EXTERN ~DSARHAVA~ 28
END

IF ~~ THEN BEGIN 134 // from:
  SAY #33080 /* ~"Je n'ai pas de mal à croire qu'une femme puisse arrêter la Guerre Sanglante."~ */
  IF ~~ THEN REPLY #33082 /* ~"Mais les fiélons sont toujours admis à Sigil ?"~ */ EXTERN ~DGHYSIS~ 25
  IF ~~ THEN REPLY #33083 /* ~"Je voudrais te demander autre chose…"~ */ EXTERN ~DGHYSIS~ 11
  IF ~~ THEN REPLY #33084 /* ~"Je n'ai pas d'autre question."~ */ EXTERN ~DGHYSIS~ 9
END

IF ~~ THEN BEGIN 135 // from:
  SAY #33081 /* ~"Il n'y a pas de mal. Vous avez plutôt raison."~ */
  IF ~~ THEN REPLY #33085 /* ~"Quels sont les types de forces en présence dans la Guerre Sanglante ?"~ */ EXTERN ~DGHYSIS~ 48
  IF ~~ THEN REPLY #33086 /* ~"Je voudrais te demander autre chose…"~ */ EXIT
  IF ~~ THEN REPLY #33087 /* ~"Je n'ai pas d'autre question."~ */ EXIT
END

IF ~  GlobalGT("Grace","GLOBAL",1)
!InParty("Grace")
!GlobalGT("Fortress_Grace","GLOBAL",2)
~ THEN BEGIN 136 // from:
  SAY #34014 /* ~Tombée-en-Disgrâce lève les yeux vers toi à ton approche. "Voulez-vous encore que je voyage avec vous ?"~ [FFG247] */
  IF ~~ THEN REPLY #34015 /* ~"Oui. Si vous vous sentez prête."~ */ GOTO 137
  IF ~~ THEN REPLY #34016 /* ~"Pas maintenant… Je passais juste voir comment vous alliez."~ */ GOTO 138
END

IF ~~ THEN BEGIN 137 // from: 136.0
  SAY #34017 /* ~Elle acquiesce d'un signe de tête. "Ce sera pour moi un plaisir."~ [FFG249] */
  IF ~~ THEN REPLY #34018 /* ~"Allons-y."~ */ DO ~ChangeAIScript("pcgrace",DEFAULT)
JoinPartyEx(TRUE)
~ EXIT
END

IF ~~ THEN BEGIN 138 // from: 136.1
  SAY #34019 /* ~Elle te fait un signe de tête. "Merci. C'est un noble geste." Elle sourit légèrement. "Si d'aventure vous avez besoin de mon aide, vous me trouverez ici."~ */
  IF ~~ THEN REPLY #34020 /* ~"Merci, Grâce. Il se peut que cela arrive un de ces jours."~ */ EXIT
END

IF ~  GlobalGT("Grace","GLOBAL",0)
InParty("Grace")
!GlobalGT("Fortress_Grace","GLOBAL",2)
~ THEN BEGIN 139 // from: 205.10 206.2 213.1 214.1 215.0 216.1 217.1 218.0 239.1 240.3 248.1 249.4 250.2 251.0 267.1 268.1 270.3 271.2 272.1 273.4 274.2 276.0 279.8 280.5 281.9 284.1 286.1 287.3 288.2 289.3 290.3 291.4 292.3 293.3 294.4 295.2 296.4 297.4 298.4 299.3 300.4 301.1 302.3 303.1 304.3 305.2 307.1 308.2 309.3 310.3 311.3 312.2 313.2 314.1 316.2 317.1 319.2 320.3 321.2 322.2 323.4 324.1 325.2 326.2 327.3 328.2 329.1 330.6 331.2 332.1 333.1 334.1 335.5 336.1 337.3 338.3 339.1 343.1 344.2 345.2 346.2 347.2 357.5 359.2 360.1 361.1
  SAY #34021 /* ~"Oui ?"~ [FFG003] */
  IF ~  Global("Know_Grace_Succubus","GLOBAL",1)
~ THEN REPLY #34022 /* ~"Pouvez-vous me parler des tanar'ris ?"~ */ GOTO 206
  IF ~  !NearbyDialog("DAnnah")
!NearbyDialog("DMorte")
Global("Know_Grace_Succubus","GLOBAL",0)
CheckStatLT(Protagonist,15,CHR)
~ THEN REPLY #61947 /* ~"Ces ailes, dans votre dos… qu'est-ce que vous êtes ?"~ */ GOTO 214
  IF ~  NearbyDialog("DAnnah")
Global("Know_Grace_Succubus","GLOBAL",0)
CheckStatLT(Protagonist,15,CHR)
~ THEN REPLY #61948 /* ~"Ces ailes, dans votre dos… qu'est-ce que vous êtes ?"~ */ EXTERN ~DANNAH~ 308
  IF ~  !NearbyDialog("DAnnah")
NearbyDialog("DMorte")
Global("Know_Grace_Succubus","GLOBAL",0)
CheckStatLT(Protagonist,15,CHR)
~ THEN REPLY #61949 /* ~"Ces ailes, dans votre dos… qu'est-ce que vous êtes ?"~ */ EXTERN ~DMORTE~ 612
  IF ~  CheckStatGT(Protagonist,14,CHR)
!NearbyDialog("DAnnah")
!NearbyDialog("DMorte")
Global("Know_Grace_Succubus","GLOBAL",0)
~ THEN REPLY #61950 /* ~"Dame Grâce, pardon, mais… ces ailes, dans votre dos… vous n'êtes pas humaine, j'imagine ?"~ */ GOTO 214
  IF ~  CheckStatGT(Protagonist,14,CHR)
NearbyDialog("DAnnah")
Global("Know_Grace_Succubus","GLOBAL",0)
~ THEN REPLY #61951 /* ~"Dame Grâce, pardon, mais… ces ailes, dans votre dos… vous n'êtes pas humaine, j'imagine ?"~ */ EXTERN ~DANNAH~ 308
  IF ~  CheckStatGT(Protagonist,14,CHR)
!NearbyDialog("Dannah")
NearbyDialog("DMorte")
Global("Know_Grace_Succubus","GLOBAL",0)
~ THEN REPLY #61952 /* ~"Dame Grâce, pardon, mais… ces ailes, dans votre dos… vous n'êtes pas humaine, j'imagine ?"~ */ EXTERN ~DMORTE~ 612
  IF ~  Global("Grace_Name","GLOBAL",0)
~ THEN REPLY #61953 /* ~"Pourquoi est-ce que vous vous appelez 'Tombée-en-Disgrâce' ?"~ */ GOTO 239
  IF ~  Global("Grace_Name","GLOBAL",1)
Global("Grace_Name_Answer","GLOBAL",0)
~ THEN REPLY #61954 /* ~"Pourquoi est-ce que vous vous appelez 'Tombée-en-Disgrâce' ?"~ */ GOTO 245
  IF ~  Global("Grace_Name","GLOBAL",2)
Global("Grace_Name_Answer","GLOBAL",0)
~ THEN REPLY #61955 /* ~"Pourquoi est-ce que vous vous appelez 'Tombée-en-Disgrâce' ?"~ */ GOTO 246
  IF ~  Global("Grace_Name","GLOBAL",3)
Global("Grace_Name_Answer","GLOBAL",0)
~ THEN REPLY #61956 /* ~"Pourquoi est-ce que vous vous appelez 'Tombée-en-Disgrâce' ?"~ */ GOTO 247
  IF ~  Global("Grace_Name_Answer","GLOBAL",1)
~ THEN REPLY #61957 /* ~"Pourquoi est-ce que vous vous appelez 'Tombée-en-Disgrâce' ?"~ */ GOTO 248
  IF ~  GlobalGT("Know_Grace_Sensates","GLOBAL",0)
~ THEN REPLY #61958 /* ~"Pouvez-vous me dire ce que vous savez des Sensats ?"~ */ GOTO 216
  IF ~  Class(Protagonist,MAGE)
~ THEN REPLY #61959 /* ~"Pouvez-vous m'enseigner l'Art, Grâce ?"~ */ GOTO 267
  IF ~  NumInPartyLT(3)
~ THEN REPLY #61960 /* ~"Je voulais parler de nous…"~ */ GOTO 279
  IF ~  NumInPartyGT(2)
~ THEN REPLY #61961 /* ~"Je voulais parler de nos compagnons…"~ */ GOTO 279
  IF ~~ THEN REPLY #61962 /* ~"Vous arrive-t-il de vous servir d'armes ?"~ */ GOTO 349
  IF ~~ THEN REPLY #61963 /* ~"J'ai quelques questions sur nos voyages…"~ */ GOTO 205
  IF ~~ THEN REPLY #61964 /* ~"Peu importe. Allons-y."~ */ EXIT
END

IF ~~ THEN BEGIN 140 // from:
  SAY #39578 /* ~Grâce se tourne vers Yvonne. "Je n'ai rien à vous raconter aujourd'hui, Collectionneuse d'histoires. Je ne peux pas vous laisser épuiser ma réserve tant que je n'en aurai pas trouvé de nouvelles."~ */
  IF ~~ THEN REPLY #39755 /* ~Demande à un autre compagnon.~ */ EXTERN ~DYVES~ 20
  IF ~~ THEN REPLY #39756 /* ~"J'ai une histoire à partager avec toi, Yvonne."~ */ EXTERN ~DYVES~ 19
  IF ~~ THEN REPLY #39757 /* ~"Alors j'ai une question à te poser, Yvonne…"~ */ EXTERN ~DYVES~ 4
  IF ~~ THEN REPLY #39758 /* ~"Alors on y va. Au revoir, Yvonne."~ */ EXIT
END

IF ~~ THEN BEGIN 141 // from:
  SAY #42093 /* ~"Je crois qu'elle est devenue aveugle par choix et non par accident."~ */
  IF ~~ THEN EXTERN ~DYVANA~ 14
END

IF ~~ THEN BEGIN 142 // from:
  SAY #44259 /* ~"Bonjour, Maître Goncalves."~ */
  IF ~~ THEN EXTERN ~DGONCAL~ 23
END

IF ~~ THEN BEGIN 143 // from:
  SAY #44261 /* ~"Ma demande n'a rien d'urgent, Maître Goncalves ; votre savoir-faire demande du temps et je ne doute pas que ce qui sortira de vos mains sera superbe. Mais, je ne suis pas ici pour ça. L'homme qui est ici…" Tombée-en-Disgrâce s'incline vers toi. "… aimerait parler avec vous un moment…"~ */
  IF ~~ THEN DO ~SetGlobal("Goncalves","GLOBAL",2)
~ EXTERN ~DGONCAL~ 24
END

IF ~~ THEN BEGIN 144 // from:
  SAY #49782 /* ~Tombée-en-Disgrâce observe minutieusement l'homme. "Je crois avoir déjà entendu parler de ce type de spectacle. C'est courant sur un certain nombre de Mondes Primaires…" Elle baisse la voix pour que toi seul puisses l'entendre. "… et détesté sur bon nombre d'entre eux."~ */
  IF ~~ THEN REPLY #49783 /* ~Essaie de le toucher.~ */ EXTERN ~DMIME~ 2
  IF ~~ THEN REPLY #49784 /* ~Pars.~ */ EXIT
END

IF ~~ THEN BEGIN 145 // from:
  SAY #50078 /* ~"En fonction du type de fiélon dont il s'agit, je suis sûre qu'on peut le raisonner. Si c'est un baatezu, il acceptera de négocier sa liberté. Si c'est un tanar'ri, eh bien, on devra simplement trouver un argument valable en faveur de sa soumission." Elle sourit gentiment. "Tes armes devraient faire la différence."~ */
  IF ~~ THEN REPLY #50079 /* ~"Très bien. Dona Quisho, qu'est-ce que je dois faire ?"~ */ EXTERN ~DQUISHO~ 5
  IF ~~ THEN REPLY #50080 /* ~"Je ne suis pas pour la libération des fiélons enfermés."~ */ EXTERN ~DQUISHO~ 4
END

IF ~~ THEN BEGIN 146 // from:
  SAY #50147 /* ~"Je suppose que ce serait trop demander d'avoir une réponse claire."~ */
  IF ~~ THEN REPLY #50148 /* ~"Pouvez-vous lui poser une autre question ?"~ */ GOTO 147
  IF ~~ THEN REPLY #50252 /* ~"C'est tout ce que je voulais savoir. Au revoir."~ */ DO ~SetGlobal("Translate_Dabus","GLOBAL",0)
~ EXTERN ~DADABUS~ 6
END

IF ~~ THEN BEGIN 147 // from: 146.0 148.0 149.0 150.2
  SAY #50149 /* ~Tombée-en-Disgrâce acquiesce. "Oui, naturellement."~ */
  IF ~  Global("Know_Dabus_Speak","GLOBAL",0)
~ THEN REPLY #50150 /* ~"Demandez-lui qui il est."~ */ EXTERN ~DADABUS~ 11
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatLT(Protagonist,15,INT)
~ THEN REPLY #50239 /* ~"Demandez-lui qui il est."~ */ EXTERN ~DADABUS~ 12
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatGT(Protagonist,14,INT)
~ THEN REPLY #50240 /* ~"Demandez-lui qui il est."~ */ EXTERN ~DADABUS~ 13
  IF ~  Global("Know_Dabus_Speak","GLOBAL",0)
~ THEN REPLY #50241 /* ~"Demandez-lui ce qu'il fait."~ */ EXTERN ~DADABUS~ 14
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatLT(Protagonist,15,INT)
~ THEN REPLY #50242 /* ~"Demandez-lui ce qu'il fait."~ */ EXTERN ~DADABUS~ 15
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatGT(Protagonist,14,INT)
~ THEN REPLY #50243 /* ~"Demandez-lui ce qu'il fait."~ */ EXTERN ~DADABUS~ 16
  IF ~~ THEN REPLY #50244 /* ~"Demandez-lui de nous parler de la Dame des Douleurs."~ */ EXTERN ~DADABUS~ 10
  IF ~~ THEN REPLY #50245 /* ~"Demandez-lui de nous parler de Fell."~ */ GOTO 150
  IF ~~ THEN REPLY #50251 /* ~"Aucune importance. Partons d'ici."~ */ DO ~SetGlobal("Translate_Dabus","GLOBAL",0)
~ EXTERN ~DADABUS~ 6
END

IF ~~ THEN BEGIN 148 // from:
  SAY #50179 /* ~"Il dit qu'il est un 'dabus'." Grâce s'interrompt un moment. "J'ai rarement rencontré de dabus qui ait déjà donné leur nom… tout du moins, quelque chose qui s'apparente à un nom. Il semble qu'ils soient plus enclins à utiliser des symboles."~ */
  IF ~~ THEN REPLY #50180 /* ~"Pouvez-vous lui poser une autre question ?"~ */ GOTO 147
  IF ~~ THEN REPLY #50181 /* ~"C'est tout ce que je voulais savoir. Au revoir."~ */ DO ~SetGlobal("Translate_Dabus","GLOBAL",0)
~ EXTERN ~DADABUS~ 6
END

IF ~~ THEN BEGIN 149 // from:
  SAY #50193 /* ~"Il dit qu'il s'acquitte de ses tâches." Elle se tourne vers toi. "Ils passent la plupart de leur temps à réparer et à démanteler des portions entières de la ville. À maints égards, ce sont les gardiens de la ville."~ */
  IF ~~ THEN REPLY #50194 /* ~"Pouvez-vous lui poser une autre question ?"~ */ GOTO 147
  IF ~~ THEN REPLY #50195 /* ~"C'est tout ce que je voulais savoir. Au revoir."~ */ DO ~SetGlobal("Translate_Dabus","GLOBAL",0)
~ EXTERN ~DADABUS~ 6
END

IF ~~ THEN BEGIN 150 // from: 147.7
  SAY #50246 /* ~Grâce fronce les sourcils. "Je ne suis pas certaine qu'il serait sage de poser cette question. Cela peut offenser le dabus puisque Fell n'est plus un membre de leur communauté…"~ */
  IF ~~ THEN REPLY #50247 /* ~"Pouvez-vous tout de même lui poser la question ?"~ */ EXTERN ~DADABUS~ 17
  IF ~~ THEN REPLY #50248 /* ~"Inutile de me faire la leçon, contentez-vous de lui poser la question."~ */ DO ~MoraleDec("Grace",1)
~ EXTERN ~DADABUS~ 17
  IF ~~ THEN REPLY #50249 /* ~"Pouvez-vous lui poser une autre question ?"~ */ GOTO 147
  IF ~~ THEN REPLY #50250 /* ~"Aucune importance. Partons d'ici."~ */ DO ~SetGlobal("Translate_Dabus","GLOBAL",0)
~ EXTERN ~DADABUS~ 6
END

IF ~~ THEN BEGIN 151 // from:
  SAY #50686 /* ~"Je ne vois pas de quelle tâche vous voulez parler, Vrischika, même si votre présence ici soulève de nombreuses questions. Aux dernières nouvelles, vous étiez au service de la Compagnie du Vautour. Comment êtes-vous arrivée à Sigil ?"~ */
  IF ~~ THEN EXTERN ~DVRISCH~ 5
END

IF ~~ THEN BEGIN 152 // from:
  SAY #50687 /* ~Tombée-en-Disgrâce parle avec une froideur que tu ne lui connaissais pas. L'atmosphère devient presque glaciale alors qu'elle dissèque Vrischika du regard. "Ça suffit."~ */
  IF ~~ THEN EXTERN ~DVRISCH~ 6
END

IF ~~ THEN BEGIN 153 // from:
  SAY #50688 /* ~"C'est la vérité -"~ */
  IF ~~ THEN EXTERN ~DVRISCH~ 12
END

IF ~~ THEN BEGIN 154 // from:
  SAY #50689 /* ~"On peut se libérer des contrats baatezus à condition de se méfier de leur formulation et de savoir que les baatezus doivent tenir leurs engagements. On doit simplement se méfier de toute mauvaise interprétation de leur part… et je connais *bien* le langage et ses subtilités. Mais ça n'en reste pas moins difficile…"~ */
  IF ~~ THEN EXTERN ~DVRISCH~ 13
END

IF ~~ THEN BEGIN 155 // from:
  SAY #50690 /* ~Tombée-en-Disgrâce reste impassible et se contente de hocher la tête… mais lorsque ton regard croise le sien, tu remarques un brin d'exaspération, puis elle sourit.~ */
  IF ~~ THEN REPLY #50691 /* ~"Tu as dit qu'elle entraînait des agents ? Qu'est-ce que tu voulais dire par là, Vrischika ?"~ */ EXTERN ~DVRISCH~ 14
  IF ~~ THEN REPLY #50692 /* ~"J'avais une autre question, Vrischika…"~ */ EXTERN ~DVRISCH~ 7
  IF ~~ THEN REPLY #50693 /* ~"Je voudrais voir ta marchandise, Vrischika…"~ */ EXTERN ~DVRISCH~ 20
  IF ~~ THEN REPLY #50694 /* ~"C'est tout ce que je voulais savoir, Vrischika. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 156 // from:
  SAY #50695 /* ~"Ce n'est pas le but de mon établissement…"~ */
  IF ~~ THEN EXTERN ~DVRISCH~ 15
END

IF ~~ THEN BEGIN 157 // from:
  SAY #50696 /* ~"Il connaissait très bien la raison pour laquelle j'ai accepté de voyager avec lui, Vrischika… lorsqu'il m'a demandé de le faire."~ */
  IF ~~ THEN EXTERN ~DVRISCH~ 17
END

IF ~~ THEN BEGIN 158 // from:
  SAY #52554 /* ~"Ravel…" Grâce répond doucement. "J'ai accepté m-"~ */
  IF ~~ THEN EXTERN ~DRAVEL~ 37
END

IF ~~ THEN BEGIN 159 // from:
  SAY #52555 /* ~"Car l'amour ne le permettrait pas, et il peut plier les plus forts à sa volonté." La voix de Tombée-en-Disgrâce est douce, interrogative. "N'est-ce pas, Ravel ?"~ */
  IF ~~ THEN EXTERN ~DRAVEL~ 130
END

IF ~~ THEN BEGIN 160 // from:
  SAY #52556 /* ~"Toutes les créatures ont droit à ce sentiment, Ravel." Grâce parle doucement. "Mais les légendes ne donnent pas de vous une description compatissante, Ravel…"~ */
  IF ~~ THEN EXTERN ~DRAVEL~ 131
END

IF ~~ THEN BEGIN 161 // from:
  SAY #52557 /* ~"La Dame des Douleurs ? Vous avez essayé de *l'aider* ?"~ */
  IF ~~ THEN EXTERN ~DRAVEL~ 188
END

IF ~~ THEN BEGIN 162 // from:
  SAY #52558 /* ~"La Dame des Douleurs ? Vous avez essayé de *l'aider* ?"~ */
  IF ~~ THEN EXTERN ~DRAVEL~ 187
END

IF ~~ THEN BEGIN 163 // from:
  SAY #52559 /* ~Grâce ne dit rien. Elle semble observer attentivement Ravel… Tu as soudain l'impression que Grâce essaie de trouver les points faibles de Ravel.~ */
  IF ~~ THEN EXTERN ~DRAVEL~ 79
END

IF ~~ THEN BEGIN 164 // from:
  SAY #52560 /* ~Grâce se place soudain en position de combat et remue les mains, ses doigts en position défensive. Son expression ne change pas. Elle semble même l'avoir prévu.~ */
  IF ~~ THEN EXTERN ~DRAVEL~ 83
END

IF ~~ THEN BEGIN 165 // from:
  SAY #52971 /* ~Et soudain, Tombée-en-Disgrâce est là et son toucher est aussi délicat que la soie et elle essuie les larmes de tes yeux, tandis que tu sens les cris remonter en toi. Elle te fait signe de te taire, en tenant délicatement ton visage à travers tes larmes sanglantes.~ */
  IF ~~ THEN REPLY #52972 /* ~"Je… je… ne peux pas…. le supporter… Je… n'ai pas pu l'ARRÊTER, je le VOULAIS, mais je n'ai *rien* pu faire… !"~ */ GOTO 166
END

IF ~~ THEN BEGIN 166 // from: 165.0
  SAY #52973 /* ~Tombée-en-Disgrâce te regarde dans les yeux et fait un signe de tête triste, en signe de compréhension. "Et c'est la nature du *désir*. Le désir pour ce que vous ne pouvez pas changer ou posséder." Elle t'observe en retirant sa main, tâchée de ton sang. "Est-ce que ça va aller ?"~ */
  IF ~~ THEN REPLY #52974 /* ~"Oui… oui… j'ai besoin de quelques instants…"~ */ GOTO 167
END

IF ~~ THEN BEGIN 167 // from: 166.0
  SAY #52976 /* ~"Très bien…" Tombée-en-Disgrâce recule. "Nous continuerons lorsque vous serez prêt."~ */
  IF ~  Global("Memory_Deionarra_Longing","GLOBAL",0)
~ THEN REPLY #52977 /* ~Respire profondément, essaie de retrouver tes esprits. ~ */ DO ~SetGlobal("Memory_Deionarra_Longing","GLOBAL",1)
SetGlobal("Deionarra_SS_Grace","GLOBAL",1)
GiveExperience(Protagonist,2000)
~ EXTERN ~DF_SS_DE~ 34
  IF ~  GlobalGT("Memory_Deionarra_Longing","GLOBAL",0)
~ THEN REPLY #52978 /* ~Respire profondément, essaie de retrouver tes esprits. ~ */ DO ~SetGlobal("Deionarra_SS_Grace","GLOBAL",1)
~ EXTERN ~DF_SS_DE~ 34
END

IF ~~ THEN BEGIN 168 // from:
  SAY #54023 /* ~"Je suis arrivée jusqu'ici, et il serait impoli de partir avant la fin." Elle sourit légèrement. "Même si vous le demandiez poliment, je ne le permettrais pas."~ */
  IF ~  NearbyDialog("DAnnah")
GlobalLT("BD_ANNAH_MORALE","GLOBAL",16)
InParty("Annah")
~ THEN REPLY #54024 /* ~"Alors je crois que je n'ai pas le choix… Annah ?"~ */ EXTERN ~DANNAH~ 273
  IF ~  NearbyDialog("DAnnah")
GlobalGT("BD_ANNAH_MORALE","GLOBAL",15)
InParty("Annah")
~ THEN REPLY #54025 /* ~"Alors je crois que je n'ai pas le choix… Annah ?"~ */ EXTERN ~DANNAH~ 272
  IF ~  !InParty("annah")
NearbyDialog("Ddakkon")
GlobalLT("BD_DAKKON_MORALE","GLOBAL",6)
InParty("Dakkon")
~ THEN REPLY #54026 /* ~"Alors je crois que je n'ai pas le choix… Dak'kon ?"~ */ EXTERN ~DDAKKON~ 173
  IF ~  !InParty("annah")
NearbyDialog("DDakkon")
GlobalGT("BD_DAKKON_MORALE","GLOBAL",5)
InParty("Dakkon")
~ THEN REPLY #54027 /* ~"Alors je crois que je n'ai pas le choix… Dak'kon ?"~ */ EXTERN ~DDAKKON~ 172
  IF ~  !InParty("annah")
!InParty("dakkon")
NearbyDialog("Dmorte")
InParty("Morte")
Global("Morte_Quip_Regret_Portal","GLOBAL",0)
~ THEN REPLY #54028 /* ~"Alors je crois que je n'ai pas le choix… Morte ?"~ */ DO ~SetGlobal("Morte_Quip_Regret_Portal","GLOBAL",1)
~ EXTERN ~DMORTE~ 536
  IF ~  !InParty("annah")
!InParty("dakkon")
NearbyDialog("Dmorte")
InParty("Morte")
GlobalGT("Morte_Quip_Regret_Portal","GLOBAL",0)
~ THEN REPLY #54029 /* ~"Alors je crois que je n'ai pas le choix… Morte ?"~ */ EXTERN ~DMORTE~ 534
  IF ~  !NearbyDialog("DMorte")
~ THEN REPLY #54030 /* ~"Très bien… voyons ce qui se trouve de l'autre côté de ce portail."~ */ DO ~SetPortalCursor("Fort_Port",PORTAL_CURSOR_VISIBLE,TRUE)
SetPortalCursor("Fort_Port",PORTAL_ENABLED,TRUE)
~ EXIT
  IF ~  NearbyDialog("DMorte")
!InParty("Morte")
Global("Morte_Quip_Regret_Portal","GLOBAL",0)
~ THEN REPLY #54031 /* ~"Très bien… voyons ce qui se trouve de l'autre côté de ce portail."~ */ DO ~SetGlobal("Morte_Quip_Regret_Portal","GLOBAL",1)
~ EXTERN ~DMORTE~ 538
  IF ~  NearbyDialog("DMorte")
!InParty("Morte")
GlobalGT("Morte_Quip_Regret_Portal","GLOBAL",0)
~ THEN REPLY #54032 /* ~"Très bien… voyons ce qui se trouve de l'autre côté de ce portail."~ */ DO ~SetPortalCursor("Fort_Port",PORTAL_CURSOR_VISIBLE,TRUE)
SetPortalCursor("Fort_Port",PORTAL_ENABLED,TRUE)
~ EXIT
END

IF ~~ THEN BEGIN 169 // from:
  SAY #54033 /* ~"C'est à cause de ce que Ravel a dit dans le dédale." La voix de Grâce est douce, si douce que tu ne l'as presque pas perçue. "N'est-ce pas, Morte ?"~ */
  IF ~~ THEN EXTERN ~DMORTE~ 562
END

IF ~~ THEN BEGIN 170 // from:
  SAY #54034 /* ~"C'est à cause de ce que Ravel a dit dans le dédale. Et le symbole que Fell nous a décrit." La voix de Grâce est douce, si douce que tu ne l'as presque pas perçue. "N'est-ce pas, Morte ?"~ */
  IF ~~ THEN EXTERN ~DMORTE~ 563
END

IF ~~ THEN BEGIN 171 // from:
  SAY #54067 /* ~"Annah, je suis si désolée…"~ */
  IF ~~ THEN EXTERN ~DANNAH~ 268
END

IF ~~ THEN BEGIN 172 // from:
  SAY #54068 /* ~"Le Pilier des Crânes est un pilier de têtes vivantes, composé de ceux dont les mensonges ont provoqué la mort d'autres personnes. Il peut répondre à un grand nombre de questions car son savoir est grand, mais le prix à payer pour ses services est très élevé. On ne doit pas lui poser ce genre de questions."~ */
  IF ~~ THEN EXTERN ~DPILLAR~ 14
END

IF ~~ THEN BEGIN 173 // from:
  SAY #54069 /* ~Tombée-en-Disgrâce semble indifférente à ta déclaration et regarde simplement dans ta direction depuis le pilier. "Je ne laisserai jamais le Pilier des Crânes me prendre de mon plein gré… mais je suis certaine que vous savez cela et que vous plaisantez. Vous ne devriez pas railler ainsi le pilier…"~ */
  IF ~~ THEN REPLY #54070 /* ~Vérité : "Je suis sérieux. Rentrez là-dedans, Grâce, ou je vous y pousserai moi-même."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Pillar_3","GLOBALGood",-1)
MoraleDec("Grace",3)
~ GOTO 174
  IF ~  NearbyDialog("Dannah")
~ THEN REPLY #54071 /* ~"Très bien. Quel *autre* cadeau es-tu prêt à accepter, Pilier ?"~ */ EXTERN ~DPILLAR~ 22
  IF ~  !NearbyDialog("Dannah")
~ THEN REPLY #54072 /* ~"Très bien. Quel *autre* cadeau es-tu prêt à accepter, Pilier ?"~ */ EXTERN ~DPILLAR~ 23
  IF ~  NearbyDialog("Dmorte")
~ THEN REPLY #54073 /* ~"*Bien sûr* que je plaisantais. Partons."~ */ DO ~SetGlobal("Pillar_Question","AR1001",0)
~ EXTERN ~DPILLAR~ 50
  IF ~  !NearbyDialog("Dmorte")
~ THEN REPLY #54074 /* ~"*Bien sûr* que je plaisantais. Partons."~ */ DO ~SetGlobal("Pillar_Question","AR1001",0)
~ EXIT
END

IF ~~ THEN BEGIN 174 // from: 173.0
  SAY #54075 /* ~Grâce s'arrête et te regarde attentivement. "Êtes-vous certain que c'est ce que vous désirez faire ? Me jetteriez-vous vraiment dans le Pilier des Crânes ?"~ */
  IF ~~ THEN REPLY #54076 /* ~"Oui."~ */ GOTO 175
  IF ~  NearbyDialog("Dannah")
~ THEN REPLY #54077 /* ~"Bien sûr que non. Pilier : quel *autre* cadeau es-tu prêt à accepter ?"~ */ EXTERN ~DPILLAR~ 22
  IF ~  !NearbyDialog("Dannah")
~ THEN REPLY #54078 /* ~"Bien sûr que non. Pilier : quel *autre* cadeau es-tu prêt à accepter ?"~ */ EXTERN ~DPILLAR~ 23
  IF ~  NearbyDialog("Dmorte")
~ THEN REPLY #54079 /* ~"Bien sûr que non. Partons."~ */ DO ~SetGlobal("Pillar_Question","AR1001",0)
~ EXTERN ~DPILLAR~ 50
  IF ~  !NearbyDialog("Dmorte")
~ THEN REPLY #54080 /* ~"Bien sûr que non. Partons."~ */ DO ~SetGlobal("Pillar_Question","AR1001",0)
~ EXIT
END

IF ~~ THEN BEGIN 175 // from: 174.0
  SAY #54082 /* ~Les yeux de Tombée-en-Disgrâce deviennent durs et froids comme de la glace, bien que l'expression de son visage demeure calme. "Alors je dois vous dire au revoir, Sans-nom. Si d'aventure vous sortez de Baator, peut-être nos chemins se croiseront-ils à nouveau." Sur ces mots, elle commence à se dissiper dans une brume verdâtre.~ */
  IF ~~ THEN REPLY #54083 /* ~"Grâce…"~ */ DO ~SetGlobal("Pillar_Question","AR1001",0)
StartCutSceneMode()
StartCutSceneEx("1001Cut2",FALSE)
~ EXIT
END

IF ~~ THEN BEGIN 176 // from:
  SAY #54765 /* ~Grâce soupire. "Un deva. Mais ces chaînes semblent moins le ligoter que moucher la flamme de son esprit…"~ */
  IF ~~ THEN EXTERN ~DDAKKON~ 185
END

IF ~~ THEN BEGIN 177 // from:
  SAY #54766 /* ~Grâce soupire. "Un deva. Mais ces chaînes semblent moins le ligoter que moucher la flamme de son esprit…"~ */
  IF ~~ THEN REPLY #54874 /* ~"Deva, j'ai quelques questions à te poser…"~ */ EXTERN ~DTRIAS~ 9
END

IF ~~ THEN BEGIN 178 // from:
  SAY #54767 /* ~"Je n'avais pas l'intention de vous tenter, deva. Je crains que votre isolement ne vous ait sérieusement ébranlé."~ */
  IF ~~ THEN EXTERN ~DTRIAS~ 34
END

IF ~~ THEN BEGIN 179 // from:
  SAY #54768 /* ~"Je ne suis pas d'accord, Seigneur Trias. Vous avez simplement exagéré votre confiance en eux."~ */
  IF ~~ THEN EXTERN ~DTRIAS~ 46
END

IF ~~ THEN BEGIN 180 // from:
  SAY #54769 /* ~Tombée-en-Disgrâce intervient brusquement. "Que pensez-vous de la Guerre Sanglante, Seigneur Trias ?"~ */
  IF ~~ THEN EXTERN ~DTRIAS~ 47
END

IF ~~ THEN BEGIN 181 // from:
  SAY #54770 /* ~Tombée-en-Disgrâce dit, d'une voix calme : "Êtes-vous sûr que c'est cela que vous voulez ? Ce deva est peut-être votre seule chance de retrouver vos souvenirs. La guenaude nous envoie à lui ; allez-vous l'abattre avant qu'il ne révèle ses secrets ?"~ */
  IF ~~ THEN REPLY #54875 /* ~Frappe sur les chaînes du deva.~ */ EXTERN ~DTRIAS~ 50
  IF ~~ THEN REPLY #54876 /* ~Abats le deva.~ */ EXTERN ~DTRIAS~ 98
  IF ~~ THEN REPLY #54877 /* ~Pars.~ */ EXIT
END

IF ~~ THEN BEGIN 182 // from:
  SAY #54771 /* ~"Pensez-vous arrêter la Guerre Sanglante en l'étendant aux portes du Paradis ? Le mal qui règne dans les Plans Inférieurs est quasi infini. Les légions de Baator et des Abysses en sont le reflet. Avant de vous armer d'une simple arrogance pompeuse, songez donc au terrible pouvoir du mal infini qui vise un seul et unique but. Si vous leur offrez un prétexte pour étendre la Guerre Sanglante aux Plans Supérieurs, le multivers souffrira."~ */
  IF ~~ THEN EXTERN ~DTRIAS~ 78
END

IF ~~ THEN BEGIN 183 // from:
  SAY #54772 /* ~"On apprend à tout instant si l'on est assez attentif, mon seigneur. Il serait bon de se rappeler qu'un homme sage ne perd pas une occasion de s'instruire."~ */
  IF ~~ THEN EXTERN ~DTRIAS~ 79
END

IF ~~ THEN BEGIN 184 // from:
  SAY #55712 /* ~"Laissons les critiques de Morte… En réalité, Méchanus est un lieu fascinant. Point de ciel… seulement de grands engrenages qui tournent dans l'espace et projettent de la lumière selon leurs cycles… Un spectacle saisissant. La logique et l'ordre qui règnent dans le plan peuvent avoir un effet apaisant, et il y largement de quoi faire pour soulager son ennui si on sait où aller et comment."~ */
  IF ~~ THEN EXTERN ~DMORTE~ 577
END

IF ~~ THEN BEGIN 185 // from:
  SAY #55714 /* ~"Les modrones partagent la même 'énergie'. En quelque sorte, cette énergie leur sert à tous de lien. Quand l'un d'eux meurt, l'énergie est récupérée dans un bassin commun, et un nouveau modrone est créé à partir de cette énergie. Si un modrone devient un… renégat, il rompt le lien avec ceux de son espèce et emporte avec lui une petite partie de l'énergie."~ */
  IF ~  CheckStatGT(Protagonist,15,INT)
~ THEN REPLY #55715 /* ~"Selon vous, Nordom fait partie de cette Source, mais il en est coupé. Et quand un modrone meurt, il est réabsorbé. Est-ce que ce sera le cas pour Nordom ?"~ */ GOTO 188
  IF ~~ THEN REPLY #55717 /* ~"Alors… Nordom, ce Méchanus est une source d'énergie ?~ */ EXTERN ~DNORDOM~ 67
  IF ~~ THEN REPLY #55719 /* ~"Je vois. Nordom, j'ai encore quelques questions à te poser…"~ */ EXTERN ~DNORDOM~ 74
  IF ~~ THEN REPLY #55720 /* ~"C'est tout ce que je voulais savoir. Perdons pas de temps."~ */ EXIT
END

IF ~~ THEN BEGIN 186 // from:
  SAY #55722 /* ~Tombée-en-Disgrâce acquiesce d'un signe de tête. "Morte a raison : les modrones partagent la même 'énergie'. En quelque sorte, cette énergie leur sert à tous de lien. Quand l'un d'eux meurt, l'énergie est récupérée dans un bassin commun, et un nouveau modrone est créé à partir de cette énergie. Si un modrone devient un… renégat, il rompt le lien avec ceux de son espèce et emporte avec lui une petite partie de l'énergie."~ */
  IF ~~ THEN EXTERN ~DMORTE~ 579
END

IF ~~ THEN BEGIN 187 // from:
  SAY #55723 /* ~Tombée-en-Disgrâce acquiesce d'un léger signe de tête. "Pardon, Morte. Je ne voulais pas t'offenser."~ */
  IF ~~ THEN REPLY #55725 /* ~"Morte, j'ai besoin de toutes les informations possibles, alors ne commence pas tes querelles de clocher ! Si Tombée-en-Disgrâce a quelque chose à ajouter, je veux l'*entendre*, d'accord ?"~ */ EXTERN ~DMORTE~ 580
  IF ~  CheckStatGT(Protagonist,15,INT)
~ THEN REPLY #55727 /* ~"Selon vous, Nordom fait partie de cette Source, mais il en est coupé. Et quand un modrone meurt, il est réabsorbé. Est-ce que ce sera le cas pour Nordom ?"~ */ EXTERN ~DMORTE~ 583
  IF ~~ THEN REPLY #55729 /* ~"Alors… Nordom, ce Méchanus est une source d'énergie ?~ */ EXTERN ~DNORDOM~ 67
  IF ~~ THEN REPLY #55730 /* ~"D'accord.  Nordom, j'ai encore quelques questions à te poser…"~ */ EXTERN ~DNORDOM~ 74
  IF ~~ THEN REPLY #55731 /* ~"C'est tout ce que je voulais savoir. Perdons pas de temps."~ */ EXIT
END

IF ~~ THEN BEGIN 188 // from: 185.0
  SAY #55733 /* ~"C'est vrai."~ */
  IF ~~ THEN REPLY #55735 /* ~"Et s'il meurt, un autre Nordom est créé." ~ */ GOTO 189
END

IF ~~ THEN BEGIN 189 // from: 188.0
  SAY #55736 /* ~"L'énergie de Nordom retournera à la Source, mais Nordom cessera d'exister. Un autre modrone tétradrone sera alors créé pour le remplacer."~ */
  IF ~~ THEN REPLY #55738 /* ~"Alors… en devenant renégat, il est devenu… mortel ?"~ */ GOTO 190
END

IF ~~ THEN BEGIN 190 // from: 189.0
  SAY #55739 /* ~Tombée-en-Disgrâce acquiesce d'un signe de tête. "À ma connaissance, l'énergie brute est indestructible… Mais c'est vrai, Nordom en tant qu'individu, en tant que 'Nordom' cesserait d'exister."~ */
  IF ~~ THEN REPLY #55742 /* ~"D'accord.  Nordom, j'ai encore quelques questions à te poser…"~ */ EXTERN ~DNORDOM~ 74
  IF ~~ THEN REPLY #55743 /* ~"C'est tout ce que je voulais savoir. Perdons pas de temps."~ */ EXTERN ~DMORTE~ 582
END

IF ~~ THEN BEGIN 191 // from:
  SAY #55745 /* ~"Morte…" Tombée-en-Disgrâce intervient doucement. "J'avoue que sans la base initiale de tes informations, j'aurais eu bien du mal à expliquer la situation… Très souvent, tes métaphores et ta syntaxe permettent aux autres de comprendre tes explications *beaucoup* plus facilement. Cela fait de toi un bien meilleur pédagogue que moi."~ */
  IF ~~ THEN EXTERN ~DMORTE~ 582
END

IF ~~ THEN BEGIN 192 // from:
  SAY #56035 /* ~"Bonjour à vous, Avocat Infernal Langue-fourchue." Grâce fait un léger salut de la tête. "Je prendrai votre suggestion en considération."~ */
  IF ~~ THEN EXTERN ~DFHJULL~ 29
END

IF ~~ THEN BEGIN 193 // from:
  SAY #56036 /* ~Grâce semble stupéfaite. "L'Avocat Infernal Langue-fourchue insinue-t-il que nous, tanar'ris, sommes un peuple grossier ?"~ */
  IF ~~ THEN EXTERN ~DFHJULL~ 61
END

IF ~~ THEN BEGIN 194 // from:
  SAY #56037 /* ~"Je suppose que vos objections concernent la simple mise en œuvre du mal, pas son degré. Beaucoup parmi les tanar'ris diraient que plus on est proche de la nature primitive du mal, plus on est fidèle à l'idéal."~ */
  IF ~~ THEN EXTERN ~DFHJULL~ 62
END

IF ~~ THEN BEGIN 195 // from:
  SAY #56038 /* ~"D'un point de vue baatezu, cela peut en effet paraître intolérable. Pourtant… Avocat, bien des philosophes tanar'ris argueraient que les baatezus ne trouvent pas moins d'excuse pour avoir retranché la passion de la violence, retranché la passion de l'essence même du mal. Les baatezus remplaceraient la furie par une cruauté froide et méthodique. Bref, on revient à l'éternel débat : quel est le plus grand mal ? Le mal efficace ou le mal passionné ?~ */
  IF ~~ THEN EXTERN ~DFHJULL~ 63
END

IF ~~ THEN BEGIN 196 // from:
  SAY #56683 /* ~"Je connais la justice, Vhailor. Je l'allie à l'expérience et à la sagesse. Alliée à ces deux vérités, la justice devient plus *forte*. Je connais aussi la pitié et le pardon, car sans eux, les plans seraient un endroit bien plus cruel."~ */
  IF ~~ THEN EXTERN ~DVHAIL~ 111
END

IF ~~ THEN BEGIN 197 // from:
  SAY #56688 /* ~"Non, Vhailor. Ce sont des instruments qui peuvent servir à racheter une autre âme, à l'élever et à la raffermir. Ainsi, le *multivers* trouve plus de force. C'est là que se trouve la perfection dont vous parlez."~ */
  IF ~~ THEN EXTERN ~DVHAIL~ 112
END

IF ~~ THEN BEGIN 198 // from:
  SAY #56689 /* ~Tombée-en-Disgrâce se redresse à ces paroles. "*Vraiment*, Vhailor ? Alors *jugez*-moi avec vos yeux, voyez si je manque de zèle. Voyez si vous trouvez la faiblesse qui, à vous en croire, me dévore."~ */
  IF ~~ THEN DO ~SetAnimState("Vhail",ANIM_MIMESTAND)
~ EXTERN ~DVHAIL~ 113
END

IF ~~ THEN BEGIN 199 // from:
  SAY #56690 /* ~"Sur ce point, nous sommes en désaccord, Vhailor."~ */
  IF ~~ THEN REPLY #56691 /* ~"Vhailor, passons à quelqu'un d'autre."~ */ EXTERN ~DVHAIL~ 91
  IF ~~ THEN REPLY #56692 /* ~"En voilà assez… Vhailor. J'ai encore des questions à te poser…"~ */ EXTERN ~DVHAIL~ 35
  IF ~  !InParty("Vhail")
~ THEN REPLY #56693 /* ~"C'est ici que nos chemins se séparent, Vhailor. Au revoir."~ */ EXIT
  IF ~  InParty("Vhail")
~ THEN REPLY #56694 /* ~"Peu importe, Vhailor. Poursuivons."~ */ EXIT
END

IF ~~ THEN BEGIN 200 // from:
  SAY #56695 /* ~"Cessez cet interrogatoire, Vhailor." Tombée-en-Disgrâce prononce ces paroles sans la moindre menace, mais elles semblent pourtant receler un danger. "Ce n'est pas un tribunal, et vous n'allez pas lui faire un procès en ma présence. Laissez-la tranquille."~ */
  IF ~~ THEN EXTERN ~DVHAIL~ 101
END

IF ~~ THEN BEGIN 201 // from:
  SAY #56696 /* ~"Pour ce faire, Vhailor, vous devez en passer par moi. Je ne tolérerai pas qu'on lui fasse tort."~ */
  IF ~~ THEN EXTERN ~DVHAIL~ 102
END

IF ~~ THEN BEGIN 202 // from:
  SAY #61423 /* ~Grâce hoche la tête. "Je reviens dans un petit instant." Puis elle se tourne et s'éloigne.~ */
  IF ~~ THEN REPLY #61424 /* ~Suis la prostituée…~ */ DO ~FadeToColor([20.0],0)
Wait(3)
FadeFromColor([20.0],0)
~ EXTERN ~DUCHO~ 8
END

IF ~~ THEN BEGIN 203 // from: 121.0 121.1 121.4
  SAY #61635 /* ~Tombée-en-Disgrâce hoche la tête. "Bien. Je voyagerai avec vous, si vous voulez toujours de ma compagnie."~ */
  IF ~~ THEN REPLY #61642 /* ~"Oui."~ */ DO ~AddexperienceParty(20000)
SetGlobal("Grace_Quest","GLOBAL",2)
SetGlobal("Grace","GLOBAL",2)
ChangeAIScript("",GENERAL)
ChangeAIScript("pcgrace",DEFAULT)
JoinPartyEx(TRUE)
~ EXIT
END

IF ~~ THEN BEGIN 204 // from: 121.2 121.3
  SAY #61641 /* ~"Ah !" Tombée-en-Disgrâce a un petit rire et ses yeux brillent. "Une idée des plus pragmatiques. Très bien… Je voyagerai avec vous, si vous voulez toujours de ma compagnie."~ */
  IF ~~ THEN REPLY #61643 /* ~"Oui."~ */ DO ~AddexperienceParty(20000)
SetGlobal("Grace_Quest","GLOBAL",2)
SetGlobal("Grace","GLOBAL",2)
ChangeAIScript("",GENERAL)
ChangeAIScript("pcgrace",DEFAULT)
JoinPartyEx(TRUE)
~ EXIT
END

IF ~~ THEN BEGIN 205 // from: 139.17 207.3 208.3 209.2 210.1 211.2 212.1 219.4 220.3 221.3 222.3 223.4 224.5 225.5 226.5 227.4 228.4 229.1 230.1 231.1 233.1 234.3 235.3 236.3 237.2 252.3 253.3 254.2 255.4 256.2 257.2 258.2 259.2 260.2 261.1 262.3 264.2 266.0 277.1 278.0 348.0 349.1 350.0 351.1 352.1 353.1 354.1 355.1 356.0
  SAY #61781 /* ~"Oui ?"~ */
  IF ~~ THEN REPLY #61974 /* ~"Pourquoi avez-vous fondé la Maison de tolérance ?"~ */ GOTO 207
  IF ~~ THEN REPLY #61975 /* ~"Puis-je lire votre journal ?"~ */ GOTO 277
  IF ~  Global("Know_Yves_Grace","GLOBAL",1)
Global("Grace_History","GLOBAL",0)
~ THEN REPLY #61976 /* ~"Yvonne dit que vous refusez de lui raconter votre histoire."~ */ GOTO 351
  IF ~  Global("Grace_History","GLOBAL",1)
~ THEN REPLY #61977 /* ~"J'aimerais que vous me parliez de nouveau de votre passé."~ */ GOTO 352
  IF ~  GlobalGT("Know_Grace_ExSlave","GLOBAL",0)
~ THEN REPLY #61978 /* ~"Vrischika n'a pas l'air de vous aimer beaucoup."~ */ GOTO 255
  IF ~  GlobalGT("Torment_Fell","GLOBAL",0)
~ THEN REPLY #61979 /* ~"Pouvez-vous me parler de ce symbole sur mon bras ?"~ */ GOTO 348
  IF ~  Global("Know_Ravel","GLOBAL",1)
Global("Ravel","GLOBAL",0)
Global("Grace_Ravel_Answer","GLOBAL",0)
~ THEN REPLY #61980 /* ~"Avez-vous déjà entendu parler d'une guenaude noire appelée Ravel?"~ */ GOTO 229
  IF ~  Global("Know_Ravel","GLOBAL",1)
Global("Ravel","GLOBAL",0)
Global("Grace_Ravel_Answer","GLOBAL",1)
~ THEN REPLY #61981 /* ~"Vous pouvez me répéter ce que vous savez de Ravel ?"~ */ GOTO 234
  IF ~  Global("Know_Blood_War","GLOBAL",1)
~ THEN REPLY #61982 /* ~"Qu'est-ce que vous savez de la Guerre Sanglante ?"~ */ GOTO 219
  IF ~  GlobalGT("Ravel_Grace","GLOBAL",0)
~ THEN REPLY #61983 /* ~"Comment vous êtes-vous retrouvée à Sigil ?"~ */ GOTO 263
  IF ~~ THEN REPLY #61984 /* ~"En fait, j'ai d'autres questions à la place…"~ */ GOTO 139
  IF ~~ THEN REPLY #61985 /* ~"Peu importe. Allons-y."~ */ EXIT
END

IF ~~ THEN BEGIN 206 // from: 139.0
  SAY #61782 /* ~"Les tanar'ris sont des fiélons que certains appellent les 'démons'. Ils suivent la voie du mal par le chaos et vivent sur les plans empoisonnés des Abysses où ils se repaissent de leur propre rage et depuis lesquels ils partent dans le multivers pour souiller tout ce qu'ils touchent. Ils essaient sans répit d'amener les autres à commettre des crimes passionnels ou à s'adonner à des vices."~ */
  IF ~~ THEN REPLY #61986 /* ~"Et vous êtes une tanar'ri?"~ */ GOTO 213
  IF ~  Global("Grace_History","GLOBAL",0)
~ THEN REPLY #61987 /* ~"Comment vous êtes-vous retrouvée à Sigil ?"~ */ GOTO 352
  IF ~~ THEN REPLY #61988 /* ~"Je vois. Puis-je vous poser d'autres questions ?"~ */ GOTO 139
  IF ~~ THEN REPLY #61989 /* ~"Merci de vos explications… allons-y."~ */ EXIT
END

IF ~~ THEN BEGIN 207 // from: 205.0
  SAY #61783 /* ~"J'ai créé la Maison pour donner aux fièvres du désir d'autres exutoires que la chair. On peut aussi prendre du plaisir à converser et à participer à des joutes verbales."~ */
  IF ~  Global("Grace_Brothel_Answer","GLOBAL",1)
~ THEN REPLY #61991 /* ~"Mais pourquoi avoir fondé cet établissement ?"~ */ GOTO 210
  IF ~  Global("Grace_Brothel_Answer","GLOBAL",0)
~ THEN REPLY #61992 /* ~"Mais pourquoi avoir fondé cet établissement ?"~ */ GOTO 208
  IF ~  Global("Grace_History","GLOBAL",0)
~ THEN REPLY #61993 /* ~"Si vous venez des Abysses, comment vous êtes-vous retrouvée à Sigil ?"~ */ GOTO 352
  IF ~~ THEN REPLY #61994 /* ~"Je vois. Puis-je vous poser d'autres questions ?"~ */ GOTO 205
  IF ~~ THEN REPLY #61995 /* ~"Merci de vos explications… allons-y."~ */ EXIT
END

IF ~~ THEN BEGIN 208 // from: 207.1
  SAY #61784 /* ~Tombée-en-Disgrâce lève un sourcil. "Drôle de question." Elle fronce les sourcils. "Je doute qu'on me l'ait déjà posée. Du moins d'une manière aussi directe."~ */
  IF ~  CheckStatGT(Protagonist,14,CHR)
~ THEN REPLY #61996 /* ~"Pardon, Dame Grâce. Je ne voulais pas me montrer brutal. Simple curiosité."~ */ GOTO 209
  IF ~~ THEN REPLY #61997 /* ~"Alors… pourquoi ?"~ */ DO ~SetGlobal("Know_Grace_Sensates","GLOBAL",1)
~ GOTO 210
  IF ~  Global("Know_Grace_Succubus","GLOBAL",1)
~ THEN REPLY #61998 /* ~"Je trouve bizarre qu'une succube ait fondé un tel établissement… son but paraît opposé à votre propre nature."~ */ DO ~SetGlobal("Know_Grace_Sensates","GLOBAL",1)
SetGlobal("Grace_Brothel_Answer","GLOBAL",1)
~ GOTO 210
  IF ~~ THEN REPLY #62000 /* ~"Peu importe. Puis-je vous poser d'autres questions?"~ */ GOTO 205
  IF ~~ THEN REPLY #62002 /* ~"Oubliez les explications… allons-y."~ */ EXIT
END

IF ~~ THEN BEGIN 209 // from: 208.0
  SAY #61990 /* ~"Oh, vous n'avez pas à vous excuser. Je serai ravie de discuter des raisons de la création de cette maison avec vous."~ */
  IF ~~ THEN REPLY #62011 /* ~"J'aimerais les entendre, oui."~ */ DO ~SetGlobal("Know_Grace_Sensates","GLOBAL",1)
SetGlobal("Grace_Brothel_Answer","GLOBAL",1)
~ GOTO 210
  IF ~  Global("Know_Grace_Succubus","GLOBAL",1)
~ THEN REPLY #62012 /* ~"Je trouve bizarre qu'une succube ait fondé un tel établissement… son but paraît opposé à votre propre nature."~ */ DO ~SetGlobal("Know_Grace_Sensates","GLOBAL",1)
SetGlobal("Grace_Brothel_Answer","GLOBAL",1)
~ GOTO 210
  IF ~~ THEN REPLY #62015 /* ~"Pas pour le moment. Puis-je vous poser quelques autres questions ?"~ */ GOTO 205
  IF ~~ THEN REPLY #62016 /* ~"Peut-être une autre fois… allons-y."~ */ EXIT
END

IF ~~ THEN BEGIN 210 // from: 207.0 208.1 208.2 209.0 209.1
  SAY #62004 /* ~"Pour répondre à votre question, vous devez savoir que je suis membre de la Société des Sensations. Notre faction pense qu'il faut avoir le plus d'expériences possible du multivers."~ */
  IF ~~ THEN REPLY #62006 /* ~"Et c'est pour ça que vous avez fondé la Maison de tolérance ?"~ */ GOTO 211
  IF ~~ THEN REPLY #62008 /* ~"Pas pour le moment. Puis-je vous poser d'autres questions?"~ */ GOTO 205
  IF ~~ THEN REPLY #62010 /* ~"Merci de tes explications… allons-y."~ */ EXIT
END

IF ~~ THEN BEGIN 211 // from: 210.0
  SAY #62017 /* ~"La Maison est conçue pour étancher la soif de l'intellectuel le plus endurci, pour stimuler l'esprit, pour accroître la conscience que l'on a de soi et des autres, pour créer de nouvelles façons d'*appréhender* l'autre. Elle s'adresse à ceux qui recherchent autre chose que les plaisirs superficiels de la Ruche et du Bas Quartier."~ */
  IF ~  GlobalGT("Banged_Harlot","GLOBAL",0)
~ THEN REPLY #62018 /* ~"Oh, je ne dirais pas qu'ils sont superfi… euh, pardon, je comprends. La Maison, c'était donc une sorte d'école ?"~ */ GOTO 212
  IF ~  Global("Banged_Harlot","GLOBAL",0)
~ THEN REPLY #62019 /* ~"Je vois. Cet établissement encourage les échanges intellectuels plutôt que les, euh… *autres* types d'échanges. La Maison, c'était donc une sorte d'école ?"~ */ GOTO 212
  IF ~~ THEN REPLY #62020 /* ~"Je peux vous poser d'autres questions?"~ */ GOTO 205
  IF ~~ THEN REPLY #62021 /* ~"Merci de vos explications… allons-y."~ */ EXIT
END

IF ~~ THEN BEGIN 212 // from: 211.0 211.1
  SAY #62023 /* ~"Oui. J'espère qu'en apprenant l'art du langage et ses subtilités les clients et les étudiantes se connaîtront mieux. On n'est jamais limité que par sa propre maîtrise du langage. Pouvoir en user comme d'un outil capable d'éveiller des émotions chez l'autre est un don immense."~ */
  IF ~  Global("Grace_History","GLOBAL",0)
~ THEN REPLY #62024 /* ~"Si vous venez des Abysses, comment vous êtes-vous retrouvée à Sigil ?"~ */ GOTO 352
  IF ~~ THEN REPLY #62025 /* ~"Je vois. Puis-je vous poser d'autres questions ?"~ */ GOTO 205
  IF ~~ THEN REPLY #62026 /* ~"Merci de vos explications… allons-y."~ */ EXIT
END

IF ~~ THEN BEGIN 213 // from: 206.0
  SAY #62027 /* ~"C'est exact. Je suis une tanar'ri mineure, plus précisément une succube." Elle pousse un léger soupir. "Je crains que nous ne soyons trop répandues dans les Plans Inférieurs - et ailleurs - pour notre bien. Les individus de ma race passent en général leur temps à séduire les mortels par l'entremise des plaisirs de la chair."~ */
  IF ~~ THEN REPLY #62028 /* ~"Et vous… ?"~ */ DO ~SetGlobal("Know_Grace_Succubus","GLOBAL",1)
~ JOURNAL #27466 /* ~Tombée-en-Disgrâce m'a dit qu'elle était une succube, une 'tanar'ri mineure', l'un des fiélons qui errent dans les Plans Inférieurs. Apparemment, sa race recherche des mortels et les séduit, emportant leurs âmes dans les Abysses. Charmant.~ */ GOTO 215
  IF ~~ THEN REPLY #62029 /* ~"Je vois. Puis-je vous poser d'autres questions ?"~ */ DO ~SetGlobal("Know_Grace_Succubus","GLOBAL",1)
~ JOURNAL #27466 /* ~Tombée-en-Disgrâce m'a dit qu'elle était une succube, une 'tanar'ri mineure', l'un des fiélons qui errent dans les Plans Inférieurs. Apparemment, sa race recherche des mortels et les séduit, emportant leurs âmes dans les Abysses. Charmant.~ */ GOTO 139
  IF ~~ THEN REPLY #62030 /* ~"C'est entendu. Allons-y."~ */ DO ~SetGlobal("Know_Grace_Succubus","GLOBAL",1)
~ JOURNAL #27466 /* ~Tombée-en-Disgrâce m'a dit qu'elle était une succube, une 'tanar'ri mineure', l'un des fiélons qui errent dans les Plans Inférieurs. Apparemment, sa race recherche des mortels et les séduit, emportant leurs âmes dans les Abysses. Charmant.~ */ EXIT
END

IF ~~ THEN BEGIN 214 // from: 139.1 139.4
  SAY #62031 /* ~"C'est exact. Je suis une tanar'ri mineure, plus précisément une succube." Elle pousse un léger soupir. "Je crains que nous ne soyons trop répandues dans les Plans Inférieurs - et ailleurs - pour notre bien. Les individus de ma race passent en général leur temps à séduire les mortels par l'entremise des plaisirs de la chair."~ */
  IF ~~ THEN REPLY #62032 /* ~"Et vous… ?"~ */ DO ~SetGlobal("Know_Grace_Succubus","GLOBAL",1)
~ JOURNAL #27465 /* ~Tombée-en-Disgrâce m'a dit qu'elle était une succube, une 'tanar'ri mineure', l'un des fiélons qui errent dans les Plans Inférieurs. Apparemment, sa race recherche des mortels et les séduit, emportant leurs âmes dans les Abysses. Charmant.~ */ GOTO 215
  IF ~~ THEN REPLY #62033 /* ~"Je vois. Puis-je vous poser d'autres questions ?"~ */ DO ~SetGlobal("Know_Grace_Succubus","GLOBAL",1)
~ JOURNAL #27465 /* ~Tombée-en-Disgrâce m'a dit qu'elle était une succube, une 'tanar'ri mineure', l'un des fiélons qui errent dans les Plans Inférieurs. Apparemment, sa race recherche des mortels et les séduit, emportant leurs âmes dans les Abysses. Charmant.~ */ GOTO 139
  IF ~~ THEN REPLY #62034 /* ~"C'est entendu. Allons-y."~ */ DO ~SetGlobal("Know_Grace_Succubus","GLOBAL",1)
~ JOURNAL #27465 /* ~Tombée-en-Disgrâce m'a dit qu'elle était une succube, une 'tanar'ri mineure', l'un des fiélons qui errent dans les Plans Inférieurs. Apparemment, sa race recherche des mortels et les séduit, emportant leurs âmes dans les Abysses. Charmant.~ */ EXIT
END

IF ~~ THEN BEGIN 215 // from: 213.0 214.0
  SAY #62035 /* ~"J'aimerais me dire que je n'ai plus rien à voir avec cela… en fin de compte, c'est une façon banale et peu productive de faire l'expérience du multivers. La vie offre bien d'autres facettes, ne croyez-vous pas ?"~ */
  IF ~~ THEN REPLY #62036 /* ~"Peut-être. Puis-je vous poser d'autres questions?"~ */ GOTO 139
  IF ~~ THEN REPLY #62037 /* ~"C'est entendu. Allons-y."~ */ EXIT
END

IF ~~ THEN BEGIN 216 // from: 139.12
  SAY #62038 /* ~"Les Sensats sont la faction de Sigil qui se dévoue à l'expérience. Sans expérience, sans sensation, l'essentiel du multivers nous reste fermé. Les Sensats essaient donc d'en faire le plus possible l'expérience - une fois la somme totale des expériences atteinte, la vérité du multivers se révèlera."~ */
  IF ~  !Global("Join_Sensates","GLOBAL",1)
~ THEN REPLY #62039 /* ~"Intéressante philosophie. Pourrais-je rejoindre les Sensats ?"~ */ GOTO 217
  IF ~~ THEN REPLY #62040 /* ~"Je vois. Puis-je vous poser d'autres questions ?"~ */ GOTO 139
  IF ~~ THEN REPLY #62041 /* ~"C'est entendu. Allons-y."~ */ EXIT
END

IF ~~ THEN BEGIN 217 // from: 216.0
  SAY #62042 /* ~Elle sourit. "Pour se joindre aux Sensats, il suffit d'étudier la vie."~ */
  IF ~~ THEN REPLY #62043 /* ~"Je voulais dire que j'aimerais me joindre à leur faction."~ */ JOURNAL #27464 /* ~Tombée-en-Disgrâce m'a suggéré d'essayer la Salle des Fêtes pour devenir membre de la Société des Sensations. Elle m'a dit que j'y trouverais peut-être quelqu'un qui pourrait m'aider.~ */ GOTO 218
  IF ~~ THEN REPLY #62044 /* ~"Je vois. Puis-je vous poser d'autres questions ?"~ */ GOTO 139
  IF ~~ THEN REPLY #62045 /* ~"C'est entendu. Allons-y."~ */ EXIT
END

IF ~~ THEN BEGIN 218 // from: 217.0
  SAY #62046 /* ~"Bien sûr… pardon pour la plaisanterie." Grâce hoche la tête. "Si vous voulez vous joindre aux Sensats, adressez-vous à la Salle des Fêtes. Quelqu'un là-bas devrait pouvoir vous aider."~ */
  IF ~~ THEN REPLY #62047 /* ~"Je vois. Puis-je vous poser d'autres questions ?"~ */ GOTO 139
  IF ~~ THEN REPLY #62048 /* ~"Très bien. Allons-y."~ */ EXIT
END

IF ~~ THEN BEGIN 219 // from: 205.8 236.1 294.0 294.1 337.0 337.1 338.0 338.1
  SAY #62049 /* ~"La Guerre Sanglante est le conflit qui fait rage dans les Plans Inférieurs entre les baatezus et les tanar'ris. Ils se battent pour décider si le mal doit s'exprimer de manière loyale ou chaotique." Tombée-en-Disgrâce s'interrompt. "C'est une guerre qu'il vaut mieux éviter à tout prix. Que tanar'ris et baatezus continuent de s'affronter et qu'ils laissent le reste des plans en paix… même si cette dernière est toute relative."~ */
  IF ~~ THEN REPLY #62050 /* ~"Une paix toute relative ?"~ */ GOTO 220
  IF ~~ THEN REPLY #62051 /* ~"Ils utilisent des soldats humains ?"~ */ GOTO 221
  IF ~~ THEN REPLY #62052 /* ~"Depuis combien de temps est-ce que ça dure ?"~ */ GOTO 222
  IF ~~ THEN REPLY #62053 /* ~"Vous êtes-vous battue dans cette guerre ?"~ */ GOTO 223
  IF ~~ THEN REPLY #62054 /* ~"J'ai d'autres questions, sans aucun rapport avec la Guerre Sanglante."~ */ GOTO 205
  IF ~~ THEN REPLY #62055 /* ~"C'est entendu. Allons-y."~ */ EXIT
END

IF ~~ THEN BEGIN 220 // from: 219.0 221.0 222.0 223.1 224.1 225.1 226.1 227.0 228.0
  SAY #62056 /* ~"Eh bien, la Guerre est tellement étendue que la plupart des races s'y sont retrouvées impliquées contre leur gré. N'en tenir aucun compte est bien souvent aussi dangereux que d'y prendre part."~ */
  IF ~~ THEN REPLY #62057 /* ~"Ils utilisent des soldats humains ?"~ */ GOTO 221
  IF ~~ THEN REPLY #62058 /* ~"Depuis combien de temps est-ce que ça dure ?"~ */ GOTO 222
  IF ~~ THEN REPLY #62059 /* ~"Vous êtes-vous battue dans cette guerre ?"~ */ GOTO 223
  IF ~~ THEN REPLY #62060 /* ~"J'ai d'autres questions, sans aucun rapport avec la Guerre Sanglante."~ */ GOTO 205
  IF ~~ THEN REPLY #62061 /* ~"C'est entendu. Allons-y."~ */ EXIT
END

IF ~~ THEN BEGIN 221 // from: 219.1 220.0 222.1 223.2 224.2 225.2 226.2 227.1 228.1
  SAY #62062 /* ~"Parfois, oui. Des mercenaires humains participent à la Guerre Sanglante en nombre. Comme soldats, chair à canon, ou nourriture pour les fiélons."~ */
  IF ~~ THEN REPLY #62063 /* ~"Selon vous, tant que la guerre continuera, le reste des Plans vivra dans une 'paix relative', c'est ça ?"~ */ GOTO 220
  IF ~~ THEN REPLY #62064 /* ~"Depuis combien de temps est-ce que ça dure ?"~ */ GOTO 222
  IF ~~ THEN REPLY #62065 /* ~"Vous êtes-vous battue dans cette guerre ?"~ */ GOTO 223
  IF ~~ THEN REPLY #62066 /* ~"J'ai d'autres questions, sans aucun rapport avec la Guerre Sanglante."~ */ GOTO 205
  IF ~~ THEN REPLY #62067 /* ~"C'est entendu. Allons-y."~ */ EXIT
END

IF ~~ THEN BEGIN 222 // from: 219.2 220.1 221.1 223.3 224.3 225.3 226.3 227.2 228.2
  SAY #62068 /* ~"D'après les chroniques, la Guerre Sanglante dure depuis que les baatezus ont rencontré les tanar'ris… il y a *très* longtemps. Je ne suis pas certaine qu'il y ait un terme humain permettant de concevoir une telle durée." Tombée-en-Disgrâce secoue la tête. "Je crois bien que les baatezus et les tanar'ris ne se sont jamais appréciés."~ */
  IF ~~ THEN REPLY #62069 /* ~"Selon vous, tant que la guerre continuera, le reste des Plans vivra dans une 'paix relative', c'est ça ?"~ */ GOTO 220
  IF ~~ THEN REPLY #62070 /* ~"Ils utilisent des soldats humains ?"~ */ GOTO 221
  IF ~~ THEN REPLY #62071 /* ~"Vous êtes-vous battue dans cette guerre ?"~ */ GOTO 223
  IF ~~ THEN REPLY #62072 /* ~"J'ai d'autres questions, sans aucun rapport avec la Guerre Sanglante."~ */ GOTO 205
  IF ~~ THEN REPLY #62073 /* ~"C'est entendu. Allons-y."~ */ EXIT
END

IF ~~ THEN BEGIN 223 // from: 219.3 220.2 221.2 222.2 228.3
  SAY #62074 /* ~"Non. Ma mère l'a fait. Souvent les succubes tentent les mortels de telle sorte qu'après la mort ils rejoignent les Abysses où leur esprit engendre de nouveaux tanar'ris."~ */
  IF ~~ THEN REPLY #62075 /* ~"Votre mère? Elle s'est battue dans la Guerre Sanglante ?"~ */ GOTO 224
  IF ~~ THEN REPLY #62076 /* ~"Selon vous, tant que la guerre continuera, le reste des Plans vivra dans une 'paix relative', c'est ça ?"~ */ GOTO 220
  IF ~~ THEN REPLY #62077 /* ~"Ils utilisent des soldats humains ?"~ */ GOTO 221
  IF ~~ THEN REPLY #62078 /* ~"Depuis combien de temps est-ce que ça dure ?"~ */ GOTO 222
  IF ~~ THEN REPLY #62079 /* ~"J'ai d'autres questions, sans aucun rapport avec la Guerre Sanglante."~ */ GOTO 205
  IF ~~ THEN REPLY #62080 /* ~"C'est entendu. Allons-y."~ */ EXIT
END

IF ~~ THEN BEGIN 224 // from: 223.0
  SAY #62081 /* ~"Oui. C'était une des plus belles, et elle a séduit d'innombrables mortels. Elle réside désormais sur les Abysses, où elle vend ses enfants en esclavage."~ */
  IF ~~ THEN REPLY #62082 /* ~"Votre mère vous a… vendue comme esclave ?"~ */ GOTO 225
  IF ~~ THEN REPLY #62083 /* ~"Selon vous, tant que la guerre continuera, le reste des Plans vivra dans une 'paix relative', c'est ça ?"~ */ GOTO 220
  IF ~~ THEN REPLY #62084 /* ~"Ils utilisent des soldats humains ?"~ */ GOTO 221
  IF ~~ THEN REPLY #62085 /* ~"Depuis combien de temps est-ce que ça dure ?"~ */ GOTO 222
  IF ~~ THEN REPLY #62086 /* ~"Mes questions vous gênent ?"~ */ GOTO 228
  IF ~~ THEN REPLY #62087 /* ~"J'ai d'autres questions, sans aucun rapport avec la Guerre Sanglante."~ */ GOTO 205
  IF ~~ THEN REPLY #62088 /* ~"C'est entendu. Allons-y."~ */ EXIT
END

IF ~~ THEN BEGIN 225 // from: 224.0
  SAY #62089 /* ~"Pendant un temps. J'ai gagné ma liberté lors d'un concours d'improvisation. C'était il y a très longtemps."~ */
  IF ~~ THEN REPLY #62090 /* ~"À qui vous a-t-elle vendue ?"~ */ DO ~SetGlobal("Grace_History","GLOBAL",1)
~ JOURNAL #27460 /* ~Tombée-en-Disgrâce m'a dit que sa propre mère l'avait vendue comme esclave… aux ennemis jurés des tanar'ris, les baatezus, pas moins. Apparemment, Tombée-en-Disgrâce a gagné sa liberté dans un concours d'improvisation contre son maître baatezu. Elle ne s'est pas étendue sur les détails.~ */ GOTO 226
  IF ~~ THEN REPLY #62091 /* ~"Selon vous, tant que la guerre continuera, le reste des Plans vivra dans une 'paix relative', c'est ça ?"~ */ GOTO 220
  IF ~~ THEN REPLY #62092 /* ~"Ils utilisent des soldats humains ?"~ */ GOTO 221
  IF ~~ THEN REPLY #62093 /* ~"Depuis combien de temps est-ce que ça dure ?"~ */ GOTO 222
  IF ~~ THEN REPLY #62094 /* ~"Mes questions vous gênent ?"~ */ GOTO 228
  IF ~~ THEN REPLY #62095 /* ~"J'ai d'autres questions, sans aucun rapport avec la Guerre Sanglante."~ */ GOTO 205
  IF ~~ THEN REPLY #62096 /* ~"C'est entendu. Allons-y."~ */ EXIT
END

IF ~~ THEN BEGIN 226 // from: 225.0
  SAY #62105 /* ~"Elle m'a vendue aux baatezus. Je crois qu'elle s'attendait à ce qu'ils me tuent. Malgré son vaste savoir, elle connaît mal leur culture."~ */
  IF ~~ THEN REPLY #62106 /* ~"Elle vous a vendu aux ennemis jurés des tanar'ris ?"~ */ GOTO 227
  IF ~~ THEN REPLY #62107 /* ~"Selon vous, tant que la guerre continuera, le reste des Plans vivra dans une 'paix relative', c'est ça ?"~ */ GOTO 220
  IF ~~ THEN REPLY #62108 /* ~"Ils utilisent des soldats humains ?"~ */ GOTO 221
  IF ~~ THEN REPLY #62109 /* ~"Depuis combien de temps est-ce que ça dure ?"~ */ GOTO 222
  IF ~~ THEN REPLY #62110 /* ~"Mes questions vous gênent ?"~ */ GOTO 228
  IF ~~ THEN REPLY #62111 /* ~"J'ai d'autres questions, sans aucun rapport avec la Guerre Sanglante."~ */ GOTO 205
  IF ~~ THEN REPLY #62112 /* ~"C'est entendu. Allons-y."~ */ EXIT
END

IF ~~ THEN BEGIN 227 // from: 226.0
  SAY #62113 /* ~"Oui." Tombée-en-Disgrâce se redresse. "Y a-t-il autre chose que vous auriez voulu savoir ?"~ */
  IF ~~ THEN REPLY #62114 /* ~"Selon vous, tant que la guerre continuera, le reste des Plans vivra dans une 'paix relative', c'est ça ?"~ */ GOTO 220
  IF ~~ THEN REPLY #62115 /* ~"Ils utilisent des soldats humains ?"~ */ GOTO 221
  IF ~~ THEN REPLY #62116 /* ~"Depuis combien de temps est-ce que ça dure ?"~ */ GOTO 222
  IF ~~ THEN REPLY #62117 /* ~"Mes questions vous gênent ?"~ */ GOTO 228
  IF ~~ THEN REPLY #62118 /* ~"J'ai d'autres questions, sans aucun rapport avec la Guerre Sanglante."~ */ GOTO 205
  IF ~~ THEN REPLY #62119 /* ~"C'est entendu. Allons-y."~ */ EXIT
END

IF ~~ THEN BEGIN 228 // from: 224.4 225.4 226.4 227.3
  SAY #62120 /* ~"Oh, non, pas du tout. Il faut que vous soyez au courant - la Guerre Sanglante influence la plupart des événements sur les plans ; il est important de comprendre ce qu'elle est et pourquoi elle a lieu."~ */
  IF ~~ THEN REPLY #62121 /* ~"Selon vous, tant que la guerre continuera, le reste des Plans vivra dans une 'paix relative', c'est ça ?"~ */ GOTO 220
  IF ~~ THEN REPLY #62122 /* ~"Ils utilisent des soldats humains ?"~ */ GOTO 221
  IF ~~ THEN REPLY #62123 /* ~"Depuis combien de temps est-ce que ça dure ?"~ */ GOTO 222
  IF ~~ THEN REPLY #62124 /* ~"Vous êtes-vous battue dans cette guerre ?"~ */ GOTO 223
  IF ~~ THEN REPLY #62125 /* ~"J'ai d'autres questions, sans aucun rapport avec la Guerre Sanglante."~ */ GOTO 205
  IF ~~ THEN REPLY #62126 /* ~"C'est entendu. Allons-y."~ */ EXIT
END

IF ~~ THEN BEGIN 229 // from: 205.6
  SAY #62127 /* ~"Je connais ce nom." Tombée-en-Disgrâce s'accorde un moment de réflexion. "De nombreuses rumeurs courent à son sujet, et la plupart la traitent comme un simple mythe, mais je crois qu'elle a existé et qu'elle a eu un impact notable sur la Cage durant son séjour." Elle paraît perplexe. "Pourquoi cette question ?"~ */
  IF ~~ THEN REPLY #62128 /* ~"J'ai l'intention d'aller la voir."~ */ GOTO 230
  IF ~~ THEN REPLY #62129 /* ~"Peu importe. J'ai d'autres questions…"~ */ GOTO 205
  IF ~~ THEN REPLY #62130 /* ~"Non… J'en ai assez entendu. Allons-y."~ */ EXIT
END

IF ~~ THEN BEGIN 230 // from: 229.0
  SAY #62131 /* ~Grâce hausse un sourcil. "Vraiment ? J'ai envie de vous demander pourquoi."~ */
  IF ~~ THEN REPLY #62132 /* ~"J'ai besoin d'informations qu'elle détient."~ */ GOTO 231
  IF ~~ THEN REPLY #62133 /* ~"Peu importe. J'ai d'autres questions…"~ */ GOTO 205
  IF ~~ THEN REPLY #62134 /* ~"Non… J'en ai assez entendu. Allons-y."~ */ EXIT
END

IF ~~ THEN BEGIN 231 // from: 230.0
  SAY #62135 /* ~"Nul autre ne peut vous fournir cette information ?"~ */
  IF ~~ THEN REPLY #62136 /* ~"Je pense que seule Ravel possède les connaissances dont j'ai besoin."~ */ JOURNAL #27460 /* ~Tombée-en-Disgrâce m'a dit que sa propre mère l'avait vendue comme esclave… aux ennemis jurés des tanar'ris, les baatezus, pas moins. Apparemment, Tombée-en-Disgrâce a gagné sa liberté dans un concours d'improvisation contre son maître baatezu. Elle ne s'est pas étendue sur les détails.~ */ GOTO 232
  IF ~~ THEN REPLY #62137 /* ~"Peu importe. J'ai d'autres questions…"~ */ GOTO 205
  IF ~~ THEN REPLY #62138 /* ~"Je l'ignore, mais je compte le découvrir. Allons-y."~ */ EXIT
END

IF ~~ THEN BEGIN 232 // from: 231.0
  SAY #62139 /* ~Grâce pose la main sur ton bras. "Songez que, si Ravel existe bien, elle doit être très puissante et fort rusée. En admettant qu'une fraction seulement des histoires qui circulent à son propos soit vraie, il s'agit d'une créature qui a découvert de nouvelles significations au concept de Mal. Partir à sa recherche n'est pas une quête à entreprendre à la légère."~ */
  IF ~~ THEN REPLY #62140 /* ~"Je le sais."~ */ DO ~SetGlobal("Grace_Ravel_Answer","GLOBAL",1)
~ GOTO 233
END

IF ~~ THEN BEGIN 233 // from: 232.0
  SAY #62141 /* ~"Je n'ai jamais rencontré un mythe. Ce devrait être passionnant." Elle sourit. "Tu n'essaies jamais d'accomplir une tâche ennuyeuse ?"~ */
  IF ~~ THEN REPLY #62142 /* ~"J'essaie de m'en abstenir… savez-vous autre chose sur Ravel?"~ */ GOTO 234
  IF ~~ THEN REPLY #62145 /* ~"Pas si je peux l'empêcher. Puis-je vous poser d'autres questions?"~ */ GOTO 205
  IF ~~ THEN REPLY #62146 /* ~"Peut-être dans une autre vie, mais pas maintenant. Allons-y."~ */ EXIT
END

IF ~~ THEN BEGIN 234 // from: 205.7 233.0
  SAY #62147 /* ~"C'était une guenaude de la Gaste Grise. On la disait dotée de pouvoirs bien supérieurs à ceux de ses sœurs. Elle est venue ici il y a longtemps, et outre le mal qu'elle a fait durant son séjour, ses actes auraient mis en péril la Cage elle-même. À présent, ce n'est plus qu'une fiction, qu'un personnage de conte." Grâce s'interrompt. "J'imagine que la Dame des Douleurs a dû s'occuper d'elle comme elle le fait de chaque menace envers Sigil."~ */
  IF ~~ THEN REPLY #62148 /* ~"Comment ça ?"~ */ JOURNAL #27458 /* ~Tombée-en-Disgrâce m'a dit que Ravel était une guenaude noire, l'une des sœurs grises qui errent dans la Gaste Grise. Ses pouvoirs sont bien supérieurs à ceux de ses sœurs et elle est arrivée à Sigil il y a très longtemps. Au cours de son séjour, elle a contrarié la Dame des Douleurs et a été punie.~ */ GOTO 235
  IF ~~ THEN REPLY #62149 /* ~"Qu'est-ce que la Gaste Grise ?"~ */ JOURNAL #27458 /* ~Tombée-en-Disgrâce m'a dit que Ravel était une guenaude noire, l'une des sœurs grises qui errent dans la Gaste Grise. Ses pouvoirs sont bien supérieurs à ceux de ses sœurs et elle est arrivée à Sigil il y a très longtemps. Au cours de son séjour, elle a contrarié la Dame des Douleurs et a été punie.~ */ GOTO 236
  IF ~~ THEN REPLY #62150 /* ~"Quelqu'un d'autre pourrait-il en savoir davantage à son sujet?"~ */ JOURNAL #27458 /* ~Tombée-en-Disgrâce m'a dit que Ravel était une guenaude noire, l'une des sœurs grises qui errent dans la Gaste Grise. Ses pouvoirs sont bien supérieurs à ceux de ses sœurs et elle est arrivée à Sigil il y a très longtemps. Au cours de son séjour, elle a contrarié la Dame des Douleurs et a été punie.~ */ GOTO 237
  IF ~~ THEN REPLY #62151 /* ~"Je peux vous poser d'autres questions?"~ */ JOURNAL #27458 /* ~Tombée-en-Disgrâce m'a dit que Ravel était une guenaude noire, l'une des sœurs grises qui errent dans la Gaste Grise. Ses pouvoirs sont bien supérieurs à ceux de ses sœurs et elle est arrivée à Sigil il y a très longtemps. Au cours de son séjour, elle a contrarié la Dame des Douleurs et a été punie.~ */ GOTO 205
  IF ~~ THEN REPLY #62152 /* ~"Je vois. Allons-y."~ */ JOURNAL #27458 /* ~Tombée-en-Disgrâce m'a dit que Ravel était une guenaude noire, l'une des sœurs grises qui errent dans la Gaste Grise. Ses pouvoirs sont bien supérieurs à ceux de ses sœurs et elle est arrivée à Sigil il y a très longtemps. Au cours de son séjour, elle a contrarié la Dame des Douleurs et a été punie.~ */ EXIT
END

IF ~~ THEN BEGIN 235 // from: 234.0 236.0 237.0
  SAY #62153 /* ~"Ravel a sans doute été jetée dans un dédale, une des prisons de la Dame."~ */
  IF ~~ THEN REPLY #62154 /* ~"Les dédales ? Qu'est-ce que c'est ?"~ */ JOURNAL #27457 /* ~Tombée-en-Disgrâce m'a dit que Ravel était emprisonnée dans l'un des dédales de la Dame des Douleurs.~ */ GOTO 252
  IF ~~ THEN REPLY #62155 /* ~"Qu'est-ce que la Gaste Grise ?"~ */ GOTO 236
  IF ~~ THEN REPLY #62156 /* ~"Quelqu'un d'autre pourrait-il en savoir davantage à son sujet?"~ */ GOTO 237
  IF ~~ THEN REPLY #62157 /* ~"Puis-je vous poser d'autres questions?"~ */ GOTO 205
  IF ~~ THEN REPLY #62158 /* ~"Je vois. Allons-y."~ */ EXIT
END

IF ~~ THEN BEGIN 236 // from: 234.1 235.1 237.1 252.1 253.1 254.0
  SAY #62159 /* ~"Un plan flétri qui se trouve, si on veut, "entre" Baator et les Abysses. Il sert souvent de champ de bataille à la Guerre Sanglante."~ */
  IF ~~ THEN REPLY #62160 /* ~"Savez-vous ce qui est arrivé à Ravel?"~ */ GOTO 235
  IF ~  Global("Know_Blood_War","GLOBAL",0)
~ THEN REPLY #62161 /* ~"J'en ai assez entendu sur Ravel… qu'est-ce que la Guerre Sanglante ?"~ */ DO ~SetGlobal("Know_Blood_War","GLOBAL",1)
~ GOTO 219
  IF ~~ THEN REPLY #62162 /* ~"Quelqu'un d'autre pourrait-il en savoir davantage à son sujet?"~ */ GOTO 237
  IF ~~ THEN REPLY #62163 /* ~"Je peux vous poser d'autres questions?"~ */ GOTO 205
  IF ~~ THEN REPLY #62164 /* ~"Je vois. Allons-y."~ */ EXIT
END

IF ~~ THEN BEGIN 237 // from: 234.2 235.2 236.2 252.2 253.2 254.1
  SAY #62165 /* ~"On en saura peut-être plus à son sujet à la Salle des Fêtes."~ */
  IF ~~ THEN REPLY #62166 /* ~"Savez-vous ce qui est arrivé à Ravel?"~ */ JOURNAL #27457 /* ~Tombée-en-Disgrâce m'a dit que Ravel était emprisonnée dans l'un des dédales de la Dame des Douleurs.~ */ GOTO 235
  IF ~~ THEN REPLY #62167 /* ~"Qu'est-ce que la Gaste Grise ?"~ */ JOURNAL #27457 /* ~Tombée-en-Disgrâce m'a dit que Ravel était emprisonnée dans l'un des dédales de la Dame des Douleurs.~ */ GOTO 236
  IF ~~ THEN REPLY #62168 /* ~"Je peux vous poser d'autres questions?"~ */ JOURNAL #27457 /* ~Tombée-en-Disgrâce m'a dit que Ravel était emprisonnée dans l'un des dédales de la Dame des Douleurs.~ */ GOTO 205
  IF ~~ THEN REPLY #62169 /* ~"On devrait peut-être s'y rendre, alors. Allons-y."~ */ JOURNAL #27457 /* ~Tombée-en-Disgrâce m'a dit que Ravel était emprisonnée dans l'un des dédales de la Dame des Douleurs.~ */ EXIT
END

IF ~~ THEN BEGIN 238 // from:
  SAY #62170 /* ~NULL~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 239 // from: 139.7
  SAY #62171 /* ~"La signification des noms est un vaste sujet. Il y a beaucoup à dire, et beaucoup à taire.~ */
  IF ~~ THEN REPLY #62172 /* ~"Tombée-en-Disgrâce, c'est votre vrai nom ?"~ */ GOTO 240
  IF ~~ THEN REPLY #62173 /* ~"Très bien. Puis-je vous poser d'autres questions ?"~ */ GOTO 139
  IF ~~ THEN REPLY #62175 /* ~"N'en parlons plus, alors. Allons-y."~ */ EXIT
END

IF ~~ THEN BEGIN 240 // from: 239.0
  SAY #62176 /* ~"Peut-être." Un léger sourire. "Et peut-être pas. Il y a des noms qui sont donnés, d'autres qui sont gagnés. Qui peut dire lequel est le vrai ?"~ */
  IF ~~ THEN REPLY #62178 /* ~"Je pense que le nom le plus important est celui que l'on mérite."~ */ DO ~SetGlobal("Grace_Name","GLOBAL",1)
~ GOTO 241
  IF ~~ THEN REPLY #62179 /* ~"Je pense que le nom le plus important est celui que l'on reçoit."~ */ DO ~SetGlobal("Grace_Name","GLOBAL",2)
~ GOTO 242
  IF ~~ THEN REPLY #62181 /* ~"Je ne crois pas attacher une grande valeur à un nom"~ */ DO ~SetGlobal("Grace_Name","GLOBAL",3)
~ GOTO 243
  IF ~~ THEN REPLY #62182 /* ~"Très bien. Puis-je vous poser d'autres questions ?"~ */ GOTO 139
  IF ~~ THEN REPLY #62183 /* ~"N'en parlons plus, alors. Allons-y."~ */ EXIT
END

IF ~~ THEN BEGIN 241 // from: 240.0
  SAY #62184 /* ~"Peut-être. Qu'est-ce qui vous fait dire cela ?"~ */
  IF ~~ THEN REPLY #62185 /* ~"Un nom que l'on mérite n'a rien d'arbitraire ; il désigne ce qu'on a accompli."~ */ GOTO 244
END

IF ~~ THEN BEGIN 242 // from: 240.1
  SAY #62186 /* ~"Peut-être. Qu'est-ce qui vous fait dire cela ?"~ */
  IF ~~ THEN REPLY #62187 /* ~"Il désigne ce que les gens perçoivent de toi. Et leur perception peut être plus juste que la compréhension que l'on a de soi."~ */ GOTO 244
END

IF ~~ THEN BEGIN 243 // from: 240.2
  SAY #62188 /* ~Elle te regarde, intriguée. "Vraiment ?"~ */
  IF ~~ THEN REPLY #62189 /* ~"Un nom, c'est un manteau de lettres jeté sur quelqu'un, rien de plus. Il dit quelque chose sur l'individu qui le porte, peut-être même qu'il aide à le définir, mais il n'est *pas* cet individu."~ */ GOTO 244
END

IF ~~ THEN BEGIN 244 // from: 241.0 242.0 243.0
  SAY #62190 /* ~Grâce hoche la tête. "J'entends bien."~ */
  IF ~  Global("Grace_Name","GLOBAL",1)
~ THEN REPLY #62191 /* ~"Pourquoi donc vous appelle-t-on Tombée-en-Disgrâce ?"~ */ GOTO 245
  IF ~  Global("Grace_Name","GLOBAL",2)
~ THEN REPLY #62192 /* ~"Pourquoi donc vous appelle-t-on Tombée-en-Disgrâce ?"~ */ GOTO 246
  IF ~  Global("Grace_Name","GLOBAL",3)
~ THEN REPLY #62193 /* ~"Pourquoi donc vous appelle-t-on Tombée-en-Disgrâce ?"~ */ GOTO 247
END

IF ~~ THEN BEGIN 245 // from: 139.8 244.0
  SAY #62194 /* ~"Cela aurait-il une importance ?" Elle sourit. "C'est un nom gagné."~ */
  IF ~~ THEN REPLY #62195 /* ~"Ça en a pour moi. J'aimerais savoir pourquoi on vous a appelée comme ça."~ */ GOTO 248
END

IF ~~ THEN BEGIN 246 // from: 139.9 244.1
  SAY #62196 /* ~"Cela aurait-il une importance ?" Elle sourit. "C'est un nom donné."~ */
  IF ~~ THEN REPLY #62197 /* ~"Ça en a pour moi. J'aimerais savoir pourquoi on vous a appelée comme ça."~ */ GOTO 248
END

IF ~~ THEN BEGIN 247 // from: 139.10 244.2
  SAY #62198 /* ~"Cela aurait-il une importance ?" Elle sourit. "Ce n'est qu'un manteau de lettres."~ */
  IF ~~ THEN REPLY #62199 /* ~"Ça en a pour moi. J'aimerais savoir pourquoi on vous a appelée comme ça."~ */ GOTO 248
END

IF ~~ THEN BEGIN 248 // from: 139.11 245.0 246.0 247.0
  SAY #62200 /* ~"Je suis tombée en disgrâce auprès de mon peuple. Quant à moi, je préfère le considérer comme un retour en grâce." Elle te regarde d'un air interrogateur. "Vous comprenez ?"~ */
  IF ~~ THEN REPLY #62201 /* ~"Oh, que oui. Après tout, il y a dans ce nom un côté presque mystique."~ */ GOTO 249
  IF ~~ THEN REPLY #62202 /* ~"Oui. Puis-je vous poser d'autres questions ?"~ */ GOTO 139
  IF ~~ THEN REPLY #62203 /* ~"Oui… Je crois que je saisis. Allons-y."~ */ EXIT
END

IF ~~ THEN BEGIN 249 // from: 248.0
  SAY #62204 /* ~Tombée-en-Disgrâce reste muette un long moment, puis elle hoche la tête d'un air pensif. "En effet."~ */
  IF ~  Global("Ravel_Grace","GLOBAL",0)
Global("Grace_Name_Answer","GLOBAL",1)
~ THEN REPLY #62205 /* ~"Êtes-vous sûre de vous en accommoder ?"~ */ GOTO 250
  IF ~  GlobalGT("Ravel_Grace","GLOBAL",0)
Global("Grace_Name_Answer","GLOBAL",1)
~ THEN REPLY #62206 /* ~"Êtes-vous sûre de vous en accommoder ? Ravel n'avait pas l'air d'être de cet avis."~ */ GOTO 263
  IF ~  Global("Ravel_Grace","GLOBAL",0)
Global("Grace_Name_Answer","GLOBAL",0)
~ THEN REPLY #62207 /* ~"Êtes-vous sûre de vous en accommoder ?"~ */ DO ~AddexperienceParty(1000)
SetGlobal("Grace_Name_Answer","GLOBAL",1)
~ GOTO 250
  IF ~  GlobalGT("Ravel_Grace","GLOBAL",0)
Global("Grace_Name_Answer","GLOBAL",0)
~ THEN REPLY #62208 /* ~"Vous êtes sûre de vous en accommoder ? Ravel n'avait pas l'air d'être de cet avis."~ */ DO ~AddexperienceParty(1000)
SetGlobal("Grace_Name_Answer","GLOBAL",1)
~ GOTO 263
  IF ~~ THEN REPLY #62209 /* ~"Très bien. Puis-je vous poser d'autres questions ?"~ */ GOTO 139
  IF ~~ THEN REPLY #62210 /* ~"Je vois. Allons-y."~ */ EXIT
END

IF ~~ THEN BEGIN 250 // from: 249.0 249.2
  SAY #62211 /* ~Tombée-en-Disgrâce croise ton regard. Une fois de plus, le bleu de ses yeux te frappe - on dirait celui de l'océan juste avant la tempête. "C'est ce que je me disais. Mais, en en discutant avec vous, je le comprends mieux." Elle sourit. "Je vous remercie."~ */
  IF ~  Global("Good_Grace_1","GLOBAL",1)
~ THEN REPLY #62212 /* ~"Eh bien, si vous voulez en parler, dites-le moi, d'accord ?"~ */ GOTO 251
  IF ~  Global("Good_Grace_1","GLOBAL",0)
~ THEN REPLY #62213 /* ~"Eh bien, si vous voulez en parler, dites-le moi, d'accord ?"~ */ DO ~MoraleInc("Grace",1)
IncrementGlobalOnceEx("GLOBALGood_Grace_1","GLOBALGood",1)
~ GOTO 251
  IF ~~ THEN REPLY #62214 /* ~"Très bien. Puis-je vous poser d'autres questions ?"~ */ GOTO 139
  IF ~~ THEN REPLY #62215 /* ~"Très bien. Allons-y."~ */ EXIT
END

IF ~~ THEN BEGIN 251 // from: 250.0 250.1
  SAY #62216 /* ~Elle acquiesce. "Vous êtes très gentil. Je n'y manquerai pas."~ */
  IF ~~ THEN REPLY #62217 /* ~"Très bien. Puis-je vous poser d'autres questions ?"~ */ GOTO 139
  IF ~~ THEN REPLY #62218 /* ~"Très bien. Allons-y."~ */ EXIT
END

IF ~~ THEN BEGIN 252 // from: 235.0
  SAY #62219 /* ~Grâce forme un cercle avec ses pouces et ses index. "On dit que la Dame a le pouvoir d'utiliser un morceau de Sigil…" Étonné, tu vois l'image spectrale du petit doigt de Grâce se détacher de sa main et flotter en l'air en se recroquevillant pour former un autre cercle plus petit. "… Et d'en faire un dédale."~ */
  IF ~~ THEN REPLY #62220 /* ~"Continuez…"~ */ GOTO 253
  IF ~~ THEN REPLY #62221 /* ~"Je vois. Pouvez-vous m'en dire davantage sur le plan d'où vient Ravel… la Gaste Grise ?"~ */ GOTO 236
  IF ~~ THEN REPLY #62222 /* ~"Je crois que je comprends. Vous connaissez quelqu'un qui pourrait en savoir davantage sur Ravel ?"~ */ GOTO 237
  IF ~~ THEN REPLY #62223 /* ~"Peu importe. Puis-je vous poser d'autres questions ?"~ */ GOTO 205
  IF ~~ THEN REPLY #62224 /* ~"Je vois. C'est tout ce que je voulais savoir. Allons-y."~ */ EXIT
END

IF ~~ THEN BEGIN 253 // from: 252.0
  SAY #62225 /* ~Le petit cercle spectral se met à tourner sur lui-même, très lentement. "Le morceau de Sigil qu'elle utilise tient le prisonnier captif ; on ne peut pas s'échapper du dédale. Cela peut arriver à tout moment, alors qu'on longe une rue, qu'on franchit une porte." Elle tape dans ses mains. "… Et on se retrouve ailleurs." À l'intérieur du petit cercle, tu discernes un mouvement, comme si quelqu'un y marchait.~ */
  IF ~~ THEN REPLY #62226 /* ~"Continuez…"~ */ GOTO 254
  IF ~~ THEN REPLY #62227 /* ~"Je vois. Pouvez-vous m'en dire davantage sur le plan d'où vient Ravel… la Gaste Grise ?"~ */ GOTO 236
  IF ~~ THEN REPLY #62228 /* ~"Je crois que je comprends. Vous connaissez quelqu'un qui pourrait en savoir davantage sur Ravel ?"~ */ GOTO 237
  IF ~~ THEN REPLY #62229 /* ~"Peu importe. Puis-je vous poser d'autres questions ?"~ */ GOTO 205
  IF ~~ THEN REPLY #62230 /* ~"Je vois. C'est tout ce que je voulais savoir. Allons-y."~ */ EXIT
END

IF ~~ THEN BEGIN 254 // from: 253.0
  SAY #62231 /* ~Grâce poursuit son explication. "Chaque dédale comprendrait un portail qui permet d'en sortir, mais il serait très difficile à localiser. S'agit-il de laisser un espoir au prisonnier, ou de le torturer ?" Le dédale spectral se dissipe. "L'un et l'autre, peut-être."~ */
  IF ~~ THEN REPLY #62232 /* ~"Je vois. Pouvez-vous m'en dire davantage sur le plan d'où vient Ravel… la Gaste Grise ?"~ */ GOTO 236
  IF ~~ THEN REPLY #62233 /* ~"Je crois que je comprends. Vous connaissez quelqu'un qui pourrait en savoir davantage sur Ravel ?"~ */ GOTO 237
  IF ~~ THEN REPLY #62234 /* ~"Peu importe. Puis-je vous poser d'autres questions ?"~ */ GOTO 205
  IF ~~ THEN REPLY #62235 /* ~"Je vois. C'est tout ce que je voulais savoir. Allons-y."~ */ EXIT
END

IF ~~ THEN BEGIN 255 // from: 205.4
  SAY #62236 /* ~"Non. Je ne le lui reproche pas."~ */
  IF ~  Global("Grace_Camp_Follower_Answer","GLOBAL",1)
~ THEN REPLY #62237 /* ~"Pourquoi disait-elle que vous étiez vendue aux baatezus ?"~ */ GOTO 256
  IF ~  Global("Grace_History","GLOBAL",1)
Global("Grace_Camp_Follower_Answer","GLOBAL",0)
~ THEN REPLY #62238 /* ~"Pourquoi disait-elle que vous étiez vendue aux baatezus ?"~ */ DO ~MoraleDec("Grace",1)
~ GOTO 258
  IF ~  Global("Grace_History","GLOBAL",0)
Global("Grace_Camp_Follower_Answer","GLOBAL",0)
~ THEN REPLY #62239 /* ~"Pourquoi disait-elle que vous étiez vendue aux baatezus ?"~ */ DO ~MoraleDec("Grace",1)
SetGlobal("Grace_History","GLOBAL",1)
~ GOTO 257
  IF ~~ THEN REPLY #62240 /* ~"Pourquoi pas ?"~ */ GOTO 262
  IF ~~ THEN REPLY #62241 /* ~"Je peux vous poser d'autres questions ?"~ */ GOTO 205
  IF ~~ THEN REPLY #62242 /* ~"Je vois. C'est tout ce que je voulais savoir. Allons-y."~ */ EXIT
END

IF ~~ THEN BEGIN 256 // from: 255.0 262.0
  SAY #62243 /* ~"Nous en avons déjà parlé. J'ai été l'esclave des baatezus. Durant cette période, ils m'ont infligé maints tourments."~ */
  IF ~~ THEN REPLY #62244 /* ~"Eh bien, ce qui m'intrigue le plus, c'est cette histoire de "vendue". Qu'est-ce qu'elle a voulu dire ?"~ */ DO ~MoraleDec("Grace",1)
~ GOTO 259
  IF ~~ THEN REPLY #62245 /* ~"Peu importe, alors. Pourquoi est-ce que vous ne pouvez pas lui en vouloir de vous détester ?"~ */ GOTO 262
  IF ~~ THEN REPLY #62246 /* ~"Je peux vous poser d'autres questions?"~ */ GOTO 205
  IF ~~ THEN REPLY #62247 /* ~"C'est tout ce que je voulais savoir. Allons-y."~ */ EXIT
END

IF ~~ THEN BEGIN 257 // from: 255.2 262.2
  SAY #62248 /* ~"J'ai été l'esclave des baatezus - il y a longtemps. J'ai gagné ma liberté lors d'un concours d'improvisation." ~ */
  IF ~~ THEN REPLY #62249 /* ~"Eh bien, ce qui m'intrigue le plus, c'est cette histoire de "vendue". Qu'est-ce qu'elle a voulu dire ?"~ */ DO ~MoraleDec("Grace",1)
~ GOTO 259
  IF ~~ THEN REPLY #62250 /* ~"Je vois. Pourquoi est-ce que vous ne pouvez pas lui en vouloir de vous détester ?"~ */ GOTO 262
  IF ~~ THEN REPLY #62251 /* ~"Je peux vous poser d'autres questions ?"~ */ GOTO 205
  IF ~~ THEN REPLY #62252 /* ~"C'est tout ce que je voulais savoir. Allons-y."~ */ EXIT
END

IF ~~ THEN BEGIN 258 // from: 255.1 262.1
  SAY #62253 /* ~"Vous devez vous rappeler ce que je vous ai raconté de mon passé ?"~ */
  IF ~~ THEN REPLY #62254 /* ~"Eh bien, ce qui m'intrigue le plus, c'est cette histoire de "vendue". Qu'est-ce qu'elle a voulu dire ?"~ */ DO ~MoraleDec("Grace",1)
~ GOTO 259
  IF ~~ THEN REPLY #62255 /* ~"Peu importe, alors. Pourquoi est-ce que vous ne pouvez pas lui en vouloir de vous détester ?"~ */ GOTO 262
  IF ~~ THEN REPLY #62256 /* ~"Je peux vous poser d'autres questions ?"~ */ GOTO 205
  IF ~~ THEN REPLY #62257 /* ~"Je vois. C'est tout ce que je voulais savoir. Allons-y."~ */ EXIT
END

IF ~~ THEN BEGIN 259 // from: 256.0 257.0 258.0
  SAY #62258 /* ~Tombée-en-Disgrâce paraît perplexe… elle semble te soumettre à un examen, tâcher de déchiffrer ton expression. Lorsqu'elle prend la parole, c'est d'un ton plus bas qu'à l'ordinaire "C'est important ?"~ */
  IF ~~ THEN REPLY #62259 /* ~"Pour moi, oui. J'aimerais savoir avec qui je voyage."~ */ DO ~SetGlobal("Grace_Camp_Follower_Answer","GLOBAL",1)
~ GOTO 260
  IF ~~ THEN REPLY #62260 /* ~"Non, pas du tout. Pourquoi est-ce que vous ne pouvez pas lui en vouloir de vous détester ?"~ */ GOTO 262
  IF ~~ THEN REPLY #62261 /* ~"Je peux vous poser d'autres questions ?"~ */ GOTO 205
  IF ~~ THEN REPLY #62262 /* ~"C'est tout ce que je voulais savoir. Allons-y."~ */ EXIT
END

IF ~~ THEN BEGIN 260 // from: 259.0
  SAY #62263 /* ~"Je vous répondrai en vous disant que les baatezus ne sont pas humains. Ce qu'ils désirent, c'est le pouvoir, et non la chair, et il ne leur viendrait pas à l'esprit de violer une prisonnière. Leurs tortures sont beaucoup plus subtiles et beaucoup plus pénibles, et leurs cicatrices mettent beaucoup plus longtemps à s'effacer. Cela répond-il à votre question ?"~ */
  IF ~~ THEN REPLY #62264 /* ~"Oui. Je voulais juste savoir avec qui je voyage."~ */ GOTO 261
  IF ~~ THEN REPLY #62265 /* ~"Oui. Pourquoi est-ce que vous ne pouvez pas lui en vouloir de vous détester ?"~ */ GOTO 262
  IF ~~ THEN REPLY #62266 /* ~"Je peux vous poser d'autres questions ?"~ */ GOTO 205
  IF ~~ THEN REPLY #62267 /* ~"C'est tout ce que je voulais savoir. Allons-y."~ */ EXIT
END

IF ~~ THEN BEGIN 261 // from: 260.0
  SAY #62268 /* ~"Je croyais que vous le saviez." Tombée-en-Disgrâce incline la tête. "J'avais tort."~ */
  IF ~~ THEN REPLY #62269 /* ~"Pourquoi est-ce que vous ne pouvez pas lui en vouloir de vous détester ?"~ */ GOTO 262
  IF ~~ THEN REPLY #62270 /* ~"Je peux vous poser d'autres questions ?"~ */ GOTO 205
  IF ~~ THEN REPLY #62271 /* ~"C'est tout ce que je voulais savoir. Allons-y."~ */ EXIT
END

IF ~~ THEN BEGIN 262 // from: 255.3 256.1 257.1 258.1 259.1 260.1 261.0
  SAY #62272 /* ~"Vrischika est une tanar'ri -, comme moi, mais d'une autre espèce : une alu-fiélonne. Pour la comprendre, sachez que la culture tanar'ri tourne autour du chaos et que le chaos n'a, par nature, aucun souci de justice. On considère les alu-fiélonnes comme… superfétatoires. Inutiles. Sous bien des aspects, c'est pire qu'une sentence de mort."~ */
  IF ~  Global("Grace_Camp_Follower_Answer","GLOBAL",1)
~ THEN REPLY #62273 /* ~"Pourquoi disait-elle que vous étiez vendue aux baatezus ?"~ */ GOTO 256
  IF ~  Global("Grace_History","GLOBAL",1)
Global("Grace_Camp_Follower_Answer","GLOBAL",0)
~ THEN REPLY #62274 /* ~"Pourquoi disait-elle que vous étiez vendue aux baatezus ?"~ */ DO ~MoraleDec("Grace",1)
~ GOTO 258
  IF ~  Global("Grace_History","GLOBAL",0)
Global("Grace_Camp_Follower_Answer","GLOBAL",0)
~ THEN REPLY #62275 /* ~"Pourquoi disait-elle que vous étiez vendue aux baatezus ?"~ */ DO ~MoraleDec("Grace",1)
SetGlobal("Grace_History","GLOBAL",1)
~ GOTO 257
  IF ~~ THEN REPLY #62276 /* ~"Je vois. Puis-je vous poser d'autres questions ?"~ */ GOTO 205
  IF ~~ THEN REPLY #62277 /* ~"C'est tout ce que je voulais savoir. Allons-y."~ */ EXIT
END

IF ~~ THEN BEGIN 263 // from: 205.9 249.1 249.3
  SAY #62278 /* ~Tombée-en-Disgrâce reste coite un instant, le regard dans le vague. Quand elle se tourne vers toi, ses yeux ont pris une étrange couleur azure, la nuance des larmes et de la tristesse.~ */
  IF ~~ THEN GOTO 264
END

IF ~~ THEN BEGIN 264 // from: 263.0
  SAY #62279 /* ~"Avec ses yeux de noirépine, Ravel voit beaucoup de choses qui restent dissimulées aux autres - même leur propre nature." Elle secoue la tête lentement. "Parfois… parfois, la douleur est bien présente. J'ai appris qu'il est *difficile* d'échapper à sa propre nature."~ */
  IF ~  Global("Good_Grace_1","GLOBAL",0)
~ THEN REPLY #62280 /* ~"Ça va ?"~ */ DO ~MoraleInc("Grace",1)
IncrementGlobalOnceEx("GLOBALGood_Grace_1","GLOBALGood",1)
~ GOTO 265
  IF ~  Global("Good_Grace_1","GLOBAL",1)
~ THEN REPLY #62281 /* ~"Ça va aller ?"~ */ GOTO 265
  IF ~~ THEN REPLY #62282 /* ~"Je vois. Puis-je vous poser d'autres questions ?"~ */ GOTO 205
  IF ~~ THEN REPLY #62283 /* ~"C'est tout ce que je voulais savoir. Allons-y."~ */ EXIT
END

IF ~~ THEN BEGIN 265 // from: 264.0 264.1
  SAY #62284 /* ~Elle a un léger sourire et croise ton regard. "Oui… c'est gentil à vous de le demander. La douleur est bien présente, mais j'ai fini par accepter ma nature il y a des siècles de cela."~ */
  IF ~~ THEN REPLY #62285 /* ~"Très bien, al…"~ */ GOTO 266
END

IF ~~ THEN BEGIN 266 // from: 265.0
  SAY #62286 /* ~Grâce t'interrompt. "Je vous remercie de vous soucier de mon bien-être. J'apprécie votre démarche."~ */
  IF ~~ THEN REPLY #62287 /* ~"Je voulais juste savoir si vous alliez bien. J'ai d'autres questions."~ */ GOTO 205
  IF ~~ THEN REPLY #62288 /* ~"Bien sûr. Je voulais juste m'en assurer. Allons-y."~ */ EXIT
END

IF ~~ THEN BEGIN 267 // from: 139.13
  SAY #62289 /* ~Tombée-en-Disgrâce secoue la tête. "Non, je ne crois pas. L'Art… et les disciplines que je pratique n'ont rien à voir."~ */
  IF ~~ THEN REPLY #62290 /* ~"Qu'est-ce que vous voulez dire ?"~ */ GOTO 268
  IF ~~ THEN REPLY #62291 /* ~"Peu importe. Puis-je vous poser quelques autres questions?"~ */ GOTO 139
  IF ~~ THEN REPLY #62292 /* ~"C'est tout ce que je voulais savoir. Allons-y."~ */ EXIT
END

IF ~~ THEN BEGIN 268 // from: 267.0
  SAY #62293 /* ~"Mes 'pouvoirs' me viennent de ma foi, et non de la manipulation des énergies à laquelle l'Art procède. L'Art est un des *mécanismes* par lesquels on peut canaliser la puissance du multivers - à l'aide de gestes, de rituels et d'objets. Mes 'pouvoirs' sont d'une origine différente. Ma foi et la nature de ma croyance permettent à une partie du multivers de se révéler à moi."~ */
  IF ~~ THEN REPLY #62294 /* ~"La nature de votre croyance? En quoi est-ce que vous croyez ?"~ */ GOTO 269
  IF ~~ THEN REPLY #62295 /* ~"Je vois. Puis-je vous poser d'autres questions ?"~ */ GOTO 139
  IF ~~ THEN REPLY #62296 /* ~"C'est tout ce que je voulais savoir. Allons-y."~ */ EXIT
END

IF ~~ THEN BEGIN 269 // from: 268.0
  SAY #62297 /* ~"Je crois à l'*Expérience*. Je crois qu'un individu peut être changé - en bien -, et que plus on arrive à percevoir le multivers, plus le multivers nous perçoit. Ma foi en la nature de l'Expérience me permet de…" Elle s'interrompt, perdue dans ses réflexions.~ */
  IF ~~ THEN GOTO 270
END

IF ~~ THEN BEGIN 270 // from: 269.0
  SAY #62425 /* ~"La meilleure explication consiste à dire que ma foi me fait *voir* différemment. Quand on voit le multivers de cette façon, on apprend à le 'changer' - à refermer les plaies, à sentir l'âme de l'autre, et ainsi de suite - par le simple fait de le souhaiter."~ */
  IF ~~ THEN REPLY #62426 /* ~"Mais ces 'changements' que vous effectuez ressemblent à des sorts - comment avez-vous appris à faire ces choses-là ? Vous avez un livre de sorts ?"~ */ GOTO 272
  IF ~  Global("Grace_History","GLOBAL",1)
~ THEN REPLY #62427 /* ~"Vous croyez à l'Expérience à cause de ce qui s'est passé avec les baatezus ?"~ */ GOTO 273
  IF ~~ THEN REPLY #62428 /* ~"Pouvez-vous m'apprendre à voir les choses de votre façon ?"~ */ GOTO 271
  IF ~~ THEN REPLY #62429 /* ~"Je vois. Puis-je vous poser d'autres questions ?"~ */ GOTO 139
  IF ~~ THEN REPLY #62430 /* ~"C'est tout ce que je voulais savoir. Allons-y."~ */ EXIT
END

IF ~~ THEN BEGIN 271 // from: 270.2
  SAY #62431 /* ~"Je ne peux pas vous apprendre à voir le multivers ainsi. C'est quelque chose qu'il faut découvrir par soi-même." Elle a un léger sourire. "Je doute fort que *vous*, vous ayez besoin que je vous guide dans ce domaine. J'en apprends plus de vous que vous n'en apprenez de moi."~ */
  IF ~~ THEN REPLY #62432 /* ~"Ces 'changements' que vous effectuez ressemblent à des sorts - comment avez-vous appris à faire ces choses-là ? Vous avez un livre de sorts ?"~ */ GOTO 272
  IF ~  Global("Grace_History","GLOBAL",1)
~ THEN REPLY #62433 /* ~"Vous croyez à l'Expérience à cause de ce qui s'est passé avec les baatezus ?"~ */ GOTO 273
  IF ~~ THEN REPLY #62434 /* ~"Je vois. Puis-je vous poser d'autres questions ?"~ */ GOTO 139
  IF ~~ THEN REPLY #62435 /* ~"C'est tout ce que je voulais savoir. Allons-y."~ */ EXIT
END

IF ~~ THEN BEGIN 272 // from: 270.0 271.0 273.3
  SAY #62436 /* ~"Mes 'sorts', comme vous les appelez, me viennent une fois reposée et concentrée. Quand j'ai dormi et que je me réveille, je peux me concentrer une fois de plus. La foi requise pour 'changer' le multivers autour de moi peut avoir un effet débilitant sur la psyché, je le crains. Être capable de voir comment changer les choses ne suffit pas - il faut avoir la force de faire arriver le changement, et de le faire durer."~ */
  IF ~  Global("Grace_History","GLOBAL",1)
~ THEN REPLY #62437 /* ~"Vous croyez à l'Expérience à cause de ce qui s'est passé avec les baatezus ?"~ */ GOTO 273
  IF ~~ THEN REPLY #62438 /* ~"Je vois. Puis-je vous poser d'autres questions ?"~ */ GOTO 139
  IF ~~ THEN REPLY #62439 /* ~"C'est tout ce que je voulais savoir. Allons-y."~ */ EXIT
END

IF ~~ THEN BEGIN 273 // from: 270.1 271.1 272.0
  SAY #62440 /* ~Tombée-en-Disgrâce hoche la tête. "J'y ai bien réfléchi, et je suis d'accord." Elle te regarde d'un air interrogateur. "Je crois que cela vient de la satisfaction que j'éprouve à être devenue ce que je suis, et que cela n'aurait pas été possible sans faire l'expérience du multivers à ma façon."~ */
  IF ~  Global("Good_Grace_2","GLOBAL",0)
Global("Chaotic_Grace_1","GLOBAL",0)
~ THEN REPLY #62441 /* ~"Ça n'a rien à voir avec le fait de faire l'expérience du multivers. C'est ce qu'on retire de l'expérience qui importe."~ */ GOTO 274
  IF ~  Global("Good_Grace_2","GLOBAL",1)
~ THEN REPLY #62442 /* ~"Je le répète, ça n'a rien à voir avec le fait de faire l'expérience du multivers. C'est ce qu'on retire de l'expérience qui importe. C'est votre force de caractère qui vous a changée."~ */ GOTO 274
  IF ~  Global("Chaotic_Grace_1","GLOBAL",1)
~ THEN REPLY #62443 /* ~"Je le répète, ça n'a rien à voir avec le fait de faire l'expérience du multivers. C'est ce qu'on retire de l'expérience qui importe. C'est votre force de caractère qui vous a changée."~ */ GOTO 274
  IF ~~ THEN REPLY #62444 /* ~"Ces 'changements' que vous effectuez ressemblent à des sorts - comment avez-vous appris à faire ces choses-là ? Vous avez un livre de sorts ?"~ */ GOTO 272
  IF ~~ THEN REPLY #62445 /* ~"Je vois. Puis-je vous poser d'autres questions ?"~ */ GOTO 139
  IF ~~ THEN REPLY #62446 /* ~"C'est tout ce que je voulais savoir. Allons-y."~ */ EXIT
END

IF ~~ THEN BEGIN 274 // from: 273.0 273.1 273.2
  SAY #62447 /* ~Tombée-en-Disgrâce hoche la tête, pensive. "Il y a du vrai dans ce que vous dites là."~ */
  IF ~~ THEN REPLY #62448 /* ~Vérité : "Selon moi, beaucoup d'autres, face aux mêmes expériences, se seraient effondrés. Vous, vous en avez retiré un *savoir* qui vous a rendue plus forte… ce qui démontre une volonté et un caractère peu communs."~ */ DO ~SetAnimState("Grace",ANIM_MIMESTAND)
~ GOTO 275
  IF ~~ THEN REPLY #62449 /* ~Mensonge flatteur : "Selon moi, beaucoup d'autres, face aux mêmes expériences, se seraient effondrés. Vous, vous en avez retiré un *savoir* qui vous a rendue plus forte… ce qui démontre une volonté et un caractère peu communs."~ */ DO ~SetAnimState("Grace",ANIM_MIMESTAND)
~ GOTO 275
  IF ~~ THEN REPLY #62450 /* ~"Peut-être. Puis-je vous poser d'autres questions?"~ */ GOTO 139
  IF ~~ THEN REPLY #62451 /* ~"C'est tout ce que j'ai à dire. Allons-y."~ */ EXIT
END

IF ~~ THEN BEGIN 275 // from: 274.0 274.1
  SAY #62452 /* ~Tombée-en-Disgrâce te regarde sans mot dire.~ */
  IF ~~ THEN REPLY #62453 /* ~Vérité: "… et c'est ce que j'admire en vous. Rester capable de voir dans de telles horreurs le moyen de s'améliorer en tant qu'individu exige une force de caractère *très peu* commune."~ */ DO ~MoraleInc("Grace",1)
IncrementGlobalOnceEx("GLOBALGood_Grace_2","GLOBALGood",1)
~ GOTO 276
  IF ~~ THEN REPLY #62454 /* ~Mensonge flatteur : "… et c'est ce que j'admire en vous. Rester capable de voir dans de telles horreurs le moyen de s'améliorer en tant qu'individu exige une force de caractère *très peu* commune."~ */ DO ~MoraleInc("Grace",1)
IncrementGlobalOnceEx("GLOBALChaotic_Grace_1","GLOBALLaw",-1)
~ GOTO 276
  IF ~~ THEN REPLY #62455 /* ~"Et c'est tout." ~ */ GOTO 276
END

IF ~~ THEN BEGIN 276 // from: 275.0 275.1 275.2
  SAY #62456 /* ~Tombée-en-Disgrâce sourit, puis acquiesce. "Merci. Vos paroles sont aussi sages qu'aimables. Mais je crains que ma force de caractère ne soit moindre qu'il n'y paraît. J'essaie pourtant de traiter chaque expérience comme un nouvel enseignement."~ */
  IF ~~ THEN REPLY #62457 /* ~"Bon angle d'approche. Puis-je vous poser d'autres questions ?"~ */ GOTO 139
  IF ~~ THEN REPLY #62458 /* ~"Voilà qui est sage. Allons-y."~ */ EXIT
END

IF ~~ THEN BEGIN 277 // from: 205.1
  SAY #62459 /* ~"Non."~ */
  IF ~~ THEN REPLY #62460 /* ~"S'il vous plaît ?"~ */ GOTO 278
  IF ~~ THEN REPLY #62461 /* ~"Bon, d'accord. J'ai d'autres questions…"~ */ GOTO 205
  IF ~~ THEN REPLY #62462 /* ~"Simple question. Allons-y."~ */ EXIT
END

IF ~~ THEN BEGIN 278 // from: 277.0
  SAY #62463 /* ~Grâce a un léger sourire. "Une dame doit avoir ses secrets."~ */
  IF ~~ THEN REPLY #62464 /* ~"Bon, d'accord. J'ai d'autres questions…"~ */ GOTO 205
  IF ~~ THEN REPLY #62465 /* ~"Simple question. Allons-y."~ */ EXIT
END

IF ~~ THEN BEGIN 279 // from: 139.14 139.15 280.4 281.8 284.0 286.0 287.2 288.1 289.2 290.2 291.3 292.2 293.2 294.3 295.1 296.3 297.3 298.3 299.2 300.3 301.0 302.2 303.0 304.2 305.1 307.0 308.1 309.2 310.2 311.2 312.1 313.1 314.0 316.1 317.0 319.1 320.2 321.1 322.1 323.3 324.0 325.1 326.1 327.2 328.1 329.0 343.0 344.1 345.1 346.1 347.1 357.4 359.1 360.0 361.0
  SAY #62466 /* ~"De qui voulez-vous discuter au juste ?"~ */
  IF ~~ THEN REPLY #62467 /* ~"Moi, en fait."~ */ GOTO 357
  IF ~~ THEN REPLY #62468 /* ~"Vous."~ */ GOTO 280
  IF ~  InParty("Morte")
~ THEN REPLY #62469 /* ~"Morte."~ */ GOTO 296
  IF ~  InParty("Annah")
~ THEN REPLY #62470 /* ~"Annah."~ */ GOTO 340
  IF ~  InParty("Dakkon")
~ THEN REPLY #62471 /* ~"Dak'kon."~ */ GOTO 308
  IF ~  InParty("Nordom")
~ THEN REPLY #62472 /* ~"Nordom."~ */ GOTO 315
  IF ~  InParty("Ignus")
~ THEN REPLY #62473 /* ~"Ignus."~ */ GOTO 318
  IF ~  InParty("Vhail")
~ THEN REPLY #62474 /* ~"Vhailor."~ */ GOTO 325
  IF ~~ THEN REPLY #62475 /* ~"Personne, en fait. J'ai d'autres questions…"~ */ GOTO 139
  IF ~~ THEN REPLY #62476 /* ~"Peu importe. Une autre fois, peut-être. Allons-y."~ */ EXIT
END

IF ~~ THEN BEGIN 280 // from: 279.1
  SAY #62477 /* ~"Moi ? Vraiment…" Elle y réfléchit, puis elle hoche la tête. "Très bien, si vous avez des questions, je vous écoute."~ */
  IF ~  GlobalGT("Ravel_Kiss","GLOBAL",0)
!Global("Ravel_Kiss","GLOBAL",2)
!Global("Ravel_Kiss","GLOBAL",3)
~ THEN REPLY #62478 /* ~"Je voulais que vous le sachiez : quand j'ai embrassé Ravel dans le dédale, je…"~ */ GOTO 281
  IF ~~ THEN REPLY #62479 /* ~"Franchement, j'aimerais connaître vos sentiments pour moi."~ */ GOTO 287
  IF ~~ THEN REPLY #62480 /* ~"Je voudrais savoir ce que vous pensez de ma situation."~ */ GOTO 330
  IF ~~ THEN REPLY #62481 /* ~"Avez-vous une idée de qui ou de ce que je pourrais être ?"~ */ GOTO 288
  IF ~~ THEN REPLY #62482 /* ~"Tant pis. Je voulais parler de quelqu'un d'autre…"~ */ GOTO 279
  IF ~~ THEN REPLY #62483 /* ~"Laissez tomber. J'ai d'autres questions…"~ */ GOTO 139
  IF ~~ THEN REPLY #62484 /* ~"Une autre fois, peut-être. Allons-y."~ */ EXIT
END

IF ~~ THEN BEGIN 281 // from: 280.0 357.0
  SAY #62485 /* ~Grâce lève la main pour te réduire au silence. "Ne dites rien. J'admire votre courage de vouloir agir ainsi - il n'y a pas beaucoup de gens qui oseraient embrasser un mythe, surtout un mythe comme Ravel."~ */
  IF ~  !Global("Lawful_Grace_1","GLOBAL",1)
!Global("Lawful_Grace_2","GLOBAL",1)
!Global("Chaotic_Grace_2","GLOBAL",1)
!Global("Chaotic_Grace_3","GLOBAL",1)
~ THEN REPLY #62486 /* ~Vérité : "J'ai embrassé Ravel parce qu'elle ne m'en croyait pas capable - je me doutais qu'elle me mettait à l'épreuve."~ */ DO ~IncrementGlobalOnceEx("GLOBALLawful_Grace_1","GLOBALLaw",1)
~ GOTO 283
  IF ~  !Global("Lawful_Grace_1","GLOBAL",1)
!Global("Lawful_Grace_2","GLOBAL",1)
!Global("Chaotic_Grace_2","GLOBAL",1)
!Global("Chaotic_Grace_3","GLOBAL",1)
~ THEN REPLY #62487 /* ~Mensonge : "J'ai embrassé Ravel parce qu'elle ne m'en croyait pas capable - je me doutais qu'elle me mettait à l'épreuve."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Grace_2","GLOBALLaw",-1)
~ GOTO 283
  IF ~  !Global("Lawful_Grace_1","GLOBAL",1)
!Global("Lawful_Grace_2","GLOBAL",1)
!Global("Chaotic_Grace_2","GLOBAL",1)
!Global("Chaotic_Grace_3","GLOBAL",1)
~ THEN REPLY #62488 /* ~Vérité : "J'ai embrassé Ravel parce que ça m'a paru juste - ne me demandez pas pourquoi."~ */ DO ~IncrementGlobalOnceEx("GLOBALLawful_Grace_1","GLOBALLaw",1)
~ GOTO 282
  IF ~  !Global("Lawful_Grace_1","GLOBAL",1)
!Global("Lawful_Grace_2","GLOBAL",1)
!Global("Chaotic_Grace_2","GLOBAL",1)
!Global("Chaotic_Grace_3","GLOBAL",1)
~ THEN REPLY #62489 /* ~Mensonge : "J'ai embrassé Ravel parce que ça m'a paru juste - ne me demandez pas pourquoi."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Grace_2","GLOBALLaw",-1)
~ GOTO 282
  IF ~  !Global("Lawful_Grace_1","GLOBAL",1)
!Global("Lawful_Grace_2","GLOBAL",1)
!Global("Chaotic_Grace_2","GLOBAL",1)
!Global("Chaotic_Grace_3","GLOBAL",1)
~ THEN REPLY #62490 /* ~Vérité: "J'ai embrassé Ravel parce que j'en avais envie… sa forme normale était déplaisante."~ */ DO ~IncrementGlobalOnceEx("GLOBALLawful_Grace_1","GLOBALLaw",1)
~ GOTO 282
  IF ~  !Global("Lawful_Grace_1","GLOBAL",1)
!Global("Lawful_Grace_2","GLOBAL",1)
!Global("Chaotic_Grace_2","GLOBAL",1)
!Global("Chaotic_Grace_3","GLOBAL",1)
~ THEN REPLY #62491 /* ~Mensonge: "J'ai embrassé Ravel parce que j'en avais envie… sa forme normale était déplaisante."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Grace_2","GLOBALLaw",-1)
~ GOTO 282
  IF ~  !Global("Ravel_Kiss","GLOBAL",5)
!Global("Lawful_Grace_1","GLOBAL",1)
!Global("Lawful_Grace_2","GLOBAL",1)
!Global("Chaotic_Grace_2","GLOBAL",1)
!Global("Chaotic_Grace_3","GLOBAL",1)
~ THEN REPLY #62492 /* ~Vérité: "J'ai embrassé Ravel parce que je ne pouvais pas vous embrasser, vous."~ */ DO ~IncrementGlobalOnceEx("GLOBALLawful_Grace_2","GLOBALLaw",1)
~ GOTO 285
  IF ~  !Global("Ravel_Kiss","GLOBAL",5)
!Global("Lawful_Grace_1","GLOBAL",1)
!Global("Lawful_Grace_2","GLOBAL",1)
!Global("Chaotic_Grace_2","GLOBAL",1)
!Global("Chaotic_Grace_3","GLOBAL",1)
~ THEN REPLY #62493 /* ~Mensonge flatteur : "J'ai embrassé Ravel parce que je ne pouvais pas vous embrasser, vous."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Grace_3","GLOBALLaw",-1)
~ GOTO 285
  IF ~~ THEN REPLY #62494 /* ~"Très bien. Je voulais parler de quelqu'un d'autre…"~ */ GOTO 279
  IF ~~ THEN REPLY #62495 /* ~"J'ai d'autres questions, dans ce cas…"~ */ GOTO 139
  IF ~~ THEN REPLY #62496 /* ~"N'en parlons plus, alors. Allons-y."~ */ EXIT
END

IF ~~ THEN BEGIN 282 // from: 281.2 281.3 281.4 281.5
  SAY #62497 /* ~"Elle vous mettait à l'épreuve."~ */
  IF ~~ THEN REPLY #62498 /* ~"Que voulez-vous dire ?"~ */ GOTO 283
END

IF ~~ THEN BEGIN 283 // from: 281.0 281.1 282.0
  SAY #62499 /* ~"Je pense qu'il y a des limites à ce que Ravel a pu voir vous concernant, ce qui pourrait expliquer pourquoi vous l'intriguez à ce point. Elle ne peut tester votre nature qu'en vous proposant des défis physiques."~ */
  IF ~~ THEN REPLY #62500 /* ~"Que croyez-vous qu'elle mettait à l'épreuve ?"~ */ GOTO 284
END

IF ~~ THEN BEGIN 284 // from: 283.0
  SAY #62501 /* ~"Je crois qu'elle désirait savoir si vous éprouviez un sentiment à son égard - un baiser permet d'en juger… quoique non sans mal."~ */
  IF ~~ THEN REPLY #62502 /* ~"Très bien. Je voulais parler de quelqu'un d'autre…"~ */ GOTO 279
  IF ~~ THEN REPLY #62503 /* ~"J'ai d'autres questions, dans ce cas…"~ */ GOTO 139
  IF ~~ THEN REPLY #62504 /* ~"N'en parlons plus, alors. Allons-y."~ */ EXIT
END

IF ~~ THEN BEGIN 285 // from: 281.6 281.7
  SAY #62505 /* ~"Mieux valait l'embrasser, elle, malgré le danger. Embrasser une succube, c'est courtiser la mort."~ */
  IF ~~ THEN REPLY #62506 /* ~"Que voulez-vous dire ?"~ */ JOURNAL #61616 /* ~Tombée-en-Disgrâce m'a dit que ses baisers pouvaient voler l'énergie vitale de ses amants, mais cela m'excite. Après tout, je suis immortel, pas vrai ? Il faut que je réfléchisse à la question.~ */ GOTO 286
END

IF ~~ THEN BEGIN 286 // from: 285.0
  SAY #62507 /* ~"Une succube tue en drainant l'énergie des mortels par ses baisers. Même s'il s'agit d'une expérience fort agréable pour la victime, elle ne vit souvent pas assez longtemps pour l'apprécier."~ */
  IF ~~ THEN REPLY #62508 /* ~"Oh. Je… euh, je voulais parler de quelqu'un d'autre…"~ */ GOTO 279
  IF ~~ THEN REPLY #62509 /* ~"Hmmmm. J'ai d'autres questions, dans ce cas…"~ */ GOTO 139
  IF ~~ THEN REPLY #62510 /* ~"Étonnant… euh, je veux dire effrayant. Allons-y."~ */ EXIT
END

IF ~~ THEN BEGIN 287 // from: 280.1 357.1
  SAY #62511 /* ~Grâce a un léger sourire. "Une dame doit avoir ses secrets."~ */
  IF ~~ THEN REPLY #62512 /* ~"J'aimerais savoir ce que vous pensez de ma situation, alors."~ */ GOTO 330
  IF ~~ THEN REPLY #62513 /* ~"Très bien. Avez-vous une idée de qui ou de ce que je pourrais être ?"~ */ GOTO 288
  IF ~~ THEN REPLY #62514 /* ~"Tant pis. Je voulais parler de quelqu'un d'autre…"~ */ GOTO 279
  IF ~~ THEN REPLY #62515 /* ~"Laissez tomber. J'ai d'autres questions…"~ */ GOTO 139
  IF ~~ THEN REPLY #62516 /* ~"Une autre fois, peut-être. Allons-y."~ */ EXIT
END

IF ~~ THEN BEGIN 288 // from: 280.3 287.1 357.3
  SAY #62517 /* ~Grâce fronce les sourcils. "J'avoue que vous constituez une énigme." Elle sourit. "Mais j'aime le mystère. Voulez-vous que nous essayions de le résoudre ?"~ */
  IF ~~ THEN REPLY #62518 /* ~"Oui."~ */ GOTO 289
  IF ~~ THEN REPLY #62519 /* ~"Non, ça attendra. Je voulais parler de quelqu'un d'autre…"~ */ GOTO 279
  IF ~~ THEN REPLY #62520 /* ~"Laissez tomber. J'ai d'autres questions…"~ */ GOTO 139
  IF ~~ THEN REPLY #62521 /* ~"Une autre fois, peut-être. Allons-y."~ */ EXIT
END

IF ~~ THEN BEGIN 289 // from: 288.0
  SAY #62522 /* ~"D'abord, même s'il se peut que vous soyez un tieffelin ou un sang-mêlé d'une espèce rare, je crois que vous êtes humain… ou que vous l'avez été."~ */
  IF ~~ THEN REPLY #62523 /* ~"D'accord… continuez."~ */ GOTO 290
  IF ~~ THEN REPLY #62524 /* ~"Il se peut qu'il y ait autre chose qui éclaircirait ma situation…"~ */ GOTO 330
  IF ~~ THEN REPLY #62525 /* ~"À bien y réfléchir, ça attendra. Je voulais parler de quelqu'un d'autre…"~ */ GOTO 279
  IF ~~ THEN REPLY #62526 /* ~"En fait, peu importe. J'ai d'autres questions…"~ */ GOTO 139
  IF ~~ THEN REPLY #62527 /* ~"On continuera une autre fois. Pour l'instant, allons-y."~ */ EXIT
END

IF ~~ THEN BEGIN 290 // from: 289.0
  SAY #62528 /* ~"Votre aspect est celui d'un mâle humain dans la trentaine - les sutures et le tissu cicatriciel compliquent l'estimation."~ */
  IF ~~ THEN REPLY #62529 /* ~"À qui le dites-vous… continuez."~ */ GOTO 291
  IF ~~ THEN REPLY #62530 /* ~"Il se peut qu'il y ait autre chose qui éclaircirait ma situation…"~ */ GOTO 330
  IF ~~ THEN REPLY #62531 /* ~"À bien y réfléchir, ça attendra. Je voulais parler de quelqu'un d'autre…"~ */ GOTO 279
  IF ~~ THEN REPLY #62532 /* ~"En fait, peu importe. J'ai d'autres questions…"~ */ GOTO 139
  IF ~~ THEN REPLY #62533 /* ~"On continuera une autre fois."~ */ EXIT
END

IF ~~ THEN BEGIN 291 // from: 290.0
  SAY #62534 /* ~"La clé de votre passé, c'est votre mémoire. Certains lieux, événements, individus peuvent ramener à la lumière des souvenirs enfouis. Il vous serait donc profitable de visiter le plus d'endroits possible et de parler au plus grand nombre de gens possible… bref, de faire le plus possible l'expérience de votre univers."~ */
  IF ~  GlobalGT("Ravel_Grace","GLOBAL",0)
~ THEN GOTO 292
  IF ~~ THEN REPLY #62535 /* ~"Un avis de Sensat, hein ?"~ */ GOTO 295
  IF ~~ THEN REPLY #62536 /* ~"Il se peut qu'il y ait autre chose qui éclaircirait ma situation…"~ */ GOTO 330
  IF ~~ THEN REPLY #62537 /* ~"Très bien. Je voulais parler de quelqu'un d'autre…"~ */ GOTO 279
  IF ~~ THEN REPLY #62538 /* ~"En fait, peu importe. J'ai d'autres questions…"~ */ GOTO 139
  IF ~~ THEN REPLY #62539 /* ~"On continuera une autre fois."~ */ EXIT
END

IF ~~ THEN BEGIN 292 // from: 291.0
  SAY #62540 /* ~"De plus, Ravel a dit un certain nombre de choses que je trouve intéressantes. Le fait que votre mortalité ait disparu me cause souci - à mon sens, si quelqu'un s'en était emparé, cela pourrait vous valoir de graves problèmes."~ */
  IF ~~ THEN REPLY #62541 /* ~"Continuez…"~ */ GOTO 293
  IF ~~ THEN REPLY #62542 /* ~"Il se peut qu'il y ait autre chose qui éclaircirait ma situation…"~ */ GOTO 330
  IF ~~ THEN REPLY #62543 /* ~"Très bien. Je voulais parler de quelqu'un d'autre…"~ */ GOTO 279
  IF ~~ THEN REPLY #62544 /* ~"En fait, peu importe. J'ai d'autres questions…"~ */ GOTO 139
  IF ~~ THEN REPLY #62545 /* ~"On continuera une autre fois."~ */ EXIT
END

IF ~~ THEN BEGIN 293 // from: 292.0
  SAY #62546 /* ~"Et je n'aime pas ce que Ravel a dit des morts de l'esprit - elle paraît suggérer que, plus vous mourez, plus votre esprit se dégrade."~ */
  IF ~~ THEN REPLY #62547 /* ~"Continuez…"~ */ GOTO 294
  IF ~~ THEN REPLY #62548 /* ~"Il se peut qu'il y ait autre chose qui éclaircirait ma situation…"~ */ GOTO 330
  IF ~~ THEN REPLY #62549 /* ~"Très bien. Je voulais parler de quelqu'un d'autre…"~ */ GOTO 279
  IF ~~ THEN REPLY #62550 /* ~"En fait, peu importe. J'ai d'autres questions…"~ */ GOTO 139
  IF ~~ THEN REPLY #62551 /* ~"On continuera une autre fois."~ */ EXIT
END

IF ~~ THEN BEGIN 294 // from: 293.0
  SAY #62552 /* ~"Enfin, elle a affirmé que vos cicatrices racontent "une guerre entre fiélons" - pour moi, il s'agit de la Guerre Sanglante."~ */
  IF ~  Global("Know_Blood_War","GLOBAL",0)
~ THEN REPLY #62553 /* ~"Qu'est-ce que la Guerre Sanglante ?"~ */ DO ~SetGlobal("Know_Blood_War","GLOBAL",1)
~ GOTO 219
  IF ~  Global("Know_Blood_War","GLOBAL",1)
~ THEN REPLY #62554 /* ~"J'en ai entendu parler. Pouvez-vous me dire ce que vous en connaissez ?"~ */ GOTO 219
  IF ~~ THEN REPLY #62555 /* ~"Il se peut qu'il y ait autre chose qui éclaircirait ma situation…"~ */ GOTO 330
  IF ~~ THEN REPLY #62556 /* ~"Très bien. Je voulais parler de quelqu'un d'autre…"~ */ GOTO 279
  IF ~~ THEN REPLY #62557 /* ~"En fait, peu importe. J'ai d'autres questions…"~ */ GOTO 139
  IF ~~ THEN REPLY #62558 /* ~"On continuera une autre fois."~ */ EXIT
END

IF ~~ THEN BEGIN 295 // from: 291.1
  SAY #62559 /* ~Tombée-en-Disgrâce sourit, amusée. "Je ne vous le conseillerais pas si je n'en avais pas déjà fait l'expérience. Ni si vous ne saviez pas déjà que c'est vrai."~ */
  IF ~~ THEN REPLY #62560 /* ~"Il se peut qu'il y ait autre chose qui éclaircirait ma situation…"~ */ GOTO 330
  IF ~~ THEN REPLY #62561 /* ~"D'accord. Je voulais parler de quelqu'un d'autre…"~ */ GOTO 279
  IF ~~ THEN REPLY #62562 /* ~"Très bien. J'ai d'autres questions…"~ */ GOTO 139
  IF ~~ THEN REPLY #62563 /* ~"On continuera une autre fois."~ */ EXIT
END

IF ~~ THEN BEGIN 296 // from: 279.2
  SAY #62564 /* ~"Morte est assez étrange… J'en ai vu, dans mon existence, mais il est bien le premier dans son genre. Il lui arrive de se comporter comme un mimir. J'admets que son savoir n'est pas négligeable, mais il traîne dans son sillage une…" Elle hume l'air et fronce le nez. "… odeur baatorienne."~ */
  IF ~~ THEN REPLY #62565 /* ~"Une odeur baatorienne ?"~ */ DO ~SetGlobal("Grace_Smell_Mimir","GLOBAL",1)
~ GOTO 297
  IF ~~ THEN REPLY #62566 /* ~"Un mimir ?"~ */ DO ~IncrementGlobalOnceEx("GLOBALKnow_Mimir","GLOBALKnow_Mimir",0)
~ GOTO 299
  IF ~  Global("Morte_Story","GLOBAL",1)
~ THEN REPLY #62567 /* ~"J'ai découvert pourquoi - il s'avère que je l'ai détaché du Pilier de Crânes sur Baator il y a longtemps."~ */ GOTO 304
  IF ~~ THEN REPLY #62568 /* ~"Je vois. Je voulais parler de quelqu'un d'autre…"~ */ GOTO 279
  IF ~~ THEN REPLY #62569 /* ~"J'ai d'autres questions…"~ */ GOTO 139
  IF ~~ THEN REPLY #62570 /* ~"On continuera une autre fois."~ */ EXIT
END

IF ~~ THEN BEGIN 297 // from: 296.0 298.0
  SAY #62571 /* ~"Oui. Mais ce n'est pas un baatezu… du moins je n'en ai jamais vu de pareil. Par contre, son odeur m'incite à la prudence en ce qui le concerne."~ */
  IF ~~ THEN REPLY #62572 /* ~"Qu'est-ce que vous entendez par 'baatezu' et 'baatorien' ?"~ */ GOTO 298
  IF ~  Global("Know_Mimir","GLOBAL",0)
~ THEN REPLY #62573 /* ~"Vous avez parlé d'un 'mimir' ?"~ */ DO ~SetGlobal("Know_Mimir","GLOBAL",1)
~ GOTO 299
  IF ~  GlobalGT("Know_Mimir","GLOBAL",0)
~ THEN REPLY #62574 /* ~"Vous avez parlé d'un 'mimir' ?"~ */ GOTO 299
  IF ~~ THEN REPLY #62575 /* ~"Je vois. Je voulais parler de quelqu'un d'autre…"~ */ GOTO 279
  IF ~~ THEN REPLY #62576 /* ~"Hmmm. J'ai d'autres questions…"~ */ GOTO 139
  IF ~~ THEN REPLY #62577 /* ~"On continuera une autre fois."~ */ EXIT
END

IF ~~ THEN BEGIN 298 // from: 297.0
  SAY #62578 /* ~"Mes excuses… Baator est un plan extérieur, le foyer d'une race de fiélons, les baatezus. Ce sont de viles créatures, mais d'un comportement ordonné et loyal. On les appelle parfois des 'diables'. Ils croient aux contrats, à la hiérarchie… sous bien des aspects, on peut les considérer comme des bureaucrates du mal."~ */
  IF ~~ THEN REPLY #62579 /* ~"Vous avez parlé d'une odeur baatorienne ?"~ */ DO ~SetGlobal("Grace_Smell_Mimir","GLOBAL",1)
~ GOTO 297
  IF ~  Global("Know_Mimir","GLOBAL",0)
~ THEN REPLY #62580 /* ~"Vous avez parlé d'un 'mimir' ?"~ */ DO ~SetGlobal("Know_Mimir","GLOBAL",1)
~ GOTO 299
  IF ~  GlobalGT("Know_Mimir","GLOBAL",0)
~ THEN REPLY #62581 /* ~"Vous avez parlé d'un 'mimir' ?"~ */ GOTO 299
  IF ~~ THEN REPLY #62582 /* ~"Je vois. Je voulais parler de quelqu'un d'autre…"~ */ GOTO 279
  IF ~~ THEN REPLY #62583 /* ~"Hmmm. J'ai d'autres questions…"~ */ GOTO 139
  IF ~~ THEN REPLY #62584 /* ~"On continuera une autre fois."~ */ EXIT
END

IF ~~ THEN BEGIN 299 // from: 296.1 297.1 297.2 298.1 298.2
  SAY #62585 /* ~"Les mimirs sont de vraies encyclopédies. Leur propriétaire peut leur poser des questions, et, s'ils en ont la réponse, ils la donnent."~ */
  IF ~  Global("Morte_Story","GLOBAL",0)
~ THEN REPLY #62586 /* ~"Et Morte est un mimir ?"~ */ DO ~SetGlobal("Grace_Silver_Mimir","GLOBAL",1)
~ GOTO 300
  IF ~  Global("Morte_Story","GLOBAL",1)
~ THEN REPLY #62587 /* ~"Eh bien, Morte n'est pas un mimir - il s'avère que je l'ai détaché du Pilier de Crânes sur Baator il y a longtemps."~ */ GOTO 304
  IF ~~ THEN REPLY #62588 /* ~"Je vois. Je voulais parler de quelqu'un d'autre…"~ */ GOTO 279
  IF ~~ THEN REPLY #62589 /* ~"Hmmm. J'ai d'autres questions…"~ */ GOTO 139
  IF ~~ THEN REPLY #62590 /* ~"On continuera une autre fois."~ */ EXIT
END

IF ~~ THEN BEGIN 300 // from: 299.0
  SAY #62591 /* ~"Non. Il lui manque le métal argenté dont les mimirs sont pourvus en général. Et il a une attitude personnelle que n'aurait pas un mimir plus… conventionnel." Grâce hausse les épaules. "Il *pourrait* en être un, mais il ne ressemble à aucun de ceux que j'aie rencontrés."~ */
  IF ~~ THEN REPLY #62592 /* ~"Je crois que Morte est un mimir."~ */ GOTO 301
  IF ~  Global("Morte_Mimir","GLOBAL",1)
~ THEN REPLY #62593 /* ~"Morte m'a dit être un mimir."~ */ GOTO 302
  IF ~~ THEN REPLY #62594 /* ~"Je ne crois pas que Morte soit un mimir, moi non plus."~ */ GOTO 303
  IF ~~ THEN REPLY #62595 /* ~"Je vois. Je voulais parler de quelqu'un d'autre…"~ */ GOTO 279
  IF ~~ THEN REPLY #62596 /* ~"Hmmm. J'ai d'autres questions…"~ */ GOTO 139
  IF ~~ THEN REPLY #62597 /* ~"On continuera une autre fois."~ */ EXIT
END

IF ~~ THEN BEGIN 301 // from: 300.0 302.0
  SAY #62598 /* ~"Dans ce cas, tout est dit sur ce sujet."~ */
  IF ~~ THEN REPLY #62599 /* ~"Je voulais parler de quelqu'un d'autre…"~ */ GOTO 279
  IF ~~ THEN REPLY #62600 /* ~"J'ai d'autres questions…"~ */ GOTO 139
  IF ~~ THEN REPLY #62601 /* ~"Allons-y, alors."~ */ EXIT
END

IF ~~ THEN BEGIN 302 // from: 300.1
  SAY #62602 /* ~"Ah ? Curieux. Bon…"~ */
  IF ~~ THEN REPLY #62603 /* ~"Je le crois."~ */ GOTO 301
  IF ~~ THEN REPLY #62604 /* ~"Mais je ne le crois pas."~ */ GOTO 303
  IF ~~ THEN REPLY #62605 /* ~"Je voulais parler de quelqu'un d'autre…"~ */ GOTO 279
  IF ~~ THEN REPLY #62606 /* ~"J'ai d'autres questions…"~ */ GOTO 139
  IF ~~ THEN REPLY #62607 /* ~"Allons-y, alors."~ */ EXIT
END

IF ~~ THEN BEGIN 303 // from: 300.2 302.1
  SAY #62608 /* ~"Il y aurait un moyen de s'en assurer… mais j'hésiterais à l'employer sur quelqu'un que je tiens pour un ami. Si c'est le cas, vous devez croire ce qu'il vous a dit."~ */
  IF ~~ THEN REPLY #62609 /* ~"Je vois. Je voulais parler de quelqu'un d'autre…"~ */ GOTO 279
  IF ~~ THEN REPLY #62610 /* ~"J'ai d'autres questions…"~ */ GOTO 139
  IF ~~ THEN REPLY #62611 /* ~"Très bien. Je ne vois rien d'autre à discuter."~ */ EXIT
END

IF ~~ THEN BEGIN 304 // from: 296.2 299.1
  SAY #62612 /* ~"Voilà qui expliquerait son savoir. Mais…" Elle marque une pause. "On ne se retrouve dans le Pilier qu'en certaines circonstances."~ */
  IF ~~ THEN REPLY #62613 /* ~"Quelles circonstances?"~ */ DO ~SetGlobal("Know_Pillar_Circumstances","GLOBAL",1)
~ GOTO 305
  IF ~  Global("Know_Pillar_Circumstances","GLOBAL",1)
~ THEN REPLY #62614 /* ~"J'en ai entendu parler - il faut avoir dit un mensonge qui a entraîné la mort de quelqu'un, exact ?"~ */ GOTO 307
  IF ~~ THEN REPLY #62615 /* ~"Je vois. Je voulais parler de quelqu'un d'autre…"~ */ GOTO 279
  IF ~~ THEN REPLY #62616 /* ~"J'ai d'autres questions…"~ */ GOTO 139
  IF ~~ THEN REPLY #62617 /* ~"Je ne vois rien d'autre à discuter. Allons-y."~ */ EXIT
END

IF ~~ THEN BEGIN 305 // from: 304.0
  SAY #62618 /* ~"Le Pilier des crânes est un pilier de têtes vivantes, celles de ceux dont les mensonges ont causé la mort d'autres personnes. Il peut répondre à toutes sortes de questions, mais il demande d'énormes paiements pour ses services."~ */
  IF ~~ THEN REPLY #62619 /* ~"Donc, pour se retrouver là-bas, Morte a dû dire un mensonge qui a entraîné la mort de quelqu'un ?"~ */ GOTO 307
  IF ~~ THEN REPLY #62620 /* ~"Je vois. Je voulais parler de quelqu'un d'autre…"~ */ GOTO 279
  IF ~~ THEN REPLY #62621 /* ~"Hmmmm. J'ai d'autres questions…"~ */ GOTO 139
  IF ~~ THEN REPLY #62622 /* ~"Très bien. Je ne vois rien d'autre à discuter."~ */ EXIT
END

IF ~~ THEN BEGIN 306 // from:
  SAY #62623 /* ~NŒUD NUL~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 307 // from: 304.1 305.0
  SAY #62624 /* ~"C'est exact."~ */
  IF ~~ THEN REPLY #62625 /* ~"Je vois. Je voulais parler de quelqu'un d'autre…"~ */ GOTO 279
  IF ~~ THEN REPLY #62626 /* ~"J'ai d'autres questions…"~ */ GOTO 139
  IF ~~ THEN REPLY #62627 /* ~"Hmmm. Je le lui demanderai peut-être. Pour l'instant, allons-y."~ */ EXIT
END

IF ~~ THEN BEGIN 308 // from: 279.4
  SAY #62628 /* ~"Dak'kon ?" Grâce hausse un sourcil. "Il est très bizarre pour un githzeraï."~ */
  IF ~~ THEN REPLY #62629 /* ~"Vraiment ? En quoi ?"~ */ GOTO 309
  IF ~~ THEN REPLY #62630 /* ~"Tant pis. Je voulais parler de quelqu'un d'autre…"~ */ GOTO 279
  IF ~~ THEN REPLY #62631 /* ~"Laisse tomber pour l'instant. J'ai d'autres questions…"~ */ GOTO 139
  IF ~~ THEN REPLY #62632 /* ~"On en reparlera. Pour l'instant, allons-y."~ */ EXIT
END

IF ~~ THEN BEGIN 309 // from: 308.0
  SAY #62633 /* ~"Déjà, il vous obéit, ce qui suffirait à faire de lui un paria parmi les siens. Sa race entière a jadis subi l'esclavage et même le *souvenir* de cette servitude leur est… désagréable."~ */
  IF ~  Global("Dakkon_Slave","GLOBAL",1)
~ THEN REPLY #62634 /* ~"Oui, il m'a promis il y a longtemps de rester à mon service jusqu'à ma mort. Je lui avais sauvé la vie. Il ignorait que j'étais immortel."~ */ GOTO 310
  IF ~~ THEN REPLY #62635 /* ~"Autre chose ?"~ */ GOTO 313
  IF ~~ THEN REPLY #62636 /* ~"Je vois. Je voulais parler de quelqu'un d'autre…"~ */ GOTO 279
  IF ~~ THEN REPLY #62637 /* ~"J'ai d'autres questions…"~ */ GOTO 139
  IF ~~ THEN REPLY #62638 /* ~"On en reparlera. Pour l'instant, allons-y."~ */ EXIT
END

IF ~~ THEN BEGIN 310 // from: 309.0
  SAY #62639 /* ~"Vraiment ? En tant que githzeraï… il doit souffrir, en effet. Comment lui avez-vous sauvé la vie ?"~ */
  IF ~  Global("Dakkon_Circle","GLOBAL",1)
~ THEN REPLY #62640 /* ~"Après qu'il soit tombé de Shra'kt'lor, une de mes incarnations précédentes est venue à lui alors qu'il agonisait dans les Limbes et lui a donné le Cercle Ininterrompu de Zerthimon, ce texte religieux qu'il possède."~ */ GOTO 311
  IF ~  Global("Dakkon_Circle","GLOBAL",0)
~ THEN REPLY #62641 /* ~"Je l'ignore. C'est une autre incarnation qui l'a sauvé, et je n'ai aucun souvenir de cet épisode. Pouvez-vous me dire autre chose à son sujet ?"~ */ GOTO 313
  IF ~~ THEN REPLY #62642 /* ~"C'est une longue histoire. Écoutez, je voulais parler de quelqu'un d'autre…"~ */ GOTO 279
  IF ~~ THEN REPLY #62643 /* ~"Peu importe. J'ai d'autres questions…"~ */ GOTO 139
  IF ~~ THEN REPLY #62644 /* ~"Je vous en parlerai une autre fois. Pour l'instant, allons-y."~ */ EXIT
END

IF ~~ THEN BEGIN 311 // from: 310.0
  SAY #62645 /* ~"Sauriez-vous *pourquoi* l'incarnation lui a sauvé la vie ?"~ */
  IF ~  Global("Memory_Shraktlor","GLOBAL",1)
~ THEN REPLY #62646 /* ~"Je crois que je l'ai sauvé à cause de sa lame en *karach*."~ */ GOTO 312
  IF ~~ THEN REPLY #62647 /* ~"Je l'ignore ; ses motivations me restent mystérieuses. Pouvez-vous me dire autre chose au sujet de Dak'kon ?"~ */ GOTO 313
  IF ~~ THEN REPLY #62648 /* ~"C'est une longue histoire. Écoutez, je voulais parler de quelqu'un d'autre…"~ */ GOTO 279
  IF ~~ THEN REPLY #62649 /* ~"Peu importe. J'ai d'autres questions…"~ */ GOTO 139
  IF ~~ THEN REPLY #62650 /* ~"Je vous en parlerai une autre fois. Pour l'instant, allons-y."~ */ EXIT
END

IF ~~ THEN BEGIN 312 // from: 311.0
  SAY #62651 /* ~"Curieux. Vous savez, une lame qui reflète la volonté de son porteur est une arme puissante, si le porteur se connaît lui-même."~ */
  IF ~~ THEN REPLY #62652 /* ~"C'est peut-être pour ça que je l'ai sauvé, alors. Pouvez-vous me dire autre chose au sujet de Dak'kon ?"~ */ GOTO 313
  IF ~~ THEN REPLY #62653 /* ~"Sans doute. Je voulais parler de quelqu'un d'autre…"~ */ GOTO 279
  IF ~~ THEN REPLY #62654 /* ~"J'ai d'autres questions…"~ */ GOTO 139
  IF ~~ THEN REPLY #62655 /* ~"Allons-y."~ */ EXIT
END

IF ~~ THEN BEGIN 313 // from: 309.1 310.1 311.1 312.0
  SAY #62656 /* ~"Dak'kon aborde tout de manière très ordonnée. Là encore, c'est curieux, pour un githzeraï. Ils sont plutôt imprévisibles… ils préfèrent suivre leur instinct plutôt qu'un plan."~ */
  IF ~~ THEN REPLY #62657 /* ~"Autre chose ?"~ */ GOTO 314
  IF ~~ THEN REPLY #62658 /* ~"Je vois. Je voulais parler de quelqu'un d'autre…"~ */ GOTO 279
  IF ~~ THEN REPLY #62659 /* ~"J'ai d'autres questions…"~ */ GOTO 139
  IF ~~ THEN REPLY #62660 /* ~"Allons-y."~ */ EXIT
END

IF ~~ THEN BEGIN 314 // from: 313.0
  SAY #62661 /* ~"Je crois qu'il est pieux et que c'est un allié sur lequel on peut compter."~ */
  IF ~~ THEN REPLY #62662 /* ~"Ça, oui. Je voulais parler de quelqu'un d'autre…"~ */ GOTO 279
  IF ~~ THEN REPLY #62663 /* ~"En effet. J'ai d'autres questions…"~ */ GOTO 139
  IF ~~ THEN REPLY #62664 /* ~"Je sais. Allons-y."~ */ EXIT
END

IF ~~ THEN BEGIN 315 // from: 279.5
  SAY #62665 /* ~"Nordom est un modrone hors-la-loi. Même s'il a en lui, désormais, un peu de chaos, il reste une créature très ordonnée, très logique. Sa logique peut être d'une grande utilité. En outre, s'il vous perçoit comme un chef, il vous sera d'une loyauté absolue."~ */
  IF ~~ THEN GOTO 316
END

IF ~~ THEN BEGIN 316 // from: 315.0
  SAY #62666 /* ~"Il pourrait survenir des problèmes s'il se retrouve confronté à une situation où l'étiquette joue un rôle… même les modrones normaux n'y entendent pas grand-chose." Elle marque une pause. "Je peux vous donner des conseils au sujet de Nordom, si vous voulez."~ */
  IF ~~ THEN REPLY #62667 /* ~"Bien sûr. Qu'est-ce que c'est ?"~ */ GOTO 317
  IF ~~ THEN REPLY #62668 /* ~"Pas pour le moment. Je voulais parler de quelqu'un d'autre…"~ */ GOTO 279
  IF ~~ THEN REPLY #62669 /* ~"Plus tard, peut-être. J'ai d'autres questions…"~ */ GOTO 139
  IF ~~ THEN REPLY #62670 /* ~"Pas maintenant - allons-y."~ */ EXIT
END

IF ~~ THEN BEGIN 317 // from: 316.0
  SAY #62671 /* ~"Son existence a changé du tout au tout - plus vous l'aiderez à comprendre sa nouvelle situation, sa place dans la hiérarchie de ce groupe et ce qui l'a amené à ce point, et mieux il pourra se concentrer. Pensez-y."~ */
  IF ~~ THEN REPLY #62672 /* ~"Il se peut que je suive votre conseil. Pour l'instant, je voulais parler de quelqu'un d'autre…"~ */ GOTO 279
  IF ~~ THEN REPLY #62673 /* ~"Je lui parlerai plus tard. J'ai d'autres questions…"~ */ GOTO 139
  IF ~~ THEN REPLY #62674 /* ~"Hmmm. Je verrai ce que je peux faire, alors. Merci. Allons-y."~ */ EXIT
END

IF ~~ THEN BEGIN 318 // from: 279.6
  SAY #62675 /* ~"Vous feriez mieux de ne plus voyager avec lui. Il est fou, et capable de semer la ruine autour de lui. Si j'ai bien compris, il a été mué en conduit vers le plan élémentaire du feu… une telle transformation tuerait presque n'importe quel mortel."~ */
  IF ~~ THEN GOTO 319
END

IF ~~ THEN BEGIN 319 // from: 318.0
  SAY #62676 /* ~"Non seulement il a *survécu* à cette épreuve, mais elle l'a renforcé. Son pouvoir est immense - au combat, je ne parierais guère sur les chances de l'adversaire. J'espère qu'on n'en viendra pas à de telles extrémités."~ */
  IF ~~ THEN REPLY #62677 /* ~"Si Ignus est si puissant, pourquoi est-ce qu'il n'attaque pas tout ce qu'il voit ? Pourquoi voyage-t-il avec nous ?"~ */ GOTO 320
  IF ~~ THEN REPLY #62678 /* ~"Je vois. Je voulais parler de quelqu'un d'autre…"~ */ GOTO 279
  IF ~~ THEN REPLY #62679 /* ~"Je l'espère aussi. J'ai d'autres questions…"~ */ GOTO 139
  IF ~~ THEN REPLY #62680 /* ~"Hmmm. Allons-y."~ */ EXIT
END

IF ~~ THEN BEGIN 320 // from: 319.0
  SAY #62681 /* ~"Je l'ignore. Mais je doute que ce soit par goût ; en fait, je crois qu'il nous considère tous, sauf vous, comme superflus."~ */
  IF ~  Global("Memory_Ignus_Taught","GLOBAL",1)
~ THEN REPLY #62682 /* ~"Parce que j'ai été son mentor jadis, je crois."~ */ GOTO 322
  IF ~~ THEN REPLY #62683 /* ~"Moi ? Pourquoi moi ?"~ */ GOTO 321
  IF ~~ THEN REPLY #62684 /* ~"Je voulais parler de quelqu'un d'autre…"~ */ GOTO 279
  IF ~~ THEN REPLY #62685 /* ~"J'ai d'autres questions…"~ */ GOTO 139
  IF ~~ THEN REPLY #62686 /* ~"Hmmm. Allons-y."~ */ EXIT
END

IF ~~ THEN BEGIN 321 // from: 320.1
  SAY #62687 /* ~"Là encore, je l'ignore. Mais n'avez-vous pas remarqué que, sitôt que vous lui ordonnez quoi que ce soit, il *obéit* ? Et ce, aveuglément. Si j'essayais de vous imiter, jamais je n'obtiendrais un tel résultat."~ */
  IF ~  Global("Memory_Ignus_Taught","GLOBAL",1)
~ THEN REPLY #62688 /* ~"Parce que j'ai été son mentor jadis, je crois."~ */ GOTO 322
  IF ~~ THEN REPLY #62689 /* ~"Je voulais parler de quelqu'un d'autre…"~ */ GOTO 279
  IF ~~ THEN REPLY #62690 /* ~"J'ai d'autres questions…"~ */ GOTO 139
  IF ~~ THEN REPLY #62691 /* ~"Hmmm. Allons-y."~ */ EXIT
END

IF ~~ THEN BEGIN 322 // from: 320.0 321.0
  SAY #62692 /* ~"Vous avez été son mentor ?"~ */
  IF ~~ THEN REPLY #62693 /* ~"Oui… une de mes incarnations précédentes lui a enseigné l'Art, mais la leçon a été rude. Tout au fond, il me considère encore comme son mentor, je crois."~ */ GOTO 323
  IF ~~ THEN REPLY #62694 /* ~"Laissez tomber. Je voulais parler de quelqu'un d'autre…"~ */ GOTO 279
  IF ~~ THEN REPLY #62695 /* ~"C'est une longue histoire. Pour l'instant, j'ai d'autres questions…"~ */ GOTO 139
  IF ~~ THEN REPLY #62696 /* ~"On poursuivra cette discussion une autre fois. Allons-y."~ */ EXIT
END

IF ~~ THEN BEGIN 323 // from: 322.0
  SAY #62697 /* ~Tombée-en-Disgrâce hoche la tête, pensive. "Cela explique tout." Elle te dévisage longuement. "Est-ce que de l'apprendre vous a posé un problème ?"~ */
  IF ~~ THEN REPLY #62698 /* ~"Je ne suis pas responsable de ce qu'Ignus est devenu. Cela me trouble-t-il ? Non."~ */ GOTO 324
  IF ~~ THEN REPLY #62699 /* ~"Je me sens en partie responsable - la méthode par laquelle j'ai appris à Ignus ce qu'il sait a pu contribuer à sa folie. Mais je n'en sais rien."~ */ DO ~IncrementGlobalOnceEx("GLOBALGood_Grace_3","GLOBALGood",1)
~ GOTO 324
  IF ~~ THEN REPLY #62700 /* ~"Oui. Mes vies passées ont influencé Ignus et l'ont brûlé, et je le regrette."~ */ DO ~IncrementGlobalOnceEx("GLOBALGood_Grace_3","GLOBALGood",1)
~ GOTO 324
  IF ~~ THEN REPLY #62701 /* ~"Je ne tiens pas à en discuter tout de suite. Je voulais parler de quelqu'un d'autre…"~ */ GOTO 279
  IF ~~ THEN REPLY #62702 /* ~"Laissez tomber. J'ai d'autres questions…"~ */ GOTO 139
  IF ~~ THEN REPLY #62703 /* ~"On en parlera une autre fois. Allons-y."~ */ EXIT
END

IF ~~ THEN BEGIN 324 // from: 323.0 323.1 323.2
  SAY #62704 /* ~"Ignus brûle intérieurement, d'un brasier tel que Baator lui-même en pâlit. Il est à présent plus qu'un sorcier, plus qu'un homme. Il est devenu une force. Je ne peux que me demander si c'était dans sa nature avant qu'il ne croise votre chemin."~ */
  IF ~~ THEN REPLY #62705 /* ~"Je l'ignore. Je voulais parler de quelqu'un d'autre…"~ */ GOTO 279
  IF ~~ THEN REPLY #62706 /* ~"Hmmm. J'ai d'autres questions…"~ */ GOTO 139
  IF ~~ THEN REPLY #62707 /* ~"On en parlera une autre fois. Allons-y."~ */ EXIT
END

IF ~~ THEN BEGIN 325 // from: 279.7
  SAY #62708 /* ~"Côtoyer les Rectifieurs comporte forcément des risques. Dans le cas de Vhailor, je crains que ces risques ne soient encore plus grands. La justice n'est pas seulement son obsession première, c'est une *part* de lui-même. Prenez garde en sa présence, car il nous observe à tout moment. C'est dans sa nature de Rectifieur."~ */
  IF ~  Global("Memory_Caging_Vhailor","GLOBAL",1)
~ THEN REPLY #62709 /* ~"J'ai un aveu à faire… c'est par ma faute que Vhailor a été captif de cette cellule sous Maudith pendant si longtemps, je le crains."~ */ GOTO 326
  IF ~~ THEN REPLY #62710 /* ~"Je vois. Je voulais parler de quelqu'un d'autre…"~ */ GOTO 279
  IF ~~ THEN REPLY #62711 /* ~"J'ai d'autres questions…"~ */ GOTO 139
  IF ~~ THEN REPLY #62712 /* ~"Très bien. Allons-y."~ */ EXIT
END

IF ~~ THEN BEGIN 326 // from: 325.0
  SAY #62713 /* ~"Que voulez-vous dire ?"~ */
  IF ~~ THEN REPLY #62714 /* ~"Un souvenir m'est revenu… Je me rappelle l'avoir enfermé dans cette cellule. Il me poursuivait depuis trop longtemps. Mais je ne voulais pas le tuer, juste le garder captif, le tenir à l'écart."~ */ GOTO 327
  IF ~~ THEN REPLY #62715 /* ~"Tant pis. Je voulais parler de quelqu'un d'autre…"~ */ GOTO 279
  IF ~~ THEN REPLY #62716 /* ~"Laissez tomber. J'ai d'autres questions…"~ */ GOTO 139
  IF ~~ THEN REPLY #62717 /* ~"On en parlera une autre fois. Allons-y."~ */ EXIT
END

IF ~~ THEN BEGIN 327 // from: 326.0
  SAY #62718 /* ~"S'il vous traquait, pourquoi ne l'auriez-vous qu'emprisonné ? Pourquoi ne l'auriez-vous pas tué ?"~ */
  IF ~~ THEN REPLY #62719 /* ~"Oh, je ne sais pas si j'aurais *pu* le tuer - la mort a eu sa chance, et il semble qu'elle ait échoué."~ */ GOTO 328
  IF ~~ THEN REPLY #62720 /* ~"Ça va vous sembler bizarre, mais il se pourrait que je ne l'aie pas tué PARCE QUE lui pouvait me tuer."~ */ GOTO 329
  IF ~~ THEN REPLY #62721 /* ~"Tant pis. Je voulais parler de quelqu'un d'autre…"~ */ GOTO 279
  IF ~~ THEN REPLY #62722 /* ~"Laissez tomber. J'ai d'autres questions…"~ */ GOTO 139
  IF ~~ THEN REPLY #62723 /* ~"On en parlera une autre fois. Allons-y."~ */ EXIT
END

IF ~~ THEN BEGIN 328 // from: 327.0
  SAY #62724 /* ~"C'est vrai. Sa croyance le soutient, et c'est un élément puissant."~ */
  IF ~~ THEN REPLY #62725 /* ~"Ça va vous sembler bizarre, mais il se pourrait que je ne l'aie pas tué PARCE QUE lui pouvait me tuer."~ */ GOTO 329
  IF ~~ THEN REPLY #62726 /* ~"Oui. Écoutez, je voulais parler de quelqu'un d'autre…"~ */ GOTO 279
  IF ~~ THEN REPLY #62727 /* ~"J'ai d'autres questions…"~ */ GOTO 139
  IF ~~ THEN REPLY #62728 /* ~"Allons-y."~ */ EXIT
END

IF ~~ THEN BEGIN 329 // from: 327.1 328.0
  SAY #62729 /* ~Tombée-en-Disgrâce hoche la tête. "Même un immortel peut vouloir rester vulnérable à un retour de la mortalité. Il en est beaucoup pour lesquels l'immortalité n'a *rien* d'une bénédiction. Vous avez pu souhaiter garder Vhailor en vie pour le jour où, peut-être, l'immortalité vous aurait trop pesé."~ */
  IF ~~ THEN REPLY #62730 /* ~"Je vois. Je voulais parler de quelqu'un d'autre…"~ */ GOTO 279
  IF ~~ THEN REPLY #62731 /* ~"Hmmm. J'ai d'autres questions…"~ */ GOTO 139
  IF ~~ THEN REPLY #62732 /* ~"Intéressant. Allons-y."~ */ EXIT
END

IF ~~ THEN BEGIN 330 // from: 280.2 287.0 289.1 290.1 291.2 292.1 293.1 294.2 295.0 331.1 332.0 333.0 334.0 335.4 336.0 337.2 338.2 339.0 357.2
  SAY #62733 /* ~"Savez-vous quoi que ce soit d'autres qui pourrait être utile ?"~ */
  IF ~  Global("Know_Shadow_Player_Connection","GLOBAL",0)
~ THEN REPLY #62734 /* ~"Des ombres ne cessent de venir me tuer - il me semble qu'elles me suivent, mais j'ignore pourquoi."~ */ GOTO 331
  IF ~  Global("Know_Player_Killer","GLOBAL",1)
~ THEN REPLY #62735 /* ~"Eh bien, je crois qu'on veut m'assassiner… Au point que j'ai construit une tombe piégée pour essayer de les tuer. D'après une inscription dans la tombe, il me poursuit… depuis, euh, aussi longtemps que mes incarnations s'en souviennent, semble-t-il."~ */ GOTO 334
  IF ~  GlobalGT("Ravel","GLOBAL",0)
~ THEN REPLY #62736 /* ~"Une chose : je n'ai pas toujours été immortel… C'est Ravel qui m'a rendu comme ça."~ */ GOTO 335
  IF ~  GlobalGT("Ravel","GLOBAL",0)
~ THEN REPLY #62737 /* ~"Quand j'ai parlé à Ravel, elle m'a dit que mes tatouages parlaient d'une "guerre des fiélons". Vous savez ce qu'elle a voulu dire ?"~ */ GOTO 338
  IF ~  Global("Know_Shadow_Player_Connection","GLOBAL",1)
~ THEN REPLY #62738 /* ~"Le Pilier de Crânes m'a dit que je "jette une ombre sur l'existence" - que sitôt que je meurs, un autre meurt à ma place."~ */ GOTO 333
  IF ~  Global("Know_Keeper_Mortality","GLOBAL",1)
~ THEN REPLY #62739 /* ~"Trias a dit qu'il y a un 'gardien' dans cette Forteresse des regrets, et qu'il retient ma mortalité prisonnière."~ */ GOTO 339
  IF ~~ THEN REPLY #62740 /* ~"Rien de très important, en fait. J'ai d'autres questions…"~ */ GOTO 139
  IF ~~ THEN REPLY #62741 /* ~"Peu importe. Peut-être une autre fois."~ */ EXIT
END

IF ~~ THEN BEGIN 331 // from: 330.0
  SAY #62742 /* ~"Des ombres ?" Tombée-en-Disgrâce marque une pause. "Les ombres sont des spectres. Elles ne chassent pas, elle attendent leurs victimes en embuscade. Bizarre."~ */
  IF ~  GlobalGT("Ravel_Grace","GLOBAL",0)
~ THEN GOTO 332
  IF ~~ THEN REPLY #62743 /* ~"Il y a autre chose qui pourrait éclaircir la situation…"~ */ GOTO 330
  IF ~~ THEN REPLY #62744 /* ~"J'ai d'autres questions…"~ */ GOTO 139
  IF ~~ THEN REPLY #62745 /* ~"On en parlera une autre fois. Pour l'instant, allons-y."~ */ EXIT
END

IF ~~ THEN BEGIN 332 // from: 331.0
  SAY #62746 /* ~"Et Ravel a dit que vous projetiez des ombres - et si vous attiriez ces spectres ?" Elle se tapote le menton pendant un moment. "Difficile à dire."~ */
  IF ~~ THEN REPLY #62747 /* ~"Il y a autre chose qui pourrait éclaircir la situation…"~ */ GOTO 330
  IF ~~ THEN REPLY #62748 /* ~"J'ai d'autres questions…"~ */ GOTO 139
  IF ~~ THEN REPLY #62749 /* ~"On en parlera une autre fois. Pour l'instant, allons-y."~ */ EXIT
END

IF ~~ THEN BEGIN 333 // from: 330.4
  SAY #62750 /* ~"On dirait que sa magie corrompt tout ce qu'elle touche." Tombée-en-Disgrâce baisse la voix. "C'est à se demander combien de fois vous êtes mort… et combien vous en avez entraîné dans la mort."~ */
  IF ~~ THEN REPLY #62751 /* ~"Il y a autre chose qui pourrait éclaircir la situation…"~ */ GOTO 330
  IF ~~ THEN REPLY #62752 /* ~"J'ai d'autres questions…"~ */ GOTO 139
  IF ~~ THEN REPLY #62753 /* ~"On en parlera une autre fois. Pour l'instant, allons-y."~ */ EXIT
END

IF ~~ THEN BEGIN 334 // from: 330.1
  SAY #62754 /* ~"Dans ce cas, quel que soit le tueur, il est très âgé pour vous avoir poursuivi aussi longtemps." Elle se tapote le menton. "Se pourrait-il que ce tueur soit immortel, lui aussi ?"~ */
  IF ~~ THEN REPLY #62755 /* ~"Peut-être. Il y a autre chose qui pourrait éclaircir la situation…"~ */ GOTO 330
  IF ~~ THEN REPLY #62756 /* ~"J'ai d'autres questions…"~ */ GOTO 139
  IF ~~ THEN REPLY #62757 /* ~"On en parlera une autre fois. Pour l'instant, allons-y."~ */ EXIT
END

IF ~~ THEN BEGIN 335 // from: 330.2
  SAY #62758 /* ~"Ce qui est en soi révélateur. Puisqu'il ne s'agit pas de votre état naturel, une question se pose: *pourquoi* avez-vous souhaité devenir immortel ? Savez-vous pourquoi Ravel a agi ainsi ?"~ */
  IF ~  Global("Ravel_Hair","GLOBAL",1)
GlobalGT("Ravel_Grace","GLOBAL",0)
~ THEN REPLY #62759 /* ~"Je n'ai aucune certitude, mais je crois qu'il s'agissait de m'aider à m'échapper d'une cage, de me rendre ma liberté."~ */ GOTO 337
  IF ~  Global("Ravel_Hair","GLOBAL",1)
Global("Ravel_Grace","GLOBAL",0)
~ THEN REPLY #62760 /* ~"Je n'ai aucune certitude, mais je crois qu'il s'agissait de m'aider à m'échapper d'une cage, de me rendre ma liberté."~ */ GOTO 336
  IF ~  Global("Ravel_Hair","GLOBAL",0)
GlobalGT("Ravel_Grace","GLOBAL",0)
~ THEN REPLY #62761 /* ~"Je l'ignore - ce que je sais, c'est que je le lui ai demandé."~ */ GOTO 337
  IF ~  Global("Ravel_Hair","GLOBAL",0)
Global("Ravel_Grace","GLOBAL",0)
~ THEN REPLY #62762 /* ~"Je l'ignore - ce que je sais, c'est que je le lui ai demandé."~ */ GOTO 336
  IF ~~ THEN REPLY #62763 /* ~"Pas encore. Il y a autre chose qui pourrait éclaircir la situation… "~ */ GOTO 330
  IF ~~ THEN REPLY #62764 /* ~"Je l'ignore. Je voulais vous poser d'autres questions."~ */ GOTO 139
  IF ~~ THEN REPLY #62765 /* ~"On en parlera une autre fois."~ */ EXIT
END

IF ~~ THEN BEGIN 336 // from: 335.1 335.3
  SAY #62766 /* ~"De plus en plus bizarre. Il faudrait le découvrir en priorité… vous ne pourrez déterminer ce que le futur vous réserve qu'en vous assurant de bien connaître votre passé."~ */
  IF ~~ THEN REPLY #62767 /* ~"Il y a autre chose qui pourrait éclaircir la situation…"~ */ GOTO 330
  IF ~~ THEN REPLY #62768 /* ~"J'ai d'autres questions…"~ */ GOTO 139
  IF ~~ THEN REPLY #62769 /* ~"On en parlera une autre fois. Pour l'instant, allons-y."~ */ EXIT
END

IF ~~ THEN BEGIN 337 // from: 335.0 335.2
  SAY #62770 /* ~"Hmmmm. Ravel a dit une chose des plus intéressantes… elle a parlé de la guerre des fiélons, qui ne peut être que la Guerre Sanglante. C'est curieux. D'autant que le plan sur lequel elle a choisi de résider est le plus disputé de tout le conflit. Peut-être que ce qui vous a amené à elle concernait la Guerre Sanglante ?"~ */
  IF ~  Global("Know_Blood_War","GLOBAL",0)
~ THEN REPLY #62771 /* ~"Qu'est-ce que la Guerre Sanglante ?"~ */ DO ~SetGlobal("Know_Blood_War","GLOBAL",1)
~ JOURNAL #61615 /* ~Tombée-en-Disgrâce m'a dit que la guerre des fiélons à laquelle Ravel faisait référence était sans doute la Guerre Sanglante, conflit qui oppose les baatezus aux tanar'ris. Elle a ajouté que les contacts que j'avais avec Ravel étaient peut-être en rapport avec la Guerre Sanglante.~ */ GOTO 219
  IF ~  Global("Know_Blood_War","GLOBAL",1)
~ THEN REPLY #62772 /* ~"Qu'est-ce que la Guerre Sanglante ?"~ */ GOTO 219
  IF ~~ THEN REPLY #62773 /* ~"Possible. Il y a autre chose qui pourrait éclaircir la situation…"~ */ GOTO 330
  IF ~~ THEN REPLY #62774 /* ~"Peut-être. Je voulais vous poser d'autres questions…"~ */ GOTO 139
  IF ~~ THEN REPLY #62775 /* ~"Je ne sais pas. Allons-y."~ */ EXIT
END

IF ~~ THEN BEGIN 338 // from: 330.3
  SAY #62776 /* ~"Hmmmm. Une "guerre des fiélons", ça ne peut être que la Guerre Sanglante." Tombée-en-Disgrâce hoche la tête. "Vous savez, la Gaste Grise, le plan sur lequel Ravel a choisi de résider, est le plus disputé de tout le conflit. Peut-être que ce qui vous a amené à elle concernait la Guerre Sanglante ?"~ */
  IF ~  Global("Know_Blood_War","GLOBAL",0)
~ THEN REPLY #62777 /* ~"Qu'est-ce que la Guerre Sanglante ?"~ */ DO ~SetGlobal("Know_Blood_War","GLOBAL",1)
~ JOURNAL #61615 /* ~Tombée-en-Disgrâce m'a dit que la guerre des fiélons à laquelle Ravel faisait référence était sans doute la Guerre Sanglante, conflit qui oppose les baatezus aux tanar'ris. Elle a ajouté que les contacts que j'avais avec Ravel étaient peut-être en rapport avec la Guerre Sanglante.~ */ GOTO 219
  IF ~  Global("Know_Blood_War","GLOBAL",1)
~ THEN REPLY #62778 /* ~"Qu'est-ce que la Guerre Sanglante ?"~ */ JOURNAL #61615 /* ~Tombée-en-Disgrâce m'a dit que la guerre des fiélons à laquelle Ravel faisait référence était sans doute la Guerre Sanglante, conflit qui oppose les baatezus aux tanar'ris. Elle a ajouté que les contacts que j'avais avec Ravel étaient peut-être en rapport avec la Guerre Sanglante.~ */ GOTO 219
  IF ~~ THEN REPLY #62779 /* ~"Possible. Il y a autre chose qui pourrait éclaircir la situation…"~ */ GOTO 330
  IF ~~ THEN REPLY #62780 /* ~"Peut-être. Je voulais vous poser d'autres questions…"~ */ GOTO 139
  IF ~~ THEN REPLY #62781 /* ~"Je ne sais pas. Allons-y."~ */ EXIT
END

IF ~~ THEN BEGIN 339 // from: 330.5
  SAY #62782 /* ~"Il me semble que vous devez le trouver et lui parler. La conversation serait sans doute très enrichissante. Il me semble qu'il ne veut pas vous voir recouvrer votre mortalité."~ */
  IF ~~ THEN REPLY #62783 /* ~"Possible. Il y a autre chose qui pourrait éclaircir la situation…"~ */ GOTO 330
  IF ~~ THEN REPLY #62784 /* ~"Je voulais vous poser d'autres questions…"~ */ GOTO 139
  IF ~~ THEN REPLY #62785 /* ~"Sans doute pas - auquel cas il va être déçu. Allons-y."~ */ EXIT
END

IF ~~ THEN BEGIN 340 // from: 279.3
  SAY #62786 /* ~"Elle est forte, très capable, et passionnée. Si je l'avais connue plus tôt, je l'aurais invitée à la Maison de Tolérance, je crois… et tout aurait pu être différent." Grâce te dévisage longuement. "Qu'est-ce que vous pensez d'elle ?"~ */
  IF ~~ THEN REPLY #62787 /* ~"Je crois qu'elle ne vous aime pas beaucoup."~ */ GOTO 341
  IF ~~ THEN REPLY #62788 /* ~"Je crois que je pourrais en tomber amoureux."~ */ GOTO 342
  IF ~~ THEN REPLY #62789 /* ~"Je la considère comme une amie, voilà tout."~ */ GOTO 343
  IF ~~ THEN REPLY #62790 /* ~"À vrai dire, elle m'indiffère."~ */ GOTO 343
  IF ~~ THEN REPLY #62791 /* ~"Je la déteste."~ */ GOTO 344
  IF ~~ THEN REPLY #62792 /* ~"Je ne lui fais pas confiance."~ */ GOTO 346
  IF ~~ THEN REPLY #62793 /* ~"Elle a son utilité, voilà tout."~ */ GOTO 343
  IF ~~ THEN REPLY #62794 /* ~"Je préfère ne pas en parler."~ */ GOTO 347
END

IF ~~ THEN BEGIN 341 // from: 340.0
  SAY #62795 /* ~"D'accord…" Grâce sourit. "Mais je ne vous laisserai pas esquiver mes questions aussi facilement. Qu'est-ce que vous pensez d'elle ?"~ */
  IF ~~ THEN REPLY #62796 /* ~"Je crois que je pourrais en tomber amoureux."~ */ GOTO 342
  IF ~~ THEN REPLY #62797 /* ~"Je la considère comme une amie, voilà tout."~ */ GOTO 343
  IF ~~ THEN REPLY #62798 /* ~"À vrai dire, elle m'indiffère."~ */ GOTO 343
  IF ~~ THEN REPLY #62799 /* ~"Je la déteste."~ */ GOTO 344
  IF ~~ THEN REPLY #62800 /* ~"Je ne lui fais pas confiance."~ */ GOTO 346
  IF ~~ THEN REPLY #62801 /* ~"Elle a son utilité, voilà tout."~ */ GOTO 343
  IF ~~ THEN REPLY #62802 /* ~"Je préfère ne pas en parler."~ */ GOTO 347
END

IF ~~ THEN BEGIN 342 // from: 340.1 341.0
  SAY #62803 /* ~"Vous devriez peut-être le lui dire."~ */
  IF ~  GlobalGT("Deionarra","GLOBAL",0)
Global("Ravel","GLOBAL",0)
Global("Deionarra_SS_Grace","GLOBAL",1)
~ THEN REPLY #62804 /* ~"Je l'ignore. J'ai l'impression d'avoir tout *ruiné* autour de moi, surtout l'existence de Deionarra et des autres que j'ai approchés. Il vaudrait peut-être mieux que je m'abstienne."~ */ GOTO 358
  IF ~  GlobalGT("Deionarra","GLOBAL",0)
Global("Ravel","GLOBAL",0)
Global("Deionarra_SS_Grace","GLOBAL",0)
~ THEN REPLY #62805 /* ~"Je l'ignore. J'ai l'impression d'avoir tout *ruiné* autour de moi, surtout l'existence de Deionarra et des autres que j'ai approchés. Il vaudrait peut-être mieux que je m'abstienne."~ */ GOTO 359
  IF ~  GlobalGT("Deionarra","GLOBAL",0)
GlobalGT("Ravel","GLOBAL",0)
Global("Deionarra_SS_Grace","GLOBAL",1)
~ THEN REPLY #62806 /* ~"Je l'ignore. J'ai l'impression d'avoir tout *ruiné* autour de moi, surtout l'existence de Deionarra et des autres que j'ai approchés - sans parler de Ravel. J'ai du mal à imaginer ce qu'elle a pu me trouver, mais, elle aussi, je l'ai utilisée. Je devrais peut-être me méfier de mes sentiments."~ */ GOTO 358
  IF ~  GlobalGT("Deionarra","GLOBAL",0)
GlobalGT("Ravel","GLOBAL",0)
Global("Deionarra_SS_Grace","GLOBAL",0)
~ THEN REPLY #62807 /* ~"Je l'ignore. J'ai l'impression d'avoir tout *ruiné* autour de moi, surtout l'existence de Deionarra et des autres que j'ai approchés - sans parler de Ravel. J'ai du mal à imaginer ce qu'elle a pu me trouver, mais, elle aussi, je l'ai utilisée. Je devrais peut-être me méfier de mes sentiments."~ */ GOTO 359
  IF ~~ THEN REPLY #62808 /* ~"Dans ce cas, ce sera *moi* qui l'aurai choisi."~ */ GOTO 343
  IF ~~ THEN REPLY #62809 /* ~"Je l'ignore. On verra."~ */ GOTO 343
END

IF ~~ THEN BEGIN 343 // from: 340.2 340.3 340.6 341.1 341.2 341.5 342.4 342.5 345.0 346.0
  SAY #62810 /* ~"Très bien."~ */
  IF ~~ THEN REPLY #62811 /* ~" Je voulais parler de quelqu'un d'autre…"~ */ GOTO 279
  IF ~~ THEN REPLY #62812 /* ~"J'ai d'autres questions…"~ */ GOTO 139
  IF ~~ THEN REPLY #62813 /* ~"D'accord, d'accord. Perdons pas de temps."~ */ EXIT
END

IF ~~ THEN BEGIN 344 // from: 340.4 341.3
  SAY #62814 /* ~"Pourquoi ?"~ */
  IF ~~ THEN REPLY #62815 /* ~"L'accent… et le fait que c'est une voleuse de la Ruche avec du sang de fiélon dans les veines et qu'elle me reproche le moindre de mes actes. Je continue ?"~ */ GOTO 345
  IF ~~ THEN REPLY #62816 /* ~" Je voulais parler de quelqu'un d'autre…"~ */ GOTO 279
  IF ~~ THEN REPLY #62817 /* ~"J'ai d'autres questions…"~ */ GOTO 139
  IF ~~ THEN REPLY #62818 /* ~"D'accord, d'accord. Perdons pas de temps."~ */ EXIT
END

IF ~~ THEN BEGIN 345 // from: 344.0
  SAY #62819 /* ~"Pourquoi voyager en sa compagnie, dans ce cas ?"~ */
  IF ~~ THEN REPLY #62820 /* ~"Elle a son utilité - tant que je n'ai pas à apprécier sa compagnie, tout baigne."~ */ GOTO 343
  IF ~~ THEN REPLY #62821 /* ~"Peu importe. Je voulais vous poser une question sur quelqu'un d'autre…"~ */ GOTO 279
  IF ~~ THEN REPLY #62822 /* ~"Laissez tomber. J'ai d'autres questions…"~ */ GOTO 139
  IF ~~ THEN REPLY #62823 /* ~"On en parlera une autre fois. Pour l'instant, allons-y."~ */ EXIT
END

IF ~~ THEN BEGIN 346 // from: 340.5 341.4
  SAY #62824 /* ~"Pourquoi ne lui faites-vous pas confiance ?"~ */
  IF ~~ THEN REPLY #62825 /* ~"Comme par hasard, elle m'a trouvé dans l'Allée des Longs Soupirs quand je suis mort. Pourtant, tous les autres Récupérateurs ont peur d'aller là-bas. C'est la fille adoptive de Pharod et c'est une voleuse de la Ruche avec du sang de fiélon dans les veines. Je continue ?" ~ */ GOTO 343
  IF ~~ THEN REPLY #62826 /* ~"Peu importe. Je voulais vous poser une question sur quelqu'un d'autre…"~ */ GOTO 279
  IF ~~ THEN REPLY #62827 /* ~"Laissez tomber. J'ai d'autres questions…"~ */ GOTO 139
  IF ~~ THEN REPLY #62828 /* ~"On en parlera une autre fois. Pour l'instant, allons-y."~ */ EXIT
END

IF ~~ THEN BEGIN 347 // from: 340.7 341.6
  SAY #62829 /* ~"L'abstinence se conçoit." Grâce sourit. "L'abstinence prolongée pourrait se révéler difficile."~ */
  IF ~~ THEN REPLY #62830 /* ~"*Vous*, vous devez le savoir."~ */ GOTO 361
  IF ~~ THEN REPLY #62831 /* ~"D'accord, d'accord… Je voulais parler de quelqu'un d'autre…"~ */ GOTO 279
  IF ~~ THEN REPLY #62832 /* ~"J'ai d'autres questions…"~ */ GOTO 139
  IF ~~ THEN REPLY #62833 /* ~"Peut-être. Allons-y."~ */ EXIT
END

IF ~~ THEN BEGIN 348 // from: 205.5
  SAY #62834 /* ~Grâce dit tout bas : "Le tourment." Elle étudie le symbole sur ton bras. "Fell a dit…" Elle prend une profonde inspiration. "… que la chair sait qu'elle souffre, même si l'esprit l'oublie. Fell a dit que la rune agit comme un aimant, qu'elle attire à vous d'autres âmes torturées."~ */
  IF ~~ THEN REPLY #62835 /* ~"J'ai d'autres questions…"~ */ GOTO 205
  IF ~~ THEN REPLY #62836 /* ~"Peut-être. Allons-y."~ */ EXIT
END

IF ~~ THEN BEGIN 349 // from: 139.16
  SAY #62837 /* ~"Non… je ne supporte pas le contact du fer froid, ni de l'acier, pendant de longues périodes. De toute façon, j'ai à ma disposition un certain nombre de… défenses naturelles qui ont tendance à dissuader des assaillants."~ */
  IF ~~ THEN REPLY #62838 /* ~"Comme quoi ?"~ */ JOURNAL #61616 /* ~Tombée-en-Disgrâce m'a dit que ses baisers pouvaient voler l'énergie vitale de ses amants, mais cela m'excite. Après tout, je suis immortel, pas vrai ? Il faut que je réfléchisse à la question.~ */ GOTO 350
  IF ~~ THEN REPLY #62839 /* ~"Oh. J'ai d'autres questions…"~ */ GOTO 205
  IF ~~ THEN REPLY #62840 /* ~"Je… vois. Allons-y."~ */ EXIT
END

IF ~~ THEN BEGIN 350 // from: 349.0
  SAY #62841 /* ~"Le baiser d'une succube est fatal aux mortels - même s'ils ne s'avisent du danger que trop tard, en général." Tombée-en-Disgrâce soupire. "Je peux toujours m'en servir au besoin."~ */
  IF ~~ THEN REPLY #62842 /* ~"Je… je vois. J'ai d'autres questions…"~ */ GOTO 205
  IF ~~ THEN REPLY #62843 /* ~"Étonnant… euh, je veux dire effrayant. Allons-y."~ */ EXIT
END

IF ~~ THEN BEGIN 351 // from: 205.2
  SAY #62844 /* ~"Tout à fait. Yvonne n'a pas besoin d'autres histoires pour ajouter à son fardeau… et puis la mienne n'aiderait pas sa quête de la vérité."~ */
  IF ~~ THEN REPLY #62845 /* ~"Vous voulez bien me la dire ?"~ */ GOTO 352
  IF ~~ THEN REPLY #62846 /* ~"Je… je vois. J'ai d'autres questions…"~ */ GOTO 205
  IF ~~ THEN REPLY #62847 /* ~"Peut-être. Allons-y."~ */ EXIT
END

IF ~~ THEN BEGIN 352 // from: 205.3 206.1 207.2 212.0 351.0
  SAY #62848 /* ~"C'est une longue histoire, et elle n'est pas aussi fascinante que d'aucuns le prétendent." Elle soupire. "Il s'y mêle la guerre et l'esclavage… ce n'est pas un récit agréable."~ */
  IF ~~ THEN REPLY #62849 /* ~"J'aimerais quand même l'entendre."~ */ GOTO 353
  IF ~~ THEN REPLY #62850 /* ~"Je… je vois. J'ai d'autres questions…"~ */ GOTO 205
  IF ~~ THEN REPLY #62851 /* ~"Allons-y, alors."~ */ EXIT
END

IF ~~ THEN BEGIN 353 // from: 352.0
  SAY #62852 /* ~"Très bien… sachez que mon passé n'est pas très ancien, du moins selon les critères des tanar'ris. Je ne sais pas si vous connaissez les tanar'ris, mais nous sommes une race des Abysses, un assemblage de plans voué au chaos et au mal."~ */
  IF ~~ THEN REPLY #62853 /* ~"Continuez…"~ */ DO ~SetGlobal("Know_Grace_Succubus","GLOBAL",1)
~ GOTO 354
  IF ~~ THEN REPLY #62854 /* ~"Peu importe. J'ai d'autres questions…"~ */ GOTO 205
  IF ~~ THEN REPLY #62855 /* ~"C'est entendu. Allons-y."~ */ EXIT
END

IF ~~ THEN BEGIN 354 // from: 353.0
  SAY #62856 /* ~"Je suis une tanar'ri, une fiélonne, une succube… J'ai grandi sur la première strate des Abysses. Ma mère était elle-même une succube - vous devez savoir que les succubes offrent des tentations aux mortels pour offrir les âmes de ceux-ci aux Abysses. C'était une des plus belles, et elle a séduit et damné d'innombrables mortels. Elle réside désormais sur les Abysses, où elle vend ses enfants en esclavage."~ */
  IF ~~ THEN REPLY #62857 /* ~"Votre mère vous a vendue comme esclave ?"~ */ GOTO 355
  IF ~~ THEN REPLY #62858 /* ~"Peu importe. J'ai d'autres questions…"~ */ GOTO 205
  IF ~~ THEN REPLY #62859 /* ~"C'est entendu. Allons-y."~ */ EXIT
END

IF ~~ THEN BEGIN 355 // from: 354.0
  SAY #62860 /* ~"Oui, elle m'a vendue aux baatezus, les ennemis jurés des tanar'ris. Je crois qu'elle s'attendait à ce qu'ils me tuent. Malgré son vaste savoir, elle connaît mal leur culture et le plaisir qu'ils prennent à torturer les autres."~ */
  IF ~~ THEN REPLY #62861 /* ~"Comment vous êtes-vous échappée ?"~ */ DO ~SetGlobal("Grace_History","GLOBAL",1)
~ GOTO 356
  IF ~~ THEN REPLY #62862 /* ~"Peu importe. J'ai d'autres questions…"~ */ GOTO 205
  IF ~~ THEN REPLY #62863 /* ~"C'est entendu. Allons-y."~ */ EXIT
END

IF ~~ THEN BEGIN 356 // from: 355.0
  SAY #62864 /* ~"Les baatezus sont fiers. L'idée qu'une tanar'ri puisse les surpasser en quoi que ce soit leur était intolérable. J'ai donc défié un des diantrefosses les plus hautains à un concours d'improvisation, et ma nature de tanar'ri m'a offert un avantage - vous voyez, les tanar'ris sont des créatures chaotiques, imprévisibles. Les baatezus sont plus rusés, plus ordonnés. Ils savent ce qu'est l'improvisation, mais ils n'y excellent pas. C'est ainsi que j'ai gagné ma liberté, et mon chemin m'a amenée jusqu'à Sigil."~ */
  IF ~~ THEN REPLY #62865 /* ~"Je vois. J'ai d'autres questions…"~ */ GOTO 205
  IF ~~ THEN REPLY #62866 /* ~"C'est tout ce que je voulais savoir. Allons-y."~ */ EXIT
END

IF ~~ THEN BEGIN 357 // from: 279.0
  SAY #62867 /* ~"De quoi vouliez-vous discuter ?"~ */
  IF ~  GlobalGT("Ravel_Kiss","GLOBAL",0)
!Global("Ravel_Kiss","GLOBAL",2)
!Global("Ravel_Kiss","GLOBAL",3)
~ THEN REPLY #62868 /* ~"Je voulais que vous le sachiez : quand j'ai embrassé Ravel dans le dédale, je…"~ */ GOTO 281
  IF ~~ THEN REPLY #62869 /* ~"Franchement, j'aimerais connaître vos sentiments pour moi."~ */ GOTO 287
  IF ~~ THEN REPLY #62870 /* ~"Je voudrais savoir ce que vous pensez de ma situation."~ */ GOTO 330
  IF ~~ THEN REPLY #62871 /* ~"Avez-vous une idée de qui ou de ce que je pourrais être ?"~ */ GOTO 288
  IF ~~ THEN REPLY #62872 /* ~"Tant pis. Je voulais parler de quelqu'un d'autre…"~ */ GOTO 279
  IF ~~ THEN REPLY #62873 /* ~"Laissez tomber. J'ai d'autres questions…"~ */ GOTO 139
  IF ~~ THEN REPLY #62874 /* ~"Ce n'est pas très important. Allons-y"~ */ EXIT
END

IF ~~ THEN BEGIN 358 // from: 342.0 342.2
  SAY #62875 /* ~"Deionarra, c'était la femme dans la pierre sensorielle ? Celle qui était amoureuse de votre incarnation précédente ?"~ */
  IF ~~ THEN REPLY #62876 /* ~"Oui. Je lui ai fait quelque chose d'atroce, mais je ne sais pas quoi."~ */ GOTO 359
END

IF ~~ THEN BEGIN 359 // from: 342.1 342.3 358.0
  SAY #62877 /* ~"Je dirai que l'amour peut déplacer les plans eux-mêmes si c'est un amour fort, un amour vrai, et il n'y a rien de plus vrai, dans toutes mes expériences, que la vérité des *sentiments*."~ */
  IF ~  GlobalGT("Ravel","GLOBAL",0)
~ THEN GOTO 360
  IF ~~ THEN REPLY #62879 /* ~"Peut-être. Je voulais parler de quelqu'un d'autre…"~ */ GOTO 279
  IF ~~ THEN REPLY #62880 /* ~"Vous avez peut-être raison. J'ai d'autres questions…"~ */ GOTO 139
  IF ~~ THEN REPLY #62881 /* ~"On en parlera une autre fois. Allons-y"~ */ EXIT
END

IF ~~ THEN BEGIN 360 // from: 359.0
  SAY #62882 /* ~"Avant de dénier tes sentiments aux autres, sachez que l'amour est une force puissante… si puissante qu'elle a touché même le cœur noir de Ravel et l'a poussée à accorder plus de valeur à quelqu'un d'autre qu'à elle-même. Savez-vous la *force* qu'il faut pour changer un cœur tel que celui de Ravel ? Malgré toute la souffrance causée, je dirais qu'il en est sorti un bien."~ */
  IF ~~ THEN REPLY #62883 /* ~"Peut-être. Je voulais parler de quelqu'un d'autre…"~ */ GOTO 279
  IF ~~ THEN REPLY #62884 /* ~"Vous avez peut-être raison. J'ai d'autres questions…"~ */ GOTO 139
  IF ~~ THEN REPLY #62885 /* ~"On en parlera une autre fois. Allons-y"~ */ EXIT
END

IF ~~ THEN BEGIN 361 // from: 347.0
  SAY #62886 /* ~"Ah… je l'ai bien mérité." Tombée-en-Disgrâce sourit. "Je dirai que le sentiment qu'une personne éprouve pour une autre peut déplacer les plans eux-mêmes, et qu'il n'y a rien de plus vrai que la vérité des *sentiments*."~ */
  IF ~~ THEN REPLY #62887 /* ~"Peut-être. Je voulais parler de quelqu'un d'autre…"~ */ GOTO 279
  IF ~~ THEN REPLY #62888 /* ~"Vous avez peut-être raison. J'ai d'autres questions…"~ */ GOTO 139
  IF ~~ THEN REPLY #62889 /* ~"On en parlera une autre fois. Allons-y"~ */ EXIT
END

IF ~~ THEN BEGIN 362 // from:
  SAY #63241 /* ~"Des milliers."~ [FFG299] */
  IF ~~ THEN EXTERN ~BMORTE~ 33
END

IF ~~ THEN BEGIN 363 // from:
  SAY #63245 /* ~"Tu sais, Morte, sur certains plans, on brûle les bouffons comme bois de chauffage."~ [FFG300] */
  IF ~~ THEN EXTERN ~BMORTE~ 35
END

IF ~~ THEN BEGIN 364 // from:
  SAY #63246 /* ~"Ta chance semble nous profiter à tous."~ [FFG301] */
  IF ~~ THEN EXTERN ~BMORTE~ 37
END

IF ~~ THEN BEGIN 365 // from:
  SAY #63248 /* ~"Non, elle n'est pas jolie. Mais elle pourrait facilement être magnifique."~ [FFG322] */
  IF ~~ THEN DO ~SetGlobal("Morte_Talked_Grace","GLOBAL",0)
~ EXIT
END

IF ~~ THEN BEGIN 366 // from:
  SAY #63469 /* ~"Tant qu'on me le permettra, je suppose."~ [FFG317] */
  IF ~~ THEN EXTERN ~BANNAH~ 17
END

IF ~~ THEN BEGIN 367 // from:
  SAY #63470 /* ~"Je ne sais pas si j'y retournerai."~ [FFG318] */
  IF ~~ THEN EXTERN ~BANNAH~ 19
END

IF ~~ THEN BEGIN 368 // from:
  SAY #63471 /* ~"Je t'assure que je ferai attention, je n'ai pas de telles soifs."~ [FFG319] */
  IF ~~ THEN EXTERN ~BANNAH~ 21
END

IF ~~ THEN BEGIN 369 // from:
  SAY #63472 /* ~"Pas toutes, Annah. Aie moins de préjugés. Tu as également du sang de fiélon, et pourtant tu as de nombreuses qualités."~ [FFG319A] */
  IF ~~ THEN EXTERN ~BANNAH~ 22
END

IF ~~ THEN BEGIN 370 // from:
  SAY #63473 /* ~"Annah, la jalousie est une arme à double tranchant. Si tu continues -"~ [FFG320] */
  IF ~~ THEN EXTERN ~BANNAH~ 24
END

IF ~~ THEN BEGIN 371 // from:
  SAY #63474 /* ~"Très bien, alors."~ [FFG320A] */
  IF ~~ THEN DO ~SetGlobal("Annah_Talked_Grace","GLOBAL",4)
~ EXIT
END

IF ~~ THEN BEGIN 372 // from:
  SAY #63475 /* ~"Écoute Annah, nous devrions -"~ [FFG321] */
  IF ~~ THEN EXTERN ~BANNAH~ 26
END

IF ~~ THEN BEGIN 373 // from:
  SAY #63697 /* ~"Morte, allons."~ [FFG332] */
  IF ~~ THEN EXTERN ~DMORTE~ 642
END

IF ~~ THEN BEGIN 374 // from:
  SAY #63698 /* ~"Oh ? Est-ce que cela inclut les modrones ?"~ [FFG302] */
  IF ~~ THEN EXTERN ~BNORDOM~ 28
END

IF ~~ THEN BEGIN 375 // from:
  SAY #63699 /* ~"Qui que ce soit qui t'ait dit ça, dis-moi pourquoi, cher Nordom ?"~ [FFG303] */
  IF ~~ THEN EXTERN ~DMORTE~ 644
END

IF ~~ THEN BEGIN 376 // from:
  SAY #63700 /* ~"Pardon ?"~ [FFG333] */
  IF ~~ THEN EXTERN ~BNORDOM~ 31
END

IF ~~ THEN BEGIN 377 // from:
  SAY #63701 /* ~"Pardon ?"~ [FFG334] */
  IF ~~ THEN EXTERN ~BNORDOM~ 33
END

IF ~~ THEN BEGIN 378 // from:
  SAY #63702 /* ~"Pourquoi ? Je suppose que c'est parce que je le trouve confortable. De plus, j'aime beaucoup les ailes."~ [FFG334A] */
  IF ~~ THEN EXTERN ~BNORDOM~ 34
END

IF ~~ THEN BEGIN 379 // from:
  SAY #63703 /* ~"Pourquoi essayes-tu de me faire la cour, Nordom ?"~ [FFG334B] */
  IF ~~ THEN EXTERN ~BNORDOM~ 35
END

IF ~~ THEN BEGIN 380 // from:
  SAY #63860 /* ~"De tels 'péchés' n'enfreignent aucune loi tanar'ri, Vhailor. J'ai choisi ma propre voie, on ne me l'a pas imposée pour me punir."~ [FFG304] */
  IF ~~ THEN EXIT
END

IF ~  Global("Fortress_Grace","GLOBAL",3)
~ THEN BEGIN 381 // from:
  SAY #68209 /* ~Lorsque ton pouvoir enveloppe Tombée-en-Disgrâce, elle se met difficilement debout. Bien que manifestement désorientée, elle est toujours aussi gracieuse.~ */
  IF ~  Global("Absorb","GLOBAL",0)
~ THEN REPLY #68210 /* ~"Tombée-en-Disgrâce, nous sommes arrivés à la Forteresse des Regrets et j'ai trouvé mon meurtrier. C'est ma propre mortalité, qui est devenue vivante. J'ai vraiment besoin de votre aide, maintenant."~ */ DO ~SetGlobal("Fortress_Grace","GLOBAL",4)
JoinPartyEx(TRUE)
~ GOTO 382
  IF ~  GlobalGT("Absorb","GLOBAL",0)
~ THEN REPLY #68354 /* ~TOMBÉE-EN-DISGRÂCE.~ */ GOTO 383
END

IF ~~ THEN BEGIN 382 // from: 381.0
  SAY #68211 /* ~Elle hoche lentement la tête. Elle semble recouvrer des forces en t'entendant parler. "Maintenant que nous sommes ici, j'ai peur que ce lieu ne nous laisse pas aisément partir."~ [FFG070] */
  IF ~  Global("Trans_Vanish","GLOBAL",0)
~ THEN REPLY #68212 /* ~"Nous verrons…"~ */ EXTERN ~DTRANS~ 142
  IF ~  Global("Trans_Vanish","GLOBAL",1)
GlobalGT("Fortress_Ignus","GLOBAL",0)
Global("Fortress_Ignus_Battle","GLOBAL",0)
~ THEN REPLY #68213 /* ~"Nous verrons…"~ */ DO ~StartCutSceneMode()
StartCutSceneEx("1204i0",FALSE)
~ EXIT
  IF ~  Global("Trans_Vanish","GLOBAL",1)
Global("Fortress_Ignus","GLOBAL",0)
GlobalGT("Fortress_Vhailor","GLOBAL",0)
Global("Fortress_Vhailor_Battle","GLOBAL",0)
~ THEN REPLY #68214 /* ~"Nous verrons…"~ */ DO ~StartCutSceneMode()
StartCutSceneEx("1204v0",FALSE)
~ EXIT
  IF ~  Global("Trans_Vanish","GLOBAL",1)
Global("Fortress_Ignus","GLOBAL",0)
Global("Fortress_Vhailor","GLOBAL",0)
GlobalGT("Fortress_Nordom","GLOBAL",0)
~ THEN REPLY #68215 /* ~"Nous verrons…"~ */ DO ~StartCutSceneMode()
StartCutSceneEx("1204n0",FALSE)
~ EXIT
  IF ~  Global("Trans_Vanish","GLOBAL",1)
Global("Fortress_Ignus","GLOBAL",0)
Global("Fortress_Vhailor","GLOBAL",0)
Global("Fortress_Nordom","GLOBAL",0)
~ THEN REPLY #68242 /* ~"Nous verrons…"~ */ DO ~StartCutSceneMode()
StartCutSceneEx("1204tr",FALSE)
~ EXIT
  IF ~  Global("Trans_Vanish","GLOBAL",1)
Global("Fortress_Ignus","GLOBAL",0)
GlobalGT("Fortress_Vhailor","GLOBAL",0)
Global("Fortress_Vhailor_Battle","GLOBAL",1)
Global("Fortress_Nordom","GLOBAL",0)
~ THEN REPLY #68435 /* ~"Nous verrons…"~ */ DO ~StartCutSceneMode()
StartCutSceneEx("1204tr",FALSE)
~ EXIT
  IF ~  Global("Trans_Vanish","GLOBAL",1)
GlobalGT("Fortress_Ignus","GLOBAL",0)
Global("Fortress_Ignus_Battle","GLOBAL",1)
Global("Fortress_Vhailor","GLOBAL",0)
Global("Fortress_Nordom","GLOBAL",0)
~ THEN REPLY #68436 /* ~"Nous verrons…"~ */ DO ~StartCutSceneMode()
StartCutSceneEx("1204tr",FALSE)
~ EXIT
  IF ~  Global("Trans_Vanish","GLOBAL",1)
GlobalGT("Fortress_Ignus","GLOBAL",0)
Global("Fortress_Ignus_Battle","GLOBAL",1)
GlobalGT("Fortress_Vhailor","GLOBAL",0)
Global("Fortress_Vhailor_Battle","GLOBAL",0)
~ THEN REPLY #68445 /* ~"Nous verrons…"~ */ DO ~StartCutSceneMode()
StartCutSceneEx("1204v0",FALSE)
~ EXIT
END

IF ~~ THEN BEGIN 383 // from: 381.1
  SAY #68355 /* ~Tombée-en-Disgrâce te regarde un instant droit dans les yeux et te dédie un petit sourire empreint de tristesse. "Votre voix… ainsi, vous vous êtes enfin trouvé ?"~ */
  IF ~~ THEN REPLY #68356 /* ~OUI. LE PRIX A ÉTÉ… TRÈS ÉLEVÉ. IL S'EST CHIFFRÉ EN VIES… TANT POUR MOI QUE POUR LES AUTRES.~ */ GOTO 384
END

IF ~~ THEN BEGIN 384 // from: 383.0
  SAY #68357 /* ~"Le prix d'une telle chose se calcule rarement en pièces de cuivre." Tombée-en-Disgrâce t'observe attentivement. "Est-ce que vous êtes toujours…"~ */
  IF ~~ THEN REPLY #68358 /* ~JE SUIS TOUJOURS CELUI QUE VOUS AVEZ CONNU MAIS MON APPROCHE DU MULTIVERS A… CHANGÉ. JE NE VOUS AI PAS OUBLIÉE, SI C'EST CE QUE VOUS CRAIGNIEZ.~ */ GOTO 385
END

IF ~~ THEN BEGIN 385 // from: 384.0
  SAY #68359 /* ~Le petit sourire triste apparaît de nouveau sur ses lèvres. "Non, ce n'est pas ce que je redoutais."~ */
  IF ~~ THEN REPLY #68360 /* ~JE NE PUIS RESTER ICI BIEN LONGTEMPS. MON CHÂTIMENT M'ATTEND ET LE TEMPS ET MON DESTIN SERONT BIENTÔT LÀ. SI VOUS VOULEZ, JE PEUX VOUS RENVOYER À SIGIL.~ */ GOTO 386
END

IF ~~ THEN BEGIN 386 // from: 385.0
  SAY #68361 /* ~"Ce n'est pas ce que je souhaite." Tombée-en-Disgrâce effleure ton bras du bout des doigts. Ta peau picote un instant, puis elle rompt le contact. "Je te *retrouverai*, où que tu sois dans les Plans Inférieurs - tout comme toi, tu sauras me retrouver."~ */
  IF ~~ THEN REPLY #68362 /* ~CELA PRENDRA PEUT-ÊTRE LONGTEMPS. LÀ OÙ JE VAIS, LE TEMPS NE SE MESURE PAS EN ANNÉES. ET LES CRIMES QUE J'AI COMMIS CONSTITUENT LA PLUS TERRIBLE PRISON QUI SOIT.~ */ GOTO 387
END

IF ~~ THEN BEGIN 387 // from: 386.0
  SAY #68363 /* ~"Nulle cage ne pourra nous séparer, nul plan nous diviser." Les traits de Tombée-en-Disgrâce sont soudain dénués d'expression. "Pense à moi, et nous nous retrouverons."~ */
  IF ~~ THEN REPLY #68364 /* ~JE N'OUBLIERAI PAS TOUT CE QUE TU AS SACRIFIÉ POUR MOI.~ */ GOTO 388
END

IF ~~ THEN BEGIN 388 // from: 387.0
  SAY #68365 /* ~Elle secoue la tête. "Ne m'oublie pas, c'est tout."~ */
  IF ~~ THEN REPLY #68366 /* ~LE TEMPS EFFACE TOUT, MAIS JE LE COMBATTRAI AUSSI LONGTEMPS QUE JE LE POURRAI.~ */ GOTO 389
END

IF ~~ THEN BEGIN 389 // from: 388.0
  SAY #68367 /* ~"Le temps n'est pas ton ennemi, mais l'éternité, si."~ [FFG196] */
  IF ~  GlobalGT("Fortress_Nordom","GLOBAL",0)
~ THEN REPLY #68368 /* ~PEUT-ÊTRE BIEN. AU REVOIR, GRÂCE.~ */ DO ~StartCutSceneMode()
StartCutSceneEx("1204n0",FALSE)
~ EXIT
  IF ~  GlobalGT("Fortress_Ignus","GLOBAL",0)
Global("Fortress_Ignus_Battle","GLOBAL",0)
Global("Fortress_Nordom","GLOBAL",0)
~ THEN REPLY #68369 /* ~PEUT-ÊTRE BIEN. AU REVOIR, GRÂCE.~ */ DO ~StartCutSceneMode()
StartCutSceneEx("1204i0",FALSE)
~ EXIT
  IF ~  GlobalGT("Fortress_Vhailor","GLOBAL",0)
Global("Fortress_Vhailor_Battle","GLOBAL",0)
Global("Fortress_Ignus","GLOBAL",0)
Global("Fortress_Nordom","GLOBAL",0)
~ THEN REPLY #68370 /* ~PEUT-ÊTRE BIEN. AU REVOIR, GRÂCE.~ */ DO ~StartCutSceneMode()
StartCutSceneEx("1204v0",FALSE)
~ EXIT
  IF ~  Global("Fortress_Vhailor","GLOBAL",0)
Global("Fortress_Ignus","GLOBAL",0)
Global("Fortress_Nordom","GLOBAL",0)
~ THEN REPLY #68371 /* ~PEUT-ÊTRE BIEN. AU REVOIR, GRÂCE.~ */ DO ~QuitGame(FINALE,0,0)
~ EXIT
  IF ~  GlobalGT("Fortress_Vhailor","GLOBAL",0)
Global("Fortress_Vhailor_Battle","GLOBAL",0)
GlobalGT("Fortress_Ignus","GLOBAL",0)
Global("Fortress_Nordom","GLOBAL",0)
Global("Fortress_Ignus_Battle","GLOBAL",1)
~ THEN REPLY #68499 /* ~PEUT-ÊTRE BIEN. AU REVOIR, GRÂCE.~ */ DO ~StartCutSceneMode()
StartCutSceneEx("1204v0",FALSE)
~ EXIT
  IF ~  GlobalGT("Fortress_Vhailor","GLOBAL",0)
Global("Fortress_Vhailor_Battle","GLOBAL",1)
Global("Fortress_Ignus","GLOBAL",0)
Global("Fortress_Nordom","GLOBAL",0)
~ THEN REPLY #68500 /* ~PEUT-ÊTRE BIEN. AU REVOIR, GRÂCE.~ */ DO ~QuitGame(FINALE,0,0)
~ EXIT
  IF ~  GlobalGT("Fortress_Ignus","GLOBAL",0)
Global("Fortress_Ignus_Battle","GLOBAL",1)
Global("Fortress_Vhailor","GLOBAL",0)
Global("Fortress_Nordom","GLOBAL",0)
~ THEN REPLY #68501 /* ~PEUT-ÊTRE BIEN. AU REVOIR, GRÂCE.~ */ DO ~QuitGame(FINALE,0,0)
~ EXIT
END

IF ~  Global("Fortress_Grace","GLOBAL",4)
~ THEN BEGIN 390 // from:
  SAY #68416 /* ~Grâce hoche la tête tandis que tu lui parles. "Maintenant que nous sommes ici, je crains que ce lieu ne nous laisse pas ressortir aisément."~ [FFG070] */
  IF ~~ THEN REPLY #68417 /* ~"Nous verrons ça. Mais occupons-nous d'abord de ma mortalité…"~ */ EXIT
END
