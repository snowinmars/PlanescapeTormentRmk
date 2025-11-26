// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DMSLAVE2.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\pl_PL\dialog.tlk
// dialogF  : (none)

BEGIN ~DMSLAVE2~

IF ~  NumTimesTalkedTo(0)
~ THEN BEGIN 0 // from:
  SAY #37792 /* ~Widzisz przed sobą grubawego, starszego człowieka ubranego w łachmany. Wygląda na zmartwionego, co chwila rozgląda się wkoło. Oddycha ciężko i cały czas się poci.~ */
  IF ~~ THEN REPLY #37804 /* ~"Witaj."~ */ GOTO 1
  IF ~~ THEN REPLY #37805 /* ~Nie zwracaj na niego uwagi.~ */ DO ~SetNumTimesTalkedTo(0)
~ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #37793 /* ~Gdy go pozdrawiasz, podskakuje i patrzy się na ciebie niepewnie. "Słucham, śmiałku?" Lekko się kuli, jakby się obawiał, że go uderzysz. "Czym mogę ci służyć?"~ */
  IF ~~ THEN REPLY #37806 /* ~"Mam kilka pytań..."~ */ GOTO 2
  IF ~~ THEN REPLY #37807 /* ~"Mniejsza z tym. Żegnaj."~ */ DO ~SetNumTimesTalkedTo(0)
~ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.0
  SAY #37794 /* ~"Pytania?" Mężczyzna przecząco kiwa głową. "Ty... Nie jesteś tutaj, aby obejrzeć towar?" Z jego brwi ścieka kropla potu.~ */
  IF ~~ THEN REPLY #37809 /* ~"Jaki towar?"~ */ GOTO 3
  IF ~~ THEN REPLY #37810 /* ~"Chcę tylko, żebyś odpowiedział na kilka pytań..."~ */ GOTO 9
  IF ~~ THEN REPLY #37812 /* ~"Mniejsza z tym. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 2.0
  SAY #37795 /* ~Mężczyzna patrzy się na ciebie przestraszony. "Więc nie jesteś tu, by kupić służącego?" Jego oddech staje się coraz cięższy.~ */
  IF ~~ THEN REPLY #37813 /* ~"Tak."~ */ GOTO 4
  IF ~~ THEN REPLY #37815 /* ~"Nie."~ */ GOTO 6
  IF ~~ THEN REPLY #37816 /* ~"Można cię kupić?"~ */ GOTO 8
  IF ~~ THEN REPLY #37817 /* ~"Nieważne."~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 3.0 8.0
  SAY #37796 /* ~Mężczyzna patrzy na ciebie ze strachem w oczach. Widzisz, jak jego wzrok przesuwa się po twoich bliznach, a człowiek zaczyna się jeszcze bardziej pocić. "Je... jestem pewien, że nie nadaję się na służącego dla kogoś takiego jak ty, śmiałku." Jego wzrok spotyka twoje spojrzenie.~ */
  IF ~~ THEN REPLY #37818 /* ~"A to dlaczego?"~ */ GOTO 5
  IF ~~ THEN REPLY #37819 /* ~"Tak, chyba masz rację."~ */ GOTO 6
END

IF ~~ THEN BEGIN 5 // from: 4.0
  SAY #37797 /* ~Mężczyzna przełyka ślinę, a jego głowa zaczyna się trząść. "Moje życie zawsze było spokojne, panie. Ty natomiast wydajesz się być człowiekiem... czynu. Wątpię, czy bym ci odpowiadał..." Mężczyzna wygląda na bardzo przestraszonego, a jego oddech staje się jeszcze cięższy.~ */
  IF ~~ THEN REPLY #37820 /* ~"Tak, chyba masz rację."~ */ GOTO 6
  IF ~~ THEN REPLY #37821 /* ~"Wydaje mi się, że będziesz mi odpowiadał."~ */ DO ~Kill(Myself)
~ GOTO 7
END

IF ~~ THEN BEGIN 6 // from: 3.1 4.1 5.0 8.1
  SAY #37798 /* ~Mężczyzna oddycha z ulgą i uśmiecha się do ciebie. "W takim razie bywaj, śmiałku." Nieznajomy odwraca się od ciebie.~ */
  IF ~~ THEN REPLY #37822 /* ~"Mam kilka pytań..."~ */ GOTO 9
  IF ~~ THEN REPLY #37823 /* ~"Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 7 // from: 5.1
  SAY #37800 /* ~Mężczyzna spogląda na ciebie przez chwilę, a potem zaczynają trząść się mu ręce. Otwiera usta, aby coś powiedzieć, ale nie może wydobyć głosu. Łapie się za swoją klatkę piersiową, jego oczy stają się szerokie ze zdziwienia, a w końcu osuwa się na ziemię.~ */
  IF ~~ THEN REPLY #37824 /* ~Odejdź zanim ktoś cię nie zauważy.~ */ EXIT
END

IF ~~ THEN BEGIN 8 // from: 3.2
  SAY #37801 /* ~Mężczyzna kiwa potakująco głową. "Tak, śmiałku. Wszyscy jesteśmy winni drobnych wykroczeń. Zostaliśmy skazani na niewolniczą pracę przez parę lat. To zależy od tego, jakie zbrodnie popełniliśmy. Czy przychodzisz tutaj dokonać zakupu?"~ */
  IF ~~ THEN REPLY #37825 /* ~"Masz rację."~ */ GOTO 4
  IF ~~ THEN REPLY #37826 /* ~"Nie."~ */ GOTO 6
END

IF ~~ THEN BEGIN 9 // from: 2.1 6.0 10.0
  SAY #37802 /* ~Mężczyzna kiwa przecząco głową i patrzy na ciebie ze smutkiem. "Nie mogę odpowiedzieć na twoje pytania, śmiałku. Wolałbym, żebyś zostawił mnie w spokoju." Nieznajomy odwraca się do ciebie plecami.~ */
  IF ~~ THEN REPLY #37827 /* ~Odejdź.~ */ EXIT
END

IF ~  NumTimesTalkedToGT(0)
~ THEN BEGIN 10 // from:
  SAY #37803 /* ~Widzisz przed sobą grubawego, starszego człowieka ubranego w łachmany. Wygląda na zmartwionego, co chwila rozgląda się wkoło. Oddycha ciężko i cały czas się poci. Patrzy się na ciebie z niepewnym uśmiechem. "Widzę, że znowu tu jesteś, śmiałku. Jak mogę ci pomóc?"~ */
  IF ~~ THEN REPLY #37828 /* ~"Mam kilka pytań..."~ */ GOTO 9
  IF ~~ THEN REPLY #37829 /* ~"Mniejsza z tym. Żegnaj."~ */ EXIT
END
