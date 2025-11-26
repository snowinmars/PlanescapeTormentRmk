// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DCARTIST.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\cs_CZ\dialog.tlk
// dialogF  : (none)

BEGIN ~DCARTIST~

IF ~  NumTimesTalkedTo(0)
~ THEN BEGIN 0 // from:
  SAY #51717 /* ~Atraktivní dívka s bledou tváří se na tebe usmála a ukázala na knihu plnou skic uhlem. "Zdravím tě, dobrý pane. Jmenuju se Ullana; jsem umělkyně a velice ráda udělám tvůj portrét za pouhých pět měďáků. Realistickou kresbu, nebo karikaturu, podle tvého přání."~ */
  IF ~~ THEN REPLY #51718 /* ~"Ne, dík. Sbohem."~ */ GOTO 2
END

IF ~  NumTimesTalkedToGT(0)
~ THEN BEGIN 1 // from:
  SAY #51719 /* ~"Vítám tě znovu a opět, pane. Přišel jsi sem pro portrét? Ujišťuju tě, že s výsledkem budeš spokojen..."~ */
  IF ~~ THEN REPLY #51720 /* ~"Teď ne, díky. Sbohem."~ */ GOTO 2
END

IF ~~ THEN BEGIN 2 // from: 0.0 1.0
  SAY #51721 /* ~Usmála se, ale trochu smutně. "Tak sbohem. Prosím, neváhej a vrať se, pokud by ses rozmyslel."~ */
  IF ~~ THEN REPLY #51722 /* ~Odejdi.~ */ EXIT
END
