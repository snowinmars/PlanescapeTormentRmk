// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DVIVIAN.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\pl_PL\dialog.tlk
// dialogF  : (none)

BEGIN ~DVIVIAN~
//////////////////////////////////////////////////
// WARNING: this file contains non-trivial WEIGHTs
//////////////////////////////////////////////////

IF WEIGHT #3 /* Triggers after states #: 28 29 37 even though they appear after this state */
~  Global("Vivian","GLOBAL",0)
Global("Scent_Quest","AR0605",0)
~ THEN BEGIN 0 // from:
  SAY #2999 /* ~Ta wysoka, pełna elegancji kobieta o regularnych, szlachetnych rysach twarzy i książęcej postawie jest żywym przykładem arystokratycznego piękna. Jej szaty połyskują srebrną nicią. Zauważasz, że z naszyjnika zdobiącego jej łabędzią szyję zwisa niewielka fiolka. Jej perfumy niosą egzotyczny i przepojony erotyką aromat, który działa na ciebie jak magnes.~ */
  IF ~~ THEN REPLY #3000 /* ~"Witaj..."~ */ DO ~SetGlobal("Vivian","GLOBAL",1)
~ GOTO 2
  IF ~~ THEN REPLY #38430 /* ~Zostaw ją w spokoju.~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from:
  SAY #38431 /* ~Ta wysoka, pełna elegancji kobieta o regularnych, szlachetnych rysach twarzy i książęcej postawie jest żywym przykładem arystokratycznego piękna. Jej szaty połyskują srebrną nicią. Zauważasz, że z naszyjnika zdobiącego jej łabędzią szyję zwisa niewielka fiolka. Jej perfumy niosą egzotyczny i przepojony erotyką aromat, który działa na ciebie jak magnes.~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 2 // from: 0.0
  SAY #38434 /* ~Kobieta patrzy na ciebie, i marszczy brwi, co odczytujesz jako grymas pogardy. "Witaj. Nazywam się Vivian. Czy mam rozumieć, że mnie wezwałeś?"~ */
  IF ~~ THEN REPLY #38435 /* ~"Nie, mam tylko kilka pytań..."~ */ GOTO 3
  IF ~~ THEN REPLY #38436 /* ~"Nie. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 2.0 5.1 7.2 9.2 10.1 12.0 17.0 18.0 19.1 20.1 21.1 22.0 23.0 24.1 25.0 26.0 27.0 28.0 29.2 30.1 37.0 38.0
  SAY #39059 /* ~Kobieta władczo ponagla cię skinieniem głowy. "Tedy mów."~ */
  IF ~  Global("Scent_Quest","AR0605",0)
~ THEN REPLY #39060 /* ~"Co tutaj robisz?"~ */ GOTO 4
  IF ~  GlobalGT("Scent_Quest","AR0605",0)
~ THEN REPLY #39067 /* ~"Co tutaj robisz?"~ */ GOTO 30
  IF ~  Global("Scent_Quest","AR0605",0)
~ THEN REPLY #39068 /* ~"Co to za niezwykły zapach?"~ */ GOTO 19
  IF ~  Global("Scent_Quest","AR0605",0)
~ THEN REPLY #39069 /* ~"Co to za fiolka, która nosisz przy swoim naszyjniku?"~ */ GOTO 20
  IF ~~ THEN REPLY #39070 /* ~"Możesz opowiedzieć mi o tym miejscu?"~ */ GOTO 24
  IF ~  Global("Ecco_Speak","GLOBAL",1)
Global("Ecco_Name","AR0605",0)
~ THEN REPLY #39071 /* ~"Co możesz mi powiedzieć o milczącej kurtyzanie?"~ */ DO ~SetGlobal("Ecco_Name","AR0605",1)
SetGlobal("Ecco_Rumor_1","AR0605",1)
~ JOURNAL #66744 /* ~Kiedy zagadnąłem jedną z kurtyzan o Ecco, milczącą kurtyzanę, wówczas poradziła mi, abym wypytał na ten temat Dolorę. Powiedziała mi, że Dolora zna dawnego kochanka Ecco, z czasów, kiedy jeszcze Ecco posiadała dar mowy.~ */ GOTO 38
  IF ~  Global("Ecco_Speak","GLOBAL",1)
GlobalGT("Ecco_Name","AR0605",0)
~ THEN REPLY #67850 /* ~"Co możesz mi powiedzieć o milczącej kurtyzanie?"~ */ DO ~SetGlobal("Ecco_Rumor_1","AR0605",1)
~ JOURNAL #66744 /* ~Kiedy zagadnąłem jedną z kurtyzan o Ecco, milczącą kurtyzanę, wówczas poradziła mi, abym wypytał na ten temat Dolorę. Powiedziała mi, że Dolora zna dawnego kochanka Ecco, z czasów, kiedy jeszcze Ecco posiadała dar mowy.~ */ GOTO 38
  IF ~  Global("Know_Kesai_Ravel","AR0605",1)
!Global("Kesai","GLOBAL",3)
~ THEN REPLY #39072 /* ~"Słyszałem, że Kesai-Serris jest córką Raveli. Czy to prawda?"~ */ JOURNAL #66743 /* ~Spytałem się jednej z kurtyzan, czy to prawda, że Kesai-Serris jest córką Raveli. Kobieta ta poradziła mi, abym zapytał o to Julię. Zdaje się, że zanim Julia poznała Monteka, była dobrą przyjaciółką Kesai-Serris.~ */ GOTO 26
  IF ~  Global("Veil_Quest","AR0605",1)
~ THEN REPLY #39073 /* ~"Szukam karmazynowego welonu Marissy... Czy wiesz, gdzie mógłby być?"~ */ GOTO 23
  IF ~  Global("Know_Ravel","GLOBAL",1)
~ THEN REPLY #39074 /* ~"Czy wiesz coś o Raveli Szaradnej?"~ */ GOTO 21
  IF ~  Global("Grace_Quest","GLOBAL",1)
GlobalGT("Ecco","GLOBAL",0)
GlobalGT("Yves","GLOBAL",0)
GlobalGT("Nenny","GLOBAL",0)
GlobalGT("SadJuli","GLOBAL",0)
GlobalGT("Marissa","GLOBAL",0)
GlobalGT("Kesai","GLOBAL",0)
GlobalGT("Dolora","GLOBAL",0)
GlobalGT("Kimasxi","GLOBAL",0)
~ THEN REPLY #39075 /* ~"Rozmawiałem już z dziewięcioma kurtyzanami... Czy wiesz może, kim jest dziesiąta? Albo gdzie można ją znaleźć?"~ */ GOTO 27
  IF ~~ THEN REPLY #39076 /* ~"Mniejsza z tym. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 3.0
  SAY #39077 /* ~"Co tutaj robię? Jestem uczennicą. A co robię poza poza zgłębianiem nauk? Szukam czegoś. Nie wyczułeś tego, prawda?"~ */
  IF ~~ THEN REPLY #39078 /* ~"Uczennicą?"~ */ GOTO 5
  IF ~~ THEN REPLY #39079 /* ~"Wyczułem?"~ */ GOTO 6
  IF ~~ THEN REPLY #39080 /* ~"Nie, nie wydaje mi się..."~ */ GOTO 7
  IF ~~ THEN REPLY #39081 /* ~"Właściwie to już czas na mnie. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 4.0
  SAY #39082 /* ~Vivian kiwa głową. Wygląda na nieco znużoną. "To prawda. Pani Sława ćwiczy nas w sztuce języka i konwersacji. Wpaja nam umiejętność wpływania na innych poprzez słowa i pozyskiwania nowych koncepcji innych i siebie samych. Wszystkie kurtyzany tutaj uczą się tego."~ */
  IF ~~ THEN REPLY #39083 /* ~"Pytałaś, czy... nie wyczułem czegoś?"~ */ GOTO 6
  IF ~~ THEN REPLY #39084 /* ~"Pozwól, niechaj spytam o coś innego..."~ */ GOTO 3
  IF ~~ THEN REPLY #39085 /* ~"To już wszystko, co chciałem wiedzieć. Bywaj zdrowa."~ */ EXIT
END

IF ~~ THEN BEGIN 6 // from: 4.1 5.0 19.0 20.0
  SAY #39086 /* ~"Tak. Miałam szczególny zapach, który straciłam... Opuścił mnie. Nie łatwo go utrzymać w jednym miejscu. Mam nadzieję, że nikt nie przywłaszczy go sobie przez przypadek... Chociaż z tymi 'damami' tutaj nigdy nic nie wiadomo." Kobieta marszczy brwi. "Więc... Czy czesem gdzieś go nie wyczułeś?"~ */
  IF ~~ THEN REPLY #39087 /* ~"Wiesz, pachniesz całkiem nieźle..."~ */ GOTO 8
  IF ~~ THEN REPLY #39088 /* ~"W jaki sposób zapach mógł cię opuścić?"~ */ GOTO 9
  IF ~~ THEN REPLY #39089 /* ~"Nie wydaje mi się, żeby to wyczuł..."~ */ GOTO 7
END

IF ~~ THEN BEGIN 7 // from: 4.2 6.2 8.1
  SAY #39090 /* ~"Niestety. Obawiam się, że nigdy go nie odzyskam."~ */
  IF ~~ THEN REPLY #39091 /* ~"A skąd będziesz wiedziała, że to akurat ten?"~ */ GOTO 10
  IF ~~ THEN REPLY #39092 /* ~"Mogę ci pomóc..."~ */ GOTO 11
  IF ~~ THEN REPLY #39093 /* ~"Pozwól, niechaj spytam o coś innego..."~ */ GOTO 3
  IF ~~ THEN REPLY #39094 /* ~"Powodzenia w poszukiwaniach. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 8 // from: 6.0
  SAY #39095 /* ~Przez jej twarz przebiega grymas, ale zaraz potem rozpogadza się. "Tak, tak. Dziękuję za komplement... Ale zapewniam cię, że ten aromat nie ma nic wspólnego z moim osobistym zapachem." Kobieta wzdycha.~ */
  IF ~~ THEN REPLY #39096 /* ~"W jaki sposób zapach mógł cię opuścić?"~ */ GOTO 9
  IF ~~ THEN REPLY #39097 /* ~"Nie wydaje mi się, żebym go wyczuł..."~ */ GOTO 7
END

IF ~~ THEN BEGIN 9 // from: 6.1 8.0
  SAY #39098 /* ~Vivian potrząsa głową. "Chciałam zasugerować, że został po prostu przez kogoś *zabrany*. Te 'damy' tutaj są nieco zazdrosne i czasami podkradają mi rozmaite perfumy. Ale tym razem ktoś połaszczył się na mój osobisty, prywatny zapach... Pracowałam nad tym aromatem, doskonaliłam go i proszę, co się stało. Nie ma go. Nie potrafię mówić o tym spokojnie!" Vivian tupie gniewnie. "Chcę, żeby ten zapach do mnie wrócił! I to natychmiast!"~ */
  IF ~~ THEN REPLY #39099 /* ~"A skąd będziesz wiedziała, że to akurat ten?"~ */ GOTO 10
  IF ~~ THEN REPLY #39100 /* ~"Mogę ci pomóc..."~ */ GOTO 11
  IF ~~ THEN REPLY #39101 /* ~"Pozwól, niechaj spytam o coś innego..."~ */ GOTO 3
  IF ~~ THEN REPLY #39102 /* ~"Powodzenia w poszukiwaniach. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 10 // from: 7.0 9.0
  SAY #39103 /* ~"Poznałbyś go po zapachu, zapewniam cię. Działa nieco oszałamiająco, szczególnie na mężczyzn."~ */
  IF ~~ THEN REPLY #39104 /* ~"Mogę ci pomóc..."~ */ GOTO 11
  IF ~~ THEN REPLY #39105 /* ~"Pozwól, niechaj spytam o coś innego..."~ */ GOTO 3
  IF ~~ THEN REPLY #39106 /* ~"Powodzenia w poszukiwaniach. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 11 // from: 7.1 9.1 10.0
  SAY #39107 /* ~Vivian reaguje na to z powątpiewaniem. "Jesteś pewien? Nie chciałabym się nikomu narzucać."~ */
  IF ~  !NearbyDialog("DAnnah")
~ THEN REPLY #39108 /* ~"Nikt tu się nikomu nie narzuca. Nieść pomoc tak pięknej kobiecie to dla mnie przyjemność i zaszczyt."~ */ DO ~SetGlobal("Scent_Quest","AR0605",1)
SetGlobal("Scent_Quest_QJ","GLOBAL",1)
~ JOURNAL #61607 /* ~Zgodziłem się pomóc Vivian, jednej z kurtyzan z Przybytku Zaspokajania Żądz Intelektualnych w odnalezieniu jej 'osobistego zapachu'. Vivian powiedziała, że ten zapach jest tak niepowtarzalny, że zaraz go poczuję, jeżeli tylko znajdę się w jego pobliżu.~ */ GOTO 12
  IF ~  NearbyDialog("DAnnah")
~ THEN REPLY #39109 /* ~"Nikt tu się nikomu nie narzuca. Nieść pomoc tak pięknej kobiecie to dla mnie przyjemność i zaszczyt."~ */ DO ~SetGlobal("Scent_Quest","AR0605",1)
SetGlobal("Scent_Quest_QJ","GLOBAL",1)
~ JOURNAL #61607 /* ~Zgodziłem się pomóc Vivian, jednej z kurtyzan z Przybytku Zaspokajania Żądz Intelektualnych w odnalezieniu jej 'osobistego zapachu'. Vivian powiedziała, że ten zapach jest tak niepowtarzalny, że zaraz go poczuję, jeżeli tylko znajdę się w jego pobliżu.~ */ EXTERN ~DANNAH~ 194
  IF ~~ THEN REPLY #39110 /* ~"Nikt tu się nikomu nie narzuca. Nie robię niczego za darmo."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Vivian_1","GLOBALGood",-1)
~ GOTO 13
  IF ~~ THEN REPLY #39111 /* ~"Gdybyś miała kłopoty, może ja mógłbym ci pomóc."~ */ GOTO 18
END

IF ~~ THEN BEGIN 12 // from: 11.0
  SAY #39112 /* ~Vivian uśmiecha się i łaskawie kiwa głową. "Jesteś niezwykle uprzejmy. A więc dobrze... Gdybyś natknął się na mój zapach, daj mi znać. Bardzo mi zależy na jego odzyskaniu. To był naprawdę zapach jedyny w swoim rodzaju."~ */
  IF ~~ THEN REPLY #39113 /* ~"Pozwól, niechaj spytam o coś innego..."~ */ GOTO 3
  IF ~~ THEN REPLY #39114 /* ~"Czas już na mnie. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 13 // from: 11.2
  SAY #39115 /* ~Vivian przewraca oczami. "No tak. Przecież twoja bydlęca, łotrowska postawa mówi wprost, że jesteś najemnikiem. Bardzo dobrze zatem... Odzyskaj mój zapach, a pomogę ci z twoim zapachem."~ */
  IF ~~ THEN REPLY #39116 /* ~"Z moim?"~ */ GOTO 14
END

IF ~~ THEN BEGIN 14 // from: 13.0
  SAY #39117 /* ~Kobieta uśmiecha się z wyższością, a potem wskazuje na ciebie. "Tak, z twoim okropnym kwaśnym zapachem." Pociąga nosem i krzywi się. "To idzie z wewnątrz ciebie. Żadna kąpiel tego nie usunie."~ */
  IF ~~ THEN REPLY #39118 /* ~"Jak tego chcesz dokonać i jaki z tego pożytek?"~ */ GOTO 15
  IF ~~ THEN REPLY #39119 /* ~"Zapomnij. Szkoda na to mojego czasu."~ */ GOTO 18
END

IF ~~ THEN BEGIN 15 // from: 14.0
  SAY #39120 /* ~"Odpowiem od razu na pierwsze twoje pytanie. Posiadam kilka umiejętności, czarodziejskich z natury, nie miejsce tu na ich omówienie, które to umiejętności pozwalają mi na stwarzanie i przeobrażanie zapachów."~ */
  IF ~~ THEN REPLY #39121 /* ~"A jaka z tego korzyść dla mnie?"~ */ GOTO 16
  IF ~~ THEN REPLY #39122 /* ~"Zapomnij. Szkoda na to mojego czasu."~ */ GOTO 18
END

IF ~~ THEN BEGIN 16 // from: 15.0
  SAY #39123 /* ~"Nie możesz zaprzeczyć, że zapach mężczyzny czy kobiety odgrywa ważną rolę w odbiorze danej osoby. Niezależnie od tego, czy ci to wiadomo, czy nie, jestem absolutnie pewna, że ty, tym swoim cmentarnych zapachem, nie przysparzasz sobie zbyt wielu przyjaciół. Gdybyś pachniał lepiej, to wydatnie powiększyło by twoją charyzmę. Pomyśl o tym."~ */
  IF ~~ THEN REPLY #39124 /* ~"Bardzo dobrze... Znajdę twój zapach."~ */ DO ~SetGlobal("Scent_Quest","AR0605",1)
SetGlobal("Scent_Quest_QJ","GLOBAL",1)
~ JOURNAL #61607 /* ~Zgodziłem się pomóc Vivian, jednej z kurtyzan z Przybytku Zaspokajania Żądz Intelektualnych w odnalezieniu jej 'osobistego zapachu'. Vivian powiedziała, że ten zapach jest tak niepowtarzalny, że zaraz go poczuję, jeżeli tylko znajdę się w jego pobliżu.~ */ GOTO 17
  IF ~~ THEN REPLY #39125 /* ~"Zapomnij. Szkoda na to mojego czasu."~ */ GOTO 18
END

IF ~~ THEN BEGIN 17 // from: 16.0
  SAY #39126 /* ~"Zatem umowa stoi. Gdybyś natknął się na mój zapach, daj mi znać. Bardzo mi zależy na jego odzyskaniu. To był naprawdę zapach jedyny w swoim rodzaju."~ */
  IF ~~ THEN REPLY #39127 /* ~"Pozwól, niechaj spytam o coś innego..."~ */ GOTO 3
  IF ~~ THEN REPLY #39128 /* ~"Czas już na mnie. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 18 // from: 11.3 14.1 15.1 16.1
  SAY #39129 /* ~"Dobrze. To dla mnie nieistotne. Jestem pewna, że wkrótce go odnajdę na własną rękę."~ */
  IF ~~ THEN REPLY #39130 /* ~"Pozwól, niechaj spytam o coś innego..."~ */ GOTO 3
  IF ~~ THEN REPLY #39131 /* ~"Czas już na mnie. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 19 // from: 3.2
  SAY #39132 /* ~Kobieta uśmiecha się. "Dziękuję za komplement... Ale zapewniam cię, ten tutaj aromat to mdły i marny odór, w porównaniu z moim osobistym zapachem, który straciłam."~ */
  IF ~~ THEN REPLY #39133 /* ~"Twoim... osobistym zapachem?"~ */ GOTO 6
  IF ~~ THEN REPLY #39134 /* ~"Pozwól, niechaj spytam o coś innego..."~ */ GOTO 3
  IF ~~ THEN REPLY #39135 /* ~"To już wszystko, co chciałem wiedzieć. Bywaj zdrów."~ */ EXIT
END

IF ~~ THEN BEGIN 20 // from: 3.3
  SAY #39136 /* ~Vivian spogląda na fiolkę wiszącą u jej naszyjnika. "A to... To tylko fiolka z perfumami. Ale zapewniam cię, aromat tych perfum nie może się równać z moim osobistym zapachem." Kobieta wzdycha tęsknie.~ */
  IF ~~ THEN REPLY #39137 /* ~"Twoim... osobistym zapachem?"~ */ GOTO 6
  IF ~~ THEN REPLY #39138 /* ~"Pozwól, niechaj spytam o coś innego..."~ */ GOTO 3
  IF ~~ THEN REPLY #39139 /* ~"To już wszystko, co chciałem wiedzieć. Bywaj zdrowa."~ */ EXIT
END

IF ~~ THEN BEGIN 21 // from: 3.9
  SAY #39140 /* ~"A nie jest to jakaś postać historyczna? Nie pamiętam. Kto to taki?"~ */
  IF ~~ THEN REPLY #39141 /* ~"Nocna wiedźma z historii Sigil. Tak sądzę."~ */ JOURNAL #66742 /* ~Kiedy zapytałem się o Ravelę jednej z kurtyzan z Przybytku, dziewczyna poradziła mi, abym porozmawiał na temat Raveli z Yves. Powiedziano mi, że Yves zwykła kolekcjonować wszystkie plotki i opowiastki i na pewno znajdzie w swoim repertuarze coś na temat Raveli.~ */ GOTO 22
  IF ~~ THEN REPLY #39142 /* ~"Mniejsza o to... Pozwól, niechaj spytam o coś innego..."~ */ GOTO 3
  IF ~~ THEN REPLY #39143 /* ~"Zapomnijmy o tym. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 22 // from: 21.0
  SAY #39144 /* ~"Mam nadzieję, że ona to już przeszłość. Nocne wiedźmy to odrażające istoty, szargające reputację wszystkich kobiet w Sferach." Kobieta nagle milknie. "Chyba powinieneś porozmawiać z Yves. Ona zna wszystkie opowiastki."~ */
  IF ~~ THEN REPLY #39146 /* ~"Mam jeszcze jedno pytanie..."~ */ GOTO 3
  IF ~~ THEN REPLY #39147 /* ~"To już wszystko, co chciałem wiedzieć. Bywaj zdrowa."~ */ EXIT
END

IF ~~ THEN BEGIN 23 // from: 3.8
  SAY #39148 /* ~"Gdybym znała to miejsce, spuściłabym na nie ognistą ulewę, a jego szczątki zrzuciłabym w najgłębsze przepaście. Niechaj to nędzne stworzenie nigdy nie odzyska swojego welonu i spędzi w tamtej komnacie resztę swoich dni!" Vivian odchrząkuje.~ */
  IF ~~ THEN REPLY #39149 /* ~"Mam jeszcze jedno pytanie..."~ */ GOTO 3
  IF ~~ THEN REPLY #39150 /* ~"Zatem żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 24 // from: 3.4
  SAY #39151 /* ~"Przybytek Pani Sławy? To szkoła, w której naucza sztuki mowy i konwersacji. Wpaja nam umiejętność wpływania na innych poprzez słowa i pozyskiwania nowych koncepcji innych i siebie samych. Dla wielu jest to rodzaj przygotowań przed przystąpieniem do Stronnictwa Doznań."~ */
  IF ~~ THEN REPLY #39152 /* ~"Stronnictwa Doznań?"~ */ GOTO 25
  IF ~~ THEN REPLY #39153 /* ~"Mam jeszcze jedno pytanie..."~ */ GOTO 3
  IF ~~ THEN REPLY #39154 /* ~"To już wszystko, co chciałem wiedzieć. Bywaj zdrowa."~ */ EXIT
END

IF ~~ THEN BEGIN 25 // from: 24.0 30.0
  SAY #39155 /* ~Vivian wzdycha. "Powinieneś porozmawiać z Nie-Sławą, albo jeszcze lepiej, z kimś z Miejskiego Gmachu Rozrywki, z Czuciowcami. Oni na pewne zechcą cię wysłuchać."~ */
  IF ~~ THEN REPLY #39156 /* ~"Mam jeszcze jedno pytanie..."~ */ GOTO 3
  IF ~~ THEN REPLY #39157 /* ~"To już wszystko, co chciałem wiedzieć. Bywaj zdrowa."~ */ EXIT
END

IF ~~ THEN BEGIN 26 // from: 3.7
  SAY #39158 /* ~Vivian kiwa głową i zniża głos do szeptu. "Do mnie też doszły takie pogłoski. To by wyjaśniało sprawę czerwonego koloru jej oczu i niezwykłego odcienia jej skóry. Niemniej jednak nie wiem czy te pogłoski są prawdziwe. Spytaj Julii, ona była kiedyś najlepszą przyjaciółką Kesai-Serris, dopóki nie zakochała się w Monteku."~ */
  IF ~~ THEN REPLY #39159 /* ~"Dobrze. Więc mam kilka pytań..."~ */ GOTO 3
  IF ~~ THEN REPLY #39160 /* ~"Zatem żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 27 // from: 3.10
  SAY #39161 /* ~"Dziesiąta?" Kobieta patrzy na ciebie, jakby uważała, że się przesłyszała. "Może przyjąłeś zbyt wiele ciosów na głowę. Albo któraś z dziewczyn zrobiła ci kawał. Nie ma tu żadnej dziesiątej kurtyzany."~ */
  IF ~~ THEN REPLY #39162 /* ~"Dobrze. Więc mam kilka pytań..."~ */ GOTO 3
  IF ~~ THEN REPLY #39163 /* ~"Zatem żegnaj."~ */ EXIT
END

IF WEIGHT #2 /* Triggers after states #: 29 37 even though they appear after this state */
~  Global("Vivian","GLOBAL",1)
Global("Scent_Quest","AR0605",0)
~ THEN BEGIN 28 // from:
  SAY #39164 /* ~Vivian wita twoje przybycie książęcym skinieniem głowy. Cała emanuje swym egzotycznym, przesyconych erotyką zapachem, który niepowstrzymanie przyciąga cię do niej.~ */
  IF ~~ THEN REPLY #39165 /* ~"Mam kilka pytań..."~ */ GOTO 3
  IF ~~ THEN REPLY #39166 /* ~"Akurat tędy przechodziłem. Żegnaj."~ */ EXIT
END

IF WEIGHT #1 /* Triggers after states #: 37 even though they appear after this state */
~  Global("Scent_Quest","AR0605",1)
~ THEN BEGIN 29 // from:
  SAY #39167 /* ~Vivian wita się grzecznym, ale słabym uśmiechem. "I co, poszczęściło ci się może i odnalazłeś mój aromat?"~ */
  IF ~  PartyHasItem("SVeil")
~ THEN REPLY #39168 /* ~"Tak... Znalazłem go na tym czerwonym welonie."~ */ DO ~DestroyPartyItem("SVeil",FALSE)
GiveItemCreate("CVeil",Protagonist,1,0,0)
AddexperienceParty(25000)
SetGlobal("Scent_Quest","AR0605",2)
SetGlobal("Scent_Quest_QJ","GLOBAL",2)
~ JOURNAL #61608 /* ~Zwróciłem Vivian jej osobisty zapach.~ */ GOTO 31
  IF ~  Global("Veil_Quest","AR0605",2)
~ THEN REPLY #39169 /* ~"Mam wrażenie, że twój zapach znajdował się na zagubionym welonie Marissy, który znalazłem i jej zwróciłem. Ona ma twój zapach."~ */ DO ~AddexperienceParty(25000)
SetGlobal("Scent_Quest","AR0605",2)
SetGlobal("Scent_Quest_QJ","GLOBAL",2)
~ JOURNAL #61608 /* ~Zwróciłem Vivian jej osobisty zapach.~ */ GOTO 35
  IF ~  !PartyHasItem("SVeil")
~ THEN REPLY #39170 /* ~"Nie, ale mam kilka pytań..."~ */ GOTO 3
  IF ~  !PartyHasItem("SVeil")
~ THEN REPLY #39171 /* ~"Nie, ale będę dalej szukał. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 30 // from: 3.1
  SAY #39172 /* ~"Jestem jedną z kurtyzan Pani Sławy, jedną z jej uczennic w tym Przybytku. Przygotowuję się do wstąpienia w szeregi frakcji Czuciowców, a moja rodzina stwierdziła, że w miejscu tym mogę doskonale poznać samą siebie i przekonać się, czy moja chęć przystania do frakcji Czuciowców jest trwała."~ */
  IF ~~ THEN REPLY #39173 /* ~"Frakcji Czuciowców?"~ */ GOTO 25
  IF ~~ THEN REPLY #39174 /* ~"Mam jeszcze jedno pytanie..."~ */ GOTO 3
  IF ~~ THEN REPLY #39175 /* ~"To już wszystko, co chciałem wiedzieć. Bywaj zdrowa."~ */ EXIT
END

IF ~~ THEN BEGIN 31 // from: 29.0
  SAY #39176 /* ~Oczy Vivian rozbłyskują. "Och, po prostu cudownie!" Bierze z twoich rąk welon, wypowiada nad nim z cicha kilka słów i w chwilę później otacza cię najbardziej zmysłowy, najbardziej poruszający ze wszystkich zapachów, z jakimi miałeś dotychczas do czynienia.~ */
  IF ~  Global("Evil_Vivian_1","GLOBAL",0)
~ THEN REPLY #39177 /* ~"To pachnie... wspaniale."~ */ GOTO 32
  IF ~  Global("Evil_Vivian_1","GLOBAL",1)
~ THEN REPLY #39178 /* ~"To pachnie... wspaniale."~ */ GOTO 34
END

IF ~~ THEN BEGIN 32 // from: 31.0 36.0
  SAY #39179 /* ~"Prawda?" Kobieta uśmiecha się. "Ponieważ przysłużyłeś mi się, więc i ja ci pomogę. Zbliż się do mnie, pokryty bliznami..."~ */
  IF ~~ THEN REPLY #39180 /* ~Zbliż się do niej.~ */ GOTO 33
  IF ~~ THEN REPLY #39181 /* ~"Nie, dziękuję. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 33 // from: 32.0 34.0
  SAY #39184 /* ~Zbliżasz się do Vivian. Kobieta chwyta cię za rękę, odwraca ją i przez krótki moment obwąchuje twój nadgarstek. "Fe!" krzywi się. "Ocet! Albo... płyn balsamujący? Zaraz usunę ten odór..." Wypowiada z cicha kilka dziwnych sylab, a przez twoje ciało przebiega lekkie mrowienie. W chwilę później po twoim fetorze nie ma już ani śladu. "No i co powiesz? Na pewno teraz ludzi będą z mniejszą gorliwością uciekali od twojego towarzystwa."~ */
  IF ~~ THEN REPLY #39185 /* ~"Dziękuję, Vivian. Żegnaj."~ */ DO ~PermanentStatChange(Protagonist,CHR,RAISE,1)
~ EXIT
END

IF ~~ THEN BEGIN 34 // from: 31.1 36.1
  SAY #39186 /* ~"Prawda?" Uśmiech Vivian nagle znika. "Przypuszczam, że czekasz na odbiór swojej nagrody. Zbliż się do mnie, pokryty bliznami..."~ */
  IF ~~ THEN REPLY #39187 /* ~Zbliż się do niej.~ */ GOTO 33
  IF ~~ THEN REPLY #39188 /* ~"Nie, dziękuję, ja się sobie podobam. Bądź zdrowa."~ */ EXIT
END

IF ~~ THEN BEGIN 35 // from: 29.1
  SAY #39189 /* ~Przez kilka chwil oczy Vivian płoną wściekłością. "Czyżby? Zaraz to sprawdzę. Nie odchodź stąd; zaraz wracam."~ */
  IF ~~ THEN REPLY #39190 /* ~Poczekaj.~ */ DO ~FadeToColor([20.0],0)
Wait(3)
FadeFromColor([20.0],0)
~ GOTO 36
END

IF ~~ THEN BEGIN 36 // from: 35.0
  SAY #39191 /* ~"Tak! To wszystko wyjaśnia! Ta przeklęta wiedźma zawsze podkradała moje perfumy, ale nigdy nie sądziłam, że ośmieliłaby się zabrać mi mój własny, osobisty zapach. Hmpf!" Vivian trzęsie swoimi karmazynowymi włosami, i w chwilę później ogarnia cię się najbardziej zmysłowy, najbardziej poruszający ze wszystkich zapachów, z jakimi miałeś dotychczas do czynienia.~ */
  IF ~  !Global("Evil_Vivian_1","GLOBAL",1)
~ THEN REPLY #39192 /* ~"To pachnie... wspaniale."~ */ GOTO 32
  IF ~  Global("Evil_Vivian_1","GLOBAL",1)
~ THEN REPLY #39193 /* ~"To pachnie... wspaniale."~ */ GOTO 34
END

IF WEIGHT #0 ~  Global("Scent_Quest","AR0605",2)
~ THEN BEGIN 37 // from:
  SAY #39194 /* ~Vivian odwraca się, aby cię przywitać. Cudowność jej niezwykłego, zmysłowego zapachu przyćmiewa nawet jej arystokratyczną urodę. To jest właśnie ów 'osobisty zapach' Vivian.~ */
  IF ~~ THEN REPLY #39195 /* ~"Mam do ciebie pytanie, Vivian..."~ */ GOTO 3
  IF ~~ THEN REPLY #39196 /* ~"Akurat tędy przechodziłem. Żegnaj, Vivian."~ */ EXIT
END

IF ~~ THEN BEGIN 38 // from: 3.5 3.6
  SAY #39197 /* ~"Masz na myśli Ecco? Ona jest miła. Spokojna." Vivian namyśla się. "Może to milczenie to po prostu część jej uroku. Różnie się o tym mówi. Ja wszakże sądzę, że ktoś złamał jej serce. Wydaje mi się, że najwięcej na ten temat będzie wiedziała Dolora. Dolora znała człowieka, który był kochankiem Ecco, zanim ta utraciła swój głos."~ */
  IF ~~ THEN REPLY #39199 /* ~"Mam jeszcze jedno pytanie..."~ */ GOTO 3
  IF ~~ THEN REPLY #52814 /* ~"To już wszystko, co chciałem wiedzieć. Bywaj zdrowa."~ */ EXIT
END
