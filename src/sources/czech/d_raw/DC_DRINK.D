// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DC_DRINK.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\cs_CZ\dialog.tlk
// dialogF  : (none)

BEGIN ~DC_DRINK~

IF ~  NumTimesTalkedTo(0)
RandomNum(4,1)
~ THEN BEGIN 0 // from:
  SAY #67935 /* ~Osoba se otočila, oči má rozšířené. Rozčileně prská, protože jsi ji vyrušil. Když postřehla tvé nebezpečné vzezření, její výraz se poněkud zklidnil, teď se jenom trochu mračí. Pokývala ti na pozdrav a otočila se k tobě zády.~ */
  IF ~~ THEN REPLY #67936 /* ~Odejdi.~ */ EXIT
END

IF ~  NumTimesTalkedTo(0)
RandomNum(4,2)
~ THEN BEGIN 1 // from:
  SAY #67937 /* ~Osoba se otočila a přejela tě pohledem, který hned vrátila k svému drinku. "Nemůžu ti nijak pomoct, nemůžu ti odpovědět na žádné otázky, takže mě nechej na pokoji."~ */
  IF ~~ THEN REPLY #67938 /* ~Odejdi.~ */ EXIT
END

IF ~  NumTimesTalkedTo(0)
RandomNum(4,3)
~ THEN BEGIN 2 // from:
  SAY #67939 /* ~Otočil se a naštvaně se na tebe mračí. "Co? Nevidíš, že mám práci? Kdybych s tebou chtěl mluvit, začal bych konverzaci sám." Otočil se k tobě zády, vztekle vrtí hlavou.~ */
  IF ~~ THEN REPLY #67940 /* ~Odejdi.~ */ EXIT
END

IF ~  NumTimesTalkedTo(0)
~ THEN BEGIN 3 // from:
  SAY #67941 /* ~Osoba se otočila a nervózně se na tebe podívala. "Nemůžu ti zabránit, abys tady pil, ale mluvit s tebou nebudu." Otočila se a pije dál.~ */
  IF ~~ THEN REPLY #67942 /* ~Odejdi.~ */ EXIT
END

IF ~  NumTimesTalkedToGT(0)
~ THEN BEGIN 4 // from:
  SAY #67943 /* ~Už ti nemají co říct.~ */
  IF ~~ THEN REPLY #67944 /* ~Odejdi.~ */ EXIT
END
