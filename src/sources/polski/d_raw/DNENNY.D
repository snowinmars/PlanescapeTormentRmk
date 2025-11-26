// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DNENNY.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\pl_PL\dialog.tlk
// dialogF  : (none)

BEGIN ~DNENNY~

IF ~  Global("Nenny","GLOBAL",0)
~ THEN BEGIN 0 // from:
  SAY #2964 /* ~Ta drobna, atrakcyjna dziewczyna uśmiecha się i nuci sobie pod nosem. Jej szerokie, bladoniebieskie oczy zdają się nieustannie pochłaniać otoczenie.~ */
  IF ~~ THEN REPLY #2965 /* ~"Witaj..."~ */ DO ~SetGlobal("Nenny","GLOBAL",1)
~ GOTO 1
  IF ~~ THEN REPLY #39865 /* ~Zostaw ją w spokoju.~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #39866 /* ~Dziewczyna dyga przed tobą, po czym patrzy na ciebie z radosnym uśmiechem. "Dobrze trafiłeś, dobry panie! Jestem Nenny! Jak się dzisiaj miewa..." Nagle spostrzega twoje blizny i zakrywa sobie usta dłonią w rękawiczce. "O rany! Jesteś ranny!" Mruga zdziwiona. "I to na całym ciele!"~ */
  IF ~  NearbyDialog("DMorte")
~ THEN EXTERN ~DMORTE~ 421
  IF ~  !NearbyDialog("DMorte")
HPPercent(Protagonist,100)
~ THEN REPLY #39867 /* ~"To stare blizny. Nic mi nie jest."~ */ GOTO 2
  IF ~  !NearbyDialog("DMorte")
HPPercentGT(Protagonist,49)
~ THEN REPLY #39868 /* ~"Tylko trochę. Już niedługo nic mi nie będzie."~ */ GOTO 2
  IF ~  !NearbyDialog("DMorte")
HPPercentLT(Protagonist,50)
~ THEN REPLY #39869 /* ~"Tak, ale już niedługo rany się zaleczą."~ */ GOTO 2
  IF ~  !NearbyDialog("DMorte")
~ THEN REPLY #39870 /* ~"Nie zwracaj na to uwagi. Mam do ciebie kilka pytań..."~ */ GOTO 3
  IF ~  !NearbyDialog("DMorte")
~ THEN REPLY #39871 /* ~"Nie martw się o to. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.1 1.2 1.3
  SAY #39872 /* ~Przytakuje cicho, opuszczając głowę.~ */
  IF ~~ THEN REPLY #39873 /* ~"Mam kilka pytań..."~ */ GOTO 5
  IF ~~ THEN REPLY #39874 /* ~"Muszę już iść. Bywaj."~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 1.4 4.0 7.1 9.2 10.2 11.3 12.2 13.3 14.2 15.1 18.0 19.2 21.0 21.1 22.3 23.1 24.3 25.2 26.0 27.0 28.0 29.1 30.0 31.0 32.0 33.1 35.1 36.1 37.1 38.1 47.0 52.0 53.0 54.0 55.0
  SAY #39875 /* ~"Pytaj, proszę!" Dziewczyna obdarza cię uśmiechem.~ */
  IF ~~ THEN REPLY #39876 /* ~"Co tutaj robisz?"~ */ GOTO 32
  IF ~~ THEN REPLY #39877 /* ~"Opowiedz mi o tym miejscu."~ */ GOTO 33
  IF ~  Global("Ecco_Speak","GLOBAL",1)
Global("Ecco_Name","AR0605",0)
~ THEN REPLY #39878 /* ~"Co możesz mi powiedzieć o milczącej kurtyzanie?"~ */ DO ~SetGlobal("Ecco_Name","AR0605",1)
SetGlobal("Ecco_Rumor_3","AR0605",1)
~ JOURNAL #66744 /* ~Kiedy zagadnąłem jedną z kurtyzan o Ecco, milczącą kurtyzanę, wówczas poradziła mi, abym wypytał na ten temat Dolorę. Powiedziała mi, że Dolora zna dawnego kochanka Ecco, z czasów, kiedy jeszcze Ecco posiadała dar mowy.~ */ GOTO 31
  IF ~  Global("Ecco_Speak","GLOBAL",1)
GlobalGT("Ecco_Name","AR0605",0)
~ THEN REPLY #67847 /* ~"Co możesz mi powiedzieć o milczącej kurtyzanie?"~ */ DO ~SetGlobal("Ecco_Rumor_3","AR0605",1)
~ JOURNAL #66744 /* ~Kiedy zagadnąłem jedną z kurtyzan o Ecco, milczącą kurtyzanę, wówczas poradziła mi, abym wypytał na ten temat Dolorę. Powiedziała mi, że Dolora zna dawnego kochanka Ecco, z czasów, kiedy jeszcze Ecco posiadała dar mowy.~ */ GOTO 31
  IF ~  Global("Know_Kesai_Ravel","AR0605",1)
!Global("Kesai","GLOBAL",3)
~ THEN REPLY #39879 /* ~"Słyszałem, że Kesai-Serris jest córką Raveli. Czy to prawda?"~ */ JOURNAL #66743 /* ~Spytałem się jednej z kurtyzan, czy to prawda, że Kesai-Serris jest córką Raveli. Kobieta ta poradziła mi, abym zapytał o to Julię. Zdaje się, że zanim Julia poznała Monteka, była dobrą przyjaciółką Kesai-Serris.~ */ GOTO 30
  IF ~  Global("Nenny_Hint2","AR0605",2)
~ THEN REPLY #39880 /* ~"Kimasxi mówiła, że ktoś ukradł rzeczy także z jej pokoju. Czy nie zauważyłaś czegoś dziwnego?"~ */ DO ~SetGlobal("Nenny_Hint2","AR0605",3)
~ JOURNAL #39526 /* ~Nenny powiedziała mi, że widziała jak z pokoju Kimasxi Żmijowy Język wymykał się mężczyzna, ale nie widziała, aby ten człowiek opuszczał Przybytek. Jeśli to on jest złodziejem, to może wciąż tu jest?~ */ GOTO 54
  IF ~  Global("Scent_Quest","AR0605",1)
Global("Nenny_Angry","AR0605",0)
~ THEN REPLY #39881 /* ~"Usiłuję odnaleźć zapach Vivian... Czy wiesz może, gdzie mógłby być?"~ */ GOTO 34
  IF ~  Global("Nenny_Hint","AR0605",0)
Global("Scent_Quest","AR0605",1)
Global("Nenny_Angry","AR0605",1)
~ THEN REPLY #39882 /* ~"Usiłuję odnaleźć zapach Vivian... Czy wiesz może, gdzie mógłby być?"~ */ DO ~SetGlobal("Nenny_Hint","AR0605",1)
~ JOURNAL #39525 /* ~Nenny powiedziała mi, że widziała jak Kimasxi Żmijowy Język wymykała się z komnat Vivian... może to ona zabrała jej zapach, albo przynajmniej ma jakieś pojęcie, gdzie można go znaleźć.~ */ GOTO 52
  IF ~  Global("Veil_Quest","AR0605",1)
Global("Nenny_Angry","AR0605",0)
~ THEN REPLY #39883 /* ~"Szukam karmazynowego welonu Marissy... Czy wiesz, gdzie mógłby być?"~ */ GOTO 34
  IF ~  Global("Nenny_Hint2","AR0605",0)
Global("Veil_Quest","AR0605",1)
Global("Nenny_Angry","AR0605",1)
~ THEN REPLY #39884 /* ~"Szukam karmazynowego welonu Marissy... Czy wiesz, gdzie mógłby być?"~ */ DO ~SetGlobal("Nenny_Hint2","AR0605",1)
~ JOURNAL #39524 /* ~Nenny powiedziała mi, że widziała jak Kimasxi Żmijowy Język wymykała się z komnat Marissy... może to ona zabrała jej karmazynowy welon, albo przynajmniej ma jakieś pojęcie, gdzie można go znaleźć.~ */ GOTO 53
  IF ~  Global("Know_Ravel","GLOBAL",1)
~ THEN REPLY #39885 /* ~"Czy wiesz coś o Raveli Szaradnej?"~ */ JOURNAL #66742 /* ~Kiedy zapytałem się o Ravelę jednej z kurtyzan z Przybytku, dziewczyna poradziła mi, abym porozmawiał na temat Raveli z Yves. Powiedziano mi, że Yves zwykła kolekcjonować wszystkie plotki i opowiastki i na pewno znajdzie w swoim repertuarze coś na temat Raveli.~ */ GOTO 4
  IF ~~ THEN REPLY #39886 /* ~"Mniejsza z tym. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 3.10
  SAY #39887 /* ~"Nie, przykro mi. Ale to *wspaniałe* imię, co? Założę się, że na pewno interesująca z niej osoba! Hej... powinieneś zapytać o to Yves. Ona zbiera *różne* historie!"~ */
  IF ~~ THEN REPLY #39888 /* ~"Rozumiem. Mam jeszcze jedno pytanie..."~ */ GOTO 3
  IF ~~ THEN REPLY #39889 /* ~"Nie mam już więcej pytań. Żegnaj, Nenny."~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 2.0
  SAY #39890 /* ~"Słucham?" Dziewczyna nie może oderwać swoich oczu od twoich blizn. "Och, ale ze mnie głupia gęś! Przepraszam za takie nieuprzejme powitanie! Nazywają mnie Nenny." Lekko dyga. "Witaj w Przybytku Zaspokajania Żądz Intelektualnych." Znowu zaczyna obserwować twoje ciało. "Pod tymi bliznami masz tatuaże! Co znaczy ten?" Dziewczyna wskazuje na jeden z tatuaży.~ */
  IF ~~ THEN REPLY #39891 /* ~"Ten oznacza..."~ */ GOTO 6
  IF ~~ THEN REPLY #39892 /* ~"Mniejsza z tym, ja..."~ */ GOTO 6
END

IF ~~ THEN BEGIN 6 // from: 5.0 5.1
  SAY #39893 /* ~"Wygląda fascynująco! Spójrz tylko na sposób, w jaki te linie tuszu... Przynajmniej wydaje mi się, że to tusz..." Dziewczyna wyciąga rękę, aby dotknąć tatuażu.~ */
  IF ~~ THEN REPLY #39894 /* ~Pozwól jej się dotknąć.~ */ GOTO 7
  IF ~~ THEN REPLY #39895 /* ~Nie pozwól, żeby cię dotknęła.~ */ GOTO 8
END

IF ~~ THEN BEGIN 7 // from: 6.0
  SAY #39896 /* ~"*Myślę* że to tusz!" Wodzi ręką po obrysach tatuażu. "Czy to tusz? A co za wzór! Spójrz tylko na to, w jaki sposób te linie się krzyżują w tym miejscu." Dotyka środka tatuażu. "To wprost niewiarygodne..." Wydyma usta i marszczy brwi rozczarowana. "Może mogłabym odczytać to lepiej, gdybyś nie miał tak dużo blizn..."~ */
  IF ~~ THEN REPLY #39897 /* ~"Nic nie można zrobić z tymi bliznami, są już na stałe."~ */ GOTO 10
  IF ~~ THEN REPLY #39898 /* ~"Mam kilka pytań..."~ */ GOTO 3
  IF ~~ THEN REPLY #39899 /* ~"Muszę już iść. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 8 // from: 6.1
  SAY #39900 /* ~Nenny spogląda na ciebie, kiedy nie zgadzasz się, żeby dotknęła twojej skóry. "Przepraszam, przepraszam, dobry panie! Nie chciałam zrobić nic złego, tylko dotknąć tatuażu i poczuć jego wzór. To bardzo fascynujące!" Wydyma wargi, po czym uderza się lekko po głowie. "Zbyt bezpośrednia! Jestem zbyt bezpośrednia! Przepraszam, dobry panie! Proszę, nie bądź na mnie zły!"~ */
  IF ~  NearbyDialog("DMorte")
~ THEN EXTERN ~DMORTE~ 422
  IF ~  !NearbyDialog("DMorte")
~ THEN REPLY #39901 /* ~"Nic nie szkodzi."~ */ GOTO 9
  IF ~  !NearbyDialog("DMorte")
~ THEN REPLY #39902 /* ~"Uważaj, żeby to się nie powtórzyło."~ */ GOTO 9
END

IF ~~ THEN BEGIN 9 // from: 8.1 8.2
  SAY #39903 /* ~Nenny kiwa głową, po czym obdarza cię słodkim uśmiechem. "Przepraszam, przepraszam... ale *muszę* wiedzieć... Czy jesteś *zupełnie* pewny, że nic ci nie jest? Patrzę na ciebie i nie mogę uwierzyć, że *nic* cię nie boli."~ */
  IF ~~ THEN REPLY #39904 /* ~"Nic związanego z ciałem, naprawdę."~ */ GOTO 11
  IF ~~ THEN REPLY #39905 /* ~"Cierpię na amnezję, ale to jedyne, co mi dolega."~ */ GOTO 20
  IF ~~ THEN REPLY #39906 /* ~"Zapomnij o tym. Mam do ciebie kilka pytań..."~ */ GOTO 3
  IF ~~ THEN REPLY #39907 /* ~"Nie martw się o to. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 10 // from: 7.0
  SAY #39908 /* ~"Och, przepraszam, przepraszam... Niech mnie zaraza weźmie, że w ogóle o nich wspomniałam! Ale *muszę* wiedzieć... Czy jesteś *zupełnie* pewny, że nic ci nie jest? Patrzę na ciebie i nie mogę uwierzyć, że *nic* cię nie boli."~ */
  IF ~~ THEN REPLY #39909 /* ~"Nic związanego z ciałem, naprawdę."~ */ GOTO 11
  IF ~~ THEN REPLY #39910 /* ~"Cierpię na amnezję, ale to jedyne, co mi dolega."~ */ GOTO 20
  IF ~~ THEN REPLY #39911 /* ~"Zapomnij o tym. Mam do ciebie kilka pytań..."~ */ GOTO 3
  IF ~~ THEN REPLY #39912 /* ~"Nie martw się o to. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 11 // from: 9.0 10.0
  SAY #39913 /* ~"Och! Czyżbyś był ranny gdzieś w środku? W głowę?" Energicznie klaszcze w dłonie. "Może mogłabym pomóc? Prawdę mówiąc, na pewno ci pomogę! Częścią szkolenia Czuciowca jest nauka o usuwaniu bólu... Moja pani powiada, że Czuciowiec może wyciągnąć ból z rany i wchłonąć go do siebie... ale bez względu na wszystko, *mogę* ci pomóc! Mogę spróbować?! Proszę, zgódź się!"~ */
  IF ~~ THEN REPLY #39914 /* ~"Czuciowiec?"~ */ GOTO 26
  IF ~~ THEN REPLY #39915 /* ~"Dobrze."~ */ GOTO 16
  IF ~~ THEN REPLY #39916 /* ~"Twoja pani?"~ */ GOTO 12
  IF ~~ THEN REPLY #39917 /* ~"Nie. Mam do ciebie kilka pytań..."~ */ GOTO 3
  IF ~~ THEN REPLY #39918 /* ~"Nie, nic mnie nie boli. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 12 // from: 11.2
  SAY #39919 /* ~"Och, tak." Mówi Nenny radośnie. "Pani Sława. To najwspanialsza osoba jaką znam!"~ */
  IF ~~ THEN REPLY #39920 /* ~"Opowiedz mi o Pani Sławie."~ */ GOTO 13
  IF ~~ THEN REPLY #39921 /* ~"Rozumiem. Dalej, spróbuj mi pomóc."~ */ GOTO 16
  IF ~~ THEN REPLY #39922 /* ~"Naprawdę, nie potrzebuję twojej pomocy, ale mam do ciebie kilka pytań..."~ */ GOTO 3
  IF ~~ THEN REPLY #39923 /* ~"Rozumiem, ale naprawdę nie potrzebuję twojej pomocy. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 13 // from: 12.0
  SAY #39924 /* ~"Jest taka piękna, prawda? Aż ciężko uwierzyć, że pochodzi z Sfer Niższych - jest taka miła i mądra!"~ */
  IF ~  NearbyDialog("DGrace")
~ THEN GOTO 14
  IF ~  !NearbyDialog("DGrace")
~ THEN REPLY #39925 /* ~"Co Sfery Niższe mają z tym wspólnego?"~ */ GOTO 15
  IF ~  !NearbyDialog("DGrace")
~ THEN REPLY #39926 /* ~"Rozumiem. Dalej, spróbuj mi pomóc."~ */ GOTO 16
  IF ~  !NearbyDialog("DGrace")
~ THEN REPLY #39927 /* ~"Naprawdę, nie potrzebuję twojej pomocy, ale mam do ciebie kilka pytań..."~ */ GOTO 3
  IF ~  !NearbyDialog("DGrace")
~ THEN REPLY #39928 /* ~"Rozumiem, ale naprawdę nie potrzebuję twojej pomocy. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 14 // from: 13.0
  SAY #39929 /* ~Nenny nagle zauważa przy tobie Nie-Sławę. "Och! Pani Sława!" Potem dyga, a Sława w odpowiedzi z uśmiechem kiwa głową.~ */
  IF ~~ THEN REPLY #39930 /* ~"Co Sfery Niższe mają z tym wspólnego?"~ */ GOTO 15
  IF ~~ THEN REPLY #39931 /* ~"Rozumiem. Dalej, spróbuj mi pomóc."~ */ GOTO 16
  IF ~~ THEN REPLY #39932 /* ~"Naprawdę, nie potrzebuję twojej pomocy, ale mam do ciebie kilka pytań..."~ */ GOTO 3
  IF ~~ THEN REPLY #39933 /* ~"Rozumiem, ale naprawdę nie potrzebuję twojej pomocy. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 15 // from: 13.1 14.0
  SAY #39934 /* ~"Oni wszyscy na dole są tacy *źli*. Kto by pomyślał, że Pani Sława pochodzi z takiego okropnego miejsca?"~ */
  IF ~~ THEN REPLY #39935 /* ~"Rozumiem. Dalej, spróbuj mi pomóc."~ */ GOTO 16
  IF ~~ THEN REPLY #39936 /* ~"Naprawdę, nie potrzebuję twojej pomocy, ale mam do ciebie kilka pytań..."~ */ GOTO 3
  IF ~~ THEN REPLY #39937 /* ~"Rozumiem, ale naprawdę nie potrzebuję twojej pomocy. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 16 // from: 11.1 12.1 13.2 14.1 15.0
  SAY #39938 /* ~Nenny klaska w ręce, po czym przykłada je do twego czoła.~ */
  IF ~  HPPercent(Protagonist,100)
~ THEN REPLY #39939 /* ~Pozwól jej się dotknąć.~ */ GOTO 17
  IF ~  HPPercentLT(Protagonist,100)
~ THEN REPLY #39940 /* ~Pozwól jej się dotknąć.~ */ DO ~Damage(Protagonist,RAISE,1)
~ GOTO 17
  IF ~~ THEN REPLY #39941 /* ~Nie pozwól, żeby cię dotknęła.~ */ GOTO 19
END

IF ~~ THEN BEGIN 17 // from: 16.0 16.1 19.1 29.0
  SAY #39942 /* ~Kiedy Nenny zbliża się do ciebie, zauważasz, że jej skóra lekko pachnie bzem. Delikatnie kładzie swoją rękę na twoim czole i zamyka oczy. Potem coś do siebie nuci, a ty czujesz falę ciepła przechodzącą przez całe twoje ciało.~ */
  IF ~~ THEN REPLY #39943 /* ~"Uch... dzięki. To było miłe."~ */ GOTO 18
END

IF ~~ THEN BEGIN 18 // from: 17.0
  SAY #39944 /* ~"Oczywiście! Cieszę się, że mogłam ci pomóc!" Nenny promienieje radością, wydaje się, że zaraz wybuchnie z jej nadmiaru.~ */
  IF ~~ THEN REPLY #39945 /* ~"Mam do ciebie jedno pytanie..."~ */ GOTO 3
  IF ~~ THEN REPLY #39946 /* ~"Muszę już iść. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 19 // from: 16.2
  SAY #39947 /* ~Nenny zamiera w bezruchu, jest zaskoczona, a potem lekko urażona. "Przepraszam! Przepraszam! Nie chcesz, żeby ktoś cię dotykał? Powinnam ci powiedzieć! W ten sposób działa Czuciowy Dotyk... Kładę ręce na twoim ciele - zazwyczaj w pobliżu rany, aby lepiej skoncentrować moc - a potem wyciągam z ciebie ból."~ */
  IF ~~ THEN REPLY #39948 /* ~"Czuciowy Dotyk...?"~ */ GOTO 29
  IF ~~ THEN REPLY #39949 /* ~"W takim razie zaczynaj."~ */ GOTO 17
  IF ~~ THEN REPLY #39950 /* ~"Mam do ciebie jedno pytanie..."~ */ GOTO 3
  IF ~~ THEN REPLY #39951 /* ~"Muszę już iść. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 20 // from: 9.1 10.1
  SAY #39952 /* ~"Na amnezję?" Nenny mruga oczyma, po czym weseleje. "Utrata pamięci! Masz dużo szczęścia." - mówi radośnie. "Wszystko musi być dla ciebie takie *nowe*."~ */
  IF ~~ THEN REPLY #39953 /* ~"Może i masz rację, ale ta nowość nie jest zbyt... pożądana."~ */ GOTO 21
  IF ~~ THEN REPLY #39954 /* ~"Mało mnie to obchodzi."~ */ GOTO 22
  IF ~~ THEN REPLY #39955 /* ~"Hmm... nigdy nie myślałem o tym w ten sposób."~ */ GOTO 23
  IF ~~ THEN REPLY #39956 /* ~"Wolałbym, aby pewne sprawy wyglądały bardziej znajomo."~ */ GOTO 24
END

IF ~~ THEN BEGIN 21 // from: 20.0
  SAY #39957 /* ~Dziewczyna mruga oczyma. "To brzmi bardzo *smutno*."~ */
  IF ~~ THEN REPLY #39958 /* ~"Tak... Ale mam do ciebie kilka pytań..."~ */ GOTO 3
  IF ~~ THEN REPLY #39959 /* ~"Raczej nie. Mam do ciebie kilka pytań..."~ */ GOTO 3
  IF ~~ THEN REPLY #39960 /* ~"Może... Tak czy inaczej, żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 22 // from: 20.1
  SAY #39961 /* ~"Naprawdę? Dlaczego?"~ */
  IF ~~ THEN REPLY #39962 /* ~"Bo nie. Jak można wyjaśnić uczucie?"~ */ GOTO 25
  IF ~~ THEN REPLY #39963 /* ~"Nie lubię tracić pamięci, a śmierć nie jest przyjemnym doświadczeniem."~ */ GOTO 28
  IF ~~ THEN REPLY #39964 /* ~"Bez podstawy, od której mógłbym zacząć odbudowę - bez wiedzy o tym, kim jestem - nie mogę posuwać się dalej."~ */ GOTO 28
  IF ~~ THEN REPLY #39965 /* ~"Po prostu... Zresztą nieważne. Mam do ciebie jedno pytanie..."~ */ GOTO 3
  IF ~~ THEN REPLY #39966 /* ~"Nie chcę już dłużej z tobą rozmawiać. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 23 // from: 20.2
  SAY #39967 /* ~Nenny z zadowoleniem klaszcze w ręce. "Tak się cieszę, że to ja ci to uświadomiłam! Słyszałam, że właśnie na tym polega rola Czuciowca... Żeby obdarzać innych nowymi doświadczeniami."~ */
  IF ~~ THEN REPLY #39968 /* ~"Czuciowca?"~ */ GOTO 26
  IF ~~ THEN REPLY #39969 /* ~"Mam kilka pytań..."~ */ GOTO 3
  IF ~~ THEN REPLY #39970 /* ~"Muszę już iść. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 24 // from: 20.3
  SAY #39971 /* ~"Jakie?" Dziewczyna uśmiecha się, po czym chichocze do siebie. "To znaczy, na przykład co?"~ */
  IF ~  GlobalGT("Know_Player_Killer","GLOBAL",0)
~ THEN REPLY #39972 /* ~"Po pierwsze, osoba, która mnie zamordowała."~ */ GOTO 28
  IF ~  NearbyDialog("Dmorte")
~ THEN REPLY #39973 /* ~"Nie Morte. On jest zbyt znajomy."~ */ EXTERN ~DMORTE~ 424
  IF ~  CheckStatGT(Protagonist,15,INT)
~ THEN REPLY #39974 /* ~"Ciekawi mnie, czy znałem wcześniej któregoś z moich towarzyszy?"~ */ GOTO 28
  IF ~~ THEN REPLY #39975 /* ~"Po prostu... Zresztą mniejsza z tym. Mam do ciebie jedno pytanie..."~ */ GOTO 3
  IF ~~ THEN REPLY #39976 /* ~"Nie chcę już o tym rozmawiać. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 25 // from: 22.0
  SAY #39977 /* ~"Och, można spróbować!" Mówi Nenny radośnie. "Spróbuj! Dalej, wiem, że potrafisz."~ */
  IF ~~ THEN REPLY #39978 /* ~"Nie lubię tracić pamięci, a śmierć nie jest przyjemnym doświadczeniem."~ */ GOTO 28
  IF ~~ THEN REPLY #39979 /* ~"Bez podstawy, od której mógłbym zacząć odbudowę - bez wiedzy o tym, kim jestem - nie mogę posuwać się dalej."~ */ GOTO 28
  IF ~~ THEN REPLY #39980 /* ~"Po prostu... Zresztą mniejsza z tym. Mam do ciebie jedno pytanie..."~ */ GOTO 3
  IF ~~ THEN REPLY #39981 /* ~"Nie chcę już o tym rozmawiać. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 26 // from: 11.0 23.0
  SAY #39982 /* ~"Czuciowcy! Och, oni są tak bardzo *rozmarzeni*. Wierzą, że pełne zrozumienie można osiągnąć tylko przez doświadczenie jak najwięcej rzeczy w wieloświecie! Spróbuj tego, posłuchaj tamtego, poczuj to, popatrz na tamto... a przecież świat jest pełen tak *wielu* różnych rzeczy, jest tak ogromy, że czasami trudno wpochłonąć to wszystko."~ */
  IF ~~ THEN REPLY #39983 /* ~"Mam jeszcze kilka pytań..."~ */ GOTO 3
  IF ~~ THEN REPLY #39984 /* ~"Nie mam już więcej pytań. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 27 // from:
  SAY #39985 /* ~Nenny chichocze.~ */
  IF ~~ THEN REPLY #39986 /* ~"Mam kilka pytań..."~ */ GOTO 3
  IF ~~ THEN REPLY #39987 /* ~"Żegnaj, Nenny."~ */ EXIT
END

IF ~~ THEN BEGIN 28 // from: 22.1 22.2 24.0 24.2 25.0 25.1
  SAY #39988 /* ~"Hmm." Nenny marszczy brwi, jakby ciężko myślała. "To chyba ma sens. Naprawdę chciałabym ci pomóc!"~ */
  IF ~~ THEN REPLY #39989 /* ~"No cóż, *mogłabyś* odpowiedzieć mi na jedno pytanie..."~ */ GOTO 3
  IF ~~ THEN REPLY #39990 /* ~"Ja też. Żegnaj, Nenny..."~ */ EXIT
END

IF ~~ THEN BEGIN 29 // from: 19.0
  SAY #39991 /* ~"Tak! Wszyscy Czuciowcy potrafią to robić, ale ja jeszcze nie jestem Czuciowcem, więc nie jestem w tym za dobra. Kiedy już skończę szkolenie, będę mogła przenosić ból z innych na siebie - i w ten sposób im pomagać, no i w ogóle!"~ */
  IF ~~ THEN REPLY #39992 /* ~"W takim razie zaczynaj."~ */ GOTO 17
  IF ~~ THEN REPLY #39993 /* ~"Mam do ciebie jedno pytanie..."~ */ GOTO 3
  IF ~~ THEN REPLY #39994 /* ~"Muszę już iść. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 30 // from: 3.4
  SAY #39995 /* ~"Nie mam pojęcia! Przepraszam. Hmmm. Może powinieneś zapytać Julię. Ona i Kesai były kiedyś dobrymi przyjaciółkami. Potem Julia spotkała Monteka i teraz tyle ze sobą nie rozmawiają."~ */
  IF ~~ THEN REPLY #39996 /* ~"Mam jeszcze jedno pytanie, Nenny..."~ */ GOTO 3
  IF ~~ THEN REPLY #39997 /* ~"Nie mam już więcej pytań. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 31 // from: 3.2 3.3
  SAY #39998 /* ~"Och, Ecco! Tak, ona jest bardzo tajemnicza, *prawda*?! Czy wiesz, że ona nigdy nic nie mówi? Serio!" Nenny przybliża się do ciebie i zniża głos. "Według mnie, ktoś musiał zranić jej uczucia na tyle ciężko, że prawdopodobnie już nigdy nie będzie mówić! Założę się, że Dolora wie, bo czasami rozmawia z ostatnim kochankiem, którego miała Ecco, gdy jeszcze umiała mówić!"~ */
  IF ~~ THEN REPLY #39999 /* ~"Mam jeszcze jedno pytanie, Nenny..."~ */ GOTO 3
  IF ~~ THEN REPLY #40000 /* ~"Nie mam już więcej pytań. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 32 // from: 3.0
  SAY #40001 /* ~"Rozmawiam z *tobą*, głuptasie!" Dziewczyna chichocze i lekko szturcha cię w brzuch. "Tak jak mówię do *wszystkich* klientów. Przecież wszystkie kurtyzany tak robią, po to jest ten przybytek! Żeby uczyć się innych sposobów rozmowy i dzielić się swoimi doświadczeniami i odczuciami z innymi."~ */
  IF ~~ THEN REPLY #40002 /* ~"Mam jeszcze jedno pytanie, Nenny..."~ */ GOTO 3
  IF ~~ THEN REPLY #40003 /* ~"Nie mam już więcej pytań. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 33 // from: 3.1
  SAY #40004 /* ~"Hm... oczywiście, że mogę! Przybytek Zaspokajania Żądz Intelektualnych jest szkołą założoną przez Panią Nie-Sławę. Tutejsze kurtyzany - tak jak i ja! - uczą się różnych sposobów rozmawiania z ludźmi i wszystkiego, dzięki czemu mogłybyśmy poznać lepiej siebie i innych. Strasznie mi się tu podoba... To nieskończona fala doświadczeń, która wypełnia moją głowę nowymi, świeżymi pomysłami!"~ */
  IF ~  NearbyDialog("DMorte")
~ THEN EXTERN ~DMORTE~ 425
  IF ~  !NearbyDialog("DMorte")
~ THEN REPLY #40006 /* ~"Mam jeszcze jedno pytanie, Nenny..."~ */ GOTO 3
  IF ~  !NearbyDialog("DMorte")
~ THEN REPLY #40007 /* ~"Nie mam już więcej pytań. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 34 // from: 3.6 3.8
  SAY #40008 /* ~"Hmm." Nenny marszczy brwi. "Ja... uch..."~ */
  IF ~~ THEN REPLY #40009 /* ~"Co takiego?"~ */ GOTO 35
END

IF ~~ THEN BEGIN 35 // from: 34.0
  SAY #40010 /* ~"Och, po prostu nie potrafię! Nie potrafię powiedzieć o nikim nic złego! Po prostu nie jestem w tym dobra!"~ */
  IF ~~ THEN REPLY #40011 /* ~"Wskazanie złodzieja nie jest złą rzeczą, Nenny."~ */ GOTO 36
  IF ~~ THEN REPLY #40012 /* ~"Zapomnij o tym... Mam jeszcze jedno pytanie."~ */ GOTO 3
  IF ~~ THEN REPLY #40013 /* ~"Mniejsza z tym, Nenny. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 36 // from: 35.0
  SAY #40014 /* ~"Och, ale ja nie wiem, czy ona jest złodziejem..." Nenny przygryza usta i patrzy na ciebie proszącym wzrokiem, jak gdyby chciała, żeby zostawić ten temat w spokoju.~ */
  IF ~~ THEN REPLY #40015 /* ~"Słuchaj, może byś *spróbowała* powiedzieć o niej coś niemiłego."~ */ GOTO 37
  IF ~~ THEN REPLY #40016 /* ~"Zapomnij o tym... Mam jeszcze jedno pytanie."~ */ GOTO 3
  IF ~~ THEN REPLY #40017 /* ~"Mniejsza z tym, Nenny. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 37 // from: 36.0
  SAY #40018 /* ~"Och, dobrze." Nenny przykrywa ręką usta i marszczy brwi, jakby wręcz chciała z tym przesadzić. Powstrzymujesz się, żeby nie wybuchnąć śmiechem. "Oooooch, *bardzo* jej nie lubię." Zatrzymuje się na chwilę, po czym patrzy na ciebie kontem oka, jakby chciała ocenić twoją reakcję. "Czy to było przekonujące?"~ */
  IF ~~ THEN REPLY #40019 /* ~"Nie, niezupełnie..."~ */ GOTO 38
  IF ~~ THEN REPLY #40020 /* ~"Nie. Zapomnij o tym... Mam do ciebie jeszcze jedno pytanie."~ */ GOTO 3
  IF ~~ THEN REPLY #40021 /* ~"Mniejsza z tym, Nenny. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 38 // from: 37.0
  SAY #40022 /* ~Nenny marszczy brwi. "Wiedziałam, że nie będę w tym dobra!" Patrzy na ciebie załamana. "Czy zdajesz sobie sprawę, jak *trudno* jest powiedzieć coś złego o innym człowieku?! Przecież tak nie można."~ */
  IF ~~ THEN REPLY #40023 /* ~"Może chcesz poćwiczyć na mnie, Nenny?"~ */ GOTO 39
  IF ~~ THEN REPLY #40024 /* ~"Zapomnij o tym... Mam jeszcze jedno pytanie."~ */ GOTO 3
  IF ~~ THEN REPLY #40025 /* ~"Mniejsza z tym, Nenny. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 39 // from: 38.0
  SAY #40026 /* ~"Chyba mogłabym spróbować..." Nenny nie wygląda przekonująco. "Ty wielki, ohydny brutalu!" Zakrywa ręką usta. "Draniu!" Patrzy na ciebie. "Jak mi poszło?"~ */
  IF ~~ THEN REPLY #40027 /* ~"Powinnaś mocniej podkreślić słowo 'brutalu'."~ */ GOTO 40
  IF ~~ THEN REPLY #40028 /* ~"Spróbuj mnie uderzyć."~ */ GOTO 41
END

IF ~~ THEN BEGIN 40 // from: 39.0
  SAY #40029 /* ~"Ty wielki, ohydny *brutalu*!"~ */
  IF ~~ THEN REPLY #40030 /* ~"Lepiej. A teraz mnie uderz."~ */ GOTO 41
END

IF ~~ THEN BEGIN 41 // from: 39.1 40.0
  SAY #40031 /* ~Nenny zatyka ręką swoje usta. Wygląda na zaszokowaną. "Och, nie mogłabym! Nie mogę!" Mruga oczyma. "Nawet nie wiem, jak się kogoś bije."~ */
  IF ~~ THEN REPLY #40032 /* ~"No, dalej. Jeśli nie możesz inaczej, zrób to lekko. Pamiętaj: jestem złym, ohydnym brutalem. Zasługuję na to."~ */ DO ~SetAnimState("Nenny",ANIM_MIMEATTACK1)
~ GOTO 42
END

IF ~~ THEN BEGIN 42 // from: 41.0
  SAY #40033 /* ~Nenny uderza cię tak, że prawie tego nie czujesz. Ciągle jest zaszokowana i przestraszona, czy aby cię nie zraniła. "Och, przepraszam! Czy to bolało? Powiedz, że nic ci się nie stało!"~ */
  IF ~~ THEN REPLY #40034 /* ~"No dalej, Nenny, pokaż na co się stać. Możesz powiedzieć coś złego... po prostu daj się ponieść."~ */ GOTO 43
  IF ~~ THEN REPLY #40035 /* ~"Au! O psiakość, jeszcze nikt mi tak silno nie przyłożył!"~ */ GOTO 49
END

IF ~~ THEN BEGIN 43 // from: 42.0
  SAY #40036 /* ~"Och... chodziło mi o, och!" Nenny prostuje się, jakby chciała być jak najwyższa, zaciska dłonie w pięści, kładzie je na biodrach, i marszczy twarz w grymasie. "Och, niech cię szlag! Należało ci się za wszystkie poniżenia, jakich przez ciebie doświadczyłam! Wychodzisz późno w nocy." Jej oczy mierzą cię od góry do dołu. "Wdajesz się w bójki i teraz cały jesteś w bliznach! Co pomyślą sobie dzieciaki, co?!"~ */
  IF ~~ THEN REPLY #40037 /* ~"Wspaniale."~ */ GOTO 44
  IF ~~ THEN REPLY #40038 /* ~"Ee... dzieciaki?"~ */ GOTO 48
END

IF ~~ THEN BEGIN 44 // from: 43.0 51.0
  SAY #40039 /* ~"Ach, nie praw mi 'wspaniałości', jakbym była jakimś lizusem czekającym na twoją aprobatę! Należę tylko do siebie i odejdę od ciebie, jeśli nie zobaczę, że trochę bardziej ci na mnie zależy!"~ */
  IF ~~ THEN REPLY #40040 /* ~"Dobrze... Dałaś się ponieść całkiem nieźle, Nenny."~ */ DO ~SetAnimState("Nenny",ANIM_MIMEATTACK2)
~ GOTO 45
  IF ~~ THEN REPLY #40041 /* ~"Ee... uspokój się. Już czas, żeby gniew minął."~ */ GOTO 46
END

IF ~~ THEN BEGIN 45 // from: 44.0
  SAY #40042 /* ~Nenny uderza cię pięścią. Prawie tego nie czujesz. "A masz." Uderza cię jeszcze raz. "A masz!" Uderza cię raz jeszcze, szybko zamieniając się w mały wir wywijający pięściami.~ */
  IF ~~ THEN REPLY #40043 /* ~"Dobrze, dobrze... Już czas, żeby gniew ci minął."~ */ GOTO 46
END

IF ~~ THEN BEGIN 46 // from: 44.1 45.0 48.0
  SAY #40044 /* ~Nenny wzdycha zmęczona. "Aaach. To było łatwiejsze niż myślałam!"~ */
  IF ~~ THEN REPLY #40045 /* ~"Nie wątpię."~ */ DO ~SetGlobal("Nenny_Angry","AR0605",1)
AddexperienceParty(5000)
~ GOTO 47
END

IF ~~ THEN BEGIN 47 // from: 46.0
  SAY #40046 /* ~"A następnym razem pójdzie mi jeszcze lepiej! Jestem taka podniecona, że udało mi się nauczyć czegoś nowego... dziękuję!"~ */
  IF ~~ THEN REPLY #40047 /* ~"Oczywiście. Mam do ciebie jedno pytanie..."~ */ GOTO 3
  IF ~~ THEN REPLY #66337 /* ~"Oczywiście. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 48 // from: 43.1
  SAY #40048 /* ~"Co?!" Złość Nenny staje się jeszcze większa. "Czy zapomniałeś o naszych dzieciach?! Czy tak cię zaćmił ten bełt, że nawet nie pamiętasz o naszych *dzieciach*?!" Nenny wyrzuca ręce do góry w geście zdenerwowania. "Jesteś do kitu, do niczego, i w ogóle nie powiem jeszcze do czego."~ */
  IF ~~ THEN REPLY #40049 /* ~"Ee... uspokój się. Już czas, żeby gniew minął."~ */ GOTO 46
END

IF ~~ THEN BEGIN 49 // from: 42.1
  SAY #40050 /* ~Oczy dziewczyny rozszerzają się, gdy kulisz się w udawanym bólu. "O rany! Och, nie chciałam uderzyć cię tak silno! Przepraszam! Przepraszam!"~ */
  IF ~~ THEN REPLY #40051 /* ~"Nigdy nie mów 'przepraszam'. Powiedz 'Lepiej się do tego przyzwyczaj'."~ */ GOTO 50
END

IF ~~ THEN BEGIN 50 // from: 49.0
  SAY #40052 /* ~Nenny patrzy na ciebie. "Och... ee, lepiej się do tego przyzwyczaj."~ */
  IF ~~ THEN REPLY #40053 /* ~"Kiedy to mówisz, zmarszcz brwi. Powiedz to sucho, z przekonaniem."~ */ GOTO 51
END

IF ~~ THEN BEGIN 51 // from: 50.0
  SAY #40054 /* ~Nenny prostuje się, jakby chciała być jak najwyższa, zaciska dłonie w pięści, kładzie je na biodrach, i marszczy twarz w grymasie. "Lepiej się do tego przyzwyczaj!"~ */
  IF ~~ THEN REPLY #40055 /* ~"Wspaniale."~ */ GOTO 44
END

IF ~~ THEN BEGIN 52 // from: 3.7
  SAY #40056 /* ~"Może... Widziałam tę podłą, podłą Marissę, jak pewnej nocy wymykała się z pokoju Vivian. Nie mówię, że ona go wzięła, ale wiem, że Marissa nie jest zbyt miłą osobą, a to na pewno brzmi podejrzanie, co? Na twoim miejscu spytałabym ją." Nenny kiwa do ciebie głową.~ */
  IF ~~ THEN REPLY #40057 /* ~"Dzięki, Nenny. Mam jeszcze jedno pytanie..."~ */ GOTO 3
  IF ~~ THEN REPLY #40058 /* ~"Nie mam już więcej pytań. Żegnaj, Nenny."~ */ EXIT
END

IF ~~ THEN BEGIN 53 // from: 3.9
  SAY #40059 /* ~"Założę się, że tak. Pewnej nocy widziałam, jak Kimasxi Żmijowy Język wymykała się z pokoju Marissy. Obie są bardzo złe, ale Kimasxi jest okropna! Tak czy inaczej, najpierw porozmawiałabym z nią."~ */
  IF ~~ THEN REPLY #40060 /* ~"Dzięki, Nenny. Mam jeszcze jedno pytanie..."~ */ GOTO 3
  IF ~~ THEN REPLY #40061 /* ~"Nie mam już więcej pytań. Żegnaj, Nenny."~ */ EXIT
END

IF ~~ THEN BEGIN 54 // from: 3.5
  SAY #40062 /* ~Oczy dziewczyny nagle się rozszerzają. "Och! To prawda! Pewnego razu widziałam, jak do pokoju Kimasxi zakradł się pewien mężczyzna, gdy ona rozmawiała z klientem... Cały dzień obeserwowałam drzwi, ale on nigdy, nigdy nie wyszedł! Czy to nie dziwne? Wątpię, żeby wyszedł przez okno, więc nigdy się nie domyśliłam, gdzie sobie poszedł. A potem zupełnie o tym zapomniałam! Dziwne, co?"~ */
  IF ~~ THEN REPLY #40063 /* ~"Owszem... Mam jeszcze jedno pytanie..."~ */ GOTO 3
  IF ~~ THEN REPLY #40064 /* ~"Masz rację. Żegnaj, Nenny."~ */ EXIT
END

IF ~  Global("Nenny","GLOBAL",1)
~ THEN BEGIN 55 // from:
  SAY #40065 /* ~"Dobrze trafiłeś, dobry panie! Jestem Nenny! Jak się dzisiaj miewa... Och, już się znamy!" Nenny chichocze i obdarza cię radosnym uśmiechem. "Przepraszam! *Wiedziałam* że wyglądasz mi znajomo..."~ */
  IF ~~ THEN REPLY #40066 /* ~"W porządku, Nenny. Mam do ciebie kilka pytań..."~ */ GOTO 3
  IF ~~ THEN REPLY #40067 /* ~"Tylko tędy przechodziłem. Żegnaj, Nenny."~ */ EXIT
END
