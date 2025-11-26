// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DBBPLOT2.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\de_DE\dialog.tlk
// dialogF  : (none)

BEGIN ~DBBPLOT2~

IF ~  Global("BBPlot_Secret_2","GLOBAL",0)
~ THEN BEGIN 0 // from:
  SAY #53136 /* ~Das Seltsame an diesem runden Bereich auf dem Boden des Irrgangs ist, daß die gesamte Vegetation um ihn herum abgestorben ist, bis auf drei kränkliche Zweige in der Mitte... Es sieht aus, als hätten die Zweige alle anderen Pflanzen um sich herum verschlungen. ~ */
  IF ~  OR(2)
!Global("BBPlot_Secret_1","GLOBAL",0)
!Global("BBPlot_Secret_3","GLOBAL",0)
~ THEN REPLY #53137 /* ~Fang an zu summen, dieselbe Melodie, die Ravel gesummt hat, als sie die magischen Kräfte des Irrgangs gerufen hat.~ */ GOTO 1
  IF ~  !Class(Protagonist,MAGE)
Global("Ravel_Teach","GLOBAL",0)
~ THEN REPLY #53153 /* ~Sieh dir die Zweige genauer an..~ */ GOTO 6
  IF ~  Class(Protagonist,MAGE)
Global("Ravel_Teach","GLOBAL",0)
~ THEN REPLY #53156 /* ~Sieh dir die Zweige genauer an..~ */ GOTO 7
  IF ~  GlobalGT("Ravel_Teach","GLOBAL",0)
~ THEN REPLY #53163 /* ~Sieh dir die Zweige genauer an..~ */ GOTO 7
  IF ~~ THEN REPLY #53164 /* ~Laß die Zweige in Ruhe.~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0 7.0
  SAY #53138 /* ~Als du zu summen beginnst, fangen die Zweige an, sich im Kreis zu drehen, die Finger zappeln und greifen nach etwas... Und du weißt instinktiv, daß sie nach einem Schwarzstachel-Samen schnappen.~ */
  IF ~  PartyHasItem("BBSeed")
~ THEN REPLY #53139 /* ~Während du summst, wirfst du einen von den Schwarzstachel-Samen in ihre Mitte.~ */ DO ~DestroyPartyItem("BBSeed",FALSE)
SetGlobal("BBPlot_Secret_2","GLOBAL",1)
~ GOTO 2
  IF ~  !PartyHasItem("BBSeed")
~ THEN REPLY #53151 /* ~"Ich hoffe, daß ich noch mehr solche Samen finden kann, aber ich habe das Gefühl, daß Ravel mir die einzigen gegeben hat."~ */ EXIT
  IF ~~ THEN REPLY #53152 /* ~Laß die schlagenden Zweige in Ruhe.~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.0
  SAY #53140 /* ~Du summst und schnippst den Samen in das Gewirr aus Zweigen. Die drei Zweige winden sich mit einem *Knacken* um den Samen und zersplittern ihn. Die Zweige hören auf, um sich zu schlagen, und du siehst, wie sie langsam wachsen und zu dicken Ästen werden. Während sie wachsen, winden sich die drei neuen Äste umeinander und brechen dann mit einem *Knacken* am Ansatz ab. Sie rollen über den Boden und bleiben dann totenstill liegen.~ */
  IF ~  Global("Ravel_Teach","GLOBAL",1)
CheckStatLT(Protagonist,16,INT)
~ THEN REPLY #53141 /* ~Heb den dreifach verschlungenen Ast auf.~ */ DO ~GiveItemCreate("BBWand",Protagonist,9,9,0)
~ GOTO 3
  IF ~  Global("Ravel_Teach","GLOBAL",1)
CheckStatGT(Protagonist,15,INT)
~ THEN REPLY #53144 /* ~Heb den dreifach verschlungenen Ast auf.~ */ DO ~GiveItemCreate("BBWand",Protagonist,33,33,0)
~ GOTO 4
  IF ~  Global("Ravel_Teach","GLOBAL",2)
CheckStatLT(Protagonist,16,INT)
~ THEN REPLY #53147 /* ~Heb den dreifach verschlungenen Ast auf.~ */ DO ~GiveItemCreate("BBWand",Protagonist,66,66,0)
~ GOTO 4
  IF ~  Global("Ravel_Teach","GLOBAL",2)
CheckStatGT(Protagonist,15,INT)
~ THEN REPLY #53148 /* ~Heb den dreifach verschlungenen Ast auf.~ */ DO ~GiveItemCreate("BBWand",Protagonist,99,99,0)
~ GOTO 5
END

IF ~~ THEN BEGIN 3 // from: 2.0
  SAY #53142 /* ~Du hebst den dreifach gewundenen Ast auf. Er liegt ruhig in deiner Hand, aber du spürst dein Summen schwach in ihm nachhallen. Er besitzt offenbar Zauberkräfte... Aber die Äste machen einen etwas verkümmerten Eindruck. Du bist nicht sicher, wieviel Kraft der Zweig besitzt.~ */
  IF ~~ THEN REPLY #53143 /* ~"Ich nehm' das hier mal mit. Könnte sich als nützlich erweisen."~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 2.1 2.2
  SAY #53145 /* ~Du hebst den dreifach gewundenen Ast auf. Er liegt ruhig in deiner Hand, aber du hörst dein Summen schwach in ihm nachhallen. Er besitzt offenbar Zauberkräfte... und zwar starke.~ */
  IF ~~ THEN REPLY #53146 /* ~"Ich nehm' das hier mal mit. Könnte sich als nützlich erweisen."~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 2.3
  SAY #53149 /* ~Du hebst den dreifach gewundenen Ast auf. Er liegt ruhig in deiner Hand, aber du hörst dein Summen stark in ihm nachhallen, wie ein Herzschlag. Er besitzt offenbar Zauberkräfte... und zwar starke. Du hast *gefühlt*, daß der Ast auf dein Summen reagiert hat, und zwar so stark, daß du damit sein Wachstum fördern konntest, als sich die Zweige umeinanderschlangen. In diesem Ast steckt eine ungeheure Kraft... vielleicht eine Spur von Ravels Kraft, hauptsächlich aber deine eigene Willenskraft. Du bist schwer beeindruckt von dir selbst. ~ */
  IF ~~ THEN REPLY #53150 /* ~Nimm den Ast... *deinen* Ast.~ */ EXIT
END

IF ~~ THEN BEGIN 6 // from: 0.1
  SAY #53154 /* ~Die Zweige sind dünn, wie greifende Finger, und sie besitzen nicht die schwarzen Stacheln, mit denen die Äste im übrigen Irrgang bedeckt sind. Abgesehen davon sehen sie völlig normal aus.~ */
  IF ~~ THEN REPLY #53155 /* ~Laß die Zweige in Ruhe.~ */ EXIT
END

IF ~~ THEN BEGIN 7 // from: 0.2 0.3
  SAY #53157 /* ~Die Zweige sind dünn, wie greifende Finger, und sie besitzen nicht die schwarzen Stacheln, mit denen die Äste im übrigen Irrgang bedeckt sind. Als du sie genauer betrachtest, spürst du, daß sie magische Vibrationen aussenden - wie die Vibrationen im Rest des Irrgangs, aber durchdringender, wie das Weinen kleiner Kinder.~ */
  IF ~  GlobalGT("Ravel_Teach","GLOBAL",0)
~ THEN REPLY #53158 /* ~Fang an zu summen, dieselbe Melodie, die Ravel gesummt hat, als sie die magischen Kräfte des Irrgangs gerufen hat.~ */ GOTO 1
  IF ~  Global("Ravel_Teach","GLOBAL",0)
~ THEN REPLY #53159 /* ~Untersuche die Zweige genau und versuche festzustellen, was das für eine Aura ist.~ */ GOTO 8
  IF ~~ THEN REPLY #53162 /* ~Laß die Zweige in Ruhe.~ */ EXIT
END

IF ~~ THEN BEGIN 8 // from: 7.1
  SAY #53160 /* ~Du untersuchst die Zweige sorgfältig. Irgendwie hast du das Gefühl, daß diese Zweige aus einem bestimmten Grund hier angepflanzt wurden. Sie scheinen magische Kräfte zu besitzen, aber du weißt nicht, wie du diese freisetzen kannst.~ */
  IF ~~ THEN REPLY #53161 /* ~Laß die Zweige in Ruhe.~ */ EXIT
END

IF ~  Global("BBPlot_Secret_2","GLOBAL",1)
~ THEN BEGIN 9 // from:
  SAY #53165 /* ~Vor dir auf dem Boden des Irrgangs befindet sich ein Kreis... Es sind keinen neuen Äste gewachsen, und du glaubst auch nicht, daß sie je wieder wachsen werden, nun, wo Ravel tot ist.~ */
  IF ~~ THEN REPLY #53166 /* ~Verlaß den Kreis.~ */ EXIT
END
