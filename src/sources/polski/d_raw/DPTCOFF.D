// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DPTCOFF.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\pl_PL\dialog.tlk
// dialogF  : (none)

BEGIN ~DPTCOFF~
//////////////////////////////////////////////////
// WARNING: this file contains non-trivial WEIGHTs
//////////////////////////////////////////////////

IF WEIGHT #1 /* Triggers after states #: 1 even though they appear after this state */
~  True()
~ THEN BEGIN 0 // from:
  SAY #51470 /* ~Napinasz wszystkie mięśnie, próbując podnieś wieko sarkofagu, ale twoje wysiłki spełzają na niczym. Wygląda na to, że wieko jest w jakiś sposób przymocowane.~ */
  IF ~~ THEN REPLY #51471 /* ~Odejdź.~ */ EXIT
END

IF WEIGHT #0 ~  Global("Inscr_1","GLOBAL",1)
Global("Inscr_2","GLOBAL",1)
Global("Inscr_3","GLOBAL",1)
Global("Inscr_4","GLOBAL",1)
Global("Inscr_5","GLOBAL",1)
Global("Inscr_6","GLOBAL",1)
Global("Inscr_7","GLOBAL",1)
Global("Inscr_8","GLOBAL",1)
~ THEN BEGIN 1 // from:
  SAY #51473 /* ~Z łatwością podnosisz wieko sarkofagu. Mechanizm, który je przytrzymywał, został otwarty.~ */
  IF ~  GlobalGT("Lo_Quest","GLOBAL",2)
~ THEN REPLY #53782 /* ~Otwórz sarkofag.~ */ GOTO 5
  IF ~  Global("Lo_Quest","GLOBAL",2)
~ THEN REPLY #53783 /* ~Otwórz sarkofag.~ */ DO ~SetGlobal("Lo_Quest","GLOBAL",3)
~ GOTO 2
  IF ~  Global("Lo_Quest","GLOBAL",0)
~ THEN REPLY #53784 /* ~Otwórz sarkofag.~ */ DO ~SetGlobal("Lo_Quest","GLOBAL",3)
~ GOTO 4
END

IF ~~ THEN BEGIN 2 // from: 1.1
  SAY #53785 /* ~Otwierasz sarkofag... Tylko po to, żeby odkryć klucz leżący w środku. Nie ma tam żadnego ciała, a co ważniejsze, żadnej czaszki.~ */
  IF ~~ THEN REPLY #53786 /* ~"Lotar pewnie się nie ucieszy, kiedy się o tym dowie..."~ */ JOURNAL #51472 /* ~Znalazłem grobowiec. To właśnie tutaj miała być czaszka, której potrzebuje Lotar. Niestety sarkofag w grobowcu był pusty. Muszę powiedzieć o tym Lotarowi.~ */ GOTO 3
END

IF ~~ THEN BEGIN 3 // from: 2.0
  SAY #53787 /* ~Przez chwilę stoisz w milczeniu wpatrując się w zawartość sarkofagu.~ */
  IF ~~ THEN REPLY #53788 /* ~Zabierz klucz i odejdź.~ */ DO ~SetGlobal("Journal","GLOBAL",1)
AddexperienceParty(2000)
GiveItemCreate("PTKey4",Player1,1,0,0)
~ EXIT
END

IF ~~ THEN BEGIN 4 // from: 1.2
  SAY #53789 /* ~Otwierasz sarkofag... W środku znajduje się klucz. Nie ma tam żadnego ciała, ani nic, co przedstawiałoby jakąkolwiek wartość.~ */
  IF ~~ THEN REPLY #53790 /* ~Zabierz klucz i odejdź.~ */ DO ~SetGlobal("Journal","GLOBAL",1)
AddexperienceParty(2000)
GiveItemCreate("PTKey4",Protagonist,1,0,0)
~ JOURNAL #51475 /* ~W katakumbach znalazłem grobowiec. Na środku grobowca znajdował się pusty sarkofag.~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 1.0
  SAY #53791 /* ~Sarkofag jest pusty. Od czasu, kiedy udało ci się zobaczyć jego zawartość, nic się nie zmieniło.~ */
  IF ~~ THEN REPLY #53792 /* ~Odejdź.~ */ EXIT
END
