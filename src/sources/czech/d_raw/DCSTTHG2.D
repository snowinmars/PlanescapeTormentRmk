// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DCSTTHG2.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\cs_CZ\dialog.tlk
// dialogF  : (none)

BEGIN ~DCSTTHG2~

IF ~  True()
~ THEN BEGIN 0 // from:
  SAY #9902 /* ~Vidíš muže v brnění, kterému u boku visí meč. Pozorně tě sleduje, jakmile jsi k němu zamířil.~ */
  IF ~~ THEN REPLY #9903 /* ~"Zdravím."~ */ GOTO 1
  IF ~~ THEN REPLY #9904 /* ~Nechej ho být.~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #9905 /* ~Kývl ti na pozdrav, pak rychle přejel pohledem okolí. "Já tebe taky. Co chceš?"~ */
  IF ~~ THEN REPLY #9906 /* ~"Chtěl jsem ti dát pár otázek."~ */ GOTO 2
  IF ~~ THEN REPLY #9907 /* ~"To nic."~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.0
  SAY #9908 /* ~"Jsem v Curstu nový, pochybuju, že bych ti mohl odpovědět. Ale zkusím to."~ */
  IF ~~ THEN REPLY #9909 /* ~"Slyšel jsi o devovi, který by měl být někde ve městě?"~ */ GOTO 3
  IF ~~ THEN REPLY #9910 /* ~"Pokud se můžu zeptat, proč jsi v Curstu?"~ */ GOTO 5
  IF ~~ THEN REPLY #9911 /* ~"To nic."~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 2.0
  SAY #9912 /* ~Dívá se na tebe překvapeně. "Deva. Ne, o tom jsem neslyšel. Proč by tady byl deva? To nedává žádný smysl."~ */
  IF ~~ THEN REPLY #9913 /* ~"Ano... Proč jsi v Curstu?"~ */ GOTO 5
  IF ~~ THEN REPLY #9914 /* ~"Nemám tušení. Budu muset jít."~ */ GOTO 4
END

IF ~~ THEN BEGIN 4 // from: 3.1 5.2 6.1 7.0
  SAY #9915 /* ~"No, hodně štěstí. Sbohem."~ */
  IF ~~ THEN REPLY #9916 /* ~"Tobě taky."~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 2.1 3.0
  SAY #9917 /* ~"Jsem žoldák. Slyšel jsem, že v Curstu se dá sehnat práce, tak jsem se přišel zeptat. Většina města je ale zavřená kvůli moru. Nemůžu se dostat tam, kam chci."~ */
  IF ~~ THEN REPLY #9918 /* ~"Co víš o tom moru?"~ */ GOTO 6
  IF ~~ THEN REPLY #9919 /* ~"Kam se potřebuješ dostat?"~ */ GOTO 7
  IF ~~ THEN REPLY #9920 /* ~"Aha. Musím se už s tebou rozloučit."~ */ GOTO 4
END

IF ~~ THEN BEGIN 6 // from: 5.0
  SAY #9921 /* ~Pokrčil rameny. "Vlastně nic. Slyšel jsem, že to přišlo náhle, ale rychle to zvládli odříznutím nakažených částí města." Povzdechl si. "Zatraceně nevhod. Nemůžu se teď setkat se svými kontakty."~ */
  IF ~~ THEN REPLY #9922 /* ~"Kam se potřebuješ dostat?"~ */ GOTO 7
  IF ~~ THEN REPLY #9923 /* ~"Děkuju ti. Už musím jít."~ */ GOTO 4
END

IF ~~ THEN BEGIN 7 // from: 5.1 6.0
  SAY #9924 /* ~"K Rozčtvrcenému Muži. Scházejí se tam žoldáci, ale já se teď do té části města nemůžu dostat."~ */
  IF ~~ THEN REPLY #9925 /* ~"Aha. Už budu muset jít."~ */ GOTO 4
END
