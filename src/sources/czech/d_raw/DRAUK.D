// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DRAUK.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\cs_CZ\dialog.tlk
// dialogF  : (none)

BEGIN ~DRAUK~
//////////////////////////////////////////////////
// WARNING: this file contains non-trivial WEIGHTs
//////////////////////////////////////////////////

IF WEIGHT #4 /* Triggers after states #: 1 2 3 7 even though they appear after this state */
~  Global("Rings3","Global",0)
~ THEN BEGIN 0 // from:
  SAY #49900 /* ~Vidíš mladého muže oblečeného v jednoduchých, ale dobře udržovaných šatech. Jak ses přiblížil, zastavil krok.~ */
  IF ~~ THEN REPLY #49901 /* ~"Zdravíčko..."~ */ GOTO 4
  IF ~~ THEN REPLY #49902 /* ~"Ne, nic. Sbohem."~ */ EXIT
END

IF WEIGHT #3 /* Triggers after states #: 2 3 7 even though they appear after this state */
~  Global("Rings3","Global",1)
~ THEN BEGIN 1 // from:
  SAY #49903 /* ~"Donesl jsi? Ano?"~ */
  IF ~  PartyHasItem("SilRing")
PartyHasItem("BroRing")
PartyHasItem("GolRing")
~ THEN REPLY #49904 /* ~"Mám všechny prsteny. Tady."~ */ DO ~TakePartyItemNum("SilRing",1)
TakePartyItemNum("BroRing",1)
TakePartyItemNum("GolRing",1)
~ GOTO 6
  IF ~~ THEN REPLY #49905 /* ~"Vrátím se, až je budu všechny mít. Sbohem."~ */ EXIT
END

IF WEIGHT #2 /* Triggers after states #: 3 7 even though they appear after this state */
~  Global("Rings3","Global",2)
~ THEN BEGIN 2 // from:
  SAY #49906 /* ~"Ty přítel. Pomoct Raukovi. Dobrý."~ */
  IF ~~ THEN REPLY #49907 /* ~"Sbohem."~ */ EXIT
END

IF WEIGHT #1 /* Triggers after states #: 7 even though they appear after this state */
~  Global("WIdiots","Global",1)
~ THEN BEGIN 3 // from:
  SAY #49908 /* ~"Rauk ztrácet přátele. Ale Rauk dělat nový přítel. Říkat mu Zelenáč."~ */
  IF ~~ THEN REPLY #49909 /* ~"Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 0.0
  SAY #49910 /* ~"Rauk má problém. Ty pomoc?"~ */
  IF ~~ THEN REPLY #49911 /* ~"Co se stalo?"~ */ GOTO 5
  IF ~~ THEN REPLY #49912 /* ~"Na to nemám čas. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 4.0
  SAY #49913 /* ~"Rauk nechat prsteny ve stanu. Přátelé je potřebovat k magii. Ne prsteny, být na Rauk zlý. Jeden prsten hnědý, jak peníz. Jiný lesklý jak zrcadlo. Poslední být pěkný a žlutý. Přinést Raukovi?"~ */
  IF ~~ THEN REPLY #49914 /* ~"Přinesu ti je, Rauku."~ */ DO ~SetGlobal("Rings3","Global",1)
~ JOURNAL #49916 /* ~Rauk mě požádal, abych mu přinesl tři prsteny z jeho stanu. Podle jeho popisu je první z nich vyroben ze zlata, druhý ze stříbra a třetí z bronzu. Teď už jenom musím najít Raukův stan. Rauk je patrně prostoduchý, takže to asi bude někde blízko.~ */ EXIT
  IF ~~ THEN REPLY #49915 /* ~"Zapomeň na to. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 6 // from: 1.0
  SAY #49917 /* ~"Ty teď nový přítel Rauka. Rauk teď vzít prsteny. Rauk děkovat nová přátelé."~ */
  IF ~~ THEN REPLY #49918 /* ~"Sbohem, Rauku."~ */ DO ~SetGlobal("Rings3","Global",2)
AddexperienceParty(500)
StartCutSceneMode()
StartCutSceneEx("3012cut1",FALSE)
~ JOURNAL #49919 /* ~Vrátil jsem se s těmi třemi prsteny a dal jsem je Raukovi. Prostý úkol pro prostého člověka.~ */ EXIT
END

IF WEIGHT #0 ~  GlobalGT("Apprent_DEAD_KAPUTZ","GLOBAL",0)
!Global("Rings3","GLOBAL",2)
~ THEN BEGIN 7 // from:
  SAY #66367 /* ~"Ty zabilas kamoša od Rauk. Rauk teď zbije tě moc moc."~ */
  IF ~~ THEN REPLY #66368 /* ~Zaútoč na Rauka~ */ DO ~Enemy()
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
~ EXIT
END
