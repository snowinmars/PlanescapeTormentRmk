// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DKIMASXI.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\de_DE\dialog.tlk
// dialogF  : (none)

BEGIN ~DKIMASXI~

IF ~  Global("Kimasxi","GLOBAL",0)
~ THEN BEGIN 0 // from:
  SAY #2941 /* ~Dieses wild dreinblickende Tieflingmädchen begegnet deinem Blick mit wütendem, finsterem Blick. Ihr tätowierter Körper ist praktisch nackt. Er wird nur von einem Lederriemen, einem schwarzen BH aus Stoff und Rüstungsschulterpolstern bedeckt, die offensichtlich eher zur Dekoration als zum Schutz dienen. Ihr stacheliges Haar ist, ebenso wie das dünne Fell, das ihre ziegenartigen Beine bedeckt, von einem messingartigen Weiß. Zahlreiche Silberringe baumeln an ihren Ohren, Nasenlöchern, Lippen und Augenbrauen. Sie trägt ein Lederhalsband mit der Inschrift "Kimasxi Natternzunge" um ihren Hals.~ */
  IF ~~ THEN REPLY #2942 /* ~"Sei gegrüßt..."~ */ DO ~SetGlobal("Kimasxi","GLOBAL",1)
~ GOTO 1
  IF ~~ THEN REPLY #41630 /* ~Laß sie in Ruhe.~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #41579 /* ~Kimasxi zeigt dir die Zähne. "Und was genau siehst *du* dir jetzt an, du verprügelter Schlucker?"~ */
  IF ~  NearbyDialog("DMorte")
~ THEN EXTERN ~DMORTE~ 434
  IF ~  !NearbyDialog("DMorte")
~ THEN REPLY #41643 /* ~"Dich. Ich hätte da ein paar Fragen..."~ */ GOTO 14
  IF ~  !NearbyDialog("DMorte")
~ THEN REPLY #41644 /* ~"Dich - und ich bin nicht sonderlich beeindruckt. Leb wohl."~ */ GOTO 4
  IF ~  !NearbyDialog("DMorte")
~ THEN REPLY #41645 /* ~"Nichts. Leb wohl."~ */ GOTO 4
END

IF ~~ THEN BEGIN 2 // from:
  SAY #41580 /* ~Sie lächelt Morte höhnisch an und sieht dann an ihm runter, dahin, wo normalerweise ein Körper wäre. "Scharfe Zunge... für einen stiellosen Totenbüchler."~ */
  IF ~~ THEN REPLY #41721 /* ~"Das reicht jetzt, ihr zwei."~ */ EXTERN ~DMORTE~ 435
  IF ~~ THEN REPLY #41722 /* ~Laß sie machen.~ */ EXTERN ~DMORTE~ 436
END

IF ~~ THEN BEGIN 3 // from:
  SAY #41581 /* ~"Zecken?! Das einzige ärgerliche Insekt hier bist *du*!" Sie wendet sich plötzlich dir zu. "He! Biste hier, um mit mir zu sprechen, oder was?"~ */
  IF ~~ THEN REPLY #41723 /* ~"'Oder was?' Was kann ich denn sonst noch mit dir tun?"~ */ GOTO 5
  IF ~~ THEN REPLY #41724 /* ~"Ja... Ich hätte da ein paar Fragen..."~ */ GOTO 14
  IF ~~ THEN REPLY #41725 /* ~"Nein. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 1.2 1.3 5.2 8.2 9.3 10.3 12.2 14.1 15.1 16.1 21.2 21.3
  SAY #41582 /* ~Sie verdreht die Augen. "Dann hau ab!"~ */
  IF ~~ THEN REPLY #41726 /* ~Geh weg.~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 3.0
  SAY #41583 /* ~"An was hast du denn gedacht, du saudumme Kieferschüssel? Mach schon, gib mir einen Grund, 'nein' zu sagen."~ */
  IF ~~ THEN REPLY #41727 /* ~"Was tust du denn in der Regel so für Kunden?"~ */ GOTO 6
  IF ~~ THEN REPLY #41728 /* ~"Ich hätte da ein paar Fragen..."~ */ GOTO 14
  IF ~~ THEN REPLY #41729 /* ~"Ach, vergiß es. Leb wohl."~ */ GOTO 4
END

IF ~~ THEN BEGIN 6 // from: 5.0
  SAY #41584 /* ~"Ich praktiziere schlechte Behandlung."~ */
  IF ~~ THEN REPLY #41730 /* ~"Was soll das denn heißen?"~ */ DO ~SetAnimState(Myself,ANIM_MIMEATTACK1)
~ GOTO 7
  IF ~~ THEN REPLY #41731 /* ~"Ich hätte da noch eine Frage..."~ */ GOTO 14
  IF ~~ THEN REPLY #41732 /* ~"Mehr wollt' ich gar nicht wissen. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 7 // from: 6.0
  SAY #41585 /* ~"Ich zeig's dir." Ihre Hand schnellt vor, um dir ins Gesicht zu schlagen, aber du kannst dem Schlag knapp ausweichen. Kimasxi schmollt sichtlich und grinst dann. "Ach, was soll's."~ */
  IF ~  NearbyDialog("DMorte")
Global("Kimasxi_Train","AR0605",0)
NearbyDialog("DMorte")
Global("Kimasxi_Train","AR0605",0)
~ THEN REPLY #41733 /* ~"Sag mal... Kannst du Morte beibringen, noch ausfallender zu sein?"~ */ DO ~SetGlobal("Kimasxi_Train","AR0605",1)
~ GOTO 17
  IF ~~ THEN REPLY #41734 /* ~"Ich hätte gedacht, daß ein Halbtier schnellere Reflexe hätte."~ */ GOTO 8
  IF ~~ THEN REPLY #41735 /* ~"Ich hätte da ein paar Fragen..."~ */ GOTO 14
  IF ~~ THEN REPLY #41736 /* ~"Weißt du, ich hab genug von dir. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 8 // from: 7.1
  SAY #41586 /* ~Sie sieht dich skeptisch an. "Du kannst *denken*? Häh. Weißt du, *ich* hätte gedacht, so'n Halb-Zombie hätte *langsamere* Reflexe."~ */
  IF ~~ THEN REPLY #41737 /* ~"Tja, da hast du das Falsche gedacht... Ich kann mir vorstellen, daß das häufig vorkommt."~ */ GOTO 9
  IF ~~ THEN REPLY #41738 /* ~"Hör mal, ich hatte da nur ein paar Fragen..."~ */ GOTO 14
  IF ~~ THEN REPLY #41739 /* ~"Weißt du, ich hab genug von dir. Leb wohl."~ */ GOTO 4
END

IF ~~ THEN BEGIN 9 // from: 8.0
  SAY #41587 /* ~"Du mußt dir ja ne Menge *vorstellen*: Du mußt dir vorstellen, du wärst nicht so grauenhaft häßlich, und daß Frauen dich ernst nehmen... und hör auf, mir auf die Brüste zu starren!" Ihre letzten Worte sind eine Überraschung - das hast du nämlich gar nicht gemacht.~ */
  IF ~~ THEN REPLY #41740 /* ~"Wovon redest du eigentlich?"~ */ GOTO 10
  IF ~~ THEN REPLY #41741 /* ~"Ach, *das* sollen die sein? Ich hatte gedacht, das seien so eine Art winziger, gnubbeliger Krebsgeschwüre."~ */ GOTO 12
  IF ~~ THEN REPLY #41742 /* ~"Hör mal, ich hatte da nur ein paar Fragen..."~ */ GOTO 14
  IF ~~ THEN REPLY #41743 /* ~"Weißt du, ich hab genug von dir. Leb wohl."~ */ GOTO 4
END

IF ~~ THEN BEGIN 10 // from: 9.0
  SAY #41588 /* ~"Oh, sicher. Du hast gar nicht hingeschaut, häh? Du grobschlächtige, geile Leiche... Was ist denn los mit dir? Hast du noch nie'n Paar Möpse gesehen?"~ */
  IF ~~ THEN REPLY #41744 /* ~"Ich hab sie nicht angesehen. Du benimmst dich wie eine Irre..."~ */ GOTO 11
  IF ~~ THEN REPLY #41745 /* ~"Ach, *das* sollen die sein? Ich hatte gedacht, das seien so eine Art winziger, gnubbeliger Krebsgeschwüre."~ */ GOTO 12
  IF ~~ THEN REPLY #41746 /* ~"Hör mal, ich hatte da nur ein paar Fragen..."~ */ GOTO 14
  IF ~~ THEN REPLY #41747 /* ~"Weißt du, ich hab genug von dir. Leb wohl."~ */ GOTO 4
END

IF ~~ THEN BEGIN 11 // from: 10.0
  SAY #41589 /* ~Kimasxi verdreht die Augen, bevor sie ihre Arme verschränkt und ihre Lippen spitzt. "Mit dir zu reden macht etwa so viel Spaß wie ne Konversation mit nem Modron. Hau ab, Langweiler, du bist mit einem der *einfacheren* Mädels hier besser bedient."~ */
  IF ~~ THEN REPLY #41748 /* ~"Warte - ich hätte da ein paar Fragen..."~ */ GOTO 14
  IF ~~ THEN REPLY #41749 /* ~"Dann leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 12 // from: 9.1 10.1
  SAY #41590 /* ~Sie zieht eine Augenbraue hoch. "Hör mal, wenn du nicht mal 'n paar so nette Brüste wie meine erkennen kannst, hast du ganz *offensichtlich* nicht viel Zeit in weiblicher Gesellschaft verbracht..."~ */
  IF ~~ THEN REPLY #41750 /* ~"Willst du etwa andeuten, daß du weiblich bist? Bist du da nicht ziemlich großzügig mit der Definition?"~ */ DO ~SetGlobal("Kimasxi","GLOBAL",2)
~ GOTO 13
  IF ~~ THEN REPLY #41751 /* ~"Hör mal, ich hatte da nur ein paar Fragen..."~ */ GOTO 14
  IF ~~ THEN REPLY #41752 /* ~"Weißt du, ich hab genug von dir. Leb wohl."~ */ GOTO 4
END

IF ~~ THEN BEGIN 13 // from: 12.0 16.0
  SAY #41591 /* ~Kimasxi sieht so aus, als ob sie nicht weiß, was sie sagen soll. Einen Augenblick lang droht ein Lächeln die grimassenschneidende Maske ihres Gesichts aufzubrechen - doch dann wird sie noch mehr zum Basilisk als je zuvor. "Also gut, was willst du von mir?"~ */
  IF ~~ THEN REPLY #41753 /* ~"Antworten auf meine Fragen..."~ */ GOTO 22
  IF ~~ THEN REPLY #41754 /* ~"Nichts. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 14 // from: 1.1 3.1 5.1 6.1 7.2 8.1 9.2 10.2 11.0 12.1 21.0 41.0
  SAY #41592 /* ~Die Tiefling-Frau verdreht die Augen. "Und was bringt dich auf den Gedanken, daß mich das etwas *kümmert*? Warum leckst du nicht meinen Hintern?"~ */
  IF ~~ THEN REPLY #41755 /* ~"Meine Zunge ist nicht breit genug... und ich hab nicht gern Haare in meinem Mund."~ */ GOTO 15
  IF ~~ THEN REPLY #41756 /* ~"Weißt du, ich hab genug von dir. Leb wohl."~ */ GOTO 4
END

IF ~~ THEN BEGIN 15 // from: 14.0
  SAY #41593 /* ~"Tja, du scheinst ja den Geschmack von Abfall in deinem Mund zu mögen, du Mist-atmender Idiot."~ */
  IF ~~ THEN REPLY #41757 /* ~"Nur, weil es so wäre, wie dich zu küssen, du räudiger Stinktopf."~ */ GOTO 16
  IF ~~ THEN REPLY #41758 /* ~"Weißt du, ich hab genug von dir. Leb wohl."~ */ GOTO 4
END

IF ~~ THEN BEGIN 16 // from: 15.0
  SAY #41594 /* ~"*Mich* küssen?" Sie macht ein würgendes Geräusch. "Ich würd ja lieber ne Masse blutigen Schleims küssen, als dich mit meinen Lippen zu berühren. Nein danke!"~ */
  IF ~~ THEN REPLY #41759 /* ~"Dank nicht mir... Dank den Mächten, daß jemand dich tatsächlich küssen möchte."~ */ DO ~SetGlobal("Kimasxi","GLOBAL",2)
~ GOTO 13
  IF ~~ THEN REPLY #41760 /* ~"Weißt du, ich hab genug von dir. Leb wohl."~ */ GOTO 4
END

IF ~~ THEN BEGIN 17 // from: 7.0 22.2
  SAY #41595 /* ~Sie zieht ihre Augenbrauen hoch. "Ja, *das* ist wirklich eine ungewöhnliche Bitte. Ich weiß ja nicht, das da kommt mir schon ziemlich großmäulig vor..."~ */
  IF ~~ THEN EXTERN ~DMORTE~ 437
END

IF ~~ THEN BEGIN 18 // from:
  SAY #41596 /* ~"Du *wünschtest* doch, du hättest Beine wie ich, du armseliger Wicht von einer Knochenschüssel! Ich kann gehen, rennen, tanzen... was kannst du schon tun? Rumhüpfen und wünschen, daß du Beine *hättest*, ob sie nun die einer Ziege oder andere wären!"

Die beiden setzen sich gegenseitig zu, tauschen stachelige, mörderische Beleidigungen aus und stoßen mit messerscharfen Zungen aufeinander...
~ */
  IF ~~ THEN REPLY #41761 /* ~Warte, daß es aufhört...~ */ DO ~FadeToColor([20.0],0)
Wait(3)
FadeFromColor([20.0],0)
IncrementGlobal("Morte_Taunt","GLOBAL",1)
~ GOTO 19
END

IF ~~ THEN BEGIN 19 // from: 18.0
  SAY #41597 /* ~Schließlich hören sie mit ihrer Zankerei auf, und eine unheimliche Stille senkt sich über sie, während sie sich gegenseitig haßerfüllt ansehen. Schließlich macht die Tiefling-Frau Morte gegenüber eine unwillige anerkennende Bemerkung: "Du bist wirklich nicht schlecht. Ganz und gar nicht schlecht."~ */
  IF ~~ THEN EXTERN ~DMORTE~ 438
END

IF ~~ THEN BEGIN 20 // from:
  SAY #41598 /* ~Kimasxi verengt ihre Augen und sieht Morte an. "Treib's bloß nicht zu weit, du *Totenschädel*."~ */
  IF ~~ THEN EXTERN ~DMORTE~ 439
END

IF ~~ THEN BEGIN 21 // from:
  SAY #41599 /* ~Kimasxi wendet sich dir zu. "Also, war das alles, was du wolltest? Ich verbringe nicht noch mehr Zeit in deiner Nähe, als ich unbedingt muß."~ */
  IF ~  Global("Kimasxi","GLOBAL",1)
~ THEN REPLY #41762 /* ~"Eigentlich hätte ich ein paar Fragen..."~ */ GOTO 14
  IF ~  Global("Kimasxi","GLOBAL",2)
~ THEN REPLY #41763 /* ~"Eigentlich hätte ich ein paar Fragen..."~ */ GOTO 22
  IF ~  Global("Kimasxi","GLOBAL",1)
~ THEN REPLY #41764 /* ~"Ich denke genauso. Leb wohl."~ */ GOTO 4
  IF ~  Global("Kimasxi","GLOBAL",1)
~ THEN REPLY #41765 /* ~"Das reicht jetzt. Leb wohl."~ */ GOTO 4
  IF ~  Global("Kimasxi","GLOBAL",2)
~ THEN REPLY #41766 /* ~"Ich denke genauso. Leb wohl."~ */ EXIT
  IF ~  Global("Kimasxi","GLOBAL",2)
~ THEN REPLY #41767 /* ~"Das reicht jetzt. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 22 // from: 13.0 21.1 23.0 24.1 25.1 26.1 27.1 28.1 29.1 30.1 31.0 33.0 34.1 35.0 36.0 37.0 38.0 40.0 42.0 43.0
  SAY #41600 /* ~Sie sieht verärgert aus. "Gut, ist in Ordnung... frag."~ */
  IF ~~ THEN REPLY #41768 /* ~"Wer bist du?"~ */ GOTO 36
  IF ~~ THEN REPLY #41769 /* ~"Was machst du hier?"~ */ GOTO 37
  IF ~  NearbyDialog("DMorte")
Global("Kimasxi_Train","AR0605",0)
~ THEN REPLY #41770 /* ~"Sag mal... Kannst du Morte beibringen, noch ausfallender zu sein?"~ */ DO ~SetGlobal("Kimasxi_Train","AR0605",1)
~ GOTO 17
  IF ~  Global("Ecco_Speak","GLOBAL",1)
Global("Ecco_Name","AR0605",0)
~ THEN REPLY #41771 /* ~"Was kannst du mir über die schweigsame Prostituierte erzählen?"~ */ DO ~SetGlobal("Ecco_Name","AR0605",1)
~ JOURNAL #66744 /* ~Eine Prostituierten hat gesagt, ich solle Dolora über Ecco, die schweigende Prostituierte, fragen. Sie sagte, daß Dolora manchmal mit einem alten Liebhaber von Ecco spricht, der sie kannte, bevor sie aufhörte zu reden.~ */ GOTO 43
  IF ~  Global("Ecco_Speak","GLOBAL",1)
GlobalGT("Ecco_Name","AR0605",0)
~ THEN REPLY #67845 /* ~"Was kannst du mir über die stumme Hure erzählen?"~ */ JOURNAL #66744 /* ~Eine Prostituierten hat gesagt, ich solle Dolora über Ecco, die schweigende Prostituierte, fragen. Sie sagte, daß Dolora manchmal mit einem alten Liebhaber von Ecco spricht, der sie kannte, bevor sie aufhörte zu reden.~ */ GOTO 43
  IF ~  Global("Know_Kim_Kes","AR0605",1)
!Global("Kesai","GLOBAL",3)
~ THEN REPLY #41772 /* ~"Ich habe gehört, du seist Kesai-Serris' Halbschwester. Ist das wahr?"~ */ GOTO 27
  IF ~  Global("Know_Kesai_Ravel","AR0605",1)
!Global("Kesai","GLOBAL",3)
~ THEN REPLY #41773 /* ~"Ich hab gehört, Kesai-Serris ist Ravels Tochter. Stimmt das?"~ */ GOTO 25
  IF ~  Global("Nenny_Hint2","AR0605",1)
GlobalLT("Veil_Quest","AR0605",2)
~ THEN REPLY #41774 /* ~"Ich habe gehört, du seist kürzlich gesehen worden, wie du dich aus Marissas Gemächern weggeschlichen hast. Steht das in irgendeinem Zusammenhang mit ihrem verlorengegangenen Schleier?"~ */ DO ~SetGlobal("Nenny_Hint2","AR0605",2)
~ GOTO 39
  IF ~  Global("Scent_Quest","AR0605",1)
~ THEN REPLY #41775 /* ~"Ich bin auf der Suche nach Vivians Duft... Weißt du, wo er sein könnte?"~ */ GOTO 32
  IF ~  Global("Veil_Quest","AR0605",1)
~ THEN REPLY #41776 /* ~"Ich suche Marissas Purpurschleier... Weißt du, wo er sein könnte?"~ */ GOTO 23
  IF ~  Global("Know_Ravel","GLOBAL",1)
~ THEN REPLY #41777 /* ~"Weißt du etwas über Ravel Rätselschön?"~ */ JOURNAL #66742 /* ~Ich habe eine der Prostituierten im Bordell über Ravel befragt, und sie hat gesagt, ich solle mit Yves darüber sprechen. Yves scheint Geschichten jeglicher Art zu sammeln, und es ist wahrscheinlich, daß sie in ihrem Repertoire auch eine über Ravel hat.~ */ GOTO 24
  IF ~  Global("Grace_Quest","GLOBAL",1)
GlobalGT("Ecco","GLOBAL",0)
GlobalGT("Yves","GLOBAL",0)
GlobalGT("Vivian","GLOBAL",0)
GlobalGT("Nenny","GLOBAL",0)
GlobalGT("SadJuli","GLOBAL",0)
GlobalGT("Marissa","GLOBAL",0)
GlobalGT("Kesai","GLOBAL",0)
GlobalGT("Dolora","GLOBAL",0)
~ THEN REPLY #41778 /* ~"Ich habe insgesamt mit neun Prostituierten gesprochen... Weißt du, wer oder wo die zehnte Schülerin ist?"~ */ GOTO 34
  IF ~~ THEN REPLY #41779 /* ~"Vergiß es einfach. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 23 // from: 22.9
  SAY #41602 /* ~Sie grinst. "Tss. Vielleicht in deinem Hintern? Himmel, ich weiß es nicht." Kimasxi streicht sich die Haare zurück, die sich aber sofort wieder in einem stacheligen Durcheinander aufrichten.~ */
  IF ~~ THEN REPLY #41780 /* ~"Ich hätte da noch eine Frage..."~ */ GOTO 22
  IF ~~ THEN REPLY #41781 /* ~"Dann leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 24 // from: 22.10
  SAY #41603 /* ~"Was könnte *ich* schon über sie wissen? Sehe ich aus wie eine Gelehrte oder was? Geh und frag jemand mehr 'gelehrtes'... oder Yves. Sie hat wahrscheinlich mindestens *eine* Geschichte über sie ihn ihrer riesigen Sammlung von Geschichten, die sie in ihrer Rübe mit sich rumträgt. Oh, und hock dich auf 'ne Lanze, wenn du schon dabei bist."~ */
  IF ~  Global("Know_Kesai_Ravel","AR0605",1)
!Global("Kesai","GLOBAL",3)
~ THEN REPLY #41782 /* ~"Ich habe gehört, daß Kesai-Serris ihre Tochter ist. Ist das wahr?"~ */ GOTO 25
  IF ~~ THEN REPLY #41783 /* ~"Ich hätte da noch eine Frage..."~ */ GOTO 22
  IF ~~ THEN REPLY #41784 /* ~"Dann leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 25 // from: 22.6 24.0
  SAY #41604 /* ~Sie zuckt die Schultern. "Soweit ich weiß, ja." Sie sieht dich plötzlich mißtrauisch an. "Warum?"~ */
  IF ~  Global("Kesai_Ask","AR0605",1)
~ THEN REPLY #41785 /* ~"Ich habe sie gefragt, und sie hat es abgestritten."~ */ GOTO 26
  IF ~~ THEN REPLY #41786 /* ~"Mach dir darüber keine Sorgen. Ich hätte da noch eine Frage."~ */ GOTO 22
  IF ~~ THEN REPLY #41787 /* ~"Ach, vergiß es. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 26 // from: 25.0
  SAY #41605 /* ~"Na und? Nicht, daß es dich überhaupt irgendwas angeht."~ */
  IF ~  Global("Know_Kim_Kes","AR0605",1)
~ THEN REPLY #41788 /* ~"Ich habe auch gehört, daß du Kesai-Serris' Halbschwester bist."~ */ GOTO 27
  IF ~~ THEN REPLY #41789 /* ~"Vielleicht nicht. Ich hätte da noch eine Frage..."~ */ GOTO 22
  IF ~~ THEN REPLY #41790 /* ~"Ach, vergiß es. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 27 // from: 22.5 26.0
  SAY #41606 /* ~"Ja, ich bin mit dieser pummeligen, mauzenden, hakennasigen Tagträumerin verwandt. Derselbe Vater, unterschiedliche Mütter. Na und?"~ */
  IF ~  Global("Kesai_Ask","AR0605",1)
~ THEN REPLY #41791 /* ~"Ich hatte gehofft, du könntest mir helfen herauszufinden, ob Kesai *wirklich* Ravels Tochter ist."~ */ DO ~SetGlobal("Know_Kesai_Ravel","AR0605",2)
~ JOURNAL #39475 /* ~Kimasxi Natternzunge, die Halbschwester von Kesai-Serris, meint, ich solle Kesai sagen, daß ihr Vater ihr bestimmt bestätigen kann, daß sie Ravel Rätselschöns Tochter ist.~ */ GOTO 28
  IF ~~ THEN REPLY #41792 /* ~"Mach dir darüber keine Sorgen. Ich hätte da noch eine Frage."~ */ GOTO 22
  IF ~~ THEN REPLY #41793 /* ~"Ach, vergiß es. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 28 // from: 27.0
  SAY #41607 /* ~Kimasxi sieht dich stirnrunzelnd an. "Normalerweise würde ich es hassen, dir so zu helfen, aber ich hab das Gefühl, das würde dieses flirtende, herausgeputzte Püppchen ein für allemal verletzen. Sag ihr, sie soll ihren Vater fragen... er ist ein mächtiger Cambion, also sollte sie ihn an Ort und Stelle rufen können. Dann bekommst du sicher auch deine Antwort."~ */
  IF ~~ THEN REPLY #41794 /* ~"Cambion?"~ */ GOTO 29
  IF ~~ THEN REPLY #41795 /* ~"Danke. Ich hätte noch eine andere Frage..."~ */ GOTO 22
  IF ~~ THEN REPLY #41796 /* ~"Dann werd ich mal mit ihr reden. Danke, Kimasxi, und leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 29 // from: 28.0
  SAY #41608 /* ~"Ja, *Cambion*." Kimasxi verdreht die Augen. "Hast du mich beim ersten Mal nicht gehört? Die Ohren ganz verstopft mit den letzten Resten Hirn, die gerade auslaufen, was?"~ */
  IF ~~ THEN REPLY #41797 /* ~"Ich frage nur, was das ist..."~ */ GOTO 30
  IF ~~ THEN REPLY #41798 /* ~"Nein. Aber ich hätte da noch eine Frage."~ */ GOTO 22
  IF ~~ THEN REPLY #41799 /* ~"Nein. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 30 // from: 29.0
  SAY #41609 /* ~"Meine Güte, du bist ja echt ahnungslos." Sie schüttelt traurig den Kopf. "Tss, tss. Ein Halbscheusal, Dussel. So ähnlich wie du... Aber du bist halb *Mist*, glaub ich. Du riechst auf jeden Fall so."~ */
  IF ~~ THEN REPLY #41800 /* ~"Besser, als halb *du*, Kimasxi."~ */ GOTO 31
  IF ~~ THEN REPLY #41801 /* ~"Ich hätte da noch eine Frage..."~ */ GOTO 22
  IF ~~ THEN REPLY #41802 /* ~"Leb wohl, Kimasxi."~ */ EXIT
END

IF ~~ THEN BEGIN 31 // from: 30.0
  SAY #41610 /* ~"Du *wünschtest*, du wärst halb Kimasxi, Schlucker... selbst, wenn du dann nen Ziegenhintern auf deinen Schultern hättest, wär's immer noch besser als dein vernarbtes Gesicht."~ */
  IF ~~ THEN REPLY #41803 /* ~"Das reicht, Kimasxi. Ich hätte da noch eine Frage..."~ */ GOTO 22
  IF ~~ THEN REPLY #41804 /* ~"Ich hab jetzt keine Zeit, das zu vertiefen. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 32 // from: 22.8
  SAY #41611 /* ~"Versuch's mal mit ner Gosse im Stock... Aber vielleicht ist das einfach nur ein ähnliches Aroma. Aber mal im Ernst... Marissa hat ihn gestohlen."~ */
  IF ~  GlobalGT("Marissa","GLOBAL",0)
~ THEN REPLY #41805 /* ~"Marissa? Bist du sicher?"~ */ GOTO 33
  IF ~  Global("Marissa","GLOBAL",0)
~ THEN REPLY #41806 /* ~"Marissa... Ich habe sie noch nicht kennengelernt. Bist du dir da ganz sicher?"~ */ GOTO 33
END

IF ~~ THEN BEGIN 33 // from: 32.0 32.1
  SAY #41612 /* ~"Nein, aber ich hoffe, du stürmst jetzt in ihr Zimmer und verärgerst sie genug, daß sie dir was Schreckliches antut."~ */
  IF ~~ THEN REPLY #41807 /* ~"Hmm. Ich hab noch eine andere Frage..."~ */ GOTO 22
  IF ~~ THEN REPLY #41808 /* ~"Ach, vergiß es. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 34 // from: 22.11
  SAY #41613 /* ~"Ja, sie versteckt sich unter meinem Bett. Mach schon, geh auf alle Viere runter und sieh nach. Ich trete dich schon nicht... ehrlich."~ */
  IF ~~ THEN REPLY #41809 /* ~Geh auf deine Hände und Knie runter und sieh nach.~ */ GOTO 35
  IF ~~ THEN REPLY #41810 /* ~"Hmm. Ich hab noch eine andere Frage..."~ */ GOTO 22
  IF ~~ THEN REPLY #41811 /* ~"Ach, vergiß es. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 35 // from: 34.0
  SAY #41614 /* ~Als du unter Kimasxis Bett siehst - wo natürlich nichts ist - wird dir bewußt, daß sie hinter dir steht. "Ich konnte es nicht... es war zu einfach. Steh auf, du armer, dummer Totenbüchler. Es *gibt* keine zehnte Schülerin."~ */
  IF ~~ THEN REPLY #41812 /* ~"Dann habe ich noch eine andere Frage..."~ */ GOTO 22
  IF ~~ THEN REPLY #41813 /* ~"Mehr wollt' ich gar nicht wissen. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 36 // from: 22.0
  SAY #41615 /* ~"Mein Name? Uninteressiert. Aber ich kann mir deinen denken: 'Narbenpack Raus-hier-bevor-ich-dir-Feuer-unterm-Hintern-mache'."~ */
  IF ~~ THEN REPLY #41814 /* ~"Ich habe noch eine andere Frage..."~ */ GOTO 22
  IF ~~ THEN REPLY #41815 /* ~"Dann nehme ich mal an, du bist Kimasxi, wie es auf dem Halsband steht. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 37 // from: 22.1
  SAY #41616 /* ~"Nichts für dich, so viel ist sicher." Sie grinst dich an. "Ich denke über den besten Weg nach, dir gleich zu sagen, daß du abhauen sollst."~ */
  IF ~~ THEN REPLY #41816 /* ~"Ich habe noch eine andere Frage..."~ */ GOTO 22
  IF ~~ THEN REPLY #41817 /* ~"Ach, vergiß es. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 38 // from:
  SAY #41617 /* ~"Sicher. Grace, die Gefallene, sammelt arme Waisenmädchen aus den Straßen des Stocks auf und zieht sie groß, damit sie Geschlechtsverkehr mit häßlichen Männern wie dir haben, während sie uns schlägt, uns in Lumpen kleidet und unser Blut trinkt. Es ist wirklich schrecklich."~ */
  IF ~~ THEN REPLY #41818 /* ~"Ich... verstehe. Ich hätte da noch eine Frage..."~ */ GOTO 22
  IF ~~ THEN REPLY #41819 /* ~"Also gut... Dann gehe ich jetzt mal. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 39 // from: 22.7
  SAY #41618 /* ~Kimasxi braust wütend auf: "WER HAT DIR DAS ERZÄ-" Sie verstummt plötzlich und funkelt dich aus schmalen Augen an. "Wenn ich da *war*, Dussel, dann hab ich deshalb noch lange nicht ihren dreckigen Schleier genommen... Durchsuch doch mein Zimmer, wenn du möchtest. Aber wenn ich dich dabei erwische, wie du an meinen Höschen schnupperst, sorge ich dafür, daß du hier nie wieder reingelassen wirst."~ */
  IF ~~ THEN REPLY #41820 /* ~"Warum sollte irgend jemand *jemals* an deinen Höschen schnüffeln?"~ */ JOURNAL #66514 /* ~Ich habe Kimasxi darüber befragt, daß sie dabei beobachtet wurde, wie sie sich aus Marissas Kammern geschlichen hat, und sie hat abgestritten, den Purpurschleier genommen zu haben. Sie hat aber behauptet, daß auch in ihr eigenes Zimmer eingebrochen wurde.~ */ GOTO 40
END

IF ~~ THEN BEGIN 40 // from: 39.0
  SAY #41619 /* ~"Verstehe ich auch nicht. Aber irgend jemand hat mehr als nur ein paar davon geklaut. Außerdem meinen Lieblings-BH, der aus Leder mit den Eisennieten." Sie räuspert sich verächtlich.~ */
  IF ~~ THEN REPLY #41822 /* ~"Hmm. Ich hätte da noch eine Frage."~ */ GOTO 22
  IF ~~ THEN REPLY #41823 /* ~"Das ist alles, was ich wissen wollte. Leb wohl."~ */ EXIT
END

IF ~  Global("Kimasxi","GLOBAL",1)
~ THEN BEGIN 41 // from:
  SAY #41620 /* ~"Na, da bist du ja, häßlich wie immer. Willst du dich noch ein bißchen mehr von Kimasxi beschimpfen lassen, eh?"~ */
  IF ~~ THEN REPLY #41824 /* ~"Nein, ich hatte nur ein paar Fragen..."~ */ GOTO 14
  IF ~~ THEN REPLY #41825 /* ~"Bin eigentlich nur gerade zufällig vorbeigekommen. Leb wohl."~ */ EXIT
END

IF ~  Global("Kimasxi","GLOBAL",2)
~ THEN BEGIN 42 // from:
  SAY #41621 /* ~"Oh, *du* schon wieder. Du kannst einfach nicht genug von mir bekommen, was?"~ */
  IF ~~ THEN REPLY #41826 /* ~"Ich hätte da ein paar Fragen..."~ */ GOTO 22
  IF ~~ THEN REPLY #41827 /* ~"Ich bin nur zufällig vorbeigekommen, Kimasxi. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 43 // from: 22.3 22.4
  SAY #41622 /* ~"Was, diese 'Ecco'-Braut? Weiß überhaupt nichts über sie. Ich sprech nicht mit dem Mädchen... Ich meine, wozu? Kann ja nicht antworten. Frag die Frigide Dolora nach ihr... Ich meine, sie gesehen zu haben, wie sie Go mit einer alten Flamme von Ecco gespielt hat, aus der Zeit, als Ecco noch reden konnte."~ */
  IF ~~ THEN REPLY #41828 /* ~"Ich hätte da noch eine Frage..."~ */ GOTO 22
  IF ~~ THEN REPLY #41829 /* ~"Mehr wollt' ich gar nicht wissen. Leb wohl."~ */ EXIT
END
