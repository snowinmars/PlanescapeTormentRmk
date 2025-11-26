// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DART10.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\cs_CZ\dialog.tlk
// dialogF  : (none)

BEGIN ~DART10~

IF ~  True()
~ THEN BEGIN 0 // from:
  SAY #34202 /* ~Obraz zachycuje pobřežní scénu s velkým, narudlým sluncem zapadajícím za poloostrovem nebo velkým vlnolamem. I když je obraz neoriginální, provedení je naprosto úžasné - hra slábnoucího světla na povrchu vody je dokonale zachycena - ale pohled na namalované slunce ti způsobuje bolest očí. Popis zní 'Povrch Thalasie.'~ */
  IF ~~ THEN REPLY #42674 /* ~Dotkni se malby.~ */ DO ~SetGlobal("View_Art_10","AR0608",1)
~ GOTO 1
  IF ~~ THEN REPLY #42675 /* ~Odejít.~ */ DO ~SetGlobal("View_Art_10","AR0608",1)
~ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #42676 /* ~Kupodivu, na povrchu malby není nic neobvyklého.~ */
  IF ~~ THEN REPLY #42677 /* ~Odejít.~ */ EXIT
END
