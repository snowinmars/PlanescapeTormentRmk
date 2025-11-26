// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DZ1041.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\pl_PL\dialog.tlk
// dialogF  : (none)

BEGIN ~DZ1041~

IF ~  Global("Bei","GLOBAL",0)
~ THEN BEGIN 0 // from:
  SAY #6573 /* ~Te ponownie ożywione zwłoki mężczyzny mają numer "1041" wygrawerowany na czole. Pomimo naprężonej i wysuszonej skóry jest rzeczą oczywistą, że kiedyś jego rysy były raczej 'egzotyczne'. Jego wargi zszyto razem - najpewniej po to, aby nie mógł cały czas jęczeć - a całe ciało śmierdzi formaliną.~ */
  IF ~  Global("Zombie_Chaotic","GLOBAL",0)
~ THEN REPLY #6576 /* ~"Więc... widziałeś, aby działo się tu coś ciekawego?"~ */ DO ~IncrementGlobal("Law","GLOBAL",-1)
SetGlobal("Zombie_Chaotic","GLOBAL",1)
~ GOTO 1
  IF ~  Global("Zombie_Chaotic","GLOBAL",1)
~ THEN REPLY #6577 /* ~"Więc... widziałeś, aby działo się tu coś ciekawego?"~ */ GOTO 1
  IF ~  Global("Vaxis_Exposed","GLOBAL",1)
~ THEN REPLY #6578 /* ~"Przecież wiem, że nie jesteś zombie. Nikogo nie oszukasz."~ */ GOTO 1
  IF ~  Global("Speak_with_Dead","GLOBAL",1)
~ THEN REPLY #6579 /* ~Posłuż się swoją umiejętnością Gadaj-Kości-Opowieści.~ */ GOTO 2
  IF ~~ THEN REPLY #6580 /* ~Posłuż się swoją umiejętnością Gadaj-Kości-Opowieści.~ */ GOTO 37
  IF ~~ THEN REPLY #6581 /* ~"Miło było z tobą pogadać. Żegnaj."~ */ EXIT
  IF ~~ THEN REPLY #9095 /* ~Zostaw truposza w spokoju.~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0 0.1 0.2
  SAY #6574 /* ~Trup wciąż się w ciebie wpatruje.~ */
  IF ~~ THEN REPLY #6582 /* ~Zostaw truposza w spokoju.~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 0.3
  SAY #6575 /* ~Trup zatacza się przez chwilę, podczas gdy jego duch ponownie wchodzi do swego niegdysiejszego ciała. Jego migdałowe oczy stają się raz jeszcze czarne, zaś blade ciało staje się na powrót lekko brązowe. Trup prostuje się, strzepując proch z ubrania.

W końcu, dostrzegając osobę, która się do niego zwróciła, duch wpatruje się w ciebie z zaciekawieniem, a potem lekko się kłania.~ */
  IF ~~ THEN REPLY #6583 /* ~Ukłoń się i ty.~ */ DO ~SetGlobal("Bei","GLOBAL",1)
~ GOTO 3
  IF ~~ THEN REPLY #9096 /* ~"Mam kilka pytań..."~ */ DO ~SetGlobal("Bei","GLOBAL",1)
~ GOTO 4
  IF ~~ THEN REPLY #9097 /* ~Zostaw ducha w spokoju.~ */ DO ~SetGlobal("Bei","GLOBAL",1)
~ EXIT
END

IF ~~ THEN BEGIN 3 // from: 2.0
  SAY #9060 /* ~Duch uśmiecha się przez chwilę, jakby z zadowoleniem. Przyjmuje postawę dystyngowaną, trzymając jedną rękę za plecami, i zaczyna mówić delikatnie, melodyjnie:

"Suiang jianne shyr nan bye yih nan;
"Dong feng wu lih bay hua tsarn;
"Chuen tsarn daw syy sy fang jinn;
"Lah Jiuh cherng huei ley shyy gan."

To powiedziawszy, wydaje się być zadowolony z siebie i cierpliwie oczekuje twojej odpowiedzi.~ */
  IF ~~ THEN REPLY #9098 /* ~"Ja... eee..."~ */ GOTO 5
  IF ~~ THEN REPLY #9099 /* ~"Nie mam pojęcia, co powiedziałeś... Czy w ogóle rozumiesz moje słowa?"~ */ GOTO 5
  IF ~~ THEN REPLY #9100 /* ~"Nie rozumiem cię. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 2.1
  SAY #9061 /* ~Otwierasz usta, aby zadać pytanie, ale zanim cokolwiek powiesz, duch zaczyna mówić delikatnie, melodyjnie:

"Suiang jianne shyr nan bye yih nan;
"Dong feng wu lih bay hua tsarn;
"Chuen tsarn daw syy sy fang jinn;
"Lah Jiuh cherng huei ley shyy gan."

To powiedziawszy, wydaje się być zadowolony z siebie i cierpliwie oczekuje twojej odpowiedzi.~ */
  IF ~~ THEN REPLY #9101 /* ~"Ja... eee..."~ */ GOTO 5
  IF ~~ THEN REPLY #9102 /* ~"Nie mam pojęcia, co powiedziałeś... Czy w ogóle rozumiesz moje słowa?"~ */ GOTO 5
  IF ~~ THEN REPLY #9103 /* ~"Nie rozumiem cię. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 3.0 3.1 4.0 4.1
  SAY #9062 /* ~Duch zatrzymuje się na chwilę, jak gdyby dla zebrania myśli. Następnie zaczyna mówić głosem dystyngowanym, aczkolwiek z ciężkim akcentem. "Musisz mi wybaczyć, czcigodny panie. Wiele czasu upłynęło, odkąd posługiwałem się twoim językiem. Niewątpliwie duch mój został tu wezwany, aby odpowiedzieć na twoje pytania; czegóż to pragniesz się ode mnie dowiedzieć?"~ */
  IF ~~ THEN REPLY #9104 /* ~"Kim jesteś?"~ */ GOTO 6
  IF ~~ THEN REPLY #9105 /* ~"Skąd jesteś?"~ */ GOTO 7
  IF ~~ THEN REPLY #9106 /* ~"W jaki sposób znalazłeś się w tym miejscu? To znaczy, jako zombie?"~ */ GOTO 8
  IF ~~ THEN REPLY #9107 /* ~"Gdzie ty... gdzie mieszka teraz twój... duch?"~ */ GOTO 11
  IF ~~ THEN REPLY #9108 /* ~"Co wiesz o tym miejscu?"~ */ GOTO 9
  IF ~  Global("Pharod","GLOBAL",0)
~ THEN REPLY #9109 /* ~"Czy znasz kogoś o imieniu Farod?"~ */ GOTO 10
  IF ~~ THEN REPLY #9110 /* ~"Niczego, nie przejmuj się."~ */ EXIT
END

IF ~~ THEN BEGIN 6 // from: 5.0 14.0
  SAY #9063 /* ~"Ciężko mi powiedzieć, kim jestem... łatwiej kim *byłem*. Byłem znany jako Zhuang Bei, nauczyciel i ochroniarz Liu Xixi, córki Cenzora Chi'an."~ */
  IF ~~ THEN REPLY #9111 /* ~"Nauczyciel *i* ochroniarz?"~ */ GOTO 12
  IF ~~ THEN REPLY #9112 /* ~"Hmmm. To brzmi imponująco."~ */ GOTO 13
  IF ~~ THEN REPLY #9113 /* ~"Rozumiem. Mam więcej pytań..."~ */ GOTO 14
  IF ~~ THEN REPLY #9114 /* ~"To wszystko, co chciałem wiedzieć. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 7 // from: 5.1 14.1
  SAY #9064 /* ~"Pochodzę z miejsca znanego jako Shou Lung... miejsca, które niegdyś uważałem za środek Wszechświata." Wydaje się, że sama ta myśl napełnia go umiarkowanym rozbawieniem. "Ile miejsc, tyle światów. Kiedyś uważałem się za naprawdę uczonego człowieka, jednakże zaiste niewiele wiedziałem w chwili śmierci..."~ */
  IF ~~ THEN REPLY #9115 /* ~"W jaki sposób przybyłeś z tego 'Shou Lung?'"~ */ GOTO 16
  IF ~~ THEN REPLY #9116 /* ~"Rozumiem. Mam więcej pytań..."~ */ GOTO 14
  IF ~~ THEN REPLY #9117 /* ~"To wszystko, co chciałem wiedzieć. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 8 // from: 5.2 14.2
  SAY #9065 /* ~"Zostałem zamordowany przez jednego z ludzi, którzy wpadli wraz ze mną do tego świata. Polowałem na niego w tym mieście od wielu, wielu tygodni - to właśnie wtedy nauczyłem się twojego języka - ale on odnalazł mnie pierwszy. Był zawodowym zabójcą. Dopadł mnie znienacka i zamordował we śnie."~ */
  IF ~~ THEN REPLY #9118 /* ~"Wpadliście do tego świata?"~ */ GOTO 16
  IF ~~ THEN REPLY #9119 /* ~"Polowałeś na zabójcę?"~ */ GOTO 16
  IF ~~ THEN REPLY #9120 /* ~"Rozumiem, ale czy wiesz, w jaki sposób twoje zwłoki zaczęły tutaj pracować?"~ */ GOTO 17
  IF ~~ THEN REPLY #9121 /* ~"Nieźle władasz językiem jak na kogoś, kto miał tak niewiele czasu na naukę."~ */ GOTO 18
  IF ~~ THEN REPLY #9122 /* ~"Rozumiem. Mam więcej pytań..."~ */ GOTO 14
  IF ~~ THEN REPLY #9123 /* ~"To wszystko, co chciałem wiedzieć. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 9 // from: 5.4 14.4
  SAY #9066 /* ~"Ten budynek? Nic takiego; słyszałem o nim, wiedziałem, że moje ciało będzie tu służyć, ale to wszystko... Niewiele więcej wiem o tym wielkim mieście, 'Sigil'. Całe tygodnie spędziłem w nim szukając człowieka, z którym wpadłem do tego świata, i ucząc się tutejszego języka; mimo że było to dla mnie bolesne, nie miałem czasu na nic innego. A tyle mogłem się nauczyć od tych miliardów cudów, których pełno w takim miejscu..."~ */
  IF ~~ THEN REPLY #9124 /* ~"Twoje ciało miało tutaj służyć? W jaki sposób do tego doszło?"~ */ GOTO 17
  IF ~~ THEN REPLY #9125 /* ~"Wpadliście do tego świata?"~ */ GOTO 16
  IF ~~ THEN REPLY #9126 /* ~"Nieźle władasz językiem jak na kogoś, kto miał tak niewiele czasu na naukę."~ */ GOTO 18
  IF ~~ THEN REPLY #9127 /* ~"Rozumiem. Mam więcej pytań..."~ */ GOTO 14
  IF ~~ THEN REPLY #9128 /* ~"Doskonale. Może znów porozmawiamy."~ */ EXIT
END

IF ~~ THEN BEGIN 10 // from: 5.5 14.5
  SAY #9067 /* ~"Nie, to imię nic mi nie mówi. Przykro mi, że nie mogłem być tutaj pomocny."~ */
  IF ~~ THEN REPLY #9129 /* ~"Rozumiem. Mam więcej pytań..."~ */ GOTO 14
  IF ~~ THEN REPLY #9130 /* ~"Doskonale. Może znów porozmawiamy."~ */ EXIT
END

IF ~~ THEN BEGIN 11 // from: 5.3 14.3
  SAY #9068 /* ~Najwyraźniej duch odczuwa chwilowy ból. "Ja... Mój duch zamieszkuje królestwo Znakomitego Sędziego pokoju, Yen-Wang-Yeh: Pałac Sądu."~ */
  IF ~~ THEN REPLY #9131 /* ~"Czy coś jest nie tak? Czy to takie złe miejsce?"~ */ GOTO 15
  IF ~~ THEN REPLY #9132 /* ~"Rozumiem. Mam więcej pytań..."~ */ GOTO 14
  IF ~~ THEN REPLY #9133 /* ~"To wszystko, co chciałem wiedzieć. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 12 // from: 6.0 16.1
  SAY #9069 /* ~"Tak. Tam, skąd się wywodzę, nie jest to niczym niezwykłym. Moim obowiązkiem było trwać cały czas przy Panience Liu, nie tylko chroniąc ją przed wszelkim niebezpieczeństwem, ale także kształcąc i wychowując ją. Widzisz, cieszyłem się dobrą reputacją zarówno jako uczony, jak i szermierz. Chociaż być może przysłużyłbym się lepiej mojej pani, gdybym był lepszym szermierzem..."~ */
  IF ~~ THEN REPLY #9134 /* ~"Przysłużyłbyś się jej lepiej? Czy w jakikolwiek sposób ją zawiodłeś?"~ */ GOTO 16
  IF ~~ THEN REPLY #9135 /* ~"Być może. Mam więcej pytań..."~ */ GOTO 14
  IF ~~ THEN REPLY #9136 /* ~"To wszystko, co chciałem wiedzieć. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 13 // from: 6.1
  SAY #9070 /* ~"Imponująco? Tak, być może nawet za bardzo, jak dla mnie. Ja... zawiodłem Panienkę Liu oraz Cenzora."~ */
  IF ~~ THEN REPLY #9137 /* ~"Jak to?"~ */ GOTO 16
  IF ~~ THEN REPLY #9138 /* ~"Mam więcej pytań..."~ */ GOTO 14
  IF ~~ THEN REPLY #9139 /* ~"Rozumiem. Być może znów porozmawiamy."~ */ EXIT
END

IF ~~ THEN BEGIN 14 // from: 6.2 7.1 8.4 9.3 10.0 11.1 12.1 13.1 15.2 17.1 18.0 19.0 20.1 21.1 22.0 23.1 24.0 25.0 26.0 27.1 28.0 29.0 30.0 31.2 32.1 33.2 34.1 35.2 36.0 37.0 38.1
  SAY #9071 /* ~Duch kiwa potakująco głową, co jest dość nieoczekiwanie pełnym wdzięku ruchem, jak na takie pomarszczone zwłoki. "Proszę, pytaj o co chcesz."~ */
  IF ~~ THEN REPLY #9140 /* ~"Kim jesteś?"~ */ GOTO 6
  IF ~~ THEN REPLY #9141 /* ~"Skąd jesteś?"~ */ GOTO 7
  IF ~~ THEN REPLY #9142 /* ~"W jaki sposób znalazłeś się w tym miejscu? To znaczy, jako zombie?"~ */ GOTO 8
  IF ~~ THEN REPLY #9143 /* ~"Gdzie ty... gdzie mieszka teraz twój... duch?"~ */ GOTO 11
  IF ~~ THEN REPLY #9144 /* ~"Co wiesz o tym miejscu?"~ */ GOTO 9
  IF ~  Global("Pharod","GLOBAL",0)
~ THEN REPLY #9145 /* ~"Czy znasz kogoś o imieniu Farod?"~ */ GOTO 10
  IF ~~ THEN REPLY #9146 /* ~"O czym to mówiłeś, kiedy pojawiłeś się po raz pierwszy?"~ */ GOTO 26
  IF ~~ THEN REPLY #9147 /* ~"Nieważne. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 15 // from: 11.0
  SAY #9072 /* ~"No cóż, widzisz..." Duch przerywa na chwilę, aby się zastanowić, zacierając wyschnięte dłonie. "Kiedy przybyłem, po krótkim oczekiwaniu miałem być przeniesiony do mego ostatecznego, *prawdziwego* celu podróży. Jednakże, w trakcie przeprowadzania mnie przez Pałac, wytworzyło się jakieś zamieszanie i zostałem sam w bocznym pokoju. Obiecano mi, że za chwilę ktoś się mną zajmie."~ */
  IF ~~ THEN REPLY #9148 /* ~"I...?"~ */ GOTO 19
  IF ~~ THEN REPLY #9149 /* ~"Ostateczny cel podróży? Gdzie miałeś być wysłany?"~ */ GOTO 20
  IF ~~ THEN REPLY #9150 /* ~"Chwileczkę... Mam inne pytania, zanim będziesz opowiadał dalej."~ */ GOTO 14
  IF ~~ THEN REPLY #9151 /* ~"Może reszty posłucham następnym razem. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 16 // from: 7.0 8.0 8.1 9.1 12.0 13.0
  SAY #9073 /* ~"Opowiem ci całą historię. Jako nauczyciel i ochroniarz Liu Xixi, zajmowałem się naturalnie zarówno jej wykształceniem, jak i ochroną. Pewnego pięknego wieczoru staliśmy sobie na balkonie nad Dziedzińcem, gdzie uczyłem ją o rozmaitych gwiazdozbiorach."~ */
  IF ~~ THEN REPLY #9152 /* ~"Mów dalej, proszę."~ */ GOTO 21
  IF ~~ THEN REPLY #9153 /* ~"Nauczyciel *i* ochroniarz?"~ */ GOTO 12
  IF ~~ THEN REPLY #9154 /* ~"Może reszty posłucham następnym razem. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 17 // from: 8.2 9.0
  SAY #9074 /* ~"Ach, to. Pewnej nocy podeszła do mnie młoda dziewczyna na ulicy; była ona z organizacji o nazwie Grabarze, tej samej, która opiekuje się tym kompleksem budowli... Zaproponowała mi, aby - w zamian za małą sumkę - moje ciało mogło być... używane... po mojej śmierci."~ */
  IF ~~ THEN REPLY #9155 /* ~"I nie wydało ci się to trochę dziwne?"~ */ GOTO 22
  IF ~~ THEN REPLY #9156 /* ~"Rozumiem. Następne pytanie, jeśli można..."~ */ GOTO 14
  IF ~~ THEN REPLY #9157 /* ~"To wszystko, co chciałem wiedzieć. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 18 // from: 8.3 9.2
  SAY #9075 /* ~"Lingwistyka, w rzeczy samej, to dziedzina szalenie mnie interesująca. Kiedy zostałem uczonym, odkryłem, że mogę uczyć się nowych języków bez większych kłopotów."~ */
  IF ~~ THEN REPLY #9158 /* ~"To by wyjaśniało pewne rzeczy. Następne pytanie..."~ */ GOTO 14
  IF ~~ THEN REPLY #9159 /* ~"Rozumiem. Dziękuję za tę rozmowę. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 19 // from: 15.0 20.0
  SAY #9076 /* ~"No cóż, widzisz... nikt nigdy po mnie nie wrócił. Czekałem cichutko całe dnie, ale na próżno. W końcu opuściłem ten pokój, aby powłóczyć się po Pałacu, gdyż miałem nadzieję, że znajdę kogoś, kto mnie poprowadzi..." Wzdycha miękko, a wraz z wydechem wznosi się w powietrze słaba woń płynu balsamującego. "Jest tam 9001 pokoi; w każdym, przez który przechodziłem, kierowano mnie po prostu do następnego. Wygląda na to, że wpadłem w jakąś dziurę, przynajmniej chwilowo."~ */
  IF ~~ THEN REPLY #9160 /* ~"Rozumiem, ale mam następne pytanie..."~ */ GOTO 14
  IF ~~ THEN REPLY #9161 /* ~"Czy mogę w jakikolwiek sposób pomóc?"~ */ DO ~IncrementGlobalOnceEx("GLOBALGood_Bei_1","GLOBALGood",1)
~ GOTO 24
  IF ~~ THEN REPLY #9162 /* ~"Biedny głupcze... Zastanawiam się, jak długo pozwolą ci się tak wałęsać!"~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Bei_1","GLOBALGood",-1)
~ GOTO 25
  IF ~~ THEN REPLY #9163 /* ~"Życzę ci szczęścia. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 20 // from: 15.1
  SAY #9077 /* ~"No, nie wiem. To wszystko jest takie frustrujące!" Zatrzymuje się na chwilę, aby odzyskać panowanie nad sobą. Zesztywniałe stawy i ścięgna delikatnie skrzypią, rozluźniając się.~ */
  IF ~~ THEN REPLY #9164 /* ~"Kontynuuj swoją opowieść, proszę."~ */ GOTO 19
  IF ~~ THEN REPLY #9165 /* ~"Wyobrażam sobie... Mam następne pytanie..."~ */ GOTO 14
  IF ~~ THEN REPLY #9166 /* ~"Być może reszty wysłucham następnym razem. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 21 // from: 16.0
  SAY #9078 /* ~"Oczywiście. Kiedy tak tam staliśmy, nagle dwóch zabójców zeskoczyło na balkon z dachu, najpewniej w celu zabicia lub porwania Panienki Liu. Krzycząc na straże, wyciągnąłem swój miecz i skoczyłem jej na ratunek. W walce, która się wywiązała, rozwaliliśmy balustradę na balkonie i cała nasza czwórka wpadła do Nefrytowego Portalu."~ */
  IF ~~ THEN REPLY #9167 /* ~"Nefrytowego Portalu?"~ */ GOTO 23
  IF ~~ THEN REPLY #9168 /* ~"Chwileczkę... Mam inne pytanie, zanim będziesz mówił dalej."~ */ GOTO 14
  IF ~~ THEN REPLY #9169 /* ~"Być może reszty wysłucham następnym razem. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 22 // from: 17.0
  SAY #9079 /* ~"Być może z początku... w końcu cały ten pomysł jest dość makabryczny. Ale porozmawiawszy z nią przez chwilę zdałem sobie sprawę, że oni - Grabarze - mają w gruncie rzeczy takie samo podejście do umierania, jak ja. Moje ciało? To tylko narzędzie, nic więcej. Wierzę, że ta ich 'Prawdziwa Śmierć' jest jakimś wysublimowanym stanem, który ja, osobiście, chciałbym osiągnąć... pełnym wyzwoleniem i oderwaniem się od świata materialnego. Gdyby tak moje ciało, po wypełnieniu zadania jako moja śmiertelna powłoka, mogło jeszcze przysłużyć się i tutaj, tym lepiej." Duch uśmiecha się uprzejmie do ciebie.~ */
  IF ~~ THEN REPLY #9170 /* ~"Rozumiem twój sposób myślenia. Mam następne pytanie..."~ */ GOTO 14
  IF ~~ THEN REPLY #9171 /* ~"Interesujące. Najlepiej będzie, jak teraz pójdę; żegnaj.?~ */ EXIT
END

IF ~~ THEN BEGIN 23 // from: 21.0
  SAY #9080 /* ~"Och! Proszę wybaczyć to założenie z mojej strony... Nefrytowy Portal to okrągła sadzawka leżąca na Dziedzińcu. Wyłożona jest zielonymi i białymi kafelkami steatytu. Nazywamy ją Portalem, ponieważ jak niektórzy powiadają, czasami można dojrzeć błyski innych miejsc odbite w jej migotających wodach."~ */
  IF ~~ THEN REPLY #9172 /* ~"Rozumiem. Proszę, kontynuuj swą opowieść."~ */ GOTO 27
  IF ~~ THEN REPLY #9173 /* ~"Zanim opowiesz coś więcej, mam inne pytania..."~ */ GOTO 14
  IF ~~ THEN REPLY #9174 /* ~"To wszystko, co na razie chciałem wiedzieć. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 24 // from: 19.1
  SAY #9081 /* ~"Twoja oferta jest nazbyt łaskawa. Obawiam się, jednakże, że nic nie możesz zrobić... Jestem pewny, że za jakiś czas wyruszę w dalszą drogę. Jednakowoż dziękuję raz jeszcze."~ */
  IF ~~ THEN REPLY #9175 /* ~"Oczywiście. Co powiesz na następne pytanie..."~ */ GOTO 14
  IF ~~ THEN REPLY #9176 /* ~"Nie ma strachu. Pora się stąd zbierać. Do zobaczenia."~ */ EXIT
END

IF ~~ THEN BEGIN 25 // from: 19.2 33.1 35.1
  SAY #9082 /* ~Duch spogląda na ciebie zimno; w trupich oczach zapalają się złowrogie światełka; chyba go obraziłeś.~ */
  IF ~~ THEN REPLY #9177 /* ~"Wybacz, proszę. Czy wolno mi zapytać cię o coś jeszcze?"~ */ GOTO 14
  IF ~~ THEN REPLY #9178 /* ~Zostaw ducha unoszącego się w powietrzu i odejdź.~ */ EXIT
END

IF ~~ THEN BEGIN 26 // from: 14.6
  SAY #9083 /* ~"Ach, to... ach... to taki wiersz. Trudny do przetłumaczenia. Masz może jakieś inne pytanie?" Uśmiecha się do ciebie niepewnie.~ */
  IF ~~ THEN REPLY #9179 /* ~"Owszem, mam."~ */ GOTO 14
  IF ~~ THEN REPLY #9180 /* ~"Nie... ale chciałbym dowiedzieć się czegoś więcej o tym wierszu."~ */ GOTO 28
  IF ~~ THEN REPLY #9181 /* ~"Nie. W rzeczy samej sądzę, że wychodzę. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 27 // from: 23.0
  SAY #9084 /* ~"Jak już mówiłem, wpadliśmy do Nefrytowego Portalu. Nigdy wcześniej nie sądziłem, że to *jest* portal w jakimkolwiek znaczeniu tego słowa, ale z całą pewnością to był portal! Nagle okazało się, że leżę w jakimś nieznanym zaułku ze złamaną nogą. Znów się obejrzałem, tym razem w porę, aby dojrzeć, jak zabójcy uciekają. Jeden z nich miał Liu Xixi przełożoną przez ramię."~ */
  IF ~~ THEN REPLY #9182 /* ~"Doprawdy dziwne. Mów dalej, proszę."~ */ GOTO 31
  IF ~~ THEN REPLY #9183 /* ~"Och. Zanim będziesz mówił dalej, mam inne pytania..."~ */ GOTO 14
  IF ~~ THEN REPLY #9184 /* ~"Rozumiem. Dziękuję, ale najlepiej będzie, jeżeli teraz pójdę."~ */ EXIT
END

IF ~~ THEN BEGIN 28 // from: 26.1
  SAY #9085 /* ~"No dobrze." Namyśla się przez chwilę, stukając końcówkami kościstych palców o siebie. Po chwili zaczyna mówić raz jeszcze rytmicznym, miarowym głosem:

"Trudno jest spotkać się, jak i trudno się rozstać.
Wiatr północny zelżał; setki kwiatów blakną.
Gdy umrą robaki Wiosny, jedwab nigdy nie wzejdzie.
Gdy świecy wosk stanie się popiołem, ustaną łzy."

Uśmiecha się do ciebie.~ */
  IF ~~ THEN REPLY #9185 /* ~"Ach... mam następne pytanie."~ */ GOTO 14
  IF ~~ THEN REPLY #9186 /* ~"Interesujące. Co to znaczy?"~ */ GOTO 29
  IF ~  CheckStatGT(Protagonist,13,INT)
~ THEN REPLY #9187 /* ~"Więc powiadasz, że powinienem był zostawić twego ducha w spokoju. Czy obraziłem cię, wzywając cię tutaj?"~ */ GOTO 30
  IF ~~ THEN REPLY #9188 /* ~"Och. Dziękuję za wyjaśnienia. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 29 // from: 28.1
  SAY #9086 /* ~"No cóż, ze wstydem przyznaję, że była to subtelna próba powiedzenia... że być może najlepiej byłoby pozostawić dusze umarłych w spokoju. Ja już dłużej nie chcę mieć nic wspólnego z tym..." Duch robi zamaszysty ruch ręką, wskazując wszystko dookoła. "...światem."~ */
  IF ~~ THEN REPLY #9189 /* ~"Hmm, rozumiem. Mam jeszcze coś, o co chcę cię zapytać."~ */ GOTO 14
  IF ~~ THEN REPLY #9190 /* ~"Rozumiem. Żegnaj zatem."~ */ EXIT
END

IF ~~ THEN BEGIN 30 // from: 28.2
  SAY #9087 /* ~"Ach... nie. Nie było moim zamiarem być tak bezpośrednim; rozumiesz, unikam konfrontacji. Tylko że nie chcę już dłużej mieć nic wspólnego z tym..." Duch robi zamaszysty ruch ręką, wskazując wszystko dookoła. "...światem."~ */
  IF ~~ THEN REPLY #9191 /* ~"Hmm, rozumiem. Mam jeszcze coś, o co chcę cię zapytać."~ */ GOTO 14
  IF ~~ THEN REPLY #9192 /* ~"Rozumiem. Żegnaj zatem."~ */ EXIT
END

IF ~~ THEN BEGIN 31 // from: 27.0
  SAY #9088 /* ~"Cóż, to prawie wszystko. Czując ból, kuśtykałem to tu, to tam, aż znalazłem ludzi, którzy uleczyli moją nogę; jako zapłatę wzięli, co ze sobą miałem. W sumie niewiele. Od tych uzdrowicieli, a i od innych też, nauczyłem się języka tutejszych ludzi, cały czas przetrząsając okolicę w poszukiwaniu tych dwóch zabójców i mojej podopiecznej."~ */
  IF ~~ THEN REPLY #9193 /* ~"Więc nigdy ich nie znalazłeś?"~ */ GOTO 32
  IF ~~ THEN REPLY #9194 /* ~"Hmmm. Wiesz, to dziwne, jak szybko dałeś radę opanować ten język..."~ */ GOTO 38
  IF ~~ THEN REPLY #9195 /* ~"Och. Zanim dokończysz swoją odpowiedź, mam inne pytania..."~ */ GOTO 14
  IF ~~ THEN REPLY #9196 /* ~"Reszty będę musiał wysłuchać następnym razem; żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 32 // from: 31.0 38.0
  SAY #9089 /* ~"Jednego z nich schwytałem, ale nie chciał nic powiedzieć. Zabiłem go i zatrzymałem sobie jego głowę w jedwabnym worku, aby móc przynieść Cenzorowi, kiedy będę oddawać jego córkę." Marszczy brwi przez chwilę, a potem mówi dalej. "Ten drugi zabójca... umknął mi. Tak naprawdę, zrobił coś jeszcze; zabił mnie, zanim ja zdążyłem zabić jego i ocalić moją podopieczną. To smutne, ale teraz mam to już za sobą."~ */
  IF ~~ THEN REPLY #9197 /* ~"Czy wiedziałbyś, w jaki sposób powrócić do swej krainy, gdybyś uratował tę... 'Xi-xi'?"~ */ GOTO 33
  IF ~~ THEN REPLY #9198 /* ~"Interesująca historia. Jednakowoż ma inne pytania..."~ */ GOTO 14
  IF ~~ THEN REPLY #9199 /* ~"Fascynujące. Teraz jednak lepiej będzie, jak cię zostawię. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 33 // from: 32.0
  SAY #9090 /* ~"Nie, ale pewien jestem, że odnalazłbym drogę. W sumie, to nie ma znaczenia."~ */
  IF ~~ THEN REPLY #9200 /* ~"Zastanawiam się, czy wciąż są w mieście. Może mógłbym ich odnaleźć i pomóc tej dziewczynie."~ */ DO ~IncrementGlobalOnceEx("GLOBALGood_Bei_2","GLOBALGood",1)
~ GOTO 34
  IF ~~ THEN REPLY #9201 /* ~"Z całą pewnością wydaje ci się łatwym tak po prostu nie dbać o swoje obowiązki ponieważ jest się martwym. Nie wiem, czy mógłbym sobie na coś takiego pozwolić."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Bei_1","GLOBALLaw",-1)
~ GOTO 25
  IF ~~ THEN REPLY #9202 /* ~"Interesujące. Pozwól, że zapytam o coś jeszcze..."~ */ GOTO 14
  IF ~~ THEN REPLY #9203 /* ~"Hmmm. Odchodzę. Życzę szczęścia."~ */ EXIT
END

IF ~~ THEN BEGIN 34 // from: 33.0
  SAY #9091 /* ~"Twoja propozycja dobrze świadczy o twojej szlachetności... jednakowoż, nie mniej niż siedemdziesiąt pięć lat upłynęło, odkąd zostałem zamordowany. Człowiek, który mnie zabił, od dawna już nie żyje, Xixi najprawdopodobniej też."~ */
  IF ~~ THEN REPLY #9204 /* ~"Jak ten człowiek wyglądał?"~ */ GOTO 35
  IF ~~ THEN REPLY #9205 /* ~"Hmmm. A zatem nieważne. Mam następne pytanie..."~ */ GOTO 14
  IF ~~ THEN REPLY #9206 /* ~"A zatem nic nie szkodzi. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 35 // from: 34.0
  SAY #9092 /* ~"Zabójca ów jest podobny do mnie, a na czole wytatuowany ma Kwitnący Lotos." Widząc twoje zmieszanie, dodaje "To rodzaj kwiatu, z siedmioma płatkami. Liu Xixi to młoda dziewczyna; ma ledwie czternaście lat. Być może ona albo zabójca znają drogę powrotną i sposób ponownego uruchomienia całego mechanizmu."~ */
  IF ~~ THEN REPLY #9207 /* ~"Jeżeli ją zobaczę, zrobię wszystko w mej mocy, aby ulżyć twym wspomnieniom o niej."~ */ DO ~IncrementGlobalOnceEx("GLOBALGood_Bei_3","GLOBALGood",1)
SetGlobal("Know_Xixi","GLOBAL",1)
~ GOTO 36
  IF ~~ THEN REPLY #9208 /* ~"Nieważne. Nie mam na to czasu."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Bei_2","GLOBALGood",-1)
IncrementGlobalOnceEx("GLOBALChaotic_Bei_2","GLOBALLaw",-1)
SetGlobal("Know_Xixi","GLOBAL",1)
~ GOTO 25
  IF ~~ THEN REPLY #9209 /* ~"W porządku. Mam następne pytanie..."~ */ DO ~SetGlobal("Know_Xixi","GLOBAL",1)
~ GOTO 14
  IF ~~ THEN REPLY #9210 /* ~"To wszystko, czego mi trzeba. Żegnaj."~ */ DO ~SetGlobal("Know_Xixi","GLOBAL",1)
~ EXIT
END

IF ~~ THEN BEGIN 36 // from: 35.0
  SAY #9093 /* ~"Jesteś człowiekiem honoru i wielkiej uprzejmości, panie. Nie czyń jednakowoż tego dla mnie... twoja pomoc najwięcej będzie znaczyć dla dziewczyny i jej ojca."~ */
  IF ~~ THEN REPLY #9211 /* ~"Doskonale. Mam następne pytanie..."~ */ GOTO 14
  IF ~~ THEN REPLY #9212 /* ~"Rozumiem. Żegnaj, duchu."~ */ EXIT
END

IF ~  Global("Bei","GLOBAL",1)
~ THEN BEGIN 37 // from: 0.4
  SAY #9094 /* ~"Z pewnością nie spodziewałem się ujrzeć cię ponownie." Duch skłania się uprzejmie, ale jego oczy pozostają bez wyrazu. "Czego chcesz ode mnie tym razem?"~ */
  IF ~~ THEN REPLY #9213 /* ~"Mam pytanie..."~ */ GOTO 14
  IF ~~ THEN REPLY #9214 /* ~"Niczego. Zostawiam cię w spokoju."~ */ EXIT
END

IF ~~ THEN BEGIN 38 // from: 31.1
  SAY #9718 /* ~"Lingwistyka, w rzeczy samej, to dziedzina szalenie mnie interesująca. Kiedy zostałem uczonym, odkryłem, że mogę uczyć się nowych języków bez większych kłopotów."~ */
  IF ~~ THEN REPLY #9719 /* ~"To wyjaśniałoby pewne rzeczy. Więc nigdy nie znalazłeś zabójców?"~ */ GOTO 32
  IF ~~ THEN REPLY #9720 /* ~"Rozumiem. Pozwól, że zapytam o coś jeszcze..."~ */ GOTO 14
  IF ~~ THEN REPLY #9721 /* ~"Rozumiem. Dziękuję za rozmowę. Żegnaj."~ */ EXIT
END
