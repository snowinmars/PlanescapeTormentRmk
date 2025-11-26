// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : D300MER3.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\cs_CZ\dialog.tlk
// dialogF  : (none)

BEGIN ~D300MER3~

IF ~  NumTimesTalkedTo(0)
~ THEN BEGIN 0 // from:
  SAY #17155 /* ~Ošuměle vyhlížející chlápek si rychle všiml jak ho okukuješ. "Heeéj, bouchači, pocem! Poď šmírnout co tu mám!" Mrknul a pokynul ti.~ */
  IF ~~ THEN REPLY #17158 /* ~"Co mi můžeš nabídnout?"~ */ DO ~StartStore("MerchM",Protagonist)
~ EXIT
  IF ~~ THEN REPLY #17159 /* ~"Ještě jsem se chtěl na něco zeptat..."~ */ GOTO 2
  IF ~~ THEN REPLY #17160 /* ~"Jenom procházím. Sbohem."~ */ GOTO 6
END

IF ~  NumTimesTalkedToGT(0)
~ THEN BEGIN 1 // from:
  SAY #17156 /* ~Mužovy oči připomínají korálky a lesknou se jako černé drahokamy od chvíle, co tě zahlédl. "Tak ses vrátil? Určitě chceš další, nojo. Tož se na to poď mrknout."~ */
  IF ~~ THEN REPLY #17192 /* ~"Co mi můžeš nabídnout?"~ */ DO ~StartStore("MerchM",Protagonist)
~ EXIT
  IF ~~ THEN REPLY #17203 /* ~"Ještě jsem se chtěl na něco zeptat..."~ */ GOTO 2
  IF ~~ THEN REPLY #17204 /* ~"Jenom procházím. Nazdar."~ */ GOTO 6
END

IF ~~ THEN BEGIN 2 // from: 0.1 1.1
  SAY #17157 /* ~Muž tě přeruší, aniž by tě nechal dokončit větu. "Hele, brácho, moje krámy sou prakticky zadara. Ceny - pche - sou tak směšný, že jim ani nebudeš věřit. Smíchy ti rupne palice. Ale seš fakt mozkovna, žes trefil ke mně, si piš. Já tě, vole, nevoderu jako tamti sráči, na to vem jed." Pokynul směrem k hloučku ostatních obchodníků.~ */
  IF ~~ THEN REPLY #17208 /* ~"Fajn, tak co mi můžeš nabídnout?"~ */ DO ~StartStore("MerchM",Protagonist)
~ EXIT
  IF ~~ THEN REPLY #17209 /* ~"Ve skutečnosti mě ještě zajímá..."~ */ GOTO 3
  IF ~~ THEN REPLY #17211 /* ~"Mizím. Sbohem."~ */ GOTO 7
END

IF ~~ THEN BEGIN 3 // from: 2.1
  SAY #17168 /* ~Pokýval hlavou, ale je nad slunce jasné, že není na příjmu. "Sím ano pane, todlecto, tomu řikam sakra hergot slušný zboží! Nenabízím žadnej šunt, jen se pěkně koukněte! A co ceny? Těm nebudete věřit! Supr slevy, samá láce, dyť to je skoro *krádež*, žádnej kšeft!"~ */
  IF ~~ THEN REPLY #17212 /* ~"Prima, tak copak tu máme?"~ */ DO ~StartStore("MerchM",Protagonist)
~ EXIT
  IF ~~ THEN REPLY #17214 /* ~"Poslouchej mě: CHCI - SE - NA - NĚCO - ZEPTAT."~ */ GOTO 4
  IF ~~ THEN REPLY #17219 /* ~Otoč se a odejdi.~ */ GOTO 5
END

IF ~~ THEN BEGIN 4 // from: 3.1
  SAY #17169 /* ~"Si piš že jo! Jakože Ow dělá pěkně pitomé kšefty nebo že Ow má žůžo zboží? Heleď, frajere, teďko ti něco povim. Nemusiš se starat, seženu všecko! Tobě stačí vědět, že na skladu mám od všeckýko trošku. Teda až na Lim-Limský prevíty... ale kdo by do řiti asi tak ňáký chtěl, he? He! Co? Ha ha ha!"~ */
  IF ~~ THEN REPLY #17224 /* ~"Dobře, dobře... tak co mi můžeš nabídnout?"~ */ DO ~StartStore("MerchM",Protagonist)
~ EXIT
  IF ~~ THEN REPLY #17225 /* ~Otoč se na podpatku a odejdi.~ */ GOTO 5
END

IF ~~ THEN BEGIN 5 // from: 3.2 4.1 7.1
  SAY #17175 /* ~Zakřičel ke tvým zádům: "Héj, vydrž, machře, kam to pálíš? Vážně se nechceš juknout na moje čupr-skvělé zbožíčko? Pocem! Nevíš brácho od čeho zdrháš, na to vem jed!"~ */
  IF ~~ THEN REPLY #17226 /* ~"Výborně. Tak copak tu máte?"~ */ DO ~StartStore("MerchM",Protagonist)
~ EXIT
  IF ~~ THEN REPLY #17227 /* ~Pokračuj v chůzi.~ */ EXIT
END

IF ~~ THEN BEGIN 6 // from: 0.2 1.2
  SAY #17473 /* ~Muž tě přeruší, aniž by tě nechal dokončit větu. "Hele, brácho, moje krámy jsou prakticky zadara. Ceny - pche - jsou tak směšný, že jim ani nebudeš věřit. Smíchy ti rupne palice. Ale seš fakt mozkovna, žes trefil ke mně, si piš. Já tě, vole, nevoderu jako tamti sráči, na to vem jed." Pokynul směrem k hloučku ostatních obchodníků.~ */
  IF ~~ THEN REPLY #17475 /* ~"Tak dobře. Co mi můžeš nabídnout?"~ */ DO ~StartStore("MerchM",Protagonist)
~ EXIT
  IF ~~ THEN REPLY #17476 /* ~"Odcházím. Sbohem."~ */ GOTO 7
END

IF ~~ THEN BEGIN 7 // from: 2.2 6.1
  SAY #17474 /* ~Pokýval hlavou, ale je nad slunce jasné, že není na příjmu. "Sím ano pane, todlecto tomu řikam sakra hergot slušný zboží! Nenabízím žadnej šunt, jen se pěkně kouknite! A co ceny? Těm nebudete věřit! Supr slevy a láce, dyť to je skoro *krádež*, žádnej kšeft!"~ */
  IF ~~ THEN REPLY #17477 /* ~"Tak dobře. Co mi můžeš nabídnout?"~ */ DO ~StartStore("MerchM",Protagonist)
~ EXIT
  IF ~~ THEN REPLY #17478 /* ~Otočit se a jít pryč.~ */ GOTO 5
END
