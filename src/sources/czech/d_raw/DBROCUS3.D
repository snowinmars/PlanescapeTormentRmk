// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DBROCUS3.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\cs_CZ\dialog.tlk
// dialogF  : (none)

BEGIN ~DBROCUS3~

IF ~  NumTimesTalkedTo(0)
~ THEN BEGIN 0 // from:
  SAY #3202 /* ~Temperamentní šlechtic si tě zamyšleně prohlíží. "Jsem tady, abych si promluvil s dámami, pane, a ne s takovými, jako jsi ty. Doufám, že jsi neměl v plánu otravovat mě nudnými otázkami."~ */
  IF ~~ THEN REPLY #3203 /* ~"Vlastně mám nějaké otázky..."~ */ GOTO 2
  IF ~~ THEN REPLY #40142 /* ~"Doporučuji ti přistupovat ke mně s respektem."~ */ GOTO 3
  IF ~~ THEN REPLY #40143 /* ~"Mám, ale nebudu plýtvat svým časem. Sbohem."~ */ EXIT
  IF ~~ THEN REPLY #40144 /* ~"Ne, nemám. Sbohem."~ */ EXIT
END

IF ~  NumTimesTalkedToGT(0)
~ THEN BEGIN 1 // from:
  SAY #40145 /* ~"Znovu vy, už mě to otravuje. Kdybych chtěl mluvit s takovým typem člověka, jako jsi ty, zašel bych na východ odtud, kde jich je dost. A teď mě nech být."~ */
  IF ~~ THEN REPLY #40146 /* ~"Radím ti, mluv s respektem."~ */ GOTO 3
  IF ~~ THEN REPLY #40147 /* ~Odejdi.~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 0.0
  SAY #40148 /* ~Noblesní muž se na tebe zostra podíval. "Nestarám se... ani trochu! Teď, pryč s tebou. Běž - nech mě na pokoji."~ */
  IF ~~ THEN REPLY #40149 /* ~"Doporučuji ti přistupovat ke mně s respektem."~ */ GOTO 3
  IF ~~ THEN REPLY #40150 /* ~Odejdi.~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 0.1 1.0 2.0
  SAY #40151 /* ~Povzdychl si a zavřel oči, jako kdyby se pokoušel uklidnit. "Jestli je potřebné nějaké zaříkávadlo, které by mě tě zbavilo, ať je vysloveno: jestli bys nebyl tak *hodný,* pane, velmi pokorně se ptám, jestli bys nešel rozmlouvat s někým *jiným*."~ */
  IF ~~ THEN REPLY #40152 /* ~"Dobře ... sbohem."~ */ EXIT
  IF ~~ THEN REPLY #40153 /* ~Odejdi.~ */ EXIT
END
