// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DQUISAI.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\pl_PL\dialog.tlk
// dialogF  : (none)

BEGIN ~DQUISAI~

IF ~  NumTimesTalkedTo(0)
GlobalLT("Qui_Sai","GLOBAL",2)
~ THEN BEGIN 0 // from:
  SAY #2974 /* ~To granitowy, ludzkich rozmiarów posąg przedstawiający mężczyznę, stojącego z ramionami opuszczonymi wzdłuż tułowia. Jego oczy są zamknięte. Wykonany jest wyśmienicie, z niezwykłą dokładnością i wygląda niemal jak żywy... tak bardzo, że zaczynasz się nawet zastanawiać, czy to w ogóle jest posąg.~ */
  IF ~  !NearbyDialog("DMorte")
Global("Qui_Sai","GLOBAL",0)
~ THEN REPLY #28953 /* ~"Witaj...?"~ */ GOTO 1
  IF ~  NearbyDialog("DMorte")
Global("Qui_Sai","GLOBAL",0)
~ THEN REPLY #28954 /* ~"Witaj...?"~ */ GOTO 2
  IF ~  Global("CW_Sal_Hint","GLOBAL",1)
~ THEN REPLY #28955 /* ~"Spotkałem maga imieniem Salabesz, który powiedział mi o przebywającym tutaj kamiennym człowieku. Czy ty nim jesteś?"~ */ DO ~SetGlobal("Qui_Sai","GLOBAL",2)
~ GOTO 5
  IF ~  Global("Qui_Sai","GLOBAL",1)
~ THEN REPLY #28956 /* ~"Witaj... czy ty jesteś Qui-Sai?"~ */ DO ~SetGlobal("Qui_Sai","GLOBAL",2)
~ GOTO 5
  IF ~~ THEN REPLY #28957 /* ~Dotknij posągu.~ */ GOTO 3
  IF ~~ THEN REPLY #28958 /* ~Odejdź.~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0 31.0
  SAY #28897 /* ~Posąg pozostaje nieruchomy.~ */
  IF ~  Global("CW_Sal_Hint","GLOBAL",1)
~ THEN REPLY #28959 /* ~"Spotkałem maga imieniem Salabesz, który powiedział mi o przebywającym tutaj kamiennym człowieku. Czy ty nim jesteś?"~ */ DO ~SetGlobal("Qui_Sai","GLOBAL",2)
~ GOTO 5
  IF ~~ THEN REPLY #28960 /* ~Dotknij posągu.~ */ GOTO 3
  IF ~~ THEN REPLY #28961 /* ~Odejdź.~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 0.1
  SAY #28898 /* ~Posąg pozostaje nieruchomy.~ */
  IF ~~ THEN EXTERN ~DMORTE~ 285
END

IF ~~ THEN BEGIN 3 // from: 0.4 1.1 31.3
  SAY #28899 /* ~Dotykasz posągu i okazuje się, że o ile zdobiące go ubranie wykonane jest z szarego materiału, to 'skóra' jest tak zimna i twarda jak granit.~ */
  IF ~  CheckStatGT(Protagonist,14,INT)
!NearbyDialog("DMorte")
~ THEN REPLY #28982 /* ~"Hmm. Po cóż ktoś miałby przyodziewać posąg?"~ */ GOTO 4
  IF ~  CheckStatGT(Protagonist,14,INT)
NearbyDialog("DMorte")
~ THEN REPLY #28983 /* ~"Hmm. Po cóż ktoś miałby przyodziewać posąg?"~ */ EXTERN ~DMORTE~ 287
  IF ~  Global("CW_Sal_Hint","GLOBAL",1)
~ THEN REPLY #28984 /* ~"Spotkałem maga imieniem Salabesz, który powiedział mi o przebywającym tutaj kamiennym człowieku. Czy ty nim jesteś?"~ */ DO ~SetGlobal("Qui_Sai","GLOBAL",2)
~ GOTO 5
  IF ~~ THEN REPLY #28985 /* ~Uderz posąg.~ */ DO ~SetGlobal("Qui_Sai","GLOBAL",2)
~ GOTO 23
  IF ~~ THEN REPLY #28986 /* ~Odejdź.~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 3.0
  SAY #28900 /* ~Posąg w ogóle nie reaguje na twoje zainteresowanie.~ */
  IF ~  Global("CW_Sal_Hint","GLOBAL",1)
~ THEN REPLY #28987 /* ~"Spotkałem maga imieniem Salabesz, który powiedział mi o przebywającym tutaj kamiennym człowieku. Czy ty nim jesteś?"~ */ DO ~SetGlobal("Qui_Sai","GLOBAL",2)
~ GOTO 5
  IF ~~ THEN REPLY #28988 /* ~Uderz posąg.~ */ DO ~SetGlobal("Qui_Sai","GLOBAL",2)
~ GOTO 23
  IF ~~ THEN REPLY #28989 /* ~Odejdź.~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 0.2 0.3 1.0 3.2 4.0 31.1 31.2
  SAY #28901 /* ~'Posąg' porusza się... ledwo co, niemal niewidocznie, ale z pewnością skinął głową.~ */
  IF ~~ THEN REPLY #28990 /* ~"Dobrze. Mam kilka pytań..."~ */ GOTO 6
  IF ~~ THEN REPLY #28991 /* ~"Tak myślałem. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 6 // from: 5.0 24.0 32.0
  SAY #28902 /* ~'Posąg' w dalszym ciągu milczy.~ */
  IF ~~ THEN REPLY #28992 /* ~"Cześć? Moje pytania?"~ */ GOTO 7
  IF ~~ THEN REPLY #28993 /* ~"Hmm. Żegnaj więc."~ */ EXIT
END

IF ~~ THEN BEGIN 7 // from: 6.0
  SAY #28903 /* ~Wciąż brak jakiejkolwiek odpowiedzi.~ */
  IF ~~ THEN REPLY #28994 /* ~Poczekaj na odpowiedź.~ */ GOTO 57
  IF ~~ THEN REPLY #28998 /* ~Zrezygnuj i odejdź.~ */ EXIT
END

IF ~~ THEN BEGIN 8 // from: 58.0 58.1
  SAY #28904 /* ~Oczy 'posągu' otwierają się; przygląda ci się zimnymi, szarymi oczami. Przemawia ociężale, głosem brzmiącym jak ocierające się kamienie młyńskie. "Twoja cierpliwość... została zauważona. Qui-Sai... przemówi... teraz do ciebie."~ */
  IF ~~ THEN REPLY #28999 /* ~"Mam pytania dotyczące ciebie..."~ */ GOTO 11
  IF ~~ THEN REPLY #29000 /* ~"Mam kilka pytań dotyczących tego miejsca."~ */ GOTO 30
  IF ~  Global("Know_Ravel","GLOBAL",1)
~ THEN REPLY #29001 /* ~"Co wiesz o Raveli Szaradnej?"~ */ GOTO 29
  IF ~~ THEN REPLY #29002 /* ~"Zapytam cię o to później. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 9 // from: 58.2
  SAY #28905 /* ~Oczy 'posągu' otwierają się; przygląda ci się zimnymi, szarymi oczami. Przemawia ociężale, głosem brzmiącym jak ocierające się kamienie młyńskie. "Twoja cierpliwość... została zauważona. Qui-Sai... przemówi... teraz do ciebie."~ */
  IF ~~ THEN EXTERN ~DMORTE~ 289
END

IF ~~ THEN BEGIN 10 // from: 11.3 12.2 13.3 14.2 15.0 16.2 17.1 19.0 27.2 28.1 29.0 30.0 35.0 37.10 38.0 41.1 49.1 50.2 51.1 53.1 55.0 56.0 59.0
  SAY #28906 /* ~Już myślisz, że cię nie dosłyszał, gdy odpowiada. "Pytaj."~ */
  IF ~  Global("CW_Qui_Question","GLOBAL",1)
GlobalGT("CW_Eli_Ans","GLOBAL",0)
~ THEN REPLY #65157 /* ~"Rozmawiałem z Elim o tym, co powiedziałeś wcześniej i nawet on przyznał, że walczyć i tak trzeba. Poleganie na kradzieży jest błędem."~ */ DO ~SetGlobal("CW_Qui_Question","GLOBAL",2)
~ GOTO 20
  IF ~  Global("CW_Qui_Question","GLOBAL",2)
GlobalGT("CW_Eli_Ans","GLOBAL",0)
~ THEN REPLY #65158 /* ~"Rozmawiałem z Elim o tym, co powiedziałeś wcześniej i przyznał, że żaden złodziej nie opanował swego rzemiosła do tego stopnia. A poza tym nie można się ukryć przed niektórymi wrogami; zdradzi cię twój zapach lub same myśli."~ */ DO ~SetGlobal("CW_Qui_Question","GLOBAL",3)
~ GOTO 21
  IF ~  Global("CW_Qui_Question","GLOBAL",3)
~ THEN REPLY #65159 /* ~"Rozmawiałem z Panią Thorncombe o tym, co powiedziałeś wcześniej. Powiedziała, że magowie są fizycznie ułomni, ich czary jedynie nadrabiają ten brak. Gdy czyjeś czary zostaną zużyte, istota walki wciąż pozostaje taka sama."~ */ DO ~SetGlobal("CW_Qui_Question","GLOBAL",4)
AddexperienceParty(10000)
~ GOTO 22
  IF ~~ THEN REPLY #29003 /* ~"Mam pytania dotyczące ciebie..."~ */ GOTO 11
  IF ~~ THEN REPLY #29004 /* ~"Mam kilka pytań dotyczących tego miejsca."~ */ GOTO 30
  IF ~  Global("Know_Ravel","GLOBAL",1)
~ THEN REPLY #29005 /* ~"Co wiesz o Raveli Szaradnej?"~ */ GOTO 29
  IF ~~ THEN REPLY #29006 /* ~"Mniejsza o to. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 11 // from: 8.0 10.3 33.3
  SAY #28907 /* ~Po chwili ciszy przemawia: "Pytaj."~ */
  IF ~~ THEN REPLY #29007 /* ~"Nad czym rozmyślałeś, kiedy znalazłem cię po raz pierwszy?"~ */ GOTO 51
  IF ~~ THEN REPLY #29008 /* ~"Kim jesteś?"~ */ GOTO 12
  IF ~~ THEN REPLY #29009 /* ~"Co tu robisz?"~ */ GOTO 13
  IF ~~ THEN REPLY #29010 /* ~"Tak naprawdę, to mam jeszcze kilka pytań..."~ */ GOTO 10
  IF ~~ THEN REPLY #29011 /* ~"Mniejsza o to. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 12 // from: 11.1 13.2
  SAY #28908 /* ~"Mówią na mnie... Qui-Sai."~ */
  IF ~~ THEN REPLY #29012 /* ~"Kim tak naprawdę jesteś?"~ */ GOTO 27
  IF ~~ THEN REPLY #29013 /* ~"Co tu robisz?"~ */ GOTO 13
  IF ~~ THEN REPLY #29014 /* ~"Mam jeszcze kilka pytań.."~ */ GOTO 10
  IF ~~ THEN REPLY #29015 /* ~"To wszystko, co chciałem wiedzieć. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 13 // from: 11.2 12.1 27.1 28.0
  SAY #28909 /* ~"Qui-Sai... medytuje. Qui-Sai... również szkoli... innych, w sztukach... walki."~ */
  IF ~~ THEN REPLY #29016 /* ~"Nad czym medytujesz?"~ */ GOTO 51
  IF ~  GlobalLT("Qui_Sai","GLOBAL",5)
Global("CW_Qui_Question","GLOBAL",0)
~ THEN REPLY #29017 /* ~"Czy możesz mnie uczyć?"~ */ GOTO 14
  IF ~~ THEN REPLY #29018 /* ~"Kim jesteś?"~ */ GOTO 12
  IF ~~ THEN REPLY #29019 /* ~"Mam jeszcze kilka pytań.."~ */ GOTO 10
  IF ~~ THEN REPLY #29020 /* ~"To wszystko, co chciałem wiedzieć. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 14 // from: 13.1
  SAY #28910 /* ~Posąg mierzy cię wzrokiem od stóp do głów, wydając głęboki, grzmiący dźwięk. Powoli podnosi do góry ręce i odłamuje z ostrym *trzaskiem* jeden ze swoich paznokci. "Qui-Sai chciałby zobaczyć... jak kruszysz ten kamień." Wręcza ci skorupę z żywej skały.~ */
  IF ~  CheckStatGT(Protagonist,8,STR)
~ THEN REPLY #29021 /* ~Skrusz kamień.~ */ GOTO 16
  IF ~  CheckStatLT(Protagonist,9,STR)
~ THEN REPLY #29022 /* ~Skrusz kamień.~ */ JOURNAL #28756 /* ~Qui-Sai, instruktor walki w Gmachu Rozrywki odmówił trenowania mnie, twierdząc że jestem za słaby. Może wrócę do niego gdy stanę się silniejszy.~ */ GOTO 15
  IF ~~ THEN REPLY #29023 /* ~"W zasadzie to mniejsza o to. Mam jeszcze kilka pytań..."~ */ GOTO 10
  IF ~~ THEN REPLY #29024 /* ~"Muszę już iść; oto kamień. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 15 // from: 14.1
  SAY #28911 /* ~Starasz się jak możesz, ale nie udaje ci się skruszyć kamienia. "Qui-Sai uważa, że... nie nadajesz się... jesteś zbyt słaby... aby uczyć się sztuk walki." Bierze od ciebie kamień i wkłada go do ust, mieląc go na pył i wydając przy tym szorstki, trzeszczący dźwięk.~ */
  IF ~~ THEN REPLY #29025 /* ~"Mam więc kilka pytań..."~ */ GOTO 10
  IF ~~ THEN REPLY #29026 /* ~"W takim razie, żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 16 // from: 14.0
  SAY #28912 /* ~Nie bez trudu udaje ci się przełamać kamień na dwoje. Bierze od ciebie kamienie i wkłada je do ust, mieląc je na pył i wydając przy tym szorstki, trzeszczący dźwięk. "Qui-Sai uważa, że... nadajesz się. Qui-Sai zapyta teraz... dlaczego... chcesz się szkolić?"~ */
  IF ~~ THEN REPLY #29027 /* ~"Aby się bronić."~ */ GOTO 17
  IF ~~ THEN REPLY #29029 /* ~"Aby zmiażdżyć moich wrogów."~ */ GOTO 17
  IF ~~ THEN REPLY #29030 /* ~"Mniejsza o to. Pozwól, że zapytam o co innego..."~ */ GOTO 10
  IF ~~ THEN REPLY #29031 /* ~"Jeszcze nie wiem. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 17 // from: 16.0 16.1
  SAY #28913 /* ~"Qui-Sai nie widzi... potrzeby... aby walczyć."~ */
  IF ~~ THEN REPLY #29032 /* ~"Co masz na myśli?"~ */ DO ~SetGlobal("CW_Qui_Question","GLOBAL",1)
~ GOTO 18
  IF ~~ THEN REPLY #29033 /* ~"Zapomnij o tym. Pozwól, że zapytam o co innego..."~ */ GOTO 10
  IF ~~ THEN REPLY #29034 /* ~"W takim razie, żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 18 // from: 17.0
  SAY #28914 /* ~"Qui-Sai chce przez to powiedzieć, że... jest wiele sposobów... na zrobienie tych rzeczy. Można... ukraść broń przeciwnika... czyniąc go... bezbronnym."~ */
  IF ~  CheckStatGT(Protagonist,12,INT)
Global("CW_Eli_Ans","GLOBAL",0)
~ THEN REPLY #29036 /* ~"Ależ walczyć i tak trzeba. Poleganie na kradzieży jest błędem."~ */ DO ~SetGlobal("CW_Qui_Question","GLOBAL",2)
~ GOTO 20
  IF ~  CheckStatLT(Protagonist,13,INT)
Global("CW_Eli_Ans","GLOBAL",0)
~ THEN REPLY #29038 /* ~"Nie będziesz mnie więc uczyć?"~ */ DO ~SetGlobal("Qui_Sai_Quest","GLOBAL",1)
~ GOTO 19
END

IF ~~ THEN BEGIN 19 // from: 18.1 20.2
  SAY #28915 /* ~"Qui-Sai nie widzi... potrzeby. Nie udało co się przekonać Qui-Saia... wręcz przeciwnie. Być może powinieneś... porozmawiać z tutejszym nauczycielem złodziei. Jeśli nie chcesz się od niego uczyć... on mógłby dostarczyć argumentu przeciwko mojemu."~ */
  IF ~~ THEN REPLY #29041 /* ~"Pozwól więc, że zapytam o co innego..."~ */ JOURNAL #56794 /* ~Qui-Sai nie zgodził się wyszkolić mnie na wojownika, a za to roztoczył przede mną korzyści wykształcenia złodziejskiego. Poradził mi, abym pobrał nauki złodziejskie u wychowawcy złodziei w Miejskim Gmachu Rozrywki, albo też, jeżeli nie chcę zostać łotrzykiem, abym porozmawiał z wychowawcą złodziei i znalazł godny kontrargument w dyskusji z Qui-Sai na temat wyższości złodzieja nad wojownikiem.~ */ GOTO 10
  IF ~~ THEN REPLY #29042 /* ~"W takim razie, żegnaj."~ */ JOURNAL #56794 /* ~Qui-Sai nie zgodził się wyszkolić mnie na wojownika, a za to roztoczył przede mną korzyści wykształcenia złodziejskiego. Poradził mi, abym pobrał nauki złodziejskie u wychowawcy złodziei w Miejskim Gmachu Rozrywki, albo też, jeżeli nie chcę zostać łotrzykiem, abym porozmawiał z wychowawcą złodziei i znalazł godny kontrargument w dyskusji z Qui-Sai na temat wyższości złodzieja nad wojownikiem.~ */ EXIT
END

IF ~~ THEN BEGIN 20 // from: 10.0 18.0 33.0
  SAY #28916 /* ~Po chwili, kiwa głową. "Można się... ukryć. Jeśli cię nie widzą... nie mogą cię zaatakować. Jest się... odpornym."~ */
  IF ~  CheckStatGT(Protagonist,14,INT)
GlobalLT("CW_Eli_Ans","GLOBAL",2)
~ THEN REPLY #29043 /* ~"Ale przecież żaden złodziej nie opanował swego rzemiosła do tego stopnia. A poza tym nie można się ukryć przed niektórymi wrogami; zdradzi cię twój zapach lub same myśli."~ */ DO ~SetGlobal("CW_Qui_Question","GLOBAL",3)
~ GOTO 21
  IF ~  GlobalGT("CW_Eli_Ans","GLOBAL",1)
~ THEN REPLY #29044 /* ~"Ale przecież żaden złodziej, nawet Eli, nie opanował swego rzemiosła do tego stopnia. A poza tym nie można się ukryć przed niektórymi wrogami; zdradzi cię twój zapach lub same myśli."~ */ DO ~SetGlobal("CW_Qui_Question","GLOBAL",3)
~ GOTO 21
  IF ~  CheckStatLT(Protagonist,15,INT)
GlobalLT("CW_Eli_Ans","GLOBAL",2)
~ THEN REPLY #29045 /* ~"Nie będziesz mnie więc uczyć?"~ */ DO ~SetGlobal("Qui_Sai_Quest","GLOBAL",1)
~ GOTO 19
END

IF ~~ THEN BEGIN 21 // from: 10.1 20.0 20.1 33.1
  SAY #28917 /* ~Po krótkiej chwili, kiwa głową. "Potężne zaklęcia... mogą dosięgnąć wielu wrogów... o wiele szybciej... niż jakiekolwiek ostrze."~ */
  IF ~  GlobalGT("Qui_Sai_Quest","GLOBAL",0)
CheckStatGT(Protagonist,14,INT)
Global("CW_Thorn_Ans","GLOBAL",0)
~ THEN REPLY #29048 /* ~"Magowie są jak manierka palącej oliwy... mocnej, ale po użyciu, nic nie wartej. Są fizycznie ułomni, ich czary jedynie nadrabiają ten brak. Gdy czyjeś czary zostaną zużyte, istota walki wciąż pozostaje taka sama."~ */ DO ~SetGlobal("Qui_Sai_Quest","GLOBAL",3)
SetGlobal("CW_Qui_Question","GLOBAL",4)
AddexperienceParty(10000)
~ GOTO 22
  IF ~  Global("Qui_Sai_Quest","GLOBAL",0)
CheckStatGT(Protagonist,14,INT)
Global("CW_Thorn_Ans","GLOBAL",0)
~ THEN REPLY #29048 /* ~"Magowie są jak manierka palącej oliwy... mocnej, ale po użyciu, nic nie wartej. Są fizycznie ułomni, ich czary jedynie nadrabiają ten brak. Gdy czyjeś czary zostaną zużyte, istota walki wciąż pozostaje taka sama."~ */ DO ~SetGlobal("CW_Qui_Question","GLOBAL",4)
AddexperienceParty(10000)
~ GOTO 22
  IF ~  CheckStatLT(Protagonist,15,INT)
Global("CW_Thorn_Ans","GLOBAL",0)
~ THEN REPLY #29050 /* ~"Nie będziesz mnie więc uczyć?"~ */ DO ~SetGlobal("Qui_Sai_Quest","GLOBAL",2)
~ GOTO 59
END

IF ~~ THEN BEGIN 22 // from: 10.2 21.0 21.1 33.2
  SAY #28918 /* ~Uśmiecha się lekko, wydając z gardła głęboki grzmiący dźwięk. "Qui-Sai uważa, że... nadajesz się do nauki. Spotkaj Qui-Saia... w komnacie ćwiczeń."~ */
  IF ~~ THEN REPLY #29053 /* ~"Wkrótce tam będę."~ */ DO ~SetGlobal("Qui_Sai","GLOBAL",4)
~ JOURNAL #58926 /* ~Qui-Sai ostatecznie zgodził się udzielić mi nauk i powiedział mi, żebym spotkał się z nim komnacie ćwiczebnej wojowników w Miejskim Gmachu Rozrywki.~ */ EXIT
  IF ~~ THEN REPLY #29054 /* ~"Muszę się teraz zająć pewnymi sprawami. Pójdę tam później."~ */ DO ~SetGlobal("Qui_Sai","GLOBAL",4)
~ JOURNAL #58926 /* ~Qui-Sai ostatecznie zgodził się udzielić mi nauk i powiedział mi, żebym spotkał się z nim komnacie ćwiczebnej wojowników w Miejskim Gmachu Rozrywki.~ */ EXIT
END

IF ~~ THEN BEGIN 23 // from: 3.3 4.1
  SAY #28919 /* ~W momencie, gdy próbujesz uderzyć posąg, jego oczy otwierając się z błyskiem i chwyta twoją pięść w żelaznym uścisku. Zwężając zimne, szare oczy, przemawia głosem brzmiącym jak ocierające się kamienie młyńskie: "Dlaczego... chcesz... uderzyć Qui-Saia?"~ */
  IF ~~ THEN REPLY #29055 /* ~"Wybacz mi, chciałem tylko sprawdzić, czy rzeczywiście jesteś posągiem."~ */ GOTO 24
  IF ~~ THEN REPLY #29056 /* ~"Dobrze ci tak za to, że próbowałeś mnie oszukać."~ */ GOTO 25
  IF ~~ THEN REPLY #29057 /* ~"Zapomnij, że to się wydarzyło."~ */ EXIT
END

IF ~~ THEN BEGIN 24 // from: 23.0 25.0
  SAY #28920 /* ~Z wolna kiwa głową, marszcząc brwi. "Zostaje ci... wybaczone. Wydaje się jednak... że brakuje ci... cierpliwości."~ */
  IF ~~ THEN REPLY #29058 /* ~"Być może. Mam kilka pytań..."~ */ GOTO 6
  IF ~~ THEN REPLY #29059 /* ~"Może i tak. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 25 // from: 23.1
  SAY #28921 /* ~"Qui-Sai nie chciał... nikogo oszukać. Qui-Sai... uważa, że jesteś... nierozważny i zuchwały."~ */
  IF ~~ THEN REPLY #29060 /* ~"Wybacz mi, chciałem tylko sprawdzić, czy rzeczywiście jesteś posągiem."~ */ GOTO 24
  IF ~~ THEN REPLY #29061 /* ~"Niedobrze. Mam jeszcze kilka pytań..."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Qui_1","GLOBALGood",-1)
~ GOTO 26
END

IF ~~ THEN BEGIN 26 // from: 25.1
  SAY #28922 /* ~Posąg zamyka oczy i milknie po raz kolejny.~ */
  IF ~~ THEN REPLY #29062 /* ~"Żegnaj więc."~ */ EXIT
END

IF ~~ THEN BEGIN 27 // from: 12.0
  SAY #28923 /* ~"Należę... do rasy zwanej... kamiennymi książętami. Qui-Sai to... genasi-ziemi."~ */
  IF ~~ THEN REPLY #29063 /* ~"Genasi?"~ */ JOURNAL #65756 /* ~Qui-Sai, którego spotkałem w Miejskim Gmachu Rozrywki, powiedział mi, że należy do gatunku 'genasi-ziemi'... będącego potomstwem istot łączących w sobie organiczne cechy człowieka i żywiołu ziemi.~ */ GOTO 28
  IF ~~ THEN REPLY #29064 /* ~"Co tu robisz?"~ */ GOTO 13
  IF ~~ THEN REPLY #29065 /* ~"Mam jeszcze kilka pytań..."~ */ GOTO 10
  IF ~~ THEN REPLY #29066 /* ~"To wszystko, co chciałem wiedzieć. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 28 // from: 27.0
  SAY #28924 /* ~Z dumą potrząsa głową. "Ojciec Qui-Saia... istota z żywiołu ziemi... Dao. Matka Qui-Saia... śmiertelna kobieta... o szlachetnym pochodzeniu. Oto co znaczy być... genasi-ziemi."~ */
  IF ~~ THEN REPLY #29067 /* ~"Co tu robisz?"~ */ GOTO 13
  IF ~~ THEN REPLY #29068 /* ~"Mam jeszcze kilka pytań..."~ */ GOTO 10
  IF ~~ THEN REPLY #29069 /* ~"To wszystko, co chciałem wiedzieć. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 29 // from: 8.2 10.5 33.5
  SAY #28925 /* ~"Nic."~ */
  IF ~~ THEN REPLY #29070 /* ~"Mam kilka pytań..."~ */ GOTO 10
  IF ~~ THEN REPLY #29071 /* ~"To wszystko, co chciałem wiedzieć. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 30 // from: 8.1 10.4 33.4
  SAY #28926 /* ~"To jest... Gmach Rozrywki. Jeśli musisz wiedzieć więcej... zapytaj... kogoś innego."~ */
  IF ~~ THEN REPLY #29072 /* ~"Hmm. Mam kilka pytań..."~ */ GOTO 10
  IF ~~ THEN REPLY #29073 /* ~"Pójdę poszukać kogoś innego. Żegnaj."~ */ EXIT
END

IF ~  NumTimesTalkedToGT(0)
GlobalLT("Qui_Sai","GLOBAL",2)
~ THEN BEGIN 31 // from:
  SAY #28927 /* ~Posąg wciąż stoi w tym miejscu, nieruchomy i milczący jak zwykle.~ */
  IF ~  Global("Qui_Sai","GLOBAL",0)
~ THEN REPLY #29074 /* ~"Witaj..."~ */ GOTO 1
  IF ~  Global("CW_Sal_Hint","GLOBAL",1)
~ THEN REPLY #29075 /* ~"Spotkałem maga imieniem Salabesz, który powiedział mi o przebywającym tutaj kamiennym człowieku. Czy ty nim jesteś?"~ */ DO ~SetGlobal("Qui_Sai","GLOBAL",2)
~ GOTO 5
  IF ~  Global("Qui_Sai","GLOBAL",1)
~ THEN REPLY #29076 /* ~"Witaj... Czy ty jesteś Qui-Sai?"~ */ DO ~SetGlobal("Qui_Sai","GLOBAL",2)
~ GOTO 5
  IF ~~ THEN REPLY #29077 /* ~Dotknij posągu.~ */ GOTO 3
  IF ~~ THEN REPLY #29078 /* ~Odejdź.~ */ EXIT
END

IF ~  Global("Qui_Sai","GLOBAL",2)
~ THEN BEGIN 32 // from:
  SAY #28928 /* ~'Posąg' wciąż stoi w tym miejscu, nieruchomy i milczący jak zwykle.~ */
  IF ~~ THEN REPLY #29079 /* ~"Witaj ponownie. Mam parę pytań..."~ */ GOTO 6
  IF ~~ THEN REPLY #29080 /* ~Odejdź.~ */ EXIT
END

IF ~  Global("Qui_Sai","GLOBAL",3)
~ THEN BEGIN 33 // from:
  SAY #28929 /* ~"Qui-Sai wita cię."~ */
  IF ~  Global("CW_Qui_Question","GLOBAL",1)
GlobalGT("CW_Eli_Ans","GLOBAL",0)
~ THEN REPLY #65160 /* ~"Rozmawiałem z Elim o tym, co powiedziałeś wcześniej i nawet on przyznał, że walczyć i tak trzeba. Poleganie na kradzieży jest błędem."~ */ DO ~SetGlobal("CW_Qui_Question","GLOBAL",2)
~ GOTO 20
  IF ~  Global("CW_Qui_Question","GLOBAL",2)
GlobalGT("CW_Eli_Ans","GLOBAL",0)
~ THEN REPLY #65161 /* ~"Rozmawiałem z Elim o tym, co powiedziałeś wcześniej i przyznał, że żaden złodziej nie opanował swego rzemiosła do tego stopnia. A poza tym nie można się ukryć przed niektórymi wrogami; zdradzi cię twój zapach lub same myśli."~ */ DO ~SetGlobal("CW_Qui_Question","GLOBAL",3)
~ GOTO 21
  IF ~  Global("CW_Qui_Question","GLOBAL",3)
~ THEN REPLY #65162 /* ~"Rozmawiałem z Panią Thorncombe, o tym co powiedziałeś wcześniej. Powiedziała, że magowie są fizycznie ułomni, ich czary jedynie nadrabiają ten brak. Gdy czyjeś czary zostaną zużyte, istota walki wciąż pozostaje taka sama."~ */ DO ~SetGlobal("CW_Qui_Question","GLOBAL",4)
AddexperienceParty(10000)
~ GOTO 22
  IF ~~ THEN REPLY #29081 /* ~"Mam pytania dotyczące ciebie..."~ */ GOTO 11
  IF ~~ THEN REPLY #29082 /* ~"Mam kilka pytań dotyczących tego miejsca."~ */ GOTO 30
  IF ~  Global("Know_Ravel","GLOBAL",1)
~ THEN REPLY #29083 /* ~"Co wiesz o Raveli Szaradnej?"~ */ GOTO 29
  IF ~~ THEN REPLY #29084 /* ~"Tylko przechodziłem. Żegnaj."~ */ EXIT
END

IF ~  Global("Qui_Sai","GLOBAL",4)
~ THEN BEGIN 34 // from:
  SAY #28930 /* ~"Nic... nie mów. Idź... do komnaty ćwiczeń."~ */
  IF ~~ THEN REPLY #29085 /* ~"Wkrótce tam będę."~ */ EXIT
  IF ~~ THEN REPLY #29086 /* ~"Muszę się teraz zająć pewnymi sprawami. Pójdę tam później."~ */ EXIT
END

IF ~  Global("Qui_Sai","GLOBAL",5)
~ THEN BEGIN 35 // from:
  SAY #28931 /* ~Przygląda ci się chłodno granitowymi oczami. "Jesteś tutaj... aby ćwiczyć pod okiem Qui-Saia?"~ */
  IF ~~ THEN REPLY #29087 /* ~"Nie, mam kilka pytań..."~ */ GOTO 10
  IF ~~ THEN REPLY #29088 /* ~"Tak, ucz mnie."~ */ GOTO 36
  IF ~~ THEN REPLY #65507 /* ~"Nie teraz, nie. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 36 // from: 35.1
  SAY #28932 /* ~"Jesteś... wojownikiem z zawodu?"~ */
  IF ~  Class(Protagonist,FIGHTER)
~ THEN REPLY #29089 /* ~"Tak."~ */ GOTO 37
  IF ~  !Class(Protagonist,FIGHTER)
~ THEN REPLY #29090 /* ~"Uch... nie."~ */ GOTO 49
END

IF ~~ THEN BEGIN 37 // from: 36.0 40.0 41.0 42.2 43.2 44.2 45.2 46.2 48.1 50.0 50.1
  SAY #28933 /* ~"Qui-Sai biegle włada... wszelką bronią, specjalizując się w... żadnej... będąc mistrzem wielu. Czego chcesz się nauczyć od Qui-Saia?"~ */
  IF ~  ExtraProficiency(Protagonist,0)
~ THEN REPLY #29091 /* ~"Naucz mnie jak walczyć pięściami."~ */ GOTO 38
  IF ~  ExtraProficiencyGT(Protagonist,0)
~ THEN REPLY #29092 /* ~"Naucz mnie jak walczyć pięściami."~ */ GOTO 42
  IF ~  ExtraProficiency(Protagonist,0)
~ THEN REPLY #29093 /* ~"Naucz mnie jak walczyć ostrzem."~ */ GOTO 38
  IF ~  ExtraProficiencyGT(Protagonist,0)
~ THEN REPLY #29094 /* ~"Naucz mnie jak walczyć ostrzem."~ */ GOTO 43
  IF ~  ExtraProficiency(Protagonist,0)
~ THEN REPLY #29095 /* ~"Naucz mnie jak walczyć pałką."~ */ GOTO 38
  IF ~  ExtraProficiencyGT(Protagonist,0)
~ THEN REPLY #29096 /* ~"Naucz mnie jak walczyć pałką."~ */ GOTO 44
  IF ~  ExtraProficiency(Protagonist,0)
~ THEN REPLY #29097 /* ~"Naucz mnie jak walczyć toporem."~ */ GOTO 38
  IF ~  ExtraProficiencyGT(Protagonist,0)
~ THEN REPLY #29098 /* ~"Naucz mnie jak walczyć toporem."~ */ GOTO 45
  IF ~  ExtraProficiency(Protagonist,0)
~ THEN REPLY #29099 /* ~"Naucz mnie jak walczyć młotem."~ */ GOTO 38
  IF ~  ExtraProficiencyGT(Protagonist,0)
~ THEN REPLY #29100 /* ~"Naucz mnie jak walczyć młotem."~ */ GOTO 46
  IF ~~ THEN REPLY #29101 /* ~"Tak naprawdę, to mam kilka pytań..."~ */ GOTO 10
  IF ~~ THEN REPLY #29102 /* ~"Na razie nic. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 38 // from: 37.0 37.2 37.4 37.6 37.8 40.1
  SAY #28934 /* ~"Tym razem... nic więcej... nie możesz się nauczyć. Wróć do... Qui-Saia... kiedy zdobędziesz... więcej doświadczenia."~ */
  IF ~~ THEN REPLY #29103 /* ~"Mam więc kilka pytań..."~ */ GOTO 10
  IF ~~ THEN REPLY #29104 /* ~"Zrobię to. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 39 // from: 42.0 43.0 44.0 45.0 46.0 48.0
  SAY #28935 /* ~"Qui-Sai... będzie cię uczył."~ */
  IF ~~ THEN REPLY #29105 /* ~Ćwicz razem z nim.~ */ DO ~FadeToColor([20.0],0)
Wait(3)
FadeFromColor([20.0],0)
~ GOTO 40
END

IF ~~ THEN BEGIN 40 // from: 39.0
  SAY #28936 /* ~"Qui-Sai jest... zadowolony... z ciebie... jako ucznia. Uczysz się... szybko."~ */
  IF ~  ExtraProficiencyGT(Protagonist,0)
~ THEN REPLY #29106 /* ~"Dzięki. Możesz mnie nauczyć czegoś więcej?"~ */ GOTO 37
  IF ~  ExtraProficiency(Protagonist,0)
~ THEN REPLY #29107 /* ~"Dzięki. Możesz mnie nauczyć czegoś więcej?"~ */ GOTO 38
  IF ~~ THEN REPLY #29108 /* ~"Dzięki. Żegnaj, Qui-Sai."~ */ EXIT
END

IF ~~ THEN BEGIN 41 // from: 42.1 43.1 44.1 45.1 46.1
  SAY #28937 /* ~Po sprawdzeniu umiejętności jakie posiadasz, Qui-Sai potrząsa głową. "Qui-Sai uważa, że już opanowałeś... biegle... tę formę walki. Qui-Sai nie może... nauczyć cię nic więcej. Jeśli chcesz... nauczyć się jeszcze czegoś o tej broni... odszukaj Korura, w Niższej Dzielnicy."~ */
  IF ~~ THEN REPLY #29109 /* ~"Możesz mnie jeszcze czegokolwiek nauczyć?"~ */ GOTO 37
  IF ~~ THEN REPLY #29110 /* ~"Mam więc kilka pytań..."~ */ GOTO 10
  IF ~~ THEN REPLY #29111 /* ~"Żegnaj więc."~ */ EXIT
END

IF ~~ THEN BEGIN 42 // from: 37.1
  SAY #28938 /* ~"Qui-Sai nauczy cię... sztuki walczenia... pięściami. Czy... chcesz tego?"~ */
  IF ~  ProficiencyLT(Protagonist,FIST,3)
~ THEN REPLY #29112 /* ~"Tak, naucz mnie."~ */ DO ~IncrementProficiency(Protagonist,FIST,1)
IncrementExtraProficiency(Protagonist,-1)
~ GOTO 39
  IF ~  ProficiencyGT(Protagonist,FIST,2)
~ THEN REPLY #29113 /* ~"Tak, naucz mnie."~ */ DO ~FadeToColor([20.0],0)
Wait(3)
FadeFromColor([20.0],0)
~ GOTO 41
  IF ~~ THEN REPLY #29114 /* ~"Nie... czego jeszcze możesz mnie nauczyć?"~ */ GOTO 37
  IF ~~ THEN REPLY #29115 /* ~"Nie, nie chcę dzisiaj ćwiczyć. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 43 // from: 37.3
  SAY #28939 /* ~"Qui-Sai nauczy cię... sztuki walczenia... ostrzem. Czy... chcesz tego?"~ */
  IF ~  ProficiencyLT(Protagonist,DAGGER,3)
~ THEN REPLY #29116 /* ~"Tak, naucz mnie."~ */ DO ~IncrementProficiency(Protagonist,DAGGER,1)
IncrementExtraProficiency(Protagonist,-1)
~ GOTO 39
  IF ~  ProficiencyGT(Protagonist,DAGGER,2)
~ THEN REPLY #29117 /* ~"Tak, naucz mnie."~ */ DO ~FadeToColor([20.0],0)
Wait(3)
FadeFromColor([20.0],0)
~ GOTO 41
  IF ~~ THEN REPLY #29118 /* ~"Nie... czego jeszcze możesz mnie nauczyć?"~ */ GOTO 37
  IF ~~ THEN REPLY #29119 /* ~"Nie, nie chcę dzisiaj ćwiczyć. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 44 // from: 37.5
  SAY #28940 /* ~"Qui-Sai nauczy cię... sztuki walczenia... pałką. Czy... chcesz tego?"~ */
  IF ~  ProficiencyLT(Protagonist,CLUB,3)
~ THEN REPLY #29120 /* ~"Tak, naucz mnie."~ */ DO ~IncrementProficiency(Protagonist,CLUB,1)
IncrementExtraProficiency(Protagonist,-1)
~ GOTO 39
  IF ~  ProficiencyGT(Protagonist,CLUB,2)
~ THEN REPLY #29121 /* ~"Tak, naucz mnie."~ */ DO ~FadeToColor([20.0],0)
Wait(3)
FadeFromColor([20.0],0)
~ GOTO 41
  IF ~~ THEN REPLY #29122 /* ~"Nie... czego jeszcze możesz mnie nauczyć?"~ */ GOTO 37
  IF ~~ THEN REPLY #29123 /* ~"Nie, nie chcę dzisiaj ćwiczyć. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 45 // from: 37.7
  SAY #28941 /* ~"Qui-Sai nauczy cię... sztuki walczenia... toporem. Czy... chcesz tego?"~ */
  IF ~  ProficiencyLT(Protagonist,AXE,3)
~ THEN REPLY #29124 /* ~"Tak, naucz mnie."~ */ DO ~IncrementProficiency(Protagonist,AXE,1)
IncrementExtraProficiency(Protagonist,-1)
~ GOTO 39
  IF ~  ProficiencyGT(Protagonist,AXE,2)
~ THEN REPLY #29125 /* ~"Tak, naucz mnie."~ */ DO ~FadeToColor([20.0],0)
Wait(3)
FadeFromColor([20.0],0)
~ GOTO 41
  IF ~~ THEN REPLY #29126 /* ~"Nie... czego jeszcze możesz mnie nauczyć?"~ */ GOTO 37
  IF ~~ THEN REPLY #29127 /* ~"Nie, nie chcę dzisiaj ćwiczyć. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 46 // from: 37.9
  SAY #28942 /* ~"Qui-Sai nauczy cię... sztuki walczenia... potężnym młotem. Czy... chcesz tego?"~ */
  IF ~  ProficiencyLT(Protagonist,HAMMER,3)
~ THEN REPLY #29128 /* ~"Tak, naucz mnie."~ */ DO ~IncrementProficiency(Protagonist,HAMMER,1)
IncrementExtraProficiency(Protagonist,-1)
~ GOTO 39
  IF ~  ProficiencyGT(Protagonist,HAMMER,2)
~ THEN REPLY #29129 /* ~"Tak, naucz mnie."~ */ DO ~FadeToColor([20.0],0)
Wait(3)
FadeFromColor([20.0],0)
~ GOTO 41
  IF ~~ THEN REPLY #29131 /* ~"Nie... czego jeszcze możesz mnie nauczyć?"~ */ GOTO 37
  IF ~~ THEN REPLY #29132 /* ~"Nie, nie chcę dzisiaj ćwiczyć. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 47 // from:
  SAY #28943 /* ~Po sprawdzeniu umiejętności jakie posiadasz, Qui-Sai potrząsa głową i wydaje z siebie głęboki, grzmiący dźwięk. "Qui-Sai uważa, że... jesteś gotów na... dalszy trening... z potężnym młotem."~ */
  IF ~~ THEN REPLY #29133 /* ~"Naucz mnie."~ */ GOTO 48
END

IF ~~ THEN BEGIN 48 // from: 47.0
  SAY #28944 /* ~"Qui-Sai chce, abyś wiedział... że gdy rozpoczniesz naukę walki... tym młotem... nie możesz uczyć się walczyć... żadną inną bronią. Czy... chcesz tego?"~ */
  IF ~~ THEN REPLY #29134 /* ~"Tak, chcę specjalizować się w młocie."~ */ DO ~IncrementProficiency(Protagonist,HAMMER,1)
IncrementExtraProficiency(Protagonist,-1)
~ JOURNAL #28818 /* ~Qui-Sai, nauczyciel walki w Gmachu Rozrywki nauczył mnie mistrzowskiego posługiwania się Młotem. Jestem teraz specjalistą w walce tą bronią.~ */ GOTO 39
  IF ~~ THEN REPLY #29135 /* ~"Nie. Czego jeszcze możesz mnie nauczyć?"~ */ GOTO 37
END

IF ~~ THEN BEGIN 49 // from: 36.1
  SAY #28945 /* ~Qui-Sai powoli wykrzywia usta, a następnie marszczy brwi. "W takim razie Qui-Sai nie może... nauczyć cię nic więcej."~ */
  IF ~~ THEN REPLY #29136 /* ~"Możesz uczynić ze mnie wojownika?"~ */ GOTO 50
  IF ~~ THEN REPLY #29137 /* ~"Mam więc kilka pytań..."~ */ GOTO 10
  IF ~~ THEN REPLY #29138 /* ~"W takim razie, żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 50 // from: 49.0
  SAY #28946 /* ~Lewa brew Qui-Saia wznosi się niezmiernie wolno na czoło. "Czy... porzuciłbyś swój obecny zawód, aby kroczyć... ścieżką wojownika?"~ */
  IF ~  Class(Protagonist,MAGE)
~ THEN REPLY #29139 /* ~"Tak. Nie chcę już studiować Sztuki. Zrób ze mnie wojownika."~ */ DO ~FadeToColor([20.0],0)
Wait(3)
FadeFromColor([20.0],0)
SetNamelessClass(FIGHTER)
~ GOTO 37
  IF ~  Class(Protagonist,THIEF)
~ THEN REPLY #29140 /* ~"Tak. Nie chcę więcej być złodziejem. Uczyń ze mnie wojownika."~ */ DO ~FadeToColor([20.0],0)
Wait(3)
FadeFromColor([20.0],0)
SetNamelessClass(FIGHTER)
~ GOTO 37
  IF ~~ THEN REPLY #29141 /* ~"W zasadzie to nie. Mam jednak kilka pytań..."~ */ GOTO 10
  IF ~~ THEN REPLY #29142 /* ~"Nie w tym momencie. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 51 // from: 11.0 13.0
  SAY #28947 /* ~"Qui-Sai medytuje o... Drodze Kamienia."~ */
  IF ~~ THEN REPLY #29143 /* ~"Drodze Kamienia?"~ */ GOTO 52
  IF ~~ THEN REPLY #29144 /* ~"Mam jeszcze kilka pytań..."~ */ GOTO 10
  IF ~~ THEN REPLY #29145 /* ~"To wszystko, co chciałem wiedzieć. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 52 // from: 51.0
  SAY #28948 /* ~Qui-Sai kiwa głową. "Chodzi o... filozofię. Chodzi o... metodę walki. Dzięki niej... Qui-Sai stara się osiągnąć... odporność."~ */
  IF ~~ THEN REPLY #29146 /* ~"Odporność? Będziesz niepokonany w walce..."~ */ GOTO 53
  IF ~~ THEN REPLY #29147 /* ~"To wszystko, co chciałem wiedzieć. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 53 // from: 52.0
  SAY #28949 /* ~"Tak. Teraz... Droga nie jest jeszcze... doskonała. Pewnego dnia Qui-Sai sprawi... że taka będzie. Qui-Sai to wie."~ */
  IF ~  Global("Way_of_Stone","GLOBAL",0)
~ THEN REPLY #29148 /* ~"Możesz podzielić się ze mną tym co do tej pory odkryłeś?"~ */ GOTO 54
  IF ~~ THEN REPLY #29149 /* ~"Rozumiem. Mam jeszcze kilka pytań..."~ */ GOTO 10
  IF ~~ THEN REPLY #29150 /* ~"To wszystko, co chciałem wiedzieć. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 54 // from: 53.0
  SAY #28950 /* ~Qui-Sai kiwa głową. "Nikt jeszcze nie poprosił... Qui-Saia, aby podzielił się wiedzą na temat... tej Drogi. Qui-Sai... zrobi to teraz." Zaczyna przemawiać w nieskończoność, powoli i z namaszczeniem...~ */
  IF ~  CheckStatGT(Protagonist,15,WIS)
~ THEN REPLY #29151 /* ~Słuchaj i poznawaj Drogę Kamienia.~ */ DO ~SetGlobal("Way_of_Stone","GLOBAL",1)
PermanentStatChange(Protagonist,ARMORCLASS,LOWER,1)
FadeToColor([20.0],0)
Wait(3)
FadeFromColor([20.0],0)
~ JOURNAL #28819 /* ~Qui-Sai, instruktor walki w Gmachu Rozrywki, nauczył mnie 'Drogi Kamienia'. Choć wiele z tej filozofii niezbyt mi się przyda, to, będąc istotą z krwi i kości, mogę wykorzystać część jej zasad, aby trudniej mnie było zranić w czasie walki.~ */ GOTO 55
  IF ~  CheckStatLT(Protagonist,16,WIS)
~ THEN REPLY #29152 /* ~Słuchaj, spróbuj zrozumieć Drogę Kamienia.~ */ DO ~FadeToColor([20.0],0)
Wait(3)
FadeFromColor([20.0],0)
~ JOURNAL #28820 /* ~Qui-Sai, instruktor walki w Gmachu Rozrywki, próbował nauczyć mnie 'Drogi Kamienia'. Jednak jej filozofia była dla mnie zwyczajnie zbyt obca.~ */ GOTO 56
END

IF ~~ THEN BEGIN 55 // from: 54.0
  SAY #28951 /* ~Po godzinach słuchania i wielu, wielu pytaniach, zaczynasz rozumieć jak niewiele Quin-Sai może cię nauczyć o Drodze Kamienia. W walce wykorzystasz ją, aby wytrzymywać i odbijać ciosy wroga, polepszając swoją Klasę Pancerza.~ */
  IF ~~ THEN REPLY #29153 /* ~"Dzięki, Qui-Sai. Mam kilka pytań..."~ */ GOTO 10
  IF ~~ THEN REPLY #29154 /* ~"Dzięki, Qui-Sai. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 56 // from: 54.1
  SAY #28952 /* ~Po godzinach słuchania i wielu, wielu pytaniach, wciąż nie rozumiesz Drogi Kamienia Qui-Saia. Jej założenia są po prostu zbyt skomplikowane i obco brzmiące, aby można je było w pełni zrozumieć.~ */
  IF ~~ THEN REPLY #29155 /* ~"W każdym bądź razie dziękuję, Qui-Sai. Mam kilka pytań..."~ */ GOTO 10
  IF ~~ THEN REPLY #29156 /* ~"W każdym bądź razie dziękuję, Qui-Sai. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 57 // from: 7.0
  SAY #31247 /* ~Wciąż brak jakiejkolwiek odpowiedzi. Odnosisz wrażenie, że Qui-Sai sprawdza twoją cierpliwość.~ */
  IF ~~ THEN REPLY #28995 /* ~Czekaj dalej.~ */ GOTO 58
  IF ~~ THEN REPLY #28996 /* ~Zrezygnuj i odejdź.~ */ EXIT
END

IF ~~ THEN BEGIN 58 // from: 57.0
  SAY #31251 /* ~Mija kilka minut, a Qui-Sai wciąż milczy.~ */
  IF ~  !NearbyDialog("DMorte")
~ THEN REPLY #31257 /* ~Poczekaj spokojnie jeszcze przez chwilę...~ */ DO ~SetGlobal("Qui_Sai","GLOBAL",3)
~ GOTO 8
  IF ~  NearbyDialog("DMorte")
!Global("Water","GLOBAL",3)
~ THEN REPLY #31258 /* ~Poczekaj spokojnie jeszcze przez chwilę...~ */ DO ~SetGlobal("Qui_Sai","GLOBAL",3)
~ GOTO 8
  IF ~  NearbyDialog("DMorte")
Global("Water","GLOBAL",3)
~ THEN REPLY #31259 /* ~Poczekaj spokojnie jeszcze przez chwilę...~ */ DO ~SetGlobal("Qui_Sai","GLOBAL",3)
~ GOTO 9
  IF ~~ THEN REPLY #31260 /* ~Zrezygnuj i odejdź.~ */ EXIT
END

IF ~~ THEN BEGIN 59 // from: 21.2
  SAY #65163 /* ~"Qui-Sai nie widzi... potrzeby. Nie udało co się przekonać Qui-Saia... wręcz przeciwnie. Być może powinieneś... porozmawiać z tutejszym nauczycielem magów. Jeśli nie chcesz się od niego uczyć... on mógłby dostarczyć argumentu przeciwko mojemu."~ */
  IF ~~ THEN REPLY #65164 /* ~"Pozwól więc, że zapytam o co innego..."~ */ JOURNAL #58925 /* ~Qui-Sai nie zgodził się wyszkolić mnie na wojownika, a za to roztoczył przede mną korzyści wykształcenia magicznego, tak jak przedtem rozwodził się nad zaletami stanu złodziejskiego. Poradził mi, abym udał się po nauki czarodziejskie do wychowawcy magów w Miejskim Gmachu Rozrywki, albo też, jeżeli nie chcę zostać czarodziejem, abym porozmawiał z wychowawcą magów i znalazł godny kontrargument w dyskusji z Qui-Sai na temat wyższości czarodzieja nad wojownikiem.~ */ GOTO 10
  IF ~~ THEN REPLY #65165 /* ~"W takim razie, żegnaj."~ */ JOURNAL #58925 /* ~Qui-Sai nie zgodził się wyszkolić mnie na wojownika, a za to roztoczył przede mną korzyści wykształcenia magicznego, tak jak przedtem rozwodził się nad zaletami stanu złodziejskiego. Poradził mi, abym udał się po nauki czarodziejskie do wychowawcy magów w Miejskim Gmachu Rozrywki, albo też, jeżeli nie chcę zostać czarodziejem, abym porozmawiał z wychowawcą magów i znalazł godny kontrargument w dyskusji z Qui-Sai na temat wyższości czarodzieja nad wojownikiem.~ */ EXIT
END
