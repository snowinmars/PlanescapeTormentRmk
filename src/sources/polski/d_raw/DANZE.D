// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DANZE.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\pl_PL\dialog.tlk
// dialogF  : (none)

BEGIN ~DANZE~
//////////////////////////////////////////////////
// WARNING: this file contains non-trivial WEIGHTs
//////////////////////////////////////////////////

IF WEIGHT #1 /* Triggers after states #: 13 even though they appear after this state */
~  NumTimesTalkedTo(0)
~ THEN BEGIN 0 // from:
  SAY #33883 /* ~Widzisz starszego, ponuro wyglądającego mężczyznę. Jego twarz jest pokryta zmarszczkami i bruzdami.~ */
  IF ~~ THEN REPLY #33884 /* ~"Witaj."~ */ GOTO 1
  IF ~~ THEN REPLY #33885 /* ~Zignoruj mężczyznę.~ */ DO ~SetNumTimesTalkedTo(0)
~ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #33886 /* ~Kłania się szybko i sztywno. "Tak, witaj ty również. Anze siem nazywam. Czego ci trza?"~ */
  IF ~~ THEN REPLY #33887 /* ~"Mam kilka pytań..."~ */ GOTO 2
  IF ~~ THEN REPLY #33888 /* ~"Nieważne. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.0 4.1 5.1 6.1 8.0 9.0 10.0 12.1
  SAY #33889 /* ~Uśmiecha się, a ty dostrzegasz, że brakuje mu wszystkich zębów. "Zdaje mi siem, że mam czas by podzielić siem z tobom śpiewkom. Co trza ci wiedzieć?"~ */
  IF ~  Global("Know_Lothar","GLOBAL",1)
!Global("AR0508_Visited","GLOBAL",1)
~ THEN REPLY #33890 /* ~"Szukam kogoś nazywanego Lotar, albo Pan Kości..."~ */ GOTO 3
  IF ~  Global("Morte_Stolen","GLOBAL",1)
!Global("Know_Lothar","GLOBAL",1)
~ THEN REPLY #33891 /* ~"Miałem czaszkę i mi ją ukradziono. Czy nie wiesz, kto mógłby to uczynić?"~ */ GOTO 6
  IF ~~ THEN REPLY #33892 /* ~"Do czego służy ten piec?"~ */ GOTO 10
  IF ~~ THEN REPLY #33893 /* ~"Chcę kupić broń."~ */ DO ~StartStore("Anzestr",Protagonist)
~ EXIT
  IF ~~ THEN REPLY #33894 /* ~"Chcę kupić magiczne przedmioty."~ */ GOTO 9
  IF ~~ THEN REPLY #33895 /* ~"Muszę iść. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 2.0
  SAY #33896 /* ~"Rzec nie mogiem, żebym kiedykolwiek słyszał o Lotarze..." Mruży oczy, myśląc. "Ale ten gość od *kości*, tak, o nim żem słyszał. Śpiewka mówi, że z nim zadzierać nie należy. Mocarny śmiałek, trzyma z martwymi i takimi innymi."~ */
  IF ~~ THEN REPLY #33897 /* ~"Gdzie mogę go znaleźć?"~ */ GOTO 4
  IF ~~ THEN REPLY #33898 /* ~"Co możesz mi o nim powiedzieć?"~ */ GOTO 5
  IF ~~ THEN REPLY #33899 /* ~"Chcę kupić magiczne przedmioty."~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 3.0 5.0
  SAY #33900 /* ~Wzrusza ramionami. "Ni wiem. Taki śmiałek to może se leże mieć, gdzie mu wygodnie. Żaden trep nie odmówi mu tego, z pewnościom."~ */
  IF ~~ THEN REPLY #33901 /* ~"Co możesz mi o nim powiedzieć?"~ */ GOTO 5
  IF ~~ THEN REPLY #33902 /* ~"Rozumiem. Mam jeszcze kilka pytań..."~ */ GOTO 2
  IF ~~ THEN REPLY #33903 /* ~"Chcę kupić magiczne przedmioty."~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 3.1 4.0
  SAY #33904 /* ~Parska krótkim śmiechem. "Wszystko żeś słyszał, śmiałku. Nie wiem o nim nic wiencej."~ */
  IF ~~ THEN REPLY #33905 /* ~"Gdzie mogę go znaleźć?"~ */ GOTO 4
  IF ~~ THEN REPLY #33906 /* ~"Rozumiem. Mam jeszcze kilka pytań..."~ */ GOTO 2
  IF ~~ THEN REPLY #33907 /* ~"Chcę kupić magiczne przedmioty."~ */ EXIT
END

IF ~~ THEN BEGIN 6 // from: 2.1
  SAY #33908 /* ~Stara się wyglądać na zatroskanego, ale zupełnie mu się to nie udaje. "Przykro to słyszeć, śmiałku. Jeśli zdaje ci siem, że jom ukradziono, rzec powinieneś o tym Harmonium."~ */
  IF ~~ THEN REPLY #33909 /* ~"Harmonium?"~ */ GOTO 7
  IF ~~ THEN REPLY #33910 /* ~"Dzięki. Mam jeszcze kilka pytań..."~ */ GOTO 2
  IF ~~ THEN REPLY #33911 /* ~"Chcę kupić magiczne przedmioty."~ */ EXIT
END

IF ~~ THEN BEGIN 7 // from: 6.0
  SAY #33912 /* ~Uśmiecha się. "Prawo, śmiałku. Siepacze Harmonium som tu, w Sigil, prawem. Jeśli straciłeś swojom własność, powinieneś im o tym powiedzieć."~ */
  IF ~~ THEN REPLY #33913 /* ~"Czy sądzisz, że Harmonium może odzyskać czaszkę?"~ */ GOTO 8
END

IF ~~ THEN BEGIN 8 // from: 7.0
  SAY #33915 /* ~Otwiera usta, żeby coś powiedzieć, ale potem je zamyka i zastanawia się. Po chwili zaczyna chichotać. "Nie, śmiałku. Wydaje mi siem, że nie. Nieważne."~ */
  IF ~~ THEN REPLY #33914 /* ~"Rozumiem. Mam jeszcze kilka pytań..."~ */ GOTO 2
  IF ~~ THEN REPLY #33916 /* ~"Chcę kupić magiczne przedmioty."~ */ EXIT
END

IF ~~ THEN BEGIN 9 // from: 2.4
  SAY #33917 /* ~"Możesz pogadać z Aalekiem, tu obok. On może mieć to, czego ci trza." Wskazuje na kontuar po lewej.~ */
  IF ~~ THEN REPLY #33918 /* ~"Mam jeszcze kilka pytań..."~ */ GOTO 2
  IF ~~ THEN REPLY #33919 /* ~"Dziękuję. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 10 // from: 2.2
  SAY #33920 /* ~Spogląda na piec, po czym zniża głos. "Piec niczemu innemu nie służy, jak tylko nauczeniu tego leniucha odpowiedzialności. Ten chłopak zawsze krzyczy, gada i tak dalej. Myśli, że jest uczonym i nie zna wartości prawdziwej pracy. Jeśli masz poważne pytania... cóż, może lepiej spytaj jego, niż mnie."~ */
  IF ~~ THEN REPLY #33921 /* ~"Mam jeszcze kilka pytań..."~ */ GOTO 2
  IF ~~ THEN REPLY #33922 /* ~"Rozumiem. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 11 // from:
  SAY #33923 /* ~.~ */
  IF ~~ THEN EXIT
END

IF WEIGHT #2 /* Triggers after states #: 13 even though they appear after this state */
~  NumTimesTalkedToGT(0)
~ THEN BEGIN 12 // from:
  SAY #34244 /* ~Anze obdarza cię zwyczajowym bezzębnym uśmiechem. "Witaj ponownie, śmiałku. Czego ci dzisiaj trza?"~ */
  IF ~~ THEN REPLY #34245 /* ~"Pokaż mi swoje towary."~ */ DO ~StartStore("Anzestr",Protagonist)
~ EXIT
  IF ~~ THEN REPLY #34246 /* ~"Mam kilka pytań..."~ */ GOTO 2
  IF ~~ THEN REPLY #34247 /* ~"Nic. Żegnaj."~ */ EXIT
END

IF WEIGHT #0 ~  Global("Lazlo_Dead_KAPUTZ","GLOBAL",1)
~ THEN BEGIN 13 // from:
  SAY #34248 /* ~"Opłakujem strate mego chłopaka, Lazlo. Nie otworzem sklepu przez... nie wiem, jak długo..."~ */
  IF ~~ THEN REPLY #34249 /* ~Odejdź.~ */ EXIT
END
