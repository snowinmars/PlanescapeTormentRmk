// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DBEDAI.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\de_DE\dialog.tlk
// dialogF  : (none)

BEGIN ~DBEDAI~
//////////////////////////////////////////////////
// WARNING: this file contains non-trivial WEIGHTs
//////////////////////////////////////////////////

IF WEIGHT #0 ~  Global("Smuggle","GLOBAL",6)
~ THEN BEGIN 0 // from:
  SAY #43055 /* ~"Besten Dank für deine Hilfe. Vielleicht sehen wir uns später... Kann auch sein, daß du auf einen meiner Freunde triffst. Wir sind überall."~ */
  IF ~~ THEN REPLY #43056 /* ~"Ich hätte da ein paar Fragen..."~ */ GOTO 9
  IF ~~ THEN REPLY #43057 /* ~"Dann leb wohl."~ */ EXIT
END

IF WEIGHT #1 ~  Global("Smuggle","GLOBAL",5)
~ THEN BEGIN 1 // from:
  SAY #43058 /* ~"Es ist noch ein weiter Weg bis zum Lagerhaus. Was willst du?"~ */
  IF ~~ THEN REPLY #43059 /* ~"Ich hätte da ein paar Fragen..."~ */ GOTO 9
  IF ~~ THEN REPLY #43060 /* ~"Nichts."~ */ EXIT
END

IF WEIGHT #2 ~  Global("Alarm2","GLOBAL",1)
~ THEN BEGIN 2 // from:
  SAY #43061 /* ~Die Ingenieurin wirft dir einen verächtlichen Blick zu. "Hau ab! Ich hab keine Zeit für Leute wie dich!"~ */
  IF ~~ THEN REPLY #43062 /* ~Greif sie an.~ */ DO ~Enemy()
~ EXIT
  IF ~~ THEN REPLY #43063 /* ~Geh weg.~ */ EXIT
END

IF WEIGHT #3 ~  Global("Alarm1","GLOBAL",1)
~ THEN BEGIN 3 // from:
  SAY #43064 /* ~Sie schaut dich verwundert an, ohne einen Ton zu sagen, und wartet darauf, daß die Wache kommt.~ */
  IF ~~ THEN REPLY #43065 /* ~"Ich hätte da ein paar Fragen..."~ */ GOTO 4
  IF ~~ THEN REPLY #43066 /* ~"Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 3.0
  SAY #43067 /* ~Sie starrt dich weiter an. "Ich kann dir im Moment keine Antwort geben. Vielleicht später, wenn du zurückkommst."~ */
  IF ~~ THEN REPLY #43068 /* ~"Dann leb wohl."~ */ EXIT
END

IF WEIGHT #4 ~  GlobalGT("Smuggle","GLOBAL",1)
!Global("Smuggle","GLOBAL",3)
~ THEN BEGIN 5 // from:
  SAY #43069 /* ~"Hast du dir schon Gedanken gemacht, wie wir hier rauskommen? So lassen sie mich jedenfalls nicht raus. Ich brauche eine Verkleidung oder so was."~ */
  IF ~~ THEN REPLY #43070 /* ~"Weißt du schon, als was du dich verkleiden könntest?"~ */ GOTO 6
  IF ~  PartyHasItem("Disguise")
~ THEN REPLY #43071 /* ~"Ich hab dir was mitgebracht: Damit kannst du dich als Schmied verkleiden. Zieh es an."~ */ DO ~DestroyPartyItem("Disguise",TRUE)
~ GOTO 7
  IF ~~ THEN REPLY #43072 /* ~"Nein, noch nicht. Ich hätte da noch ein paar Fragen an dich..."~ */ GOTO 9
  IF ~~ THEN REPLY #43073 /* ~"Nein, noch nicht. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 6 // from: 5.0 34.1 35.0 36.0
  SAY #43074 /* ~"Die Schmiede werden normalerweise anstandslos durchgelassen. Vielleicht solltest du eine komplette Schmiedeausrüstung und die richtigen Klamotten besorgen... Allerdings hab ich keine Ahnung, wo man so was herkriegt. Aber bitte leg nicht noch mehr Leute um, klar? Ich hab schon genug Ärger. Es muß ja nicht gleich die ganze Stadt erfahren. In anderen Worten: Bring bloß keinen Schmied wegen Kleidern um, die mir wahrscheinlich ohnehin nicht passen würden."~ */
  IF ~  PartyHasItem("Disguise")
~ THEN REPLY #43075 /* ~"Ich hab dir was mitgebracht: Damit kannst du dich als Schmied verkleiden. Zieh es an."~ */ DO ~DestroyPartyItem("Disguise",TRUE)
~ GOTO 7
  IF ~~ THEN REPLY #43076 /* ~"Gut. Mal sehn, was sich da machen läßt. Aber beantworte mir doch zunächst ein paar Fragen..."~ */ GOTO 9
  IF ~~ THEN REPLY #43077 /* ~"In Ordnung. Mal sehn, was sich da machen läßt. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 7 // from: 5.1 6.0
  SAY #43078 /* ~"Ich werde dies anlegen, sobald wir losgehen können. Also was jetzt? Du wirst mich hinausführen müssen."~ */
  IF ~~ THEN REPLY #43079 /* ~"Na dann, laß uns gehen."~ */ GOTO 8
END

IF ~~ THEN BEGIN 8 // from: 7.0
  SAY #43082 /* ~"Laß uns zuerst in Richtung Haupteingang und dann zu dem Lagerhaus gehen, wo bereits ein paar Freunde von mir warten. Bist du bereit?"~ */
  IF ~~ THEN REPLY #43083 /* ~"Gehn wir."~ */ DO ~SetGlobal("Smuggle","GLOBAL",5)
AddexperienceParty(8000)
StartCutSceneMode()
StartCutSceneEx("0503cut1",FALSE)
~ EXIT
END

IF ~~ THEN BEGIN 9 // from: 0.0 1.0 5.2 6.1 10.4 11.2 12.3 13.0 14.2 15.4 16.3 17.0 18.1 19.0 20.1 21.2 22.1 23.2 24.2 25.0 32.1 75.0
  SAY #43084 /* ~"Was willst du wissen?"~ */
  IF ~~ THEN REPLY #43085 /* ~"Erzähl mir von der Revolutionsliga."~ */ GOTO 10
  IF ~~ THEN REPLY #43086 /* ~"Erzähl mir von den Göttermenschen."~ */ GOTO 17
  IF ~~ THEN REPLY #43087 /* ~"Warum zerstörst du alles?"~ */ GOTO 18
  IF ~~ THEN REPLY #43088 /* ~"Erzähl mir was über dich."~ */ GOTO 20
  IF ~~ THEN REPLY #43089 /* ~"Was ist mit Saros?"~ */ GOTO 75
  IF ~~ THEN REPLY #43090 /* ~"Nichts. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 10 // from: 9.0
  SAY #43091 /* ~Sie schaut dich mit zusammengekniffenen Augen an, als würde sie dich mustern. Sie sagt: "Wir glauben, daß es im Wesen der Macht liegt, Verworfenheit zu bringen. Unsere Aufgabe ist es, aufkommende Macht bereits im Keim zu ersticken. Die Bünde Sigils sind eines unserer Hauptziele, denn sie monopolisieren die Stadt der Tore, eine Stadt, die eigentlich allen offenstehen sollte. Statt dessen unterdrücken sie alle, die frei sprechen und eigene Entscheidungen treffen. Die Machtstruktur Sigils muß zerstört werden!"~ */
  IF ~~ THEN REPLY #43092 /* ~"Wie ist die Revolutionsliga aufgebaut?"~ */ GOTO 15
  IF ~~ THEN REPLY #43093 /* ~"Wieso hast du dich überhaupt mit diesen Leuten eingelassen?"~ */ GOTO 11
  IF ~~ THEN REPLY #43094 /* ~"Könnte man nicht mit dem System arbeiten, um es zu verändern?"~ */ GOTO 12
  IF ~~ THEN REPLY #43095 /* ~"Wie wird man Mitglied der Revolutionsliga?"~ */ GOTO 13
  IF ~~ THEN REPLY #43096 /* ~"Ich hätte da noch ein paar Fragen."~ */ GOTO 9
  IF ~~ THEN REPLY #43097 /* ~"Mehr wollt' ich gar nicht wissen. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 11 // from: 10.1 12.1 14.0 15.1 16.0
  SAY #43098 /* ~"Mein Vater, ein Mitglied der Freien Liga, kam bei einer Auseinandersetzung mit einer der Wachen der Schicksalsgarde ums Leben. Der Fall kam nie vor Gericht. Meine Mutter hat für Gerechtigkeit gekämpft, wurde dann aber von den Dickschädeln wegen Unruhestiftung verhaftet. Ein korrupter Richter befand sie für schuldig, den Frieden gebrochen und anarchische Verhältnisse geschaffen zu haben. Zur Strafe wurde sie von den Gnadentötern hingerichtet. Ist doch klar, daß ich mich den Anarchisten angeschlossen habe. Sie kennen die einzigen Antworten, die ich noch suche."~ */
  IF ~~ THEN REPLY #43100 /* ~"Könnte man nicht mit dem System arbeiten, um es zu verändern?"~ */ GOTO 12
  IF ~~ THEN REPLY #43101 /* ~"Wie wird man Mitglied der Revolutionsliga?"~ */ GOTO 13
  IF ~~ THEN REPLY #43102 /* ~"Ich hätte da noch ein paar Fragen."~ */ GOTO 9
  IF ~~ THEN REPLY #43103 /* ~"Mehr wollt' ich gar nicht wissen. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 12 // from: 10.2 11.0 15.2 16.1
  SAY #43104 /* ~"Mit diesem System? Da wirst du eher selbst korrupt, als daß du irgendwelche Veränderungen bewirken könntest. Das System ist nicht daran interessiert, sich in seiner Macht beschneiden zu lassen. Die Menschen sind so beschaffen, daß sie ihre Macht erhalten und ausbauen wollen, auch wenn sie dabei über Leichen gehen müssen. Ein falsches Wort über die Bünde, und du bist tot, bevor du es überhaupt merkst. Da ist es tausendmal besser, alles zu zerstören und neu anzufangen."~ */
  IF ~~ THEN REPLY #43105 /* ~"Auf diese Weise leiden viele Unschuldige."~ */ GOTO 14
  IF ~~ THEN REPLY #43106 /* ~"Wieso hast du dich mit den Anarchisten eingelassen?"~ */ GOTO 11
  IF ~~ THEN REPLY #43107 /* ~"Wie wird man Mitglied der Revolutionsliga?"~ */ GOTO 13
  IF ~~ THEN REPLY #43108 /* ~"Ich hätte da noch ein paar Fragen."~ */ GOTO 9
  IF ~~ THEN REPLY #43109 /* ~"Mehr wollt' ich gar nicht wissen. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 13 // from: 10.3 11.1 12.2 14.1 15.3 16.2
  SAY #43110 /* ~Sie betrachtet dich skeptisch. "Mitglied bei uns? Hmmm. Du hast dich bereits so stark eingebracht, daß du uns insgesamt mehr genutzt als geschadet hast, selbst wenn du einmal den Spieß gegen uns drehen solltest." Sie hält inne und denkt etwas länger nach. "Gut. Sprich mit Gesetzesspötter Penn in der Druckerei. Sag ihm, daß ich gesagt habe: 'Die Stadt muß brennen.' Er wird schon verstehen."~ */
  IF ~~ THEN REPLY #43111 /* ~"'Die Stadt muß brennen.' Zu Befehl. Ich hätte noch ein paar Fragen."~ */ JOURNAL #68106 /* ~Bedai-Lihn hat mich beauftragt, Gesetzesspötter Penn in der Druckerei aufzusuchen und ihm folgende Nachricht zu überbringen: "Die Stadt muß brennen."~ */ GOTO 9
  IF ~~ THEN REPLY #43112 /* ~"'Die Stadt muß brennen.' Zu Befehl. Leb wohl."~ */ JOURNAL #68106 /* ~Bedai-Lihn hat mich beauftragt, Gesetzesspötter Penn in der Druckerei aufzusuchen und ihm folgende Nachricht zu überbringen: "Die Stadt muß brennen."~ */ EXIT
END

IF ~~ THEN BEGIN 14 // from: 12.0
  SAY #43113 /* ~Sie lacht spöttisch. "Wenn du dir Gedanken über die Unschuldigen machen würdest, hättest du mir niemals geholfen. Und was ist mit all den Arbeitern, die DU getötet hast, als du die Waffe in der Gießerei zerstört hast? In jedem Krieg müssen Unschuldige dran glauben, aber wenn du auf unserer Seite bist, haben sie wenigstens eine Chance. Unter der Herrschaft der Bünde haben sie nicht mal das."~ */
  IF ~~ THEN REPLY #43114 /* ~"Wieso hast du dich mit den Anarchisten eingelassen?"~ */ GOTO 11
  IF ~~ THEN REPLY #43115 /* ~"Wie wird man Mitglied der Revolutionsliga?"~ */ GOTO 13
  IF ~~ THEN REPLY #43116 /* ~"Ich hätte da noch ein paar Fragen."~ */ GOTO 9
  IF ~~ THEN REPLY #43117 /* ~"Mehr wollt' ich gar nicht wissen. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 15 // from: 10.0
  SAY #43118 /* ~"Wir sind in Zellen unterteilt, von denen jede eine unbestimmte Zahl Mitglieder hat. Die Mitglieder einer Zelle kennen die Leute einer anderen nicht, so daß wir niemanden verraten können. Klar kommt es vor, daß wir gegensätzliche Ziele verfolgen, aber wir sind so gut im Demoralisieren der menschenverachtenden Bünde, daß sich der ganze Aufwand lohnt."~ */
  IF ~~ THEN REPLY #43119 /* ~"Glaubst du nicht, daß die Aktionen deiner Gruppe dazu beitragen, daß die Bünde immer militanter und korrupter werden?"~ */ GOTO 16
  IF ~~ THEN REPLY #43120 /* ~"Wieso hast du dich mit den Anarchisten eingelassen?"~ */ GOTO 11
  IF ~~ THEN REPLY #43121 /* ~"Könnte man nicht mit dem System arbeiten, um es zu verändern?"~ */ GOTO 12
  IF ~~ THEN REPLY #43122 /* ~"Wie wird man Mitglied der Revolutionsliga?"~ */ GOTO 13
  IF ~~ THEN REPLY #43123 /* ~"Ich hätte da noch ein paar Fragen."~ */ GOTO 9
  IF ~~ THEN REPLY #43124 /* ~"Mehr wollt' ich gar nicht wissen. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 16 // from: 15.0
  SAY #43125 /* ~"Nein. Aber ihre Heuchelei ist doch ganz offensichtlich, wenn sie die Leute zugrunde richten, für deren Schutz sie sich zuvor verbürgt haben. Dieselben Leute, die behaupten, sie wollten die Struktur Sigils erhalten, sind die ersten, die sie zerstören, wenn sie sich bedroht fühlen. Wir zeigen, wie fadenscheinig ihre Vorstellungen vom Regieren sind. Wir agieren als Katalysator, nicht als Verursacher."~ */
  IF ~~ THEN REPLY #43126 /* ~"Wieso hast du dich mit den Anarchisten eingelassen?"~ */ GOTO 11
  IF ~~ THEN REPLY #43127 /* ~"Könnte man nicht mit dem System arbeiten, um es zu verändern?"~ */ GOTO 12
  IF ~~ THEN REPLY #43128 /* ~"Wie wird man Mitglied der Revolutionsliga?"~ */ GOTO 13
  IF ~~ THEN REPLY #43129 /* ~"Ich hätte da noch ein paar Fragen."~ */ GOTO 9
  IF ~~ THEN REPLY #43130 /* ~"Mehr wollt' ich gar nicht wissen. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 17 // from: 9.1
  SAY #43131 /* ~"Die Göttermenschen? Ha. Die meisten anderen Bünde tun wenigstens so, als hätten sie eine Antwort. Die Göttermenschen sind noch viel schlimmer. Sie stellen sich jedem in den Weg, der das große Geheimnis lüften will, von dem sie selbst nicht den blassesten Schimmer haben. Das sind doch nichts als Neidhammel. Und was noch schlimmer ist: Sie verseuchen den ganzen Unteren Bezirk, indem sie diesen todbringenden Nebel verbreiten, der die Alten und Schwachen tötet. Sie tun immer so, als wären sie furchtbar hilfsbereit, doch im Grunde sind sie nichts anderes als Mörder."~ */
  IF ~~ THEN REPLY #43132 /* ~"Okay. Ich hätte da noch ein paar andere Fragen..."~ */ GOTO 9
  IF ~~ THEN REPLY #43133 /* ~"Verstehe. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 18 // from: 9.2
  SAY #43134 /* ~"Weil die alte Ordnung zerstört werden muß. Indem ich einen Teil der Zentrale eines Bundes zerstört habe, habe ich dazu beigetragen, daß die Leute ihren Glauben an die Göttermenschen verlieren. Indem ich diese furchtbare Waffe vernichtet habe, habe ich das Vertrauen ihrer Kunden in die Göttermenschen geschwächt. Wenn ich einen Adlaten töte, zeige ich den anderen, daß auch die Bessergestellten zur Zielscheibe werden können und niemand danach trachten sollte, in einem korrupten System aufzusteigen, wenn man nicht das nächste Opfer sein will. Doch all diese Aktionen haben auch einen symbolischen Wert. Schließlich zerstören wir nicht um der Zerstörung willen. Sonst wären wir ja keinen Deut besser als die Schicksalsgarde."~ */
  IF ~~ THEN REPLY #43135 /* ~"Wer?"~ */ GOTO 19
  IF ~~ THEN REPLY #43136 /* ~"Ich hätte da noch ein paar Fragen."~ */ GOTO 9
  IF ~~ THEN REPLY #43137 /* ~"Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 19 // from: 18.0
  SAY #43138 /* ~"Die Schicksalsgarde. Dieses Pack, das es für seine Aufgabe hält, dafür zu sorgen, daß das Zentrum einstürzt, nur weil alles anderes auch zerfällt. Wir sind theoretisch mit der Schicksalsgarde verbündet, doch praktisch werden auch sie letztendlich gestürzt. Wie alle anderen auch."~ */
  IF ~~ THEN REPLY #43139 /* ~"Gut. Ich hätte noch ein paar andere Fragen..."~ */ GOTO 9
  IF ~~ THEN REPLY #43140 /* ~"Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 20 // from: 9.3
  SAY #43141 /* ~"Über mich? Da gibt es nicht viel zu erzählen. Ich habe gelobt, die Bünde zu stürzen, und ich habe einen Kurs in Zaubertechnik belegt, durch den ich mich bei vielen von ihnen begehrt machte. Vor den Göttermenschen gab es nämlich schon andere - viele andere. Ich habe schon so viele unterschiedliche Gesichter angenommen, daß ich mich gar nicht mehr an alle erinnern kann, und ich habe schon mehr Namen gehabt, als das Totenbuch Einträge besitzt. Ich kann dir nicht einmal mehr die Namen derer nennen, die ich verraten habe."~ */
  IF ~~ THEN REPLY #43142 /* ~"Hört sich nach einem sehr bewegten Leben an. Bist du glücklich damit?"~ */ GOTO 21
  IF ~~ THEN REPLY #43143 /* ~"Ich verstehe. Ich hätte noch ein paar andere Fragen."~ */ GOTO 9
  IF ~~ THEN REPLY #43144 /* ~"Muß ja toll sein. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 21 // from: 20.0
  SAY #43145 /* ~Sie lacht spöttisch und sagt: "Glücklich? Seit wann hat Glücklichsein etwas damit zu tun?"~ */
  IF ~~ THEN REPLY #43146 /* ~"Wenn du nicht glücklich bist, warum hörst du dann nicht auf damit?"~ */ GOTO 22
  IF ~~ THEN REPLY #43147 /* ~"Niemals. Glück ist ein falsches Ideal, das dazu mißbraucht wird, die Schwachen und die Gutgläubigen zu unterdrücken. Wahres Glück gibt es gar nicht."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Bedai_3","GLOBALGood",-1)
~ GOTO 25
  IF ~~ THEN REPLY #43148 /* ~"Du hast recht. Vergiß es. Ich hätte noch ein paar Fragen..."~ */ GOTO 9
  IF ~~ THEN REPLY #43149 /* ~"Da hast du auch wieder recht. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 22 // from: 21.0
  SAY #43150 /* ~"Warum ich nicht aufhöre? Und meine Rachsucht aufgebe? Es macht mich zu dem, was ich bin. Stell dir vor, ich würde von dir verlangen, daß du dir einen Arm amputierst und dann ganz normal weiterlebst." Sie begutachtet deine Narben. "Obwohl du womöglich dazu imstande wärst."~ */
  IF ~~ THEN REPLY #43151 /* ~"Du läßt zu, daß Haß und Bitterkeit dein Leben bestimmen?"~ */ GOTO 23
  IF ~~ THEN REPLY #43152 /* ~"Wahrscheinlich, ja. Ich hätte noch ein paar Fragen."~ */ GOTO 9
  IF ~~ THEN REPLY #43153 /* ~"Da hast du wohl recht. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 23 // from: 22.0
  SAY #43154 /* ~"Es gehört zu mir. Ohne wäre ich nichts."~ */
  IF ~~ THEN REPLY #43155 /* ~"Dann denk um und mach mehr aus dir."~ */ DO ~IncrementGlobalOnceEx("GLOBALGood_Bedai_1","GLOBALGood",1)
~ GOTO 24
  IF ~~ THEN REPLY #43157 /* ~"Dann sei halt verbittert, wenn du meinst. Stifte noch mehr Unglück. Es ist mir egal."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Bedai_1","GLOBALGood",-1)
~ GOTO 26
  IF ~~ THEN REPLY #43160 /* ~"Richtig. Ich hätte noch ein paar Fragen..."~ */ GOTO 9
  IF ~~ THEN REPLY #43163 /* ~"Dann leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 24 // from: 23.0
  SAY #43165 /* ~"Ich... ich weiß nicht, wie ich das anstellen soll."~ */
  IF ~~ THEN REPLY #43167 /* ~"Versuch's einfach. Du wirst schon sehen.."~ */ GOTO 27
  IF ~~ THEN REPLY #43168 /* ~"Dann kannst du dich genauso gut umbringen, denn was hat das Leben schon für einen Sinn, wenn man sich nicht ändern kann."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Bedai_2","GLOBALGood",-1)
~ GOTO 28
  IF ~~ THEN REPLY #43169 /* ~"Also gut. Ich hätte noch ein paar Fragen..."~ */ GOTO 9
  IF ~~ THEN REPLY #43170 /* ~"Dann laß es halt bleiben. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 25 // from: 21.1
  SAY #43171 /* ~"Das stimmt. Uns wird eingetrichtert, Glück sei das Ziel unseres Strebens, und doch scheinen so wenige wirklich glücklich zu sein... Und diejenigen die glücklich sind, sind ohnehin meist nur die Dummköpfe und die Selbstzufriedenen, die vor den Schrecken dieser Welt einfach die Augen verschließen. Ich persönlich leide lieber, als daß ich *diesen* Preis für mein Glück bezahle."~ */
  IF ~~ THEN REPLY #43172 /* ~"Wie wahr. Ich hätte noch ein paar Fragen..."~ */ GOTO 9
  IF ~~ THEN REPLY #43173 /* ~"Ja. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 26 // from: 23.1
  SAY #43174 /* ~"Natürlich ist es dir egal. Siehst du, genau diese Apathie versuchen wir zu bekämpfen. Guten Tag."~ */
  IF ~~ THEN REPLY #43175 /* ~"Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 27 // from: 24.0
  SAY #43176 /* ~"Ich werde darüber nachdenken. Aber ich kann für nichts garantieren. Leb wohl, Reisender. Du hast mir viel Stoff zum Nachdenken gegeben."~ */
  IF ~~ THEN REPLY #43177 /* ~"Das will ich hoffen. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 28 // from: 24.1
  SAY #43178 /* ~"Daran habe ich auch schon gedacht. Doch dann wurde mir klar, daß ich wenigstens etwas bewirken kann, etwas, an das ich glaube. Mehr will ich gar nicht. Leb wohl."~ */
  IF ~~ THEN REPLY #43179 /* ~"Leb wohl."~ */ EXIT
END

IF WEIGHT #7 /* Triggers after states #: 36 35 even though they appear after this state */
~  Global("F_Ass","GLOBAL",3)
~ THEN BEGIN 29 // from:
  SAY #43180 /* ~Sie schaut dich verächtlich an und sagt in spöttischem Ton: "Na, hast du's dir anders überlegt, oder weshalb bist du hier?"~ */
  IF ~~ THEN REPLY #43181 /* ~"Ich hab's mir anders überlegt. Ich bring ihn für dich um."~ */ GOTO 30
  IF ~~ THEN REPLY #43182 /* ~"Ich hätte da noch ein paar Fragen."~ */ GOTO 31
  IF ~~ THEN REPLY #43183 /* ~"Nichts. Vergiß es. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 30 // from: 29.0
  SAY #43184 /* ~"Du hattest deine Chance. Jetzt ist es zu spät. Du glaubst doch nicht etwa, daß ich dir noch trauen kann? Geh mir aus den Augen."~ */
  IF ~~ THEN REPLY #43185 /* ~"Dann beantworte mir ein paar Fragen."~ */ GOTO 31
  IF ~~ THEN REPLY #43186 /* ~"Dann leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 31 // from: 29.1 30.0 33.1 54.0
  SAY #43187 /* ~"Wenn du mir nicht hilfst, weshalb sollte ich dir dann helfen und deine Frage beantworten? Guten Tag."~ */
  IF ~~ THEN REPLY #43188 /* ~"Schönen Tag noch."~ */ EXIT
END

IF WEIGHT #8 /* Triggers after states #: 36 35 even though they appear after this state */
~  GlobalGT("F_Ass","GLOBAL",1)
!Global("F_Ass","GLOBAL",3)
GlobalLT("F_Ass","GLOBAL",5)
~ THEN BEGIN 32 // from:
  SAY #43189 /* ~"Hast du den Namen Sandoz schon ins Totenbuch geschrieben?"~ */
  IF ~  GlobalGT("Sandoz_DEAD_KAPUTZ","GLOBAL",0)
~ THEN REPLY #43190 /* ~"Ja. Er ist tot."~ */ DO ~SetGlobal("F_Ass","GLOBAL",4)
SetGlobal("Smuggle","GLOBAL",1)
AddexperienceParty(8000)
~ GOTO 34
  IF ~  !Dead("Sandoz")
~ THEN REPLY #43191 /* ~"Nein, noch nicht. Erst hätte ich da noch ein paar Fragen."~ */ GOTO 9
  IF ~  !Dead("Sandoz")
~ THEN REPLY #43192 /* ~"Noch nicht. Leb wohl."~ */ EXIT
END

IF WEIGHT #9 /* Triggers after states #: 36 35 even though they appear after this state */
~  Global("F_Ass","GLOBAL",1)
~ THEN BEGIN 33 // from:
  SAY #43193 /* ~"Hast du dich schon entschieden, ob du den Job annimmst oder nicht?"~ */
  IF ~~ THEN REPLY #43194 /* ~"Ja, ich tu's."~ */ DO ~SetGlobal("F_Ass","GLOBAL",2)
IncrementGlobalOnceEx("GLOBALEvil_Bedai_4","GLOBALGood",-1)
IncrementGlobalOnceEx("GLOBALChaos_Bedai_1","GLOBALLaw",-1)
~ GOTO 46
  IF ~~ THEN REPLY #43195 /* ~"Nein, das werd ich nicht."~ */ DO ~SetGlobal("F_Ass","GLOBAL",3)
IncrementGlobalOnceEx("GLOBALGood_Bedai_2","GLOBALGood",1)
IncrementGlobalOnceEx("GLOBALLawful_Bedai_1","GLOBALLaw",1)
~ GOTO 31
  IF ~~ THEN REPLY #43196 /* ~"Nein, noch nicht. Ich hätte noch ein paar Fragen."~ */ GOTO 38
  IF ~~ THEN REPLY #43197 /* ~"Nein, noch nicht. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 34 // from: 32.0 43.2
  SAY #43198 /* ~"Du mußt nur noch eine Sache für mich tun, dann lassen wir diese Göttermenschen mit ihrem Chaos in Ruhe. Du mußt mich hier herausschmuggeln - die Wachen werden sich einen Schuldigen suchen, und mir wär's lieber, wenn ihre Wahl nicht auf dich fiele - sobald ich verschwinde, werden sie wissen, daß ich es war, und du bist aus dem Schneider. Was meinst du?"~ */
  IF ~~ THEN REPLY #43199 /* ~"Gib mir etwas Zeit zum Nachdenken."~ */ GOTO 35
  IF ~~ THEN REPLY #43200 /* ~"Ja. Ich mach's. Was genau muß ich tun?"~ */ DO ~SetGlobal("Smuggle","GLOBAL",2)
~ GOTO 6
  IF ~~ THEN REPLY #43201 /* ~"Nein. Du willst mir doch nur den schwarzen Peter zuschieben."~ */ DO ~SetGlobal("Smuggle","GLOBAL",3)
~ GOTO 36
END

IF WEIGHT #5 ~  Global("Smuggle","GLOBAL",1)
Dead("Sandoz")
~ THEN BEGIN 35 // from: 34.0
  SAY #43202 /* ~"Ich muß aus der Gießerei rauskommen. Hilfst du mir? Ich brauche die Antwort JETZT."~ */
  IF ~~ THEN REPLY #43203 /* ~"Ach, zum Teufel... In Ordnung."~ */ DO ~SetGlobal("Smuggle","GLOBAL",2)
~ GOTO 6
  IF ~~ THEN REPLY #43204 /* ~"Nein. Du willst mir doch nur den schwarzen Peter zuschieben."~ */ DO ~SetGlobal("Smuggle","GLOBAL",3)
~ GOTO 36
  IF ~~ THEN REPLY #43205 /* ~"Ich hab doch gesagt, du sollst mir Zeit lassen. Leb wohl."~ */ EXIT
END

IF WEIGHT #6 ~  Global("Smuggle","GLOBAL",3)
~ THEN BEGIN 36 // from: 34.2 35.1
  SAY #43206 /* ~"Wenn du mir nicht hier raus helfen kannst, haben wir uns nichts mehr zu sagen."~ */
  IF ~~ THEN REPLY #43207 /* ~"Na gut. Ich hol dich hier raus."~ */ DO ~SetGlobal("Smuggle","GLOBAL",2)
~ GOTO 6
  IF ~~ THEN REPLY #43208 /* ~"Nein, ich mach's nicht."~ */ GOTO 37
END

IF ~~ THEN BEGIN 37 // from: 36.1
  SAY #43210 /* ~"Dann gibt es nichts mehr zu besprechen."~ */
  IF ~~ THEN REPLY #43211 /* ~"Dann leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 38 // from: 33.2 39.2 40.2 41.1 42.0 49.1 50.1 51.1 52.1 68.1
  SAY #43212 /* ~"Fragen? Hast du sonst nichts zu tun?"~ */
  IF ~~ THEN REPLY #43213 /* ~"Erzähl mir was über dich."~ */ GOTO 39
  IF ~  GlobalGT("F_Ass","GLOBAL",0)
~ THEN REPLY #43214 /* ~"Weshalb sollte ich das tun?"~ */ GOTO 40
  IF ~  GlobalGT("Sabotage","GLOBAL",0)
GlobalLT("Sabotage","GLOBAL",5)
~ THEN REPLY #43215 /* ~"Weshalb sollte ich das tun?"~ */ GOTO 41
  IF ~~ THEN REPLY #43216 /* ~"Was hast du eigentlich gegen die Göttermenschen?"~ */ GOTO 42
  IF ~~ THEN REPLY #43217 /* ~"Vergiß es. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 39 // from: 38.0
  SAY #43218 /* ~"Mein Name ist Bedai-Lihn. Ich bin eine Zaubertechnikerin - kein Magier, wohlgemerkt, sondern eher eine Theoretikerin. Ich werde dafür sorgen, daß die Göttermenschen keine Gelegenheit haben, diese Waffe einzusetzen oder noch mehr von diesem Kriegsgerät herzustellen."~ */
  IF ~  GlobalGT("F_Ass","GLOBAL",0)
~ THEN REPLY #43219 /* ~"Warum soll er sterben?"~ */ GOTO 40
  IF ~  GlobalGT("Sabotage","GLOBAL",0)
GlobalLT("Sabotage","GLOBAL",5)
~ THEN REPLY #43220 /* ~"Warum soll man die Maschine zerstören?"~ */ GOTO 41
  IF ~~ THEN REPLY #43221 /* ~"OK. Beantworte mir noch ein paar Fragen..."~ */ GOTO 38
  IF ~~ THEN REPLY #43222 /* ~"Verstehe. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 40 // from: 38.1 39.0
  SAY #43223 /* ~"Weil die Verträge, die die Göttermenschen mit ihren Kunden abschließen, schlecht sind. Die Göttermenschen gönnen sich den Luxus, so zu tun, als bliebe ihr Handeln ohne Konsequenzen. Das stimmt aber nicht. Und ich werde es ihnen beweisen, indem ich sicherstelle, daß die Person, die die Verträge aushandelt, nie wieder Gelegenheit dazu bekommt."~ */
  IF ~  Global("F_Ass","GLOBAL",1)
~ THEN REPLY #43224 /* ~"OK, ich tue es."~ */ DO ~SetGlobal("F_Ass","GLOBAL",2)
~ GOTO 46
  IF ~  Global("F_Ass","GLOBAL",2)
~ THEN REPLY #43225 /* ~"Ich glaube nicht, daß ich das tun will."~ */ GOTO 45
  IF ~~ THEN REPLY #43226 /* ~"Gut. Ich hätte noch ein paar andere Fragen..."~ */ GOTO 38
  IF ~~ THEN REPLY #43227 /* ~"Verstehe. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 41 // from: 38.2 39.1 68.2
  SAY #43228 /* ~"Weshalb? Weil diese Waffe im wahrsten Sinne des Wortes ein Werkzeug der Teufel ist. Die Scheusale werden sie verwenden, um der Schöpfung Unheil und Zerstörung zu bringen. Und egal, wie viele 'friedliche' Nutzungsmöglichkeiten diese Höllenmaschine bietet, niemand wird das Leid, das sie verursacht, je wieder gutmachen können."~ */
  IF ~~ THEN REPLY #43229 /* ~"Und was ist mit den Arbeitern?"~ */ GOTO 52
  IF ~~ THEN REPLY #43230 /* ~"Gut. Ich hätte noch ein paar andere Fragen..."~ */ GOTO 38
  IF ~~ THEN REPLY #43231 /* ~"Verstehe. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 42 // from: 38.3
  SAY #43232 /* ~"Was ich gegen sie habe? Sie sind genauso blind wie alle anderen Bünde auch. Sie kontrollieren die Stadt mit eiserner Hand, obwohl sie behaupten, nichts Bestimmtes im Schilde zu führen. Mit ihrer lebensbejahenden Philosophie ist es doch gar nicht so weit her. Es ist Zeit, sie mit ihren eigenen Mitteln zu schlagen."~ */
  IF ~~ THEN REPLY #43233 /* ~"Verstehe. Ich hätte da noch ein paar Fragen..."~ */ GOTO 38
  IF ~~ THEN REPLY #43234 /* ~"Nun denn. Leb wohl."~ */ EXIT
END

IF WEIGHT #10 ~  Global("Sabotage","GLOBAL",5)
~ THEN BEGIN 43 // from:
  SAY #43235 /* ~"Ich habe die Explosion von hier aus gehört. Saubere Arbeit. Bist du an einer weiteren Aufgabe interessiert?~ */
  IF ~  Global("Sandoz_DEAD_KAPUTZ","GLOBAL",0)
~ THEN REPLY #43236 /* ~"Was ist es?"~ */ DO ~SetGlobal("Sabotage","GLOBAL",7)
AddexperienceParty(8000)
~ GOTO 44
  IF ~  Global("Sandoz_DEAD_KAPUTZ","GLOBAL",0)
~ THEN REPLY #43237 /* ~"Warum bist du nicht zusammen mit den anderen Leuten umgekommen, die an dem Projekt gearbeitet haben?"~ */ DO ~SetGlobal("Sabotage","GLOBAL",7)
AddexperienceParty(8000)
~ GOTO 71
  IF ~  GlobalGT("Sandoz_DEAD_KAPUTZ","GLOBAL",0)
~ THEN REPLY #66890 /* ~"Was ist es?"~ */ DO ~SetGlobal("Sabotage","GLOBAL",7)
AddexperienceParty(8000)
SetGlobal("Smuggle","GLOBAL",1)
~ GOTO 34
END

IF ~~ THEN BEGIN 44 // from: 43.0 71.0
  SAY #43238 /* ~"Der Bundmeister, Sandoz... Von dem hast du sicher schon gehört, oder? Ihm haben wir es zu verdanken, daß dieses scheußliche Gerät überhaupt entwickelt wurde. Er war derjenige, der sich um den Vertrag bemüht und den Bau der tödlichen Waffe versprochen hat. Er ist derjenige, der wirklich für die Tode dieser anderen Ingenieure verantwortlich ist. Er muß sterben."~ */
  IF ~~ THEN REPLY #43239 /* ~"Okay."~ */ DO ~SetGlobal("F_Ass","GLOBAL",2)
~ GOTO 46
  IF ~~ THEN REPLY #43240 /* ~"Kommt nicht in Frage. Es sind schon genug Leute gestorben."~ */ GOTO 45
END

IF ~~ THEN BEGIN 45 // from: 40.1 44.1
  SAY #43241 /* ~"Du willst es nicht tun? Das ist aber schade, denn schließlich hast in dieser Sache bereits viel Einsatz geleistet. Glaubst du wirklich, es kommt auf eine Leiche mehr oder weniger an? Denk dran, was du bereits getan hast, und denk auch an die Folgen, wenn du jetzt aufhörst. Dann hast du nämlich gar nichts bewirkt, und das ganze Töten war umsonst. Willst du wirklich das von den Bünden geförderte Blutvergießen beenden, oder hast du einfach das Maul zu weit aufgerissen?"~ */
  IF ~~ THEN REPLY #43242 /* ~"Ich werde ihn töten."~ */ DO ~SetGlobal("F_Ass","GLOBAL",2)
~ GOTO 46
  IF ~~ THEN REPLY #43243 /* ~"Nein. Ich will ihn nicht töten."~ */ DO ~SetGlobal("F_Ass","GLOBAL",3)
~ GOTO 47
END

IF ~~ THEN BEGIN 46 // from: 33.0 40.0 44.0 45.0
  SAY #43244 /* ~"Gut. Sein Name ist Sandoz. Ich glaube, du hattest bereits mit ihm zu tun. Er wird also keinen Verdacht schöpfen. Du brauchst auch keine Angst zu haben, daß du zu viel Lärm machen könntest. Sandoz war selbst immer so laut, daß die Wachen das bißchen Rabatz überhaupt nicht bemerken werden. Komm zu mir zurück, wenn du fertig bist, dann werde ich dir eine letzte Aufgabe übertragen. Aber jetzt los mit dir!"~ */
  IF ~~ THEN REPLY #43245 /* ~"Ich hab's mir anders überlegt. Ich will ihn nicht töten."~ */ DO ~SetGlobal("F_Ass","GLOBAL",3)
~ GOTO 47
  IF ~~ THEN REPLY #43246 /* ~"Nun denn. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 47 // from: 45.1 46.0
  SAY #43247 /* ~Ihre Miene versteinert sich. "Du bist tatsächlich schwächer, als ich gedacht hatte... Und das soll schon was heißen. Na dann leb wohl. Sprich nie wieder mit mir." Sie kehrt dir den Rücken zu.~ */
  IF ~~ THEN REPLY #43248 /* ~"Na gut. Dann leb wohl."~ */ EXIT
END

IF WEIGHT #11 ~  GlobalGT("Sabotage","GLOBAL",1)
GlobalLT("Sabotage","GLOBAL",6)
~ THEN BEGIN 48 // from:
  SAY #43249 /* ~"Hast du das Höllending schon zerstört?"~ */
  IF ~  !PartyHasItem("Gtoken")
~ THEN REPLY #43250 /* ~"Nein. Ich brauch ein Zeichen, um durch die Türen gehen zu können."~ */ GOTO 49
  IF ~  !PartyHasItem("Gtoken")
False()
~ THEN REPLY #43251 /* ~"Nein. Ich habe das Zeichen verloren, mit dem ich durch die Türen gehen kann."~ */ GOTO 50
  IF ~~ THEN REPLY #43252 /* ~"Und was ist mit den Arbeitern?"~ */ GOTO 52
  IF ~  PartyHasItem("Gtoken")
~ THEN REPLY #43253 /* ~"Noch nicht. Aber ich werde es bald tun. Kannst du mir was über die Schwachstellen der Maschine sagen?"~ */ GOTO 51
END

IF ~~ THEN BEGIN 49 // from: 48.0
  SAY #43254 /* ~"Du brauchst ein Zeichen? Frag doch mal die Aufseherin der Gießerei... Ich glaube, sie heißt Alissa Tield. Oder versuch's bei Saros. Er ist bekannt für seine langen Finger..."~ */
  IF ~~ THEN REPLY #43255 /* ~"Gut. Wo sind die Schwachstellen der Maschine?"~ */ GOTO 51
  IF ~~ THEN REPLY #43256 /* ~"Ich hätte da noch ein paar Fragen."~ */ GOTO 38
  IF ~~ THEN REPLY #43257 /* ~"Gut, werd ich machen. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 50 // from: 48.1
  SAY #43258 /* ~"Dann mußt du entweder rausfinden, wo es ist, oder dir eins von Saros oder Alissa Tield, der Aufseherin der Gießerei, besorgen. Wenn sie dir keins geben können, dann mußt du dich wohl zur Maschine durchkämpfen, was ich allerdings nicht empfehlen würde."~ */
  IF ~~ THEN REPLY #43259 /* ~"Gut. Wo sind die Schwachstellen der Maschine?"~ */ GOTO 51
  IF ~~ THEN REPLY #43260 /* ~"Ich hätte da noch ein paar Fragen."~ */ GOTO 38
  IF ~~ THEN REPLY #43261 /* ~"Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 51 // from: 48.3 49.0 50.0 68.0
  SAY #43262 /* ~"Konzentriere deine Aktionen am besten auf den Abschußmechanismus. Ich würde irgend etwas aus Metall hineinstecken. Der harte Stahl des Dings wird Funken schlagen und die Schwingungen des magischen Feldes der Waffe zerstören, die sich folglich selbst vernichten wird. Entferne dich, sobald du das Metallstück in das Gerät eingeführt hast. Du hast ungefähr eine halbe Stunde Zeit, bevor es in die Luft geht."~ */
  IF ~~ THEN REPLY #43263 /* ~"Und was ist mit den Arbeitern?"~ */ GOTO 52
  IF ~~ THEN REPLY #43264 /* ~"Ich hätte da noch ein paar Fragen."~ */ GOTO 38
  IF ~~ THEN REPLY #43265 /* ~"Nun denn. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 52 // from: 41.0 48.2 51.0
  SAY #43266 /* ~"Was ist mit ihnen? Sie sind die Sklaven ihres Bundes. Der Bund wird sie nicht beweinen, wenn sie nicht mehr da sind. Weshalb solltest du dir also Sorgen machen?"~ */
  IF ~~ THEN REPLY #43267 /* ~"Ich mach mir Sorgen, weil sie unschuldig sind."~ */ GOTO 53
  IF ~~ THEN REPLY #43268 /* ~"Ich hätte da noch ein paar Fragen."~ */ GOTO 38
  IF ~~ THEN REPLY #43269 /* ~"Du hast recht. Ich werde zurückkehren, wenn ich von der Zerstörung der Maschine berichten kann."~ */ EXIT
END

IF ~~ THEN BEGIN 53 // from: 52.0
  SAY #43270 /* ~"Unschuldig? Ha. Nur in einer so korrupten Organisation wie dieser würdest du auf die Idee kommen, diejenigen 'unschuldig' zu nennen, die an diesen Todesmaschinen arbeiten. Das ist ja wohl ein Witz." Sie hält inne, als müsse sie sich räuspern. "Zerstörst du jetzt die Maschine oder nicht?"~ */
  IF ~~ THEN REPLY #43271 /* ~"Ich mach es nicht. Sie haben den Tod nicht verdient."~ */ DO ~IncrementGlobalOnceEx("GLOBALGood_Bedai_4","GLOBALGood",1)
SetGlobal("Sabotage","GLOBAL",8)
~ GOTO 55
  IF ~~ THEN REPLY #43272 /* ~"Ich mach es. Ich werde mit einer Erfolgsmeldung zurückkommen."~ */ EXIT
END

IF WEIGHT #12 ~  Global("Sabotage","GLOBAL",8)
~ THEN BEGIN 54 // from: 55.0
  SAY #43273 /* ~"Du hattest deine Chance. Jetzt ist es zu spät. Du glaubst doch nicht etwa, daß ich dir noch trauen kann? Geh mir aus den Augen."~ */
  IF ~~ THEN REPLY #43274 /* ~"Dann beantworte mir ein paar Fragen."~ */ GOTO 31
  IF ~~ THEN REPLY #43275 /* ~"Dann leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 55 // from: 53.0 68.3 79.1
  SAY #43276 /* ~"Dann haben wir uns nichts mehr zu sagen. Halt bloß dicht, dann sag ich auch niemandem, daß du dich mit dem Gedanken des Verrats getragen hast. Und jetzt leb wohl. Sprich nicht mehr mit mir."~ */
  IF ~~ THEN REPLY #43277 /* ~"Warte! Ich hab's mir anders überlegt!"~ */ GOTO 54
  IF ~~ THEN REPLY #43278 /* ~"Dann leb wohl."~ */ EXIT
END

IF WEIGHT #13 ~  Global("Join_Godsmen","GLOBAL",6)
~ THEN BEGIN 56 // from:
  SAY #43279 /* ~"Du bist jetzt ein Göttermensch. Bist du noch glücklich damit?"~ */
  IF ~~ THEN REPLY #43280 /* ~"Ja."~ */ GOTO 57
  IF ~~ THEN REPLY #43281 /* ~"Nein, eigentlich nicht."~ */ GOTO 58
  IF ~~ THEN REPLY #43282 /* ~"Ich hätte ein paar Fragen an dich."~ */ GOTO 59
  IF ~  GlobalGT("G_Test2","GLOBAL",6)
CheckStatGT(Protagonist,14,WIS)
~ THEN REPLY #43295 /* ~"Thildon sagt, du bist ein Anarchist und hast versucht, ihm die Schuld an dem Verbrechen zuzuschieben."~ */ GOTO 73
  IF ~  GlobalGT("G_Test2","GLOBAL",6)
CheckStatLT(Protagonist,15,WIS)
~ THEN REPLY #43295 /* ~"Thildon sagt, du bist ein Anarchist und hast versucht, ihm die Schuld an dem Verbrechen zuzuschieben."~ */ GOTO 64
  IF ~~ THEN REPLY #5531 /* ~"Klar. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 57 // from: 56.0 58.3
  SAY #43284 /* ~"Gut. Es freut mich, daß du deine Entscheidung nicht bereust. Was kann ich für dich tun?"~ */
  IF ~~ THEN REPLY #43285 /* ~"Ich hätte da ein paar Fragen..."~ */ GOTO 59
  IF ~~ THEN REPLY #43286 /* ~"Nichts, danke. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 58 // from: 56.1
  SAY #43287 /* ~"Warum nicht?"~ */
  IF ~~ THEN REPLY #43288 /* ~"Ich hatte es mir anders vorgestellt."~ */ GOTO 60
  IF ~~ THEN REPLY #43289 /* ~"Weil mir immer mehr bewußt wird, daß es ein leerer Titel ist."~ */ GOTO 61
  IF ~~ THEN REPLY #43290 /* ~"Ich bin einfach unzufrieden."~ */ GOTO 60
  IF ~~ THEN REPLY #43291 /* ~"Wenn ich drüber nachdenke, bin ich doch ganz zufrieden damit."~ */ GOTO 57
END

IF ~~ THEN BEGIN 59 // from: 56.2 57.0 60.0 63.0 64.0 65.0 66.0 67.0 72.0 73.1 76.0 77.1
  SAY #43292 /* ~"Was sind das für Fragen?"~ */
  IF ~~ THEN REPLY #43293 /* ~"Erzähl mir von der Großen Gießerei."~ */ GOTO 62
  IF ~  Global("Join_Godsmen","GLOBAL",3)
~ THEN REPLY #43294 /* ~"Erzähl mir, was du über den Mord weißt."~ */ GOTO 63
  IF ~  GlobalGT("G_Test2","GLOBAL",6)
CheckStatLT(Protagonist,15,WIS)
~ THEN REPLY #43295 /* ~"Thildon sagt, du bist ein Anarchist und hast versucht, ihm die Schuld an dem Verbrechen zuzuschieben."~ */ GOTO 64
  IF ~  GlobalGT("G_Test2","GLOBAL",6)
CheckStatGT(Protagonist,14,WIS)
~ THEN REPLY #43296 /* ~"Thildon sagt, du bist ein Anarchist und hast versucht, ihm die Schuld an dem Verbrechen zuzuschieben."~ */ GOTO 73
  IF ~~ THEN REPLY #43297 /* ~"Erzähl mir von dem Projekt, an dem du arbeitest."~ */ GOTO 65
  IF ~~ THEN REPLY #43298 /* ~"Erzähl mir was über ein paar andere Leute hier."~ */ GOTO 66
  IF ~~ THEN REPLY #43299 /* ~"Wer bist du?"~ */ GOTO 67
  IF ~~ THEN REPLY #43300 /* ~"Nichts. Vergiß es."~ */ EXIT
END

IF ~~ THEN BEGIN 60 // from: 58.0 58.2 61.0 61.1
  SAY #43301 /* ~"Nicht alles läuft nach unserem Wunsch, und früher oder später sind wir alle einmal unzufrieden. Die Mitgliedschaft in einem Bund ist eine wenig tröstliche Belohnung. Komm wieder, wenn du darüber nachgedacht hast. Okay?"~ */
  IF ~~ THEN REPLY #43302 /* ~"Klar. Ich hätte allerdings ein paar Fragen..."~ */ GOTO 59
  IF ~~ THEN REPLY #43303 /* ~"Klar. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 61 // from: 58.1
  SAY #43304 /* ~"Würdest du also sagen, du bist den Göttermenschen treu ergeben?"~ */
  IF ~~ THEN REPLY #43305 /* ~Wahrheit: "Ja."~ */ GOTO 60
  IF ~~ THEN REPLY #43306 /* ~Lüge: "Ja."~ */ GOTO 60
  IF ~~ THEN REPLY #43307 /* ~Wahrheit: "Nein."~ */ GOTO 69
  IF ~~ THEN REPLY #43308 /* ~Lüge: "Nein."~ */ GOTO 69
  IF ~~ THEN REPLY #43309 /* ~"Das geht dich ja wohl überhaupt nichts an."~ */ GOTO 70
END

IF ~~ THEN BEGIN 62 // from: 59.0 81.0
  SAY #43310 /* ~Sie unterdrückt ein Gähnen. "Du kannst praktisch jeden hier über die Gießerei befragen und wirst jedesmal dieselbe Antwort bekommen. Wie kommst du drauf, daß ich was anderes sagen könnte? Stell mir eine andere Frage."~ */
  IF ~  Global("Join_Godsmen","GLOBAL",3)
~ THEN REPLY #43311 /* ~"Erzähl mir, was du über den Mord weißt."~ */ GOTO 63
  IF ~  GlobalGT("G_Test2","GLOBAL",6)
GlobalLT("Join_Godsmen","GLOBAL",4)
~ THEN REPLY #43312 /* ~"Thildon sagt, du bist ein Anarchist und hast versucht, ihm die Schuld an dem Verbrechen zuzuschieben."~ */ GOTO 64
  IF ~~ THEN REPLY #43313 /* ~"Erzähl mir von dem Projekt, an dem du arbeitest."~ */ GOTO 65
  IF ~~ THEN REPLY #43314 /* ~"Erzähl mir was über ein paar andere Leute hier."~ */ GOTO 66
  IF ~~ THEN REPLY #43315 /* ~"Nichts. Vergiß es."~ */ EXIT
END

IF ~~ THEN BEGIN 63 // from: 59.1 62.0 81.1
  SAY #43316 /* ~"Tja... Ich habe die Wächter gebeten, die Nacht draußen zu verbringen, da ich ein paar technisch diffizile Fragen des Projekts im Raum nebenan lösen mußte, und nicht wollte, daß ihre psychischen Ausströmungen mir in diese Arbeit pfuschen. Ich war ziemlich schockiert, als ich beim Verlassen des Raums die Leiche fand. Da ich kein anderes Alibi habe, bin ich natürlich verdächtig, und ich vermute, du hast bereits bemerkt, daß ich auf keinen Fall unter der Wirkung eines Zaubers aussagen will. Ich will nämlich nicht den Geheimhaltungseid brechen, den ich für das Projekt geschworen habe."~ */
  IF ~~ THEN REPLY #43317 /* ~"Ich verstehe. Ich hätte noch ein paar andere Fragen."~ */ GOTO 59
  IF ~~ THEN REPLY #43318 /* ~"Ich glaub, ich wird das mal mit Keldor besprechen."~ */ GOTO 72
  IF ~~ THEN REPLY #43319 /* ~"Verstehe. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 64 // from: 56.4 59.2 62.1 81.2
  SAY #43320 /* ~Sie lacht spöttisch. "Eine Anarchistin? Daß ich nicht lache. Auf den Arm nehmen kann ich mich selber. Hast du noch ein paar richtige Fragen auf Lager, oder kann ich jetzt weiterarbeiten?"~ */
  IF ~~ THEN REPLY #43321 /* ~"Ich hätte da noch ein paar Fragen."~ */ GOTO 59
  IF ~~ THEN REPLY #43322 /* ~"Mach dich wieder an die Arbeit. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 65 // from: 59.4 62.2 81.4
  SAY #43323 /* ~"Ich soll dir was über das Projekt erzählen, für dessen Vollendung und Verteidigung wir unser Leben verbürgt haben? Hmm. Nein, ich glaube, daß geht nicht. Noch nicht, jedenfalls. Auf alle Fälle ist es ein mächtiges Projekt, das jede unserer Mühen wert ist."~ */
  IF ~~ THEN REPLY #43324 /* ~"Gut. Dann beantworte mir noch ein paar Fragen..."~ */ GOTO 59
  IF ~~ THEN REPLY #43325 /* ~"Na gut. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 66 // from: 59.5 62.3 81.5
  SAY #43326 /* ~"Die anderen Leute hier? Tja, da hätten wir den brillanten, wenn auch exzentrischen Nihl Xander, die verstoßene Githzerai-Frau Kel'lera, Thildon, den Grauen, dessen Herz sehr viel weniger doppelsinnig ist als sein Name, Keldor, den Adlaten, Sandoz, den Adlaten, die beiden Kinder von Sandoz, Aufseher, Schmiede und jede Menge anderer Leute. Sie alle laufen mir zwar oft über den Weg, aber ehrlich gesagt habe ich mich nie drum bemüht, sie näher kennenzulernen. Entweder arbeiten sie für mich oder nicht. Das ist das einzige, was mich interessiert. Ich liebe meine Arbeit sehr."~ */
  IF ~~ THEN REPLY #43327 /* ~"In Ordnung. Ich hab noch ein paar Fragen..."~ */ GOTO 59
  IF ~~ THEN REPLY #43328 /* ~"Verstehe. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 67 // from: 59.6 81.6
  SAY #43329 /* ~"Mein Name ist Bedai-Lihn. Ich bin eine Zaubertechnikerin - kein Magier, wohlgemerkt, sondern eher eine Theoretikerin. Ich werde dafür sorgen, daß die Göttermenschen keine Gelegenheit haben, diese Waffe einzusetzen oder noch mehr von diesem Kriegsgerät herzustellen."~ */
  IF ~~ THEN REPLY #43330 /* ~"OK. Beantworte mir noch ein paar Fragen..."~ */ GOTO 59
  IF ~~ THEN REPLY #43331 /* ~"Verstehe. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 68 // from: 79.0
  SAY #43332 /* ~Sie lächelt zufrieden. "Gut. Triff die Maschine an einem ihrer Schwachpunkte. Und dann komm zurück und sag mir, wie es gelaufen ist."~ */
  IF ~~ THEN REPLY #43333 /* ~"Wo sind ihre Schwachstellen?"~ */ DO ~SetGlobal("Sabotage","GLOBAL",4)
~ GOTO 51
  IF ~~ THEN REPLY #43334 /* ~"Ich sag Bescheid, wenn ich fertig bin. Aber zuerst hätt ich noch ein paar Fragen an dich..."~ */ GOTO 38
  IF ~~ THEN REPLY #43335 /* ~"Weshalb willst du das tun?"~ */ GOTO 41
  IF ~~ THEN REPLY #43336 /* ~"Ich glaub, ich hab's mir anders überlegt. Ich werde dich verraten."~ */ DO ~IncrementGlobalOnceEx("GLOBALGood_Bedai_4","GLOBALGood",1)
SetGlobal("Sabotage","GLOBAL",8)
~ GOTO 55
  IF ~~ THEN REPLY #43337 /* ~"Klar. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 69 // from: 61.2 61.3
  SAY #43338 /* ~"Würdest du sagen, dein Mangel an Hingabe ist so groß, daß du den Göttermenschen einen harten Schlag versetzen würdest, wenn du die Gelegenheit dazu hättest?"~ */
  IF ~~ THEN REPLY #43339 /* ~"Ja."~ */ GOTO 74
  IF ~~ THEN REPLY #43340 /* ~"Natürlich nicht!"~ */ EXIT
END

IF ~~ THEN BEGIN 70 // from: 61.4
  SAY #43341 /* ~"Nein, du hast recht." Sie wendet sich von dir ab. "Leb wohl."~ */
  IF ~~ THEN REPLY #43342 /* ~"Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 71 // from: 43.1
  SAY #43343 /* ~"Kannst du dir das nicht denken? Ich habe unter einem falschen Namen und einer falschen Identität geschworen. Ich bin nicht die Person, die den Eid geleistet hat. Deshalb war ich immun. Was ist jetzt? Nimmst du die neue Aufgabe an oder nicht?"~ */
  IF ~~ THEN REPLY #43344 /* ~"Was ist es?"~ */ GOTO 44
END

IF ~~ THEN BEGIN 72 // from: 63.1
  SAY #43345 /* ~"Tu das ruhig. Er wird dir bestätigen, was ich gesagt habe. Er hat mir den Eid abgenommen und kennt daher seine Macht."~ */
  IF ~~ THEN REPLY #43346 /* ~"Gut. Ich hätte noch ein paar andere Fragen..."~ */ GOTO 59
  IF ~~ THEN REPLY #43347 /* ~"Nun denn. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 73 // from: 56.3 59.3 81.3
  SAY #43348 /* ~Ihre Augen funkeln wütend auf, aber bereits kurz darauf zeugt ihr Blick nur noch von Verachtung, so daß du fast glaubst, du hättest dich versehen. "Ein Anarchist? Daß ich nicht lache. Auf den Arm nehmen kann ich mich selber. Hast du noch ein paar richtige Fragen auf Lager, oder kann ich jetzt weiterarbeiten?"~ */
  IF ~~ THEN REPLY #43349 /* ~"Was sollte dieser Wutausbruch?"~ */ GOTO 77
  IF ~~ THEN REPLY #43350 /* ~"Ich hätte da noch ein paar andere Fragen..."~ */ GOTO 59
  IF ~~ THEN REPLY #43351 /* ~"Du kannst weiterarbeiten. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 74 // from: 69.0
  SAY #43352 /* ~"Dann bist du bei mir goldrichtig." Sie lächelt. Ihr Blick hellt sich auf. "Wäre es nicht toll, wenn du die Kriegsmaschine der Baatezu und gleichzeitig die Göttermenschen treffen könntest?"~ */
  IF ~~ THEN REPLY #43353 /* ~"Was meinst du?"~ */ GOTO 79
  IF ~~ THEN REPLY #43354 /* ~"Ich wüßte nicht, wieso."~ */ GOTO 80
END

IF ~~ THEN BEGIN 75 // from: 9.4
  SAY #43355 /* ~"Er war zwar einmal ganz nützlich, aber letztendlich waren seine persönlichen Bindungen zu tief, als daß er die Notwendigkeit ihrer Zerstörung begreifen konnte. Sein Tod wird keinen großen Verlust bedeuten. Bleibt er am Leben, um so besser. Ich werde ihn stets als einen in Erinnerung behalten, der zwar seinen Beitrag geleistet hat, aber nicht das Zeug zu mehr hatte."~ */
  IF ~~ THEN REPLY #43356 /* ~"Gut. Beantworte mir noch ein paar andere Fragen."~ */ GOTO 9
  IF ~~ THEN REPLY #43357 /* ~"Sehr freundlich. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 76 // from:
  SAY #43358 /* ~"Gut, gut. Schön, daß dieser Bund keine Verräter heranzüchtet. Kann ich dir sonst irgendwie behilflich sein?"~ */
  IF ~~ THEN REPLY #43359 /* ~"Ich hätte da noch ein paar Fragen."~ */ GOTO 59
  IF ~~ THEN REPLY #43360 /* ~"Nein, danke. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 77 // from: 73.0
  SAY #43361 /* ~Sie lächelt schwach. "Dir entgeht wohl nichts, was? Sagen wir es so: Wie würdest du dich fühlen, wenn du zu Unrecht beschuldigt würdest? Nur deshalb bin ich so wütend." Sie *scheint* es ehrlich zu meinen...~ */
  IF ~~ THEN REPLY #43362 /* ~"Das kauf ich dir nicht ab."~ */ GOTO 78
  IF ~~ THEN REPLY #43363 /* ~"Gut. Ich hätte noch ein paar andere Fragen..."~ */ GOTO 59
  IF ~~ THEN REPLY #43364 /* ~"Verstehe. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 78 // from: 77.0
  SAY #43365 /* ~"Du hast leider keine andere Wahl, denn von mir kriegst du keine andere Antwort." Sie dreht sich steif von dir weg. "Leb wohl."~ */
  IF ~~ THEN REPLY #43366 /* ~"Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 79 // from: 74.0
  SAY #43367 /* ~"Ich meine, daß hier in der Gießerei eine unglaublich mächtige Waffe angefertigt wird, die von den Baatezu, von diesen Teufeln, finanziert wird. Wenn du sie zerstörst, triffst du damit nicht nur den Bund, den du angeblich ablehnst, sondern auch diese ganze Bande Scheusale. Was sagst du dazu?"~ */
  IF ~~ THEN REPLY #43368 /* ~"Okay."~ */ DO ~SetGlobal("Sabotage","GLOBAL",2)
IncrementGlobalOnceEx("GLOBALEvil_Bedai_5","GLOBALGood",-1)
IncrementGlobalOnceEx("GLOBALChaos_Bedai_2","GLOBALLaw",-1)
~ GOTO 68
  IF ~~ THEN REPLY #43369 /* ~"Nein. Ich werd es nicht tun."~ */ DO ~SetGlobal("Sabotage","GLOBAL",8)
IncrementGlobalOnceEx("GLOBALGood_Bedai_3","GLOBALGood",1)
IncrementGlobalOnceEx("GLOBALLawful_Bedai_2","GLOBALLaw",1)
~ GOTO 55
END

IF ~~ THEN BEGIN 80 // from: 74.1
  SAY #43370 /* ~"Dann kann ich dich leider nicht gebrauchen. Wenn du den Mund hältst, werde ich meinen auch halten. Leb wohl."~ */
  IF ~~ THEN REPLY #43371 /* ~"Leb wohl."~ */ EXIT
END

IF WEIGHT #14 ~  NumTimesTalkedToGT(0)
~ THEN BEGIN 81 // from: 82.0
  SAY #43372 /* ~"Was willst du?"~ */
  IF ~~ THEN REPLY #43373 /* ~"Erzähl mir von der Großen Gießerei."~ */ GOTO 62
  IF ~  GlobalGT("G_Test2","GLOBAL",0)
GlobalLT("G_Test2","GLOBAL",9)
~ THEN REPLY #43374 /* ~"Erzähl mir, was du über den Mord weißt."~ */ GOTO 63
  IF ~  GlobalGT("G_Test2","GLOBAL",6)
CheckStatLT(Protagonist,15,WIS)
~ THEN REPLY #43375 /* ~"Thildon sagt, du bist ein Anarchist und hast versucht, ihm die Schuld an dem Verbrechen zuzuschieben."~ */ GOTO 64
  IF ~  GlobalGT("G_Test2","GLOBAL",6)
CheckStatGT(Protagonist,14,WIS)
~ THEN REPLY #43376 /* ~"Thildon sagt, du bist ein Anarchist und hast versucht, ihm die Schuld an dem Verbrechen zuzuschieben."~ */ GOTO 73
  IF ~~ THEN REPLY #43377 /* ~"Erzähl mir von dem Projekt, an dem du arbeitest."~ */ GOTO 65
  IF ~~ THEN REPLY #43378 /* ~"Erzähl mir was über ein paar andere Leute hier."~ */ GOTO 66
  IF ~~ THEN REPLY #43379 /* ~"Wer bist du?"~ */ GOTO 67
  IF ~~ THEN REPLY #43380 /* ~"Nichts. Vergiß es."~ */ EXIT
END

IF WEIGHT #15 ~  NumTimesTalkedTo(0)
~ THEN BEGIN 82 // from:
  SAY #43381 /* ~Du siehst eine streng aussehende Frau mit feuerrotem, zurückgebundenem Haar, das ihr einen angespannten, nervösen Gesichtsausdruck verleiht. Sie scheint tief in Gedanken versunken zu sein. Als du näherkommst, blickt sie auf und sagt: "Kann ich dir irgendwie behilflich sein?"~ */
  IF ~~ THEN REPLY #43382 /* ~"Ja, ich hätte ein paar Fragen."~ */ GOTO 81
  IF ~~ THEN REPLY #43383 /* ~"Nein, tut mir leid. Leb wohl."~ */ EXIT
END
