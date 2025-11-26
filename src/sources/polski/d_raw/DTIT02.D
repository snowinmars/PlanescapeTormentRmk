// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DTIT02.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\pl_PL\dialog.tlk
// dialogF  : (none)

BEGIN ~DTIT02~

IF ~  True()
~ THEN BEGIN 0 // from:
  SAY #43015 /* ~Osoba ta sprawdza rutynowo poczynania adeptów sztuki kradzieży, trenujących przy pomocy obwieszonych dzwonkami manekinów. Kiedy się zbliżasz, obraca ku tobie twarz. "Hmm?"~ */
  IF ~~ THEN REPLY #43016 /* ~"Co to za miejsce?"~ */ GOTO 1
  IF ~~ THEN REPLY #43017 /* ~"Nic... Po prostu tędy przechodziłem. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #43018 /* ~"To komnata treningowa złodziei. Te łebki tutaj uczą się sztuki przecinania portmonetek i kradzieży kieszonkowych."~ */
  IF ~  Global("Eli","GLOBAL",0)
~ THEN REPLY #43019 /* ~"Gdzie jest trener?"~ */ DO ~SetGlobal("Eli","GLOBAL",1)
~ JOURNAL #66872 /* ~Odnalazłem w Miejskim Gmachu Rozrywki komnatę ćwiczebną złodziei, ale w środku nie było wychowawcy złodziei. Jeden z pochłoniętych złodziejskim treningiem młodzieńców poinformował mnie, że Eli Hawelok, ich wychowawca, niedawno w uniesieniu opuścił Gmach i prawdopodobnie przebywa gdzieś na terenie Dzielnicy Urzędników. Haweloka opisano mi jako człowieka szczupłego, średniego wzrostu, o czarnych oczach, smagłej skórze i ostrych rysach twarzy.~ */ GOTO 2
  IF ~  GlobalGT("Eli","GLOBAL",0)
GlobalLT("Eli","GLOBAL",3)
~ THEN REPLY #66873 /* ~"Gdzie jest trener?"~ */ GOTO 2
  IF ~~ THEN REPLY #43020 /* ~"To wszystko, co chciałem wiedzieć. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.0 1.1
  SAY #43021 /* ~"Prawdopodobnie snuje się gdzieś po Dzielnicy... Ktoś go wyprowadził z równowagi i wypadł z Gmachu Rozrywki, klnąc na czym świat stoi. Ma imię Hawelok - Eli Hawelok. To człek szczupły, średniego wzrostu, o ciemnych oczach, ogorzałej cerze i ostrych rysach twarzy."~ */
  IF ~~ THEN REPLY #43022 /* ~"To wszystko, co chciałem wiedzieć. Żegnaj."~ */ EXIT
END
