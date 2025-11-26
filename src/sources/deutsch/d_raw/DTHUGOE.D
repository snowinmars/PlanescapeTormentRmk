// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DTHUGOE.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\de_DE\dialog.tlk
// dialogF  : (none)

BEGIN ~DTHUGOE~

IF ~  NumTimesTalkedTo(0)
~ THEN BEGIN 0 // from:
  SAY #30170 /* ~Der finster aussehende Bursche beobachtet dich aus dem Dunkeln. Seine Brust ist mit einem Patchwork-Panzer geschützt, der mit langen Nägeln verziert ist. An der Seite trägt er ein langes Messer. Du bemerkst, daß sein rechtes Ohr fehlt.~ */
  IF ~~ THEN REPLY #30184 /* ~"Sei gegrüßt."~ */ JOURNAL #28824 /* ~Ich habe einen einohrigen Tiefling getroffen, der in den Schatten beim großen Torbogen lauerte, im nördlichen Teil des Stocks. Etwas in seinen Augen hat mir gesagt, daß mit ihm nicht zu spaßen war.~ */ GOTO 1
  IF ~~ THEN REPLY #30185 /* ~Geh vorbei.~ */ JOURNAL #28824 /* ~Ich habe einen einohrigen Tiefling getroffen, der in den Schatten beim großen Torbogen lauerte, im nördlichen Teil des Stocks. Etwas in seinen Augen hat mir gesagt, daß mit ihm nicht zu spaßen war.~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #30171 /* ~Er betrachtet dich kühl, als ob er dich einschätzen will.~ */
  IF ~~ THEN REPLY #30186 /* ~"*S-E-I G-E-G-R-Ü-S-S-T*. Was ist... bist du schwerhörig?"~ */ GOTO 2
  IF ~~ THEN REPLY #30187 /* ~"Ich hätte da ein paar Fragen..."~ */ GOTO 2
  IF ~~ THEN REPLY #30188 /* ~Laß ihn in Ruhe.~ */ EXIT
END

IF ~  NumTimesTalkedToGT(0)
~ THEN BEGIN 2 // from: 1.0 1.1
  SAY #30172 /* ~Der einohrige Tiefling sieht dich drohend an. "Verzieh dich, Dussel... oder ich mach dich zur Schnecke."~ */
  IF ~~ THEN REPLY #30189 /* ~"Wenn du 'ne Schnecke suchst...ich habe da welche im Garten gesehen."~ */ GOTO 13
  IF ~  Global("Nestor_Quest","GLOBAL",1)
HasItem("NesFork","ThugOE")
!Dead("Nestor")
~ THEN REPLY #30190 /* ~"Wie hast du dein Ohr verloren?"~ */ GOTO 3
  IF ~  Global("Nestor_Quest","GLOBAL",1)
HasItem("NesFork","ThugOE")
!Dead("Nestor")
~ THEN REPLY #30191 /* ~"Du hast das Ohr nicht zufällig verloren, als du einen alten Mann im Stock beklaut hast, oder?"~ */ GOTO 4
  IF ~~ THEN REPLY #30192 /* ~Ignoriere seine Drohungen und geh weg.~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 2.1
  SAY #30173 /* ~"Hä, was?" Seine rechte Hand gleitet zum Knauf seines Messers.~ */
  IF ~  CheckStatGT(Protagonist,12,CHR)
~ THEN REPLY #30193 /* ~"Bin nur neugierig. Hinter jeder Narbe verbirgt sich eine interessante Geschichte... ich spreche da aus Erfahrung."~ */ GOTO 6
  IF ~~ THEN REPLY #30194 /* ~"Ich glaube, daß du es verloren hast, als du einen alten Mann im Stock beklaut hast."~ */ GOTO 4
  IF ~~ THEN REPLY #30195 /* ~"Vergiß es. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 2.2 3.1 6.1 7.1 8.1 9.1 10.1 11.2
  SAY #30174 /* ~"Labere nicht so 'n Scheiß, Dussel." Er schaut dich wütend an. "Und jetzt beweg deinen übel zugerichteten Kadaver weg von hier, bevor ich meinen Namen in dich einritze!"~ */
  IF ~~ THEN REPLY #30196 /* ~"Okay. Rück die Gabel raus, die du ihm geklaut hast und ich verkrümele mich."~ */ GOTO 5
  IF ~~ THEN REPLY #30197 /* ~"Ich bezweifle, daß du deinen Namen überhaupt *buchstabieren* kannst, du blöder Trottel."~ */ GOTO 13
  IF ~~ THEN REPLY #30198 /* ~"Hör zu... rück die Gabel raus. Oder willst du dein anderes Ohr auch noch verlieren?"~ */ GOTO 13
  IF ~~ THEN REPLY #30199 /* ~"Vergiß es. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 4.0
  SAY #30175 /* ~Mit einer blitzschnellen Bewegung zieht er sein Messer aus der Scheide und fuchtelt damit drohend vor dir herum. "Warum holst du sie dir nicht, Dussel?"~ */
  IF ~~ THEN REPLY #30200 /* ~"Du hast es ja so gewollt... Attacke!"~ */ DO ~Enemy()
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
~ EXIT
  IF ~~ THEN REPLY #30201 /* ~"Steck dein Messer weg. Du könntest dir sonst wehtun."~ */ GOTO 13
  IF ~~ THEN REPLY #30202 /* ~"Vergiß es. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 6 // from: 3.0
  SAY #30176 /* ~"Äh, ja, das sieht man, daß du schon so einiges abgekriegt hast." Er bringt ein Kichern zustande und fährt dann mit seinen Fingern über die Narben an seinem Kopf. "Wenigstens hast du noch beide Ohren."~ */
  IF ~~ THEN REPLY #30203 /* ~"Was ist passiert?"~ */ GOTO 7
  IF ~~ THEN REPLY #30204 /* ~"Das liegt daran, daß ich keine alten Kerle beklaue, die scharfe Zähne haben."~ */ GOTO 4
  IF ~~ THEN REPLY #30205 /* ~"Ja, das stimmt. Na dann, leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 7 // from: 6.0
  SAY #30177 /* ~"Vor einiger Zeit wollte ich mal so 'nen alten Typ neppen, einen Sucher..." Er macht ein verdrießliches Gesicht, als er mit seiner Geschichte beginnt. "Der dumme Mistkerl hat sich aber gewehrt..."~ */
  IF ~~ THEN REPLY #30206 /* ~"Erzähl weiter..."~ */ GOTO 8
  IF ~~ THEN REPLY #30207 /* ~"Laß mich raten... er hat dein Ohr abgebissen, also hast du auf ihn eingedroschen und ihm dann seine Gabel weggenommen. Stimmt's?"~ */ GOTO 4
  IF ~~ THEN REPLY #30208 /* ~"Interessant... Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 8 // from: 7.0
  SAY #30178 /* ~"Also mußte ich ein bißchen grober werden... und während wir uns prügeln, da erwischt der alte Kerl doch mein Ohr und beißt es ab!"~ */
  IF ~~ THEN REPLY #30209 /* ~"Was ist dann passiert?"~ */ GOTO 9
  IF ~~ THEN REPLY #30210 /* ~"Also bist *du* es, der Nestors Gabel gestohlen hat."~ */ GOTO 4
  IF ~~ THEN REPLY #30211 /* ~"Interessant... Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 9 // from: 8.0
  SAY #30179 /* ~"Was glaubst du denn? Der verrückte Kerl hat mein Ohr abgebissen, also hab' ich ihm den Schädel eingeschlagen und ihn ins Totenbuch gesteckt! Tut mir jetzt leid..." Er schaut sich nervös um, bevor er fortfährt. "Ich glaube, sein Geist verfolgt mich."~ */
  IF ~~ THEN REPLY #30212 /* ~"Verfolgt dich?"~ */ GOTO 10
  IF ~~ THEN REPLY #30213 /* ~"Der alte Kerl ist nicht tot, du Narr. Ich hab' mit ihm drüben in der Spelunke gesprochen, und er sagt, er will seine Gabel wiederhaben."~ */ GOTO 4
  IF ~~ THEN REPLY #30214 /* ~"Interessant... Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 10 // from: 9.0
  SAY #30180 /* ~Er nickt und beschreibt schnell einen Halbkreis über seinem Herz. "Ja, ich schwör's. Manchmal höre ich seine Stimme, wie sie mich verflucht und mir sagt, daß er auf mich wartet. Dann mach' ich mir vor Angst fast in die Hosen."~ */
  IF ~~ THEN REPLY #30215 /* ~"Vielleicht kann ich dir helfen, seinen Geist zur Ruhe zu bringen... ihn davon abzubringen, dich zu 'verfolgen'."~ */ GOTO 11
  IF ~~ THEN REPLY #30216 /* ~"Der alte Kerl ist nicht tot, du Narr. Ich hab' mit ihm drüben in der Spelunke gesprochen, und er sagt, er will seine Gabel wiederhaben."~ */ GOTO 4
  IF ~~ THEN REPLY #30217 /* ~"Interessant... Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 11 // from: 10.0
  SAY #30181 /* ~Er weicht einen Schritt zurück und legt seinen Kopf leicht auf die Seite. "Ja? Wie denn?"~ */
  IF ~~ THEN REPLY #30218 /* ~"Indem ich *DICH* ins Totenbuch stecke, du fieses Dreckstück."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_OE_1","GLOBALGood",-1)
~ GOTO 13
  IF ~  CheckStatGT(Protagonist,12,INT)
~ THEN REPLY #30219 /* ~Lüge: "Ich habe Mächte über die Toten. Alles, was ich brauche, um einen Geist zum Schweigen zu bringen, ist ein Gegenstand, der ihm in seinem Leben mal gehört hat."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_OE_1","GLOBALLaw",-1)
~ GOTO 12
  IF ~~ THEN REPLY #30220 /* ~"Gib mir, was du ihm gestohlen hast, dann sehe ich zu, daß er weggeht."~ */ DO ~IncrementGlobalOnceEx("GLOBALLawful_OE_1","GLOBALLaw",1)
~ GOTO 4
  IF ~~ THEN REPLY #30221 /* ~"Vergiß es. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 12 // from: 11.1
  SAY #30182 /* ~Er beäugt dich eine Weile mißtrauisch und zuckt dann resigniert mit den Achseln. "Na gut, Schleifer... da hast du deinen Gegenstand. Ist wahrscheinlich sowieso nix wert." Er gibt dir eine kleine Gabel aus Stahl. "Schaff mir bloß den Geist vom Hals, ja?"~ */
  IF ~~ THEN REPLY #30222 /* ~"Fürchte dich nicht... der Geist wird dich nicht mehr verfolgen. Leb wohl."~ */ DO ~GiveItem("NesFork",[PC])
AddexperienceParty(200)
EscapeArea()
~ JOURNAL #28823 /* ~Ich habe es geschafft, den einohrigen Tiefling-Schläger so über sein eines Ohr zu hauen, daß er mir Nestors Gabel gegeben hat. Er sagte, daß er verfolgt werde und Stimmen in seinem Kopf höre. Er ist wahrscheinlich genau so verrückt wie der alte Mann.~ */ EXIT
END

IF ~~ THEN BEGIN 13 // from: 2.0 4.1 4.2 5.1 11.0
  SAY #30183 /* ~"Du hast wirklich eine scharfe Zunge, Dussel. Ich glaub', ich schneid' sie dir raus und füttere dich dann damit!" Er stürzt sich mit dem Messer auf dich.~ */
  IF ~~ THEN REPLY #30223 /* ~Verteidige dich.~ */ DO ~Enemy()
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
~ EXIT
END
