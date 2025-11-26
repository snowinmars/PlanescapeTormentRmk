// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DMORTAI.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\de_DE\dialog.tlk
// dialogF  : (none)

BEGIN ~DMORTAI~

IF ~  Global("Mortai","GLOBAL",0)
~ THEN BEGIN 0 // from:
  SAY #1794 /* ~Dieser winzige, verschrumpelte Mann erscheint noch kleiner in seiner riesigen Staubmenschen-Robe. Sie sieht aus, als wäre sie extra ausgewählt worden, um seine kleine Statur zu verstecken. Obwohl man ihn locker auf Ende neunzig schätzen würde, ist der Mann noch extrem energiegeladen... er zappelt unaufhörlich herum und seine Augen wandern flink durch die Bar.~ */
  IF ~~ THEN REPLY #13417 /* ~"Sei gegrüßt."~ */ DO ~SetGlobal("Mortai","GLOBAL",1)
~ GOTO 1
  IF ~~ THEN REPLY #13418 /* ~Beachte den Mann nicht.~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #1795 /* ~Die Augen des Mannes glühen, als er dich abschätzend betrachtet, und er grüßt dich mit einem leichten Nicken. "Sei gegrüßt, Reisender, schön, dich zu treffen. Du siehst aus wie einer, der gerade seine Sigil-Beine zusammenbekommt..." Seine Stimme wird immer leiser. "Entschuldige, haben wir uns schon mal getroffen? Dein Gesicht kommt mir irgendwie bekannt vor."~ */
  IF ~~ THEN REPLY #13419 /* ~"Möglicherweise. Bist du dir sicher, daß ich das war?"~ */ GOTO 2
  IF ~~ THEN REPLY #13420 /* ~"Nein, das heißt... ich kann mich nicht an dich erinnern."~ */ GOTO 2
  IF ~~ THEN REPLY #13421 /* ~"Mach dir nichts draus. Ich muß gehen."~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.0 1.1
  SAY #13350 /* ~"Hmmmm... vielleicht hab' ich mich geirrt." Mortai schüttelt seinen Kopf. "Tja, macht nichts, macht nichts. Wie kann Mortai Grabesende dir helfen? Suchst du..." Er schnalzt beim Sprechen mit der Zunge. "...vielleicht den *Vertrag*?"~ */
  IF ~  Global("Mortai_Blackmail","GLOBAL",0)
~ THEN REPLY #13422 /* ~"Vertrag?"~ */ DO ~SetGlobal("Know_Contract","GLOBAL",1)
~ GOTO 3
  IF ~  Global("Mortai_Blackmail","GLOBAL",1)
~ THEN REPLY #13423 /* ~"Vertrag?"~ */ DO ~SetGlobal("Know_Contract","GLOBAL",1)
~ GOTO 4
  IF ~  Global("Angyar_Quest","GLOBAL",2)
~ THEN REPLY #13424 /* ~"Mortai Grabesende? Bist du der Staubmensch, der mit Angyar den Vertrag abgeschlossen hat?"~ */ GOTO 42
  IF ~~ THEN REPLY #13425 /* ~"Nicht heute, danke. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 2.0 9.0 10.0 61.0
  SAY #13351 /* ~"Der Vertrag? Tja, das ist ne ganz simple Transaktion." Aus den Tiefen seiner Robe zieht Mortai ein staubiges Pergament und eine Schreibfeder. "Ich geb dir fünfzig einfache Kupfermünzen. Dafür hat der Bund der Staubmenschen - nach deinem Tod - ein Anrecht auf deine sterblichen Überreste." Er lächelt und schnalzt mit der Zunge. "Was willst du mit ihnen dann schon noch anfangen?"~ */
  IF ~~ THEN REPLY #13426 /* ~"Was machen die Staubmenschen mit der Leiche?"~ */ GOTO 5
  IF ~~ THEN REPLY #13427 /* ~"Fünfzig Kupfermünzen für meine Leiche? Also gut, ich unterschreibe."~ */ GOTO 12
  IF ~~ THEN REPLY #13428 /* ~"Kein Interesse, danke. Ich hätte da allerdings ein paar Fragen..."~ */ GOTO 9
  IF ~~ THEN REPLY #13429 /* ~"Ich glaube nicht, daß du mir helfen kannst. Leb wohl."~ */ GOTO 8
END

IF ~~ THEN BEGIN 4 // from: 2.1 9.1 10.1 61.1
  SAY #13352 /* ~"Der Vertrag? Tja, das ist ne ganz simple Transaktion." Aus den Tiefen seiner Robe zieht Mortai ein staubiges Pergament und eine Schreibfeder. "Die übliche Summe ist fünfzig... aber für dich mach ich's hundert einfache Kupfermünzen. Dafür hat der Bund der Staubmenschen - nach deinem Tod - ein Anrecht auf deine sterblichen Überreste." Er lächelt und schnalzt mit der Zunge. "Was willst du mit ihnen dann schon noch anfangen?"~ */
  IF ~~ THEN REPLY #13430 /* ~"Was machen die Staubmenschen mit der Leiche?"~ */ GOTO 5
  IF ~~ THEN REPLY #13431 /* ~"Hundert Kupfermünzen für meine Leiche? Also gut, ich unterschreibe."~ */ GOTO 12
  IF ~~ THEN REPLY #13432 /* ~"Kein Interesse, danke. Ich hätte da allerdings ein paar Fragen..."~ */ GOTO 9
  IF ~~ THEN REPLY #13433 /* ~"Ich glaube nicht, daß du mir helfen kannst. Leb wohl."~ */ GOTO 8
END

IF ~~ THEN BEGIN 5 // from: 3.0 4.0
  SAY #13353 /* ~Mortai hält seine Hände hoch, als ob er es nicht wüßte. "Was kümmert's dich? Kann dir doch sowieso egal sein, wenn du erstmal hinübergegangen bist."~ */
  IF ~~ THEN REPLY #13434 /* ~"Es kümmert mich halt."~ */ GOTO 6
  IF ~~ THEN REPLY #13435 /* ~"Also gut, ich unterschreibe."~ */ GOTO 12
  IF ~~ THEN REPLY #13436 /* ~"Kein Interesse, danke. Ich hätte da allerdings ein paar Fragen..."~ */ GOTO 9
  IF ~~ THEN REPLY #13437 /* ~"Ich glaube nicht, daß du mir helfen kannst. Leb wohl."~ */ GOTO 8
END

IF ~~ THEN BEGIN 6 // from: 5.0
  SAY #13354 /* ~"Tja, wenn du's unbedingt wissen *mußt*, oft passiert *gar* nichts mit der Leiche, und dann haben wir, die Staubmenschen, all das schöne Geld verschleudert! Narren, die wir sind!" Mortai lächelt ein wenig und sieht dich dann entschuldigend an. "Aber... *ganz selten* müssen wir die... Arbeiter in der Leichenhalle austauschen... und dann haben wir eventuell Verwendung für deine Leiche."~ */
  IF ~~ THEN REPLY #13438 /* ~"Du meinst, meine Leiche wird wiederbelebt und zur Arbeit in die Leichenhalle gesteckt? Das hört sich nicht gut an."~ */ GOTO 7
  IF ~~ THEN REPLY #13439 /* ~"Also gut, ich unterschreibe."~ */ GOTO 12
  IF ~~ THEN REPLY #13440 /* ~"Kein Interesse, danke. Ich hätte da allerdings ein paar Fragen..."~ */ GOTO 9
  IF ~~ THEN REPLY #13441 /* ~"Ich glaube nicht, daß du mir helfen kannst. Leb wohl."~ */ GOTO 8
END

IF ~~ THEN BEGIN 7 // from: 6.0
  SAY #13355 /* ~"Ah, aber das schadet doch niemandem, und es wird niemandem wehgetan..." Mortai erhebt einen Finger, als ob er seiner Aussage mehr Gewicht verleihen möchte. "Und es besteht überhaupt keine Gefahr. Gegen Geld, das du in *diesem* Leben ausgeben kannst, mußt du uns nur etwas geben, das du nach deinem Tod ohnehin nicht mehr gebrauchen kannst." Mortai tippt sich auf die Brust. "Ich hab' den Vertrag selbst unterschrieben, wenn du's wissen willst... Ich brauche jedenfalls *meine* Leiche nicht mehr, wenn ich mal verscheide."~ */
  IF ~~ THEN REPLY #13442 /* ~"Hmmmm... stimmt. Also gut, ich unterschreibe."~ */ GOTO 12
  IF ~~ THEN REPLY #13443 /* ~"Ich werd's mir überlegen. Fürs erste hätt ich noch ein paar Fragen..."~ */ GOTO 9
  IF ~~ THEN REPLY #13444 /* ~"Also, aus diversen Gründen ziehe ich es vor, in Frieden zu ruhen. Ich denke nicht, daß du mir helfen kannst. Leb wohl."~ */ GOTO 8
END

IF ~~ THEN BEGIN 8 // from: 3.3 4.3 5.3 6.3 7.2 12.5 13.5 20.3 21.4 32.3 34.2 35.2 40.2 61.5 63.4
  SAY #13356 /* ~"Aber ich kann dir helfen! Ich kann's!" Mortai ruft dir nach, während du weggehst, mit bittender Stimme. "Komm zurück, wenn du mal Geld brauchst, und Mortai kann dir helfen... alles nur für deine Unterschrift."~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 9 // from: 3.2 4.2 5.2 6.2 7.1 10.2 11.2 12.4 13.4 20.2 21.3 22.0 23.0 24.3 25.2 26.1 27.5 27.6 27.7 27.8 27.9 28.1 29.2 30.0 31.1 32.2 33.1 34.1 35.1 36.3 37.2 38.1 40.1 41.3 42.3 43.5 44.5 45.4 46.5 49.4 52.4 55.3 60.0 61.4 62.0 63.3 66.2
  SAY #13357 /* ~"Natürlich, natürlich..." Mortai nickt. "Wär mir eine Freude, alle deine Fragen zu beantworten..."~ */
  IF ~  Global("Mortai_Blackmail","GLOBAL",0)
Global("Mortai_Contract","GLOBAL",0)
~ THEN REPLY #13445 /* ~"Erzähl mir noch mal was über diesen Vertrag."~ */ DO ~SetGlobal("Know_Contract","GLOBAL",1)
~ GOTO 3
  IF ~  Global("Mortai_Blackmail","GLOBAL",1)
Global("Mortai_Contract","GLOBAL",0)
~ THEN REPLY #13446 /* ~"Erzähl mir noch mal was über diesen Vertrag."~ */ DO ~SetGlobal("Know_Contract","GLOBAL",1)
~ GOTO 4
  IF ~  Global("Mortai_Contract","GLOBAL",0)
~ THEN REPLY #13447 /* ~"Ich würde gern den Vertrag unterschreiben, von dem du gesprochen hast."~ */ DO ~SetGlobal("Know_Contract","GLOBAL",1)
~ GOTO 12
  IF ~  Global("Mortai_Contract","GLOBAL",1)
~ THEN REPLY #13448 /* ~"Ich würde gern den Vertrag, den ich mit dir abgeschlossen habe, lösen."~ */ DO ~SetGlobal("Know_Contract","GLOBAL",1)
~ GOTO 24
  IF ~  Global("Angyar_Quest","GLOBAL",2)
Global("Mortai_Fetch","GLOBAL",0)
~ THEN REPLY #13449 /* ~"Bist du derjenige, der den Todesvertrag mit Angyar abgeschlossen hat?"~ */ GOTO 42
  IF ~  Global("Mortai_Fetch","GLOBAL",1)
HasItem("Acontrac","Mortai")
~ THEN REPLY #13450 /* ~"Kann ich mal den Vertrag sehen, den du mit Angyar abgeschlossen hast?"~ */ GOTO 54
  IF ~~ THEN REPLY #13451 /* ~"Kannst du mir was über die Leute hier erzählen?"~ */ GOTO 27
  IF ~  Global("Journal","GLOBAL",0)
~ THEN REPLY #13452 /* ~"Hast du in letzter Zeit ein Journal gesehen? Ich vermisse nämlich eins."~ */ GOTO 10
  IF ~  Global("Pharod","GLOBAL",0)
~ THEN REPLY #13453 /* ~"Ich suche nach einem Mann namens Pharod. Hast du ihn gesehen?"~ */ GOTO 11
  IF ~~ THEN REPLY #13454 /* ~"Keine Fragen heute. Leb wohl."~ */ GOTO 56
END

IF ~~ THEN BEGIN 10 // from: 9.7
  SAY #13358 /* ~Mortai schüttelt den Kopf. "Ich weiß nichts über ein Journal." Er lächelt. "Ich handle mit ganz *anderen* Dokumenten..."~ */
  IF ~  Global("Mortai_Blackmail","GLOBAL",0)
Global("Mortai_Contract","GLOBAL",0)
~ THEN REPLY #13455 /* ~"Du meinst, der Vertrag, von dem du gerade gesprochen hast? Was ist damit?"

~ */ DO ~SetGlobal("Know_Contract","GLOBAL",1)
~ GOTO 3
  IF ~  Global("Mortai_Blackmail","GLOBAL",1)
Global("Mortai_Contract","GLOBAL",0)
~ THEN REPLY #13456 /* ~"Du meinst, der Vertrag, von dem du gerade gesprochen hast? Was ist damit?"
~ */ DO ~SetGlobal("Know_Contract","GLOBAL",1)
~ GOTO 4
  IF ~~ THEN REPLY #13457 /* ~"Das hast du bereits erwähnt. Ich hätte noch ein paar Fragen..."~ */ GOTO 9
  IF ~~ THEN REPLY #13458 /* ~"Mehr wollt' ich gar nicht wissen. Leb wohl."~ */ GOTO 56
END

IF ~~ THEN BEGIN 11 // from: 9.8
  SAY #13359 /* ~Mortai runzelt die Stirn. "Das ist einer von diesen Sammlern, nicht wahr? Ich weiß nicht viel über ihn... Ich glaub, der Eingeweihte Emoric hat ihn mal kurz erwähnt." Mortai sieht sich um. "Emoric sollte hier irgendwo in der Bar sein... ist in der Regel hinten in der Ecke am ersten Tisch zu finden, glaub ich."~ */
  IF ~  GlobalGT("Emoric","GLOBAL",0)
Global("Mortai_Contract","GLOBAL",0)
~ THEN REPLY #13459 /* ~"Der Eingeweihte Emoric?"~ */ GOTO 32
  IF ~  GlobalGT("Emoric","GLOBAL",0)
Global("Mortai_Contract","GLOBAL",1)
~ THEN REPLY #13460 /* ~"Der Eingeweihte Emoric?"~ */ GOTO 33
  IF ~~ THEN REPLY #13461 /* ~"Oh. Ich hätte noch ein paar Fragen..."~ */ GOTO 9
  IF ~~ THEN REPLY #13462 /* ~"Mehr wollt' ich gar nicht wissen. Leb wohl."~ */ GOTO 56
END

IF ~~ THEN BEGIN 12 // from: 3.1 4.1 5.1 6.1 7.0 9.2 35.0
  SAY #13360 /* ~"Ausgezeichnet! Ausgezeichnet!" Mortai sieht überglücklich aus... mit einem dünnen Lächeln legt er ein staubiges Stück Pergament und eine Schreibfeder vor dich hin. "Das sollst du *nicht* bereuen." Er zeigt mit seinem Finger auf drei Punkte auf der Seite. "Unterschreib hier, hier und hier, und schon ist unsere Transaktion abgeschlossen!"~ */
  IF ~  Global("Memory_Dustman_Contract","GLOBAL",0)
~ THEN REPLY #13463 /* ~Unterschreibe da, und da, und da.~ */ DO ~SetGlobal("Memory_Dustman_Contract","GLOBAL",1)
GiveExperience(Protagonist,500)
~ GOTO 14
  IF ~  Global("Memory_Dustman_Contract","GLOBAL",1)
~ THEN REPLY #13464 /* ~Unterschreibe da, und da, und da.~ */ GOTO 21
  IF ~  CheckStatGT(Protagonist,12,WIS)
CheckStatLT(Protagonist,11,CHR)
~ THEN REPLY #13465 /* ~"Weißt du... du zeigst stärker deine Gefühle als sämtliche Staubmenschen, die ich bislang getroffen habe."~ */ GOTO 13
  IF ~  CheckStatGT(Protagonist,10,CHR)
~ THEN REPLY #13466 /* ~"Weißt du... du zeigst stärker deine Gefühle als sämtliche Staubmenschen, die ich bislang getroffen habe."~ */ GOTO 13
  IF ~~ THEN REPLY #13467 /* ~"Vergiß es. Ich hätte da noch ein paar Fragen..."~ */ GOTO 9
  IF ~~ THEN REPLY #13468 /* ~"Naja, egal. Ich glaube nicht, daß du mir helfen kannst. Leb wohl."
~ */ GOTO 8
END

IF ~~ THEN BEGIN 13 // from: 12.2 12.3
  SAY #13361 /* ~Mortais Lächeln wird kalt. "Ich vertrau mal darauf, daß Ihr mich damit nicht beleidigen wolltet, mein Herr."~ */
  IF ~  Global("Memory_Dustman_Contract","GLOBAL",0)
~ THEN REPLY #13469 /* ~"Nein. Laß mich den Vertrag unterschreiben."~ */ DO ~SetGlobal("Memory_Dustman_Contract","GLOBAL",1)
GiveExperience(Protagonist,500)
~ GOTO 14
  IF ~  Global("Memory_Dustman_Contract","GLOBAL",1)
~ THEN REPLY #13470 /* ~"Nein. Laß mich den Vertrag unterschreiben."~ */ GOTO 21
  IF ~~ THEN REPLY #13471 /* ~"Gibt es da ein Problem?"~ */ GOTO 29
  IF ~~ THEN REPLY #13472 /* ~"Ich wollte dich nicht beleidigen... aber du scheinst schrecklich erpicht darauf zu sein, diesen Vertrag mit mir abzuschließen. Und bei einem Staubmenschen erscheint mir ein solcher Eifer sonderbar."~ */ GOTO 63
  IF ~~ THEN REPLY #13473 /* ~"Ich möchte mich entschuldigen. Ich hätte noch ein paar Fragen..."~ */ GOTO 9
  IF ~~ THEN REPLY #13474 /* ~"Ich will dich nicht beleidigen... aber ich denke, du kannst mir nicht helfen. Leb wohl."~ */ GOTO 8
END

IF ~~ THEN BEGIN 14 // from: 12.0 13.0 21.2 63.0
  SAY #13362 /* ~Du nimmst die Schreibfeder in die Hand und beginnst, deine Unterschrift in das Pergament zu kratzen... die Feder macht ein seltsames *kratzendes* Geräusch, als sie das Pergament berührt, wie ein Dolch, der auf Stahl schreibt.~ */
  IF ~~ THEN REPLY #13475 /* ~Fahr fort mit dem Unterschreiben...~ */ GOTO 15
END

IF ~~ THEN BEGIN 15 // from: 14.0
  SAY #13363 /* ~Während du versuchst, auf dem Pergament zu unterschreiben, merkst du, wie es sich unter der Schreibfeder hin- und herbewegt... wie sehr du es auch versuchst, du scheinst nicht deinen Namen schreiben zu können. Der Vertrag scheint sich aus einem Stück staubigen Pergaments in etwas... Lebendiges zu verwandeln?~ */
  IF ~~ THEN REPLY #13476 /* ~"Ähm... Mortai? Was ist mit diesem Vertrag los?"~ */ DO ~PlaySoundNotRanged("SPTR_01")
~ GOTO 16
END

IF ~~ THEN BEGIN 16 // from: 15.0
  SAY #13364 /* ~Als du aufschaust, um mit Mortai zu reden, siehst du anstelle seines Gesichts jetzt einen grinsenden Totenschädel. Der Rest der Bar scheint stillzustehen, die Gäste sind still, wie zu Statuen gefroren. Mortai öffnet seinen Mund, und ein Hauch Staub kommt aus dem Totenschädel.
~ */
  IF ~~ THEN REPLY #13477 /* ~"Mortai...?"~ */ GOTO 17
END

IF ~~ THEN BEGIN 17 // from: 16.0
  SAY #13365 /* ~Der Totenschädel spricht mit einem Krächzen, während Staub zwischen seinen Zähnen hervorquillt...

*Unterzeichne*


*Aber denk dran... alles hat seinen Preis*

*Und was kann das Wesen eines Menschen ändern?*


Die Worte sind ein abgehackter, toter Refrain, wie von fünf, zehn, zwanzig, hundert Stimmen gesprochen - alt, jung, weiblich männlich, verzweifelt, ruhig, hysterisch...~ */
  IF ~~ THEN REPLY #13478 /* ~"Wesen eines Menschen...?"~ */ GOTO 18
END

IF ~~ THEN BEGIN 18 // from: 17.0
  SAY #13366 /* ~Während du die Worte sprichst, fühlst du dich plötzlich schwach, und dann hörst du plötzlich wieder Mortais Stimme, normal, und seine Hand liegt auf deiner Schulter. "Herr, geht es Euch gut?" Er lacht unbehaglich. "Ich dachte schon einen Moment lang, ich hätte Euch verloren..."~ */
  IF ~~ THEN REPLY #13479 /* ~Versuch, dich zu orientieren...~ */ GOTO 19
END

IF ~~ THEN BEGIN 19 // from: 18.0
  SAY #13367 /* ~Es ist so, als hätte die Zeit ausgeatmet und atme nun wieder normal... der Rest der Bar ist auch wieder ganz normal, und Mortais Gesicht ist kein Totenschädel mehr. Du fühlst einen seltsamen Druck in deinem Schädel, als ob etwas verzweifelt versucht, an die Oberfläche zu gelangen, aber nicht kann. Diese Erfahrung mit dem Totenschädel, der Staub gesprochen hat... es war so, als hättest du ein Dutzend Erinnerungssplitter zur selben Zeit, die sich alle ineinanderbohrten, um ein Bild zu schaffen... und du weißt irgendwie, daß jedes Wort, das der Totenschädel gesprochen hat, zu *irgend jemandem* gehörte... der jetzt schon lange tot ist.~ */
  IF ~~ THEN REPLY #13480 /* ~"Nur einen Moment... mir geht's gleich wieder besser."~ */ GOTO 20
END

IF ~~ THEN BEGIN 20 // from: 19.0
  SAY #13368 /* ~Mortai nimmt seine Hand von deiner Schulter weg... er sieht unbehaglich aus, eher über die Aussicht, einen Kunden zu verlieren, als aus Sorge um dein Wohlbefinden. Während du auf das staubige Pergament auf dem Tisch starrst, weißt du sicher, daß dies nicht das erste Mal ist, daß du deinen Namen unter einen Vertrag setzt... und vielleicht auch nicht das erste Mal, das du so einen Vertrag unterschrieben hast.~ */
  IF ~  Global("Mortai_Blackmail","GLOBAL",0)
~ THEN REPLY #13481 /* ~Beende das Unterschreiben des Vertrags.~ */ GOTO 22
  IF ~  Global("Mortai_Blackmail","GLOBAL",1)
~ THEN REPLY #13482 /* ~Beende das Unterschreiben des Vertrags.~ */ GOTO 23
  IF ~~ THEN REPLY #13483 /* ~"Ehrlich gesagt, Mortai... ich denke, ich warte noch ein wenig, bevor ich den Vertrag unterschreibe. Zuerst hätte ich noch ein paar Fragen..."~ */ GOTO 9
  IF ~~ THEN REPLY #13484 /* ~"Ich glaube nicht, daß du mir helfen kannst... leb wohl."~ */ GOTO 8
END

IF ~~ THEN BEGIN 21 // from: 12.1 13.1 63.1
  SAY #13369 /* ~Als die Feder das Pergament wieder berührt, fühlst du ein seltsames Rühren, Gedanken stürmen dir durch den Kopf, und eine Erinnerung kommt dir hoch...~ */
  IF ~  Global("Mortai_Blackmail","GLOBAL",0)
~ THEN REPLY #13485 /* ~Unterdrück die Erinnerung, unterschreibe den Vertrag...~ */ GOTO 22
  IF ~  Global("Mortai_Blackmail","GLOBAL",1)
~ THEN REPLY #13486 /* ~Unterdrück die Erinnerung, unterschreibe den Vertrag...~ */ GOTO 23
  IF ~~ THEN REPLY #13487 /* ~Laß der Erinnerung freien Lauf.~ */ GOTO 14
  IF ~~ THEN REPLY #13488 /* ~"Ehrlich gesagt, Mortai... ich denke, ich warte noch ein wenig, bevor ich den Vertrag unterschreibe. Zuerst hätte ich noch ein paar Fragen..."~ */ GOTO 9
  IF ~~ THEN REPLY #13489 /* ~"Ich glaube nicht, daß du mir helfen kannst... Leb wohl."~ */ GOTO 8
END

IF ~~ THEN BEGIN 22 // from: 20.0 21.0
  SAY #13370 /* ~Du kratzt ein 'X' an den drei Stellen, die Mortai dir gezeigt hat, auf den Vertrag. Als du dein letztes Zeichen gerade gemacht hast, schießen Mortais Hände wie zwei Peitschen vor: Mit der linken Hand streut er Staub über das Pergament, damit die Tinte schneller trocknet, und mit der rechten wirft er einen Strom von Kupfermünzen in deine Hände... insgesamt fünfzig.~ */
  IF ~~ THEN REPLY #13490 /* ~"So, nachdem das aus der Welt wäre, hätte ich noch ein paar Fragen an dich..."~ */ DO ~SetGlobal("Mortai_Contract","GLOBAL",1)
GivePartyGold(50)
AddexperienceParty(250)
~ GOTO 9
  IF ~~ THEN REPLY #13491 /* ~"Das Geschäft ist perfekt... Leb wohl."~ */ DO ~SetGlobal("Mortai_Contract","GLOBAL",1)
GivePartyGold(50)
AddexperienceParty(250)
~ GOTO 56
END

IF ~~ THEN BEGIN 23 // from: 20.1 21.1
  SAY #13371 /* ~Du kratzt ein 'X' an den drei Stellen, die Mortai dir gezeigt hat, auf den Vertrag. Als du dein letztes Zeichen gerade gemacht hast, schießen Mortais Hände wie zwei Peitschen vor: Mit der linken Hand streut er Staub über das Pergament, damit die Tinte schneller trocknet, und mit der rechten wirft er einen Strom von Kupfermünzen in deine Hände... insgesamt hundert.~ */
  IF ~~ THEN REPLY #13492 /* ~"So, nachdem das aus der Welt wäre, hätte ich noch ein paar Fragen an dich..."~ */ DO ~SetGlobal("Mortai_Contract","GLOBAL",1)
GivePartyGold(100)
AddexperienceParty(250)
~ GOTO 9
  IF ~~ THEN REPLY #13493 /* ~"Das Geschäft ist perfekt... Leb wohl."~ */ DO ~SetGlobal("Mortai_Contract","GLOBAL",1)
GivePartyGold(100)
AddexperienceParty(250)
~ GOTO 56
END

IF ~~ THEN BEGIN 24 // from: 9.3
  SAY #13372 /* ~Mortai sieht vorsichtig aus. "Ich fürchte, das ist nicht möglich. Der Vertrag ist unterzeichnet, abgeschlossen und rechtlich bindend."~ */
  IF ~~ THEN REPLY #13494 /* ~"Gibt es irgendeine Möglichkeit, wie ich den Vertrag mit dir begleichen könnte?"~ */ GOTO 25
  IF ~~ THEN REPLY #13495 /* ~Bluffen: "Ich schlage vor, du gibst mir den Vertrag jetzt gleich, oder ich schlachte dich ab, wo du jetzt stehst."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Mortai_1","GLOBALLaw",-1)
~ GOTO 26
  IF ~~ THEN REPLY #13496 /* ~Wahrheit: "Ich schlage vor, du gibst mir den Vertrag jetzt gleich, oder ich schlachte dich ab, wo du jetzt stehst."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Mortai_1","GLOBALGood",-1)
~ GOTO 26
  IF ~~ THEN REPLY #13497 /* ~"Naja, nichts für ungut. Ich hätte noch ein paar Fragen..."~ */ GOTO 9
  IF ~~ THEN REPLY #13498 /* ~"Ich war nur neugierig. Leb wohl."~ */ GOTO 56
END

IF ~~ THEN BEGIN 25 // from: 24.0
  SAY #13373 /* ~Mortai schüttelt den Kopf. "Das ist eine Frage des Gesetzes." Er tippt sich ans Kinn und schnalzt mit der Zunge. "Bei einem anderen Mann würde ich mich ja vielleicht von dem Vertrag trennen, aber bei dir... so, wie du aussiehst, wird er bald fällig."~ */
  IF ~~ THEN REPLY #13499 /* ~Täuschung: "Wie wär's zum Beispiel damit: Gib mir sofort meinen Vertrag, oder ich mach hier auf der Stelle Hackfleisch aus dir."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Mortai_1","GLOBALLaw",-1)
~ GOTO 26
  IF ~~ THEN REPLY #13500 /* ~Wahrheit: "Wie wär's damit: Gib mir sofort meinen Vertrag, oder ich mach auf der Stelle Hackfleisch aus dir."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Mortai_1","GLOBALGood",-1)
~ GOTO 26
  IF ~~ THEN REPLY #13501 /* ~"Also gut. Ich hätte noch ein paar Fragen..."~ */ GOTO 9
  IF ~~ THEN REPLY #13502 /* ~"Dann leb wohl."~ */ GOTO 56
END

IF ~~ THEN BEGIN 26 // from: 24.1 24.2 25.0 25.1
  SAY #13374 /* ~Mortai erstarrt und sieht dich abschätzend an. "Wenn du hier drin Waffen ziehst, überlebst nicht lange genug, um sie zu benutzen. Hier drin wimmelt's von Wachen, die du nicht einmal *sehen* kannst. Und selbst, wenn du davonkommst, sorgen die Staubmenschen schon dafür, daß du zur Rechenschaft gezogen wirst. Halt' dich in meiner Gegenwart mit solchen dummen Drohungen lieber zurück."~ */
  IF ~~ THEN REPLY #13503 /* ~"Ich riskier's... stirb, du Hund."~ */ DO ~Enemy()
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
~ EXIT
  IF ~~ THEN REPLY #13504 /* ~"Nun, dann vergiß es. Ich hätte noch ein paar Fragen..."~ */ GOTO 9
  IF ~~ THEN REPLY #13505 /* ~"Nun, nichts für ungut. Leb wohl."~ */ GOTO 56
END

IF ~~ THEN BEGIN 27 // from: 9.6
  SAY #13375 /* ~"Natürlich. Über welche Gäste willst du denn etwas erfahren?"~ */
  IF ~  GlobalGT("Await","GLOBAL",0)
~ THEN REPLY #13506 /* ~"Was kannst du mir über Den-Tod-Erwartend erzählen?"~ */ GOTO 28
  IF ~  GlobalGT("Sere","GLOBAL",0)
~ THEN REPLY #13507 /* ~"Was kannst du mir über Sere erzählen?"~ */ GOTO 31
  IF ~  GlobalGT("Emoric","GLOBAL",0)
Global("Mortai_Contract","GLOBAL",0)
~ THEN REPLY #13508 /* ~"Kannst du mir etwas über den Eingeweihten Emoric erzählen?"~ */ GOTO 32
  IF ~  GlobalGT("Emoric","GLOBAL",0)
Global("Mortai_Contract","GLOBAL",1)
~ THEN REPLY #13509 /* ~"Kannst du mir etwas über den Eingeweihten Emoric erzählen?"~ */ GOTO 33
  IF ~  GlobalGT("Coppereyes","GLOBAL",0)
~ THEN REPLY #13510 /* ~" Was kannst du mir über Altes Kupferauge erzählen?"~ */ GOTO 36
  IF ~  Global("Sere","GLOBAL",0)
Global("Await","GLOBAL",0)
Global("Emoric","GLOBAL",0)
Global("Coppereyes","GLOBAL",0)
~ THEN REPLY #13511 /* ~"Ach, es ist eigentlich nicht so wichtig - ich kenne keinen ihrer Namen. Ich hätte statt dessen noch ein paar Fragen..."~ */ GOTO 9
  IF ~  GlobalGT("Sere","GLOBAL",0)
~ THEN REPLY #13512 /* ~"Ach, es ist eigentlich nicht so wichtig. Ich hätte statt dessen noch ein paar Fragen..."~ */ GOTO 9
  IF ~  Global("Sere","GLOBAL",0)
GlobalGT("Await","GLOBAL",0)
~ THEN REPLY #13513 /* ~"Ach, es ist eigentlich nicht so wichtig. Ich hätte statt dessen noch ein paar Fragen..."~ */ GOTO 9
  IF ~  Global("Sere","GLOBAL",0)
Global("Await","GLOBAL",0)
GlobalGT("Emoric","GLOBAL",0)
~ THEN REPLY #13653 /* ~"Ach, es ist eigentlich nicht so wichtig. Ich hätte statt dessen noch ein paar Fragen..."~ */ GOTO 9
  IF ~  Global("Sere","GLOBAL",0)
Global("Await","GLOBAL",0)
Global("Emoric","GLOBAL",0)
GlobalGT("Coppereyes","GLOBAL",0)
~ THEN REPLY #13654 /* ~"Ach, es ist eigentlich nicht so wichtig. Ich hätte statt dessen noch ein paar Fragen..."~ */ GOTO 9
  IF ~~ THEN REPLY #13655 /* ~"Leb wohl."~ */ GOTO 56
END

IF ~~ THEN BEGIN 28 // from: 27.0
  SAY #13376 /* ~"Ein sehr, sehr schwieriger Neuling." Mortai schnalzt mißbilligend mit der Zunge. "Er sucht den Tod mit einer Leidenschaft, die für einen Staubmenschen *äußerst* unpassend ist."~ */
  IF ~~ THEN REPLY #13514 /* ~"Dürfen Staubmenschen keine Leidenschaften haben?"~ */ GOTO 29
  IF ~~ THEN REPLY #13515 /* ~"Ich hätte da noch ein paar Fragen."~ */ GOTO 9
  IF ~~ THEN REPLY #13516 /* ~"Leb wohl."~ */ GOTO 56
END

IF ~~ THEN BEGIN 29 // from: 13.2 28.0 31.0 33.0 36.0 37.0 40.0 63.2
  SAY #13377 /* ~"Oh weh, nein." Mortai runzelt die Stirn. "Zu viel Leidenschaft, zu viel Gefühl hindert einen daran, den Wahren Tod zu erlangen. Leidenschaften widersprechen der Philosophie unseres Bundes."~ */
  IF ~  GlobalLT("Know_Dustmen","GLOBAL",1)
~ THEN REPLY #13517 /* ~"Den Wahren Tod?"
~ */ DO ~SetGlobal("Know_Dustmen","GLOBAL",1)
~ GOTO 30
  IF ~  GlobalGT("Know_Dustmen","GLOBAL",0)
~ THEN REPLY #13518 /* ~"Wahrer Tod?"~ */ GOTO 30
  IF ~~ THEN REPLY #13519 /* ~"Ich hätte noch ein paar andere Fragen..."~ */ GOTO 9
  IF ~~ THEN REPLY #13520 /* ~"Auf bald."~ */ GOTO 56
END

IF ~~ THEN BEGIN 30 // from: 29.0 29.1
  SAY #13378 /* ~"Der Wahre Tod ist der Status der friedlichen Vergessenheit, den alle Staubmenschen anstreben... und den zu erreichen sie anderen helfen." Er schnalzt mißbilligend mit der Zunge. "Alles, was die Seele an dieses Leben bindet, ist aus unserem Bund verbannt, seien diese Bindungen Besitztum oder Gefühle. Siehst du... Leidenschaften sind sozusagen Anker der Seele und hindern sie daran, den Wahren Tod zu erlangen..." Er schüttelt seinen Kopf. "Sehr schlecht, sehr schlecht."~ */
  IF ~~ THEN REPLY #13521 /* ~"Ich hätte da noch ein paar Fragen."~ */ GOTO 9
  IF ~~ THEN REPLY #13522 /* ~"Verstehe. Sehr aufschlußreich. Leb wohl."~ */ GOTO 56
END

IF ~~ THEN BEGIN 31 // from: 27.1
  SAY #13379 /* ~"Eine schwierige Eingeweihte. Ich hab' gehört, daß sie sich vor nicht allzu langer Zeit eine Krankheit zugezogen hat, die sie... verändert hat. Sie scheint jetzt bitter und zornig, und sie spricht vom Glauben der Staubmenschen nicht mehr mit der gleichen Überzeugung wie früher. Ich fürchte, die Bitterkeit ist eine Leidenschaft, die ihre Position im Bund in Gefahr bringen könnte."~ */
  IF ~~ THEN REPLY #13523 /* ~"Dürfen Staubmenschen keine Leidenschaften haben?"~ */ GOTO 29
  IF ~~ THEN REPLY #13524 /* ~"Ich hätte da noch ein paar Fragen."~ */ GOTO 9
  IF ~~ THEN REPLY #13525 /* ~"Leb wohl."~ */ GOTO 56
END

IF ~~ THEN BEGIN 32 // from: 11.0 27.2
  SAY #13380 /* ~"Ein respektierter Eingeweihter des Vierten Kreises. Ein *sehr* weiser Mann." Mortai betrachtet dich mit leicht besorgtem Blick. "Was hast du denn mit ihm zu schaffen, wenn ich das mal fragen darf? Vielleicht kann ich dir ja statt dessen helfen."~ */
  IF ~~ THEN REPLY #13526 /* ~"Also, ich hatte überlegt, ob ich einen Vertrag mit Emoric abschließen soll."~ */ GOTO 34
  IF ~~ THEN REPLY #13527 /* ~Lüge: "Also, ich hatte überlegt, ob ich einen Vertrag mit Emoric abschließen soll."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Mortai_2","GLOBALLaw",-1)
~ GOTO 34
  IF ~~ THEN REPLY #13528 /* ~"Das glaub ich nicht. Ich hätte aber noch ein paar Fragen..."~ */ GOTO 9
  IF ~~ THEN REPLY #13529 /* ~"Nein, ich glaub nicht, daß du mir helfen kannst. Leb wohl, Mortai."~ */ GOTO 8
END

IF ~~ THEN BEGIN 33 // from: 11.1 27.3
  SAY #13381 /* ~"Ein respektierter Eingeweihter des Vierten Kreises. Ein *sehr* weiser Mann. Er hat sich in diesem Leben von allen Bindungen und Leidenschaften befreit..." Er nickt zustimmend. ~ */
  IF ~~ THEN REPLY #13530 /* ~"Dürfen Staubmenschen keine Leidenschaften haben?"~ */ GOTO 29
  IF ~~ THEN REPLY #13531 /* ~"Verstehe. Ich hätte noch ein paar Fragen..."~ */ GOTO 9
  IF ~~ THEN REPLY #13532 /* ~"Vielen Dank für die Informationen. Leb wohl, Mortai."~ */ GOTO 56
END

IF ~~ THEN BEGIN 34 // from: 32.0 32.1
  SAY #13382 /* ~Mortai wirkt sichtbar verzweifelt. "Nein, nein, guter Herr! Er wird Euch nicht einmal den halben Preis wie ich für einen solchen Vertrag anbieten, es wäre ein... ein... ein *Taschengeld* im Vergleich zu dem, was ich Euch geben kann! Überlegt Euch das gut, bevor Ihr eine vorschnelle Entscheidung trefft!"~ */
  IF ~  Global("Mortai_Blackmail","GLOBAL",0)
~ THEN REPLY #13533 /* ~"Wieviel mehr bietest du?"~ */ DO ~SetGlobal("Mortai_Blackmail","GLOBAL",1)
~ GOTO 35
  IF ~~ THEN REPLY #13534 /* ~"Ich denk drüber nach. Ich hätte noch ein paar Fragen..."~ */ GOTO 9
  IF ~~ THEN REPLY #13535 /* ~"Ich glaube nicht, daß du mir helfen kannst. Leb wohl."~ */ GOTO 8
END

IF ~~ THEN BEGIN 35 // from: 34.0
  SAY #13383 /* ~"Ich..." Mortai schnalzt mit der Zunge. "Ich biete Euch fünfundsiebzig... einhundert Kupfermünzen, Herr! Viel, viel mehr als jeder andere Staubmensch Euch jemals bieten wird."~ */
  IF ~~ THEN REPLY #13536 /* ~"In Ordnung, ich unterschreib deinen Vertrag."~ */ GOTO 12
  IF ~~ THEN REPLY #13537 /* ~"Ich denk drüber nach. Ich hätte noch ein paar Fragen..."~ */ GOTO 9
  IF ~~ THEN REPLY #13538 /* ~"Ich glaube nicht, daß du mir helfen kannst. Leb wohl."~ */ GOTO 8
END

IF ~~ THEN BEGIN 36 // from: 27.4
  SAY #13384 /* ~Mortais Augen werden kalt. "Der mir den Augen aus Kupfer? *Seine* Augen verraten genug über sein Ziel hier." Er zeichnet einen Halbkreis über seinem Herzen. "Er mag vielleicht ein Mitglied der Staubmenschen sein, aber ich würde *nie* einen Todesvertrag mit ihm unterzeichnen. Kupfer ist seine Seele, und für mich verrät das eine übermäßige Leidenschaft für Geld. Er ist nur dem Namen nach ein Staubmensch."~ */
  IF ~~ THEN REPLY #13539 /* ~"Dürfen Staubmenschen keine Leidenschaften haben?"~ */ GOTO 29
  IF ~  Global("Mortai_Contract","GLOBAL",1)
~ THEN REPLY #13540 /* ~"Oh, er schließt auch Verträge ab?"~ */ GOTO 37
  IF ~  Global("Mortai_Contract","GLOBAL",0)
~ THEN REPLY #13541 /* ~"Du meinst, ich könnte einen Todesvertrag mit ihm abschließen?"~ */ GOTO 40
  IF ~~ THEN REPLY #13542 /* ~"Verstehe. Ich hätte noch ein paar Fragen..."~ */ GOTO 9
  IF ~~ THEN REPLY #13545 /* ~"Vielen Dank für die Informationen. Leb wohl, Mortai."~ */ GOTO 56
END

IF ~~ THEN BEGIN 37 // from: 36.1
  SAY #13385 /* ~Mortai schnalzt mißbilligend mit der Zunge. "Ja, aber es ist viel besser, daß du hier bei mir unterzeichnet hast als bei diesem raffgierigen Monster. Raffgier ist eine Leidenschaft, die tötet, weißt du, und für einen Staubmenschen ist sie doppelt tödlich."~ */
  IF ~~ THEN REPLY #13543 /* ~"Dürfen Staubmenschen keine Leidenschaften haben?"~ */ GOTO 29
  IF ~~ THEN REPLY #13546 /* ~"Was würde passieren, wenn ich einen Vertrag mit ihm abschließen würde?~ */ GOTO 38
  IF ~~ THEN REPLY #13547 /* ~"Verstehe. Ich hätte noch ein paar Fragen..."~ */ GOTO 9
  IF ~~ THEN REPLY #13548 /* ~"Vielen Dank für die Informationen. Leb wohl, Mortai."~ */ GOTO 56
END

IF ~~ THEN BEGIN 38 // from: 37.1
  SAY #13386 /* ~Mortai fixiert dich mit einem kalten, starren Blick. "Dann würdest du dich starfbar machen. Ich würde dafür sorgen, daß du festgenommen wirst, und dann würden die Staubmenschen, sofern das Gesetz es erlaubt, deinen Todesvertrag viel *eher* eintreiben, als du vorhattest."~ */
  IF ~  Global("Coppereyes_Contract","GLOBAL",1)
~ THEN REPLY #13544 /* ~"Tja, ich hab' schon einen bei ihm unterzeichnet. Was tust du nun?"~ */ GOTO 39
  IF ~~ THEN REPLY #13549 /* ~"Verstehe. Ich hätte noch ein paar Fragen..."~ */ GOTO 9
  IF ~~ THEN REPLY #13550 /* ~"Vielen Dank für die Informationen. Leb wohl, Mortai."~ */ GOTO 56
END

IF ~~ THEN BEGIN 39 // from: 38.0 50.0 52.0
  SAY #13387 /* ~Mortais Gesicht erblaßt... du hättest das bei einem Staubmenschen nicht für möglich gehalten. Er zischt einen Moment lang, als ob er sich nicht sicher ist, was er tun soll. "Du..." Er dreht sich plötzlich um und klatscht dreimal in die Hände, und ein heftiger Windstoß fegt durch die Bar...~ */
  IF ~~ THEN REPLY #13551 /* ~"Also gut. Stirb, du Hund..."~ */ DO ~Help()
Enemy()
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
~ EXIT
END

IF ~~ THEN BEGIN 40 // from: 36.2
  SAY #13388 /* ~"Ja, aber es ist viel besser, wenn Ihr bei mir unterzeichnet als bei diesem raffgierigen Monster." Mortai schnalzt mißbilligend mit der Zunge. "Raffgier ist eine Leidenschaft, die tötet, wißt Ihr, und für einen Staubmenschen ist sie doppelt tödlich. Macht Euch nicht erst die Mühe, mit Kupferauge zu sprechen, mein guter Herr... handelt statt dessen lieber mit mir."~ */
  IF ~~ THEN REPLY #13552 /* ~"Dürfen Staubmenschen keine Leidenschaften haben?"~ */ GOTO 29
  IF ~~ THEN REPLY #13553 /* ~"Verstehe. Ich hätte allerdings noch ein paar Fragen..."~ */ GOTO 9
  IF ~~ THEN REPLY #13554 /* ~"Ich denke nicht, daß du mir helfen kannst. Leb wohl, Mortai."~ */ GOTO 8
END

IF ~~ THEN BEGIN 41 // from: 42.1 55.1
  SAY #13389 /* ~Mortai runzelt die Stirn und sieht dann in den Falten seiner Roben nach. "Ich hab' in der Regel keine Dokumente bei mir, aber vielleicht..." Mortai zieht einen Stapel Papiere hervor und beginnt, durch die Dokumente zu blättern. "Nein, ich hab' ihn nicht bei mir. Möchtest du, daß ich ihn aus einem der Hinterzimmer hole?"
~ */
  IF ~~ THEN REPLY #13555 /* ~"Wenn du das kannst, würde ich ihn gern sehen."~ */ GOTO 64
  IF ~~ THEN REPLY #13556 /* ~"Nicht ganz. Ich würde diesen Vertrag gern lösen."~ */ GOTO 43
  IF ~~ THEN REPLY #13557 /* ~"Du bewahrst Verträge hier auf?"~ */ GOTO 55
  IF ~~ THEN REPLY #13558 /* ~"Nein, im Moment nicht. Ich hätte statt dessen ein paar Fragen..."~ */ GOTO 9
  IF ~~ THEN REPLY #13559 /* ~"Ich will nur überprüfen, ob du derjenige bist, mit dem er den Vertrag abgeschlossen hat. Nichts für ungut."~ */ GOTO 56
END

IF ~~ THEN BEGIN 42 // from: 2.2 9.4 61.2
  SAY #13390 /* ~Mortai runzelt die Stirn, Er sieht verwirrt aus. "Vielleicht..." Er denkt einen Moment lang nach. "Ich erinnere mich aber nicht an den Namen."~ */
  IF ~~ THEN REPLY #13560 /* ~"Ich würde gern diesen Vertrag begleichen."~ */ GOTO 43
  IF ~  Global("Mortai_Fetch","GLOBAL",0)
~ THEN REPLY #13561 /* ~"Hast du den Vertrag bei dir?"~ */ GOTO 41
  IF ~  Global("Mortai_Fetch","GLOBAL",1)
HasItem("Acontrac","Mortai")
~ THEN REPLY #13562 /* ~"Kann ich Angyars Vertrag noch mal sehen?"~ */ GOTO 54
  IF ~~ THEN REPLY #13563 /* ~"Dann vergiß es. Ich hätte aber noch ein paar Fragen..."~ */ GOTO 9
  IF ~~ THEN REPLY #13564 /* ~"Ich war nur neugierig. Leb wohl."~ */ GOTO 56
END

IF ~~ THEN BEGIN 43 // from: 41.1 42.0 55.0 66.0
  SAY #13391 /* ~Mortai sieht dich zweifelnd an. "Ich fürchte, das ist unmöglich. Der Vertrag ist unterschrieben, abgeschlossen und rechtlich bindend."~ */
  IF ~~ THEN REPLY #13565 /* ~"Der Vertrag bringt das Leben des Mannes völlig durcheinander."~ */ GOTO 44
  IF ~  GlobalGT("Know_Dustmen","GLOBAL",0)
~ THEN REPLY #13566 /* ~"Dieser Vertrag bringt das Leben des Mannes völlig durcheinander und beschert ihm Leid... es ist sogar möglich, daß der Mensch durch all diese Gefühle, die ihm die Seele zermartern, nicht den Wahren Tod erlangen kann."~ */ GOTO 45
  IF ~~ THEN REPLY #13567 /* ~"Gibt es irgendeine Möglichkeit, wie ich den Vertrag mit dir begleichen könnte?"~ */ GOTO 49
  IF ~~ THEN REPLY #13568 /* ~Täuschung: "Ich schlage vor, daß du sofort meinen Vertrag rausrückst, sonst mach ich auf der Stelle Hackfleisch aus dir."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Mortai_1","GLOBALLaw",-1)
~ GOTO 52
  IF ~~ THEN REPLY #13569 /* ~Wahrheit: " Ich schlage vor, daß du sofort meinen Vertrag rausrückst, sonst mach ich auf der Stelle Hackfleisch aus dir."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Mortai_1","GLOBALGood",-1)
~ GOTO 52
  IF ~~ THEN REPLY #13570 /* ~"Dann vergiß es. Ich hätte aber noch ein paar Fragen..."~ */ GOTO 9
  IF ~~ THEN REPLY #13571 /* ~"Ich war nur neugierig. Leb wohl."~ */ GOTO 56
END

IF ~~ THEN BEGIN 44 // from: 43.0 49.2 52.1
  SAY #13392 /* ~Mortai schüttelt den Kopf. "Das ist wirklich ein Unglück... aber das ist eine Frage des Gesetzes, nicht eine Frage des Herzens."~ */
  IF ~  GlobalGT("Know_Dustmen","GLOBAL",0)
~ THEN REPLY #13572 /* ~"Dieser Vertrag beschert dem Menschen Leid... es ist sogar möglich, daß der Mensch aufgrund all der Gefühle, die ihm die Seele zermartern, nicht den Wahren Tod erlangen kann."~ */ GOTO 45
  IF ~  Global("Know_Dustmen","GLOBAL",0)
~ THEN REPLY #13573 /* ~"Gibt es irgendeine Möglichkeit, wie ich den Vertrag mit dir begleichen könnte?"~ */ JOURNAL #64581 /* ~Ich habe mit Mortai Grabesende über Angyars Todesvertrag gesprochen, und er war unwillig, ihn zu begleichen. Ich weiß nicht, wie ich ihn sonst überreden soll, aber es muß einen Weg geben... Allerdings ist mir eins aufgefallen, nämlich, daß sich Mortai anders verhält als andere Staubmenschen, die ich in Sigil gesehen habe. Wenn ich mehr über den Glauben der Staubmenschen von ihm oder anderen Leuten in der Bar herausfinden kann, finde ich vielleicht einen Weg, Mortai den Vertrag abzunehmen, indem ich seine eigene Philosophie gegen ihn anwende.~ */ GOTO 49
  IF ~  GlobalGT("Know_Dustmen","GLOBAL",0)
~ THEN REPLY #64585 /* ~"Gibt es irgendeinen Weg, den Vertrag mit dir zu erfüllen?"~ */ GOTO 49
  IF ~~ THEN REPLY #13574 /* ~Täuschung: "Ich schlage vor, daß du sofort meinen Vertrag rausrückst, sonst mach ich auf der Stelle Hackfleisch aus dir."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Mortai_1","GLOBALLaw",-1)
~ GOTO 52
  IF ~~ THEN REPLY #13575 /* ~Wahrheit: " Ich schlage vor, daß du sofort meinen Vertrag rausrückst, sonst mach ich auf der Stelle Hackfleisch aus dir."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Mortai_1","GLOBALGood",-1)
~ GOTO 52
  IF ~~ THEN REPLY #13576 /* ~"Dann vergiß es. Ich hätte aber noch ein paar Fragen..."~ */ GOTO 9
  IF ~~ THEN REPLY #13577 /* ~"Ich war nur neugierig. Leb wohl."~ */ GOTO 56
END

IF ~~ THEN BEGIN 45 // from: 43.1 44.0 49.3 52.2
  SAY #13393 /* ~Mortai kaut einen Moment lang darauf herum; sieht so aus, als ob du ihn in die Ecke gedrängt hast. "Ich kann nicht. Es ist eine Frage des Gesetzes, mein Freund... außerdem liegt die Last auf den Schultern des Unterzeichneten, seine eigenen Gefühle zu überwinden, um den Wahren Tod zu erreichen. Ich kann dir nicht h-"~ */
  IF ~~ THEN REPLY #13578 /* ~"Was du also sagst, ist, daß du ihm wegen eines Stückchen Pergaments den Wahren Tod verweigerst?"
~ */ GOTO 46
  IF ~~ THEN REPLY #13579 /* ~"Gibt es irgendeine Möglichkeit, wie ich den Vertrag mit dir begleichen könnte?"~ */ GOTO 49
  IF ~~ THEN REPLY #13580 /* ~Täuschung: "Ich schlage vor, daß du sofort meinen Vertrag rausrückst, sonst mach ich auf der Stelle Hackfleisch aus dir."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Mortai_1","GLOBALLaw",-1)
~ GOTO 52
  IF ~~ THEN REPLY #13581 /* ~Wahrheit: " Ich schlage vor, daß du sofort meinen Vertrag rausrückst, sonst mach ich auf der Stelle Hackfleisch aus dir."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Mortai_1","GLOBALGood",-1)
~ GOTO 52
  IF ~~ THEN REPLY #13582 /* ~"Dann vergiß es. Ich hätte aber noch ein paar Fragen..."~ */ GOTO 9
  IF ~~ THEN REPLY #13583 /* ~"Ich war nur neugierig. Leb wohl."~ */ GOTO 56
END

IF ~~ THEN BEGIN 46 // from: 45.0
  SAY #13394 /* ~Mortai seufzt und hält seine Hände hoch, als ob er dich beschwichtigen will. "Sieh mal, es ist doch *überhaupt* nicht, wie du es hier darstellst..."~ */
  IF ~  Global("Mortai_Fetch","GLOBAL",0)
~ THEN REPLY #13584 /* ~"Du verachtest ganz eindeutig die Philosophie der Staubmenschen, wenn du die Seele eines Menschen wegen eines Stücks Papier verdammst. Wissen die anderen Mitglieder deines Bundes von deinem Verhalten? Wenn nicht, werden sie es bald erfahren."~ */ GOTO 47
  IF ~  Global("Mortai_Fetch","GLOBAL",1)
HasItem("Acontrac","Mortai")
~ THEN REPLY #13585 /* ~"Du verachtest ganz eindeutig die Philosophie der Staubmenschen, wenn du die Seele eines Menschen wegen eines Stücks Papier verdammst. Wissen die anderen Mitglieder deines Bundes von deinem Verhalten? Wenn nicht, werden sie es bald erfahren."~ */ GOTO 51
  IF ~~ THEN REPLY #13586 /* ~"Gibt es irgendeine Möglichkeit, wie ich den Vertrag mit dir begleichen könnte?"~ */ GOTO 49
  IF ~~ THEN REPLY #13587 /* ~Täuschung: "Ich schlage vor, daß du sofort meinen Vertrag rausrückst, sonst mach ich auf der Stelle Hackfleisch aus dir."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Mortai_1","GLOBALLaw",-1)
~ GOTO 52
  IF ~~ THEN REPLY #13588 /* ~Wahrheit: " Ich schlage vor, daß du sofort meinen Vertrag rausrückst, sonst mach ich auf der Stelle Hackfleisch aus dir."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Mortai_1","GLOBALGood",-1)
~ GOTO 52
  IF ~~ THEN REPLY #13589 /* ~"Dann vergiß es. Ich hätte aber noch ein paar Fragen..."~ */ GOTO 9
  IF ~~ THEN REPLY #13590 /* ~"Ich war nur neugierig. Leb wohl."~ */ GOTO 56
END

IF ~~ THEN BEGIN 47 // from: 46.0
  SAY #13395 /* ~Mortai funkelt dich einen Moment lang an, öffnet seinen Mund, schließt ihn, öffnet ihn dann wieder. "Bei den neun Höllen... warte hier." Er senkt seine Stimme zu einem Flüstern. "Und behalt deine Knochenschüssel dicht." Er sieht dich böse an und stapft davon.~ */
  IF ~~ THEN REPLY #13591 /* ~Warte...~ */ DO ~SetGlobal("Mortai_Fetch","GLOBAL",1)
FadeToColor([20.0],0)
Wait(3)
FadeFromColor([20.0],0)
AddexperienceParty(500)
~ GOTO 48
END

IF ~~ THEN BEGIN 48 // from: 47.0
  SAY #13396 /* ~Einige Sekunden später kommt er zurück. Er hält ein staubiges Stück Pergament, das er dir gibt. "Hier!" Er schnüffelt verächtlich. "Alles für den Seelenfrieden eines Mannes... und jetzt hau ab und geh mir nicht noch weiter mit deinen Predigten auf die Nerven!"~ */
  IF ~~ THEN REPLY #13592 /* ~"Ich werde gehen... für's erste. Leb wohl, Mortai."~ */ DO ~GiveItemCreate("Acontrac",Protagonist,1,0,0)
SetGlobal("Mortai","GLOBAL",2)
~ EXIT
END

IF ~~ THEN BEGIN 49 // from: 43.2 44.1 44.2 45.1 46.2 52.3
  SAY #13397 /* ~Mortai schüttelt den Kopf. "Das ist eine Frage des Gesetzes, da gibt es nichts zu diskutieren."~ */
  IF ~~ THEN REPLY #13593 /* ~Täuschung: "Wie wär's damit: Gib mir sofort Angyars Vertrag, oder ich mach dich auf der Stelle kalt."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Mortai_1","GLOBALLaw",-1)
~ GOTO 52
  IF ~~ THEN REPLY #13594 /* ~Wahrheit: "Wie wär's damit: Gib mir Angyars Vertrag, oder ich mach auf der Stelle Hackfleisch aus dir."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Mortai_1","GLOBALGood",-1)
~ GOTO 52
  IF ~~ THEN REPLY #13595 /* ~"Aber der Vertrag bringt das Leben des Mannes völlig durcheinander."~ */ GOTO 44
  IF ~  GlobalGT("Know_Dustmen","GLOBAL",0)
~ THEN REPLY #13596 /* ~"Aber der Vertrag bringt das Leben des Mannes völlig durcheinander und beschert ihm Leid... es ist sogar möglich, daß der Mensch aufgrund all dieser Gefühle, die ihm die Seele zermartern, nicht den Wahren Tod erlangen kann."~ */ GOTO 45
  IF ~~ THEN REPLY #13597 /* ~"Also gut. Ich hätte noch ein paar Fragen..."~ */ GOTO 9
  IF ~~ THEN REPLY #13598 /* ~"Dann leb wohl."~ */ GOTO 56
END

IF ~~ THEN BEGIN 50 // from:
  SAY #13398 /* ~Mortai erstarrt und sieht dich abschätzend an. "Wenn du den Vertrag nimmst, kommst du hier nicht lebend raus. Hier drin wimmelt's von Wachen, die du nicht einmal *sehen* kannst. Und selbst, wenn du davonkommst, sorgen die Staubmenschen schon dafür, daß du zur Rechenschaft gezogen wirst. Halt' dich also in meiner Gegenwart mit solchen dummen Drohungen lieber zurück."~ */
  IF ~~ THEN REPLY #13599 /* ~"Ich riskier's. Versuch nur, mich aufzuhalten."~ */ DO ~GiveItem("Acontrac",Protagonist)
~ GOTO 39
  IF ~~ THEN REPLY #13600 /* ~Gib Mortai den Vertrag zurück.~ */ GOTO 66
END

IF ~~ THEN BEGIN 51 // from: 46.1
  SAY #13399 /* ~Mortai funkelt dich einen Moment lang an, öffnet seinen Mund, schließt ihn, öffnet ihn dann wieder. "Bei den neun Höllen..." Er greift in seine Roben und wirft dir den Vertrag hin. "Hier!" Er schnüffelt verächtlich. "Alles für den Seelenfrieden eines Mannes... und jetzt verschwinde."~ */
  IF ~~ THEN REPLY #13601 /* ~"Ich werde gehen... für's erste. Leb wohl, Mortai."~ */ DO ~SetGlobal("Mortai","GLOBAL",2)
GiveItem("Acontrac",Protagonist)
AddexperienceParty(500)
~ EXIT
END

IF ~~ THEN BEGIN 52 // from: 43.3 43.4 44.3 44.4 45.2 45.3 46.3 46.4 49.0 49.1
  SAY #13400 /* ~Mortai erstarrt und sieht dich abschätzend an. "Wenn du hier drin Waffen ziehst, überlebst du nicht lange genug, um sie zu benutzen. Hier drin wimmelt's von Wachen, die du nicht einmal *sehen* kannst. Und selbst, wenn du davonkommst, sorgen die Staubmenschen schon dafür, daß du zur Rechenschaft gezogen wirst. Halte dich in meiner Gegenwart mit solchen dummen Drohungen lieber zurück."~ */
  IF ~~ THEN REPLY #13602 /* ~"Ich riskier's... stirb, du Hund."~ */ GOTO 39
  IF ~~ THEN REPLY #13603 /* ~"Der Vertrag bringt das Leben des Mannes völlig durcheinander."~ */ GOTO 44
  IF ~  GlobalGT("Know_Dustmen","GLOBAL",0)
~ THEN REPLY #13604 /* ~"Dieser Vertrag bringt das Leben des Mannes völlig durcheinander und beschert ihm Leid... es ist sogar möglich, daß der Mensch durch all diese Gefühle, die ihm die Seele zermartern, nicht den Wahren Tod erlangen kann."~ */ GOTO 45
  IF ~~ THEN REPLY #13605 /* ~"Gibt es irgendeine andere Möglichkeit, wie dieser Vertrag beglichen werden kann?"~ */ GOTO 49
  IF ~~ THEN REPLY #13606 /* ~"Nun, dann vergiß es. Ich hätte noch ein paar Fragen..."~ */ GOTO 9
  IF ~~ THEN REPLY #13607 /* ~"Na, ist auch egal."~ */ GOTO 56
END

IF ~~ THEN BEGIN 53 // from:
  SAY #13401 /* ~(NULL NODE)~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 54 // from: 9.5 42.2 55.2 61.3 66.1
  SAY #13402 /* ~Mortai greift in die Falten seiner Roben und gibt dir den Vertrag. "Hier ist er, mein Herr... Angyar ist mit einer einfachen Unterschrift sehr reich geworden." Du wirfst einen Blick auf den Vertrag; er sieht echt aus... und sehr offiziell. ~ */
  IF ~  CheckStatLT(Protagonist,14,DEX)
CheckStatLT(Protagonist,36,PICKPOCKET)
PartyHasItem("FalseCon")
~ THEN REPLY #13608 /* ~Gib vor, den Vertrag zu prüfen und vertausch dabei das Pergament mit dem gefälschten Vertrag. Gib diesen dann Mortai zurück.~ */ GOTO 67
  IF ~  CheckStatGT(Protagonist,13,DEX)
PartyHasItem("FalseCon")
~ THEN REPLY #13609 /* ~Gib vor, den Vertrag zu prüfen und vertausch dabei das Pergament mit dem gefälschten Vertrag. Gib diesen dann Mortai zurück.~ */ DO ~GiveItem("Acontrac",Protagonist)
~ GOTO 68
  IF ~  CheckStatLT(Protagonist,14,DEX)
CheckStatGT(Protagonist,35,PICKPOCKET)
PartyHasItem("FalseCon")
~ THEN REPLY #13610 /* ~Gib vor, den Vertrag zu prüfen und vertausch dabei das Pergament mit dem gefälschten Vertrag. Gib diesen dann Mortai zurück.~ */ DO ~GiveItem("Acontrac",Protagonist)
~ GOTO 68
  IF ~~ THEN REPLY #13611 /* ~"Nun gut... Es scheint alles in Ordnung zu sein."~ */ GOTO 66
END

IF ~~ THEN BEGIN 55 // from: 41.2
  SAY #13403 /* ~"Bis sie in die Leichenhalle gebracht werden, ja. Ich habe in meinem Leben viele Verträge unterschrieben, viele Verträge... einschließlich meines eigenen. So ein Ärger, sie alle in die Leichenhalle zu zerren."~ */
  IF ~~ THEN REPLY #13613 /* ~"Ich würde gern den Vertrag, den du mit Angyar geschlossen hast, begleichen."
~ */ GOTO 43
  IF ~  Global("Mortai_Fetch","GLOBAL",0)
~ THEN REPLY #13614 /* ~"Hast du den Vertrag, den du mit Angyar abgeschlossen hast, bei dir?"~ */ GOTO 41
  IF ~  Global("Mortai_Fetch","GLOBAL",1)
HasItem("Acontrac","Mortai")
~ THEN REPLY #13615 /* ~"Kann ich Angyars Vertrag noch mal sehen?"~ */ GOTO 54
  IF ~~ THEN REPLY #13616 /* ~"Dann vergiß es. Ich hätte aber noch ein paar Fragen..."~ */ GOTO 9
  IF ~~ THEN REPLY #13617 /* ~"Ich war nur neugierig. Leb wohl."~ */ GOTO 56
END

IF ~~ THEN BEGIN 56 // from: 9.9 10.3 11.3 22.1 23.1 24.4 25.3 26.2 27.10 28.2 29.3 30.1 31.2 33.2 36.4 37.3 38.2 41.4 42.4 43.6 44.6 45.5 46.6 49.5 52.5 55.4 66.3
  SAY #13404 /* ~Mortai nickt, als du dich umdrehst, um zu gehen. "Hmmmm..." Er hat einen seltsamen Gesichtsausdruck.~ */
  IF ~~ THEN REPLY #13618 /* ~"Stimmt irgendwas nicht?"~ */ GOTO 57
  IF ~~ THEN REPLY #13619 /* ~"Leb wohl, Mortai."~ */ GOTO 59
END

IF ~~ THEN BEGIN 57 // from: 56.0
  SAY #13405 /* ~Mortai runzelt die Stirn. "Vergib mir, ich *muß* das noch mal fragen... bist du sicher, daß wir uns nicht schon einmal getroffen haben?"~ */
  IF ~~ THEN REPLY #13620 /* ~"Möglicherweise. Ich kann mich nicht an dich erinnern."~ */ GOTO 58
  IF ~~ THEN REPLY #13621 /* ~"Nein, das glaub' ich nicht."~ */ GOTO 58
  IF ~~ THEN REPLY #13622 /* ~"Leb wohl, Mortai."~ */ GOTO 59
END

IF ~~ THEN BEGIN 58 // from: 57.0 57.1
  SAY #13406 /* ~"Hmmm." Mortai schüttelt den Kopf. "Tja, macht ja nichts."~ */
  IF ~~ THEN REPLY #13623 /* ~"Leb wohl, Mortai."~ */ GOTO 59
END

IF ~~ THEN BEGIN 59 // from: 56.1 57.2 58.0
  SAY #13407 /* ~"Ja, mach's gut, mach's gut..." Mortai sieht dich prüfend an, als du weggehst, und du hörst ihn leise murmeln: "Irgend etwas an dem..."~ */
  IF ~~ THEN REPLY #13624 /* ~Geh weg.~ */ EXIT
END

IF ~  Global("Mortai","GLOBAL",2)
~ THEN BEGIN 60 // from:
  SAY #13408 /* ~"Ah..." Mortai runzelt die Stirn, als du dich ihm näherst, und schnalzt mit der Zunge. "Du schon wieder... bist du gekommen, um mich noch mehr Verträge im Namen des Bundes der Staubmenschen aufgeben zu lassen?" Er runzelt die Stirn und seufzt dann. "Tja, macht nichts, macht nichts, was vorbei ist, ist vorbei..." Er setzt wieder sein altes Lächeln auf und nickt dir zu. "Was kann ich für dich tun?"~ */
  IF ~~ THEN REPLY #13625 /* ~"Ich hätte da ein paar Fragen..."~ */ DO ~SetGlobal("Mortai","GLOBAL",1)
~ GOTO 9
  IF ~~ THEN REPLY #13626 /* ~"Mach dir nichts draus. Ich muß gehen."~ */ DO ~SetGlobal("Mortai","GLOBAL",1)
~ EXIT
END

IF ~  Global("Mortai","GLOBAL",1)
Global("Mortai_Contract","GLOBAL",0)
~ THEN BEGIN 61 // from:
  SAY #13409 /* ~"Ah, Reisender!" Mortai lächelt, als er dich sieht. "So trifft man sich wieder... und wie kann ich dir an diesem wunderschönen Tag in Sigil helfen?" Er sieht hoffnungsvoll aus. "Gekommen, um den Vertrag zu unterschreiben, vielleicht?"~ */
  IF ~  Global("Mortai_Blackmail","GLOBAL",0)
~ THEN REPLY #13627 /* ~"Vertrag?"~ */ DO ~SetGlobal("Know_Contract","GLOBAL",1)
~ GOTO 3
  IF ~  Global("Mortai_Blackmail","GLOBAL",1)
~ THEN REPLY #13628 /* ~"Vertrag?"~ */ DO ~SetGlobal("Know_Contract","GLOBAL",1)
~ GOTO 4
  IF ~  Global("Angyar_Quest","GLOBAL",2)
Global("Mortai_Fetch","GLOBAL",0)
~ THEN REPLY #13629 /* ~"Bist du derjenige, der den Todesvertrag mit Angyar abgeschlossen hat?"~ */ GOTO 42
  IF ~  Global("Mortai_Fetch","GLOBAL",1)
HasItem("Acontrac","Mortai")
~ THEN REPLY #13630 /* ~"Kann ich mal den Vertrag sehen, den du mit Angyar abgeschlossen hast?"~ */ GOTO 54
  IF ~~ THEN REPLY #13631 /* ~"Nein, ich hätte ein paar Fragen..."~ */ GOTO 9
  IF ~~ THEN REPLY #13632 /* ~"Ich glaube nicht, daß du mir helfen kannst. Ich muß gehen."~ */ GOTO 8
END

IF ~  Global("Mortai","GLOBAL",1)
Global("Mortai_Contract","GLOBAL",1)
~ THEN BEGIN 62 // from:
  SAY #13410 /* ~"Ah, Reisender!" Mortai lächelt, als er dich sieht. "So trifft man sich wieder... und wie kann ich dir an diesem wunderschönen Tag in Sigil helfen?"~ */
  IF ~~ THEN REPLY #13633 /* ~"Ich hätte ein paar Fragen an dich..."~ */ GOTO 9
  IF ~~ THEN REPLY #13634 /* ~"Vergiß es. Ich muß jetzt gehen."~ */ EXIT
END

IF ~~ THEN BEGIN 63 // from: 13.3
  SAY #13411 /* ~"Ich? Erpicht?!" Mortai zieht die Augenbrauen hoch und hüstelt dann höflich. "Mein Herr... wünscht Ihr, den Vertrag zu unterzeichnen, oder nicht? Wenn nicht..."~ */
  IF ~  Global("Memory_Dustman_Contract","GLOBAL",0)
~ THEN REPLY #13635 /* ~"Ich möchte den Vertrag gern unterschreiben."~ */ DO ~SetGlobal("Memory_Dustman_Contract","GLOBAL",0)
GiveExperience(Protagonist,500)
~ GOTO 14
  IF ~  Global("Memory_Dustman_Contract","GLOBAL",1)
~ THEN REPLY #13636 /* ~"Ich möchte den Vertrag gern unterschreiben."~ */ GOTO 21
  IF ~~ THEN REPLY #13637 /* ~"Ist es schlimm, wenn man Gefühle zeigt?"~ */ GOTO 29
  IF ~~ THEN REPLY #13638 /* ~"Es tut mir leid, aber ich möchte den Vertrag nicht unterzeichnen. Ich hätte jedoch noch ein paar Fragen..."~ */ GOTO 9
  IF ~~ THEN REPLY #13639 /* ~"Ich wollte dich nicht beleidigen... aber ich glaube nicht, daß du mir helfen kannst. Leb wohl."~ */ GOTO 8
END

IF ~~ THEN BEGIN 64 // from: 41.0
  SAY #13412 /* ~"Wartet einen Moment..." Er steht vom Tisch auf und geht weg.~ */
  IF ~~ THEN REPLY #13640 /* ~Warte, bis er zurückgekehrt ist...
~ */ DO ~SetGlobal("Mortai_Fetch","GLOBAL",1)
GiveItemCreate("Acontrac",Myself,1,0,0)
FadeToColor([20.0],0)
Wait(3)
FadeFromColor([20.0],0)
~ JOURNAL #64582 /* ~Anscheinend hatte Mortai Angyars Vertrag nicht bei sich. Er mußte ihn erst holen gehen... Aber als er fertig war, hat er ihn nicht zurück ins Hinterzimmer gebracht.~ */ GOTO 69
END

IF ~~ THEN BEGIN 65 // from: 69.0
  SAY #13413 /* ~"Hier ist er, Herr... Angyar... ein sehr düsterer Typ, hat schnell unterschrieben..." Er schnalzt mit der Zunge. "Und ist jetzt ein *viel* reicherer Typ." Du überfliegst den Vertrag; er sieht echt aus... und sehr offiziell. ~ */
  IF ~  CheckStatLT(Protagonist,14,DEX)
CheckStatLT(Protagonist,36,PICKPOCKET)
PartyHasItem("FalseCon")
~ THEN REPLY #13641 /* ~Gib vor, den Vertrag zu prüfen und vertausch dabei das Pergament mit dem gefälschten Vertrag. Gib diesen dann Mortai zurück.~ */ GOTO 67
  IF ~  CheckStatGT(Protagonist,13,DEX)
PartyHasItem("FalseCon")
~ THEN REPLY #13642 /* ~Gib vor, den Vertrag zu prüfen und vertausch dabei das Pergament mit dem gefälschten Vertrag. Gib diesen dann Mortai zurück.~ */ DO ~GiveItem("Acontrac",Protagonist)
~ GOTO 68
  IF ~  CheckStatLT(Protagonist,14,DEX)
CheckStatGT(Protagonist,35,PICKPOCKET)
PartyHasItem("FalseCon")
~ THEN REPLY #13643 /* ~Gib vor, den Vertrag zu prüfen und vertausch dabei das Pergament mit dem gefälschten Vertrag. Gib diesen dann Mortai zurück.~ */ DO ~GiveItem("Acontrac",Protagonist)
~ GOTO 68
  IF ~~ THEN REPLY #13644 /* ~"Nun gut... Es scheint alles in Ordnung zu sein."~ */ GOTO 66
END

IF ~~ THEN BEGIN 66 // from: 50.1 54.3 65.3 67.0 68.0
  SAY #13414 /* ~Mortai steckt den Vertrag weg, und du bemerkst, daß er ihn in seinen Ärmel steckt, anstatt ihn wieder ins Hinterzimmer zu bringen. Mortai schnalzt mit der Zunge. "Beantwortet das deine Fragen über den Vertrag?"~ */
  IF ~  HasItem("Acontrac","Mortai")
~ THEN REPLY #13646 /* ~"Ich würde gern diesen Vertrag begleichen."
~ */ GOTO 43
  IF ~  HasItem("Acontrac","Mortai")
~ THEN REPLY #13647 /* ~"Kann ich Angyars Vertrag noch mal sehen?"~ */ GOTO 54
  IF ~~ THEN REPLY #13648 /* ~"Ja, aber ich hätte noch ein paar Fragen..."~ */ GOTO 9
  IF ~~ THEN REPLY #13649 /* ~"Ja, das ist alles, was ich wissen wollte. Leb wohl."~ */ GOTO 56
END

IF ~~ THEN BEGIN 67 // from: 54.0 65.0
  SAY #13415 /* ~Während du den Vertrag überprüfst, drehst du dich kurz von Mortai weg... als du gerade die Verträge austauschen willst, hüstelt Mortai. "Mein Herr... ich wäre vorsichtig mit dem Vertrag. Wenn ich feststellen sollte, daß er fehlt, wäre ich gezwungen, Maßnahmen zu ergreifen." Er schnalzt mit der Zunge und schnippt mit den Fingern. "Den Vertrag, bitte..."~ */
  IF ~~ THEN REPLY #13650 /* ~Gib ihm den Vertrag zurück.~ */ GOTO 66
END

IF ~~ THEN BEGIN 68 // from: 54.1 54.2 65.1 65.2
  SAY #13416 /* ~Während du den Vertrag überprüfst, drehst du dich kurz von Mortai weg und tauschst die Verträge aus. Er scheint es nicht bemerkt zu haben.~ */
  IF ~~ THEN REPLY #13652 /* ~Gib ihm 'Angyars Vertrag' zurück.~ */ DO ~DestroyItemObject("FalseCon",Protagonist,FALSE)
AddexperienceParty(500)
~ GOTO 66
END

IF ~~ THEN BEGIN 69 // from: 64.0
  SAY #48404 /* ~Nach einer Weile kommt Mortai zurück, ein verstaubtes Stück Pergament in den Händen. Er hält es hoch, so daß du es sehen kannst, läßt es aber nicht los.~ */
  IF ~~ THEN REPLY #48405 /* ~Sieh dir das Pergament an.~ */ GOTO 65
END
