// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DACASTE.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\pl_PL\dialog.tlk
// dialogF  : (none)

BEGIN ~DACASTE~

IF ~  Global("Acaste","GLOBAL",0)
~ THEN BEGIN 0 // from:
  SAY #2875 /* ~Smród dochodzący od tej starożytnej kobiety-ghula jest odurzający, nawet z odległości. Jej szaro-zieloną skórę pokrywają grobowy rozkład i paskudne wrzody, a na palcach, z których każdy zakończony jest długim, zakrzywionym pazurem, znajduje się brud i zakrzepła krew. W długich po kolana włosach roją się przemykające insekty i robaki. Kudły te skrywają w cieniu prawie całą jej twarz, poza dzikim, pełnym kłów uśmiechem i zwisającym szarym językiem.~ */
  IF ~~ THEN REPLY #2876 /* ~"Witaj..."~ */ DO ~SetGlobal("Acaste","GLOBAL",1)
~ GOTO 1
  IF ~~ THEN REPLY #20853 /* ~Zostaw tę kobietę-ghula w spokoju.~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #20854 /* ~"Ssss. Co my tu mamy? Jakieś śliczne mięsko, tia, mała twarda chrząstka? Zęby se na twych kościach naostrzę i na twoim szpiku utyję, hmmm? Ssss."~ */
  IF ~  Global("Know_Acaste","GLOBAL",1)
~ THEN REPLY #20855 /* ~"Ty musisz być Akasta."~ */ GOTO 2
  IF ~~ THEN REPLY #20856 /* ~"Mam kilka pytań..."~ */ GOTO 5
  IF ~~ THEN REPLY #20857 /* ~"Muszę już iść. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.0
  SAY #20858 /* ~"*Niczym* dla ciebie nie muszę być, mnięso i kości. Lepiej pilnuj jak do mię mówisz, albo nikt nie spojrzy więcej na cię w całości."~ */
  IF ~~ THEN REPLY #20859 /* ~"Będę mówił tak, jak mi się podoba, ghulu."~ */ GOTO 3
  IF ~~ THEN REPLY #20860 /* ~"Mam kilka pytań..."~ */ GOTO 5
  IF ~~ THEN REPLY #20861 /* ~"Muszę już iść. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 2.0 8.0
  SAY #20862 /* ~Zaczyna się śmiać, okrutnym, przenikliwym, drwiącym głosem, jeszcze zanim skończyłeś mówić. "Głupie mnięso! Nie wiesz, prawda! Jam Akasta, królowa ghuli! Moje drogie Uwiędłe będą na tobie żerować, każdą kostkę pochłoną, nawet twój szpik nasze brzuchy wypełni! Tak do mnie mówić się odważasz?~ */
  IF ~~ THEN REPLY #20863 /* ~"Wasza banda żałosnych łupieżców mnie nie przestraszy."~ */ GOTO 4
  IF ~~ THEN REPLY #20864 /* ~"Nieważne. Mam kilka pytań..."~ */ GOTO 5
  IF ~~ THEN REPLY #20865 /* ~"Nieważne. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 3.0
  SAY #20866 /* ~Parska na ciebie. "Szczęście masz, szczęśliwe mięsko, szczęście! Szczęście, że Milczący Król rzekł za tobą słowo! Inaczej byś strawą w naszych brzuchach był, wilgotną i smaczną!" Pluje ci pod nogi. "Dość, dość rozmawiania z mięsem! Ssss!"~ */
  IF ~~ THEN REPLY #20867 /* ~Odejdź.~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 1.1 2.1 3.1
  SAY #20868 /* ~"Kim jesteś, że przede mną jak uczta przychodzisz? Odpowiedz Akaście."~ */
  IF ~~ THEN REPLY #20869 /* ~"Nie mam imienia."~ */ DO ~SetGlobal("Know_Acaste","GLOBAL",1)
~ GOTO 6
  IF ~~ THEN REPLY #20870 /* ~Kłamstwo: "Jestem... Adahn."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Acaste_1","GLOBALLaw",-1)
IncrementGlobal("Adahn","GLOBAL",1)
SetGlobal("Know_Acaste","GLOBAL",1)
~ GOTO 7
  IF ~~ THEN REPLY #20871 /* ~"Najpierw odpowiedz na moje pytania..."~ */ DO ~SetGlobal("Know_Acaste","GLOBAL",1)
~ GOTO 8
END

IF ~~ THEN BEGIN 6 // from: 5.0 8.1
  SAY #20872 /* ~"Zatem Akasta też nie ma. Nazywam cię krwistym. Módl się, abyś wciąż miał imię i wolę, zanim na strzępy cię rozerwę."~ */
  IF ~~ THEN REPLY #20873 /* ~"Krwisty?"~ */ GOTO 14
  IF ~~ THEN REPLY #20874 /* ~"Moje pytania..."~ */ GOTO 9
  IF ~~ THEN REPLY #20875 /* ~"Muszę już iść. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 7 // from: 5.1 8.2
  SAY #20876 /* ~"Aaaadan..." Przesuwa powoli swoim długim, szarym językiem po ustach, a żółtawa ślina ścieka jej z kącików ust. "Tak..."~ */
  IF ~~ THEN REPLY #20877 /* ~"Moje pytania..."~ */ GOTO 9
  IF ~~ THEN REPLY #20878 /* ~"Muszę już iść. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 8 // from: 5.2
  SAY #20879 /* ~"Nie. Odpowiesz mi teraz, zanim zedrę skórę z twoich kości i ją zjem. Piękną będziesz ucztą dla moich Uwiędłych, tak..."~ */
  IF ~~ THEN REPLY #20880 /* ~"Pilnuj swojego języka, ghulu, albo wyrwę go z twej nadgniłej głowy."~ */ GOTO 3
  IF ~~ THEN REPLY #20881 /* ~"Nie mam imienia."~ */ GOTO 6
  IF ~~ THEN REPLY #20882 /* ~Kłamstwo: "Jestem... Adahn."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Acaste_1","GLOBALLaw",-1)
IncrementGlobal("Adahn","GLOBAL",1)
~ GOTO 7
END

IF ~~ THEN BEGIN 9 // from: 6.1 7.0 10.2 11.1 12.2 13.1 14.0 15.2 17.5 18.0 19.1 23.3 24.1 25.1 29.5 30.2 31.1 32.2 33.2 34.5 35.3 36.1 37.2 38.0 39.0 40.2 41.2 42.2
  SAY #20883 /* ~"Dalej! Przeszkadzaj Akaście, póki jeszcze żyjesz, mięso! Pytaj!"~ */
  IF ~  Global("Silent_King","GLOBAL",1)
Global("Lawful_Hargrimm_1","GLOBAL",1)
~ THEN REPLY #24203 /* ~"Czy wiesz, że Milczący Król to tylko szkielet?"~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Hargrimm_7","GLOBALLaw",-3)
IncrementGlobalOnceEx("GLOBALEvil_Hargrimm_3","GLOBALGood",-1)
~ GOTO 24
  IF ~  Global("Silent_King","GLOBAL",1)
!Global("Lawful_Hargrimm_1","GLOBAL",1)
~ THEN REPLY #20884 /* ~"Czy wiesz, że Milczący Król to tylko szkielet?"~ */ GOTO 24
  IF ~  Global("DN_Prisoner","GLOBAL",1)
~ THEN REPLY #20885 /* ~"Czemu mnie uwięziono?"~ */ GOTO 10
  IF ~~ THEN REPLY #20886 /* ~"Gdzie jestem?"~ */ GOTO 11
  IF ~~ THEN REPLY #20887 /* ~"Co tutaj robisz?"~ */ GOTO 12
  IF ~~ THEN REPLY #20888 /* ~"Kto zamieszkuje to miejsce?"~ */ GOTO 29
  IF ~~ THEN REPLY #20889 /* ~"Pozwól, że spytam cię o konkretną osobę..."~ */ GOTO 34
  IF ~  Global("Pharod_Quest","GLOBAL",1)
!PartyHasItem("Bsphere")
~ THEN REPLY #20890 /* ~"Czy widziałaś gdzieś tutaj małą kulę z brązu?"~ */ GOTO 38
  IF ~~ THEN REPLY #20891 /* ~"Nieważne. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 10 // from: 9.2
  SAY #20892 /* ~Akasta krzywi się. "Ssss! Ponieważ nie schwytaliśmy cię w mrocznych korytarzach, gdzie byłbyś ucztą dla nas!" Potrząsa głową, parskając. "Przeklęty niech będzie Milczący Król, przeklęte jego stare kości! Mięso tu schwytane, przez innych, tu pozostaje, póki nie *przyłączy* się do innych."~ */
  IF ~~ THEN REPLY #20893 /* ~"Opowiedz mi o Milczącym Królu."~ */ DO ~SetGlobal("Know_Silent_King","GLOBAL",1)
~ GOTO 32
  IF ~~ THEN REPLY #20894 /* ~"Inni? Kto jeszcze zamieszkuje to miejsce?"~ */ GOTO 29
  IF ~~ THEN REPLY #20895 /* ~"Mam jeszcze kilka pytań..."~ */ GOTO 9
  IF ~~ THEN REPLY #20896 /* ~"To wszystko, co chciałem wiedzieć. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 11 // from: 9.3
  SAY #20897 /* ~"Ziemie Milczącego Króla, Ziemie Umarłych... miejsce wypełnionych szpikiem kości i stad martwego ciała..." Oblizuje usta, chwytając się za brzuch.~ */
  IF ~~ THEN REPLY #20898 /* ~"Kto jeszcze zamieszkuje to miejsce?"~ */ GOTO 29
  IF ~~ THEN REPLY #20899 /* ~"Mam jeszcze kilka pytań..."~ */ GOTO 9
  IF ~~ THEN REPLY #20900 /* ~"To wszystko, co chciałem wiedzieć. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 12 // from: 9.4 33.0
  SAY #20901 /* ~"Walczymy, wygrywamy i ucztujemy. Krwiści, tacy jak ty, w końcu naszym jedzeniem się stają. Okrutnie jesteśmy głodni, żołądki nas palą, nigdy nie są pełne. Wiecznie głodni jesteśmy... i ty tu jesteś... pospiesz się, umrzyj i znieruchomiej!"~ */
  IF ~~ THEN REPLY #20902 /* ~"Krwiści?"~ */ GOTO 14
  IF ~~ THEN REPLY #20903 /* ~"Jak się tu znaleźliście?"~ */ GOTO 13
  IF ~~ THEN REPLY #20904 /* ~"Mam jeszcze kilka pytań..."~ */ GOTO 9
  IF ~~ THEN REPLY #20905 /* ~"To wszystko, co chciałem wiedzieć. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 13 // from: 12.1
  SAY #20906 /* ~"Przemierzamy katakumby, polujemy i zabijamy, otwieramy krypty i trumny, *jemy* kości i martwe ciała. Podejdź tu..." Akasta mruga. "Tutaj... dziwne miejsce... Akasta mieszka wśród słabych, pełnych szpiku kości i stad martwych ciał... potrafi wydawać dźwięk, rozmawiać z nimi, a oni odpowiadają."~ */
  IF ~~ THEN REPLY #20907 /* ~"Zatem czemu nie zabiłaś i nie zjadłaś tych umarlaków?"~ */ GOTO 15
  IF ~~ THEN REPLY #20908 /* ~"Mam jeszcze kilka pytań..."~ */ GOTO 9
  IF ~~ THEN REPLY #20909 /* ~"To wszystko, co chciałem wiedzieć. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 14 // from: 6.0 12.0 17.3
  SAY #20910 /* ~"Ludzkie mnięsko do zjedzenia..." Jej żółte oczy wpatrują się w ciebie intensywnie spomiędzy potarganych, białych włosów. "...ty."~ */
  IF ~~ THEN REPLY #20911 /* ~"Mam jeszcze kilka pytań..."~ */ GOTO 9
  IF ~~ THEN REPLY #20912 /* ~"To wszystko, co chciałem wiedzieć. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 15 // from: 13.0
  SAY #20913 /* ~Akasta marszczy się. "Niełatwa zdobycz. Nieruchomi jak inne kości i martwe ciała oni nie są... walczą w stadach i wielu ich jest. Ciężko pobić, zarówno oddzielnie słabsi, jak i razem silniejsi, prawie tak silni jak Akasta. Więc czekamy."~ */
  IF ~~ THEN REPLY #20914 /* ~"Na co czekacie?"~ */ GOTO 19
  IF ~~ THEN REPLY #20915 /* ~"Zatem co robicie, czekając?"~ */ GOTO 16
  IF ~~ THEN REPLY #20916 /* ~"Mam jeszcze kilka pytań..."~ */ GOTO 9
  IF ~~ THEN REPLY #20917 /* ~"To wszystko, co chciałem wiedzieć. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 16 // from: 15.1
  SAY #20918 /* ~"Walczymy dla nich, krwistych zabijamy, gdy przychodzą, by od nas zabierać, na krwiste szczurorzeczy polujemy, zabijamy i jemy je, a resztki ciał, których nie zjemy, zostawiamy jako ostrzeżenie, co mówi 'tu nie przychodźcie albo was zjemy'. Chronimy to miejsce. Hargrimm i Czerstwa Mary mówią, że nam nie wolno krwistych zabijać.~ */
  IF ~~ THEN REPLY #20919 /* ~"Kto..."~ */ GOTO 17
  IF ~~ THEN REPLY #20920 /* ~"Mam..."~ */ GOTO 17
  IF ~~ THEN REPLY #20921 /* ~"To wszystko, co..."~ */ GOTO 17
END

IF ~~ THEN BEGIN 17 // from: 16.0 16.1 16.2
  SAY #20922 /* ~Akasta zdaje się już ciebie nie zauważać. Syczy, obnażając ostre, zakrwawione kły. "Nienawidzę ich! Krwistych jeść chcę! Głodni jesteśmy... wszystkich krwistych zabić, ciało wyrwać zębami i kości rozkruszyć, słodki szpik wyssać z ich ciepła!"~ */
  IF ~~ THEN REPLY #20923 /* ~"Na cóż więc czekacie?"~ */ GOTO 19
  IF ~~ THEN REPLY #20924 /* ~"Kim jest Hargrimm?"~ */ DO ~SetGlobal("Know_Hargrimm","GLOBAL",1)
~ GOTO 35
  IF ~~ THEN REPLY #20925 /* ~"Kim jest Czerstwa Mary?"~ */ DO ~SetGlobal("Know_Stale_Mary","GLOBAL",1)
~ GOTO 36
  IF ~~ THEN REPLY #20926 /* ~"Krwiści?"~ */ GOTO 14
  IF ~~ THEN REPLY #20927 /* ~"Krwiste szczury?"~ */ GOTO 18
  IF ~~ THEN REPLY #20928 /* ~"Mam jeszcze kilka pytań..."~ */ GOTO 9
  IF ~~ THEN REPLY #20929 /* ~"To wszystko, co chciałem wiedzieć. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 18 // from: 17.4 29.4 41.0
  SAY #20930 /* ~"Chodzą *pisk, pisk*, uciekają w ciemne małe tunele, gdy się je goni, ciężko złapać. Przysmaki, trudne do dostania. Ciepłe ciało, łatwo chrupie w zębach. Wiele z nich gdzie indziej, my pójdziemy je zabić i pożremy wszystkie. Głód odejdzie gdy tak wiele w brzuchu. Zawsze nas obserwują, czerwonymi soczystymi oczami. W ciemnościach pożreć ich chcemy."~ */
  IF ~~ THEN REPLY #20931 /* ~"Mam jeszcze kilka pytań..."~ */ GOTO 9
  IF ~~ THEN REPLY #20932 /* ~"To wszystko, co chciałem wiedzieć. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 19 // from: 15.0 17.0
  SAY #20933 /* ~"Czekamy na słabość, tak... czekamy, by ujrzeć siłę Milczącego Króla, czy silniejszy on od Akasty. Czekamy na stada martwych ciał, by przestać chodzić za pełnymi szpiku kośćmi..."~ */
  IF ~~ THEN REPLY #20934 /* ~"A co potem?"~ */ DO ~SetAnimState(Myself,ANIM_MIMESTANDTOSTANCE)
~ JOURNAL #20938 /* ~Akasta, przywódczyni ghuli bardzo chciałaby widzieć jak Ziemie Umarłych stają się terenem jej łowów. Czeka jedynie na jakiś przejaw słabości, by wraz ze swymi ghulami rozpanoszyć się w katakumbach, zabijając i pożerając wszystko co stanie im na drodze.~ */ GOTO 20
  IF ~~ THEN REPLY #20935 /* ~"Mam jeszcze kilka pytań..."~ */ GOTO 9
  IF ~~ THEN REPLY #20936 /* ~"To wszystko, co chciałem wiedzieć. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 20 // from: 19.0
  SAY #20937 /* ~"*Zjedlibyśmy* wszystko. Głodni. Zabić wszystkie małe krwiste futrorzeczy, *zjeść* wszystkie krwiste istoty w łachmanach w wiosce, zjeść. Katakumby pełne uczt. Głodni jesteśmy! *Polować* i *jeść*!" Gdy mówi, staje się coraz bardziej podniecona, szczęka zębami i pluje śliną...~ */
  IF ~~ THEN REPLY #20939 /* ~Pozwól jej gadać.~ */ DO ~SetAnimState(Myself,ANIM_MIMEATTACK1)
~ GOTO 21
  IF ~~ THEN REPLY #20940 /* ~Zostaw ją, żeby sobie pokrzyczała.~ */ EXIT
END

IF ~~ THEN BEGIN 21 // from: 20.0
  SAY #20941 /* ~"Ssss! Akasta WSZYSTKICH by zabiła! Rozerwała i szarpała, na strzępy podarła stada głupich martwych ciał, głupiego bydła! Wolni i słabi, tylko do jedzenia, szarpania i rozrywania się nadają! Złamać i skruszyć słabe kości! Wyssać szpik z ich kruchych kości! ZABIĆ i ZJEŚĆ ich WSZYSTKICH!"~ */
  IF ~~ THEN REPLY #20942 /* ~Niech gada dalej.~ */ DO ~SetAnimState(Myself,ANIM_MIMEATTACK2)
~ GOTO 22
  IF ~~ THEN REPLY #20943 /* ~Zostaw ją, żeby sobie pokrzyczała.~ */ EXIT
END

IF ~~ THEN BEGIN 22 // from: 21.0
  SAY #20944 /* ~"Akasta chce, aby cisi byli, nieruchomi, martwi-martwi, a nie mówili i chodzili! MARTWI i NIERUCHOMI, tak aby zjeść ich można było, schwytać pomiędzy zęby, czaszki ich zmiażdżyć, mózg wyssać, potem żebra rozerwać i miękkie części skóry pochłonąć!" Akasta uderza pazurzastą pięścią w ziemię, miażdżąc w gniewie posadzkę.~ */
  IF ~~ THEN REPLY #20945 /* ~Niech gada dalej.~ */ DO ~SetAnimState(Myself,ANIM_MIMESTANDTOSTANCE)
~ GOTO 23
  IF ~~ THEN REPLY #20946 /* ~Zostaw ją, żeby sobie pokrzyczała.~ */ EXIT
END

IF ~~ THEN BEGIN 23 // from: 22.0
  SAY #20947 /* ~"NIENAWIDZĘ ich. Powiedzieli Akaście, NIE, nie poluj na krwistych ludzi, którzy czają się w grobach i okradają je! Nie zabijaj krwistych szczurów! Zostaw ich, nie poluj, nie JEDZ! ZABIJĘ ICH WSZYSTKICH i UCISZĘ ich!" Nagle milknie, jej gniew opadł, ostatnie echa jej krzyków giną w ciemnościach.~ */
  IF ~~ THEN REPLY #20948 /* ~"Daj mi coś wartościowego, a ci pomogę."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Acaste_1","GLOBALGood",-1)
~ GOTO 42
  IF ~  Global("Silent_King","GLOBAL",1)
Global("Lawful_Hargrimm_1","GLOBAL",1)
~ THEN REPLY #24204 /* ~"Czy wiesz, że Milczący Król to tylko szkielet?"~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Hargrimm_7","GLOBALLaw",-3)
IncrementGlobalOnceEx("GLOBALEvil_Hargrimm_3","GLOBALGood",-1)
~ GOTO 24
  IF ~  Global("Silent_King","GLOBAL",1)
!Global("Lawful_Hargrimm_1","GLOBAL",1)
~ THEN REPLY #20949 /* ~"Czy wiesz, że Milczący Król to tylko szkielet?"~ */ GOTO 24
  IF ~~ THEN REPLY #20950 /* ~"Mam jeszcze kilka pytań..."~ */ GOTO 9
  IF ~~ THEN REPLY #20951 /* ~"To wszystko, co chciałem wiedzieć. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 24 // from: 9.0 9.1 23.1 23.2 42.0 42.1
  SAY #20952 /* ~"Sssss?" Oczy Akasty zwężają się. "Co powiedziałeś o Królu, krwista rzeczy?"~ */
  IF ~~ THEN REPLY #20953 /* ~"Milczący Król jest martwą skorupą. On nie jest żywy."~ */ GOTO 25
  IF ~~ THEN REPLY #20954 /* ~"Nic. Mam kilka pytań..."~ */ GOTO 9
  IF ~~ THEN REPLY #20955 /* ~"Nieważne. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 25 // from: 24.0
  SAY #20956 /* ~"Pewien żeś tego? Jest nieruchomy, cichy, jadalny?"~ */
  IF ~~ THEN REPLY #20957 /* ~"Jestem pewien. To już tylko zwłoki."~ */ JOURNAL #20959 /* ~Powiedziałem Akaście, że Milczący Król nie żyje, a banda jej ghuli zaczęła terroryzować katakumby Ziem Umarłych.~ */ GOTO 26
  IF ~~ THEN REPLY #61398 /* ~"Tak właściwie... to może i nie. Mam kilka pytań..."~ */ GOTO 9
  IF ~~ THEN REPLY #61399 /* ~"Cóż... mogę się mylić. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 26 // from: 25.0
  SAY #20961 /* ~Twarz Akasty przecina przerażający, zębaty uśmiech. Powoli z sykiem wypuszcza powietrze, po czym krzyczy: "*ZABIĆ ICH WSZYSTKICH, JUŻ! JEŚĆ!*"~ */
  IF ~~ THEN REPLY #20962 /* ~Broń się.~ */ DO ~SetGlobal("Ghoul_Attack","GLOBAL",1)
Enemy()
ForceAttack(Protagonist,Myself)
~ EXIT
  IF ~~ THEN REPLY #20963 /* ~Uciekaj.~ */ DO ~SetGlobal("Ghoul_Attack","GLOBAL",1)
Enemy()
~ EXIT
END

IF ~~ THEN BEGIN 27 // from:
  SAY #20964 /* ~Akasta parska. "Ty... ucisz Milczącego, unieruchom go... ssss." Ogląda cię ostrożnie i powoli okrąża. "Silny... silny... krwisty. Akasta pozwoli ci teraz to miejsce opuścić..."~ */
  IF ~~ THEN REPLY #20965 /* ~"Nie, jeszcze nie."~ */ GOTO 28
  IF ~~ THEN REPLY #20966 /* ~"W porządku. Żegnaj."~ */ DO ~SetGlobal("DN_Prisoner","GLOBAL",2)
Enemy()
~ EXIT
END

IF ~~ THEN BEGIN 28 // from: 27.0
  SAY #20967 /* ~Oczy Akasty zwężają się ponownie. "Odejdź. Odejdź *teraz*."~ */
  IF ~~ THEN REPLY #20968 /* ~"Odejdę, gdy będę chciał, ghulu."~ */ DO ~SetGlobal("Ghoul_Attack","GLOBAL",1)
Enemy()
ForceAttack(Protagonist,Myself)
SetGlobal("DN_Prisoner","GLOBAL",2)
~ EXIT
  IF ~~ THEN REPLY #20969 /* ~"W porządku. Żegnaj."~ */ DO ~SetGlobal("DN_Prisoner","GLOBAL",2)
Enemy()
~ EXIT
END

IF ~~ THEN BEGIN 29 // from: 9.5 10.1 11.0 30.1 31.0 32.0 33.1
  SAY #20970 /* ~"Wielu przemierza te korytarze, tak... wypełnione szpikiem kości, stada martwych ciał, my, Uwiędli. Nad wszystkimi czuwa Milczący Król..." Spluwa z obrzydzeniem. "...który mówi nam, co robić, czego nie. A także małe smakołyki, krwiste szczury..." Akasta z chciwością pociera dłońmi.~ */
  IF ~~ THEN REPLY #20971 /* ~"Opowiedz mi o waszej rasie."~ */ GOTO 33
  IF ~~ THEN REPLY #20972 /* ~"Opowiedz mi o kościach."~ */ GOTO 30
  IF ~~ THEN REPLY #20973 /* ~"Opowiedz mi o stadach martwych ciał."~ */ GOTO 31
  IF ~~ THEN REPLY #20974 /* ~"Opowiedz mi o Milczącym Królu."~ */ DO ~SetGlobal("Know_Silent_King","GLOBAL",1)
~ GOTO 32
  IF ~~ THEN REPLY #20975 /* ~"Krwiste szczury?"~ */ GOTO 18
  IF ~~ THEN REPLY #20976 /* ~"Mam jeszcze kilka pytań..."~ */ GOTO 9
  IF ~~ THEN REPLY #20977 /* ~"To wszystko, co chciałem wiedzieć. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 30 // from: 29.1 35.0
  SAY #20978 /* ~"Kości, szkielety. Słabe. Zmęczone, zbyt wiele wieków, zbyt *delikatne*." Porywa kość z ziemi, łamiąc ją dla dodania siły swoim słowom. "*Słabe*. Martwi się nie boją, ale kości *tak*. *Obawiają się* umrzeć i stać się pokarmem dla Akasty i Uwiędłych. Obawiać się *umrzeć*? *My JUŻ martwi*. *Strach* jest tym, czym śmierdzą krwiści. *NIE UMARLI*."~ */
  IF ~~ THEN REPLY #20979 /* ~"Uwiędli?"~ */ GOTO 33
  IF ~~ THEN REPLY #20980 /* ~"Kto jeszcze zamieszkuje to miejsce?"~ */ GOTO 29
  IF ~~ THEN REPLY #20981 /* ~"Mam jeszcze kilka pytań..."~ */ GOTO 9
  IF ~~ THEN REPLY #20982 /* ~"To wszystko, co chciałem wiedzieć. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 31 // from: 29.2 35.1
  SAY #20983 /* ~"Ssss. Czynią hałas jak krwiste bydło i śmierdzą zepsuciem i słodkim, gęstym sokiem." Akasta oblizuje usta, wsysając ślinę przez zęby. Marszczy się, po czym podnosi ręce i zaczyna kuśtykać. "Chodzą *uch uch* większość czasu, potykają się i kuśtykają oraz pracują. *Głupie* jedzenie! *Głupie* półmóżdże mięso!"~ */
  IF ~~ THEN REPLY #20984 /* ~"Kto jeszcze zamieszkuje to miejsce?"~ */ GOTO 29
  IF ~~ THEN REPLY #20985 /* ~"Mam jeszcze kilka pytań..."~ */ GOTO 9
  IF ~~ THEN REPLY #20986 /* ~"To wszystko, co chciałem wiedzieć. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 32 // from: 10.0 29.3 34.1
  SAY #20987 /* ~"*Niewidziany* Król, nie Milczący. On mówić - my robić. Kości pełne szpiku i stada martwych ciał go słuchają, bez pytania. Akasta nie widzieć, Akasta tylko *słyszeć*. Pewnego dnia spotkam się z nim... pożrę go. Tak. Akasssta silna, a Milczący słaby. Zobaczymy, kto panem, tak."~ */
  IF ~~ THEN REPLY #20988 /* ~"Kto jeszcze zamieszkuje to miejsce?"~ */ GOTO 29
  IF ~~ THEN REPLY #20989 /* ~"Pozwól, że spytam cię o konkretną osobę..."~ */ GOTO 34
  IF ~~ THEN REPLY #20990 /* ~"Mam jeszcze kilka pytań..."~ */ GOTO 9
  IF ~~ THEN REPLY #20991 /* ~"To wszystko, co chciałem wiedzieć. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 33 // from: 29.0 30.0 37.0
  SAY #20992 /* ~"Jesteśmy Uwiędli, tak, Akasta i jej kochane ghule, jej dzieci, zawsze głodne..."~ */
  IF ~~ THEN REPLY #20993 /* ~"Czym się zajmujecie?"~ */ GOTO 12
  IF ~~ THEN REPLY #20994 /* ~"Kto jeszcze zamieszkuje to miejsce?"~ */ GOTO 29
  IF ~~ THEN REPLY #20995 /* ~"Mam jeszcze kilka pytań..."~ */ GOTO 9
  IF ~~ THEN REPLY #20996 /* ~"To wszystko, co chciałem wiedzieć. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 34 // from: 9.6 32.1 35.2 36.0 37.1 40.1 41.1
  SAY #20997 /* ~Akasta zwęża oczy i przekrzywia głowę. "O kogo pyta mięso?"~ */
  IF ~~ THEN REPLY #20998 /* ~"O ciebie samą."~ */ GOTO 37
  IF ~  Global("Know_Silent_King","GLOBAL",1)
~ THEN REPLY #20999 /* ~"O Milczącego Króla."~ */ GOTO 32
  IF ~  Global("Know_Hargrimm","GLOBAL",1)
!Dead("Hargrim")
~ THEN REPLY #21000 /* ~"O Hargrimma."~ */ GOTO 35
  IF ~  Global("Know_Stale_Mary","GLOBAL",1)
!Dead("StaleMa")
~ THEN REPLY #21001 /* ~"O Czerstwą Mary."~ */ GOTO 36
  IF ~  Global("DN_Soego_Killed","GLOBAL",0)
~ THEN REPLY #21002 /* ~"O Soego."~ */ GOTO 40
  IF ~~ THEN REPLY #21003 /* ~"Nieważne. Mam jeszcze kilka pytań..."~ */ GOTO 9
  IF ~~ THEN REPLY #21004 /* ~"Nieważne. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 35 // from: 17.1 34.2
  SAY #21005 /* ~"Szpik." Akasta oblizuje spękane usta i uśmiecha się dziko. "Stary szpik... ale szpik." Parska, jej oczy płoną. "Zabić go, zabić wszystkie kości, jeśli nie są to słabe kości *oraz* stada martwych ciał."~ */
  IF ~~ THEN REPLY #21006 /* ~"Kości?"~ */ GOTO 30
  IF ~~ THEN REPLY #21007 /* ~"Stada martwych ciał?"~ */ GOTO 31
  IF ~~ THEN REPLY #21008 /* ~"Pozwól, że spytam o kogoś innego..."~ */ GOTO 34
  IF ~~ THEN REPLY #21009 /* ~"Mam jeszcze kilka pytań..."~ */ GOTO 9
  IF ~~ THEN REPLY #21010 /* ~"To wszystko, co chciałem wiedzieć. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 36 // from: 17.2 34.3
  SAY #21011 /* ~"Cieliste *jedzenie*. Nie silne, jak Akasta. Słaba kobieta, martwe ciało."~ */
  IF ~~ THEN REPLY #21012 /* ~"Pozwól, że spytam o kogoś innego..."~ */ GOTO 34
  IF ~~ THEN REPLY #21013 /* ~"Mam jeszcze kilka pytań..."~ */ GOTO 9
  IF ~~ THEN REPLY #21014 /* ~"To wszystko, co chciałem wiedzieć. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 37 // from: 34.0
  SAY #21015 /* ~"Jam Akasta! Matka ghuli i królowa Uwiędłych, tak! Silni, szybcy, polujemy i *żerujemy* w tych korytarzach..."~ */
  IF ~~ THEN REPLY #21016 /* ~"Uwiędli?"~ */ GOTO 33
  IF ~~ THEN REPLY #21017 /* ~"Pozwól, że spytam o kogoś innego..."~ */ GOTO 34
  IF ~~ THEN REPLY #21018 /* ~"Mam jeszcze kilka pytań..."~ */ GOTO 9
  IF ~~ THEN REPLY #21019 /* ~"To wszystko, co chciałem wiedzieć. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 38 // from: 9.7
  SAY #21020 /* ~Akasta potrząsa głową, wszy wypadają z jej długich białych włosów. "Akasta otworzyć wiele trumien, wiele grobowców, nigdy nie widzieć takiej rzeczy."~ */
  IF ~~ THEN REPLY #21021 /* ~"Mam jeszcze kilka pytań..."~ */ GOTO 9
  IF ~~ THEN REPLY #21022 /* ~"To wszystko, co chciałem wiedzieć. Żegnaj."~ */ EXIT
END

IF ~  Global("Acaste","GLOBAL",1)
~ THEN BEGIN 39 // from:
  SAY #21023 /* ~"Ssss! Mięso ponownie przychodzi, zaczepiać Akastę, zawsze!"~ */
  IF ~~ THEN REPLY #21024 /* ~"Mam kilka pytań..."~ */ GOTO 9
  IF ~~ THEN REPLY #21025 /* ~"Żegnaj, Akasto."~ */ EXIT
END

IF ~~ THEN BEGIN 40 // from: 34.4
  SAY #21026 /* ~"Blady krwisty, który śpi w kurzu i śmierdzi jak krwisty szczur? On pierwszy, kogo zjem."~ */
  IF ~~ THEN REPLY #21027 /* ~"Śmierdzi jak krwisty szczur?"~ */ GOTO 41
  IF ~~ THEN REPLY #21028 /* ~"Pozwól, że spytam o kogoś innego..."~ */ GOTO 34
  IF ~~ THEN REPLY #21030 /* ~"Mam jeszcze kilka pytań..."~ */ GOTO 9
  IF ~~ THEN REPLY #21031 /* ~"To wszystko, co chciałem wiedzieć. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 41 // from: 40.0
  SAY #21029 /* ~"Ssss. Ale dobrze zjeść go i tak. On śmierdzieć kurzem, ale pod jego bladą skórą świeża krew i mięso. Dobry do jedzenia.~ */
  IF ~~ THEN REPLY #21032 /* ~"Czym jest krwisty szczur?"~ */ GOTO 18
  IF ~~ THEN REPLY #21033 /* ~"Pozwól, że spytam o kogoś innego..."~ */ GOTO 34
  IF ~~ THEN REPLY #21034 /* ~"Mam jeszcze kilka pytań..."~ */ GOTO 9
  IF ~~ THEN REPLY #21035 /* ~"To wszystko, co chciałem wiedzieć. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 42 // from: 23.0
  SAY #21036 /* ~"Akasta nie ma nic dla ciebie poza tym, że twego życia nie pożre."~ */
  IF ~  Global("Silent_King","GLOBAL",1)
Global("Lawful_Hargrimm_1","GLOBAL",1)
~ THEN REPLY #24205 /* ~"Czy wiesz, że Milczący Król to tylko szkielet?"~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Hargrimm_7","GLOBALLaw",-3)
IncrementGlobalOnceEx("GLOBALEvil_Hargrimm_3","GLOBALGood",-1)
~ GOTO 24
  IF ~  Global("Silent_King","GLOBAL",1)
!Global("Lawful_Hargrimm_1","GLOBAL",1)
~ THEN REPLY #21037 /* ~"Czy wiesz, że Milczący Król to tylko szkielet?"~ */ GOTO 24
  IF ~~ THEN REPLY #21038 /* ~"Mam jeszcze kilka pytań..."~ */ GOTO 9
  IF ~~ THEN REPLY #21039 /* ~"To wszystko, co chciałem wiedzieć. Żegnaj."~ */ EXIT
END
