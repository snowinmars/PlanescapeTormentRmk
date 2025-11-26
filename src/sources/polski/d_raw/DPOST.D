// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DPOST.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\pl_PL\dialog.tlk
// dialogF  : (none)

BEGIN ~DPOST~

IF ~  True()
~ THEN BEGIN 0 // from:
  SAY #6229 /* ~Ten obrzydliwy truposz znajduje się w zdecydowanie opłakanym stanie. Ramiona ma zapadłe, a jedną z nóg złamaną, co sprawia, że musi trzymać ją wychyloną na bok. Całe ciało zombie, od stóp do głów szpecą niezliczone plamy. Sądząc po zapachu i strukturze, plamy te to pozostałości zgniłych owoców, a także stwardniałego błota i ptasich odchodów. Jakby tego wszystkiego było mało, ktoś, może w przypływie sadystycznego humoru, zafundował zniszczonej skórze zombie prawdziwe graffiti, ozdabiając jego klatkę piersiową, plecy i głowę licznymi informacjami.~ */
  IF ~~ THEN REPLY #6230 /* ~"Nie sądziłem, że spotkam kogoś będącego w gorszym stanie, niż ja sam. Czy te wszystkie gwoździe nie uwierają?"~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Post_1","GLOBALLaw",-1)
~ GOTO 1
  IF ~  HasItem("Cobble","Post")
~ THEN REPLY #6231 /* ~Obejrzyj truposza.~ */ GOTO 3
  IF ~  !HasItem("Cobble","Post")
~ THEN REPLY #6233 /* ~Obejrzyj truposza.~ */ GOTO 4
  IF ~~ THEN REPLY #6234 /* ~Obejrzyj graffiti i informacje.~ */ GOTO 5
  IF ~  Global("Speak_with_Dead","GLOBAL",1)
~ THEN REPLY #6235 /* ~Posłuż się swoją umiejętnością Gadaj-Kości-Opowieści.~ */ GOTO 2
  IF ~~ THEN REPLY #6236 /* ~"Miło było z tobą pogadać. Żegnaj."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Post_1","GLOBALLaw",-1)
~ EXIT
  IF ~~ THEN REPLY #6237 /* ~Zostaw truposza w spokoju.~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #6232 /* ~Truposz nie reaguje.~ */
  IF ~  HasItem("Cobble","Post")
~ THEN REPLY #6238 /* ~Obejrzyj truposza.~ */ GOTO 3
  IF ~  !HasItem("Cobble","Post")
~ THEN REPLY #6239 /* ~Obejrzyj truposza.~ */ GOTO 4
  IF ~~ THEN REPLY #6240 /* ~Obejrzyj graffiti i informacje.~ */ GOTO 5
  IF ~  Global("Speak_with_Dead","GLOBAL",1)
~ THEN REPLY #6241 /* ~Posłuż się swoją umiejętnością Gadaj-Kości-Opowieści.~ */ GOTO 2
  IF ~~ THEN REPLY #6242 /* ~"Miło było z tobą pogadać. Żegnaj."~ */ EXIT
  IF ~~ THEN REPLY #6243 /* ~Zostaw truposza w spokoju.~ */ EXIT
END

IF ~  Global("Speak_with_Dead","GLOBAL",1)
~ THEN BEGIN 2 // from: 0.4 1.3 3.1 4.1 5.7 6.4 7.6 8.3 9.5 10.5 11.3 12.3 13.2 18.4 19.3
  SAY #6244 /* ~Truposz nie reaguje. Wygląda na to, że pozostanie raczej głuchy na każde z twoich pytań.~ */
  IF ~  HasItem("Cobble","Post")
~ THEN REPLY #6245 /* ~Obejrzyj truposza.~ */ GOTO 3
  IF ~  !HasItem("Cobble","Post")
~ THEN REPLY #6246 /* ~Obejrzyj truposza.~ */ GOTO 4
  IF ~~ THEN REPLY #6247 /* ~Obejrzyj graffiti i informacje.~ */ GOTO 5
  IF ~~ THEN REPLY #6248 /* ~Zostaw truposza w spokoju.~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 0.1 1.0 2.0 5.0 6.1 7.3 8.0 9.2 10.0 11.0 12.0 18.1 19.0
  SAY #6249 /* ~Pomimo wielu szwów, gnijąca skóra truposza łuszczy się w wielu miejscach, odsłaniając długie pasma mięśni i fragmenty kości. Nie trudno się domyśleć, że zombie ten pełni w okolicy niezbyt zaszczytną funkcję strzelnicy dla każdego amatora rzutów do celu. Grudki zgniłych owoców i brył błota mieszają się na jego zmaltretowanym grzbiecie z odłamkami skał i kawałkami szkła. W czaszce tkwi mu wciąż groźnych rozmiarów brukowiec.~ */
  IF ~~ THEN REPLY #6250 /* ~Obejrzyj graffiti i informacje.~ */ GOTO 5
  IF ~  Global("Speak_with_Dead","GLOBAL",1)
~ THEN REPLY #6251 /* ~Posłuż się swoją umiejętnością Gadaj-Kości-Opowieści.~ */ GOTO 2
  IF ~~ THEN REPLY #6252 /* ~Wyciągnij mu z czaszki kamień brukowy.~ */ DO ~AddexperienceParty(250)
GiveItem("Cobble",Protagonist)
~ GOTO 13
  IF ~~ THEN REPLY #6253 /* ~Zostaw truposza w spokoju.~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 0.2 1.1 2.1 5.1 6.2 7.4 8.1 9.3 10.1 11.1 12.1 13.0 18.2 19.1
  SAY #6254 /* ~Pomimo wielu szwów, gnijąca skóra truposza łuszczy się w wielu miejscach, odsłaniając długie pasma mięśni i fragmenty kości. Nie trudno się domyśleć, że zombie ten pełni w okolicy niezbyt zaszczytną funkcję strzelnicy dla każdego amatora rzutów do celu. Grudki zgniłych owoców i brył błota mieszają się na jego zmaltretowanym grzbiecie z odłamkami skał i kawałkami szkła.~ */
  IF ~~ THEN REPLY #6255 /* ~Obejrzyj graffiti i informacje.~ */ GOTO 5
  IF ~  Global("Speak_with_Dead","GLOBAL",1)
~ THEN REPLY #6256 /* ~Posłuż się swoją umiejętnością Gadaj-Kości-Opowieści.~ */ GOTO 2
  IF ~~ THEN REPLY #6257 /* ~Zostaw truposza w spokoju.~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 0.3 1.2 2.2 3.0 4.0 6.3 7.5 8.2 9.4 10.2 10.3 10.4 11.2 12.2 13.1 18.3 19.2
  SAY #6258 /* ~Wiele informacji rozmazał deszcz, ale niektóre jeszcze zachowały czytelność. Jeden z pokrywających plecy zombie napisów utrzymuje, że jego wystawcą była instytucja nazwana osobliwie 'Biurem do Spraw Szkodników i Zapobiegania Chorobom', inny, widniejący na czole, jako żywo przypomina rachunek z restauracji, a jeszcze jeden, z klatki piersiowej, wygląda na oficjalne zawiadomienie. Obok niego znajduje się kolejny napis, który robi wrażenie jakiegoś ogłoszenia.~ */
  IF ~  HasItem("Cobble","Post")
~ THEN REPLY #6259 /* ~Obejrzyj truposza.~ */ GOTO 3
  IF ~  !HasItem("Cobble","Post")
~ THEN REPLY #6260 /* ~Obejrzyj truposza.~ */ GOTO 4
  IF ~~ THEN REPLY #6261 /* ~Zignoruj informacje, obejrzyj graffiti.~ */ GOTO 9
  IF ~~ THEN REPLY #6262 /* ~Przeczytaj tekst Biura do Spraw Szkodników i Zapobiegania Chorobom.~ */ GOTO 6
  IF ~~ THEN REPLY #6263 /* ~Przeczytaj rachunek.~ */ GOTO 7
  IF ~~ THEN REPLY #6264 /* ~Przeczytaj oficjalne zawiadomienie.~ */ GOTO 8
  IF ~~ THEN REPLY #46493 /* ~Przeczytaj ogłoszenie.~ */ GOTO 18
  IF ~  Global("Speak_with_Dead","GLOBAL",1)
~ THEN REPLY #46496 /* ~Posłuż się swoją umiejętnością Gadaj-Kości-Opowieści.~ */ GOTO 2
  IF ~~ THEN REPLY #46497 /* ~Zostaw truposza w spokoju.~ */ EXIT
END

IF ~~ THEN BEGIN 6 // from: 5.3
  SAY #6267 /* ~"Do wiadomości tych spośród zacnych obywateli Ula, których życzeniem jest nawiązać owocną współpracę z Najdostojniejszym i Wspaniałomyślnym Rządem Miasta Sigil. Zainteresowani zatrudnieniem w akcji zwalczania rozumnych szczurów proszeni są o natychmiastowy kontakt z Biurem do Spraw Szkodników i Zapobiegania Chorobom. PRZEWIDZIANE PREMIE PIENIĘŻNE. Za każdy szczurzy ogon wypłata w miedziakach. (Ogony muszą być prawdziwe i tylko szczurze. Ogony kocie, psie i biesie nie będą rozpatrywane). Siedziba Biura znajduje się kilka ulic na południe i zachód od Bramy Kostnicy, na terenie niższego Ula. Kontakt z wyznaczonym funkcjonariuszem, inspektorem Biura, WIELMOŻNYM FINEASZEM T. LORTEM, XXXIX."~ */
  IF ~  GlobalGT("Post_Point","GLOBAL",0)
~ THEN REPLY #6268 /* ~"Biuro do Spraw Szkodników i Zapobiegania Chorobom?"~ */ GOTO 11
  IF ~  HasItem("Cobble","Post")
~ THEN REPLY #6269 /* ~Obejrzyj truposza.~ */ GOTO 3
  IF ~  !HasItem("Cobble","Post")
~ THEN REPLY #6270 /* ~Obejrzyj truposza.~ */ GOTO 4
  IF ~~ THEN REPLY #6271 /* ~Sprawdź inne informacje.~ */ GOTO 5
  IF ~  Global("Speak_with_Dead","GLOBAL",1)
~ THEN REPLY #6272 /* ~Posłuż się swoją umiejętnością Gadaj-Kości-Opowieści.~ */ GOTO 2
  IF ~~ THEN REPLY #6273 /* ~Zostaw truposza w spokoju.~ */ EXIT
END

IF ~~ THEN BEGIN 7 // from: 5.4
  SAY #6274 /* ~Ktoś wystawił na czole zombie rachunek z karczmy 'Proch do Prochu', ale treść rachunku nie jest czytelna, bowiem ktoś inny węglem wysmarował na rachunku słowa 'GOSPODA POD GOREJĄCYM CZŁEKIEM'.~ */
  IF ~  !NearbyDialog("DMorte")
Global("Post_Point","GLOBAL",0)
~ THEN REPLY #6275 /* ~"Gospoda 'Pod Gorejącym Człekiem'?"~ */ DO ~SetGlobal("Post_Point","GLOBAL",1)
~ GOTO 10
  IF ~  NearbyDialog("DMorte")
Global("Post_Point","GLOBAL",0)
~ THEN REPLY #6276 /* ~"Gospoda 'Pod Gorejącym Człekiem'?"~ */ DO ~SetGlobal("Post_Point","GLOBAL",1)
~ GOTO 14
  IF ~  GlobalGT("Post_Point","GLOBAL",0)
~ THEN REPLY #6277 /* ~"Gospoda 'Pod Gorejącym Człekiem'?"~ */ GOTO 10
  IF ~  HasItem("Cobble","Post")
~ THEN REPLY #6278 /* ~Obejrzyj truposza.~ */ GOTO 3
  IF ~  !HasItem("Cobble","Post")
~ THEN REPLY #6279 /* ~Obejrzyj truposza.~ */ GOTO 4
  IF ~~ THEN REPLY #6280 /* ~Sprawdź inne informacje.~ */ GOTO 5
  IF ~  Global("Speak_with_Dead","GLOBAL",1)
~ THEN REPLY #6281 /* ~Posłuż się swoją umiejętnością Gadaj-Kości-Opowieści.~ */ GOTO 2
  IF ~~ THEN REPLY #6282 /* ~Zostaw truposza w spokoju.~ */ EXIT
END

IF ~~ THEN BEGIN 8 // from: 5.5
  SAY #6283 /* ~"ZAWIADOMIENIE URZĘDOWE. W myśl uchwały Kancelarii Sprawiedliwości i za wiedzą i zgodą społeczności miasta Sigil, ogłasza się, że ci, którzy dopuszczają się czynów niegodnych na osobach zarejestrowanych sług frakcji Grabarzy, czy to bezczeszcząc ich ciała rysunkami graffiti, czy też złośliwymi atakami zakłócając ich spokój, bądź też nielegalnie używając ich jako słupów ogłoszeniowych, będą uważani za sprawców czynu kwalifikowanego jako Chuligańska Napaść i sądzeni będą wedle prawa regulującego takowe wandalskie występki. - Z woli Członków Izby Rządzącej."~ */
  IF ~  HasItem("Cobble","Post")
~ THEN REPLY #6284 /* ~Obejrzyj truposza.~ */ GOTO 3
  IF ~  !HasItem("Cobble","Post")
~ THEN REPLY #6285 /* ~Obejrzyj truposza.~ */ GOTO 4
  IF ~~ THEN REPLY #6286 /* ~Sprawdź inne informacje.~ */ GOTO 5
  IF ~  Global("Speak_with_Dead","GLOBAL",1)
~ THEN REPLY #6287 /* ~Posłuż się swoją umiejętnością Gadaj-Kości-Opowieści.~ */ GOTO 2
  IF ~~ THEN REPLY #6288 /* ~Zostaw truposza w spokoju.~ */ EXIT
END

IF ~~ THEN BEGIN 9 // from: 5.2
  SAY #6289 /* ~Graffiti obejmuje głównie wulgaryzmy pod adresem Grabarzy i hasła gloryfikujące organizacje będące zapewne lokalnymi szajkami. Ciebie jednak zainteresował szczególnie jeden fragment graffiti - ktoś wyrył na lewym ramieniu zombie imię 'Farod' i przekreślił je znakiem 'X'.~ */
  IF ~  Global("Post_Point","GLOBAL",1)
~ THEN REPLY #6290 /* ~"Farod?"~ */ DO ~AddexperienceParty(500)
SetGlobal("Post_Point","GLOBAL",2)
~ JOURNAL #66757 /* ~Wypowiedziałem na głos imię Faroda i w ten sposób spytałem "Drogowskazu", gdzie też może przebywać obiekt moich poszukiwań... Zombie wskazał zabudowania znajdujące się na zachód od Kostnicy a następne, co dość osobliwe, skierował rękę w dół. Czyżby Farod znajdował się pod ziemią? I czy to przenośnia, czy też faktycznie już go pogrzebano?~ */ GOTO 12
  IF ~  Global("Post_Point","GLOBAL",2)
~ THEN REPLY #6291 /* ~"Farod?"~ */ GOTO 12
  IF ~  HasItem("Cobble","Post")
~ THEN REPLY #6292 /* ~Obejrzyj truposza.~ */ GOTO 3
  IF ~  !HasItem("Cobble","Post")
~ THEN REPLY #6293 /* ~Obejrzyj truposza.~ */ GOTO 4
  IF ~~ THEN REPLY #6294 /* ~Sprawdź inne informacje.~ */ GOTO 5
  IF ~  Global("Speak_with_Dead","GLOBAL",1)
~ THEN REPLY #6295 /* ~Posłuż się swoją umiejętnością Gadaj-Kości-Opowieści.~ */ GOTO 2
  IF ~~ THEN REPLY #6296 /* ~Zostaw truposza w spokoju.~ */ EXIT
END

IF ~~ THEN BEGIN 10 // from: 7.0 7.2
  SAY #6297 /* ~Zombie natychmiast wyrzuca przed siebie lewe ramię i wskazuje kierunek południowy. W chwilę później jego ramię opada z donośnym pacnięciem.~ */
  IF ~  HasItem("Cobble","Post")
~ THEN REPLY #6298 /* ~Obejrzyj truposza.~ */ GOTO 3
  IF ~  !HasItem("Cobble","Post")
~ THEN REPLY #6299 /* ~Obejrzyj truposza.~ */ GOTO 4
  IF ~  CheckStatGT(Protagonist,11,INT)
CheckStatLT(Protagonist,12,WIS)
~ THEN REPLY #6300 /* ~"Hmmm. Ciekawe, czy to zadziała także przy innych informacjach..."~ */ GOTO 5
  IF ~  CheckStatGT(Protagonist,11,WIS)
~ THEN REPLY #6301 /* ~"Hmmm. Ciekawe, czy to zadziała także przy innych informacjach..."~ */ GOTO 5
  IF ~  CheckStatLT(Protagonist,12,INT)
CheckStatLT(Protagonist,12,WIS)
~ THEN REPLY #6302 /* ~Sprawdź inne informacje.~ */ GOTO 5
  IF ~  Global("Speak_with_Dead","GLOBAL",1)
~ THEN REPLY #6303 /* ~Posłuż się swoją umiejętnością Gadaj-Kości-Opowieści.~ */ GOTO 2
  IF ~~ THEN REPLY #6304 /* ~"Hm... Dziękuję."~ */ EXIT
END

IF ~~ THEN BEGIN 11 // from: 6.0
  SAY #6305 /* ~Zombie natychmiast wyrzuca przed siebie lewe ramię i wskazuje kierunek południowo-zachodni. W chwilę później jego ramię opada z donośnym pacnięciem.~ */
  IF ~  HasItem("Cobble","Post")
~ THEN REPLY #6306 /* ~Obejrzyj truposza.~ */ GOTO 3
  IF ~  !HasItem("Cobble","Post")
~ THEN REPLY #6307 /* ~Obejrzyj truposza.~ */ GOTO 4
  IF ~~ THEN REPLY #6308 /* ~Sprawdź inne informacje.~ */ GOTO 5
  IF ~  Global("Speak_with_Dead","GLOBAL",1)
~ THEN REPLY #6309 /* ~Posłuż się swoją umiejętnością Gadaj-Kości-Opowieści.~ */ GOTO 2
  IF ~~ THEN REPLY #6310 /* ~"Hm... Dziękuję."~ */ EXIT
END

IF ~~ THEN BEGIN 12 // from: 9.0 9.1
  SAY #6311 /* ~Zombie natychmiast wyrzuca przed siebie lewe ramię i wskazuje kierunek zachodni, potem zaś wskazuje w dół. W chwilę później jego ramię opada z głuchym pacnięciem.~ */
  IF ~  HasItem("Cobble","Post")
~ THEN REPLY #6312 /* ~Obejrzyj truposza.~ */ GOTO 3
  IF ~  !HasItem("Cobble","Post")
~ THEN REPLY #6313 /* ~Obejrzyj truposza.~ */ GOTO 4
  IF ~~ THEN REPLY #6314 /* ~Sprawdź inne informacje.~ */ GOTO 5
  IF ~  Global("Speak_with_Dead","GLOBAL",1)
~ THEN REPLY #6315 /* ~Posłuż się swoją umiejętnością Gadaj-Kości-Opowieści.~ */ GOTO 2
  IF ~~ THEN REPLY #6316 /* ~"Hm... Dziękuję."~ */ EXIT
END

IF ~~ THEN BEGIN 13 // from: 3.2
  SAY #6317 /* ~Chwytasz brukowiec i wyciągasz go z czaszki truposza. W ślad za kamieniem z głowy zombie wynurzają się pasma tkanki mózgowej i zgniłego ciała. Wygląda na to, że wszystko, co stanowiło treść jego czaszki, wyciekło dawno temu.~ */
  IF ~~ THEN REPLY #6318 /* ~Obejrzyj truposza.~ */ GOTO 4
  IF ~~ THEN REPLY #6319 /* ~Sprawdź inne informacje.~ */ GOTO 5
  IF ~  Global("Speak_with_Dead","GLOBAL",1)
~ THEN REPLY #6320 /* ~Posłuż się swoją umiejętnością Gadaj-Kości-Opowieści.~ */ GOTO 2
  IF ~~ THEN REPLY #6321 /* ~Zostaw truposza w spokoju.~ */ EXIT
END

IF ~~ THEN BEGIN 14 // from: 7.1
  SAY #6322 /* ~Zombie natychmiast wyrzuca lewe ramię przed siebie i wyciąga je ku południowemu wschodowi. W chwilę później jego ramię opada z donośnym pacnięciem.~ */
  IF ~~ THEN EXTERN ~DMORTE~ 109
END

IF ~~ THEN BEGIN 15 // from:
  SAY #9749 /* ~Zombie stoi bez ruchu. Na skórze jego ramienia dostrzegasz wolną powierzchnię, oszczędzoną przez nieczystości i bazgroły. W sam raz miejsce na to, aby umieścić tam jej imię.~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 16 // from:
  SAY #9750 /* ~Zombie natychmiast wstrząsa swoim ramieniem (wskazując, gdzie, u licha, może się podziewać Xixi).~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 17 // from:
  SAY #9751 /* ~Zombie pozostaje nieporuszony.~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 18 // from: 5.6
  SAY #46498 /* ~"POSZUKIWANA DO PRACY. Zdrowa, krzepka osoba, chętna do zbadania sprawy, mającej pierwszorzędne znaczenie dla frakcji Grabarzy. W przypadku fortunnego wypełnienia się rzeczonego zadania, przewidziane jest godziwe wynagrodzenie. Zainteresowanych prosimy o przedkładanie ofert Inicjacie Norochjowi w karczmie 'Proch do Prochu'."~ */
  IF ~  GlobalGT("Post_Point","GLOBAL",0)
~ THEN REPLY #46499 /* ~"Karczma 'Proch do Prochu'?"~ */ DO ~SetGlobal("Norochj_Ad","GLOBAL",1)
~ GOTO 19
  IF ~  HasItem("Cobble","Post")
~ THEN REPLY #46501 /* ~Obejrzyj truposza.~ */ DO ~SetGlobal("Norochj_Ad","GLOBAL",1)
~ GOTO 3
  IF ~  !HasItem("Cobble","Post")
~ THEN REPLY #46502 /* ~Obejrzyj truposza.~ */ DO ~SetGlobal("Norochj_Ad","GLOBAL",1)
~ GOTO 4
  IF ~~ THEN REPLY #46503 /* ~Sprawdź inne informacje.~ */ DO ~SetGlobal("Norochj_Ad","GLOBAL",1)
~ GOTO 5
  IF ~  Global("Speak_with_Dead","GLOBAL",1)
~ THEN REPLY #46504 /* ~Posłuż się swoją umiejętnością Gadaj-Kości-Opowieści.~ */ DO ~SetGlobal("Norochj_Ad","GLOBAL",1)
~ GOTO 2
  IF ~~ THEN REPLY #46505 /* ~Zostaw truposza w spokoju.~ */ DO ~SetGlobal("Norochj_Ad","GLOBAL",1)
~ EXIT
END

IF ~~ THEN BEGIN 19 // from: 18.0
  SAY #46500 /* ~Zombie natychmiast wyrzuca przed siebie lewe ramię i wyciąga je ku zachodowi, wskazując stojący przed tobą budynek. W chwilę później ramię truposza opada z donośnym pacnięciem.~ */
  IF ~  HasItem("Cobble","Post")
~ THEN REPLY #46506 /* ~Obejrzyj truposza.~ */ GOTO 3
  IF ~  !HasItem("Cobble","Post")
~ THEN REPLY #46507 /* ~Obejrzyj truposza.~ */ GOTO 4
  IF ~~ THEN REPLY #46508 /* ~Sprawdź inne informacje.~ */ GOTO 5
  IF ~  Global("Speak_with_Dead","GLOBAL",1)
~ THEN REPLY #46509 /* ~Posłuż się swoją umiejętnością Gadaj-Kości-Opowieści.~ */ GOTO 2
  IF ~~ THEN REPLY #46510 /* ~"Hm... Dziękuję."~ */ EXIT
END
