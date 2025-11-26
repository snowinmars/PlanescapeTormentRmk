// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DHCON.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\pl_PL\dialog.tlk
// dialogF  : (none)

BEGIN ~DHCON~

IF ~  RandomNum(2,0)
~ THEN BEGIN 0 // from:
  SAY #60814 /* ~Widzisz mechanicznego człowieka, niosącego na ramieniu skórę w kolorze skały wulkanicznej. Nieufnym wzrokiem obserwuje jak podchodzisz.~ */
  IF ~~ THEN REPLY #60815 /* ~"Witaj."~ */ GOTO 1
  IF ~~ THEN REPLY #60816 /* ~Nie zwracaj na niego uwagi.~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #60817 /* ~Przechyla głowę na bok i rzuca ci pytające spojrzenie. "Witaj, intruzie."~ */
  IF ~~ THEN REPLY #60818 /* ~"Dlaczego uważasz mnie za intruza?"~ */ GOTO 2
  IF ~~ THEN REPLY #60819 /* ~"Kim jesteś?"~ */ GOTO 3
  IF ~~ THEN REPLY #60820 /* ~"Czym jesteś?"~ */ GOTO 4
  IF ~~ THEN REPLY #60821 /* ~"Co robisz?"~ */ GOTO 5
  IF ~~ THEN REPLY #60822 /* ~"Muszę już iść. Żegnaj."~ */ GOTO 6
END

IF ~~ THEN BEGIN 2 // from: 1.0
  SAY #60823 /* ~Obdarza cię krzywym uśmiechem. "Ponieważ nie jesteś jednym z nas, jesteś intruzem. A skoro nim jesteś, musisz umrzeć." Rzuca się do ataku.~ */
  IF ~~ THEN REPLY #60824 /* ~Broń się.~ */ DO ~ForceAttack(Protagonist,Myself)
~ EXIT
END

IF ~~ THEN BEGIN 3 // from: 1.1
  SAY #60825 /* ~"Nie mam tożsamości, tylko cel. Moim celem jest zabicie cię." Rzuca się do ataku.~ */
  IF ~~ THEN REPLY #60826 /* ~Broń się.~ */ DO ~ForceAttack(Protagonist,Myself)
~ EXIT
END

IF ~~ THEN BEGIN 4 // from: 1.2
  SAY #60827 /* ~"Jestem ciężką jednostką bojową. Moje cechy to: ponadprzeciętna znajomość kanonów walki, wysoki poziom inteligencji i umiejętność doskonałego obchodzenia się z bronią. Dodatkowo mam też złe nastawienie do świata." Rzuca się do ataku.~ */
  IF ~~ THEN REPLY #60828 /* ~Broń się.~ */ DO ~ForceAttack(Protagonist,Myself)
~ EXIT
END

IF ~~ THEN BEGIN 5 // from: 1.3
  SAY #60829 /* ~"Lokalizuję twoje organy życiowe. Wykorzystam te informacje, by zadać ci poważne rany." Rzuca się do ataku.~ */
  IF ~~ THEN REPLY #60830 /* ~Broń się.~ */ DO ~ForceAttack(Protagonist,Myself)
~ EXIT
END

IF ~~ THEN BEGIN 6 // from: 1.4
  SAY #60831 /* ~Uśmiecha się ze złością. "Tak, pójdziesz, intruzie. Tyle, że po tym jak cię zabiję, nogami do przodu!" Rzuca się do ataku.~ */
  IF ~~ THEN REPLY #60832 /* ~Broń się.~ */ DO ~ForceAttack(Protagonist,Myself)
~ EXIT
END

IF ~  RandomNum(2,1)
~ THEN BEGIN 7 // from:
  SAY #60833 /* ~Widzisz mechanicznego człowieka, niosącego na ramieniu skórę w kolorze skały wulkanicznej. Nieufnym wzrokiem obserwuje jak podchodzisz.~ */
  IF ~~ THEN REPLY #60834 /* ~"Witaj."~ */ GOTO 8
  IF ~~ THEN REPLY #60835 /* ~Nie zwracaj na niego uwagi.~ */ EXIT
END

IF ~~ THEN BEGIN 8 // from: 7.0
  SAY #60836 /* ~Przechyla głowę na bok obdarzając cię pytającym spojrzeniem. "Dlaczego wciąż nas pytasz? Nie rozumiem."~ */
  IF ~~ THEN REPLY #60837 /* ~"Zawsze jest szansa, że mogę się czegoś nauczyć."~ */ GOTO 9
  IF ~~ THEN REPLY #60838 /* ~"Kim jesteś?"~ */ GOTO 10
  IF ~~ THEN REPLY #60839 /* ~"Czym jesteś?"~ */ GOTO 11
  IF ~~ THEN REPLY #60840 /* ~"Co robisz?"~ */ GOTO 12
  IF ~~ THEN REPLY #60841 /* ~"Muszę już iść. Żegnaj."~ */ GOTO 13
END

IF ~~ THEN BEGIN 9 // from: 8.0
  SAY #60842 /* ~Patrzy w dal, myśląc. Znów zwraca się do ciebie, przytakująco kiwając głową. "Tak... przypuszczam, że to prawda... Nauczę cię, czym jest ból." Rzuca się do ataku.~ */
  IF ~~ THEN REPLY #60843 /* ~Broń się.~ */ DO ~ForceAttack(Protagonist,Myself)
~ EXIT
END

IF ~~ THEN BEGIN 10 // from: 8.1
  SAY #60845 /* ~"Jestem sługą Złego Czarnoksiężnika, a On chce twojej śmierci." Rzuca się do ataku.~ */
  IF ~~ THEN REPLY #60846 /* ~Broń się.~ */ DO ~ForceAttack(Protagonist,Myself)
~ EXIT
END

IF ~~ THEN BEGIN 11 // from: 8.2
  SAY #60847 /* ~"Jestem tym, który rzuci cię na kolana, intruzie!" Rzuca się do ataku.~ */
  IF ~~ THEN REPLY #60848 /* ~Broń się.~ */ DO ~ForceAttack(Protagonist,Myself)
~ EXIT
END

IF ~~ THEN BEGIN 12 // from: 8.3
  SAY #60849 /* ~"Zanim cię zabiję, zawiadomię Złego Czarnoksiężnika, że jesteś w labiryncie..." Na chwilę przerywa. "Zrobione. Nadszedł czas zabijania." Rzuca się do ataku.~ */
  IF ~~ THEN REPLY #60850 /* ~Broń się.~ */ DO ~ForceAttack(Protagonist,Myself)
~ EXIT
END

IF ~~ THEN BEGIN 13 // from: 8.4
  SAY #60851 /* ~"Odchodzisz? Tak szybko? Pomogę ci!" Rzuca się do ataku.~ */
  IF ~~ THEN REPLY #60852 /* ~Broń się.~ */ DO ~ForceAttack(Protagonist,Myself)
~ EXIT
END

IF ~  RandomNum(2,2)
~ THEN BEGIN 14 // from:
  SAY #60853 /* ~Widzisz mechanicznego człowieka, niosącego na ramieniu skórę w kolorze skały wulkanicznej. Nieufnym wzrokiem obserwuje jak podchodzisz.~ */
  IF ~~ THEN REPLY #60854 /* ~"Witaj."~ */ GOTO 15
  IF ~~ THEN REPLY #60855 /* ~Nie zwracaj na niego uwagi.~ */ EXIT
END

IF ~~ THEN BEGIN 15 // from: 14.0
  SAY #60856 /* ~Przechyla głowę na bok, obdarzając cię pytającym spojrzeniem. "Twój upór robi wrażenie, intruzie, tak samo jak twoja głupota."~ */
  IF ~~ THEN REPLY #60857 /* ~"Dlaczego musimy walczyć? To przecież bezcelowe."~ */ GOTO 16
  IF ~~ THEN REPLY #60858 /* ~"Kim jesteś?"~ */ GOTO 17
  IF ~~ THEN REPLY #60859 /* ~"Czym jesteś?"~ */ GOTO 18
  IF ~~ THEN REPLY #60860 /* ~"Co robisz?"~ */ GOTO 19
  IF ~~ THEN REPLY #60861 /* ~"Muszę już iść. Żegnaj."~ */ GOTO 20
END

IF ~~ THEN BEGIN 16 // from: 15.0
  SAY #60862 /* ~Przez chwilę patrzy na ciebie, zanim odpowie. "To tylko wygląda na bezcelowe, intruzie. Nasze szaleństwo ma swój sens..." Rzuca się do ataku.~ */
  IF ~~ THEN REPLY #60863 /* ~Broń się.~ */ DO ~ForceAttack(Protagonist,Myself)
~ EXIT
END

IF ~~ THEN BEGIN 17 // from: 15.1
  SAY #60864 /* ~"Jako jednostka, nikim. Jako część całości, wszystkim." Rzuca się do ataku.~ */
  IF ~~ THEN REPLY #60865 /* ~Broń się.~ */ DO ~ForceAttack(Protagonist,Myself)
~ EXIT
END

IF ~~ THEN BEGIN 18 // from: 15.2
  SAY #60866 /* ~"Środkiem przynoszącym koniec, intruzie." Rzuca się do ataku.~ */
  IF ~~ THEN REPLY #60867 /* ~Broń się.~ */ DO ~ForceAttack(Protagonist,Myself)
~ EXIT
END

IF ~~ THEN BEGIN 19 // from: 15.3
  SAY #60868 /* ~"Przekazuję Złemu Czarnoksiężnikowi każde twoje zwycięstwo, każdą porażkę i każdy ruch. Uczymy się od ciebie. Dzięki tobie staniemy się lepsi." Rzuca się do ataku.~ */
  IF ~~ THEN REPLY #60869 /* ~Broń się.~ */ DO ~ForceAttack(Protagonist,Myself)
~ EXIT
END

IF ~~ THEN BEGIN 20 // from: 15.4
  SAY #60870 /* ~"Tak... Do następnego spotkania, intruzie." Rzuca się do ataku.~ */
  IF ~~ THEN REPLY #60871 /* ~Broń się.~ */ DO ~ForceAttack(Protagonist,Myself)
~ EXIT
END
