// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : UPORTAL.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\cs_CZ\dialog.tlk
// dialogF  : (none)

BEGIN ~UPORTAL~

IF ~  !PartyHasItem("Bhanky")
~ THEN BEGIN 0 // from:
  SAY #48030 /* ~Rozbalil jsi třpytící se kus kovu. Vypadá zvláštně, je takový klidný... máš pocit, že je nečinný, dokud se k němu nepřiblíží portálový klíč.~ */
  IF ~~ THEN REPLY #48031 /* ~Sbal ho a odlož.~ */ EXIT
END

IF ~  PartyHasItem("Bhanky")
~ THEN BEGIN 1 // from:
  SAY #48407 /* ~Rozbalil jsi třpytící se kov, který okamžitě ožil. Začíná sám vytvářet kovový kruh, vznášející se ve vzduchu. Máš u sebe něco, co portál zaktivovalo!

Máš pocit, že by ses měl ujistit, jestli máš vše potřebné - možná se do Sigilu nevrátíš *hodně* dlouho.~ */
  IF ~~ THEN REPLY #48408 /* ~Projdi portálem.~ */ DO ~DestroyPartyItem("Uportal",TRUE)
DestroyPartyItem("Bhanky",TRUE)
TeleportParty("AR0610",[1207.3088],10)
~ EXIT
  IF ~~ THEN REPLY #48409 /* ~Sbal ho a odlož.~ */ EXIT
END
