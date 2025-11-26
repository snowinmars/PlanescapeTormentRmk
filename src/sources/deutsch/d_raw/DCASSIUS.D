// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DCASSIUS.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\de_DE\dialog.tlk
// dialogF  : (none)

BEGIN ~DCASSIUS~

IF ~  NumTimesTalkedTo(0)
~ THEN BEGIN 0 // from:
  SAY #50718 /* ~Du siehst einen grobschlächtigen, korpulenten Mann, aus dessen Körper überall Fettwülste hervorquellen. Er wendet sich dir langsam zu, und als sein Blick auf dich fällt, drängt sich dir plötzlich ein Gefühl unaussprechlicher Gefahr auf. "Ich trage die wahre Essenz des Schwertes in mir. Was du vor dir siehst, ist nur eine oberflächliche Hülle. Die Klinge ist in mir. Du mußt mich besiegen, um sie zu bekommen."~ */
  IF ~  HasItem("Bandage",Myself)
~ THEN REPLY #50719 /* ~"Wer bist du?"~ */ GOTO 1
  IF ~  Global("Trias_Sword","GLOBAL",1)
HasItem("Bandage",Myself)
~ THEN REPLY #59402 /* ~"Ich bin hier, um das Schwert zu holen."~ */ GOTO 2
  IF ~  !HasItem("Bandage",Myself)
~ THEN REPLY #59407 /* ~"Ach, vergiß es. Leb wohl."~ */ GOTO 19
  IF ~  HasItem("Bandage",Myself)
~ THEN REPLY #67172 /* ~"Ach, vergiß es. Leb wohl."~ */ GOTO 2
  IF ~  !HasItem("Bandage",Myself)
~ THEN REPLY #67172 /* ~"Ach, vergiß es. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0 7.0
  SAY #59635 /* ~Seine tiefe Stimme tönt unter den Fettschichten hervor. "Mein Name ist Cassius. Ich war einst die größte Waffe eines verstorbenen Herrn des Abgrund, und seine Erben suchen noch immer nach mir. Ich bin ein furchtbares Geheimnis der chaotischen Ebenen, und ich bin der Hüter dieser Klinge."~ */
  IF ~~ THEN REPLY #59670 /* ~"Du warst eine *Waffe?*~ */ GOTO 3
  IF ~~ THEN REPLY #59671 /* ~"Du siehst gar nicht so gefährlich aus..."~ */ GOTO 3
  IF ~  Global("Trias_Sword","GLOBAL",1)
~ THEN REPLY #59673 /* ~"Ich bin hier, um das Schwert zu holen."~ */ GOTO 2
  IF ~~ THEN REPLY #59674 /* ~"Verstehe. Leb wohl."~ */ GOTO 2
END

IF ~~ THEN BEGIN 2 // from: 0.1 0.3 1.2 1.3 3.1 3.2 4.0 4.2 5.0 5.2 6.0 6.1 7.1
  SAY #59637 /* ~Seine Stimme ist abgrundtief. "Dieses Schwert versorgt das Gefängnis von Verdammnis mit Energie. Wird es entfernt, werden alle Insassen, die verdammt sind, in Vergessenheit zu geraten, befreit. Ich habe den Auftrag, dies zu verhindern. Willst du die Klinge?"~ */
  IF ~~ THEN REPLY #59705 /* ~"Ja."~ */ GOTO 9
  IF ~~ THEN REPLY #59706 /* ~"Nein."~ */ GOTO 8
  IF ~~ THEN REPLY #59707 /* ~"Ich wollte eigentlich gehen."~ */ GOTO 8
END

IF ~~ THEN BEGIN 3 // from: 1.0 1.1
  SAY #59639 /* ~"Ich war einst die wirkungsvollste Waffe im ganzen Abgrund, geformt nach den Wünschen meines Herrn. Ich war imstande, Verderben über ein jedes Wesen hereinzubringen. Ich habe mehr Feinde meines toten Herrn niedergemetzelt, als die meisten Leute Augenblicke in ihrem Leben haben. Mein Bruder, mein fahler Schatten, mein Xekiel, tötet noch immer in den Tiefen des Abgrund."~ */
  IF ~~ THEN REPLY #59710 /* ~"Warum bist du fortgegangen?"~ */ GOTO 4
  IF ~  Global("Trias_Sword","GLOBAL",1)
~ THEN REPLY #59711 /* ~"Aha. Also, ich bin hier, um das Schwert zu holen."~ */ GOTO 2
  IF ~~ THEN REPLY #59712 /* ~"Schon gut. Ich wollte gerade gehen."~ */ GOTO 2
END

IF ~~ THEN BEGIN 4 // from: 3.0
  SAY #59641 /* ~"Mein Herr sank ins Herz des Abgrund, während ich morden war. Als ich von dem Anschlag zurückkehrte, war er verschieden, und seine Erben kamen herbeigeeilt, um mich einzufordern. Keiner von ihnen konnte mich zähmen, also ging ich fort. Meine jetzige Pflicht ist sehr angenehm. Alle, die herkommen, töte ich. Es ist nicht besonders anstrengend."~ */
  IF ~  Global("Trias_Sword","GLOBAL",1)
~ THEN REPLY #59715 /* ~"Ich bin hier, um die Klinge zu holen."~ */ GOTO 2
  IF ~~ THEN REPLY #59717 /* ~"Könntest du mich auch töten?"~ */ GOTO 5
  IF ~~ THEN REPLY #59719 /* ~"Verstehe. Leb wohl."~ */ GOTO 2
END

IF ~~ THEN BEGIN 5 // from: 4.1
  SAY #59643 /* ~Er betrachtet dich aufmerksam. Nach einer Weile verkündet er: "Ich könnte es, obwohl es ein harter Kampf werden würde. Willst du, daß ich dich töte?"~ */
  IF ~  Global("Trias_Sword","GLOBAL",1)
~ THEN REPLY #59722 /* ~"Ich bin wirklich nur hier, um die Klinge zu holen."~ */ GOTO 2
  IF ~~ THEN REPLY #59724 /* ~"Versuch es doch mal..."~ */ GOTO 6
  IF ~~ THEN REPLY #59726 /* ~"Nein. Ich gehe lieber."~ */ GOTO 2
END

IF ~~ THEN BEGIN 6 // from: 5.1
  SAY #59644 /* ~"Sag mir, daß du gekommen bist, die Klinge zu holen, und ich werde dich vernichten."~ */
  IF ~~ THEN REPLY #59729 /* ~"Ich bin hier, um die Klinge zu holen."~ */ GOTO 2
  IF ~~ THEN REPLY #59730 /* ~"Vergiß es. Ich hau hab."~ */ GOTO 2
END

IF ~  NumTimesTalkedToGT(0)
~ THEN BEGIN 7 // from:
  SAY #59645 /* ~Cassius' Stimme schält sich aus den Tiefen seines fetten Oberkörpers. "Suchst du die Klinge?"~ */
  IF ~  HasItem("Bandage",Myself)
~ THEN REPLY #59733 /* ~"Erzähl mir zuerst was über dich."~ */ GOTO 1
  IF ~  HasItem("Bandage",Myself)
~ THEN REPLY #59734 /* ~"Ja."~ */ GOTO 2
  IF ~  !HasItem("Bandage",Myself)
~ THEN REPLY #59735 /* ~"Noch nicht."~ */ GOTO 19
  IF ~~ THEN REPLY #12012 /* ~"Noch nicht. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 8 // from: 2.1 2.2 9.3 10.3 11.3 12.3
  SAY #59646 /* ~"Wenn du die wahre Essenz der Klinge willst, mußt du zurückkommen und mit mir um sie kämpfen. Wie auch immer, wir werden uns duellieren."~ */
  IF ~~ THEN REPLY #59736 /* ~"Nun denn. Leb wohl."~ */ JOURNAL #59745 /* ~Ein ekelhaft fetter Mann wollte mitten im Gefängnis mit mir um die Klinge kämpfen. Er hat gesagt, er trüge ihre Essenz in sich, und wenn ich sie haben wolle, müsse ich es mit ihm aufnehmen.~ */ EXIT
END

IF ~~ THEN BEGIN 9 // from: 2.0
  SAY #59648 /* ~"Also dann, es gelten folgende Regeln: Du mußt zwischen drei Möglichkeiten wählen: Kraft, Geist, oder Schnelligkeit. Solltest du in einer von ihnen versagen, werde ich dich vernichten."~ */
  IF ~~ THEN REPLY #59746 /* ~"Ich wähle Kraft."~ */ GOTO 10
  IF ~~ THEN REPLY #59747 /* ~"Ich wähle Geist."~ */ GOTO 11
  IF ~~ THEN REPLY #59748 /* ~"Ich wähle Schnelligkeit."~ */ GOTO 12
  IF ~~ THEN REPLY #59749 /* ~"Vergiß es. Ich komme später wieder."~ */ GOTO 8
END

IF ~~ THEN BEGIN 10 // from: 9.0 11.1 12.1
  SAY #59649 /* ~"Dann laß uns kämpfen. Wenn du gewinnst, sollst du die Klinge von meinem Leichnam haben. Gewinne ich, werde ich mich an deinen Überresten weiden."~ */
  IF ~~ THEN REPLY #59751 /* ~"Nun gut."~ */ DO ~Enemy()
ForceAttack(Protagonist,Myself)
Attack(Protagonist)
~ JOURNAL #59737 /* ~Ich habe mich entschlossen, mich einer Machtprobe zu stellen, um die Klinge zu erhalten. Cassius ist stark, und er hat mir gedroht, mich zu Hackfleisch zu machen, wenn ich ihm unterliege.~ */ EXIT
  IF ~~ THEN REPLY #59752 /* ~"In dem Fall wähle ich Geist."~ */ GOTO 11
  IF ~~ THEN REPLY #59753 /* ~"In dem Fall wähle ich Schnelligkeit."~ */ GOTO 12
  IF ~~ THEN REPLY #59754 /* ~"In dem Fall, vergiß es."~ */ GOTO 8
END

IF ~~ THEN BEGIN 11 // from: 9.1 10.1 12.2
  SAY #59651 /* ~"Dann werde ich dir drei Rätsel stellen. Wenn du sie nicht löst, werde ich dich vernichten und einen Dudelsack aus deinem Schädel formen, auf dem ich deinem Geist bis in alle Ewigkeit ein Lied der Folter spielen werde."~ */
  IF ~~ THEN REPLY #59757 /* ~"Ist gut. Stell deine Rätsel."~ */ JOURNAL #59738 /* ~Ich werde mit Cassius einen geistigen Wettstreit austragen, der aus drei Rätseln besteht. Wenn ich sie lösen kann, bekomme ich die Klinge. Wenn ich versage, hat er mir gedroht, meinen Geist und mein Skelett zu einem Instrument zu machen.~ */ GOTO 14
  IF ~~ THEN REPLY #59761 /* ~"In dem Fall wähle ich Kraft."~ */ GOTO 10
  IF ~~ THEN REPLY #59762 /* ~"In dem Fall wähle ich Schnelligkeit."~ */ GOTO 12
  IF ~~ THEN REPLY #59764 /* ~"In dem Fall, vergiß es."~ */ GOTO 8
END

IF ~~ THEN BEGIN 12 // from: 9.2 10.2 11.2
  SAY #59653 /* ~"Dann mußt du eine Bandagenrolle aus ihrem Versteck an meinem Körper stehlen. Wenn du das schaffst, sprich wieder mit mir, und ich werde die Klinge aus ihrem Versteck holen. Scheiterst du, dann werden die Feuer der Grube dir gütig erscheinen im Vergleich zu den Qualen, denen ich dich unterwerfen werde. Willst du anfangen?"~ */
  IF ~~ THEN REPLY #59765 /* ~"Nun gut."~ */ JOURNAL #59739 /* ~Ich beginne einen Geschwindigkeitstest mit Cassius, dem Wächter des Schwertes. Wenn ich eine Rolle Bandagen von seinem fetten Körper wegschnappen kann, muß ich noch einmal mit ihm sprechen, und dann wird er mir die Klinge geben. Wenn ich es nicht schaffe, droht er, mich zu zerstören.~ */ GOTO 13
  IF ~~ THEN REPLY #59766 /* ~"In dem Fall wähle ich Kraft."~ */ GOTO 10
  IF ~~ THEN REPLY #59767 /* ~"In dem Fall wähle ich Geist."~ */ GOTO 11
  IF ~~ THEN REPLY #59768 /* ~"In dem Fall, vergiß es."~ */ GOTO 8
END

IF ~~ THEN BEGIN 13 // from: 12.0
  SAY #59655 /* ~"Dann nimm sie. Sonst muß ich annehmen, daß du die Klinge auf andere Art zu erlangen suchst."~ */
  IF ~~ THEN REPLY #59769 /* ~"Schön. Wir werden sehen."~ */ EXIT
END

IF ~~ THEN BEGIN 14 // from: 11.0
  SAY #59657 /* ~"Wir beginnen mit einem klassischen Rätsel: Was geht am Morgen auf vier Beinen, am Mittag auf zwei Beinen, und am Abend auf drei Beinen?"~ */
  IF ~  CheckStatGT(Protagonist,13,INT)
~ THEN REPLY #59770 /* ~Du weißt die Antwort: "Der Mensch, der bei der Geburt auf allen Vieren krabbelt, in der Jugend auf zwei Beinen läuft, und sich im Alter auf einen Stock stützt."~ */ GOTO 16
  IF ~  CheckStatLT(Protagonist,14,INT)
~ THEN REPLY #59771 /* ~"Ein Mann?"~ */ GOTO 16
  IF ~~ THEN REPLY #59772 /* ~"Ein verwundeter Mistkäfer?"~ */ GOTO 15
  IF ~~ THEN REPLY #59773 /* ~"Ein Bär?"~ */ GOTO 15
  IF ~~ THEN REPLY #59774 /* ~"Ein gestaltenwandelnder Tanar-Ri?"~ */ GOTO 15
END

IF ~~ THEN BEGIN 15 // from: 14.2 14.3 14.4 16.1 16.2 16.4 17.2 17.3 17.4
  SAY #59659 /* ~"Das ist falsch. Du sollst in erlesenen Qualen sterben."~ */
  IF ~~ THEN REPLY #59775 /* ~"Warte!"~ */ DO ~Enemy()
Attack(Protagonist)
~ EXIT
  IF ~~ THEN REPLY #59776 /* ~Kämpfe.~ */ DO ~Enemy()
ForceAttack(Protagonist,Myself)
Attack(Protagonist)
~ EXIT
END

IF ~~ THEN BEGIN 16 // from: 14.0 14.1
  SAY #59661 /* ~"Das ist richtig. Nun zum zweiten Rätsel: Ich knurre, doch Worte kommen nie über meine Lippen. Ich kann leer sein, doch niemals bin ich voll. Was bin ich?"~ */
  IF ~  CheckStatGT(Protagonist,15,INT)
~ THEN REPLY #59777 /* ~Du weißt die Antwort: "Bist du der Hunger?"~ */ GOTO 17
  IF ~~ THEN REPLY #59778 /* ~"Ein Geist?"~ */ GOTO 15
  IF ~~ THEN REPLY #59779 /* ~"Ein Gefangener ohne Zunge?"~ */ GOTO 15
  IF ~  CheckStatLT(Protagonist,16,INT)
~ THEN REPLY #59780 /* ~"Hunger?"~ */ GOTO 17
  IF ~~ THEN REPLY #59781 /* ~"Der Mond?"~ */ GOTO 15
END

IF ~~ THEN BEGIN 17 // from: 16.0 16.3
  SAY #59662 /* ~"Ja. Das dritte Rätsel lautet: Was fliegt und kann niemals still stehen? Was verschlingt alles, was es berührt, und ißt doch nichts? Was kann nie verdient oder verliehen werden, und wird doch immer verschwendet?"~ */
  IF ~  CheckStatGT(Protagonist,16,INT)
~ THEN REPLY #59782 /* ~Du weißt die Antwort: "Die Antwort lautet: die Zeit."~ */ JOURNAL #59740 /* ~Ich habe Cassius, den Hüter des Schwertes im Gefängnis von Verdammnis, in einem geistigen Wettstreit besiegt. Seine Fragen waren bemerkenswert einfach.~ */ GOTO 18
  IF ~  CheckStatLT(Protagonist,17,INT)
~ THEN REPLY #59783 /* ~"Ist es die Zeit?"~ */ JOURNAL #59740 /* ~Ich habe Cassius, den Hüter des Schwertes im Gefängnis von Verdammnis, in einem geistigen Wettstreit besiegt. Seine Fragen waren bemerkenswert einfach.~ */ GOTO 18
  IF ~~ THEN REPLY #59784 /* ~"Ist es das Feuer?"~ */ GOTO 15
  IF ~~ THEN REPLY #59785 /* ~"Ist es die Macht?"~ */ GOTO 15
  IF ~~ THEN REPLY #59786 /* ~"Ist es die Zauberei?"~ */ GOTO 15
END

IF ~~ THEN BEGIN 18 // from: 17.0 17.1
  SAY #59663 /* ~"Du hast mich geschlagen. Deine Erscheinung ließ mich annehmen, daß deine geistigen Fähigkeiten deinem vernarbten Äußeren entsprechen. Ich bin meiner Pflicht nicht gerecht geworden, und ich händige dir die Klinge aus. Ich muß diesen Ort verlassen."~ */
  IF ~~ THEN REPLY #59787 /* ~"Danke."~ */ DO ~SetGlobal("Cassius","GLOBAL",10)
AddexperienceParty(5000)
GiveItemCreate("Celestia",Protagonist,1,0,0)
StickySinisterPoof("S113SMOK",Myself,1)
DestroySelf()
~ EXIT
END

IF ~~ THEN BEGIN 19 // from: 0.2 7.2
  SAY #59665 /* ~"Deine Erscheinung täuscht über deine Fähigkeiten hinweg. Du bist wirklich ein zu gewiefter Dieb, als daß ich deine Versuche aufhalten könnte. Dies ist der Schlüssel. Ich muß diesen Ort verlassen, um meine Schande zu verbergen."~ */
  IF ~~ THEN REPLY #59788 /* ~"Dann leb wohl."~ */ DO ~SetGlobal("Cassius","GLOBAL",10)
AddexperienceParty(5000)
GiveItemCreate("Celestia",Protagonist,1,0,0)
StickySinisterPoof("S113SMOK",Myself,1)
DestroySelf()
~ JOURNAL #59741 /* ~Ich habe Cassius, den Hüter des Schwertes im Gefängnis von Verdammnis, in einem Wettstreit der Schnelligkeit besiegt. Er war bemerkenswert langsam.~ */ EXIT
END
