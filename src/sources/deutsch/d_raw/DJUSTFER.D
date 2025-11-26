// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DJUSTFER.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\de_DE\dialog.tlk
// dialogF  : (none)

BEGIN ~DJUSTFER~

IF ~  Global("Current_Lower_Planes","GLOBAL",1)
GlobalLT("Justifier_Lower_Planes","GLOBAL",2)
~ THEN BEGIN 0 // from:
  SAY #47616 /* ~"Was? Was willst du? Wann geht das Blutvergießen los?"~ */
  IF ~~ THEN REPLY #47617 /* ~"Was ist mit deiner Haltung?"~ */ DO ~SetGlobal("Justifier_Lower_Planes","GLOBAL",1)
~ GOTO 9
  IF ~  Global("Justifier","GLOBAL",0)
~ THEN REPLY #47618 /* ~"Was ist aus deiner gutmütigen Einstellung geworden?"~ */ DO ~SetGlobal("Justifier_Lower_Planes","GLOBAL",1)
~ GOTO 7
  IF ~~ THEN REPLY #47619 /* ~"Bald. Du mußt mir nur noch ein paar Fragen beantworten."~ */ DO ~SetGlobal("Justifier_Lower_Planes","GLOBAL",1)
~ GOTO 8
  IF ~~ THEN REPLY #47620 /* ~"In Kürze. Geh wieder schlafen."~ */ DO ~IncrementGlobal("Justifier","GLOBAL",1)
SetGlobal("Justifier_Lower_Planes","GLOBAL",1)
~ EXIT
END

IF ~  Global("Current_Lower_Planes","GLOBAL",1)
Global("Justifier_Lower_Planes","GLOBAL",2)
~ THEN BEGIN 1 // from:
  SAY #47621 /* ~"Was? Was willst du? Wann geht das Blutvergießen los?"~ */
  IF ~~ THEN REPLY #47622 /* ~"Was ist mit deiner Haltung?"~ */ GOTO 9
  IF ~~ THEN REPLY #47623 /* ~"Was ist aus deiner gutmütigen Einstellung geworden?"~ */ GOTO 7
  IF ~~ THEN REPLY #47624 /* ~"Bald. Du mußt mir nur noch ein paar Fragen beantworten."~ */ GOTO 8
  IF ~~ THEN REPLY #47625 /* ~"In Kürze. Geh wieder schlafen."~ */ DO ~IncrementGlobal("Justifier","GLOBAL",1)
~ EXIT
END

IF ~  Global("Regret","GLOBAL",10)
~ THEN BEGIN 2 // from:
  SAY #47626 /* ~"Was? Was willst du? Wann geht das Blutvergießen los?"~ */
  IF ~  Global("Justifier","GLOBAL",0)
~ THEN REPLY #47627 /* ~"Was ist mit deiner Haltung?"~ */ GOTO 9
  IF ~~ THEN REPLY #47628 /* ~"Was ist aus deiner gutmütigen Einstellung geworden?"~ */ GOTO 7
  IF ~~ THEN REPLY #47629 /* ~"Bald. Du mußt mir nur noch ein paar Fragen beantworten."~ */ GOTO 8
  IF ~~ THEN REPLY #47630 /* ~"In Kürze. Geh wieder schlafen."~ */ DO ~IncrementGlobal("Justifier","GLOBAL",1)
~ EXIT
END

IF ~~ THEN BEGIN 3 // from:
  SAY #47631 /* ~"Was? Was willst du? Wann geht das Blutvergießen los?"~ */
  IF ~  Global("Justifier","GLOBAL",0)
~ THEN REPLY #47632 /* ~"Was ist mit deiner Haltung?"~ */ GOTO 9
  IF ~~ THEN REPLY #47633 /* ~"Was ist aus deiner gutmütigen Einstellung geworden?"~ */ GOTO 7
  IF ~~ THEN REPLY #47634 /* ~"Bald. Du mußt mir nur noch ein paar Fragen beantworten."~ */ GOTO 8
  IF ~~ THEN REPLY #47635 /* ~"In Kürze. Geh wieder schlafen."~ */ DO ~IncrementGlobal("Justifier","GLOBAL",1)
~ EXIT
END

IF ~~ THEN BEGIN 4 // from:
  SAY #47636 /* ~"Was? Was willst du? Wann geht das Blutvergießen los?"~ */
  IF ~  Global("Justifier","GLOBAL",0)
~ THEN REPLY #47637 /* ~"Was ist mit deiner Haltung?"~ */ GOTO 9
  IF ~~ THEN REPLY #47638 /* ~"Was ist aus deiner gutmütigen Einstellung geworden?"~ */ GOTO 7
  IF ~~ THEN REPLY #47639 /* ~"Bald. Du mußt mir nur noch ein paar Fragen beantworten."~ */ GOTO 8
  IF ~~ THEN REPLY #47640 /* ~"In Kürze. Geh wieder schlafen."~ */ DO ~IncrementGlobal("Justifier","GLOBAL",1)
~ EXIT
END

IF ~  Global("Regret","GLOBAL",10)
~ THEN BEGIN 5 // from:
  SAY #47641 /* ~"Was? Was willst du? Wann geht das Blutvergießen los?"~ */
  IF ~  Global("Justifier","GLOBAL",0)
~ THEN REPLY #47642 /* ~"Was ist mit deiner Haltung?"~ */ GOTO 9
  IF ~~ THEN REPLY #47643 /* ~"Was ist aus deiner gutmütigen Einstellung geworden?"~ */ GOTO 7
  IF ~~ THEN REPLY #47644 /* ~"Bald. Du mußt mir nur noch ein paar Fragen beantworten."~ */ GOTO 8
  IF ~~ THEN REPLY #47645 /* ~"In Kürze. Geh wieder schlafen."~ */ DO ~IncrementGlobal("Justifier","GLOBAL",1)
~ EXIT
END

IF ~  Global("Regret","GLOBAL",10)
~ THEN BEGIN 6 // from:
  SAY #47646 /* ~"Was? Was willst du? Wann geht das Blutvergießen los?"~ */
  IF ~  Global("Justifier","GLOBAL",0)
~ THEN REPLY #47648 /* ~"Was ist mit deiner Haltung?"~ */ GOTO 9
  IF ~~ THEN REPLY #47649 /* ~"Was ist aus deiner gutmütigen Einstellung geworden?"~ */ GOTO 7
  IF ~~ THEN REPLY #47650 /* ~"Bald. Du mußt mir nur noch ein paar Fragen beantworten."~ */ GOTO 8
  IF ~~ THEN REPLY #47651 /* ~"In Kürze. Geh wieder schlafen."~ */ DO ~IncrementGlobal("Justifier","GLOBAL",1)
~ EXIT
END

IF ~~ THEN BEGIN 7 // from: 0.1 1.1 2.1 3.1 4.1 5.1 6.1
  SAY #47652 /* ~"Das war einmal. Ich hab die Nase voll von diesem planlosen Herumhängen und der ganzen laschen Faulenzerei. Los, töten wir etwas, ja?"~ */
  IF ~~ THEN REPLY #47653 /* ~"Ich möchte bloß wissen, was aus deiner Persönlichkeit geworden ist."~ */ GOTO 9
  IF ~~ THEN REPLY #47654 /* ~"Beantworte mir erst ein paar Fragen."~ */ GOTO 8
  IF ~~ THEN REPLY #47655 /* ~"Vergiß es. Wir unterhalten uns später."~ */ DO ~IncrementGlobal("Justifier","GLOBAL",1)
~ EXIT
END

IF ~~ THEN BEGIN 8 // from: 0.2 1.2 2.2 3.2 4.2 5.2 6.2 7.1 9.1 13.0 14.0 15.0 16.0 17.1 18.0 19.2 20.0 21.1 22.0 41.2
  SAY #47656 /* ~"Nur, wenn wir uns nach unserem Gespräch ans Töten machen."~ */
  IF ~~ THEN REPLY #47657 /* ~"Was ist denn passiert?"~ */ GOTO 9
  IF ~  NearbyDialog("DMorte")
~ THEN REPLY #47658 /* ~"Was kannst du mir über Morte erzählen?"~ */ GOTO 12
  IF ~  NearbyDialog("DAnnah")
~ THEN REPLY #47659 /* ~"Was kannst du mir über Annah erzählen?"~ */ GOTO 13
  IF ~  NearbyDialog("DDakkon")
~ THEN REPLY #47660 /* ~"Was kannst du mir über Dak'kon erzählen?"~ */ GOTO 14
  IF ~  NearbyDialog("DGrace")
~ THEN REPLY #47661 /* ~"Was kannst du mir über Grace, die Gefallene, erzählen?"~ */ GOTO 15
  IF ~  NearbyDialog("DVhail")
~ THEN REPLY #47662 /* ~"Was kannst du mir über Vhailor erzählen?"~ */ GOTO 16
  IF ~  NearbyDialog("DIgnus")
~ THEN REPLY #47663 /* ~"Was kannst du mir über Ignus erzählen?"~ */ GOTO 16
  IF ~  NearbyDialog("DNordom")
~ THEN REPLY #47664 /* ~"Was kannst du mir über Nordom erzählen?"~ */ GOTO 16
  IF ~  Global("Justifier","GLOBAL",0)
~ THEN REPLY #47665 /* ~"Was kannst du mir über dich erzählen?"~ */ GOTO 17
  IF ~  Global("Justifier","GLOBAL",1)
~ THEN REPLY #47666 /* ~"Was kannst du mir über dich erzählen?"~ */ GOTO 18
  IF ~  GlobalGT("Justifier","GLOBAL",1)
~ THEN REPLY #47667 /* ~"Was kannst du mir über dich erzählen?"~ */ GOTO 19
  IF ~~ THEN REPLY #47668 /* ~"Ach, vergiß es. Leb wohl."~ */ DO ~IncrementGlobal("Justifier","GLOBAL",1)
~ EXIT
END

IF ~~ THEN BEGIN 9 // from: 0.0 1.0 2.0 3.0 4.0 5.0 6.0 7.0 8.0
  SAY #47669 /* ~"Sagen wir mal, daß die Stimmung, in der wir sind, dem Haß dienlich ist. Belassen wir es dabei, ja? Ich *hasse* die Unteren Ebenen, und sie hassen mich."~ */
  IF ~~ THEN REPLY #47670 /* ~"Warum?"~ */ GOTO 10
  IF ~~ THEN REPLY #47671 /* ~"Dann beantworte mir ein paar Fragen."~ */ GOTO 8
  IF ~~ THEN REPLY #47672 /* ~"Das reicht. Ich leg dich jetzt weg."~ */ DO ~IncrementGlobal("Justifier","GLOBAL",1)
~ EXIT
END

IF ~~ THEN BEGIN 10 // from: 9.0
  SAY #47673 /* ~"Weil sie mich damals korrumpiert haben und weil das nicht wieder passier'n wird, Dussel! Und jetzt halt den Mund und töte mit mir!"~ */
  IF ~~ THEN REPLY #47674 /* ~"Beantworte mir erst ein paar Fragen..."~ */ GOTO 11
  IF ~~ THEN REPLY #47675 /* ~"Wir haben jetzt genug geredet."~ */ GOTO 11
END

IF ~~ THEN BEGIN 11 // from: 10.0 10.1
  SAY #47676 /* ~Die Waffe verfällt in ein bedrohliches Schweigen.~ */
  IF ~~ THEN DO ~IncrementGlobal("Justifier","GLOBAL",1)
~ EXIT
END

IF ~~ THEN BEGIN 12 // from: 8.1
  SAY #47677 /* ~"Er ist ein übler, querhandelnder Dussel, und ich würde ihm nur so weit trauen, wie ich ihn werfen kann... wenn ich Arme hätte. Du tätest gut daran, seine Ratschläge mit *offenen* und wachsamen Augen zu betrachten. Ich will damit nur sagen, daß du ihm nicht trauen solltest - Ich kenne solche Typen. So welche meucheln dich von hinten."~ */
  IF ~~ THEN EXTERN ~DMORTE~ 488
END

IF ~~ THEN BEGIN 13 // from: 8.2
  SAY #47678 /* ~"Ich weißt nix über sie. In ihren Adern fließt Scheusalblut. Scheusalen kann man nicht trauen. Ich meine, du solltest sie so schnell wie möglich in den Wind schießen. Außerdem ist sie noch ein Kind. Du kannst jemand mit viel mehr... Erfahrung finden...wenn du verstehst, was ich meine."~ */
  IF ~~ THEN REPLY #47679 /* ~"Danke für deine Infos. Ich hätte da noch ein paar Fragen..."~ */ GOTO 8
  IF ~~ THEN REPLY #47680 /* ~"Danke."~ */ DO ~IncrementGlobal("Justifier","GLOBAL",1)
~ EXIT
END

IF ~~ THEN BEGIN 14 // from: 8.3
  SAY #47681 /* ~"Über den? Mürrisch, ausdruckslos, kleinkariert! Ungefähr so nützlich wie Sex mit einem Modron. Mehr kann ich dazu nicht sagen."~ */
  IF ~~ THEN REPLY #47682 /* ~"Danke für deine Infos. Ich hätte da noch ein paar Fragen..."~ */ GOTO 8
  IF ~~ THEN REPLY #47683 /* ~"Danke."~ */ DO ~IncrementGlobal("Justifier","GLOBAL",1)
~ EXIT
END

IF ~~ THEN BEGIN 15 // from: 8.4
  SAY #47684 /* ~"Trau ihr ruhig. Warum nicht? Es ist nie verkehrt, einer Tanar-Ri zu vertrauen. Nur weil sie böse geboren sind, heißt das nicht, daß sie schlechte Leute sind. Das war übrigens sarkastisch gemeint. Du bist gerade drauf reingefallen."~ */
  IF ~~ THEN REPLY #47685 /* ~"Danke für deine Infos. Ich hätte da noch ein paar Fragen..."~ */ GOTO 8
  IF ~~ THEN REPLY #47686 /* ~"Danke."~ */ DO ~IncrementGlobal("Justifier","GLOBAL",1)
~ EXIT
END

IF ~~ THEN BEGIN 16 // from: 8.5 8.6 8.7
  SAY #47687 /* ~"Da muß ich passen. Hab ich noch nie geseh'n."~ */
  IF ~~ THEN REPLY #47688 /* ~"Danke für deine Infos. Ich hätte da noch ein paar Fragen..."~ */ GOTO 8
  IF ~~ THEN REPLY #47689 /* ~"Danke."~ */ DO ~IncrementGlobal("Justifier","GLOBAL",1)
~ EXIT
END

IF ~~ THEN BEGIN 17 // from: 8.8
  SAY #47690 /* ~"Ich bin 'Der Rechtfertiger'. Vergiß bitte das 'Der' nicht, wenn du mich ansprichst. 'Der Rechtfertiger'. Nicht 'Rechtfertiger'. Ich bin unter der Schirmherrschaft von Horus in Arkadien geschmiedet worden. Hm, du kommst mir bekannt vor... Ich werde so genannt, weil ich für fast alles eine Entschuldigung finden kann. Und wenn ich erst ein paar Mal geschwungen worden bin, sehen die meisten Leute auch ein, daß du recht hast."~ */
  IF ~~ THEN REPLY #47691 /* ~"Bekannt? Wie das?"~ */ GOTO 20
  IF ~~ THEN REPLY #47692 /* ~"Verstehe. Ich hätte da noch ein paar Fragen..."~ */ GOTO 8
  IF ~~ THEN REPLY #47693 /* ~"Stimmt. Wiedersehen."~ */ DO ~IncrementGlobal("Justifier","GLOBAL",1)
~ EXIT
END

IF ~~ THEN BEGIN 18 // from: 8.9
  SAY #47694 /* ~"Ich bin immer noch 'Der Rechtfertiger'... Ja, und du kommst mir immer noch irgendwie bekannt vor, und das macht mich verrückt... Es hat irgendwas mit den Tanar-Ri und... ach, ist auch egal. Ich bin dein bester Freund oder dein schlimmster Alptraum. Kommt darauf an, welches Ende du willst, Dussel. Mein Name ist 'Der Rechtfertiger'. DER Rechtfertiger. Vergiß das nicht."~ */
  IF ~~ THEN REPLY #47695 /* ~"Hast du immer noch nicht 'rausgefunden, woher du mich kennst? Na gut. Ich hätte da noch ein paar Fragen..."~ */ GOTO 8
  IF ~~ THEN REPLY #47696 /* ~"Hast es immer noch nicht 'rausgefunden, hä? Dann leb wohl."~ */ DO ~IncrementGlobal("Justifier","GLOBAL",1)
~ EXIT
END

IF ~~ THEN BEGIN 19 // from: 8.10
  SAY #47697 /* ~"Jetzt weiß ich wieder, wer du bist. Du warst immer der Ansicht, daß du mich besitzen würdest. All die Narben haben mich verwirrt, aber jetzt seh ich dein Gesicht genau vor mir. Weißt du was? Als du im Kampf gegen diese Vrocks gestorben bist, haben sie mich verbogen. Ich klage dich an. Aber du weißt ja: Deine Wege sind blutgetränkt. Wenn ich bei dir bleibe, klebt bestimmt bald wieder Blut an mir."~ */
  IF ~~ THEN REPLY #47698 /* ~"Was sind Vrocks?"~ */ JOURNAL #47796 /* ~Ich habe gerade herausgefunden, daß der Rechtfertiger, ein sprechender Streitkolben, einmal mir gehörte. Er kann sich nur an weniges aus meiner Vergangenheit erinnern, aber scheinbar haben wir uns auf der Suche nach etwas in den Abrund begeben, und ich bin gestorben.~ */ GOTO 21
  IF ~~ THEN REPLY #47699 /* ~"Dich verbogen? Wie?"~ */ JOURNAL #47796 /* ~Ich habe gerade herausgefunden, daß der Rechtfertiger, ein sprechender Streitkolben, einmal mir gehörte. Er kann sich nur an weniges aus meiner Vergangenheit erinnern, aber scheinbar haben wir uns auf der Suche nach etwas in den Abrund begeben, und ich bin gestorben.~ */ GOTO 22
  IF ~~ THEN REPLY #47700 /* ~"Schmink dir das ab. Ich hätte da noch ein paar Fragen..."~ */ JOURNAL #47796 /* ~Ich habe gerade herausgefunden, daß der Rechtfertiger, ein sprechender Streitkolben, einmal mir gehörte. Er kann sich nur an weniges aus meiner Vergangenheit erinnern, aber scheinbar haben wir uns auf der Suche nach etwas in den Abrund begeben, und ich bin gestorben.~ */ GOTO 8
  IF ~~ THEN REPLY #47701 /* ~"Schmink dir das ab."~ */ DO ~IncrementGlobal("Justifier","GLOBAL",1)
~ JOURNAL #47796 /* ~Ich habe gerade herausgefunden, daß der Rechtfertiger, ein sprechender Streitkolben, einmal mir gehörte. Er kann sich nur an weniges aus meiner Vergangenheit erinnern, aber scheinbar haben wir uns auf der Suche nach etwas in den Abrund begeben, und ich bin gestorben.~ */ EXIT
END

IF ~~ THEN BEGIN 20 // from: 17.0
  SAY #47702 /* ~"Ich weiß nicht. Es wird mir schon noch einfallen. Jetzt nerv mich nicht - ich komm schon noch drauf."~ */
  IF ~~ THEN REPLY #47703 /* ~"Großartig. Ich hätte da noch ein paar Fragen..."~ */ GOTO 8
  IF ~~ THEN REPLY #47704 /* ~"Großartig. Viel Spaß beim Nachdenken. Leb wohl."~ */ DO ~IncrementGlobal("Justifier","GLOBAL",1)
~ EXIT
END

IF ~~ THEN BEGIN 21 // from: 19.0
  SAY #47705 /* ~"Was Vrocks sind? Du erinnerst dich aber auch an gar nichts, was? Das sind die Geierdämonen der Tanar-Ri. Nachdem einer ihrer Speere deinen Brustkorb aufgerissen hat, müßtest du dich eigentlich an so eine unbedeutende Einzelheit erinnern. Wir haben gegen sie gekämpft, wir haben sie getötet, doch einer von ihnen hatte Glück und hat dich ins Totenbuch gesteckt... Und dann haben sie mich gepackt und verbogen."~ */
  IF ~~ THEN REPLY #47706 /* ~"Dich wie verbogen?"~ */ GOTO 22
  IF ~~ THEN REPLY #47707 /* ~"Großartig. Ich hätte da noch ein paar Fragen..."~ */ GOTO 8
  IF ~~ THEN REPLY #47708 /* ~"Dein Problem. Leb wohl."~ */ DO ~IncrementGlobal("Justifier","GLOBAL",1)
~ EXIT
END

IF ~~ THEN BEGIN 22 // from: 19.1 21.0
  SAY #47709 /* ~Seine Stimme klingt bei seinem Verdrängungsversuch beinahe verzweifelt. "Das willst du dir gar nicht wissen. Ihr Wesen ist fremdartig und durch und durch böse. Wenn man so welchen in die Hände fällt..." Er zittert in deiner Hand. "An so was möchte man sich nicht erinnern. Aber eins muß man ihnen lassen - im Foltern sind sie erfinderisch."~ */
  IF ~~ THEN REPLY #47710 /* ~"Ich hätte noch ein paar Fragen..."~ */ GOTO 8
  IF ~~ THEN REPLY #47711 /* ~"Jede Wette. Leb wohl."~ */ DO ~IncrementGlobal("Justifier","GLOBAL",1)
~ EXIT
END

IF ~  Global("Justifier_Lower_Planes","GLOBAL",1)
~ THEN BEGIN 23 // from:
  SAY #47712 /* ~Der Rechtfertiger klingt beinahe verlegen. "Ich bin ein bißchen durchgedreht in diesen Unteren Ebenen, Boss. Tut mir leid. Ich geb mir Mühe, so daß es nicht wieder passiert."~ */
  IF ~  GlobalGT("Justifier","GLOBAL",2)
~ THEN REPLY #47713 /* ~"Was ist passiert?"~ */ DO ~SetGlobal("Justifier_Lower_Planes","GLOBAL",2)
~ GOTO 32
  IF ~  GlobalLT("Justifier","GLOBAL",3)
~ THEN REPLY #47714 /* ~"Was ist passiert?"~ */ DO ~SetGlobal("Justifier_Lower_Planes","GLOBAL",2)
~ GOTO 30
  IF ~~ THEN REPLY #47715 /* ~"Kein Problem. Beantworte mir nur noch ein paar Fragen."~ */ DO ~SetGlobal("Justifier_Lower_Planes","GLOBAL",2)
~ GOTO 31
  IF ~~ THEN REPLY #47716 /* ~"Kein Problem. Leb wohl."~ */ DO ~IncrementGlobal("Justifier","GLOBAL",1)
SetGlobal("Justifier_Lower_Planes","GLOBAL",0)
~ EXIT
END

IF ~  Global("Regret","GLOBAL",10)
~ THEN BEGIN 24 // from:
  SAY #47717 /* ~Der Rechtfertiger klingt beinahe verlegen. "Ich bin ein bißchen durchgedreht in diesen Unteren Ebenen, Boss. Tut mir leid. Ich geb mir Mühe, so daß es nicht wieder passiert."~ */
  IF ~  GlobalGT("Justifier","GLOBAL",2)
~ THEN REPLY #47718 /* ~"Was ist passiert?"~ */ GOTO 32
  IF ~  GlobalLT("Justifier","GLOBAL",3)
~ THEN REPLY #47719 /* ~"Was ist passiert?"~ */ GOTO 30
  IF ~~ THEN REPLY #47720 /* ~"Kein Problem. Beantworte mir nur noch ein paar Fragen."~ */ GOTO 31
  IF ~~ THEN REPLY #47721 /* ~"Kein Problem. Leb wohl."~ */ DO ~IncrementGlobal("Justifier","GLOBAL",1)
~ EXIT
END

IF ~~ THEN BEGIN 25 // from:
  SAY #47722 /* ~Der Rechtfertiger klingt beinahe verlegen. "Ich bin ein bißchen durchgedreht in diesen Unteren Ebenen, Boss. Tut mir leid. Ich geb mir Mühe, so daß es nicht wieder passiert."~ */
  IF ~  GlobalGT("Justifier","GLOBAL",2)
~ THEN REPLY #47723 /* ~"Was ist passiert?"~ */ GOTO 32
  IF ~  GlobalLT("Justifier","GLOBAL",3)
~ THEN REPLY #47724 /* ~"Was ist passiert?"~ */ GOTO 30
  IF ~~ THEN REPLY #47725 /* ~"Kein Problem. Beantworte mir nur noch ein paar Fragen."~ */ GOTO 31
  IF ~~ THEN REPLY #47726 /* ~"Kein Problem. Leb wohl."~ */ DO ~IncrementGlobal("Justifier","GLOBAL",1)
~ EXIT
END

IF ~~ THEN BEGIN 26 // from:
  SAY #47727 /* ~Der Rechtfertiger klingt beinahe verlegen. "Ich bin ein bißchen durchgedreht in diesen Unteren Ebenen, Boss. Tut mir leid. Ich geb mir Mühe, so daß es nicht wieder passiert."~ */
  IF ~  GlobalGT("Justifier","GLOBAL",2)
~ THEN REPLY #47729 /* ~"Was ist passiert?"~ */ GOTO 32
  IF ~  GlobalLT("Justifier","GLOBAL",3)
~ THEN REPLY #47730 /* ~"Was ist passiert?"~ */ GOTO 30
  IF ~~ THEN REPLY #47731 /* ~"Kein Problem. Beantworte mir nur noch ein paar Fragen."~ */ GOTO 31
  IF ~~ THEN REPLY #47732 /* ~"Kein Problem. Leb wohl."~ */ DO ~IncrementGlobal("Justifier","GLOBAL",1)
~ EXIT
END

IF ~~ THEN BEGIN 27 // from:
  SAY #47728 /* ~Der Rechtfertiger klingt beinahe verlegen. "Ich bin ein bißchen durchgedreht in diesen Unteren Ebenen, Boss. Tut mir leid. Ich geb mir Mühe, so daß es nicht wieder passiert."~ */
  IF ~  GlobalGT("Justifier","GLOBAL",2)
~ THEN REPLY #47733 /* ~"Was ist passiert?"~ */ GOTO 32
  IF ~  GlobalLT("Justifier","GLOBAL",3)
~ THEN REPLY #47734 /* ~"Was ist passiert?"~ */ GOTO 30
  IF ~~ THEN REPLY #47735 /* ~"Kein Problem. Beantworte mir nur noch ein paar Fragen."~ */ GOTO 31
  IF ~~ THEN REPLY #47736 /* ~"Kein Problem. Leb wohl."~ */ DO ~IncrementGlobal("Justifier","GLOBAL",1)
~ EXIT
END

IF ~  Global("Regret","GLOBAL",10)
~ THEN BEGIN 28 // from:
  SAY #47737 /* ~Der Rechtfertiger klingt beinahe verlegen. "Ich bin ein bißchen durchgedreht in diesen Unteren Ebenen, Boss. Tut mir leid. Ich geb mir Mühe, so daß es nicht wieder passiert."~ */
  IF ~  GlobalGT("Justifier","GLOBAL",2)
~ THEN REPLY #47738 /* ~"Was ist passiert?"~ */ GOTO 32
  IF ~  GlobalLT("Justifier","GLOBAL",3)
~ THEN REPLY #47739 /* ~"Was ist passiert?"~ */ GOTO 30
  IF ~~ THEN REPLY #47740 /* ~"Kein Problem. Beantworte mir nur noch ein paar Fragen."~ */ GOTO 31
  IF ~~ THEN REPLY #47741 /* ~"Kein Problem. Leb wohl."~ */ DO ~IncrementGlobal("Justifier","GLOBAL",1)
~ EXIT
END

IF ~  Global("Regret","GLOBAL",10)
~ THEN BEGIN 29 // from:
  SAY #47742 /* ~Der Rechtfertiger klingt beinahe verlegen. "Ich bin ein bißchen durchgedreht in diesen Unteren Ebenen, Boss. Tut mir leid. Ich geb mir Mühe, so daß es nicht wieder passiert."~ */
  IF ~  GlobalGT("Justifier","GLOBAL",2)
~ THEN REPLY #47743 /* ~"Was ist passiert?"~ */ GOTO 32
  IF ~  GlobalLT("Justifier","GLOBAL",3)
~ THEN REPLY #47744 /* ~"Was ist passiert?"~ */ GOTO 30
  IF ~~ THEN REPLY #47745 /* ~"Kein Problem. Beantworte mir nur noch ein paar Fragen."~ */ GOTO 31
  IF ~~ THEN REPLY #47746 /* ~"Kein Problem. Leb wohl."~ */ DO ~IncrementGlobal("Justifier","GLOBAL",1)
~ EXIT
END

IF ~~ THEN BEGIN 30 // from: 23.1 24.1 25.1 26.1 27.1 28.1 29.1
  SAY #47747 /* ~"Damals bin ich mit meinem Besitzer zum Abgrund gegangen, um dort nach etwas zu suchen. Ich hab vergessen, was es war. Wir hielten uns für stark genug, um es mit allen Gegnern aufzunehmen. Wir hatten uns geirrt. Mein Besitzer wurde getötet, und mich haben sie gepackt und ... *verbogen*. Manchmal, wenn ich in die Unteren Ebenen mitgenommen werde, macht es mich immer noch rasend."~ */
  IF ~~ THEN REPLY #47748 /* ~"Dein Problem. Ich hätte da noch ein paar Fragen..."~ */ GOTO 31
  IF ~~ THEN REPLY #47749 /* ~"Dein Problem. Leb wohl."~ */ DO ~IncrementGlobal("Justifier","GLOBAL",1)
~ EXIT
END

IF ~~ THEN BEGIN 31 // from: 23.2 24.2 25.2 26.2 27.2 28.2 29.2 30.0 32.0 33.0 34.0 35.0 36.0 37.0 38.0 39.1 40.0 42.0 43.1 44.0 45.0 46.0
  SAY #47750 /* ~"Ich sag dir alles, was du wissen willst, Boss."~ */
  IF ~  GlobalGT("Justifier_Lower_Planes","GLOBAL",0)
~ THEN REPLY #47751 /* ~"Was ist denn passiert?"~ */ GOTO 33
  IF ~  NearbyDialog("DMorte")
~ THEN REPLY #47752 /* ~"Was kannst du mir über Morte erzählen?"~ */ GOTO 34
  IF ~  NearbyDialog("DAnnah")
~ THEN REPLY #47753 /* ~"Was kannst du mir über Annah erzählen?"~ */ GOTO 35
  IF ~  NearbyDialog("DDakkon")
~ THEN REPLY #47754 /* ~"Was kannst du mir über Dak'kon erzählen?"~ */ GOTO 36
  IF ~  NearbyDialog("DGrace")
~ THEN REPLY #47755 /* ~"Was kannst du mir über Grace, die Gefallene, erzählen?"~ */ GOTO 37
  IF ~  NearbyDialog("DVhail")
~ THEN REPLY #47756 /* ~"Was kannst du mir über Vhailor erzählen?"~ */ GOTO 38
  IF ~  NearbyDialog("DIgnus")
~ THEN REPLY #47757 /* ~"Was kannst du mir über Ignus erzählen?"~ */ GOTO 38
  IF ~  NearbyDialog("DNordom")
~ THEN REPLY #47758 /* ~"Was kannst du mir über Nordom erzählen?"~ */ GOTO 38
  IF ~  Global("Justifier","GLOBAL",0)
~ THEN REPLY #47759 /* ~"Was kannst du mir über dich erzählen?"~ */ GOTO 39
  IF ~  Global("Justifier","GLOBAL",1)
~ THEN REPLY #47760 /* ~"Was kannst du mir über dich erzählen?"~ */ GOTO 40
  IF ~  GlobalGT("Justifier","GLOBAL",1)
~ THEN REPLY #47761 /* ~"Was kannst du mir über dich erzählen?"~ */ GOTO 41
  IF ~~ THEN REPLY #47762 /* ~"Ach, vergiß es. Leb wohl."~ */ DO ~IncrementGlobal("Justifier","GLOBAL",1)
~ EXIT
END

IF ~~ THEN BEGIN 32 // from: 23.0 24.0 25.0 26.0 27.0 28.0 29.0
  SAY #47763 /* ~"Als du damals mein Besitzer gewesen bist, sind wir zum Abgrund gegangen und haben dort nach etwas gesucht. Ich hab vergessen, was es war. Wir hielten uns für stark genug, um es mit allen Gegnern aufzunehmen. Wir hatten uns geirrt. Wir wurden in einen Kampf mit Vrocks verwickelt - den Geierdämonen der Tanar-Ri - und obwohl wir ein paar von ihnen getötet haben, gelang es einem, dein Herz mit seinem grausamen Speer in Stücke zu reißen. Sie packten mich und ... *verbogen* mich. Manchmal, wenn ich in die Unteren Ebenen mitgenommen werde, macht es mich immer noch rasend."~ */
  IF ~~ THEN REPLY #47764 /* ~"Das ist schrecklich. Ich hätte da noch ein paar Fragen an dich..."~ */ GOTO 31
  IF ~~ THEN REPLY #47765 /* ~"Oh je. Leb wohl."~ */ DO ~IncrementGlobal("Justifier","GLOBAL",1)
~ EXIT
END

IF ~~ THEN BEGIN 33 // from: 31.0
  SAY #47766 /* ~Er wirkt ein bißchen verlegen. "Ich habe über den Teil, der von den Tanar-Ri verbogen worden ist, damals, als ich im Abgrund verlorengegangen bin, die Kontrolle verloren. Hab's aber größtenteils unter Kontrolle. Tut mir leid, Boss."~ */
  IF ~~ THEN REPLY #47767 /* ~"Kein Problem. Beantworte mir noch ein paar Fragen..."~ */ GOTO 31
  IF ~~ THEN REPLY #47768 /* ~"Kein Problem. Leb wohl."~ */ DO ~IncrementGlobal("Justifier","GLOBAL",1)
~ EXIT
END

IF ~~ THEN BEGIN 34 // from: 31.1
  SAY #47769 /* ~Du hast das Gefühl, daß sich das Auge am Streitkolben vor und zurück bewegt. Er flüstert: "Bei dem habe ich ein ungutes Gefühl, Boss, aber ich kann's nicht in Worte fassen. Der Schädel kommt mir bekannt vor, im Zusammenhang mit einer Menge schlechter Erinnerungen. Allerdings weiß ich nicht warum, denn ich kann mich nicht erinnern..."~ */
  IF ~~ THEN REPLY #47770 /* ~"Später vielleicht. Ich hätt da noch ein paar Fragen..."~ */ GOTO 31
  IF ~~ THEN REPLY #47771 /* ~"Vielleicht später. Leb wohl."~ */ DO ~IncrementGlobal("Justifier","GLOBAL",1)
~ EXIT
END

IF ~~ THEN BEGIN 35 // from: 31.2
  SAY #47772 /* ~"Willst du meine ehrliche Meinung hören? Nun ja, sie ist ein bißchen feurig... Aber ich glaub, sie hat was für dich übrig. Sie läßt es nicht durchblicken, aber ich denke mal, du kannst ihr trauen, solange du sie nicht betrügst."~ */
  IF ~~ THEN REPLY #47773 /* ~"Danke. Ich hätte noch mehr Fragen..."~ */ GOTO 31
  IF ~~ THEN REPLY #47774 /* ~"Danke. Leb wohl."~ */ DO ~IncrementGlobal("Justifier","GLOBAL",1)
~ EXIT
END

IF ~~ THEN BEGIN 36 // from: 31.3
  SAY #47775 /* ~"Es gibt einen guten Grund dafür, warum er mit dir reist, Boss, und ich fürchte, es ist nicht zu deinem Besten. Du kennst ja diese Githzerai. Die halten zusammen! Und wenn sie sich mit anderen einlassen, dann nicht ohne Hintergedanken. Ich werde ihn für dich im Auge behalten."~ */
  IF ~~ THEN REPLY #47776 /* ~"Danke. Ich hätte da noch ein paar andere Fragen..."~ */ GOTO 31
  IF ~~ THEN REPLY #47777 /* ~"Danke für deine Besorgnis. Leb wohl."~ */ DO ~IncrementGlobal("Justifier","GLOBAL",1)
~ EXIT
END

IF ~~ THEN BEGIN 37 // from: 31.4
  SAY #47778 /* ~Der Streitkolben flüstert dir hektisch zu. "Boss! Was hast du mit einer Tanar-Ri zu schaffen? Zwei Worte. Tanar-Ri. Sukkubus. Sie ist böse. Ihr Blut besteht aus der Essenz des Bösen. Man kann ihr nicht trauen. Sie spielt vielleicht die Nette, aber das besagt gar nichts. Sie erzählt vielleicht, daß sie sich gebessert hat, aber das ist wieder nur so eine Lüge. Sie und ihresgleichen spinnen Netze von Intrigen. Immer. Das liegt in ihrer Natur."~ */
  IF ~~ THEN REPLY #47779 /* ~"Danke für deine Meinung. Beantworte mir noch ein paar Fragen..."~ */ GOTO 31
  IF ~~ THEN REPLY #47780 /* ~"Danke für deine Meinung. Leb wohl."~ */ DO ~IncrementGlobal("Justifier","GLOBAL",1)
~ EXIT
END

IF ~~ THEN BEGIN 38 // from: 31.5 31.6 31.7
  SAY #47781 /* ~"Nur... nun ja, gar nichts. Ich kenne diese Leute nicht, Boss."~ */
  IF ~~ THEN REPLY #47782 /* ~"Gut. Dann beantworte mir ein paar Fragen..."~ */ GOTO 31
  IF ~~ THEN REPLY #47783 /* ~"Leb wohl."~ */ DO ~IncrementGlobal("Justifier","GLOBAL",1)
~ EXIT
END

IF ~~ THEN BEGIN 39 // from: 31.8
  SAY #47784 /* ~"Ich bin 'Der Rechtfertiger'. Ich werde so genannt, weil ich für fast alles eine Entschuldigung finden kann. Und wenn ich erst ein paar Mal geschwungen worden bin, sehen die meisten Leute auch ein, daß du recht hast." Ich bin unter der Schirmherrschaft des Gottes Horus höchstpersönlich von einem seiner Schmiede in den Ebenen von Heliopolis in Arkadien geschmiedet worden. Hm... du kommst mir bekannt vor..."~ */
  IF ~~ THEN REPLY #47785 /* ~"Bekannt? Wie das?"~ */ GOTO 42
  IF ~~ THEN REPLY #47786 /* ~"Verstehe. Ich hätte da noch ein paar Fragen..."~ */ GOTO 31
  IF ~~ THEN REPLY #47787 /* ~"Stimmt. Wiedersehen."~ */ DO ~IncrementGlobal("Justifier","GLOBAL",1)
~ EXIT
END

IF ~~ THEN BEGIN 40 // from: 31.9
  SAY #47788 /* ~"Was gibt's da zu erzählen? Ich bin eine Waffe der Güte und des Lichts, und ich bin in einem Kampf sehr nützlich. Weißt du, du kommst mir immer noch irgendwie bekannt vor, und das macht mich verrückt... Es hat irgendwas mit den Tanar-Ri und... ach, ist auch egal. Ich bin dein bester Freund oder dein schlimmster Alptraum. Kommt nur darauf an, welches Ende du willst." Er lacht laut über seinen eigenen Witz.~ */
  IF ~~ THEN REPLY #47789 /* ~"Hast du immer noch nicht 'rausgefunden, woher du mich kennst? Na gut. Ich hätte da noch ein paar Fragen..."~ */ GOTO 31
  IF ~~ THEN REPLY #47790 /* ~"Hast es immer noch nicht 'rausgefunden, hä? Dann leb wohl."~ */ DO ~IncrementGlobal("Justifier","GLOBAL",1)
~ EXIT
END

IF ~~ THEN BEGIN 41 // from: 31.10
  SAY #47791 /* ~"Jetzt weiß ich wieder, wer du bist! Du hast mich vor langer Zeit einmal besessen. Was diese Zeit angeht, ist mein Gedächtnis ein bißchen lückenhaft, aber... genau. Du bist es. All die Narben haben mich verwirrt. Du siehst jetzt viel grimmiger aus. Dich muß es hart getroffen haben. Ich habe dich beraten, als du nach einem Tod aufgewacht bist, aber als du im Abgrund im Kampf gegen diese Vrocks gestorben bist, haben sie mich mitgenommen und dich verwesen lassen. Ich bin froh, daß wir uns wiedergefunden haben."~ */
  IF ~~ THEN REPLY #47792 /* ~"Was sind Vrocks?"~ */ JOURNAL #47796 /* ~Ich habe gerade herausgefunden, daß der Rechtfertiger, ein sprechender Streitkolben, einmal mir gehörte. Er kann sich nur an weniges aus meiner Vergangenheit erinnern, aber scheinbar haben wir uns auf der Suche nach etwas in den Abrund begeben, und ich bin gestorben.~ */ GOTO 43
  IF ~  False()
~ THEN REPLY #47793 /* ~"Dich verbogen? Wie?"~ */ JOURNAL #47796 /* ~Ich habe gerade herausgefunden, daß der Rechtfertiger, ein sprechender Streitkolben, einmal mir gehörte. Er kann sich nur an weniges aus meiner Vergangenheit erinnern, aber scheinbar haben wir uns auf der Suche nach etwas in den Abrund begeben, und ich bin gestorben.~ */ GOTO 44
  IF ~~ THEN REPLY #47794 /* ~"Schmink dir das ab. Ich hätte da noch ein paar Fragen..."~ */ JOURNAL #47796 /* ~Ich habe gerade herausgefunden, daß der Rechtfertiger, ein sprechender Streitkolben, einmal mir gehörte. Er kann sich nur an weniges aus meiner Vergangenheit erinnern, aber scheinbar haben wir uns auf der Suche nach etwas in den Abrund begeben, und ich bin gestorben.~ */ GOTO 8
  IF ~~ THEN REPLY #47795 /* ~"Schmink dir das ab."~ */ DO ~IncrementGlobal("Justifier","GLOBAL",1)
~ JOURNAL #47796 /* ~Ich habe gerade herausgefunden, daß der Rechtfertiger, ein sprechender Streitkolben, einmal mir gehörte. Er kann sich nur an weniges aus meiner Vergangenheit erinnern, aber scheinbar haben wir uns auf der Suche nach etwas in den Abrund begeben, und ich bin gestorben.~ */ EXIT
END

IF ~~ THEN BEGIN 42 // from: 39.0
  SAY #47797 /* ~"Tut mir leid, aber ich kann mich wirklich g'rad nicht erinnern... Laß mich noch einen Moment nachdenken und dann erinnere ich mich bestimmt."~ */
  IF ~~ THEN REPLY #47798 /* ~"Großartig. Ich hätte da noch ein paar Fragen..."~ */ GOTO 31
  IF ~~ THEN REPLY #47799 /* ~"Großartig. Viel Spaß beim Nachdenken. Leb wohl."~ */ DO ~IncrementGlobal("Justifier","GLOBAL",1)
~ EXIT
END

IF ~~ THEN BEGIN 43 // from: 41.0
  SAY #47800 /* ~"Sie sind die Geierdämonen der Tanar-Ri. Du hast tapfer gekämpft, aber sie waren zu viele. Sie hatten Glück und konnten unsere Verteidigung durchbrechen. Sie haben dir mit einem Stachelspeer das Herz herausgerissen und dich verbluten lassen. Dann haben sie mich gepackt und mich verbogen... Es war schrecklich..."~ */
  IF ~~ THEN REPLY #47801 /* ~"Dich wie verbogen?"~ */ GOTO 44
  IF ~~ THEN REPLY #47802 /* ~"Ich hätte noch ein paar Fragen..."~ */ GOTO 31
  IF ~~ THEN REPLY #47803 /* ~"Dein Problem. Leb wohl."~ */ DO ~IncrementGlobal("Justifier","GLOBAL",1)
~ EXIT
END

IF ~~ THEN BEGIN 44 // from: 41.1 43.0
  SAY #47804 /* ~Seine Stimme klingt bei seinem Verdrängungsversuch beinahe verzweifelt. "Das willst du dir gar nicht wissen. Ihr Wesen ist fremdartig und durch und durch böse. Wenn man so welchen in die Hände fällt..." Er zittert in deiner Hand. "An so was möchte man sich nicht erinnern. Aber eins muß man ihnen lassen - im Foltern sind sie erfinderisch."~ */
  IF ~~ THEN REPLY #47805 /* ~"Ich hätte noch ein paar Fragen..."~ */ GOTO 31
  IF ~~ THEN REPLY #47806 /* ~"Jede Wette. Leb wohl."~ */ DO ~IncrementGlobal("Justifier","GLOBAL",1)
~ EXIT
END

IF ~  Global("Justifier","GLOBAL",0)
~ THEN BEGIN 45 // from:
  SAY #47808 /* ~In das robuste Material dieses Streitkolbens ist ein Auge eingeritzt. Es wird blau, als es zu dir spricht und übermittelt dir dabei Gefühle und Gedanken. "Sei gegrüßt. Du mußt mein neuer Herr sein."~ */
  IF ~~ THEN REPLY #47809 /* ~"Das stimmt. Ich hätte da ein paar Fragen an dich..."~ */ GOTO 31
END

IF ~  GlobalGT("Justifier","GLOBAL",0)
~ THEN BEGIN 46 // from:
  SAY #47810 /* ~"Hallo... So sieht man sich wieder! Was kann ich für dich tun?"~ */
  IF ~~ THEN REPLY #47811 /* ~"Ich hätte gern ein paar Antworten..."~ */ GOTO 31
  IF ~~ THEN REPLY #47812 /* ~"Nichts. Leb wohl."~ */ DO ~IncrementGlobal("Justifier","GLOBAL",1)
~ EXIT
END
