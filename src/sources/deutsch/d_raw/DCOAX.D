// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DCOAX.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\de_DE\dialog.tlk
// dialogF  : (none)

BEGIN ~DCOAX~

IF ~  Global("Coaxmetal","GLOBAL",0)
~ THEN BEGIN 0 // from:
  SAY #3017 /* ~Du siehst eine eiserne... Gestalt von schier unfaßbarer Größe. Aufrecht stehend würde ihr Kopf das Dach des Belagerungsturms durchstoßen. Ein donnerndes Echo hallt durch den Gang, als die Gestalt in ihrer Schmiede drauf los hämmert, und der Geruch von Ruß und Asche erfüllt die Luft.~ */
  IF ~~ THEN REPLY #3019 /* ~"Sei gegrüßt."~ */ JOURNAL #67791 /* ~Ich hab einen Weg gefunden, wie ich in den Belagerungsturm gelangen kann. In dem Turm ist ein eiserner Golem, fast so groß wie der Turm selbst. Er scheint mit Hilfe eines Ofens im Turm Waffen zu schmieden.~ */ GOTO 3
  IF ~~ THEN REPLY #3018 /* ~Laß den Golem in Ruhe.~ */ EXIT
END

IF ~  GlobalGT("Coaxmetal","GLOBAL",0)
~ THEN BEGIN 1 // from:
  SAY #26210 /* ~Der gigantische Eisengolem arbeitet immer noch in seiner Schmiede. Funken, Asche und zischende Dampfwolken steigen von unterhalb des Laufgangs empor.~ */
  IF ~  GlobalLT("Coaxmetal","GLOBAL",4)
~ THEN REPLY #26277 /* ~"Ich hätte da ein paar Fragen..."~ */ GOTO 2
  IF ~  Global("Coaxmetal","GLOBAL",4)
PartyHasItem("Cube")
~ THEN REPLY #26279 /* ~"Ich hätte da ein paar Fragen an dich..."~ */ GOTO 59
  IF ~  Global("Coaxmetal","GLOBAL",4)
!PartyHasItem("Cube")
~ THEN REPLY #26280 /* ~"Ich hätte da ein paar Fragen an dich..."~ */ GOTO 63
  IF ~~ THEN REPLY #26281 /* ~Laß den Golem in Ruhe.~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.0 4.2 5.2 6.4 7.1 8.1 9.1 10.1 11.1 12.1 13.4 14.4 15.1 16.0 17.2 18.1 19.1 20.1 21.1 22.0 23.1 24.1 25.0 26.1 27.1 28.0 29.1 30.1 31.0 33.0 34.1 35.1 36.1 37.3 38.1 39.2 40.1 41.1 42.1 43.1 44.1 45.1 46.1 50.0 65.1
  SAY #26211 /* ~FRAG.~ */
  IF ~~ THEN REPLY #26283 /* ~"Was bist du?"~ */ GOTO 4
  IF ~~ THEN REPLY #26284 /* ~"Was ist das für ein Ort hier?"~ */ GOTO 17
  IF ~  GlobalGT("Coaxmetal","GLOBAL",0)
~ THEN REPLY #26285 /* ~"Was machst du?"~ */ GOTO 5
  IF ~  GlobalGT("Coaxmetal","GLOBAL",1)
~ THEN REPLY #26286 /* ~"Warum stellst du Waffen her?"~ */ GOTO 7
  IF ~  GlobalGT("Coaxmetal","GLOBAL",1)
~ THEN REPLY #26287 /* ~"Kannst du mehr darüber erzählen, was du mit den Waffen anstellst?"~ */ GOTO 6
  IF ~  GlobalGT("Coaxmetal","GLOBAL",2)
~ THEN REPLY #26288 /* ~"Kannst du was mit meinen Waffen anfangen?"~ */ GOTO 64
  IF ~  Global("Know_Blood_War","GLOBAL",1)
~ THEN REPLY #26290 /* ~"Was weißt du über den Blutkrieg?"~ */ GOTO 23
  IF ~  Global("Know_Ravel","GLOBAL",1)
~ THEN REPLY #26291 /* ~"Hast du mal was von einer Nachthexe namens Ravel gehört?"~ */ GOTO 26
  IF ~  GlobalGT("Regret","GLOBAL",0)
~ THEN REPLY #26292 /* ~"Weißt du etwas über eine Zitadelle, die die Festung der Reue genannt wird?"~ */ GOTO 29
  IF ~  Global("Dream","GLOBAL",2)
Global("Coaxmetal_Gives_Cage","GLOBAL",0)
~ THEN REPLY #26294 /* ~"Ich bräuchte einen schweren, verzierten, schmiedeeisernen Vogelkäfig. Hast du so was?"~ */ DO ~GiveItemCreate("DrmCage",Protagonist,1,0,0)
SetGlobal("Coaxmetal_Gives_Cage","GLOBAL",1)
~ GOTO 32
  IF ~  Global("Regret","GLOBAL",0)
~ THEN REPLY #26295 /* ~"Vielleicht ein anderes Mal. Leb wohl."~ */ EXIT
  IF ~  GlobalGT("Regret","GLOBAL",0)
~ THEN REPLY #26296 /* ~"Vielleicht ein anderes Mal. Leb wohl."~ */ GOTO 51
END

IF ~~ THEN BEGIN 3 // from: 0.0
  SAY #26212 /* ~Man hört das kreischende Geräusch, wenn Metall auf Metall reibt, als der Riese sich dir zuwendet. Plötzlich wird dir klar, daß der Golem selbst Teil des Belagerungsturms ist; Stahlträger, Rohre und riesige Halterungen verlaufen durch den unteren Teil seines Torsos in die Wände hinein, und seine unteren Körperpartien bilden die Schmiede.~ */
  IF ~~ THEN REPLY #26297 /* ~"Was *bist* du?"~ */ GOTO 4
  IF ~~ THEN REPLY #26298 /* ~"Schon gut... Ich bin hier offenbar an der falschen Adresse. Verzeih, daß ich dich gestört hab'."~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 2.0 3.0
  SAY #26213 /* ~ICH BIN EISEN, DEM MAN EINE AUFGABE GEGEBEN HAT.~ */
  IF ~  Global("Coaxmetal","GLOBAL",0)
~ THEN REPLY #26299 /* ~"Was für eine Aufgabe?"~ */ DO ~SetGlobal("Coaxmetal","GLOBAL",1)
~ GOTO 5
  IF ~  GlobalGT("Coaxmetal","GLOBAL",0)
~ THEN REPLY #26300 /* ~"Was war noch gleich deine Aufgabe?"~ */ GOTO 5
  IF ~  GlobalGT("Coaxmetal","GLOBAL",0)
~ THEN REPLY #26301 /* ~"Ja, das hast du bereits gesagt. Ich hätte da noch ein paar Fragen..."~ */ GOTO 2
  IF ~~ THEN REPLY #26302 /* ~"Ich... verstehe. Mehr wollt' ich gar nicht wissen. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 2.2 4.0 4.1
  SAY #26214 /* ~ICH SCHMIEDE DAS GERÄT, MIT DEM DAS MULTIVERSUM ZERSTÖRT WIRD.~ */
  IF ~  GlobalLT("Coaxmetal","GLOBAL",2)
~ THEN REPLY #26303 /* ~"Du meinst das Schmieden von Waffen? Das ist deine Aufgabe?"~ */ DO ~SetGlobal("Coaxmetal","GLOBAL",2)
~ GOTO 6
  IF ~  GlobalGT("Coaxmetal","GLOBAL",1)
~ THEN REPLY #26304 /* ~"Und vorhin hast du gesagt, daß deine Aufgabe darin besteht, Waffen zu schmieden... richtig?"~ */ GOTO 6
  IF ~  GlobalGT("Coaxmetal","GLOBAL",1)
~ THEN REPLY #26305 /* ~"Ich verstehe. Ich hätte noch ein paar Fragen..."~ */ GOTO 2
  IF ~~ THEN REPLY #26306 /* ~"Dann will ich dich nicht länger von der Arbeit abhalten. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 6 // from: 2.4 5.0 5.1 9.0
  SAY #26215 /* ~METALL IST WIE FLEISCH. BEIDE TRAGEN EIN POTENTIAL IN IHREN ADERN. DURCH DIE BERÜHRUNG MIT HITZE UND DRUCK GELANGT DAS POTENTIAL AN DIE OBERFLÄCHE. MEINE AUFGABE IST ES, DIESES POTENTIAL HERVORZUBRINGEN UND ZUM AUSDRUCK KOMMEN ZU LASSEN.~ */
  IF ~~ THEN REPLY #26307 /* ~"Für wen stellst du diese Waffen her?"~ */ GOTO 10
  IF ~~ THEN REPLY #26308 /* ~"Warum tust du das?"~ */ GOTO 7
  IF ~  GlobalLT("Coaxmetal","GLOBAL",3)
~ THEN REPLY #26309 /* ~"Kannst du was mit meinen Waffen anfangen?"~ */ DO ~SetGlobal("Coaxmetal","GLOBAL",3)
~ GOTO 64
  IF ~  Global("Coaxmetal","GLOBAL",3)
~ THEN REPLY #26310 /* ~"Kannst du was mit meinen Waffen anfangen?"~ */ GOTO 64
  IF ~~ THEN REPLY #26311 /* ~"Ich hätte da noch eine Frage."~ */ GOTO 2
  IF ~~ THEN REPLY #26312 /* ~"Dann will ich dich nicht länger von der Arbeit abhalten. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 7 // from: 2.3 6.1
  SAY #26216 /* ~DAS EISEN MEINES KÖRPERS EXISTIERTE EINST NUR IN FORM EINES ZAGHAFTEN AUSDRUCKS VON SCHMERZ. SCHWERTER. SPEERE. STREITÄXTE. PFEILSPITZEN. NIETE IN KATAPULTEN. AUS DIESEM KRIEGSGERÄT BIN ICH ENTSTANDEN.~ */
  IF ~~ THEN REPLY #26313 /* ~"Was ist passiert?"~ */ GOTO 8
  IF ~~ THEN REPLY #26314 /* ~"Ich hätte noch eine andere Frage..."~ */ GOTO 2
  IF ~~ THEN REPLY #26315 /* ~"Verstehe. Mehr wollte ich gar nicht wissen. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 8 // from: 7.0
  SAY #26217 /* ~DIESER ZAGHAFTE AUSDRUCK VON SCHMERZ WURDE GESCHMOLZEN, UM DIESEN KÖRPER ZU SCHMIEDEN. MEIN POTENTIAL DURFTE AN DIE OBERFLÄCHE DRINGEN. NUN IST ES MEINE AUFGABE, DAS POTENTIAL AUS ANDEREM METALL HERVORZUBRINGEN.
~ */
  IF ~~ THEN REPLY #26316 /* ~"Du hast gesagt, das jemand diese Waffen eingeschmolzen und deinen Körper geschmiedet hat. Wer?"~ */ GOTO 9
  IF ~~ THEN REPLY #26317 /* ~"Ich hätte da noch eine Frage..."~ */ GOTO 2
  IF ~~ THEN REPLY #26318 /* ~"Verstehe. Mehr wollte ich gar nicht wissen. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 9 // from: 8.0
  SAY #26218 /* ~DIE ENTROPIE HAT MICH VON DEN SCHLACHTFELDERN DER EBENEN ERLÖST.~ */
  IF ~~ THEN REPLY #26319 /* ~"Und du sagst, deine Aufgabe besteht jetzt darin, Waffen zu schmieden?"~ */ GOTO 6
  IF ~~ THEN REPLY #26320 /* ~"Ich verstehe... Ich hätte da noch eine Frage..."~ */ GOTO 2
  IF ~~ THEN REPLY #26321 /* ~"Nun, erinner mich dran, daß ich mich bei, äh, der Entropie bedanke, wenn ich sie mal wieder treffe. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 10 // from: 6.0
  SAY #26219 /* ~ICH SCHMIEDE SIE ZUM WOHLE DER ENTROPIE. SIE SIND AUSDRUCK DER SUCHE NACH SCHMERZ.~ */
  IF ~~ THEN REPLY #26322 /* ~"Wozu braucht die Entropie Waffen?"~ */ GOTO 11
  IF ~~ THEN REPLY #26323 /* ~"Verstehe. Ich hätte da noch ein paar Fragen..."~ */ GOTO 2
  IF ~~ THEN REPLY #26324 /* ~"Sehr interessant... Mehr wollt' ich gar nicht wissen. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 11 // from: 10.0
  SAY #26220 /* ~HINTER DIESEM TURM SAMMELT DIE ORDNUNG IHRE LEGIONEN. DAS MULTIVERSUM HEILT SEINE WUNDEN. BALD KANN SEINE STÄRKE AN DIE ENTROPIE HERANREICHEN.~ */
  IF ~~ THEN REPLY #26325 /* ~"Das Multiversum ist euer Feind? Warum?"~ */ JOURNAL #26107 /* ~Der Golem im Belagerungsturm behauptet, das Multiversum selbst sei sein Feind... Und das sei der Grund, weshalb er in der Schmiede arbeite. Er versuche, eine Waffe zu schmieden, mit der er das Multiversum zerstören könne. ~ */ GOTO 12
  IF ~~ THEN REPLY #26326 /* ~"Ich verstehe. Ich hätte noch ein paar Fragen..."~ */ GOTO 2
  IF ~~ THEN REPLY #26327 /* ~"Sehr interessant... Mehr wollt' ich gar nicht wissen. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 12 // from: 11.0
  SAY #26222 /* ~DAS MULTIVERSUM ATMET. ES WÄCHST. ES STAGNIERT. ES SCHMIEDET GLIED FÜR GLIED SEINE KETTEN UM DIE EBENEN HERUM. BALD WIRD VIELLEICHT SOGAR DIE ENTROPIE GEÄNDERT.~ */
  IF ~~ THEN REPLY #26328 /* ~"Und du bist dagegen, die Entropie in Ketten zu legen?"~ */ GOTO 13
  IF ~~ THEN REPLY #26329 /* ~"Ich verstehe. Ich hätte noch ein paar Fragen..."~ */ GOTO 2
  IF ~~ THEN REPLY #26330 /* ~"Sehr interessant... Mehr wollt' ich gar nicht wissen. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 13 // from: 12.0
  SAY #26223 /* ~WENN SICH EINE SACHE GEGEN SEINE EIGENE ZERSTÖRUNG ABSCHOTTET, DANN STIRBT SIE BLOSS EINEN ANDEREN TOD.~ */
  IF ~~ THEN REPLY #26331 /* ~"Du behauptest also, daß die Unsterblichkeit nur eine andere Form des Todes ist?"~ */ GOTO 34
  IF ~~ THEN REPLY #26332 /* ~"Was macht diesen Tod im Vergleich zu anderen schlecht?"~ */ GOTO 14
  IF ~~ THEN REPLY #26333 /* ~Wahrheit: "Es sei denn, der Tod, den du anbietest, ist grausam und sinnlos - ohne Bedeutung." ~ */ DO ~IncrementGlobalOnceEx("GLOBALLawful_Coaxmetal_2","GLOBALLaw",1)
~ GOTO 14
  IF ~~ THEN REPLY #26334 /* ~Wahrheit: "Wohl wahr. Was hat dich also dazu gebracht, für die Sache der Entropie zu kämpfen?"~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Coaxmetal_2","GLOBALLaw",-1)
~ GOTO 14
  IF ~~ THEN REPLY #26335 /* ~"Ich verstehe. Ich hätte noch ein paar Fragen..."~ */ GOTO 2
  IF ~~ THEN REPLY #26336 /* ~"Sehr interessant. Mehr wollt' ich gar nicht wissen. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 14 // from: 13.1 13.2 13.3
  SAY #26224 /* ~ALLE DINGE HABEN IM UNTERGANG EINEN GEMEINSAMEN NENNER. KRIEG IST NOTWENDIG. TOD IST NOTWENDIG. UNTERGANG IST NOTWENDIG.~ */
  IF ~~ THEN REPLY #26337 /* ~"Und wieviel davon ist zuviel?"~ */ GOTO 15
  IF ~~ THEN REPLY #26338 /* ~"Diese Dinge könnten notwendig sein... im Maßen."~ */ GOTO 15
  IF ~~ THEN REPLY #26339 /* ~"Diese Dinge sind *niemals* notwendig. Es ist falsch, sie zu fördern und die Zerstörung, die sie anrichten, zu verherrlichen."~ */ DO ~IncrementGlobalOnceEx("GLOBALGood_Coaxmetal_1","GLOBALGood",1)
~ GOTO 15
  IF ~~ THEN REPLY #26341 /* ~"Einverstanden. Ohne diese Dinge gibt es nichts als Stagnation."~ */ GOTO 16
  IF ~~ THEN REPLY #26342 /* ~"Ich verstehe. Ich hätte noch ein paar Fragen..."~ */ GOTO 2
  IF ~~ THEN REPLY #26343 /* ~"Sehr interessant... Mehr wollt' ich gar nicht wissen. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 15 // from: 14.0 14.1 14.2
  SAY #26225 /* ~ES GIBT KEINE GRENZEN. GRENZEN SIND EIN GLIED IN DER KETTE DER ORDNUNG. GRENZEN MÜSSEN ZERSCHMETTERT WERDEN.~ */
  IF ~~ THEN REPLY #26344 /* ~"Auch wenn die Folge der Tod ist?"~ */ GOTO 16
  IF ~~ THEN REPLY #26345 /* ~"Ich verstehe. Ich hätte noch ein paar Fragen..."~ */ GOTO 2
  IF ~~ THEN REPLY #26346 /* ~"Sehr interessant... mehr wollt' ich gar nicht wissen. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 16 // from: 14.3 15.0
  SAY #26226 /* ~ALLES MUSS UNTER DIE KLINGE DER ENTROPIE KOMMEN. ES KOMMT DIE ZEIT, IN DER ES NÖTIG SEIN WIRD, EINE BRESCHE IN DIE MAUERN DER SCHÖPFUNG ZU SCHLAGEN. DIE ORDNUNG MUSS UNTER DIE HERRSCHAFT DES SCHWERTS GESTELLT WERDEN. IHRE KETTEN WERDEN ZERSCHLAGEN. DAS MULTIVERSUM WIRD VERNICHTET.~ */
  IF ~~ THEN REPLY #26347 /* ~"Ich...verstehe. Ich hätte da noch ein paar Fragen..."~ */ GOTO 2
  IF ~~ THEN REPLY #26348 /* ~"Klingt nach einer mörderischen Schlacht... Vielleicht sieht man sich da. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 17 // from: 2.1
  SAY #26227 /* ~DIESER TURM IST EIN BELAGERUNGSGERÄT. ER DIENT DAZU, EINE BRESCHE IN DIE MAUERN ZWISCHEN DEN EBENEN ZU SCHLAGEN.~ */
  IF ~~ THEN REPLY #26349 /* ~"Eine Bresche schlagen? Wie das?"~ */ JOURNAL #26106 /* ~Offensichtlich hat der Belagerungsturm die Kraft, die Mauern zwischen den Ebenen zu durchbrechen. Er funktioniert also wie ein richtiger Belagerungsturm, nur im außerdimensionalen Sinne. Eine Invasionslegion hält sich auf einer Seite der Ebenenmauer bereit und wartet darauf, daß der Belagerungsturm seine Brücke herabläßt und ein Loch in die Zielebene schlägt, um dann durch den Belagerungsturm selbst in die neue Ebene zu strömen. Der Belagerungsturm wird so zu einer primitiven Tür, durch die eine Invasionsarmee in eine Ebene eindringen kann. Ich frage mich, welchen Schaden der Turm den Ebenen selbst zufügt, wenn er alle diese Löcher in das Multiversum schlägt... ~ */ GOTO 20
  IF ~~ THEN REPLY #26350 /* ~"Wenn dieser Belagerungsturm durch die Ebenen reisen kann, warum bleibst du dann hier?"~ */ GOTO 18
  IF ~~ THEN REPLY #26351 /* ~"Ich verstehe. Ich hätte noch ein paar Fragen..."~ */ GOTO 2
  IF ~~ THEN REPLY #26353 /* ~"Sehr interessant... mehr wollt' ich gar nicht wissen. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 18 // from: 17.1
  SAY #26228 /* ~DER TURM SITZT IN DIESER STADT GEFANGEN. DIE STADT IST EIN KÄFIG, IN DIE DER TURM KEINE BRESCHE SCHLAGEN KANN.~ */
  IF ~~ THEN REPLY #26354 /* ~"Wie kam denn der Belagerungsturm überhaupt in die Stadt?"~ */ GOTO 19
  IF ~~ THEN REPLY #26355 /* ~"Ich verstehe. Ich hätte noch ein paar Fragen..."~ */ GOTO 2
  IF ~~ THEN REPLY #26356 /* ~"Sehr interessant... Mehr wollt' ich gar nicht wissen. Leb wohl."
~ */ EXIT
END

IF ~~ THEN BEGIN 19 // from: 18.0
  SAY #26229 /* ~DER TURM HAT EINMAL DIE EBENEN BELAGERT. WIE ICH HIERHER GEBRACHT WURDE, WEISS ICH NICHT. WIE ICH FLIEHEN KANN, WEISS ICH NICHT.~ */
  IF ~~ THEN REPLY #26357 /* ~"Du behauptest, der Turm könne eine Bresche in die Ebenen schlagen? Wie das?"~ */ JOURNAL #26106 /* ~Offensichtlich hat der Belagerungsturm die Kraft, die Mauern zwischen den Ebenen zu durchbrechen. Er funktioniert also wie ein richtiger Belagerungsturm, nur im außerdimensionalen Sinne. Eine Invasionslegion hält sich auf einer Seite der Ebenenmauer bereit und wartet darauf, daß der Belagerungsturm seine Brücke herabläßt und ein Loch in die Zielebene schlägt, um dann durch den Belagerungsturm selbst in die neue Ebene zu strömen. Der Belagerungsturm wird so zu einer primitiven Tür, durch die eine Invasionsarmee in eine Ebene eindringen kann. Ich frage mich, welchen Schaden der Turm den Ebenen selbst zufügt, wenn er alle diese Löcher in das Multiversum schlägt... ~ */ GOTO 20
  IF ~~ THEN REPLY #26358 /* ~"Ich verstehe. Ich hätte noch ein paar Fragen..."~ */ GOTO 2
  IF ~~ THEN REPLY #26359 /* ~"Das tut mir leid. Ich glaub nicht, daß ich dir helfen kann. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 20 // from: 17.0 19.0
  SAY #26230 /* ~DER TURM HAT SICH IN EINER EBENE FEST VERANKERT. WENN DIE BRÜCKE DES TURMS HERABGELASSEN WIRD, SCHLÄGT DIES EINE WUNDE IN DAS MULTIVERSUM. LEGIONEN KÖNNEN DURCH DEN TURM VON EINER EBENE IN DIE ANDERE GELANGEN. WENN DIE EBENE DER ENTROPIE GENUG GEDIENT HAT, VERANKERT SICH DER TURM WIEDER.~ */
  IF ~~ THEN REPLY #26366 /* ~"Was ist aus den Legionen geworden, die den Turm benutzt haben?"~ */ GOTO 21
  IF ~~ THEN REPLY #26367 /* ~"Ich verstehe. Ich hätte noch ein paar Fragen..."~ */ GOTO 2
  IF ~~ THEN REPLY #26368 /* ~"Sehr interessant... mehr wollt' ich gar nicht wissen. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 21 // from: 20.0
  SAY #26231 /* ~DIE ENTROPIE HAT SIE VERNICHTET.~ */
  IF ~~ THEN REPLY #26369 /* ~"Und was ist mit den Ebenen geschehen, in die der Belagerungsturm eingefallen ist?"~ */ GOTO 22
  IF ~~ THEN REPLY #26370 /* ~"Ich verstehe. Ich hätte noch ein paar Fragen..."~ */ GOTO 2
  IF ~~ THEN REPLY #26371 /* ~"Sehr interessant... mehr wollt' ich gar nicht wissen. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 22 // from: 21.0
  SAY #26232 /* ~DIE ENTROPIE HAT SIE VERNICHTET.~ */
  IF ~~ THEN REPLY #26372 /* ~"Ich... verstehe. Ich hätte aber noch ein paar Fragen..."~ */ GOTO 2
  IF ~~ THEN REPLY #26373 /* ~"Sehr interessant... Mehr wollt' ich gar nicht wissen. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 23 // from: 2.6
  SAY #26233 /* ~ES IST DER KRIEG; DURCH DEN DIE EBENEN VERNICHTET WERDEN.~ */
  IF ~~ THEN REPLY #26374 /* ~"Wie lange geht das schon so?"~ */ GOTO 24
  IF ~~ THEN REPLY #26375 /* ~"Ich hätte noch eine andere Frage..."~ */ GOTO 2
  IF ~~ THEN REPLY #26376 /* ~"Verstehe. Mehr wollte ich gar nicht wissen. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 24 // from: 23.0
  SAY #26234 /* ~VIELE METALL-LEBEN.~ */
  IF ~~ THEN REPLY #26377 /* ~"Warst du jemals daran beteiligt?"~ */ GOTO 25
  IF ~~ THEN REPLY #26378 /* ~"Ich hätte da noch eine Frage..."~ */ GOTO 2
  IF ~~ THEN REPLY #26379 /* ~"Verstehe. Mehr wollte ich gar nicht wissen. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 25 // from: 24.0
  SAY #26235 /* ~JA. IN DIESER SCHMIEDE WURDEN DIE PFEIFENDEN GESCHOSSE GESCHMIEDET, DIE DEN RAUCHENDEN HIMMEL VON AVERNUS DURCHSCHNITTEN. WAFFEN, DIE SO SCHARF WAREN, DASS SELBST DER WIND DEN TODESKAMPF KENNENGELERNT HAT.~ */
  IF ~~ THEN REPLY #26380 /* ~"Oh... äh, ich hätte da noch eine andere Frage..."~ */ GOTO 2
  IF ~~ THEN REPLY #26381 /* ~"Verstehe. Mehr wollte ich gar nicht wissen. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 26 // from: 2.7
  SAY #26236 /* ~DIE NACHTHEXE HAT VERSUCHT, DIE STADT ZU VERNICHTEN. IHRE ZERSTÖRUNGEN WAREN IMMER SCHON IHRE BESTEN WERKE. SIE GING DEN PFAD DER ENTROPIE.
~ */
  IF ~  Global("Ravel","GLOBAL",0)
~ THEN REPLY #26382 /* ~"Weißt du, was aus ihr geworden ist?"~ */ JOURNAL #26104 /* ~Der Golem hat erzählt, daß Ravel versucht hat, Sigil zu zerstören, und daß der "Orden" sie deshalb bestraft und in einen Käfig gesperrt hat. Er weiß aber nicht, wo sich dieser Käfig befindet.~ */ GOTO 27
  IF ~~ THEN REPLY #26383 /* ~"Ich hätte da noch eine Frage..."~ */ GOTO 2
  IF ~~ THEN REPLY #26384 /* ~"Verstehe. Mehr wollte ich gar nicht wissen. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 27 // from: 26.0
  SAY #26237 /* ~DIE ORDNUNG LEGTE SIE IN KETTEN. SIE WURDE IN EINEN KÄFIG GEWORFEN.~ */
  IF ~~ THEN REPLY #26385 /* ~"Weißt du, wo sich dieser Käfig befindet?"~ */ GOTO 28
  IF ~~ THEN REPLY #26386 /* ~"Ich hätte da noch eine Frage..."~ */ GOTO 2
  IF ~~ THEN REPLY #26387 /* ~"Verstehe. Mehr wollte ich gar nicht wissen. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 28 // from: 27.0
  SAY #26238 /* ~ICH KENNE IHR GEFÄNGNIS NICHT.~ */
  IF ~~ THEN REPLY #26388 /* ~"Ich hätte noch eine andere Frage..."~ */ GOTO 2
  IF ~~ THEN REPLY #26389 /* ~"Das ist alles, was ich wissen wollte. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 29 // from: 2.8
  SAY #26239 /* ~ES IST EIN ORT DER SCHATTEN. EINE FESTUNG, IN DIE SELBST DIESER TURM KEINE BRESCHE SCHLAGEN KANN.~ */
  IF ~~ THEN REPLY #26390 /* ~"Weißt du noch mehr darüber?"~ */ JOURNAL #26096 /* ~Der Golem wußte von der Festung der Reue... Er sagte, sie habe Mauern, die nicht einmal der Belagerungsturm durchbrechen könne. Er sagte, sie sei ein Denkmal, das sich selbst überlassen ist und nun langsam auf der "Negativen Materiellen Ebene" dahinsiecht.~ */ GOTO 30
  IF ~~ THEN REPLY #26391 /* ~"Ich hätte noch eine andere Frage..."~ */ GOTO 2
  IF ~~ THEN REPLY #26392 /* ~"Verstehe. Mehr wollte ich gar nicht wissen. Leb wohl."~ */ GOTO 51
END

IF ~~ THEN BEGIN 30 // from: 29.0
  SAY #26240 /* ~SIE IST EIN DENKMAL, DAS SICH SELBST ÜBERLASSEN IST. SIE VERWITTERT JETZT IN DER DUNKELHEIT UND SIECHT LANGSAM UNTER DEM HIMMEL DER NEGATIVEN MATERIELLEN EBENE DAHIN.~ */
  IF ~~ THEN REPLY #26393 /* ~"Weißt du, wie man dort hinkommt?"~ */ GOTO 31
  IF ~~ THEN REPLY #26394 /* ~"Ich hätte da noch eine Frage..."~ */ GOTO 2
  IF ~~ THEN REPLY #26395 /* ~"Verstehe. Mehr wollte ich gar nicht wissen. Leb wohl."~ */ GOTO 51
END

IF ~~ THEN BEGIN 31 // from: 30.0
  SAY #26241 /* ~NEIN.~ */
  IF ~~ THEN REPLY #26396 /* ~"Ich hätte noch eine andere Frage..."~ */ GOTO 2
  IF ~~ THEN REPLY #26397 /* ~"Verstehe. Mehr wollte ich gar nicht wissen. Leb wohl."~ */ GOTO 51
END

IF ~~ THEN BEGIN 32 // from: 2.9
  SAY #26242 /* ~ICH HABE SOLCH EINEN GEGENSTAND. DER TRAUMSCHÖPFER KAM VOR LANGER ZEIT ZU MIR. ER VERSPRACH MIR, DASS DAS ENDE MEINES AUFENTHALTS IN DEM GEFÄNGNIS DIESER STADT NAHE SEI, WENN DER KÄFIG DEN BESITZER WECHSELT.~ */
  IF ~~ THEN REPLY #26398 /* ~"Ich... verstehe. Kann ich ihn haben?"~ */ JOURNAL #26103 /* ~Ich habe den Traumkäfig von dem Golem bekommen. Ich werde ihn Xander bringen und sehen, ob er ihn gebrauchen kann.~ */ GOTO 33
END

IF ~~ THEN BEGIN 33 // from: 32.0
  SAY #26243 /* ~JA. NIMM DEN KÄFIG UND ZERSCHMETTERE DAMIT DIEJENIGEN, DIE SOLCHE GEFÄNGNISSE ERRICHTEN.~ */
  IF ~~ THEN REPLY #26399 /* ~Bevor ich gehe, hätte ich noch ein paar Fragen..."~ */ GOTO 2
  IF ~~ THEN REPLY #26400 /* ~"Danke. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 34 // from: 13.0
  SAY #26244 /* ~UNSTERBLICHKEIT IST NUR EIN WORT. ALLES, WAS EXISTIERT, KANN STERBEN.~ */
  IF ~~ THEN REPLY #26401 /* ~"Willst du damit sagen, du könntest eine Waffe schmieden, die einen Unsterblichen töten kann?"~ */ GOTO 35
  IF ~~ THEN REPLY #26402 /* ~"Ich hätte noch eine andere Frage..."~ */ GOTO 2
  IF ~~ THEN REPLY #26403 /* ~"Ich... verstehe. Mehr wollt' ich gar nicht wissen. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 35 // from: 34.0
  SAY #26245 /* ~GEGEN JEDE LEBENDE KREATUR GIBT ES EINE WAFFE, GEGEN DIE SIE MACHTLOS IST. ZEIT. KRANKHEIT. EISEN. SCHULD.~ */
  IF ~~ THEN REPLY #26404 /* ~"Woher weiß man, welche Waffe man einsetzen muß?"~ */ GOTO 36
  IF ~~ THEN REPLY #26405 /* ~"Ich hätte noch eine andere Frage..."~ */ GOTO 2
  IF ~~ THEN REPLY #26406 /* ~"Verstehe. Mehr wollte ich gar nicht wissen. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 36 // from: 35.0
  SAY #26246 /* ~MAN MUSS DEN FEIND KENNEN, UM EINE SOLCHE WAFFE ZU SCHMIEDEN.~ */
  IF ~~ THEN REPLY #26407 /* ~"Und wie stelle ich das an?"~ */ GOTO 37
  IF ~~ THEN REPLY #26408 /* ~"Ich hätte da noch eine Frage..."~ */ GOTO 2
  IF ~~ THEN REPLY #26409 /* ~"Verstehe. Mehr wollte ich gar nicht wissen. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 37 // from: 36.0
  SAY #26247 /* ~MAN BEGINNT MIT EINEM BRUCHSTÜCK DES FEINDES. EINEM BLUTSTROPFEN. EINEM AUSGEFORMTEN GEDANKEN. EINER SEINER HOFFNUNGEN. ALL DIESE DINGE SAGEN ETWAS DARÜBER AUS, WIE ER STERBEN KANN.~ */
  IF ~~ THEN REPLY #26410 /* ~"Was ist, wenn dein Feind aus der Entfernung zuschlägt, aus dem Schatten heraus und sich nie zeigt?"~ */ GOTO 38
  IF ~  Global("Coaxmetal_Weapon","GLOBAL",0)
CheckStatGT(Protagonist,15,INT)
CheckStatLT(Protagonist,16,WIS)
~ THEN REPLY #26411 /* ~"Hmmmm. Könntest du eine Waffe schmieden, die mich töten kann?"~ */ GOTO 45
  IF ~  Global("Coaxmetal_Weapon","GLOBAL",0)
CheckStatGT(Protagonist,15,WIS)
~ THEN REPLY #26412 /* ~"Hmmmm. Könntest du eine Waffe schmieden, die mich töten kann?"~ */ GOTO 45
  IF ~~ THEN REPLY #26413 /* ~"Ich hätte noch eine andere Frage..."~ */ GOTO 2
  IF ~~ THEN REPLY #26414 /* ~"Verstehe. Mehr wollte ich gar nicht wissen. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 38 // from: 37.0
  SAY #26248 /* ~DAS IST DANN DAS BRUCHSTÜCK DES FEINDES, DAS DU VERWENDEN MUSST.~ */
  IF ~~ THEN REPLY #26416 /* ~"Wie?"~ */ GOTO 39
  IF ~~ THEN REPLY #26417 /* ~"Ich hätte da noch eine Frage..."~ */ GOTO 2
  IF ~~ THEN REPLY #26418 /* ~"Verstehe. Mehr wollte ich gar nicht wissen. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 39 // from: 38.0
  SAY #26249 /* ~DEM HANDELN DEINES FEINDES KANNST DU VIEL ENTNEHMEN. WENN DEIN FEIND NICHT DIE DIREKTE AUSEINANDERSETZUNG SUCHT, DANN IST DAS EINE SCHWÄCHE.~ */
  IF ~  CheckStatGT(Protagonist,15,INT)
~ THEN REPLY #26419 /* ~"Oder... er kann aus irgendeinem Grund *nicht* die direkte Auseinandersetzung mit mir suchen."~ */ DO ~SetGlobal("Know_Transcendent_Weakness","GLOBAL",1)
~ GOTO 40
  IF ~~ THEN REPLY #26420 /* ~"Wie nutze ich das aus?"~ */ GOTO 42
  IF ~~ THEN REPLY #26421 /* ~"Ich hätte noch eine andere Frage..."~ */ GOTO 2
  IF ~~ THEN REPLY #26422 /* ~"Verstehe. Mehr wollte ich gar nicht wissen. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 40 // from: 39.0
  SAY #26250 /* ~DAS IST AUCH EINE MÖGLICHKEIT. BEIDE MÖGLICHKEITEN OFFENBAREN SCHWÄCHE.~ */
  IF ~~ THEN REPLY #26423 /* ~"Wie nutze ich das aus?"~ */ GOTO 41
  IF ~~ THEN REPLY #26425 /* ~"Ich hätte da noch eine Frage..."~ */ GOTO 2
  IF ~~ THEN REPLY #26426 /* ~"Verstehe. Mehr wollte ich gar nicht wissen. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 41 // from: 40.0
  SAY #26251 /* ~DEM HANDELN DEINES FEINDES KANNST DU ENTNEHMEN, DASS ER NICHT DIE DIREKTE KONFRONTATION MIT DIR SUCHT. DAS IST EINE SCHWÄCHE.~ */
  IF ~~ THEN REPLY #26427 /* ~"Wie nutze ich das aus?"~ */ JOURNAL #26102 /* ~Der Golem hat mich vor einem Feind gewarnt, der aus dem Schatten zuschlägt... Er sagt, die Tatsache, daß dieser Feind mich nicht direkt angreifen will oder kann, sei eine Schwäche, die ich ausnutzen solle. Er schlägt vor, daß ich mich im Kampf nicht auf die Bedingungen des Feindes einlasse, sondern selbst angreife.~ */ GOTO 43
  IF ~~ THEN REPLY #26429 /* ~"Ich hätte da noch eine Frage..."~ */ GOTO 2
  IF ~~ THEN REPLY #26430 /* ~"Verstehe. Mehr wollte ich gar nicht wissen. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 42 // from: 39.1
  SAY #26252 /* ~SUCH DIE DIREKTE KONFRONTATION MIT DEINEM FEIND. ZWING IHM DEN KAMPF AUF.~ */
  IF ~  Global("Coaxmetal_Weapon","GLOBAL",0)
~ THEN REPLY #26431 /* ~"Du hast behauptet, daß Unsterblichkeit nur ein Wort sei... und daß alles Lebende sterben könne. Könntest du eine Waffe herstellen, die mich töten kann?"~ */ GOTO 45
  IF ~~ THEN REPLY #26432 /* ~"Na schön. Ich hätte da noch eine Frage..."~ */ GOTO 2
  IF ~~ THEN REPLY #26433 /* ~"Verstehe. Mehr wollte ich gar nicht wissen. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 43 // from: 41.0
  SAY #26253 /* ~WENN DER FEIND EINE DIREKTE KONFRONTATION MIT DIR ZU VERMEIDEN SUCHT, DANN MACH DIESEN VERSUCH ZUNICHTE. ZWING DEM FEIND DEN KAMPF AUF.~ */
  IF ~~ THEN REPLY #26435 /* ~"Und wenn der Grund dafür, daß er mich nicht direkt angreifen kann, der ist, daß er keine Wahl hat?"~ */ JOURNAL #26095 /* ~Der Golem hat mich vor einem Feind gewarnt, der aus dem Schatten zuschlägt ... Er sagt, die Tatsache, daß dieser Feind mich nicht direkt angreifen will oder kann, sei eine Schwäche, die ich ausnutzen solle. Er schlägt vor, daß ich mich im Kampf nicht auf die Bedingungen des Feindes einlasse, sondern selbst angreife. Wenn es schon einen Grund gibt, weshalb der Feind mich nicht direkt angreifen kann, solle ich den Grund finden und ihn ausnutzen.~ */ GOTO 44
  IF ~~ THEN REPLY #26436 /* ~"Ich hätte da noch eine Frage..."~ */ GOTO 2
  IF ~~ THEN REPLY #26437 /* ~"Verstehe. Mehr wollte ich gar nicht wissen. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 44 // from: 43.0
  SAY #26254 /* ~WENN ER DIE DIREKTE KONFRONTATION MIT DIR NICHT SUCHEN DARF, FINDE DEN GRUND HERAUS. DER GRUND WIRD EINE SCHWÄCHE OFFENBAREN.~ */
  IF ~  Global("Coaxmetal_Weapon","GLOBAL",0)
~ THEN REPLY #26438 /* ~"Du hast behauptet, daß Unsterblichkeit nur ein Wort sei... und daß alles Lebende sterben könne. Könntest du eine Waffe herstellen, die mich töten kann?"~ */ GOTO 45
  IF ~~ THEN REPLY #26439 /* ~"Ich hätte da noch eine Frage..."~ */ GOTO 2
  IF ~~ THEN REPLY #26440 /* ~"Verstehe. Mehr wollte ich gar nicht wissen. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 45 // from: 37.1 37.2 42.0 44.0
  SAY #26255 /* ~JA.~ */
  IF ~~ THEN REPLY #26441 /* ~"Ehrlich? Wie?"~ */ GOTO 46
  IF ~~ THEN REPLY #26442 /* ~"Ich hätte da noch eine Frage..."~ */ GOTO 2
  IF ~~ THEN REPLY #26443 /* ~"Verstehe. Mehr wollte ich gar nicht wissen. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 46 // from: 45.0
  SAY #26256 /* ~ICH BRÄUCHTE DAZU EINEN TROPFEN VON DEINEM BLUT. DAS IST ALLES.~ */
  IF ~~ THEN REPLY #26444 /* ~"Nun gut..."~ */ DO ~FadeToColor([20.0],0)
Wait(3)
FadeFromColor([20.0],0)
SetGlobal("Coaxmetal_Weapon","GLOBAL",1)
GiveItemCreate("BladeIm",Protagonist,1,0,0)
AddexperienceParty(10000)
~ GOTO 47
  IF ~~ THEN REPLY #26445 /* ~"Vielleicht ein anderes Mal. Ich hätte da noch ein paar Fragen..."~ */ GOTO 2
  IF ~~ THEN REPLY #26446 /* ~"Verstehe. Mehr wollte ich gar nicht wissen. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 47 // from: 46.0
  SAY #26257 /* ~DAS WERKZEUG FÜR DEINE ZERSTÖRUNG WURDE GESCHMIEDET UND FÜR DEN EINSATZ VORBEREITET. DAS IST ABER NICHT GENUG.~ */
  IF ~~ THEN REPLY #26447 /* ~"Wie meinst du das?"~ */ JOURNAL #26088 /* ~Der Eisengolem hat eine Waffe geschmiedet, von der er behauptet, daß sie mich töten könnte... Aber sie müßte am richtigen Ort verwendet werden, in einer Schutzhülle, in der ich von den Ebenen abgeschnitten wäre. Ich habe ihn gefragt, wo ich einen solchen Ort finden könnte, und er sagte, er wisse es nicht.~ */ GOTO 48
END

IF ~~ THEN BEGIN 48 // from: 47.0
  SAY #26258 /* ~DIE ZAUBERKRÄFTE, DIE DEIN HERZ SCHLAGEN LASSEN UND DEIN FLEISCH HEILEN, SIND STARK. DU DARFST DIE KLINGE NUR IN DEINEM KÖRPER VERSENKEN, WENN DU DICH IN EINER HÜLLE BEFINDEST; DIE DICH VON DEN EBENEN ISOLIERT.~ */
  IF ~~ THEN REPLY #26448 /* ~"Warum?"~ */ GOTO 49
END

IF ~~ THEN BEGIN 49 // from: 48.0
  SAY #26259 /* ~DEN GRUND DAFÜR KENNE ICH NICHT. TROTZDEM SIND SOWOHL DIE WAFFE ALS AUCH DER ORT WICHTIG FÜR DEINE ZERSTÖRUNG.~ */
  IF ~~ THEN REPLY #26450 /* ~"Wo könnte ich so eine Hülle finden, die mich von den Ebenen trennt?"~ */ GOTO 50
END

IF ~~ THEN BEGIN 50 // from: 49.0
  SAY #26260 /* ~DAS IST MIR NICHT BEKANNT.~ */
  IF ~~ THEN REPLY #26454 /* ~"Ich hätte da noch eine Frage."~ */ GOTO 2
  IF ~~ THEN REPLY #26455 /* ~"Dann muß ich diesen Ort eben alleine finden. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 51 // from: 2.11 29.2 30.2 31.1 65.3
  SAY #26261 /* ~WARTE. BEVOR DU GEHST, MUSST DU NOCH ETWAS TUN.~ */
  IF ~~ THEN REPLY #26456 /* ~"Was?"~ */ GOTO 52
END

IF ~~ THEN BEGIN 52 // from: 51.0
  SAY #26262 /* ~ZERSTÖRE DIESES GEFÄNGNIS. MEINE AUFGABE KANN IN DIESEM KÄFIG NICHT ERFÜLLT WERDEN.~ */
  IF ~~ THEN REPLY #26459 /* ~"Das kann ich nicht tun."~ */ DO ~IncrementGlobalOnceEx("GLOBALGood_Coaxmetal_2","GLOBALGood",2)
~ GOTO 53
  IF ~  PartyHasItem("Cube")
~ THEN REPLY #26460 /* ~"Wie könnte *ich* dich befreien?"~ */ GOTO 58
  IF ~  !PartyHasItem("Cube")
~ THEN REPLY #26457 /* ~"Wie könnte *ich* dich befreien?"~ */ GOTO 60
END

IF ~~ THEN BEGIN 53 // from: 52.0
  SAY #26263 /* ~WARUM NICHT?~ */
  IF ~~ THEN REPLY #26458 /* ~"Wenn du aus dieser Stadt entkämst, würdest du den übrigen Ebenen nur Krieg und Zerstörung bringen. Zahllose Ebenenbewohner würden sterben. So was kann ich nicht zulassen."~ */ DO ~IncrementGlobalOnceEx("GLOBALGood_Coaxmetal_2","GLOBALGood",2)
~ GOTO 54
  IF ~~ THEN REPLY #26461 /* ~"Deine Aufgabe liegt hier, Golem. Deine Aufgabe ist es, mir zu dienen. Rüste mich mit Waffen aus und komm mir ja nicht mehr mit deiner 'Freiheit'."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Coaxmetal_3","GLOBALGood",-2)
~ GOTO 55
END

IF ~~ THEN BEGIN 54 // from: 53.0
  SAY #26264 /* ~DESHALB MUSS ICH BEFREIT WERDEN. DAS MULTIVERSUM SAMMELT SEINE LEGIONEN. ES HEILT SEINE WUNDEN. BALD SCHON KANN ES SO MÄCHTIG SEIN WIE DIE ENTROPIE. DAS DARF MAN NICHT ZULASSEN.~ */
  IF ~~ THEN REPLY #26462 /* ~"Da bin ich anderer Meinung."~ */ DO ~IncrementGlobalOnceEx("GLOBALLawful_Coaxmetal_3","GLOBALLaw",2)
~ GOTO 55
  IF ~  PartyHasItem("Cube")
~ THEN REPLY #26463 /* ~"Hmmm. Ich verstehe, was du meinst... Wie kann ich dich befreien?"~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Coaxmetal_3","GLOBALLaw",-2)
~ GOTO 58
  IF ~  !PartyHasItem("Cube")
~ THEN REPLY #26464 /* ~"Hmmm. Ich verstehe, was du meinst... Wie kann ich dich befreien?"~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Coaxmetal_3","GLOBALLaw",-2)
~ GOTO 60
END

IF ~~ THEN BEGIN 55 // from: 53.1 54.0
  SAY #26265 /* ~HÖR MAL. HÖRST DU DAS?~ */
  IF ~~ THEN REPLY #26465 /* ~"Was?"~ */ GOTO 56
  IF ~  Global("Good_Coaxmetal_2","GLOBAL",1)
~ THEN REPLY #26466 /* ~"Es ist alles gesagt. Ich werde dich nicht befreien. Die Ebenen können das Chaos und das Leid, das du ihnen bringst, nicht gebrauchen. Leb wohl."~ */ DO ~IncrementGlobalOnceEx("GLOBALLawful_Coaxmetal_1","GLOBALLaw",3)
IncrementGlobalOnceEx("GLOBALGood_Coaxmetal_3","GLOBALGood",3)
~ JOURNAL #26093 /* ~Als ich den Belagerungsturm in Richtung Festung verließ, bat der Golem mich um Hilfe bei seinem Ausbruch aus seinem Gefängnis und der Fortsetzung seines entropischen Kreuzzugs über die Ebenen. Ich sagte, das würde ich nicht tun. Er hat mich aus dem Belagerungsturm geworfen, und ich darf ihn nie wieder betreten. Das war ein geringer Preis dafür, daß den Ebenen keinen Schaden erleiden müssen. ~ */ GOTO 57
  IF ~  Global("Evil_Coaxmetal_3","GLOBAL",1)
~ THEN REPLY #26467 /* ~"Es ist alles gesagt. Deine Aufgabe liegt hier, Golem, und du wirst mir weiterhin zu Diensten sein. Leb wohl."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Coaxmetal_4","GLOBALGood",-3)
~ JOURNAL #26092 /* ~Als ich den Belagerungsturm in Richtung Festung verließ, bat der Golem mich um Hilfe bei seinem Ausbruch aus seinem Gefängnis und der Fortsetzung seines entropischen Kreuzzugs über die Ebenen. Ich sagte, das würde ich nicht tun; schließlich sei es sein Zweck, MIR zu dienen, nicht über die Ebenen irgendeinem dummen Ideal hinterherzujagen. Er hat mich aus dem Belagerungsturm geworfen, und ich darf ihn nie wieder betreten. ~ */ GOTO 57
END

IF ~~ THEN BEGIN 56 // from: 55.0
  SAY #26266 /* ~DER KLANG VON VERNACHLÄSSIGTEM METALL. ROST. WAFFEN OHNE AUSDRUCK. OHNE JEMALS AUF DEN SCHLACHTFELDERN DER EBENEN MIT BLUT BEDECKT WORDEN ZU SEIN. BEFREI MICH. BEFREI MICH.~ */
  IF ~  Global("Good_Coaxmetal_2","GLOBAL",1)
~ THEN REPLY #26468 /* ~"Ich kann nicht zulassen, daß du befreit wirst. Die Ebenen können kein Chaos und Blutvergießen mehr gebrauchen."~ */ DO ~IncrementGlobalOnceEx("GLOBALLawful_Coaxmetal_1","GLOBALLaw",3)
IncrementGlobalOnceEx("GLOBALGood_Coaxmetal_3","GLOBALGood",3)
~ JOURNAL #26090 /* ~Als ich den Belagerungsturm in Richtung Festung verließ, bat der Golem mich um Hilfe bei seinem Ausbruch aus seinem Gefängnis und der Fortsetzung seines entropischen Kreuzzugs über die Ebenen. Ich sagte, das würde ich nicht tun. Er hat mich aus dem Belagerungsturm geworfen, und ich darf ihn nie wieder betreten. Das war ein geringer Preis dafür, daß den Ebenen keinen Schaden erleiden müssen. ~ */ GOTO 57
  IF ~  Global("Evil_Coaxmetal_3","GLOBAL",1)
~ THEN REPLY #26469 /* ~"Es ist alles gesagt. Deine Aufgabe liegt hier, Golem, und du wirst mir weiterhin zu Diensten sein."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Coaxmetal_4","GLOBALGood",-3)
~ JOURNAL #26092 /* ~Als ich den Belagerungsturm in Richtung Festung verließ, bat der Golem mich um Hilfe bei seinem Ausbruch aus seinem Gefängnis und der Fortsetzung seines entropischen Kreuzzugs über die Ebenen. Ich sagte, das würde ich nicht tun; schließlich sei es sein Zweck, MIR zu dienen, nicht über die Ebenen irgendeinem dummen Ideal hinterherzujagen. Er hat mich aus dem Belagerungsturm geworfen, und ich darf ihn nie wieder betreten. ~ */ GOTO 57
  IF ~  PartyHasItem("Cube")
~ THEN REPLY #26470 /* ~"Wie könnte ich sie befreien?"~ */ GOTO 58
  IF ~  !PartyHasItem("Cube")
~ THEN REPLY #26471 /* ~"Wie könnte ich sie befreien?"~ */ GOTO 60
END

IF ~~ THEN BEGIN 57 // from: 55.1 55.2 56.0 56.1 59.1 59.2 59.3
  SAY #26267 /* ~DIE ORDNUNG HAT IHRE KETTEN UM DICH GELEGT. DU BIST MEIN FEIND UND DER FEIND VON ALLEM STERBLICHEN. DIR SOLL BIS ANS ENDE DER EWIGKEIT DER ZUGANG ZU DIESEM TURM VERWEHRT SEIN!~ */
  IF ~~ THEN REPLY #26472 /* ~"Was sein muß, muß sein. Leb wohl."~ */ DO ~FadeToColor([20.0],0)
Wait(3)
TeleportParty("AR0500",[3530.1654],0)
FadeFromColor([20.0],0)
SetGlobal("Coaxmetal","GLOBAL",5)
AddexperienceParty(12000)
~ EXIT
END

IF ~~ THEN BEGIN 58 // from: 52.1 54.1 56.2
  SAY #26268 /* ~GIBT MIR DEN EBENENWÜRFEL, DEN DU BEI DIR TRÄGST. ER KANN MICH VON DIESEM ORT BEFREIEN.~ */
  IF ~~ THEN REPLY #26473 /* ~"In Ordnung. Bitte schön."~ */ DO ~DestroyPartyItem("Cube",TRUE)
FadeToColor([20.0],0)
Wait(3)
TeleportParty("AR0500",[3530.1654],0)
FadeFromColor([20.0],0)
GiveItemCreate("EDag",Protagonist,1,0,0)
AddexperienceParty(12000)
IncrementGlobalOnceEx("GLOBALChaotic_Coaxmetal_1","GLOBALLaw",-5)
IncrementGlobalOnceEx("GLOBALEvil_Coaxmetal_1","GLOBALGood",-5)
SetGlobal("Coaxmetal","GLOBAL",5)
~ JOURNAL #26091 /* ~Ich habe dem Golem den Modron-Würfel gegeben, und dann wurde es dunkel. Ich weiß nicht, was passiert ist, aber der Belagerungsturm steht noch. Ich habe das seltsame Gefühl, daß ich ihn nie wieder betreten kann. Aber er scheint mir eine seltsame Waffe überlassen zu haben...~ */ EXIT
  IF ~~ THEN REPLY #26474 /* ~"Den kann ich nicht hergeben."~ */ GOTO 59
END

IF ~~ THEN BEGIN 59 // from: 1.1 58.1 60.1 61.1 62.1 63.0
  SAY #26269 /* ~ER IST DIE TÜR, DIE ES DEM TURM ERMÖGLICHT, DIESEN ORT ZU VERLASSEN. GIB MIR DEN EBENENWÜRFEL.~ */
  IF ~  PartyHasItem("Cube")
~ THEN REPLY #26475 /* ~"In Ordnung. Bitte schön."~ */ DO ~DestroyPartyItem("Cube",TRUE)
GiveItemCreate("EDag",Protagonist,1,0,0)
FadeToColor([20.0],0)
Wait(3)
TeleportParty("AR0500",[3530.1654],0)
FadeFromColor([20.0],0)
AddexperienceParty(12000)
IncrementGlobalOnceEx("GLOBALChaotic_Coaxmetal_1","GLOBALLaw",-5)
IncrementGlobalOnceEx("GLOBALEvil_Coaxmetal_1","GLOBALGood",-5)
SetGlobal("Coaxmetal","GLOBAL",5)
~ JOURNAL #26094 /* ~Ich habe dem Golem den Modron-Würfel gegeben, und dann wurde es dunkel. Ich weiß nicht, was passiert ist, aber der Belagerungsturm steht noch. Ich habe das seltsame Gefühl, daß ich ihn nie wieder betreten kann. Aber er scheint mir eine seltsame Waffe überlassen zu haben...~ */ EXIT
  IF ~  PartyHasItem("Cube")
~ THEN REPLY #26476 /* ~"Wie dem auch sei, ich kann den Würfel nicht hergeben. Er ist zu wertvoll."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Coaxmetal_2","GLOBALGood",-2)
~ GOTO 57
  IF ~  !PartyHasItem("Cube")
~ THEN REPLY #26477 /* ~"Solch einen Gegenstand kann ich dir nicht geben. Er ist zu wertvoll, um verschenkt zu werden... Wenn ich ihn finde, dann behalt ich ihn selbst."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Coaxmetal_2","GLOBALGood",-2)
~ GOTO 57
  IF ~~ THEN REPLY #26478 /* ~"Ich geb ihn dir nicht. Ich kann nicht zulassen, daß du befreit wirst. Die Ebenen haben genug Chaos und Blutvergießen erlebt."~ */ DO ~IncrementGlobalOnceEx("GLOBALLawful_Coaxmetal_1","GLOBALLaw",3)
IncrementGlobalOnceEx("GLOBALGood_Coaxmetal_3","GLOBALGood",3)
~ GOTO 57
END

IF ~~ THEN BEGIN 60 // from: 52.2 54.2 56.3
  SAY #26270 /* ~ES GIBT EINEN EBENENWÜRFEL. ER KANN MICH VON DIESEM ORT BEFREIEN.~ */
  IF ~~ THEN REPLY #26479 /* ~"Aber... ich besitze gar keinen solchen Würfel."~ */ GOTO 61
  IF ~  Global("Know_Cube","GLOBAL",1)
~ THEN REPLY #26480 /* ~"Ich weiß von solch einem Würfel. Aber ich geb ihn dir nicht."~ */ GOTO 59
END

IF ~~ THEN BEGIN 61 // from: 60.0 63.1
  SAY #26271 /* ~DANN WIRST DU DEN WÜRFEL FINDEN UND IHN MIR BRINGEN.~ */
  IF ~~ THEN REPLY #26482 /* ~"Wo könnte ich so was finden?"~ */ GOTO 62
  IF ~  Global("Know_Cube","GLOBAL",1)
~ THEN REPLY #26483 /* ~"Ich weiß von solch einem Würfel. Aber ich geb ihn dir nicht."~ */ GOTO 59
END

IF ~~ THEN BEGIN 62 // from: 61.0
  SAY #26272 /* ~WO ER SICH BEFINDET IST MIR NICHT BEKANNT. FINDE IHN! BRING IHN MIR!~ */
  IF ~~ THEN REPLY #26484 /* ~"Nun denn... ich such den Würfel und bring ihn dir."~ */ DO ~SetGlobal("Coaxmetal","GLOBAL",4)
~ JOURNAL #26097 /* ~Der Golem hat mich gebeten, ihm einen Ebenenwürfel zu bringen, damit er aus dem Belagerungsturm entkommen kann. Er hat sich geweigert, sich weitere Fragen und Bitten von mir anzuhören, bis ich ihm den Würfel gebracht habe. ~ */ EXIT
  IF ~  Global("Know_Cube","GLOBAL",1)
~ THEN REPLY #26485 /* ~"Ich weiß von solch einem Würfel. Aber ich geb ihn dir nicht."~ */ GOTO 59
END

IF ~~ THEN BEGIN 63 // from: 1.2
  SAY #26273 /* ~WO IST DER EBENENWÜRFEL?~ */
  IF ~~ THEN REPLY #26486 /* ~"Ich hab' ihn nicht. Und wenn ich ihn hätte, würd ich ihn dir nicht geben."~ */ GOTO 59
  IF ~~ THEN REPLY #26487 /* ~"Ich hab' den Würfel noch nicht, aber ich wollte dir ein paar Fragen stellen-"~ */ GOTO 61
  IF ~~ THEN REPLY #26488 /* ~"Ich hab' ihn noch nicht gefunden. Ich komm wieder, wenn ich ihn hab'."~ */ EXIT
END

IF ~~ THEN BEGIN 64 // from: 2.5 6.2 6.3
  SAY #26274 /* ~ZEIG MIR, WAS DU MITGEBRACHT HAST. ICH WERDE SEIN POTENTIAL PRÜFEN UND SEHEN, OB MAN SEINEM SCHMERZ AUSDRUCK VERLEIHEN KANN.
~ */
  IF ~~ THEN REPLY #26489 /* ~"Nun gut..."~ */ DO ~StartStore("Coax",Protagonist)
~ EXIT
END

IF ~~ THEN BEGIN 65 // from:
  SAY #26276 /* ~ES IST VOLLBRACHT.~ */
  IF ~~ THEN REPLY #26490 /* ~"Kann ich mal einen Blick auf deine anderen Waffen werfen?"~ */ DO ~StartStore("Coax",Protagonist)
~ EXIT
  IF ~~ THEN REPLY #26491 /* ~"In Ordnung. Ich hätte da noch eine Frage..."~ */ GOTO 2
  IF ~  Global("Regret","GLOBAL",0)
~ THEN REPLY #26492 /* ~"Verstehe. Mehr wollt' ich gar nicht wissen. Leb wohl."~ */ EXIT
  IF ~  GlobalGT("Regret","GLOBAL",0)
~ THEN REPLY #26493 /* ~"Verstehe. Mehr wollt' ich gar nicht wissen. Leb wohl."~ */ GOTO 51
END
