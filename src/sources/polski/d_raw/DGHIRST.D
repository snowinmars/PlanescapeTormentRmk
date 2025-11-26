// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DGHIRST.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\pl_PL\dialog.tlk
// dialogF  : (none)

BEGIN ~DGHIRST~

IF ~  True()
~ THEN BEGIN 0 // from:
  SAY #58302 /* ~Widzisz wysoką, smukłą postać o długich ramionach i wydłużonej głowie. Z jej przerośniętych ust wystaje kilka kłów, a jej palce kończą się długimi szponami. Kiedy się do niej zbliżasz, potwór nie spuszcza z ciebie wzroku.~ */
  IF ~~ THEN REPLY #58304 /* ~"Witaj."~ */ GOTO 1
  IF ~~ THEN REPLY #58305 /* ~Nie zwracaj na tego stwora uwagi.~ */ DO ~Enemy()
Attack(Protagonist)
~ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #58308 /* ~Stwór pochyla się do przodu i cię obwąchuje, a potem wyciąga zakończoną szponami rękę i próbuje cię uszczypać. W końcu oblizuje sobie usta. "Jesteś trochę twardy, ale i tak możesz być smaczny."~ */
  IF ~~ THEN REPLY #58312 /* ~"Mam do ciebie parę pytań."~ */ GOTO 2
  IF ~~ THEN REPLY #58313 /* ~"Muszę już iść. Żegnaj."~ */ DO ~Enemy()
Attack(Protagonist)
~ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.0 4.0 6.0 7.0 8.2 9.1 10.1 11.0 12.0 13.1 14.0 16.1 17.0 18.0
  SAY #58314 /* ~Stwór szczerzy zęby w uśmiechu. "Nie mam nic przeciwko rozmowie przed jedzeniem. Co chcesz wiedzieć?"~ */
  IF ~~ THEN REPLY #58315 /* ~"Masz zamiar mnie zjeść?"~ */ GOTO 3
  IF ~~ THEN REPLY #58316 /* ~"Kim jesteś?"~ */ GOTO 7
  IF ~~ THEN REPLY #58317 /* ~"Czym jesteś?"~ */ GOTO 8
  IF ~~ THEN REPLY #58318 /* ~"Co tu robisz?"~ */ GOTO 9
  IF ~~ THEN REPLY #58319 /* ~"Co możesz mi powiedzieć o Tartarze?"~ */ GOTO 12
  IF ~~ THEN REPLY #58320 /* ~"Co możesz mi powiedzieć o tych katakumbach?"~ */ GOTO 18
  IF ~  GlobalGT("Snuff_Ghrist","GLOBAL",0)
~ THEN REPLY #58321 /* ~"Tam na dole jest pewien bimbrownik, który chce twojej śmierci."~ */ GOTO 13
  IF ~~ THEN REPLY #58322 /* ~"Muszę już iść. Żegnaj."~ */ GOTO 15
END

IF ~~ THEN BEGIN 3 // from: 2.0
  SAY #58323 /* ~Na twarzy potwora pojawia się jeszcze większy uśmiech. "Tak, jak tylko skończysz zadawać te swoje głupie pytania."~ */
  IF ~~ THEN REPLY #58324 /* ~"Możesz spróbować, ale jak cię wybebeszę, to umrzesz z bólu."~ */ GOTO 4
  IF ~~ THEN REPLY #58325 /* ~"Nie chcę cię skrzywdzić."~ */ GOTO 5
  IF ~~ THEN REPLY #58326 /* ~"Żegnaj."~ */ DO ~Enemy()
Attack(Protagonist)
~ EXIT
END

IF ~~ THEN BEGIN 4 // from: 3.0 6.1
  SAY #58327 /* ~Potwór wzrusza ramionami. "I tak spróbuję."~ */
  IF ~~ THEN REPLY #58328 /* ~"Mam jeszcze parę pytań..."~ */ GOTO 2
  IF ~~ THEN REPLY #58329 /* ~Zaatakuj stwora.~ */ DO ~Enemy()
ForceAttack(Myself,Protagonist)
~ EXIT
END

IF ~~ THEN BEGIN 5 // from: 3.1
  SAY #58330 /* ~Potwór wzrusza ramionami. "To szkoda. Zamierzam cię zabić."~ */
  IF ~~ THEN REPLY #58331 /* ~"Dlaczego?"~ */ GOTO 6
  IF ~~ THEN REPLY #58332 /* ~"Żegnaj."~ */ DO ~Enemy()
Attack(Protagonist)
~ EXIT
END

IF ~~ THEN BEGIN 6 // from: 5.0
  SAY #58333 /* ~Potwór jeszcze raz wzrusza ramionami. "Bez żadnego powodu... Po prostu znalazłeś się w złym miejscu w złym czasie." Na chwilę przerywa. "Albo we właściwym miejscu we właściwym czasie." Potem dodaje szczerząc zęby. "Zależy jak na to patrzeć."~ */
  IF ~~ THEN REPLY #58334 /* ~"Mam jeszcze parę pytań..."~ */ GOTO 2
  IF ~~ THEN REPLY #58335 /* ~"Niełatwo mnie zabić, ale jak chcesz, to możesz spróbować."~ */ GOTO 4
END

IF ~~ THEN BEGIN 7 // from: 2.1
  SAY #58336 /* ~Potwór dłubie sobie w nosi, nie zdejmując z ciebie wzroku. "Grist..."~ */
  IF ~~ THEN REPLY #58337 /* ~"Mam jeszcze parę pytań..."~ */ GOTO 2
  IF ~~ THEN REPLY #58338 /* ~"Muszę już iść. Żegnaj."~ */ DO ~Enemy()
Attack(Protagonist)
~ EXIT
END

IF ~~ THEN BEGIN 8 // from: 2.2
  SAY #58339 /* ~Stwór podnosi rękę i leniwie drapie się pod pachą. "Jestem gerelethem... Farastu."~ */
  IF ~~ THEN REPLY #58340 /* ~"Co to jest gereleth?"~ */ GOTO 16
  IF ~~ THEN REPLY #58341 /* ~"Co to jest farastu?"~ */ GOTO 16
  IF ~~ THEN REPLY #58342 /* ~"Mam jeszcze parę pytań..."~ */ GOTO 2
  IF ~~ THEN REPLY #58343 /* ~"Muszę już iść. Żegnaj."~ */ DO ~Enemy()
Attack(Protagonist)
~ EXIT
END

IF ~~ THEN BEGIN 9 // from: 2.3
  SAY #58344 /* ~Stwór ziewa, a twoje ciało owiewa fala cuchnącego oddechu. "Szukam devy. Dobre jedzenie. Ma strasznie dobry szpik w kościach."~ */
  IF ~~ THEN REPLY #58345 /* ~"Chcesz pożreć Triasa?"~ */ GOTO 10
  IF ~~ THEN REPLY #58346 /* ~"Mam jeszcze parę pytań..."~ */ GOTO 2
  IF ~~ THEN REPLY #58347 /* ~"Żegnaj."~ */ DO ~Enemy()
Attack(Protagonist)
~ EXIT
END

IF ~~ THEN BEGIN 10 // from: 9.0
  SAY #58348 /* ~Stwór spogląda na ciebie znudzonym wzrokiem. "Nie, devę. Nie obchodzi mnie żaden trias."~ */
  IF ~~ THEN REPLY #58349 /* ~"Trias to imię tego devy."~ */ GOTO 11
  IF ~~ THEN REPLY #58350 /* ~"Mam jeszcze parę pytań..."~ */ GOTO 2
  IF ~~ THEN REPLY #58351 /* ~"Żegnaj."~ */ DO ~Enemy()
Attack(Protagonist)
~ EXIT
END

IF ~~ THEN BEGIN 11 // from: 10.0
  SAY #58352 /* ~Stwór wzrusza ramionami i wyciąga rękę, żeby się podrapać po plecach. "Trias, śmias. Jakbyś tego nie nazwał, dla mnie to po prostu mięsko na obiad."~ */
  IF ~~ THEN REPLY #58353 /* ~"Rozumiem. Mam jeszcze parę pytań..."~ */ GOTO 2
  IF ~~ THEN REPLY #58354 /* ~"Żegnaj."~ */ DO ~Enemy()
Attack(Protagonist)
~ EXIT
END

IF ~~ THEN BEGIN 12 // from: 2.4
  SAY #58355 /* ~Stwór otwiera paszczę i zaczyna coś sobie wydłubywać z zębów. Kiedy odpowiada na twoje pytanie, ledwo możesz go zrozumieć. "Dom. Mój dom, nie twój. Nie jesteś mile widziany w Tartarze."~ */
  IF ~~ THEN REPLY #58356 /* ~"Mam jeszcze parę pytań..."~ */ GOTO 2
  IF ~~ THEN REPLY #58357 /* ~"Żegnaj."~ */ DO ~Enemy()
Attack(Protagonist)
~ EXIT
END

IF ~~ THEN BEGIN 13 // from: 2.6
  SAY #58358 /* ~Stwór patrzy na ciebie znudzony, a potem przytakuje. "Wiem... próbowałem go kiedyś zjeść. Uciekł. Próbowałem go złapać, ale jego kryjówkę chronią pułapki." Potwór wzrusza ramionami. "Jestem cierpliwy. Któregoś dnia musi popełnić błąd."~ */
  IF ~  GlobalGT("Snuff_Ghrist","GLOBAL",3)
~ THEN REPLY #58359 /* ~"Wysłał mnie, żebym cię zabił."~ */ GOTO 14
  IF ~~ THEN REPLY #58360 /* ~"Mam jeszcze parę pytań..."~ */ GOTO 2
  IF ~~ THEN REPLY #58361 /* ~"Żegnaj."~ */ DO ~Enemy()
Attack(Protagonist)
~ EXIT
END

IF ~~ THEN BEGIN 14 // from: 13.0
  SAY #58362 /* ~Stwór wydmuchuje sobie nos w łapę, a potem odrzuca jej zawartość na bok i wyciera dłoń o skórę. "Ach... No to mam jeszcze jeden powód, żeby zabić tego skurla... i ciebie też."~ */
  IF ~~ THEN REPLY #58363 /* ~"Mam jeszcze parę pytań..."~ */ GOTO 2
  IF ~~ THEN REPLY #58364 /* ~"Żegnaj."~ */ DO ~Enemy()
Attack(Protagonist)
~ EXIT
END

IF ~~ THEN BEGIN 15 // from: 2.7
  SAY #58365 /* ~Na twarzy stwora pojawia się szeroki uśmiech. "No dobra. Znudziłem się już tymi pytaniami, czas na jedzenie." Stworzenie rzuca się do ataku.~ */
  IF ~~ THEN REPLY #58366 /* ~Broń się.~ */ DO ~Enemy()
Attack(Protagonist)
ForceAttack(Myself,Protagonist)
~ EXIT
END

IF ~~ THEN BEGIN 16 // from: 8.0 8.1
  SAY #58367 /* ~Stwór beka, a powietrze wypełnia się okropnym smrodem. Potem leniwie wskazuje na siebie palcem. "Jestem gerelethem. Moja kasta to farastu."~ */
  IF ~~ THEN REPLY #58368 /* ~"Jakie są jeszcze inne kasty?"~ */ GOTO 17
  IF ~~ THEN REPLY #58369 /* ~"Mam kilka pytań..."~ */ GOTO 2
  IF ~~ THEN REPLY #58370 /* ~"Żegnaj."~ */ DO ~Enemy()
Attack(Protagonist)
~ EXIT
END

IF ~~ THEN BEGIN 17 // from: 16.0
  SAY #58371 /* ~Stwór przygląda się z zaciekawieniem swoim szponom, a potem wzrusza ramionami. "Na nic ci się to nie przyda, bo będę ostatnim gerelethem, jakiego zobaczysz w swoim życiu."~ */
  IF ~~ THEN REPLY #58372 /* ~"Mam jeszcze parę pytań..."~ */ GOTO 2
  IF ~~ THEN REPLY #58373 /* ~"Żegnaj."~ */ DO ~Enemy()
Attack(Protagonist)
~ EXIT
END

IF ~~ THEN BEGIN 18 // from: 2.5
  SAY #58374 /* ~Stwór spogląda wkoło, a potem wzrusza ramionami. "Nic. Łażę i szukam devy."~ */
  IF ~~ THEN REPLY #58375 /* ~"Mam jeszcze parę pytań..."~ */ GOTO 2
  IF ~~ THEN REPLY #58376 /* ~"Żegnaj."~ */ DO ~Enemy()
Attack(Protagonist)
~ EXIT
END
