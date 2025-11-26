// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : D0202P.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\pl_PL\dialog.tlk
// dialogF  : (none)

BEGIN ~D0202P~

IF ~  !PartyHasItem("SkScrap")
!PartyHasItem("SkRegret")
~ THEN BEGIN 0 // from:
  SAY #36382 /* ~W łuku, przed którym stoisz, jest coś... coś bardzo znajomego. Lodowaty powiew spomiędzy kolumn mrozi krew w żyłach, jakby ten łuk graniczył z jakąś inną, zimniejszą przestrzenią. Nie wiadomo dlaczego, ale jednak wiesz, że to właśnie jest portal do Fortecy Żalu... teraz wystarczy go tylko otworzyć.~ */
  IF ~~ THEN REPLY #36383 /* ~Zaciśnij żeby i ściągnij trochę skóry z przedramienia lewej ręki...~ */ DO ~GiveItemCreate("SkScrap",Protagonist,1,0,0)
~ GOTO 1
  IF ~~ THEN REPLY #36384 /* ~Odejdź od portalu... przynajmniej na razie.~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #53637 /* ~Zaciskasz zęby i zagłębiasz paznokcie w przedramieniu swojej lewej ręki; z suchym odgłosem zrywasz z niego pasek skóry. Chłodny powiew pomiędzy kolumnami nasila się, prawie jakby chciał cię pożreć, jak gdyby w portalu coś się otworzyło...~ */
  IF ~  !PartyHasItem("SkScrap")
~ THEN GOTO 14
  IF ~  PartyHasItem("SkScrap")
~ THEN REPLY #66928 /* ~Przyjrzyj się skórze dokładnie...~ */ GOTO 3
  IF ~  PartyHasItem("SkScrap")
~ THEN REPLY #66929 /* ~Zostaw portal w spokoju... na razie.~ */ EXIT
END

IF ~  PartyHasItem("SkScrap")
!PartyHasItem("SkRegret")
~ THEN BEGIN 2 // from:
  SAY #53640 /* ~Znowu stoisz przed łukiem; Lodowaty powiew spomiędzy kolumn mrozi krew w żyłach, jakby ten łuk graniczył z jakąś inną, zimniejszą przestrzenią. Nie wiadomo dlaczego, ale jednak wiesz, że to właśnie jest portal do Fortecy Żalu... teraz wystarczy tylko napisać to, czego żałujesz, na skrawku skóry zerwanym z ramienia.~ */
  IF ~~ THEN REPLY #53641 /* ~Nakłuj swój palec, a potem używając swojej krwi, wypisz słowa żalu na skrawku swojego ciała...~ */ GOTO 4
  IF ~~ THEN REPLY #53642 /* ~Odejdź od portalu... przynajmniej na razie.~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 1.1
  SAY #53643 /* ~Ten skrawek skóry został zerwany z przedramienia twojej lewej ręki. Jego pokryta bliznami, szara powierzchnia przypomina skórę zombie. W dotyku bardziej przypomina kawałek wyprawionej skóry zwierzęcia.~ */
  IF ~~ THEN REPLY #53644 /* ~Nakłuj swój palec, a potem używając swojej krwi, wypisz słowa żalu na skrawku swojego ciała...~ */ GOTO 4
  IF ~~ THEN REPLY #53645 /* ~Odłóż skórę...~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 2.0 3.0
  SAY #53646 /* ~Nakłuwasz koniuszek swojego palca i pośpiesznie wyciskasz kilka kropel krwi. Gdy myślisz o tym, jak wyrazić swój żal, na myśl przychodzi ci kilka wspomnień...~ */
  IF ~  NumInPartyGT(1)
~ THEN REPLY #53647 /* ~"Żałuję tego, co spotkało moich towarzyszy..."~ */ GOTO 5
  IF ~~ THEN REPLY #53648 /* ~"Żałuję moich uczynków..."~ */ GOTO 6
  IF ~~ THEN REPLY #53649 /* ~"Żałuję swojej przeszłości..."~ */ GOTO 7
  IF ~~ THEN REPLY #53650 /* ~"Żałuję wszystkiego, co doprowadziło do tej sytuacji..."~ */ GOTO 8
  IF ~~ THEN REPLY #53651 /* ~Pozwól ranie zaschnąć i nie pisz nic na skórze, tylko odłóż ją na bok.~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 4.0 13.0
  SAY #53653 /* ~Szepczesz do siebie, ale twój żal odbija się echem w twoim umyśle: "Żałuję..."~ */
  IF ~  NumInPartyGT(1)
~ THEN REPLY #53655 /* ~"...że wszyscy moi towarzysze musieli cierpieć, bym mógł się tu dostać."~ */ DO ~IncrementGlobalOnceEx("GLOBALGood_Skin_Regret_1","GLOBALGood",3)
~ GOTO 9
  IF ~  Global("Sell_Morte","GLOBAL",1)
~ THEN REPLY #53869 /* ~"...że próbowałem sprzedać Mortego Vriszice."~ */ DO ~IncrementGlobalOnceEx("GLOBALGood_Skin_Regret_1","GLOBALGood",1)
~ GOTO 9
  IF ~  Global("Sell_Annah","GLOBAL",1)
~ THEN REPLY #53870 /* ~"...że próbowałem sprzedać Annę Vriszice."~ */ DO ~IncrementGlobalOnceEx("GLOBALGood_Skin_Regret_1","GLOBALGood",1)
~ GOTO 9
  IF ~  Global("Sell_Dakkon","GLOBAL",1)
~ THEN REPLY #53871 /* ~"...że próbowałem sprzedać Dak'kona Vriszice."~ */ DO ~IncrementGlobalOnceEx("GLOBALGood_Skin_Regret_1","GLOBALGood",1)
~ GOTO 9
  IF ~  Global("Sell_Grace","GLOBAL",1)
~ THEN REPLY #53872 /* ~"...że próbowałem sprzedać Nie-Sławę Vriszice."~ */ DO ~IncrementGlobalOnceEx("GLOBALGood_Skin_Regret_1","GLOBALGood",1)
~ GOTO 9
  IF ~  Global("Sell_Nordom","GLOBAL",1)
~ THEN REPLY #53873 /* ~"...że próbowałem sprzedać Nordoma Vriszice."~ */ DO ~IncrementGlobalOnceEx("GLOBALGood_Skin_Regret_1","GLOBALGood",1)
~ GOTO 9
  IF ~  Global("Sell_Morte","GLOBAL",1)
~ THEN REPLY #53874 /* ~"...żę nie sprzedałem Mortego Vriszice."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Skin_Regret_1","GLOBALGood",-2)
~ GOTO 9
  IF ~  Global("Sell_Annah","GLOBAL",1)
~ THEN REPLY #53875 /* ~"...że nie sprzedałem Anny Vriszice."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Skin_Regret_1","GLOBALGood",-2)
~ GOTO 9
  IF ~  Global("Sell_Dakkon","GLOBAL",1)
~ THEN REPLY #53878 /* ~"...że nie sprzedałem Dak'kona Vriszice."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Skin_Regret_1","GLOBALGood",-2)
~ GOTO 9
  IF ~  Global("Sell_Nordom","GLOBAL",1)
~ THEN REPLY #53879 /* ~"...że nie sprzedałem Nordoma Vriszice."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Skin_Regret_1","GLOBALGood",-2)
~ GOTO 9
  IF ~  Global("Sell_Morte","GLOBAL",2)
~ THEN REPLY #53880 /* ~"...że sprzedałem Mortego Vriszice."~ */ DO ~IncrementGlobalOnceEx("GLOBALGood_Skin_Regret_1","GLOBALGood",1)
~ GOTO 9
  IF ~  Global("Sell_Annah","GLOBAL",2)
~ THEN REPLY #53881 /* ~"...że sprzedałem Annę Vriszice."~ */ DO ~IncrementGlobalOnceEx("GLOBALGood_Skin_Regret_1","GLOBALGood",1)
~ GOTO 9
  IF ~  Global("Sell_Dakkon","GLOBAL",2)
~ THEN REPLY #53882 /* ~"...że sprzedałem Dak'kona Vriszice."~ */ DO ~IncrementGlobalOnceEx("GLOBALGood_Skin_Regret_1","GLOBALGood",1)
~ GOTO 9
  IF ~  Global("Sell_Nordom","GLOBAL",2)
~ THEN REPLY #53883 /* ~"...że sprzedałem Nordoma Vriszice."~ */ DO ~IncrementGlobalOnceEx("GLOBALGood_Skin_Regret_1","GLOBALGood",1)
~ GOTO 9
  IF ~  GlobalGT("Dakkon_Slave","GLOBAL",0)
~ THEN REPLY #53884 /* ~"...że przez cały ten czas Dak'kon był moim niewolnikiem."~ */ DO ~IncrementGlobalOnceEx("GLOBALGood_Skin_Regret_1","GLOBALGood",2)
~ GOTO 9
  IF ~  Global("Know_Ignus_Teacher","GLOBAL",2)
~ THEN REPLY #53885 /* ~"...że nauczyłem Ignusa jak sprawiać innym ból."~ */ DO ~IncrementGlobalOnceEx("GLOBALGood_Skin_Regret_1","GLOBALGood",2)
~ GOTO 9
  IF ~  Global("Evil_Pillar_2","GLOBAL",1)
~ THEN REPLY #53886 /* ~"...że zdradziłem Mortego i zostawiłem go na Słupie Czaszek."~ */ DO ~IncrementGlobalOnceEx("GLOBALGood_Skin_Regret_1","GLOBALGood",2)
~ GOTO 9
  IF ~  Dead("Dakkon")
~ THEN REPLY #53887 /* ~"...śmierci Dak'kona."~ */ GOTO 9
  IF ~  Dead("Annah")
~ THEN REPLY #53888 /* ~"...śmierci Anny."~ */ GOTO 9
  IF ~  Dead("Morte")
~ THEN REPLY #53889 /* ~"...śmierci Mortego."~ */ GOTO 9
  IF ~  Dead("Grace")
~ THEN REPLY #53890 /* ~"...śmierci Nie-Sławy."~ */ GOTO 9
  IF ~  Dead("Ignus")
~ THEN REPLY #53891 /* ~"...śmierci Ignusa."~ */ GOTO 9
  IF ~  Dead("Nordom")
~ THEN REPLY #53892 /* ~"...śmierci Nordoma."~ */ GOTO 9
  IF ~  Dead("Vhail")
~ THEN REPLY #53893 /* ~"...śmierci Vhailora."~ */ GOTO 9
  IF ~~ THEN REPLY #53894 /* ~Pomyśl, czego jeszcze żałujesz...~ */ GOTO 13
  IF ~~ THEN REPLY #53895 /* ~Pozwól ranie zaschnąć i nie pisz nic na skórze, tylko odłóż ją na bok.~ */ EXIT
END

IF ~~ THEN BEGIN 6 // from: 4.1 13.1
  SAY #53896 /* ~Szepczesz do siebie, ale twój żal odbija się echem w twoim umyśle: "Żałuję..."~ */
  IF ~  GlobalGT("Murder","GLOBAL",20)
~ THEN REPLY #53897 /* ~"...że nie udało mi się zabić więcej ludzi."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Skin_Regret_1","GLOBALGood",-3)
~ GOTO 9
  IF ~  Global("Lawful_Coaxmetal_1","GLOBAL",1)
~ THEN REPLY #53898 /* ~"...że nie uwolniłem Pieścimetala z wieży oblężniczej."~ */ GOTO 9
  IF ~  Global("Lawful_Coaxmetal_1","GLOBAL",0)
Global("Evil_Coaxmetal_4","GLOBAL",1)
~ THEN REPLY #53899 /* ~"...że nie uwolniłem Pieścimetala z wieży oblężniczej."~ */ GOTO 9
  IF ~  Global("Chaotic_Coaxmetal_1","GLOBAL",1)
~ THEN REPLY #53900 /* ~"...że uwolniłem Pieścimetala z wieży oblężniczej."~ */ GOTO 9
  IF ~~ THEN REPLY #53903 /* ~"...że musiałem zabić Ravelę."~ */ DO ~IncrementGlobalOnceEx("GLOBALGood_Skin_Regret_1","GLOBALGood",2)
~ GOTO 9
  IF ~~ THEN REPLY #53904 /* ~"...że przemierzyłem całe Sfery, podczas gdy ten przeklęty portal był dokładnie tam, gdzie się obudziłem."~ */ GOTO 9
  IF ~~ THEN REPLY #53905 /* ~Pomyśl, czego jeszcze żałujesz...~ */ GOTO 13
  IF ~~ THEN REPLY #53906 /* ~Pozwól ranie zaschnąć i nie pisz nic na skórze, tylko odłóż ją na bok.~ */ EXIT
END

IF ~~ THEN BEGIN 7 // from: 4.2 13.2
  SAY #53907 /* ~Szepczesz do siebie, ale twój żal odbija się echem w twoim umyśle: "Żałuję..."~ */
  IF ~~ THEN REPLY #53908 /* ~"...że kiedykolwiek chciałem być nieśmiertelny."~ */ GOTO 9
  IF ~  Global("Murdered_Fin","GLOBAL",1)
~ THEN REPLY #53909 /* ~"...zamordowania Fina Andleya. Gdybym nie stał się nieśmiertelny, moje paranoiczne wcielenie nigdy by go nie zabiło..."~ */ DO ~IncrementGlobalOnceEx("GLOBALGood_Skin_Regret_1","GLOBALGood",1)
~ GOTO 9
  IF ~~ THEN REPLY #53910 /* ~"...krzywd, jakie moje wcześniejsze wcielenia wyrządziły sobie i innym."~ */ DO ~IncrementGlobalOnceEx("GLOBALGood_Skin_Regret_1","GLOBALGood",3)
~ GOTO 9
  IF ~~ THEN REPLY #53911 /* ~"...śmierci, które spowodowałem tutaj i w całym wieloświecie."~ */ DO ~IncrementGlobalOnceEx("GLOBALGood_Skin_Regret_1","GLOBALGood",3)
~ GOTO 9
  IF ~  Global("Memory_Deionarra_Longing","GLOBAL",1)
~ THEN REPLY #53912 /* ~"...że okłamałem Deionarrę, żeby zmusić ją do towarzyszenia mi w podróży."~ */ DO ~IncrementGlobalOnceEx("GLOBALGood_Skin_Regret_1","GLOBALGood",2)
~ GOTO 9
  IF ~  GlobalGT("Deionarra_Death_Truth","GLOBAL",0)
~ THEN REPLY #53913 /* ~"...zamordowania Deionarry w Fortecy Żalu."~ */ DO ~IncrementGlobalOnceEx("GLOBALGood_Skin_Regret_1","GLOBALGood",2)
~ GOTO 9
  IF ~  GlobalGT("Deionarra_Death_Truth","GLOBAL",1)
GlobalGT("Know_Iannis_Deionarra_Death","GLOBAL",0)
~ THEN REPLY #53914 /* ~"...cierpień Iannisa po tym, jak doprowadziłem jego córkę do śmierci."~ */ DO ~IncrementGlobalOnceEx("GLOBALGood_Skin_Regret_1","GLOBALGood",2)
~ GOTO 9
  IF ~~ THEN REPLY #53915 /* ~Pomyśl, czego jeszcze żałujesz...~ */ GOTO 13
  IF ~~ THEN REPLY #53916 /* ~Pozwól ranie zaschnąć i nie pisz nic na skórze, tylko odłóż ją na bok.~ */ EXIT
END

IF ~~ THEN BEGIN 8 // from: 4.3 13.3
  SAY #53917 /* ~Szepczesz do siebie, ale twój żal odbija się echem w twoim umyśle: "Żałuję..."~ */
  IF ~~ THEN REPLY #53918 /* ~"...że aż *tak* długo zajęło mi odszukanie mojej śmiertelności."~ */ GOTO 9
  IF ~  GlobalGT("Death","GLOBAL",20)
~ THEN REPLY #53919 /* ~"...że tyle istot musiało umrzeć, abym dotarł do tego punktu."~ */ GOTO 9
  IF ~  NumInParty(1)
!NearbyDialog("DNordom")
!NearbyDialog("DVhail")
!NearbyDialog("Dignus")
!NearbyDialog("DGrace")
!NearbyDialog("Dannah")
!NearbyDialog("DDakkon")
!NearbyDialog("DMorte")
~ THEN REPLY #53920 /* ~"...że z nikim nie mogę dzielić się tą chwilą."~ */ GOTO 9
  IF ~~ THEN REPLY #53921 /* ~"...że nie żałuję niczego, co można by wypisać na tym kawałku skóry."~ */ GOTO 9
  IF ~~ THEN REPLY #53922 /* ~Pomyśl, czego jeszcze żałujesz...~ */ GOTO 13
  IF ~~ THEN REPLY #53923 /* ~Pozwól ranie zaschnąć i nie pisz nic na skórze, tylko odłóż ją na bok.~ */ EXIT
END

IF ~~ THEN BEGIN 9 // from: 5.0 5.1 5.2 5.3 5.4 5.5 5.6 5.7 5.8 5.9 5.10 5.11 5.12 5.13 5.14 5.15 5.16 5.17 5.18 5.19 5.20 5.21 5.22 5.23 6.0 6.1 6.2 6.3 6.4 6.5 7.0 7.1 7.2 7.3 7.4 7.5 7.6 8.0 8.1 8.2 8.3
  SAY #53924 /* ~Piszesz słowa żalu na kawałku swego ciała... ale już wkrótce musisz jeszcze raz otworzyć szybko gojącą się ranę i wycisnąć więcej krwi. Chwilę później kończysz, a na pasku skóry połyskuje twoja krew... połączenie twojego ciała, krwi i żalu.~ */
  IF ~  Global("Regret_Experience","GLOBAL",0)
~ THEN REPLY #53926 /* ~Obserwuj jak krew wysycha...~ */ DO ~TransformPartyItem("SkScrap","SkRegret",1,0,0)
AddexperienceParty(250000)
SetGlobal("Regret_Experience","GLOBAL",1)
~ GOTO 10
  IF ~  Global("Regret_Experience","GLOBAL",1)
~ THEN REPLY #53927 /* ~Obserwuj jak krew wysycha...~ */ DO ~TransformPartyItem("SkScrap","SkRegret",1,0,0)
~ GOTO 10
END

IF ~~ THEN BEGIN 10 // from: 9.0 9.1
  SAY #53928 /* ~Gdy patrzysz na schnącą krew, owiewa cię fala zimna. Spoglądasz w górę; czarne kolumny po obu stronach zaczynają lekko się jarzyć, a wychodzące z nich białe, mgliste światło tworzy pomiędzy nimi migoczącą zasłonę. Poza nią ledwie co widać zniszczony kamienny korytarz ginący w ciemności.~ */
  IF ~  NearbyDialog("DNordom")
InParty("Nordom")
~ THEN REPLY #53929 /* ~"Wszyscy gotowi?"~ */ EXTERN ~DNORDOM~ 16
  IF ~  !InParty("Nordom")
NearbyDialog("DVhail")
InParty("Vhail")
~ THEN REPLY #53930 /* ~"Wszyscy gotowi?"~ */ EXTERN ~DVHAIL~ 15
  IF ~  !InParty("Nordom")
!InParty("Vhail")
NearbyDialog("Dignus")
InParty("Ignus")
~ THEN REPLY #53931 /* ~"Wszyscy gotowi?"~ */ EXTERN ~DIGNUS~ 19
  IF ~  !InParty("Nordom")
!InParty("Vhail")
!InParty("Ignus")
NearbyDialog("DGrace")
InParty("Grace")
~ THEN REPLY #53932 /* ~"Wszyscy gotowi?"~ */ EXTERN ~DGRACE~ 168
  IF ~  !InParty("Nordom")
!InParty("Vhail")
!InParty("Ignus")
!InParty("Grace")
NearbyDialog("DAnnah")
InParty("Annah")
~ THEN REPLY #53934 /* ~"Wszyscy gotowi?"~ */ EXTERN ~DANNAH~ 272
  IF ~  !InParty("Nordom")
!InParty("Vhail")
!InParty("ignus")
!InParty("Grace")
!InParty("annah")
NearbyDialog("DDakkon")
InParty("Dakkon")
GlobalLT("BD_DAKKON_MORALE","GLOBAL",6)
~ THEN REPLY #53935 /* ~"Wszyscy gotowi?"~ */ EXTERN ~DDAKKON~ 173
  IF ~  !InParty("nordom")
!InParty("Vhail")
!InParty("ignus")
!InParty("Grace")
!InParty("annah")
NearbyDialog("DDakkon")
InParty("Dakkon")
GlobalGT("BD_DAKKON_MORALE","GLOBAL",5)
~ THEN REPLY #53936 /* ~"Wszyscy gotowi?"~ */ EXTERN ~DDAKKON~ 172
  IF ~  !InParty("Nordom")
!InParty("Vhail")
!InParty("ignus")
!InParty("Grace")
!InParty("annah")
!InParty("Dakkon")
NearbyDialog("DMorte")
InParty("Morte")
Global("Morte_Quip_Regret_Portal","GLOBAL",0)
~ THEN REPLY #53937 /* ~"Wszyscy gotowi?"~ */ DO ~SetGlobal("Morte_Quip_Regret_Portal","GLOBAL",1)
~ EXTERN ~DMORTE~ 536
  IF ~  !InParty("nordom")
!InParty("vhail")
!InParty("ignus")
!InParty("grace")
!InParty("annah")
!InParty("dakkon")
NearbyDialog("Dmorte")
InParty("Morte")
GlobalGT("Morte_Quip_Regret_Portal","GLOBAL",0)
~ THEN REPLY #53938 /* ~"Wszyscy gotowi?"~ */ EXTERN ~DMORTE~ 534
  IF ~  !InParty("nordom")
!InParty("Vhail")
!InParty("ignus")
!InParty("Grace")
!InParty("annah")
!InParty("dakkon")
!InParty("Morte")
NumInPartyGT(1)
~ THEN REPLY #53939 /* ~"Wszyscy gotowi?"~ */ GOTO 12
  IF ~  PartyHasItem("SkRegret")
!NearbyDialog("DMorte")
~ THEN REPLY #53940 /* ~Weź w ręce skrawek skóry ze słowami swojego żalu, po czym przejdź przez zasłonę.~ */ DO ~SetPortalCursor("Fort_Port",PORTAL_CURSOR_VISIBLE,TRUE)
SetPortalCursor("Fort_Port",PORTAL_ENABLED,TRUE)
~ EXIT
  IF ~  PartyHasItem("SkRegret")
NearbyDialog("DMorte")
!InParty("Morte")
Global("Morte_Quip_Regret_Portal","GLOBAL",0)
~ THEN REPLY #53941 /* ~Weź w ręce skrawek skóry ze słowami swojego żalu, po czym przejdź przez zasłonę.~ */ DO ~SetGlobal("Morte_Quip_Regret_Portal","GLOBAL",1)
~ EXTERN ~DMORTE~ 538
  IF ~  PartyHasItem("SkRegret")
NearbyDialog("DMorte")
!InParty("Morte")
GlobalGT("Morte_Quip_Regret_Portal","GLOBAL",0)
~ THEN REPLY #53942 /* ~Weź w ręce skrawek skóry ze słowami swojego żalu, po czym przejdź przez zasłonę.~ */ DO ~SetPortalCursor("Fort_Port",PORTAL_CURSOR_VISIBLE,TRUE)
SetPortalCursor("Fort_Port",PORTAL_ENABLED,TRUE)
~ EXIT
  IF ~~ THEN REPLY #53943 /* ~Odejdź od portalu.~ */ EXIT
END

IF ~  PartyHasItem("SkRegret")
~ THEN BEGIN 11 // from:
  SAY #53947 /* ~Kiedy z paskiem żalu w ręce podchodzisz do dwóch kolumn prowadzących do Fortecy, owiewa cię fala zimna, a czarne kolumny po obu stronach zaczynają lekko się jarzyć, a wychodzące z nich białe, mgliste światło tworzy pomiędzy nimi migoczącą zasłonę. Poza nią ledwie co widać zniszczony kamienny korytarz ginący w ciemności.~ */
  IF ~  NearbyDialog("DNordom")
InParty("Nordom")
~ THEN REPLY #53948 /* ~"Wszyscy gotowi?"~ */ EXTERN ~DNORDOM~ 16
  IF ~  !InParty("Nordom")
NearbyDialog("DVhail")
InParty("Vhail")
~ THEN REPLY #53949 /* ~"Wszyscy gotowi?"~ */ EXTERN ~DVHAIL~ 15
  IF ~  !InParty("Nordom")
!InParty("Vhail")
NearbyDialog("Dignus")
InParty("Ignus")
~ THEN REPLY #53950 /* ~"Wszyscy gotowi?"~ */ EXTERN ~DIGNUS~ 19
  IF ~  !InParty("Nordom")
!InParty("Vhail")
!InParty("ignus")
NearbyDialog("DGrace")
InParty("Grace")
~ THEN REPLY #53951 /* ~"Wszyscy gotowi?"~ */ EXTERN ~DGRACE~ 168
  IF ~  !InParty("Nordom")
!InParty("Vhail")
!InParty("ignus")
!InParty("Grace")
NearbyDialog("DAnnah")
InParty("Annah")
~ THEN REPLY #53952 /* ~"Wszyscy gotowi?"~ */ EXTERN ~DANNAH~ 272
  IF ~  !InParty("Nordom")
!InParty("Vhail")
!InParty("ignus")
!InParty("Grace")
!InParty("annah")
NearbyDialog("DDakkon")
InParty("Dakkon")
GlobalLT("BD_DAKKON_MORALE","GLOBAL",6)
~ THEN REPLY #53954 /* ~"Wszyscy gotowi?"~ */ EXTERN ~DDAKKON~ 173
  IF ~  !InParty("nordom")
!InParty("Vhail")
!InParty("ignus")
!InParty("Grace")
!InParty("annah")
NearbyDialog("DDakkon")
InParty("Dakkon")
GlobalGT("BD_DAKKON_MORALE","GLOBAL",5)
~ THEN REPLY #53956 /* ~"Wszyscy gotowi?"~ */ EXTERN ~DDAKKON~ 172
  IF ~  !InParty("nordom")
!InParty("Vhail")
!InParty("ignus")
!InParty("Grace")
!InParty("annah")
!InParty("Dakkon")
NearbyDialog("DMorte")
InParty("Morte")
Global("Morte_Quip_Regret_Portal","GLOBAL",0)
~ THEN REPLY #53957 /* ~"Wszyscy gotowi?"~ */ EXTERN ~DMORTE~ 536
  IF ~  !InParty("nordom")
!InParty("Vhail")
!InParty("ignus")
!InParty("Grace")
!InParty("annah")
!InParty("dakkon")
NearbyDialog("DMorte")
InParty("Morte")
GlobalGT("Morte_Quip_Regret_Portal","GLOBAL",0)
~ THEN REPLY #53958 /* ~"Wszyscy gotowi?"~ */ EXTERN ~DMORTE~ 534
  IF ~  !InParty("nordom")
!InParty("Vhail")
!InParty("ignus")
!InParty("Grace")
!InParty("annah")
!InParty("dakkon")
!InParty("Morte")
NumInPartyGT(1)
~ THEN REPLY #53959 /* ~"Wszyscy gotowi?"~ */ GOTO 12
  IF ~  PartyHasItem("SkRegret")
!NearbyDialog("DMorte")
~ THEN REPLY #53960 /* ~Weź w ręce skrawek skóry ze słowami swojego żalu, po czym przejdź przez zasłonę.~ */ DO ~SetPortalCursor("Fort_Port",PORTAL_CURSOR_VISIBLE,TRUE)
SetPortalCursor("Fort_Port",PORTAL_ENABLED,TRUE)
~ EXIT
  IF ~  PartyHasItem("SkRegret")
NearbyDialog("DMorte")
!InParty("Morte")
Global("Morte_Quip_Regret_Portal","GLOBAL",0)
~ THEN REPLY #53961 /* ~Weź w ręce skrawek skóry ze słowami swojego żalu, po czym przejdź przez zasłonę.~ */ DO ~SetGlobal("Morte_Quip_Regret_Portal","GLOBAL",1)
~ EXTERN ~DMORTE~ 538
  IF ~  PartyHasItem("SkRegret")
NearbyDialog("DMorte")
!InParty("Morte")
GlobalGT("Morte_Quip_Regret_Portal","GLOBAL",0)
~ THEN REPLY #53962 /* ~Weź w ręce skrawek skóry ze słowami swojego żalu, po czym przejdź przez zasłonę.~ */ DO ~SetPortalCursor("Fort_Port",PORTAL_CURSOR_VISIBLE,TRUE)
SetPortalCursor("Fort_Port",PORTAL_ENABLED,TRUE)
~ EXIT
  IF ~~ THEN REPLY #53963 /* ~Odejdź od portalu.~ */ EXIT
END

IF ~~ THEN BEGIN 12 // from: 10.9 11.9
  SAY #53964 /* ~Twoje pytanie pozostaje bez odpowiedzi; żaden z twoich towarzyszy nie jest na tyle blisko, by cię słyszeć.~ */
  IF ~  PartyHasItem("SkRegret")
~ THEN REPLY #53965 /* ~Weź w ręce skrawek skóry ze słowami swojego żalu, po czym przejdź przez zasłonę.~ */ DO ~SetPortalCursor("Fort_Port",PORTAL_CURSOR_VISIBLE,TRUE)
SetPortalCursor("Fort_Port",PORTAL_ENABLED,TRUE)
~ EXIT
  IF ~~ THEN REPLY #53966 /* ~Idź poszukać swoich towarzyszy, a potem powróć do portalu.~ */ DO ~SetPortalCursor("Fort_Port",PORTAL_CURSOR_VISIBLE,TRUE)
SetPortalCursor("Fort_Port",PORTAL_ENABLED,TRUE)
~ EXIT
END

IF ~~ THEN BEGIN 13 // from: 5.24 6.6 7.7 8.4
  SAY #53967 /* ~W ciągu tych kilku chwil spędzonych w zamyśleniu, rana na twoim palcu zdążyła już się kompletnie zaleczyć; musisz jeszcze raz ją otworzyć i wycisnąć trochę krwi. Gdy myślisz o tym, jak wyrazić swój żal, na myśl przychodzi ci kilka wspomnień...~ */
  IF ~  NumInPartyGT(1)
~ THEN REPLY #53969 /* ~"Żałuję tego, co spotkało moich towarzyszy..."~ */ GOTO 5
  IF ~~ THEN REPLY #53970 /* ~"Żałuję moich uczynków..."~ */ GOTO 6
  IF ~~ THEN REPLY #53971 /* ~"Żałuję mojej przeszłości..."~ */ GOTO 7
  IF ~~ THEN REPLY #53972 /* ~"Żałuję wszystkiego, co doprowadziło do tej sytuacji..."~ */ GOTO 8
  IF ~~ THEN REPLY #53973 /* ~Odłóż skórę...~ */ EXIT
END

IF ~~ THEN BEGIN 14 // from: 1.0
  SAY #66925 /* ~...ale nie masz na skórę miejsca i spada ona na ziemię.~ */
  IF ~~ THEN REPLY #66926 /* ~Odwróć się od portalu i podnieś skórę.~ */ EXIT
END
