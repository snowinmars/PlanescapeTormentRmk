// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250303)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DMATTER.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\ru_RU\dialog.tlk
// dialogF  : (none)

BEGIN ~DMATTER~

IF ~  True()
~ THEN BEGIN 0 // from:
  SAY #2893 /* ~Этот гигант носит такие же гигантские, богато украшенные красные доспехи. Когда ты подходишь к нему, он рассматривает тебя, внимательно, но без страха.~ */
  IF ~~ THEN REPLY #2894 /* ~Из его шлема эхом раздается зычный бас: «Приветствую, гражданин. Я Само-Собой... телохранитель Усердной, Четвертого судьи района. Тебе придется извинить меня, но мой долг — быть рядом с ней. Прощай».~ */ EXIT
END
