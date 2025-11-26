// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DCSLAVE.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\cs_CZ\dialog.tlk
// dialogF  : (none)

BEGIN ~DCSLAVE~

IF ~  True()
~ THEN BEGIN 0 // from:
  SAY #53237 /* ~Vidíš vyděšeného Cursťana. "Děkuju ti za pomoc... nevím, co bych dělal... zabili by mně..." Ještě chvíli blekotá slova díků, a pak řekl: "Měl bych pomoct. Tohle město není rovna ve stavu, kdy si můžu dovolit být sobecký. Děkuju ti, znovu a znovu. Sbohem."~ */
  IF ~~ THEN REPLY #53238 /* ~"To nic. Sbohem."~ */ DO ~EscapeArea()
~ EXIT
END
