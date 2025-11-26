// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DKUATRAA.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\fr_FR\dialog.tlk
// dialogF  : (none)

BEGIN ~DKUATRAA~

IF ~  NumTimesTalkedTo(0)
~ THEN BEGIN 0 // from:
  SAY #45430 /* ~L'homme se déplace d'une caisse à l'autre. Totalement absorbé par sa tâche, il semble les compter et marquer diverses notes sur un morceau de parchemin. Ton interruption ne lui fait guère plaisir. "Qu'est-ce que c'est ? Tu ne vois pas que je suis en train de faire l'inventaire ? Va embêter quelqu'un d'autre."~ */
  IF ~  Global("FedEx","Global",1)
PartyHasItem("DBox")
~ THEN REPLY #45085 /* ~"On m'a demandé de te remettre cette boîte."~ */ GOTO 2
  IF ~~ THEN REPLY #45431 /* ~"Pardon, je ne voulais pas t'interrompre. Au revoir."~ */ EXIT
END

IF ~  NumTimesTalkedToGT(0)
~ THEN BEGIN 1 // from:
  SAY #45432 /* ~"Encore toi ! Il me semblait pourtant t'avoir dit de ne pas me déranger."~ */
  IF ~  Global("FedEx","Global",1)
PartyHasItem("DBox")
~ THEN REPLY #45433 /* ~"On m'a demandé de te remettre cette boîte."~ */ GOTO 2
  IF ~~ THEN REPLY #45434 /* ~"Pardon, je ne voulais pas t'interrompre. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 0.0 1.0
  SAY #45435 /* ~"Pourquoi ne pas l'avoir dit de prime abord ? Voyons ce que tu as pour moi. Nul doute qu'il faudra que j'entre tout ça dans l'inventaire."~ */
  IF ~~ THEN REPLY #45437 /* ~"Mar m'a demandé de te donner ceci."~ */ GOTO 3
END

IF ~~ THEN BEGIN 3 // from: 2.0
  SAY #45438 /* ~Lorsque tu tends la boîte à Ku'atraa, son intérêt manifeste laisse la place à un vif effroi. "Non ! Je t'en prie ! Éloigne cette… chose de moi !"~ */
  IF ~~ THEN REPLY #45439 /* ~"Je ne comprends pas. Pourquoi est-ce que tu as peur de cette boîte ?"~ */ GOTO 4
END

IF ~~ THEN BEGIN 4 // from: 3.0
  SAY #45440 /* ~"Je t'ai dit de reculer ! La mort… le mal… tromper Mar, je… il le fallait… je n'en pouvais plus… je t'en prie… apporte-la à Brasken… au sud-ouest… la Ruche… moi, je… noooonnnn !" Apparemment, la seule vue de la boîte est déjà trop pour lui ; il détale en hurlant.~ */
  IF ~~ THEN REPLY #45441 /* ~"Attends ! Qu'est-ce que je suis censé faire de ce truc, moi ?" ~ */ DO ~SetGlobal("FedEx","Global",2)
SetGlobal("Alpha","Global",2)
SetGlobal("Beta","Global",1)
AddexperienceParty(250)
StartCutSceneMode()
StartCutSceneEx("3009cut1",FALSE)
~ JOURNAL #39488 /* ~J'ai eu une discussion pour le moins insolite avec Ku'atraa, à qui Mar m'avait demandé de remettre l'étrange boîte. Ku'atraa avait visiblement peur de ce qui se trouvait à l'intérieur. Quand je la lui ai montrée, il a été si terrifié qu'il s'est enfui sans demander son reste. D'après ce que j'ai cru comprendre de ses marmonnements, il voulait que j'apporte la boîte à un dénommé Brasken, lequel réside dans le quartier sud-ouest de la Ruche. J'espère que ce Brasken me débarrassera de cette fichue boîte. Je dois bien reconnaître qu'elle me met mal à l'aise chaque fois que je la regarde.~ */ EXIT
END
