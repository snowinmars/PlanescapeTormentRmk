// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DZ257.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\de_DE\dialog.tlk
// dialogF  : (none)

BEGIN ~DZ257~

IF ~  True()
~ THEN BEGIN 0 // from:
  SAY #6507 /* ~Die Augen dieser Leiche stehen sehr eng zusammen, und die Augäpfel selbst stehen leicht schief. Einer sieht nach links, und der andere nach rechts. Du kannst eben so die Zahl '257' erkennen, die auf seiner verletzten Stirn steht - es sieht so aus, als habe die Leiche einige Schläge am Kopf eingesteckt, wodurch die Zahl jetzt nur noch schwer zu erkennen ist.~ */
  IF ~  Global("Zombie_Chaotic","GLOBAL",0)
~ THEN REPLY #6510 /* ~"Wird dir nicht schwindelig, wenn deine Augen so stehen?"~ */ DO ~IncrementGlobal("Law","GLOBAL",-1)
SetGlobal("Zombie_Chaotic","GLOBAL",1)
~ GOTO 1
  IF ~  Global("Zombie_Chaotic","GLOBAL",1)
~ THEN REPLY #6511 /* ~"Wird dir nicht schwindelig, wenn deine Augen so stehen?"~ */ GOTO 1
  IF ~  Global("Vaxis_Exposed","GLOBAL",1)
~ THEN REPLY #6512 /* ~"Ich weiß, daß du kein Zombie bist, verstehst du. Du führst hier keinen an der Nase herum."~ */ GOTO 1
  IF ~  Global("Speak_with_Dead","GLOBAL",1)
~ THEN REPLY #6513 /* ~Wende deine Erzählende-Knochen-Fähigkeit auf die Leiche an.~ */ GOTO 2
  IF ~~ THEN REPLY #6514 /* ~"Es war nett, mit dir gesprochen zu haben. Leb wohl."~ */ EXIT
  IF ~~ THEN REPLY #6515 /* ~Laß die Leiche in Ruhe.~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0 0.1 0.2
  SAY #6508 /* ~In den Augen der Leiche flackert kein Funke des Verstehens auf. Sie starren einfach still nach links und rechts. ~ */
  IF ~~ THEN REPLY #6516 /* ~Laß die Leiche in Ruhe.~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 0.3
  SAY #6509 /* ~Der Geist fährt mit solcher Wucht wieder in den Körper, daß die Muskeln vehement zusammenzucken und die Leiche nach hinten geschleudert wird! Einen Augenblick später steht der Körper wieder auf den Beinen, tanzt und wirbelt wie wahnsinnig herum und wirft die Arme in die Luft; die Nähte reißen auf und lose Fleischfetzen fliegen herum, während der Körper vor und zurück hüpft; die Augäpfel rollen und treten aus dem Schädel, während der Mund fortwährend ein irres Kichern von sich gibt.~ */
  IF ~~ THEN REPLY #6517 /* ~"Ähh... Ich habe da eine Frage an dich, Geist..."~ */ GOTO 3
  IF ~~ THEN REPLY #9558 /* ~Laß den Geist in Ruhe.~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 2.0
  SAY #9553 /* ~Die von einem Geist besessene Leiche hüpft durch die Gegend und singt aufs Geratewohl mit lauter oder leiser, hoher oder tiefer Stimme. "DU bist der GEIST, ich LEBE - beantworte meine Fragen GEFÄLLIGST!" Dein verwirrter Ausdruck scheint dem Geist zu gefallen. Mit seinen knochigen Fingern zieht er seinen Mund zu einer gräßlichen Fratze, lacht wie wahnsinnig und bewegt seine teigige, weiße Zunge hin und her.~ */
  IF ~~ THEN REPLY #9559 /* ~"Also gut... stell deine Fragen."~ */ GOTO 4
  IF ~~ THEN REPLY #9560 /* ~"Nein. Ich würde gern *dich* was fragen..."~ */ GOTO 5
  IF ~~ THEN REPLY #9561 /* ~Laß den chaotischen Geist in Ruhe.~ */ GOTO 6
END

IF ~~ THEN BEGIN 4 // from: 3.0 4.0 5.0
  SAY #9554 /* ~Der Geist scheint sich kurz zu beruhigen, bevor er einen ohrenbetäubend lauten Schwall himmelschreienden Unsinns von sich gibt. Die Kakophonie macht dich fast verrückt. Doch genauso schnell, wie der Ausbruch anfing... hört er wieder auf. Die Leiche beruhigt sich und zuckt nur noch leicht.~ */
  IF ~~ THEN REPLY #9562 /* ~"Das hab' ich nicht ganz kapiert. Könntest du das wohl nochmal wiederholen?"~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Zom257_1","GLOBALLaw",-1)
~ GOTO 4
  IF ~~ THEN REPLY #9563 /* ~"Ich verstehe dich nicht. Aber ich hab' da eine Frage..."~ */ GOTO 5
  IF ~~ THEN REPLY #9564 /* ~"Ich verstehe dich nicht. Leb wohl."~ */ GOTO 6
END

IF ~~ THEN BEGIN 5 // from: 3.1 4.1 5.1
  SAY #9555 /* ~Der Geist singt wieder: "Die Fragen DER Lebenden sollen Die TOTEN beantworten; so WAR es, so ES ist, und so soll es SEIN. Du wirst BEANTWORTEN meine Fragen!" Dein Gesichtsausdruck scheint ihm großes Vergnügen zu bereiten. Er führt einen wilden Freudentanz auf, und du fragst dich, ob seine Hülle das überhaupt verkraften kann. Du kannst förmlich hören, wie ihre Knochen knacken und ihre Sehnen reißen.~ */
  IF ~~ THEN REPLY #9565 /* ~"Bitte... stell deine Fragen."~ */ GOTO 4
  IF ~~ THEN REPLY #9566 /* ~"Du verstehst nicht. Ich hätte da eine Frage an *dich*..."~ */ GOTO 5
  IF ~~ THEN REPLY #9567 /* ~Gib auf und laß den brabbelnden Geist in Ruhe.~ */ GOTO 6
END

IF ~~ THEN BEGIN 6 // from: 3.2 4.2 5.2
  SAY #9556 /* ~Als der Geist aus dem Körper weicht, verzieht sich sein brabbelnder Mund zu einem wissenden Lächeln. Seine wild funkelnden Augen durchdringen dich wie der Blick eines Psychopathen. Er flüstert dir ein einziges Wort zu, das er deutlich ausspricht und wie Gummi dehnt: "Limbus..."~ */
  IF ~~ THEN REPLY #9568 /* ~"Was?"~ */ GOTO 7
  IF ~~ THEN REPLY #9569 /* ~Ignoriere ihn und wende dich ab.~ */ EXIT
END

IF ~~ THEN BEGIN 7 // from: 6.0
  SAY #9557 /* ~...und mit diesem Wort entfleucht er. Du fühlst dich kein bißchen besser und etwas durcheinander. Der Zombie nimmt still seine Arbeit wieder auf.~ */
  IF ~~ THEN EXIT
END
