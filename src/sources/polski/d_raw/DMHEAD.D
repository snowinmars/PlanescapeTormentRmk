// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DMHEAD.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\pl_PL\dialog.tlk
// dialogF  : (none)

BEGIN ~DMHEAD~

IF ~  Global("Mertwyn_Head","GLOBAL",0)
~ THEN BEGIN 0 // from:
  SAY #42384 /* ~Ta mocna stalowa skrzynka ma z wierzchu gruby, skórzany uchwyt, ale nie widać, w jaki sposób można by ją otworzyć - jakby była zaspawana na amen. Z jednej strony jest kilka bardzo wąskich szparek, choć nie da rady zajrzeć przez nie do środka. Ze szparek wydobywa się słodkawo-gnijący zapach. Kiedy tak przyglądasz się pojemnikowi, ten nagle przesuwa się w twoich rękach. W środku coś się poruszyło! Z wnętrza dochodzi męski głos: "Hej, czy przypadkiem jest tam ktoś? Nazywam się Mertwyn... Jest tam ktoś? Hej!"~ */
  IF ~~ THEN REPLY #42385 /* ~"Tak... witaj..."~ */ DO ~SetGlobal("Mertwyn_Head","GLOBAL",1)
~ GOTO 1
  IF ~~ THEN REPLY #42386 /* ~Nie zwracaj uwagi na głos, odłóż przedmiot.~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #42387 /* ~"Mocom niech będą dzięki! Czy nie wpadło ci przypadkiem w oko moje ciało? Tak mi ciężko bez niego... włóczy się gdzieś po okolicy z głupim drewnianym czerepem na ramionach... pewnie już narobiło sobie odcisków od tego ustawicznego poszukiwania mnie!"~ */
  IF ~  Global("Mertwyn","GLOBAL",1)
~ THEN REPLY #42388 /* ~"Tak... w Gmachu Rozrywki."~ */ GOTO 2
  IF ~  Global("Mertwyn","GLOBAL",0)
~ THEN REPLY #42389 /* ~"Nie... nie sądzę..."~ */ GOTO 9
END

IF ~~ THEN BEGIN 2 // from: 1.0
  SAY #42390 /* ~"Mam zatem szczęście! Dobry panie, czy mógłbym jakoś przekonać cię, abyś mu mnie zwrócił?"~ */
  IF ~~ THEN REPLY #42391 /* ~"Tak. Zrobię to dla ciebie."~ */ DO ~IncrementGlobalOnceEx("GLOBALGood_Mertwyn_1","GLOBALGood",1)
SetGlobal("Mertwyn_Head","GLOBAL",2)
~ JOURNAL #41629 /* ~Zgodziłem się zanieść głowę Mertyna do jego ciała w Gmachu Rozrywki.~ */ GOTO 3
  IF ~~ THEN REPLY #42392 /* ~"Co ja z tego będę miał?"~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Mertwyn_1","GLOBALGood",-1)
~ GOTO 5
  IF ~~ THEN REPLY #42393 /* ~"Może później. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 2.0 5.0 6.0 7.0 8.0 9.0 10.0
  SAY #42394 /* ~"To wspaniale! Uprzejmie ci dziękuję, panie. Jeżeli nie masz nic przeciwko temu, panie, nie powiem teraz nic, dopóki nie połączę się ze swym ciałem."~ */
  IF ~~ THEN REPLY #42395 /* ~"Ale mam parę pytań..."~ */ GOTO 4
  IF ~~ THEN REPLY #42396 /* ~"W porządku... Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 3.0 11.0
  SAY #42397 /* ~"Na pewno, panie, na pewno. Zwłaszcza, że nieczęsto spotykasz oderwaną gadającą głowę w żelaznej skrzynce... Ale musisz poczekać. Wiesz, jak bardzo męczące jest takie oddzielenie od ciała? Tak więc stokrotnie przepraszam."~ */
  IF ~~ THEN REPLY #42398 /* ~"W takim razie dobrze. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 2.1 9.1 10.1
  SAY #42399 /* ~"Ech... moją wdzięczność?"~ */
  IF ~~ THEN REPLY #42400 /* ~"To wystarczy. Zabiorę cię do ciała."~ */ DO ~IncrementGlobalOnceEx("GLOBALGood_Mertwyn_1","GLOBALGood",1)
SetGlobal("Mertwyn_Head","GLOBAL",2)
~ JOURNAL #41629 /* ~Zgodziłem się zanieść głowę Mertyna do jego ciała w Gmachu Rozrywki.~ */ GOTO 3
  IF ~~ THEN REPLY #42401 /* ~"Miałem nadzieję na coś więcej."~ */ GOTO 6
END

IF ~~ THEN BEGIN 6 // from: 5.1
  SAY #42402 /* ~"No cóż, tak między ciałem a mną, jestem pewny, że dałoby się kogoś naciągnąć na coś, co by ci się spodobało. Ale czy nie mógłbyś mnie najpierw odnieść?"~ */
  IF ~~ THEN REPLY #42403 /* ~"No dobrze. Zrobię to."~ */ DO ~SetGlobal("Mertwyn_Head","GLOBAL",2)
~ JOURNAL #41629 /* ~Zgodziłem się zanieść głowę Mertyna do jego ciała w Gmachu Rozrywki.~ */ GOTO 3
  IF ~~ THEN REPLY #42404 /* ~"Daj mi coś w tej chwili."~ */ GOTO 7
END

IF ~~ THEN BEGIN 7 // from: 6.1
  SAY #42405 /* ~"No cóż... jak widzisz, tak naprawdę to nie *mam* niczego w tej chwili. *Jestem* po prostu zwykłą głową w zamkniętej żelaznej skrzynce."~ */
  IF ~~ THEN REPLY #42406 /* ~"No dobrze. Zrobię to."~ */ DO ~SetGlobal("Mertwyn_Head","GLOBAL",2)
~ JOURNAL #41629 /* ~Zgodziłem się zanieść głowę Mertyna do jego ciała w Gmachu Rozrywki.~ */ GOTO 3
  IF ~~ THEN REPLY #42407 /* ~"Świetnie... W takim razie gnij sobie w tej puszce, Mertwynie."~ */ GOTO 8
END

IF ~~ THEN BEGIN 8 // from: 7.1
  SAY #42408 /* ~"Zaczekaj, dobry panie! Zaczekaj! Mogę ci *coś* naraić, tylko potrzebuję wpierw wrócić do mojego ciała!"~ */
  IF ~~ THEN REPLY #42409 /* ~"No dobrze. Zrobię to."~ */ DO ~SetGlobal("Mertwyn_Head","GLOBAL",2)
~ GOTO 3
  IF ~~ THEN REPLY #42410 /* ~"Później o tym porozmawiamy. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 9 // from: 1.1
  SAY #42411 /* ~"O rety. Cóż, tego chyba nie można było oczekiwać. W każdym bądź razie, pewnie włóczy się gdzieś w pobliżu Gmachu Rozrywki, w północno-wschodnim zakątku Dzielnicy Urzędników. Czy mógłbym jakoś namówić cię, abyś mnie tam zaniósł, panie?"~ */
  IF ~~ THEN REPLY #42412 /* ~"Tak. Zrobię to dla ciebie."~ */ DO ~IncrementGlobalOnceEx("GLOBALGood_Mertwyn_1","GLOBALGood",1)
SetGlobal("Mertwyn_Head","GLOBAL",2)
~ JOURNAL #41629 /* ~Zgodziłem się zanieść głowę Mertyna do jego ciała w Gmachu Rozrywki.~ */ GOTO 3
  IF ~~ THEN REPLY #42413 /* ~"Co ja z tego będę miał?"~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Mertwyn_1","GLOBALGood",-1)
~ GOTO 5
  IF ~~ THEN REPLY #42414 /* ~"Może później. Żegnaj."~ */ EXIT
END

IF ~  Global("Mertwyn_Head","GLOBAL",1)
~ THEN BEGIN 10 // from:
  SAY #42415 /* ~Zapuszkowana głowa Mertwyna porusza się, kiedy podnosisz skrzynkę. "O, witam ponownie... jest jakaś szansa na to, abym mógł powrócić do mojego ciała? Zapewniam cię, moja *wdzięczność* będzie bezgraniczna..."~ */
  IF ~~ THEN REPLY #42416 /* ~"Tak. Zrobię to dla ciebie."~ */ DO ~IncrementGlobalOnceEx("GLOBALGood_Mertwyn_1","GLOBALGood",1)
SetGlobal("Mertwyn_Head","GLOBAL",2)
~ GOTO 3
  IF ~~ THEN REPLY #42417 /* ~"Co ja z tego będę miał?"~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Mertwyn_1","GLOBALGood",-1)
~ GOTO 5
  IF ~~ THEN REPLY #42418 /* ~"Może później. Żegnaj."~ */ EXIT
END

IF ~  Global("Mertwyn_Head","GLOBAL",2)
~ THEN BEGIN 11 // from:
  SAY #42419 /* ~Zapuszkowana głowa Mertwyna porusza się, kiedy podnosisz skrzynkę. "Czy jesteśmy już na miejscu? Hmm, jakoś nie *widzę* mojego ciała..."~ */
  IF ~~ THEN REPLY #42420 /* ~"Nie, ale mam parę pytań..."~ */ GOTO 4
  IF ~~ THEN REPLY #42421 /* ~"Jeszcze tam nie dotarliśmy. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 12 // from:
  SAY #42422 /* ~Nagle głos Mertwyna rozlega się echem w środku skrzynki. "Och! Och! Tam jest! Moje ciało! Tam, stary, tam!..."~ */
  IF ~~ THEN EXTERN ~DMERTWYN~ 7
END

IF ~~ THEN BEGIN 13 // from:
  SAY #42423 /* ~"Och, daj spokój, panie... To nie było zbyt miłe. Ponadto, jakiż będziesz miał pożytek z mojej głowy?"~ */
  IF ~~ THEN REPLY #42424 /* ~Pozwól, aby Mertwyn wziął swoją głowę.~ */ DO ~AddexperienceParty(8000)
SetGlobal("Mertwyn","GLOBAL",2)
DestroyPartyItem("Mertwyn",FALSE)
GiveGoldForce(200)
~ JOURNAL #56738 /* ~Udało mi się doprowadzić do połączenia głowy Mertwyna z jego ciałem i całość sprawia bardzo zadowalające wrażenie.~ */ EXTERN ~DMERTWYN~ 8
  IF ~~ THEN REPLY #42425 /* ~"Przykro mi, ale zostaniesz ze mną jeszcze przez chwilę. Żegnaj."~ */ EXIT
END
