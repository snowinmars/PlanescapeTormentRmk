// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DS_JRNL.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\cs_CZ\dialog.tlk
// dialogF  : (none)

BEGIN ~DS_JRNL~

IF ~  NearbyDialog("Dsoego")
~ THEN BEGIN 0 // from:
  SAY #48857 /* ~Kovová deska je používána jako lůžko. Vypadá to, že se dá část na straně otevřít.~ */
  IF ~~ THEN REPLY #48859 /* ~Otevři to a podívej se dovnitř.~ */ GOTO 1
  IF ~~ THEN REPLY #48861 /* ~Odejdi.~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #48862 /* ~Nemůžeš se hrabat v Soegových věcech, dokud je poblíž. Musíš ho nějak odlákat pryč, jestli se tam chceš dostat.~ */
  IF ~~ THEN REPLY #48863 /* ~Odejdi.~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 4.0
  SAY #48864 /* ~Soego nikde není, takže jsi vypáčil malý panel a nakoukl dovnitř. Je tam nějaká kniha nebo deník.~ */
  IF ~  Global("Soego_Journal","GLOBAL",1)
~ THEN REPLY #66860 /* ~Vytáhni to a přečti.~ */ GOTO 3
  IF ~  Global("Soego_Journal","GLOBAL",0)
~ THEN REPLY #48865 /* ~Vytáhni knihu a přečti si ji.~ */ DO ~SetGlobal("Soego_Journal","GLOBAL",1)
SetGlobal("Soego","GLOBAL",4)
AddexperienceParty(2000)
~ GOTO 3
  IF ~~ THEN REPLY #48866 /* ~Zavři panel a odejdi.~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 2.0 2.1
  SAY #48867 /* ~Kniha je ve skutečnosti Soegův deník. Popisuje, jak na něj zaútočil krysodlak, jak ho postihla lykantropie a jak utekl z Márnice po tom, co nechtíc zabil a sežral přítele. Hledaje skrýš, narazil na Místo Rozjímání a souhlasil, že bude sloužit kolektivní mysli kraniálních krys. Teď je tady v Mrtvých národech, aby špehoval nemrtvé pro Mnohojednoho, který chce ovládnout tuto část katakomb.~ */
  IF ~~ THEN REPLY #48868 /* ~Vrať deník zpět a zavři panel.~ */ JOURNAL #47846 /* ~V Soegově pokoji jsem objevil jeho tajný deník, ve němž popisuje, jak na něj zaútočil krysodlak, jak postupně propadal lykantropii a jak prchnul z Márnice poté, co bezděčně roztrhal a sežral přítele. Při hledání úkrytu narazil na Místo rozjímání a souhlasil, že bude sloužit Mnohojednomu, vládnoucímu tam hnízdu psionických krys. Teď je v Mrtvých národech, protože má rozkaz na nemrtvých pro Mnohojednoho vyzvědět, zda se chystají v budoucnu ovládnout jejich část podzemí.~ */ EXIT
END

IF ~  !NearbyDialog("Dsoego")
~ THEN BEGIN 4 // from:
  SAY #67165 /* ~Kovový blok je zřejmě používaný jako lůžko. Vypadá to, že by se část na boku dala otevřít.~ */
  IF ~~ THEN REPLY #67166 /* ~Otevři to a podívej se dovnitř.~ */ GOTO 2
  IF ~~ THEN REPLY #67167 /* ~Odejdi.~ */ EXIT
END
