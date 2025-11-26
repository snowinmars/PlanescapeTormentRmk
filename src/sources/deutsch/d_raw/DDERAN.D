// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DDERAN.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\de_DE\dialog.tlk
// dialogF  : (none)

BEGIN ~DDERAN~

IF ~  NumTimesTalkedTo(0)
~ THEN BEGIN 0 // from:
  SAY #35792 /* ~Du siehst einen lärmenden Auktionator. Er ist total aufgedreht und ruft, schreit und stampft herum. Er scheint melodramatisch veranlagt zu sein und zieht viele komische Grimassen und gestikuliert wild mit den Armen...~ */
  IF ~~ THEN REPLY #35834 /* ~"Sei gegrüßt."~ */ GOTO 1
  IF ~~ THEN REPLY #35835 /* ~Ignoriere den Mann.~ */ DO ~SetNumTimesTalkedTo(0)
~ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #35793 /* ~Er wirft dir einen Blick zu und bedeutet der Menge, daß er eine Pause macht. "Sei mir tausendfach gegrüßt, mein guter Herr!" Er stutzt, als er deine Narben sieht. "Aha, ein Blick mit meinem kritischen Auge, und ich sehe einen Mann, der Verwendung für einen Heiltalisman hätte."~ */
  IF ~~ THEN REPLY #35836 /* ~"Hast du Talismane?"~ */ GOTO 2
  IF ~~ THEN REPLY #35837 /* ~"Ich habe ein paar Fragen..."~ */ GOTO 7
  IF ~~ THEN REPLY #35838 /* ~"Vergiß es. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.0
  SAY #35794 /* ~Er sieht dich erschrocken an und gestikuliert großartig in seine Richtung. "Ob ich, Deran, vielleicht Talismane habe?" Er macht eine Kunstpause. "Nein, mein Herr, habe ich nicht... aber diese Tatsache sollte dich nicht entmutigen. Ich habe viele andere Dinge zu verkaufen." Er weist auf den hinteren Teil des Versteigerungspodests, wo eine Gruppe Menschen in Ketten zu sehen sind.~ */
  IF ~~ THEN REPLY #35839 /* ~"Du verkaufst Sklaven?"~ */ GOTO 3
  IF ~~ THEN REPLY #35840 /* ~"Ich habe da ein paar Fragen an dich..."~ */ GOTO 7
  IF ~~ THEN REPLY #35841 /* ~"Ich muß gehen. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 2.0 22.0
  SAY #35795 /* ~Er schüttelt den Kopf. "Nein, mein Herr! Dies sind unter Vertrag genommene Bedienstete, keine Sklaven. Die meisten von ihnen haben sich kleinere Verbrechen zuschulden kommen lassen. Der Erlös aus ihrem Verkauf wird für die Abzahlung ihrer Schuld gegenüber der Stadt verwendet. Nach ihrer Knechtschaftszeit werden sie wieder freie Bürger sein."~ */
  IF ~~ THEN REPLY #35842 /* ~Wahrheit: "Hört sich für mich immer noch nach Sklaverei an."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Deran_1","GLOBALLaw",-1)
~ GOTO 4
  IF ~~ THEN REPLY #35843 /* ~Wahrheit: "Scheint ein guter Weg, ihre Schuld an die Gesellschaft zu bezahlen."~ */ DO ~IncrementGlobalOnceEx("GLOBALLawful_Deran_1","GLOBALLaw",1)
~ GOTO 4
  IF ~~ THEN REPLY #35844 /* ~Wahrheit: "Naja, ist mir eigentlich ziemlich egal."~ */ GOTO 4
END

IF ~~ THEN BEGIN 4 // from: 3.0 3.1 3.2
  SAY #35796 /* ~Er sieht dich mit freundlichem Lächeln an. "Mit solchen Gedanken belaste ich mich nicht. Meine Aufgabe ist es, ihre Verträge zu verkaufen, so wie sie von den Gerichten in Sigil ausgefertigt wurden." Er senkt die Stimme und beugt sich zu dir. "Und ein paar Prozente für meine Bemühungen einzukassieren, du weißt schon." Er richtet sich wieder auf.~ */
  IF ~~ THEN REPLY #35845 /* ~"Du sagst, sie haben sich Verbrechen zuschulden kommen lassen. Was für Verbrechen haben sie denn begangen?"~ */ GOTO 6
  IF ~~ THEN REPLY #35846 /* ~"Ich habe da ein paar Fragen an dich..."~ */ GOTO 7
  IF ~~ THEN REPLY #35847 /* ~"Ich muß gehen. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from:
  SAY #35803 /* ~Null node.~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 6 // from: 4.0
  SAY #35801 /* ~Er zieht die Schultern übertrieben hoch. "Ich weiß es nicht genau, aber ich denke so was wie Diebstähle, Überfälle oder daß sie ihre Schulden nicht begleichen konnten. Das sind wohl die häufigsten Vergehen."~ */
  IF ~~ THEN REPLY #35848 /* ~"Ich verstehe... Ich habe ein paar Fragen an dich..."~ */ GOTO 7
  IF ~~ THEN REPLY #35849 /* ~"Ich muß gehen. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 7 // from: 1.1 2.1 4.1 6.0 8.1 14.3 15.3 16.2 17.2 18.2 19.0 20.0 22.1
  SAY #35802 /* ~Er schüttelt den Kopf. "Ich hab' keine Zeit für solche Kinkerlitzchen, mein Freund. Muß mich um meine Geschäfte kümmern! Sag schon, was du willst!".~ */
  IF ~  Global("Know_Lothar","GLOBAL",1)
!Global("AR0508_Visited","GLOBAL",1)
~ THEN REPLY #35850 /* ~"Ich suche jemanden namens Lothar. Man nennt ihn auch den Herrn der Knochen..."~ */ GOTO 8
  IF ~  Global("Morte_Stolen","GLOBAL",1)
!Global("Know_Lothar","GLOBAL",1)
~ THEN REPLY #35851 /* ~"Mir wurde ein Schädel gestohlen. Weißt du zufällig, wer so etwas tun würde?"~ */ DO ~SetGlobal("Know_Lothar","GLOBAL",1)
~ GOTO 12
  IF ~  Global("Trist_Quest","GLOBAL",3)
~ THEN REPLY #35852 /* ~"Ich wollte dir ein paar Fragen über Trist stellen."~ */ GOTO 23
  IF ~~ THEN REPLY #35853 /* ~"Wer bist du?"~ */ GOTO 22
  IF ~~ THEN REPLY #35854 /* ~"Kannst du mir etwas über diesen Bezirk erzählen?"~ */ GOTO 14
  IF ~~ THEN REPLY #35855 /* ~"Kannst du mir etwas über Sigil erzählen?~ */ GOTO 19
  IF ~~ THEN REPLY #35856 /* ~"Ich muß weiter, leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 8 // from: 7.0 13.0
  SAY #35804 /* ~Er wirft dir einen höhnischen Blick zu. "Das zu erzählen wäre eine gefährliche Sache, Freund... Ich wünsche nicht, dich in Gefahr zu bringen."~ */
  IF ~~ THEN REPLY #35857 /* ~"Zufällig mag ich's gern gefährlich. Bring mich in Gefahr!"~ */ GOTO 9
  IF ~~ THEN REPLY #35858 /* ~"Ich verstehe. Ich hätte noch ein paar andere Fragen..."~ */ GOTO 7
  IF ~~ THEN REPLY #35859 /* ~"Ich muß mich verabschieden. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 9 // from: 8.0
  SAY #35805 /* ~Er lacht schallend. "Also gut, mein Freund. Lothar ist der Meister, der Herr der berühmten Knochen der Nacht. Der Bibliothek, wo ihm die Toten selbst als Quelle obskurer Überlieferungen dienen. Alle Toten von Sigil und der Ebenen flüstern ihm in seinem Salon der Totenschädel ihre Geheimnisse zu."~ */
  IF ~~ THEN REPLY #35860 /* ~"Wo kann ich diesen Ort finden?"~ */ GOTO 10
END

IF ~~ THEN BEGIN 10 // from: 9.0
  SAY #35806 /* ~"Versuch es mal südlich und östlich des Marktgebietes im Bezirk... du solltest ein verkommenes Gebäude ausfindig machen können mit einer Knochenleiter, die nach unten führt. Und es könnte sein, daß diese Leiter in den Salon der Totenschädel geht."~ */
  IF ~~ THEN REPLY #35861 /* ~"Danke. Ich habe noch ein paar Fragen..."~ */ GOTO 11
  IF ~~ THEN REPLY #35862 /* ~"Ich muß jetzt los. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 11 // from: 10.0
  SAY #35807 /* ~Er lächelt. "Nein, Freund, ich habe keine weiteren Antworten für dich. Ich habe schon mehr gesagt, als ich sollte, und über Dinge, über die nicht gesprochen werden sollte. Ja, ich muß mich wieder um meine Kunden kümmern". Er wendet sich ab.~ */
  IF ~~ THEN REPLY #35863 /* ~"Ich verstehe. Leb wohl."~ */ DO ~SetGlobal("Deran_Questions","GLOBAL",1)
~ EXIT
END

IF ~~ THEN BEGIN 12 // from: 7.1
  SAY #35808 /* ~"Ein Totenschädel?" Er wirkt etwas durcheinander. "Kein großer Markt dafür, zumindest nicht für solche ohne Körper..." Er runzelt die Stirn, wendet sich dann wieder dir zu, und seine Stimme klingt dramatisch tief. "Es sei denn..."~ */
  IF ~~ THEN REPLY #35864 /* ~"Erzähl weiter..."~ */ GOTO 13
END

IF ~~ THEN BEGIN 13 // from: 12.0
  SAY #35809 /* ~"Nun, ein fehlender Totenschädel, das kann eine ernste Angelegenheit werden, eine richtig gefährliche gar. Du mußt nämlich wissen, daß jemand, der den Handel mit Totenschädeln aufnehmen will, dies nur für einige wenige ausgewählte Leute in Sigil tun kann..." Er hält inne. "Und es ist fast so sicher wie das Amen in der Kirche, mein Freund, daß einer darunter..." Er sieht sich schnell nach allen Seiten um und flüstert dir dann vertraulich zu: "...Lothar, der Herr der Knochen, selbst ist!"~ */
  IF ~~ THEN REPLY #36237 /* ~"Erzähl mir von diesem Lothar."~ */ GOTO 8
END

IF ~~ THEN BEGIN 14 // from: 7.4
  SAY #35810 /* ~Er macht eine große Geste. "Dies, mein Herr, ist der Untere Bezirk. Heimat des gewöhnlichen Volks und sonst nicht weiter von Interesse. Die einzigen nennenswerten Orte hier wären die Gießerei, der Straßenmarkt und der Belagerungsturm."~ */
  IF ~~ THEN REPLY #35865 /* ~"Erzähl mir von der Gießerei."~ */ GOTO 15
  IF ~~ THEN REPLY #35866 /* ~"Erzähl' mir von diesem Belagerungsturm."~ */ GOTO 17
  IF ~~ THEN REPLY #35867 /* ~"Erzähl mir vom Straßenmarkt."~ */ GOTO 18
  IF ~~ THEN REPLY #35868 /* ~"Ich habe da noch ein paar Fragen..."~ */ GOTO 7
  IF ~~ THEN REPLY #35869 /* ~"Vielen Dank. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 15 // from: 14.0 17.0 18.0
  SAY #35811 /* ~Er öffnet die Arme und sieht gen Himmel. "Die Werkstatt aller Schöpfung, wo Stahl und die Seele der Menschen in Kunstwerke geformt werden und in deren Mauern die Schöpfung selbst geändert werden kann..." Er blickt wieder in deine Richtung. "Das wenigstens sagen die Göttermenschen."~ */
  IF ~~ THEN REPLY #35870 /* ~"Die Göttermenschen?"~ */ GOTO 16
  IF ~~ THEN REPLY #35871 /* ~"Erzähl mir von diesem Belagerungsturm."~ */ GOTO 17
  IF ~~ THEN REPLY #35872 /* ~"Erzähl mir vom Straßenmarkt."~ */ GOTO 18
  IF ~~ THEN REPLY #35873 /* ~"Ich habe da noch ein paar Fragen..."~ */ GOTO 7
  IF ~~ THEN REPLY #35874 /* ~"Vielen Dank. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 16 // from: 15.0
  SAY #35812 /* ~Er lächelt. "Ein edler Bund - alle können Götter werden, wenn sie nur genug während ihres Lebens lernen, auf daß sie wachsen, gedeihen und bessere Geister werden! Kannst du dir einen edleren Bund vorstellen?"~ */
  IF ~~ THEN REPLY #35875 /* ~"Erzähl mir von diesem Belagerungsturm."~ */ GOTO 17
  IF ~~ THEN REPLY #35876 /* ~"Erzähl mir vom Straßenmarkt."~ */ GOTO 18
  IF ~~ THEN REPLY #35877 /* ~"Ich habe da noch ein paar Fragen..."~ */ GOTO 7
  IF ~~ THEN REPLY #35878 /* ~"Vielen Dank. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 17 // from: 14.1 15.1 16.0 18.1
  SAY #35813 /* ~"Ein wirkliches Rätsel, selbst für mich. Er war eines Tages einfach da. Niemand kann Eintritt erlangen und nichts und niemand hat ihn jemals verlassen."~ */
  IF ~~ THEN REPLY #35879 /* ~"Erzähl mir von der Gießerei."~ */ GOTO 15
  IF ~~ THEN REPLY #35880 /* ~"Erzähl mir vom Straßenmarkt."~ */ GOTO 18
  IF ~~ THEN REPLY #35881 /* ~"Ich habe da noch ein paar Fragen..."~ */ GOTO 7
  IF ~~ THEN REPLY #35882 /* ~"Vielen Dank. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 18 // from: 14.2 15.2 16.1 17.1
  SAY #35814 /* ~"Der Markt liegt südlich von hier und du findest dort so ziemlich alles. Ich empfehle dir, ihn dir einmal anzusehen."~ */
  IF ~~ THEN REPLY #35883 /* ~"Erzähl mir von der Gießerei."~ */ GOTO 15
  IF ~~ THEN REPLY #35884 /* ~"Erzähl mir von diesem Belagerungsturm."~ */ GOTO 17
  IF ~~ THEN REPLY #35885 /* ~"Ich habe da noch ein paar Fragen..."~ */ GOTO 7
  IF ~~ THEN REPLY #35886 /* ~"Vielen Dank. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 19 // from: 7.5
  SAY #35815 /* ~Er lacht und breitet seine Arme aus, als ob er die ganze Stadt darin einschließen wollte. "Die ruhmreiche goldene Stadt, die Stadt, von der alle Türen ausgehen..." Er lächelt und zieht seine Augenbrauen hoch. "... und in die alle Türen hineinführen! Aber wirklich, Sigil kann man nicht erzählt bekommen, Sigil muß man erleben!"~ */
  IF ~~ THEN REPLY #35887 /* ~"Ich habe da noch ein paar Fragen..."~ */ GOTO 7
  IF ~~ THEN REPLY #35888 /* ~"Vielen Dank. Leb wohl."~ */ EXIT
END

IF ~  NumTimesTalkedToGT(0)
~ THEN BEGIN 20 // from:
  SAY #35816 /* ~Du siehst Deran, den Auktionator. Er lächelt dir zu, als du näher kommst. "Schön dich wiederzutreffen! Was kann ich an einem solch wunderschönen nebelverhangenen Tag für dich tun?~ */
  IF ~  !Global("Deran_Questions","GLOBAL",1)
~ THEN REPLY #35889 /* ~"Ich habe ein paar Fragen..."~ */ GOTO 7
  IF ~  Global("Deran_Questions","GLOBAL",1)
~ THEN REPLY #35890 /* ~"Ich habe ein paar Fragen..."~ */ GOTO 21
  IF ~  Global("Trist_Quest","GLOBAL",3)
~ THEN REPLY #35891 /* ~"Ich wollte dir ein paar Fragen über Trist stellen."~ */ GOTO 23
  IF ~~ THEN REPLY #35892 /* ~"Nichts, leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 21 // from: 20.1
  SAY #35817 /* ~Er sieht dich mit einem traurigen Lächeln an. "Mein Herr, ich werde keine einzige deiner Fragen mehr beantworten. Ich habe uns beide bereits in Gefahr gebracht, und ich sehe keinen Grund darin, in diesem Stil weiterzumachen..."~ */
  IF ~~ THEN REPLY #35893 /* ~Geh weg.~ */ EXIT
END

IF ~~ THEN BEGIN 22 // from: 7.3
  SAY #35818 /* ~"Deran ist mein Name, Freund! Solltest du wirklich noch nicht von mir gehört haben? Ich bin zutiefst getroffen, wirklich!" Sein Lächeln wird breiter ob seiner angeblichen Betroffenheit. "Keiner ist besser oder bekannter dafür, Leute, die Leute wollen, einander näher zu bringen." Er weist auf den hinteren Teil des Versteigerungspodests, wo eine Gruppe Menschen in Ketten zu sehen sind. "Wolltest du vielleicht jemanden, Freund?"~ */
  IF ~~ THEN REPLY #35894 /* ~"Du verkaufst Sklaven?"~ */ GOTO 3
  IF ~~ THEN REPLY #35895 /* ~"Ich habe noch ein paar Fragen..."~ */ GOTO 7
  IF ~~ THEN REPLY #35896 /* ~"Nein danke. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 23 // from: 7.2 20.2
  SAY #35819 /* ~Er runzelt kurz die Stirn und zuckt dann die Schultern. "Also gut, mein Herr. Was ist mit Trist?"~ */
  IF ~~ THEN REPLY #35897 /* ~"Kann ich ihren Vertrag kaufen?"~ */ GOTO 24
  IF ~~ THEN REPLY #35898 /* ~"Sie sagt, sie gehört nicht auf das Versteigerungspodest."~ */ GOTO 31
  IF ~  PartyHasItem("LoanDoc")
~ THEN REPLY #35899 /* ~"Ich habe Beweise dafür, daß sie kein Verbrechen begangen hat."~ */ GOTO 33
  IF ~~ THEN REPLY #35900 /* ~"Schon gut. Leb wohl.~ */ EXIT
END

IF ~~ THEN BEGIN 24 // from: 23.0
  SAY #35820 /* ~Er runzelt die Stirn. "Sicher doch, mein Herr! Wenn du die Anforderungen der Gerichte von Sigil erfüllst und dir den Vertrag leisten kannst." Er grinst dich an.~ */
  IF ~~ THEN REPLY #35901 /* ~"Was sind die Bedingungen?"~ */ GOTO 25
  IF ~~ THEN REPLY #35902 /* ~"Vergiß es. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 25 // from: 24.0 27.0
  SAY #35821 /* ~Er zählt an seinen Fingern ab: "Erstens mußt du ein Bürger Sigils sein. Zweitens mußt du einen Beweis über deinen ständigen Wohnsitz hier vorlegen und darüber, daß du Bedienstete unterbringen und verpflegen kannst. Und schließlich darfst du nicht vorbestraft sein."~ */
  IF ~~ THEN REPLY #35903 /* ~"Ich verstehe... Was kostet ihr Vertrag?"~ */ GOTO 26
  IF ~~ THEN REPLY #35904 /* ~"Und wenn ich beweisen kann, daß sie dieser Verbrechen unschuldig angeklagt wird?"~ */ GOTO 28
  IF ~~ THEN REPLY #35905 /* ~"Vergiß es. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 26 // from: 25.0
  SAY #35822 /* ~Er grinst über das ganze Gesicht und weist auf die in der Nähe stehende Menschenmenge. "Ich werde die Versteigerung mit fünfhundert Kupferstücken als Startangebot beginnen, mein Herr."~ */
  IF ~~ THEN REPLY #35906 /* ~"Und wenn ich den vollen Preis für ihren Vertrag gleich bar bezahle?"~ */ GOTO 27
END

IF ~~ THEN BEGIN 27 // from: 26.0
  SAY #35823 /* ~Er wirft dir einen aufgesetzt traurigen Blick zu und schüttelt seinen Kopf. "Sie wird versteigert und geht an den, der am meisten bietet, mein Herr. So will es das Gesetz."~ */
  IF ~~ THEN REPLY #35907 /* ~"Ich verstehe... Was sind die Bedingungen, wenn man einen Sklaven kaufen will?"~ */ GOTO 25
  IF ~~ THEN REPLY #35908 /* ~"Und wenn ich beweisen kann, daß sie dieser Verbrechen unschuldig angeklagt wird?"~ */ GOTO 28
  IF ~~ THEN REPLY #35909 /* ~"Vergiß es. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 28 // from: 25.1 27.1 31.0
  SAY #35824 /* ~Er lacht und sieht dich höhnisch an. "Als Agent der Gerichte könnte ich mit neuen Beweisen vor sie treten und jegliches Urteil gegen Trist widerrufen lassen. Hast du solches Beweismaterial?~ */
  IF ~~ THEN REPLY #35910 /* ~"Im Moment nicht."~ */ GOTO 29
  IF ~  PartyHasItem("LoanDoc")
~ THEN REPLY #35911 /* ~"Ja."~ */ GOTO 33
END

IF ~~ THEN BEGIN 29 // from: 28.0
  SAY #35825 /* ~Er nickt. "Gedenkst du solches Beweismaterial für das Fräulein Trist beschaffen zu wollen?"~ */
  IF ~~ THEN REPLY #35912 /* ~"Ja."~ */ GOTO 30
  IF ~~ THEN REPLY #35913 /* ~"Ich weiß nicht..."~ */ GOTO 32
END

IF ~~ THEN BEGIN 30 // from: 29.0 32.0
  SAY #35826 /* ~Er sieht dich scharf an, um herauszufinden, ob du das ernst meinst. "Also gut... Ich werde Trist für den Moment nicht versteigern, mein Herr. Viel Glück bei deinem Unterfangen. Nun laß mich aber in Ruhe und sieh zu, daß du dich drum kümmerst."~ */
  IF ~~ THEN REPLY #35914 /* ~"Vielen Dank. Leb wohl."~ */ JOURNAL #66524 /* ~Ich habe mit Deran, dem Auktionator, über Trist gesprochen. Ich habe ihm gesagt, daß ich vorhabe, Beweise für ihre Unschuld zu finden, und er hat eingewilligt, sie noch nicht zur Auktion freizugeben.~ */ EXIT
END

IF ~~ THEN BEGIN 31 // from: 23.1
  SAY #35827 /* ~Er seufzt und runzelt dann die Stirn. "Würdest du etwas anderes sagen, wenn du an ihrer Stelle wärst?" Er schüttelt den Kopf. "Ich habe ihre Geschichte gehört, mein Herr. Auch wenn ich Mitleid mit der Dame habe, kann ich ohne Beweismaterial nichts für sie tun."~ */
  IF ~~ THEN REPLY #35915 /* ~"Und wenn ich beweisen kann, daß sie unschuldig ist?"~ */ GOTO 28
END

IF ~~ THEN BEGIN 32 // from: 29.1
  SAY #35797 /* ~Er schüttelt den Kopf. "Dann vergeudest du unser beider Zeit mit dieser Diskussion."
~ */
  IF ~~ THEN REPLY #35916 /* ~"Also, ich will ihr helfen."~ */ GOTO 30
  IF ~~ THEN REPLY #35917 /* ~"Du hast recht, leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 33 // from: 23.2 28.1
  SAY #35798 /* ~Er grinst über das ganze Gesicht und bricht dann in Lachen aus. "Nun gut, dann zeig mir mal dieses Beweismaterial." Er streckt dir seine Hand entgegen.~ */
  IF ~~ THEN REPLY #35918 /* ~Gib ihm den Beleg.~ */ DO ~DestroyItemObject("loandoc",Protagonist,FALSE)
SetGlobal("Trist_Quest","GLOBAL",4)
AddexperienceParty(4000)
~ GOTO 34
  IF ~~ THEN REPLY #35919 /* ~"Vergiß es. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 34 // from: 33.0
  SAY #35799 /* ~Er öffnet das Dokument und überfliegt den Inhalt. Dann seufzt er, faltet den Schuldschein zusammen und steckt ihn unter sein Hemd. "Es sieht so aus, als müßten sich die Gerichte bei der Dame Trist entschuldigen, mein Herr. Von diesem Moment an ist sie frei, und ich werde alle Vorkehrungen treffen, daß sie ihren Status und ihr Eigentum zurückerhält."~ */
  IF ~~ THEN REPLY #35920 /* ~"Danke, Deran."~ */ JOURNAL #66525 /* ~Ich habe Deran Trists Schuldschein gegeben. Er hat zugestimmt, Trist freizulassen und dafür zu sorgen, daß ihr Status wiederhergestellt wird.~ */ GOTO 35
END

IF ~~ THEN BEGIN 35 // from: 34.0
  SAY #35800 /* ~"Nein, dir gebührt Dank. Es gibt selten Menschen, die das tun würden, was du gerade getan hast." Er verneigt sich vor dir. "Entschuldige mich, ich muß mit der Dame Trist sprechen. Leb wohl." Er geht auf Trist zu.~ */
  IF ~~ THEN REPLY #35921 /* ~"Leb wohl."~ */ DO ~FadeToColor([20.0],0)
Wait(3)
FadeFromColor([20.0],0)
Wait(3)
~ EXIT
END
