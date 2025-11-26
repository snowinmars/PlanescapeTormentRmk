// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DMURK.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\cs_CZ\dialog.tlk
// dialogF  : (none)

BEGIN ~DMURK~

IF ~  NumTimesTalkedTo(0)
~ THEN BEGIN 0 // from:
  SAY #58784 /* ~Vidíš obchodníka, není na něm nic zvláštního. Usmál se na tebe.~ */
  IF ~~ THEN REPLY #58785 /* ~"Zdravím."~ */ GOTO 1
  IF ~~ THEN REPLY #58786 /* ~Ignoruj ho.~ */ DO ~SetNumTimesTalkedTo(0)
~ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #58789 /* ~Přikývl. "A já tebe taky. Jsem Murk, máš zájem o nějaké zboží?"~ */
  IF ~~ THEN REPLY #58790 /* ~"Mám nějaké otázky..."~ */ GOTO 2
  IF ~~ THEN REPLY #58791 /* ~"Co máš?"~ */ GOTO 3
  IF ~~ THEN REPLY #58792 /* ~"Ne, sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.0
  SAY #58793 /* ~Zavrtěl hlavou a zamračil se. "Informace neprodávám. Jestli máš otázky, jdi s nimi někam jinam."~ */
  IF ~~ THEN REPLY #58794 /* ~"Dobře, co máš?"~ */ GOTO 3
  IF ~~ THEN REPLY #58795 /* ~"Aha. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 1.1 2.0 4.0
  SAY #58796 /* ~Oči se mu rozsvítily, vychytrale se usmál. "No... náhodou mám s sebou výbornou sbírku rukavic a seker. Jediná lepší věc, než něco zmlátit do krychličky vlastníma rukama, je rozsekat to na malinkatý kousíčky."~ */
  IF ~~ THEN REPLY #58797 /* ~"Ukaž mi své zboží."~ */ DO ~StartStore("CrstG1",Protagonist)
~ EXIT
  IF ~~ THEN REPLY #58798 /* ~"To nic. Sbohem."~ */ EXIT
END

IF ~  NumTimesTalkedToGT(0)
~ THEN BEGIN 4 // from:
  SAY #58799 /* ~Vidíš obchodníka Murka. Kývl ti na pozdrav. "Vítám. Co pro tebe můžu udělat?"~ */
  IF ~~ THEN REPLY #58800 /* ~"Co máš?"~ */ GOTO 3
  IF ~~ THEN REPLY #58801 /* ~"Ukaž mi své zboží."~ */ DO ~StartStore("CrstG1",Protagonist)
~ EXIT
  IF ~~ THEN REPLY #58802 /* ~"Sbohem."~ */ EXIT
END
