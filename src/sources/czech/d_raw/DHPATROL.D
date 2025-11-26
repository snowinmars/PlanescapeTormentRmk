// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DHPATROL.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\cs_CZ\dialog.tlk
// dialogF  : (none)

BEGIN ~DHPATROL~

IF ~  NumTimesTalkedTo(0)
GlobalLT("MK_Counter","GLOBAL",1000)
~ THEN BEGIN 0 // from:
  SAY #27619 /* ~Velká postava v rudém brnění stojí na místě a pozorně si prohlíží kolemjdoucí. Nejasně se ti v hlavě objevila vzpomínka, že jeho zdobené brnění ho označuje za důstojníka Harmonia, jednoho z těch, kteří se starají o dodržování pořádku ve městě.~ */
  IF ~~ THEN REPLY #27632 /* ~"Zdravím..."~ */ GOTO 1
  IF ~~ THEN REPLY #27620 /* ~Nechej ho být..~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0 8.0
  SAY #27621 /* ~Mužovy oči bloudí po kolemjdoucích. Řekl: "Postupuj dále."~ */
  IF ~~ THEN REPLY #27633 /* ~"Mám nějaké otázky..."~ */ GOTO 2
  IF ~~ THEN REPLY #27634 /* ~Odejdi.~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.0
  SAY #27622 /* ~Ačkoli je většina z jeho pozornosti zaměřena na kolemjdoucí, na okamžik se ti podíval do očí. "Tady nic není. Pokračuj dále."~ */
  IF ~~ THEN REPLY #27635 /* ~"Potřebuju jenom pár odpovědí..."~ */ GOTO 3
  IF ~~ THEN REPLY #27636 /* ~"Potřebuji tvou pomoc..."~ */ GOTO 4
  IF ~~ THEN REPLY #27637 /* ~"A co když se mi líbí zrovna tady?"~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Patrolman_1","GLOBALLaw",-1)
~ GOTO 7
  IF ~~ THEN REPLY #27638 /* ~Odejdi.~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 2.0
  SAY #27623 /* ~Zavrtěl hlavou. "Tak to si promluv s nějakým občanem, já tady mám práci. A nebudu ji zanedbávat jenom proto, abych si s někým povídal."~ */
  IF ~~ THEN REPLY #27639 /* ~"Ale já potřebuji tvou pomoc..."~ */ GOTO 4
  IF ~~ THEN REPLY #27640 /* ~"A co když se mi líbí zrovna tady?"~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Patrolman_1","GLOBALLaw",-1)
~ GOTO 7
  IF ~~ THEN REPLY #27641 /* ~Odejdi.~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 2.1 3.0
  SAY #27624 /* ~Pozvedl svou zbraň.  "Potřebuješ pomoc? Byl spáchán zločin?"~ */
  IF ~  CheckStatGT(Protagonist,14,CHR)
~ THEN REPLY #27642 /* ~"No... ne. Jenom jsem se chtěl na něco zeptat."~ */ GOTO 5
  IF ~  CheckStatLT(Protagonist,15,CHR)
~ THEN REPLY #27643 /* ~"No... ne. Jenom jsem se chtěl na něco zeptat."~ */ GOTO 6
  IF ~~ THEN REPLY #27644 /* ~"Ne, na tom nezáleží. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 4.0
  SAY #27625 /* ~Povzdechl si. "Chápu, že máš otázky, a v jiném čase na jiném místě bych ti na ně rád odpověděl. Ale--" Na chvíli se odmlčel a podezřívavě se dívá na jednoho kolemjdoucího. "Ale teď nemám čas, takže jdi dále, pane. Hned."~ */
  IF ~~ THEN REPLY #27645 /* ~"A co když se mi líbí zrovna tady?"~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Patrolman_1","GLOBALLaw",-1)
~ GOTO 7
  IF ~~ THEN REPLY #27646 /* ~Odejdi.~ */ EXIT
END

IF ~~ THEN BEGIN 6 // from: 4.1
  SAY #27626 /* ~"Hele, frajere-" Zarazil se a chvíli podezřívavě sleduje jednoho muže, pak se obrátil k tobě. "Mám nějaké úkoly a nesplním je, zatímco se budu vybavovat s nějakým parchantem, který hledá tohleto nebo támhleto a chce se dostat bůhví kam. Jdi dál a nezdržuj."~ */
  IF ~~ THEN REPLY #27647 /* ~"A co když se mi líbí zrovna tady?"~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Patrolman_1","GLOBALLaw",-1)
~ GOTO 7
  IF ~~ THEN REPLY #27648 /* ~Odejdi.~ */ EXIT
END

IF ~~ THEN BEGIN 7 // from: 2.2 3.1 5.0 6.0
  SAY #27627 /* ~Pokrčil rameny, jeho brnění zacinkalo. "Můžeš tady klidně stát, ale nenarušuj právo. Doporučuju ti, abys odešel, než nastane nějaký... problém. Sbohem."~ */
  IF ~~ THEN REPLY #27649 /* ~Odejdi.~ */ EXIT
END

IF ~  NumTimesTalkedToGT(0)
GlobalLT("MK_Counter","GLOBAL",1000)
~ THEN BEGIN 8 // from:
  SAY #27628 /* ~Důstojník Harmonia dohlíží na ulice a lidi kolem něj. Číhá po jakémkoli náznaku problémů. Máš pocit, že zrovna tohohle už jsi potkal, ale s těmi jejich helmami a brněními je těžké rozeznat je mezi sebou.~ */
  IF ~~ THEN REPLY #27650 /* ~"Zdravím..."~ */ GOTO 1
  IF ~~ THEN REPLY #27651 /* ~Nechej důstojníka být.~ */ EXIT
END

IF ~  GlobalGT("MK_Counter","GLOBAL",999)
~ THEN BEGIN 9 // from:
  SAY #27629 /* ~Poznáváš tohohle muže jako člena Harmonia, frakce, o které ti už říkali. Zatím si tě nevšímá.~ */
  IF ~~ THEN REPLY #27631 /* ~"Zdravím..."~ */ GOTO 10
  IF ~~ THEN REPLY #27652 /* ~Odejdi, než si tě všimne.~ */ EXIT
END

IF ~~ THEN BEGIN 10 // from: 9.0
  SAY #27630 /* ~Přes průzor jeho helmy vidíš, že se mu oči rozšířily. "To je on! " Rozbíhá se na tebe a řve: "Chyťte toho muže, živého či mrtvého!"~ */
  IF ~~ THEN REPLY #27653 /* ~Braň se.~ */ DO ~Enemy()
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
SetGlobal("Call_MK","GLOBAL",1)
~ EXIT
END
