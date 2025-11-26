// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DDNMERCH.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\pl_PL\dialog.tlk
// dialogF  : (none)

BEGIN ~DDNMERCH~
//////////////////////////////////////////////////
// WARNING: this file contains non-trivial WEIGHTs
//////////////////////////////////////////////////

IF WEIGHT #1 /* Triggers after states #: 5 even though they appear after this state */
~  NumTimesTalkedTo(0)
~ THEN BEGIN 0 // from:
  SAY #50999 /* ~Dostrzegasz szkielet, który kołysze się na palcach nóg. Spomiędzy jego zębów ze świstem wypada powietrze. Wygląda na przeraźliwie znudzonego. Kiedy podchodzisz, jego zachowanie całkowicie się zmienia. "Witam, witam! Mam mnóstwo rzeczy do wykorzystania, prosto od ostatnich trepów, którzy próbowali splądrować milczących. Czy życzysz sobie je zobaczyć?"~ */
  IF ~~ THEN REPLY #51002 /* ~"Tak. Pokaż, co masz."~ */ DO ~StartStore("Gaerien",Protagonist)
~ EXIT
  IF ~~ THEN REPLY #51001 /* ~"Nie. Zamiast tego chcę, abyś odpowiedział mi na kilka pytań."~ */ GOTO 1
  IF ~~ THEN REPLY #51003 /* ~"Nie. To mój błąd. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.1
  SAY #51004 /* ~Wzdycha. "Posłuchaj... Wiem, że mam całą wieczność, aby tak stać i gawędzić sobie, niemal aż po kres wytrzymałości. Prawdą jest jednak to, że nie lubię mieć do czynienia z żywymi, rozumiesz? Biorę te rzeczy od żywych, zanim umrą, i sprzedaję innym truposzom. Więc jeżeli jest ci wszystko jedno, wolałbym zakończyć transakcję i sobie iść. W porządku? No. Chcesz zobaczyć, co mam? Dobra. Pokażę ci. W przeciwnym razie, daj mi spokój."~ */
  IF ~~ THEN REPLY #51006 /* ~"Pokaż mi, co masz."~ */ DO ~StartStore("Gaerien",Protagonist)
~ EXIT
  IF ~~ THEN REPLY #51005 /* ~"W takim razie zapomnij o tym."~ */ EXIT
END

IF WEIGHT #2 /* Triggers after states #: 5 even though they appear after this state */
~  NumTimesTalkedToGT(0)
~ THEN BEGIN 2 // from:
  SAY #51007 /* ~"O, to znowu ty. Czego chcesz tym razem?"~ */
  IF ~~ THEN REPLY #51008 /* ~"Czy odpowiesz na któreś z moich pytań?"~ */ GOTO 3
  IF ~~ THEN REPLY #51009 /* ~"Czy masz jakieś nowe towary do zaoferowania?"~ */ DO ~StartStore("Gaerien",Protagonist)
~ EXIT
  IF ~~ THEN REPLY #51010 /* ~"Nic. To mój błąd. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 2.0
  SAY #51011 /* ~"Nie." Patrzy dookoła za tobą. "Wolałbym raczej wpatrywać się w ścianę, naprawdę." Znów patrzy na ciebie. "Kupujesz coś, czy nie?"~ */
  IF ~~ THEN REPLY #51012 /* ~"Chyba tak."~ */ DO ~StartStore("Gaerien",Protagonist)
~ EXIT
  IF ~~ THEN REPLY #51034 /* ~"Nie, nie sądzę."~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from:
  SAY #51035 /* ~"W takim razie, miłego dnia." W dalszym ciągu gwiżdże bezgłośnie zza swych bielutkich zębów.~ */
  IF ~~ THEN REPLY #51036 /* ~"Miłego dnia."~ */ EXIT
END

IF WEIGHT #0 ~  Global("Undead_Alert","AR1500",1)
~ THEN BEGIN 5 // from:
  SAY #51037 /* ~Wygląda na to, że kupiec jest niewzruszony, pomimo zgiełku panującego dookoła. "Więc przybywasz, aby mnie uciszyć. No dalej. Nie zależy mi."~ */
  IF ~~ THEN REPLY #51038 /* ~"Naprawdę ci nie zależy?"~ */ GOTO 6
  IF ~~ THEN REPLY #51039 /* ~"Przekonajmy się."~ */ DO ~Enemy()
ForceAttack(Protagonist,"DNMerch")
~ EXIT
  IF ~~ THEN REPLY #51040 /* ~"W takim razie odchodzę. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 6 // from: 5.0
  SAY #51041 /* ~"Oczywiście, że nie. Dawno temu umarłem straszliwą śmiercią. Nie martwi mnie to, co może mnie spotkać z twoich rąk. Ból nie znaczy nic. Mam teraz tylko świadomość, ale nie cenię tego na tyle wysoko, abym miał z tobą o to walczyć."~ */
  IF ~~ THEN REPLY #51042 /* ~"Dobrze. Giń."~ */ DO ~Enemy()
ForceAttack(Protagonist,"DNMerch")
~ EXIT
  IF ~~ THEN REPLY #51043 /* ~"To interesujące. Zatem żegnaj."~ */ EXIT
END
