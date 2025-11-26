// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DDEATHAD.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\de_DE\dialog.tlk
// dialogF  : (none)

BEGIN ~DDEATHAD~

IF ~  True()
~ THEN BEGIN 0 // from: 65.0
  SAY #2945 /* ~"Willkommen, Bewohner von Sigil! Bitte setzt euch und hört euch die 'Dunkel' an, die ich euch preisgebe!"~ */
  IF ~  NearbyDialog("DMorte")
~ THEN DO ~SetGlobal("Deaths_Adv","GLOBAL",1)
~ EXTERN ~DMORTE~ 299
  IF ~  !NearbyDialog("DMorte")
~ THEN REPLY #2946 /* ~Hör zu.~ */ DO ~SetGlobal("Deaths_Adv","GLOBAL",1)
~ GOTO 1
  IF ~  !NearbyDialog("DMorte")
~ THEN REPLY #32106 /* ~Hör auf zuzuhören und geh weg.~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.1
  SAY #32107 /* ~Er beginnt, in einem ernsten Tonfall zu sprechen: "Der Tod. Das ist es, was euch am Ende eurer Reise erwartet." Er hüstelt, zieht dann in dramatischer Geste die Augenbrauen hoch und wedelt gleichzeitig mit den Händen: "Der Tod ist *nicht* das Ende! Er ist der Anfang!"~ */
  IF ~  NearbyDialog("DMorte")
~ THEN EXTERN ~DMORTE~ 300
  IF ~  !NearbyDialog("DMorte")
~ THEN REPLY #32108 /* ~Hör weiter zu.~ */ GOTO 2
  IF ~  !NearbyDialog("DMorte")
~ THEN REPLY #32109 /* ~Verlaß die Vorlesungshalle.~ */ DO ~SetGlobal("Lecture_Death","GLOBAL",2)
~ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.1
  SAY #32110 /* ~"Denn wenn ihr sterbt, hört ihr nicht auf zu existieren, nein! Keineswegs! Die Äußeren Ebenen werden euch in ihre Arme schließen! Dort erwartet euch ein neues Leben... ein Leben, wie ihr es *nie* gekannt habt!"~ */
  IF ~  NearbyDialog("DMorte")
~ THEN EXTERN ~DMORTE~ 301
  IF ~  !NearbyDialog("DMorte")
~ THEN REPLY #32111 /* ~Hör weiter zu.~ */ GOTO 3
  IF ~  !NearbyDialog("DMorte")
~ THEN REPLY #32112 /* ~Verlaß die Vorlesungshalle.~ */ DO ~SetGlobal("Lecture_Death","GLOBAL",2)
~ EXIT
END

IF ~~ THEN BEGIN 3 // from: 2.1
  SAY #32113 /* ~"Ihr werdet den alten Mantel dieses Lebens abstreifen und einer der Gläubigen werden, ein Sucher! Als *Sucher* auf dieser Äußeren Ebene wird eure Reise erst *wirklich* beginnen!"~ */
  IF ~~ THEN REPLY #32115 /* ~Hör weiter zu.~ */ GOTO 4
  IF ~~ THEN REPLY #32114 /* ~Verlaß die Vorlesungshalle.~ */ DO ~SetGlobal("Lecture_Death","GLOBAL",2)
~ EXIT
END

IF ~~ THEN BEGIN 4 // from: 3.0
  SAY #32116 /* ~"Wenn ihr gute Menschen wart, unerschütterlich in eurer Wohltätigkeit und eurem guten Willen gegenüber eurem eigenen Fleisch und Blut, werden euch vielleicht die leichtbedeckten Hänge des Bergs Zelestia aufnehmen. Euer Geist wird zu diesem Ort gelangen und als Sucher werdet ihr in der Schönheit goldener Morgen leben und unter sanften Sonnenstrahlen weilen..." Er seufzt verträumt.~ */
  IF ~  NearbyDialog("DMorte")
~ THEN EXTERN ~DMORTE~ 302
  IF ~  !NearbyDialog("DMorte")
~ THEN REPLY #32117 /* ~Hör weiter zu.~ */ GOTO 5
  IF ~  !NearbyDialog("DMorte")
~ THEN REPLY #32118 /* ~Verlaß die Vorlesungshalle.~ */ DO ~SetGlobal("Lecture_Death","GLOBAL",2)
~ EXIT
END

IF ~~ THEN BEGIN 5 // from: 4.1
  SAY #32119 /* ~"Vielleicht aber habt ihr euer Leben damit verbracht, andere zu verraten, um voranzukommen, Lügen zu erzählen statt die Wahrheit zu sagen, anderen in den Rücken zu fallen, nur um eure eigenen Ziele zu erreichen. Die kalte, blutrote Carzeri, die Ebene, auf der alle Wendehälse landen, wenn sie weiterziehen, soll der Käfig sein, der euch gefangenhält. Als Sucher auf dieser Ebene werdet ihr von Verrat und Lügen leben, weil ihr nur ein Leben ohne Vertrauen kennt."~ */
  IF ~  NearbyDialog("DMorte")
~ THEN EXTERN ~DMORTE~ 303
  IF ~  !NearbyDialog("DMorte")
~ THEN REPLY #32120 /* ~Hör weiter zu.~ */ GOTO 6
  IF ~  !NearbyDialog("DMorte")
~ THEN REPLY #32121 /* ~Verlaß die Vorlesungshalle.~ */ DO ~SetGlobal("Lecture_Death","GLOBAL",2)
~ EXIT
END

IF ~~ THEN BEGIN 6 // from: 5.1
  SAY #32122 /* ~Er beugt sich vor. Sein Blick schießt hin und her. "Und *vielleicht* war euer Leben von blutrünstiger Bösheit geprägt, ihr habt eure Mitmenschen verachtet und ohne Rücksicht auf Verluste getan, was euch beliebt..."~ */
  IF ~~ THEN REPLY #32123 /* ~Hör weiter zu.~ */ GOTO 7
  IF ~~ THEN REPLY #32124 /* ~Verlaß die Vorlesungshalle.~ */ DO ~SetGlobal("Lecture_Death","GLOBAL",2)
~ EXIT
END

IF ~~ THEN BEGIN 7 // from: 6.0
  SAY #32125 /* ~"...dann werdet ihr vielleicht von einer der Unteren Ebenen aufgenommen: von Baator oder den chaotischen, wirbelnden Schichten des Abgrunds! *Durch und durch* böse sind die Geister, die auf diese Ebene kommen, und die meisten sind zu blinder Grausamkeit und zum Leid oder zur Knechtschaft im gefürchteten ..." Er flüstert dramatisch: "...Blutkrieg verdammt."~ */
  IF ~  NearbyDialog("DMorte")
~ THEN EXTERN ~DMORTE~ 304
  IF ~  !NearbyDialog("DMorte")
~ THEN REPLY #32126 /* ~Hör weiter zu.~ */ GOTO 8
  IF ~  !NearbyDialog("DMorte")
~ THEN REPLY #32127 /* ~Verlaß die Vorlesungshalle.~ */ DO ~SetGlobal("Lecture_Death","GLOBAL",2)
~ EXIT
END

IF ~~ THEN BEGIN 8 // from: 7.1
  SAY #32128 /* ~"Egal wo ihr hinkommt, so glaubt mir: Ihr werdet ein *neues* Leben beginnen. Ein neues Leben, meine lieben Bewohner von Sigil!"~ */
  IF ~  NearbyDialog("DMorte")
~ THEN EXTERN ~DMORTE~ 305
  IF ~  !NearbyDialog("DMorte")
~ THEN REPLY #32129 /* ~Hör weiter zu.~ */ GOTO 9
  IF ~  !NearbyDialog("DMorte")
~ THEN REPLY #32130 /* ~Verlaß die Vorlesungshalle.~ */ DO ~SetGlobal("Lecture_Death","GLOBAL",2)
~ EXIT
END

IF ~~ THEN BEGIN 9 // from: 8.1
  SAY #32131 /* ~"Ihr werdet ganz neu anfangen können, ohne vergangene Erinnerungen oder euer vorheriges Leben. Euer 'seelisches' Ziel sozusagen..." Er lächelt über seinen eigenen Humor. "...ist es, mit dieser neuen Ebene zu *verschmelzen*, *eins* zu werden mit den Idealen und der Substanz der Ebene selbst!"~ */
  IF ~~ THEN REPLY #32132 /* ~Hör weiter zu.~ */ GOTO 10
  IF ~~ THEN REPLY #32133 /* ~Verlaß die Vorlesungshalle.~ */ DO ~SetGlobal("Lecture_Death","GLOBAL",2)
~ EXIT
END

IF ~~ THEN BEGIN 10 // from: 9.0
  SAY #32134 /* ~"Du sollst einer der Einwohner, der Sucher auf dieser Ebene oder im Idealfall einer der Bausteine sein, aus denen diese Ebene aufgebaut ist! Das ist das Ziel *aller* Sucher! Um dieses Ziel zu erreichen, MUSST du..." Er klatscht zur Hervorhebung in seine Hände: "...*klatsch!* AN *klatsch!* DEINEN *klatsch!* IDEALEN * klatsch!* FESTHALTEN!"~ */
  IF ~  NearbyDialog("DMorte")
~ THEN EXTERN ~DMORTE~ 306
  IF ~  !NearbyDialog("DMorte")
~ THEN REPLY #32135 /* ~Hör weiter zu.~ */ GOTO 11
  IF ~  !NearbyDialog("DMorte")
~ THEN REPLY #32136 /* ~Verlaß die Vorlesungshalle.~ */ DO ~SetGlobal("Lecture_Death","GLOBAL",2)
~ EXIT
END

IF ~~ THEN BEGIN 11 // from: 10.1
  SAY #32137 /* ~"Eure Ideale! Gut oder böse, Ordnung oder Chaos, oder irgendwas dazwischen! Wenn ihr euch der Gesinnung der Ebene annähert, wird eure Reise enden, sobald ihr ein Teil... der.. Ebene... *selbst* werdet! Ein glorreiches Dasein, meine lieben Bewohner von Sigil!"~ */
  IF ~~ THEN REPLY #32138 /* ~Hör weiter zu.~ */ GOTO 12
  IF ~~ THEN REPLY #32139 /* ~Verlaß die Vorlesungshalle.~ */ DO ~SetGlobal("Lecture_Death","GLOBAL",2)
~ EXIT
END

IF ~~ THEN BEGIN 12 // from: 11.0
  SAY #32140 /* ~"Und das ist es, was euch *nach* dem 'Tod' erwartet, mein liebes Publikum! Lebt euer Leben so, wie ihr es wollt, aber denkt daran, daß es *nicht* das Vergessen ist, was euch nach diesem Leben erwartet!"~ */
  IF ~  NearbyDialog("DMorte")
~ THEN EXTERN ~DMORTE~ 307
  IF ~  !NearbyDialog("DMorte")
~ THEN REPLY #32141 /* ~Hör weiter zu.~ */ GOTO 13
  IF ~  !NearbyDialog("DMorte")
~ THEN REPLY #32142 /* ~Verlaß die Vorlesungshalle.~ */ DO ~SetGlobal("Lecture_Death","GLOBAL",2)
~ EXIT
END

IF ~~ THEN BEGIN 13 // from: 12.1
  SAY #32143 /* ~"Ich werde jetzt eure Fragen beantworten. Hat irgendwer eine Frage?"~ */
  IF ~~ THEN REPLY #32144 /* ~"Ich hätte da eine Frage..."~ */ GOTO 17
  IF ~~ THEN REPLY #32145 /* ~Sag nichts und warte.~ */ GOTO 14
END

IF ~~ THEN BEGIN 14 // from: 13.1 16.1
  SAY #32146 /* ~"Wenn keiner Fragen hat, dann werde ich jetzt gehen... fürs erste. Ich werde noch mehr Vorträge hier in der Halle halten, und vielleicht treffe ich *euch* in kommenden Jahren... als Sucher jenseits der Tür des Todes!"~ */
  IF ~~ THEN REPLY #32147 /* ~Verlaß die Vorlesungshalle.~ */ EXIT
END

IF ~~ THEN BEGIN 15 // from:
  SAY #32148 /* ~Der Sprecher dreht sich zu Morte um und runzelt leicht die Stirn. Er lehnt sich vor, um zu sehen, wer da etwas gesagt hat. "Eine Frage? War das eine Frage von einem der Lebenden?"~ */
  IF ~~ THEN EXTERN ~DMORTE~ 308
END

IF ~~ THEN BEGIN 16 // from:
  SAY #32149 /* ~Er nickt, als hätte er wieder die Oberhand. "Gut. Ich werde jetzt eure Fragen beantworten. Hat irgendwer eine Frage?"~ */
  IF ~~ THEN REPLY #32150 /* ~"Ich hätte da eine Frage..."~ */ GOTO 17
  IF ~~ THEN REPLY #32151 /* ~Sag nichts und warte.~ */ GOTO 14
END

IF ~~ THEN BEGIN 17 // from: 13.0 16.0 19.1 20.0 22.0 23.0 24.2 25.2 26.2 27.0 28.1 29.2 30.1 31.3 32.1 35.0 36.0 37.0 38.2 39.2 40.1 42.1 43.0 44.0 45.1 46.1 52.0 53.0 54.0 55.4 56.0 57.0 58.0 59.0
  SAY #32152 /* ~Er bedeutet dir, fortzufahren.
~ */
  IF ~~ THEN REPLY #64426 /* ~"Was ist ein Sucher?"~ */ GOTO 21
  IF ~~ THEN REPLY #64427 /* ~"Kann ein Sucher sterben?"~ */ GOTO 24
  IF ~~ THEN REPLY #64428 /* ~"Warum verlieren Sucher ihr Gedächtnis?"~ */ GOTO 28
  IF ~~ THEN REPLY #32153 /* ~"Auf welche Ebene kommt man, wenn man stirbt?"~ */ GOTO 19
  IF ~~ THEN REPLY #32157 /* ~"Was ist, wenn jemand nicht sterben kann?"~ */ GOTO 39
  IF ~~ THEN REPLY #32158 /* ~"Erklär mir, was du mit 'Gesinnung' meinst."~ */ GOTO 43
  IF ~  GlobalGT("Know_Dustmen","GLOBAL",0)
~ THEN REPLY #32159 /* ~"Die Staubmenschen sagen, daß wir in *diesem* Leben landen, wenn wir sterben."~ */ GOTO 44
  IF ~  GlobalLT("Deaths_Adv","GLOBAL",2)
~ THEN REPLY #32160 /* ~"Beweis mir, daß das, was du sagst, wahr ist."~ */ GOTO 45
  IF ~~ THEN REPLY #32161 /* ~"Erzähl mir was über den Blutkrieg."~ */ GOTO 54
  IF ~~ THEN REPLY #32162 /* ~"Ich wollte dich was zu einer der Ebenen fragen, die du erwähnt hast."~ */ GOTO 55
  IF ~~ THEN REPLY #32163 /* ~"Ach, vergiß es. Ich habe doch keine Frage."~ */ GOTO 18
END

IF ~~ THEN BEGIN 18 // from: 17.10 19.2 20.1 22.1 23.1 24.3 25.3 26.3 27.1 28.2 29.3 30.2 31.4 32.2 35.1 36.1 37.1 38.3 39.3 40.2 42.2 43.1 44.1 45.2 46.2 52.1 53.1 54.1 55.5 56.1 57.1 58.1 59.1 66.4
  SAY #32164 /* ~"Wenn keiner Fragen hat...?"~ */
  IF ~  Global("Deaths_Adv","GLOBAL",1)
~ THEN REPLY #32165 /* ~Mach dich fertig zu gehen.~ */ GOTO 60
  IF ~  Global("Deaths_Adv","GLOBAL",2)
~ THEN REPLY #32166 /* ~Mach dich fertig zu gehen.~ */ GOTO 61
  IF ~  Global("Deaths_Adv","GLOBAL",3)
~ THEN REPLY #32167 /* ~Mach dich fertig zu gehen.~ */ GOTO 62
END

IF ~~ THEN BEGIN 19 // from: 17.3 66.0
  SAY #32168 /* ~"Das hängt ganz von deiner Gesinnung ab! Gute Menschen kommen auf die Oberen Ebenen und *schlechte* Menschen auf die Unteren Ebenen..." Er verdreht die Augen und greift sich mit dramatischer Geste ans Herz. "...mögen die Mächte ihren Seelen gnädig sein."~ */
  IF ~~ THEN REPLY #32169 /* ~"Wohin kommen neutrale Leute?"~ */ GOTO 20
  IF ~~ THEN REPLY #32170 /* ~"Ich hätte noch eine andere Frage..."~ */ GOTO 17
  IF ~~ THEN REPLY #32171 /* ~"Das ist alles, was ich wissen wollte."~ */ GOTO 18
END

IF ~~ THEN BEGIN 20 // from: 19.0
  SAY #32172 /* ~Er hebt eine Augenbraue. "Eine ausgezeichnete Frage, ausgezeichnet!" Er hebt einen Finger und wendet sich an das Publikum. "Die Antwort ist: ein Geist, der ein Leben völliger Neutralität gelebt hat, ohne Neigungen zum Guten oder Bösen gehabt zu haben, wird ein Sucher in den *Außenländern*, den Ländern, die Sigil umgeben. Sie kommen nicht auf eine Ebene, sondern in das Land, das gerade außerhalb unseres Himmels liegt und von dem die Säule ein Teil ist."~ */
  IF ~~ THEN REPLY #32173 /* ~"Ich hätte noch eine andere Frage..."~ */ GOTO 17
  IF ~~ THEN REPLY #32174 /* ~"Das ist alles, was ich wissen wollte."~ */ GOTO 18
END

IF ~~ THEN BEGIN 21 // from: 17.0 66.1
  SAY #32175 /* ~"Ein Sucher ist das, was man wird, wenn man auf dieser neuen Ebene ankommt, nachdem man gestorben ist. Als Sucher gibt man alle Erinnerungen und sein vergangenes Leben auf und konzentriert sich einzig und allein auf das neue Leben. Und das Ziel dieses neuen Lebens ist...?" Er wartet lächelnd auf deine Antwort.~ */
  IF ~~ THEN REPLY #32176 /* ~"mit der Ebene zu verschmelzen."~ */ GOTO 22
  IF ~~ THEN REPLY #32177 /* ~"Beantworte deine Frage doch selbst. Ich laß mich von dir nicht prüfen."~ */ GOTO 23
  IF ~~ THEN REPLY #32178 /* ~"Behandle mich nicht wie ein Kleinkind, du Blödmann."~ */ GOTO 23
END

IF ~~ THEN BEGIN 22 // from: 21.0
  SAY #32179 /* ~"Sehr gut! Es sieht so aus, als ob meine Worte tatsächlich in deinen Schädel gedrungen sind!" Das Publikum kichert.~ */
  IF ~~ THEN REPLY #32180 /* ~"Ich hätte noch eine andere Frage..."~ */ GOTO 17
  IF ~~ THEN REPLY #32182 /* ~"Das ist alles, was ich wissen wollte."~ */ GOTO 18
END

IF ~~ THEN BEGIN 23 // from: 21.1 21.2
  SAY #32183 /* ~"Hm. Dann wirst du's eben nie erfahren."~ */
  IF ~~ THEN REPLY #32185 /* ~"Ich hätte noch eine andere Frage..."~ */ GOTO 17
  IF ~~ THEN REPLY #32186 /* ~"Das ist alles, was ich wissen wollte."~ */ GOTO 18
END

IF ~~ THEN BEGIN 24 // from: 17.1 66.2
  SAY #32188 /* ~Ihm scheint bei deiner Frage nicht ganz wohl zu sein. "Nun... ja."~ */
  IF ~~ THEN REPLY #32190 /* ~"Wie jetzt?"~ */ GOTO 25
  IF ~~ THEN REPLY #32192 /* ~"Was passiert, wenn sie sterben?"~ */ GOTO 26
  IF ~~ THEN REPLY #32193 /* ~"Ich hätte noch eine andere Frage..."~ */ GOTO 17
  IF ~~ THEN REPLY #32194 /* ~"Das ist alles, was ich wissen wollte."~ */ GOTO 18
END

IF ~~ THEN BEGIN 25 // from: 24.0 26.1
  SAY #32197 /* ~Deine Frage scheint ihm noch weniger zu behagen. "Nun... auf einem der normalen Wege."~ */
  IF ~  NearbyDialog("DMorte")
~ THEN EXTERN ~DMORTE~ 309
  IF ~  !NearbyDialog("DMorte")
~ THEN REPLY #32198 /* ~"Was passiert, wenn sie sterben?"~ */ GOTO 26
  IF ~  !NearbyDialog("DMorte")
~ THEN REPLY #32199 /* ~"Ich hätte noch eine andere Frage..."~ */ GOTO 17
  IF ~  !NearbyDialog("DMorte")
~ THEN REPLY #32201 /* ~"Das ist alles, was ich wissen wollte."~ */ GOTO 18
END

IF ~~ THEN BEGIN 26 // from: 24.1 25.1
  SAY #32203 /* ~Deine Frage scheint ihm noch weniger zu behagen. "Nun... man verschmilzt mit der Ebene."~ */
  IF ~~ THEN REPLY #32204 /* ~"Was passiert, wenn ein Sucher auf einer anderen Ebene als seiner Heimatebene stirbt?"~ */ GOTO 27
  IF ~~ THEN REPLY #32205 /* ~"Und wie können sie sterben?"~ */ GOTO 25
  IF ~~ THEN REPLY #32207 /* ~"Ich hätte noch eine andere Frage..."~ */ GOTO 17
  IF ~~ THEN REPLY #32208 /* ~"Das ist alles, was ich wissen wollte."~ */ GOTO 18
END

IF ~~ THEN BEGIN 27 // from: 26.0
  SAY #32209 /* ~Man sieht ihm an, daß diese Frage ihm äußerst unangenehm ist. "Äh... nun, dann ist *das* das Ende des Lebens, dort... äh, aber kein Sucher will seine Heimatebene verlassen, mein Freund!" Er schaut sich um und merkt, daß er in der Falle sitzt. "Das zu tun würde, äh, bedeuten, daß er alles vergißt, wenn er stirbt, genau."~ */
  IF ~~ THEN REPLY #32210 /* ~"Hmm. Ich hätte da noch eine Frage..."~ */ GOTO 17
  IF ~~ THEN REPLY #32212 /* ~"Aha. Das ist alles, was ich wissen wollte."~ */ GOTO 18
END

IF ~~ THEN BEGIN 28 // from: 17.2 66.3
  SAY #32213 /* ~Er zieht eine Augenbraue hoch. "Wie bitte? Was?"~ */
  IF ~~ THEN REPLY #32214 /* ~"Ich *sagte*, wieso verlieren Sucher ihre Erinnerungen, wenn sie sterben?"~ */ GOTO 29
  IF ~~ THEN REPLY #32216 /* ~"Vergiß es. Ich hätte da noch eine andere Frage..."~ */ GOTO 17
  IF ~~ THEN REPLY #32217 /* ~"Schon gut. Ich will gar nichts fragen."~ */ GOTO 18
END

IF ~~ THEN BEGIN 29 // from: 28.0
  SAY #32219 /* ~Man merkt, daß ihm deine Frage unangenehm ist. "Äh... nun, wer belastet sich denn schon gerne mit solchen Dingen wie Erinnerungen?" Das Publikum murmelt vor sich hin.~ */
  IF ~~ THEN REPLY #32220 /* ~"Ich."~ */ GOTO 30
  IF ~~ THEN REPLY #32221 /* ~"Aber *wieso* verlieren sie ihre Erinnerungen?"~ */ GOTO 31
  IF ~~ THEN REPLY #32222 /* ~"Hmm. Ich hätte da noch eine Frage..."~ */ GOTO 17
  IF ~~ THEN REPLY #32223 /* ~"Aha. Das ist alles, was ich wissen wollte."~ */ GOTO 18
END

IF ~~ THEN BEGIN 30 // from: 29.0
  SAY #32224 /* ~Der Sprecher lächelt ironisch. "Wenn man dich so ansieht, braucht man auch gar nicht weiter zu fragen, warum!" Das Publikum kichert.~ */
  IF ~~ THEN REPLY #32225 /* ~"*Wieso* also verlieren sie ihre Erinnerungen?"~ */ GOTO 31
  IF ~~ THEN REPLY #32226 /* ~"Hmm. Ich hätte da noch eine Frage..."~ */ GOTO 17
  IF ~~ THEN REPLY #32227 /* ~"Aha. Das ist alles, was ich wissen wollte."~ */ GOTO 18
END

IF ~~ THEN BEGIN 31 // from: 29.1 30.0
  SAY #32228 /* ~"Ich..." Er runzelt die Stirn, fängt an, etwas zu sagen und bricht dann ab. Nach einer Weile fährt er fort, wobei er seine Worte sorgfältig wählt. "Ich kann mir vorstellen, daß es daran liegt, daß man neu anfangen muß, daß die Seele des Suchers rein sein muß, wenn man auf der neuen Ebene ankommt."~ */
  IF ~  CheckStatGT(Protagonist,14,INT)
~ THEN REPLY #32229 /* ~"Und warum sollte man alle seine Erinnerungen verlieren müssen, wenn doch schließlich die gesamte Lebenserfahrung dafür ausschlaggebend ist, auf welche Ebene man kommt?"~ */ GOTO 32
  IF ~~ THEN REPLY #32231 /* ~"Das ist doch keine Antwort."~ */ GOTO 33
  IF ~~ THEN REPLY #32232 /* ~"Das ist ja... schrecklich. Wie ein übler Witz."~ */ GOTO 38
  IF ~~ THEN REPLY #32233 /* ~"Hmm. Ich hätte da noch eine Frage..."~ */ GOTO 17
  IF ~~ THEN REPLY #32235 /* ~"Aha. Das ist alles, was ich wissen wollte."~ */ GOTO 18
END

IF ~~ THEN BEGIN 32 // from: 31.0 38.0
  SAY #32236 /* ~Man merkt, daß ihm deine Frage sehr unangenehm ist. "Nun... ich..." Er hält inne. "Hmm. Ich weiß es nicht."~ */
  IF ~~ THEN REPLY #32237 /* ~"Das ist doch keine Antwort."~ */ GOTO 33
  IF ~~ THEN REPLY #32238 /* ~"Gut... ich hätte da noch eine andere Frage..."~ */ GOTO 17
  IF ~~ THEN REPLY #32239 /* ~"Aha. Das ist alles, was ich wissen wollte."~ */ GOTO 18
END

IF ~~ THEN BEGIN 33 // from: 31.1 32.0 38.1
  SAY #32240 /* ~Er wird ärgerlich. "Hast du etwa eine *bessere* Antwort, mein Freund? Vielleicht eine, die du uns mitteilen möchtest?" Das Publikum blickt zu dir.~ */
  IF ~  CheckStatGT(Protagonist,14,WIS)
~ THEN REPLY #32241 /* ~"Ich weiß zwar nicht mehr, wo oder wann ich das gehört habe, aber Erinnerungen schweben angeblich als 'Gedächtniskerne' auf der Astralebene."~ */ GOTO 34
  IF ~~ THEN REPLY #32242 /* ~"Nein..."~ */ GOTO 35
END

IF ~~ THEN BEGIN 34 // from: 33.0
  SAY #32243 /* ~Ein Zuhörer ruft: "Er hat recht!"

Der Sprecher wendet sich dem Zuhörer zu. "Äh, ja, vielleicht. Nun, dann stellt sich die Frage: Sind Erinnerungen, die jemand ein Leben lang gesammelt hat, wichtiger als ein neues Leben?"
~ */
  IF ~~ THEN REPLY #32244 /* ~Wahrheit: "Ja."~ */ GOTO 35
  IF ~~ THEN REPLY #32245 /* ~Wahrheit: "Nein."~ */ GOTO 36
  IF ~~ THEN REPLY #32246 /* ~"Ich weiß nicht."~ */ GOTO 37
END

IF ~~ THEN BEGIN 35 // from: 33.1 34.0
  SAY #32247 /* ~Er antwortet mit einem ärgerlichen Tonfall in seiner Stimme: "Dann ist es ganz einfach: Stirb nicht, mein Freund." Das Publikum kichert.~ */
  IF ~~ THEN REPLY #32248 /* ~"Hmm. Ich hätte da noch eine Frage..."~ */ GOTO 17
  IF ~~ THEN REPLY #32249 /* ~"Aha. Das ist alles, was ich wissen wollte."~ */ GOTO 18
END

IF ~~ THEN BEGIN 36 // from: 34.1
  SAY #32250 /* ~Er macht eine übertriebene halbe Verbeugung: "Siehst du!"~ */
  IF ~~ THEN REPLY #32251 /* ~"Hmm. Ich hätte da noch eine Frage..."~ */ GOTO 17
  IF ~~ THEN REPLY #32252 /* ~"Naja... das ist alles, was ich wissen wollte."~ */ GOTO 18
END

IF ~~ THEN BEGIN 37 // from: 34.2 41.1 47.1
  SAY #32253 /* ~Er grinst spöttisch. "Ja, genau *diese* Antwort habe ich von dir auch erwartet."~ */
  IF ~~ THEN REPLY #32254 /* ~"Hmm. Ich hätte da noch eine Frage..."~ */ GOTO 17
  IF ~~ THEN REPLY #32255 /* ~"Ich habe keine weiteren Fragen."~ */ GOTO 18
END

IF ~~ THEN BEGIN 38 // from: 31.2
  SAY #32256 /* ~"Aber verglichen mit dem Leben, das einen auf der neuen Ebene erwartet, ist das hier trivial!"~ */
  IF ~  CheckStatGT(Protagonist,14,INT)
~ THEN REPLY #32257 /* ~"Aber warum sollte man so was tun müssen, wenn durch die gesamte Lebenserfahrung bestimmt wird, auf welcher Ebene man letztendlich landet?"~ */ GOTO 32
  IF ~~ THEN REPLY #32258 /* ~"Das ist doch keine Antwort."~ */ GOTO 33
  IF ~~ THEN REPLY #32259 /* ~"Hmm. Ich hätte da noch eine Frage..."~ */ GOTO 17
  IF ~~ THEN REPLY #32260 /* ~"Aha. Das ist alles, was ich wissen wollte."~ */ GOTO 18
END

IF ~~ THEN BEGIN 39 // from: 17.4
  SAY #32261 /* ~Er lacht. "Unsinn! Jeder *stirbt*, mein Freund. Sogar die Götter sterben."~ */
  IF ~  GlobalLT("Deaths_Adv","GLOBAL",2)
~ THEN REPLY #32262 /* ~"Ich kann nicht sterben."~ */ GOTO 40
  IF ~~ THEN REPLY #32263 /* ~"Aber nur mal *angenommen*, daß jemand nicht sterben kann."~ */ GOTO 42
  IF ~~ THEN REPLY #32264 /* ~"Hmm. Ich hätte da noch eine Frage..."~ */ GOTO 17
  IF ~~ THEN REPLY #32265 /* ~"Aha. Das ist alles, was ich wissen wollte."~ */ GOTO 18
END

IF ~~ THEN BEGIN 40 // from: 39.0 42.0
  SAY #32266 /* ~"Na, da guck mal einer an! Welch seltenes Glück: einer der großen Unsterblichen beehrt uns mit seiner Anwesenheit! Sei gegrüßt, oh Unsterblicher!" Das Publikum lacht.~ */
  IF ~~ THEN REPLY #32267 /* ~"Ich kann es beweisen."~ */ GOTO 41
  IF ~~ THEN REPLY #32268 /* ~"Vergiß es. Ich hätte da noch eine andere Frage..."~ */ GOTO 17
  IF ~~ THEN REPLY #32269 /* ~"Vergiß es. Ich habe keine weiteren Fragen."~ */ GOTO 18
END

IF ~~ THEN BEGIN 41 // from: 40.0
  SAY #32270 /* ~"Oh, bitte, bitte beweis es mir!" Das Publikum lacht noch lauter. "Wie spannend! Paßt auf, liebe Leute. Ich glaube, wir werden heute eine einmalige Demonstration erleben! Komm hier herauf, oh Unsterblicher, und wir werden sehen, wer recht hat und wer tot ist!"~ */
  IF ~~ THEN REPLY #32271 /* ~Töte dich und steh dann wieder auf.~ */ DO ~IncrementGlobal("Death","GLOBAL",1)
FadeToColor([20.0],0)
Wait(3)
FadeFromColor([20.0],0)
SetGlobal("CW_Suicide_Reason","GLOBAL",1)
SetGlobal("Death_Lecture","GLOBAL",2)
~ GOTO 48
  IF ~~ THEN REPLY #32272 /* ~"Ach, vergiß es."~ */ GOTO 37
END

IF ~~ THEN BEGIN 42 // from: 39.1
  SAY #32273 /* ~"Nun, wie ich schon *sagte*, dann würde diese Person nie die Äußeren Ebenen erreichen und nie ein Sucher werden."~ */
  IF ~  GlobalLT("Deaths_Adv","GLOBAL",2)
~ THEN REPLY #32274 /* ~"Ich kann nicht sterben."~ */ GOTO 40
  IF ~~ THEN REPLY #32275 /* ~"Hmm. Ich hätte da noch eine Frage..."~ */ GOTO 17
  IF ~~ THEN REPLY #32276 /* ~"Aha. Das ist alles, was ich wissen wollte."~ */ GOTO 18
END

IF ~~ THEN BEGIN 43 // from: 17.5
  SAY #32277 /* ~"Verzeih mir, wenn ich mich nicht verständlich ausgedrückt habe: die 'Gesinnung' ist deine geistige Neigung: Gut oder Böse, Ordnung oder Chaos. Gesinnung ist die Weise, wie man sich *verhält*. Und das hat Folgen! Deine Gesinnung entscheidet, wo du nach deinem Tod hinkommst."~ */
  IF ~~ THEN REPLY #32278 /* ~"Ich hätte noch eine andere Frage..."~ */ GOTO 17
  IF ~~ THEN REPLY #32279 /* ~"Das ist alles, was ich wissen wollte."~ */ GOTO 18
END

IF ~~ THEN BEGIN 44 // from: 17.6
  SAY #32280 /* ~Der Sprecher kichert verächtlich... auch einige Zuhörer kichern. "Es gibt zahllose Sucher, mein Freund, darunter auch *Staubmenschen*, die der Staubmenschen-... 'Philosophie' widersprechen würden."~ */
  IF ~~ THEN REPLY #32281 /* ~"Ich hätte noch eine andere Frage..."~ */ GOTO 17
  IF ~~ THEN REPLY #32282 /* ~"Das ist alles, was ich wissen wollte."~ */ GOTO 18
END

IF ~~ THEN BEGIN 45 // from: 17.7
  SAY #32283 /* ~"Was?" Der Dozent wirkt irritiert. "Und wie stellst du dir das vor?"~ */
  IF ~~ THEN REPLY #32284 /* ~"Stirb. Hier. Jetzt."~ */ GOTO 46
  IF ~~ THEN REPLY #32285 /* ~"Vergiß es. Ich hätte da noch eine andere Frage..."~ */ GOTO 17
  IF ~~ THEN REPLY #32286 /* ~"Vergiß es. Ich habe keine weiteren Fragen."~ */ GOTO 18
END

IF ~~ THEN BEGIN 46 // from: 45.0
  SAY #32287 /* ~Das Publikum verstummt abrupt. Der Sprecher spürt, wie der Druck auf ihm liegt und schluckt. "Na gut..." Er grinst plötzlich. "Du fängst an. Ich mache es dir dann nach." Die Zuhörer kichern.~ */
  IF ~~ THEN REPLY #32288 /* ~"Abgemacht."~ */ GOTO 47
  IF ~~ THEN REPLY #32289 /* ~"Vergiß es. Ich hätte da noch eine andere Frage..."~ */ GOTO 17
  IF ~~ THEN REPLY #32290 /* ~"Vergiß es. Ich habe keine weiteren Fragen."~ */ GOTO 18
END

IF ~~ THEN BEGIN 47 // from: 46.0
  SAY #32291 /* ~"Gut!" Das Gesicht des Sprechers sieht einen Moment lang wie versteinert aus, dann hellt sich seine Miene auf. "Komm auf die Bühne, mein Freund!" Lächelnd richtet er das Wort an das Publikum. "Welch seltenes Vergnügen, meine lieben Bewohner von Sigil. Heute, und nur heute, werden wir Zeuge sein, wie man ein Sucher wird."~ */
  IF ~~ THEN REPLY #32292 /* ~Töte dich und steh dann wieder auf.~ */ DO ~IncrementGlobal("Death","GLOBAL",1)
FadeToColor([20.0],0)
Wait(3)
FadeFromColor([20.0],0)
SetGlobal("CW_Suicide_Reason","GLOBAL",2)
SetGlobal("Death_Lecture","GLOBAL",2)
~ GOTO 48
  IF ~~ THEN REPLY #32293 /* ~"Ach, vergiß es."~ */ GOTO 37
END

IF ~~ THEN BEGIN 48 // from: 41.0 47.0
  SAY #32294 /* ~Das Gesicht des Sprechers wird bleich. Er weicht einen Schritt zurück. "Bei den Mächten...!"~ */
  IF ~  Global("CW_Suicide_Reason","GLOBAL",1)
~ THEN REPLY #32295 /* ~"So, *du* bist dran!"~ */ GOTO 49
  IF ~  Global("CW_Suicide_Reason","GLOBAL",2)
~ THEN REPLY #32296 /* ~"Du bist dran."~ */ GOTO 49
  IF ~  Global("CW_Suicide_Reason","GLOBAL",2)
~ THEN REPLY #32297 /* ~Lächle ihn an.~ */ GOTO 49
END

IF ~~ THEN BEGIN 49 // from: 48.0 48.1 48.2
  SAY #32298 /* ~"Äh..." Das Publikum schaut mit makabrer Faszination zu. "Nun..."~ */
  IF ~  Global("CW_Suicide_Reason","GLOBAL",1)
~ THEN REPLY #32299 /* ~"Los, stirb. Hier. Jetzt. Beweise, daß das, was du sagst, wahr ist. Werde ein Sucher."~ */ GOTO 50
  IF ~  Global("CW_Suicide_Reason","GLOBAL",2)
~ THEN REPLY #32300 /* ~Täuschung: "Bring dich selbst um, sonst tue ich's für dich."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_DA_1","GLOBALLaw",-1)
~ GOTO 50
  IF ~  Global("CW_Suicide_Reason","GLOBAL",2)
~ THEN REPLY #32301 /* ~Wahrheit: "Bring dich selbst um, sonst tue ich's für dich."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_DA_1","GLOBALGood",-1)
~ GOTO 50
END

IF ~~ THEN BEGIN 50 // from: 49.0 49.1 49.2
  SAY #32302 /* ~Er schluckt heftig. "Nun... äh... hmmmn." Zögerlich bietet er an: "He. Ich muß zugeben, daß ich noch nicht *ganz* soweit bin, dieses Leben zu verlassen."~ */
  IF ~~ THEN REPLY #32303 /* ~Töte ihn.~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_DA_1","GLOBALGood",-2)
ForceAttack(Protagonist,Myself)
Enemy()
RunAwayFromEx(Protagonist,TEN_AI_SECONDS,FALSE)
SetGlobal("Death_Lecture","GLOBAL",4)
SetGlobal("Lecture_Death","GLOBAL",2)
~ EXIT
  IF ~~ THEN REPLY #32304 /* ~Tu so, als ob du ihn töten willst, stoppe aber *kurz* vor seinem Hals.~ */ DO ~SetGlobal("Deaths_Adv","GLOBAL",3)
~ GOTO 51
  IF ~~ THEN REPLY #32305 /* ~"Also ist dieses tolle neue Leben auf den Äußeren Ebenen vielleicht doch nicht toll, was?"~ */ DO ~SetGlobal("Deaths_Adv","GLOBAL",2)
~ GOTO 52
  IF ~~ THEN REPLY #32306 /* ~"Genau wie ich's mir *gedacht* habe, du pompöser aufgeblasener Scharlatan."~ */ DO ~SetGlobal("Deaths_Adv","GLOBAL",2)
~ GOTO 53
END

IF ~~ THEN BEGIN 51 // from: 50.1
  SAY #32307 /* ~Der Sprecher zuckt zusammen, kneift die Augen zu und kreischt... du hörst ein plätscherndes Geräusch, als er sich in die Hosen macht.
~ */
  IF ~~ THEN REPLY #32308 /* ~"Also ist dieses tolle neue Leben auf den Äußeren Ebenen vielleicht doch nicht toll, was?"~ */ GOTO 52
  IF ~~ THEN REPLY #32309 /* ~"Genau wie ich's mir *gedacht* habe, du pompöser aufgeblasener Scharlatan."~ */ GOTO 53
END

IF ~~ THEN BEGIN 52 // from: 50.2 51.0
  SAY #32310 /* ~Dem Sprecher wird seine Heuchelei bewußt, aber er hat Angst vor der Alternative. "Vielleicht nicht. He." Er wirft einen kurzen Blick auf das Publikum. "Äh...naja. Auf jeden Fall nicht *im Moment*."~ */
  IF ~~ THEN REPLY #32311 /* ~"Wie ich's mir gedacht habe. Ich hätte da noch eine Frage..."~ */ GOTO 17
  IF ~~ THEN REPLY #32312 /* ~"Genau wie ich's mir gedacht habe. Ich habe keine weiteren Fragen."~ */ GOTO 18
END

IF ~~ THEN BEGIN 53 // from: 50.3 51.1
  SAY #32313 /* ~"Äh... ja." Der Sprecher wirkt verschüchtert und seine Stimme wird angesichts der Niederlage immer leiser. "Hmmmn. Ja."~ */
  IF ~~ THEN REPLY #32314 /* ~"Ich hätte noch eine andere Frage..."~ */ GOTO 17
  IF ~~ THEN REPLY #32315 /* ~"Ich habe keine weiteren Fragen."~ */ GOTO 18
END

IF ~~ THEN BEGIN 54 // from: 17.8
  SAY #32316 /* ~"Hast du noch nie was darüber gehört, du planloser Idiot? Über den Krieg zwischen den Baatezu und den Tanar-Ri? Ich habe nicht mehrere Jahrhunderte Zeit, um dir diesen Konflikt zu erklären. Frage einen anderen, denn das ist nicht Thema dieses Vortrags."~ */
  IF ~~ THEN REPLY #32317 /* ~"Ich hätte noch eine andere Frage..."~ */ GOTO 17
  IF ~~ THEN REPLY #32318 /* ~"Ich habe keine weiteren Fragen."~ */ GOTO 18
END

IF ~~ THEN BEGIN 55 // from: 17.9
  SAY #32319 /* ~"Oh? Über welche Ebene willst du denn was wissen?"~ */
  IF ~~ THEN REPLY #32320 /* ~"Über den Abgrund..."~ */ GOTO 56
  IF ~~ THEN REPLY #32321 /* ~"Über Baator..."~ */ GOTO 57
  IF ~~ THEN REPLY #32322 /* ~"Über Carzeri..."~ */ GOTO 58
  IF ~~ THEN REPLY #32323 /* ~"Über den Berg Zelestia..."~ */ GOTO 59
  IF ~~ THEN REPLY #32324 /* ~"Vergiß es. Ich hätte da noch eine andere Frage..."~ */ GOTO 17
  IF ~~ THEN REPLY #32325 /* ~"Ach, vergiß es. Ich habe keine weiteren Fragen."~ */ GOTO 18
END

IF ~~ THEN BEGIN 56 // from: 55.0
  SAY #32326 /* ~"Der Abgrund ist eine Ebene mit über sechshundert Schichten aus eiterndem Chaos und Bösen. Heimat der scheußlichen Tanar-Ri!" Er macht eine dramatische Geste. "Aber du solltest jemanden fragen, der mehr über die Ebenen weiß als ich."~ */
  IF ~~ THEN REPLY #32327 /* ~"Ich hätte noch eine andere Frage..."~ */ GOTO 17
  IF ~~ THEN REPLY #32328 /* ~"Ich habe keine weiteren Fragen."~ */ GOTO 18
END

IF ~~ THEN BEGIN 57 // from: 55.1
  SAY #32329 /* ~"Baator, das sind neun streng geregelte Ebenen mit erlaubtem Bösen." Er kichert und macht eine dramatische Geste. "Heimat der scheußlichen Baatezu! Unterschreib einen Vertrag mit ihnen, und du wirst für den Rest deines Lebens in die Ketten ihrer Intrigen gefesselt sein!" Er lächelt. "Aber du solltest jemanden fragen, der mehr über die Ebenen weiß als ich."~ */
  IF ~~ THEN REPLY #32330 /* ~"Ich hätte noch eine andere Frage..."~ */ GOTO 17
  IF ~~ THEN REPLY #32331 /* ~"Ich habe keine weiteren Fragen."~ */ GOTO 18
END

IF ~~ THEN BEGIN 58 // from: 55.2
  SAY #32332 /* ~"Carzeri, das ist die Gefängnisebene, kalt, brutal und von Blut triefend. Verräter und Lügner lassen sich dort nieder... es heißt, daß die Titanen dorthin verbannt wurden, als sie vom Olymp verjagt wurden!" Er macht eine dramatische Geste. "Aber du solltest jemanden fragen, der mehr über die Ebenen weiß als ich."~ */
  IF ~~ THEN REPLY #32333 /* ~"Ich hätte noch eine andere Frage..."~ */ GOTO 17
  IF ~~ THEN REPLY #32334 /* ~"Ich habe keine weiteren Fragen."~ */ GOTO 18
END

IF ~~ THEN BEGIN 59 // from: 55.3
  SAY #32335 /* ~"Der Berg Zelestia ist eine Ebene des ewigen Guten und Glaubens." Er faltet die Hände wie zum Gebet. "Wo Devas durch die Lüfte fliegen, Archonen ehrenhaft und nobel herrschen... ein wahres Modell des Guten!" Er lächelt. "Aber du solltest jemanden fragen, der mehr über die Ebenen weiß als ich."~ */
  IF ~~ THEN REPLY #32336 /* ~"Ich hätte noch eine andere Frage..."~ */ GOTO 17
  IF ~~ THEN REPLY #32337 /* ~"Ich habe keine weiteren Fragen."~ */ GOTO 18
END

IF ~~ THEN BEGIN 60 // from: 18.0
  SAY #32338 /* ~"... dann werde ich jetzt gehen... fürs erste. Ich werde noch mehr Vorträge hier in der Halle halten und vielleicht treffe ich *euch* in kommenden Jahren... als Sucher jenseits der Tür des Todes!"~ */
  IF ~~ THEN REPLY #32339 /* ~Verlaß die Vorlesungshalle.~ */ DO ~SetGlobal("Lecture_Death","GLOBAL",2)
~ EXIT
END

IF ~~ THEN BEGIN 61 // from: 18.1
  SAY #32340 /* ~Er scheint bestrebt, die Sache zu beenden. "...Dann schließe ich diese Sitzung... Ähm, ich werde den Vortrag hier in der Halle fortsetzen, also... äh... sag es allen euren Freunden."~ */
  IF ~~ THEN REPLY #32341 /* ~Verlaß die Vorlesungshalle.~ */ DO ~SetGlobal("Lecture_Death","GLOBAL",2)
~ EXIT
END

IF ~~ THEN BEGIN 62 // from: 18.2
  SAY #32342 /* ~Er scheint bestrebt, die Sache zu beenden. "...Dann schließe ich diese Sitzung... Ähm, ich werde den Vortrag hier in der Halle fortsetzen, also... äh... sag es allen euren Freunden."~ */
  IF ~~ THEN REPLY #32343 /* ~Verlaß die Vorlesungshalle.~ */ DO ~SetGlobal("Lecture_Death","GLOBAL",2)
~ GOTO 63
END

IF ~~ THEN BEGIN 63 // from: 62.0
  SAY #32344 /* ~Jemand im Publikum ruft: "Machen wir! Damit wir noch mal sehen, wie du dir in die Hosen machst!" Der Raum füllt sich mit Gelächter...~ */
  IF ~~ THEN GOTO 64
END

IF ~~ THEN BEGIN 64 // from: 63.0
  SAY #32345 /* ~"Äh... hmm."~ */
  IF ~~ THEN REPLY #32346 /* ~Geh.~ */ DO ~SetGlobal("Lecture_Death","GLOBAL",2)
~ EXIT
END

IF ~~ THEN BEGIN 65 // from:
  SAY #49450 /* ~Der kleine untersetzte Mann wirkt in seiner Körperhaltung etwas selbstherrlich. Er scheint gerade eine Vorlesung zu halten.~ */
  IF ~~ THEN REPLY #49451 /* ~Bleib, um dem Vortrag zuzuhören.~ */ GOTO 0
  IF ~~ THEN REPLY #49452 /* ~Geh weg.~ */ EXIT
END

IF ~~ THEN BEGIN 66 // from:
  SAY #64424 /* ~"Dann nur weiter..."~ */
  IF ~~ THEN REPLY #64425 /* ~"Wodurch wird bestimmt, auf welcher Ebene sie auftauchen, wenn sie sterben?"~ */ GOTO 19
  IF ~~ THEN REPLY #64426 /* ~"Was ist ein Sucher?"~ */ GOTO 21
  IF ~~ THEN REPLY #64427 /* ~"Kann ein Sucher sterben?"~ */ GOTO 24
  IF ~~ THEN REPLY #64428 /* ~"Warum verlieren Sucher ihr Gedächtnis?"~ */ GOTO 28
  IF ~~ THEN REPLY #64429 /* ~"Vergiß es einfach. Keine Frage."~ */ GOTO 18
END
