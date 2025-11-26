// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DP_STONE.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\pl_PL\dialog.tlk
// dialogF  : (none)

BEGIN ~DP_STONE~

IF ~  Global("PStone","GLOBAL",0)
~ THEN BEGIN 0 // from:
  SAY #49785 /* ~Według napisu na podstawie tego kamienia doznań, zawiera on doświadczenie 'Tygodniowa wyprawa łowiecka wśród lasów Arborei'.~ */
  IF ~~ THEN REPLY #49786 /* ~Zacznij doznanie.~ */ DO ~SetGlobal("Pstone","GLOBAL",1)
~ GOTO 1
  IF ~~ THEN REPLY #49787 /* ~Odejdź.~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #49788 /* ~Stoisz pośród koła zbudowanego z białych namiotów, gdzieś, głęboko w lesie. Nigdy w życiu nie widziałeś większych drzew od tych, które cię otaczają. Nagle czujesz dziwne, kłujące doznanie z tyłu czaszki...~ */
  IF ~~ THEN REPLY #49789 /* ~Nie przerywaj doznania.~ */ GOTO 3
  IF ~~ THEN REPLY #49790 /* ~Przerwij doznanie i odejdź.~ */ GOTO 2
END

IF ~~ THEN BEGIN 2 // from: 1.1
  SAY #49791 /* ~Choć robisz co możesz, nie możesz przerwać doznania. Twój umysł zostaje jeszcze bardziej wciągnięty w to doświadczenie...~ */
  IF ~~ THEN GOTO 3
END

IF ~~ THEN BEGIN 3 // from: 1.0 2.0
  SAY #49792 /* ~Twoje otoczenie zlewa się w szarą masę, a potem zastyga powoli w coś, co wygląda jak wnętrze dużej, szarej kuli. Po drugiej stronie stoi postać prawie identyczna jak ty. Jego oczy świecą w półmroku, a szalony uśmiech rozdziela jego usta. "WIEDZIAŁEM, że przyjdziesz..."~ */
  IF ~~ THEN REPLY #49793 /* ~"Witaj..."~ */ GOTO 4
  IF ~~ THEN REPLY #49794 /* ~"Kim jesteś?"~ */ GOTO 5
END

IF ~~ THEN BEGIN 4 // from: 3.0
  SAY #49795 /* ~"Och, 'witaj, witaj, jak dobrze cię widzieć'." Przedrzeźnia cię. "Ucisz swój ZABÓJCZY język! To prawda: zabójczy. Twoja udawana niewinność jest wręcz ŚMIESZNA!"~ */
  IF ~~ THEN REPLY #49796 /* ~"Kim jesteś?"~ */ GOTO 5
END

IF ~~ THEN BEGIN 5 // from: 3.1 4.0
  SAY #49797 /* ~"Och, czyżbyś nie WIEDZIAŁ? Czy wszystkie te PLUGAWE, KŁAMLIWE, PO TRZYKROĆ PRZEKLĘTE DZIENNIKI nie powiedziały ci, kim jestem? Te dzienniki, tak sprytnie 'zostawione' dla mnie, kiedy się obudziłem... te dzienniki, które nazywały mnie WCIELENIEM! Ha! Wszystkie je spaliłem, wszystko co ZNALAZŁEM..."~ */
  IF ~~ THEN REPLY #49798 /* ~"Co dokładnie w nich było?"~ */ GOTO 6
  IF ~~ THEN REPLY #49799 /* ~"Więc... jesteś jednym z moich poprzednich wcieleń?"~ */ GOTO 7
END

IF ~~ THEN BEGIN 6 // from: 5.0 7.0
  SAY #49800 /* ~"Były w nich tylko KŁAMSTWA, KŁAMSTWA i nic więcej! Jakieś bzdury o człowieku, który zapomina samego siebie, o innych wcieleniach, o zachowywaniu swoich doświadczeń na piśmie, aby późniejsze życia mogły z nich czerpać... ZŁODZIEJE! To MOJE życie! MOJE! CHCECIE WSZYSCY UKRAŚĆ MOJE CIAŁO, ALE GO NIE DOSTANIECIE!"~ */
  IF ~~ THEN REPLY #49801 /* ~"Więc... jesteś jednym z moich poprzednich wcieleń?"~ */ GOTO 7
  IF ~~ THEN REPLY #49802 /* ~"Gdzie ja jestem?"~ */ GOTO 8
END

IF ~~ THEN BEGIN 7 // from: 5.1 6.0
  SAY #49803 /* ~Człowiek krzyżuje ręce. "Jeśli włożysz SENS w te ŚMIECI, to tak."~ */
  IF ~~ THEN REPLY #49804 /* ~"Co było w tych 'kłamliwych' dziennikach?"~ */ GOTO 6
END

IF ~~ THEN BEGIN 8 // from: 6.1
  SAY #49805 /* ~"Ach, TO?" Człowiek wskazuje naokoło siebie z drwiącym uśmiechem. "To tylko mała PUŁAPKA, nic więcej. Zrozumiałem, że ZABICIE was, ZŁODZIEJE CIAŁ, może okazać się niewystarczające... Może trzeba was będzie wpędzić w PUŁAPKĘ, UWIĘZIĆ na wieczność. Chyba już zrozumiałeś, że z tego kamienia doznań nie można się wydostać... tutaj zamknięty jest twój umysł. Pewnie już zauważyłeś, że warunki są tu raczej skromne... To po to, żeby pomóc dobrze i SZYBKO rozwinąć się SZALEŃSTWU, podczas kiedy twoje ciało będzie gnić." Mężczyzna śmieje się złowieszczo.~ */
  IF ~~ THEN REPLY #49806 /* ~"W takim razie mam do ciebie kilka pytań..."~ */ GOTO 10
  IF ~~ THEN REPLY #49807 /* ~Spróbuj zakończyć to doznanie.~ */ GOTO 9
END

IF ~~ THEN BEGIN 9 // from: 8.1 10.3 11.3 12.3 15.4 16.1 19.4 20.3 21.3 22.3
  SAY #49808 /* ~Próbujesz uciec z tego doświadczenia, ale nic z tego. Twoje wcześniejsze wcielenie wybucha drwiącym śmiechem. "Poddaj się! NIGDY nie zdołasz stąd uciec! Równie dobrze możesz siąść na ziemi i czekać, aż rozsypiesz się w NICOŚĆ. Tylko ja mogę cię uwolnić, a tego na pewno nie zrobię."~ */
  IF ~  CheckStatGT(Protagonist,15,INT)
~ THEN REPLY #49809 /* ~"Czekaj... ale ja *jestem* tobą. To znaczy, że sam *mogę* się uwolnić..."~ */ GOTO 14
  IF ~~ THEN REPLY #49810 /* ~"W takim razie mam do ciebie kilka pytań..."~ */ GOTO 10
END

IF ~~ THEN BEGIN 10 // from: 8.0 9.1
  SAY #49811 /* ~Twoje wcześniejsze wcielenie krzyżuje ręce i odwraca od ciebie wzrok z pogardą. Oprócz tego, że ma na głowie trochę więcej włosów, wygląda tak samo jak ty - nawet tatuaże na jego rękach w większości pokrywają się z twoimi.~ */
  IF ~  GlobalGT("P_Journal","GLOBAL",0)
~ THEN REPLY #49812 /* ~"Czy to ty stworzyłeś dwunastościan z pułapkami?"~ */ GOTO 11
  IF ~~ THEN REPLY #49813 /* ~"W jaki sposób udało ci się przygotować tę pułapkę?"~ */ GOTO 15
  IF ~~ THEN REPLY #49814 /* ~"Czy to ty zrobiłeś sobie te tatuaże?"~ */ GOTO 19
  IF ~~ THEN REPLY #49815 /* ~Spróbuj zakończyć to doznanie.~ */ GOTO 9
END

IF ~~ THEN BEGIN 11 // from: 10.0 15.2 19.2 20.1 21.1 22.1
  SAY #49816 /* ~"Nie wiem o czym gadasz. Cha, cha, cha. W porządku, to MOJA robota. Czyż to nie było WSPANIAŁE? POBAWIŁEŚ się nim trochę? Mam nadzieję, że straciłeś przy tym PALEC albo OKO?" Chichocze.~ */
  IF ~  Global("P_Journal","GLOBAL",5)
~ THEN REPLY #49817 /* ~"Sprytne, ale otworzyłem go i przeczytałem."~ */ GOTO 12
  IF ~~ THEN REPLY #49818 /* ~"W jaki sposób udało ci się przygotować tę pułapkę?"~ */ GOTO 15
  IF ~~ THEN REPLY #49819 /* ~"Czy to ty zrobiłeś sobie te tatuaże?"~ */ GOTO 19
  IF ~~ THEN REPLY #49820 /* ~Spróbuj zakończyć to doznanie.~ */ GOTO 9
END

IF ~~ THEN BEGIN 12 // from: 11.0
  SAY #49821 /* ~Wygląda na to, że twoje wcześniejsze wcielenie jest przerażone. "NIE! NIE! NIE! NIEMOŻLIWE! Nikt nie zna języka, w którym on był napisany. Zabiłem JEDYNEGO człowieka, który go rozumiał, kiedy już mnie NAUCZYŁ. UMARŁY język, UMARŁY lingwista... połączyli się ze sobą w komnatach Śmierci."~ */
  IF ~  CheckStatGT(Protagonist,15,INT)
~ THEN REPLY #49822 /* ~Kłamstwo: "Mogłem to odczytać, ponieważ jestem *tobą*. Nie jestem jedną z tych fałszywych jaźni, uwięziłeś tu samego siebie. To ja uwięziłem sam siebie. Czy tego nie rozumiesz?"~ */ GOTO 13
  IF ~~ THEN REPLY #49823 /* ~"W jaki sposób udało ci się przygotować tę pułapkę?"~ */ GOTO 15
  IF ~~ THEN REPLY #49824 /* ~"Czy to ty zrobiłeś sobie te tatuaże?"~ */ GOTO 19
  IF ~~ THEN REPLY #49825 /* ~Spróbuj zakończyć to doznanie.~ */ GOTO 9
END

IF ~~ THEN BEGIN 13 // from: 12.0 15.0
  SAY #49826 /* ~"Ale... to nie... jesteś jednym z... Myślałem, że dobrze to ZABEZPIECZYŁEM! Jak mogłeś... jak mogłem... być takim głupcem!" Mężczyzna zaciska ręce przygryzając dolną wargę. "Jak się WYDOSTAĆ? JAK? Zapomniałem... czekaj: 'Tylko ja mogę cię uwolnić, a tego na pewno nie zrobię.' Jeśli jesteś mną, to przecież MOŻESZ się uwolnić..."~ */
  IF ~~ THEN REPLY #49827 /* ~Spróbuj się uwolnić, starając się otworzyć pułapkę siłą woli.~ */ DO ~GiveExperience(Protagonist,500)
~ EXIT
END

IF ~~ THEN BEGIN 14 // from: 9.0
  SAY #49828 /* ~"Nie! Nie... to niemożliwe... PRZESTAŃ!"~ */
  IF ~~ THEN REPLY #49829 /* ~Spróbuj się uwolnić, starając się otworzyć pułapkę siłą woli.~ */ DO ~GiveExperience(Protagonist,500)
~ EXIT
END

IF ~~ THEN BEGIN 15 // from: 10.1 11.1 12.1 19.3 20.2 21.2 22.2
  SAY #49830 /* ~"Tego ci nie mogę powiedzieć... Nigdy nie będzie można zrobić jej KOPII, magiczne sztuczki użyte przy jej tworzeniu ODESZŁY w zapomnienie. Jednak to SPRYTNE... jedno doświadczenie UKRYTE pod innym, tak żebym tylko JA SAM mógł je wyzwolić..."~ */
  IF ~  CheckStatGT(Protagonist,15,INT)
~ THEN REPLY #49831 /* ~"Ale... jeśli tylko ty sam możesz je wyzwolić, czyż nie jest to dowodem, że ja jestem *tobą*? Uwięziłeś tu samego siebie. To ja uwięziłem sam siebie. Czy tego nie rozumiesz?"~ */ GOTO 13
  IF ~~ THEN REPLY #49832 /* ~"Więc ten kamień tak naprawdę zawiera dwa doznania?"~ */ GOTO 16
  IF ~  GlobalGT("P_Journal","GLOBAL",0)
~ THEN REPLY #49833 /* ~"Czy stworzyłeś również dwunastościan z pułapkami?"~ */ GOTO 11
  IF ~~ THEN REPLY #49834 /* ~"Czy to ty zrobiłeś sobie te tatuaże?"~ */ GOTO 19
  IF ~~ THEN REPLY #49835 /* ~Spróbuj zakończyć to doznanie.~ */ GOTO 9
END

IF ~~ THEN BEGIN 16 // from: 15.1
  SAY #49836 /* ~"Tak, to o Arboreańskiej wyprawie łowieckiej i to o PUŁAPCE." Mężczyzna nagle spogląda na ciebie zaniepokojony. "DLACZEGO?"~ */
  IF ~  CheckStatGT(Protagonist,15,WIS)
~ THEN REPLY #49837 /* ~Spróbuj przebić się do drugiego doznania używając tylko siły woli.~ */ GOTO 17
  IF ~  CheckStatLT(Protagonist,16,WIS)
~ THEN REPLY #49838 /* ~Spróbuj przebić się do drugiego doznania używając tylko siły woli.~ */ GOTO 9
END

IF ~~ THEN BEGIN 17 // from: 16.0
  SAY #49839 /* ~"Co... co robisz? PRZESTAŃ!"~ */
  IF ~~ THEN REPLY #49840 /* ~Ciągle próbuj przebić się do drugiego doznania.~ */ GOTO 18
END

IF ~~ THEN BEGIN 18 // from: 17.0
  SAY #49841 /* ~W końcu udaje ci się wydostać do 'górnego' doświadczenia - łowów Arboreańskich - i stłumić dziwne uczucie w swoim umyśle zanim z powrotem wciągnie cię w pułapkę.~ */
  IF ~~ THEN REPLY #49842 /* ~Odejdź.~ */ DO ~GiveExperience(Protagonist,500)
~ EXIT
END

IF ~~ THEN BEGIN 19 // from: 10.2 11.2 12.2 15.3
  SAY #49843 /* ~"Nie!" Mężczyzna wygląda na zdenerwowanego. "To sprawka tego 'PRAKTYCZNEGO' wcielenia. Próbowałem je wypalić, ale skóra REGENERUJE się, a tatuaże nie znikają! Próbowałem je ZERWAĆ, wypalić KWASEM... NIENAWIDZĘ ich..."~ */
  IF ~~ THEN REPLY #49844 /* ~"Ale... dlaczego?"~ */ GOTO 20
  IF ~~ THEN REPLY #49845 /* ~Przeczytaj tatuaże.~ */ GOTO 21
  IF ~  GlobalGT("P_Journal","GLOBAL",0)
~ THEN REPLY #49846 /* ~"Czy to ty stworzyłeś dwunastościan z pułapkami?"~ */ GOTO 11
  IF ~~ THEN REPLY #49847 /* ~"W jaki sposób udało ci się przygotować tę pułapkę?"~ */ GOTO 15
  IF ~~ THEN REPLY #49848 /* ~Spróbuj zakończyć to doznanie.~ */ GOTO 9
END

IF ~~ THEN BEGIN 20 // from: 19.0
  SAY #49849 /* ~Mężczyzna mruży oczy. "Kiedy czułem na sobie OCZY, które czytały moje CIAŁO jak KSIĘGĘ... Myślałem że oszaleję..."~ */
  IF ~~ THEN REPLY #49850 /* ~Przeczytaj tatuaże.~ */ GOTO 21
  IF ~  GlobalGT("P_Journal","GLOBAL",0)
~ THEN REPLY #49851 /* ~"Czy to ty stworzyłeś dwunastościan z pułapkami?"~ */ GOTO 11
  IF ~~ THEN REPLY #49852 /* ~"W jaki sposób udało ci się przygotować tę pułapkę?"~ */ GOTO 15
  IF ~~ THEN REPLY #49853 /* ~Spróbuj zakończyć to doznanie.~ */ GOTO 9
END

IF ~~ THEN BEGIN 21 // from: 19.1 20.0
  SAY #49854 /* ~W jego oczach pojawiają się dzikie ogniki. "Przestań! PRZESTAŃ MNIE CZYTAĆ!" Mężczyzna odwraca się od ciebie i próbuje się zakryć rękoma.~ */
  IF ~~ THEN REPLY #49855 /* ~Czytaj dalej.~ */ DO ~SetGlobal("Morte_Warning","GLOBAL",1)
~ GOTO 22
  IF ~  GlobalGT("P_Journal","GLOBAL",0)
~ THEN REPLY #49856 /* ~"W porządku. Czy to ty stworzyłeś dwunastościan z pułapkami?"~ */ GOTO 11
  IF ~~ THEN REPLY #49857 /* ~"Dobrze. W jaki sposób udało ci się przygotować tę pułapkę?"~ */ GOTO 15
  IF ~~ THEN REPLY #49858 /* ~Spróbuj zakończyć to doznanie.~ */ GOTO 9
END

IF ~~ THEN BEGIN 22 // from: 21.0
  SAY #49859 /* ~Oczy postaci stają się jeszcze bardziej dzikie. "PRZESTAŃ! Natychmiast przestań! Ostrzegam cię!" Mężczyzna odwraca się od ciebie zakrywając swoje ciało. Na jego plecach dostrzegasz listę wytatuowanych ostrzeżeń, które Morte czytał ci kiedyś w Kostnicy. Ale na dole jest jeszcze jedna linijka, którą Morte pominął: 'NIE UFAJ CZASZCE'. Kiedy tak się w niego wpatrujesz, twoje poprzednie wcielenie wpada w jeszcze większy szał. "OSTRZEGAM cię po raz OSTATNI! PRZESTAŃ!"~ */
  IF ~~ THEN REPLY #49860 /* ~"Nie przestraszysz mnie... Jesteś tylko zapisanym wspomnieniem. Będę je czytał, aż mnie stąd wypuścisz."~ */ GOTO 23
  IF ~  GlobalGT("P_Journal","GLOBAL",0)
~ THEN REPLY #49861 /* ~"W porządku. Czy to ty stworzyłeś dwunastościan z pułapkami?"~ */ GOTO 11
  IF ~~ THEN REPLY #49862 /* ~"Dobrze. W jaki sposób udało ci się przygotować tę pułapkę?"~ */ GOTO 15
  IF ~~ THEN REPLY #49863 /* ~Spróbuj zakończyć to doznanie.~ */ GOTO 9
END

IF ~~ THEN BEGIN 23 // from: 22.0
  SAY #49864 /* ~Mężczyzna wyje jak szaleniec, bije na oślep rękoma, a z jego ust toczy się piana: "WYNOCHA! WYNOCHA! WYNOCHA! WYNOCHA! WYNOCHA!" I nagle wszystko się *kończy*... znowu stoisz w sensorium, trochę zdumiony, ale wygląda na to, że nic ci się nie stało.~ */
  IF ~~ THEN REPLY #49865 /* ~Odejdź.~ */ EXIT
END

IF ~  Global("PStone","GLOBAL",1)
~ THEN BEGIN 24 // from:
  SAY #49866 /* ~Według napisu na podstawie tego kamienia doznań, zawiera on doświadczenie 'Tygodniowa wyprawa łowiecka wśród lasów Arborei'. Jednak jeśli go dotkniesz, zostaniesz z powrotem wciągnięty w tę szaloną pułapkę poprzedniego wcielenia.~ */
  IF ~~ THEN REPLY #49867 /* ~Zostaw kamień w spokoju.~ */ EXIT
END
