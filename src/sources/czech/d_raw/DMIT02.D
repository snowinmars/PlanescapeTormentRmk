// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DMIT02.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\cs_CZ\dialog.tlk
// dialogF  : (none)

BEGIN ~DMIT02~

IF ~  True()
~ THEN BEGIN 0 // from:
  SAY #43002 /* ~Tato osoba nese svazek písemností a nenavinutých svitků; příležitostně se zastaví, aby do nich nahlédla a přečetla některé pasáže nahlas, komplikovaně při tom pohybuje rukama, jak to oni dělají. Vzhlédla, jak jsi se před ní zastavil. "Zdravím..."~ */
  IF ~~ THEN REPLY #43003 /* ~"Zdravím... co je tohle za místo?"~ */ GOTO 1
  IF ~~ THEN REPLY #43004 /* ~"Jen tudy procházím. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #43005 /* ~"Toto je místo, kde mohou ctižádostiví mágové trénovat a studovat. Mnoho kouzelníků, když začínali s Uměním jako nováčci čarodějové, zavedly jejich kroky právě sem."~ */
  IF ~  Global("Thorncombe","GLOBAL",0)
~ THEN REPLY #43006 /* ~"Kde je trenér?"~ */ DO ~SetGlobal("Thorncombe","GLOBAL",1)
~ JOURNAL #66871 /* ~Vešel jsem do cvičební místnosti mágů v Hale, ale nenašel jsem vyučující. Jeden z mágů, kteří se tam cvičili, mi řekl, že učitelku Paní Trnočesou najdu v některém ze senzorií Haly.~ */ GOTO 2
  IF ~  GlobalGT("Thorncombe","GLOBAL",0)
GlobalLT("Thorncombe","GLOBAL",3)
~ THEN REPLY #66870 /* ~"Kde je cvičitel?"~ */ GOTO 2
  IF ~~ THEN REPLY #43007 /* ~"To je vše co jsem si přál vědět. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.0 1.1
  SAY #43008 /* ~"Nevím kam šla Lady Trnočesá. Navrhl bych vám, abyste zkusili sensorium... tráví tam spoustu času..." Zamračeně snížil hlas: "Možná příliš."~ */
  IF ~~ THEN REPLY #43009 /* ~"Sensorium?"~ */ GOTO 3
  IF ~~ THEN REPLY #43010 /* ~"To je vše co jsem si přál vědět. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 2.0
  SAY #43011 /* ~"Zeptejte se Splintera, támhle uvnitř vchodu do Haly. Sám se tam nedostanete, ale on vás tam vezme."~ */
  IF ~~ THEN REPLY #43012 /* ~"To je vše co jsem si přál vědět. Sbohem."~ */ EXIT
END
