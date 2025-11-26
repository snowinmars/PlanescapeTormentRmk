// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : D3PLANEA.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\pl_PL\dialog.tlk
// dialogF  : (none)

BEGIN ~D3PLANEA~

IF ~~ THEN BEGIN 0 // from: 11.0
  SAY #2949 /* ~"Znany jestem jako Trzem-Sferom-Przypisany, uczony githzerai. Jeśli przybyłeś tu, aby wysłuchać mojego wykładu, tedy poczekaj kilka chwil, wnet się rozpocznie."~ */
  IF ~  NearbyDialog("DMorte")
~ THEN EXTERN ~DMORTE~ 476
  IF ~  !NearbyDialog("DMorte")
~ THEN REPLY #45030 /* ~Słuchaj dalej.~ */ GOTO 1
  IF ~  !NearbyDialog("DMorte")
~ THEN REPLY #45031 /* ~Wyjdź z sali wykładowej.~ */ DO ~SetGlobal("Lecture_3Planes","GLOBAL",2)
~ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.1
  SAY #45032 /* ~Jego głos jest bardzo niski i posępny. "Dzisiaj będę nauczał o potędze charakteru i wiary, oraz w jaki sposób wpływają na kształt Sfer."

"Na wstępie, wyjaśnię koncepcję charakteru."~ */
  IF ~~ THEN REPLY #45033 /* ~Słuchaj dalej.~ */ GOTO 2
  IF ~~ THEN REPLY #45034 /* ~Przerwij słuchanie wykładu. Odejdź.~ */ DO ~SetGlobal("Lecture_3Planes","GLOBAL",2)
~ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.0
  SAY #45035 /* ~"Charakter to określenie opisujące wiarę jakiejś istoty i to, jak wiara warunkuje jej postępowanie. U zarania świata, wszystkie istoty w przeważającej mierze zachowywały się na trzy sposoby: z dobrocią w sercu, ze złem w sercu albo z obojętnością lub neutralnością w sercu. Istoty te w większości wyrażały trzy rdzenne zachowania na trzy różne sposoby: na sposób uporządkowany i regularny, na sposób chaotyczny lub też na sposób obojętny, neutralny. W myśl tego wywodu istnieje więc dziewięć możliwych charakterów."~ */
  IF ~~ THEN REPLY #45036 /* ~Słuchaj dalej.~ */ GOTO 3
  IF ~~ THEN REPLY #45037 /* ~Przerwij słuchanie wykładu. Odejdź.~ */ DO ~SetGlobal("Lecture_3Planes","GLOBAL",2)
~ EXIT
END

IF ~~ THEN BEGIN 3 // from: 2.0
  SAY #45038 /* ~"Tych dziewięć charakterów to praworządny dobry, neutralny dobry i chaotyczny dobry, a dalej praworządny neutralny, prawdziwie neutralny i chaotyczny neutralny... i wreszcie praworządny zły, neutralny zły i chaotyczny zły."

"Teraz zaś opowiem o potędze charakteru i wiary, jaka z niego wypływa. Opowiem o tym, jak z charakterów tych czerpią moc bóstwa, a także jak wiara może wpłynąć na fizyczny stan rzeczywistości."~ */
  IF ~~ THEN REPLY #45039 /* ~Słuchaj dalej.~ */ GOTO 4
  IF ~~ THEN REPLY #45040 /* ~Przerwij słuchanie wykładu. Odejdź.~ */ DO ~SetGlobal("Lecture_3Planes","GLOBAL",2)
~ EXIT
END

IF ~~ THEN BEGIN 4 // from: 3.0
  SAY #45041 /* ~"Bóstwo musi mieć swoich wyznawców, tak więc wiara, jaką oni wobec bóstwa żywią, przysparza bóstwu mocy. W miarę, gdy bóstwo znajduje sobie coraz większą liczbę czcicieli, zaczyna przybywać mu mocy."

"Przeciwnie, kiedy nikt nie wierzy w bóstwo, usycha ono i umiera, dołączając do trucheł innych bogów, które lewitują w Sferze Astralnej. Wynika z tego, że samo zapomnienie może uśmiercić bóstwo."~ */
  IF ~~ THEN REPLY #45042 /* ~Słuchaj dalej.~ */ GOTO 5
  IF ~~ THEN REPLY #45043 /* ~Przerwij słuchanie wykładu. Odejdź.~ */ DO ~SetGlobal("Lecture_3Planes","GLOBAL",2)
~ EXIT
END

IF ~~ THEN BEGIN 5 // from: 4.0
  SAY #45044 /* ~"Najbardziej wyrazisty przykład potęgi charakteru i wiary można jednak dostrzec w zjawisku miast-bram."

"Najpierw jednak zdefiniuję pojęcie miasta-bramy."~ */
  IF ~~ THEN REPLY #45045 /* ~Słuchaj dalej.~ */ GOTO 6
  IF ~~ THEN REPLY #45046 /* ~Przerwij słuchanie wykładu. Odejdź.~ */ DO ~SetGlobal("Lecture_3Planes","GLOBAL",2)
~ EXIT
END

IF ~~ THEN BEGIN 6 // from: 5.0
  SAY #45047 /* ~"Miasta-bramy to miasta położone w Krainach Zewnętrznych, obszarach w większości neutralnych, których absolutnym centrum jest Sigil. Miejsca te nazywane są miastami-bramami, ponieważ zostały wzniesione w pobliżu stałych bram, bądź też portali, wiodących ku którejś z Zewnętrznych Sfer."~ */
  IF ~~ THEN REPLY #45048 /* ~Słuchaj dalej.~ */ GOTO 7
  IF ~~ THEN REPLY #45049 /* ~Przerwij słuchanie wykładu. Odejdź.~ */ DO ~SetGlobal("Lecture_3Planes","GLOBAL",2)
~ EXIT
END

IF ~~ THEN BEGIN 7 // from: 6.0
  SAY #45050 /* ~"Każdą z tych Zewnętrznych Sfer charakteryzuje własny charakter. Otchłań jest chaotyczna i zła. Baator jest praworządny i zły. Mechanus jest sferą praworządną neutralną. Niebiański Szczyt jest praworządny dobry, zaś Krainy Zewnętrzne są prawdziwie neutralne, nie chylą się bowiem ani do porządku, ani do chaosu."

"Zjawisko 'przechylenia' występuje, jeżeli w jednym miejscu, przypisywanym jednej wierze, wzrośnie w siłę wiara przeciwstawna. Kiedy tak się dzieje, miejsce przesuwa się, albo raczej przechyla, ku Sferze, która odpowiada nowej, dominującej wierze."~ */
  IF ~~ THEN REPLY #45051 /* ~Słuchaj dalej.~ */ GOTO 8
  IF ~~ THEN REPLY #45052 /* ~Przerwij słuchanie wykładu. Odejdź.~ */ DO ~SetGlobal("Lecture_3Planes","GLOBAL",2)
~ EXIT
END

IF ~~ THEN BEGIN 8 // from: 7.0
  SAY #45053 /* ~"Obecnie, w miastach-bramach istnieją zwykle silne przekonania, że miejsce takie pasuje do przylegającej Sfery Zewnętrznej, ale nie jest to wiara na tyle silna, aby miasto przechyliło się od Krain Zewnętrznych ku Sferze za portalem."

"Na przykład, miasto Żebrowisko graniczy z portalem wiodącym do sfery praworządnego zła - Baator. Jak nietrudno się domyślić, mieszkańcy Żebrowiska to istoty częstokroć wyznające praworządne zło, ale całościowy charakter i zbiorcza wiara tego miasta nie są jeszcze na tyle silne, aby Żebrowisko przechyliło się ku Baator."~ */
  IF ~~ THEN REPLY #45054 /* ~Słuchaj dalej.~ */ GOTO 9
  IF ~~ THEN REPLY #45055 /* ~Przerwij słuchanie wykładu. Odejdź.~ */ DO ~SetGlobal("Lecture_3Planes","GLOBAL",2)
~ EXIT
END

IF ~~ THEN BEGIN 9 // from: 8.0
  SAY #45056 /* ~"Ale w Żebrowisku mogą któregoś dnia dojść do głosu kapłani wyznający praworządne zło i rozpowszechniający te przekonania pośród innych obywateli miasta, nakłaniając ich do kultu bóstwa praworządnego zła. Jeżeli zaistnieje takowa sytuacja, bliskie może być przechylenie miasta od neutralnych Krain Zewnętrznych i wchłonięcie go przez Baator, sferę praworządnego zła."

"W ten sposób może dojść do przemieszczeń wszystkich warstw Sfer. Dlatego też wiele z nich jest miejscem starć przeciwstawnych wyznań i przekonań. Walki te, to narzędzia decydujące o tym, które terytoria zostaną zdobyte, które utrzymane, a które stracone."~ */
  IF ~~ THEN REPLY #45057 /* ~Słuchaj dalej.~ */ GOTO 10
  IF ~~ THEN REPLY #45058 /* ~Przerwij słuchanie wykładu. Odejdź.~ */ DO ~SetGlobal("Lecture_3Planes","GLOBAL",2)
~ EXIT
END

IF ~~ THEN BEGIN 10 // from: 9.0
  SAY #45059 /* ~"Tak oto potęga charakteru i wiary kształtuje rzeczywistość Sfer. Wykład dobiegł końca."

"Niech wiara będzie przewodnikiem waszego postępowania i niechaj kształtuje rzeczywistość Sfer wedle waszej woli. Do widzenia wszystkim."~ */
  IF ~~ THEN REPLY #45060 /* ~Odejdź.~ */ DO ~SetGlobal("Lecture_3Planes","GLOBAL",2)
~ EXIT
END

IF ~  True()
~ THEN BEGIN 11 // from:
  SAY #45061 /* ~Widzisz szczupłego człowieka o ostrych rysach. Jego skóra, barwy żółtej, cała jest pokryta licznymi tatuażami. Mężczyzna spogląda na zgromadzonych w sali chłodnym spojrzeniem czarnych oczu. Wydaje się, że prowadzi tutaj wykład.~ */
  IF ~~ THEN REPLY #45063 /* ~Poczekaj na rozpoczęcie wykładu.~ */ GOTO 0
  IF ~~ THEN REPLY #49738 /* ~Odejdź.~ */ EXIT
END
