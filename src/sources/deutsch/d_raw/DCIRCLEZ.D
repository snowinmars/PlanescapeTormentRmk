// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DCIRCLEZ.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\de_DE\dialog.tlk
// dialogF  : (none)

BEGIN ~DCIRCLEZ~

IF ~  Global("Dakkon_Teach","GLOBAL",0)
~ THEN BEGIN 0 // from:
  SAY #30106 /* ~Dieser kleine runde Stein scheint einen religiösen "Text" darzustellen, den Dak'kon bei sich trägt. Es besteht aus einer Reihe miteinander verketteter Kreise, die sich auseinander entfalten. Die Komplexität der Plättchen und ihrer Kettenglieder zeugen davon, daß der Text von Meisterhand gefertigt wurde. Du kannst allerdings nicht herausfinden, wie man die Plättchen voneinander trennen kann.~ */
  IF ~~ THEN REPLY #60450 /* ~Laß den Stein in Ruhe.~ */ EXIT
END

IF ~  GlobalGT("Dakkon_Teach","GLOBAL",0)
~ THEN BEGIN 1 // from: 3.1 4.1 5.1 6.1 7.1 8.1 9.1 10.2 11.0 12.5 13.1 14.1 15.1 16.1 17.1 18.1 19.1 20.1 21.1 22.2 23.0 24.1 25.1 26.1 27.2 28.0 29.1 30.1 31.1 32.1 33.1 34.1 35.1 36.2 37.0 38.1 39.1 40.1 41.2 42.0 43.1 44.1 45.1 46.1 47.1 48.2 49.0 50.0 51.1 52.1 53.1 54.1 55.2 56.0 57.1 58.1 59.2 60.0
  SAY #60451 /* ~Der kleine runde Stein ist der Ungebrochene Kreis von Zerthimon. Er besteht aus einer Reihe miteinander verbundener Kreise, die sich auseinanderfächern lassen. Die ausgeklügelte Komplexität der Scheiben und Verbindungsglieder zeigt, daß der Text von einem Meister seines Faches gefertigt wurde. ~ */
  IF ~  Global("Dakkon_Teach","GLOBAL",1)
~ THEN REPLY #60452 /* ~Schließ die erste Scheibe auf, wie Dak'kon es dir gezeigt hat.~ */ GOTO 2
  IF ~  Global("Dakkon_Teach","GLOBAL",3)
~ THEN REPLY #60453 /* ~Schließ den Zweiten Kreis von Zerthimon auf. ~ */ GOTO 12
  IF ~  Global("Dakkon_Teach","GLOBAL",5)
~ THEN REPLY #60454 /* ~Schließ den Dritten Kreis von Zerthimon auf. ~ */ GOTO 12
  IF ~  Global("Dakkon_Teach","GLOBAL",7)
~ THEN REPLY #60455 /* ~Schließ den Vierten Kreis von Zerthimon auf. ~ */ GOTO 12
  IF ~  Global("Dakkon_Teach","GLOBAL",9)
~ THEN REPLY #60456 /* ~Schließ den Fünften Kreis von Zerthimon auf. ~ */ GOTO 12
  IF ~  Global("Dakkon_Teach","GLOBAL",11)
~ THEN REPLY #60457 /* ~Schließ den Sechsten Kreis von Zerthimon auf. ~ */ GOTO 12
  IF ~  Global("Dakkon_Teach","GLOBAL",14)
~ THEN REPLY #60458 /* ~Schließ den Siebten Kreis von Zerthimon auf. ~ */ GOTO 51
  IF ~  Global("Dakkon_Teach","GLOBAL",17)
~ THEN REPLY #60459 /* ~Schließ den Achten Kreis von Zerthimon auf. ~ */ GOTO 52
  IF ~  Global("Dakkon_Teach","GLOBAL",13)
CheckStatGT(Protagonist,15,INT)
~ THEN REPLY #60460 /* ~Untersuche die Scheiben und versuche, neue Kombinationen auszuknobeln.~ */ DO ~SetGlobal("Dakkon_Teach","GLOBAL",14)
GiveExperience(Protagonist,3000)
~ GOTO 51
  IF ~  Global("Dakkon_Teach","GLOBAL",16)
CheckStatGT(Protagonist,17,INT)
~ THEN REPLY #60461 /* ~Untersuche die Scheiben und versuche, neue Kombinationen auszuknobeln.~ */ DO ~SetGlobal("Dakkon_Teach","GLOBAL",17)
GiveExperience(Protagonist,6000)
~ GOTO 52
  IF ~  Global("Dakkon_Teach","GLOBAL",19)
~ THEN REPLY #60462 /* ~Untersuche die Scheiben und versuche, neue Kombinationen auszuknobeln.~ */ GOTO 50
  IF ~  GlobalGT("Dakkon_Teach","GLOBAL",1)
~ THEN REPLY #60463 /* ~Lies den Ersten Kreis von Zerthimon noch einmal.~ */ GOTO 3
  IF ~  GlobalGT("Dakkon_Teach","GLOBAL",3)
~ THEN REPLY #60464 /* ~Lies den Zweiten Kreis von Zerthimon noch einmal.~ */ GOTO 13
  IF ~  GlobalGT("Dakkon_Teach","GLOBAL",5)
~ THEN REPLY #60465 /* ~Lies den Dritten Kreis von Zerthimon noch einmal.~ */ GOTO 24
  IF ~  GlobalGT("Dakkon_Teach","GLOBAL",7)
~ THEN REPLY #60466 /* ~Lies den Vierten Kreis von Zerthimon noch einmal.~ */ GOTO 29
  IF ~  GlobalGT("Dakkon_Teach","GLOBAL",9)
~ THEN REPLY #60467 /* ~Lies den Fünften Kreis von Zerthimon noch einmal.~ */ GOTO 38
  IF ~  GlobalGT("Dakkon_Teach","GLOBAL",11)
~ THEN REPLY #60468 /* ~Lies den Sechsten Kreis von Zerthimon noch einmal.~ */ GOTO 43
  IF ~  GlobalGT("Dakkon_Teach","GLOBAL",14)
~ THEN REPLY #60469 /* ~Lies den Siebten Kreis von Zerthimon noch einmal.~ */ GOTO 53
  IF ~  GlobalGT("Dakkon_Teach","GLOBAL",17)
~ THEN REPLY #60470 /* ~Lies den Achten Kreis von Zerthimon noch einmal.~ */ GOTO 57
  IF ~~ THEN REPLY #60471 /* ~Laß den Ungebrochenen Kreis von Zerthimon in Ruhe.~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.0
  SAY #60472 /* ~Du wiederholst die Bewegungen, die Dak'kon am Kreis vorgeführt hat. Unter deiner Berührung verschieben sich die Scheiben, und die Ringe gleiten in eine neue Konfiguration. Auf den Ringen steht einen Reihe von Symbolen; eine solche Schrift hast du noch nie gesehen: sie besteht aus einer Folge miteinander verbundener geometrischer Zeichen, hauptsächlich Kreise. Sobald du sie betrachtest, *kennst* du die Symbole und *weißt*, daß du sie lesen kannst.~ */
  IF ~~ THEN REPLY #60473 /* ~Lies den Ersten Kreis von Zerthimon.~ */ GOTO 3
  IF ~~ THEN REPLY #60474 /* ~Laß den Ungebrochenen Kreis von Zerthimon in Ruhe.~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 1.11 2.0
  SAY #60475 /* ~"*Wisse*, daß wir das Erste Volk sind."~ */
  IF ~~ THEN REPLY #60476 /* ~Lies weiter die Symbole...~ */ GOTO 4
  IF ~~ THEN REPLY #60477 /* ~Hör auf zu lesen und betrachte den Kreis noch einmal.~ */ GOTO 1
  IF ~~ THEN REPLY #60479 /* ~Schieb die Scheiben zusammen und versiegele den Kreis.~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 3.0
  SAY #60480 /* ~"Einst herrschte das Chaos. Es hieß, das Erste Volk sei aus dem Chaos entstanden. Als das Erste Volk begann, sich selbst zu *kennen*, war es nicht mehr Teil des Chaos und wurde Fleisch."~ */
  IF ~~ THEN REPLY #60481 /* ~Lies weiter die Symbole...~ */ GOTO 5
  IF ~~ THEN REPLY #60482 /* ~Hör auf zu lesen und betrachte den Kreis noch einmal.~ */ GOTO 1
  IF ~~ THEN REPLY #60483 /* ~Schieb die Scheiben zusammen und versiegele den Kreis.~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 4.0
  SAY #60484 /* ~"Mit seinen Gedanken und seinem *Wissen* von der Materie formte das Volk die Erste Welt und lebte dort von seinem *Wissen*."~ */
  IF ~~ THEN REPLY #60485 /* ~Lies weiter die Symbole...~ */ GOTO 6
  IF ~~ THEN REPLY #60486 /* ~Hör auf zu lesen und betrachte den Kreis noch einmal.
~ */ GOTO 1
  IF ~~ THEN REPLY #60487 /* ~Schieb die Scheiben zusammen und verschließe den Kreis.~ */ EXIT
END

IF ~~ THEN BEGIN 6 // from: 5.0
  SAY #60488 /* ~"Doch das Fleisch war etwas Neues für das Volk und mit ihm verlor das Volk *Kenntnis* über sich selbst. Das Fleisch ließ neue Gedanken entstehen. Habgier und Haß, Schmerz und Freude, Eifersucht und Zweifel. All diese Gefühle nährten sich gegenseitig, und der Geist des Volkes spaltete sich. Durch diese Spaltung wurde das Volk gestraft."~ */
  IF ~~ THEN REPLY #60489 /* ~Lies weiter die Symbole...~ */ GOTO 7
  IF ~~ THEN REPLY #60490 /* ~Hör auf zu lesen und betrachte den Kreis noch einmal.~ */ GOTO 1
  IF ~~ THEN REPLY #60491 /* ~Schieb die Scheiben zusammen und versiegele den Kreis.~ */ EXIT
END

IF ~~ THEN BEGIN 7 // from: 6.0
  SAY #60492 /* ~"Die Empfindungen des Fleisches waren stark. Habgier und Haß, Schmerz und Freude, Eifersucht und Zweifel, sie alle dienten den Feinden als Leitsteine. Durch seine Fleischwerdung wurde das Erste Volk zu Sklaven derer, die das Fleisch nur als ein Werkzeug ihres Willens *kannten*. *Wisse*, daß diese Kreaturen die *Illithiden* waren."~ */
  IF ~~ THEN REPLY #60493 /* ~Lies weiter die Symbole...~ */ GOTO 8
  IF ~~ THEN REPLY #60494 /* ~Hör auf zu lesen und betrachte den Kreis noch einmal.~ */ GOTO 1
  IF ~~ THEN REPLY #60495 /* ~Schieb die Scheiben zusammen und versiegele den Kreis.~ */ EXIT
END

IF ~~ THEN BEGIN 8 // from: 7.0
  SAY #60496 /* ~"Die *Illithiden* waren eine Rasse, die sich selbst nicht *kannte*. Sie hatten gelernt zu verhindern, daß andere Rassen sich selbst *kannten*."~ */
  IF ~~ THEN REPLY #60497 /* ~Lies weiter die Symbole...~ */ GOTO 9
  IF ~~ THEN REPLY #60498 /* ~Hör auf zu lesen und betrachte den Kreis noch einmal.~ */ GOTO 1
  IF ~~ THEN REPLY #60499 /* ~Schieb die Scheiben zusammen und versiegele den Kreis.~ */ EXIT
END

IF ~~ THEN BEGIN 9 // from: 8.0
  SAY #60500 /* ~"Man nannte sie das Tentakelvolk. Sie lebten vom Fleisch und betrachteten das Fleisch als Werkzeug ihres Willens. Ihr Blut war wie Wasser, und sie formten den Geist anderer durch ihre Gedanken. Als die *Illithiden* über das Volk hereinbrachen, wurde es zu einem Volk von Sklaven."~ */
  IF ~~ THEN REPLY #60501 /* ~Lies weiter die Symbole...~ */ GOTO 10
  IF ~~ THEN REPLY #60502 /* ~Hör auf zu lesen und betrachte den Kreis noch einmal.~ */ GOTO 1
  IF ~~ THEN REPLY #60503 /* ~Schieb die Scheiben zusammen und versiegele den Kreis.~ */ EXIT
END

IF ~~ THEN BEGIN 10 // from: 9.0
  SAY #60504 /* ~"Die *Illithiden* brachten das Volk aus der Ersten Welt in die Falschen Welten. Das Volk mußte hart in den Falschen Welten schuften, und auf diese Weise lehrten die *Illithiden* es den Weg des Fleisches. Durch sie lernte das Volk Verlust *kennen*. Es lernte Leid *kennen*. Es lernte den Tod *kennen*, den körperlichen und den geistigen. Es lernte, was es bedeutet, eines anderen Vieh zu sein, dessen Fleisch verzehrt wird. Es lernte das Grauen *kennen*, sich an derartigen Dingen erfreuen zu können."~ */
  IF ~  Global("Dakkon_Teach","GLOBAL",1)
~ THEN REPLY #60505 /* ~Lies den Kreis bis zum Ende.~ */ DO ~SetGlobal("Dakkon_Teach","GLOBAL",2)
~ GOTO 11
  IF ~  !Global("Dakkon_Teach","GLOBAL",1)
~ THEN REPLY #67271 /* ~Lies den Kreis zu Ende.~ */ GOTO 11
  IF ~~ THEN REPLY #60506 /* ~Hör auf zu lesen und betrachte den Kreis noch einmal.~ */ GOTO 1
  IF ~~ THEN REPLY #60507 /* ~Schieb die Scheiben zusammen und versiegele den Kreis.~ */ EXIT
END

IF ~~ THEN BEGIN 11 // from: 10.0 10.1
  SAY #60508 /* ~"Der Ungebrochene Kreis ist das *Wissen* darum, wie das Volk sich selbst verlor. Und wie es geschah, daß es sich selbst wieder *kannte*."~ */
  IF ~~ THEN REPLY #60509 /* ~Betrachte den Kreis noch einmal.~ */ GOTO 1
  IF ~~ THEN REPLY #60510 /* ~Schieb die Scheiben zusammen und versiegele den Kreis.~ */ EXIT
END

IF ~~ THEN BEGIN 12 // from: 1.1 1.2 1.3 1.4 1.5
  SAY #60511 /* ~Du schiebst die Scheiben in die Konfiguration, die dir Dak'kon gezeigt hat, und ein neuer Ring wird sichtbar. Der Ring trägt dieselbe Schrift, die du zuvor gelesen hast, dieselben geometrischen Zeichen... Du *kennst* die Symbole und *weißt*, daß du sie lesen kannst.~ */
  IF ~  Global("Dakkon_Teach","GLOBAL",3)
~ THEN REPLY #60512 /* ~Lies den Zweiten Kreis von Zerthimon.~ */ GOTO 13
  IF ~  Global("Dakkon_Teach","GLOBAL",5)
~ THEN REPLY #60513 /* ~Lies den Dritten Kreis von Zerthimon.~ */ GOTO 24
  IF ~  Global("Dakkon_Teach","GLOBAL",7)
~ THEN REPLY #60514 /* ~Lies den Vierten Kreis von Zerthimon.~ */ GOTO 29
  IF ~  Global("Dakkon_Teach","GLOBAL",9)
~ THEN REPLY #60515 /* ~Lies den Fünften Kreis von Zerthimon.~ */ GOTO 38
  IF ~  Global("Dakkon_Teach","GLOBAL",11)
~ THEN REPLY #60516 /* ~Lies den Sechsten Kreis von Zerthimon.~ */ GOTO 43
  IF ~~ THEN REPLY #60517 /* ~Betrachte den Kreis noch einmal.~ */ GOTO 1
  IF ~~ THEN REPLY #60518 /* ~Schieb die Scheiben zusammen und versiegele den Kreis.~ */ EXIT
END

IF ~~ THEN BEGIN 13 // from: 1.12 12.0
  SAY #60519 /* ~"*Wisse*, daß das Fleisch den Stahl nicht zeichnen kann. *Wisse*, daß der Stahl das Fleisch zeichnen kann. Durch dieses *Wissen* wurde Zerthimon frei."~ */
  IF ~~ THEN REPLY #60520 /* ~Lies weiter die Symbole...~ */ GOTO 14
  IF ~~ THEN REPLY #60521 /* ~Hör auf zu lesen und betrachte den Kreis noch einmal.~ */ GOTO 1
  IF ~~ THEN REPLY #60522 /* ~Schieb die Scheiben zusammen und versiegele den Kreis.~ */ EXIT
END

IF ~~ THEN BEGIN 14 // from: 13.0
  SAY #60523 /* ~"*Wisse*, daß das Tentakelvolk aus Fleisch und Blut war. Es lebte vom Fleisch und benutzte es als Werkzeug seines Willens. Einer der Orte, an denen das Fleisch seinem Willen diente, waren die Felder der leeren Hüllen in den Falschen Welten der *Illithiden.*"~ */
  IF ~~ THEN REPLY #60524 /* ~Lies weiter die Symbole...~ */ GOTO 15
  IF ~~ THEN REPLY #60525 /* ~Hör auf zu lesen und betrachte den Kreis noch einmal.~ */ GOTO 1
  IF ~~ THEN REPLY #60526 /* ~Schieb die Scheiben zusammen und versiegele den Kreis.~ */ EXIT
END

IF ~~ THEN BEGIN 15 // from: 14.0
  SAY #60527 /* ~"Auf diese Felder wurden die Leichen der Angehörigen des Volkes geworfen, nachdem die *Illithiden* ihre Gehirne verschlungen hatten. Nachdem die Gehirne verzehrt waren, dienten die leeren Hüllen als Dünger für die giftigen Gräser der *Illithiden*. Zerthimon arbeitete auf den Feldern, ohne sich selbst zu *kennen*, ohne zu *wissen*, was aus ihm geworden war. Er war ein Werkzeug aus Fleisch, und das Fleisch war zufrieden."~ */
  IF ~~ THEN REPLY #60528 /* ~Lies weiter die Symbole...~ */ GOTO 16
  IF ~~ THEN REPLY #60529 /* ~Hör auf zu lesen und betrachte den Kreis noch einmal.~ */ GOTO 1
  IF ~~ THEN REPLY #60530 /* ~Schieb die Scheiben zusammen und versiegele den Kreis.~ */ EXIT
END

IF ~~ THEN BEGIN 16 // from: 15.0
  SAY #60531 /* ~"Auf diesen Feldern lernte Zerthimon die Schrift des Stahls *kennen*. Während einer Phase, als Zerthimon die Felder mit seinen Händen bestellte, stieß er auf eine Körperhülle, deren Gehirn nicht entfernt worden war. Es war nicht gegessen worden, und doch war es tot."~ */
  IF ~~ THEN REPLY #60532 /* ~Lies weiter die Symbole...~ */ GOTO 17
  IF ~~ THEN REPLY #60533 /* ~Hör auf zu lesen und betrachte den Kreis noch einmal.~ */ GOTO 1
  IF ~~ THEN REPLY #60534 /* ~Schieb die Scheiben zusammen und versiegele den Kreis.~ */ EXIT
END

IF ~~ THEN BEGIN 17 // from: 16.0
  SAY #60535 /* ~"Der Gedanke, daß einer der Körper gestorben war, ohne dabei als Nahrung zu dienen, war etwas, was Zerthimon nur schwer verstehen konnte. Dieser Gedanke ließ in ihm den Wunsch entstehen, zu *wissen*, was mit der Körperhülle geschehen war."~ */
  IF ~~ THEN REPLY #60536 /* ~Lies weiter die Symbole...~ */ GOTO 18
  IF ~~ THEN REPLY #60537 /* ~Hör auf zu lesen und betrachte den Kreis noch einmal.~ */ GOTO 1
  IF ~~ THEN REPLY #60538 /* ~Schieb die Scheiben zusammen und versiegele den Kreis.~ */ EXIT
END

IF ~~ THEN BEGIN 18 // from: 17.0
  SAY #60539 /* ~"Im Schädel der Körperhülle steckte eine Stahlklinge. Sie hatte den Knochen durchbohrt. Zerthimon begriff, daß sie es war, die den Körper getötet hatte. Der Stahl hatte das Fleisch gezeichnet, doch das Fleisch hatte den Stahl nicht gezeichnet."~ */
  IF ~~ THEN REPLY #60540 /* ~Lies weiter die Symbole...~ */ GOTO 19
  IF ~~ THEN REPLY #60541 /* ~Hör auf zu lesen und betrachte den Kreis noch einmal.~ */ GOTO 1
  IF ~~ THEN REPLY #60542 /* ~Schieb die Scheiben zusammen und versiegele den Kreis.~ */ EXIT
END

IF ~~ THEN BEGIN 19 // from: 18.0
  SAY #60543 /* ~"Zerthimon entnahm die Klinge und betrachtete ihre Oberfläche. In ihr sah er sein Spiegelbild. Im Spiegel des Stahls *erkannte* Zerthimon zum erstenmal sich selbst. Ihre Kanten waren scharf, ihr Wille der ihres Trägers. Es war die Klinge, die gegen Gith erhoben werden sollte, als Zerthimon die Offenbarung der Zwei Himmel verkündete."~ */
  IF ~~ THEN REPLY #60544 /* ~Lies weiter die Symbole...~ */ GOTO 20
  IF ~~ THEN REPLY #60545 /* ~Hör auf zu lesen und betrachte den Kreis noch einmal.~ */ GOTO 1
  IF ~~ THEN REPLY #60546 /* ~Schieb die Scheiben zusammen und versiegele den Kreis.~ */ EXIT
END

IF ~~ THEN BEGIN 20 // from: 19.0
  SAY #60547 /* ~"Zerthimon behielt die Klinge über viele Phasen und machte sich viele Gedanken dazu. Er benutzte sie als Hilfsmittel bei der Feldarbeit. Während er sie benutzte, dachte er darüber nach, wie man sie sonst noch benutzen könnte."~ */
  IF ~~ THEN REPLY #60548 /* ~Lies weiter die Symbole...~ */ GOTO 21
  IF ~~ THEN REPLY #60549 /* ~Hör auf zu lesen und betrachte den Kreis noch einmal.~ */ GOTO 1
  IF ~~ THEN REPLY #60550 /* ~Schieb die Scheiben zusammen und versiegele den Kreis.~ */ EXIT
END

IF ~~ THEN BEGIN 21 // from: 20.0
  SAY #60551 /* ~"Die *Illithiden* waren mächtig. Zerthimon hatte geglaubt, daß es nichts gäbe, was sie nicht *wußten.* Und doch trugen die *Illithiden* nie Werkzeug aus Stahl. Sie verwendeten als Werkzeug nur Fleisch. Für alles wurde das Fleisch benutzt, denn das Tentakelvolk bestand aus Fleisch und *kannte* das Fleisch. Und doch war Stahl dem Fleisch überlegen. Als die Klinge den Körper tötete, war das Fleisch schwächer gewesen als der Stahl."~ */
  IF ~~ THEN REPLY #60552 /* ~Lies weiter die Symbole...~ */ GOTO 22
  IF ~~ THEN REPLY #60553 /* ~Hör auf zu lesen und betrachte den Kreis noch einmal.~ */ GOTO 1
  IF ~~ THEN REPLY #60554 /* ~Schieb die Scheiben zusammen und versiegele den Kreis.~ */ EXIT
END

IF ~~ THEN BEGIN 22 // from: 21.0
  SAY #60555 /* ~"So gelangte Zerthimon zu dem *Wissen*, daß Fleisch dem Stahl nachgibt. Und damit *wußte* er auch, daß Stahl stärker war als die *Illithiden*."~ */
  IF ~  Global("Dakkon_Teach","GLOBAL",3)
~ THEN REPLY #60556 /* ~Lies die Symbole bis zum Ende.~ */ DO ~SetGlobal("Dakkon_Teach","GLOBAL",4)
~ GOTO 23
  IF ~  !Global("Dakkon_Teach","GLOBAL",3)
~ THEN REPLY #67272 /* ~Lies die Symbole zu Ende.~ */ GOTO 23
  IF ~~ THEN REPLY #60557 /* ~Hör auf zu lesen und betrachte den Kreis noch einmal.~ */ GOTO 1
  IF ~~ THEN REPLY #60558 /* ~Schieb die Scheiben zusammen und versiegele den Kreis.~ */ EXIT
END

IF ~~ THEN BEGIN 23 // from: 22.0 22.1
  SAY #60559 /* ~"Stahl wurde die Schrift des Volkes. *Wisse*, daß Stahl die Schrift war, durch die das Volk die Freiheit *kennenlernte*."~ */
  IF ~~ THEN REPLY #60562 /* ~Betrachte den Kreis noch einmal.~ */ GOTO 1
  IF ~~ THEN REPLY #60586 /* ~Schieb die Scheiben zusammen und versiegele den Kreis.~ */ EXIT
END

IF ~~ THEN BEGIN 24 // from: 1.13 12.1
  SAY #60587 /* ~"Viele Phasen lang arbeitete Zerthimon für den *Illithiden* Arlathii, den Zweifach Verstorbenen, und seine Gesellschaft in den Himmelshöhlen der Falschen Welten. Unter der Last, die ihm auferlegt war, wäre manch anderer zusammengebrochen. Zerthimon schuftete weiter, unter Qualen und Erschöpfung."~ */
  IF ~~ THEN REPLY #60588 /* ~Lies weiter die Symbole...~ */ GOTO 25
  IF ~~ THEN REPLY #60590 /* ~Hör auf zu lesen und betrachte den Kreis noch einmal.~ */ GOTO 1
  IF ~~ THEN REPLY #60591 /* ~Schieb die Scheiben zusammen und versiegele den Kreis.~ */ EXIT
END

IF ~~ THEN BEGIN 25 // from: 24.0
  SAY #60592 /* ~"Eines Tages trug es sich zu, daß der *Illithide* Arlathii, der Zweifach Verstorbene, Zerthimon zu sich in seine venendurchzogene Galerie kommen ließ. Er warf Zerthimon Vergehen wie Starrsinn und Feigheit gegenüber seiner Partnerschaft vor. Der Vorwurf war aus der Luft gegriffen, denn Arlathii wollte nur prüfen, ob ein Feuer der Wut in Zerthimons Herzen tobte. Er wollte *wissen*, ob Zerthimon das Herz eines Sklaven oder das eines Rebellen hatte."~ */
  IF ~~ THEN REPLY #60593 /* ~Lies weiter die Symbole...~ */ GOTO 26
  IF ~~ THEN REPLY #60594 /* ~Hör auf zu lesen und betrachte den Kreis noch einmal.~ */ GOTO 1
  IF ~~ THEN REPLY #60595 /* ~Schieb die Scheiben zusammen und versiegele den Kreis.~ */ EXIT
END

IF ~~ THEN BEGIN 26 // from: 25.0
  SAY #60596 /* ~"Zerthimon unterwarf sich der Strafe des *Illithiden*, statt seine neu gewonnene Stärke zu offenbaren. Er *wußte*, daß es nichts nützen würde, den Haß in seinem Herzen zu zeigen, und daß er sogar anderen, die so fühlten wie er, damit schaden würde. Also nahm er die Strafe auf sich und wurde zwischen die Pfeiler des Schweigens gestellt, wo er eine Phase lang Qualen leiden sollte."~ */
  IF ~~ THEN REPLY #60597 /* ~Lies weiter die Symbole...~ */ GOTO 27
  IF ~~ THEN REPLY #60598 /* ~Hör auf zu lesen und betrachte den Kreis noch einmal.~ */ GOTO 1
  IF ~~ THEN REPLY #60599 /* ~Schieb die Scheiben zusammen und versiegele den Kreis.~ */ EXIT
END

IF ~~ THEN BEGIN 27 // from: 26.0
  SAY #60600 /* ~"An die Pfeiler gefesselt schickte Zerthimon seinen Geist an einen Ort, wo ihn der Schmerz nicht erreichen konnte, und ließ seinen Körper zurück. Er überstand eine Phase, und als er vor Arlathii, den Zweifach Verstorbenen, geführt wurde, sagte er dem *Illithiden* Dank für seine Strafe, wie es der Brauch wollte. Dadurch zeigte er sich in den Augen des *Illithiden* als Sklave, während sein Herz frei blieb."~ */
  IF ~  Global("Dakkon_Teach","GLOBAL",5)
~ THEN REPLY #60601 /* ~Lies die Symbole bis zum Ende.~ */ DO ~SetGlobal("Dakkon_Teach","GLOBAL",6)
~ GOTO 28
  IF ~  !Global("Dakkon_Teach","GLOBAL",5)
~ THEN REPLY #67275 /* ~Lies die Symbole zu Ende.~ */ GOTO 28
  IF ~~ THEN REPLY #60602 /* ~Hör auf zu lesen und betrachte den Kreis noch einmal.~ */ GOTO 1
  IF ~~ THEN REPLY #60603 /* ~Schieb die Scheiben zusammen und versiegele den Kreis.~ */ EXIT
END

IF ~~ THEN BEGIN 28 // from: 27.0 27.1
  SAY #60604 /* ~"Indem er die Flammen seines Hasses ertrug und unterdrückte, machte er Arlathii, den Zweifach Verstorbenen, glauben, er sei schwach. Als die Zeit des Aufstands kam, war Arlathii der erste der *Illithiden*, der durch die Hand Zerthimons den Tod fand und so zum drittenmal starb."~ */
  IF ~~ THEN REPLY #60605 /* ~Betrachte den Kreis noch einmal.~ */ GOTO 1
  IF ~~ THEN REPLY #60606 /* ~Schieb die Scheiben zusammen und versiegele den Kreis.~ */ EXIT
END

IF ~~ THEN BEGIN 29 // from: 1.14 12.2
  SAY #60607 /* ~"*Wisse*, daß der Aufstand des Volkes gegen die *Illithiden* das Ergebnis vieler Dutzend Phasen harter Arbeit war. Viele versammelten sich heimlich und lernten, wie sie ihre Herren, die *Illithiden*, besiegen konnten. Sie lernten, ihren Geist abzuschirmen und ihn als Waffe zu gebrauchen. Sie lernten die Schrift des Stahls, und vor allem gab man ihnen das *Wissen*, was Freiheit ist."~ */
  IF ~~ THEN REPLY #60608 /* ~Lies weiter die Symbole...~ */ GOTO 30
  IF ~~ THEN REPLY #60609 /* ~Hör auf zu lesen und betrachte den Kreis noch einmal.~ */ GOTO 1
  IF ~~ THEN REPLY #60610 /* ~Schieb die Scheiben zusammen und versiegele den Kreis.~ */ EXIT
END

IF ~~ THEN BEGIN 30 // from: 29.0
  SAY #60611 /* ~"Einige lernten das Wesen der Freiheit kennen und verinnerlichten es. Ihr *Wissen* gab ihnen Kraft. Andere fürchteten die Freiheit und verhielten sich still. Doch es gab jene, die Freiheit *kannten* und Sklaverei *kannten* und die wollten, daß das Volk in Ketten blieb. Einer von ihnen war Vilquar."~ */
  IF ~~ THEN REPLY #60612 /* ~Lies weiter die Symbole...~ */ GOTO 31
  IF ~~ THEN REPLY #60613 /* ~Hör auf zu lesen und betrachte den Kreis noch einmal.~ */ GOTO 1
  IF ~~ THEN REPLY #60614 /* ~Schieb die Scheiben zusammen und versiegele den Kreis.~ */ EXIT
END

IF ~~ THEN BEGIN 31 // from: 30.0
  SAY #60615 /* ~"Vilquar sah nicht *Freiheit* in dem Aufstand, sondern eine Gelegenheit. Er sah, daß die *Illithiden* sich über viele der Falschen Welten ausgebreitet hatten. Ihnen gehörten so viele Welten, daß ihr Blick nur noch nach außen gerichtet war auf alles, was sie nicht bereits kontrollierten. Vilquars Auge sah, daß vieles vor sich ging, was die *Illithiden* nicht sahen. Gegenüber dem Aufstand waren die *Illithiden* blind."~ */
  IF ~~ THEN REPLY #60616 /* ~Lies weiter die Symbole...~ */ GOTO 32
  IF ~~ THEN REPLY #60617 /* ~Hör auf zu lesen und betrachte den Kreis noch einmal.~ */ GOTO 1
  IF ~~ THEN REPLY #60618 /* ~Schieb die Scheiben zusammen und versiegele den Kreis.~ */ EXIT
END

IF ~~ THEN BEGIN 32 // from: 31.0
  SAY #60619 /* ~"Vilquar trat vor seinen Herrn, den *Illithiden* Zhijitaris, und setzte ihn über den Aufstand in *Kenntnis*. Vilquar erlegte sich selbst noch weitere Ketten auf, indem er sich erbot, als ihr Auge im Kampf gegen den Aufstand zu dienen. Dafür verlangte Vilquar eine Belohnung für seine Dienste. Die *Illithiden* erklärten sich einverstanden."~ */
  IF ~~ THEN REPLY #60620 /* ~Lies weiter die Symbole...~ */ GOTO 33
  IF ~~ THEN REPLY #60628 /* ~Hör auf zu lesen und betrachte den Kreis noch einmal.~ */ GOTO 1
  IF ~~ THEN REPLY #60629 /* ~Schieb die Scheiben zusammen und versiegele den Kreis.~ */ EXIT
END

IF ~~ THEN BEGIN 33 // from: 32.0
  SAY #60630 /* ~"Mit dem Abschluß dieses Abkommens begannen düstere Zeiten. Viele Male beging Vilquar Verrat an seinem Volk, und viele seines Volkes wurden von den *Illithiden* geschlachtet, um den Aufstand in die Schranken zu weisen. Es schien, als würde der Aufstand versiegen, bevor er noch ausbrechen konnte, und die *Illithiden* waren zufrieden mit Vilquars Auge."~ */
  IF ~~ THEN REPLY #60631 /* ~Lies weiter die Symbole...~ */ GOTO 34
  IF ~~ THEN REPLY #60634 /* ~Hör auf zu lesen und betrachte den Kreis noch einmal.~ */ GOTO 1
  IF ~~ THEN REPLY #60637 /* ~Schieb die Scheiben zusammen und versiegele den Kreis.~ */ EXIT
END

IF ~~ THEN BEGIN 34 // from: 33.0
  SAY #60638 /* ~"Es war gegen Ende dieser düsteren Zeiten, als Zerthimon vom Verrat Vilquars *Kenntnis* bekam. In dem *Wissen* um Vilquars Auge brachte Zerthimon den Aufstand zum Schweigen, so daß Vilquar denke, sein Verrat sei schließlich gelungen, und der Aufstand sei niedergeschlagen. Er *wußte*, daß Vilquars Auge nur die Belohnung sah, die ihm versprochen war. Er würde sehen, was er sehen wollte."~ */
  IF ~~ THEN REPLY #60639 /* ~Lies weiter die Symbole...~ */ GOTO 35
  IF ~~ THEN REPLY #60640 /* ~Hör auf zu lesen und betrachte den Kreis noch einmal.~ */ GOTO 1
  IF ~~ THEN REPLY #60641 /* ~Schieb die Scheiben zusammen und versiegele den Kreis.~ */ EXIT
END

IF ~~ THEN BEGIN 35 // from: 34.0
  SAY #60642 /* ~"Mit habgierig schlagendem Herzen trat Vilquar vor den *Illithiden* Zhijitaris und brachte seinem Herrn die Kunde von seinem Erfolg. Er sagte, der Aufstand sei gebrochen, und die *Illithiden* könnten ohne Gefahr ihre Augen wieder auswärts richten. Er pries ihre Weisheit, die sie bewogen hatte, auf Vilquars Auge zu vertrauen, und bat um seine Belohnung."~ */
  IF ~~ THEN REPLY #60643 /* ~Lies weiter die Symbole...~ */ GOTO 36
  IF ~~ THEN REPLY #60644 /* ~Hör auf zu lesen und betrachte den Kreis noch einmal.~ */ GOTO 1
  IF ~~ THEN REPLY #60645 /* ~Schieb die Scheiben zusammen und versiegele den Kreis.~ */ EXIT
END

IF ~~ THEN BEGIN 36 // from: 35.0
  SAY #60646 /* ~"In seiner blinden Habgier hatte Vilquar vergessen, warum das Volk begonnen hatte, nach Freiheit zu streben. Er hatte das *Wissen* darüber verloren, was Sklaverei bedeutet. Er hatte vergessen, was seine Herren, die *Illithiden*, in ihm sahen. Und so endete Vilquars Verrat am Volk mit einem weiteren Verrat. Vilquar mußte erfahren, daß Vilquars Auge nutzlos wird, wenn es nichts mehr gibt, was Vilquars Auge sehen könnte." ~ */
  IF ~  Global("Dakkon_Teach","GLOBAL",7)
~ THEN REPLY #60647 /* ~Lies die Symbole bis zum Ende.~ */ DO ~SetGlobal("Dakkon_Teach","GLOBAL",8)
~ GOTO 37
  IF ~  !Global("Dakkon_Teach","GLOBAL",7)
~ THEN REPLY #67276 /* ~Lies die Symbole zu Ende.~ */ GOTO 37
  IF ~~ THEN REPLY #60649 /* ~Hör auf zu lesen und betrachte den Kreis noch einmal.~ */ GOTO 1
  IF ~~ THEN REPLY #60651 /* ~Schieb die Scheiben zusammen und versiegele den Kreis.~ */ EXIT
END

IF ~~ THEN BEGIN 37 // from: 36.0 36.1
  SAY #60652 /* ~"Die *Illithiden* gaben Vilquar seine Belohnung: Sie öffneten seinen Schädel und verschlangen sein Hirn. Vilquars Leichnam wurde auf die Felder der leeren Hüllen geworfen, damit sein Blut die giftigen Gräser bewässere."~ */
  IF ~~ THEN REPLY #60653 /* ~Betrachte den Kreis noch einmal.~ */ GOTO 1
  IF ~~ THEN REPLY #60654 /* ~Schieb die Scheiben zusammen und versiegele den Kreis.~ */ EXIT
END

IF ~~ THEN BEGIN 38 // from: 1.15 12.3
  SAY #60655 /* ~"Zerthimon war der erste, der das Wesen der Freiheit *kannte*. Doch er war nicht derjenige, der zuerst den Lauf der Rebellion *kannte*."~ */
  IF ~~ THEN REPLY #60656 /* ~Lies weiter die Symbole...~ */ GOTO 39
  IF ~~ THEN REPLY #60657 /* ~Hör auf zu lesen und betrachte den Kreis noch einmal.~ */ GOTO 1
  IF ~~ THEN REPLY #60658 /* ~Schieb die Scheiben zusammen und versiegele den Kreis.~ */ EXIT
END

IF ~~ THEN BEGIN 39 // from: 38.0
  SAY #60659 /* ~"Die *Kenntnis* der Rebellion kam zuerst zur edlen Kriegerin Gith, einer des Volkes. Sie hatte den *Illithiden* in vielen der Falschen Welten als Soldatin gedient, und sie *kannte* den Krieg und trug ihn in ihrem Herzen. Sie *wußte*, wie man die Leute organisiert, so daß sie andere unterjochen. Sie *kannte* die Wege der Macht, und sie beherrschte die Kunst, den Eroberern die Waffen abzunehmen, mit denen man sie schlagen konnte. Ihr Geist war zielgerichtet, und ihre Klinge und ihr Wille waren eins."~ */
  IF ~~ THEN REPLY #60660 /* ~Lies weiter die Symbole...~ */ GOTO 40
  IF ~~ THEN REPLY #60661 /* ~Hör auf zu lesen und betrachte den Kreis noch einmal.~ */ GOTO 1
  IF ~~ THEN REPLY #60662 /* ~Schieb die Scheiben zusammen und versiegele den Kreis.~ */ EXIT
END

IF ~~ THEN BEGIN 40 // from: 39.0
  SAY #60663 /* ~"In der Phase, als Zerthimon Gith *kennenlernte*, hörte Zerthimon auf, sich selbst zu *kennen*. Ihre Worte waren wie ein Feuer, das in den Herzen derer entfacht wurde, die sie hörten. Als er ihre Worte hörte, wollte er den Krieg *kennenlernen*. Er *wußte* nicht, wie ihm geschah, doch er *wußte*, er wollte Seite an Seite mit Gith in die Schlacht ziehen. Er wollte seinem Haß Ausdruck verleihen und die *Illithiden* denselben Schmerz fühlen lassen, den er fühlte."~ */
  IF ~~ THEN REPLY #60664 /* ~Lies weiter die Symbole...~ */ GOTO 41
  IF ~~ THEN REPLY #60665 /* ~Hör auf zu lesen und betrachte den Kreis noch einmal.~ */ GOTO 1
  IF ~~ THEN REPLY #60666 /* ~Schieb die Scheiben zusammen und versiegele den Kreis.~ */ EXIT
END

IF ~~ THEN BEGIN 41 // from: 40.0
  SAY #60667 /* ~"Gith war eine des Volkes, doch sie *kannte* sich besser, als Zerthimon es je zuvor bei einem anderen festgestellt hatte. Sie *kannte* das Wesen des Fleisches, sie *kannte* die *Illithiden*, und weil sie sich selbst *kannte*, wußte sie auch, wie man sie im Kampf besiegen konnte. Die Kraft ihres *Wissens* war so groß, daß alle, die ihren Weg beschritten, sich selbst *erkannten*."~ */
  IF ~  Global("Dakkon_Teach","GLOBAL",9)
~ THEN REPLY #60668 /* ~Lies die Symbole bis zum Ende.~ */ DO ~SetGlobal("Dakkon_Teach","GLOBAL",10)
~ GOTO 42
  IF ~  !Global("Dakkon_Teach","GLOBAL",9)
~ THEN REPLY #67277 /* ~Lies die Symbole zu Ende.~ */ GOTO 42
  IF ~~ THEN REPLY #60669 /* ~Hör auf zu lesen und betrachte den Kreis noch einmal.~ */ GOTO 1
  IF ~~ THEN REPLY #60670 /* ~Schieb die Scheiben zusammen und versiegele den Kreis.~ */ EXIT
END

IF ~~ THEN BEGIN 42 // from: 41.0 41.1
  SAY #60671 /* ~"Gith war zwar nur eine, doch sie besaß eine solche Stärke, daß andere durch sie ihre eigene Stärke *erkannten*. Und Zerthimon legte ihr sein Schwert zu Füßen."~ */
  IF ~~ THEN REPLY #60672 /* ~Betrachte den Kreis noch einmal.~ */ GOTO 1
  IF ~~ THEN REPLY #60673 /* ~Schieb die Scheiben zusammen und versiegele den Kreis.~ */ EXIT
END

IF ~~ THEN BEGIN 43 // from: 1.16 12.4
  SAY #60674 /* ~"Auf den Verfluchten Ebenen erklärte Zerthimon Gith, daß es nicht zwei Himmel geben könne. Seinen Worten folgte alsbald der Krieg."~ */
  IF ~~ THEN REPLY #60675 /* ~Lies weiter die Symbole...~ */ GOTO 44
  IF ~~ THEN REPLY #60676 /* ~Hör auf zu lesen und betrachte den Kreis noch einmal.~ */ GOTO 1
  IF ~~ THEN REPLY #60677 /* ~Schieb die Scheiben zusammen und versiegele den Kreis.~ */ EXIT
END

IF ~~ THEN BEGIN 44 // from: 43.0
  SAY #60678 /* ~"Auf den Verfluchten Ebenen siegte das Volk über seine Herren, die *Illithiden*. Sie lernten die Freiheit *kennen*."~ */
  IF ~~ THEN REPLY #60679 /* ~Lies weiter die Symbole...~ */ GOTO 45
  IF ~~ THEN REPLY #60680 /* ~Hör auf zu lesen und betrachte den Kreis noch einmal.~ */ GOTO 1
  IF ~~ THEN REPLY #60683 /* ~Schieb die Scheiben zusammen und versiegele den Kreis.~ */ EXIT
END

IF ~~ THEN BEGIN 45 // from: 44.0
  SAY #60684 /* ~"Doch noch eh die grünen Feuer auf den Schlachtfeldern niedergebrannt waren, sprach Gith davon, den Krieg weiterzuführen. Viele, deren Herzen noch immer mit Blutdurst erfüllt waren, stimmten ihr zu. Sie sprach nicht nur davon, die *Illithiden* zu besiegen, sondern davon, alle *Illithiden* auf sämtlichen Ebenen zu vernichten. Und wenn die *Illithiden* erst ausgelöscht seien, würden sie Krieg gegen alle anderen Rassen führen, auf die sie trafen." ~ */
  IF ~~ THEN REPLY #60685 /* ~Lies weiter die Symbole...~ */ GOTO 46
  IF ~~ THEN REPLY #60686 /* ~Hör auf zu lesen und betrachte den Kreis noch einmal.~ */ GOTO 1
  IF ~~ THEN REPLY #60687 /* ~Schieb die Scheiben zusammen und versiegele den Kreis.~ */ EXIT
END

IF ~~ THEN BEGIN 46 // from: 45.0
  SAY #60689 /* ~"In Giths Herzen tobte ein Feuer. Sie lebte im Krieg, und im Krieg *kannte* sie sich selbst. Alles, worauf ihr Auge fiel, wollte sie erobern."~ */
  IF ~~ THEN REPLY #60690 /* ~Lies weiter die Symbole...~ */ GOTO 47
  IF ~~ THEN REPLY #60694 /* ~Hör auf zu lesen und betrachte den Kreis noch einmal.~ */ GOTO 1
  IF ~~ THEN REPLY #60697 /* ~Schieb die Scheiben zusammen und versiegele den Kreis.~ */ EXIT
END

IF ~~ THEN BEGIN 47 // from: 46.0
  SAY #60698 /* ~"Zerthimon führte die ersten Reden, die nicht in Giths Sinne waren. Er sagte, das Volk *kenne* bereits die Freiheit. Nun solle es lernen, sich selbst wieder zu *kennen* und den Schaden zu beheben, der ihm zugefügt worden war. Viele andere des Volkes, die des Krieges gegen die *Illithiden* müde waren, standen mit ganzem Herzen hinter seinen Worten."~ */
  IF ~~ THEN REPLY #60699 /* ~Lies weiter die Symbole...~ */ GOTO 48
  IF ~~ THEN REPLY #60700 /* ~Hör auf zu lesen und betrachte den Kreis noch einmal.~ */ GOTO 1
  IF ~~ THEN REPLY #60701 /* ~Schieb die Scheiben zusammen und versiegele den Kreis.~ */ EXIT
END

IF ~~ THEN BEGIN 48 // from: 47.0
  SAY #60702 /* ~"*Wisse*, daß Gith in dieser Angelegenheit nicht so dachte wie Zerthimon. Sie sagte, der Krieg solle weitergeführt werden. Die *Illithiden* sollen vernichtet werden, ihr Fleisch ausgerottet. Dann würde das Volk die Falschen Welten für sich beanspruchen. Gith sagte Zerthimon, daß sie in dieser Sache unter demselben Himmel kämpfen würden. Ihre Worte waren wie eine blanke Klinge."~ */
  IF ~  Global("Dakkon_Teach","GLOBAL",11)
~ THEN REPLY #60703 /* ~Lies die Symbole bis zum Ende.~ */ DO ~SetGlobal("Dakkon_Teach","GLOBAL",12)
~ GOTO 49
  IF ~  !Global("Dakkon_Teach","GLOBAL",11)
~ THEN REPLY #67278 /* ~Lies die Symbole zu Ende.~ */ GOTO 49
  IF ~~ THEN REPLY #60707 /* ~Hör auf zu lesen und betrachte den Kreis noch einmal.~ */ GOTO 1
  IF ~~ THEN REPLY #60708 /* ~Schieb die Scheiben zusammen und versiegele den Kreis.~ */ EXIT
END

IF ~~ THEN BEGIN 49 // from: 48.0 48.1
  SAY #60709 /* ~"Von Zerthimon kam die Offenbarung der Zwei Himmel. Auf seine Worte folgte der Krieg." ~ */
  IF ~~ THEN REPLY #60710 /* ~Betrachte den Kreis noch einmal.~ */ GOTO 1
  IF ~~ THEN REPLY #60711 /* ~Schieb die Scheiben zusammen und versiegele den Kreis.~ */ EXIT
END

IF ~~ THEN BEGIN 50 // from: 1.10
  SAY #60719 /* ~Du betrachtest den Kreis aufmerksam, untersuchst seine Verbindungsglieder und probierst neue Muster, doch es zeigen sich keine neuen Kreise.~ */
  IF ~~ THEN REPLY #60720 /* ~Betrachte den Kreis noch einmal.~ */ GOTO 1
  IF ~~ THEN REPLY #60721 /* ~Schieb die Scheiben zusammen und versiegele den Kreis.~ */ EXIT
END

IF ~~ THEN BEGIN 51 // from: 1.6 1.8
  SAY #60722 /* ~Als du die Ringe des zweiten Kreises untersuchst, findest du ein merkwürdiges Verbindungsglied in der Scheibe, die davon erzählt, wie hart Giths Volk auf den Aufstand hingearbeitet hat. Aus dem Glied schaut ein neuer Kreis hervor. Du schließt ihn auf, indem du die Scheibe nach vorn ziehst, so daß du sie betrachten kannst.~ */
  IF ~~ THEN REPLY #60724 /* ~Lies die Symbole...~ */ GOTO 53
  IF ~~ THEN REPLY #60725 /* ~Betrachte den Kreis noch einmal.~ */ GOTO 1
  IF ~~ THEN REPLY #60726 /* ~Schieb die Scheiben zusammen und versiegele den Kreis.~ */ EXIT
END

IF ~~ THEN BEGIN 52 // from: 1.7 1.9
  SAY #60727 /* ~Als du die Ringe der sieben Kreise des Zerthimon untersuchst, stellst du plötzlich fest, daß die Form der Verbindungsglieder einem bestimmten Muster folgt... Du drückst deine Finger um den Rand des Kreises und schließt ein verstecktes Segment auf. Du ziehst die Scheibe vor, damit du sie betrachten kannst.~ */
  IF ~~ THEN REPLY #60728 /* ~Lies die Symbole...~ */ GOTO 57
  IF ~~ THEN REPLY #60730 /* ~Betrachte den Kreis noch einmal.~ */ GOTO 1
  IF ~~ THEN REPLY #60731 /* ~Schieb die Scheiben zusammen und versiegele den Kreis.~ */ EXIT
END

IF ~~ THEN BEGIN 53 // from: 1.17 51.0
  SAY #60732 /* ~"*Wisse*, daß der Aufstand des Volkes gegen die *Illithiden* über viele Phasen aufgebaut wurde. Viele lebten und starben unter dem Schwert der Zeit, während der Aufstand vorbereitet wurde."~ */
  IF ~~ THEN REPLY #60733 /* ~Lies weiter die Symbole...~ */ GOTO 54
  IF ~~ THEN REPLY #60734 /* ~Hör auf zu lesen und betrachte den Kreis noch einmal.~ */ GOTO 1
  IF ~~ THEN REPLY #60735 /* ~Schieb die Scheiben zusammen und versiegele den Kreis.~ */ EXIT
END

IF ~~ THEN BEGIN 54 // from: 53.0
  SAY #60736 /* ~"Der Aufstand wurde langsam und gründlich geschmiedet. Stahl wurde gesammelt, um das Fleisch der *Illithiden* zu zeichnen. Es wurden Wege eingerichtet, um über jede Bewegung der *Illithiden* informiert zu sein, zunächst schwach und unorganisiert, dann immer stärker, wie ein Kind, das seine Stimme findet. Als alle ihre Bewegungen *bekannt* waren, überwachte man die *Illithiden*. Indem man sie beobachtete, *erkannte* man, was in ihren Köpfen vorging."~ */
  IF ~~ THEN REPLY #60737 /* ~Lies weiter die Symbole...~ */ GOTO 55
  IF ~~ THEN REPLY #60738 /* ~Hör auf zu lesen und betrachte den Kreis noch einmal.~ */ GOTO 1
  IF ~~ THEN REPLY #60739 /* ~Schieb die Scheiben zusammen und versiegele den Kreis.~ */ EXIT
END

IF ~~ THEN BEGIN 55 // from: 54.0
  SAY #60740 /* ~"Als man das Verhalten der *Illithiden* schließlich *kannte*, wurde das Volk zusammengerufen und heimlich darin unterrichtet, wie man den Geist abschirmt und den Willen als Waffe einsetzt. Man lehrte sie alle die Schrift des Stahls, und vor allem lehrte man sie die *Kenntnis* der Freiheit."~ */
  IF ~  Global("Dakkon_Teach","GLOBAL",14)
~ THEN REPLY #60741 /* ~Lies die Symbole bis zum Ende.~ */ DO ~SetGlobal("Dakkon_Teach","GLOBAL",15)
~ GOTO 56
  IF ~  !Global("Dakkon_Teach","GLOBAL",14)
~ THEN REPLY #67279 /* ~Lies die Symbole zu Ende.~ */ GOTO 56
  IF ~~ THEN REPLY #60743 /* ~Hör auf zu lesen und betrachte den Kreis noch einmal.~ */ GOTO 1
  IF ~~ THEN REPLY #60744 /* ~Schieb die Scheiben zusammen und versiegele den Kreis.~ */ EXIT
END

IF ~~ THEN BEGIN 56 // from: 55.0 55.1
  SAY #60745 /* ~"Diese Dinge ließen sich nicht auf die Schnelle lernen. Die *Kenntnis* über viele dieser Dinge erwarb man nur langsam, und auf allen lastete das Gewicht der Zeit schwer. Vom *Erkennen* des eigenen Spiegelbilds in einer Stahlklinge, über das *Wissen* darüber, wie man den Willen versenkt, bis hin zum Sehen selbst. Auf all dies und mehr baute das Volk auf. Mit der Zeit gewann man *Kenntnis* über das Ganze."~ */
  IF ~~ THEN REPLY #60746 /* ~Betrachte den Kreis noch einmal.~ */ GOTO 1
  IF ~~ THEN REPLY #60747 /* ~Schieb die Scheiben zusammen und versiegele den Kreis.~ */ EXIT
END

IF ~~ THEN BEGIN 57 // from: 1.18 52.0
  SAY #60748 /* ~"*Wisse*, daß ein gespaltener Geist einen Mann spaltet. Wille und Hand müssen eins sein. Wer sich selbst *kennt*, wird stark."~ */
  IF ~~ THEN REPLY #60749 /* ~Lies weiter die Symbole...~ */ GOTO 58
  IF ~~ THEN REPLY #60750 /* ~Hör auf zu lesen und betrachte den Kreis noch einmal.~ */ GOTO 1
  IF ~~ THEN REPLY #60751 /* ~Schieb die Scheiben zusammen und versiegele den Kreis.~ */ EXIT
END

IF ~~ THEN BEGIN 58 // from: 57.0
  SAY #60752 /* ~"*Wisse*, wenn du im Grunde deines Herzens *weißt*, daß etwas gut und richtig ist, verrate es nicht, nur weil der Weg mühsam und steinig ist. *Wisse*, daß es ohne Leid den Aufstand nie gegeben und das Volk sich selbst nie *gekannt* hätte."~ */
  IF ~~ THEN REPLY #60753 /* ~Lies weiter die Symbole...~ */ GOTO 59
  IF ~~ THEN REPLY #60754 /* ~Hör auf zu lesen und betrachte den Kreis noch einmal.~ */ GOTO 1
  IF ~~ THEN REPLY #60755 /* ~Schieb die Scheiben zusammen und versiegele den Kreis.~ */ EXIT
END

IF ~~ THEN BEGIN 59 // from: 58.0
  SAY #60756 /* ~"*Wisse*, daß es in keiner Welt irgend etwas gibt, das der Einheit widerstehen kann. Wenn alle nur ein Ziel *kennen*, wenn alle Hände durch einen einzigen Willen geleitet werden, und alle in derselben Absicht handeln, kann man die Ebenen selbst versetzen."~ */
  IF ~  Global("Dakkon_Teach","GLOBAL",17)
~ THEN REPLY #60757 /* ~Lies weiter die Symbole...~ */ DO ~SetGlobal("Dakkon_Teach","GLOBAL",18)
~ GOTO 60
  IF ~  !Global("Dakkon_Teach","GLOBAL",17)
~ THEN REPLY #67280 /* ~Lies weiter die Symbole...~ */ GOTO 60
  IF ~~ THEN REPLY #60764 /* ~Hör auf zu lesen und betrachte den Kreis noch einmal.~ */ GOTO 1
  IF ~~ THEN REPLY #60769 /* ~Schieb die Scheiben zusammen und versiegele den Kreis.~ */ EXIT
END

IF ~~ THEN BEGIN 60 // from: 59.0 59.1
  SAY #60773 /* ~"Ein gespaltener Geist ist ein Geist, der sich selbst nicht *kennt*. Wenn der Geist gespalten ist, klafft auch der Körper in zwei Hälften. Wenn man ein einziges Ziel hat, ist der Körper stark. Die *Kenntnis* deiner selbst macht dich stark."~ */
  IF ~~ THEN REPLY #60774 /* ~Betrachte den Kreis noch einmal.~ */ GOTO 1
  IF ~~ THEN REPLY #60775 /* ~Schieb die Scheiben zusammen und versiegele den Kreis.~ */ EXIT
END
