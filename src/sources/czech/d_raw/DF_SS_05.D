// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DF_SS_05.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\cs_CZ\dialog.tlk
// dialogF  : (none)

BEGIN ~DF_SS_05~

IF ~  !Global("S_Stone","AR0603",5)
!Global("S_Stone","AR0603",12)
~ THEN BEGIN 0 // from:
  SAY #34216 /* ~Je to nezvyklý červenooranžový kámen. Je bezpečně připevněný k podstavci, na kterém leží.~ */
  IF ~~ THEN REPLY #47445 /* ~Odejdi.~ */ EXIT
END

IF ~  Global("S_Stone","AR0603",5)
~ THEN BEGIN 1 // from:
  SAY #47446 /* ~Tenhle červenooranžový kámen je jeden z těch, k nimž tě poslal úředník. V jeho nitru leží prožitek 'sžírající netrpělivosti.'~ */
  IF ~~ THEN REPLY #47447 /* ~Začni vjem.~ */ GOTO 2
  IF ~~ THEN REPLY #47448 /* ~Odejdi.~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.0
  SAY #47449 /* ~Právě vedeš debatu s Amnasem Příšerněpomalým, strážcem Lvího klíče. Buď jak buď, tvým úkolem je přesvědčit jej, aby jmenovaný artefakt přešel do tvé péče. Celý prožitek je cvičení v čirém soužení... každé jeho jednotlivé slovo je následováno významnou přestávkou; každou svou myšlenku zdůrazňuje ještě několikrát, než ti dovolí promluvit. Vznesl jsi svůj názor... pak čekáš a čekáš a *čekáš*, dokud nevysloví odpověď. Na to vystřelíš svou kousavou řeč... a pak musíš znova počkat na další z Amnasových zdlouhavých, zamotaných, zdánlivě nekonečných protiargumentů. Děláš všechno, abys přemohl nutkání uříznout tomu fiendovi jeho rohatou hlavu a nesebral klíč z ruky škubající se mrtvoly...~ */
  IF ~  Global("Sensation05","AR0603",0)
~ THEN REPLY #47450 /* ~Odtrhni se od prožitku.~ */ DO ~SetGlobal("Sensation05","AR0603",1)
GiveExperience(Protagonist,750)
~ GOTO 5
  IF ~  Global("Sensation05","AR0603",1)
~ THEN REPLY #47452 /* ~Odtrhni se od prožitku, odejdi.~ */ EXIT
END

IF ~  Global("S_Stone","AR0603",12)
~ THEN BEGIN 3 // from:
  SAY #47451 /* ~Tenhle červenooranžový kámen je jeden z těch, ke kterým tě poslal úředník. V jeho nitru leží prožitek 'vylekané radosti.'~ */
  IF ~~ THEN REPLY #47453 /* ~Začni vjem.~ */ GOTO 4
  IF ~~ THEN REPLY #47454 /* ~Odejdi.~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 3.0
  SAY #47455 /* ~Zakláníš hlavu, aby sis mohl lépe prohlédnout složitý vynález, připoutaný na tvých zádech... soustava čtyř jakoby netopýřích křídel z kůže napnuté do proutěných rámů. Ze srázu, na němž sedíš, vypadá Dilgyarova plovoucí pevnost jako malá skvrnka ztracená na šedomodrém nebi, celé míle okolo není nic než vzduch. "Takhle ve vzdušné sféře cestují *všichni*," řekli ti, "je to snadné." Usmál ses, trošku couvnul a se svíravým pocitem kolem žaludku ses rozběhl ze srázu dolů, vstříc chladným poryvům větru. Jakmile se vzduch opřel do křídel, celé tvé tělo se vylekaně roztřáslo a ty se vznášíš nad prázdnotou k obydlí Prince živlů...~ */
  IF ~  Global("Sensation12","AR0603",0)
~ THEN REPLY #47456 /* ~Odtrhni se od prožitku.~ */ DO ~SetGlobal("Sensation12","AR0603",1)
GiveExperience(Protagonist,750)
~ GOTO 5
  IF ~  Global("Sensation12","AR0603",1)
~ THEN REPLY #47457 /* ~Odtrhni se od prožitku, odejdi.~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 2.0 4.0
  SAY #47458 /* ~Zdá se, že zážitek probudil v tvé mysli nejasnou vzpomínku... cítíš se, jako bys užitím kamene vjemů něco získal.~ */
  IF ~~ THEN REPLY #47459 /* ~Odejdi.~ */ EXIT
END
