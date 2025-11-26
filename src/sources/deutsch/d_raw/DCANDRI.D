// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DCANDRI.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\de_DE\dialog.tlk
// dialogF  : (none)

BEGIN ~DCANDRI~

IF ~  Global("Ingress","GLOBAL",7)
!Dead("Ingress")
~ THEN BEGIN 0 // from:
  SAY #3068 /* ~Candrian steht auf, als du dich näherst. "Hier, das hat mir die Zahnfrau für dich gegeben", sagt er, wobei er die Hand ausstreckt. "Sie wollte ihre Dankbarkeit zum Ausdruck bringen, sozusagen abrechnen und einen Schlußstrich unter die verdammte Sache ziehen." In seiner Handfläche blitzen Ingress tanzende Zähne, die er vorsichtig in deine Hand legt. "Viel Spaß damit, Sucher."~ */
  IF ~~ THEN REPLY #3364 /* ~"Ich hätte noch ein paar andere Fragen..."~ */ DO ~SetGlobal("Ingress","GLOBAL",8)
GiveItemCreate("ICteeth",Protagonist,1,0,0)
AddexperienceParty(750)
~ JOURNAL #28753 /* ~Als ich zu Candrian zurückkehrte, nachdem er Ingress aus Sigil befreit hatte, gab er mir ein Geschenk von ihr: ihre tanzenden Zähne. Wie reizend.~ */ GOTO 5
  IF ~~ THEN REPLY #12009 /* ~"Leb wohl."~ */ DO ~SetGlobal("Ingress","GLOBAL",8)
GiveItemCreate("ICteeth",Protagonist,1,0,0)
AddexperienceParty(750)
~ JOURNAL #28753 /* ~Als ich zu Candrian zurückkehrte, nachdem er Ingress aus Sigil befreit hatte, gab er mir ein Geschenk von ihr: ihre tanzenden Zähne. Wie reizend.~ */ EXIT
END

IF ~  Global("Ingress","GLOBAL",8)
~ THEN BEGIN 1 // from:
  SAY #12010 /* ~Wieder fällt dir die scheinbare Körperlosigkeit dieses Mannes auf, und wieder fühlst du dich durch seine blaßblauen Augen wie festgenagelt. "Hast du auf deinen Reisen gefunden, was du suchtest?"~ */
  IF ~~ THEN REPLY #12011 /* ~"Noch nicht. Ich hätte noch ein paar Fragen an dich."~ */ GOTO 5
  IF ~~ THEN REPLY #12012 /* ~"Noch nicht. Leb wohl."~ */ EXIT
END

IF ~  NumTimesTalkedTo(0)
~ THEN BEGIN 2 // from:
  SAY #12013 /* ~Du siehst einen gutmütig aussehenden Mann mit sanften, in die Ferne schweifenden Augen. Seine Kleider sind aus geschmeidigem Leder, und er hat verschiedenes Gerät und andere Dinge bei sich, wie Seile, Nägel, Zunderbüchsen und leere Luftphiolen. Er wirkt irgendwie abwesend. Seine Existenz hat etwas Körperloses, als hätte er an Substanz verloren. Doch als er dich anschaut, ist sein Blick fest und entschlossen. "Sei gegrüßt, Suchender."~ */
  IF ~~ THEN REPLY #12014 /* ~"Sei gegrüßt."~ */ GOTO 4
  IF ~~ THEN REPLY #12015 /* ~"Leb wohl."~ */ EXIT
END

IF ~  NumTimesTalkedToGT(0)
~ THEN BEGIN 3 // from:
  SAY #12016 /* ~Wieder fällt dir die scheinbare Körperlosigkeit dieses Mannes auf, und wieder fühlst du dich durch seine blaßblauen Augen wie festgenagelt. "Hast du auf deinen Reisen gefunden, was du suchtest?"~ */
  IF ~~ THEN REPLY #12017 /* ~"Noch nicht. Ich hätte noch ein paar Fragen an dich."~ */ GOTO 5
  IF ~~ THEN REPLY #12018 /* ~"Noch nicht. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 2.0
  SAY #12019 /* ~Vorsichtig stellt er seinen Becher ab und schenkt dir seine gesamte Aufmerksamkeit. "Ich kenne die entferntesten Stellen des Multiversums und bin zurückgekehrt, um davon zu erzählen. Ich bin über die Körper toter Götter gewandelt und habe mich auf der Astralebene über Mondstrahlen vor tausenden schreiender Githyanki-Ritter gerettet. Ich habe den Rand der Existenz überschritten und mußte zusehen, wie meine Substanz dahinschwand. Was kann ich für dich tun?"
~ */
  IF ~~ THEN REPLY #12020 /* ~"Ich hätte ein paar Fragen an dich."~ */ GOTO 5
  IF ~~ THEN REPLY #12021 /* ~"Nichts. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 0.0 1.0 3.0 4.0 6.0 7.1 8.5 9.5 10.2 11.6 12.2 13.1 14.1 15.1 16.3 17.2 18.5 19.5 20.5 21.2 22.2 23.2 24.6 25.4 26.3 27.3 28.2 29.2 30.2 31.2 32.2 33.1 34.2 35.2 36.3 37.1 38.1 39.1 40.1 41.2 42.0 43.0 44.0 45.0
  SAY #12022 /* ~"Vielleicht kann ich dir einige Antworten geben. Schieß los."~ */
  IF ~  !Dead("Ingress")
Global("Ingress","GLOBAL",5)
~ THEN REPLY #12023 /* ~"Ich habe eine Frau namens Ingress mit *sehr* schlechten Zähnen getroffen. Sie meinte, sie sei durch ein Portal aus einer anderen Welt gekommen, das sich öffnet, wenn man bei zwei gekreuzten Bäumen eine bestimmte Melodie summt. Kannst du sie nach Hause bringen?"~ */ DO ~SetGlobal("Ingress","GLOBAL",6)
~ GOTO 6
  IF ~~ THEN REPLY #12024 /* ~"Wer bist du?"~ */ GOTO 7
  IF ~~ THEN REPLY #12025 /* ~"Was machst du da?"~ */ GOTO 40
  IF ~~ THEN REPLY #12026 /* ~"Was ist das für ein Ort hier?"~ */ GOTO 41
  IF ~  Global("Journal","GLOBAL",0)
~ THEN REPLY #12027 /* ~"Ich suche nach einem verlorengegangenen Journal."~ */ GOTO 44
  IF ~  Global("Pharod","GLOBAL",0)
~ THEN REPLY #12028 /* ~"Kennst du einen Sammler namens Pharod?"~ */ GOTO 45
  IF ~~ THEN REPLY #12029 /* ~"Vergiß es. Gehab dich wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 6 // from: 5.0
  SAY #12030 /* ~Er denkt kurz nach. "Ich kenne das Portal, von dem du gesprochen hast, allerdings habe ich es in den letzten dreißig Jahren nicht benutzt. Ich bring sie nach Hause, Suchender. Sag ihr, sie soll auf mich warten. Wir treffen uns dann wieder hier, und ich sag dir, ob es geklappt hat."~ */
  IF ~~ THEN REPLY #12031 /* ~"Danke. Ich hätte noch ein paar Fragen..."~ */ JOURNAL #28754 /* ~Ich habe mit Candrian über Ingress gesprochen, und er sagte, er würde sie heimführen. Er bat mich, ihr auszurichten, sie solle auf ihn warten. Dann soll ich ihn wieder in der Schwelenden Leiche treffen.~ */ GOTO 5
  IF ~~ THEN REPLY #12032 /* ~"Danke. Leb wohl."~ */ JOURNAL #28754 /* ~Ich habe mit Candrian über Ingress gesprochen, und er sagte, er würde sie heimführen. Er bat mich, ihr auszurichten, sie solle auf ihn warten. Dann soll ich ihn wieder in der Schwelenden Leiche treffen.~ */ EXIT
END

IF ~~ THEN BEGIN 7 // from: 5.1
  SAY #12033 /* ~"Ich bin Candrian Griesgram, Reisender, Träumer, Geschichtenerzähler und so weiter."~ */
  IF ~~ THEN REPLY #12034 /* ~"Du bist ein Reisender? Erzähl mir was über die Ebenen."~ */ GOTO 8
  IF ~~ THEN REPLY #12035 /* ~"Ich hätte da noch ein paar Fragen."~ */ GOTO 5
  IF ~~ THEN REPLY #12036 /* ~"Danke. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 8 // from: 7.0
  SAY #12037 /* ~"Ich bin müde, Suchender, so müde... Ich komme gerade aus dem Nichts. Ich werde dir antworten, so gut ich kann. Allerdings kann ich nicht versprechen, daß dich meine Antworten zufriedenstellen werden. Was möchtest du wissen? Etwas über die Äußeren Ebenen, die Materielle Ebene oder die Inneren Ebenen?"~ */
  IF ~~ THEN REPLY #12038 /* ~"Wo liegt der Unterschied?"~ */ GOTO 10
  IF ~~ THEN REPLY #12039 /* ~"Erzähl mir was über die Äußeren Ebenen."~ */ GOTO 11
  IF ~~ THEN REPLY #12040 /* ~"Erzähl mir was über die Inneren Ebenen."~ */ GOTO 35
  IF ~~ THEN REPLY #12041 /* ~"Erzähl mir was über die Materielle Ebene."~ */ GOTO 39
  IF ~~ THEN REPLY #12042 /* ~"Gerade zurück aus dem Nichts? Was meinst du damit?"~ */ GOTO 36
  IF ~~ THEN REPLY #12043 /* ~"Keine. Aber ich hätte noch ein paar Fragen..."~ */ GOTO 5
  IF ~~ THEN REPLY #12044 /* ~"Keine. Leb wohl."
~ */ EXIT
END

IF ~~ THEN BEGIN 9 // from: 13.0 17.1 18.4 19.3 20.4 34.0 35.1 36.2 37.0 38.0 39.0
  SAY #12045 /* ~"Du möchtest mehr über die Ebenen wissen? Dann frag, und ich werde dir antworten, so gut ich kann. Interessieren dich die Äußeren Ebenen, die Materielle Ebene oder die Inneren Ebenen?"~ */
  IF ~~ THEN REPLY #12046 /* ~"Wo liegt der Unterschied?"~ */ GOTO 10
  IF ~~ THEN REPLY #12047 /* ~"Erzähl mir was über die Äußeren Ebenen."~ */ GOTO 11
  IF ~~ THEN REPLY #12048 /* ~"Erzähl mir was über die Inneren Ebenen."~ */ GOTO 35
  IF ~~ THEN REPLY #12049 /* ~"Erzähl mir was über die Materielle Ebene."~ */ GOTO 39
  IF ~~ THEN REPLY #12050 /* ~"Was hast du damit gemeint, als du vorhin vom 'Nichts' gesprochen hast?"~ */ GOTO 36
  IF ~~ THEN REPLY #12051 /* ~"Keine. Aber ich hätte noch ein paar Fragen..."~ */ GOTO 5
  IF ~~ THEN REPLY #12052 /* ~"Keine. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 10 // from: 8.0 9.0
  SAY #12053 /* ~"Der Unterschied liegt in der Substanz, Suchender. Die Inneren Ebenen bestehen aus Materie, physikalischer Substanz. Sie sind die Bausteine des Multiversums, denn aus ihnen entspringt der Glaube in die Elemente. Die Inneren Ebenen sind verbunden mit der Ätherischen Ebene - der Ebene des Potentiellen, wie viele sie nennen, wo die Elemente in die Welten der Sterblichen verwandelt werden. Hat man die Ätherische Ebene einmal passiert, kommt man zur Materiellen Ebene, wo alle Arten von Sterblichen, Monstern, Mythen und Maschinen vorkommen. Dort entsteht der Glaube, und von dort kommen auch die Geister, die die Äußeren Ebenen gestalten. Wenn ein Sterblicher stirbt, passiert er die Astralebene, einen Nicht-Ort, der aus Gedanken und mentaler Energie besteht. Sie ist in allen Dingen und auch wieder in keinen enthalten. Sie ist unter anderem paradox und schleust Geister in den Großen Ring. Soweit alles klar?"~ */
  IF ~~ THEN REPLY #12054 /* ~"Ja. Erzähl weiter."~ */ GOTO 11
  IF ~~ THEN REPLY #12055 /* ~"Ich bin mir nicht sicher."~ */ GOTO 12
  IF ~~ THEN REPLY #12056 /* ~"Vergiß dieses Thema. Ich habe ein paar andere Fragen..."~ */ GOTO 5
  IF ~~ THEN REPLY #12057 /* ~"Erzähl mir später mehr davon. Auf bald."~ */ EXIT
END

IF ~~ THEN BEGIN 11 // from: 8.1 9.1 10.0 12.1
  SAY #12058 /* ~"Nun... die Äußeren Ebenen... Wo soll ich anfangen? Kennst du die Grundregeln der Ebenen, auf denen alle anderen aufbauen? Kennst du die Zusammensetzung der Äußeren Ebenen? Kennst du den Großen Ring und seine Abteilungen in unserem Herzen? Kennst du die einzelnen Ebenen? Jede von diesen führt zur nächsten. Am besten, man fängt bei der ersten an."~ */
  IF ~  Global("Know_Rule_Of_3","GLOBAL",1)
~ THEN REPLY #12059 /* ~"Nenn mir die Grundregeln."~ */ GOTO 14
  IF ~~ THEN REPLY #12060 /* ~"Erzähl mir was über den Aufbau der Ebenen."~ */ GOTO 15
  IF ~~ THEN REPLY #12061 /* ~"Erzähl mir was über den Großen Ring und seine einzelnen Einheiten."~ */ GOTO 17
  IF ~~ THEN REPLY #12062 /* ~"Erzähl mir was über die einzelnen Ebenen."~ */ GOTO 18
  IF ~~ THEN REPLY #12063 /* ~"Erzähl mir lieber was über die Inneren Ebenen."~ */ GOTO 35
  IF ~~ THEN REPLY #12064 /* ~"Erzähl mir lieber was über die Materielle Ebene."~ */ GOTO 39
  IF ~~ THEN REPLY #12065 /* ~"Vergiß es. Ich hätte ein paar andere Fragen..."~ */ GOTO 5
  IF ~~ THEN REPLY #12066 /* ~"Vielleicht sollten wir das später machen. Leb wohl."~ */ EXIT
  IF ~  Global("Know_Rule_Of_3","GLOBAL",0)
~ THEN REPLY #28755 /* ~"Erzähl mir die wichtigsten Regeln."~ */ DO ~SetGlobal("Know_Rule_Of_3","GLOBAL",1)
~ GOTO 14
END

IF ~~ THEN BEGIN 12 // from: 10.1
  SAY #12160 /* ~"Die Inneren Ebenen sind Substanz. Sie schaffen Materie. Sie führen zur Materiellen Ebene, die Leben und Tod und die Geburt von Gedanken ist. Die Materielle Ebene führt zu den Äußeren Ebenen, die zu fester Substanz gewordener Glaube sind; dort wird den Gedanken Form gegeben. Ist das einfacher für dich?"~ */
  IF ~~ THEN REPLY #12161 /* ~"Ich verstehe immer noch nicht."~ */ GOTO 13
  IF ~~ THEN REPLY #12162 /* ~"Ja. Erzähl weiter."~ */ GOTO 11
  IF ~~ THEN REPLY #12163 /* ~"Beantworte mir nur noch ein paar andere Fragen..."~ */ GOTO 5
  IF ~~ THEN REPLY #12164 /* ~"Dann gehe ich wohl besser. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 13 // from: 12.0
  SAY #12165 /* ~"Unglücklicherweise habe ich es dir schon so gut erklärt, wie ich kann. Aber denk daran: Der Ort, an dem du stehst, ist keine echte Materie, sondern er wurde durch die Kraft des gesamten, auf den Materiellen und Äußeren Ebenen existierenden Glaubens geschaffen. Er kann durch Glauben verändert werden, und deshalb unterliegt er dem Wandel. Er kann nur durch die Kraft der Gedanken geändert und gewandelt werden."~ */
  IF ~~ THEN REPLY #12166 /* ~"Also gut. Erzähl mir von den Ebenen."~ */ GOTO 9
  IF ~~ THEN REPLY #12167 /* ~"Ich hätte da noch ein paar Fragen."~ */ GOTO 5
  IF ~~ THEN REPLY #12168 /* ~"Ich muß jetzt gehen. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 14 // from: 11.0 11.8
  SAY #12169 /* ~"Es gibt drei Regeln, die du dir merken mußt. Die erste ist die Regel der Drei: Wenn du zwei Dinge siehst, halte nach einem dritten Ausschau. Die zweite Regel heißt "Das Zentrum des Multiversums": Der Kosmos ist so groß, Suchender, daß jeder Ort, an dem du dich gerade befindest, eigentlich auch das Zentrum sein kann. Manche nennen Sigil das Zentrum, und sie haben recht - aber sie hätten auch recht, wenn sie irgendeinen Punkt in den endlosen Weiten von Dschehenna das Zentrum nennen würden. Das Multiversum hat keine Grenzen, und deshalb gibt es auch kein Zentrum. Und die dritte Regel ist die Einheit der Ringe: Alle Dinge sind eigentlich Ringe - Ringe haben keinen Anfang und kein Ende: Der große Ring der Äußeren Ebenen, der Ring der Form Sigils, der Ring der Elementarebenen - selbst die Mächte denken in Ringen; Kreise, Kreise und nochmals Kreise."~ */
  IF ~~ THEN REPLY #12170 /* ~"Erzähl mir vom Aufbau der Ebenen."~ */ GOTO 15
  IF ~~ THEN REPLY #12171 /* ~"Ich hätte da noch ein paar Fragen."~ */ GOTO 5
  IF ~~ THEN REPLY #12172 /* ~"Laß uns später noch mal darüber sprechen. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 15 // from: 11.1 14.0
  SAY #12173 /* ~"Die Äußeren Ebenen wurden aus und durch Glauben, Gedanken und Vertrauen geschaffen. Sie erhalten ihre vorgestellte Form von der Materiellen Ebene und nehmen die unglaublichsten Formen an, allein durch die Anhäufung von Glauben erschaffen. Der Glaube erschafft die Ebenen. Der Glaube ist hier die Macht. Ändere den Glauben, und du änderst das Wesen der Realität. Die Wesen, die hier geboren werden - die auf den Ebenen Geborenen, wie beispielsweise die Scheusale und die Himmelskreaturen - sind wahrhaftig aus den Gedanken und Vorstellungen der Sterblichen geboren. Sie stehen alle für eine Art von Ideal, und je mächtiger das Ideal ist, desto mächtiger ist auch das Wesen - daher ist das Wesen, das für die Liebe steht, das mächtigste von allen."~ */
  IF ~~ THEN REPLY #12174 /* ~"Erzähl weiter."~ */ GOTO 16
  IF ~~ THEN REPLY #12175 /* ~"Ich hätte noch ein paar Fragen..."~ */ GOTO 5
  IF ~~ THEN REPLY #12176 /* ~"Laß uns später noch mal darauf zurückkommen. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 16 // from: 15.0
  SAY #12177 /* ~"Deshalb leben die Mächte - die Götter, wie manche sie nennen - hier draußen. Hierher kommt jeglicher Glaube an sie - hier sind sie am reinsten und am stärksten. Ihre Reiche sind Erweiterungen ihres eigenen Wesens, Manifestationen ihrer göttlichen Essenz, und das alles durch Glauben geformt."~ */
  IF ~~ THEN REPLY #12178 /* ~"Die Ebenen sind also auf Glauben aufgebaut? Erzähl mir jetzt was über den Großen Ring."~ */ GOTO 17
  IF ~~ THEN REPLY #12179 /* ~"Erzähl mir was über die Inneren Ebenen."~ */ GOTO 35
  IF ~~ THEN REPLY #12180 /* ~"Erzähl mir von der Materiellen Ebene."~ */ GOTO 39
  IF ~~ THEN REPLY #12181 /* ~"Ich hätte da noch ein paar Fragen."~ */ GOTO 5
  IF ~~ THEN REPLY #12182 /* ~"Das reicht für's erste. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 17 // from: 11.2 16.0
  SAY #12183 /* ~"In der losen Einheit der Ebenenreisenden sehen wir die unendlichen Äußeren Ebenen als einen Ring, der die Ebene der äußersten Neutralität umgibt - die Außenländer. Die Säule, auf dessen Spitze Sigil sitzt, befindet sich im Zentrum der Außenländer. Je weiter man sich von der Säule entfernt, desto weniger neutral wird die Ebene, bis sie in die benachbarten Ebenen übergeht. Jede dieser Ebenen drückt gegen die Außenländer und dreht sich in Gesetz und Chaos, in Gut und Böse. Die Große Straße bildet die Grenzlinie zwischen den Außenländern und den Städten der Portale, die um die Portale zu diesen Ebenen herum aus dem Boden schießen. Hinter den Torstädten liegen die Hinterlande, unerforschtes Gebiet, das für die Geschichte verloren ist und in dem Gedanken verlorengehen. Die Gefahr liegt in den Hinterlanden."~ */
  IF ~~ THEN REPLY #12184 /* ~"Erzähl weiter."~ */ GOTO 20
  IF ~~ THEN REPLY #12185 /* ~"Gehen wir noch mal ein paar Schritte zurück. Erzähl mir mehr über die Ebenen im allgemeinen."~ */ GOTO 9
  IF ~~ THEN REPLY #12186 /* ~"Ich hätte da noch ein paar Fragen."~ */ GOTO 5
  IF ~~ THEN REPLY #12187 /* ~"Keine. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 18 // from: 11.3 19.4 21.1 22.1 23.1 24.5 25.3 26.2 27.2 28.1 29.1 30.1 31.1 32.1 33.0 34.1
  SAY #12188 /* ~"Über welche Ebenen möchtest du etwas hören?"~ */
  IF ~~ THEN REPLY #12189 /* ~"Die Oberen Ebenen."~ */ GOTO 19
  IF ~~ THEN REPLY #12190 /* ~"Die Unteren Ebenen."~ */ GOTO 24
  IF ~~ THEN REPLY #12191 /* ~"Die Grenzebenen."~ */ GOTO 32
  IF ~~ THEN REPLY #12192 /* ~"Die Außenländer."~ */ GOTO 34
  IF ~~ THEN REPLY #12193 /* ~"Gehen wir noch mal ein paar Schritte zurück. Erzähl mir mehr über die Ebenen im allgemeinen."~ */ GOTO 9
  IF ~~ THEN REPLY #12194 /* ~"Ich hätte da noch ein paar Fragen."~ */ GOTO 5
  IF ~~ THEN REPLY #12195 /* ~"Keine. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 19 // from: 18.0 20.0 21.0 22.0 23.0
  SAY #12196 /* ~"Die Oberen Ebenen teilen sich in die neutralen Ebenen, die rechtschaffenen Ebenen und die chaotischen Ebenen. Über welche möchtest du etwas wissen?"~ */
  IF ~~ THEN REPLY #12197 /* ~"Die neutralen Ebenen."~ */ GOTO 21
  IF ~~ THEN REPLY #12198 /* ~"Die rechtschaffenen Ebenen."~ */ GOTO 22
  IF ~~ THEN REPLY #12199 /* ~"Die chaotischen Ebenen."~ */ GOTO 23
  IF ~~ THEN REPLY #12200 /* ~"Gehen wir noch mal ein paar Schritte zurück. Erzähl mir mehr über die Ebenen im allgemeinen."~ */ GOTO 9
  IF ~~ THEN REPLY #12201 /* ~"Erzähl mir noch mehr über die Ebenen des Großen Rings."~ */ GOTO 18
  IF ~~ THEN REPLY #12202 /* ~"Ich hätte da noch ein paar Fragen."~ */ GOTO 5
  IF ~~ THEN REPLY #12203 /* ~"Keine. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 20 // from: 17.0
  SAY #12204 /* ~"Die Äußeren Ebenen unterscheiden sich in ihrer Moral, nicht aber in ihrer Substanz. Für dich unterteile ich die Ebenen mal in drei Gruppen: Die Oberen Ebenen des Guten, die Unteren Ebenen des Bösen, und die Grenzebenen der Neutralität. Diese Gruppen unterteilen sich wiederum nach Gesetz und Chaos, mit den Außenländern in der Mitte. Welche dieser Ebenen interessieren dich?"~ */
  IF ~~ THEN REPLY #12205 /* ~"Die Oberen Ebenen."~ */ GOTO 19
  IF ~~ THEN REPLY #12206 /* ~"Die Unteren Ebenen."~ */ GOTO 24
  IF ~~ THEN REPLY #12207 /* ~"Die Grenzebenen."~ */ GOTO 32
  IF ~~ THEN REPLY #12208 /* ~"Die Außenländer."~ */ GOTO 34
  IF ~~ THEN REPLY #12209 /* ~"Gehen wir noch mal ein paar Schritte zurück. Erzähl mir mehr über die Ebenen im allgemeinen."~ */ GOTO 9
  IF ~~ THEN REPLY #12210 /* ~"Ich hätte da noch ein paar Fragen."
~ */ GOTO 5
  IF ~~ THEN REPLY #12211 /* ~"Keine. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 21 // from: 19.0
  SAY #12212 /* ~"Die neutralen oberen Ebenen enthalten das Land der Tiere, einen Ort der Neutralität und des Guten, mit einem leichten Hauch von Chaos, wo die Tiere in den ewigen Mittags- und Nachtstunden herrschen. Sie enthalten Bytopia, das Zwillingsparadies der Geschäftigkeit und Arbeit, wo alle für das Allgemeinwohl arbeiten, und Elysium, die süßeste Ebene der Güte und Ruhe, die ich jemals gesehen habe. Schade, im Moment geht es mir nicht gut genug, um ihre erholsame Wirkung zu genießen. Was möchtest du noch von mir hören?"~ */
  IF ~~ THEN REPLY #12213 /* ~"Erzähl mir vom Rest der Oberen Ebenen."~ */ GOTO 19
  IF ~~ THEN REPLY #12214 /* ~"Erzähl mir noch mehr über die Ebenen des Großen Rings."~ */ GOTO 18
  IF ~~ THEN REPLY #12215 /* ~"Ich hätte noch ein paar andere Fragen."~ */ GOTO 5
  IF ~~ THEN REPLY #12216 /* ~"Über keine. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 22 // from: 19.1
  SAY #12217 /* ~Candrian erschaudert leicht. "Ich bin nicht gerade der Richtige, um dir etwas über die Ebenen des Gesetzes zu erzählen", sagt er, "denn die innere Struktur und die endgültigen Muster, die sie einem auferlegen, ängstigen mich. Ich halte mich von ihnen fern, weil mir meine Individualität mehr wert ist als das Wissen, das sie mir bringen könnten. Sie umfassen das reglementierte Arkadien, die gute Ebene, die der unbeugsamen Ordnung von Mechanus am nähesten steht, sowie den Berg Zelestia, die Heimat der Archonen, eine Insel im Silbermeer."~ */
  IF ~~ THEN REPLY #12218 /* ~"Erzähl mir vom Rest der Oberen Ebenen."~ */ GOTO 19
  IF ~~ THEN REPLY #12219 /* ~"Erzähl mir noch mehr über die Ebenen des Großen Rings."~ */ GOTO 18
  IF ~~ THEN REPLY #12220 /* ~"Ich hätte noch ein paar andere Fragen."~ */ GOTO 5
  IF ~~ THEN REPLY #12221 /* ~"Danke. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 23 // from: 19.2
  SAY #12222 /* ~"In diesen Ebenen fühle ich mich zu Hause, wenn ich mich auch meistens von Ysgard fernhalte - die endlosen Schlachten und Mutproben zwischen den treibenden Erdbergen der Ebene sind nichts für meinen Geschmack. Aber Arborea... " Er seufzt. "Die Berge sind höher, die Luft ist reiner, die Flüsse sind sauberer und das Wild ist größer als irgendwo sonst im Multiversum. Es ist ein wahres Paradies, ein Ort, in dem die Leidenschaften sich erhitzen und der Wein endlos fließt. Wenn ich meinen Verstand und mich selbst genügend wiederhergestellt habe - wenn wir mit den Äußeren Ebenen fertig sind, solltest du mich nal nach den Inneren fragen, und dann beschreibe ich dir meine Reisen - dann kehre ich in die Lauben und Täler von Arborea zurück und verliere mich für eine Weile."
~ */
  IF ~~ THEN REPLY #12223 /* ~"Erzähl mir vom Rest der Oberen Ebenen."~ */ GOTO 19
  IF ~~ THEN REPLY #12224 /* ~"Erzähl mir noch mehr über die Ebenen des Großen Rings."~ */ GOTO 18
  IF ~~ THEN REPLY #12225 /* ~"Ich hätte noch ein paar andere Fragen."~ */ GOTO 5
  IF ~~ THEN REPLY #12226 /* ~"Über keine. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 24 // from: 18.1 20.1 25.2 26.1 27.1 28.0 29.0 30.0 31.0
  SAY #12227 /* ~"Wie die Oberen Ebenen sind auch die Unteren Ebenen in rechtschaffen, chaotisch und neutral unterteilt. Sie unterscheiden sich durch ihre Schrecken und durch das, was diese Schrecken dem Verstand des Reisenden antun, und man sollte sie alle am besten meiden. Über welche möchtest du denn gern etwas hören?"~ */
  IF ~~ THEN REPLY #12228 /* ~"Die neutralen Ebenen."~ */ GOTO 25
  IF ~  Global("Aethel_Dead_KAPUTZ","GLOBAL",1)
~ THEN REPLY #12229 /* ~"Die rechtschaffenen Ebenen."~ */ GOTO 28
  IF ~  Global("Aethel_Dead_KAPUTZ","GLOBAL",0)
~ THEN REPLY #12230 /* ~"Die rechtschaffenen Ebenen."~ */ GOTO 29
  IF ~  NearbyDialog("DGrace")
~ THEN REPLY #12231 /* ~"Die chaotischen Ebenen."~ */ GOTO 30
  IF ~  !NearbyDialog("DGrace")
~ THEN REPLY #12232 /* ~"Die chaotischen Ebenen."~ */ GOTO 31
  IF ~~ THEN REPLY #12233 /* ~"Erzähl mir noch mehr über die Ebenen des Großen Rings."~ */ GOTO 18
  IF ~~ THEN REPLY #12234 /* ~"Ich hätte noch ein paar andere Fragen."~ */ GOTO 5
  IF ~~ THEN REPLY #12235 /* ~"Über keine. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 25 // from: 24.0
  SAY #12236 /* ~"Die neutralen Ebenen, was? Sie sind gräßlich und kaum zu verstehen, und für sich selbst genommen sind sie heimtückischer, als du dir überhaupt vorstellen kannst. Nimm zum Beispiel Dschehenna: Vier Vulkane, die im schlafenden Zustand in einem endlosen Nichts driften, jeder von ihnen irgendwie *am Leben*, und jeder will einfach nur deine Seele, auf jede Art, auf die er sie nur bekommen kann. Das Ganze bevölkert mit Yugolossen - den schlimmsten Scheusalen, meiner Meinung nach - und schon hast du diesen Ort. Die Ebene des schlimmsten Bösen - jedenfalls sagt man das - ist die Graue Einöde, ein Nicht-Ort, der die Farbe aus deinem Knochengerüst und Geist zieht und sogar dir deine Apathie stiehlt. Sie ist der Schauplatz der schlimmsten Schlachten im Krieg dort unten. Laß mich bloß nicht loslegen... Dann hast du da noch Carzeri auf der chaotischen Seite..."~ */
  IF ~~ THEN REPLY #12237 /* ~"Erzähl mir was über den Krieg."~ */ GOTO 26
  IF ~~ THEN REPLY #12238 /* ~"Erzähl mir was über die Carzeri."~ */ GOTO 27
  IF ~~ THEN REPLY #12239 /* ~"Erzähl mir vom Rest der Unteren Ebenen."~ */ GOTO 24
  IF ~~ THEN REPLY #12240 /* ~"Erzähl mir noch mehr über die Ebenen des Großen Rings."~ */ GOTO 18
  IF ~~ THEN REPLY #12241 /* ~"Ich hätte noch ein paar andere Fragen."~ */ GOTO 5
  IF ~~ THEN REPLY #12242 /* ~"Das war alles, was ich wissen wollte. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 26 // from: 25.0 27.0
  SAY #12243 /* ~"Ja, der Blutkrieg." Bei diesem Namen fühlst du dich so, als würde dir das Blut in den Adern gefrieren. Candrian scheint es nicht zu bemerken, er ist so in seinen Erinnerungen gefangen. "Zwei Armeen von Scheusalen schlagen sich auf den Unteren Ebenen völlig sinnlos die Köpfe ein und schlachten gedankenlos im Namen von Gesetz und Chaos. Sie drücken es natürlich etwas edler aus, aber schließlich und endlich ist es alles nur eine Sache des Hasses und des dummen Ehrgeizes, der niemandem nutzt und viel zu vielen schadet."~ */
  IF ~~ THEN REPLY #12244 /* ~"Erzähl' mir was über Carzeri."~ */ GOTO 27
  IF ~~ THEN REPLY #12245 /* ~"Erzähl mir vom Rest der Unteren Ebenen."~ */ GOTO 24
  IF ~~ THEN REPLY #12246 /* ~"Erzähl mir noch mehr über die Ebenen des Großen Rings."~ */ GOTO 18
  IF ~~ THEN REPLY #12247 /* ~"Ich hätte noch ein paar andere Fragen."~ */ GOTO 5
  IF ~~ THEN REPLY #12248 /* ~"Das war alles, was ich wissen wollte. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 27 // from: 25.1 26.0
  SAY #12249 /* ~"Ah, Carzeri und seine giftigen Dschungel, säurehaltigen Sümpfe und zerstörerischen Wasser, die sich wie eine Kette verrotteter Perlen aneinanderreihen..." Er hält inne und schaut dich sorgfältig an, indem er dich erneut mit den Augen fixiert. "Erinnere dich daran, Suchender: Carzeri ist ein Gefängnis, die Heimat der Gehreless, die zu den gefährlichsten Scheusalen überhaupt gehören. Die Stärke des Gefängnisses ist die Stärke des Fängers, so stark, wie es der Gefangene zuläßt. Zerstöre den Gefängniswärter, und du kannst aus dem Roten Gefängnis entkommen. Es gibt fast keinen anderen Weg hinaus, wenn sich die Tore erst einmal hinter dir schließen und du in die riesigen Weiten, die die Gestirne umgeben, geschleudert wirst. Nimm dich vor Carzeri in acht, Reisender, denn seine Bande sind stärker als das Fleisch."
~ */
  IF ~~ THEN REPLY #12250 /* ~"Erzähl mir was über den Krieg."~ */ JOURNAL #28750 /* ~Candrian hat mir von der Ebene Carzeri erzählt, dem Großen Gefängnis der Ebenen. Er hat gesagt, der einzige Weg zu entkommen sei, stärker als der Gefängniswächter zu sein. Er hat gesagt, daß die Bande der Ebene stärker seien als Fleisch.~ */ GOTO 26
  IF ~~ THEN REPLY #12251 /* ~"Erzähl mir vom Rest der Unteren Ebenen."~ */ JOURNAL #28750 /* ~Candrian hat mir von der Ebene Carzeri erzählt, dem Großen Gefängnis der Ebenen. Er hat gesagt, der einzige Weg zu entkommen sei, stärker als der Gefängniswächter zu sein. Er hat gesagt, daß die Bande der Ebene stärker seien als Fleisch.~ */ GOTO 24
  IF ~~ THEN REPLY #12252 /* ~"Erzähl mir noch mehr über die Ebenen des Großen Rings."~ */ JOURNAL #28750 /* ~Candrian hat mir von der Ebene Carzeri erzählt, dem Großen Gefängnis der Ebenen. Er hat gesagt, der einzige Weg zu entkommen sei, stärker als der Gefängniswächter zu sein. Er hat gesagt, daß die Bande der Ebene stärker seien als Fleisch.~ */ GOTO 18
  IF ~~ THEN REPLY #12253 /* ~"Ich hätte noch ein paar andere Fragen."~ */ JOURNAL #28750 /* ~Candrian hat mir von der Ebene Carzeri erzählt, dem Großen Gefängnis der Ebenen. Er hat gesagt, der einzige Weg zu entkommen sei, stärker als der Gefängniswächter zu sein. Er hat gesagt, daß die Bande der Ebene stärker seien als Fleisch.~ */ GOTO 5
  IF ~~ THEN REPLY #12254 /* ~"Das war alles, was ich wissen wollte. Leb wohl."~ */ JOURNAL #28750 /* ~Candrian hat mir von der Ebene Carzeri erzählt, dem Großen Gefängnis der Ebenen. Er hat gesagt, der einzige Weg zu entkommen sei, stärker als der Gefängniswächter zu sein. Er hat gesagt, daß die Bande der Ebene stärker seien als Fleisch.~ */ EXIT
END

IF ~~ THEN BEGIN 28 // from: 24.1
  SAY #12255 /* ~"So sehr ich auch die Ordnung der rechtschaffenen Oberen Ebenen verabscheue, wenigstens zeigen sie aber etwas Güte. Ihre Gegenstücke auf den Unteren Ebenen jedoch... Acheron ist ein Ort wildgewordener Würfel, die niemals ein Ende der Schlacht finden werden; dort wimmelt es nur so vor Seelen menschlicher Toten. Baator...", er schüttelt sich unwillkürlich, "Baator ist ein Ort, den man besser meiden sollte. Diese Scheusale, die du da drüben getötet hast, waren nur ein schwacher Ausdruck der abnormen Korruption, die in der seelenlosen Maschinerie der Ordnung verkörpert ist. Alles, was an Bürokratie und Ordnung schlecht ist, hat seinen Ursprung in Baator, und es breitet sich wie ein Fleck auf den Herzen der Sterblichen aus. Auch, wenn man dort etwas Wissen finden kann, ist es schwerlich die spirituelle Vergewaltigung wert, der man sich auf dieser Ebene aussetzt."~ */
  IF ~~ THEN REPLY #12256 /* ~"Erzähl mir vom Rest der Unteren Ebenen."~ */ GOTO 24
  IF ~~ THEN REPLY #12257 /* ~"Erzähl mir noch mehr über die Ebenen des Großen Rings."~ */ GOTO 18
  IF ~~ THEN REPLY #12258 /* ~"Ich hätte noch ein paar andere Fragen."~ */ GOTO 5
  IF ~~ THEN REPLY #12259 /* ~"Das war alles, was ich wissen wollte. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 29 // from: 24.2
  SAY #12260 /* ~"So sehr ich auch die Ordnung der rechtschaffenen Oberen Ebenen verabscheue, wenigstens zeigen sie aber etwas Güte. Ihre Gegenstücke auf den Unteren Ebenen jedoch... Acheron ist ein Ort wildgewordener Würfel, die niemals ein Ende der Schlacht finden werden; dort wimmelt es nur so vor Seelen menschlicher Toten. Baator...", er schüttelt sich unwillkürlich, "Baator ist ein Ort, den man besser meiden sollte. Diese Baatezu - die Scheusale in der Ecke da - sind nur ein schwacher Ausdruck der abnormen Korruption, die in der seelenlosen Maschinerie der Ordnung verkörpert ist. Sprich mit ihnen, wenn du mehr wissen willst, aber denk dran: Alles, was an Bürokratie und Ordnung schlecht ist, hat seinen Ursprung in Baator, und es breitet sich wie ein Fleck auf den Herzen der Sterblichen aus. Auch, wenn man dort etwas Wissen finden kann, ist es schwerlich die spirituelle Vergewaltigung wert, der man sich auf dieser Ebene aussetzt."~ */
  IF ~~ THEN REPLY #12261 /* ~"Erzähl mir vom Rest der Unteren Ebenen."~ */ GOTO 24
  IF ~~ THEN REPLY #12262 /* ~"Erzähl mir noch mehr über die Ebenen des Großen Rings."~ */ GOTO 18
  IF ~~ THEN REPLY #12263 /* ~"Ich hätte noch ein paar andere Fragen."~ */ GOTO 5
  IF ~~ THEN REPLY #12264 /* ~"Das war alles, was ich wissen wollte. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 30 // from: 24.3
  SAY #12265 /* ~"Meine Entschuldigung an deine Begleiterin" - er gestikuliert in Richtung von Grace, der Gefallenen - "aber der Abgrund ist kein Ort, zu dem es dich hinziehen sollte. Während Baator voller Ordnung steckt, ist der Abgrund voller Chaos und Wechsel, und nichts davon ist angenehm. Wenn es sich jedoch der Normalität annähert, solltest du dich am meisten in acht nehmen. Es ist die Heimat der Tanar-Ri, die die meisten Materier "Dämonen" nennen, und sie haben diesen Namen aus gutem Grund. Sie sind, wenn Ihr mir dies verzeiht, meine Dame" - Grace nickt ihm zu - "unberechenbar und mörderisch, und die wenigen, denen man trauen kann, sind wirklich sehr weit gestreut. Bitte nochmals um Verzeihung, Lady Grace - Ihr seid, soweit ich mich versichern konnte, eine dieser wenigen."~ */
  IF ~~ THEN REPLY #12266 /* ~"Erzähl mir vom Rest der Unteren Ebenen."~ */ GOTO 24
  IF ~~ THEN REPLY #12267 /* ~"Erzähl mir noch mehr über die Ebenen des Großen Rings."~ */ GOTO 18
  IF ~~ THEN REPLY #12268 /* ~"Ich hätte noch ein paar andere Fragen."~ */ GOTO 5
  IF ~~ THEN REPLY #12269 /* ~"Das war alles, was ich wissen wollte. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 31 // from: 24.4
  SAY #12270 /* ~"Der Abgrund ist kein Ort, zu dem es dich hinziehen sollte. Während Baator voller Ordnung steckt, ist der Abgrund voller Chaos und Wechsel, und nichts davon ist angenehm. Wenn es sich jedoch der Normalität annähert, solltest du dich am meisten in acht nehmen. Es ist die Heimat der Tanar-Ri, die die meisten Materier "Dämonen" nennen, und sie haben diesen Namen aus gutem Grund. Sie sind unberechenbar und mörderisch, und die wenigen, denen man trauen kann, sind wirklich sehr weit gestreut. Den wenigen, denen ich begegnet bin und denen ich trauen würde, vertraue ich immer noch nicht vollständig - sie sind Wesen des Chaos und des zu Fleisch gewordenen Bösen, und wenn sie einen freundlich anschauen, woher soll man dann wissen, daß das nicht Teil eines größeren Plans ist?"~ */
  IF ~~ THEN REPLY #12271 /* ~"Erzähl mir vom Rest der Unteren Ebenen."~ */ GOTO 24
  IF ~~ THEN REPLY #12272 /* ~"Erzähl mir noch mehr über die Ebenen des Großen Rings."~ */ GOTO 18
  IF ~~ THEN REPLY #12273 /* ~"Ich hätte noch ein paar andere Fragen."~ */ GOTO 5
  IF ~~ THEN REPLY #12274 /* ~"Das war alles, was ich wissen wollte. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 32 // from: 18.2 20.2
  SAY #12275 /* ~"Soweit ich weiß, gibt es zwei Grenzebenen, die sich diametral gegenüber liegen. Die eine der beiden, Mechanus, ist die Verkörperung des Gesetzes, ein Ort, an dem verschiedene Glaubensauffassungen aufeinandertreffen, sich miteinander verhaken und verschlingen und so eine riesige Maschine bilden, die die gesamte Ebene darstellt. Manche behaupten gar, daß die Getriebe von Mechanus der Motor sind, der die Ebenen antreibt. Die andere Ebene ist Limbus, ein wirbelnder Morast des Chaos, der keine Regeln befolgt, überhaupt keine, und gerade, wenn man denkt, daß man ihr Verhalten erfassen konnte, verändert sie sich einfach - oder auch nicht. Man kann es einfach nicht vorhersagen. Ich war vor nicht allzu langer Zeit in Limbus..."~ */
  IF ~~ THEN REPLY #12277 /* ~"Erzähl mir von deiner Reise..."~ */ GOTO 33
  IF ~~ THEN REPLY #12278 /* ~"Erzähl mir noch mehr über die Ebenen des Großen Rings."~ */ GOTO 18
  IF ~~ THEN REPLY #12279 /* ~"Ich hätte noch ein paar andere Fragen."~ */ GOTO 5
  IF ~~ THEN REPLY #12333 /* ~"Das war alles, was ich wissen wollte. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 33 // from: 32.0
  SAY #12280 /* ~Er schließt seine Augen und erinnert sich: "Ich hatte einen Githzerai-Führer bei mir, einen Anarchen, der die unlogische Materie der Ebene in jede gewünschte Form bringen konnte. Wir hatten die Bedrängungen der Slaadi abgewehrt, der chaotischen Wesen, die diese Ebene ihre Heimat nennen. Es schien mir so, als seien da mehr als gewöhnlich, aber dann kann man eigentlich nie so recht sagen, was in Limbus "gewöhnlich" ist... aber ich schweife ab. Inmitten dieses ganzen Chaos kamen wir zu so einer Reihe riesiger miteinander verhakter Metallwürfel, wie eine Art Puzzlekasten. Es war nichts, das wir geformt hatten, bewußt oder unbewußt, und wir konnten keinen Eingang finden... wie... wie eine Bastion der Ordnung, ein Samen des Gesetzes innerhalb der Grenzen der Unordnung. Besser kann ich es nicht erklären."~ */
  IF ~~ THEN REPLY #12281 /* ~"Erzähl mir noch mehr über die Ebenen des Großen Rings."~ */ JOURNAL #28751 /* ~Candrian hat mir von einem Puzzlekasten im Herzen von Limbus erzählt, etwas, das ein Samen des Gesetzes in der wogenden See des Chaos zu sein scheint.~ */ GOTO 18
  IF ~~ THEN REPLY #12282 /* ~"Ich hätte noch ein paar andere Fragen."~ */ JOURNAL #28751 /* ~Candrian hat mir von einem Puzzlekasten im Herzen von Limbus erzählt, etwas, das ein Samen des Gesetzes in der wogenden See des Chaos zu sein scheint.~ */ GOTO 5
  IF ~~ THEN REPLY #12283 /* ~"Das war alles, was ich wissen wollte. Leb wohl."~ */ JOURNAL #28751 /* ~Candrian hat mir von einem Puzzlekasten im Herzen von Limbus erzählt, etwas, das ein Samen des Gesetzes in der wogenden See des Chaos zu sein scheint.~ */ EXIT
END

IF ~~ THEN BEGIN 34 // from: 18.3 20.3
  SAY #12284 /* ~"Die Außenländer sind die absolute Neutralität. Wahrscheinlich der beste Ort, wenn man die Äußeren Ebenen außerhalb Sigils besuchen möchte, aber nicht die moralen Werte einer der Ebenen aufgezwungen bekommen möchte. In den Außenländern ist alles im Gleichgewicht - wie es auch sein sollte, denn diese Ebene sitzt schließlich im Zentrum der Äußeren Ebenen. Die Reiche von Mächten liegen hier verstreut, und es gibt eine Handvoll von "Torstädten", die in die restlichen Äußeren Ebenen führen. Die Städte der Portale spiegeln üblicherweise die Philosophie der Ebene wider, die jenseits ihrer Portale liegt - und wenn das Gleichgewicht des Glaubens in der Stadt nicht eingehalten wird, gleitet die Stadt in die benachbarte Ebene hinüber. Das ist eine schlechte Situation für alle, da nur sehr wenige Leute in der Stadt so einen Wechsel wirklich *wünschen*. Aber genug von den Außenländern. Was wolltest du noch wissen?"~ */
  IF ~~ THEN REPLY #12285 /* ~"Gehen wir noch mal ein paar Schritte zurück. Erzähl mir mehr über die Ebenen im allgemeinen."~ */ GOTO 9
  IF ~~ THEN REPLY #12286 /* ~"Erzähl mir noch mehr über die Ebenen des Großen Rings."~ */ GOTO 18
  IF ~~ THEN REPLY #12287 /* ~"Ich hätte noch ein paar andere Fragen."~ */ GOTO 5
  IF ~~ THEN REPLY #12288 /* ~"Das war alles, was ich wissen wollte. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 35 // from: 8.2 9.2 11.4 16.1
  SAY #12289 /* ~Er seufzt, als ob ihn das an seine knochentiefe Müdigkeit erinnerte. "Stell dir die Inneren Ebenen als Globus vor. Am oberen Pol hast du die Positive Materielle Ebene. Am unteren Pol hast du die Negative Materielle Ebene." Er hält inne. "Erinnere mich daran, dir von der Negativen Materiellen Ebene zu erzählen." Sein Blick kehrt sich nach innen, zu einem privaten Schrecken. "Aus der Interaktion der beiden entspringt der gesamte Drang nach Existenz und Nicht-Existenz, Leben und Tod, Tatsächlichkeit und Nichts. Aus ihnen entspringen die grundlegenden Elementarebenen - Feuer, Wasser, Luft und Erde - die Para-Elementarebenen, die zwischen den vier grundlegenden Elementen liegen, und die Quasi-Elementarebenen, die aus der Interaktion zwischen den vier Elementen mit dem Positiven und dem Negativen enstehen."~ */
  IF ~~ THEN REPLY #12290 /* ~"Erzähl mir was über die Negative Materielle Ebene."~ */ GOTO 36
  IF ~~ THEN REPLY #12291 /* ~"Erzähl mir was über den Rest der Ebenen."~ */ GOTO 9
  IF ~~ THEN REPLY #12292 /* ~"Ich hätte da noch ein paar Fragen."~ */ GOTO 5
  IF ~~ THEN REPLY #12293 /* ~"Das ist alles, was ich wissen wollte. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 36 // from: 8.4 9.4 35.0 40.0
  SAY #12294 /* ~Sein Blick verdüstert sich. "Ich habe die Inneren Ebenen bereist, um meine Essenz, meinen wahren Kern zu entdecken. Ich habe den Fehler begangen, die Negative Materielle Ebene zu besuchen, um den Drang meines Körpers nach Verfall und den Zyklus des Todes im Leben zu verstehen. Ich dachte, ich sei durch meine Magie gegen die schädlichen Auswirkungen der Ebene geschützt, aber ich hatte mich geirrt. Die Schwärze des endlosen Nichts legte sich schwer auf meine Seele, und ich wurde von Schatten bedrängt, die versuchten, meine Seele selbst auszupusten. Ich verirrte mich eine Weile lang - eine Ewigkeit lang - und hätte beinahe meine Existenz verloren. Ich konnte fühlen, wie meine Essenz von mir abfiel, und selbst jetzt bin ich noch halb verloren. Ich werde niemals dorthin zurückgehen."~ */
  IF ~  Global("Ntoken_Give","GLOBAL",0)
~ THEN REPLY #12295 /* ~"Wie hast du überlebt?"~ */ DO ~GiveItemCreate("NToken",Protagonist,20,0,0)
SetGlobal("Ntoken_Give","GLOBAL",1)
~ JOURNAL #28752 /* ~Candrian hat mir von seinem Ausflug auf die Negative Materielle Ebene erzählt, einem Ort, an dem die Existenz ins Nichts fällt. ~ */ GOTO 37
  IF ~  Global("Ntoken_Give","GLOBAL",1)
~ THEN REPLY #12296 /* ~"Wie hast du überlebt?"~ */ JOURNAL #28752 /* ~Candrian hat mir von seinem Ausflug auf die Negative Materielle Ebene erzählt, einem Ort, an dem die Existenz ins Nichts fällt. ~ */ GOTO 38
  IF ~~ THEN REPLY #12297 /* ~"Dann erzähl mir was über die anderen Ebenen."~ */ JOURNAL #28752 /* ~Candrian hat mir von seinem Ausflug auf die Negative Materielle Ebene erzählt, einem Ort, an dem die Existenz ins Nichts fällt. ~ */ GOTO 9
  IF ~~ THEN REPLY #12298 /* ~"Ich hätte da noch ein paar Fragen."~ */ JOURNAL #28752 /* ~Candrian hat mir von seinem Ausflug auf die Negative Materielle Ebene erzählt, einem Ort, an dem die Existenz ins Nichts fällt. ~ */ GOTO 5
  IF ~~ THEN REPLY #12299 /* ~"Ich verstehe. Leb wohl."~ */ JOURNAL #28752 /* ~Candrian hat mir von seinem Ausflug auf die Negative Materielle Ebene erzählt, einem Ort, an dem die Existenz ins Nichts fällt. ~ */ EXIT
END

IF ~~ THEN BEGIN 37 // from: 36.0
  SAY #12300 /* ~"Wie ich überlebt habe?" Er lächelt angespannt. "Mit einem Stück Nichts, das das Nichts zurückgehalten hat. Nichts kann nichts aufhalten, weißt du, also trug ich nichts in meinen Händen, um mich zu schützen. Hast du selbst vor, das ultimative Nichts zu bereisen? Dir haftet der Geruch der Verzweiflung an, also mache ich dir dieses Geschenk. Halte es in deiner Hand, wenn die Schatten sich an dich drängen, und es sollte dich und deine Freunde ein wenig beschützen, wenn sie sich nah bei dir halten. Heh." Er gibt dir ein kleines, schwarzes Zeichen, das so aussieht, als hätte es überhaupt keine Dimensionen.~ */
  IF ~~ THEN REPLY #12301 /* ~"Danke. Erzähl mir mehr über die Ebenen."~ */ GOTO 9
  IF ~~ THEN REPLY #12302 /* ~"Ich hätte noch ein paar Fragen..."~ */ GOTO 5
  IF ~~ THEN REPLY #12303 /* ~"Danke. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 38 // from: 36.1
  SAY #12304 /* ~"Ich benutzte dieses Zeichen, das ich dir gegeben habe, und konnte mich gerade so an mein Leben klammern. Ohne das Zeichen wäre ich sicher ganz draufgegangen."~ */
  IF ~~ THEN REPLY #12305 /* ~"Erzähl mir mehr über die Ebenen."~ */ GOTO 9
  IF ~~ THEN REPLY #12306 /* ~"Ich hätte da noch ein paar Fragen..."~ */ GOTO 5
  IF ~~ THEN REPLY #12307 /* ~"Danke. Auf bald."~ */ EXIT
END

IF ~~ THEN BEGIN 39 // from: 8.3 9.3 11.5 16.2
  SAY #12308 /* ~"Wenn du etwas über die Materielle Ebene wissen möchtest, besuch sie. Die grenzenlosen Welten dieser Ebene haben eine unendliche Vielfältigkeit, wie die Ebenen auch, aber ich kann sie nicht so gut in Worte fassen. Laß dir einfach nur gesagt sein, daß sie die Geburt der Äußeren Ebenen darstellen, die Kinder der Inneren Ebenen, und daß sie in ihren Grenzen ein grenzenloses Potential umfassen."~ */
  IF ~~ THEN REPLY #12309 /* ~"Erzähl mir mehr über die Ebenen."~ */ GOTO 9
  IF ~~ THEN REPLY #12310 /* ~"Ich hätte da noch ein paar Fragen..."~ */ GOTO 5
  IF ~~ THEN REPLY #12311 /* ~"Danke. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 40 // from: 5.2
  SAY #12312 /* ~"Ich? Ich bin gerade erst zurück aus dem Nichts, und ich versuche, meine Essenz wiederherzustellen, bevor sie ganz von mir weggleitet."~ */
  IF ~~ THEN REPLY #12313 /* ~"Nichts? Was meinst du damit?"~ */ GOTO 36
  IF ~~ THEN REPLY #12314 /* ~"Verstehe. Ich hätte da noch ein paar Fragen..."~ */ GOTO 5
  IF ~~ THEN REPLY #12315 /* ~"Verstehe. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 41 // from: 5.3
  SAY #12316 /* ~"Wenn sich der Kosmos nicht verschoben hat und wir nicht in die Irrgänge geschleudert wurden, würde ich sagen, daß wir uns in der Bar 'Zur Schwelenden Leiche' befinden."~ */
  IF ~~ THEN REPLY #12317 /* ~"Was kannst du mir über die Gäste hier sagen?"~ */ GOTO 42
  IF ~~ THEN REPLY #12318 /* ~"Irrgänge? Was meinst du damit?"~ */ GOTO 43
  IF ~~ THEN REPLY #12319 /* ~"Ich hätte da noch ein paar Fragen."~ */ GOTO 5
  IF ~~ THEN REPLY #12320 /* ~"Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 42 // from: 41.0
  SAY #12321 /* ~"Ich kümmer mich hier um meinen eigenen Kram, Suchender, ich verbringe nämlich schon genügend Zeit damit, mich nicht darum zu kümmern. Sprich mit dem Barkeeper, wenn du mehr über seine Gäste erfahren möchtest."~ */
  IF ~~ THEN REPLY #12322 /* ~"Ich hätte noch ein paar Fragen..."~ */ GOTO 5
  IF ~~ THEN REPLY #12323 /* ~"Auf bald."~ */ EXIT
END

IF ~~ THEN BEGIN 43 // from: 41.1
  SAY #12324 /* ~"Ja, die Irrgänge, das ist der Ort, wo die Dame die hineinwirft, die ihr mißfallen haben." Er zeichnet einen kleinen Halbkreis über sein Herz, als er den Namen der Dame ausspricht. "Wenn du mehr über die Dame und die Stadt wissen möchtest, such dir einen Schlepper oder irgend so einen Führer."~ */
  IF ~~ THEN REPLY #12325 /* ~"Gut. Ich hätte noch ein paar andere Fragen..."~ */ GOTO 5
  IF ~~ THEN REPLY #12326 /* ~"Wie du meinst. Auf bald."~ */ EXIT
END

IF ~~ THEN BEGIN 44 // from: 5.4
  SAY #12327 /* ~"Ich hab' in letzter Zeit nur mein eigenes Journal gesehen, und das ist ins Nichts zerbröckelt. Tut mir leid."~ */
  IF ~~ THEN REPLY #12328 /* ~"Egal. Ich hätte noch ein paar andere Fragen..."~ */ GOTO 5
  IF ~~ THEN REPLY #12329 /* ~"Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 45 // from: 5.5
  SAY #12330 /* ~"Pharod ist zu einem Sammler geworden? Wann ist denn das passiert? Als ich das letzte Mal hier weg bin, war er nur ein übereifriger Grünschnabel in der Nähe des Lumpensammler-Platzes. Heh. Die Zeit ändert WIRKLICH manche Leute. Nein, Suchender, ich kenne Pharod nicht mehr, das möchte ich wetten."~ */
  IF ~~ THEN REPLY #12331 /* ~"Gut. Ich hätte noch ein paar andere Fragen..."~ */ GOTO 5
  IF ~~ THEN REPLY #12332 /* ~"Nun denn. Leb wohl."~ */ EXIT
END
