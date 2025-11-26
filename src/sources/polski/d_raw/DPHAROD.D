// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DPHAROD.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\pl_PL\dialog.tlk
// dialogF  : (none)

BEGIN ~DPHAROD~

IF ~  Global("Pharod","GLOBAL",0)
~ THEN BEGIN 0 // from:
  SAY #2841 /* ~Przed tobą stoi starszy mężczyzna, ciężko opierając się na lasce. Jego lewa noga jest wykręcona, jak gdyby kiedyś próbował iść w dwóch kierunkach naraz i zapłacił za to cenę. Jego skóra o kolorze larwy marszczy się na czaszce jak fałdy wątroby. Coś do siebie mamrocze i co chwilę zwilża usta. Jego oczy obserwują całe pomieszczenie.~ */
  IF ~~ THEN REPLY #17912 /* ~"Witaj."~ */ DO ~SetGlobal("Pharod","GLOBAL",1)
~ JOURNAL #17915 /* ~*W końcu* znalazłem Faroda w Zakopanej Wiosce pod Placem Szmaciarzy. Niestety cuchnie tam równie mocno co w Ulu... Przynajmniej Farod może mieć dla mnie jakieś informacje.~ */ GOTO 3
  IF ~~ THEN REPLY #17913 /* ~Zignoruj mężczyznę i przeszukaj pomieszczenie.~ */ EXIT
END

IF ~  GlobalGT("Pharod","GLOBAL",0)
Global("Pharod_Quest","GLOBAL",0)
~ THEN BEGIN 1 // from:
  SAY #2842 /* ~Widzisz przed sobą Faroda. Ciągle okrąża wzrokiem całe pomieszczenie, coś do siebie mamrocze i zwilża wargi językiem. Jego żółta skóra rzuca się w oczy w migoczącym świetle pochodzi.~ */
  IF ~~ THEN REPLY #17916 /* ~"Witaj."~ */ GOTO 3
  IF ~~ THEN REPLY #17917 /* ~Zignoruj Faroda i przeszukaj pomieszczenie.~ */ EXIT
END

IF ~  GlobalGT("Pharod","GLOBAL",0)
GlobalGT("Pharod_Quest","GLOBAL",1)
~ THEN BEGIN 2 // from:
  SAY #2843 /* ~"Ach, nieboszczyk..." Kiedy podchodzisz, Farod obraca się, a jego laska *stuka* o kamienie, którymi wyłożony jest dziedziniec. "Witaj, witaj..."~ */
  IF ~~ THEN REPLY #17918 /* ~"Mam do ciebie parę pytań."~ */ GOTO 17
  IF ~~ THEN REPLY #17919 /* ~"Nie mam czasu na rozmowę na rozmowę z tobą, Farodzie. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 0.0 1.0
  SAY #17834 /* ~"Aha!" Na dźwięk twoich słów oczy mężczyzny zaczynają się jarzyć. "Czyż to nie moje ciągłe żniwo brzdęku przychodzi znowu do Faroda! Witaj, nieboszczyku." Na jego twarzy pojawia się przebiegły uśmiech. "Przychodzisz prosić Faroda, żeby jeszcze raz wyprawił cię do Kostnicy?"~ */
  IF ~~ THEN REPLY #17920 /* ~"Przychodzę po informacje. Powiedziano mi, że od ciebie dowiem się czegoś o sobie."~ */ GOTO 4
  IF ~~ THEN REPLY #17921 /* ~"Przybywam tu, żeby znaleźć odpowiedź na pytania, na które tylko ty znasz odpowiedź."~ */ GOTO 6
  IF ~~ THEN REPLY #17922 /* ~"Tak, Farodzie. Wróciłem. Czy wszystko jest przygotowane?"~ */ GOTO 9
  IF ~~ THEN REPLY #17923 /* ~"Nie mam czasu na rozmowę na rozmowę z tobą, Farodzie. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 3.0
  SAY #17835 /* ~"Czy ja coś o tobie wiem...?" Blask w oczach Faroda powoli znika. Mierzy cię wzrokiem od góry do dołu coś do siebie mamrocząc. "Nieboszczyk...? Nie? Tak?" Wasze spojrzenia spotykają się. "Ach! Nie..."~ */
  IF ~~ THEN REPLY #17924 /* ~"Farodzie? Co to?"~ */ GOTO 7
  IF ~~ THEN REPLY #17925 /* ~"Przypatrz mi się uważnie... Wiesz kim jestem?"~ */ GOTO 7
  IF ~~ THEN REPLY #17926 /* ~"Nie mam czasu na rozmowę na rozmowę z tobą, Farodzie. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 9.0 9.2 9.4
  SAY #17836 /* ~Zdradza cię coś w tonie twego głosu, może najmniejsza przerwa spowodowana niepewnością... cokolwiek to jest, Farod milknie, a blask w jego oczach powoli znika, a on sam zaczyna ci się przyglądać. "Nieboszczyk...? Nie? Tak? Wasze spojrzenia spotykają się. "Ach! Nie..."~ */
  IF ~~ THEN REPLY #17927 /* ~"Farodzie..."~ */ GOTO 6
END

IF ~~ THEN BEGIN 6 // from: 3.1 5.0
  SAY #17837 /* ~Farod mierzy cię wzrokiem od góry do dołu coś do siebie mamrocząc. "To nie fair, nieboszczyku. Farod nie ma czasu na twoje gierki... kim jesteś? Dlaczego zadajesz takie pytania?"~ */
  IF ~~ THEN REPLY #17928 /* ~Prawda: "Zapomniałem kim jestem, a polecono mi, bym cię odszukał. Podobno coś o mnie wiesz."~ */ DO ~IncrementGlobalOnceEx("GLOBALLawful_Pharod_1","GLOBALLaw",1)
~ GOTO 8
  IF ~~ THEN REPLY #17929 /* ~"Potrzebne mi są odpowiedzi. Podobno ty możesz mi ich udzielić."~ */ GOTO 8
END

IF ~~ THEN BEGIN 7 // from: 4.0 4.1
  SAY #17838 /* ~Farod przygląda ci się nieruchomym wzrokiem. "To nie fair, nieboszczyku. Farod nie ma czasu na twoje gierki... kim jesteś? Dlaczego zadajesz takie pytania?"~ */
  IF ~~ THEN REPLY #17930 /* ~Prawda: "Zapomniałem kim jestem, a polecono mi, bym cię odszukał. Podobno coś o mnie wiesz."~ */ DO ~IncrementGlobalOnceEx("GLOBALLawful_Pharod_1","GLOBALLaw",1)
~ GOTO 8
  IF ~~ THEN REPLY #17931 /* ~"Potrzebne mi są odpowiedzi. Podobno ty możesz mi ich udzielić."~ */ GOTO 8
END

IF ~~ THEN BEGIN 8 // from: 6.0 6.1 7.0 7.1
  SAY #17839 /* ~"Ech..." Farod zwilża językiem usta, które wydają dźwięk przypominający tarcie suchego pergaminu o piasek. "Kto ci to powiedział?"~ */
  IF ~~ THEN REPLY #17932 /* ~Prawda: "Tak naprawdę, to nikt mi nie *powiedział*. Na moich plecach były jakieś tatuaże... z nich dowiedziałem się, że mam cię odszukać, gdybym kiedyś zapomniał kim jestem."~ */ DO ~IncrementGlobalOnceEx("GLOBALLawful_Pharod_2","GLOBALLaw",1)
~ GOTO 14
  IF ~~ THEN REPLY #17933 /* ~"Po co ktoś mi to powiedział? Czyż nie masz na imię Farod?"~ */ GOTO 14
END

IF ~~ THEN BEGIN 9 // from: 3.2
  SAY #17840 /* ~"Zdrowi jak ryby... Moi Zbieracze wypełnili twój rozkaz co do słowa." Farod ciężko opiera się na swojej kuli, która zaczyna niebezpiecznie trzeszczeć. "Ech... Nie mam zbyt dużo szczęścia, jeśli chodzi o tę błyskotkę. Nie wiesz przypadkiem, gdzie ona jest? Bardzo by mi się przydała, oj bardzo..."~ */
  IF ~  CheckStatLT(Protagonist,13,CHR)
~ THEN REPLY #17934 /* ~"Przypomnij mi... o co poprosiłem twoich Zbieraczy?"~ */ GOTO 5
  IF ~  CheckStatGT(Protagonist,12,CHR)
~ THEN REPLY #17935 /* ~"Przypomnij mi... o co poprosiłem twoich Zbieraczy?"~ */ GOTO 11
  IF ~  CheckStatLT(Protagonist,13,CHR)
~ THEN REPLY #17936 /* ~"Nie... Przypomnij mi, co mówiłeś o tym 'wyprawieniu mnie do Kostnicy?'"~ */ GOTO 5
  IF ~  CheckStatGT(Protagonist,12,CHR)
~ THEN REPLY #17937 /* ~"Nie... Przypomnij mi, co mówiłeś o tym 'wyprawieniu mnie do Kostnicy?'"~ */ GOTO 12
  IF ~  CheckStatLT(Protagonist,13,CHR)
~ THEN REPLY #17938 /* ~"Przysługa?"~ */ GOTO 5
  IF ~  CheckStatGT(Protagonist,12,CHR)
~ THEN REPLY #17939 /* ~"Przysługa?"~ */ GOTO 10
  IF ~~ THEN REPLY #17940 /* ~"Mniejsza z tym. Muszę już iść."~ */ EXIT
END

IF ~~ THEN BEGIN 10 // from: 9.5 11.1 12.1 13.1
  SAY #17841 /* ~"*Kula*, nieboszczyku, kula! Czy ty..." Farod zaczyna prosić błagalnym tonem jak żebrak - potem przerywa i uspakaja się. "Znajdę, choćby nie wiadomo co... za wszelką cenę."~ */
  IF ~~ THEN REPLY #17941 /* ~"Przypomnij mi... o co poprosiłem twoich Zbieraczy?"~ */ GOTO 11
  IF ~~ THEN REPLY #17942 /* ~"Przypomnij mi, co mówiłeś o tym 'wyprawieniu mnie do Kostnicy?'"~ */ GOTO 12
  IF ~~ THEN REPLY #17943 /* ~"Mniejsza z tym. Muszę już iść."~ */ EXIT
END

IF ~~ THEN BEGIN 11 // from: 9.1 10.0 12.0 13.0
  SAY #17842 /* ~Farod uderza swoją laską o kamienny dziedziniec, a potem z powrotem przenosi ciężar ciała na pięty. "Właśnie to, co sam powiedziałeś..." Mężczyzna zwilża usta językiem. "Kiedy cię znajdą, mieli cię odtransportować bezpiecznie do Kostnicy." Farod spogląda na ciebie zaniepokojony. "Dlaczego? Ktoś nie posłuchał moich rozkazów? Czyżby porzucili cię nie tam, gdzie trzeba?"~ */
  IF ~~ THEN REPLY #17944 /* ~"Nie, ale powiedz mi, jak miałem się wydostać z Kostnicy, po tym jak mnie tam zostawią?"~ */ GOTO 13
  IF ~~ THEN REPLY #17945 /* ~"Nie... O jakiej to przysłudze wspomniałeś?"~ */ GOTO 10
  IF ~~ THEN REPLY #17946 /* ~"Mniejsza z tym. Muszę już iść."~ */ EXIT
END

IF ~~ THEN BEGIN 12 // from: 9.3 10.1
  SAY #17843 /* ~"Ach... tak?" Farod kiwa potakująco głową. "Kostnica. Grabarze i inne podobne sprawy." Zniża głos i zaczyna nerwowo ściskać laskę. "Jesteśmy kwita, nieboszczyku? A może coś jest nie tak?"~ */
  IF ~~ THEN REPLY #17947 /* ~"Przypomnij mi... o co poprosiłem twoich Zbieraczy?"~ */ GOTO 11
  IF ~~ THEN REPLY #17948 /* ~"O jakiej to przysłudze wspomniałeś?"~ */ GOTO 10
  IF ~~ THEN REPLY #17949 /* ~"Mniejsza z tym. Muszę już iść."~ */ EXIT
END

IF ~~ THEN BEGIN 13 // from: 11.0
  SAY #17844 /* ~Farod chichocze do siebie, a potem drapie się po głowie. "Ach, nieboszczyku, nic nie wspominałeś o tym, że chcesz się stamtąd *wydostać*... Byłeś tak napalony, żeby się tam znaleźć, że wydawało mi się, że już wcześniej przygotowałeś sobie, jak zwiać Grabarzom. Mam nadzieję że jesteśmy kwita."~ */
  IF ~~ THEN REPLY #17950 /* ~"Przypomnij mi... o co poprosiłem twoich Zbieraczy?"~ */ GOTO 11
  IF ~~ THEN REPLY #17951 /* ~"O jakiej to przysłudze wspomniałeś?"~ */ GOTO 10
  IF ~~ THEN REPLY #17952 /* ~"Mniejsza z tym. Muszę już iść."~ */ EXIT
END

IF ~~ THEN BEGIN 14 // from: 8.0 8.1
  SAY #17845 /* ~"Ach... tak mało słów, a tak dużo treści..." Farod milknie, a ty nagle odnosisz wrażenie, że właśnie przeprowadza twoją sekcję zwłok, jak jakiemuś nieboszczykowi na stole w Kostnicy. "Wiem wiele rzeczy, które chciałbyś poznać. O tak, wiele..." Powoli na twarzy mężczyzny pojawia się uśmiech.~ */
  IF ~~ THEN REPLY #17953 /* ~"Co o mnie wiesz?"~ */ GOTO 15
END

IF ~~ THEN BEGIN 15 // from: 14.0
  SAY #17846 /* ~Farod zwilża wargi językiem, a potem wspiera się na swojej lasce jak sęp siedzący na gałęzi. "Nie, nie... nie będę odpowiadał za darmo." Jego żółte palce stukają o laskę. "Mogę ci powiedzieć wiele rzeczy, ale to będzie kosztowało."~ */
  IF ~~ THEN REPLY #17954 /* ~"Mów dalej..."~ */ GOTO 34
END

IF ~  GlobalGT("Pharod","GLOBAL",0)
Global("Pharod_Quest","GLOBAL",1)
~ THEN BEGIN 16 // from:
  SAY #17847 /* ~"Ach, nieboszczyk..." Kiedy podchodzisz, Farod obraca się, a jego laska *stuka* o kamienie, którymi wyłożony jest dziedziniec. Mężczyzna zwilża sobie usta językiem i patrzy na ciebie oczekująco. "Czy przyniosłeś mi to, o co prosiłem?"~ */
  IF ~  PartyHasItem("Bsphere")
~ THEN REPLY #17955 /* ~"Kulę z brązu? Oto ona."~ */ DO ~SetGlobal("Pharod_Quest","GLOBAL",2)
TakePartyItemNum("Bsphere",1)
AddexperienceParty(15000)
~ GOTO 54
  IF ~~ THEN REPLY #17956 /* ~"Najpierw chciałbym zadać ci kilka pytań..."~ */ GOTO 17
  IF ~  !PartyHasItem("Bsphere")
~ THEN REPLY #17957 /* ~"Jeszcze nie. Wrócę, gdy już ją odnajdę."~ */ EXIT
  IF ~  PartyHasItem("Bsphere")
~ THEN REPLY #17958 /* ~"Ciągle... ciągle jej szukam. Wrócę, gdy już ją odnajdę."~ */ EXIT
END

IF ~~ THEN BEGIN 17 // from: 2.0 16.1 18.1 19.0 20.1 21.1 22.3 23.1 24.1 25.0 26.1 27.1 28.1 29.2 30.1 31.0 44.0 45.3 46.2 47.1 48.1 49.1 50.1 51.1 52.1 53.0 54.1 55.1 56.3 57.2 58.1 59.2 60.1 61.2 62.4 63.2 64.2 65.3 66.1 67.1 68.1 69.1 71.2 73.1 74.1 76.1 79.0 80.0 85.1 86.2 87.0
  SAY #17848 /* ~"Zatem pytaj!" Farod stuka laską o kamienie, jak gdyby wydawał wyrok. "No, dalej nieboszczyku, nie nadużywaj mojej cierpliwości."~ */
  IF ~~ THEN REPLY #17959 /* ~"Przy powitaniu wspomniałeś coś o tym, że możesz mnie 'wyprawić do Kostnicy'. Co miałeś na myśli?"~ */ GOTO 18
  IF ~~ THEN REPLY #17960 /* ~"Co to za miejsce?"~ */ GOTO 20
  IF ~  Global("Journal","GLOBAL",0)
~ THEN REPLY #17961 /* ~"Kiedy obudziłem się w Kostnicy, nie miałem przy sobie dziennika. Nie wiesz, gdzie on jest?"~ */ GOTO 79
  IF ~  Global("Story_Reekwind_Pharod","GLOBAL",1)
~ THEN REPLY #17962 /* ~"Kiedyś udało mi się usłyszeć opowieść o człowieku imieniem Farod. Był królem szmat."~ */ GOTO 26
  IF ~  Global("Know_Pharod_Bodies","GLOBAL",0)
~ THEN REPLY #17963 /* ~"Słyszałem, że znalazłeś wielu nieboszczyków. Skąd oni pochodzą?"~ */ GOTO 45
  IF ~  GlobalGT("Pharod","GLOBAL",2)
~ THEN REPLY #17964 /* ~"Teraz, gdy przyniosłem już to, o co prosiłeś, spytam jeszcze raz: Co o mnie wiesz?"~ */ GOTO 58
  IF ~  GlobalGT("Pharod","GLOBAL",2)
~ THEN REPLY #17965 /* ~"Pytam raz jeszcze: Czy zabrałeś coś z mojego ciała, gdy je znalazłeś?"~ */ GOTO 69
  IF ~  GlobalGT("Pharod","GLOBAL",2)
~ THEN REPLY #17966 /* ~"Możesz powtórzyć jeszcze raz, gdzie Anna znalazła moje ciało?"~ */ GOTO 74
  IF ~~ THEN REPLY #17967 /* ~"Nie mam już więcej pytań, żegnaj, Farodzie."~ */ EXIT
END

IF ~~ THEN BEGIN 18 // from: 17.0
  SAY #17849 /* ~"Może wolisz Grabarzy, którzy tam mieszkają, od dziewek z pełnymi piersiami?" Farod stuka swoją laską o podłogę, a echo niesie się po całym dziedzińcu. "To dziwne że Grabarze pozwolili ci tak bez niczego tam się szwędać, zwłaszcza biorąc pod uwagę to, że nie miałeś na tyle przyzwoitości, żeby zostać w księdze umarłych."~ */
  IF ~~ THEN REPLY #17968 /* ~"Chciałem dostać się do Kostnicy? Ale dlaczego?"~ */ JOURNAL #17971 /* ~Farod powiedział, że chciałem z jakiegoś powodu *wrócić* do Kostnicy... czemu? Czy czegoś tam szukałem?~ */ GOTO 19
  IF ~~ THEN REPLY #17969 /* ~"Mam jeszcze kilka pytań..."~ */ GOTO 17
  IF ~~ THEN REPLY #17970 /* ~"Muszę już iść. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 19 // from: 18.0
  SAY #17850 /* ~Farod zaczyna z ciebie szydzić. "Nieboszczyku, tak się napaliłeś, żeby się tam dostać, a teraz gadasz, że nawet nie wiesz, dlaczego chciałeś, żeby cię tam przetransportować? Czasami zastanawiam się, dlaczego Sfery ciągle się obracają..."~ */
  IF ~~ THEN REPLY #17972 /* ~"Nieważne. Mam jeszcze kilka pytań..."~ */ GOTO 17
  IF ~~ THEN REPLY #17973 /* ~"Dość już usłyszałem. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 20 // from: 17.1
  SAY #17851 /* ~Farod spogląda po kolei na sufit, ściany, a potem na podłogę. "To Dwór Złego Wiatru - ale nie ja wybierałem tę nazwę - a ta mieścina przed nim to Zakopana Wioska."~ */
  IF ~~ THEN REPLY #17974 /* ~"Co to jest Zakopana Wioska?"~ */ GOTO 21
  IF ~~ THEN REPLY #17975 /* ~"Nieważne. Mam jeszcze kilka pytań..."~ */ GOTO 17
  IF ~~ THEN REPLY #17976 /* ~"Dość już usłyszałem. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 21 // from: 20.0
  SAY #17852 /* ~"Hmm, to cała opowieść..." Farod jeszcze raz zwilża wargi językiem, po czym wzrusza ramionami. "Ale szczerze mówiąc, strasznie nudna. Chcesz streszczenie? To część Ula, którą kiedyś zamurowano, kawałek Sigil, który wpisano do księgi umarłych."~ */
  IF ~~ THEN REPLY #17977 /* ~"Co masz na myśli?"~ */ GOTO 22
  IF ~~ THEN REPLY #17978 /* ~"Mniejsza z tym. Mam do ciebie jeszcze kilka pytań..."~ */ GOTO 17
  IF ~~ THEN REPLY #17979 /* ~"To wszystko, co chciałem wiedzieć. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 22 // from: 21.0
  SAY #17853 /* ~"Znasz te latające kozie głowy, które służą Pani, no wiesz, dabusy? Zresztą nieważne - to one wszystko naprawiają, psują, zakopują i budują. Łapiesz?"~ */
  IF ~  Global("Know_Dabus","GLOBAL",0)
~ THEN REPLY #17980 /* ~"Dabusy?"~ */ DO ~SetGlobal("Know_Dabus","GLOBAL",1)
~ GOTO 23
  IF ~  GlobalGT("Know_Dabus","GLOBAL",0)
~ THEN REPLY #17981 /* ~"Dabusy?"~ */ GOTO 23
  IF ~~ THEN REPLY #17982 /* ~"Tak, mów dalej."~ */ GOTO 24
  IF ~~ THEN REPLY #17983 /* ~"Mniejsza z tym. Mam do ciebie jeszcze kilka pytań..."~ */ GOTO 17
  IF ~~ THEN REPLY #17984 /* ~"Mniejsza z tym. Muszę już iść. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 23 // from: 22.0 22.1
  SAY #17854 /* ~"Kozie głowy? Daj spokój, straciłeś rozum?! Te, które pełnią wolę Pani?" Farod stuka swoją laską o kamienie, wydając przy tym ostry hałas. "Nie rób durnia ze starego Faroda, czas ucieka, a z nim moja cierpliwość."~ */
  IF ~~ THEN REPLY #17985 /* ~"Rozumiem, mów dalej."~ */ GOTO 24
  IF ~~ THEN REPLY #17986 /* ~"Mniejsza z tym. Mam do ciebie jeszcze kilka pytań..."~ */ GOTO 17
  IF ~~ THEN REPLY #17987 /* ~"Mniejsza z tym. Muszę już iść. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 24 // from: 22.2 23.0
  SAY #17855 /* ~"Śpiewka niesie... a stara to śpiewka... że dabusy kiedyś zamurowały całą dzielnicę Ula i wszyscy po prostu o niej zapomnieli. Zarzuciły ją śmieciami i szmatami i teraz nikt nawet nie wie, że coś takiego tu jest. Straszne, co? Cała część Sigil, o której wszyscy zapomnieli."~ */
  IF ~~ THEN REPLY #17988 /* ~"Jak ją odnalazłeś?"~ */ GOTO 25
  IF ~~ THEN REPLY #17989 /* ~"Rozumiem. Mam do ciebie jeszcze kilka pytań..."~ */ GOTO 17
  IF ~~ THEN REPLY #17990 /* ~"Nie mam już więcej pytań. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 25 // from: 24.0
  SAY #17856 /* ~Farod ucisza cię. "Ciągle jeszcze mam oczy i uszy, a kiedy ma się wystarczająco dużo zdrowego rozsądku, żeby te dwie rzeczy połączyć, to znalezienie tajemnicy nie jest tak trudne, jak się wydaje." Mężczyzna ociera ręce o swoje brudne szaty. "Mam wysilać swój czerep, żeby opowiedzieć ci jeszcze o czymś innym? Chyba nie przychodzisz tu tylko po to, żeby usłyszeć o tym zadupiu?"~ */
  IF ~~ THEN REPLY #17991 /* ~"Mam do ciebie jeszcze parę pytań..."~ */ GOTO 17
  IF ~~ THEN REPLY #17992 /* ~"Nie mam już więcej pytań. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 26 // from: 17.3
  SAY #17857 /* ~Lewe oko Faroda powiększa się, choć nie możesz rozpoznać, czy to oko staje się większe, czy po prostu skóra znad niego zaczyna się odsłaniać. "Sigil jest pełne opowieści, ale moje uszy z chęcią posłuchają wszystkich, w których jest mowa o Farodzie?" Mężczyzna udaje, że spogląda na ciebie podejrzliwie, a potem uśmiecha się. "Czyżbyś ostatnio został gawędziarzem, nieboszczyku?"~ */
  IF ~~ THEN REPLY #17993 /* ~"Ta historia jest bardzo dziwna. Opowiada o człowieku, który miał stanowisko i bogactwa, który miał wszystko, a potem odkrył, że nie ma nic."~ */ GOTO 27
  IF ~~ THEN REPLY #17994 /* ~"Nie. Chcę ci jednak zadać parę innych pytań..."~ */ GOTO 17
  IF ~~ THEN REPLY #17995 /* ~"Nie mam już więcej pytań. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 27 // from: 26.0
  SAY #17858 /* ~Uśmiech zastyga na twarzy Faroda, a w jego oczach pojawia się dziwny ognik. "Jesteś pewien, że chcesz opowiedzieć tę historię, nieboszczyku? Może ci się nie spodobać jej zakończenie."~ */
  IF ~~ THEN REPLY #17996 /* ~"Ten człowiek był wielkim łgarzem. Odkrył, że kiedy śmierć po niego przyjdzie, zabierze go w straszne miejsce."~ */ GOTO 28
  IF ~~ THEN REPLY #17997 /* ~"W takim razie mam do ciebie parę pytań..."~ */ GOTO 17
  IF ~~ THEN REPLY #17998 /* ~"W takim razie nie powiem nic więcej. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 28 // from: 27.0
  SAY #17859 /* ~Z twarzy Faroda znika uśmiech. Chwilę potem mężczyzna zwilża wargi językiem. Wygląda na... przestraszonego.~ */
  IF ~~ THEN REPLY #17999 /* ~"Za wszelką cenę chciał uniknąć takiego losu, więc wszystkimi sposobami próbował znaleźć jakieś rozwiązanie. Postanowił oszukać los tak samo, jak wcześniej oszukiwał innych ludzi."~ */ GOTO 29
  IF ~~ THEN REPLY #18000 /* ~"I tak opowieść się kończy. Teraz mam do ciebie kilka pytań..."~ */ GOTO 17
  IF ~~ THEN REPLY #18001 /* ~"Nic więcej nie powiem. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 29 // from: 28.0
  SAY #17860 /* ~Twarz Faroda skręca się, jakby połknął coś niedobrego.~ */
  IF ~  GlobalLT("Pharod","GLOBAL",3)
~ THEN REPLY #18002 /* ~"W końcu znalazł odpowiedź... a raczej znalazł miejsce, w którym miał jej szukać. Powiedziano mu, żeby przeszukał śmietnisko Sigil, a znajdzie coś, dzięki czemu będzie się mógł wywinąć własnemu przeznaczeniu. Teraz ty Farodzie... może powiesz mi, jak ta historia się kończy."~ */ GOTO 32
  IF ~  GlobalGT("Pharod","GLOBAL",2)
~ THEN REPLY #18003 /* ~W końcu znalazł odpowiedź... a raczej znalazł miejsce, w którym miał jej szukać. Powiedziano mu, żeby przeszukał śmietnisko Sigil, a znajdzie coś, dzięki czemu będzie się mógł wywinąć własnemu przeznaczeniu. Czy to właśnie tym jest kula? Czymś, co pozwoli uciec przed własnym losem?"~ */ GOTO 30
  IF ~~ THEN REPLY #18004 /* ~"I tak opowieść się kończy. Teraz mam do ciebie kilka pytań..."~ */ GOTO 17
  IF ~~ THEN REPLY #18005 /* ~"Nic więcej nie powiem. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 30 // from: 29.1
  SAY #17861 /* ~Farod wpatruje się w ciebie, a jego palce bębnią o laskę, na której się wspiera. "Zobaczymy, i ty, i ja, prawda? A co *tobie* pozwoli uciec przed losem, co? Nie ma dla ciebie żadnej błyskotki, taka szkoda."~ */
  IF ~~ THEN REPLY #18006 /* ~"Nie wiesz czym jest kula, prawda?"~ */ GOTO 31
  IF ~~ THEN REPLY #18007 /* ~"Dowiem się. Mam do ciebie parę innych pytań..."~ */ GOTO 17
  IF ~~ THEN REPLY #18008 /* ~"Zobaczymy, Farodzie. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 31 // from: 30.0
  SAY #17862 /* ~Farod syczy na ciebie. "Wystarczy ją odnaleźć, nieboszczyku. Reszta przyjdzie, gdy ona będzie już w twoim posiadaniu."~ */
  IF ~~ THEN REPLY #18009 /* ~"No cóż. Mam do ciebie jeszcze parę pytań..."~ */ GOTO 17
  IF ~~ THEN REPLY #18010 /* ~"Zobaczymy, Farodzie. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 32 // from: 29.0
  SAY #17863 /* ~Farod zaczyna warczeć. "Ona NIE ma żadnego zakończenia! Nie dla mnie!" Na twoich oczach jego twarz nabiega krwią. "Teraz mam pewną historię dla CIEBIE, nieboszczyku!"~ */
  IF ~~ THEN REPLY #18011 /* ~"No có..."~ */ GOTO 33
  IF ~~ THEN REPLY #18012 /* ~"Ja nie..."~ */ GOTO 33
END

IF ~~ THEN BEGIN 33 // from: 32.0 32.1
  SAY #17864 /* ~Farod wskazuje cię palcem zakrzywionym jak hak owczarza. "Pewien śmierdzący nieboszczyk przybył na dwór Faroda i zaczął mu obiecywać, że ZNAJDZIE to, czego Farod potrzebuje, ale co przyniósł? *Nic!* Złamałeś obietnicę, nieboszczyku! Zaprzeczysz?! Jeśli tak, to znaczy, że mnie okłamałeś, a ja *umrę* przez te twoje kłamstwa!"~ */
  IF ~  Global("Pharod_Quest","GLOBAL",1)
~ THEN REPLY #18013 /* ~"Szukam jej, a kiedy ją znajdę, przyniosę ją tobie. Dotrzymuję wszystkich obietnic."~ */ GOTO 80
  IF ~  PartyHasItem("Bsphere")
~ THEN REPLY #18014 /* ~"Masz na myśli kulę z brązu? Uspokój się... oto ona."~ */ DO ~SetGlobal("Pharod_Quest","GLOBAL",2)
TakePartyItemNum("Bsphere",1)
AddexperienceParty(4000)
~ GOTO 54
END

IF ~~ THEN BEGIN 34 // from: 15.0
  SAY #17865 /* ~Farod uderza laską w kamienie posadzki. "Ta wioska to nie wszystko, co zagrzebano pod Placem Szmaciarzy."~ */
  IF ~~ THEN REPLY #18041 /* ~"Tak...?"~ */ GOTO 35
END

IF ~~ THEN BEGIN 35 // from: 34.0
  SAY #17866 /* ~"Komnaty, krypty, korytarze... Wypełnione umarłymi śpiącymi w swoich trumnach. Gdzieś tam leży coś, co nie powinno się tam znaleźć. Coś co należy do mnie."~ */
  IF ~  CheckStatGT(Protagonist,12,WIS)
~ THEN REPLY #18042 /* ~"Co to jest?"~ */ GOTO 36
  IF ~  CheckStatLT(Protagonist,13,WIS)
~ THEN REPLY #18043 /* ~"Co to jest?"~ */ GOTO 37
END

IF ~~ THEN BEGIN 36 // from: 35.0
  SAY #17867 /* ~"Ot błahostka, pewna błyskotka..." Kiedy Farod zaczyna mówić, jego słowa odbijają się echem, jakby to dwóch ludzi przemawiało... wiesz, że słyszałeś je już wcześniej... pochodziły z twoich własnych ust.~ */
  IF ~~ THEN REPLY #18044 /* ~"...to kula. Zrobiona z brązu. Brzydka. W dotyku przypomina jajko, a śmierdzi zgniłymi jajami zmieszanymi z mlekiem. Mam rację?"~ */ GOTO 38
  IF ~~ THEN REPLY #18045 /* ~Nie mów nic i słuchaj.~ */ GOTO 37
END

IF ~~ THEN BEGIN 37 // from: 35.1 36.1
  SAY #17868 /* ~"Ot błahostka, pewna błyskotka..." Farod odwraca się, jakby się zawstydził, ale jego głos staje się bardziej ostry, jak nóż. "Kula. Zrobiona z brązu. Brzydka. W dotyku przypomina jajko, a śmierdzi zgniłymi jajami zmieszanymi z mlekiem. Przynieś mi ją - to taka mała przysługa - a potem ja tobie wyświadczę przysługę."~ */
  IF ~~ THEN REPLY #18046 /* ~"Czy wiesz, gdzie jest kula?"~ */ GOTO 40
  IF ~~ THEN REPLY #18047 /* ~"Dlaczego nie wyślesz jednego ze swoich Zbieraczy, żeby ją dla ciebie znalazł?"~ */ GOTO 39
END

IF ~~ THEN BEGIN 38 // from: 36.0
  SAY #17869 /* ~Na chwilę zapada martwa cisza, a potem Farod przytakuje. "Tak... Co jeszcze przede mną ukrywasz, nieboszczyku? Powróciłeś sprawdzić, czy pamiętam jeszcze, czego chciałem?"~ */
  IF ~~ THEN REPLY #18048 /* ~"Czy wiesz, gdzie jest kula?"~ */ GOTO 40
  IF ~~ THEN REPLY #18049 /* ~"Dlaczego nie wyślesz jednego ze swoich Zbieraczy, żeby ją dla ciebie znalazł?"~ */ GOTO 39
END

IF ~~ THEN BEGIN 39 // from: 37.1 38.1 40.0
  SAY #17870 /* ~"Bo korytarze nie potrzebują już więcej martwych z tej wioski. Silni, szybcy, sprytni... mieszkańcy mojej wioski właśnie tacy nie są. Schodzą na dół, ale nie wracają." Farod spogląda na ciebie. "Może umarli lepiej przywitają kogoś takiego, jak oni? Tak mi się wydaje, nieboszczyku."~ */
  IF ~~ THEN REPLY #18050 /* ~"Czy wiesz, gdzie jest kula?"~ */ GOTO 40
  IF ~~ THEN REPLY #18051 /* ~"No cóż... Zrobię to. Ale chcę wiedzieć, co dostanę ze tę błyskotkę."~ */ GOTO 41
END

IF ~~ THEN BEGIN 40 // from: 37.0 38.0 39.0
  SAY #17871 /* ~"Ach..." Westchnienie Faroda brzmi jak przesypywanie piasku. "A jak ci się wydaje, dlaczego cię poprosiłem, żebyś jej szukał, nieboszczyku? Nie wiem *gdzie* ona jest. Wiem, że jest zakopana gdzieś głęboko, o wiele głębiej, niż dotarł jakikolwiek mieszkaniec wioski. Może jest w katakumbach, gdzie płynie głęboka, głęboka woda."~ */
  IF ~~ THEN REPLY #18052 /* ~"Dlaczego nie wyślesz jednego ze swoich Zbieraczy, żeby ją dla ciebie znalazł?"~ */ GOTO 39
  IF ~~ THEN REPLY #18053 /* ~"No cóż... Zrobię to. Ale chcę wiedzieć, co dostanę ze tę błyskotkę."~ */ GOTO 41
END

IF ~~ THEN BEGIN 41 // from: 39.1 40.1
  SAY #17872 /* ~"W mojej czaszce błąka się wiele rzeczy." Mężczyzna podnosi do góry zniszczony palec. "Są tam też pewne słowa mądrości: każdy czegoś *chce*, czy o tym wie, czy nie. Wiem o tobie wiele rzeczy... wiele rzeczy, które ty *chciałbyś* wiedzieć..."~ */
  IF ~~ THEN REPLY #18054 /* ~"Wątpię, żebyś mógł mi powiedzieć coś wartościowego."~ */ GOTO 43
  IF ~~ THEN REPLY #18055 /* ~"Dobrze, znajdę dla ciebie tę kulę... w zamian za to, co wiesz."~ */ GOTO 44
  IF ~~ THEN REPLY #18056 /* ~Prawda: "Powiedz mi teraz, co wiesz, albo wpiszę twoje imię do księgi umarłych używając pióra zamoczonego w twojej krwi."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Pharod_1","GLOBALGood",-1)
~ GOTO 42
  IF ~~ THEN REPLY #18057 /* ~Blef: "Powiedz mi teraz, co wiesz, albo wpiszę twoje imię do księgi umarłych używając pióra zamoczonego w twojej krwi."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Pharod_1","GLOBALLaw",-1)
~ GOTO 42
END

IF ~~ THEN BEGIN 42 // from: 41.2 41.3 43.0 43.1
  SAY #17873 /* ~Następne słowa Faroda brzmią tak, jak gdyby nauczył się ich na pamięć. "W takim razie, to co wiem umrze razem ze mną... Gdy umrę, zostanie z tego tylko popiół. Dla ciebie nie zostanie nic, nic..."~ */
  IF ~~ THEN REPLY #18058 /* ~"Wątpię, żebyś mógł mi powiedzieć coś wartościowego."~ */ GOTO 43
  IF ~~ THEN REPLY #18059 /* ~"Dobrze, znajdę dla ciebie tę kulę... w zamian za to, co wiesz."~ */ GOTO 44
END

IF ~~ THEN BEGIN 43 // from: 41.0 42.0
  SAY #17874 /* ~"Poznałem jeszcze inne bezcenne słowa mądrości... Tobie dam je za darmo: Człowiek często *myli* się co do wielu rzeczy, a umarły człowiek pomylił się o jeden raz za dużo." Farod zwilża swoje wargi językiem. "Mam ci do powiedzenia wiele cennych rzeczy."~ */
  IF ~~ THEN REPLY #18060 /* ~Prawda: "Powiedz mi wszystko co wiesz, albo wpiszę twoje imię do księgi umarłych mocząc pióro w twojej własnej krwi."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Pharod_1","GLOBALGood",-1)
~ GOTO 42
  IF ~~ THEN REPLY #18061 /* ~Blef: "Powiedz mi teraz, co wiesz, albo wpiszę twoje imię do księgi umarłych używając pióra zamoczonego w twojej krwi."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Pharod_1","GLOBALLaw",-1)
~ GOTO 42
  IF ~~ THEN REPLY #18062 /* ~"Dobrze, znajdę dla ciebie tę kulę... w zamian za to, co wiesz."~ */ GOTO 44
END

IF ~~ THEN BEGIN 44 // from: 41.1 42.1 43.2
  SAY #17875 /* ~"Wspaniale, umowa stoi..." Farod ostro *uderza* swoją laską o kamienie posadzki. "Kula za wgląd do wnętrza mojej czaszki. Teraz, nieboszczyku, nie ma czasu do stracenia. Ruszaj do bramy na południowym wschodzie i powiedz tym sennym głupcom, żeby ci ją otworzyli - spiesz się, spiesz się."~ */
  IF ~~ THEN REPLY #18063 /* ~"Poczekaj chwilę... Zanim odejdę, mam do ciebie jeszcze kilka pytań..."~ */ DO ~SetGlobal("Pharod_Quest","GLOBAL",1)
~ JOURNAL #18065 /* ~Zgodziłem się zejść do katakumb dla Faroda i przynieść mu stamtąd kulę z brązu. Sądzi, że znajduje się ona na najniższym poziomie podziemi... tam gdzie woda zalała korytarze. Wejście do pierwszej części katakumb znajduje się za bramą, w południowo-wschodniej części wioski... Farod powiedział, że jeśli wspomnę strażnikom o moim zadaniu, otworzą bramę i pozwolą mi przejść.~ */ GOTO 17
  IF ~~ THEN REPLY #18064 /* ~"No cóż. W takim razie pójdę teraz do tych drzwi i wejdę do katakumb."~ */ DO ~SetGlobal("Pharod_Quest","GLOBAL",1)
~ JOURNAL #18065 /* ~Zgodziłem się zejść do katakumb dla Faroda i przynieść mu stamtąd kulę z brązu. Sądzi, że znajduje się ona na najniższym poziomie podziemi... tam gdzie woda zalała korytarze. Wejście do pierwszej części katakumb znajduje się za bramą, w południowo-wschodniej części wioski... Farod powiedział, że jeśli wspomnę strażnikom o moim zadaniu, otworzą bramę i pozwolą mi przejść.~ */ EXIT
END

IF ~~ THEN BEGIN 45 // from: 17.4
  SAY #17876 /* ~"Czyż mag wyjawia sekrety swojej sztuki? Podobnie i ze Zbieraczem..." Farod spogląda na ciebie ze zmarszczonym czołem. "Może ci powiem... ale musisz mi obiecać, że nikomu tego nie powtórzysz."~ */
  IF ~  CheckStatGT(Protagonist,13,CHR)
~ THEN REPLY #18066 /* ~"Porównujesz się do *maga*? Obawiam się, że obrażasz wszystkich członków tej profesji."~ */ GOTO 46
  IF ~~ THEN REPLY #18067 /* ~Przyrzeczenie: "Nikomu nie powiem tego, co tu usłyszę."~ */ DO ~IncrementGlobalOnceEx("GLOBALLawful_Pharod_3","GLOBALLaw",1)
~ JOURNAL #18071 /* ~Obiecałem Farodowi, że nie powiem skąd bierze zwłoki.~ */ GOTO 48
  IF ~~ THEN REPLY #18068 /* ~Kłamstwo: "Nikomu nie powiem tego, co tu usłyszę."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Pharod_2","GLOBALLaw",-1)
~ JOURNAL #18072 /* ~Skłamałem i 'przysięgłem', że nie powiem nikomu skąd Farod bierze zwłoki. Ten stary ghul naprawdę mi uwierzył... Wydaje mi się, że nie mógł się doczekać, by komuś powiedzieć jaki jest sprytny.~ */ GOTO 48
  IF ~~ THEN REPLY #18069 /* ~"To mi nie potrzebne. Mam do ciebie parę innych pytań..."~ */ GOTO 17
  IF ~~ THEN REPLY #18070 /* ~"Mniejsza z tym. Muszę już iść. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 46 // from: 45.0
  SAY #17877 /* ~Twarz Faroda nabiega krwią, a on sam uderza swoją laską o ziemię. "Zbieranie jest taką samą umiejętnością, jak jakieś sztuczki magiczne."~ */
  IF ~  Global("Pharod_Extortion_Bodies","GLOBAL",0)
~ THEN REPLY #18073 /* ~"Ależ Farodzie, trudno przyrównywać znajdywanie martwych ciał i sprzedawanie ich do studiowania magii."~ */ DO ~AddexperienceParty(500)
SetGlobal("Pharod_Extortion_Bodies","GLOBAL",1)
~ GOTO 47
  IF ~  Global("Pharod_Extortion_Bodies","GLOBAL",1)
~ THEN REPLY #18074 /* ~"Jak już wspomniałem wcześniej: Trudno przyrównywać znajdywanie martwych ciał i sprzedawanie ich do studiowania magii."~ */ GOTO 47
  IF ~~ THEN REPLY #18075 /* ~"Nie będę się z tobą o to sprzeczać. Mam do ciebie parę innych pytań..."~ */ GOTO 17
  IF ~~ THEN REPLY #18076 /* ~"Muszę już iść. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 47 // from: 46.0 46.1
  SAY #17878 /* ~"Czyż nie trzeba było umiejętności, żeby odnaleźć to miejsce?!" Głos Faroda przechodzi w grzmienie, a jego palce zaciskają się na lasce. "Trzeba było dużo rozsądku, żeby odszukać to miejsce, i trzeba było dużo rozsądku, żeby je jak najlepiej wykorzystać!"~ */
  IF ~~ THEN REPLY #18077 /* ~"Zakopana Wioska? No dalej, jaka tajemnica się w tym kryje?"~ */ JOURNAL #18080 /* ~Podstępem zmusiłem Faroda, aby powiedział skąd bierze zwłoki. Nie musiałem przy tym niczego obiecywać. Chyba nawet tego nie zauważył... tym większy z niego głupiec.~ */ GOTO 48
  IF ~~ THEN REPLY #18078 /* ~"Nie będę się z tobą o to sprzeczać. Mam do ciebie parę innych pytań..."~ */ GOTO 17
  IF ~~ THEN REPLY #18079 /* ~"Muszę już iść. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 48 // from: 45.1 45.2 47.0
  SAY #17879 /* ~"No cóż..." Farod uderza laską o kamienie. "Ta wioska to nie wszystko, co zagrzebano pod Placem Szmaciarzy."~ */
  IF ~~ THEN REPLY #18081 /* ~"Mów dalej..."~ */ GOTO 49
  IF ~~ THEN REPLY #18082 /* ~"To mi nie potrzebne. Mam do ciebie parę innych pytań..."~ */ GOTO 17
  IF ~~ THEN REPLY #18083 /* ~"Nie mam już więcej pytań... Muszę już iść. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 49 // from: 48.0
  SAY #17880 /* ~"Komnaty, krypty, korytarze..." Na jego twarzy majaczy uśmiech, a jego oczy błyszczą jak złoto. "Wszystko czarne jak smoła, wypełnione łkającymi kamieniami i umarłymi, którzy śpią w swoich trumnach. Śpią..."~ */
  IF ~~ THEN REPLY #18084 /* ~"Skąd się biorą te wszystkie trupy?"~ */ GOTO 50
  IF ~~ THEN REPLY #18085 /* ~"Nieważne. Mam jeszcze kilka pytań..."~ */ GOTO 17
  IF ~~ THEN REPLY #18086 /* ~"Nie mam już więcej pytań... Muszę już iść. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 50 // from: 49.0
  SAY #17881 /* ~Farod spogląda na ciebie z ukosa. "Nieboszczyku, nieboszczyku... wszystko umiera. Życie jest takie krótkie, śmierć tak bardzo, bardzo długa. Wielu ludzi, wiele śmierci..." Jego spojrzenie wędruje poza ciebie. "To taka strata, żeby nie wykorzystać jakoś ich śmierci, co?"~ */
  IF ~~ THEN REPLY #18087 /* ~"Co masz na myśli?"~ */ DO ~SetGlobal("Know_Pharod_Bodies","GLOBAL",1)
~ JOURNAL #18090 /* ~Dowiedziałem się skąd ten stary ghul Farod bierze takie ilości zwłok. Odnalazł ciąg katakumb, zakopanych pod Zakopaną Wioską. Grabarze składają tam wiele ciał, a Farod wykopuje je i sprzedaje z powrotem Grabarzom. Następnie czeka, aż Grabarze znowu je pogrzebią i wykopuje je ponownie. Niewyczerpalne źródło brzdęku... obrzydliwe ale skuteczne.~ */ GOTO 51
  IF ~~ THEN REPLY #18088 /* ~"Nieważne. Mam jeszcze kilka pytań..."~ */ GOTO 17
  IF ~~ THEN REPLY #18089 /* ~"Nie mam już więcej pytań... Muszę już iść. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 51 // from: 50.0
  SAY #17882 /* ~Na twarzy Faroda pojawia się chciwy uśmiech. "Nie wszyscy truposze, którzy przechodzą przez bramę Kostnicy wędrują do pieca. Grabarze grzebią niektórych zmarłych pod miastem. Jedno z takich miejsc jest... tak blisko, tak blisko... pod wioską. Byłbym głupcem, gdybym nie wykorzystał takiej sposobności..."~ */
  IF ~~ THEN REPLY #18091 /* ~"Więc wykradasz z katakumb zmarłych, których złożyli tam Grabarze, potem z powrotem im ich sprzedajesz, żeby jeszcze raz zostali pochowani?"~ */ GOTO 52
  IF ~~ THEN REPLY #18092 /* ~"Nieważne. Mam jeszcze kilka pytań..."~ */ GOTO 17
  IF ~~ THEN REPLY #18093 /* ~"Nie mam już więcej pytań... Muszę już iść. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 52 // from: 51.0
  SAY #17883 /* ~Farod przytakuje, a potem lekko chichocze - brzmi to jak przesypywanie piasku. "Te katakumby są tak głębokie jak kieszenie Grabarzy."~ */
  IF ~~ THEN REPLY #18094 /* ~"I tak głębokie jak człowiecza chciwość."~ */ GOTO 53
  IF ~~ THEN REPLY #18095 /* ~"Bardzo sprytne. Mam do ciebie parę innych pytań..."~ */ GOTO 17
  IF ~~ THEN REPLY #18096 /* ~"Nie mam już więcej pytań... Muszę już iść. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 53 // from: 52.0
  SAY #17884 /* ~"O, tak..." Farod uśmiecha się szyderczo. "A na chciwość ludzką zawsze można liczyć, gdy nic innego nie zostaje."~ */
  IF ~~ THEN REPLY #18097 /* ~"Bardzo sprytnie. Mam do ciebie jeszcze kilka pytań..."~ */ GOTO 17
  IF ~~ THEN REPLY #18098 /* ~"Nie mam już więcej pytań... Muszę już iść. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 54 // from: 16.0 33.1
  SAY #17885 /* ~Kiedy wręczasz Farodowi brązową kulę, jego oczy zaczynają błyszczeć - dotyka jej ostrożnie, prawie z czcią. "Ty..." Zaczyna chichotać. "Ach, nieboszczyku, postawiłem na ciebie, ale zwróciło mi się to z nawiązką, o tak..." Farod przygląda się dokładnie swojemu odbiciu w kuli. "Widzę że czas mnie nie oszczędził..."~ */
  IF ~~ THEN REPLY #18099 /* ~"Zrobiłem o co prosiłeś, Farodzie. Teraz musisz mi odpowiedzieć na kilka pytań."~ */ GOTO 55
  IF ~  GlobalGT("Pharod","GLOBAL",2)
~ THEN REPLY #18100 /* ~"Mniejsza z tym. Mam do ciebie parę innych pytań..."~ */ GOTO 17
  IF ~  GlobalGT("Pharod","GLOBAL",2)
~ THEN REPLY #18101 /* ~"Nie mam już więcej pytań. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 55 // from: 54.0
  SAY #17886 /* ~Kiedy do niego mówisz, Farod nawet na ciebie nie patrzy... Jego uwagę pochłonęła kula, którą trzyma w swoich rękach. "Tak, tak, proszę pytaj..." Farod obraca ją w rękach. "Oczywiście, twoje pytania są bardzo ważne..."~ */
  IF ~~ THEN REPLY #18102 /* ~"Co o mnie wiesz? Dlaczego miałem cię odszukać?"~ */ GOTO 56
  IF ~  GlobalGT("Pharod","GLOBAL",2)
~ THEN REPLY #18103 /* ~"Mniejsza z tym. Mam do ciebie parę innych pytań..."~ */ GOTO 17
  IF ~  GlobalGT("Pharod","GLOBAL",2)
~ THEN REPLY #18104 /* ~"Nie mam już więcej pytań. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 56 // from: 55.0
  SAY #17887 /* ~Farod spogląda na ciebie krytycznym okiem. "Zostaw swój oręż w spokoju, bo to co zaraz powiem, może cię obrazić..." Farod uśmiecha się szelmowsko. "Moje uszy już do tego przywykły, ale wygląda na to, że twoje ciągle są gorące."~ */
  IF ~~ THEN REPLY #18105 /* ~"No mów. Tracę cierpliwość."~ */ GOTO 57
  IF ~~ THEN REPLY #18106 /* ~Przyrzeczenie: "Masz moje słowo, że powstrzymam moją rękę, ale muszę wiedzieć, co ty wiesz."~ */ DO ~IncrementGlobalOnceEx("GLOBALLawful_Pharod_4","GLOBALLaw",1)
~ GOTO 57
  IF ~~ THEN REPLY #18107 /* ~Kłamstwo: "Masz moje słowo, że powstrzymam moją rękę, ale muszę wiedzieć, co ty wiesz."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Pharod_3","GLOBALLaw",-1)
IncrementGlobalOnceEx("GLOBALEvil_Pharod_2","GLOBALGood",-1)
~ GOTO 57
  IF ~  GlobalGT("Pharod","GLOBAL",2)
~ THEN REPLY #18108 /* ~"Mniejsza z tym. Mam do ciebie parę innych pytań..."~ */ GOTO 17
  IF ~  GlobalGT("Pharod","GLOBAL",2)
~ THEN REPLY #18109 /* ~"Nie mam już więcej pytań. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 57 // from: 56.0 56.1 56.2
  SAY #17888 /* ~"Prawda..." Ton jego głosu staje się łagodniejszy, jakby chciałby ci się przypochlebić. "Kiedy wcześniej rozmawialiśmy, trochę rozminąłem się z prawdą - bo prawdę mówiąc, niewiele o tobie wiem." Farod podnosi do góry swój palec. "Ale posłuchaj, co mam ci do powiedzenia..."~ */
  IF ~~ THEN REPLY #18110 /* ~"Tak...?"~ */ GOTO 58
  IF ~~ THEN REPLY #18111 /* ~"Lepiej by było dla ciebie, żeby to było *warte* słuchania."~ */ GOTO 58
  IF ~  GlobalGT("Pharod","GLOBAL",2)
~ THEN REPLY #18112 /* ~"Mniejsza z tym. Mam do ciebie parę innych pytań..."~ */ GOTO 17
  IF ~  GlobalGT("Pharod","GLOBAL",2)
~ THEN REPLY #18113 /* ~"Nie mam już więcej pytań. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 58 // from: 17.5 57.0 57.1
  SAY #17889 /* ~"Z tego co wiedzę, jesteś śmiałkiem, który udaje nieboszczyka." Farod spogląda na ciebie przez zmrużone oczy. "Dawno temu przyszedłeś do mnie, tak jak teraz... Choć nie, po prostu wpadłeś prosto na Dwór Złego Wiatru, i zażądałeś 'audiencji' u mnie."~ */
  IF ~~ THEN REPLY #18114 /* ~"Audiencji u ciebie?"~ */ GOTO 59
  IF ~  GlobalGT("Pharod","GLOBAL",2)
~ THEN REPLY #18115 /* ~"Mniejsza z tym. Mam do ciebie parę innych pytań..."~ */ GOTO 17
  IF ~  GlobalGT("Pharod","GLOBAL",2)
~ THEN REPLY #18116 /* ~"Nie mam już więcej pytań. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 59 // from: 58.0
  SAY #17890 /* ~"Tak, 'audiencji'." Farod zaczyna chichotać, co bardziej przypomina przesypywanie piasku. "Jakbym był jakimś królem..." Wydaje się być rozbawiony, ale w tonie jego głosu kryje się ostrze. "Wiedziałeś co powiedzieć, a tak. Rzuciłeś śpiewkę jakbyś był urodzonym Guwernatem. A ja posłuchałem."~ */
  IF ~  Global("Story_Reekwind_Pharod","GLOBAL",1)
~ THEN REPLY #18117 /* ~"Ależ byłeś kiedyś królem... a przynajmniej zajmowałeś wysokie stanowisko, czyż nie?"~ */ GOTO 60
  IF ~  Global("Story_Reekwind_Pharod","GLOBAL",0)
~ THEN REPLY #18118 /* ~"Czego on chciał... czego chciałem od ciebie?"~ */ GOTO 61
  IF ~  GlobalGT("Pharod","GLOBAL",2)
~ THEN REPLY #18119 /* ~"Mniejsza z tym. Mam do ciebie parę innych pytań..."~ */ GOTO 17
  IF ~  GlobalGT("Pharod","GLOBAL",2)
~ THEN REPLY #18120 /* ~"Nie mam już więcej pytań. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 60 // from: 59.0
  SAY #17891 /* ~"Kiedyś, *kiedyś*. Tytuły to tylko słowa, w końcu NIC z nich nie pozostaje..." Farod milknie, a potem dodaje. "Widzę, że znasz też moją przeszłość..."~ */
  IF ~~ THEN REPLY #18121 /* ~"Czego on chciał... czego chciałem od ciebie?"~ */ GOTO 61
  IF ~  GlobalGT("Pharod","GLOBAL",2)
~ THEN REPLY #18122 /* ~"Mniejsza z tym. Mam do ciebie parę innych pytań..."~ */ GOTO 17
  IF ~  GlobalGT("Pharod","GLOBAL",2)
~ THEN REPLY #18123 /* ~"Nie mam już więcej pytań. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 61 // from: 59.1 60.0
  SAY #17892 /* ~Farod wykonuje udawany ukłon, a jego laska zaczyna trzeszczeć od ciężaru ciała. "'Och, Farodzie, Wielki Królu Zbieraczy.' mówiłeś. 'Przychodzę do ciebie prosić o przysługę.' 'Przysługę?' Odpowiadam. 'Co mógłbym zrobić dla tak silnego człowieka jak ty?'"~ */
  IF ~~ THEN REPLY #18124 /* ~"Mów dalej..."~ */ GOTO 62
  IF ~~ THEN REPLY #18125 /* ~"Wystarczy tych fałszywych uprzejmości. Czego od ciebie chciałem?"~ */ GOTO 62
  IF ~  GlobalGT("Pharod","GLOBAL",2)
~ THEN REPLY #18126 /* ~"Mniejsza z tym. Mam do ciebie parę innych pytań..."~ */ GOTO 17
  IF ~  GlobalGT("Pharod","GLOBAL",2)
~ THEN REPLY #18127 /* ~"Nie mam już więcej pytań. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 62 // from: 61.0 61.1
  SAY #17893 /* ~Farod kiwa swoim zakrzywionym palcem. "A ty poprosiłeś mnie o coś dziwnego, powiedziałeś: 'Lordzie Farodzie, proszę o następującą *przysługę*. Twoi Zbieracze chodzą po całym Ulu. Gdyby znaleźli moje ciało, to chcę, żeby je zabezpieczyli. To wszystko, o co proszę'" Farod wzrusza ramionami. "Zwykła przysługa."~ */
  IF ~  CheckStatGT(Protagonist,13,WIS)
~ THEN REPLY #18128 /* ~"Rozumiem. I to wszystko, co wiesz?"~ */ GOTO 63
  IF ~  CheckStatLT(Protagonist,14,WIS)
~ THEN REPLY #18129 /* ~"Rozumiem. I to wszystko, co wiesz?"~ */ GOTO 68
  IF ~  CheckStatGT(Protagonist,12,CHR)
CheckStatLT(Protagonist,14,WIS)
~ THEN REPLY #18130 /* ~"Oprócz tego, że... sam nic z tego nie miałeś. Dlaczego się zgodziłeś?"~ */ GOTO 64
  IF ~  CheckStatGT(Protagonist,13,INT)
CheckStatLT(Protagonist,13,CHR)
CheckStatLT(Protagonist,14,WIS)
~ THEN REPLY #18131 /* ~"Oprócz tego, że... sam nic z tego nie miałeś. Dlaczego się zgodziłeś?"~ */ GOTO 64
  IF ~  GlobalGT("Pharod","GLOBAL",2)
~ THEN REPLY #18132 /* ~"Mniejsza z tym. Mam do ciebie parę innych pytań..."~ */ GOTO 17
  IF ~  GlobalGT("Pharod","GLOBAL",2)
~ THEN REPLY #18133 /* ~"Nie mam już więcej pytań. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 63 // from: 62.0
  SAY #17894 /* ~Kiedy Farod wypowiada słowo 'przysługa', nagle czujesz ukłucie w czaszce, a twoje powonienie wypełnia smród krwi zmieszanej ze strachem... Farod coś ukrywa, coś, co wydarzyło się w przeszłości, coś związanego z tobą - i to go przeraża. Przysługa, którą ci wyświadczył, nie była wcale taka zwykła.~ */
  IF ~~ THEN REPLY #18134 /* ~"Więc tak po prostu przystałeś na moją prośbę? Przecież nic z tego nie miałeś. Dlaczego się zgodziłeś?"~ */ GOTO 64
  IF ~~ THEN REPLY #18135 /* ~"Uch... Rozumiem. I to wszystko, co wiesz?"~ */ GOTO 68
  IF ~  GlobalGT("Pharod","GLOBAL",2)
~ THEN REPLY #18136 /* ~"Mniejsza z tym. Mam do ciebie parę innych pytań..."~ */ GOTO 17
  IF ~  GlobalGT("Pharod","GLOBAL",2)
~ THEN REPLY #18137 /* ~"Nie mam już więcej pytań. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 64 // from: 62.2 62.3 63.0
  SAY #17895 /* ~Farod milczy przez chwilę. Potem mówi. "Umarły nie może dotrzymać obietnic, dlatego łatwo i jemu coś obiecywać."~ */
  IF ~~ THEN REPLY #18138 /* ~"Jesteś kupcem, Farodzie, a nie Samarytaninem. Musiał być jakiś inny powód..."~ */ DO ~SetGlobal("Pharod_Sphere_Truth","GLOBAL",1)
~ GOTO 65
  IF ~~ THEN REPLY #18139 /* ~"Zatem dobrze. I to wszystko, co wiesz?"~ */ GOTO 68
  IF ~  GlobalGT("Pharod","GLOBAL",2)
~ THEN REPLY #18140 /* ~"Mniejsza z tym. Mam do ciebie parę innych pytań..."~ */ GOTO 17
  IF ~  GlobalGT("Pharod","GLOBAL",2)
~ THEN REPLY #18141 /* ~"Nie mam już więcej pytań. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 65 // from: 64.0
  SAY #17896 /* ~"Tak..." Twarz Faroda nagle nabiega krwią, a w jego oczach pojawia się gniew. "Po tym, jak napisałeś na ścianach Ula 'GIŃ' krwią moich ludzi, mogłem obiecać ci nawet same SFERY. Potem przychodzisz do mojego DOMU i ŻĄDASZ ode mnie 'przysługi'..." Farod uspokaja się, choć jego twarz pozostaje czerwona. "Tak, zgodziłem się..."~ */
  IF ~~ THEN REPLY #18142 /* ~Prawda: "Przykro mi z powodu twoich ludzi. To nie byłem ja... ale jeśli mogę ci jakoś wynagrodzić tę stratę, to zrobię to."~ */ DO ~IncrementGlobalOnceEx("GLOBALGood_Pharod_1","GLOBALGood",1)
IncrementGlobalOnceEx("GLOBALLawful_Pharod_5","GLOBALLaw",1)
~ GOTO 66
  IF ~~ THEN REPLY #18143 /* ~Prawda: "Przykro mi z powodu twoich ludzi."~ */ DO ~IncrementGlobalOnceEx("GLOBALGood_Pharod_1","GLOBALGood",1)
~ GOTO 66
  IF ~~ THEN REPLY #18144 /* ~"Mów dalej... co jeszcze?"~ */ GOTO 67
  IF ~  GlobalGT("Pharod","GLOBAL",2)
~ THEN REPLY #18145 /* ~"Mniejsza z tym. Mam do ciebie parę innych pytań..."~ */ GOTO 17
  IF ~  GlobalGT("Pharod","GLOBAL",2)
~ THEN REPLY #18146 /* ~"Nie mam już więcej pytań. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 66 // from: 65.0 65.1
  SAY #17897 /* ~Farod odpowiada. "To nic, ich ciała także mi się przydają. Grabarze płacą tyle samo za świeżych truposzy jak za starych..."~ */
  IF ~~ THEN REPLY #18147 /* ~"Czy tylko z tego powodu zgodziłeś się na moją prośbę?"~ */ GOTO 67
  IF ~  GlobalGT("Pharod","GLOBAL",2)
~ THEN REPLY #18148 /* ~"Mniejsza z tym. Mam do ciebie parę innych pytań..."~ */ GOTO 17
  IF ~  GlobalGT("Pharod","GLOBAL",2)
~ THEN REPLY #18149 /* ~"Nie mam już więcej pytań. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 67 // from: 65.2 66.0
  SAY #17898 /* ~"Wiedziałeś o mnie rzeczy... o których nie wiedział nikt oprócz mnie. Wiedziałeś, że przez moją chciwość będę chciał posiąść coś, co zostało ukryte pod Sigil, a ty nadałeś temu tylko nazwę i wygląd: kula z brązu, powiedziałeś. Nie myślałem, że mi ją przyniesiesz..." Farod zaczyna chichotać. "A jednak ci się udało. Cóż. Dziwne są zrządzenia Sfer..."~ */
  IF ~~ THEN REPLY #18150 /* ~"I tylko *tyle* wiesz?"~ */ GOTO 68
  IF ~  GlobalGT("Pharod","GLOBAL",2)
~ THEN REPLY #18151 /* ~"Mniejsza z tym. Mam do ciebie parę innych pytań..."~ */ GOTO 17
  IF ~  GlobalGT("Pharod","GLOBAL",2)
~ THEN REPLY #18152 /* ~"Nie mam już więcej pytań. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 68 // from: 62.1 63.1 64.1 67.0
  SAY #17899 /* ~"Wszystko co wiem? Nie... ale tyle wiem o tobie, nieboszczyku."~ */
  IF ~~ THEN REPLY #18153 /* ~"Następne pytanie... Co zdjąłeś z mojego ciała, kiedy umarłem?"~ */ GOTO 69
  IF ~  GlobalGT("Pharod","GLOBAL",2)
~ THEN REPLY #18154 /* ~"Mniejsza z tym. Mam do ciebie parę innych pytań..."~ */ GOTO 17
  IF ~  GlobalGT("Pharod","GLOBAL",2)
~ THEN REPLY #18155 /* ~"Nie mam już więcej pytań. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 69 // from: 17.6 68.0
  SAY #17900 /* ~"Ja?" Farod zwilża swoje wargi. "*Ja* nie wziąłem nic, nieboszczyku." Jego twarz przecina uśmiech. "A poza tym to nie ja znalazłem twoje ciało..."~ */
  IF ~~ THEN REPLY #18156 /* ~"W takim razie kto?"~ */ GOTO 70
  IF ~  GlobalGT("Pharod","GLOBAL",2)
~ THEN REPLY #18157 /* ~"Mniejsza z tym. Mam do ciebie parę innych pytań..."~ */ GOTO 17
  IF ~  GlobalGT("Pharod","GLOBAL",2)
~ THEN REPLY #18158 /* ~"Nie mam już więcej pytań. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 70 // from: 69.0 75.4
  SAY #17901 /* ~Uśmiech na twarzy Faroda powiększa się, a z jego twarzy spływają do tyłu fałdy skóry, jakby odsuwała się jakaś zasłona. "Moja córka, moja najsłodsza i najsprytniejsza róża..." Mężczyzna zwilża swoje wargi i wzdycha w udawanym smutku.~ */
  IF ~  !Dead("Annah")
~ THEN REPLY #18159 /* ~"Twoja *córka*? Kto taki?"~ */ DO ~SetGlobal("Pharod","GLOBAL",3)
~ JOURNAL #18161 /* ~Przyniosłem Farodowi kulę z brązu. Nie powiedział mi wiele przydatnych rzeczy. Stwierdził, że przyszedłem do niego i poprosiłem o 'pomoc'. Chciałem się upewnić, że kiedy umrę to członkowie jego grupy Zbieraczy pewnie i bezpiecznie zaniosą moje zwłoki do Kostnicy. Dodał, że zostałem znaleziony przez jego córkę, Annę.~ */ GOTO 71
  IF ~  Dead("Annah")
~ THEN REPLY #18160 /* ~"Twoja *córka*? Kto taki?"~ */ DO ~SetGlobal("Pharod","GLOBAL",3)
~ JOURNAL #18162 /* ~Przyniosłem Farodowi kulę z brązu. Nie powiedział mi wiele przydatnych rzeczy. Stwierdził, że przyszedłem do niego i poprosiłem o 'pomoc'. Chciałem się upewnić, że kiedy umrę to członkowie jego grupy Zbieraczy pewnie i bezpiecznie zaniosą moje zwłoki do Kostnicy. Dodał, że zostałem znaleziony przez jego córkę, Annę... zdaje się, że tak na imię miało jedno z diabelstw, które zabiłem w Ulu. Nie ma to znaczenia, skoro Farod wie gdzie znaleziono moje ciało...~ */ GOTO 72
END

IF ~~ THEN BEGIN 71 // from: 70.0 78.0 78.1 78.2
  SAY #17902 /* ~"Moja ukochana córeczka, Anna. Odnalazła cię martwego w miejscu, gdzie większość zbieraczy nie poszłaby nawet za górę miedziaków. Może i coś z ciebie zdjęła, kto wie...?" Farod przysuwa się do ciebie. "Musisz jej spytać, bo ja ci już tego nie powiem."~ */
  IF ~  CheckStatGT(Protagonist,13,INT)
Global("Pharod_Extortion","GLOBAL",0)
~ THEN REPLY #18163 /* ~"Nie kłam, Farodzie. Jesteś kupcem i zawsze bierzesz część zysków swoich ludzi dla siebie. Co Anna zdjęła z mego ciała i dała *tobie*?"~ */ GOTO 75
  IF ~  Global("Annah","GLOBAL",0)
~ THEN REPLY #18164 /* ~"Anna? W porządku, zapytam ją. Gdzie ona jest?"~ */ GOTO 73
  IF ~  GlobalGT("Annah","GLOBAL",0)
~ THEN REPLY #18166 /* ~"Mam do ciebie jeszcze kilka pytań..."~ */ GOTO 17
  IF ~  GlobalGT("Annah","GLOBAL",0)
~ THEN REPLY #18167 /* ~"No cóż. Nie mam już więcej pytań."~ */ EXIT
END

IF ~~ THEN BEGIN 72 // from: 70.1
  SAY #17903 /* ~"Moja ukochana córeczka, Anna. Odnalazła cię martwego w miejscu, gdzie większość zbieraczy nie poszłaby nawet za górę miedziaków. Może gdybyś się tam udał, to udałoby ci się odszukać to, co ci zginęło..."~ */
  IF ~~ THEN REPLY #18168 /* ~"Gdzie mnie znalazła?"~ */ GOTO 74
END

IF ~~ THEN BEGIN 73 // from: 71.1
  SAY #17904 /* ~"Gdzie jest Anna?" Farod wzrusza ramionami. "Pewnie ukrywa się gdzieś tu, w cieniu, i słucha naszej rozmowy. Kiedy zszedłeś na dół, posłałem po nią i spytałem, czy *na pewno* byłeś w księdze umarłych, kiedy cię znalazła..." Mężczyzna zanosi się suchym chichotem, potem nabiera powietrza i woła w ciemność. "Anno! Przestań ukrywać się w tych cieniach i chodź przywitać naszego gościa!"~ */
  IF ~~ THEN REPLY #18169 /* ~"Jest tutaj...?"~ */ DO ~SetGlobal("0110_Cut_Scene","GLOBAL",1)
StartCutSceneMode()
StartCutSceneEx("0110cut1",FALSE)
~ EXIT
  IF ~  GlobalGT("Annah","GLOBAL",0)
~ THEN REPLY #18170 /* ~"Mam do ciebie jeszcze kilka pytań..."~ */ GOTO 17
  IF ~  GlobalGT("Annah","GLOBAL",0)
~ THEN REPLY #18171 /* ~"No cóż. Nie mam już więcej pytań. Pójdę jej poszukać."~ */ EXIT
END

IF ~~ THEN BEGIN 74 // from: 17.7 72.0
  SAY #17905 /* ~"Powiedziała, że znalazła cię w Ulu. W nawiedzonej Alei, na północny-wschód od gospody Pod Gorejącym Człekiem..." Farod zamyśla się, stukając palcami o swoją kulę. "Oczywiście najpierw będziesz musiał przejść obok Chaosytów..."~ */
  IF ~  GlobalLT("Know_Painted_Door","GLOBAL",2)
~ THEN REPLY #18172 /* ~"Co masz na myśli?"~ */ GOTO 85
  IF ~  GlobalGT("Know_Painted_Door","GLOBAL",1)
~ THEN REPLY #18173 /* ~"Mam do ciebie jeszcze kilka pytań..."~ */ GOTO 17
  IF ~  GlobalGT("Know_Painted_Door","GLOBAL",1)
~ THEN REPLY #47828 /* ~"No cóż. Nie mam już więcej pytań. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 75 // from: 71.0
  SAY #17906 /* ~"A... tak... mój trybut..." Farod składa ręce na lasce, na której się wspiera. "Nie można było powiedzieć, czy to było od *ciebie*, czy nie. Pewnie nie było nic."~ */
  IF ~~ THEN REPLY #18175 /* ~Prawda: "Farodzie, moja cierpliwość się kończy. Jeśli nie złożysz 'trybutu', nic nie zostanie z ciebie ani z tej wioski."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Pharod_3","GLOBALGood",-1)
~ GOTO 76
  IF ~~ THEN REPLY #18176 /* ~Blef: "Farodzie, moja cierpliwość się kończy. Jeśli nie złożysz 'trybutu', nic nie zostanie z ciebie ani z tej wioski."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Pharod_4","GLOBALLaw",-1)
~ GOTO 76
  IF ~  !Global("Lawful_Pharod_3","GLOBAL",1)
~ THEN REPLY #18177 /* ~Blef: "Farodzie, moja cierpliwość się kończy. Jeśli nie oddasz mi tego, co mi ukradłeś, już ja się postaram, żeby Grabarze dowiedzieli się, jak cię znaleźć"~ */ GOTO 76
  IF ~  Global("Lawful_Pharod_3","GLOBAL",1)
~ THEN REPLY #18178 /* ~Prawda: "Farodzie, moja cierpliwość się kończy. Jeśli nie oddasz mi tego, co mi ukradłeś, już ja się postaram, żeby Grabarze dowiedzieli się, jak cię znaleźć"~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Pharod_5","GLOBALLaw",-3)
IncrementGlobalOnceEx("GLOBALEvil_Pharod_4","GLOBALGood",-1)
~ GOTO 76
  IF ~~ THEN REPLY #18179 /* ~"No cóż... Możesz mi jeszcze raz powtórzyć, kto mnie znalazł?"~ */ GOTO 70
END

IF ~~ THEN BEGIN 76 // from: 75.0 75.1 75.2 75.3
  SAY #17907 /* ~Farod na chwilę milknie. Powoli uderza palcami po lasce, na której się wspiera...~ */
  IF ~~ THEN REPLY #18180 /* ~"Więc?"~ */ DO ~SetGlobal("Pharod_Extortion","GLOBAL",1)
AddexperienceParty(1000)
~ GOTO 77
  IF ~  GlobalGT("Pharod","GLOBAL",2)
~ THEN REPLY #18181 /* ~"Mniejsza z tym. Mam do ciebie parę innych pytań..."~ */ GOTO 17
  IF ~  GlobalGT("Pharod","GLOBAL",2)
~ THEN REPLY #18182 /* ~"Nie mam już więcej pytań. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 77 // from: 76.0
  SAY #17908 /* ~"Gdzie podziała się ludzka przyzwoitość... Wyświadczam ci wielką uprzejmość, wielką... Żeby Farod musiał się z czymś rozstawać... Już bym się znalazł w księdze umarłych, gdyby ktoś o tym usłyszał... czekaj tutaj i nie ruszaj się o krok. Zaraz wrócę."~ */
  IF ~  CheckStatLT(Protagonist,14,INT)
~ THEN REPLY #18183 /* ~Czekaj...~ */ DO ~FadeToColor([20.0],0)
Wait(3)
FadeFromColor([20.0],0)
~ JOURNAL #18185 /* ~Farod przyniósł trybut, jaki jego córka dała mu z mego ciała. Dołączony był do niego osobliwy kawałek papieru... mam dziwne wrażenie, że mogłem napisać go sam do siebie.~ */ GOTO 78
  IF ~  CheckStatGT(Protagonist,13,INT)
~ THEN REPLY #18184 /* ~"Hmmm. Ciekawe gdzie on idzie..."~ */ DO ~FadeToColor([20.0],0)
Wait(3)
FadeFromColor([20.0],0)
~ JOURNAL #18186 /* ~Farod przyniósł trybut, jaki jego córka dała mu z mego ciała. Dołączony był do niego osobliwy kawałek papieru... mam dziwne wrażenie, że mogłem napisać go sam do siebie. Co ciekawsze, zastanawiam się skąd Farod przyniósł trybut... nie wyszedł przez główne drzwi, a nie wydaje mi się, aby były stąd jakieś inne wyjścia.~ */ GOTO 78
END

IF ~~ THEN BEGIN 78 // from: 77.0 77.1
  SAY #17909 /* ~Po dość długim czasie Farod wraca z rękami pełnymi różnych rzeczy, które ci podaje. "Nie wspomnisz o tym *nikomu* i ciesz się, że o tobie pamiętałem..."~ */
  IF ~  CheckStatLT(Protagonist,11,CHR)
~ THEN REPLY #18187 /* ~"Kilkaset miedziaków i skrawek papieru? Wspaniale. Powiedz jeszcze raz, kto mnie znalazł?"~ */ DO ~GiveGoldForce(200)
GiveItemCreate("Npharod",Protagonist,1,0,0)
~ GOTO 71
  IF ~  CheckStatGT(Protagonist,10,CHR)
CheckStatLT(Protagonist,15,CHR)
~ THEN REPLY #18188 /* ~"Kilkaset miedziaków, kawałek papieru i pierścień? No cóż... Możesz mi jeszcze raz powtórzyć, kto mnie znalazł?"~ */ DO ~GiveGoldForce(250)
GiveItemCreate("Npharod",Protagonist,1,0,0)
GiveItemCreate("Ring01",Protagonist,1,0,0)
~ GOTO 71
  IF ~  CheckStatGT(Protagonist,14,CHR)
~ THEN REPLY #18189 /* ~"Kilkaset miedziaków, kawałek papieru i pierścień? No cóż... Możesz mi jeszcze raz powtórzyć, kto mnie znalazł?"~ */ DO ~GiveGoldForce(350)
GiveItemCreate("Npharod",Protagonist,1,0,0)
GiveItemCreate("Bandage",Protagonist,1,0,0)
GiveItemCreate("Bandage",Protagonist,1,0,0)
GiveItemCreate("Bandage",Protagonist,1,0,0)
GiveItemCreate("Ring01",Protagonist,1,0,0)
~ GOTO 71
END

IF ~~ THEN BEGIN 79 // from: 17.2
  SAY #17910 /* ~Farod spogląda na ciebie spod przymrużonych oczu. "Kiedy ostatni raz rozmawialiśmy, miałeś przy sobie dziennik... czyżby się zgubił?" Farod zanosi się suchym chichotem. "Bardzo chciałbym przeczytać takie *wspaniałe* dzieło..."~ */
  IF ~~ THEN REPLY #18190 /* ~"Mam do ciebie jeszcze kilka pytań..."~ */ GOTO 17
  IF ~~ THEN REPLY #18191 /* ~"Muszę już iść. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 80 // from: 33.0
  SAY #17911 /* ~"Kłamstwa, które sprowadzają śmierć na kogo innego, to najgorsza rzecz..." Farod stuka palcami o laskę, na której się wspiera. "Lepiej dotrzymaj słowa, nieboszczyku, albo Sfery zmielą cię jak koło młynarskie mile zboże."~ */
  IF ~~ THEN REPLY #18192 /* ~"Będę o tym pamiętać. Mam do ciebie jeszcze kilka pytań..."~ */ GOTO 17
  IF ~~ THEN REPLY #18193 /* ~"Zobaczymy, Farodzie. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 81 // from:
  SAY #47307 /* ~"Anno, moja kochana, czyż nie uczyłem cię, że trzeba *szanować* umarłych?" Po twarzy Faroda przenika lekki uśmiech, a potem wykonuje lekki ukłon w twoim kierunku. "Ten pomysłowy nieboszczyk pragnie wiedzieć, gdzie go znalazłaś."~ */
  IF ~~ THEN EXTERN ~DANNAH~ 220
END

IF ~~ THEN BEGIN 82 // from:
  SAY #47308 /* ~"Ach! To moja wina..." Farod przytakuje, ale zaraz potem niebezpiecznie ścisza głos. "Choć, moja droga Anno, to także twoja wina... Ten nieboszczyk był tylko jedną nogą w księdze umarłych, gdy mi go przyniosłaś." Mężczyzna uderza swoją laską o kamienną posadzkę. "Obudził się i odszukał mnie - strasznie to żenujące."~ */
  IF ~~ THEN EXTERN ~DANNAH~ 221
END

IF ~~ THEN BEGIN 83 // from:
  SAY #47309 /* ~"Pokaż mu, gdzie znalazłaś jego ciało." Farod jeszcze raz uderza laską o posadzkę, jakby chciał podkreślić swoje słowa. "Zabierz go do nawiedzonej alei." Mężczyzna przez chwilę przygląda się Annie, a potem uśmiecha się i przenosi wzrok na ciebie. "Gdybyś czasem zgubił Annę po drodze do alei, wróć się ze mną zobaczyć. Wtedy ja wskażę ci drogę..."~ */
  IF ~~ THEN JOURNAL #59007 /* ~Nie wiem, czy powinienem się szukać w tych pochlebstwa, czy też obelgi. Farod powiedział, że jego 'córka' będzie mnie eskortować do miejsca, gdzie znalazła moje ciało. To jakaś nawiedzona aleja. Powiedział też, że jeżeli zgubię ją po drodze, mogę tutaj wrócić, a wówczas on powiedzie mnie osobiście...~ */ EXTERN ~DANNAH~ 224
END

IF ~~ THEN BEGIN 84 // from:
  SAY #47310 /* ~"Anno..." Głos Faroda jest spokojny, ale przerywa słowa dziewczyny jak nóż. "Opiekuj się nim. Dopilnuj, żeby nie stało się mu nic złego, kiedy będzie w wiosce. Potem zaprowadź go tam, gdzie będzie chciał iść."~ */
  IF ~~ THEN EXTERN ~DANNAH~ 226
END

IF ~~ THEN BEGIN 85 // from: 74.0
  SAY #47829 /* ~"Moja słodka Anna musiała przejść przez jedno z ich leż, żeby dotrzeć do alei, gdzie cię odnalazła... Pomiędzy nią, a aleją, gdzie znalazła twoje ciało, stał budynek, w którym aż się od nich roiło."~ */
  IF ~  GlobalLT("Know_Painted_Door","GLOBAL",2)
~ THEN REPLY #47832 /* ~"Więc... *Zanim* dotrę do tej 'nawiedzonej alei', muszę przejść przez jakiś budynek?"~ */ GOTO 86
  IF ~  GlobalGT("Know_Painted_Door","GLOBAL",1)
~ THEN REPLY #47833 /* ~"Mam do ciebie jeszcze kilka pytań..."~ */ GOTO 17
  IF ~  GlobalGT("Know_Painted_Door","GLOBAL",1)
~ THEN REPLY #47834 /* ~"No cóż, nie mam już więcej pytań. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 86 // from: 85.0
  SAY #47830 /* ~"Tak... Mówiła coś o tym, że Chaosyci mieli jakieś specjalne wrota." Farod zamyśla się na chwilę. "To były drzwi, które można otworzyć tylko z zamkniętymi oczyma - jeśli się tego nie zrobi, to wyglądają one jakby je ktoś namalował."~ */
  IF ~  Global("Know_Painted_Door","GLOBAL",1)
~ THEN REPLY #47835 /* ~"Przypominam sobie te drzwi... Znajdują się na północny-zachód od gospody Pod Gorejącym Człekiem. Ale wydawało mi się, że to tylko obraz. Więc kiedy próbujesz je otworzyć z zamkniętymi oczyma, to stają się one PRAWDZIWYMI drzwiami?"~ */ DO ~SetGlobal("Know_Painted_Door","GLOBAL",2)
~ JOURNAL #47848 /* ~Farod powiedział mi gdzie znaleziono moje ciało... na 'nawiedzonej alei' w pobliżu Karczmy pod Gorejącym człekiem, w Ulu. Może tam dowiem się czegoś o tym jak zginąłem. Powiedział mi, że jeśli chcę się tam dostać, będę musiał przejść przez kamienicę pełną Chaosytów. Wejściem do budynku ma być malunek drzwi na północ od Karczmy pod Gorejącym Człekiem; kiedy zamknie się oczy, drzwi stają się prawdziwe. To miasto robi się coraz dziwniejsze...~ */ GOTO 87
  IF ~  Global("Know_Painted_Door","GLOBAL",0)
~ THEN REPLY #47836 /* ~"Więc te... wymalowane drzwi... znajdują się na północny-zachód od gospody Pod Gorejącym Człekiem? A kiedy próbujesz je otworzyć z zamkniętymi oczyma, to stają się one czymś WIĘCEJ niż malowidłem?"~ */ DO ~SetGlobal("Know_Painted_Door","GLOBAL",2)
~ JOURNAL #47848 /* ~Farod powiedział mi gdzie znaleziono moje ciało... na 'nawiedzonej alei' w pobliżu Karczmy pod Gorejącym człekiem, w Ulu. Może tam dowiem się czegoś o tym jak zginąłem. Powiedział mi, że jeśli chcę się tam dostać, będę musiał przejść przez kamienicę pełną Chaosytów. Wejściem do budynku ma być malunek drzwi na północ od Karczmy pod Gorejącym Człekiem; kiedy zamknie się oczy, drzwi stają się prawdziwe. To miasto robi się coraz dziwniejsze...~ */ GOTO 87
  IF ~  GlobalGT("Know_Painted_Door","GLOBAL",1)
~ THEN REPLY #47837 /* ~"Mam do ciebie jeszcze kilka pytań..."~ */ GOTO 17
  IF ~  GlobalGT("Know_Painted_Door","GLOBAL",1)
~ THEN REPLY #47838 /* ~"No cóż. Nie mam już więcej pytań. Pójdę i poszukam tych malowanych drzwi."~ */ EXIT
END

IF ~~ THEN BEGIN 87 // from: 86.0 86.1
  SAY #47831 /* ~"Tak..." Na twarzy Faroda pojawia się uśmiech. "Niezbadane są ścieżki Sigil. Niezbadane są ścieżki Sigil."~ */
  IF ~~ THEN REPLY #47839 /* ~"Mam do ciebie jeszcze kilka pytań..."~ */ GOTO 17
  IF ~~ THEN REPLY #47840 /* ~"No cóż. Nie mam już więcej pytań. Pójdę i poszukam tych malowanych drzwi."~ */ EXIT
END
