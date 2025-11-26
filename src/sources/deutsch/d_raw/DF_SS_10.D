// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DF_SS_10.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\de_DE\dialog.tlk
// dialogF  : (none)

BEGIN ~DF_SS_10~

IF ~  !Global("S_Stone","AR0603",17)
!Global("S_Stone","AR0603",20)
~ THEN BEGIN 0 // from:
  SAY #34221 /* ~Dies ist ein ungewöhnlicher bläulich-lilafarbener Stein. Er ist fest an dem Sockel befestigt, auf dem er liegt.~ */
  IF ~~ THEN REPLY #47562 /* ~Geh weg.~ */ EXIT
END

IF ~  Global("S_Stone","AR0603",17)
~ THEN BEGIN 1 // from:
  SAY #47563 /* ~Dies ist der bläulich-lilafarbene Stein, zu dem dir der Kurator den Weg gewiesen hat. In ihm ist die Erfahrung 'Allmählich aufkommendes Grauen' eingeschlossen.~ */
  IF ~~ THEN REPLY #47564 /* ~Beginn die Erfahrung.~ */ GOTO 2
  IF ~~ THEN REPLY #47565 /* ~Geh weg.~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.0
  SAY #47566 /* ~"Wie gut das wohl schmecken dürfte?" denkst du, als du die burgunderrote Flüssigkeit aufmerksam betrachtest. Vom anderen Ende des Tisches lächelt dich der verschrobene alte Mann listig an. Bitte, mein Herr, probiert nur", flüstert er und seine gedämpfte Stimme hat den Klang von trockenem Laub, das über Kopfsteinpflaster geweht wird. "Es wird Eure Erwartungen bei weitem übertreffen. Da bin ich sicher." ~ */
  IF ~~ THEN REPLY #47567 /* ~Setz die Erfahrung fort.~ */ GOTO 3
  IF ~~ THEN REPLY #47568 /* ~Brich die Erfahrung ab, und geh weg.~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 2.0
  SAY #47569 /* ~Du nickst ihm zu, hebst den Kristallkelch hoch und beobachtest das Spiel des Lichtes im purpurroten Alkohol. Du hast einen weiten Weg für diesen Trunk zurückgelegt... hast lange nach diesem alten Mann gesucht... und du wärst verrückt, wenn du dich jetzt hetzen ließest. Dieser Augenblick muß genossen werden.~ */
  IF ~~ THEN REPLY #47570 /* ~Setz die Erfahrung fort.~ */ GOTO 4
  IF ~~ THEN REPLY #47571 /* ~Brich die Erfahrung ab, und geh weg.~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 3.0
  SAY #47572 /* ~Du führst den Kelch an deine Lippen und atmest den Duft der Flüssigkeit ein. Das Bukett ist leicht, süß, berauschend... beinahe schwindelerregend. Du hast schon zahlreiche Trünke gekostet... und hast auf deinen Reisen durch die Ebenen schon etliche Bücher über sie, ihren Geschmack und ihr Bukett sowie über die Art ihrer Herstellung geschrieben. Doch dieses Zeug... ist einfach legendär. Du hast bisher von noch keinem Menschen gehört, der das Zeug probiert hat. Die Geschichten sind lächerlich - nichts kann so gut schmecken - doch wenn sie nur ein Fünkchen Wahrheit enthalten, dann wäre dies in der Tat ein ganz ausgezeichneter Tropfen.~ */
  IF ~~ THEN REPLY #47573 /* ~Setz die Erfahrung fort.~ */ GOTO 5
  IF ~~ THEN REPLY #47574 /* ~Brich die Erfahrung ab, und geh weg.~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 4.0
  SAY #47575 /* ~Endlich nippst du vorsichtig am Kelch...~ */
  IF ~~ THEN REPLY #47576 /* ~Setz die Erfahrung fort.~ */ GOTO 6
  IF ~~ THEN REPLY #47577 /* ~Brich die Erfahrung ab, und geh weg.~ */ EXIT
END

IF ~~ THEN BEGIN 6 // from: 5.0
  SAY #47578 /* ~Unglaublich! Unbeschreiblich! Als der Geschmack deinen Gaumen streift, kannst du dich kaum dagegen wehren, daß du vor Wonne zitterst. Nichts... *gar nichts* von dem, was du in all den Jahren gekostet hast, hat auch nur annähernd so gut geschmeckt. Du schaust den alten Mann an und bist erschrocken, daß dein Glas schon leer ist - du hast es in einem Zug ausgetrunken. Du wischt dir mit dem Handrücken über die Augen und weißt nicht mehr genau, wann du zu weinen angefangen hast.~ */
  IF ~~ THEN REPLY #47579 /* ~Setz die Erfahrung fort.~ */ GOTO 7
  IF ~~ THEN REPLY #47580 /* ~Brich die Erfahrung ab, und geh weg.~ */ EXIT
END

IF ~~ THEN BEGIN 7 // from: 6.0
  SAY #47581 /* ~"Freudentränen, was?" Der alte Mann lacht leise. "Eine echte Gaumenfreude, nicht wahr? Möchtet Ihr vielleicht noch ein wenig?" Er lächelt dich erneut an."Ja... ja, wenn ich dürfte..."~ */
  IF ~~ THEN REPLY #47582 /* ~Setz die Erfahrung fort.~ */ GOTO 8
  IF ~~ THEN REPLY #47583 /* ~Brich die Erfahrung ab, und geh weg.~ */ EXIT
END

IF ~~ THEN BEGIN 8 // from: 7.0
  SAY #47584 /* ~"Aber sicher!" Er antwortet und füllt dabei aufs Neue deinen Kelch. So sehr du dich auch bemühst, du kannst nicht widerstehen, den Trank in einem Zug hinunterzuschlucken. Du steckst deinen Finger in den Kelch und versuchst, auch den letzten versteckten Tropfen des Tranks zu finden. Er füllt den Kelch noch einige Male, und jedesmal stürzt du den Trank so hinunter, wie ein hungriger Mann ein Festmahl verschlingen würde. Du bist nicht in der Lage, dich zu beherrschen und dir einen weiteren köstlichen Schluck zu verwehren.~ */
  IF ~~ THEN REPLY #47585 /* ~Setz die Erfahrung fort.~ */ GOTO 9
  IF ~~ THEN REPLY #47586 /* ~Brich die Erfahrung ab, und geh weg.~ */ EXIT
END

IF ~~ THEN BEGIN 9 // from: 8.0
  SAY #47587 /* ~Er kichert erneut leise. "Für einen solchen Trunk... würde ein Mensch alles tun, oder?" Du nickst, ohne zu zögern. "Ja, ein Mensch würde..." Als du ihn ansiehst, gewinnt sein listiges Lächeln eine ganz neue Bedeutung. Ein Gefühl des Grauens beschleicht dich, selbst als du beginnst, flehend um mehr von dem blutroten Getränk zu bitten...~ */
  IF ~~ THEN REPLY #47588 /* ~Setz die Erfahrung fort.~ */ GOTO 10
  IF ~~ THEN REPLY #47589 /* ~Brich die Erfahrung ab, und geh weg.~ */ EXIT
END

IF ~~ THEN BEGIN 10 // from: 9.0
  SAY #47590 /* ~"Ja, ja..." Der alte Mann grinst. Seine gelben Augen leuchten. "Ein Mensch *würde* alles tun im *Banne* eines solchen Trunks... selbst die schrecklichsten, die ruchlosesten aller Taten... Du wirst schon sehen, mein neuer Diener."~ */
  IF ~  Global("Sensation17","AR0603",0)
~ THEN REPLY #47591 /* ~Lös dich von der Erfahrung.~ */ DO ~SetGlobal("Sensation17","AR0603",1)
GiveExperience(Protagonist,1500)
~ GOTO 18
  IF ~  Global("Sensation17","AR0603",1)
~ THEN REPLY #47592 /* ~Lös dich von der Erfahrung, und geh weg.~ */ EXIT
END

IF ~  Global("S_Stone","AR0603",20)
~ THEN BEGIN 11 // from:
  SAY #47593 /* ~Dies ist der bläulich-lilafarbene Stein, zu dem dir der Kurator den Weg gewiesen hat. In ihm liegt die Erfahrung 'Lykanthropie' eingeschlossen.~ */
  IF ~~ THEN REPLY #47594 /* ~Beginn die Erfahrung.~ */ GOTO 12
  IF ~~ THEN REPLY #47595 /* ~Geh weg.~ */ EXIT
END

IF ~~ THEN BEGIN 12 // from: 11.0
  SAY #47596 /* ~Als du dir plötzlich bewußt bist, daß die Stunde fast geschlagen hat, springst du von deinem Bett auf und läufst wie von der Tarantel gestochen aus deinem Haus in die umliegenden Wälder. Durch die Dunkelheit stolpernd erreichst du eine kleine vom Mond beschienene Lichtung... Es ist die, die du letzte Woche entdeckt hast und die du für diese Nacht ausgewählt hast. Du streifst hastig deine Kleider ab, setzt dich ins hohe Gras und wartest. ~ */
  IF ~~ THEN REPLY #47597 /* ~Setz die Erfahrung fort.~ */ GOTO 13
  IF ~~ THEN REPLY #47598 /* ~Brich die Erfahrung ab, und geh weg.~ */ EXIT
END

IF ~~ THEN BEGIN 13 // from: 12.0
  SAY #47599 /* ~Du schließt die Augen, lauschst dem fortwährenden Zirpen der Grillen, dem Quaken der Frösche im nahegelegenen Tümpel und dem Rascheln des vom Wind gestreichelten Grases. Was würde jemand empfinden, der dies mit deinen Augen sieht und diesen Augenblick und was danach kommt *erlebt*? Bald würdest du in die Stadt reisen und einen Kleriker aufsuchen, um dich von dem Fluch zu befreien... doch bis dahin würdest du das Beste aus deiner Situation machen. Du reibst dir erwartungsvoll die Hände, grinst wie ein verrückter bärtiger Riese mit feuerroten Haaren und sitzt nackt und allein mitten in der Nacht auf einer Waldlichtung.~ */
  IF ~~ THEN REPLY #47600 /* ~Setz die Erfahrung fort.~ */ GOTO 14
  IF ~~ THEN REPLY #47601 /* ~Brich die Erfahrung ab, und geh weg.~ */ EXIT
END

IF ~~ THEN BEGIN 14 // from: 13.0
  SAY #47602 /* ~Ein prickelnder Schauer läuft dir über die Haut, und deine Sinne schärfen sich aufs Äußerste. Du atmest durch die Nase und nimmst jeden Geruch um dich herum wahr: die feuchte Erde, den Schweiß in deinen abgelegten Kleidern sowie das Opossum, das sich ängstlich an den Baum hinter dir drückt...~ */
  IF ~~ THEN REPLY #47603 /* ~Setz die Erfahrung fort.~ */ GOTO 15
  IF ~~ THEN REPLY #47604 /* ~Brich die Erfahrung ab, und geh weg.~ */ EXIT
END

IF ~~ THEN BEGIN 15 // from: 14.0
  SAY #47605 /* ~Du öffnest die Augen und betrachtest deine Unterarme. Im schwachen Mondlicht ist das geringste Zittern auf ihrer Haut zu erkennen... Doch kurze Zeit später beginnt das Fleisch, sich unheimlich zu kräuseln und Büschel dichten braunen Fells sprießen aus ihm hervor. Mit einem grausigen knackenden Geräusch - wie dem von knirschenden Gelenken und Knochen - beginnen dein Rücken und deine Schultern sich nach oben zu wölben und zu verbreitern... Das ist zwar unangenehm, aber nicht wirklich schmerzhaft. Deine Muskelmasse, deine gesamte Körpermasse, verdoppelt, ja verdreifacht sich und wächst weiter.~ */
  IF ~~ THEN REPLY #47606 /* ~Setz die Erfahrung fort.~ */ GOTO 16
  IF ~~ THEN REPLY #47607 /* ~Brich die Erfahrung ab, und geh weg.~ */ EXIT
END

IF ~~ THEN BEGIN 16 // from: 15.0
  SAY #47608 /* ~Immer noch fasziniert von deiner Verwandlung beobachtest du, wie deine Finger sich in Nichts auflösen und wie deine Hände zu großen fleischigen Pranken werden, aus denen Fell und starke schwarze Klauen hervorbrechen. Die Nacht erscheint dir heller, da sich deine Augen verwandelt haben und besser an die Dunkelheit gewöhnt sind... Eine breite Schnauze wird sichtbar, und kichernd berührst du vorsichtig deine feuchte, schnüffelnde Nase. Wenn der Fluch das nächste Mal wirkt, so denkst du dir, mußt du unbedingt in einen Spiegel oder Teich schauen... um zu verfolgen, wie dein Gesicht seine vertraute Form ändert und sich in das eines Bären verwandelt.~ */
  IF ~~ THEN REPLY #47609 /* ~Setz die Erfahrung fort.~ */ GOTO 17
  IF ~~ THEN REPLY #47610 /* ~Brich die Erfahrung ab, und geh weg.~ */ EXIT
END

IF ~~ THEN BEGIN 17 // from: 16.0
  SAY #47611 /* ~Bald schon fällt es dir schwer, dich auf mehr als deine Grundtriebe zu konzentrieren... Etwas zu fressen könnte jetzt nicht schaden. Ja, etwas zu fressen - vielleicht hast du Glück und erwischst einen schönen fetten Wels im Tümpel. Mit einem *Schnaufen* erhebst du dich von deinen massigen Hinterbeinen und tappst auf allen vieren zwischen den Bäumen hindurch zum Wasserrand...~ */
  IF ~  Global("Sensation20","AR0603",0)
~ THEN REPLY #47612 /* ~Lös dich von der Erfahrung.~ */ DO ~SetGlobal("Sensation20","AR0603",1)
GiveExperience(Protagonist,1500)
~ GOTO 18
  IF ~  Global("Sensation20","AR0603",1)
~ THEN REPLY #47613 /* ~Lös dich von der Erfahrung, und geh weg.~ */ EXIT
END

IF ~~ THEN BEGIN 18 // from: 10.0 17.0
  SAY #47614 /* ~Die Erfahrung scheint eine längst vergessene ähnliche Erinnerung in dir wachgerüttelt zu haben. Du hast das Gefühl, daß du irgendwie vom Gebrauch des Sinnessteins profitiert hast.~ */
  IF ~~ THEN REPLY #47615 /* ~Geh weg.~ */ EXIT
END
