// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DGRIS.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\de_DE\dialog.tlk
// dialogF  : (none)

BEGIN ~DGRIS~

IF ~  Global("Speak_With_Dead","GLOBAL",0)
NearbyDialog("DAnnah")
~ THEN BEGIN 0 // from:
  SAY #2925 /* ~Dies ist die Leiche eines Mannes mit einem überraschten Ausdruck auf seinem hakennasigen Gesicht. Es ist schwer zu sagen, woran er gestorben ist: Er könnte an den vielen schrecklichen Hiebwunden in seinem Bauch und Hals gestorben sein oder am Blutverlust, den er erlitten hat, als sein rechter Arm fast von seiner Schulter abgetrennt wurde.~ */
  IF ~~ THEN DO ~SetGlobal("Know_Gris_Dead","GLOBAL",1)
~ EXTERN ~DANNAH~ 114
END

IF ~  Global("Speak_With_Dead","GLOBAL",0)
!NearbyDialog("DAnnah")
~ THEN BEGIN 1 // from:
  SAY #2926 /* ~Dies ist die Leiche eines Mannes mit einem überraschten Ausdruck auf seinem hakennasigen Gesicht. Es ist schwer zu sagen, woran er gestorben ist: Er könnte an den vielen schrecklichen Hiebwunden in seinem Bauch und Hals gestorben sein oder am Blutverlust, den er erlitten hat, als sein rechter Arm fast von seiner Schulter abgetrennt wurde.~ */
  IF ~~ THEN REPLY #20657 /* ~"Das ist nicht gut. Wenn ich mit ihm reden könnte, hätte er sicher ein tolle Geschichte parat..."~ */ EXIT
END

IF ~  Global("Speak_With_Dead","GLOBAL",1)
Global("Quint_Item","GLOBAL",2)
~ THEN BEGIN 2 // from:
  SAY #20658 /* ~Die hakennasige Leiche zuckt leicht, und die verschleimte Stimme von Gris quillt hervor. "Hast du's gefunden? Hab' dir genaue Anweisungen gegeben, ja, und du treibst dich rum, während ich hier verrotte. Ach, was soll's. Was kann der alte, tote Gris für dich tun?"~ */
  IF ~  GlobalGT("Quint_Item","GLOBAL",0)
~ THEN REPLY #20659 /* ~"Wo ist Quints Talisman noch mal?"~ */ GOTO 4
  IF ~  Global("Know_GStash","GLOBAL",1)
~ THEN REPLY #20660 /* ~"Wo war dein Versteck noch mal?"~ */ GOTO 5
  IF ~~ THEN REPLY #20661 /* ~"Was ist eigentlich mit dir geschehen?"~ */ GOTO 6
  IF ~~ THEN REPLY #20662 /* ~"Was kannst du mir über die Katakomben erzählen?"~ */ GOTO 7
  IF ~  Global("Know_Gris","GLOBAL",1)
~ THEN REPLY #20663 /* ~"Erzähl mir was über dich."~ */ GOTO 15
  IF ~  !NearbyDialog("DAnnah")
Global("Know_Gris","GLOBAL",0)
~ THEN REPLY #20664 /* ~"Erzähl mir was über dich."~ */ DO ~SetGlobal("Know_Gris","GLOBAL",1)
SetGlobal("Know_Gris_Dead","GLOBAL",1)
~ GOTO 8
  IF ~  NearbyDialog("DAnnah")
Global("Know_Gris","GLOBAL",0)
~ THEN REPLY #20665 /* ~"Erzähl mir was über dich."~ */ DO ~SetGlobal("Know_Gris","GLOBAL",1)
SetGlobal("Know_Gris_Dead","GLOBAL",1)
~ GOTO 11
  IF ~~ THEN REPLY #20666 /* ~"Nichts. Leb wohl."~ */ EXIT
END

IF ~  Global("Speak_With_Dead","GLOBAL",1)
Global("Know_GStash","GLOBAL",1)
~ THEN BEGIN 3 // from:
  SAY #20667 /* ~Die hakennasige Leiche zuckt leicht, und die verschleimte Stimme von Gris quillt hervor. "Hast du's gefunden? Hab' dir genaue Anweisungen gegeben, ja, und du treibst dich rum, während ich hier verrotte. Ach, was soll's. Was kann der alte, tote Gris für dich tun?"~ */
  IF ~  GlobalGT("Quint_Item","GLOBAL",0)
~ THEN REPLY #20668 /* ~"Wo ist Quints Talisman noch mal?"~ */ GOTO 4
  IF ~  Global("Know_GStash","GLOBAL",1)
~ THEN REPLY #20669 /* ~"Wo war dein Versteck noch mal?"~ */ GOTO 5
  IF ~~ THEN REPLY #20670 /* ~"Was ist eigentlich mit dir geschehen?"~ */ GOTO 6
  IF ~~ THEN REPLY #20671 /* ~"Was kannst du mir über die Katakomben erzählen?"~ */ GOTO 7
  IF ~  Global("Know_Gris","GLOBAL",1)
~ THEN REPLY #20672 /* ~"Erzähl mir was über dich."~ */ GOTO 15
  IF ~  !NearbyDialog("DAnnah")
Global("Know_Gris","GLOBAL",0)
~ THEN REPLY #20673 /* ~"Erzähl mir was über dich."~ */ DO ~SetGlobal("Know_Gris","GLOBAL",1)
SetGlobal("Know_Gris_Dead","GLOBAL",1)
~ GOTO 8
  IF ~  NearbyDialog("DAnnah")
Global("Know_Gris","GLOBAL",0)
~ THEN REPLY #20674 /* ~"Erzähl mir was über dich."~ */ DO ~SetGlobal("Know_Gris","GLOBAL",1)
SetGlobal("Know_Gris_Dead","GLOBAL",1)
~ GOTO 11
  IF ~~ THEN REPLY #20675 /* ~"Nichts. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 2.0 3.0 9.0
  SAY #20676 /* ~"Hab's dir gesagt. Es ist links von Martas Zuhause - die verrückte Leichenhexe? - versteckt in einem Haufen Abfall. Such einfach richtig, dann findest du's schon."~ */
  IF ~~ THEN REPLY #20677 /* ~"Ich hätte noch ein paar Fragen an dich..."~ */ GOTO 9
  IF ~~ THEN REPLY #20678 /* ~"Vielen Dank, Gris. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 2.1 3.1 9.1
  SAY #20679 /* ~"Ich hab's bei Ojo versteckt - der Zurückgebliebene, ja? - ich hab's in der Nähe seiner Bleibe versteckt. Wird sowieso kein anderer den Klimper finden, um mich auf die Beine zu bringen, und weil du der letzte bist, mit dem ich rede, keine Frage, kannst du's haben. Wenn du vor seiner Tür stehst, ist es rechts vom Haus. Paß auf die Falle auf - hab' vergessen, wie man sie entschärft."~ */
  IF ~  Global("Know_GStash","GLOBAL",0)
~ THEN REPLY #20680 /* ~"In Ordnung. Ich habe noch ein paar andere Fragen an dich."~ */ GOTO 9
  IF ~  Global("Know_GStash","GLOBAL",1)
~ THEN REPLY #20681 /* ~"In Ordnung. Ich habe noch ein paar andere Fragen an dich."~ */ GOTO 9
END

IF ~~ THEN BEGIN 6 // from: 2.2 3.2 7.0 9.2
  SAY #20682 /* ~"Ich und meine Jungs, wir hatten gerade diese Gruft aufgekriegt... und das war schwerer, als 'nen Keuschheitsgürtel aufzubrechen, sag ich dir. Nachdem wir eine Ewigkeit an der Tür rumgemacht hatten, kamen wir hier rein und wollten gerade die Hauptgruft aufmachen, als meine Vollblüter zu brüllen anfangen und dieses... dieses *Ding*...  mich absticht und in diese Gruft schmeißt... ich nehm den Kampf auf und hör, wie sie anfangen, zu rennen... meine Vollblüter... was ist mit ihnen passiert, he? Wo ist Burt? Lowden? Haben sie's geschafft, oder stehn sie im Totenbuch?"~ */
  IF ~  Global("Know_BLDead","GLOBAL",1)
~ THEN REPLY #20683 /* ~Wahrheit: "Sie sind tot."~ */ DO ~IncrementGlobalOnceEx("GLOBALLawful_Gris_2","GLOBALLaw",1)
~ GOTO 12
  IF ~  Global("Know_BLDead","GLOBAL",1)
~ THEN REPLY #20684 /* ~Lüge: "Sie haben's geschafft."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Gris_2","GLOBALLaw",-1)
~ GOTO 13
  IF ~  Global("Know_BLDead","GLOBAL",1)
~ THEN REPLY #20685 /* ~Lüge: "Ich weiß nicht."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Gris_2","GLOBALLaw",-1)
~ GOTO 14
  IF ~  Global("Know_BLDead","GLOBAL",0)
~ THEN REPLY #20686 /* ~Lüge: "Sie sind tot."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Gris_2","GLOBALLaw",-1)
~ GOTO 12
  IF ~  Global("Know_BLDead","GLOBAL",0)
~ THEN REPLY #20687 /* ~Lüge: "Sie haben's geschafft."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Gris_2","GLOBALLaw",-1)
~ GOTO 13
  IF ~  Global("Know_BLDead","GLOBAL",0)
~ THEN REPLY #20688 /* ~Wahrheit: "Ich weiß nicht."~ */ DO ~IncrementGlobalOnceEx("GLOBALLawful_Gris_2","GLOBALLaw",1)
~ GOTO 14
END

IF ~~ THEN BEGIN 7 // from: 2.3 3.3 9.4
  SAY #20689 /* ~"Sie sind mein Jagdrevier. Gibt viele reife Gruften da unten, so gut wie unberührt seit über..." Er unterbricht sich. "Nun, seit vielen Jahren, schätze ich. Ich und die Jungs haben viele Gruften da unten aufgebrochen... wir waren gerade zu dieser hier durchgekommen, als der Ärger losging."~ */
  IF ~~ THEN REPLY #20690 /* ~"Was ist passiert?"~ */ GOTO 6
  IF ~~ THEN REPLY #20691 /* ~"Über welche Krypten kannst du mir was erzählen?"~ */ GOTO 16
  IF ~~ THEN REPLY #20692 /* ~"Beantworte mir noch ein paar andere Fragen, ja?"~ */ GOTO 9
  IF ~~ THEN REPLY #20693 /* ~"Danke. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 8 // from: 2.5 3.5 9.6
  SAY #20694 /* ~"Ich bin Gris. Gris, der Geier. Sie nannten mich so, weil ich Gruften erschnüffeln und die beste Beute rausholen konnte, bevor irgendwer sonst überhaupt Bescheid wußte. Habe die meiste Zeit damit verbracht, Leichen auszunehmen. Wieso fragst du?"~ */
  IF ~  Global("Quint_Item","GLOBAL",1)
~ THEN REPLY #20695 /* ~"Quint hat nach dir gesucht, Gris. Er meint, du hättest etwas von ihm."~ */ GOTO 10
  IF ~  GlobalGT("Know_Gstash","GLOBAL",0)
~ THEN REPLY #20696 /* ~"Du bist also Gris, wie? Ich werd den anderen aus dem Dorf sagen, daß du tot bist."~ */ GOTO 19
  IF ~  Global("Know_Gstash","GLOBAL",0)
~ THEN REPLY #20697 /* ~"Du bist also Gris, wie? Ich werd den anderen aus dem Dorf sagen, daß du tot bist."~ */ GOTO 19
  IF ~~ THEN REPLY #20698 /* ~"Nur so."~ */ GOTO 21
END

IF ~  Global("Speak_With_Dead","GLOBAL",1)
Global("Gris_Talk","GLOBAL",1)
~ THEN BEGIN 9 // from: 4.0 5.0 5.1 7.2 12.0 13.0 14.0 15.0 16.1 17.0 18.0 19.1 20.0 21.0 25.0 26.1
  SAY #20701 /* ~Die Leiche stößt einen langen Seufzer aus. "Was wolltest du wissen, Dussel?"~ */
  IF ~  Global("Quint_Item","GLOBAL",2)
~ THEN REPLY #20702 /* ~"Wo ist Quints Talisman noch mal?"~ */ GOTO 4
  IF ~  Global("Know_GStash","GLOBAL",1)
~ THEN REPLY #10881 /* ~"Wo war dein Versteck noch mal?"~ */ GOTO 5
  IF ~~ THEN REPLY #20703 /* ~"Was ist eigentlich mit dir geschehen?"~ */ GOTO 6
  IF ~  Global("Know_Gris","GLOBAL",1)
Global("Quint_Item","GLOBAL",1)
~ THEN REPLY #20704 /* ~"Gris, du mußt mir sagen, wo Quints Talisman ist. Er meinte, du würdest das wissen."~ */ GOTO 10
  IF ~~ THEN REPLY #20705 /* ~"Was kannst du mir über die Katakomben erzählen?"~ */ GOTO 7
  IF ~  Global("Know_Gris","GLOBAL",1)
~ THEN REPLY #20706 /* ~"Erzähl mir was von dir."~ */ GOTO 15
  IF ~  !NearbyDialog("DAnnah")
Global("Know_Gris","GLOBAL",0)
~ THEN REPLY #20707 /* ~"Erzähl mir was von dir."~ */ DO ~SetGlobal("Know_Gris","GLOBAL",1)
SetGlobal("Know_Gris_Dead","GLOBAL",1)
~ GOTO 8
  IF ~  NearbyDialog("DAnnah")
Global("Know_Gris","GLOBAL",0)
~ THEN REPLY #20708 /* ~"Erzähl mir was von dir."~ */ DO ~SetGlobal("Know_Gris","GLOBAL",1)
SetGlobal("Know_Gris_Dead","GLOBAL",1)
~ GOTO 11
  IF ~~ THEN REPLY #20709 /* ~"Nichts. Auf bald."~ */ EXIT
END

IF ~~ THEN BEGIN 10 // from: 8.0 9.3
  SAY #20717 /* ~"Quints Talisman?" Die Leiche lacht. "Wenn dieser ausgestopfte, pockenverseuchte Hurensohn dich deshalb hier runter geschickt hat, bist du an der falschen Adresse, Dussel. Das Ding ist im Begrabenen Dorf."~ */
  IF ~~ THEN REPLY #20718 /* ~"Aber wo ist das?"~ */ GOTO 18
  IF ~~ THEN REPLY #20719 /* ~"Ich verstehe. Dann werd ich dort mal nachsehen. Leb wohl."~ */ GOTO 18
END

IF ~~ THEN BEGIN 11 // from: 2.6 3.6 9.7
  SAY #20720 /* ~"Ich bin Gris. Gris, der Geier. Sie nannten mich so, weil ich Gruften erschnüffeln und die beste Beute rausholen konnte, bevor irgendwer sonst überhaupt Bescheid wußte. Habe die meiste Zeit damit verbracht, Leichen auszunehmen."~ */
  IF ~~ THEN EXTERN ~DANNAH~ 116
END

IF ~~ THEN BEGIN 12 // from: 6.0 6.3
  SAY #20726 /* ~"Ja, gut. Schreckliche Vorstellung, sie wären ungeschoren davongekommen, während ich hier unten tot rumliege."~ */
  IF ~~ THEN REPLY #20728 /* ~"Ich hätte da noch ein paar Fragen."~ */ GOTO 9
  IF ~~ THEN REPLY #20729 /* ~"Genau. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 13 // from: 6.1 6.4
  SAY #20730 /* ~"Dreckige Verräter! Sieht so aus, als hätten sie mich einfach meinem Schicksal überlassen, Angesicht zu Angesicht mit diesem *Ding*, während sie sich in Sicherheit gebracht haben..."~ */
  IF ~~ THEN REPLY #20731 /* ~"Ich hätte da noch ein paar Fragen."~ */ GOTO 9
  IF ~~ THEN REPLY #20732 /* ~"Genau. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 14 // from: 6.2 6.5
  SAY #20733 /* ~"Na gut, hoffentlich nicht. Dreckiges, feiges Pack."~ */
  IF ~~ THEN REPLY #20734 /* ~"Ich hätte da noch ein paar Fragen."~ */ GOTO 9
  IF ~~ THEN REPLY #20735 /* ~"Genau. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 15 // from: 2.4 3.4 9.5
  SAY #20736 /* ~"Das hast du mich schon gefragt, Dussel. Gris, Geier, Gruften, Katakomben, bin Sammler... was willst du noch wissen?"~ */
  IF ~~ THEN REPLY #20737 /* ~"Nur die Antworten auf ein paar Fragen..."~ */ GOTO 9
  IF ~~ THEN REPLY #20738 /* ~"Nichts. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 16 // from: 7.1
  SAY #20739 /* ~"Links vom Eingang ist eine, wo ein Schwarm dieser abscheulichen Ghulköpfe rumfliegt... würde da nicht ohne 'ne Menge Fackeln und ein paar Armbrüste rumlaufen. Ein Stück weiter, rechts vom Eingang, ist eine Gruft mit schönen Kacheln... dann ist da noch die, die ich vor dem Eintreten dieser unglücklichen Umstände erforscht habe... Ich glaube, die Gruft mit den schönen Kacheln birgt irgendein Geheimnis... sie riecht anders. Und dann gibt's da irgendwo noch eine geheime Kammer, aber ich habe keine Ahnung, wie man da reinkommt."~ */
  IF ~~ THEN REPLY #20740 /* ~"Wo ist mein Zeug?"~ */ GOTO 17
  IF ~~ THEN REPLY #20741 /* ~"Ich hätte noch ein paar Fragen..."~ */ GOTO 9
  IF ~~ THEN REPLY #20742 /* ~"Leb wohl, Gris."~ */ EXIT
END

IF ~~ THEN BEGIN 17 // from: 16.0
  SAY #20743 /* ~"Ein Stück weit unten durch die Untergegangenen Nationen... weiß aber nicht mehr genau wo."~ */
  IF ~~ THEN REPLY #20744 /* ~"In Ordnung. Ich hätte dann noch ein paar andere Fragen..."~ */ GOTO 9
  IF ~~ THEN REPLY #20745 /* ~"Vielen Dank, Gris. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 18 // from: 10.0 10.1
  SAY #20746 /* ~"Heh. Dussel, wenn ich nicht tot wär, könntest du drauf wetten, daß du mich niemals zum Singen bringen würdest. Aber..." er legt eine Kunstpause ein, "aber da ich jetzt tot bin, werd ich's dir sagen. Er ist vergraben in dem Abfall links neben dem Haus von Marta, der Leichenfetzerin. Ich hoffe, es macht dir nichts aus, in Müll zu graben."~ */
  IF ~~ THEN REPLY #20747 /* ~"Ich werd's finden. Zuvor hätte ich jedoch noch ein paar andere Fragen..."~ */ DO ~SetGlobal("Quint_Item","GLOBAL",2)
~ JOURNAL #66297 /* ~Gris, der Geier, hat mir gesagt, wo ich Quints Giftzauber finden kann: In einem Müllhaufen links von Martas Haus im Begrabenen Dorf.~ */ GOTO 9
  IF ~~ THEN REPLY #20748 /* ~"Vielen Dank, Gris. Leb wohl."~ */ DO ~SetGlobal("Quint_Item","GLOBAL",2)
~ JOURNAL #66297 /* ~Gris, der Geier, hat mir gesagt, wo ich Quints Giftzauber finden kann: In einem Müllhaufen links von Martas Haus im Begrabenen Dorf.~ */ EXIT
END

IF ~~ THEN BEGIN 19 // from: 8.1 8.2
  SAY #20749 /* ~"Nun, sieht so aus, als ob ich so richtig tot wär. Bestell ihnen also gräßliche Grüße. Ich bin mir sicher, daß sich die Verräter schon durch mein Versteck graben und meine Leiche bestehlen."~ */
  IF ~~ THEN REPLY #20750 /* ~"Dein Versteck?"~ */ DO ~SetGlobal("Know_Gstash","GLOBAL",1)
~ GOTO 20
  IF ~~ THEN REPLY #20751 /* ~"Wahrscheinlich. Ich hätte noch ein paar andere Fragen..."~ */ GOTO 9
  IF ~~ THEN REPLY #20752 /* ~"Wahrscheinlich. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 20 // from: 19.0 26.0
  SAY #20753 /* ~"Ja... Ich hatte ein bißchen was in der Nähe meiner Absteige versteckt... ein bißchen was, von dem dieser keuchende, verkrustete Verräter Pharod keine Ahnung hatte. Rechts neben der Bleibe von Ojo, diesem Zurückgebliebenen, wenn ich mich recht erinnere. Paß auf die Falle auf, ich hab' vergessen, wie man sie entschärft."~ */
  IF ~~ THEN REPLY #20754 /* ~"Nun, jedenfalls vielen Dank für die Warnung. Ich hätte noch ein paar andere Fragen..."~ */ GOTO 9
  IF ~~ THEN REPLY #20755 /* ~"Danke für die Warnung. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 21 // from: 8.3
  SAY #20756 /* ~"Ja, gut, du siehst das sicher anders."~ */
  IF ~~ THEN REPLY #20757 /* ~"Ja, gut... beantworte mir noch ein paar andere Fragen..."~ */ GOTO 9
  IF ~~ THEN REPLY #20758 /* ~"Ähm... ja. Leb wohl."~ */ EXIT
END

IF ~  Global("Speak_With_Dead","GLOBAL",1)
Global("Gris_Talk","GLOBAL",0)
~ THEN BEGIN 22 // from:
  SAY #20759 /* ~Dies ist die Leiche eines Mannes mit einem überraschten Ausdruck auf seinem hakennasigen Gesicht. Es ist schwer zu sagen, woran er gestorben ist: Er könnte an den vielen schrecklichen Hiebwunden in seinem Bauch und Hals gestorben sein oder am Blutverlust, den er erlitten hat, als sein rechter Arm fast von seiner Schulter abgetrennt wurde. Als der Leichnam dir antwortet, rasselt seine Stimme in seinem Hals. "Eh... nein... nein, Biest, muß... rennen! Warum fühle ich mich so taub... bin ich betrunken? Ich kann meine Hände nicht fühlen... und meine Beine? Was - das Letzte, woran ich mich erinnern kann, ist, daß ich hier reingestoßen wurde, und daß die Jungs einen Hieb von einem großen verdammten Ding abbekamen..."~ */
  IF ~~ THEN REPLY #20760 /* ~"Wer bist du?"~ */ DO ~SetGlobal("Gris_Talk","GLOBAL",1)
~ GOTO 23
  IF ~~ THEN REPLY #20761 /* ~"Wovon redest du eigentlich?"~ */ DO ~SetGlobal("Gris_Talk","GLOBAL",1)
~ GOTO 23
END

IF ~~ THEN BEGIN 23 // from: 22.0 22.1
  SAY #20762 /* ~"Eh? Wer, bei allen Neun Höllen, bist du? Zeig dich... auuu, bei Pans behaartem Arsch... Ich bin tot, stimmt's?"~ */
  IF ~~ THEN REPLY #20763 /* ~"Ich fürchte, ja. Kannst du mir noch ein paar Fragen beantworten?"~ */ GOTO 24
  IF ~~ THEN REPLY #20764 /* ~"Also..."~ */ GOTO 24
END

IF ~~ THEN BEGIN 24 // from: 23.0 23.1
  SAY #20765 /* ~"Hab' immer gewußt, daß es mal so enden würde... sag, Schleifer... bin ich immer noch in den Katakomben?"
~ */
  IF ~~ THEN REPLY #20766 /* ~"Ja."~ */ DO ~IncrementGlobalOnceEx("GLOBALLawful_Gris_1","GLOBALLaw",1)
~ GOTO 25
  IF ~~ THEN REPLY #20767 /* ~Lüge: "Nein."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Gris_1","GLOBALLaw",-1)
~ GOTO 26
END

IF ~~ THEN BEGIN 25 // from: 24.0
  SAY #20768 /* ~Die Leiche klingt verbittert. "Sieht so aus, ja, wirklich. Hilf ihnen, und sie rühren keinen Finger für dich."~ */
  IF ~~ THEN REPLY #20769 /* ~"Gut. Ich wollte dir nur ein paar Fragen stellen..."~ */ GOTO 9
  IF ~~ THEN REPLY #20770 /* ~"Vergiß es. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 26 // from: 24.1
  SAY #20771 /* ~Die Leiche wirkt erstaunt. "Jemand hat mich rausgeholt? Kann nicht sagen, daß ich das von ihnen erwartet hätte... haben's bestimmt wegen meines Verstecks getan..."~ */
  IF ~~ THEN REPLY #20772 /* ~"Dein Versteck?"~ */ DO ~SetGlobal("Know_Gstash","GLOBAL",1)
~ GOTO 20
  IF ~~ THEN REPLY #20773 /* ~"Gut. Ich wollte dir nur ein paar Fragen stellen..."~ */ GOTO 9
  IF ~~ THEN REPLY #20774 /* ~"Vergiß es. Leb wohl."~ */ EXIT
END
