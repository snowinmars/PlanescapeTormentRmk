// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DSCPAT4.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\cs_CZ\dialog.tlk
// dialogF  : (none)

BEGIN ~DSCPAT4~

IF ~  NumTimesTalkedTo(0)
~ THEN BEGIN 0 // from:
  SAY #10941 /* ~Je to žena jež má dálky vepsané do tváře. Není úplně mladá, ale není ani úplně stará. Možná je to ten výraz mírné nedůvěry, jež je vepsán do jejích rysů. Její výraz jasně říká, že nevěří jen svým smyslům. Když na tebe pohlédne, mluví ostře, ale ne nazlobeně. "Potřebuješ něco?"~ */
  IF ~~ THEN REPLY #10942 /* ~"Kdo jsi?"~ */ GOTO 2
  IF ~~ THEN REPLY #10943 /* ~"Hledám deník."~ */ GOTO 3
  IF ~~ THEN REPLY #10944 /* ~"Hledám Sběrače jménem Pharod. Neviděla nebo neslyšela jsi o něm?"~ */ GOTO 12
  IF ~~ THEN REPLY #10945 /* ~"Co mi můžeš říct o tomhle místě?"~ */ GOTO 4
  IF ~  !Global("Ignus_Free","GLOBAL",1)
~ THEN REPLY #10946 /* ~"Kdo je ten hořící u vchodu?"~ */ GOTO 5
  IF ~~ THEN REPLY #10947 /* ~"Co to bylo, co jste ty a tvůj přítel říkali o Sigilu?"~ */ GOTO 6
  IF ~~ THEN REPLY #10948 /* ~"Nic. Nashle."~ */ EXIT
END

IF ~  NumTimesTalkedToGT(0)
~ THEN BEGIN 1 // from:
  SAY #10949 /* ~"Potřebuješ něco?"~ */
  IF ~~ THEN REPLY #10950 /* ~"Odpovědi na mé otázky."~ */ GOTO 7
  IF ~~ THEN REPLY #10951 /* ~"Ne. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 0.0 7.0
  SAY #10952 /* ~"Jsem Kiarus. Kiarus Trnojazyk. Jsem tady se svým bratrancem, protože můj strýc mě nechce nechat potulovat Úlem samotnou. Zjevně si myslí, že nejsem schopná se o sebe postarat sama. Možná má pravdu. Neznám toto město ani tuto sféru příliš dobře. Nejsem odsud. Jsem z Primy."~ */
  IF ~~ THEN REPLY #10953 /* ~"Primy? Co je to?"~ */ GOTO 9
  IF ~~ THEN REPLY #10954 /* ~"Ty jsi z Primy?"~ */ GOTO 10
  IF ~~ THEN REPLY #10955 /* ~"No pořád bys ale mohla být schopna mi odpovědět na mé otázky."~ */ GOTO 7
  IF ~~ THEN REPLY #10956 /* ~"Pak asi nebudeš schopna mi odpovědět na mé otázky. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 0.1 7.1
  SAY #10957 /* ~"Promiň. Jsem tady ve městě nová a mohu tě ujistit, že jsem neviděla nic co bych mohla nazvat deníkem -- ačkoliv se říká, že něco co se zdá býti osobou, může ve skutečnosti být pro některého jiného tvora deníkem. Stále se snažím pochopit zdejší místní filosofii. Je tak trochu ohromující, ale říkají že když si na ni trochu zvykneš, stane se mnohem snazší."~ */
  IF ~~ THEN REPLY #10958 /* ~"To je útěcha. Rád bych od tebe dostal další odpovědi."~ */ GOTO 7
  IF ~~ THEN REPLY #10959 /* ~"V to pevně doufám. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 0.3 7.3
  SAY #10960 /* ~"Toto je, jak tomu rozumím, hospoda u Doutnajícího nebožtíka, pojmenovaná po tamtom chlápkovi u vchodu. Podle mě je to putyka, kde se bahno mísí se smetanou, aby vytvořilo novou, zcela odpornou chuť. Samozřejmě tím, že jsem z Primy, mohou být moje dojmy přehnaně zatrpklé."~ */
  IF ~~ THEN REPLY #10961 /* ~"Ty jsi z Primy? Co to znamená?"~ */ GOTO 9
  IF ~~ THEN REPLY #10962 /* ~"Ty jsi z Primy? Co tady děláš?"~ */ GOTO 10
  IF ~~ THEN REPLY #10963 /* ~"To je možné. Věci jsou často jiné, než se na první pohled zdají být. Můžeš mi odpovědět na pár otázek?"~ */ GOTO 7
  IF ~~ THEN REPLY #10964 /* ~"To je možné. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 0.4 7.4
  SAY #10965 /* ~"To je Ignus. Pokusil se podpálit část města před jistou dobou -- snad stoletími? -- a byl potrestán tím, že ho proměnili v živý plamen. Nepříjemný osud, ale docela sedí na někoho, kdo byl znám jako pyroman a žhář. Z toho co jsem četla vyplývá, že by bylo nejlepší nechat ho samotného tak jak je."~ */
  IF ~~ THEN REPLY #10966 /* ~"Jak to, že toho o tomto místě tolik víš? Vždyť jsi z Primy?"~ */ GOTO 11
  IF ~~ THEN REPLY #10967 /* ~"Rád bych se tě zeptal na další otázky."~ */ GOTO 7
  IF ~~ THEN REPLY #10968 /* ~"Děkuji. Nashle."~ */ EXIT
END

IF ~~ THEN BEGIN 6 // from: 0.5 7.5
  SAY #10969 /* ~"On není můj přítel, je to můj bratranec. Právě mi říkal, že tohle není střed mnohovesmíru, navzdory tomu, že je umístěn rovnou uprostřed Pustin, navzdory tomu, že je tu ústřední bod portálů z celého vesmíru -- neexistuje místo s větším počtem -- navzdory všem sporům, které o ně bohové vedou a navzdory naprosté rozmanitosti a koncentraci sil jež se zde shromažďují. Ve vesmíru není žádné jiné místo jako je tohle a on mi tady tvrdí, že to není nic zvláštního? Ha!"~ */
  IF ~~ THEN REPLY #10970 /* ~"To je zajímavý názor. Možná, že oba máte jistou část pravdy?"~ */ GOTO 8
  IF ~~ THEN REPLY #10971 /* ~"Ať je to jakkoliv, rád bych ti položil ještě několik otázek."~ */ GOTO 7
  IF ~~ THEN REPLY #10972 /* ~"Zajímavé. Teď už musím jít. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 7 // from: 1.0 2.2 3.0 4.2 5.1 6.1 8.0 9.0 10.0 11.0 12.1 13.0
  SAY #10973 /* ~"Jen se ptej. Pokud budu vědět, odpovím."~ */
  IF ~~ THEN REPLY #10974 /* ~"Kdo jsi?"~ */ GOTO 2
  IF ~  Global("Journal","GLOBAL",0)
~ THEN REPLY #10975 /* ~"Hledám deník."~ */ GOTO 3
  IF ~  Global("Pharod","GLOBAL",0)
~ THEN REPLY #10976 /* ~"Hledám Sběrače jménem Pharod. Neviděla nebo neslyšela jsi o něm?"~ */ GOTO 12
  IF ~~ THEN REPLY #10977 /* ~"Co mi můžeš říct o tomto místě?"~ */ GOTO 4
  IF ~  !Global("Ignus_Free","GLOBAL",1)
~ THEN REPLY #10978 /* ~"Kdo je ten hořící u vchodu?"~ */ GOTO 5
  IF ~~ THEN REPLY #10979 /* ~"Co to bylo, co jste ty a tvůj přítel říkali o Sigilu?"~ */ GOTO 6
  IF ~~ THEN REPLY #10980 /* ~"Nic. Nashle."~ */ EXIT
END

IF ~~ THEN BEGIN 8 // from: 6.0
  SAY #10981 /* ~"Možná že máš pravdu, ale takové věci jsou většinou nad mé chápání. Buď je to místo důležité, nebo není. Paradoxy mohou hýbat sférami, ale musí v tom celém být nějaký smysl."~ */
  IF ~~ THEN REPLY #10982 /* ~"Ne tak nutně... ale nemám teď čas, abych s tebou o tom diskutoval. Místo toho bych ti rád položil další otázky."~ */ GOTO 7
  IF ~~ THEN REPLY #10983 /* ~"V to doufám. Potřebuji odpovědi. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 9 // from: 2.0 4.0
  SAY #10984 /* ~Vztyčí hlavu a podívá se na tebe udiveně. "Primární materiální sféra? Místo, kde se zrodila myšlenka o stvoření Vnějších sfér? Svět? Hvězdy, měsíce, a tak dále? Víra a realita? Pevně doufám, že víš co je to Prima, neboť je to neodmyslitelná součást znalostí o sférách."~ */
  IF ~~ THEN REPLY #10985 /* ~"Jasně, že to vím. Mám další otázky."~ */ GOTO 7
  IF ~~ THEN REPLY #10986 /* ~"Och. Dobrá tedy. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 10 // from: 2.1 4.1
  SAY #10987 /* ~"Jsem na návštěvě. Rozšiřuji si obzory. Prima je dobré místo na život, ale je trochu příliš... reálné, řekla bych. Můj strýc poskytuje každému svému synovci a neteři několik let ve sférách, a umožní nám, abychom tu zůstali, pokud se tak rozhodneme. Myslím, že tak možná učiním. Jsem fascinovaná i odpuzovaná. Ale to je, jak předpokládám, podstata sfér, že ano?"~ */
  IF ~~ THEN REPLY #10988 /* ~"Pokud tomu rozumím, tak ano. Máš dostatek vědomostí, abys mi mohla dát nějaké odpovědi?"~ */ GOTO 7
  IF ~~ THEN REPLY #10989 /* ~"Ano, to ano. Sbohem a hodně štěstí."~ */ EXIT
  IF ~~ THEN REPLY #10990 /* ~"Ano. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 11 // from: 5.0
  SAY #10991 /* ~"Můj a Cielanův společný strýc je čaroděj, který tu bydlí. Bere své příbuzné příležitostně do sfér, aby jim ukázal požitky i hrůzy mnohovesmíru. Chtěla jsem se ujistit, že jsem na cestu nachystaná, a tak jsem se na to připravila. Důkladně. Vím toho o městě pravděpodobně víc než můj bratranec, který tady pobývá celý život." Ukáže pohrdavě na muže vedle ní.~ */
  IF ~~ THEN REPLY #10992 /* ~"Tomu teda říkám strýc. Mohu se zeptat na další otázky?"~ */ GOTO 7
  IF ~~ THEN REPLY #10993 /* ~"To je úplný dar. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 12 // from: 0.2 7.2
  SAY #10994 /* ~"Sběrač? Myslím že jsem takový pojem ještě neslyšela..." Zamyslí se na chvíli. "Není to jeden z těch převozníků mrtvých? Ubohý národ, který sbírá nespočetné oběti Úlu kvůli penězům?"~ */
  IF ~~ THEN REPLY #10995 /* ~"Ano."~ */ GOTO 13
  IF ~~ THEN REPLY #10996 /* ~"Očividně toho muže neznáš, takže mi odpověz na jiné otázky."~ */ GOTO 7
  IF ~~ THEN REPLY #10997 /* ~"Zapomeň na to. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 13 // from: 12.0
  SAY #10998 /* ~"Z toho co chápu se nejvíce soustřeďují v oblastech Úlu, které jsou vzdálené od Márnice, kde je více života a více násilí. Tvým nejlepším tahem bude soustředit své pátrání směrem pryč od domu mrtvých."~ */
  IF ~~ THEN REPLY #10999 /* ~"Možná tak učiním, ale nejdřív bych se tě rád zeptal na něco jiného."~ */ GOTO 7
  IF ~~ THEN REPLY #11000 /* ~"To je dobrý nápad. Díky a sbohem."~ */ EXIT
END
