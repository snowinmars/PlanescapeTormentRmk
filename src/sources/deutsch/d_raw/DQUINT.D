// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DQUINT.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\de_DE\dialog.tlk
// dialogF  : (none)

BEGIN ~DQUINT~

IF ~  Global("Quint_Item","GLOBAL",3)
~ THEN BEGIN 0 // from:
  SAY #2833 /* ~"He. Danke. Du willst was?"~ */
  IF ~~ THEN REPLY #2834 /* ~"Ich wollte mich über Handel unterhalten."~ */ DO ~StartStore("Quint",Protagonist)
~ EXIT
  IF ~~ THEN REPLY #19039 /* ~"Ich hätte da ein paar Fragen an dich."~ */ GOTO 1
  IF ~~ THEN REPLY #19040 /* ~"Nichts. Leb wohl, Quint."~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.1 2.1 3.5 4.1 6.1 7.1 8.1 9.0
  SAY #19041 /* ~"Was willst du wissen?"~ */
  IF ~~ THEN REPLY #19042 /* ~"Erzähl mir noch mal was über dich."~ */ GOTO 2
  IF ~~ THEN REPLY #19043 /* ~"Erzähl mir was über die anderen Leute hier."~ */ GOTO 3
  IF ~~ THEN REPLY #19044 /* ~"Erzähl mir was über diesen Ort."~ */ GOTO 9
  IF ~~ THEN REPLY #19045 /* ~"Nichts. Vergiß es. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.0
  SAY #19046 /* ~"Quint. Ankauf und Verkauf. Führe alles. Willst du was?"~ */
  IF ~~ THEN REPLY #19047 /* ~"Laß uns über's Geschäft reden."~ */ DO ~StartStore("Quint",Protagonist)
~ EXIT
  IF ~~ THEN REPLY #19048 /* ~"Noch nicht. Beantworte mir noch ein paar Fragen."
~ */ GOTO 1
  IF ~~ THEN REPLY #19049 /* ~"Nein. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 1.1 4.0 6.0 7.0 8.0
  SAY #19050 /* ~"Wen zum Beispiel?"~ */
  IF ~~ THEN REPLY #19051 /* ~"Pharod."~ */ GOTO 4
  IF ~  NearbyDialog("DAnnah")
~ THEN REPLY #19052 /* ~"Annah."~ */ GOTO 5
  IF ~  !NearbyDialog("DAnnah")
GlobalGT("Know_Annah","GLOBAL",0)
~ THEN REPLY #19053 /* ~"Annah."~ */ GOTO 6
  IF ~  GlobalGT("Marta","GLOBAL",0)
~ THEN REPLY #19054 /* ~"Marta."~ */ GOTO 7
  IF ~  GlobalGT("Know_Ojo","GLOBAL",0)
~ THEN REPLY #19055 /* ~"Ojo."~ */ GOTO 8
  IF ~~ THEN REPLY #19056 /* ~"Vergiß es. Ich hätte da noch ein paar Fragen..."~ */ GOTO 1
  IF ~~ THEN REPLY #19057 /* ~"Vergiß es. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 3.0
  SAY #19058 /* ~"Alte Stotterkrücke, eh? Er hat den Laden aufgemacht, er ist der Herr der Gasse, hat mich hier eingesetzt, wir handeln, eh?"~ */
  IF ~~ THEN REPLY #19059 /* ~"Okay. Erzähl mir was über die anderen hier."~ */ GOTO 3
  IF ~~ THEN REPLY #19060 /* ~"Ich hätte da noch ein paar Fragen."~ */ GOTO 1
  IF ~~ THEN REPLY #19061 /* ~"Danke. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 3.1
  SAY #19062 /* ~Sein Kiefer zittert leicht, als er Annah einen Blick zuwirft. "Schönes Mädchen, nettes Mädchen, schlaues Mädchen, was? Von der harten Sorte." Er hebt die Hände, um zu zeigen, daß er's nicht böse meint.~ */
  IF ~~ THEN EXTERN ~DANNAH~ 110
END

IF ~~ THEN BEGIN 6 // from: 3.2
  SAY #19063 /* ~"Pharods Preis; sie macht gefährliche Jobs, eh? Clever. Scharfe Zunge." Er reibt sich den Kopf, als ob er sich an eine alte Wunde erinnert. "Wegbleiben, eh?"~ */
  IF ~~ THEN REPLY #19064 /* ~"Okay. Erzähl mir was über die anderen hier."~ */ GOTO 3
  IF ~~ THEN REPLY #19065 /* ~"Ich hätte da noch ein paar Fragen."~ */ GOTO 1
  IF ~~ THEN REPLY #19066 /* ~"Danke. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 7 // from: 3.3
  SAY #19067 /* ~"Heh. Besser von Marta wegbleiben. Bekloppte Näherin. Entnimmt den Leichen alle Zähne und Fäden und Dinger, gibt sie mir, ich verhöker den Mist oben für anderes Zeug."~ */
  IF ~~ THEN REPLY #19068 /* ~"Okay. Erzähl mir was über die anderen hier."~ */ GOTO 3
  IF ~~ THEN REPLY #19069 /* ~"Ich hätte da noch ein paar Fragen."~ */ GOTO 1
  IF ~~ THEN REPLY #19070 /* ~"Danke. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 8 // from: 3.4
  SAY #19071 /* ~"Gestört. Zu nichts gut, eh?"~ */
  IF ~~ THEN REPLY #19072 /* ~"Okay. Erzähl mir was über die anderen hier."~ */ GOTO 3
  IF ~~ THEN REPLY #19073 /* ~"Ich hätte da noch ein paar Fragen."~ */ GOTO 1
  IF ~~ THEN REPLY #19074 /* ~"Danke. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 9 // from: 1.2
  SAY #19075 /* ~"Das hier, eh? Das Dorf. Die Dabus haben's irgendwann platt gemacht, vor langer Zeit, man hat vergessen. Sammler graben es aus, wenn sie in den Lumpenbergen nach Klimper suchen... ich, ich stolper drüber, wenn ich mit den Sammlern handle." Er wackelt mit den Augenbrauen. "Guter Platz, um an Klimper zu kommen, eh? Tod gut fürs Geschäft."~ */
  IF ~~ THEN REPLY #19076 /* ~"Aha. Ich hätte da noch ein paar andere Fragen an dich..."~ */ GOTO 1
  IF ~~ THEN REPLY #19077 /* ~"Ja. Leb wohl."~ */ EXIT
END

IF ~  GlobalGT("Quint_Item","GLOBAL",0)
GlobalLT("Quint_Item","GLOBAL",3)
~ THEN BEGIN 10 // from:
  SAY #19078 /* ~"Du, eh? Du hast, was ich brauche?"~ */
  IF ~  !PartyHasItem("PsCharm")
~ THEN REPLY #19079 /* ~"Wonach hast du noch mal gesucht?"~ */ GOTO 11
  IF ~  PartyHasItem("PsCharm")
~ THEN REPLY #19080 /* ~"Ja. Hier ist er."~ */ DO ~TakePartyItemNum("PsCharm",1)
AddexperienceParty(7500)
SetGlobal("Quint_Item","GLOBAL",3)
GivePartyGold(250)
~ GOTO 12
  IF ~  PartyHasItem("PsCharm")
~ THEN REPLY #19081 /* ~Lüge: "Nein, noch nicht. Ich bin noch auf der Suche."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaos_Quint_One","GLOBALLaw",-1)
~ GOTO 13
  IF ~  !PartyHasItem("PsCharm")
~ THEN REPLY #19082 /* ~"Nein, noch nicht. Ich bin noch auf der Suche."~ */ GOTO 13
END

IF ~~ THEN BEGIN 11 // from: 10.0
  SAY #19083 /* ~"Ein Talisman, eh? Eine Halskette mit hohlen Zähnen dran. Finde sie und du wirst es nicht bereuen, eh? Verschwinde jetzt." Er beschäftigt sich mit seinen Sachen und ignoriert dich ganz offensichtlich.~ */
  IF ~~ THEN REPLY #19084 /* ~"Okay. Mach ich."~ */ EXIT
  IF ~~ THEN REPLY #66306 /* ~"Laß uns handeln."~ */ DO ~StartStore("Quint",Protagonist)
~ EXIT
END

IF ~~ THEN BEGIN 12 // from: 10.1 23.1 24.1
  SAY #19085 /* ~Du gibst ihm das Objekt, er streichelt es und sucht es vorsichtig nach Kerben und Kratzern ab. "Deinen Teil getan, eh? Ich tu meinen." Er gibt dir einen schweren Beutel, in dem Münzen klimpern. "Jetzt sind wir quitt. Brauchst du was, red' mit Quint, eh?" Er dreht sich weg, ganz gebannt von seinem Neuerwerb.~ */
  IF ~~ THEN REPLY #19086 /* ~"Laß uns handeln."~ */ DO ~StartStore("Quint",Protagonist)
~ EXIT
  IF ~~ THEN REPLY #66304 /* ~"Leb wohl, Quint."~ */ EXIT
END

IF ~~ THEN BEGIN 13 // from: 10.2 10.3
  SAY #19087 /* ~Sein Schweinsgesicht fällt zusammen. "Ach, das bricht dem alten Quint das Herz. Komm wieder, wenn du's gefunden hast, eh?" Er dreht sich weg und beschäftigt sich mit seinen Sachen.~ */
  IF ~~ THEN REPLY #19088 /* ~"Beantworte mir ein paar Fragen."~ */ GOTO 14
  IF ~~ THEN REPLY #66305 /* ~"Laß uns handeln."~ */ DO ~StartStore("Quint",Protagonist)
~ EXIT
  IF ~~ THEN REPLY #66307 /* ~"Leb wohl."~ */ EXIT
END

IF ~  NumTimesTalkedToGT(0)
~ THEN BEGIN 14 // from: 13.0 15.2 16.5 17.1 19.1 20.1 21.1 22.0 23.2 24.0 35.1 40.0 41.1 43.1 44.1 46.3 47.2 48.0 49.1
  SAY #19089 /* ~Quint schaut dich von oben bis unten an. "Was willst du, eh?"~ */
  IF ~  !Global("Quint_Item","GLOBAL",1)
~ THEN REPLY #19090 /* ~"Erzähl mir noch mal was über dich."~ */ GOTO 15
  IF ~~ THEN REPLY #19091 /* ~"Was machst du da?"~ */ GOTO 46
  IF ~~ THEN REPLY #19092 /* ~"Erzähl mir was über die anderen Leute hier."~ */ GOTO 16
  IF ~~ THEN REPLY #19093 /* ~"Erzähl mir was über diesen Ort."~ */ GOTO 22
  IF ~  Global("Quint_Trade","GLOBAL",1)
~ THEN REPLY #19094 /* ~"Laß uns handeln."~ */ DO ~StartStore("Quint",Protagonist)
~ EXIT
  IF ~~ THEN REPLY #66308 /* ~"Nichts. Vergiß es. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 15 // from: 14.0
  SAY #19095 /* ~"Quint. Ankauf und Verkauf. Führe alles. Willst du was? Oder willst du vielleicht einen Job für mich erledigen, eh?"~ */
  IF ~~ THEN REPLY #19096 /* ~"Was für einen Job?"~ */ GOTO 23
  IF ~  Global("Quint_Trade","GLOBAL",0)
~ THEN REPLY #19097 /* ~"Laß uns über's Geschäft reden."~ */ GOTO 32
  IF ~~ THEN REPLY #19098 /* ~"Noch nicht. Beantworte mir noch ein paar Fragen."~ */ GOTO 14
  IF ~  Global("Quint_Trade","GLOBAL",1)
~ THEN REPLY #19099 /* ~"Laß uns handeln."~ */ DO ~StartStore("Quint",Protagonist)
~ EXIT
  IF ~~ THEN REPLY #66309 /* ~"Nein. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 16 // from: 14.2 17.0 19.0 20.0 21.0
  SAY #19100 /* ~"Wen zum Beispiel?"~ */
  IF ~~ THEN REPLY #19101 /* ~"Pharod."~ */ GOTO 17
  IF ~  NearbyDialog("DAnnah")
Global("Annah","GLOBAL",1)
~ THEN REPLY #19102 /* ~"Annah."~ */ GOTO 18
  IF ~  !NearbyDialog("DAnnah")
Global("Annah","GLOBAL",1)
~ THEN REPLY #19103 /* ~"Annah."~ */ GOTO 19
  IF ~  Global("Know_Marta_Work","GLOBAL",1)
~ THEN REPLY #19104 /* ~"Marta."~ */ GOTO 20
  IF ~  Global("Know_Ojo","GLOBAL",1)
~ THEN REPLY #19105 /* ~"Ojo."~ */ GOTO 21
  IF ~~ THEN REPLY #19106 /* ~"Vergiß es. Ich hätte da noch ein paar Fragen..."~ */ GOTO 14
  IF ~~ THEN REPLY #19107 /* ~"Vergiß es. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 17 // from: 16.0 46.1
  SAY #19108 /* ~"Alte Stotterkrücke, eh? Er hat den Laden aufgemacht, er ist der Herr der Gasse, hat mich hier eingesetzt, wir handeln, eh?"~ */
  IF ~~ THEN REPLY #19109 /* ~"Okay. Erzähl mir was über die anderen hier."~ */ GOTO 16
  IF ~~ THEN REPLY #19110 /* ~"Ich hätte da noch ein paar Fragen."~ */ GOTO 14
  IF ~~ THEN REPLY #19111 /* ~"Danke. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 18 // from: 16.1
  SAY #19112 /* ~Sein Kiefer zittert leicht, als er Annah einen Blick zuwirft. "Schönes Mädchen, nettes Mädchen, schlaues Mädchen, was? Von der harten Sorte." Er hebt die Hände, um zu zeigen, daß er's nicht böse meint.~ */
  IF ~~ THEN EXTERN ~DANNAH~ 110
END

IF ~~ THEN BEGIN 19 // from: 16.2
  SAY #19113 /* ~"Pharods Preis; sie macht gefährliche Jobs, eh? Clever. Scharfe Zunge." Er reibt sich den Kopf, als ob er sich an eine alte Wunde erinnert. "Wegbleiben, eh?"~ */
  IF ~~ THEN REPLY #19114 /* ~"Okay. Erzähl mir was über die anderen hier."~ */ GOTO 16
  IF ~~ THEN REPLY #19115 /* ~"Ich hätte da noch ein paar Fragen."~ */ GOTO 14
  IF ~~ THEN REPLY #19116 /* ~"Danke. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 20 // from: 16.3 46.0
  SAY #19117 /* ~"Heh. Besser von Marta wegbleiben. Bekloppte Näherin. Entnimmt den Leichen alle Zähne und Fäden und Dinger, gibt sie mir, ich verhöker den Mist oben für anderes Zeug."~ */
  IF ~~ THEN REPLY #19118 /* ~"Okay. Erzähl mir was über die anderen hier."~ */ GOTO 16
  IF ~~ THEN REPLY #19119 /* ~"Ich hätte da noch ein paar Fragen."~ */ GOTO 14
  IF ~~ THEN REPLY #19120 /* ~"Danke. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 21 // from: 16.4
  SAY #19121 /* ~"Gestört. Zu nichts gut, eh?"~ */
  IF ~~ THEN REPLY #19122 /* ~"Okay. Erzähl mir was über die anderen hier."~ */ GOTO 16
  IF ~~ THEN REPLY #19123 /* ~"Ich hätte da noch ein paar Fragen."~ */ GOTO 14
  IF ~~ THEN REPLY #19124 /* ~"Danke. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 22 // from: 14.3
  SAY #19125 /* ~"Das hier, eh? Das Dorf. Die Dabus haben's irgendwann platt gemacht, vor langer Zeit, und man hat vergessen. Sammler graben es aus, wenn sie in den Lumpenbergen nach Klimper suchen... ich, ich stolper drüber, wenn ich mit den Sammlern handle." Er wackelt mit den Augenbrauen. "Guter Platz, um an Klimper zu kommen, eh? Tod gut fürs Geschäft."~ */
  IF ~~ THEN REPLY #19126 /* ~"Aha. Ich hätte da noch ein paar andere Fragen an dich..."~ */ GOTO 14
  IF ~~ THEN REPLY #19127 /* ~"Ja. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 23 // from: 15.0
  SAY #19128 /* ~"Gris? Eh... Gris, der Geier, wurd er genannt. Verließ diesen Ort vor zwei Wochen. Keiner hat seitdem was von ihm gehört oder gesehen. Die Katakomben haben ihn wohl erwischt. Viele Dinge an dunklen Orten da unten, eh... Pech, daß Gris im Totenbuch steht... guter Sammler, eh. Schwarzes Herz. Gute Nase für neue Gruften. Hat auch noch was von mir. Find' ihn und bring's mir zurück, dann bezahl' ich dich, eh? Geb' dir Klimper und handel mit Plunder, heh?"~ */
  IF ~~ THEN REPLY #19129 /* ~"Abgemacht."~ */ DO ~SetGlobal("Quint_Item","GLOBAL",1)
~ JOURNAL #66300 /* ~Quint, der Leichenhausierer, hat mich gebeten, einen Gegenstand von einem Sammler namens Gris zurückzuholen, der vor einiger Zeit in die Katakomben verschwand.~ */ GOTO 24
  IF ~  PartyHasItem("PSCharm")
~ THEN REPLY #19130 /* ~Zeig ihm den Talisman, den du bei Martas Haus gefunden hast: "Ach, dieses Ding?"~ */ DO ~TakePartyItemNum("PsCharm",1)
AddexperienceParty(7500)
SetGlobal("Quint_Item","GLOBAL",3)
GivePartyGold(250)
~ JOURNAL #66302 /* ~Quint, der Leichenhausierer, hat mich gebeten, ihm einen Gegenstand von einem Sammler namens Gris zu besorgen, der vor einiger Zeit in den Katakomben verschwunden ist. Ich habe ihm den Talisman gezeigt, den ich bei Martas Haus gefunden habe, und er hat zugestimmt, daß es seiner sei.~ */ GOTO 12
  IF ~~ THEN REPLY #19131 /* ~"Ich denk drüber nach. Beantworte mir noch ein paar andere Fragen..."~ */ GOTO 14
  IF ~~ THEN REPLY #66301 /* ~"Ich denk drüber nach. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 24 // from: 23.0
  SAY #19132 /* ~Er schnauft und scheint fast glücklich. "Ein Gifttalisman, Halskette mit hohlen Zähnen. Findest sie wohl da, wo Gris ist. Sag mir Bescheid, heh?"~ */
  IF ~~ THEN REPLY #19133 /* ~"Sicher. Ich hätte da noch ein paar andere Fragen..."~ */ GOTO 14
  IF ~  PartyHasItem("PsCharm")
~ THEN REPLY #19134 /* ~Zeig ihm den Talisman, den du bei Martas Haus gefunden hast: "Ach, dieses Ding?"~ */ DO ~TakePartyItemNum("PsCharm",1)
AddexperienceParty(7500)
SetGlobal("Quint_Item","GLOBAL",3)
GivePartyGold(250)
~ JOURNAL #66302 /* ~Quint, der Leichenhausierer, hat mich gebeten, ihm einen Gegenstand von einem Sammler namens Gris zu besorgen, der vor einiger Zeit in den Katakomben verschwunden ist. Ich habe ihm den Talisman gezeigt, den ich bei Martas Haus gefunden habe, und er hat zugestimmt, daß es seiner sei.~ */ GOTO 12
  IF ~~ THEN REPLY #66303 /* ~"Mach ich. Leb wohl."~ */ EXIT
END

IF ~  NumTimesTalkedTo(0)
~ THEN BEGIN 25 // from:
  SAY #19135 /* ~Du siehst einen kleinen Mann mit dickem Gesicht, der mit Dreck und Schmutz bedeckt ist. Er stinkt und hat schlechte Zähne. Sein Atem pfeift, während er dich von oben bis unten ansieht und sagt: "Ich bin Quint. Neu hier?"~ */
  IF ~~ THEN REPLY #19136 /* ~"Wer will das wissen?"~ */ GOTO 26
  IF ~~ THEN REPLY #19137 /* ~"Ja."~ */ GOTO 29
  IF ~~ THEN REPLY #19138 /* ~"Nein, ich bin schon 'ne Weile hier."~ */ GOTO 42
END

IF ~~ THEN BEGIN 26 // from: 25.0
  SAY #19139 /* ~"Ich, eh? Neu hier?"~ */
  IF ~~ THEN REPLY #19140 /* ~"Ja."~ */ GOTO 29
  IF ~~ THEN REPLY #19141 /* ~"Nein."~ */ GOTO 42
  IF ~~ THEN REPLY #19142 /* ~"Geht dich nichts an."~ */ GOTO 27
END

IF ~~ THEN BEGIN 27 // from: 26.2
  SAY #19143 /* ~"Geht mich nichts an? Neu hier?"~ */
  IF ~~ THEN REPLY #19144 /* ~"Ja."~ */ GOTO 29
  IF ~~ THEN REPLY #19145 /* ~"Nein."~ */ GOTO 42
  IF ~~ THEN REPLY #19146 /* ~"Verpiß dich!"~ */ GOTO 28
END

IF ~~ THEN BEGIN 28 // from: 27.2
  SAY #19147 /* ~"Eh, gleichfalls! Hau ab!"~ */
  IF ~~ THEN REPLY #19148 /* ~"Ja ja."~ */ EXIT
END

IF ~~ THEN BEGIN 29 // from: 25.1 26.0 27.0
  SAY #19149 /* ~Er sieht dich mißtrauisch an. "Verkaufst oder handelst du? Eh?"~ */
  IF ~~ THEN REPLY #19150 /* ~"Ja."~ */ GOTO 30
  IF ~~ THEN REPLY #19151 /* ~"Ich verkaufe."~ */ GOTO 30
  IF ~~ THEN REPLY #19152 /* ~"Ich handle."~ */ GOTO 30
END

IF ~~ THEN BEGIN 30 // from: 29.0 29.1 29.2
  SAY #19153 /* ~Seine Augen verengen sich noch weiter. "Handeln, eh? Mit mir? Oder allen, Dussel? Was jetzt? Eh?"~ */
  IF ~~ THEN REPLY #19154 /* ~"Mit dir."~ */ GOTO 31
  IF ~~ THEN REPLY #19155 /* ~"Mit jedem."~ */ GOTO 39
  IF ~~ THEN REPLY #19156 /* ~"Mit wem ich will, du Dussel."~ */ GOTO 39
END

IF ~~ THEN BEGIN 31 // from: 30.0
  SAY #19157 /* ~"Nur mit mir? Mir? Eh?"~ */
  IF ~~ THEN REPLY #19158 /* ~"Ja, nur mit dir."~ */ DO ~SetGlobal("Quint_Trade","GLOBAL",1)
~ GOTO 32
  IF ~~ THEN REPLY #19159 /* ~"Nein, mit jedem."~ */ GOTO 39
END

IF ~~ THEN BEGIN 32 // from: 15.1 31.0 36.2 37.0
  SAY #19160 /* ~"Ist das so, eh? Laß uns handeln, eh?"~ */
  IF ~~ THEN REPLY #19161 /* ~"Okay."~ */ DO ~StartStore("Quint",Protagonist)
~ EXIT
  IF ~~ THEN REPLY #19162 /* ~"Interessiert dich irgendwas besonders?"~ */ GOTO 33
  IF ~~ THEN REPLY #19163 /* ~"Mit was handelst du normalerweise?"~ */ GOTO 36
  IF ~~ THEN REPLY #19164 /* ~"Ich bin doch nicht interessiert. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 33 // from: 32.1
  SAY #19165 /* ~"Irgendwas Interessantes, eh?" Er lächelt. "Suchst du was?"~ */
  IF ~~ THEN REPLY #19166 /* ~"Zeig mal, was du hast."~ */ DO ~StartStore("Quint",Protagonist)
~ EXIT
  IF ~  Global("Journal","GLOBAL",0)
~ THEN REPLY #19167 /* ~"Ein Journal."~ */ GOTO 34
  IF ~~ THEN REPLY #19168 /* ~"Nein. Vergiß es. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 34 // from: 33.1
  SAY #19169 /* ~"Journal, eh? Goldblatt vielleicht?"~ */
  IF ~~ THEN REPLY #19170 /* ~"Keine Ahnung."~ */ GOTO 35
  IF ~~ THEN REPLY #19171 /* ~"Laß uns einfach über andere Geschäfte reden."~ */ EXIT
END

IF ~~ THEN BEGIN 35 // from: 34.0
  SAY #19172 /* ~"Ich auch nicht." Er zuckt mit den Schultern.~ */
  IF ~~ THEN REPLY #19173 /* ~"Dann laß uns über Geschäfte reden."~ */ DO ~StartStore("Quint",Protagonist)
~ EXIT
  IF ~~ THEN REPLY #19174 /* ~"Okay. Dann beantworte mir ein paar Fragen."~ */ GOTO 14
  IF ~~ THEN REPLY #19175 /* ~"Dann leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 36 // from: 32.2
  SAY #19176 /* ~"Nähfaden, Zähne, ein paar Teile hier und da von den geliebten Verstorbenen, eh? Gibt viele Leichen zu angeln da unten in den Katakomben, ein paar Teile von den Totenbüchlern mitbringen, Urnen, ein bißchen Klimper, so Kleinkram... das ist mein Geschäft, Dussel. Die hier leben - die gehen da runter, diese Sammler, holen das Zeug, holen ein paar Leichen, bringen sie zu Pharod, zeigen sie ihm, er nimmt sich seinen Teil, dann handelt er mit mir."~ */
  IF ~~ THEN REPLY #19177 /* ~"Was macht Pharod mit den Leichen?"~ */ DO ~SetGlobal("Know_Pharod_Bodies","GLOBAL",1)
~ GOTO 37
  IF ~  CheckStatGT(Protagonist,13,INT)
~ THEN REPLY #19178 /* ~"Und wenn ich direkt mit dir handeln würde?"~ */ GOTO 38
  IF ~~ THEN REPLY #19179 /* ~"Ich will mit dir handeln."~ */ DO ~SetGlobal("Quint_Trade","GLOBAL",1)
~ GOTO 32
  IF ~~ THEN REPLY #19180 /* ~"Verstehe. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 37 // from: 36.0
  SAY #19181 /* ~"Sein Geschäft." Er lächelt. "Verkauft die Totenbüchler zurück an die Staubies, eh? Die Staubies begraben sie wieder, wir graben sie wieder aus, eh? Eh!" Er gibt ein lautes Schnaufen von sich, das ein Lachen sein könnte.~ */
  IF ~~ THEN REPLY #19182 /* ~"Aha. Vielleicht bin ich an Geschäften interessiert."~ */ GOTO 32
  IF ~~ THEN REPLY #19183 /* ~"Verstehe. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 38 // from: 36.1
  SAY #19184 /* ~"Also da könnte ich nicht mitmachen, eh? Der olle Quint mag es zwar langsam satt haben, nur Pharods Reste zu kriegen und mit Leichenteilen zu handeln, wenn er auch ein paar Urnen und Totenschätze direkt kriegen könnte, eh? Wenn du mir jedoch sagen würdest, es käme von Pharod, dann müßte ich's wohl glauben, oder, eh? Ich würd einfach annehmen, daß es ein ganz sauberes Geschäft war, eh?"~ */
  IF ~~ THEN REPLY #19185 /* ~"Dann laß uns handeln."~ */ DO ~StartStore("Quint",Protagonist)
~ EXIT
  IF ~~ THEN REPLY #19186 /* ~"Verstehe. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 39 // from: 30.1 30.2 31.1
  SAY #19187 /* ~Sein Gesicht wird knallrot. "Zieh Leine, Dussel! Los! Los! Dieser Laden gehört mir! Ich hab' das Vorrecht. Du hast kein Recht drauf! Ich werd dafür sorgen, daß Pharod dich ausnimmt wie einen Fisch!"~ */
  IF ~~ THEN REPLY #19188 /* ~Lüge: "Pharod hat gesagt, daß ich hier handeln kann."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaos_Quint_Two","GLOBALLaw",-1)
SetGlobal("Quint_Trade","GLOBAL",1)
~ GOTO 40
  IF ~~ THEN REPLY #19189 /* ~"Krieg dich ein. Ich werde nur mit dir handeln."~ */ DO ~SetGlobal("Quint_Trade","GLOBAL",1)
~ GOTO 41
END

IF ~~ THEN BEGIN 40 // from: 39.0
  SAY #19190 /* ~"Ich bring ihn um! Er sagt, 'Quint, du bist von meinem Blut, du kümmerst dich um den Laden', und weg ist er und gibt einem räudigen Hund wie dir was. Lahmer Bastard! Heh!"~ */
  IF ~~ THEN REPLY #19191 /* ~"Tja, so ist das manchmal eben, was? Ich hätte da ein paar Fragen an dich..."~ */ GOTO 14
  IF ~~ THEN REPLY #19192 /* ~"Also, willst du nun handeln oder nicht?"~ */ DO ~StartStore("Quint",Protagonist)
~ EXIT
  IF ~~ THEN REPLY #19193 /* ~"Er ist ein richtiger Querhändler. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 41 // from: 39.1
  SAY #19194 /* ~Ein Teil der Farbe weicht aus seinem Gesicht. "OK. Eh." Er wischt sich den Schweiß von der Stirn. "Du willst handeln, eh?"~ */
  IF ~~ THEN REPLY #19195 /* ~"Ja. Laß uns handeln."~ */ DO ~StartStore("Quint",Protagonist)
~ EXIT
  IF ~~ THEN REPLY #19196 /* ~"Eigentlich hätte ich ein paar Fragen..."~ */ GOTO 14
  IF ~~ THEN REPLY #19197 /* ~"Noch nicht. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 42 // from: 25.2 26.1 27.1
  SAY #19198 /* ~"Ach ja? Seh dich zum ersten Mal, Dussel." Er schnauft. "Bin schon 'ne Weile hier. Hab' das Vorrecht, verstehst du? Eh?"~ */
  IF ~~ THEN REPLY #19199 /* ~"Nun ja, ich bin schon lange hier. Du hast wohl nicht richtig geguckt."~ */ GOTO 43
  IF ~~ THEN REPLY #19200 /* ~"Was?"~ */ GOTO 44
END

IF ~~ THEN BEGIN 43 // from: 42.0
  SAY #19201 /* ~"Wenn du Streit willst, Dussel, ich kann mich auf Pharods Wort verlassen... du? Du bekommst nichts als Narben."~ */
  IF ~~ THEN REPLY #19202 /* ~"Willst du kämpfen, oder willst du handeln?"
~ */ DO ~SetGlobal("Quint_Trade","GLOBAL",1)
~ GOTO 45
  IF ~~ THEN REPLY #19203 /* ~"Ja ja. Beantworte mir einfach nur ein paar Fragen, großer Mann."~ */ GOTO 14
  IF ~~ THEN REPLY #19204 /* ~"Ich hab' dir nichts zu sagen."~ */ EXIT
END

IF ~~ THEN BEGIN 44 // from: 42.1
  SAY #19205 /* ~"Bist du taub oder bloß dämlich? Ich sagte, ich hab' hier das Vorrecht, Dussel. Ich handel, du nicht... oder du handelst nur mit mir. Eh?"~ */
  IF ~~ THEN REPLY #19206 /* ~"Willst du kämpfen, oder willst du handeln?"~ */ DO ~SetGlobal("Quint_Trade","GLOBAL",1)
~ GOTO 45
  IF ~~ THEN REPLY #19207 /* ~"Ja ja. Beantworte mir einfach nur ein paar Fragen, großer Mann."~ */ GOTO 14
  IF ~~ THEN REPLY #19208 /* ~"Ich hab' dir nichts zu sagen."~ */ EXIT
END

IF ~~ THEN BEGIN 45 // from: 43.0 44.0
  SAY #19209 /* ~"Ich werde handeln, eh? Ich bin ein Händler, kein Kämpfer." Er schnauft.~ */
  IF ~~ THEN REPLY #19210 /* ~"Dann laß uns handeln."~ */ DO ~StartStore("Quint",Protagonist)
~ EXIT
  IF ~~ THEN REPLY #19211 /* ~"Beantworte mir erst ein paar Fragen..."~ */ EXIT
END

IF ~~ THEN BEGIN 46 // from: 14.1
  SAY #19212 /* ~"Warte darauf, daß Marta und Pharod mir die Waren bringen."~ */
  IF ~~ THEN REPLY #19213 /* ~"Marta?"~ */ GOTO 20
  IF ~~ THEN REPLY #19214 /* ~"Pharod?"~ */ GOTO 17
  IF ~~ THEN REPLY #19215 /* ~"Was für Waren?"~ */ GOTO 47
  IF ~~ THEN REPLY #19216 /* ~"Ich hätte da noch ein paar Fragen."~ */ GOTO 14
  IF ~~ THEN REPLY #19217 /* ~"Danke. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 47 // from: 46.2
  SAY #19218 /* ~"Die Reste von Grabrauben in den Katakomben."~ */
  IF ~~ THEN REPLY #19219 /* ~"Was für Reste?"~ */ GOTO 48
  IF ~~ THEN REPLY #19220 /* ~"In den Katakomben?"~ */ GOTO 49
  IF ~~ THEN REPLY #19221 /* ~"Ich hätte da noch ein paar Fragen."~ */ GOTO 14
  IF ~~ THEN REPLY #19222 /* ~"Danke. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 48 // from: 47.0 49.0
  SAY #19223 /* ~"Zähne, Leichenfäden, Teile, die sie den Leichen entnehmen, ein paar Münzen, die sie in den Bandagen finden, eh. Die Leute bezahlen mehr als man denkt, eh?"~ */
  IF ~~ THEN REPLY #19224 /* ~"Aha. Ich hätte da noch ein paar andere Fragen an dich..."~ */ GOTO 14
  IF ~~ THEN REPLY #19225 /* ~"Verstehe. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 49 // from: 47.1
  SAY #19226 /* ~"Unterm Dorf. Viele neue Leichen und alte Gruften in dieser Gegend, weil niemand vorher hingekommen ist, eh? Dieses Dorf, dieses Dorf... nicht viele wissen von diesem Dorf. Noch weniger wissen, wie leicht man in die Katakomben und zu all den Totenbüchlern da unten kommt..." Er schmatzt gierig. "Jungfräuliches Territorium, eh?"~ */
  IF ~~ THEN REPLY #19227 /* ~"Sicher. Erzähl mir was über diese Reste..."~ */ GOTO 48
  IF ~~ THEN REPLY #19228 /* ~"Sicher. Ich hätte da noch ein paar andere Fragen..."~ */ GOTO 14
  IF ~~ THEN REPLY #19229 /* ~"Sicher. Leb wohl."~ */ EXIT
END
