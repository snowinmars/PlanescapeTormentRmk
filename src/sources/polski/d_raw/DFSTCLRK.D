// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DFSTCLRK.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\pl_PL\dialog.tlk
// dialogF  : (none)

BEGIN ~DFSTCLRK~

IF ~  Global("Sensate_Access","GLOBAL",0)
~ THEN BEGIN 0 // from:
  SAY #49532 /* ~Atrakcyjna młoda kobieta miło się uśmiecha. "Mogę panu w czymś pomóc?"~ */
  IF ~~ THEN REPLY #49533 /* ~"Jak mogę się dostać do któregoś z tych pomieszczeń?"~ */ GOTO 1
  IF ~~ THEN REPLY #49534 /* ~"Mogę odpocząć tutaj?"~ */ GOTO 2
  IF ~~ THEN REPLY #49535 /* ~"Nie teraz. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #49536 /* ~"Musiałby pan być członkiem Stronnictwa Doznań, zatwierdzonym przez Drzazgę. Jeśli chcesz z nim porozmawiać, to jest zaraz za wejściem do Gmachu Rozrywki."~ */
  IF ~~ THEN REPLY #49537 /* ~"Jednak mogę tu odpocząć?~ */ GOTO 2
  IF ~~ THEN REPLY #49538 /* ~"W takim razie żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 0.1 1.0
  SAY #49539 /* ~"Gmach Rozrywki często wynajmuje niewykorzystane komnaty; mógłby pan oczywiście w nich odpocząć, jeśli któraś jest wolna. Mam dla pana sprawdzić?"~ */
  IF ~~ THEN REPLY #49540 /* ~"Tak. Proszę."~ */ DO ~StartStore("Festhall",Protagonist)
~ EXIT
  IF ~~ THEN REPLY #64176 /* ~"Nie, dziękuję. Żegnaj."~ */ EXIT
END

IF ~  Global("Sensate_Access","GLOBAL",1)
HasItem("PCs_Key",Myself)
~ THEN BEGIN 3 // from:
  SAY #49541 /* ~Atrakcyjna młoda kobieta uśmiecha się miło. "Witaj, panie." Zamyka oczy i wertuje grubą księgę, zatrzymując się na czymś co wygląda na przypadkową stronę; znowu otwiera oczy. "Ach... Oto klucz do pańskiego pokoju..." Wręcza ci niewielki klucz. "Najbardziej wysunięta na wschód komnata czeka już od pewnego czasu na pański powrót. Chciałby pan teraz odpocząć?"~ */
  IF ~~ THEN REPLY #49542 /* ~"Tak, to byłoby miłe."~ */ DO ~GiveItem("PCs_Key",Protagonist)
FadeToColor([20.0],0)
Wait(1)
RestPartyEx(0,10,FALSE)
FadeFromColor([20.0],0)
~ EXIT
  IF ~~ THEN REPLY #49543 /* ~"Od pewnego czasu czeka na mój powrót?"~ */ DO ~GiveItem("PCs_Key",Protagonist)
~ GOTO 4
  IF ~~ THEN REPLY #49544 /* ~"Nie teraz. Żegnaj."~ */ DO ~GiveItem("PCs_Key",Protagonist)
~ EXIT
END

IF ~~ THEN BEGIN 4 // from: 3.1
  SAY #49545 /* ~Urzędniczka dziwnie na ciebie spogląda. "Moja księga wskazuje, że to pański klucz i to już od bardzo, bardzo dawna. Jeśli tak nie jest, to może się pomyliłam. Chciałby pan teraz odpocząć?"~ */
  IF ~~ THEN REPLY #49546 /* ~"Tak, to byłoby miłe."~ */ DO ~FadeToColor([20.0],0)
Wait(1)
RestPartyEx(0,10,FALSE)
FadeFromColor([20.0],0)
~ EXIT
  IF ~~ THEN REPLY #49547 /* ~"Nie teraz. Żegnaj."~ */ EXIT
END

IF ~  Global("Sensate_Access","GLOBAL",1)
!HasItem("PCs_Key",Myself)
~ THEN BEGIN 5 // from:
  SAY #49548 /* ~Atrakcyjna młoda kobieta miło się uśmiecha. "Witaj, panie. Chciałby pan teraz odpocząć?"~ */
  IF ~~ THEN REPLY #49549 /* ~"Tak, to byłoby miłe."~ */ DO ~FadeToColor([20.0],0)
Wait(1)
RestPartyEx(0,10,FALSE)
FadeFromColor([20.0],0)
~ EXIT
  IF ~~ THEN REPLY #49550 /* ~"Nie teraz. Żegnaj."~ */ EXIT
END
