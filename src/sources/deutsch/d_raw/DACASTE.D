// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DACASTE.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\de_DE\dialog.tlk
// dialogF  : (none)

BEGIN ~DACASTE~

IF ~  Global("Acaste","GLOBAL",0)
~ THEN BEGIN 0 // from:
  SAY #2875 /* ~Der Verwesungsgestank dieser uralt aussehenden Ghulfrau ist selbst aus einiger Entfernung ekelerregend. Ihre graugrüne Haut ist mit Gruftfäulnis und Eiterbeulen infiziert, und ihre Finger, die jeweils von einer langen, gebogenen Kralle gekrönt sind, sind mit getrocknetem Blut und Dreck verkrustet. Ihr Haar, in dem es von krabbelnden Insekten und Würmern nur so wimmelt, hängt ihr bis zu den Knien herunter. Es verbirgt ihr Gesicht beinahe vollständig im Schatten, bis auf ein wildes Grinsen, das lange, scharfe Eckzähne und eine hängende graue Zunge freilegt.~ */
  IF ~~ THEN REPLY #2876 /* ~"Sei gegrüßt..."~ */ DO ~SetGlobal("Acaste","GLOBAL",1)
~ GOTO 1
  IF ~~ THEN REPLY #20853 /* ~Laß die Ghul-Frau in Ruhe.~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #20854 /* ~"Hsssst. Was haben wir denn da? Schönes Stück Fleisch, ja, ein bißchen zäher Knorpel? Schärf meine Zähne an deinen Knochen und mäste mich mit deinem Mark, hmmm? Hsssst."~ */
  IF ~  Global("Know_Acaste","GLOBAL",1)
~ THEN REPLY #20855 /* ~"Du mußt Akaste sein."~ */ GOTO 2
  IF ~~ THEN REPLY #20856 /* ~"Ich hätte da ein paar Fragen..."~ */ GOTO 5
  IF ~~ THEN REPLY #20857 /* ~"Ich muß jetzt gehen. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.0
  SAY #20858 /* ~"Ich *muß* gar nichts für dich sein, du Fleisch mit Knochen. Paß auf, wie du mit mir redest, oder es wird dich keiner mehr an einem Stück sehen."~ */
  IF ~~ THEN REPLY #20859 /* ~"Ich rede mit dir, wie's mir paßt, Ghul."~ */ GOTO 3
  IF ~~ THEN REPLY #20860 /* ~"Ich hätte da ein paar Fragen..."~ */ GOTO 5
  IF ~~ THEN REPLY #20861 /* ~"Ich muß jetzt gehen. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 2.0 8.0
  SAY #20862 /* ~Sie beginnt zu lachen, bevor du ausgeredet hast - ein schrecklicher, schriller, hämischer Ton. "Dummes Fleisch! Keine Ahnung, stimmt's! Ich bin Akaste, die Ghul-Königin! Meine lieben Schändlichen werden dich als Festmahl verspeisen und dich bis auf das letzte Fitzelchen verschlingen, selbst dein Mark wird ihre Bäuche füllen! Wagst du es, so mit mir zu sprechen?"~ */
  IF ~~ THEN REPLY #20863 /* ~"Deine Horde erbärmlicher Aasgeier kann mich nicht schrecken."~ */ GOTO 4
  IF ~~ THEN REPLY #20864 /* ~"Vergiß es. Ich hätte da ein paar Fragen..."~ */ GOTO 5
  IF ~~ THEN REPLY #20865 /* ~"Vergiß es. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 3.0
  SAY #20866 /* ~Sie grinst dich verächtlich an. "Glück, hast du, Fleisch, Glück, Glück! Glück, weil der Schweigende König ein Wort für dich eingelegt hat! Sonst wärst du ein gefundenes Fressen für unsere leeren Bäuche, naß und schmackhaft!" Sie spuckt dir vor die Füße. "Schluß, kein Gespräch mehr mit dem Stück Fleisch! Hssst!"~ */
  IF ~~ THEN REPLY #20867 /* ~Verschwinde.~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 1.1 2.1 3.1
  SAY #20868 /* ~"Wer bist du, daß du wie ein Festmahl vor mir auftauchst? Antworte Akaste."~ */
  IF ~~ THEN REPLY #20869 /* ~"Ich habe keinen Namen."~ */ DO ~SetGlobal("Know_Acaste","GLOBAL",1)
~ GOTO 6
  IF ~~ THEN REPLY #20870 /* ~Lüge: "Ich bin... Adahn."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Acaste_1","GLOBALLaw",-1)
IncrementGlobal("Adahn","GLOBAL",1)
SetGlobal("Know_Acaste","GLOBAL",1)
~ GOTO 7
  IF ~~ THEN REPLY #20871 /* ~"Beantworte mir zuerst meine Fragen..."~ */ DO ~SetGlobal("Know_Acaste","GLOBAL",1)
~ GOTO 8
END

IF ~~ THEN BEGIN 6 // from: 5.0 8.1
  SAY #20872 /* ~"Dann hat auch Akaste keinen. Ich nenne dich den Blutigen. Bete, daß du noch Zeit hast, mit dir selbst ins Reine zu kommen, bevor ich dich zerreiße."~ */
  IF ~~ THEN REPLY #20873 /* ~"Den Blutigen?"~ */ GOTO 14
  IF ~~ THEN REPLY #20874 /* ~"Meine Fragen..."~ */ GOTO 9
  IF ~~ THEN REPLY #20875 /* ~"Ich muß jetzt gehen. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 7 // from: 5.1 8.2
  SAY #20876 /* ~"Aaaadahn..." Sie zieht ihre lange, graue Zunge langsam über ihre Lippen, gelblicher Geifer tropft aus ihren Mundwinkeln. "Ja..."~ */
  IF ~~ THEN REPLY #20877 /* ~"Meine Fragen..."~ */ GOTO 9
  IF ~~ THEN REPLY #20878 /* ~"Ich muß jetzt gehen. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 8 // from: 5.2
  SAY #20879 /* ~"Nein. Du wirst mir jetzt antworten, bevor ich die Haut von deinen Knochen ziehe und sie fresse! Du wirst ein gutes Festmahl für meine Schändlichen abgeben, oh ja..."~ */
  IF ~~ THEN REPLY #20880 /* ~"Hüte deine Zunge, Ghul, oder ich reiß sie dir aus deinem verrotteten Kopf."~ */ GOTO 3
  IF ~~ THEN REPLY #20881 /* ~"Ich habe keinen Namen."~ */ GOTO 6
  IF ~~ THEN REPLY #20882 /* ~Lüge: "Ich bin... Adahn."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Acaste_1","GLOBALLaw",-1)
IncrementGlobal("Adahn","GLOBAL",1)
~ GOTO 7
END

IF ~~ THEN BEGIN 9 // from: 6.1 7.0 10.2 11.1 12.2 13.1 14.0 15.2 17.5 18.0 19.1 23.3 24.1 25.1 29.5 30.2 31.1 32.2 33.2 34.5 35.3 36.1 37.2 38.0 39.0 40.2 41.2 42.2
  SAY #20883 /* ~"Los! Belästige Akaste, solange du noch lebst, Fleisch! Frag!"~ */
  IF ~  Global("Silent_King","GLOBAL",1)
Global("Lawful_Hargrimm_1","GLOBAL",1)
~ THEN REPLY #24203 /* ~"Wußtest du, daß der Schweigende König nichts weiter als ein Skelett ist?"~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Hargrimm_7","GLOBALLaw",-3)
IncrementGlobalOnceEx("GLOBALEvil_Hargrimm_3","GLOBALGood",-1)
~ GOTO 24
  IF ~  Global("Silent_King","GLOBAL",1)
!Global("Lawful_Hargrimm_1","GLOBAL",1)
~ THEN REPLY #20884 /* ~"Wußtest du, daß der Schweigende König nichts weiter als ein Skelett ist?"~ */ GOTO 24
  IF ~  Global("DN_Prisoner","GLOBAL",1)
~ THEN REPLY #20885 /* ~"Warum hat man mich zu einem Gefangenen gemacht?"~ */ GOTO 10
  IF ~~ THEN REPLY #20886 /* ~"Wo bin ich?"~ */ GOTO 11
  IF ~~ THEN REPLY #20887 /* ~"Was machst du hier?"~ */ GOTO 12
  IF ~~ THEN REPLY #20888 /* ~"Wer wohnt an diesem Ort?"~ */ GOTO 29
  IF ~~ THEN REPLY #20889 /* ~"Ich will etwas über eine bestimmte Person wissen..."~ */ GOTO 34
  IF ~  Global("Pharod_Quest","GLOBAL",1)
!PartyHasItem("Bsphere")
~ THEN REPLY #20890 /* ~"Hast du hier irgendwo eine kleine Bronzekugel gesehen?"~ */ GOTO 38
  IF ~~ THEN REPLY #20891 /* ~"Vergiß es. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 10 // from: 9.2
  SAY #20892 /* ~Akaste zieht eine Grimasse. "Hssst! Weil wir dich in den dunklen Hallen nicht gekriegt haben, wo du eine Mahlzeit für uns gewesen wärst!" Sie schüttelt den Kopf und knurrt. "Verflucht sei der Schweigende König, verflucht seine alten Knochen! Fleisch, das von den anderen hier gefangen wurde, bleibt hier, bis es sich den anderen *anschließt*."~ */
  IF ~~ THEN REPLY #20893 /* ~"Erzähl mir was über den Schweigenden König."~ */ DO ~SetGlobal("Know_Silent_King","GLOBAL",1)
~ GOTO 32
  IF ~~ THEN REPLY #20894 /* ~"Den anderen? Wer lebt sonst noch hier?"~ */ GOTO 29
  IF ~~ THEN REPLY #20895 /* ~"Ich hätte da noch ein paar Fragen..."~ */ GOTO 9
  IF ~~ THEN REPLY #20896 /* ~"Das ist alles, was ich wissen wollte. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 11 // from: 9.3
  SAY #20897 /* ~"In den Ländereien des Schweigenden Königs, den Toten Landen... Ort von markgefüllten Knochen und einer Herde Totenfleisch..." Sie leckt hungrig ihre Lippen und hält sich den Bauch.~ */
  IF ~~ THEN REPLY #20898 /* ~"Wer wohnt sonst noch an diesem Ort?"~ */ GOTO 29
  IF ~~ THEN REPLY #20899 /* ~"Ich hätte da noch ein paar Fragen..."~ */ GOTO 9
  IF ~~ THEN REPLY #20900 /* ~"Das ist alles, was ich wissen wollte. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 12 // from: 9.4 33.0
  SAY #20901 /* ~"Wir kämpfen, gewinnen und fressen. Blutige wie du dienen uns schließlich als Nahrung. Wir sind ausgehungert, unsere Mägen knurren, wir sind nie satt. Wir sind immer ausgehungert... und hier bist du... schnell, stirb und sei still!"~ */
  IF ~~ THEN REPLY #20902 /* ~"Die Blutigen?"~ */ GOTO 14
  IF ~~ THEN REPLY #20903 /* ~"Wie hat's dich hierher verschlagen?"~ */ GOTO 13
  IF ~~ THEN REPLY #20904 /* ~"Ich hätte da noch ein paar Fragen..."~ */ GOTO 9
  IF ~~ THEN REPLY #20905 /* ~"Das ist alles, was ich wissen wollte. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 13 // from: 12.1
  SAY #20906 /* ~"Wander durch Katakomben, jage und töte, breche Gruft und Sarg auf, *fresse* Knochen und Totenfleisch. Komme hierher..." Akaste blinzelt. "Seltsamer Ort... Akaste bleibt bei den schwachen, markgefüllten Knochen und der Herde Totenfleisch...  kann Geräusche machen, kann mit ihnen reden, und sie antworten."~ */
  IF ~~ THEN REPLY #20907 /* ~"Warum hast du diese Untoten dann nicht getötet und gegessen?"~ */ GOTO 15
  IF ~~ THEN REPLY #20908 /* ~"Ich hätte da noch ein paar Fragen..."~ */ GOTO 9
  IF ~~ THEN REPLY #20909 /* ~"Das ist alles, was ich wissen wollte. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 14 // from: 6.0 12.0 17.3
  SAY #20910 /* ~"Fleisch-Wesen zum Fressen..." Ihre gelben Augen mustern dich aufmerksam durch ihr zerzaustes, weißes Haar hindurch. "...du."~ */
  IF ~~ THEN REPLY #20911 /* ~"Ich hätte noch ein paar Fragen..."~ */ GOTO 9
  IF ~~ THEN REPLY #20912 /* ~"Das ist alles, was ich wissen wollte. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 15 // from: 13.0
  SAY #20913 /* ~Akaste runzelt die Stirn. "Keine leichte Beute. Sie sind nicht starr wie andere Knochen und Totenfleisch... Sie kämpfen im Rudel und sind viele. Beides schwer zu schlagen, alleine schwächer, zusammen stark, fast so stark wie Akaste. Also warten wir."~ */
  IF ~~ THEN REPLY #20914 /* ~"Worauf wartet ihr?"~ */ GOTO 19
  IF ~~ THEN REPLY #20915 /* ~"Was tut ihr, während ihr wartet?"~ */ GOTO 16
  IF ~~ THEN REPLY #20916 /* ~"Ich hätte da noch ein paar Fragen..."~ */ GOTO 9
  IF ~~ THEN REPLY #20917 /* ~"Das ist alles, was ich wissen wollte. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 16 // from: 15.1
  SAY #20918 /* ~"Wir sagen, wir kämpfen für sie, töten Blutige, wenn sie uns berauben kommen, jagen blutige Ratten, töten sie, fressen sie, lassen Leichenteile liegen, die wir nicht fressen, als Warnung, 'nicht herzukommen, oder auch gefressen zu werden'. Sie lassen uns hier nur beschützen. Hargrimm und die Muffige Mary sagen, wir dürfen keine Blutigen töten."~ */
  IF ~~ THEN REPLY #20919 /* ~"Wer-"~ */ GOTO 17
  IF ~~ THEN REPLY #20920 /* ~"Ich hätte-"~ */ GOTO 17
  IF ~~ THEN REPLY #20921 /* ~"Das ist alles, was-"~ */ GOTO 17
END

IF ~~ THEN BEGIN 17 // from: 16.0 16.1 16.2
  SAY #20922 /* ~Akaste scheint dich nicht länger wahrzunehmen. Sie faucht und fletscht ihre scharfen, blutigen Zähne. "Hassen sie! Wollen Blutige fressen! Hungrig sind wir... töten alle Blutigen, zerreißen Fleisch mit Zähnen und brechen Knochen, saugen süßes Mark aus ihrer Wärme!"~ */
  IF ~~ THEN REPLY #20923 /* ~"Worauf wartet ihr?"~ */ GOTO 19
  IF ~~ THEN REPLY #20924 /* ~"Wer ist Hargrimm?"~ */ DO ~SetGlobal("Know_Hargrimm","GLOBAL",1)
~ GOTO 35
  IF ~~ THEN REPLY #20925 /* ~"Wer ist die Muffige Mary?"~ */ DO ~SetGlobal("Know_Stale_Mary","GLOBAL",1)
~ GOTO 36
  IF ~~ THEN REPLY #20926 /* ~"Die Blutigen?"~ */ GOTO 14
  IF ~~ THEN REPLY #20927 /* ~"Blutige Ratten?"~ */ GOTO 18
  IF ~~ THEN REPLY #20928 /* ~"Ich hätte da noch ein paar Fragen..."~ */ GOTO 9
  IF ~~ THEN REPLY #20929 /* ~"Das ist alles, was ich wissen wollte. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 18 // from: 17.4 29.4 41.0
  SAY #20930 /* ~"Machen *quiek quiek*, rennen in dunkle, kleine Tunnel wenn gejagt, schwer zu fangen. Snacks, schwer zu kriegen. Warmes Fleisch, leicht zu beißen für Zähne. Viele von ihnen woanders, wir gehen sie töten und essen sie alle. Hunger geht weg mit so vielem im Bauch. Beobachten uns immer, mit roten, feuchten Augen im Dunkeln, wollen sie fressen."~ */
  IF ~~ THEN REPLY #20931 /* ~"Ich hätte noch ein paar Fragen..."~ */ GOTO 9
  IF ~~ THEN REPLY #20932 /* ~"Das ist alles, was ich wissen wollte. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 19 // from: 15.0 17.0
  SAY #20933 /* ~"Warten auf Schwäche, ja... warten um zu sehen, wie stark Schweigender König ist, ob er stärker als Akaste. Warten, daß Herde von Totenfleisch aufhört, markgefüllten Knochen zu folgen..."~ */
  IF ~~ THEN REPLY #20934 /* ~"Was werdet ihr dann tun?"~ */ DO ~SetAnimState(Myself,ANIM_MIMESTANDTOSTANCE)
~ JOURNAL #20938 /* ~Akaste, die Anführerin einer Horde von Ghulen, möchte unbedingt die Toten Lande zu ihrem Futterplatz machen. Sie wartet nur darauf, daß eine Schwäche sichtbar wird, damit sie und ihre Ghule wildgeworden durch die Katakompen rennen und alles, was ihnen in den Weg kommt, töten und verschlingen können.~ */ GOTO 20
  IF ~~ THEN REPLY #20935 /* ~"Ich hätte da noch ein paar Fragen..."~ */ GOTO 9
  IF ~~ THEN REPLY #20936 /* ~"Das ist alles, was ich wissen wollte. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 20 // from: 19.0
  SAY #20937 /* ~"Würden alle *fressen*. Hungrig. Töten alle kleinen, blutigen Fell-Dinger, *fressen* alle blutigen Lumpen-Wesen in Dorf, fressen. Katakomben sind voll mit leckeren Mahlzeiten. Hungrig sind wir! *Jagen* und *fressen*!" Während sie spricht, wird sie immer aufgeregter, knirscht mit den Zähnen und versprüht Speichel...~ */
  IF ~~ THEN REPLY #20939 /* ~Laß sie weiterschimpfen.~ */ DO ~SetAnimState(Myself,ANIM_MIMEATTACK1)
~ GOTO 21
  IF ~~ THEN REPLY #20940 /* ~Laß weiterschreien.~ */ EXIT
END

IF ~~ THEN BEGIN 21 // from: 20.0
  SAY #20941 /* ~"HSSSSST! ALLE töten, würde Akaste! Zerreißen und aufreißen, die Herde von dummem, dummem Totenfleisch-Vieh in Stücke reißen! Langsam und schwach, nur gut zum Fressen, Aufreißen und Zerreißen! Die schwachen Knochen brechen und knacken! Das Mark aus ihren spröden Knochen saugen! Sie ALLE TÖTEN und FRESSEN!"~ */
  IF ~~ THEN REPLY #20942 /* ~Laß sie weiter schimpfen.~ */ DO ~SetAnimState(Myself,ANIM_MIMEATTACK2)
~ GOTO 22
  IF ~~ THEN REPLY #20943 /* ~Laß weiterschreien.~ */ EXIT
END

IF ~~ THEN BEGIN 22 // from: 21.0
  SAY #20944 /* ~"Akaste will, daß sie ruhig, starr sind, tot-tot, nicht reden und gehen! STERBEN und STILL sein, damit man sie fressen kann, gefangen zwischen den Zähnen, ihre Schädel aufbrechen, um ihr Gehirn-Fleisch rauszusaugen, dann ihren Brustkasten aufreißen und die weichen Teile unter der Haut verschlingen!" Akaste donnert eine krallenbesetzte Faust in den Boden und zerschlägt in ihrem Zorn die Fliesen.~ */
  IF ~~ THEN REPLY #20945 /* ~Laß sie weiter schimpfen.~ */ DO ~SetAnimState(Myself,ANIM_MIMESTANDTOSTANCE)
~ GOTO 23
  IF ~~ THEN REPLY #20946 /* ~Laß weiterschreien.~ */ EXIT
END

IF ~~ THEN BEGIN 23 // from: 22.0
  SAY #20947 /* ~"HASSE sie. Sagen Akaste, NEIN, nicht die blutigen Wesen jagen, die räubern und in Gräber kriechen! Nicht blutige Ratten töten! Sie in Ruhe lassen, nicht jagen, nicht FRESSEN! SIE ALLE TÖTEN und ZUM SCHWEIGEN BRINGEN!" Sie verstummt plötzlich, ihr Zorn schließlich verraucht. Die letzten Echos ihres Geschreis klingen in der Dunkelheit aus.~ */
  IF ~~ THEN REPLY #20948 /* ~"Gib mir Dinge von Wert, und ich werde dir helfen."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Acaste_1","GLOBALGood",-1)
~ GOTO 42
  IF ~  Global("Silent_King","GLOBAL",1)
Global("Lawful_Hargrimm_1","GLOBAL",1)
~ THEN REPLY #24204 /* ~"Wußtest du, daß der Schweigende König nichts weiter als ein Skelett ist?"~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Hargrimm_7","GLOBALLaw",-3)
IncrementGlobalOnceEx("GLOBALEvil_Hargrimm_3","GLOBALGood",-1)
~ GOTO 24
  IF ~  Global("Silent_King","GLOBAL",1)
!Global("Lawful_Hargrimm_1","GLOBAL",1)
~ THEN REPLY #20949 /* ~"Wußtest du, daß der Schweigende König nichts weiter als ein Skelett ist?"~ */ GOTO 24
  IF ~~ THEN REPLY #20950 /* ~"Ich hätte da noch ein paar Fragen..."~ */ GOTO 9
  IF ~~ THEN REPLY #20951 /* ~"Das ist alles, was ich wissen wollte. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 24 // from: 9.0 9.1 23.1 23.2 42.0 42.1
  SAY #20952 /* ~"Hssssst?" Akastes Augen verengen sich. "Was sagst du über den König, blutiges Ding?"~ */
  IF ~~ THEN REPLY #20953 /* ~"Der Schweigende König ist ein totes Wesen. Er lebt nicht."~ */ GOTO 25
  IF ~~ THEN REPLY #20954 /* ~"Nichts. Ich hätte ein paar Fragen..."~ */ GOTO 9
  IF ~~ THEN REPLY #20955 /* ~"Vergiß es. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 25 // from: 24.0
  SAY #20956 /* ~"Sicher, ja? Er ist starr und ruhig und zu Futter geworden?"~ */
  IF ~~ THEN REPLY #20957 /* ~"Ich bin mir sicher. Er ist definitiv nur eine Leiche."~ */ JOURNAL #20959 /* ~Ich habe Akaste erzählt, daß der Schweigende König tot sei, und sie und ihre Ghule haben begonnen, die Katakomben der Toten Lande zu terrorisieren.~ */ GOTO 26
  IF ~~ THEN REPLY #61398 /* ~"Eigentlich... vielleicht nicht. Ich hätte ein paar Fragen..."~ */ GOTO 9
  IF ~~ THEN REPLY #61399 /* ~"Nun... Ich könnte mich geirrt haben. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 26 // from: 25.0
  SAY #20961 /* ~Akastes Gesicht verzieht sich zu einem grausigen, zähnestarrenden Grinsen. Sie atmet langsam zischend aus, dann brüllt sie: "*SIE ALLE TÖTEN, JETZT! FRESSEN*!"~ */
  IF ~~ THEN REPLY #20962 /* ~Reagiere auf ihren Angriff.~ */ DO ~SetGlobal("Ghoul_Attack","GLOBAL",1)
Enemy()
ForceAttack(Protagonist,Myself)
~ EXIT
  IF ~~ THEN REPLY #20963 /* ~Flüchte.~ */ DO ~SetGlobal("Ghoul_Attack","GLOBAL",1)
Enemy()
~ EXIT
END

IF ~~ THEN BEGIN 27 // from:
  SAY #20964 /* ~Akaste knurrt. "Du... bringst den Schweigenden zum Schweigen, stellst ihn ruhig... Hssssst." Akaste beäugt dich mißtrauisch und umkreist dich ein Stück weit. "Starker ... starker... Blutiger. Akaste wird dir jetzt erlauben, diesen Ort zu verlassen..."~ */
  IF ~~ THEN REPLY #20965 /* ~"Nein, noch nicht."~ */ GOTO 28
  IF ~~ THEN REPLY #20966 /* ~"Okay. Leb wohl."~ */ DO ~SetGlobal("DN_Prisoner","GLOBAL",2)
Enemy()
~ EXIT
END

IF ~~ THEN BEGIN 28 // from: 27.0
  SAY #20967 /* ~Akastes Augen verengen sich wieder. "Du gehst. Du gehst *jetzt*."~ */
  IF ~~ THEN REPLY #20968 /* ~"Ich gehe, wenn es mir paßt, Ghul."~ */ DO ~SetGlobal("Ghoul_Attack","GLOBAL",1)
Enemy()
ForceAttack(Protagonist,Myself)
SetGlobal("DN_Prisoner","GLOBAL",2)
~ EXIT
  IF ~~ THEN REPLY #20969 /* ~"Leb wohl."~ */ DO ~SetGlobal("DN_Prisoner","GLOBAL",2)
Enemy()
~ EXIT
END

IF ~~ THEN BEGIN 29 // from: 9.5 10.1 11.0 30.1 31.0 32.0 33.1
  SAY #20970 /* ~"Viele streifen durch diese Hallen, ja... markgefüllte Knochen, Herde von Totenfleisch, wir, die Schändlichen. Alle beherrscht vom Schweigenden König..." Sie spukt angeekelt aus. "...der uns sagt, was wir zu tun und zu lassen haben. Auch die kleinen, schmackhaften, blutigen Ratten..." Akaste reibt sich gierig die klauenbesetzten Hände.~ */
  IF ~~ THEN REPLY #20971 /* ~"Erzähl mir was von deinen eigenen Leuten."~ */ GOTO 33
  IF ~~ THEN REPLY #20972 /* ~"Erzähl mir was über die Knochen."~ */ GOTO 30
  IF ~~ THEN REPLY #20973 /* ~"Erzähl mir was über die Herde von Totenfleisch."~ */ GOTO 31
  IF ~~ THEN REPLY #20974 /* ~"Erzähl mir was über den Schweigenden König."~ */ DO ~SetGlobal("Know_Silent_King","GLOBAL",1)
~ GOTO 32
  IF ~~ THEN REPLY #20975 /* ~"Blutige Ratten?"~ */ GOTO 18
  IF ~~ THEN REPLY #20976 /* ~"Ich hätte da noch ein paar Fragen..."~ */ GOTO 9
  IF ~~ THEN REPLY #20977 /* ~"Das ist alles, was ich wissen wollte. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 30 // from: 29.1 35.0
  SAY #20978 /* ~"Die Knochen, die Skelette. Schwach. Müde, zu viele Jahrhunderte, zu *brüchig*." Sie schnappt einen Knochen vom Boden auf und zerbricht ihn, um ihre Worte zu unterstreichen. "*Schwach*. Die Toten fürchten sich nicht, aber die Knochen *tun* es. *Angst* vor dem Tod und davor, von Akaste und den Schändlichen gefressen zu werden. Angst vor dem *Sterben*? *Wir JETZT tot.* *Furcht* ist etwas, nach dem Wesen mit Blut stinken! *NICHT DIE TOTEN.*"~ */
  IF ~~ THEN REPLY #20979 /* ~"Die Schändlichen?"~ */ GOTO 33
  IF ~~ THEN REPLY #20980 /* ~"Wer wohnt sonst noch an diesem Ort?"~ */ GOTO 29
  IF ~~ THEN REPLY #20981 /* ~"Ich hätte da noch ein paar Fragen..."~ */ GOTO 9
  IF ~~ THEN REPLY #20982 /* ~"Das ist alles, was ich wissen wollte. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 31 // from: 29.2 35.1
  SAY #20983 /* ~"Hssst. Machen Geräusche wie blutiges Vieh und stinken nach Fäulnis und süßem, abgestandenem Saft." Akaste leckt sich die Lippen und saugt Speichel zwischen den Zähnen ein. Sie runzelt die Stirn, hebt dann die Arme und fängt an umherzutrotten. "Machen meistens *annnnnh annnnh*, stolpern, latschen und arbeiten. *Dummes* Futter! *Dummes* hirnloses Fleisch-Wesen!"~ */
  IF ~~ THEN REPLY #20984 /* ~"Wer wohnt sonst noch an diesem Ort?"~ */ GOTO 29
  IF ~~ THEN REPLY #20985 /* ~"Ich hätte da noch ein paar Fragen..."~ */ GOTO 9
  IF ~~ THEN REPLY #20986 /* ~"Das ist alles, was ich wissen wollte. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 32 // from: 10.0 29.3 34.1
  SAY #20987 /* ~"*Unsssichtbarer* König, nicht Schweigender. Er sagt - wir tun. Markgefüllte Knochen und Horden von totem Fleisch gehorchen ihm, keine Frage. Akaste nicht sehen, Akaste nur *hören*. Eines Tages werde ich diesen Einen treffen... gut treffen. Jaaaa. Akaste stark und Schweigender schwach. Wir werden sehen, wer Meister, jaaa."~ */
  IF ~~ THEN REPLY #20988 /* ~"Wer wohnt sonst noch an diesem Ort?"~ */ GOTO 29
  IF ~~ THEN REPLY #20989 /* ~"Ich habe eine Frage zu einer bestimmten Person..."~ */ GOTO 34
  IF ~~ THEN REPLY #20990 /* ~"Ich hätte da noch ein paar Fragen..."~ */ GOTO 9
  IF ~~ THEN REPLY #20991 /* ~"Das ist alles, was ich wissen wollte. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 33 // from: 29.0 30.0 37.0
  SAY #20992 /* ~"Wir sind die Schändlichen, jaaa, Akaste und ihre hübschen Ghule, ihre Kinder, immer hungrig..."~ */
  IF ~~ THEN REPLY #20993 /* ~"Was machst du hier?"~ */ GOTO 12
  IF ~~ THEN REPLY #20994 /* ~"Wer wohnt sonst noch an diesem Ort?"~ */ GOTO 29
  IF ~~ THEN REPLY #20995 /* ~"Ich hätte da noch ein paar Fragen..."~ */ GOTO 9
  IF ~~ THEN REPLY #20996 /* ~"Das ist alles, was ich wissen wollte. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 34 // from: 9.6 32.1 35.2 36.0 37.1 40.1 41.1
  SAY #20997 /* ~Akaste kneift die Augen zusammen und hält den Kopf schief. "Über wen will das Fleisch was wissen?"~ */
  IF ~~ THEN REPLY #20998 /* ~"Über dich, dich selbst."~ */ GOTO 37
  IF ~  Global("Know_Silent_King","GLOBAL",1)
~ THEN REPLY #20999 /* ~"Über den Schweigenden König."~ */ GOTO 32
  IF ~  Global("Know_Hargrimm","GLOBAL",1)
!Dead("Hargrim")
~ THEN REPLY #21000 /* ~"Hargrimm."~ */ GOTO 35
  IF ~  Global("Know_Stale_Mary","GLOBAL",1)
!Dead("StaleMa")
~ THEN REPLY #21001 /* ~"Die Muffige Mary."~ */ GOTO 36
  IF ~  Global("DN_Soego_Killed","GLOBAL",0)
~ THEN REPLY #21002 /* ~"Soego."~ */ GOTO 40
  IF ~~ THEN REPLY #21003 /* ~"Macht nichts. Ich hätte da noch ein paar Fragen..."~ */ GOTO 9
  IF ~~ THEN REPLY #21004 /* ~"Vergiß es. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 35 // from: 17.1 34.2
  SAY #21005 /* ~"Knochenmark." Akaste leckt sich die aufgesprungenen Lippen und grinst wild. "Altes Mark... aber Mark." Akaste knurrt, ihre Augen lodern. "Ihn töten, alle Knochen töten, wenn nicht die schwachen Knochen *und* die Herde von Totenfleisch wären."~ */
  IF ~~ THEN REPLY #21006 /* ~"Knochen?"~ */ GOTO 30
  IF ~~ THEN REPLY #21007 /* ~"Totenfleischherde?"~ */ GOTO 31
  IF ~~ THEN REPLY #21008 /* ~"Laß mich dich noch was zu jemand anderem fragen..."~ */ GOTO 34
  IF ~~ THEN REPLY #21009 /* ~"Ich hätte da noch ein paar Fragen..."~ */ GOTO 9
  IF ~~ THEN REPLY #21010 /* ~"Das ist alles, was ich wissen wollte. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 36 // from: 17.2 34.3
  SAY #21011 /* ~"Fleischiges *Futter*. Nicht stark, wie Akaste. Schwache Totenfleisch-Frau."~ */
  IF ~~ THEN REPLY #21012 /* ~"Laß mich dich noch was zu jemand anderem fragen..."~ */ GOTO 34
  IF ~~ THEN REPLY #21013 /* ~"Ich hätte da noch ein paar Fragen..."~ */ GOTO 9
  IF ~~ THEN REPLY #21014 /* ~"Das ist alles, was ich wissen wollte. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 37 // from: 34.0
  SAY #21015 /* ~"Akaste, bin ich! Ghul-Mutter und Königin der Schändlichen, jaaa! Stark, schnell, jagen und *fressen* wir in diesen Hallen..."~ */
  IF ~~ THEN REPLY #21016 /* ~"Die Schändlichen?"~ */ GOTO 33
  IF ~~ THEN REPLY #21017 /* ~"Laß mich dich noch was zu jemand anderem fragen..."~ */ GOTO 34
  IF ~~ THEN REPLY #21018 /* ~"Ich hätte da noch ein paar Fragen..."~ */ GOTO 9
  IF ~~ THEN REPLY #21019 /* ~"Das ist alles, was ich wissen wollte. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 38 // from: 9.7
  SAY #21020 /* ~Akaste schüttelt den Kopf, Läuse fallen aus ihren langen, weißen Haaren. "Akaste öffnet viele Särge, viele Gräber, hat nie so was gesehen."~ */
  IF ~~ THEN REPLY #21021 /* ~"Ich hätte noch ein paar Fragen..."~ */ GOTO 9
  IF ~~ THEN REPLY #21022 /* ~"Das ist alles, was ich wissen wollte. Leb wohl."~ */ EXIT
END

IF ~  Global("Acaste","GLOBAL",1)
~ THEN BEGIN 39 // from:
  SAY #21023 /* ~"Hssst! Fleisch-Ding kommt noch mal, belästigt Akaste, immer!"~ */
  IF ~~ THEN REPLY #21024 /* ~"Ich hätte da ein paar Fragen..."~ */ GOTO 9
  IF ~~ THEN REPLY #21025 /* ~"Leb wohl, Akaste."~ */ EXIT
END

IF ~~ THEN BEGIN 40 // from: 34.4
  SAY #21026 /* ~"Blasser Blutiger, der im Staub schläft und nach blutiger Ratte stinkt? Ihn fresse ich zuerst."~ */
  IF ~~ THEN REPLY #21027 /* ~"Er stinkt nach blutiger Ratte?"~ */ GOTO 41
  IF ~~ THEN REPLY #21028 /* ~"Laß mich dich noch was zu jemand anderem fragen..."~ */ GOTO 34
  IF ~~ THEN REPLY #21030 /* ~"Ich hätte da noch ein paar Fragen..."~ */ GOTO 9
  IF ~~ THEN REPLY #21031 /* ~"Das ist alles, was ich wissen wollte. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 41 // from: 40.0
  SAY #21029 /* ~"Hsssst. Aber gut, ihn überhaupt zu fressen. Er stinkt nach Staub, aber reifes Blut und Fleisch unter seiner blassen Haut. Gut zum Fressen."~ */
  IF ~~ THEN REPLY #21032 /* ~"Was ist eine blutige Ratte?"~ */ GOTO 18
  IF ~~ THEN REPLY #21033 /* ~"Laß mich dich noch was zu jemand anderem fragen..."~ */ GOTO 34
  IF ~~ THEN REPLY #21034 /* ~"Ich hätte da noch ein paar Fragen..."~ */ GOTO 9
  IF ~~ THEN REPLY #21035 /* ~"Das ist alles, was ich wissen wollte. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 42 // from: 23.0
  SAY #21036 /* ~"Akaste hat dir nichts zu geben, außer dein Leben nicht zu fressen."~ */
  IF ~  Global("Silent_King","GLOBAL",1)
Global("Lawful_Hargrimm_1","GLOBAL",1)
~ THEN REPLY #24205 /* ~"Wußtest du, daß der Schweigende König nichts weiter als ein Skelett ist?"~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Hargrimm_7","GLOBALLaw",-3)
IncrementGlobalOnceEx("GLOBALEvil_Hargrimm_3","GLOBALGood",-1)
~ GOTO 24
  IF ~  Global("Silent_King","GLOBAL",1)
!Global("Lawful_Hargrimm_1","GLOBAL",1)
~ THEN REPLY #21037 /* ~"Wußtest du, daß der Schweigende König nichts weiter als ein Skelett ist?"~ */ GOTO 24
  IF ~~ THEN REPLY #21038 /* ~"Ich hätte da noch ein paar Fragen..."~ */ GOTO 9
  IF ~~ THEN REPLY #21039 /* ~"Das ist alles, was ich wissen wollte. Leb wohl."~ */ EXIT
END
