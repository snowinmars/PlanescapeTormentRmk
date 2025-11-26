// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DC_WHORE.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\pl_PL\dialog.tlk
// dialogF  : (none)

BEGIN ~DC_WHORE~

IF ~  True()
~ THEN BEGIN 0 // from:
  SAY #67953 /* ~Tandetnie, a przy tym skąpo odziana niewiasta uśmiecha się na twój widok zachęcająco i znacząco nawija na palec ramiączko od biustonosza. "Dwadzieścia miedziaków, śmiałku i jestem twoja..."~ */
  IF ~~ THEN REPLY #67958 /* ~"Właściwie to mam kilka pytań..."~ */ GOTO 1
  IF ~  PartyGoldGT(19)
~ THEN REPLY #67959 /* ~"Cena wydaje się być rozsądna. Oto i pieniądze."~ */ DO ~TakePartyGold(20)
FadeToColor([20.0],0)
Wait(2)
FadeFromColor([20.0],0)
~ GOTO 4
  IF ~  PartyGoldGT(19)
~ THEN REPLY #67960 /* ~"Ech... I tak tutaj przy nich wszystkich?"~ */ GOTO 2
  IF ~~ THEN REPLY #67961 /* ~"Nie, dziękuję. Bywaj zdrowa."~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0 2.1
  SAY #67954 /* ~Dziewczyna wzdycha i zaprzestaje swojej zabawy z ramiączkiem biustonosza. "Nie. Wybacz, ale to wykluczone."~ */
  IF ~~ THEN REPLY #67962 /* ~"Powiedz mi przynajmniej, czemu ten strażnik u drzwi tak dziwnie się zachowuje?"~ */ GOTO 3
  IF ~  PartyGoldGT(19)
~ THEN REPLY #67963 /* ~"No nic... To może wrócimy do tej sprawy wspólnej rozrywki za jedyne dwadzieścia miedziaków?~ */ DO ~TakePartyGold(20)
FadeToColor([20.0],0)
Wait(2)
FadeFromColor([20.0],0)
~ GOTO 4
  IF ~~ THEN REPLY #67964 /* ~"Rozumiem... Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 0.2 3.1
  SAY #67955 /* ~"Czemu nie?" Dziewczyna uśmiecha się lubieżnie i zabawia się teraz zalotnie własną fryzurą. "Jeżeli zabawa będzie przednia, może się do nas przyłączą?" Dziewczyna puszcza do ciebie oko i daje ci znaki, abyś się do niej przybliżył.~ */
  IF ~  PartyGoldGT(19)
~ THEN REPLY #67965 /* ~"Masz rację... Czemu nie? Oto i pieniądze..."~ */ DO ~TakePartyGold(20)
FadeToColor([20.0],0)
Wait(2)
FadeFromColor([20.0],0)
~ GOTO 4
  IF ~~ THEN REPLY #67966 /* ~"Właściwie to chciałem tylko zadać kilka pytań..."~ */ GOTO 1
  IF ~~ THEN REPLY #67967 /* ~"Nie, dziękuję. Bywaj zdrowa."~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 1.0
  SAY #67956 /* ~"Ach, on?" Dziewczyna rzuca okiem na krzepkiego strażnika, stojącego w drzwiach plecami do was i zajętego baczną obserwacją holu. "Po prostu razem z przyjaciółkami sypnęłam mu nieco brzdęku, żeby nas strzegł. To wszystko. A co? Denerwuje cię jego obecność? Nie zwracaj na niego uwagi. On nie będzie nas podglądał. Chodź do mnie..." Dziewczyna wyciąga do ciebie ramiona.~ */
  IF ~  PartyGoldGT(19)
~ THEN REPLY #67968 /* ~"Czemu nie? Oto i pieniądze..."~ */ DO ~TakePartyGold(20)
FadeToColor([20.0],0)
Wait(2)
FadeFromColor([20.0],0)
~ EXIT
  IF ~  PartyGoldGT(19)
~ THEN REPLY #67969 /* ~"Ech... I tak tutaj przy nich wszystkich?"~ */ GOTO 2
  IF ~~ THEN REPLY #67970 /* ~"Nie, dziękuję. Bywaj zdrowa."~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 0.1 1.1 2.0
  SAY #67957 /* ~Kończysz tę obskurną schadzkę, ubierasz się i zbierasz swoje manatki.

"Mmm, niełatwo cię zmęczyć, co? Cóż, idź zatem. Ale powróć do mnie, ilekroć przyjdzie ci na to ochota. Żegnaj."~ */
  IF ~~ THEN REPLY #67971 /* ~"Możliwe, że się jeszcze zobaczymy. Póki co, bywaj zdrowa."~ */ EXIT
  IF ~~ THEN REPLY #67972 /* ~Odejdź.~ */ EXIT
END
