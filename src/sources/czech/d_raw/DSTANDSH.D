// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DSTANDSH.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\cs_CZ\dialog.tlk
// dialogF  : (none)

BEGIN ~DSTANDSH~

IF ~  True()
~ THEN BEGIN 0 // from:
  SAY #46108 /* ~Ušlápnutý malý mužík pobíhá po obchodě s kuriozitami, oprašuje, zapisuje a přesouvá věci, jak mu káže majitelka. Všiml sis, že lehce páchne po cibuli. Když ses přiblížil, nervózně se na tebe podíval. "Prosím, pane... nemohu s tebou mluvit. Musím pracovat a má vládkyně mi nedovolí..."~ */
  IF ~~ THEN REPLY #46109 /* ~"Mám jenom pár otázek..."~ */ GOTO 1
  IF ~~ THEN REPLY #46110 /* ~"Sbohem tedy."~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #46111 /* ~"Promiňte, pane, ale já nemůžu. Prosím, nech mě být, než si má vládkyně všimne, že se s tebou bavím..."~ */
  IF ~~ THEN REPLY #46112 /* ~"Tvá vládkyně?"~ */ GOTO 2
  IF ~~ THEN REPLY #46113 /* ~"Sbohem tedy."~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.0
  SAY #46114 /* ~Malý mužík přikývl. "Ano... Vládkyně Vrischika. Jsem Standish, její služebník... její otrok. Spáchal jsem zločin a odsoudili mě k otroctví, pak mě vládkyně koupila v Dolní Čtvrti, stejně jako další otroky - které má většinou ve své vile. A teď prosím - prosím tě! Nech mě být, nebo se na mě rozzlobí a nemilosrdně mě zbije!"~ */
  IF ~~ THEN REPLY #46115 /* ~"Dobře... sbohem, Standishi."~ */ EXIT
END
