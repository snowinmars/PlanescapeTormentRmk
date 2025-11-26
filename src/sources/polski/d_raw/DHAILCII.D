// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DHAILCII.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\pl_PL\dialog.tlk
// dialogF  : (none)

BEGIN ~DHAILCII~
//////////////////////////////////////////////////
// WARNING: this file contains non-trivial WEIGHTs
//////////////////////////////////////////////////

IF WEIGHT #0 ~  GlobalGT("Kill_Githzerai_KAPUTZ","GLOBAL",0)
~ THEN BEGIN 0 // from:
  SAY #2919 /* ~Ten wojownik githzerai obserwuje bacznie jak podchodzisz. Gdy się zbliżasz wyciąga miecz i atakuje!~ */
  IF ~~ THEN REPLY #45139 /* ~Walcz.~ */ DO ~Enemy()
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
~ EXIT
  IF ~~ THEN REPLY #45140 /* ~Uciekaj.~ */ DO ~Enemy()
Attack(Protagonist)
~ EXIT
END

IF WEIGHT #2 /* Triggers after states #: 10 even though they appear after this state */
~  !NearbyDialog("DDakkon")
NumTimesTalkedTo(0)
GlobalGT("Vristigor","GLOBAL",1)
~ THEN BEGIN 1 // from:
  SAY #45141 /* ~Mężczyzna ma żółty odcień skóry i wymizerowane oblicze. Jego ciało pokryte jest bliznami i tatuażami, na piersi nosi długie ostrze. Jego oczy są niczym dwa małe, czarne kamyki. Kłania się gdy podchodzisz. "Witaj, dzierżący-miecz. *Wiem* to, co chciałbyś wiedzieć. Pytaj o co chcesz."~ */
  IF ~~ THEN REPLY #45142 /* ~"Kim jesteś?"~ */ GOTO 18
  IF ~~ THEN REPLY #45143 /* ~"Czy możesz się do mnie przyłączyć?"~ */ GOTO 2
  IF ~~ THEN REPLY #45144 /* ~"Skąd masz te blizny?"~ */ GOTO 4
  IF ~~ THEN REPLY #45145 /* ~"Skąd masz te tatuaże?"~ */ GOTO 5
  IF ~  Global("Know_Githyanki","GLOBAL",0)
Global("Met_Githyanki","GLOBAL",1)
~ THEN REPLY #45146 /* ~"Czym różnią się githzerai od githyanki?"~ */ DO ~SetGlobal("Know_Githyanki","GLOBAL",1)
~ GOTO 6
  IF ~  Global("Know_Githyanki","GLOBAL",1)
~ THEN REPLY #45147 /* ~"Czym różnią się githzerai od githyanki?"~ */ GOTO 6
  IF ~  Global("Know_Githzerai_Speak","GLOBAL",0)
~ THEN REPLY #45148 /* ~"Czy nauczysz mnie swego języka?"~ */ GOTO 7
  IF ~~ THEN REPLY #45149 /* ~"Nie chcę niczego. Dzięki, żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.1 3.1 9.0 21.1 22.1
  SAY #45150 /* ~"Nie mogę. Mam obowiązki wobec moich ludzi."~ */
  IF ~~ THEN REPLY #45151 /* ~"Co to za obowiązki?"~ */ GOTO 47
  IF ~~ THEN REPLY #45152 /* ~"W takim razie chcę ci zadać jeszcze parę pytań."~ */ GOTO 3
END

IF ~~ THEN BEGIN 3 // from: 2.1 6.1 7.0 8.0 12.0 13.1 14.0 14.1 15.2 16.1 17.1 18.3 19.0 19.1 20.0 23.0 24.0 26.0 40.2 47.0
  SAY #45153 /* ~"Pytaj, lecz nie zachowuj się jak tonąca Ach'ali - niech twoje pytania będą proste i konkretne."~ */
  IF ~~ THEN REPLY #45154 /* ~"Kim jesteś?"~ */ GOTO 18
  IF ~~ THEN REPLY #45155 /* ~"Czy przyłączysz się do mnie?"~ */ GOTO 2
  IF ~~ THEN REPLY #45156 /* ~"Skąd masz te blizny?"~ */ GOTO 4
  IF ~~ THEN REPLY #45157 /* ~"Skąd masz te tatuaże?"~ */ GOTO 5
  IF ~  Global("Know_Githyanki","GLOBAL",0)
Global("Met_Githyanki","GLOBAL",1)
~ THEN REPLY #45158 /* ~"Czym różnią się githzerai od githyanki?"~ */ DO ~SetGlobal("Know_Githyanki","GLOBAL",1)
~ GOTO 6
  IF ~  Global("Know_Githyanki","GLOBAL",1)
~ THEN REPLY #45159 /* ~"Czym różnią się githzerai od githyanki?"~ */ GOTO 6
  IF ~  Global("Know_Githzerai_Speak","GLOBAL",0)
~ THEN REPLY #45160 /* ~"Czy nauczysz mnie swego języka?"~ */ GOTO 7
  IF ~~ THEN REPLY #45161 /* ~"Nie chcę niczego. Dzięki. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 1.2 3.2 9.1 21.2 22.2 25.1
  SAY #45162 /* ~W pełnym czci geście kładzie dłonie na twarzy a potem na piersi. "Blizny, które szpecą mą twarz, to pamiątki po przygodach w salach Ilsensin. Moja grupa została wycięta przez tchórzliwych *illithidów*. Blizna na mojej piersi pochodzi od ostrza githyańskiego bratobójcy." Wskazuje twoje blizny. "Opowiedz mi ich historię."~ */
  IF ~~ THEN REPLY #45163 /* ~"Nie pamiętam skąd pochodzi większość z nich."~ */ GOTO 11
  IF ~~ THEN REPLY #45164 /* ~"Pochodzą z tak wielu bitew, że zbyt długo trzeba by opowiadać."~ */ GOTO 19
  IF ~  GlobalLT("Hail_Mad","GLOBAL",3)
~ THEN REPLY #45165 /* ~"To tylko blizny. Mam parę innych pytań..."~ */ DO ~IncrementGlobal("Hail_Mad","GLOBAL",1)
~ GOTO 9
  IF ~  Global("Hail_Mad","GLOBAL",3)
~ THEN REPLY #45166 /* ~"To tylko blizny. Mam parę innych pytań..."~ */ DO ~IncrementGlobal("Hail_Mad","GLOBAL",1)
~ GOTO 10
END

IF ~~ THEN BEGIN 5 // from: 1.3 3.3 9.2 21.3 22.3 25.2
  SAY #45167 /* ~"Ich historia, to historia mojego rodu, dzięki nim mam ich siłę i umysł. Ten, który zawdzięczam Arja'rokowi z Wyspy Pieczęci, opowiada o mym krewnym, Dżilikaju, który pochował swych wrogów w murach Shrak'at'lor. Ten tutaj to robota Upadłego, dabusa-który-chodzi. Opowiada o bitwie, jaką Ro'jhi i ja stoczyliśmy z siedmioma slaadi w Sferach Limbo, zanim ósmy z nich uciszył go na zawsze." Pokazuje na twoje tatuaże. "Opowiedz mi ich historię."~ */
  IF ~~ THEN REPLY #45168 /* ~"Mówią o tym, co mam nadzieję osiągnąć."~ */ GOTO 13
  IF ~~ THEN REPLY #45169 /* ~"Mówią o przeszkodach, które napotkałem, oraz historię mojej przeszłości, abym jej nie zapomniał."~ */ GOTO 14
  IF ~  GlobalLT("Hail_Mad","GLOBAL",3)
~ THEN REPLY #45170 /* ~"To tylko tatuaże. Powiedz mi kim jest Upadły."~ */ DO ~IncrementGlobal("Hail_Mad","GLOBAL",1)
~ GOTO 15
  IF ~  Global("Hail_Mad","GLOBAL",3)
~ THEN REPLY #45171 /* ~"To tylko tatuaże. Powiedz mi kim jest Upadły."~ */ DO ~IncrementGlobal("Hail_Mad","GLOBAL",1)
~ GOTO 10
  IF ~  GlobalLT("Hail_Mad","GLOBAL",3)
~ THEN REPLY #45172 /* ~"To tylko tatuaże. Mam jeszcze kilka pytań..."~ */ DO ~IncrementGlobal("Hail_Mad","GLOBAL",1)
~ GOTO 9
  IF ~  Global("Hail_Mad","GLOBAL",3)
~ THEN REPLY #45173 /* ~"To tylko tatuaże. Mam jeszcze kilka pytań..."~ */ DO ~IncrementGlobal("Hail_Mad","GLOBAL",1)
~ GOTO 10
END

IF ~~ THEN BEGIN 6 // from: 1.4 1.5 3.4 3.5 9.3 9.4 18.0 18.1 21.4 21.5 22.4 22.5 25.3 25.4
  SAY #45174 /* ~Jego oczy zwężają się, pluje na ziemię. "To banda kłamliwych, złodziejskich, zdradliwych psów. Nie można im ufać za żadne skarby. Jeśli któregoś spotkasz, pamiętaj historię serca Selqanta i oka Vilquara, i pamiętaj, że githyanki są po trzykroć gorsi."~ */
  IF ~~ THEN REPLY #45175 /* ~"Co to za historia?"~ */ GOTO 8
  IF ~~ THEN REPLY #45176 /* ~"Dzięki. Mam jeszcze kilka pytań..."~ */ GOTO 3
  IF ~~ THEN REPLY #45177 /* ~"Dzięki. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 7 // from: 1.6 3.6 9.5 18.2 21.6 22.6 25.5
  SAY #45178 /* ~Lekko się kłania. "Gdyby nie obowiązki wobec mych ludzi, zrobiłbym to z przyjemnością. Ale, niczym gość przy stole Toryga, mam pełny półmisek. Nie mogę. Spróbuj spytać kogoś innego..."~ */
  IF ~~ THEN REPLY #45179 /* ~"W każdym razie, dziękuję. Mam jeszcze kilka pytań..."~ */ GOTO 3
  IF ~~ THEN REPLY #45180 /* ~"W każdym razie dziękuję. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 8 // from: 6.0
  SAY #45181 /* ~"Selqant i Vilquar znani byli z okrucieństwa i zdradliwości - i pochodzili z ludu githzerai. Ich wyczyny bledną, gdy porównać je z tym, co robią githyanki, najbardziej bezwzględny rodzaj plugastwa, jaki przepłynął przez Srebrne Morze."~ */
  IF ~~ THEN REPLY #45182 /* ~"Mam jeszcze kilka pytań..."~ */ GOTO 3
  IF ~~ THEN REPLY #45183 /* ~"Dziękuję, że poświęciłeś mi trochę czasu. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 9 // from: 4.2 5.4 11.0
  SAY #45184 /* ~Zatrzymuje się na chwilę, i masz uczucie, że nie podoba mu się twoja odpowiedź. "Na tonącą Ach'ali, zadawaj swoje pytania."~ */
  IF ~~ THEN REPLY #45185 /* ~"Czy chcesz się do mnie przyłączyć?"~ */ GOTO 2
  IF ~~ THEN REPLY #45186 /* ~"Skąd masz te blizny?"~ */ GOTO 4
  IF ~~ THEN REPLY #45187 /* ~"Skąd masz te tatuaże?"~ */ GOTO 5
  IF ~  Global("Know_Githyanki","GLOBAL",0)
Global("Met_Githyanki","GLOBAL",1)
~ THEN REPLY #45188 /* ~"Czym różnią się githzerai od githyanki?"~ */ DO ~SetGlobal("Know_Githyanki","GLOBAL",1)
~ GOTO 6
  IF ~  Global("Know_Githyanki","GLOBAL",1)
~ THEN REPLY #45191 /* ~"Czym różnią się githzerai od githyanki?"~ */ GOTO 6
  IF ~  Global("Know_Githzerai_Speak","GLOBAL",0)
~ THEN REPLY #45192 /* ~"Czy nauczysz mnie swego języka?"~ */ GOTO 7
  IF ~~ THEN REPLY #45194 /* ~"Nie chcę niczego. Dzięki. Żegnaj."~ */ EXIT
END

IF WEIGHT #1 ~  Global("Hail_Mad","GLOBAL",4)
~ THEN BEGIN 10 // from: 4.3 5.3 5.5 11.1
  SAY #45197 /* ~Kłania ci się, ze złością w oczach: "Mówiąc to nie przysparzasz sobie honoru. Ja nie przysparzam go sobie, słuchając cię. Nie będę z tobą rozmawiał." Na chwilę zamyka oczy, a potem patrzy gdzieś obok ciebie.~ */
  IF ~~ THEN REPLY #45198 /* ~"Chcę ci tylko zadać parę pytań..."~ */ EXIT
  IF ~~ THEN REPLY #45199 /* ~"W takim razie, żegnaj."~ */ EXIT
  IF ~~ THEN REPLY #45200 /* ~Uderz go.~ */ DO ~ForceAttack(Protagonist,Myself)
Enemy()
Attack(Protagonist)
~ EXIT
END

IF ~~ THEN BEGIN 11 // from: 4.0
  SAY #45201 /* ~Jego oblicze się zmienia - nie wiesz, czy to z zakłopotania, czy z pogardy. "Jak blizny mogą nie mieć historii?"~ */
  IF ~  GlobalLT("Hail_Mad","GLOBAL",3)
~ THEN REPLY #45202 /* ~"To tylko blizny. Wszyscy je mają."~ */ DO ~IncrementGlobal("Hail_Mad","GLOBAL",1)
~ GOTO 9
  IF ~  Global("Hail_Mad","GLOBAL",3)
~ THEN REPLY #45203 /* ~"To tylko blizny. Wszyscy je mają."~ */ DO ~IncrementGlobal("Hail_Mad","GLOBAL",1)
~ GOTO 10
  IF ~~ THEN REPLY #45204 /* ~"Nie pamiętam ich przeszłości, tak jak nie pamiętam swojej."~ */ GOTO 12
END

IF ~~ THEN BEGIN 12 // from: 11.2
  SAY #45205 /* ~Na chwilę przestaje mówić, znaczenie twych słów powoli do niego dociera. "Smutne to. Żałuję, że straciłeś pamięć i swą historię."~ */
  IF ~~ THEN REPLY #45206 /* ~"Dzięki. Mam jeszcze parę pytań..."~ */ GOTO 3
  IF ~~ THEN REPLY #45207 /* ~"Dzięki. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 13 // from: 5.0
  SAY #45208 /* ~Czeka, a potem zamyka oczy i ponownie się kłania. "Twe tatuaże pozwalają wejrzeć w przyszłość i na niej się skupić. Jest w nich cała mądrość Anarcha. Twe opowieści przynoszą ci chlubę."~ */
  IF ~~ THEN REPLY #45209 /* ~"Dzięki. Wspomniałeś Upadłego?"~ */ GOTO 15
  IF ~~ THEN REPLY #45210 /* ~"Dzięki. Mam jeszcze inne pytania..."~ */ GOTO 3
  IF ~~ THEN REPLY #45211 /* ~"Dzięki. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 14 // from: 5.1
  SAY #45212 /* ~Zamyka oczy i kłania się. "Twe opowieści przynoszą ci chlubę, dzierżący-miecz."~ */
  IF ~~ THEN REPLY #45213 /* ~"Tak jak twoje. Mam jeszcze parę pytań..."~ */ DO ~IncrementGlobal("Hail_Mad","GLOBAL",-1)
~ GOTO 3
  IF ~~ THEN REPLY #45214 /* ~"Mam jeszcze kilka pytań..."~ */ GOTO 3
  IF ~~ THEN REPLY #45215 /* ~"Tak jak twoje. Żegnaj."~ */ DO ~IncrementGlobal("Hail_Mad","GLOBAL",-1)
~ EXIT
  IF ~~ THEN REPLY #45216 /* ~"Dzięki. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 15 // from: 5.2 13.0
  SAY #45217 /* ~""Chodzący dabus jest mistrzem w swoim rzemiośle. Niektóre tatuaże opowiadają historie. Inne wyjawiają duchową prawdę. Tatuaże Upadłego obdarzają umysł i ciało siłą bazującą na zawartej w nich treści.""~ */
  IF ~  Global("Fell","GLOBAL",0)
~ THEN REPLY #45218 /* ~"Gdzie znajdę tego Upadłego?"~ */ GOTO 16
  IF ~~ THEN REPLY #45219 /* ~"Jakiego rodzaju siłę dają jego tatuaże?"~ */ GOTO 17
  IF ~~ THEN REPLY #45220 /* ~"Dzięki. Mam jeszcze parę pytań..."~ */ GOTO 3
  IF ~~ THEN REPLY #45221 /* ~"Dzięki. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 16 // from: 15.0 17.0 40.0
  SAY #45222 /* ~"Znajdziesz go w Ulu, w północnej części południowo-wschodniego regionu. Nie dają tam jednak dobrych wskazówek - tak jakbyś słuchał szalonego Anarcha, który nie *zna* nawet sam siebie."~ */
  IF ~~ THEN REPLY #45223 /* ~"Jakiego rodzaju siłę mogą dać jego tatuaże?"~ */ GOTO 17
  IF ~~ THEN REPLY #45224 /* ~"Mam jeszcze kilka pytań..."~ */ GOTO 3
  IF ~~ THEN REPLY #45225 /* ~"Dzięki. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 17 // from: 15.1 16.0 40.1
  SAY #45226 /* ~"Tatuaż Ro'jhiego, który skrócił życie siedmiu slaadi, daje mi siłę, gdy muszę stawić czoło czemuś przytłaczającemu. Im więcej masz doświadczenia, tym więcej siły otrzymujesz: opowiedz Upadłemu swe historie, a gdy tylko przeniesie ich obraz na ciało, dodadzą ci sił."~ */
  IF ~~ THEN REPLY #45227 /* ~"Gdzie mogę go znaleźć?"~ */ GOTO 16
  IF ~~ THEN REPLY #45228 /* ~"Dzięki. Mam jeszcze parę pytań..."~ */ GOTO 3
  IF ~~ THEN REPLY #45229 /* ~"Dzięki. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 18 // from: 1.0 3.0 21.0 22.0 25.0
  SAY #45230 /* ~Kłania się. "Jestem Hailcii'n, wojownik githzerai. Jestem tu, by zebrać zapasy. Odkryłem, że to miasto jest jak Klejnot Try'ig'ora - często chwalone, ale naprawdę bez wartości."~ */
  IF ~  Global("Know_Githyanki","GLOBAL",0)
Global("Met_Githyanki","GLOBAL",1)
~ THEN REPLY #45231 /* ~"Czym różnią się githzerai od githyanki?"~ */ DO ~SetGlobal("Know_Githyanki","GLOBAL",1)
~ GOTO 6
  IF ~  Global("Know_Githyanki","GLOBAL",1)
~ THEN REPLY #45232 /* ~"Czym różnią się githzerai od githyanki?"~ */ GOTO 6
  IF ~  Global("Know_Githzerai_Speak","GLOBAL",0)
~ THEN REPLY #45233 /* ~"Czy nauczysz mnie swego języka?"~ */ GOTO 7
  IF ~~ THEN REPLY #45234 /* ~"Mam jeszcze kilka pytań..."~ */ GOTO 3
  IF ~~ THEN REPLY #45235 /* ~"Dzięki. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 19 // from: 4.1
  SAY #45236 /* ~Kłania się. "Twe męstwo przynosi ci chlubę, dzierżący-miecz."~ */
  IF ~~ THEN REPLY #45237 /* ~"Tak samo jak tobie. Mam jeszcze kilka pytań..."~ */ DO ~IncrementGlobal("Hail_Mad","GLOBAL",-1)
~ GOTO 3
  IF ~~ THEN REPLY #45238 /* ~"Mam jeszcze kilka pytań..."~ */ GOTO 3
  IF ~~ THEN REPLY #45239 /* ~"Tak samo jak tobie. Żegnaj."~ */ DO ~IncrementGlobal("Hail_Mad","GLOBAL",-1)
~ EXIT
  IF ~~ THEN REPLY #45240 /* ~"Dzięki. Żegnaj."~ */ EXIT
END

IF WEIGHT #3 ~  !NearbyDialog("DDakkon")
NumTimesTalkedToGT(0)
GlobalGT("Vristigor","GLOBAL",1)
~ THEN BEGIN 20 // from:
  SAY #45241 /* ~Hailczin kłania się. "Witaj, dzierżący-miecz."~ */
  IF ~~ THEN REPLY #45242 /* ~"Witaj. Mam parę pytań..."~ */ GOTO 3
  IF ~~ THEN REPLY #45247 /* ~"Pozdrawiam i żegnam."~ */ EXIT
END

IF WEIGHT #5 /* Triggers after states #: 45 even though they appear after this state */
~  Global("Anazi_Help","GLOBAL",1)
!NearbyDialog("DDakkon")
NumTimesTalkedTo(0)
GlobalLT("Vristigor","GLOBAL",2)
~ THEN BEGIN 21 // from:
  SAY #45248 /* ~Mężczyzna ma żółty odcień skóry i wymizerowane oblicze. Jego ciało pokryte jest bliznami i tatuażami, na piersi nosi długie ostrze. Jego oczy są niczym dwa małe, czarne kamyki. Gdy podchodzisz, kłania się. "Witaj, dzierżący-miecz. *Wiem*, że pomagasz Ludowi. Pytaj o co chcesz."~ */
  IF ~~ THEN REPLY #45249 /* ~"Kim jesteś?"~ */ GOTO 18
  IF ~~ THEN REPLY #45250 /* ~"Czy przyłączysz się do mnie?"~ */ GOTO 2
  IF ~~ THEN REPLY #45251 /* ~"Skąd masz te blizny?"~ */ GOTO 4
  IF ~~ THEN REPLY #45252 /* ~"Skąd masz te tatuaże?"~ */ GOTO 5
  IF ~  Global("Know_Githyanki","GLOBAL",0)
Global("Met_Githyanki","GLOBAL",1)
~ THEN REPLY #45146 /* ~"Czym różnią się githzerai od githyanki?"~ */ DO ~SetGlobal("Know_Githyanki","GLOBAL",1)
~ GOTO 6
  IF ~  Global("Know_Githyanki","GLOBAL",1)
~ THEN REPLY #45147 /* ~"Czym różnią się githzerai od githyanki?"~ */ GOTO 6
  IF ~  Global("Know_Githzerai_Speak","GLOBAL",0)
~ THEN REPLY #45261 /* ~"Czy nauczysz mnie swego języka?"~ */ GOTO 7
  IF ~~ THEN REPLY #45253 /* ~"Nie chcę niczego. Dzięki, żegnaj."~ */ EXIT
END

IF WEIGHT #6 /* Triggers after states #: 45 even though they appear after this state */
~  GlobalGT("Githzerai","GLOBAL",4)
Global("Anazi_Help","GLOBAL",0)
!NearbyDialog("DDakkon")
NumTimesTalkedTo(0)
GlobalLT("Vristigor","GLOBAL",2)
~ THEN BEGIN 22 // from:
  SAY #45254 /* ~Mężczyzna ma żółty odcień skóry i wymizerowane oblicze. Jego ciało pokryte jest bliznami i tatuażami, na piersi nosi długie ostrze. Jego oczy są niczym dwa małe, czarne kamyki. Gdy podchodzisz, kłania się. "Witaj, dzierżący-miecz. *Wiem*, że pomagasz Ludowi. Pytaj o co chcesz."~ */
  IF ~~ THEN REPLY #45255 /* ~"Kim jesteś?"~ */ GOTO 18
  IF ~~ THEN REPLY #45256 /* ~"Czy przyłączysz się do mnie?"~ */ GOTO 2
  IF ~~ THEN REPLY #45257 /* ~"Skąd masz te blizny?"~ */ GOTO 4
  IF ~~ THEN REPLY #45258 /* ~"Skąd masz te tatuaże?"~ */ GOTO 5
  IF ~  Global("Know_Githyanki","GLOBAL",0)
Global("Met_Githyanki","GLOBAL",1)
~ THEN REPLY #45259 /* ~"Czym różnią się githzerai od githyanki?"~ */ DO ~SetGlobal("Know_Githyanki","GLOBAL",1)
~ GOTO 6
  IF ~  Global("Know_Githyanki","GLOBAL",1)
~ THEN REPLY #45260 /* ~"Czym różnią się githzerai od githyanki?"~ */ GOTO 6
  IF ~  Global("Know_Githzerai_Speak","GLOBAL",0)
~ THEN REPLY #45261 /* ~"Czy nauczysz mnie swego języka?"~ */ GOTO 7
  IF ~~ THEN REPLY #45262 /* ~"Nie chcę niczego. Dzięki, żegnaj."~ */ EXIT
END

IF WEIGHT #7 /* Triggers after states #: 45 even though they appear after this state */
~  Global("Anazi_Help","GLOBAL",1)
!NearbyDialog("DDakkon")
NumTimesTalkedToGT(0)
GlobalLT("Vristigor","GLOBAL",2)
~ THEN BEGIN 23 // from:
  SAY #45263 /* ~Hailczin kłania się. "Witaj, dzierżący-miecz."~ */
  IF ~~ THEN REPLY #45264 /* ~"Witaj. Mam kilka pytań..."~ */ GOTO 3
  IF ~~ THEN REPLY #45265 /* ~"Pozdrawiam i żegnam."~ */ EXIT
END

IF WEIGHT #8 /* Triggers after states #: 45 even though they appear after this state */
~  GlobalGT("Githzerai","GLOBAL",4)
Global("Anazi_Help","GLOBAL",0)
!NearbyDialog("DDakkon")
NumTimesTalkedToGT(0)
GlobalLT("Vristigor","GLOBAL",2)
~ THEN BEGIN 24 // from:
  SAY #45266 /* ~Hailczin kłania się. "Witaj, dzierżący-miecz."~ */
  IF ~~ THEN REPLY #45267 /* ~"Witaj. Mam kilka pytań..."~ */ GOTO 3
  IF ~~ THEN REPLY #45268 /* ~"Pozdrawiam i żegnam."~ */ EXIT
END

IF WEIGHT #9 /* Triggers after states #: 45 even though they appear after this state */
~  NumTimesTalkedTo(0)
!NearbyDialog("DDakkon")
GlobalLT("Vristigor","GLOBAL",2)
~ THEN BEGIN 25 // from:
  SAY #45269 /* ~Mężczyzna ma żółty odcień skóry i wymizerowane oblicze. Jego ciało pokryte jest bliznami i tatuażami, na piersi nosi długie ostrze. Jego oczy są niczym dwa małe, czarne kamyki. Obserwuje cię, gdy podchodzisz i czeka aż odezwiesz się pierwszy. "Nie *znam* cię... ale porozmawiam z tobą."~ */
  IF ~~ THEN REPLY #45270 /* ~"Kim jesteś?"~ */ GOTO 18
  IF ~~ THEN REPLY #45271 /* ~"Skąd masz te blizny?"~ */ GOTO 4
  IF ~~ THEN REPLY #45272 /* ~"Skąd masz te tatuaże?"~ */ GOTO 5
  IF ~  Global("Know_Githyanki","GLOBAL",0)
Global("Met_Githyanki","GLOBAL",1)
~ THEN REPLY #45273 /* ~"Czym różnią się githzerai od githyanki?"~ */ DO ~SetGlobal("Know_Githyanki","GLOBAL",1)
~ GOTO 6
  IF ~  Global("Know_Githyanki","GLOBAL",1)
~ THEN REPLY #45274 /* ~"Czym różnią się githzerai od githyanki?"~ */ GOTO 6
  IF ~  Global("Know_Githzerai_Speak","GLOBAL",0)
~ THEN REPLY #45275 /* ~"Czy nauczysz mnie swego języka?"~ */ GOTO 7
  IF ~~ THEN REPLY #45276 /* ~"Nie chcę niczego. Dzięki, żegnaj."~ */ EXIT
END

IF WEIGHT #10 /* Triggers after states #: 45 even though they appear after this state */
~  NumTimesTalkedToGT(0)
!NearbyDialog("DDakkon")
GlobalLT("Vristigor","GLOBAL",2)
~ THEN BEGIN 26 // from:
  SAY #45277 /* ~Hailcii'n spokojnie obserwuje jak podchodzisz, po czym lakonicznie rzuca: "Witaj, wędrowcze."~ */
  IF ~~ THEN REPLY #45278 /* ~"Witaj. Mam kilka pytań..."~ */ GOTO 3
  IF ~~ THEN REPLY #45279 /* ~"Pozdrawiam i żegnam."~ */ EXIT
END

IF WEIGHT #11 /* Triggers after states #: 45 even though they appear after this state */
~  NumTimesTalkedTo(0)
NearbyDialog("DDakkon")
~ THEN BEGIN 27 // from:
  SAY #45280 /* ~Mężczyzna ma żółty odcień skóry i wymizerowane oblicze. Jego ciało pokryte jest bliznami i tatuażami, na piersi nosi długie ostrze. Jego oczy są niczym dwa małe, czarne kamyki. Gdy podchodzisz, kłania się Dakkonowi. "Widzę cię, *zerthcie*."~ */
  IF ~~ THEN EXTERN ~DDAKKON~ 160
END

IF ~~ THEN BEGIN 28 // from:
  SAY #45281 /* ~"Jego słowa są mi *znane*, *zerthcie*. Ale jego czyny nie. Jego cień mówi o kimś, kto brał udział w walce i był lepszy od wszystkich, z którymi się potykał. Czyżby me oczy nie potrafiły dojrzeć prawdy?"~ */
  IF ~~ THEN EXTERN ~DDAKKON~ 161
END

IF ~~ THEN BEGIN 29 // from:
  SAY #45282 /* ~"Wysłucham go, *zerthcie*." Odwraca się przodem do ciebie i czeka na pytania. "Pytaj. Pytaj tak, jak sam chciałbyś być pytany."~ */
  IF ~~ THEN REPLY #45283 /* ~"Kim jesteś?"~ */ GOTO 31
  IF ~~ THEN REPLY #45284 /* ~"Skąd masz te blizny?"~ */ GOTO 32
  IF ~~ THEN REPLY #45285 /* ~"Skąd masz te tatuaże?"~ */ GOTO 37
  IF ~  Global("Know_Githyanki","GLOBAL",0)
Global("Met_Githyanki","GLOBAL",1)
~ THEN REPLY #45146 /* ~"Czym różnią się githzerai od githyanki?"~ */ DO ~SetGlobal("Know_Githyanki","GLOBAL",1)
~ GOTO 48
  IF ~  Global("Know_Githyanki","GLOBAL",1)
~ THEN REPLY #45147 /* ~"Czym różnią się githzerai od githyanki?"~ */ GOTO 48
  IF ~  Global("Know_Githzerai_Speak","GLOBAL",0)
~ THEN REPLY #45286 /* ~"Czy nauczysz mnie swego języka?"~ */ GOTO 43
  IF ~~ THEN REPLY #45287 /* ~"Nie chcę niczego. Dzięki, żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 30 // from: 31.0 34.0 35.0 36.0 38.1 39.1 41.1 42.1 43.0 45.0 46.0 48.1 49.0
  SAY #45288 /* ~"Pytaj więc."~ */
  IF ~~ THEN REPLY #45289 /* ~"Kim jesteś?"~ */ GOTO 31
  IF ~~ THEN REPLY #45290 /* ~"Skąd masz te blizny?"~ */ GOTO 32
  IF ~~ THEN REPLY #45291 /* ~"Skąd masz te tatuaże?"~ */ GOTO 37
  IF ~  Global("Know_Githyanki","GLOBAL",0)
Global("Met_Githyanki","GLOBAL",1)
~ THEN REPLY #45146 /* ~"Czym różnią się githzerai od githyanki?"~ */ DO ~SetGlobal("Know_Githyanki","GLOBAL",1)
~ GOTO 48
  IF ~  Global("Know_Githyanki","GLOBAL",1)
~ THEN REPLY #45147 /* ~"Czym różnią się githzerai od githyanki?"~ */ GOTO 48
  IF ~  Global("Know_Githzerai_Speak","GLOBAL",0)
~ THEN REPLY #45292 /* ~"Czy nauczysz mnie swego języka?"~ */ GOTO 43
  IF ~~ THEN REPLY #45293 /* ~"Nie chcę niczego. Dzięki, żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 31 // from: 29.0 30.0 44.0
  SAY #45294 /* ~Kłania się. "Jestem Hailcii'n, wojownik githzerai. Jestem tu, by zdobyć zapasy. Odkryłem, że to miasto jest jak Klejnot Try'ig'ora - często chwalone, ale naprawdę bez wartości. Jest tu zbyt duszno, a ludzie nie *znają* się nawzajem. Są jak puste skorupy."~ */
  IF ~~ THEN REPLY #45295 /* ~"Rozumiem. Mam jeszcze kilka pytąń."~ */ GOTO 30
  IF ~~ THEN REPLY #45296 /* ~"Rzeczywiście. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 32 // from: 29.1 30.1 44.1
  SAY #45297 /* ~W pełnym czci geście kładzie dłonie na twarzy a potem na piersi. "Blizny, które szpecą mą twarz, to pamiątki po przygodach w salach Ilsensin. Moja banda została wycięta przez tchórzliwych *illithidów*. Blizna na mojej piersi pochodzi od ostrza githyańskiego bratobójcy." Wskazuje twoje blizny. "Opowiedz mi ich historię."~ */
  IF ~~ THEN EXTERN ~DDAKKON~ 162
END

IF ~~ THEN BEGIN 33 // from:
  SAY #45298 /* ~Jego oblicze się zmienia - nie wiesz, czy to z zakłopotania, czy z pogardy. "Jak blizny mogą nie mieć historii?"~ */
  IF ~~ THEN REPLY #45299 /* ~"To tylko blizny. Wszyscy je mają."~ */ GOTO 34
  IF ~~ THEN REPLY #45300 /* ~"Nie pamiętam ich przeszłości, tak jak nie pamiętam swojej."~ */ GOTO 35
END

IF ~~ THEN BEGIN 34 // from: 33.0 37.2
  SAY #45301 /* ~Rzuca Dakkonowi spojrzenie, lecz nie wiesz, co ono oznacza. Masz wrażenie, że nie udało ci się przejść jakiegoś testu. "Czy jeszcze coś chcesz *wiedzieć*?"~ */
  IF ~~ THEN REPLY #45302 /* ~"Tak."~ */ GOTO 30
  IF ~~ THEN REPLY #45309 /* ~"Nie. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 35 // from: 33.1
  SAY #45311 /* ~Na chwilę przestaje mówić, znaczenie twych słów powoli do niego dociera. "Smutne to. Żałuję, że straciłeś pamięć i swą historię."~ */
  IF ~~ THEN REPLY #45312 /* ~"Dzięki. Mam jeszcze parę pytań..."~ */ GOTO 30
  IF ~~ THEN REPLY #45314 /* ~"Dzięki. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 36 // from:
  SAY #45315 /* ~Kłania się. "Twe męstwo przynosi ci chlubę, dzierżący-miecz."~ */
  IF ~~ THEN REPLY #45317 /* ~"Mam jeszcze kilka pytań..."~ */ GOTO 30
  IF ~~ THEN REPLY #45318 /* ~"Dzięki. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 37 // from: 29.2 30.2 44.2
  SAY #45319 /* ~"Ich historia, to historia mojego rodu, dzięki nim mam ich siłę i umysł. Ten, który zawdzięczam Arja'rokowi z Wyspy Pieczęci, opowiada o mym krewnym, Dżilikaju, który pochował swych wrogów w murach Shrak'at'lor. Ten tutaj to robota Upadłego, dabusa-który-chodzi. Opowiada o bitwie, jaką Ro'jhi i ja stoczyliśmy z siedmioma slaadi w Sferach Limbo, zanim ósmy z nich uciszył go na zawsze." Pokazuje na twoje tatuaże. "Opowiedz mi ich historię."~ */
  IF ~~ THEN REPLY #45320 /* ~"Mówią o tym, co mam nadzieję osiągnąć."~ */ GOTO 38
  IF ~~ THEN REPLY #45321 /* ~"Mówią o przeszkodach, które napotkałem, oraz historię mojej przeszłości, abym jej nie zapomniał."~ */ GOTO 39
  IF ~~ THEN REPLY #45322 /* ~"To tylko tatuaże. Mam parę innych pytań..."~ */ GOTO 34
END

IF ~~ THEN BEGIN 38 // from: 37.0
  SAY #45323 /* ~Czeka, a potem zamyka oczy i ponownie się kłania. "Twoje tatuaże pozwalają wejrzeć w przyszłość i na niej się skupić. Jest w nich cała mądrość Anarcha. Twe opowieści przynoszą ci chlubę."~ */
  IF ~~ THEN REPLY #45324 /* ~"Dzięki. Wspominałeś coś o Upadłym?"~ */ GOTO 40
  IF ~~ THEN REPLY #45325 /* ~"Dzięki. Mam parę innych pytań..."~ */ GOTO 30
  IF ~~ THEN REPLY #45326 /* ~"Dzięki. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 39 // from: 37.1
  SAY #45327 /* ~Zamyka oczy i kłania się. "Twe opowieści przynoszą ci chlubę, dzierżący-miecz."~ */
  IF ~~ THEN REPLY #45328 /* ~"Dzięki. Wspominałeś coś o Upadłym?"~ */ GOTO 40
  IF ~~ THEN REPLY #45329 /* ~"Mam jeszcze kilka pytań..."~ */ GOTO 30
  IF ~~ THEN REPLY #45330 /* ~"Dzięki. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 40 // from: 38.0 39.0
  SAY #45331 /* ~"Dabus-który-chodzi jest mistrzem rzemiosła. Niektóre tatuaże opowiadają historie. Inne, opisują stan ducha. Tatuaże, które robi Upadły, dają siłę i mądrość, jakie można znaleźć w historiach, które opowiadają."~ */
  IF ~  Global("Fell","GLOBAL",0)
~ THEN REPLY #45332 /* ~"Gdzie znajdę tego Upadłego?"~ */ GOTO 16
  IF ~~ THEN REPLY #45333 /* ~"Jakiego rodzaju siłę?"~ */ GOTO 17
  IF ~~ THEN REPLY #45334 /* ~"Dzięki. Mam kilka innych pytań..."~ */ GOTO 3
  IF ~~ THEN REPLY #45335 /* ~"Dzięki. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 41 // from: 42.0
  SAY #45336 /* ~"Znajdziesz go w Ulu, w północnej części południowo-wschodniego regionu. Nie dają tam jednak dobrych wskazówek - tak jakbyś słuchał szalonego Anarcha, który nie *zna* nawet sam siebie."~ */
  IF ~~ THEN REPLY #45337 /* ~"Jakiego rodzaju siłę mogą dać jego tatuaże?"~ */ GOTO 42
  IF ~~ THEN REPLY #45338 /* ~"Mam jeszcze kilka pytań..."~ */ GOTO 30
  IF ~~ THEN REPLY #45339 /* ~"Dzięki. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 42 // from: 41.0
  SAY #45340 /* ~"Tatuaż Ro'jhiego, który skrócił życie siedmiu slaadi, daje mi siłę, gdy muszę stawić czoło czemuś przytłaczającemu. Im więcej masz doświadczenia, tym więcej siły otrzymujesz: opowiedz Upadłemu swe historie, a gdy tylko przeniesie ich obraz na ciało, dodadzą ci sił."~ */
  IF ~~ THEN REPLY #45341 /* ~"Gdzie go znajdę?"~ */ GOTO 41
  IF ~~ THEN REPLY #45342 /* ~"Dzięki. Mam kilka innych pytań..."~ */ GOTO 30
  IF ~~ THEN REPLY #45343 /* ~"Dzięki. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 43 // from: 29.5 30.5 44.5
  SAY #45344 /* ~Kłania się nieznacznie. "Jest razem z tobą niezrównany mistrz naszego języka. Poproś go, a może cię nauczy."~ */
  IF ~~ THEN REPLY #45345 /* ~"Mimo wszystko dziękuję. Mam jeszcze kilka pytań..."~ */ GOTO 30
  IF ~~ THEN REPLY #45346 /* ~"Mimo wszystko dziękuję. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 44 // from:
  SAY #45347 /* ~"Jego słowa są mi *znane*, tak jak to, co zrobił w naszej twierdzy. Wysłucham go."~ */
  IF ~~ THEN REPLY #45348 /* ~"Kim jesteś?"~ */ GOTO 31
  IF ~~ THEN REPLY #45349 /* ~"Skąd masz te blizny?"~ */ GOTO 32
  IF ~~ THEN REPLY #45350 /* ~"Skąd masz te tatuaże?"~ */ GOTO 37
  IF ~  Global("Know_Githyanki","GLOBAL",0)
Global("Met_Githyanki","GLOBAL",1)
~ THEN REPLY #45146 /* ~"Czym różnią się githzerai od githyanki?"~ */ DO ~SetGlobal("Know_Githyanki","GLOBAL",1)
~ GOTO 48
  IF ~  Global("Know_Githyanki","GLOBAL",1)
~ THEN REPLY #45147 /* ~"Czym różnią się githzerai od githyanki?"~ */ GOTO 48
  IF ~  Global("Know_Githzerai_Speak","GLOBAL",0)
~ THEN REPLY #45351 /* ~"Czy nauczysz mnie swego języka?"~ */ GOTO 43
  IF ~~ THEN REPLY #45352 /* ~"Nie chcę niczego. Dzięki, żegnaj."~ */ EXIT
END

IF WEIGHT #4 ~  NumTimesTalkedToGT(0)
NearbyDialog("DDakkon")
Global("Vristigor","GLOBAL",2)
~ THEN BEGIN 45 // from:
  SAY #45353 /* ~Gdy podchodzisz, Hailcii'n kłania się. "To zaszczyt dla mnie widzieć cię znowu."~ */
  IF ~~ THEN REPLY #45354 /* ~"Dziękuję. Mam kilka pytań..."~ */ GOTO 30
  IF ~~ THEN REPLY #45355 /* ~"Dzięki, ale muszę już iść. Żegnaj."~ */ EXIT
END

IF WEIGHT #12 ~  NumTimesTalkedToGT(0)
NearbyDialog("DDakkon")
GlobalLT("Vristigor","GLOBAL",2)
~ THEN BEGIN 46 // from:
  SAY #45356 /* ~"Znów wracasz ze swymi ludźmi, *zerthcie*. Czyż chcesz *wiedzieć* coś jeszcze?"~ */
  IF ~~ THEN REPLY #45357 /* ~"Tak."~ */ GOTO 30
  IF ~~ THEN REPLY #45358 /* ~"Nie. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 47 // from: 2.0
  SAY #45359 /* ~"Jestem tu, by zdobyć zapasy i wezwać posiłki. Githyanki stają się coraz śmielsi. Przygotowujemy się na krwawą wojnę."~ */
  IF ~~ THEN REPLY #45360 /* ~"Brzmi ciekawie. Odpowiedz mi jeszcze na parę pytań."~ */ GOTO 3
  IF ~~ THEN REPLY #45361 /* ~"Rozumiem. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 48 // from: 29.3 29.4 30.3 30.4 44.3 44.4
  SAY #45174 /* ~Jego oczy zwężają się, pluje na ziemię. "To banda kłamliwych, złodziejskich, zdradliwych psów. Nie można im ufać za żadne skarby. Jeśli któregoś spotkasz, pamiętaj historię serca Selqanta i oka Vilquara, i pamiętaj, że githyanki są po trzykroć gorsi."~ */
  IF ~~ THEN REPLY #45175 /* ~"Co to za historia?"~ */ GOTO 49
  IF ~~ THEN REPLY #45176 /* ~"Dzięki. Mam jeszcze kilka pytań..."~ */ GOTO 30
  IF ~~ THEN REPLY #45177 /* ~"Dzięki. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 49 // from: 48.0
  SAY #45181 /* ~"Selqant i Vilquar znani byli z okrucieństwa i zdradliwości - i pochodzili z ludu githzerai. Ich wyczyny bledną, gdy porównać je z tym, co robią githyanki, najbardziej bezwzględny rodzaj plugastwa, jaki przepłynął przez Srebrne Morze."~ */
  IF ~~ THEN REPLY #45182 /* ~"Mam jeszcze kilka pytań..."~ */ GOTO 30
  IF ~~ THEN REPLY #45183 /* ~"Dziękuję, że poświęciłeś mi trochę czasu. Żegnaj."~ */ EXIT
END
