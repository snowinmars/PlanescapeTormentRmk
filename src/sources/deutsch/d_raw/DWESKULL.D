// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DWESKULL.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\de_DE\dialog.tlk
// dialogF  : (none)

BEGIN ~DWESKULL~

IF ~  Global("WeSkull_Talk","AR0508",0)
~ THEN BEGIN 0 // from:
  SAY #31810 /* ~Der seltsam geformte Schädel stößt einen hohen Piepton aus, bevor er dich anspricht. "K-k-k-kann ich dir h-helfen?"
~ */
  IF ~~ THEN REPLY #31811 /* ~"Wer bist du?"~ */ DO ~SetGlobal("WeSkull_Talk","AR0508",1)
~ GOTO 2
  IF ~~ THEN REPLY #31812 /* ~"Wie bist du hierher gekommen?"~ */ DO ~SetGlobal("WeSkull_Talk","AR0508",1)
~ GOTO 3
  IF ~~ THEN REPLY #31813 /* ~"Was kannst du mir über Lothar erzählen?"~ */ DO ~SetGlobal("WeSkull_Talk","AR0508",1)
~ GOTO 4
  IF ~~ THEN REPLY #31814 /* ~"Was kannst du mir über die anderen Schädel auf dem Regal erzählen?"~ */ DO ~SetGlobal("WeSkull_Talk","AR0508",1)
~ GOTO 5
  IF ~~ THEN REPLY #31815 /* ~"Nein. Leb wohl."~ */ DO ~SetGlobal("WeSkull_Talk","AR0508",1)
~ EXIT
END

IF ~  Global("WeSkull_Talk","AR0508",1)
~ THEN BEGIN 1 // from:
  SAY #31816 /* ~"D-d-d-d-du schon wieder?"~ */
  IF ~~ THEN REPLY #31817 /* ~"Wer bist du?"~ */ GOTO 2
  IF ~~ THEN REPLY #31818 /* ~"Wie bist du hierher gekommen?"~ */ GOTO 3
  IF ~~ THEN REPLY #31819 /* ~"Was kannst du mir über Lothar erzählen?"~ */ GOTO 4
  IF ~~ THEN REPLY #31820 /* ~"Was kannst du mir über die anderen Schädel auf dem Regal erzählen?"~ */ GOTO 5
  IF ~~ THEN REPLY #31821 /* ~"Bin schon wieder verschwunden. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 0.0 1.0 5.0
  SAY #31822 /* ~"Ich bin B-b-b-b-bockskamm. Ich war eine Werratte."~ */
  IF ~~ THEN REPLY #31823 /* ~"WERRATTE? Was gibt's denn sonst eigentlich noch so für WER-Biester?"~ */ GOTO 6
END

IF ~~ THEN BEGIN 3 // from: 0.1 1.1 5.1
  SAY #31824 /* ~"Das ist sehr p-p-p-peinlich. Ich war eine Ratte und auf der Suche nach F-f-f-futter an der Schwelenden Leiche, als... k-k-k-kurzum, ich hätte nie erwartet, daß eine Kellnerin eine S-s-s-silbergabel hätte. Mantuok f-f-fand mich zuckend auf dem Boden und h-h-h-hat mich hierher gebracht."~ */
  IF ~~ THEN REPLY #31825 /* ~"Was kannst du mir über Mantuok erzählen?"~ */ GOTO 7
  IF ~~ THEN REPLY #31826 /* ~"Was kannst du mir über die anderen Schädel hier erzählen?"~ */ GOTO 5
  IF ~~ THEN REPLY #31827 /* ~"Was kannst du mir über Lothar erzählen?"~ */ GOTO 4
  IF ~~ THEN REPLY #31828 /* ~"Aha. Na dann, leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 0.2 1.2 3.2 5.2
  SAY #31829 /* ~Bockskamms Schädel verstummt völlig. Wenn er Augen hätte, würde er sie jetzt vor Angst verdrehen, da bist du dir sicher. "Geh... weg..." flüstert der Schädel. Er weigert sich, mit dir zu reden.~ */
  IF ~~ THEN REPLY #31830 /* ~"Na dann leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 0.3 1.3 3.1
  SAY #31831 /* ~"Sie sind alle h-h-höchst voreingenommen. N-n-nur weil sie g-g-größtenteils menschliche Schädel waren, g-g-glauben sie, sie sind was B-b-besseres als ich. Ich h-h-HASSE sie."~ */
  IF ~~ THEN REPLY #31832 /* ~"Das ist eine gesunde Einstellung. Erzähl mir doch mal was über dich, ja?"~ */ GOTO 2
  IF ~~ THEN REPLY #31833 /* ~"So so. Wie bist du hier gelandet?"~ */ GOTO 3
  IF ~~ THEN REPLY #31834 /* ~"Dann magst du sicher Lothar, oder?"~ */ GOTO 4
  IF ~~ THEN REPLY #31835 /* ~"So so. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 6 // from: 2.0
  SAY #31836 /* ~"Oh, hier gibt's h-h-h-haufenweise. R-r-raben, W-wölfe, B-b-bären, Dachse... sogar K-k-krokodile! Es ist, als ob alle Tiere im L-l-land ein lykanthropisches G-g-g-gegenstück hätten. W-w-w-wirklich sehr interessant."~ */
  IF ~~ THEN REPLY #31837 /* ~"Was für Werratten gibt's denn hier?"~ */ GOTO 8
  IF ~~ THEN REPLY #31838 /* ~"Wie tötet man so ein Wer-Biest?"~ */ GOTO 9
  IF ~~ THEN REPLY #31839 /* ~"Ja, das ist es. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 7 // from: 3.0 8.0
  SAY #31840 /* ~"Dieser v-v-verfluchte Heckenzauberer! Dieser F-f-f-fusler! Ich habe ihn zu dem gemacht, was er heute ist. V-v-v-vor Jahren, als er nur ein stinkender Z-z-zweibeiner war, habe ich ihn gefunden und m-m-mir sein Bein als S-s-snack genehmigt. Schmeckte wie in Alk eingelegtes F-f-f-fleisch. Ich war t-t-t-tagelang betrunken. Dann taucht er auf. K-k-kriegt irgendein tolles B-b-buch und ich bin Schnee von g-g-g-gestern und Dekoration auf einem R-r-regal. Mistkerl."~ */
  IF ~~ THEN REPLY #31841 /* ~"Kennst du sein Geheimnis?"~ */ GOTO 10
  IF ~~ THEN REPLY #31842 /* ~"Wie kann ich ihn töten?"~ */ GOTO 9
  IF ~~ THEN REPLY #31843 /* ~"Du armer Schädel. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 8 // from: 6.0
  SAY #31844 /* ~"M-m-m-mantuok und seine Gang. Ich habe ihn geschaffen, und w-w-was tut er? Geht hin und verkauft mich an L-l-lothar! Aber das ist schon in Ordnung... Ich h-h-habe dem Boss alle seine Geheimnisse verraten. Mantuok denkt vielleicht, e-e-e-r ist in Sicherheit, aber Lothar w-w-w-weiß alles."
~ */
  IF ~~ THEN REPLY #31845 /* ~"Was kannst du mir über Mantuok erzählen?"~ */ GOTO 7
  IF ~~ THEN REPLY #31846 /* ~"Und was wären das für Geheimnisse?"~ */ GOTO 10
  IF ~~ THEN REPLY #31847 /* ~"Wie kann ich ihn töten?"~ */ GOTO 9
  IF ~~ THEN REPLY #31848 /* ~"Gut. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 9 // from: 6.1 7.1 8.2
  SAY #31849 /* ~"Einen L-l-l-lykanthropen zu töten ist ganz einfach. Man b-b-braucht nur eine silberne oder m-m-magische Waffe, und dann rein damit! Normale Waffen g-g-g-gehen nicht so gut... e-e-einmal wurde ich mit Pfeilen durchlöchert. H-h-h-hat ein bißchen gepiekt. Ich hab' ausgesehen wie ein Sch-sch-stachelschwein!"~ */
  IF ~~ THEN REPLY #31850 /* ~"Danke. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 10 // from: 7.0 8.1
  SAY #31851 /* ~"Sein G-g-g-geheimnis ist, daß er sowohl f-f-f-ür Lothar als auch für V-v-v-viele-als-Einer arbeitet, der Schättelratten-Geist im Stock. Ich weiß nicht, w-w-w-was er vorhat, a-a-a-ber... es ist auch e-e-e-egal, weil ich L-l-l-lothar sowieso alles erzählt habe."~ */
  IF ~~ THEN REPLY #31852 /* ~"Aha. Danke und leb wohl."~ */ EXIT
END
