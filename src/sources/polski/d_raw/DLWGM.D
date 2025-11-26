// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DLWGM.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\pl_PL\dialog.tlk
// dialogF  : (none)

BEGIN ~DLWGM~
//////////////////////////////////////////////////
// WARNING: this file contains non-trivial WEIGHTs
//////////////////////////////////////////////////

IF WEIGHT #1 /* Triggers after states #: 18 even though they appear after this state */
~  RandomNum(2,0)
~ THEN BEGIN 0 // from:
  SAY #65029 /* ~Widzisz młodego człowieka o bladej, żółtej skórze. Kiedy się do niego zbliżasz, zauważasz, że na skórze odsłoniętych części ciała ma drobną wysypkę.~ */
  IF ~~ THEN REPLY #65030 /* ~"Witaj."~ */ GOTO 1
  IF ~~ THEN REPLY #65031 /* ~Nie zwracaj na niego uwagi.~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #65032 /* ~Mężczyzna obraca na ciebie swoje zmęczone oczy, a potem krzywi się. "A tobie czego potrzeba, trepie?"~ */
  IF ~~ THEN REPLY #65033 /* ~"Mam kilka pytań..."~ */ GOTO 2
  IF ~~ THEN REPLY #65034 /* ~"Niczego. Mniejsza o to."~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.0
  SAY #65035 /* ~Jego twarz układa się w maskę cierpienia i wycieńczenia. "Wybacz mi, ale jestem teraz bardzo zmęczony. Nie mam czasu na rozmowy z tobą." Udzieliwszy ci takich wyjaśnień, zaczyna się od ciebie odwracać.~ */
  IF ~~ THEN REPLY #65036 /* ~"Czy możesz poświęcić mi kilka chwil?"~ */ GOTO 3
  IF ~~ THEN REPLY #65037 /* ~"Zatem żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 2.0
  SAY #65038 /* ~"Nie mogę ci poświęcić ani chwili. Proszę, spytaj kogoś innego..." Mężczyzna odwraca się od ciebie.~ */
  IF ~~ THEN REPLY #65039 /* ~Odejdź.~ */ EXIT
END

IF WEIGHT #2 /* Triggers after states #: 18 even though they appear after this state */
~  RandomNum(2,1)
~ THEN BEGIN 4 // from:
  SAY #65040 /* ~Widzisz mężczyznę o żółtej skórze, targanego ciągłym kaszlem. Kiedy zbliżasz się do niego, mierzy cię długim spojrzeniem.~ */
  IF ~~ THEN REPLY #65041 /* ~"Witaj."~ */ GOTO 5
  IF ~~ THEN REPLY #65042 /* ~Nie zwracaj na niego uwagi.~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 4.0
  SAY #65043 /* ~Mężczyzna uśmiecha się do ciebie. "Tak..." Przez chwilę jego płucami targa kaszel. "Zgaduję, że czegoś ode mnie chcesz."~ */
  IF ~~ THEN REPLY #65044 /* ~"Mam kilka pytań..."~ */ GOTO 6
  IF ~~ THEN REPLY #65045 /* ~"Nie. Nieważne. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 6 // from: 5.0 7.0 8.0 9.1 10.0 11.0
  SAY #65046 /* ~"Dobrze. Pytaj.:"~ */
  IF ~~ THEN REPLY #65047 /* ~"Czy dobrze się czujesz?"~ */ GOTO 7
  IF ~~ THEN REPLY #65048 /* ~"Czemu twoja skóra jest żółta? I skąd ten kaszel?"~ */ GOTO 8
  IF ~~ THEN REPLY #65049 /* ~"Co możesz mi opowiedzieć o tej dzielnicy?"~ */ GOTO 9
  IF ~  Global("Morte_Stolen","GLOBAL",1)
!Global("AR0508_Visited","GLOBAL",1)
~ THEN REPLY #65050 /* ~"Ktoś zabrał mi czaszkę. I teraz próbuję ją odzyskać."~ */ GOTO 11
  IF ~~ THEN REPLY #65051 /* ~"Czas już na mnie. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 7 // from: 6.0
  SAY #65052 /* ~Uśmiecha się. "Niespecjalnie. Ale prawdę powiedziawszy, to jestem zdrowszy od większości skurli z tej dzielnicy. Miło z twojej strony, że pytasz o moje zdrowie, ale z pewnością nie o to chciałeś mnie zapytać."~ */
  IF ~~ THEN REPLY #65053 /* ~"Tak. Mam kilka pytań..."~ */ GOTO 6
  IF ~~ THEN REPLY #65054 /* ~"Czas już na mnie. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 8 // from: 6.1
  SAY #65055 /* ~"Ta dzielnica pełna jest wyziewów i zanieczyszczeń z tutejszych manufaktur i czego tam jeszcze. To one sprawiają, że powietrze jest ciężkie i źle się nim oddycha. I stąd bierze się zmiana barwy skóry, kaszel i wysypka." Mężczyzna milknie i wzrusza ramionami. "Ale nic nie można na to poradzić. Takie jest życie."~ */
  IF ~~ THEN REPLY #65056 /* ~"Ach tak. Mam kilka pytań..."~ */ GOTO 6
  IF ~~ THEN REPLY #65057 /* ~"Czas już na mnie. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 9 // from: 6.2
  SAY #65058 /* ~Młodzieniec wzrusza ramiona i pokazuje na okolicę. "Zobacz sam, a będziesz wszystko wiedział. To miejsce nie jest ani niebem, ani piekłem. Bywają miejsca, i znacznie lepsze, i nieskończenie gorsze."~ */
  IF ~~ THEN REPLY #65059 /* ~"Byłem w Ulu. To właśnie jedno z takich gorszych miejsc."~ */ GOTO 10
  IF ~~ THEN REPLY #65060 /* ~"Ach tak. Mam jeszcze kilka innych pytań."~ */ GOTO 6
  IF ~~ THEN REPLY #65061 /* ~"Czas już na mnie. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 10 // from: 9.0
  SAY #65062 /* ~Mężczyzna wybucha śmiechem, ale nagły atak kaszlu szybko studzi jego wesołość. "Tak, to gorsze miejsce, ale nie nieskończenie gorsze. To zaledwie rzut beretem stąd. Czy jeszcze sobie czegoś życzysz, śmiałku?"~ */
  IF ~~ THEN REPLY #65063 /* ~"Mam jeszcze kilka innych pytań..."~ */ GOTO 6
  IF ~~ THEN REPLY #65064 /* ~"Czas już na mnie. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 11 // from: 6.3
  SAY #65065 /* ~"Nie mam zielonego pojęcia. Gdyby ci się to przydarzyło w Ulu, pomyślałbym od razu o Grabach. Ale tutaj, nie jestem w stanie powiedzieć, komu byłaby taka rzecz potrzebna."~ */
  IF ~~ THEN REPLY #65066 /* ~"Ach tak. Mam jeszcze kilka innych pytań."~ */ GOTO 6
  IF ~~ THEN REPLY #65067 /* ~"Dziękuję. Żegnaj."~ */ EXIT
END

IF WEIGHT #3 /* Triggers after states #: 18 even though they appear after this state */
~  RandomNum(2,2)
~ THEN BEGIN 12 // from:
  SAY #65068 /* ~Widzisz mężczyzna w średnim wieku, o pożółkłej skórze. Kiedy do niego podchodzisz, obrzuca cię znudzonym spojrzeniem i wzdycha.~ */
  IF ~~ THEN REPLY #65069 /* ~"Witaj."~ */ GOTO 13
  IF ~~ THEN REPLY #65070 /* ~Nie zwracaj na niego uwagi.~ */ EXIT
END

IF ~~ THEN BEGIN 13 // from: 12.0
  SAY #65071 /* ~"Nie wiem, czego chcesz, ale wiem jedno, czegokolwiek chcesz, nic takiego u mnie nie znajdziesz. Zatem zostaw mnie w spokoju."~ */
  IF ~~ THEN REPLY #65072 /* ~"Mam kilka pytań..."~ */ GOTO 14
  IF ~~ THEN REPLY #65073 /* ~"Rozumiem. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 14 // from: 13.0 15.0
  SAY #65074 /* ~"Naprawdę? No cóż, jeśli tylko o to chodzi..."~ */
  IF ~~ THEN REPLY #65075 /* ~"Co możesz mi powiedzieć o tej dzielnicy?"~ */ GOTO 15
  IF ~  !Global("AR0508_Visited","GLOBAL",1)
Global("Morte_Stolen","GLOBAL",1)
~ THEN REPLY #65076 /* ~"Ktoś ukradł mi czaszkę. I teraz próbuję odszukać złodzieja."~ */ GOTO 16
  IF ~~ THEN REPLY #65077 /* ~"Nieważne. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 15 // from: 14.0
  SAY #65078 /* ~"To jest Niższa Dzielnica. Zamieszkuje tu pospólstwo. Niewiele więcej można o tej dzielnicy powiedzieć."~ */
  IF ~~ THEN REPLY #65079 /* ~"Ach tak. Mam jeszcze kilka innych pytań."~ */ GOTO 14
  IF ~~ THEN REPLY #65080 /* ~"Czas już na mnie. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 16 // from: 14.1
  SAY #65081 /* ~Mężczyzna prycha i krzywi się. "Czaszkę? Na Baator, a po co komu czaszka? Niezrozumiałe jest dla mnie, kto chciałby ją posiadać i kto chciały ją sobie przywłaszczać." Patrzy na ciebie przez chwilę, a potem wzrusza ramionami. "Zresztą mniejsza o to. To nie moja sprawa."~ */
  IF ~~ THEN REPLY #65082 /* ~"Czy zatem możesz mi powiedzieć, kto tu jest amatorem czaszek?"~ */ GOTO 17
END

IF ~~ THEN BEGIN 17 // from: 16.0
  SAY #65083 /* ~Mężczyzna powoli potrząsa głową. "Nie. A im więcej się nad tym zastanawiam, tym większej nabieram pewności, że sprawa ta nie powinna mnie interesować."~ */
  IF ~~ THEN REPLY #65084 /* ~"Dziękuję. Żegnaj."~ */ EXIT
END

IF WEIGHT #0 ~  NumTimesTalkedToGT(0)
~ THEN BEGIN 18 // from:
  SAY #65085 /* ~Kiedy zbliżasz się do tego człowieka, uświadamiasz sobie, że już wcześniej z nim rozmawiałeś. "Witaj ponownie, śmiałku. Chciałeś czegoś?"~ */
  IF ~~ THEN REPLY #65086 /* ~"Nie. Żegnaj."~ */ EXIT
END
