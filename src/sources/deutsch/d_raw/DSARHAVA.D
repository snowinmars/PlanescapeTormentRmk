// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DSARHAVA.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\de_DE\dialog.tlk
// dialogF  : (none)

BEGIN ~DSARHAVA~

IF ~  Global("Sarhava","GLOBAL",0)
~ THEN BEGIN 0 // from:
  SAY #32064 /* ~Die junge Frau riecht stark nach Alkohol. Trotz ihrer dunklen Haut kannst du sehen, daß ihr schönes, aber grausam wirkendes Gesicht rot ist. Sie ist schlank, aber muskulös, und trägt exotischen Schmuck und durchscheinende Seidenkleider. Ihre Schenkel und Unterarme sind von zahlreichen Narben übersät, die aussehen, als stammten sie von Kampfwunden.~ */
  IF ~  !NearbyDialog("DAnnah")
!NearbyDialog("DDakkon")
NearbyDialog("DGrace")
~ THEN REPLY #32065 /* ~"Sei gegrüßt..."~ */ DO ~SetGlobal("Sarhava","GLOBAL",1)
~ GOTO 24
  IF ~  !NearbyDialog("DAnnah")
!NearbyDialog("DDakkon")
!NearbyDialog("DGrace")
NearbyDialog("DMorte")
~ THEN REPLY #32536 /* ~"Sei gegrüßt..."~ */ DO ~SetGlobal("Sarhava","GLOBAL",1)
~ GOTO 2
  IF ~  !NearbyDialog("DAnnah")
!NearbyDialog("DDakkon")
!NearbyDialog("DGrace")
!NearbyDialog("DMorte")
~ THEN REPLY #32537 /* ~"Sei gegrüßt..."~ */ DO ~SetGlobal("Sarhava","GLOBAL",1)
~ GOTO 1
  IF ~  NearbyDialog("DAnnah")
~ THEN REPLY #32538 /* ~"Sei gegrüßt..."~ */ DO ~SetGlobal("Sarhava","GLOBAL",1)
~ GOTO 29
  IF ~  NearbyDialog("Ddakkon")
!NearbyDialog("DAnnah")
~ THEN REPLY #32539 /* ~"Sei gegrüßt..."~ */ DO ~SetGlobal("Sarhava","GLOBAL",1)
~ GOTO 32
  IF ~~ THEN REPLY #32540 /* ~Geh der Frau aus dem Weg.~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.2 30.2 31.1 33.2 36.1 37.1
  SAY #32491 /* ~"Welches Scheusal hat *dich* denn zur Welt gebracht?" Sie verzieht angewidert das Gesicht und lacht dann gellend. "Und was für ein Gestank! Bist du etwa einer der Bastarde des Todes?" Du siehst ein gebogenes Langmesser an ihrer Hüfte und ihre Hand ruht leicht auf seinem Heft.~ */
  IF ~~ THEN REPLY #32541 /* ~"*Was* hast du da gesagt, Mädel?"~ */ GOTO 23
  IF ~~ THEN REPLY #32542 /* ~Täuschung: "Adhana? Bist du das?"~ */ GOTO 4
  IF ~~ THEN REPLY #32543 /* ~"Was hast du denn?"~ */ GOTO 21
  IF ~~ THEN REPLY #32544 /* ~"Ich habe keinen Grund, mich mit dir zu streiten. Laß es gut sein und geh deiner Wege."~ */ GOTO 10
  IF ~~ THEN REPLY #32545 /* ~Greif sie an.~ */ DO ~Enemy()
ForceAttack(Protagonist,Myself)
~ EXIT
  IF ~~ THEN REPLY #32546 /* ~Ignoriere sie und geh weg.~ */ GOTO 12
END

IF ~~ THEN BEGIN 2 // from: 0.1 30.1 31.0 33.1 36.0 37.0
  SAY #32492 /* ~"Welches Scheusal hat *dich* denn zur Welt gebracht?" Sie verzieht angewidert das Gesicht und lacht dann gellend. "Und was für ein Gestank! Bist du etwa einer der Bastarde des Todes?" Du siehst ein gebogenes Langmesser an ihrer Hüfte und ihre Hand ruht leicht auf seinem Heft.~ */
  IF ~~ THEN EXTERN ~DMORTE~ 310
END

IF ~~ THEN BEGIN 3 // from:
  SAY #32493 /* ~"Oh, ich muß *es* einfach wissen. Also: Stinkst du wie die Gossen des Stocks? Oder stinken seine Gossen wie *du*?"
~ */
  IF ~~ THEN REPLY #32547 /* ~"*Was* hast du da gesagt, Mädel?"~ */ GOTO 23
  IF ~~ THEN REPLY #32548 /* ~Täuschung: "Adhana? Bist du das?"~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Sarhava_1","GLOBALLaw",-1)
~ EXTERN ~DMORTE~ 311
  IF ~~ THEN REPLY #32549 /* ~"Was hast du denn?"~ */ GOTO 21
  IF ~~ THEN REPLY #32550 /* ~"Ich habe keinen Grund, mich mit dir zu streiten. Laß es gut sein und geh deiner Wege."~ */ GOTO 10
  IF ~~ THEN REPLY #32551 /* ~Greif sie an.~ */ DO ~Enemy()
ForceAttack(Protagonist,Myself)
~ EXIT
  IF ~~ THEN REPLY #32552 /* ~Ignoriere sie und geh weg.~ */ GOTO 12
END

IF ~~ THEN BEGIN 4 // from: 1.1 23.0
  SAY #32494 /* ~Die Frau blinzelt dich überrascht an.~ */
  IF ~~ THEN REPLY #32553 /* ~"Adhana? Erinnerst du dich nicht an mich?"~ */ GOTO 5
  IF ~~ THEN REPLY #32554 /* ~"Ich hab's dir doch gesagt, Adhana: Ich habe dich nie geliebt und werde es auch nie tun. Das bißchen Freude, das du mir gegeben hast, war deine grauenhafte Gesellschaft nicht wert. Und jetzt laß mich in Ruhe."~ */ GOTO 6
  IF ~~ THEN REPLY #32555 /* ~"Oh... Entschuldigung. Ich dachte, du wärst Adhana, aber du bist doppelt so häßlich und stinkst doppelt so grauenvoll wie sie."~ */ GOTO 6
  IF ~~ THEN REPLY #32556 /* ~"Vergiß es. Leb wohl."~ */ GOTO 12
END

IF ~~ THEN BEGIN 5 // from: 4.0
  SAY #32495 /* ~Sie blickt dich eine Weile argwöhnisch an und lächelt dann. "Deine tiefen Wunden müssen dich verwirrt haben." Die Frau kichert. "Ich bin nicht deine Freundin, noch würde ich jemals mit jemanden wie dir etwas zu tun haben wollen."~ */
  IF ~~ THEN REPLY #32557 /* ~"Oh... Entschuldigung. Ich dachte, du wärst Adhana, aber du bist doppelt so häßlich und stinkst doppelt so grauenvoll wie sie."~ */ GOTO 6
  IF ~~ THEN REPLY #32558 /* ~"Vergiß es. Leb wohl."~ */ GOTO 12
END

IF ~~ THEN BEGIN 6 // from: 4.1 4.2 5.0
  SAY #32496 /* ~Sie hört dir eine Weile zu, scheint verwirrt, knurrt dich an und macht Anstalten, ihre Waffe zu ziehen.~ */
  IF ~~ THEN REPLY #32559 /* ~Kämpfe mit ihr.~ */ DO ~Enemy()
ForceAttack(Protagonist,Myself)
~ EXIT
  IF ~~ THEN REPLY #32560 /* ~Ruf die Wachen.~ */ GOTO 7
END

IF ~~ THEN BEGIN 7 // from: 6.1 11.1 13.1 17.1 20.1 31.2 38.1 42.1
  SAY #32497 /* ~Sie hält vor Überraschung die Luft an. "Du Narr... bist du verrückt? Die Wachen würden dir niemals glauben!"~ */
  IF ~  CheckStatGT(Protagonist,12,WIS)
~ THEN REPLY #32561 /* ~"Du bist offensichtlich betrunken und aus deinen Narben schließe ich, daß du gern kämpfst... wahrscheinlich hast du dir auch schon so einen Ruf zugelegt. Wahrscheinlich glauben sie mir und nicht dir."~ */ GOTO 9
  IF ~  CheckStatLT(Protagonist,13,WIS)
~ THEN REPLY #32562 /* ~"Du bist offensichtlich betrunken und deinen Narben nach zu urteilen kämpfst du gern. Wahrscheinlich glauben sie mir und nicht dir."~ */ GOTO 9
END

IF ~~ THEN BEGIN 8 // from:
  SAY #32498 /* ~Sie starrt dich durchdringend an und knirscht mit den Zähnen. "Hoffe lieber, daß du mir nicht noch mal über den Weg läufst, du *gemeiner Hund*!" Sie stürmt davon.~ */
  IF ~~ THEN REPLY #32563 /* ~"Oh doch, das *hoffe* ich sehr..."~ */ DO ~EscapeArea()
SetGlobal("Sarhava","GLOBAL",3)
~ EXIT
  IF ~~ THEN REPLY #32564 /* ~Gähne, als ob du dich langweilst, während sie davonstürmt.~ */ DO ~EscapeArea()
SetGlobal("Sarhava","GLOBAL",3)
~ EXIT
  IF ~~ THEN REPLY #32565 /* ~"Leb wohl."~ */ DO ~EscapeArea()
SetGlobal("Sarhava","GLOBAL",3)
~ EXIT
END

IF ~~ THEN BEGIN 9 // from: 7.0 7.1
  SAY #32499 /* ~Sie starrt dich durchdringend an und knirscht mit den Zähnen. "Laß uns das alles vergessen, so daß jeder seines Weges ziehen kann."~ */
  IF ~~ THEN REPLY #32566 /* ~"Okay. Du hast schon genug von meiner Zeit verschwendet. Leb wohl."~ */ DO ~SetGlobal("Sarhava","GLOBAL",2)
~ EXIT
  IF ~~ THEN REPLY #32567 /* ~"Okay. Leb wohl."~ */ DO ~SetGlobal("Sarhava","GLOBAL",2)
~ EXIT
END

IF ~~ THEN BEGIN 10 // from: 1.3 3.3 23.3
  SAY #32500 /* ~"Oh, gewiß. Aber zuerst..." Sie hält inne und verzieht ihren Mund zu einem hinterhältigen Grinsen. "...eine Frage: Kann jemand im Laufe eines Lebens wirklich so häßlich werden wie du?"~ */
  IF ~  CheckStatGT(Protagonist,8,INT)
~ THEN REPLY #32568 /* ~"Ja... guck doch nur in den Spiegel, wenn du einen Beweis brauchst."~ */ GOTO 11
  IF ~~ THEN REPLY #32569 /* ~Greif sie an.~ */ DO ~Enemy()
ForceAttack(Protagonist,Myself)
~ EXIT
  IF ~~ THEN REPLY #32570 /* ~Verschwinde.~ */ GOTO 12
END

IF ~~ THEN BEGIN 11 // from: 10.0 21.0 22.0 22.1 25.0
  SAY #32501 /* ~Sie starrt dich einen Moment überrascht an, dann knurrt sie und greift nach ihrem Dolch...~ */
  IF ~~ THEN REPLY #32571 /* ~Kämpfe mit ihr.~ */ DO ~Enemy()
ForceAttack(Protagonist,Myself)
~ EXIT
  IF ~~ THEN REPLY #32572 /* ~Ruf die Wachen.~ */ GOTO 7
END

IF ~~ THEN BEGIN 12 // from: 1.5 3.5 4.3 5.1 10.2 21.3 22.3 23.5
  SAY #32502 /* ~"Versuch ja nicht, einfach wegzugehen, du geheimer Hund. Deine Anwesenheit hier auf dieser Straße ist eine Beleidigung für mich. Du mußt dafür sühnen." Sie setzt einen Fuß vor. "Leck mir den Stiefel und dann geh mir aus den Augen. Das soll deine Sühne sein."~ */
  IF ~  !NearbyDialog("DMorte")
!NearbyDialog("DAnnah")
~ THEN REPLY #32573 /* ~Beug dich nach vorn und leck ihren Stiefel.~ */ GOTO 14
  IF ~  NearbyDialog("DAnnah")
~ THEN REPLY #32574 /* ~Beug dich nach vorn und leck ihren Stiefel.~ */ EXTERN ~DANNAH~ 174
  IF ~  NearbyDialog("DMorte")
!NearbyDialog("DAnnah")
~ THEN REPLY #32575 /* ~Beug dich nach vorn und leck ihren Stiefel.~ */ EXTERN ~DMORTE~ 312
  IF ~~ THEN REPLY #32576 /* ~Beug dich zu ihrem Stiefel runter und warte auf eine Gelegenheit, ihr weh zu tun.~ */ GOTO 16
  IF ~~ THEN REPLY #32577 /* ~Greif sie an.~ */ DO ~Enemy()
ForceAttack(Protagonist,Myself)
~ EXIT
  IF ~~ THEN REPLY #32578 /* ~Ignoriere ihre Drohungen und geh weiter.~ */ GOTO 13
END

IF ~~ THEN BEGIN 13 // from: 12.5
  SAY #32503 /* ~Als du dich umdrehst, um zu gehen, knurrt sie und greift nach ihrem Dolch...~ */
  IF ~~ THEN REPLY #32579 /* ~Kämpfe mit ihr.~ */ DO ~Enemy()
ForceAttack(Protagonist,Myself)
~ EXIT
  IF ~~ THEN REPLY #32580 /* ~Ruf die Wachen.~ */ GOTO 7
END

IF ~~ THEN BEGIN 14 // from: 12.0 16.4
  SAY #32504 /* ~Ihr hohes, hämisches Lachen hallt durch die Straßen. "Jetzt verschwinde, du Feigling. Und wage es ja nicht, mich noch mal anzusprechen. Meine Klinge wird dir sonst dein Herz zerfetzen, bevor deine Worte mein Ohr erreichen."~ */
  IF ~~ THEN REPLY #32581 /* ~"Jetzt reicht's mir aber. Zieh dein kleines Messer, Mädel."~ */ DO ~Enemy()
ForceAttack(Protagonist,Myself)
~ EXIT
  IF ~~ THEN REPLY #32582 /* ~Geh.~ */ DO ~SetGlobal("Sarhava","GLOBAL",4)
~ EXIT
END

IF ~~ THEN BEGIN 15 // from:
  SAY #32505 /* ~"Schweine!", kreischt sie. "Ich werde euch beide töten!"~ */
  IF ~~ THEN DO ~Enemy()
ForceAttack(Myself,"Annah")
~ EXIT
END

IF ~~ THEN BEGIN 16 // from: 12.3
  SAY #32506 /* ~Als du vor der Frau niederkniest, stemmt sie die Hände in die Hüften und wirft den Kopf zurück. Ihr hohes, hämisches Lachen hallt durch die Straßen.~ */
  IF ~  CheckStatGT(Protagonist,8,DEX)
~ THEN REPLY #32583 /* ~Beiß ein Stück aus ihrem nackten Bein heraus.~ */ DO ~Damage("Sarhava",LOWER,2)
SetGlobal("Sarhava","GLOBAL",5)
IncrementGlobalOnceEx("GLOBALChaotic_Sarhava_2","GLOBALLaw",-1)
~ GOTO 18
  IF ~  CheckStatLT(Protagonist,9,DEX)
~ THEN REPLY #32584 /* ~Beiß ein Stück aus ihrem nackten Bein heraus.~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Sarhava_2","GLOBALLaw",-1)
~ GOTO 17
  IF ~  CheckStatGT(Protagonist,12,DEX)
~ THEN REPLY #32585 /* ~Zieh ihr die Beine weg.~ */ DO ~Damage("Sarhava",LOWER,2)
~ GOTO 20
  IF ~  CheckStatLT(Protagonist,13,DEX)
~ THEN REPLY #32586 /* ~Zieh ihr die Beine weg.~ */ GOTO 17
  IF ~~ THEN REPLY #32587 /* ~Leck ihren Stiefel.~ */ GOTO 14
END

IF ~~ THEN BEGIN 17 // from: 16.1 16.3
  SAY #32507 /* ~Du willst gerade ein Stück aus ihrem Bein herausbeißen... aber sie weicht dir geschickt aus. "Das wirst du mit deinem *Leben* bezahlen, du gemeiner Hund!" Sie zieht ihren Dolch...~ */
  IF ~~ THEN REPLY #32588 /* ~Kämpfe mit ihr.~ */ DO ~Enemy()
ForceAttack(Protagonist,Myself)
~ EXIT
  IF ~~ THEN REPLY #32589 /* ~Ruf die Wachen.~ */ GOTO 7
END

IF ~~ THEN BEGIN 18 // from: 16.0
  SAY #32508 /* ~Du packst ihren Unterschenkel und versenkst deine Zähne in das Fleisch ihrer Wade. Sie kreischt vor Schmerz, weicht zurück und zieht ihren Dolch. Dein Biß scheint sie schnell nüchtern gemacht zu haben. "Bei den Mächten, bist du *VERRÜCKT*?!"~ */
  IF ~~ THEN REPLY #32590 /* ~Lächle sie an und leck das Blut von deinen Lippen.~ */ GOTO 19
  IF ~~ THEN REPLY #32591 /* ~"Ich lecke heute keine Stiefel, Mädel. Und jetzt geh, bevor ich größere Stücke aus dir rausbeiße."~ */ GOTO 19
  IF ~~ THEN REPLY #32592 /* ~Geh einfach weg.~ */ EXIT
END

IF ~~ THEN BEGIN 19 // from: 18.0 18.1
  SAY #32509 /* ~Sie schaudert und auf ihrem Gesicht zeigt sich eine Mischung aus Ungläubigkeit und Ekel. "Igitt! Ich hoffe nur, nie wieder so was wie dir zu begegnen! Du Biest..." Sie dreht sich um und geht weg.~ */
  IF ~  !NearbyDialog("DMorte")
~ THEN REPLY #32593 /* ~Mach Beißgeräusche, während sie sich davonmacht.~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Sarhava_3","GLOBALLaw",-1)
~ EXIT
  IF ~  NearbyDialog("DMorte")
~ THEN REPLY #32594 /* ~Mach Beißgeräusche, während sie sich davonmacht.~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Sarhava_3","GLOBALLaw",-1)
~ EXTERN ~DMORTE~ 314
  IF ~  !NearbyDialog("DMorte")
~ THEN REPLY #32595 /* ~"Leb wohl."~ */ EXIT
  IF ~  NearbyDialog("DMorte")
~ THEN REPLY #32596 /* ~"Leb wohl."~ */ EXTERN ~DMORTE~ 314
  IF ~  !NearbyDialog("DMorte")
~ THEN REPLY #32597 /* ~Laß sie gehen.~ */ EXIT
  IF ~  NearbyDialog("DMorte")
~ THEN REPLY #32598 /* ~Laß sie gehen.~ */ EXTERN ~DMORTE~ 314
END

IF ~~ THEN BEGIN 20 // from: 16.2
  SAY #32510 /* ~Du packst ihre Knöchel und ziehst ihr die Beine weg. Einen Moment scheint sie in der Luft zu hängen und auf ihrem Mund steht die Überraschung geschrieben. Dann kracht sie mit einem schmerzhaften dumpfen *Schlag* auf die Straße. Sie springt auf die Beine und in ihren Augen spiegelt sich blanker Zorn wieder. "Ich werde dich *töten*!" Sie zieht ihren Dolch...~ */
  IF ~~ THEN REPLY #32599 /* ~Kämpfe mit ihr.~ */ DO ~Enemy()
ForceAttack(Protagonist,Myself)
~ EXIT
  IF ~~ THEN REPLY #32600 /* ~Ruf die Wachen.~ */ GOTO 7
END

IF ~~ THEN BEGIN 21 // from: 1.2 3.2 23.2
  SAY #32511 /* ~"Mir ist etwas sehr *Unschönes* widerfahren." Sie grinst angewidert. "Wenn ich dich nur ansehe, kommt mir schon die Galle hoch."~ */
  IF ~  CheckStatGT(Protagonist,8,INT)
~ THEN REPLY #32601 /* ~"Hat das nicht deine Mutter bei deiner Geburt gesagt?"~ */ GOTO 11
  IF ~~ THEN REPLY #32602 /* ~"Geh lieber, Mädel, wenn du nicht so enden willst wie ich."~ */ GOTO 22
  IF ~~ THEN REPLY #32603 /* ~Greif sie an.~ */ DO ~Enemy()
ForceAttack(Protagonist,Myself)
~ EXIT
  IF ~~ THEN REPLY #32604 /* ~Ignoriere sie und geh weg.~ */ GOTO 12
END

IF ~~ THEN BEGIN 22 // from: 21.1
  SAY #32512 /* ~"Oh, nein, nein... ich könnte nie so werden wie du. So *wenige* Menschen ernähren sich von ihren eigenen Exkrementen."~ */
  IF ~~ THEN REPLY #32605 /* ~"Öffne noch mal deinen Mund, Mädel, und ich kümmere mich darum, daß du auf den Geschmack kommst."~ */ GOTO 11
  IF ~~ THEN REPLY #32606 /* ~"Wenn ich Exkremente wollte, würde ich deinen Kopf ausquetschen, Mädel."~ */ GOTO 11
  IF ~~ THEN REPLY #32607 /* ~Greif sie an.~ */ DO ~Enemy()
ForceAttack(Protagonist,Myself)
~ EXIT
  IF ~~ THEN REPLY #32608 /* ~Ignoriere sie und geh weg.~ */ GOTO 12
END

IF ~~ THEN BEGIN 23 // from: 1.0 3.0
  SAY #32513 /* ~"Die richtige Frage lautet: Was ist das für ein *Gestank*?" Sie schnüffelt, dann rümpft sie angewidert die Nase. "Na, ich glaube, der kommt von dir! Ja, er kommt von dir, du fliegenbedeckter Kadaver!"~ */
  IF ~  !NearbyDialog("DMorte")
~ THEN REPLY #32609 /* ~Täuschung: "Warte... ich erkenne dich wieder. Adhana!"~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Sarhava_1","GLOBALLaw",-1)
~ GOTO 4
  IF ~  NearbyDialog("DMorte")
~ THEN REPLY #32610 /* ~Täuschung: "Warte... ich erkenne dich wieder. Adhana!"~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Sarhava_1","GLOBALLaw",-1)
~ EXTERN ~DMORTE~ 311
  IF ~~ THEN REPLY #32611 /* ~"Was hast du denn?"~ */ GOTO 21
  IF ~~ THEN REPLY #32612 /* ~"Ich habe keinen Grund, mich mit dir zu streiten. Laß es gut sein und geh deiner Wege."~ */ GOTO 10
  IF ~~ THEN REPLY #32613 /* ~Greif sie an.~ */ DO ~Enemy()
ForceAttack(Protagonist,Myself)
~ EXIT
  IF ~~ THEN REPLY #32614 /* ~Ignoriere sie und geh weg.~ */ GOTO 12
END

IF ~~ THEN BEGIN 24 // from: 0.0
  SAY #32514 /* ~"Welches Scheusal hat *dich* denn zur Welt gebracht?" Sie verzieht angewidert das Gesicht und lacht dann gellend. "Und was für ein Gestank! Bist du etwa einer der Bastarde des Todes?" Du siehst ein gebogenes Langmesser an ihrer Hüfte und ihre Hand ruht leicht auf seinem Heft...~ */
  IF ~~ THEN EXTERN ~DGRACE~ 130
END

IF ~~ THEN BEGIN 25 // from:
  SAY #32515 /* ~Die junge Frau scheint vorübergehend etwas verwirrt zu sein, dann erkennt sie Grace, die Gefallene. Sie wirkt erschreckt und beschämt. "Meine liebe Grace! Ich habe dich nicht bemerkt... und dafür schäme ich mich, denn deine noble Erscheinung würde selbst ein Dummkopf bemerken."~ */
  IF ~  CheckStatGT(Protagonist,8,INT)
~ THEN REPLY #32615 /* ~"Du bist offensichtlich noch blöder als ein Dummkopf, Mädel."~ */ GOTO 11
  IF ~~ THEN REPLY #32616 /* ~Laß Grace weiterreden.~ */ EXTERN ~DGRACE~ 131
END

IF ~~ THEN BEGIN 26 // from:
  SAY #32516 /* ~Sie scheint sich zu schämen. "Ja, meine liebe Grace... es tut mir leid, daß solche Worte in deiner Gegenwart ausgesprochen wurden."~ */
  IF ~~ THEN EXTERN ~DGRACE~ 132
END

IF ~~ THEN BEGIN 27 // from:
  SAY #32517 /* ~"Äh..." Sie runzelt die Stirn, dann hat sie sich wieder unter Kontrolle. "Was führt dich hierher? Hast du etwas zu erledigen?"~ */
  IF ~~ THEN EXTERN ~DGRACE~ 133
END

IF ~~ THEN BEGIN 28 // from:
  SAY #32518 /* ~Sarhava verbeugt sich tief. "Dann erlaube mir, meine liebe Grace, mich bei dir und deinen Gefährten zu entschuldigen. Meine Worte waren schlecht gewählt. Der Alkohol hat mich dazu gebracht, solchen Unsinn zu reden, und ich schäme mich sehr, daß ich mich vor meiner ehrwürdigen Lehrerin so herabgesetzt habe." Sie verbeugt sich, dreht sich um und geht weg.~ */
  IF ~~ THEN REPLY #32617 /* ~Geh.~ */ DO ~SetGlobal("Sarhava","GLOBAL",6)
~ EXIT
END

IF ~~ THEN BEGIN 29 // from: 0.3
  SAY #32519 /* ~"Nun... was haben wir denn hier? Eine kleine Tiefling-Gossenkönigin, die aus dem Stock gekrochen ist?" Die Frau macht einen Schmollmund und tut so, als ob sie mit einem Kleinkind reden würde. "Hast du dich verirrt, kleiner Tiefling? Oh, sieh! Er hat einen Schwanz! Wie...süß!"~ */
  IF ~~ THEN EXTERN ~DANNAH~ 178
END

IF ~~ THEN BEGIN 30 // from:
  SAY #32520 /* ~"Nun, du Scheusalskumpan, laß das bleiben." Die Frau scheint nicht nervös zu werden, als Annah ihre Waffen zieht, sondern schnalzt nur mißbilligend mit der Zunge. "Laß das oder ich hack dir deinen Schwanz ab und füttere meine Hunde damit."~ */
  IF ~  NearbyDialog("DGrace")
~ THEN EXTERN ~DGRACE~ 130
  IF ~  NearbyDialog("DMorte")
!NearbyDialog("DGrace")
~ THEN REPLY #32618 /* ~"Genug, Mädel. Entschuldige dich bei ihr, oder ich schneide *dir* was ab."~ */ DO ~IncrementGlobal("BD_ANNAH_MORALE","GLOBAL",1)
SetGlobal("CW_Help_Annah","GLOBAL",1)
~ GOTO 2
  IF ~  !NearbyDialog("DMorte")
!NearbyDialog("DGrace")
~ THEN REPLY #32619 /* ~"Genug, Mädel. Entschuldige dich bei ihr, oder ich schneide *dir* was ab."~ */ DO ~IncrementGlobal("BD_ANNAH_MORALE","GLOBAL",1)
SetGlobal("CW_Help_Annah","GLOBAL",1)
~ GOTO 1
  IF ~  !NearbyDialog("DGrace")
~ THEN REPLY #32620 /* ~Überlaß die Sache Annah.~ */ DO ~SetAnimState(Myself,ANIM_MIMESTANDTOSTANCE)
~ EXTERN ~DANNAH~ 179
  IF ~  !NearbyDialog("DGrace")
~ THEN REPLY #32621 /* ~"Laß gut sein, Annah. Sie ist es nicht wert."~ */ DO ~SetAnimState(Myself,ANIM_MIMESTANDTOSTANCE)
~ EXTERN ~DANNAH~ 179
END

IF ~~ THEN BEGIN 31 // from:
  SAY #32521 /* ~"Du dreckiger Laich der Unteren Ebenen, Bastard, den nicht einmal ein Tanar'ri in seinem Bau dulden würde!" Sie zieht ihre Klinge.~ */
  IF ~  NearbyDialog("DMorte")
~ THEN REPLY #32622 /* ~"Steck die Klinge wieder ein, Mädel, oder ich ramm sie dir in deinen Bauch."~ */ DO ~SetGlobal("CW_Help_Annah","GLOBAL",1)
~ GOTO 2
  IF ~  !NearbyDialog("DMorte")
~ THEN REPLY #32623 /* ~"Steck die Klinge wieder ein, Mädel, oder ich ramm sie dir in deinen Bauch."~ */ DO ~SetGlobal("CW_Help_Annah","GLOBAL",1)
~ GOTO 1
  IF ~~ THEN REPLY #32624 /* ~Ruf die Wachen.~ */ GOTO 7
  IF ~~ THEN REPLY #32625 /* ~Laß die Sache ihren Lauf nehmen.~ */ DO ~Enemy()
Attack("Annah")
~ EXIT
END

IF ~~ THEN BEGIN 32 // from: 0.4
  SAY #32522 /* ~"Und was ist *das*?! Ein Gith? So *weit* weg von der strudelnden Kloake des Limbo, dem Abort der Ebenen?" Sie kneift ihre Augen zusammen und wartet auf Dak'kons Antwort.~ */
  IF ~~ THEN EXTERN ~DDAKKON~ 114
END

IF ~~ THEN BEGIN 33 // from:
  SAY #32523 /* ~Sie runzelt die Stirn. "Ich dachte, so was wie du würde sich unter den fleischfressenden Fröschen, die sich in der Brühe des Limbos tummeln, wohler fühlen, Gith."~ */
  IF ~  NearbyDialog("DGrace")
~ THEN EXTERN ~DGRACE~ 130
  IF ~  NearbyDialog("DMorte")
!NearbyDialog("DGrace")
~ THEN REPLY #32626 /* ~"Vielleicht würdest *du* dich ja in der Leichenhalle wohler fühlen, Mädel."~ */ GOTO 2
  IF ~  !NearbyDialog("DMorte")
!NearbyDialog("DGrace")
~ THEN REPLY #32627 /* ~"Vielleicht würdest *du* dich ja in der Leichenhalle wohler fühlen, Mädel."~ */ GOTO 1
  IF ~  !NearbyDialog("DGrace")
~ THEN REPLY #32628 /* ~Überlaß die Sache Dak'kon.~ */ GOTO 34
END

IF ~~ THEN BEGIN 34 // from: 33.3
  SAY #32524 /* ~Sie wartet einen Moment auf eine Antwort, dann läßt sie eine weitere Tirade auf Dak'kon los: "Warum gehst du nicht zurück ins Limbo, Gith?" Sie überlegt einen Moment und streicht sich dabei übers Kinn. "Oder lebt so was wie du auf der Astralebene? Ich werfe eure Sippen immer durcheinander: Githyanki, Githzerai, wer kennt schon den Unterschied..."~ */
  IF ~  NearbyDialog("DMorte")
~ THEN EXTERN ~DDAKKON~ 115
  IF ~  !NearbyDialog("DMorte")
~ THEN REPLY #32629 /* ~Weiter.~ */ EXTERN ~DDAKKON~ 115
END

IF ~~ THEN BEGIN 35 // from:
  SAY #32525 /* ~Auf einmal lächelt die Frau. "Oh! Erzähl mir einen Witz, Gith!" Sie klatscht vor Freude in die Hände. "Laß mich an dem berühmten Humor deiner Sippe teilhaben, *Githyanki*!"~ */
  IF ~~ THEN EXTERN ~DDAKKON~ 116
END

IF ~~ THEN BEGIN 36 // from:
  SAY #32526 /* ~Sie grinst Dak'kon spöttisch an. "Und als ich dir in den Straßen von Sigil begegnete, Gith, schaute die junge Sarhava auf den Gith-Abschaum und sagte: 'Da ist wenig, das es wert wäre, auch nur darauf zu spucken.' Du bist nur ein gottloser *Githyanki*-Hund, der in Inzest Bastarde seiner eigenen Sippe verehren und mit Fröschen laichen muß." Sie umfaßt das Heft ihres Dolches. "Verteidige dich, du Gith-Abschaum."~ */
  IF ~  NearbyDialog("DMorte")
~ THEN REPLY #32630 /* ~"Jetzt reicht's aber wirklich, Mädel. Halt' den Mund."~ */ GOTO 2
  IF ~  !NearbyDialog("DMorte")
~ THEN REPLY #32631 /* ~"Jetzt reicht's aber wirklich, Mädel. Halt' den Mund."~ */ GOTO 1
  IF ~~ THEN REPLY #32632 /* ~Greif sie selbst an.~ */ DO ~Enemy()
ForceAttack(Protagonist,Myself)
~ EXIT
  IF ~~ THEN REPLY #32633 /* ~"Greif sie an, Dak'kon."~ */ DO ~Enemy()
ForceAttack(Myself,"Dakkon")
ForceAttack("Dakkon",Myself)
~ EXIT
  IF ~~ THEN REPLY #32634 /* ~Warte auf Dak'kons Reaktion.~ */ GOTO 37
END

IF ~~ THEN BEGIN 37 // from: 36.4
  SAY #32527 /* ~Sie wartet, aber Dak'kon reagiert immer noch nicht. "Ich wünschte, die Typen hätten dich immer noch in ihrer Gewalt, Gith, damit dem Multiversum die Gefahr der Vermehrung deiner Sippe erspart bliebe."~ */
  IF ~  NearbyDialog("DMorte")
~ THEN REPLY #32635 /* ~"Jetzt reicht's aber wirklich, Mädel. Halt' den Mund."~ */ GOTO 2
  IF ~  !NearbyDialog("DMorte")
~ THEN REPLY #32636 /* ~"Jetzt reicht's aber wirklich, Mädel. Halt' den Mund."~ */ GOTO 1
  IF ~~ THEN REPLY #32637 /* ~Greif sie selbst an.~ */ DO ~Enemy()
ForceAttack(Protagonist,Myself)
~ EXIT
  IF ~~ THEN REPLY #32638 /* ~"Greif sie an, Dak'kon."~ */ DO ~Enemy()
ForceAttack(Myself,"Dakkon")
ForceAttack("Dakkon",Myself)
~ EXIT
  IF ~~ THEN REPLY #32639 /* ~Warte auf Dak'kons Reaktion.~ */ GOTO 38
END

IF ~~ THEN BEGIN 38 // from: 37.4
  SAY #32528 /* ~Dak'kon steht unbewegt und stumm wie ein Stein da. Die Frau knurrt und macht Anstalten, sich auf ihn zu stürzen. "Nach Baator mit dir, du Feigling!"~ */
  IF ~~ THEN REPLY #32640 /* ~Hilf Dak'kon dabei, gegen sie zu kämpfen.~ */ DO ~Enemy()
ForceAttack(Protagonist,Myself)
~ EXIT
  IF ~~ THEN REPLY #32641 /* ~Ruf die Wachen.~ */ GOTO 7
  IF ~~ THEN REPLY #32642 /* ~Laß die Sache ihren Lauf nehmen.~ */ DO ~Enemy()
ForceAttack(Myself,"Dakkon")
ForceAttack("Dakkon",Myself)
~ EXIT
END

IF ~~ THEN BEGIN 39 // from:
  SAY #32529 /* ~Die Frau ist völlig überrumpelt und antwortet nicht.~ */
  IF ~~ THEN EXTERN ~DMORTE~ 317
END

IF ~~ THEN BEGIN 40 // from:
  SAY #32530 /* ~"Was... wer... wie kannst du es..."~ */
  IF ~~ THEN EXTERN ~DMORTE~ 318
END

IF ~~ THEN BEGIN 41 // from:
  SAY #32531 /* ~"Ich... ich..."~ */
  IF ~~ THEN EXTERN ~DMORTE~ 319
END

IF ~~ THEN BEGIN 42 // from:
  SAY #32532 /* ~Die Frau zieht ihre Klinge, knurrt wie ein wildgewordenes Tier und stürzt sich auf Morte.~ */
  IF ~~ THEN REPLY #32643 /* ~Hilf Morte dabei, gegen sie zu kämpfen.~ */ DO ~Enemy()
ForceAttack(Protagonist,Myself)
~ EXIT
  IF ~~ THEN REPLY #32644 /* ~Ruf die Wachen.~ */ GOTO 7
  IF ~~ THEN REPLY #32645 /* ~Laß die Sache ihren Lauf nehmen.~ */ DO ~Enemy()
Attack("Morte")
~ EXIT
END

IF ~  Global("Sarhava","GLOBAL",2)
~ THEN BEGIN 43 // from:
  SAY #32533 /* ~Die junge Frau weigert sich, noch länger mit dir zu reden.~ */
  IF ~~ THEN REPLY #32646 /* ~Geh.~ */ EXIT
END

IF ~  Global("Sarhava","GLOBAL",4)
~ THEN BEGIN 44 // from:
  SAY #32534 /* ~Die junge Frau grinst fies und hält dir die Spitze ihres Stiefels hin. "Willst du noch mal meinen Stiefel lecken, du gemeiner Hund? Nun, das Vernügen gönne ich dir nicht! Hatte ich dir nicht gesagt, daß du mich nie wieder ansprechen sollst? Fort mit dir, bevor ich meine Klinge ziehe."~ */
  IF ~~ THEN REPLY #32647 /* ~"Jetzt reicht's mir aber wirklich, Mädel... zieh deine Klinge."~ */ DO ~Enemy()
ForceAttack(Protagonist,Myself)
~ EXIT
  IF ~~ THEN REPLY #32648 /* ~Bleib und kämpfe mit ihr.~ */ DO ~Enemy()
ForceAttack(Protagonist,Myself)
~ EXIT
  IF ~~ THEN REPLY #32649 /* ~Geh.~ */ EXIT
END

IF ~  Global("Sarhava","GLOBAL",6)
~ THEN BEGIN 45 // from:
  SAY #32535 /* ~Sarhava nimmt deine Gegenwart mit einem Kopfnicken zur Kenntnis, weigert sich aber, mit dir zu reden.~ */
  IF ~~ THEN REPLY #32650 /* ~Geh.~ */ EXIT
END
