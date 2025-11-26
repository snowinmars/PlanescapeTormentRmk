// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DLAZLO.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\de_DE\dialog.tlk
// dialogF  : (none)

BEGIN ~DLAZLO~

IF ~  NumTimesTalkedTo(0)
~ THEN BEGIN 0 // from:
  SAY #3026 /* ~Du siehst einen Jungen mit blasser, gelblicher Haut. Seine Kleidung ist schmutzig und zerrissen. Im Moment kümmert er sich um einen Ofen.~ */
  IF ~~ THEN REPLY #3027 /* ~"Sei gegrüßt."~ */ GOTO 1
  IF ~~ THEN REPLY #36385 /* ~Ignoriere ihn.~ */ DO ~SetNumTimesTalkedTo(0)
~ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #36348 /* ~Er dreht sich um und gönnt dir ein halbes Lächeln, als er seine Arbeit beiseite legt. "Sei gegrüßt... brauchst du Hilfe?"~ */
  IF ~~ THEN REPLY #36386 /* ~"Ja, ich habe einige Fragen..."~ */ GOTO 2
  IF ~~ THEN REPLY #36387 /* ~"Nein. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.0 3.1 4.1 5.1 6.3 7.2 8.2 9.2 10.1 11.2 12.1 13.1 14.1 15.1 16.1 18.1 19.0 22.0 24.0 25.2 26.1 27.2 28.1 29.1 30.1 32.1 33.0 34.0
  SAY #36349 /* ~"Ja, ja, ich würde dir gerne helfen, wenn ich kann..." Der Junge scheint dankbar, daß er einen Moment der Plackerei am Hochofen entkommt. "Was für Fragen soll ich dir denn beantworten?"~ */
  IF ~~ THEN REPLY #36388 /* ~"Wo bin ich hier?"~ */ GOTO 3
  IF ~~ THEN REPLY #36389 /* ~"Kannst du mir etwas über diesen Bezirk erzählen?"~ */ GOTO 10
  IF ~~ THEN REPLY #36391 /* ~"Was weißt du über die Stadt Sigil?"~ */ GOTO 20
  IF ~~ THEN REPLY #36392 /* ~"Wieso hat scheinbar jeder hier in der Gegend gelbe Haut?"~ */ GOTO 23
  IF ~~ THEN REPLY #36393 /* ~"Gibt es hier irgend etwas Lohnendes zu sehen?"~ */ GOTO 25
  IF ~  Global("Morte_Stolen","GLOBAL",1)
!Global("AR0508_Visited","GLOBAL",1)
~ THEN REPLY #36394 /* ~"Ich vermisse einen Schädel... Kennst du vielleicht jemanden, der so etwas brauchen könnte?"~ */ GOTO 31
  IF ~~ THEN REPLY #36395 /* ~"Ich muß jetzt los. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 2.0
  SAY #36350 /* ~"Dieser Ort?" Er sieht sich um. "Das ist der Straßenmarkt. Viele Käufer und Verkäufer kommen hierher, um ihre Absteige für den Tag aufzustellen. Ich bin schon eine ganze Weile hier, arbeite hier unter den Augen meines Vaters." Er blickt träumerisch in die Weite. "Und eines Tages werde ich seinen Stand übernehmen, jawoll."~ */
  IF ~~ THEN REPLY #36396 /* ~"Was machst du denn hier?"~ */ GOTO 4
  IF ~~ THEN REPLY #36398 /* ~"Ich habe ein paar Fragen..."~ */ GOTO 2
END

IF ~~ THEN BEGIN 4 // from: 3.0
  SAY #36351 /* ~Er zeigt stolz auf den Hochofen. "Der Hochofen wird benutzt, um..." Er zuckt mit den Schultern. "Ich weiß nicht, wofür er benutzt wird, aber mein Vater sagt, es ist wichtig, daß er immer gut bestückt ist und richtig brennt." Er wischt sich den Schweiß von der Stirn und sieht sich um.~ */
  IF ~~ THEN REPLY #36399 /* ~"Ist dein Vater einer von den Kaufleuten hier?"~ */ GOTO 5
  IF ~~ THEN REPLY #36400 /* ~"Aha. Ich habe noch ein paar Fragen..."~ */ GOTO 2
  IF ~~ THEN REPLY #36401 /* ~"Ich muß weiter, leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 4.0
  SAY #36352 /* ~Er nickt. "Sein Name ist Anze, und das da drüben ist der Stand meines Vaters." Er weist zu einem Stand rechts vom Hochofen. "Wenn er nicht hat, was du suchst, kann er dir vielleicht sagen, wo du's bekommst."~ */
  IF ~~ THEN REPLY #36402 /* ~"Was für Waren kann man kaufen?"~ */ GOTO 6
  IF ~~ THEN REPLY #61999 /* ~"Ich verstehe. Ich habe noch mehr Fragen...~ */ GOTO 2
  IF ~~ THEN REPLY #62001 /* ~"Ich muß weiter, auf Wiedersehen."~ */ EXIT
END

IF ~~ THEN BEGIN 6 // from: 5.0
  SAY #36353 /* ~Er denkt ein wenig nach. "Es gibt hier viele Dinge zu kaufen - Essen, Trinken, Magie, Waffen... willst du vielleicht Proviant kaufen?"~ */
  IF ~~ THEN REPLY #36411 /* ~"Wo kann ich magische Gegenstände kaufen?"~ */ GOTO 7
  IF ~~ THEN REPLY #36412 /* ~"Wo kann ich Waffen kaufen?"~ */ GOTO 8
  IF ~  Global("Dream","GLOBAL",3)
~ THEN REPLY #36413 /* ~"Wo kann ich ein Sargkissen kaufen?"~ */ GOTO 9
  IF ~~ THEN REPLY #36414 /* ~"Ich habe noch ein paar Fragen an dich..."~ */ GOTO 2
  IF ~~ THEN REPLY #36415 /* ~"Ich muß weiter, leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 7 // from: 6.0 8.0 9.0
  SAY #36354 /* ~"Ja, Magie kannste kriegen." Er läßt seinen Blick über den Markt schweifen und zeigt dann zu einem entfernten Stand. "Das dort hinten ist Aaleks Stand, vielleicht hat er ein bißchen was."~ */
  IF ~~ THEN REPLY #36416 /* ~"Wo kann ich Waffen kaufen?"~ */ GOTO 8
  IF ~  Global("Dream","GLOBAL",3)
~ THEN REPLY #36417 /* ~"Wo kann ich ein Sargkissen kaufen?"~ */ GOTO 9
  IF ~~ THEN REPLY #36418 /* ~"Ich habe noch ein paar Fragen an dich..."~ */ GOTO 2
  IF ~~ THEN REPLY #36419 /* ~"Ich muß weiter, leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 8 // from: 6.1 7.0 9.1
  SAY #36355 /* ~"Da kann dir mein Vater helfen. Das da drüben ist sein Stand." Er weist zu einem Stand gleich rechts vom Hochofen. "Sein Name ist Anze."~ */
  IF ~~ THEN REPLY #36420 /* ~"Wo kann ich magische Gegenstände kaufen?"~ */ GOTO 7
  IF ~  Global("Dream","GLOBAL",3)
~ THEN REPLY #36421 /* ~"Wo kann ich ein Sargkissen kaufen?"~ */ GOTO 9
  IF ~~ THEN REPLY #36422 /* ~"Ich habe noch ein paar Fragen an dich..."~ */ GOTO 2
  IF ~~ THEN REPLY #36423 /* ~"Ich muß weiter, leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 9 // from: 6.2 7.1 8.1
  SAY #36356 /* ~Er wirft dir einen merkwürdigen Blick zu und zuckt dann mit den Schultern. "Vielleicht solltest Du's dann mal bei Hamrys versuchen. Ich glaube, sein Laden ist gen Süden und Osten von hier."~ */
  IF ~~ THEN REPLY #36424 /* ~"Wo kann ich magische Gegenstände kaufen?"~ */ GOTO 7
  IF ~~ THEN REPLY #36425 /* ~"Wo kann ich Waffen kaufen?"~ */ GOTO 8
  IF ~~ THEN REPLY #36426 /* ~"Ich habe noch ein paar Fragen an dich..."~ */ GOTO 2
  IF ~~ THEN REPLY #36427 /* ~"Ich muß weiter, leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 10 // from: 2.1
  SAY #36357 /* ~Er nickt. "Oh ja, das hier ist der Untere Bezirk. Das gemeine Volk wohnt hier, wie ich und mein Vater." Seine Augen werden größer und er wirkt aufgeregt. "Weißt du, warum er der Untere Bezirk heißt?"~ */
  IF ~~ THEN REPLY #36428 /* ~"Nein, warum heißt er der Untere Bezirk?"~ */ GOTO 11
  IF ~~ THEN REPLY #36429 /* ~"Mir ist egal, warum. Ich hätte noch ein paar andere Fragen..."~ */ GOTO 2
  IF ~~ THEN REPLY #36430 /* ~"Ich muß weiter, leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 11 // from: 10.0
  SAY #36358 /* ~"Nun, die behaupten, der Bezirk hat einen Haufen von Portalen zu den Unteren Ebenen - durchlöchert wie Schweizer Käse, wirklich, und ich glaub', daher kommt der Name." Er lächelt stolz.~ */
  IF ~~ THEN REPLY #36431 /* ~"Warum sind bloß so viele Portale der Unteren Ebenen in diesem Bezirk?"~ */ GOTO 12
  IF ~~ THEN REPLY #36432 /* ~"Kommen irgendwelche Kreaturen aus diesen Portalen?"~ */ GOTO 13
  IF ~~ THEN REPLY #36433 /* ~"Ich habe da noch ein paar Fragen..."~ */ GOTO 2
  IF ~~ THEN REPLY #62003 /* ~"Ich muß weiter, auf Wiedersehen."~ */ EXIT
END

IF ~~ THEN BEGIN 12 // from: 11.0
  SAY #36359 /* ~Er zuckt die Achseln. "Ist mir genauso ein Rätsel wie dir, Schleifer. Bin nicht sicher, ob da ein Grund für die Portale ist außer halt den Verhältnissen. Könnte der Wunsch der Dame sein oder auch einfach Zufall, schätz ich." Er zuckt wieder mit den Achseln.~ */
  IF ~~ THEN REPLY #62005 /* ~"Kommen irgendwelche Kreaturen aus diesen Portalen?"~ */ GOTO 13
  IF ~~ THEN REPLY #62007 /* ~"Ich habe da noch ein paar Fragen..."~ */ GOTO 2
  IF ~~ THEN REPLY #62009 /* ~"Ich muß weiter, auf Wiedersehen."~ */ EXIT
END

IF ~~ THEN BEGIN 13 // from: 11.1 12.0
  SAY #36360 /* ~Seine Augen werden größer. "Ja, tun sie. Die halten nur kurz an auf der Durchreise..." Er schluckt nervös und scheint besorgt.~ */
  IF ~~ THEN REPLY #36435 /* ~"Du wirkst nervös, hast du das wirklich mit eigenen Augen gesehen?"~ */ GOTO 14
  IF ~~ THEN REPLY #62013 /* ~"Ich habe da noch ein paar Fragen..."~ */ GOTO 2
  IF ~~ THEN REPLY #62014 /* ~"Ich muß weiter, auf Wiedersehen."~ */ EXIT
END

IF ~~ THEN BEGIN 14 // from: 13.0
  SAY #36361 /* ~"Ja, hab's selbst gesehn." Er unterbricht sich und schluckt abermals. "Erst letzte Woche oder so hab ich zwei Abishai durch ein Portal kommen sehen. Haben viel miteinander geredet, und dann ging einer wieder dadurch zurück. Der andere, der hierblieb, ist immer noch hier..." Er runzelt die Stirn.~ */
  IF ~~ THEN REPLY #62097 /* ~"Worüber haben sie geredet?"~ */ GOTO 15
  IF ~~ THEN REPLY #36437 /* ~"Ich habe da noch ein paar Fragen..."~ */ GOTO 2
  IF ~~ THEN REPLY #62098 /* ~"Ich muß weiter, auf Wiedersehen."~ */ EXIT
END

IF ~~ THEN BEGIN 15 // from: 14.0
  SAY #36362 /* ~"Weiß nicht genau, für mich klang das nur wie Zischen und so, aber ich glaub, die haben über den Turm geredet." Er zuckt die Achseln.~ */
  IF ~~ THEN REPLY #62099 /* ~"Der Turm?"~ */ JOURNAL #36020 /* ~Der Junge, Lazlo, sagt, daß er ein Portal in der Nähe des Belagerungsturms kennt. Es befindet sich auf einer Zugbrücke oder etwas Ähnlichem, er war mit seiner Beschreibung nicht so genau. Ich frage mich, wohin das Portal wohl führt? ~ */ GOTO 16
  IF ~~ THEN REPLY #62100 /* ~"Ich habe da noch ein paar Fragen..."~ */ GOTO 2
  IF ~~ THEN REPLY #62101 /* ~"Ich muß weiter, auf Wiedersehen."~ */ EXIT
END

IF ~~ THEN BEGIN 16 // from: 15.0
  SAY #36363 /* ~"Ja, das ist einer der merkwürdigsten Anblicke im Bezirk. Keiner weiß genau, wie lange dieser alte narbige Turm schon hier rumsteht... Man kann nicht mal rein, weißte. Fester vernagelt als 'n Keuschheitsgürtel. Würd mich echt interessieren, was da drin ist..." Er denkt einen Moment nach. "Der Abishai hat auf den Turm und das Portal gezeigt. Ich wette, die haben nach dem Schlüssel gesucht."~ */
  IF ~~ THEN REPLY #62102 /* ~"Was für ein Schlüssel?"~ */ GOTO 17
  IF ~~ THEN REPLY #36440 /* ~"Ich hab' noch ein paar andere Fragen..."~ */ GOTO 2
  IF ~~ THEN REPLY #36441 /* ~"Ich muß weiter, leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 17 // from: 16.0
  SAY #36364 /* ~"Der Schlüssel für das Portal, das in den Turm führt. Jedes Portal hat einen Schlüssel, mit dem man's aufmachen kann und irgendwo hinkommt. Der Schlüssel kann eine Geste sein, ein Objekt oder sogar ein Gedanke... Viele haben alles versucht, in den Turm zu kommen. Aber du kannst dich noch so anstrengen, du schaffst es nicht."~ */
  IF ~~ THEN REPLY #62103 /* ~"Vielleicht ist das Geheimnis, wie man hineinkommt, daß man nicht hineinkommen will..."~ */ DO ~SetGlobal("Know_Tower_Key","GLOBAL",1)
~ JOURNAL #66276 /* ~Hier im Unteren Bezirk befindet sich ein versiegelter Belagerungsturm, zu dem eine Menge Leute gern Zugang hätten, wie man mir erzählt hat. Bisher hat niemand es geschafft, sich Zutritt zu ihm zu verschaffen, wie sehr es auch immer versucht wurde. Das ist vielleicht eine seltsame Idee, die ich da habe, aber vielleicht ist es des Rästels Lösung, nicht hineingelangen zu wollen...~ */ GOTO 18
END

IF ~~ THEN BEGIN 18 // from: 17.0
  SAY #36365 /* ~Er zuckt die Achseln "Weiß nicht, Schleifer. Vielleicht..."~ */
  IF ~~ THEN REPLY #62104 /* ~"Sag mir, wo genau dieses Portal ist."~ */ JOURNAL #66280 /* ~Der Junge, Lazlo, sagt, daß es ein Portal auf einem Zugbrücken-ähnlichen Gerät gibt, daß sich östlich vom Markt befindet. Er denkt, daß das Portal vielleicht in den Belagerungsturm führt. Vielleicht sollte ich das mal überprüfen.~ */ GOTO 19
  IF ~~ THEN REPLY #36444 /* ~"Ich hab' noch ein paar andere Fragen..."~ */ GOTO 2
  IF ~~ THEN REPLY #36445 /* ~"Ich muß weiter, leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 19 // from: 18.0
  SAY #36366 /* ~Er hält inne, um nachzudenken. "Da ist so'n Ding wie 'ne Zugbrücke hinter dem Turm, östlich vom Markt. Und da isses..." Sein Blick wird abwesend.~ */
  IF ~~ THEN REPLY #36446 /* ~"Ich habe ein paar Fragen..."~ */ GOTO 2
  IF ~~ THEN REPLY #36447 /* ~"Ich muß weiter, leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 20 // from: 2.2
  SAY #36367 /* ~"Das Zentrum der Ebenen, die Stadt, wo sich fast alles kreuzt. Nie langweilig, echt nicht. Die Dame der Schmerzen ist das Gesetz, und wir andren versuchen hauptsächlich, in ihrem Schatten unsern Unterhalt zu verdienen. Er lacht bellend und fängt dann an zu husten.~ */
  IF ~~ THEN REPLY #36448 /* ~"Was kannst du mir über die Dame der Schmerzen erzählen?"~ */ DO ~SetGlobal("Know_Lady","GLOBAL",1)
~ GOTO 21
  IF ~~ THEN REPLY #36449 /* ~"Ich muß weiter, leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 21 // from: 20.0
  SAY #36368 /* ~"Weiß nicht viel über sie... sie hält die Mächte von Sigil fern, hält die Scheusale draußen und redet und verhandelt mit niemandem... außer vielleicht den Dabus. Sie schreibt dich ruckzuck ins Totenbuch, falls du sie anbetest oder versuchst, Sigil zu schädigen. Ihr Gesicht und die Klingen, die es umrahmen, wären das letzte, was du sehen würdest..."~ */
  IF ~  Global("Evil_Rchasr_1","GLOBAL",0)
~ THEN REPLY #36450 /* ~"Interessant."~ */ DO ~PlaySoundNotRanged("SPTR_01")
SetGlobal("Evil_Rchasr_1","GLOBAL",1)
GiveExperience(Protagonist,500)
~ GOTO 22
  IF ~  Global("Evil_Rchasr_1","GLOBAL",1)
~ THEN REPLY #68424 /* ~"Interessant..."~ */ GOTO 22
END

IF ~~ THEN BEGIN 22 // from: 21.0 21.1
  SAY #36369 /* ~Bei der Erwähnung eines Gesichts, das von Klingen umrahmt ist, drängt sich dir eine Erinnerung auf. Einen Augenblick lang stehst du wieder in einer dunklen Gasse und atmest schwer. In der Dunkelheit kommt eine unglaublich hübsche Frau auf dich zu, deren Gesicht von Klingen eingerahmt ist. Ihre Augen sind kalt... Plötzlich schwindet das Bild wieder aus deiner Erinnerung, und du unterhältst dich weiter mit dem Jungen. ~ */
  IF ~~ THEN REPLY #36451 /* ~"Ich hab' noch ein paar andere Fragen..."~ */ GOTO 2
  IF ~~ THEN REPLY #36452 /* ~"Ich muß weiter, leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 23 // from: 2.3
  SAY #36370 /* ~"Das ist die Krankheit hier. Kommt von der schlechten Luft. Mit dem Rauch und dem ganzen Fabrikqualm ist es manchmal echt schwer, hier noch richtig zu atmen." Er zuckt die Achseln. "An manchen Tagen ist es überhaupt nicht gut, rauszugehen, wenn der Smog zu lange hier herumhängt... kann dir die Augen aus dem Kopf brennen, sagt man."~ */
  IF ~~ THEN REPLY #36453 /* ~"Kann man denn nichts dagegen tun?"~ */ GOTO 24
END

IF ~~ THEN BEGIN 24 // from: 23.0
  SAY #36371 /* ~"Weiß nicht." Manchmal weht ein Wind von der Säule her und bläst den Smog raus aus der Stadt, aber das passiert leider nicht so oft, wie wir's gerne hätten." Er zwinkert, sieht sich um und zuckt mit den Achseln. "Der Wille der Dame, schätz' ich. Macht nicht viel Sinn, aber wenn du nur lange genug hinguckst, macht sehr wenig überhaupt Sinn."~ */
  IF ~~ THEN REPLY #36454 /* ~"Ich hab' noch ein paar andere Fragen..."~ */ GOTO 2
  IF ~~ THEN REPLY #36455 /* ~"Ich muß weiter, leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 25 // from: 2.4
  SAY #36372 /* ~"Nicht viel zu sehn... doch, die Große Gießerei ist ganz eindrucksvoll, guck's dir doch mal an... Heimat der Gläubigen, weißte." Er denkt nach. "Die meisten aufregenden Sehenswürdigkeiten sind in einigen der Oberen Bezirke. Vielleicht guckste dich lieber da um... Hab' gehört, daß es da ein Bordell gibt, die Festhalle und noch ein paar andere interessante Orte. Kann's aber nicht sicher sagen, bin mein Leben lang hier gewesen."~ */
  IF ~~ THEN REPLY #36456 /* ~"Erzähl mir von der Gießerei."~ */ GOTO 26
  IF ~~ THEN REPLY #36457 /* ~"Erzähl mir von den Gläubigen."~ */ GOTO 27
  IF ~~ THEN REPLY #36458 /* ~"Ich hab' da noch ein paar Fragen..."~ */ GOTO 2
  IF ~~ THEN REPLY #36459 /* ~"Ich muß weiter, leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 26 // from: 25.0 27.0 30.0
  SAY #36373 /* ~"Mitte des Bezirks so ziemlich. Eine beeindruckende Struktur, soviel ist sicher. Kannste nicht verfehlen, geh einfach nach Norden. Du erkennst sie an den großen Toren." Er markiert sie auf deiner Karte.~ */
  IF ~~ THEN REPLY #36460 /* ~"Erzähl mir von den Gläubigen."~ */ GOTO 27
  IF ~~ THEN REPLY #36461 /* ~"Ich verstehe. Ich habe noch ein paar Fragen."~ */ GOTO 2
  IF ~~ THEN REPLY #36462 /* ~"Ich muß weiter, leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 27 // from: 25.1 26.0
  SAY #36374 /* ~"Sie haben einen ganzen Haufen von Namen: Gläubige, Göttermenschen, Gläubige der Quelle... wir nennen sie meistens einfach 'Göttermenschen'. Sie haben ihre Absteige in der Großen Gießerei, und ihnen scheint's da ziemlich gut zu gehen. Sind ein netter Haufen. Glauben, daß jeder es zu was bringen kann, sogar eine Macht werden kann, wenn er nur danach strebt. Kann bedeuten, daß du dein Leben ein paarmal von vorn beginnen mußt, aber irgendwann schaffst du's dann."~ */
  IF ~~ THEN REPLY #36463 /* ~"Erzähl mir von der Gießerei."~ */ GOTO 26
  IF ~~ THEN REPLY #36464 /* ~"Also sind sie auch ein Bund hier. Von welchem Bund bist du?"~ */ GOTO 28
  IF ~~ THEN REPLY #36465 /* ~"Interessant. Ich habe noch ein paar Fragen..."~ */ GOTO 2
  IF ~~ THEN REPLY #36466 /* ~"Ich muß weiter, leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 28 // from: 27.1
  SAY #36375 /* ~Er lächelt. "Oh, ich... und mein Vater... wir sind Unabhängige... ein Bund, der kein richtiger Bund ist... Wir sind ein Bund, der glaubt, daß Leute frei sind, das zu tun, was sie wollen. Wir sind ein ziemlich lockerer Verbund, und wir finden es nicht so prickelnd, andere Bünde zu gründen oder Bünden zu gehorchen."~ */
  IF ~~ THEN REPLY #36467 /* ~"Wozu dienen all diese Bünde?"~ */ GOTO 29
  IF ~~ THEN REPLY #36468 /* ~"Ich habe ein paar Fragen..."~ */ GOTO 2
  IF ~~ THEN REPLY #36469 /* ~"Ich muß weiter, leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 29 // from: 28.0
  SAY #36376 /* ~Er wirft dir einen Blick zu. "Die Bünde sind es, die Sigil hauptsächlich regieren und für die täglichen Dinge des Lebens zuständig sind. Gibt 'ne ganze Menge: da sind erstmal die Toten - oder die Staubmenschen, die sich um die ganzen Leichen in den Straßen kümmern, und dann gibt's die Herrschner, die die Gesetze machen, und die Sinnsaten... eben eine ganze Reihe von Bünden. Hier im Unteren Bezirk haben wir es hauptsächlich mit den Gläubigen, den Göttermenschen, zu tun." Er nickt ins Leere. "Sie haben ihre Absteige in der Großen Gießerei, sind eigentlich ein ganz netter Haufen.".~ */
  IF ~~ THEN REPLY #36470 /* ~"Was weißt du über diese anderen Bünde?"~ */ GOTO 30
  IF ~~ THEN REPLY #36471 /* ~"Ich habe ein paar Fragen..."~ */ GOTO 2
  IF ~~ THEN REPLY #36472 /* ~"Ich muß weiter, leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 30 // from: 29.0
  SAY #36377 /* ~Er zuckt die Achseln. "Nichts, wenn ich ehrlich sein soll. Hat mich nie interessiert, so als Unabhängiger und so. In den Häusern der Bünde wirst du genug Leute finden, die dir was ausplaudern. Frag die doch."~ */
  IF ~~ THEN REPLY #36473 /* ~"Was weißt du über diese Gießerei?"~ */ GOTO 26
  IF ~~ THEN REPLY #36474 /* ~"Ich verstehe. Ich habe noch ein paar Fragen an dich..."~ */ GOTO 2
  IF ~~ THEN REPLY #36475 /* ~"Ich muß weiter, leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 31 // from: 2.5
  SAY #36378 /* ~Er wird ganz aufgeregt. "Du vermißt wirklich einen Totenschädel?! Ich wette, ich weiß, was mit dem passiert ist... im Bezirk gibt's einen Typen, einen Magier oder Priester sagt man, der Köpfe sammelt und wie Bücher in seine Regale stellt. Sie sind tot, aber mit seiner Magie kann er sie so hinkriegen, daß sie ihm antworten, obwohl sie im Totenbuch stehen."~ */
  IF ~~ THEN REPLY #36476 /* ~"Wo finde ich diese Person?"~ */ GOTO 32
END

IF ~~ THEN BEGIN 32 // from: 31.0
  SAY #36379 /* ~Ihm läuft ein Schauer über den Rücken. "Bin wirklich nicht sicher. Ich hab' gehört, er hätte seine Absteige in einem der kaputten Gebäude hier in der Gegend, aber ich war noch nie dort." Er schnippst mit den Fingern. "Vielleicht weiß es jemand anders... kannst ja mal Sebastion fragen."~ */
  IF ~~ THEN REPLY #36477 /* ~"Wo finde ich Sebastion?"~ */ GOTO 33
  IF ~~ THEN REPLY #36478 /* ~"Ich verstehe. Ich habe noch ein paar Fragen..."~ */ GOTO 2
  IF ~~ THEN REPLY #36479 /* ~"Ich muß weiter, leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 33 // from: 32.0
  SAY #36380 /* ~Er zeigt ungefähr Richtung Westen. "Geh zurück zum Platz und dann ein wenig nach Norden und Westen. Sebastion hat seine Absteige bei einem Ding, das aussieht wie eine Zugbrücke."~ */
  IF ~~ THEN REPLY #36480 /* ~"Danke. Ich habe noch mehr Fragen...."~ */ GOTO 2
  IF ~~ THEN REPLY #36481 /* ~"Ich muß weiter, leb wohl."~ */ EXIT
END

IF ~  NumTimesTalkedToGT(0)
~ THEN BEGIN 34 // from:
  SAY #36381 /* ~"Schön, dich wiederzutreffen. Haste wieder ein paar Fragen, mit denen ich dir vielleicht helfen kann?"~ */
  IF ~~ THEN REPLY #36482 /* ~"Ja..."~ */ GOTO 2
  IF ~~ THEN REPLY #36483 /* ~"Nein, leb wohl."~ */ EXIT
END
