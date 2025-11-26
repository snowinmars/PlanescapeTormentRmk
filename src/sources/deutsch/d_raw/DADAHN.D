// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DADAHN.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\de_DE\dialog.tlk
// dialogF  : (none)

BEGIN ~DADAHN~

IF ~  True()
~ THEN BEGIN 0 // from:
  SAY #3015 /* ~Der Mann vor dir hat große Augen und eine schmale Statur. Die anderen Barbesucher scheinen ihn zu verwirren und zu verängstigen, aber er wirkt unglaublich erleichtert, als er dich sieht.~ */
  IF ~~ THEN REPLY #3016 /* ~"Gegrüßt...?"~ */ GOTO 1
  IF ~~ THEN REPLY #13301 /* ~Ignoriere den Mann und wende dich ab.~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #11268 /* ~Er kichert leise und rollt seine Augen in einem 'Du glaubst nie, was mir passiert ist'-Blick, der dir seltsam bekannt vorkommt. "Wurde aber auch langsam Zeit, Freund! Ich hab' schon gedacht, ich muß den ganzen Tag hier auf dich warten."~ */
  IF ~~ THEN REPLY #13302 /* ~"Hmm... kenn ich dich?"~ */ DO ~SetGlobal("Know_Adahn","GLOBAL",1)
~ GOTO 2
END

IF ~~ THEN BEGIN 2 // from: 1.0
  SAY #11269 /* ~"Aber ja." Er sieht dich neugierig an. "Wenigstens denk ich das. Ich... äh... tja... ich kann mich nicht an alles von dir erinnern, aber..." Er runzelt gedankenvoll die Stirn und zuckt dann mit den Schultern. "... wie auch immer, es ist gut, dich zu sehen. Ich bin Adahn. Wir sind Freunde, nehm ich an. Fantastisch! Ich könnt wirklich mehr Freunde wie dich gebrauchen, wie's scheint..." Er sieht sich verwirrt um. "Da ich hier niemanden zu kennen scheine und noch weniger weiß, wie ich hierher geraten bin."~ */
  IF ~~ THEN REPLY #13303 /* ~"Wo kommst du her?"~ */ GOTO 3
  IF ~~ THEN REPLY #13304 /* ~"Adahn war bloß jemand, den ich erfunden habe. Ich hatte nicht gedacht, daß jemand mit diesem Namen wirklich existieren würde."~ */ GOTO 5
  IF ~~ THEN REPLY #13305 /* ~"Nun, ich muß gehen. Leb wohl... Adahn."~ */ GOTO 8
END

IF ~~ THEN BEGIN 3 // from: 2.0
  SAY #13289 /* ~Adahn wirkt überrascht, und seine Verwirrtheit kommt wieder hervor. "Ich... hmmnnn." Er runzelt die Stirn. "Tja, nicht aus dieser Gegend hier, glaube ich... oder doch? Ich glaube, an so einen Ort hätte ich mich erinnert. Ich erinnere mich im Moment eigentlich gar nicht so recht, woher ich komme, oder wohin ich gehe..."~ */
  IF ~~ THEN REPLY #13306 /* ~"Weißt du, wer ich bin?"~ */ GOTO 4
  IF ~~ THEN REPLY #13307 /* ~"Nun, ich muß gehen. Leb wohl... Adahn."~ */ GOTO 8
END

IF ~~ THEN BEGIN 4 // from: 3.0
  SAY #13290 /* ~"Ein... alter Freund?" Er hört sich an, als ob er es mal ausprobiert. "Oder etwa nicht?"~ */
  IF ~~ THEN REPLY #13308 /* ~"Ja, ja, das bin ich. Sag mal, ich hätte ein paar Fragen an dich..."~ */ GOTO 7
  IF ~~ THEN REPLY #13309 /* ~"Nicht wirklich. Adahn war bloß jemand, den ich erfunden habe. Ich hatte nicht gedacht, daß jemand mit diesem Namen wirklich existieren würde, geschweige denn, daß er mein Freund wäre."~ */ GOTO 5
  IF ~~ THEN REPLY #13310 /* ~"Nun, das ist interessant, Adahn, aber jetzt muß ich gehen. Leb wohl."~ */ GOTO 8
END

IF ~~ THEN BEGIN 5 // from: 2.1 4.1
  SAY #13291 /* ~"Wirklich?" Er zuckt mit den Schultern, als sei es nicht wichtig. "Tja, ich glaub nicht, daß ich dich erfunden hab', also ist das doch kein Drama... oder etwa doch? Ich denke, also bin ich. Denke ich." Er sieht verwirrt aus. "Denkst du nicht?"~ */
  IF ~~ THEN REPLY #13311 /* ~"Hört sich richtig an. Sag mal, ich hätte ein paar Fragen an dich..."~ */ GOTO 7
  IF ~~ THEN REPLY #13312 /* ~"Ehrlich gesagt, ich denke nicht, daß ich überhaupt die Absicht hatte, dich zu erfinden. Ist es möglich, daß du nicht mehr als ein Hirngespinst bist?"~ */ GOTO 6
  IF ~~ THEN REPLY #13313 /* ~"Nun, das ist interessant, Adahn, aber jetzt muß ich gehen. Leb wohl."~ */ GOTO 8
END

IF ~~ THEN BEGIN 6 // from: 5.1
  SAY #13292 /* ~Adahn sieht überrascht aus, will etwas sagen und löst sich dann plötzlich in Luft auf.~ */
  IF ~~ THEN REPLY #36923 /* ~"Äh... Na dann, leb wohl."~ */ DO ~DestroySelf()
~ EXIT
END

IF ~~ THEN BEGIN 7 // from: 4.0 5.0
  SAY #13293 /* ~"Oh, und ich hatte auch welche an dich..." Er runzelt die Stirn. "Nur kann ich mich im Moment nicht ganz an sie erinnern." Er zuckt mit den Schultern. "Fragen - wer braucht die schon? Schließlich kommt es doch ohnehin nur auf die Antworten an. Glaube ich."~ */
  IF ~~ THEN REPLY #13314 /* ~"Nun, das ist interessant, Adahn, aber jetzt muß ich gehen. Leb wohl."~ */ GOTO 8
END

IF ~~ THEN BEGIN 8 // from: 2.2 3.1 4.2 5.2 7.0
  SAY #13294 /* ~"Hey... äh..." Er runzelt die Stirn. "Hör mal, bevor du dich aus dem Staub machst nach wer weiß wo, hab' ich noch was für dich... glaub ich wenigstens..."~ */
  IF ~~ THEN REPLY #13315 /* ~"Was denn?"~ */ GOTO 9
END

IF ~~ THEN BEGIN 9 // from: 8.0
  SAY #13295 /* ~"Ich bin nicht sicher." Er gräbt in seinen Taschen und runzelt die Stirn. "Die Taschen sind viel zu klein, um darin was aufzuheben..." Er kratzt sich am Kopf. "Vielleicht..." Er zieht seine Ärmel hoch, erst den linken, dann den rechten, sieht wütend aus, läßt dann beide Ärmel wieder runterfallen.~ */
  IF ~~ THEN REPLY #13316 /* ~"Hast du es verloren?"~ */ DO ~GiveItemCreate("AdRing",Protagonist,1,0,0)
~ GOTO 10
  IF ~  CheckStatGT(Protagonist,13,INT)
CheckStatLT(Protagonist,14,WIS)
~ THEN REPLY #13317 /* ~"Warum siehst du nicht noch mal im linken Ärmel nach. Ich denke, da könnte es drin sein."~ */ DO ~GiveItemCreate("AdRing2",Protagonist,1,0,0)
AddexperienceParty(250)
~ GOTO 11
  IF ~  CheckStatGT(Protagonist,13,WIS)
~ THEN REPLY #13318 /* ~"Warum siehst du nicht noch mal im linken Ärmel nach. Ich denke, da könnte es drin sein."~ */ DO ~GiveItemCreate("AdRing2",Protagonist,1,0,0)
AddexperienceParty(250)
~ GOTO 11
END

IF ~~ THEN BEGIN 10 // from: 9.0
  SAY #13296 /* ~"Nein, nein, gib mir eine Minute." Er flucht leise, zieht dann seine Ärmel wieder zurück, erst den rechten, dann den linken. Als er den linken Ärmel zurückzieht, siehst du ein Päckchen, das an sein Handgelenk gebunden ist. Er lächelt erleichtert, bindet es von seinem Arm los und gibt es dir. "Für dich, Freund. Von mir für dich... so eine Art Dankeschön!" Er nickt, als du es nimmst. Du siehst es dir an... es sieht wie eine Art Ring aus.~ */
  IF ~~ THEN REPLY #13319 /* ~"Danke, Adahn."~ */ GOTO 14
END

IF ~~ THEN BEGIN 11 // from: 9.1 9.2
  SAY #13297 /* ~"Wirklich?" Er zieht den linken Ärmel nochmals zurück, und diesmal siehst du ein Päckchen, das an seinem Handgelenk festgebunden ist. Er lächelt erleichtert, bindet es von seinem Arm los und gibt es dir. "Für dich, Freund. Von mir für dich... so eine Art Dankeschön!" Er nickt, als du es nimmst. Du siehst es dir an... es sieht wie eine Art Ring aus.~ */
  IF ~  CheckStatGT(Protagonist,15,INT)
CheckStatLT(Protagonist,16,WIS)
~ THEN REPLY #13320 /* ~"Gab's da nicht noch ein bißchen Geld dazu?"~ */ DO ~GiveGoldForce(100)
AddexperienceParty(500)
~ GOTO 12
  IF ~  CheckStatGT(Protagonist,15,WIS)
~ THEN REPLY #13321 /* ~"Gab's da nicht noch ein bißchen Geld dazu?"~ */ DO ~GiveGoldForce(100)
AddexperienceParty(500)
~ GOTO 12
  IF ~~ THEN REPLY #13322 /* ~"Danke, Adahn."~ */ GOTO 14
END

IF ~~ THEN BEGIN 12 // from: 11.0 11.1
  SAY #13298 /* ~Er schnappt mir den Fingern. "Ja, gab es, gab es." Er sieht auf seinen Gürtel hinab, an dem jetzt eine Gürteltasche hängt. Er bindet sie los und gibt sie dir. "Ist alles da drin. Alle hundert Kupferstücke." Du nimmst die Tasche und öffnest sie. Sieht so aus, als ob alles drin ist.~ */
  IF ~  CheckStatGT(Protagonist,16,INT)
CheckStatLT(Protagonist,17,WIS)
~ THEN REPLY #13323 /* ~"Was ist mit dem verzauberten Gegenstand, den du mir geben wolltest?"~ */ DO ~GiveItemCreate("AdDagger",Protagonist,1,0,0)
AddexperienceParty(1000)
~ GOTO 13
  IF ~  CheckStatGT(Protagonist,16,WIS)
~ THEN REPLY #13324 /* ~"Was ist mit dem verzauberten Gegenstand, den du mir geben wolltest?"~ */ DO ~GiveItemCreate("AdDagger",Protagonist,1,0,0)
AddexperienceParty(1000)
~ GOTO 13
  IF ~~ THEN REPLY #13325 /* ~"Danke, Adahn."~ */ GOTO 14
END

IF ~~ THEN BEGIN 13 // from: 12.0 12.1
  SAY #13299 /* ~Er sieht einen Moment lang verwirrt aus, dann lächelt er, als ob er sich erinnert. "Ja, klar, da war doch was, nicht wahr?" Er greift in seinen rechten Ärmel und zieht einen langen, schmalen Dolch hervor. "Na bitte."~ */
  IF ~~ THEN REPLY #13326 /* ~"Danke, Adahn."~ */ GOTO 14
END

IF ~~ THEN BEGIN 14 // from: 10.0 11.2 12.2 13.0
  SAY #13300 /* ~Als du aufsiehst, um dich bei Adahn für das Geschenk zu bedanken, bemerkst du plötzlich, daß er verschwunden ist. Du hast nicht einmal gehört, wie er gegangen ist.~ */
  IF ~~ THEN REPLY #36922 /* ~"Äh... Na dann, leb wohl."~ */ DO ~DestroySelf()
~ EXIT
END
