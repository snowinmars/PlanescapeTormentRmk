// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DCSTCSUS.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\de_DE\dialog.tlk
// dialogF  : (none)

BEGIN ~DCSTCSUS~

IF ~  True()
~ THEN BEGIN 0 // from:
  SAY #9977 /* ~Du siehst einen älteren, schäbig gekleideten Mann. Als er deinen Blick bemerkt, versucht er dir auszuweichen. Daraufhin schlägst auch du eine andere Richtung ein, um ihn abzufangen.~ */
  IF ~~ THEN REPLY #9978 /* ~"Sei gegrüßt."~ */ GOTO 1
  IF ~~ THEN REPLY #9979 /* ~Laß ihn in Frieden.~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #9980 /* ~Er sieht aus, als würde er gleich losrennen, dann scheint er es sich jedoch anders zu überlegen. Seine Augen suchen ständig die Umgebung ab, ohne sich je wirklich auf dich zu richten. Du hast den Eindruck, daß er bereit ist, jederzeit Hals über Kopf zu fliehen. "Bei mir gibt es nichts zu holen! Und getan hab' ich dir auch nichts! Laß mich in Frieden... bitte!"~ */
  IF ~~ THEN REPLY #9981 /* ~"Ganz ruhig. Ich will dir bloß ein paar Fragen stellen. Okay?"~ */ GOTO 2
  IF ~~ THEN REPLY #9982 /* ~"Tut mir leid, wollte dich nicht stören. Zieh deiner Wege."~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.0
  SAY #9983 /* ~Jetzt schaut er dich zum ersten Mal direkt an. Während er dich von Kopf bis Fuß mustert, wird seine Miene noch besorgter. "Ich... würde dir gerne helfen, wenn ich könnte, das schwör ich. Aber ich weiß nichts... wirklich nicht! Bitte laß mich in Frieden."~ */
  IF ~~ THEN REPLY #9984 /* ~"Woher willst du denn wissen, daß du mir nicht helfen kannst, wenn du nicht mal meine Fragen anhörst?"
~ */ GOTO 3
  IF ~~ THEN REPLY #9985 /* ~"Gut. Geh."~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 2.0
  SAY #9986 /* ~Er blickt ängstlich um sich, als fürchte er, von allen Seiten angegriffen zu werden. Er reibt sich nervös die Hände und schaut dich kurz an, bevor er sich wieder auf die umliegenden Straßen konzentriert. "Äh... ich will keinen Ärger, verstehst du? Deshalb sage ich jedem, daß ich nichts weiß, klar? Und genau deshalb kann ich dir auch nicht helfen. Bitte! Laß mich in Frieden!" Er sieht aus, als würde er vor lauter Verzweiflung jeden Moment in Tränen ausbrechen.~ */
  IF ~~ THEN REPLY #9987 /* ~"Gut. Tut mir leid, wollte dich nicht stören."~ */ GOTO 4
  IF ~~ THEN REPLY #9988 /* ~"Hmpf. Damit kommst du bei mir nicht durch. Ich brauch ein paar Antworten, und du bist dazu auserkoren, sie mir zu geben. Die andre Möglichkeit ist, daß ich dir ein wenig die Fresse poliere."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Suspicious_1","GLOBALGood",-1)
~ GOTO 5
  IF ~~ THEN REPLY #9989 /* ~"Sieh mal, es tut mir wirklich leid, dir so viel Kummer bereitet zu haben. Kann ich dir irgendwie behilflich sein? Du wirkst bekümmert."~ */ DO ~IncrementGlobalOnceEx("GLOBALGood_Suspicious_1","GLOBALGood",1)
~ GOTO 6
END

IF ~~ THEN BEGIN 4 // from: 3.0 7.0
  SAY #9990 /* ~Ein Ausdruck der Erleichterung huscht über sein Gesicht, als er zurückweicht. Seine Blicke schweifen ängstlich hin und her. Schließlich dreht er sich um und ergreift die Flucht.~ */
  IF ~~ THEN REPLY #9991 /* ~"Ich glaube, ich versteh langsam die Bedeutung des Worts 'übergeschnappt'."~ */ DO ~EscapeArea()
~ EXIT
END

IF ~~ THEN BEGIN 5 // from: 3.1
  SAY #9992 /* ~Seine Augen wandern ängstlich umher; dann gibt er einen wimmernden Laut von sich. Er vergräbt sein Gesicht in den Händen und sinkt schluchzend zu Boden. Du glaubst, daß du nie etwas aus ihm herauskriegst.~ */
  IF ~~ THEN REPLY #9993 /* ~"Ich glaube, ich versteh langsam die Bedeutung des Worts 'übergeschnappt'."~ */ EXIT
END

IF ~~ THEN BEGIN 6 // from: 3.2
  SAY #9994 /* ~Ein Ausdruck der Erleichterung huscht über sein Gesicht, als er zurückweicht. Seine Augen wandern mißtrauisch umher, bevor er dich direkt anschaut. "Du... du würdest mir hier raus helfen? Mir, einem Fremden? Da stimmt doch was nicht!"~ */
  IF ~~ THEN REPLY #9995 /* ~"Ja, ich würde dir helfen. Kein Haken an der Sache. Sag mir einfach, was du brauchst."~ */ GOTO 7
END

IF ~~ THEN BEGIN 7 // from: 6.0
  SAY #9996 /* ~Er beäugt dich mißtrauisch und sieht sich um. Als er dich wieder ansieht, wirkt er einen Moment lang nicht mehr wie ein Gejagter. "Ich danke dir. Einem wie mir würde hier sonst keiner helfen. Aber ich... ich glaube, mir ist nicht mehr zu helfen. Danke... ich muß jetzt gehen."~ */
  IF ~~ THEN REPLY #9997 /* ~"Ich verstehe. Leb wohl."~ */ GOTO 4
END
