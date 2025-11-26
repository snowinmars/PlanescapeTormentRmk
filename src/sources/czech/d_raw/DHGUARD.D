// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DHGUARD.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\cs_CZ\dialog.tlk
// dialogF  : (none)

BEGIN ~DHGUARD~

IF ~  NumTimesTalkedTo(0)
GlobalLT("MK_Counter","GLOBAL",1000)
~ THEN BEGIN 0 // from:
  SAY #27728 /* ~Tato velká postava v červeném brnění stojí na místě a zřejmě střeží schody vedle něj, které vedou dolů. Nejasně si vybavuješ, že jeho ozdobné brnění jej označuje jako strážníka Harmonických, kteří zajišťují dodržování zákonů města~ */
  IF ~~ THEN REPLY #27898 /* ~"Zdravím..."~ */ GOTO 1
  IF ~~ THEN REPLY #27900 /* ~Nechej ho být.~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0 8.0
  SAY #27923 /* ~Muž bezděčně pokynul zpět k ulici. "Pokračuj."~ */
  IF ~~ THEN REPLY #27924 /* ~"Co tady děláš?"~ */ GOTO 11
  IF ~~ THEN REPLY #27925 /* ~"Mám ještě další otázky..."~ */ GOTO 2
  IF ~~ THEN REPLY #27926 /* ~Odejdi.~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.1 11.1 12.1 13.1 14.0
  SAY #27927 /* ~"Tady se nevyptávej. Pokračuj."~ */
  IF ~~ THEN REPLY #27928 /* ~"Co tady děláš?"~ */ GOTO 11
  IF ~~ THEN REPLY #27929 /* ~"Potřebuji pouze několik málo odpovědí..."~ */ GOTO 3
  IF ~~ THEN REPLY #27930 /* ~"Potřebuji tvou pomoc..."~ */ GOTO 4
  IF ~~ THEN REPLY #27931 /* ~"A co když se mi chce zůstat stát zrovna tady?"~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Patrolman_1","GLOBALLaw",-1)
~ GOTO 7
  IF ~~ THEN REPLY #27932 /* ~Odejdi.~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 2.1
  SAY #27933 /* ~Zavrtěl hlavou. "Tak si promluv s občanem. Mám tu práci... a nechtěl bych ji zanedbávat tím, že budu mluvit s tebou nebo s někým jiným. Teď pokračuj."~ */
  IF ~~ THEN REPLY #27934 /* ~"Můžeš mi alespoň říct co tady děláš?"~ */ GOTO 11
  IF ~~ THEN REPLY #27935 /* ~"Ale já potřebuji tvou pomoc..."~ */ DO ~SetAnimState(Myself,ANIM_MIMESTANDTOSTANCE)
~ GOTO 4
  IF ~~ THEN REPLY #27936 /* ~"A co když se mi chce zůstat stát zrovna tady?"~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Patrolman_1","GLOBALLaw",-1)
~ GOTO 7
  IF ~~ THEN REPLY #27937 /* ~Odejdi.~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 2.2 3.1
  SAY #27938 /* ~Potěžkal svou zbraň.  "Potřebuješ pomoc? Byl spáchán zločin?"~ */
  IF ~  CheckStatGT(Protagonist,14,CHR)
~ THEN REPLY #27939 /* ~"Teda... ne. Pouze se chci na něco zeptat."~ */ GOTO 5
  IF ~  CheckStatLT(Protagonist,15,CHR)
~ THEN REPLY #27940 /* ~"Teda... ne. Pouze se chci na něco zeptat."~ */ GOTO 6
  IF ~~ THEN REPLY #27941 /* ~"Ne, nevadí. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 4.0
  SAY #27942 /* ~Pozorně se podíval. "Chápu, že máš nějaké otázky a byl bych schopen pomoci, ale někdy jindy a na jiném místě. Ale-" Na chvíli přerušil, aby se podezřívavě kouknul dolů po schodišti. "Ale není splněno ani jedno ani druhé, takže... pouze pokračuj. Hned."~ */
  IF ~~ THEN REPLY #27943 /* ~"Můžeš mi alespoň říct co tady děláš?"~ */ GOTO 11
  IF ~~ THEN REPLY #27944 /* ~"A co když se mi chce zůstat stát zrovna tady?"~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Patrolman_1","GLOBALLaw",-1)
~ GOTO 7
  IF ~~ THEN REPLY #27945 /* ~Odejdi.~ */ EXIT
END

IF ~~ THEN BEGIN 6 // from: 4.1
  SAY #27946 /* ~"Podívej, trumbero, mám-" Na chvíli se přerušil, aby podezřívavě kouknul dolů po schodišti, pak svou pozornost obrátil na tebe. "Mám jisté úkoly, které mi byly přiděleny a nejsem schopen je plnit, pokud mluvím s nějakým zmateným blbem, který hledá to a to nebo chce nasměrovat nevím kde. Pokračuj."~ */
  IF ~~ THEN REPLY #27947 /* ~"Můžeš mi alespoň říct co tady děláš?"~ */ GOTO 11
  IF ~~ THEN REPLY #27948 /* ~"A co když se mi chce zůstat stát zrovna tady?"~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Patrolman_1","GLOBALLaw",-1)
~ GOTO 7
  IF ~~ THEN REPLY #27949 /* ~Odejdi.~ */ EXIT
END

IF ~~ THEN BEGIN 7 // from: 2.3 3.2 5.1 6.1
  SAY #27950 /* ~Pokrčil rameny, jeho brnění při pohybu zařinčelo. "Můžeš tady klidně stát, ale nepokoušej zákon. Doporučoval bych ti, abys odešel, dokud tady nejsou nějaké... potíže. Sbohem."~ */
  IF ~~ THEN REPLY #27951 /* ~"Můžeš mi alespoň říct co tady děláš?"~ */ GOTO 11
  IF ~~ THEN REPLY #27952 /* ~Odejdi.~ */ EXIT
END

IF ~  NumTimesTalkedToGT(0)
GlobalLT("MK_Counter","GLOBAL",1000)
~ THEN BEGIN 8 // from:
  SAY #27953 /* ~Tento strážník Harmonických vypadá, že střeží schodiště, které vede vedle něj dolů. Myslíš si, že ses možná někdy už s tímto konkrétním člověkem setkal, ale s velkými helmami a stejným brněním Harmonických je obtížné rozlišit jednoho od druhého.~ */
  IF ~~ THEN REPLY #27954 /* ~"Zdravím..."~ */ GOTO 1
  IF ~~ THEN REPLY #27955 /* ~Odejdi v klidu od strážníka.~ */ EXIT
END

IF ~  GlobalGT("MK_Counter","GLOBAL",999)
~ THEN BEGIN 9 // from:
  SAY #27956 /* ~Rozpoznal jsi, že tento člověk je členem Harmonických, společenství, které po tobě nedávno šlo. Zřejmě si tě ještě nevšiml.~ */
  IF ~~ THEN REPLY #27957 /* ~"Zdravím..."~ */ GOTO 10
  IF ~~ THEN REPLY #27958 /* ~Odejdi než si tě všimne.~ */ EXIT
END

IF ~~ THEN BEGIN 10 // from: 9.0
  SAY #27959 /* ~Vidíš jeho rozšířené oči skrze štěrbinu v jeho helmě. "To je on!" Připravuje se na tebe zaútočit a přitom křičí: "Dostaňte toho muže, živého nebo mrtvého!"~ */
  IF ~~ THEN REPLY #27960 /* ~Braň se.~ */ DO ~Enemy()
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
SetGlobal("Call_MK","GLOBAL",1)
~ EXIT
END

IF ~~ THEN BEGIN 11 // from: 1.0 2.0 3.0 5.0 6.0 7.0
  SAY #27961 /* ~Ukázal směrem ke schodišti vedle něj, které vypadá, že sestupuje přímo pod město. "Střežím toto schodiště."~ */
  IF ~~ THEN REPLY #27962 /* ~"Proč? Kam vede?"~ */ GOTO 12
  IF ~~ THEN REPLY #27963 /* ~"Mám ještě nějaké další otázky..."~ */ GOTO 2
  IF ~~ THEN REPLY #27964 /* ~"To je všechno co jsem chtěl vědět. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 12 // from: 11.0
  SAY #27965 /* ~"Do Podzemí Sigilu." Když viděl tvůj výraz, pokračoval. "Podsigilí, možná jsi o tom slyšel pod tímto názvem."~ */
  IF ~~ THEN REPLY #27966 /* ~"Jsou nějaké důvody, proč nechcete, aby lidé vstoupili na toto místo?"~ */ GOTO 13
  IF ~~ THEN REPLY #27967 /* ~"Mám ještě nějaké další otázky..."~ */ GOTO 2
  IF ~~ THEN REPLY #27968 /* ~"To je všechno co jsem chtěl vědět. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 13 // from: 12.0
  SAY #27969 /* ~Tiše se zachichotal, pancíře jeho brnění při pohybu zarachotily. "Číhám na cokoliv co vyjde *ven*. Na věci, které nejsou *vlastní* Sigilu."~ */
  IF ~~ THEN REPLY #27970 /* ~"Jaké druhy věcí jsou tam dole?"~ */ GOTO 14
  IF ~~ THEN REPLY #27971 /* ~"Mám ještě nějaké další otázky..."~ */ GOTO 2
  IF ~~ THEN REPLY #27972 /* ~"To je všechno co jsem chtěl vědět. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 14 // from: 13.0
  SAY #27973 /* ~"Tím se neznepokojuj." Na chvíli se na tebe zvědavě zadíval. "Už ses rozhodl jít tam dolů, že? Tak buď velmi opatrný. Šeptá se, že tam dole žijí ty nejhorší druhy stvůr."~ */
  IF ~~ THEN REPLY #27974 /* ~"Díky. Mám ještě nějaké další otázky..."~ */ GOTO 2
  IF ~~ THEN REPLY #27975 /* ~"Díky za varování. Sbohem."~ */ EXIT
END
