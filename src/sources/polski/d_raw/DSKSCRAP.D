// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DSKSCRAP.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\pl_PL\dialog.tlk
// dialogF  : (none)

BEGIN ~DSKSCRAP~

IF ~  True()
~ THEN BEGIN 0 // from:
  SAY #52402 /* ~Ten skrawek skóry odpadł od wewnętrznej strony twego lewego przedramienia. Jest pokryty bliznami, szarawy i przypomina ci skórę zombie. W dotyku jest niczym kawałek wyprawionej skóry zwierzęcia, a nie ludzkiej.~ */
  IF ~~ THEN REPLY #52403 /* ~Natnij swój lewy palec wskazujący i własną krwią napisz na skrawku skóry, czego żałujesz...~ */ GOTO 1
  IF ~~ THEN REPLY #53254 /* ~Odłóż ją...~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #53255 /* ~Nakłuwasz czubek palca wskazującego; zanim rana zdąży się zagoić, wyciskasz kilka kropelek krwi. Gdy przygotowujesz się do opisania tego, czego żałujesz, w twojej głowie pojawiają się obrazy.~ */
  IF ~  NumInPartyGT(1)
~ THEN REPLY #53256 /* ~"Żałuję tego, co spotkało moich towarzyszy..."~ */ GOTO 2
  IF ~~ THEN REPLY #53257 /* ~"Żałuję moich uczynków..."~ */ GOTO 3
  IF ~~ THEN REPLY #53258 /* ~"Żałuję mojej przeszłości..."~ */ GOTO 4
  IF ~~ THEN REPLY #53259 /* ~"Żałuję tego, co doprowadziło mnie tutaj..."~ */ GOTO 5
  IF ~~ THEN REPLY #53260 /* ~Odłóż ją...~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.0 7.0
  SAY #53261 /* ~Szepczesz do siebie, ale twój żal odbija się echem w twoim umyśle: "Żałuję..."~ */
  IF ~  NumInPartyGT(1)
~ THEN REPLY #53262 /* ~"...że wszyscy moi towarzysze musieli cierpieć, bym mógł się tu dostać."~ */ DO ~IncrementGlobalOnceEx("GLOBALGood_Skin_Regret_1","GLOBALGood",3)
~ GOTO 6
  IF ~  Global("Sell_Morte","GLOBAL",1)
~ THEN REPLY #53263 /* ~"...że próbowałem sprzedać Mortego Vriszice."~ */ DO ~IncrementGlobalOnceEx("GLOBALGood_Skin_Regret_1","GLOBALGood",1)
~ GOTO 6
  IF ~  Global("Sell_Annah","GLOBAL",1)
~ THEN REPLY #53264 /* ~"...że próbowałem sprzedać Annę Vriszice."~ */ DO ~IncrementGlobalOnceEx("GLOBALGood_Skin_Regret_1","GLOBALGood",1)
~ GOTO 6
  IF ~  Global("Sell_Dakkon","GLOBAL",1)
~ THEN REPLY #53265 /* ~"...że próbowałem sprzedać Dak'kona Vriszice."~ */ DO ~IncrementGlobalOnceEx("GLOBALGood_Skin_Regret_1","GLOBALGood",1)
~ GOTO 6
  IF ~  Global("Sell_Grace","GLOBAL",1)
~ THEN REPLY #53266 /* ~"...że próbowałem sprzedać Nie-Sławę Vriszice."~ */ DO ~IncrementGlobalOnceEx("GLOBALGood_Skin_Regret_1","GLOBALGood",1)
~ GOTO 6
  IF ~  Global("Sell_Nordom","GLOBAL",1)
~ THEN REPLY #53267 /* ~"...że próbowałem sprzedać Nordoma Vriszice."~ */ DO ~IncrementGlobalOnceEx("GLOBALGood_Skin_Regret_1","GLOBALGood",1)
~ GOTO 6
  IF ~  Global("Sell_Morte","GLOBAL",1)
~ THEN REPLY #53268 /* ~"...żę nie sprzedałem Mortego Vriszice."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Skin_Regret_1","GLOBALGood",-2)
~ GOTO 6
  IF ~  Global("Sell_Annah","GLOBAL",1)
~ THEN REPLY #53269 /* ~"...że nie sprzedałem Anny Vriszice."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Skin_Regret_1","GLOBALGood",-2)
~ GOTO 6
  IF ~  Global("Sell_Dakkon","GLOBAL",1)
~ THEN REPLY #53270 /* ~"...że nie sprzedałem Dak'kona Vriszice."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Skin_Regret_1","GLOBALGood",-2)
~ GOTO 6
  IF ~  Global("Sell_Nordom","GLOBAL",1)
~ THEN REPLY #53271 /* ~"...że nie sprzedałem Nordoma Vriszice."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Skin_Regret_1","GLOBALGood",-2)
~ GOTO 6
  IF ~  Global("Sell_Morte","GLOBAL",2)
~ THEN REPLY #53272 /* ~"...że sprzedałem Mortego Vriszice."~ */ DO ~IncrementGlobalOnceEx("GLOBALGood_Skin_Regret_1","GLOBALGood",1)
~ GOTO 6
  IF ~  Global("Sell_Annah","GLOBAL",2)
~ THEN REPLY #53273 /* ~"...że sprzedałem Annę Vriszice."~ */ DO ~IncrementGlobalOnceEx("GLOBALGood_Skin_Regret_1","GLOBALGood",1)
~ GOTO 6
  IF ~  Global("Sell_Dakkon","GLOBAL",2)
~ THEN REPLY #53274 /* ~"...że sprzedałem Dak'kona Vriszice."~ */ DO ~IncrementGlobalOnceEx("GLOBALGood_Skin_Regret_1","GLOBALGood",1)
~ GOTO 6
  IF ~  Global("Sell_Nordom","GLOBAL",2)
~ THEN REPLY #53275 /* ~"...że sprzedałem Nordoma Vriszice."~ */ DO ~IncrementGlobalOnceEx("GLOBALGood_Skin_Regret_1","GLOBALGood",1)
~ GOTO 6
  IF ~  GlobalGT("Dakkon_Slave","GLOBAL",0)
~ THEN REPLY #53276 /* ~"...że przez cały ten czas Dak'kon był moim niewolnikiem."~ */ DO ~IncrementGlobalOnceEx("GLOBALGood_Skin_Regret_1","GLOBALGood",2)
~ GOTO 6
  IF ~  Global("Know_Ignus_Teacher","GLOBAL",2)
~ THEN REPLY #53277 /* ~"...że nauczyłem Ignusa jak sprawiać innym ból."~ */ DO ~IncrementGlobalOnceEx("GLOBALGood_Skin_Regret_1","GLOBALGood",2)
~ GOTO 6
  IF ~  Global("Evil_Pillar_2","GLOBAL",1)
~ THEN REPLY #53278 /* ~"...że zdradziłem Mortego i zostawiłem go na Słupie Czaszek."~ */ DO ~IncrementGlobalOnceEx("GLOBALGood_Skin_Regret_1","GLOBALGood",2)
~ GOTO 6
  IF ~  Dead("Dakkon")
~ THEN REPLY #53279 /* ~"...śmierci Dak'kona."~ */ GOTO 6
  IF ~  Dead("Annah")
~ THEN REPLY #53280 /* ~"...śmierci Anny."~ */ GOTO 6
  IF ~  Dead("Morte")
~ THEN REPLY #53281 /* ~"...śmierci Mortego."~ */ GOTO 6
  IF ~  Dead("Grace")
~ THEN REPLY #53282 /* ~"...śmierci Nie-Sławy."~ */ GOTO 6
  IF ~  Dead("Ignus")
~ THEN REPLY #53283 /* ~"...śmierci Ignusa."~ */ GOTO 6
  IF ~  Dead("Nordom")
~ THEN REPLY #53284 /* ~"...śmierci Nordoma."~ */ GOTO 6
  IF ~  Dead("Vhail")
~ THEN REPLY #53286 /* ~"...śmierci Vhailora."~ */ GOTO 6
  IF ~~ THEN REPLY #53287 /* ~Pomyśl, czego jeszcze żałujesz...~ */ GOTO 7
  IF ~~ THEN REPLY #53288 /* ~Odłóż skrawek...~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 1.1 7.1
  SAY #53289 /* ~Szepczesz do siebie, ale twój żal odbija się echem w twoim umyśle: "Żałuję..."~ */
  IF ~  GlobalGT("Murder","GLOBAL",20)
~ THEN REPLY #53290 /* ~"...że nie udało mi się zabić więcej ludzi."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Skin_Regret_1","GLOBALGood",-3)
~ GOTO 6
  IF ~  Global("Lawful_Coaxmetal_1","GLOBAL",1)
~ THEN REPLY #53291 /* ~"...że nie uwolniłem Pieścimetala z wieży oblężniczej."~ */ GOTO 6
  IF ~  Global("Lawful_Coaxmetal_1","GLOBAL",0)
Global("Evil_Coaxmetal_4","GLOBAL",1)
~ THEN REPLY #68188 /* ~"...że nie uwolniłem Pieścimetala z wieży oblężniczej."~ */ GOTO 6
  IF ~  Global("Chaotic_Coaxmetal_1","GLOBAL",1)
~ THEN REPLY #53292 /* ~"...że uwolniłem Pieścimetala z wieży oblężniczej."~ */ GOTO 6
  IF ~~ THEN REPLY #53295 /* ~"...że musiałem zabić Ravelę."~ */ DO ~IncrementGlobalOnceEx("GLOBALGood_Skin_Regret_1","GLOBALGood",2)
~ GOTO 6
  IF ~~ THEN REPLY #53297 /* ~"...że przemierzyłem całe Sfery, podczas gdy ten przeklęty portal był dokładnie tam, gdzie się obudziłem."~ */ GOTO 6
  IF ~~ THEN REPLY #53298 /* ~Pomyśl, czego jeszcze żałujesz...~ */ GOTO 7
  IF ~~ THEN REPLY #53299 /* ~Odłóż skrawek...~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 1.2 7.2
  SAY #53300 /* ~Szepczesz do siebie, ale twój żal odbija się echem w twoim umyśle: "Żałuję..."~ */
  IF ~~ THEN REPLY #53301 /* ~"...że kiedykolwiek chciałem być nieśmiertelny."~ */ GOTO 6
  IF ~  Global("Murdered_Fin","GLOBAL",1)
~ THEN REPLY #53302 /* ~"...zamordowania Fina Andleya. Gdybym nie stał się nieśmiertelny, moje paranoiczne wcielenie nigdy by go nie zabiło..."~ */ DO ~IncrementGlobalOnceEx("GLOBALGood_Skin_Regret_1","GLOBALGood",1)
~ GOTO 6
  IF ~~ THEN REPLY #53303 /* ~"...krzywd, jakie moje wcześniejsze wcielenia wyrządziły sobie i innym."~ */ DO ~IncrementGlobalOnceEx("GLOBALGood_Skin_Regret_1","GLOBALGood",3)
~ GOTO 6
  IF ~~ THEN REPLY #53304 /* ~"...śmierci, które spowodowałem tutaj i w całym wieloświecie."~ */ DO ~IncrementGlobalOnceEx("GLOBALGood_Skin_Regret_1","GLOBALGood",3)
~ GOTO 6
  IF ~  Global("Memory_Deionarra_Longing","GLOBAL",1)
~ THEN REPLY #53305 /* ~"...że okłamałem Deionarrę, żeby zmusić ją do towarzyszenia mi w podróży."~ */ DO ~IncrementGlobalOnceEx("GLOBALGood_Skin_Regret_1","GLOBALGood",2)
~ GOTO 6
  IF ~  GlobalGT("Deionarra_Death_Truth","GLOBAL",0)
~ THEN REPLY #53306 /* ~"...zamordowania Deionarry w Fortecy Żalu."~ */ DO ~IncrementGlobalOnceEx("GLOBALGood_Skin_Regret_1","GLOBALGood",2)
~ GOTO 6
  IF ~  GlobalGT("Deionarra_Death_Truth","GLOBAL",1)
GlobalGT("Know_Iannis_Deionarra_Death","GLOBAL",0)
~ THEN REPLY #53307 /* ~"...cierpień Iannisa po tym, jak doprowadziłem jego córkę do śmierci."~ */ DO ~IncrementGlobalOnceEx("GLOBALGood_Skin_Regret_1","GLOBALGood",2)
~ GOTO 6
  IF ~~ THEN REPLY #53308 /* ~Pomyśl czego jeszcze żałujesz...~ */ GOTO 7
  IF ~~ THEN REPLY #53309 /* ~Odłóż skrawek...~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 1.3 7.3
  SAY #53310 /* ~Szepczesz do siebie, ale twój żal odbija się echem w twoim umyśle: "Żałuję..."~ */
  IF ~~ THEN REPLY #53311 /* ~"...że aż *tak* długo zajęło mi odszukanie mojej śmiertelności."~ */ GOTO 6
  IF ~  GlobalGT("Death","GLOBAL",20)
~ THEN REPLY #53312 /* ~"...że tyle istot musiało umrzeć, abym dotarł do tego punktu."~ */ GOTO 6
  IF ~  NumInParty(1)
!NearbyDialog("DNordom")
!NearbyDialog("DVhail")
!NearbyDialog("Dignus")
!NearbyDialog("DGrace")
!NearbyDialog("Dannah")
!NearbyDialog("DDakkon")
!NearbyDialog("DMorte")
~ THEN REPLY #53313 /* ~"...że z nikim nie mogę dzielić się tą chwilą."~ */ GOTO 6
  IF ~~ THEN REPLY #53314 /* ~"...że nie żałuję niczego, co można by wypisać na tym kawałku skóry."~ */ GOTO 6
  IF ~~ THEN REPLY #53315 /* ~Pomyśl, czego jeszcze żałujesz...~ */ GOTO 7
  IF ~~ THEN REPLY #53316 /* ~Odłóż skrawek...~ */ EXIT
END

IF ~~ THEN BEGIN 6 // from: 2.0 2.1 2.2 2.3 2.4 2.5 2.6 2.7 2.8 2.9 2.10 2.11 2.12 2.13 2.14 2.15 2.16 2.17 2.18 2.19 2.20 2.21 2.22 2.23 3.0 3.1 3.2 3.3 3.4 3.5 4.0 4.1 4.2 4.3 4.4 4.5 4.6 5.0 5.1 5.2 5.3
  SAY #53317 /* ~Piszesz słowa żalu na kawałku swego ciała... ale już wkrótce musisz jeszcze raz otworzyć szybko gojącą się ranę i wycisnąć więcej krwi. Chwilę później kończysz, a na pasku skóry połyskuje twoja krew... połączenie twojego ciała, krwi i żalu.~ */
  IF ~  Global("Regret_Experience","GLOBAL",0)
~ THEN REPLY #53318 /* ~"To powinno wystarczyć..."~ */ DO ~TransformPartyItem("SkScrap","SkRegret",1,0,0)
AddexperienceParty(250000)
SetGlobal("Regret_Experience","GLOBAL",1)
~ EXIT
  IF ~  Global("Regret_Experience","GLOBAL",1)
~ THEN REPLY #53319 /* ~"To powinno wystarczyć..."~ */ DO ~TransformPartyItem("SkScrap","SkRegret",1,0,0)
~ EXIT
END

IF ~~ THEN BEGIN 7 // from: 2.24 3.6 4.7 5.4
  SAY #53320 /* ~Podczas gdy pogrążony jesteś w myślach, nacięcie na twoim palcu zupełnie się zabliźnia; musisz go na nowo naciąć, by wycisnąć trochę więcej krwi. Gdy przygotowujesz się do napisania o swym żalu, w twojej głowie pojawiają się obrazy.~ */
  IF ~  NumInPartyGT(1)
~ THEN REPLY #53321 /* ~"Żałuję tego, co spotkało moich towarzyszy..."~ */ GOTO 2
  IF ~~ THEN REPLY #53322 /* ~"Żałuję moich uczynków..."~ */ GOTO 3
  IF ~~ THEN REPLY #53323 /* ~"Żałuję mojej przeszłości..."~ */ GOTO 4
  IF ~~ THEN REPLY #53324 /* ~"Żałuję tego, co doprowadziło mnie tutaj..."~ */ GOTO 5
  IF ~~ THEN REPLY #53325 /* ~Odłóż skrawek...~ */ EXIT
END
