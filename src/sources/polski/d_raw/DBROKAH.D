// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DBROKAH.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\pl_PL\dialog.tlk
// dialogF  : (none)

BEGIN ~DBROKAH~

IF ~  Global("Know_BandM","GLOBAL",0)
~ THEN BEGIN 0 // from:
  SAY #45789 /* ~Widzisz maleńkiego mężczyznę, który idąc nieco się chwieje. Jego głos ma prawie komiczny akcent. "Na wszelakie moce w ich niebiańskich wychodkach, co to ma znaczyć?"~ */
  IF ~~ THEN DO ~SetGlobal("Know_BandM","GLOBAL",1)
~ EXTERN ~DMICCAH~ 2
END

IF ~  Global("Know_BandM","GLOBAL",1)
~ THEN BEGIN 1 // from:
  SAY #45791 /* ~"Nasz klient! Nasz klient! Mikka! Nasz klient wrócił!"~ */
  IF ~~ THEN EXTERN ~DMICCAH~ 3
END

IF ~~ THEN BEGIN 2 // from:
  SAY #45793 /* ~Maleńki mężczyzna odpowiada: "Oczywiście, że twoje oczy wyśledziły klienta! One widzą ich cały czas... klientów na ULICY! Nie mamy klientów i nigdy nie będziemy mieli klientów, wyrażanie takiej nadziei jest bezsensowne i żałosne..." Milknie, gdy cię dostrzega. "Mikka! Mamy klienta!"~ */
  IF ~~ THEN EXTERN ~DMICCAH~ 4
END

IF ~~ THEN BEGIN 3 // from:
  SAY #45795 /* ~"WIDZĘ to. Czy sądzisz, że tego nie widzę? Oczywiście, że to widzę. Mam oczy, prawda?" Zwraca się do ciebie. "Co możemy dziś dla ciebie uczynić?"~ */
  IF ~~ THEN REPLY #45796 /* ~"Porozmawiajmy o handlu."~ */ DO ~StartStore("Brokah",Protagonist)
~ EXIT
  IF ~~ THEN REPLY #45797 /* ~"Czy możesz powiedzieć mi coś o okolicy?"~ */ GOTO 5
  IF ~~ THEN REPLY #45798 /* ~"Czy możesz powiedzieć mi coś o sobie?"~ */ GOTO 6
  IF ~~ THEN REPLY #45799 /* ~"Kim ona jest?"~ */ GOTO 7
  IF ~~ THEN REPLY #45800 /* ~"Co możesz powiedzieć mi o frakcjach?"~ */ GOTO 8
  IF ~~ THEN REPLY #45801 /* ~"Nic, dziękuję. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from:
  SAY #45802 /* ~"Oczywiście, że jestem gotowy! Zawsze jestem gotowy! Na każdego naszego klienta." Zwraca się do ciebie. "Czym możemy ci służyć?"~ */
  IF ~~ THEN REPLY #45803 /* ~"Porozmawiajmy o handlu."~ */ DO ~StartStore("Brokah",Protagonist)
~ EXIT
  IF ~~ THEN REPLY #45804 /* ~"Czy możesz powiedzieć mi coś o okolicy?"~ */ GOTO 5
  IF ~~ THEN REPLY #45805 /* ~"Czy możesz powiedzieć mi coś o sobie?"~ */ GOTO 6
  IF ~~ THEN REPLY #45806 /* ~"Kim ona jest?"~ */ GOTO 7
  IF ~~ THEN REPLY #45807 /* ~"Co możesz powiedzieć mi o frakcjach?"~ */ GOTO 8
  IF ~~ THEN REPLY #45808 /* ~"Nic, dziękuję. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 3.1 4.1
  SAY #45809 /* ~"Ach, chcesz wiedzieć coś o okolicy? Mogę opowiedzieć ci wiele rzeczy o okolicy. Jest tu wiele rzeczy do zwiedzania..."~ */
  IF ~~ THEN EXTERN ~DMICCAH~ 9
END

IF ~~ THEN BEGIN 6 // from: 3.2 4.2
  SAY #45811 /* ~"Ja? Chcesz się czegoś o mnie dowiedzieć? Mikka, on chce się czegoś o mnie dowiedzieć."~ */
  IF ~~ THEN EXTERN ~DMICCAH~ 10
END

IF ~~ THEN BEGIN 7 // from: 3.3 4.3
  SAY #45813 /* ~"Ona? Ona? Ona jest moją oddaną żoną od iluś tam dziesiątek lat, światłem mojego życia oraz największym..."~ */
  IF ~~ THEN EXTERN ~DMICCAH~ 11
END

IF ~~ THEN BEGIN 8 // from: 3.4 4.4
  SAY #45815 /* ~"Frakcje, hę? Frakcje? Mikka, on chce się dowiedzieć czegoś o frakcjach. Mamy..."~ */
  IF ~~ THEN EXTERN ~DMICCAH~ 12
END

IF ~~ THEN BEGIN 9 // from:
  SAY #45817 /* ~"Miałem zamiar opowiedzieć mu o Targu, ale teraz tobie na złość opowiem mu o Przybytku! A potem opowiem mu o Miejskim Gmachu Rozrywki i w ogóle nie wspomnę o innych atrakcjach!" Wdają się ze sobą w głośną kłótnię, całkowicie cię ignorując.~ */
  IF ~~ THEN REPLY #45818 /* ~"Mam jeszcze kilka pytań..."~ */ GOTO 10
  IF ~~ THEN REPLY #45819 /* ~"Chciałbym coś kupić..."~ */ GOTO 10
  IF ~~ THEN REPLY #45820 /* ~"Zatem żegnaj."~ */ GOTO 10
END

IF ~~ THEN BEGIN 10 // from: 9.0 9.1 9.2 11.0 11.1 11.2 12.0 12.1 12.2 13.0 13.1 13.2
  SAY #45821 /* ~Są tak zajęci krzyczeniem na siebie, że nie zwracają na ciebie uwagi. Sklep nagle wypełnia się ich słowami.~ */
  IF ~~ THEN REPLY #45822 /* ~Odejdź.~ */ EXIT
END

IF ~~ THEN BEGIN 11 // from:
  SAY #45823 /* ~"Brak mi ambicji? Brak ambicji? Gdybym nie miał magnesu w postaci żony i życia, to byłbym kimś! Ale nie, zamiast tego jestem zwykłym magazynierem zamiast być wielkim podróżnikiem..." Wdają się ze sobą w głośną kłótnię, całkowicie cię ignorując.~ */
  IF ~~ THEN REPLY #45824 /* ~"Mam jeszcze kilka pytań..."~ */ GOTO 10
  IF ~~ THEN REPLY #45825 /* ~"Chciałbym coś kupić..."~ */ GOTO 10
  IF ~~ THEN REPLY #45826 /* ~"Zatem żegnaj."~ */ GOTO 10
END

IF ~~ THEN BEGIN 12 // from:
  SAY #45827 /* ~"...gdybyś ty tego nie robiła. Ona jest największym żulem w tej części Ula, panie. Trwa to od wielu LAT, powiadam ci, LAT. Gdyby w Rzece Okeanus płynął alkohol, to by ją wypiła i wciąż była spragniona!" Dalej się sprzeczają, całkowicie cię ignorując.~ */
  IF ~~ THEN REPLY #45828 /* ~"Mam jeszcze kilka pytań..."~ */ GOTO 10
  IF ~~ THEN REPLY #45829 /* ~"Chciałbym coś kupić..."~ */ GOTO 10
  IF ~~ THEN REPLY #45830 /* ~"Zatem żegnaj."~ */ GOTO 10
END

IF ~~ THEN BEGIN 13 // from:
  SAY #45831 /* ~"Wiem, że wierzę w jedną rzecz - wierzę, że to życie musi być karą za coś, co zrobiłem w którymś z poprzednich!" Wdają się ze sobą w głośną kłótnię, całkowicie cię ignorując.~ */
  IF ~~ THEN REPLY #45832 /* ~"Mam jeszcze kilka pytań..."~ */ GOTO 10
  IF ~~ THEN REPLY #45833 /* ~"Chciałbym coś kupić..."~ */ GOTO 10
  IF ~~ THEN REPLY #45834 /* ~"Zatem żegnaj."~ */ GOTO 10
END

IF ~~ THEN BEGIN 14 // from:
  SAY #45835 /* ~"Ona lubi wszystko, co tylko powiększy jej kałdun. Jej smak znajduje się w jej ustach, a nawet tam ma go wybitnie niewiele."~ */
  IF ~~ THEN EXTERN ~DMICCAH~ 13
END

IF ~~ THEN BEGIN 15 // from:
  SAY #45837 /* ~Broka przerywa z wyraźną ironią. "A ja pytam cię, w jaki sposób mogę nie doceniać ust i figury istoty tak pięknej jak ona? Naprawdę, jestem bezkrytyczny i brak mi smaku..."~ */
  IF ~~ THEN EXTERN ~DMICCAH~ 14
END

IF ~~ THEN BEGIN 16 // from:
  SAY #45839 /* ~"Z pewnością trudno w to uwierzyć! Odrzuciłem wszystkie te szanse, a mogłem wyjątkowo dobrze się bawić!"~ */
  IF ~~ THEN EXTERN ~DMICCAH~ 15
END

IF ~~ THEN BEGIN 17 // from:
  SAY #45841 /* ~"Zamknij się! Jestem bardziej męski niż ty będziesz kiedykolwiek!" Przerywa, zastanawia się nad tym, co powiedział i mierzy żonę krytycznym spojrzeniem. "Może nie. Z pewnością masz większe wąsy, niż większość mężczyzn, jakich spotkałem..."~ */
  IF ~~ THEN EXTERN ~DMICCAH~ 16
END
