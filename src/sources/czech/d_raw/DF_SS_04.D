// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DF_SS_04.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\cs_CZ\dialog.tlk
// dialogF  : (none)

BEGIN ~DF_SS_04~

IF ~  !Global("S_Stone","AR0603",4)
!Global("S_Stone","AR0603",11)
~ THEN BEGIN 0 // from:
  SAY #34215 /* ~Je to nezvyklý žlutozelený kámen. Je bezpečně připevněný k podstavci, na kterém leží.~ */
  IF ~~ THEN REPLY #47430 /* ~Odejdi.~ */ EXIT
END

IF ~  Global("S_Stone","AR0603",4)
~ THEN BEGIN 1 // from:
  SAY #47431 /* ~Tenhle zelenožlutý kámen je jeden z těch, k nimž tě poslal úředník. V jeho nitru leží prožitek 'čirého zázraku.'~ */
  IF ~~ THEN REPLY #47432 /* ~Začni vjem.~ */ GOTO 2
  IF ~~ THEN REPLY #47433 /* ~Odejdi.~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.0
  SAY #47434 /* ~Váhavě jsi otevřel ústa a mělce se nadechl... a voda vtéká do tvých plic jako chladivý vzduch. Usmíváš se a dýcháš zhluboka, všude okolo, jak pomalu klesáš ke dnu přístavu, jsou stovky různobarevných ryb a proplétají se mezi nádhernými korály. Když se tvé nohy dotkly dna, vzhlédl jsi nahoru na kýl tvé lodi a pln radosti ses zasmál. K hladině vyrazila řada velkých bublin...~ */
  IF ~  Global("Sensation04","AR0603",0)
~ THEN REPLY #47435 /* ~Odtrhni se od prožitku.~ */ DO ~SetGlobal("Sensation04","AR0603",1)
GiveExperience(Protagonist,750)
~ GOTO 5
  IF ~  Global("Sensation04","AR0603",1)
~ THEN REPLY #47436 /* ~Odtrhni se od prožitku, odejdi.~ */ EXIT
END

IF ~  Global("S_Stone","AR0603",11)
~ THEN BEGIN 3 // from:
  SAY #47437 /* ~Tenhle zelenožlutý kámen je jeden z těch, k nimž tě poslal úředník. V jeho nitru leží prožitek 'čistého veselí.'~ */
  IF ~~ THEN REPLY #47438 /* ~Začni vjem.~ */ GOTO 4
  IF ~~ THEN REPLY #47439 /* ~Odejdi.~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 3.0
  SAY #47440 /* ~Tancuješ a poskakuješ v rytmu živé hudby lesních elfů. Ty a tucet dalších tanečníků víříte lesní mýtinou, smějete se jako pomatení. Jak kolem tebe obyvatelé lesa tleskají, pokřikují a tančí, nad vašimi hlavami se vznášejí víly a nechávají za sebou pruhy barevných světel...~ */
  IF ~  Global("Sensation11","AR0603",0)
~ THEN REPLY #47441 /* ~Odtrhni se od prožitku.~ */ DO ~SetGlobal("Sensation11","AR0603",1)
GiveExperience(Protagonist,750)
~ GOTO 5
  IF ~  Global("Sensation11","AR0603",1)
~ THEN REPLY #47442 /* ~Odtrhni se od prožitku, odejdi.~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 2.0 4.0
  SAY #47443 /* ~Zdá se, že zážitek probudil v tvé mysli nejasnou vzpomínku... cítíš se, jako bys užitím kamene vjemů něco získal.~ */
  IF ~~ THEN REPLY #47444 /* ~Odejdi.~ */ EXIT
END
