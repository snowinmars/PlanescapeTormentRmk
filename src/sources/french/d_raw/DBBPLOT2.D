// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DBBPLOT2.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\fr_FR\dialog.tlk
// dialogF  : (none)

BEGIN ~DBBPLOT2~

IF ~  Global("BBPlot_Secret_2","GLOBAL",0)
~ THEN BEGIN 0 // from:
  SAY #53136 /* ~Cette aire circulaire du dédale est très étrange, en ce sens que toute la végétation qui s'y trouvait est morte, hormis trois maigres tiges situées en son centre… ces tiges semblent avoir dévoré toute la végétation alentour.~ */
  IF ~  OR(2)
!Global("BBPlot_Secret_1","GLOBAL",0)
!Global("BBPlot_Secret_3","GLOBAL",0)
~ THEN REPLY #53137 /* ~Commence à fredonner le même air que Ravel utilisait pour invoquer le pouvoir du dédale.~ */ GOTO 1
  IF ~  !Class(Protagonist,MAGE)
Global("Ravel_Teach","GLOBAL",0)
~ THEN REPLY #53153 /* ~Examine les brindilles.~ */ GOTO 6
  IF ~  Class(Protagonist,MAGE)
Global("Ravel_Teach","GLOBAL",0)
~ THEN REPLY #53156 /* ~Examine les brindilles.~ */ GOTO 7
  IF ~  GlobalGT("Ravel_Teach","GLOBAL",0)
~ THEN REPLY #53163 /* ~Examine les brindilles.~ */ GOTO 7
  IF ~~ THEN REPLY #53164 /* ~Ne touche pas aux brindilles.~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0 7.0
  SAY #53138 /* ~Tandis que tu commences à chantonner, les brindilles commencent à se tordre dans leur cercle de mort, essayant d'agripper quelque chose… et tu devines instinctivement qu'elles essaient d'agripper une graine de Noirépine.~ */
  IF ~  PartyHasItem("BBSeed")
~ THEN REPLY #53139 /* ~Tout en fredonnant, jette une graine de Noirépine dans le tas.~ */ DO ~DestroyPartyItem("BBSeed",FALSE)
SetGlobal("BBPlot_Secret_2","GLOBAL",1)
~ GOTO 2
  IF ~  !PartyHasItem("BBSeed")
~ THEN REPLY #53151 /* ~"J'espère pouvoir trouver d'autres graines… mais j'ai l'impression que Ravel m'a donné les seules qu'il y ait ici."~ */ EXIT
  IF ~~ THEN REPLY #53152 /* ~Ne touche pas aux brindilles.~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.0
  SAY #53140 /* ~Tout en fredonnant, tu jettes une graine dans le tas de branches et les trois brindilles s'enroulent autour de la graine et la brisent en craquant. Les brindilles arrêtent de gratter et tu les vois grandir et s'épaissir lentement pour devenir des branches. Tandis qu'elles grandissent, les trois nouvelles branches s'enroulent les unes autour des autres, puis, dans un *craquement* se cassent à la base. Elles roulent sur le sol, puis se figent dans une raideur mortelle.~ */
  IF ~  Global("Ravel_Teach","GLOBAL",1)
CheckStatLT(Protagonist,16,INT)
~ THEN REPLY #53141 /* ~Ramasse les trois branches ~ */ DO ~GiveItemCreate("BBWand",Protagonist,9,9,0)
~ GOTO 3
  IF ~  Global("Ravel_Teach","GLOBAL",1)
CheckStatGT(Protagonist,15,INT)
~ THEN REPLY #53144 /* ~Ramasse les trois branches ~ */ DO ~GiveItemCreate("BBWand",Protagonist,33,33,0)
~ GOTO 4
  IF ~  Global("Ravel_Teach","GLOBAL",2)
CheckStatLT(Protagonist,16,INT)
~ THEN REPLY #53147 /* ~Ramasse les trois branches ~ */ DO ~GiveItemCreate("BBWand",Protagonist,66,66,0)
~ GOTO 4
  IF ~  Global("Ravel_Teach","GLOBAL",2)
CheckStatGT(Protagonist,15,INT)
~ THEN REPLY #53148 /* ~Ramasse les trois branches ~ */ DO ~GiveItemCreate("BBWand",Protagonist,99,99,0)
~ GOTO 5
END

IF ~~ THEN BEGIN 3 // from: 2.0
  SAY #53142 /* ~Tu ramasses les trois branches. Tu ressens toujours dans ta main le bourdonnement. C'est de toute évidence magique… mais les branches paraissent quelque peu ratatinées et tu ne sais pas vraiment quelle quantité de pouvoir elles possèdent.~ */
  IF ~~ THEN REPLY #53143 /* ~"Alors je prendrai uniquement ceci… ça pourrait être utile."~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 2.1 2.2
  SAY #53145 /* ~Tu ramasses les trois branches. Tu ressens toujours dans ta main le bourdonnement. C'est de toute évidence magique… et puissant.~ */
  IF ~~ THEN REPLY #53146 /* ~" Alors je prendrai uniquement ceci… ça pourrait être utile."~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 2.3
  SAY #53149 /* ~Tu ramasses les trois branches. Tu ressens toujours dans ta main le bourdonnement, comme un battement de cœur. C'est de toute évidence magique… et puissant. Tu pouvais *sentir* la branche répondre à ton fredonnement, si bien que tu pouvais encourager sa croissance tandis que les branches s'emmêlaient… Une trace du pouvoir de Ravel, peut-être, mais en majorité ta force et ta volonté. Tu ne peux pas t'empêcher de ressentir une certaine fierté.~ */
  IF ~~ THEN REPLY #53150 /* ~Prends la branche… *ta* branche.~ */ EXIT
END

IF ~~ THEN BEGIN 6 // from: 0.1
  SAY #53154 /* ~Les brindilles sont fines, comme des doigts avides et ne comportent pas les épines noires qui ornent les branches ailleurs dans le dédale. Hormis ce détail, elles ne semblent pas différentes.~ */
  IF ~~ THEN REPLY #53155 /* ~Ne touche pas aux brindilles.~ */ EXIT
END

IF ~~ THEN BEGIN 7 // from: 0.2 0.3
  SAY #53157 /* ~Les brindilles sont fines, comme des doigts avides et ne comportent pas les épines noires qui ornent les branches ailleurs dans le dédale. Tandis que tu les examines, tu ressens une vibration magique émanant d'elles - elles sont comme les faibles vibrations que tu peux ressentir dans le dédale, mais plus insistantes, comme le gémissement d'un tout petit enfant.~ */
  IF ~  GlobalGT("Ravel_Teach","GLOBAL",0)
~ THEN REPLY #53158 /* ~Commence à fredonner le même air que Ravel utilisait pour invoquer le pouvoir du dédale.~ */ GOTO 1
  IF ~  Global("Ravel_Teach","GLOBAL",0)
~ THEN REPLY #53159 /* ~Examine attentivement les brindilles, essaie de déterminer la nature de l'aura.~ */ GOTO 8
  IF ~~ THEN REPLY #53162 /* ~Ne touche pas aux brindilles.~ */ EXIT
END

IF ~~ THEN BEGIN 8 // from: 7.1
  SAY #53160 /* ~Tu examines attentivement les brindilles. Sans trop savoir pourquoi, tu es certain qu'elles sont cultivées dans un but précis. Elles semblent renfermer un pouvoir magique, mais tu ne vois pas comment le libérer.~ */
  IF ~~ THEN REPLY #53161 /* ~Ne touche pas aux brindilles.~ */ EXIT
END

IF ~  Global("BBPlot_Secret_2","GLOBAL",1)
~ THEN BEGIN 9 // from:
  SAY #53165 /* ~Devant toi se trouve un cercle désert sur le sol du dédale… aucune nouvelle branche n'a poussé, et tu ne penses pas qu'une branche poussera jamais, maintenant que Ravel a trouvé sa fin.~ */
  IF ~~ THEN REPLY #53166 /* ~Quitte le cercle.~ */ EXIT
END
