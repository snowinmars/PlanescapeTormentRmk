// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DIMPULSE.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\pl_PL\dialog.tlk
// dialogF  : (none)

BEGIN ~DIMPULSE~

IF ~  True()
~ THEN BEGIN 0 // from:
  SAY #52690 /* ~Ogromny kryształ unosi się w powietrzu nad kraterem, emitując pulsujące, widmowe światło. Hipnotyczna pulsacja przywodzi ci na myśl bicie serca, ale serca słabego i schorowanego. Promienie światła jak wszędobylskie palce sięgają wszystkich zakamarków pokoju, a każdy z nich zapala żywe blaski w zrujnowanych obliczach posągów, stojących dookoła.~ */
  IF ~  GlobalGT("Fortress_Ignus_Battle","GLOBAL",0)
!Dead("IgnusF")
~ THEN REPLY #52691 /* ~Dotknij kryształu...~ */ GOTO 2
  IF ~  GlobalGT("Fortress_Vhailor_Battle","GLOBAL",0)
!Dead("VhailF")
~ THEN REPLY #64586 /* ~Dotknij kryształu...~ */ GOTO 3
  IF ~  GlobalGT("Fortress_Ignus_Battle","GLOBAL",0)
Dead("IgnusF")
~ THEN REPLY #64587 /* ~Dotknij kryształu...~ */ GOTO 1
  IF ~  GlobalGT("Fortress_Vhailor_Battle","GLOBAL",0)
Dead("VhailF")
~ THEN REPLY #64588 /* ~Dotknij kryształu...~ */ GOTO 1
  IF ~~ THEN REPLY #64589 /* ~Zostaw kryształ w spokoju.~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.2 0.3
  SAY #59895 /* ~Kiedy dotykasz kryształu, czujesz najpierw zawrót głowy, potem zaś fala zimna oblewa twoje ciało i odkrywasz, że twoje mięśnie zesztywniały, a dłoń przywarła jak skuta lodem do powierzchni kryształu. Zapada chwila ciszy, którą niebawem mąci ostry ból rozszczepiający się w całym twoim ciele jak pęknięcia tafli lodowej - czujesz jakby twoja świadomość została ścięta lodem, a potem *roztrzaskana*.~ */
  IF ~~ THEN REPLY #59896 /* ~Zapadnij w ciemność...~ */ DO ~TeleportParty("AR1203",[932.703],14)
~ EXIT
END

IF ~~ THEN BEGIN 2 // from: 0.0
  SAY #64590 /* ~Kiedy dotykasz kryształu, z jego wnętrza bucha podmuch gorąca, oślepiając twoje oczy pomarańczowo-białym blaskiem. Cofasz dłoń i widzisz, że kryształ płonie, jakby dotknęła go ognista magia Ignusa. W środku gorejącego kryształu dostrzegasz nikłe biało-niebieskie światło, roztańczone i rozmigotane jak języki ognia.~ */
  IF ~~ THEN REPLY #64591 /* ~"Wygląda na to, że najpierw będę musiał umieścić cię w księdze umarłych, Ignusie..."~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 0.1
  SAY #64592 /* ~Kiedy dotykasz kryształu, poraża cię nagły chłód, połączony z lśnieniem przeraźliwie jasnego światła. Cofasz dłoń i widzisz, że cały kryształ pogrąża się w lodowatym zimnie, podobnym do grobowego chłodu wnętrza zbroi Vhailora. W środku kryształu dostrzegasz wątłe, migotliwe przebłyski biało-niebieskich światełek, które nikną i pojawiają się niczym ślepia jakiejś wielkiej bestii.~ */
  IF ~~ THEN REPLY #64593 /* ~"Wygląda na to, że najpierw będę musiał umieścić cię w księdze umarłych, Vhailorze..."~ */ EXIT
END
