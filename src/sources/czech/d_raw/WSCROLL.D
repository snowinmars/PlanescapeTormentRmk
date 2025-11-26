// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : WSCROLL.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\cs_CZ\dialog.tlk
// dialogF  : (none)

BEGIN ~WSCROLL~

IF ~  !Class(Protagonist,MAGE)
~ THEN BEGIN 0 // from:
  SAY #62359 /* ~Svitek je popsán tajuplnými runami, ale vůbec se v něm nevyznáš, nevíš co je vrch a co spodek. Snad nějaký kouzelník by je mohl rozluštit.~ */
  IF ~~ THEN REPLY #62360 /* ~Odlož svitek.~ */ EXIT
END

IF ~  CheckStatLT(Protagonist,18,INT)
~ THEN BEGIN 1 // from:
  SAY #62361 /* ~Pergamen je popsán magickými runami. Poctivě se snažíš je přečíst a jak tvé oči přejíždí po zářivých tazích znaků, zaplavuje tě energie. Bohužel, tvůj současný intelekt není dostačující k tomu, abys cele obsáhl zde popsané ideje.~ */
  IF ~~ THEN REPLY #62362 /* ~Odlož pergamen.~ */ EXIT
END

IF ~  ClassLevelLT(Protagonist,MAGE,12)
~ THEN BEGIN 2 // from:
  SAY #62363 /* ~Svitek je popsán magickými runami. Daří se ti je přečíst a jak tvé oči přejíždí po zářivých tazích znaků, zaplavuje tě energie společně s pocitem naléhavosti. Ano, již zcela jasně vidíš, že se jedná o pergamen 'Přání'... Bohužel, nedostává se ti dostatečného poznání, abys mohl se svitkem manipulovat dle vlastní libosti.~ */
  IF ~~ THEN REPLY #62364 /* ~Odlož svitek.~ */ EXIT
END

IF ~  True()
~ THEN BEGIN 3 // from:
  SAY #62365 /* ~Svitek je popsán magickými runami. Dokážeš je číst... a jak tvé oči přejíždí po zářivých tazích znaků, zaplavuje tě energie společně s pocitem naléhavosti. Ano, již zcela jasně vidíš, že se jedná o pergamen 'Přání'... Čeho si tedy žádáš?~ */
  IF ~~ THEN REPLY #62366 /* ~"Chci zlepšit své vlastnosti..."~ */ GOTO 4
  IF ~~ THEN REPLY #62367 /* ~"Rád bych získat mocný předmět..."~ */ DO ~GiveItemCreate("Wring",Protagonist,1,0,0)
DestroyPartyItem("Wscroll",TRUE)
~ GOTO 6
  IF ~~ THEN REPLY #62368 /* ~"Toužím po bohatství, abych nemusel při nákupu kontrolovat stav financí..."~ */ DO ~GiveGoldForce(10000)
DestroyPartyItem("Wscroll",TRUE)
~ GOTO 7
  IF ~  False()
~ THEN REPLY #62369 /* ~"Přeji si vědomosti a poznání, to jest zřídlo opravdové moci..."~ */ DO ~PermanentStatChange(Protagonist,LEVEL,RAISE,1)
DestroyPartyItem("Wscroll",TRUE)
~ GOTO 8
  IF ~~ THEN REPLY #62370 /* ~"Toužím zcela ozdravit sebe i svůj doprovod..."~ */ DO ~FullHeal(Player1)
FullHeal(Player2)
FullHeal(Player3)
FullHeal(Player4)
FullHeal(Player5)
FullHeal(Player6)
FadeToColor([20.0],0)
Wait(3)
FadeFromColor([20.0],0)
DestroyPartyItem("Wscroll",TRUE)
~ GOTO 9
  IF ~~ THEN REPLY #62371 /* ~"Mám přání odhalit tajuplné prastaré vědomosti a díky nim získat moc..."~ */ DO ~GiveItemCreate("SPWI705",Protagonist,1,1,0)
GiveItemCreate("SPWI802",Protagonist,1,1,0)
GiveItemCreate("SPWI909",Protagonist,1,1,0)
DestroyPartyItem("Wscroll",TRUE)
~ GOTO 10
  IF ~~ THEN REPLY #62372 /* ~Odlož pergamen.~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 3.0
  SAY #62373 /* ~Runy počaly pulsovat, vyzařuje z nich síla. Ve tvé mysli se zformoval obraz tebe samého, obraz, jež můžeš podle svých představ modelovat... Tak který rys si přeješ vylepšit?~ */
  IF ~~ THEN REPLY #62374 /* ~Sílu.~ */ DO ~DestroyPartyItem("Wscroll",TRUE)
PermanentStatChange(Protagonist,STR,RAISE,2)
~ GOTO 5
  IF ~~ THEN REPLY #62375 /* ~Inteligenci.~ */ DO ~DestroyPartyItem("Wscroll",TRUE)
PermanentStatChange(Protagonist,INT,RAISE,2)
~ GOTO 5
  IF ~~ THEN REPLY #62376 /* ~Moudrost.~ */ DO ~DestroyPartyItem("Wscroll",TRUE)
PermanentStatChange(Protagonist,WIS,RAISE,2)
~ GOTO 5
  IF ~~ THEN REPLY #62377 /* ~Mrštnost.~ */ DO ~DestroyPartyItem("Wscroll",TRUE)
PermanentStatChange(Protagonist,DEX,RAISE,2)
~ GOTO 5
  IF ~~ THEN REPLY #62378 /* ~Odolnost.~ */ DO ~DestroyPartyItem("Wscroll",TRUE)
PermanentStatChange(Protagonist,CON,RAISE,2)
~ GOTO 5
  IF ~~ THEN REPLY #62379 /* ~Charismat.~ */ DO ~DestroyPartyItem("Wscroll",TRUE)
PermanentStatChange(Protagonist,CHR,RAISE,2)
~ GOTO 5
  IF ~~ THEN REPLY #62380 /* ~Odlož svitek.~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 4.0 4.1 4.2 4.3 4.4 4.5
  SAY #62381 /* ~Vytvořil jsi ve své mysli dva obrazy sama sebe - jeden reflektující současný stav a druhý takový, jaký bys chtěl být. Moc svitku vnikla do tvého těla, proudí ti žilami a přinutila realitu přijmout a přiklonit se k upravené variantě tebe samého. Svitek samotný byl při erupci energie zničen.~ */
  IF ~~ THEN REPLY #62382 /* ~Hotovo.~ */ EXIT
END

IF ~~ THEN BEGIN 6 // from: 3.1
  SAY #62383 /* ~Replika tebe samého ve tvé vizi pevně zaťala pěst. Svíráš sílu, která na sebe vzala podobu předmětu, jež má zlepšit tvé vlastnosti. Moc svitku vnikla do tvého těla, proudí tvými žilami a přinutila realitu přijmout a přiklonit se ke tvé představě. Svitek samotný byl při erupci energie zničen.~ */
  IF ~~ THEN REPLY #62384 /* ~Hotovo.~ */ EXIT
END

IF ~~ THEN BEGIN 7 // from: 3.2
  SAY #62385 /* ~Vytvořil jsi ve své mysli obraz sama sebe topícího se v bohatství, jmění hodno krále ti leží u nohou. Moc svitku vnikla do tvého těla, proudí ti žilami a donutila realitu přijmout a přiklonit se ke tvé představě. Svitek samotný byl při erupci energie zničen.~ */
  IF ~~ THEN REPLY #62386 /* ~Hotovo.~ */ EXIT
END

IF ~~ THEN BEGIN 8 // from: 3.3
  SAY #62387 /* ~Na repliku tebe samého se ve tvé vizi valí hromada dojmů a zážitků. Ačkoliv téměř nejsi schopen rozlišit jednotlivé události, přesto v tobě něco zanechávají. Moc svitku vnikla do tvého těla, koluje ve tvých žilami a nutí realitu přijmout a přiklonit se ke tvé představě. Svitek samotný byl po výsledné erupci energie zničen.~ */
  IF ~~ THEN REPLY #62388 /* ~Hotovo.~ */ EXIT
END

IF ~~ THEN BEGIN 9 // from: 3.4
  SAY #62389 /* ~Ve své vizi jste ty včetně tvého doprovodu utrpěli těžká zranění v rozsáhlé bitvě. Zčistajasna se rány začaly hojit a zavírat, všem se navrací zdraví. Moc svitku vnikla do tvého těla, proudí ti žilami a donutila realitu přijmout a přiklonit se ke tvé představě. Svitek samotný byl při erupci energie zničen.~ */
  IF ~~ THEN REPLY #62390 /* ~Hotovo.~ */ EXIT
END

IF ~~ THEN BEGIN 10 // from: 3.5
  SAY #62391 /* ~Vytvořil jsi ve své mysli obraz sama sebe procházejícího se prastarou knihovnou patřící slovutnému arcimágovi. Vybral sis několik slibných pergamenů... Moc svitku vnikla do tvého těla, proudí ti žilami a donutila realitu přijmout a přiklonit se ke tvé představě. Svitek samotný byl při erupci energie zničen.~ */
  IF ~~ THEN REPLY #62392 /* ~Hotovo.~ */ EXIT
END
