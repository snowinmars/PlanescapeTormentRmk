// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DGITH.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\de_DE\dialog.tlk
// dialogF  : (none)

BEGIN ~DGITH~

IF ~  Global("Know_Gith","GLOBAL",0)
!NearbyDialog("DDakkon")
Global("Evil_Githzerai_1","GLOBAL",0)
~ THEN BEGIN 0 // from:
  SAY #2276 /* ~Der Mann dreht sich langsam um, als du dich näherst. Seine Augen gleichen zwei dunklen Steinen. Sie gleiten schnell über deinen Körper, dann starrt er dir in die Augen. Der Mann wirkt humanoid, mit einer gelblichen Haut und verhärmten Gesichtszügen. Er ist schmal und kantig gebaut und seine Glieder ähneln bloßen Muskelsträngen, die um den Knochen gewickelt wurden. Seine Kleidung ist eine seltsame Mischung aus grellen Farben und matten, schlammigen Brauntönen.~ */
  IF ~  GlobalLT("Githzerai","GLOBAL",5)
Global("Anazi_Help","GLOBAL",0)
~ THEN REPLY #2350 /* ~"Sei gegrüßt."~ */ GOTO 5
  IF ~  GlobalGT("Githzerai","GLOBAL",4)
Global("Anazi_Help","GLOBAL",0)
~ THEN REPLY #2351 /* ~"Sei gegrüßt."~ */ GOTO 1
  IF ~  Global("Anazi_Help","GLOBAL",1)
~ THEN REPLY #2352 /* ~"Sei gegrüßt."~ */ GOTO 1
  IF ~~ THEN REPLY #2353 /* ~Laß den Mann in Ruhe.~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.1 0.2 46.3 46.4
  SAY #2277 /* ~Er hält einen Moment inne, mustert dich und antwortet mit gebrochener Stimme. "Du bist mir *bekannt*." Sein Akzent macht es schwer, ihn zu verstehen - es ist, als ob er jedes Wort Silbe für Silbe ausspricht und dabei jeden Vokal in die Länge zieht. Die Art und Weise, wie er das Wort *bekannt* betont, kommt dir merkwürdig vor. "Ich werde dich anhören."~ */
  IF ~  Global("Anazi_Help","GLOBAL",0)
Global("Kill_Githyanki_KAPUTZ","GLOBAL",0)
~ THEN REPLY #2355 /* ~"Ich bin... dir 'bekannt'? Du weißt, wer ich bin?"~ */ GOTO 2
  IF ~  Global("Anazi_Help","GLOBAL",0)
GlobalGT("Kill_Githyanki_KAPUTZ","GLOBAL",0)
~ THEN REPLY #2356 /* ~"Ich bin... dir 'bekannt'? Du weißt, wer ich bin?"~ */ GOTO 3
  IF ~  Global("Anazi_Help","GLOBAL",1)
~ THEN REPLY #2357 /* ~"Ich bin... dir 'bekannt'? Du weißt, wer ich bin?"~ */ GOTO 4
  IF ~~ THEN REPLY #2358 /* ~"Ich... verstehe. Sieh mal, ich hätte da ein paar Fragen..."~ */ GOTO 14
  IF ~~ THEN REPLY #2361 /* ~"Da ist nichts, was ich dich fragen wollte. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.0
  SAY #2278 /* ~"Dein Name ist mir *bekannt*. Deine Taten sind mir *bekannt*. Deine Natur ist durch deine Taten *bekannt*. Du bist als ein Freund des 'Volkes' *bekannt*." Seine Augen wandern noch einmal kurz über dich, als wollte er dich noch einmal abschätzen. "Ich werde dich anhören."~ */
  IF ~~ THEN REPLY #2362 /* ~"Also schön. Ich hätte da ein paar Fragen..."~ */ GOTO 14
  IF ~~ THEN REPLY #2363 /* ~Laß den Gith in Ruhe.~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 1.1
  SAY #2279 /* ~"Dein Name ist mir *bekannt*. Du hast den Boden mit Githyanki-Blut getränkt. Dein Charakter ist durch deine Taten *bekannt*." Seine Blicke wandern über dich, als wollte er dich erneut abschätzen. "Ich werde dich anhören."~ */
  IF ~~ THEN REPLY #2364 /* ~"Also schön. Ich hätte da ein paar Fragen..."~ */ GOTO 14
  IF ~~ THEN REPLY #2366 /* ~Laß den Gith in Ruhe.~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 1.2
  SAY #2280 /* ~"Dein Name ist mir *bekannt*. Du hast einem von unserem 'Volk' geholfen, als er durch die Gifte der Stadt erkrankt war. Deine Natur ist durch diese Tat *bekannt*. Du bist als ein Freund des 'Volkes' *bekannt*." Seine Augen wandern noch einmal kurz über dich, als wolle er dich noch einmal abschätzen. "Ich werde dich anhören."~ */
  IF ~~ THEN REPLY #2367 /* ~"Also schön. Ich hätte da ein paar Fragen..."~ */ GOTO 14
  IF ~~ THEN REPLY #2368 /* ~Laß den Gith in Ruhe.~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 0.0 46.2
  SAY #2281 /* ~Der Mann bleibt stumm. Er beantwortet deinen Gruß in keiner Weise, sondern starrt dich nur an. ~ */
  IF ~  Global("Know_Githyanki","GLOBAL",1)
~ THEN REPLY #2369 /* ~"Du bist ein Githyanki, stimmt's? Ich hätte ein paar Fragen an dich..."~ */ GOTO 6
  IF ~  !NearbyDialog("DMorte")
NearbyDialog("DAnnah")
GlobalGT("BD_ANNAH_MORALE","GLOBAL",9)
Global("Annah_Githzerai_Quip_1","GLOBAL",0)
~ THEN REPLY #8705 /* ~"Ich sagte: 'Sei gegrüßt'."~ */ DO ~SetGlobal("Annah_Githzerai_Quip_1","GLOBAL",1)
~ EXTERN ~DANNAH~ 32
  IF ~  !NearbyDialog("DMorte")
NearbyDialog("DAnnah")
GlobalLT("BD_ANNAH_MORALE","GLOBAL",10)
Global("Annah_Githzerai_Quip_1","GLOBAL",0)
~ THEN REPLY #8706 /* ~"Ich sagte: 'Sei gegrüßt'."~ */ DO ~SetGlobal("Annah_Githzerai_Quip_1","GLOBAL",1)
~ EXTERN ~DANNAH~ 33
  IF ~  !NearbyDialog("DMorte")
NearbyDialog("DAnnah")
Global("Annah_Githzerai_Quip_1","GLOBAL",1)
~ THEN REPLY #8707 /* ~"Ich sagte: 'Sei gegrüßt'."~ */ GOTO 7
  IF ~  NearbyDialog("DMorte")
Global("Morte_Githzerai_Quip_1","GLOBAL",0)
~ THEN REPLY #8708 /* ~"Ich sagte: 'Sei gegrüßt'."~ */ DO ~SetGlobal("Morte_Githzerai_Quip_1","GLOBAL",1)
~ EXTERN ~DMORTE~ 44
  IF ~  NearbyDialog("DMorte")
Global("Morte_Githzerai_Quip_1","GLOBAL",1)
~ THEN REPLY #8709 /* ~"Ich sagte: 'Sei gegrüßt'."~ */ EXTERN ~DMORTE~ 45
  IF ~  !NearbyDialog("DMorte")
!NearbyDialog("DAnnah")
~ THEN REPLY #8710 /* ~"Ich sagte: 'Sei gegrüßt'."~ */ GOTO 7
  IF ~  !NearbyDialog("DMorte")
NearbyDialog("DAnnah")
GlobalGT("BD_ANNAH_MORALE","GLOBAL",9)
Global("Annah_Githzerai_Quip_1","GLOBAL",0)
~ THEN REPLY #8711 /* ~"Ich hätte da ein paar Fragen..."~ */ DO ~SetGlobal("Annah_Githzerai_Quip_1","GLOBAL",1)
~ EXTERN ~DANNAH~ 32
  IF ~  !NearbyDialog("DMorte")
NearbyDialog("DAnnah")
GlobalLT("BD_ANNAH_MORALE","GLOBAL",10)
Global("Annah_Githzerai_Quip_1","GLOBAL",0)
~ THEN REPLY #8712 /* ~"Ich hätte da ein paar Fragen..."~ */ DO ~SetGlobal("Annah_Githzerai_Quip_1","GLOBAL",1)
~ EXTERN ~DANNAH~ 33
  IF ~  !NearbyDialog("DMorte")
NearbyDialog("DAnnah")
Global("Annah_Githzerai_Quip_1","GLOBAL",1)
~ THEN REPLY #8713 /* ~"Ich hätte da ein paar Fragen..."~ */ GOTO 7
  IF ~  NearbyDialog("DMorte")
Global("Morte_Githzerai_Quip_1","GLOBAL",0)
~ THEN REPLY #8714 /* ~"Ich hätte da ein paar Fragen..."~ */ DO ~SetGlobal("Morte_Githzerai_Quip_1","GLOBAL",1)
~ EXTERN ~DMORTE~ 44
  IF ~  NearbyDialog("DMorte")
Global("Morte_Githzerai_Quip_1","GLOBAL",1)
~ THEN REPLY #8715 /* ~"Ich hätte da ein paar Fragen..."~ */ EXTERN ~DMORTE~ 45
  IF ~  !NearbyDialog("DMorte")
!NearbyDialog("DAnnah")
~ THEN REPLY #8716 /* ~"Ich hätte da ein paar Fragen..."~ */ GOTO 7
  IF ~~ THEN REPLY #8717 /* ~"Schon gut. Tut mir leid, daß ich dich gestört habe."~ */ EXIT
END

IF ~~ THEN BEGIN 6 // from: 5.0 7.0
  SAY #2282 /* ~Einen Moment lang scheint es so, als habe der Githzerai dich nicht gehört. Dann hört man ein metallisches Singen und eine Klinge blitzt in den Händen des Githzerai auf. Mit einem Fauchen springt er auf dich zu!~ */
  IF ~~ THEN REPLY #8718 /* ~"In Ordnung..."~ */ DO ~Enemy()
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
~ EXIT
END

IF ~~ THEN BEGIN 7 // from: 5.3 5.6 5.9 5.12
  SAY #2283 /* ~Der Githzerai schweigt noch immer, doch seine schwarzen Augen haben dich weiterhin im Visier.~ */
  IF ~  Global("Know_Githyanki","GLOBAL",1)
~ THEN REPLY #8719 /* ~"Du bist ein Githyanki, stimmt's? Ich hätte ein paar Fragen an dich..."~ */ GOTO 6
  IF ~~ THEN REPLY #8720 /* ~"Ich sagte: 'Sei gegrüßt'."~ */ GOTO 8
  IF ~~ THEN REPLY #8721 /* ~"Kannst du mich verstehen?"~ */ GOTO 8
  IF ~~ THEN REPLY #8722 /* ~"Ich hätte da ein paar Fragen..."~ */ GOTO 8
  IF ~~ THEN REPLY #8723 /* ~"Vergiß es. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 8 // from: 7.1 7.2 7.3
  SAY #2284 /* ~Er hält einen Moment inne, mustert dich und antwortet mit gebrochener Stimme. "Du bist mir *bekannt*." Sein Akzent macht es schwer, ihn zu verstehen - es ist so, als ob er jedes Wort Silbe für Silbe ausspricht und dabei jeden Vokal in die Länge zieht. Die Art und Weise, wie er das Wort *bekannt* betont, kommt dir merkwürdig vor. "Was willst du?"
~ */
  IF ~~ THEN REPLY #8724 /* ~"Ich hätte ein paar Fragen an dich..."~ */ GOTO 9
  IF ~~ THEN REPLY #8725 /* ~"Vergiß es. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 9 // from: 8.0 61.1
  SAY #2285 /* ~"Ich werde dich nicht anhören." Es scheint, als wolle er einfach an dir vorbeigehen.~ */
  IF ~~ THEN REPLY #8726 /* ~Verstell ihm den Weg.~ */ GOTO 10
  IF ~~ THEN REPLY #8727 /* ~Laß ihn gehen.~ */ EXIT
END

IF ~~ THEN BEGIN 10 // from: 9.0
  SAY #2286 /* ~Er bleibt stehen und blickt dich wieder an. Bevor du reden kannst, hört man ein metallisches Singen und er hält eine Klinge in der Hand. "Geh zur Seite."~ */
  IF ~~ THEN REPLY #8728 /* ~"Könntest du mir vielleicht erst ein paar Fragen beantworten?"~ */ GOTO 11
  IF ~~ THEN REPLY #8729 /* ~"Nein. Beantworte mir erst ein paar Fragen."~ */ GOTO 11
  IF ~~ THEN REPLY #8730 /* ~"Ich werde nicht weichen. Ich schlage vor, du steckst deinen Sauspieß weg, bevor ich ihn dir in den Bauch ramme."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Githzerai_1","GLOBALLaw",-1)
IncrementGlobalOnceEx("GLOBALEvil_Githzerai_1","GLOBALGood",-1)
~ GOTO 12
  IF ~~ THEN REPLY #8731 /* ~Greif ihn zuerst an.~ */ DO ~Enemy()
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
IncrementGlobalOnceEx("GLOBALChaotic_Githzerai_1","GLOBALLaw",-1)
IncrementGlobalOnceEx("GLOBALEvil_Githzerai_1","GLOBALGood",-1)
~ EXIT
  IF ~~ THEN REPLY #8732 /* ~Geh beseite, und laß ihn vorbei.~ */ EXIT
END

IF ~~ THEN BEGIN 11 // from: 10.0 10.1
  SAY #2287 /* ~Sein Gesichtsausdruck verändert sich nicht. "Geh zur Seite."~ */
  IF ~~ THEN REPLY #8733 /* ~"Ich hätte da ein paar Fragen."~ */ GOTO 12
  IF ~~ THEN REPLY #8734 /* ~"Dann beantworte mir erst ein paar Fragen."~ */ GOTO 12
  IF ~~ THEN REPLY #8735 /* ~"Ich werde nicht weichen. Ich schlage vor, du steckst deinen Sauspieß weg, bevor ich ihn dir in den Bauch ramme."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Githzerai_1","GLOBALLaw",-1)
IncrementGlobalOnceEx("GLOBALEvil_Githzerai_1","GLOBALGood",-1)
~ GOTO 12
  IF ~~ THEN REPLY #8736 /* ~Greif ihn zuerst an.
~ */ DO ~Enemy()
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
IncrementGlobalOnceEx("GLOBALChaotic_Githzerai_1","GLOBALLaw",-1)
IncrementGlobalOnceEx("GLOBALEvil_Githzerai_1","GLOBALGood",-1)
~ EXIT
  IF ~~ THEN REPLY #9037 /* ~Geh beseite, und laß ihn vorbei.~ */ EXIT
END

IF ~~ THEN BEGIN 12 // from: 10.2 11.0 11.1 11.2 70.2 70.4
  SAY #2288 /* ~Er faucht und greift dich an!~ */
  IF ~~ THEN REPLY #8737 /* ~"Bereite dich schon mal auf den Tod vor..."~ */ DO ~Enemy()
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
~ EXIT
END

IF ~~ THEN BEGIN 13 // from:
  SAY #2289 /* ~Leerer Knoten.~ */
  IF ~~ THEN REPLY #8738 /* ~Keine Reaktion.~ */ EXIT
END

IF ~~ THEN BEGIN 14 // from: 1.3 2.0 3.0 4.0
  SAY #2290 /* ~"K'atzn'ii-am-Tor."~ */
  IF ~  Global("Know_Githzerai_Speak","GLOBAL",1)
CheckStatGT(Protagonist,12,INT)
GlobalLT("Dictionary_Githzerai_Katznii","GLOBAL",2)
~ THEN REPLY #8739 /* ~Versuch dich an die Übersetzung zu erinnern...~ */ DO ~SetGlobal("Dictionary_Githzerai_Katznii","GLOBAL",2)
~ GOTO 15
  IF ~  Global("Dictionary_Githzerai_Katznii","GLOBAL",2)
~ THEN REPLY #8740 /* ~Versuch dich an die Übersetzung zu erinnern...~ */ GOTO 15
  IF ~  Global("Dictionary_Githzerai_Katznii","GLOBAL",0)
~ THEN REPLY #8741 /* ~"Wie bitte?"~ */ DO ~SetGlobal("Dictionary_Githzerai_Katznii","GLOBAL",1)
~ GOTO 16
  IF ~  Global("Dictionary_Githzerai_Katznii","GLOBAL",1)
~ THEN REPLY #8744 /* ~"Äh... heißt das, daß du mich anhören wirst?"~ */ GOTO 16
  IF ~  Global("Dictionary_Githzerai_Katznii","GLOBAL",2)
~ THEN REPLY #8745 /* ~"Also schön. Wirst du mich anhören?"~ */ GOTO 16
  IF ~~ THEN REPLY #8746 /* ~Laß den Mann in Ruhe.~ */ EXIT
END

IF ~~ THEN BEGIN 15 // from: 14.0 14.1
  SAY #2291 /* ~K'atzn'ii-am-Tor: "Frage, und du wirst beide Fragen beantworten." 

*(K'atzn'ii war eine Githzerai-Pilgerin, die auf dem Limbus, der Heimatebene der Githzerai, umherzog, um die Disziplin ihres Volkes zu 'prüfen'. Sie erschien immer am Tor jeder Gihzerai-Stadt und stellte einige Fragen. An den Antworten konnte sie den Charakter der Githzerai ablesen, die hinter den Stadtmauern lebten. Was K'aztn'ii allerdings nicht wußte, war die Tatsache, daß auch die Githzerai aus den Fragen, die sie stellte, Rückschlüsse auf ihren Charakter ziehen konnten.)*~ */
  IF ~~ THEN REPLY #8749 /* ~"Wir werden sehen. Wirst du mich anhören?"~ */ GOTO 16
  IF ~~ THEN REPLY #8750 /* ~Laß den Mann in Ruhe.~ */ EXIT
END

IF ~~ THEN BEGIN 16 // from: 14.2 14.3 14.4 15.0 17.0 18.0 39.1 40.0 41.1 42.1 43.1 44.2 45.0
  SAY #2292 /* ~Die Githzerai hält inne und spricht dann erneut. "Stelle deine Fragen. Ich werde dich anhören."~ */
  IF ~  Global("Pharod","GLOBAL",0)
~ THEN REPLY #8751 /* ~"Ich suche jemanden namens Pharod. Kennst du ihn?"~ */ GOTO 17
  IF ~  Global("Journal","GLOBAL",0)
~ THEN REPLY #8752 /* ~"Ich habe ein Journal verloren. Du hast nicht zufällig eins gesehen?"~ */ GOTO 18
  IF ~  NearbyDialog("DDakkon")
~ THEN REPLY #8753 /* ~"Kannst du mir was über Dak'kon erzählen?"~ */ GOTO 39
  IF ~  GlobalGT("Dakkon","GLOBAL",0)
!NearbyDialog("DDakkon")
~ THEN REPLY #8754 /* ~"Weißt du etwas von einem Githzerai namens Dak'kon?"~ */ GOTO 41
  IF ~  Global("Know_Sigil","GLOBAL",0)
~ THEN REPLY #8755 /* ~"Kannst du mir was über diese Stadt erzählen?"~ */ GOTO 19
  IF ~  Global("Know_Sigil","GLOBAL",1)
~ THEN REPLY #8757 /* ~"Kannst du mir was über Sigil erzählen?"~ */ GOTO 19
  IF ~  GlobalGT("Dictionary_Githzerai_Achali","GLOBAL",0)
~ THEN REPLY #8760 /* ~"Ich hatte da ... spezielle... Fragen über diese Stadt..."~ */ GOTO 22
  IF ~~ THEN REPLY #8763 /* ~Laß den Mann in Ruhe.~ */ EXIT
END

IF ~~ THEN BEGIN 17 // from: 16.0 22.0
  SAY #2344 /* ~"Der ist mir nicht *bekannt*."~ */
  IF ~  Global("Dictionary_Githzerai_Achali","GLOBAL",0)
~ THEN REPLY #8768 /* ~"Ich hätte noch ein paar andere Fragen..."~ */ GOTO 16
  IF ~  GlobalGT("Dictionary_Githzerai_Achali","GLOBAL",0)
~ THEN REPLY #8769 /* ~"Ich hatte da noch ein paar andere... speziellere... Fragen..."~ */ GOTO 22
  IF ~~ THEN REPLY #8770 /* ~Laß den Mann in Ruhe.~ */ EXIT
END

IF ~~ THEN BEGIN 18 // from: 16.1 22.1
  SAY #2345 /* ~"Dieses Objekt ist mir nicht *bekannt*."~ */
  IF ~  Global("Dictionary_Githzerai_Achali","GLOBAL",0)
~ THEN REPLY #8771 /* ~"Ich hätte noch ein paar andere Fragen..."~ */ GOTO 16
  IF ~  GlobalGT("Dictionary_Githzerai_Achali","GLOBAL",0)
~ THEN REPLY #8772 /* ~"Ich hatte da noch ein paar andere... speziellere... Fragen..."~ */ GOTO 22
  IF ~~ THEN REPLY #8773 /* ~Laß den Mann in Ruhe.~ */ EXIT
END

IF ~~ THEN BEGIN 19 // from: 16.4 16.5 49.0 54.0
  SAY #2346 /* ~"Ach'ali-Flut."~ */
  IF ~  Global("Know_Githzerai_Speak","GLOBAL",1)
CheckStatGT(Protagonist,12,INT)
GlobalLT("Dictionary_Githzerai_Achali","GLOBAL",2)
~ THEN REPLY #8774 /* ~Versuch dich an die Übersetzung zu erinnern...~ */ DO ~SetGlobal("Dictionary_Githzerai_Achali","GLOBAL",2)
~ GOTO 20
  IF ~  Global("Dictionary_Githzerai_Achali","GLOBAL",2)
~ THEN REPLY #8775 /* ~Versuch dich an die Übersetzung zu erinnern...~ */ GOTO 20
  IF ~  Global("Dictionary_Githzerai_Achali","GLOBAL",0)
~ THEN REPLY #8776 /* ~"Wie bitte?"~ */ DO ~SetGlobal("Dictionary_Githzerai_Achali","GLOBAL",1)
~ GOTO 21
  IF ~  Global("Dictionary_Githzerai_Achali","GLOBAL",1)
~ THEN REPLY #8777 /* ~"Äh... heißt das, du wirst mir die Frage beantworten oder...?"~ */ GOTO 21
END

IF ~~ THEN BEGIN 20 // from: 19.0 19.1
  SAY #2347 /* ~Ach'ali-Flut: Eigentlich, "Eine Frage, deren Antwort keinen Zweck erfüllt." Dies ist normalerweise eine Aufforderung an den Sprecher, eine vage oder 'nutzlose' Frage zu präzisieren.

*(Die Heimat der Githzerai ist die äußere Ebene von Limbus, einer Ebene des Chaos. Stabilität kann nur erreicht werden, indem die chaotische Materie der Ebene mit Hilfe des Bewußtseins geordnet wird; Konzentration und Disziplin sind hierfür unbedingt notwendig. In der Mythologie der Githzerai ist "Ach'ali" eine törichte Gestalt, die sich in Limbus verirrte und es kaum schaffte, eine Insel um sich herum zu formen. Während sie durch die chaotische Materie driftete, traf sie auf einen Ebenenreisenden, der ihr Hilfe anbot. Ach'ali stellte ihm jedoch so viele nutzlose und vage Fragen darüber, wie sie nach Hause zurückkehren könne, daß die Insel aus Materie um sie herum sich auflöste und sie in Limbus ertrank.)*~ */
  IF ~  Global("Know_Lady","GLOBAL",1)
~ THEN REPLY #8778 /* ~"Dann laß mich etwas präziser fragen: Kannst du mir was über die Dame der Schmerzen erzählen?"~ */ GOTO 23
  IF ~  Global("Know_Factions","GLOBAL",1)
~ THEN REPLY #8779 /* ~"Dann laß mich etwas präziser fragen: Kannst du mir was über die Bünde erzählen?"~ */ GOTO 24
  IF ~~ THEN REPLY #8780 /* ~"Dann laß mich etwas präziser fragen: Kannst du mir sagen, wo sich diese Stadt befindet?"~ */ GOTO 26
  IF ~~ THEN REPLY #8781 /* ~"Dann laß mich etwas präziser fragen: Kannst du mir sagen, wo ich vielleicht Arbeit finden könnte?"~ */ GOTO 34
  IF ~~ THEN REPLY #8782 /* ~"Dann laß mich etwas präziser fragen: Kannst du mir sagen, was es hier in der Gegend Interessantes gibt?"~ */ GOTO 33
  IF ~~ THEN REPLY #8783 /* ~"Schon gut. Tut mir leid, daß ich dich gestört habe."~ */ EXIT
END

IF ~~ THEN BEGIN 21 // from: 19.2 19.3
  SAY #2370 /* ~"Deine Frage ist ein Stoß ins Dunkle. Ein Pfeil ohne Richtung." Seine Stirn legt sich in Falten. "Die Antwort auf diese Frage würde die Gedanken eines Anarchen ausfüllen. Für eine solche Antwort ist keine Zeit. Sag mir einfach, welche Antworten du *kennen* möchtest."~ */
  IF ~  Global("Know_Lady","GLOBAL",1)
~ THEN REPLY #8784 /* ~"Dann laß mich etwas präziser fragen: Kannst du mir was über die Dame der Schmerzen erzählen?"~ */ GOTO 23
  IF ~  Global("Know_Factions","GLOBAL",1)
~ THEN REPLY #8785 /* ~"Dann laß mich etwas präziser fragen: Kannst du mir was über die Bünde erzählen?"~ */ GOTO 24
  IF ~~ THEN REPLY #8786 /* ~"Dann laß mich etwas präziser fragen: Kannst du mir sagen, wo sich diese Stadt befindet?"~ */ GOTO 26
  IF ~~ THEN REPLY #8787 /* ~"Dann laß mich etwas präziser fragen: Kannst du mir sagen, wo ich vielleicht Arbeit finden könnte?"~ */ GOTO 34
  IF ~~ THEN REPLY #8788 /* ~"Dann laß mich etwas präziser fragen: Kannst du mir sagen, was es hier in der Gegend Interessantes gibt?"~ */ GOTO 33
  IF ~~ THEN REPLY #8789 /* ~"Schon gut. Tut mir leid, daß ich dich gestört habe."~ */ EXIT
END

IF ~~ THEN BEGIN 22 // from: 16.6 17.1 18.1 23.0 24.1 25.0 26.1 27.2 28.1 29.1 30.2 31.1 32.1 33.1 34.2 35.1 36.2 37.2 38.1 39.2 40.1 41.2 42.2 43.2 44.3 45.1
  SAY #2371 /* ~Die Githzerai hält inne und spricht dann erneut. "Stelle deine Fragen. Ich werde dich anhören."~ */
  IF ~  Global("Pharod","GLOBAL",0)
~ THEN REPLY #8790 /* ~"Ich suche jemanden namens Pharod. Kennst du ihn?"~ */ GOTO 17
  IF ~  Global("Journal","GLOBAL",0)
~ THEN REPLY #8791 /* ~"Ich habe ein Journal verloren. Du hast nicht zufällig eins gesehen?"~ */ GOTO 18
  IF ~  NearbyDialog("DDakkon")
~ THEN REPLY #8792 /* ~"Kannst du mir was über Dak'kon erzählen?"~ */ GOTO 39
  IF ~  GlobalGT("Dakkon","GLOBAL",0)
!NearbyDialog("DDakkon")
~ THEN REPLY #8793 /* ~"Weißt du etwas von einem Githzerai namens Dak'kon?"~ */ GOTO 41
  IF ~  Global("Know_Lady","GLOBAL",1)
~ THEN REPLY #8794 /* ~"Was kannst du mir über die Dame der Schmerzen erzählen?"~ */ GOTO 23
  IF ~  Global("Know_Factions","GLOBAL",1)
~ THEN REPLY #8795 /* ~"Kannst du mir was über die Bünde erzählen?"~ */ GOTO 24
  IF ~~ THEN REPLY #8796 /* ~"Kannst du mir sagen, wo sich diese Stadt befindet?"~ */ GOTO 26
  IF ~~ THEN REPLY #8797 /* ~"Kannst du mir sagen, wo ich vielleicht Arbeit finden könnte?"~ */ GOTO 34
  IF ~~ THEN REPLY #8798 /* ~"Kannst du mir sagen, ob es hier in der Gegend irgendwas Interessantes gibt?"~ */ GOTO 33
  IF ~~ THEN REPLY #8799 /* ~"Ich hab' keine Fragen. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 23 // from: 20.0 21.0 22.4
  SAY #2372 /* ~"Man sagt, sie sei die Königin dieser Stadt. Ihre Geisteskraft ist mir nicht *bekannt*."~ */
  IF ~~ THEN REPLY #8801 /* ~"Ich hätte noch ein paar andere... speziellere... Fragen über die Stadt..."~ */ GOTO 22
  IF ~~ THEN REPLY #8837 /* ~"Schon gut. Tut mir leid, daß ich dich gestört habe."~ */ EXIT
END

IF ~~ THEN BEGIN 24 // from: 20.1 21.1 22.5
  SAY #2373 /* ~"Das sind die, die die Stadt unter sich aufteilen." Sein Tonfall ändert sich, während er das sagt. Eine Spur von Abscheu schwingt jetzt mit.~ */
  IF ~~ THEN REPLY #8838 /* ~"Hört sich nicht an, als ob du diese Bünde besonders leiden könntest."~ */ GOTO 25
  IF ~~ THEN REPLY #8839 /* ~"Ich hätte noch ein paar andere... speziellere... Fragen über die Stadt..."~ */ GOTO 22
  IF ~~ THEN REPLY #8840 /* ~"Schon gut. Tut mir leid, daß ich dich gestört habe."~ */ EXIT
END

IF ~~ THEN BEGIN 25 // from: 24.0
  SAY #2374 /* ~"In der Teilung liegt keine Kraft. Eine geteilte Stadt geht unter."~ */
  IF ~~ THEN REPLY #8841 /* ~"Ich hätte noch ein paar andere... speziellere... Fragen über die Stadt..."~ */ GOTO 22
  IF ~~ THEN REPLY #8842 /* ~"Vielen Dank... das ist alles, was ich wissen wollte. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 26 // from: 20.2 21.2 22.6
  SAY #2375 /* ~"Diese Stadt reicht an alle Orte."~ */
  IF ~~ THEN REPLY #8843 /* ~"Was meinst du?"~ */ GOTO 27
  IF ~~ THEN REPLY #8844 /* ~"Ich hätte noch ein paar andere... speziellere... Fragen über die Stadt..."~ */ GOTO 22
  IF ~~ THEN REPLY #8845 /* ~"Vielen Dank... das ist alles, was ich wissen wollte. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 27 // from: 26.0
  SAY #2376 /* ~"Diese Stadt ist ein Käfig mit vielen Türen. Jede Tür führt zu einem anderen Ort."~ */
  IF ~~ THEN REPLY #8846 /* ~"Warum vergleichst du die Stadt mit einem Käfig?"~ */ GOTO 28
  IF ~~ THEN REPLY #8853 /* ~"Wo befinden sich diese Türen?"~ */ GOTO 30
  IF ~~ THEN REPLY #8848 /* ~"Ich hätte noch ein paar andere... speziellere... Fragen über die Stadt..."~ */ GOTO 22
  IF ~~ THEN REPLY #8849 /* ~"Vielen Dank... das ist alles, was ich wissen wollte. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 28 // from: 27.0
  SAY #2377 /* ~"Jedes Bauwerk mit verschlossenen Türen ist ein Käfig."~ */
  IF ~~ THEN REPLY #8850 /* ~"Abgeschlossene Türen?"~ */ GOTO 29
  IF ~~ THEN REPLY #8851 /* ~"Ich hätte noch ein paar andere... speziellere... Fragen über die Stadt..."~ */ GOTO 22
  IF ~~ THEN REPLY #8852 /* ~"Vielen Dank... das ist alles, was ich wissen wollte. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 29 // from: 28.0
  SAY #2378 /* ~"Jede Tür in diesem Käfig ist verriegelt. Jede Tür hat ihren eigenen Schlüssel. Nur dann kannst du fort."~ */
  IF ~~ THEN REPLY #8853 /* ~"Wo befinden sich diese Türen?"~ */ GOTO 30
  IF ~~ THEN REPLY #8854 /* ~"Ich hätte noch ein paar andere... speziellere... Fragen über die Stadt..."~ */ GOTO 22
  IF ~~ THEN REPLY #8855 /* ~"Vielen Dank... das ist alles, was ich wissen wollte. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 30 // from: 27.1 29.0
  SAY #2379 /* ~"Überall. Es sind so viele wie es Orte gibt, zu denen sie führen."~ */
  IF ~~ THEN REPLY #8856 /* ~"Ich verstehe nicht."~ */ GOTO 31
  IF ~~ THEN REPLY #8857 /* ~"Orte? Was für welche?"~ */ GOTO 32
  IF ~~ THEN REPLY #8858 /* ~"Ich hätte noch ein paar andere... speziellere... Fragen über die Stadt..."~ */ GOTO 22
  IF ~~ THEN REPLY #8859 /* ~"Vielen Dank... das ist alles, was ich wissen wollte. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 31 // from: 30.0 32.0
  SAY #2380 /* ~"Es ist schwer, dies zu verstehen. Es ist nicht schwer, es zu akzeptieren."~ */
  IF ~~ THEN REPLY #8860 /* ~"Wo führen diese Türen hin, von denen du sprichst?"~ */ GOTO 32
  IF ~~ THEN REPLY #8861 /* ~"Ich hätte noch ein paar andere... speziellere... Fragen über die Stadt..."~ */ GOTO 22
  IF ~~ THEN REPLY #8862 /* ~"Schon gut. Tut mir leid, daß ich dich gestört habe."~ */ EXIT
END

IF ~~ THEN BEGIN 32 // from: 30.1 31.0
  SAY #2381 /* ~"Die Türen in diesem Käfig führen überall hin. Zu jeder Ebene. Zu jeder Welt."~ */
  IF ~~ THEN REPLY #8863 /* ~"Verstehe ich nicht."~ */ GOTO 31
  IF ~~ THEN REPLY #8864 /* ~"Ich hätte noch ein paar andere... speziellere... Fragen über die Stadt..."~ */ GOTO 22
  IF ~~ THEN REPLY #8865 /* ~"Vielen Dank... das ist alles, was ich wissen wollte. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 33 // from: 20.4 21.4 22.8
  SAY #2382 /* ~"Du bist mir nicht *bekannt*. Was dich interessiert, ist für mich vielleicht ohne Belang."~ */
  IF ~~ THEN REPLY #8866 /* ~"Ich suche nach Arbeit."~ */ GOTO 34
  IF ~~ THEN REPLY #8867 /* ~"Schon gut. Ich hätte noch ein paar andere... speziellere... Fragen über die Stadt..."~ */ GOTO 22
  IF ~~ THEN REPLY #8868 /* ~"Schon gut. Tut mir leid, daß ich dich gestört habe."~ */ EXIT
END

IF ~~ THEN BEGIN 34 // from: 20.3 21.3 22.7 33.0
  SAY #2383 /* ~"Es gibt hier nur wenig Arbeit. Du kannst für ein Kopfgeld Ratten jagen. Du kannst die Toten einsammeln."~ */
  IF ~~ THEN REPLY #8870 /* ~"Prämien für Ratten?"~ */ GOTO 35
  IF ~~ THEN REPLY #8871 /* ~"Tote sammeln?"~ */ GOTO 36
  IF ~~ THEN REPLY #8872 /* ~"Ich verstehe. Ich hätte noch ein paar andere... spezielle... Fragen über die Stadt..."~ */ GOTO 22
  IF ~~ THEN REPLY #8873 /* ~"Vielen Dank... das ist alles, was ich wissen wollte. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 35 // from: 34.0 36.1 37.1 38.0
  SAY #2384 /* ~"Die Stadt zahlt für Rattenschwänze. Bring sie zu einem der Büros zur Schädlings- und Seuchenbekämpfung."~ */
  IF ~~ THEN REPLY #8875 /* ~"Was war der andere Job, den du erwähntest? Tote sammeln?"~ */ GOTO 36
  IF ~~ THEN REPLY #8876 /* ~"Ich verstehe. Ich hätte noch ein paar andere... spezielle... Fragen über die Stadt..."~ */ GOTO 22
  IF ~~ THEN REPLY #8877 /* ~"Vielen Dank... das ist alles, was ich wissen wollte. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 36 // from: 34.1 35.0
  SAY #2385 /* ~"Jede Nacht sterben viele in dieser Stadt. Bring die Toten zu den Staubmenschen. Sie kaufen die Leichen auf."~ */
  IF ~~ THEN REPLY #8878 /* ~"Die Staubmenschen zahlen für Tote? Warum?"~ */ GOTO 37
  IF ~~ THEN REPLY #8879 /* ~"Was war der andere Job, den du erwähntest? Diese Prämien für Ratten?"~ */ GOTO 35
  IF ~~ THEN REPLY #8880 /* ~"Ich verstehe. Ich hätte noch ein paar andere... spezielle... Fragen über die Stadt..."~ */ GOTO 22
  IF ~~ THEN REPLY #8881 /* ~"Vielen Dank... das ist alles, was ich wissen wollte. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 37 // from: 36.0
  SAY #2386 /* ~"Die Staubmenschen kümmern sich um die Toten. Bei jeder Leiche führen sie die letzte Ölung durch."~ */
  IF ~~ THEN REPLY #8882 /* ~"Okay... sprich weiter."~ */ GOTO 38
  IF ~~ THEN REPLY #8883 /* ~"Ich verstehe. Was war der andere Job, den du erwähntest? Diese Prämien für Ratten?"~ */ GOTO 35
  IF ~~ THEN REPLY #8884 /* ~"Schon gut. Ich hätte noch ein paar andere... speziellere... Fragen über die Stadt..."~ */ GOTO 22
  IF ~~ THEN REPLY #8885 /* ~"Vielen Dank... das ist alles, was ich wissen wollte. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 38 // from: 37.0
  SAY #2387 /* ~"Viele sterben. Die Staubmenschen können nicht alle selbst einsammeln. Sie wollen nicht, daß die Leichen in den Straßen liegen bleiben. Sie bezahlen andere dafür, daß sie ihnen die Leichen bringen."~ */
  IF ~~ THEN REPLY #8886 /* ~"Was war der andere Job, den du erwähntest? Diese Prämien für Ratten?"~ */ GOTO 35
  IF ~~ THEN REPLY #8887 /* ~"Ich hatte da noch ein paar andere... speziellere... Fragen..."~ */ GOTO 22
  IF ~~ THEN REPLY #8888 /* ~"Vielen Dank... das ist alles, was ich wissen wollte. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 39 // from: 16.2 22.2
  SAY #2388 /* ~"Er geht mit dir." Seine Stirn legt sich in Falten. "Wie kommt es, daß er dir nicht *bekannt* ist?"~ */
  IF ~~ THEN REPLY #8889 /* ~"Ich hatte gehofft, du könntest mir etwas über ihn erzählen."~ */ GOTO 40
  IF ~  Global("Dictionary_Githzerai_Achali","GLOBAL",0)
~ THEN REPLY #8890 /* ~"Na, egal. Ich hätte noch ein paar andere Fragen..."~ */ GOTO 16
  IF ~  GlobalGT("Dictionary_Githzerai_Achali","GLOBAL",0)
~ THEN REPLY #8891 /* ~"Schon gut. Ich hatte da noch ein paar andere... speziellere... Fragen..."~ */ GOTO 22
  IF ~~ THEN REPLY #8892 /* ~"Schon gut. Tut mir leid, daß ich dich gestört habe."~ */ EXIT
END

IF ~~ THEN BEGIN 40 // from: 39.0
  SAY #2389 /* ~"Er ist nicht sprachlos. Wenn du ihn *kennen* möchtest, stell ihm Fragen. Beleidige nicht uns beide, indem du einen wie eine Statue behandelst."~ */
  IF ~  Global("Dictionary_Githzerai_Achali","GLOBAL",0)
~ THEN REPLY #8893 /* ~"Schon gut. Ich hätte noch ein paar  Fragen..."~ */ GOTO 16
  IF ~  GlobalGT("Dictionary_Githzerai_Achali","GLOBAL",0)
~ THEN REPLY #8894 /* ~"Schon gut. Ich hatte da noch ein paar andere... speziellere... Fragen..."~ */ GOTO 22
  IF ~~ THEN REPLY #8895 /* ~"Schon gut. Tut mir leid, daß ich dich gestört habe."~ */ EXIT
END

IF ~~ THEN BEGIN 41 // from: 16.3 22.3
  SAY #2390 /* ~"Der Name ist mir *bekannt*. Dak'kon ist ein *Zerth*, der nicht dem 'Volk' angehört."~ */
  IF ~~ THEN REPLY #8896 /* ~"Ein *Zert*?"~ */ GOTO 42
  IF ~  Global("Dictionary_Githzerai_Achali","GLOBAL",0)
~ THEN REPLY #8897 /* ~"Ich verstehe. Ich hätte noch ein paar andere Fragen..."~ */ GOTO 16
  IF ~  GlobalGT("Dictionary_Githzerai_Achali","GLOBAL",0)
~ THEN REPLY #8898 /* ~"Ich verstehe. Ich hatte da noch ein paar andere... speziellere... Fragen..."~ */ GOTO 22
  IF ~~ THEN REPLY #8899 /* ~"Vielen Dank... das ist alles, was ich wissen wollte. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 42 // from: 41.0
  SAY #2391 /* ~"Einer, der die Worte des Zerthimon *kennt*. Durch die *Kenntnis* seiner Worte *kennt* er sich selbst."~ */
  IF ~~ THEN REPLY #8900 /* ~"Zerthimon?"~ */ GOTO 43
  IF ~  Global("Dictionary_Githzerai_Achali","GLOBAL",0)
~ THEN REPLY #8901 /* ~"Ich verstehe. Ich hätte noch ein paar andere Fragen..."~ */ GOTO 16
  IF ~  GlobalGT("Dictionary_Githzerai_Achali","GLOBAL",0)
~ THEN REPLY #8902 /* ~"Ich verstehe. Ich hatte da noch ein paar andere... speziellere... Fragen..."~ */ GOTO 22
  IF ~~ THEN REPLY #8903 /* ~"Vielen Dank... das ist alles, was ich wissen wollte. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 43 // from: 42.0
  SAY #2392 /* ~"Zerthimon *kannte* die Githzerai, bevor sie sich selbst kannten." Der Githzerai verstummt für einen Moment wie in Ehrfurcht, dann spricht er weiter. "Er hat unser 'Volk' definiert. Er hat ihm ein Bewußtsein gegeben. Diejenigen, die seine Worte *kennen*, werden die *Zerth* genannt."~ */
  IF ~~ THEN REPLY #8904 /* ~"Und Dak'kon ist ein *Zerth*?"~ */ GOTO 44
  IF ~  Global("Dictionary_Githzerai_Achali","GLOBAL",0)
~ THEN REPLY #8905 /* ~"Ich verstehe. Ich hätte noch ein paar andere Fragen..."~ */ GOTO 16
  IF ~  GlobalGT("Dictionary_Githzerai_Achali","GLOBAL",0)
~ THEN REPLY #8906 /* ~"Ich verstehe. Ich hatte da noch ein paar andere... speziellere... Fragen..."~ */ GOTO 22
  IF ~~ THEN REPLY #8907 /* ~"Vielen Dank... das ist alles, was ich wissen wollte. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 44 // from: 43.0
  SAY #2393 /* ~"Dak'kon ist ein *Zerth*..." Zum ersten Mal scheinen dem Githzerai die Worte zu fehlen. Er ist einen Moment lang still, so als ob er die richtigen Worte sucht.~ */
  IF ~~ THEN REPLY #8908 /* ~"Ja?"~ */ GOTO 45
  IF ~~ THEN REPLY #8909 /* ~Warte auf seine Erklärung.~ */ GOTO 45
  IF ~  Global("Dictionary_Githzerai_Achali","GLOBAL",0)
~ THEN REPLY #8910 /* ~"Na, egal. Ich hätte noch ein paar andere Fragen..."~ */ GOTO 16
  IF ~  GlobalGT("Dictionary_Githzerai_Achali","GLOBAL",0)
~ THEN REPLY #8911 /* ~"Schon gut. Ich hatte da noch ein paar andere... speziellere... Fragen..."~ */ GOTO 22
  IF ~~ THEN REPLY #8912 /* ~"Schon gut. Tut mir leid, daß ich dich gestört habe."~ */ EXIT
END

IF ~~ THEN BEGIN 45 // from: 44.0 44.1
  SAY #2394 /* ~"Dak'kon ist ein *Zerth*, von dem man sagt, daß er die Worte des Zerthimon nicht *kennt*. Man sagt, sein Bewußtsein sei gespalten. Er soll sich selbst nicht *kennen*. Diese Dinge sind Gift für einen Githzerai. Wenn diese Gerüchte wahr sind, dann gehört er nicht zu unserem Volk."~ */
  IF ~  Global("Dictionary_Githzerai_Achali","GLOBAL",0)
~ THEN REPLY #8913 /* ~"Verstehe. Ich hätte da noch ein paar Fragen..."~ */ GOTO 16
  IF ~  GlobalGT("Dictionary_Githzerai_Achali","GLOBAL",0)
~ THEN REPLY #8914 /* ~"Ich verstehe. Ich hatte da noch ein paar andere... speziellere... Fragen..."~ */ GOTO 22
  IF ~~ THEN REPLY #8915 /* ~"Vielen Dank... das ist alles, was ich wissen wollte. Leb wohl."~ */ EXIT
END

IF ~  Global("Know_Gith","GLOBAL",1)
!NearbyDialog("DDakkon")
Global("Evil_Githzerai_1","GLOBAL",0)
~ THEN BEGIN 46 // from:
  SAY #8666 /* ~Dieser Githzerai dreht sich zu dir um, als du dich näherst. Seine Augen sind wie zwei schwarze Steine, seine Blicke mustern kurz dein Äußeres und dann starrt er in deine Augen. Obwohl er menschenähnlich aussieht, hat seine Haut eine gelbliche Farbe und er besitzt verhärmte Gesichtszüge. Seine Gestalt ist hager und knochig; seine Gliedmaßen sehen aus, als bestünden sie nur aus ineinander verschlungenen Muskelsträngen. Seine Kleidung ist eine eigenartige Mischung aus grell-bunten und schmutzig-braunen Farben.~ */
  IF ~  GlobalGT("Know_Githzerai_Speak","GLOBAL",0)
~ THEN REPLY #8916 /* ~"Zerchais Geschlecht verneigt sich vor dir."~ */ GOTO 47
  IF ~  GlobalGT("Know_Githzerai_Speak","GLOBAL",0)
~ THEN REPLY #8917 /* ~"Sei gegrüßt, Schwert-Schwinger."~ */ GOTO 48
  IF ~  GlobalLT("Githzerai","GLOBAL",5)
Global("Anazi_Help","GLOBAL",0)
~ THEN REPLY #8918 /* ~"Sei gegrüßt."~ */ GOTO 5
  IF ~  GlobalGT("Githzerai","GLOBAL",4)
Global("Anazi_Help","GLOBAL",0)
~ THEN REPLY #8919 /* ~"Sei gegrüßt."~ */ GOTO 1
  IF ~  Global("Anazi_Help","GLOBAL",1)
~ THEN REPLY #8920 /* ~"Sei gegrüßt."~ */ GOTO 1
  IF ~~ THEN REPLY #8921 /* ~Laß den Gith in Ruhe.~ */ EXIT
END

IF ~~ THEN BEGIN 47 // from: 46.0
  SAY #8667 /* ~Der Blick des Githzerai verschmilzt mit deinem. Er hält einen Moment inne, mustert dich und antwortet mit gebrochener Stimme. Sein Akzent macht es dir schwer, ihn zu verstehen - es ist so, als ob er jedes Wort Silbe für Silbe ausspricht und dabei jeden Vokal in die Länge zieht. Wenn du ihn richtig verstanden hast, dann hat er gerade gesagt: "Und der Reisende ist willkommen."~ */
  IF ~~ THEN REPLY #8922 /* ~"Und der Reisende freut sich."~ */ GOTO 49
  IF ~~ THEN REPLY #8923 /* ~"Ich würde diese Stadt gerne kennenlernen. Wirst du mich anhören?"~ */ GOTO 49
  IF ~~ THEN REPLY #8924 /* ~Laß den Gith in Ruhe.~ */ EXIT
END

IF ~~ THEN BEGIN 48 // from: 46.1
  SAY #8668 /* ~Der Blick des Githzerai verschmilzt mit deinem. Er hält einen Moment inne, mustert dich und antwortet mit gebrochener Stimme. Sein Akzent macht es dir schwer, ihn zu verstehen - es ist so, als ob er jedes Wort Silbe für Silbe ausspricht und dabei jeden Vokal in die Länge zieht. Wenn du ihn richtig verstanden hast, dann hat er gerade gesagt: "Du bist mir nicht *bekannt*." Dabei verleiht er dem Wort *bekannt* eine seltsame Betonung~ */
  IF ~~ THEN REPLY #8925 /* ~"Ich würde diese Stadt gerne kennenlernen. Wirst du mich anhören?"
~ */ GOTO 49
  IF ~~ THEN REPLY #8926 /* ~Laß den Gith in Ruhe.~ */ EXIT
END

IF ~~ THEN BEGIN 49 // from: 47.0 47.1 48.0
  SAY #8669 /* ~Der steinerne Gesichtsausdruck des Githzerai bricht auf, und statt Herausforderung drückt sein Blick nun Neugier aus. "Du bist mir nicht *bekannt*." Sein Blick streift dich, und er schätzt dich wieder ab. "Ich werde dich anhören."~ */
  IF ~~ THEN REPLY #8927 /* ~"Also schön. Ich hätte da ein paar Fragen..."~ */ GOTO 19
  IF ~~ THEN REPLY #8928 /* ~Laß den Mann in Ruhe.~ */ EXIT
END

IF ~  NearbyDialog("DDakkon")
Global("Evil_Githzerai_1","GLOBAL",0)
~ THEN BEGIN 50 // from:
  SAY #8670 /* ~Dieser Githzerai dreht sich zu dir um, als du dich näherst. So wie Dak'kon hat auch seine Haut eine gelbliche Farbe und er besitzt verhärmte Gesichtszüge. Seine Gestalt ist hager und knochig. Seine Kleidung ist eine eigenartige Mischung aus grell-bunten und schmutzig-braunen Farben. Die tiefschwarzen Augen des Githzerai mustern zuerst Dak'kon, dann dich.~ */
  IF ~  GlobalGT("Know_Githzerai_Speak","GLOBAL",0)
~ THEN REPLY #8929 /* ~"Zerchais Geschlecht verneigt sich vor dir."~ */ GOTO 55
  IF ~  GlobalGT("Know_Githzerai_Speak","GLOBAL",0)
~ THEN REPLY #8930 /* ~"Sei gegrüßt, Schwert-Schwinger."~ */ GOTO 55
  IF ~  Global("Know_Githzerai_Speak","GLOBAL",0)
~ THEN REPLY #8931 /* ~"Sei gegrüßt."~ */ GOTO 51
  IF ~  GlobalGT("Know_Githzerai_Speak","GLOBAL",0)
~ THEN REPLY #8932 /* ~"Sei gegrüßt."~ */ GOTO 55
  IF ~~ THEN REPLY #8933 /* ~Laß den Gith in Ruhe.~ */ EXIT
END

IF ~~ THEN BEGIN 51 // from: 50.2
  SAY #8671 /* ~Der Mann beachtet dich nicht und dreht sich statt dessen zu Dak'kon. Mit leiser Stimme spricht er einige abgehackte Worte, die du nicht verstehen kannst. Während er redet, ändert sich weder sein Gesichtsausdruck noch gestikuliert er mit den Händen, so daß du nicht einmal erahnen kannst, was er sagt. Dak'kon antwortet ebenso leise mit einem wahren Wortschwall, und der Githzerai verstummt.~ */
  IF ~~ THEN REPLY #8934 /* ~"Äh... was sagt er, Dak'kon?"~ */ GOTO 52
  IF ~~ THEN REPLY #8935 /* ~"Schon gut, Dak'kon. Laß uns gehen."~ */ EXIT
END

IF ~~ THEN BEGIN 52 // from: 51.0
  SAY #8672 /* ~Der Githzerai dreht sich zu dir, während du redest, dann wieder zu Dak'kon, und spricht dann weiter, was diesmal längere Zeit in Anspruch nimmt. Dak'kon antwortet - es hört sich an wie der gleiche Wortschwall von vorhin. Der Githzerai verstummt wieder. Dak'kon sagt noch etwas, und der Githzerai antwortet mit einem weiteren, langen Wortschwall.~ */
  IF ~~ THEN REPLY #8936 /* ~"Dak'kon, kannst du ihm ein paar Fragen stellen?"~ */ EXTERN ~DDAKKON~ 17
  IF ~~ THEN REPLY #8937 /* ~"Schon gut, Dak'kon. Laß uns gehen."
~ */ EXIT
END

IF ~~ THEN BEGIN 53 // from:
  SAY #8673 /* ~Leerer Knoten.~ */
  IF ~~ THEN REPLY #8938 /* ~Keine Reaktion.~ */ EXIT
END

IF ~~ THEN BEGIN 54 // from:
  SAY #8674 /* ~"Deine Worte sind mir *bekannt*", unterbricht der Githzerai. "Schau mich an und berichte mir dein Anliegen. Ich werde dich anhören."~ */
  IF ~~ THEN REPLY #8939 /* ~"Also schön. Ich hätte da ein paar Fragen..."~ */ GOTO 19
  IF ~~ THEN REPLY #8940 /* ~Laß den Mann in Ruhe.~ */ EXIT
END

IF ~~ THEN BEGIN 55 // from: 50.0 50.1 50.3
  SAY #8675 /* ~Der Githzerai beachtet dich nicht und dreht sich statt dessen zu Dak'kon. Mit leiser, eigenartiger Stimme spricht er einige abgehackte Worte; wenn du ihn richtig verstanden hast, dann hat er gerade gesagt: "Alles gesehen, *Zerth*."~ */
  IF ~~ THEN REPLY #8941 /* ~Warte auf Dak'kons Antwort.~ */ EXTERN ~DDAKKON~ 11
  IF ~~ THEN REPLY #8942 /* ~"Dak'kon, das macht nichts. Laß uns gehen."~ */ EXIT
END

IF ~~ THEN BEGIN 56 // from:
  SAY #8676 /* ~Der Githzerai dreht sich zu dir, während du redest, dann wieder zu Dak'kon und spricht dann weiter, was diesmal längere Zeit in Anspruch nimmt.~ */
  IF ~~ THEN REPLY #8943 /* ~Versuch zu übersetzen...~ */ GOTO 57
  IF ~~ THEN REPLY #8944 /* ~"Dak'kon, das macht nichts. Laß uns gehen."~ */ EXIT
END

IF ~~ THEN BEGIN 57 // from: 56.0
  SAY #8677 /* ~Du hast Schwierigkeiten, die Satzstruktur zu entziffern, aber du glaubst, daß er gesagt hat: "Es gibt einen des Namens Dak'kon, der nicht zu unserem Volk gehört. Man sagt, seine Gedanken seien gespalten. Man sagt, er sei ein *Zerth*, der die Worte des Zerthimon nicht *kennt*."~ */
  IF ~~ THEN REPLY #8945 /* ~Warte auf Dak'kons Antwort.~ */ EXTERN ~DDAKKON~ 12
  IF ~~ THEN REPLY #8946 /* ~"Dak'kon, das macht nichts. Laß uns gehen."~ */ EXIT
END

IF ~~ THEN BEGIN 58 // from:
  SAY #8678 /* ~Die Antwort des Githzerai kommt so plötzlich, daß sie fast wie ein Angriff aus dem Hinterhalt wirkt. Du bist dir nicht sicher, ob du die Bedeutung ganz begriffen hast, aber es scheint, als ob der Githzerai Dak'kon in Form einer Frage herausgefordert hat: "*Zerth*, *befolgst* du die Worte dieses Menschen?"~ */
  IF ~  Global("Dakkon_Slave","GLOBAL",1)
~ THEN REPLY #8947 /* ~Unterbrich: "Dak'kon gehorcht. Er ist mein Sklave."~ */ DO ~IncrementGlobal("BD_DAKKON_MORALE","GLOBAL",-1)
~ GOTO 61
  IF ~~ THEN REPLY #8948 /* ~Unterbrich: "Ja, Dak'kon führt meine Befehle aus. Er ist mein Diener."~ */ GOTO 61
  IF ~~ THEN REPLY #8949 /* ~Unterbrich: "Ich bin sein Herr. Dak'kon begleitet mich auf meiner Reise."~ */ GOTO 61
  IF ~  Global("Dictionary_Githzerai_Tcha","GLOBAL",0)
~ THEN REPLY #8950 /* ~Warte und hör, was Dak'kon sagt.~ */ DO ~SetGlobal("Dictionary_Githzerai_Tcha","GLOBAL",1)
~ EXTERN ~DDAKKON~ 13
  IF ~  GlobalGT("Dictionary_Githzerai_Tcha","GLOBAL",0)
~ THEN REPLY #8951 /* ~Warte und hör, was Dak'kon sagt.~ */ EXTERN ~DDAKKON~ 13
  IF ~~ THEN REPLY #8952 /* ~"Dak'kon, das macht nichts. Laß uns gehen."~ */ EXIT
END

IF ~~ THEN BEGIN 59 // from:
  SAY #8679 /* ~Der Githzerai schweigt eine Zeitlang. "An dieser Sache haftet der Ruch der Illithids." Seine Blicke streifen über Dak'kons Gesicht. "Ich sehe keine Ketten an dir. Du sagst die Wahrheit. Wie kam es zu dieser Blasphemie?"~ */
  IF ~~ THEN REPLY #8953 /* ~Hör ihm zu.~ */ EXTERN ~DDAKKON~ 14
  IF ~~ THEN REPLY #8954 /* ~"Dak'kon, das macht nichts. Laß uns gehen."~ */ EXIT
END

IF ~~ THEN BEGIN 60 // from:
  SAY #8680 /* ~Der Githzerai sieht dich nicht an. Seine Aufmerksamkeit ist auf Dak''kon gerichtet. "Er soll reden. Ich werde ihn anhören."~ */
  IF ~~ THEN EXTERN ~DDAKKON~ 15
END

IF ~~ THEN BEGIN 61 // from: 58.0 58.1 58.2
  SAY #8681 /* ~Der Githzerai wendet sich zu dir und starrt dich an. Dak'kons Blick bleibt auf den Githzerai gerichtet .~ */
  IF ~  Global("Dakkon_Slave","GLOBAL",1)
~ THEN REPLY #8955 /* ~"Dein glotzender Blick bringt mich langsam auf die Palme. Also, sprich zu mir und nicht zu meinem Sklaven. Wirst du jetzt meine Fragen beantworten oder nicht?"~ */ DO ~IncrementGlobal("BD_DAKKON_MORALE","GLOBAL",-1)
~ GOTO 63
  IF ~~ THEN REPLY #8956 /* ~"Ich würde es vorziehen, wenn du mit mir und nicht mit meinem Begleiter reden würdest. Wirst du jetzt meine Fragen beantworten oder nicht?"~ */ GOTO 9
  IF ~~ THEN REPLY #8957 /* ~"Ist irgendetwas nicht in Ordnung?"~ */ GOTO 63
  IF ~~ THEN REPLY #8958 /* ~"Vergiß das einfach, Dak'kon. Laß uns verschwinden."~ */ EXIT
END

IF ~~ THEN BEGIN 62 // from: 68.2 68.3
  SAY #8682 /* ~Die Klinge des Githzerai verschwindet und er tritt zurück. Dak'kons Klinge senkt sich. Der Githzerai faucht Dak'kon an. "Vilquars Auge war nicht so klar und Selquants Herz nicht so böse. Dies soll nicht vergessen sein." Er scheint gehen zu wollen.~ */
  IF ~  Global("Know_Githyanki","GLOBAL",1)
~ THEN REPLY #8959 /* ~"Du hast Angst, Githyanki-Hund? Greif mich doch an, wenn du dich traust."~ */ DO ~SetGlobal("BD_DAKKON_MORALE","GLOBAL",0)
Enemy()
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
~ EXIT
  IF ~  Global("Know_Githyanki","GLOBAL",0)
~ THEN REPLY #8960 /* ~"Du hast Angst, Gith-Hund? Greif mich doch an, wenn du dich traust."~ */ DO ~SetGlobal("BD_DAKKON_MORALE","GLOBAL",0)
Enemy()
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
~ EXIT
  IF ~~ THEN REPLY #8961 /* ~Laß ihn gehen.~ */ DO ~Enemy()
~ EXIT
  IF ~~ THEN REPLY #8962 /* ~Greif den Gith an, als er gerade gehen will.~ */ DO ~Enemy()
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
SetGlobal("BD_DAKKON_MORALE","GLOBAL",0)
~ EXIT
END

IF ~~ THEN BEGIN 63 // from: 61.0 61.2
  SAY #8683 /* ~Der Githzerai wendet sich zu Dak'kon. "Die Worte dieses Menschen sind Gift für meine Ohren. Muß ich ihm zuhören?"~ */
  IF ~~ THEN REPLY #8963 /* ~"Sprich mit mir und nicht mit ihm, Gith."~ */ GOTO 64
  IF ~~ THEN REPLY #8964 /* ~"Stimmt irgendwas nicht?"~ */ EXTERN ~DDAKKON~ 7
  IF ~~ THEN REPLY #8965 /* ~Warte und hör, was Dak'kon sagt.~ */ EXTERN ~DDAKKON~ 7
  IF ~~ THEN REPLY #8966 /* ~"Vergiß das einfach, Dak'kon. Laß uns verschwinden."~ */ EXIT
END

IF ~~ THEN BEGIN 64 // from: 63.0
  SAY #8684 /* ~Für einen Augenblick scheint es so, als habe der Githzerai dich nicht gehört. Dann hört man das Singen von Stahl und eine Klinge ragt aus der Hand des Githzerai hervor. Sofort hat auch Dak'kon seine Klinge gezückt: Anscheinend ist er bereit, den Githzerai anzugreifen, falls dieser einen Schritt auf dich zugehen sollte.~ */
  IF ~~ THEN REPLY #8967 /* ~"Na los. Greif mich an, Gith. Wirst schon sehen, was dann passiert."~ */ GOTO 65
  IF ~~ THEN REPLY #8968 /* ~"Wenn er einen Schritt auf mich zu macht, Dak'kon, will ich, daß du ihn tötest."~ */ DO ~IncrementGlobal("BD_DAKKON_MORALE","GLOBAL",-2)
~ GOTO 65
  IF ~~ THEN REPLY #8969 /* ~"Nun beruhigt euch doch. Ich will doch bloß ein paar Fragen beantwortet haben."~ */ GOTO 65
END

IF ~~ THEN BEGIN 65 // from: 64.0 64.1 64.2
  SAY #8685 /* ~Trotz Dak'kons gezückter Klinge läßt dich der Githzerai nicht aus den Augen. Seine nächste Frage scheint er an Dak'kon zu richten. "Ist dein Bewußtsein in dieser Angelegenheit gespalten?"~ */
  IF ~~ THEN EXTERN ~DDAKKON~ 8
END

IF ~~ THEN BEGIN 66 // from:
  SAY #8686 /* ~"Diese Sache trägt den Ruch der Illithiden an sich, *Zerth*. Du hast deine Klinge gegen einen aus dem 'Volk' um seinetwillen gezogen. Im Namen Zerthimons, diesen Angriff gegen deinen Geist kann ich nicht zulassen, ebensowenig wie ich zulassen kann, daß seine Worte unbeantwortet mit irgend etwas Geringerem als seinem Blut fallen."~ */
  IF ~~ THEN EXTERN ~DDAKKON~ 9
END

IF ~~ THEN BEGIN 67 // from:
  SAY #8687 /* ~Der Githzerai schaut dich an, doch seine Aufmerksamkeit scheint noch immer Dak'kon zu gelten. "Wie kam es zu dieser Blasphemie, *Zerth*?"~ */
  IF ~  Global("Dictionary_Githzerai_Tcha","GLOBAL",0)
~ THEN REPLY #8970 /* ~Warte und hör, was Dak'kon sagt.~ */ DO ~SetGlobal("Dictionary_Githzerai_Tcha","GLOBAL",1)
~ EXTERN ~DDAKKON~ 10
  IF ~  GlobalGT("Dictionary_Githzerai_Tcha","GLOBAL",0)
~ THEN REPLY #8971 /* ~Warte und hör, was Dak'kon sagt.~ */ EXTERN ~DDAKKON~ 10
  IF ~~ THEN REPLY #8972 /* ~Greif den Gith an, so lange er abgelenkt ist.~ */ DO ~Enemy()
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
IncrementGlobal("BD_DAKKON_MORALE","GLOBAL",-2)
~ EXIT
END

IF ~~ THEN BEGIN 68 // from:
  SAY #8688 /* ~Der Githzerai wartet. Er wirkt äußerst angespannt.~ */
  IF ~  Global("Know_Githyanki","GLOBAL",1)
~ THEN REPLY #8973 /* ~"Na komm schon, Githyanki-Hund. Greif mich doch an, wenn du dich traust."~ */ DO ~SetGlobal("BD_DAKKON_MORALE","GLOBAL",0)
Enemy()
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
~ EXIT
  IF ~  Global("Know_Githyanki","GLOBAL",0)
~ THEN REPLY #8974 /* ~"Na komm schon, Gith-Hund. Greif mich doch an, wenn du dich traust."~ */ DO ~SetGlobal("BD_DAKKON_MORALE","GLOBAL",0)
Enemy()
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
~ EXIT
  IF ~  Global("Dictionary_Githzerai_Vilquar","GLOBAL",0)
~ THEN REPLY #8975 /* ~Warte ab, wie das endet...~ */ DO ~SetGlobal("Dictionary_Githzerai_Vilquar","GLOBAL",1)
~ GOTO 62
  IF ~  GlobalGT("Dictionary_Githzerai_Vilquar","GLOBAL",0)
~ THEN REPLY #8976 /* ~Warte ab, wie das endet...~ */ GOTO 62
  IF ~~ THEN REPLY #8977 /* ~Greif den Gith an, so lange er abgelenkt ist.~ */ DO ~Enemy()
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
IncrementGlobal("BD_DAKKON_MORALE","GLOBAL",-2)
~ EXIT
END

IF ~  Global("Evil_Githzerai_1","GLOBAL",1)
~ THEN BEGIN 69 // from:
  SAY #8689 /* ~Dieser Githzerai dreht sich zu dir um, als du dich näherst. Seine Augen sind wie zwei schwarze Steine, seine Blicke mustern kurz dein Äußeres und dann starrt er in deine Augen. Obwohl er menschenähnlich aussieht, hat seine Haut eine gelbliche Farbe und er besitzt verhärmte Gesichtszüge. Seine Gestalt ist hager und knochig; seine Gliedmaßen sehen aus, als bestünden sie nur aus ineinander verschlungenen Muskelsträngen. Seine Kleidung ist eine eigenartige Mischung aus grell-bunten und schmutzig-braunen Farben.~ */
  IF ~  GlobalGT("Know_Githzerai_Speak","GLOBAL",0)
~ THEN REPLY #8978 /* ~"Zerchais Geschlecht verneigt sich vor dir."~ */ GOTO 70
  IF ~  GlobalGT("Know_Githzerai_Speak","GLOBAL",0)
~ THEN REPLY #8979 /* ~"Sei gegrüßt, Schwert-Schwinger."~ */ GOTO 70
  IF ~~ THEN REPLY #8980 /* ~"Sei gegrüßt."~ */ GOTO 70
  IF ~~ THEN REPLY #8981 /* ~Laß den Gith in Ruhe.~ */ EXIT
END

IF ~~ THEN BEGIN 70 // from: 69.0 69.1 69.2
  SAY #8690 /* ~Es gibt ein stählernes Flüstern, und aus der Hand des Githzerai sprießt eine Klinge. "Du bist mir *bekannt*. Du hast einen aus dem 'Volk' angegriffen. Ich werde den Steinen ermöglichen, dein Blut tief einzusaugen." ~ */
  IF ~  NearbyDialog("DDakkon")
~ THEN REPLY #8982 /* ~Lüge: "Du fragst einen Mann, der mit einem Githzerai-*Zert* zusammen reist, ob er einen Githzerai getötet hat? Du mußt dich vertan haben."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Githzerai_2","GLOBALLaw",-1)
IncrementGlobalOnceEx("GLOBALEvil_Githzerai_2","GLOBALGood",-1)
~ GOTO 73
  IF ~  CheckStatGT(Protagonist,11,CHR)
~ THEN REPLY #8983 /* ~Lüge: "Du mußt dich irren. Ich habe nie einen deiner Leute angegriffen."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Githzerai_2","GLOBALLaw",-1)
IncrementGlobalOnceEx("GLOBALEvil_Githzerai_2","GLOBALGood",-1)
~ GOTO 71
  IF ~  CheckStatLT(Protagonist,12,CHR)
~ THEN REPLY #8984 /* ~Lüge: "Ich habe niemanden angegriffen. Du mußt mich mit jemand anderem verwechseln."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Githzerai_2","GLOBALLaw",-1)
IncrementGlobalOnceEx("GLOBALEvil_Githzerai_2","GLOBALGood",-1)
~ GOTO 12
  IF ~~ THEN REPLY #8985 /* ~Greif ihn zuerst an.~ */ DO ~Enemy()
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
~ EXIT
  IF ~~ THEN REPLY #8986 /* ~Ignoriere den Gith und geh einfach weg.~ */ GOTO 12
END

IF ~~ THEN BEGIN 71 // from: 70.1
  SAY #8691 /* ~Der Githzerai zögert. "Ein Irrtum ist ausgeschlossen. Die Beschreibung - ein narbengezeichneter Mann - ist richtig."~ */
  IF ~~ THEN REPLY #8987 /* ~Lüge: "Sieh mal, dies ist eine riesige Stadt. Ich bin bestimmt nicht der, nach dem du suchst. Ich will weder dir noch deinen Leuten etwas antun."
~ */ GOTO 72
  IF ~~ THEN REPLY #8988 /* ~Greif ihn zuerst an.~ */ DO ~Enemy()
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
~ EXIT
END

IF ~~ THEN BEGIN 72 // from: 71.0
  SAY #8692 /* ~Der Githzerai legt seine Stirn in Falten und einen Augenblick später senkt er seine Klinge. "Vergib mir. In Zukunft werde ich meine Worte mit Bedacht wählen." Er wirkt noch immer argwöhnisch.~ */
  IF ~  NearbyDialog("DDakkon")
~ THEN REPLY #8989 /* ~"Ehrlich gesagt hattest du vorhin recht. Ich hab' nur darauf gewartet, daß deine Achtsamkeit nachläßt..."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Githzerai_3","GLOBALLaw",-1)
IncrementGlobalOnceEx("GLOBALEvil_Githzerai_3","GLOBALGood",-1)
Enemy()
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
IncrementGlobal("BD_DAKKON_MORALE","GLOBAL",-2)
~ EXIT
  IF ~  !NearbyDialog("DDakkon")
~ THEN REPLY #8990 /* ~"Ehrlich gesagt hattest du vorhin recht. Ich hab' nur darauf gewartet, daß deine Achtsamkeit nachläßt..."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Githzerai_3","GLOBALLaw",-1)
IncrementGlobalOnceEx("GLOBALEvil_Githzerai_3","GLOBALGood",-1)
Enemy()
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
~ EXIT
  IF ~~ THEN REPLY #8991 /* ~"Tu dir keinen Zwang an. Leb wohl."~ */ DO ~Enemy()
~ EXIT
END

IF ~~ THEN BEGIN 73 // from: 70.0
  SAY #8693 /* ~Der Githzerai zögert. "Ein Irrtum ist ausgeschlossen. Die Beschreibung - ein narbengezeichneter Mann - ist richtig." Er schaut zu Dak'kon. "Sprichst du für diesen Mann, *Zerth*?"~ */
  IF ~~ THEN REPLY #8992 /* ~"Sag ihm, er hat unrecht, Dak'kon."~ */ DO ~IncrementGlobal("BD_DAKKON_MORALE","GLOBAL",-2)
~ EXTERN ~DDAKKON~ 16
  IF ~~ THEN REPLY #8993 /* ~Greif ihn an, während er Dak'kon ansieht.~ */ DO ~Enemy()
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
IncrementGlobal("BD_DAKKON_MORALE","GLOBAL",-2)
~ EXIT
END
