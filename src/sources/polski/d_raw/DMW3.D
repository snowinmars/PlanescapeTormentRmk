// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DMW3.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\pl_PL\dialog.tlk
// dialogF  : (none)

BEGIN ~DMW3~

IF ~  NumTimesTalkedTo(0)
~ THEN BEGIN 0 // from:
  SAY #47965 /* ~Widzisz szczupłego, starszego mężczyznę, który obserwuje robotników na targu. Czasami wykrzykuje do nich polecenia, a oni w pośpiechu je wykonują. Kiedy się zbliżasz, marszczy brwi.~ */
  IF ~~ THEN REPLY #47966 /* ~"Witaj."~ */ GOTO 1
  IF ~~ THEN REPLY #47967 /* ~Zignoruj go.~ */ DO ~SetNumTimesTalkedTo(0)
~ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #47968 /* ~Chmurzy się jeszcze bardziej. "Znam cię, jesteś tym trepem, co chodzi wokoło i zadaje te wszystkie pytania." Patrzy na ciebie, jakby czekał, aż zaprzeczysz.~ */
  IF ~~ THEN REPLY #47970 /* ~"Tak, i do ciebie też mam kilka pytań..."~ */ GOTO 2
  IF ~~ THEN REPLY #47971 /* ~Wyniośle: "A co jeśli jestem?"~ */ GOTO 4
  IF ~~ THEN REPLY #47972 /* ~"Mniejsza z tym, żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.0 4.0
  SAY #47973 /* ~Potakuje zadowolony. "Nie mam ani czasu, ani odpowiedzi na twoje pytania. Proponuję byś odszedł, zanim wezwę straż... i nie zawracaj głowy moim ludziom, jasne?"~ */
  IF ~~ THEN REPLY #47974 /* ~"Więc wzywaj straże, poradzę sobie z nimi."~ */ GOTO 3
  IF ~~ THEN REPLY #47975 /* ~"Zatem odchodzę. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 2.0
  SAY #47976 /* ~Potakuje. "Jak sobie życzysz, ty świrowaty trepie. Straże! Mamy tu problem!"~ */
  IF ~~ THEN REPLY #47978 /* ~Odejdź zanim przyjdą.~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 1.1
  SAY #47979 /* ~Mruży oczy na ciebie. "Skoro nim jesteś, to wiedz, że jesteś szkodnikiem, a ja nie mam czasu na szkodniki. Moi ludzie również go nie mają, więc zostaw ich w spokoju."~ */
  IF ~~ THEN REPLY #47980 /* ~"Potrzebuje tylko odpowiedzi na kilka pytań..."~ */ GOTO 2
  IF ~~ THEN REPLY #47981 /* ~"Nie podobasz mi ani ty ani twoje nastawienie. Może nauczę cię paru dobrych manier?"~ */ GOTO 5
  IF ~~ THEN REPLY #47982 /* ~"Szpicuj sie, trepie! Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 4.1
  SAY #47983 /* ~Chce coś powiedzieć, ale się wstrzymuje, bo zaczyna się przyglądać twoim rozmiarom i bliznom, które pokrywają twoje ciało. Odwraca się, by spojrzeć na pobliską straż i otwiera usta...~ */
  IF ~~ THEN REPLY #47984 /* ~Prawda: "Mogę ci złamać ten twój chudy kark, zanim zdążysz otworzyć gębę..."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Marketman_1","GLOBALGood",-1)
~ GOTO 6
  IF ~~ THEN REPLY #47985 /* ~Blef: "Mogę ci złamać ten twój chudy kark, zanim zdążysz otworzyć gębę..."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Marketman_1","GLOBALLaw",-1)
~ GOTO 6
  IF ~~ THEN REPLY #47986 /* ~Odejdź zanim sytuacja wymknie się spod kontroli.~ */ EXIT
END

IF ~~ THEN BEGIN 6 // from: 5.0 5.1
  SAY #47987 /* ~Przygląda ci się uważnie i czujesz, jakby cię ktoś mierzył na wadze. "Ja... mam robotę do zrobienia i nie mam na to czasu. Miłego dnia życzę." Odwraca się i odchodzi.~ */
  IF ~~ THEN REPLY #47988 /* ~Odejdź.~ */ DO ~Enemy()
~ EXIT
END

IF ~  NumTimesTalkedToGT(0)
~ THEN BEGIN 7 // from:
  SAY #47989 /* ~Widzisz szczupłego, starszego mężczyznę, który obserwuje robotników na targu. Czasami wykrzykuje do nich polecenia, a oni w pośpiechu je wykonują. Kiedy się zbliżasz, marszczy brwi. "No proszę... znowu ten szkodnik. Nie mam ci nic do powiedzenia, trepie. Odejdź precz!"~ */
  IF ~~ THEN REPLY #47990 /* ~Odejdź.~ */ EXIT
END
