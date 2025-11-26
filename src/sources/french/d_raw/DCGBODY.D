// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DCGBODY.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\fr_FR\dialog.tlk
// dialogF  : (none)

BEGIN ~DCGBODY~

IF ~  Global("Gatehead_Talk","GLOBAL",0)
Global("Current_Area","GLOBAL",800)
~ THEN BEGIN 0 // from:
  SAY #47032 /* ~Alors que tu t'approches, les têtes pourrissantes du portail commencent à te parler ; elles énoncent à tour de rôle des mots qui, mis bout à bout, constituent des phrases cohérentes. "Parti, parti. Perdu au traître, perdu pour la lumière."~ */
  IF ~~ THEN REPLY #47033 /* ~"Qu'est-ce qui est arrivé à la ville ?"~ */ DO ~SetGlobal("bd_heads_talk_once","ar0800",1)
TriggerActivation("Bd_gate_heads",TRUE)
~ GOTO 1
  IF ~~ THEN REPLY #47034 /* ~"Que t'est-il arrivé ?"~ */ DO ~SetGlobal("bd_heads_talk_once","ar0800",1)
TriggerActivation("Bd_gate_heads",TRUE)
~ GOTO 2
  IF ~~ THEN REPLY #47035 /* ~"Merci pour ces renseignements. Au revoir."~ */ DO ~SetGlobal("bd_heads_talk_once","ar0800",1)
TriggerActivation("Bd_gate_heads",TRUE)
SetPortalCursor("to0900",PORTAL_CURSOR_VISIBLE,TRUE)
SetPortalCursor("to0900",PORTAL_ENABLED,TRUE)
~ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0 2.2 3.0 7.0
  SAY #47036 /* ~"Emportée par le vent, balayée par la marée du mal. Partie, partie par le portail. Partie, la ville, condamnée par sa haine. Partie par le portail, pour le plan de la Prison Rouge, les Carcères…"~ */
  IF ~~ THEN REPLY #47037 /* ~"Les Carcères ? Parle-m'en un peu…"~ */ GOTO 13
  IF ~~ THEN REPLY #47038 /* ~"Tu n'es pas capable de parler normalement ?"~ */ GOTO 6
  IF ~~ THEN REPLY #47039 /* ~"Que t'est-il arrivé ?"~ */ GOTO 2
  IF ~~ THEN REPLY #47040 /* ~"Tu sais comment y aller ou comment la ramener jusqu'ici ?"~ */ GOTO 4
  IF ~~ THEN REPLY #47041 /* ~"Je n'ai pas de temps à perdre. Au revoir."~ */ DO ~SetPortalCursor("to0900",PORTAL_CURSOR_VISIBLE,TRUE)
SetPortalCursor("to0900",PORTAL_ENABLED,TRUE)
~ EXIT
END

IF ~~ THEN BEGIN 2 // from: 0.1 1.2 6.0 7.1 13.1
  SAY #47042 /* ~"Trahi, méprisé, accusé à tort, exécuté pour faire un exemple. Pendu ici par mes ennemis. Perdu, perdu, perdu."~ */
  IF ~  CheckStatGT(Protagonist,20,INT)
Global("Ghead_Exp","AR0800",0)
~ THEN REPLY #47043 /* ~"Est-ce que je me fais des idées, ou est-ce qu'il y a beaucoup de têtes parlantes et désincarnées, ces temps-ci ?"~ */ DO ~GiveExperience(Protagonist,3000)
SetGlobal("Ghead_Exp","AR0800",1)
~ GOTO 3
  IF ~  CheckStatGT(Protagonist,20,INT)
Global("Ghead_Exp","AR0800",1)
~ THEN REPLY #47044 /* ~"Est-ce que je me fais des idées, ou est-ce qu'il y a beaucoup de têtes parlantes et désincarnées, ces temps-ci ?"~ */ GOTO 3
  IF ~~ THEN REPLY #47045 /* ~"Où est-ce qu'ils sont tous passés ?"~ */ GOTO 1
END

IF ~~ THEN BEGIN 3 // from: 2.0 2.1
  SAY #47046 /* ~Les têtes s'interrompent, se lancent un regard puis se tournent de nouveau vers toi. Elles ont l'air honteuses.~ */
  IF ~~ THEN REPLY #47047 /* ~"Bon, qu'est-ce qui s'est passé à Maudith ?"~ */ GOTO 1
  IF ~~ THEN REPLY #47048 /* ~"Très bien. Au revoir."~ */ DO ~SetPortalCursor("to0900",PORTAL_CURSOR_VISIBLE,TRUE)
SetPortalCursor("to0900",PORTAL_ENABLED,TRUE)
~ EXIT
END

IF ~~ THEN BEGIN 4 // from: 1.3 6.1 13.2
  SAY #47049 /* ~"Par le portail, jusqu'à la prison sans retour… sans retour. Franchis le portail, franchis le portail. Ta destinée t'attend de l'autre côté…"~ */
  IF ~~ THEN REPLY #47050 /* ~"Qu'est-ce que tu sais sur mon destin ?"~ */ JOURNAL #39483 /* ~Les têtes du portail des Carcères m'ont appris que la ville avait été prise par les forces du mal et entraînée dans les Carcères. Selon elles, ma destinée m'attend de l'autre côté du portail.~ */ GOTO 5
  IF ~~ THEN REPLY #47051 /* ~"Merci. Au revoir."~ */ DO ~SetPortalCursor("to0900",PORTAL_CURSOR_VISIBLE,TRUE)
SetPortalCursor("to0900",PORTAL_ENABLED,TRUE)
~ EXIT
END

IF ~~ THEN BEGIN 5 // from: 4.0
  SAY #47052 /* ~"Le déva t'attend." Les têtes se taisent et ignorent tes questions suivantes.~ */
  IF ~~ THEN REPLY #47053 /* ~"Alors, au revoir."~ */ DO ~SetPortalCursor("to0900",PORTAL_CURSOR_VISIBLE,TRUE)
SetPortalCursor("to0900",PORTAL_ENABLED,TRUE)
~ EXIT
END

IF ~~ THEN BEGIN 6 // from: 1.1 13.0
  SAY #47054 /* ~"Au-delà du voile, tout est… ombreux, illuminé. Rien n'est compréhensible, rien n'est simple… non."~ */
  IF ~~ THEN REPLY #47055 /* ~"Bon, dans ce cas, que t'est-il arrivé, à toi ?"~ */ GOTO 2
  IF ~~ THEN REPLY #47056 /* ~"Tu sais comment aller en ville, ou comment la ramener jusqu'ici ?"~ */ GOTO 4
  IF ~~ THEN REPLY #47057 /* ~"Bon, très bien. Au revoir."~ */ DO ~SetPortalCursor("to0900",PORTAL_CURSOR_VISIBLE,TRUE)
SetPortalCursor("to0900",PORTAL_ENABLED,TRUE)
~ EXIT
END

IF ~  Global("Gatehead_Talk","GLOBAL",1)
Global("Current_Area","GLOBAL",800)
~ THEN BEGIN 7 // from:
  SAY #47058 /* ~Les têtes sont d'abord silencieuses, puis elles se mettent à murmurer. Peu à peu, leurs chuchotements deviennent une véritable conversation.~ */
  IF ~~ THEN REPLY #47059 /* ~"Qu'est-ce qui s'est passé à Maudith ?"~ */ GOTO 1
  IF ~~ THEN REPLY #47060 /* ~"Qu'est-ce qui t'est arrivé ?"~ */ GOTO 2
  IF ~~ THEN REPLY #47061 /* ~"Laisse tomber. Au revoir."~ */ DO ~SetPortalCursor("to0900",PORTAL_CURSOR_VISIBLE,TRUE)
SetPortalCursor("to0900",PORTAL_ENABLED,TRUE)
~ EXIT
END

IF ~  Global("Gatehead_Talk","GLOBAL",0)
!Global("Current_Area","GLOBAL",800)
~ THEN BEGIN 8 // from:
  SAY #47062 /* ~Alors que tu approches du portail, les têtes putréfiées qui ornent l'arche couverte de lierre-rasoir te parlent toutes en même temps : "Les Carcères… le plan-prison… la terre des traîtres et des trahis, des fourbes et de leurs victimes. Ce portail… est fermé… pour le moment…"~ */
  IF ~~ THEN REPLY #47063 /* ~"Quand s'ouvrira-t-il de nouveau ?"~ */ DO ~SetGlobal("Gatehead_Talk","GLOBAL",1)
~ GOTO 10
  IF ~~ THEN REPLY #47064 /* ~"Que peux-tu me dire au sujet des Carcères ?"~ */ DO ~SetGlobal("Gatehead_Talk","GLOBAL",1)
~ GOTO 11
  IF ~~ THEN REPLY #47065 /* ~"Qu'est-ce qui t'est arrivé ?"~ */ DO ~SetGlobal("Gatehead_Talk","GLOBAL",1)
~ GOTO 12
  IF ~~ THEN REPLY #47066 /* ~"Merci et au revoir."~ */ DO ~SetGlobal("Gatehead_Talk","GLOBAL",1)
SetPortalCursor("to0900",PORTAL_CURSOR_VISIBLE,TRUE)
SetPortalCursor("to0900",PORTAL_ENABLED,TRUE)
~ EXIT
END

IF ~  Global("Gatehead_Talk","GLOBAL",1)
!Global("Current_Area","GLOBAL",800)
~ THEN BEGIN 9 // from:
  SAY #47067 /* ~"Le portail… est toujours fermé. On ne passe pas."~ */
  IF ~~ THEN REPLY #47068 /* ~"Quand s'ouvrira-t-il de nouveau ?"~ */ GOTO 10
  IF ~~ THEN REPLY #47069 /* ~"Que peux-tu me dire au sujet des Carcères ?"~ */ GOTO 11
  IF ~~ THEN REPLY #47070 /* ~"Qu'est-ce qui t'est arrivé ?"~ */ GOTO 12
  IF ~~ THEN REPLY #47072 /* ~"Merci et au revoir."~ */ DO ~SetPortalCursor("to0900",PORTAL_CURSOR_VISIBLE,TRUE)
SetPortalCursor("to0900",PORTAL_ENABLED,TRUE)
~ EXIT
END

IF ~~ THEN BEGIN 10 // from: 8.0 9.0 11.0 12.0
  SAY #47075 /* ~"Quand la contagion aura cessé, quand la maladie sera morte, quand la mort ne sera plus."~ */
  IF ~~ THEN REPLY #47076 /* ~"Que peux-tu me dire au sujet des Carcères ?"~ */ GOTO 11
  IF ~~ THEN REPLY #47077 /* ~"Qu'est-ce qui t'est arrivé ?"~ */ GOTO 12
  IF ~~ THEN REPLY #47078 /* ~"Merci. Au revoir."~ */ DO ~SetPortalCursor("to0900",PORTAL_CURSOR_VISIBLE,TRUE)
SetPortalCursor("to0900",PORTAL_ENABLED,TRUE)
~ EXIT
END

IF ~~ THEN BEGIN 11 // from: 8.1 9.1 10.0 12.1
  SAY #47080 /* ~"Le plan-prison… chaotique, maléfique… des mondes insérés les uns dans les autres et étirés tel un collier de perles maudites sur fond de multivers… la Prison Rouge, cauchemar des dieux et des titans."~ */
  IF ~~ THEN REPLY #47082 /* ~"Quand le portail s'ouvrira-t-il ?"~ */ GOTO 10
  IF ~~ THEN REPLY #47083 /* ~"Que t'est-il arrivé ?"~ */ GOTO 12
  IF ~~ THEN REPLY #47084 /* ~"Au revoir."~ */ DO ~SetPortalCursor("to0900",PORTAL_CURSOR_VISIBLE,TRUE)
SetPortalCursor("to0900",PORTAL_ENABLED,TRUE)
~ EXIT
END

IF ~~ THEN BEGIN 12 // from: 8.2 9.2 10.1 11.1
  SAY #47085 /* ~"Trahi, méprisé, accusé à tort, exécuté pour faire un exemple. Pendu ici par mes ennemis. Perdu, perdu, perdu."~ */
  IF ~~ THEN REPLY #47086 /* ~"Quand le portail s'ouvrira-t-il ?"~ */ GOTO 10
  IF ~~ THEN REPLY #47087 /* ~"Que peux-tu me dire au sujet des Carcères ?"~ */ GOTO 11
  IF ~~ THEN REPLY #47088 /* ~"Au revoir."~ */ DO ~SetPortalCursor("to0900",PORTAL_CURSOR_VISIBLE,TRUE)
SetPortalCursor("to0900",PORTAL_ENABLED,TRUE)
~ EXIT
END

IF ~~ THEN BEGIN 13 // from: 1.0
  SAY #47089 /* ~"Le plan-prison… chaotique, maléfique… des mondes insérés les uns dans les autres et étirés tel un collier de perles maudites sur fond de multivers… la Prison Rouge, cauchemar des dieux et des titans."~ */
  IF ~~ THEN REPLY #47090 /* ~"Tu n'es pas capable de parler normalement ?"~ */ GOTO 6
  IF ~~ THEN REPLY #47091 /* ~"Que t'est-il arrivé ?"~ */ GOTO 2
  IF ~~ THEN REPLY #47092 /* ~"Tu sais comment y aller ou comment la ramener jusqu'ici ?"~ */ GOTO 4
  IF ~~ THEN REPLY #47093 /* ~"Je n'ai pas de temps à perdre. Au revoir."~ */ DO ~SetPortalCursor("to0900",PORTAL_CURSOR_VISIBLE,TRUE)
SetPortalCursor("to0900",PORTAL_ENABLED,TRUE)
~ EXIT
END
