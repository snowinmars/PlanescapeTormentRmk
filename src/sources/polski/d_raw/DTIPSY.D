// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DTIPSY.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\pl_PL\dialog.tlk
// dialogF  : (none)

BEGIN ~DTIPSY~

IF ~  True()
~ THEN BEGIN 0 // from:
  SAY #3022 /* ~Ten niemłody już człowiek markotnie spogląda na dno kufla. Dostrzegasz, że sponiewierane cynowe naczynie, które jest głównym punktem jego kontemplacji, nie jest zwykłym przedmiotem; widać na jego powierzchni delikatnie zarysowane znaki runiczne i rysunki brodatych twarzy, a cały kufel skuwa powłoka cienkiego lodu. Kiedy się doń zbliżasz, mężczyzna podnosi wzrok: "Witaj... panie..." Jest chyba lekko wstawiony.~ */
  IF ~~ THEN REPLY #7234 /* ~"Czy coś się stało?"~ */ GOTO 2
  IF ~~ THEN REPLY #46154 /* ~"Co to za kufel trzymasz w dłoni?"~ */ GOTO 5
  IF ~~ THEN REPLY #46155 /* ~"Mam kilka pytań..."~ */ GOTO 1
  IF ~~ THEN REPLY #46156 /* ~"Witaj i żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.2
  SAY #46157 /* ~Mężczyzna smutno potrząsa głową i pociąga jeszcze jeden łyk piwa "Nie... nie... nie znajdziesz tu żadnych odpowiedzi... nie znajdziesz."~ */
  IF ~~ THEN REPLY #46158 /* ~"Czy coś się stało?~ */ GOTO 2
  IF ~~ THEN REPLY #46159 /* ~"Co to za kufel trzymasz w dłoni?"~ */ GOTO 5
  IF ~~ THEN REPLY #46160 /* ~"Zatem żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 0.0 1.0 5.0
  SAY #46161 /* ~Mężczyzna wzdycha, niezgrabnie tłumi beknięcie i kiwa głową, po czym znowu pociąga piwa. "A tak. Coś się stało. Straciłem swoją pracę. Byłem trochę podchmielony i sknociłem eksperyment mojego mentora. Wszystko przez to cholerne picie!" Uśmiecha się szyderczo do trzymanego w dłoniach kufla, lecz potem jego rysy łagodnieją i znów pociąga łyk napoju "To picie niszczy wszystko. Naprawdę wszystko. Moim przeklętym piciem niszczę wszystko."~ */
  IF ~~ THEN REPLY #46162 /* ~"Czemu więc nie przestaniesz pić?"~ */ JOURNAL #66804 /* ~W karczmie znajdującej w Dzielnicy Urzędników spotkałem człowieka, który nałogowi alkoholowemu zawdzięcza ruinę swojej kariery terminatora u czarodzieja. Kiedy patrzę na tego człowieka i jego pożałowania godne uzależnienie, zastanawiam się, czy w ogóle możliwe jest, aby pozbył się tego nałogu...~ */ GOTO 3
  IF ~~ THEN REPLY #46163 /* ~"Jeżeli jesteś za słaby na to, żeby przestać, to twoja wina. Żegnaj."~ */ EXIT
  IF ~~ THEN REPLY #46164 /* ~"To niedobrze. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 2.0
  SAY #46165 /* ~Mężczyzna wzrusza ramionami i wzdycha w przygnębieniu "Po prostu nie potrafię. Chciałbym, ale nie potrafię. Ja po prostu muszę pić. Próbowałem przestać, trzymać się od picia z daleka, ale to jest silniejsze ode mnie. Nie do powstrzymania. Stałem się wrakiem!". Wylewa na ziemię resztkę piwa i głuchym głosem zamawia następne.~ */
  IF ~  Global("UDesire","GLOBAL",2)
~ THEN REPLY #46166 /* ~"Jest ktoś, z kimś powinieneś porozmawiać. To Niezaspokojona Żądza. Znajdziesz ją w Miejskim Gmachu Rozrywki. Porozmawiaj z nią o swojej miłości do picia... a szybko stwierdzisz, że już ci to do niczego nie potrzebne."~ */ DO ~GiveItemCreate("DwfMug",Protagonist,1,0,0)
AddexperienceParty(10000)
~ JOURNAL #66805 /* ~Powiedziałem pijakowi z Dzielnicy Urzędniczej, który do niedawna był terminatorem u czarodzieja, o Niezaspokojonej Żądzy... Jestem przekonany, że jej osobliwe właściwości w zupełności pozwolą na wyzwolenie go z nałogu alkoholowego. Rada ta tak go uradowała, że z miejsca podarował mi magiczny kufel Lodowego Piwa, twierdząc, że w perspektywie cudownej przemiany w jego życiu nie będzie mu już to naczynie do niczego potrzebne.~ */ GOTO 4
  IF ~  !Global("UDesire","GLOBAL",2)
~ THEN REPLY #46167 /* ~"Ach tak. A co to za kufel trzymasz w dłoni?"~ */ GOTO 5
  IF ~  !Global("UDesire","GLOBAL",2)
~ THEN REPLY #46168 /* ~"Jeżeli jesteś za słaby na to, żeby przestać, to twoja wina. Żegnaj."~ */ EXIT
  IF ~  !Global("UDesire","GLOBAL",2)
~ THEN REPLY #46169 /* ~"To bardzo niedobrze. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 3.0
  SAY #46170 /* ~Jego oczy rozbłyskują. "Naprawdę? Wobec tego zaraz pójdę z nią pomówić. Dzięki, panie." Milknie, patrząc na pusty kufel. "Tak... Mógłbym ci to dać. Już tego nie potrzebuję." Wręcza ci zdobiony runami kufel.~ */
  IF ~~ THEN REPLY #46171 /* ~"Dzięki... Żegnaj."~ */ DO ~EscapeArea()
~ EXIT
END

IF ~~ THEN BEGIN 5 // from: 0.1 1.1 3.1
  SAY #46172 /* ~"To?" Spogląda na cynowy kufel. "Wygrałem go w kości. Jest zaczarowany. Cokolwiek weń wlejesz, zaraz będzie lodowato zimne. W moim przypadku... będzie to lodowato zimne piwo." Marszczy brwi, przeciera powieki i pociąga jeszcze jeden łyk piwa.~ */
  IF ~~ THEN REPLY #46173 /* ~"Czy coś się stało?"~ */ GOTO 2
  IF ~~ THEN REPLY #46174 /* ~"To już wszystko, co chciałem wiedzieć. Żegnaj."~ */ EXIT
END
