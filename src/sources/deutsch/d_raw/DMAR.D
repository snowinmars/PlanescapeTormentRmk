// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DMAR.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\de_DE\dialog.tlk
// dialogF  : (none)

BEGIN ~DMAR~
//////////////////////////////////////////////////
// WARNING: this file contains non-trivial WEIGHTs
//////////////////////////////////////////////////

IF WEIGHT #5 /* Triggers after states #: 1 2 20 16 10 even though they appear after this state */
~  NumTimesTalkedTo(0)
~ THEN BEGIN 0 // from:
  SAY #45076 /* ~Dein erster Eindruck von Mar ist, daß er dringend ein heißes Bad braucht, und zwar in größtmöglicher Entfernung von allen Wesen, die irgendeine Art von Geruchssinn besitzen. Du siehst fast, wie der Gestank in gelben Schwaden von seinem Körper aufsteigt. Er winkt dich aufgeregt herbei, um mit dir zu sprechen.~ */
  IF ~~ THEN REPLY #45077 /* ~Nähere dich dieser Person und hör, was sie zu sagen hat.~ */ GOTO 4
  IF ~~ THEN REPLY #45399 /* ~Halt die Luft an und geh weg.~ */ EXIT
END

IF WEIGHT #4 /* Triggers after states #: 2 20 16 10 even though they appear after this state */
~  NumTimesTalkedToGT(0)
Global("FedEx","Global",0)
~ THEN BEGIN 1 // from:
  SAY #45400 /* ~Beim Näherkommen machst dich schon auf Mars Gestank gefaßt. "Tust du Mar einen Gefallen? Ich hab da 'n Kästchen, das du für mich überbringen könntest."~ */
  IF ~~ THEN REPLY #45401 /* ~"OK, ich werd das Paket für dich überbringen."~ */ DO ~SetGlobal("FedEx","Global",1)
SetGlobal("Alpha","Global",1)
~ GOTO 6
  IF ~~ THEN REPLY #45402 /* ~"Warum kannst du das Paket nicht selbst überbringen?"~ */ GOTO 5
  IF ~~ THEN REPLY #45403 /* ~"Leb wohl."~ */ EXIT
END

IF WEIGHT #3 /* Triggers after states #: 20 16 10 even though they appear after this state */
~  GlobalGT("FedEx","Global",0)
~ THEN BEGIN 2 // from:
  SAY #45404 /* ~Mars Augen blicken irre, als du näherkommst. Mit einer hohen, kreischenden Stimme fragt er. "Du schon wieder? Kreuz hier erst wieder auf, wenn du das Kästchen abgeliefert hast."~ */
  IF ~  Global("FedEx","Global",2)
Global("Demonbox","Global",0)
~ THEN REPLY #45405 /* ~"Die Person, der ich das Kästchen übergeben sollte, ist weggerannt. Was nun?"~ */ GOTO 8
  IF ~  Global("FedEx","Global",10)
~ THEN REPLY #45406 /* ~"Ich bin das Kästchen losgeworden."~ */ DO ~SetGlobal("FedEx","Global",11)
~ GOTO 11
  IF ~  Global("Demonbox","Global",4)
~ THEN REPLY #45407 /* ~"Ich hab den Dämonen im Kästchen getötet.."~ */ GOTO 18
  IF ~  Global("Demonbox","Global",3)
~ THEN REPLY #45408 /* ~"Ich hab den Dämonen im Kästchen getötet."~ */ GOTO 19
  IF ~  Global("Demonbox","Global",1)
~ THEN REPLY #45409 /* ~"Ich hab das Kästchen geöffnet und ein Scheusal gesehen. Dann bin ich weggerannt."~ */ GOTO 3
  IF ~  !Global("FedEx","Global",2)
!Global("FedEx","Global",10)
GlobalGT("FedEx","Global",0)
Global("Demonbox","Global",0)
~ THEN REPLY #45410 /* ~"Keiner will das Kästchen haben. Nimm sie zurück..."~ */ GOTO 9
  IF ~  !Global("FedEx","GLOBAL",10)
Global("Demonbox","Global",2)
~ THEN REPLY #45411 /* ~"Ich hab den Stock verlassen. Es ist nichts passiert."~ */ GOTO 17
  IF ~~ THEN REPLY #45412 /* ~"Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 2.4
  SAY #45413 /* ~"Du Wahnsinniger! Du unterschreibst dein eigenes Todesurteil, wenn du dieses verfluchte Kästchen öffnest! Lauf, wenn dir Leben lieb ist!" Mar rennt los.~ */
  IF ~~ THEN REPLY #45414 /* ~"Leb wohl."~ */ DO ~StartCutSceneMode()
StartCutSceneEx("0100CUT2",FALSE)
~ JOURNAL #39511 /* ~Ich habe zwei Fehler gemacht. Zum einen habe ich nicht auf Mars Warnungen gehört und den Kasten aufgemacht. Zum anderen bin ich, als das Scheusal aus der Kiste kam, einfach weggerannt. Den ersten Fehler kann ich nicht mehr rückgängig machen, aber den zweiten kann ich bereinigen. Ich muß das Scheusal töten.~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 0.0
  SAY #46322 /* ~Ein Ausdruck des Erstaunens macht sich auf seinem Gesicht breit, als du näherkommst. "Schön, daß du dir Zeit nimmst. Ich bin Mar, und ich würde dich gern um einen Gefallen bitten."~ */
  IF ~~ THEN REPLY #46323 /* ~"Ich höre."~ */ GOTO 5
  IF ~~ THEN REPLY #46324 /* ~"Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 1.1 4.0
  SAY #46325 /* ~"Es geht um Leben und Tod! Ich muß dieses Kästchen hier abliefern, sonst geht's mir an den Kragen! Leider hab ich mir ganz schlimm das Bein verstaucht... Würdest du mir aus der Patsche helfen und es für mich zustellen?"~ */
  IF ~~ THEN REPLY #46326 /* ~"Ich stell das Kästchen für dich zu."~ */ DO ~SetGlobal("FedEx","Global",1)
SetGlobal("Alpha","Global",1)
~ GOTO 6
  IF ~~ THEN REPLY #46327 /* ~"Nein."~ */ EXIT
END

IF ~~ THEN BEGIN 6 // from: 1.0 5.0
  SAY #46328 /* ~Langsam holt Mar ein kleines Kästchen aus seiner zerlumpten Kleidung hervor. Eine Spur des Bedauerns huscht über sein Gesicht, ist aber schon verflogen, als er dich anschaut und dir das Kästchen gibt. Als ihr es kurz gleichzeitig berührt, schimmert es leicht. Als Mar es dir ganz anvertraut hat, hörst du einen Seufzer der Erleichterung.~ */
  IF ~~ THEN REPLY #46329 /* ~"Und was nun?"~ */ DO ~GiveItemCreate("DBox",Player1,1,0,0)
~ GOTO 7
END

IF ~~ THEN BEGIN 7 // from: 6.0
  SAY #46330 /* ~"Es muß zu Ku'atraa gebracht werden. Er treibt sich wahrscheinlich irgendwo im Südosten des Stocks rum. Ach ja, bevor ich's vergesse: Egal was passiert, ÖFFNE DAS KÄSTCHEN NIE! Und verlasse den Stock nie mit ihm. Du bist gewarnt! Und jetzt mach, daß du fortkommst!"~ */
  IF ~~ THEN REPLY #46331 /* ~"Ich komm wieder, wenn ich das Kästchen abgeliefert habe. Bis dann."~ */ DO ~SetGlobal("Notalk","AR0100",1)
StartCutSceneMode()
StartCutSceneEx("0100CUT1",FALSE)
~ JOURNAL #39481 /* ~Ich habe die Aufgabe angenommen, einer Person namens Ku'atraa ein seltsames Kästchen zu bringen. Mar sagt, daß dieser Typ sich in der Regel im südöstlichen Abschnitt des Stocks aufhält.~ */ EXIT
END

IF ~~ THEN BEGIN 8 // from: 2.0
  SAY #46461 /* ~"Ist nicht mehr mein Problem. Das Kästchen ist solange magisch an dich gebunden, bis du es abgeliefert hast. Such dir einen Abnehmer! Aber bleib mir vom Leib, solang du dir das Ding nicht vom Hals geschafft hast!"~ */
  IF ~  Global("FedEx","Global",2)
~ THEN REPLY #46462 /* ~Sieht aus, als wärst du allein. Sagte Ku'atraa nicht irgendwas von jemand anderem, dem du das Kästchen bringen könntest?~ */ DO ~SetGlobal("Notalk","AR0100",1)
~ EXIT
  IF ~  GlobalGT("FedEx","Global",2)
~ THEN REPLY #46463 /* ~Wenn du nur wüßtest, was in diesem Kästchen steckt...~ */ DO ~SetGlobal("Notalk","AR0100",1)
~ EXIT
END

IF ~~ THEN BEGIN 9 // from: 2.5
  SAY #46464 /* ~Mar zuckt zusammen. "Nein! Ich rühr das verfluchte Kästchen bestimmt nicht mehr an! Schaff es mir vom Leib! Du hast es bereitwillig in Besitz genommen, also behalt es oder such dir einen Abnehmer. Ich jedenfalls will nichts mehr damit zu tun haben: Lieber würd ich sterben, als mich je wieder mit diesem Ding herumzuschlagen! Und jetzt geh!"~ */
  IF ~~ THEN REPLY #46465 /* ~"Wenn ich mit diesem Kästchen hier fertig bin, dann bist du dran. Leb wohl."~ */ DO ~SetGlobal("Notalk","AR0100",1)
~ EXIT
END

IF WEIGHT #0 ~  Global("FedEx","Global",9)
~ THEN BEGIN 10 // from:
  SAY #46466 /* ~"Ich hab dir alles gesagt, was du wissen mußt."~ */
  IF ~~ THEN REPLY #46467 /* ~"Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 11 // from: 2.1
  SAY #46468 /* ~"Es freut mich von Herzen, daß du das sagst. Aber bevor du mich umbringst, weil ich dir das Höllending angedreht habe... Ich kann das alles erklären..."~ */
  IF ~~ THEN REPLY #46469 /* ~"Dir geht's an den Kragen."~ */ DO ~GivePartyGold(500)
Enemy()
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
IncrementGlobalOnceEx("GLOBALEvil_Mar_1","GLOBALGood",-1)
~ JOURNAL #60399 /* ~Meine Gerechtigkeit kommt schnell und kennt keine Gnade. Ich habe Mar für seine Verbrechen mit dem Leben bezahlen lassen. Mein einziger Wunsch besteht darin, meine Reise fortzusetzen. Ich will mich nicht länger mit verzauberten Kästchen aufhalten.~ */ EXIT
  IF ~~ THEN REPLY #46470 /* ~"Ich bin ganz Ohr."~ */ GOTO 12
END

IF ~~ THEN BEGIN 12 // from: 11.1
  SAY #46471 /* ~"Fest steht, daß das Kästchen schon existiert, seit man denken kann. Die einen plauschen, ein riesiger Dämon sei nach Beendigung eines Kampfes in das Kästchen eingesperrt worden. Die andere behaupten, ein böser Zauberer hätte es absichtlich gefertigt, um andere leiden zu lassen. In Wirklichkeit weiß keiner so recht, was es mit dem Kästchen auf sich hat. Einig ist man sich allein darin, daß der Besitzer stirbt, wenn es geöffnet wird."~ */
  IF ~~ THEN REPLY #46472 /* ~"Warum hat der Besitzer das Kästchen nicht einfach irgendwo versteckt, wo niemand es findet?"~ */ GOTO 13
  IF ~~ THEN REPLY #46473 /* ~"Das interessiert mich nicht. Was hab ich davon?"~ */ GOTO 15
END

IF ~~ THEN BEGIN 13 // from: 12.0
  SAY #46474 /* ~"Tja, wenn das so einfach wäre.... Aber wer hat schon gern ein Damoklesschwert über dem Kopf hängen? Man würde ja wahnsinnig, wenn man sich ständig den Kopf darüber zerbrechen müßte, wo das verdammte Kästchen steckt."~ */
  IF ~~ THEN REPLY #46475 /* ~"Warum hast Du gerade mich dafür ausgesucht?"~ */ GOTO 14
END

IF ~~ THEN BEGIN 14 // from: 13.0
  SAY #46476 /* ~"Erstens, weil ich dich zuvor noch nie in dieser Gegend gesehen habe. Ich brauchte ja einen ahnungslosen Dussel wie dich, der das Kästchen *annehmen* und als neuer Besitzer fungieren würde. Hier würde keiner wagen, es auch nur anzufassen. Zweitens, wenn du dir das Kästchen genauer angeschaut hättest, bevor ich es dir gab, dann hättest du bemerkt, daß die Zauberwirkungen bereits nachließen, und deshalb mußt ich es natürlich so schnell wie möglich loswerden. Außerdem: Wenn jemand aussah, als wäre er bereit fürs nächste Reich, dann du."~ */
  IF ~~ THEN REPLY #46477 /* ~"Du willst über das nächste Reich sprechen? Wenn du nicht sofort weiterredest, landest du auch gleich dort."~ */ GOTO 15
END

IF ~~ THEN BEGIN 15 // from: 12.1 14.0
  SAY #46478 /* ~"Offensichtlich bin ich an einen Schleifer geraten, der über beträchtliche Macht verfügt. Für einen wie dich handelt es sich doch sicher nur eine kleine Unannahmlichkeit. Ich biete dir diese Waffe und etwas Klimper als Belohnung für deine Bemühungen. Es ist alles, was ich habe... Und zufällig hat mich diese Ratte von Ku'atraa genau damit rumgekriegt, das Kästchen zu nehmen."~ */
  IF ~~ THEN REPLY #46479 /* ~"Ich bring dich um und kassier die Belohnung zusätzlich."~ */ DO ~GivePartyGold(500)
Enemy()
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
IncrementGlobalOnceEx("GLOBALEvil_Mar_1","GLOBALGood",-1)
~ JOURNAL #60399 /* ~Meine Gerechtigkeit kommt schnell und kennt keine Gnade. Ich habe Mar für seine Verbrechen mit dem Leben bezahlen lassen. Mein einziger Wunsch besteht darin, meine Reise fortzusetzen. Ich will mich nicht länger mit verzauberten Kästchen aufhalten.~ */ EXIT
  IF ~~ THEN REPLY #46480 /* ~"Gib mir meine Belohnung, und dann laß mich in Ruhe."~ */ DO ~GiveItem("Hax",Protagonist)
AddexperienceParty(1250)
GivePartyGold(500)
~ JOURNAL #39484 /* ~Obwohl es bestimmt nicht klug ist, hab ich beschlossen, Mar das, was er getan hat, zu verzeihen. Obwohl ich ja eigentlich meine verlorenen Erinnerungen wiederfinden will, ist dies ein Abenteuer, daß ich ganz gern vergessen würde.~ */ EXIT
END

IF WEIGHT #1 ~  Global("FedEx","Global",11)
~ THEN BEGIN 16 // from:
  SAY #46481 /* ~"Die Leute hier werden in Zukunft ruhiger schlafen, wenn sie wissen, daß du dieses verfluchte Kästchen zerstört hast. Danke nochmals!"~ */
  IF ~~ THEN REPLY #46482 /* ~"Hab ich doch gern getan. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 17 // from: 2.6
  SAY #46483 /* ~"Du Hornochse! Ich hab' dir doch gesagt, du sollst den Stock nicht verlassen. Los, hau ab hier, bevor es kommt und dich holt!"~ */
  IF ~~ THEN REPLY #46484 /* ~Mar läuft davon.~ */ DO ~SetGlobal("Boxleft","Global",1)
SetGlobal("Gamma","Global",1)
StartCutSceneMode()
StartCutSceneEx("0100CUT2",FALSE)
~ JOURNAL #39482 /* ~Anscheinend hab ich beim Verlassen des Stocks eine Kreatur freigelassen, die in dem Kasten eingesperrt war. Ich weiß nicht warum, aber ich fürchte, daß dieses Etwas nach dem letzten Besitzer des Kastens suchen wird. Ich bin also lieber wachsam - man kann ja nie wissen.~ */ EXIT
END

IF ~~ THEN BEGIN 18 // from: 2.2
  SAY #46485 /* ~"Du hast den Kasten aufgemacht und kannst noch davon erzählen! Äh... Ich meine, ich hab dir gesagt, daß du das verdammte Ding nicht aufmachen sollst. Weil du die Kiste nicht richtig abgeliefert hast, kann ich dich leider nicht bezahlen. Jetzt mach dich vom Acker." ~ */
  IF ~  Global("FedEx","Global",1)
~ THEN REPLY #46486 /* ~"Leb wohl."~ */ DO ~SetGlobal("FedEx","Global",9)
SetGlobal("ReleaseB","Global",1)
SetGlobal("Gamma","Global",1)
~ JOURNAL #39507 /* ~Ich habe Mar erzählt, daß ich den Kasten geöffnet und das Scheusal darin getötet habe. Zuerst war ich sauer, daß Mar mir nicht erzählt hat, was in dem Kasten drin war, aber auf der anderen Seite war es ja meine eigene Schuld, daß ich seine Warnungen in den Wind geschlagen habe. Sollte wohl in Zukunft meine Neugier im Zaum halten.~ */ EXIT
  IF ~  GlobalGT("FedEx","Global",1)
~ THEN REPLY #46487 /* ~"Leb wohl."~ */ DO ~SetGlobal("FedEx","Global",9)
SetGlobal("ReleaseB","Global",1)
SetGlobal("Gamma","Global",1)
~ JOURNAL #39505 /* ~Ich hab Mar gesagt, daß ich den Kasten aufgemacht habe, nachdem ich am Ende meiner Weisheit war, wem ich das Ding denn nun eigentlich überbringen soll. Er weigert sich nun, mich für meine Bemühungen zu entlohnen. Mein moralisches Empfinden ist in Aufruhr, da ich denke, daß ich wenigstens eine kleine Anerkennung verdient hätte. Ich hab doch schließlich versucht, den Kasten zu überbringen... Es wollte ihn einfach keiner annehmen. Auf der anderen Seite habe ich den Kasten trotz Mars Warnungen geöffnet. Verwirrt habe ich Mar ohne Bezahlung oder ein Wort verlassen. Und bin heilfroh, daß diese ganze Sache mit dem Kasten und dem Scheusal darin endlich vorbei ist.~ */ EXIT
END

IF ~~ THEN BEGIN 19 // from: 2.3
  SAY #46488 /* ~"Ich hab' dir gesagt, du sollst den Stock nicht mit dieser Kiste verlassen. Mich wundert's, daß das Scheusal dich nicht in Stücke zerrissen hat. Aber falls du Geld willst, hast du leider Pech gehabt! Deine Aufgabe war es, die Kiste zuzustellen, und nicht, das Scheusal zu töten."~ */
  IF ~~ THEN REPLY #46489 /* ~"Leb wohl."~ */ DO ~SetGlobal("FedEx","Global",9)
SetGlobal("ReleaseH","Global",1)
SetGlobal("Gamma","Global",1)
~ JOURNAL #39504 /* ~Ich hab Mar gesagt, daß ich das Scheusal getötet habe, das ich beim Verlassen des Stocks freigelassen habe. Obwohl es ihn sehr beeindruckt hat, daß ich dazu in der Lage gewesen bin, weigert sich Mar, mich für meine Dienste zu entlohnen. Und in diesem Punkt kann ich mich schlecht mit ihm streiten - schließlich hab ich nicht auf seine Warnungen gehört, und den Kasten nicht wie vereinbart überbracht.~ */ EXIT
END

IF WEIGHT #2 ~  Global("notalk","AR0100",1)
~ THEN BEGIN 20 // from:
  SAY #46490 /* ~"Ich hab dir alles gesagt, was du wissen mußt."~ */
  IF ~~ THEN REPLY #46491 /* ~"Leb wohl."~ */ EXIT
END
