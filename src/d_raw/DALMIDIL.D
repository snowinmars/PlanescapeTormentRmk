// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250303)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DALMIDIL.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\ru_RU\dialog.tlk
// dialogF  : (none)

BEGIN ~DALMIDIL~

IF ~~ THEN BEGIN 0 // from:
  SAY #44695 /* ~«Его слова были словами врага народа. Даже если это не так, мы прижгли его невежество клеймом смерти. Оставим его здесь, чтоб о нем позаботились сборщики. В этом путешествии мы собрали достаточно сведений о гитцерайских собаках. Они потеряют еще одну крепость еще до того, как закончится седьмой день. Стены Вристигора падут».~ */
  IF ~~ THEN DO ~SetGlobal("Vristigor","GLOBAL",1)
~ JOURNAL #39476 /* ~Я подслушал, что гитьянки планируют напасть на еще одну гитцерайскую крепость, Вристигор.~ */ EXTERN ~DYI'MINN~ 45
END
