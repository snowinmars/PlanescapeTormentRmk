// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DWANGYAR.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\de_DE\dialog.tlk
// dialogF  : (none)

BEGIN ~DWANGYAR~

IF ~  Global("Wife_of_Angyar","GLOBAL",0)
GlobalLT("Angyar_Quest","GLOBAL",2)
GlobalLT("Angyar","GLOBAL",2)
~ THEN BEGIN 0 // from:
  SAY #3009 /* ~Diese Frau sieht aus, als wäre sie mittleren Alters. Durch ihr Haar ziehen sich graue Strähnen. Sorgenfalten durchfurchen ihr Gesicht... Als sie dich erblickt, scheint sie unschlüssig zu sein, ob sie dich wegschicken oder den Mann am Tisch herrufen soll.~ */
  IF ~~ THEN REPLY #3010 /* ~"Sei gegrüßt."~ */ DO ~SetGlobal("Wife_of_Angyar","GLOBAL",1)
~ GOTO 1
  IF ~~ THEN REPLY #11844 /* ~Laß die Frau in Ruhe.~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #11806 /* ~"Du... du gehst besser, bevor ich meinen Mann rufe. Er wird nicht begeistert sein, daß du hier hereingeplatzt bist."~ */
  IF ~~ THEN REPLY #11845 /* ~"Wenn du ihn rufen wolltest, hättest du es schon längst getan. Ich habe ein paar Fragen an dich..."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Wife_of_Angyar_1","GLOBALGood",-1)
~ GOTO 2
  IF ~~ THEN REPLY #11846 /* ~"Ruf deinen Mann, und ihr werdet beide sterben. Und nun beantworte meine Fragen."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Wife_of_Angyar_1","GLOBALLaw",-1)
IncrementGlobalOnceEx("GLOBALEvil_Wife_of_Angyar_1","GLOBALGood",-1)
~ GOTO 3
  IF ~~ THEN REPLY #11847 /* ~"Beruhige dich. Ich hätte nur noch ein paar Fragen..."~ */ GOTO 2
  IF ~~ THEN REPLY #11848 /* ~"Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.0 1.2 25.1 25.3
  SAY #11807 /* ~Mit besorgtem Blick schaut sie zu ihrem Mann. "Ich... ich... habe keine Zeit, Fremder. Belästige mich nicht mit solchen Dingen."~ */
  IF ~~ THEN REPLY #11849 /* ~"Verzeihung... geht es dir gut?"~ */ GOTO 4
  IF ~~ THEN REPLY #11850 /* ~"Dann wirst du dir eben Zeit machen müssen. Also, ich habe die folgenden Fragen..."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Wife_of_Angyar_2","GLOBALGood",-1)
~ GOTO 3
  IF ~~ THEN REPLY #11851 /* ~"Also dann, leb wohl. Und entschuldige die Störung."~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 1.1 2.1 4.2 16.0 25.2
  SAY #11808 /* ~Sie erblaßt und reißt entsetzt die Augen auf. Bevor du sie etwas fragen kannst, holt sie tief Luft und beginnt zu schreien!~ */
  IF ~~ THEN REPLY #11852 /* ~"Verdammt..."~ */ DO ~Enemy()
ForceAttack(Protagonist,Myself)
~ EXIT
END

IF ~~ THEN BEGIN 4 // from: 2.0
  SAY #11809 /* ~"Mir?" Sie wirkt überrascht. "Oh... ja, ja." Sie spricht leiser. "Du gehst besser. Mein Mann hat sich in letzter Zeit sehr verändert... provoziere ihn lieber nicht."~ */
  IF ~  Global("Angyar","GLOBAL",1)
~ THEN REPLY #11853 /* ~"Ich habe mit ihm gesprochen... ihm scheint etwas auf dem Herzen zu liegen. Was ist los mit ihm?"~ */ GOTO 5
  IF ~  Global("Angyar","GLOBAL",0)
~ THEN REPLY #11854 /* ~"Was ist los mit ihm?"~ */ GOTO 5
  IF ~~ THEN REPLY #11855 /* ~"Er sollte mich lieber nicht provozieren - und das gleiche gilt für dich. Also, ich habe folgende Fragen..."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Wife_of_Angyar_2","GLOBALGood",-1)
~ GOTO 3
  IF ~~ THEN REPLY #11856 /* ~"Also dann, leb wohl. Und entschuldige die Störung."~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 4.0 4.1
  SAY #11810 /* ~"Er ist zur Zeit sehr reizbar, vielleicht ist es der Husten..." Sie zuckt halbherzig mit den Achseln.~ */
  IF ~~ THEN REPLY #11857 /* ~"Was ist wirklich los mit ihm?"~ */ DO ~SetGlobal("Angyar_Quest","GLOBAL",1)
~ GOTO 6
  IF ~~ THEN REPLY #11858 /* ~"Wenn du mir sagst, was los ist, kann ich vielleicht helfen."~ */ DO ~SetGlobal("Angyar_Quest","GLOBAL",1)
IncrementGlobalOnceEx("GLOBALGood_Wife_of_Angyar_1","GLOBALGood",1)
~ GOTO 6
  IF ~~ THEN REPLY #11859 /* ~"Also dann, leb wohl. Und entschuldige die Störung."~ */ EXIT
END

IF ~~ THEN BEGIN 6 // from: 5.0 5.1
  SAY #11811 /* ~"Ich glaube... ich glaube, daß er etwas getan hat, das er bereut." Ihre Besorgnis schlägt in Verzweiflung um. "Ich glaube, er hat einen dieser Todesverträge unterzeichnet. Keine Ahnung, welcher Teufel ihn da geritten hat!"~ */
  IF ~~ THEN REPLY #11860 /* ~"Todesverträge?"~ */ GOTO 12
  IF ~~ THEN REPLY #11861 /* ~"Ich... verstehe. Sieht so aus, als ob du genug Sorgen durchlitten hättest. Leb wohl."~ */ GOTO 7
END

IF ~~ THEN BEGIN 7 // from: 6.1
  SAY #11812 /* ~Sie unterbricht dich. "Bitte sag niemandem, was ich dir erzählt habe, schon gar nicht meinem Mann..." Sie scheint Angst zu haben. "Versprich es."~ */
  IF ~~ THEN REPLY #11862 /* ~"Warum?"~ */ GOTO 10
  IF ~~ THEN REPLY #11863 /* ~Lüge: "Ich schwöre, daß ich keinem was erzählen werde."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Wife_of_Angyar_2","GLOBALLaw",-1)
IncrementGlobalOnceEx("GLOBALEvil_Wife_of_Angyar_3","GLOBALGood",-1)
~ GOTO 8
  IF ~~ THEN REPLY #11864 /* ~Schwur: "Ich schwöre, daß ich keinem was erzählen werde."~ */ DO ~IncrementGlobalOnceEx("GLOBALLawful_Wife_of_Angyar_1","GLOBALLaw",1)
~ GOTO 8
  IF ~~ THEN REPLY #11865 /* ~"Das kann ich nicht versprechen. Leb wohl."~ */ GOTO 9
END

IF ~~ THEN BEGIN 8 // from: 7.1 7.2 10.3 10.4 11.1 11.2
  SAY #11813 /* ~Sie scheint sich zu beruhigen... aber nur leicht. "Dann leb wohl."~ */
  IF ~~ THEN REPLY #11866 /* ~"Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 9 // from: 7.3
  SAY #11814 /* ~Ihr Ausdruck wird noch verzweifelter. "Ich... ich hätte dir *nichts* erzählen sollen..." Sie reißt die Augen weit auf. "Ich bin genauso töricht wie er!"~ */
  IF ~~ THEN REPLY #11867 /* ~"Warum muß es geheim bleiben?"~ */ GOTO 10
  IF ~~ THEN REPLY #11868 /* ~"Da hast du ganz recht. Du hättest es mir nie erzählen sollen. Leb wohl."~ */ EXIT
  IF ~~ THEN REPLY #11869 /* ~Geh weg.~ */ EXIT
END

IF ~~ THEN BEGIN 10 // from: 7.0 9.0
  SAY #11815 /* ~"Mein Mann ist ein ängstlicher Typ... ich mußte ihm versprechen, niemandem zu erzählen, was passiert ist..." Sie schaut dich wieder an. "Du *mußt* schweigen wie ein Grab."~ */
  IF ~~ THEN REPLY #11870 /* ~"Du hättest es mir nicht erzählen sollen... Versprechen muß man halten - wo bliebe sonst das Vertrauen zwischen zwei Menschen? Es wäre besser gewesen, du hättest solch ein Versprechen nicht gegeben."~ */ DO ~IncrementGlobalOnceEx("GLOBALLawful_Wife_of_Angyar_2","GLOBALLaw",1)
~ GOTO 11
  IF ~~ THEN REPLY #11871 /* ~"Ein Versprechen, das einer Drohung einher geht, ist kein richtiges Versprechen. Ich würde mich daran nicht gebunden fühlen."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Wife_of_Angyar_3","GLOBALLaw",-1)
~ GOTO 11
  IF ~~ THEN REPLY #11872 /* ~"Versprechen sind da, um gebrochen zu werden. Sie sind wohl kaum so wichtig wie das Wohlergehen eines anderen."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Wife_of_Angyar_3","GLOBALLaw",-1)
~ GOTO 11
  IF ~~ THEN REPLY #11873 /* ~Lüge: "Ich schwöre, daß ich keinem was erzählen werde."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Wife_of_Angyar_2","GLOBALLaw",-1)
IncrementGlobalOnceEx("GLOBALEvil_Wife_of_Angyar_3","GLOBALGood",-1)
~ GOTO 8
  IF ~~ THEN REPLY #11874 /* ~Schwur: "Ich schwöre, daß ich keinem was erzählen werde."~ */ DO ~IncrementGlobalOnceEx("GLOBALLawful_Wife_of_Angyar_1","GLOBALLaw",1)
~ GOTO 8
  IF ~~ THEN REPLY #11875 /* ~"Das kann ich nicht versprechen. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 11 // from: 10.0 10.1 10.2
  SAY #11816 /* ~Sie seufzt. "Aber ich..."~ */
  IF ~~ THEN REPLY #11876 /* ~"Schau, vielleicht kann ich ja irgendwie helfen... was waren das für Todesverträge, von denen du da gesprochen hast?"~ */ GOTO 12
  IF ~~ THEN REPLY #11877 /* ~Lüge: "Mach dir keine Sorgen. Ich schwöre, daß ich keinem was erzählen werde."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Wife_of_Angyar_2","GLOBALLaw",-1)
IncrementGlobalOnceEx("GLOBALEvil_Wife_of_Angyar_3","GLOBALGood",-1)
~ GOTO 8
  IF ~~ THEN REPLY #11878 /* ~Schwur: "Mach dir keine Sorgen. Ich schwöre, daß ich keinem was erzählen werde."~ */ DO ~IncrementGlobalOnceEx("GLOBALLawful_Wife_of_Angyar_1","GLOBALLaw",1)
~ GOTO 8
  IF ~~ THEN REPLY #11879 /* ~"Wir haben uns nichts mehr zu sagen. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 12 // from: 6.0 11.0 25.0
  SAY #11817 /* ~"Die Toten... die Staubmenschen haben Verträge, die sie berechtigen, nach dem Tod des Unterzeichnenden über dessen Körper zu verfügen."
~ */
  IF ~~ THEN REPLY #11880 /* ~"Was machen die Staubmenschen mit den Toten?"~ */ GOTO 13
  IF ~~ THEN REPLY #11881 /* ~"Ich... verstehe. Auf bald."~ */ EXIT
END

IF ~~ THEN BEGIN 13 // from: 12.0
  SAY #11818 /* ~"Sie erwecken sie mit ihrer Schwarzen Magie wieder zum Leben, machen wandelnde Tote aus ihnen und benutzen sie als Arbeiter, bis..." Sie schaut ihren Mann hilflos an. "...bis sie verfaulen."~ */
  IF ~~ THEN REPLY #11882 /* ~"Warum hat dein Mann so was unterschrieben?"~ */ GOTO 14
  IF ~~ THEN REPLY #11883 /* ~"Dein Mann braucht doch seinen Körper nach dem Tod nicht mehr. Wo liegt dann das Problem?"~ */ GOTO 15
  IF ~~ THEN REPLY #11884 /* ~"Hört sich an, als ob du deine eigenen Probleme hättest. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 14 // from: 13.0 15.2
  SAY #11819 /* ~"Er wollte wohl mehr Klimper als sonst mit nach Hause bringen. Er hat seinen Stolz... aber dadurch hat er sich wohl nur selbst geschadet."~ */
  IF ~~ THEN REPLY #11885 /* ~"Das tut mir leid. Ich hätte dennoch einige Fragen an dich..."~ */ GOTO 16
  IF ~~ THEN REPLY #11886 /* ~"Kann dieser Vertrag rückgängig gemacht werden?"~ */ GOTO 17
  IF ~~ THEN REPLY #11887 /* ~"Dein Mann braucht doch seinen Körper nach dem Tod nicht mehr. Wo liegt dann das Problem?"~ */ GOTO 15
  IF ~~ THEN REPLY #11888 /* ~"Hört sich an, als ob du deine eigenen Probleme hättest. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 15 // from: 13.1 14.2
  SAY #11820 /* ~"Abgesehen von diesem absolut makabren Vertrag - hat er sich sehr verändert... er ist nur noch mißmutig, seit er ihn unterzeichnet hat, und er kann sich nicht aufraffen, eine ehrliche Arbeit zu suchen. Als hinge der Schatten der Dame über ihm..." Sie seufzt.~ */
  IF ~~ THEN REPLY #11889 /* ~"Das tut mir leid. Ich hätte dennoch einige Fragen an dich..."~ */ GOTO 16
  IF ~~ THEN REPLY #11890 /* ~"Kann dieser Vertrag rückgängig gemacht werden?"~ */ GOTO 17
  IF ~~ THEN REPLY #11891 /* ~"Warum hat dein Mann so was unterschrieben?"~ */ GOTO 14
  IF ~~ THEN REPLY #11892 /* ~"Hört sich an, als ob du deine eigenen Probleme hättest. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 16 // from: 14.0 15.0 17.1 24.0
  SAY #11821 /* ~Mit besorgtem Blick schaut sie zu ihrem Mann. "Ich... ich... habe keine Zeit, Fremder. Ich muß noch einiges erledigen..."~ */
  IF ~~ THEN REPLY #11893 /* ~"Dann wirst du dir eben Zeit machen müssen. Also, ich habe die folgenden Fragen..."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Wife_of_Angyar_2","GLOBALGood",-1)
~ GOTO 3
  IF ~~ THEN REPLY #11894 /* ~"Also dann, leb wohl. Und entschuldige die Störung."~ */ EXIT
END

IF ~~ THEN BEGIN 17 // from: 14.1 15.1
  SAY #11822 /* ~Sie wirft dir einen überraschten Blick zu, dann seufzt sie. "Ich habe es *versucht!* Ich sprach mit dem Staubmenschen, bei dem er den Vertrag unterzeichnet hat, aber er war kalt und abweisend wie alle Staubies! Er hat mir sogar einen Vortrag über meinen Mann gehalten, als hätte ich kein Recht, ihm zu helfen!" Sie preßt die Lippen zu einer schmalen Linie zusammen, als wollte sie einen Staubmenschen imitieren. "Er war einfach kalt und grausam."~ */
  IF ~~ THEN REPLY #11895 /* ~"Ich werde sehen, was ich tun kann. Wie hieß der Staubmensch, mit dem dein Mann den Vertrag abgeschlossen hat?"~ */ DO ~SetGlobal("Angyar_Quest","GLOBAL",2)
IncrementGlobalOnceEx("GLOBALGood_Wife_of_Angyar_1","GLOBALGood",1)
~ GOTO 19
  IF ~~ THEN REPLY #11896 /* ~"Das tut mir leid. Ich hätte dennoch einige Fragen an dich..."~ */ GOTO 16
  IF ~~ THEN REPLY #11897 /* ~"Hört sich an, als ob du deine eigenen Probleme hättest. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 18 // from: 20.0
  SAY #11823 /* ~"So ein nettes Angebot lehne ich nicht ab." Sie scheint dir dankbar zu sein, doch dann kehrt ihr besorgter Ausdruck zurück. "Aber, bitte, sag niemandem, daß ich dich darum gebeten habe. Mein Mann hat eine schreckliche Laune, und wenn er davon erfahren würde..." Sie schaudert.~ */
  IF ~~ THEN REPLY #11898 /* ~Lüge: "Ich verspreche dir, daß dein Mann nichts davon erfahren wird."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Wife_of_Angyar_2","GLOBALLaw",-1)
IncrementGlobalOnceEx("GLOBALEvil_Wife_of_Angyar_3","GLOBALGood",-1)
~ GOTO 21
  IF ~~ THEN REPLY #11899 /* ~Schwur: "Ich verspreche dir, daß dein Mann nichts davon erfahren wird."~ */ DO ~IncrementGlobalOnceEx("GLOBALLawful_Wife_of_Angyar_1","GLOBALLaw",1)
~ GOTO 21
  IF ~~ THEN REPLY #11900 /* ~"Ich kann nichts versprechen. Wir werden abwarten müssen, was geschieht."~ */ GOTO 22
END

IF ~~ THEN BEGIN 19 // from: 17.0
  SAY #11824 /* ~"Der Staubie nennt sich selbst Grabesende... seinen Vornamen kenne ich nicht. Er hat einen Tisch in der Staubmenschenbar im Stock... ich glaube, sie heißt 'Zum Staubfänger'. Dort hält er sich wahrscheinlich auf und versucht, die Leute zu überreden, seinen Vertrag zu unterzeichnen."~ */
  IF ~  Dead("Mortai")
~ THEN REPLY #11902 /* ~"Oh, Mortai? Er ist tot."~ */ GOTO 23
  IF ~  !Dead("Mortai")
~ THEN REPLY #11903 /* ~"Ich werd ihn ausfindig machen. Wo ist denn diese Bar "Zum Staubfänger"?"~ */ JOURNAL #64577 /* ~Ich habe im Stock eine Frau getroffen, deren Mann, Angyar, einen 'Todesvertrag' bei einem der Staubmenschen - einem Mann namens Mortai Grabesende - in der Bar Zum Staubfänger unterschrieben hat. Ich habe angeboten, daß ich mal versuchen könnte, ob ich den Vertrag für sie begleichen könnte, damit sie und ihr Ehemann etwas Ruhe haben. Sie hat mir gesagt, daß die Bar Zum Staubfänger in diesem Block des Stocks liegt, südwestlich vom Staubmenschen-Denkmal, und daß davor ein Zombie steht.~ */ GOTO 20
  IF ~  PartyHasItem("Acontrac")
~ THEN REPLY #11904 /* ~"Ich hab' den Vertrag deines Mannes schon hier."~ */ JOURNAL #64578 /* ~Ich habe im Stock eine Frau getroffen, deren Mann, Angyar, einen 'Todesvertrag' bei einem der Staubmenschen - einem Mann namens Mortai Grabesende - in der Bar Zum Staubfänger unterschrieben hat. Ich hatte aber den Todesvertrag schon, also mußte ich nicht erst zur Staubmenschenbar rennen.~ */ GOTO 28
END

IF ~~ THEN BEGIN 20 // from: 19.1
  SAY #11825 /* ~"Geh draußen auf der Straße in Richtung Gedenkstein und von dort aus nach Südwesten..." Sie faßt sich ans Kinn. "Du kannst es nicht verpassen. Halt' dich einfach an den wandelnden Toten." Sie macht ein angeekeltes Gesicht.~ */
  IF ~~ THEN REPLY #11905 /* ~"Also gut. Ich werde sehen, was ich machen kann."~ */ GOTO 18
END

IF ~~ THEN BEGIN 21 // from: 18.0 18.1 38.0
  SAY #11826 /* ~"Danke, Fremder... Ich weiß deine Unterstützung zu schätzen."~ */
  IF ~~ THEN REPLY #11906 /* ~"Das ist kein Problem. Ich werde mich sofort darum kümmern, daß der Vertrag deines Mannes rückgängig gemacht wird."~ */ EXIT
END

IF ~~ THEN BEGIN 22 // from: 18.2
  SAY #11827 /* ~"Dann möchte ich dich bitten, so wenig wie möglich über die Angelegenheit zu reden."~ */
  IF ~~ THEN REPLY #11907 /* ~"Also gut. Ich werde mich sofort darum kümmern, daß der Vertrag deines Mannes rückgängig gemacht wird."~ */ EXIT
END

IF ~~ THEN BEGIN 23 // from: 19.0 37.0
  SAY #11828 /* ~"Tot?!" Sie wirkt wie gelähmt. "Aber der Vertrag... Gibt es da keine Möglichkeit..."~ */
  IF ~  !PartyHasItem("Acontrac")
~ THEN REPLY #11908 /* ~"Das ist ein Problem."~ */ JOURNAL #64579 /* ~Ich habe im Stock eine Frau getroffen, deren Mann, Angyar, einen 'Todesvertrag' bei einem der Staubmenschen - einem Mann namens Mortai Grabesende - in der Bar Zum Staubfänger unterschrieben hat. Ich hatte ihn allerdings schon ins Totenbuch gesteckt, also hatte ich dadurch, daß ich seinem Elend ein Ende bereitet habe, die Frau und ihren Ehemann verdammt.~ */ GOTO 24
  IF ~  PartyHasItem("Acontrac")
~ THEN REPLY #11909 /* ~"Mach dir keine Sorgen. Ich hab' den Vertrag hier bei mir."~ */ JOURNAL #64578 /* ~Ich habe im Stock eine Frau getroffen, deren Mann, Angyar, einen 'Todesvertrag' bei einem der Staubmenschen - einem Mann namens Mortai Grabesende - in der Bar Zum Staubfänger unterschrieben hat. Ich hatte aber den Todesvertrag schon, also mußte ich nicht erst zur Staubmenschenbar rennen.~ */ GOTO 28
END

IF ~~ THEN BEGIN 24 // from: 23.0
  SAY #11829 /* ~Sie verstummt. Sie schaut zuerst ihren Mann an, dann dich. "Dann kann man nichts machen." Sie spricht mit gepreßter Stimme. "Bitte geh."~ */
  IF ~~ THEN REPLY #11910 /* ~"Ich hätte zuerst ein paar Fragen..."~ */ DO ~Enemy()
~ GOTO 16
  IF ~~ THEN REPLY #11911 /* ~"Leb wohl."~ */ DO ~Enemy()
~ EXIT
END

IF ~  GlobalGT("Wife_of_Angyar","GLOBAL",0)
GlobalLT("Angyar_Quest","GLOBAL",2)
GlobalLT("Angyar","GLOBAL",2)
~ THEN BEGIN 25 // from:
  SAY #11830 /* ~Angyars Frau blickt ängstlich auf, als du näherkommst. "Ich hab' doch gesagt, daß du hier nicht willkommen bist... geh besser... bevor ich meinen Mann rufe. Er wird nicht begeistert sein, daß du hier hereingeplatzt bist."~ */
  IF ~  Global("Angyar_Quest","GLOBAL",1)
~ THEN REPLY #11912 /* ~"Was war das noch mal für ein Todesvertrag, den dein Mann da unterschrieben hat?"~ */ GOTO 12
  IF ~~ THEN REPLY #11913 /* ~" Wenn du ihn rufen wolltest, hättest du es schon längst getan. Nun, ich habe ein paar Fragen an dich..."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Wife_of_Angyar_1","GLOBALGood",-1)
~ GOTO 2
  IF ~~ THEN REPLY #11914 /* ~"Ruf deinen Mann, und ihr werdet beide sterben. Und nun beantworte meine Fragen."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Wife_of_Angyar_1","GLOBALLaw",-1)
IncrementGlobalOnceEx("GLOBALEvil_Wife_of_Angyar_1","GLOBALGood",-1)
~ GOTO 3
  IF ~~ THEN REPLY #11915 /* ~"Beruhige dich. Ich hätte nur noch ein paar Fragen..."~ */ GOTO 2
  IF ~~ THEN REPLY #11917 /* ~"Leb wohl."~ */ EXIT
END

IF ~  Global("Angyar_Quest","GLOBAL",2)
GlobalLT("Angyar","GLOBAL",2)
~ THEN BEGIN 26 // from:
  SAY #11831 /* ~Angyars Frau blickt hoffnungsvoll auf, als du näherkommst. "Hast du...?"~ */
  IF ~  PartyHasItem("Acontrac")
~ THEN REPLY #11916 /* ~"Ja, ich habe den Vertrag von Mortai bekommen. Hier ist er."~ */ GOTO 28
  IF ~~ THEN REPLY #11918 /* ~"Noch nicht. Bei wem hat dein Mann den Vertrag noch mal unterzeichnet?"~ */ GOTO 37
  IF ~~ THEN REPLY #11919 /* ~"Ich kümmere mich noch drum. Auf bald."~ */ EXIT
END

IF ~  Global("Angyar","GLOBAL",2)
~ THEN BEGIN 27 // from:
  SAY #11832 /* ~Angyars Frau lächelt, als sie dich sieht. "Guten Tag, mein Herr. Wie kann ich Euch helfen?"~ */
  IF ~~ THEN REPLY #11920 /* ~"Ich habe mich gefragt, ob ich wohl hier rasten könnte."~ */ DO ~FadeToColor([20.0],0)
Wait(1)
RestPartyEx(0,10,FALSE)
FadeFromColor([20.0],0)
~ EXIT
  IF ~~ THEN REPLY #11921 /* ~"Meine Vorräte gehen zu Ende... kannst du mir da helfen?"~ */ DO ~StartStore("Wangyar",Protagonist)
~ EXIT
  IF ~~ THEN REPLY #11922 /* ~"Ich wollte nur mal vorbeischauen und sehen, wie es dir geht. Also, leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 28 // from: 19.2 23.1 26.0 37.2
  SAY #11833 /* ~Sie wirkt erleichtert, dann trübt sich ihr Blick. "Oh, bei den Mächten... du mußt ein verkleideter Deva sein, um so etwas für jemanden zu tun, den du kaum kennst..."~ */
  IF ~  PartyHasItem("Acontrac")
~ THEN REPLY #11923 /* ~Gib ihr den Vertrag.~ */ DO ~SetGlobal("Angyar_Quest","GLOBAL",3)
~ JOURNAL #64580 /* ~Ich habe Angyars Todesvertrag geholt und seiner Frau zurückgegeben. Sie hat mir gedankt und mich gebeten, den Vertrag ihrem Mann zu zeigen.~ */ GOTO 29
  IF ~~ THEN REPLY #11924 /* ~"Ich hab' das nicht allein aus Güte getan, weißt du. Ich erwarte eine Gegenleistung dafür."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Wife_of_Angyar_2","GLOBALGood",-1)
~ GOTO 30
END

IF ~~ THEN BEGIN 29 // from: 28.0
  SAY #11834 /* ~"Nun... wenn du meinem Mann den Vertrag selbst zeigen und ihm sagen würdest, daß du ihn für ihn beschafft hast... Aber sag ihm bitte nicht, wie du daran gekommen bist."~ */
  IF ~~ THEN REPLY #11925 /* ~"Also gut. Dann werd ich ihm den Vertrag zeigen."
~ */ EXIT
  IF ~~ THEN REPLY #11926 /* ~"Ich hab' das nicht allein aus Güte getan, weißt du. Ich erwarte eine Gegenleistung dafür."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Wife_of_Angyar_2","GLOBALGood",-1)
~ GOTO 30
END

IF ~~ THEN BEGIN 30 // from: 28.1 29.1
  SAY #11835 /* ~Sie sieht dich besorgt an. "Ich hab' ein paar Kupfermünzen... reicht das?"~ */
  IF ~~ THEN REPLY #11927 /* ~"Ja."~ */ DO ~GivePartyGold(11)
~ GOTO 31
  IF ~~ THEN REPLY #11928 /* ~"Ein paar Kupferstücke ist nicht genug. Was kannst du mir sonst noch geben?"~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Wife_of_Angyar_5","GLOBALGood",-1)
~ GOTO 33
END

IF ~~ THEN BEGIN 31 // from: 30.0
  SAY #11836 /* ~Sie greift in ihre Robe und kramt ein paar Kupfermünzen hervor. Sie wirft einen wehmütigen Blick darauf, bevor sie sie dir gibt. "Das ist wenig Geld für die Rettung der Seele meines Mannes."~ */
  IF ~~ THEN REPLY #11929 /* ~"Nicht schlecht - für den Anfang. Was hast du sonst noch zu bieten?"~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Wife_of_Angyar_5","GLOBALGood",-1)
~ GOTO 33
  IF ~~ THEN REPLY #11930 /* ~"Gut. Hier ist der Vertrag."~ */ JOURNAL #64580 /* ~Ich habe Angyars Todesvertrag geholt und seiner Frau zurückgegeben. Sie hat mir gedankt und mich gebeten, den Vertrag ihrem Mann zu zeigen.~ */ GOTO 32
END

IF ~~ THEN BEGIN 32 // from: 31.1 33.1
  SAY #11837 /* ~"Nun... wenn du meinem Mann den Vertrag selbst zeigen und ihm sagen würdest, daß du ihn für ihn beschafft hast... Aber sag ihm bitte nicht, wie du daran gekommen bist."~ */
  IF ~~ THEN REPLY #11931 /* ~"Also gut. Dann werd ich ihm den Vertrag zeigen."~ */ DO ~SetGlobal("Angyar_Quest","GLOBAL",3)
~ EXIT
END

IF ~~ THEN BEGIN 33 // from: 30.1 31.0
  SAY #11838 /* ~"Das ist alles, was ich habe." Sie wirkt beängstigt. "Wirklich, mein Herr. Mein Mann hätte den Todesvertrag überhaupt nicht unterzeichnet, wenn..."
~ */
  IF ~~ THEN REPLY #11932 /* ~"Hör auf, mich *anzulügen*, Weib. Was hast du sonst noch?"~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Wife_of_Angyar_6","GLOBALGood",-1)
~ GOTO 34
  IF ~~ THEN REPLY #11933 /* ~"Ist nicht wichtig. Hier ist der Vertrag."~ */ JOURNAL #64580 /* ~Ich habe Angyars Todesvertrag geholt und seiner Frau zurückgegeben. Sie hat mir gedankt und mich gebeten, den Vertrag ihrem Mann zu zeigen.~ */ GOTO 32
END

IF ~~ THEN BEGIN 34 // from: 33.0
  SAY #11839 /* ~Sie erblaßt und reißt entsetzt Augen auf. Bevor du reagieren kannst, holt sie tief Luft und beginnt zu schreien!~ */
  IF ~~ THEN REPLY #11934 /* ~"Verdammt..."~ */ DO ~Enemy()
ForceAttack(Protagonist,Myself)
~ EXIT
END

IF ~  Global("Angyar","GLOBAL",3)
~ THEN BEGIN 35 // from:
  SAY #11840 /* ~Angyars Frau dreht sich zu dir um, als du näherkommst, und wirft ihrem Mann einen besorgten Blick zu. "Ich bin dir dankbar, daß du den Vertrag beschafft hast, aber du hast meinen Mann verärgert." Sie sieht Angyar ängstlich an. "Du gehst jetzt besser."~ */
  IF ~~ THEN REPLY #11935 /* ~"Wie du meinst. Und entschuldige die Störung."~ */ DO ~Enemy()
~ EXIT
END

IF ~  Global("Angyar_Quest","GLOBAL",3)
GlobalLT("Angyar","GLOBAL",2)
~ THEN BEGIN 36 // from:
  SAY #11841 /* ~Angyars Frau schaut hoffnungsvoll auf, als du näherkommst. "Hast du ihn ihm gegeben...?"~ */
  IF ~~ THEN REPLY #11936 /* ~"Noch nicht. Ich werde zurückkehren, wenn ich ihn habe."~ */ EXIT
END

IF ~~ THEN BEGIN 37 // from: 26.1
  SAY #11842 /* ~"Der Staubie nennt sich selbst Grabesende... seinen Vornamen kenne ich nicht. Er hat einen Tisch in der Staubmenschenbar im Stock... ich glaube, sie heißt 'Zum Staubfänger'. Dort hält er sich wahrscheinlich auf und versucht, die Leute zu überreden, seinen Vertrag zu unterzeichnen."~ */
  IF ~  Dead("Mortai")
~ THEN REPLY #11937 /* ~"Oh, Mortai? Er ist tot."~ */ GOTO 23
  IF ~  !Dead("Mortai")
~ THEN REPLY #11938 /* ~"Ich werd ihn ausfindig machen. Wo ist denn diese Bar "Zum Staubfänger"?"~ */ GOTO 38
  IF ~  PartyHasItem("Acontrac")
~ THEN REPLY #11939 /* ~"Ich hab' den Vertrag deines Mannes schon hier."~ */ GOTO 28
END

IF ~~ THEN BEGIN 38 // from: 37.1
  SAY #11843 /* ~"Geh draußen auf der Straße in Richtung Gedenkstein und von dort aus nach Südwesten..." Sie faßt sich ans Kinn. "Du kannst es nicht verpassen. Halt' dich einfach an den wandelnden Toten." Sie macht ein angeekeltes Gesicht.~ */
  IF ~~ THEN REPLY #11940 /* ~"Also gut. Ich werde sehen, was ich machen kann."~ */ GOTO 21
END
