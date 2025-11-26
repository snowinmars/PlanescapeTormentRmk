// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DBARKING.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\de_DE\dialog.tlk
// dialogF  : (none)

BEGIN ~DBARKING~

IF ~  Global("Wilder","GLOBAL",0)
~ THEN BEGIN 0 // from:
  SAY #9712 /* ~Dieser wild dreinblickende Mann ist nach vorne gekrümmt und knurrt leise vor sich hin. Seine Haare sehen aus, als hätte er sie seit Jahren nicht schneiden lassen... sie sind so lang, daß sie wie ein Schleier über seine Augen hängen. Er trägt einen langen, dünnen Schnurrbart, der von Fett und Schweiß verklebt ist. Die Schnurrbartspitzen hängen nach unten, so daß sie sich bereits in seinem zottigen Bart verheddert haben.~ */
  IF ~  NearbyDialog("DAnnah")
Global("Annah_Wilder_Quip_1","GLOBAL",0)
~ THEN REPLY #13835 /* ~"Sei gegrüßt."~ */ DO ~SetGlobal("Annah_Wilder_Quip_1","GLOBAL",1)
~ EXTERN ~DANNAH~ 93
  IF ~  NearbyDialog("DAnnah")
Global("Annah_Wilder_Quip_1","GLOBAL",1)
~ THEN REPLY #13836 /* ~"Sei gegrüßt."~ */ GOTO 1
  IF ~  !NearbyDialog("DAnnah")
~ THEN REPLY #13837 /* ~"Sei gegrüßt."~ */ GOTO 1
  IF ~  NearbyDialog("DAnnah")
Global("Annah_Wilder_Quip_1","GLOBAL",0)
~ THEN REPLY #13838 /* ~Knurr ihn an.~ */ DO ~SetGlobal("Annah_Wilder_Quip_1","GLOBAL",1)
IncrementGlobalOnceEx("GLOBALChaotic_Wilder_1","GLOBALLaw",-1)
~ EXTERN ~DANNAH~ 93
  IF ~  NearbyDialog("DAnnah")
Global("Annah_Wilder_Quip_1","GLOBAL",1)
~ THEN REPLY #13839 /* ~Knurr ihn an.~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Wilder_1","GLOBALLaw",-1)
~ GOTO 1
  IF ~  !NearbyDialog("DAnnah")
~ THEN REPLY #13840 /* ~Knurr ihn an.~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Wilder_1","GLOBALLaw",-1)
~ GOTO 1
  IF ~  !NearbyDialog("DMorte")
~ THEN REPLY #13841 /* ~Laß den Mann in Ruhe.~ */ EXIT
  IF ~  NearbyDialog("DMorte")
~ THEN REPLY #13842 /* ~Laß den Mann in Ruhe.~ */ EXTERN ~DMORTE~ 165
END

IF ~~ THEN BEGIN 1 // from: 0.1 0.2 0.4 0.5
  SAY #13793 /* ~Der Man hält mitten im Knurren inne und greift nach oben, um den Vorhang der Haare zu teilen, die seine Augen verdecken. Als seine verdorrten Hände die dreckigen Locken zur Seite schieben, fallen braunrote Käfer aus seinen Haaren und laufen auf den Kopfsteinen auseinander. Hinter dem Haarvorhang hat der Mann mondbleiche Haut und tiefe Falten. Seine dicken, buschigen Augenbrauen formen ein 'V', als er dich anstarrt. "Hand, meine nehmen und Mond fliegen, zuuuuuu?"~ */
  IF ~~ THEN REPLY #13843 /* ~"Äh, heute nicht. Ich hätte ein paar Fragen..."~ */ GOTO 2
  IF ~  CheckStatGT(Protagonist,13,INT)
CheckStatLT(Protagonist,14,WIS)
~ THEN REPLY #13844 /* ~"'Deine Hand nehmen und zum Mond fliegen?' Nicht heute, mein Freund."~ */ GOTO 4
  IF ~  CheckStatGT(Protagonist,13,WIS)
~ THEN REPLY #13845 /* ~"'Deine Hand nehmen und zum Mond fliegen?' Nicht heute, mein Freund."~ */ GOTO 4
  IF ~~ THEN REPLY #13846 /* ~"Mond- Monde- Ednom- Dnom?"~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Wilder_3","GLOBALLaw",-1)
~ GOTO 4
  IF ~~ THEN REPLY #13847 /* ~Knurr ihn an und fang an zu bellen.~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Wilder_3","GLOBALLaw",-1)
~ GOTO 4
  IF ~~ THEN REPLY #13848 /* ~Halte deinen Kopf schräg, als ob du ihn genau beobachten würdest.~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Wilder_3","GLOBALLaw",-1)
~ GOTO 4
  IF ~  !NearbyDialog("DMorte")
~ THEN REPLY #13849 /* ~"Äh... Na dann, leb wohl."~ */ EXIT
  IF ~  NearbyDialog("DMorte")
~ THEN REPLY #13850 /* ~"Äh... Na dann, leb wohl."~ */ EXTERN ~DMORTE~ 165
END

IF ~~ THEN BEGIN 2 // from: 1.0
  SAY #13794 /* ~Der Mann nickt eifrig mit dem Kopf und klatscht sich dann wie ein Kind in die Hände. "Antworten spalten mit halbblauem Öl! WISSEN! Selbst deiner Frage ausweichen!" Danach fällt er in ein langes und trällerndes Jaulen, das er mit einem scharfen Bellen beendet.~ */
  IF ~~ THEN REPLY #13851 /* ~"He, beruhige dich. Ich hab' ein paar Fragen an dich..."~ */ GOTO 3
  IF ~  !NearbyDialog("DMorte")
~ THEN REPLY #13852 /* ~"Äh... Na dann, leb wohl."~ */ EXIT
  IF ~  NearbyDialog("DMorte")
~ THEN REPLY #13853 /* ~"Äh... Na dann, leb wohl."~ */ EXTERN ~DMORTE~ 165
END

IF ~~ THEN BEGIN 3 // from: 2.0 4.0 4.1
  SAY #13795 /* ~Der Mann wirft seinen Kopf zurück und *jault*. Es ist ein so schreckliches Geräusch, daß du dir deine Ohren zuhältst. Und selbst das ist nicht genug: Als du deine Ohren bedeckst, scheint das Jaulen in ein Schrillen und Bohren in deinem Kopf anzuschwellen, das in deine Ohren gleitet, sich unter der Haut vergräbt und dann in deinem Schädel entlangkriecht und die Fetzen deiner geistigen Gesundheit frißt. Der Klang ist so unerträglich, daß du nicht einmal die Kraft zum Sprechen aufbringst.~ */
  IF ~  !NearbyDialog("DMorte")
~ THEN REPLY #13854 /* ~Dreh dich um, laß den Mann in Ruhe.~ */ EXIT
  IF ~  NearbyDialog("DMorte")
~ THEN REPLY #13855 /* ~Dreh dich um, laß den Mann in Ruhe.~ */ EXTERN ~DMORTE~ 165
END

IF ~~ THEN BEGIN 4 // from: 1.1 1.2 1.3 1.4 1.5
  SAY #13796 /* ~Der Mann runzelt die Stirn, aber seine Augenbrauen gehen nach oben in ein umgekehrtes 'V', wodurch ein bizarrer Ausdruck entsteht. Du hast keine Ahnung, wie er diesen Gesichtsausdruck hinbekommen hat, aber es ist unangenehm, ihn dabei zu beobachten, wie seine Gesichtsmuskeln sich in ein neues Muster legen. Du kannst nicht sagen, ob er wütend, neugierig oder beides oder keins von beidem ist. "Einsen küssensprechen ein Mann, Antworten Wolle das Herz einer Waldfrau."~ */
  IF ~~ THEN REPLY #13856 /* ~"Äh, heute nicht. Ich hätte ein paar Fragen..."~ */ GOTO 3
  IF ~~ THEN REPLY #13857 /* ~"Was?"~ */ GOTO 3
  IF ~  GlobalLT("Law","GLOBAL",-12)
~ THEN REPLY #13858 /* ~Improvisiere ein Lied: "Einzelner Mann, Einzeller-Mann, gehen durch den Wald... das Herz einer Waldfrau kann man nicht brechen und lachend im weißen Schnee."~ */ DO ~SetGlobal("Wilder","GLOBAL",1)
~ GOTO 5
  IF ~  CheckStatGT(Protagonist,13,INT)
CheckStatLT(Protagonist,14,WIS)
~ THEN REPLY #13859 /* ~"'Am Kuß einer Frau erkennst du ihr Herz, doch die Antwort drauf ist, was du willst?' Also gut, aber du solltest wissen: meine Antwort ist eine Frage, und eine Antwort von dir ist, was ich will."~ */ DO ~SetGlobal("Wilder","GLOBAL",1)
~ GOTO 5
  IF ~  CheckStatGT(Protagonist,13,WIS)
~ THEN REPLY #13860 /* ~"'Am Kuß einer Frau erkennst du ihr Herz, doch die Antwort drauf ist, was du willst?' Also gut, aber du solltest wissen: meine Antwort ist eine Frage, und eine Antwort von dir ist, was ich will."~ */ DO ~SetGlobal("Wilder","GLOBAL",1)
~ GOTO 5
  IF ~  !NearbyDialog("DMorte")
~ THEN REPLY #13861 /* ~"Äh... Na dann, leb wohl."~ */ EXIT
  IF ~  NearbyDialog("DMorte")
~ THEN REPLY #13862 /* ~"Äh... Na dann, leb wohl."~ */ EXTERN ~DMORTE~ 165
END

IF ~~ THEN BEGIN 5 // from: 4.2 4.3 4.4
  SAY #13797 /* ~Der Mann scheint vom Klang deiner Stimme fasziniert. Bei jedem Wort, das du sprichst, flackert in seinen Augen ein Licht auf. "Bellender Wilder Bin-ich, ich-Bin! Wollen, Reien-Frage, Darfst Du, Du Darfst?"~ */
  IF ~  Global("Know_Chaosmen","GLOBAL",0)
~ THEN REPLY #13863 /* ~"Du kannst, und ich werde: Wer... oder was... bist du?"~ */ DO ~SetGlobal("Know_Chaosmen","GLOBAL",1)
~ GOTO 13
  IF ~  Global("Know_Chaosmen","GLOBAL",1)
~ THEN REPLY #13864 /* ~" Du kannst, und ich werde: Gehörst du zu den Chaoten?"~ */ GOTO 13
  IF ~  Global("Know_SDB","GLOBAL",1)
~ THEN REPLY #13865 /* ~"Meine Frage lautet wie folgt: Bist du einer von den Ausgehungerten Bellenden Hunden?"~ */ GOTO 14
  IF ~  Global("Know_Chaosmen","GLOBAL",1)
Global("Join_Chaosmen","GLOBAL",0)
~ THEN REPLY #13866 /* ~"Kann ich mich den Chaoten anschließen?"~ */ GOTO 15
  IF ~  GlobalLT("Law","GLOBAL",-20)
Global("Know_Chaosmen","GLOBAL",1)
Global("Join_Chaosmen","GLOBAL",0)
~ THEN REPLY #13867 /* ~"Schließen an kann' ich den Chaoten mich?"~ */ GOTO 25
  IF ~  GlobalLT("Law","GLOBAL",-35)
Global("Know_Chaosmen","GLOBAL",1)
Global("Join_Chaosmen","GLOBAL",1)
Global("Join_Chaosmen_2","GLOBAL",0)
~ THEN REPLY #13868 /* ~"Schließen an kann' ich den Chaoten mich?"~ */ DO ~SetGlobal("Join_Chaosmen_2","GLOBAL",1)
~ GOTO 16
  IF ~  Global("Pharod","GLOBAL",0)
~ THEN REPLY #13869 /* ~"Ich suche nach einem Mann mit dem Namen Pharod. Hast du mal von ihm gehört?"~ */ GOTO 12
  IF ~  Global("Journal","GLOBAL",0)
Global("Wilder_Journal","GLOBAL",0)
~ THEN REPLY #13870 /* ~"Ich suche ein verlorengegangenes Journal. Weißt du, wo ich eins finden könnte?"~ */ DO ~SetGlobal("Wilder_Journal","GLOBAL",1)
AddexperienceParty(1000)
~ GOTO 7
  IF ~  Global("Wilder_Journal","GLOBAL",1)
~ THEN REPLY #13871 /* ~"Was hast du noch mal über meine Journale gesagt?"~ */ GOTO 7
  IF ~  !Global("Join_Chaosmen","GLOBAL",0)
!Global("Join_Chaosmen","GLOBAL",2)
~ THEN REPLY #13872 /* ~"Was hab' ich davon, wenn ich mich den Chaoten anschließe? Bekomm ich irgendwelche speziellen Kräfte? Oder besonderen Fähigkeiten?"~ */ GOTO 29
  IF ~  !Global("Join_Chaosmen","GLOBAL",0)
!Global("Join_Chaosmen","GLOBAL",2)
~ THEN REPLY #13873 /* ~"Kann ich mal sehen, was die Chaoten ihren Mitgliedern für Dinge verkaufen?"~ */ GOTO 30
  IF ~  !NearbyDialog("DMorte")
~ THEN REPLY #13874 /* ~"Äh... keine Reien-Frage, heute. Leb wohl."~ */ EXIT
  IF ~  NearbyDialog("DMorte")
~ THEN REPLY #13875 /* ~"Äh... keine Reien-Frage, heute. Leb wohl."~ */ EXTERN ~DMORTE~ 165
END

IF ~~ THEN BEGIN 6 // from: 8.3 9.2 10.2 11.2 12.0 13.0 14.0 15.0 16.1 18.0 20.2 23.0 24.0 25.9 26.0 27.5 28.1 29.0 31.0 32.1 33.0 34.0 35.0 35.1 35.3
  SAY #13798 /* ~Er klatscht begeistert in die Hände, wie ein Kind im Zirkus, und schreit dann heulend: "Nefra GE! Nefra GE!"~ */
  IF ~  Global("Know_Chaosmen","GLOBAL",0)
~ THEN REPLY #13876 /* ~"Weich der Frage nicht aus: Wer... oder was... bist du?"~ */ DO ~SetGlobal("Know_Chaosmen","GLOBAL",1)
~ GOTO 13
  IF ~  Global("Know_Chaosmen","GLOBAL",1)
~ THEN REPLY #13877 /* ~"Weich dieser Frage nicht aus: Gehörst du zu den Chaoten?"~ */ GOTO 13
  IF ~  Global("Know_SDB","GLOBAL",1)
~ THEN REPLY #13878 /* ~"Meine Frage lautet wie folgt: Bist du einer von den Ausgehungerten Bellenden Hunden?"~ */ GOTO 14
  IF ~  Global("Know_Chaosmen","GLOBAL",1)
Global("Join_Chaosmen","GLOBAL",0)
~ THEN REPLY #13879 /* ~"Kann ich mich den Chaoten anschließen?"~ */ GOTO 15
  IF ~  GlobalLT("Law","GLOBAL",-20)
Global("Know_Chaosmen","GLOBAL",1)
Global("Join_Chaosmen","GLOBAL",0)
~ THEN REPLY #13880 /* ~"Schließen an kann' ich den Chaoten mich?"~ */ GOTO 25
  IF ~  GlobalLT("Law","GLOBAL",-35)
Global("Know_Chaosmen","GLOBAL",1)
Global("Join_Chaosmen","GLOBAL",1)
Global("Join_Chaosmen_2","GLOBAL",0)
~ THEN REPLY #13881 /* ~"Schließen an kann' ich den Chaoten mich?"~ */ DO ~SetGlobal("Join_Chaosmen_2","GLOBAL",1)
~ GOTO 16
  IF ~  Global("Pharod","GLOBAL",0)
~ THEN REPLY #13882 /* ~"Ich suche nach einem Mann mit dem Namen Pharod. Hast du mal von ihm gehört?"~ */ GOTO 12
  IF ~  Global("Journal","GLOBAL",0)
Global("Wilder_Journal","GLOBAL",0)
~ THEN REPLY #13883 /* ~"Ich suche ein verlorengegangenes Journal. Weißt du, wo ich eins finden könnte?"~ */ DO ~SetGlobal("Wilder_Journal","GLOBAL",1)
AddexperienceParty(1000)
~ GOTO 7
  IF ~  Global("Wilder_Journal","GLOBAL",1)
~ THEN REPLY #13884 /* ~"Was hast du noch mal über meine Journale gesagt?"~ */ GOTO 7
  IF ~  !Global("Join_Chaosmen","GLOBAL",0)
!Global("Join_Chaosmen","GLOBAL",2)
~ THEN REPLY #13885 /* ~"Was hab' ich davon, wenn ich mich den Chaoten anschließe? Bekomm ich irgendwelche speziellen Kräfte? Oder besonderen Fähigkeiten?"~ */ GOTO 29
  IF ~  !Global("Join_Chaosmen","GLOBAL",0)
!Global("Join_Chaosmen","GLOBAL",2)
~ THEN REPLY #13886 /* ~"Kann ich mal sehen, was die Chaoten ihren Mitgliedern für Dinge verkaufen?"~ */ GOTO 29
  IF ~  !NearbyDialog("DMorte")
~ THEN REPLY #13887 /* ~"Äh... keine Reien-Frage, heute. Leb wohl."~ */ EXIT
  IF ~  NearbyDialog("DMorte")
~ THEN REPLY #13888 /* ~"Äh... keine Reien-Frage, heute. Leb wohl."~ */ EXTERN ~DMORTE~ 165
END

IF ~~ THEN BEGIN 7 // from: 5.7 5.8 6.7 6.8
  SAY #13799 /* ~Er sieht so aus, als wolle er widersprechen, dann schnellt jedoch plötzlich seine linke Faust hoch und schlägt ihm gegen die Schläfe. Er jault vor Schmerz, verstummt unvermittelt und blinzelt. "Eins ist in deinem Gästezimmer in der Halle der Sinnsaten, und ein anderes ist in den Mauern einer Gruft, unter der Stadt versiegelt. Die anderen sind..." Bevor er weitersprechen kann, kommt seine rechte Faust hochgeschnellt und schlägt ihm ins Gesicht, so daß er wieder jault. Er blinzelt und schüttelt einen Moment lang den Kopf, als ob er über sich selbst überrascht ist, und lächelt dann unbehaglich.~ */
  IF ~~ THEN REPLY #13889 /* ~"Kannst du mir sagen, wo wenigstens eins von ihnen ist?"~ */ JOURNAL #58924 /* ~Ich habe vor der Bar "Zur Schwelenden Leiche" mit Bellender Wilder "gesprochen". Zu meiner Überraschung schien er nicht nur zu wissen, wo mein Journal ist, sondern hat auch behauptet, daß es mehr als nur eins davon gebe. Er hat gesagt, eines sei 'tief unter der Stadt in den Mauern einer Gruft versiegelt, wo die Steine weinen '. Ein anderes sei 'in einem Schrank in meinem Gästezimmer in der Halle der Sinnsaten'. Es gäbe außerdem noch weitere zu finden. Ich weiß zwar nicht, wie zuverlässig seine Informationen sind, aber er schien völlig bei Sinnen zu sein, als er die Journale erwähnte.~ */ GOTO 8
END

IF ~~ THEN BEGIN 8 // from: 7.0
  SAY #13800 /* ~Er sieht so aus, als wolle er widersprechen, dann schnellt jedoch plötzlich seine linke Faust hoch und schlägt ihm gegen die Schläfe. Er jault vor Schmerz, verstummt unvermittelt und blinzelt. "Eins ist in einem Schrank in deinem Gästezimmer in der Halle der Sinnsaten, und ein anderes ist tief unter der Stadt in den Mauern einer Gruft versiegelt, wo die Steine weinen. Die anderen sind..." Bevor er weitersprechen kann, kommt seine rechte Faust hochgeschnellt und schlägt ihm ins Gesicht, so daß er wieder jault. Er blinzelt und schüttelt einen Moment lang den Kopf, als ob er über sich selbst überrascht ist, und lächelt dann unbehaglich.~ */
  IF ~~ THEN REPLY #13890 /* ~"Halle der Sinnsaten? Wo ist die?"~ */ GOTO 9
  IF ~~ THEN REPLY #13891 /* ~"Gruft unter der Stadt? Wo?"~ */ GOTO 10
  IF ~~ THEN REPLY #13892 /* ~"Wo sind die anderen Journale?"~ */ GOTO 11
  IF ~~ THEN REPLY #13893 /* ~"Ich hätte da noch ein paar Fragen."~ */ GOTO 6
  IF ~  !NearbyDialog("DMorte")
~ THEN REPLY #13894 /* ~"Äh... Na dann, leb wohl."~ */ EXIT
  IF ~  NearbyDialog("DMorte")
~ THEN REPLY #13895 /* ~"Äh... Na dann, leb wohl."~ */ EXTERN ~DMORTE~ 165
END

IF ~~ THEN BEGIN 9 // from: 8.0 10.0 11.0
  SAY #13801 /* ~Bellender Wilder hält seine Hände hoch... er scheint sich nicht daran zu erinnern, was er gerade gesagt hat.~ */
  IF ~~ THEN REPLY #13896 /* ~"Du hast gesagt, daß eins in einem Sarkophag unter der Stadt liege? Wo?"~ */ GOTO 10
  IF ~~ THEN REPLY #13897 /* ~"Wo sind die anderen Journale, von denen du gesprochen hast?"~ */ GOTO 11
  IF ~~ THEN REPLY #13898 /* ~"Ich hätte da noch ein paar Fragen."~ */ GOTO 6
  IF ~  !NearbyDialog("DMorte")
~ THEN REPLY #13899 /* ~"Naja, vergiß es. Ich werd's schon selbst finden."~ */ EXIT
  IF ~  NearbyDialog("DMorte")
~ THEN REPLY #13900 /* ~"Naja, vergiß es. Ich werd's schon selbst finden."~ */ EXTERN ~DMORTE~ 165
END

IF ~~ THEN BEGIN 10 // from: 8.1 9.0 11.1
  SAY #13802 /* ~Bellender Wilder sieht einen Moment lang verängstigt aus, dann zeigt er in einer hoffnungsvollen Geste nach oben. "Äh... da?"Er schluckt. Er scheint es nicht zu wissen, und aus irgendeinem Grund glaubst du ihm.~ */
  IF ~~ THEN REPLY #13901 /* ~"Du hast gesagt, daß eins in der Halle der Sinnsaten sei. Wo ist die?"~ */ GOTO 9
  IF ~~ THEN REPLY #13902 /* ~"Wo sind die anderen Journale, von denen du gesprochen hast?"~ */ GOTO 11
  IF ~~ THEN REPLY #13903 /* ~"Ich hätte da noch ein paar Fragen."~ */ GOTO 6
  IF ~  !NearbyDialog("DMorte")
~ THEN REPLY #13904 /* ~"Naja, vergiß es. Ich werd's schon selbst finden."~ */ EXIT
  IF ~  NearbyDialog("DMorte")
~ THEN REPLY #13905 /* ~"Naja, vergiß es. Ich werd's schon selbst finden."~ */ EXTERN ~DMORTE~ 165
END

IF ~~ THEN BEGIN 11 // from: 8.2 9.1 10.1
  SAY #13803 /* ~Bellender Wilder zuckt mit den Schultern und beobachtet dich mißtrauisch. "Woanders vielleicht?" Er schluckt.~ */
  IF ~~ THEN REPLY #13906 /* ~"Du hast gesagt, daß eins in der Halle der Sinnsaten sei. Wo ist die?"~ */ GOTO 9
  IF ~~ THEN REPLY #13907 /* ~"Du hast gesagt, daß eins in einem Sarkophag unter der Stadt liege? Wo?"~ */ GOTO 10
  IF ~~ THEN REPLY #13908 /* ~"Ich hätte da noch ein paar Fragen."~ */ GOTO 6
  IF ~  !NearbyDialog("DMorte")
~ THEN REPLY #13909 /* ~"Naja, vergiß es. Ich werd sie schon selbst finden."~ */ EXIT
  IF ~  NearbyDialog("DMorte")
~ THEN REPLY #13910 /* ~"Naja, vergiß es. Ich werd sie schon selbst finden."~ */ EXTERN ~DMORTE~ 165
END

IF ~~ THEN BEGIN 12 // from: 5.6 6.6
  SAY #13804 /* ~Bellender Wilder zuckt mit den Schultern und antwortet dann in einem Gesang. "Faire Chance? Nicht fair, nicht Chance, verloren nicht, helfen nicht..." Er knurrt sich selbst an, als ob er so seinen Hals freimachen möchte. "Vielleicht verlierst du ihn erst, dann fragst mich, dann faire Chance wird es sein?"~ */
  IF ~~ THEN REPLY #13911 /* ~"Um ihn zu verlieren, muss ich ihn zuerst finden. Ich hätte noch ein paar Fragen..."~ */ GOTO 6
  IF ~  !NearbyDialog("DMorte")
~ THEN REPLY #13912 /* ~"Naja, vergiß es. Ich werd ihn schon selbst finden."~ */ EXIT
  IF ~  NearbyDialog("DMorte")
~ THEN REPLY #13913 /* ~"Naja, vergiß es. Ich werd ihn schon selbst finden."~ */ EXTERN ~DMORTE~ 165
END

IF ~~ THEN BEGIN 13 // from: 5.0 5.1 6.0 6.1
  SAY #13805 /* ~"Ka-osch!" Er stottert das Wort hervor, als ob er Schwierigkeiten hat, es auszusprechen. "Manche sagen Xaositekten, Ich sage Ne-tekt-I-soax. CHAOSmänner. Männer nein. Rennäm nein, Männer ja, drei Nasen machen ein ja." Er kauert sich auf seinen Knien nieder und beginnt, vor- und zurückzuschwingen, wobei er in einem kindlichen Sopran singt: "Chao-ten, Chao-ten, hopp-hopp heim, ein Bund ist-es, doch wir-sind allein."~ */
  IF ~~ THEN REPLY #13914 /* ~"So, du bist also einer der Chaoten. Gut. Ich hätte noch ein paar Fragen..."
~ */ GOTO 6
  IF ~  !NearbyDialog("DMorte")
~ THEN REPLY #13915 /* ~"Äh... Na dann, leb wohl."~ */ EXIT
  IF ~  NearbyDialog("DMorte")
~ THEN REPLY #13916 /* ~"Äh... Na dann, leb wohl."~ */ EXTERN ~DMORTE~ 165
END

IF ~~ THEN BEGIN 14 // from: 5.2 6.2
  SAY #13806 /* ~Zur Antwort beginnt er, so laut er kann zu bellen. Du siehst ihm die Spucke in strömenden Bögen aus dem Mund fliegen, und du gehst einen Schritt zurück, um trocken zu bleiben. Nach einer Weile hört er auf und stößt dann ein langes, verlorenes Jaulen aus.~ */
  IF ~~ THEN REPLY #13917 /* ~"Das heißt Ja, nehm ich an. Gut. Ich hätte noch ein paar Fragen..."~ */ GOTO 6
  IF ~  !NearbyDialog("DMorte")
~ THEN REPLY #13918 /* ~"Äh... Na dann, leb wohl."~ */ EXIT
  IF ~  NearbyDialog("DMorte")
~ THEN REPLY #13919 /* ~"Äh... Na dann, leb wohl."~ */ EXTERN ~DMORTE~ 165
END

IF ~~ THEN BEGIN 15 // from: 5.3 6.3
  SAY #13807 /* ~Er sieht dich entsetzt an, zuckt mit den Schultern und beugt sich dann vor, um dich zu beschnuppern. "Hocken... steif, dürr... wirr, Vamp... Tramp, Zucker..." Er schnaubt und jault. "Schlucker!"~ */
  IF ~~ THEN REPLY #13920 /* ~"Das heißt Nein, nehme ich an. Gut. Ich hätte noch ein paar Fragen..."~ */ GOTO 6
  IF ~  GlobalLT("Law","GLOBAL",-20)
~ THEN REPLY #13921 /* ~"Hmmmm. Schließen an kann' ich den Chaoten?"~ */ GOTO 25
  IF ~  !NearbyDialog("DMorte")
~ THEN REPLY #13922 /* ~"Äh... Na dann, leb wohl."~ */ EXIT
  IF ~  NearbyDialog("DMorte")
~ THEN REPLY #13923 /* ~"Äh... Na dann, leb wohl."~ */ EXTERN ~DMORTE~ 165
END

IF ~~ THEN BEGIN 16 // from: 5.5 6.5
  SAY #13808 /* ~Das ist das erste Mal, daß etwas, was du gesagt hast, Bellender Wilder zu verwirren scheint. Er denkt einen Moment lang nach, jault und piekst dann mit seinem Finger nach dir. "Bist ein Mann-des-Chaos schon du! Schon du bist-bist-bist!"~ */
  IF ~~ THEN REPLY #13924 /* ~Lächle, kneif die Augen zusammen und sag: "Ge-nau."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Wilder_4","GLOBALLaw",-3)
AddexperienceParty(2000)
~ GOTO 17
  IF ~~ THEN REPLY #13925 /* ~"Oh, ich vergaß. Entschuldigung. Ich hab' noch ein paar andere Fragen..."~ */ GOTO 6
  IF ~  !NearbyDialog("DMorte")
~ THEN REPLY #13926 /* ~"Na, es war den Versuch wert. Leb wohl."~ */ EXIT
  IF ~  NearbyDialog("DMorte")
~ THEN REPLY #13927 /* ~"Na, es war den Versuch wert. Leb wohl."~ */ EXTERN ~DMORTE~ 165
END

IF ~~ THEN BEGIN 17 // from: 16.0
  SAY #13809 /* ~Es ist so, als hätte jemand ein Licht in Wilders Schädel angezündet, denn seine Augen springen auf und er lächelt breit. Aus dem Lächeln wird ein Grinsen, dann ein spöttisches Grinsen. Er beginnt, vor dir herumzutollen und -tanzen. "Klug! Fug! Trug!"Er schlägt dir mit beiden Händen auf die Schulter und jault dann den Himmel an. "Wieder du bist Xaositekt! Zweimal! Dreimal! Breimal!"~ */
  IF ~  GlobalGT("Law","GLOBAL",-20)
~ THEN REPLY #13928 /* ~"Brei-bin-ich, Xaositekt-bin-ich!"~ */ GOTO 18
  IF ~  GlobalLT("Law","GLOBAL",-35)
~ THEN REPLY #13929 /* ~"Brei-bin-ich, Xaositekt-bin-ich!"~ */ GOTO 19
END

IF ~~ THEN BEGIN 18 // from: 17.0
  SAY #13810 /* ~Wilder hört auf zu tanzen, um dich anzustarren. "Ein Bundmeister wirst du bald sein mit einem solchen Gehirn, einen Preis zahlt dein Gehirn für solche Gedanken!" Er kichert und wirft seine Hände in die Luft. "Der verrückte König kommt, und die Ebenen fallen nach oben!"~ */
  IF ~~ THEN REPLY #13930 /* ~"Vielleicht, vielleicht. Aber für dich andere Fragen hat ich..."~ */ GOTO 6
END

IF ~~ THEN BEGIN 19 // from: 17.1
  SAY #13811 /* ~Wilder macht vor Überraschung ein 'O'. "Ein Bundmeister bist du geworden, der Preis, den dein Gehirn für solche Gedanken zahlt!" Er zeigt mit dem Finger wie mit einem Zepter auf dich. "Verbeuge dich, Bundmeister! König der Chaoten! Ich ernenne dich zum Mann von Fleisch und Weib von Chaos! Du darfst jetzt das Kraut küssen!"~ */
  IF ~~ THEN REPLY #13931 /* ~"Äh... Bundmeister?"~ */ GOTO 21
  IF ~~ THEN REPLY #13932 /* ~"Bundmeister-bin-ich! Kraut für jederkein!"~ */ GOTO 24
END

IF ~~ THEN BEGIN 20 // from: 35.2
  SAY #13812 /* ~Wilder schaut auf, als er das hört, und macht vor Überraschung ein 'O'. Er springt auf die Füße und zeigt mit seinem Finger wie mit einem Zepter auf dich. "Verbeuge dich, Bundmeister! König ALLER Chaoten! Ich ernenne dich zum Mann von Fleisch und Weib von Chaos! Du darfst jetzt das Kraut küssen!"~ */
  IF ~~ THEN REPLY #13933 /* ~"Äh... Bundmeister?"~ */ GOTO 21
  IF ~~ THEN REPLY #13934 /* ~"Bundmeister-bin-ich! Kraut für jederkein!"~ */ GOTO 24
  IF ~  Global("Join_Chaosmen","GLOBAL",3)
~ THEN REPLY #14006 /* ~"Hör dir nicht mein Nefra GE an, Wilder, Nefra GE hab' ich..."~ */ GOTO 6
END

IF ~~ THEN BEGIN 21 // from: 19.0 20.0
  SAY #13813 /* ~Wilder kreuzt die Arme. "König der Chaoten, bist du, Bundmeister ist nur ein Name, den du dir anlegst wie ein dreckiges Hemd."~ */
  IF ~~ THEN REPLY #13935 /* ~"Ich will kein Bundmeister sein."~ */ GOTO 22
  IF ~~ THEN REPLY #13936 /* ~"Bundmeister-bin-ich! Dreckige Hemden für keinerdar!"~ */ GOTO 24
END

IF ~~ THEN BEGIN 22 // from: 21.0
  SAY #13814 /* ~Wilder zuckt mit den Schultern und grinst verschlagen. "Wie das Leben, keine Wahl. Größtes Pech und jede Menge Flüche auf dich!" Er kneift die Augen zusammen. "Du willst Titel ändern, ändere deine Meinung. Eins einfacher als anderes, wenn du nicht Dickschädel bist!"~ */
  IF ~~ THEN REPLY #13937 /* ~"Also, ich denke nicht, daß es fair ist, ein Bundmeister werden zu müssen, ohne überhaupt gefragt worden zu sein. So was sollte irgendwie geregelt sein."~ */ DO ~IncrementGlobalOnceEx("GLOBALLawful_Wilder_1","GLOBALLaw",1)
~ GOTO 23
  IF ~~ THEN REPLY #13938 /* ~"Bundmeister-bin-ich! Schädel-dicke all über!"~ */ GOTO 24
END

IF ~~ THEN BEGIN 23 // from: 22.0
  SAY #13815 /* ~Wilder verbeugt sich tief und preßt seine Finger in einem Dreieck zusammen. "Schwierig, schwierig! Jetzt kein Bundmeister bist du! Fair und Regeln und Gesetze und solche dickköpfigen Dinge können nicht im Kopf eines Bundmeisters sein..." Er denkt einen Moment lang nach. "Ketten sind ab!" Er runzelt nochmals die Stirn, zuckt dann mit den Schultern. "Und Ketten sind an! Aber kein Bundmeister jetzt."~ */
  IF ~~ THEN REPLY #13939 /* ~"Nachdem wir also die Entthronung hinter uns gebracht hätten, hätte ich noch ein paar Fragen an dich..."~ */ GOTO 6
  IF ~~ THEN REPLY #13940 /* ~"Ich wollte das bloß bereinigen. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 24 // from: 19.1 20.1 21.1 22.1
  SAY #13816 /* ~Du und Wilder tollt einige Minuten verrückt herum und jault in den Himmel. Einige Vorübergehende sehen euch seltsam an, und jemand in der Ferne beginnt euch anzuschreien, daß ihr still sein sollt. Schließlich stolpert Wilder, und während er wieder aufsteht, hört der Tanz auf.~ */
  IF ~~ THEN REPLY #13941 /* ~"Ich habe Fragen!"~ */ DO ~SetGlobal("Join_Chaosmen","GLOBAL",3)
~ GOTO 6
  IF ~~ THEN REPLY #13942 /* ~"Ich hab' keine Fragen! Leb wohl! Wohl leb!"~ */ DO ~SetGlobal("Join_Chaosmen","GLOBAL",3)
~ EXIT
END

IF ~~ THEN BEGIN 25 // from: 5.4 6.4 15.1
  SAY #13817 /* ~Während du diese Worte sprichst, scheint ein Funken menschlichen Lichts in den Augen des Mannes aufzuleuchten. Er sieht einen Moment lang zum Himmel empor, hebt dann seinen linken Fuß und sieht darunter. Er scheint nichts zu finden, also streckt er seine Hände aus und richtet auf beide je ein Auge, wodurch seine Augen in unterschiedliche Richtungen sehen. Dann schüttelt er seinen Kopf (wobei er seine Augen wieder zurechtdreht) und schielt dir ins Gesicht.~ */
  IF ~  Global("Join_Godsmen","GLOBAL",6)
~ THEN REPLY #13943 /* ~"Ich bin schon Mitglied der Göttermenschen, aber..."~ */ GOTO 27
  IF ~  Global("Join_Dustmen","GLOBAL",1)
~ THEN REPLY #13944 /* ~"Ich bin schon Mitglied der Staubmenschen, aber..."~ */ GOTO 27
  IF ~  Global("Join_Anarchists","GLOBAL",1)
~ THEN REPLY #13945 /* ~"Ich bin schon Mitglied der Anarchisten, aber..."~ */ GOTO 27
  IF ~  Global("Join_Sensates","GLOBAL",1)
~ THEN REPLY #13946 /* ~"Ich bin schon Mitglied der Sinnsaten, aber..."~ */ GOTO 27
  IF ~  Global("Join_Godsmen","GLOBAL",6)
~ THEN REPLY #13947 /* ~"Ich bin schon Mitglied der Göttermenschen. Ich hab' meine Meinung geändert - ich will den Spieß nicht dreh'n."~ */ GOTO 26
  IF ~  Global("Join_Dustmen","GLOBAL",1)
~ THEN REPLY #13948 /* ~" Ich bin schon Mitglied der Staubmenschen. Ich hab' meine Meinung geändert - ich will den Spieß nicht dreh'n."~ */ GOTO 26
  IF ~  Global("Join_Anarchists","GLOBAL",1)
~ THEN REPLY #13949 /* ~" Ich bin schon Mitglied der Anarchisten. Ich hab' meine Meinung geändert - ich will den Spieß nicht dreh'n."~ */ GOTO 26
  IF ~  Global("Join_Sensates","GLOBAL",1)
~ THEN REPLY #13950 /* ~" Ich bin schon Mitglied der Sinnsaten. Ich hab' meine Meinung geändert - ich will den Spieß nicht umdreh'n."~ */ GOTO 26
  IF ~  !Global("Join_Godsmen","GLOBAL",6)
!Global("Join_Dustmen","GLOBAL",1)
!Global("Join_Anarchists","GLOBAL",1)
!Global("Join_Sensates","GLOBAL",1)
~ THEN REPLY #13951 /* ~"So... was ist der nächste Schritt?"~ */ DO ~SetGlobal("Join_Chaosmen","GLOBAL",1)
AddexperienceParty(1000)
~ GOTO 28
  IF ~~ THEN REPLY #13952 /* ~"Weißt du was, ist egal. Ich hätt statt dessen ein paar Fragen..."~ */ GOTO 6
  IF ~  !Global("Join_Godsmen","GLOBAL",6)
!Global("Join_Dustmen","GLOBAL",1)
!Global("Join_Anarchists","GLOBAL",1)
!Global("Join_Sensates","GLOBAL",1)
~ THEN REPLY #13953 /* ~"Ach, weißt du, vergiß es. Ich will kein Chaot sein. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 26 // from: 25.4 25.5 25.6 25.7
  SAY #13818 /* ~Wilder zuckt mit den Schultern. Es scheint ihn nicht sehr zu kümmern. "No-kay, Kay-O, hey?"~ */
  IF ~~ THEN REPLY #13954 /* ~"Ich hätte aber noch ein paar Fragen..."
~ */ GOTO 6
  IF ~~ THEN REPLY #13955 /* ~"Äh... Na dann, leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 27 // from: 25.0 25.1 25.2 25.3
  SAY #13820 /* ~"Zurückgehen nein..." murmelt Wilder, immer noch schielend. "Alter Bund vergeben nein..."~ */
  IF ~  Global("Join_Godsmen","GLOBAL",6)
~ THEN REPLY #13956 /* ~"Glied mit den Xaositekten will ich sein. Loyalität kein Bund alt habe ich Göttermenschen."~ */ DO ~SetGlobal("Join_Godsmen","GLOBAL",7)
SetGlobal("Join_Chaosmen","GLOBAL",1)
AddexperienceParty(1000)
~ GOTO 28
  IF ~  Global("Join_Dustmen","GLOBAL",1)
~ THEN REPLY #13957 /* ~"Glied mit den Xaositekten will ich sein. Loyalität kein Bund alt habe ich Staubmenschen."~ */ DO ~SetGlobal("Join_Dustmen","GLOBAL",2)
SetGlobal("Dead_Truce","GLOBAL",0)
SetGlobal("Join_Chaosmen","GLOBAL",1)
AddexperienceParty(1000)
~ GOTO 28
  IF ~  Global("Join_Anarchists","GLOBAL",1)
~ THEN REPLY #13958 /* ~"Glied mit den Xaositekten will ich sein. Loyalität kein Bund alt habe ich Anarchisten."~ */ DO ~SetGlobal("Join_Anarchists","GLOBAL",2)
SetGlobal("Join_Chaosmen","GLOBAL",1)
AddexperienceParty(1000)
~ GOTO 28
  IF ~  Global("Join_Sensates","GLOBAL",1)
~ THEN REPLY #13959 /* ~"Glied mit den Xaositekten will ich sein. Loyalität kein Bund alt habe ich Sinnsaten."~ */ DO ~SetGlobal("Join_Sensates","GLOBAL",2)
ApplySpell(Protagonist,SPECIAL_REMOVE_SENSORY_TOUCH)
SetGlobal("Join_Chaosmen","GLOBAL",1)
AddexperienceParty(1000)
~ GOTO 28
  IF ~  Global("Join_Anarchists","GLOBAL",1)
~ THEN REPLY #13960 /* ~Lüge, um Chaoten durch Anarchisten zu unterwandern: "Glied mit den Xaositekten will ich sein. Loyalität kein Bund alt habe ich."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Wilder_2","GLOBALLaw",-1)
SetGlobal("Join_Chaosmen","GLOBAL",1)
AddexperienceParty(1000)
~ GOTO 28
  IF ~~ THEN REPLY #13961 /* ~"Vergiß es. Ich hätte da noch ein paar Fragen..."~ */ GOTO 6
  IF ~~ THEN REPLY #13962 /* ~"Ich denke nicht, daß ich dazu bereit bin. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 28 // from: 25.8 27.0 27.1 27.2 27.3 27.4
  SAY #13819 /* ~Er murmelt einen Moment lang vor sich hin, dann schreit er, "Macht Nixe!" Bevor du reagieren kannst, schwingt seine Hand mit einem hohen Surren durch die Luft und schlägt dich ins Gesicht. "Getroffen wieder! Dreimal Geist Kaos bist du!" Er kichert, während das Stechen in deinem Gesicht nachläßt. Du hast das seltsame Gefühl, daß du jetzt aufgenommen bist... und daß es Wilder zu gut gefallen hat.~ */
  IF ~~ THEN REPLY #13963 /* ~Greif ihn an, weil er dich geschlagen hat.~ */ DO ~Enemy()
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
~ EXIT
  IF ~~ THEN REPLY #13964 /* ~"Dann für dich habe ich andere Fragen..."~ */ GOTO 6
  IF ~~ THEN REPLY #13965 /* ~"Äh... Na dann, leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 29 // from: 5.9 6.9 6.10
  SAY #13821 /* ~Der Mann knurrt, lächelt dann und deutet mit zwei Fingern am Kopf Hörner an. "Keiner!" Er grinst höhnisch, nimmt seine falschen Hörner weg und schlägt mit den Händen wie mit Flügeln. "Alle!" Er schluchzt erstickt und wischt seine Augen. "Suchen führt zu finden, finden führt zu suchen..." Er klatscht sich in die Hände. "Was macht es? Such nicht nach Alt-er, Vort-eil, und es wird nach dir suchen..."~ */
  IF ~~ THEN REPLY #13966 /* ~"Ich hätte dann noch ein paar andere Fragen..."~ */ GOTO 6
  IF ~~ THEN REPLY #13967 /* ~"Äh... Na dann, leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 30 // from: 5.10
  SAY #13822 /* ~Wilder wirkt plötzlich interessiert. "Was hast du für mich, hmmmm?!"~ */
  IF ~~ THEN REPLY #13968 /* ~"Nein, nein, ich habe gefragt, was du für mich hast."~ */ GOTO 32
  IF ~  PartyHasItem("Tail")
Global("Wilder_Tail","GLOBAL",0)
~ THEN REPLY #13969 /* ~Zeig ihm, was du hast.~ */ DO ~TakePartyItemNum("Tail",1)
GiveItemCreate("Ratcharm",Protagonist,3,0,0)
SetGlobal("Wilder_Tail","GLOBAL",1)
~ GOTO 34
  IF ~  Global("Wilder_Tail","GLOBAL",1)
~ THEN REPLY #13970 /* ~Zeig ihm, was du hast.~ */ GOTO 31
  IF ~  !PartyHasItem("Tail")
Global("Wilder_Tail","GLOBAL",0)
~ THEN REPLY #13971 /* ~Zeig ihm, was du hast.~ */ GOTO 31
  IF ~~ THEN REPLY #13972 /* ~"Vergiß es. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 31 // from: 30.2 30.3
  SAY #13823 /* ~Er sieht sich deine Gegenstände desinteressiert an. "Nichts! Ein bunter Haufen Krimskrams! Wertloser Ramsch!"~ */
  IF ~~ THEN REPLY #13973 /* ~"Ich hätte dann noch ein paar andere Fragen..."~ */ GOTO 6
  IF ~~ THEN REPLY #13974 /* ~Laß Wilder in Ruhe.~ */ EXIT
END

IF ~~ THEN BEGIN 32 // from: 30.0
  SAY #13824 /* ~Er räuspert sich und kreuzt die Arme. Er sieht so aus, als ob er sich hinter seinem Haar versteckt. "Nichts haben!"~ */
  IF ~~ THEN REPLY #13975 /* ~Tritt ihm vor's Schienbein. Kräftig.~ */ GOTO 33
  IF ~~ THEN REPLY #13976 /* ~"Ich hätte dann noch ein paar andere Fragen..."~ */ GOTO 6
  IF ~~ THEN REPLY #13977 /* ~Laß Wilder in Ruhe.~ */ EXIT
END

IF ~~ THEN BEGIN 33 // from: 32.0
  SAY #13825 /* ~Er jault auf... "Alles! Ich haben alles! Und alles ist nichts, also besser bist du NICHTE dran!" Er plappert wie ein Kind und umklammert sein Schienbein. "Armes Schienbein, armes Schienbein, wollte nicht, daß man dir wehtut..."~ */
  IF ~~ THEN REPLY #13978 /* ~"Ich hätte dann noch ein paar andere Fragen..."~ */ GOTO 6
  IF ~~ THEN REPLY #13979 /* ~Laß Wilder in Ruhe.~ */ EXIT
END

IF ~~ THEN BEGIN 34 // from: 30.1
  SAY #13826 /* ~Wilders Auge bleibt sofort an einem deiner Rattenschwänze hängen. Er nimmt den Rattenschwanz aus deiner Hand und hält ihn zwischen den Fingern, als ob es ein sich windender Wurm wäre. Mit blitzartiger Geschwindigkeit knotet er ihn in eine seltsame Form und wirft ihn dir wieder zu. "Verzaubert, binnn siiiiicher..." Er verzerrt die Worte und kichert dann.~ */
  IF ~~ THEN REPLY #13980 /* ~"Ich hätte da noch ein paar Fragen..."~ */ GOTO 6
  IF ~~ THEN REPLY #13981 /* ~"Danke, Wilder. Leb wohl."~ */ EXIT
END

IF ~  Global("Wilder","GLOBAL",1)
~ THEN BEGIN 35 // from:
  SAY #13827 /* ~Du siehst Bellender Wilder. Er kauert immer noch hinter seinen langen, dreckigen Locken... er scheint damit beschäftigt zu sein, sich selbst anzuknurren.~ */
  IF ~  Global("Join_Chaosmen","GLOBAL",0)
~ THEN REPLY #13982 /* ~"Nefra GE, Wilder! Sperr die Ohren zu und hör mich an!"~ */ GOTO 6
  IF ~  Global("Join_Chaosmen","GLOBAL",1)
GlobalGT("Law","GLOBAL",-36)
~ THEN REPLY #13983 /* ~"Nefra GE, Wilder! Sperr die Ohren zu und hör mich an!"~ */ GOTO 6
  IF ~  Global("Join_Chaosmen","GLOBAL",1)
GlobalLT("Law","GLOBAL",-35)
~ THEN REPLY #13984 /* ~"Nefra GE, Wilder! Sperr die Ohren zu und hör mich an!"~ */ GOTO 20
  IF ~  Global("Join_Chaosmen","GLOBAL",3)
~ THEN REPLY #13985 /* ~"Hör dir nicht mein Nefra GE an, Wilder, Nefra GE hab' ich..."~ */ GOTO 6
  IF ~~ THEN REPLY #14005 /* ~Laß Wilder in Ruhe.~ */ EXIT
END
