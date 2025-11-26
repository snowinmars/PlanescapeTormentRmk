// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DZM79.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\de_DE\dialog.tlk
// dialogF  : (none)

BEGIN ~DZM79~

IF ~  True()
~ THEN BEGIN 0 // from:
  SAY #34942 /* ~Der fleischige Kopf der Leiche wurde eindeutig irgendwann abgetrennt und hastig wieder angenäht. Die verschiedenen Nähte - alle in verschiedenen Stadien der Auflösung - scheinen darauf hinzudeuten, daß der Kopf während seiner Arbeit ständig wieder abgerissen und erneut befestigt wird. Auf der Stirn ist die Zahl "79" eingeritzt, umgeben von einem gezackten Kreis, der offenbar ein Brandzeichen ist.~ */
  IF ~~ THEN REPLY #34943 /* ~"Na... gibt's hier irgendwas Interessantes zu berichten?"~ */ DO ~IncrementGlobalOnceEx("GLOBALZombie_Chaotic","GLOBALLaw",-1)
~ GOTO 1
  IF ~  Global("Know_Copper_Earring_Secret","GLOBAL",0)
~ THEN REPLY #34946 /* ~Sieh dir den gezackten Kreis an.~ */ DO ~SetGlobal("Know_Copper_Earring_Secret","GLOBAL",1)
~ GOTO 3
  IF ~  Global("Vaxis_Exposed","GLOBAL",1)
~ THEN REPLY #34947 /* ~"Ich weiß, daß du kein Zombie bist, verstehst du. Du führst hier keinen an der Nase herum."~ */ GOTO 1
  IF ~  Global("Speak_with_Dead","GLOBAL",1)
~ THEN REPLY #34948 /* ~Wende deine Erzählende-Knochen-Fähigkeit auf die Leiche an.~ */ GOTO 2
  IF ~~ THEN REPLY #34951 /* ~"Es war nett, mit dir gesprochen zu haben. Leb wohl."~ */ EXIT
  IF ~~ THEN REPLY #34952 /* ~Laß die Leiche in Ruhe.~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0 0.2
  SAY #34944 /* ~Die Leiche starrt dich weiter an.~ */
  IF ~~ THEN REPLY #34945 /* ~Laß die Leiche in Ruhe.~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 0.3 3.0 3.1
  SAY #34949 /* ~Die Leiche reagiert nicht. Sie scheint schon zu weit hinüber zu sein, um irgendeine deiner Fragen beantworten zu können..~ */
  IF ~~ THEN REPLY #34950 /* ~Laß die Leiche in Ruhe.~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 0.1
  SAY #64278 /* ~Der Kreis mit den Zähnen sieht aus, als wäre er vor langer Zeit in die Stirn der Leiche eingebrannt worden, wahrscheinlich, bevor der Mensch gestorben ist. Es könnte irgendein religiöses oder rituelles Symbol sein. Du bemerkst, daß einer der Winkel zwischen den inneren 'Fängen' mit einem winzigen Dreieck versehen ist, als hätte er eine bestimmte Bedeutung.~ */
  IF ~  !PartyHasItem("CopEarC")
~ THEN REPLY #64279 /* ~"Hmmm. Interessant... wie ist diese Markierung dorthin geraten, Leiche?"~ */ JOURNAL #64536 /* ~Ich habe ein seltsames, gezahntes, rundes Symbol auf der Stirn von Zombie Nr. 79 gefunden. Aus irgendeinem Grund hatte ich das Gefühl, das Symbol könnte wichtig sein, aber ich weiß nicht warum.~ */ GOTO 2
  IF ~  PartyHasItem("CopEarC")
~ THEN REPLY #64280 /* ~"Hmmm... Ich frage mich, ob der Abstand zwischen den Fängen mit den Furchen auf dem Kupferohrring übereinstimmt, den ich hier habe..."~ */ JOURNAL #64537 /* ~Ich habe ein seltsames, gezahntes, rundes Symbol auf der Stirn von Zombie Nr. 79 gefunden. Der bloße Anblick hat mich an den alten Kupferohrring erinnert, den ich im südöstlichen Vorbereitungsraum gefunden habe - Vielleicht gibt es ja eine Verbindung zwischen den beiden.~ */ GOTO 2
END
