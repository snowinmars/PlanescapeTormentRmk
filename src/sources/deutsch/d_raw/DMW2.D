// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DMW2.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\de_DE\dialog.tlk
// dialogF  : (none)

BEGIN ~DMW2~

IF ~  NumTimesTalkedTo(0)
~ THEN BEGIN 0 // from:
  SAY #47953 /* ~Du triffst auf einen kräftig aussehenden jungen Mann. Er scheint intensiv damit beschäftigt zu sein, den Inhalt einiger Kisten zu prüfen. Er sieht dich nicht kommen.~ */
  IF ~~ THEN REPLY #47954 /* ~"Sei gegrüßt."~ */ GOTO 1
  IF ~~ THEN REPLY #47955 /* ~Ignoriere ihn.~ */ DO ~SetNumTimesTalkedTo(0)
~ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #47956 /* ~Er schaut dich kurz über die Schulter hinweg an und fährt dann mit seiner Arbeit fort. "Entschuldige, Schleifer. Ich kann jetzt nicht mit dir sprechen. Hab zu viel zu tun." Er widmet sich wieder seiner Arbeit.~ */
  IF ~~ THEN REPLY #47957 /* ~"Ich habe ein paar Fragen..."~ */ GOTO 2
  IF ~~ THEN REPLY #47958 /* ~"Na schön, dann leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.0
  SAY #47959 /* ~Er fährt mit seiner Arbeit fort, während er mit dir spricht. "Es tut mir leid, aber du mußt dir deine Antworten woanders holen. Ich hab wirklich keine Zeit. Frag mal Lazlo. Der Junge ist meistens beim Ofen da drüben."~ */
  IF ~~ THEN REPLY #47960 /* ~Geh weg.~ */ EXIT
END

IF ~  NumTimesTalkedToGT(0)
~ THEN BEGIN 3 // from:
  SAY #47961 /* ~Du triffst auf den Marktarbeiter. Er sieht dich kommen und runzelt die Stirn. "Da bist du ja wieder, Schleifer."~ */
  IF ~~ THEN REPLY #47962 /* ~"Ich habe ein paar Fragen..."~ */ GOTO 4
END

IF ~~ THEN BEGIN 4 // from: 3.0
  SAY #47963 /* ~Er seufzt. "Ich würd dir ja gern helfen, aber ich hab keine Zeit. Versuch's mal bei Lazlo. Der Junge ist normalerweise da drüben beim Ofen."~ */
  IF ~~ THEN REPLY #47964 /* ~"Leb wohl."~ */ EXIT
END
