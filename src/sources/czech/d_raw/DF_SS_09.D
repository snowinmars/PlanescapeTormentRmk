// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DF_SS_09.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\cs_CZ\dialog.tlk
// dialogF  : (none)

BEGIN ~DF_SS_09~

IF ~  !Global("S_Stone","AR0603",16)
!Global("S_Stone","AR0603",19)
~ THEN BEGIN 0 // from:
  SAY #34220 /* ~Je to nezvyklý fialový kámen. Je bezpečně připevněný k podstavci, na kterém leží.~ */
  IF ~~ THEN REPLY #47529 /* ~Odejdi.~ */ EXIT
END

IF ~  Global("S_Stone","AR0603",19)
~ THEN BEGIN 1 // from:
  SAY #47530 /* ~Tenhle fialový kámen je jeden z těch, ke kterým tě poslal úředník. V jeho nitru leží prožitek 'nesmírně důležitého tajemství.'~ */
  IF ~~ THEN REPLY #47531 /* ~Začni vjem.~ */ GOTO 2
  IF ~~ THEN REPLY #47532 /* ~Odejdi.~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.0
  SAY #47533 /* ~Šest služebníků Císařství spěchá před tebou a rozráží dokořán pozlacené dveře Dračího paláce.

"Ať žije Císařovna!" křičí jako jeden muž. "Tisíc let! Ať žije Císařovna! Tisíc let!" ~ */
  IF ~~ THEN REPLY #47534 /* ~Pokračuj v prožitku.~ */ GOTO 3
  IF ~~ THEN REPLY #47535 /* ~Přeruš vjem a odejdi.~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 2.0
  SAY #47536 /* ~Překračuješ práh a tucty věrných válečníků, králů ve svých zemích, padají na kolena a v hluboké úctě se dotýkají čelem podlahy, zatímco kolem nich procházíš k obrovskému císařskému trůnu.~ */
  IF ~~ THEN REPLY #47537 /* ~Pokračuj v prožitku.~ */ GOTO 4
  IF ~~ THEN REPLY #47538 /* ~Přeruš vjem a odejdi.~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 3.0
  SAY #47539 /* ~Jak se otáčíš tváří ke svým služebníkům a usedáš na trůn Císaře, dovolíš, aby ti po pečlivě nalíčené tváři přelétl malý, spokojený úsměv. Tvá mysl se zaobírá jednou jedinou věcí:~ */
  IF ~~ THEN REPLY #47540 /* ~Pokračuj v prožitku.~ */ GOTO 5
  IF ~~ THEN REPLY #47541 /* ~Přeruš vjem a odejdi.~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 4.0
  SAY #47542 /* ~...je to tělo mladé Císařovny, Wu Tsun Sha, ležící rozlámané na dně Studny osamění a ty - Bai Hwa, dcera koňského handlíře - jsi připravena zamíchat kartami Císařství a připravit o moc prohnilou dynastii Wu.~ */
  IF ~  Global("Sensation19","AR0603",0)
~ THEN REPLY #47543 /* ~Odtrhni se od prožitku.~ */ DO ~SetGlobal("Sensation19","AR0603",1)
GiveExperience(Protagonist,1500)
~ GOTO 10
  IF ~  Global("Sensation19","AR0603",1)
~ THEN REPLY #47544 /* ~Odtrhni se od prožitku, odejdi.~ */ EXIT
END

IF ~  Global("S_Stone","AR0603",16)
~ THEN BEGIN 6 // from:
  SAY #47545 /* ~Tenhle fialový kámen je jeden z těch, ke kterým tě poslal úředník. V jeho nitru leží prožitek 'zděšení a narůstající touhy po pomstě.'~ */
  IF ~~ THEN REPLY #47546 /* ~Začni vjem.~ */ GOTO 7
  IF ~~ THEN REPLY #47547 /* ~Odejdi.~ */ EXIT
END

IF ~~ THEN BEGIN 7 // from: 6.0
  SAY #47548 /* ~Nacházíš se někde v Nižších Sférách, po zemi z mědi se plazí mlha a nebe má barvu mosazi. Zde jsou těla hříšníků - zajatců tohoto příšerného místa - drcena mezi válci s železnými a bronzovými hroty, dokud z jejich kostí není jen jemný, šedý prach.~ */
  IF ~~ THEN REPLY #47549 /* ~Pokračuj v prožitku.~ */ GOTO 8
  IF ~~ THEN REPLY #47550 /* ~Přeruš vjem a odejdi.~ */ EXIT
END

IF ~~ THEN BEGIN 8 // from: 7.0
  SAY #47551 /* ~Šilháš po obzoru, prach z kostí s sebou přináší závany hniloby a větrem se nese nářek mučených. Kam až oko dohlédne, je jen pustá kovová pláň. A prach je všude, ve všem... štípe tě v očích, jemný povlak pokrývá i vnitřek tvých úst. Pliveš, snažíš se čistit ústa prstem, ale je to zbytečné: ten hnus ti je zcela vyplnil.~ */
  IF ~~ THEN REPLY #47552 /* ~Pokračuj v prožitku.~ */ GOTO 9
  IF ~~ THEN REPLY #47553 /* ~Přeruš vjem a odejdi.~ */ EXIT
END

IF ~~ THEN BEGIN 9 // from: 8.0
  SAY #47554 /* ~Shlížíš dolů na 'klíč' ve své ruce... drobnou platinovou kouli... a vybavuješ si tvář muže, který ti svatosvatě přísahal, že magický portál, jímž jsi právě prošel - nyní samozřejmě uzavřený - vede na zelené pláně Bytopie. U všech Mocných a jejich sluhů, za tohle někdo krutě zaplatí.~ */
  IF ~  Global("Sensation16","AR0603",0)
~ THEN REPLY #47555 /* ~Odtrhni se od prožitku.~ */ DO ~SetGlobal("Sensation16","AR0603",1)
GiveExperience(Protagonist,1500)
~ GOTO 10
  IF ~  Global("Sensation16","AR0603",1)
~ THEN REPLY #47556 /* ~Odtrhni se od prožitku, odejdi.~ */ EXIT
END

IF ~~ THEN BEGIN 10 // from: 5.0 9.0
  SAY #47557 /* ~Zdá se, že zážitek probudil v tvé mysli nejasnou vzpomínku... cítíš se, jako bys užitím kamene vjemů něco získal.~ */
  IF ~~ THEN REPLY #47558 /* ~Odejdi.~ */ EXIT
END
