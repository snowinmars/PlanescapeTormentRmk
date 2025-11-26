// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DBARKP.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\cs_CZ\dialog.tlk
// dialogF  : (none)

BEGIN ~DBARKP~

IF ~  True()
~ THEN BEGIN 0 // from:
  SAY #50470 /* ~Tento usměvavý muž na tebe radostně kývl, když ses přiblížil. "Vítej v mé kavárně, dobrý pane. Čím ti můžu posloužit? Snad trochu vína?"~ */
  IF ~~ THEN REPLY #50866 /* ~"Víno ne, ale měl bych pár otázek..."~ */ GOTO 1
  IF ~~ THEN REPLY #50867 /* ~"Nic, díky. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #50868 /* ~Muž se na tebe podíval jakoby bezmocným pohledem. "Nejponíženější omluvy, pane, ale dodržuji zásadu servírovat pití a nic jiného. Po konverzaci by ses měl podívat někde jinde, obávám se. Víš jistě, že by sis nedal drink? Nebo třeba kousek chleba a sýra?"~ */
  IF ~~ THEN REPLY #50869 /* ~"Ne, nic nepotřebuji. Sbohem."~ */ EXIT
END
