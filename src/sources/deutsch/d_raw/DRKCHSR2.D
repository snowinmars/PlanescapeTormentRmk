// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DRKCHSR2.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\de_DE\dialog.tlk
// dialogF  : (none)

BEGIN ~DRKCHSR2~

IF ~  Global("RChaser","AR0400",0)
Global("RChaser2","AR0400",0)
~ THEN BEGIN 0 // from:
  SAY #15606 /* ~Dieser schmuddelig aussehende Sammler starrt ins Leere und scheint seine Umgebung überhaupt nicht zu registrieren.~ */
  IF ~~ THEN REPLY #15721 /* ~"Sei gegrüßt..."~ */ GOTO 1
  IF ~~ THEN REPLY #15722 /* ~Greif ihn an.~ */ DO ~Enemy()
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
~ EXIT
  IF ~~ THEN REPLY #15723 /* ~Laß ihn in Ruhe.~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0 65.0
  SAY #15607 /* ~Er zuckt zusammen, als sei er jäh aus seiner Meditation gerissen worden. Als er dich erblickt, wird er vor Entsetzen ganz blaß.~ */
  IF ~~ THEN REPLY #15724 /* ~"Wir müssen reden..."~ */ GOTO 2
  IF ~~ THEN REPLY #15725 /* ~Greif ihn an.~ */ DO ~Enemy()
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
~ EXIT
  IF ~~ THEN REPLY #15726 /* ~"Bin nur zufällig vorbeigekommen. Leb wohl."~ */ DO ~Enemy()
EscapeArea()
~ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.0
  SAY #15608 /* ~"Äh... ja... worüber wollt Ihr mit mir sprechen, mein Herr?"~ */
  IF ~~ THEN REPLY #15727 /* ~"Du kannst die Fassade fallenlassen. Ich weiß, was du bist, Scheusal."~ */ GOTO 3
  IF ~~ THEN REPLY #15728 /* ~"Über deinen Anhänger."~ */ GOTO 53
  IF ~~ THEN REPLY #15729 /* ~"Über deinen Tod..."~ */ DO ~Enemy()
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
~ EXIT
  IF ~~ THEN REPLY #15730 /* ~"Vergiß es. Leb wohl."~ */ DO ~Enemy()
EscapeArea()
~ EXIT
END

IF ~~ THEN BEGIN 3 // from: 2.0 53.0
  SAY #15617 /* ~"Was? Nein, mein Herr! Ich weiß nicht, wovon Ihr... Ihr..." Dein unnachgiebiger Blick läßt ihn verstummen. Er seufzt. Dann sagt er mit gefaßter Stimme: "Na schön. Und wie seid Ihr mir auf die Schliche gekommen?"~ */
  IF ~~ THEN REPLY #15731 /* ~"Ein Rattenfänger hat mir von dir erzählt."~ */ GOTO 4
  IF ~~ THEN REPLY #15732 /* ~"Zwei Scheusale haben's mir erzählt."~ */ GOTO 8
  IF ~~ THEN REPLY #15733 /* ~"Das geht dich nichts an. Ich habe Fragen..."~ */ GOTO 11
END

IF ~~ THEN BEGIN 4 // from: 3.0
  SAY #15619 /* ~"Ein Rattenfänger? Aha." Er kratzt sich am Kinn. "Hmm. Könnt Ihr vielleicht auch sagen, wie er heißt?"~ */
  IF ~~ THEN REPLY #15734 /* ~"Ja. Sie hieß Rattenknochen."~ */ GOTO 5
  IF ~~ THEN REPLY #15736 /* ~Lüge: "Nein."~ */ GOTO 6
  IF ~~ THEN REPLY #15738 /* ~"Kann ich dir nicht sagen."~ */ GOTO 7
END

IF ~~ THEN BEGIN 5 // from: 4.0
  SAY #15621 /* ~"Ah, ja. Ich danke Euch." Er hält kurz inne, vielleicht, um sich den Namen einzuprägen. "Und weshalb seid Ihr zu mir gekommen?"~ */
  IF ~~ THEN REPLY #15742 /* ~"Wegen deinem Anhänger."~ */ GOTO 12
  IF ~~ THEN REPLY #15743 /* ~"Ich habe ein paar Fragen..."~ */ GOTO 54
  IF ~~ THEN REPLY #15745 /* ~"Über deinen Tod..."~ */ DO ~Enemy()
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
~ EXIT
  IF ~~ THEN REPLY #15748 /* ~"Eigentlich wegen gar nichts. Leb wohl."~ */ DO ~Enemy()
EscapeArea()
~ EXIT
END

IF ~~ THEN BEGIN 6 // from: 4.1
  SAY #15623 /* ~Er schüttelt traurig den Kopf. "Wie bedauerlich. Aber sagt, weshalb seid Ihr zu mir gekommen?"~ */
  IF ~~ THEN REPLY #15787 /* ~"Wegen deinem Anhänger."~ */ GOTO 12
  IF ~~ THEN REPLY #15788 /* ~"Ich habe ein paar Fragen..."~ */ GOTO 54
  IF ~~ THEN REPLY #15789 /* ~"Über deinen Tod..."~ */ DO ~Enemy()
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
~ EXIT
  IF ~~ THEN REPLY #15793 /* ~"Eigentlich wegen gar nichts. Leb wohl."~ */ DO ~Enemy()
EscapeArea()
~ EXIT
END

IF ~~ THEN BEGIN 7 // from: 4.2 8.2
  SAY #15624 /* ~Er schüttelt traurig den Kopf. "Das kann ich gut verstehen. Und was verlangt Ihr als Gegenleistung für Eure Auskunft? Ihr habt ihre Identität doch wohl kaum umsonst preisgegeben... es sei denn, um ihnen schaden. Sagt mir, weshalb seid Ihr zu mir gekommen?"~ */
  IF ~~ THEN REPLY #15796 /* ~"Wegen deinem Anhänger."~ */ GOTO 12
  IF ~~ THEN REPLY #15799 /* ~"Ich habe ein paar Fragen..."~ */ GOTO 54
  IF ~~ THEN REPLY #15801 /* ~"Über deinen Tod..."~ */ DO ~Enemy()
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
~ EXIT
  IF ~~ THEN REPLY #15803 /* ~"Eigentlich wegen gar nichts. Leb wohl."~ */ DO ~Enemy()
EscapeArea()
~ EXIT
END

IF ~~ THEN BEGIN 8 // from: 3.1
  SAY #15625 /* ~Er macht ein ungläubiges Gesicht. "Was?! Nicht zu fassen! Wie... wie konnten sie es wagen!" Sein Blick verfinstert sich. Er fletscht seine schiefen, gelben Zähne und knurrt: "Und wie hießen sie? Wißt Ihr das?"~ */
  IF ~~ THEN REPLY #15804 /* ~"Ja. Aethelgrin und Tegar'in Dreimalverdammt."~ */ GOTO 9
  IF ~~ THEN REPLY #15805 /* ~Lüge: "Nein."~ */ GOTO 10
  IF ~~ THEN REPLY #15806 /* ~"Kann ich dir nicht sagen."~ */ GOTO 7
END

IF ~~ THEN BEGIN 9 // from: 8.0
  SAY #15627 /* ~Er grinst hämisch. "Dreimal Verdammter, nein wirklich! Das werden sie mir noch büßen, und wenn ich tausend Jahre darauf warten muß!" Er beruhigt sich wieder. "Nun, in welcher Angelegenheit wolltet Ihr mich sprechen?"~ */
  IF ~~ THEN REPLY #15807 /* ~"Wegen deinem Anhänger."~ */ GOTO 12
  IF ~~ THEN REPLY #15808 /* ~"Ich habe ein paar Fragen..."~ */ GOTO 54
  IF ~~ THEN REPLY #15809 /* ~"Über deinen Tod..."~ */ DO ~Enemy()
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
~ EXIT
  IF ~~ THEN REPLY #15810 /* ~"Eigentlich wegen gar nichts. Leb wohl."~ */ DO ~Enemy()
EscapeArea()
~ EXIT
END

IF ~~ THEN BEGIN 10 // from: 8.1
  SAY #15629 /* ~Er verzieht sein Gesicht und ballt seine Hand wütend zur Faust. "Grrr! Wenn ich die erwische... das werden sie mir büßen, und wenn ich tausend Jahre darauf warten muß!" Er beruhigt sich wieder. "Nun, in welcher Angelegenheit wollt Ihr mich sprechen?"~ */
  IF ~~ THEN REPLY #15811 /* ~"Wegen deinem Anhänger."~ */ GOTO 12
  IF ~~ THEN REPLY #15812 /* ~"Ich habe ein paar Fragen..."~ */ GOTO 54
  IF ~~ THEN REPLY #15813 /* ~"Über deinen Tod..."~ */ DO ~Enemy()
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
~ EXIT
  IF ~~ THEN REPLY #15814 /* ~"Eigentlich wegen gar nichts. Leb wohl."~ */ DO ~Enemy()
EscapeArea()
~ EXIT
END

IF ~~ THEN BEGIN 11 // from: 3.2
  SAY #15631 /* ~"Tatsächlich? Und weshalb seid Ihr zu mir gekommen, wenn ich fragen darf?"~ */
  IF ~~ THEN REPLY #15815 /* ~"Wegen deinem Anhänger."~ */ GOTO 12
  IF ~~ THEN REPLY #15816 /* ~"Ich habe ein paar Fragen..."~ */ GOTO 54
  IF ~~ THEN REPLY #15817 /* ~"Über deinen Tod..."~ */ DO ~Enemy()
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
~ EXIT
  IF ~~ THEN REPLY #15818 /* ~"Eigentlich wegen gar nichts. Leb wohl."~ */ DO ~Enemy()
EscapeArea()
~ EXIT
END

IF ~~ THEN BEGIN 12 // from: 5.0 6.0 7.0 9.0 10.0 11.0 54.5
  SAY #15632 /* ~"Hmm?" Er macht einen verwirrten Eindruck. "Und was wäre das für ein Anhänger?"~ */
  IF ~~ THEN REPLY #15819 /* ~"Verschwende nicht meine Zeit. Du weißt, wovon ich rede."~ */ DO ~SetGlobal("RC_Pendant","AR0400",1)
~ GOTO 14
  IF ~~ THEN REPLY #15820 /* ~"Hast du nicht einen Anhänger? Der wie ein Schädel aussieht?"~ */ GOTO 13
  IF ~~ THEN REPLY #15821 /* ~"Vergiß es. Ich hätte da ein paar Fragen..."~ */ GOTO 54
  IF ~~ THEN REPLY #15822 /* ~"Vergiß es. Leb wohl."~ */ DO ~Enemy()
EscapeArea()
~ EXIT
END

IF ~~ THEN BEGIN 13 // from: 12.1
  SAY #15633 /* ~"Wie... ich... nein, nichts dergleichen. Wie kommt Ihr überhaupt darauf?"~ */
  IF ~~ THEN REPLY #15823 /* ~"Verschwende nicht meine Zeit. Du weißt, wovon ich rede."~ */ DO ~SetGlobal("RC_Pendant","AR0400",1)
~ GOTO 14
  IF ~~ THEN REPLY #15824 /* ~"Es würde dir also nichts ausmachen, wenn ich dich durchsuchen würde..."~ */ DO ~SetGlobal("RC_Pendant","AR0400",1)
~ GOTO 14
  IF ~~ THEN REPLY #15825 /* ~"Vergessen wir mal den Anhänger. Ich hätte da ein paar Fragen..."~ */ GOTO 54
  IF ~~ THEN REPLY #15826 /* ~"Vergiß einfach, daß ich gefragt habe. Leb wohl."~ */ DO ~Enemy()
EscapeArea()
~ EXIT
END

IF ~~ THEN BEGIN 14 // from: 12.0 13.0 13.1
  SAY #15635 /* ~Er seufzt. "Gut. Und was möchtet Ihr über meinen Anhänger wissen?"~ */
  IF ~~ THEN REPLY #15827 /* ~"Ich will's nur haben."~ */ GOTO 15
  IF ~~ THEN REPLY #15828 /* ~"Was genau ist das?"~ */ GOTO 16
  IF ~~ THEN REPLY #15829 /* ~"Vergessen wir mal den Anhänger. Ich hätte da ein paar Fragen..."~ */ GOTO 54
END

IF ~~ THEN BEGIN 15 // from: 14.0 54.6
  SAY #15637 /* ~"Aber..." er weicht zurück. "Ich darf ihn nicht verlieren! Versteht Ihr? Das wäre mein Untergang!"~ */
  IF ~~ THEN REPLY #15830 /* ~"Dann wirst du sterben..."~ */ DO ~Enemy()
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
~ EXIT
  IF ~~ THEN REPLY #15831 /* ~"Aber wieso? Was genau ist er denn?"~ */ GOTO 16
  IF ~~ THEN REPLY #15832 /* ~"Vergessen wir mal den Anhänger. Ich hätte da ein paar Fragen..."~ */ GOTO 54
END

IF ~~ THEN BEGIN 16 // from: 14.1 15.1 54.2
  SAY #15639 /* ~"Er ist nur ein einfaches Gefäß. Darin kann ich eine Seele einfangen, die ihrer sterbenden Hülle entweicht, bevor sie ihre eigene Existenzebene erreicht."~ */
  IF ~~ THEN REPLY #15833 /* ~"Warum würde jemand so was herstellen?"~ */ GOTO 17
  IF ~~ THEN REPLY #15834 /* ~"Wofür brauchst du ihn?"~ */ GOTO 22
  IF ~~ THEN REPLY #15835 /* ~Wahrheit: "Genug. Gib mir den Anhänger oder stirb."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_RCII_1","GLOBALGood",-1)
~ GOTO 33
  IF ~~ THEN REPLY #15836 /* ~Täuschung: "Genug. Gib mir den Anhänger oder stirb."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_RCII_1","GLOBALLaw",-1)
~ GOTO 33
  IF ~~ THEN REPLY #15837 /* ~"Ich hätte da noch ein paar Fragen."~ */ GOTO 54
  IF ~~ THEN REPLY #15838 /* ~"Mehr wollt' ich gar nicht wissen. Leb wohl."~ */ DO ~Enemy()
EscapeArea()
~ EXIT
END

IF ~~ THEN BEGIN 17 // from: 16.0
  SAY #15641 /* ~"Ein sterblicher Zauberer mit nicht unbeträchtlicher Macht, Yemeth, hat ihn anfertigen lassen. Er wollte unsterblich werden, doch die Vorstellung von Leichnamsdasein widerstrebte ihm. Aus seinem Journal geht hervor, daß ihn seine Studien der dunkelsten Überlieferungen der Nekromantie zu dem Anhänger inspiriert haben. Er wollte damit Seelen einfangen und sie benutzen, um sein eigenes Dasein zu verlängern, in dem er es mit neuem Leben erfüllte, bevor es dahinschwand."~ */
  IF ~~ THEN REPLY #15839 /* ~"Leichnamsdasein?"~ */ GOTO 21
  IF ~~ THEN REPLY #15840 /* ~"Wer hat den Anhänger denn eigentlich gemacht?"~ */ GOTO 18
  IF ~~ THEN REPLY #15841 /* ~"Wie hat er den Anhänger dann verloren?"~ */ GOTO 19
  IF ~~ THEN REPLY #15842 /* ~"Könnte man ihn benutzen, um mehr Macht zu bekommen?"~ */ GOTO 20
  IF ~~ THEN REPLY #15847 /* ~"Wofür brauchst du ihn?"~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_RCII_1","GLOBALGood",-1)
~ GOTO 22
  IF ~~ THEN REPLY #15852 /* ~Täuschung: "Genug. Gib mir den Anhänger oder stirb."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_RCII_1","GLOBALLaw",-1)
~ GOTO 33
  IF ~~ THEN REPLY #15859 /* ~"Ich hätte da noch ein paar Fragen."~ */ GOTO 54
  IF ~~ THEN REPLY #15864 /* ~"Mehr wollt' ich gar nicht wissen. Leb wohl."~ */ DO ~Enemy()
EscapeArea()
~ EXIT
END

IF ~~ THEN BEGIN 18 // from: 17.1 19.0 20.0 21.0
  SAY #15643 /* ~"Ihre Namen hat die Geschichte vergessen. Verschiedene Handwerker haben später behauptet, das Ding entworfen zu haben, und man munkelt sogar, ein Scheusal hätte es ausgebrütet."~ */
  IF ~~ THEN REPLY #15865 /* ~"Wie hat Yemeth den Anhänger verloren?"~ */ GOTO 19
  IF ~~ THEN REPLY #15866 /* ~"Könnte man ihn benutzen, um mehr Macht zu bekommen?"~ */ GOTO 20
  IF ~~ THEN REPLY #15868 /* ~"Wofür brauchst du ihn?"~ */ GOTO 22
  IF ~~ THEN REPLY #15870 /* ~Wahrheit: "Genug. Gib mir den Anhänger oder stirb."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_RCII_1","GLOBALGood",-1)
~ GOTO 33
  IF ~~ THEN REPLY #15871 /* ~Täuschung: "Genug. Gib mir den Anhänger oder stirb."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_RCII_1","GLOBALLaw",-1)
~ GOTO 33
  IF ~~ THEN REPLY #15872 /* ~"Ich hätte da noch ein paar Fragen."~ */ GOTO 54
  IF ~~ THEN REPLY #15874 /* ~"Mehr wollt' ich gar nicht wissen. Leb wohl."~ */ DO ~Enemy()
EscapeArea()
~ EXIT
END

IF ~~ THEN BEGIN 19 // from: 17.2 18.0 20.1 21.1
  SAY #15650 /* ~"Er wurde in einer überwältigenden, magischen Schlacht völlig vernichtet, wahrscheinlich durch einen mächtigen, gegnerischen Zauberer... von ihm selbst blieb angeblich nichts übrig, was die Energien des Anhängers hätten antreiben können. Der Anhänger selbst hat über die Jahrhunderte hinweg mehrmals den Besitzer gewechselt, bis ich ihn erhielt."~ */
  IF ~~ THEN REPLY #16006 /* ~"Wer hat den Anhänger denn eigentlich gemacht?"~ */ GOTO 18
  IF ~~ THEN REPLY #16007 /* ~"Könnte man ihn benutzen, um mehr Macht zu bekommen?"~ */ GOTO 20
  IF ~~ THEN REPLY #16008 /* ~"Wofür brauchst du ihn?"~ */ GOTO 22
  IF ~~ THEN REPLY #16009 /* ~Wahrheit: "Genug. Gib mir den Anhänger oder stirb."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_RCII_1","GLOBALGood",-1)
~ GOTO 33
  IF ~~ THEN REPLY #16010 /* ~Täuschung: "Genug. Gib mir den Anhänger oder stirb."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_RCII_1","GLOBALLaw",-1)
~ GOTO 33
  IF ~~ THEN REPLY #16011 /* ~"Ich hätte da noch ein paar Fragen."~ */ GOTO 54
  IF ~~ THEN REPLY #16012 /* ~"Mehr wollt' ich gar nicht wissen. Leb wohl."~ */ DO ~Enemy()
EscapeArea()
~ EXIT
END

IF ~~ THEN BEGIN 20 // from: 17.3 18.1 19.1 21.2
  SAY #15654 /* ~"Das ist denkbar, aber ich wüßte nicht, wie. Der Anhänger ist im Grunde ein einfaches Gefäß - seine Kraft beruht auf Ritualen und Zaubersprüchen, die mit Yemeth womöglich unwiederbringlich verloren gegangen sind."~ */
  IF ~~ THEN REPLY #16013 /* ~"Wer hat den Anhänger denn eigentlich gemacht?"~ */ GOTO 18
  IF ~~ THEN REPLY #16014 /* ~"Wie hat er den Anhänger dann verloren?"~ */ GOTO 19
  IF ~~ THEN REPLY #16015 /* ~"Wofür brauchst du ihn?"~ */ GOTO 22
  IF ~~ THEN REPLY #16016 /* ~Wahrheit: "Genug. Gib mir den Anhänger oder stirb."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_RCII_1","GLOBALGood",-1)
~ GOTO 33
  IF ~~ THEN REPLY #16017 /* ~Täuschung: "Genug. Gib mir den Anhänger oder stirb."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_RCII_1","GLOBALLaw",-1)
~ GOTO 33
  IF ~~ THEN REPLY #16018 /* ~"Ich hätte da noch ein paar Fragen."~ */ GOTO 54
  IF ~~ THEN REPLY #16019 /* ~"Mehr wollt' ich gar nicht wissen. Leb wohl."~ */ DO ~Enemy()
EscapeArea()
~ EXIT
END

IF ~~ THEN BEGIN 21 // from: 17.0
  SAY #15657 /* ~Er seufzt leise. "Der Prozeß, durch den ein sterblicher Zauberer oder Kleriker ein Untotes Wesen mit großer Macht wird. Es ist ein sehr langwieriger Prozeß, der Jahre dauert und riesige Mengen obskurer Reagenzien und ähnliches erfordert und nicht selten fehlschlägt. Ein Leichnam ist demnach eine Art Untoter mit freiem Willen, wie ein Vampir, der die geistigen und körperlichen Fähigkeiten, die der Sterbliche vor seinem Tod besaß, behält."~ */
  IF ~~ THEN REPLY #16020 /* ~"Wer hat den Anhänger denn eigentlich gemacht?"~ */ GOTO 18
  IF ~~ THEN REPLY #16021 /* ~"Wie hat Yemeth den Anhänger verloren?"~ */ GOTO 19
  IF ~~ THEN REPLY #16022 /* ~"Könnte man den Anhänger benutzen, um mehr Macht zu bekommen?"~ */ GOTO 20
  IF ~~ THEN REPLY #16023 /* ~"Wofür brauchst du den Anhänger?"~ */ GOTO 22
  IF ~~ THEN REPLY #16024 /* ~Wahrheit: "Genug. Gib mir den Anhänger oder stirb."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_RCII_1","GLOBALGood",-1)
~ GOTO 33
  IF ~~ THEN REPLY #16025 /* ~Täuschung: "Genug. Gib mir den Anhänger oder stirb."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_RCII_1","GLOBALLaw",-1)
~ GOTO 33
  IF ~~ THEN REPLY #16026 /* ~"Ich hätte da noch ein paar Fragen."~ */ GOTO 54
  IF ~~ THEN REPLY #16027 /* ~"Mehr wollt' ich gar nicht wissen. Leb wohl."~ */ DO ~Enemy()
EscapeArea()
~ EXIT
END

IF ~~ THEN BEGIN 22 // from: 16.1 17.4 18.2 19.2 20.2 21.3 54.0
  SAY #15659 /* ~"Das ist eine lange Geschichte. Wenn Ihr meine Gründe wirklich kennen wollt, muß ich sie ganz von vorne erzählen."~ */
  IF ~~ THEN REPLY #16028 /* ~"Na gut. Schieß los..."~ */ DO ~SetGlobal("RC_Tale","AR0400",1)
~ GOTO 23
  IF ~~ THEN REPLY #16029 /* ~Wahrheit: "Genug. Gib mir den Anhänger oder stirb."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_RCII_1","GLOBALGood",-1)
~ GOTO 33
  IF ~~ THEN REPLY #16030 /* ~Täuschung: "Genug. Gib mir den Anhänger oder stirb."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_RCII_1","GLOBALLaw",-1)
~ GOTO 33
  IF ~~ THEN REPLY #16031 /* ~"Vielleicht ein anderes Mal. Ich hätte da ein paar Fragen..."~ */ GOTO 54
  IF ~~ THEN REPLY #16032 /* ~"Vielleicht ein anderes Mal. Leb wohl."
~ */ DO ~Enemy()
EscapeArea()
~ EXIT
END

IF ~~ THEN BEGIN 23 // from: 22.0 54.1
  SAY #15661 /* ~"Wir Ihr bemerkt habt, bin ich eine Baatezu-Frau - ein Scheusal. Ich gehöre zu den sogenannten 'Erinnyen', den teuflischen Verführerinnen. Meine wahre Gestalt ist so unvorstellbar schön, daß alle Männer vor Verlangen schwach werden und alle Frauen eifersüchtig mit den Zähnen knirschen, wenn sie mich sehen."~ */
  IF ~~ THEN REPLY #16033 /* ~"Das kann ich nicht glauben."~ */ GOTO 24
  IF ~~ THEN REPLY #16034 /* ~"Aha. Sprich weiter..."~ */ GOTO 25
  IF ~~ THEN REPLY #16035 /* ~Wahrheit: "Genug. Gib mir den Anhänger oder stirb."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_RCII_1","GLOBALGood",-1)
~ GOTO 33
  IF ~~ THEN REPLY #16036 /* ~Täuschung: "Genug. Gib mir den Anhänger oder stirb."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_RCII_1","GLOBALLaw",-1)
~ GOTO 33
  IF ~~ THEN REPLY #16037 /* ~"Ich höre mir den Rest ein anderes Mal an. Ich hätte da ein paar Fragen..."~ */ GOTO 54
  IF ~~ THEN REPLY #16038 /* ~"Das ist alles, was ich vorerst wissen wollte. Leb wohl."~ */ DO ~Enemy()
EscapeArea()
~ EXIT
END

IF ~~ THEN BEGIN 24 // from: 23.0
  SAY #15662 /* ~"Ich werde Euch alles zu seiner Zeit erzählen. Wollt Ihr mich anhören?"~ */
  IF ~~ THEN REPLY #16039 /* ~"Ja. Erzähl weiter..."~ */ GOTO 25
  IF ~~ THEN REPLY #16040 /* ~Wahrheit: "Genug. Gib mir den Anhänger oder stirb."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_RCII_1","GLOBALGood",-1)
~ GOTO 33
  IF ~~ THEN REPLY #16041 /* ~Täuschung: "Genug. Gib mir den Anhänger oder stirb."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_RCII_1","GLOBALLaw",-1)
~ GOTO 33
  IF ~~ THEN REPLY #16042 /* ~"Ich höre mir den Rest ein anderes Mal an. Ich hätte da ein paar Fragen..."~ */ GOTO 54
  IF ~~ THEN REPLY #16043 /* ~"Das ist alles, was ich vorerst wissen wollte. Leb wohl."~ */ DO ~Enemy()
EscapeArea()
~ EXIT
END

IF ~~ THEN BEGIN 25 // from: 23.1 24.0
  SAY #15663 /* ~"Auf allen Ebenen zusammen gibt es nur fünfhundert von uns - wußtet Ihr das? Wir sind eine seltene Rasse, und eine hochmütige dazu: Wir beneiden die, die uns überlegen sind, und verachten die, die uns unterlegen sind. Wenn wir die Schönheit mal beiseite lassen, stehen meine Schwestern und ich einem Scheusal in puncto Ehrgeiz in nichts nach, denn auch wir wollen in unseren exklusiven Rängen aufsteigen, indem wir sterbliche Seelen in die Höhlen Baators locken."~ */
  IF ~~ THEN REPLY #16044 /* ~"Erzähl weiter..."~ */ GOTO 26
  IF ~~ THEN REPLY #16045 /* ~Wahrheit: "Genug. Gib mir den Anhänger oder stirb."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_RCII_1","GLOBALGood",-1)
~ GOTO 33
  IF ~~ THEN REPLY #16046 /* ~Täuschung: "Genug. Gib mir den Anhänger oder stirb."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_RCII_1","GLOBALLaw",-1)
~ GOTO 33
  IF ~~ THEN REPLY #16047 /* ~"Ich höre mir den Rest ein anderes Mal an. Ich hätte da ein paar Fragen..."~ */ GOTO 54
  IF ~~ THEN REPLY #16048 /* ~"Das ist alles, was ich vorerst wissen wollte. Leb wohl."~ */ DO ~Enemy()
EscapeArea()
~ EXIT
END

IF ~~ THEN BEGIN 26 // from: 25.0
  SAY #15664 /* ~"Die 'größten' Seelen sind die Seelen der Sterblichen, die sich für besonders fromm und rein hielten... wie beispielsweise die Kleriker. Ich erlag der törichten Vorstellung, eine solche Seele verführen zu können, und dachte nur daran, wieviel Ruhm es mir einbringen würde, diese schwierige Herausforderung zu meistern..."~ */
  IF ~~ THEN REPLY #16049 /* ~Hör weiter zu.~ */ GOTO 27
  IF ~~ THEN REPLY #16050 /* ~Wahrheit: "Genug. Gib mir den Anhänger oder stirb."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_RCII_1","GLOBALGood",-1)
~ GOTO 33
  IF ~~ THEN REPLY #16051 /* ~Täuschung: "Genug. Gib mir den Anhänger oder stirb."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_RCII_1","GLOBALLaw",-1)
~ GOTO 33
  IF ~~ THEN REPLY #16052 /* ~"Ich höre mir den Rest ein anderes Mal an. Ich hätte da ein paar Fragen..."~ */ GOTO 54
  IF ~~ THEN REPLY #16053 /* ~"Das ist alles, was ich vorerst wissen wollte. Leb wohl."~ */ DO ~Enemy()
EscapeArea()
~ EXIT
END

IF ~~ THEN BEGIN 27 // from: 26.0
  SAY #15665 /* ~"Ich habe versucht, einen tief gläubigen Mann zu verführen, einen hohen Kleriker, der über beträchtliche geistige Macht verfügte. Ich war schon kurz davor, ihn rumzukriegen - dachte ich jedenfalls - bis er eines Tages auf mich losging."~ */
  IF ~~ THEN REPLY #16054 /* ~"Sprich weiter..."~ */ GOTO 28
  IF ~~ THEN REPLY #16055 /* ~Wahrheit: "Genug. Gib mir den Anhänger oder stirb."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_RCII_1","GLOBALGood",-1)
~ GOTO 33
  IF ~~ THEN REPLY #16056 /* ~Täuschung: "Genug. Gib mir den Anhänger oder stirb."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_RCII_1","GLOBALLaw",-1)
~ GOTO 33
  IF ~~ THEN REPLY #16057 /* ~"Ich höre mir den Rest ein anderes Mal an. Ich hätte da ein paar Fragen..."~ */ GOTO 54
  IF ~~ THEN REPLY #16058 /* ~"Das ist alles, was ich vorerst wissen wollte. Leb wohl."~ */ DO ~Enemy()
EscapeArea()
~ EXIT
END

IF ~~ THEN BEGIN 28 // from: 27.0
  SAY #15667 /* ~"Dieser Bastard hat mich in diese jämmerliche Gestalt verflucht. Normalerweise ist es für Teufel ein Leichtes, derartige Flüche aufzuheben, aber die Stärke dieses Sterblichen war so groß... ich bin mir sicher, daß die Mächte es auf mich abgesehen hatten!"~ */
  IF ~~ THEN REPLY #16059 /* ~"Verflucht in die Gestalt eines häßlichen Mannes? Welche Ironie. Erzähl weiter..."~ */ GOTO 29
  IF ~~ THEN REPLY #16060 /* ~"Ich höre mir den Rest ein anderes Mal an. Ich hätte da ein paar Fragen..."~ */ GOTO 54
  IF ~~ THEN REPLY #16061 /* ~"Das ist alles, was ich vorerst wissen wollte. Leb wohl."~ */ DO ~Enemy()
EscapeArea()
~ EXIT
END

IF ~~ THEN BEGIN 29 // from: 28.0
  SAY #15669 /* ~"Wie Ihr Euch denken könnt, war von meinen Schwestern keine Hilfe zu erwarten. Sie waren froh über mein Schicksal, denn da eine neue, niedrige Erinnye auf Platz fünfhundert nachrückte - verbesserten sie ihre eigene Position."~ */
  IF ~~ THEN REPLY #16062 /* ~"Erzähl weiter..."~ */ GOTO 30
  IF ~~ THEN REPLY #16063 /* ~Wahrheit: "Genug. Gib mir den Anhänger oder stirb."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_RCII_1","GLOBALGood",-1)
~ GOTO 33
  IF ~~ THEN REPLY #16064 /* ~Täuschung: "Genug. Gib mir den Anhänger oder stirb."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_RCII_1","GLOBALLaw",-1)
~ GOTO 33
  IF ~~ THEN REPLY #16065 /* ~"Ich höre mir den Rest ein anderes Mal an. Ich hätte da ein paar Fragen..."
~ */ GOTO 54
  IF ~~ THEN REPLY #16066 /* ~"Das ist alles, was ich vorerst wissen wollte. Leb wohl."~ */ DO ~Enemy()
EscapeArea()
~ EXIT
END

IF ~~ THEN BEGIN 30 // from: 29.0
  SAY #15672 /* ~"Die Dunklen Acht, diese mächtigen Teufel, denen alle Erinnyen unterstehen, fanden die Geschichte amüsant, zeigten aber auch ein wenig Mitleid - oder besser gesagt, sie wußten, wie schlecht es für sie war, eine so erfahrene Verführerin zu verlieren. Also haben sie mir ein Ultimatum gestellt..."~ */
  IF ~~ THEN REPLY #16067 /* ~"Sprich weiter..."~ */ GOTO 31
  IF ~~ THEN REPLY #16068 /* ~Wahrheit: "Genug. Gib mir den Anhänger oder stirb."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_RCII_1","GLOBALGood",-1)
~ GOTO 33
  IF ~~ THEN REPLY #16069 /* ~Täuschung: "Genug. Gib mir den Anhänger oder stirb."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_RCII_1","GLOBALLaw",-1)
~ GOTO 33
  IF ~~ THEN REPLY #16070 /* ~"Ich höre mir den Rest ein anderes Mal an. Ich hätte da ein paar Fragen..."~ */ GOTO 54
  IF ~~ THEN REPLY #16071 /* ~"Das ist alles, was ich vorerst wissen wollte. Leb wohl."~ */ DO ~Enemy()
EscapeArea()
~ EXIT
END

IF ~~ THEN BEGIN 31 // from: 30.0
  SAY #15675 /* ~"Mir wurde genau ein Jahr Zeit gegeben, um zehn Seelen nach Baator zu bringen... nicht mehr, und nicht weniger. Gelingt es mir, erhalte ich meine Schönheit und meinen Rang zurück; andernfalls werde ich in einen jämmerlichen Kocrachon verwandelt - oder, noch schlimmer, in einen Barbazu oder...", bei dem Gedanken schaudert ihn, "... in einen Spinagon."~ */
  IF ~~ THEN REPLY #16072 /* ~"Dieser Anhänger ist also..."~ */ GOTO 32
END

IF ~~ THEN BEGIN 32 // from: 31.0
  SAY #15676 /* ~"Ja, das ist meine einzige Hoffnung. Ich habe bereits mehrere Seelen darin gefangen und werde sie nach Baator bringen, wo sie bis ans Ende der Zeit eingesperrt bleiben. Mir bleibt nur wenig Zeit, meine letzte Seele zu gewinnen... die zehnte Seele, mit der ich erlöst würde und zu meinen schrecklich-schönen Schwestern zurückkehren könnte."~ */
  IF ~~ THEN REPLY #16073 /* ~Wahrheit: "Interessante Geschichte. Rück jetzt das Glitzerding raus oder stirb."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_RCII_1","GLOBALGood",-1)
~ GOTO 33
  IF ~~ THEN REPLY #16074 /* ~Täuschung: "Interessante Geschichte. Jetzt gib mir das Glitzerding oder stirb."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_RCII_1","GLOBALLaw",-1)
~ GOTO 33
  IF ~~ THEN REPLY #16075 /* ~"Aha. Aber ich muß den Anhänger trotzdem mitnehmen."~ */ GOTO 55
  IF ~~ THEN REPLY #16076 /* ~"Vergessen wir mal den Anhänger. Ich hätte da ein paar Fragen..."~ */ GOTO 54
  IF ~~ THEN REPLY #16077 /* ~"Dann behalte den Anhänger. Leb wohl."~ */ DO ~Enemy()
EscapeArea()
~ EXIT
END

IF ~~ THEN BEGIN 33 // from: 16.2 16.3 17.5 18.3 18.4 19.3 19.4 20.3 20.4 21.4 21.5 22.1 22.2 23.2 23.3 24.1 24.2 25.1 25.2 26.1 26.2 27.1 27.2 29.1 29.2 30.1 30.2 32.0 32.1
  SAY #15677 /* ~Er geht noch einen Schritt zurück: "Halt! Ihr versteht nicht! Der Tod ist nur eine Unannehmlichkeit - in Baator würde ich mich mit der Zeit verbessern. Doch wenn ich meine Frist nicht einhalte... verliere ich alles und werde für Jahrhunderte aus den Rängen der Erinnyen verbannt - vielleicht sogar für immer. Seht Ihr? Der Tod ist keinesfalls schlimmer als der Verlust des Anhängers!"~ */
  IF ~~ THEN REPLY #16078 /* ~"Warum sollte mich das interessieren?"~ */ GOTO 34
  IF ~~ THEN REPLY #16079 /* ~Greif ihn an.~ */ DO ~Enemy()
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
~ EXIT
  IF ~~ THEN REPLY #16080 /* ~"Vergiß es; behalte deinen Anhänger. Leb wohl."~ */ DO ~Enemy()
EscapeArea()
~ EXIT
END

IF ~~ THEN BEGIN 34 // from: 33.0 57.0
  SAY #15679 /* ~"Das hat zwei Gründe... Erstens bin ich nicht völlig ohne Macht. Denkt dran... der junge Kämpfer, der mich bei Tag beschützt hat, ist jetzt mein ergebener Diener, für immer in meiner teuflischen Macht gefangen. Beneidet Ihr seine Stellung?"~ */
  IF ~~ THEN REPLY #16081 /* ~"Drohst du mir?"~ */ GOTO 35
  IF ~~ THEN REPLY #16082 /* ~"Nein, aber was ist der zweite Grund?"~ */ GOTO 36
  IF ~~ THEN REPLY #16083 /* ~"Du willst mich nur irreführen. Ich weiß, daß der Fluch dich schwach gemacht hat."~ */ GOTO 36
  IF ~~ THEN REPLY #16084 /* ~Greif ihn an, bevor er noch was sagt.
~ */ DO ~Enemy()
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
~ EXIT
  IF ~~ THEN REPLY #16085 /* ~"Vergiß es; behalte deinen Anhänger. Leb wohl."~ */ DO ~Enemy()
EscapeArea()
~ EXIT
END

IF ~~ THEN BEGIN 35 // from: 34.0
  SAY #15682 /* ~"Tu ich nicht. Aber hört mir zu!"~ */
  IF ~~ THEN GOTO 36
END

IF ~~ THEN BEGIN 36 // from: 34.1 34.2 35.0
  SAY #15684 /* ~Er fährt fort: "Zweitens würdet Ihr von dem Anhänger nicht besonders profitieren. Ich dagegen schon. Was würdet Ihr damit anfangen? Würde er Euch mehr bringen als die Gunst einer Erinnye? Denkt darüber nach..."~ */
  IF ~~ THEN REPLY #16086 /* ~"Vielleicht. Mir wurde Macht versprochen, wenn ich ihn ausliefere."~ */ GOTO 37
  IF ~~ THEN REPLY #16087 /* ~"Machst du mir ein Angebot?"~ */ GOTO 42
  IF ~~ THEN REPLY #16088 /* ~"Genug geredet. Ich erschlag dich einfach und schnapp mir den Anhänger."~ */ DO ~Enemy()
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
~ EXIT
  IF ~~ THEN REPLY #16089 /* ~"Vergiß es; behalte deinen Anhänger. Leb wohl."~ */ DO ~EscapeArea()
~ EXIT
END

IF ~~ THEN BEGIN 37 // from: 36.0 55.0 56.1 58.0
  SAY #15686 /* ~"Macht?" fragt er spöttisch. "Wer? Welche Macht wurde Euch versprochen? Sicher kann ich Euch mehr bieten."~ */
  IF ~~ THEN REPLY #16090 /* ~"Von zwei Scheusalen, und ich weiß nicht genau, um was für eine Macht es sich handelt."~ */ GOTO 38
  IF ~~ THEN REPLY #16091 /* ~"Das geht dich nichts an."~ */ GOTO 59
  IF ~~ THEN REPLY #16092 /* ~"Genug geredet. Ich erschlag dich einfach und schnapp mir den Anhänger."~ */ DO ~Enemy()
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
~ EXIT
  IF ~~ THEN REPLY #16093 /* ~"Vergiß es; behalte deinen Anhänger. Leb wohl."~ */ DO ~EscapeArea()
~ EXIT
END

IF ~~ THEN BEGIN 38 // from: 37.0 59.0
  SAY #15687 /* ~Er starrt dich einen Augenblick stumm an. "Ihr wißt nicht genau, um was für eine Macht es sich handelt? Habt Ihr einen Vertrag unterzeichnet?"~ */
  IF ~~ THEN REPLY #16094 /* ~"Nein."~ */ GOTO 40
  IF ~~ THEN REPLY #16095 /* ~"Was hat das damit zu tun?"~ */ GOTO 39
  IF ~~ THEN REPLY #16096 /* ~"Genug geredet. Ich erschlag dich einfach und schnapp mir den Anhänger."~ */ DO ~Enemy()
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
~ EXIT
  IF ~~ THEN REPLY #16097 /* ~"Vergiß es; behalte deinen Anhänger. Leb wohl."~ */ DO ~EscapeArea()
~ EXIT
END

IF ~~ THEN BEGIN 39 // from: 38.1
  SAY #15688 /* ~"Oh, dies ist sogar von allergrößter Wichtigkeit, glaubt mir!"~ */
  IF ~~ THEN GOTO 40
END

IF ~~ THEN BEGIN 40 // from: 38.0 39.0
  SAY #15689 /* ~"Ohne einen Vertrag sind die Scheusale in keinster Weise verpflichtet, diese - wie auch immer beschaffene - Macht zu verleihen. Und was wäre, wenn diese Macht gar nicht nach Eurem Wunsch wäre?"~ */
  IF ~~ THEN REPLY #16098 /* ~"Wie meinst du das?"~ */ GOTO 41
  IF ~~ THEN REPLY #16099 /* ~"Genug geredet. Ich erschlag dich einfach und schnapp mir den Anhänger."~ */ DO ~Enemy()
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
~ EXIT
  IF ~~ THEN REPLY #16100 /* ~"Vergiß es; behalte deinen Anhänger. Leb wohl."~ */ DO ~Enemy()
EscapeArea()
~ EXIT
END

IF ~~ THEN BEGIN 41 // from: 40.0
  SAY #15690 /* ~"Was wäre zum Beispiel, wenn Euch Hörner sprießen würden, weil Ihr mit einer 'unheimlichen Hörnermacht' ausgestattet worden seid? Oder mit der Macht, alle vierzehn Tage violett anzulaufen? Was verleitet Euch zu glauben, daß diese Macht Euch nützen wird? Von einem wahren Scheusal kann man nur Tricks und leere Versprechungen erwarten."~ */
  IF ~~ THEN REPLY #16101 /* ~"Machst du mir ein Angebot?"~ */ GOTO 42
  IF ~~ THEN REPLY #16102 /* ~"Genug geredet. Ich erschlag dich einfach und schnapp mir den Anhänger."~ */ DO ~Enemy()
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
~ EXIT
  IF ~~ THEN REPLY #16103 /* ~"Vergiß es; behalte deinen Anhänger. Leb wohl."~ */ DO ~Enemy()
EscapeArea()
~ EXIT
END

IF ~~ THEN BEGIN 42 // from: 36.1 41.0 59.1
  SAY #15691 /* ~"Ja, das mache ich. Bitte nehmt mir den Anhänger nicht weg. Ich brauche ihn, um meine alte Schönheit wiederzuerlangen. Und dann muß ich noch einiges erledigen und blutige Rache üben... doch ich verspreche Euch: In drei Jahren werde ich Euch vier Monate lang dienen. Wir können dies auch gerne in einem - gültigen - Vertrag festhalten. Was ist Euch lieber, Narbengesicht: ein unterwürfiges Scheusal oder ein möglicherweise nutzloses Schmuckstück?"~ */
  IF ~~ THEN REPLY #16104 /* ~"Einverstanden. Zeig mir den Vertrag."~ */ GOTO 45
  IF ~~ THEN REPLY #16105 /* ~"Drei Jahre ist noch lange hin."~ */ GOTO 43
  IF ~~ THEN REPLY #16106 /* ~"Ich will acht Monate. Wirst du so lange dienen?"~ */ GOTO 44
  IF ~~ THEN REPLY #16107 /* ~"Genug geredet. Ich erschlag dich einfach und schnapp mir den Anhänger."~ */ DO ~Enemy()
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
~ EXIT
  IF ~~ THEN REPLY #16108 /* ~"Vergiß es; behalte deinen Anhänger. Leb wohl."
~ */ DO ~EscapeArea()
~ EXIT
END

IF ~~ THEN BEGIN 43 // from: 42.1 44.1
  SAY #15694 /* ~Er lacht leise und schüttelt den Kopf. "Aber, aber! Was hättet Ihr dafür gegeben, eine so wunderschöne und schamlose Teufelin ab sofort zu Eurer Verfügung zu haben? Ich sehe Euch an, daß Ihr schon viel Erfahrung habt, Narbengesicht - wie viel genau, weiß ich nicht, jedenfalls genug. Ich verstehe gar nicht, weshalb Ihr so kurzsichtig seid. Falls es an Eurer Ungeduld liegt, biete ich Euch an, Euch schon in zwei Jahren zwei Monate lang zu dienen."~ */
  IF ~~ THEN REPLY #16109 /* ~"Ich erkläre mich bereit, in zwei Jahren einen zweimonatigen Dienst zu leisten."~ */ GOTO 45
  IF ~~ THEN REPLY #16110 /* ~"Ich erkläre mich zu vier Monaten Dienst in drei Jahren bereit."~ */ GOTO 45
  IF ~~ THEN REPLY #16111 /* ~"Ich will acht Monate. Wirst du so lange dienen?"~ */ GOTO 44
  IF ~~ THEN REPLY #16112 /* ~"Genug geredet. Ich erschlag dich einfach und schnapp mir den Anhänger."~ */ DO ~Enemy()
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
~ EXIT
  IF ~~ THEN REPLY #16113 /* ~"Vergiß es; behalte deinen Anhänger. Leb wohl."~ */ DO ~Enemy()
EscapeArea()
~ EXIT
END

IF ~~ THEN BEGIN 44 // from: 42.2 43.2
  SAY #15696 /* ~"Ich diene Euch in drei Jahren sechs Monate lang. Mehr nicht. Seid Ihr damit einverstanden?"~ */
  IF ~~ THEN REPLY #16114 /* ~"Einverstanden. Zeig mir den Vertrag."~ */ GOTO 45
  IF ~~ THEN REPLY #16115 /* ~"Drei Jahre ist noch lange hin."~ */ GOTO 43
  IF ~~ THEN REPLY #16116 /* ~"Genug geredet. Ich erschlag dich einfach und schnapp mir den Anhänger."~ */ DO ~Enemy()
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
~ EXIT
  IF ~~ THEN REPLY #16117 /* ~"Vergiß es; behalte deinen Anhänger. Leb wohl."~ */ DO ~Enemy()
EscapeArea()
~ EXIT
END

IF ~~ THEN BEGIN 45 // from: 42.0 43.0 43.1 44.0
  SAY #15698 /* ~Er nickt. "Ich bin es nicht gewohnt, solche Geschäfte abzuschließen, aber ich müßte eigentlich..." er bricht ab und durchwühlt mit gerunzelter Stirn die Falten seiner Robe. Schließlich hellt sich sein Blick auf - hinter seinem Rücken zaubert er eine Schriftrolle hervor. "Ah! Da ist er ja..." Er reicht dir den Vertrag und eine rote Schreibfeder.~ */
  IF ~~ THEN REPLY #16118 /* ~Unterschreibe den Vertrag.~ */ GOTO 52
  IF ~  CheckStatLT(Protagonist,13,INT)
CheckStatLT(Protagonist,13,WIS)
~ THEN REPLY #16119 /* ~Lies den Vertrag.~ */ GOTO 46
  IF ~  CheckStatLT(Protagonist,13,INT)
CheckStatGT(Protagonist,12,WIS)
~ THEN REPLY #16120 /* ~Lies den Vertrag.~ */ GOTO 47
  IF ~  CheckStatGT(Protagonist,12,INT)
CheckStatLT(Protagonist,17,INT)
~ THEN REPLY #16121 /* ~Lies den Vertrag.~ */ GOTO 48
  IF ~  CheckStatGT(Protagonist,16,INT)
CheckStatLT(Protagonist,17,WIS)
~ THEN REPLY #16122 /* ~Lies den Vertrag.~ */ GOTO 49
  IF ~  CheckStatGT(Protagonist,16,INT)
CheckStatLT(Protagonist,17,WIS)
~ THEN REPLY #16123 /* ~Lies den Vertrag.~ */ GOTO 50
  IF ~~ THEN REPLY #16124 /* ~"Ich hab's mir anders überlegt. Ich erschlag dich einfach und schnapp mir den Anhänger."
~ */ DO ~Enemy()
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
~ EXIT
  IF ~~ THEN REPLY #16125 /* ~"Vergiß es; behalte deinen Anhänger. Leb wohl."~ */ DO ~Enemy()
EscapeArea()
~ EXIT
END

IF ~~ THEN BEGIN 46 // from: 45.1
  SAY #15700 /* ~Der Vertrag scheint auf Haut geschrieben zu sein anstatt auf Pergament. Die Buchstaben sehen aus wie feine Linien aus Blut direkt unter der Hautoberfläche. An dem Vertrag scheint soweit nichts auszusetzen sein.~ */
  IF ~~ THEN REPLY #16126 /* ~Unterschreibe den Vertrag.~ */ GOTO 52
  IF ~~ THEN REPLY #16127 /* ~"Ich hab's mir anders überlegt. Ich erschlag dich einfach und schnapp mir den Anhänger."~ */ DO ~Enemy()
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
~ EXIT
  IF ~~ THEN REPLY #16128 /* ~"Vergiß es; behalte deinen Anhänger. Leb wohl."~ */ DO ~Enemy()
EscapeArea()
~ EXIT
END

IF ~~ THEN BEGIN 47 // from: 45.2
  SAY #15702 /* ~Der Vertrag scheint auf Haut geschrieben zu sein anstatt auf Pergament. Die Buchstaben sehen aus wie feine Linien aus Blut direkt unter der Hautoberfläche. Genau wie du vermutet hattest, sind darin auch einige weniger angenehme Klauseln versteckt.~ */
  IF ~~ THEN REPLY #16129 /* ~"Wir müssen ein paar Einzelheiten neu verhandeln..."~ */ GOTO 51
  IF ~~ THEN REPLY #16130 /* ~Unterschreibe den Vertrag so, wie er ist.~ */ GOTO 52
  IF ~~ THEN REPLY #16131 /* ~"Ich hab's mir anders überlegt. Ich erschlag dich einfach und schnapp mir den Anhänger."~ */ DO ~Enemy()
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
~ EXIT
  IF ~~ THEN REPLY #16132 /* ~"Vergiß es; behalte deinen Anhänger. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 48 // from: 45.3
  SAY #15703 /* ~Der Vertrag scheint auf Haut geschrieben zu sein anstatt auf Pergament. Die Buchstaben sehen aus wie feine Linien aus Blut direkt unter der Hautoberfläche. Genau wie du logischerweise vermutet hattest, sind darin auch einige weniger angenehme Klauseln versteckt.~ */
  IF ~~ THEN REPLY #16133 /* ~"Wir müssen ein paar Einzelheiten neu verhandeln..."~ */ GOTO 51
  IF ~~ THEN REPLY #16134 /* ~Unterschreibe den Vertrag so, wie er ist.~ */ GOTO 52
  IF ~~ THEN REPLY #16135 /* ~"Ich hab's mir anders überlegt. Ich erschlag dich einfach und schnapp mir den Anhänger."
~ */ DO ~Enemy()
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
~ EXIT
  IF ~~ THEN REPLY #16136 /* ~"Vergiß es; behalte deinen Anhänger. Leb wohl."~ */ DO ~Enemy()
EscapeArea()
~ EXIT
END

IF ~~ THEN BEGIN 49 // from: 45.4
  SAY #15704 /* ~Der Vertrag scheint auf Haut geschrieben zu sein anstatt auf Pergament. Die Buchstaben sehen aus wie feine Linien aus Blut direkt unter der Hautoberfläche. Genau wie du logischerweise vermutet hattest, sind darin auch einige weniger angenehme Klauseln versteckt. Du sucht Hintertüren, die dir von Nutzen sein könnten, findest aber keine.~ */
  IF ~~ THEN REPLY #16137 /* ~"Wir müssen ein paar Einzelheiten neu verhandeln..."~ */ GOTO 51
  IF ~~ THEN REPLY #16138 /* ~Unterschreibe den Vertrag so, wie er ist.~ */ GOTO 52
  IF ~~ THEN REPLY #16139 /* ~"Ich hab's mir anders überlegt. Ich erschlag dich einfach und schnapp mir den Anhänger."~ */ DO ~Enemy()
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
~ EXIT
  IF ~~ THEN REPLY #16140 /* ~"Vergiß es; behalte deinen Anhänger. Leb wohl."~ */ DO ~Enemy()
EscapeArea()
~ EXIT
END

IF ~~ THEN BEGIN 50 // from: 45.5
  SAY #15705 /* ~Der Vertrag scheint auf Haut geschrieben zu sein anstatt auf Pergament. Die Buchstaben sehen aus wie feine Linien aus Blut direkt unter der Haut. Auf den ersten Blick siehst du, daß darin auch einige weniger angenehme, trickreich versteckte Klauseln enthalten sind. Du findest aber auch ein paar Hintertüren, die dir von Nutzen sein könnten.~ */
  IF ~~ THEN REPLY #16141 /* ~"Wir müssen ein paar Einzelheiten neu verhandeln..."~ */ GOTO 51
  IF ~~ THEN REPLY #16142 /* ~Unterschreibe den Vertrag so, wie er ist.~ */ GOTO 52
  IF ~~ THEN REPLY #16143 /* ~"Ich hab's mir anders überlegt. Ich erschlag dich einfach und schnapp mir den Anhänger."~ */ DO ~Enemy()
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
~ EXIT
  IF ~~ THEN REPLY #16144 /* ~"Vergiß es; behalte deinen Anhänger. Leb wohl."~ */ DO ~Enemy()
EscapeArea()
~ EXIT
END

IF ~~ THEN BEGIN 51 // from: 47.0 48.0 49.0 50.0
  SAY #15706 /* ~"Kein Problem. Das habe ich erwartet." Als du den Vertrag mit dem Teufel durchgehst, Fragen stellst und deinen Standpunkt darlegst, Kompromisse eingehst und Forderungen stellst, dämmert dir plötzlich, daß dies nicht der erste Vertrag ist, den du unterzeichnest...~ */
  IF ~~ THEN REPLY #16145 /* ~Versuche, dich daran zu erinnern.~ */ GOTO 63
  IF ~~ THEN REPLY #16146 /* ~Versuche nicht, dich daran zu erinnern.~ */ GOTO 62
END

IF ~~ THEN BEGIN 52 // from: 45.0 46.0 47.1 48.1 49.1 50.1 62.0
  SAY #15707 /* ~Als du den Vertrag unterzeichnet hast, löst er sich zusammen mit der Schreibfeder in mehrere süßlich-riechende, rötliche Rauchwölkchen auf. "Lebt wohl, Wanderer... Wir werden uns wiedersehen, wenn die Frist verstrichen ist, und ich werde dir wie vereinbart meine Dienste zur Verfügung stellen." Er verneigt sich und geht.~ */
  IF ~~ THEN REPLY #16147 /* ~"Warte, ich hätte da ein paar Fragen..."~ */ DO ~SetGlobal("RC_Contract","GLOBAL",1)
AddexperienceParty(1000)
~ GOTO 64
  IF ~~ THEN REPLY #16148 /* ~Laß ihn gehen.~ */ DO ~SetGlobal("RC_Contract","GLOBAL",1)
AddexperienceParty(1000)
Enemy()
EscapeArea()
~ EXIT
END

IF ~~ THEN BEGIN 53 // from: 2.1
  SAY #15708 /* ~"Wie bitte, mein Herr? Ich trage keinen Schmuck..."~ */
  IF ~~ THEN REPLY #16149 /* ~"Du kannst die Fassade fallenlassen. Ich weiß, was du bist, Scheusal."~ */ GOTO 3
  IF ~~ THEN REPLY #16150 /* ~"Schluß mit dem Gerede... ich erschlag dich einfach und schnapp ihn mir."~ */ DO ~Enemy()
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
~ EXIT
  IF ~~ THEN REPLY #16151 /* ~"Vergiß es. Leb wohl."~ */ DO ~Enemy()
EscapeArea()
~ EXIT
END

IF ~~ THEN BEGIN 54 // from: 5.1 6.1 7.1 9.1 10.1 11.1 12.2 13.2 14.2 15.2 16.4 17.6 18.5 19.5 20.5 21.6 22.3 23.4 24.3 25.3 26.3 27.3 28.1 29.3 30.3 32.3 55.4 56.3 57.2 58.3 60.0 61.0
  SAY #15709 /* ~"Ich werde Euch antworten, so gut ich kann."~ */
  IF ~  Global("RC_Tale","AR0400",0)
~ THEN REPLY #16152 /* ~"Warum bist du hier?"~ */ GOTO 22
  IF ~  Global("RC_Tale","AR0400",1)
~ THEN REPLY #16153 /* ~"Erzähl mir deine Geschichte noch mal."~ */ GOTO 23
  IF ~~ THEN REPLY #16154 /* ~"Erzähl mir was über deinen Anhänger."~ */ GOTO 16
  IF ~  !Dead("Adyzoel")
~ THEN REPLY #16155 /* ~"Wer ist der Lebemann, in dessen Nähe du jeden Tag stehst?"~ */ GOTO 60
  IF ~  Dead("Adyzoel")
~ THEN REPLY #16156 /* ~"Wer war der Lebemann, in dessen Nähe du jeden Tag gestanden hast?"~ */ GOTO 61
  IF ~  Global("RC_Pendant","AR0400",0)
~ THEN REPLY #16157 /* ~"Vergiß es. Gib mir einfach den Anhänger."~ */ GOTO 12
  IF ~  Global("RC_Pendant","AR0400",1)
~ THEN REPLY #16158 /* ~"Vergiß es. Gib mir einfach den Anhänger."~ */ GOTO 15
  IF ~~ THEN REPLY #16159 /* ~"Vergiß es. Leb wohl."~ */ DO ~Enemy()
EscapeArea()
~ EXIT
END

IF ~~ THEN BEGIN 55 // from: 32.2
  SAY #15710 /* ~"Aber weshalb?"~ */
  IF ~~ THEN REPLY #16160 /* ~"Weil mir Macht versprochen wurde, wenn ich ihn abliefere."~ */ GOTO 37
  IF ~~ THEN REPLY #16161 /* ~"Weil das, was du mit ihm machst, falsch ist."~ */ GOTO 56
  IF ~~ THEN REPLY #16162 /* ~"Das geht dich überhaupt nichts an."~ */ GOTO 58
  IF ~~ THEN REPLY #16163 /* ~"Genug geredet. Ich erschlag dich einfach und schnapp mir den Anhänger."~ */ DO ~Enemy()
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
~ EXIT
  IF ~~ THEN REPLY #16164 /* ~"Vergessen wir mal den Anhänger. Ich hätte da ein paar Fragen..."~ */ GOTO 54
  IF ~~ THEN REPLY #16165 /* ~"Vergiß es; behalte deinen Anhänger. Leb wohl."~ */ DO ~Enemy()
EscapeArea()
~ EXIT
END

IF ~~ THEN BEGIN 56 // from: 55.1 58.1
  SAY #15711 /* ~"Und was würdet Ihr dann damit tun? Verhindern, daß er in die falschen Hände gerät? Ihn verkaufen? Ihn eintauschen? Und was soll der nächste Besitzer Eurer Meinung nach damit anfangen?"~ */
  IF ~~ THEN REPLY #16166 /* ~"Nichts Schlimmeres als das, was du damit machst."
~ */ GOTO 57
  IF ~~ THEN REPLY #16167 /* ~"Ich geb ihn zwei Scheusalen im Tausch gegen Macht."~ */ GOTO 37
  IF ~~ THEN REPLY #16168 /* ~"Genug geredet. Ich erschlag dich einfach und schnapp mir den Anhänger."~ */ DO ~Enemy()
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
~ EXIT
  IF ~~ THEN REPLY #16169 /* ~"Vergessen wir mal den Anhänger. Ich hätte da ein paar Fragen..."~ */ GOTO 54
  IF ~~ THEN REPLY #16170 /* ~"Vergiß es; behalte deinen Anhänger. Leb wohl."~ */ DO ~Enemy()
EscapeArea()
~ EXIT
END

IF ~~ THEN BEGIN 57 // from: 56.0
  SAY #15712 /* ~"Nur wenn es Euch gelingen würde, den Anhänger so zu verstecken, daß niemand in je findet. Er ist so konstruiert, daß seine Verwendung keinen Nutzen bringt. Es gibt Gründe, die dafür sprechen, das Ding in meinen Händen zu belassen, das könnt Ihr mir glauben."~ */
  IF ~~ THEN REPLY #16171 /* ~"Zum Beispiel?"~ */ GOTO 34
  IF ~~ THEN REPLY #16172 /* ~"Genug geredet. Ich erschlag dich einfach und schnapp mir den Anhänger."~ */ DO ~Enemy()
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
~ EXIT
  IF ~~ THEN REPLY #16173 /* ~"Vergessen wir mal den Anhänger. Ich hätte da ein paar Fragen..."~ */ GOTO 54
  IF ~~ THEN REPLY #16174 /* ~"Vergiß es; behalte deinen Anhänger. Leb wohl."~ */ DO ~Enemy()
EscapeArea()
~ EXIT
END

IF ~~ THEN BEGIN 58 // from: 55.2
  SAY #15713 /* ~Er wirkt schockiert. "Wie könnt Ihr das sagen? Ihr würdet mich einfach so ausrauben, mir meine einzige große Chance wegnehmen, meine Hoffnung vernichten und mir dann sagen, Ihr hättet schon Eure Gründe dafür?"~ */
  IF ~~ THEN REPLY #16175 /* ~"Weil mir Macht versprochen wurde, wenn ich ihn abliefere."~ */ GOTO 37
  IF ~~ THEN REPLY #16176 /* ~"Weil das, was du mit ihm machst, falsch ist."~ */ GOTO 56
  IF ~~ THEN REPLY #16177 /* ~"Genug geredet. Ich erschlag dich einfach und schnapp mir den Anhänger."~ */ DO ~Enemy()
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
~ EXIT
  IF ~~ THEN REPLY #16178 /* ~"Vergessen wir mal den Anhänger. Ich hätte da ein paar Fragen..."~ */ GOTO 54
  IF ~~ THEN REPLY #16179 /* ~"Vergiß es; behalte deinen Anhänger. Leb wohl."~ */ DO ~Enemy()
EscapeArea()
~ EXIT
END

IF ~~ THEN BEGIN 59 // from: 37.1
  SAY #15714 /* ~"Da täuscht Ihr Euch - und wie mich das etwas angeht. Wie soll ich ein Gegenangebot machen, wenn ich nicht einmal die aktuellen Vertragsbedingungen kenne?"~ */
  IF ~~ THEN REPLY #16180 /* ~"Von zwei Scheusalen, und ich weiß nicht genau, um was für eine Macht es sich handelt."~ */ GOTO 38
  IF ~~ THEN REPLY #16181 /* ~"Machst du mir ein Angebot?"~ */ GOTO 42
  IF ~~ THEN REPLY #16182 /* ~"Genug geredet. Ich erschlag dich einfach und schnapp mir den Anhänger."
~ */ DO ~Enemy()
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
~ EXIT
  IF ~~ THEN REPLY #16183 /* ~"Vergiß es; behalte deinen Anhänger. Leb wohl."~ */ DO ~Enemy()
EscapeArea()
~ EXIT
END

IF ~~ THEN BEGIN 60 // from: 54.3
  SAY #15715 /* ~"Er ist nur ein arroganter junger Edelmann, der gut mit dem Schwert umgehen kann. Er ist mein ergebener Diener, ohne es zu wissen, und wird mir solange dienen, bis ich ihn gehen lasse oder selbst zugrunde gehe."~ */
  IF ~~ THEN REPLY #16184 /* ~"Ich hätte da noch ein paar Fragen..."~ */ GOTO 54
  IF ~~ THEN REPLY #16185 /* ~"Mehr wollt' ich gar nicht wissen. Leb wohl."~ */ DO ~Enemy()
EscapeArea()
~ EXIT
END

IF ~~ THEN BEGIN 61 // from: 54.4
  SAY #15716 /* ~"Er ist nur ein arroganter junger Edelmann, der gut mit dem Schwert umgehen kann. Er war mein ergebener Diener, ohne es zu wissen, und diente mir als eine Art Beschützer."~ */
  IF ~~ THEN REPLY #16186 /* ~"Ich hätte da noch ein paar Fragen..."~ */ GOTO 54
  IF ~~ THEN REPLY #16187 /* ~"Mehr wollt' ich gar nicht wissen. Leb wohl."~ */ DO ~Enemy()
EscapeArea()
~ EXIT
END

IF ~~ THEN BEGIN 62 // from: 51.1 63.0 63.1 63.2 63.3
  SAY #15717 /* ~Schließlich beendet ihr die Vertragsverhandlungen. "Und? Seid Ihr zufrieden?"~ */
  IF ~~ THEN REPLY #16188 /* ~"Ja, ich werde jetzt unterschreiben."~ */ GOTO 52
  IF ~~ THEN REPLY #16189 /* ~"Nein... ich erschlag dich einfach und schnapp mir den Anhänger."~ */ DO ~Enemy()
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
~ EXIT
  IF ~~ THEN REPLY #16190 /* ~"Vergessen wir mal den Vertrag. Behalte deinen Anhänger. Leb wohl."~ */ DO ~Enemy()
EscapeArea()
~ EXIT
END

IF ~~ THEN BEGIN 63 // from: 51.0
  SAY #15718 /* ~Je mehr du darüber nachdenkst, desto sicherer bist du dir, daß dies nicht dein erster Vertrag war. Tagelanges Wälzen in muffigen Büchern und Gesetzestexten als Vorbereitung auf die Vertragsverhandlung; vorsichtig formulierte Sätze mit versteckten Doppeldeutigkeiten, Hintertüren, als Wahrheiten getarnte Lügen, das Verdrehen von Gesetzen und Versprechen bis zu deren Unkenntlichkeit... diese und ähnliche Erinnerungen brechen plötzlich über dich herein.~ */
  IF ~  CheckStatLT(Protagonist,13,INT)
CheckStatGT(Protagonist,12,WIS)
~ THEN REPLY #16192 /* ~Sprich weiter...~ */ DO ~AddexperienceParty(200)
~ GOTO 62
  IF ~  CheckStatGT(Protagonist,12,INT)
CheckStatLT(Protagonist,17,INT)
~ THEN REPLY #16191 /* ~Sprich weiter...~ */ DO ~AddexperienceParty(400)
~ GOTO 62
  IF ~  CheckStatGT(Protagonist,16,INT)
CheckStatLT(Protagonist,17,WIS)
~ THEN REPLY #16193 /* ~Sprich weiter...~ */ DO ~AddexperienceParty(400)
~ GOTO 62
  IF ~  CheckStatGT(Protagonist,16,INT)
CheckStatLT(Protagonist,17,WIS)
~ THEN REPLY #16194 /* ~Sprich weiter...~ */ DO ~AddexperienceParty(600)
~ GOTO 62
END

IF ~~ THEN BEGIN 64 // from: 52.0
  SAY #15719 /* ~"Keine Fragen. Wir werden genug Zeit zum Reden haben, wenn wir uns das nächste Mal treffen. Dann kannst du mich alles fragen, was du willst. Und jetzt leb wohl."~ */
  IF ~~ THEN DO ~Enemy()
EscapeArea()
~ EXIT
END

IF ~  Global("RChaser","AR0400",1)
Global("RChaser2","AR0400",0)
~ THEN BEGIN 65 // from:
  SAY #15720 /* ~Malric, der Lebemann-Jäger steht da und starrt in die Ferne. 'Er' scheint überhaupt nicht wahrzunehmen, was um ihn herum passiert.~ */
  IF ~~ THEN REPLY #16195 /* ~"Sei gegrüßt..."~ */ GOTO 1
  IF ~~ THEN REPLY #16196 /* ~Greif ihn an.~ */ DO ~Enemy()
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
~ EXIT
  IF ~~ THEN REPLY #16197 /* ~Laß 'ihn' in Ruhe.~ */ EXIT
END
