// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DCINDER.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\pl_PL\dialog.tlk
// dialogF  : (none)

BEGIN ~DCINDER~

IF ~  NumTimesTalkedTo(0)
~ THEN BEGIN 0 // from:
  SAY #34264 /* ~Widzisz sporego, krzykliwego handlarza. Wygląda na całkiem łysego, a jego bladożółta skóra jest poznaczona bliznami od oparzeń. Spogląda na ciebie uważnie, gdy się zbliżasz.~ */
  IF ~~ THEN REPLY #34265 /* ~"Witaj."~ */ GOTO 1
  IF ~~ THEN REPLY #34266 /* ~Zignoruj mężczyznę.~ */ DO ~SetNumTimesTalkedTo(0)
~ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #34267 /* ~Uśmiecha się. "Witaj, jestem Żar. Słyszałem o tobie. To tyś jest tym Tępakiem, co do gania po wszystkich Dzielnicach, zadając pytania. W czym mogę ci pomóc?"~ */
  IF ~~ THEN REPLY #34268 /* ~"Mam kilka pytań..."~ */ GOTO 2
  IF ~~ THEN REPLY #34269 /* ~"Wyglądasz, jakbyś sam miał kilka blizn."~ */ GOTO 13
  IF ~~ THEN REPLY #34270 /* ~"Nic, żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.0 3.0 5.0 9.0 10.0 13.1 14.1 15.0 16.0 17.1 18.2 20.1 21.2 22.2 23.1 24.2 25.1 26.1 28.1
  SAY #34271 /* ~"Będę zadowolony, mogąc odpowiedzieć na twoje pytania..." Mruży oczy i obdarza cię chytrym uśmieszkiem. "Oczywiście, te dotyczące sklepu i towarów, które tu widzisz. Nie jestem przewodnikiem, o nie."~ */
  IF ~  Global("Know_Lothar","GLOBAL",1)
!Global("AR0508_Visited","GLOBAL",1)
~ THEN REPLY #34272 /* ~"Szukam osoby o imieniu Lotar, albo Pan Kości..."~ */ GOTO 3
  IF ~  Global("Morte_Stolen","GLOBAL",1)
!Global("Know_Lothar","GLOBAL",1)
~ THEN REPLY #34273 /* ~"Miałem czaszkę i ukradziono mi ją. Nie znasz kogoś, kto mógłby to uczynić?"~ */ GOTO 4
  IF ~~ THEN REPLY #34274 /* ~"Chcę kupić trochę broni."~ */ GOTO 9
  IF ~~ THEN REPLY #34275 /* ~"Chcę kupić trochę magicznych przedmiotów."~ */ GOTO 10
  IF ~~ THEN REPLY #34276 /* ~"Interesują mnie zaklęcia."~ */ GOTO 11
  IF ~~ THEN REPLY #34277 /* ~"Co to za miejsce?"~ */ GOTO 17
  IF ~~ THEN REPLY #34278 /* ~"Muszę iść. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 2.0
  SAY #34279 /* ~Zastanawia się. "Lotar... Pan... nie, nic mi to nie mówi."~ */
  IF ~~ THEN REPLY #34280 /* ~"Rozumiem. Mam jeszcze kilka pytań..."~ */ GOTO 2
  IF ~~ THEN REPLY #34281 /* ~"Dzięki, żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 2.1
  SAY #34282 /* ~Marszczy się. "Czaszkę? Masz na myśli... czaszkę?"~ */
  IF ~~ THEN REPLY #34283 /* ~"Tak, czaszkę."~ */ GOTO 5
  IF ~~ THEN REPLY #34284 /* ~"Nie, tylko żartowałem."~ */ GOTO 6
  IF ~~ THEN REPLY #34285 /* ~"Trudno. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 4.0
  SAY #34286 /* ~Obdarza cię zdziwionym spojrzeniem. "Nie widzę powodu, abyś posiadał czaszkę, a już zupełnie, żeby ktoś miał ci ją ukraść."~ */
  IF ~~ THEN REPLY #34287 /* ~"Rozumiem. Mam jeszcze kilka pytań..."~ */ GOTO 2
  IF ~~ THEN REPLY #34288 /* ~"Dzięki, żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 6 // from: 4.1
  SAY #34289 /* ~Patrzy na ciebie z irytacją. "To jasne, śmiałku, że zajmujemy się dwoma różnymi rodzajami interesów. Wróć, gdy będziesz miał jakieś poważne sprawy."~ */
  IF ~~ THEN REPLY #34290 /* ~"Mam do ciebie jeszcze kilka pytań..."~ */ GOTO 7
  IF ~~ THEN REPLY #34291 /* ~"Muszę iść. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 7 // from: 6.0
  SAY #34292 /* ~Wygląda na zdenerwowanego. "Nie obchodzą mnie twoje pytania. Czy coś w końcu *kupisz*? Jestem człowiekiem, który nie ma przed sobą tak długiego życia, jakby chciał, by odpowiadać na twe pytania. Jak chcesz se pogadać, to idź do tego chłopaka, Lazlo. On by zakręcił w głowie nawet Wielkim Pierścieniom, gdyby dano mu choć skrawek szansy."~ */
  IF ~~ THEN REPLY #34293 /* ~"Lazlo?"~ */ GOTO 8
  IF ~~ THEN REPLY #34294 /* ~"Dzięki, żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 8 // from: 7.0
  SAY #34295 /* ~Przytakuje. "Przeważnie pilnuje pieca."~ */
  IF ~~ THEN REPLY #34296 /* ~"Dzięki, żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 9 // from: 2.2
  SAY #34297 /* ~Gestem wskazuje inne stoisko. "Zatem potrzebujesz Anze. Jego leże jest obok pieca."~ */
  IF ~~ THEN REPLY #34298 /* ~"Mam jeszcze kilka pytań..."~ */ GOTO 2
  IF ~~ THEN REPLY #34299 /* ~"Dzięki, żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 10 // from: 2.3
  SAY #34300 /* ~Gestem wskazuje inne stoisko. "Zatem potrzebujesz Aaleka. Jego leże jest na przeciwnym końcu targu."~ */
  IF ~~ THEN REPLY #34301 /* ~"Mam jeszcze kilka pytań..."~ */ GOTO 2
  IF ~~ THEN REPLY #34302 /* ~"Dzięki, żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 11 // from: 2.4 16.1
  SAY #34303 /* ~Uśmiecha się. "Chyba mogę ci pomóc. Pozwól, że pokażę ci moje towary."~ */
  IF ~~ THEN REPLY #34304 /* ~"W porządku."~ */ DO ~StartStore("Cindstr",Protagonist)
~ EXIT
  IF ~~ THEN REPLY #34305 /* ~"Nieważne. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 12 // from:
  SAY #34306 /* ~.~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 13 // from: 1.1
  SAY #34310 /* ~Marszczy się, po czym zaczyna śmiać. "Tak. Kilka lat temu miałem leże w Ulu. Jakiś szalony mag zdecydował, że wypali z Sigil całą dzielnicę. Prawie mnie ze sobą zabrał. Przez miesiąc żem był chory."~ */
  IF ~~ THEN REPLY #34311 /* ~"Miesiąc? To nie tak dawno."~ */ GOTO 14
  IF ~~ THEN REPLY #34312 /* ~"Rozumiem. Mam do ciebie kilka pytań..."~ */ GOTO 2
  IF ~~ THEN REPLY #34313 /* ~"Muszę iść. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 14 // from: 13.0
  SAY #34314 /* ~Przytakuje i przez chwilę patrzy w dal. "Tia, mogło być gorzej. Miejscowy mag mnie wyleczył, blizny i inne. Mógł sprawić, by mi z powrotem wyrosły włosy, ale podoba mi się mój wygląd."~ */
  IF ~~ THEN REPLY #34315 /* ~"Czy sądzisz, że ten mag mógłby coś poradzić na moje blizny?"~ */ GOTO 15
  IF ~~ THEN REPLY #34316 /* ~"Rozumiem. Mam do ciebie kilka pytań..."~ */ GOTO 2
  IF ~~ THEN REPLY #34317 /* ~"Muszę iść. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 15 // from: 14.0
  SAY #34318 /* ~Patrzy na ciebie, po czym wzrusza ramionami. "Nie widzę przeciwskazań. Twoje blizny nie wyglądają tak źle..." Przygląda ci się bliżej. "Tia, i kto to mówi. Powinieneś sam z nim pogadać. Sebastion się nazywa i ma swoje leże gdzieś przy kuźni."~ */
  IF ~~ THEN REPLY #34319 /* ~"Może tak uczynię. Mam do ciebie kilka pytań..."~ */ GOTO 2
  IF ~~ THEN REPLY #34320 /* ~"Muszę iść. Żegnaj."~ */ EXIT
END

IF ~  NumTimesTalkedToGT(0)
~ THEN BEGIN 16 // from:
  SAY #34321 /* ~Żar uśmiecha się. "Wróciłeś, co? Czym mogę służyć?""~ */
  IF ~~ THEN REPLY #34322 /* ~"Mam kilka pytań..."~ */ GOTO 2
  IF ~~ THEN REPLY #34323 /* ~"Potrzebuję kilku zaklęć."~ */ GOTO 11
  IF ~~ THEN REPLY #34324 /* ~"Nic, żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 17 // from: 2.5
  SAY #34325 /* ~Dumnie pokazuje gestem dookoła siebie. "To targ pod gołym niebem, jeden z najlepszych sklepów w Sigil. Szczęście się do ciebie uśmiechnęło, śmiałku, żeś tu przybył. Mamy pusty stragan." Wskazuje na stoisko obok swojego. "Jeśli byłbyś sam handlarzem, to mógłbyś tu ustawić swoje leże i targować się z resztą z nas tak długo, jak tylko nie byłbyś za głośno, albo zbyt byś nie przeszkadzał..."~ */
  IF ~~ THEN REPLY #34326 /* ~"Dlaczego to stoisko jest puste?"~ */ GOTO 18
  IF ~~ THEN REPLY #34327 /* ~"Zapamiętam to. Mam jeszcze kilka pytań..."~ */ GOTO 2
  IF ~~ THEN REPLY #34328 /* ~"Dzięki. Muszę iść. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 18 // from: 17.0
  SAY #34329 /* ~Rzuca okiem na puste stoisko. "Handlarz o imieniu Zak miał tam swe leże. Ostatnio znalazł sobie stronę w Księdze Umarłych." Marszczy się. "To dziwna historia."~ */
  IF ~~ THEN REPLY #34330 /* ~"Dlaczego dziwna?"~ */ GOTO 19
  IF ~~ THEN REPLY #34331 /* ~"Księdze Umarłych?"~ */ GOTO 25
  IF ~~ THEN REPLY #34332 /* ~"Mam jeszcze kilka pytań..."~ */ GOTO 2
  IF ~~ THEN REPLY #34333 /* ~"Dzięki. Muszę iść. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 19 // from: 18.0 25.0
  SAY #34334 /* ~Myśli przez chwilę. "Cóż... nie znam całej sprawy, ale Zak miał drobne problemy w interesie i potrzebował trochę pieniędzy. Wziął pożyczkę od Byrona Szpicera, pożyczkodawcy. Po tym Szpicer próbował odebrać mu interes, ale Zak odmówił." Przerywa.~ */
  IF ~~ THEN REPLY #34335 /* ~"Mów dalej."~ */ DO ~SetGlobal("Know_Byron","GLOBAL",1)
~ GOTO 20
END

IF ~~ THEN BEGIN 20 // from: 19.0
  SAY #34336 /* ~Wzdycha i potrząsa głową. "Niedługo potem Zak był już truposzem. Szpicer pozwał wdowę po nim, Tristę, do sądu, by oddała mu pieniądze, które Zak był mu winien. Twierdziła, że dług został spłacony i że posiada dokumenty, by to udowodnić... ale okazało się, że one zaginęły."~ */
  IF ~~ THEN REPLY #34337 /* ~"Więc co się stało?"~ */ GOTO 21
  IF ~~ THEN REPLY #34338 /* ~"Mam jeszcze kilka pytań..."~ */ GOTO 2
  IF ~~ THEN REPLY #34339 /* ~"Dzięki. Muszę iść. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 21 // from: 20.0
  SAY #34340 /* ~Wzrusza ramionami. "Bez dowodu o zapłacie długu, interes został sprzedany, a wdowa Trista została obarczona odpowiedzialnością za pozostały dług. Nie mogła go zapłacić, więc trafiła na blok."~ */
  IF ~~ THEN REPLY #34341 /* ~"Blok?"~ */ GOTO 22
  IF ~~ THEN REPLY #34342 /* ~"Powiedziałeś coś o zaginionych dokumentach."~ */ JOURNAL #31880 /* ~Ktoś nazywający się Byron Szpicer, prowadzi chyba jakieś podejrzane interesy. Wygląda na to, że zabił kupca o imieniu Zak, a następnie wykradł pewne dokumenty od Tristy, wdowy po nim. Bez tych dokumentów Trista nie może udowodnić, że spłaciła pożyczkę i ma zostać sprzedana w niewolę, aby pokryć dług. Chyba się tym zajmę.~ */ GOTO 24
  IF ~~ THEN REPLY #34343 /* ~"Mam jeszcze kilka pytań..."~ */ GOTO 2
  IF ~~ THEN REPLY #34344 /* ~"Dzięki. Muszę już iść. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 22 // from: 21.0
  SAY #34345 /* ~"Tia, blok aukcyjny. Jak nie możesz spłacić swoich długów, sprzedają cię za karę na kilka lat, byś komuś służył." Potrząsa ponuro głową.~ */
  IF ~~ THEN REPLY #34346 /* ~"Gdzie mogę znaleźć ten blok?"~ */ GOTO 23
  IF ~~ THEN REPLY #34347 /* ~"Powiedziałeś coś o zaginionych dokumentach."~ */ JOURNAL #31880 /* ~Ktoś nazywający się Byron Szpicer, prowadzi chyba jakieś podejrzane interesy. Wygląda na to, że zabił kupca o imieniu Zak, a następnie wykradł pewne dokumenty od Tristy, wdowy po nim. Bez tych dokumentów Trista nie może udowodnić, że spłaciła pożyczkę i ma zostać sprzedana w niewolę, aby pokryć dług. Chyba się tym zajmę.~ */ GOTO 24
  IF ~~ THEN REPLY #34348 /* ~"Mam jeszcze kilka pytań..."~ */ GOTO 2
  IF ~~ THEN REPLY #34349 /* ~"Dzięki. Muszę już iść. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 23 // from: 22.0
  SAY #34350 /* ~"Idź na północ od targu. Nie przegapisz go, bo sporo tam ludzi."~ */
  IF ~~ THEN REPLY #34351 /* ~"Powiedziałeś coś o zaginionych dokumentach."~ */ JOURNAL #31880 /* ~Ktoś nazywający się Byron Szpicer, prowadzi chyba jakieś podejrzane interesy. Wygląda na to, że zabił kupca o imieniu Zak, a następnie wykradł pewne dokumenty od Tristy, wdowy po nim. Bez tych dokumentów Trista nie może udowodnić, że spłaciła pożyczkę i ma zostać sprzedana w niewolę, aby pokryć dług. Chyba się tym zajmę.~ */ GOTO 24
  IF ~~ THEN REPLY #34352 /* ~"Mam jeszcze kilka pytań..."~ */ GOTO 2
  IF ~~ THEN REPLY #34353 /* ~"Dzięki. Muszę już iść. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 24 // from: 21.1 22.1 23.0
  SAY #34354 /* ~"Tia. Trista mówiła, że jej mąż, Zak, spłacił całą pożyczkę i że miała dokumenty, by to udowodnić. Ale gdy wróciła, by je przynieść, już ich nie było." Parska i wygląda na zdenerwowanego. "Założę się, że Szpicer za tym stoi."~ */
  IF ~~ THEN REPLY #34355 /* ~"Gdzie mogę znaleźć tego Szpicera?"~ */ GOTO 26
  IF ~~ THEN REPLY #34356 /* ~"Czy ktoś bada tę sprawę?"~ */ DO ~SetGlobal("Corvus_Zac","GLOBAL",1)
~ GOTO 27
  IF ~~ THEN REPLY #34357 /* ~"Rozumiem. Mam jeszcze kilka pytań..."~ */ GOTO 2
  IF ~~ THEN REPLY #66229 /* ~"Dzięki. Muszę już iść. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 25 // from: 18.1
  SAY #34358 /* ~Obdarza cię dziwnym spojrzeniem. "Tia, czy jesteś tępakiem? Został zabity i zapisano go w księdze umarłych."~ */
  IF ~~ THEN REPLY #34359 /* ~"Rozumiem. Więc mówiłeś coś o pustym stoisku."~ */ GOTO 19
  IF ~~ THEN REPLY #34360 /* ~"Rozumiem. Mam jeszcze kilka pytań..."~ */ GOTO 2
  IF ~~ THEN REPLY #34361 /* ~"Dzięki. Muszę już iść. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 26 // from: 24.0 28.0
  SAY #34362 /* ~"Ma swoje leże tuż poza targiem, śmiałku. Nie możesz go przegapić."~ */
  IF ~~ THEN REPLY #34356 /* ~"Czy ktoś bada tę sprawę?"~ */ DO ~SetGlobal("Corvus_Zac","GLOBAL",1)
~ GOTO 27
  IF ~~ THEN REPLY #34363 /* ~"Rozumiem. Mam jeszcze kilka pytań..."~ */ GOTO 2
  IF ~~ THEN REPLY #34364 /* ~"Dzięki. Muszę już iść. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 27 // from: 24.1 26.0
  SAY #66230 /* ~"Tia, Harmonium..." Przerywa na chwilę, po czym wzdycha. "Oczywiście, nie znaleziono żadnego dowodu zbrodni. Korvus, jeden ze strażników Harmonium tu, na targu, jest zainteresowany dowiedzeniem się, co naprawdę stało się z Zakiem. Jeśli coś by odnaleziono, to z nim należałoby to załatwić..."~ */
  IF ~~ THEN REPLY #66231 /* ~"Gdzie mogę znaleźć Korvusa?"~ */ GOTO 28
END

IF ~~ THEN BEGIN 28 // from: 27.0
  SAY #66232 /* ~"Możesz przeważnie znaleźć go tam, przy zachodnim wyjściu." Wzdycha. "Czy jest jeszcze coś, co chcesz wiedzieć?"~ */
  IF ~~ THEN REPLY #66233 /* ~"Gdzie mogę znaleźć Byrona Szpicera?"~ */ GOTO 26
  IF ~~ THEN REPLY #66234 /* ~"Rozumiem. Mam jeszcze kilka pytań..."~ */ GOTO 2
  IF ~~ THEN REPLY #66235 /* ~"Dzięki. Muszę już iść. Żegnaj."~ */ EXIT
END
