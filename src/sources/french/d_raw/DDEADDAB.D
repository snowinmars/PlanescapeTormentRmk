// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DDEADDAB.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\fr_FR\dialog.tlk
// dialogF  : (none)

BEGIN ~DDEADDAB~

IF ~  True()
~ THEN BEGIN 0 // from:
  SAY #61682 /* ~Le cadavre d'un dabus. Il en émane une forte odeur de décomposition et, à observer sa posture aussi rigide que peu naturelle, il apparaît que la rigidité cadavérique s'est installée depuis un bon moment.~ */
  IF ~  Global("Speak_with_Dead","GLOBAL",1)
GlobalLT("Know_Dead_Dabus","GLOBAL",2)
~ THEN REPLY #61683 /* ~Utilise Histoires-Os-Conter sur le cadavre.~ */ DO ~SetGlobal("Know_Dead_Dabus","GLOBAL",1)
~ GOTO 2
  IF ~  GlobalLT("Know_Dead_Dabus","GLOBAL",2)
~ THEN REPLY #61684 /* ~Examine le cadavre pour voir si tu peux déterminer ce qui l'a tué.~ */ DO ~SetGlobal("Know_Dead_Dabus","GLOBAL",1)
~ GOTO 1
  IF ~  GlobalLT("Know_Dead_Dabus","GLOBAL",2)
~ THEN REPLY #61685 /* ~Pars.~ */ DO ~SetGlobal("Know_Dead_Dabus","GLOBAL",1)
~ EXIT
  IF ~  Global("Speak_with_Dead","GLOBAL",1)
Global("Know_Dead_Dabus","GLOBAL",2)
~ THEN REPLY #61686 /* ~Utilise Histoires-Os-Conter sur le cadavre.~ */ GOTO 2
  IF ~  Global("Know_Dead_Dabus","GLOBAL",2)
~ THEN REPLY #61687 /* ~Examine le cadavre pour voir si tu peux déterminer ce qui l'a tué.~ */ GOTO 1
  IF ~  Global("Know_Dead_Dabus","GLOBAL",2)
~ THEN REPLY #61688 /* ~Pars.~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.1 0.4
  SAY #61689 /* ~Quand tu le touches, tu reçois une sorte de décharge. Il y a un courant d'air, comme si le vent avait pénétré dans le bâtiment et cherchait à en ressortir. Tu ressens une étrange douleur dans ton crâne, comme si quelqu'un tapait dessus à grands coups de marteau.~ */
  IF ~~ THEN REPLY #61690 /* ~Concentre-toi…~ */ DO ~FadeToColor([20.0],0)
Wait(3)
FadeFromColor([20.0],0)
~ GOTO 3
  IF ~~ THEN REPLY #61691 /* ~Libère-toi des effets, écarte-toi du cadavre.~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 0.0 0.3
  SAY #61692 /* ~Tu exerces ton pouvoir, et un courant d'air se lève, tandis que le cadavre du dabus paraît se brouiller. Tu ressens une étrange douleur dans ton crâne, à croire qu'on tape dessus à grands coups de marteau. ~ */
  IF ~~ THEN REPLY #61693 /* ~Concentre-toi…~ */ DO ~FadeToColor([20.0],0)
Wait(3)
FadeFromColor([20.0],0)
~ GOTO 3
  IF ~~ THEN REPLY #61694 /* ~Libère-toi des effets, écarte-toi du cadavre.~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 1.0 2.0
  SAY #61695 /* ~Tout devient noir l'espace d'un instant, puis la douleur s'apaise, comme si elle provenait de l'extérieur de ton crâne - l'obscurité se dissipe, et tu entends les coups retentir hors du bâtiment, qui te paraît trouble, comme si tu le voyais à travers un brouillard.~ */
  IF ~~ THEN REPLY #61696 /* ~Concentre-toi sur la vision…~ */ GOTO 4
  IF ~~ THEN REPLY #61697 /* ~Libère-toi des effets, écarte-toi du cadavre.~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 3.0
  SAY #61698 /* ~Le martèlement cesse et tu vois le spectre du dabus entrer. Aussitôt, portes et fenêtres coulent comme de l'eau pour sceller l'entrée par laquelle il a pénétré dans le bâtiment. Il se retourne, marque une pause, puis entreprend de longer les murs qu'il martèle comme pour en éprouver la solidité.~ */
  IF ~~ THEN REPLY #61699 /* ~Concentre-toi sur la vision…~ */ GOTO 5
  IF ~~ THEN REPLY #61700 /* ~Libère-toi des effets, écarte-toi du cadavre.~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 4.0
  SAY #61701 /* ~Le dabus finit de parcourir la pièce, puis il s'arrête près de la "porte" par laquelle il est entré et attaque le mur à coups de marteau ; des éclats de pierre volent, mais le mur se répare aussi vite que le dabus l'abîme. La vision s'obscurcit, et le martèlement continue, tout d'abord très régulier, puis de plus en plus lent…~ */
  IF ~  Global("Know_Dead_Dabus","GLOBAL",1)
~ THEN REPLY #61702 /* ~Concentre-toi sur la vision…~ */ DO ~SetGlobal("Know_Dead_Dabus","GLOBAL",2)
AddexperienceParty(1000)
~ GOTO 6
  IF ~  Global("Know_Dead_Dabus","GLOBAL",2)
~ THEN REPLY #61703 /* ~Concentre-toi sur la vision…~ */ GOTO 6
  IF ~~ THEN REPLY #61704 /* ~Libère-toi des effets, écarte-toi du cadavre.~ */ EXIT
END

IF ~~ THEN BEGIN 6 // from: 5.0 5.1
  SAY #61705 /* ~Ta vision s'éclaircit alors que le martèlement cesse et tu te retrouves près du cadavre… on dirait qu'il s'est desséché, pris au piège dans le bâtiment. ~ */
  IF ~~ THEN REPLY #61706 /* ~Laisse le cadavre du dabus.~ */ EXIT
END
