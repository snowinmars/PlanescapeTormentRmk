// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DS_KING.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\pl_PL\dialog.tlk
// dialogF  : (none)

BEGIN ~DS_KING~

IF ~  Global("Took_Skull","AR1501",0)
~ THEN BEGIN 0 // from:
  SAY #51339 /* ~Te zniszczone zwłoki w grawerowanej, odświętnej zbroi, ciągle robią wrażenie, choć są pokryte grubą warstwą kurzu i pajęczyn. Prawdopodobnie należą one do Milczącego Króla. Wygląda na to, że z pana i władcy Ziem Umarłych została tylko wyschnięta skorupa.~ */
  IF ~  Global("1501_Undead_Alert","GLOBAL",1)
~ THEN REPLY #51340 /* ~Zabierz jego czaszkę.~ */ DO ~SetGlobal("Silent_King","GLOBAL",1)
SetGlobal("Took_Skull","AR1501",1)
GiveItemCreate("SkullSK",Protagonist,0,0,0)
~ GOTO 1
  IF ~  Global("1501_Undead_Alert","GLOBAL",0)
!Class(Protagonist,THIEF)
~ THEN REPLY #51425 /* ~Zabierz jego czaszkę.~ */ DO ~SetGlobal("Silent_King","GLOBAL",1)
~ GOTO 2
  IF ~  Global("1501_Undead_Alert","GLOBAL",0)
Class(Protagonist,THIEF)
~ THEN REPLY #51426 /* ~Zabierz jego czaszkę.~ */ DO ~SetGlobal("Silent_King","GLOBAL",1)
~ GOTO 6
  IF ~~ THEN REPLY #65532 /* ~Odejdź.~ */ DO ~SetGlobal("Silent_King","GLOBAL",1)
~ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #51427 /* ~Z całych sił kręcisz i ciągniesz za głowę Milczącego Króla... ale bez żadnego efektu. W końcu postanawiasz oprzeć stopę na oparciu tronu i w ten sposób, przy akompaniamencie ostrego chrzęstu, udaje ci się oderwać czaszkę.~ */
  IF ~~ THEN REPLY #51428 /* ~Odejdź.~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 0.1
  SAY #51429 /* ~Oderwanie głowy Milczącego Króla niewątpliwie rozzłości tych, którzy znajdują się w sali tronowej... Najpierw będziesz musiał poradzić sobie z nimi.~ */
  IF ~~ THEN REPLY #51430 /* ~I tak spróbuj zabrać jego czaszkę.~ */ DO ~SetGlobal("1501_Undead_Alert","GLOBAL",1)
~ GOTO 3
  IF ~~ THEN REPLY #51431 /* ~Odejdź.~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 2.0 6.1
  SAY #51432 /* ~Z całych sił kręcisz i ciągniesz za głowę Milczącego Króla... ale bez żadnego efektu. W końcu postanawiasz oprzeć stopę na oparciu tronu i w ten sposób udaje ci się oderwać czaszkę, przy akompaniamencie ostrego chrzęstu... który alarmuje wszystkich obecnych w komnacie. Odwracają się i na widok, jak urywasz głowę ich ukochanemu królowi, rzucają się do ataku...~ */
  IF ~~ THEN REPLY #51433 /* ~Broń się.~ */ DO ~SetGlobal("Took_Skull","AR1501",1)
GiveItemCreate("SkullSK",Protagonist,0,0,0)
~ EXIT
END

IF ~  Global("Took_Skull","AR1501",1)
~ THEN BEGIN 4 // from:
  SAY #51434 /* ~Wygląda na to, że z pana i władcy Ziem Umarłych zostało niewiele więcej, jak tylko wyschnięta skorupa - i to w dodatku bezgłowa, po tym, jak oderwałeś jej czaszkę.~ */
  IF ~~ THEN REPLY #51435 /* ~Odejdź.~ */ EXIT
END

IF ~  Global("Took_Skull","AR1501",2)
~ THEN BEGIN 5 // from:
  SAY #65524 /* ~Wygląda na to, że z pana i władcy Ziem Umarłych zostało niewiele więcej, jak tylko wyschnięta skorupa. Na ramionach, trochę przekrzywiona, spoczywa czaszka, którą zamieniłeś za głowę króla.~ */
  IF ~~ THEN REPLY #65525 /* ~Odejdź.~ */ EXIT
END

IF ~~ THEN BEGIN 6 // from: 0.2
  SAY #65526 /* ~Oderwanie głowy Milczącego Króla niewątpliwie rozzłości tych, którzy znajdują się w sali tronowej... Najpierw będziesz musiał poradzić sobie z nimi. Jednakże, gdybyś miał jakąś inną czaszkę, może byłbyś na tyle szybki, żeby podmienić czaszki pod hełmem Milczącego Króla, zanim ktokolwiek to spostrzeże...~ */
  IF ~  PartyHasItem("Skull")
~ THEN REPLY #65527 /* ~Podmień czaszkę, którą masz przy sobie, za czaszkę Milczącego Króla.~ */ DO ~SetGlobal("Took_Skull","AR1501",2)
DestroyPartyItem("Skull",FALSE)
GiveItemCreate("SkullSK",Protagonist,1,0,0)
AddexperienceParty(500)
~ GOTO 7
  IF ~  !PartyHasItem("Skull")
~ THEN REPLY #65530 /* ~I tak spróbuj zabrać jego czaszkę.~ */ DO ~SetGlobal("1501_Undead_Alert","GLOBAL",1)
~ GOTO 3
  IF ~~ THEN REPLY #65531 /* ~Odejdź.~ */ EXIT
END

IF ~~ THEN BEGIN 7 // from: 6.0
  SAY #65528 /* ~Po upewnieniu się, że nikt na ciebie nie patrzy, podnosisz hełm Milczącego Króla, wyciągasz czaszkę ze swojego ekwipunku i wkładasz na miejsce starej. Kiedy z powrotem założysz hełm, nikt się nigdy nie zorientuje...~ */
  IF ~~ THEN REPLY #65529 /* ~Odejdź.~ */ EXIT
END
