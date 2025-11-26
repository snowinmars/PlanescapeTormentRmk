// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DMW2.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\cs_CZ\dialog.tlk
// dialogF  : (none)

BEGIN ~DMW2~

IF ~  NumTimesTalkedTo(0)
~ THEN BEGIN 0 // from:
  SAY #47953 /* ~Vidíš urostlého mladíka, který právě kontroluje obsah beden. Nevšiml si tě.~ */
  IF ~~ THEN REPLY #47954 /* ~"Zdravím."~ */ GOTO 1
  IF ~~ THEN REPLY #47955 /* ~Ignoruj ho.~ */ DO ~SetNumTimesTalkedTo(0)
~ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #47956 /* ~Podíval se přes rameno a pak se vrátil zpět ke své práci. "Promiň, kámo. Nemám čas na kecy. Moc práce."~ */
  IF ~~ THEN REPLY #47957 /* ~"Mám nějaké otázky..."~ */ GOTO 2
  IF ~~ THEN REPLY #47958 /* ~"Tak dobře, sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.0
  SAY #47959 /* ~Dál pracuje a přes rameno ti odpovídá. "Je mi líto, ale jestli máš otázky, musíš je položit někomu jinému, já zkrátka nemám čas. Zkus se zeptat malého Lazla, najdeš ho u pece."~ */
  IF ~~ THEN REPLY #47960 /* ~Odejdi.~ */ EXIT
END

IF ~  NumTimesTalkedToGT(0)
~ THEN BEGIN 3 // from:
  SAY #47961 /* ~Vidíš trhovce. Všiml si tvého příchodu a zamračil se. "Zdravím tě, drsňáku."~ */
  IF ~~ THEN REPLY #47962 /* ~"Mám nějaké otázky..."~ */ GOTO 4
END

IF ~~ THEN BEGIN 4 // from: 3.0
  SAY #47963 /* ~Povzdychl si. "Pomohl bych ti, ale nemám čas. Zkus se zeptat malého Lazla, najdeš ho u pece."~ */
  IF ~~ THEN REPLY #47964 /* ~"Dobře. Sbohem."~ */ EXIT
END
