// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : COPEARC.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\cs_CZ\dialog.tlk
// dialogF  : (none)

BEGIN ~COPEARC~

IF ~  True()
~ THEN BEGIN 0 // from:
  SAY #46723 /* ~Náušnice vypadá velice staře. Určitě se měla nějak nosit, ale nikde není háček ani nic jiného, co by ji umožňovalo připevnit k uchu. Po stranách náušnice je několik podivných žlábků.~ */
  IF ~~ THEN REPLY #46724 /* ~Prozkoumej žlábky.~ */ GOTO 1
  IF ~  Global("Know_Copper_Earring_Secret","GLOBAL",1)
~ THEN REPLY #46725 /* ~Vlož nehet do žlábku, který odpovídá směru, kterým ukazoval trojúhelník v zubaté kružnici na čele zombie #79.~ */ DO ~AddexperienceParty(250)
~ GOTO 2
  IF ~~ THEN REPLY #46726 /* ~Odlož náušnici.~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #46727 /* ~Žlábky jsou rovnoměrně rozmístěny po vnitřku náušnice - při bližším prozkoumání ti něčím připomínají malinké tesáky. Určitě je tam někdo udělal schválně, ale za jakým účelem, to ti není jasné.~ */
  IF ~  Global("Know_Copper_Earring_Secret","GLOBAL",1)
~ THEN REPLY #46728 /* ~Vlož nehet do žlábku, který odpovídá směru, kterým ukazoval trojúhelník v zubaté kružnici na čele zombie #79.~ */ DO ~AddexperienceParty(250)
~ GOTO 2
  IF ~~ THEN REPLY #46729 /* ~Odlož náušnici.~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 0.1 1.0
  SAY #46730 /* ~Strčil jsi nehet do třetího žlábku od vrchu a stiskl. Ozvalo se cvaknutí a vrchol náušnice odskočil a otevřel se. Nejenom že teď můžeš konečně nosit náušnici, vidíš vevnitř něco jako tajnou schránku.~ */
  IF ~~ THEN REPLY #46731 /* ~Zatřes náušnicí, jestli něco nevypadne.~ */ GOTO 3
END

IF ~~ THEN BEGIN 3 // from: 2.0
  SAY #46732 /* ~Zatřásl jsi náušnicí, ale nic nevypadlo. Ať už tam bylo kdysi schováno cokoli, teď už je to dávno pryč.

POZNÁMKA: Objevení otevíracího mechanismu ti umožní náušnici nosit. Navíc, tajná schránka zvyšuje cenu náušnice.~ */
  IF ~~ THEN REPLY #46733 /* ~Odlož náušnici.~ */ DO ~TransformPartyItem("CopEarC","CopEarO",1,0,0)
~ EXIT
END
