// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DF_SS_RA.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\de_DE\dialog.tlk
// dialogF  : (none)

BEGIN ~DF_SS_RA~

IF ~  True()
~ THEN BEGIN 0 // from:
  SAY #51466 /* ~Dieser widerlich grüne Stein ist unverrückbar an dem Sockel befestigt, auf dem er ruht. Die Inschrift unterhalb des Steins lautet: "Der Bote"~ */
  IF ~  Global("Ravel","GLOBAL",0)
~ THEN REPLY #51467 /* ~Beginn die Erfahrung.~ */ GOTO 2
  IF ~  GlobalGT("Ravel","GLOBAL",0)
~ THEN REPLY #53012 /* ~Beginn die Erfahrung.~ */ GOTO 1
  IF ~~ THEN REPLY #53013 /* ~Geh weg.~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.1
  SAY #53014 /* ~Du berührst den Stein, aber in deinen Gedanken regt sich nichts... Es ist, als wäre der Stein leblos... irgendwie tot.~ */
  IF ~~ THEN REPLY #53015 /* ~Laß den Stein in Ruhe.~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 0.0
  SAY #53016 /* ~Als du den Stein berührst, wird sein grünes Äußeres schärfer, greller, und seine Helligkeit wird stärker, so daß du sie kaum ertragen kannst, so stark, daß du die Augen schließt, um sie auszusperren...~ */
  IF ~~ THEN REPLY #53017 /* ~Schließ die Augen, tauch in die Erfahrung ein...~ */ GOTO 4
  IF ~~ THEN REPLY #53018 /* ~Schüttel die Erfahrung ab, laß den Stein los.~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 4.1 5.3 6.1 7.2 8.1 9.2 10.1 19.1 21.0
  SAY #53019 /* ~Du beginnst wieder klar zu sehen, bis du wieder vor dem häßlich grünen Stein stehst... Er sieht anders aus als vorher, irgendwie... schrecklicher.~ */
  IF ~~ THEN REPLY #53020 /* ~Versuch, die Erfahrung abzuschütteln, geh weg.~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 2.0
  SAY #53021 /* ~Als du die Augen schließt, spürst, wie die Haut an deinen Armen taub wird, als ob alles Gefühl aus ihnen strömt. Müde... so müde. Du versuchst zu blinzeln, doch die Dunkelheit bleibt. Deine Lider fühlen sich weich und schwer an, reagieren nicht. Der Boden, auf dem du sitzt, fühlt sich schmutzig an, und du bist umgeben von einem Geruch nach Blut und... Kräutern? Warum bist du hier? Du bist hier hergekommen um - was? Deine Erinnerung läßt dich im Stich, aber du spürst eine langsam anwachsende Panik in dir aufsteigen...~ */
  IF ~~ THEN REPLY #53022 /* ~Versuch, dich zu orientieren...~ */ GOTO 5
  IF ~~ THEN REPLY #53023 /* ~Lös dich von der Erfahrung.~ */ GOTO 3
END

IF ~~ THEN BEGIN 5 // from: 4.0
  SAY #53024 /* ~"Ah... Aufgewacht jetzt, ja? Fertig mit dem Fragenstellen?" Die Stimme ist die einer alten Frau, träge und kratzig, als ob sie sich ihren Weg durch Schichten von Staub bahnen müßte. So sehr du dich auch bemühst, du kannst die Augen nicht öffnen und die Frau sehen, aber du spürst, wie du vor Angst erschauderst. Irgend etwas stimmt nicht, ganz und gar nicht. Du versuchst zu antworten, doch außer einem heiseren *Krächzen* bringst du nichts heraus. Du kannst deine Zunge nicht spüren... Und deine Augen? Was ist los mit deinen Augen?~ */
  IF ~  Global("Know_Ravel_Stone","AR0604",1)
GlobalGT("Know_Ravel","GLOBAL",0)
~ THEN REPLY #53025 /* ~"Ravel? Ravel, ich bin's!"~ */ GOTO 9
  IF ~  Global("Know_Ravel_Stone","AR0604",2)
GlobalGT("Know_Ravel","GLOBAL",0)
~ THEN REPLY #53026 /* ~"Ravel? Ich bin zurückgekommen."~ */ GOTO 9
  IF ~~ THEN REPLY #53027 /* ~Hör zu...~ */ GOTO 6
  IF ~~ THEN REPLY #53028 /* ~Lös dich von der Erfahrung.~ */ GOTO 3
END

IF ~~ THEN BEGIN 6 // from: 5.2
  SAY #53029 /* ~"Nun, gesehen hast du mich, gesprochen hast du, und das *schlecht*, also hast du den Preis bezahlt, hmm?" Die Alte klingt amüsiert, dann senkt sich ihr Tonfall abrupt. "Keine Fragen mehr von dir, jetzt wirst du ZUHÖREN, und du wirst dich an meine Worte erinnern, denn wenn du auf mich hörst, wirst du *leben*." Sie zischt. "Nicke, wenn du mich hörst, sonst nehme ich NOCH EIN Stück."~ */
  IF ~~ THEN REPLY #53030 /* ~Nick mit dem Kopf.~ */ GOTO 7
  IF ~~ THEN REPLY #53031 /* ~Lös dich von der Erfahrung.~ */ GOTO 3
END

IF ~~ THEN BEGIN 7 // from: 6.0
  SAY #53032 /* ~"Erinnere an mich, Reisender. Erinnere durch einen Stein an mich, einen der schönen Schimmernden in deiner Festhalle. Benutze ihn wie einen Becher, schütte hinein, was du *fühlst*, und wisse dies: Erinnere einen Mann an mich, dessen Haut Narben und Tätowierungen trägt, der Erinnerungen sucht, sie aber verlegt hat. Wenn er schlau ist, wird er wissen, daß er MICH kennt. Sag ihm, er soll mich suchen, oder, wenn ich nicht zu finden bin, sag ihm, er soll zu dem schimmernden Stein kommen, und wir werden reden, mein Schatz und ich." Die Frau verstummt, dann zischt sie wieder. "NICKE, wenn du mich hörst, zerlumptes Ding!"~ */
  IF ~  GlobalLT("Know_Ravel_Stone","AR0604",2)
~ THEN REPLY #53033 /* ~Nick mit dem Kopf.~ */ DO ~SetGlobal("Know_Ravel_Stone","AR0604",1)
~ GOTO 8
  IF ~  GlobalGT("Know_Ravel_Stone","AR0604",1)
~ THEN REPLY #53030 /* ~Nick mit dem Kopf.~ */ GOTO 8
  IF ~~ THEN REPLY #53034 /* ~Lös dich von der Erfahrung.~ */ GOTO 3
END

IF ~~ THEN BEGIN 8 // from: 7.0 7.1
  SAY #53035 /* ~"Ah... Schön, höflich, so lange zuzuhören... Wenn er zu dem schimmernden Stein kommt, sag dem Mann, er soll meinen *Namen* sprechen, und deine Mühe soll nicht vergebens gewesen sein..." Die Stimme der Alten verstummt, als würde sie abgelenkt. Du versuchst erneut zu sprechen, aber es entsteht nur ein kränkliches, gurgelndes Geräusch. Was ist passiert? Wer ist diese Person? Warum bist du... Und du merkst, wie du langsam in die Bewußtlosigkeit abgleitest...~ */
  IF ~  GlobalGT("Know_Ravel","GLOBAL",0)
~ THEN REPLY #53036 /* ~"Ravel! Ravel, ich bin's!"~ */ JOURNAL #53038 /* ~Ich habe im Privaten Sinnsorium der Festhalle einen entsetzlichen Stein gesehen. Er war von einem grauenhaften Grün und enthielt eine Erfahrung von jemandem, der sich in Ravels Händen befand und gefoltert wurde, damit er die Erfahrung zurück in die Festhalle bringen konnte... und letztendlich zu mir. Darin sagt Ravel, daß ich ihren Namen aussprechen solle, wenn ich den Stein finde. Und das hab ich dann getan.~ */ GOTO 9
  IF ~~ THEN REPLY #53037 /* ~Lös dich von der Erfahrung.~ */ JOURNAL #53039 /* ~Ich habe im Privaten Sinnsorium der Festhalle einen entsetzlichen Stein gesehen. Er war von einem grauenhaften Grün und enthielt eine Erfahrung von jemandem, der gefoltert wurde, damit er die Erfahrung zurück in die Festhalle bringen konnte... und letztendlich zu mir. Die böse Alte in der Erfahrung meinte, daß ich ihren Namen aussprechen solle, wenn ich den Stein finde. Was mich jedoch wahnsinnig macht, ist, daß ich keine Ahnung habe, wer diese Frau ist. Ich komme also wieder, sobald ich ihren Namen herausgefunden habe.~ */ GOTO 3
END

IF ~~ THEN BEGIN 9 // from: 5.0 5.1 8.0
  SAY #53040 /* ~Es herrscht Stille. ~ */
  IF ~  Global("Know_Ravel_Stone","AR0604",1)
~ THEN REPLY #53041 /* ~"Ravel..?"~ */ DO ~SetGlobal("Know_Ravel_Stone","AR0604",2)
GiveExperience(Protagonist,6000)
~ GOTO 10
  IF ~  Global("Know_Ravel_Stone","AR0604",2)
~ THEN REPLY #53042 /* ~"Ravel...? Ich bin es wieder."~ */ GOTO 10
  IF ~~ THEN REPLY #53043 /* ~Lös dich von der Erfahrung.~ */ GOTO 3
END

IF ~~ THEN BEGIN 10 // from: 9.0 9.1
  SAY #53044 /* ~"Ahhh... Mein Schatz." Ein langsames Schlurfen ist zu hören, und du *spürst* einen scharfen Nadelstich in deinem linken Auge. Du schnappst nach Luft, und plötzlich kannst du wieder etwas SEHEN - mit deinem einem und einzigen Auge. Du liegst in einer grauen Hütte, auf einem schmutzigen Boden, auf dem Blut, dein hellrotes Blut, in den grauen Staub um dir herum gesickert ist. Deine Arme sind weg, deine Beine wurden an den Knien abgehackt. Doch... du fühlst dich betäubt und hast keine Schmerzen... nur Angst. Jemand steht über dir, jemand sieht auf dich herunter...~ */
  IF ~~ THEN REPLY #53045 /* ~Heb den Blick.~ */ GOTO 11
  IF ~~ THEN REPLY #53046 /* ~Lös dich von der Erfahrung.~ */ GOTO 3
END

IF ~~ THEN BEGIN 11 // from: 10.0
  SAY #53047 /* ~Als du durch den blutigen Schleier nach oben blickst, siehst du ein blau-graues Gesicht, das grinst und dabei vergilbte Hauer zeigt. "Ravel ist *erfreut*. Ich habe mich gefragt, ob dieser Bote es schaffen würde, denn er war *schwach*, als seine Stücke auf meinen Teller kamen..." Sie hält eine Kralle vor dir hoch, und aufgespießt auf ihrer Spitze ist ein Augapfel - der rechte. "Doch zur Festhalle ist er zurückgekehrt, so scheint es, und unsere gemeinsame Zeit hat er geteilt. Und nun bist du gekommen... Erfolg!"~ */
  IF ~~ THEN REPLY #53048 /* ~"Ravel... Ich habe viele Fragen an dich."~ */ GOTO 12
  IF ~~ THEN REPLY #53049 /* ~"Leb wohl, Ravel..."~ */ GOTO 19
END

IF ~~ THEN BEGIN 12 // from: 11.0
  SAY #53050 /* ~Die Alte schüttelt den Kopf. Verschwommen siehst du drei Bilder gleichzeitig. Das graue Haar, das ihr auf die Schultern fällt, ist wie Dornenzweige. "Nein, nur Zeit für Antworten hat Ravel, und sie kann keine Zeit mit deinen Rate-Fragen verschwenden. Wisse dies, und laß das Wissen dich stark machen: Du mußt mich FINDEN, mein Schatz."~ */
  IF ~~ THEN REPLY #53051 /* ~"Aber wie? Ich weiß nicht..."~ */ JOURNAL #53053 /* ~Der Sinnesstein im Privaten Sinnsorium enthielt eine Erfahrung mit Ravel, und ich konnte sogar durch den Stein mit ihr reden, obwohl ich nicht weiß, wie ich das gemacht habe. Sie meinte, daß ich sie finden müsse, und dazu müsse ich "eine Tür finden, den Schlüssel kennen und den Schlüssel aufschließen". Ich weiß nicht mehr genau, was sie im einzelnen zu jedem gesagt hat, aber ich denke mal, daß ich jederzeit zu dem Stein zurückkehren kann, wenn ich weitere Hinweise brauche.~ */ GOTO 13
  IF ~~ THEN REPLY #53052 /* ~"Ich kann nicht bleiben, Ravel..."~ */ GOTO 19
END

IF ~~ THEN BEGIN 13 // from: 12.0
  SAY #53054 /* ~"Ts! Ich bin jenseits des Wissens, an dem Ort einer Dame. Jetzt schweig und hör Ravel zu, denn es gibt viel, was du tun mußt - um mich zu finden, mußt du drei Dinge tun: die Türe finden, den Schlüssel kennen, dann den Schlüssel *aufschließen*."~ */
  IF ~  !PartyHasItem("Uportal")
~ THEN REPLY #53055 /* ~"Tür?"~ */ GOTO 14
  IF ~  PartyHasItem("Uportal")
~ THEN REPLY #53056 /* ~"Tür?"~ */ GOTO 15
  IF ~~ THEN REPLY #53057 /* ~"Schlüssel?"~ */ GOTO 16
  IF ~~ THEN REPLY #53058 /* ~"Den Schlüssel aufschließen?"~ */ GOTO 18
  IF ~~ THEN REPLY #53059 /* ~"Ravel... Wie kann ich mit dir sprechen, wenn dies die Erfahrung von jemand anderem ist?"~ */ GOTO 22
  IF ~~ THEN REPLY #53060 /* ~"Leb wohl, Ravel..."~ */ GOTO 19
END

IF ~~ THEN BEGIN 14 // from: 13.0 16.1 17.0 18.0 22.0
  SAY #53061 /* ~"Die Tür ist kein fertiges Ding... zumindest nicht, als ich sie zuletzt sah, hmm? Aber im Lauf der Zeit ist sie vielleicht ausgearbeitet worden. Geh zu dem Ort von Schmieden und Stahl. Vielleicht findest du dort die Tür, die einen zu mir bringt..."~ */
  IF ~  GlobalGT("Know_Ravel_Key","GLOBAL",0)
GlobalLT("Know_Ravel_Key","GLOBAL",2)
~ THEN REPLY #53062 /* ~"Ravel, ich weiß, daß der Schlüssel ein Stück von dir ist, aber ich weiß nicht, wie ich es finden kann..."~ */ GOTO 17
  IF ~  Global("Know_Ravel_Key","GLOBAL",0)
~ THEN REPLY #53063 /* ~"Was ist das für ein Schlüssel, von dem du sprichst?"~ */ GOTO 16
  IF ~~ THEN REPLY #53064 /* ~"Den Schlüssel aufschließen? Was meinst du damit?"~ */ GOTO 18
  IF ~~ THEN REPLY #53065 /* ~"Ravel... Wie kann ich mit dir sprechen, wenn dies die Erfahrung von jemand anderem ist?"~ */ GOTO 22
  IF ~~ THEN REPLY #53066 /* ~"Leb wohl, Ravel..."~ */ GOTO 19
END

IF ~~ THEN BEGIN 15 // from: 13.1 16.2 17.1 18.1 22.1
  SAY #53067 /* ~"Die Tür ist ein fertiges Ding, und du trägst sie jetzt bei dir... Sehr gut, sehr *clever*, mein Schatz... Einen Teil, den du zum Finden von Ravel brauchst, hast du nun..."~ */
  IF ~  GlobalGT("Know_Ravel_Key","GLOBAL",0)
GlobalLT("Know_Ravel_Key","GLOBAL",2)
~ THEN REPLY #53068 /* ~"Ravel, ich weiß, daß der Schlüssel ein Stück von dir ist, aber ich weiß nicht, wie ich es finden kann..."~ */ GOTO 17
  IF ~  Global("Know_Ravel_Key","GLOBAL",0)
~ THEN REPLY #53069 /* ~"Was ist das für ein Schlüssel, von dem du sprichst?"~ */ GOTO 16
  IF ~~ THEN REPLY #53070 /* ~"Den Schlüssel aufschließen? Was meinst du damit?"~ */ GOTO 18
  IF ~~ THEN REPLY #53071 /* ~"Ravel... Wie kann ich mit dir sprechen, wenn dies die Erfahrung von jemand anderem ist?"~ */ GOTO 22
  IF ~~ THEN REPLY #53072 /* ~"Leb wohl, Ravel..."~ */ GOTO 19
END

IF ~~ THEN BEGIN 16 // from: 13.2 14.1 15.1 18.3 22.3
  SAY #53073 /* ~"Um den Schlüssel zu KENNEN, sprich mit einem der Wissenden - viele sind in der Festhalle, *viele*, doch ist dort nur EINER, der das Wissen kennt, welcher Schlüssel derjenige ist, den du brauchst. Löse seine Zunge, und viele Geheimnisse werden gelüftet werden..."~ */
  IF ~  GlobalGT("Know_Ravel_Key","GLOBAL",0)
GlobalLT("Know_Ravel_Key","GLOBAL",2)
~ THEN REPLY #53074 /* ~"Ravel, ich weiß, daß der Schlüssel ein Stück von dir ist, aber ich weiß nicht, wie ich es finden kann..."~ */ GOTO 17
  IF ~  !PartyHasItem("Uportal")
~ THEN REPLY #53075 /* ~"Von welcher Tür sprichst du?"~ */ GOTO 14
  IF ~  PartyHasItem("Uportal")
~ THEN REPLY #53076 /* ~"Von welcher Tür sprichst du?"~ */ GOTO 15
  IF ~~ THEN REPLY #53077 /* ~"Wenn du sagst 'den Schlüssel aufschließen', was meinst du damit?"~ */ GOTO 18
  IF ~~ THEN REPLY #53078 /* ~"Ravel... Wie kann ich mit dir sprechen, wenn dies die Erfahrung von jemand anderem ist?"~ */ GOTO 22
  IF ~~ THEN REPLY #53079 /* ~"Leb wohl, Ravel..."~ */ GOTO 19
END

IF ~~ THEN BEGIN 17 // from: 14.0 15.0 16.0 18.2 22.2
  SAY #53080 /* ~"Der Schlüssel ist VON mir, nicht wahr... Eh..." Die Alte zischt, als ob sie versucht, ihre Gedanken zu sammeln, und deine Sicht verschwimmt wieder. "Kein Bild ist er, keine Geschichte, kein Stein, aber der Schlüssel ist etwas von MIR, ein Werk von meinem eigen Fleisch und Blut. Suche ihn! *Leben* tut er..."~ */
  IF ~  !PartyHasItem("Uportal")
~ THEN REPLY #53081 /* ~"Von welcher Tür sprichst du?"~ */ GOTO 14
  IF ~  PartyHasItem("Uportal")
~ THEN REPLY #53082 /* ~"Von welcher Tür sprichst du?"~ */ GOTO 15
  IF ~~ THEN REPLY #53083 /* ~"Wenn du sagst 'den Schlüssel aufschließen', was meinst du damit?"~ */ GOTO 18
  IF ~~ THEN REPLY #53084 /* ~"Ravel... Wie kann ich mit dir sprechen, wenn dies die Erfahrung von jemand anderem ist?"~ */ GOTO 22
  IF ~~ THEN REPLY #53085 /* ~"Leb wohl, Ravel..."~ */ GOTO 19
END

IF ~~ THEN BEGIN 18 // from: 13.3 14.2 15.2 16.3 17.2 22.4
  SAY #53086 /* ~"Den Schlüssel kennen ist NICHT genug, glaubt Ravel. Ihn kennen und ihn aufschließen, zwei Aufgaben, die verbunden werden müssen... Denn manchmal kennt ein Ding sein Wesen nicht... Aber das ist dir nicht fremd..." Ravel kichert, ein langanhaltender, gräßlicher Ton, der deine Ohren mit Schmerz erfüllt...~ */
  IF ~  !PartyHasItem("Uportal")
~ THEN REPLY #53087 /* ~"Von welcher Tür sprichst du?"~ */ GOTO 14
  IF ~  PartyHasItem("Uportal")
~ THEN REPLY #53088 /* ~"Von welcher Tür sprichst du?"~ */ GOTO 15
  IF ~  GlobalGT("Know_Ravel_Key","GLOBAL",0)
GlobalLT("Know_Ravel_Key","GLOBAL",2)
~ THEN REPLY #53089 /* ~"Ravel, ich weiß, daß der Schlüssel ein Stück von dir ist, aber ich weiß nicht, wie ich es finden kann..."~ */ GOTO 17
  IF ~  Global("Know_Ravel_Key","GLOBAL",0)
~ THEN REPLY #53090 /* ~"Was ist das für ein Schlüssel, von dem du sprichst?"~ */ GOTO 16
  IF ~~ THEN REPLY #53091 /* ~"Ravel... Wie kann ich mit dir sprechen, wenn dies die Erfahrung von jemand anderem ist?"~ */ GOTO 22
  IF ~~ THEN REPLY #53092 /* ~"Leb wohl, Ravel..."~ */ GOTO 19
END

IF ~~ THEN BEGIN 19 // from: 11.1 12.1 13.5 14.4 15.4 16.5 17.4 18.5 22.5
  SAY #53093 /* ~"Komm zurück, ich werde dir soviel Hilfe geben, wie ich kann..." Ravel setzt ein endgültiges, schreckliches Lächeln auf, das den Blick auf gelbe Hauer freigibt, ihre schwärzliche Zunge schießt zwischen ihren Lippen hervor und bleibt neckend am Mundwinkel hängen. "Aber letztendlich bleibt nur eine Frage..."~ */
  IF ~~ THEN REPLY #53094 /* ~"Was meinst du, Ravel?"~ */ GOTO 20
  IF ~~ THEN REPLY #53095 /* ~Laß die Erfahrung los...~ */ GOTO 3
END

IF ~~ THEN BEGIN 20 // from: 19.0
  SAY #53096 /* ~"Nur eine Frage, diese stelle ich..." Ravels Augen lodern wie Feuer, das rote Licht läßt ihr Gesicht blutrot erscheinen. "Was kann das Wesen eines Menschen ändern?"~ */
  IF ~~ THEN GOTO 21
END

IF ~~ THEN BEGIN 21 // from: 20.0
  SAY #53098 /* ~Bei der Frage spürst du, wie dich ein Zittern durchläuft, wie Donner, und du fühlst dich, als ob du *brennst*...~ */
  IF ~~ THEN REPLY #53099 /* ~Laß die Erfahrung los...~ */ GOTO 3
END

IF ~~ THEN BEGIN 22 // from: 13.4 14.3 15.3 16.4 17.3 18.4
  SAY #53100 /* ~"Von Steinen und Erfahrungen wird Ravel erzählen, aber nicht davon, wie sie jetzt mit dir spricht." Sie spricht beruhigend. "Zahlreich sind die Verzweigungen und Windungen von Ravel, und zahlreich sind ihre *Geheimnisse*. Ich brauche dich, und es ist notwendig, daß du dies weißt."~ */
  IF ~  !PartyHasItem("Uportal")
~ THEN REPLY #53101 /* ~"Von welcher Tür sprichst du?"~ */ GOTO 14
  IF ~  PartyHasItem("Uportal")
~ THEN REPLY #53102 /* ~"Von welcher Tür sprichst du?"~ */ GOTO 15
  IF ~  GlobalGT("Know_Ravel_Key","GLOBAL",0)
GlobalLT("Know_Ravel_Key","GLOBAL",2)
~ THEN REPLY #53103 /* ~"Ravel, ich weiß, daß der Schlüssel ein Stück von dir ist, aber ich weiß nicht, wie ich es finden kann..."~ */ GOTO 17
  IF ~  Global("Know_Ravel_Key","GLOBAL",0)
~ THEN REPLY #53104 /* ~"Was ist das für ein Schlüssel, von dem du sprichst?"~ */ GOTO 16
  IF ~~ THEN REPLY #53105 /* ~"Wenn du sagst 'den Schlüssel aufschließen', was meinst du damit?"~ */ GOTO 18
  IF ~~ THEN REPLY #53106 /* ~"Leb wohl, Ravel..."~ */ GOTO 19
END
