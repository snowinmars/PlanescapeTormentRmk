// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DMARQUEZ.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\pl_PL\dialog.tlk
// dialogF  : (none)

BEGIN ~DMARQUEZ~
//////////////////////////////////////////////////
// WARNING: this file contains non-trivial WEIGHTs
//////////////////////////////////////////////////

IF WEIGHT #2 /* Triggers after states #: 16 17 even though they appear after this state */
~  GlobalGT("Slavers","GLOBAL",0)
NumTimesTalkedTo(0)
~ THEN BEGIN 0 // from:
  SAY #49143 /* ~Widzisz krzepkiego blondyna w zbroi funkcjonariusza Harmonium. Twarz ma zaróżowioną od picia, uśmiecha się, ale jego oczy pełne są rozgoryczenia. Bez żadnych wstępów zaczyna rozmowę. "Bars cię przysłał. Dobrze. Układ jest taki. Handlarze ludźmi porwali jego córkę. Twoim zadaniem jest ją odzyskać. Powiem ci gdzie ich można znaleźć; zabijesz ich i zdasz mi relację, a ja pomogę ci znaleźć devę. Nauczę cię nawet władać bronią. Zgoda?"~ */
  IF ~~ THEN REPLY #49144 /* ~"Zgoda."~ */ DO ~SetGlobal("Slavers","GLOBAL",2)
~ GOTO 1
  IF ~~ THEN REPLY #49145 /* ~"Najpierw, chciałbym zadać kilka pytań..."~ */ GOTO 2
  IF ~~ THEN REPLY #49146 /* ~"Mam kilka pytań o coś innego..."~ */ GOTO 2
  IF ~~ THEN REPLY #49147 /* ~"Nie. Nie zrobię tego."~ */ DO ~SetGlobal("Slavers","GLOBAL",6)
~ GOTO 6
  IF ~  Global("Skatch_Dead_KAPUTZ","GLOBAL",1)
Global("Jasilya_Dead_KAPUTZ","GLOBAL",0)
~ THEN REPLY #50464 /* ~"Wszyscy już nie żyją."~ */ DO ~AddexperienceParty(131250)
SetGlobal("Slavers","GLOBAL",5)
SetGlobal("Curst_Key","GLOBAL",2)
~ GOTO 14
  IF ~  Global("Skatch_Dead_KAPUTZ","GLOBAL",1)
Global("Jasilya_Dead_KAPUTZ","GLOBAL",1)
~ THEN REPLY #50465 /* ~"Wszyscy już nie żyją. Ona jednak również zginęła."~ */ DO ~SetGlobal("Curst_Key","GLOBAL",2)
SetGlobal("Slavers","GLOBAL",7)
AddexperienceParty(65000)
~ GOTO 15
END

IF ~~ THEN BEGIN 1 // from: 0.0 3.0 4.2 5.0 7.4 12.0 17.0
  SAY #49148 /* ~"Ostatnio słyszałem, że handlarze są na wschodzie, w Wewnętrznej Klątwie - dostali zgodę od straży miejskiej. Znajdź ich, upewnij się, że córce Barsa nic nie jest i zabij ich. Gdy skończysz, wróć tutaj, a ja powiem ci pierwszą część klucza, którego potrzebujesz, żeby znaleźć devę."~ */
  IF ~~ THEN REPLY #49149 /* ~"W porządku. Odpowiedz mi na kilka pytań o tym."~ */ JOURNAL #49153 /* ~Mam odszukać handlarzy niewolników przebywających w miejskich koszarach, sprawdzić, czy nic się nie stało córce Plugawego Barsa i zabić ich. Zadanie to zlecił mi Marquez. W zamian za to Marquez podaruje mi pierwszą część Klucza, który jest mi potrzebny, aby dostać się do uwięzionego devy.~ */ GOTO 7
  IF ~~ THEN REPLY #49150 /* ~"Dobrze. Żegnaj."~ */ JOURNAL #49153 /* ~Mam odszukać handlarzy niewolników przebywających w miejskich koszarach, sprawdzić, czy nic się nie stało córce Plugawego Barsa i zabić ich. Zadanie to zlecił mi Marquez. W zamian za to Marquez podaruje mi pierwszą część Klucza, który jest mi potrzebny, aby dostać się do uwięzionego devy.~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 0.1 0.2 12.1 12.2
  SAY #49157 /* ~"Kilka pytań? Nie. Są tylko dwie możliwe odpowiedzi. Albo jesteś za handlem ludźmi, albo nie?"~ */
  IF ~~ THEN REPLY #49158 /* ~"Jestem temu przeciwny."~ */ DO ~IncrementGlobalOnceEx("GLOBALGood_Marquez_1","GLOBALGood",1)
~ GOTO 3
  IF ~~ THEN REPLY #49159 /* ~"Jestem za."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Marquez_1","GLOBALGood",-2)
~ GOTO 4
END

IF ~~ THEN BEGIN 3 // from: 2.0
  SAY #49160 /* ~"Pomożesz więc, tak? Tak... albo nie."~ */
  IF ~~ THEN REPLY #49161 /* ~"Pomogę."~ */ DO ~SetGlobal("Slavers","GLOBAL",2)
~ GOTO 1
  IF ~~ THEN REPLY #49171 /* ~"Nie."~ */ DO ~SetGlobal("Slavers","GLOBAL",6)
~ GOTO 6
END

IF ~~ THEN BEGIN 4 // from: 2.1
  SAY #49173 /* ~Patrzy na ciebie z obrzydzeniem. "Czy znaczy to, że nie pomożesz... nawet mając na względzie swój własny interes?"~ */
  IF ~~ THEN REPLY #49174 /* ~"Co masz na myśli?"~ */ GOTO 5
  IF ~~ THEN REPLY #49176 /* ~"Zgadza się. Nie pomogę."~ */ DO ~SetGlobal("Slavers","GLOBAL",6)
~ GOTO 6
  IF ~~ THEN REPLY #49177 /* ~"Ależ pomogę."~ */ DO ~SetGlobal("Slavers","GLOBAL",2)
~ GOTO 1
END

IF ~~ THEN BEGIN 5 // from: 4.0
  SAY #49178 /* ~"Mam na myśli to, że każdy wie, że szukasz devy. Plugawy Bars mógłby ci bardzo pomóc w jego znalezieniu. Głupotą byłoby odrzucić taką propozycję."~ */
  IF ~~ THEN REPLY #49179 /* ~"Dobrze, więc. Pomogę."~ */ DO ~SetGlobal("Slavers","GLOBAL",2)
~ GOTO 1
  IF ~~ THEN REPLY #49181 /* ~"Nadal mówię, że nie pomogę."~ */ GOTO 6
END

IF ~~ THEN BEGIN 6 // from: 0.3 3.1 4.1 5.1 12.3 17.1
  SAY #49182 /* ~"Twa głupota jest zatem większa niż myślałem i nie mamy już o czym rozmawiać. Żegnaj." Wraca do swojego trunku.~ */
  IF ~~ THEN REPLY #49183 /* ~"Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 7 // from: 1.0 8.1 9.1 10.0 11.0 13.2 21.0
  SAY #49184 /* ~"O co chodzi?"~ */
  IF ~~ THEN REPLY #49185 /* ~"Kim jesteś?"~ */ GOTO 8
  IF ~~ THEN REPLY #49186 /* ~"Co tutaj robisz?"~ */ GOTO 9
  IF ~  Global("Curst_Key","GLOBAL",1)
~ THEN REPLY #49187 /* ~"W ogóle, to co ty masz wspólnego z tym handlem żywym towarem?"~ */ GOTO 10
  IF ~~ THEN REPLY #49188 /* ~"Co możesz mi powiedzieć o kluczu?"~ */ GOTO 11
  IF ~~ THEN REPLY #49189 /* ~"Możesz powtórzyć, gdzie są ci handlarze niewolników?"~ */ GOTO 1
  IF ~~ THEN REPLY #49190 /* ~"Nic. Żegnaj.~ */ EXIT
END

IF ~~ THEN BEGIN 8 // from: 7.0
  SAY #49191 /* ~"Jestem Marquez, były Trzeci Narzędnik Harmonium. Powiedziałem, były, ponieważ niedawno odszedłem."~ */
  IF ~~ THEN REPLY #49192 /* ~"Dlaczego?"~ */ GOTO 10
  IF ~~ THEN REPLY #49194 /* ~"Mam do ciebie kilka pytań..."~ */ GOTO 7
  IF ~~ THEN REPLY #49195 /* ~"Dziękuję. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 9 // from: 7.1
  SAY #49196 /* ~"Piję. Jak to wygląda? Czekam, aż ktoś przyjdzie i naprawi zło jakie wyrządziłem. Wyglądasz mi na kogoś, kto się do tego nadaje."~ */
  IF ~~ THEN REPLY #49197 /* ~"Jakie zło?"~ */ GOTO 10
  IF ~~ THEN REPLY #49199 /* ~"Mam do ciebie jeszcze kilka pytań..."~ */ GOTO 7
  IF ~~ THEN REPLY #49200 /* ~"Dziękuję. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 10 // from: 7.2 8.0 9.0
  SAY #49201 /* ~"Dowiedziałem się, że Harmonium - grupa, w którą od początku wierzyłem - kupuje ludzi, porywa ich, zabiera wbrew ich woli i rujnuje im życie. To wysysania życie z ludzi, za to, że są inni, a ja nie mogłem tego dłużej znieść. Handlarze, z którymi przyjdzie ci walczyć są moimi starymi kompanami." Pluje na podłogę. "Trepy, Kłamcy. Żadnemu z nich nie można już ufać."~ */
  IF ~~ THEN REPLY #49203 /* ~"Mam do ciebie jeszcze kilka pytań..."~ */ GOTO 7
  IF ~~ THEN REPLY #49204 /* ~"Dziękuję. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 11 // from: 7.3
  SAY #49205 /* ~"Pięcio-częściowy klucz. Ustny. Będący tylko w naszych głowach." Uśmiecha się do ciebie szczerząc zęby. "Mojej części nie wydobędziesz ze mnie nawet torturami i podejrzewam, że z innymi też nie pójdzie ci łatwo. Tajemnica jest w bezpiecznym miejscu i potrzeba ci będzie wszystkich pięciu części, żeby ją odkryć."~ */
  IF ~~ THEN REPLY #49206 /* ~"Mam do ciebie jeszcze kilka pytań..."~ */ GOTO 7
  IF ~~ THEN REPLY #49207 /* ~"Dziękuję. Żegnaj."~ */ EXIT
END

IF WEIGHT #3 /* Triggers after states #: 16 17 even though they appear after this state */
~  Global("Slavers","GLOBAL",1)
NumTimesTalkedToGT(0)
~ THEN BEGIN 12 // from:
  SAY #49208 /* ~"Wróciłeś." Przełyka swój trunek. "Bars cię przysłał. Dobrze. Układ jest taki. Handlarze ludźmi porwali jego córkę. Twoim zadaniem jest ją odzyskać. Powiem ci gdzie można ich znaleźć; zabijesz ich i zdasz mi relację. Ja pomogę ci znaleźć devę, i niech tam, może nauczę cię nawet władać bronią. Zgoda?"~ */
  IF ~~ THEN REPLY #49209 /* ~"Zgoda."~ */ DO ~SetGlobal("Slavers","GLOBAL",2)
~ GOTO 1
  IF ~~ THEN REPLY #49210 /* ~"Najpierw, mam do tego kilka pytań..."~ */ GOTO 2
  IF ~~ THEN REPLY #49211 /* ~"Mam kilka pytań o coś innego..."~ */ GOTO 2
  IF ~~ THEN REPLY #49212 /* ~"Nie. Nie zrobię tego."~ */ DO ~SetGlobal("Slavers","GLOBAL",6)
~ GOTO 6
  IF ~  Global("Skatch_Dead_KAPUTZ","GLOBAL",1)
Global("Jasilya_Dead_KAPUTZ","GLOBAL",0)
~ THEN REPLY #50468 /* ~"Wszyscy już nie żyją."~ */ DO ~AddexperienceParty(131250)
SetGlobal("Slavers","GLOBAL",5)
SetGlobal("Curst_Key","GLOBAL",2)
~ GOTO 14
  IF ~  Global("Skatch_Dead_KAPUTZ","GLOBAL",1)
Global("Jasilya_Dead_KAPUTZ","GLOBAL",1)
~ THEN REPLY #50469 /* ~"Wszyscy już nie żyją. Ona jednak również zginęła."~ */ DO ~SetGlobal("Curst_Key","GLOBAL",2)
SetGlobal("Slavers","GLOBAL",7)
AddexperienceParty(65000)
~ GOTO 15
END

IF WEIGHT #4 /* Triggers after states #: 16 17 even though they appear after this state */
~  GlobalGT("Slavers","GLOBAL",0)
GlobalLT("Curst_Key","GLOBAL",2)
~ THEN BEGIN 13 // from:
  SAY #49214 /* ~Marquez, widząc że podchodzisz, wyjrzał zza stołu. "Przychodzisz w sprawie córki Barsa, Jasilii?"~ */
  IF ~  Global("Skatch_DEAD_KAPUTZ","GLOBAL",1)
Global("Jasilya_DEAD_KAPUTZ","GLOBAL",0)
~ THEN REPLY #49215 /* ~"Jest wolna. Niedługo będzie tu z powrotem."~ */ DO ~SetGlobal("Curst_Key","GLOBAL",2)
SetGlobal("Slavers","GLOBAL",5)
AddexperienceParty(65000)
~ GOTO 14
  IF ~  Global("Skatch_DEAD_KAPUTZ","GLOBAL",1)
Global("Jasilya_DEAD_KAPUTZ","GLOBAL",1)
~ THEN REPLY #49216 /* ~"Zginęła kiedy próbowałem ją uratować."~ */ DO ~SetGlobal("Curst_Key","GLOBAL",2)
SetGlobal("Slavers","GLOBAL",7)
AddexperienceParty(65000)
~ GOTO 15
  IF ~~ THEN REPLY #49217 /* ~"Nie. Mam jednak kilka pytań..."~ */ GOTO 7
  IF ~~ THEN REPLY #50466 /* ~"Naucz mnie czegoś o broni."~ */ GOTO 21
  IF ~~ THEN REPLY #67822 /* ~"Nie. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 14 // from: 0.4 12.4 13.0
  SAY #49219 /* ~Klepie cię po ramieniu. "Dobra robota. Chcesz pierwszą część klucza, żeby się dostać pod Klątwę? Oto ona: 'To miejsce zgotowała wieczna sprawiedliwość dla tych buntowników...' Idź pomów z Kitlą, o tam. Ona ma drugą część klucza. Albo może nauczę cię władać bronią."~ */
  IF ~  Class(Protagonist,FIGHTER)
~ THEN REPLY #29133 /* ~"Naucz mnie."~ */ JOURNAL #66862 /* ~Dostałem pierwszą część Klucza, który otworzy dla mnie przejście do devy. Są to słowa: "To miejsce zgotowała wieczna sprawiedliwość dla tych buntowników..." Muszę teraz porozmawiać z kimś o imieniu Kitla. Osobę tę znajdę w karczmie "Brama Zdrajców".~ */ GOTO 22
  IF ~  !Class(Protagonist,FIGHTER)
~ THEN REPLY #29133 /* ~"Naucz mnie."~ */ JOURNAL #66862 /* ~Dostałem pierwszą część Klucza, który otworzy dla mnie przejście do devy. Są to słowa: "To miejsce zgotowała wieczna sprawiedliwość dla tych buntowników..." Muszę teraz porozmawiać z kimś o imieniu Kitla. Osobę tę znajdę w karczmie "Brama Zdrajców".~ */ GOTO 20
  IF ~~ THEN REPLY #67824 /* ~"Dziękuję. Żegnaj."~ */ JOURNAL #66862 /* ~Dostałem pierwszą część Klucza, który otworzy dla mnie przejście do devy. Są to słowa: "To miejsce zgotowała wieczna sprawiedliwość dla tych buntowników..." Muszę teraz porozmawiać z kimś o imieniu Kitla. Osobę tę znajdę w karczmie "Brama Zdrajców".~ */ EXIT
END

IF ~~ THEN BEGIN 15 // from: 0.5 12.5 13.1
  SAY #49222 /* ~"To wielka szkoda. Jestem pewien, że nie dało się tego uniknąć." Kiedy patrzy na ciebie, z jego oczu nie można nic odczytać. "Oto pierwsza część klucza: 'To miejsce zgotowała wieczna sprawiedliwość dla tych buntowników...' Idź pomów z Kitlą, o tam. Ona ma drugą część klucza. Albo nauczę cię władać bronią."~ */
  IF ~  Class(Protagonist,FIGHTER)
~ THEN REPLY #29133 /* ~"Naucz mnie."~ */ JOURNAL #66862 /* ~Dostałem pierwszą część Klucza, który otworzy dla mnie przejście do devy. Są to słowa: "To miejsce zgotowała wieczna sprawiedliwość dla tych buntowników..." Muszę teraz porozmawiać z kimś o imieniu Kitla. Osobę tę znajdę w karczmie "Brama Zdrajców".~ */ GOTO 22
  IF ~  !Class(Protagonist,FIGHTER)
~ THEN REPLY #29133 /* ~"Naucz mnie."~ */ JOURNAL #66862 /* ~Dostałem pierwszą część Klucza, który otworzy dla mnie przejście do devy. Są to słowa: "To miejsce zgotowała wieczna sprawiedliwość dla tych buntowników..." Muszę teraz porozmawiać z kimś o imieniu Kitla. Osobę tę znajdę w karczmie "Brama Zdrajców".~ */ GOTO 20
  IF ~~ THEN REPLY #67826 /* ~"Dziękuję. Żegnaj."~ */ JOURNAL #66862 /* ~Dostałem pierwszą część Klucza, który otworzy dla mnie przejście do devy. Są to słowa: "To miejsce zgotowała wieczna sprawiedliwość dla tych buntowników..." Muszę teraz porozmawiać z kimś o imieniu Kitla. Osobę tę znajdę w karczmie "Brama Zdrajców".~ */ EXIT
END

IF WEIGHT #1 /* Triggers after states #: 17 even though they appear after this state */
~  GlobalGT("Curst_Key","GLOBAL",1)
~ THEN BEGIN 16 // from:
  SAY #49224 /* ~"Nie musisz już ze mną rozmawiać. Powiedzieliśmy wszystko, co mieliśmy sobie powiedzieć. Mówiłem ci, żeby pomówić z Kitlą; ona cię stąd wyprowadzi. Daj mi się napić w spokoju, chyba że chcesz się podszkolić we władaniu bronią..."~ */
  IF ~  Class(Protagonist,FIGHTER)
~ THEN REPLY #29133 /* ~"Naucz mnie."~ */ GOTO 22
  IF ~  !Class(Protagonist,FIGHTER)
~ THEN REPLY #29133 /* ~"Naucz mnie."~ */ GOTO 20
  IF ~~ THEN REPLY #67821 /* ~"W porządku. Żegnaj."~ */ EXIT
END

IF WEIGHT #0 ~  Global("Slavers","GLOBAL",6)
~ THEN BEGIN 17 // from:
  SAY #49230 /* ~"Rozmyśliłeś się i chcesz pomóc Barsowi, czy też masz do mnie jakieś idiotyczne pytania?"~ */
  IF ~~ THEN REPLY #49228 /* ~"Zmieniłem zdanie. Pomogę."~ */ DO ~SetGlobal("Slavers","GLOBAL",2)
~ GOTO 1
  IF ~~ THEN REPLY #49229 /* ~"Nie zmieniłem zdania."~ */ GOTO 6
END

IF WEIGHT #5 ~  NumTimesTalkedTo(0)
~ THEN BEGIN 18 // from:
  SAY #49231 /* ~Widzisz krzepkiego blondyna w zbroi funkcjonariusza Harmonium. Twarz ma zaróżowioną od picia, uśmiecha się, ale jego oczy pełne są rozgoryczenia. Bez żadnych wstępów zaczyna rozmowę. "Bars cię przysłał. Nie? Przestań więc marnować mi czas." Odwraca się do swojej whisky, zdecydowanie cię ignorując.~ */
  IF ~~ THEN REPLY #49232 /* ~"Żegnaj, więc."~ */ EXIT
END

IF WEIGHT #6 ~  NumTimesTalkedToGT(0)
~ THEN BEGIN 19 // from:
  SAY #49233 /* ~"Bars cię przysłał? Nie? Więc przestań marnować mój czas." Odwraca się od ciebie, zdecydowanie cię ignorując."~ */
  IF ~~ THEN REPLY #49234 /* ~"Żegnaj, więc."~ */ EXIT
END

IF ~~ THEN BEGIN 20 // from: 14.1 15.1 16.1
  SAY #66962 /* ~"Nie wyglądasz mi na kogoś, kto by igrał z bronią; widzę to po twoich bliznach. Mimo to, sztuka walki nie jest teraz chyba twoim zajęciem. Chcesz zrezygnować z tego, co teraz robisz?"~ */
  IF ~~ THEN REPLY #66978 /* ~"Tak."~ */ DO ~SetNamelessClass(FIGHTER)
~ GOTO 22
  IF ~~ THEN REPLY #66979 /* ~"Nie."~ */ GOTO 23
END

IF ~~ THEN BEGIN 21 // from: 13.3
  SAY #66963 /* ~"Nie jesteś jeszcze gotowy, żeby cię uczyć. Skończ swoje zadanie z Jasilią i Barsem i wtedy cię czegoś nauczę."~ */
  IF ~~ THEN REPLY #66980 /* ~"Dobrze. Mam jeszcze kilka pytań..."~ */ GOTO 7
  IF ~~ THEN REPLY #66981 /* ~"Dobrze. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 22 // from: 14.0 15.0 16.0 20.0
  SAY #66964 /* ~"Po sposobie posługiwania się bronią widzę, że jesteś w tym obeznany, zagrajmy więc w otwarte karty. Czego chcesz?"~ */
  IF ~  ExtraProficiency(Protagonist,0)
~ THEN REPLY #66982 /* ~"Możesz mi powiedzieć, czy jestem gotów na dalszą naukę?"~ */ GOTO 25
  IF ~  ExtraProficiencyGT(Protagonist,0)
~ THEN REPLY #66983 /* ~"Możesz mi powiedzieć, czy jestem gotów na dalszą naukę?"~ */ GOTO 26
  IF ~  ExtraProficiencyGT(Protagonist,0)
Proficiency(Protagonist,FIST,4)
Proficiency(Protagonist,DAGGER,4)
Proficiency(Protagonist,HAMMER,4)
Proficiency(Protagonist,AXE,4)
Proficiency(Protagonist,CLUB,4)
~ THEN REPLY #66984 /* ~"Jestem dość biegły we władaniu każdą bronią. Czy jest jeszcze coś, czego mógłbyś mnie nauczyć?"~ */ JOURNAL #66986 /* ~Marquez powiedział mi, że jeżeli będę chciał dowiedzieć się więcej o różnych broniach, powinienem odszukać Korura, w Niższej Dzielnicy Sigil. Mam nadzieję, że będę mógł tam powrócić i skorzystać z jego rad.~ */ GOTO 24
  IF ~~ THEN REPLY #66985 /* ~"Nic, w tej chwili. Wrócę później."~ */ EXIT
END

IF ~~ THEN BEGIN 23 // from: 20.1
  SAY #66965 /* ~"Czemu więc w ogóle zawracasz mi głowę? Mam przed sobą picie, które nie może czekać."~ */
  IF ~~ THEN REPLY #66987 /* ~"Dobrze. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 24 // from: 22.2 34.2
  SAY #66966 /* ~Ocenia twoje umiejętności i gwiżdże ze zdumienia. "Bracie, to co potrafisz przechodzi ludzkie pojęcie. Znam tylko jedną osobę, która mogłaby nauczyć cię więcej: gość nazywa się Korur, w Niższej Dzielnicy Sigil. Jeśli ci się uda, idź i znajdź go."~ */
  IF ~~ THEN REPLY #66988 /* ~"W porządku. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 25 // from: 22.0 33.1 34.0 35.0
  SAY #66967 /* ~"Nie jesteś gotowy, by nauczyć się więcej. Wróć kiedy będziesz."~ */
  IF ~~ THEN REPLY #66989 /* ~"W porządku. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 26 // from: 22.1 27.6 28.6 29.6 30.6 31.6 33.0 34.1 35.1
  SAY #66968 /* ~"Mogę cię nauczyć cokolwiek zechcesz... do pewnego stopnia. O jakiej broni chcesz się nauczyć?"~ */
  IF ~  ExtraProficiencyGT(Protagonist,0)
~ THEN REPLY #66990 /* ~"Naucz mnie walczyć na pięści."~ */ GOTO 27
  IF ~  ExtraProficiencyGT(Protagonist,0)
~ THEN REPLY #66991 /* ~"Naucz mnie walczyć sztyletem."~ */ GOTO 28
  IF ~  ExtraProficiencyGT(Protagonist,0)
~ THEN REPLY #66992 /* ~"Naucz mnie walczyć pałką."~ */ GOTO 29
  IF ~  ExtraProficiencyGT(Protagonist,0)
~ THEN REPLY #66993 /* ~"Naucz mnie walczyć toporem."~ */ GOTO 30
  IF ~  ExtraProficiencyGT(Protagonist,0)
~ THEN REPLY #66994 /* ~"Naucz mnie walczyć młotem."~ */ GOTO 31
  IF ~~ THEN REPLY #66995 /* ~"Nie czuję się dzisiaj na siłach trenować. Wrócę później."~ */ EXIT
END

IF ~~ THEN BEGIN 27 // from: 26.0
  SAY #66969 /* ~"Chcesz nauczyć się walki na pięści? Krwawej i w zwarciu?"~ */
  IF ~  ProficiencyLT(Protagonist,FIST,3)
!Global("Specialist","GLOBAL",1)
!Global("Specialist","GLOBAL",4)
~ THEN REPLY #66996 /* ~"Tak, chciałbym nauczyć się władać tą bronią."~ */ DO ~IncrementProficiency(Protagonist,FIST,1)
IncrementExtraProficiency(Protagonist,-1)
~ GOTO 32
  IF ~  ProficiencyGT(Protagonist,FIST,2)
!Global("Specialist","GLOBAL",1)
!Global("Specialist","GLOBAL",4)
~ THEN REPLY #66997 /* ~"Tak, chciałbym nauczyć się władać tą bronią."~ */ DO ~FadeToColor([20.0],0)
Wait(3)
FadeFromColor([20.0],0)
~ GOTO 35
  IF ~  ProficiencyLT(Protagonist,FIST,4)
Global("Specialist","GLOBAL",1)
!Global("Specialist","GLOBAL",4)
~ THEN REPLY #66998 /* ~"Tak, chciałbym nauczyć się władać tą bronią."~ */ DO ~IncrementProficiency(Protagonist,FIST,1)
IncrementExtraProficiency(Protagonist,-1)
~ GOTO 32
  IF ~  ProficiencyGT(Protagonist,FIST,3)
Global("Specialist","GLOBAL",1)
!Global("Specialist","GLOBAL",4)
~ THEN REPLY #66999 /* ~"Tak, chciałbym nauczyć się władać tą bronią."~ */ DO ~FadeToColor([20.0],0)
Wait(3)
FadeFromColor([20.0],0)
~ GOTO 34
  IF ~  ProficiencyLT(Protagonist,FIST,4)
Global("Specialist","GLOBAL",4)
~ THEN REPLY #67000 /* ~"Tak, chciałbym nauczyć się władać tą bronią."~ */ DO ~IncrementProficiency(Protagonist,FIST,1)
IncrementExtraProficiency(Protagonist,-1)
~ GOTO 32
  IF ~  ProficiencyGT(Protagonist,FIST,3)
Global("Specialist","GLOBAL",4)
~ THEN REPLY #67001 /* ~"Tak, chciałbym nauczyć się władać tą bronią."~ */ DO ~FadeToColor([20.0],0)
Wait(3)
FadeFromColor([20.0],0)
~ GOTO 34
  IF ~~ THEN REPLY #67030 /* ~"Nie... jaką jeszcze inną bronią możesz nauczyć mnie władać?"~ */ GOTO 26
  IF ~~ THEN REPLY #67031 /* ~"Nie, myślę, że nie chcę dzisiaj trenować. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 28 // from: 26.1
  SAY #66970 /* ~"Sztylet, co? Broń rzezimieszków, dobra jednak by nadać czemuś... osobisty charakter. Chcesz się nauczyć?"~ */
  IF ~  ProficiencyLT(Protagonist,DAGGER,3)
!Global("Specialist","GLOBAL",1)
!Global("Specialist","GLOBAL",4)
~ THEN REPLY #67002 /* ~"Tak, chciałbym nauczyć się władać tą bronią."~ */ DO ~IncrementProficiency(Protagonist,DAGGER,1)
IncrementExtraProficiency(Protagonist,-1)
~ GOTO 32
  IF ~  ProficiencyGT(Protagonist,DAGGER,2)
!Global("Specialist","GLOBAL",1)
!Global("Specialist","GLOBAL",4)
~ THEN REPLY #67003 /* ~"Tak, chciałbym nauczyć się władać tą bronią."~ */ DO ~FadeToColor([20.0],0)
Wait(3)
FadeFromColor([20.0],0)
~ GOTO 35
  IF ~  ProficiencyLT(Protagonist,DAGGER,4)
Global("Specialist","GLOBAL",1)
!Global("Specialist","GLOBAL",4)
~ THEN REPLY #67004 /* ~"Tak, chciałbym nauczyć się władać tą bronią."~ */ DO ~IncrementProficiency(Protagonist,DAGGER,1)
IncrementExtraProficiency(Protagonist,-1)
~ GOTO 32
  IF ~  ProficiencyGT(Protagonist,DAGGER,3)
Global("Specialist","GLOBAL",1)
!Global("Specialist","GLOBAL",4)
~ THEN REPLY #67005 /* ~"Tak, chciałbym nauczyć się władać tą bronią."~ */ DO ~FadeToColor([20.0],0)
Wait(3)
FadeFromColor([20.0],0)
~ GOTO 34
  IF ~  ProficiencyLT(Protagonist,DAGGER,4)
Global("Specialist","GLOBAL",4)
~ THEN REPLY #67006 /* ~"Tak, chciałbym nauczyć się władać tą bronią."~ */ DO ~IncrementProficiency(Protagonist,DAGGER,1)
IncrementExtraProficiency(Protagonist,-1)
~ GOTO 32
  IF ~  ProficiencyGT(Protagonist,DAGGER,3)
Global("Specialist","GLOBAL",4)
~ THEN REPLY #67007 /* ~"Tak, chciałbym nauczyć się władać tą bronią."~ */ DO ~FadeToColor([20.0],0)
Wait(3)
FadeFromColor([20.0],0)
~ GOTO 34
  IF ~~ THEN REPLY #67029 /* ~"Nie... jaką jeszcze inną bronią możesz nauczyć mnie władać?"~ */ GOTO 26
  IF ~~ THEN REPLY #67032 /* ~"Nie... jaką jeszcze inną bronią możesz nauczyć mnie władać?"~ */ EXIT
END

IF ~~ THEN BEGIN 29 // from: 26.2
  SAY #66971 /* ~"Chcesz nauczyć się staromodnego bicia pałką, co?"~ */
  IF ~  ProficiencyLT(Protagonist,CLUB,3)
!Global("Specialist","GLOBAL",1)
!Global("Specialist","GLOBAL",4)
~ THEN REPLY #67008 /* ~"Tak, chciałbym nauczyć się władać tą bronią."~ */ DO ~IncrementProficiency(Protagonist,CLUB,1)
IncrementExtraProficiency(Protagonist,-1)
~ GOTO 32
  IF ~  ProficiencyGT(Protagonist,CLUB,2)
!Global("Specialist","GLOBAL",1)
!Global("Specialist","GLOBAL",4)
~ THEN REPLY #67009 /* ~"Tak, chciałbym nauczyć się władać tą bronią."~ */ DO ~FadeToColor([20.0],0)
Wait(3)
FadeFromColor([20.0],0)
~ GOTO 35
  IF ~  ProficiencyLT(Protagonist,CLUB,4)
Global("Specialist","GLOBAL",1)
!Global("Specialist","GLOBAL",4)
~ THEN REPLY #67010 /* ~"Tak, chciałbym nauczyć się władać tą bronią."~ */ DO ~IncrementProficiency(Protagonist,CLUB,1)
IncrementExtraProficiency(Protagonist,-1)
~ GOTO 32
  IF ~  ProficiencyGT(Protagonist,CLUB,3)
Global("Specialist","GLOBAL",1)
!Global("Specialist","GLOBAL",4)
~ THEN REPLY #67011 /* ~"Tak, chciałbym nauczyć się władać tą bronią."~ */ DO ~FadeToColor([20.0],0)
Wait(3)
FadeFromColor([20.0],0)
~ GOTO 34
  IF ~  ProficiencyLT(Protagonist,CLUB,4)
Global("Specialist","GLOBAL",4)
~ THEN REPLY #67012 /* ~"Tak, chciałbym nauczyć się władać tą bronią."~ */ DO ~IncrementProficiency(Protagonist,CLUB,1)
IncrementExtraProficiency(Protagonist,-1)
~ GOTO 32
  IF ~  ProficiencyGT(Protagonist,CLUB,3)
Global("Specialist","GLOBAL",4)
~ THEN REPLY #67013 /* ~"Tak, chciałbym nauczyć się władać tą bronią."~ */ DO ~FadeToColor([20.0],0)
Wait(3)
FadeFromColor([20.0],0)
~ GOTO 34
  IF ~~ THEN REPLY #67028 /* ~"Nie... jaką jeszcze inną bronią możesz nauczyć mnie władać?"~ */ GOTO 26
  IF ~~ THEN REPLY #67033 /* ~"Nie... jaką jeszcze inną bronią możesz nauczyć mnie władać?"~ */ EXIT
END

IF ~~ THEN BEGIN 30 // from: 26.3
  SAY #66972 /* ~Pogwizduje. "Wyglądasz mi na kogoś, kto może nieźle przyłożyć, co? Chcesz nauczyć się walczyć toporem?"~ */
  IF ~  ProficiencyLT(Protagonist,AXE,3)
!Global("Specialist","GLOBAL",1)
!Global("Specialist","GLOBAL",4)
~ THEN REPLY #67014 /* ~"Tak, chciałbym nauczyć się władać tą bronią."~ */ DO ~IncrementProficiency(Protagonist,AXE,1)
IncrementExtraProficiency(Protagonist,-1)
~ GOTO 32
  IF ~  ProficiencyGT(Protagonist,AXE,2)
!Global("Specialist","GLOBAL",1)
!Global("Specialist","GLOBAL",4)
~ THEN REPLY #67015 /* ~"Tak, chciałbym nauczyć się władać tą bronią."~ */ DO ~FadeToColor([20.0],0)
Wait(3)
FadeFromColor([20.0],0)
~ GOTO 35
  IF ~  ProficiencyLT(Protagonist,AXE,4)
Global("Specialist","GLOBAL",1)
!Global("Specialist","GLOBAL",4)
~ THEN REPLY #67016 /* ~"Tak, chciałbym nauczyć się władać tą bronią."~ */ DO ~IncrementProficiency(Protagonist,AXE,1)
IncrementExtraProficiency(Protagonist,-1)
~ GOTO 33
  IF ~  ProficiencyGT(Protagonist,AXE,3)
Global("Specialist","GLOBAL",1)
!Global("Specialist","GLOBAL",4)
~ THEN REPLY #67017 /* ~"Tak, chciałbym nauczyć się władać tą bronią."~ */ DO ~FadeToColor([20.0],0)
Wait(3)
FadeFromColor([20.0],0)
~ GOTO 34
  IF ~  ProficiencyLT(Protagonist,AXE,4)
Global("Specialist","GLOBAL",4)
~ THEN REPLY #67018 /* ~"Tak, chciałbym nauczyć się władać tą bronią."~ */ DO ~IncrementProficiency(Protagonist,AXE,1)
IncrementExtraProficiency(Protagonist,-1)
~ GOTO 32
  IF ~  ProficiencyGT(Protagonist,AXE,3)
!Global("Specialist","GLOBAL",1)
~ THEN REPLY #67019 /* ~"Tak, chciałbym nauczyć się władać tą bronią."~ */ DO ~FadeToColor([20.0],0)
Wait(3)
FadeFromColor([20.0],0)
~ GOTO 34
  IF ~~ THEN REPLY #67027 /* ~"Nie... jaką jeszcze inną bronią możesz nauczyć mnie władać?"~ */ GOTO 26
  IF ~~ THEN REPLY #67034 /* ~"Nie... jaką jeszcze inną bronią możesz nauczyć mnie władać?"~ */ EXIT
END

IF ~~ THEN BEGIN 31 // from: 26.4
  SAY #66973 /* ~"Broń dżentelmena - pod warunkiem, że ten dżentelmen ma mięśnie ze stali. Chcesz nauczyć się walczyć młotem?"~ */
  IF ~  ProficiencyLT(Protagonist,HAMMER,3)
!Global("Specialist","GLOBAL",1)
!Global("Specialist","GLOBAL",4)
~ THEN REPLY #67020 /* ~"Tak, chciałbym nauczyć się władać tą bronią."~ */ DO ~IncrementProficiency(Protagonist,HAMMER,1)
IncrementExtraProficiency(Protagonist,-1)
~ GOTO 32
  IF ~  ProficiencyGT(Protagonist,HAMMER,2)
!Global("Specialist","GLOBAL",1)
!Global("Specialist","GLOBAL",4)
~ THEN REPLY #67021 /* ~"Tak, chciałbym nauczyć się władać tą bronią."~ */ DO ~FadeToColor([20.0],0)
Wait(3)
FadeFromColor([20.0],0)
~ GOTO 35
  IF ~  ProficiencyLT(Protagonist,HAMMER,4)
Global("Specialist","GLOBAL",1)
!Global("Specialist","GLOBAL",4)
~ THEN REPLY #67022 /* ~"Tak, chciałbym nauczyć się władać tą bronią."~ */ DO ~IncrementProficiency(Protagonist,HAMMER,1)
IncrementExtraProficiency(Protagonist,-1)
~ GOTO 32
  IF ~  ProficiencyGT(Protagonist,HAMMER,3)
Global("Specialist","GLOBAL",1)
!Global("Specialist","GLOBAL",4)
~ THEN REPLY #67023 /* ~"Tak, chciałbym nauczyć się władać tą bronią."~ */ DO ~FadeToColor([20.0],0)
Wait(3)
FadeFromColor([20.0],0)
~ GOTO 34
  IF ~  ProficiencyLT(Protagonist,HAMMER,4)
Global("Specialist","GLOBAL",4)
~ THEN REPLY #67024 /* ~"Tak, chciałbym nauczyć się władać tą bronią."~ */ DO ~IncrementProficiency(Protagonist,HAMMER,1)
IncrementExtraProficiency(Protagonist,-1)
~ GOTO 32
  IF ~  ProficiencyGT(Protagonist,HAMMER,3)
Global("Specialist","GLOBAL",4)
~ THEN REPLY #67025 /* ~"Tak, chciałbym nauczyć się władać tą bronią."~ */ DO ~FadeToColor([20.0],0)
Wait(3)
FadeFromColor([20.0],0)
~ GOTO 34
  IF ~~ THEN REPLY #67026 /* ~"Nie... jaką jeszcze inną bronią możesz nauczyć mnie władać?"~ */ GOTO 26
  IF ~~ THEN REPLY #67035 /* ~"Nie... jaką jeszcze inną bronią możesz nauczyć mnie władać?"~ */ EXIT
END

IF ~~ THEN BEGIN 32 // from: 27.0 27.2 27.4 28.0 28.2 28.4 29.0 29.2 29.4 30.0 30.4 31.0 31.2 31.4
  SAY #66974 /* ~"Więc, w porządku! Zaczynajmy!"~ */
  IF ~~ THEN REPLY #67037 /* ~"Gdy tylko będziesz gotowy..."~ */ DO ~FadeToColor([20.0],0)
Wait(3)
FadeFromColor([20.0],0)
~ GOTO 33
END

IF ~~ THEN BEGIN 33 // from: 30.2 32.0
  SAY #66975 /* ~Ćwiczysz z nim walkę. Po jakimś czasie Marquez ociera pot z czoła. "Piekielnie dobry jesteś. Chcesz czegoś jeszcze?"~ */
  IF ~  ExtraProficiencyGT(Protagonist,0)
~ THEN REPLY #67038 /* ~"Dziękuję. Jeśli mógłbyś mnie nauczyć, to chciałbym nauczyć się władać inną bronią."~ */ GOTO 26
  IF ~  ExtraProficiency(Protagonist,0)
~ THEN REPLY #67039 /* ~"Dziękuję. Jeśli mógłbyś mnie nauczyć, to chciałbym nauczyć się władać inną bronią."~ */ GOTO 25
  IF ~~ THEN REPLY #67040 /* ~"Dziękuję. To wszystko co chciałem dzisiaj wiedzieć."~ */ EXIT
END

IF ~~ THEN BEGIN 34 // from: 27.3 27.5 28.3 28.5 29.3 29.5 30.3 30.5 31.3 31.5
  SAY #66976 /* ~Przygląda się co potrafisz i mówi, "Nauczyłeś się o sposobie walki tyle ile potrafiłem cię nauczyć. Jeżeli chcesz nauczyć się więcej, znajdź drogę do Sigil i porozmawiaj z Korurem, w Niższej Dzielnicy. Jest mistrzem niemal we wszystkim."~ */
  IF ~  ExtraProficiency(Protagonist,0)
~ THEN REPLY #67041 /* ~"Możesz mnie nauczyć władać inną bronią?"~ */ GOTO 25
  IF ~  ExtraProficiencyGT(Protagonist,0)
~ THEN REPLY #67042 /* ~"Możesz mnie nauczyć władać inną bronią?"~ */ GOTO 26
  IF ~  ExtraProficiencyGT(Protagonist,0)
Proficiency(Protagonist,FIST,4)
Proficiency(Protagonist,DAGGER,4)
Proficiency(Protagonist,HAMMER,4)
Proficiency(Protagonist,AXE,4)
Proficiency(Protagonist,CLUB,4)
~ THEN REPLY #67043 /* ~"Możesz mnie nauczyć władać inną bronią?"~ */ GOTO 24
  IF ~~ THEN REPLY #67044 /* ~"Więc, w porządku. Dziękuję. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 35 // from: 27.1 28.1 29.1 30.1 31.1
  SAY #66977 /* ~Przygląda się co potrafisz i mówi, "To wszystko czego mogłeś się nauczyć. Jeśli nie poświęcisz się nauce o broni, jeśli nie wyspecjalizujesz się w ścieżce wojownika, nie osiągniesz żadnych postępów studiując naukę o broni. Musisz się *wyspecjalizować*."~ */
  IF ~  ExtraProficiency(Protagonist,0)
~ THEN REPLY #67045 /* ~"Możesz mnie nauczyć władać inną bronią?"~ */ JOURNAL #68288 /* ~Powiedziano mi, że nie mogę pogłębić swojej znajomości oręża, dopóki nie wyszkolę się na wojownika. Tylko pełne poświęcenie się sztukom władania orężem, bez marnowania czasu na zajęcia złodziejskie czy czarodziejskie pozwoli mi na podwyższenie moich rycerskich kwalifikacji.~ */ GOTO 25
  IF ~  ExtraProficiencyGT(Protagonist,0)
~ THEN REPLY #67046 /* ~"Możesz mnie nauczyć władać inną bronią?"~ */ JOURNAL #68288 /* ~Powiedziano mi, że nie mogę pogłębić swojej znajomości oręża, dopóki nie wyszkolę się na wojownika. Tylko pełne poświęcenie się sztukom władania orężem, bez marnowania czasu na zajęcia złodziejskie czy czarodziejskie pozwoli mi na podwyższenie moich rycerskich kwalifikacji.~ */ GOTO 26
  IF ~~ THEN REPLY #67047 /* ~"Więc, w porządku. Dziękuję. Żegnaj."~ */ JOURNAL #68288 /* ~Powiedziano mi, że nie mogę pogłębić swojej znajomości oręża, dopóki nie wyszkolę się na wojownika. Tylko pełne poświęcenie się sztukom władania orężem, bez marnowania czasu na zajęcia złodziejskie czy czarodziejskie pozwoli mi na podwyższenie moich rycerskich kwalifikacji.~ */ EXIT
END
