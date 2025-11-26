// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DKESAI.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\de_DE\dialog.tlk
// dialogF  : (none)

BEGIN ~DKESAI~

IF ~  Global("Kesai","GLOBAL",0)
~ THEN BEGIN 0 // from:
  SAY #2939 /* ~Diese erschreckend sinnliche Frau hat eine dicke Mähne welliger, kohlrabenschwarzer Haare, eine bläuliche Haut und purpurrot schimmernde Augen, wie Rubine, hinter denen ein Feuer entzündet wurde. Sie ist zwar nicht schön im herkömmlichen Sinne, doch ihre Gesichtszüge sind exotisch und insgesamt nicht unattraktiv.~ */
  IF ~~ THEN REPLY #2940 /* ~"Sei gegrüßt..."~ */ DO ~SetGlobal("Kesai","GLOBAL",1)
~ GOTO 1
  IF ~~ THEN REPLY #40857 /* ~Laß sie in Ruhe.~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #40858 /* ~Die Stimme der Frau ist tief und sinnlich: "Und seid *Ihr* ebenfalls gegrüßt, mein Herr." Ihre brennenden Augen streifen über dich. "Ich bin Kesai-Serris. Also sagt mir: Was kann ich für Euch tun, hmmm?"~ */
  IF ~  NearbyDialog("DMorte")
~ THEN EXTERN ~DMORTE~ 432
  IF ~  !NearbyDialog("DMorte")
Global("Know_Kesai_Ravel","AR0605",1)
~ THEN REPLY #40859 /* ~"Kesai? Bist du Ravels Tochter?"~ */ GOTO 41
  IF ~  !NearbyDialog("DMorte")
~ THEN REPLY #40860 /* ~"Tja, was tust du denn in der Regel so für Kunden?"~ */ GOTO 4
  IF ~  !NearbyDialog("DMorte")
~ THEN REPLY #40861 /* ~"Ich hätte da ein paar Fragen..."~ */ GOTO 26
  IF ~  !NearbyDialog("DMorte")
~ THEN REPLY #40862 /* ~"Nichts, danke. Leb wohl."~ */ GOTO 3
END

IF ~~ THEN BEGIN 2 // from:
  SAY #40863 /* ~Kesai lacht herzlich, wobei sie Eckzähne zeigt, die lang genug sind, um Reißzähne genannt zu werden. Sie schüttelt ihren Kopf und lächelt Morte an. "Aber jetzt im Ernst, bitte... Was kann ich für Euch tun?"~ */
  IF ~  Global("Know_Kesai_Ravel","AR0605",1)
~ THEN REPLY #40864 /* ~"Kesai? Bist du Ravels Tochter?"~ */ GOTO 41
  IF ~~ THEN REPLY #40865 /* ~"Tja, was tust du denn in der Regel so für Kunden?"~ */ GOTO 4
  IF ~~ THEN REPLY #40866 /* ~"Ich hätte da ein paar Fragen..."~ */ GOTO 26
  IF ~~ THEN REPLY #40867 /* ~"Nichts, danke. Leb wohl."~ */ GOTO 3
END

IF ~~ THEN BEGIN 3 // from: 1.4 2.3 66.3 67.3 68.4
  SAY #40868 /* ~Sie zieht ihre Augenbrauen hoch: "Du willst mich wohl reizen, was? Hmph!" Kesai lächelt dich an und macht dabei ihre blitzenden roten Augen schmal. "Komm wieder, wenn du reden möchtest, hmmm?"~ */
  IF ~~ THEN REPLY #40869 /* ~Geh weg.~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 1.2 2.1 66.1 67.1 68.2
  SAY #40870 /* ~"Reden natürlich! In der Regel über Träume, oft über solche erotischer Natur... aber nicht immer!" Kesai blinzelt dir zu und lächelt. "Also! Würdest du mir gern deine erzählen? Sei nicht schüchtern. Ich habe schon alles gehört, weißt du. Mich kann nichts mehr schockieren oder überraschen, und ich liebe es so, die Träume anderer zu hören. Wir können unsere Träume ja austauschen, wenn du magst - aber du mußt anfangen."~ */
  IF ~  CheckStatLT(Protagonist,15,CHR)
Global("Kesai_Flirt","AR0605",0)
~ THEN REPLY #40871 /* ~"Meine Träume sind vor kurzem überarbeitet worden, als ich dich gesehen habe..."~ */ DO ~SetGlobal("Kesai_Flirt","AR0605",1)
~ GOTO 6
  IF ~  CheckStatGT(Protagonist,14,CHR)
Global("Kesai_Flirt","AR0605",0)
~ THEN REPLY #40872 /* ~"Meine Träume sind vor kurzem überarbeitet worden, als ich Euch gesehen habe, meine Dame..."~ */ DO ~SetGlobal("Kesai_Flirt","AR0605",1)
~ GOTO 7
  IF ~  Global("AR3017_Visited","GLOBAL",1)
~ THEN REPLY #40873 /* ~"Ich habe eigentlich nicht viele Träume. Eine ganze Zeitlang hatte ich gar keine."~ */ GOTO 23
  IF ~  Global("AR3017_Visited","GLOBAL",0)
~ THEN REPLY #40874 /* ~"Ich... habe eigentlich keine Träume."~ */ GOTO 21
  IF ~~ THEN REPLY #40875 /* ~"Nein... Das möchte ich lieber nicht tun."~ */ GOTO 5
  IF ~~ THEN REPLY #40876 /* ~"Das würde ich gern tun, aber ich habe zu wenig Zeit."~ */ GOTO 5
END

IF ~~ THEN BEGIN 5 // from: 4.4 4.5 6.2 6.3 13.1 14.1 15.2 15.3 16.2 17.2 17.3 19.2 19.3 23.1
  SAY #40877 /* ~Kesai schmollt einen Augenblick lang und zuckt dann die Schultern. "Wie du willst! Ich warte hier, falls du einmal deine Meinung änderst..."~ */
  IF ~~ THEN REPLY #40878 /* ~"Warte... ich hätte da ein paar Fragen..."~ */ GOTO 26
  IF ~~ THEN REPLY #40879 /* ~"Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 6 // from: 4.0
  SAY #40880 /* ~"Ach, tatsächlich?" Kesai lächelt und schüttelt ihren Kopf. "Komm schon... laß uns die ganze Geschichte hören! Wovon träumst du, hmm?"~ */
  IF ~  Global("AR3017_Visited","GLOBAL",1)
~ THEN REPLY #40881 /* ~"Ich habe eigentlich nicht viele Träume. Eine ganze Zeitlang hatte ich gar keine."~ */ GOTO 23
  IF ~  Global("AR3017_Visited","GLOBAL",0)
~ THEN REPLY #40882 /* ~"Ich... habe eigentlich keine Träume."~ */ GOTO 21
  IF ~~ THEN REPLY #40883 /* ~"Ich möchte lieber nicht darüber reden."~ */ GOTO 5
  IF ~~ THEN REPLY #40884 /* ~"Ich würde es dir gern erzählen, aber ich habe zu wenig Zeit."~ */ GOTO 5
END

IF ~~ THEN BEGIN 7 // from: 4.1
  SAY #40885 /* ~"Ach, *tatsächlich*?" Kesai lächelt, und ihre blitzenden roten Augen streifen nochmals über deinen Körper. "Du siehst ganz schön wild aus, weißt du? Sag mir: Bist du grob mit deinen Geliebten? Beim *Akt*, meine ich... sehr physisch?"~ */
  IF ~~ THEN REPLY #40886 /* ~"Meinst du, ob ich sie mißhandle?"~ */ GOTO 8
  IF ~~ THEN REPLY #40887 /* ~"Warum würdest du so etwas fragen?"~ */ GOTO 9
  IF ~~ THEN REPLY #40888 /* ~"Nein, ich bin eigentlich ziemlich sanft."~ */ GOTO 10
  IF ~~ THEN REPLY #40889 /* ~"Ja, ich glaube, das bin ich."~ */ GOTO 10
  IF ~~ THEN REPLY #40890 /* ~"Nur, wenn sie es mögen."~ */ GOTO 10
  IF ~~ THEN REPLY #40891 /* ~"Das hängt eigentlich von meiner Stimmung ab."~ */ GOTO 10
  IF ~~ THEN REPLY #40892 /* ~"Ich... weiß es eigentlich nicht."~ */ GOTO 18
END

IF ~~ THEN BEGIN 8 // from: 7.0
  SAY #40893 /* ~"Du lieber Himmel, nein!" Kesai seufzt verärgert. "Manche Leute machen alles sehr *langsam* und auf *sinnliche* Weise... Und andere sind da direkter, ganz grob, wälzen und kugeln sich herum, weißt du? Ich hab mich nur gefragt, wo *du* da reinpaßt, das ist alles."~ */
  IF ~~ THEN REPLY #40894 /* ~"Warum würdest du so etwas fragen?"~ */ GOTO 9
  IF ~~ THEN REPLY #40895 /* ~"Ich bin eigentlich ziemlich sanft."~ */ GOTO 10
  IF ~~ THEN REPLY #40896 /* ~"Dann glaube ich, daß ich ziemlich grob bin."~ */ GOTO 10
  IF ~~ THEN REPLY #40899 /* ~"Ich bin nur grob, wenn es ihnen gefällt."~ */ GOTO 10
  IF ~~ THEN REPLY #40900 /* ~"Das hängt eigentlich von meiner Stimmung ab."~ */ GOTO 10
  IF ~~ THEN REPLY #40901 /* ~"Ich... weiß es eigentlich nicht."~ */ GOTO 18
END

IF ~~ THEN BEGIN 9 // from: 7.1 8.0
  SAY #40902 /* ~Kesai zuckt die Schultern. "Ich war neugierig... und spreche sehr gern über den Liebesakt. Vielen Leuten ist es unangenehm, darüber zu sprechen, aber es ist so wichtig, daß sie das tun können, besonders mit ihren Partnern - das ist gut für beide! Ich hoffe, daß meine Kunden einen Weg finden, mit ihren Partnern über solche Dinge zu sprechen, wenn sie das nicht bereits tun. Also: Du hast mir noch nicht geantwortet..."~ */
  IF ~~ THEN REPLY #40903 /* ~"Ich bin eigentlich ziemlich sanft."~ */ GOTO 10
  IF ~~ THEN REPLY #40904 /* ~"Ich glaube, ich bin ziemlich grob."~ */ GOTO 10
  IF ~~ THEN REPLY #40905 /* ~"Ich bin nur grob, wenn es ihnen gefällt."~ */ GOTO 10
  IF ~~ THEN REPLY #40906 /* ~"Das hängt eigentlich von meiner Stimmung ab."~ */ GOTO 10
  IF ~~ THEN REPLY #40907 /* ~"Ich... weiß es eigentlich nicht."~ */ GOTO 18
END

IF ~~ THEN BEGIN 10 // from: 7.2 7.3 7.4 7.5 8.1 8.2 8.3 8.4 9.0 9.1 9.2 9.3
  SAY #40908 /* ~Kesai nickt lächelnd. "Ich hab mir schon gedacht, daß du das sagst. Ich bin selbst ziemlich grob... Ich mag es, mich gehenzulassen, und besonders gern beiße ich! Ich habe allerdings scharfe Zähne, so daß ich vorsichtig sein muß. Manchmal lasse ich mich gehen und beiße meinen Partner blutig, weißt du?"~ */
  IF ~  NearbyDialog("DMorte")
~ THEN EXTERN ~DMORTE~ 433
  IF ~  !NearbyDialog("DMorte")
~ THEN REPLY #40909 /* ~"Du hast scharfe Zähne?"~ */ GOTO 12
  IF ~  !NearbyDialog("DMorte")
~ THEN REPLY #40910 /* ~"Das würde mir nichts ausmachen..."~ */ GOTO 13
  IF ~  !NearbyDialog("DMorte")
~ THEN REPLY #40911 /* ~"Das hätte ich *überhaupt* nicht gern..."~ */ GOTO 16
  IF ~  !NearbyDialog("DMorte")
~ THEN REPLY #40912 /* ~"Ja... nun, ich hätte da ein paar Fragen..."~ */ GOTO 26
  IF ~  !NearbyDialog("DMorte")
~ THEN REPLY #40913 /* ~"Ach so. Ich geh jetzt wohl lieber. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 11 // from:
  SAY #40914 /* ~"Höchstwahrscheinlich in den Außenländern unterwegs. Aber das war doch eine rhetorische Frage, nicht wahr?" Sie blinzelt Morte zu und wendet sich dann wieder dir zu.~ */
  IF ~~ THEN REPLY #40915 /* ~"Du hast scharfe Zähne?"~ */ GOTO 12
  IF ~~ THEN REPLY #40916 /* ~"Ich glaub nicht, daß mir das Beißen etwas ausmachen würde..."~ */ GOTO 13
  IF ~~ THEN REPLY #40917 /* ~"Beißen hätte ich *überhaupt* nicht gern..."~ */ GOTO 16
  IF ~~ THEN REPLY #40918 /* ~"Ich hätte da ein paar Fragen, Kesai..."~ */ GOTO 26
  IF ~~ THEN REPLY #40919 /* ~"Ich geh jetzt wohl lieber. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 12 // from: 10.1 11.0
  SAY #40920 /* ~Kesai nickt. "Mmm-hmm, aber gewiß habe ich die. Möchtest du mal sehen? Hier..." Sie öffnet ihren Mund ein wenig und fährt mit ihrer violetten Zunge über ihre unteren Zähne. Ihre Eckzähne sind lang genug, um als Reißzähne bezeichnet zu werden.~ */
  IF ~~ THEN REPLY #40921 /* ~"Ich glaub nicht, daß mir das Beißen etwas ausmachen würde..."~ */ GOTO 13
  IF ~~ THEN REPLY #40922 /* ~"Bisse von solchen Zähnen hätte ich *überhaupt* nicht gern..."~ */ GOTO 16
  IF ~~ THEN REPLY #40923 /* ~"Ach so. Ich hätte da ein paar Fragen, Kesai..."~ */ GOTO 26
  IF ~~ THEN REPLY #40924 /* ~"Ich geh jetzt wohl lieber. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 13 // from: 10.2 11.1 12.0
  SAY #40925 /* ~Kesai lacht. "Ich bezweifle ohnehin, daß ich durch dein dickes Fell kommen würde. Hast du noch viel Gefühl in deiner Haut?"~ */
  IF ~~ THEN REPLY #40926 /* ~"Nein, unglücklicherweise eigentlich nicht. Die Narben sind sehr dick."~ */ GOTO 14
  IF ~~ THEN REPLY #40927 /* ~"Ich möchte eigentlich nicht darüber reden."~ */ GOTO 5
END

IF ~~ THEN BEGIN 14 // from: 13.0
  SAY #40928 /* ~"Oh, das ist eine Schande. Du *hast* aber auch ne Menge Narben..." Kesai sieht sich dein Gesicht genau an. "Sogar auf den Lippen, und auf den Augenlidern... Sag mal: Hast du überall Narben? Du weißt schon... *überall*?"~ */
  IF ~~ THEN REPLY #40929 /* ~"Nein, nicht wirklich. Es gibt Teile von mir, die es irgendwie geschafft haben, sich aus der Schußlinie zu halten."~ */ GOTO 15
  IF ~~ THEN REPLY #40930 /* ~"Ich möchte eigentlich nicht darüber reden."~ */ GOTO 5
END

IF ~~ THEN BEGIN 15 // from: 14.0
  SAY #40931 /* ~"Na, dann ist's ja gut!" Kesai lacht fröhlich, setzt dann einen scherzhaft ernsten Blick auf und stemmt die Hände in die Hüften. "Weißt du, du hast mir *immer* noch nicht von deinen Träumen erzählt. Komm schon, raus damit!"~ */
  IF ~  Global("AR3017_Visited","GLOBAL",1)
~ THEN REPLY #40932 /* ~"Ich habe eigentlich nicht viele Träume. Eine ganze Zeitlang hatte ich gar keine."~ */ GOTO 23
  IF ~  Global("AR3017_Visited","GLOBAL",0)
~ THEN REPLY #40933 /* ~"Ich... habe eigentlich keine Träume."~ */ GOTO 21
  IF ~~ THEN REPLY #40934 /* ~"Ich möchte lieber nicht darüber reden."~ */ GOTO 5
  IF ~~ THEN REPLY #40935 /* ~"Ich würde es dir gern erzählen, aber ich habe zu wenig Zeit."~ */ GOTO 5
END

IF ~~ THEN BEGIN 16 // from: 10.3 11.2 12.1
  SAY #40936 /* ~"Oh, siehst du? Deshalb ist es so wichtig, daß man über solche Dinge spricht, besonders mit dem Partner. Das erste Mal eines Paares könnte stark verbessert werden, wenn sie vorher über den Akt reden würden... Außerdem macht es so viel Spaß, darüber zu reden, hmmm?" Kesai lächelt dich breit an, und ihre Augen glitzern wie zwei rote Juwelen.~ */
  IF ~~ THEN REPLY #40937 /* ~"Ja, ich würde sagen, das tut es."~ */ GOTO 17
  IF ~~ THEN REPLY #40938 /* ~"Nein, ich glaube, das ist ziemlich privat und sollte nicht so leicht genommen werden."~ */ GOTO 17
  IF ~~ THEN REPLY #40939 /* ~"Ich möchte lieber nicht darüber reden."~ */ GOTO 5
END

IF ~~ THEN BEGIN 17 // from: 16.0 16.1
  SAY #40940 /* ~Kesai nickt und sieht einen Moment lang gedankenverloren aus. "Sag mal... du hast mir *immer* noch nicht von deinen Träumen erzählt, weißt du. Komm schon, raus damit!"~ */
  IF ~  Global("AR3017_Visited","GLOBAL",1)
~ THEN REPLY #40941 /* ~"Ich habe eigentlich nicht viele Träume. Eine ganze Zeitlang hatte ich gar keine."~ */ GOTO 23
  IF ~  Global("AR3017_Visited","GLOBAL",0)
~ THEN REPLY #40942 /* ~"Ich... habe eigentlich keine Träume."~ */ GOTO 21
  IF ~~ THEN REPLY #40943 /* ~"Ich möchte lieber nicht darüber reden."~ */ GOTO 5
  IF ~~ THEN REPLY #40944 /* ~"Ich würde es dir gern erzählen, aber ich habe zu wenig Zeit."~ */ GOTO 5
END

IF ~~ THEN BEGIN 18 // from: 7.6 8.5 9.4
  SAY #40945 /* ~Kesai schmollt einen Augenblick lang und zuckt dann die Schultern. "Wenn es dir unangenehm ist, darüber zu sprechen, ist das schon in Ordnung. Ich muß dir aber sagen, daß du solche Bedenken nicht mit einer Frau haben solltest. Diese Dinge zu diskutieren ist wichtig, besonders vorher, weißt du? Das wird das Beste für euch beide sein."~ */
  IF ~~ THEN REPLY #40946 /* ~"Ich werd's mir merken."~ */ GOTO 19
  IF ~~ THEN REPLY #40947 /* ~"Ich finde, du solltest dich besser um deinen eigenen Kram kümmern."~ */ GOTO 20
END

IF ~~ THEN BEGIN 19 // from: 18.0
  SAY #40948 /* ~Sie lächelt einfach nur zur Antwort. "Sag mal... du hast mir *immer* noch nicht von deinen Träumen erzählt, weißt du. Komm schon, raus damit!"~ */
  IF ~  Global("AR3017_Visited","GLOBAL",1)
~ THEN REPLY #40949 /* ~"Ich habe eigentlich nicht viele Träume. Eine ganze Zeitlang hatte ich gar keine."~ */ GOTO 23
  IF ~  Global("AR3017_Visited","GLOBAL",0)
~ THEN REPLY #40950 /* ~"Ich... habe eigentlich keine Träume."~ */ GOTO 21
  IF ~~ THEN REPLY #40951 /* ~"Ich möchte lieber nicht darüber reden."~ */ GOTO 5
  IF ~~ THEN REPLY #40952 /* ~"Ich würde es dir gern erzählen, aber ich habe zu wenig Zeit."~ */ GOTO 5
END

IF ~~ THEN BEGIN 20 // from: 18.1
  SAY #40953 /* ~Kesai grinst und verdreht ihre feurigen roten Augen. "Schließlich hast *du* *mich* angesprochen, weißt du. Wenn dir solche Dinge etwas ausmachen, kannst du natürlich jederzeit gehen und statt dessen mit einer der anderen Frauen sprechen."~ */
  IF ~~ THEN REPLY #40954 /* ~"Nein, noch nicht. Ich hätte da ein paar Fragen..."~ */ GOTO 26
  IF ~~ THEN REPLY #40955 /* ~"Dann werde ich das tun. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 21 // from: 4.3 6.1 15.1 17.1 19.1
  SAY #40956 /* ~Kesai zieht überrascht die Augenbrauen hoch. "Wirklich? Wie traurig! Selbst Scheusale und Devas träumen, weißt du. Bist du *sicher*, daß du nicht träumst?"~ */
  IF ~~ THEN REPLY #40957 /* ~"Ganz sicher. Überhaupt keine Träume."~ */ GOTO 22
END

IF ~~ THEN BEGIN 22 // from: 21.0
  SAY #40958 /* ~"Hmm. Sehr seltsam! Ich weiß wirklich nicht, was ich jetzt sagen soll..."~ */
  IF ~~ THEN REPLY #40959 /* ~"Tja, ich hätte da eigentlich ein paar Fragen..."~ */ GOTO 26
  IF ~~ THEN REPLY #40960 /* ~"Das ist schon in Ordnung. Leb wohl, Kesai."~ */ EXIT
END

IF ~~ THEN BEGIN 23 // from: 4.2 6.0 15.0 17.0 19.0
  SAY #40961 /* ~"Wirklich überhaupt nicht? Sehr seltsam! Selbst Scheusale und Devas träumen, weißt du. Also wovon handeln diese wenigen Träume, die du hast, hmm?" Kesai lehnt sich vor und wartet gespannt auf deine Antwort.~ */
  IF ~~ THEN REPLY #40962 /* ~"Das sind eher Alpträume als Träume. Visionen von einem Schwarzstachel-Irrgang... von einer Nachthexe namens Ravel..."~ */ GOTO 24
  IF ~~ THEN REPLY #40963 /* ~"Ich möchte eigentlich lieber nicht darüber sprechen."~ */ GOTO 5
END

IF ~~ THEN BEGIN 24 // from: 23.0
  SAY #40964 /* ~Kesai bleibt eine Weile still. "Oh? Oh... Alpträume. Ich verstehe... Das ist schade, das ist es wirklich..."~ */
  IF ~  CheckStatGT(Protagonist,12,WIS)
~ THEN REPLY #40965 /* ~"Geht's dir gut? Du wirkst plötzlich verzweifelt..."~ */ GOTO 25
  IF ~~ THEN REPLY #40966 /* ~"Ja, vielleicht. Ich hätte da ein paar Fragen..."~ */ GOTO 26
  IF ~~ THEN REPLY #40967 /* ~"Das ist schon in Ordnung. Leb wohl, Kesai."~ */ EXIT
END

IF ~~ THEN BEGIN 25 // from: 24.0
  SAY #40968 /* ~"Mir geht's gut, wirklich. Trotzdem, danke." Kesai lächelt dich an.~ */
  IF ~~ THEN REPLY #40969 /* ~"In diesem Fall hätte ich da ein paar Fragen..."~ */ GOTO 26
  IF ~~ THEN REPLY #40970 /* ~"Dann gehe ich mal. Leb wohl, Kesai."~ */ EXIT
END

IF ~~ THEN BEGIN 26 // from: 1.3 2.2 5.0 10.4 11.3 12.2 20.0 22.0 24.1 25.0 27.2 28.2 29.1 30.1 31.0 32.1 33.2 34.0 36.1 37.0 38.1 39.0 40.0 42.1 66.2 67.2 68.3 69.0
  SAY #40971 /* ~Kesai blinzelt dich mit ihren purpurroten Augen an und wartet auf deine Frage.~ */
  IF ~  Global("Know_Kesai_Ravel","AR0605",2)
~ THEN REPLY #40972 /* ~"Kesai, ich habe mit Kimasxi gesprochen. Sie hat mir gesagt, daß sie deine Halbschwester ist und daß Ravel deine Mutter ist."~ */ DO ~SetGlobal("Know_Kesai_Ravel","AR0605",3)
~ GOTO 45
  IF ~  Global("Know_Kesai_Ravel","AR0605",1)
~ THEN REPLY #40973 /* ~"Bist du zufällig Ravels Tochter?"~ */ GOTO 41
  IF ~  CheckStatLT(Protagonist,13,CHR)
!NearbyDialog("DAnnah")
~ THEN REPLY #40974 /* ~"Was bist du?"~ */ GOTO 27
  IF ~  CheckStatGT(Protagonist,12,CHR)
!NearbyDialog("DAnnah")
~ THEN REPLY #40975 /* ~"Sag mal, was bist du - wenn ich mal so fragen darf."~ */ GOTO 27
  IF ~  CheckStatLT(Protagonist,13,CHR)
NearbyDialog("DAnnah")
~ THEN REPLY #40976 /* ~"Was bist du?"~ */ GOTO 28
  IF ~  CheckStatGT(Protagonist,12,CHR)
NearbyDialog("DAnnah")
~ THEN REPLY #40977 /* ~"Sag mal, was bist du - wenn ich mal so fragen darf."~ */ GOTO 28
  IF ~~ THEN REPLY #40978 /* ~"Was machst du hier?"~ */ GOTO 29
  IF ~~ THEN REPLY #40979 /* ~"Kannst du mir etwas über diesen Ort erzählen?"~ */ GOTO 32
  IF ~  Global("Ecco_Speak","GLOBAL",1)
Global("Ecco_Name","AR0605",0)
~ THEN REPLY #40980 /* ~"Was kannst du mir über die schweigsame Prostituierte erzählen?"~ */ DO ~SetGlobal("Ecco_Name","AR0605",1)
SetGlobal("Ecco_Rumor_4","AR0605",1)
~ JOURNAL #66744 /* ~Eine Prostituierten hat gesagt, ich solle Dolora über Ecco, die schweigende Prostituierte, fragen. Sie sagte, daß Dolora manchmal mit einem alten Liebhaber von Ecco spricht, der sie kannte, bevor sie aufhörte zu reden.~ */ GOTO 69
  IF ~  Global("Ecco_Speak","GLOBAL",1)
GlobalGT("Ecco_Name","AR0605",0)
~ THEN REPLY #67844 /* ~"Was kannst du mir über die stumme Hure erzählen?"~ */ DO ~SetGlobal("Ecco_Rumor_4","AR0605",1)
~ JOURNAL #66744 /* ~Eine Prostituierten hat gesagt, ich solle Dolora über Ecco, die schweigende Prostituierte, fragen. Sie sagte, daß Dolora manchmal mit einem alten Liebhaber von Ecco spricht, der sie kannte, bevor sie aufhörte zu reden.~ */ GOTO 69
  IF ~  Global("Scent_Quest","AR0605",1)
~ THEN REPLY #40981 /* ~"Ich bin auf der Suche nach Vivians Duft... Weißt du, wo er sein könnte?"~ */ JOURNAL #66727 /* ~Eine der Prostituierten hat vorgeschlagen, daß ich Nenny frage, ob sie etwas darüber weiß, wer Vivians persönlichen Duft gestohlen hat. Anscheinend hat Nenny einen Ruf dafür, herumzuwandern und zu beobachten, was andere Leute gerade tun.~ */ GOTO 33
  IF ~  Global("Veil_Quest","AR0605",1)
~ THEN REPLY #40982 /* ~"Ich suche Marissas Purpurschleier... Weißt du, wo er sein könnte?"~ */ JOURNAL #66728 /* ~Eine der Prostituierten hat vorgeschlagen, daß ich Nenny frage, ob sie irgendwo Marissas Purpurschleier gesehen hat. Anscheinend hat Nenny einen Ruf dafür, herumzuwandern und zu beobachten, was andere Leute gerade tun.~ */ GOTO 36
  IF ~  GlobalLT("Kesai","GLOBAL",3)
Global("Know_Ravel","GLOBAL",1)
~ THEN REPLY #40983 /* ~"Weißt du etwas über Ravel Rätselschön?"~ */ GOTO 38
  IF ~  GlobalGT("Dolora","GLOBAL",0)
Global("Grace_Quest","GLOBAL",1)
GlobalGT("Ecco","GLOBAL",0)
GlobalGT("Yves","GLOBAL",0)
GlobalGT("Vivian","GLOBAL",0)
GlobalGT("Nenny","GLOBAL",0)
GlobalGT("SadJuli","GLOBAL",0)
GlobalGT("Marissa","GLOBAL",0)
GlobalGT("Kesai","GLOBAL",0)
GlobalGT("Kimasxi","GLOBAL",0)
~ THEN REPLY #40984 /* ~"Ich habe insgesamt mit neun Prostituierten gesprochen... Weißt du, wer oder wo die zehnte Schülerin ist?"~ */ GOTO 40
  IF ~~ THEN REPLY #40985 /* ~"Vergiß es einfach. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 27 // from: 26.2 26.3
  SAY #40986 /* ~Kesai schüttelt den Kopf. "Was, kannst du das nicht sehen?" Sie richtet sich gerade auf und streckt dir ihren üppigen Busen entgegen. "Eine Frau!" Sie hebt eine Augenbraue. "Ich sehe schon, meine Antwort gefällt dir nicht... Ich bin außerdem ein Planarier. Das ist alles, was du wissen mußt."~ */
  IF ~  Global("Know_Kesai_Ravel","AR0605",2)
~ THEN REPLY #40987 /* ~"Kesai, ich habe mit Kimasxi gesprochen. Sie hat mir gesagt, daß sie deine Halbschwester ist und daß Ravel deine Mutter ist."~ */ GOTO 45
  IF ~  Global("Know_Kesai_Ravel","AR0605",1)
~ THEN REPLY #40988 /* ~"Bist du Ravels Tochter?"~ */ GOTO 41
  IF ~~ THEN REPLY #40989 /* ~"Ich hätte da noch eine Frage..."~ */ GOTO 26
  IF ~~ THEN REPLY #40990 /* ~"Mehr wollt' ich gar nicht wissen. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 28 // from: 26.4 26.5
  SAY #40991 /* ~Kesai schüttelt den Kopf. "Was, kannst du das nicht sehen?" Sie richtet sich gerade auf und streckt dir ihren üppigen Busen entgegen. "Eine Frau!" Sie hebt eine Augenbraue. "Ich sehe schon, meine Antwort gefällt dir nicht... Ich bin außerdem ein Planarier, wie deine Freundin hier." Kesai zeigt auf Annah. "Das ist alles, was du wissen mußt."~ */
  IF ~  Global("Know_Kesai_Ravel","AR0605",2)
~ THEN REPLY #40992 /* ~"Kesai, ich habe mit Kimasxi gesprochen. Sie hat mir gesagt, daß sie deine Halbschwester ist und daß Ravel deine Mutter ist."~ */ GOTO 45
  IF ~  Global("Know_Kesai_Ravel","AR0605",1)
~ THEN REPLY #40993 /* ~"Bist du Ravels Tochter?"~ */ GOTO 41
  IF ~~ THEN REPLY #40994 /* ~"Ich hätte da noch eine Frage..."~ */ GOTO 26
  IF ~~ THEN REPLY #40995 /* ~"Mehr wollt' ich gar nicht wissen. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 29 // from: 26.6
  SAY #40996 /* ~"Ich beantworte deine Fragen, wie's aussieht." Sie blinzelt dich an. "Aber im Ernst, ich bin eine Schülerin von Meisterin Grace. Alle Prostituierten im Bordell sind das."~ */
  IF ~~ THEN REPLY #40997 /* ~"Eine Schülerin?"~ */ GOTO 30
  IF ~~ THEN REPLY #40998 /* ~"Ich hätte da noch eine Frage..."~ */ GOTO 26
  IF ~~ THEN REPLY #40999 /* ~"Mehr wollt' ich gar nicht wissen. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 30 // from: 29.0
  SAY #41000 /* ~"Das ist richtig. Das Bordell ist eigentlich eine Schule für Frauen, die daran denken, Sinnsaten zu werden. Meisterin Grace unterweist uns in der Kunst der Sprache, damit wir uns besser mit uns selbst und denen, die uns umgeben, identifizieren können. So können wir die Ebenen besser und vollständiger erfahren, weißt du?"~ */
  IF ~~ THEN REPLY #41001 /* ~"Erzähl mir was über die Sinnsaten."~ */ GOTO 31
  IF ~~ THEN REPLY #41002 /* ~"Ich hätte da noch eine Frage..."~ */ GOTO 26
  IF ~~ THEN REPLY #41003 /* ~"Mehr wollt' ich gar nicht wissen. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 31 // from: 30.0 32.0
  SAY #41004 /* ~"Die Gesellschaft der Empfindung glaubt daran, daß das Multiversum nur durch Erfahrungen verstanden werden kann... Je mehr Erfahrungen man macht, desto näher kommt man dem Verständnis des Dunkels des Multiversums. Reizvoll, nicht wahr? Ich glaube, ich bin dazu geboren, eine zu sein - Ich will einfach alles Mögliche *wissen*."~ */
  IF ~~ THEN REPLY #41005 /* ~"Ich hätte da noch eine Frage..."~ */ GOTO 26
  IF ~~ THEN REPLY #41006 /* ~"Mehr wollt' ich gar nicht wissen. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 32 // from: 26.7
  SAY #41007 /* ~"Sicher: Das Bordell zum Befriedigen Intellektueller Lüste ist eigentlich eine Schule für Frauen, die daran denken, Sinnsaten zu werden. Meisterin Grace unterweist uns in der Kunst der Sprache, damit wir uns besser mit uns selbst und denen, die uns umgeben, identifizieren können. So können wir die Ebenen besser und vollständiger erfahren, weißt du?"~ */
  IF ~~ THEN REPLY #41008 /* ~"Erzähl mir was über die Sinnsaten."~ */ GOTO 31
  IF ~~ THEN REPLY #41009 /* ~"Ich hätte da noch eine Frage..."~ */ GOTO 26
  IF ~~ THEN REPLY #41010 /* ~"Mehr wollt' ich gar nicht wissen. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 33 // from: 26.10
  SAY #41011 /* ~"Nein." Kesai runzelt die Stirn. "Die meisten Frauen werden sagen, daß sie zickig ist, aber zu mir war sie immer ganz nett... Hat mir Komplimente wegen meiner Augen gemacht... Und sie riecht so gut! Ich hoffe, sie findet ihren eigenen Duft bald wieder. Frag Nenny mal danach, sie ist überall zugleich und könnte etwas gesehen haben."~ */
  IF ~  Global("Kesai_Eyes_Flirt","GLOBAL",0)
CheckStatGT(Protagonist,14,CHR)
!NearbyDialog("DAnnah")
~ THEN REPLY #41012 /* ~"Du hast sehr schöne Augen, weißt du."~ */ DO ~SetGlobal("Kesai_Eyes_Flirt","GLOBAL",1)
~ GOTO 34
  IF ~  Global("Kesai_Eyes_Flirt","GLOBAL",0)
CheckStatGT(Protagonist,14,CHR)
NearbyDialog("DAnnah")
~ THEN REPLY #41013 /* ~"Du hast sehr schöne Augen, weißt du."~ */ DO ~SetGlobal("Kesai_Eyes_Flirt","GLOBAL",1)
~ EXTERN ~DANNAH~ 206
  IF ~~ THEN REPLY #41014 /* ~"Ich hätte da noch eine Frage..."~ */ GOTO 26
  IF ~~ THEN REPLY #41015 /* ~"Mehr wollt' ich gar nicht wissen. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 34 // from: 33.0 35.0
  SAY #41016 /* ~"Oh, danke! Du kannst sie im Dunkeln glühen sehen, weißt du... bizarr, nicht wahr?" Sie hält inne, um dich anzusehen. "Du hast auch nette Augen... so dunkel und geheimnisvoll! So voller Charakter."~ */
  IF ~~ THEN REPLY #41017 /* ~"Danke, Kesai. Ich hätte da noch eine Frage..."~ */ GOTO 26
  IF ~~ THEN REPLY #41018 /* ~"Danke. Leb wohl, Kesai."~ */ EXIT
END

IF ~~ THEN BEGIN 35 // from:
  SAY #41019 /* ~Kesai-Serris zuckt die Schultern und sieht wieder zu dir.~ */
  IF ~~ THEN GOTO 34
END

IF ~~ THEN BEGIN 36 // from: 26.11
  SAY #41020 /* ~"Hmm. Nein, ich habe ihn nicht mehr gesehen, seit sie ihn das letzte Mal getragen hat... Aber Nenny könnte etwas gesehen haben, also frag sie mal. Ich gebe zu, daß es schön war... Ohne ihren Schleier verläßt Marissa ihre Kammer nicht, und so sind wir alle von ihrer bösen Zunge verschont geblieben... Wir haben nur noch mit Kimasxi zu tun gehabt." Kesai lächelt schief. "Aber diese Kimasxi ist die schlimmere von beiden."~ */
  IF ~~ THEN REPLY #41021 /* ~"Wie das?"~ */ GOTO 37
  IF ~~ THEN REPLY #41022 /* ~"Ich hätte da noch eine Frage..."~ */ GOTO 26
  IF ~~ THEN REPLY #41023 /* ~"Mehr wollt' ich gar nicht wissen. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 37 // from: 36.0
  SAY #41024 /* ~"Marissa ist hochmütig und gemein, aber Kimasxi... Sie ist ein bitteres, böses Monster mit einer giftigen Zunge und dem Betragen eines Balors. Ich verstehe nicht, warum *irgendjemand* gern mit ihr sprechen sollte - und ich bezweifle wirklich, daß ihr Aussehen ihr loses und giftiges Mundwerk wettmacht - aber sie empfängt nichtsdestotrotz Kunden."~ */
  IF ~~ THEN REPLY #41025 /* ~"Ich hätte da noch eine Frage..."~ */ GOTO 26
  IF ~~ THEN REPLY #41026 /* ~"Mehr wollt' ich gar nicht wissen. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 38 // from: 26.12
  SAY #41027 /* ~"Nein. Nichts."~ */
  IF ~  CheckStatGT(Protagonist,12,WIS)
~ THEN REPLY #41028 /* ~"Bist du sicher? Du wirkst plötzlich so verstört..."~ */ GOTO 39
  IF ~~ THEN REPLY #41029 /* ~"Ich hätte da noch eine Frage..."~ */ GOTO 26
  IF ~~ THEN REPLY #41030 /* ~"Mehr wollt' ich gar nicht wissen. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 39 // from: 38.0
  SAY #41031 /* ~Sie sieht dich mit schmalen Augen an. "Natürlich bin ich sicher! Frag mich nicht mehr über sie."~ */
  IF ~~ THEN REPLY #41032 /* ~"Na schön. Ich hätte da noch eine Frage..."~ */ GOTO 26
  IF ~~ THEN REPLY #41033 /* ~"Dann leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 40 // from: 26.13
  SAY #41034 /* ~"Die zehnte?" Kesai spitzt ihre Lippen und tappt mit dem Fuß, während sie nachdenkt. "Nein... Wir sind nur zu neunt. Es sind immer neun Prostituierte da, es sei denn, Meisterin Grace hat kürzlich Änderungen vorgenommen, von denen ich noch nichts weiß."~ */
  IF ~~ THEN REPLY #41035 /* ~"Ich hätte da noch eine Frage..."~ */ GOTO 26
  IF ~~ THEN REPLY #41036 /* ~"Mehr wollt' ich gar nicht wissen. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 41 // from: 1.1 2.0 26.1 27.1 28.1 66.0 67.0
  SAY #41037 /* ~Kesai zeigt plötzlich die Zähne, und ihre Augen verschmälern sich zu blitzenden, pupurroten Schlitzen. "Was?! Wo hast du denn das gehört?"~ */
  IF ~~ THEN REPLY #41038 /* ~"Ecco hat es mir erzählt."~ */ DO ~SetGlobal("Kesai_Quest","GLOBAL",1)
SetGlobal("Kesai_Ask","AR0605",1)
~ JOURNAL #39519 /* ~Als ich Kesai-Serris gefragt habe, ob sie Ravels Tochter sei, hat sie sich höllisch aufgeregt... Sie will es einfach nicht glauben. Wenn das, was ich über sie gehört habe, wahr ist, muß ich bloß einen Weg finden, es ihr zu beweisen.~ */ GOTO 42
  IF ~~ THEN REPLY #41039 /* ~"Nur ein Gerücht, das ist alles."~ */ DO ~SetGlobal("Kesai_Quest","GLOBAL",1)
SetGlobal("Kesai_Ask","AR0605",1)
~ JOURNAL #39519 /* ~Als ich Kesai-Serris gefragt habe, ob sie Ravels Tochter sei, hat sie sich höllisch aufgeregt... Sie will es einfach nicht glauben. Wenn das, was ich über sie gehört habe, wahr ist, muß ich bloß einen Weg finden, es ihr zu beweisen.~ */ GOTO 42
END

IF ~~ THEN BEGIN 42 // from: 41.0 41.1
  SAY #41040 /* ~"Lächerlich! Ich denke, das wüßte ich, wenn diese böse Nachthexe meine eigene Mutter wäre! Und jetzt geh mir damit nicht mehr auf die Nerven."~ */
  IF ~~ THEN REPLY #41041 /* ~"Wer ist denn dann deine Mutter?"~ */ GOTO 43
  IF ~~ THEN REPLY #41042 /* ~"Na schön. Ich hätte da noch eine Frage..."~ */ GOTO 26
  IF ~~ THEN REPLY #41043 /* ~"Dann leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 43 // from: 42.0
  SAY #41044 /* ~"Ich weiß es nicht, OK? Mein Vater hat mich großgezogen. Ich habe sie nie kennengelernt. Aber sehe ich für dich etwa so *aus* wie eine Nachthexe?!"~ */
  IF ~~ THEN REPLY #41045 /* ~"Tja... da wäre die Haut... und die Augen... und vielleicht auch die Zähne..."~ */ GOTO 44
  IF ~~ THEN REPLY #41046 /* ~"Nein, nein - natürlich nicht."~ */ GOTO 44
END

IF ~~ THEN BEGIN 44 // from: 43.0 43.1
  SAY #41047 /* ~Kesai-Serris starrt dich mit wütend funkelnden Augen an. "Vielleicht sprechen wir *später* noch mal, aber ich bin nicht mehr in Stimmung. Leb wohl."~ */
  IF ~~ THEN REPLY #41048 /* ~"Leb wohl."~ */ DO ~SetGlobal("Kesai","GLOBAL",2)
~ EXIT
END

IF ~~ THEN BEGIN 45 // from: 26.0 27.0 28.0
  SAY #41049 /* ~Kesai knurrt, und ihre Augen funkeln böse. "Das... das... Himmel, wie ich die Frau hasse! Warum *glaubst* du nur einen solchen Unsinn?"~ */
  IF ~~ THEN REPLY #41050 /* ~"Sie sagt, daß du es abstreitest und vielleicht tatsächlich nicht weißt, daß es aber wahr ist. Sie sagt, du könntest deinen Vater fragen... daß er dir alles erzählen würde."~ */ DO ~SetGlobal("Kesai","GLOBAL",3)
SetGlobal("Kesai_Quest","GLOBAL",2)
~ JOURNAL #39518 /* ~Kesai-Serris hat endlich erkannt, daß sie Ravels Tochter ist. Sie hat irgendwie mit ihrem Halbscheusal-Vater gesprochen, wie Kimasxi es vorgeschlagen hatte, und so die Wahrheit erfahren.~ */ GOTO 46
END

IF ~~ THEN BEGIN 46 // from: 45.0
  SAY #41051 /* ~Kesai starrt dich eine Weile lang stumm an. "Warte einen Moment." Sie dreht sich von dir weg und beginnt, leise zu murmeln... Die Luft um sie herum scheint leicht zu schimmern und sich mit einem kupferartigen Geruch zu füllen, wie warmes Blut...~ */
  IF ~~ THEN REPLY #41052 /* ~Warte geduldig.~ */ GOTO 51
  IF ~~ THEN REPLY #41053 /* ~Sperr deine Ohren auf und versuch zu hören, was sie sagt.~ */ GOTO 47
END

IF ~~ THEN BEGIN 47 // from: 46.1
  SAY #41054 /* ~Du lehnst dich zu Kesai hinüber und versuchst zu verstehen, was sie murmelt.

"Haughazanenel, Verbannter Prinz von Ithag, Marquis des Blutigen Schattens, mein Vater, höre mich, denn ich rufe dich..."~ */
  IF ~~ THEN REPLY #41055 /* ~Hör weiter zu.~ */ GOTO 48
  IF ~~ THEN REPLY #41056 /* ~Hör auf, zuzuhören.~ */ GOTO 51
END

IF ~~ THEN BEGIN 48 // from: 47.0
  SAY #41057 /* ~"Ja, geliebter Vater, ich bin es, Kesai-Serris. Ich möchte dich bitten, mir eine Frage zu beantworten, eine Frage, die ich dir immer wieder gestellt habe..."~ */
  IF ~~ THEN REPLY #41058 /* ~Hör weiter zu.~ */ GOTO 49
  IF ~~ THEN REPLY #41059 /* ~Hör auf, zuzuhören.~ */ GOTO 51
END

IF ~~ THEN BEGIN 49 // from: 48.0
  SAY #41060 /* ~"Ja, geliebter Vater. Ich kann es nicht ertragen, daß ein anderer mir diese Frage stellt und ich es selbst nicht weiß. Du *mußt* es mir sagen... Ich habe dich nie um etwas anderes gebeten. Erzähl es mir, ich bitte dich..."~ */
  IF ~~ THEN REPLY #41061 /* ~Hör weiter zu.~ */ GOTO 50
  IF ~~ THEN REPLY #41062 /* ~Hör auf, zuzuhören.~ */ GOTO 51
END

IF ~~ THEN BEGIN 50 // from: 49.0
  SAY #41063 /* ~"J-ja... Ja, geliebter Vater, ich verstehe. Ich danke dir... Leb wohl..."~ */
  IF ~~ THEN REPLY #41064 /* ~"Und? Was hat er gesagt?"~ */ GOTO 51
  IF ~~ THEN REPLY #41065 /* ~Lehn dich zurück und tu so, als ob du nichts gehört hättest.~ */ GOTO 51
END

IF ~~ THEN BEGIN 51 // from: 46.0 47.1 48.1 49.1 50.0 50.1
  SAY #41066 /* ~Kesai bleibt einen Moment lang von dir abgewendet, bevor sie sich wieder zu dir umdreht. "Ich wollte nicht glauben, daß diese böse Nachthexe meine Mutter gewesen sein könnte. Ich lebe schon lange und scheine nicht zu altern, und ich habe... manchmal verstörende Träume." Sie erschauert. "Aber dennoch... Ich möchte nicht die Erbin des Bösen sein, das sie heraufbeschworen hat, und auch nicht den Blick der Dame auf mich ziehen, wie meine Mutter es getan hat. Sie hat so böse Dinge getan!"~ */
  IF ~~ THEN REPLY #41067 /* ~"Erzähl mir, was du über sie weißt, OK?"~ */ GOTO 52
  IF ~  Global("Know_Ravel_Key","GLOBAL",1)
~ THEN REPLY #41068 /* ~"Du mußt mir ein Stück von dir selbst geben, Kesai."~ */ GOTO 58
  IF ~~ THEN REPLY #41069 /* ~"Ich würde mir darum keine Sorgen machen, Kesai. Du bist überhaupt nicht wie Ravel. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 52 // from: 51.0
  SAY #41070 /* ~"Ich habe gehört, daß sie den Leuten unmögliche Rätsel aufgegeben hat, Rätsel, die nur sie beantworten konnte. Sie verschlang die Person, wenn sie die falsche Antwort gab, oder ließ sie in ihren schrecklichen Gärten als abschreckendes Beispiel für alle baumeln. Die wenigen, die irgendwie entkommen konnten, quälte sie in ihren Träumen, ritt sie wie Hengste, brach ihren Willen und schleuderte ihre Seelen in die farblose Vergessenheit der Grauen Einöde..."~ */
  IF ~~ THEN REPLY #41071 /* ~"Erzähl weiter..."~ */ GOTO 53
  IF ~  Global("Know_Ravel_Key","GLOBAL",1)
~ THEN REPLY #41072 /* ~"Du mußt mir ein Stück von dir selbst geben, Kesai."~ */ GOTO 58
  IF ~~ THEN REPLY #41073 /* ~"Das ist schon in Ordnung... Du mußt mir nicht mehr erzählen. Leb wohl, Kesai."~ */ EXIT
END

IF ~~ THEN BEGIN 53 // from: 52.0
  SAY #41074 /* ~"Ihre Magie soll über alles hinausgegangen sein, was man je gesehen hatte. Es war Vorstellungskraft, die aus Alpträumen gewoben und zu Substanz geworden war. Stein und feste Formen beugten sich ihrem Willen wie weicher Ton. Die Gesetze der Ebenen beugten sich unter ihren Füßen, und sie konnte Illusionen aus dem Nichts weben... Und aus Illusionen konnte sie Realität weben, die erschrecken, töten und verwirren konnte."~ */
  IF ~~ THEN REPLY #41075 /* ~"Erzähl weiter..."~ */ GOTO 54
  IF ~  Global("Know_Ravel_Key","GLOBAL",1)
~ THEN REPLY #41076 /* ~"Du mußt mir ein Stück von dir selbst geben, Kesai."~ */ GOTO 58
  IF ~~ THEN REPLY #41077 /* ~"Das ist schon in Ordnung... Du mußt mir nicht mehr erzählen. Leb wohl, Kesai."~ */ EXIT
END

IF ~~ THEN BEGIN 54 // from: 53.0
  SAY #41078 /* ~"Sie war eine Meisterin aller Dunklen Künste, Meisterin und Meister von ihnen allen. Sie jagte einen Herrschner, der es wagte, ihr das Gesetz Sigils vorzuhalten, mit Schatten, die ihn bis auf seine Zunge, seine Finger und das Fleisch seines Gesichts ganz verschlangen. Sie drehte Gnadentöter von innen nach außen und zerschmetterte die Gebäude derer, die ihren Unwillen erregten. Schrecklich, schrecklich die Mächte, über die sie verfügt hat."~ */
  IF ~~ THEN REPLY #41079 /* ~"Erzähl weiter..."~ */ GOTO 55
  IF ~  Global("Know_Ravel_Key","GLOBAL",1)
~ THEN REPLY #41080 /* ~"Du mußt mir ein Stück von dir selbst geben, Kesai."~ */ GOTO 58
  IF ~~ THEN REPLY #41081 /* ~"Das ist schon in Ordnung... Du mußt mir nicht mehr erzählen. Leb wohl, Kesai."~ */ EXIT
END

IF ~~ THEN BEGIN 55 // from: 54.0
  SAY #41082 /* ~"Sie wechselte ihre Form wie Wasser und verwendete sie dazu, manche zu ihrer Belustigung zu zerstören und Wissen von anderen zu stehlen. Sie war ein Monster, wie alles, was seinen Ursprung in der Grauen Einöde hatte."~ */
  IF ~~ THEN REPLY #41083 /* ~"Erzähl weiter..."~ */ GOTO 56
  IF ~  Global("Know_Ravel_Key","GLOBAL",1)
~ THEN REPLY #41084 /* ~"Du mußt mir ein Stück von dir selbst geben, Kesai."~ */ GOTO 58
  IF ~~ THEN REPLY #41085 /* ~"Das ist schon in Ordnung... Du mußt mir nicht mehr erzählen. Leb wohl, Kesai."~ */ EXIT
END

IF ~~ THEN BEGIN 56 // from: 55.0
  SAY #41086 /* ~"Schließlich drohte sie, den Käfig zu öffnen und die Wut der Ebenen wie eine Woge hineinrollen zu lassen. Glücklicherweise ist ihr das nicht gelungen. Sie hat nur dafür existiert, Böses zu tun..."~ */
  IF ~~ THEN REPLY #41087 /* ~"Erzähl weiter..."~ */ GOTO 57
  IF ~  Global("Know_Ravel_Key","GLOBAL",1)
~ THEN REPLY #41088 /* ~"Du mußt mir ein Stück von dir selbst geben, Kesai."~ */ GOTO 58
  IF ~~ THEN REPLY #41089 /* ~"Das ist schon in Ordnung... Du mußt mir nicht mehr erzählen. Leb wohl, Kesai."~ */ EXIT
END

IF ~~ THEN BEGIN 57 // from: 56.0
  SAY #41090 /* ~"Ich weiß nicht, ob sie tot ist... Aber ich weiß jetzt, daß sie meine Mutter war." Kesais läßt ihre Schultern und ihren Kopf hängen. "Oh, wenn ich nur Tränen hätte, damit ich vor Trauer weinen könnte!"~ */
  IF ~  CheckStatLT(Protagonist,13,CHR)
~ THEN REPLY #41091 /* ~Versuch sie zu trösten.~ */ GOTO 59
  IF ~  CheckStatGT(Protagonist,12,CHR)
CheckStatLT(Protagonist,16,CHR)
~ THEN REPLY #41092 /* ~Versuch sie zu trösten.~ */ GOTO 60
  IF ~  CheckStatGT(Protagonist,15,CHR)
~ THEN REPLY #41093 /* ~Versuch sie zu trösten.~ */ GOTO 61
  IF ~  Global("Know_Ravel_Key","GLOBAL",1)
~ THEN REPLY #41094 /* ~"Du mußt mir ein Stück von dir selbst geben, Kesai."~ */ GOTO 58
  IF ~~ THEN REPLY #41095 /* ~"Ich würde mir darum keine Sorgen machen, Kesai. Du bist überhaupt nicht wie Ravel. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 58 // from: 51.1 52.1 53.1 54.1 55.1 56.1 57.3 59.0 60.0 61.0 68.0
  SAY #41096 /* ~Sie sieht erschreckt auf. "Bitte?"~ */
  IF ~~ THEN REPLY #41097 /* ~"Der Schlüssel zum Portal zu Ravels Irrgarten ist ein Stück ihrer selbst, und du bist vom selben Blut wie sie. Das ist doch dicht genug dran."~ */ GOTO 62
  IF ~~ THEN REPLY #41098 /* ~"Vergiß es. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 59 // from: 57.0
  SAY #41099 /* ~"Laß... Laß mich einfach in Ruhe. Mir wird's schon wieder gut gehen. Ich brauche einfach nur Zeit, um über alles nachzudenken, das ist alles."~ */
  IF ~  Global("Know_Ravel_Key","GLOBAL",1)
~ THEN REPLY #41100 /* ~"Also gut, aber... Du mußt mir ein Stück von dir selbst geben."~ */ GOTO 58
  IF ~~ THEN REPLY #41101 /* ~"Ich würde mir darum keine Sorgen machen, Kesai. Du bist überhaupt nicht wie Ravel. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 60 // from: 57.1
  SAY #41102 /* ~"Danke... Danke für deine Mühe... Aber mir wird's schon wieder gut gehen. Ich brauche einfach nur Zeit, um über alles nachzudenken, das ist alles."~ */
  IF ~  Global("Know_Ravel_Key","GLOBAL",1)
~ THEN REPLY #41103 /* ~"Ich bitte dich jetzt wirklich ungern darum... aber du mußt mir ein Stück von dir selbst geben, Kesai."~ */ GOTO 58
  IF ~~ THEN REPLY #41104 /* ~"Ich würde mir darum keine Sorgen machen, Kesai. Du bist überhaupt nicht wie Ravel. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 61 // from: 57.2
  SAY #41105 /* ~Sie fällt dir plötzlich in die Arme und erschauert, als ob sie von Schluchzen geschüttelt würde. Eine Zeitlang steht Kesai einfach nur da und klammert sich an dir fest... Aber dann schiebt sie sich weg. "Danke... Aber mir wird's schon wieder gut gehen. Ich brauche einfach nur Zeit, um über alles nachzudenken, das ist alles."~ */
  IF ~  Global("Know_Ravel_Key","GLOBAL",1)
~ THEN REPLY #41106 /* ~"Ich bitte dich jetzt wirklich ungern darum... aber du mußt mir ein Stück von dir selbst geben, Kesai."~ */ GOTO 58
  IF ~~ THEN REPLY #41107 /* ~"Ich würde mir darum keine Sorgen machen, Kesai. Du bist überhaupt nicht wie Ravel. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 62 // from: 58.0
  SAY #41108 /* ~Kesai starrt dich an. "Du willst sie aufsuchen?" Ihre Überraschung wird schnell zu einem Ausdruck der Vorsicht. "Was... Was brauchst du von mir?"~ */
  IF ~~ THEN REPLY #41109 /* ~"Höchstwahrscheinlich dein Blut. Sicher nur einen Tropfen oder zwei, denke ich."~ */ GOTO 63
END

IF ~~ THEN BEGIN 63 // from: 62.0
  SAY #41110 /* ~Sie nickt. "Aber... Hast du etwas, worin du es tragen kannst? Ein Stück Stoff, wie ein Taschentuch oder so etwas?"~ */
  IF ~  PartyHasItem("Hanky")
~ THEN REPLY #41111 /* ~"Ja... hier..."~ */ DO ~SetGlobal("Know_Ravel_Key","GLOBAL",3)
DestroyPartyItem("Hanky",FALSE)
GiveItemCreate("Bhanky",Protagonist,1,0,0)
AddexperienceParty(40000)
~ JOURNAL #39517 /* ~Ich habe ein paar Tropfen von Kesai-Serris' Blut auf einem Taschentuch. Da sie ja ein Kind von Ravel zu sein scheint, sollte dies die Bedingung für den Portalsschlüssel zu Ravels Irrgang erfüllen: ein 'Stück von Ravel'.~ */ GOTO 64
  IF ~  !PartyHasItem("Hanky")
~ THEN REPLY #41112 /* ~"Nein."~ */ DO ~SetGlobal("Know_Ravel_Key","GLOBAL",2)
~ GOTO 65
END

IF ~~ THEN BEGIN 64 // from: 63.0 68.1
  SAY #41113 /* ~Kesai nimmt das Taschentuch und sticht sich geschickt an einem ihrer Reißzähne die Spitze eines Fingers auf. Nachdem sie einige Tropfen Blut auf das Taschentuch fallen lassen hat, gibt sie es dir wieder. "Du begibst dich in große Gefahr, weißt du. Selbst, wenn die Geschichten über meine Mutter stark übertrieben sind, ist sie schrecklich mächtig und vollkommen böse. Viel Glück."~ */
  IF ~~ THEN REPLY #41114 /* ~"Ja, das habe ich gehört. Danke, und leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 65 // from: 63.1
  SAY #41115 /* ~Kesai seufzt und sieht sich um. "Ich bin sicher, daß hier irgendwo im Bordell eins ist. Bring es her, wenn du es findest, OK? Ich gebe dir dann das Blut."~ */
  IF ~~ THEN REPLY #41116 /* ~"Dann komm ich wieder, wenn ich ein Taschentuch habe. Leb wohl."~ */ JOURNAL #50721 /* ~Es hat sich gezeigt, daß ein paar Blutstropfen von Kesai als Portalschlüssel zu Ravels Irrgang ausreichen würden... Ich muß ihr lediglich ein Taschentuch bringen, das ich dann mitnehmen kann.~ */ EXIT
END

IF ~  Global("Kesai","GLOBAL",1)
~ THEN BEGIN 66 // from:
  SAY #41117 /* ~Kesai-Serris lächelt warm, als du dich ihr näherst, und streicht sich eine wellige Locke ihres Haares aus den leuchtenden, purpurroten Augen. "Hallo, sei nochmals gegrüßt... Kann ich irgend etwas für dich tun, hmmm?"~ */
  IF ~  Global("Know_Kesai_Ravel","AR0605",1)
~ THEN REPLY #41118 /* ~"Kesai? Bist du Ravels Tochter?"~ */ GOTO 41
  IF ~~ THEN REPLY #41119 /* ~"Das kommt darauf an... Was tust du denn so?"~ */ GOTO 4
  IF ~~ THEN REPLY #41120 /* ~"Ich hätte da ein paar Fragen..."~ */ GOTO 26
  IF ~~ THEN REPLY #41121 /* ~"Nichts, danke. Leb wohl."~ */ GOTO 3
END

IF ~  Global("Kesai","GLOBAL",2)
~ THEN BEGIN 67 // from:
  SAY #41122 /* ~Kesai-Serris lächelt warm, als du dich ihr näherst, und streicht sich eine wellige Locke ihres Haares aus den leuchtenden, purpurroten Augen. "Mach dir keine Sorgen. Ich bin nicht lange böse. Kann ich irgend etwas für dich tun, hmmm?"~ */
  IF ~  Global("Know_Kesai_Ravel","AR0605",1)
~ THEN REPLY #41123 /* ~"Kesai? Bist du Ravels Tochter?"~ */ DO ~SetGlobal("Kesai","GLOBAL",1)
~ GOTO 41
  IF ~~ THEN REPLY #41124 /* ~"Das kommt darauf an... Was tust du denn so?"~ */ DO ~SetGlobal("Kesai","GLOBAL",1)
~ GOTO 4
  IF ~~ THEN REPLY #41125 /* ~"Ich hätte da ein paar Fragen..."~ */ DO ~SetGlobal("Kesai","GLOBAL",1)
~ GOTO 26
  IF ~~ THEN REPLY #41126 /* ~"Nichts, danke. Leb wohl."~ */ DO ~SetGlobal("Kesai","GLOBAL",1)
~ GOTO 3
END

IF ~  Global("Kesai","GLOBAL",3)
~ THEN BEGIN 68 // from:
  SAY #41127 /* ~Kesai-Serris lächelt warm, als du dich ihr näherst, und streicht sich eine wellige Locke ihres Haares aus den leuchtenden, purpurroten Augen. "Hallo, sei nochmals gegrüßt... Kann ich irgend etwas für dich tun, hmmm?"~ */
  IF ~  Global("Know_Ravel_Key","GLOBAL",1)
~ THEN REPLY #52907 /* ~"Du mußt mir ein Stück von dir selbst geben, Kesai."~ */ GOTO 58
  IF ~  Global("Know_Ravel_Key","GLOBAL",2)
PartyHasItem("Hanky")
~ THEN REPLY #41128 /* ~"Ja... Ich habe ein Taschentuch..."~ */ DO ~SetGlobal("Know_Ravel_Key","GLOBAL",3)
DestroyPartyItem("Hanky",FALSE)
GiveItemCreate("Bhanky",Protagonist,1,0,0)
AddexperienceParty(40000)
~ JOURNAL #39517 /* ~Ich habe ein paar Tropfen von Kesai-Serris' Blut auf einem Taschentuch. Da sie ja ein Kind von Ravel zu sein scheint, sollte dies die Bedingung für den Portalsschlüssel zu Ravels Irrgang erfüllen: ein 'Stück von Ravel'.~ */ GOTO 64
  IF ~~ THEN REPLY #41129 /* ~"Das kommt darauf an... Was tust du denn so?"~ */ GOTO 4
  IF ~~ THEN REPLY #41130 /* ~"Ich hätte da ein paar Fragen..."~ */ GOTO 26
  IF ~~ THEN REPLY #41131 /* ~"Nichts, danke. Leb wohl."~ */ GOTO 3
END

IF ~~ THEN BEGIN 69 // from: 26.8 26.9
  SAY #41132 /* ~"Ja, das ist Ecco. Sie ist wirklich süß, aber so still. Soweit ich weiß, hat sie einmal etwas gesagt, daß eine große Tragödie zur Folge hatte... Und deshalb wird sie nie wieder sprechen." Kesai zuckt lächelnd die Achseln. "Eine ganz interessante Geschichte, aber ich weiß nicht, ob sie wahr ist. Frag Dolora... Ich habe sie mit einem Ex-Geliebten von Ecco reden sehen, aus der Zeit, als Ecco noch gesprochen hat."~ */
  IF ~~ THEN REPLY #41133 /* ~"Ich habe noch eine andere Frage..."~ */ GOTO 26
  IF ~~ THEN REPLY #41134 /* ~"Mehr wollt' ich gar nicht wissen. Leb wohl."~ */ EXIT
END
