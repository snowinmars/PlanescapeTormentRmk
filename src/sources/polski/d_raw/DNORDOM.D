// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DNORDOM.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\pl_PL\dialog.tlk
// dialogF  : (none)

BEGIN ~DNORDOM~

IF ~  Global("Nordom","GLOBAL",0)
!GlobalGT("Fortress_Nordom","GLOBAL",2)
~ THEN BEGIN 0 // from:
  SAY #2852 /* ~Widzisz przed sobą dość duży sześcian, z którego wystają cztery ramiona i dwie nogi. Pomimo swojego mechanicznego wyglądu, z przodu bryły znajduje się dziwna, organicznie-zielona twarz z eliptycznymi oczyma. Sześcian zdaje się ciebie nie zauważać, wpatruje się w skupienie w dwie kusze, które trzyma w rękach. Pod lewym górnym rogiem dynda wielościenna soczewka. Wygląda jakby została zaprojektowana specjalnie po to, aby pasować do jednego z oczu stworzenia jak okular.~ */
  IF ~~ THEN REPLY #2853 /* ~"Ee... witaj...?"~ */ DO ~SetAnimState("Nordom",ANIM_MIMESPELL1)
~ GOTO 18
  IF ~~ THEN REPLY #34013 /* ~Nie zwracaj uwagi na ten... sześcian.~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from:
  SAY #16630 /* ~"Zdefiniuj: Pomoc, potrzebna."~ */
  IF ~  CheckStatLT(Protagonist,15,INT)
NearbyDialog("DMorte")
~ THEN REPLY #16952 /* ~"Proszę byś pomógł Opłakującemu troszczyć się o tutejsze drzewa."~ */ EXTERN ~DMORTE~ 183
  IF ~  CheckStatLT(Protagonist,15,INT)
!NearbyDialog("DMorte")
~ THEN REPLY #16953 /* ~"Proszę byś pomógł Opłakującemu troszczyć się o tutejsze drzewa."~ */ GOTO 2
  IF ~  CheckStatGT(Protagonist,14,INT)
~ THEN REPLY #16954 /* ~"Nordom: Życzenie, aby wszystkie drzewa w dzielnicy 'Ul' w Sigil wyzdrowiały i zaczęły rosnąć."~ */ GOTO 4
END

IF ~~ THEN BEGIN 2 // from: 1.1
  SAY #16631 /* ~"W jaki sposób powinienem się nimi zająć."~ */
  IF ~  NearbyDialog("DMorte")
~ THEN REPLY #16955 /* ~"Ee... nie, chodziło mi o 'troszczenie się'."~ */ EXTERN ~DMORTE~ 184
  IF ~  !NearbyDialog("DMorte")
~ THEN REPLY #16956 /* ~"Ee... nie, chodziło mi o 'troszczenie się'."~ */ GOTO 3
  IF ~~ THEN REPLY #16957 /* ~"Mniejsza z tym. Mam do ciebie kilka pytań, Opłakujący."~ */ EXTERN ~DMFTREE~ 28
  IF ~~ THEN REPLY #16958 /* ~"Zapomnij o tym. Żegnaj, Opłakujący Drzewa."~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 2.1
  SAY #16632 /* ~"Rozkaz: Pomóż Opłakującemu (AKA Opłakującemu Drzewa) [Troszcz się o drzewa]. Nazwa rozkazu/obiektu jest niewłaściwa."~ */
  IF ~  NearbyDialog("DMorte")
Global("Tree_M","AR0400",0)
~ THEN REPLY #16970 /* ~"Mniejsza z tym. Morte? Co ty na to?"~ */ DO ~SetGlobal("Tree_M","AR0400",1)
~ EXTERN ~DMORTE~ 181
  IF ~  NearbyDialog("DAnnah")
Global("Tree_A","AR0400",0)
~ THEN REPLY #16971 /* ~"Mniejsza z tym. Anno? Może ty mogłabyś?"~ */ DO ~SetGlobal("Tree_A","AR0400",1)
~ EXTERN ~DANNAH~ 99
  IF ~  NearbyDialog("DIgnus")
Global("Tree_I","AR0400",0)
~ THEN REPLY #16972 /* ~"Mniejsza z tym. Ignusie?"~ */ DO ~SetGlobal("Tree_I","AR0400",1)
~ EXTERN ~DIGNUS~ 11
  IF ~  NearbyDialog("DGrace")
Global("Tree_G","AR0400",0)
~ THEN REPLY #16973 /* ~"Mniejsza z tym. Sławo, zastanowisz się nad tym?"~ */ DO ~SetGlobal("Tree_G","AR0400",1)
~ EXTERN ~DGRACE~ 14
  IF ~  NearbyDialog("DDakkon")
Global("Tree_D","AR0400",0)
~ THEN REPLY #16981 /* ~"Mniejsza z tym. Dak'konie, pomożesz temu człowiekowi?"~ */ DO ~SetGlobal("Tree_D","AR0400",1)
~ EXTERN ~DDAKKON~ 74
  IF ~  NearbyDialog("DDakkon")
Global("Tree_D","AR0400",0)
Global("Dakkon_Slave","Global",1)
~ THEN REPLY #16982 /* ~"Mniejsza z tym. Dak'kon: pomóż temu człowiekowi."~ */ DO ~IncrementGlobal("BD_DAKKON_MORALE","GLOBAL",-1)
SetGlobal("Tree_D","AR0400",1)
~ EXTERN ~DDAKKON~ 75
  IF ~  NearbyDialog("DVhail")
Global("Tree_V","AR0400",0)
~ THEN REPLY #16983 /* ~"Mniejsza z tym. Vhailorze, mógłbyś pomóc?"~ */ DO ~SetGlobal("Tree_V","AR0400",1)
~ EXTERN ~DVHAIL~ 1
  IF ~~ THEN REPLY #16984 /* ~"Mniejsza z tym. Mam do ciebie kilka pytań, Opłakujący..."~ */ EXTERN ~DMFTREE~ 28
  IF ~~ THEN REPLY #16990 /* ~"Zapomnij o tym. Żegnaj, Opłakujący Drzewa."~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 1.2
  SAY #16633 /* ~"Rozkaz zrozumiany. Parametry mieszczą się w akceptowalnych granicach. Czemu ma służyć wypowiedziane żądanie."~ */
  IF ~  NearbyDialog("DMorte")
~ THEN REPLY #16991 /* ~"Ul to miejsce pełne Chaosu i rozkładu. Istnieje szansa, że obecność żywych drzew sprowadzi tutaj porządek."~ */ DO ~IncrementGlobal("Tree_Helpers","AR0400",1)
~ GOTO 5
  IF ~  !NearbyDialog("DMorte")
~ THEN REPLY #16993 /* ~"Ul to miejsce pełne Chaosu i rozkładu. Istnieje szansa, że obecność żywych drzew sprowadzi tutaj porządek."~ */ DO ~IncrementGlobal("Tree_Helpers","AR0400",1)
~ GOTO 6
END

IF ~~ THEN BEGIN 5 // from: 4.0
  SAY #16634 /* ~"Wypowiedziane żądanie zostanie wykonane natychmiast."~ */
  IF ~~ THEN EXTERN ~DMORTE~ 185
END

IF ~~ THEN BEGIN 6 // from: 4.1
  SAY #16992 /* ~"Wypowiedziane żądanie zostanie wykonane natychmiast."~ */
  IF ~  NearbyDialog("DMorte")
Global("Tree_M","AR0400",0)
~ THEN REPLY #16994 /* ~"Dziękuję, Nordomie. Morte? Co o tym myślisz?"~ */ DO ~SetGlobal("Tree_M","AR0400",1)
~ EXTERN ~DMORTE~ 181
  IF ~  NearbyDialog("DAnnah")
Global("Tree_A","AR0400",0)
~ THEN REPLY #16995 /* ~"Dziękuję, Nordomie. Anno? Mogłabyś?"~ */ DO ~SetGlobal("Tree_A","AR0400",1)
~ EXTERN ~DANNAH~ 99
  IF ~  NearbyDialog("DIgnus")
Global("Tree_I","AR0400",0)
~ THEN REPLY #16996 /* ~"Dziękuję, Nordomie. Ignusie?"~ */ DO ~SetGlobal("Tree_I","AR0400",1)
~ EXTERN ~DIGNUS~ 11
  IF ~  NearbyDialog("DGrace")
Global("Tree_G","AR0400",0)
~ THEN REPLY #16997 /* ~"Dziękuję, Nordomie. Sławo, co o tym sądzisz?"~ */ DO ~SetGlobal("Tree_G","AR0400",1)
~ EXTERN ~DGRACE~ 14
  IF ~  NearbyDialog("DDakkon")
Global("Tree_D","AR0400",0)
~ THEN REPLY #16998 /* ~"Dziękuję, Nordomie. Dak'konie, czy możesz pomóc temu człowiekowi?"~ */ DO ~SetGlobal("Tree_D","AR0400",1)
~ EXTERN ~DDAKKON~ 74
  IF ~  NearbyDialog("DDakkon")
Global("Tree_D","AR0400",0)
Global("Dakkon_Slave","Global",1)
~ THEN REPLY #16999 /* ~"Dziękuję, Nordomie. Dak'konie: pomóż temu człowiekowi."~ */ DO ~IncrementGlobal("BD_DAKKON_MORALE","GLOBAL",-1)
SetGlobal("Tree_D","AR0400",1)
~ EXTERN ~DDAKKON~ 75
  IF ~  NearbyDialog("DVhail")
Global("Tree_V","AR0400",0)
~ THEN REPLY #17000 /* ~"Dziękuję, Nordomie. Vhailorze, czy mógłbyś pomóc?"~ */ DO ~SetGlobal("Tree_V","AR0400",1)
~ EXTERN ~DVHAIL~ 1
  IF ~~ THEN REPLY #17001 /* ~"Dziękuję, Nordomie. Opłakujący, mam do ciebie kilka pytań..."~ */ EXTERN ~DMFTREE~ 28
  IF ~~ THEN REPLY #17002 /* ~"Dziękuję, Nordomie. Żegnaj, Opłakujący Drzewa."~ */ EXIT
END

IF ~  GlobalGT("Nordom","GLOBAL",0)
!InParty("Nordom")
!GlobalGT("Fortress_Nordom","GLOBAL",2)
~ THEN BEGIN 7 // from:
  SAY #34006 /* ~Nordom wygląda, jakby zagubił się z myślach. Dosłownie. Ciągle *szczęka* i *zgrzyta* do siebie, jak maszyna licząca.~ */
  IF ~~ THEN REPLY #34007 /* ~"Potrzebuję twojej pomocy, Nordomie. Czy chcesz mi towarzyszyć?"~ */ GOTO 8
  IF ~~ THEN REPLY #34008 /* ~Zostaw Nordoma sam na sam z jego "myślami".~ */ EXIT
END

IF ~~ THEN BEGIN 8 // from: 7.0
  SAY #34009 /* ~Usta Nordoma układają się w dziwne półkole. "Potwierdzam! Dostęp umożliwiony, pozwolenia wymienione." Jego dwie kusze zaczynają *szczękać* i *stukotać*, jakby chciały wyrwać się z jego rąk. "Stan: Wszystko gotowe. Czekam."~ [NOR298] */
  IF ~  Global("Nordom","GLOBAL",2)
~ THEN REPLY #34010 /* ~"W takim razie, chodźmy."~ */ DO ~ChangeAIScript("pcnordom",DEFAULT)
JoinPartyEx(TRUE)
~ EXIT
  IF ~  GlobalLT("Nordom","GLOBAL",2)
~ THEN REPLY #66820 /* ~"W takim razie, chodźmy."~ */ DO ~SetGlobal("Nordom","GLOBAL",2)
AddexperienceParty(36000)
ChangeAIScript("pcnordom",DEFAULT)
JoinPartyEx(TRUE)
~ EXIT
END

IF ~  InParty("Nordom")
!GlobalGT("Fortress_Nordom","GLOBAL",2)
~ THEN BEGIN 9 // from:
  SAY #34011 /* ~Nordom wpatruje się uważnie w swoje kusze. Wydają różne szczękające dźwięki, najpierw jedna, potem druga, jakby ze sobą rozmawiały.~ */
  IF ~  Global("Know_Director_Truth","GLOBAL",3)
Global("Nordom_Order","GLOBAL",0)
~ THEN REPLY #55968 /* ~"Możesz mi powiedzieć, jakie były obowiązki Dyrektora Twórczego?"~ */ GOTO 79
  IF ~  GlobalGT("Nordom_Order","GLOBAL",0)
~ THEN REPLY #55971 /* ~"Możesz mi powiedzieć jeszcze raz, jakie były obowiązki Dyrektora Twórczego?"~ */ GOTO 79
  IF ~  GlobalGT("Nordom_Order","GLOBAL",0)
~ THEN REPLY #55974 /* ~"Jako Dyrektor Twórczy, mam dla ciebie kilka poleceń."~ */ GOTO 81
  IF ~~ THEN REPLY #55975 /* ~"Co robisz z tymi kuszami?"~ */ GOTO 43
  IF ~~ THEN REPLY #55977 /* ~"Ciekawi mnie... jak skończyła się dla ciebie ta sprawa w Rubikonie?"~ */ GOTO 49
  IF ~~ THEN REPLY #55979 /* ~"Co to *są* modrony?"~ */ GOTO 72
  IF ~  Global("Know_Mechanus","GLOBAL",1)
~ THEN REPLY #55980 /* ~"Opowiedz mi o Mechanusie."~ */ DO ~SetAnimState("Nordom",ANIM_MIMESTAND)
~ GOTO 64
  IF ~  Global("Nordom_Self","GLOBAL",0)
~ THEN REPLY #55984 /* ~"Ee... jak się masz?"~ */ DO ~SetGlobal("Nordom_Self","GLOBAL",1)
SetAnimState("Nordom",ANIM_MIMESTAND)
~ GOTO 105
  IF ~  Global("Nordom_Self","GLOBAL",1)
~ THEN REPLY #55988 /* ~"Jak się masz?"~ */ GOTO 105
  IF ~  GlobalGT("Nordom_Solution","GLOBAL",0)
~ THEN REPLY #55991 /* ~"Nordomie, spytałeś mnie wcześniej, jak się mam, prawda?"~ */ GOTO 111
  IF ~  GlobalGT("Nordom_Solution","GLOBAL",1)
~ THEN REPLY #55994 /* ~"Czy możemy porozmawiać jeszcze o mojej nieśmiertelności?"~ */ GOTO 130
  IF ~  GlobalGT("Know_Ravel","GLOBAL",0)
Global("Ravel","GLOBAL",0)
~ THEN REPLY #55996 /* ~"Czy słyszałeś o kimś o imieniu Ravela Szaradna?"~ */ GOTO 75
  IF ~  GlobalGT("Know_Blood_War","GLOBAL",0)
~ THEN REPLY #56000 /* ~"Czy wiesz coś o Wojnie Krwi?"~ */ GOTO 76
  IF ~~ THEN REPLY #56002 /* ~Zostaw Nordoma sam na sam z jego uzbrojeniem.~ */ EXIT
END

IF ~~ THEN BEGIN 10 // from:
  SAY #39579 /* ~"Podczas 13,7. Rewolucji musieliśmy naprawić tryby i 31. podzestaw kół zębatych w piątym okręgu Mechanusa. Usunęliśmy przeszkodę, a tryb zaczął się obracać z normalną szybkością. Po zakończeniu tego zadania wróciliśmy wszyscy do Źródła."~ */
  IF ~  NearbyDialog("DMorte")
~ THEN EXTERN ~DMORTE~ 418
  IF ~  !NearbyDialog("DMorte")
~ THEN REPLY #39759 /* ~"Ta opowieść była... interesująca."~ */ GOTO 11
END

IF ~~ THEN BEGIN 11 // from: 10.1
  SAY #39580 /* ~"Właśnie tak było. Oczywiście z upiększeniami."~ */
  IF ~  NearbyDialog("DMorte")
~ THEN EXTERN ~DMORTE~ 419
  IF ~  !NearbyDialog("DMorte")
~ THEN REPLY #39760 /* ~"Z upiększeniami?"~ */ GOTO 12
END

IF ~~ THEN BEGIN 12 // from: 11.1
  SAY #39582 /* ~"Pomyślałem sobie, że powrót do Źródła szczególnie dobrze pasował do zakończenia opowieści."~ */
  IF ~~ THEN EXTERN ~DYVES~ 59
END

IF ~~ THEN BEGIN 13 // from:
  SAY #50712 /* ~"Czy mam rozumieć, że moje usługi zostają przekazane komuś innemu na zasadzie zakupu? Przekazujesz zwierzchnictwo Vriszice na podstawie wymiany pieniężnej?"~ */
  IF ~~ THEN REPLY #50713 /* ~"Tak, zgadza się. Zabierzesz go, Vrisziko?"~ */ EXTERN ~DVRISCH~ 49
  IF ~~ THEN REPLY #50714 /* ~"Tak, ale zapomnij o tym. Vrisziko, mam do ciebie jeszcze jedno pytanie..."~ */ EXTERN ~DVRISCH~ 7
  IF ~~ THEN REPLY #50715 /* ~"Tak... ale zmieniłem zdanie. Ruszamy, Nordomie."~ */ EXIT
END

IF ~~ THEN BEGIN 14 // from:
  SAY #50716 /* ~"Nordom przygotowuje się na uznanie Vrisziki - alu-biesa, importerki, właścicielki sklepu osobliwości - za pierwszoplanową zwierzchniczkę."~ */
  IF ~~ THEN DO ~DropInventory()
LeaveParty()
~ EXTERN ~DVRISCH~ 57
END

IF ~~ THEN BEGIN 15 // from:
  SAY #52580 /* ~"Pytanie: Co definiuje Nordom /wybór/? Definicja: WYBÓR: Czynność polegająca na wybieraniu, selekcji; prawo lub możliwość wybo..."~ */
  IF ~  NearbyDialog("DIgnus")
~ THEN REPLY #52581 /* ~"Nordomie, poczekaj. To sprawa pomiędzy mną a Ravelą. Słuchaj, Ravelo..."~ */ DO ~SetGlobal("Ravel_Ignus","GLOBAL",2)
~ EXTERN ~DRAVEL~ 64
  IF ~  !NearbyDialog("DIgnus")
NearbyDialog("DMorte")
~ THEN REPLY #52582 /* ~"Nordomie, poczekaj. To sprawa pomiędzy mną a Ravelą. Słuchaj, Ravelo..."~ */ DO ~SetGlobal("Ravel_Morte","GLOBAL",2)
~ EXTERN ~DRAVEL~ 65
  IF ~  !NearbyDialog("DIgnus")
!NearbyDialog("DMorte")
NearbyDialog("Dgrace")
~ THEN REPLY #52583 /* ~"Nordomie, poczekaj. To sprawa pomiędzy mną a Ravelą. Słuchaj, Ravelo..."~ */ DO ~SetGlobal("Ravel_Grace","GLOBAL",2)
~ EXTERN ~DRAVEL~ 66
  IF ~  !NearbyDialog("Dignus")
!NearbyDialog("DMorte")
!NearbyDialog("DGrace")
NearbyDialog("DAnnah")
~ THEN REPLY #52584 /* ~"Nordomie, poczekaj. To sprawa pomiędzy mną a Ravelą. Słuchaj, Ravelo..."~ */ DO ~SetGlobal("Ravel_Annah","GLOBAL",2)
~ EXTERN ~DRAVEL~ 67
  IF ~  !NearbyDialog("Dignus")
!NearbyDialog("DMorte")
!NearbyDialog("DGrace")
!NearbyDialog("DAnnah")
~ THEN REPLY #52585 /* ~"Nordomie, poczekaj. To sprawa pomiędzy mną a Ravelą. Słuchaj, Ravelo..."~ */ EXTERN ~DRAVEL~ 68
END

IF ~~ THEN BEGIN 16 // from:
  SAY #54847 /* ~"Pytanie: Otrzymane. Odpowiedź: Nordom jest gotowy i oczakuje następnych rozkazów."~ */
  IF ~  NearbyDialog("DVhail")
InParty("Vhail")
~ THEN REPLY #54848 /* ~"Powinno być 'oczekuje'... zresztą nieważne. Vhailorze?"~ */ EXTERN ~DVHAIL~ 15
  IF ~  !InParty("Vhail")
NearbyDialog("Dignus")
InParty("Ignus")
~ THEN REPLY #54849 /* ~"Powinno być 'oczekuje'... zresztą nieważne. Ignusie?"~ */ EXTERN ~DIGNUS~ 19
  IF ~  !InParty("Vhail")
!InParty("ignus")
NearbyDialog("DGrace")
InParty("Grace")
~ THEN REPLY #54850 /* ~"Powinno być 'oczekuje'... zresztą nieważne. Nie-Sławo?"~ */ EXTERN ~DGRACE~ 168
  IF ~  !InParty("Vhail")
!InParty("ignus")
!InParty("Grace")
NearbyDialog("DAnnah")
InParty("Annah")
~ THEN REPLY #54851 /* ~"Powinno być 'oczekuje'... zresztą nieważne. Anno?"~ */ EXTERN ~DANNAH~ 272
  IF ~  !InParty("Vhail")
!InParty("ignus")
!InParty("Grace")
!InParty("annah")
NearbyDialog("DDakkon")
GlobalLT("BD_DAKKON_MORALE","GLOBAL",6)
InParty("Dakkon")
~ THEN REPLY #54852 /* ~"Powinno być 'oczekuje'... zresztą nieważne. Dak'konie?"~ */ EXTERN ~DDAKKON~ 173
  IF ~  !InParty("Vhail")
!InParty("ignus")
!InParty("grace")
!InParty("annah")
NearbyDialog("DDakkon")
GlobalGT("BD_DAKKON_MORALE","GLOBAL",5)
InParty("Dakkon")
~ THEN REPLY #54853 /* ~"Powinno być 'oczekuje'... zresztą nieważne. Dak'konie?"~ */ EXTERN ~DDAKKON~ 172
  IF ~  !InParty("vhail")
!InParty("ignus")
!InParty("grace")
!InParty("annah")
!InParty("dakkon")
NearbyDialog("Dmorte")
InParty("Morte")
Global("Morte_Quip_Regret_Portal","GLOBAL",0)
~ THEN REPLY #54854 /* ~"Powinno być 'oczekuje'... zresztą nieważne. Morte?"~ */ DO ~SetGlobal("Morte_Quip_Regret_Portal","GLOBAL",1)
~ EXTERN ~DMORTE~ 536
  IF ~  !InParty("Vhail")
!InParty("ignus")
!InParty("Grace")
!InParty("annah")
!InParty("Dakkon")
NearbyDialog("DMorte")
InParty("Morte")
GlobalGT("Morte_Quip_Regret_Portal","GLOBAL",0)
~ THEN REPLY #54855 /* ~"Powinno być 'oczekuje'... zresztą nieważne. Morte?"~ */ EXTERN ~DMORTE~ 534
  IF ~  !NearbyDialog("DMorte")
~ THEN REPLY #54856 /* ~"W porządku... zobaczmy, co jest po drugiej stronie tego portalu."~ */ DO ~SetPortalCursor("Fort_Port",PORTAL_CURSOR_VISIBLE,TRUE)
SetPortalCursor("Fort_Port",PORTAL_ENABLED,TRUE)
~ EXIT
  IF ~  NearbyDialog("DMorte")
!InParty("Morte")
Global("Morte_Quip_Regret_Portal","GLOBAL",0)
~ THEN REPLY #54857 /* ~"W porządku... zobaczmy, co jest po drugiej stronie tego portalu."~ */ DO ~SetGlobal("Morte_Quip_Regret_Portal","GLOBAL",1)
~ EXTERN ~DMORTE~ 538
  IF ~  NearbyDialog("DMorte")
!InParty("Morte")
GlobalGT("Morte_Quip_Regret_Portal","GLOBAL",0)
~ THEN REPLY #54858 /* ~"W porządku... zobaczmy, co jest po drugiej stronie tego portalu."~ */ DO ~SetPortalCursor("Fort_Port",PORTAL_CURSOR_VISIBLE,TRUE)
SetPortalCursor("Fort_Port",PORTAL_ENABLED,TRUE)
~ EXIT
END

IF ~~ THEN BEGIN 17 // from:
  SAY #55092 /* ~"Słup Czaszek: składa się z żyjących głów śmiertelników, którzy kłamali, a których kłamstwa spowodowały śmierć innych śmiertelników. Słup służy jako skład wiedzy. W dziewięćdziesięciu siedmiu procentach przypadków, za podzielenie się swoją wiedzą żąda zapłaty. Jego żądania należą do tych, które typowy śmiertelnik nazwałby 'bardzo dużymi'. Według logiki, nikt nie powinien zadawać Słupowi pytań, jeśli potrzeba uzyskania konkretnej jednostki informacji także nie może być uważana za 'bardzo dużą'."~ */
  IF ~~ THEN EXTERN ~DPILLAR~ 14
END

IF ~~ THEN BEGIN 18 // from: 0.0
  SAY #55099 /* ~W sześcianie coś zaczyna *chrrrupać*, a gdy jego oczy mrugają jak szalone, słychać wyraźne *klik-klik-klik*. Obraca się przodem do ciebie, a potem wyrzuca dwie wolne ręce w powietrze, jak gdyby się poddawał... choć dwie kusze obróciły się w jego rękach i są teraz wycelowane w ciebie. Trudno nie zauważyć, że każde łączenie w tym dziwny stworze składa się z zestawu trybów i kółek zębatych.~ */
  IF ~  NearbyDialog("Dmorte")
~ THEN EXTERN ~DMORTE~ 571
  IF ~  !NearbyDialog("Dmorte")
~ THEN REPLY #55102 /* ~"Ee..."~ */ GOTO 19
END

IF ~~ THEN BEGIN 19 // from: 18.1
  SAY #55105 /* ~Po chwili takiego wpatrywania się w ciebie, jego sześcienne ciało obraca się tyłem do ciebie i zaczyna unosić się w górę i w dół jak gdyby uciekał - choć jego stopy nie zmieniły położenia i ciągle są zwrócone w twoim kierunku. Podczas tego "biegu", koła zębate przy kuszach zaczynają *szczękać* i *zgrzytać*.~ */
  IF ~~ THEN REPLY #55106 /* ~"Ee... czy wiesz, że stoisz tyłem do mnie?"~ */ GOTO 20
END

IF ~~ THEN BEGIN 20 // from: 19.0
  SAY #55107 /* ~Nagle stworzenie przestaje się poruszać, a potem obraca się przodem do ciebie. "Uwsteczniony modron = 'Nordom?'" Głos sześcianu jest metaliczny i dźwięczny, jakby każde słowo wyskakiwało ze sprężyny i lądowało... hmm, gdzie indziej. Jego usta tworzą coś w rodzaju dziwnego półkola, które pewnie ma oznaczać uśmiech. "Podziękowania! Wdzięczności!"~ */
  IF ~~ THEN REPLY #55108 /* ~"Ee... przepraszam?"~ */ DO ~SetGlobal("Nordom","GLOBAL",1)
~ JOURNAL #55109 /* ~Poznałem niebezpieczeństwo tkwiące w nazwach. Kiedy wędrowałem po Rubikonie, spotkałem dziwnego modrona. Kiedy się do niego odezwałem, on pomyślał, że nadaję mu imię. Jego nowe imię brzmi 'Nordom' i, jak na modrona, jest całkiem... jakby tu rzec, bez zawiasowe.~ */ GOTO 22
END

IF ~~ THEN BEGIN 21 // from:
  SAY #55110 /* ~"Uwsteczniony modron = 'Nordom'?" Głos sześcianu jest metaliczny i dźwięczny, jakby każde słowo wyskakiwało ze sprężyny i lądowało... hmm, gdzie indziej. Jego usta tworzą coś w rodzaju dziwnego półkola, które pewnie ma oznaczać uśmiech. "Podziękowania! Wdzięczności!"~ */
  IF ~~ THEN REPLY #55111 /* ~"Ee... przepraszam?"~ */ DO ~SetGlobal("Nordom","GLOBAL",1)
~ JOURNAL #55109 /* ~Poznałem niebezpieczeństwo tkwiące w nazwach. Kiedy wędrowałem po Rubikonie, spotkałem dziwnego modrona. Kiedy się do niego odezwałem, on pomyślał, że nadaję mu imię. Jego nowe imię brzmi 'Nordom' i, jak na modrona, jest całkiem... jakby tu rzec, bez zawiasowe.~ */ GOTO 22
END

IF ~~ THEN BEGIN 22 // from: 20.0 21.0
  SAY #55112 /* ~"Nie przeprosiny. Brak przeprosin. Wdzięczność! Indentyfikacja samego siebie niemożliwa z powodu wątpliwości + sprzeczności + analizy." Coś znowu w sześcianie *chrrrupie*, jedno oko mruga z lekkim *szczękiem* - potem, po chwili, mruga drugie oko, jakby nie chciało pozostać w tyle.~ */
  IF ~~ THEN REPLY #55113 /* ~"Ciągle nic nie rozumiem."~ */ GOTO 23
  IF ~  CheckStatGT(Protagonist,15,INT)
~ THEN REPLY #55114 /* ~"Jesteś wdzięczny... że udało mi się ciebie zidentyfikować? Czyżbyś nie był modronem?"~ */ GOTO 23
END

IF ~~ THEN BEGIN 23 // from: 22.0 22.1
  SAY #55115 /* ~Powoli sześcian się uspokaja, a jego usta tworzą linię prostą. "Indentyfikacja tej jednostki (została) zakończona. Przedmiot - adresat zindentyfikował jednostkę jako 'Nordom'. Wielkie wdzięczności za umożliwienie indentyfikacji Nordoma."~ */
  IF ~~ THEN REPLY #55116 /* ~"Nie ma za co. Naprawdę."~ */ GOTO 24
END

IF ~~ THEN BEGIN 24 // from: 23.0
  SAY #55117 /* ~Oczy Nordoma mrugają ze *szczękiem* raz, dwa, trzy razy. Za każdym razem czarne punkty w środku oczu stają się większe - przy trzecim mrugnięciu osiągają już wielkość dużych kropek. "Uprawdo-oczo-wienie zakończone: Nordom nie zna imienia adresata. Zwidentyfikuj się."~ */
  IF ~~ THEN REPLY #55118 /* ~"Miałeś na myśli 'zidentyfikuj', prawda?"~ */ GOTO 25
  IF ~~ THEN REPLY #55119 /* ~Prawda: "Prawdę mówiąc, to nie *mam* imienia."~ */ DO ~IncrementGlobalOnceEx("GLOBALLawful_Nordom_1","GLOBALLaw",1)
SetAnimState("Nordom",ANIM_MIMESTAND)
~ GOTO 26
  IF ~~ THEN REPLY #55120 /* ~Kłamstwo: "Adahn. Nazywam się Adahn."~ */ DO ~IncrementGlobal("Adahn","GLOBAL",1)
IncrementGlobalOnceEx("GLOBALChaotic_Nordom_1","GLOBALLaw",-1)
SetAnimState("Nordom",ANIM_MIMESTAND)
~ GOTO 33
END

IF ~~ THEN BEGIN 25 // from: 24.0
  SAY #55121 /* ~"Potwierdzam. Potrzebna, identy-fikacja. Polecenie: Zidentyfikuj tożsamość przed Nordomem."~ */
  IF ~~ THEN REPLY #55122 /* ~Prawda: "Prawdę mówiąc, to nie *mam* imienia."~ */ DO ~IncrementGlobalOnceEx("GLOBALLawful_Nordom_1","GLOBALLaw",1)
SetAnimState("Nordom",ANIM_MIMESTAND)
~ GOTO 26
  IF ~~ THEN REPLY #55123 /* ~Kłamstwo: "Adahn. Nazywam się Adahn."~ */ DO ~IncrementGlobal("Adahn","GLOBAL",1)
IncrementGlobalOnceEx("GLOBALChaotic_Nordom_1","GLOBALLaw",-1)
SetAnimState("Nordom",ANIM_MIMESTAND)
~ GOTO 33
  IF ~~ THEN REPLY #55124 /* ~"Nie chcę się ujawniać mojej tożsamości. Prawdę mówiąc, chcę zakończyć tę rozmowę z tobą i wrócić do moich spraw."~ */ DO ~SetAnimState("Nordom",ANIM_MIMESTANDFIDGET1)
~ GOTO 35
END

IF ~~ THEN BEGIN 26 // from: 24.1 25.0
  SAY #55125 /* ~Oczy Nordoma powiększają się, średnia jego 'źrenic' wraca do normalnych rozmiarów. Mruga ze *szczękiem* jeszcze raz - ale metalowe zasłony, które zapadły na jego oczy już się nie podnoszą. Po chwili zaczynają trzeszczeć jakby się zacięły.~ */
  IF ~~ THEN REPLY #55126 /* ~"Ee... Nordomie. Możesz już otworzyć oczy."~ */ GOTO 27
END

IF ~~ THEN BEGIN 27 // from: 26.0
  SAY #55127 /* ~Po jeszcze jednym *szczęku* Nordom otwiera oczy. "Nie zamykanie oczu: Włącz-one w Czynności Wyjaśniania dla Obiektu (Niezidentyfikowany, Bezimienny). Formułowanie... Przedstawianie pytania: Czy jesteś zagubiony?"~ */
  IF ~  CheckStatLT(Protagonist,13,WIS)
CheckStatLT(Protagonist,13,INT)
~ THEN REPLY #55128 /* ~"Zagubiony? Co przez to rozumiesz?"~ */ GOTO 29
  IF ~  CheckStatGT(Protagonist,12,INT)
CheckStatLT(Protagonist,13,WIS)
~ THEN REPLY #55129 /* ~"Zagubiony? Co przez to rozumiesz?"~ */ DO ~SetAnimState("Nordom",ANIM_MIMESTAND)
~ GOTO 28
  IF ~  CheckStatGT(Protagonist,12,WIS)
~ THEN REPLY #55130 /* ~"Zagubiony? Co przez to rozumiesz?"~ */ DO ~SetAnimState("Nordom",ANIM_MIMESTAND)
~ GOTO 28
END

IF ~~ THEN BEGIN 28 // from: 27.1 27.2
  SAY #55131 /* ~Kiedy w brzęczącym pytaniu Nordoma pojawia się słowo 'zagubiony', czujesz dziwne mrowienie z tyłu głowy - jednocześnie uświadamiasz sobie dwie rzeczy: To nie po raz pierwszy słyszysz te słowa, a ważne jest to, co Nordom *dopiero* odpowie na twoje następne pytanie.~ */
  IF ~~ THEN REPLY #55132 /* ~"Co rozumiesz przez słowo 'zagubiony'?"~ */ GOTO 29
END

IF ~~ THEN BEGIN 29 // from: 27.0 28.0
  SAY #55133 /* ~"Brak Imienia = Brak Tożsamości = Brak Celu = Brak Miejsca w Wieloświecie = Stan Nicości = Zagubienie. Nordom przebywał w Stanie, Nicości, aż Obiekt (Niezidentyfikowany, Bezimienny) nadał Nordomowi tożsamość. Brak Tożsamości, Brak Celu, Brak Miejsca równa się 'Zagubieniu'."~ */
  IF ~~ THEN REPLY #55134 /* ~"No cóż, wydaje mi się, że kiedyś miałem imię, ale je zapomniałem."~ */ GOTO 30
END

IF ~~ THEN BEGIN 30 // from: 29.0
  SAY #55135 /* ~"Formułowanie nowego pytania." Nordom mruga trzykrotnie z lekkim *tkkk-tkkk-tkkk* - dźwięk tego przypomina stukanie młotkiem w arkusz blachy. "Wyjaśnij Nordomowi dlaczego została przez ciebie wykonana następująca czynność: ZAPOMINANIE."~ */
  IF ~~ THEN REPLY #55136 /* ~"To po prostu się stało. Nie zrobiłem tego celowo."~ */ GOTO 31
  IF ~~ THEN REPLY #55137 /* ~"Chyba już mam taką naturę, że ciągle zapominam."~ */ GOTO 31
  IF ~~ THEN REPLY #55138 /* ~"To chyba efekt uboczny mojego... stanu."~ */ GOTO 31
END

IF ~~ THEN BEGIN 31 // from: 30.0 30.1 30.2
  SAY #55139 /* ~Przy wtórze lekkiego *wrrr*, zasłony na oczach Nordoma zamykają się, potem stworzenie zaczyna coś do siebie trzeszczeć. Kiedy oczy otwierają się ze *szczękiem*, Nordom *wychrrrupuje*. "Pytanie: Uszkodzenie pamięci?"~ */
  IF ~~ THEN REPLY #55140 /* ~"Tak, można tak to określić."~ */ GOTO 32
END

IF ~~ THEN BEGIN 32 // from: 31.0
  SAY #55141 /* ~"Czynność Przed-Warunkowa, aby wyjaśnić Pytanie: Zasoby pamięci Nordoma są jeszcze bardzo duże. Pytanie/Czynność: W przypadku odpowiedzi obiektu 'Tak' (Obiekt Niezidentyfikowany, Bezimienny), Nordom może pamiętać za ciebie."~ */
  IF ~~ THEN REPLY #55142 /* ~"Jane, nie krępuj się, Nordomie... ale, wiesz, naprawdę muszę zająć się swoimi sprawami."~ */ DO ~SetAnimState("Nordom",ANIM_MIMESTANDFIDGET1)
~ GOTO 35
  IF ~~ THEN REPLY #55143 /* ~"Dziękuję za ofertę, Nordomie. Jeśli chcesz, to możesz. Ale wiesz co, muszę już iść."~ */ DO ~SetAnimState("Nordom",ANIM_MIMESTANDFIDGET1)
~ GOTO 35
END

IF ~~ THEN BEGIN 33 // from: 24.2 25.1
  SAY #55144 /* ~Oczy Nordoma powiększają się, średnia jego 'źrenic' wraca do normalnych rozmiarów. Mruga ze *szczękiem* jeszcze raz - ale metalowe zasłony, które zapadły na jego oczy już się nie podnoszą.~ */
  IF ~~ THEN REPLY #55145 /* ~"Ee... Nordomie. Możesz już otworzyć oczy."~ */ GOTO 34
END

IF ~~ THEN BEGIN 34 // from: 33.0
  SAY #55146 /* ~Po jeszcze jednym *szczęku* Nordom otwiera oczy. "Nie zamykanie oczu: Czynność Wyjaśnienie dla Adahna. Wypełnianie informacji, Zapamiętywanie. Adahn: Imię wciągnięte do katalogu. Nordom nie zapomni tożsamości: Adahn."~ */
  IF ~~ THEN REPLY #55147 /* ~"Świetnie. Miło się z tobą rozmawiało, Nordomie, ale muszę już iść."~ */ DO ~SetAnimState("Nordom",ANIM_MIMESTANDFIDGET1)
~ GOTO 35
END

IF ~~ THEN BEGIN 35 // from: 25.2 32.0 32.1 34.0
  SAY #55148 /* ~Następuje seria nagłych *szczęków* i *brzdęków*, które dochodzą od kusz znajdujących się w rękach Nordoma. Jego oczy kręcą się i dostosowują ostrość do kusz. Potem Nordom przybliża do siebie prawą kuszę, jak gdyby jej słuchał.~ */
  IF ~~ THEN REPLY #55149 /* ~"Wszystko w porządku?"~ */ GOTO 36
END

IF ~~ THEN BEGIN 36 // from: 35.0
  SAY #55150 /* ~Jedno z oczu Nordoma pozostaje skupione na kuszy, która lekko *szczękkka*, a drugie oko zwraca się ku tobie. "Pytanie: Czy one mogą ci towarzyszyć w czasie twojej godróży?"~ */
  IF ~~ THEN REPLY #55157 /* ~"Ee, czy nie chodziło ci czasami o 'podróż'?"~ */ GOTO 37
  IF ~~ THEN REPLY #55164 /* ~"Wątpię, żeby to był dobry pomysł. Nie, nie teraz..."~ */ GOTO 38
  IF ~  NumInParty(6)
~ THEN REPLY #55165 /* ~"Hmm... dobrze. Ale możliwe, że trzeba będzie zadawać się z ludźmi."~ */ GOTO 39
  IF ~  NumInPartyLT(6)
~ THEN REPLY #55166 /* ~"Oczywiście. Zawsze przyda się pomocne ramię... albo cztery ramiona."~ */ DO ~SetGlobal("Nordom","GLOBAL",2)
~ GOTO 40
END

IF ~~ THEN BEGIN 37 // from: 36.0
  SAY #55167 /* ~"Zaprawdę. Podróż, potwierdzona. Prośba o pozwolenie."~ */
  IF ~~ THEN REPLY #55168 /* ~"Wątpię, żeby to był dobry pomysł. Nie, nie teraz..."~ */ GOTO 38
  IF ~  NumInParty(6)
~ THEN REPLY #55169 /* ~"Hmm... dobrze. Ale możliwe, że trzeba będzie zadawać się z ludźmi."~ */ GOTO 40
  IF ~  NumInPartyLT(6)
~ THEN REPLY #55170 /* ~"Oczywiście. Zawsze przyda się pomocne ramię... albo cztery ramiona."~ */ DO ~SetGlobal("Nordom","GLOBAL",2)
~ GOTO 40
END

IF ~~ THEN BEGIN 38 // from: 36.1 37.0
  SAY #55171 /* ~Nordom wpatruje się w ciebie swoimi ogromnymi oczyma. Kusza w jego prawym ręku *szczęka*, a potem Nordom mruga oczyma. "Pytanie Dodatkowe: Proszę!"~ */
  IF ~~ THEN REPLY #55172 /* ~"Nie tym razem, Nordomie."~ */ GOTO 39
  IF ~  NumInParty(6)
~ THEN REPLY #55173 /* ~"Hmm... dobrze. Ale możliwe, że trzeba będzie zadawać się z ludźmi."~ */ GOTO 40
  IF ~  NumInPartyLT(6)
~ THEN REPLY #55174 /* ~"Hmm... dobrze. Zawsze przyda się pomocne ramię... albo cztery ramiona."~ */ DO ~SetGlobal("Nordom","GLOBAL",2)
~ GOTO 40
END

IF ~~ THEN BEGIN 39 // from: 36.2 38.0
  SAY #55175 /* ~Usta Nordoma przyjmują kształt półkola zwróconego w dół. "Odpowiedź na pytanie: otrzymana i przyjęta do wiadomości. Nordom dalej nie będzie włączony do większej społeczności. Nordom dalej będzie zamieszkiwał tę poligoniczną przestrzeń, aż zostanie uratowany."~ */
  IF ~~ THEN REPLY #55176 /* ~"Dobrze. Możliwe, że tu wrócę."~ */ EXIT
END

IF ~~ THEN BEGIN 40 // from: 36.3 37.1 37.2 38.1 38.2
  SAY #55177 /* ~Usta Nordoma tworzą dziwne półkole tak jak przed chwilą, a dwie kusze w jego rękach zaczynają *szczękać* i *zgrzytać*, jakby chciały się mu wyrwać. "Podziękowania! Wdzięczności! Nordom i kusze zostali włączeni do większej społeczności."~ */
  IF ~~ THEN REPLY #55178 /* ~"Na twoim miejscu jeszcze bym nie dziękował. Ruszajmy..."~ */ DO ~SetGlobal("Nordom","GLOBAL",2)
AddexperienceParty(36000)
ChangeAIScript("pcnordom",DEFAULT)
JoinPartyEx(TRUE)
~ EXIT
END

IF ~~ THEN BEGIN 41 // from:
  SAY #55179 /* ~.~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 42 // from:
  SAY #55180 /* ~.~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 43 // from: 9.3
  SAY #55181 /* ~"Uwaga, Nordom: potrzebny!" Nordom obraca się do ciebie, zacina się w pół drogi, a następnie zmienia swoją pozycję z lekkim *zgrzytem*. "Odpowiedź na Pytanie: Czynność wykonywana na kuszach? Przedstaw Polecenie do Wyjaśnienia: Brak Kusz."~ */
  IF ~~ THEN REPLY #55182 /* ~"Masz przy sobie parę kusz."~ */ GOTO 44
  IF ~~ THEN REPLY #55183 /* ~"Naprawdę? A jak nazwiesz te dwa -szczękające- przedmioty, które trzymasz w rękach?"~ */ DO ~SetAnimState("Nordom",ANIM_MIMESTANCEFIDGET1)
~ GOTO 46
  IF ~~ THEN REPLY #55184 /* ~"Mniejsza z tym. Nordomie, mam do ciebie parę pytań..."~ */ GOTO 74
  IF ~~ THEN REPLY #55185 /* ~"Zapomnij o tym. Ruszajmy."~ */ EXIT
END

IF ~~ THEN BEGIN 44 // from: 43.0
  SAY #55186 /* ~"Wyjaśnienie: Zdanie 'pełne sprzeczności'. Nordom nie używa kusz." Na chwilę się zacina, a potem nagle kusze kierują się w twoim kierunku - choć nie udało ci się zobaczyć, kiedy zmieniły swoją pozycję. "B-b-brak kusz."~ */
  IF ~~ THEN REPLY #55189 /* ~"Nie celuj we mnie tych kusz."~ */ GOTO 45
  IF ~~ THEN REPLY #55190 /* ~"Nordom, przecież *używasz* kusze - masz DWIE kusze przy sobie."~ */ GOTO 45
  IF ~~ THEN REPLY #55191 /* ~"Naprawdę? A jak nazwiesz te dwa -szczękające- przedmioty, które trzymasz w rękach?"~ */ DO ~SetAnimState("Nordom",ANIM_MIMESTANCEFIDGET1)
~ GOTO 46
  IF ~~ THEN REPLY #55192 /* ~"Mniejsza z tym. Nordomie, mam do ciebie parę pytań..."~ */ GOTO 74
  IF ~~ THEN REPLY #55193 /* ~"Zapomnij o tym. Ruszajmy."~ */ EXIT
END

IF ~~ THEN BEGIN 45 // from: 44.0 44.1
  SAY #55194 /* ~Mrugasz oczyma, a w chwilę potem kusze są już zwrócone na Nordoma. Stworzenie wydaje się być zdezorientowane ich ruchami, a jego spojrzenie ciągle spoczywa na tobie. "Zaprzeczenie nie zaczyna zaprzeczenia. Brak kusz."~ */
  IF ~~ THEN REPLY #55195 /* ~"Naprawdę? A jak nazwiesz te dwa -szczękające- przedmioty, które trzymasz w rękach?"~ */ DO ~SetAnimState("Nordom",ANIM_MIMESTANCEFIDGET1)
~ GOTO 46
  IF ~~ THEN REPLY #55196 /* ~"Mniejsza z tym. Nordomie, mam do ciebie parę pytań..."~ */ GOTO 74
  IF ~~ THEN REPLY #55197 /* ~"Zapomnij o tym. Ruszajmy."~ */ EXIT
END

IF ~~ THEN BEGIN 46 // from: 43.1 44.2 45.0
  SAY #55198 /* ~"Odpowiedź: Dwa -SZCZĘKAJĄCE- obiekty trzymane w przeciwległych dłoniach." Nordom podnosi swoje nitowane palce i macha dwoma kuszami, które nagle zaczynają *szczękać* i *zgrzytać*, jakby coś je zirytowało. "Odpowiedź: Obiekty = Duchy trybów."~ */
  IF ~~ THEN REPLY #55199 /* ~"Duchy trybów? Co przez to rozumiesz?"~ */ GOTO 47
  IF ~~ THEN REPLY #55200 /* ~"Mniejsza z tym. Nordomie, mam do ciebie parę pytań..."~ */ GOTO 74
  IF ~~ THEN REPLY #55201 /* ~"Zapomnij o tym. Ruszajmy."~ */ EXIT
END

IF ~~ THEN BEGIN 47 // from: 46.0
  SAY #55202 /* ~"Pytanie: Zdefiniuj: Duchy trybów. Odpowiedź: duchy trybów."~ */
  IF ~  NearbyDialog("Dmorte")
~ THEN REPLY #55203 /* ~"Dobrze, ale czym *są* duchy trybów?"~ */ EXTERN ~DMORTE~ 573
  IF ~  !NearbyDialog("Dmorte")
~ THEN REPLY #55204 /* ~"Dobrze, ale czym *są* duchy trybów?"~ */ GOTO 48
END

IF ~~ THEN BEGIN 48 // from: 47.1
  SAY #55205 /* ~"Pytanie = Pytanie: Zdefiniuj = Zdefiniuj: Duchy trybów. Odpowiedź: duchy trybów."~ */
  IF ~~ THEN REPLY #55206 /* ~"Mniejsza z tym. Nordomie, mam do ciebie parę innych pytań..."~ */ GOTO 74
  IF ~~ THEN REPLY #55207 /* ~"Zapomnij o tym. Ruszajmy."~ */ EXIT
END

IF ~~ THEN BEGIN 49 // from: 9.4 74.3
  SAY #55208 /* ~Nordom *chrzęści*. "Pytanie wymaga podania Chronologii: Czy Nordom ma podać chronologię?"~ */
  IF ~~ THEN REPLY #55209 /* ~"Tak, bardzo mnie to ciekawi."~ */ DO ~SetGlobal("Know_Mechanus","GLOBAL",1)
~ GOTO 50
  IF ~~ THEN REPLY #55210 /* ~"Mniejsza z tym. Nordomie, mam do ciebie parę innych pytań..."~ */ GOTO 74
  IF ~~ THEN REPLY #55211 /* ~"Zapomnij o tym. Ruszajmy."~ */ EXIT
END

IF ~~ THEN BEGIN 50 // from: 49.0
  SAY #55212 /* ~"Polecenia otrzymane przy zapoczątkowaniu projektu Rubikon: Opuszczenie Sfery/Mechanus. Etap pierwszy: Przybycie do miejsca przeznaczenia: Sfera/Limbo. Etap drugi: Parametry podane przez Zwierzchnika/Dyrektora Twórczego: Zmiana ukształtowania Sfery Limbo, aby przetestować hipotezę. Zbudowano lochy Rubikonu."~ */
  IF ~~ THEN REPLY #55213 /* ~"Mów dalej..."~ */ GOTO 51
  IF ~~ THEN REPLY #55214 /* ~"Poczekaj. Co to jest Sfera Mechanus?"~ */ DO ~SetAnimState("Nordom",ANIM_MIMESTAND)
~ GOTO 64
  IF ~~ THEN REPLY #55215 /* ~"Mniejsza z tym. Nordomie, mam do ciebie parę innych pytań..."~ */ GOTO 74
  IF ~~ THEN REPLY #55216 /* ~"Zapomnij o tym. Ruszajmy."~ */ EXIT
END

IF ~~ THEN BEGIN 51 // from: 50.0
  SAY #55217 /* ~"Zwierzchnik/ - Dyrektor 'Tworzenia' - zginął podczas testu polowego. Po zakończeniu Drugiego etapu została zaburzona chronologia. Etap trzeci (występuje przeszkoda), nie jest częścią poleceń wchodzących w skład projektu."~ */
  IF ~~ THEN REPLY #55218 /* ~"Co wydarzyło się w czasie trzeciego etapu?"~ */ GOTO 60
  IF ~~ THEN REPLY #55219 /* ~"Co to był za test polowy?"~ */ GOTO 52
  IF ~~ THEN REPLY #55220 /* ~"Mniejsza z tym. Nordomie, mam do ciebie parę innych pytań..."~ */ GOTO 74
  IF ~~ THEN REPLY #55221 /* ~"Zapomnij o tym. Ruszajmy."~ */ EXIT
END

IF ~~ THEN BEGIN 52 // from: 51.1
  SAY #55222 /* ~"Zwierzchnik/ - Dyrektor 'Tworzenia' - test polowy: Przeszukiwanie obrzeży konstrukcji lochów Rubikonu (Trudny), aby ocenić: Zmienne. Wykryto liczne odchylenia, możliwe poważne problemy." Nordom wydaje niski syk i zamyka oczy z lekkim *szczękiem*. "Dyrektor 'Tworzenia' nie powraca z testu polowego."~ */
  IF ~~ THEN REPLY #55223 /* ~"Rozumiem. Co wydarzyło się podczas trzeciego etapu, o którym wspomniałeś?"~ */ GOTO 60
  IF ~  Global("Know_Director_Truth","GLOBAL",2)
~ THEN REPLY #55224 /* ~"Co się z nim stało?"~ */ GOTO 55
  IF ~  Global("Know_Director_Truth","GLOBAL",1)
~ THEN REPLY #55225 /* ~"Doszły mnie słuchy, że Czarodziej Rubikonu zdezintegrował Dyrektora Twórczego."~ */ GOTO 56
  IF ~  Global("Know_Director_Truth","GLOBAL",0)
~ THEN REPLY #55226 /* ~"Co się z nim stało?"~ */ DO ~SetAnimState("Nordom",ANIM_MIMESTANDFIDGET1)
~ GOTO 53
  IF ~~ THEN REPLY #55227 /* ~"Mniejsza z tym. Nordomie, mam do ciebie parę innych pytań..."~ */ GOTO 74
  IF ~~ THEN REPLY #55228 /* ~"Zapomnij o tym. Ruszajmy."~ */ EXIT
END

IF ~~ THEN BEGIN 53 // from: 52.3
  SAY #55229 /* ~Lewa kusza nagle wydaje szereg *szczękających* dźwięków. Nordom zbliża ją do siebie, jakby chciał lepiej słyszeć, co ma do powiedzenia. *Szczękanie* trwa jeszcze przez jakiś czas, aż w końcu zostaje uciszone przez długie, odbijające się echem *brząkkkk*, które wydaje prawa kusza.~ */
  IF ~~ THEN REPLY #55230 /* ~"Ee, Nordomie? Co się z nim mogło stać?"~ */ GOTO 54
  IF ~~ THEN REPLY #55231 /* ~"Zapomnij o tym - co wydarzyło się podczas trzeciego etapu projektu?"~ */ GOTO 60
  IF ~~ THEN REPLY #55232 /* ~"Mniejsza z tym. Nordomie, mam do ciebie parę innych pytań..."~ */ GOTO 74
  IF ~~ THEN REPLY #55233 /* ~"Zapomnij o tym. Ruszajmy."~ */ EXIT
END

IF ~~ THEN BEGIN 54 // from: 53.0
  SAY #55234 /* ~"Podejrzenie, Brak dowodów: Zwierzchnik natrafił na błąd." Nordom *szczęka* oczyma, jakby chciał je przeczyścić. "Hipoteza: Błąd mógł być poważny i nieoczekiwany."~ */
  IF ~~ THEN REPLY #55235 /* ~"To chyba możliwe. Co wydarzyło się podczas trzeciego etapu projektu?"~ */ GOTO 60
  IF ~~ THEN REPLY #55236 /* ~"Mniejsza z tym. Nordomie, mam do ciebie parę innych pytań..."~ */ GOTO 74
  IF ~~ THEN REPLY #55237 /* ~"Zapomnij o tym. Ruszajmy."~ */ EXIT
END

IF ~~ THEN BEGIN 55 // from: 52.1
  SAY #55244 /* ~"Cytowanie/Czarodziej Rubikonu /Deklaracja Wolności Megalomaniaków: Dyrektor Twórczy natrafił na Błąd: Czarodziej Rubikonu. Hipoteza: Dyrektor źle obliczył siły błędu. Pragnął skorygować aberracje w Czarodzieju Rubikonu. Rezultat: Dyrektor = Przenicowany."~ */
  IF ~~ THEN REPLY #55245 /* ~"Prawdę mówiąc, Nordomie, Rubikon ciągle ma Dyrektora - mnie."~ */ DO ~SetAnimState("Nordom",ANIM_MIMESTAND)
~ GOTO 58
  IF ~~ THEN REPLY #55246 /* ~"Tak twierdził Czarodziej - więc, co wydarzyło się w czasie trzeciego etapu projektu po tym, jak Czarodziej został 'przenicowany'?~ */ GOTO 60
  IF ~~ THEN REPLY #55247 /* ~"Mniejsza z tym. Nordomie, mam do ciebie parę innych pytań..."~ */ GOTO 74
  IF ~~ THEN REPLY #55248 /* ~"Zapomnij o tym. Ruszajmy."~ */ EXIT
END

IF ~~ THEN BEGIN 56 // from: 52.2
  SAY #55249 /* ~"Podejrzenie, Brak dowodów: Teraz Potwierdzone: Zwierzchnik natrafił na błąd." Nordom *klika* oczyma, jakby chciał je przeczyścić. "Pytanie: Błąd był poważny i nieoczekiwany?"~ */
  IF ~~ THEN REPLY #55250 /* ~"Chyba tak. Raczej nie miał problemów ze zniszczeniem Dyrektora."~ */ DO ~SetGlobal("Know_Director_Truth","GLOBAL",2)
~ GOTO 57
  IF ~~ THEN REPLY #55251 /* ~"Porozmawiamy o tym przy innej okazji - opowiedz mi o trzecim etapie Projektu."~ */ GOTO 60
  IF ~~ THEN REPLY #55252 /* ~"Powiem ci później, Nordomie. Na razie mam do ciebie parę innych pytań..."~ */ GOTO 74
  IF ~~ THEN REPLY #55253 /* ~"Zapomnij o tym. Ruszajmy."~ */ EXIT
END

IF ~~ THEN BEGIN 57 // from: 56.0
  SAY #55254 /* ~"Przetwarzanie nowych informacji..." Nordom przygląda ci się przez chwilę w ciszy, a potem rozlega się niski dźwięk, który wydają tryby poruszające się wewnątrz jego obudowy. Potem *chrrrobocze* "Los Dyrektora Twórczego potwierdzony. Dyrektor = Przenicowany."~ */
  IF ~~ THEN REPLY #55255 /* ~"Prawdę mówiąc, Nordomie, jestem nowym Dyrektorem Twórczym Rubikonu."~ */ DO ~SetAnimState("Nordom",ANIM_MIMESTAND)
~ GOTO 58
  IF ~~ THEN REPLY #55256 /* ~"Cieszę się, że coś ci pomogłem wyjaśnić, Nordomie. Teraz mam do ciebie parę innych pytań..."~ */ GOTO 74
  IF ~~ THEN REPLY #55257 /* ~"Zapomnij o tym. Ruszajmy."~ */ EXIT
END

IF ~~ THEN BEGIN 58 // from: 55.0 57.0
  SAY #55258 /* ~Nordom przygląda ci się przez chwilę w ciszy, potem z jego środka dochodzi powolne *wrrrr*, a zaraz *szczęk*. Nie jesteś pewien, ale brzmi to tak, jakby coś wskoczyło na swoje miejsce.~ */
  IF ~  GlobalGT("Nordom_Self_Truth","GLOBAL",0)
~ THEN REPLY #55259 /* ~"Ee... wszystko w porządku, Nordomie?"~ */ DO ~AddexperienceParty(36000)
PermanentStatChange("Nordom",INT,RAISE,1)
PermanentStatChange("Nordom",DEX,RAISE,1)
SetGlobal("Know_Director_Truth","GLOBAL",3)
~ JOURNAL #55261 /* ~Znowu miałem ten stabilizacyjny wypadek z Nordomem, bardzo podobny do tego, który miał miejsce wtedy, kiedy mu powiedziałem, że jego oddzielenie się od Źródła mogło pociągnąć za sobą zmiany w jego perspektywie. A kiedy powiedziałem Nordomowi, że jestem nowym Dyrektorem Kreatywnym Rubikonu, jego stabilność podniosła się jeszcze bardziej. Może to właśnie ustanowienie dla Nordoma nowej linii poleceń tak pomogło mu w "koncentracji". Może utrata Dyrektora była dla niego bardziej dotkliwa, niż przypuszczałem.~ */ GOTO 59
  IF ~  Global("Nordom_Self_Truth","GLOBAL",0)
~ THEN REPLY #55260 /* ~"Ee... wszystko w porządku, Nordomie?"~ */ DO ~AddexperienceParty(36000)
PermanentStatChange("Nordom",INT,RAISE,1)
PermanentStatChange("Nordom",DEX,RAISE,1)
SetGlobal("Know_Director_Truth","GLOBAL",3)
~ JOURNAL #55262 /* ~Coś dziwnego stało się z Nordomem, kiedy powiedziałem mu, że jestem nowym Dyrektorem Kreatywnym Rubikonu. Nordom stał się wtedy bardziej stabilny. Może to dziwne, ale odnoszę wrażenie, że to właśnie ustanowienie dla niego nowej linii poleceń trochę pomogło mu w "koncentracji". Może utrata Dyrektora była dla niego bardziej dotkliwa, niż przypuszczałem.~ */ GOTO 59
END

IF ~~ THEN BEGIN 59 // from: 58.0 58.1
  SAY #55263 /* ~"Status Uaktualniony: Dyrektor Twórczy teraz potwierdzony w hierarchii." Ku twemu zdziwieniu, z głosu Nordoma zniknęło trochę zgrzytania, teraz jest on bardziej płynny, bardziej kontrolowany niż przedtem. W efekcie tracisz trochę przekonania.~ */
  IF ~  CheckStatGT(Protagonist,15,INT)
CheckStatLT(Protagonist,18,WIS)
~ THEN REPLY #55264 /* ~"Hmmmm. Nordomie... tak z ciekawości, za co jest odpowiedzialny Dyrektor Twórczy? Jak bardzo musisz się być mu posłuszny?"~ */ DO ~SetGlobal("Nordom_Order","GLOBAL",1)
~ GOTO 79
  IF ~  CheckStatGT(Protagonist,17,WIS)
~ THEN REPLY #55265 /* ~"Hmmmm. Nordomie... tak z ciekawości, za co jest odpowiedzialny Dyrektor Twórczy? Jak bardzo musisz się być mu posłuszny?"~ */ DO ~SetGlobal("Nordom_Order","GLOBAL",1)
~ GOTO 79
  IF ~~ THEN REPLY #55266 /* ~"Rozumiem. Cieszę się, że mogłem ci to wyjaśnić. Ale wracając do etapów projektu - co stało się podczas trzeciego etapu?"~ */ GOTO 60
  IF ~~ THEN REPLY #55267 /* ~"Nordomie, mam do ciebie parę innych pytań..."~ */ GOTO 74
  IF ~~ THEN REPLY #55268 /* ~"Zapomnij o tym. Ruszajmy."~ */ EXIT
END

IF ~~ THEN BEGIN 60 // from: 51.0 52.0 53.1 54.0 55.1 56.1 59.2
  SAY #55269 /* ~"Trzeci etap, niepowtarzalny: etap dotyczący Nordoma. Hipoteza: Brak Dyrektora plus Wystawienie na Sferę (chaos) spowodowało możliwość odchyleń /Nordoma/ od normy."~ */
  IF ~~ THEN REPLY #55270 /* ~"'Odchyleń od normy?'" Na czym one polegały?"~ */ GOTO 61
  IF ~~ THEN REPLY #55271 /* ~"Mniejsza z tym. Nordomie, mam do ciebie parę innych pytań..."~ */ GOTO 74
  IF ~~ THEN REPLY #55272 /* ~"Zapomnij o tym. Ruszajmy."~ */ EXIT
END

IF ~~ THEN BEGIN 61 // from: 60.0
  SAY #55273 /* ~"Rozpoczęcie cyklu introspektywicznego." Nordom zamyka oczy ze *szczękiem* i zaczyna *brzęczeć*. Kilka chwil później jego oczy otwierają się. "Ewaluacja Introspektywna: Percepcja stała się (1) mniejsza i (B) głośniejsza. Skrzydła zostały zastąpione ramionami: powód nieznany. Podejrzenie/hipoteza: skrzydła nie lubiane? Spekulacja. Nordom był kiedyś -KIMŚ- ale teraz jest mniejszy, głośniejszy! Zmiana nastąpiła w wyniku problemów w przetwarzaniu informacji."~ */
  IF ~  CheckStatGT(Protagonist,15,INT)
Global("Nordom_Self_Truth","GLOBAL",0)
Global("Know_Source","GLOBAL",1)
~ THEN REPLY #55274 /* ~"Myślisz, że to oddzielenie cię od Źródła spowodowało twoją zmianę, z 'jeden' spokojniejszego i większego w 'jeden' mniejsze i głośniejsze?"~ */ DO ~SetGlobal("Nordom_Self_Truth","GLOBAL",1)
SetAnimState("Nordom",ANIM_MIMESTAND)
~ GOTO 62
  IF ~~ THEN REPLY #55275 /* ~"Rozumiem. Mam jeszcze do ciebie parę innych pytań..."~ */ GOTO 74
  IF ~~ THEN REPLY #55276 /* ~"Wiem już wystarczająco dużo. Ruszajmy."~ */ EXIT
END

IF ~~ THEN BEGIN 62 // from: 61.0 106.0 107.0
  SAY #55277 /* ~Nordom przygląda ci się przez chwilę w ciszy, potem z jego środka dochodzi powolne *wrrrr*, a zaraz *SZCZĘK*. Nie jesteś pewien, ale brzmi to tak, jakby coś wskoczyło na swoje miejsce.~ */
  IF ~  Global("Know_Director_Truth","GLOBAL",3)
~ THEN REPLY #55278 /* ~"Nordomie?"~ */ DO ~AddexperienceParty(36000)
PermanentStatChange("Nordom",INT,RAISE,1)
PermanentStatChange("Nordom",CON,RAISE,1)
FullHeal("Nordom")
~ JOURNAL #55280 /* ~Znowu miałem ten stabilizacyjny wypadek z Nordomem, bardzo podobny do tego, który miał miejsce wtedy, kiedy mu powiedziałem, że jestem jego nowym Dyrektorem Kreatywnym. Kiedy powiedziałem, że istnieje prawdopodobieństwo, że jego oddzielenie się od Źródła mogło pociągnąć za sobą zmiany w jego perspektywie, stabilność Nordoma podniosła się jeszcze bardziej. Wydaje mi się, że to właśnie uświadomienie mu przyczyny stanu, w jakim się znalazł, tak pomogło mu w 'koncentracji'. Widocznie jego separacja z Systemem była bardziej brzemienna w skutki, niż początkowo przypuszczałem.~ */ GOTO 63
  IF ~  !Global("Know_Director_Truth","GLOBAL",3)
~ THEN REPLY #55279 /* ~"Nordomie?"~ */ DO ~AddexperienceParty(36000)
PermanentStatChange("Nordom",INT,RAISE,1)
PermanentStatChange("Nordom",CON,RAISE,1)
FullHeal("Nordom")
~ JOURNAL #55281 /* ~Coś dziwnego stało się z Nordomem, kiedy powiedziałem mu, że istnieje prawdopodobieństwo, że jego oddzielenie się od Źródła mogło pociągnąć za sobą zmiany w jego perspektywie - stabilność Nordoma wówczas wydatnie wzrosła. Może to dziwne, ale odnoszę wrażenie, że to właśnie uświadomienie mu przyczyny stanu, w jakim się znalazł, tak pomogło mu w 'koncentracji'. Widocznie jego separacja z Systemem była bardziej brzemienna w skutki, niż początkowo przypuszczałem.~ */ GOTO 63
END

IF ~~ THEN BEGIN 63 // from: 62.0 62.1
  SAY #55282 /* ~"Status Uaktualniony: Pobór Introspekcji Wstrzymany, przeniesienie programów obsługujących spekulacje do głównego stosu." Ku twemu zdziwieniu, z głosu Nordoma zniknęło trochę zgrzytania, teraz jest on bardziej płynny, bardziej kontrolowany niż przedtem. W efekcie tracisz trochę przekonania.~ */
  IF ~~ THEN REPLY #55283 /* ~"Nordomie, mam do ciebie jeszcze parę innych pytań..."~ */ GOTO 74
  IF ~~ THEN REPLY #55284 /* ~"Chyba już wystarczy tej gadaniny. Ruszajmy."~ */ EXIT
END

IF ~~ THEN BEGIN 64 // from: 9.6 50.1 74.5
  SAY #55285 /* ~Nordom zastyga w bezruchu, potem tryby w jego łokciach zaczynają kręcić się z wolną, hipnotyczną synchronizacją. "Definicja/Pytanie: Mechanus. Sfera Porządku. Sens. Powód tworzy Efekt. Przewidywalny. Prawo. Logika. Posłuszeństwo. Tryby obracają się. Mechanus = Pochodzenie Nordoma. Mechanus = Brak Domu/Nordom."~ */
  IF ~  NearbyDialog("DMorte")
~ THEN EXTERN ~DMORTE~ 576
  IF ~  !NearbyDialog("DMorte")
~ THEN REPLY #55286 /* ~"Co masz na myśli mówiąc: 'Brak Domu'?"~ */ GOTO 65
  IF ~  !NearbyDialog("DMorte")
~ THEN REPLY #55293 /* ~"To mi wystarczy. Ruszajmy."~ */ EXIT
END

IF ~~ THEN BEGIN 65 // from: 64.1
  SAY #55288 /* ~"Mechanus = Punkt Pochodzenia. -!ŹRÓDŁO! - Energia. Nie można powrócić do Mechanusa. Nicowany Dom. Prawa złamane istnieniem. Centralny Urząd Karania Przestępców czeka na Regulusie. Mechanus: Pochodzenie, Brak Domu, Dom: Brak Miejsca."~ */
  IF ~  NearbyDialog("Dmorte")
~ THEN REPLY #55289 /* ~"Co masz na myśli mówiąc: '!ŹRÓDŁO!'?"~ */ DO ~SetGlobal("Know_Source","GLOBAL",1)
~ GOTO 70
  IF ~  NearbyDialog("Dgrace")
!NearbyDialog("Dmorte")
~ THEN REPLY #55290 /* ~"Co masz na myśli mówiąc: '!ŹRÓDŁO!'?"~ */ DO ~SetGlobal("Know_Source","GLOBAL",1)
~ GOTO 71
  IF ~  !NearbyDialog("Dgrace")
!NearbyDialog("Dmorte")
~ THEN REPLY #55291 /* ~"Co masz na myśli mówiąc: '!ŹRÓDŁO!'?"~ */ GOTO 66
  IF ~~ THEN REPLY #55292 /* ~"Rozumiem. Mam jeszcze do ciebie parę innych pytań..."~ */ GOTO 74
  IF ~~ THEN REPLY #55293 /* ~"To mi wystarczy. Ruszajmy."~ */ EXIT
END

IF ~~ THEN BEGIN 66 // from: 65.2
  SAY #55294 /* ~"!ŹRÓDŁO! = Energia."~ */
  IF ~~ THEN REPLY #55295 /* ~"Więc... to ten Mechanus jest źródłem energii?"~ */ DO ~SetGlobal("Know_Source","GLOBAL",1)
~ GOTO 67
  IF ~~ THEN REPLY #55296 /* ~"Rozumiem. Mam jeszcze do ciebie parę innych pytań..."~ */ GOTO 74
  IF ~~ THEN REPLY #55297 /* ~"To mi wystarczy. Ruszajmy."~ */ EXIT
END

IF ~~ THEN BEGIN 67 // from: 66.0
  SAY #55298 /* ~"Potwierdzam." Zasłony zsuwają się na oczy Nordoma, potem przez chwilę do siebie *warrrczy*, ale w końcu jego oczy się otwierają. "Część/Procent/Rozłamane. Cząstka !ŹRÓDŁA! wewnątrz Nordoma. Energia podzielona. Połączenie zer'r'r'rwane." Nordom zacina się przy ostatnim słowie, a potem uspokaja się.~ */
  IF ~~ THEN REPLY #55299 /* ~"Więc zostałeś odcięty od 'Źródła'? Czy to nie było... bolesne?"~ */ GOTO 68
  IF ~~ THEN REPLY #55300 /* ~"Rozumiem. Mam jeszcze do ciebie parę innych pytań..."~ */ GOTO 74
  IF ~~ THEN REPLY #55301 /* ~"To mi wystarczy. Ruszajmy."~ */ EXIT
END

IF ~~ THEN BEGIN 68 // from: 67.0
  SAY #55302 /* ~"Brak potwierdzania. Brak bólu." Usta Nordoma nagle się wykrzywiają, tworzą półkole, które potem się odwraca. "Potwierdzenie. Ból." Nordom *szczęka*. "Dewiacja Odpowiedzi: Odpowiedź jest zarówno /Prawda/ jak i /Fałsz/. Odpowiedź nie może być zaakceptowana."~ */
  IF ~~ THEN REPLY #55303 /* ~"Hmm... jeśli *część* odpowiedzi jest prawdziwa, to czy odpowiedź nie jest prawdziwa?"~ */ GOTO 69
  IF ~~ THEN REPLY #55304 /* ~"Rozumiem. Mam jeszcze do ciebie parę innych pytań..."~ */ GOTO 74
  IF ~~ THEN REPLY #55305 /* ~"To mi wystarczy. Ruszajmy."~ */ EXIT
END

IF ~~ THEN BEGIN 69 // from: 68.0
  SAY #55306 /* ~Nordom przerywa na chwilę. "Dewiacja Odpowiedzi: Wynikła z Definicji 'Bólu'. Przez odłączenie od !ŹRÓDŁA! nie zostało stworzone żadne rozłączenie psychiczne. Niemniej jednak parametry efektywności operacji zostały zmienione, więc mogło dojść do nieznanego uszkodzenia. Formułowanie nowej reakcji: Bolesny = Nieznany."~ */
  IF ~~ THEN REPLY #55307 /* ~"Rozumiem. Mam jeszcze do ciebie parę innych pytań..."~ */ GOTO 74
  IF ~~ THEN REPLY #55308 /* ~"To mi wystarczy. Ruszajmy."~ */ EXIT
END

IF ~~ THEN BEGIN 70 // from: 65.0
  SAY #55309 /* ~"!ŹRÓDŁO! = Energia."~ */
  IF ~~ THEN EXTERN ~DMORTE~ 578
END

IF ~~ THEN BEGIN 71 // from: 65.1
  SAY #55310 /* ~"!ŹRÓDŁO! = Energia."~ */
  IF ~~ THEN EXTERN ~DGRACE~ 185
END

IF ~~ THEN BEGIN 72 // from: 9.5 74.4
  SAY #55311 /* ~Gdy Nordom zaczyna szybko mrugać, słychać serią *klik-klik-klik*, a potem *chrrupot*. Pytanie: Modron, co to? Definiuj: Modron? Ja jestem modronem."~ */
  IF ~~ THEN REPLY #55312 /* ~"Tak, ale co to *jest* modron?"~ */ GOTO 73
  IF ~~ THEN REPLY #55313 /* ~"Mniejsza z tym. Nordomie, mam do ciebie parę innych pytań..."~ */ GOTO 74
  IF ~~ THEN REPLY #55314 /* ~"Zapomnij o tym. Ruszajmy."~ */ EXIT
END

IF ~~ THEN BEGIN 73 // from: 72.0 97.1
  SAY #55315 /* ~"Pytanie: Modron, Zdefiniowany: Modron, ja jestem modronem, Odpowiedź." Zasłony na oczach Nordoma kilkakrotnie zamykają się i otwierają ze *szczękiem*, a potem jego 'oczy' powiększają się. "Nowe Pytanie: Modron, Ale co TO? Definiuj: Ale czym jest Modron? Modron to Nordom. Uwsteczniony Nordom = Modron."~ */
  IF ~  NearbyDialog("Dmorte")
~ THEN REPLY #55316 /* ~"Ale..."~ */ EXTERN ~DMORTE~ 587
  IF ~  !NearbyDialog("Dmorte")
~ THEN REPLY #55317 /* ~"Mniejsza z tym. Nordomie, mam do ciebie parę innych pytań..."~ */ GOTO 74
END

IF ~~ THEN BEGIN 74 // from: 43.2 44.3 45.1 46.1 48.0 49.1 50.2 51.2 52.4 53.2 54.1 55.2 56.2 57.1 59.3 60.1 61.1 63.0 65.3 66.1 67.1 68.1 69.0 72.1 73.1 75.0 76.2 77.1 78.1 79.4 81.8 86.2 87.2 91.1 92.1 93.3 94.2 97.2 98.2 99.4 100.1 101.2 102.3 103.2 104.1 105.4 106.1 107.1 108.0 110.2 110.3 111.3 112.1 113.4 114.2 115.1 116.2 117.4 118.1 119.2 130.4
  SAY #55318 /* ~"Status: Oczekiwanie na pytania."~ */
  IF ~  Global("Know_Director_Truth","GLOBAL",3)
Global("Nordom_Order","GLOBAL",0)
~ THEN REPLY #55319 /* ~"Nordomie, powiedz mi, jakie są obowiązki Dyrektora Twórczego?"~ */ GOTO 79
  IF ~  GlobalGT("Nordom_Order","GLOBAL",0)
~ THEN REPLY #55320 /* ~"Nordomie, przypomnij mi jeszcze raz, jakie są obowiązki Dyrektora Twórczego?"~ */ GOTO 79
  IF ~  GlobalGT("Nordom_Order","GLOBAL",0)
~ THEN REPLY #55321 /* ~"Jako Dyrektor Twórczy, mam dla ciebie kilka rozkazów."~ */ GOTO 81
  IF ~~ THEN REPLY #55322 /* ~"Ciekawi mnie... jak skończyła się dla ciebie ta sprawa w Rubikonie?"~ */ GOTO 49
  IF ~~ THEN REPLY #55323 /* ~"Co to *są* modrony?"~ */ GOTO 72
  IF ~  Global("Know_Mechanus","GLOBAL",1)
~ THEN REPLY #55324 /* ~"Opowiedz mi coś o Mechanusie."~ */ DO ~SetAnimState("Nordom",ANIM_MIMESTAND)
~ GOTO 64
  IF ~  Global("Nordom_Self","GLOBAL",0)
~ THEN REPLY #55325 /* ~"Ee... jak się masz?"~ */ DO ~SetGlobal("Nordom_Self","GLOBAL",1)
SetAnimState("Nordom",ANIM_MIMESTAND)
~ GOTO 105
  IF ~  Global("Nordom_Self","GLOBAL",1)
~ THEN REPLY #55326 /* ~"Jak się masz?"~ */ DO ~SetAnimState("Nordom",ANIM_MIMESTAND)
~ GOTO 105
  IF ~  GlobalGT("Nordom_Solution","GLOBAL",0)
~ THEN REPLY #55327 /* ~"Nordomie, spytałeś mnie wcześniej, jak się mam, prawda?"~ */ GOTO 111
  IF ~  GlobalGT("Nordom_Solution","GLOBAL",1)
~ THEN REPLY #55328 /* ~"Czy możemy jeszcze wrócić do sprawy nieśmiertelności?"~ */ GOTO 130
  IF ~  GlobalGT("Know_Ravel","GLOBAL",0)
Global("Ravel","GLOBAL",0)
~ THEN REPLY #55329 /* ~"Czy słyszałeś o kimś o imieniu Ravela Szaradna?"~ */ GOTO 75
  IF ~  GlobalGT("Know_Blood_War","GLOBAL",0)
~ THEN REPLY #55330 /* ~"Czy wiesz coś o Wojnie Krwi?"~ */ GOTO 76
  IF ~~ THEN REPLY #55331 /* ~"Już wystarczy... tych pytań. Ruszajmy."~ */ EXIT
END

IF ~~ THEN BEGIN 75 // from: 9.11 74.10
  SAY #55332 /* ~"Odpowiedź negatywna." Ciało Nordoma zaczyna wibrować, potem następuje ostry *pstryk* i zatrzymanie. "Obiekt pytania nie jest znany /Nordomowi/."~ */
  IF ~~ THEN REPLY #55333 /* ~"W takim razie w porządku. Mam do ciebie kilka innych pytań..."~ */ GOTO 74
  IF ~~ THEN REPLY #55334 /* ~"To mi wystarczy. Ruszajmy."~ */ EXIT
END

IF ~~ THEN BEGIN 76 // from: 9.12 74.11
  SAY #55335 /* ~"Definiuj: Wojna Krwi. Największy konflikt notowany w historii. Powód wojny: różnice ideologiczne pomiędzy baatezu - prawem i tanar'ri - chaosem. Określenie Wojny: Wyniszczenie Rasowe. Szanse na zakończenie wojny, jeśli każdy baatezu i/lub każdy tan'nari nie zostanie zabity wynoszą 0,0000000000000000001%. Pierwszoplanowi Wojownicy: Baatezu, Tanar'ri. Uczestnicy wojny: Wszyscy."~ */
  IF ~~ THEN REPLY #55336 /* ~"Co wiesz o Baatezu?"~ */ GOTO 77
  IF ~~ THEN REPLY #55337 /* ~"Co wiesz o Tanar'ri?"~ */ GOTO 78
  IF ~~ THEN REPLY #55338 /* ~"W takim razie w porządku. Mam do ciebie kilka innych pytań..."~ */ GOTO 74
  IF ~~ THEN REPLY #55339 /* ~"To mi wystarczy. Ruszajmy."~ */ EXIT
END

IF ~~ THEN BEGIN 77 // from: 76.0 78.0
  SAY #55340 /* ~"AKA 'Biesy, Diabły'. Informacja kompletna: Opis Generyczny, Baatezu. Mieszkańcy Sfery: Baator. Ilość: Niezliczona. Główna Forma Ataku: Zależy od kasty. Niewrażliwi na: Ogień, Zimne Żelazo, Trucizna. Cechy fizyczne: w zależności od podrasy, większość wykazuje odporność na zimno/gaz. Cechy Osobowości: Praworządni, Źli, Manipulują innymi, Wydajność: 73%."~ */
  IF ~~ THEN REPLY #55341 /* ~"Co wiesz o Tanar'ri?"~ */ GOTO 78
  IF ~~ THEN REPLY #55342 /* ~"W takim razie w porządku. Mam do ciebie kilka innych pytań..."~ */ GOTO 74
  IF ~~ THEN REPLY #55343 /* ~"To mi wystarczy. Ruszajmy."~ */ EXIT
END

IF ~~ THEN BEGIN 78 // from: 76.1 77.0
  SAY #55344 /* ~"AKA 'Biesy, Demony'. Informacja kompletna: Opis Generyczny, Tanar'ri. Mieszkańcy Sfery: Otchłań. Liczba: Niepoliczona. Główna Forma Ataku: Zależy od kategorii. Niewrażliwi na: Piorun, nie-magiczny Ogień, Trucizna. Cechy fizyczne: w zależności od podrasy, większość wykazuje odporność na zimno, ogień magiczny, gaz. Cechy Osobowości: Chaotyczni, Źli, Wydajność: 13%."~ */
  IF ~~ THEN REPLY #55345 /* ~"Co wiesz o Baatezu?"~ */ GOTO 77
  IF ~~ THEN REPLY #55346 /* ~"W takim razie w porządku. Mam do ciebie kilka innych pytań..."~ */ GOTO 74
  IF ~~ THEN REPLY #55347 /* ~"To mi wystarczy. Ruszajmy."~ */ EXIT
END

IF ~~ THEN BEGIN 79 // from: 9.0 9.1 59.0 59.1 74.0 74.1
  SAY #55348 /* ~W Nordomie zaczyna narastać wolne *tkkk-tkkk-tkkk* - jak w zegarku, który zaraz eksploduje. "Odpowiedź: Obowiązki Dyrektora: (A) Utrzymanie Spójności Projektu Rubikon, (2) Wydawanie rozkazów grupie bojowej/roboczej Rubikon. Okres posłuszeństwa w zgodzie z posłuszeństwem Nordoma: Aż do wstrzymania projektu Rubikon, Dyrektor Twórczy = zwierzchnik Nordoma."~ */
  IF ~~ THEN REPLY #55349 /* ~"Więc... zrobisz cokolwiek ci powiem?"~ */ GOTO 80
  IF ~~ THEN REPLY #55350 /* ~"W takim razie mam dla ciebie kilka rozkazów..."~ */ GOTO 81
  IF ~  CheckStatGT(Protagonist,16,INT)
~ THEN REPLY #55351 /* ~"Hmmm. Jakie zadania dawał ci do wykonania Dyrektor Twórczy?"~ */ GOTO 93
  IF ~  CheckStatGT(Protagonist,16,WIS)
CheckStatLT(Protagonist,17,INT)
~ THEN REPLY #55352 /* ~"Hmmm. Jakie zadania dawał ci do wykonania Dyrektor Twórczy?"~ */ GOTO 93
  IF ~~ THEN REPLY #55353 /* ~"Wiesz co, zapomnij o tym. Mam do ciebie jeszcze parę innych pytań..."~ */ GOTO 74
  IF ~~ THEN REPLY #55354 /* ~"Daj sobie z tym spokój. Ruszajmy."~ */ EXIT
END

IF ~~ THEN BEGIN 80 // from: 79.0
  SAY #55355 /* ~"Potwierdzam."~ */
  IF ~~ THEN REPLY #55356 /* ~"Hmm, w takim razie mam dla ciebie kilka rozkazów..."~ */ GOTO 81
  IF ~  CheckStatGT(Protagonist,16,INT)
~ THEN REPLY #55357 /* ~"Hmmm. Jakie zadania dawał ci do wykonania Dyrektor Twórczy?"~ */ GOTO 93
  IF ~~ THEN REPLY #55358 /* ~"Wiesz co, zapomnij o tym. Mam do ciebie jeszcze parę innych pytań..."~ */ GOTO 93
  IF ~~ THEN REPLY #55359 /* ~"Daj sobie z tym spokój. Ruszajmy."~ */ EXIT
END

IF ~~ THEN BEGIN 81 // from: 9.2 74.2 79.1 80.0 86.1 87.1 91.0 92.0
  SAY #55360 /* ~"Status: Oczekiwanie na polecenia."~ */
  IF ~  Global("Nordom_Fighter_Order","GLOBAL",0)
CheckStatGT(Protagonist,16,STR)
Class(Protagonist,FIGHTER)
~ THEN REPLY #55361 /* ~"Rozkazuję ci przenieść energię z układów introspekcyjnych i wykorzystać ją do walki. Oczekuję *natychmiastowego* polepszenia twoich umiejętności bojowych i dokładności, żołnierzu."~ */ DO ~SetAnimState("Nordom",ANIM_STANDTOSTANCE)
SetGlobal("Nordom_Fighter_Order","GLOBAL",1)
AddexperienceParty(36000)
~ GOTO 82
  IF ~  Global("Nordom_Mage_Order","GLOBAL",0)
CheckStatGT(Protagonist,16,INT)
Class(Protagonist,MAGE)
~ THEN REPLY #55362 /* ~"Chcę abyś skupił się na oczyszczeniu swojej pamięci z nadmiernego obciążenia i użyciu jej do polepszenia swoich układów logiki i introspekcji."~ */ DO ~SetGlobal("Nordom_Mage_Order","GLOBAL",1)
AddexperienceParty(36000)
SetAnimState("Nordom",ANIM_MIMESPELL1)
~ GOTO 84
  IF ~  Global("Nordom_Thief_Order","GLOBAL",0)
CheckStatGT(Protagonist,16,DEX)
Class(Protagonist,THIEF)
~ THEN REPLY #55363 /* ~"Masz przenieść trochę energii, którą poświęcasz na uzyskanie siły, do układów obsługujących umiejętności ukrywania się i dokładności. Jesteś teraz zbyt niezgrabny i głośny."~ */ DO ~SetGlobal("Nordom_Thief_Order","GLOBAL",1)
AddexperienceParty(36000)
~ GOTO 85
  IF ~  CheckStatGT(Protagonist,16,CHR)
Global("Nordom_Charisma_Order","GLOBAL",0)
~ THEN REPLY #55364 /* ~"Rozkazuję ci mnie słuchać. Jest parę rzeczy, które chcę ci powiedzieć."~ */ DO ~SetAnimState("Nordom",ANIM_MIMESTAND)
~ GOTO 86
  IF ~~ THEN REPLY #55365 /* ~"A może byś stał się wrogi i atakował wszystkich naokoło?"~ */ DO ~LeaveParty()
IncrementGlobalOnceEx("GLOBALChaotic_Nordom_2","GLOBALLaw",-3)
IncrementGlobalOnceEx("GLOBALEvil_Nordom_1","GLOBALGood",-3)
Enemy()
Attack(Protagonist)
ChangeAIScript("MDKTNO",DEFAULT)
~ EXIT
  IF ~~ THEN REPLY #55366 /* ~"Zatańcz dla mnie."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Nordom_3","GLOBALLaw",-1)
SetAnimState("Nordom",ANIM_STANDTOSTANCE)
SetAnimState("Nordom",ANIM_STANCETOSTAND)
~ GOTO 92
  IF ~~ THEN REPLY #55367 /* ~"Rozkazuję ci, abyś padł na twarz, a potem się podniósł."~ */ DO ~SetAnimState("Nordom",ANIM_MIMEDIE)
SetAnimState("Nordom",ANIM_MIMEGETUP)
~ GOTO 92
  IF ~~ THEN REPLY #55368 /* ~"Zmień ręce, w których trzymasz swoje kusze."~ */ DO ~SetAnimState("Nordom",ANIM_MIMESTANCEFIDGET1)
~ GOTO 92
  IF ~~ THEN REPLY #55369 /* ~"Wiesz co, zapomnij o tym. Mam do ciebie jeszcze parę innych pytań..."~ */ GOTO 74
  IF ~~ THEN REPLY #55370 /* ~"Daj sobie z tym spokój. Ruszajmy."~ */ EXIT
END

IF ~~ THEN BEGIN 82 // from: 81.0
  SAY #55371 /* ~"Potwierdzam." Zalega chwila ciszy, potem zasłony powoli zapadają na oczy Nordoma. Wewnątrz jego obudowy słychać lekkie *tkk-tkk-tkk*, a potem niski odgłos mielenia. Ten dźwięk zamienia się w trzeszczenie metalu, gdy w bocznych ścianach Nordoma otwierają się panele i metalowe płyty zasłaniają jego obudowę.~ */
  IF ~~ THEN DO ~PermanentStatChange("Nordom",INT,LOWER,2)
PermanentStatChange("Nordom",ARMORCLASS,LOWER,2)
PermanentStatChange("Nordom",CON,RAISE,1)
~ GOTO 83
END

IF ~~ THEN BEGIN 83 // from: 82.0
  SAY #55372 /* ~Jego palce zaczynają pukać w kusze. Możesz dostrzec, jak wypadają z nich nity, a potem puste dziury nagle zapełniają się rojem maleńkich trybików. Walcząc o przestrzeń, trybiki *kilnkają* i *tikają*, po chwili przyjmują jednostajne *tik-tik-tik*."~ */
  IF ~~ THEN DO ~PermanentStatChange("Nordom",DEX,RAISE,1)
~ GOTO 92
END

IF ~~ THEN BEGIN 84 // from: 81.1
  SAY #55373 /* ~"Potwierdzam." Zalega chwila ciszy, potem zasłony powoli zapadają na oczy Nordoma. Wewnątrz jego obudowy słychać lekkie *tkk-tkk-tkk*, a potem niski odgłos mielenia. Ten dźwięk zamienia się w trzeszczenie metalu, gdy w bocznych ścianach Nordoma otwierają się panele i... nadmiarowy "bagaż" zaczyna wylatywać z jego wnętrza. Próbujesz złapać każdą część, kiedy zostaje wyrzucona z Nordoma.~ */
  IF ~~ THEN DO ~PermanentStatChange("Nordom",INT,RAISE,2)
GiveItemCreate("Junk",Protagonist,1,0,0)
GiveItemCreate("Junk",Protagonist,1,0,0)
GiveItemCreate("Junk",Protagonist,1,0,0)
GiveItemCreate("Enoll",Protagonist,1,0,0)
~ GOTO 92
END

IF ~~ THEN BEGIN 85 // from: 81.2
  SAY #55374 /* ~"Potwierdzam." Zalega chwila ciszy, potem zasłony powoli zapadają na oczy Nordoma. Wewnątrz jego obudowy słychać *wrrrrr*, jak młyn pracujący na wysokich obrotach. Potem następuje chór *szczęków* dochodzących ze złączeń, a następnie jak chwasty wyskakują nowe trybiki, przyczepiają się do jego ramion, łokci, kolan, nadgarstków i kostek. Po chwili wszystkie trzymają się już mocno złączy, a Nordom wygląda... no cóż, jeszcze bardziej utrybiony niż zazwyczaj.~ */
  IF ~~ THEN DO ~PermanentStatChange("Nordom",STR,LOWER,2)
PermanentStatChange("Nordom",DEX,RAISE,2)
~ GOTO 92
END

IF ~~ THEN BEGIN 86 // from: 81.3
  SAY #55375 /* ~Nordom zastyga. "Oczekiwanie: Mowa."~ */
  IF ~~ THEN REPLY #55376 /* ~Prawda: "Rozkazuję ci być WIĘCEJ niż jesteś, Nordomie. Rozkazuje ci stać się silniejszym, szybszym i bardziej skupionym, niż kiedykolwiek byłeś. WIEM, że jesteś w stanie to zrobić, bo WIERZĘ, że możesz to zrobić."~ */ DO ~SetAnimState("Nordom",ANIM_MIMESTAND)
~ GOTO 87
  IF ~~ THEN REPLY #55377 /* ~"Przerwij to. Mam dla ciebie parę innych rozkazów..."~ */ GOTO 81
  IF ~~ THEN REPLY #55378 /* ~"Zapomnij o ostatnim rozkazie. Mam do ciebie jeszcze parę pytań..."~ */ GOTO 74
  IF ~~ THEN REPLY #55379 /* ~"Mniejsza o to. Ruszajmy."~ */ EXIT
END

IF ~~ THEN BEGIN 87 // from: 86.0
  SAY #55380 /* ~Nordom wpatruje się w ciebie w ciszy. Jego kusze także przestały się ruszać.~ */
  IF ~~ THEN REPLY #55382 /* ~"Teraz powtarzaj za mną: 'Jestem silnym modronem.' 'Jestem szybkim modronem.' 'Jestem potężnym modronem.' 'Mój Dyrektor Twórczy wierzy we mnie.' 'Jestem skoncentrowany na moim Dyrektorze.' No dalej, powtarzaj."~ */ DO ~SetGlobal("Nordom_Charisma_Order","GLOBAL",1)
SetAnimState("Nordom",ANIM_MIMESTAND)
~ GOTO 88
  IF ~~ THEN REPLY #55383 /* ~"Przerwij to. Mam dla ciebie inne rozkazy..."~ */ GOTO 81
  IF ~~ THEN REPLY #55384 /* ~"Zapomnij o ostatnim rozkazie. Mam do ciebie parę innych pytań..."~ */ GOTO 74
  IF ~~ THEN REPLY #55385 /* ~"Mniejsza z tym. Ruszajmy."~ */ EXIT
END

IF ~~ THEN BEGIN 88 // from: 87.0
  SAY #55386 /* ~Nordom zaczyna mówić, ale jego głos nie ma już metalicznego postuku, jaki słyszałeś wcześniej: Jest jednostajny. Skupiony. Wyzbyty z emocji. "Jestem silnym modronem. Jestem szybkim modronem. Jestem potężnym modronem. Mój Dyrektor wierzy we mnie. Jestem skoncentrowany na moim Dyrektorze Twórczym."~ */
  IF ~~ THEN REPLY #55387 /* ~"Teraz POCZUJ te słowa. STAŃ SIĘ silniejszy. STAŃ SIĘ szybszy. STAŃ SIĘ potężniejszy. Pozwól energii wypłynąć z twojego wnętrza na powierzchnię i użyj jej, aby stać cię NORDOMEM."~ */ DO ~SetAnimState("Nordom",ANIM_MIMESTAND)
~ GOTO 89
END

IF ~~ THEN BEGIN 89 // from: 88.0
  SAY #55388 /* ~Nordom ciągle się w ciebie wpatruje, ale możesz WYCZUĆ, jak twoje słowa powoli zaczynają coś w nim zmieniać - czujesz, że wewnątrz niego znajduje się jedna *iskra*, tylko *iskra* energii... gdybyś mógł ją wykrzesać... sprawić, by wyszła na powierzchnię...~ */
  IF ~  CheckStatLT(Protagonist,19,CHR)
~ THEN REPLY #55390 /* ~"No, dalej, Nordom... Siła. Szybkość. Moc. Koncentracja."~ */ DO ~SetAnimState("Nordom",ANIM_MIMESPELL2)
PermanentStatChange("Nordom",STR,RAISE,1)
PermanentStatChange("Nordom",CON,RAISE,1)
AddexperienceParty(36000)
~ GOTO 90
  IF ~  CheckStatGT(Protagonist,18,CHR)
CheckStatLT(Protagonist,25,CHR)
~ THEN REPLY #55393 /* ~"No, dalej, Nordom... Siła. Szybkość. Moc. Koncentracja."~ */ DO ~SetAnimState("Nordom",ANIM_MIMESPELL2)
PermanentStatChange("Nordom",ARMORCLASS,LOWER,1)
PermanentStatChange("Nordom",STR,RAISE,2)
PermanentStatChange("Nordom",CON,RAISE,1)
AddexperienceParty(48000)
~ GOTO 90
  IF ~  CheckStatGT(Protagonist,24,CHR)
~ THEN REPLY #55395 /* ~"No, dalej, Nordom... Siła. Szybkość. Moc. Koncentracja."~ */ DO ~SetAnimState("Nordom",ANIM_MIMESPELL2)
PermanentStatChange("Nordom",ARMORCLASS,LOWER,2)
PermanentStatChange("Nordom",STR,RAISE,2)
PermanentStatChange("Nordom",CON,RAISE,1)
PermanentStatChange("Nordom",LUCK,RAISE,1)
AddexperienceParty(60000)
~ GOTO 90
END

IF ~~ THEN BEGIN 90 // from: 89.0 89.1 89.2
  SAY #55398 /* ~"POTWIERDZAM." Źrenice Nordoma nagle *klikają* i zmieniają się w białe kropki, jak maleńkie słonka. Jego ręce unoszą się ponad głowę w dziwnym, latającym ruchu, a potem opadają po bokach... kiedy są już nisko, Nordom wydaje się być bardziej... pełny. W jakiś niewiadomy sposób twoje zmysły odbierają go ostrzej. Coś się *zmieniło*.~ */
  IF ~~ THEN REPLY #55399 /* ~"Nordomie...?"~ */ DO ~SetAnimState("Nordom",ANIM_STANDTOSTANCE)
~ GOTO 91
END

IF ~~ THEN BEGIN 91 // from: 90.0
  SAY #55401 /* ~"ROZKAZ PRZETWORZONY." Nordom mruga oczyma, a potem nagle zapada w siebie z lekkim *klank*. Z jednego ze swoich zaworów wypuszcza mały obłoczek pary; jego głos zdaje się być niezwykle głęboki, jak gdyby mówił z głębi wielkiego pieca. Potem powraca do swojego normalnego tonu. "Ro-o-o-ozkaz przetworzony."~ */
  IF ~~ THEN REPLY #55402 /* ~"Całkiem nieźle. Mam do ciebie kilka innych pytań..."~ */ GOTO 81
  IF ~~ THEN REPLY #55403 /* ~"Wspaniale. Mam do ciebie kilka innych pytań..."~ */ GOTO 74
  IF ~~ THEN REPLY #55405 /* ~"To mi wystarczy. Ruszajmy."~ */ EXIT
END

IF ~~ THEN BEGIN 92 // from: 81.5 81.6 81.7 83.0 84.0 85.0
  SAY #55407 /* ~Nordom uspakaja się na chwilę, potem otwiera oczy z lekkim *szczękiem*. "Rozkaz przetworzony."~ */
  IF ~~ THEN REPLY #55408 /* ~"Mam do ciebie kilka innych pytań..."~ */ GOTO 81
  IF ~~ THEN REPLY #55409 /* ~"Wspaniale. Mam do ciebie kilka innych pytań..."~ */ GOTO 74
  IF ~~ THEN REPLY #55410 /* ~"To mi wystarczy. Ruszajmy."~ */ EXIT
END

IF ~~ THEN BEGIN 93 // from: 79.2 79.3 80.1 80.2 94.1 95.1 96.0 98.1 99.3 100.0 101.1 102.2 103.1 104.0
  SAY #55412 /* ~Zasłony na oczach Nordoma zsuwają się na dół, jak gdyby myślał. "Rozkład Czynności: Ewaluacja/Wyślij-Zwiadowcę/Czystość: Zewnętrzne obszary projektu Rubikon trzeba ocenić, skatalogować, wyczyścić, a potem przedstawić o nich raport. Raport składa się z: Oceny Integralności/Usuwania Błędów Projektu/Zdobycie Przedmiotów - Nie-porządku."~ */
  IF ~~ THEN REPLY #55414 /* ~"Ocena integralności?"~ */ GOTO 94
  IF ~~ THEN REPLY #55415 /* ~"Usuwanie błędów?"~ */ GOTO 97
  IF ~~ THEN REPLY #55417 /* ~"Zdobycie Przedmiotów?"~ */ GOTO 101
  IF ~~ THEN REPLY #55418 /* ~"Wiesz co, zapomnij o tym. Mam do ciebie jeszcze parę innych pytań..."~ */ GOTO 74
  IF ~~ THEN REPLY #55420 /* ~"Daj sobie z tym spokój. Ruszajmy."~ */ EXIT
END

IF ~~ THEN BEGIN 94 // from: 93.0 95.2 96.1
  SAY #55421 /* ~"Potwierdzenie wyboru powtórzonego słowa (Echo?): Ocena integralności. Ocena ma za zadanie wykryć wady projektu Rubikon, skatalogować je, a potem /usunąć/. Natura Wieloświata i natura Sfery: Limbo zakłóciły przebieg Projektu Rubikon."~ */
  IF ~~ THEN REPLY #55427 /* ~"W jaki sposób Wieloświat... i Limbo... zakłóciły przebieg Projektu?"~ */ GOTO 95
  IF ~~ THEN REPLY #55429 /* ~"Możesz powtórzyć, na czym polegały twoje zadania?"~ */ GOTO 93
  IF ~~ THEN REPLY #55431 /* ~"Wiesz co, zapomnij o tym. Mam do ciebie jeszcze parę innych pytań..."~ */ GOTO 74
  IF ~~ THEN REPLY #55432 /* ~"Daj sobie z tym spokój. Ruszajmy."~ */ EXIT
END

IF ~~ THEN BEGIN 95 // from: 94.0
  SAY #55434 /* ~"Właściwości Wieloświata: - Pęknięcia - Pieczęcie - Znowu Pęknięcia - Powstają Błędy. Tworzą się "portale"/kanały w przestrzeni. Częstotliwość: Wzór Nieokreślony. Rozwiązanie Nieznane" Z jednego z zaworów w obudowie Nordoma unosi się mały obłoczek pary. "Nordom nie może naprawić/zatkać pęknięć. Aktualny Status: Nordom ogranicza się do: spostrzegania pęknięć."~ */
  IF ~~ THEN REPLY #55435 /* ~"Poczekaj. Dostrzegasz 'pęknięcia' w Sferach? Portale? Jak?"~ */ JOURNAL #55442 /* ~Nordom napomknął, że posiada właściwości dostrzegania portali, czy też, używając jego języka "skaz" w Sferach. Czyni to ponoć z 80 - 90 procentową dokładnością. Z tego, co zrozumiałem, wystarczy tylko, aby Nordom znalazł się w pobliżu portalu, a natychmiast wykryje jego obecność. Założę się przy tym, że Nordon nie będzie mi w stanie powiedzieć, jak otworzyć poszczególne portale, ale przynamniej będą mógł je dzięki niemu jakoś lokalizować.~ */ GOTO 96
  IF ~~ THEN REPLY #55436 /* ~"Rozumiem. Możesz powtórzyć, na czym polegały twoje zadania?"~ */ GOTO 93
  IF ~~ THEN REPLY #55438 /* ~"Mniejsza z tym. Nordomie, mam do ciebie parę innych pytań..."~ */ GOTO 94
  IF ~~ THEN REPLY #55439 /* ~"Zapomnij o tym. Ruszajmy."~ */ EXIT
END

IF ~~ THEN BEGIN 96 // from: 95.0
  SAY #55445 /* ~"Umiejętność wykrywania portali: 80-90% procent. Maksymalny Zasięg Spostrzegania Zmienia się w zależności od Błędu/Średniej Odległości = Y+78..." Z ciała Nordoma dochodzi seria *szczęków*, jakby wewnątrz obudowy urządziła sobie paradę armia żuków. "Nordom musi zbliżyć się na 3 metry do portalu. Margines Błędu: +/- 5 cm. Jeśli znajdzie się w pobliżu portalu, da znak akustyczny."~ */
  IF ~~ THEN REPLY #55449 /* ~"W takim razie w porządku. Możesz powtórzyć, jakie były twoje inne zadania?"~ */ GOTO 93
  IF ~~ THEN REPLY #55450 /* ~"Chętnie. Mam do ciebie parę innych pytań..."~ */ GOTO 94
  IF ~~ THEN REPLY #55452 /* ~"Dzięki. Ruszajmy."~ */ EXIT
END

IF ~~ THEN BEGIN 97 // from: 93.1
  SAY #55453 /* ~Zwykły ton głosu Nordoma zamienia się w oscylujące mruczenie. "Błędy: Wiele. Wszystkie konstrukcje w Projekcie Rubikon zawierają błąd, a ich istnienie jest oznaką nie-posłuszeństwa wobec Dyrektora Twórczego i całego personelui projektu Rubikon. Wydane polecenie: Błędy, których istnienie jest oznaką nie-posłuszeństwa, mają zostać usunięte. Przeszkoda: Nordom nie może wykonać tego zadania bez wkroczenia w Stan Nicowania."~ */
  IF ~~ THEN REPLY #55454 /* ~"Więc sam nie mogłeś powstrzymać tych zbuntowanych konstruktów... przynajmniej bez narażenia się na rozerwanie na tryby?"~ */ GOTO 98
  IF ~~ THEN REPLY #55456 /* ~"Jakie inne zadania zostały ci przydzielone?"~ */ GOTO 73
  IF ~~ THEN REPLY #55458 /* ~"Mam do ciebie jeszcze kilka pytań..."~ */ GOTO 74
  IF ~~ THEN REPLY #55459 /* ~"To mi wystarczy. Ruszajmy."~ */ EXIT
END

IF ~~ THEN BEGIN 98 // from: 97.0
  SAY #55461 /* ~"Potwierdzenie. Stan Nicowania nie sprzyja ukończeniu tego zadania."~ */
  IF ~~ THEN REPLY #55462 /* ~"No cóz, może gdyby dali ci lepsze uzbrojenie..."~ */ DO ~SetAnimState("Nordom",ANIM_MIMESTANDFIDGET1)
~ GOTO 99
  IF ~~ THEN REPLY #55464 /* ~"Możesz powtórzyć, na czym polegały twoje pozostałe zadania?"~ */ GOTO 93
  IF ~~ THEN REPLY #55465 /* ~"Wiesz co, zapomnij o tym. Mam do ciebie jeszcze parę innych pytań..."~ */ GOTO 74
  IF ~~ THEN REPLY #55466 /* ~"Daj sobie z tym spokój. Ruszajmy."~ */ EXIT
END

IF ~~ THEN BEGIN 99 // from: 98.0
  SAY #55468 /* ~Kusze w rękach Nordoma zaczynają *szczękać* i *dygotać* jak para dziwnych owadów. Nordom słucha ich przez chwilę, potem spogląda na ciebie. "Moje kusze chcą złożyć pytanie poparte trzydziestoma trzema prośbami o pomoc: 'Amunicja ograniczona przez sugestie twórcy.' Czy chcesz dać im nowe specyfikacje?"~ */
  IF ~  CheckStatGT(Protagonist,17,INT)
Global("Nordom_Bolt_03","GLOBAL",0)
~ THEN REPLY #55469 /* ~"Jasne... hmmm, a może by tak coś... Nie wiem - grot w kształcie piramidy, która rozdziela się na trzy części, kiedy w coś uderzy?"~ */ DO ~GiveItemCreate("Bolt03","Nordom",10,0,0)
SetGlobal("Nordom_Bolt_03","GLOBAL",1)
SetAnimState("Nordom",ANIM_MIMEATTACK1)
~ GOTO 100
  IF ~  Global("Nordom_Bolt_07","GLOBAL",0)
~ THEN REPLY #55470 /* ~"Może coś bardziej dokładnego. Z estetyczną lekkością pióra, aby pokazać, że podróżuje daleko."~ */ DO ~GiveItemCreate("Bolt07","Nordom",10,0,0)
SetGlobal("Nordom_Bolt_07","GLOBAL",1)
SetAnimState("Nordom",ANIM_MIMEATTACK1)
~ GOTO 100
  IF ~  GlobalLT("Good","GLOBAL",-20)
Global("Nordom_Bolt_06","GLOBAL",0)
~ THEN REPLY #55471 /* ~"Nie wiem. Może coś złego. To znaczy NAPRAWDĘ złego. Chodzi mi o zło okropne, bolesne, porażające."~ */ DO ~GiveItemCreate("Bolt06","Nordom",10,0,0)
SetGlobal("Nordom_Bolt_06","GLOBAL",1)
SetAnimState("Nordom",ANIM_MIMEATTACK1)
~ GOTO 100
  IF ~~ THEN REPLY #55472 /* ~"Nic nie przychodzi mi na myśl. Możesz powtórzyć, jakie inne zadania zostały ci przydzielone?"~ */ GOTO 93
  IF ~~ THEN REPLY #55473 /* ~"Nie teraz. Mam do ciebie jeszcze parę pytań..."~ */ GOTO 74
  IF ~~ THEN REPLY #55474 /* ~"Zapomnij o tym. Może innym razem. Ruszajmy."~ */ EXIT
END

IF ~~ THEN BEGIN 100 // from: 99.0 99.1 99.2
  SAY #55475 /* ~Od strony kusz dochodzi nagły *ping*, po czym w powietrze wystrzeliwuje seria pocisków z ich końców. Z boku obudowy Nordoma otwierają się dwa panele, a pociski, jeden po drugim, spadają do nich z trzaskiem. Potem kusze uspakajają się. Odnosisz dziwne wrażenie, że są wyczerpane.~ */
  IF ~~ THEN REPLY #55476 /* ~"Może należy im się trochę odpoczynku... Możesz powtórzyć, jakie inne zadania zostały ci przydzielone?"~ */ GOTO 93
  IF ~~ THEN REPLY #55477 /* ~"Na razie powinno wystarczyć. Mam do ciebie parę innych pytań..."~ */ GOTO 74
  IF ~~ THEN REPLY #55478 /* ~"Spakujmy te pociski i ruszajmy."~ */ EXIT
END

IF ~~ THEN BEGIN 101 // from: 93.2
  SAY #55479 /* ~"Potwierdzam. W labiryncie ukazały się przedmioty, których nie było w oryginalnym projekcie Rubikon. Trzeba je zebrać, skatalogować, ocenić i zmagazynować, aby zapobiec zaburzeniom. Modrony zostają wysłane, aby zebrać i zabezpieczyć wymienione przedmioty."~ */
  IF ~~ THEN REPLY #55480 /* ~"Hmm. Czy udało ci się coś znaleźć podczas swojej ostatniej wyprawy?"~ */ GOTO 102
  IF ~~ THEN REPLY #55481 /* ~"Rozumiem. Jakie inne zadania zostały ci przydzielone?"~ */ GOTO 93
  IF ~~ THEN REPLY #55482 /* ~"Wiesz co, zapomnij o tym. Mam do ciebie jeszcze parę innych pytań..."~ */ GOTO 74
  IF ~~ THEN REPLY #55483 /* ~"Daj sobie z tym spokój. Ruszajmy."~ */ EXIT
END

IF ~~ THEN BEGIN 102 // from: 101.0
  SAY #55484 /* ~"Potwierdzam."~ */
  IF ~  Global("Nordom_Item_Bank","GLOBAL",0)
~ THEN REPLY #55486 /* ~"Możesz mi dać to co znalazłeś?"~ */ DO ~SetGlobal("Nordom_Item_Bank","GLOBAL",1)
GiveItemCreate("Junk",Protagonist,1,0,0)
GiveItemCreate("Junk",Protagonist,1,0,0)
GiveItemCreate("Junk",Protagonist,1,0,0)
GiveItemCreate("StingEar",Protagonist,1,0,0)
GiveItemCreate("GolBra",Protagonist,1,0,0)
GiveItemCreate("EyeGlas1",Protagonist,1,0,0)
GiveItemCreate("FangMirr",Protagonist,3,0,0)
GiveGoldForce(333)
~ GOTO 103
  IF ~  Global("Nordom_Item_Bank","GLOBAL",1)
CheckStatGT(Protagonist,16,INT)
~ THEN REPLY #55487 /* ~"Powiedziałeś, że oceniłeś przedmioty, kiedy je znalazłeś - w jaki sposób?"~ */ DO ~SetGlobal("Nordom_Item_Bank","GLOBAL",2)
GiveItemCreate("Lens03","Nordom",1,0,0)
~ GOTO 104
  IF ~~ THEN REPLY #55488 /* ~"Możesz powtórzyć jakie inne zadania zostały ci przydzielone?"~ */ GOTO 93
  IF ~~ THEN REPLY #55489 /* ~"Wiesz co, zapomnij o tym. Mam do ciebie jeszcze parę innych pytań..."~ */ GOTO 74
  IF ~~ THEN REPLY #55490 /* ~"Daj sobie z tym spokój. Ruszajmy."~ */ EXIT
END

IF ~~ THEN BEGIN 103 // from: 102.0
  SAY #55491 /* ~"Potwierdzam." Następuje chwila ciszy, potem zasłony wolno zsuwają się na oczy Nordoma. Z jego wnętrza słychać *tkk-tkk-tkk*, a potem *wrr-szczęk*. W lewym boku otwiera się klapa. Nordom sięga do niej wolną ręką i przekazuje ci kilka przedmiotów, włączając w to strumień miedziaków.~ */
  IF ~  CheckStatGT(Protagonist,16,INT)
~ THEN REPLY #55492 /* ~"Hmmm. Powiedziałeś, że oceniłeś przedmioty, kiedy je znalazłeś - w jaki sposób?"~ */ DO ~SetGlobal("Nordom_Item_Bank","GLOBAL",2)
GiveItemCreate("Lens03","Nordom",1,0,0)
~ GOTO 104
  IF ~  CheckStatLT(Protagonist,17,INT)
~ THEN REPLY #55493 /* ~"Dziękuję. Dobrze się im przyjrzę. Możesz powtórzyć jakie inne zadania zostały ci przydzielone?"~ */ GOTO 93
  IF ~  CheckStatLT(Protagonist,17,INT)
~ THEN REPLY #55494 /* ~"Później się im przyjrzę. Teraz mam do ciebie parę innych pytań..."~ */ GOTO 74
  IF ~  CheckStatLT(Protagonist,17,INT)
~ THEN REPLY #55495 /* ~"Dobrze je schowam, dzięki. Ruszajmy."~ */ EXIT
END

IF ~~ THEN BEGIN 104 // from: 102.1 103.0
  SAY #55496 /* ~Gdy oprawy soczewek Nordoma zaczynają się obracać, z jego wnętrza dochodzi nagle lekkie *ping*, potem *klak-klak* - z boku jego obudowy otwiera się mały panel i wyskakuje z niego nowa soczewka. Nordom spogląda na nią. "Odpowiedź: Inna soczewka, powiększająca, zabezpieczona w oprawie."~ */
  IF ~~ THEN REPLY #55497 /* ~"Możesz powtórzyć jakie inne zadania zostały ci przydzielone?"~ */ GOTO 93
  IF ~~ THEN REPLY #55498 /* ~"Rozumiem. Mam do ciebie parę innych pytań..."~ */ GOTO 74
  IF ~~ THEN REPLY #55499 /* ~"Wiem już wystarczająco dużo. Ruszajmy."~ */ EXIT
END

IF ~~ THEN BEGIN 105 // from: 9.7 9.8 74.6 74.7
  SAY #55500 /* ~"Rozpoczynam cykl introspektywny." Nordom ze *szczękiem* zamyka oczy i zaczyna *buczeć*.~ */
  IF ~  Global("Nordom_Self_Truth","GLOBAL",0)
!Global("Know_Director_Truth","GLOBAL",3)
~ THEN REPLY #55501 /* ~Poczekaj aż Nordom zakończy analizę.~ */ GOTO 106
  IF ~  Global("Nordom_Self_Truth","GLOBAL",0)
GlobalGT("Know_Director_Truth","GLOBAL",2)
~ THEN REPLY #55502 /* ~Poczekaj aż Nordom zakończy analizę.~ */ GOTO 107
  IF ~  GlobalGT("Nordom_Self_Truth","GLOBAL",0)
!Global("Know_Director_Truth","GLOBAL",3)
~ THEN REPLY #55503 /* ~Poczekaj aż Nordom zakończy analizę.~ */ GOTO 108
  IF ~  GlobalGT("Nordom_Self_Truth","GLOBAL",0)
GlobalGT("Know_Director_Truth","GLOBAL",2)
~ THEN REPLY #55504 /* ~Poczekaj aż Nordom zakończy analizę.~ */ GOTO 109
  IF ~~ THEN REPLY #55505 /* ~"Wiesz co, zapomnij o tym. Mam do ciebie jeszcze parę innych pytań..."~ */ GOTO 74
  IF ~~ THEN REPLY #55506 /* ~"Daj sobie z tym spokój. Ruszajmy."~ */ EXIT
END

IF ~~ THEN BEGIN 106 // from: 105.0
  SAY #55507 /* ~Klika chwil później, Nordom otwiera oczy ze *szczękiem*. "Ewaluacja Introspektywna: Percepcja stała się (1) mniejsza i (B) głośniejsza. Skrzydła zostały zastąpione ramionami: powód nieznany. Podejrzenie/hipoteza: skrzydła nie lubiane? Spekulacja. Nordom był kiedyś -JEDEN- ale teraz jest jeden mniejsze, głośniejsze! Zmiana nastąpiła w wyniku problemów w przetwarzaniu informacji."~ */
  IF ~  CheckStatGT(Protagonist,15,INT)
Global("Nordom_Self_Truth","GLOBAL",0)
Global("Know_Source","GLOBAL",1)
~ THEN REPLY #55508 /* ~"Myślisz, że to oddzielenie cię od Źródła spowodowało twoją zmianę, z 'jeden' spokojniejszego i większego w 'jeden' mniejsze i głośniejsze?"~ */ DO ~SetGlobal("Nordom_Self_Truth","GLOBAL",1)
SetAnimState("Nordom",ANIM_MIMESTAND)
~ GOTO 62
  IF ~~ THEN REPLY #55509 /* ~"Rozumiem. Mam do ciebie kilka innych pytań..."~ */ GOTO 74
  IF ~~ THEN REPLY #55510 /* ~"Wiem już wystarczająco dużo. Ruszajmy."~ */ EXIT
END

IF ~~ THEN BEGIN 107 // from: 105.1
  SAY #55511 /* ~Klika chwil później, Nordom otwiera oczy ze *szczękiem*. "Ewaluacja Introspektywna: Percepcja stała się (1) mniejsza i (B) głośniejsza. Skrzydła zostały zastąpione ramionami: powód nieznany. Podejrzenie/hipoteza: skrzydła nie lubiane? Spekulacja. Nordom był kiedyś -JEDEN- ale teraz jest jeden mniejsze, głośniejsze! Zmiana nastąpiła w wyniku problemów w przetwarzaniu informacji. Dodanie hierarchii DYREKTORA pomogła w +5% w przetwarzaniu informacji"~ */
  IF ~  CheckStatGT(Protagonist,15,INT)
Global("Nordom_Self_Truth","GLOBAL",0)
Global("Know_Source","GLOBAL",1)
~ THEN REPLY #55512 /* ~"Myślisz, że to oddzielenie cię od Źródła spowodowało twoją zmianę, z 'jeden' spokojniejszego i większego w 'jeden' mniejsze i głośniejsze?"~ */ DO ~SetGlobal("Nordom_Self_Truth","GLOBAL",1)
SetAnimState("Nordom",ANIM_MIMESTAND)
~ GOTO 62
  IF ~~ THEN REPLY #55513 /* ~"Rozumiem. Mam do ciebie kilka innych pytań..."~ */ GOTO 74
  IF ~~ THEN REPLY #55514 /* ~"Wiem już wystarczająco dużo. Ruszajmy."~ */ EXIT
END

IF ~~ THEN BEGIN 108 // from: 105.2
  SAY #55515 /* ~Klika chwil później, Nordom otwiera oczy ze *szczękiem*. "Ewaluacja Introspektywna: Percepcja stała się (1) mniejsza i (B) głośniejsza. Skrzydła zostały zastąpione ramionami: powód nieznany. Podejrzenie/hipoteza: skrzydła nie lubiane? Spekulacja. Nordom był kiedyś -JEDEN- ale teraz jest jeden mniejsze, głośniejsze! Dodanie !ŹRÓDŁA! POWÓD: ZMIANA POSTRZEGANIA pomogła w +5% w przetwarzaniu informacji"~ */
  IF ~~ THEN REPLY #55516 /* ~"Rozumiem. Mam do ciebie kilka innych pytań..."~ */ GOTO 74
  IF ~~ THEN REPLY #55517 /* ~"Wiem już wystarczająco dużo. Ruszajmy."~ */ EXIT
END

IF ~~ THEN BEGIN 109 // from: 105.3
  SAY #55518 /* ~Klika chwil później, Nordom otwiera oczy ze *szczękiem*. "Ewaluacja Introspektywna: Percepcja stała się (1) mniejsza i (B) głośniejsza. Skrzydła zostały zastąpione ramionami: powód nieznany. Podejrzenie/hipoteza: skrzydła nie lubiane? Spekulacja. Nordom był kiedyś -JEDEN- ale teraz jest jeden mniejsze, głośniejsze! Osiągnięto stabilizację: DYREKTOR i !ŹRÓDŁO! POWÓD: ZMIANA POSTRZEGANIA pomogła w +10% w przetwarzaniu informacji."~ */
  IF ~~ THEN REPLY #55519 /* ~"Rozumiem. Mam do ciebie kilka innych pytań..."~ */ GOTO 110
  IF ~~ THEN REPLY #55520 /* ~"Wiem już wystarczająco dużo. Ruszajmy."~ */ GOTO 110
END

IF ~~ THEN BEGIN 110 // from: 109.0 109.1
  SAY #55521 /* ~Zanim wypowiadasz te słowa, coś w oczach Nordoma *klik-klik-klika* i *chrrrrrobocze*. Obiekt pomógł Nordomowi. Hipoteza: Nordom pomoże adresatowi. Pytanie: Nordom pyta o status adresata?"~ */
  IF ~  Global("Nordom_Solution","GLOBAL",0)
~ THEN REPLY #55522 /* ~"Jak *ja* się mam?"~ */ DO ~SetGlobal("Nordom_Solution","GLOBAL",1)
~ GOTO 111
  IF ~  GlobalGT("Nordom_Solution","GLOBAL",0)
~ THEN REPLY #55523 /* ~"Jak *ja* się mam?"~ */ GOTO 111
  IF ~  Global("Nordom_Solution","GLOBAL",0)
~ THEN REPLY #55524 /* ~"Nie teraz. Mam do ciebie kilka innych pytań..."~ */ DO ~SetGlobal("Nordom_Solution","GLOBAL",1)
~ GOTO 74
  IF ~  GlobalGT("Nordom_Solution","GLOBAL",0)
~ THEN REPLY #55525 /* ~"Nie teraz. Mam do ciebie kilka innych pytań..."~ */ GOTO 74
  IF ~  Global("Nordom_Solution","GLOBAL",0)
~ THEN REPLY #55526 /* ~"Nie martw się tym, Nordomie. Ruszajmy."~ */ DO ~SetGlobal("Nordom_Solution","GLOBAL",1)
~ EXIT
  IF ~  GlobalGT("Nordom_Solution","GLOBAL",0)
~ THEN REPLY #55527 /* ~"Nie martw się tym, Nordomie. Ruszajmy."~ */ EXIT
END

IF ~~ THEN BEGIN 111 // from: 9.9 74.8 110.0 110.1
  SAY #55528 /* ~"Potwierdzam. Postawiono pytanie o /Status/ adresata. Odpowiedź?"~ */
  IF ~  Global("Ravel","GLOBAL",0)
Global("Know_Shadow_Player_Connection","GLOBAL",0)
~ THEN REPLY #55529 /* ~"No cóż, oprócz tego, że cierpię na amnezję i wygląda na to, że nie mogę umrzeć jak zwykły człowiek, mam się całkiem nieźle."~ */ GOTO 112
  IF ~  GlobalGT("Ravel","GLOBAL",0)
Global("Know_Shadow_Player_Connection","GLOBAL",0)
~ THEN REPLY #55530 /* ~"No cóż, oprócz tego, że cierpię na amnezję, nie mogę umrzeć jak zwykły człowiek i odarto mnie ze śmiertelności, którą ktoś gdzieś zabrał, mam się całkiem nieźle."~ */ GOTO 112
  IF ~  Global("Know_Shadow_Player_Connection","GLOBAL",1)
~ THEN REPLY #55531 /* ~"No cóż, oprócz tego, że cierpię na amnezję, odarto mnie ze śmiertelności, którą ktoś ukrył w Fortecy Żalu, i że za każdym razem, kiedy umieram, ktoś umiera za mnie, mam się całkiem nieźle."~ */ GOTO 112
  IF ~~ THEN REPLY #55532 /* ~"Nie teraz. Mam do ciebie kilka innych pytań..."~ */ GOTO 74
  IF ~~ THEN REPLY #55533 /* ~"Nie martw się tym, Nordomie. Ruszajmy."~ */ EXIT
END

IF ~~ THEN BEGIN 112 // from: 111.0 111.1 111.2
  SAY #55534 /* ~"Przetwarzanie: Amnezja. Przetwarzanie: Brak Śmierci/Pomimo Prób." Nordom *warrrrczy* przez chwilę, potem jego szerokie oczy spoczywają na tobie. "Wniosek: Status: Nieśmiertelny. Powód/Efekt Pytania: Amnezja powoduje nieśmiertelność czy nieśmiertelność powoduje amnezję?"~ */
  IF ~~ THEN REPLY #55535 /* ~"Nie wiem... Wiem tylko, że kiedy obudziłem się ze 'śmierci', straciłem swoje wspomnienia. Więc przypuszczam, że nieśmiertelność spowodowała amnezję."~ */ GOTO 113
  IF ~~ THEN REPLY #55536 /* ~"Zapomnij o tym. Mam do ciebie jeszcze parę innych pytań..."~ */ GOTO 74
  IF ~~ THEN REPLY #55537 /* ~"Nie martw się tym, Nordomie. Ruszajmy."~ */ EXIT
END

IF ~~ THEN BEGIN 113 // from: 112.0
  SAY #55557 /* ~"Przetwarzanie..." Nordom przez chwilę warczy jak koło młynarskie. "Sformułowano Nowe Pytanie: Tracisz pamięć za każdym razem gdy umierasz?"~ */
  IF ~~ THEN REPLY #55559 /* ~"Zgadza się."~ */ GOTO 114
  IF ~  GlobalGT("Ravel","GLOBAL",0)
~ THEN REPLY #55561 /* ~"Przynajmniej tak powiedziała Ravela."~ */ GOTO 114
  IF ~  Global("Death","GLOBAL",1)
~ THEN REPLY #55564 /* ~"Tak... Nie, czekaj. To nieprawda. Ostatnim razem nie straciłem swoich wspomnień."~ */ GOTO 115
  IF ~  GlobalGT("Death","GLOBAL",1)
~ THEN REPLY #55566 /* ~"Tak... Nie, czekaj. To nieprawda. Ostatnim razem nie straciłem swoich wspomnień. Prawdę mówiąc, nie straciłem wspomnień od momentu, kiedy obudziłem się w Kostnicy."~ */ GOTO 115
  IF ~~ THEN REPLY #55570 /* ~"Zapomnij o tym. Mam do ciebie jeszcze parę innych pytań..."~ */ GOTO 74
  IF ~~ THEN REPLY #55572 /* ~"Nie martw się tym, Nordomie. Ruszajmy."~ */ EXIT
END

IF ~~ THEN BEGIN 114 // from: 113.0 113.1
  SAY #55576 /* ~"Opowiedź: Skatalogowana." Nordom wydaje *szczęk*, a potem stoi w milczeniu wpatrując się w ciebie.~ */
  IF ~  Global("Death","GLOBAL",1)
~ THEN REPLY #55577 /* ~"...oprócz tego, że ostatnim razem, kiedy umarłem, nie straciłem wspomnień."~ */ GOTO 115
  IF ~  GlobalGT("Death","GLOBAL",1)
~ THEN REPLY #55578 /* ~"...oprócz tego, że ostatnim razem, kiedy umarłem, nie straciłem wspomnień. Tak było także i we wcześniejszych przypadkach."~ */ GOTO 115
  IF ~~ THEN REPLY #55579 /* ~"Mam do ciebie kilka innych pytań..."~ */ GOTO 74
  IF ~~ THEN REPLY #55580 /* ~"W porządku. Ruszajmy."~ */ EXIT
END

IF ~~ THEN BEGIN 115 // from: 113.2 113.3 114.0 114.1
  SAY #55581 /* ~"Odpowiedź. Przeliczanie: Nieśmiertelność nie jest powodem amnezji."~ */
  IF ~~ THEN REPLY #55582 /* ~"No cóż, nie wiem. Może ostatnim razem to był tylko przypadek."~ */ GOTO 116
  IF ~~ THEN REPLY #55583 /* ~"Zapomnij o tym. Mam do ciebie jeszcze parę innych pytań..."~ */ GOTO 74
  IF ~~ THEN REPLY #55584 /* ~"Nie martw się tym, Nordomie. Ruszajmy."~ */ EXIT
END

IF ~~ THEN BEGIN 116 // from: 115.0
  SAY #55585 /* ~"Element prawdopodobieństwa pominięty. Sugestia: Zacznij szukać nowego wzoru. Amnezja/Nieśmiertelność - Pytanie: Czy Obecne Są Dodatkowe Czynniki? Interwencja/Obecność Nowych Czynników czy Brak Innych Czynników?"~ */
  IF ~  GlobalGT("Nordom_Solution","GLOBAL",1)
~ THEN REPLY #55586 /* ~"Jakie inne czynniki mogły wchodzić w grę?"~ */ GOTO 117
  IF ~  Global("Nordom_Solution","GLOBAL",1)
~ THEN REPLY #55586 /* ~"Jakie inne czynniki mogły wchodzić w grę?"~ */ DO ~SetGlobal("Nordom_Solution","GLOBAL",2)
~ GOTO 117
  IF ~~ THEN REPLY #55588 /* ~"Zapomnij o tym. Mam do ciebie jeszcze parę innych pytań..."~ */ GOTO 74
  IF ~~ THEN REPLY #55589 /* ~"Nie martw się tym, Nordomie. Ruszajmy."~ */ EXIT
END

IF ~~ THEN BEGIN 117 // from: 116.0 116.1 120.0 121.0 124.0 129.0
  SAY #55597 /* ~"Nieznany. Pytanie: Informacje Dodatkowe?"~ */
  IF ~  Global("Know_Player_Killer","GLOBAL",1)
Global("Nordom_Solution","GLOBAL",2)
~ THEN REPLY #55599 /* ~"Myślę, że ktoś chce mnie zamordować... więc zbudowałem pułapkę w grobowcu, żeby go zabić. Według napisu na grobowcu, ten ktoś wciąż nastaje na moje życie... przynajmniej z tego, co pamiętam z moich wcieleń."~ */ GOTO 118
  IF ~  GlobalGT("Ravel","GLOBAL",0)
Global("Nordom_Solution","GLOBAL",3)
~ THEN REPLY #55602 /* ~"Ale jest jeszcze coś: Nie zawsze byłem nieśmiertelny... To wszystko sprawka Ravel."~ */ GOTO 121
  IF ~  Global("Know_Fortress_Location_Forgot","GLOBAL",1)
Global("Nordom_Solution","GLOBAL",4)
~ THEN REPLY #55604 /* ~"Coraz mniej jest ludzi, którzy mogą mi pomóc w odnalezieniu śmiertelności. Jak tak dalej pójdzie, wkrótce nikt nie będzie wiedział, gdzie mam szukać nieśmiertelności. Słup Czaszek powiedział, że było tylko trzech ludzi... a jeden z nich to ja, ale to uszło mej pamięci."~ */ GOTO 122
  IF ~  Global("Know_Keeper_Mortality","GLOBAL",1)
Global("Nordom_Solution","GLOBAL",5)
~ THEN REPLY #55605 /* ~"Trias powiedział, że w Fortecy Żalu jest 'strażnik', kto więzi moją śmiertelność."~ */ GOTO 125
  IF ~~ THEN REPLY #55608 /* ~"Jeszcze nie mam dla ciebie żadnych informacji dodatkowych. Ale mam do ciebie parę innych pytań..."~ */ GOTO 74
  IF ~~ THEN REPLY #55610 /* ~"Daj sobie z tym spokój. Ruszajmy."~ */ EXIT
END

IF ~~ THEN BEGIN 118 // from: 117.0 130.0
  SAY #55612 /* ~"Informacje Dodatkowe: Morderca. Nieśmiertelność = Nie może być zamordowany." Nordom przez chwilę *tkkk-tkkk-tkkka*, a potem coś w nim *chrrzęści*. "Pytanie: Nie morderca?"~ */
  IF ~~ THEN REPLY #55613 /* ~"Co masz na myśli?"~ */ GOTO 119
  IF ~~ THEN REPLY #55616 /* ~"Zapomnij o tym. Mam do ciebie jeszcze parę innych pytań..."~ */ GOTO 74
  IF ~~ THEN REPLY #55618 /* ~"Nie martw się tym, Nordomie. Ruszajmy."~ */ EXIT
END

IF ~~ THEN BEGIN 119 // from: 118.0
  SAY #55619 /* ~"Odpowiedź: Nieśmiertelność przeszkadza w osiągnięciu celu morderstwa. Pytanie: Nie morderca?"~ */
  IF ~~ THEN REPLY #55621 /* ~"W takim razie co jeszcze można uzyskać zabijając... próbując mnie zabić?"~ */ DO ~SetGlobal("Nordom_Solution","GLOBAL",3)
~ JOURNAL #55631 /* ~Nordom uczynił osobliwe spostrzeżenie na temat mojego 'zabójcy'. Powiedział mianowicie, że zabójca może w ogóle nie być zabójcą, że może tylko chce, abym wciąż zapominał. Ale co mam zapomnieć?~ */ GOTO 120
  IF ~  CheckStatGT(Protagonist,15,INT)
~ THEN REPLY #55625 /* ~"Chcesz powiedzieć, że morderca *nie* chce mnie zabić? W takim razie o co mu chodzi?"~ */ DO ~SetGlobal("Nordom_Solution","GLOBAL",3)
~ JOURNAL #55631 /* ~Nordom uczynił osobliwe spostrzeżenie na temat mojego 'zabójcy'. Powiedział mianowicie, że zabójca może w ogóle nie być zabójcą, że może tylko chce, abym wciąż zapominał. Ale co mam zapomnieć?~ */ GOTO 120
  IF ~~ THEN REPLY #55628 /* ~"Zapomnij o tym. Mam do ciebie jeszcze parę innych pytań..."~ */ GOTO 74
  IF ~~ THEN REPLY #55629 /* ~"Nie martw się tym, Nordomie. Ruszajmy."~ */ EXIT
END

IF ~~ THEN BEGIN 120 // from: 119.0 119.1
  SAY #55637 /* ~"Odpowiedź: Nieśmiertelność = Amnezja."~ */
  IF ~~ THEN REPLY #55638 /* ~"Więc kimkolwiek jest morderca, nie próbuje mnie zabić, ale chce zmusić mnie do *zapomnienia*? Hmm. To niewykluczone. Przecież istnieją *inne* sposoby, żeby mnie unieszkodliwić, gdyby zabójca chciał się mnie pozbyć... hmm. Ale jeśli morderca chce, żebym zapomniał, to o *czym* mam zapomnieć?"~ */ GOTO 117
END

IF ~~ THEN BEGIN 121 // from: 117.1 130.1
  SAY #55639 /* ~"Pytanie: Formułowanie dodatkowego pytanie... Brak nieśmiertelności w przeszłości, prośba o nieśmiertelność od Obiektu: Ravela. Pytanie: Dlaczego?"~ */
  IF ~~ THEN REPLY #55642 /* ~"Nie wiem dokładnie... ale przecież kto *nie* chce żyć wiecznie?"~ */ DO ~SetGlobal("Nordom_Solution","GLOBAL",4)
~ GOTO 117
END

IF ~~ THEN BEGIN 122 // from: 117.2 130.2
  SAY #55644 /* ~"Uwaga: Cytat: 'Jeden z nich to ja, ale to uszło mojej pamięci' (położenie śmiertelności). Uwaga: Poprzednie Pytanie: 'Więc kimkolwiek jest morderca, nie próbuje mnie zabić, ale chce zmusić mnie do *zapomnienia*?' Pytanie: Cel Mordercy = Brak Morderstwa, Cel Mordercy = Zapomnienie = Położenie Śmiertelności?"~ */
  IF ~~ THEN REPLY #55645 /* ~"Więc twierdzisz, że 'morderca' chciał wymazać z mojej pamięci miejsce, gdzie ukryta jest moja śmiertelność? Dlaczego?"~ */ DO ~SetGlobal("Nordom_Solution","GLOBAL",5)
~ GOTO 123
END

IF ~~ THEN BEGIN 123 // from: 122.0
  SAY #55647 /* ~"Uwaga/Hipoteza: Zapomnienie Położenia Śmiertelności = Cenne dla 'Mordercy'."~ */
  IF ~~ THEN REPLY #55648 /* ~"Hmmm. Możliwe... Ale dlaczego znajomość tego *miejsca* miałaby mieć takie znaczenie?"~ */ JOURNAL #55650 /* ~Nordom uczynił kolejne spostrzeżenie na temat mojego "zabójcy". Nie tylko powiedział, że zabójca może w ogóle nie być zabójcą, ale, że może po prostu chce, abym nie przestał zapominać. Z tego, co powiedział mi Słup Czaszek, wciąż coraz mniej ludzi wie, gdzie jest moja śmiertelność, a i ja sam też należę do tej grupy, ale też ciągle to zapominam. Czyżby mordercy chodziło właśnie o to, abym nie zapamiętał miejsca pobytu mojej śmiertelności?~ */ GOTO 124
END

IF ~~ THEN BEGIN 124 // from: 123.0
  SAY #55653 /* ~"Poporawka: BRAK Położenia Śmiertelności = Cenne dla 'Mordercy'."~ */
  IF ~~ THEN REPLY #55655 /* ~"Hmmm. Możliwe... Więc ktoś nie chce, żeby ktokolwiek się dowiedział, gdzie ona jest? A może ten morderca nie chce, żeby wiedział o tym ktoś oprócz niego?"~ */ GOTO 117
END

IF ~~ THEN BEGIN 125 // from: 117.3 130.3
  SAY #55657 /* ~"Uwaga: Trias - Zdrajca - skłonności: kłamstwo/Tarcza Złotych Kłamstw. Źródło/Informacja: Trias, Dokładność Informacji: Niepewna."~ */
  IF ~  GlobalGT("Ravel_Nordom","GLOBAL",0)
~ THEN REPLY #55660 /* ~"Wątpię, żeby kłamał. Co mógłby z tego mieć?... Szkoda, że nie widziałeś jego oczu. Mówił prawdę... tym razem. Dlaczego ten ktoś trzyma moją śmiertelność?"~ */ GOTO 127
  IF ~  Global("Ravel_Nordom","GLOBAL",0)
~ THEN REPLY #55662 /* ~"Wątpię, żeby kłamał. Co mógłby z tego mieć?... Szkoda, że nie widziałeś jego oczu. Mówił prawdę... tym razem. Dlaczego ten ktoś trzyma moją śmiertelność?"~ */ GOTO 126
END

IF ~~ THEN BEGIN 126 // from: 125.1
  SAY #55664 /* ~"Założenie: Położenie Śmiertelności jest czymś cennym. Pytanie: Śmiertelność jest czymś cennym?"~ */
  IF ~~ THEN REPLY #55666 /* ~"Ravel powiedziała, że moja śmiertelność jest cenna... Że można byłoby ją porwać dla *okupu*. Że ktoś, kto ją uwięzi, mógłby mnie użyć jako marionetki."~ */ GOTO 128
END

IF ~~ THEN BEGIN 127 // from: 125.0
  SAY #55668 /* ~"Pytanie: Dlaczego? Formułowanie... Motywacje..." Nordom *warrrczy*, potem coś w nim *chrrrupie*. "Nordom przypomina sobie Opowiedź Reveli: "-Nie mówiąc już o tym, jakie straszne rzeczy ktoś mógł ci zrobić, gdyby porwał twoją śmiertelność dla OKUPU. To tak, jakby porwać czyjąś słodką, soczystą duszę... byłbyś tylko marionetką tańczącą na sznurkach, za które pociągałby ktoś inny." Coś w Nordomie *chrrrzęści*. "Zakończenie przypominania."~ */
  IF ~~ THEN REPLY #55669 /* ~"Masz rację - Ravela powiedziała, że moja śmiertelność jest cenna... Że można byłoby ją porwać dla okupu, albo użyć do przejęcia nade mną kontroli. Jeśli ktoś chce okupu, to wysuwa ŻĄDANIA... nikt nie używał mnie jako marionetki... Nie wydaje mi się. Więc..."~ */ DO ~SetGlobal("Nordom_Solution","GLOBAL",6)
SetAnimState("Nordom",ANIM_MIMESTAND)
~ JOURNAL #55681 /* ~Próbuję zastanowić się nad tym, czego mógł chcieć ode mnie ten mój 'morderca', ale ciągle natrafiam na jedną i tę samą przeszkodę - wydaje mi się, że jedyną rzeczą, której pamięci chciał mnie pozbawić, było miejsce pobytu mojej śmiertelności. Morderca nie stawiał przecież żadnych żądań 'okupu' i nie próbował użyć mojej śmiertelności, aby pokierować moimi krokami. A przynajmniej takie odniosłem wrażenie. Może on po prostu nie posiadał mojej śmiertelności, albo też nie zamierzał z niej skorzystać? Wciąż jest zbyt wiele pytań, a zbyt mało odpowiedzi.~ */ GOTO 129
END

IF ~~ THEN BEGIN 128 // from: 126.0
  SAY #55673 /* ~"Hipoteza: Okup - Pytanie: Otrzymane żądanie okupu?"~ */
  IF ~~ THEN REPLY #55675 /* ~"Masz rację, niczego takiego nie było. A ktokolwiek więzi moją śmiertelność - nie wydaje mi się, żeby pociągał za sznureczki, by zmusić mnie do zrobienia czegokolwiek... przynajmniej tak mi się wydaje. Więc...?"~ */ DO ~SetGlobal("Nordom_Solution","GLOBAL",6)
SetAnimState("Nordom",ANIM_MIMESTAND)
~ JOURNAL #55681 /* ~Próbuję zastanowić się nad tym, czego mógł chcieć ode mnie ten mój 'morderca', ale ciągle natrafiam na jedną i tę samą przeszkodę - wydaje mi się, że jedyną rzeczą, której pamięci chciał mnie pozbawić, było miejsce pobytu mojej śmiertelności. Morderca nie stawiał przecież żadnych żądań 'okupu' i nie próbował użyć mojej śmiertelności, aby pokierować moimi krokami. A przynajmniej takie odniosłem wrażenie. Może on po prostu nie posiadał mojej śmiertelności, albo też nie zamierzał z niej skorzystać? Wciąż jest zbyt wiele pytań, a zbyt mało odpowiedzi.~ */ GOTO 129
END

IF ~~ THEN BEGIN 129 // from: 127.0 128.0
  SAY #55683 /* ~Nordom zapada w milczenie. Nie mruga nawet oczyma.~ */
  IF ~~ THEN REPLY #55685 /* ~"Więc... moja śmiertelność jest zamknięta w tej przeklętej Fortecy, a im więcej ludzi zapomina o jej położeniu, tym mniejsze są szanse, że ją kiedyś odnajdę. Więc ktokolwiek uwięził moją śmiertelność - nawet jeśli to ta *sama* osoba co zabójca - nie pozwoli mi jej odzyskać... albo przynajmniej nie chce, żeby ktokolwiek dowiedział się o jej położeniu. Ale... ten, kto trzyma moją nieśmiertelność, albo nie może, albo nie chce użyć jej, żeby mnie kontrolować. Dlaczego?"~ */ GOTO 117
END

IF ~~ THEN BEGIN 130 // from: 9.10 74.9
  SAY #55687 /* ~"Potwierdzam. Pytanie: Informacje dodatkowe?"~ */
  IF ~  Global("Know_Player_Killer","GLOBAL",1)
Global("Nordom_Solution","GLOBAL",2)
~ THEN REPLY #55689 /* ~"Myślę, że ktoś chce mnie zamordować... więc zbudowałem pułapkę w grobowcu, żeby go zabić. Według napisu na grobowcu, ten ktoś wciąż nastaje na moje życie... przynajmniej z tego, co pamiętam z moich wcieleń."~ */ GOTO 118
  IF ~  GlobalGT("Ravel","GLOBAL",0)
Global("Nordom_Solution","GLOBAL",3)
~ THEN REPLY #55691 /* ~"Ale jest jeszcze coś: Nie zawsze byłem nieśmiertelny... To wszystko sprawka Raveli."~ */ GOTO 121
  IF ~  Global("Know_Fortress_Location_Forgot","GLOBAL",1)
Global("Nordom_Solution","GLOBAL",4)
~ THEN REPLY #55692 /* ~"Coraz mniej jest ludzi, którzy mogą mi pomóc w odnalezieniu śmiertelności. Jak tak dalej pójdzie, wkrótce nikt nie będzie wiedział, gdzie mam szukać nieśmiertelności. Słup Czaszek powiedział, że było tylko trzech ludzi... a jeden z nich to ja, ale to uszło mej pamięci."~ */ GOTO 122
  IF ~  Global("Know_Keeper_Mortality","GLOBAL",1)
Global("Nordom_Solution","GLOBAL",5)
~ THEN REPLY #55694 /* ~"Trias powiedział, że w Fortecy Żalu jest 'strażnik', kto więzi moją śmiertelność."~ */ GOTO 125
  IF ~~ THEN REPLY #55697 /* ~"Jeszcze nie mam dla ciebie żadnych informacji dodatkowych. Ale mam do ciebie parę innych pytań..."~ */ GOTO 74
  IF ~~ THEN REPLY #55699 /* ~"Daj sobie z tym spokój. Ruszajmy."~ */ EXIT
END

IF ~~ THEN BEGIN 131 // from:
  SAY #61281 /* ~"Słup Czaszek: składa się z żyjących głów śmiertelników, którzy kłamali, a których kłamstwa spowodowały śmierć innych śmiertelników. Słup służy jako skład wiedzy. W dziewięćdziesięciu siedmiu procentach przypadków, za podzielenie się swoją wiedzą żąda zapłaty. Jego żądania należą do tych, które typowy śmiertelnik nazwałby 'bardzo dużymi'. Według logiki, nikt nie powinien zadawać Słupowi pytań, jeśli potrzeba uzyskania konkretnej jednostki informacji także nie może być uważana za 'bardzo dużą'."~ */
  IF ~~ THEN EXTERN ~DPILLAR~ 14
END

IF ~~ THEN BEGIN 132 // from:
  SAY #61673 /* ~"Kiedyś byłem 'jeden'. Teraz jestem 'jeden', ale mniejsze, głośniejsze 'jeden'."~ [NOR309] */
  IF ~~ THEN EXTERN ~BGRACE~ 17
END

IF ~~ THEN BEGIN 133 // from:
  SAY #61674 /* ~"Zaprzeczam."~ [NOR310A] */
  IF ~~ THEN EXTERN ~BGRACE~ 19
END

IF ~~ THEN BEGIN 134 // from:
  SAY #61675 /* ~"Nie rozmawiam z nimi, wysłuchuję ich. Wysuwają pytania dotyczące terminu w którym będą mogły sobie postrzelać."~ [NOR310B] */
  IF ~~ THEN EXTERN ~BGRACE~ 20
END

IF ~~ THEN BEGIN 135 // from:
  SAY #61676 /* ~"Tam gdzie kiedyś były dwa skrzydła są teraz dwie ręce. Nie wiem czemu straciłem swoje skrzydła."~ [NOR308A] */
  IF ~~ THEN EXTERN ~BGRACE~ 22
END

IF ~~ THEN BEGIN 136 // from:
  SAY #61677 /* ~"Temat 'popadnięcia w niesławę u swojego ludu' połączony z utratą skrzydeł został przeze mnie zauważony i skatalogowany. Widziałem jego odbicie w wielu osobnikach, z którymi współdziałałem."~ [NOR308B] */
  IF ~~ THEN DO ~IncrementGlobal("Grace_Talked_Nordom","GLOBAL",1)
~ EXIT
END

IF ~~ THEN BEGIN 137 // from:
  SAY #61678 /* ~"'Najmilszy' jest subiektywnym określeniem. Wolę być znany jako 'nieustraszony kostkowy wojownik'."~ [NOR296] */
  IF ~~ THEN EXTERN ~BGRACE~ 24
END

IF ~~ THEN BEGIN 138 // from:
  SAY #61785 /* ~"Nie przyjmuję od ciebie rozkazów."~ [NOR284] */
  IF ~~ THEN DO ~SetGlobal("Morte_Talked_Nordom","GLOBAL",1)
~ EXIT
END

IF ~~ THEN BEGIN 139 // from:
  SAY #61786 /* ~"Bez namiastki rąk jest to dla ciebie fizycznie niemożliwe. Nie jestem również ponumerowany tak jak kostka."~ [NOR283] */
  IF ~~ THEN EXTERN ~BMORTE~ 41
END

IF ~~ THEN BEGIN 140 // from:
  SAY #61787 /* ~"Nie wymagają przeładowywania. Zawsze są gotowe do strzału."~ [NOR306] */
  IF ~~ THEN EXTERN ~BMORTE~ 43
END

IF ~~ THEN BEGIN 141 // from:
  SAY #61788 /* ~"One nie szczękają. Są w trakcie dyskusji na temat tej wyprawy."~ [NOR307] */
  IF ~~ THEN EXTERN ~BMORTE~ 45
END

IF ~~ THEN BEGIN 142 // from:
  SAY #61789 /* ~"Dlaczego stale zwracasz się do mnie jak do drzwi?"~ [NOR305A] */
  IF ~~ THEN EXTERN ~BMORTE~ 47
END

IF ~~ THEN BEGIN 143 // from:
  SAY #61790 /* ~"Wiem kto tam. To ty. Czemu mam zadawać pytanie, skoro znam odpowiedź?"~ [NOR305B] */
  IF ~~ THEN EXTERN ~BMORTE~ 48
END

IF ~~ THEN BEGIN 144 // from:
  SAY #61791 /* ~"Anno! Morte chce się 'wtulić w twoje poduszeczki'."~ [NOR285] */
  IF ~~ THEN EXTERN ~BMORTE~ 50
END

IF ~  Global("Fortress_Nordom","GLOBAL",3)
~ THEN BEGIN 145 // from:
  SAY #68234 /* ~Używając swojej mocy, formujesz duszę na kształt Nordoma, powoli, aż w końcu czujesz, jak z powrotem wchodzi w ciało modrona. Ten zaczyna się trząść i w końcu wstaje na nogi.~ */
  IF ~  Global("Absorb","GLOBAL",0)
~ THEN REPLY #68235 /* ~"Nordomie, teraz *naprawdę* potrzebuję twojej pomocy... Znalazłem mojego zabójcę, a jest nim moja śmiertelność."~ */ DO ~SetGlobal("Fortress_Nordom","GLOBAL",4)
JoinPartyEx(TRUE)
~ GOTO 146
  IF ~  GlobalGT("Absorb","GLOBAL",0)
~ THEN REPLY #68372 /* ~"NORDOMIE."~ */ GOTO 147
END

IF ~~ THEN BEGIN 146 // from: 145.0
  SAY #68236 /* ~"Czekam na rozkazy."~ [NOR063] */
  IF ~  Global("Trans_Vanish","GLOBAL",0)
~ THEN REPLY #68237 /* ~"Przygotuj się. Już niedługo znajdziesz cel dla swoich kusz..."~ */ EXTERN ~DTRANS~ 142
  IF ~  Global("Trans_Vanish","GLOBAL",1)
~ THEN REPLY #68238 /* ~"Przygotuj się. Już niedługo znajdziesz cel dla swoich kusz..."~ */ DO ~StartCutSceneMode()
StartCutSceneEx("1204tr",FALSE)
~ EXIT
END

IF ~~ THEN BEGIN 147 // from: 145.1
  SAY #68373 /* ~Nordom zaczyna mrugać, zasłony na jego oczach *szczękają*, a potem zwężają się tak, jakby patrzył na ciebie spod przymrużonych oczu. "Twój głos nie pasuje do standardowych rozpoznawalnych parametrów."~ */
  IF ~~ THEN REPLY #68374 /* ~"ZNOWU STAŁEM SIĘ... CAŁOŚCIĄ. ZMIENIŁEM SIĘ, ALE NIE ZABAWIĘ TU JUŻ DŁUGO. JEŚLI CHCESZ, NORDOMIE, TO PRZENIOSĘ CIĘ DO SIGIL."~ */ GOTO 148
END

IF ~~ THEN BEGIN 148 // from: 147.0
  SAY #68375 /* ~"Pytanie: Jaki jest twój następny cel? Nordom pójdzie za tobą i będzie cię ochraniał."~ */
  IF ~~ THEN REPLY #68376 /* ~"W TRAKCIE MOICH ŻYWOTÓW POPEŁNIŁEM WIELE ZBRODNI. TERAZ UDAJĘ SIĘ DO MIEJSCA, GDZIE ZOSTANĘ ZA NIE UKARANY. NIE MOŻESZ ZE MNĄ IŚĆ."~ */ GOTO 149
END

IF ~~ THEN BEGIN 149 // from: 148.0
  SAY #68377 /* ~"Pytanie z wyborem: Nie (potrzebujesz) czy nie (chcesz) obecności Nordoma?"~ */
  IF ~~ THEN REPLY #68378 /* ~"NIE MOŻESZ ZE MNĄ PÓJŚĆ, NORDOMIE. TO NIE ODE MNIE ZALEŻY. TERAZ INNE MOCE DECYDUJĄ O TYM, CO ROBIĘ. ZAWSZE TO ROBIŁY, ALE TERAZ POZNAŁY, KIM JESTEM NAPRAWDĘ I SĄ CORAZ BLIŻEJ."~ */ GOTO 150
END

IF ~~ THEN BEGIN 150 // from: 149.0
  SAY #68379 /* ~Nordom *powarrrrkuje* przez chwilę, a potem kusze w jego rękach zaczynają *szczękkać*. "Nordom ofiaruje wdzięczności. Pomogłeś Nordomowi odnaleźć swoją tożsamość."~ */
  IF ~~ THEN REPLY #68380 /* ~"TAK JAK I TY POMOGŁEŚ MI ODNALEŹĆ MOJĄ. DAJĘ CI WOLNOŚĆ, NORDOMIE. POZNAWAJ SFERY, UCZ SIĘ, ROŚNIJ. MOŻE KIEDYŚ SIĘ SPOTKAMY, NA INNEJ SFERZE, W ODLEGŁYM CZASIE."~ */ GOTO 151
END

IF ~~ THEN BEGIN 151 // from: 150.0
  SAY #68381 /* ~"Odpowiedź: Usłyszana i przyjęta do wiadomości. Teraz Nordom będzie oczekiwał tego dnia."~ */
  IF ~~ THEN REPLY #68382 /* ~"POLEGAJ NA SWOJEJ LOGICE, NORDOMIE. ZOBACZYSZ, ŻE OCHRONI CIĘ LEPIEJ, NIŻ WIĘKSZOŚĆ ŻĄDZ, KTÓRE WŁADAJĄ SFERAMI."~ */ GOTO 152
END

IF ~~ THEN BEGIN 152 // from: 151.0
  SAY #68383 /* ~"Logika tej kwestii uległa straceniu."~ [NOR149] */
  IF ~  GlobalGT("Fortress_Ignus","GLOBAL",0)
Global("Fortress_Ignus_Battle","GLOBAL",0)
~ THEN REPLY #68384 /* ~"ŻEGNAJ, NORDOMIE."~ */ DO ~StartCutSceneMode()
StartCutSceneEx("1204i0",FALSE)
~ EXIT
  IF ~  GlobalGT("Fortress_Vhailor","GLOBAL",0)
Global("Fortress_Vhailor_Battle","GLOBAL",0)
Global("Fortress_Ignus","GLOBAL",0)
~ THEN REPLY #68385 /* ~"ŻEGNAJ, NORDOMIE."~ */ DO ~StartCutSceneMode()
StartCutSceneEx("1204v0",FALSE)
~ EXIT
  IF ~  GlobalGT("Fortress_Vhailor","GLOBAL",0)
Global("Fortress_Vhailor_Battle","GLOBAL",0)
GlobalGT("Fortress_Ignus","GLOBAL",0)
Global("Fortress_Ignus_Battle","GLOBAL",1)
~ THEN REPLY #68386 /* ~"ŻEGNAJ, NORDOMIE."~ */ DO ~StartCutSceneMode()
StartCutSceneEx("1204v0",FALSE)
~ EXIT
  IF ~  Global("Fortress_Vhailor","GLOBAL",0)
Global("Fortress_Ignus","GLOBAL",0)
~ THEN REPLY #68487 /* ~"ŻEGNAJ, NORDOMIE."~ */ DO ~QuitGame(FINALE,0,0)
~ EXIT
  IF ~  GlobalGT("Fortress_Vhailor","GLOBAL",0)
Global("Fortress_Vhailor_Battle","GLOBAL",1)
Global("Fortress_Ignus","GLOBAL",0)
~ THEN REPLY #68488 /* ~"ŻEGNAJ, NORDOMIE."~ */ DO ~QuitGame(FINALE,0,0)
~ EXIT
  IF ~  GlobalGT("Fortress_Ignus","GLOBAL",0)
Global("Fortress_Ignus_Battle","GLOBAL",1)
Global("Fortress_Vhailor","GLOBAL",0)
~ THEN REPLY #68489 /* ~"ŻEGNAJ, NORDOMIE."~ */ DO ~QuitGame(FINALE,0,0)
~ EXIT
END

IF ~  Global("Fortress_Nordom","GLOBAL",4)
~ THEN BEGIN 153 // from:
  SAY #68414 /* ~"Czekam na rozkazy."~ [NOR063] */
  IF ~~ THEN REPLY #68415 /* ~"Nie przestawaj strzelać z kuszy do tego czegoś. Załatwimy to później..."~ */ EXIT
END
