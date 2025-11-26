// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DTIT02.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\cs_CZ\dialog.tlk
// dialogF  : (none)

BEGIN ~DTIT02~

IF ~  True()
~ THEN BEGIN 0 // from:
  SAY #43015 /* ~Tato osoba uvolněně zkoumá zvonečky ověšené figuríny rozmístěné podél místnosti. Pohlédla na tebe jak se přibližuješ. "Hmm?"~ */
  IF ~~ THEN REPLY #43016 /* ~"Co je tohle za místo?"~ */ GOTO 1
  IF ~~ THEN REPLY #43017 /* ~"Nic... jen procházím. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #43018 /* ~"Tohle je zlodějská výcviková místnost. Figuríny, támhle, jsou ke cvičení v odřezávání měšců a vybírání kapes."~ */
  IF ~  Global("Eli","GLOBAL",0)
~ THEN REPLY #43019 /* ~"Kde je trenér?"~ */ DO ~SetGlobal("Eli","GLOBAL",1)
~ JOURNAL #66872 /* ~V občanské hale jsem našel cvičební místnost zlodějů, ale nebyl tam žádný učitel. Jeden z trénujících kapsářů mi řekl, že učitel jménem Eli Havelock před chvílí z Haly odešel, a že ho zřejmě najdu někde v Úřednické Čtvrti. Popsal mi ho jako štíhlého muže střední výšky z tmavými vlasy a ostrými rysy.~ */ GOTO 2
  IF ~  GlobalGT("Eli","GLOBAL",0)
GlobalLT("Eli","GLOBAL",3)
~ THEN REPLY #66873 /* ~"Kde je cvičitel?"~ */ GOTO 2
  IF ~~ THEN REPLY #43020 /* ~"To je vše co jsem si přál vědět. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.0 1.1
  SAY #43021 /* ~"Právě teď se pravděpodobně potuluje po Čtvrti... někdo ho naštval a on vypadl z Haly a nadával přitom jako špaček. Jeho jméno je Havelock - Eli Havelock. Je tenký, střední výšky, černovlasý, s tmavou kůží a ostrými rysy."~ */
  IF ~~ THEN REPLY #43022 /* ~"To je vše co jsem si přál vědět. Sbohem."~ */ EXIT
END
