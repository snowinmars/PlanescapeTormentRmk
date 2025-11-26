// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DCRIER.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\de_DE\dialog.tlk
// dialogF  : (none)

BEGIN ~DCRIER~

IF ~  Global("Crier","GLOBAL",0)
~ THEN BEGIN 0 // from:
  SAY #26006 /* ~Bäche von Tränen haben kleine Kanäle in das staubbedeckte Gesicht dieses Mannes gegraben. Er sieht wie ein Mönch aus oder wie eine Art heiliger Mann, doch der Staub, der seinen Körper bedeckt, macht es fast unmöglich, den Menschen darunter zu erkennen. Er singt und bewegt seinen Kopf dabei vor und zurück - es sieht wie eine Art Ritual aus.~ */
  IF ~~ THEN REPLY #26007 /* ~"Sei gegrüßt."~ */ GOTO 4
  IF ~~ THEN REPLY #26008 /* ~Laß den heiligen Mann in Ruhe.~ */ EXIT
END

IF ~  Global("Crier","GLOBAL",1)
~ THEN BEGIN 1 // from:
  SAY #26523 /* ~Du triffst auf den Weinenden von Es-Annon. Als er den Namen der toten Stadt verkündet, mischt sich immer noch ein ersticktes Schluchzen in seine Stimme, und Tränen laufen ihm die Wangen herunter.~ */
  IF ~  Global("Crier_Quest","GLOBAL",0)
~ THEN REPLY #26524 /* ~"Ich muß einfach fragen: Warum trauerst du um eine Stadt?"~ */ GOTO 8
  IF ~  Global("Crier_Quest","GLOBAL",1)
~ THEN REPLY #26526 /* ~"Ich hab' noch keinen passenden Grabstein gefunden, in den man den Namen von Es-Annon meißeln könnte."~ */ GOTO 3
  IF ~  Global("Crier_Quest","GLOBAL",2)
~ THEN REPLY #26527 /* ~"Ich habe dafür gesorgt, daß man sich an Es-Annons Namen erinnert. Er ist in ein schwarzes Steindenkmal vor der Leichenhalle eingemeißelt."~ */ DO ~SetGlobal("Crier","GLOBAL",2)
AddexperienceParty(500)
~ JOURNAL #26530 /* ~Ich habe dafür gesorgt, daß der Name von Es-Annon in das Staubmenschen-Denkmal geschnitzt wurde. Ich bin zurückgekehrt und habe es dem Weinenden erzählt, und sein Tränenstrom fand schließlich ein Ende. Jetzt scheint er seinen Frieden zu haben, und er war mir für meine Bemühungen dankbar.~ */ GOTO 23
  IF ~~ THEN REPLY #26528 /* ~Laß den Weinenden in Ruhe.~ */ EXIT
END

IF ~  Global("Crier","GLOBAL",2)
~ THEN BEGIN 2 // from:
  SAY #26525 /* ~Du triffst auf den Weinenden von Es-Annon. Er sieht entspannt aus, und sein Blick kündet von einem Frieden, den du von eurer letzten Begegnung nicht kennst. "Danke, mein Freund. Ich werde mich bald auf die Suche nach meinen Brüdern machen und ihnen erzählen, daß unsere Trauer jetzt ein Ende hat."~ */
  IF ~~ THEN REPLY #26531 /* ~"Nun denn, ich wünsch dir alles Gute für deine Reise. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 1.1
  SAY #26529 /* ~Der Weinende schüttelt den Kopf. "Es ist so, wie ich befürchtet hatte. Die Weinenden von Es-Annon sind die einzigen, die die Last tragen können. Du brauchst nicht weiterzusuchen, mein Freund..."~ */
  IF ~~ THEN REPLY #26532 /* ~"Nein. Ich werd weiter nach einem Grabstein suchen und wiederkommen, wenn Es-Annons Name auf ihm steht."~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 0.0
  SAY #26533 /* ~Der Mann stellt sein wildes Klagen ein und schaut dich mit Tränen in den Augen an. Er öffnet seinen ausgetrockneten Mund, um zu sprechen, aber er bringt nur ein schwaches Krächzen hervor.~ */
  IF ~~ THEN REPLY #26534 /* ~"Was ist los? Warum weinst du?"~ */ GOTO 5
  IF ~~ THEN REPLY #26535 /* ~"Tut mir leid, daß ich dich gestört habe. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 4.0
  SAY #26536 /* ~"Ich..." Seine Stimme ist so heiser, daß es sich anhört, als ob er tagelang nichts getrunken hat. Du siehst, wie eine Träne seine Wangen hinunterkullert. "Ich... bin ein Weinender von Es-Annon."~ */
  IF ~~ THEN REPLY #26537 /* ~"Es-Annon? Wer ist das?"~ */ DO ~SetGlobal("Crier","GLOBAL",1)
~ JOURNAL #26540 /* ~Ich habe einen "Weinenden von Es-Annon" in den Straßen des Stocks getroffen. Er sagt, Es-Annon sei eine Stadt gewesen, die vor langer Zeit zerstört wurde, und er (sowie die verbleibenden Bewohner) bereisten nun die Ebenen und beweinten die Stadt vor allen, die zuhörten. Sie möchten, daß man sich an Es-Annon erinnert. ~ */ GOTO 6
END

IF ~~ THEN BEGIN 6 // from: 5.0
  SAY #26541 /* ~"W... *Wer* Es-Annon ist?!" Der Mann wirft den Kopf zurück und bricht in ein heiseres Lachen aus. Es klingt brutal und verzweifelt. "Es-Annon... ist kein Mensch, sondern eine Stadt!"~ */
  IF ~~ THEN REPLY #26542 /* ~"Warum weinst du um eine Stadt?"~ */ GOTO 7
  IF ~~ THEN REPLY #26543 /* ~"Ich fürchte, ich hab' dich aufgeregt. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 7 // from: 6.0
  SAY #26544 /* ~"Wir rufen weinend ihren Namen aus, weil Es-Annon nicht in Vergessenheit geraten darf. Alle Weinenden von Es-Annon haben diese Bürde zu tragen."~ */
  IF ~~ THEN REPLY #26545 /* ~"Ihr trauert um eine *Stadt?* Warum macht ihr so was?"~ */ GOTO 8
  IF ~~ THEN REPLY #26546 /* ~"Verstehe. Dann werd ich dich wieder deinen Gedanken überlassen. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 8 // from: 1.0 7.0
  SAY #26547 /* ~"Weil ihr Name alles ist, was von ihr bleibt. Ihre lichtdurchfluteten Straßen, ihre großartigen, gewundenen Parkanlagen... Als sie in Schutt und Asche gelegt und völlig ausgelöscht wurde, überlebten nur etwa fünf Dutzend ihrer Einwohner. Es war unsere Pflicht, dafür zu sorgen, daß man sich überall in den Ebenen an ihren Namen erinnert. Viele Weinende von Es-Annon sind um der Erinnerung willen gestorben... viele..."~ */
  IF ~~ THEN REPLY #26549 /* ~"Wenn das dich und die anderen in Gefahr bringt, warum hört ihr dann nicht auf?"~ */ GOTO 9
  IF ~~ THEN REPLY #26550 /* ~"Ich bedauere den Verlust eurer Stadt und eurer Mitbürger. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 9 // from: 8.0
  SAY #26551 /* ~"Die Tränen, die ich vergieße, der Staub, der mich bedeckt,... diese Dinge sind nichts, verglichen mit dem, was mich erwarten würde, wenn ich meine heilige Last aufgäbe. Wir MÜSSEN dafür sorgen, daß man sich an ihren Namen erinnert. Wir sind lebende Gedenkstätten für ihren Untergang."~ */
  IF ~~ THEN REPLY #26552 /* ~"Wenn das so ist, was passiert, wenn ihr alle sterbt?"~ */ GOTO 10
  IF ~~ THEN REPLY #26553 /* ~"Ich bedauere den Verlust eurer Stadt und eurer Mitbürger. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 10 // from: 9.0
  SAY #26555 /* ~Aus den Augen des Weinenden quillt eine neue Träne. Selbst der Schmutz in seinem Gesicht kann den verzweifelten Gesichtsausdruck nicht verbergen. "Ich WEISS es nicht. Wir Weinende von Es-Annon können nicht ewig um die Stadt trauern... Auch in diesem Moment hängt der Staub sich an unsere Roben, trocknet uns die Spucke im Mund und unsere Körper welken und sterben."~ */
  IF ~~ THEN REPLY #26556 /* ~"Kann ich euch irgendwie helfen?"~ */ GOTO 11
  IF ~~ THEN REPLY #26557 /* ~"Ich bedauere den Verlust eurer Stadt und eurer Mitbürger. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 11 // from: 10.0
  SAY #26558 /* ~"Nett, daß du fragst..." Der Weinende schüttelt den Kopf. "Wenn du Es-Annon nicht unsterblich machen kannst, dann gibt es keine Rettung."~ */
  IF ~~ THEN REPLY #26560 /* ~"Mußt du es sein, der den Namen von Es-Annon ausruft?"~ */ GOTO 12
  IF ~  CheckStatGT(Protagonist,13,INT)
~ THEN REPLY #26562 /* ~"Muß sie durch einen Menschen unsterblich gemacht werden? Würde ein Grabstein keine Abhilfe schaffen?"~ */ GOTO 16
  IF ~  CheckStatGT(Protagonist,13,WIS)
CheckStatLT(Protagonist,14,INT)
~ THEN REPLY #26561 /* ~"Muß sie durch einen Menschen unsterblich gemacht werden? Würde ein Grabstein keine Abhilfe schaffen?"~ */ GOTO 16
  IF ~~ THEN REPLY #26563 /* ~"Ich bedauere den Verlust eurer Stadt und eurer Mitbürger. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 12 // from: 11.0
  SAY #26564 /* ~"Was spielt das schon für eine Rolle? Ein anderer könnte den Namen ausrufen, und dann würde er auch sterben." In seinem Augenwinkel bildet sich langsam eine Träne und kullert dann seine Wange hinunter. "Da ist nichts zu machen. Wenn die Weinenden von Es-Annon sterben, stirbt auch Es-Annon."~ */
  IF ~~ THEN REPLY #26565 /* ~"Und vielleicht soll es so sein. Wenn die Stadt gestorben ist, wie du sagst, dann sollte sie vergessen werden."~ */ GOTO 13
  IF ~~ THEN REPLY #26567 /* ~"Das klingt so, als ob das Erinnern an Es-Annon die übriggebliebenen Bewohner einer Gefahr aussetzt. Ist es das wirklich wert?"~ */ GOTO 13
  IF ~~ THEN REPLY #26568 /* ~"Wie wär's mit einem Grabstein?"~ */ GOTO 16
  IF ~~ THEN REPLY #26569 /* ~"Ich bedauere den Verlust eurer Stadt und eurer Mitbürger. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 13 // from: 12.0 12.1
  SAY #26570 /* ~Die Schmutzschicht auf dem Gesicht des Mannes beginnt zu bröckeln, als er dich anfaucht: "Du weißt absolut nichts! Du hast nichts von ihrer Schönheit gesehen! Nichts von ihrem Glanz! Würdest du eine solche Erinnerung auslöschen, so eine perfekte Erinnerung, wenn du sie hättest?"
~ */
  IF ~  CheckStatGT(Protagonist,13,INT)
~ THEN REPLY #26571 /* ~"Dinge sind dazu bestimmt zu sterben. Sie sind dazu bestimmt, vergessen zu werden. Denk mal drüber nach, Weinender von Es-Annon... Wem ist damit gedient, wenn du die Stadt mit in dein Grab nimmst?"~ */ DO ~SetGlobal("Crier_Answer","GLOBAL",1)
~ GOTO 14
  IF ~  CheckStatGT(Protagonist,13,WIS)
CheckStatLT(Protagonist,14,INT)
~ THEN REPLY #26573 /* ~"Dinge sind dazu bestimmt zu sterben. Sie sind dazu bestimmt, vergessen zu werden. Denk mal drüber nach, Weinender von Es-Annon... Wem ist damit gedient, wenn du die Stadt mit in dein Grab nimmst?"~ */ DO ~SetGlobal("Crier_Answer","GLOBAL",1)
~ GOTO 14
  IF ~  CheckStatGT(Protagonist,13,CHR)
CheckStatLT(Protagonist,14,INT)
CheckStatLT(Protagonist,14,WIS)
~ THEN REPLY #26574 /* ~"Dinge sind dazu bestimmt zu sterben. Sie sind dazu bestimmt, vergessen zu werden. Denk mal drüber nach, Weinender von Es-Annon... Wem ist damit gedient, wenn du die Stadt mit in dein Grab nimmst?"~ */ DO ~SetGlobal("Crier_Answer","GLOBAL",1)
~ GOTO 14
  IF ~  CheckStatGT(Protagonist,13,INT)
~ THEN REPLY #26575 /* ~"Ich würde nicht so dumm sein und ein solches Andenken sterben lassen, indem ich die letzten Bewahrer dieses Andenkens in Gefahr bringe. Es wäre besser, wenn du den Rest deiner Tage mit deinen Brüdern zusammen im stillen Gedenken an Es-Annon verbringen würdst."~ */ DO ~SetGlobal("Crier_Answer","GLOBAL",2)
~ GOTO 14
  IF ~  CheckStatGT(Protagonist,13,WIS)
CheckStatLT(Protagonist,14,INT)
~ THEN REPLY #26576 /* ~"Ich würde nicht so dumm sein und ein solches Andenken sterben lassen, indem ich die letzten Bewahrer dieses Andenkens in Gefahr bringe. Es wäre besser, wenn du den Rest deiner Tage mit deinen Brüdern zusammen im stillen Gedenken an Es-Annon verbringen würdst."~ */ DO ~SetGlobal("Crier_Answer","GLOBAL",2)
~ GOTO 14
  IF ~  CheckStatGT(Protagonist,13,CHR)
CheckStatLT(Protagonist,14,INT)
CheckStatLT(Protagonist,14,WIS)
~ THEN REPLY #26577 /* ~"Ich würde nicht so dumm sein und ein solches Andenken sterben lassen, indem ich die letzten Bewahrer dieses Andenkens in Gefahr bringe. Es wäre besser, wenn du den Rest deiner Tage mit deinen Brüdern zusammen im stillen Gedenken an Es-Annon verbringen würdst."~ */ DO ~SetGlobal("Crier_Answer","GLOBAL",2)
~ GOTO 14
  IF ~~ THEN REPLY #26578 /* ~"Wie wär's dann mit einem Grabstein?"~ */ GOTO 16
  IF ~~ THEN REPLY #26579 /* ~"Vergiß es. Ich werd dich wieder deinen Gedanken überlassen. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 14 // from: 13.0 13.1 13.2 13.3 13.4 13.5
  SAY #26580 /* ~Der Weinende verfällt in Schweigen, und du siehst, wie sich eine einsame Träne in seinem Augenwinkel bildet. Einen Augenblick später, spricht er, und seine Stimme ist rauh und gefühlsbewegt. "Da... liegt was Wahres in dem, was du sagst."~ */
  IF ~~ THEN REPLY #26581 /* ~"Es ist eine Wahrheit, die schwer zu vernehmen und schwer zu akzeptieren ist."~ */ GOTO 15
END

IF ~~ THEN BEGIN 15 // from: 14.0
  SAY #26582 /* ~Die Träne in seinem Augenwinkel verschwindet so plötzlich, daß du dir nicht mehr sicher bist, ober sie überhaupt da war. "Nichtsdestotrotz stimme ich zu. Und werde mich darum bemühen, daß meine Brüder auch zustimmen."~ */
  IF ~  Global("Crier_Answer","GLOBAL",1)
~ THEN REPLY #26583 /* ~"Nun denn. Leb wohl."~ */ DO ~AddexperienceParty(750)
SetGlobal("Crier","GLOBAL",2)
EscapeArea()
~ JOURNAL #26585 /* ~Ich habe den Weinenden von Es-Annon davon überzeugt, seine Pilgerfahrt aufzugeben. Es gab wirklich keinen Grund mehr für ihn, durch die Ebenen zu reisen und zu versuchen, die Erinnerung an etwas zu verlängern, das ohnehin vergessen wird. Er hat mir zugestimmt, und er wird es bald seinen Brüdern sagen.~ */ EXIT
  IF ~  Global("Crier_Answer","GLOBAL",2)
~ THEN REPLY #26584 /* ~"Nun denn. Leb wohl."~ */ DO ~AddexperienceParty(750)
SetGlobal("Crier","GLOBAL",2)
EscapeArea()
~ JOURNAL #26586 /* ~Ich habe den Weinenden von Es-Annon davon überzeugt, seine Pilgerfahrt aufzugeben. Ich habe ihn überzeugt, daß er und die restlichen Weinenden die Erinnerung an Es-Annon nicht dadurch in Gefahr bringen sollen, daß sie durch die Ebenen reisen. Er hat mir zugestimmt, und er wird es bald seinen Brüdern sagen.~ */ EXIT
END

IF ~~ THEN BEGIN 16 // from: 11.1 11.2 12.2 13.6
  SAY #26587 /* ~Der Weinende blinzelt. "Grab... stein?"~ */
  IF ~~ THEN REPLY #26588 /* ~"Das ist ein Stein, auf dem der Name eines Menschen, sein Leben und seine guten Taten festgehalten sind. Wenn er für Menschen geeignet ist, könnte er dann nicht auch einer gestorbenen Stadt dienlich sein?"~ */ GOTO 17
  IF ~~ THEN REPLY #26589 /* ~"Ist nicht so wichtig. Vergiß, was ich gesagt hab'. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 17 // from: 16.0
  SAY #26590 /* ~"Steine können so etwas tun?"~ */
  IF ~~ THEN REPLY #26591 /* ~"Ja. Und ihre Lebenserwartung ist viel höher als die eines Menschen. Wäre es dem Andenken von Es-Annon dienlich, wenn ihr Name in Stein gemeißelt würde?"~ */ GOTO 18
  IF ~~ THEN REPLY #26592 /* ~"Ist nicht so wichtig. Vergiß, was ich gesagt hab'. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 18 // from: 17.0
  SAY #26593 /* ~Der Mann hält inne. "Könnten andere den Namen sehen?"~ */
  IF ~~ THEN REPLY #26594 /* ~"Ja. Er wäre immer noch für alle zu sehen, wenn du schon längst tot bist."~ */ GOTO 19
  IF ~~ THEN REPLY #26595 /* ~"Ist nicht so wichtig. Vergiß, was ich gesagt hab'. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 19 // from: 18.0
  SAY #26596 /* ~Der Mann nickt. "Wenn so was möglich wäre..." Er wendet sich dir zu. "Wo könnte man so einen Stein finden?"~ */
  IF ~~ THEN REPLY #26597 /* ~"Ich könnte einen suchen. Wenn ich einen finde, könnte ich dafür sorgen, daß der Name von Es-Annon eingemeißelt wird."~ */ GOTO 20
  IF ~~ THEN REPLY #26598 /* ~"Für ein paar Kupfermünzen könnte ich einen Grabstein suchen und dafür sorgen, daß der Name von Es-Annon eingemeißelt wird."~ */ GOTO 21
  IF ~~ THEN REPLY #26599 /* ~"Ist nicht so wichtig. Vergiß, was ich gesagt hab'. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 20 // from: 19.0
  SAY #26600 /* ~"Du... du... würdest das tun? Ich..." In die Augen des Mannes schießen wieder Tränen. "Du würdest alle Weinenden von Es-Annon erlösen. Von uns sind nur etwa noch zwanzig übrig... Die Last des Erinnerns würde nach SO VIELEN Jahren von uns genommen...."~ */
  IF ~~ THEN REPLY #26601 /* ~"Würde ich machen. Ich komme zurück, wenn der Name eingemeißelt ist."~ */ DO ~SetGlobal("Crier_Quest","GLOBAL",1)
IncrementGlobalOnceEx("GLOBALGood_Crier_1","GLOBALGood",1)
~ JOURNAL #26539 /* ~Ich habe eingewilligt, einen Grabstein zu suchen, in den ich für den Weinenden den Namen von Es-Annon einschnitze.~ */ EXIT
END

IF ~~ THEN BEGIN 21 // from: 19.1
  SAY #26602 /* ~"Du... du... würdest das tun? Ich..." In die Augen des Mannes schießen wieder Tränen. "Du würdest alle Weinenden von Es-Annon erlösen. Aber von uns sind etwa noch fünf Dutzend übrig... Die Last des Erinnerung würde nach so vielen Jahren von uns genommen... Und mehr als ein paar Kupferstücke willst du dafür nicht haben?"~ */
  IF ~~ THEN REPLY #26603 /* ~"Ja."~ */ DO ~SetGlobal("Crier_Quest","GLOBAL",1)
GivePartyGold(5)
IncrementGlobalOnceEx("GLOBALEvil_Crier_1","GLOBALGood",-1)
~ GOTO 22
  IF ~~ THEN REPLY #26604 /* ~"Mach dir keine Gedanken, ich tu's umsonst. Ich komme zurück, wenn der Name eingemeißelt ist."~ */ DO ~SetGlobal("Crier_Quest","GLOBAL",1)
IncrementGlobalOnceEx("GLOBALGood_Crier_1","GLOBALGood",1)
~ EXIT
END

IF ~~ THEN BEGIN 22 // from: 21.0
  SAY #26605 /* ~"Du sollst sie bekommen." Der Weinende greift in sein Robe und zieht fünf Kupfermünzen hervor, die er dir abzählt. "Das ist alles, was ich habe. Ich hoffe, es ist genug."~ */
  IF ~~ THEN REPLY #26606 /* ~"Das muß reichen. Also gut, ich komme zurück, wenn der Name von Es-Annon in den Stein eingemeißelt ist."~ */ JOURNAL #26608 /* ~Gegen eine kleine Summe Kupfer habe ich mich bereit erklärt, einen Grabstein zu finden, in den ich für den Weinenden den Namen von Es-Annon schnitze. ~ */ EXIT
  IF ~~ THEN REPLY #26607 /* ~"Die Kupfermünzen waren alles, was ich wollte - für Es-Annon wird's leider keinen Grabstein geben. Leb wohl."~ */ DO ~Enemy()
IncrementGlobalOnceEx("GLOBALEvil_Crier_2","GLOBALGood",-1)
IncrementGlobalOnceEx("GLOBALChaotic_Crier_1","GLOBALLaw",-1)
Attack(Protagonist)
~ JOURNAL #26609 /* ~Ich habe mich gegen eine Summe Kupfer bereit erklärt, einen Grabstein zu finden, in den ich für den Weinenden den Namen von Es-Annon schnitze... Aber als mir der Narr seine letzten Münzen gegeben hatte, habe ich über seine Dummheit gelacht und ihm gesagt, daß ich etwas so Hirnrissiges nicht tun würde. Er sollte wissen, daß man im Stock niemandem trauen kann.~ */ EXIT
END

IF ~~ THEN BEGIN 23 // from: 1.2
  SAY #26611 /* ~Plötzlich hört man ein kurzes Flüstern in der Luft, und die Augen des Mannes werden trocken. Eine der Tränen, die über seine Wangen rannen, verschwindet einfach." Damit ist Es-Annon gedient. Ich werde den anderen Weinenden von dem Stein erzählen, den du beschrieben hast. Mein Dank ist dir gewiß."~ */
  IF ~  Global("Evil_Crier_1","GLOBAL",0)
~ THEN REPLY #26612 /* ~"Ähm... es hat mich ein paar Kupfermünzen gekostet, um den Namen der Stadt in den Stein meißeln zu lassen. Glaubst du, du könntest noch ein paar drauflegen, um mich zu bezahlen?"~ */ DO ~GivePartyGold(5)
IncrementGlobalOnceEx("Evil_Crier_1","GLOBAL",-1)
~ GOTO 24
  IF ~~ THEN REPLY #26613 /* ~"Nicht der Rede wert. Leb wohl... Ich hoffe, du und deine Brüder könnt den Rest eurer Tage in Frieden leben."~ */ DO ~EscapeArea()
~ EXIT
END

IF ~~ THEN BEGIN 24 // from: 23.0
  SAY #26615 /* ~Er nickt und greift in sein Robe. "Alles, was ich habe, gehört dir." Er zählt fünf Kupfermünzen ab, und gibt sie dir. "Nimm dies und meine Dankbarkeit."~ */
  IF ~~ THEN REPLY #26616 /* ~"Nicht der Rede wert... im wahrsten Sinne des Wortes, wie mir scheint. Leb wohl."~ */ DO ~EscapeArea()
~ EXIT
  IF ~~ THEN REPLY #26617 /* ~"Gern geschehen. Leb wohl."~ */ DO ~EscapeArea()
~ EXIT
END
