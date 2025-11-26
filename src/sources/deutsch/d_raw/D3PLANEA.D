// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : D3PLANEA.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\de_DE\dialog.tlk
// dialogF  : (none)

BEGIN ~D3PLANEA~

IF ~~ THEN BEGIN 0 // from: 11.0
  SAY #2949 /* ~"Ich bin *bekannt* als Drei-Ebenen-Ausgerichtet, ein Gelehrter der Githzerai. Wenn du wegen meines Vortrags hier bist, er beginnt in wenigen Minuten."~ */
  IF ~  NearbyDialog("DMorte")
~ THEN EXTERN ~DMORTE~ 476
  IF ~  !NearbyDialog("DMorte")
~ THEN REPLY #45030 /* ~Hör weiter zu.~ */ GOTO 1
  IF ~  !NearbyDialog("DMorte")
~ THEN REPLY #45031 /* ~Verlaß die Vorlesungshalle.~ */ DO ~SetGlobal("Lecture_3Planes","GLOBAL",2)
~ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.1
  SAY #45032 /* ~Er spricht mit einer sehr tiefen, ernsten Stimme. "Heute werde ich von der Macht der Gesinnung und dem Glauben sprechen. Ich werde erläutern, wie beide auf die Gestalt der Ebenen einwirken."

"Als erstes möchte ich auf die Gesinnung zu sprechen kommen."
~ */
  IF ~~ THEN REPLY #45033 /* ~Hör weiter zu.~ */ GOTO 2
  IF ~~ THEN REPLY #45034 /* ~Hör auf zuzuhören und geh weg.~ */ DO ~SetGlobal("Lecture_3Planes","GLOBAL",2)
~ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.0
  SAY #45035 /* ~"Die Gesinnung ist ein Deskriptor der Überzeugungen eines Wesens und seines Umgangs mit ihnen. Alle Wesen verhalten sich im Wesentlichen nach einem von drei möglichen Mustern: gut im Herzen, böse im Herzen oder gleichgültig - bzw. neutral - im Herzen. Für diese drei grundlegenden Verhaltensmuster gibt es wiederum drei Möglichkeiten des Ausdrucks: geordnet, chaotisch oder gleichgültig bzw. neutral. Daraus ergeben sich insgesamt neun Gesinnungen, die ein Wesen annehmen kann."~ */
  IF ~~ THEN REPLY #45036 /* ~Hör weiter zu.~ */ GOTO 3
  IF ~~ THEN REPLY #45037 /* ~Hör auf zuzuhören und geh weg.~ */ DO ~SetGlobal("Lecture_3Planes","GLOBAL",2)
~ EXIT
END

IF ~~ THEN BEGIN 3 // from: 2.0
  SAY #45038 /* ~"Diese neun Gesinnungen sind: rechtschaffen gut, neutral gut und chaotisch gut... rechtschaffen neutral, wahrhaft neutral und chaotisch neutral... rechtschaffen böse, neutral böse und chaotisch böse."

"Als nächstes möchte ich auf die Macht der Gesinnung und den aus einer Gesinnung resultierenden Glauben eingehen... Ich werde zeigen, wie selbst Götter diese Macht nutzen und wie der Glaube eines Wesens dessen Umwelt physisch beeinflussen kann."
~ */
  IF ~~ THEN REPLY #45039 /* ~Hör weiter zu.~ */ GOTO 4
  IF ~~ THEN REPLY #45040 /* ~Hör auf zuzuhören und geh weg.~ */ DO ~SetGlobal("Lecture_3Planes","GLOBAL",2)
~ EXIT
END

IF ~~ THEN BEGIN 4 // from: 3.0
  SAY #45041 /* ~"Eine Gottheit braucht ihre Anbeter, da sie ihre Macht allein aus deren Glauben bezieht. Je mehr Personen bekehrt werden und an einen bestimmten Gott glauben, desto größer ist die Macht dieses Gottes."

"Umkehrt gilt, daß eine Gottheit dahinsiecht und stirbt, wenn keiner an sie glaubt. Dann fährt sie zur Astralebene, wo auch die Leichen der anderen Götter schweben. Ein Gott kann also gestürzt werden, indem man ihn einfach vergißt."
~ */
  IF ~~ THEN REPLY #45042 /* ~Hör weiter zu.~ */ GOTO 5
  IF ~~ THEN REPLY #45043 /* ~Hör auf zuzuhören und geh weg.~ */ DO ~SetGlobal("Lecture_3Planes","GLOBAL",2)
~ EXIT
END

IF ~~ THEN BEGIN 5 // from: 4.0
  SAY #45044 /* ~"Ein weitaus beeindruckenderes Beispiel für die Macht der Gesinnung und des Glaubens sind jedoch die abgleitenden Torstädte."

"Dazu muß ich zuerst definieren, was eine Torstadt ist."
~ */
  IF ~~ THEN REPLY #45045 /* ~Hör weiter zu.~ */ GOTO 6
  IF ~~ THEN REPLY #45046 /* ~Hör auf zuzuhören und geh weg.~ */ DO ~SetGlobal("Lecture_3Planes","GLOBAL",2)
~ EXIT
END

IF ~~ THEN BEGIN 6 // from: 5.0
  SAY #45047 /* ~"Eine Torstadt ist eine Stadt in den Außenländern, diesen größtenteils neutralen Flächen, über deren Zentrum sich Sigil dreht. Eine Torstadt ist um ein permanentes Portal, das zu einer der Äußeren Ebenen führt, herum gebaut."~ */
  IF ~~ THEN REPLY #45048 /* ~Hör weiter zu.~ */ GOTO 7
  IF ~~ THEN REPLY #45049 /* ~Hör auf zuzuhören und geh weg.~ */ DO ~SetGlobal("Lecture_3Planes","GLOBAL",2)
~ EXIT
END

IF ~~ THEN BEGIN 7 // from: 6.0
  SAY #45050 /* ~"Jede dieser Äußeren Ebenen hat ihre eigene Gesinnung. Der Abgrund ist chaotisch und böse, Baator rechtschaffen und böse, Mechanus rechtschaffen und neutral. Der Berg Zelestia hingegen ist rechtschaffen und gut. Die Außenländer sind neutral: Sie tendieren weder zur Rechtschaffenheit noch zum Chaos."

"Das Phänomen des 'Abgleitens' tritt auf, wenn in einem Gebiet ein dort nicht angestammter Glaube hoch konzentriert wird. Dann bewegt bzw. gleitet dieses Gebiet auf eine Ebene, die diesem neuen Glauben entspricht."
~ */
  IF ~~ THEN REPLY #45051 /* ~Hör weiter zu.~ */ GOTO 8
  IF ~~ THEN REPLY #45052 /* ~Hör auf zuzuhören und geh weg.~ */ DO ~SetGlobal("Lecture_3Planes","GLOBAL",2)
~ EXIT
END

IF ~~ THEN BEGIN 8 // from: 7.0
  SAY #45053 /* ~"In einer Torstadt herrscht im Normalzustand eine Glaubensrichtung vor, die der Äußeren Ebene jenseits des Portals entspricht, die aber noch nicht stark genug ausgeprägt ist, um die Stadt von den Außenländern zu den Äußeren Ebenen zu verschieben."

"Die Stadt Brustkorb zum Beispiel grenzt an das Portal, das zur rechtschaffen-bösen Ebene Baator führt. Die Mehrzahl der Einwohner von Brustkorb sind rechtschaffen-böse, doch die Gesinnung und der Glauben der gesamten Stadt sind nicht stark genug, als daß Brustkorb zur Baator-Ebene abgleitet."
~ */
  IF ~~ THEN REPLY #45054 /* ~Hör weiter zu.~ */ GOTO 9
  IF ~~ THEN REPLY #45055 /* ~Hör auf zuzuhören und geh weg.~ */ DO ~SetGlobal("Lecture_3Planes","GLOBAL",2)
~ EXIT
END

IF ~~ THEN BEGIN 9 // from: 8.0
  SAY #45056 /* ~"Es ist nämlich durchaus möglich, daß in Brustkorb eines Tages ein rechtschaffen-böser Orden entsteht, der seinen dunklen Glauben predigt und viele Bürger zu seinem rechtschaffen-bösen Gottes bekehrt. In einem solchen Fall könnte es passieren, daß die Stadt von den neutralen Außenländern zur rechtschaffen-bösen Baator-Ebene abgleitet."

"Nach diesem Prinzip können ganze Unterebenen verschoben werden. Deshalb sind viele Kriege notwendigerweise Glaubenskriege. Sie sind das Werkzeug, mit dem Gebiete erobert und gehalten werden."
~ */
  IF ~~ THEN REPLY #45057 /* ~Hör weiter zu.~ */ GOTO 10
  IF ~~ THEN REPLY #45058 /* ~Hör auf zuzuhören und geh weg.~ */ DO ~SetGlobal("Lecture_3Planes","GLOBAL",2)
~ EXIT
END

IF ~~ THEN BEGIN 10 // from: 9.0
  SAY #45059 /* ~"Deshalb kann man sagen, daß die Macht der Gesinnung und des Glaubens auf die Gestalt der Ebenen einwirken. Die Vorlesung ist zu Ende."

"Möge der Glaube eure Taten leiten und die Ebenen nach eurem Willen formen. Lebt wohl."~ */
  IF ~~ THEN REPLY #45060 /* ~Geh weg.~ */ DO ~SetGlobal("Lecture_3Planes","GLOBAL",2)
~ EXIT
END

IF ~  True()
~ THEN BEGIN 11 // from:
  SAY #45061 /* ~Dieser Mann ist dünn und hat ein scharf geschnittenes Gesicht. Seine gelbe Haut ist voller Tätowierungen. Seine kalten, schwarzen Augen wandern durch den den Raum und über die Köpfe der Anwesenden hinweg. Er scheint eine Vorlesung zu halten.~ */
  IF ~~ THEN REPLY #45063 /* ~Bleib, um dem Vortrag zuzuhören.~ */ GOTO 0
  IF ~~ THEN REPLY #49738 /* ~Geh weg.~ */ EXIT
END
