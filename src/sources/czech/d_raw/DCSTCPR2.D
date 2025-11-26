// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DCSTCPR2.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\cs_CZ\dialog.tlk
// dialogF  : (none)

BEGIN ~DCSTCPR2~

IF ~  True()
~ THEN BEGIN 0 // from:
  SAY #10124 /* ~Vidíš stárnoucí ženu v levných šatech. Vypadá to, že si dala velkou práci, aby vypadala mladší a atraktivnější, než ve skutečnosti je. Když ses přiblížil, tvůj nos zachytil zápach levného vína.~ */
  IF ~~ THEN REPLY #10125 /* ~"Zdravím."~ */ GOTO 1
  IF ~~ THEN REPLY #10126 /* ~Ignoruj ji.~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #10127 /* ~Otočila se k tobě, tváře má zarudlé z pití. "Oh, ahóóóój. Hledáš... společnost?" Usmála se a pořádně si tě prohlédla. "Óóóó, seš trošku... mimo. Co... co se ti stalo?"~ */
  IF ~~ THEN REPLY #10128 /* ~"Doufal jsem, že se tě budu moct zeptat na pár věcí?"~ */ GOTO 2
  IF ~~ THEN REPLY #10129 /* ~"To není tvoje věc."~ */ GOTO 6
  IF ~~ THEN REPLY #10130 /* ~"To nic. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.0
  SAY #10131 /* ~Přimknula se k tobě a položila ti dlaně na hrudník. "Není se třeba... vyptávat. Jestli máš prachy... já mám talent. Můj bejvák je támhle. Pojďme."~ */
  IF ~~ THEN REPLY #10132 /* ~"O to se nezajímám. Potřebuju od tebe nějaké informace."~ */ GOTO 3
  IF ~~ THEN REPLY #10133 /* ~"Kolik?"~ */ GOTO 4
  IF ~~ THEN REPLY #10134 /* ~"To nic. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 2.0
  SAY #10135 /* ~Založila si ruce v bok. "Hele, kámo. Já si nějak musím vydělávat na živobytí, jasný? Možná jsi trochu zmatený... ale copak já vypadám jako nějaký mudrc? Jediné odpovědi, které ti můžu dát, čekají tady, v mém náručí." Roztáhla ruce.~ */
  IF ~~ THEN REPLY #10136 /* ~"To nic. Sbohem."~ */ EXIT
  IF ~~ THEN REPLY #10137 /* ~"Kolik?"~ */ GOTO 4
END

IF ~~ THEN BEGIN 4 // from: 2.1 3.1
  SAY #10138 /* ~Zahihňala se a pak se na tebe usmála. "Ooooh, no, řekněme... pět mincí?" Dívá se na tebe s očekáváním.~ */
  IF ~  PartyGoldGT(5)
~ THEN REPLY #10140 /* ~"Pojďme..."~ */ DO ~TakePartyGold(5)
FadeToColor([20.0],0)
Wait(3)
FadeFromColor([20.0],0)
~ GOTO 5
  IF ~  PartyGoldLT(5)
~ THEN REPLY #10139 /* ~"Promiň, já zkrátka nemám peníze."~ */ EXIT
  IF ~~ THEN REPLY #10141 /* ~"To nic. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 4.0
  SAY #10142 /* ~Zavedla tě k sobě. Po hodině se s tebou vrátila zpět na ulici. "Přijď zase... bylo to docela fajn." Usmála se a zamávala ti na rozloučenou.~ */
  IF ~~ THEN REPLY #10143 /* ~"Dobrý den."~ */ EXIT
END

IF ~~ THEN BEGIN 6 // from: 1.1
  SAY #10144 /* ~Zamračila se na tebe. "Hej... není třeba být hrubý. Jestli neumíš být přátelský, nebudu s tebou ztrácet čas. A teď zmizni!" Otočila se a jde pryč.~ */
  IF ~~ THEN REPLY #10145 /* ~Nechej ji být.~ */ EXIT
END
