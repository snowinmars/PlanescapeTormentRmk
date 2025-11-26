// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DEIVENE.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\de_DE\dialog.tlk
// dialogF  : (none)

BEGIN ~DEIVENE~

IF ~  Global("EiVene","GLOBAL",0)
~ THEN BEGIN 0 // from:
  SAY #3404 /* ~Du siehst eine zierliche junge Frau mit blasser Gesichtsfarbe. Mit ihren eingefallenen Wangen und dem dürren Hals sieht sie aus, als wäre sie kurz vor dem Verhungern. Sie scheint eifrig damit beschäftigt zu sein, die vor ihr liegende Leiche zu zerlegen, wobei sie mit einem Finger im Oberkörper herumstochert.~ */
  IF ~~ THEN REPLY #3406 /* ~"Sei gegrüßt."~ */ GOTO 1
  IF ~~ THEN REPLY #3407 /* ~Laß sie in Ruhe.~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #3410 /* ~Die Frau antwortet nicht... sie scheint zu eifrig mit der vor ihr liegenden Leiche beschäftigt zu sein. Als du sie dabei beobachtest, fällt dein Blick plötzlich auf ihre Hände... anstelle von Fingern hat sie Krallen, die sich in schneller Abfolge wie Messer in die Brusthöhle der Leiche bohren und ein Organ nach dem anderen herausholen.~ */
  IF ~  !NearbyDialog("DMorte")
~ THEN REPLY #3412 /* ~"Ich sagte: Sei gegrüßt."~ */ GOTO 2
  IF ~  NearbyDialog("DMorte")
~ THEN REPLY #3413 /* ~"Ich sagte: Sei gegrüßt."~ */ GOTO 3
  IF ~  !NearbyDialog("DMorte")
~ THEN REPLY #3414 /* ~"Was ist denn mit deinen Händen los?"~ */ GOTO 2
  IF ~  NearbyDialog("DMorte")
~ THEN REPLY #3415 /* ~"Was ist denn mit deinen Händen los?"~ */ GOTO 19
  IF ~~ THEN REPLY #3416 /* ~Laß sie in Ruhe.~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.0 1.2
  SAY #3417 /* ~Die Frau reagiert nicht.~ */
  IF ~~ THEN REPLY #3418 /* ~Klopf der Frau auf die Schulter, damit sie dich bemerkt.~ */ DO ~FaceObject(Protagonist)
~ GOTO 4
  IF ~~ THEN REPLY #3419 /* ~Laß sie in Ruhe.~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 1.1
  SAY #3420 /* ~Die Frau reagiert nicht.
~ */
  IF ~~ THEN EXTERN ~DMORTE~ 55
END

IF ~~ THEN BEGIN 4 // from: 2.0
  SAY #3421 /* ~Die Frau zuckt zusammen und dreht sich blitzschnell zu dir um... ihre Augen sind eitrig-gelb, mit kleinen orangefarbenen Punkten als Pupille. Als sie dich sieht, macht sie zuerst eine überraschte, dann eine verärgerte Miene. Sie wirft dir einen mißbilligenden Blick zu.~ */
  IF ~~ THEN REPLY #3422 /* ~"Äh... sei gegrüßt."~ */ DO ~SetGlobal("EiVene","GLOBAL",1)
~ GOTO 5
END

IF ~~ THEN BEGIN 5 // from: 4.0
  SAY #3423 /* ~Sie scheint dich nicht gehört zu haben. Sie beugt sich nach vorne und kneift ihre Augen zusammen, als ob sie versuchen würde, dich zu erkennen... sie scheint extrem kurzsichtig zu sein. "Du..." Sie schlägt ihre Krallen aufeinander und macht dann eine merkwürdige Bewegung mit ihren Händen. "Du suchen FADEN und BAL-samieröl, und bringen beides HIER zu Ei-Vene. Geh... geh... geh." 

^NHINWEIS: Dir ist eine Aufgabe zugewiesen worden. Aufgaben werden in deinem Tagebuch und in deinem Journal im Abschnitt "Aufgaben" angezeigt. Wenn du alle Aufgaben ansehen möchtest, die dir erteilt wurden sind, sowie ihren Status, wähle "Aufgaben" aus dem Menü des Journals aus.^-~ */
  IF ~  PartyHasItem("Embalm")
PartyHasItem("Needle")
~ THEN REPLY #3424 /* ~Gib ihr den Faden und das Balsamierungsöl.~ */ DO ~TakePartyItemNum("Embalm",1)
TakePartyItemNum("Needle",1)
SetGlobal("EiVene_Delivery","GLOBAL",1)
AddexperienceParty(250)
~ JOURNAL #37701 /* ~Ich habe eine Staubmenschen-Balsamiererin namens Ei-Vene in der Leichenhalle getroffen. Sie hat nicht nur Krallen und einen talgfarbigen Teint, sondern ist noch dazu kurzsichtig und stocktaub, so daß sie mich für einen Zombie gehalten hat. Sie hat mir befohlen, ein Glas Balsamierungsöl sowie Nadel und Faden für sie zu finden, wahrscheinlich zum Nähen der Leiche, die auf dem Tisch vor ihr lag. Zufälligerweise hatte ich beides schon gefunden, also habe ich es ihr gegeben. ~ */ GOTO 7
  IF ~  !NearbyDialog("DMorte")
~ THEN REPLY #3425 /* ~"Ich hätte erst noch ein paar Fragen..."~ */ JOURNAL #37702 /* ~Ich habe eine Staubmenschen-Balsamiererin namens Ei-Vene in der Leichenhalle getroffen. Sie hat nicht nur Krallen und einen talgfarbigen Teint, sondern ist noch dazu kurzsichtig und stocktaub, so daß sie mich für einen Zombie gehalten hat. Sie hat mir befohlen, ein Glas Balsamierungsöl sowie Nadel und Faden für sie zu finden, wahrscheinlich zum Nähen der Leiche, die auf dem Tisch vor ihr lag. Es muß doch so etwas in der Leichenhalle geben, vielleicht in einem der umliegenden Zimmer. ~ */ GOTO 6
  IF ~  NearbyDialog("DMorte")
~ THEN REPLY #3426 /* ~"Ich hätte erst noch ein paar Fragen..."~ */ JOURNAL #37702 /* ~Ich habe eine Staubmenschen-Balsamiererin namens Ei-Vene in der Leichenhalle getroffen. Sie hat nicht nur Krallen und einen talgfarbigen Teint, sondern ist noch dazu kurzsichtig und stocktaub, so daß sie mich für einen Zombie gehalten hat. Sie hat mir befohlen, ein Glas Balsamierungsöl sowie Nadel und Faden für sie zu finden, wahrscheinlich zum Nähen der Leiche, die auf dem Tisch vor ihr lag. Es muß doch so etwas in der Leichenhalle geben, vielleicht in einem der umliegenden Zimmer. ~ */ GOTO 20
  IF ~  !NearbyDialog("DMorte")
~ THEN REPLY #3427 /* ~"Was ist denn mit deinen Händen los?"~ */ JOURNAL #37702 /* ~Ich habe eine Staubmenschen-Balsamiererin namens Ei-Vene in der Leichenhalle getroffen. Sie hat nicht nur Krallen und einen talgfarbigen Teint, sondern ist noch dazu kurzsichtig und stocktaub, so daß sie mich für einen Zombie gehalten hat. Sie hat mir befohlen, ein Glas Balsamierungsöl sowie Nadel und Faden für sie zu finden, wahrscheinlich zum Nähen der Leiche, die auf dem Tisch vor ihr lag. Es muß doch so etwas in der Leichenhalle geben, vielleicht in einem der umliegenden Zimmer. ~ */ GOTO 6
  IF ~  NearbyDialog("DMorte")
~ THEN REPLY #3428 /* ~"Was ist denn mit deinen Händen los?"~ */ JOURNAL #37702 /* ~Ich habe eine Staubmenschen-Balsamiererin namens Ei-Vene in der Leichenhalle getroffen. Sie hat nicht nur Krallen und einen talgfarbigen Teint, sondern ist noch dazu kurzsichtig und stocktaub, so daß sie mich für einen Zombie gehalten hat. Sie hat mir befohlen, ein Glas Balsamierungsöl sowie Nadel und Faden für sie zu finden, wahrscheinlich zum Nähen der Leiche, die auf dem Tisch vor ihr lag. Es muß doch so etwas in der Leichenhalle geben, vielleicht in einem der umliegenden Zimmer. ~ */ GOTO 20
  IF ~~ THEN REPLY #3429 /* ~Verschwinde.~ */ JOURNAL #37702 /* ~Ich habe eine Staubmenschen-Balsamiererin namens Ei-Vene in der Leichenhalle getroffen. Sie hat nicht nur Krallen und einen talgfarbigen Teint, sondern ist noch dazu kurzsichtig und stocktaub, so daß sie mich für einen Zombie gehalten hat. Sie hat mir befohlen, ein Glas Balsamierungsöl sowie Nadel und Faden für sie zu finden, wahrscheinlich zum Nähen der Leiche, die auf dem Tisch vor ihr lag. Es muß doch so etwas in der Leichenhalle geben, vielleicht in einem der umliegenden Zimmer. ~ */ EXIT
END

IF ~~ THEN BEGIN 6 // from: 5.1 5.3
  SAY #3430 /* ~Sie dreht sich um... sie scheint dich nicht gehört zu haben. Ihr Gehör ist wohl genauso schlecht wie ihr Sehvermögen.~ */
  IF ~~ THEN REPLY #3431 /* ~Klopf ihr auf die Schulter, damit sie dich bemerkt.~ */ GOTO 17
  IF ~~ THEN REPLY #3432 /* ~Verschwinde.~ */ EXIT
END

IF ~~ THEN BEGIN 7 // from: 5.0 17.0
  SAY #3433 /* ~Ehe du dich's versiehst, schnappt Ei-Vene dir den Faden aus der Hand und schlingt ihn um eine Kralle. Dann beginnt sie, der Leiche den Brustkorb zuzunähen. Anschließend nimmt sie das Balsamierungsöl und reibt die Leiche damit ein.~ */
  IF ~~ THEN REPLY #3434 /* ~Warte.~ */ GOTO 9
  IF ~~ THEN REPLY #3435 /* ~Geh weg.~ */ GOTO 8
END

IF ~~ THEN BEGIN 8 // from: 7.1
  SAY #3436 /* ~Als du gehen willst, wendet Ei-Vene sich dir zu: "Du bleiben. Du Nächster."~ */
  IF ~~ THEN REPLY #3437 /* ~Warte.~ */ GOTO 9
  IF ~~ THEN REPLY #3438 /* ~Geh. Und zwar schnell.~ */ EXIT
END

IF ~~ THEN BEGIN 9 // from: 7.0 8.0
  SAY #3439 /* ~Nach ein paar Minuten ist sie fertig. Sie schlägt ihre Krallen aufeinander und dreht sich zu dir um. Zu deiner Überraschung streckt sie ihre Hand aus und zieht dir ihre Krallen über Brust und Arme.~ */
  IF ~  !NearbyDialog("DMorte")
~ THEN REPLY #3440 /* ~"Äh, nicht, daß mir das nicht schmeichelt, aber..."~ */ GOTO 11
  IF ~  NearbyDialog("DMorte")
~ THEN REPLY #3441 /* ~"Äh, nicht, daß mir das nicht schmeichelt, aber..."~ */ EXTERN ~DMORTE~ 59
  IF ~  !NearbyDialog("DMorte")
~ THEN REPLY #3442 /* ~Spiel weiter den Zombie.~ */ GOTO 11
  IF ~  NearbyDialog("DMorte")
~ THEN REPLY #3443 /* ~Spiel weiter den Zombie.~ */ EXTERN ~DMORTE~ 59
  IF ~~ THEN REPLY #3444 /* ~Stoß sie weg und geh.~ */ GOTO 10
END

IF ~~ THEN BEGIN 10 // from: 9.4 12.1
  SAY #3445 /* ~Sie wirkt schockiert, als du sie wegstößt. "Zomfie? Du kein Zomfie!" Sie geht einen Schritt zurück, und bevor du reagieren kannst, klatscht sie dreimal in die Hände. Daraufhin ertönt der Klang einer riesigen Glocke in der ganzen Leichenhalle.~ */
  IF ~~ THEN REPLY #3491 /* ~"In Ordnung..."~ */ DO ~PlaySoundNotRanged("AMB_M01")
Enemy()
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
SetGlobal("Mortuary_Alert","GLOBAL",1)
~ EXIT
END

IF ~~ THEN BEGIN 11 // from: 9.0 9.2
  SAY #3446 /* ~Als sie dir über Brust und Arme fährt, bemerkst du plötzlich, daß sie anscheinend deine Narben untersucht. Sie zieht ihre Krallen zurück, klappert zweimal damit, beugt sich nach vorn und untersucht verschiedene Tätowierungen auf deiner Brust. "Hmmm. Wer schreiben auf dir? Stockbewohner? Kein Respekt vor Zomfies. Zomfies, nix Bilder." Sie rümpft die Nase, dann stochert sie auf einer deiner Narben herum. "Diese hier schlecht aussehen, viele Narben, nix Balsam."~ */
  IF ~~ THEN REPLY #3447 /* ~Warte.~ */ GOTO 12
END

IF ~~ THEN BEGIN 12 // from: 11.0
  SAY #3448 /* ~Ihre Krallen haken sich plötzlich in den Faden fest, den du ihr gebracht hast, und plötzlich sticht sie mit einer anderen Kralle in die Haut um eine deiner Narben. Der Schmerz ist kaum schlimmer als bei einem Nadelstich, aber es scheint, als ob sie dich komplett zusammennähen wollte.~ */
  IF ~~ THEN REPLY #3449 /* ~Laß sie ihre Arbeit tun.~ */ DO ~PermanentStatChange(Protagonist,MAXHITPOINTS,RAISE,1)
FullHeal(Protagonist)
SetGlobal("Ravel_EiVene","GLOBAL",1)
~ JOURNAL #38199 /* ~Nachdem ich Ei-Vene das Balsamierungsöl und den Faden gebracht hatte, hat sie meine Narben genäht und das Balsamierungsöl auf meinen Körper aufgetragen. Seltsamerweise fühle ich mich dadurch ... gesünder.~ */ GOTO 13
  IF ~~ THEN REPLY #3450 /* ~Stoß sie weg und geh.~ */ GOTO 10
END

IF ~~ THEN BEGIN 13 // from: 12.0
  SAY #3451 /* ~Du empfindest eine seltsame Schmerzlosigkeit, als Ei-Vene beginnt, deine Narben zuzunähen.

Als sie fertig ist, schnuppert sie an dir, runzelt die Stirn und steckt dann ihre Finger in das Balsamierungsöl. Binnen weniger Minuten hat sie dich von Kopf bis Fuß mit dem Öl eingerieben... und komischerweise fühlst du dich tatsächlich *besser*.~ */
  IF ~  !NearbyDialog("DMorte")
~ THEN REPLY #3452 /* ~Laß sie ihre Arbeit tun.~ */ GOTO 14
  IF ~  NearbyDialog("DMorte")
~ THEN REPLY #3453 /* ~Laß sie ihre Arbeit tun.~ */ EXTERN ~DMORTE~ 60
END

IF ~~ THEN BEGIN 14 // from: 13.0
  SAY #3454 /* ~Ei-Vene reibt noch die letzten Stellen auf deinem Körper ein, beschnuppert dich noch einmal, nickt und scheucht dich mit einer Krallenbewegung fort. "Fertig. Geh... geh."~ */
  IF ~  Global("Embalm_Key_Quest","GLOBAL",1)
HasItem("KeyEm","EiVene")
~ THEN REPLY #3456 /* ~"Warte einen Moment." (Du machst eine Handbewegung, als ob du einen Schlüssel umdrehtest.) "Ich brauche einen Schlüssel zum Balsamierungsraum. Hast du einen?"~ */ DO ~AddexperienceParty(250)
SetGlobal("Embalm_Key_Quest","GLOBAL",2)
GiveItem("KeyEm",Protagonist)
~ GOTO 18
  IF ~  Global("Embalm_Key_Quest","GLOBAL",1)
!HasItem("KeyEm","EiVene")
~ THEN REPLY #3457 /* ~"Warte einen Moment." (Du machst eine Handbewegung, als ob du einen Schlüssel umdrehtest.) "Ich brauche einen Schlüssel zum Balsamierungsraum. Hast du einen?"~ */ GOTO 24
  IF ~~ THEN REPLY #4350 /* ~Verschwinde.~ */ EXIT
END

IF ~  Global("EiVene","GLOBAL",1)
~ THEN BEGIN 15 // from:
  SAY #3458 /* ~Du siehst Ei-Vene. Sie ist noch immer dabei, den Brustkorb der Leiche mit ihren Krallen zu zerlegen. Der Rhythmus, mit dem sie ihre Krallen bewegt, erinnert dich an irgend etwas, aber dir fällt im Moment nicht ein, an was.~ */
  IF ~  Global("42_Secret","GLOBAL",0)
~ THEN REPLY #3459 /* ~Beobachte sie, verfolge ihre Handbewegungen genau.~ */ DO ~PlaySoundNotRanged("SPTR_01")
~ JOURNAL #61612 /* ~Als ich Ei-Vene zusah, wie sie mit ihren langen Fingernägeln die Leiche zunähte, kam mir eine seltsame Erinnerung hoch... Ich erinnere mich daran, wie ich eine ähnliche Operation an einer Leiche vorgenommen habe. Nur glaube ich, daß ich etwas in ihre Brust *hineingelegt* habe, und nicht etwas herausgenommen. Es fühlte sich so an, als hätte ich das, was auch immer es war, hineingelegt, um es später wieder herausholen zu können. Als ich in der Erinnerung meine Arme verschränkte, tat die Leiche genau dasselbe... Auf ihre Kopfhaut war die Zahl "42" geschrieben.~ */ GOTO 16
  IF ~  Global("EiVene_Delivery","GLOBAL",0)
~ THEN REPLY #3463 /* ~Klopf ihr auf die Schulter, damit sie dich bemerkt.~ */ GOTO 17
  IF ~  Global("EiVene_Delivery","GLOBAL",1)
~ THEN REPLY #4351 /* ~Klopf ihr auf die Schulter, damit sie dich bemerkt.~ */ GOTO 22
  IF ~~ THEN REPLY #4352 /* ~Verschwinde.~ */ EXIT
END

IF ~~ THEN BEGIN 16 // from: 15.0
  SAY #3464 /* ~Während du die Bewegung von Ei-Venes Händen beobachtest, spürst du ein Kribbeln auf deiner Kopfhaut, und plötzlich verschwimmt alles vor deinen Augen, bis...~ */
  IF ~~ THEN DO ~FadeToColor([20.0],0)
Wait(3)
FadeFromColor([20.0],0)
Wait(3)
~ GOTO 26
END

IF ~~ THEN BEGIN 17 // from: 6.0 15.1 25.0 27.0
  SAY #3468 /* ~Sie dreht sich um, sieht dich und runzelt die Stirn. "Zomfies dumm." Sie schlägt ihre krallenbewehrten Finger ungeduldig gegeneinander, dann deutet sie mit ihren Fingern Stiche beim Nähen an. "Du suchen Faden und Balsamierungsöl und bringen beides zu Ei-Vene. Geh... geh... geh."~ */
  IF ~  PartyHasItem("Embalm")
PartyHasItem("Needle")
~ THEN REPLY #3469 /* ~Gib ihr den Faden und das Balsamierungsöl.~ */ DO ~TakePartyItemNum("Embalm",1)
TakePartyItemNum("Needle",1)
SetGlobal("EiVene_Delivery","GLOBAL",1)
AddexperienceParty(250)
~ JOURNAL #38202 /* ~Ich habe Ei-Vene das Balsamierungsöl und den Faden gebracht. Sie schien mir nicht sehr dankbar zu sein. ~ */ GOTO 7
  IF ~  Global("Embalm_Key_Quest","GLOBAL",1)
HasItem("KeyEm","EiVene")
~ THEN REPLY #3470 /* ~"Warte einen Moment." (Du machst eine Handbewegung, als ob du einen Schlüssel umdrehtest.) "Ich brauche einen Schlüssel zum Balsamierungsraum. Hast du einen?"~ */ DO ~AddexperienceParty(250)
SetGlobal("Embalm_Key_Quest","GLOBAL",2)
GiveItem("KeyEm",Protagonist)
~ GOTO 18
  IF ~  Global("Embalm_Key_Quest","GLOBAL",1)
!HasItem("KeyEm","EiVene")
~ THEN REPLY #3497 /* ~"Warte einen Moment." (Du machst eine Handbewegung, als ob du einen Schlüssel umdrehtest.) "Ich brauche einen Schlüssel zum Balsamierungsraum. Hast du einen?"~ */ GOTO 24
  IF ~~ THEN REPLY #4357 /* ~Verschwinde.~ */ EXIT
END

IF ~~ THEN BEGIN 18 // from: 14.0 17.1 22.0
  SAY #3471 /* ~Sie beugt sich nach vorne, beobachtet deine Handbewegungen und rümpft die Nase. Ihre Hand schnellt in ihre Robe hinein und dann wieder heraus. An ihrem fürchterlich spitzen Zeigefinger hängt ein Schlüssel. Im Nu landet er in deiner Hand. "Zurückbringen wenn fertig. Geh... geh."~ */
  IF ~  !NearbyDialog("DMorte")
~ THEN REPLY #3494 /* ~"Was ist denn mit deinen Händen los?"~ */ JOURNAL #38203 /* ~Ich habe Ei-Vene überredet, mir den Schlüssel zum Balsamierungsraum zu geben. ~ */ GOTO 23
  IF ~  NearbyDialog("DMorte")
~ THEN REPLY #3495 /* ~"Was ist denn mit deinen Händen los?"~ */ JOURNAL #38203 /* ~Ich habe Ei-Vene überredet, mir den Schlüssel zum Balsamierungsraum zu geben. ~ */ GOTO 21
  IF ~~ THEN REPLY #3496 /* ~Verschwinde.~ */ JOURNAL #38203 /* ~Ich habe Ei-Vene überredet, mir den Schlüssel zum Balsamierungsraum zu geben. ~ */ EXIT
END

IF ~~ THEN BEGIN 19 // from: 1.3
  SAY #3472 /* ~Die Frau reagiert nicht.~ */
  IF ~~ THEN JOURNAL #38205 /* ~Offensichtlich ist die Staubmenschen-Balsamiererin, die ich getroffen habe, ein "Tiefling," jemand mit dem Blut eines Scheusals in ihren Adern. Anscheinend läßt das Scheusalsblut ihren Körper und manchmal auch ihr Denken mutieren. Nach dem, was Morte mir so erzählt, scheinen so einige Tieflinge unterwegs zu sein... Was dann wohl auch bedeuten würde, daß es eine ganz schöne Reihe von Scheusalen geben muß. ~ */ EXTERN ~DMORTE~ 56
END

IF ~~ THEN BEGIN 20 // from: 5.2 5.4
  SAY #3485 /* ~Sie dreht sich um... sie scheint dich nicht gehört zu haben.~ */
  IF ~~ THEN EXTERN ~DMORTE~ 57
END

IF ~~ THEN BEGIN 21 // from: 18.1
  SAY #3486 /* ~Sie dreht sich um... sie scheint dich nicht gehört zu haben. Ihr Gehör ist wohl genauso schlecht wie ihr Sehvermögen.~ */
  IF ~~ THEN JOURNAL #38205 /* ~Offensichtlich ist die Staubmenschen-Balsamiererin, die ich getroffen habe, ein "Tiefling," jemand mit dem Blut eines Scheusals in ihren Adern. Anscheinend läßt das Scheusalsblut ihren Körper und manchmal auch ihr Denken mutieren. Nach dem, was Morte mir so erzählt, scheinen so einige Tieflinge unterwegs zu sein... Was dann wohl auch bedeuten würde, daß es eine ganz schöne Reihe von Scheusalen geben muß. ~ */ EXTERN ~DMORTE~ 58
END

IF ~~ THEN BEGIN 22 // from: 15.2 25.1 27.1
  SAY #3493 /* ~Sie dreht sich um, sieht dich und runzelt die Stirn. "Zomfies dumm." Sie schlägt ihre krallenbewehrten Finger ungeduldig gegeneinander, dann deutet sie mit ihren Fingern Stiche beim Nähen an. "Du fertig. Zugenäht. Geh... geh... geh."~ */
  IF ~  Global("Embalm_Key_Quest","GLOBAL",1)
HasItem("KeyEm","EiVene")
~ THEN REPLY #3501 /* ~"Warte einen Moment." (Du machst eine Handbewegung, als ob du einen Schlüssel umdrehtest.) "Ich brauche einen Schlüssel zum Balsamierungsraum. Hast du einen?"~ */ DO ~AddexperienceParty(250)
SetGlobal("Embalm_Key_Quest","GLOBAL",2)
GiveItem("KeyEm",Protagonist)
~ GOTO 18
  IF ~  Global("Embalm_Key_Quest","GLOBAL",1)
!HasItem("KeyEm","EiVene")
~ THEN REPLY #3502 /* ~"Warte einen Moment." (Du machst eine Handbewegung, als ob du einen Schlüssel umdrehtest.) "Ich brauche einen Schlüssel zum Balsamierungsraum. Hast du einen?"~ */ GOTO 24
  IF ~~ THEN REPLY #4358 /* ~Verschwinde.
~ */ EXIT
END

IF ~~ THEN BEGIN 23 // from: 18.0
  SAY #3498 /* ~Sie dreht sich um... sie scheint dich nicht gehört zu haben. Ihr Gehör ist wohl genauso schlecht wie ihr Sehvermögen.~ */
  IF ~~ THEN REPLY #3499 /* ~Verschwinde.~ */ EXIT
END

IF ~~ THEN BEGIN 24 // from: 14.1 17.2 22.1
  SAY #4200 /* ~Sie beugt sich nach vorn und beobachtet deine Handbewegungen, woraufhin sie die Nase rümpft. Jetzt verschwindet ihre Hand blitzschnell in ihrer Robe, in der sie herumwühlt. Dann zuckt sie mit den Achseln. "Kein Schlüssel." Mit einer Geste scheucht sie dich weg. "Geh- geh - geh."~ */
  IF ~~ THEN REPLY #4201 /* ~Verschwinde.~ */ EXIT
END

IF ~~ THEN BEGIN 25 // from:
  SAY #4353 /* ~Nachdem du sie eine Weile beobachtet hast, erinnert dich der Rhythmus ihrer Handbewegungen an zwei Dinge - daran, daß du irgendein Saiteninstrument gespielt hast, vielleicht eine Harfe. Und daß du irgendwann eine Geldbörse geklaut hast... zu deinem Erstaunen versetzt dich diese zweite Erinnerung in die Versuchung, Ei-Venes Tasche zu entwenden. 

^NHINWEIS: Du hast eine Erinnerung zurückgewonnen. Erinnerungen können dir zusätzliche Erfahrungspunkte und Fähigkeiten einbringen und sogar dazu führen, daß du später noch weitere Erinnerungen zurückgewinnst.^-~ */
  IF ~  Global("EiVene_Delivery","GLOBAL",0)
~ THEN REPLY #4354 /* ~Klopf ihr auf die Schulter, damit sie dich bemerkt.~ */ GOTO 17
  IF ~  Global("EiVene_Delivery","GLOBAL",1)
~ THEN REPLY #4355 /* ~Klopf ihr auf die Schulter, damit sie dich bemerkt.~ */ GOTO 22
  IF ~~ THEN REPLY #4356 /* ~Verschwinde.~ */ EXIT
END

IF ~~ THEN BEGIN 26 // from: 16.0
  SAY #63477 /* ~... Du stehst vor einer frisch niedergemetzelten Leiche, die Totenstarre entstellt ihr Lächeln auf groteske Weise. Auf ihrer Stirn ist die Nummer '42' aufgestickt. Der Zombie liegt auf einer Totenbank, und du hast gerade seine Brust fertig zugenäht. Du hast etwas eingenäht, etwas, das sich als nützlich erweisen könnte, falls du hier noch mal vorbeikommst...~ */
  IF ~  Global("42_Secret","GLOBAL",0)
~ THEN REPLY #63478 /* ~Echo: "Bewahre diese Dinge gut auf und warte, bis ich zurrücckkomme."~ */ DO ~GiveExperience(Protagonist,250)
SetGlobal("42_Secret","GLOBAL",1)
~ GOTO 27
  IF ~  Global("42_Secret","GLOBAL",1)
~ THEN REPLY #63479 /* ~Echo: "Bewahre diese Dinge gut auf und warte, bis ich zurrücckkomme."~ */ GOTO 27
END

IF ~~ THEN BEGIN 27 // from: 26.0 26.1
  SAY #63480 /* ~Die Erinnerung an deine Stimme ist ein Echo, seltsam hohl in deinen Ohren. Du verschränkst die Arme vor der Brust, und zu deiner Überraschung tut der Leichnam dasselbe. Nach einer Weile fallen die Arme wieder an seine Seite und die Vision verblaßt... bis du wieder Ei-Venes Hände beobachtest, die ihre stickenden Bewegungen machen.

^NHINWEIS: Du hast dein Gedächtnis wiedererlangt. Erinnerungen können dir zusätzliche Erfahrungspunkte oder Fähigkeiten verleihen oder dir sogar dazu verhelfen, später etwas Wertvolles zu erhalten.^-~ */
  IF ~  Global("EiVene_Delivery","GLOBAL",0)
~ THEN REPLY #63482 /* ~Tipp ihr auf die Schulter, mach sie auf dich aufmerksam.~ */ GOTO 17
  IF ~  Global("EiVene_Delivery","GLOBAL",1)
~ THEN REPLY #63481 /* ~Tipp ihr auf die Schulter, mach sie auf dich aufmerksam.~ */ GOTO 22
  IF ~~ THEN REPLY #63483 /* ~Geh weg.~ */ EXIT
END
