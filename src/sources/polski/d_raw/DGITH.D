// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DGITH.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\pl_PL\dialog.tlk
// dialogF  : (none)

BEGIN ~DGITH~

IF ~  Global("Know_Gith","GLOBAL",0)
!NearbyDialog("DDakkon")
Global("Evil_Githzerai_1","GLOBAL",0)
~ THEN BEGIN 0 // from:
  SAY #2276 /* ~Gdy podchodzisz, mężczyzna ten odwraca się powoli. Jego oczy są jak dwa czarne kamyki; szybko przebiega wzrokiem twoją postać, a potem spogląda ci w oczy. Chociaż wygląda na humanoida, ma żółty odcień skóry i wymizerowane oblicze. Ma szczupłe, kanciaste ciało; jego kończyny wyglądają, jak gdyby składały się wyłącznie z mięśni i kości. Jego ubranie ma ciekawą mieszankę ostrych kolorów i szarego, poplamionego błotem brązu.~ */
  IF ~  GlobalLT("Githzerai","GLOBAL",5)
Global("Anazi_Help","GLOBAL",0)
~ THEN REPLY #2350 /* ~"Witaj."~ */ GOTO 5
  IF ~  GlobalGT("Githzerai","GLOBAL",4)
Global("Anazi_Help","GLOBAL",0)
~ THEN REPLY #2351 /* ~"Witaj."~ */ GOTO 1
  IF ~  Global("Anazi_Help","GLOBAL",1)
~ THEN REPLY #2352 /* ~"Witaj."~ */ GOTO 1
  IF ~~ THEN REPLY #2353 /* ~Zostaw go w spokoju.~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.1 0.2 46.3 46.4
  SAY #2277 /* ~Na chwilę przerywa, studiując cię a potem odpowiada łamanym wspólnym. "*Znam* cię." Ma taki akcent, że trudno go zrozumieć - jak gdyby chwytał każde słowo rozbijał na kawałki i dla pewności wyciągał niego każdą samogłoskę. Nacisk, jaki kładzie na słowo *znam* brzmi dziwnie. "Wysłucham cię."~ */
  IF ~  Global("Anazi_Help","GLOBAL",0)
Global("Kill_Githyanki_KAPUTZ","GLOBAL",0)
~ THEN REPLY #2355 /* ~"'Znasz' mnie? Wiesz, kim jestem?"~ */ GOTO 2
  IF ~  Global("Anazi_Help","GLOBAL",0)
GlobalGT("Kill_Githyanki_KAPUTZ","GLOBAL",0)
~ THEN REPLY #2356 /* ~"'Znasz' mnie? Wiesz, kim jestem?"~ */ GOTO 3
  IF ~  Global("Anazi_Help","GLOBAL",1)
~ THEN REPLY #2357 /* ~"'Znasz' mnie? Wiesz, kim jestem?"~ */ GOTO 4
  IF ~~ THEN REPLY #2358 /* ~"Rozumiem... Słuchaj, mam kilka pytań..."~ */ GOTO 14
  IF ~~ THEN REPLY #2361 /* ~"Nie mam żadnych pytań. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.0
  SAY #2278 /* ~"*Znam* cię. *Znam* twoje czyny. Twe czyny pozwalają *poznać* twoją naturę. Jesteś *znany* jako przyjaciel Ludu." Jeszcze raz przebiega cię wzrokiem, jak gdyby ponownie cię oceniał. "Wysłucham cię."~ */
  IF ~~ THEN REPLY #2362 /* ~"W porządku. Mam kilka pytań..."~ */ GOTO 14
  IF ~~ THEN REPLY #2363 /* ~Zostaw githa w spokoju.~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 1.1
  SAY #2279 /* ~"*Znam* cię. Pozwoliłeś ziemi pić krew githyanki. Twe czyny pozwalają *poznać* twoją naturę." Jeszcze raz przebiega cię wzrokiem, jak gdyby ponownie cię oceniał. "Wysłucham cię."~ */
  IF ~~ THEN REPLY #2364 /* ~"W porządku. Mam kilka pytań..."~ */ GOTO 14
  IF ~~ THEN REPLY #2366 /* ~Zostaw githa w spokoju.~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 1.2
  SAY #2280 /* ~"*Znam* cię. Pomogłeś jednej z naszego Ludu, który zatruło ją miasto. Ten czyn pozwolił *poznać* twoją naturę. Jesteś *znany* jako przyjaciel Ludu." Jeszcze raz przebiega cię wzrokiem, jak gdyby ponownie cię oceniał. "Wysłucham cię."~ */
  IF ~~ THEN REPLY #2367 /* ~"W porządku. Mam kilka pytań..."~ */ GOTO 14
  IF ~~ THEN REPLY #2368 /* ~Zostaw githa w spokoju.~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 0.0 46.2
  SAY #2281 /* ~Mężczyzna nie odzywa się. Nie zwraca uwagi na twoje powitanie, jedynie obserwuje cię.~ */
  IF ~  Global("Know_Githyanki","GLOBAL",1)
~ THEN REPLY #2369 /* ~"Jesteś Githyanki, prawda? Mam kilka pytań..."~ */ GOTO 6
  IF ~  !NearbyDialog("DMorte")
NearbyDialog("DAnnah")
GlobalGT("BD_ANNAH_MORALE","GLOBAL",9)
Global("Annah_Githzerai_Quip_1","GLOBAL",0)
~ THEN REPLY #8705 /* ~"Powiedziałem 'Witaj'."~ */ DO ~SetGlobal("Annah_Githzerai_Quip_1","GLOBAL",1)
~ EXTERN ~DANNAH~ 32
  IF ~  !NearbyDialog("DMorte")
NearbyDialog("DAnnah")
GlobalLT("BD_ANNAH_MORALE","GLOBAL",10)
Global("Annah_Githzerai_Quip_1","GLOBAL",0)
~ THEN REPLY #8706 /* ~"Powiedziałem 'Witaj'."~ */ DO ~SetGlobal("Annah_Githzerai_Quip_1","GLOBAL",1)
~ EXTERN ~DANNAH~ 33
  IF ~  !NearbyDialog("DMorte")
NearbyDialog("DAnnah")
Global("Annah_Githzerai_Quip_1","GLOBAL",1)
~ THEN REPLY #8707 /* ~"Powiedziałem 'Witaj'."~ */ GOTO 7
  IF ~  NearbyDialog("DMorte")
Global("Morte_Githzerai_Quip_1","GLOBAL",0)
~ THEN REPLY #8708 /* ~"Powiedziałem 'Witaj'."~ */ DO ~SetGlobal("Morte_Githzerai_Quip_1","GLOBAL",1)
~ EXTERN ~DMORTE~ 44
  IF ~  NearbyDialog("DMorte")
Global("Morte_Githzerai_Quip_1","GLOBAL",1)
~ THEN REPLY #8709 /* ~"Powiedziałem 'Witaj'."~ */ EXTERN ~DMORTE~ 45
  IF ~  !NearbyDialog("DMorte")
!NearbyDialog("DAnnah")
~ THEN REPLY #8710 /* ~"Powiedziałem 'Witaj'."~ */ GOTO 7
  IF ~  !NearbyDialog("DMorte")
NearbyDialog("DAnnah")
GlobalGT("BD_ANNAH_MORALE","GLOBAL",9)
Global("Annah_Githzerai_Quip_1","GLOBAL",0)
~ THEN REPLY #8711 /* ~"Mam kilka pytań..."~ */ DO ~SetGlobal("Annah_Githzerai_Quip_1","GLOBAL",1)
~ EXTERN ~DANNAH~ 32
  IF ~  !NearbyDialog("DMorte")
NearbyDialog("DAnnah")
GlobalLT("BD_ANNAH_MORALE","GLOBAL",10)
Global("Annah_Githzerai_Quip_1","GLOBAL",0)
~ THEN REPLY #8712 /* ~"Mam kilka pytań..."~ */ DO ~SetGlobal("Annah_Githzerai_Quip_1","GLOBAL",1)
~ EXTERN ~DANNAH~ 33
  IF ~  !NearbyDialog("DMorte")
NearbyDialog("DAnnah")
Global("Annah_Githzerai_Quip_1","GLOBAL",1)
~ THEN REPLY #8713 /* ~"Mam kilka pytań..."~ */ GOTO 7
  IF ~  NearbyDialog("DMorte")
Global("Morte_Githzerai_Quip_1","GLOBAL",0)
~ THEN REPLY #8714 /* ~"Mam kilka pytań..."~ */ DO ~SetGlobal("Morte_Githzerai_Quip_1","GLOBAL",1)
~ EXTERN ~DMORTE~ 44
  IF ~  NearbyDialog("DMorte")
Global("Morte_Githzerai_Quip_1","GLOBAL",1)
~ THEN REPLY #8715 /* ~"Mam kilka pytań..."~ */ EXTERN ~DMORTE~ 45
  IF ~  !NearbyDialog("DMorte")
!NearbyDialog("DAnnah")
~ THEN REPLY #8716 /* ~"Mam kilka pytań..."~ */ GOTO 7
  IF ~~ THEN REPLY #8717 /* ~"Nieważne. Przepraszam, że ci przeszkodziłem."~ */ EXIT
END

IF ~~ THEN BEGIN 6 // from: 5.0 7.0
  SAY #2282 /* ~Przez chwilę wydaje się, że gith cię nie słyszał. Lecz nagle, słychać szept stali i w jego dłoniach pojawia się miecz. Z sykiem rzuca się na ciebie!~ */
  IF ~~ THEN REPLY #8718 /* ~"No dobrze..."~ */ DO ~Enemy()
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
~ EXIT
END

IF ~~ THEN BEGIN 7 // from: 5.3 5.6 5.9 5.12
  SAY #2283 /* ~Gith nie odzywa się, choć jego czarne oczy wciąż są utkwione w tobie.~ */
  IF ~  Global("Know_Githyanki","GLOBAL",1)
~ THEN REPLY #8719 /* ~"Jesteś Githyanki, prawda? Mam kilka pytań..."~ */ GOTO 6
  IF ~~ THEN REPLY #8720 /* ~"Powiedziałem 'Witaj'."~ */ GOTO 8
  IF ~~ THEN REPLY #8721 /* ~"Rozumiesz, co mówię?"~ */ GOTO 8
  IF ~~ THEN REPLY #8722 /* ~"Mam kilka pytań..."~ */ GOTO 8
  IF ~~ THEN REPLY #8723 /* ~"Nieważne. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 8 // from: 7.1 7.2 7.3
  SAY #2284 /* ~Zastyga na chwilę, studiuje cię a potem odpowiada łamanym wspólnym. "Nie *znam* cię." Ma taki akcent, że trudno go zrozumieć - jak gdyby chwytał każde słowo rozbijał na kawałki i dla pewności wyciągał niego każdą samogłoskę. Nacisk, jaki kładzie na słowo *znam* brzmi dziwnie. "Czego chcesz?"~ */
  IF ~~ THEN REPLY #8724 /* ~"Mam do ciebie kilka pytań..."~ */ GOTO 9
  IF ~~ THEN REPLY #8725 /* ~"Nieważne. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 9 // from: 8.0 61.1
  SAY #2285 /* ~"Nie wysłucham cię." Wygląda jak gdyby chciał przejść obok ciebie.~ */
  IF ~~ THEN REPLY #8726 /* ~Zajdź mu drogę.~ */ GOTO 10
  IF ~~ THEN REPLY #8727 /* ~Pozwól mu odejść.~ */ EXIT
END

IF ~~ THEN BEGIN 10 // from: 9.0
  SAY #2286 /* ~Zatrzymuje się i ponownie spogląda ci w oczy. Zanim możesz odpowiedzieć, słychać szept stali i w jego dłoniach pojawia się miecz. "Odsuń się."~ */
  IF ~~ THEN REPLY #8728 /* ~"Czy najpierw odpowiesz na kilka pytań?"~ */ GOTO 11
  IF ~~ THEN REPLY #8729 /* ~"Nie. Najpierw odpowiedz na kilka pytań."~ */ GOTO 11
  IF ~~ THEN REPLY #8730 /* ~"Nie ustąpię. Lepiej schowaj ten kij na świnie do pochwy, zanim wetknę ci go w ciało."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Githzerai_1","GLOBALLaw",-1)
IncrementGlobalOnceEx("GLOBALEvil_Githzerai_1","GLOBALGood",-1)
~ GOTO 12
  IF ~~ THEN REPLY #8731 /* ~Zaatakuj pierwszy.~ */ DO ~Enemy()
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
IncrementGlobalOnceEx("GLOBALChaotic_Githzerai_1","GLOBALLaw",-1)
IncrementGlobalOnceEx("GLOBALEvil_Githzerai_1","GLOBALGood",-1)
~ EXIT
  IF ~~ THEN REPLY #8732 /* ~Odsuń się i pozwól mu przejść.~ */ EXIT
END

IF ~~ THEN BEGIN 11 // from: 10.0 10.1
  SAY #2287 /* ~Nie zmienia wyrazu twarzy. "Odsuń się."~ */
  IF ~~ THEN REPLY #8733 /* ~"Mam tylko kilka pytań."~ */ GOTO 12
  IF ~~ THEN REPLY #8734 /* ~"W takim razie odpowiedz na kilka pytań."~ */ GOTO 12
  IF ~~ THEN REPLY #8735 /* ~"Nie ustąpię. Lepiej schowaj ten kij na świnie do pochwy, zanim wetknę ci go w ciało."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Githzerai_1","GLOBALLaw",-1)
IncrementGlobalOnceEx("GLOBALEvil_Githzerai_1","GLOBALGood",-1)
~ GOTO 12
  IF ~~ THEN REPLY #8736 /* ~Zaatakuj go pierwszy.~ */ DO ~Enemy()
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
IncrementGlobalOnceEx("GLOBALChaotic_Githzerai_1","GLOBALLaw",-1)
IncrementGlobalOnceEx("GLOBALEvil_Githzerai_1","GLOBALGood",-1)
~ EXIT
  IF ~~ THEN REPLY #9037 /* ~Odsuń się i pozwól mu przejść.~ */ EXIT
END

IF ~~ THEN BEGIN 12 // from: 10.2 11.0 11.1 11.2 70.2 70.4
  SAY #2288 /* ~Sycząc, atakuje cię!~ */
  IF ~~ THEN REPLY #8737 /* ~"Przygotuj się na śmierć..."~ */ DO ~Enemy()
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
~ EXIT
END

IF ~~ THEN BEGIN 13 // from:
  SAY #2289 /* ~.~ */
  IF ~~ THEN REPLY #8738 /* ~Brak odpowiedzi.~ */ EXIT
END

IF ~~ THEN BEGIN 14 // from: 1.3 2.0 3.0 4.0
  SAY #2290 /* ~"K'atzn'ii przy Bramie."~ */
  IF ~  Global("Know_Githzerai_Speak","GLOBAL",1)
CheckStatGT(Protagonist,12,INT)
GlobalLT("Dictionary_Githzerai_Katznii","GLOBAL",2)
~ THEN REPLY #8739 /* ~Spróbuj przypomnieć sobie tłumaczenie...~ */ DO ~SetGlobal("Dictionary_Githzerai_Katznii","GLOBAL",2)
~ GOTO 15
  IF ~  Global("Dictionary_Githzerai_Katznii","GLOBAL",2)
~ THEN REPLY #8740 /* ~Spróbuj przypomnieć sobie tłumaczenie...~ */ GOTO 15
  IF ~  Global("Dictionary_Githzerai_Katznii","GLOBAL",0)
~ THEN REPLY #8741 /* ~"Przepraszam?"~ */ DO ~SetGlobal("Dictionary_Githzerai_Katznii","GLOBAL",1)
~ GOTO 16
  IF ~  Global("Dictionary_Githzerai_Katznii","GLOBAL",1)
~ THEN REPLY #8744 /* ~"Uch... czy to oznacza, że mnie wysłuchasz?"~ */ GOTO 16
  IF ~  Global("Dictionary_Githzerai_Katznii","GLOBAL",2)
~ THEN REPLY #8745 /* ~"Dobrze. Wysłuchasz mnie?"~ */ GOTO 16
  IF ~~ THEN REPLY #8746 /* ~Zostaw go w spokoju.~ */ EXIT
END

IF ~~ THEN BEGIN 15 // from: 14.0 14.1
  SAY #2291 /* ~"K'atzn'ii przy Bramie: "Pytaj i odpowiedz na nasze oba pytania."

*(K'atzn'ii była pielgrzymem githzerai, wędrowała po macierzystej sferze githzerai, Limbo, żeby 'sprawdzić' dyscyplinę ludu. Pojawiała się w bramie każdego miasta githzerai i zadawała serie pytań. Odpowiedzi, które udzielali mieszkańcy, pozwalały jej poznać naturę githzerai, którzy mieszkali w tym mieście. A jednak, czego K'aztn'ii nie wiedziała, słysząc jej pytania mieszkańcy ci poznawali również jej naturę.)*~ */
  IF ~~ THEN REPLY #8749 /* ~"Zobaczymy. Wysłuchasz mnie?"~ */ GOTO 16
  IF ~~ THEN REPLY #8750 /* ~Zostaw go w spokoju.~ */ EXIT
END

IF ~~ THEN BEGIN 16 // from: 14.2 14.3 14.4 15.0 17.0 18.0 39.1 40.0 41.1 42.1 43.1 44.2 45.0
  SAY #2292 /* ~Gith przerywa, po chwili odzywa się znowu. "Pytaj. Wysłucham cię."~ */
  IF ~  Global("Pharod","GLOBAL",0)
~ THEN REPLY #8751 /* ~"Szukam kogoś, kto nazywa się Farod. Wiesz coś na jego temat?"~ */ GOTO 17
  IF ~  Global("Journal","GLOBAL",0)
~ THEN REPLY #8752 /* ~"Zgubiłem dziennik. Nie widziałeś jakiegoś?"~ */ GOTO 18
  IF ~  NearbyDialog("DDakkon")
~ THEN REPLY #8753 /* ~"Opowiedz mi o Dak'konie."~ */ GOTO 39
  IF ~  GlobalGT("Dakkon","GLOBAL",0)
!NearbyDialog("DDakkon")
~ THEN REPLY #8754 /* ~"Czy wiesz coś o githzerai, który nazywa się Dak'kon?"~ */ GOTO 41
  IF ~  Global("Know_Sigil","GLOBAL",0)
~ THEN REPLY #8755 /* ~"Opowiedz mi o tym mieście."~ */ GOTO 19
  IF ~  Global("Know_Sigil","GLOBAL",1)
~ THEN REPLY #8757 /* ~"Opowiedz mi o Sigil."~ */ GOTO 19
  IF ~  GlobalGT("Dictionary_Githzerai_Achali","GLOBAL",0)
~ THEN REPLY #8760 /* ~"Mam kilka... konkretnych... pytań o to miasto."~ */ GOTO 22
  IF ~~ THEN REPLY #8763 /* ~Zostaw go w spokoju.~ */ EXIT
END

IF ~~ THEN BEGIN 17 // from: 16.0 22.0
  SAY #2344 /* ~"On nie jest mi *znany*."~ */
  IF ~  Global("Dictionary_Githzerai_Achali","GLOBAL",0)
~ THEN REPLY #8768 /* ~"Mam jeszcze kilka pytań..."~ */ GOTO 16
  IF ~  GlobalGT("Dictionary_Githzerai_Achali","GLOBAL",0)
~ THEN REPLY #8769 /* ~"Mam jeszcze kilka... konkretnych... pytań..."~ */ GOTO 22
  IF ~~ THEN REPLY #8770 /* ~Zostaw go w spokoju.~ */ EXIT
END

IF ~~ THEN BEGIN 18 // from: 16.1 22.1
  SAY #2345 /* ~"Ten przedmiot nie jest mi *znany*."~ */
  IF ~  Global("Dictionary_Githzerai_Achali","GLOBAL",0)
~ THEN REPLY #8771 /* ~"Mam jeszcze kilka pytań..."~ */ GOTO 16
  IF ~  GlobalGT("Dictionary_Githzerai_Achali","GLOBAL",0)
~ THEN REPLY #8772 /* ~"Mam jeszcze kilka... konkretnych... pytań..."~ */ GOTO 22
  IF ~~ THEN REPLY #8773 /* ~Zostaw go w spokoju.~ */ EXIT
END

IF ~~ THEN BEGIN 19 // from: 16.4 16.5 49.0 54.0
  SAY #2346 /* ~"Tonąca Ach'ali."~ */
  IF ~  Global("Know_Githzerai_Speak","GLOBAL",1)
CheckStatGT(Protagonist,12,INT)
GlobalLT("Dictionary_Githzerai_Achali","GLOBAL",2)
~ THEN REPLY #8774 /* ~Spróbuj przypomnieć sobie tłumaczenie...~ */ DO ~SetGlobal("Dictionary_Githzerai_Achali","GLOBAL",2)
~ GOTO 20
  IF ~  Global("Dictionary_Githzerai_Achali","GLOBAL",2)
~ THEN REPLY #8775 /* ~Spróbuj przypomnieć sobie tłumaczenie...~ */ GOTO 20
  IF ~  Global("Dictionary_Githzerai_Achali","GLOBAL",0)
~ THEN REPLY #8776 /* ~"Przepraszam?"~ */ DO ~SetGlobal("Dictionary_Githzerai_Achali","GLOBAL",1)
~ GOTO 21
  IF ~  Global("Dictionary_Githzerai_Achali","GLOBAL",1)
~ THEN REPLY #8777 /* ~"Uch... czy to oznacza, że odpowiesz na to pytanie, czy...?"~ */ GOTO 21
END

IF ~~ THEN BEGIN 20 // from: 19.0 19.1
  SAY #2347 /* ~Tonąca Ach'ali: Właściwie, "Pytanie, na które nie ma sensu odpowiadać." Zwykle jest to sposób wyrażenia prośby, żeby dana osoba zadała bardziej konkretne pytanie, nie tak niekonkretne i bezcelowe.

*(Githzerai mają swój dom w Sferze Zewnętrznej Limbo, sferze chaosu. Potrafią osiągnąć równowagę kształtując siłą umysłu chaotyczną materię tej sfery; jednak żeby tak mogło się stać, potrzebne są skupienie i dyscyplina. "Ach'ali" to głupia, mityczna postać gizthzerai, która zgubiła się w Limbo i ledwie udało się jej uformować wokół siebie wyspę. Dryfując w materii chaosu spotkała wędrowca, który zaofiarował pomoc. Jednakże Ach'ali zadała tak wiele bezcelowych i niekonkretnych pytań o drogę do domu, że wyspa materii wokół niej rozpuściła się, a ona sama zatonęła w Limbo.)~ */
  IF ~  Global("Know_Lady","GLOBAL",1)
~ THEN REPLY #8778 /* ~"Więc spytam bardziej konkretnie: Co wiesz o Pani Bólu?"~ */ GOTO 23
  IF ~  Global("Know_Factions","GLOBAL",1)
~ THEN REPLY #8779 /* ~"Więc powiem bardziej konkretnie: Opowiedz mi o frakcjach."~ */ GOTO 24
  IF ~~ THEN REPLY #8780 /* ~"Więc powiem bardziej konkretnie: Czy wiesz, gdzie znajduje się to miasto?"~ */ GOTO 26
  IF ~~ THEN REPLY #8781 /* ~"Więc powiem bardziej konkretnie: Czy wiesz, gdzie mógłbym dostać jakąś pracę?"~ */ GOTO 34
  IF ~~ THEN REPLY #8782 /* ~"Więc powiem bardziej konkretnie: Powiedz mi, czy jest tu coś ciekawego."~ */ GOTO 33
  IF ~~ THEN REPLY #8783 /* ~"Nieważne. Przepraszam, że sprawiłem ci kłopot."~ */ EXIT
END

IF ~~ THEN BEGIN 21 // from: 19.2 19.3
  SAY #2370 /* ~"Twe pytanie jest jak atak w ciemności. Jak strzała, która nie ma celu." Marszczy czoło. "Odpowiedź na to pytanie wypełniłoby umysł Anarcha. Nie ma czasu na takie odpowiedzi. Powiedz mi wyraźnie, co chcesz *wiedzieć*."~ */
  IF ~  Global("Know_Lady","GLOBAL",1)
~ THEN REPLY #8784 /* ~"Więc spytam bardziej konkretnie: Co wiesz o Pani Bólu?"~ */ GOTO 23
  IF ~  Global("Know_Factions","GLOBAL",1)
~ THEN REPLY #8785 /* ~"Więc powiem bardziej konkretnie: Opowiedz mi o tych frakcjach."~ */ GOTO 24
  IF ~~ THEN REPLY #8786 /* ~"Więc powiem bardziej konkretnie: Czy wiesz, gdzie znajduje się to miasto?"~ */ GOTO 26
  IF ~~ THEN REPLY #8787 /* ~"Więc powiem bardziej konkretnie: Czy wiesz, gdzie mógłbym dostać jakąś pracę?"~ */ GOTO 34
  IF ~~ THEN REPLY #8788 /* ~"Więc powiem bardziej konkretnie: Powiedz mi, czy jest tu coś ciekawego."~ */ GOTO 33
  IF ~~ THEN REPLY #8789 /* ~"Nieważne. Przepraszam, że sprawiłem ci kłopot."~ */ EXIT
END

IF ~~ THEN BEGIN 22 // from: 16.6 17.1 18.1 23.0 24.1 25.0 26.1 27.2 28.1 29.1 30.2 31.1 32.1 33.1 34.2 35.1 36.2 37.2 38.1 39.2 40.1 41.2 42.2 43.2 44.3 45.1
  SAY #2371 /* ~Gith przerywa, a potem odzywa się znowu. "Pytaj. Wysłucham cię."~ */
  IF ~  Global("Pharod","GLOBAL",0)
~ THEN REPLY #8790 /* ~"Szukam kogoś, kto nazywa się Farod. Wiesz coś na jego temat?"~ */ GOTO 17
  IF ~  Global("Journal","GLOBAL",0)
~ THEN REPLY #8791 /* ~"Zgubiłem dziennik. Nie widziałeś jakiegoś?"~ */ GOTO 18
  IF ~  NearbyDialog("DDakkon")
~ THEN REPLY #8792 /* ~"Opowiedz mi o Dak'konie."~ */ GOTO 39
  IF ~  GlobalGT("Dakkon","GLOBAL",0)
!NearbyDialog("DDakkon")
~ THEN REPLY #8793 /* ~"Czy znasz githzerai, który nazywa się Dak'kon?"~ */ GOTO 41
  IF ~  Global("Know_Lady","GLOBAL",1)
~ THEN REPLY #8794 /* ~"Opowiedz mi o Pani Bólu."~ */ GOTO 23
  IF ~  Global("Know_Factions","GLOBAL",1)
~ THEN REPLY #8795 /* ~"Opowiedz mi o frakcjach."~ */ GOTO 24
  IF ~~ THEN REPLY #8796 /* ~"Powiedz mi gdzie znajduje się to miasto."~ */ GOTO 26
  IF ~~ THEN REPLY #8797 /* ~"Czy wiesz, gdzie mógłbym dostać jakąś pracę?"~ */ GOTO 34
  IF ~~ THEN REPLY #8798 /* ~"Czy wiesz, gdzie tu jest coś ciekawego?"~ */ GOTO 33
  IF ~~ THEN REPLY #8799 /* ~"Nie mam żadnych pytań. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 23 // from: 20.0 21.0 22.4
  SAY #2372 /* ~"Mówi się, że jest królową tego miasta. Jej umysł nie jest mi *znany*."~ */
  IF ~~ THEN REPLY #8801 /* ~"Mam jeszcze kilka... konkretnych... pytań, dotyczących tego miasta..."~ */ GOTO 22
  IF ~~ THEN REPLY #8837 /* ~"Nieważne. Przepraszam, że sprawiłem ci kłopot."~ */ EXIT
END

IF ~~ THEN BEGIN 24 // from: 20.1 21.1 22.5
  SAY #2373 /* ~"To oni dzielą między sobą to miasto." Mówiąc to, zmienia ton głosu; przebija z niego wstręt.~ */
  IF ~~ THEN REPLY #8838 /* ~"Brzmi to jakbyś nie bardzo lubił frakcje."~ */ GOTO 25
  IF ~~ THEN REPLY #8839 /* ~"Mam jeszcze kilka... konkretnych... pytań o tym mieście..."~ */ GOTO 22
  IF ~~ THEN REPLY #8840 /* ~"Nieważne. Przepraszam, że sprawiłem ci kłopot."~ */ EXIT
END

IF ~~ THEN BEGIN 25 // from: 24.0
  SAY #2374 /* ~"W podziale nie ma siły. Podzielone miasto upada."~ */
  IF ~~ THEN REPLY #8841 /* ~"Mam jeszcze kilka... konkretnych... pytań, dotyczących tego miasta..."~ */ GOTO 22
  IF ~~ THEN REPLY #8842 /* ~"Dziękuję ci... To wszystko, co chciałem wiedzieć. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 26 // from: 20.2 21.2 22.6
  SAY #2375 /* ~"To miasto łączy się z wszystkimi miejscami."~ */
  IF ~~ THEN REPLY #8843 /* ~"Co masz na myśli?"~ */ GOTO 27
  IF ~~ THEN REPLY #8844 /* ~"Mam jeszcze kilka... konkretnych... pytań o tym mieście..."~ */ GOTO 22
  IF ~~ THEN REPLY #8845 /* ~"Dziękuję ci... To wszystko, co chciałem wiedzieć. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 27 // from: 26.0
  SAY #2376 /* ~"To miasto to klatka z wieloma drzwiami. Każde drzwi prowadzą do innego miejsca."~ */
  IF ~~ THEN REPLY #8846 /* ~"Dlaczego nazywasz to miasto klatką?"~ */ GOTO 28
  IF ~~ THEN REPLY #8853 /* ~"Gdzie znajdują się te drzwi?"~ */ GOTO 30
  IF ~~ THEN REPLY #8848 /* ~"Mam jeszcze kilka... konkretnych... pytań o tym mieście..."~ */ GOTO 22
  IF ~~ THEN REPLY #8849 /* ~"Dziękuję ci... To wszystko, co chciałem wiedzieć. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 28 // from: 27.0
  SAY #2377 /* ~"Każda konstrukcja z zamkniętymi drzwiami jest klatką."~ */
  IF ~~ THEN REPLY #8850 /* ~"Zamkniętymi drzwiami?"~ */ GOTO 29
  IF ~~ THEN REPLY #8851 /* ~"Mam jeszcze kilka... konkretnych... pytań o tym mieście..."~ */ GOTO 22
  IF ~~ THEN REPLY #8852 /* ~"Dziękuję ci... To wszystko, co chciałem wiedzieć. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 29 // from: 28.0
  SAY #2378 /* ~"W tej klatce zamknięte są wszystkie drzwi. Każde mają swój klucz. Tylko wtedy można stąd wyjść."~ */
  IF ~~ THEN REPLY #8853 /* ~"Gdzie znajdują się te drzwi?"~ */ GOTO 30
  IF ~~ THEN REPLY #8854 /* ~"Mam jeszcze kilka... konkretnych... pytań o tym mieście..."~ */ GOTO 22
  IF ~~ THEN REPLY #8855 /* ~"Dziękuję ci... To wszystko, co chciałem wiedzieć. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 30 // from: 27.1 29.0
  SAY #2379 /* ~"Wszędzie. Jest ich tak wiele, jak miejsc, do których prowadzą."~ */
  IF ~~ THEN REPLY #8856 /* ~"Nie rozumiem."~ */ GOTO 31
  IF ~~ THEN REPLY #8857 /* ~"Miejsc? To znaczy gdzie?"~ */ GOTO 32
  IF ~~ THEN REPLY #8858 /* ~"Mam jeszcze kilka... konkretnych... pytań o tym mieście..."~ */ GOTO 22
  IF ~~ THEN REPLY #8859 /* ~"Dziękuję ci... To wszystko, co chciałem wiedzieć. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 31 // from: 30.0 32.0
  SAY #2380 /* ~"Trudno to pojąć. Nietrudno to zaakceptować."~ */
  IF ~~ THEN REPLY #8860 /* ~"Dokąd prowadzą te drzwi?"~ */ GOTO 32
  IF ~~ THEN REPLY #8861 /* ~"Mam jeszcze kilka... konkretnych... pytań o tym mieście..."~ */ GOTO 22
  IF ~~ THEN REPLY #8862 /* ~"W takim razie, nieważne. Przepraszam, że sprawiłem ci kłopot."~ */ EXIT
END

IF ~~ THEN BEGIN 32 // from: 30.1 31.0
  SAY #2381 /* ~"Drzwi tej klatki prowadzą wszędzie. To wszystkich sfer. Wszystkich światów."~ */
  IF ~~ THEN REPLY #8863 /* ~"Nie rozumiem."~ */ GOTO 31
  IF ~~ THEN REPLY #8864 /* ~"Mam jeszcze kilka... konkretnych... pytań o tym mieście..."~ */ GOTO 22
  IF ~~ THEN REPLY #8865 /* ~"Dziękuję ci... To wszystko, co chciałem wiedzieć. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 33 // from: 20.4 21.4 22.8
  SAY #2382 /* ~"Nie jesteś mi *znany*. To, co ciekawi ciebie, nie musi ciekawić mnie."~ */
  IF ~~ THEN REPLY #8866 /* ~"Interesuje mnie jakaś praca."~ */ GOTO 34
  IF ~~ THEN REPLY #8867 /* ~"Nieważne. Mam jeszcze kilka... konkretnych... pytań o tym mieście..."~ */ GOTO 22
  IF ~~ THEN REPLY #8868 /* ~"Nieważne. Przepraszam, że sprawiłem ci kłopot."~ */ EXIT
END

IF ~~ THEN BEGIN 34 // from: 20.3 21.3 22.7 33.0
  SAY #2383 /* ~"Nie ma tu wiele pracy. Możesz łapać szczury dla nagrody. Możesz zbierać umarłych."~ */
  IF ~~ THEN REPLY #8870 /* ~"Nagrody za szczury?"~ */ GOTO 35
  IF ~~ THEN REPLY #8871 /* ~"Zbierać trupy?"~ */ GOTO 36
  IF ~~ THEN REPLY #8872 /* ~"Rozumiem. Mam jeszcze kilka... konkretnych... pytań o tym mieście..."~ */ GOTO 22
  IF ~~ THEN REPLY #8873 /* ~"Dziękuję ci... To wszystko, co chciałem wiedzieć. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 35 // from: 34.0 36.1 37.1 38.0
  SAY #2384 /* ~"Miasto płaci za szczurze ogony. Zanieś je do ich Biura do Spraw Szkodników."~ */
  IF ~~ THEN REPLY #8875 /* ~"Jaka była ta druga praca? Zbieranie umarłych?"~ */ GOTO 36
  IF ~~ THEN REPLY #8876 /* ~"Rozumiem. Mam jeszcze kilka... konkretnych... pytań o tym mieście..."~ */ GOTO 22
  IF ~~ THEN REPLY #8877 /* ~"Dziękuję ci... To wszystko, co chciałem wiedzieć. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 36 // from: 34.1 35.0
  SAY #2385 /* ~"Wiele osób umiera w tym mieście każdej nocy. Zanieś trupy Grabarzom. Kupią je."~ */
  IF ~~ THEN REPLY #8878 /* ~"Grabarze zapłacą za trupy? Dlaczego?"~ */ GOTO 37
  IF ~~ THEN REPLY #8879 /* ~"Jak była ta druga praca? Nagrody za szczury?"~ */ GOTO 35
  IF ~~ THEN REPLY #8880 /* ~"Rozumiem. Mam jeszcze kilka... konkretnych... pytań o tym mieście..."~ */ GOTO 22
  IF ~~ THEN REPLY #8881 /* ~"Dziękuję ci... To wszystko, co chciałem wiedzieć. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 37 // from: 36.0
  SAY #2386 /* ~"Grabarze opiekują się zmarłymi. Dokonują na nich ostatniego namaszczenia."~ */
  IF ~~ THEN REPLY #8882 /* ~"No dobrze... mów dalej."~ */ GOTO 38
  IF ~~ THEN REPLY #8883 /* ~"Rozumiem. Jak była ta druga praca? Nagrody za szczury?"~ */ GOTO 35
  IF ~~ THEN REPLY #8884 /* ~"Nieważne. Mam jeszcze kilka... konkretnych... pytań o tym mieście..."~ */ GOTO 22
  IF ~~ THEN REPLY #8885 /* ~"Dziękuję ci... To wszystko, co chciałem wiedzieć. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 38 // from: 37.0
  SAY #2387 /* ~"Wielu umiera. Grabarze nie są w stanie zebrać ich wszystkich sami. Nie chcą, aby umarli pozostawali na ulicach. Płacą innym za to, że przynoszą im umarłych."~ */
  IF ~~ THEN REPLY #8886 /* ~"Jaka była ta druga praca? Nagrody za szczury?"~ */ GOTO 35
  IF ~~ THEN REPLY #8887 /* ~"Mam jeszcze kilka... konkretnych... pytań..."~ */ GOTO 22
  IF ~~ THEN REPLY #8888 /* ~"Dziękuję ci... To wszystko, co chciałem wiedzieć. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 39 // from: 16.2 22.2
  SAY #2388 /* ~"Idzie z tobą." Marszczy czoło. "Jak to możliwe, że go nie *znasz*?"~ */
  IF ~~ THEN REPLY #8889 /* ~"Miałem nadzieję, że powiesz mi coś na jego temat."~ */ GOTO 40
  IF ~  Global("Dictionary_Githzerai_Achali","GLOBAL",0)
~ THEN REPLY #8890 /* ~"Nieważne. Mam jeszcze kilka pytań..."~ */ GOTO 16
  IF ~  GlobalGT("Dictionary_Githzerai_Achali","GLOBAL",0)
~ THEN REPLY #8891 /* ~"Nieważne. Mam jeszcze kilka... konkretnych... pytań..."~ */ GOTO 22
  IF ~~ THEN REPLY #8892 /* ~"Nieważne. Przepraszam, że sprawiłem ci kłopot."~ */ EXIT
END

IF ~~ THEN BEGIN 40 // from: 39.0
  SAY #2389 /* ~"Nie jest niemową. Jeśli chcesz by był ci *znany*, zapytaj go. Nie obrażaj nas traktując jednego jak posąg."~ */
  IF ~  Global("Dictionary_Githzerai_Achali","GLOBAL",0)
~ THEN REPLY #8893 /* ~"Zatem mniejsza o to. Mam jeszcze kilka innych pytań..."~ */ GOTO 16
  IF ~  GlobalGT("Dictionary_Githzerai_Achali","GLOBAL",0)
~ THEN REPLY #8894 /* ~"Nieważne. Mam jeszcze kilka... konkretnych... pytań..."~ */ GOTO 22
  IF ~~ THEN REPLY #8895 /* ~"Nieważne. Przepraszam, że sprawiłem ci kłopot."~ */ EXIT
END

IF ~~ THEN BEGIN 41 // from: 16.3 22.3
  SAY #2390 /* ~"To imię jest mi *znane*. Dak'kon to *zerth*, który nie należy do Ludu."~ */
  IF ~~ THEN REPLY #8896 /* ~"*Zerth*?"~ */ GOTO 42
  IF ~  Global("Dictionary_Githzerai_Achali","GLOBAL",0)
~ THEN REPLY #8897 /* ~"Rozumiem. Mam jeszcze kilka pytań..."~ */ GOTO 16
  IF ~  GlobalGT("Dictionary_Githzerai_Achali","GLOBAL",0)
~ THEN REPLY #8898 /* ~"Rozumiem. Mam jeszcze kilka... konkretnych... pytań..."~ */ GOTO 22
  IF ~~ THEN REPLY #8899 /* ~"Dziękuję ci... To wszystko, co chciałem wiedzieć. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 42 // from: 41.0
  SAY #2391 /* ~"Ktoś, kto *poznał* słowa Zerthimona. *Poznając* jego słowa, *poznają* siebie."~ */
  IF ~~ THEN REPLY #8900 /* ~"Zerthimona?"~ */ GOTO 43
  IF ~  Global("Dictionary_Githzerai_Achali","GLOBAL",0)
~ THEN REPLY #8901 /* ~"Rozumiem. Mam jeszcze kilka pytań..."~ */ GOTO 16
  IF ~  GlobalGT("Dictionary_Githzerai_Achali","GLOBAL",0)
~ THEN REPLY #8902 /* ~"Rozumiem. Mam jeszcze kilka... konkretnych... pytań..."~ */ GOTO 22
  IF ~~ THEN REPLY #8903 /* ~"Dziękuję ci... To wszystko, co chciałem wiedzieć. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 43 // from: 42.0
  SAY #2392 /* ~"Zerthimon *znał* githzerai zanim zdołali poznać siebie." Githzerai milknie na chwilę, jak gdyby oddawał cześć i kontynuuje. "Określił nasz Lud. Dał mu jeden umysł. Tych, którzy *znają* jego słowa, nazywa się *zerthami*."~ */
  IF ~~ THEN REPLY #8904 /* ~"I Dak'kon to *zerth*?"~ */ GOTO 44
  IF ~  Global("Dictionary_Githzerai_Achali","GLOBAL",0)
~ THEN REPLY #8905 /* ~"Rozumiem. Mam jeszcze kilka pytań..."~ */ GOTO 16
  IF ~  GlobalGT("Dictionary_Githzerai_Achali","GLOBAL",0)
~ THEN REPLY #8906 /* ~"Rozumiem. Mam jeszcze kilka... konkretnych... pytań..."~ */ GOTO 22
  IF ~~ THEN REPLY #8907 /* ~"Dziękuję ci... To wszystko, co chciałem wiedzieć. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 44 // from: 43.0
  SAY #2393 /* ~"Dak'kon to *zerth*..." Po raz pierwszy, wydaje się zagubiony. Przerywa na chwilę jak gdyby szukał odpowiednich słów.~ */
  IF ~~ THEN REPLY #8908 /* ~"Tak?"~ */ GOTO 45
  IF ~~ THEN REPLY #8909 /* ~Poczekaj, aż ci wytłumaczy.~ */ GOTO 45
  IF ~  Global("Dictionary_Githzerai_Achali","GLOBAL",0)
~ THEN REPLY #8910 /* ~"Nieważne. Mam jeszcze kilka pytań..."~ */ GOTO 16
  IF ~  GlobalGT("Dictionary_Githzerai_Achali","GLOBAL",0)
~ THEN REPLY #8911 /* ~"Nieważne. Mam jeszcze kilka... konkretnych... pytań..."~ */ GOTO 22
  IF ~~ THEN REPLY #8912 /* ~"Nieważne. Przepraszam, że sprawiłem ci kłopot."~ */ EXIT
END

IF ~~ THEN BEGIN 45 // from: 44.0 44.1
  SAY #2394 /* ~"Dak'kon to *zerth*, o którym mówi się, że nie *zna* słów Zerthimona. Mówi się, że ma podzielony umysł. Że nie *zna* sam siebie. Takie rzeczy to trucizna dla githzerai. Jeśli te słowa mają jakąś wartość, to on nie należy do Ludu."~ */
  IF ~  Global("Dictionary_Githzerai_Achali","GLOBAL",0)
~ THEN REPLY #8913 /* ~"Rozumiem. Mam jeszcze kilka pytań..."~ */ GOTO 16
  IF ~  GlobalGT("Dictionary_Githzerai_Achali","GLOBAL",0)
~ THEN REPLY #8914 /* ~"Rozumiem. Mam jeszcze kilka... konkretnych... pytań..."~ */ GOTO 22
  IF ~~ THEN REPLY #8915 /* ~"Dziękuję ci... To wszystko, co chciałem wiedzieć. Żegnaj."~ */ EXIT
END

IF ~  Global("Know_Gith","GLOBAL",1)
!NearbyDialog("DDakkon")
Global("Evil_Githzerai_1","GLOBAL",0)
~ THEN BEGIN 46 // from:
  SAY #8666 /* ~Gdy podchodzisz, gith ten odwraca się w twoją stronę. Jego oczy są jak dwa czarne kamyki; szybko przebiega wzrokiem twoją postać, a potem spogląda ci w oczy. Chociaż wygląda na humanoida, ma żółty odcień skóry i wymizerowane oblicze. Ma szczupłe, kanciaste ciało; jego kończyny wyglądają, jak gdyby składały się wyłącznie z mięśni i kości. Jego ubranie ma ciekawą mieszankę ostrych kolorów i szarego, poplamionego błotem brązu.~ */
  IF ~  GlobalGT("Know_Githzerai_Speak","GLOBAL",0)
~ THEN REPLY #8916 /* ~"Składam ci ukłon klanu Zerchai."~ */ GOTO 47
  IF ~  GlobalGT("Know_Githzerai_Speak","GLOBAL",0)
~ THEN REPLY #8917 /* ~"Pozdrawiam cię, dzierżący-miecz."~ */ GOTO 48
  IF ~  GlobalLT("Githzerai","GLOBAL",5)
Global("Anazi_Help","GLOBAL",0)
~ THEN REPLY #8918 /* ~"Witaj."~ */ GOTO 5
  IF ~  GlobalGT("Githzerai","GLOBAL",4)
Global("Anazi_Help","GLOBAL",0)
~ THEN REPLY #8919 /* ~"Witaj."~ */ GOTO 1
  IF ~  Global("Anazi_Help","GLOBAL",1)
~ THEN REPLY #8920 /* ~"Witaj."~ */ GOTO 1
  IF ~~ THEN REPLY #8921 /* ~Zostaw githa w spokoju.~ */ EXIT
END

IF ~~ THEN BEGIN 47 // from: 46.0
  SAY #8667 /* ~Gith spogląda ci w oczy. Przerywa na chwilę, studiuje cię, a potem odpowiada łamanym wspólnym. Ma taki akcent, że trudno go zrozumieć - jak gdyby chwytał każde słowo rozbijał na kawałki i dla pewności wyciągał niego każdą samogłoskę. Jeśli dobrze zrozumiałeś, właśnie powiedział, "Witaj, wędrowcze."~ */
  IF ~~ THEN REPLY #8922 /* ~"Zaszczyt to dla wędrowcy."~ */ GOTO 49
  IF ~~ THEN REPLY #8923 /* ~"Chciałbym poznać to miasto. Wysłuchasz mnie?"~ */ GOTO 49
  IF ~~ THEN REPLY #8924 /* ~Zostaw githa w spokoju.~ */ EXIT
END

IF ~~ THEN BEGIN 48 // from: 46.1
  SAY #8668 /* ~Gith spogląda ci w oczy. Przerywa na chwilę, studiuje cię, a potem odpowiada łamanym wspólnym. Ma taki akcent, że trudno go zrozumieć - jak gdyby chwytał każde słowo rozbijał na kawałki i dla pewności wyciągał niego każdą samogłoskę. Jeśli dobrze zrozumiałeś, właśnie powiedział, "Nie jesteś mi *znany*." Przedziwnie podkreśla słowo *znany*.~ */
  IF ~~ THEN REPLY #8925 /* ~"Chciałbym poznać to miasto. Wysłuchasz mnie?"~ */ GOTO 49
  IF ~~ THEN REPLY #8926 /* ~Zostaw githa w spokoju.~ */ EXIT
END

IF ~~ THEN BEGIN 49 // from: 47.0 47.1 48.0
  SAY #8669 /* ~Kamienny wyraz twarzy githa załamuje się lekko, w jego wyzywającym spojrzeniu pojawia się ciekawość. "Nie jesteś mi *znany*." Jeszcze raz przebiega cię wzrokiem, jak gdyby ponownie cię oceniał. "Wysłucham cię."~ */
  IF ~~ THEN REPLY #8927 /* ~"Dobrze. Mam kilka pytań..."~ */ GOTO 19
  IF ~~ THEN REPLY #8928 /* ~Zostaw go w spokoju.~ */ EXIT
END

IF ~  NearbyDialog("DDakkon")
Global("Evil_Githzerai_1","GLOBAL",0)
~ THEN BEGIN 50 // from:
  SAY #8670 /* ~Gdy podchodzisz, gith odwraca się do ciebie. Tak jak Dak'kon, ma żółty odcień skóry i wymizerowane oblicze. Jego ubranie ma ciekawą mieszankę ostrych kolorów i szarego, poplamionego błotem brązu. Swoimi czarnymi oczyma spogląda na Dak'kona, a potem na ciebie.~ */
  IF ~  GlobalGT("Know_Githzerai_Speak","GLOBAL",0)
~ THEN REPLY #8929 /* ~"Składam ci ukłon klanu Zerchai."~ */ GOTO 55
  IF ~  GlobalGT("Know_Githzerai_Speak","GLOBAL",0)
~ THEN REPLY #8930 /* ~"Pozdrawiam cię, dzierżący-miecz."~ */ GOTO 55
  IF ~  Global("Know_Githzerai_Speak","GLOBAL",0)
~ THEN REPLY #8931 /* ~"Witaj."~ */ GOTO 51
  IF ~  GlobalGT("Know_Githzerai_Speak","GLOBAL",0)
~ THEN REPLY #8932 /* ~"Witaj."~ */ GOTO 55
  IF ~~ THEN REPLY #8933 /* ~Zostaw githa w spokoju.~ */ EXIT
END

IF ~~ THEN BEGIN 51 // from: 50.2
  SAY #8671 /* ~Mężczyzna ignoruje cię i odwraca się do Dak'kona. Niskim głosem mówi kilkanaście urywanych słów, których nie rozumiesz. Mówiąc, nie zmienia wyrazu twarzy, ani nie gestykuluje, więc nie jesteś nawet w stanie zaryzykować odgadnięcia, o czym mówi. Dak'kon odpowiada potokiem słów w tym samym języku i githzerai milczy.~ */
  IF ~~ THEN REPLY #8934 /* ~"Uch... Dak'konie, co on mówi?"~ */ GOTO 52
  IF ~~ THEN REPLY #8935 /* ~"Nieważne, Dak'konie. Chodźmy."~ */ EXIT
END

IF ~~ THEN BEGIN 52 // from: 51.0
  SAY #8672 /* ~Gdy mówisz, githzerai odwraca się do ciebie, a potem znów do Dak'kona i znów mówi, tym razem długo. Dak'kon odpowiada - brzmi to jak ten sam potok słów, co poprzednio. Githzerai znów milczy. Dak'kon mówi coś jeszcze, a gith ponownie długo odpowiada.~ */
  IF ~~ THEN REPLY #8936 /* ~"Dak'konie, zapytaj go o coś w moim imieniu."~ */ EXTERN ~DDAKKON~ 17
  IF ~~ THEN REPLY #8937 /* ~"Nieważne, Dak'konie. Chodźmy."~ */ EXIT
END

IF ~~ THEN BEGIN 53 // from:
  SAY #8673 /* ~Kiwnij głową.~ */
  IF ~~ THEN REPLY #8938 /* ~Brak odpowiedzi.~ */ EXIT
END

IF ~~ THEN BEGIN 54 // from:
  SAY #8674 /* ~"Twoje słowa są mi *znane*." githzerai przerywa. "Stań przede mną i mów, co masz na myśli. Wysłucham cię."~ */
  IF ~~ THEN REPLY #8939 /* ~"No dobrze. Mam kilka pytań..."~ */ GOTO 19
  IF ~~ THEN REPLY #8940 /* ~Zostaw go w spokoju.~ */ EXIT
END

IF ~~ THEN BEGIN 55 // from: 50.0 50.1 50.3
  SAY #8675 /* ~Githzerai ignoruje cię i odwraca się do Dak'kona. Niskim głosem mówi kilkanaście urywanych słów w dziwnym języku - jeśli dobrze rozumiesz, właśnie powiedział: "Widzę wszystko, *zerthcie*."~ */
  IF ~~ THEN REPLY #8941 /* ~Poczekaj i wysłuchaj odpowiedzi Dak'kona.~ */ EXTERN ~DDAKKON~ 11
  IF ~~ THEN REPLY #8942 /* ~"Nieważne, Dak'konie. Chodźmy."~ */ EXIT
END

IF ~~ THEN BEGIN 56 // from:
  SAY #8676 /* ~Mówią, githzerai odwraca się do ciebie, a potem znów do Dak'kona i znów mówi, tym razem długo.~ */
  IF ~~ THEN REPLY #8943 /* ~Spróbuj przetłumaczyć...~ */ GOTO 57
  IF ~~ THEN REPLY #8944 /* ~"Nieważne, Dak'konie. Chodźmy."~ */ EXIT
END

IF ~~ THEN BEGIN 57 // from: 56.0
  SAY #8677 /* ~Trudno ci odcyfrować strukturę zdań, ale wydaje ci się, że powiedział: "Jest ktoś imieniem Dak'kon, kto nie należy do Ludu. Mówi się, że ma podzielony umysł. Mówi się, że jest *zerthem*, który nie *zna* słów Zerthimona."~ */
  IF ~~ THEN REPLY #8945 /* ~Poczekaj i wysłuchaj odpowiedzi Dak'kona.~ */ EXTERN ~DDAKKON~ 12
  IF ~~ THEN REPLY #8946 /* ~"Nieważne, Dak'konie. Chodźmy."~ */ EXIT
END

IF ~~ THEN BEGIN 58 // from:
  SAY #8678 /* ~Odpowiedź githa jest szybka niczym nagły atak. Nie jesteś pewien, czy wszystko rozumiesz, ale wydaje ci się, że gith właśnie rzucił Dak'konowi wyzwanie w formie pytania: "*Zerthcie*, czy *słuchasz* słów tego człowieka?"~ */
  IF ~  Global("Dakkon_Slave","GLOBAL",1)
~ THEN REPLY #8947 /* ~Przerwij: "Dak'kon słucha mnie. Jest moim niewolnikiem."~ */ DO ~IncrementGlobal("BD_DAKKON_MORALE","GLOBAL",-1)
~ GOTO 61
  IF ~~ THEN REPLY #8948 /* ~Przerwij: "Tak, Dak'kon słucha moich rozkazów. Jest mym sługą."~ */ GOTO 61
  IF ~~ THEN REPLY #8949 /* ~Przerwij: "Jestem jego panem. Dak'kon podąża za mną."~ */ GOTO 61
  IF ~  Global("Dictionary_Githzerai_Tcha","GLOBAL",0)
~ THEN REPLY #8950 /* ~Poczekaj i zobacz, co powie Dak'kon...~ */ DO ~SetGlobal("Dictionary_Githzerai_Tcha","GLOBAL",1)
~ EXTERN ~DDAKKON~ 13
  IF ~  GlobalGT("Dictionary_Githzerai_Tcha","GLOBAL",0)
~ THEN REPLY #8951 /* ~Poczekaj i zobacz, co powie Dak'kon...~ */ EXTERN ~DDAKKON~ 13
  IF ~~ THEN REPLY #8952 /* ~"Nieważne, Dak'konie. Chodźmy."~ */ EXIT
END

IF ~~ THEN BEGIN 59 // from:
  SAY #8679 /* ~Gith milknie na jakiś czas. "Ta sprawa śmierdzi illithidami." Przebiega wzrokiem po twarzy Dak'kona. "Nie widzę na tobie łańcuchów. Mówisz to, co myślisz. Jak doszło do tego bluźnierstwa?"~ */
  IF ~~ THEN REPLY #8953 /* ~Słuchaj.~ */ EXTERN ~DDAKKON~ 14
  IF ~~ THEN REPLY #8954 /* ~"Nieważne, Dak'konie. Chodźmy."~ */ EXIT
END

IF ~~ THEN BEGIN 60 // from:
  SAY #8680 /* ~Gith nie patrzy w twoją stronę. Całą uwagę skupia na Dak'konie. "Niech mówi. Wysłucham go."~ */
  IF ~~ THEN EXTERN ~DDAKKON~ 15
END

IF ~~ THEN BEGIN 61 // from: 58.0 58.1 58.2
  SAY #8681 /* ~Gith odwraca się w twoją stronę i spogląda ci w oczy. Dak'kon wpatruje się w niego.~ */
  IF ~  Global("Dakkon_Slave","GLOBAL",1)
~ THEN REPLY #8955 /* ~"To twoje wpatrywanie zaczyna mnie złościć. A teraz, porozmawiaj ze mną, nie z moim niewolnikiem. Odpowiesz na moje pytania, czy nie?"~ */ DO ~IncrementGlobal("BD_DAKKON_MORALE","GLOBAL",-1)
~ GOTO 63
  IF ~~ THEN REPLY #8956 /* ~"Wolałbym, żebyś rozmawiał ze mną, nie z mym towarzyszem. Odpowiesz na moje pytania, czy nie?"~ */ GOTO 9
  IF ~~ THEN REPLY #8957 /* ~"Czy coś jest nie w porządku?"~ */ GOTO 63
  IF ~~ THEN REPLY #8958 /* ~"Nieważne, Dak'konie. Chodźmy."~ */ EXIT
END

IF ~~ THEN BEGIN 62 // from: 68.2 68.3
  SAY #8682 /* ~Miecz githa znika, on sam cofa się o krok. Dak'kon opuszcza miecz. Gith syczy na Dak'kona. "Oko Vilquara nie było aż tak jasne, a serce Selqanta tak czarne. Nie zapomnę tego." Wygląda, jakby miał odejść.~ */
  IF ~  Global("Know_Githyanki","GLOBAL",1)
~ THEN REPLY #8959 /* ~"Boisz się, psie githyanki? Zaatakuj mnie, jeśli potrafisz."~ */ DO ~SetGlobal("BD_DAKKON_MORALE","GLOBAL",0)
Enemy()
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
~ EXIT
  IF ~  Global("Know_Githyanki","GLOBAL",0)
~ THEN REPLY #8960 /* ~"Boisz się, psie? Zaatakuj mnie, jeśli potrafisz."~ */ DO ~SetGlobal("BD_DAKKON_MORALE","GLOBAL",0)
Enemy()
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
~ EXIT
  IF ~~ THEN REPLY #8961 /* ~Pozwól mu odjeść.~ */ DO ~Enemy()
~ EXIT
  IF ~~ THEN REPLY #8962 /* ~Zaatakuj githa, gdy będzie odchodził.~ */ DO ~Enemy()
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
SetGlobal("BD_DAKKON_MORALE","GLOBAL",0)
~ EXIT
END

IF ~~ THEN BEGIN 63 // from: 61.0 61.2
  SAY #8683 /* ~Gith odwraca się do Dak'kona. "Słowa tego człowieka są jak trucizna dla moich uszu. Czy muszę go słuchać?"~ */
  IF ~~ THEN REPLY #8963 /* ~"Rozmawiaj ze mną, nie z nim, githcie."~ */ GOTO 64
  IF ~~ THEN REPLY #8964 /* ~"Czy coś jest nie w porządku?"~ */ EXTERN ~DDAKKON~ 7
  IF ~~ THEN REPLY #8965 /* ~Poczekaj i zobacz, co powie Dak'kon.~ */ EXTERN ~DDAKKON~ 7
  IF ~~ THEN REPLY #8966 /* ~"Nieważne, Dak'konie. Chodźmy."~ */ EXIT
END

IF ~~ THEN BEGIN 64 // from: 63.0
  SAY #8684 /* ~Przez kilka sekund, wydaje się, że gith cię nie usłyszał. Następnie słychać szept stali i w jego dłoniach pojawia się miecz. W mgnieniu oka Dak'kon wyciąga swój miecz: Wygląda jak gdyby miał zaatakować githa, gdyby ten ruszył na ciebie.~ */
  IF ~~ THEN REPLY #8967 /* ~"No dalej. Zaatakuj mnie, githcie. Zobaczymy, co się stanie."~ */ GOTO 65
  IF ~~ THEN REPLY #8968 /* ~"Dak'konie, zabij go, jeśli zrobi krok w moją stronę."~ */ DO ~IncrementGlobal("BD_DAKKON_MORALE","GLOBAL",-2)
~ GOTO 65
  IF ~~ THEN REPLY #8969 /* ~"Wszyscy spokój. Chcę tylko odpowiedzi na kilka pytań."~ */ GOTO 65
END

IF ~~ THEN BEGIN 65 // from: 64.0 64.1 64.2
  SAY #8685 /* ~Pomimo tego, że Dak'kon wciąż ma obnażony miecz, gith nie zdejmuje z ciebie wzroku. Jego następne pytanie wydaje się być skierowane do Dak'kona. "Czy w tej sprawie twój umysł jest podzielony?"~ */
  IF ~~ THEN EXTERN ~DDAKKON~ 8
END

IF ~~ THEN BEGIN 66 // from:
  SAY #8686 /* ~"Ta sprawa ma w sobie coś chorobliwego, *zerthcie*. Chcąc go obronić, wyciągnąłeś miecz przeciwko jednemu z Ludu. W imieniu Zerthimona, nie mogę pozwolić na taką obrazę wyrządzoną twej duszy, ani odpowiedzieć na jego słowa inaczej niż krwią."~ */
  IF ~~ THEN EXTERN ~DDAKKON~ 9
END

IF ~~ THEN BEGIN 67 // from:
  SAY #8687 /* ~Gith zwraca się do ciebie, ale wciąż wydaje się skupiony na Dak'konie. "Jak doszło do tego bluźnierstwa?"~ */
  IF ~  Global("Dictionary_Githzerai_Tcha","GLOBAL",0)
~ THEN REPLY #8970 /* ~Poczekaj i zobacz, co powie Dak'kon...~ */ DO ~SetGlobal("Dictionary_Githzerai_Tcha","GLOBAL",1)
~ EXTERN ~DDAKKON~ 10
  IF ~  GlobalGT("Dictionary_Githzerai_Tcha","GLOBAL",0)
~ THEN REPLY #8971 /* ~Poczekaj i zobacz, co powie Dak'kon...~ */ EXTERN ~DDAKKON~ 10
  IF ~~ THEN REPLY #8972 /* ~Zaatakuj githa, gdy nie zwraca na ciebie uwagi.~ */ DO ~Enemy()
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
IncrementGlobal("BD_DAKKON_MORALE","GLOBAL",-2)
~ EXIT
END

IF ~~ THEN BEGIN 68 // from:
  SAY #8688 /* ~Gith czeka. Wydaje się mieć rozdartą duszę.~ */
  IF ~  Global("Know_Githyanki","GLOBAL",1)
~ THEN REPLY #8973 /* ~"No dalej. Zaatakuj mnie, githcie. Zobaczymy, co się stanie."~ */ DO ~SetGlobal("BD_DAKKON_MORALE","GLOBAL",0)
Enemy()
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
~ EXIT
  IF ~  Global("Know_Githyanki","GLOBAL",0)
~ THEN REPLY #8974 /* ~"No dalej, psie. Zaatakuj mnie, jeśli potrafisz."~ */ DO ~SetGlobal("BD_DAKKON_MORALE","GLOBAL",0)
Enemy()
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
~ EXIT
  IF ~  Global("Dictionary_Githzerai_Vilquar","GLOBAL",0)
~ THEN REPLY #8975 /* ~Poczekaj, zobacz jak to się skończy...~ */ DO ~SetGlobal("Dictionary_Githzerai_Vilquar","GLOBAL",1)
~ GOTO 62
  IF ~  GlobalGT("Dictionary_Githzerai_Vilquar","GLOBAL",0)
~ THEN REPLY #8976 /* ~Poczekaj, zobacz jak to się skończy...~ */ GOTO 62
  IF ~~ THEN REPLY #8977 /* ~Zaatakuj githa, gdy nie zwraca na ciebie uwagi.~ */ DO ~Enemy()
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
IncrementGlobal("BD_DAKKON_MORALE","GLOBAL",-2)
~ EXIT
END

IF ~  Global("Evil_Githzerai_1","GLOBAL",1)
~ THEN BEGIN 69 // from:
  SAY #8689 /* ~Gdy podchodzisz, mężczyzna ten odwraca się powoli. Jego oczy są jak dwa czarne kamyki; szybko przebiega wzrokiem twoją postać, a potem spogląda ci w oczy. Chociaż wygląda na humanoida, ma żółty odcień skóry i wymizerowane oblicze. Ma szczupłe, kanciaste ciało; jego kończyny wyglądają, jak gdyby składały się wyłącznie z mięśni i kości. Jego ubranie ma ciekawą mieszankę ostrych kolorów i szarego, poplamionego błotem brązu.~ */
  IF ~  GlobalGT("Know_Githzerai_Speak","GLOBAL",0)
~ THEN REPLY #8978 /* ~"Składam ci ukłon klanu Zerchai."~ */ GOTO 70
  IF ~  GlobalGT("Know_Githzerai_Speak","GLOBAL",0)
~ THEN REPLY #8979 /* ~"Pozdrawiam cię, dzierżący-miecz."~ */ GOTO 70
  IF ~~ THEN REPLY #8980 /* ~"Witaj."~ */ GOTO 70
  IF ~~ THEN REPLY #8981 /* ~Zostaw githa w spokoju.~ */ EXIT
END

IF ~~ THEN BEGIN 70 // from: 69.0 69.1 69.2
  SAY #8690 /* ~Słychać szept stali i w dłoni githzerai pojawia się miecz. "Jesteś mi *znany*. Zaatakowałeś jednego z Ludu. Pozwolę kamieniom napić się twej krwi."~ */
  IF ~  NearbyDialog("DDakkon")
~ THEN REPLY #8982 /* ~Kłamstwo: "Pytasz człowieka, który podróżuje z *zerthem*, czy kiedykolwiek zabił githzerai? Trafiłeś na nieodpowiednią osobę."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Githzerai_2","GLOBALLaw",-1)
IncrementGlobalOnceEx("GLOBALEvil_Githzerai_2","GLOBALGood",-1)
~ GOTO 73
  IF ~  CheckStatGT(Protagonist,11,CHR)
~ THEN REPLY #8983 /* ~Kłamstwo: "To musi być pomyłka. Nigdy nie zaatakowałem nikogo z twego ludu."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Githzerai_2","GLOBALLaw",-1)
IncrementGlobalOnceEx("GLOBALEvil_Githzerai_2","GLOBALGood",-1)
~ GOTO 71
  IF ~  CheckStatLT(Protagonist,12,CHR)
~ THEN REPLY #8984 /* ~Kłamstwo: "Nikogo nie atakowałem. Musisz mnie brać za kogoś innego."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Githzerai_2","GLOBALLaw",-1)
IncrementGlobalOnceEx("GLOBALEvil_Githzerai_2","GLOBALGood",-1)
~ GOTO 12
  IF ~~ THEN REPLY #8985 /* ~Zaatakuj go pierwszy.~ */ DO ~Enemy()
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
~ EXIT
  IF ~~ THEN REPLY #8986 /* ~Nie zwracaj na niego uwagi. Odejdź.~ */ GOTO 12
END

IF ~~ THEN BEGIN 71 // from: 70.1
  SAY #8691 /* ~Gith waha się. "Nie ma pomyłki. Opis - pokryty bliznami, ludzki mężczyzna - to prawda."~ */
  IF ~~ THEN REPLY #8987 /* ~Kłamstwo: "Słuchaj, to ogromne miasto. Nie jestem tym, którego szukasz. Nie chcę wyrządzić krzywdy ani tobie, ani twoim ludziom."~ */ GOTO 72
  IF ~~ THEN REPLY #8988 /* ~Zaatakuj go pierwszy.~ */ DO ~Enemy()
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
~ EXIT
END

IF ~~ THEN BEGIN 72 // from: 71.0
  SAY #8692 /* ~Marszczy czoło i po chwili opuszcza miecz. "Wybacz mi. W przyszłości będę bardziej uważał na swoje słowa." Wciąż wydaje się podejrzliwy.~ */
  IF ~  NearbyDialog("DDakkon")
~ THEN REPLY #8989 /* ~"Właściwie za pierwszym razem miałeś rację. Czekałem tylko, aż opuścisz miecz..."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Githzerai_3","GLOBALLaw",-1)
IncrementGlobalOnceEx("GLOBALEvil_Githzerai_3","GLOBALGood",-1)
Enemy()
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
IncrementGlobal("BD_DAKKON_MORALE","GLOBAL",-2)
~ EXIT
  IF ~  !NearbyDialog("DDakkon")
~ THEN REPLY #8990 /* ~"Właściwie za pierwszym razem miałeś rację. Czekałem tylko, aż opuścisz miecz..."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Githzerai_3","GLOBALLaw",-1)
IncrementGlobalOnceEx("GLOBALEvil_Githzerai_3","GLOBALGood",-1)
Enemy()
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
~ EXIT
  IF ~~ THEN REPLY #8991 /* ~"Proszę bardzo. Żegnaj."~ */ DO ~Enemy()
~ EXIT
END

IF ~~ THEN BEGIN 73 // from: 70.0
  SAY #8693 /* ~Gith waha się. "Nie ma pomyłki. Opis - pokryty bliznami, ludzki mężczyzna - to prawda." Rzuca okiem na Dak'kona. "Mówisz w imieniu tego człowieka, *zerthcie*?"~ */
  IF ~~ THEN REPLY #8992 /* ~"Dak'konie, powiedz mu, że się myli."~ */ DO ~IncrementGlobal("BD_DAKKON_MORALE","GLOBAL",-2)
~ EXTERN ~DDAKKON~ 16
  IF ~~ THEN REPLY #8993 /* ~Zaatakuj go, gdy patrzy na Dak'kona.~ */ DO ~Enemy()
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
IncrementGlobal("BD_DAKKON_MORALE","GLOBAL",-2)
~ EXIT
END
