// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DGLYVE.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\de_DE\dialog.tlk
// dialogF  : (none)

BEGIN ~DGLYVE~

IF ~  Global("Water","GLOBAL",3)
~ THEN BEGIN 0 // from: 3.0
  SAY #24037 /* ~Das Steingesicht schweigt. Ein paar Tropfen klaren Wassers rinnen aus seinem Augenwinkel, und die in das Gesicht eingemeißelte Grimasse hat sich entspannt.~ */
  IF ~~ THEN REPLY #24038 /* ~"Glyve, ich brauche noch mehr Antworten von dir..."~ */ GOTO 1
  IF ~  NearbyDialog("DMorte")
~ THEN REPLY #24039 /* ~"Also gut."~ */ EXTERN ~DMORTE~ 228
  IF ~  !NearbyDialog("DMorte")
~ THEN REPLY #24040 /* ~"Also gut."~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #24041 /* ~Das Gesicht bleibt ausdruckslos und still.~ */
  IF ~  NearbyDialog("DMorte")
~ THEN REPLY #24042 /* ~"Also gut."~ */ EXTERN ~DMORTE~ 228
  IF ~  !NearbyDialog("DMorte")
~ THEN REPLY #24043 /* ~"Also gut."~ */ EXIT
END

IF ~  Global("Water","GLOBAL",2)
~ THEN BEGIN 2 // from:
  SAY #24044 /* ~Glyves unbewegliche Augen scheinen dich angestrengt anzustarren, als du dich ihm näherst. "Hast... du entschieden ... ob du deine... Antwort schon willst?"~ */
  IF ~~ THEN REPLY #24045 /* ~"Ja, sag sie mir."~ */ DO ~SetGlobal("Water","GLOBAL",3)
~ GOTO 3
  IF ~~ THEN REPLY #24046 /* ~"Nein, noch nicht. Beantworte mir erst noch ein paar andere Fragen."~ */ GOTO 4
  IF ~~ THEN REPLY #24047 /* ~"Nein, noch nicht. Leb wohl, Glyve."~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 2.0 4.2 15.0
  SAY #24048 /* ~"Finde... die Frau, die... 'Nemelle' heißt. Sie wohnt im... Bezirk der Kuratoren... in Ober-Sigil. Ich weiß nicht... wo genau... Viel Glück ... bei *deiner* Suche... Unsterblicher." Die Stimme scheint allmählich zu verklingen.~ */
  IF ~~ THEN REPLY #24049 /* ~"Danke, Glyve. Ich hätte da noch ein paar Fragen."~ */ DO ~SetGlobal("Seek_Word","GLOBAL",1)
~ JOURNAL #66298 /* ~Glyve hat mir aufgetragen, eine Frau namens Nemelle im Bezirk der Kuratoren aufzusuchen, um das Wort zu finden, daß die volle Macht der Karaffe des endlosen Wassers entfesseln wird.~ */ GOTO 0
  IF ~~ THEN REPLY #24050 /* ~"Danke, Glyve. Leb wohl."~ */ DO ~SetGlobal("Seek_Word","GLOBAL",1)
~ JOURNAL #66298 /* ~Glyve hat mir aufgetragen, eine Frau namens Nemelle im Bezirk der Kuratoren aufzusuchen, um das Wort zu finden, daß die volle Macht der Karaffe des endlosen Wassers entfesseln wird.~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 2.1 5.1 6.1 7.1 8.1 9.1 10.2 11.2 12.2 13.2 14.1 16.0 18.0 18.1 19.0 22.1 23.0
  SAY #24051 /* ~"Was... wolltest... du wissen?"~ */
  IF ~~ THEN REPLY #24052 /* ~"Erzähl mir was über dich. Wie bist du in diese Situation geraten?"~ */ GOTO 5
  IF ~~ THEN REPLY #24053 /* ~"Was kannst du mir über die Katakomben um uns herum erzählen?"~ */ GOTO 13
  IF ~  Global("Water","GLOBAL",2)
~ THEN REPLY #24054 /* ~"Wenn ich's mir recht überlege, gib mir die versprochene Antwort jetzt."~ */ DO ~SetGlobal("Water","GLOBAL",3)
~ GOTO 3
  IF ~  Global("Water","GLOBAL",1)
~ THEN REPLY #24055 /* ~"Was sollte ich doch gleich für dich tun?"~ */ GOTO 9
  IF ~  Global("Water","GLOBAL",1)
PartyHasItem("Decant")
~ THEN REPLY #24056 /* ~"Ich habe die Karaffe für dich."~ */ GOTO 14
  IF ~~ THEN REPLY #24057 /* ~"Nichts. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 4.0
  SAY #24058 /* ~"Ich war einst... ein angesehener Führer... meiner Gemeinde... im Unteren Bezirk. Ein unbedeutender Herrscher... hat versucht, seine Macht auszubauen... auf Kosten meines Volkes... Meine Freunde... meine Verwandten... und Freunde und ich sprachen uns... gegen ihn aus."~ */
  IF ~~ THEN REPLY #24059 /* ~"Und was dann?"~ */ GOTO 6
  IF ~~ THEN REPLY #24060 /* ~"Weißt du was? Ach, vergiß es. Beantworte mir lieber noch ein paar Fragen."~ */ GOTO 4
  IF ~~ THEN REPLY #24061 /* ~"Ach, vergiß es. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 6 // from: 5.0
  SAY #24062 /* ~"Und dann... nahm er uns gefangen... einen nach dem anderen... und schloß unseren Geist und unsere Sinne... in diesen Fratzen ein... unter dem Graben... wo letztlich der ganze Dreck von Sigil... landet. Und dann... leitete er das Abwasser hinein... und ließ es in unsere Münder... und Nasen... und Augen fließen."~ */
  IF ~  Global("Water","GLOBAL",0)
~ THEN REPLY #24063 /* ~"Kann ich dir irgendwie helfen?"~ */ DO ~SetGlobal("Water","GLOBAL",1)
~ GOTO 7
  IF ~~ THEN REPLY #24064 /* ~"Verstehe. Ich hätte da noch ein paar Fragen..."~ */ GOTO 4
  IF ~~ THEN REPLY #24065 /* ~"Hm. Interessant. Leb wohl."~ */ EXIT
  IF ~~ THEN REPLY #24066 /* ~"Wie schrecklich. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 7 // from: 6.0
  SAY #24067 /* ~"Ich bin dazu verdammt... hier zu bleiben, bis... frisches Wasser meine Lippen berührt... Es gibt eine... magische Wasserkaraffe... in den... Untergegangenen Nationen. Bring sie mir... und laß mich daraus trinken... und ich werde dir von... jemandem erzählen... der dir dabei helfen kann... die ganze Macht der Karaffe zu entfalten... und du wirst nie wieder... Mangel an Wasser... haben."~ */
  IF ~~ THEN REPLY #24068 /* ~"Wo ist diese Karaffe?"~ */ JOURNAL #66299 /* ~Ein Steingesicht in den Katakomben der Weinenden Steine hat mir sein Schicksal erzählt: Seine Sinne sind an einen gemeißelten Steinkopf gebunden, durch den mit der Zeit der gesamte Dreck von Sigil fließen wird. Dieser Fluch kann durch einen Schluck reinen Wassers gebrochen werden. Anscheinend weiß ein Künstler/Sammler namens Chad, wo ich einen Flakon finden kann, der diese Bedingungen erfüllt.~ */ GOTO 8
  IF ~~ THEN REPLY #24069 /* ~"Interessant. Beantworte mir noch ein paar andere Fragen."~ */ GOTO 4
  IF ~~ THEN REPLY #24070 /* ~"Verstehe. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 8 // from: 7.0
  SAY #24071 /* ~"Ich weiß... nicht. Da war mal ... ein Künstler... ein gewisser Chad, der sich häufig... in diesen Tunneln aufhielt. Er wußte es. Finde ihn... Er kann's dir vielleicht sagen."~ */
  IF ~~ THEN REPLY #24072 /* ~"Und wie komme ich dahin?"~ */ GOTO 10
  IF ~~ THEN REPLY #24073 /* ~"Gut. Beantworte mir noch ein paar andere Fragen."~ */ GOTO 4
  IF ~  !NearbyDialog("DMorte")
~ THEN REPLY #24074 /* ~"Ich werd ihn finden. Mach's gut."~ */ EXIT
  IF ~  NearbyDialog("DMorte")
~ THEN REPLY #24075 /* ~"Ich werd ihn finden. Mach's gut."~ */ EXTERN ~DMORTE~ 229
  IF ~~ THEN REPLY #24076 /* ~"Ich seh mal, was ich machen kann. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 9 // from: 4.3
  SAY #24077 /* ~"Wasser... frisches Wasser... aus einer magischen Karaffe... in den Untergegangenen Nationen..."~ */
  IF ~~ THEN REPLY #24078 /* ~"Und wie komme ich dahin?"~ */ GOTO 10
  IF ~~ THEN REPLY #24079 /* ~"Verstanden. Beantworte mir noch ein paar andere Fragen."~ */ GOTO 4
  IF ~~ THEN REPLY #24080 /* ~"Verstanden. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 10 // from: 8.0 9.0
  SAY #24081 /* ~"Durch die Toten Lande,... wo die Toten herumlaufen ... und herrschen... oder durch die Gedankenlabyrinthe... wo Viele-als-Einer herrscht... Beide sind nicht ohne... Gefahren."~ */
  IF ~~ THEN REPLY #24082 /* ~"Tote Lande?"~ */ GOTO 11
  IF ~~ THEN REPLY #24083 /* ~"Viele-als-Einer?"~ */ GOTO 12
  IF ~~ THEN REPLY #24084 /* ~"Verstanden. Ich hätte da noch ein paar Fragen..."~ */ GOTO 4
  IF ~~ THEN REPLY #24085 /* ~"Verstanden. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 11 // from: 10.0 12.0 13.0
  SAY #24086 /* ~"Die Toten... haben auf ihre eigene Weise... das Leben erlangt. Sie beherrschen... einen Teil der... Katakomben. Sie streiten sich mit... Viele-als-Einer... um das Herzstück dieser... Tunnel."~ */
  IF ~~ THEN REPLY #24087 /* ~"Was weißt du noch über die Katakomben?"~ */ GOTO 13
  IF ~~ THEN REPLY #24088 /* ~"Erzähl mir was über Viele-als-Einer."~ */ GOTO 12
  IF ~~ THEN REPLY #24089 /* ~"Beantworte mir noch ein paar Fragen..."~ */ GOTO 4
  IF ~~ THEN REPLY #24090 /* ~"Danke, Glyve. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 12 // from: 10.1 11.1 13.1
  SAY #24091 /* ~"Hast du von den... Schädelratten gehört? Wenn sie sich sammeln... werden sie mächtiger... ein geeinter Geist. Sie und ihre Untergebenen... Werratten... streben nach der Oberherrschaft... über die unterirdischen Tunnel. Sie führen Krieg mit ... den Toten Landen."~ */
  IF ~~ THEN REPLY #24101 /* ~"Erzähl mir was über die Toten Lande."~ */ GOTO 11
  IF ~~ THEN REPLY #24102 /* ~"Was weißt du noch über die Katakomben?"~ */ GOTO 13
  IF ~~ THEN REPLY #24103 /* ~"Ich hätte da noch ein paar Fragen."~ */ GOTO 4
  IF ~~ THEN REPLY #24105 /* ~"Danke, Glyve. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 13 // from: 4.1 11.0 12.1
  SAY #24108 /* ~"Die Katakomben wurden geschaffen... vor zig Äonen... um die Toten der Stadt aufzunehmen..., die die ... angenehme Fürsorge der Staubmenschen nicht wollten. Sie sind zur... Müllhalde der Stadt geworden... wo Monster kaum zu sehen sind... wo Menschen umherziehen wie... Aasgeier unter Aasgeiern. Viele-als-Einer bewacht diese Tunnel... und hat das Wesen vieler... manipuliert. Die Toten Lande... ziehen ebenfalls umher... und wirken... der Verwüstung ... entgegen, die die eindringenden Menschen... anrichten."~ */
  IF ~~ THEN REPLY #24111 /* ~"Erzähl mir was über die Toten Lande."~ */ GOTO 11
  IF ~~ THEN REPLY #24113 /* ~"Erzähl mir was über Viele-als-Einer."~ */ GOTO 12
  IF ~~ THEN REPLY #24115 /* ~"Ich hätte da noch ein paar Fragen."~ */ GOTO 4
  IF ~~ THEN REPLY #24116 /* ~"Danke, Glyve. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 14 // from: 4.4 17.1
  SAY #24118 /* ~Ein Hauch von Eifer mischt sich in Glyves tote Stimme: "Du hast sie? Gieß' ein bißchen... von ihrem Wasser über... meine Lippen..., und ich werde dir sagen..., was ich dir versprochen habe... zu erzählen."
~ */
  IF ~~ THEN REPLY #24120 /* ~"Hier, bitte sehr."~ */ DO ~SetGlobal("Water","GLOBAL",2)
AddexperienceParty(5000)
~ GOTO 15
  IF ~~ THEN REPLY #24122 /* ~"Warte. Ich hätte da noch ein paar Fragen an dich."~ */ GOTO 4
END

IF ~~ THEN BEGIN 15 // from: 14.0
  SAY #24123 /* ~Das klare Wasser aus der Wasserkaraffe rinnt über die steinernen Lippen und verdünnt die schmutzige Flüssigkeit, die sich aus den Löchern ergießt. Du siehst, wie das Wasser des Grabens allmählich vollständig abläuft und die schmutzige Färbung durch die Klarheit des reinen Wassers ersetzt wird. Glyve juchzt vor Freude. Nach einer Weile sagt er: "Willst du deine Antwort jetzt haben oder später?~ */
  IF ~~ THEN REPLY #24125 /* ~"Gib sie mir jetzt."~ */ DO ~SetGlobal("Water","GLOBAL",3)
~ GOTO 3
  IF ~~ THEN REPLY #24127 /* ~"Später. Ich hätte da noch ein paar Fragen an dich."~ */ GOTO 16
  IF ~~ THEN REPLY #24128 /* ~"Später. Leb wohl, Glyve."~ */ GOTO 16
END

IF ~~ THEN BEGIN 16 // from: 15.1 15.2
  SAY #24130 /* ~"Ich werde... mich bei... Bewußtsein halten,... bis du zurückkommst..., um die Antwort zu hören..."~ */
  IF ~~ THEN REPLY #24132 /* ~"Gut. Und jetzt beantworte mir ein paar Fragen."~ */ GOTO 4
  IF ~~ THEN REPLY #24137 /* ~"Gut. Leb wohl."~ */ EXIT
END

IF ~  Global("Water","GLOBAL",1)
~ THEN BEGIN 17 // from:
  SAY #24138 /* ~"Hast du... die Karaffe gefunden, von der... ich gesprochen hab'?"~ */
  IF ~~ THEN REPLY #24140 /* ~"Noch nicht."~ */ GOTO 18
  IF ~  PartyHasItem("Decant")
~ THEN REPLY #24142 /* ~"Ja."~ */ GOTO 14
END

IF ~~ THEN BEGIN 18 // from: 17.0
  SAY #24144 /* ~"Ich flehe dich an... Bitte finde sie... und lindere meine Qualen."~ */
  IF ~~ THEN REPLY #24145 /* ~"Ich tu mein Bestes. In der Zwischenzeit hätte ich da noch ein paar Fragen..."~ */ GOTO 4
  IF ~~ THEN REPLY #24146 /* ~"Mal sehen. Beantworte mir noch ein paar Fragen..."~ */ GOTO 4
  IF ~~ THEN REPLY #24147 /* ~"Ich versuch's ja. Leb wohl."~ */ EXIT
  IF ~~ THEN REPLY #24148 /* ~"Vielleicht. Leb wohl."~ */ EXIT
END

IF ~  Global("Glyve_Talk","AR1400",1)
~ THEN BEGIN 19 // from:
  SAY #24149 /* ~"Du bist zurück... Wie komme ich... zu dieser Ehre?"~ */
  IF ~~ THEN REPLY #24151 /* ~"Du müßtest mir ein paar Fragen beantworten."~ */ GOTO 4
  IF ~~ THEN REPLY #24153 /* ~"Gute Frage. Leb wohl."~ */ EXIT
END

IF ~  Global("Glyve_Talk","AR1400",0)
~ THEN BEGIN 20 // from:
  SAY #24155 /* ~Als du an einem der verzerrten Steingesichter an den Mauern vorbeigehst, spricht es dich mit krächzender Stimme an, die an das Verschieben von Felsbrocken erinnert. "Unsterblicher... sieh mich an. Ich bin... Glyve. Ich würde gern... mit dir reden."~ */
  IF ~~ THEN REPLY #24157 /* ~"Woher weißt du, daß ich unsterblich bin?"~ */ DO ~SetGlobal("Glyve_Talk","AR1400",1)
~ GOTO 21
  IF ~~ THEN REPLY #24158 /* ~"Was wolltest du sagen?"~ */ DO ~SetGlobal("Glyve_Talk","AR1400",1)
~ GOTO 22
  IF ~~ THEN REPLY #24160 /* ~"Glaub' ich nicht."~ */ DO ~SetGlobal("Glyve_Talk","AR1400",1)
~ GOTO 22
END

IF ~~ THEN BEGIN 21 // from: 20.0
  SAY #24161 /* ~"Ich sehe... ein brennendes Anliegen... in deinen Gedanken. Ich sehe... viele Dinge im fallenden... Staub dieser... Tunnel. Dir fehlt... etwas sehr Wichtiges..., und das hält dich... von der süßen Umarmung des Todes fern."~ */
  IF ~~ THEN REPLY #24162 /* ~"Was wolltest du mir sagen?"~ */ GOTO 22
  IF ~~ THEN REPLY #24163 /* ~"Alles schön und gut, aber..."~ */ GOTO 22
END

IF ~~ THEN BEGIN 22 // from: 20.1 20.2 21.0 21.1
  SAY #24165 /* ~"Höre: An diesem Ort lauern... eine Menge Gefahren auf dich. Verrat erwartet dich... an der Oberfläche... und dein Weg ist... lang und steinig. Am Ende... wirst du finden..., was du gesucht hast... Aber es kann sein, daß du es dann... nicht mehr willst."~ */
  IF ~~ THEN REPLY #24167 /* ~"Bist du so eine Art Orakel?"~ */ GOTO 23
  IF ~~ THEN REPLY #24168 /* ~"Vielleicht kannst du mir dann ein paar Antworten geben..."~ */ GOTO 4
  IF ~~ THEN REPLY #24169 /* ~"Verstehe. Vielleicht komm ich wieder."~ */ EXIT
END

IF ~~ THEN BEGIN 23 // from: 22.0
  SAY #24170 /* ~"Orakel? Nein... Ich beobachte. Das ist alles."~ */
  IF ~~ THEN REPLY #24171 /* ~"Wenn das so ist, kannst du mir vielleicht ein paar Fragen beantworten..."~ */ GOTO 4
  IF ~~ THEN REPLY #24172 /* ~"Das ist alles? Dann vergiß es. Leb wohl."~ */ EXIT
END
