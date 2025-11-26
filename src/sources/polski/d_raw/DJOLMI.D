// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DJOLMI.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\pl_PL\dialog.tlk
// dialogF  : (none)

BEGIN ~DJOLMI~

IF ~  GlobalLT("Jolmi","GLOBAL",2)
~ THEN BEGIN 0 // from:
  SAY #43388 /* ~Ta surowo wyglądająca, starsza kobieta wydaje się kogoś szukać. Gdy podchodzisz, jej wzrok zatrzymuje się na twojej twarzy. "Hej ty... mogę z tobą zamienić słówko?"~ */
  IF ~  Global("Jolmi","GLOBAL",0)
~ THEN REPLY #43389 /* ~"Oczywiście..."~ */ DO ~SetGlobal("Jolmi","GLOBAL",2)
~ GOTO 1
  IF ~  Global("Jolmi","GLOBAL",0)
~ THEN REPLY #43852 /* ~"Czego chcesz?"~ */ DO ~SetGlobal("Jolmi","GLOBAL",2)
~ GOTO 1
  IF ~  Global("Jolmi","GLOBAL",1)
~ THEN REPLY #43853 /* ~"Tak... jesteś Jolmi, zgadza się? Rozmawiałem z twoim posłańcem."~ */ DO ~SetGlobal("Jolmi","GLOBAL",2)
~ JOURNAL #63980 /* ~Dama o imieniu Jolmi uczyniła mi osobliwą propozycję... Chce odpłatnie 'zamordować' mnie. Jeżeli obędzie się bez kłopotów, to mogę uznać, że znalazłem źródło łatwego dochodu...~ */ GOTO 4
  IF ~~ THEN REPLY #43854 /* ~"Nie, nie teraz. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0 0.1
  SAY #43855 /* ~"Nazywam się Jolmi, jestem szlachcianką z Domu Syrma. Szukam pewnego człowieka, o którym mówią, że nie może umrzeć... ma okropne blizny, a śmierć to dla niego nic, chyba tylko irytująca błahostka. Ten szczątkowy opis, który udało mi się zdobyć całkiem do ciebie pasuje... Czy jesteś tym człowiekiem?"~ */
  IF ~~ THEN REPLY #43856 /* ~"Tak, to ja."~ */ DO ~IncrementGlobalOnceEx("GLOBALLawful_Jolmi_1","GLOBALLaw",2)
SetGlobal("Jolmi","GLOBAL",3)
~ JOURNAL #63980 /* ~Dama o imieniu Jolmi uczyniła mi osobliwą propozycję... Chce odpłatnie 'zamordować' mnie. Jeżeli obędzie się bez kłopotów, to mogę uznać, że znalazłem źródło łatwego dochodu...~ */ GOTO 4
  IF ~~ THEN REPLY #43857 /* ~"Nie, to nie ja."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Jolmi_1","GLOBALLaw",-1)
~ GOTO 2
END

IF ~~ THEN BEGIN 2 // from: 1.1
  SAY #43858 /* ~Gwałtownie kiwa głową. "W takim razie, dziękuję ci za to, że poświęciłeś mi trochę czasu. Żegnaj."~ */
  IF ~~ THEN REPLY #43859 /* ~"Zaczekaj... mam parę pytań..."~ */ GOTO 3
  IF ~~ THEN REPLY #43860 /* ~"Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 2.0 11.1 13.0
  SAY #43861 /* ~Jolmi potrząsa głową. "Są tutaj inni, którzy mogliby odpowiedzieć na twoje pytania. Proszę byś któregoś poszukał i pozwolił mi szukać dalej. Żegnaj."~ */
  IF ~  GlobalLT("Jolmi","GLOBAL",3)
~ THEN REPLY #43862 /* ~"Właściwie, *jestem* tym, którego szukasz."~ */ DO ~SetGlobal("Jolmi","GLOBAL",3)
~ JOURNAL #63980 /* ~Dama o imieniu Jolmi uczyniła mi osobliwą propozycję... Chce odpłatnie 'zamordować' mnie. Jeżeli obędzie się bez kłopotów, to mogę uznać, że znalazłem źródło łatwego dochodu...~ */ GOTO 4
  IF ~~ THEN REPLY #43863 /* ~Odejdź.~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 0.2 1.0 3.0 11.0
  SAY #43864 /* ~"A więc miło mi cię poznać." Kłania się lekko. "Mam dla ciebie pewną, trochę niezwykłą propozycję... przyznasz przecież, że jesteś niezwykłym człowiekiem. Dam ci tysiąc miedziaków... jeśli pozwolisz mi się zabić. Chcesz to przedyskutować?"~ */
  IF ~  CheckStatLT(Protagonist,13,CHR)
~ THEN REPLY #43865 /* ~"Jasne, dlaczego nie?"~ */ DO ~FadeToColor([20.0],0)
Wait(3)
FadeFromColor([20.0],0)
~ GOTO 7
  IF ~  CheckStatGT(Protagonist,12,CHR)
CheckStatLT(Protagonist,16,CHR)
~ THEN REPLY #43866 /* ~"Jasne, dlaczego nie?"~ */ DO ~FadeToColor([20.0],0)
Wait(3)
FadeFromColor([20.0],0)
~ GOTO 8
  IF ~  CheckStatGT(Protagonist,15,CHR)
~ THEN REPLY #43867 /* ~"Jasne, dlaczego nie?"~ */ DO ~FadeToColor([20.0],0)
Wait(3)
FadeFromColor([20.0],0)
~ GOTO 9
  IF ~~ THEN REPLY #43868 /* ~"Ale... dlaczego?"~ */ GOTO 5
  IF ~~ THEN REPLY #43869 /* ~"Nie, dzięki. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 4.3 12.3
  SAY #43870 /* ~Jolmi nawet nie mrugnęła. "A dlaczego nie? Sądziłam, że będzie to interesujące przeżycie - zapłacić komuś za przywilej zamordowania go. Kiedy po raz pierwszy usłyszałam plotki na twój temat, nie mogłam się powstrzymać. A więc... jak brzmi odpowiedź? Porozmawiamy o szczegółach?"~ */
  IF ~  CheckStatLT(Protagonist,13,CHR)
~ THEN REPLY #43871 /* ~"Tak. Pogadajmy o szczegółach."~ */ GOTO 7
  IF ~  CheckStatGT(Protagonist,12,CHR)
CheckStatLT(Protagonist,16,CHR)
~ THEN REPLY #43872 /* ~"Tak. Pogadajmy o szczegółach."~ */ GOTO 8
  IF ~  CheckStatGT(Protagonist,15,CHR)
~ THEN REPLY #43873 /* ~"Tak. Pogadajmy o szczegółach."~ */ GOTO 9
  IF ~~ THEN REPLY #43874 /* ~"Chwileczkę... gdzie słyszałaś te plotki?"~ */ GOTO 6
  IF ~~ THEN REPLY #43875 /* ~"Nie zgodzam się. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 6 // from: 5.3
  SAY #43876 /* ~Jolmi marszczy czoło. "W Gmachu słyszy się różne rzeczy. Więc czyż to nie *normalne*, że mówiono tam o kimś takim, jak ty? Ponownie pytam: czy rozważysz moją propozycję?"~ */
  IF ~  CheckStatLT(Protagonist,13,CHR)
~ THEN REPLY #43877 /* ~"Tak. Pogadajmy o szczegółach."~ */ GOTO 7
  IF ~  CheckStatGT(Protagonist,12,CHR)
CheckStatLT(Protagonist,16,CHR)
~ THEN REPLY #43878 /* ~"Tak. Pogadajmy o szczegółach."~ */ GOTO 8
  IF ~  CheckStatGT(Protagonist,15,CHR)
~ THEN REPLY #43879 /* ~"Tak. Pogadajmy o szczegółach."~ */ GOTO 9
  IF ~~ THEN REPLY #43880 /* ~"Nie zgadzam się. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 7 // from: 4.0 5.0 6.0 12.0
  SAY #43881 /* ~Po krótkiej dyskusji zgadzacie się na następujące warunki: Jolmi zapłaci ci tysiąc miedziaków; w zamian za to, ty pozwolisz jej wbić sztylet w twoje serce. Poczeka, aż się obudzisz i wtedy ci zapłaci.

"Więc zgadzasz się?"~ */
  IF ~~ THEN REPLY #43883 /* ~"Tak... zróbmy to."~ */ DO ~SetGlobal("Jolmi","GLOBAL",4)
GivePartyGold(1000)
FadeToColor([20.0],0)
Wait(3)
FadeFromColor([20.0],0)
~ GOTO 10
  IF ~~ THEN REPLY #43884 /* ~"Nie, chyba nie. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 8 // from: 4.1 5.1 6.1 12.1
  SAY #43885 /* ~Po krótkiej dyskusji zgadzacie się na następujące warunki: Jolmi zapłaci ci tysiąc pięćset miedziaków; w zamian za to, ty pozwolisz jej wbić sztylet w twoje serce. Poczeka, aż się obudzisz i wtedy ci zapłaci.

"Więc zgadzasz się?"~ */
  IF ~~ THEN REPLY #43886 /* ~"Tak... zróbmy to."~ */ DO ~SetGlobal("Jolmi","GLOBAL",4)
GivePartyGold(1500)
FadeToColor([20.0],0)
Wait(3)
FadeFromColor([20.0],0)
~ GOTO 10
  IF ~~ THEN REPLY #43887 /* ~"Nie, chyba nie. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 9 // from: 4.2 5.2 6.2 12.2
  SAY #43888 /* ~Po krótkiej dyskusji zgadzacie się na następujące warunki: Jolmi zapłaci ci dwa tysiące miedziaków; w zamian za to, ty pozwolisz jej wbić sztylet w twoje serce. Poczeka, aż się obudzisz i wtedy ci zapłaci.

"Więc zgadzasz się?"~ */
  IF ~~ THEN REPLY #43889 /* ~"Tak... zróbmy to."~ */ DO ~SetGlobal("Jolmi","GLOBAL",4)
GivePartyGold(2000)
FadeToColor([20.0],0)
Wait(3)
FadeFromColor([20.0],0)
~ GOTO 10
  IF ~~ THEN REPLY #43890 /* ~"Nie, chyba nie. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 10 // from: 7.0 8.0 9.0
  SAY #43891 /* ~Po chwili jest już po sprawie... Zanim się obudziłeś, wyczyściła i schowała ostrze. Po tym, jak podniosłeś się z podłogi Gmachu, Jolmi wręcza ci kilkanaście rolek miedziaków, podczas gdy ty pocierasz obolałą pierś.

"Muszę przyznać, że jestem cokolwiek rozczarowana. Ach, no dobrze... miedziaki i tak dobrze wydane. Żegnaj."~ */
  IF ~~ THEN REPLY #43892 /* ~"Tak... Żegnaj."~ */ DO ~IncrementGlobal("Death","GLOBAL",1)
~ JOURNAL #63981 /* ~W zamian za garść miedziaków, pozwoliłem Jolmi wbić sztylet w moje serce. Jolmi, zdaje się, była nieco rozczarowana tym "morderczym" przeżyciem, ale najważniejsze, że ja jestem zadowolony z łatwo zarobionych pieniędzy.~ */ EXIT
END

IF ~  Global("Jolmi","GLOBAL",2)
~ THEN BEGIN 11 // from:
  SAY #43893 /* ~Jolmi zwraca oczy w twoją stronę. "Tak?"~ */
  IF ~~ THEN REPLY #43894 /* ~"To ja jestem tym, którego szukasz."~ */ DO ~SetGlobal("Jolmi","GLOBAL",3)
~ JOURNAL #63980 /* ~Dama o imieniu Jolmi uczyniła mi osobliwą propozycję... Chce odpłatnie 'zamordować' mnie. Jeżeli obędzie się bez kłopotów, to mogę uznać, że znalazłem źródło łatwego dochodu...~ */ GOTO 4
  IF ~~ THEN REPLY #43895 /* ~"Mam kilka pytań..."~ */ GOTO 3
  IF ~~ THEN REPLY #43896 /* ~"Nic... Żegnaj."~ */ EXIT
END

IF ~  Global("Jolmi","GLOBAL",3)
~ THEN BEGIN 12 // from:
  SAY #43897 /* ~Jej zimnie oczy błyszczą - gdy podchodzisz, rozpoznaje cię. "A więc przemyślałeś moją ofertę? Tysiąc miedziaków żebyś pozwolił mi się zabić?"~ */
  IF ~  CheckStatLT(Protagonist,13,CHR)
~ THEN REPLY #43898 /* ~"Tak. Porozmawiajmy o tym."~ */ DO ~FadeToColor([20.0],0)
Wait(3)
FadeFromColor([20.0],0)
~ GOTO 7
  IF ~  CheckStatGT(Protagonist,12,CHR)
CheckStatLT(Protagonist,16,CHR)
~ THEN REPLY #43899 /* ~"Tak. Porozmawiajmy o tym."~ */ DO ~FadeToColor([20.0],0)
Wait(3)
FadeFromColor([20.0],0)
~ GOTO 8
  IF ~  CheckStatGT(Protagonist,15,CHR)
~ THEN REPLY #43900 /* ~"Tak. Porozmawiajmy o tym."~ */ DO ~FadeToColor([20.0],0)
Wait(3)
FadeFromColor([20.0],0)
~ GOTO 9
  IF ~~ THEN REPLY #43901 /* ~"Najpierw powiedz mi dlaczego."~ */ GOTO 5
  IF ~~ THEN REPLY #43902 /* ~"Nie, dzięki. Żegnaj."~ */ EXIT
END

IF ~  Global("Jolmi","GLOBAL",4)
~ THEN BEGIN 13 // from:
  SAY #43903 /* ~Jolmi zwraca oczy w twoją stronę; gdy spogląda na twoją twarz, rozpoznaje cię. "Tak?"~ */
  IF ~~ THEN REPLY #43904 /* ~"Mam kilka pytań, Jolmi..."~ */ GOTO 3
  IF ~~ THEN REPLY #43905 /* ~"Jestem tu przypadkiem... Żegnaj."~ */ EXIT
END
