// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DF_SS_01.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\cs_CZ\dialog.tlk
// dialogF  : (none)

BEGIN ~DF_SS_01~

IF ~  !Global("S_Stone","AR0603",1)
!Global("S_Stone","AR0603",8)
~ THEN BEGIN 0 // from:
  SAY #47094 /* ~Je to neobyčejný, zelenožlutý kámen. Pevně spočívá přikován na podstavci.~ */
  IF ~~ THEN REPLY #47095 /* ~Odejdi.~ */ EXIT
END

IF ~  Global("S_Stone","AR0603",1)
~ THEN BEGIN 1 // from:
  SAY #47096 /* ~Tenhle zelenožlutý kámen je jeden z těch, k nimž tě poslal úředník. V jeho nitru leží prožitek 'nevyhnutelné bolesti.'~ */
  IF ~~ THEN REPLY #47097 /* ~Začni vjem.~ */ GOTO 2
  IF ~~ THEN REPLY #47098 /* ~Odejdi.~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.0
  SAY #47099 /* ~Prožitek je krátký a silný: bojuješ s jiným o něco silnějším mužem na břehu, horkem sálajícího, proudu žhavé lávy, ruka se zbraní ti těžkne a jsi neúprosně tlačen stále blíž magmatu. Krůpěje potu mizí okamžitě, jak se objeví; chloupky na tvých rukou v tom obrovském horku černají a kouří se z nich. Posléze se tvůj bolestný křik rozléhá po rozrytých stěnách kolem a ty i tvá sekera padáte do lávy, která tě promění během několika trýznivých vteřin na popel.~ */
  IF ~  Global("Sensation01","AR0603",0)
~ THEN REPLY #47100 /* ~Odtrhni se od prožitku.~ */ DO ~SetGlobal("Sensation01","AR0603",1)
GiveExperience(Protagonist,750)
~ GOTO 5
  IF ~  Global("Sensation01","AR0603",1)
~ THEN REPLY #47101 /* ~Odtrhni se od prožitku, odejdi.~ */ EXIT
END

IF ~  Global("S_Stone","AR0603",8)
~ THEN BEGIN 3 // from:
  SAY #47102 /* ~Tenhle zelenožlutý kámen je jeden z těch, k nimž tě poslal úředník. V jeho nitru leží prožitek 'psychózy.'~ */
  IF ~~ THEN REPLY #47103 /* ~Začni vjem.~ */ GOTO 4
  IF ~~ THEN REPLY #47104 /* ~Odejdi.~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 3.0
  SAY #47105 /* ~Prožitek je zvláštní a velmi rozčilující... tlačíš hrotem dýky na něčí hrdlo, rukou přejíždíš po jeho ústech, těžce a dychtivě mu dýcháš do tváře. Bodáš... velmi pomalu. Nůž se opřel do kůže, až se jemně prohnula a posléze praskla. Přes tvoje předloktí se valí horká krev, slyšíš chroptění dusícího se člověka, děsivý pocit zvrácené radosti... a je konec.~ */
  IF ~  Global("Sensation08","AR0603",0)
~ THEN REPLY #47106 /* ~Odtrhni se od prožitku.~ */ DO ~SetGlobal("Sensation08","AR0603",1)
GiveExperience(Protagonist,750)
~ GOTO 5
  IF ~  Global("Sensation08","AR0603",1)
~ THEN REPLY #47107 /* ~Odtrhni se od prožitku, odejdi.~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 2.0 4.0
  SAY #47108 /* ~Zdá se, že zážitek probudil v tvé mysli nejasnou vzpomínku... cítíš se, jako bys užitím kamene vjemů něco získal.~ */
  IF ~~ THEN REPLY #47109 /* ~Odejdi.~ */ EXIT
END
