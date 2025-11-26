// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : P_JRNL.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\de_DE\dialog.tlk
// dialogF  : (none)

BEGIN ~P_JRNL~

IF ~  Global("P_Journal","GLOBAL",0)
~ THEN BEGIN 0 // from:
  SAY #45746 /* ~Obwohl du es dir nicht erklären kannst, kommt dir dieser schwere Dodekaeder, der ungefähr die Größe deiner beiden zusammengeballten Fäuste hat, bekannt vor. Seine Oberfläche ist kalt und glatt, aber du könntest nicht sagen, ob sie aus Metall oder Stein ist. Eine undefinierbare 'Spannung' läuft über das Objekt, als würde es jeden Moment in die Luft gehen.~ */
  IF ~~ THEN REPLY #45747 /* ~Schau dir den Dodekaeder genau an.~ */ GOTO 1
  IF ~~ THEN REPLY #46207 /* ~Leg ihn beiseite.~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #46208 /* ~Bei näherer Betrachtung merkst du, daß die Seiten des Dodekaeders Platten sind, die sich im Uhrzeigersinn oder in entgegengesetzter Richtung verdrehen lassen... Es handelt sich um einen Rätselkasten oder um ein Kombinationsschloß. Da jede der fünfeckigen Platten fünf mögliche Positionen hat, hat der Dodekaeder nicht weniger als zweihundertvierundvierzig Millionen einhundertvierzigtausendsechshundertfünfundzwanzig verschiedene 'Einstellungen'. Um alle Kombinationen durchzuprobieren, bräuchtest du jede Sekunde deiner nächsten mehr als siebenundsiebzig Jahre - aber genauso gut *könntest* du Glück haben und die Lösung in wenigen Minuten finden...~ */
  IF ~~ THEN REPLY #46209 /* ~Spiel eine Weile mit ihm herum.~ */ DO ~PlaySoundNotRanged("SPTR_01")
~ GOTO 2
  IF ~~ THEN REPLY #46210 /* ~Leg ihn einfach beiseite.~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.0
  SAY #46211 /* ~Als du beginnst, die kalten, grauen Seiten des Dodekaeders methodisch zu drehen, spürst du plötzlich ein merkwürdiges Kribbeln in deiner Schädelbasis. Deine Hände scheinen den Dodekaeder und seine Seiten ganz automatisch und mit mechanischer Präzision zu drehen. Es ist nicht das erste Mal... Du kanntest die Kombination einst... Außerdem fällt dir ein, daß der Gegenstand eine bestimmte *Gefahr* barg, doch weißt du nicht mehr, ob hier einfache Fallen oder gar übernatürliche Kräfte im Spiel sind.~ */
  IF ~  CheckStatGT(Protagonist,8,INT)
~ THEN REPLY #46212 /* ~Bearbeite den Dodekaeder weiter.~ */ DO ~SetGlobal("P_Journal","GLOBAL",1)
~ GOTO 3
  IF ~  CheckStatLT(Protagonist,9,INT)
HPGT(Protagonist,25)
~ THEN REPLY #46213 /* ~Bearbeite den Dodekaeder weiter.~ */ DO ~Damage(Protagonist,LOWER,25)
SetGlobal("P_Journal","GLOBAL",1)
~ GOTO 6
  IF ~  CheckStatLT(Protagonist,9,INT)
HPLT(Protagonist,26)
~ THEN REPLY #46214 /* ~Bearbeite den Dodekaeder weiter.~ */ DO ~Damage(Protagonist,LOWER,25)
SetGlobal("P_Journal","GLOBAL",1)
~ GOTO 7
END

IF ~~ THEN BEGIN 3 // from: 2.0
  SAY #46215 /* ~Binnen Sekunden hast du vielleicht die ersten vier Seiten in die richtige Position gebracht. Als du die fünfte Seite drehen willst, fällt dir plötzlich wieder die ausgefuchste Klingenfalle ein, bei der eine Klinge aufspringt und dem unvorsichtigen Bastler die Pulsadern aufschneidet und seine Finger abtrennt. Du umgehst die Falle durch die korrekte Anzahl von Drehungen. Du bist sicher, daß du dem Geheimnis des Dodekaeders schon nähergekommen bist.~ */
  IF ~  CheckStatGT(Protagonist,12,INT)
~ THEN REPLY #46216 /* ~Bearbeite den Dodekaeder weiter.~ */ DO ~SetGlobal("P_Journal","GLOBAL",2)
~ GOTO 4
  IF ~  CheckStatLT(Protagonist,13,INT)
HPGT(Protagonist,25)
~ THEN REPLY #46217 /* ~Bearbeite den Dodekaeder weiter.~ */ DO ~Damage(Protagonist,LOWER,25)
SetGlobal("P_Journal","GLOBAL",2)
~ GOTO 8
  IF ~  CheckStatLT(Protagonist,13,INT)
HPLT(Protagonist,26)
~ THEN REPLY #46218 /* ~Bearbeite den Dodekaeder weiter.~ */ DO ~Damage(Protagonist,LOWER,25)
SetGlobal("P_Journal","GLOBAL",2)
~ GOTO 9
  IF ~~ THEN REPLY #46219 /* ~Leg den Dodekaeder beiseite.~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 3.0 13.0
  SAY #46220 /* ~Nachdem du die Klingenfalle des Dodekaeders umgangen hast, drehst du nach und nach die nächsten Seiten in die richtige Position. Als du die neunte Seite drehen willst, erinnerst du dich plötzlich an eine zweite Falle: giftige Gase, die eine Wolke ätzender Dämpfe bilden und alle, die zu neugierig sind, in ihren tödlichen Dunst einhüllen. Du umgehst die Falle durch die korrekte Anzahl von Drehungen. Du bist sicher, daß du den Dodekaeder fast entschlüsselt hast.~ */
  IF ~  CheckStatGT(Protagonist,15,INT)
~ THEN REPLY #46221 /* ~Bearbeite den Dodekaeder weiter.~ */ DO ~SetGlobal("P_Journal","GLOBAL",3)
GiveExperience(Protagonist,5000)
~ GOTO 5
  IF ~  CheckStatLT(Protagonist,16,INT)
HPGT(Protagonist,25)
~ THEN REPLY #46222 /* ~Bearbeite den Dodekaeder weiter.~ */ DO ~Damage(Protagonist,LOWER,25)
SetGlobal("P_Journal","GLOBAL",3)
GiveExperience(Protagonist,5000)
~ GOTO 10
  IF ~  CheckStatLT(Protagonist,16,INT)
HPLT(Protagonist,26)
~ THEN REPLY #46223 /* ~Bearbeite den Dodekaeder weiter.~ */ DO ~Damage(Protagonist,LOWER,25)
SetGlobal("P_Journal","GLOBAL",3)
GiveExperience(Protagonist,5000)
~ GOTO 11
  IF ~~ THEN REPLY #46224 /* ~Leg den Dodekaeder beiseite.~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 4.0 14.0
  SAY #46225 /* ~Du umgehst die Giftgasfalle des Dodekaeders und beginnst, die letzte Seite in die richtige Position zu drehen. Da erinnerst du dich plötzlich an die verhexten Runen, die in dem Dodekaeder versteckt sind und magische Blitze auf den ahnungslosen Knobler richten können. Nachdem du die Falle durch die korrekte Anzahl von Drehungen entschärft hast, *klickt* der Dodekaeder und beginnt sich in deinen Händen zu öffnen...~ */
  IF ~~ THEN GOTO 12
END

IF ~~ THEN BEGIN 6 // from: 2.1
  SAY #46226 /* ~Binnen weniger Augenblicke hast die wahrscheinlich ersten vier Seiten in die richtige Position gebracht. Als du die fünfte Seite drehen willst, schießen rasiermesserscharfe Klingen aus den Spalten zwischen den drehbaren Seiten und dem Dodekaeder selbst heraus. Sie dringen ins Fleisch deiner Handgelenke ein und trennen dir beinahe ein paar Finger ab. Du beißt vor Schmerz die Zähne zusammen. Als du den Dodekaeder wieder vom Boden aufhebst, erinnerst du dich plötzlich daran, wie diese Falle zu umgehen ist.~ */
  IF ~  HPGT(Protagonist,25)
~ THEN REPLY #46227 /* ~Bearbeite den Dodekaeder weiter.~ */ DO ~Damage(Protagonist,LOWER,25)
SetGlobal("P_Journal","GLOBAL",2)
~ GOTO 8
  IF ~  HPLT(Protagonist,26)
~ THEN REPLY #46228 /* ~Bearbeite den Dodekaeder weiter.~ */ DO ~Damage(Protagonist,LOWER,25)
SetGlobal("P_Journal","GLOBAL",2)
~ GOTO 9
  IF ~~ THEN REPLY #46229 /* ~Leg den Dodekaeder beiseite.~ */ EXIT
END

IF ~~ THEN BEGIN 7 // from: 2.2
  SAY #46230 /* ~Binnen weniger Augenblicke hast du die wahrscheinlich ersten vier Seiten in die richtige Position gebracht. Als du die fünfte Seite drehen willst, schießen rasiermesserscharfe Klingen aus den Spalten zwischen den rotierenden Seiten und dem Dodekaeder selbst heraus. Sie dringen ins Fleisch deiner Handgelenke ein und trennen dir mehrere Finger ab. Du läßt den blutüberströmten Dodekaeder fallen und sackst zu Boden. Der Lebenssaft rinnt dir durch deine aufgeschlitzten Pulsadern. Als dir schon schwarz vor Augen wird, fällt dir wieder ein, wie diese Falle zu umgehen ist.~ */
  IF ~~ THEN REPLY #46231 /* ~Dunkelheit umgibt dich...~ */ DO ~Kill(Protagonist)
~ EXIT
END

IF ~~ THEN BEGIN 8 // from: 3.1 6.0 13.1
  SAY #46232 /* ~Nachdem du die Klingenfalle des Dodekaeders umgangen hast, drehst du nach und nach die nächsten Seiten in die richtige Position. Als du die neunte Seite drehen willst, schießen giftige Gase hervor und blasen dir eine Wolke ätzender Dämpfe ins Gesicht. Du bist schon halb blind und benommen und erbrichst unter größten Schmerzen, als dir wieder einfällt, wie diese Falle zu umgehen ist - leider etwas zu spät.~ */
  IF ~  HPGT(Protagonist,25)
~ THEN REPLY #46233 /* ~Bearbeite den Dodekaeder weiter.~ */ DO ~Damage(Protagonist,LOWER,25)
SetGlobal("P_Journal","GLOBAL",3)
~ GOTO 10
  IF ~  HPLT(Protagonist,26)
~ THEN REPLY #46234 /* ~Bearbeite den Dodekaeder weiter.~ */ DO ~Damage(Protagonist,LOWER,25)
SetGlobal("P_Journal","GLOBAL",3)
~ GOTO 11
  IF ~~ THEN REPLY #46235 /* ~Leg den Dodekaeder beiseite.~ */ EXIT
END

IF ~~ THEN BEGIN 9 // from: 3.2 6.1 13.2
  SAY #46236 /* ~Nachdem du die Klingenfalle des Dodekaeders umgangen hast, drehst du nach und nach die nächsten Seiten in die richtige Position. Als du die neunte Seite drehen willst, schießen giftige Gase hervor und blasen dir eine Wolke ätzender Dämpfe ins Gesicht. Du fängst an zu taumeln - halb blind und benommen - und erbrichst unter großen Schmerzen. Als dir wieder einfällt, wie diese Falle zu umgehen ist, hauchst du bereits schmerzverzerrt den letzten Lebensatem aus und sackst zusammen. Dabei preßt du den Dodekaeder fest an deine narbige Brust.~ */
  IF ~~ THEN REPLY #46321 /* ~Dunkelheit umgibt dich...~ */ DO ~Kill(Protagonist)
~ EXIT
END

IF ~~ THEN BEGIN 10 // from: 4.1 8.0 14.1
  SAY #46237 /* ~Du umgehst die Giftgasfalle des Dodekaeders und beginnst, die letzte Seite in die richtige Position zu bringen. Als die zwölfte Seite gerade einrastet, verursachen die verhexten Runen, die in dem Dodekaeder verborgen sind, einen winzigen Sturm mit magischen Blitzen, die in knisternden blauen Lichtbögen über deine Arme laufen und rauchende Spuren auf deinem versengten Fleisch hinterlassen. Als deine Muskeln sich entkrampfen und du dich wieder hochrappelst, fällt dir ein, wie diese Falle zu umgehen ist. Du drehst noch einmal an der zwölften Seite, bis der Dodekaeder *klickt* und sich in deinen Händen öffnet...~ */
  IF ~~ THEN REPLY #16191 /* ~Sprich weiter...~ */ GOTO 12
END

IF ~~ THEN BEGIN 11 // from: 4.2 8.1 14.2
  SAY #46238 /* ~Du umgehst die Giftgasfalle des Dodekaeders und beginnst, die letzte Seite in die richtige Position zu bringen. Als die zwölfte Seite gerade einrastet, verursachen die verhexten Runen, die in dem Dodekaeder verborgen sind, einen winzigen Sturm mit magischen Blitzen, die in knisternden blauen Lichtbögen über deine Arme laufen und rauchende Spuren auf deinem versengten Fleisch hinterlassen Als zu heftig zuckend zusammensackst, fällt dir wieder ein, wie diese Falle zu umgehen ist. Doch es ist zu spät: Du stirbst an schwerem Schock und Nervenschaden...~ */
  IF ~~ THEN REPLY #46615 /* ~"Wie konnte... so ein... *zack*"~ */ DO ~Kill(Protagonist)
~ EXIT
END

IF ~~ THEN BEGIN 12 // from: 5.0 10.0 15.0
  SAY #46239 /* ~Der Dodekaeder teilt sich einmal, zweimal, und entfaltet sich schließlich auf unmögliche Weise zu einer exakt rechteckigen Tafel vom Format eines großen Buches. Auf der Oberfläche sind eine Reihe bizarrer Symbole eingraviert. Es sieht aus wie ein Code oder eine Sprache, von der du den Eindruck hast, daß du sie eigentlich kennen müßtest... was aber nicht der Fall ist. Die weitere Untersuchung der Tafel zeigt, daß durch Drehen der fünfeckigen Facetten, die sich jetzt auf der Unterseite der Tafel befinden, auf der Oberfläche verschiedene "Seiten" gezeigt werden können. Dir wird schließlich klar, daß der Dodekaeder eine Art Buch oder Journal ist.~ */
  IF ~~ THEN REPLY #46240 /* ~"Hmm... Bis ich lerne, diese Sprache zu lesen, kann ich ihn auch einfach weglegen."~ */ JOURNAL #56754 /* ~Ich konnte das verklemmte Gebilde mit zwölf Seiten öffnen, das ich gefunden habe, und es scheint eine Art Buch oder Journal zu sein. Ich kann aber die seltsame Sprache, in der es geschrieben ist, nicht entziffern... Vielleicht gibt es ja in der Festhalle einen Gelehrten oder einen Linguisten, der mir helfen kann.~ */ EXIT
END

IF ~  Global("P_Journal","GLOBAL",1)
~ THEN BEGIN 13 // from:
  SAY #46241 /* ~Du hältst den kalten, grauen Dodekaeder hoch, um ihn näher zu inspizieren. Du denkst an die Klingenfalle, die dem unvorsichtigen Benutzer gefährlich werden kann.~ */
  IF ~  CheckStatGT(Protagonist,12,INT)
~ THEN REPLY #46242 /* ~Bearbeite den Dodekaeder noch etwas weiter.~ */ DO ~SetGlobal("P_Journal","GLOBAL",2)
~ GOTO 4
  IF ~  CheckStatLT(Protagonist,13,INT)
HPGT(Protagonist,25)
~ THEN REPLY #46243 /* ~Bearbeite den Dodekaeder noch etwas weiter.~ */ DO ~Damage(Protagonist,LOWER,25)
SetGlobal("P_Journal","GLOBAL",2)
~ GOTO 8
  IF ~  CheckStatLT(Protagonist,13,INT)
HPLT(Protagonist,26)
~ THEN REPLY #46244 /* ~Bearbeite den Dodekaeder noch etwas weiter.~ */ DO ~Damage(Protagonist,LOWER,25)
SetGlobal("P_Journal","GLOBAL",2)
~ GOTO 9
  IF ~~ THEN REPLY #46245 /* ~Leg den Dodekaeder beiseite.~ */ EXIT
END

IF ~  Global("P_Journal","GLOBAL",2)
~ THEN BEGIN 14 // from:
  SAY #46246 /* ~Du hältst den kalten, grauen Dodekaeder hoch, um ihn näher zu inspizieren. Du denkst an die Klingenfalle und die Giftgasfalle, die dem unvorsichtigen Benutzer gefährlich werden können.~ */
  IF ~  CheckStatGT(Protagonist,15,INT)
~ THEN REPLY #46247 /* ~Bearbeite den Dodekaeder noch etwas weiter.~ */ DO ~SetGlobal("P_Journal","GLOBAL",3)
GiveExperience(Protagonist,5000)
~ GOTO 5
  IF ~  CheckStatLT(Protagonist,16,INT)
HPGT(Protagonist,25)
~ THEN REPLY #46248 /* ~Bearbeite den Dodekaeder noch etwas weiter.~ */ DO ~Damage(Protagonist,LOWER,25)
SetGlobal("P_Journal","GLOBAL",3)
GiveExperience(Protagonist,5000)
~ GOTO 10
  IF ~  CheckStatLT(Protagonist,16,INT)
HPLT(Protagonist,26)
~ THEN REPLY #46249 /* ~Bearbeite den Dodekaeder noch etwas weiter.~ */ DO ~Damage(Protagonist,LOWER,25)
SetGlobal("P_Journal","GLOBAL",3)
GiveExperience(Protagonist,5000)
~ GOTO 11
  IF ~~ THEN REPLY #46250 /* ~Leg den Dodekaeder beiseite.~ */ EXIT
END

IF ~  Global("P_Journal","GLOBAL",3)
~ THEN BEGIN 15 // from:
  SAY #46251 /* ~Du hältst den kalten, grauen Dodekaeder hoch, um ihn näher zu inspizieren. Du denkst an die vielen Fallen, die dem unvorsichtigen Benutzer das Leben kosten können. Du weißt jetzt, wie man sie alle umgeht.~ */
  IF ~~ THEN REPLY #46252 /* ~Falte ihn auseinander.~ */ GOTO 12
  IF ~~ THEN REPLY #46253 /* ~Leg den Dodekaeder beiseite.~ */ EXIT
END

IF ~  Global("P_Journal","GLOBAL",4)
~ THEN BEGIN 16 // from:
  SAY #46254 /* ~Du hältst den kalten, grauen Dodekaeder hoch, um ihn näher zu inspizieren. Du denkst an die vielen Fallen, die dem unvorsichtigen Benutzer das Leben kosten können. Du weißt jetzt, wie man sie alle umgeht. Und da du jetzt auch die tote Sprache der Uyo kennst, kannst du endlich entziffern, was darin steht...~ */
  IF ~~ THEN REPLY #46255 /* ~Falte den Dodekaeder auseinander und lies, was darin geschrieben steht.~ */ DO ~GiveExperience(Protagonist,10000)
SetGlobal("P_Journal","GLOBAL",5)
SetGlobal("Journal","GLOBAL",1)
~ JOURNAL #66194 /* ~Es ist mir endlich gelungen, das letzte Geheimnis des Rätsels des Kästchens mit zwölf Seiten zu lösen - Es hat sich herausgestellt, daß es ein Journal ist, das von einer nicht gerade geistig normalen früheren Inkarnationen geschrieben wurde.~ */ GOTO 17
  IF ~~ THEN REPLY #46256 /* ~Leg den Dodekaeder beiseite.~ */ EXIT
END

IF ~~ THEN BEGIN 17 // from: 16.0
  SAY #46257 /* ~Die Tafel erweist sich als eine Art Journal, das scheinbar von einer früheren - geistig umnachteten - Inkarnation deiner selbst geführt wurde. Nur eine Handvoll der Abschnitte ergeben einen Sinn.~ */
  IF ~~ THEN REPLY #46258 /* ~Blätter es durch.~ */ GOTO 19
  IF ~~ THEN REPLY #46259 /* ~Leg das Journal weg.~ */ EXIT
END

IF ~  Global("P_Journal","GLOBAL",5)
~ THEN BEGIN 18 // from:
  SAY #46260 /* ~Du hältst den kalten, grauen Dodekaeder hoch: Er ist das verschlüsselte und dreifach geschützte Journal einer früheren Inkarnation.~ */
  IF ~~ THEN REPLY #46261 /* ~Falte das Journal auseinander und lies es durch.~ */ GOTO 19
  IF ~~ THEN REPLY #46262 /* ~Leg das Journal weg.~ */ EXIT
END

IF ~~ THEN BEGIN 19 // from: 17.0 18.0 20.0 21.0 22.0 23.0 24.0 25.1 26.0 27.0 28.0 29.1 30.1 31.1 32.0 33.0 34.0
  SAY #46263 /* ~Was möchtest du lesen?~ */
  IF ~~ THEN REPLY #46264 /* ~Lies den Abschnitt über die 'flüsternden Schatten.'~ */ GOTO 20
  IF ~~ THEN REPLY #46265 /* ~Lies den Abschnitt über den weiblichen Geist.~ */ GOTO 21
  IF ~~ THEN REPLY #46266 /* ~Lies nach, wie man etwas im eigenen Körper versteckt.~ */ GOTO 22
  IF ~~ THEN REPLY #46267 /* ~Lies ein paar Zeilen paranoides Geschwafel durch.~ */ GOTO 23
  IF ~~ THEN REPLY #46268 /* ~Lies den Abschnitt über die 'verfluchten' Tätowierungen.~ */ GOTO 24
  IF ~~ THEN REPLY #46269 /* ~Lies den Abschnitt über Ravel und die Träume.~ */ GOTO 25
  IF ~~ THEN REPLY #46270 /* ~Lies den Abschnitt über die Gefahr der Namen.~ */ GOTO 26
  IF ~~ THEN REPLY #46271 /* ~Lies den Abschnitt über den Mord in der Festhalle.~ */ GOTO 27
  IF ~~ THEN REPLY #46272 /* ~Lies den Abschnitt über den Mord an einem, der dir helfen wollte.~ */ GOTO 28
  IF ~~ THEN REPLY #46273 /* ~Lies eine kryptische Antwort aus unbekannter Quelle.~ */ GOTO 29
  IF ~  Global("Know_Nameless_Legacy","GLOBAL",0)
~ THEN REPLY #46274 /* ~Lies etwas über ein Testament.~ */ DO ~SetGlobal("Know_Iannis_Fire_Responsible","GLOBAL",1)
SetGlobal("Know_Nameless_Legacy","GLOBAL",1)
~ GOTO 34
  IF ~  Global("Know_Nameless_Legacy","GLOBAL",1)
~ THEN REPLY #53673 /* ~Lies etwas über ein Testament.~ */ GOTO 34
  IF ~~ THEN REPLY #47074 /* ~Nichts. Leg das Journal beiseite.~ */ EXIT
END

IF ~~ THEN BEGIN 20 // from: 19.0
  SAY #46275 /* ~"Die Flüsterstimmen sind nicht die Schatten, die sich BEWEGEN. Sie SPRECHEN, DENKEN und REDEN miteinander. Ich verstehe manches von dem, was sie sagen."~ */
  IF ~~ THEN REPLY #46276 /* ~Lies etwas anderes.~ */ GOTO 19
  IF ~~ THEN REPLY #46277 /* ~Leg das Journal weg.~ */ EXIT
END

IF ~~ THEN BEGIN 21 // from: 19.1
  SAY #46278 /* ~"Das Buch sagt mir Dinge, es flüstert sie mir zu. Es sagt mir, ich soll das Geistermädchen meiden, ich soll es meiden. Ich KENNE ES NICHT, und es QUÄLT mich."~ */
  IF ~~ THEN REPLY #46279 /* ~Lies etwas anderes.~ */ GOTO 19
  IF ~~ THEN REPLY #46280 /* ~Leg das Journal weg.~ */ EXIT
END

IF ~~ THEN BEGIN 22 // from: 19.2
  SAY #46281 /* ~"Und so habe ich es VERSCHLUCKT und hoffte, es würde sich in meinen EINGEWEIDEN VERFANGEN. Jemand kann es HERAUSHOLEN, wenn es sein muß."~ */
  IF ~~ THEN REPLY #46282 /* ~Lies etwas anderes.~ */ GOTO 19
  IF ~~ THEN REPLY #46284 /* ~Leg das Journal weg.~ */ EXIT
END

IF ~~ THEN BEGIN 23 // from: 19.3
  SAY #46283 /* ~"Ich habe gelernt, daß MEIN LEBEN NICHT MIR GEHÖRT. Ich werde NICHT zulassen, daß du mein Leben bekommst..."

"DU mußt mein Leben meinem KAPUTTEN KÖRPER entreißen, wenn du es haben willst..."

"DU bist es, der STERBEN wird. Wenn ich es nicht haben kann, sollst AUCH DU es NICHT bekommen."

"DU TRÄGST DIE VERANTWORTUNG FÜR DIESEN VERRAT DES FLEISCHES. DU WIRST NICHT MEIN LEBEN LEBEN."~ */
  IF ~~ THEN REPLY #46285 /* ~Lies etwas anderes.~ */ GOTO 19
  IF ~~ THEN REPLY #46286 /* ~Leg das Journal weg.~ */ EXIT
END

IF ~~ THEN BEGIN 24 // from: 19.4
  SAY #46287 /* ~"Diese verfluchten TÄTOWIERUNGEN gehen einfach nicht von meiner HAUT ab! Ich habe versucht, sie wegzubrennen - ERFOLGLOS, erfolglos! Ich VERHÜLLE mich, aber ich habe immer das Gefühl, daß die Leute mein FLEISCH LESEN, als wäre ich ein BUCH. Immer wenn mich jemand ANSIEHT, WILL ICH IHM DIE AUGEN AUSREISSEN, aus den Augenhöhlen pflücken, und SIE UNTER MEINEM FUSS ZERMALMEN."~ */
  IF ~~ THEN REPLY #46288 /* ~Lies etwas anderes.~ */ GOTO 19
  IF ~~ THEN REPLY #46289 /* ~Leg das Journal weg.~ */ EXIT
END

IF ~~ THEN BEGIN 25 // from: 19.5
  SAY #46290 /* ~"WESHALB KANN ICH NICHT TRÄUMEN?!"

"Ich habe den Kelch von Semir genommen, um einen WACHTRAUM zu erleben. Mir erschien eine HEXE. Sie führte mich in VERSUCHUNG, BEDROHTE mich mit SCHATTEN! Ich habe sie nie GESEHEN, aber sie erschien mir im TRAUM. Ich darf NICHT mehr träumen. Ich muß bei BEWUSSTSEIN bleiben. Ich HABE DEN KELCH ZERSTÖRT."

"Sie sagt, daß sie MÄCHTIG ist, daß sie mich KRIEGEN wird, mich FINDEN wird. Geh weg, HEXE! Bleib mir FERN! Laß mich in FRIEDEN! Ich will mit dir NICHTS zu tun haben!"~ */
  IF ~~ THEN REPLY #46291 /* ~Lies weiter in diesem Abschnitt des Journals.~ */ GOTO 33
  IF ~~ THEN REPLY #46292 /* ~Lies etwas anderes.~ */ GOTO 19
  IF ~~ THEN REPLY #46293 /* ~Leg das Journal weg.~ */ EXIT
END

IF ~~ THEN BEGIN 26 // from: 19.6
  SAY #46294 /* ~"Nimm dich in Acht vor NAMEN. NAMEN haben Macht über die Identität. NAMEN können von ANDEREN als WAFFEN benutzt werden. Sie sind wie HAKEN, mit denen du ERKANNT, ENTDECKT und durch die Ebenen GEJAGT werden kannst. Bleib NAMENLOS, dann bist du SICHER."~ */
  IF ~~ THEN REPLY #46295 /* ~Lies etwas anderes.~ */ GOTO 19
  IF ~~ THEN REPLY #46296 /* ~Leg das Journal weg.~ */ EXIT
END

IF ~~ THEN BEGIN 27 // from: 19.7
  SAY #46297 /* ~"Ich ging zur Festhalle, um dort nach dem Pfad meines FALSCHEN SELBST zu suchen. Es war so STRAHLEND, daß diejenigen, die ich nicht KANNTE, die FALSCHEN, mich BEREITWILLIG ins Vertrauen zogen, mich als FREUND behandelten, mir MEIN ZIMMER zeigten, sich um meine BEDÜRFNISSE kümmerten. Ich mußte mich beherrschen, mich nicht auf sie zu stürzen. Das wäre voreilig gewesen. Zuerst mußte ich meine IDENTITÄT SCHÜTZEN. Ich fand einen, der die exklusive Sprache der Uyo kannte, lernte sie, so gut ich konnte, und TÖTETE ihn dann. Dann ging ich ins Sinnsorium und traf Vorbereitungen, die Angelegenheit zu BEENDEN. Bald, bald..."~ */
  IF ~~ THEN REPLY #46298 /* ~Lies etwas anderes.~ */ GOTO 19
  IF ~~ THEN REPLY #46299 /* ~Leg das Journal weg.~ */ EXIT
END

IF ~~ THEN BEGIN 28 // from: 19.8
  SAY #46300 /* ~"Er kann NICHTS tun. Er sagt, die Erinnerungen seien FÜR IMMER VERLOREN. Er erzählt mir nichts als Lügen! LÜGEN! Er sagt, mein Geist würde mit jedem Tod SCHWÄCHER! LÜGEN! Er saß da und MISSBRAUCHTE mein VERTRAUEN.
Er sagt, ich müsse NOCH DREIMAL STERBEN UND DREIMAL LEBEN, um meine Erinnerungen behalten zu dürfen. Aber er sagt auch, ich SELBST müsse dann STERBEN. STERBEN! Wie kann man unsterblich sein und trotzdem STERBEN?! Da er die Frage nicht beantworten konnte, war er NUTZLOS. Ich habe ihn GETÖTET, damit keine weitere Inkarnation seine NUTZLOSIGKEIT ertragen muß."~ */
  IF ~~ THEN REPLY #46302 /* ~Lies etwas anderes.~ */ GOTO 19
  IF ~~ THEN REPLY #46303 /* ~Leg das Journal weg.~ */ EXIT
END

IF ~~ THEN BEGIN 29 // from: 19.9
  SAY #46301 /* ~"Die GRUSELIGEN KÖPFE sagten also:"

"DU wurdest GETEILT. DU bist EINER von VIELEN. (Einer von VIELEN?) Du hast viele NAMEN. Jeder hat eine Narbe auf deiner Haut zurückgelassen..."~ */
  IF ~~ THEN REPLY #46304 /* ~Lies weiter in diesem Abschnitt des Journals.~ */ GOTO 30
  IF ~~ THEN REPLY #46305 /* ~Lies etwas anderes.~ */ GOTO 19
  IF ~~ THEN REPLY #46306 /* ~Leg das Journal weg.~ */ EXIT
END

IF ~~ THEN BEGIN 30 // from: 29.0
  SAY #46307 /* ~DER VERLORENE
DER UNSTERBLICHE
INKARNATIONSENDE
DER MANN DER TAUSEND TODE
DER ZUM LEBEN VERDAMMTE
DER RASTLOSE
EINER VON VIELEN
DER, DEN DAS LEBEN GEFANGENHÄLT
DER SCHATTENBRINGER
DER VERWUNDETE
DER QUALENBRINGER
YEMETH~ */
  IF ~~ THEN REPLY #46308 /* ~Lies weiter in diesem Abschnitt des Journals.~ */ GOTO 31
  IF ~~ THEN REPLY #46309 /* ~Lies etwas anderes.~ */ GOTO 19
  IF ~~ THEN REPLY #46310 /* ~Leg das Journal weg.~ */ EXIT
END

IF ~~ THEN BEGIN 31 // from: 30.0
  SAY #46311 /* ~"DU bist das silberne Glas, das ZERSPRUNGEN ist und in vielen Stücken über die Geschichte verteilt wurde."

"NUR EIN STÜCK ist von Belang. Gewinn es zurück, und dein LEBEN gehört wieder dir. Doch du mußt einen Preis zahlen. Mit diesem Preis erwirbst du eine Chance. Ohne diese Chance bist du VERDAMMT..."~ */
  IF ~~ THEN REPLY #46312 /* ~Lies weiter in diesem Abschnitt des Journals.~ */ GOTO 32
  IF ~~ THEN REPLY #46313 /* ~Lies etwas anderes.~ */ GOTO 19
  IF ~~ THEN REPLY #46314 /* ~Leg das Journal weg.~ */ EXIT
END

IF ~~ THEN BEGIN 32 // from: 31.0
  SAY #46315 /* ~"DU HAST DAS VERLOREN, WAS UNTRENNBAR MIT DEN MENSCHEN VERBUNDEN SEIN SOLLTE. DU HAST DEINE STERBLICHKEIT VERLOREN. SIE EXISITERT, ABER DU MUSST SIE FINDEN, BEVOR DU AUCH NOCH DEINEN GEIST VERLIERST."~ */
  IF ~~ THEN REPLY #46316 /* ~Lies etwas anderes.~ */ GOTO 19
  IF ~~ THEN REPLY #46317 /* ~Leg das Journal weg.~ */ EXIT
END

IF ~~ THEN BEGIN 33 // from: 25.0
  SAY #46318 /* ~"Ihre Stimme war wie die KRALLEN des Bösen, Krallen wie SPINNEN, die sich in meine graue Substanz GRUBEN. Sie mußte RAUS aus meinem GEIST, RAUS! RAUS, Hexe!"

"Sie war ein MYTHOS, ein MÄRCHEN, die als einzige die DAME DER SCHMERZEN HERAUSFORDERTE! Wie soll man gegen einen MYTHOS kämpfen? Mir fehlen die WAFFEN. Ich brauche Waffen, um sie zu TÖTEN, falls sie mich je FINDET. Ich brauche eine STRATEGIE, damit sie mich nicht vernichtet, wenn sie ZU MIR KOMMT. Ich muß PLANEN und DENKEN - ich werde sie BESIEGEN."~ */
  IF ~~ THEN REPLY #46319 /* ~Lies etwas anderes.~ */ GOTO 19
  IF ~~ THEN REPLY #46320 /* ~Leg das Journal weg.~ */ EXIT
END

IF ~~ THEN BEGIN 34 // from: 19.10 19.11
  SAY #47071 /* ~"Ein TESTAMENT, stand auf dem Zettel, 'VERGISS NICHT, DEIN TESTAMENT ABZUHOLEN'. Daneben ist ein kurzer CODE eingekratzt: 51-AA..."

"Eine FALLE, gar kein Zweifel, die eines meiner FALSCHEN ICHS gestellt hat. Ich werde dafür sorgen, daß sie ZERSTÖRT wird."~ */
  IF ~~ THEN REPLY #47079 /* ~Lies etwas anderes.~ */ GOTO 19
  IF ~~ THEN REPLY #47081 /* ~Leg das Journal weg.~ */ EXIT
END
