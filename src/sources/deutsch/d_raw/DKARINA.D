// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DKARINA.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\de_DE\dialog.tlk
// dialogF  : (none)

BEGIN ~DKARINA~
//////////////////////////////////////////////////
// WARNING: this file contains non-trivial WEIGHTs
//////////////////////////////////////////////////

IF WEIGHT #2 /* Triggers after states #: 21 22 even though they appear after this state */
~  NumTimesTalkedTo(0)
~ THEN BEGIN 0 // from:
  SAY #36099 /* ~Du siehst eine hübsche, junge Frau in einfachen Kleidern. Sie wandert auf dem Markt herum und sieht sich alles an, kauft aber nichts. Du bemerkst, daß die Leute sie zu meiden scheinen, aber sie versuchen, es nicht zu offensichtlich zu tun. Sie lächelt dich warm an, als du auf sie zugehst.~ */
  IF ~~ THEN REPLY #36100 /* ~"Sei gegrüßt."~ */ GOTO 1
  IF ~~ THEN REPLY #36101 /* ~Ignoriere sie.~ */ DO ~SetNumTimesTalkedTo(0)
~ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #36102 /* ~Ihr Lächeln wird noch breiter. "Hallo, ich bin Karina. Es ist mir eine Freude, dich zu treffen, Schleifer." Sie lächelt weiter und wartet auf deine Antwort.~ */
  IF ~~ THEN REPLY #36103 /* ~"Ich habe ein paar Fragen..."~ */ GOTO 2
END

IF ~~ THEN BEGIN 2 // from: 1.0 7.0 8.0 9.0 10.0 11.0 12.0 13.0 14.0 20.0
  SAY #36104 /* ~Sie nickt. "Also gut. Was willst Du wissen?"~ */
  IF ~  Global("Know_Lothar","GLOBAL",1)
!Global("AR0508_Visited","GLOBAL",1)
~ THEN REPLY #36105 /* ~"Ich suche jemanden namens Lothar. Man nennt ihn auch den Herrn der Knochen..."~ */ GOTO 3
  IF ~  Global("Morte_Stolen","GLOBAL",1)
!Global("Know_Lothar","GLOBAL",1)
~ THEN REPLY #36106 /* ~"Mir wurde ein Schädel gestohlen. Weißt du zufällig, wer so etwas tun würde?"~ */ GOTO 4
  IF ~~ THEN REPLY #36107 /* ~"Wo kann ich Waffen kaufen?"~ */ GOTO 5
  IF ~~ THEN REPLY #36108 /* ~"Wo kann ich magische Gegenstände kaufen?"~ */ GOTO 6
  IF ~  GlobalGT("Girl_Talks_Alot","AR0504",1)
!Global("Karina_Friend","GLOBAL",4)
~ THEN REPLY #36109 /* ~"Na, du... redest ja wirklich gern, nicht wahr?"~ */ GOTO 15
  IF ~~ THEN REPLY #36110 /* ~"Vergiß es. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 2.0
  SAY #36111 /* ~Sie runzelt die Stirn. "Lothar... Ich kenne niemanden namens Lothar. Ich kann mich auch nicht daran erinnern, jemals diesen Namen gehört zu haben." Sie sieht dich nachdenklich an. "Sagtest du 'Herr der Knochen'? Das klingt nach Unheil, findest du nicht? Warum sollte jemand unter solch einem Namen bekannt sein?"~ */
  IF ~~ THEN REPLY #36113 /* ~"Naja... hört sich ziemlich beeindruckend an..."~ */ GOTO 7
  IF ~~ THEN REPLY #36114 /* ~"Na,... um Leute zu erschrecken, nehme ich an."~ */ GOTO 11
END

IF ~~ THEN BEGIN 4 // from: 2.1
  SAY #36116 /* ~"Ein Totenschädel? Was willst Du denn mit so etwas?" Findest du nicht, daß das ein wenig makaber ist? Na gut, wenn du also unbedingt einen Totenschädel willst, denke ich, daß du in der Leichenhalle einen bekommen könntest... vielleicht aber auch nicht. Die geben so was nicht gerne heraus, wenn ich recht darüber nachdenke... Und überhaupt, ich wüßte gar nicht, wer dir deinen Totenschädel abnehmen würde. Warum willst Du denn einen Totenschädel?"~ */
  IF ~~ THEN REPLY #36118 /* ~"Er ist ein Freund von mir."~ */ GOTO 8
  IF ~~ THEN REPLY #36119 /* ~"Er ist ein wertvolles Stück Eigentum."~ */ GOTO 12
END

IF ~~ THEN BEGIN 5 // from: 2.2
  SAY #36121 /* ~Sie lächelt und zeigt zu einem der Stände. "Anze dort hinten verkauft Waffen. Alle möglichen Waffen. Bist du ein Krieger? Wie dumm von mir, natürlich bist du einer. Ich meine, wie solltest du auch keiner sein mit all diesen Narben... Oh, entschuldige, ich sollte sie wohl lieber nicht erwähnen. Es macht dir doch nichts aus, oder?"~ */
  IF ~~ THEN REPLY #36123 /* ~"Nein, ich hab' mich an sie gewöhnt."~ */ GOTO 9
  IF ~~ THEN REPLY #36124 /* ~"Ja, also komm mir nicht schon wieder mit denen."~ */ GOTO 13
END

IF ~~ THEN BEGIN 6 // from: 2.3
  SAY #36126 /* ~Sie lächelt und zeigt zu einem der Stände. "Aalek dort hinten verkauft alles, was mit Magie zu tun hat. Bist du ein Magier? Du siehst gar nicht aus wie einer, aber man sollte ja eh nicht nach dem Aussehen gehen. Ich weiß auch gar nicht recht, wie ein Magier überhaupt aussieht, wenn ich darüber nachdenke... Weißt du's?"
~ */
  IF ~~ THEN REPLY #36128 /* ~"Ja. Sie tragen Gewänder mit merkwürdigen Symbolen und spitze Hüte."~ */ GOTO 10
  IF ~~ THEN REPLY #36129 /* ~"Nein, eigentlich nicht."~ */ GOTO 14
END

IF ~~ THEN BEGIN 7 // from: 3.0
  SAY #36131 /* ~Sie nickt. "Ja... Ich glaube, ich weiß, was du meinst. Hat irgendwie was. Hmmm. Irgendwie eingängig, wenn du lange genug drüber nachdenkst." Sie blickt gedankenverloren vor sich hin.~ */
  IF ~~ THEN REPLY #36132 /* ~"Ich habe ein paar Fragen..."~ */ DO ~IncrementGlobal("Girl_Talks_Alot","AR0504",1)
~ GOTO 2
END

IF ~~ THEN BEGIN 8 // from: 4.0
  SAY #36133 /* ~Sie sieht dich zweifelnd an. "Wirklich? Ein Totenschädel? Das hört sich aber merkwürdig an. Ich habe noch nie von jemandem gehört, der einen Totenschädel als Freund hat. Ich habe ja schon Leute mit Haustieren und so gesehen, aber nie mit einem Totenschädel. Und dann hast du nicht mal 'Haustier' gesagt, sondern Freund, und das hört sich noch merkwürdiger an." Sie macht eine kurze Pause.
~ */
  IF ~~ THEN REPLY #36134 /* ~"Ich habe ein paar Fragen..."~ */ DO ~IncrementGlobal("Girl_Talks_Alot","AR0504",1)
~ GOTO 2
END

IF ~~ THEN BEGIN 9 // from: 5.0
  SAY #36135 /* ~Sie wirkt erleichtert. "Oh, gut... Ich wollte hier nicht deine oder irgendjemandes Gefühle verletzen. Du musst halt einfach vorsichtig sein mit dem, was du jemandem erzählst, weißt du? Ich meine, die Leute sind halt verschieden, und man kann nie wissen. Was eine Person kränkt, mag eine andere überhaupt nicht berühren. Naja... und überhaupt." Sie macht eine Atempause und lächelt dich an.~ */
  IF ~~ THEN REPLY #36136 /* ~"Ich habe ein paar Fragen..."~ */ DO ~IncrementGlobal("Girl_Talks_Alot","AR0504",1)
~ GOTO 2
END

IF ~~ THEN BEGIN 10 // from: 6.0
  SAY #36137 /* ~"Wirklich? Das ist gut zu wissen. Ich meine, ich fürchte mich vor Magiern und möchte deshalb wissen, wie sie aussehen. Ich schätze, ich fürchte mich vor der ganzen Macht, die sie besitzen, und sie können wirklich unglaubliche Dinge anrichten und so, aber ich weiß halt nicht, wie sie aussehen. Krieger und Priester und... und... ach, du weißt schon, andere mächtige Leute mit all dem Zeug, das sie mit sich rumtragen und das sie als mächtige Leute auszeichnet, erkennt man halt. Aber nicht die Magier." Sie hält inne.~ */
  IF ~~ THEN REPLY #36138 /* ~"Ich habe noch ein paar Fragen..."~ */ DO ~IncrementGlobal("Girl_Talks_Alot","AR0504",1)
~ GOTO 2
END

IF ~~ THEN BEGIN 11 // from: 3.1
  SAY #36139 /* ~Sie blickt gedankenverloren vor sich hin und streicht sich übers Kinn. Schließlich nickt sie. "Ja... Ich glaube, du hast Recht. Es läuft mir kalt über den Rücken, wenn ich darüber nachdenke. 'Herr der Knochen' ist ein ziemlich furchteinflößender Titel. Ich glaube nicht, daß ich mich mit jemandem, der einen solchen Titel hat, anlegen würde." Sie denkt weiter nach.~ */
  IF ~~ THEN REPLY #36140 /* ~"Ich habe ein paar Fragen..."~ */ DO ~IncrementGlobal("Girl_Talks_Alot","AR0504",1)
~ GOTO 2
END

IF ~~ THEN BEGIN 12 // from: 4.1
  SAY #36141 /* ~Sie zuckt die Achseln. "Aha... Du willst also in den Besitz eines Totenschädels kommen, schon okay. Die Leute sammeln ja die merkwürdigsten Dinge. Ich persönlich sammle nichts, aber ich kenne viele Leute, die etwas sammeln. Du bist aber der einzige, den ich kenne, der Totenschädel sammelt. Vielleicht sollte ich auch etwas sammeln..."~ */
  IF ~~ THEN REPLY #36142 /* ~"Ich habe ein paar Fragen..."~ */ DO ~IncrementGlobal("Girl_Talks_Alot","AR0504",1)
~ GOTO 2
END

IF ~~ THEN BEGIN 13 // from: 5.1
  SAY #36143 /* ~Sie sieht traurig aus und blickt dich nachdenklich an. "Es tut mir leid. Ich hoffe, du vergibst mir, ich will niemanden beleidigen oder so. Ich meine, ich mag es nicht, wenn mich jemand verletzt, warum sollte ich das dann jemandem antun? Die mögen das bestimmt auch nicht... es sei denn, sie sind komisch... oder so." Sie wirft dir einen unschuldigen Blick zu.~ */
  IF ~~ THEN REPLY #36144 /* ~"Ich habe noch ein paar Fragen..."~ */ DO ~IncrementGlobal("Girl_Talks_Alot","AR0504",1)
~ GOTO 2
END

IF ~~ THEN BEGIN 14 // from: 6.1
  SAY #36145 /* ~Sie wird ganz aufgeregt und zeigt mit dem Finger auf dich. "Siehst du! Genau das meine ich. Die haben diese ganze schreckliche Macht und können wirklich unglaubliche Dinge machen, aber du erkennst sie nicht einfach am Aussehen. Die können dir in dieser Hinsicht richtig was vormachen. Ich meine halt, Priester und Krieger und was weiß ich wer, die haben alle diesen offensichtlichen Kram, den sie mit sich rumschleppen, und du weißt, wer sie sind und kannst dich in acht nehmen. Aber nicht die Magier." Sie sieht dich ruhig an.~ */
  IF ~~ THEN REPLY #36146 /* ~"Ich habe ein paar Fragen..."~ */ DO ~IncrementGlobal("Girl_Talks_Alot","AR0504",1)
~ GOTO 2
END

IF ~~ THEN BEGIN 15 // from: 2.4
  SAY #36147 /* ~Sie tritt von einem Fuß auf den anderen und wirkt verlegen. "Ich, äh... Naja... Man sagt, daß ich wohl ein bißchen zu viel rede und, naja... die Leute meiden mich eher... und ich habe keine richtigen Freunde oder Verehrer, die mit mir ausgehen... Manchmal bin ich halt einsam..." Ihre Stimme wird leiser und leiser, bis sie schließlich schweigt. Sie starrt auf ihre Füße.~ */
  IF ~~ THEN REPLY #36148 /* ~"Ich verstehe auch, warum."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Karina_1","GLOBALLaw",-1)
~ GOTO 16
  IF ~~ THEN REPLY #36149 /* ~"Ich glaube nicht, daß du ein schlechter Mensch bist, Karina. Zufällig mag ich dich."~ */ DO ~AddexperienceParty(2000)
IncrementGlobalOnceEx("GLOBALGood_Karina_1","GLOBALGood",1)
SetGlobal("Karina_Friend","GLOBAL",1)
~ JOURNAL #35988 /* ~Ich habe eine junge Frau namens Karina getroffen. Sie redet ein bißchen zuviel und neigt zum Schwafeln, ist aber sonst wohl nett. Sie hat mir erzählt, daß sie einsam ist. ~ */ GOTO 17
  IF ~~ THEN REPLY #36150 /* ~"Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 16 // from: 15.0
  SAY #36151 /* ~Sie steht einfach nur da und starrt weiter auf den Boden. Dann merkst du, daß sie leise vor sich hin schluchzt. Sie wendet sich ab und geht davon.~ */
  IF ~~ THEN REPLY #36152 /* ~Geh.~ */ EXIT
END

IF ~~ THEN BEGIN 17 // from: 15.1
  SAY #36153 /* ~Sie sieht dich hoffnungsvoll an. "Wirklich? Vielen, vielen Dank... Ich weiß nicht einmal, wer du bist."~ */
  IF ~~ THEN REPLY #36154 /* ~Lüge: "Ich bin Adahn."~ */ DO ~IncrementGlobal("Adahn","GLOBAL",1)
IncrementGlobalOnceEx("GLOBALChaotic_Karina_2","GLOBALLAW",-1)
~ GOTO 18
  IF ~~ THEN REPLY #36155 /* ~"Ich kann mich nicht an meinen Namen erinnern."~ */ GOTO 19
  IF ~~ THEN REPLY #36156 /* ~"Leb wohl, Karina."~ */ EXIT
END

IF ~~ THEN BEGIN 18 // from: 17.0
  SAY #36157 /* ~Sie lächelt. "Danke, Adahn. Es ist schön, einen Freund zu haben."~ */
  IF ~~ THEN REPLY #36158 /* ~"Leb wohl, Karina."~ */ EXIT
END

IF ~~ THEN BEGIN 19 // from: 17.1
  SAY #36159 /* ~Sie runzelt die Stirn, will etwas sagen und überlegt es sich dann anders. Sie zuckt mit den Schultern. "Was ist schon ein Name? Es ist einfach schön, einen Freund zu haben." Sie lächelt.~ */
  IF ~~ THEN REPLY #36160 /* ~"Leb wohl, Karina."~ */ EXIT
END

IF WEIGHT #3 /* Triggers after states #: 21 22 even though they appear after this state */
~  NumTimesTalkedToGT(0)
~ THEN BEGIN 20 // from:
  SAY #36161 /* ~Du siehst Karina. Sie lächelt dir zu, als du näher kommst. "Hallo, mein Freund. Wie geht es dir an solch schönem Tag?"~ */
  IF ~~ THEN REPLY #36162 /* ~"Ich habe ein paar Fragen..."~ */ GOTO 2
  IF ~~ THEN REPLY #36163 /* ~"Vergiß es. Leb wohl."~ */ EXIT
END

IF WEIGHT #1 /* Triggers after states #: 22 even though they appear after this state */
~  Global("Karina_Friend","GLOBAL",1)
~ THEN BEGIN 21 // from:
  SAY #36164 /* ~Karina lächelt glücklich. "Hallo, mein Freund. Es ist schön, dich wiederzusehen."~ */
  IF ~~ THEN REPLY #36165 /* ~"Ich wollte nur kurz Hallo sagen, Karina. Schönen Tag wünsche ich dir."~ */ EXIT
END

IF WEIGHT #0 ~  Global("Karina_Friend","GLOBAL",3)
~ THEN BEGIN 22 // from:
  SAY #36166 /* ~Karina bemerkt, daß du näher kommst, und strahlt dich glücklich an. "Hallo, schön, dich wiederzusehen." Sie sieht so aus, als ob sie gleich vor Aufregung platzt. "Vielen, vielen Dank, Schleifer! Ich bin so dankbar dafür, was du getan hast."~ */
  IF ~~ THEN REPLY #36167 /* ~"Was hab' ich getan, Karina?"~ */ DO ~SetGlobal("Karina_Friend","GLOBAL",4)
~ GOTO 23
END

IF ~~ THEN BEGIN 23 // from: 22.0
  SAY #36168 /* ~Sie lacht. "Du hast mir Corvus über den Weg geschickt, ich weiß es, denn er hat es mir verraten. Er hatte nicht gewagt, mich anzusprechen, weil er dachte, ich hätte eine solch lange Liste von Verehrern... Naja, was ich eigentlich sagen wollte: vielen Dank." Sie umarmt dich.~ */
  IF ~~ THEN REPLY #36169 /* ~"Hab' ich gern gemacht, Karina. Ich wünsche euch beiden alles Gute."~ */ DO ~AddexperienceParty(500)
~ GOTO 24
END

IF ~~ THEN BEGIN 24 // from: 23.0
  SAY #36170 /* ~"Danke, Schleifer. Ich hoffe, du findest auch Glück in deinem Leben."~ */
  IF ~~ THEN REPLY #36171 /* ~"Leb wohl."~ */ EXIT
END
