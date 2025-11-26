// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DART06.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\pl_PL\dialog.tlk
// dialogF  : (none)

BEGIN ~DART06~

IF ~  True()
~ THEN BEGIN 0 // from:
  SAY #34196 /* ~Powierzchnia tego obrazu... ten drapieżny kolaż jaskrawych kolorów... marszczy się nieustannie jak powierzchnia stawu podczas drobnego deszczu. U dołu widnieje podpis "Siódme Studium Ruchu Fal."~ */
  IF ~~ THEN REPLY #42693 /* ~Dotknij obrazu.~ */ DO ~SetGlobal("View_Art_06","AR0608",1)
~ GOTO 1
  IF ~~ THEN REPLY #42696 /* ~Odejdź.~ */ DO ~SetGlobal("View_Art_06","AR0608",1)
~ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #42691 /* ~Przykładasz otwartą dłoń do płótna obrazu... nie czujesz samego falowania, chociaż w pierwszej chwili przebiega przez twoją dłoń chłodne, mrowiące uczucie.~ */
  IF ~~ THEN REPLY #42698 /* ~Odejdź.~ */ EXIT
END
