// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DLINGASH.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\de_DE\dialog.tlk
// dialogF  : (none)

BEGIN ~DLINGASH~

IF ~  True()
~ THEN BEGIN 0 // from:
  SAY #46175 /* ~Auf diesem kleinen Schrank steht eine Urne, die mit Asche und verkohlten Knochenteilen gefüllt ist. In den Fuß der Urne sind die Worte "Fin Andlye - Geliebter Ehemann, Vater und Gelehrter von Einhundert Sprachen" eingraviert.~ */
  IF ~  Global("Speak_with_Dead","GLOBAL",1)
~ THEN REPLY #46176 /* ~Wende die Erzählenden Knochen auf die sterblichen Reste an.~ */ GOTO 1
  IF ~~ THEN REPLY #46177 /* ~Geh weg.~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #46178 /* ~Die Asche scheint sich zu bewegen, als hätte dein Atem sie leicht aufgewirbelt. Aus der Urne dringt eine flüsternde, entfernt klingende Stimme. "Warum, warum bin ich hier bei dieser Asche, so kalt und grau wie das Herz einer Hexe?"~ */
  IF ~~ THEN REPLY #46179 /* ~"Um ein paar Fragen zu beantworten, Geist..."~ */ GOTO 2
  IF ~~ THEN REPLY #46180 /* ~"Einfach so. Leb wohl, Geist."~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.0
  SAY #46181 /* ~"Dann frag schon, damit ich bald wieder in aller Stille denken kann..."~ */
  IF ~~ THEN REPLY #46182 /* ~"Wer warst du?"~ */ GOTO 3
  IF ~  PartyHasItem("P_Jrnl")
Global("P_Journal","GLOBAL",3)
~ THEN REPLY #46183 /* ~Beschreib ihm die Schriftzeichen auf dem entfalteten Dodekaeder. Frag ihn, ob er diese Sprache kennt.~ */ GOTO 4
  IF ~~ THEN REPLY #46184 /* ~"Vergiß es. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 2.0
  SAY #46185 /* ~"Ich war Fin, ein Sprachgelehrter. Ich wurde ermordet - ermordet! - von einem meiner Schüler. Er wollte verhindern, daß ich anderen dieselbe Sprache lehrte, dich ich ihm beigebracht hatte. Es war die Sprache der Uyo, eine der seltensten im Multiversum. Außer mir kannte ich keinen, der sie sprach - bis auf diesen Mordbuben..."~ */
  IF ~  PartyHasItem("P_Jrnl")
Global("P_Journal","GLOBAL",3)
~ THEN REPLY #46186 /* ~Beschreib ihm die Schriftzeichen auf dem entfalteten Dodekaeder. Frag ihn, ob er diese Sprache kennt.~ */ GOTO 5
  IF ~~ THEN REPLY #46187 /* ~"Mehr wollt' ich gar nicht wissen. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 2.1
  SAY #46188 /* ~"Ja, ich kenne diese Sprache. Ich war nämlich früher Sprachgelehrter. Ich wurde ermordet - ermordet! - von einem meiner Schüler. Er wollte verhindern, daß ich anderen dieselbe Sprache lehrte, die ich ihm beigebracht hatte. Es war die Sprache der Uyo, eine der seltensten im Multiversum. Außer mir kannte ich keinen, der sie sprach - bis auf diesen Mordbuben..."~ */
  IF ~~ THEN REPLY #46189 /* ~"Du könntest mir also helfen, diese tote Sprache zu lernen?"~ */ GOTO 5
END

IF ~~ THEN BEGIN 5 // from: 3.0 4.0
  SAY #46190 /* ~"Ja, ich könnte sie dir beibringen... Das würde ich sogar sehr gerne tun, wenn auch nur, um diesem blutrünstigen Schüler von damals eins auszuwischen. Aber sag mir zuerst, welche Sprachen du *sprichst*..."~ */
  IF ~~ THEN REPLY #46191 /* ~Laß dir von dem Geist so viel wie möglich beibringen.~ */ DO ~FadeToColor([20.0],0)
Wait(3)
FadeFromColor([20.0],0)
PlaySoundNotRanged("SPTR_01")
SetGlobal("P_Journal","GLOBAL",4)
~ GOTO 6
END

IF ~~ THEN BEGIN 6 // from: 5.0
  SAY #46193 /* ~Als der Geist dir von der untergegangenen Sprache der Uyo erzählt, spürst du ein Pochen in den Schläfen, als ob eine Erinnerung wieder erwacht... Die Erinnerung an diese Sprache. Du erinnert dich zuerst an einzelne Buchstaben, Wörter und Sätze, bis plötzlich die ganze Sprache - wie durch einen Turmwind, der den giftigen Nebel und Rauch über der Großen Gießerei wegbläst - wieder präsent ist.~ */
  IF ~~ THEN REPLY #46194 /* ~Weiter...~ */ DO ~GiveExperience(Protagonist,8000)
~ JOURNAL #39479 /* ~Ich hab mit dem Geist des Linguisten Fin Andlye gesprochen und herausbekommen, daß ich die Sprache, in der der Text auf dem dodekaedrischen Rätselkasten verfaßt ist, kenne. Nun kann ich das Ganze endlich lesen.~ */ GOTO 7
END

IF ~~ THEN BEGIN 7 // from: 6.0
  SAY #46195 /* ~Doch da ist noch eine andere Erinnerung, die wie eine Luftblase an die Oberfläche steigt... Es ist eine dunklere Erinnerung, die dich mit Unbehagen erfüllt und dir unerklärliche Gewissensbisse verschafft...~ */
  IF ~~ THEN REPLY #46196 /* ~Versuche nicht, dich daran zu erinnern.~ */ GOTO 11
  IF ~~ THEN REPLY #46197 /* ~Laß die Erinnerung an die Oberfläche kommen.~ */ DO ~SetGlobal("Murdered_Fin","GLOBAL",1)
GiveExperience(Protagonist,4000)
PlaySoundNotRanged("SPTR_01")
~ JOURNAL #39480 /* ~Als ich mit dem Linguisten Fin Andlye gesprochen habe, habe ich mich daran erinnert, daß ich es war, der ihn umgebracht hat. Ich kann nur vermuten, daß das deshalb geschah, damit er keinen die Sprache der Uyo lehren konnte und dadurch das auf den dodekaedrischen Rätselkasten Geschriebene geheim blieb.~ */ GOTO 8
END

IF ~~ THEN BEGIN 8 // from: 7.1
  SAY #46198 /* ~Schließlich erinnerst du dich auch an Fin Andlye. Du erinnerst dich an seine sanfte Stimme und sein freundliches Wesen. Du siehst ihn vor dir, wie er dir die antike Sprache der Uyo beibringt. Und du siehst deine eigene, narbenbedeckte Hand, die seinen zarten Hals umschließt und ihn erwürgt, damit der geheime Inhalt deines Journals - das du mit drei Fallen versehen, in einem dodekaederförmigen Rätselkasten versteckt und in der obskuren Sprache der Uyo geschrieben hast- auf immer und ewig vor naseweisen Blicken geschützt bleibt...~ */
  IF ~~ THEN REPLY #46199 /* ~"Fin... Ich muß dir was gestehen... Ich war es, der dich damals getötet hat."~ */ DO ~IncrementGlobalOnceEx("GLOBALGood_Ashes_1","GLOBALGood",1)
~ JOURNAL #39506 /* ~Ich habe Fin Andlye gestanden, daß ich ihn umgebracht habe, und ihm erklärt, warum. Er vergab mir, wofür ich ihm sehr dankbar bin... und irgendwie ist mir, als wäre eine, wenn auch kleine, Last von mir abgefallen.~ */ GOTO 9
  IF ~~ THEN REPLY #46200 /* ~"Ich glaub, ich kann die Sprache jetzt gut genug. Vielen Dank, Fin. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 9 // from: 8.0
  SAY #46201 /* ~Der Geist ist eine Weile stumm, während die Asche in der Urne leise vor sich hin raschelt. Dann sagt er mit sorgenvoller Stimme. "Aber... warum... bist du zurückgekehrt? Hast du *vergessen*, was ich dir beigebracht habe?"~ */
  IF ~~ THEN REPLY #46202 /* ~"Nein... äh, ja. Es ist schwer zu erklären, aber dein Mörder muß ein früheres 'Ich' von mir gewesen sein. Jedesmal wenn ich sterbe, ist es, als würde ich danach aus einem langen Schlaf erwachen... Aber ich vergesse immer, wer ich war, oder was ich getan habe..."~ */ GOTO 10
END

IF ~~ THEN BEGIN 10 // from: 9.0
  SAY #46203 /* ~"Ich glaube, ich verstehe... Ich fühle deine Reue und verzeihe dir. Friede sei mit dir, mein Schüler. Mögest du in diesem Leben gütiger sein als in dem andern Leben, das das meine jäh beendet hat..."~ */
  IF ~~ THEN REPLY #46204 /* ~"Vielen Dank, Fin. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 11 // from: 7.0
  SAY #46205 /* ~Der Geist wirkt etwas verunsichert durch deine offensichtliche Kenntnis der Sprache der Sidhi. "Du scheinst mit den Gründzügen der Sprache bereits vertraut zu sein, Schüler..."~ */
  IF ~~ THEN REPLY #46206 /* ~"Ja... Ich glaube, ich kann die Sprache jetzt gut genug. Vielen Dank, Fin. Leb wohl."~ */ EXIT
END
