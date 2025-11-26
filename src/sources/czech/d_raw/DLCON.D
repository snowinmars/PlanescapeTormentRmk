// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DLCON.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\cs_CZ\dialog.tlk
// dialogF  : (none)

BEGIN ~DLCON~

IF ~  RandomNum(2,0)
~ THEN BEGIN 0 // from:
  SAY #60952 /* ~Vidíš mechanickou postavu světle zelené barvy. Ačkoli je to očividně stroj, má živoucí tvář, kterou na tebe zamračeně kouká.~ */
  IF ~~ THEN REPLY #60953 /* ~"Zdravím."~ */ GOTO 1
  IF ~~ THEN REPLY #60954 /* ~Ignoruj to stvoření.~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #60955 /* ~"Grrrr." Zabručelo to stvoření, pak se odmlčelo, čekajíc tvoji reakci.~ */
  IF ~~ THEN REPLY #60956 /* ~"Tohohle jsem se měl snad leknout?"~ */ GOTO 2
  IF ~~ THEN REPLY #60957 /* ~"Kdo jsi?"~ */ GOTO 4
  IF ~~ THEN REPLY #60958 /* ~"Co jsi?"~ */ GOTO 6
  IF ~~ THEN REPLY #60959 /* ~"Co děláš?"~ */ GOTO 7
  IF ~~ THEN REPLY #60960 /* ~"Na tohle nemám čas. Sbohem."~ */ GOTO 8
END

IF ~~ THEN BEGIN 2 // from: 1.0
  SAY #60961 /* ~Vypadá zmatený. "Grrrr?" Udělal vůči tobě lehce výhružné gesto.~ */
  IF ~~ THEN REPLY #60962 /* ~"Ptal jsem se, jestli jsem se toho měl snad leknout."~ */ GOTO 3
  IF ~~ THEN REPLY #60963 /* ~"Na tohle vážně nemám čas, sbohem."~ */ GOTO 8
END

IF ~~ THEN BEGIN 3 // from: 2.0
  SAY #60965 /* ~Chvíli na tebe zíral, jak si přebíral tvoji otázku. "Ano. *Grrrr* je výhružný zvuk. A přidal jsem k němu i jedno gesto, abych té výhružce dodal na významnosti. Strach byl očekávaná reakce, která by mi dala výhodu v nadcházejícím boji." Zaůtočil na tebe.~ */
  IF ~~ THEN REPLY #60966 /* ~Braň se.~ */ DO ~ForceAttack(Protagonist,Myself)
~ EXIT
END

IF ~~ THEN BEGIN 4 // from: 1.1
  SAY #60967 /* ~Zdá se tvá otazka ho úplně znejistila. Jenom stojí, zírá na tebe s hlavou lehce nakloněnou na stranu a neví co si počnout. "Jsem zrůda. Budeme se teď bít?"~ */
  IF ~~ THEN REPLY #60968 /* ~"Ty určitě kecáš..."~ */ GOTO 5
  IF ~~ THEN REPLY #60969 /* ~Zaůtoč na něj.~ */ DO ~ForceAttack(Protagonist,Myself)
~ EXIT
END

IF ~~ THEN BEGIN 5 // from: 4.0
  SAY #60970 /* ~Ještě chvíli na tebe zíral. "Ne... Grrrr." Vyrazil do útoku.~ */
  IF ~~ THEN REPLY #60971 /* ~Braň se.~ */ DO ~ForceAttack(Protagonist,Myself)
~ EXIT
END

IF ~~ THEN BEGIN 6 // from: 1.2
  SAY #60972 /* ~"Jsem lehký bojový stroj. Momentálně obsahuji: Nízké bojové schopnosti, malou inteligenci a nízkou schopnost ovládat lehké zbraně." Zaůtočil na tebe.~ */
  IF ~~ THEN REPLY #60973 /* ~Braň se.~ */ DO ~ForceAttack(Protagonist,Myself)
~ EXIT
END

IF ~~ THEN BEGIN 7 // from: 1.3
  SAY #60975 /* ~Chvíli na tebe koukal, nevědouce co si počít. "Jsem obyvatel těchto kobek. Ty jsi vstoupil na mé soukromé území a ja teď musím přijmout jistá opatření. Proto započnínám bojovou sekvenci: Nejdřív zvuk *Grrrr*, následně výhružné gesto, a nakonec boj." Vyrazil do útoku.~ */
  IF ~~ THEN REPLY #60976 /* ~Braň se.~ */ DO ~ForceAttack(Protagonist,Myself)
~ EXIT
END

IF ~~ THEN BEGIN 8 // from: 1.4 2.1
  SAY #60977 /* ~Stvoření pozvedlo ruce a začalo mávat zbraní. "Sledujte nepřátele jež se předemnou plazí. Slyšte nářek žen. Já jsem nepřemožitelný." Zaútočil na tebe.~ */
  IF ~~ THEN REPLY #60978 /* ~Braň se.~ */ DO ~ForceAttack(Protagonist,Myself)
~ EXIT
END

IF ~  RandomNum(2,1)
~ THEN BEGIN 9 // from:
  SAY #60979 /* ~Vidíš mechanickou postavu světle zelené barvy. Ačkoli je to očividně stroj, má živoucí tvář, kterou na tebe zamračeně kouká. ~ */
  IF ~~ THEN REPLY #60980 /* ~"Zdravím."~ */ GOTO 10
  IF ~~ THEN REPLY #60981 /* ~Ignoruj to stvoření.~ */ EXIT
END

IF ~~ THEN BEGIN 10 // from: 9.0
  SAY #60982 /* ~"Ve jménu Zlého Čaroděje, chcípni!" Stvoření ti před nosem zámávalo zbraní.~ */
  IF ~~ THEN REPLY #60983 /* ~"O jakém Zlém Čaroději to sakra mluvíš?"~ */ GOTO 11
  IF ~~ THEN REPLY #60984 /* ~"Kdo jsi?"~ */ GOTO 12
  IF ~~ THEN REPLY #60985 /* ~"Co jsi?"~ */ GOTO 14
  IF ~~ THEN REPLY #60986 /* ~"Co děláš?"~ */ GOTO 15
  IF ~~ THEN REPLY #60987 /* ~"A z toho se mám jako klepat strachy?"~ */ GOTO 16
  IF ~~ THEN REPLY #60988 /* ~"Na tohle nemám čas, sbohem."~ */ GOTO 17
END

IF ~~ THEN BEGIN 11 // from: 10.0
  SAY #60989 /* ~Stvoření přestalo mávat zbraní a na chvíli se zamyslelo. "Uch... o jednom, který neexistoval, dokud jsi nenastavil Rubikon  na *těžký* level obtížnosti. Chlape, seš v pěkné bryndě. Nicméně... Chcípni ve jménu Zlého čaroděje!" Zaůtočil na tebe.~ */
  IF ~~ THEN REPLY #60990 /* ~Braň se.~ */ DO ~ForceAttack(Protagonist,Myself)
~ EXIT
END

IF ~~ THEN BEGIN 12 // from: 10.1
  SAY #60991 /* ~"Jsem jen další bezejmený výplod zla, který musíš zničit, nebo zničí tebe!"~ */
  IF ~~ THEN REPLY #60992 /* ~"To je snad vtip, ne?"~ */ GOTO 13
  IF ~~ THEN REPLY #60993 /* ~Zaútoč na něj.~ */ DO ~ForceAttack(Protagonist,Myself)
~ EXIT
END

IF ~~ THEN BEGIN 13 // from: 12.0
  SAY #60994 /* ~Na jeho tváři se promítla řada různých emocí, dokud nenašel jednu která mu vyhovovala. "Vysmíváš se mi! Chcípni ty smradlavý výplodku lidské čubky!" Vyrazil do útoku.~ */
  IF ~~ THEN REPLY #60995 /* ~Braň se.~ */ DO ~ForceAttack(Protagonist,Myself)
~ EXIT
END

IF ~~ THEN BEGIN 14 // from: 10.2
  SAY #60996 /* ~"Jsem lehký bojový stroj naprogramovaný k tomu, aby zničil všechny vetřelce kteří se postaví  Rubikonu!" Zaútočil na tebe.~ */
  IF ~~ THEN REPLY #60997 /* ~Braň se.~ */ DO ~ForceAttack(Protagonist,Myself)
~ EXIT
END

IF ~~ THEN BEGIN 15 // from: 10.3
  SAY #60998 /* ~"Spouštím skript, který byl Rubikonem přiřazen mému modelovému typu. Nyní se stanu nepřátelským a pokusím se tě zabít, nebo ti aspoň co nejvíce ublížit, než zemřu tvojí rukou!" Vyrazil do útoku.~ */
  IF ~~ THEN REPLY #60999 /* ~Braň se.~ */ DO ~ForceAttack(Protagonist,Myself)
~ EXIT
END

IF ~~ THEN BEGIN 16 // from: 10.4
  SAY #61000 /* ~Stvoření přestalo mávat zbraní a na chvíli se zamyslelo. "Ano... Vzhledem k tomu, že Zlý vždycky zaseje do srdcí ostatních semínko strachu, dává tak hrdinům důvod, aby stále pokračovali a čelili mnoha nebezpečím, dokud konečně neporazí Zlého, jako odměnu za celý tento akt naprosté stupidity." Zaútočil na tebe.~ */
  IF ~~ THEN REPLY #61001 /* ~Braň se.~ */ DO ~ForceAttack(Protagonist,Myself)
~ EXIT
END

IF ~~ THEN BEGIN 17 // from: 10.5
  SAY #61002 /* ~Začal ti před obličejem mávat zbraní. "Pohleďte na tohoto červa jež se tu předemnou krčí. Ze strachu ze vší mé moci a skvělosti. Nepros o milost červe, neboť já zásadně žádnou nedávám!" Vyrazil do útoku.~ */
  IF ~~ THEN REPLY #61003 /* ~Braň se.~ */ DO ~ForceAttack(Protagonist,Myself)
~ EXIT
END

IF ~  RandomNum(2,2)
~ THEN BEGIN 18 // from:
  SAY #61004 /* ~Vidíš mechanickou postavu světle zelené barvy. Ačkoli je to očividně stroj, má živoucí tvář, kterou na tebe zamračeně kouká. ~ */
  IF ~~ THEN REPLY #61005 /* ~"Zdravím."~ */ GOTO 19
  IF ~~ THEN REPLY #61006 /* ~Ignoruj to stvoření.~ */ EXIT
END

IF ~~ THEN BEGIN 19 // from: 18.0
  SAY #61007 /* ~Stvoření se najednou přestalo mračit a nasadilo výraz hrané hrůzy. "Eeeek! Tohle je ten hrdina krerý sem byl poslán, aby bez bázně a hany zabil Zlého Čaroděje. Běda mi, nešťastnému to robotu, jež připletl se mu do cesty!"~ */
  IF ~~ THEN REPLY #61008 /* ~"O co se tu k čertu snažíš?"~ */ GOTO 20
  IF ~~ THEN REPLY #61009 /* ~"Kdo jsi?"~ */ GOTO 21
  IF ~~ THEN REPLY #61010 /* ~"Co jsi?"~ */ GOTO 23
  IF ~~ THEN REPLY #61011 /* ~"Co děláš?"~ */ GOTO 24
  IF ~~ THEN REPLY #61012 /* ~"Teď na tohle nemám čas, sbohem."~ */ GOTO 25
END

IF ~~ THEN BEGIN 20 // from: 19.0
  SAY #61013 /* ~Stvoření si dalo ruce v bok a zamračilo se na tebe. "Snažím se tě tímhle trikem zmást, ty troubo. Ale jak můžeš čekat, že budu hrát svou roli, když nebudeš spolupracovat? Kde jsme to..." Na chvilku se zamyslel. "Aha, už si vzpomínám. Chtěl jsem ti nařezat." Vyrazil do útoku.~ */
  IF ~~ THEN REPLY #61014 /* ~Braň se.~ */ DO ~ForceAttack(Protagonist,Myself)
~ EXIT
END

IF ~~ THEN BEGIN 21 // from: 19.1
  SAY #61015 /* ~Stvoření se na chvilku zamyslelo a pak silně pokrčilo rameny. "Tvá neštastná oběť?" Začíná se připravovat k útoku.~ */
  IF ~~ THEN REPLY #61016 /* ~"Ale tak to přece být nemusí?"~ */ GOTO 22
  IF ~~ THEN REPLY #61017 /* ~Zaútoč na něj.~ */ DO ~ForceAttack(Protagonist,Myself)
~ EXIT
END

IF ~~ THEN BEGIN 22 // from: 21.0
  SAY #61018 /* ~"Aha! Nemusí, ale je! Dostanu tě sketo!" Vyrazil do útoku.~ */
  IF ~~ THEN REPLY #61019 /* ~Braň se.~ */ DO ~ForceAttack(Protagonist,Myself)
~ EXIT
END

IF ~~ THEN BEGIN 23 // from: 19.2
  SAY #61020 /* ~"Jsem jeden z obyvatel těchto kobek a jsem stále připravený nakopat ti zadek!" Vyrazil do útoku.~ */
  IF ~~ THEN REPLY #61021 /* ~Braň se.~ */ DO ~ForceAttack(Protagonist,Myself)
~ EXIT
END

IF ~~ THEN BEGIN 24 // from: 19.3
  SAY #61022 /* ~Stvoření se k tobě naklonilo a začalo šeptat. "Momentálně se snažím hrát vystrašeného služebníka, který poprvé potkal takového hrdinu." Pak se odvrátil a začal volat ustrašeným hlasem. "Do zbraně, přátelé roboti, musíme zničit hrdinu!" Zaútočil na tebe.~ */
  IF ~~ THEN REPLY #61023 /* ~Braň se.~ */ DO ~ForceAttack(Protagonist,Myself)
~ EXIT
END

IF ~~ THEN BEGIN 25 // from: 19.4
  SAY #61024 /* ~Věnoval ti jeden zamračený, nicméně škodolibý pohled. "Tak to ne ty hade. Neunikneš záhubě která tu teď stojí před tebou. Když někdo zhřeší tak jako ty, musí za to zaplatit." Vyrazil do útoku.~ */
  IF ~~ THEN REPLY #61025 /* ~Braň se.~ */ DO ~ForceAttack(Protagonist,Myself)
~ EXIT
END
