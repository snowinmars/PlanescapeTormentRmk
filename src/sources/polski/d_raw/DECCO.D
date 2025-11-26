// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DECCO.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\pl_PL\dialog.tlk
// dialogF  : (none)

BEGIN ~DECCO~
//////////////////////////////////////////////////
// WARNING: this file contains non-trivial WEIGHTs
//////////////////////////////////////////////////

IF WEIGHT #5 /* Triggers after states #: 25 26 37 45 46 even though they appear after this state */
~  GlobalLT("Ecco_Name","AR0605",2)
~ THEN BEGIN 0 // from:
  SAY #38209 /* ~Ta uderzająco piękna młoda kobieta ma skórę koloru polerowanej miedzi. Jej kształtne ciało opina prześwitująca biała sukienka, podtrzymywana złotymi zapięciami.~ */
  IF ~  Global("Ecco","GLOBAL",0)
~ THEN REPLY #38269 /* ~"Witaj..."~ */ DO ~SetGlobal("Ecco","GLOBAL",1)
~ GOTO 1
  IF ~  Global("Ecco","GLOBAL",1)
~ THEN REPLY #38270 /* ~"Witaj ponownie..."~ */ GOTO 1
  IF ~~ THEN REPLY #38271 /* ~Zostaw ją w spokoju.~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0 0.1
  SAY #2909 /* ~Kobieta kiwa głową i uśmiecha się przez krótką chwilę. W twoje nozdrza uderza woń jej uperfumowanych włosów.~ */
  IF ~~ THEN REPLY #38272 /* ~"Mam kilka pytań..."~ */ GOTO 2
  IF ~~ THEN REPLY #38273 /* ~"Teraz się pożegnam. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.0 3.2 5.1 6.4 7.1 10.6 11.1 12.1 13.1 14.1 15.1 16.1 25.0 29.0 30.0 40.0 41.0 42.0 43.1 44.0 45.0 46.0 47.1 49.0 51.1 52.1 53.1 54.0 55.0
  SAY #2910 /* ~Kiwa głową.~ */
  IF ~  Global("Ecco_Name","AR0605",1)
~ THEN REPLY #38274 /* ~"Masz na imię Ecco?"~ */ DO ~SetGlobal("Ecco_Name","AR0605",2)
~ JOURNAL #66705 /* ~Ustaliłem, że milcząca kurtyzana ma na imię Ecco.~ */ GOTO 6
  IF ~  Global("Ecco_Speak","GLOBAL",1)
GlobalLT("Ecco_Rumor_6","AR0605",2)
~ THEN REPLY #38276 /* ~"Mogę zapytać dlaczego nie potrafisz się porozumiewać?"~ */ GOTO 10
  IF ~  Global("Ecco_Speak","GLOBAL",2)
~ THEN REPLY #38278 /* ~"Znasz *jakikolwiek* sposób na odzyskanie głosu?"~ */ GOTO 21
  IF ~  GlobalLT("Ecco_Name","AR0605",2)
~ THEN REPLY #38279 /* ~"Kim jesteś?"~ */ GOTO 3
  IF ~  Global("Ecco_Speak","GLOBAL",5)
~ THEN REPLY #38283 /* ~"Co tu robisz?"~ */ GOTO 51
  IF ~  Global("Ecco_Speak","GLOBAL",5)
~ THEN REPLY #38284 /* ~"Możesz mi opowiedzieć o tym miejscu?"~ */ GOTO 47
  IF ~  GlobalLT("Ecco_Speak","GLOBAL",5)
~ THEN REPLY #38285 /* ~"Możesz mi opowiedzieć o tym miejscu?"~ */ GOTO 5
  IF ~  Global("Ecco_Speak","GLOBAL",5)
Global("Know_Ravel","GLOBAL",1)
Global("Know_Kesai_Ravel","AR0605",0)
~ THEN REPLY #38286 /* ~"Czy wiesz coś o Raveli Szaradnej?"~ */ GOTO 48
  IF ~  GlobalLT("Ecco_Speak","GLOBAL",5)
Global("Know_Ravel","GLOBAL",1)
~ THEN REPLY #38287 /* ~"Czy wiesz coś o Raveli Szaradnej?"~ */ GOTO 8
  IF ~  Global("Ecco_Speak","GLOBAL",5)
Global("Scent_Quest","AR0605",1)
~ THEN REPLY #38290 /* ~"Usiłuję znaleźć zapach Vivian... wiesz gdzie może być?"~ */ JOURNAL #66727 /* ~Jedna z kurtyzan poradziła mi, abym zwrócił się do Nenny i zorientował się, czy nie wie czegoś o osobistym zapachu Vivian. Nenny uchodzi za osobę, która zawsze wie, co się dzieje w jej otoczeniu.~ */ GOTO 30
  IF ~  GlobalLT("Ecco_Speak","GLOBAL",5)
Global("Scent_Quest","AR0605",1)
~ THEN REPLY #38291 /* ~"Usiłuję znaleźć zapach Vivian... wiesz gdzie może być?"~ */ GOTO 29
  IF ~  Global("Ecco_Speak","GLOBAL",5)
Global("Veil_Quest","AR0605",1)
~ THEN REPLY #38292 /* ~"Usiłuję znaleźć karmazynowy welon Marissy... wiesz gdzie może być?"~ */ JOURNAL #66728 /* ~Jedna z kurtyzan poradziła mi, abym zwrócił się do Nenny i zorientował się, czy nie wie czegoś o zniknięciu karmazynowego welonu. Nenny uchodzi za osobę, która zawsze wie, co się dzieje w jej otoczeniu.~ */ GOTO 30
  IF ~  GlobalLT("Ecco_Speak","GLOBAL",5)
Global("Veil_Quest","AR0605",1)
~ THEN REPLY #38293 /* ~"Usiłuję znaleźć karmazynowy welon Marissy... wiesz gdzie może być?"~ */ GOTO 29
  IF ~  Global("Grace_Quest","GLOBAL",1)
GlobalGT("Vivian","GLOBAL",0)
GlobalGT("Yves","GLOBAL",0)
GlobalGT("Nenny","GLOBAL",0)
GlobalGT("SadJuli","GLOBAL",0)
GlobalGT("Marissa","GLOBAL",0)
GlobalGT("Kesai","GLOBAL",0)
GlobalGT("Dolora","GLOBAL",0)
GlobalGT("Kimasxi","GLOBAL",0)
GlobalLT("Ecco_Speak","GLOBAL",5)
~ THEN REPLY #38294 /* ~"Rozmawiałem już z dziewięcioma kurtyzanami... Czy wiesz może, kim jest dziesiąta? Albo gdzie można ją znaleźć?"~ */ GOTO 53
  IF ~  Global("Grace_Quest","GLOBAL",1)
GlobalGT("Vivian","GLOBAL",0)
GlobalGT("Yves","GLOBAL",0)
GlobalGT("Nenny","GLOBAL",0)
GlobalGT("SadJuli","GLOBAL",0)
GlobalGT("Marissa","GLOBAL",0)
GlobalGT("Kesai","GLOBAL",0)
GlobalGT("Dolora","GLOBAL",0)
GlobalGT("Kimasxi","GLOBAL",0)
Global("Ecco_Speak","GLOBAL",5)
~ THEN REPLY #38295 /* ~"Rozmawiałem już z dziewięcioma kurtyzanami... Czy wiesz może, kim jest dziesiąta? Albo gdzie można ją znaleźć?"~ */ GOTO 54
  IF ~~ THEN REPLY #38296 /* ~"To właściwie nieważne. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 2.3
  SAY #38210 /* ~Uśmiecha się i dyga, ale nie reaguje.~ */
  IF ~  Global("Ecco_Name","AR0605",1)
~ THEN REPLY #38280 /* ~"Masz na imię Ecco?"~ */ DO ~SetGlobal("Ecco_Name","AR0605",2)
~ JOURNAL #66705 /* ~Ustaliłem, że milcząca kurtyzana ma na imię Ecco.~ */ GOTO 6
  IF ~  Global("Ecco_Speak","GLOBAL",0)
~ THEN REPLY #38297 /* ~"Możesz mówić?"~ */ DO ~SetGlobal("Ecco_Speak","GLOBAL",1)
~ GOTO 4
  IF ~~ THEN REPLY #38281 /* ~"Hmm. Mam kilka innych pytań..."~ */ GOTO 2
  IF ~~ THEN REPLY #38298 /* ~"Nieważne. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 3.1 5.0 6.3 9.0 53.0
  SAY #38211 /* ~Potrząsa głową i smutno się do ciebie uśmiecha.~ */
  IF ~  NearbyDialog("DMorte")
~ THEN JOURNAL #66704 /* ~Jedna z kurtyzan w Przybytku w jakiś sposób straciła umiejętność kontaktowania się z otoczeniem. Dziewczyna ta nie potrafi albo nie chce ani pisać, ani pokazywać na migi. To prowadzi do oczywistego wniosku, że nie będę mógł z nią porozmawiać, o ile nie odzyska głosu.~ */ EXTERN ~DMORTE~ 402
  IF ~  !NearbyDialog("DMorte")
~ THEN REPLY #38299 /* ~"W takim razie może potrafisz pisać, albo pokazywać na migi?"~ */ JOURNAL #66704 /* ~Jedna z kurtyzan w Przybytku w jakiś sposób straciła umiejętność kontaktowania się z otoczeniem. Dziewczyna ta nie potrafi albo nie chce ani pisać, ani pokazywać na migi. To prowadzi do oczywistego wniosku, że nie będę mógł z nią porozmawiać, o ile nie odzyska głosu.~ */ GOTO 7
END

IF ~~ THEN BEGIN 5 // from: 2.6
  SAY #38212 /* ~Spogląda na ciebie i unosi brew.~ */
  IF ~  Global("Ecco_Speak","GLOBAL",0)
~ THEN REPLY #38300 /* ~"Możesz mówić?"~ */ DO ~SetGlobal("Ecco_Speak","GLOBAL",1)
~ GOTO 4
  IF ~~ THEN REPLY #38301 /* ~"Mam jeszcze kilka pytań..."~ */ GOTO 2
  IF ~~ THEN REPLY #38302 /* ~"Nieważne. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 6 // from: 2.0 3.0 21.1
  SAY #38213 /* ~Kiwa głową uśmiechając się przymilnie.~ */
  IF ~  Global("Ecco_Speak","GLOBAL",2)
~ THEN REPLY #38303 /* ~Przyrzeczenie: "Poszukam sposobu na przywrócenie ci głosu, przysięgam."~ */ DO ~IncrementGlobalOnceEx("GLOBALLawful_Ecco_1","GLOBALLaw",1)
IncrementGlobalOnceEx("GLOBALGood_Ecco_1","GLOBALGood",1)
SetGlobal("Ecco_Speak","GLOBAL",3)
SetGlobal("Ecco_Quest","AR0605",1)
~ GOTO 23
  IF ~  Global("Ecco_Speak","GLOBAL",2)
~ THEN REPLY #38304 /* ~"Postaram się znaleźć jakiś sposób na przywrócenie ci głosu."~ */ DO ~IncrementGlobalOnceEx("GLOBALGood_Ecco_1","GLOBALGood",1)
SetGlobal("Ecco_Speak","GLOBAL",3)
SetGlobal("Ecco_Quest","AR0605",1)
~ GOTO 23
  IF ~  Global("Ecco_Speak","GLOBAL",2)
~ THEN REPLY #38305 /* ~"Mogę spróbować przywrócić ci głoś... za odpowiednią opłatą."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Ecco_1","GLOBALGood",-1)
SetGlobal("Ecco_Speak","GLOBAL",3)
SetGlobal("Ecco_Quest","AR0605",2)
~ GOTO 24
  IF ~  Global("Ecco_Speak","GLOBAL",0)
~ THEN REPLY #38306 /* ~"Możesz mówić?"~ */ DO ~SetGlobal("Ecco_Speak","GLOBAL",1)
~ GOTO 4
  IF ~~ THEN REPLY #38307 /* ~"Mam jeszcze kilka pytań..."~ */ GOTO 2
  IF ~~ THEN REPLY #52815 /* ~"To wszystko, co chciałem wiedzieć. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 7 // from: 4.1
  SAY #38214 /* ~Wydyma wargi i potrząsa głową.~ */
  IF ~~ THEN REPLY #38308 /* ~"Mogę zapytać dlaczego nie potrafisz się porozumiewać?"~ */ GOTO 10
  IF ~~ THEN REPLY #38309 /* ~"Znowu to samo, mam jeszcze kilka pytań..."~ */ GOTO 2
  IF ~~ THEN REPLY #38310 /* ~"W takim razie żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 8 // from: 2.8
  SAY #38215 /* ~Oczy jej rozbłyskają i uśmiecha się. Kiwa do ciebie głową.~ */
  IF ~~ THEN REPLY #38311 /* ~"Co? Co o niej wiesz?"~ */ JOURNAL #66724 /* ~Wydaje się, że milcząca kurtyzana wie coś o Raveli Szaradnej... Ale jako, że dziewczyna nie jest w stanie komunikować się z otoczeniem, wyciągnięcie od niej tego, co wie o Raveli będzie cokolwiek trudne.~ */ GOTO 9
END

IF ~~ THEN BEGIN 9 // from: 8.0
  SAY #38216 /* ~Po prostu na ciebie patrzy.~ */
  IF ~  Global("Ecco_Speak","GLOBAL",0)
~ THEN REPLY #38312 /* ~"Możesz mówić?"~ */ DO ~SetGlobal("Ecco_Speak","GLOBAL",1)
~ GOTO 4
  IF ~  Global("Ecco_Speak","GLOBAL",1)
~ THEN REPLY #38313 /* ~"Mogę zapytać dlaczego nie potrafisz się porozumiewać?"~ */ GOTO 10
  IF ~~ THEN REPLY #38314 /* ~"W takim razie żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 10 // from: 2.1 7.0 9.1 11.0 12.0 13.0 14.0 15.0
  SAY #38217 /* ~Wzdycha miękko i kiwa do ciebie głową.~ */
  IF ~  Global("Ecco_Rumor_1","AR0605",1)
~ THEN REPLY #38315 /* ~"Milczysz z powodu złamanego serca?"~ */ DO ~SetGlobal("Ecco_Rumor_1","AR0605",2)
~ GOTO 11
  IF ~  Global("Ecco_Rumor_2","AR0605",1)
~ THEN REPLY #38316 /* ~"Znasz słowo które odwróci zaklęcie, jeśli zostanie wypowiedziane?"~ */ DO ~SetGlobal("Ecco_Rumor_2","AR0605",2)
~ GOTO 12
  IF ~  Global("Ecco_Rumor_3","AR0605",1)
~ THEN REPLY #38317 /* ~"Twoje uczucia zostały zranione? To dlatego nie możesz mówić?"~ */ DO ~SetGlobal("Ecco_Rumor_3","AR0605",2)
~ GOTO 13
  IF ~  Global("Ecco_Rumor_4","AR0605",1)
~ THEN REPLY #38318 /* ~"Twój głoś spowodował czyjąś śmierć, albo jakąś tragedię?"~ */ DO ~SetGlobal("Ecco_Rumor_4","AR0605",2)
~ GOTO 14
  IF ~  Global("Ecco_Rumor_5","AR0605",1)
~ THEN REPLY #38319 /* ~"Z jakieś przyczyny złożyłaś przysięgę milczenia?"~ */ DO ~SetGlobal("Ecco_Rumor_5","AR0605",2)
~ GOTO 15
  IF ~  Global("Ecco_Rumor_6","AR0605",1)
~ THEN REPLY #38320 /* ~"Twój głoś został skradziony?"~ */ DO ~SetGlobal("Ecco_Rumor_6","AR0605",2)
SetGlobal("Ecco_Speak","GLOBAL",2)
~ JOURNAL #66725 /* ~Okazuje się, że to, co Dolora powiedziała mi o Ecco było prawdą. Ecco nie może mówić, bo okradziono ją z głosu.~ */ GOTO 16
  IF ~~ THEN REPLY #38321 /* ~"Pozwól mi zapytac o coś innego..."~ */ GOTO 2
  IF ~~ THEN REPLY #38322 /* ~"Nieważne. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 11 // from: 10.0
  SAY #38218 /* ~Uśmiecha się przyjemnie i potrząsa głową.~ */
  IF ~~ THEN REPLY #38323 /* ~"Mogę w takim razie zapytać, czy było to coś innego?"~ */ GOTO 10
  IF ~~ THEN REPLY #38324 /* ~"Mam kilka pytań..."~ */ GOTO 2
  IF ~~ THEN REPLY #38325 /* ~"To wszystko, co chciałem wiedzieć. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 12 // from: 10.1
  SAY #38219 /* ~Jej oczy rozszerzają się w zaskoczeniu... nagle, przewracając oczami i potrząsając głową przesyła ci promienny uśmiech.~ */
  IF ~~ THEN REPLY #38326 /* ~"Mogę w takim razie zapytać, czy było to coś innego?"~ */ GOTO 10
  IF ~~ THEN REPLY #38327 /* ~"Mam kilka pytań..."~ */ GOTO 2
  IF ~~ THEN REPLY #38328 /* ~"To wszystko, co chciałem wiedzieć. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 13 // from: 10.2
  SAY #38220 /* ~Patrzy na ciebie dziwnie i powoli potrząsa głową...~ */
  IF ~~ THEN REPLY #38329 /* ~"Mogę w takim razie zapytać, czy było to coś innego?"~ */ GOTO 10
  IF ~~ THEN REPLY #38330 /* ~"Mam kilka pytań..."~ */ GOTO 2
  IF ~~ THEN REPLY #38331 /* ~"To wszystko, co chciałem wiedzieć. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 14 // from: 10.3
  SAY #38221 /* ~Przerywa przy tym, otwiera usta i marszczy brwi. Po chwili potrząsa głową.~ */
  IF ~~ THEN REPLY #38332 /* ~"Mogę w takim razie zapytać, czy było to coś innego?"~ */ GOTO 10
  IF ~~ THEN REPLY #38333 /* ~"Mam kilka pytań..."~ */ GOTO 2
  IF ~~ THEN REPLY #38334 /* ~"To wszystko, co chciałem wiedzieć. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 15 // from: 10.4
  SAY #38222 /* ~Krzywi się i potrząsa głową.~ */
  IF ~~ THEN REPLY #38335 /* ~"Mogę w takim razie zapytać, czy było to coś innego?"~ */ GOTO 10
  IF ~~ THEN REPLY #38336 /* ~"Mam kilka pytań..."~ */ GOTO 2
  IF ~~ THEN REPLY #38337 /* ~"To wszystko, co chciałem wiedzieć. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 16 // from: 10.5
  SAY #38223 /* ~Energicznie kiwa głową, klaska i uśmiecha się do ciebie.~ */
  IF ~~ THEN REPLY #38338 /* ~"Znasz *jakikolwiek* sposób na odzyskanie głosu?"~ */ GOTO 21
  IF ~~ THEN REPLY #38339 /* ~"Mam kilka pytań..."~ */ GOTO 2
  IF ~~ THEN REPLY #38340 /* ~"To wszystko, co chciałem wiedzieć. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 17 // from:
  SAY #38224 /* ~.~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 18 // from:
  SAY #38225 /* ~.~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 19 // from:
  SAY #38226 /* ~.~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 20 // from:
  SAY #38227 /* ~.~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 21 // from: 2.2 16.0
  SAY #38228 /* ~Patrzy na ciebie błagalnie, jakby spodziewała się odpowiedzi.~ */
  IF ~  Global("Ecco_Name","AR0605",0)
~ THEN REPLY #38349 /* ~"By zapytać o twój głos muszę znać twoje imię..."~ */ GOTO 22
  IF ~  Global("Ecco_Name","AR0605",1)
~ THEN REPLY #38350 /* ~"By zapytać o twój głos muszę znać twoje imię... Nazywasz się 'Ecco'?"~ */ DO ~SetGlobal("Ecco_Name","AR0605",2)
~ JOURNAL #66705 /* ~Ustaliłem, że milcząca kurtyzana ma na imię Ecco.~ */ GOTO 6
  IF ~  Global("Ecco_Name","AR0605",2)
~ THEN REPLY #38351 /* ~Przyrzeczenie: "Poszukam sposobu na przywrócenie ci głosu, przysięgam."~ */ DO ~IncrementGlobalOnceEx("GLOBALLawful_Ecco_1","GLOBALLaw",1)
IncrementGlobalOnceEx("GLOBALGood_Ecco_1","GLOBALGood",1)
SetGlobal("Ecco_Speak","GLOBAL",3)
SetGlobal("Ecco_Quest","AR0605",1)
~ GOTO 23
  IF ~  Global("Ecco_Name","AR0605",2)
~ THEN REPLY #38352 /* ~"Postaram się znaleźć jakiś sposób na przywrócenie ci głosu."~ */ DO ~IncrementGlobalOnceEx("GLOBALGood_Ecco_1","GLOBALGood",1)
SetGlobal("Ecco_Speak","GLOBAL",3)
SetGlobal("Ecco_Quest","AR0605",1)
~ GOTO 23
  IF ~  Global("Ecco_Name","AR0605",2)
~ THEN REPLY #38353 /* ~"Mogę spróbować przywrócić ci głoś... za odpowiednią opłatą."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Ecco_1","GLOBALGood",-1)
SetGlobal("Ecco_Speak","GLOBAL",3)
SetGlobal("Ecco_Quest","AR0605",2)
~ GOTO 24
  IF ~~ THEN REPLY #38354 /* ~"Najlepiej będzie, jak już pójdę. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 22 // from: 21.0
  SAY #38229 /* ~Wzrusza ramionami i marszczy brwi.~ */
  IF ~~ THEN REPLY #38357 /* ~"Cóż, najlepiej zapytam kogoś innego. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 23 // from: 6.0 6.1 21.2 21.3
  SAY #38230 /* ~Ecco kiwa głową, uśmiecha się do ciebie, w jej oczach widać wdzięczność.~ */
  IF ~~ THEN REPLY #38358 /* ~"W takim razie poszukam czegoś, co przywróci ci głos. Żegnaj, Ecco."~ */ JOURNAL #66726 /* ~Powiedziałem Ecco, że będę próbował znaleźć coś, co pozwoli jej znowu przemówić.~ */ EXIT
END

IF ~~ THEN BEGIN 24 // from: 6.2 21.4
  SAY #38231 /* ~Ecco marszczy brwi mrużąc na ciebie oczy. Przez chwilę patrzy w bok, wzdycha i kiwa do ciebie głową.~ */
  IF ~~ THEN REPLY #38359 /* ~"Umowa stoi. Poszukam czegoś co przywróci ci głos. Żegnaj, Ecco."~ */ JOURNAL #66726 /* ~Powiedziałem Ecco, że będę próbował znaleźć coś, co pozwoli jej znowu przemówić.~ */ EXIT
END

IF WEIGHT #4 /* Triggers after states #: 26 37 45 46 even though they appear after this state */
~  Global("Ecco_Name","AR0605",2)
~ THEN BEGIN 25 // from:
  SAY #38232 /* ~Gdy się zbliżasz, Ecco wykonuje dyg, a na jej starannie wymalowanych ustach pojawia się nieznaczny uśmiech.~ */
  IF ~~ THEN REPLY #38360 /* ~"Mam kilka pytań..."~ */ GOTO 2
  IF ~~ THEN REPLY #38361 /* ~"Tylko przechodzę, Ecco. Żegnaj."~ */ EXIT
END

IF WEIGHT #3 /* Triggers after states #: 37 45 46 even though they appear after this state */
~  Global("Ecco_Speak","GLOBAL",3)
~ THEN BEGIN 26 // from:
  SAY #38233 /* ~Gdy się zbliżasz, Ecco patrzy na ciebie z nadzieją, zagryzając wargi.~ */
  IF ~  PartyHasItem("Ftongue")
~ THEN REPLY #38362 /* ~"Zdobyłem dla ciebie ten Język Biesa..."~ */ DO ~DestroyPartyItem("Ftongue",FALSE)
SetGlobal("Ecco_Speak","GLOBAL",4)
~ GOTO 31
  IF ~~ THEN REPLY #38364 /* ~"Jeszcze nie znalazłem sposobu na przywrócenie ci głosu. Wrócę jak mi się uda."~ */ EXIT
END

IF ~~ THEN BEGIN 27 // from:
  SAY #38234 /* ~.~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 28 // from:
  SAY #38235 /* ~.~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 29 // from: 2.10 2.12
  SAY #38236 /* ~Potrząsa głową, wzrusza ramionami i posyła ci skruszone spojrzenie.~ */
  IF ~~ THEN REPLY #38368 /* ~"W takim razie pozwól mi zapytać o coś innego..."~ */ GOTO 2
  IF ~~ THEN REPLY #38369 /* ~"To wszystko, co chciałem wiedzieć. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 30 // from: 2.9 2.11
  SAY #38237 /* ~Ecco potrząsa głową. "Nie, nie mam pojęcia. Rozmawiałeś z Nenny? Zawsze gdzieś się kręci, obejmując wszystko swoimi wielkimi oczami."~ */
  IF ~~ THEN REPLY #38370 /* ~"Mam kilka innych pytań..."~ */ GOTO 2
  IF ~~ THEN REPLY #38371 /* ~"Muszę już iść. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 31 // from: 26.0
  SAY #38238 /* ~Unosi brew i patrzy na ciebie sceptycznie.~ */
  IF ~~ THEN REPLY #38372 /* ~"Powiedziano mi, że gdy umieścisz go w swoich ustach, odzyskasz zdolność porozumiewania się."~ */ GOTO 32
END

IF ~~ THEN BEGIN 32 // from: 31.0
  SAY #38239 /* ~Kiwa głową i bierze od ciebie butelkę. Ostrożnie wyciąga z solnego roztworu wyrwany język. Przez chwilę patrzy na niego z obrzydzeniem, po czym wkłada do ust... nagle jej oczy się rozszerzają, a z ust wypływa struga czerwonego światła!~ */
  IF ~~ THEN REPLY #38373 /* ~"Wszystko w porządku?"~ */ GOTO 33
  IF ~~ THEN REPLY #38374 /* ~Czekaj na jej reakcję.~ */ GOTO 33
END

IF ~~ THEN BEGIN 33 // from: 32.0 32.1
  SAY #38240 /* ~Ecco ponownie otwiera usta, zamyka je, potem jeszcze raz otwiera... i mówi! "Ja... ja znowu mogę mówić! O radości! Ja - WTRĄCĘ CIĘ DO NAJCIEMNIEJSZEJ Z JAM, TY PRZESIĄKNIĘTY SMRODEM ROBAKU! KLĘKAJ PRZEDE MNĄ I BŁAGAJ, INSEKCIE!"~ */
  IF ~  NearbyDialog("DMorte")
~ THEN EXTERN ~DMORTE~ 403
  IF ~  !NearbyDialog("DMorte")
~ THEN REPLY #38375 /* ~"Eee?"~ */ GOTO 34
END

IF ~~ THEN BEGIN 34 // from: 33.1
  SAY #38241 /* ~Ecco krzyczy i zasłania usta obiema rękami... jej oczy rozszerzają się w panice.~ */
  IF ~~ THEN REPLY #38376 /* ~"To musi być... Język Biesa..."~ */ JOURNAL #66729 /* ~Dałem Ecco Język Biesa, który, według słów, Vrisziki, zdolny jest obdarzyć mową każdą istotę. Ale w przypadku Ecco trudno mówić o zadowalających rezultatach... Język miał zdecydowanie zbyt wiele do powiedzenia, i Ecco nie przypadło to do gustu. Teraz muszę znaleźć coś innego, coś co usunie skutki zastosowania Języka Biesa. Chyba trzeba będzie znowu złożyć wizytę w Sklepie z Osobliwościami Vrisziki.~ */ GOTO 35
END

IF ~~ THEN BEGIN 35 // from: 34.0
  SAY #38242 /* ~Kiwając głową powoli odsłania usta. "Wygląda na to, że muszę POŻREĆ TWĄ WĄTŁĄ OPOKĘ I WYSŁAĆ DUSZĘ NA WIECZNOŚĆ DO OTCHŁANI. BĘDZIESZ MI SŁUŻYĆ W WALCE, NIEWOLNIKU, AŻ ZATRZYMAJĄ SIĘ SFERY! JESTEŚ MÓJ, MÓJ, M..." Ecco znowu zamyka usta i zaczyna cichutko szlochać.~ */
  IF ~  PartyHasItem("Dtears")
~ THEN REPLY #66730 /* ~"Czekaj... spróbuj użyć tych Łez Devy... powinny powstrzymać miotane przez język klątwy."~ */ DO ~DestroyPartyItem("Dtears",FALSE)
SetGlobal("Ecco_Speak","GLOBAL",5)
AddexperienceParty(30000)
~ JOURNAL #66732 /* ~Podałem Ecco Łzy Devy, które usunęły działanie klątwy Języka Biesa i pozwoliły jej przemówić normalnym głosem. Teraz wreszcie będzie mogła odpowiedzieć na wszystkie moje pytania.~ */ GOTO 38
  IF ~  Global("CW_Saw_Tears","GLOBAL",1)
!PartyHasItem("Dtears")
Global("Ecco_Note","AR0605",0)
~ THEN REPLY #66731 /* ~"Znalazłem sposób, by ci pomóc... Łzy Devy, w sklepie Vrisziki. Ale, są one dość drogie..."~ */ DO ~SetGlobal("Ecco_Note","AR0605",1)
GiveItemCreate("EcNote",Protagonist,1,0,0)
~ JOURNAL #66733 /* ~Powiedziałem Ecco o Łzach Devy, które widziałem w Sklepie Vrisziki, a ona załatwiła dla mnie weksel, dzięki któremu będę mógł zakupić dla niej tę kosztowną osobliwość.~ */ GOTO 39
  IF ~  Global("CW_Saw_Tears","GLOBAL",0)
!PartyHasItem("Dtears")
Global("Ecco_Quest","AR0605",1)
~ THEN REPLY #38377 /* ~"Znajdę jakiś sposób, by to naprawić - może Vriszika ma coś, co może ci pomóc. Żegnaj."~ */ EXIT
  IF ~  Global("CW_Saw_Tears","GLOBAL",0)
!PartyHasItem("Dtears")
Global("Ecco_Quest","AR0605",2)
~ THEN REPLY #38378 /* ~"Cóż, znowu możesz mówić... mniej więcej... gdzie moja nagroda?"~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Ecco_1","GLOBALLaw",-1)
~ GOTO 36
  IF ~  Global("CW_Saw_Tears","GLOBAL",0)
!PartyHasItem("Dtears")
Global("Ecco_Quest","AR0605",2)
~ THEN REPLY #38379 /* ~"Domyślam się, że nie dostanę nagrody, aż tego nie naprawię. Wrócę... może Vriszika ma coś, co może ci pomóc. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 36 // from: 35.3
  SAY #38243 /* ~Ecco sztyletuje cię wzrokiem, jej usta układają się w szyderczy uśmiech.~ */
  IF ~~ THEN REPLY #38380 /* ~"Domyślam się, że nie dostanę nagrody, dopóki tego nie naprawię. Wrócę... może Vriszika ma coś, co może ci pomóc. Żegnaj."~ */ EXIT
END

IF WEIGHT #2 /* Triggers after states #: 45 46 even though they appear after this state */
~  Global("Ecco_Speak","GLOBAL",4)
~ THEN BEGIN 37 // from:
  SAY #38244 /* ~Gdy podchodzisz, Ecco kiwa głową, oczy ma pełne nadziei.~ */
  IF ~  PartyHasItem("Dtears")
~ THEN REPLY #38381 /* ~"Przyniosłem ci Łzy Devy... powinny załagodzić miotane przez język klątwy."~ */ DO ~DestroyPartyItem("Dtears",FALSE)
SetGlobal("Ecco_Speak","GLOBAL",5)
AddexperienceParty(30000)
~ JOURNAL #66732 /* ~Podałem Ecco Łzy Devy, które usunęły działanie klątwy Języka Biesa i pozwoliły jej przemówić normalnym głosem. Teraz wreszcie będzie mogła odpowiedzieć na wszystkie moje pytania.~ */ GOTO 38
  IF ~  Global("CW_Saw_Tears","GLOBAL",1)
!PartyHasItem("Dtears")
Global("Ecco_Note","AR0605",0)
~ THEN REPLY #38382 /* ~"Znalazłem sposób, by ci pomóc... Łzy Devy, w sklepie Vrisziki. Ale, są one dość drogie..."~ */ DO ~SetGlobal("Ecco_Note","AR0605",1)
GiveItemCreate("EcNote",Protagonist,1,0,0)
~ JOURNAL #66733 /* ~Powiedziałem Ecco o Łzach Devy, które widziałem w Sklepie Vrisziki, a ona załatwiła dla mnie weksel, dzięki któremu będę mógł zakupić dla niej tę kosztowną osobliwość.~ */ GOTO 39
  IF ~~ THEN REPLY #38383 /* ~"Jeszcze nie znalazłem sposobu, by ci pomóc. Wrócę gdy mi się uda."~ */ EXIT
END

IF ~~ THEN BEGIN 38 // from: 35.0 37.0
  SAY #38245 /* ~Kiwa głową, uśmiecha się i bierze od ciebie flakonik. Ecco umieszcza na języku kilka błękitnych, migoczących kropel: "Ja... sądzę, że Łzy działają. Tak... działają! Znowu mogę mówić własnym głosem - jakże mam ci dziękować!" Ecco ściska twoją dłoń i z wdzięcznością skłania głowę, w jej oczach lśnią łzy radości.~ */
  IF ~  Global("Ecco_Quest","AR0605",1)
Global("Ecco_Note","AR0605",1)
~ THEN REPLY #38384 /* ~"Cieszę się, że mogłem ci pomóc. Żegnaj, Ecco."~ */ EXIT
  IF ~  Global("Ecco_Quest","AR0605",1)
Global("Ecco_Note","AR0605",0)
~ THEN REPLY #38385 /* ~"Cieszę się, że mogłem ci pomóc. Żegnaj, Ecco."~ */ DO ~IncrementGlobalOnceEx("GLOBALGood_Ecco_2","GLOBALGood",1)
~ EXIT
  IF ~  Global("Ecco_Quest","AR0605",1)
Global("Ecco_Note","AR0605",0)
~ THEN REPLY #38386 /* ~"Cieszę się, że mogłem pomóc... ale Łzy Devy trochę mnie kosztowały..."~ */ DO ~GivePartyGold(1000)
~ GOTO 40
  IF ~  Global("Ecco_Quest","AR0605",2)
Global("Ecco_Note","AR0605",0)
~ THEN REPLY #38387 /* ~"Cała przyjemność po mojej stronie... Ecco, zapomnij o nagrodzie. Cieszę się, że mogłem ci pomóc."~ */ DO ~IncrementGlobalOnceEx("GLOBALGood_Ecco_1","GLOBALGood",1)
GivePartyGold(1000)
~ GOTO 41
  IF ~  Global("Ecco_Quest","AR0605",2)
Global("Ecco_Note","AR0605",1)
~ THEN REPLY #38388 /* ~"Cała przyjemność po mojej stronie... Ecco, zapomnij o nagrodzie. Cieszę się, że mogłem ci pomóc."~ */ DO ~IncrementGlobalOnceEx("GLOBALGood_Ecco_1","GLOBALGood",1)
~ GOTO 42
  IF ~  Global("Ecco_Quest","AR0605",2)
~ THEN REPLY #38389 /* ~"Tak, nie ma za co... a co do mojej nagrody..."~ */ DO ~GivePartyGold(500)
~ GOTO 43
END

IF ~~ THEN BEGIN 39 // from: 35.1 37.1
  SAY #38246 /* ~Ecco kiwa głową i wyjmuje z szat kawałek papieru... wygląda jak skrypt dłużny opiewający na kwotę tysiąca miedziaków, które posiadacz dokumentu może odebrać w Przybytku. Patrzy na ciebie pytająco.~ */
  IF ~~ THEN REPLY #38390 /* ~"Tak... to wystarczy. Ecco, wrócę, gdy zdobędę Łzy."~ */ EXIT
END

IF ~~ THEN BEGIN 40 // from: 38.2
  SAY #38247 /* ~"Oj... nie pomyślałam o tym! Tak, tak, proszę..." Ecco wyciąga z sakiewki kilka owiniętych pergaminem rolek miedzianych monet. "To na pewno wystarczy. Jeszcze raz ci dziękuję!" Uśmiecha się do ciebie ciepło.~ */
  IF ~~ THEN REPLY #66735 /* ~"Oczywiście. A teraz chciałbym zadać kilka pytań..."~ */ GOTO 2
  IF ~~ THEN REPLY #38391 /* ~"Żegnaj, Ecco."~ */ EXIT
END

IF ~~ THEN BEGIN 41 // from: 38.3
  SAY #38248 /* ~Ecco promienieje radością: "Jeszcze raz ci dziękuję!" Podchodzi bliżej i szepce ci do ucha, zapach jej włosów jest upajający... "Twój wygląd maskuje wielką uprzejmość, panie." Całuje cię w policzek, cofa się i sięga do sakiewki. "Proszę, mój przyjacielu... to chyba więcej niż kosztowały cię Łzy. Nalegam byś to wziął."~ */
  IF ~~ THEN REPLY #66736 /* ~"Dzięki. A teraz chciałbym zadać kilka pytań..."~ */ GOTO 2
  IF ~~ THEN REPLY #38392 /* ~"Dzięki, Ecco. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 42 // from: 38.4
  SAY #38249 /* ~Ecco promienieje radością: "Jeszcze raz ci dziękuję!" Podchodzi bliżej i szepce ci do ucha, zapach jej włosów jest upajający... "Twój wygląd maskuje wielką uprzejmość panie." Całuje cię w policzek i cofa się z uśmiechem.~ */
  IF ~~ THEN REPLY #66737 /* ~"Dzięki. A teraz chciałbym zadać kilka pytań..."~ */ GOTO 2
  IF ~~ THEN REPLY #38393 /* ~"Dzięki, Ecco. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 43 // from: 38.5
  SAY #38250 /* ~Ecco kiwa głową wylewając ostatnie łzy. Sięga do sakiewki i pokazuje ci kilka owiniętych pergaminem rolek miedzianych monet. "Twoja nagroda, panie... słusznie ci się należy."~ */
  IF ~  Global("Ecco_Note","AR0605",0)
~ THEN REPLY #38386 /* ~"Cieszę się, że mogłem pomóc... ale Łzy Devy trochę mnie kosztowały..."~ */ DO ~GivePartyGold(999)
SetGlobal("Ecco","GLOBAL",3)
~ GOTO 44
  IF ~~ THEN REPLY #66738 /* ~"Dzięki. A teraz chciałbym zadać kilka pytań..."~ */ GOTO 2
  IF ~~ THEN REPLY #38395 /* ~"Dzięki. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 44 // from: 43.0
  SAY #38251 /* ~Kiwa głową. "Oczywiście." Jej głos jest całkowicie bezbarwny. "Proszę." Wręcza ci kolejne rolki monet.~ */
  IF ~~ THEN REPLY #66739 /* ~"Dzięki. A teraz chciałbym zadać kilka pytań..."~ */ GOTO 2
  IF ~~ THEN REPLY #38396 /* ~"Dzięki. Żegnaj."~ */ EXIT
END

IF WEIGHT #1 /* Triggers after states #: 46 even though they appear after this state */
~  Global("Ecco_Speak","GLOBAL",5)
GlobalLT("Ecco","GLOBAL",3)
~ THEN BEGIN 45 // from:
  SAY #38252 /* ~Gdy podchodzisz, Ecco uprzejmie do ciebie macha. "Witaj panie, znowu się spotykamy!"~ */
  IF ~~ THEN REPLY #38397 /* ~"Witaj Ecco... mam kilka pytań..."~ */ GOTO 2
  IF ~~ THEN REPLY #38398 /* ~"Znowu się spotykamy, Ecco. Tylko przechodzę. Żegnaj."~ */ EXIT
END

IF WEIGHT #0 ~  Global("Ecco_Speak","GLOBAL",5)
Global("Ecco","GLOBAL",3)
~ THEN BEGIN 46 // from:
  SAY #38253 /* ~Gdy podchodzisz, Ecco chłodno kiwa głową.~ */
  IF ~~ THEN REPLY #38399 /* ~"Mam kilka pytań..."~ */ GOTO 2
  IF ~~ THEN REPLY #38400 /* ~"Tylko przechodzę. Żegnaj, Ecco."~ */ EXIT
END

IF ~~ THEN BEGIN 47 // from: 2.5
  SAY #38254 /* ~"Przybytek jest szkołą, gdzie młode kobiety... 'kurtyzany'..." Posyła ci drwiący uśmiech. "...zgłębiają sztukę mówienia i jej subtelności, jak powiedziałaby nasza Pani Sława. Ogólnie rzecz biorąc po to, by zostać Czuciowcem. Przybytek działa dzięki darowiznom wielu stałych klientów, którzy przychodzą tutaj w poszukiwaniu czegoś więcej, niż zwykła fizyczna przyjemność w towarzystwie kobiety."~ */
  IF ~~ THEN REPLY #38401 /* ~"Czuciowcem?"~ */ GOTO 55
  IF ~~ THEN REPLY #38402 /* ~"Mam jeszcze jedno pytanie..."~ */ GOTO 2
  IF ~~ THEN REPLY #38403 /* ~"To wszystko, co chciałem wiedzieć. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 48 // from: 2.7
  SAY #38255 /* ~Ecco kiwa głową i ścisza głos: "Naprawdę... Ona nie tylko istnieje, ma *dzieci*!"~ */
  IF ~~ THEN REPLY #38404 /* ~"Ona *co*?"~ */ DO ~SetGlobal("Know_Kesai_Ravel","AR0605",1)
~ JOURNAL #66734 /* ~Powiedziała mi, że pośród żywych znajdują się dzieci Raveli. A córką Raveli jest jedna z kurtyzan z Przybytku Kesai-Serris. Powiedziała mi także, że Kesai nie potrafi pogodzić się z takim stanem rzeczy i nie ma ochoty przyznawać się do swego pochodzenia.~ */ GOTO 49
  IF ~~ THEN REPLY #38405 /* ~"Gdzie mogę je znaleźć?"~ */ DO ~SetGlobal("Know_Kesai_Ravel","AR0605",1)
~ JOURNAL #66734 /* ~Powiedziała mi, że pośród żywych znajdują się dzieci Raveli. A córką Raveli jest jedna z kurtyzan z Przybytku Kesai-Serris. Powiedziała mi także, że Kesai nie potrafi pogodzić się z takim stanem rzeczy i nie ma ochoty przyznawać się do swego pochodzenia.~ */ GOTO 49
END

IF ~~ THEN BEGIN 49 // from: 48.0 48.1
  SAY #38256 /* ~"W tej chwili jedno z nich jest tutaj... Kesai Serris. Jest dzieckiem Raveli, choć nie cierpi się do tego przyznawać. Któż może ją winić?" Przerywa na chwilę, zamyślona. "Nigdy z nią o tym nie rozmawiałam, mimo to jestem pewna, że to prawda."~ */
  IF ~~ THEN REPLY #38406 /* ~"Interesujące. Mam jeszcze jedno pytanie..."~ */ GOTO 2
  IF ~~ THEN REPLY #38407 /* ~"Fascynujące. Dzięki, Ecco. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 50 // from:
  SAY #38257 /* ~.~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 51 // from: 2.4
  SAY #38258 /* ~"Jestem uczennicą, jak wszystkie *kurtyzany*. Pogłębiamy znajomość sztuki języka, by inspirować umysły... wzmóc naszą samoświadomość i świadomość innych, a także po to, by stworzyć nowe sposoby doświadczania drugiej osoby..." Przerywa pochłonięta myślami.~ */
  IF ~~ THEN REPLY #38411 /* ~"Mów dalej..."~ */ GOTO 52
  IF ~~ THEN REPLY #38412 /* ~"Mam jeszcze jedno pytanie..."~ */ GOTO 2
  IF ~~ THEN REPLY #38413 /* ~"To wszystko co chciałem wiedzieć; żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 52 // from: 51.0
  SAY #38259 /* ~"Cóż... Przez bardzo *długi* czas nie mogłam mówić. Większość klientów przychodziła do mnie szukając kogoś kto słucha, kogoś uważnego, kto może zrozumieć, do kogo mogliby mówić, kogoś kto nie przerywa. Teraz, gdy znowu mogę mówić, zastanawiam się czy nie nadszedł czas, bym ruszyła dalej... opuściła Przybytek i została Czuciowcem."~ */
  IF ~~ THEN REPLY #38414 /* ~"Czuciowcem?"~ */ GOTO 55
  IF ~~ THEN REPLY #38415 /* ~"Interesujące. Pozwól, że zapytam o coś innego..."~ */ GOTO 2
  IF ~~ THEN REPLY #38416 /* ~"Możliwe. Żegnaj, Ecco."~ */ EXIT
  IF ~~ THEN REPLY #38417 /* ~"Życzę ci wszystkiego najlepszego, jaką drogę byś nie obrała. Żegnaj, Ecco."~ */ EXIT
END

IF ~~ THEN BEGIN 53 // from: 2.13
  SAY #38260 /* ~Patrzy na ciebie skonfundowana, potem potrząsa głową.~ */
  IF ~  Global("Ecco_Speak","GLOBAL",0)
~ THEN REPLY #38418 /* ~"Możesz mówić?"~ */ DO ~SetGlobal("Ecco_Speak","GLOBAL",1)
~ GOTO 4
  IF ~~ THEN REPLY #38419 /* ~"Mam jeszcze kilka pytań..."~ */ GOTO 2
  IF ~~ THEN REPLY #38420 /* ~"Nieważne. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 54 // from: 2.14
  SAY #38261 /* ~Ecco wygląda na zagubioną. "Nie słyszałam o dziesiątej uczennicy. Może jest nowa? Jeśli tak, to jej nie znam."~ */
  IF ~~ THEN REPLY #38421 /* ~"Mam jeszcze kilka pytań..."~ */ GOTO 2
  IF ~~ THEN REPLY #38422 /* ~"To wszystko co chciałem wiedzieć. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 55 // from: 47.0 52.0
  SAY #38262 /* ~"Członkiem Stronnictwa Doznań. Zapytaj Nie-Sławę, albo kogoś w Gmachu Rozrywek, jeśli chcesz więcej o nich wiedzieć."~ */
  IF ~~ THEN REPLY #38423 /* ~"Mam jeszcze kilka pytań..."~ */ GOTO 2
  IF ~~ THEN REPLY #38424 /* ~"To wszystko co chciałem wiedzieć. Żegnaj."~ */ EXIT
END
