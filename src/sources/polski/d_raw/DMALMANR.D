// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DMALMANR.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\pl_PL\dialog.tlk
// dialogF  : (none)

BEGIN ~DMALMANR~

IF ~  Global("Malmaner","GLOBAL",0)
~ THEN BEGIN 0 // from:
  SAY #27976 /* ~Ten chudy mężczyzna, o ostrych rysach twarzy, pędzi w twoim kierunku krzycząc. "Ach, panie, panie! Zaczekaj chwilę! Czy nie jesteś tu przypadkiem, żeby odwiedzić krawca?"~ */
  IF ~~ THEN REPLY #28027 /* ~"Jeste..."~ */ GOTO 1
  IF ~~ THEN REPLY #28028 /* ~Zignoruj go, idź dalej.~ */ GOTO 5
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #27977 /* ~Mężczyzna przerywa ci: "Pytam, panie, ponieważ zdaje się, że, ach, obraziłem tego człowieka. Zamówiłem u tego krewkiego głupca kostium, ale on wyrzucił mnie ze swojego warsztatu i nie chce teraz ze mną mówić."~ */
  IF ~~ THEN REPLY #28029 /* ~"I co z te..."~ */ GOTO 2
END

IF ~~ THEN BEGIN 2 // from: 1.0
  SAY #27978 /* ~Mężczyzna nagle zaciska pięści i wymachuje nimi na niebo. "Czym zasłużyłem sobie na takie traktowanie? Niczym, twierdzę! Byłem *stałym klientem*! Jego obowiązkiem jest mnie *obsłużyć*, co za grubiański bufon!"~ */
  IF ~~ THEN REPLY #28030 /* ~"Co chciałeś ode mnie?"~ */ GOTO 4
  IF ~~ THEN REPLY #28031 /* ~"Nie mam na to czasu. Żegnaj."~ */ GOTO 5
END

IF ~~ THEN BEGIN 3 // from: 4.0 5.0
  SAY #27979 /* ~"Czy mógłbym cię prosić, panie, o pójście tam i odebranie tego kostiumu dla mnie? Mam iść na maskaradę, a nie mam czasu, żeby teraz iść do innego krawca."~ */
  IF ~~ THEN REPLY #28032 /* ~"Tak. Zaraz po niego pójdę."~ */ DO ~SetGlobal("Malmaner","GLOBAL",2)
~ JOURNAL #27452 /* ~Zgodziłem się przynieść Malmanerowi kostium na maskaradę z warsztatu Gonkalfa.~ */ GOTO 6
  IF ~~ THEN REPLY #28033 /* ~"Zrobię to, ale nie za darmo."~ */ GOTO 8
  IF ~~ THEN REPLY #28034 /* ~"Dlaczego po prostu sam go sobie nie przyniesiesz?"~ */ GOTO 7
  IF ~~ THEN REPLY #28035 /* ~"Nie, nie mam na to czasu. Żegnaj."~ */ DO ~SetGlobal("Malmaner","GLOBAL",1)
~ EXIT
END

IF ~~ THEN BEGIN 4 // from: 2.0
  SAY #27980 /* ~"Co? Ponownie na ciebie spogląda. "Ach! Tak, ty…""~ */
  IF ~~ THEN GOTO 3
END

IF ~~ THEN BEGIN 5 // from: 0.1 2.1
  SAY #27981 /* ~"Zaczekaj, zaczekaj, proszę!"~ */
  IF ~~ THEN REPLY #28050 /* ~Wysłuchaj go do końca.~ */ GOTO 3
  IF ~~ THEN REPLY #28051 /* ~Odejdź.~ */ DO ~SetGlobal("Malmaner","GLOBAL",1)
~ EXIT
END

IF ~~ THEN BEGIN 6 // from: 3.0 7.0 8.0 16.0
  SAY #27982 /* ~"Och, wyśmienicie, panie! To ten długi budynek, tutaj..." Wskazuje na długą, niską budowlę prosto na północ od niego. Dziękuję ci, panie!"~ */
  IF ~~ THEN REPLY #28052 /* ~"Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 7 // from: 3.2
  SAY #27983 /* ~Uśmiecha się szyderczo, przewracając oczami. "Ten świniowaty prostak! 'Obraziłem' jakoś tego opasłego, wyparadowanego zuchwalca! Zabronił mi wchodzić do swojego sklepu i nie chce ze mną mówić. Wyobraź sobie!"~ */
  IF ~~ THEN REPLY #28053 /* ~"Zaraz po niego pójdę."~ */ DO ~SetGlobal("Malmaner","GLOBAL",2)
~ JOURNAL #27452 /* ~Zgodziłem się przynieść Malmanerowi kostium na maskaradę z warsztatu Gonkalfa.~ */ GOTO 6
  IF ~~ THEN REPLY #28054 /* ~"Pójdę po twój kostium, ale nie za darmo."~ */ GOTO 8
  IF ~~ THEN REPLY #28055 /* ~"Nie mam na to czasu. Żegnaj."~ */ DO ~SetGlobal("Malmaner","GLOBAL",1)
~ EXIT
END

IF ~~ THEN BEGIN 8 // from: 3.1 7.1 16.1
  SAY #27984 /* ~"Co takiego? Na Moce, człowieku, przyniesiesz tylko *kostium*! Zajmie ci to tylko chwilkę! Z pewnością nie wydaje mi się, aby taka drobna przysługa warta była zapłaty, panie!"~ */
  IF ~~ THEN REPLY #28056 /* ~"Dobrze. Pójdę więc po niego."~ */ DO ~SetGlobal("Malmaner","GLOBAL",2)
~ JOURNAL #27452 /* ~Zgodziłem się przynieść Malmanerowi kostium na maskaradę z warsztatu Gonkalfa.~ */ GOTO 6
  IF ~~ THEN REPLY #28057 /* ~"Szkoda mi na to czasu. Żegnaj."~ */ GOTO 9
END

IF ~~ THEN BEGIN 9 // from: 8.1
  SAY #27985 /* ~"Zaczekaj..." Wzdycha głośno. "Zatem dziesięć miedziaków, za załatwienie sprawy, która zajmie kilka minut. Czy zgodzisz się na to... 'panie'?"~ */
  IF ~~ THEN REPLY #28058 /* ~"Tak. Daj mi pieniądze, to przyniosę ci ten kostium."~ */ DO ~GivePartyGold(10)
~ GOTO 10
  IF ~~ THEN REPLY #28059 /* ~"Nie podoba mi się twój ton. Zaczynam rozumieć, dlaczego krawiec czuje do ciebie taką niechęć. Żegnaj."~ */ DO ~SetGlobal("Malmaner","GLOBAL",1)
~ EXIT
  IF ~~ THEN REPLY #28060 /* ~"Zapomnij o tym. Żegnaj."~ */ DO ~SetGlobal("Malmaner","GLOBAL",1)
~ EXIT
END

IF ~~ THEN BEGIN 10 // from: 9.0
  SAY #27986 /* ~Wręcza ci monety, mamrocząc przez chwilę. "To ten długi budynek, o tam..." Wskazuje na długą, niską budowlę. "...na północny wschód od bramy, w kierunku Niższej Dzielnicy. Proszę spiesz się."~ */
  IF ~~ THEN REPLY #28061 /* ~"Pójdę ci go przynieść. Żegnaj."~ */ DO ~SetGlobal("Malmaner","GLOBAL",2)
~ JOURNAL #27452 /* ~Zgodziłem się przynieść Malmanerowi kostium na maskaradę z warsztatu Gonkalfa.~ */ EXIT
  IF ~  !NearbyDialog("DMorte")
~ THEN REPLY #28062 /* ~"Spieszyć się? Dokąd? Och, i dziękuję za brzdęk. Żegnaj... 'panie'."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Malmaner_1","GLOBALGood",-1)
~ GOTO 11
  IF ~  NearbyDialog("DMorte")
~ THEN REPLY #28063 /* ~"Spieszyć się? Dokąd? Och, i dziękuję za brzdęk. Żegnaj... 'panie'."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Malmaner_1","GLOBALGood",-1)
~ GOTO 12
END

IF ~~ THEN BEGIN 11 // from: 10.1
  SAY #27987 /* ~Woła za tobą: "Ty... ty obliźniony nieużytku mięsa! Ty pomarszczona wyliniała torbo nieczystości! Wracaj tu, nędzny przybytku wszelakiego choróbstwa! Nikt tak nie traktuje Malmanera! Wracaj w tej chwili, zanim wezwę straż!"~ */
  IF ~~ THEN REPLY #28064 /* ~"Świetnie, proszę... zabierz sobie swoje pieniądze."~ */ DO ~TakePartyGold(10)
~ GOTO 13
  IF ~~ THEN REPLY #28065 /* ~Rzuć w niego tymi dziesięcioma miedziakami.~ */ DO ~TakePartyGold(10)
~ GOTO 14
  IF ~~ THEN REPLY #28066 /* ~Zignoruj go, odejdź.~ */ GOTO 15
END

IF ~~ THEN BEGIN 12 // from: 10.2
  SAY #27988 /* ~Woła za tobą: "Ty... ty obliźniony nieużytku mięsa! Ty pomarszczona wyliniała torbo nieczystości! Wracaj tu, nędzny przybytku wszelakiego choróbstwa! Nikt tak nie traktuje Malmanera! Wracaj w tej chwili, zanim wezwę straż!"~ */
  IF ~~ THEN EXTERN ~DMORTE~ 273
END

IF ~~ THEN BEGIN 13 // from: 11.0 21.0 21.2 21.4 21.6
  SAY #27989 /* ~"Hmm!" Wyrywa ci z ręki monety i wpycha do swojej sakiewki, odchodzi ciężkim krokiem.~ */
  IF ~~ THEN REPLY #28067 /* ~Odejdź.~ */ DO ~SetGlobal("Malmaner","GLOBAL",1)
EscapeArea()
~ EXIT
END

IF ~~ THEN BEGIN 14 // from: 11.1 21.1 21.3 21.5 21.7
  SAY #27990 /* ~Mężczyzna patrzy na ciebie zszokowany. "Co za... zuchwałość..."~ */
  IF ~~ THEN REPLY #28068 /* ~"Ucisz się, zanim język cię zabije."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Malmaner_2","GLOBALGood",-1)
~ GOTO 15
  IF ~~ THEN REPLY #28069 /* ~Zignoruj go, odejdź.~ */ DO ~SetGlobal("Malmaner","GLOBAL",1)
EscapeArea()
~ EXIT
END

IF ~~ THEN BEGIN 15 // from: 11.2 14.0 21.8
  SAY #27991 /* ~"Ja ci pokażę! Straże! Straże!"~ */
  IF ~~ THEN REPLY #28070 /* ~Zaatakuj go.~ */ DO ~SetGlobal("MK_Counter","GLOBAL",1000)
SetGlobal("Call_MK","GLOBAL",1)
ForceAttack(Protagonist,Myself)
Enemy()
RunAwayFromEx(Protagonist,TWO_AI_SECONDS,FALSE)
~ EXIT
  IF ~~ THEN REPLY #28072 /* ~Odejdź zanim ktoś przyjdzie.~ */ DO ~IncrementGlobal("MK_Counter","GLOBAL",1)
SetGlobal("Call_MK","GLOBAL",1)
Enemy()
RunAwayFromEx(Protagonist,TWO_AI_SECONDS,FALSE)
~ EXIT
END

IF ~  Global("Malmaner","GLOBAL",1)
~ THEN BEGIN 16 // from:
  SAY #27992 /* ~"No, no, najmilszy obywatel Sigil..." Głos mężczyzny pełen jest gorzkiego sarkazmu. "*Tak* bardzo dziękuję za twą pomoc panie. Ale... czekaj... przecież ty w ogóle mi nie pomogłeś, czyż nie? Hmm."~ */
  IF ~~ THEN REPLY #28073 /* ~"Zmieniłem zdanie. Pójdę ci przynieść twój kostium."~ */ DO ~SetGlobal("Malmaner","GLOBAL",2)
~ JOURNAL #27452 /* ~Zgodziłem się przynieść Malmanerowi kostium na maskaradę z warsztatu Gonkalfa.~ */ GOTO 6
  IF ~~ THEN REPLY #28075 /* ~"Słuchaj... przyniosę ci twój kostium, ale nie za darmo."~ */ GOTO 8
  IF ~~ THEN REPLY #28076 /* ~"Żegnaj."~ */ EXIT
END

IF ~  Global("Malmaner","GLOBAL",2)
~ THEN BEGIN 17 // from:
  SAY #27993 /* ~Mężczyzna patrzy wyczekująco. "Więc? Więc? Masz kostium od Gonkalfa?"~ */
  IF ~~ THEN REPLY #28077 /* ~"Nie, jeszcze nie."~ */ GOTO 18
END

IF ~~ THEN BEGIN 18 // from: 17.0 19.4 32.2 33.2 38.0 39.2
  SAY #27994 /* ~"Więc idźże po niego, człowieku! Mam iść na maskaradę!"~ */
  IF ~~ THEN REPLY #28078 /* ~"Wrócę, kiedy go będę miał. Żegnaj."~ */ EXIT
END

IF ~  Global("Malmaner","GLOBAL",3)
!PartyHasItem("Costume1")
~ THEN BEGIN 19 // from:
  SAY #27995 /* ~Mężczyzna patrzy wyczekująco. "Więc? Więc? Masz kostium od Gonkalfa?"~ */
  IF ~  Global("CW_Mal_Cash","AR0600",0)
~ THEN REPLY #28079 /* ~"Nie, jeszcze nie. Mówi, że za robotę winien mu jesteś trzydzieści miedziaków."~ */ DO ~GivePartyGold(30)
SetGlobal("CW_Mal_Cash","AR0600",1)
~ GOTO 20
  IF ~  Global("CW_Mal_Cash","AR0600",0)
~ THEN REPLY #28083 /* ~Kłamstwo: "Nie, jeszcze nie. Mówi, że winien mu jesteś za robotę, uch, pięćdziesiąt miedziaków."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Malmaner_1","GLOBALLaw",-1)
~ GOTO 23
  IF ~  !PartyHasItem("Costume1")
PartyHasItem("DustRobe")
~ THEN REPLY #28084 /* ~"Nie, jeszcze nie... ale co z tymi prawdziwymi ubraniami Grabarzy?"~ */ GOTO 32
  IF ~  !PartyHasItem("Costume1")
PartyHasItem("DustRobe")
~ THEN REPLY #28085 /* ~Kłamstwo: "Uch... tak. Oto ubranie Grabarza. To znaczy kostium."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Malmaner_2","GLOBALLaw",-1)
~ GOTO 33
  IF ~  Global("CW_Mal_Cash","AR0600",1)
~ THEN REPLY #28086 /* ~"Nie, jeszcze nie."~ */ GOTO 18
END

IF ~~ THEN BEGIN 20 // from: 19.0 23.2 27.0 32.0 33.0
  SAY #27996 /* ~"*Co?!* Hmm! Dobrze, dobrze... weź te pieniądze i przynieś już ten przeklęty kostium!" Rzuca ci trzydzieści miedziaków.~ */
  IF ~~ THEN REPLY #28087 /* ~"Wrócę, kiedy go będę miał. Żegnaj."~ */ EXIT
  IF ~  !NearbyDialog("DMorte")
~ THEN REPLY #28088 /* ~"Hmmm... jaki kostium? Och, i dziękuję za miedziaki... żegnaj."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Malmaner_1","GLOBALGood",-1)
~ GOTO 21
  IF ~  NearbyDialog("DMorte")
~ THEN REPLY #28089 /* ~"Hmmm... jaki kostium? Och, i dziękuję za miedziaki... żegnaj."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Malmaner_1","GLOBALGood",-1)
~ GOTO 22
END

IF ~~ THEN BEGIN 21 // from: 20.1 24.1 40.1 42.1
  SAY #27997 /* ~Woła za tobą: "Ty... ty obliźniony nieużytku mięsa! Ty pomarszczona wyliniała torbo nieczystości! Wracaj tu, nędzny przybytku wszelakiego choróbstwa! Nikt tak nie traktuje Malmanera! Wracaj w tej chwili, zanim wezwę straż!"~ */
  IF ~  Global("Malmaner","GLOBAL",3)
!Global("Chaotic_Malmaner_1","GLOBAL",1)
~ THEN REPLY #28090 /* ~"Świetnie, proszę... zabierz sobie swoje pieniądze."~ */ DO ~TakePartyGold(30)
~ GOTO 13
  IF ~  Global("Malmaner","GLOBAL",3)
!Global("Chaotic_Malmaner_1","GLOBAL",1)
~ THEN REPLY #28091 /* ~Rzuć w niego tymi trzydziestoma miedziakami.~ */ DO ~TakePartyGold(30)
~ GOTO 14
  IF ~  Global("Malmaner","GLOBAL",3)
Global("Chaotic_Malmaner_1","GLOBAL",1)
~ THEN REPLY #28092 /* ~"Świetnie, proszę... zabierz sobie swoje pieniądze."~ */ DO ~TakePartyGold(50)
~ GOTO 13
  IF ~  Global("Malmaner","GLOBAL",3)
Global("Chaotic_Malmaner_1","GLOBAL",1)
~ THEN REPLY #28093 /* ~Rzuć w niego tymi pięćdziesięcioma miedziakami.~ */ DO ~TakePartyGold(50)
~ GOTO 14
  IF ~  Global("Malmaner","GLOBAL",5)
!Global("Chaotic_Malmaner_1","GLOBAL",3)
~ THEN REPLY #28094 /* ~"Świetnie, proszę... zabierz sobie swoje pieniądze."~ */ DO ~TakePartyGold(50)
~ GOTO 13
  IF ~  Global("Malmaner","GLOBAL",5)
!Global("Chaotic_Malmaner_1","GLOBAL",3)
~ THEN REPLY #28095 /* ~Rzuć w niego tymi pięćdziesięcioma miedziakami.~ */ DO ~TakePartyGold(50)
~ GOTO 14
  IF ~  Global("Malmaner","GLOBAL",5)
Global("Chaotic_Malmaner_1","GLOBAL",3)
~ THEN REPLY #28096 /* ~"Świetnie, proszę... zabierz sobie swoje pieniądze."~ */ DO ~TakePartyGold(80)
~ GOTO 13
  IF ~  Global("Malmaner","GLOBAL",5)
Global("Chaotic_Malmaner_1","GLOBAL",3)
~ THEN REPLY #28097 /* ~Rzuć w niego tymi osiemdziesięcioma miedziakami.~ */ DO ~TakePartyGold(80)
~ GOTO 14
  IF ~~ THEN REPLY #28098 /* ~Zignoruj go, odejdź.~ */ GOTO 15
END

IF ~~ THEN BEGIN 22 // from: 20.2 24.2 40.2 42.2
  SAY #27998 /* ~Woła za tobą: "Ty... ty obliźniony nieużytku mięsa! Ty pomarszczona wyliniała torbo nieczystości! Wracaj tu, nędzny przybytku wszelakiego choróbstwa! Nikt tak nie traktuje Malmanera! Wracaj w tej chwili, zanim wezwę straż!"~ */
  IF ~~ THEN EXTERN ~DMORTE~ 274
END

IF ~~ THEN BEGIN 23 // from: 19.1 32.1 33.1
  SAY #27999 /* ~Mężczyzna wygląda na osłupiałego. "Niemożliwe! Niedorzeczne! Kiedy go zamawiałem, umawialiśmy się na trzydzieści miedziaków!"~ */
  IF ~  CheckStatGT(Protagonist,14,CHR)
~ THEN REPLY #28099 /* ~Kłamstwo: "Był zdenerwowany, Malmanerze. Obraziłeś go, więc podniósł cenę."~ */ DO ~GivePartyGold(50)
SetGlobal("CW_Mal_Cash","AR0600",1)
~ GOTO 24
  IF ~  CheckStatLT(Protagonist,15,CHR)
~ THEN REPLY #28100 /* ~Kłamstwo: "Więc, uch, był zdenerwowany i podniósł cenę."~ */ GOTO 27
  IF ~~ THEN REPLY #28101 /* ~"Wybacz, źle powiedziałem. To było tylko trzydzieści miedziaków."~ */ DO ~GivePartyGold(30)
SetGlobal("CW_Mal_Cash","AR0600",1)
~ GOTO 20
END

IF ~~ THEN BEGIN 24 // from: 23.0
  SAY #28000 /* ~Przygląda ci się podejrzliwie, po czym ustępuje: "No dobrze! Weź je sobie. Tylko przynieś ten przeklęty kostium!" Rzuca ci pięćdziesiąt miedziaków.~ */
  IF ~~ THEN REPLY #28102 /* ~"Wrócę, kiedy go będę miał. Żegnaj."~ */ EXIT
  IF ~  !NearbyDialog("DMorte")
~ THEN REPLY #28103 /* ~"Hmmm... jaki kostium? Och, i dziękuję za miedziaki... żegnaj."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Malmaner_1","GLOBALGood",-1)
~ GOTO 21
  IF ~  NearbyDialog("DMorte")
~ THEN REPLY #28104 /* ~"Hmmm... jaki kostium? Och, i dziękuję za miedziaki... żegnaj."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Malmaner_1","GLOBALGood",-1)
~ GOTO 22
END

IF ~  Global("Malmaner","GLOBAL",3)
PartyHasItem("Costume1")
~ THEN BEGIN 25 // from:
  SAY #28001 /* ~Mężczyzna patrzy na ciebie wyczekująco. "Więc? Więc? Masz ten kostium od Gonkalfa?"~ */
  IF ~  Global("CW_Mal_Cash","AR0600",0)
~ THEN REPLY #28105 /* ~"Tak, oto on. Kosztował trzydzieści miedziaków."~ */ DO ~TakePartyItemNum("Costume1",1)
GivePartyGold(30)
AddexperienceParty(8000)
SetGlobal("Malmaner","GLOBAL",7)
~ JOURNAL #27453 /* ~Od Gonkalfa dostałem kostium na maskaradę i oddałem go Malmanerowi.~ */ GOTO 26
  IF ~  Global("CW_Mal_Cash","AR0600",0)
~ THEN REPLY #28106 /* ~Kłamstwo: "Tak, oto on. Kosztował mnie pięćdziesiąt miedziaków."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Malmaner_1","GLOBALLaw",-1)
~ GOTO 28
  IF ~  Global("CW_Mal_Cash","AR0600",1)
~ THEN REPLY #28107 /* ~"Tak, oto on."~ */ DO ~TakePartyItemNum("Costume1",1)
AddexperienceParty(8000)
SetGlobal("Malmaner","GLOBAL",7)
~ JOURNAL #27453 /* ~Od Gonkalfa dostałem kostium na maskaradę i oddałem go Malmanerowi.~ */ GOTO 31
END

IF ~~ THEN BEGIN 26 // from: 25.0 28.2 30.0
  SAY #28002 /* ~"Dobrze, dobrze! Weź je, proszę." Rzuca ci trzydzieści miedziaków. "Teraz muszę już iść..."~ */
  IF ~~ THEN REPLY #28108 /* ~"Zaczekaj... Gonkalf mówił, że już wiele osób wybiera się na tę maskaradę przebranych za Grabarzy."~ */ GOTO 34
  IF ~~ THEN REPLY #28109 /* ~"Żegnaj."~ */ DO ~EscapeArea()
~ EXIT
END

IF ~~ THEN BEGIN 27 // from: 23.1
  SAY #28003 /* ~Spogląda podejrzliwie na ciebie, zaciskając usta.~ */
  IF ~~ THEN REPLY #28110 /* ~"Wybacz, źle się wyraziłem. To było tylko trzydzieści miedziaków."~ */ DO ~GivePartyGold(30)
SetGlobal("CW_Mal_Cash","AR0600",1)
~ GOTO 20
END

IF ~~ THEN BEGIN 28 // from: 25.1
  SAY #28004 /* ~Mężczyzna wygląda na osłupiałego. "Niemożliwe! Niedorzeczne! Kiedy go zamawiałem, umawialiśmy się na trzydzieści miedziaków.!"~ */
  IF ~  CheckStatGT(Protagonist,14,CHR)
~ THEN REPLY #28111 /* ~Kłamstwo: "Był zdenerwowany, Malmanerze. Obraziłeś go, więc podniósł cenę."~ */ DO ~TakePartyItemNum("Costume1",1)
GivePartyGold(50)
AddexperienceParty(8000)
SetGlobal("Malmaner","GLOBAL",7)
~ JOURNAL #27453 /* ~Od Gonkalfa dostałem kostium na maskaradę i oddałem go Malmanerowi.~ */ GOTO 29
  IF ~  CheckStatLT(Protagonist,15,CHR)
~ THEN REPLY #28112 /* ~Kłamstwo: "Więc, uch, był zdenerwowany i podniósł cenę."~ */ GOTO 30
  IF ~~ THEN REPLY #28113 /* ~"Wybacz, źle powiedziałam. To było tylko trzydzieści miedziaków."~ */ DO ~TakePartyItemNum("Costume1",1)
GivePartyGold(30)
AddexperienceParty(8000)
SetGlobal("Malmaner","GLOBAL",7)
~ JOURNAL #27453 /* ~Od Gonkalfa dostałem kostium na maskaradę i oddałem go Malmanerowi.~ */ GOTO 26
END

IF ~~ THEN BEGIN 29 // from: 28.0
  SAY #28005 /* ~"Dobrze, dobrze! Weź je, proszę." Rzuca ci trzydzieści miedziaków. "Teraz muszę już iść..."~ */
  IF ~~ THEN REPLY #28114 /* ~"Zaczekaj... Gonkalf mówił, że już wiele osób wybiera się na tę maskaradę przebranych za Grabarzy."~ */ GOTO 34
  IF ~~ THEN REPLY #28115 /* ~"Żegnaj."~ */ DO ~EscapeArea()
~ EXIT
END

IF ~~ THEN BEGIN 30 // from: 28.1
  SAY #28006 /* ~Spogląda podejrzliwie na ciebie, zaciskając usta.~ */
  IF ~~ THEN REPLY #28116 /* ~"Wybacz, źle się wyraziłem. To było tylko trzydzieści miedziaków."~ */ DO ~TakePartyItemNum("Costume1",1)
GivePartyGold(30)
AddexperienceParty(8000)
SetGlobal("Malmaner","GLOBAL",7)
~ GOTO 26
END

IF ~~ THEN BEGIN 31 // from: 25.2
  SAY #28008 /* ~"Nareszcie!" Wyrywa ci kostium. "Teraz muszę iść..."~ */
  IF ~~ THEN REPLY #28117 /* ~"Zaczekaj... Gonkalf mówił, że już wiele osób wybiera się na tę maskaradę przebranych za Grabarzy."~ */ GOTO 34
  IF ~~ THEN REPLY #28118 /* ~"Żegnaj."~ */ DO ~EscapeArea()
~ EXIT
END

IF ~~ THEN BEGIN 32 // from: 19.2
  SAY #28009 /* ~Cofa się ze wstrętem. "Fuj! Okropieństwo... spójrz tylko! Brudny, zeżarty przez mole... a jaki szorstki materiał! W życiu nie włożę na siebie takiej szmaty."~ */
  IF ~  Global("CW_Mal_Cash","AR0600",0)
~ THEN REPLY #28119 /* ~"Więc, mówi, że winien mu jesteś trzydzieści miedziaków za prawdziwy kostium."~ */ DO ~GivePartyGold(30)
SetGlobal("CW_Mal_Cash","AR0600",1)
~ GOTO 20
  IF ~  Global("CW_Mal_Cash","AR0600",0)
~ THEN REPLY #28120 /* ~Kłamstwo: "Więc, powiedział, że za prawdziwy kostium, winien mu jesteś pięćdziesiąt miedziaków."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Malmaner_1","GLOBALLaw",-1)
~ GOTO 23
  IF ~  Global("CW_Mal_Cash","AR0600",1)
~ THEN REPLY #28121 /* ~"Cóż, nie dostałem jeszcze tego prawdziwego kostiumu."~ */ GOTO 18
END

IF ~~ THEN BEGIN 33 // from: 19.3
  SAY #28010 /* ~Cofa się ze wstrętem. "Fuj! Okropieństwo... spójrz tylko! Brudny, zeżarty przez mole... a jaki szorstki materiał! W życiu nie włożę na siebie takiej szmaty." Patrzy na ciebie podejrzliwie! "A to co *jest*?"~ */
  IF ~  Global("CW_Mal_Cash","AR0600",0)
~ THEN REPLY #28122 /* ~"Nic, mniejsza z tym. Mówi, że winien mu jesteś trzydzieści miedziaków za prawdziwy kostium."~ */ DO ~GivePartyGold(30)
SetGlobal("CW_Mal_Cash","AR0600",1)
~ GOTO 20
  IF ~  Global("CW_Mal_Cash","AR0600",0)
~ THEN REPLY #28123 /* ~Kłamstwo: "Nic, mniejsza z tym. Powiedział, że za prawdziwy kostium, winien mu jesteś, uch, pięćdziesiąt miedziaków."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Malmaner_1","GLOBALLaw",-1)
~ GOTO 23
  IF ~  Global("CW_Mal_Cash","AR0600",1)
~ THEN REPLY #28124 /* ~"Mniejsza z tym. Nie dostałem jeszcze tego kostiumu."~ */ GOTO 18
END

IF ~~ THEN BEGIN 34 // from: 26.0 29.0 31.0
  SAY #28007 /* ~"Naprawdę? Psia kość! Nie dobrze mi się robi, jak sobie pomyślę, że będę musiał pójść w takim *zwyczajnym* kostiumie... hmmm..."~ */
  IF ~~ THEN REPLY #28125 /* ~"Mógłbym pójść zobaczyć, może ma gotowy inny kostium."~ */ GOTO 36
  IF ~~ THEN REPLY #28126 /* ~"Mógłbym spróbować przynieść ci inny kostium... ale to cię będzie kosztować."~ */ GOTO 37
  IF ~~ THEN REPLY #28127 /* ~"Niedobrze. Żegnaj."~ */ GOTO 35
END

IF ~~ THEN BEGIN 35 // from: 34.2 36.2 37.1
  SAY #28011 /* ~"Hmm!" Odchodzi ciężkim krokiem, mamrotając zgorzkniale.~ */
  IF ~~ THEN REPLY #28128 /* ~Odejdź.~ */ DO ~EscapeArea()
~ EXIT
END

IF ~~ THEN BEGIN 36 // from: 34.0
  SAY #28012 /* ~"Niezły pomysł, niczego sobie! Szybko, zobacz, czy ten korpulentny gamoń będzie miał inny kostium, dobrze?"~ */
  IF ~~ THEN REPLY #28129 /* ~"Wrócę z innym kostiumem."~ */ DO ~SetGlobal("Malmaner","GLOBAL",4)
IncrementGlobalOnceEx("GLOBALGood_Malmaner_1","GLOBALGood",1)
~ JOURNAL #27454 /* ~Zgodziłem się załatwić od Gonkalfa drugi kostium dla Malmanera.~ */ EXIT
  IF ~~ THEN REPLY #28130 /* ~"Dobrze... ale to cię będzie kosztować."~ */ GOTO 37
  IF ~~ THEN REPLY #28131 /* ~"Mniejsza z tym, zapomnij o mojej propozycji. Żegnaj."~ */ GOTO 35
END

IF ~~ THEN BEGIN 37 // from: 34.1 36.1
  SAY #28013 /* ~Przewraca oczami, uśmiechając się szyderczo. "Powinienem był to przewidzieć! Proszę *liczykrupo*. To wystarczy, jak sądzę?" Wręcza ci dwadzieścia miedziaków.~ */
  IF ~~ THEN REPLY #28132 /* ~"To wystarczy. Wrócę z innym kostiumem."~ */ DO ~SetGlobal("Malmaner","GLOBAL",4)
GivePartyGold(20)
~ JOURNAL #27454 /* ~Zgodziłem się załatwić od Gonkalfa drugi kostium dla Malmanera.~ */ EXIT
  IF ~~ THEN REPLY #28133 /* ~"Właściwie, zapomnij o mojej propozycji. Żegnaj."~ */ GOTO 35
END

IF ~  Global("Malmaner","GLOBAL",4)
~ THEN BEGIN 38 // from:
  SAY #28014 /* ~Mężczyzna patrzy wyczekująco. "Więc? Więc? Masz inny kostium od niego?"~ */
  IF ~~ THEN REPLY #28134 /* ~"Nie, jeszcze nie."~ */ GOTO 18
END

IF ~  Global("Malmaner","GLOBAL",5)
!PartyHasItem("Costume2")
~ THEN BEGIN 39 // from:
  SAY #28015 /* ~Mężczyzna patrzy wyczekująco. "Więc? Więc? Masz inny kostium od niego?"~ */
  IF ~  GlobalLT("CW_Mal_Cash","AR0600",2)
~ THEN REPLY #28135 /* ~"Nie, jeszcze nie. Ma inny kostium, ale chce za niego pięćdziesiąt miedziaków."~ */ DO ~GivePartyGold(50)
SetGlobal("CW_Mal_Cash","AR0600",2)
~ GOTO 40
  IF ~  GlobalLT("CW_Mal_Cash","AR0600",2)
~ THEN REPLY #28136 /* ~Kłamstwo: "Nie, jeszcze nie. Ma inny, ale chce za niego, uch, osiemdziesiąt miedziaków."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Malmaner_3","GLOBALLaw",-1)
~ GOTO 41
  IF ~  Global("CW_Mal_Cash","AR0600",2)
~ THEN REPLY #28137 /* ~"Nie, jeszcze nie."~ */ GOTO 18
END

IF ~~ THEN BEGIN 40 // from: 39.0 41.2 43.0
  SAY #28016 /* ~Szarpie się za włosy, wykrzykując: "Och, jakże Moce upodobały sobie uciskać biednego, zacnego Malmanera! Do diabła z tą maskaradą i do diabła z tym po trzykroć obmierzłym krawcem!" Rzuca ci pięćdziesiąt miedziaków. "Idź!"~ */
  IF ~~ THEN REPLY #28138 /* ~"Wrócę, kiedy go będę miał. Żegnaj."~ */ EXIT
  IF ~  !NearbyDialog("DMorte")
~ THEN REPLY #28139 /* ~"Hmmm... jaki kostium? Och, i dziękuję za miedziaki... żegnaj."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Malmaner_1","GLOBALGood",-1)
~ GOTO 21
  IF ~  NearbyDialog("DMorte")
~ THEN REPLY #28140 /* ~"Hmmm... jaki kostium? Och, i dziękuję za miedziaki... żegnaj."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Malmaner_1","GLOBALGood",-1)
~ GOTO 22
END

IF ~~ THEN BEGIN 41 // from: 39.1
  SAY #28017 /* ~"To jest... to jest... nie do pomyślenia! Całkowicie niedorzeczne! Kimże on sobie wyobraża, że jest?! Nagle marszczy brwi. "Jakby się nad tym bliżej zastanowić, to *faktycznie* brzmi to trochę za drogo, nawet jak na Gonkalfa." Przygląda ci się podejrzliwie.~ */
  IF ~  CheckStatGT(Protagonist,14,CHR)
~ THEN REPLY #28141 /* ~Kłamstwo: "Ten człowiek nie za bardzo cię lubi, Malmanerze. Płacisz za twoje ostre słowa, jakie przedtem do niego powiedziałeś."~ */ DO ~GivePartyGold(80)
SetGlobal("CW_Mal_Cash","AR0600",2)
~ GOTO 42
  IF ~  CheckStatLT(Protagonist,15,CHR)
~ THEN REPLY #28142 /* ~Kłamstwo: "Więc, uch, naprawdę go zdenerwowałeś."~ */ GOTO 43
  IF ~~ THEN REPLY #28143 /* ~"Wybacz, źle się wyraziłem. To było tylko pięćdziesiąt miedziaków."~ */ DO ~GivePartyGold(50)
SetGlobal("CW_Mal_Cash","AR0600",2)
~ GOTO 40
END

IF ~~ THEN BEGIN 42 // from: 41.0
  SAY #28018 /* ~Spogląda podejrzliwie na ciebie, po czym ustępuje: "No dobrze! Weź je, weź je. Daj mi tylko ten drugi kostium, tylko szybko!" Rzuca ci osiemdziesiąt miedziaków.~ */
  IF ~~ THEN REPLY #28144 /* ~"Wrócę, kiedy go będę miał. Żegnaj."~ */ EXIT
  IF ~  !NearbyDialog("DMorte")
~ THEN REPLY #28145 /* ~"Hmmm... jaki kostium? Och, i dziękuję za miedziaki... żegnaj."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Malmaner_1","GLOBALGood",-1)
~ GOTO 21
  IF ~  NearbyDialog("DMorte")
~ THEN REPLY #28146 /* ~"Hmmm... jaki kostium? Och, i dziękuję za miedziaki... żegnaj."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Malmaner_1","GLOBALGood",-1)
~ GOTO 22
END

IF ~~ THEN BEGIN 43 // from: 41.1
  SAY #28019 /* ~Spogląda na ciebie podejrzliwie, zaciskając usta. Masz pewność, że nie wierzy w ani jedno twoje słowo.~ */
  IF ~~ THEN REPLY #28147 /* ~"Wybacz, źle się wyraziłem. To było tylko pięćdziesiąt miedziaków."~ */ DO ~GivePartyGold(50)
SetGlobal("CW_Mal_Cash","AR0600",2)
~ GOTO 40
END

IF ~~ THEN BEGIN 44 // from:
  SAY #28020 /* ~.~ */
  IF ~~ THEN EXIT
END

IF ~  Global("Malmaner","GLOBAL",5)
PartyHasItem("Costume2")
~ THEN BEGIN 45 // from:
  SAY #28021 /* ~Mężczyzna patrzy na ciebie z wyczekiwaniem. "I co? I co? Masz ten kostium od Gonkalfa?"~ */
  IF ~  GlobalLT("CW_Mal_Cash","AR0600",2)
~ THEN REPLY #28148 /* ~"Tak, oto on. Kosztował mnie pięćdziesiąt miedziaków."~ */ DO ~TakePartyItemNum("Costume2",1)
GivePartyGold(50)
AddexperienceParty(6000)
SetGlobal("Malmaner","GLOBAL",6)
~ JOURNAL #27455 /* ~Od Gonkalfa dostałem drugi kostium i oddałem go Malmanerowi.~ */ GOTO 46
  IF ~  GlobalLT("CW_Mal_Cash","AR0600",2)
~ THEN REPLY #28149 /* ~Kłamstwo: "Tak, oto on. Kosztował mnie osiemdziesiąt miedziaków."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Malmaner_1","GLOBALLaw",-1)
~ GOTO 48
  IF ~  Global("CW_Mal_Cash","AR0600",2)
~ THEN REPLY #28150 /* ~"Tak, oto on."~ */ DO ~TakePartyItemNum("Costume2",1)
AddexperienceParty(6000)
SetGlobal("Malmaner","GLOBAL",6)
~ JOURNAL #27455 /* ~Od Gonkalfa dostałem drugi kostium i oddałem go Malmanerowi.~ */ GOTO 47
END

IF ~~ THEN BEGIN 46 // from: 45.0 48.2 49.0
  SAY #28022 /* ~Hałasuje w oburzeniu, wyrywa ci kostium i wciska w ręce pięćdziesiąt monet. "Teraz muszę iść..."~ */
  IF ~~ THEN REPLY #28151 /* ~"Żegnaj."~ */ DO ~EscapeArea()
~ EXIT
END

IF ~~ THEN BEGIN 47 // from: 45.2
  SAY #28023 /* ~"Najwyższy czas!" Wyrywa ci kostium z rąk. "Teraz muszę iść..."~ */
  IF ~~ THEN REPLY #28152 /* ~"Żegnaj."~ */ DO ~EscapeArea()
~ EXIT
END

IF ~~ THEN BEGIN 48 // from: 45.1
  SAY #28024 /* ~"To jest... to jest... nie do pomyślenia! Całkowicie niedorzeczne! Kimże on sobie wyobraża, że jest?! Nagle marszczy brwi. "Jakby się nad tym bliżej zastanowić, to *faktycznie* brzmi to trochę za drogo, nawet jak na Gonkalfa." Przygląda ci się podejrzliwie.~ */
  IF ~  CheckStatGT(Protagonist,14,CHR)
~ THEN REPLY #28153 /* ~Kłamstwo: "Ten człowiek nie za bardzo cię lubi, Malmanerze. Płacisz za twoje ostre słowa, jakie przedtem do niego powiedziałeś."~ */ DO ~TakePartyItemNum("Costume2",1)
GivePartyGold(80)
AddexperienceParty(6000)
SetGlobal("Malmaner","GLOBAL",6)
~ JOURNAL #27455 /* ~Od Gonkalfa dostałem drugi kostium i oddałem go Malmanerowi.~ */ GOTO 50
  IF ~  CheckStatLT(Protagonist,15,CHR)
~ THEN REPLY #28154 /* ~Kłamstwo: "Więc, uch, naprawdę go zdenerwowałeś."~ */ GOTO 49
  IF ~~ THEN REPLY #28155 /* ~"Wybacz, źle się wyraziłem. To było tylko pięćdziesiąt miedziaków."~ */ DO ~TakePartyItemNum("Costume2",1)
GivePartyGold(50)
AddexperienceParty(6000)
SetGlobal("Malmaner","GLOBAL",6)
~ JOURNAL #27455 /* ~Od Gonkalfa dostałem drugi kostium i oddałem go Malmanerowi.~ */ GOTO 46
END

IF ~~ THEN BEGIN 49 // from: 48.1
  SAY #28025 /* ~Spogląda podejrzliwie na ciebie, zaciskając usta.~ */
  IF ~~ THEN REPLY #28156 /* ~"Wybacz, źle się wyraziłem. To było tylko pięćdziesiąt miedziaków."~ */ DO ~TakePartyItemNum("Costume2",1)
GivePartyGold(50)
AddexperienceParty(6000)
SetGlobal("Malmaner","GLOBAL",6)
~ GOTO 46
END

IF ~~ THEN BEGIN 50 // from: 48.0
  SAY #28026 /* ~Spogląda podejrzliwie na ciebie, po czym ustępuje. Hałasuje w oburzeniu, wyrywa kostium od ciebie i wpycha ci w ręce osiemdziesiąt monet. "Teraz muszę już iść..."~ */
  IF ~~ THEN REPLY #28157 /* ~"Żegnaj."~ */ DO ~EscapeArea()
~ EXIT
END
