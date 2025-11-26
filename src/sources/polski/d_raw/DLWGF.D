// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DLWGF.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\pl_PL\dialog.tlk
// dialogF  : (none)

BEGIN ~DLWGF~
//////////////////////////////////////////////////
// WARNING: this file contains non-trivial WEIGHTs
//////////////////////////////////////////////////

IF WEIGHT #1 /* Triggers after states #: 18 even though they appear after this state */
~  RandomNum(2,0)
~ THEN BEGIN 0 // from:
  SAY #65087 /* ~Widzisz młodą kobietę o bladej pożółkłej skórze. Kiedy się do niej zbliżasz, dostrzegasz, że jej skóra cała obsypana jest niewielkimi wrzodami.~ */
  IF ~~ THEN REPLY #65088 /* ~"Witaj."~ */ GOTO 1
  IF ~~ THEN REPLY #65089 /* ~Nie zwracaj na nią uwagi.~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #65090 /* ~Kobieta obrzuca cię szybkim spojrzeniem i marszczy brwi. "Witaj, śmiałku. Czego sobie życzysz?"~ */
  IF ~~ THEN REPLY #65091 /* ~"Mam kilka pytań..."~ */ GOTO 2
  IF ~~ THEN REPLY #65092 /* ~"Niczego. Nieważne."~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.0
  SAY #65093 /* ~Grymas na jej twarzy pogłębia się. "Wybacz, ale jestem obecnie bardzo zajęta. Nie mam czasu na rozmowy z tobą..." Oznajmiwszy to, kobieta zaczyna się od ciebie odwracać.~ */
  IF ~~ THEN REPLY #65094 /* ~"Czy możesz poświęcić mi kilka chwil?"~ */ GOTO 3
  IF ~~ THEN REPLY #65095 /* ~"Zatem żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 2.0
  SAY #65096 /* ~"Nie mogę ci poświęcić ani jednej chwili. Spróbuj zapytać kogoś innego..." Oznajmiwszy to, kobieta zaczyna się od ciebie odwracać.~ */
  IF ~~ THEN REPLY #65097 /* ~Odejdź.~ */ EXIT
END

IF WEIGHT #2 /* Triggers after states #: 18 even though they appear after this state */
~  RandomNum(2,1)
~ THEN BEGIN 4 // from:
  SAY #65098 /* ~Widzisz zanoszącą się od kaszlu kobietę, o pożółkłej skórze. Kiedy się do niej zbliżasz, posyła ci szybkie spojrzenie.~ */
  IF ~~ THEN REPLY #65099 /* ~"Witaj."~ */ GOTO 5
  IF ~~ THEN REPLY #65100 /* ~Nie zwracaj na nią uwagi.~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 4.0
  SAY #65101 /* ~Kobieta uśmiecha się i próbuje ci odpowiedzieć, ale uniemożliwia jej to nagły atak kaszlu. "Tak..." Jej kaszel jest naprawdę poważny. "Witaj, śmiałku... Chciałeś czegoś ode mnie?"~ */
  IF ~~ THEN REPLY #65102 /* ~"Mam kilka pytań..."~ */ GOTO 6
  IF ~~ THEN REPLY #65103 /* ~"Nie. Nieważne. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 6 // from: 5.0 7.0 8.0 9.1 10.0 11.0
  SAY #65104 /* ~"Pomogę ci z przyjemnością, ale proszę, streszczaj się."~ */
  IF ~~ THEN REPLY #65105 /* ~"Czy dobrze się czujesz?"~ */ GOTO 7
  IF ~~ THEN REPLY #65106 /* ~"Dlaczego masz taką pożółkłą skórę?~ */ GOTO 8
  IF ~~ THEN REPLY #65107 /* ~"Co możesz mi opowiedzieć o tej dzielnicy?"~ */ GOTO 9
  IF ~  Global("Morte_Stolen","GLOBAL",1)
!Global("AR0508_Visited","GLOBAL",1)
~ THEN REPLY #65108 /* ~"Zginęła mi czaszka i próbuję ustalić, kto ją sobie przywłaszczył.~ */ GOTO 11
  IF ~~ THEN REPLY #65109 /* ~"Czas już na mnie. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 7 // from: 6.0
  SAY #65110 /* ~Kobieta uśmiecha. "Tak. Dziękuję za troskę. Ale to minie."~ */
  IF ~~ THEN REPLY #65111 /* ~"Dobrze. Mam kilka pytań..."~ */ GOTO 6
  IF ~~ THEN REPLY #65112 /* ~"Czas już na mnie. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 8 // from: 6.1
  SAY #65113 /* ~"Cóż..." Kobieta wygląda na zakłopotaną. "To wina powietrza w tej dzielnicy. Nie jest najczystsze i to sprawia wielu ludziom kłopoty zdrowotne. To wszystko przez te wyziewy i dymy z kuźni..." Kobieta znowu zanosi się od kaszlu i daje ci znać, aby pośpieszył się ze swoimi pytaniami.~ */
  IF ~~ THEN REPLY #65114 /* ~"Dobrze. Mam kilka pytań..."~ */ GOTO 6
  IF ~~ THEN REPLY #65115 /* ~"Czas już na mnie. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 9 // from: 6.2
  SAY #65116 /* ~"No cóż..." Kobieta z wolna przezwycięża swój kaszel. "Jest tu mnóstwo sklepów, targowisk, kramów i..." Dopada ją jeszcze jeden atak kaszlu. "I wiele innych rzeczy w tym rodzaju." Kobieta milknie i uderza się w piersi.~ */
  IF ~~ THEN REPLY #65117 /* ~"Czy na pewno dobrze się czujesz?"~ */ GOTO 10
  IF ~~ THEN REPLY #65118 /* ~"Ach tak. Mam jeszcze kilka innych pytań."~ */ GOTO 6
  IF ~~ THEN REPLY #65119 /* ~"Czas już na mnie. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 10 // from: 9.0
  SAY #65120 /* ~Kobieta uśmiecha się. "Ależ oczywiście..." Zaczyna uderzać się otwartą dłonią w piersi.~ */
  IF ~~ THEN REPLY #65121 /* ~"Ach tak. Mam jeszcze kilka innych pytań."~ */ GOTO 6
  IF ~~ THEN REPLY #65122 /* ~"Czas już na mnie. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 11 // from: 6.3
  SAY #65123 /* ~Kobieta marszczy brwi w zamyśleniu. "Nie... Trudno mi sobie wyobrazić, aby ktoś pragnął czegoś takiego." Przez chwilę masz wrażenie, że znowu chwyta ją kaszel, ale tym razem to tylko złudzenie. "I naprawdę nie mam pojęcia, kogo mógłbyś spytać o takie rzeczy."~ */
  IF ~~ THEN REPLY #65124 /* ~"Ach tak. Mam jeszcze kilka innych pytań."~ */ GOTO 6
  IF ~~ THEN REPLY #65125 /* ~"Dziękuję. Żegnaj."~ */ EXIT
END

IF WEIGHT #3 /* Triggers after states #: 18 even though they appear after this state */
~  RandomNum(2,2)
~ THEN BEGIN 12 // from:
  SAY #65126 /* ~Widzisz kobietę w średnim wieku. Twoją uwagę zwraca jej pożółkła skóra. Kiedy dostrzega cię, próbuje dać ci gestami dłoni do zrozumienia, abyś się oddalił.~ */
  IF ~~ THEN REPLY #65127 /* ~"Witaj."~ */ GOTO 13
  IF ~~ THEN REPLY #65128 /* ~Nie zwracaj na nią uwagi.~ */ EXIT
END

IF ~~ THEN BEGIN 13 // from: 12.0
  SAY #65129 /* ~Kobieta obrzuca cię lękliwym spojrzeniem. "Uch... Witaj... Śmiałku." Zaczyna rozglądać się trwożliwie dokoła, jakby gdzieś w cieniu za jej plecami czaił się jakiś intruz. "Chciałeś czegoś?"~ */
  IF ~~ THEN REPLY #65130 /* ~"Mam kilka pytań..."~ */ GOTO 14
  IF ~~ THEN REPLY #65131 /* ~"Nie. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 14 // from: 13.0 15.0
  SAY #65132 /* ~"Na przykład jakich?"~ */
  IF ~~ THEN REPLY #65133 /* ~"Możesz mi opowiedzieć o tej dzielnicy?"~ */ GOTO 15
  IF ~  !Global("AR0508_Visited","GLOBAL",1)
Global("Morte_Stolen","GLOBAL",1)
~ THEN REPLY #65134 /* ~"Ktoś ukradł mi czaszkę, i teraz próbuję odnaleźć złodzieja."~ */ GOTO 16
  IF ~~ THEN REPLY #65135 /* ~"Nieważne. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 15 // from: 14.0
  SAY #65136 /* ~"To Niższa Dzielnica, dom pospólstwa, do którego i ja należę... Nie ma tu nic nadzwyczajnego. Zresztą rozejrzyj się, a zobaczysz wszystko, co tu jest do zobaczenia."~ */
  IF ~~ THEN REPLY #65137 /* ~"Mam kilka pytań..."~ */ GOTO 14
  IF ~~ THEN REPLY #65138 /* ~"Czas już na mnie. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 16 // from: 14.1
  SAY #65139 /* ~Kobieta krzywi się i wykonuje dziwny gest ruch ręką w okolicy serca. "Słyszałam o kimś takim..." Milknie na chwilę. "Ludziska pomrukują, że jest tu w naszej dzielnicy jakiś nekromanta, czy też kapłan umarłych. Niby on ma zbierać czaszki. Ale nie mam pojęcia, do czego mu to potrzebne..."~ */
  IF ~~ THEN REPLY #65140 /* ~"Czy wiesz, gdzie mogę go znaleźć?"~ */ GOTO 17
END

IF ~~ THEN BEGIN 17 // from: 16.0
  SAY #65141 /* ~Kobieta powoli potrząsa głową. "To tylko opowieści, śmiałku. Nic poza tym... W rzeczywistości w tej dzielnicy nikogo takiego nie ma... To wszystko opowieści bez pokrycia..."~ */
  IF ~~ THEN REPLY #65142 /* ~"Dzięki. Żegnaj."~ */ EXIT
END

IF WEIGHT #0 ~  NumTimesTalkedToGT(0)
~ THEN BEGIN 18 // from:
  SAY #65143 /* ~Kiedy zbliżasz się do tej kobiety, okazuje się, że już wcześniej z nią rozmawiałeś. "Witaj znowu, śmiałku. Potrzebujesz czegoś?"~ */
  IF ~~ THEN REPLY #65144 /* ~"Nie. Żegnaj."~ */ EXIT
END
