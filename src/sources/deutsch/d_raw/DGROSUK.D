// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DGROSUK.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\de_DE\dialog.tlk
// dialogF  : (none)

BEGIN ~DGROSUK~

IF ~  NumTimesTalkedTo(0)
~ THEN BEGIN 0 // from:
  SAY #36054 /* ~Du siehst ein reptilienartiges Wesen mit einem schlangenförmigen Körper, vier Füßen mit Krallen, ledrigen Flügeln und einem Drachenkopf. Die Schuppen, die seinen Körper bedecken, sind scheußlich grün. Das Wesen steht aufrecht auf den Hinterbeinen und hält sich mit seinem Greifschwanz im Gleichgewicht. Als du dich näherst, verengen sich seine Augen zu Schlitzen, und es fängt an zu zischen.~ */
  IF ~~ THEN REPLY #36055 /* ~"Sei gegrüßt."~ */ GOTO 1
  IF ~~ THEN REPLY #36056 /* ~Beachte das Wesen nicht.~ */ DO ~SetNumTimesTalkedTo(0)
~ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #36057 /* ~Die Luft um das Wesen herum fängt an, Hitze auszustrahlen, und seine Schuppen glänzen schwach. Es wirft einen hungrigen Blick auf dich und sieht aus, als ob es bereit wäre zuzuschlagen. Plötzlich läßt es ein elendes Gezisch ab und entspannt sich ein wenig. "Sssssss! Geh. Grosssuk nicht reden, muß warten... Ssssssss..." Es starrt dich an, wobei sein Schwanz hin- und herschlägt.~ */
  IF ~  Global("Snuff_Grosuk","GLOBAL",3)
~ THEN REPLY #36058 /* ~"Sebastion schickt mich."~ */ GOTO 2
  IF ~~ THEN REPLY #36059 /* ~"Was bist du denn für ein Wesen?"~ */ GOTO 10
  IF ~~ THEN REPLY #36060 /* ~"Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.0 10.1 12.1
  SAY #36061 /* ~Das Wesen entspannt sich sichtlich und die Luft wird kühler. Es streckt dir eine Klaue entgegen. "Ssssss. Gib Grosssuk Informationen." Er sieht dich erwartungsvoll an.~ */
  IF ~~ THEN REPLY #36062 /* ~"Was für Informationen?"~ */ GOTO 3
  IF ~~ THEN REPLY #36063 /* ~"Nein, Sebastion hat mich geschickt, um dich zu töten."~ */ GOTO 9
  IF ~~ THEN REPLY #36064 /* ~"Ich hab' sie nicht bei mir, ich werde mich mal kundig machen. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 2.0
  SAY #36065 /* ~Es ist schwierig, den Gesichtsausdruck eines Reptils zu deuten, aber du bist fast sicher, daß du Grosuk verärgert hast. Sein Schwanz beginnt, wütend zu schlagen, und die Luft wird erneut warm. "Keine Frage. Gib Grosssuk Informationen oder sssstirb. Dann Grosssuk nehmen Informationen von deiner Leiche."~ */
  IF ~~ THEN REPLY #36066 /* ~"Ich muß wissen, welche Information für dich ist. Ich mache Botengänge für verschiedene Leute, verstehst du."~ */ GOTO 4
  IF ~~ THEN REPLY #36067 /* ~"Ja, weißt du, Sebastion hat mich geschickt, um dich zu töten."~ */ GOTO 9
  IF ~~ THEN REPLY #36068 /* ~"Ich hab' sie nicht bei mir, ich werde mich mal kundig machen. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 3.0
  SAY #36069 /* ~Er starrt dich ein paar Sekunden an, während er über deine Worte nachdenkt. "Belagerungsssturm. Ssssss. Wie hineinkommen. Sssebastion sagen er Weg erraten..." Grosuk macht einen Schritt auf dich zu und streckt dir die Hand entgegen. "Nun hergeben!"~ */
  IF ~~ THEN REPLY #36070 /* ~"Ach, DIE Information. Tut mir leid, aber Sebastion wollte sie gern persönlich überbringen. Er wird demnächst vorbeikommen."~ */ JOURNAL #66527 /* ~Der Abishai Grosuk, sucht einen Weg in den Belagerungsturm auf dem Straßenmarkt. Ich frage mich, was an dem Turm so wichtig ist.~ */ GOTO 5
END

IF ~~ THEN BEGIN 5 // from: 4.0
  SAY #36072 /* ~Die Luft um Grosuk herum fängt an, Hitze auszustrahlen, und seine Schuppen glänzen schwach. Er wirft einen hungrigen Blick auf dich und sieht aus, als ob er bereit wäre zuzuschlagen. Er öffnet das Maul, und du siehst mehrere Reihen messerscharfer Zähne. "Nein... Grosssuk glauben, du lügen! Geben Informationen sofort, Grosssuk töten schschnell. Nicht langsssam. Nicht geben, Grosssuk nehmen sich Zeit. Entfernen dein Inneresss. Du werden sssehen!"~ */
  IF ~~ THEN REPLY #36073 /* ~"Warte mal, ich hab' zwar nicht die Information, die du willst, aber ich glaube, ich weiß etwas, das mein Leben wert ist.~ */ GOTO 6
  IF ~~ THEN REPLY #36074 /* ~"Na gut, Sebastion hat mich sowieso geschickt, dich zu töten."~ */ DO ~Enemy()
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
~ EXIT
END

IF ~~ THEN BEGIN 6 // from: 5.0
  SAY #36075 /* ~Grosuk hält den Kopf schief und starrt dich an. Einen Moment lang wirkt er in Gedanken verloren. "Grosssuk zuhören. Informationen gut, du leben." Er grinst dich an, wobei alle Zähne sichtbar sind. "Nicht gut, du sterben. Grosssuk geben sein Wort."~ */
  IF ~~ THEN REPLY #36076 /* ~"Sebastion kann deinen Vertrag nicht erfüllen. Er hat mich hierher geschickt, um dich zu töten."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Grosuk_1","GLOBALGood",-1)
~ JOURNAL #66528 /* ~Ich habe dem Abishai Grosuk erzählt, daß Sebastion mich beauftragt hat, ihn zu töten. Das war wahrscheinlich nicht gerade besonders nett von mir, aber es hat mir die Haut gerettet...~ */ GOTO 7
  IF ~~ THEN REPLY #36077 /* ~"Woher weiß ich, daß du dein Wort hältst?"~ */ GOTO 8
  IF ~~ THEN REPLY #36078 /* ~"Vergiß es. Sebastion hat mich sowieso hierher geschickt, um dich zu töten."~ */ DO ~Enemy()
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
~ EXIT
END

IF ~~ THEN BEGIN 7 // from: 6.0 8.0
  SAY #36079 /* ~Grosuk starrt dich eine Weile an und läßt dann einen frustrierten Zisch-Schauer hören. Er spielt mit seinen Krallen, und sein Schwanz beginnt hin- und herzuschlagen. Du siehst zwischendurch einen Stachel mit Widerhaken an der Schwanzspitze erscheinen. "Ja. Informationen gut. Grosssuk geben sein Wort, du leben. Grosssuk danken. Grosssuk nun gehen, müssen reden Ssssebassstion."~ */
  IF ~~ THEN REPLY #36080 /* ~"Leb wohl."~ */ DO ~SetGlobal("SNUFF_GROSUK","GLOBAL",5)
StartCutSceneMode()
StartCutSceneEx("0500cut5",FALSE)
~ EXIT
END

IF ~~ THEN BEGIN 8 // from: 6.1
  SAY #36081 /* ~Das Wesen starrt dich an. "Dieser Pakt, du und Grosssuk. Grosssuk halten Wort für Pakt. Nun du reden."~ */
  IF ~~ THEN REPLY #36082 /* ~"Sebastion kann deinen Vertrag nicht erfüllen. Er hat mich hierher geschickt, um dich zu töten."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Grosuk_1","GLOBALGood",-1)
~ JOURNAL #66528 /* ~Ich habe dem Abishai Grosuk erzählt, daß Sebastion mich beauftragt hat, ihn zu töten. Das war wahrscheinlich nicht gerade besonders nett von mir, aber es hat mir die Haut gerettet...~ */ GOTO 7
  IF ~~ THEN REPLY #36083 /* ~"Vergiß es. Sebastion hat mich sowieso hierher geschickt, um dich zu töten."~ */ DO ~Enemy()
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
~ EXIT
END

IF ~~ THEN BEGIN 9 // from: 2.1 3.1
  SAY #36084 /* ~Ohne auch nur einen Augenblick zu zögern, stürzt sich das Wesen auf dich.~ */
  IF ~~ THEN REPLY #36085 /* ~Verteidige dich.~ */ DO ~Enemy()
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
~ EXIT
END

IF ~~ THEN BEGIN 10 // from: 1.1
  SAY #36086 /* ~Jeder noch so kleine Muskel des Wesens scheint sich anzuspannen, als es eine Zisch-Kanonade abläßt. Es fängt an, nach dir zu greifen, hört dann aber auf. Der Haß rinnt ihm nur so aus den Augen, als es mit dir spricht. "Grosssuk nicht reden. Sssssssssss. Du Glück haben, Mensch. Du gehen, so lange noch möglich. Du bleiben, Grosssuk zerreissssen!"~ */
  IF ~~ THEN REPLY #36087 /* ~Verspotte ihn: "Grossssssuk nicht sssprechen? Grosssssuk ssssagt aber zzzziemlich viel für jemanden, der nicht sssspricht."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Grosuk_1","GLOBALLaw",-1)
~ GOTO 11
  IF ~  Global("Snuff_Grosuk","GLOBAL",3)
~ THEN REPLY #36088 /* ~"Sebastion schickt mich."~ */ GOTO 2
  IF ~~ THEN REPLY #36089 /* ~"Na dann leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 11 // from: 10.0
  SAY #36090 /* ~Das Wesen hält den Kopf schief und starrt dich mit vor Überraschung weit aufgerissenen Augen an. Kurz darauf verengen sich seine Augen zu haßerfüllten Schlitzen, und sein Körper fängt an zu beben, während sich die Muskeln verstählern. Du hörst ein Krachen, und als du nach unten blickst, siehst du, daß sich seine Krallen im Steinboden verankert haben. Die Luft um das Wesen herum ist schwer von Hitze und scheint fast zu glühen. "Geh... jetzt. Ssssssssssssss!"~ */
  IF ~~ THEN REPLY #36091 /* ~Greif an.~ */ DO ~Enemy()
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
~ EXIT
  IF ~~ THEN REPLY #36092 /* ~Geh.~ */ EXIT
END

IF ~  NumTimesTalkedToGT(0)
~ THEN BEGIN 12 // from:
  SAY #36093 /* ~Du siehst Grosuk, den Abishai. Er ärgert sich, dich zu sehen. "Ssssssss... Du, wiederkommen. Geh. Grosssuk töten."~ */
  IF ~~ THEN REPLY #36094 /* ~"Du bist ja nicht gerade ein besonders freundlicher Gesell!"~ */ GOTO 13
  IF ~  Global("Snuff_Grosuk","GLOBAL",3)
~ THEN REPLY #36095 /* ~"Sebastion schickt mich."~ */ GOTO 2
  IF ~~ THEN REPLY #36096 /* ~"Schön, leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 13 // from: 12.0
  SAY #36097 /* ~Grosuk starrt dich an und spielt mit seinen Krallen. Seine Augen verengen sich zu Schlitzen, als er sich herunterbeugt, um dir in die Augen zu sehen. "Nein, Grosssuk nicht Freund. Nun geh!"~ */
  IF ~~ THEN REPLY #36098 /* ~"Schön, leb wohl."~ */ EXIT
END
