// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : GFWEAPS.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\de_DE\dialog.tlk
// dialogF  : (none)

BEGIN ~GFWEAPS~

IF ~  Global("Alarm2","GLOBAL",1)
~ THEN BEGIN 0 // from:
  SAY #5559 /* ~"WACHE! WACHE! Der Eindringling ist hier!"~ */
  IF ~~ THEN REPLY #5560 /* ~Erledigt.~ */ EXIT
END

IF ~  Global("Alarm1","GLOBAL",1)
~ THEN BEGIN 1 // from:
  SAY #5561 /* ~"Tut mit leid. Ich kann jetzt nicht mit dir reden. Vielleicht, wenn du zurückkommst."~ */
  IF ~~ THEN REPLY #5562 /* ~Geh weg.~ */ EXIT
END

IF ~  Global("Sabotage","GLOBAL",6)
~ THEN BEGIN 2 // from:
  SAY #5563 /* ~"Ich kann dir gar nicht genug danken, daß du diese verrückte Ingenieurin kalt gemacht hast. Wer konnte schon wissen, daß sie eine Anarchistin war? Wir hätten alle getötet werden können! Wie kann ich dir helfen?"~ */
  IF ~~ THEN REPLY #5564 /* ~"Du könntest mir sagen, für wen dieses Projekt unternommen wird."~ */ GOTO 3
  IF ~~ THEN REPLY #5565 /* ~"Du sagtest vorhin etwas von einer entscheidenden Phase?"~ */ GOTO 24
  IF ~~ THEN REPLY #5566 /* ~"Was ist das für ein Projekt?"~ */ GOTO 17
  IF ~~ THEN REPLY #5567 /* ~"Und was macht dieses Ding?"~ */ GOTO 18
  IF ~~ THEN REPLY #5568 /* ~"Weshalb die Geheimniskrämerei?"~ */ GOTO 19
  IF ~~ THEN REPLY #5569 /* ~"Und wann wird's fertig sein?"~ */ GOTO 20
  IF ~  Global("Join_Godsmen","GLOBAL",3)
~ THEN REPLY #5570 /* ~"Mich würde interessieren, ob du mir was über den Mord in der Hauptgießerei erzählen kannst."~ */ GOTO 4
  IF ~  !Dead("Kellera")
~ THEN REPLY #5571 /* ~"Was kannst du mir über deinen Boss erzählen?"
~ */ GOTO 5
  IF ~  Dead("Kellera")
~ THEN REPLY #5572 /* ~"Was kannst du mir über deinen Boss erzählen?"~ */ GOTO 13
  IF ~  !Global("Sabotage","GLOBAL",6)
!Global("F_Ass","GLOBAL",5)
~ THEN REPLY #5573 /* ~"Erzähl mir was über die Ingenieure, die an diesem Projekt arbeiten."~ */ GOTO 6
  IF ~~ THEN REPLY #5574 /* ~"Kannst du mir vielleicht sagen, wie ich zum Büro des Schreibers komme?"~ */ GOTO 7
  IF ~  GlobalLT("Join_Godsmen","GLOBAL",6)
~ THEN REPLY #5576 /* ~"Erzähl mir über die Göttermenschen."~ */ GOTO 8
  IF ~  False()
!Global("Sabotage","GLOBAL",6)
!Global("F_Ass","GLOBAL",5)
~ THEN REPLY #5577 /* ~"Erzähl mir was über die Ingenieure, die an diesem Projekt arbeiten."~ */ GOTO 9
  IF ~  Global("Sabotage","GLOBAL",6)
!Global("F_Ass","GLOBAL",5)
~ THEN REPLY #5578 /* ~"Erzähl mir was über die Ingenieure, die an diesem Projekt arbeiten."~ */ GOTO 10
  IF ~  !Global("Sabotage","GLOBAL",6)
Global("F_Ass","GLOBAL",5)
~ THEN REPLY #5579 /* ~"Erzähl mir was über die Ingenieure, die an diesem Projekt arbeiten."~ */ GOTO 11
  IF ~~ THEN REPLY #5580 /* ~"Im Moment nichts, danke."~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 2.0 14.6
  SAY #5575 /* ~"Nein, das kann ich dir nicht sagen. Erstens weiß ich es nicht, zweitens habe ich eine Geheimhaltungsvereinbarung unterschrieben, die mein Leben an das Gelingen dieses Projekts bindet. Wenn das Projekt fehlschlägt, könnte ich sterben - und alle meine Freunde hier auch. Das Risiko nehme ich nicht auf mich."~ */
  IF ~~ THEN REPLY #5581 /* ~"Kann ich verstehen. Dann erzähl mir halt von was anderem."~ */ GOTO 14
  IF ~~ THEN REPLY #5582 /* ~"Na gut. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 2.6 14.7
  SAY #5583 /* ~"Eine schreckliche Sache. Ich habe erfahren, daß das Opfer ein ziemlicher Dussel war, aber das heißt nicht, daß er gleich in das Getriebe gestoßen werden mußte. Da die Gießerei bereits die meiste Zeit des Jahres geschlossen ist, damit wir diese Arbeit hier fertigkriegen, muß es jemand von hier getan haben. Ich kann nur sagen, daß ich den Verbleib jedes einzelnen von uns Arbeitern bezeugen kann - wir haben uns nie lange genug aus den Augen verloren, und deshalb kann es keiner von uns gewesen sein."~ */
  IF ~~ THEN REPLY #5584 /* ~"Ich verstehe. Kannst du mir dann vielleicht ein paar Fragen beantworten?"~ */ GOTO 14
  IF ~~ THEN REPLY #5585 /* ~"Gut zu hören. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 2.7 14.8 16.0
  SAY #5586 /* ~"Normalerweise trifft man sie irgendwo hier.
Sie ist eine Githzerai, die von ihrem Volk verstoßen wurde. Sie arbeitet hier, weil sie hier kaum jemandem auffällt und deshalb ihre Schande gemildert wird. Sie ist hochintelligent und konsequent."
~ */
  IF ~  Global("Kellera_Met_Dakkon","AR0512",0)
NearbyDialog("DDakkon")
~ THEN REPLY #5587 /* ~"Ich frage mich, ob sie wohl mit meinem Freund Dak'kon hier reden würde."~ */ EXTERN ~DDAKKON~ 6
  IF ~~ THEN REPLY #5588 /* ~"Dann spreche ich vielleicht später mit ihr. Ich habe da noch ein paar Fragen an dich."~ */ GOTO 14
  IF ~~ THEN REPLY #5589 /* ~"Danke, daß du dir für mich Zeit genommen hast. Schönen Tag noch."~ */ EXIT
END

IF ~~ THEN BEGIN 6 // from: 2.9 14.10
  SAY #5590 /* ~"Unser Chefingenieur, Nihl Xander, ist ein wahres Genie. Er hat Dinge geschaffen, von denen ich nicht einmal zu träumen gewagt hatte. Man sagt, daß er sogar ein Faltportal entwickelt hat und in seiner Freizeit an einem Traumerzeuger arbeitet. Es geht das Gerücht, daß seine Familie vor langer Zeit beauftragt wurde, diese Maschine für einen Mann zu bauen, der selber nicht träumen konnte.
Unsere Ingenieurin, Bedai-Linh, ist noch nicht so lange hier, aber ein ebenso kluger Kopf. Sie ist zwar etwas launisch, aber ihre Arbeit ist vielversprechend und zeugt von großem Geschick.
Normalerweise trifft man sie in der Hauptversammlungshalle.
~ */
  IF ~~ THEN REPLY #5591 /* ~"Großartig. Und in der Zwischenzeit hätte ich da noch ein paar Fragen an dich."~ */ GOTO 14
  IF ~~ THEN REPLY #5592 /* ~"Eine Traummaschine, sagst du? Vielleicht sollte ich ihn doch mal aufsuchen."~ */ EXIT
END

IF ~~ THEN BEGIN 7 // from: 2.10 14.11
  SAY #5593 /* ~"Du findest das Büro des Schreibers direkt neben der Haupt-Gießerei."
~ */
  IF ~~ THEN REPLY #5594 /* ~"Danke. Beantworte mir noch ein paar andere Fragen."~ */ GOTO 14
  IF ~~ THEN REPLY #5595 /* ~"Danke."~ */ EXIT
END

IF ~~ THEN BEGIN 8 // from: 2.11 14.12
  SAY #5596 /* ~"Was ich von den Göttermenschen halte? Eine der besten Eigenschaften dieses Bundes ist die Tatsache, daß wir uns wirklich um die Menschen kümmern - nicht nur um Bundmitglieder, sondern um jeden. Jeder von uns kann irgendwann einmal ein Gott sein - oder noch mehr - und deshalb helfen wir jedem. Anderenfalls wären wir selbstsüchtig und noch mehr als selbstsüchtig - wir wären dumm. Und dumm sind wir nicht."~ */
  IF ~~ THEN REPLY #5597 /* ~"Die Zeit wird's zeigen. Beantworte mir noch eine Frage."~ */ GOTO 14
  IF ~~ THEN REPLY #5598 /* ~"Okay. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 9 // from: 2.12 14.13
  SAY #5599 /* ~"Du weißt bereits, daß Bedai-Lihn wegen Mordes verknackt wurde. Sie war gut - aber nicht vertrauenswürdig. Wie hätten wir wissen sollen, daß sie eine Mörderin ist?
Unser Chefingenieur ist Nihl Xander, ein genialer alter Mann. Man sagt, daß er ein Faltportal entwickelt hat und in seiner Freizeit an einem Traumerzeuger arbeitet. Es geht das Gerücht, daß seine Familie vor langer Zeit beauftragt wurde, diese Maschine für einen Mann zu bauen, der selber nicht träumen konnte. Man trifft ihn für gewöhnlich in der Hauptversammlungshalle"

~ */
  IF ~~ THEN REPLY #5600 /* ~"Großartig. Ich hab' da noch eine Frage."~ */ GOTO 14
  IF ~~ THEN REPLY #5601 /* ~"Ein Traumerzeuger? Ich werde ihn aufsuchen."~ */ EXIT
END

IF ~~ THEN BEGIN 10 // from: 2.13 14.14
  SAY #5602 /* ~"Den Mächten sei Dank, daß du dieses Miststück Bedai-Lihn daran hindern konntest, uns zu sabotieren. Das hätte uns das Leben gekostet.
Unseren anderen Ingenieur, Nihl Xander, kann man normalerweise in der Hauptversammlungshalle finden. In seinem Leben hat er eine ganze Reihe genialer Gerätschaften entwickelt, und es sieht zum Glück so aus, als ob er das auch weiterhin tun wird."

~ */
  IF ~~ THEN REPLY #5603 /* ~"Danke. Erzähl mir was andres."~ */ GOTO 14
  IF ~~ THEN REPLY #5604 /* ~"So sieht's also aus, meinst du? Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 11 // from: 2.14 14.15
  SAY #5605 /* ~"Wer wußte schon, daß Bedai-Lihn versuchen würde, das System der Göttermenschen zu stürzen? Wir wußten, daß sie eine fähige Ingenieurin war und sich mit Magie auskannte - wir wußten nicht, daß sie eine Anarchistin war.
Nihl Xander kann man normalerweise in der Hauptversammlungshalle finden. In seinem Leben hat er eine ganze Reihe genialer Gerätschaften entwickelt, und es sieht zum Glück so aus, als ob er das auch weiterhin tun wird."
~ */
  IF ~~ THEN REPLY #5606 /* ~"Genau. Wer konnte das schon wissen? Ich hätte da noch ein paar Fragen."~ */ GOTO 14
  IF ~~ THEN REPLY #5607 /* ~"Vielleicht werde ich mich doch mal nach ihm umsehen. Schönen Tag noch."~ */ EXIT
END

IF ~~ THEN BEGIN 12 // from: 15.0 15.3
  SAY #5608 /* ~Er nimmt dich genau unter die Lupe und beschließt dann, dir zu vertrauen. "Tja... gibt es im Moment überhaupt einen Punkt, den man nicht als Schwachpunkt bezeichnen müßte? Die äußere Hülle ist immer noch schwach - wir haben sie noch nicht gehärtet. Die Abfeuerungseinrichtungen sind mit Waffen bestückt, aber die sind momentan gefährlich instabil. Und der Dampfkessel im Inneren kann aufgrund des enormen Drucks jeden Moment in die Luft fliegen. Das Ding steht kurz davor, auseinanderzufallen. Ich glaube, der schwächste Punkt ist der Feuermechanismus an diesem Ende. Und wenn der hinüber ist, hat für uns Arbeiter das letzte Stündlein geschlagen."~ */
  IF ~~ THEN REPLY #5609 /* ~"Danke. Ich hätte noch ein paar Fragen."~ */ GOTO 14
  IF ~~ THEN REPLY #5610 /* ~"Danke. Auf bald."~ */ EXIT
END

IF ~~ THEN BEGIN 13 // from: 2.8 14.9 16.1
  SAY #5611 /* ~"Du willst was über Kel'lera wissen? Irgendein verfluchter Mistkerl hat sie umgebracht und mehr kann ich über sie nicht sagen. Das Gespräch ist beendet. Geh. Wache! Schafft diesen Dussel hier raus!"~ */
  IF ~~ THEN REPLY #5612 /* ~Verschwinde.~ */ EXIT
END

IF ~~ THEN BEGIN 14 // from: 3.0 4.0 5.1 6.0 7.0 8.0 9.0 10.0 11.0 12.0 15.6 17.3 18.3 19.4 20.4 21.0 22.1 23.1 24.1 25.0
  SAY #5613 /* ~"Jaa? Was willst du wissen?"~ */
  IF ~  GlobalLT("Sabotage","GLOBAL",4)
GlobalGT("Sabotage","GLOBAL",1)
~ THEN REPLY #5614 /* ~"Und wo sind nun die Schwachstellen an diesem Ding?"~ */ GOTO 15
  IF ~~ THEN REPLY #5615 /* ~"Du sagtest vorhin etwas von einer entscheidenden Phase?"~ */ GOTO 24
  IF ~~ THEN REPLY #5616 /* ~"Was ist das für ein Projekt?"~ */ GOTO 17
  IF ~~ THEN REPLY #5617 /* ~"Und was macht dieses Ding?"~ */ GOTO 18
  IF ~~ THEN REPLY #5618 /* ~"Weshalb die Geheimniskrämerei?"~ */ GOTO 19
  IF ~~ THEN REPLY #5619 /* ~"Und wann wird's fertig sein?"~ */ GOTO 20
  IF ~~ THEN REPLY #5620 /* ~"Du könntest mir sagen, für wen dieses Projekt unternommen wird."~ */ GOTO 3
  IF ~  Global("Join_Godsmen","GLOBAL",3)
~ THEN REPLY #5621 /* ~"Mich würde interessieren, ob du mir was über den Mord in der Hauptgießerei erzählen kannst."~ */ GOTO 4
  IF ~  !Dead("Kellera")
~ THEN REPLY #5622 /* ~"Was kannst du mir über deinen Boss erzählen?"~ */ GOTO 5
  IF ~  Dead("Kellera")
~ THEN REPLY #5623 /* ~"Was kannst du mir über deinen Boss erzählen?"~ */ GOTO 13
  IF ~  !Global("Sabotage","GLOBAL",6)
!Global("F_Ass","GLOBAL",5)
~ THEN REPLY #5624 /* ~"Erzähl mir was über die Ingenieure, die an diesem Projekt arbeiten."~ */ GOTO 6
  IF ~~ THEN REPLY #5626 /* ~"Kannst du mir vielleicht sagen, wie ich zum Büro des Schreibers komme?"~ */ GOTO 7
  IF ~  GlobalLT("Join_Godsmen","GLOBAL",6)
~ THEN REPLY #5627 /* ~"Erzähl mir über die Göttermenschen."~ */ GOTO 8
  IF ~  False()
!Global("Sabotage","GLOBAL",6)
!Global("F_Ass","GLOBAL",5)
~ THEN REPLY #5628 /* ~"Erzähl mir was über die Ingenieure, die an diesem Projekt arbeiten."~ */ GOTO 9
  IF ~  Global("Sabotage","GLOBAL",6)
!Global("F_Ass","GLOBAL",5)
~ THEN REPLY #5629 /* ~"Erzähl mir was über die Ingenieure, die an diesem Projekt arbeiten."~ */ GOTO 10
  IF ~  !Global("Sabotage","GLOBAL",6)
Global("F_Ass","GLOBAL",5)
~ THEN REPLY #5630 /* ~"Erzähl mir was über die Ingenieure, die an diesem Projekt arbeiten."~ */ GOTO 11
  IF ~  False()
~ THEN REPLY #16224 /* ~"Was für ein Projekt ist das?"~ */ DO ~SetGlobal("Sabotage","GLOBAL",1)
~ GOTO 17
  IF ~~ THEN REPLY #5631 /* ~"Im Moment gar nicht, danke."~ */ EXIT
END

IF ~~ THEN BEGIN 15 // from: 14.0
  SAY #5625 /* ~Er schaut dich mißtrauisch an. "Warum willst du das wissen?"~ */
  IF ~  CheckStatGT(Protagonist,12,INT)
CheckStatGT(Protagonist,12,CHR)
~ THEN REPLY #5632 /* ~"Weil auch ich ein wenig magische Herstellung betreibe, und da dachte ich, es wäre möglich, die Arbeit zu optimieren. Wenn du mir die Schwachstellen zeigen würdest, könnte ich vielleicht ein paar Lösungsansätze bieten."~ */ DO ~SetGlobal("Sabotage","GLOBAL",4)
~ GOTO 12
  IF ~  CheckStatGT(Protagonist,12,INT)
CheckStatLT(Protagonist,13,CHR)
~ THEN REPLY #5633 /* ~"Weil auch ich ein wenig magische Herstellung betreibe, und da dachte ich, es wäre möglich, die Arbeit zu optimieren. Wenn du mir die Schwachstellen zeigen würdest, könnte ich vielleicht ein paar Lösungsansätze bieten."~ */ GOTO 16
  IF ~  CheckStatLT(Protagonist,13,INT)
~ THEN REPLY #5634 /* ~"Weil dieses ganze Ding ziemlich gebrechlich wirkt."~ */ GOTO 16
  IF ~  CheckStatGT(Protagonist,14,CHR)
~ THEN REPLY #5635 /* ~"Weil ich beauftragt worden bin, mir dieses Projekt anzusehen, und da würde ich halt gerne die Mängel kennenlernen."~ */ DO ~SetGlobal("Sabotage","GLOBAL",4)
~ GOTO 12
  IF ~  CheckStatLT(Protagonist,15,CHR)
~ THEN REPLY #5636 /* ~"Weil ich beauftragt worden bin, mir dieses Projekt anzusehen, und da würde ich halt gerne die Mängel kennenlernen."~ */ GOTO 16
  IF ~~ THEN REPLY #5637 /* ~"Ich war halt einfach neugierig."~ */ GOTO 16
  IF ~~ THEN REPLY #5638 /* ~"Vergiß es. Ich hätte noch ein paar Fragen."~ */ GOTO 14
  IF ~~ THEN REPLY #5639 /* ~"Vergiss, dass ich gefragt habe. Lebe wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 16 // from: 15.1 15.2 15.4 15.5
  SAY #5640 /* ~Er schaut dich noch mißtrauischer an. "Das werde ich nicht beantworten. Wenn du so etwas wissen willst, dann sprichst du besser mit Kel'lera, nicht mit mir."~ */
  IF ~  !Dead("Kellera")
~ THEN REPLY #5641 /* ~"Wo ist Kel'lera?"~ */ GOTO 5
  IF ~  Dead("Kellera")
~ THEN REPLY #5642 /* ~"Wo ist Kel'lera?"~ */ GOTO 13
  IF ~~ THEN REPLY #5643 /* ~"Nein, vergiß meine Frage einfach. Schönen Tag noch."~ */ EXIT
END

IF ~~ THEN BEGIN 17 // from: 2.2 14.2 14.16 18.0 19.1 20.1
  SAY #5644 /* ~"Ich glaube, es ist eine Waffe. Wir sind nicht sicher, ob es eine Kriegs- oder Jagdwaffe ist - und bei allen Mächten: Wenn es eine Jagdwaffe ist, dann möchte ich die Kreatur nicht sehen, die damit getötet werden soll. Aber wenn wir fertig sind, dann kann sie sich mit dem Chaos-Schiff messen, das die Schicksalsgarde vor ein paar Jahren mit den Tanar-Ri gebaut hat. Zumindest theoretisch."~ */
  IF ~~ THEN REPLY #5645 /* ~"Wofür ist das gut?"~ */ GOTO 18
  IF ~~ THEN REPLY #5646 /* ~"Weshalb die ganze Geheimniskrämerei?"~ */ GOTO 19
  IF ~~ THEN REPLY #5647 /* ~"Und wann wird's fertig sein?"~ */ GOTO 20
  IF ~~ THEN REPLY #5648 /* ~"Ich hab' da noch ein paar Fragen."~ */ GOTO 14
  IF ~~ THEN REPLY #5649 /* ~"Auf bald."~ */ EXIT
END

IF ~~ THEN BEGIN 18 // from: 2.3 14.3 17.0 19.2 20.2
  SAY #5650 /* ~"Weißt du, ich bin nicht ganz sicher. Wenn du Genaueres wissen willst, mußt du mit einem der Ingenieure reden. Ich weiß, daß es über einen massiven, gebündelten Wärmestrahl verfügt - zumindest diesen Teil haben wir perfektioniert. Wir haben ihn sogar fest in das Gerät eingebaut. Es gibt noch andere Aspekte des Dings, an denen wir die Arbeit noch nicht einmal begonnen haben. Wir dürfen sie nicht sehen, solange wir nicht mit jedem einzelnen Abschnitt fertig sind."~ */
  IF ~~ THEN REPLY #5651 /* ~"Was war das doch gleich?"~ */ GOTO 17
  IF ~~ THEN REPLY #5652 /* ~"Weshalb die ganze Geheimniskrämerei?"~ */ GOTO 19
  IF ~~ THEN REPLY #5653 /* ~"Und wann wird's fertig sein?"~ */ GOTO 20
  IF ~~ THEN REPLY #5654 /* ~"Könntest du dann vielleicht ein paar andere Fragen beantworten?"~ */ GOTO 14
  IF ~~ THEN REPLY #5655 /* ~"Danke. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 19 // from: 2.4 14.4 17.1 18.1 20.3
  SAY #5656 /* ~"Wenn du wüßtest, daß ein Feind eine Waffe entwickelt, die er gegen dich einsetzen will, würdest du nicht alles in deiner Macht Stehende tun, um sie zu vernichten? Wir wissen nicht einmal, für wen sie ist. Wir vertrauen einfach auf das Wort der hohen Tiere, die uns versichert haben, daß sie für keine Zwecke verwendet wird, die wir nicht gutheißen. Keiner von uns weiß, wer uns den Auftrag zur Herstellung gegeben hat, und deshalb erfährt jemand, der auf ihre Zerstörung aus ist, von uns kein Wort... besonders deshalb, weil wir mit unserem Leben bürgen."~ */
  IF ~~ THEN REPLY #5657 /* ~"Was meinst du damit?"~ */ GOTO 21
  IF ~~ THEN REPLY #5658 /* ~"Was war das doch gleich?"~ */ GOTO 17
  IF ~~ THEN REPLY #5659 /* ~"Und wofür ist es gut?"~ */ GOTO 18
  IF ~~ THEN REPLY #5660 /* ~"Und wann wird's fertig sein?"~ */ GOTO 20
  IF ~~ THEN REPLY #5661 /* ~"Könntest du dann vielleicht ein paar andere Fragen beantworten?"~ */ GOTO 14
  IF ~~ THEN REPLY #5662 /* ~"Danke. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 20 // from: 2.5 14.5 17.2 18.2 19.3
  SAY #5663 /* ~"Es wird wahrscheinlich noch zehn Jahre dauern - aber der heikelste Teil wird dieses Jahr erledigt. Es gibt einige magische Rituale, die zelebriert werden müssen, und die brauchen Zeit. Wir werden alle aufatmen, wenn wir wissen, daß wir nicht länger für ein Projekt bürgen, das aufgrund seiner Instabilität explodieren wird."~ */
  IF ~~ THEN REPLY #5664 /* ~"Bürgen? Wie ist das zu verstehen?"~ */ GOTO 21
  IF ~~ THEN REPLY #5665 /* ~"Was war das doch gleich?"~ */ GOTO 17
  IF ~~ THEN REPLY #5666 /* ~"Und wofür ist es gut?"~ */ GOTO 18
  IF ~~ THEN REPLY #5667 /* ~"Weshalb die ganze Geheimniskrämerei?"~ */ GOTO 19
  IF ~~ THEN REPLY #5668 /* ~"Ich habe da noch mehr Fragen an dich."~ */ GOTO 14
  IF ~~ THEN REPLY #5669 /* ~"Danke. Auf bald."~ */ EXIT
END

IF ~~ THEN BEGIN 21 // from: 19.0 20.0
  SAY #5670 /* ~"Aufgrund der Art dieses Projekts - wegen der Geheimhaltung und all dem, ganz zu schweigen von dem Hokuspokus, mit dessen Hilfe wir überhaupt an der Maschine arbeiten können - mußten wir mit einem Teil unseres Lebens bürgen. Wir bekommen unser Leben zurück, wenn das Projekt abgeschlossen ist - wenn es aber nicht funktioniert oder - die Mächte stehen uns bei - wenn es sabotiert wird, kostet es uns das Leben."~ */
  IF ~~ THEN REPLY #5671 /* ~"Hört sich schlimm an. Ich habe da aber noch mehr Fragen an dich."~ */ GOTO 14
  IF ~~ THEN REPLY #5672 /* ~"Hört sich schlimm an. Viel Glück dabei. Leb wohl."~ */ EXIT
END

IF ~  NumTimesTalkedTo(0)
~ THEN BEGIN 22 // from:
  SAY #5673 /* ~Du siehst einen, in die Kleidung eines Göttermenschen gehüllten Tiefling, der das Ding in der Mitte des Raums genau inspiziert. "Ich kann jetzt wirklich nicht reden. Wir sind in einer entscheidenden Phase."~ */
  IF ~~ THEN REPLY #5674 /* ~"Eine entscheidende Phase? Wovon?"~ */ GOTO 24
  IF ~~ THEN REPLY #5675 /* ~"Ich hatte gehofft, du könntest mir ein paar Fragen beantworten."~ */ GOTO 14
  IF ~~ THEN REPLY #5676 /* ~"Tut mir leid, dich gestört zu haben. Leb wohl."~ */ EXIT
END

IF ~  NumTimesTalkedToGT(0)
~ THEN BEGIN 23 // from:
  SAY #5677 /* ~"Du schon wieder? Was brauchst du diesmal?"~ */
  IF ~~ THEN REPLY #5678 /* ~"Du sagtest vorhin etwas von einer entscheidenden Phase?"~ */ GOTO 24
  IF ~~ THEN REPLY #5679 /* ~"Ich hätte ein paar Fragen an dich."~ */ GOTO 14
  IF ~~ THEN REPLY #5680 /* ~"In diesem Fall, werde ich dich in Ruhe lassen. Lebe wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 24 // from: 2.1 14.1 22.0 23.0
  SAY #5681 /* ~"Ja. Bei dem Projekt, an dem wir arbeiten, handelt es sich um eine Waffe, die auch in Friedenszeiten ungeahnte Einsatzmöglichkeiten bietet. Wir stehen noch nicht vor dem Abschluß, aber wir sind in einer kritischen Phase - kritisch genug, um uns alle ins Totenbuch zu bringen, wenn irgendein Dussel jetzt versagt."~ */
  IF ~~ THEN REPLY #5682 /* ~"Was machst du denn da?"~ */ GOTO 25
  IF ~~ THEN REPLY #5683 /* ~"Oh. Ich hätte noch ein paar Fragen."~ */ GOTO 14
  IF ~~ THEN REPLY #5684 /* ~"Ich verstehe. Viel Glück."~ */ EXIT
END

IF ~~ THEN BEGIN 25 // from: 24.0
  SAY #5685 /* ~"Wir stellen die Variablen im unteren magischen Resonanzbereich des Geräts ein. Ein einziger Fehler könnte das ganze Projekt scheitern lassen. Und wenn das Projekt fehlschlägt, so gehen auch wir in der dann entstehenden magischen Welle unter."~ */
  IF ~~ THEN REPLY #5686 /* ~"Ich verstehe. Kannst du mir dann vielleicht ein paar andere Fragen beantworten?"~ */ GOTO 14
  IF ~~ THEN REPLY #5687 /* ~"Ich verstehe. Leb wohl."~ */ EXIT
END
