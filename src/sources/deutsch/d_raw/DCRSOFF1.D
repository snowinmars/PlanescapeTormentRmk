// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DCRSOFF1.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\de_DE\dialog.tlk
// dialogF  : (none)

BEGIN ~DCRSOFF1~

IF ~  True()
~ THEN BEGIN 0 // from:
  SAY #3174 /* ~"Bitte! Rette mich! Sie wollen mich töten, nur weil ich meine Arbeit mache! Ich wollte nichts Böses! Sehen sie nicht, daß sie es sind, die diese Stadt in den Ruin treiben?" Er schluchzt. "Bitte... Du mußt etwas tun!"~ */
  IF ~~ THEN REPLY #3175 /* ~"Ich werde dir wohl beim Sterben zusehen."~ */ EXIT
  IF ~~ THEN REPLY #66758 /* ~"Ich werd tun, was ich kann."~ */ EXIT
END
