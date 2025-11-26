// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DPILLAR.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\de_DE\dialog.tlk
// dialogF  : (none)

BEGIN ~DPILLAR~

IF ~  Global("Pillar","GLOBAL",0)
~ THEN BEGIN 0 // from:
  SAY #51733 /* ~Der Anblick dieses Etwas, dieses schrecklichen, gigantischen, pulsierenden *Etwas*, erfüllt dich mit Übelkeit, unbegründetem Haß und einem schwachen Gefühl von Vertrautheit. Die zahllosen verfaulenden Köpfe, die die riesige Anhäufung bilden, scheinen ständig zu verrutschen und zu pulsieren. Sie streiten, weinen, reden, rufen und flüstern abwechselnd miteinander. Ständig tauchen Köpfe von irgendwo aus dem Inneren des verfaulten Kerns an der Oberfläche des Stapels auf, während andere zurück in die greuliche Säule sinken.~ */
  IF ~  NearbyDialog("Dmorte")
Global("Pillar_Morte","AR1001",0)
~ THEN REPLY #51734 /* ~Zieh die Aufmerksamkeit der Säule auf dich.~ */ EXTERN ~DMORTE~ 512
  IF ~  !NearbyDialog("Dmorte")
~ THEN REPLY #53326 /* ~Zieh die Aufmerksamkeit der Säule auf dich.~ */ DO ~SetGlobal("Pillar","GLOBAL",1)
~ GOTO 1
  IF ~~ THEN REPLY #53327 /* ~Geh weg von der Säule, bevor sie dich bemerkt.~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.1 53.1 53.2
  SAY #53328 /* ~Du machst noch einen vorsichtigen Schritt auf den Pfeiler zu, da *brechen* sie ihre Unterhaltung plötzlich ab. Die unzähligen Köpfe an der Oberfläche der Säule wenden sich langsam und synchron um und sehen dich an. Stumm blicken sie dich an, und ihr übelriechender, feuchter Atem schlägt dir entgegen.~ */
  IF ~  NearbyDialog("Dgrace")
Global("Pillar_Musk","AR1001",0)
~ THEN REPLY #53329 /* ~"Ich hätte da ein paar Fragen, Säule..."~ */ DO ~SetGlobal("Pillar_Musk","AR1001",1)
~ GOTO 2
  IF ~  NearbyDialog("Dannah")
!NearbyDialog("Dgrace")
Global("Pillar_Musk","AR1001",0)
~ THEN REPLY #53330 /* ~"Ich hätte da ein paar Fragen, Säule..."~ */ DO ~SetGlobal("Pillar_Musk","AR1001",1)
~ GOTO 2
  IF ~  NearbyDialog("Dgrace")
Global("Pillar_Musk","AR1001",1)
~ THEN REPLY #53331 /* ~"Ich hätte da ein paar Fragen, Säule..."~ */ GOTO 12
  IF ~  NearbyDialog("Dannah")
!NearbyDialog("Dgrace")
Global("Pillar_Musk","AR1001",1)
~ THEN REPLY #53332 /* ~"Ich hätte da ein paar Fragen, Säule..."~ */ GOTO 12
  IF ~  !NearbyDialog("Dgrace")
!NearbyDialog("Dannah")
~ THEN REPLY #53333 /* ~"Ich hätte da ein paar Fragen, Säule..."~ */ GOTO 12
  IF ~  NearbyDialog("Dmorte")
~ THEN REPLY #53334 /* ~"Ich bin nur zufällig vorbeigekommen. Leb wohl."~ */ GOTO 50
  IF ~  !NearbyDialog("Dmorte")
~ THEN REPLY #68082 /* ~"Ich bin nur zufällig vorbeigekommen. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.0 1.1 56.0 56.1 61.0 61.1 63.0 63.1
  SAY #53335 /* ~Die Köpfe auf der Säule sprechen alle gleichzeitig und formen so die Stimme dieses Dinges - ein fürchterlicher, gurgelnder Klang, der vor sich hin blubbert, während aus ihren Mündern der stechende Gestank verfaulter Zersetzung emporsteigt. "DER GERUCH, ER IST STARK. ER WIRD DIE EBENEN DURCHQUEREN, UND BEL WIRD KOMMEN."~ */
  IF ~  NearbyDialog("Dgrace")
~ THEN REPLY #53336 /* ~"Der... Geruch? Was meinst du?"~ */ GOTO 3
  IF ~  NearbyDialog("Dannah")
!NearbyDialog("Dgrace")
~ THEN REPLY #53337 /* ~"Der... Geruch? Was meinst du?"~ */ GOTO 4
END

IF ~~ THEN BEGIN 3 // from: 2.0
  SAY #53338 /* ~Die Augen der Köpfe drehen sich in ihren nassen Höhlen und heften sich auf Grace, die Gefallene. "DER GERUCH... IHR MOSCHUSDUFT... DER *MOSCHUS* DER TANAR-RI. DER BITTERSÜSSE DUFT IST *WEIT* ZU RIECHEN UND WIRD BAATEZU ANLOCKEN, BALD. IHR HERR, BEL, WIRD WÜTEND SEIN."~ */
  IF ~  NearbyDialog("Dmorte")
~ THEN REPLY #53339 /* ~"Ich verstehe..."~ */ EXTERN ~DMORTE~ 511
  IF ~  !NearbyDialog("Dmorte")
~ THEN REPLY #53340 /* ~"Ich verstehe..."~ */ GOTO 5
END

IF ~~ THEN BEGIN 4 // from: 2.1
  SAY #53341 /* ~Die Augen der Köpfe drehen sich in ihren nassen Höhlen und heften sich auf Annah. "DER DUFT... IHR MOSCHUS... DER TANAR-RI-*MOSCHUS* DES SCHEUSALS. DER BITTERSÜSSE DUFT IST *WEIT* ZU RIECHEN UND WIRD BAATEZU ANLOCKEN, BALD. IHR HERR, BEL, WIRD WÜTEND SEIN."~ */
  IF ~  NearbyDialog("Dmorte")
~ THEN REPLY #53342 /* ~"Ich verstehe..."~ */ EXTERN ~DMORTE~ 511
  IF ~  !NearbyDialog("Dmorte")
~ THEN REPLY #53343 /* ~"Ich verstehe..."~ */ GOTO 5
END

IF ~~ THEN BEGIN 5 // from: 3.1 4.1
  SAY #53344 /* ~Die Köpfe wenden ihren Blick wieder dir zu, einige schniefen noch geräuschvoll. "WENN DU *FRAGEN* AN UNS HAST, *BEEILST* DU DICH BESSER." Einige der Köpfe blinzeln und gurgeln leise. Du nimmst an, daß sie dich auslachen.~ */
  IF ~  NearbyDialog("Dannah")
Global("Pillar_Pharod","AR1001",0)
~ THEN REPLY #53345 /* ~"Wie ich schon sagte, ich hätte-"~ */ DO ~SetGlobal("Pillar_Pharod","AR1001",1)
~ GOTO 6
  IF ~  NearbyDialog("Dannah")
Global("Pillar_Pharod","AR1001",1)
~ THEN REPLY #53346 /* ~"Wie ich bereits sagte: Ich hätte da ein paar Fragen..."~ */ GOTO 12
  IF ~  !NearbyDialog("Dannah")
~ THEN REPLY #68075 /* ~"Wie ich schon sagte: Ich hätte ein paar Fragen..."~ */ GOTO 12
END

IF ~~ THEN BEGIN 6 // from: 5.0
  SAY #53347 /* ~Bevor du aussprechen kannst, erzittert ein Teil des Pfeilers, an dem sich ein weiterer Kopf den Weg an die Oberfläche bahnt. Als ein Teil des widerlichen Schleims abgetropft ist, erkennst du Pharods Gesicht. Er spuckt einen Mundvoll blutiger Zysten aus und krächzt: "Annah, mein liebes Kind! Bist du das?"~ */
  IF ~~ THEN EXTERN ~DANNAH~ 263
END

IF ~~ THEN BEGIN 7 // from:
  SAY #53348 /* ~Die anderen Köpfe sind zum größten Teil still, während Pharods spricht... Nur ein paar flüstern leise vor sich hin und werfen Annah und dem Kopf ihres Pflegevaters böse Seitenblicke zu. "Ich hatte unrecht, mein liebes Kind, mit der Kugel. Es war nicht genug, nein, und nun sieh, wo ich gelandet bin... Ich flehe dich an, liebste Annah! Rette deinen armen Vater! Rette mich! Oh, bitte, rette mich! Rette m-" Aber noch während er spricht, beginnt Pharods jammernder Kopf wieder in der Säule zu versinken...~ */
  IF ~~ THEN EXTERN ~DANNAH~ 264
END

IF ~~ THEN BEGIN 8 // from:
  SAY #53352 /* ~"GENUG," bellen die stinkenden Köpfe der Säule. "WIR SIND DEINES UNBEDEUTENDEN GEPLAPPERS MÜDE UND MÖCHTEN WISSEN, WAS DU VON UNS WILLST."~ */
  IF ~~ THEN REPLY #53353 /* ~"Fragen. Ich hätte Fragen..."~ */ GOTO 12
  IF ~~ THEN REPLY #53354 /* ~"Vergiß es. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 9 // from:
  SAY #53355 /* ~Du machst noch einen vorsichtigen Schritt auf die Säule zu, da *brechen* sie ihre Unterhaltung plötzlich ab. Die unzähligen Köpfe an der Oberfläche der Säule wenden sich langsam und synchron um und sehen dich an. Stumm blicken sie dich an, und ihr übelriechender, feuchter Atem schlägt dir entgegen... bis sie hinter dir Morte kauern sehen.~ */
  IF ~~ THEN DO ~SetGlobal("Pillar","GLOBAL",1)
SetGlobal("Pillar_Morte","AR1001",1)
~ EXTERN ~DMORTE~ 525
END

IF ~~ THEN BEGIN 10 // from:
  SAY #53356 /* ~Die Köpfe auf der Säule sprechen alle gleichzeitig und formen so die Stimme dieses Dinges - ein fürchterlicher, gurgelnder Klang, der vor sich hin blubbert, während aus ihren Mündern der stechende Gestank verfaulter Zersetzung emporsteigt. "*DU* BIST ES... ES IST LANGE HER, SEHR LANGE." Einige der Köpfe beginnen zu brabbeln und zu sabbern, dabei singen sie hämisch "...Totenschädel, Totenschädel..." Sie lecken sich die Lippen, während sie Morte anstarren.~ */
  IF ~~ THEN REPLY #53357 /* ~"Was meinst du?"~ */ GOTO 11
END

IF ~~ THEN BEGIN 11 // from: 10.0
  SAY #53358 /* ~"RUHE! WIR SPRECHEN NICHT MIT DIR, SONDERN MIT DEM TOTENSCHÄDEL. WILLKOMMEN ZURÜCK, KLEINER. HAST DU DICH ENDLICH ENTSCHLOSSEN, IN DIE GEMEINDE ZURÜCKZUKEHREN, DEIN SCHICKSAL ANZUNEHMEN, DEINE HEILIGE PFLICHT WIEDER AUFZUNEHMEN?" Mehrere Köpfe schießen aus der Mitte der Säule heraus, sie knirschen mit ihren kaputten Zähnen und schreien "Ja, komm zurück! Komm zurück zu uns, Totenschädel! Totenschädel..."~ */
  IF ~~ THEN EXTERN ~DMORTE~ 526
END

IF ~~ THEN BEGIN 12 // from: 1.2 1.3 1.4 5.1 5.2 8.0 14.0 30.0 37.3 38.2 39.1 40.1 43.1 44.1 45.1 46.1 47.0 48.0 49.0 56.2 56.3 56.4 61.2 61.3 61.4 63.2 63.3 63.4
  SAY #53359 /* ~Träge bewegen sich die Köpfe über die Säule, sie nicken und murmeln, bevor sie in ihrer gräßlichen Stimme sagen: "DANN STELLE UNS EINE FRAGE, UND SEI BEREIT, UNSERE FORDERUNG ZU HÖREN - DU WIRST UNS FÜR DIE ANTWORT EINEN DIENST ERWEISEN."~ */
  IF ~~ THEN REPLY #53360 /* ~"Was bist du?"~ */ GOTO 13
  IF ~~ THEN REPLY #53361 /* ~"Wie komme ich zur Festung der Reue?"~ */ DO ~SetGlobal("Pillar_Question","AR1001",2)
~ GOTO 15
  IF ~~ THEN REPLY #53362 /* ~"Wer bin ich?"~ */ DO ~SetGlobal("Pillar_Question","AR1001",3)
~ GOTO 15
  IF ~~ THEN REPLY #53363 /* ~"Wer ist mein Mörder?"~ */ GOTO 49
  IF ~  Global("Leave_Baator","GLOBAL",0)
~ THEN REPLY #53364 /* ~"Wie komm' ich von hier weg?"~ */ DO ~SetGlobal("Pillar_Question","AR1001",4)
~ GOTO 15
  IF ~  NearbyDialog("Dmorte")
~ THEN REPLY #53365 /* ~"Vergiß es. Leb wohl."~ */ GOTO 50
  IF ~  !NearbyDialog("Dmorte")
~ THEN REPLY #53366 /* ~"Vergiß es. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 13 // from: 12.0
  SAY #53367 /* ~Die Köpfe gurgeln und krächzen ihre Antwort aus verwesten Lippen: "WIR WÜRDEN DIESE FRAGE BEANTWORTEN, WENN DU UNS EINEN DIENST ERWEIST..."~ */
  IF ~  NearbyDialog("Dmorte")
~ THEN REPLY #53368 /* ~"Nun gut. Was verlangst du?"~ */ EXTERN ~DMORTE~ 527
  IF ~  NearbyDialog("Dgrace")
!NearbyDialog("Dmorte")
~ THEN REPLY #53369 /* ~"Nun gut. Was verlangst du?"~ */ EXTERN ~DGRACE~ 172
  IF ~  NearbyDialog("Dnordom")
!NearbyDialog("Dmorte")
!NearbyDialog("Dgrace")
~ THEN REPLY #53370 /* ~"Nun gut. Was verlangst du?"~ */ EXTERN ~DNORDOM~ 131
  IF ~  NearbyDialog("Dannah")
!NearbyDialog("Dmorte")
!NearbyDialog("Dgrace")
!NearbyDialog("Dnordom")
~ THEN REPLY #53371 /* ~"Nun gut. Was verlangst du?"~ */ EXTERN ~DANNAH~ 270
  IF ~  NearbyDialog("Ddakkon")
!NearbyDialog("Dmorte")
!NearbyDialog("Dgrace")
!NearbyDialog("Dnordom")
!NearbyDialog("Dannah")
~ THEN REPLY #53372 /* ~"Nun gut. Was verlangst du?"~ */ EXTERN ~DDAKKON~ 184
  IF ~  !NearbyDialog("Dmorte")
!NearbyDialog("Dgrace")
!NearbyDialog("Dnordom")
!NearbyDialog("Dannah")
!NearbyDialog("Ddakkon")
Global("Where_Fhjull","AR1001",0)
~ THEN REPLY #53373 /* ~"Nun gut. Was verlangst du?"~ */ DO ~SetGlobal("Pillar_Question","AR1001",1)
~ GOTO 19
  IF ~  !NearbyDialog("Dmorte")
!NearbyDialog("Dgrace")
!NearbyDialog("Dnordom")
!NearbyDialog("Dannah")
!NearbyDialog("Ddakkon")
Global("Where_Fhjull","AR1001",1)
PartyHasItem("Cube")
~ THEN REPLY #53374 /* ~"Nun gut. Was verlangst du?"~ */ DO ~SetGlobal("Pillar_Question","AR1001",1)
~ GOTO 20
  IF ~  !NearbyDialog("Dmorte")
!NearbyDialog("Dgrace")
!NearbyDialog("Dnordom")
!NearbyDialog("Dannah")
!NearbyDialog("Ddakkon")
Global("Where_Fhjull","AR1001",1)
!PartyHasItem("Cube")
~ THEN REPLY #53375 /* ~"Nun gut. Was verlangst du?"~ */ DO ~SetGlobal("Pillar_Question","AR1001",1)
~ GOTO 23
  IF ~  NearbyDialog("Dmorte")
~ THEN REPLY #53376 /* ~"Vergiß es. Leb wohl."~ */ GOTO 50
  IF ~  !NearbyDialog("Dmorte")
~ THEN REPLY #53377 /* ~"Vergiß es. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 14 // from:
  SAY #53378 /* ~Die Köpfe fallen dir mit vereinter Stimme ins Wort: "RUHE! MIT SOLCH GEWÖHNLICHEM GESCHWÄTZ ENTEHRST DU UNSERE VORNEHME POSITION!" Ein besonders scheußlicher Kopf ruft: "Und uns *alle* Lügner zu nennen ist-", bevor er wieder ins gräßliche Herz der Säule gesogen wird.~ */
  IF ~~ THEN REPLY #53379 /* ~"Ich hätte da noch eine Frage..."~ */ GOTO 12
  IF ~  NearbyDialog("Dmorte")
~ THEN REPLY #53380 /* ~"Na gut, dann gehe ich. Leb wohl."~ */ GOTO 50
  IF ~  !NearbyDialog("Dmorte")
~ THEN REPLY #53381 /* ~"Na gut, dann gehe ich. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 15 // from: 12.1 12.2 12.4
  SAY #53382 /* ~Die Köpfe gurgeln und krächzen ihre Antwort aus verwesten Lippen: "WIR WÜRDEN DIESE FRAGE BEANTWORTEN, WENN DU UNS EINEN DIENST ERWEIST..."~ */
  IF ~  NearbyDialog("Dmorte")
~ THEN REPLY #53383 /* ~"Was verlangst du, Säule?"~ */ GOTO 16
  IF ~  !NearbyDialog("Dmorte")
Global("Where_Fhjull","AR1001",0)
~ THEN REPLY #53384 /* ~"Was verlangst du, Säule?"~ */ GOTO 19
  IF ~  !NearbyDialog("Dmorte")
Global("Where_Fhjull","AR1001",1)
PartyHasItem("Cube")
~ THEN REPLY #53385 /* ~"Was verlangst du, Säule?"~ */ GOTO 20
  IF ~  !NearbyDialog("Dmorte")
Global("Where_Fhjull","AR1001",1)
!PartyHasItem("Cube")
NearbyDialog("Dgrace")
~ THEN REPLY #53386 /* ~"Was verlangst du, Säule?"~ */ GOTO 21
  IF ~  !NearbyDialog("Dmorte")
Global("Where_Fhjull","AR1001",1)
!PartyHasItem("Cube")
!NearbyDialog("Dgrace")
NearbyDialog("Dannah")
~ THEN REPLY #53387 /* ~"Was verlangst du, Säule?"~ */ GOTO 22
  IF ~  !NearbyDialog("Dmorte")
Global("Where_Fhjull","AR1001",1)
!PartyHasItem("Cube")
!NearbyDialog("Dgrace")
!NearbyDialog("Dannah")
~ THEN REPLY #53388 /* ~"Was verlangst du, Säule?"~ */ GOTO 23
  IF ~  NearbyDialog("Dmorte")
~ THEN REPLY #53389 /* ~"Vergiß es. Leb wohl."~ */ DO ~SetGlobal("Pillar_Question","AR1001",0)
~ GOTO 50
  IF ~  !NearbyDialog("Dmorte")
~ THEN REPLY #53390 /* ~"Vergiß es. Leb wohl."~ */ DO ~SetGlobal("Pillar_Question","AR1001",0)
~ EXIT
END

IF ~~ THEN BEGIN 16 // from: 15.0
  SAY #53391 /* ~Die Köpfe der Säule drehen sich um und grinsen Morte schief an. "DER TOTENSCHÄDEL... WIR FORDERN DEN TOTENSCHÄDEL ALS TRIBUT. GIB IHN UNS ZURÜCK, UND DU BEKOMMST DEINE ANTWORT."~ */
  IF ~~ THEN EXTERN ~DMORTE~ 528
END

IF ~~ THEN BEGIN 17 // from:
  SAY #53392 /* ~"SCHLUSS MIT DIESEM KLÄGLICHEN GEPLÄRR, SCHÄDEL! DIE ENTSCHEIDUNG LIEGT NICHT BEI DIR!" Die vielen Köpfe der Säule schwenken langsam zu dir herum, ihre Augen sind zu Schlitzen verengt. "ZU LANGE HAT ER SCHON SEIN SCHICKSAL BETROGEN. ER GEHÖRT *UNS*. WÜRDEST DU IHN ZURÜCKGEBEN, WÄREN WIR ÜBER DIESES GESCHENK SEHR ERFREUT... WIR MÖCHTEN UNS AN SEINEN SCHREIEN ERGÖTZEN..."~ */
  IF ~  Global("Where_Fhjull","AR1001",1)
~ THEN REPLY #53393 /* ~"Na gut... du kannst ihn haben."~ */ GOTO 18
  IF ~  Global("Where_Fhjull","AR1001",0)
~ THEN REPLY #53394 /* ~"Na gut... du kannst ihn haben."~ */ EXTERN ~DMORTE~ 532
  IF ~  Global("Where_Fhjull","AR1001",0)
~ THEN REPLY #53395 /* ~"Ein Geschenk? Was für ein Geschenk würdest du denn *sonst* annehmen?"~ */ GOTO 19
  IF ~  Global("Where_Fhjull","AR1001",1)
PartyHasItem("Cube")
~ THEN REPLY #53396 /* ~"Ein Geschenk? Was für ein Geschenk würdest du denn *sonst* annehmen?"~ */ GOTO 20
  IF ~  Global("Where_Fhjull","AR1001",1)
!PartyHasItem("Cube")
NearbyDialog("Dgrace")
~ THEN REPLY #53397 /* ~"Ein Geschenk? Was für ein Geschenk würdest du denn *sonst* annehmen?"~ */ GOTO 21
  IF ~  Global("Where_Fhjull","AR1001",1)
!PartyHasItem("Cube")
!NearbyDialog("Dgrace")
NearbyDialog("Dannah")
~ THEN REPLY #53398 /* ~"Ein Geschenk? Was für ein Geschenk würdest du denn *sonst* annehmen?"~ */ GOTO 22
  IF ~  Global("Where_Fhjull","AR1001",1)
!PartyHasItem("Cube")
!NearbyDialog("Dgrace")
!NearbyDialog("Dannah")
~ THEN REPLY #53399 /* ~"Ein Geschenk? Was für ein Geschenk würdest du denn *sonst* annehmen?"~ */ GOTO 23
  IF ~  NearbyDialog("Dmorte")
~ THEN REPLY #53400 /* ~"Vergiß es. Leb wohl."~ */ DO ~SetGlobal("Pillar_Question","AR1001",0)
~ GOTO 50
  IF ~  !NearbyDialog("Dmorte")
~ THEN REPLY #53401 /* ~"Vergiß es. Leb wohl."~ */ DO ~SetGlobal("Pillar_Question","AR1001",0)
~ EXIT
END

IF ~~ THEN BEGIN 18 // from: 17.0
  SAY #53402 /* ~"JAHHHH..." Die Köpfe beginnen sich zu winden und zu schäumen, Köpfe schießen an die Oberfläche, heulen und brabbeln und sinken dann zurück. Sie sabbern und plappern: "Ich kann es kaum erwarten, mich an seinen Schreien zu ergötzen!" Ein anderer: "Verfluchte Schreie! Ein so lästiger Kerl wie er braucht *Qualen*! Ich rupfe ihm die Zähne aus, spucke sie in seine Hirnschale und schüttel' ihn wie eine Babyrassel!" Und ein anderer: "Uuh! Uuh! Ich lutsche ihm die Augen aus!"~ */
  IF ~~ THEN EXTERN ~DMORTE~ 529
END

IF ~~ THEN BEGIN 19 // from: 13.5 15.1 17.2
  SAY #53403 /* ~Die Säule neigt sich zu dir, und die Augen in den Köpfen verengen sich. "DU BESITZT *WISSEN*, DAS WIR AUCH WOLLEN. WO WOHNT DAS SCHEUSAL FHJULL SCHLANGENZUNGE? SAG ES UNS, UND WIR BEANTWORTEN DEINE FRAGE." Der heiße, stinkende Atem der Säule umhüllt dich, während sie auf deine Antwort wartet...~ */
  IF ~  Global("Lawful_Fhjull_1","GLOBAL",1)
~ THEN REPLY #53404 /* ~"In den Außenländern, wo Ul-Goris, der Vater aller Goristro, im Kraterkrieg niedergestreckt wurde. Fhjull lebt in seinem Skelett."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Fhjull_1","GLOBALLaw",-3)
IncrementGlobalOnceEx("GLOBALEvil_Fhjull_1","GLOBALGood",-3)
SetGlobal("Where_Fhjull","AR1001",1)
~ GOTO 29
  IF ~  !Global("Lawful_Fhjull_1","GLOBAL",1)
~ THEN REPLY #53405 /* ~"In den Außenländern, wo Ul-Goris, der Vater aller Goristro, im Kraterkrieg niedergestreckt wurde. Fhjull lebt in seinem Skelett."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Fhjull_1","GLOBALGood",-3)
SetGlobal("Where_Fhjull","AR1001",1)
~ GOTO 29
  IF ~  CheckStatLT(Protagonist,18,CHR)
~ THEN REPLY #53406 /* ~Du lügst: "Er hält sich... versteckt, irgendwo in den Außenländern. Unter einem großen Berg."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Pillar_1","GLOBALLaw",-1)
~ GOTO 24
  IF ~  CheckStatGT(Protagonist,17,CHR)
~ THEN REPLY #53407 /* ~Lüge: "Fhjull hat sich gut versteckt, in einer Halb-Ebene, die ein längst verstorbener Zauberer erschaffen hat. Er taucht nur gelegentlich in Sigil auf, und da habe ich ihn getroffen."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Pillar_1","GLOBALLaw",-1)
SetGlobal("Where_Fhjull","AR1001",1)
~ GOTO 29
  IF ~  PartyHasItem("Cube")
~ THEN REPLY #53408 /* ~"Das sage ich nicht. Was für *andere* Geschenke würdest du akzeptieren?"~ */ GOTO 20
  IF ~  !PartyHasItem("Cube")
NearbyDialog("Dgrace")
~ THEN REPLY #53409 /* ~"Das sage ich nicht. Was für *andere* Geschenke würdest du akzeptieren?"~ */ GOTO 21
  IF ~  !PartyHasItem("Cube")
!NearbyDialog("Dgrace")
NearbyDialog("Dannah")
~ THEN REPLY #53410 /* ~"Das sage ich nicht. Was für *andere* Geschenke würdest du akzeptieren?"~ */ GOTO 22
  IF ~  !PartyHasItem("Cube")
!NearbyDialog("Dgrace")
!NearbyDialog("Dannah")
~ THEN REPLY #53411 /* ~"Das sage ich nicht. Was für *andere* Geschenke würdest du akzeptieren?"~ */ GOTO 23
  IF ~  NearbyDialog("Dmorte")
~ THEN REPLY #53412 /* ~"Vergiß es. Leb wohl."~ */ DO ~SetGlobal("Pillar_Question","AR1001",0)
~ GOTO 50
  IF ~  !NearbyDialog("Dmorte")
~ THEN REPLY #53413 /* ~"Vergiß es. Leb wohl."~ */ DO ~SetGlobal("Pillar_Question","AR1001",0)
~ EXIT
END

IF ~~ THEN BEGIN 20 // from: 13.6 15.2 17.3 19.4 24.2
  SAY #53414 /* ~Die Köpfe der Säule bleiben für eine Weile ruhig - bis auf das Zischen der fauligen Dämpfe, die von den Spalten in ihrer ranzigen Oberfläche aufsteigen. Schließlich antwortet sie: "DU HAST EIN DING IN DEINEM BESITZ, DAS WIR GERNE FÜR UNS HÄTTEN: DEN MODRON-WÜRFEL. GIB IHN UNS UND WIR BEANTWORTEN DEINE FRAGE."~ */
  IF ~~ THEN REPLY #53415 /* ~"Hier... nimm ihn."~ */ DO ~DestroyPartyItem("cube",FALSE)
~ GOTO 25
  IF ~  NearbyDialog("Dgrace")
~ THEN REPLY #53416 /* ~"Das kann ich nicht tun. Was für *andere* Geschenke würdest du annehmen?"~ */ GOTO 21
  IF ~  !NearbyDialog("Dgrace")
NearbyDialog("Dannah")
~ THEN REPLY #53417 /* ~"Das kann ich nicht tun. Was für *andere* Geschenke würdest du annehmen?"~ */ GOTO 22
  IF ~  !NearbyDialog("Dgrace")
!NearbyDialog("Dannah")
~ THEN REPLY #53418 /* ~"Das kann ich nicht tun. Was für *andere* Geschenke würdest du annehmen?"~ */ GOTO 23
  IF ~  NearbyDialog("Dmorte")
~ THEN REPLY #53419 /* ~"Vergiß es. Leb wohl."~ */ DO ~SetGlobal("Pillar_Question","AR1001",0)
~ GOTO 50
  IF ~  !NearbyDialog("Dmorte")
~ THEN REPLY #53420 /* ~"Vergiß es. Leb wohl."~ */ DO ~SetGlobal("Pillar_Question","AR1001",0)
~ EXIT
END

IF ~~ THEN BEGIN 21 // from: 15.3 17.4 19.5 20.1 24.3
  SAY #53421 /* ~Die Säulenköpfe runzeln die Stirn, ihre Augen flackern umher. Plötzlich heften sie sich alle auf Grace, die Gefallene. "SIE REICHT UNS... JA. DIE TANAR-RI. GIB SIE UNS... WIR VERZEHREN SIE BEI LEBENDIGEM LEIBE UND BADEN UNS IN IHREM SÜSSEN BLUT... DANN BEANTWORTEN WIR DEINE FRAGE." Einige Köpfe beginnen, sehnsuchtsvoll zu stöhnen, und rufen Grace zu: "Ja, Tanar-Ri, süßer Sukkubus, du schlimmes Ding, gib dich uns hin..."~ */
  IF ~~ THEN REPLY #53422 /* ~"Also gut. Du kannst sie haben."~ */ EXTERN ~DGRACE~ 173
  IF ~  NearbyDialog("Dannah")
~ THEN REPLY #53423 /* ~"Das kann ich nicht tun. Was für *andere* Geschenke würdest du annehmen?"~ */ GOTO 22
  IF ~  !NearbyDialog("Dannah")
~ THEN REPLY #53424 /* ~"Das kann ich nicht tun. Was für *andere* Geschenke würdest du annehmen?"~ */ GOTO 23
  IF ~  NearbyDialog("Dmorte")
~ THEN REPLY #53425 /* ~"Vergiß es. Leb wohl."~ */ DO ~SetGlobal("Pillar_Question","AR1001",0)
~ GOTO 50
  IF ~  !NearbyDialog("Dmorte")
~ THEN REPLY #53426 /* ~"Vergiß es. Leb wohl."~ */ DO ~SetGlobal("Pillar_Question","AR1001",0)
~ EXIT
END

IF ~~ THEN BEGIN 22 // from: 15.4 17.5 19.6 20.2 21.1 24.4
  SAY #53427 /* ~Ein tiefes Rumpeln dringt aus dem Inneren des Säule, noch mehr Köpfe winden sich an die brodelnde Oberfläche und sezieren dich mit ihren roten Augen. Schließlich erblicken sie Annah. "DAS SCHEUSAL! GIB UNS DAS SCHEUSALMÄDCHEN, JA... WIR REISSEN SIE IN STÜCKE UND AALEN UNS IN IHREM HEISSEN, SÜSSEN BLUT... DANN BEANTWORTEN WIR DEINE FRAGE."~ */
  IF ~~ THEN REPLY #53428 /* ~"Also gut. Du kannst sie haben."~ */ EXTERN ~DANNAH~ 271
  IF ~~ THEN REPLY #53429 /* ~"Das kann ich nicht tun. Was für *andere* Geschenke würdest du annehmen?"~ */ GOTO 23
  IF ~  NearbyDialog("Dmorte")
~ THEN REPLY #53430 /* ~"Vergiß es. Leb wohl."~ */ DO ~SetGlobal("Pillar_Question","AR1001",0)
~ GOTO 50
  IF ~  !NearbyDialog("Dmorte")
~ THEN REPLY #53431 /* ~"Vergiß es. Leb wohl."~ */ DO ~SetGlobal("Pillar_Question","AR1001",0)
~ EXIT
END

IF ~~ THEN BEGIN 23 // from: 13.7 15.5 17.6 19.7 20.3 21.2 22.1 24.5
  SAY #53432 /* ~Die Münder sämtlicher Säulenköpfe verziehen sich zu einem dreckigen, kranken Grinsen. Sie glucksen und gurgeln und lachen dich aus. "DU HAST *NICHTS* FÜR UNS... AUSSER DICH SELBST. KOMM, UNSTERBLICHER... LASS UNS VON DEINEM UNSTERBLICHEN BLUT KOSTEN, DANN BEANTWORTEN WIR DEINE FRAGE." Die Köpfe schlagen ihre Zähne aufeinander und sabbern und schmatzen in freudiger Erwartung mit ihren gespaltenen, eitrigen Lippen...~ */
  IF ~~ THEN REPLY #53433 /* ~"Nun gut. Ich gehe auf deine Forderungen ein."~ */ GOTO 26
  IF ~  NearbyDialog("Dmorte")
~ THEN REPLY #53434 /* ~"Vergiß es. Leb wohl."~ */ DO ~SetGlobal("Pillar_Question","AR1001",0)
~ GOTO 50
  IF ~  !NearbyDialog("Dmorte")
~ THEN REPLY #53435 /* ~"Vergiß es. Leb wohl."~ */ DO ~SetGlobal("Pillar_Question","AR1001",0)
~ EXIT
END

IF ~~ THEN BEGIN 24 // from: 19.2
  SAY #53436 /* ~Die Schädelsäule richtet sich auf, alle ihre Köpfe sehen verachtungsvoll auf dich herab. Sie spucken ihre Worte förmlich aus: "VERSUCHE NICHT, UNS ANZULÜGEN, DU NARR. WO - IST - *FHJULL*? SAG ES UNS, UND WIR VERGEBEN DIR DEINE LIST UND BEANTWORTEN DEINE FRAGE."~ */
  IF ~  Global("Lawful_Fhjull_1","GLOBAL",1)
~ THEN REPLY #53437 /* ~"In den Außenländern, wo Ul-Goris, der Vater aller Goristro, im Kraterkrieg niedergestreckt wurde. Fhjull lebt in seinem Skelett."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Fhjull_1","GLOBALLaw",-3)
IncrementGlobalOnceEx("GLOBALEvil_Fhjull_1","GLOBALGood",-3)
SetGlobal("Where_Fhjull","AR1001",1)
~ GOTO 29
  IF ~  !Global("Lawful_Fhjull_1","GLOBAL",1)
~ THEN REPLY #53438 /* ~"In den Außenländern, wo Ul-Goris, der Vater aller Goristro, im Kraterkrieg niedergestreckt wurde. Fhjull lebt in seinem Skelett."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Fhjull_1","GLOBALGood",-3)
SetGlobal("Where_Fhjull","AR1001",1)
~ GOTO 29
  IF ~  PartyHasItem("Cube")
~ THEN REPLY #53439 /* ~"Das sage ich nicht. Was für *andere* Geschenke würdest du akzeptieren?"~ */ GOTO 20
  IF ~  !PartyHasItem("Cube")
NearbyDialog("Dgrace")
~ THEN REPLY #53440 /* ~"Das sage ich nicht. Was für *andere* Geschenke würdest du akzeptieren?"~ */ GOTO 21
  IF ~  !PartyHasItem("Cube")
!NearbyDialog("Dgrace")
NearbyDialog("Dannah")
~ THEN REPLY #53441 /* ~"Das sage ich nicht. Was für *andere* Geschenke würdest du akzeptieren?"~ */ GOTO 22
  IF ~  !PartyHasItem("Cube")
!NearbyDialog("Dgrace")
!NearbyDialog("Dannah")
~ THEN REPLY #53442 /* ~"Das sage ich nicht. Was für *andere* Geschenke würdest du akzeptieren?"~ */ GOTO 23
  IF ~  NearbyDialog("Dmorte")
~ THEN REPLY #53443 /* ~"Vergiß es. Leb wohl."~ */ DO ~SetGlobal("Pillar_Question","AR1001",0)
~ GOTO 50
  IF ~  !NearbyDialog("Dmorte")
~ THEN REPLY #53444 /* ~"Vergiß es. Leb wohl."~ */ DO ~SetGlobal("Pillar_Question","AR1001",0)
~ EXIT
END

IF ~~ THEN BEGIN 25 // from: 20.0
  SAY #53445 /* ~Du wirfst der Schädelsäule den Würfel zu, und an ihrer Seite öffnet sich eine große, stinkende Spalte, die ihn verschlingt. In Sekundenschnelle ist die Spalte wieder verschlossen, und der Würfel ist verschwunden - und du weißt, daß es für immer ist. Die Köpfe grunzen zufrieden und bewegen sich langsam über die Oberfläche der Säule.~ */
  IF ~~ THEN GOTO 29
END

IF ~~ THEN BEGIN 26 // from: 23.0
  SAY #53446 /* ~"DANN KOMM HER... JA, KOMM NÄHER.." Die Köpfe scheinen sich in die Säule zurückzuziehen, als du näherkommst...~ */
  IF ~~ THEN REPLY #53447 /* ~Geh näher ran.~ */ GOTO 27
  IF ~  NearbyDialog("Dmorte")
~ THEN REPLY #53448 /* ~"Ich hab's mir noch mal überlegt. Leb wohl."~ */ DO ~SetGlobal("Pillar_Question","AR1001",0)
~ GOTO 50
  IF ~  !NearbyDialog("Dmorte")
~ THEN REPLY #53449 /* ~"Ich hab's mir noch mal überlegt. Leb wohl."~ */ DO ~SetGlobal("Pillar_Question","AR1001",0)
~ EXIT
END

IF ~~ THEN BEGIN 27 // from: 26.0
  SAY #53450 /* ~Obwohl du nur einen Schritt auf sie zugehst, bist du plötzlich viel näher an der sich windenden Säule, als du gedacht hast. Ehe du reagieren kannst, schiebt sie sich vor wie eine Welle aus zerbrochenen Knochen und verfaultem, madenverseuchtem Fleisch. Die ranzige Dunkelheit umhüllt dich, und die Säulenköpfe beginnen, dich bei lebendigem Leibe zu verzehren...~ */
  IF ~~ THEN REPLY #53451 /* ~Dunkelheit umgibt dich...~ */ DO ~PermanentStatChange(Protagonist,MAXHITPOINTS,LOWER,15)
FadeToColor([20.0],0)
Wait(3)
FadeFromColor([20.0],0)
~ GOTO 28
END

IF ~~ THEN BEGIN 28 // from: 27.0
  SAY #53452 /* ~Du stehst plötzlich vor der Schädelsäule, mit schmerzenden Gliedern und ohne eine Ahnung, was soeben passiert ist. Du weißt nur, daß dein Körper irgendwie *schwächer* ist als Folge der Tortur, die du gerade erlitten hast. Die grotesken Köpfe sehen grinsend und mit schmatzenden Lippen auf dich herunter...~ */
  IF ~~ THEN GOTO 29
END

IF ~~ THEN BEGIN 29 // from: 19.0 19.1 19.3 24.0 24.1 25.0 28.0
  SAY #53453 /* ~Die Säule genießt dein Geschenk noch eine Weile. Ihre Köpfe gurren und flüstern miteinander.~ */
  IF ~  Global("Pillar_Question","AR1001",1)
~ THEN REPLY #53454 /* ~"Und meine Antwort...?"~ */ DO ~SetGlobal("Pillar_Question","AR1001",0)
~ JOURNAL #53458 /* ~Die Schädelsäule hat mir erzählt, daß sie aus den Schädeln jener besteht, deren Lügen andere in den Tod geschickt haben. Sie kann viele Fragen beantworten, aber erwartet viel als Bezahlung für ihr Wissen.~ */ GOTO 30
  IF ~  Global("Pillar_Question","AR1001",2)
~ THEN REPLY #53455 /* ~"Und meine Antwort...?"~ */ DO ~SetGlobal("Pillar_Question","AR1001",0)
~ GOTO 31
  IF ~  Global("Pillar_Question","AR1001",3)
~ THEN REPLY #53456 /* ~"Und meine Antwort...?"~ */ DO ~SetGlobal("Pillar_Question","AR1001",0)
SetGlobal("Know_Shadow_Player_Connection","GLOBAL",1)
~ GOTO 41
  IF ~  Global("Pillar_Question","AR1001",4)
~ THEN REPLY #53457 /* ~"Und meine Antwort...?"~ */ DO ~SetGlobal("Pillar_Question","AR1001",0)
SetGlobal("Leave_Baator","GLOBAL",1)
~ GOTO 48
END

IF ~~ THEN BEGIN 30 // from: 29.0 52.0
  SAY #53460 /* ~"WIR SIND DIEJENIGEN, DEREN WORTE IN LÄNGST VERGESSENEN STERBLICHEN LEBEN ZUM TODE EINES ANDEREN FÜHRTEN. MANCHE NENNEN UNS 'LÜGNER' - ABER WAS IST SCHON 'WAHRHEIT', AUSSER EINEM ANDEREN NAMEN FÜR EINE LÜGE? WAHRHEIT DIENT SO OFT ALS DECKMANTEL FÜR TÄUSCHUNG..." Die Köpfe murmeln und nicken sich gegenseitig bestätigend zu, dann wenden sie sich wieder dir zu. "WIR WISSEN VIEL... ABER VERLANGEN AUCH VIEL VON DEM, DER UNS BEFRAGT."~ */
  IF ~~ THEN REPLY #53461 /* ~"Ich hätte da noch eine Frage..."~ */ GOTO 12
  IF ~  NearbyDialog("Dmorte")
~ THEN REPLY #53462 /* ~"Mehr wollt' ich gar nicht wissen. Leb wohl."~ */ DO ~SetGlobal("Pillar_Question","AR1001",0)
~ GOTO 50
  IF ~  !NearbyDialog("Dmorte")
~ THEN REPLY #53463 /* ~"Mehr wollt' ich gar nicht wissen. Leb wohl."~ */ DO ~SetGlobal("Pillar_Question","AR1001",0)
~ EXIT
END

IF ~~ THEN BEGIN 31 // from: 29.1 52.1
  SAY #53464 /* ~"DU BESITZT BEREITS DEN SCHLÜSSEL UND MUSST NUR NOCH DEN ORT DES PORTALS KENNEN, DAS DICH DORTHIN FÜHRT. WIR WISSEN NICHT, WO DAS PORTAL IST, ABER WIR KÖNNTEN DIR SAGEN, WAS DER SCHLÜSSEL IST: 'REUE'." Einige der Köpfe beginnen, zu weinen und zu stöhnen: "Ja, Reue! Reue!"~ */
  IF ~~ THEN REPLY #53465 /* ~"Reue?"~ */ DO ~SetGlobal("Chaotic_Adyzoel_1","GLOBAL",1)
~ JOURNAL #53459 /* ~Die Schädelsäule hat mir erzählt, daß 'Reue' der Schlüssel für das Portal ist, das zur Festung der Reue führt. Scheint mir passend. Sie kannte allerdings nicht den Weg zum Portal.~ */ GOTO 32
END

IF ~~ THEN BEGIN 32 // from: 31.0
  SAY #53469 /* ~"JA... DU MUSST REUE GEFÜHLT HABEN, UM IN DIE FESTUNG VORDRINGEN ZU KÖNNEN. SCHREIBE SIE AUF EIN STÜCK DEINES FLEISCHES UND DU KANNST DURCH DAS PORTAL GEHEN."~ */
  IF ~~ THEN REPLY #53470 /* ~"Und das Portal... du sagst, du *weißt nicht*, wo es ist?"~ */ DO ~SetGlobal("Know_Fortress_Location_Forgot","GLOBAL",1)
~ GOTO 33
END

IF ~~ THEN BEGIN 33 // from: 32.0
  SAY #53473 /* ~"JA... NUR DREI WUSSTEN DEN WEG. DER ERSTE WARST DU... OBWOHL DU ES VERGESSEN HAST, JETZT. DER ZWEITE LIEGT JENSEITS DES PORTALS UND WIRD NICHT HERAUSTRETEN. DER DRITTE..."~ */
  IF ~~ THEN REPLY #53474 /* ~"Der dritte...?"~ */ GOTO 34
END

IF ~~ THEN BEGIN 34 // from: 33.0
  SAY #53478 /* ~"...DEN DRITTEN HAST DU BEREITS GETROFFEN. DIESES WESEN KENNT DEINE VERFASSUNG, DIE FESTUNG UND WEISS, DASS DU DORT UNBEDINGT HIN WILLST... ABER ES WIRD DIR NICHT HELFEN. SEIN SCHILD IST AUS DEM MATTEN METALL DER LÜGEN UND DER TÄUSCHUNG GESCHMIEDET, UND DU KOMMST MIT BLOSSEN WORTEN NICHT DAGEGEN AN. DU MUSST MIT IHM KÄMPFEN."~ */
  IF ~~ THEN REPLY #53479 /* ~"Wer ist es?"~ */ GOTO 35
END

IF ~~ THEN BEGIN 35 // from: 34.0
  SAY #53483 /* ~Die Köpfe schweigen eine Weile und lächeln dich einfach nur süffisant an. Schließlich sagen sie: "DU HAST DEN LÜGNER BEREITS *GETROFFEN* - UND NICHT ZUM ERSTEN MAL. DER LÜGNER WEISS ES... ABER HAT ES DIR NICHT GESAGT. EINE *BELANGLOSE* TÄUSCHUNG UNTER UNSTERBLICHEN..." Einige der verwesenden Köpfe rollen die Augen und kichern dich an.~ */
  IF ~~ THEN REPLY #53484 /* ~"Fhjull Schlangenzunge?"~ */ GOTO 36
  IF ~~ THEN REPLY #53485 /* ~"Lothar?"~ */ GOTO 36
  IF ~~ THEN REPLY #53486 /* ~"Ravel?"~ */ GOTO 36
  IF ~~ THEN REPLY #53487 /* ~"Trias?"~ */ DO ~SetGlobal("Talk_To_Betrayer","GLOBAL",1)
~ JOURNAL #53491 /* ~Die Schädelsäule hat mir erzählt, daß Trias - der auch 'Trias, der Verräter' genannt wird - wissen sollte, wo sich das Portal zur Festung der Reue befindet.~ */ GOTO 37
END

IF ~~ THEN BEGIN 36 // from: 35.0 35.1 35.2 36.0 36.1 36.2
  SAY #53492 /* ~Die Köpfe glucksen voller Schadenfreude. "FALSCH GERATEN, MEIN LIEBER. VERSUCH'S NOCH MAL..."~ */
  IF ~~ THEN REPLY #53493 /* ~"Fhjull Schlangenzunge?"~ */ GOTO 36
  IF ~~ THEN REPLY #53494 /* ~"Lothar?"~ */ GOTO 36
  IF ~~ THEN REPLY #53495 /* ~"Ravel?"~ */ GOTO 36
  IF ~~ THEN REPLY #53496 /* ~"Trias?"~ */ DO ~SetGlobal("Talk_To_Betrayer","GLOBAL",1)
~ JOURNAL #53500 /* ~Die Schädelsäule hat mir erzählt, daß Trias - der auch 'Trias, der Verräter' genannt wird - wissen sollte, wo sich das Portal zur Festung der Reue befindet.~ */ GOTO 37
END

IF ~~ THEN BEGIN 37 // from: 35.3 36.3
  SAY #53501 /* ~"OH, JA... ABER WIR KENNEN SEINEN *VOLLEN* NAMEN: TRIAS, DER VERRÄTER!" Die Säule schüttelt sich vor Vergnügen, die vermodernden Köpfe schwanken hin und her, während sie über deine Verzweiflung lachen. Ein paar Köpfe singen spöttisch: "Verräter... Verräter... Trias, der Verräter..."~ */
  IF ~~ THEN REPLY #53502 /* ~"Aber... er sagte, er wüßte es nicht..."~ */ GOTO 38
  IF ~~ THEN REPLY #53503 /* ~"Warum sollte er mich anlügen?"~ */ GOTO 39
  IF ~~ THEN REPLY #53504 /* ~"Woher weiß er das?"~ */ GOTO 40
  IF ~~ THEN REPLY #53505 /* ~"Ich hätte da noch eine Frage..."~ */ GOTO 12
  IF ~  NearbyDialog("Dmorte")
~ THEN REPLY #53506 /* ~"Mehr wollt' ich gar nicht wissen. Leb wohl."~ */ DO ~SetGlobal("Pillar_Question","AR1001",0)
~ GOTO 50
  IF ~  !NearbyDialog("Dmorte")
~ THEN REPLY #53507 /* ~"Mehr wollt' ich gar nicht wissen. Leb wohl."~ */ DO ~SetGlobal("Pillar_Question","AR1001",0)
~ EXIT
END

IF ~~ THEN BEGIN 38 // from: 37.0
  SAY #53508 /* ~"ER HAT DICH *ANGELOGEN*." Einige der Köpfe werfen dir Seitenblicke zu, gurgeln und glucksen leise - sie lachen dich aus. "HÜTE DICH VOR HONIGSÜSSEN WORTEN, SIE ZIEHEN HAUFENWEISE WESPEN AN."~ */
  IF ~~ THEN REPLY #53509 /* ~"Warum sollte er mich anlügen?"~ */ GOTO 39
  IF ~~ THEN REPLY #53510 /* ~"Woher weiß er das?"~ */ GOTO 40
  IF ~~ THEN REPLY #53511 /* ~"Ich hätte da noch eine Frage..."~ */ GOTO 12
  IF ~  NearbyDialog("Dmorte")
~ THEN REPLY #53512 /* ~"Mehr wollt' ich gar nicht wissen. Leb wohl."~ */ DO ~SetGlobal("Pillar_Question","AR1001",0)
~ GOTO 50
  IF ~  !NearbyDialog("Dmorte")
~ THEN REPLY #53513 /* ~"Mehr wollt' ich gar nicht wissen. Leb wohl."~ */ DO ~SetGlobal("Pillar_Question","AR1001",0)
~ EXIT
END

IF ~~ THEN BEGIN 39 // from: 37.1 38.0 40.0
  SAY #53514 /* ~"WIR KÖNNEN DIR DIESE ANTWORT NICHT GEBEN. DU MUSST IHN SELBST SUCHEN UND IHN FRAGEN."~ */
  IF ~~ THEN REPLY #53515 /* ~"Woher weiß er das?"~ */ GOTO 40
  IF ~~ THEN REPLY #53516 /* ~"Ich hätte da noch eine Frage..."~ */ GOTO 12
  IF ~  NearbyDialog("Dmorte")
~ THEN REPLY #53517 /* ~"Mehr wollt' ich gar nicht wissen. Leb wohl."~ */ DO ~SetGlobal("Pillar_Question","AR1001",0)
~ GOTO 50
  IF ~  !NearbyDialog("Dmorte")
~ THEN REPLY #53518 /* ~"Mehr wollt' ich gar nicht wissen. Leb wohl."~ */ DO ~SetGlobal("Pillar_Question","AR1001",0)
~ EXIT
END

IF ~~ THEN BEGIN 40 // from: 37.2 38.1 39.0
  SAY #53519 /* ~"TRIAS HAT EINMAL MIT DIR GESPROCHEN, VOR LANGER ZEIT, ALS DU DEN WEG KANNTEST. DEINE WORTE WAREN OFFEN UND EHRLICH, UND TRIAS - WIE ALLE GROSSEN BETRÜGER - HÖRTE DIR ZU UND GEWANN DEIN VERTRAUEN. DAS GESPRÄCH WAR KURZ, DOCH VOLLER *BEDEUTUNG*. BEDEUTUNG UND TOD IST, WAS DU SUCHST... FÜR EINEN NORMALEN MENSCHEN SIND ES ZWEI VERSCHIEDENE DINGE. ABER FÜR DICH... EIN UND DASSELBE."~ */
  IF ~~ THEN REPLY #53520 /* ~"Warum sollte er mich anlügen?"~ */ GOTO 39
  IF ~~ THEN REPLY #53521 /* ~"Ich hätte da noch eine Frage..."~ */ GOTO 12
  IF ~  NearbyDialog("Dmorte")
~ THEN REPLY #53522 /* ~"Mehr wollt' ich gar nicht wissen. Leb wohl."~ */ DO ~SetGlobal("Pillar_Question","AR1001",0)
~ GOTO 50
  IF ~  !NearbyDialog("Dmorte")
~ THEN REPLY #53523 /* ~"Mehr wollt' ich gar nicht wissen. Leb wohl."~ */ DO ~SetGlobal("Pillar_Question","AR1001",0)
~ EXIT
END

IF ~~ THEN BEGIN 41 // from: 29.2 52.2
  SAY #53524 /* ~"NICHT *WER* - WAS. DU BIST GETEILT WORDEN. DU BIST EINER VON VIELEN - EINER IN VIELEN. JEDER DAVON - OB ER GUT ODER SCHLECHT IST - IST EIN UNGEHEUER, DAS EINEN SCHATTEN AUF DIE EXISTENZ WIRFT."~ */
  IF ~  NearbyDialog("Dvhail")
~ THEN REPLY #53525 /* ~"Ein... Schatten auf die Existenz?"~ */ JOURNAL #53527 /* ~Die Schädelsäule hat mir erzählt, daß ich 'Schatten auf die Existenz werfe' - das heißt, daß jedesmal, wenn ich sterbe, ein anderer an meiner Statt stirbt. Diese Toten werden dann zu Schattenwesen und warten anscheinend auf mich in der Festung der Reue.~ */ GOTO 42
  IF ~  !NearbyDialog("Dvhail")
~ THEN REPLY #53526 /* ~"Ein... Schatten auf die Existenz?"~ */ JOURNAL #53527 /* ~Die Schädelsäule hat mir erzählt, daß ich 'Schatten auf die Existenz werfe' - das heißt, daß jedesmal, wenn ich sterbe, ein anderer an meiner Statt stirbt. Diese Toten werden dann zu Schattenwesen und warten anscheinend auf mich in der Festung der Reue.~ */ GOTO 43
END

IF ~~ THEN BEGIN 42 // from: 41.0
  SAY #53528 /* ~"OH, JA." Die Säulenköpfe verengen ihre Augen zu Schlitzen und lächeln grotesk. "JEDESMAL, WENN DU STIRBST, 'UNSTERBLICHER', WIRFST DU EINEN SCHATTEN... JEDESMAL, WENN DU STIRBST, STIRBT EIN *ANDERER* AN DEINER STELLE. DIESE SCHATTEN... SIE SAMMELN SICH, SIE HUNGERN NACH DIR, IN DER FESTUNG DER REUE. WIE VIELE MALE *BIST* DU UMGEKOMMEN, NAMENLOSER? WIE VIELE HUNDERT... TAUSEND... SIND WEGEN *DIR* GESTORBEN?" Die Säule zittert vor bösartigem Vergnügen, ihre Köpfe ziehen Fratzen und glucksen dich neckisch an. Plötzlich stellen sich dir die Nackenhaare auf. Du drehst dich um und erblickst Vhailor. Er starrt dich an, und seine Augen leuchten heller, als du es je gesehen hast...~ */
  IF ~~ THEN REPLY #53529 /* ~"Vhailor...?"~ */ EXTERN ~DVHAIL~ 11
END

IF ~~ THEN BEGIN 43 // from: 41.1
  SAY #53530 /* ~"OH, JA." Die Säulenköpfe verengen ihre Augen zu Schlitzen und lächeln grotesk. "JEDESMAL, WENN DU STIRBST, 'UNSTERBLICHER', WIRFST DU EINEN SCHATTEN... JEDESMAL, WENN DU STIRBST, STIRBT EIN *ANDERER* AN DEINER STELLE. DIESE SCHATTEN... SIE SAMMELN SICH, SIE HUNGERN NACH DIR, IN DER FESTUNG DER REUE. WIEVIELE MALE *BIST* DU UMGEKOMMEN, NAMENLOSER? WIE VIELE HUNDERT... TAUSEND... SIND WEGEN *DIR* GESTORBEN?" Die Säule zittert vor bösartigem Vergnügen, ihre Köpfe ziehen Fratzen und glucksen dich neckisch an.~ */
  IF ~~ THEN REPLY #53531 /* ~"Ist das alles, was du zu sagen hast, Säule?"~ */ GOTO 44
  IF ~~ THEN REPLY #53532 /* ~"Ich hätte da noch eine Frage..."~ */ GOTO 12
  IF ~  NearbyDialog("Dmorte")
~ THEN REPLY #53533 /* ~"Mehr wollt' ich gar nicht wissen. Leb wohl."~ */ DO ~SetGlobal("Pillar_Question","AR1001",0)
~ GOTO 50
  IF ~  !NearbyDialog("Dmorte")
~ THEN REPLY #53534 /* ~"Mehr wollt' ich gar nicht wissen. Leb wohl."~ */ DO ~SetGlobal("Pillar_Question","AR1001",0)
~ EXIT
END

IF ~~ THEN BEGIN 44 // from: 43.0
  SAY #53535 /* ~Plötzlich hören die Köpfe auf zu lachen. "NEIN. DU TRÄGST VIELE NAMEN. JEDER HAT SEINE NARBEN AUF SEINEM FLEISCH HINTERLASSEN."~ */
  IF ~~ THEN REPLY #53536 /* ~"Erzähl weiter..."~ */ GOTO 45
  IF ~~ THEN REPLY #53537 /* ~"Warte - ich hätte da noch eine Frage..."~ */ GOTO 12
  IF ~  NearbyDialog("Dmorte")
~ THEN REPLY #53538 /* ~"Vergiß es. Leb wohl."~ */ DO ~SetGlobal("Pillar_Question","AR1001",0)
~ GOTO 50
  IF ~  !NearbyDialog("Dmorte")
~ THEN REPLY #53539 /* ~"Vergiß es. Leb wohl."~ */ DO ~SetGlobal("Pillar_Question","AR1001",0)
~ EXIT
END

IF ~~ THEN BEGIN 45 // from: 44.0
  SAY #53540 /* ~"DER VERLORENE... DER UNSTERBLICHE... INKARNATIONSENDE... MANN DER TAUSEND TODE... DER ZUM LEBEN VERDAMMTE... DER RASTLOSE... EINER VON VIELEN... DER, DEN DAS LEBEN GEFANGENHÄLT... DER SCHATTENBRINGER... DER VERWUNDETE... QUALENBRINGER... YEMETH..."~ */
  IF ~~ THEN REPLY #53541 /* ~Hör weiter zu.~ */ GOTO 46
  IF ~~ THEN REPLY #53542 /* ~"Warte - ich hätte da noch eine Frage..."~ */ GOTO 12
  IF ~  NearbyDialog("Dmorte")
~ THEN REPLY #53543 /* ~"Vergiß es. Leb wohl."~ */ DO ~SetGlobal("Pillar_Question","AR1001",0)
~ GOTO 50
  IF ~  !NearbyDialog("Dmorte")
~ THEN REPLY #53544 /* ~"Vergiß es. Leb wohl."~ */ DO ~SetGlobal("Pillar_Question","AR1001",0)
~ EXIT
END

IF ~~ THEN BEGIN 46 // from: 45.0
  SAY #53545 /* ~"DU BIST WIE VERSILBERTES GLAS, DAS ZERSPRUNGEN IST... ZERSPLITTERT, UND DIE SCHERBEN IN DER WELTGESCHICHTE VERSTREUT." "NUR EIN STÜCK IST VON BEDEUTUNG. FINDE ES WIEDER, UND DEIN LEBEN GEHÖRT WIEDER DIR. ES WIRD EINEN PREIS HABEN. DIESER PREIS ERKAUFT DIR EINE CHANCE. OHNE DIESE CHANCE BIST DU VERLOREN..."~ */
  IF ~~ THEN REPLY #53546 /* ~"Erzähl weiter..."~ */ GOTO 47
  IF ~~ THEN REPLY #53547 /* ~"Warte - ich hätte da noch eine Frage..."~ */ GOTO 12
  IF ~  NearbyDialog("Dmorte")
~ THEN REPLY #53548 /* ~"Vergiß es. Leb wohl."~ */ DO ~SetGlobal("Pillar_Question","AR1001",0)
~ GOTO 50
  IF ~  !NearbyDialog("Dmorte")
~ THEN REPLY #53549 /* ~"Vergiß es. Leb wohl."~ */ DO ~SetGlobal("Pillar_Question","AR1001",0)
~ EXIT
END

IF ~~ THEN BEGIN 47 // from: 46.0
  SAY #53550 /* ~"DU HAST DAS VERLOREN, WAS VON EINEM MENSCHEN NIE GETRENNT WERDEN DARF. DEINE STERBLICHKEIT IST DIR GENOMMEN WORDEN. DU HAST SIE VERLOREN. SIE EXISTIERT, ABER DU MUSST SIE FINDEN, BEVOR DU AUCH DEINEN VERSTAND NOCH VERLIERST."~ */
  IF ~~ THEN REPLY #53551 /* ~"Ich hätte da noch eine Frage..."~ */ GOTO 12
  IF ~  NearbyDialog("Dmorte")
~ THEN REPLY #53552 /* ~"Mehr wollt' ich gar nicht wissen. Leb wohl."~ */ DO ~SetGlobal("Pillar_Question","AR1001",0)
~ GOTO 50
  IF ~  !NearbyDialog("Dmorte")
~ THEN REPLY #53553 /* ~"Mehr wollt' ich gar nicht wissen. Leb wohl."~ */ DO ~SetGlobal("Pillar_Question","AR1001",0)
~ EXIT
END

IF ~~ THEN BEGIN 48 // from: 29.3 52.3
  SAY #53554 /* ~"VERLASSE DIESEN ORT UND WENDE DICH DIREKT NACH WESTEN, ENTLANG DEN FELSBLÖCKEN, DIE DAS VERFLUCHTE TAL SÄUMEN. WENN DU DAS ANDERE ENDE DES TALS ERREICHST, SUCHE EINE STELLE ZWISCHEN DEN STEINEN, DIE EIN PORTAL BILDET. SEIN SCHLÜSSEL IST AUS OBSIDIAN, DER KÜRZLICH VON AVERNUS' FEUER VERBRANNT WURDE - UM DAS PORTAL HERUM KANNST DU EINE MENGE DAVON FINDEN. LEGE EINE SCHERBE DAVON IN DEINEN MUND UND BEISSE SO DARAUF, DASS ER IN DEINE ZUNGE SCHNEIDET. DAS IST DEIN SCHLÜSSEL."~ */
  IF ~~ THEN REPLY #53555 /* ~"Ich hätte da noch eine Frage..."~ */ GOTO 12
  IF ~  NearbyDialog("Dmorte")
~ THEN REPLY #53556 /* ~"Mehr wollt' ich gar nicht wissen. Leb wohl."~ */ DO ~SetGlobal("Pillar_Question","AR1001",0)
~ GOTO 50
  IF ~  !NearbyDialog("Dmorte")
~ THEN REPLY #53557 /* ~"Mehr wollt' ich gar nicht wissen. Leb wohl."~ */ DO ~SetGlobal("Pillar_Question","AR1001",0)
~ EXIT
END

IF ~~ THEN BEGIN 49 // from: 12.3
  SAY #53558 /* ~Die Säule bleibt seltsam stumm, einige der Köpfe schauen einfach weg, andere zittern mit einem gequälten Ausdruck. Schließlich sammeln sie sich und sprechen wieder: "WIR... WISSEN ES NICHT. DIE KÖPFE, DIE EINST SOLCHES WISSEN BESASSEN, WURDEN ZERSTÖRT - VON UNS ENTFERNT. WIR KÖNNEN DIR DIESE FRAGE NICHT BEANTWORTEN."~ */
  IF ~~ THEN REPLY #53559 /* ~"In diesem Fall hätte ich noch eine Frage..."~ */ GOTO 12
  IF ~  NearbyDialog("Dmorte")
~ THEN REPLY #53560 /* ~"Dann leb wohl."~ */ DO ~SetGlobal("Pillar_Question","AR1001",0)
~ GOTO 50
  IF ~  !NearbyDialog("Dmorte")
~ THEN REPLY #53561 /* ~"Dann leb wohl."~ */ DO ~SetGlobal("Pillar_Question","AR1001",0)
~ EXIT
END

IF ~~ THEN BEGIN 50 // from: 1.5 12.5 13.8 14.1 15.6 17.7 19.8 20.4 21.3 22.2 23.1 24.6 26.1 30.1 37.4 38.3 39.2 40.2 43.2 44.2 45.2 46.2 47.1 48.1 49.1
  SAY #53562 /* ~Die Säule hält dich mit einer plötzlichen Forderung auf: "HALT - GIB UNS DEN SCHÄDEL. WIR WERDEN *NICHT* ZULASSEN, DASS ER GEHT. ER GEHÖRT *UNS*. ER WIRD AVERNUS *NICHT* VERLASSEN." Die Köpfe beginnen, Morte zu locken: "Ja, Totenschädel, nicht so schüchtern... Komm zurück, Schädel... Es ist gemütlich hier drin, Schädel... Komm, komm zurück... Es tut nicht weh, Schädel... Es macht wirklich Spaß, keinen Körper zu haben und mit tausend lügenden Köpfen in einer verwesenden Säule zu leben..."~ */
  IF ~~ THEN REPLY #53563 /* ~Schnapp dir Morte und wirf ihn in die Schädelsäule.~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Pillar_2","GLOBALGood",-1)
SetGlobal("Pillar ","GLOBAL",2)
StartCutSceneMode()
StartCutSceneEx("1001Cut1",FALSE)
~ EXIT
  IF ~~ THEN REPLY #53564 /* ~"Vergiß es, Säule. Leb wohl."~ */ DO ~SetGlobal("Pillar_Warning","GLOBAL",1)
~ GOTO 51
END

IF ~~ THEN BEGIN 51 // from: 50.1
  SAY #53566 /* ~Die wütenden Säulenschädel beginnen, in die Ebenen hinauszuheulen und zu -brüllen. Der Boden unter deinen Füßen bebt, und die donnernde Kakophonie macht dich beinahe taub...~ */
  IF ~~ THEN REPLY #53567 /* ~Geh... schnell.~ */ EXIT
END

IF ~  Global("Pillar","GLOBAL",2)
~ THEN BEGIN 52 // from:
  SAY #53568 /* ~Die Säulenköpfe gackern und zischen voller Gier, als Morte schreiend in das gräßliche Maul der Säule gesogen wird. Zweifelsohne stehen ihm dort endlose Qualen durch die anderen abgetrennten Köpfe bevor. Als der Tumult langsam nachläßt, beginnen die Köpfe zu gurren und miteinander zu tuscheln. Plötzlich taucht Morte schreiend an der Oberfläche auf: "Aiieeee! Hol mich hier raus! Bitte! Bitte! Ich will auch nie wieder lüg -!" ...und so schnell wie er aufgetaucht ist, verschwindet er wieder im Inneren der Schädelsäule.~ */
  IF ~  Global("Pillar_Question","AR1001",1)
~ THEN REPLY #53569 /* ~"Und meine Antwort...?"~ */ DO ~SetGlobal("Pillar_Question","AR1001",0)
SetGlobal("Pillar","GLOBAL",3)
~ JOURNAL #53574 /* ~Ich hab Morte zurück in die Schädelsäule gestoßen... Ich muß wohl nicht dazusagen, daß er davon überhaupt nicht begeistert war.~ */ GOTO 30
  IF ~  Global("Pillar_Question","AR1001",2)
~ THEN REPLY #53570 /* ~"Und meine Antwort...?"~ */ DO ~SetGlobal("Pillar_Question","AR1001",0)
SetGlobal("Pillar","GLOBAL",3)
~ JOURNAL #53574 /* ~Ich hab Morte zurück in die Schädelsäule gestoßen... Ich muß wohl nicht dazusagen, daß er davon überhaupt nicht begeistert war.~ */ GOTO 31
  IF ~  Global("Pillar_Question","AR1001",3)
~ THEN REPLY #53571 /* ~"Und meine Antwort...?"~ */ DO ~SetGlobal("Pillar_Question","AR1001",0)
SetGlobal("Know_Shadow_Player_Connection","GLOBAL",1)
SetGlobal("Pillar","GLOBAL",3)
~ JOURNAL #53574 /* ~Ich hab Morte zurück in die Schädelsäule gestoßen... Ich muß wohl nicht dazusagen, daß er davon überhaupt nicht begeistert war.~ */ GOTO 41
  IF ~  Global("Pillar_Question","AR1001",4)
~ THEN REPLY #53572 /* ~"Und meine Antwort...?"~ */ DO ~SetGlobal("Pillar_Question","AR1001",0)
SetGlobal("Pillar","GLOBAL",3)
SetGlobal("Leave_Baator","GLOBAL",1)
~ JOURNAL #53574 /* ~Ich hab Morte zurück in die Schädelsäule gestoßen... Ich muß wohl nicht dazusagen, daß er davon überhaupt nicht begeistert war.~ */ GOTO 48
  IF ~  Global("Pillar_Question","AR1001",0)
~ THEN REPLY #53573 /* ~"Leb wohl, Säule."~ */ DO ~SetGlobal("Pillar","GLOBAL",3)
~ EXIT
END

IF ~  Global("Pillar","GLOBAL",1)
~ THEN BEGIN 53 // from:
  SAY #53575 /* ~Wieder stehst du vor der Schädelsäule. Die unzähligen verwesenden Köpfe, aus denen die riesige Säule besteht, scheinen sich ständig zu bewegen und zu pulsieren, wobei sie abwechselnd zanken, weinen, schreien, miteinander sprechen und sich zuflüstern. Immer wieder tauchen an der Oberfläche Köpfe aus dem stinkenden Inneren auf, andere sinken zurück in das gräßliche Herz der Säule.~ */
  IF ~  NearbyDialog("Dmorte")
Global("Pillar_Morte","AR1001",0)
~ THEN REPLY #53576 /* ~Zieh die Aufmerksamkeit der Säule auf dich.~ */ EXTERN ~DMORTE~ 512
  IF ~  NearbyDialog("Dmorte")
Global("Pillar_Morte","AR1001",1)
~ THEN REPLY #53577 /* ~Zieh die Aufmerksamkeit der Säule auf dich.~ */ GOTO 1
  IF ~  !NearbyDialog("Dmorte")
~ THEN REPLY #53578 /* ~Zieh die Aufmerksamkeit der Säule auf dich.~ */ GOTO 1
  IF ~~ THEN REPLY #53579 /* ~Geh weg von der Säule, bevor sie dich bemerkt.~ */ EXIT
END

IF ~  Global("Pillar","GLOBAL",3)
~ THEN BEGIN 54 // from:
  SAY #53580 /* ~Wieder stehst du vor der Schädelsäule. Die unzähligen verwesenden Köpfe, aus denen die riesige Säule besteht, scheinen sich ständig zu bewegen und zu pulsieren, wobei sie abwechselnd zanken, weinen, schreien, miteinander sprechen und sich zuflüstern. Immer wieder tauchen an der Oberfläche Köpfe aus dem stinkenden Inneren auf, andere sinken zurück in das gräßliche Herz der Säule.~ */
  IF ~~ THEN REPLY #53581 /* ~Zieh die Aufmerksamkeit der Säule auf dich.~ */ GOTO 55
  IF ~~ THEN REPLY #53582 /* ~Geh weg von der Säule, bevor sie dich bemerkt.~ */ EXIT
END

IF ~~ THEN BEGIN 55 // from: 54.0
  SAY #53583 /* ~Du machst noch einen vorsichtigen Schritt auf die Säule zu, und ihre Unterhaltung *bricht* abrupt ab. Die unzähligen Köpfe auf der Oberfläche der Säule wenden sich dir langsam und synchron zu. Sie betrachten dich stumm, und plötzlich taucht Morte mit einem gellenden Schrei an der Oberfläche auf: "Gaaaah! Meister! Hol mich hier raus! Bitte! Bitte!"~ */
  IF ~~ THEN REPLY #53584 /* ~Ignoriere Morte und warte, bis er wieder versinkt.~ */ GOTO 56
  IF ~~ THEN REPLY #53585 /* ~Versuch, Morte rauszuziehen.~ */ GOTO 57
  IF ~~ THEN REPLY #53586 /* ~Dreh dich um und geh weg.~ */ EXIT
END

IF ~~ THEN BEGIN 56 // from: 55.0 57.5
  SAY #53587 /* ~Morte rinnen Tränen an der stinkenden Blut- und Schleimschicht herunter, die ihn bedeckt. Er fleht dich an. "Meister, bitte, ich flehe dich an! Du mußt mich hier rausholen, bitte, ich schwöre, daß ich nie wieder lügen wer-!"Und ebenso schnell, wie er aufgetaucht ist, wird er wieder in das Innere der Säule zurückgezogen.~ */
  IF ~  NearbyDialog("Dgrace")
Global("Pillar_Musk","AR1001",0)
~ THEN REPLY #53588 /* ~"Ich hätte da ein paar Fragen, Säule..."~ */ DO ~SetGlobal("Pillar_Musk","AR1001",1)
~ GOTO 2
  IF ~  NearbyDialog("Dannah")
!NearbyDialog("Dgrace")
Global("Pillar_Musk","AR1001",0)
~ THEN REPLY #53589 /* ~"Ich hätte da ein paar Fragen, Säule..."~ */ DO ~SetGlobal("Pillar_Musk","AR1001",1)
~ GOTO 2
  IF ~  NearbyDialog("Dgrace")
Global("Pillar_Musk","AR1001",1)
~ THEN REPLY #53590 /* ~"Ich hätte da ein paar Fragen, Säule..."~ */ GOTO 12
  IF ~  NearbyDialog("Dannah")
!NearbyDialog("Dgrace")
Global("Pillar_Musk","AR1001",1)
~ THEN REPLY #53591 /* ~"Ich hätte da ein paar Fragen, Säule..."~ */ GOTO 12
  IF ~  !NearbyDialog("Dgrace")
!NearbyDialog("Dannah")
~ THEN REPLY #53592 /* ~"Ich hätte da ein paar Fragen, Säule..."~ */ GOTO 12
  IF ~~ THEN REPLY #53593 /* ~"Ich bin nur zufällig vorbeigekommen. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 57 // from: 55.1
  SAY #53594 /* ~Deine Hände greifen blitzschnell nach Morte, ehe er wieder im Inneren der Säule verschwindet. Wutentbrannt schreien die Köpfe: "NEIN! NEIN! HALT! DU WIRST IHN NICHT WIEDER MITNEHMEN!" Die Köpfe gehen auf dich los, sie beißen dich mit ihren brutalen, scharfen Zähnen in Arme und Hände...~ */
  IF ~  Global("Specialist","GLOBAL",4)
~ THEN REPLY #53595 /* ~Kämpfe weiter und zieh Morte aus der Säule raus.~ */ DO ~SetGlobal("Pillar","GLOBAL",4)
~ GOTO 58
  IF ~  Global("Specialist","GLOBAL",6)
~ THEN REPLY #53596 /* ~Verwende dein Wissen über die 'Kunst' dafür, pure Energie für Mortes Befreiung freizusetzen. ~ */ DO ~SetGlobal("Pillar","GLOBAL",4)
~ GOTO 59
  IF ~  Global("Specialist","GLOBAL",5)
~ THEN REPLY #53597 /* ~Weiche zurück, als wolltest du aufgeben, geh scheinbar in die eine Richtung, und entwinde Morte der Schädelsäule, bevor sie weiß, wie ihr geschieht.~ */ DO ~SetGlobal("Pillar","GLOBAL",4)
~ GOTO 60
  IF ~  !Global("Specialist","GLOBAL",4)
!Global("Specialist","GLOBAL",5)
!Global("Specialist","GLOBAL",6)
HPGT(Protagonist,10)
~ THEN REPLY #53598 /* ~Kämpfe weiter und zieh Morte aus der Säule raus.~ */ DO ~Damage(Protagonist,LOWER,10)
~ GOTO 61
  IF ~  !Global("Specialist","GLOBAL",4)
!Global("Specialist","GLOBAL",5)
!Global("Specialist","GLOBAL",6)
HPLT(Protagonist,11)
~ THEN REPLY #53599 /* ~Kämpfe weiter und zieh Morte aus der Säule raus.~ */ DO ~Damage(Protagonist,LOWER,10)
~ GOTO 62
  IF ~~ THEN REPLY #53600 /* ~Gib auf und laß Morte versinken.~ */ GOTO 56
END

IF ~~ THEN BEGIN 58 // from: 57.0
  SAY #53601 /* ~Die Schädelsäule kämpft mit allen Kräften, doch du bist ein zu starker Gegner für sie, als daß sie dir standhalten könnte. Du hämmerst auf die angreifenden Köpfe ein, du schlägst sie, trittst sie, ja, du versetzt ihnen sogar Hiebe mit deinem Kopf und beißt sie, bis du ihnen Morte endlich mit dem Geräusch von zerfetzendem Fleisch entreißen kannst. Der Kampf hat dich jedoch angestrengt, irgendwie erschöpft, und du weißt, daß du jetzt schwächer bist als zuvor.~ */
  IF ~~ THEN REPLY #53602 /* ~"Siehst du, Morte? Kein Grund... sich Sorgen... zu machen..."~ */ DO ~PermanentStatChange(Protagonist,MAXHITPOINTS,LOWER,5)
StartCutSceneMode()
StartCutSceneEx("1001Cut3",FALSE)
~ EXIT
END

IF ~~ THEN BEGIN 59 // from: 57.1
  SAY #53603 /* ~Die Schädelsäule kämpft mit allen Kräften, doch dein Zauber ist zu mächtig, als daß sie ihm standhalten könnte. Du leitest reines, unfokusiertes Mana durch deine Hände in die Säule und drischst auf sie ein, bis du Morte losgerissen hast. Nach dem Kampf fühlst du dich aber leer, irgendwie erschöpft, und du weißt, daß du jetzt schwächer bist als zuvor.~ */
  IF ~~ THEN REPLY #53604 /* ~"Siehst du, Morte? Kein Grund... sich Sorgen... zu machen..."~ */ DO ~PermanentStatChange(Protagonist,MAXHITPOINTS,LOWER,5)
StartCutSceneMode()
StartCutSceneEx("1001Cut3",FALSE)
~ EXIT
END

IF ~~ THEN BEGIN 60 // from: 57.2
  SAY #53605 /* ~Als du merkst, daß die Säule sich auf einen gewaltigen Kampf vorbereitet, gibst du vor aufzugeben. Doch als Morte wieder zu versinken beginnt, und die Säule wieder anfangen will zu reden, springst du nach vorn und packst Morte. Nur ein einziger Kopf beißt zu, bevor du Morte wegziehen kannst. Er beißt dich tief in deinen Unterarm. Du stichst ihm mit dem Daumen ins Auge und kannst deinen alten Freund endlich befreien. Doch der Biß von dem verwesten Kopf macht dir zu schaffen. Du fühlst dich irgendwie erschöpft und weißt, daß du jetzt schwächer als zuvor bist.~ */
  IF ~~ THEN REPLY #53606 /* ~"Siehst du, Morte? Kein Grund... sich Sorgen... zu machen..."~ */ DO ~PermanentStatChange(Protagonist,MAXHITPOINTS,LOWER,5)
StartCutSceneMode()
StartCutSceneEx("1001Cut3",FALSE)
~ EXIT
END

IF ~~ THEN BEGIN 61 // from: 57.3
  SAY #53607 /* ~Die Schädelsäule setzt alles daran, Morte nicht an dich zu verlieren, und kämpft mit aller Kraft. Schließlich gibst du auf. Als Morte schreiend im Inneren der Säule versinkt, weichst du zurück. Deine Unterarme sind mit blutenden Wunden bedeckt, an denen die Köpfe mit jedem Biß Fleischfetzen herausgerissen haben. Selbst jetzt noch lachen sie dich aus und lecken dein Blut von ihren verwesten Lippen.~ */
  IF ~  NearbyDialog("Dgrace")
Global("Pillar_Musk","AR1001",0)
~ THEN REPLY #53608 /* ~"Ich hätte da ein paar Fragen, Säule..."~ */ DO ~SetGlobal("Pillar_Musk","AR1001",1)
~ GOTO 2
  IF ~  NearbyDialog("Dannah")
!NearbyDialog("Dgrace")
Global("Pillar_Musk","AR1001",0)
~ THEN REPLY #53609 /* ~"Ich hätte da ein paar Fragen, Säule..."~ */ DO ~SetGlobal("Pillar_Musk","AR1001",1)
~ GOTO 2
  IF ~  NearbyDialog("Dgrace")
Global("Pillar_Musk","AR1001",1)
~ THEN REPLY #53610 /* ~"Ich hätte da ein paar Fragen, Säule..."~ */ GOTO 12
  IF ~  NearbyDialog("Dannah")
!NearbyDialog("Dgrace")
Global("Pillar_Musk","AR1001",1)
~ THEN REPLY #53611 /* ~"Ich hätte da ein paar Fragen, Säule..."~ */ GOTO 12
  IF ~  !NearbyDialog("Dgrace")
!NearbyDialog("Dannah")
~ THEN REPLY #53612 /* ~"Ich hätte da ein paar Fragen, Säule..."~ */ GOTO 12
  IF ~~ THEN REPLY #53613 /* ~Geh weg.~ */ EXIT
END

IF ~~ THEN BEGIN 62 // from: 57.4
  SAY #53614 /* ~Die Schädelsäule setzt alles daran, Morte nicht an dich zu verlieren, und kämpft mit aller Kraft. Schließlich gibst du auf. Als Morte schreiend im Inneren der Säule versinkt, weichst du zurück. Deine Unterarme sind mit blutenden Wunden bedeckt, an denen die Köpfe mit jedem Biß Fleischfetzen herausgerissen haben. Selbst jetzt, als du umkippst und langsam stirbst, lachen sie dich höhnisch aus und lecken dein Blut von ihren verwesten Lippen...~ */
  IF ~~ THEN REPLY #53615 /* ~Stirb.~ */ DO ~Kill(Protagonist)
~ EXIT
END

IF ~  Global("Pillar","GLOBAL",4)
~ THEN BEGIN 63 // from:
  SAY #53616 /* ~Die Säulenköpfe knirschen mit den Zähnen und speien Gift und Galle, während sie vor Wut brüllen. "ER GEHÖRT UNS! UNS! UNS! UNS!" Plötzlich beruhigen sie sich. "IN ORDNUNG. KOSTE DEINEN SIEG AUS, 'UNSTERBLICHER.' WIR BEKOMMEN IHN SO ODER SO WIEDER ZURÜCK."~ */
  IF ~  NearbyDialog("Dgrace")
Global("Pillar_Musk","AR1001",0)
~ THEN REPLY #53617 /* ~"Gut. Ich hätte da ein paar Fragen, Säule..."~ */ DO ~SetGlobal("Pillar_Musk","AR1001",1)
SetGlobal("Pillar","GLOBAL",1)
~ GOTO 2
  IF ~  NearbyDialog("Dannah")
!NearbyDialog("Dgrace")
Global("Pillar_Musk","AR1001",0)
~ THEN REPLY #53618 /* ~"Gut. Ich hätte da ein paar Fragen, Säule..."~ */ DO ~SetGlobal("Pillar_Musk","AR1001",1)
SetGlobal("Pillar","GLOBAL",1)
~ GOTO 2
  IF ~  NearbyDialog("Dgrace")
Global("Pillar_Musk","AR1001",1)
~ THEN REPLY #53619 /* ~"Gut. Ich hätte da ein paar Fragen, Säule..."~ */ DO ~SetGlobal("Pillar","GLOBAL",1)
~ GOTO 12
  IF ~  NearbyDialog("Dannah")
!NearbyDialog("Dgrace")
Global("Pillar_Musk","AR1001",1)
~ THEN REPLY #53620 /* ~"Gut. Ich hätte da ein paar Fragen, Säule..."~ */ DO ~SetGlobal("Pillar","GLOBAL",1)
~ GOTO 12
  IF ~  !NearbyDialog("Dgrace")
!NearbyDialog("Dannah")
~ THEN REPLY #53621 /* ~"Gut. Ich hätte da ein paar Fragen, Säule..."~ */ DO ~SetGlobal("Pillar","GLOBAL",1)
~ GOTO 12
  IF ~~ THEN REPLY #53622 /* ~"Na klar doch. Wiedersehen."~ */ DO ~SetGlobal("Pillar","GLOBAL",1)
~ EXIT
END
