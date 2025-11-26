// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DSOSTONE.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\de_DE\dialog.tlk
// dialogF  : (none)

BEGIN ~DSOSTONE~

IF ~  True()
~ THEN BEGIN 0 // from:
  SAY #64887 /* ~Dieser dunkle Stein ist staubbedeckt, als läge er schon seit Jahren hier. Er sieht aus wie ein abgebrochenes Stück einer der Statuen. Der Stein ist voll von einer ganzen Reihe seltsamer Runen und Markierungen, und irgendwie fühlt er sich eigenartig vertraut an.~ */
  IF ~~ THEN REPLY #64888 /* ~Untersuche den Stein...~ */ GOTO 1
  IF ~~ THEN REPLY #64889 /* ~Nimm den Stein weg.~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #64890 /* ~Als du den Stein berührst, erscheint auf der Seite ein Mund, der mit deiner Stimme zu sprechen beginnt. Die Stimme hallt, als ob sie in einer großen Kammer sprechen würde.~ */
  IF ~~ THEN REPLY #64914 /* ~Hör zu...~ */ GOTO 2
  IF ~~ THEN REPLY #64915 /* ~Gib den Stein frei, laß ihn verstummen.~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.0
  SAY #64891 /* ~"Dak'kon, Morte, Xachariah, Deionarra - das bin ich. Ich habe eine kleine Zaubernachricht auf dem Stein hinterlassen. Hör sie dir gut an, und folge meinen Anweisungen."~ */
  IF ~~ THEN REPLY #64912 /* ~Höre weiter zu.~ */ GOTO 3
  IF ~~ THEN REPLY #64913 /* ~Laß den Stein verstummen.~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 2.0
  SAY #64892 /* ~Die Stimme holt Luft. Sie klingt verstört: "Ich weiß nicht, wie wir getrennt wurden, aber ich glaube, das Portal, das uns hergebracht hat, hat uns getrennt. Nur ein kleiner Rückschlag. Wenn du diesen Stein findest, dann bleib solange bei ihm, bis ich wieder bei dir bin. Meine Einsichten sagen mir, daß diese Festung von der Größe mehrerer Städte ist. Je weniger du dich also bewegst, desto leichter kann ich dich finden."~ */
  IF ~~ THEN REPLY #64910 /* ~Höre weiter zu.~ */ GOTO 4
  IF ~~ THEN REPLY #64911 /* ~Laß den Stein verstummen.~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 3.0
  SAY #64893 /* ~Die Stimme holt erneut Luft und klingt nun etwas kühler, als ob sie etwas untersuchen und darüber sprechen würde: "Ich habe mich durch das erste der Gewölbe geschlagen. Dieser Ort war *randvoll* von Schatten, viel zu viele, um den Kampf bestehen zu können. Wenn du auf diese Schatten triffst, dann lauf, bevor sie dich umzingeln können, denn sie sind viel stärker als alle anderen Schatten, denen wir je begegnet sind. Ich glaube, die Energien der Ebenen beeinflussen sie irgendwie, machen sie stärker."~ */
  IF ~~ THEN REPLY #64908 /* ~Höre weiter zu.~ */ GOTO 5
  IF ~~ THEN REPLY #64909 /* ~Laß den Stein verstummen.~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 4.0
  SAY #64894 /* ~Die Stimme holt wieder Luft: "Es gab eine Reihe von Reliquien des großen Krieges im Gewölbe, auf denen ich mich hin- und herschieben konnte. Irgendwie schaffte ich es, die Schatten zu jeder Maschine zu locken, und dann schob ich mich immer weg, als sie dorthin schwärmten, wo ich vorher gewesen war. Das hat mir etwas Zeit verschafft. Genug Zeit, um zu entkommen: Als ich vier Reliquien benutzt hatte, öffnete sich ein Portal nach draußen." Die Stimme bricht ab, als ob dem Sprecher gerade irgend etwas zugestoßen ist. ~ */
  IF ~~ THEN REPLY #64906 /* ~Höre weiter zu.~ */ DO ~SetGlobal("Freed_Fortress_Shadows","GLOBAL",1)
~ GOTO 6
  IF ~~ THEN REPLY #64907 /* ~Laß den Stein verstummen.~ */ EXIT
END

IF ~~ THEN BEGIN 6 // from: 5.0
  SAY #64895 /* ~"Jetzt wird mir klar, daß das Gewölbe wohl irgendeine seltsame Art von Pförtnerhaus gewesen sein könnte. Die Reliquien scheinen es von innerhalb *und* außerhalb der Festung abzuschotten. Wer oder was immer diesen Ort gebaut hat, wollte die Schatten unter Kontrolle haben, damit sie nicht frei herumlaufen. Die Schatten haben keinerlei Substanz, also können sie nicht die Maschinen benutzen, um aus dem Gewölbe zu entkommen. Hmmm. Darüber muß ich noch ein wenig nachdenken..."~ */
  IF ~~ THEN REPLY #64904 /* ~Höre weiter zu.~ */ GOTO 7
  IF ~~ THEN REPLY #64905 /* ~Laß den Stein verstummen.~ */ EXIT
END

IF ~~ THEN BEGIN 7 // from: 6.0
  SAY #64896 /* ~"Wie dem auch sei - Ich bin in einem Raum mit einem großen Kristall, und ich untersuche ihn genauer, bevor ich weitermache." Die Stimme stoppt, als ob der Sprecher sich umsieht. "Es gibt fünf Statuen in dem Raum, und sie sehen aus wie ich. Und außerdem sehen sie *alt* aus, als wenn sie schon eine ganze Zeit hier wären."~ */
  IF ~~ THEN REPLY #64902 /* ~Höre weiter zu.~ */ GOTO 8
  IF ~~ THEN REPLY #64903 /* ~Laß den Stein verstummen.~ */ EXIT
END

IF ~~ THEN BEGIN 8 // from: 7.0
  SAY #64897 /* ~"Was den Kristall angeht... er sieht nicht aus, als gehöre er in die Festung, und seine Größe und Form erinnern mich an etwas, das ich in den Annalen gelesen habe, eine Art Dimensionsgefängnis, das die Seele spaltet. Ich glaube, es war kein Zufall, daß das Portal des Hauptgewölbes mich hierher teleportierte: Ich glaube, der Kristall ist eine Falle, also faß ihn *nicht* an, bis wir wieder zusammen sind. Das meine ich *ernst*, Morte."~ */
  IF ~~ THEN REPLY #64900 /* ~Höre weiter zu.~ */ GOTO 9
  IF ~~ THEN REPLY #64901 /* ~Laß den Stein verstummen.~ */ EXIT
END

IF ~~ THEN BEGIN 9 // from: 8.0
  SAY #64898 /* ~"Ich werde jetzt versuchen, euch alle zu finden. Wenn du diesen Lesestein findest, dann bewege dich *nicht* von der Stelle, oder ich finde dich vielleicht nie wieder. Ich habe ein paar Vorräte für dich im Sockel einer der Statuen hinterlassen. Verschwende sie nicht. Wer weiß, wie lange es dauert, bis wir unseren Feind finden und herauskommen, vielleicht brauchen wir also die Vorräte später noch. Wir sehen uns bald."~ */
  IF ~~ THEN REPLY #64899 /* ~Laß den Stein verstummen.~ */ EXIT
END
