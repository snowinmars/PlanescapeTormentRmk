// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DDBIRDS.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\pl_PL\dialog.tlk
// dialogF  : (none)

BEGIN ~DDBIRDS~

IF ~  True()
~ THEN BEGIN 0 // from:
  SAY #31493 /* ~Kilka odłamków czarnego kryształu - bądź lodu - wiruje w podmuchach zimnego wiatru wytwarzanego przez ten zdobiony piedestał. Każdy odłamek zdaje się być wyjątkowo ostry - dotknięcie bądź pochwycenie któregoś z nich może być niebezpieczne. Podpis na piedestale głosi: 'Mroczne Ptaki Okantusa'.~ */
  IF ~~ THEN REPLY #31494 /* ~Zostaw je w spokoju.~ */ DO ~SetGlobal("View_Art_DBirds","AR0608",1)
~ EXIT
  IF ~~ THEN REPLY #31495 /* ~Dotknij jednego z odłamków.~ */ DO ~SetGlobal("View_Art_DBirds","AR0608",1)
~ GOTO 1
  IF ~~ THEN REPLY #31496 /* ~Pochwyć jeden odłamek.~ */ DO ~SetGlobal("View_Art_DBirds","AR0608",1)
~ GOTO 4
  IF ~  PartyHasItem("DwfMug")
Global("CW_Caught_Bird","AR0608",0)
~ THEN REPLY #31497 /* ~Złap jeden odłamek do Wiecznie Mroźnego Pucharu.~ */ DO ~SetGlobal("View_Art_DBirds","AR0608",1)
SetGlobal("CW_Caught_Bird","AR0608",1)
DestroyPartyItem("DwfMug",FALSE)
GiveItemCreate("DwfMug2",Protagonist,1,0,0)
~ GOTO 8
END

IF ~~ THEN BEGIN 1 // from: 0.1 4.1
  SAY #31498 /* ~Gdy sięgasz, by dotknąć jednego z wirujących odłamków, palec twój wkracza w strefę lodowatego wiatru wznoszącego się nad piedestałem. Wokół twego palca zaczyna się błyskawicznie formować skorupa odmrażającego lodu, co sprawia, iż momentalnie cofasz rękę.~ */
  IF ~~ THEN REPLY #31499 /* ~Zostaw je w spokoju.~ */ EXIT
  IF ~  HPLT(Protagonist,3)
~ THEN REPLY #31500 /* ~Wsadź palec ponownie i dotknij któregoś.~ */ GOTO 2
  IF ~  HPGT(Protagonist,2)
~ THEN REPLY #31501 /* ~Wsadź palec ponownie i dotknij któregoś.~ */ DO ~Damage(Protagonist,LOWER,2)
~ GOTO 3
  IF ~~ THEN REPLY #31502 /* ~Pochwyć jeden odłamek.~ */ GOTO 4
  IF ~  PartyHasItem("DwfMug")
Global("CW_Caught_Bird","AR0608",0)
~ THEN REPLY #31503 /* ~Złap jeden odłamek do Wiecznie Mroźnego Pucharu.~ */ DO ~SetGlobal("CW_Caught_Bird","AR0608",1)
DestroyPartyItem("DwfMug",FALSE)
GiveItemCreate("DwfMug2",Protagonist,1,0,0)
~ GOTO 8
END

IF ~~ THEN BEGIN 2 // from: 1.1
  SAY #31504 /* ~Wsadzasz palec w sferę lodowatego wiatru. Mimo iż jeszcze nie zdajesz sobie z tego sprawy, twój palec wskazujący zamarza. Jeden z wirujących odłamków uderza w niego, co sprawia, iż czubek twego palca odłamuje się przy wtórze przyszywającego *trzasku* i przetacza po podłodze pasażu. Rana, która normalnie byłaby niegroźna, teraz, gdy jesteś w opłakanym stanie, prowadzi do twojej śmierci.~ */
  IF ~~ THEN REPLY #31505 /* ~Zapadnij w ciemność...~ */ DO ~Kill(Protagonist)
~ EXIT
END

IF ~~ THEN BEGIN 3 // from: 1.2
  SAY #31506 /* ~Wsadzasz palec w sferę lodowatego wiatru. Nie zdajesz sobie sprawy, że twój palec wskazujący zamarza. Jeden z wirujących odłamków uderza w niego, co sprawia, iż czubek twego palca odłamuje się przy wtórze przyszywającego *trzasku* i przetacza po podłodze pasażu. Lodowate Mroczne Ptaki wirują nieprzerwanie po swych orbitach, gdy czekasz, aż odrośnie ci utracony koniuszek palca.~ */
  IF ~  PartyHasItem("DwfMug")
Global("CW_Caught_Bird","AR0608",0)
~ THEN REPLY #31507 /* ~Złap jednen odłamek do Wiecznie Mroźnego Pucharu.~ */ DO ~SetGlobal("CW_Caught_Bird","AR0608",1)
DestroyPartyItem("DwfMug",FALSE)
GiveItemCreate("DwfMug2",Protagonist,1,0,0)
~ GOTO 8
  IF ~~ THEN REPLY #31508 /* ~Odejdź - mając nadzieję, że nikt tego nie widział.~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 0.2 1.3
  SAY #31509 /* ~Gdy sięgasz, by pochwycić jeden z wirujących odłamków, palec twój wkracza w strefę lodowatego wiatru wznoszącego się znad piedestału. Wokół twego palca zaczyna się błyskawicznie formować skorupa odmrażającego lodu, co sprawia, iż momentalnie cofasz rękę.~ */
  IF ~~ THEN REPLY #31510 /* ~Zostaw je w spokoju.~ */ EXIT
  IF ~~ THEN REPLY #31511 /* ~Dotknij jednego z odłamków.~ */ GOTO 1
  IF ~  HPLT(Protagonist,6)
~ THEN REPLY #31512 /* ~Wsadź rękę ponownie i pochwyć któryś.~ */ GOTO 5
  IF ~  HPGT(Protagonist,5)
~ THEN REPLY #31513 /* ~Wsadź rękę ponownie i pochwyć któryś.~ */ DO ~Damage(Protagonist,LOWER,5)
~ GOTO 6
  IF ~  PartyHasItem("DwfMug")
Global("CW_Caught_Bird","AR0608",0)
~ THEN REPLY #31514 /* ~Złap jeden odłamek do Wiecznie Mroźnego Pucharu.~ */ DO ~SetGlobal("CW_Caught_Bird","AR0608",1)
DestroyPartyItem("DwfMug",FALSE)
GiveItemCreate("DwfMug2",Protagonist,1,0,0)
~ GOTO 8
END

IF ~~ THEN BEGIN 5 // from: 4.2
  SAY #31515 /* ~Wsadzasz dłoń w sferę lodowatego wiatru. Mimo iż nie zdajesz sobie z tego sprawy, zamarza ona, gdy zamykasz ją wokół jednego z Mrocznych Ptaków. Inny wirujący odłamek uderza w twoją pięść, co sprawia, iż odłamuje się ona w nadgarstku przy wtórze przyszywającego *trzasku* i uderza o podłogę pasażu. Jako iż już wcześniej znajdowałeś się w opłakanym stanie, padasz na podłogę i umierasz.~ */
  IF ~~ THEN REPLY #31516 /* ~Zapadnij w ciemność...~ */ DO ~Kill(Protagonist)
~ EXIT
END

IF ~~ THEN BEGIN 6 // from: 4.3
  SAY #31517 /* ~Wsadzasz dłoń w sferę lodowatego wiatru. Mimo iż nie zdajesz sobie z tego sprawy, zamarza ona, gdy zamykasz ją wokół jednego z Mrocznych Ptaków. Inny wirujący odłamek uderza w twoją pięść, co sprawia, iż odłamuje się ona w nadgarstku przy wtórze przyszywającego *trzasku* i uderza o podłogę pasażu.~ */
  IF ~~ THEN REPLY #31518 /* ~Podnieś dłoń i przymocuj ją ponownie. Szybko!~ */ GOTO 7
END

IF ~~ THEN BEGIN 7 // from: 6.0
  SAY #31519 /* ~Podnosisz pokrytą lodem pięść i przykładasz do krwawiącego kikuta. Zauważasz też, że pochwycony przez ciebie Mroczny Ptak - ostry niczym brzytwa odłamek czarnego lodu - całkowicie się roztopił. Zdaje się, iż trzeba go złapać w coś, co utrzyma go w zimnie. W końcu, gdy tkanka zaczyna rozmarzać i regenerować się, do twojej ręki powraca ciepło i czucie.~ */
  IF ~  PartyHasItem("DwfMug")
Global("CW_Caught_Bird","AR0608",0)
~ THEN REPLY #31520 /* ~Złap jeden odłamek do Wiecznie Mroźnego Pucharu.~ */ DO ~SetGlobal("CW_Caught_Bird","AR0608",1)
DestroyPartyItem("DwfMug",FALSE)
GiveItemCreate("DwfMug2",Protagonist,1,0,0)
~ GOTO 8
  IF ~~ THEN REPLY #31521 /* ~Odejdź - mając nadzieję, że nikt tego nie widział.~ */ EXIT
END

IF ~~ THEN BEGIN 8 // from: 0.3 1.4 3.0 4.4 7.0
  SAY #31522 /* ~'Zanurzasz' puchar w sferze unoszącego się znad piedestałem wiatru i, przy wtórze delikatnego *brzdęknięcia*, łapiesz niewielki odłamek. Spoglądając do pucharu możesz dostrzec, iż Mroczny Ptak jest ostrym niczym brzytwa odpryskiem czarnego lodu. Jedynie magiczne właściwości pucharu sprawiają, że odłamek ów się nie topi.~ */
  IF ~~ THEN REPLY #31523 /* ~Odejdź.~ */ EXIT
END
