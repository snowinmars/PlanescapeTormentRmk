// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DHIVVAR6.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\cs_CZ\dialog.tlk
// dialogF  : (none)

BEGIN ~DHIVVAR6~

IF ~  NumTimesTalkedTo(0)
~ THEN BEGIN 0 // from:
  SAY #49016 /* ~Vidíš ženu, která se tváří ustaraně.~ */
  IF ~~ THEN REPLY #49017 /* ~"Zdravím."~ */ GOTO 2
  IF ~~ THEN REPLY #49018 /* ~Nechej ženu být.~ */ DO ~SetNumTimesTalkedTo(0)
~ EXIT
END

IF ~  NumTimesTalkedToGT(0)
~ THEN BEGIN 1 // from:
  SAY #49019 /* ~Žena vzdychla. "Můj muž je zase pryč."~ */
  IF ~~ THEN REPLY #49020 /* ~"Zřejmě je to hodně zaměstnaný muž."~ */ GOTO 4
  IF ~~ THEN REPLY #49021 /* ~"Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 0.0
  SAY #49022 /* ~"Čekám, až se vrátí můj manžel. Už je pryč nějakou dobu a já o něj mám docela strach."~ */
  IF ~~ THEN REPLY #49023 /* ~"Jsem si jistý, že se už brzy vrátí."~ */ GOTO 3
  IF ~~ THEN REPLY #49024 /* ~"Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 2.0
  SAY #49025 /* ~"Určitě máš pravdu. Oh... to je ale hodin, omluv mě, ale já musím ještě něco dodělat."~ */
  IF ~~ THEN REPLY #49026 /* ~"Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 1.0
  SAY #49027 /* ~"Ano, to je. A já mám taky spoustu práce, takže prosím, nech mě na pokoji."~ */
  IF ~~ THEN REPLY #49028 /* ~"Sbohem."~ */ EXIT
END
