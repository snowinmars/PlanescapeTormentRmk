// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DNODD.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\pl_PL\dialog.tlk
// dialogF  : (none)

BEGIN ~DNODD~
//////////////////////////////////////////////////
// WARNING: this file contains non-trivial WEIGHTs
//////////////////////////////////////////////////

IF WEIGHT #2 /* Triggers after states #: 1 38 even though they appear after this state */
~  NumTimesTalkedTo(0)
~ THEN BEGIN 0 // from:
  SAY #2810 /* ~Kiedy podchodzisz do tego zakapturzonego człowieka w brązowych szatach, zauważasz, że coś do siebie mamrocze, a od czasu do czasu potakuje głową.~ */
  IF ~~ THEN REPLY #22473 /* ~"Witaj..."~ */ GOTO 1
  IF ~~ THEN REPLY #22475 /* ~Zostaw go w spokoju.~ */ DO ~SetNumTimesTalkedTo(0)
~ EXIT
END

IF WEIGHT #1 /* Triggers after states #: 38 even though they appear after this state */
~  NumTimesTalkedToGT(0)
~ THEN BEGIN 1 // from: 0.0
  SAY #21938 /* ~"Ktoś przychodzi pogadać ze Zgodnym, co...?" Nagle wybucha suchym kaszlem, a potem kiwa do siebie głową.~ */
  IF ~  Global("Nodd_Quest","GLOBAL",4)
~ THEN REPLY #22477 /* ~"Rozmawiałem z twoją siostrą, Amarissą..."~ */ GOTO 28
  IF ~  Global("Nodd_Quest","GLOBAL",6)
~ THEN REPLY #22489 /* ~"Rozmawiałem z twoją siostrą, Amarissą..."~ */ GOTO 28
  IF ~  Global("Nodd_Quest","GLOBAL",5)
~ THEN REPLY #22490 /* ~"Rozmawiałem z twoją siostrą, Amarissą..."~ */ GOTO 29
  IF ~  Global("Nodd_Quest","GLOBAL",7)
~ THEN REPLY #22491 /* ~"Rozmawiałem z twoją siostrą, Amarissą..."~ */ GOTO 29
  IF ~~ THEN REPLY #22492 /* ~"Co robisz?"~ */ GOTO 2
  IF ~~ THEN REPLY #22493 /* ~"Co to za miejsce?"~ */ GOTO 6
  IF ~~ THEN REPLY #22494 /* ~"Mam kilka pytań..."~ */ GOTO 7
  IF ~~ THEN REPLY #22495 /* ~"Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.4 6.0
  SAY #21939 /* ~"Nic. Tylko se szukam truposzów. Nic innego." Pociąga nosem, a potem znowu nachodzi go suchy kaszel. Przez chwilę mruczy coś do siebie, po czym odzywa się. "Nic innego. Potrzebujem brzdenku. Brzdenk-brzdenk."~ */
  IF ~~ THEN REPLY #22496 /* ~"Truposzów?"~ */ GOTO 3
  IF ~~ THEN REPLY #22497 /* ~"Dlaczego szukasz trupów?"~ */ GOTO 4
  IF ~~ THEN REPLY #22498 /* ~"Co to za miejsce?"~ */ GOTO 6
  IF ~~ THEN REPLY #22499 /* ~"Mam kilka pytań..."~ */ GOTO 7
  IF ~  Global("Nodd_Quest","GLOBAL",0)
~ THEN REPLY #22500 /* ~"Nie mam już więcej pytań. Żegnaj."~ */ GOTO 17
  IF ~  GlobalGT("Nodd_Quest","GLOBAL",0)
~ THEN REPLY #22501 /* ~"Nie mam już więcej pytań. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 2.0
  SAY #21940 /* ~Mężczyzna przytakuje. "Trupo-szów. Potem bedem ich mógł sprzedać Grabarzom."~ */
  IF ~~ THEN REPLY #22502 /* ~"Sprzedajesz ciała umarłych?"~ */ GOTO 4
  IF ~~ THEN REPLY #22503 /* ~"Co to za miejsce?"~ */ GOTO 6
  IF ~~ THEN REPLY #22504 /* ~"Mam kilka pytań..."~ */ GOTO 7
  IF ~  Global("Nodd_Quest","GLOBAL",0)
~ THEN REPLY #22505 /* ~"Nie mam już więcej pytań. Żegnaj."~ */ GOTO 17
  IF ~  GlobalGT("Nodd_Quest","GLOBAL",0)
~ THEN REPLY #22506 /* ~"Nie mam już więcej pytań. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 2.1 3.0
  SAY #21941 /* ~Mężczyzna zaczyna kiwać kłową wcale na ciebie nie patrząc. "Zaciongam ich do czarnego miejsca, Kustnicy." Przekrzywia głowę tam i z powrotem, a potem jeszcze raz przytakuje. "Tam Grabarze targujom sie i dajom brzdenk - a potem biorom do środka truposzy. Zgodny nie gada z nimi, aż bedzie miał następnego umarlaka." Zgodny pociąga nosem, a potem wyciera go ręką.~ */
  IF ~~ THEN REPLY #22507 /* ~"Dlaczego oni płacą za ciała?"~ */ GOTO 5
  IF ~~ THEN REPLY #22508 /* ~"Co to za miejsce?"~ */ GOTO 6
  IF ~~ THEN REPLY #22509 /* ~"Mam kilka pytań..."~ */ GOTO 7
  IF ~  Global("Nodd_Quest","GLOBAL",0)
~ THEN REPLY #22510 /* ~"Nie mam już więcej pytań. Żegnaj."~ */ GOTO 17
  IF ~  GlobalGT("Nodd_Quest","GLOBAL",0)
~ THEN REPLY #22511 /* ~"Nie mam już więcej pytań. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 4.0
  SAY #21942 /* ~Mężczyzna wzrusza ramionami. "Bez znaczenia, bez znaczenia." Uśmiecha się, a potem przytakuje głową i dodaje tonem mędrca. "Brzdenk dla mnie, brzdenk-brzdenk."~ */
  IF ~~ THEN REPLY #22512 /* ~"Co to za miejsce?"~ */ GOTO 6
  IF ~~ THEN REPLY #22514 /* ~"Mam kilka pytań..."~ */ GOTO 7
  IF ~  Global("Nodd_Quest","GLOBAL",0)
~ THEN REPLY #22515 /* ~"Nie mam już więcej pytań. Żegnaj."~ */ GOTO 17
  IF ~  GlobalGT("Nodd_Quest","GLOBAL",0)
~ THEN REPLY #22516 /* ~"Nie mam już więcej pytań. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 6 // from: 1.5 2.2 3.1 4.1 5.0
  SAY #21950 /* ~Zgodny marszczy brwi i oblizuje sobie wargi. "Plac Szmaciarzy, tak, plac, wszędzie śmieci, no wszędzie." Znowu zaczyna kaszleć.~ */
  IF ~~ THEN REPLY #22517 /* ~"Co robisz?"~ */ GOTO 2
  IF ~~ THEN REPLY #22518 /* ~"Mam kilka pytań..."~ */ GOTO 7
  IF ~  Global("Nodd_Quest","GLOBAL",0)
~ THEN REPLY #22519 /* ~"Nie mam już więcej pytań. Żegnaj."~ */ GOTO 17
  IF ~  GlobalGT("Nodd_Quest","GLOBAL",0)
~ THEN REPLY #22520 /* ~"Nie mam już więcej pytań. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 7 // from: 1.6 2.3 3.2 4.2 5.1 6.1
  SAY #21952 /* ~Mężczyzna przytakuje. "Co?" Pociąga nosem, a potem patrzy się na ciebie z ukosa. "Brzdenk." Uderza się w głowę, wskazuje na ciebie, a potem na swoją rękę. "Chcesz sie coś dowiedzieć - brzdenk. No, brzdenk-brzdenk."~ */
  IF ~  PartyGoldGT(2)
~ THEN REPLY #22521 /* ~Wręcz mu trochę monet.~ */ DO ~TakePartyGold(2)
~ GOTO 8
  IF ~  PartyGoldGT(4)
~ THEN REPLY #22522 /* ~Rzuć mu pięć miedziaków.~ */ DO ~TakePartyGold(5)
~ GOTO 8
  IF ~  PartyGoldGT(9)
~ THEN REPLY #22523 /* ~Daj mu dziesięć miedziaków.~ */ DO ~TakePartyGold(10)
~ GOTO 8
  IF ~~ THEN REPLY #22524 /* ~"Nic nie dostaniesz, a i tak odpowiesz mi na pytania."~ */ GOTO 15
  IF ~~ THEN REPLY #22525 /* ~"W takim razie mniejsza z tym. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 8 // from: 7.0 7.1 7.2
  SAY #21953 /* ~"Brzdenk dla Zgodnego, brzdenk-brzdenk." Mamrocze coś pod nosem, chowając miedziaki między fałdami swojego ubrania. "Pytaj, Zgodny bedzie próbował odpowiedzieć." Kaszle lekko, po czym wypluwa coś na bok.~ */
  IF ~~ THEN REPLY #22526 /* ~"Opowiedz mi o Zbieraczach."~ */ GOTO 9
  IF ~~ THEN REPLY #22527 /* ~"Opowiedz mi o tej okolicy."~ */ GOTO 10
  IF ~  Global("Pharod","GLOBAL",0)
~ THEN REPLY #22528 /* ~"Czy znasz człowieka o nazwisku Farod?"~ */ GOTO 11
  IF ~  Global("Journal","GLOBAL",0)
~ THEN REPLY #22529 /* ~"Szukam dziennika, który mi zaginął."~ */ GOTO 13
  IF ~  GlobalGT("Mebbeth","GLOBAL",0)
~ THEN REPLY #22530 /* ~"Opowiedz mi o Mebbet."~ */ GOTO 14
  IF ~  Global("Nodd_Quest","GLOBAL",0)
~ THEN REPLY #22531 /* ~"Mniejsza z tym. Żegnaj."~ */ GOTO 17
  IF ~  GlobalGT("Nodd_Quest","GLOBAL",0)
~ THEN REPLY #22532 /* ~"Mniejsza z tym. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 9 // from: 8.0 10.1 11.1 12.0 13.0 14.0 15.0 16.0
  SAY #21955 /* ~"Ja. Ja?" Przez moment wydaje się być niepewny, a potem kiwa potakująco głową. "Ja. Zbieram truposzy, zabieram ich do Grabarzy... Grabarze płacą, brzdenk za trupa, trup jest tam, gdzie powinien. Trup zadowolony. Grabarze zadowoleni. Zgodny zadowolony, bo ma świecący brzdenk."~ */
  IF ~~ THEN REPLY #22533 /* ~"Opowiedz mi o tej okolicy."~ */ GOTO 10
  IF ~  Global("Pharod","GLOBAL",0)
~ THEN REPLY #22534 /* ~"Czy znasz człowieka o nazwisku Farod?"~ */ GOTO 11
  IF ~  Global("Journal","GLOBAL",0)
~ THEN REPLY #22535 /* ~"Szukam dziennika, który mi zaginął."~ */ GOTO 13
  IF ~  GlobalGT("Mebbeth","GLOBAL",0)
~ THEN REPLY #22536 /* ~"Opowiedz mi o Mebbet."~ */ GOTO 14
  IF ~  Global("Nodd_Quest","GLOBAL",0)
~ THEN REPLY #22537 /* ~"Nie mam już więcej pytań. Żegnaj."~ */ GOTO 17
  IF ~  GlobalGT("Nodd_Quest","GLOBAL",0)
~ THEN REPLY #22538 /* ~"Nie mam już więcej pytań. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 10 // from: 8.1 9.0 11.2 12.1 13.1 14.1 15.1
  SAY #21957 /* ~Wskazuje na ziemię potakując. "Plac, Plac Szmaciarzy, tak, wszędzie śmieci, plac Współgrobca." Przez chwilę coś do siebie mruczy.~ */
  IF ~~ THEN REPLY #22539 /* ~"Opowiedz mi o Współgrobcu."~ */ GOTO 16
  IF ~~ THEN REPLY #22540 /* ~"Opowiedz mi o Zbieraczach."~ */ GOTO 9
  IF ~  Global("Pharod","GLOBAL",0)
~ THEN REPLY #22579 /* ~"Czy znasz człowieka o nazwisku Farod?"~ */ GOTO 11
  IF ~  Global("Journal","GLOBAL",0)
~ THEN REPLY #22581 /* ~"Szukam dziennika, który mi zaginął."~ */ GOTO 13
  IF ~  GlobalGT("Mebbeth","GLOBAL",0)
~ THEN REPLY #22582 /* ~"Opowiedz mi o Mebbet."~ */ GOTO 14
  IF ~  Global("Nodd_Quest","GLOBAL",0)
~ THEN REPLY #22584 /* ~"Nie mam już więcej pytań. Żegnaj."~ */ GOTO 17
  IF ~  GlobalGT("Nodd_Quest","GLOBAL",0)
~ THEN REPLY #22586 /* ~"Nie mam już więcej pytań. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 11 // from: 8.2 9.1 10.2 13.2 14.2 15.2 16.1
  SAY #22381 /* ~Zgodny wygląda na przestraszonego, zaczyna kręcić przecząco głową. "Farod, Farod, Farod..." Drapie się po głowie. "Co? Co z nim?" Marszczy brwi, potem kiwa głową, jakby nie był pewien, czy powinien z tobą rozmawiać.~ */
  IF ~~ THEN REPLY #22588 /* ~"Czy wiesz, gdzie mogę go znaleźć?"~ */ GOTO 12
  IF ~~ THEN REPLY #22589 /* ~"Opowiedz mi o Zbieraczach."~ */ GOTO 9
  IF ~~ THEN REPLY #22590 /* ~"Opowiedz mi o tej okolicy."~ */ GOTO 10
  IF ~  Global("Journal","GLOBAL",0)
~ THEN REPLY #22592 /* ~"Szukam dziennika, który mi zaginął."~ */ GOTO 13
  IF ~  GlobalGT("Mebbeth","GLOBAL",0)
~ THEN REPLY #22593 /* ~"Opowiedz mi o Mebbet."~ */ GOTO 14
  IF ~  Global("Nodd_Quest","GLOBAL",0)
~ THEN REPLY #22594 /* ~"Nie mam już więcej pytań. Żegnaj."~ */ GOTO 17
  IF ~  GlobalGT("Nodd_Quest","GLOBAL",0)
~ THEN REPLY #22595 /* ~"Nie mam już więcej pytań. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 12 // from: 11.0
  SAY #22384 /* ~Kręci przecząco głową, potem zaczyna coś mamrotać. Szybko rzuca na ciebie wzrokiem, a potem znowu coś do siebie mruczy. Brzmi to tak, jak gdyby mówił modlitwę, która ma go ochronić przed złem. "Nnnn-nie *tutaj*. Na Placu..." Marszczy czoło, jakby nie wiedział, jak to wyjaśnić. "...ale nie na Placu." Jeszcze raz kręci głową, a potem zaczyna kaszleć.~ */
  IF ~~ THEN REPLY #22596 /* ~"Opowiedz mi o Zbieraczach."~ */ GOTO 9
  IF ~~ THEN REPLY #22597 /* ~"Co wiesz o tej okolicy."~ */ GOTO 10
  IF ~  Global("Journal","GLOBAL",0)
~ THEN REPLY #22598 /* ~"Szukam dziennika, który mi zaginął."~ */ GOTO 13
  IF ~  GlobalGT("Mebbeth","GLOBAL",0)
~ THEN REPLY #22599 /* ~"Opowiedz mi o Mebbet."~ */ GOTO 14
  IF ~  Global("Nodd_Quest","GLOBAL",0)
~ THEN REPLY #22600 /* ~"Nie mam już więcej pytań. Żegnaj."~ */ GOTO 17
  IF ~  GlobalGT("Nodd_Quest","GLOBAL",0)
~ THEN REPLY #22601 /* ~"Nie mam już więcej pytań. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 13 // from: 8.3 9.2 10.3 11.3 12.2 14.3 15.3 16.2
  SAY #22387 /* ~"Nie, nie, nie." Zdecydowanie kręci głową. "Żadnego dzin-nika." Pociąga nosem, a potem wyciera go rękawem.~ */
  IF ~~ THEN REPLY #22602 /* ~"Opowiedz mi o Zbieraczach."~ */ GOTO 9
  IF ~~ THEN REPLY #22603 /* ~"Co wiesz o tej okolicy."~ */ GOTO 10
  IF ~  Global("Pharod","GLOBAL",0)
~ THEN REPLY #22604 /* ~"Czy znasz człowieka o imieniu Farod?"~ */ GOTO 11
  IF ~  GlobalGT("Mebbeth","GLOBAL",0)
~ THEN REPLY #22605 /* ~"Opowiedz mi o Mebbet."~ */ GOTO 14
  IF ~  Global("Nodd_Quest","GLOBAL",0)
~ THEN REPLY #22606 /* ~"Nie mam już więcej pytań. Żegnaj."~ */ GOTO 17
  IF ~  GlobalGT("Nodd_Quest","GLOBAL",0)
~ THEN REPLY #22607 /* ~"Nie mam już więcej pytań. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 14 // from: 8.4 9.3 10.4 11.4 12.3 13.3 15.4 16.3
  SAY #22389 /* ~"Znachorka... nie leczy klątw, ona... pomaga przy dzieciakach." Zgodny marszczy nos. "Jej dom - u góry, na platformach - strasznie śmierdzi."~ */
  IF ~~ THEN REPLY #22608 /* ~"Opowiedz mi o Zbieraczach."~ */ GOTO 9
  IF ~~ THEN REPLY #22609 /* ~"Opowiedz mi o tej okolicy."~ */ GOTO 10
  IF ~  Global("Pharod","GLOBAL",0)
~ THEN REPLY #22610 /* ~"Czy znasz człowieka o imieniu Farod?"~ */ GOTO 11
  IF ~  Global("Journal","GLOBAL",0)
~ THEN REPLY #22611 /* ~"Szukam dziennika, który mi zaginął."~ */ GOTO 13
  IF ~  Global("Nodd_Quest","GLOBAL",0)
~ THEN REPLY #22612 /* ~"Nie mam już więcej pytań. Żegnaj."~ */ GOTO 17
  IF ~  GlobalGT("Nodd_Quest","GLOBAL",0)
~ THEN REPLY #22613 /* ~"Nie mam już więcej pytań. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 15 // from: 7.3
  SAY #22392 /* ~Zaczyna kręcić przecząco głową, potem coś do siebie mruczy. Wygląda na to, że jest przestraszony i nie wie, co robić.~ */
  IF ~~ THEN REPLY #22614 /* ~"Opowiedz mi o Zbieraczach."~ */ GOTO 9
  IF ~~ THEN REPLY #22615 /* ~"Opowiedz mi o tej okolicy."~ */ GOTO 10
  IF ~  Global("Pharod","GLOBAL",0)
~ THEN REPLY #22616 /* ~"Czy znasz człowieka o imieniu Farod?"~ */ GOTO 11
  IF ~  Global("Journal","GLOBAL",0)
~ THEN REPLY #22617 /* ~"Szukam dziennika, który mi zaginął."~ */ GOTO 13
  IF ~  GlobalGT("Mebbeth","GLOBAL",0)
~ THEN REPLY #22618 /* ~"Opowiedz mi o Mebbet."~ */ GOTO 14
  IF ~  Global("Nodd_Quest","GLOBAL",0)
~ THEN REPLY #22619 /* ~"Nie mam już więcej pytań. Żegnaj."~ */ GOTO 17
  IF ~  GlobalGT("Nodd_Quest","GLOBAL",0)
~ THEN REPLY #22620 /* ~"Nie mam już więcej pytań. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 16 // from: 10.0
  SAY #22394 /* ~"Cień Współgrobca długi, pada na Zgodnego, no, pada. Zgodny daje troche brzdenkuu Współgrobcowi, a Współgrobiec mówi innym w jego cieniu: uważajcie na Zgodnego." Mężczyzna pociąga nosem i powoli kiwa głową.~ */
  IF ~~ THEN REPLY #22621 /* ~"Opowiedz mi o Zbieraczach."~ */ GOTO 9
  IF ~  Global("Pharod","GLOBAL",0)
~ THEN REPLY #22622 /* ~"Czy znasz człowieka o imieniu Farod?"~ */ GOTO 11
  IF ~  Global("Journal","GLOBAL",0)
~ THEN REPLY #22623 /* ~"Szukam dziennika, który mi zaginął."~ */ GOTO 13
  IF ~  GlobalGT("Mebbeth","GLOBAL",0)
~ THEN REPLY #22624 /* ~"Opowiedz mi o Mebbet."~ */ GOTO 14
  IF ~  Global("Nodd_Quest","GLOBAL",0)
~ THEN REPLY #22625 /* ~"Nie mam już więcej pytań. Żegnaj."~ */ GOTO 17
  IF ~  GlobalGT("Nodd_Quest","GLOBAL",0)
~ THEN REPLY #22626 /* ~"Nie mam już więcej pytań. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 17 // from: 2.4 3.3 4.3 5.2 6.2 8.5 9.4 10.5 11.5 12.4 13.4 14.4 15.5 16.4
  SAY #22396 /* ~"Ee... ee..." Kręci przecząco głową, kaszle, a potem znowu zaczyna potakiwać. "Ty spytasz Zgodnego, Zgodny spyta... ciebie..."~ */
  IF ~~ THEN REPLY #22627 /* ~"No dalej, pytaj."~ */ GOTO 18
  IF ~~ THEN REPLY #22628 /* ~Zignoruj go, obróć się i odejdź.~ */ EXIT
END

IF ~~ THEN BEGIN 18 // from: 17.0
  SAY #22398 /* ~"Zgodny ma siostrę, Amarissę. Ona mieszka w Ulu, daleko stąd, daleko od Placu. Tak długo, tak długo Zgodny nie mógł się z nią spotkać, bo ją zabrano..."~ */
  IF ~  CheckStatGT(Protagonist,14,INT)
~ THEN REPLY #22629 /* ~"Zostaliście rozłączeni i chciałbyś ją odszukać?"~ */ DO ~SetGlobal("Nodd_Quest","GLOBAL",1)
~ JOURNAL #22281 /* ~Zbieracz o imieniu Nodd poprosił mnie, bym znalazł jego siostrę Amarissę i porozmawiał z nią w jego imieniu. Opisał ją jako młodą, atrakcyjną kobietę, która mieszka gdzieś w Ulu.~ */ GOTO 19
  IF ~~ THEN REPLY #22630 /* ~"Więc o co chciałeś się spytać...?"~ */ DO ~SetGlobal("Nodd_Quest","GLOBAL",1)
~ JOURNAL #22281 /* ~Zbieracz o imieniu Nodd poprosił mnie, bym znalazł jego siostrę Amarissę i porozmawiał z nią w jego imieniu. Opisał ją jako młodą, atrakcyjną kobietę, która mieszka gdzieś w Ulu.~ */ GOTO 19
  IF ~~ THEN REPLY #22631 /* ~"Ciekawe. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 19 // from: 18.0 18.1
  SAY #22415 /* ~"Znasz jom może?" Przez chwilę smutno kiwa głową przygryzając dolną wargę. "Jak ją zobaczysz, powiedz jej, że Zgodny, jej braciak, martwi się o nią, oj, martwi się."~ */
  IF ~~ THEN REPLY #22637 /* ~"Dlaczego jej nie poszukasz?"~ */ GOTO 20
  IF ~~ THEN REPLY #22638 /* ~"Rozumiem. Zrobię to dla ciebie."~ */ DO ~SetGlobal("Nodd_Quest","GLOBAL",2)
IncrementGlobalOnceEx("GLOBALGood_Nodd_1","GLOBALGood",1)
~ GOTO 25
  IF ~~ THEN REPLY #22639 /* ~"Znajdę ją... ale nie za darmo."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Nodd_1","GLOBALGood",-1)
~ GOTO 26
  IF ~~ THEN REPLY #22640 /* ~"Pomyślę o tym. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 20 // from: 19.0
  SAY #22417 /* ~"NIE!" Zgodny obejmuje się za głowę, mrucząc do siebie. "Zgodny... Zgodny nie bedzie nic więcej gadał, nie może, i czuje ciała i bród Placu, Placu Szmaciarzy... NIE!" Ten wybuch powoduje, że znowu nachodzi go atak kaszlu.~ */
  IF ~~ THEN REPLY #22641 /* ~"Co ci się stało?"~ */ GOTO 21
  IF ~~ THEN REPLY #22642 /* ~"Dobrze. Znajdę ją dla ciebie."~ */ DO ~SetGlobal("Nodd_Quest","GLOBAL",2)
IncrementGlobalOnceEx("GLOBALGood_Nodd_1","GLOBALGood",1)
~ GOTO 25
  IF ~~ THEN REPLY #22643 /* ~"Znajdę ją... ale nie za darmo."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Nodd_1","GLOBALGood",-1)
~ GOTO 26
  IF ~~ THEN REPLY #22644 /* ~"Pomyślę o tym. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 21 // from: 20.0
  SAY #22421 /* ~Zgodny pociąga nosem, smutno spoglądając na ziemię. W końcu zaczyna kiwać głową i mówi cicho: "Jak Zgodny był młody, oj, był, to zaczął słyszeć głosy, co mówiły mu 'Zgodny, zrób to! zrób tamto!' Złe rzeczy, złe, jak gryzienie palców Zgodnego..." Podnosi ręce do twarzy, a ty możesz rozróżnić stare blizny od ugryzień wystające spod brudu.~ */
  IF ~~ THEN REPLY #22645 /* ~"Mów dalej..."~ */ GOTO 23
  IF ~~ THEN REPLY #22647 /* ~"Dobrze. Znajdę dla ciebie twoją siostrę."~ */ DO ~SetGlobal("Nodd_Quest","GLOBAL",2)
IncrementGlobalOnceEx("GLOBALGood_Nodd_1","GLOBALGood",1)
~ GOTO 25
  IF ~~ THEN REPLY #22648 /* ~"Znajdę twoją siostrę... ale nie za darmo."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Nodd_1","GLOBALGood",-1)
~ GOTO 26
  IF ~~ THEN REPLY #22649 /* ~"Ciekawe. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 22 // from: 23.0
  SAY #22425 /* ~"Nie wim, nie wim. Złe miejsce, złe!" Zaciekle trzęsie głową trzymając się za skronie, a potem zaczyna nią kiwać.~ */
  IF ~~ THEN REPLY #22650 /* ~"Co było dalej..."~ */ GOTO 24
  IF ~~ THEN REPLY #22669 /* ~"Dobrze. Znajdę dla ciebie twoją siostrę."~ */ DO ~SetGlobal("Nodd_Quest","GLOBAL",2)
IncrementGlobalOnceEx("GLOBALGood_Nodd_1","GLOBALGood",1)
~ GOTO 25
  IF ~~ THEN REPLY #22671 /* ~"Znajdę twoją siostrę... ale nie za darmo."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Nodd_1","GLOBALGood",-1)
~ GOTO 26
  IF ~~ THEN REPLY #22674 /* ~"Ciekawe. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 23 // from: 21.0
  SAY #22427 /* ~"No i rodzice Zgodnego zabrali go do ciemnego miejsca, Skrzydlatej Wieży. I tam wkładali mu do głowy igły... głosy już go nie nachodziły, ale teraz Zgodny nie umie dobrze myśleć, nie umie dobrze mówić. Zgodny ucieka z tego miejsca, oj ucieka, a potem budzi się w Ulu."~ */
  IF ~~ THEN REPLY #22675 /* ~"Gdzie jest Skrzydlata Wieża?"~ */ GOTO 22
  IF ~~ THEN REPLY #22676 /* ~"Opowiedz mi co było dalej..."~ */ GOTO 24
  IF ~~ THEN REPLY #22677 /* ~"Dobrze. Znajdę dla ciebie twoją siostrę."~ */ DO ~SetGlobal("Nodd_Quest","GLOBAL",2)
IncrementGlobalOnceEx("GLOBALGood_Nodd_1","GLOBALGood",1)
~ GOTO 25
  IF ~~ THEN REPLY #22678 /* ~"Znajdę twoją siostrę... ale nie za darmo."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Nodd_1","GLOBALGood",-1)
~ GOTO 26
  IF ~~ THEN REPLY #22679 /* ~"Ciekawe. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 24 // from: 22.0 23.1
  SAY #22431 /* ~"Zgodny budzi się, a tu Zbieracze, oj Zbieracze co szturchajom Zgodnego i gadajom 'Patrzcie! To nie umarlak, jeszcze dycha! Zabierzcie go z powrotem, z powrotem!' A oni zabierajom Zgodnego z powrotem, oj zabierajom, na Plac. Tak dawno... lata, wiele lat temu."~ */
  IF ~~ THEN REPLY #22680 /* ~"Dobrze. Odszukam twoją siostrę."~ */ DO ~SetGlobal("Nodd_Quest","GLOBAL",2)
IncrementGlobalOnceEx("GLOBALGood_Nodd_1","GLOBALGood",1)
~ GOTO 25
  IF ~~ THEN REPLY #22681 /* ~"Znajdę twoją siostrę... ale nie za darmo."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Nodd_1","GLOBALGood",-1)
~ GOTO 26
  IF ~~ THEN REPLY #22682 /* ~"Ciekawe. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 25 // from: 19.1 20.1 21.1 22.1 23.2 24.0 26.1
  SAY #22433 /* ~"Zgodny dzienkuje, oj, dzienkuje ci. Amarissa była ładna, taka ładna, teraz mieszka w Ulu. Takom miała białom skórę i czarne włosy. I zawsze chodziła na niebiesko... zawsze na niebiesko..."~ */
  IF ~~ THEN REPLY #22683 /* ~"Żegnaj."~ */ JOURNAL #22636 /* ~Zgodziłem się pomóc Noddowi w odnalezieniu jego siostry - Amarissy. Powiedział, że ma ona jasną cerę, czarne włosy i zawsze ubiera się na błękitno.~ */ EXIT
END

IF ~~ THEN BEGIN 26 // from: 19.2 20.2 21.2 22.2 23.3 24.1
  SAY #22435 /* ~Zgodny kręci przecząco głową, kaszle i mówi. "Zgodny nic nie ma, nic, tak mało może dać..."~ */
  IF ~~ THEN REPLY #22684 /* ~"Zadowolę się czymkolwiek."~ */ GOTO 27
  IF ~~ THEN REPLY #22685 /* ~"W takim razie zrobię to za dormo."~ */ DO ~SetGlobal("Nodd_Quest","GLOBAL",2)
~ GOTO 25
  IF ~~ THEN REPLY #22686 /* ~"W takim razie zapomnij o tym. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 27 // from: 26.0
  SAY #22437 /* ~Zgodny spogląda na ciebie ze smutkiem w oczach. "Zgodny da ci wszystko co ma, oj da. Co tylko ma, jak z nią pogadasz. Udowodnij Zgodnemu, że widziałeś Amarissę, jego siostrę." Zgodny pociąga nosem, a potem zanosi się kaszlem. "Takom miała białom skórę i czarne włosy. I zawsze chodziła na niebiesko... zawsze na niebiesko..."~ */
  IF ~~ THEN REPLY #22687 /* ~"Umowa stoi. Wrócę tu, gdy już z nią porozmawiam. Do zobaczenia."~ */ DO ~SetGlobal("Nodd_Quest","GLOBAL",3)
~ JOURNAL #22635 /* ~Zgodziłem się pomóc Noddowi w odnalezieniu jego siostry - Amarissy... ale nie za darmo. Powiedział, że ma ona jasną cerę, czarne włosy i zawsze nosi się na błękitno.~ */ EXIT
  IF ~~ THEN REPLY #22688 /* ~"Zapomnij o tym. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 28 // from: 1.0 1.1
  SAY #22441 /* ~"Naprawdem? Zgodny jest taki szczęśliwy, oj jest! Co tam z siostrom Zgodnego? Opowiedz mu o Amarissie, opowiedz mu, proszem!" Jego podniecenie wywołuje długą serię suchego kaszlu. Kiedy w końcu znowu się odzywa, pyta: "Czy siostra Zgodnego jest ciongle ładna, taka ładna?"~ */
  IF ~~ THEN REPLY #22689 /* ~"Tak. Jest teraz e... prostytutką... w Ulu. Ma się dobrze i martwi się o ciebie."~ */ GOTO 31
  IF ~~ THEN REPLY #22690 /* ~Kłamstwo: "Tak. Jest teraz... służącą w tawernie w Ulu. Ma się dobrze i martwi się o ciebie."~ */ DO ~IncrementGlobalOnceEx("GLOBALGood_Nodd_2","GLOBALGood",1)
IncrementGlobalOnceEx("GLOBALChaotic_Nodd_1","GLOBALLaw",-1)
~ GOTO 31
  IF ~~ THEN REPLY #22691 /* ~Kłamstwo: "Tak. Jest dziwką, i to tak ohydną, że wątpię, żebym się kiedyś z nią przespał nawet za darmo."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Nodd_2","GLOBALGood",-2)
IncrementGlobalOnceEx("GLOBALChaotic_Nodd_2","GLOBALLaw",-1)
~ GOTO 30
END

IF ~~ THEN BEGIN 29 // from: 1.2 1.3
  SAY #22444 /* ~"Dowód! Dowód! Daj Zgodnemu dowód..."~ */
  IF ~~ THEN REPLY #22692 /* ~"Powiedziała mi, że kiedyś miałeś na imię Todus."~ */ DO ~GiveGoldForce(11)
~ GOTO 32
END

IF ~~ THEN BEGIN 30 // from: 28.2 32.4 33.2 34.2
  SAY #22446 /* ~"Jaaaaaaa!" Zgodny skacze, aby cię zaatakować.~ */
  IF ~~ THEN REPLY #22693 /* ~"Ups..."~ */ DO ~SetGlobal("Nodd_Quest","GLOBAL",9)
Enemy()
Attack(Protagonist)
~ JOURNAL #22634 /* ~Okłamałem Nodda mówiąc, że jego siostra jest parszywą dziwką, a on wpadł w szał i zaatakował mnie.~ */ EXIT
  IF ~~ THEN REPLY #63621 /* ~Odeprzyj atak.~ */ DO ~SetGlobal("Nodd_Quest","GLOBAL",9)
Enemy()
Attack(Protagonist)
~ EXIT
END

IF ~~ THEN BEGIN 31 // from: 28.0 28.1 32.2 32.3 33.0 33.1 34.0 34.1
  SAY #22448 /* ~"Zgodny jest taki zadowolony, że jego siostra ma się dobrze!" Wygląda tak, jakby miał się za chwilę rozpłakać, a potem przełyka ślinę. "Coś jeszcze, coś jeszcze powiedziała, żeby Zgodny usłyszał?"~ */
  IF ~  GlobalLT("Nodd_Quest","GLOBAL",6)
~ THEN REPLY #22695 /* ~"Powiedziała tylko, że odwiedzi cię jak tylko będzie miała czas."~ */ JOURNAL #22710 /* ~Rozmawiałem z siostrą Nodda, Amarissą i wróciłem, aby mu o tym powiedzieć. Był naprawdę zachwycony wieścią o niej.~ */ GOTO 35
  IF ~  GlobalGT("Nodd_Quest","GLOBAL",5)
PartyGoldGT(99)
~ THEN REPLY #22696 /* ~"Tak, chciała, byś przyjął te miedziaki. Poza tym odwiedzi cię, jak tylko znajdzie czas."~ */ DO ~TakePartyGold(100)
~ JOURNAL #22709 /* ~Rozmawiałem z siostrą Nodda, Amarissą i wróciłem, aby mu o tym powiedzieć. Był naprawdę zachwycony wieścią o niej. Z radością przyjął też miedziaki, o których dostarczenie zostałem poproszony.~ */ GOTO 36
  IF ~  GlobalGT("Nodd_Quest","GLOBAL",5)
~ THEN REPLY #22697 /* ~Kłamstwo: "Powiedziała tylko, że cię odwiedzi, jak tylko znajdzie trochę czasu."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Nodd_4","GLOBALGood",-1)
IncrementGlobalOnceEx("GLOBALChaotic_Nodd_4","GLOBALLaw",-3)
~ JOURNAL #22708 /* ~Rozmawiałem z siostrą Nodda, Amarissą i wróciłem, aby mu o tym powiedzieć. Był naprawdę zachwycony wieścią o niej, lecz złamałem słowo dane Amarysie i skłamałem o miedziakach, które przyrzekłem mu dostarczyć.~ */ GOTO 35
  IF ~  GlobalGT("Nodd_Quest","GLOBAL",5)
PartyGoldLT(100)
~ THEN REPLY #22698 /* ~"Tak. Dała mi trochę pieniędzy dla ciebie, ale... już ich nie mam. Przepraszam. Odwiedzi cię jak tylko będzie miała czas."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Nodd_3","GLOBALLaw",-1)
~ JOURNAL #22707 /* ~Rozmawiałem z siostrą Nodda, Amarissą i wróciłem, aby mu o tym powiedzieć. Był naprawdę zachwycony wieścią o niej, lecz nie miałem miedziaków, które zobowiązałem się mu dostarczyć. Wybaczył mi jednak, a ja poczułem się lepiej, że mu o tym powiedziałem.~ */ GOTO 37
END

IF ~~ THEN BEGIN 32 // from: 29.0
  SAY #22450 /* ~"Naprawdę? Zgodny jest taki szczenśliwy, oj jest!" Sięga ręką pod ubranie i wyciąga tłusty zbitek szmat. Odwija je i wręcza ci zawartość - jedenaście miedziaków. "Wszystko co Zgodny ma. Jak się czuje jego siostra? Opowiedz mu o Amarissie, opowiedz mu, proszem!" Jego podniecenie wywołuje długą serię suchego kaszlu. Kiedy w końcu znowu się odzywa, pyta: "Czy siostra Zgodnego jest ciongle ładna, taka ładna?"~ */
  IF ~~ THEN REPLY #22711 /* ~"Nie masz *nic* więcej?"~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Nodd_3","GLOBALGood",-1)
~ GOTO 33
  IF ~~ THEN REPLY #22712 /* ~"Nie mogę wziąć tych pieniędzy. Weź je z powrotem."~ */ DO ~IncrementGlobalOnceEx("GLOBALGood_Nodd_3","GLOBALGood",1)
TakePartyGold(11)
~ GOTO 34
  IF ~~ THEN REPLY #22713 /* ~"Tak. Jest teraz e... prostytutką... w Ulu. Ma się dobrze i martwi się o ciebie."~ */ GOTO 31
  IF ~~ THEN REPLY #22714 /* ~Kłamstwo: "Tak. Jest teraz... służącą w tawernie w Ulu. Ma się dobrze i martwi się o ciebie."~ */ DO ~IncrementGlobalOnceEx("GLOBALGood_Nodd_2","GLOBALGood",1)
IncrementGlobalOnceEx("GLOBALChaotic_Nodd_1","GLOBALLaw",-1)
~ GOTO 31
  IF ~~ THEN REPLY #22715 /* ~Kłamstwo: "Tak. Jest dziwką, i to tak ohydną, że wątpię, żebym się kiedyś z nią przespał nawet za darmo."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Nodd_2","GLOBALGood",-2)
IncrementGlobalOnceEx("GLOBALChaotic_Nodd_2","GLOBALLaw",-1)
~ GOTO 30
END

IF ~~ THEN BEGIN 33 // from: 32.0
  SAY #22452 /* ~Energicznie przytakuje głową. "No, no, wszystko co Zgodny ma! Patrz gdzie on mieszka, biedny Zgodny... patrz..." Bezsilnie wskazuje wkoło siebie, coś do siebie mrucząc.~ */
  IF ~~ THEN REPLY #22716 /* ~"Ma się dobrze. Ciągle jest ładna i jest teraz e... prostytutką... w Ulu. Ma się dobrze i martwi się o ciebie."~ */ GOTO 31
  IF ~~ THEN REPLY #22717 /* ~Kłamstwo: "Ma się bardzo dobrze. Ciągle jest ładna. Pracuje jako ee... służąca w tawernie w Ulu. Martwi się o ciebie."~ */ DO ~IncrementGlobalOnceEx("GLOBALGood_Nodd_2","GLOBALGood",1)
IncrementGlobalOnceEx("GLOBALChaotic_Nodd_1","GLOBALLaw",-1)
~ GOTO 31
  IF ~~ THEN REPLY #22718 /* ~Kłamstwo: "Ma się bardzo dobrze. Jest dziwką, i to tak ohydną, że wątpię, żebym się kiedyś z nią przespał nawet za darmo."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Nodd_2","GLOBALGood",-2)
IncrementGlobalOnceEx("GLOBALChaotic_Nodd_2","GLOBALLaw",-1)
~ GOTO 30
END

IF ~~ THEN BEGIN 34 // from: 32.1
  SAY #22456 /* ~Zdziwiony, na chwilę przestaje kiwać głową i zabiera monety z powrotem. "Zgodny dzienkuje ci, oj dzienkuje..."~ */
  IF ~~ THEN REPLY #22719 /* ~"Oczywiście. Twoja siostra ciągle jest ładna. Jest teraz e... prostytutką... w Ulu. Ma się dobrze i martwi się o ciebie."~ */ GOTO 31
  IF ~~ THEN REPLY #22720 /* ~Kłamstwo: "Oczywiście. Ciągle jest ładna. Pracuje jako ee... służąca w tawernie w Ulu. Ma się dobrze i martwi się o ciebie."~ */ DO ~IncrementGlobalOnceEx("GLOBALGood_Nodd_2","GLOBALGood",1)
IncrementGlobalOnceEx("GLOBALChaotic_Nodd_1","GLOBALLaw",-1)
~ GOTO 31
  IF ~~ THEN REPLY #22721 /* ~Kłamstwo: "Oczywiście. Jest dziwką, i to tak ohydną, że wątpię, żebym się kiedyś z nią przespał nawet za darmo."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Nodd_2","GLOBALGood",-2)
IncrementGlobalOnceEx("GLOBALChaotic_Nodd_2","GLOBALLaw",-1)
~ GOTO 30
END

IF ~~ THEN BEGIN 35 // from: 31.0 31.2
  SAY #22458 /* ~Oczy Zgodnego błyszczą z radości pod brązowym kapturem. "Taka wspaniała wiadomość, oj wspaniała, dobra, wspaniała wiadomość! Zgodny dzienkuje ci, dzienkuje ci jeszcze raz, tysionc razy wiencej!"~ */
  IF ~~ THEN REPLY #22722 /* ~"Cieszę się, że udało mi się ci pomóc. Żegnaj."~ */ DO ~SetGlobal("Nodd_Quest","GLOBAL",8)
AddexperienceParty(750)
~ EXIT
  IF ~  Global("Nodd_Quest","GLOBAL",5)
~ THEN REPLY #22723 /* ~"Nie musisz mi dziękować - to była praca a nie przysługa, bo przecież mi zapłaciłeś, choć marnie. Żegnaj."~ */ DO ~SetGlobal("Nodd_Quest","GLOBAL",8)
AddexperienceParty(750)
~ EXIT
  IF ~  Global("Nodd_Quest","GLOBAL",7)
~ THEN REPLY #22724 /* ~"Nie musisz mi dziękować - to była praca a nie przysługa, bo przecież mi zapłaciłeś, choć marnie. Żegnaj."~ */ DO ~SetGlobal("Nodd_Quest","GLOBAL",8)
AddexperienceParty(750)
~ EXIT
END

IF ~~ THEN BEGIN 36 // from: 31.1
  SAY #22461 /* ~Kiedy wręczasz mu sto monet, głowa Zgodnego nagle przestaje się kiwać, a jego szczęka opada. Jego oczy błyszczą z radości pod brązowym kapturem. "Taka wspaniała wiadomość, oj wspaniała, dobra, wspaniała wiadomość! Zgodny dzienkuje ci, dzienkuje ci jeszcze raz, tysionc razy wiencej!"~ */
  IF ~~ THEN REPLY #22725 /* ~"Cieszę się, że udało mi się ci pomóc. Żegnaj."~ */ DO ~SetGlobal("Nodd_Quest","GLOBAL",8)
AddexperienceParty(750)
~ EXIT
  IF ~  Global("Nodd_Quest","GLOBAL",5)
~ THEN REPLY #22726 /* ~"Nie musisz mi dziękować - to była praca a nie przysługa, bo przecież mi zapłaciłeś, choć marnie. Żegnaj."~ */ DO ~SetGlobal("Nodd_Quest","GLOBAL",8)
AddexperienceParty(750)
~ EXIT
  IF ~  Global("Nodd_Quest","GLOBAL",7)
~ THEN REPLY #22727 /* ~"Nie musisz mi dziękować - to była praca a nie przysługa, bo przecież mi zapłaciłeś, choć marnie. Żegnaj."~ */ DO ~SetGlobal("Nodd_Quest","GLOBAL",8)
AddexperienceParty(750)
~ EXIT
END

IF ~~ THEN BEGIN 37 // from: 31.3
  SAY #22463 /* ~Przez chwilę Zgodny coś do siebie mruczy. W końcu spogląda ci w oczy: "Zgodny wybacza, oj wybacza, to dobrze, że powiedziałeś Zgodnemu o tym, pokazujesz mu, że próbujesz być dobrym człowiekiem, ale nie możesz, jak Zgodny... jak Zgodny. Ale i tak Zgodny dzienkuje ci za dobre wieści."~ */
  IF ~~ THEN REPLY #22728 /* ~"Żegnaj."~ */ DO ~SetGlobal("Nodd_Quest","GLOBAL",8)
AddexperienceParty(750)
~ EXIT
END

IF WEIGHT #0 ~  NumTimesTalkedToGT(0)
Global("Nodd_Quest","GLOBAL",8)
~ THEN BEGIN 38 // from:
  SAY #22466 /* ~Widzisz, jak Zgodny chodzi w koło, kiwając głowo i mrucząc coś do siebie.~ */
  IF ~~ THEN REPLY #22729 /* ~"Witaj."~ */ GOTO 39
  IF ~~ THEN REPLY #22730 /* ~Zostaw go w spokoju.~ */ EXIT
END

IF ~~ THEN BEGIN 39 // from: 38.0
  SAY #22470 /* ~"Och, człowiek, co pomógł Zgodnemu znaleźć jego siostrę, oj, piękną Amarissę. Zgodny dzienkuje ci jeszcze raz."~ */
  IF ~~ THEN REPLY #22731 /* ~"Żegnaj."~ */ EXIT
END
