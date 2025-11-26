// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DSAROS.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\de_DE\dialog.tlk
// dialogF  : (none)

BEGIN ~DSAROS~
//////////////////////////////////////////////////
// WARNING: this file contains non-trivial WEIGHTs
//////////////////////////////////////////////////

IF WEIGHT #0 ~  Global("Alarm2","GLOBAL",1)
~ THEN BEGIN 0 // from:
  SAY #43405 /* ~"He, faß mich nicht an! Laß mich in Ruhe!"~ */
  IF ~~ THEN REPLY #43406 /* ~"Ich wollte... Ach, vergiß es."~ */ EXIT
END

IF WEIGHT #1 ~  Global("Alarm1","GLOBAL",1)
~ THEN BEGIN 1 // from:
  SAY #43407 /* ~"Sie haben dich wohl geschnappt, was? So ein Pech aber auch."~ */
  IF ~~ THEN REPLY #43408 /* ~"Leb wohl."~ */ EXIT
END

IF WEIGHT #2 ~  GlobalGT("Join_Godsmen","GLOBAL",3)
!Dead("Sandoz")
~ THEN BEGIN 2 // from:
  SAY #43409 /* ~"Danke für deine Barmherzigkeit. Ab jetzt werde ich auf dem Pfad der Tugend wandeln. In Ordnung?"~ */
  IF ~~ THEN REPLY #43410 /* ~"Klar, Saros. Würdest du mir ein paar Fragen beantworten?"~ */ GOTO 4
  IF ~~ THEN REPLY #43411 /* ~"Ja ja. Leb wohl."~ */ EXIT
END

IF WEIGHT #4 /* Triggers after states #: 6 even though they appear after this state */
~  GlobalGT("G_Test2","GLOBAL",3)
GlobalLT("G_Test2","GLOBAL",12)
~ THEN BEGIN 3 // from:
  SAY #43412 /* ~"Was hast du rausgefunden? Läßt du mich laufen?"~ */
  IF ~  Global("G_Test2","GLOBAL",5)
~ THEN REPLY #43413 /* ~"Thildon sagt, du hättest die Ahle am Tatort plaziert, um ihm den Mord anzuhängen, weil ihr eine Auseinandersetzung hattet."~ */ DO ~SetGlobal("G_Test2","GLOBAL",6)
~ GOTO 16
  IF ~  Global("G_Test2","GLOBAL",7)
~ THEN REPLY #43414 /* ~"Thildon sagt, daß du und Bedai-Lihn Anarchisten seid und daß ihr versucht, ihm die Sache anzuhängen, weil er es abgelehnt hatte, bei euch mitzumachen."~ */ DO ~SetGlobal("G_Test2","GLOBAL",8)
~ GOTO 17
  IF ~~ THEN REPLY #43415 /* ~"Ich weiß genug, um eine Entscheidung treffen zu können."~ */ GOTO 18
  IF ~~ THEN REPLY #43416 /* ~"Nein, noch nicht. Aber ich hätte da noch ein paar Fragen an dich."~ */ GOTO 15
  IF ~~ THEN REPLY #43417 /* ~"Noch nicht. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 2.0 5.2 8.0 10.2 11.0 13.0
  SAY #43418 /* ~"Sicher. Was willst du wissen..."~ */
  IF ~~ THEN REPLY #43419 /* ~"Erzähl mir was über dich."~ */ GOTO 5
  IF ~  Global("Sabotage","GLOBAL",7)
~ THEN REPLY #43420 /* ~"Erzähl mir von der Großen Gießerei."~ */ GOTO 9
  IF ~  GlobalLT("Sabotage","GLOBAL",7)
~ THEN REPLY #43421 /* ~"Erzähl mir von der Großen Gießerei."~ */ GOTO 8
  IF ~~ THEN REPLY #43422 /* ~"Erzähl mir was über die Anarchisten."~ */ GOTO 10
  IF ~~ THEN REPLY #43423 /* ~"Erzähl mir was über die Leute hier."~ */ GOTO 11
  IF ~~ THEN REPLY #43424 /* ~"Im Moment nichts. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 4.0
  SAY #43425 /* ~"Hm... Also ich bin mit meiner Schwester Sarossa in der Gießerei aufgewachsen. Mein Vater Sandoz ist hier Adlat, und so hat er die meiste Zeit damit verbracht, neue Anhänger zu gewinnen und den Einfluß des Bundes zu vergrößern. Meine Schwester Sarossa ist eine Art Hexe, aber sie weiß viel. Sie weiß zum Beispiel, wie man die Leute dazu bringt, mehr sie selbst zu sein."~ */
  IF ~  GlobalGT("Know_Saros","GLOBAL",1)
~ THEN REPLY #43426 /* ~"Was meinst du?"~ */ GOTO 13
  IF ~  Global("Know_Saros","GLOBAL",1)
~ THEN REPLY #43427 /* ~"Was meinst du?"~ */ DO ~SetGlobal("Know_Saros","GLOBAL",2)
~ GOTO 13
  IF ~  GlobalGT("Know_Saros","GLOBAL",0)
~ THEN REPLY #43428 /* ~"Das hab ich schon gehört. Ob du mir wohl noch ein paar Fragen beantworten könntest?"~ */ GOTO 4
  IF ~~ THEN REPLY #43429 /* ~"Danke, daß du mir deine Zeit geopfert hast. Leb wohl."~ */ EXIT
END

IF WEIGHT #3 ~  GlobalGT("Join_Godsmen","GLOBAL",3)
Dead("Sandoz")
~ THEN BEGIN 6 // from:
  SAY #43430 /* ~"Laß mich in Ruhe. Mein Vater ist tot."~ */
  IF ~~ THEN REPLY #43431 /* ~"Ich hätte da ein paar Fragen."~ */ GOTO 7
  IF ~~ THEN REPLY #43432 /* ~"Nun denn. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 7 // from: 6.0 9.0
  SAY #43433 /* ~"Ich hab gesagt, du sollst mich in Ruhe lassen!"~ */
  IF ~~ THEN REPLY #43434 /* ~"Schon gut. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 8 // from: 4.2
  SAY #43435 /* ~"Ich bin hier aufgewachsen. Ich habe im Hauptbereich der Gießerei gespielt und bin durch die Baracken gerannt. Hier stinkt es, hier ist es laut, und die Leute können sein wie... na ja, wie Leute eben. Und doch ist es mein Zuhause."~ */
  IF ~~ THEN REPLY #43436 /* ~"Wie rührend. Beantworte mir doch noch ein paar Fragen..."~ */ GOTO 4
  IF ~~ THEN REPLY #43437 /* ~"Danke, Saros. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 9 // from: 4.1
  SAY #43438 /* ~"Sie sind alle tot. Alle, die mit mir gespielt haben, als ich klein war... Sie sind alle bei dieser Explosion ums Leben gekommen. Ich habe mich in der Gießerei zu Hause gefühlt, aber jetzt tut es weh, hier zu sein. Würdest du mich bitte allein lassen?"~ */
  IF ~~ THEN REPLY #43439 /* ~"Tja, das ist bitter, Kleiner. Ich habe noch ein paar Fragen."~ */ GOTO 7
  IF ~~ THEN REPLY #43440 /* ~"Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 10 // from: 4.3
  SAY #43441 /* ~"Darüber möchte ich lieber nicht sprechen. Ich dachte, sie würden mir helfen und mein Leben bereichern, doch statt dessen haben sie sich gegen mich gewendet. Wahrscheinlich müssen sie an sich selbst denken, wenn alle anderen gegen sie sind... Aber ich wollte doch dazu gehören."~ */
  IF ~  CheckStatGT(Protagonist,13,INT)
Global("Chaotic_Saros_1","GLOBAL",0)
~ THEN REPLY #43442 /* ~"Das widerspricht dem ganzen Sinn der Anarchie, Saros. Dort ist jeder auf sich allein gestellt."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Saros_1","GLOBALLaw",-1)
AddexperienceParty(200)
~ GOTO 12
  IF ~  CheckStatGT(Protagonist,13,INT)
Global("Chaotic_Saros_1","GLOBAL",1)
~ THEN REPLY #43443 /* ~"Das widerspricht dem ganzen Sinn der Anarchie, Saros. Dort ist jeder auf sich allein gestellt."~ */ GOTO 14
  IF ~~ THEN REPLY #43444 /* ~"Sicher. Du bist noch jung. Du wirst es verwinden. Beantworte mir noch ein paar Fragen."~ */ GOTO 4
  IF ~~ THEN REPLY #43445 /* ~"Verstehe. Du wirst darüber hinwegkommen. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 11 // from: 4.4
  SAY #43446 /* ~Er zuckt mit den Achseln. "Sie sind einfach nur Leute."~ */
  IF ~~ THEN REPLY #43447 /* ~"Sehr hilfreich. Kannst du mir noch ein paar Fragen beantworten?"~ */ GOTO 4
  IF ~~ THEN REPLY #43448 /* ~"Danke. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 12 // from: 10.0
  SAY #43449 /* ~"Das heißt, ich darf nicht dazugehören wollen, wenn ich in Wirklichkeit dazu gehören will?"~ */
  IF ~~ THEN REPLY #43450 /* ~"So ungefähr. Wenn du eine eigenständige Person bist, bist du mehr als nur eine Schachfigur. Denk drüber nach. Leb wohl."~ */ JOURNAL #39515 /* ~Ich hab Saros gesagt, wie man ein Anarchist wird.~ */ EXIT
END

IF ~~ THEN BEGIN 13 // from: 5.0 5.1
  SAY #43451 /* ~"Sie sieht den Leuten auf den ersten Blick an, was ihnen fehlt und was zuviel ist. Keine Ahnung, wie sie das macht. Mein Vater sagte immer, sie würde irgendwie in eine andere Ebene aufsteigen. Er sagte, *sie* wäre ein geborener Göttermensch."~ */
  IF ~~ THEN REPLY #43452 /* ~"Danke. Ich hätte noch ein paar Fragen..."~ */ GOTO 4
  IF ~~ THEN REPLY #43453 /* ~"Danke. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 14 // from: 10.1
  SAY #43454 /* ~"Das sagtest du bereits! Kannst du dir nicht mal was Originelleres einfallen lassen? Wieso wiederholst du ständig dieselbe alte Leier? Was willst du denn sonst noch aus mir rauskriegen?"~ */
  IF ~~ THEN REPLY #43455 /* ~"Nein, ich glaub nicht. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 15 // from: 3.3 16.0 19.0 20.0 21.0 23.1 28.2 29.0
  SAY #43456 /* ~"Was willst du wissen?"~ */
  IF ~  Global("G_Test2","GLOBAL",5)
~ THEN REPLY #43457 /* ~"Thildon sagt, du hättest die Ahle am Tatort plaziert, um ihm den Mord anzuhängen, weil ihr eine Auseinandersetzung hattet."~ */ DO ~SetGlobal("G_Test2","GLOBAL",6)
~ GOTO 16
  IF ~  Global("G_Test2","GLOBAL",7)
~ THEN REPLY #43458 /* ~"Thildon sagt, daß du und Bedai-Lihn Anarchisten seid und daß ihr versucht, ihm die Sache anzuhängen, weil er es abgelehnt hatte, bei euch mitzumachen."~ */ DO ~SetGlobal("G_Test2","GLOBAL",8)
~ GOTO 17
  IF ~~ THEN REPLY #43459 /* ~"Ich weiß genug, um eine Entscheidung treffen zu können."~ */ GOTO 18
  IF ~~ THEN REPLY #43460 /* ~"Erzähl mir was über dich."~ */ GOTO 19
  IF ~  Global("Sabotage","GLOBAL",7)
~ THEN REPLY #43461 /* ~"Erzähl mir von der Großen Gießerei."~ */ GOTO 20
  IF ~  GlobalLT("Sabotage","GLOBAL",7)
~ THEN REPLY #43462 /* ~"Erzähl mir von der Großen Gießerei."~ */ GOTO 21
  IF ~  GlobalGT("G_Test2","GLOBAL",6)
~ THEN REPLY #43463 /* ~"Erzähl mir was über die Anarchisten."~ */ GOTO 22
  IF ~~ THEN REPLY #43464 /* ~"Erzähl mir was über die Leute hier."~ */ GOTO 23
  IF ~~ THEN REPLY #43465 /* ~"Vorerst nichts weiter. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 16 // from: 3.0 15.0
  SAY #43466 /* ~"Natürlich würde er das sagen! Nur weil er Schuld hat und dich dazu bringen will, woanders zu suchen! Ich habe gesehen, wie er den Mann getötet hat! Natürlich waren wir uneins, aber das heißt nicht, daß ich ihm den Tod wünschen würde. Nur daß er ein totaler Dussel ist, heißt noch lange nicht, daß er festgenommen werden sollte. Er sollte festgenommen werden, weil er Avildon umgebracht hat! Sag him, er braucht Beweise!"~ */
  IF ~~ THEN REPLY #43468 /* ~"Ich werd's ihm ausrichten. Ich hätte noch ein paar Fragen an dich."~ */ JOURNAL #39514 /* ~Saros bestreitet, Thildon die Sache einfach anhängen zu wollen. Er meint, Thildon solle für den Mord verhaftet werden. Als ob ich nicht schon längst wüßte, daß IRGENDWER das sicher muß.~ */ GOTO 15
  IF ~~ THEN REPLY #43469 /* ~"Mach ich. Leb wohl."~ */ JOURNAL #39514 /* ~Saros bestreitet, Thildon die Sache einfach anhängen zu wollen. Er meint, Thildon solle für den Mord verhaftet werden. Als ob ich nicht schon längst wüßte, daß IRGENDWER das sicher muß.~ */ EXIT
END

IF ~~ THEN BEGIN 17 // from: 3.1 15.1 22.0 22.1
  SAY #43470 /* ~Saros erblaßt. "Sie hat damit nichts zu tun. Ich habe es allein getan. Aber es war Thildon, der Avildon ins Getriebe geschubst hat. Ich hab die Ahle dort plaziert, um zu zeigen, daß er dort war... Schließlich bin ich noch ein Kind, und Kindern glaubt ja gewöhnlich keiner was. Klar? Das mit der Ahle war ich, aber ich habe es nur getan, damit er für sein Verbrechen auch bestraft wird."~ */
  IF ~~ THEN REPLY #43471 /* ~"Dann werde ich eine Entscheidung treffen, wie ich es Keldor beibringen soll."~ */ JOURNAL #39513 /* ~Saros hat zugegeben, daß er die Ahle selbst am Tatort plaziert hat, und macht kein Hehl draus. Er behauptet, er wollte damit sichergehen, daß man Thildons Verstrickung in den Mord genau untersuchen würde.~ */ GOTO 18
  IF ~~ THEN REPLY #43472 /* ~"Warum? Weshalb sollte ich nicht glauben, daß du dies tust, um ihm ein anderes Verbrechen heimzuzahlen?"~ */ JOURNAL #39513 /* ~Saros hat zugegeben, daß er die Ahle selbst am Tatort plaziert hat, und macht kein Hehl draus. Er behauptet, er wollte damit sichergehen, daß man Thildons Verstrickung in den Mord genau untersuchen würde.~ */ GOTO 27
  IF ~~ THEN REPLY #43473 /* ~"Das werden wir sehen. Leb wohl."~ */ JOURNAL #39513 /* ~Saros hat zugegeben, daß er die Ahle selbst am Tatort plaziert hat, und macht kein Hehl draus. Er behauptet, er wollte damit sichergehen, daß man Thildons Verstrickung in den Mord genau untersuchen würde.~ */ EXIT
END

IF ~~ THEN BEGIN 18 // from: 3.2 15.2 17.0
  SAY #43474 /* ~"Was für eine Entscheidung?" Er scheint den Tränen nahe.~ */
  IF ~~ THEN REPLY #43475 /* ~"Das wirst du schon noch rechtzeitig sehen."~ */ EXIT
END

IF ~~ THEN BEGIN 19 // from: 15.3
  SAY #43476 /* ~"Ich habe Angst. Ich befürchte, du könntest mich als den Mörder beschuldigen. Aber ich war es nicht!"~ */
  IF ~~ THEN REPLY #43477 /* ~"Das wird sich zeigen. Beantworte mir noch ein paar Fragen..."~ */ GOTO 15
  IF ~~ THEN REPLY #43478 /* ~"Ich werde es tun, wenn du schuldig bist. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 20 // from: 15.4
  SAY #43479 /* ~"Zur Zeit geht auch wirklich alles schief... Angeblich sei das eine weitere Prüfung für unser Leben... Ich weiß nicht..."~ */
  IF ~~ THEN REPLY #43480 /* ~"Dann beantworte mir noch ein paar Fragen..."~ */ GOTO 15
  IF ~~ THEN REPLY #43481 /* ~"Das Leben ist hart. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 21 // from: 15.5
  SAY #43482 /* ~"Ich bin hier aufgewachsen. Ich habe im Hauptbereich der Gießerei gespielt und bin durch die Baracken gerannt. Hier stinkt es, hier ist es laut, und hier gibt es Leute wie Thildon... Und doch ist es mein Zuhause."~ */
  IF ~~ THEN REPLY #43483 /* ~"Verstehe. Beantworte mir noch ein paar Fragen..."~ */ GOTO 15
  IF ~~ THEN REPLY #43484 /* ~"Verstehe. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 22 // from: 15.6
  SAY #43485 /* ~"Sie sind... Ein paar Leute haben mich angesprochen und wollten mir weis machen, ich sei genau der Richtige für sie, da ich überall Zugang habe und mich niemand verdächtigen würde... Ich hatte ja keine Ahnung, daß irgend jemand sterben würde. Ich dachte, ich sollte einfach nur Schmiere stehen. Aber dann hat Thildon Avildon ins Getriebe geschubst und gesagt, er würde mir das anhängen... Ich weiß nicht mal, wer mich da überhaupt angesprochen hatte!"~ */
  IF ~  Global("G_Test2","GLOBAL",8)
~ THEN REPLY #43486 /* ~"Dann wollten du und Bedai-Lihn Thildon die Sache anhängen? Das behauptet er jedenfalls. Er scheint sich sicher zu sein, daß sie ihre Finger im Spiel hatte."~ */ GOTO 17
  IF ~  Global("G_Test2","GLOBAL",7)
~ THEN REPLY #43487 /* ~"Dann wollten du und Bedai-Lihn Thildon die Sache anhängen? Das behauptet er jedenfalls. Er scheint sich sicher zu sein, daß sie ihre Finger im Spiel hatte."~ */ DO ~SetGlobal("G_Test2","GLOBAL",8)
~ GOTO 17
END

IF ~~ THEN BEGIN 23 // from: 15.7
  SAY #43488 /* ~"Sie sind Schmiede und Arbeiter. Sie meinen es gut, aber sie sind alle furchtbar ernsthaft und *langweilig*. Sie könnten ruhig etwas lebhafter sein. Wie zum Beispiel die Sinnsaten."~ */
  IF ~~ THEN REPLY #43489 /* ~"Du magst die Sinnsaten wohl?"~ */ GOTO 28
  IF ~~ THEN REPLY #43490 /* ~"Ich verstehe, weshalb du so denkst. Ich hätte noch ein paar Fragen..."~ */ GOTO 15
  IF ~~ THEN REPLY #43491 /* ~"Danke, daß du mir deine Zeit geopfert hast. Leb wohl."~ */ EXIT
END

IF WEIGHT #5 ~  GlobalLT("G_Test2","GLOBAL",4)
GlobalGT("G_Test2","GLOBAL",1)
~ THEN BEGIN 24 // from:
  SAY #43492 /* ~"Dieser arme Schmied... Ich kann gar nicht glauben, was mit ihm geschehen ist..."~ */
  IF ~  Global("Know_Saros","GLOBAL",0)
~ THEN REPLY #43493 /* ~"Ich habe gehört, du hättest womöglich gesehen, was ihm passiert ist, oder hättest ein paar Anhaltspunkte."~ */ DO ~SetGlobal("G_Test2","GLOBAL",4)
GiveItemCreate("Tawl",Protagonist,1,0,0)
SetGlobal("Know_Saros","GLOBAL",1)
~ GOTO 25
  IF ~~ THEN REPLY #43494 /* ~"Es ist ganz schön übel, so zwischen den Zahnrädern zu klemmen. Ich hätte ein paar Fragen an dich..."~ */ GOTO 26
  IF ~  GlobalGT("Know_Saros","GLOBAL",0)
~ THEN REPLY #43495 /* ~"Ich habe gehört, du hättest womöglich gesehen, was ihm passiert ist, oder hättest ein paar Anhaltspunkte."~ */ DO ~SetGlobal("G_Test2","GLOBAL",4)
GiveItemCreate("Tawl",Protagonist,1,0,0)
~ GOTO 25
  IF ~~ THEN REPLY #64942 /* ~"Ich auch nicht. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 25 // from: 24.0 24.2 26.0 26.1
  SAY #43496 /* ~"Wer hat das gesagt? Die Aufseherin? Sie hat recht. Ich komme nachts ab und zu hier vorbei, wenn niemand da ist." Er blickt verstohlen um sich. Dann neigt er den Kopf in deine Richtung. "Ich habe Thildon hier herausschleichen sehen. Dessen bin ich mir ganz sicher, weil er nämlich was fallengelassen hat." Er überreicht dir eine Ahle, in deren Griff der Name 'Thildon' eingraviert ist.~ */
  IF ~~ THEN REPLY #43497 /* ~"Danke. Ich komm bestimmt bald wieder, um mit dir zu reden."~ */ JOURNAL #39512 /* ~Saros hat mir eine Ahle, in die Thildons Namen eingraviert ist, gegeben. Er hat mir erzählt, daß er sie in der Mordnacht in der Nähe der Leiche gefunden hätte.~ */ EXIT
END

IF ~~ THEN BEGIN 26 // from: 24.1 30.0 31.0 32.0 33.1 34.2 35.0 36.0 37.0
  SAY #43498 /* ~"Frag mich alles, was du willst."~ */
  IF ~  Global("Know_Saros","GLOBAL",0)
Global("G_Test2","GLOBAL",2)
~ THEN REPLY #43499 /* ~"Ich habe gehört, du hättest womöglich gesehen, was ihm passiert ist, oder hättest ein paar Anhaltspunkte."~ */ DO ~SetGlobal("G_Test2","GLOBAL",4)
GiveItemCreate("Tawl",Protagonist,1,0,0)
SetGlobal("Know_Saros","GLOBAL",1)
~ GOTO 25
  IF ~  GlobalGT("Know_Saros","GLOBAL",0)
Global("G_Test2","GLOBAL",2)
~ THEN REPLY #43499 /* ~"Ich habe gehört, du hättest womöglich gesehen, was ihm passiert ist, oder hättest ein paar Anhaltspunkte."~ */ DO ~SetGlobal("G_Test2","GLOBAL",4)
GiveItemCreate("Tawl",Protagonist,1,0,0)
~ GOTO 25
  IF ~~ THEN REPLY #43500 /* ~"Erzähl mir was über dich."~ */ GOTO 30
  IF ~  Global("Sabotage","GLOBAL",7)
~ THEN REPLY #43501 /* ~"Erzähl mir von der Großen Gießerei."~ */ GOTO 31
  IF ~  GlobalLT("Sabotage","GLOBAL",7)
~ THEN REPLY #43502 /* ~"Erzähl mir von der Großen Gießerei."~ */ GOTO 32
  IF ~~ THEN REPLY #43503 /* ~"Erzähl mir was über die Leute hier."~ */ GOTO 33
  IF ~~ THEN REPLY #43504 /* ~"Vorerst nichts weiter. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 27 // from: 17.1
  SAY #43505 /* ~"Weil... Weil... Ich weiß nicht, wie du darauf kommst. Aber bitte... Sprich doch mit ihm und berichte, was ich dir gesagt habe. Dann kannst du selbst entscheiden."~ */
  IF ~~ THEN REPLY #43506 /* ~"Das werd ich tun. Bleib du hier."~ */ EXIT
END

IF ~~ THEN BEGIN 28 // from: 23.0
  SAY #43507 /* ~"Sie wissen, wie man das Leben lebt. Sie kennen den Sinn des Lebens. Nicht wie diese Leute, die ständig irgendwelche hohen Ideale vorschieben, die mir komplett schleierhaft sind. Meine Schwester sagt, das Leben sei mehr als das, was wir mit unseren Sinnesorganen wahrnehmen könnten. Aber woher will sie das wissen, wenn sie doch auch ihr ganzes Wissen über die Sinne aufnimmt? Ich weiß nicht, weshalb sich Leute so was ausdenken."~ */
  IF ~  GlobalGT("Know_Saros","GLOBAL",1)
~ THEN REPLY #43508 /* ~"Wer ist deine Schwester?"~ */ GOTO 29
  IF ~  Global("Know_Saros","GLOBAL",1)
~ THEN REPLY #43509 /* ~"Wer ist deine Schwester?"~ */ DO ~SetGlobal("Know_Saros","GLOBAL",2)
~ GOTO 29
  IF ~~ THEN REPLY #43510 /* ~"Hmm. Verstehe. Ich hätte da noch ein paar Fragen..."~ */ GOTO 15
  IF ~~ THEN REPLY #43511 /* ~"Danke, daß du mir deine Zeit geopfert hast. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 29 // from: 28.0 28.1
  SAY #43512 /* ~"Sarossa? Sie sieht den Leuten auf den ersten Blick an, was ihnen fehlt und was zuviel ist. Keine Ahnung, wie sie das macht. Mein Vater sagte immer, sie würde irgendwie in eine andere Ebene aufsteigen. Er sagte, *sie* wäre ein geborener Göttermensch."~ */
  IF ~~ THEN REPLY #43513 /* ~"Interessant. Ich würde dir gern noch ein paar Fragen stellen..."~ */ GOTO 15
  IF ~~ THEN REPLY #43514 /* ~"Danke. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 30 // from: 26.2
  SAY #43515 /* ~"Ich? Ich bin Saros. Ich bin hier aufgewachsen. Ich bin schon immer durch die Gießerei gerannt und habe hier gespielt... Ich kann eigentlich alle hier gut leiden, bis auf Thildon. Er behauptet ständig, ich sei verzogen und mein Vater sei ein schlechter Vater. Auf jeden Fall ist Thildon der größte Schlucker, der mir je begegnet ist."~ */
  IF ~~ THEN REPLY #43516 /* ~"Da bin ich mir sicher. Ich hätte noch ein paar Fragen."~ */ GOTO 26
  IF ~~ THEN REPLY #43517 /* ~"Verstanden. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 31 // from: 26.3
  SAY #43518 /* ~"Zur Zeit geht auch wirklich alles schief... Angeblich sei das eine weitere Prüfung für unser Leben... Ich weiß nicht..."~ */
  IF ~~ THEN REPLY #43519 /* ~"Dann beantworte mir noch ein paar Fragen..."~ */ GOTO 26
  IF ~~ THEN REPLY #43520 /* ~"Das Leben ist hart. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 32 // from: 26.4
  SAY #43521 /* ~"Ich bin hier aufgewachsen. Ich habe im Hauptbereich der Gießerei gespielt und bin durch die Baracken gerannt. Hier stinkt es, hier ist es laut, und hier gibt es Leute wie Thildon... Und doch ist es mein Zuhause."~ */
  IF ~~ THEN REPLY #43522 /* ~"Verstehe. Beantworte mir noch ein paar Fragen..."~ */ GOTO 26
  IF ~~ THEN REPLY #43523 /* ~"Verstehe. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 33 // from: 26.5
  SAY #43524 /* ~"Sie sind Schmiede und Arbeiter. Sie meinen es gut, aber sie sind alle furchtbar ernsthaft und *langweilig*. Sie könnten ruhig etwas lebhafter sein. Wie zum Beispiel die Sinnsaten."~ */
  IF ~~ THEN REPLY #43525 /* ~"Du magst die Sinnsaten wohl?"~ */ GOTO 34
  IF ~~ THEN REPLY #43526 /* ~"Ich verstehe, weshalb du so denkst. Ich hätte noch ein paar Fragen..."~ */ GOTO 26
  IF ~~ THEN REPLY #43527 /* ~"Danke, daß du mir deine Zeit geopfert hast. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 34 // from: 33.0
  SAY #43528 /* ~"Sie wissen, wie man das Leben lebt. Sie kennen den Sinn des Lebens. Nicht wie diese Leute, die ständig irgendwelche hohen Ideale vorschieben, die mir komplett schleierhaft sind. Meine Schwester sagt, das Leben sei mehr als das, was wir mit unseren Sinnesorganen wahrnehmen könnten. Aber woher will sie das wissen, wenn sie doch auch ihr ganzes Wissen über die Sinne aufnimmt? Ich weiß nicht, weshalb sich Leute so was ausdenken."~ */
  IF ~  GlobalGT("Know_Saros","GLOBAL",1)
~ THEN REPLY #43529 /* ~"Wer ist deine Schwester?"~ */ GOTO 35
  IF ~  Global("Know_Saros","GLOBAL",1)
~ THEN REPLY #43530 /* ~"Wer ist deine Schwester?"~ */ DO ~SetGlobal("Know_Saros","GLOBAL",2)
~ GOTO 35
  IF ~~ THEN REPLY #43531 /* ~"Hmm. Verstehe. Ich hätte da noch ein paar Fragen..."~ */ GOTO 26
  IF ~~ THEN REPLY #43532 /* ~"Danke, daß du mir deine Zeit geopfert hast. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 35 // from: 34.0 34.1
  SAY #43534 /* ~"Sarossa? Sie sieht den Leuten auf den ersten Blick an, was ihnen fehlt und was zuviel ist. Keine Ahnung, wie sie das macht. Mein Vater sagte immer, sie würde irgendwie in eine andere Ebene aufsteigen. Er sagte, *sie* wäre ein geborener Göttermensch."~ */
  IF ~~ THEN REPLY #43535 /* ~"Interessant. Ich würde dir gern noch ein paar Fragen stellen..."~ */ GOTO 26
  IF ~~ THEN REPLY #43536 /* ~"Danke. Leb wohl."~ */ EXIT
END

IF WEIGHT #6 ~  NumTimesTalkedToGT(0)
~ THEN BEGIN 36 // from:
  SAY #43537 /* ~"Du schon wieder? Was willst du?"~ */
  IF ~~ THEN REPLY #43538 /* ~"Ich möchte nur ein paar Fragen stellen..."~ */ GOTO 26
  IF ~~ THEN REPLY #43539 /* ~"Nichts. Leb wohl."~ */ EXIT
END

IF WEIGHT #7 ~  NumTimesTalkedTo(0)
~ THEN BEGIN 37 // from:
  SAY #43540 /* ~Die siehst einen Jungen mit rotblondem Haar. Er steht an der Schwelle zum Erwachsenwerden. Er bemüht sich, wie ein Erwachsener auszusehen, ohne recht zu wissen, wie das geht. Anders formuliert: Er sieht unschuldig aus. "Hallo Fremder. Was kann ich für dich tun?"~ */
  IF ~~ THEN REPLY #43541 /* ~"Du könntest mir ein paar Fragen beantworten..."~ */ DO ~SetGlobal("Know_Saros","GLOBAL",1)
~ GOTO 26
  IF ~~ THEN REPLY #43542 /* ~"Nichts, danke. Leb wohl."~ */ DO ~SetGlobal("Know_Saros","GLOBAL",1)
~ EXIT
END
