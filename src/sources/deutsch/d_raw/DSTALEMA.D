// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DSTALEMA.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\de_DE\dialog.tlk
// dialogF  : (none)

BEGIN ~DSTALEMA~

IF ~  Global("Stale_Mary","GLOBAL",0)
!CreatureInArea("AR1501")
~ THEN BEGIN 0 // from:
  SAY #2991 /* ~Dieses muffig riechende Zombieweibchen sieht außerordentlich alt aus, beinahe mumifiziert. Seine Haut hat das Aussehen schimmelnden graugrünen Leders, und eines seiner Augen ist herausgefallen und hat in seinem Gesicht eine dunkle Höhle hinterlassen. Seine Stimme ist langsam und dicht: "Söh-söi-göhgruuußß."~ */
  IF ~~ THEN REPLY #2992 /* ~"Sei gegrüßt..."~ */ DO ~SetGlobal("Stale_Mary","GLOBAL",1)
SetGlobal("Know_Stale_Mary","GLOBAL",1)
~ GOTO 1
  IF ~~ THEN REPLY #22185 /* ~"Sei gegrüßt. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #22189 /* ~Sie zeigt auf sich und spricht wieder. "Muh-muh-muhffsche Muhhhry." Es klingt so, als eiterten ihre Stimmbänder in einer suppigen Brühe ganz unten in ihrem Hals vor sich hin.~ */
  IF ~  CheckStatLT(Protagonist,16,INT)
~ THEN REPLY #22191 /* ~"Muffige Mary? Ich hätte da ein paar Fragen..."~ */ GOTO 3
  IF ~  CheckStatGT(Protagonist,15,INT)
~ THEN REPLY #22192 /* ~"Muffige Mary? Ich hätte da ein paar Fragen..."~ */ GOTO 14
  IF ~~ THEN REPLY #22193 /* ~"Ich muß jetzt los, Mary. Lebe wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from:
  SAY #22195 /* ~Die Leiche nickt langsam zur Antwort.~ */
  IF ~  CheckStatGT(Protagonist,15,INT)
~ THEN REPLY #22196 /* ~"Ich hätte da ein paar Fragen..."~ */ GOTO 14
  IF ~  CheckStatLT(Protagonist,16,INT)
~ THEN REPLY #22197 /* ~"Ich hätte da ein paar Fragen..."~ */ GOTO 3
  IF ~~ THEN REPLY #22198 /* ~"Ich muß jetzt gehen. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 1.0 2.1 4.2 45.0
  SAY #22200 /* ~Sie nickt und wartet auf deine Frage.~ */
  IF ~  Global("Hargrimm_Clue","AR1500",1)
Global("Speak_With_Dead","GLOBAL",0)
~ THEN REPLY #22201 /* ~"Hargrimm hat gesagt, ich müßte *lernen*, dir zuzuhören... weißt du, was er damit gemeint hat?"~ */ GOTO 6
  IF ~  Global("DN_Appeal","AR1500",1)
~ THEN REPLY #22202 /* ~"Mary, ich muß mit dem Schweigenden König reden. Kannst du mir helfen?"~ */ GOTO 4
  IF ~  Global("DN_Prisoner","GLOBAL",1)
~ THEN REPLY #22203 /* ~"Warum hat man mich zu einem Gefangenen gemacht?"~ */ GOTO 4
  IF ~~ THEN REPLY #22205 /* ~"Wo bin ich?"~ */ GOTO 4
  IF ~~ THEN REPLY #22207 /* ~"Was machst du hier?"~ */ GOTO 4
  IF ~~ THEN REPLY #22209 /* ~"Wer wohnt an diesem Ort?"~ */ GOTO 4
  IF ~~ THEN REPLY #22210 /* ~"Ich will etwas über eine bestimmte Person wissen..."~ */ GOTO 4
  IF ~  Global("Pharod_Quest","GLOBAL",1)
!PartyHasItem("Bsphere")
~ THEN REPLY #22211 /* ~"Hast du hier irgendwo eine kleine Bronzekugel gesehen?"~ */ GOTO 4
  IF ~~ THEN REPLY #22212 /* ~"Vergiß es. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 3.1 3.2 3.3 3.4 3.5 3.6 3.7
  SAY #22214 /* ~Sie murmelt und stöhnt einen gestotterten, völlig unverständlichen Satz.~ */
  IF ~  CheckStatGT(Protagonist,15,CHR)
~ THEN REPLY #22215 /* ~"Entschuldigung, aber ich versteh dich nicht. Gibt es noch einen anderen Weg, wie wir uns unterhalten können?"~ */ GOTO 6
  IF ~  CheckStatLT(Protagonist,16,CHR)
~ THEN REPLY #22216 /* ~"Ich kann dich nicht verstehen. Kannst du nicht ein wenig deutlicher reden?"~ */ GOTO 5
  IF ~~ THEN REPLY #22217 /* ~"Äh... ich hätte noch ein paar andere Fragen..."~ */ GOTO 3
  IF ~~ THEN REPLY #22218 /* ~"Vergiß es... Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 4.1
  SAY #22219 /* ~Sie schüttelt traurig den Kopf und zieht ihre Schultern in einer furchtbar langsamen Geste hoch.~ */
  IF ~~ THEN REPLY #22221 /* ~"Dann leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 6 // from: 3.0 4.0 14.1 14.5
  SAY #22223 /* ~Die Leiche macht einen Schritt auf dich zu und streckt den Arm aus, um dich zu berühren.~ */
  IF ~  CheckStatLT(Protagonist,13,WIS)
~ THEN REPLY #22224 /* ~Geh einen Schritt zurück.~ */ GOTO 7
  IF ~  CheckStatGT(Protagonist,12,WIS)
~ THEN REPLY #22226 /* ~Geh einen Schritt zurück.~ */ GOTO 8
  IF ~~ THEN REPLY #22227 /* ~Laß sie dich berühren.~ */ GOTO 9
  IF ~  CheckStatLT(Protagonist,13,WIS)
~ THEN REPLY #22228 /* ~"Was machst du da?"~ */ GOTO 7
  IF ~  CheckStatGT(Protagonist,12,WIS)
~ THEN REPLY #22229 /* ~"Was machst du da?"~ */ GOTO 8
END

IF ~~ THEN BEGIN 7 // from: 6.0 6.3
  SAY #22268 /* ~Zur Antwortet stöhnt sie nur leise und streckt wieder die Hand aus, um deinen Arm zu berühren.~ */
  IF ~~ THEN REPLY #22269 /* ~Erlaub ihr, dich zu berühren.~ */ GOTO 9
  IF ~~ THEN REPLY #22270 /* ~"Ich muß jetzt gehen. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 8 // from: 6.1 6.4
  SAY #22271 /* ~Zur Antwort stöhnt sie nur leise und streckt wieder die Hand aus, um deinen Arm zu berühren. Obwohl die Zeit Spuren hinterlassen hat, erkennst du noch Überbleibsel von Menschlichkeit in ihrem Blick. Du kannst sehen, daß sie dir nichts Böses will.~ */
  IF ~~ THEN REPLY #22272 /* ~Erlaub ihr, dich zu berühren.~ */ GOTO 9
  IF ~~ THEN REPLY #22273 /* ~"Ich muß jetzt gehen. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 9 // from: 6.2 7.0 8.0
  SAY #22274 /* ~Ihre nahezu fleischlose Hand streift sanft deinen Unterarm, und sie sagt: "Huhhhr zuhhh." (Hör zu.)~ */
  IF ~~ THEN REPLY #22275 /* ~"Wie hast du das gemacht?"~ */ GOTO 10
  IF ~~ THEN REPLY #22276 /* ~"Wie kommt es, daß ich dich verstehen kann?~ */ GOTO 10
END

IF ~~ THEN BEGIN 10 // from: 9.0 9.1
  SAY #22277 /* ~Sie berührt dich noch einmal. "Duhhh kuhhhnnst muhhht uhhhns spuhhhchuhhhn. Uhhhbuhhh duhhh muhhht uhhhs ruhhhtuhhh tuhhhn." (Du kannst mit uns sprechen. Aber du mußt es richtig tun.)~ */
  IF ~~ THEN REPLY #22278 /* ~"Kannst du mir das beibringen?"~ */ GOTO 11
END

IF ~~ THEN BEGIN 11 // from: 10.0
  SAY #22279 /* ~Sie lächelt, wobei die verhärtete Haut ihres Gesichts wie dickes Leder knarzt. "Juhhh." (Ja.)~ */
  IF ~~ THEN REPLY #22280 /* ~"Dann tu's bitte..."~ */ DO ~FadeToColor([20.0],0)
Wait(3)
FadeFromColor([20.0],0)
ApplySpell(Protagonist,SPECIAL_ADD_STORIES_BONES_TELL)
SetGlobal("Speak_With_Dead","GLOBAL",1)
GiveExperience(Protagonist,3750)
~ JOURNAL #21911 /* ~Die Muffige Mary hat mit mir das Wissen geteilt, wie man mit den Toten redet. Jetzt kann ich mich mit Leichen unterhalten, die noch nicht zu lange tot sind, als daß ihre früheren Besitzer nicht mehr durch sie sprechen könnten.~ */ GOTO 12
END

IF ~~ THEN BEGIN 12 // from: 11.0
  SAY #22282 /* ~Sie hat dir die Fertigkeit beigebracht, mit Toten zu sprechen, die sie als "Geschichten-Knochen-Erzählen" bezeichnet.~ */
  IF ~~ THEN REPLY #22283 /* ~"Kann ich jetzt mit allen Toten reden?" ~ */ GOTO 13
END

IF ~~ THEN BEGIN 13 // from: 12.0
  SAY #22284 /* ~"Muhhht muhhhnuhhhn. Uhhhnuhhhruhhh zuhhh tuhhht.Muhhht Fhehhthhihhkhhehhihht nuhhhdshhhn." (Mit manchen. Andere zu tot. Mußt Fertigkeit nutzen.)~ */
  IF ~~ THEN REPLY #22285 /* ~"Danke. Ich hätte da ein paar Fragen..."~ */ GOTO 14
  IF ~~ THEN REPLY #22286 /* ~"Danke. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 14 // from: 1.1 2.0 13.0 15.1 16.2 17.4 18.3 19.2 20.3 21.1 22.2 23.5 24.2 25.2 26.1 27.2 28.3 29.2 30.2 31.2 32.2 33.2 34.2 35.1 36.1 37.3 38.1 39.0 40.1 41.2 42.2 43.1 44.0 45.1 46.0 52.2 54.0
  SAY #22287 /* ~Sie nickt und wartet auf deine Frage.~ */
  IF ~  Global("Lo_Quest","GLOBAL",4)
Global("Morte_Stolen","GLOBAL",1)
CheckStatGT(Protagonist,15,CHR)
Global("Good_Mary_2","GLOBAL",0)
~ THEN REPLY #50859 /* ~"Mein Gefährte ist von einem mächtigen Mann entführt worden, der einen 'größeren' Schädel für die Freilassung meines Gefährten verlangt. Was soll ich tun, Mary?"~ */ GOTO 52
  IF ~  Global("Hargrimm_Clue","AR1500",1)
Global("Speak_With_Dead","GLOBAL",0)
~ THEN REPLY #23858 /* ~"Hargrimm hat gesagt, daß ich *lernen* müßte, dir zuzuhören... Weißt du, was er damit gemeint hat?"~ */ GOTO 6
  IF ~  Global("DN_Appeal","AR1500",1)
CheckStatGT(Protagonist,15,CHR)
Global("DN_Prisoner","GLOBAL",1)
~ THEN REPLY #22288 /* ~"Mary, ich muß mit dem Schweigenden König reden. Kannst du mir helfen?"~ */ GOTO 42
  IF ~  Global("DN_Appeal","AR1500",1)
CheckStatGT(Protagonist,8,CHR)
CheckStatLT(Protagonist,16,CHR)
Global("DN_Prisoner","GLOBAL",1)
~ THEN REPLY #22289 /* ~"Mary, ich muß mit dem Schweigenden König reden. Kannst du mir helfen?"~ */ GOTO 43
  IF ~  Global("DN_Appeal","AR1500",1)
CheckStatLT(Protagonist,9,CHR)
Global("DN_Prisoner","GLOBAL",1)
~ THEN REPLY #22290 /* ~"Mary, ich muß mit dem Schweigenden König reden. Kannst du mir helfen?"~ */ GOTO 44
  IF ~  Global("Speak_With_Dead","GLOBAL",0)
~ THEN REPLY #64163 /* ~"Wie sprichst du mit diesen anderen Zombies? Ich verstehe sie nicht, so wie ich dich verstehe..."~ */ GOTO 6
  IF ~  Global("DN_Prisoner","GLOBAL",1)
~ THEN REPLY #22291 /* ~"Warum hat man mich zu einem Gefangenen gemacht?"~ */ GOTO 40
  IF ~~ THEN REPLY #22292 /* ~"Wo bin ich?"~ */ GOTO 15
  IF ~~ THEN REPLY #22293 /* ~"Was machst du hier?"~ */ GOTO 16
  IF ~~ THEN REPLY #22294 /* ~"Wer wohnt an diesem Ort?"~ */ GOTO 17
  IF ~~ THEN REPLY #22295 /* ~"Ich will etwas über eine bestimmte Person wissen..."~ */ GOTO 23
  IF ~  Global("Pharod_Quest","GLOBAL",1)
!PartyHasItem("Bsphere")
~ THEN REPLY #22296 /* ~"Hast du hier irgendwo eine kleine Bronzekugel gesehen?"~ */ GOTO 39
  IF ~~ THEN REPLY #22297 /* ~"Vergiß es. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 15 // from: 14.7
  SAY #22298 /* ~"Huhhhlluhhh duhhhs Schwuhhhguhhhnduhhh Kuhhhnuhhhg." (Hallen des Schweigenden Königs.)~ */
  IF ~~ THEN REPLY #22299 /* ~"Erzähl mir was über den Schweigenden König."~ */ DO ~SetGlobal("Know_Silent_King","GLOBAL",1)
~ GOTO 24
  IF ~~ THEN REPLY #22300 /* ~"Ich hätte da noch ein paar Fragen."~ */ GOTO 14
  IF ~~ THEN REPLY #22301 /* ~"Mehr wollt' ich gar nicht wissen. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 16 // from: 14.8 37.0 41.0
  SAY #22302 /* ~"Uhhhnuhhhruhhh Zuhhhmbuhhh fuhhhrrruhhhn. Uhhhm Schwuhhhguhhhnduhhh kuhhhmmuhhhn." (Andere Zombies führen. Um Schweigende kümmern.)~ */
  IF ~~ THEN REPLY #22303 /* ~"Erzähl mir was über die anderen Zombies."~ */ GOTO 18
  IF ~~ THEN REPLY #22304 /* ~"Schweigende?"~ */ GOTO 38
  IF ~~ THEN REPLY #22305 /* ~"Ich hätte da noch ein paar Fragen."~ */ GOTO 14
  IF ~~ THEN REPLY #22306 /* ~"Mehr wollt' ich gar nicht wissen. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 17 // from: 14.9 18.2 19.1 20.2 21.0 22.1
  SAY #22307 /* ~"Zuhhhmbuhhh. Ssskeeellltt. Ghuu-ghuu-ghuuuul. Rrrruhhhttuhhh." (Zombies. Skelette. Ghule. Ratten.)~ */
  IF ~~ THEN REPLY #22308 /* ~"Erzähl mir was über die Zombies."~ */ GOTO 18
  IF ~~ THEN REPLY #22309 /* ~"Erzähl mir was über die Skelette."~ */ GOTO 20
  IF ~~ THEN REPLY #22310 /* ~"Erzähl mir was über die Ghule."~ */ GOTO 21
  IF ~~ THEN REPLY #22311 /* ~"Erzähl mir von den Ratten."~ */ GOTO 22
  IF ~~ THEN REPLY #22312 /* ~"Ich hätte da noch ein paar Fragen."~ */ GOTO 14
  IF ~~ THEN REPLY #22313 /* ~"Mehr wollt' ich gar nicht wissen. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 18 // from: 16.0 17.0 38.0
  SAY #22314 /* ~"Uhhhbuhhht duhhh Schwuhhhguhhhnduhhh Kuhhhnuhhhg tuhhhn." (Arbeit des Schweigenden Königs tun.)~ */
  IF ~~ THEN REPLY #22315 /* ~"Was für eine Arbeit?"~ */ GOTO 19
  IF ~~ THEN REPLY #22316 /* ~"Erzähl mir was über den Schweigenden König."~ */ DO ~SetGlobal("Know_Silent_King","GLOBAL",1)
~ GOTO 24
  IF ~~ THEN REPLY #22317 /* ~"Wer wohnt sonst noch an diesem Ort?"~ */ GOTO 17
  IF ~~ THEN REPLY #22318 /* ~"Ich hätte da noch ein paar Fragen."~ */ GOTO 14
  IF ~~ THEN REPLY #22319 /* ~"Mehr wollt' ich gar nicht wissen. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 19 // from: 18.0
  SAY #22320 /* ~"Duhhh Zuhhhstuhhht wuhhhduhhh uhhhfbuhhhn. Uhhhm duhhh wuhhhruhhh Tuhhhtuhhh kuhhhmuhhhn." (Das Zerstörte wieder aufbauen. Um die wahren Toten kümmern.)~ */
  IF ~~ THEN REPLY #22321 /* ~"Erzähl mir was über den Schweigenden König."~ */ GOTO 24
  IF ~~ THEN REPLY #22322 /* ~"Wer wohnt sonst noch an diesem Ort?"~ */ GOTO 17
  IF ~~ THEN REPLY #22323 /* ~"Ich hätte da noch ein paar Fragen."~ */ GOTO 14
  IF ~~ THEN REPLY #22324 /* ~"Mehr wollt' ich gar nicht wissen. Leb wohl."~ */ DO ~SetGlobal("Know_Silent_King","GLOBAL",1)
~ EXIT
END

IF ~~ THEN BEGIN 20 // from: 17.1
  SAY #22325 /* ~"Huhhhgruhhhm, uhhh Uhhhnfuhhhruhhh, bruhhhn uhhhs Wuhhht duhhh Schwuhhhguhhhnduhhh Kuhhhnuhhhg. Sssskeeellltt luhhhtuhhhn uhhh buhhh uhhhnsuhhh uhhhbuhhht." (Hargrimm, ihr Anführer, bringt uns die Worte des Schweigenden Königs. Skelette leiten uns bei unserer Arbeit.)~ */
  IF ~~ THEN REPLY #22326 /* ~"Erzähl mir was über Hargrimm."~ */ DO ~SetGlobal("Know_Silent_King","GLOBAL",1)
~ GOTO 27
  IF ~~ THEN REPLY #22327 /* ~"Erzähl mir was über den Schweigenden König."~ */ GOTO 24
  IF ~~ THEN REPLY #22328 /* ~"Wer wohnt sonst noch an diesem Ort?"~ */ GOTO 17
  IF ~~ THEN REPLY #22329 /* ~"Ich hätte da noch ein paar Fragen."~ */ GOTO 14
  IF ~~ THEN REPLY #22330 /* ~"Mehr wollt' ich gar nicht wissen. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 21 // from: 17.2 22.0
  SAY #22331 /* ~"Hunnngruhhh... uhhhmuhhh hunnngruhhh." (Hungrig... immer hungrig.)~ */
  IF ~~ THEN REPLY #22332 /* ~"Wer wohnt sonst noch an diesem Ort?"~ */ GOTO 17
  IF ~~ THEN REPLY #22333 /* ~"Ich hätte da noch ein paar Fragen."~ */ GOTO 14
  IF ~~ THEN REPLY #22334 /* ~"Mehr wollt' ich gar nicht wissen. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 22 // from: 17.3
  SAY #22335 /* ~"Wuhhhg. Ghuuuuls vuhhhjuhhht." (Weg. Ghule verjagt."~ */
  IF ~~ THEN REPLY #22336 /* ~"Erzähl mir was über die Ghule."~ */ GOTO 21
  IF ~~ THEN REPLY #22337 /* ~"Wer wohnt sonst noch an diesem Ort?"~ */ GOTO 17
  IF ~~ THEN REPLY #22338 /* ~"Ich hätte da noch ein paar Fragen."~ */ GOTO 14
  IF ~~ THEN REPLY #22339 /* ~"Mehr wollt' ich gar nicht wissen. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 23 // from: 14.10 24.1 25.1 26.0 27.1 28.2 29.1 30.1 31.1 32.1 33.1 34.1 35.0 36.0 37.2 41.1
  SAY #22340 /* ~"Juuuhhh?" (Ja?)~ */
  IF ~~ THEN REPLY #22341 /* ~"Erzähl mir was über dich."~ */ DO ~SetGlobal("Know_Stale_Mary","GLOBAL",1)
~ GOTO 37
  IF ~  Global("Know_Silent_King","GLOBAL",1)
~ THEN REPLY #22342 /* ~"Erzähl mir was über den Schweigenden König."~ */ GOTO 24
  IF ~  Global("Know_Hargrimm","GLOBAL",1)
!Dead("Hargrim")
~ THEN REPLY #22343 /* ~"Erzähl mir was über Hargrimm."~ */ GOTO 27
  IF ~  Global("DN_Soego_Killed","GLOBAL",0)
~ THEN REPLY #22344 /* ~"Erzähl mir was über Soego."~ */ GOTO 36
  IF ~  Global("Know_Acaste","GLOBAL",1)
!Dead("Acaste")
~ THEN REPLY #22345 /* ~"Erzähl mir was über Akaste."~ */ GOTO 35
  IF ~~ THEN REPLY #22346 /* ~"Schon gut. Ich hätte da noch ein paar Fragen..."~ */ GOTO 14
  IF ~~ THEN REPLY #22347 /* ~"Vergiß es. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 24 // from: 15.0 18.1 19.0 20.1 23.1
  SAY #22348 /* ~" Schwuhhhguhhhnduhhh Kuhhhnuhhhg." (Schweigender König.)~ */
  IF ~~ THEN REPLY #22349 /* ~"Ja, was kannst du mir über ihn erzählen?"~ */ GOTO 25
  IF ~~ THEN REPLY #22350 /* ~"Egal. Erzähl mir was über jemand anderen."~ */ GOTO 23
  IF ~~ THEN REPLY #22351 /* ~"Vergiß es. Ich hätte da noch ein paar Fragen..."~ */ GOTO 14
  IF ~~ THEN REPLY #22352 /* ~"Vergiß es. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 25 // from: 24.0
  SAY #22353 /* ~" Schwuhhhguhhhnduhhh Kuhhhnuhhhg." (Schweigender König.)~ */
  IF ~~ THEN REPLY #22354 /* ~"Was weißt du über ihn?"~ */ GOTO 26
  IF ~~ THEN REPLY #22355 /* ~"Egal. Erzähl mir was über jemand anderen."~ */ GOTO 23
  IF ~~ THEN REPLY #22356 /* ~"Macht nichts. Ich hätte da noch ein paar Fragen..."~ */ GOTO 14
  IF ~~ THEN REPLY #22357 /* ~"Vergiß es. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 26 // from: 25.0
  SAY #22358 /* ~" Schwuhhhguhhhnduhhh Kuhhhnuhhhg." (Schweigender König.)
~ */
  IF ~~ THEN REPLY #22359 /* ~"Naja, egal... erzähl mir was über jemand anderen."~ */ GOTO 23
  IF ~~ THEN REPLY #22360 /* ~"Naja, egal... Ich hätte noch ein paar andere Fragen..."~ */ GOTO 14
  IF ~~ THEN REPLY #22361 /* ~"Ach, vergiß es. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 27 // from: 20.0 23.2 40.0
  SAY #22362 /* ~" Huhhhgruhhhm, Uhhhfuhhh Ssskeeelllt, bruhhhn uhhhs Wuhhht duhhh Schwuhhhguhhhnduhhh Kuhhhnuhhhg. Buhhhsuhhht. Buhhhunruhhht." (Hargrimm, Anführer der Skelette, bringt uns die Worte des Schweigenden Königs. Besorgt. Beunruhigt.)~ */
  IF ~~ THEN REPLY #22363 /* ~"Warum ist er besorgt?"~ */ DO ~SetGlobal("Know_Acaste","GLOBAL",1)
~ GOTO 28
  IF ~~ THEN REPLY #22364 /* ~"Erzähl mir was über jemand anderen."~ */ GOTO 23
  IF ~~ THEN REPLY #22365 /* ~"Ich hätte da noch ein paar Fragen."~ */ GOTO 14
  IF ~~ THEN REPLY #22366 /* ~"Mehr wollt' ich gar nicht wissen. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 28 // from: 27.0
  SAY #22367 /* ~"Suhhhguh. Uhhhkuhhhstuh." (Soego. Akaste.)~ */
  IF ~~ THEN REPLY #22368 /* ~"Warum ist er wegen Soego beunruhigt?"~ */ GOTO 29
  IF ~~ THEN REPLY #22369 /* ~"Warum ist er wegen Akaste beunruhigt?"~ */ GOTO 32
  IF ~~ THEN REPLY #22370 /* ~"Erzähl mir was über jemand anderen."~ */ GOTO 23
  IF ~~ THEN REPLY #22371 /* ~"Ich hätte da noch ein paar Fragen."~ */ GOTO 14
  IF ~~ THEN REPLY #22372 /* ~"Mehr wollt' ich gar nicht wissen. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 29 // from: 28.0 34.0
  SAY #22373 /* ~"Suhhguh puhhhduhhht Tuhhht." (Soego predigt Tod.)~ */
  IF ~~ THEN REPLY #22374 /* ~"Predigt Tod?"~ */ GOTO 30
  IF ~~ THEN REPLY #22375 /* ~"Erzähl mir was über jemand anderen."~ */ GOTO 23
  IF ~~ THEN REPLY #22376 /* ~"Ich hätte da noch ein paar Fragen."~ */ GOTO 14
  IF ~~ THEN REPLY #22377 /* ~"Mehr wollt' ich gar nicht wissen. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 30 // from: 29.0
  SAY #22378 /* ~"Wuhhhll duhhh wuhhh stuhhhrbuhhhn." (Will, daß wir sterben.)~ */
  IF ~~ THEN REPLY #22379 /* ~"Warum will er, daß ihr sterbt?"~ */ JOURNAL #22385 /* ~Die Muffige Mary hat mir erzählt, daß Hargrimm, der Hohepriester des Schweigenden Königs, sich Sorgen über Soego, den Staubmenschen, macht. Soego versucht, die anderen Untoten in den Toten Landen dazu zu bewegen, ihr "Schattendasein" aufzugeben und den Wahren Tod zu akzeptieren.~ */ GOTO 31
  IF ~~ THEN REPLY #22380 /* ~"Erzähl mir was über jemand anderen."~ */ GOTO 23
  IF ~~ THEN REPLY #22382 /* ~"Ich hätte da noch ein paar Fragen."~ */ GOTO 14
  IF ~~ THEN REPLY #22383 /* ~"Mehr wollt' ich gar nicht wissen. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 31 // from: 30.0
  SAY #22386 /* ~"Uhhh Stuhhhbmuhhhn." (Er Staubmensch.)~ */
  IF ~~ THEN REPLY #22388 /* ~"Warum ist Hargrimm wegen Akaste beunruhigt?"~ */ GOTO 32
  IF ~~ THEN REPLY #22390 /* ~"Erzähl mir was über jemand anderen."~ */ GOTO 23
  IF ~~ THEN REPLY #22391 /* ~"Ich hätte da noch ein paar Fragen."~ */ GOTO 14
  IF ~~ THEN REPLY #22393 /* ~"Mehr wollt' ich gar nicht wissen. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 32 // from: 28.1 31.0
  SAY #22395 /* ~"Uhhhkuhhhstuhhh... Zuhhhrn." (Akaste... Zorn.)~ */
  IF ~~ THEN REPLY #22397 /* ~"Zorn?"~ */ GOTO 33
  IF ~~ THEN REPLY #22399 /* ~"Erzähl mir was über jemand anderen."~ */ GOTO 23
  IF ~~ THEN REPLY #22400 /* ~"Ich hätte da noch ein paar Fragen."~ */ GOTO 14
  IF ~~ THEN REPLY #22401 /* ~"Mehr wollt' ich gar nicht wissen. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 33 // from: 32.0
  SAY #22402 /* ~"Uhhhkuhhhstuhhh wuhhhll juhhhduhhhn tuhhhtuhhhn." (Akaste will jeden töten.)~ */
  IF ~~ THEN REPLY #22403 /* ~"Warum will sie jeden töten?"~ */ GOTO 34
  IF ~~ THEN REPLY #22404 /* ~"Erzähl mir was über jemand anderen."~ */ GOTO 23
  IF ~~ THEN REPLY #22405 /* ~"Ich hätte da noch ein paar Fragen."~ */ GOTO 14
  IF ~~ THEN REPLY #22406 /* ~"Mehr wollt' ich gar nicht wissen. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 34 // from: 33.0
  SAY #22407 /* ~"Hunnngruhhh... Zuhhhnuhhh." (Hungrig. Zornig.)~ */
  IF ~~ THEN REPLY #22409 /* ~"Warum ist Hargrimm wegen Soego beunruhigt?"~ */ JOURNAL #22413 /* ~Die Muffige Mary hat mir erzählt, daß Hargrimm, der Hohepriester des Schweigenden Königs, sich Sorgen über Akaste macht. Sie ist ein Ghul, der alles in den Toten Landen zu töten und essen wollen scheint.~ */ GOTO 29
  IF ~~ THEN REPLY #22410 /* ~"Erzähl mir was über jemand anderen."~ */ GOTO 23
  IF ~~ THEN REPLY #22411 /* ~"Ich hätte da noch ein paar Fragen."~ */ GOTO 14
  IF ~~ THEN REPLY #22412 /* ~"Mehr wollt' ich gar nicht wissen. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 35 // from: 23.4
  SAY #22408 /* ~"Hunnngruhhh... Zuhhhnuhhh." (Hungrig. Zornig.)~ */
  IF ~~ THEN REPLY #22414 /* ~"Erzähl mir was über jemand anderen."~ */ GOTO 23
  IF ~~ THEN REPLY #22416 /* ~"Ich hätte da noch ein paar Fragen."~ */ GOTO 14
  IF ~~ THEN REPLY #22418 /* ~"Mehr wollt' ich gar nicht wissen. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 36 // from: 23.3
  SAY #22419 /* ~"Uhhh Stuhhhbmuhhhn." (Er Staubmensch.)~ */
  IF ~~ THEN REPLY #22420 /* ~"Erzähl mir was über jemand anderen."~ */ GOTO 23
  IF ~~ THEN REPLY #22422 /* ~"Ich hätte da noch ein paar Fragen."~ */ GOTO 14
  IF ~~ THEN REPLY #22423 /* ~"Mehr wollt' ich gar nicht wissen. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 37 // from: 23.0
  SAY #22424 /* ~"Muh-huh*muuff* Muhriii." (Muffige Mary.)~ */
  IF ~~ THEN REPLY #22426 /* ~"Was tust du hier?"~ */ GOTO 16
  IF ~~ THEN REPLY #22428 /* ~"Wie hat's dich hierher verschlagen?"~ */ GOTO 41
  IF ~~ THEN REPLY #22430 /* ~"Erzähl mir was über jemand anderen."~ */ GOTO 23
  IF ~~ THEN REPLY #22429 /* ~"Ich hätte da noch ein paar Fragen."~ */ GOTO 14
  IF ~~ THEN REPLY #22432 /* ~"Mehr wollt' ich gar nicht wissen. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 38 // from: 16.1
  SAY #22434 /* ~"Duhhh wuhhhrn Tuhhhtn." (Die Wahren Toten.)~ */
  IF ~~ THEN REPLY #22436 /* ~"Erzähl mir was über die anderen Zombies."~ */ GOTO 18
  IF ~~ THEN REPLY #22438 /* ~"Ich hätte da noch ein paar Fragen."~ */ GOTO 14
  IF ~~ THEN REPLY #22439 /* ~"Mehr wollt' ich gar nicht wissen. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 39 // from: 14.11
  SAY #22440 /* ~"Nuuhhhhn, tuuhhht muhr luhhhd." (Nein, tut mir leid.)~ */
  IF ~~ THEN REPLY #22442 /* ~"Ich hätte noch ein paar Fragen..."~ */ GOTO 14
  IF ~~ THEN REPLY #22443 /* ~"Mehr wollt' ich gar nicht wissen. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 40 // from: 14.6
  SAY #22445 /* ~Sie zuckt mit den Achseln. "Fruhhhg Hhhhuhhhg-ruhhhm." (Frag Hargrimm.)~ */
  IF ~~ THEN REPLY #22447 /* ~"Erzähl mir was über Hargrimm."~ */ DO ~SetGlobal("Know_Hargrimm","GLOBAL",1)
~ GOTO 27
  IF ~~ THEN REPLY #22449 /* ~"Ich hätte da noch ein paar Fragen."~ */ GOTO 14
  IF ~~ THEN REPLY #22451 /* ~"Mehr wollt' ich gar nicht wissen. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 41 // from: 37.1
  SAY #22453 /* ~"Vurduhhhhm luhhhnnng huhhh. Guduuuchhhtnuhhh wuuch." (Verdammt lange her. Gedächtnis weg.)~ */
  IF ~~ THEN REPLY #22454 /* ~"Was tust du hier?"~ */ GOTO 16
  IF ~~ THEN REPLY #22455 /* ~"Erzähl mir was über jemand anderen."~ */ GOTO 23
  IF ~~ THEN REPLY #22457 /* ~"Ich hätte da noch ein paar Fragen."~ */ GOTO 14
  IF ~~ THEN REPLY #22459 /* ~"Mehr wollt' ich gar nicht wissen. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 42 // from: 14.2
  SAY #22460 /* ~"Juhhh." (Ja.)~ */
  IF ~  Global("Alcove_Portal","AR1500",0)
~ THEN REPLY #22462 /* ~"Ja? Wie?"~ */ DO ~AddexperienceParty(3750)
~ GOTO 47
  IF ~  GlobalGT("Alcove_Portal","AR1500",0)
~ THEN REPLY #22462 /* ~"Ja? Wie?"~ */ GOTO 47
  IF ~~ THEN REPLY #22464 /* ~"Schon gut. Ich hätte da noch ein paar Fragen..."~ */ GOTO 14
  IF ~~ THEN REPLY #22465 /* ~"Na, ist erstmal nicht wichtig. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 43 // from: 14.3
  SAY #22467 /* ~"Wuhhruhhh?" (Warum?)~ */
  IF ~~ THEN REPLY #22468 /* ~"Ich muß diesen Ort verlassen."~ */ GOTO 44
  IF ~~ THEN REPLY #22471 /* ~"Macht nichts. Ich hätte da noch ein paar Fragen..."~ */ GOTO 14
  IF ~~ THEN REPLY #22472 /* ~"Na, ist erstmal nicht wichtig. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 44 // from: 14.4 43.0
  SAY #22474 /* ~"Nuhhhn." (Nein.)~ */
  IF ~~ THEN REPLY #22478 /* ~"Dann hätte ich noch ein paar Fragen..."~ */ GOTO 14
  IF ~~ THEN REPLY #22479 /* ~"Auf bald, dann."~ */ EXIT
END

IF ~  Global("Stale_Mary","GLOBAL",1)
Global("Speak_With_Dead","GLOBAL",0)
!CreatureInArea("AR1501")
~ THEN BEGIN 45 // from:
  SAY #22480 /* ~Du triffst auf die Muffige Mary. Als Sie dich bemerkt, gibt sie ein leises Stöhnen von sich: "Guh-guhruuuhhh..."~ */
  IF ~  CheckStatLT(Protagonist,16,INT)
~ THEN REPLY #22481 /* ~"Ich hätte da ein paar Fragen..."~ */ GOTO 3
  IF ~  CheckStatGT(Protagonist,15,INT)
~ THEN REPLY #22482 /* ~"Ich hätte da ein paar Fragen..."~ */ GOTO 14
  IF ~~ THEN REPLY #60478 /* ~"Komm nur gerade zufällig vorbei. Leb wohl."~ */ EXIT
END

IF ~  Global("Stale_Mary","GLOBAL",1)
Global("Speak_With_Dead","GLOBAL",1)
!CreatureInArea("AR1501")
~ THEN BEGIN 46 // from:
  SAY #22483 /* ~Du triffst auf die Muffige Mary. Als Sie dich bemerkt, gibt sie ein leises Stöhnen von sich: "Suhhh gugruhhhhs..." (Sei gegrüßt.)~ */
  IF ~~ THEN REPLY #22484 /* ~"Ich hätte da ein paar Fragen..."~ */ GOTO 14
  IF ~~ THEN REPLY #22485 /* ~"Komm nur gerade zufällig vorbei. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 47 // from: 42.0 42.1
  SAY #22486 /* ~Sie zeigt auf das erste der drei Tore entlang der nördlichen Mauer. "S-s-schluuhhh uuhhg. Duuunk uuhhhn Schwuhhguhhdun Kuhhhnuhh. Guhhh duuch Nuuusch uuhhhm Nuhhwuhhs. Ubuhhh nuh suh luhhng uch luuhb." (Schließ die Augen! Denk an den Schweigenden König! Geh durch die Nische im Nordwesten. Aber nur solange ich lebe.)~ */
  IF ~  Global("Alcove_Portal","AR1500",0)
~ THEN REPLY #22487 /* ~"Danke, Mary. Leb wohl."~ */ DO ~SetGlobal("Alcove_Portal","AR1500",1)
~ JOURNAL #22488 /* ~Die Muffige Mary hat mir erzählt, daß ich den Thronsaal des Schweigenden Königs über ein Portal in ihren Kammern erreichen kann. Ich muß meine Augen schließen und an den Schweigenden König denken, bevor ich in die Nische an der nordwestlichen Ecke trete. Das Portal sollte funktionieren, solange die Muffige Mary noch am Leben ist.~ */ EXIT
  IF ~  GlobalGT("Alcove_Portal","AR1500",0)
~ THEN REPLY #22487 /* ~"Danke, Mary. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 48 // from:
  SAY #24104 /* ~"Luhhhng." (Lang.)~ */
  IF ~~ THEN EXTERN ~DHARGRI~ 81
END

IF ~~ THEN BEGIN 49 // from:
  SAY #24106 /* ~Die Muffige Mary spricht mit schwerer Stimme: "Uh-uh-uh uuch nuuch." (Ich auch nicht.)~ */
  IF ~~ THEN EXTERN ~DHARGRI~ 87
END

IF ~~ THEN BEGIN 50 // from:
  SAY #24107 /* ~"Juhhh." (Ja.)~ */
  IF ~~ THEN EXTERN ~DHARGRI~ 95
END

IF ~~ THEN BEGIN 51 // from:
  SAY #24109 /* ~Die Muffige Mary gibt einen schwachen gurgelnden Laut von sich.~ */
  IF ~~ THEN EXTERN ~DHARGRI~ 97
END

IF ~~ THEN BEGIN 52 // from: 14.0
  SAY #50845 /* ~"Dahhhn f-f-f-rahhhnd? Nahhhm mahhhn Schahhhdahhhl..." (Dein Freund? Nimm meinen Schädel.) Muffige Mary nimmt ihren Kopf in beide Hände...~ */
  IF ~~ THEN REPLY #50846 /* ~"Deinen Schädel... nehmen? Aber das wird dich umbringen."~ */ DO ~IncrementGlobalOnceEx("GLOBALGood_Mary_1","GLOBALGood",1)
~ GOTO 53
  IF ~~ THEN REPLY #50847 /* ~"Oh... In Ordnung. Danke..."~ */ DO ~Kill(Myself)
~ GOTO 55
  IF ~~ THEN REPLY #50848 /* ~"Warte... Ich hätte noch ein paar Fragen..."~ */ GOTO 14
  IF ~~ THEN REPLY #50849 /* ~"Wir reden später drüber. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 53 // from: 52.0
  SAY #50850 /* ~Mary schüttelt langsam den Kopf. Ihre Lippen verziehen sich zu einer Art traurigem Lächeln. "Tahhhtehhhn? N-n-nahhhn. Bnnn schahhhn tahhht." (Töten? Nein. Bin schon tot.) Sie hält die Hände weiter an ihre Schläfen und wartet auf deine Antwort.~ */
  IF ~~ THEN REPLY #50851 /* ~"Danke, Mary. Ich bringe deinen Schädel zu Lothar."~ */ DO ~Kill(Myself)
~ GOTO 55
  IF ~~ THEN REPLY #50852 /* ~"Nein, Mary - ich kann es einfach nicht. Ich werde einen anderen Weg finden."~ */ DO ~IncrementGlobalOnceEx("GLOBALGood_Mary_2","GLOBALGood",1)
~ GOTO 54
END

IF ~~ THEN BEGIN 54 // from: 53.1
  SAY #50854 /* ~Mary nickt. "D-d-ahhh haaa ahhhn gahhhtahhhg Hahhhrz." (Du hast ein gutes Herz.)~ */
  IF ~~ THEN REPLY #50855 /* ~"Ich hätte da noch ein paar Fragen."~ */ GOTO 14
  IF ~~ THEN REPLY #50856 /* ~"Leb wohl, Mary."~ */ EXIT
END

IF ~~ THEN BEGIN 55 // from: 52.1 53.0
  SAY #50857 /* ~Mit einem ekelerregenden, nassen Geräusch reißt die Muffige Mary sich den Kopf von den Schultern. Kurz nachdem sie dir ihren Schädel gegeben hat, fällt ihr verfaulter Körper zu einem stinkenden Haufen zusammen.~ */
  IF ~~ THEN REPLY #50858 /* ~Leg den Kopf weg, geh.~ */ EXIT
END

IF ~  CreatureInArea("AR1501")
~ THEN BEGIN 56 // from:
  SAY #58912 /* ~Mary nickt in Richtung der Flügeltür an der Südseite des Thronsaals. "G-g-guuuhh jjjjutzttt. Wuuur ruuuden ssssspuutr..." (Geh jetzt. Wir reden später.)~ */
  IF ~~ THEN REPLY #58913 /* ~Geh weg.~ */ EXIT
END
