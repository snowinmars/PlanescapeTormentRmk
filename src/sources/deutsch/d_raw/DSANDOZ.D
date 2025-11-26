// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DSANDOZ.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\de_DE\dialog.tlk
// dialogF  : (none)

BEGIN ~DSANDOZ~

IF ~~ THEN BEGIN 0 // from:
  SAY #46769 /* ~Eine gedämpfte Stimme dringt hinter der Tür hervor. "Hau ab!"~ */
  IF ~~ THEN REPLY #46770 /* ~"Bist du Sandoz?"~ */ GOTO 2
  IF ~~ THEN REPLY #46915 /* ~"In Ordnung, ich gehe. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from:
  SAY #46916 /* ~Sandoz' Stimme wird durch die dicke Tür gedämpft. "Was willst du?" Die Stimme klingt verzweifelt und einsam.~ */
  IF ~  CheckStatGT(Protagonist,14,WIS)
~ THEN REPLY #46917 /* ~"Ich will mit dir sprechen, Sandoz."~ */ GOTO 3
  IF ~  Global("G_Test3","GLOBAL",4)
~ THEN REPLY #46918 /* ~"Ich will dir erzählen, was deine Tochter gesagt hat."~ */ GOTO 4
  IF ~~ THEN REPLY #46919 /* ~"Ich will dir sagen, daß du dich endlich verabschieden sollst."~ */ GOTO 6
  IF ~~ THEN REPLY #46920 /* ~"Sie haben gesagt, ich soll mit dir reden. Sie wollen wohl verhindern, daß du dir was antust."~ */ GOTO 8
  IF ~~ THEN REPLY #46921 /* ~"Nichts. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 0.0
  SAY #46922 /* ~Die Stimme überschlägt sich, "Wer soll ich sonst sein? Das sind meine Räume, das ist mein Bund." Er lacht bitter. "Ich werde hier sterben."~ */
  IF ~  CheckStatGT(Protagonist,14,WIS)
~ THEN REPLY #46923 /* ~"Erzähl mir von dir, Sandoz."~ */ GOTO 3
  IF ~  Global("G_Test3","GLOBAL",4)
~ THEN REPLY #46924 /* ~"Möchtest du wissen, was deine Tochter gesagt hat?"~ */ GOTO 4
  IF ~~ THEN REPLY #46925 /* ~"Na dann, viel Glück. Ist uns doch einerlei."~ */ GOTO 6
  IF ~~ THEN REPLY #46926 /* ~"Sie haben gesagt, ich soll mit dir reden. Sie wollen wohl verhindern, daß du dir was antust."~ */ GOTO 8
END

IF ~~ THEN BEGIN 3 // from: 1.0 2.0
  SAY #46927 /* ~"Willst du reden? Ist es das? Und wie wär's, wenn du einfach zuhören würdest?" Die Stimme verstummt kurz, bevor sie in Fahrt kommt: "Was hat das alles für einen Sinn? Weshalb tun wir, was wir tun? Von welcher Kraft werden wir angetrieben?"~ */
  IF ~~ THEN REPLY #46928 /* ~Warte, bis er wieder was sagt.~ */ GOTO 15
  IF ~~ THEN REPLY #46929 /* ~"Also, ich würde sagen, diese Kraft ist das Leben."~ */ GOTO 11
  IF ~~ THEN REPLY #46930 /* ~"Ich weiß nicht."~ */ GOTO 15
END

IF ~~ THEN BEGIN 4 // from: 1.1 2.1
  SAY #46931 /* ~Eine Weile herrscht Stille. Dann ertönt die Stimme wieder, diesmal etwas schwächer. "Hast du mit meiner Tochter gesprochen?"~ */
  IF ~~ THEN REPLY #46932 /* ~"Ja. Sie hat gesagt: 'Das Leben ist eine Prüfung. Man kann keine Abkürzungen nehmen. Das ist keine Lösung. Nur die Schicksalsgarde und die Staubmenschen glauben an den völligen Zerfall - und du hast sie immer verachtet. Vergiß das nicht.'"~ */ GOTO 5
  IF ~~ THEN REPLY #46933 /* ~"Ja. Sie hat gesagt, du sollst dich ruhig umbringen."~ */ GOTO 6
END

IF ~~ THEN BEGIN 5 // from: 4.0
  SAY #46934 /* ~Er lacht hohl. "Sie hat all das gesagt, stimmt's? Gib mir eine Minute."~ */
  IF ~~ THEN REPLY #46935 /* ~"Laß dir ruhig Zeit."~ */ DO ~FadeToColor([20.0],0)
Wait(3)
FadeFromColor([20.0],0)
~ GOTO 7
END

IF ~~ THEN BEGIN 6 // from: 1.2 2.2 4.1 9.2 10.4 13.1 15.1
  SAY #46936 /* ~Du hört ein gedämpftes Schluchzen und einen Fluch. Nach einer Pause hörst du das Schleifen von Holz auf dem Boden, dann eine schnelle Abfolge von Bewegungen und schließlich das unverwechselbare Geräusch brechender Knochen.~ */
  IF ~~ THEN REPLY #46937 /* ~"Das war's dann wohl..."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Keldor_1","GLOBALGood",-3)
SetGlobal("G_Test3","GLOBAL",7)
MoveToPoint([337.740])
PlaySoundNotRanged("SPE_11")
Kill(Myself)
~ EXIT
END

IF ~~ THEN BEGIN 7 // from: 5.0 12.0 14.0
  SAY #46938 /* ~Als die Stimme wieder ertönt, hört sie sich gefestigter an. "Geh hinunter und sag Keldor, du hast es geschafft, mich etwas zur Vernunft zu bringen. Irgendwann werd ich ihn selber treffen wollen... Du kannst jetzt gehen. Du hast deine Aufgabe erfüllt."~ */
  IF ~~ THEN REPLY #46939 /* ~"Danke. Leb wohl."~ */ DO ~SetGlobal("G_Test3","GLOBAL",6)
SetDoorLocked("ar0511d1",FALSE)
OpenDoor("ar0511d1")
~ EXIT
END

IF ~~ THEN BEGIN 8 // from: 1.3 2.3
  SAY #46940 /* ~"Verstehe... Sie schicken mir einfach einen Fremden her, der es mir ausreden soll? Ha!" Die Stimme flüstert verschwörerisch. "Haben sie dir versprochen, daß du ihrem Bund beitreten darfst, wenn du mit mir redest? Haben sie dich so motiviert?"~ */
  IF ~~ THEN REPLY #46941 /* ~Warte, bis er wieder was sagt.~ */ GOTO 9
  IF ~~ THEN REPLY #46942 /* ~"Ich dachte ja nur, ich könnte dir vielleicht helfen."~ */ GOTO 11
END

IF ~~ THEN BEGIN 9 // from: 8.0
  SAY #46943 /* ~"Und? Sag schon! Oder bist du plötzlich taub geworden? Ha! Wenn du nur die Hälfte von dem gesehen hättest, was ich gesehen habe..."~ */
  IF ~~ THEN REPLY #46944 /* ~"Was hast du gesehen?"~ */ GOTO 10
  IF ~~ THEN REPLY #46945 /* ~"Du kannst dir nicht vorstellen, was *ich* gesehen habe, Sandoz. Und trotzdem bring ich mich nicht gleich um. Reiß dich zusammen und werd endlich erwachsen."~ */ GOTO 13
  IF ~~ THEN REPLY #46946 /* ~"Dann ist es wahrscheinlich besser für dich, wenn du das alles aus deiner Erinnerung tilgst..."~ */ GOTO 6
END

IF ~~ THEN BEGIN 10 // from: 9.0
  SAY #46947 /* ~"Ich habe so viele entsetzliche Dinge gesehen, die jede Vorstellungskraft übersteigen. Ich habe einen gefolterten Gott gesehen, der von lachenden Scheusalen gefesselt wurde. Ich habe eine Unterebene des Abgrunds gesehen, die sich selbst zur Essenz eines Individuums destilliert hat... Ich habe gesehen, wie alle Gesetze der Natur verdreht und alle Wahrheiten der Menschen ins Gegenteil verkehrt wurden. Für mich hat nichts mehr einen Sinn, und das kann ich nicht länger ertragen! Wozu das alles, frag ich dich, wozu?"~ */
  IF ~  CheckStatGT(Protagonist,13,INT)
CheckStatGT(Protagonist,14,WIS)
~ THEN REPLY #46948 /* ~"Genau das ist doch die Grundlage der Philosophie der Göttermenschen, Sandoz. Denk dran: Das Leben ist eine Prüfung. Diesmal wird dein Verstand getestet, oder vielleicht deine intellektuellen Fähigkeiten. Denk darüber nach, was du getan hast, und was du daraus lernen kannst."~ */ GOTO 12
  IF ~  CheckStatGT(Protagonist,13,INT)
CheckStatLT(Protagonist,15,WIS)
~ THEN REPLY #46949 /* ~"Genau das ist doch die Grundlage der Philosophie der Göttermenschen, Sandoz. Denk dran: Das Leben ist eine Prüfung. Diesmal wird dein Verstand getestet, oder vielleicht deine intellektuellen Fähigkeiten. Denk darüber nach, was du getan hast, und was du daraus lernen kannst."~ */ GOTO 12
  IF ~  CheckStatLT(Protagonist,14,INT)
CheckStatGT(Protagonist,14,WIS)
~ THEN REPLY #46950 /* ~"Genau das ist doch die Grundlage der Philosophie der Göttermenschen, Sandoz. Denk dran: Das Leben ist eine Prüfung. Diesmal wird dein Verstand getestet, oder vielleicht deine intellektuellen Fähigkeiten. Denk darüber nach, was du getan hast, und was du daraus lernen kannst."~ */ GOTO 12
  IF ~~ THEN REPLY #46951 /* ~"Ich weiß nicht, wozu. Aber das Leben selbst ist doch schon Sinn genug."~ */ GOTO 11
  IF ~~ THEN REPLY #46952 /* ~"Es gibt keinen Sinn."~ */ GOTO 6
END

IF ~~ THEN BEGIN 11 // from: 3.1 8.1 10.3
  SAY #46953 /* ~Er spuckt verächtlich. Du hörst, wie der Speichel gegen die Tür prasselt. "Verschwinde und komm erst wieder, wenn dir ein Hirn gewachsen ist oder du einen gefunden hast, der Antworten für dich hat." Er beantwortet dir erst mal keine Fragen mehr.~ */
  IF ~~ THEN REPLY #46954 /* ~"Dann leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 12 // from: 10.0 10.1 10.2 16.0 17.1
  SAY #46956 /* ~Du hörst ihn vor Lachen brüllen. "Die haben dich ja richtig indoktriniert. Laß mich darüber nachdenken. Ich hoffe, du hast Zeit."~ */
  IF ~~ THEN REPLY #46957 /* ~"Alle Zeit der Welt, Sandoz. Überleg es dir."~ */ DO ~FadeToColor([20.0],0)
Wait(3)
FadeFromColor([20.0],0)
~ GOTO 7
END

IF ~~ THEN BEGIN 13 // from: 9.1
  SAY #46958 /* ~Du hörst, wie hinter der Tür kurz und kräftig Atem geholt wird. Dann hörst du ein langsames, trockenes Lachen. "Du hast's wohl nicht so mit Taktgefühl? Und wenn ich dir sagen würde, daß mein Kopf schon in der Schlinge steckt?"~ */
  IF ~~ THEN REPLY #46959 /* ~"Mach dich nicht lächerlich und seh der Wahrheit ins Auge. Selbstmord ist doch keine Lösung? Du würdest nur durch deine Prüfung fallen."~ */ GOTO 14
  IF ~~ THEN REPLY #46960 /* ~"Dann tu's doch. Wenn du so feige bist, daß du dich umbringen willst, dann kann ich mir ehrlich gesagt nicht vorstellen, daß du den Mut hast, es wirklich durchzuziehen."~ */ GOTO 6
END

IF ~~ THEN BEGIN 14 // from: 13.0
  SAY #46961 /* ~"Du... Hm, na ja... Laß mich kurz darüber nachdenken..."~ */
  IF ~~ THEN REPLY #46962 /* ~"Laß dir ruhig Zeit."~ */ DO ~FadeToColor([20.0],0)
Wait(3)
FadeFromColor([20.0],0)
~ GOTO 7
END

IF ~~ THEN BEGIN 15 // from: 3.0 3.2
  SAY #46963 /* ~"Unser Stolz treibt uns an! Und unser Ego! Wir reden uns ständig ein, daß was aus uns werden kann, daß wir etwas bedeuten, daß es einen Grund gibt für unser Leben, doch am Ende... Am Ende ist alles finster. Ich habe diese Finsternis *gesehen*, und es gibt keinen Grund, sie zu leugnen. Und dennoch machen wir immer weiter, aus unserem dummen Stolz heraus. Ohne Sinn und Verstand."~ */
  IF ~~ THEN REPLY #46964 /* ~"Hast du je darüber nachgedacht, daß du aus gutem Grund ein Göttermensch geworden bist?"~ */ GOTO 16
  IF ~~ THEN REPLY #46965 /* ~"Jetzt wo du's sagst- du hast recht..."~ */ GOTO 6
END

IF ~~ THEN BEGIN 16 // from: 15.0
  SAY #46966 /* ~"Was meinst du?"~ */
  IF ~  CheckStatGT(Protagonist,14,INT)
~ THEN REPLY #46967 /* ~"Irgendwann mußt du doch einen Grund gehabt haben. Du mußt daran geglaubt haben, daß alles eine große Prüfung ist. Du mußt daran geglaubt haben, daß wir da sind, um die große Finsternis zu verdrängen und sie zu besiegen. Sag mir bloß nicht, du bist jetzt schwach geworden."~ */ GOTO 12
  IF ~~ THEN REPLY #46968 /* ~"Warum bist du den Göttermenschen beigetreten?"~ */ GOTO 17
END

IF ~~ THEN BEGIN 17 // from: 16.1
  SAY #46969 /* ~"Weil ich dachte, daß es einen Sinn gibt. Ich habe mich getäuscht. Es gibt keinen Sinn. Liebe, Familie, Reichtum, Karriere... Es ist alles sinnlos."~ */
  IF ~~ THEN REPLY #46970 /* ~"Alles? Kann ich dich irgendwie vom Gegenteil überzeugen?"~ */ GOTO 18
  IF ~  CheckStatGT(Protagonist,14,INT)
~ THEN REPLY #46971 /* ~"Aber irgendwie geht's doch immer weiter. Du bist doch ein Göttermensch geworden, weil du etwas so Großartiges wie das Leben nicht dem Zufall überlassen wolltest. Wenn du diese Prüfung bestehst, Sandoz, wirst du gestärkt daraus hervorgehen."~ */ GOTO 12
END

IF ~~ THEN BEGIN 18 // from: 17.0
  SAY #46972 /* ~"Du anscheinend nicht. Aber bring mir jemanden, der es kann, der mich zum Umdenken bewegen kann." Er entfernt sich von der Tür. Es ist unmöglich, die Unterhaltung fortzusetzen.~ */
  IF ~~ THEN REPLY #46973 /* ~"Ich komm wieder."~ */ EXIT
END

IF ~  GlobalGT("G_Test3","GLOBAL",5)
Global("Sandoz_Dead_KAPUTZ","GLOBAL",0)
~ THEN BEGIN 19 // from:
  SAY #46974 /* ~"Ich verdanke dir mein Leben, Fremder. Das werd ich dir nie vergessen. Aber jetzt muß ich erst mal nachdenken. Ich hoffe, du verzeihst mir, wenn ich eine Weile nichts sage."~ */
  IF ~~ THEN REPLY #46975 /* ~"Klar. Leb wohl."~ */ EXIT
END
