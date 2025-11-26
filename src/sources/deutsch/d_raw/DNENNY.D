// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DNENNY.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\de_DE\dialog.tlk
// dialogF  : (none)

BEGIN ~DNENNY~

IF ~  Global("Nenny","GLOBAL",0)
~ THEN BEGIN 0 // from:
  SAY #2964 /* ~Diese zierliche, attraktive junge Frau lächelt selig und summt vor sich hin. Ihre großen, hellblauen Augen scheinen ihre Umgebung ständig in sich aufzunehmen, während sie sich umsieht.~ */
  IF ~~ THEN REPLY #2965 /* ~"Sei gegrüßt..."~ */ DO ~SetGlobal("Nenny","GLOBAL",1)
~ GOTO 1
  IF ~~ THEN REPLY #39865 /* ~Laß sie in Ruhe.~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #39866 /* ~Die junge Frau verbeugt sich dankbar und sieht lächelnd zu dir auf. "Wie *schön*, daß wir uns treffen, mein Herr! Ich bin Nenny! Und wie geht es *Euch* an diesem schö-?" Sie bemerkt plötzlich deine Narben und legt eine behandschuhte Hand über ihren Mund. "Oh weh! Ihr seid verletzt!" Sie blinzelt. "Überall!"~ */
  IF ~  NearbyDialog("DMorte")
~ THEN EXTERN ~DMORTE~ 421
  IF ~  !NearbyDialog("DMorte")
HPPercent(Protagonist,100)
~ THEN REPLY #39867 /* ~"Das sind alles alte Narben. Mir geht's gut."~ */ GOTO 2
  IF ~  !NearbyDialog("DMorte")
HPPercentGT(Protagonist,49)
~ THEN REPLY #39868 /* ~"Nur leicht verletzt. Ich bin gleich wieder in Ordnung."~ */ GOTO 2
  IF ~  !NearbyDialog("DMorte")
HPPercentLT(Protagonist,50)
~ THEN REPLY #39869 /* ~"Ja, aber die Wunden heilen wieder in nur kurzer Zeit."~ */ GOTO 2
  IF ~  !NearbyDialog("DMorte")
~ THEN REPLY #39870 /* ~"Kümmer dich nicht drum. Ich hätte da ein paar Fragen..."~ */ GOTO 3
  IF ~  !NearbyDialog("DMorte")
~ THEN REPLY #39871 /* ~"Mach dir darum keine Sorgen. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.1 1.2 1.3
  SAY #39872 /* ~Sie nickt stumm und nimmt ihre Hand herunter.~ */
  IF ~~ THEN REPLY #39873 /* ~"Ich hätte da ein paar Fragen..."~ */ GOTO 5
  IF ~~ THEN REPLY #39874 /* ~"Ich muß jetzt gehen. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 1.4 4.0 7.1 9.2 10.2 11.3 12.2 13.3 14.2 15.1 18.0 19.2 21.0 21.1 22.3 23.1 24.3 25.2 26.0 27.0 28.0 29.1 30.0 31.0 32.0 33.1 35.1 36.1 37.1 38.1 47.0 52.0 53.0 54.0 55.0
  SAY #39875 /* ~"Nur zu, fragt mich!" Sie lächelt benommen.~ */
  IF ~~ THEN REPLY #39876 /* ~"Was machst du hier?"~ */ GOTO 32
  IF ~~ THEN REPLY #39877 /* ~"Kannst du mir etwas über diesen Ort erzählen?"~ */ GOTO 33
  IF ~  Global("Ecco_Speak","GLOBAL",1)
Global("Ecco_Name","AR0605",0)
~ THEN REPLY #39878 /* ~"Was kannst du mir über die schweigsame Prostituierte erzählen?"~ */ DO ~SetGlobal("Ecco_Name","AR0605",1)
SetGlobal("Ecco_Rumor_3","AR0605",1)
~ JOURNAL #66744 /* ~Eine Prostituierten hat gesagt, ich solle Dolora über Ecco, die schweigende Prostituierte, fragen. Sie sagte, daß Dolora manchmal mit einem alten Liebhaber von Ecco spricht, der sie kannte, bevor sie aufhörte zu reden.~ */ GOTO 31
  IF ~  Global("Ecco_Speak","GLOBAL",1)
GlobalGT("Ecco_Name","AR0605",0)
~ THEN REPLY #67847 /* ~"Was kannst du mir über die stumme Hure erzählen?"~ */ DO ~SetGlobal("Ecco_Rumor_3","AR0605",1)
~ JOURNAL #66744 /* ~Eine Prostituierten hat gesagt, ich solle Dolora über Ecco, die schweigende Prostituierte, fragen. Sie sagte, daß Dolora manchmal mit einem alten Liebhaber von Ecco spricht, der sie kannte, bevor sie aufhörte zu reden.~ */ GOTO 31
  IF ~  Global("Know_Kesai_Ravel","AR0605",1)
!Global("Kesai","GLOBAL",3)
~ THEN REPLY #39879 /* ~"Ich hab gehört, Kesai-Serris ist Ravels Tochter. Stimmt das?"~ */ JOURNAL #66743 /* ~Ich habe eine der Prostitierten gefragt, ob sie weiß, ob Kesai-Serris nun wirklich Ravels Tochter ist. Sie hat gesagt, ich solle mit Juliette reden. Anscheinend waren die beiden eng befreundet, bevor Juliette Montague traf.~ */ GOTO 30
  IF ~  Global("Nenny_Hint2","AR0605",2)
~ THEN REPLY #39880 /* ~"Kimasxi hat auch gesagt, daß jemand Sachen aus ihrem Zimmer genommen hat. Hast du irgend etwas Seltsames gesehen?"~ */ DO ~SetGlobal("Nenny_Hint2","AR0605",3)
~ JOURNAL #39526 /* ~Nenny hat mir erzählt, daß sie gesehen hat, wie ein Mann aus der Kammer von Kimasxi Natternzunge rausgeschlichen ist, aber daß sie nicht gesehen hat, daß er das Bordell verlassen hätte. Wenn das der Dieb war, könnte es sein, daß er noch hier ist?~ */ GOTO 54
  IF ~  Global("Scent_Quest","AR0605",1)
Global("Nenny_Angry","AR0605",0)
~ THEN REPLY #39881 /* ~"Ich bin auf der Suche nach Vivians Duft... Weißt du, wo er sein könnte?"~ */ GOTO 34
  IF ~  Global("Nenny_Hint","AR0605",0)
Global("Scent_Quest","AR0605",1)
Global("Nenny_Angry","AR0605",1)
~ THEN REPLY #39882 /* ~"Ich bin auf der Suche nach Vivians Duft... Weißt du, wo er sein könnte?"~ */ DO ~SetGlobal("Nenny_Hint","AR0605",1)
~ JOURNAL #39525 /* ~Nenny hat mir erzählt, daß sie gesehen hat, wie Marissa aus Vivians Kammer rausgeschlichen ist... vielleicht hat sie ja Vivians Duft genommen, oder zumindest eine Idee, wo er sein könnte.~ */ GOTO 52
  IF ~  Global("Veil_Quest","AR0605",1)
Global("Nenny_Angry","AR0605",0)
~ THEN REPLY #39883 /* ~"Ich suche Marissas Purpurschleier... Weißt du, wo er sein könnte?"~ */ GOTO 34
  IF ~  Global("Nenny_Hint2","AR0605",0)
Global("Veil_Quest","AR0605",1)
Global("Nenny_Angry","AR0605",1)
~ THEN REPLY #39884 /* ~"Ich suche Marissas Purpurschleier... Weißt du, wo er sein könnte?"~ */ DO ~SetGlobal("Nenny_Hint2","AR0605",1)
~ JOURNAL #39524 /* ~Nenny hat mir gesagt, daß sie gesehen hat, wie Kimasxi Natternzunge aus Marissas Kammer rausgeschlichen ist... Vielleicht hat sie ja Marissas Purpurschleier genommen, oder zumindest eine Ahnung, wo er sein könnte.~ */ GOTO 53
  IF ~  Global("Know_Ravel","GLOBAL",1)
~ THEN REPLY #39885 /* ~"Weißt du etwas über Ravel Rätselschön?"~ */ JOURNAL #66742 /* ~Ich habe eine der Prostituierten im Bordell über Ravel befragt, und sie hat gesagt, ich solle mit Yves darüber sprechen. Yves scheint Geschichten jeglicher Art zu sammeln, und es ist wahrscheinlich, daß sie in ihrem Repertoire auch eine über Ravel hat.~ */ GOTO 4
  IF ~~ THEN REPLY #39886 /* ~"Vergiß es. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 3.10
  SAY #39887 /* ~"Nein, tut mir leid. Aber das ist ein *großartiger* Name, was? Ich wette, sie ist eine wirklich interessante Person! Hey... Du sollte Yves nach ihr fragen. Yves sammelt *alle möglichen* Geschichten!"~ */
  IF ~~ THEN REPLY #39888 /* ~"Sicher. Ich hätte da noch eine Frage..."~ */ GOTO 3
  IF ~~ THEN REPLY #39889 /* ~"Das ist alles, was ich wissen wollte. Leb wohl, Nenny."~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 2.0
  SAY #39890 /* ~"Hä?" Sie scheint ihre Augen nicht von deinen Narben lösen zu können. "Oh, was für ein schändliches Benehmen meinerseits! Bitte seid nicht beleidigt, daß ich so unverschämt starre. Ich heiße Nenny." Sie macht einen leichten Knicks. "Und es ist mir eine große Freude, Euch in unserem Bordell zum Befriedigen Intellektueller Lüste willkommen zu heißen." Sie starrt von neuem deinen Körper an. "Und unter all den Narben habt Ihr auch noch Tätowierungen! Was ist das denn für eine?" Sie zeigt auf eine deiner Tätowierungen.~ */
  IF ~~ THEN REPLY #39891 /* ~"Das ist-"~ */ GOTO 6
  IF ~~ THEN REPLY #39892 /* ~"Kümmer dich nicht drum, ich-"~ */ GOTO 6
END

IF ~~ THEN BEGIN 6 // from: 5.0 5.1
  SAY #39893 /* ~"Sieht faszinierend aus! Seht mal, wie die Tintenlinien... Ich glaube jedenfalls, daß das Tinte ist..." Sie schielt die Tätowierung an und streckt dann die Hand aus, um sie zu berühren.~ */
  IF ~~ THEN REPLY #39894 /* ~Erlaube ihr, dich zu berühren.~ */ GOTO 7
  IF ~~ THEN REPLY #39895 /* ~Laß nicht zu, daß sie dich berührt.~ */ GOTO 8
END

IF ~~ THEN BEGIN 7 // from: 6.0
  SAY #39896 /* ~"Ich *glaube*, das ist Tinte." Sie fährt mit dem Finger an den Rändern der Tätowierung entlang. "Ist das Tinte? Und was für ein Muster! Seht mal, wie die Linien sich hier kreuzen." Sie berührt die Mitte der Tätowierung. "Das ist einfach erstaunlich..." Sie spitzt die Lippen und runzelt enttäuscht die Stirn. "Ich könnte es viel besser erkennen, wenn da nicht so viele Narben wären..."~ */
  IF ~~ THEN REPLY #39897 /* ~"Bei den Narben kann man nichts machen. Die sind dauerhaft."~ */ GOTO 10
  IF ~~ THEN REPLY #39898 /* ~"Ich hätte da ein paar Fragen..."~ */ GOTO 3
  IF ~~ THEN REPLY #39899 /* ~"Ich werde jetzt gehen. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 8 // from: 6.1
  SAY #39900 /* ~Nenny schaut zu dir auf, als du sie daran hinderst, deine Haut zu berühren. "Tut mir leid, tut mir leid, guter Herr! Ich hab es nicht böse gemeint, ich wollte nur die Linien der Tätowierung nachziehen, um ein Gefühl für das Muster zu bekommen. Es ist unheimlich faszinierend!" Sie schmollt einen Augenblick lang und schlägt sich dann leicht an den Kopf. "Zu dreist! Ich bin zu dreist! Ich bitte vielmals um Entschuldigung, guter Herr! Bitte seid mir nicht böse!"~ */
  IF ~  NearbyDialog("DMorte")
~ THEN EXTERN ~DMORTE~ 422
  IF ~  !NearbyDialog("DMorte")
~ THEN REPLY #39901 /* ~"Kein Problem."~ */ GOTO 9
  IF ~  !NearbyDialog("DMorte")
~ THEN REPLY #39902 /* ~"Sie zu, daß das nicht wieder passiert."~ */ GOTO 9
END

IF ~~ THEN BEGIN 9 // from: 8.1 8.2
  SAY #39903 /* ~Nenny nickt und lächelt dich dann süß an. "Es tut mir leid, es tut mir leid... Aber ich *muß* es wissen... Seid Ihr absolut *sicher*, daß es Euch gut geht? Wenn ich Euch ansehe, kann ich mich des Gefühls nicht erwehren, daß Ihr *irgendwelche* Schmerzen habt."~ */
  IF ~~ THEN REPLY #39904 /* ~"Tja, jedenfalls keine physischen Schmerzen."~ */ GOTO 11
  IF ~~ THEN REPLY #39905 /* ~"Ich leide unter Amnesie, aber das ist alles."~ */ GOTO 20
  IF ~~ THEN REPLY #39906 /* ~"Vergiß es. Ich hätte da ein paar Fragen..."~ */ GOTO 3
  IF ~~ THEN REPLY #39907 /* ~"Mach dir darum keine Sorgen. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 10 // from: 7.0
  SAY #39908 /* ~"Oh, es tut mir leid, es tut mir so leid... Die Pocken sollen mich holen, daß ich sie erwähnt habe!" Sie schreckt zurück. "Aber ich *muß* es wissen... Seid Ihr wirklich absolut *sicher*, daß alles mit Euch in Ordnung ist? Wenn ich Euch so ansehen, kann ich mich des Gefühls nicht erwehren, daß Ihr *irgendwelche* Schmerzen habt."~ */
  IF ~~ THEN REPLY #39909 /* ~"Tja, jedenfalls keine physischen Schmerzen."~ */ GOTO 11
  IF ~~ THEN REPLY #39910 /* ~"Ich leide unter Amnesie, aber das ist alles."~ */ GOTO 20
  IF ~~ THEN REPLY #39911 /* ~"Vergiß es. Ich hätte da ein paar Fragen..."~ */ GOTO 3
  IF ~~ THEN REPLY #39912 /* ~"Mach dir darum keine Sorgen. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 11 // from: 9.0 10.0
  SAY #39913 /* ~"Oh! Habt Ihr innere Verletzungen? Im Kopf?" Sie faltet eifrig die Hände. "Vielleicht kann ich ja helfen! Tatsächlich weiß ich, daß ich das kann! Ein Teil der Ausbildung eines Sinnsaten ist dem Erlernen des Linderns von Schmerzen anderer gewidmet. Meine Meisterin sagt, ein Sinnsat kann Schmerzen aus einer Wunde ziehen und sie auf sich selbst lenken... Aber nichtdestotrotz *kann* ich helfen! Darf ich es versuchen?! Bitte sagt ja!"~ */
  IF ~~ THEN REPLY #39914 /* ~"Sinnsate?"~ */ GOTO 26
  IF ~~ THEN REPLY #39915 /* ~"Ja, tu das doch bitte."~ */ GOTO 16
  IF ~~ THEN REPLY #39916 /* ~"Deine Meisterin?"~ */ GOTO 12
  IF ~~ THEN REPLY #39917 /* ~"Nein. Ich hätte da ein paar Fragen..."~ */ GOTO 3
  IF ~~ THEN REPLY #39918 /* ~"Nein, ich habe keine Schmerzen. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 12 // from: 11.2
  SAY #39919 /* ~"Oh, ja", sagt Nenny fröhlich. "Meisterin Grace. Sie ist die wundervollste Person, die ich je kennengelernt habe!"~ */
  IF ~~ THEN REPLY #39920 /* ~"Erzähl mir was über Meisterin Grace."~ */ GOTO 13
  IF ~~ THEN REPLY #39921 /* ~"Ich verstehe. Na, dann mach mal, versuch, mir zu helfen."~ */ GOTO 16
  IF ~~ THEN REPLY #39922 /* ~"Ich brauche deine Hilfe wirklich nicht, aber ich hätte da ein paar Fragen..."~ */ GOTO 3
  IF ~~ THEN REPLY #39923 /* ~"Ach so. Aber ich brauche deine Hilfe eigentlich nicht. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 13 // from: 12.0
  SAY #39924 /* ~"Sie ist so schön, nicht wahr? Es ist so schwer zu glauben, daß sie von den Unteren Ebenen stammt, wo sie doch so nett und klug ist!"~ */
  IF ~  NearbyDialog("DGrace")
~ THEN GOTO 14
  IF ~  !NearbyDialog("DGrace")
~ THEN REPLY #39925 /* ~"Was haben denn die Unteren Ebenen damit zu tun?"~ */ GOTO 15
  IF ~  !NearbyDialog("DGrace")
~ THEN REPLY #39926 /* ~"Ich verstehe. Na, dann mach mal, versuch, mir zu helfen."~ */ GOTO 16
  IF ~  !NearbyDialog("DGrace")
~ THEN REPLY #39927 /* ~"Ich brauche deine Hilfe wirklich nicht, aber ich hätte da ein paar Fragen..."~ */ GOTO 3
  IF ~  !NearbyDialog("DGrace")
~ THEN REPLY #39928 /* ~"Ach so. Aber ich brauche deine Hilfe eigentlich nicht. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 14 // from: 13.0
  SAY #39929 /* ~Nenny bemerkt plötzlich Grace, die Gefallene, neben dir. "Oh! Meisterin Grace!" Sie verbeugt sich. Grace nickt daraufhin lächelnd.~ */
  IF ~~ THEN REPLY #39930 /* ~"Was haben denn die Unteren Ebenen damit zu tun?"~ */ GOTO 15
  IF ~~ THEN REPLY #39931 /* ~"Ich verstehe. Na, dann mach mal, versuch, mir zu helfen."~ */ GOTO 16
  IF ~~ THEN REPLY #39932 /* ~"Ich brauche deine Hilfe wirklich nicht, aber ich hätte da ein paar Fragen..."~ */ GOTO 3
  IF ~~ THEN REPLY #39933 /* ~"Ach so. Aber ich brauche deine Hilfe eigentlich nicht. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 15 // from: 13.1 14.0
  SAY #39934 /* ~"Na ja, die sind alle so *böse* da unten. Wer hätte gedacht, daß Meisterin Grace von einem solchen Ort stammen könnte?"~ */
  IF ~~ THEN REPLY #39935 /* ~"Ich verstehe. Na, dann mach mal, versuch, mir zu helfen."~ */ GOTO 16
  IF ~~ THEN REPLY #39936 /* ~"Ich brauche deine Hilfe wirklich nicht, aber ich hätte da ein paar Fragen..."~ */ GOTO 3
  IF ~~ THEN REPLY #39937 /* ~"Ach so. Aber ich brauche deine Hilfe eigentlich nicht. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 16 // from: 11.1 12.1 13.2 14.1 15.0
  SAY #39938 /* ~Nenny faltet die Hände und legt sie leicht auf deine Stirn.~ */
  IF ~  HPPercent(Protagonist,100)
~ THEN REPLY #39939 /* ~Erlaub ihr, dich zu berühren.~ */ GOTO 17
  IF ~  HPPercentLT(Protagonist,100)
~ THEN REPLY #39940 /* ~Erlaub ihr, dich zu berühren.~ */ DO ~Damage(Protagonist,RAISE,1)
~ GOTO 17
  IF ~~ THEN REPLY #39941 /* ~Laß nicht zu, daß sie dich berührt.~ */ GOTO 19
END

IF ~~ THEN BEGIN 17 // from: 16.0 16.1 19.1 29.0
  SAY #39942 /* ~Als sie näherkommt, bemerkst du, daß Nennys Haut leicht mit Fliederduft parfümiert ist. Sie legt ihre behandschuhten Hände leicht auf deine Stirn und schließt die Augen. Sie summt vor sich hin, und du fühlst, wie eine leichte Wärme sich in deinem ganzen Körper ausbreitet.~ */
  IF ~~ THEN REPLY #39943 /* ~"Äh... Danke. Das hat sich gut angefühlt."~ */ GOTO 18
END

IF ~~ THEN BEGIN 18 // from: 17.0
  SAY #39944 /* ~"Sicher! Ich bin so froh, daß ich Euch helfen konnte!" Nenny strahlt dich an. Sie sieht so aus, als könnte sie vor Freude bersten.~ */
  IF ~~ THEN REPLY #39945 /* ~"Ich hätte da eine Frage..."~ */ GOTO 3
  IF ~~ THEN REPLY #39946 /* ~"Ich muß jetzt gehen. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 19 // from: 16.2
  SAY #39947 /* ~Nenny erstarrt mit einem überraschten Gesichtsausdruck und sieht dann etwas verletzt aus. "Es tut mir leid! So leid! Mögt Ihr es nicht, berührt zu werden? Ich hätte es Euch sagen sollen! So funktioniert das 'Gesundheit verleihen'... Ich lege meine Hand auf Euren Körper - in der Regel in der Nähe der Wunde, um die Kraft besser konzentrieren zu können - und dann ziehe ich den Schmerz heraus."~ */
  IF ~~ THEN REPLY #39948 /* ~"Gesundheit verleihen...?"~ */ GOTO 29
  IF ~~ THEN REPLY #39949 /* ~"Das ist in Ordnung. Dann mach mal."~ */ GOTO 17
  IF ~~ THEN REPLY #39950 /* ~"Ich hätte da eine Frage..."~ */ GOTO 3
  IF ~~ THEN REPLY #39951 /* ~"Ich muß jetzt gehen. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 20 // from: 9.1 10.1
  SAY #39952 /* ~"Amnesie?" Nenny blinzelt, und dann hellt sich ihr Blick auf. "Gedächtnisverlust! Ihr habt ja *so* ein Glück", zirpt sie munter. "Alles muß so *neu* für Euch sein."~ */
  IF ~~ THEN REPLY #39953 /* ~"Das ist wohl wahr, aber daß alles neu ist... Das ist mir nicht gerade willkommen."~ */ GOTO 21
  IF ~~ THEN REPLY #39954 /* ~"Daraus mache ich mir wenig."~ */ GOTO 22
  IF ~~ THEN REPLY #39955 /* ~"Das ist... ein Aspekt, den ich mir noch gar nicht überlegt hatte."~ */ GOTO 23
  IF ~~ THEN REPLY #39956 /* ~"Ich würde es eigentlich vorziehen, wenn mir ein paar Dinge viel vertrauter wären."~ */ GOTO 24
END

IF ~~ THEN BEGIN 21 // from: 20.0
  SAY #39957 /* ~Sie blinzelt. "Das klingt so *traurig*."~ */
  IF ~~ THEN REPLY #39958 /* ~"Ja, das ist es... Aber ich hatte da noch ein paar Fragen..."~ */ GOTO 3
  IF ~~ THEN REPLY #39959 /* ~"Eigentlich nicht. Ich hätte da ein paar Fragen..."~ */ GOTO 3
  IF ~~ THEN REPLY #39960 /* ~"Vielleicht... Wie auch immer, leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 22 // from: 20.1
  SAY #39961 /* ~"Wirklich? Warum?"~ */
  IF ~~ THEN REPLY #39962 /* ~"Tja, das ist nun mal so. Wie erklärt man ein Gefühl?"~ */ GOTO 25
  IF ~~ THEN REPLY #39963 /* ~"Ich mag es nicht, Erinnerungen zu verlieren, und der Tod ist keine angenehme Erfahrung."~ */ GOTO 28
  IF ~~ THEN REPLY #39964 /* ~"Ohne ein Fundament, auf dem ich bauen könnte - oder einer Idee, wer ich sein könnte - kann ich keine Fortschritte machen."~ */ GOTO 28
  IF ~~ THEN REPLY #39965 /* ~"Einfach... Ach, vergiß es. Ich hätte da eine Frage..."~ */ GOTO 3
  IF ~~ THEN REPLY #39966 /* ~"Ich möchte nicht mehr darüber sprechen. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 23 // from: 20.2
  SAY #39967 /* ~Nenny faltet entzückt ihre Hände. "Ich bin so froh, daß ich Euch für diese Idee empfänglich machen konnte! Ich habe gehört, daß das der Sinn und Zweck des Sinnsatendaseins ist - anderen neue Erfahrungen nahezubringen."~ */
  IF ~~ THEN REPLY #39968 /* ~"Sinnsate?"~ */ GOTO 26
  IF ~~ THEN REPLY #39969 /* ~"Ich hätte da ein paar Fragen..."~ */ GOTO 3
  IF ~~ THEN REPLY #39970 /* ~"Ich muß jetzt gehen. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 24 // from: 20.3
  SAY #39971 /* ~"Wie wer?" Sie lächelt und kichert dann über sich selbst. "Ich meine natürlich wie was?"~ */
  IF ~  GlobalGT("Know_Player_Killer","GLOBAL",0)
~ THEN REPLY #39972 /* ~"Mein Mörder zum Beispiel."~ */ GOTO 28
  IF ~  NearbyDialog("Dmorte")
~ THEN REPLY #39973 /* ~"Nicht Morte. Der ist mir zu vertraut."~ */ EXTERN ~DMORTE~ 424
  IF ~  CheckStatGT(Protagonist,15,INT)
~ THEN REPLY #39974 /* ~"Ich würde gern wissen, ob ich einen meiner Begleiter schon früher gekannt habe."~ */ GOTO 28
  IF ~~ THEN REPLY #39975 /* ~"Einfach... Ach, vergiß es. Ich hätte da eine Frage..."~ */ GOTO 3
  IF ~~ THEN REPLY #39976 /* ~"Ich möchte nicht mehr darüber sprechen. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 25 // from: 22.0
  SAY #39977 /* ~"Oh, das kann man versuchen!" sagt Nenny fröhlich. "Versucht es! Na macht schon, ich weiß, daß Ihr es könnt."~ */
  IF ~~ THEN REPLY #39978 /* ~"Ich mag es nicht, Erinnerungen zu verlieren, und der Tod ist keine angenehme Erfahrung."~ */ GOTO 28
  IF ~~ THEN REPLY #39979 /* ~"Ohne ein Fundament, auf dem ich bauen könnte - oder einer Idee, wer ich sein könnte - kann ich keine Fortschritte machen."~ */ GOTO 28
  IF ~~ THEN REPLY #39980 /* ~"Einfach... Ach, vergiß es. Ich hätte da eine Frage..."~ */ GOTO 3
  IF ~~ THEN REPLY #39981 /* ~"Ich möchte nicht mehr darüber sprechen. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 26 // from: 11.0 23.0
  SAY #39982 /* ~"Sinnsaten! Oh, die sind so *verträumt*. Sie glauben, daß man Verständnis erreichen kann, indem man einfach nur so viel Erfahrungen wie möglich im Multiversum sammelt! Koste dies, hör dem zu, fühle dies, sieh dir das an... Und es gibt *so* viel da draußen, und es ist ein *so* großer Ort, daß es manchmal richtig schwierig ist, alles aufzunehmen."~ */
  IF ~~ THEN REPLY #39983 /* ~"Ich hätte da noch ein paar Fragen."~ */ GOTO 3
  IF ~~ THEN REPLY #39984 /* ~"Mehr wollt' ich gar nicht wissen. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 27 // from:
  SAY #39985 /* ~Nenny kichert.~ */
  IF ~~ THEN REPLY #39986 /* ~"Ich hätte da ein paar Fragen..."~ */ GOTO 3
  IF ~~ THEN REPLY #39987 /* ~"Leb wohl, Nenny."~ */ EXIT
END

IF ~~ THEN BEGIN 28 // from: 22.1 22.2 24.0 24.2 25.0 25.1
  SAY #39988 /* ~"Häh." Nenny runzelt ihre Stirn und denkt hart nach. "Ich glaube, das kann ich verstehen. Ich wünschte wirklich, ich könnte helfen!"~ */
  IF ~~ THEN REPLY #39989 /* ~"Tja, du *könntest* mir eine Frage beantworten..."~ */ GOTO 3
  IF ~~ THEN REPLY #39990 /* ~"Ich auch. Leb wohl, Nenny..."~ */ EXIT
END

IF ~~ THEN BEGIN 29 // from: 19.0
  SAY #39991 /* ~"Ja! Alle Sinnsaten können das tun, aber ich bin noch nicht ganz ein Sinnsat, also bin ich auch nicht sehr gut darin. Wenn ich es richtig hinbekomme, werde ich auch den Schmerz von anderen Leuten weg- und auf mich selbst nehmen können und ihnen so helfen können und das alles!"~ */
  IF ~~ THEN REPLY #39992 /* ~"Na, dann mach mal."~ */ GOTO 17
  IF ~~ THEN REPLY #39993 /* ~"Ich hätte da eine Frage..."~ */ GOTO 3
  IF ~~ THEN REPLY #39994 /* ~"Ich muß jetzt gehen. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 30 // from: 3.4
  SAY #39995 /* ~"Keine Ahnung! Tut mir leid. Hmmm. Vielleicht könntest du Juliette fragen. Sie und Kesai waren mal richtig gute Freundinnen. Dann ist Juliette Montague begegnet, und jetzt reden sie nicht mehr so viel miteinander."~ */
  IF ~~ THEN REPLY #39996 /* ~"Ich hätte da noch eine Frage, Nenny..."~ */ GOTO 3
  IF ~~ THEN REPLY #39997 /* ~"Mehr wollt' ich gar nicht wissen. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 31 // from: 3.2 3.3
  SAY #39998 /* ~"Oh, Ecco! Ja, sie ist eine mysteriöse Person, *nicht wahr*?! Weißt du, daß sie nie spricht? Wirklich!" Nenny lehnt sich vor und senkt die Stimme. "Ich glaube, jemand hat ihre Gefühle verletzt, so sehr, daß sie vielleicht nie wieder spricht! Ich wette, Dolora weiß es, weil sie manchmal mit dem letzten Geliebten redet, den Ecco hatte, als sie noch gesprochen hat!"~ */
  IF ~~ THEN REPLY #39999 /* ~"Ich hätte da noch eine Frage, Nenny..."~ */ GOTO 3
  IF ~~ THEN REPLY #40000 /* ~"Mehr wollt' ich gar nicht wissen. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 32 // from: 3.0
  SAY #40001 /* ~"Ich spreche mit *Euch*, Dummkopf!" Sie kichert und piekst dir in den Bauch. "Wie ich mit *allen* Gästen hier spreche. Alle Prostituierten tun das. Darum geht es hier im Bordell! Neue Wege des Redens kennenlernen, und Erfahrungen teilen, und andere Leute verstehen."~ */
  IF ~~ THEN REPLY #40002 /* ~"Ich hätte da noch eine Frage, Nenny..."~ */ GOTO 3
  IF ~~ THEN REPLY #40003 /* ~"Mehr wollt' ich gar nicht wissen. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 33 // from: 3.1
  SAY #40004 /* ~"Äm... Natürlich kann ich das! Das Bordell zum Befriedigen Intellektueller Lüste ist eine Schule, die von Meisterin Grace, der Gefallenen, eröffnet wurde. Die Prostituierten hier - wie ich zum Beispiel! - werden die Feinheiten gelehrt, wie man mit Leuten redet, und das alles, um uns zu helfen, mehr über uns selbst zu erfahren, und ich liebe es einfach hier... Es ist eine niemals endende Woge der Erfahrungen, die über mich hereinbricht und meinen Kopf mit frischen und neuen Ideen füllt!"~ */
  IF ~  NearbyDialog("DMorte")
~ THEN EXTERN ~DMORTE~ 425
  IF ~  !NearbyDialog("DMorte")
~ THEN REPLY #40006 /* ~"Ich hätte da noch eine Frage, Nenny..."~ */ GOTO 3
  IF ~  !NearbyDialog("DMorte")
~ THEN REPLY #40007 /* ~"Mehr wollt' ich gar nicht wissen. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 34 // from: 3.6 3.8
  SAY #40008 /* ~"Hmm." Nenny runzelt tief die Stirn. "Ich... äh..."~ */
  IF ~~ THEN REPLY #40009 /* ~"Was?"~ */ GOTO 35
END

IF ~~ THEN BEGIN 35 // from: 34.0
  SAY #40010 /* ~"Oh, das kann ich einfach nicht! Ich kann einfach nichts Schlechtes über irgend jemanden sagen! In so etwas bin ich einfach nicht gut!"~ */
  IF ~~ THEN REPLY #40011 /* ~"Es ist nichts Schlechtes, einen Dieb zu entlarven, Nenny."~ */ GOTO 36
  IF ~~ THEN REPLY #40012 /* ~"Vergiß es... Ich hätte da noch eine Frage."~ */ GOTO 3
  IF ~~ THEN REPLY #40013 /* ~"Ach, ist nicht so wichtig, Nenny. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 36 // from: 35.0
  SAY #40014 /* ~"Oh, aber ich weiß nicht, ob sie ein Dieb ist..." Nenny beißt sich auf die Lippe und sieht dich mit bettelnden Augen an, als ob sie sich einfach nur wünscht, das Thema fallenzulassen.~ */
  IF ~~ THEN REPLY #40015 /* ~"Hör mal, warum *versuchst* du nicht einfach, etwas über sie zu sagen, das nicht nett ist."~ */ GOTO 37
  IF ~~ THEN REPLY #40016 /* ~"Vergiß es... Ich hätte da noch eine Frage."~ */ GOTO 3
  IF ~~ THEN REPLY #40017 /* ~"Ach, ist nicht so wichtig, Nenny. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 37 // from: 36.0
  SAY #40018 /* ~"Oh, also gut." Nenny stemmt ihre Hände in ihre Hüften und runzelt tief die Stirn, beinahe übertrieben. Du widerstehst der Versuchung zu lachen. "Ooooooh, ich mag sie wirklich *überhaupt* nicht." Sie hält einen Augenblick lang inne und sieht dich dann aus dem Augenwinkel an, als ob sie deine Reaktion abschätzen möchte. "War das überzeugend?"~ */
  IF ~~ THEN REPLY #40019 /* ~"Nein, nicht wirklich..."~ */ GOTO 38
  IF ~~ THEN REPLY #40020 /* ~"Nein. Vergiß es einfach... Ich hätte da noch eine Frage."~ */ GOTO 3
  IF ~~ THEN REPLY #40021 /* ~"Ach, ist nicht so wichtig, Nenny. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 38 // from: 37.0
  SAY #40022 /* ~Nenny runzelt die Stirn. "Ich wußte doch, daß ich darin nicht gut sein würde!" Sie sieht deprimiert zu dir auf. "Weißt du eigentlich wie *schwer* es ist, schlechte Dinge über jemanden zu sagen?! Es fühlt sich so falsch an."~ */
  IF ~~ THEN REPLY #40023 /* ~"Warum übst du es nicht einfach an mir, Nenny?"~ */ GOTO 39
  IF ~~ THEN REPLY #40024 /* ~"Vergiß es... Ich hätte da noch eine Frage."~ */ GOTO 3
  IF ~~ THEN REPLY #40025 /* ~"Ach, ist nicht so wichtig, Nenny. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 39 // from: 38.0
  SAY #40026 /* ~"Ich denke, ich könnte es mal versuchen..." Sie wirkt mißtrauisch. "Du gemeiner und gefühlloser Bastard!" Sie stemmt ihre Hände in die Hüften. "Gemeini!" Sie sieht sich an. "Wie war das?"~ */
  IF ~~ THEN REPLY #40027 /* ~"Du solltest 'Bastard' mehr betonen."~ */ GOTO 40
  IF ~~ THEN REPLY #40028 /* ~"Versuch mal, mich zu schlagen."~ */ GOTO 41
END

IF ~~ THEN BEGIN 40 // from: 39.0
  SAY #40029 /* ~"Du gemeiner und gefühlloser *Bastard*!"~ */
  IF ~~ THEN REPLY #40030 /* ~"Besser. Und jetzt schlag mich."~ */ GOTO 41
END

IF ~~ THEN BEGIN 41 // from: 39.1 40.0
  SAY #40031 /* ~Nenny schlägt sich die Hände vor den Mund und sieht dich schockiert an. "Oh, das könnte ich nicht! Das darf ich nicht!" Sie blinzelt dich an. "Und außerdem, wie schlägt man eigentlich jemanden?"~ */
  IF ~~ THEN REPLY #40032 /* ~"Mach schon. Schlag nur leicht zu, wenn du unbedingt mußt. Und denk dran: Ich bin ein gemeine und gefühlloser Bastard. Ich verdiene es."~ */ DO ~SetAnimState("Nenny",ANIM_MIMEATTACK1)
~ GOTO 42
END

IF ~~ THEN BEGIN 42 // from: 41.0
  SAY #40033 /* ~Nenny schlägt dich, und du spürst es kaum. Sie sieht immer noch schockiert und ängstlich aus, daß sie dir wehgetan haben könnte. "Oh, es tut mir leid! Hat das wehgetan? Sagt mir, daß alles in Ordnung ist!"~ */
  IF ~~ THEN REPLY #40034 /* ~"Jetzt fall nicht aus der Rolle, Nenny. Komm schon, zeig mir, was du hast. Du kannst etwas Schlechtest sagen... Laß es einfach alles raus."~ */ GOTO 43
  IF ~~ THEN REPLY #40035 /* ~"Au! Verdammt, ich bin noch nie so heftig geschlagen worden!"~ */ GOTO 49
END

IF ~~ THEN BEGIN 43 // from: 42.0
  SAY #40036 /* ~"Oh... Ich meine, oh!" Nenny streckt ihre kleine Figur zu voller Größe, ballt ihre Hände zu Fäusten, stemmt sie sich in die Hüften und verzieht ihr Gesicht zu einer süßen bösen Miene. "Oh, verdammt nochmal! Das hast du verdient für all die unwürdigen Dinge, die du mir zugemutet hast! Spät abends ausgehen." Ihre Augen wandern über deinen Körper. "Sich in Schlägereien verwickeln lassen und völlig vernarbt nach Hause kommen! Was sollen die Kinder nur von dir denken, hmm?!"~ */
  IF ~~ THEN REPLY #40037 /* ~"Ausgezeichnet."~ */ GOTO 44
  IF ~~ THEN REPLY #40038 /* ~"Äh... Kinder?"~ */ GOTO 48
END

IF ~~ THEN BEGIN 44 // from: 43.0 51.0
  SAY #40039 /* ~"Oh, komm mir nicht mit 'ausgezeichnet', als ob ich so ein Popoknutscher wäre, der nur auf deine Anerkennung wartet! Ich bin meine eigene Frau, und diese Frau wird gleich aus deinem Leben verschwinden, wenn ich nicht ein bißchen Einsatz von dir bekomme!"~ */
  IF ~~ THEN REPLY #40040 /* ~"Schön... Das ist jetzt genug, Nenny."~ */ DO ~SetAnimState("Nenny",ANIM_MIMEATTACK2)
~ GOTO 45
  IF ~~ THEN REPLY #40041 /* ~"Eh... Beruhige dich. Es ist Zeit, die Wut wieder unter Kontrolle zu bekommen."~ */ GOTO 46
END

IF ~~ THEN BEGIN 45 // from: 44.0
  SAY #40042 /* ~Nenny schlägt dich. Du fühlst es kaum. "Nimm dies." Sie schlägt dich nochmals. "Und das!" Sie schlägt dich wieder und wird plötzlich zu einem kleinen, fäusteschwingenden Wirbelwind. ~ */
  IF ~~ THEN REPLY #40043 /* ~"Okay, okay... Es ist Zeit, die Wut wieder unter Kontrolle zu bekommen."~ */ GOTO 46
END

IF ~~ THEN BEGIN 46 // from: 44.1 45.0 48.0
  SAY #40044 /* ~Nenny seufzt müde. "Puh. Das war einfacher, als ich dachte!"~ */
  IF ~~ THEN REPLY #40045 /* ~"Sag bloß."~ */ DO ~SetGlobal("Nenny_Angry","AR0605",1)
AddexperienceParty(5000)
~ GOTO 47
END

IF ~~ THEN BEGIN 47 // from: 46.0
  SAY #40046 /* ~"Und ich bin sicher, daß ich beim nächsten Mal besser bin! Ich freue mich so, daß ich etwas Neues gelernt habe... Danke!"~ */
  IF ~~ THEN REPLY #40047 /* ~"Sicher. Jetzt hätte ich eine Frage..."~ */ GOTO 3
  IF ~~ THEN REPLY #66337 /* ~"Kein Problem. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 48 // from: 43.1
  SAY #40048 /* ~"Was?!" Nennys Wut erhitzt sich noch um einige Grade. "Hast du etwa unsere Kinder vergessen?! Bist du so besoffen, daß du dich nicht einmal daran erinnern kannst, daß wir *Kinder* haben?!" Nenny wirft verzweifelt ihre Hände in die Luft. "Du bist hoffnungslos, ahnungslos und noch ein paar 'lose', die ich jetzt mal nicht erwähnen möchte."~ */
  IF ~~ THEN REPLY #40049 /* ~"Eh... Beruhige dich. Es ist Zeit, die Wut wieder unter Kontrolle zu bekommen."~ */ GOTO 46
END

IF ~~ THEN BEGIN 49 // from: 42.1
  SAY #40050 /* ~Nennys Augen öffnen sich noch weiter, als du dich in vorgetäuschtem Schmerz windest. "Oh, meine Güte! Oh, ich wollte Euch nicht so fest schlagen! Es tut mir leid! So leid!"~ */
  IF ~~ THEN REPLY #40051 /* ~"Sag nie, daß es dir leid tut. Sag 'Gewöhn dich besser dran'."~ */ GOTO 50
END

IF ~~ THEN BEGIN 50 // from: 49.0
  SAY #40052 /* ~Nenny sieht zu dir auf. "Oh... Äh, gewöhn dich besser dran."~ */
  IF ~~ THEN REPLY #40053 /* ~"Und runzle die Stirn, wenn du das sagst. Sag es streng, mit Überzeugung."~ */ GOTO 51
END

IF ~~ THEN BEGIN 51 // from: 50.0
  SAY #40054 /* ~Nenny streckt ihre kleine Figur zu voller Größe, ballt ihre Hände zu Fäusten, stemmt sie sich in die Hüften und verzieht ihr Gesicht zu einer süßen bösen Miene. "Gewöhn dich besser dran!"~ */
  IF ~~ THEN REPLY #40055 /* ~"Ausgezeichnet."~ */ GOTO 44
END

IF ~~ THEN BEGIN 52 // from: 3.7
  SAY #40056 /* ~"Vielleicht... Ich habe diese gemeine, fiese Marissa eines Nachts aus Vivians Zimmer schleichen sehen. Ich sage nicht, daß sie es genommen hat, aber ich weiß, daß Marissa nicht besonders nett ist, und das macht sie schon verdächtig, oder? Ich würde sie mal drauf ansprechen." Nenny nickt dir zu.~ */
  IF ~~ THEN REPLY #40057 /* ~"Danke, Nenny. Ich hätte da noch eine Frage..."~ */ GOTO 3
  IF ~~ THEN REPLY #40058 /* ~"Das ist alles, was ich wissen wollte. Leb wohl, Nenny."~ */ EXIT
END

IF ~~ THEN BEGIN 53 // from: 3.9
  SAY #40059 /* ~"Und ob ich das weiß! Ich habe diese fiese Kimasxi Natternzunge gesehen, wie sie sich aus Marissas Zimmer geschlichen hat. Das sind beide Gemeinis, weißt du, aber Kimasxi ist wirklich schrecklich! Auf jeden Fall würde ich erst mit ihr reden."~ */
  IF ~~ THEN REPLY #40060 /* ~"Danke, Nenny. Ich hätte da noch eine Frage..."~ */ GOTO 3
  IF ~~ THEN REPLY #40061 /* ~"Das ist alles, was ich wissen wollte. Leb wohl, Nenny."~ */ EXIT
END

IF ~~ THEN BEGIN 54 // from: 3.5
  SAY #40062 /* ~Nennys Augen weiten sich ganz plötzlich. "Oh! Das ist richtig! Wißt Ihr, einmal hab ich gesehen, wie ein Mann sich aus Kimasxis Zimmer geschlichen hat, während sie draußen war und mit einem Gast gesprochen hat... Ich habe die Haustüren den ganzen Tag lang beobachtet, aber er ist nie gegangen! Ist das nicht seltsam? Ich glaube nicht, daß er durch ein Fenster hätte hinausgelangen können, also habe ich nie herausgefunden, wo er hingegangen ist. Komisch, was?"~ */
  IF ~~ THEN REPLY #40063 /* ~"Ja, das ist es... Ich hätte da noch eine Frage..."~ */ GOTO 3
  IF ~~ THEN REPLY #40064 /* ~"Das ist es. Leb wohl, Nenny."~ */ EXIT
END

IF ~  Global("Nenny","GLOBAL",1)
~ THEN BEGIN 55 // from:
  SAY #40065 /* ~"Wie *schön*, Euch zu sehen, mein Herr! Ich bin Nenny! Und wie geht es *Euch* an diesem schönen T-? Oh! Wir haben uns schon einmal getroffen!" Nenny kichert und lächelt dich fröhlich an. "Es tut mir leid! Ich *wußte* doch gleich, daß Ihr mir irgendwie bekannt vorgekommen seid..."~ */
  IF ~~ THEN REPLY #40066 /* ~"Das ist schon in Ordnung, Nenny. Ich hätte da ein paar Fragen..."~ */ GOTO 3
  IF ~~ THEN REPLY #40067 /* ~"Ich bin nur zufällig vorbeigekommen. Leb wohl, Nenny."~ */ EXIT
END
