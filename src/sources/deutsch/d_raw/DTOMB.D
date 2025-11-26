// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DTOMB.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\de_DE\dialog.tlk
// dialogF  : (none)

BEGIN ~DTOMB~

IF ~  Global("CW_Statue_Cursed","GLOBAL",0)
~ THEN BEGIN 0 // from: 1.1 4.1 5.1
  SAY #31524 /* ~Die Statue sieht aus, als sei sie im Begriff, eine zornige Ansprache zu halten. Der Bildhauer hat die wesentlichen Gesichtszüge des Zorns brillant eingefangen. Es muß Monate gedauert haben, allein die gemeißelten Linien um den Hals und auf der Stirn richtig hinzubekommen. Feine Risse laufen über die gesamte Statue, und an ihrem Sockel ist eine Tafel.~ */
  IF ~  PartyHasItem("Gsalve")
Global("CW_Know_Curse","AR0608",1)
~ THEN REPLY #31530 /* ~Bestreiche die Statue mit der Gorgonischen Salbe.~ */ DO ~DestroyPartyItem("Gsalve",TRUE)
IncrementGlobalOnceEx("GLOBALChaotic_Statue_1","GLOBALLaw",-1)
SetGlobal("CW_Statue_Cursed ","GLOBAL",1)
SetGlobal("View_Art_Tomb","AR0608",1)
~ GOTO 6
  IF ~~ THEN REPLY #31531 /* ~Lies, was auf der Tafel steht.~ */ DO ~SetGlobal("CW_Know_Curse","AR0608",1)
SetGlobal("View_Art_Tomb","AR0608",1)
~ GOTO 1
  IF ~  Global("CW_Got_Splinter","AR0608",0)
~ THEN REPLY #31532 /* ~Sieh dir die Risse genau an.~ */ DO ~SetGlobal("View_Art_Tomb","AR0608",1)
~ GOTO 2
  IF ~~ THEN REPLY #31533 /* ~Laß die Statue in Ruhe.~ */ DO ~SetGlobal("View_Art_Tomb","AR0608",1)
~ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.1 2.2 4.2 5.2
  SAY #31534 /* ~Auf der Tafel steht: "Diese Statue soll das endgültige Schicksal des ätherserianischen Hexers Gangroighydon sein. Nachdem er auf der Höhe seines Traumwahnsinns von einer Konklave rivalisierender Hexer angegriffen wurde, wurde er mit einem Zauber gefangengesetzt, der sein Fleisch in Stein verwandelte. Gangroighydon soll mit einem letzten, schrecklichen Fluch auf seinen Lippen erstarrt sein, einem so schrecklichen Fluch, daß er *niemals* über die Lippen eines lebenden Menschen hätte kommen sollen."~ */
  IF ~  PartyHasItem("Gsalve")
Global("CW_Know_Curse","AR0608",1)
~ THEN REPLY #31535 /* ~Bestreiche die Statue mit der Gorgonischen Salbe.~ */ DO ~DestroyPartyItem("Gsalve",TRUE)
IncrementGlobalOnceEx("GLOBALChaotic_Statue_1","GLOBALLaw",-1)
SetGlobal("CW_Statue_Cursed ","GLOBAL",1)
~ GOTO 6
  IF ~~ THEN REPLY #31536 /* ~Sieh dir die Statue genau an.~ */ GOTO 0
  IF ~~ THEN REPLY #31537 /* ~Laß die Statue in Ruhe.~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 0.2
  SAY #31538 /* ~Du siehst dir die Risse genau an, die die Oberfläche der Statue wie ein Netz feiner, schwarzer Venen überziehen. An einer Stelle, in der Nähe der Arminnenseite, scheint ein ganzer Steinsplitter kurz vor dem Abplatzen zu sein.~ */
  IF ~  PartyHasItem("Fhammer")
~ THEN REPLY #31539 /* ~Brich den Splitter ab.~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Statue_2","GLOBALLaw",-1)
~ GOTO 3
  IF ~  !PartyHasItem("Fhammer")
~ THEN REPLY #31540 /* ~Brich den Splitter ab.~ */ GOTO 5
  IF ~~ THEN REPLY #31541 /* ~Lies, was auf der Tafel steht.~ */ GOTO 1
  IF ~~ THEN REPLY #31542 /* ~Laß die Statue in Ruhe.~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 2.0
  SAY #31543 /* ~Du greifst nach dem Teil des Unterarms, von dem die Risse ausgehen, hältst ihn gut fest und schlägst mit deinem Schmiedehammer auf ihn. Das Geräusch von Metall auf Stein ist kaum hörbar, und ein Splitter von der Größe eines Dolchs platzt von der Statue ab.~ */
  IF ~~ THEN REPLY #31544 /* ~"Hab' ihn..."~ */ DO ~GiveItemCreate("Splinter",Protagonist,15,0,0)
SetGlobal("CW_Got_Splinter","AR0608",1)
AddexperienceParty(4000)
~ GOTO 4
END

IF ~~ THEN BEGIN 4 // from: 3.0
  SAY #31545 /* ~Als er sich ablöst, spürst du, wie Wassertropfen über deinen Handrücken laufen... du siehst, wie sich in den Augen der Statue eine Träne zeigt, als sich unter deinen Händen ein Splitter von dem Arm löst. Schnell und leise steckst du den Splitter weg und wendest dich von der weinenden Statue ab.~ */
  IF ~  PartyHasItem("Gsalve")
Global("CW_Know_Curse","AR0608",1)
~ THEN REPLY #31546 /* ~Bestreiche die Statue mit der Gorgonischen Salbe.~ */ DO ~DestroyPartyItem("Gsalve",TRUE)
IncrementGlobalOnceEx("GLOBALChaotic_Statue_1","GLOBALLaw",-1)
SetGlobal("CW_Statue_Cursed ","GLOBAL",1)
~ GOTO 6
  IF ~~ THEN REPLY #31547 /* ~Sieh dir die Statue genau an.~ */ GOTO 0
  IF ~~ THEN REPLY #31548 /* ~Lies, was auf der Tafel steht.~ */ GOTO 1
  IF ~~ THEN REPLY #31549 /* ~Laß die Statue in Ruhe.~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 2.1
  SAY #31550 /* ~Du greifst nach dem Teil des Unterarms, von dem die Risse ausgehen, hältst ihn gut fest und ziehst kräftig. Es passiert nichts. Du wirst einen kleinen Hammer brauchen, um den Stein abzubrechen, denn zwischen dem Arm und Körper der Statue ist nicht viel Platz. Ein großer Hammer... zum Beispiel einer für einen Kampf... nützt hier nichts.~ */
  IF ~  PartyHasItem("Gsalve")
Global("CW_Know_Curse","AR0608",1)
~ THEN REPLY #31551 /* ~Bestreiche die Statue mit der Gorgonischen Salbe.~ */ DO ~DestroyPartyItem("Gsalve",TRUE)
IncrementGlobalOnceEx("GLOBALChaotic_Statue_1","GLOBALLaw",-1)
SetGlobal("CW_Statue_Cursed ","GLOBAL",1)
~ GOTO 6
  IF ~~ THEN REPLY #31552 /* ~Sieh dir die Statue genau an.~ */ GOTO 0
  IF ~~ THEN REPLY #31556 /* ~Lies, was auf der Tafel steht.~ */ GOTO 1
  IF ~~ THEN REPLY #31557 /* ~Laß die Statue in Ruhe.~ */ EXIT
END

IF ~~ THEN BEGIN 6 // from: 0.0 1.0 4.0 5.0
  SAY #31558 /* ~Du bestreichst die Statue mit der stinkenden Salbe. Um die Statue erscheint ein seltsames Schimmern und du siehst, wie die Statue Luft holt und die Augen von Gangroighydon sich mit einem lodernden, rachedürstigen Wahnsinn füllen.~ */
  IF ~~ THEN REPLY #31559 /* ~"Sei gegrüßt..."~ */ GOTO 7
  IF ~~ THEN REPLY #31560 /* ~Halte deine Ohren zu.~ */ GOTO 7
  IF ~~ THEN REPLY #31561 /* ~Lauf, als ob der Teufel hinter dir her wäre.~ */ GOTO 7
END

IF ~~ THEN BEGIN 7 // from: 6.0 6.1 6.2
  SAY #31562 /* ~Bevor du irgendwas tun kannst, strömt ein flammender Strom von Worten von den Lippen des Hexers. Während er spricht, spürst du, wie dich eine quälende Empfindung, gleich einer plötzlichen Welle glühender Hitze, überkommt und wie eine blasenwerfende Wunde in deine Haut sinkt. Blindheit fällt über dich, als deine Augen bersten und wie aufgeschlagene Eier aus ihren Höhlen laufen... du hörst jemanden schreien und stellst schnell fest, daß du das bist...~ */
  IF ~  NearbyDialog("DMorte")
~ THEN REPLY #31563 /* ~Warte, bis der Horror endlich vorbei ist.~ */ DO ~AddexperienceParty(4000)
IncrementGlobal("Morte_Taunt","GLOBAL",2)
~ GOTO 8
  IF ~  !NearbyDialog("DMorte")
~ THEN REPLY #31564 /* ~Dunkelheit umgibt dich, du bist ein Opfer von Gangroighydrons Schrecklichem Fluch geworden.~ */ DO ~AddexperienceParty(4000)
OpenDoor("Statue")
Kill(Protagonist)
~ EXIT
END

IF ~~ THEN BEGIN 8 // from: 7.0
  SAY #31565 /* ~Das Letzte was du sogar noch über deinen eigenen Schreien hörst, ist Morte, der ruft...~ */
  IF ~~ THEN EXTERN ~DMORTE~ 298
END

IF ~  Global("CW_Statue_Cursed","GLOBAL",1)
~ THEN BEGIN 9 // from:
  SAY #66515 /* ~Die 'Statue' -in Wahrheit der einst versteinerte Magier Gangroighydon - ist einfach verschwunden. Vermutlich hat sie sich einfach davongemacht, ohne auch nur ein Wort der Entschuldigung zu hinterlassen.~ */
  IF ~~ THEN REPLY #66516 /* ~Geh weg.~ */ EXIT
END
