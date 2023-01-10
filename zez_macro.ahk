;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;; startup
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
#NoEnv
#SingleInstance force
RunWith(32)
runWith(version){	
	if (A_PtrSize=(version=32?4:8))
		Return
	SplitPath,A_AhkPath,,ahkDir
	if (!FileExist(correct := ahkDir "\AutoHotkeyU" version ".exe")){
		MsgBox,0x10,"Error",% "Couldn't find the " version " bit Unicode version of Autohotkey in:`n" correct
		ExitApp
	}
	Run,"%correct%" "%A_ScriptName%",%A_ScriptDir%
	ExitApp
}
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;; gui creation
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
Menu, tray, Icon , icon.ico, 1, 1
Gui, Show, , Zez Macro
gui, destroy
IniRead, gatherKey1, config.ini, gui, gatherChoice1
IniRead, convertKey, config.ini, gui, convertCheck
IniRead, mondoKey, config.ini, gui, mondoCheck
IniRead, wealthKey, config.ini, gui, wealthCheck
IniRead, samovarKey, config.ini, gui, samovarCheck
IniRead, p1Key1, config.ini, gui, p1Choice1
IniRead, p2Key1, config.ini, gui, p2Choice1
IniRead, p3Key1, config.ini, gui, p3Choice1
IniRead, pLKey, config.ini, gui, pLink
IniRead, ladybugKey, config.ini, gui, ladybugCheck
IniRead, rhinoKey, config.ini, gui, rhinoCheck
IniRead, scorpionKey, config.ini, gui, scorpionCheck
IniRead, mantisKey, config.ini, gui, mantisCheck
IniRead, spiderKey, config.ini, gui, spiderCheck
IniRead, wwolfKey, config.ini, gui, wwolfCheck
IniRead, slotKey, config.ini, gui, slot
IniRead, speedKey, config.ini, gui, speed
IniRead, graphicsKey, config.ini, gui, graphics
IniRead, resolutionKey, config.ini, gui, resolution
IniRead, aotKey, config.ini, gui, aotCheck
IniRead, gatherKey2, config.ini, gui, gatherChoice2
IniRead, gatherKey3, config.ini, gui, gatherChoice3
IniRead, p1Key2, config.ini, gui, p1Choice2
IniRead, p2Key2, config.ini, gui, p2Choice2
IniRead, p3Key2, config.ini, gui, p3Choice2
IniRead, p1Key3, config.ini, gui, p1Choice3
IniRead, p2Key3, config.ini, gui, p2Choice3
IniRead, p3Key3, config.ini, gui, p3Choice3
IniRead, pl1Key1, config.ini, gui, pl1Choice1
IniRead, pl1Key2, config.ini, gui, pl1Choice2
IniRead, pl1Key3, config.ini, gui, pl1Choice3
IniRead, pl2Key1, config.ini, gui, pl2Choice1
IniRead, pl2Key2, config.ini, gui, pl2Choice2
IniRead, pl2Key3, config.ini, gui, pl2Choice3
IniRead, pl3Key1, config.ini, gui, pl3Choice1
IniRead, pl3Key2, config.ini, gui, pl3Choice2
IniRead, pl3Key3, config.ini, gui, pl3Choice3
IniRead, plantKey, config.ini, gui, plantCheck1
IniRead, planterKey, config.ini, gui, plantChecker1
IniRead, plantKey2, config.ini, gui, plantCheck2
IniRead, planterKey2, config.ini, gui, plantChecker2
IniRead, plantKey3, config.ini, gui, plantCheck3
IniRead, planterKey3, config.ini, gui, plantChecker3
IniRead, feastKey, config.ini, gui, FeastCheck
IniRead, candlesKey, config.ini, gui, candlesCheck
IniRead, antKey, config.ini, gui, antCheck
IniRead, wreathKey, config.ini, gui, wreathCheck
IniRead, polarKey, config.ini, gui, polarCheck
IniRead, themeKey, config.ini, gui, themeSelect
IniRead, stockingsKey, config.ini, gui, stockingsCheck
IniRead, gpathKey, config.ini, gui, gPath
IniRead, hotbar2Key, config.ini, gui, hotbar2
IniRead, hotbar3Key, config.ini, gui, hotbar3
IniRead, hotbar4Key, config.ini, gui, hotbar4
IniRead, hotbar5Key, config.ini, gui, hotbar5
IniRead, hotbar6Key, config.ini, gui, hotbar6
IniRead, hotbar7Key, config.ini, gui, hotbar7
IniRead, atHiveKey2, config.ini, gui, atHive2
IniRead, atHiveKey3, config.ini, gui, atHive3
IniRead, atHiveKey4, config.ini, gui, atHive4
IniRead, atHiveKey5, config.ini, gui, atHive5
IniRead, atHiveKey6, config.ini, gui, atHive6
IniRead, atHiveKey7, config.ini, gui, atHive7
IniRead, satKey, config.ini, gui, sat
IniRead, gathTimeKey, config.ini, gui, gathTime
IniRead, gatherSwitch, config.ini, other, gatherSwitch
IniRead, p1Switch, config.ini, other, p1Switch
IniRead, p2Switch, config.ini, other, p2Switch
IniRead, p3Switch, config.ini, other, p3Switch
IniRead, xKey, config.ini, gui, x
IniRead, yKey, config.ini, gui, y
IniRead, rboostKey, config.ini, gui, rboostCheck
IniRead, bboostKey, config.ini, gui, bboostCheck
IniRead, mboostKey, config.ini, gui, mboostCheck
IniRead, variationKey, config.ini, gui, variation
IniRead, serverAge, config.ini, gui, serverAge
IniRead, nPreset, config.ini, gui, nPreset
IniRead, lidKey, config.ini, gui, lidCheck
IniRead, vicKey, config.ini, gui, vicCheck
IniRead, size, config.ini, gui, size
IniRead, shiftChoice, config.ini, gui, shiftChoice
IniRead, questOR, config.ini, gui, questOR
IniRead, cdelay, config.ini, gui, cdelay
IniRead, buckoKey, config.ini, gui, buckoCheck
IniRead, gl1Key1, config.ini, gui, gl1Choice1
IniRead, gl1Key2, config.ini, gui, gl1Choice2
IniRead, gl1Key3, config.ini, gui, gl1Choice3
IniRead, gl2Key1, config.ini, gui, gl2Choice1
IniRead, gl2Key2, config.ini, gui, gl2Choice2
IniRead, gl2Key3, config.ini, gui, gl2Choice3
IniRead, gl3Key1, config.ini, gui, gl3Choice1
IniRead, gl3Key2, config.ini, gui, gl3Choice2
IniRead, gl3Key3, config.ini, gui, gl3Choice3
IniRead, antcKey, config.ini, gui, antcCheck
IniRead, rileyKey, config.ini, gui, rileyCheck
IniRead, bgKey, config.ini, gui, bgSelect
IniRead, cocoKey, config.ini, gui, cocoCheck
IniRead, honeyKey, config.ini, gui, honeyCheck
IniRead, treatKey, config.ini, gui, treatCheck
IniRead, redKey, config.ini, gui, redCheck
IniRead, blueKey, config.ini, gui, blueCheck
IniRead, microCKey, config.ini, gui, microC
IniRead, whirliKey, config.ini, gui, whirli
if (not yKey || yKey = "error" || yKey < 0)
    yKey := 150
if (not xKey || xKey = "error" || xKey < 0)
    xKey := 150
if (cocoKey)
    cocoKey := "checked"
if (honeyKey)
    honeyKey := "checked"
if (treatKey)
    treatKey := "checked"
if (blueKey)
    blueKey := "checked"
if (redKey)
    redKey := "checked"
if (antcKey)
    antcKey := "checked"
if (questOR) 
    questOR := "checked"
if (shiftChoice) 
    shiftChoice := "checked"
if (buckoKey)
    buckoKey := "checked"
if (rileyKey)
    rileyKey := "checked"
if (mondoKey) 
    mondoKey := "checked"
if (lidKey) 
    lidKey := "checked"
if (rboostKey) 
    rboostKey := "checked"
if (bboostKey) 
    bboostKey := "checked"
if (mboostKey) 
    mboostKey := "checked"
if (wealthKey) 
    wealthKey := "checked"
if (samovarKey) 
    samovarKey := "checked"
if (ladybugKey) 
    ladybugKey := "checked"
if (rhinoKey) 
    rhinoKey := "checked"
if (scorpionKey) 
    scorpionKey := "checked"
if (mantisKey) 
    mantisKey := "checked"
if (spiderKey) 
    spiderKey := "checked"
if (wwolfKey) 
    wwolfKey := "checked"
if (aotKey) 
    aotKey := "checked"
if (antKey) 
    antKey := "checked"
if (feastKey) 
    feastKey := "checked"
if (candlesKey) 
    candlesKey := "checked"
if (wreathKey) 
    wreathKey := "checked"
if (polarKey) 
    polarKey := "checked"
if (stockingsKey) 
    stockingsKey := "checked"
if (vicKey) 
    vicKey := "checked"
if (aotKey)
    Gui, +AlwaysOnTop
totalTime := 0
totalGath := 0
totalCon := 0
totalKills := 0
totalQuests := 0
totalDcs := 0
totalPlants := 0
machineStart := toUnix_()
SkinForm(Apply, A_ScriptDir . "\styles\USkin.dll", A_ScriptDir . "\styles\" . themeKey . ".msstyles")
OnExit, GetOut
Gui, Add, Text, x440 y265 w190 h20 +BackgroundTrans, Vers. 0.9.02
Gui, Font, Underline cBlue
Gui, Add, Text, x442 y248 gLink1, Donate
Gui, Font
Gui, Add, Text, x242 y252 w190 h20 +BackgroundTrans, Nectar Presets
Gui, Add, DropDownList, x320 y250 w90 h100 vnectarPreset gnectarS_, %nPreset%||None|5 (Blue)|4 (Blue)|4 (Red)
Gui, Add, Button, x12 y244 w90 h30 gStart_, Start (F1)
Gui, Add, Button, x110 y244 w90 h30 grButton_, Stop (F3)
Gui, Add, Tab, x1 y-1 w550 h240 , Main|Planters|Quests|Bug Run|Boosts|Calibration|Stats|Contributors
if (bgKey = "anime_girls"){
    Gui, Add, Picture,x0 y20 +BackgroundTrans, styles\anime_girls\background1.png
    Gui, Add, Picture,x410 y80 +BackgroundTrans, styles\anime_girls\layer1.png
}
if (bgKey = "racing"){
    Gui, Add, Picture,x0 y20 +BackgroundTrans, styles\racing\background1.png
}
if (bgKey = "football"){
    Gui, Add, Picture,x0 y20 +BackgroundTrans, styles\football\background1.png
}
if (bgKey = "soccer"){
    Gui, Add, Picture,x0 y20 +BackgroundTrans, styles\soccer\background1.png
}
if (bgKey = "hockey"){
    Gui, Add, Picture,x0 y20 +BackgroundTrans, styles\hockey\background1.png
}
if (bgKey = "basketball"){
    Gui, Add, Picture,x0 y20 +BackgroundTrans, styles\basketball\background1.png
}
if (bgKey = "baseball"){
    Gui, Add, Picture,x0 y20 +BackgroundTrans, styles\baseball\background1.png
}
if (bgKey = "skateboarding"){
    Gui, Add, Picture,x0 y20 +BackgroundTrans, styles\skateboarding\background1.png
}
if (bgKey = "anime"){
    Gui, Add, Picture,x0 y20 +BackgroundTrans, styles\anime\background1.png
}
Gui, Add, Text, x5 y32 +Center, Gathering Field(s)
currentField := gatherKey%gatherSwitch%
Gui, Add, Text, x405 y27 +Center vcurrentField, Current Field:`n%currentField%
Gui, Add, DropDownList, x105 y29 w90 h100 vgatherChoice1 gg1Unswitch,%gatherKey1%||None|Planter 1|Planter 2|Planter 3|Bamboo|Blue Flower|Cactus|Clover|Coconut|Dandelion|Mountain Top|Mushroom|Pepper|Pine Tree|Pineapple|Pumpkin|Rose|Spider|Strawberry|Stump|Sunflower
Gui, Add, DropDownList, x205 y29 w90 h100 vgatherChoice2 gg1Unswitch, %gatherKey2%||None|Planter 1|Planter 2|Planter 3|Bamboo|Blue Flower|Cactus|Clover|Coconut|Dandelion|Mountain Top|Mushroom|Pepper|Pine Tree|Pineapple|Pumpkin|Rose|Spider|Strawberry|Stump|Sunflower
Gui, Add, DropDownList, x305 y29 w90 h100 vgatherChoice3 gg1Unswitch, %gatherKey3%||None|Planter 1|Planter 2|Planter 3|Bamboo|Blue Flower|Cactus|Clover|Coconut|Dandelion|Mountain Top|Mushroom|Pepper|Pine Tree|Pineapple|Pumpkin|Rose|Spider|Strawberry|Stump|Sunflower
Gui, Add, DropdownList, x105 y59 w90 h100 vconvertCheck gsaveConfig_, %convertKey%||None|Reset Convert|Rejoin Convert
Gui, Add, Text, x5 y62 +Center, Convert Type
Gui, Add, Text, x205 y62 +Center, Gathering Path
Gui, Add, DropDownList, x305 y59 w50 h100 vgPath gsaveConfig_, %gpathKey%||Lines|Snake|Squares|Diamonds|Circles|Star - by RoadRash#1292|Dont Move
Gui, Add, DropDownList, x355 y59 w40 h100 vsize gsaveConfig_, %size%||XLarge|Large|Medium|Small
Gui, Add, Button, x410 y59 w20 h20 gchangegFieldl, <
Gui, Add, Button, x440 y59 w20 h20 gchangegFieldr, >
Gui, Add, Edit, x105 y89 w90 h20 vpLink gsaveConfig_, %pLKey%
Gui, Add, Text, x5 y92 +Center, Private Link
Gui, Add, Text, x205 y92 +Center, Saturator
Gui, Add, DropDownList, x305 y89 w90 h100 vsat gsaveConfig_, %satKey%||Supreme|Diamond|Golden|Silver|Basic
Gui, Add, Checkbox, x405 y89 w100 vshiftChoice gsaveConfig_ %shiftChoice%, Shiftlock While Gathering
Gui, Add, Checkbox, x115 y120 vmondoCheck gsaveConfig_ %mondoKey%, Mondo
Gui, Add, Checkbox, x15 y120 vwealthCheck gsaveConfig_ %wealthKey%, Clock
;Gui, Add, Checkbox, x115 y120 vsamovarCheck gsaveConfig_ %samovarKey%, Samovar
;Gui, Add, Checkbox, x15 y135 vfeastCheck gsaveConfig_ %feastKey%, Feast
;Gui, Add, Checkbox, x315 y120 vcandlesCheck gsaveConfig_ %candlesKey%, Candles
Gui, Add, Checkbox, x115 y135 vantCheck gsaveConfig_ %antKey%, Ant Pass
;Gui, Add, Checkbox, x215 y135 vwreathCheck gsaveConfig_ %wreathKey%, Wreath
;Gui, Add, Checkbox, x315 y135 vstockingsCheck gsaveConfig_ %stockingsKey%, Stockings
Gui, Add, Checkbox, x215 y120 vbboostCheck gsaveConfig_ %bboostKey%, Blue Boost
Gui, Add, Checkbox, x315 y120 vrboostCheck gsaveConfig_ %rboostKey%, Red Boost
Gui, Add, Checkbox, x15 y135 vmboostCheck gsaveConfig_ %mboostKey%, Mountain Boost
;Gui, Add, Checkbox, x315 y150 vlidCheck gsaveConfig_ %lidKey%, Lid Art
Gui, Add, Checkbox, x15 y150 vcocoCheck gsaveConfig_ %cocoKey%, Coco Disp.
Gui, Add, Checkbox, x215 y135 vhoneyCheck gsaveConfig_ %honeyKey%, Honey Disp.
Gui, Add, Checkbox, x315 y135 vtreatCheck gsaveConfig_ %treatKey%, Treat Disp.
Gui, Add, Checkbox, x115 y150 vredCheck gsaveConfig_ %redKey%, Strawberry Disp.
Gui, Add, Checkbox, x215 y150 vblueCheck gsaveConfig_ %blueKey%, Blueberry Disp.
Gui, Add, Text, x400 y130 w90 h30 +Center vstatus, Status: Idle
Gui, Add, Text, x12 y179, -Requires "Shift Lock" in Settings enabled but NOT in use`n-Place your sprinkler in hotbar 1`n-Pause script with F2
Gui, Add, Text, x200 y220 vsaved, Save as
Gui, Add, Text, x370 y220, Load
Gui, Add, DropDownList, x250 y216 w90 h100 vsaver gsaver, File 1|File 2|File 3
Gui, Add, DropDownList, x400 y216 w90 h100 vloader gloader, File 1|File 2|File 3
Gui, Tab, Planters
if (bgKey = "anime_girls"){
    Gui, Add, Picture,x0 y20 +BackgroundTrans, styles\anime_girls\background2.png
}
if (bgKey = "racing"){
    Gui, Add, Picture,x0 y20 +BackgroundTrans, styles\racing\background1.png
}
if (bgKey = "football"){
    Gui, Add, Picture,x0 y20 +BackgroundTrans, styles\football\background1.png
}
if (bgKey = "soccer"){
    Gui, Add, Picture,x0 y20 +BackgroundTrans, styles\soccer\background1.png
}
if (bgKey = "hockey"){
    Gui, Add, Picture,x0 y20 +BackgroundTrans, styles\hockey\background1.png
}
if (bgKey = "basketball"){
    Gui, Add, Picture,x0 y20 +BackgroundTrans, styles\basketball\background1.png
}
if (bgKey = "baseball"){
    Gui, Add, Picture,x0 y20 +BackgroundTrans, styles\baseball\background1.png
}
if (bgKey = "skateboarding"){
    Gui, Add, Picture,x0 y20 +BackgroundTrans, styles\skateboarding\background1.png
}
if (bgKey = "anime"){
    Gui, Add, Picture,x0 y20 +BackgroundTrans, styles\anime\background1.png
}
currentp1Field := p1Key%p1Switch%
currentp2Field := p2Key%p2Switch%
currentp3Field := p3Key%p3Switch%
Gui, Add, Text, x5 y32 +Center, Planter 1
Gui, Add, Text, x5 y102 +Center, Planter 2
Gui, Add, Text, x5 y172 +Center, Planter 3
Gui, Add, Text, x405 y32 +Center vcurrentp1Field, Current Field:`n%currentp1Field%
Gui, Add, Text, x405 y102 +Center vcurrentp2Field, Current Field:`n%currentp2Field%
Gui, Add, Text, x405 y172 +Center vcurrentp3Field, Current Field:`n%currentp3Field%
Gui, Add, Button, x410 y62 w20 h20 gchangep1Fieldl, <
Gui, Add, Button, x440 y62 w20 h20 gchangep1Fieldr, >
Gui, Add, Button, x410 y132 w20 h20 gchangep2Fieldl, <
Gui, Add, Button, x440 y132 w20 h20 gchangep2Fieldr, >
Gui, Add, Button, x410 y202 w20 h20 gchangep3Fieldl, <
Gui, Add, Button, x440 y202 w20 h20 gchangep3Fieldr, >
Gui, Add, DropDownList, x105 y29 w90 h100 vp1Choice1 gP1unswitch_, %p1Key1%||None|Bamboo|Blue Flower|Cactus|Clover|Coconut|Dandelion|Mountain Top|Mushroom|Pepper|Pine Tree|Pineapple|Pumpkin|Rose|Spider|Strawberry|Stump|Sunflower
Gui, Add, DropDownList, x205 y29 w90 h100 vp1Choice2 gP1unswitch_, %p1Key2%||None|Bamboo|Blue Flower|Cactus|Clover|Coconut|Dandelion|Mountain Top|Mushroom|Pepper|Pine Tree|Pineapple|Pumpkin|Rose|Spider|Strawberry|Stump|Sunflower
Gui, Add, DropDownList, x305 y29 w90 h100 vp1Choice3 gP1unswitch_, %p1Key3%||None|Bamboo|Blue Flower|Cactus|Clover|Coconut|Dandelion|Mountain Top|Mushroom|Pepper|Pine Tree|Pineapple|Pumpkin|Rose|Spider|Strawberry|Stump|Sunflower
Gui, Add, Text, x5 y52 +Center, Planter|Glitter Hotbar
Gui, Add, DropDownList, x105 y49 w45 h100 vpl1Choice1 gsaveConfig_ , %pl1Key1%||None|2|3|4|5|6|7
Gui, Add, DropDownList, x205 y49 w45 h100 vpl1Choice2 gsaveConfig_ , %pl1Key2%||None|2|3|4|5|6|7
Gui, Add, DropDownList, x305 y49 w45 h100 vpl1Choice3 gsaveConfig_ , %pl1Key3%||None|2|3|4|5|6|7
Gui, Add, DropDownList, x150 y49 w45 h100 vgl1Choice1 gsaveConfig_ , %gl1Key1%||None|2|3|4|5|6|7
Gui, Add, DropDownList, x250 y49 w45 h100 vgl1Choice2 gsaveConfig_ , %gl1Key2%||None|2|3|4|5|6|7
Gui, Add, DropDownList, x350 y49 w45 h100 vgl1Choice3 gsaveConfig_ , %gl1Key3%||None|2|3|4|5|6|7
Gui, Add, DropdownList, x105 y69 w90 h100 vplantChecker1 gsaveConfig_, %planterKey%||Every 30 Minutes|Every Hour|Every 2 Hours|Every 3 Hours|Every 4 Hours|Every 5 Hours|Every 6 Hours
Gui, Add, Text, x5 y72 +Center, Check Plants
Gui, Add, DropdownList, x305 y69 w90 h100 vplantCheck1 gsaveConfig_, %plantKey%||Full Grown|Always
Gui, Add, Text, x205 y73 +Center, Harvest When
Gui, Add, DropDownList, x105 y99 w90 h100 vp2Choice1 gP2unswitch_, %p2Key1%||None|Bamboo|Blue Flower|Cactus|Clover|Coconut|Dandelion|Mountain Top|Mushroom|Pepper|Pine Tree|Pineapple|Pumpkin|Rose|Spider|Strawberry|Stump|Sunflower
Gui, Add, DropDownList, x205 y99 w90 h100 vp2Choice2 gP2unswitch_, %p2Key2%||None|Bamboo|Blue Flower|Cactus|Clover|Coconut|Dandelion|Mountain Top|Mushroom|Pepper|Pine Tree|Pineapple|Pumpkin|Rose|Spider|Strawberry|Stump|Sunflower
Gui, Add, DropDownList, x305 y99 w90 h100 vp2Choice3 gP2unswitch_, %p2Key3%||None|Bamboo|Blue Flower|Cactus|Clover|Coconut|Dandelion|Mountain Top|Mushroom|Pepper|Pine Tree|Pineapple|Pumpkin|Rose|Spider|Strawberry|Stump|Sunflower
Gui, Add, Text, x5 y122 +Center, Planter|Glitter Hotbar
Gui, Add, DropDownList, x105 y119 w45 h100 vpl2Choice1 gsaveConfig_ , %pl2Key1%||None|2|3|4|5|6|7
Gui, Add, DropDownList, x205 y119 w45 h100 vpl2Choice2 gsaveConfig_ , %pl2Key2%||None|2|3|4|5|6|7
Gui, Add, DropDownList, x305 y119 w45 h100 vpl2Choice3 gsaveConfig_ , %pl2Key3%||None|2|3|4|5|6|7
Gui, Add, DropDownList, x150 y119 w45 h100 vgl2Choice1 gsaveConfig_ , %gl2Key1%||None|2|3|4|5|6|7
Gui, Add, DropDownList, x250 y119 w45 h100 vgl2Choice2 gsaveConfig_ , %gl2Key2%||None|2|3|4|5|6|7
Gui, Add, DropDownList, x350 y119 w45 h100 vgl2Choice3 gsaveConfig_ , %gl2Key3%||None|2|3|4|5|6|7
Gui, Add, DropdownList, x105 y139 w90 h100 vplantChecker2 gsaveConfig_, %planterKey2%||Every 30 Minutes|Every Hour|Every 2 Hours|Every 3 Hours|Every 4 Hours|Every 5 Hours|Every 6 Hours
Gui, Add, Text, x5 y142 +Center, Check Plants
Gui, Add, DropdownList, x305 y139 w90 h100 vplantCheck2 gsaveConfig_, %plantKey2%||Full Grown|Always
Gui, Add, Text, x205 y143 +Center, Harvest When
Gui, Add, DropDownList, x105 y169 w90 h100 vp3Choice1 gP3unswitch_, %p3Key1%||None|Bamboo|Blue Flower|Cactus|Clover|Coconut|Dandelion|Mountain Top|Mushroom|Pepper|Pine Tree|Pineapple|Pumpkin|Rose|Spider|Strawberry|Stump|Sunflower
Gui, Add, DropDownList, x205 y169 w90 h100 vp3Choice2 gP3unswitch_, %p3Key2%||None|Bamboo|Blue Flower|Cactus|Clover|Coconut|Dandelion|Mountain Top|Mushroom|Pepper|Pine Tree|Pineapple|Pumpkin|Rose|Spider|Strawberry|Stump|Sunflower
Gui, Add, DropDownList, x305 y169 w90 h100 vp3Choice3 gP3unswitch_, %p3Key3%||None|Bamboo|Blue Flower|Cactus|Clover|Coconut|Dandelion|Mountain Top|Mushroom|Pepper|Pine Tree|Pineapple|Pumpkin|Rose|Spider|Strawberry|Stump|Sunflower
Gui, Add, Text, x5 y192 +Center, Planter|Glitter Hotbar
Gui, Add, DropDownList, x105 y189 w45 h100 vpl3Choice1 gsaveConfig_ , %pl3Key1%||None|2|3|4|5|6|7
Gui, Add, DropDownList, x205 y189 w45 h100 vpl3Choice2 gsaveConfig_ , %pl3Key2%||None|2|3|4|5|6|7
Gui, Add, DropDownList, x305 y189 w45 h100 vpl3Choice3 gsaveConfig_ , %pl3Key3%||None|2|3|4|5|6|7
Gui, Add, DropDownList, x150 y189 w45 h100 vgl3Choice1 gsaveConfig_ , %gl3Key1%||None|2|3|4|5|6|7
Gui, Add, DropDownList, x250 y189 w45 h100 vgl3Choice2 gsaveConfig_ , %gl3Key2%||None|2|3|4|5|6|7
Gui, Add, DropDownList, x350 y189 w45 h100 vgl3Choice3 gsaveConfig_ , %gl3Key3%||None|2|3|4|5|6|7
Gui, Add, DropdownList, x105 y209 w90 h100 vplantChecker3 gsaveConfig_, %planterKey3%||Every 30 Minutes|Every Hour|Every 2 Hours|Every 3 Hours|Every 4 Hours|Every 5 Hours|Every 6 Hours
Gui, Add, Text, x5 y212 +Center, Check Plants
Gui, Add, DropdownList, x305 y209 w90 h100 vplantCheck3 gsaveConfig_, %plantKey3%||Full Grown|Always
Gui, Add, Text, x205 y213 +Center, Harvest When
Gui, Tab, Quests
if (bgKey = "anime_girls"){
    Gui, Add, Picture,x0 y20 +BackgroundTrans, styles\anime_girls\background3.png
    Gui, Add, Picture,x360 y80 +BackgroundTrans, styles\anime_girls\layer2.png
}
if (bgKey = "racing"){
    Gui, Add, Picture,x0 y20 +BackgroundTrans, styles\racing\background1.png
}
if (bgKey = "football"){
    Gui, Add, Picture,x0 y20 +BackgroundTrans, styles\football\background1.png
}
if (bgKey = "soccer"){
    Gui, Add, Picture,x0 y20 +BackgroundTrans, styles\soccer\background1.png
}
if (bgKey = "hockey"){
    Gui, Add, Picture,x0 y20 +BackgroundTrans, styles\hockey\background1.png
}
if (bgKey = "basketball"){
    Gui, Add, Picture,x0 y20 +BackgroundTrans, styles\basketball\background1.png
}
if (bgKey = "baseball"){
    Gui, Add, Picture,x0 y20 +BackgroundTrans, styles\baseball\background1.png
}
if (bgKey = "skateboarding"){
    Gui, Add, Picture,x0 y20 +BackgroundTrans, styles\skateboarding\background1.png
}
if (bgKey = "anime"){
    Gui, Add, Picture,x0 y20 +BackgroundTrans, styles\anime\background1.png
}
Gui, Add, Checkbox, x10 y29 vpolarCheck gsaveConfig_ %polarKey%, Polar Bear Quests
Gui, Add, Checkbox, x160 y29 vbuckoCheck gsaveConfig_ %buckoKey%, Bucko Quests
Gui, Add, Checkbox, x310 y29 vrileyCheck gsaveConfig_ %rileyKey%, Riley Quests
PQA := pqaCreate()
pqaT := questFormat_(PQA)
Gui, Add, Text, x10 y59 w140 h120 vpolarLog, Current Polar Quest:`n%pqaT%
BQA := bqaCreate()
bqaT := questFormat2_(BQA)
Gui, Add, Text, x160 y59 w140 h120 vbuckoLog, Current Bucko Quest:`n%bqaT%
RQA := rqaCreate()
rqaT := questFormat3_(RQA)
Gui, Add, Text, x310 y59 w140 h120 vrileyLog, Current Riley Quest:`n%rqaT%
Gui, Add, Button, x15 y200 w90 h30 gqRefresh_, Reset Quest Data
Gui, Add, Checkbox, x110 y210 vquestOR gsaveConfig_ %questOR%, Let quests change bug run settings
Gui, Tab, Bug Run
if (bgKey = "anime_girls"){
    Gui, Add, Picture,x0 y20 +BackgroundTrans, styles\anime_girls\background4.png
}
if (bgKey = "racing"){
    Gui, Add, Picture,x0 y20 +BackgroundTrans, styles\racing\background1.png
}
if (bgKey = "football"){
    Gui, Add, Picture,x0 y20 +BackgroundTrans, styles\football\background1.png
}
if (bgKey = "soccer"){
    Gui, Add, Picture,x0 y20 +BackgroundTrans, styles\soccer\background1.png
}
if (bgKey = "hockey"){
    Gui, Add, Picture,x0 y20 +BackgroundTrans, styles\hockey\background1.png
}
if (bgKey = "basketball"){
    Gui, Add, Picture,x0 y20 +BackgroundTrans, styles\basketball\background1.png
}
if (bgKey = "baseball"){
    Gui, Add, Picture,x0 y20 +BackgroundTrans, styles\baseball\background1.png
}
if (bgKey = "skateboarding"){
    Gui, Add, Picture,x0 y20 +BackgroundTrans, styles\skateboarding\background1.png
}
if (bgKey = "anime"){
    Gui, Add, Picture,x0 y20 +BackgroundTrans, styles\anime\background1.png
}
Gui, Add, Text, x12 y29, Bug Run Settings
Gui, Add, Checkbox, x12 y49 vladybugCheck gsaveConfig_ %ladybugKey%, Ladybugs
Gui, Add, Checkbox, x102 y49 vrhinoCheck gsaveConfig_ %rhinoKey%, Rhino Beetles
Gui, Add, Checkbox, x202 y49 vscorpionCheck gsaveConfig_ %scorpionKey%, Scorpions
Gui, Add, Checkbox, x302 y49 vmantisCheck gsaveConfig_ %mantisKey%, Mantis
Gui, Add, Checkbox, x12 y64 vspiderCheck gsaveConfig_ %spiderKey%, Spiders
Gui, Add, Checkbox, x102 y64 vwwolfCheck gsaveConfig_ %wwolfKey%, Werewolves
Gui, Add, Checkbox, x202 y64 vantcCheck gsaveConfig_ %antcKey%, Ants
Gui, Add, Checkbox, x302 y64 vvicCheck gsaveConfig_ %vicKey%, Gifted Vicious Hive Bonus
Gui, Add, Text, x12 y89, Selected mobs will be automatically tracked with timers and killed between gather cycles.
Gui, Tab, Boosts
if (bgKey = "anime_girls"){
    Gui, Add, Picture,x0 y20 +BackgroundTrans, styles\anime_girls\background8.png
}
if (bgKey = "racing"){
    Gui, Add, Picture,x0 y20 +BackgroundTrans, styles\racing\background1.png
}
if (bgKey = "football"){
    Gui, Add, Picture,x0 y20 +BackgroundTrans, styles\football\background1.png
}
if (bgKey = "soccer"){
    Gui, Add, Picture,x0 y20 +BackgroundTrans, styles\soccer\background1.png
}
if (bgKey = "hockey"){
    Gui, Add, Picture,x0 y20 +BackgroundTrans, styles\hockey\background1.png
}
if (bgKey = "basketball"){
    Gui, Add, Picture,x0 y20 +BackgroundTrans, styles\basketball\background1.png
}
if (bgKey = "baseball"){
    Gui, Add, Picture,x0 y20 +BackgroundTrans, styles\baseball\background1.png
}
if (bgKey = "skateboarding"){
    Gui, Add, Picture,x0 y20 +BackgroundTrans, styles\skateboarding\background1.png
}
if (bgKey = "anime"){
    Gui, Add, Picture,x0 y20 +BackgroundTrans, styles\anime\background1.png
}
Gui, Add, Text, x12 y30, Boost Settings
Gui, Add, Text, x200 y30, Use At Hive
Gui, Add, DropDownList, x200 y50 w50 h100 vatHive2 gsaveConfig_, %atHiveKey2%||Yes|No
Gui, Add, DropDownList, x200 y70 w50 h100 vatHive3 gsaveConfig_, %atHiveKey3%||Yes|No
Gui, Add, DropDownList, x200 y90 w50 h100 vatHive4 gsaveConfig_, %atHiveKey4%||Yes|No
Gui, Add, DropDownList, x200 y110 w50 h100 vatHive5 gsaveConfig_, %atHiveKey5%||Yes|No
Gui, Add, DropDownList, x200 y130 w50 h100 vatHive6 gsaveConfig_, %atHiveKey6%||Yes|No
Gui, Add, DropDownList, x200 y150 w50 h100 vatHive7 gsaveConfig_, %atHiveKey7%||Yes|No
Gui, Add, Button, x270 y160 w90 h30 gautoBuff_, Just Autobuff
Gui, Add, Text, x12 y53, Hotbar 2
Gui, Add, DropDownList, x70 y50 w90 h100 vhotbar2 gsaveConfig_, %hotbar2Key%||None|9 Seconds|30 Seconds|45 Seconds|1 Minute|5 Minutes|10 Minutes|15 Minutes|20 Minutes|30 Minutes
Gui, Add, Text, x12 y73, Hotbar 3
Gui, Add, DropDownList, x70 y70 w90 h100 vhotbar3 gsaveConfig_, %hotbar3Key%||None|9 Seconds|30 Seconds|45 Seconds|1 Minute|5 Minutes|10 Minutes|15 Minutes|20 Minutes|30 Minutes
Gui, Add, Text, x12 y93, Hotbar 4
Gui, Add, DropDownList, x70 y90 w90 h100 vhotbar4 gsaveConfig_, %hotbar4Key%||None|9 Seconds|30 Seconds|45 Seconds|1 Minute|5 Minutes|10 Minutes|15 Minutes|20 Minutes|30 Minutes
Gui, Add, Text, x12 y113, Hotbar 5
Gui, Add, DropDownList, x70 y110 w90 h100 vhotbar5 gsaveConfig_, %hotbar5Key%||None|9 Seconds|30 Seconds|45 Seconds|1 Minute|5 Minutes|10 Minutes|15 Minutes|20 Minutes|30 Minutes
Gui, Add, Text, x12 y133, Hotbar 6
Gui, Add, DropDownList, x70 y130 w90 h100 vhotbar6 gsaveConfig_, %hotbar6Key%||None|9 Seconds|30 Seconds|45 Seconds|1 Minute|5 Minutes|10 Minutes|15 Minutes|20 Minutes|30 Minutes
Gui, Add, Text, x12 y153, Hotbar 7
Gui, Add, DropDownList, x70 y150 w90 h100 vhotbar7 gsaveConfig_, %hotbar7Key%||None|9 Seconds|30 Seconds|45 Seconds|1 Minute|5 Minutes|10 Minutes|15 Minutes|20 Minutes|30 Minutes
Gui, Add, Text, x12 y183, Micro-converter Slot
Gui, Add, DropDownList, x120 y180 w90 h100 vmicroC gsaveConfig_, %microCKey%||None|2|3|4|5|6|7
Gui, Add, Text, x12 y203, Whirligig Slot
Gui, Add, DropDownList, x120 y200 w90 h100 vwhirli gsaveConfig_, %whirliKey%||None|2|3|4|5|6|7
Gui, Add, Text, x12 y220, Select how often you want to activate each item in your hotbars.
Gui, Tab, Calibration
if (bgKey = "anime_girls"){
    Gui, Add, Picture,x0 y20 +BackgroundTrans, styles\anime_girls\background5.png
}
if (bgKey = "racing"){
    Gui, Add, Picture,x0 y20 +BackgroundTrans, styles\racing\background1.png
}
if (bgKey = "football"){
    Gui, Add, Picture,x0 y20 +BackgroundTrans, styles\football\background1.png
}
if (bgKey = "soccer"){
    Gui, Add, Picture,x0 y20 +BackgroundTrans, styles\soccer\background1.png
}
if (bgKey = "hockey"){
    Gui, Add, Picture,x0 y20 +BackgroundTrans, styles\hockey\background1.png
}
if (bgKey = "basketball"){
    Gui, Add, Picture,x0 y20 +BackgroundTrans, styles\basketball\background1.png
}
if (bgKey = "baseball"){
    Gui, Add, Picture,x0 y20 +BackgroundTrans, styles\baseball\background1.png
}
if (bgKey = "skateboarding"){
    Gui, Add, Picture,x0 y20 +BackgroundTrans, styles\skateboarding\background1.png
}
if (bgKey = "anime"){
    Gui, Add, Picture,x0 y20 +BackgroundTrans, styles\anime\background1.png
}
Gui, Add, Text, x15 y30 +Center, Hive Slot (6-5-4-3-2-1)
Gui, Add, DropDownList, x150 y26 w90 h100 vslot gsaveConfig_, %slotKey%||1|2|3|4|5|6
Gui, Add, Text, x300 y30 +Center, Movespeed
Gui, Add, DropDownList, x400 y26 w90 h100 vspeed gsaveConfig_, %speedKey%||less than 28| 28 or more
Gui, Add, Text, x10 y60 +Center, Roblox Graphics Settings
Gui, Add, DropDownList, x150 y56 w90 h100 vgraphics gsaveConfig_, %graphicsKey%||1|4|9
Gui, Add, Text, x300 y60 +Center, Resolution
Gui, Add, DropDownList, x400 y56 w90 h100 vresolution gsaveConfig_, %resolutionKey%||4k|1440|1080|720
Gui, Add, Button, x205 y140 w90 h30 gRefresh_, Reset Plant Timers
Gui, Add, Checkbox, x400 y220 vaotCheck gaoT_ %aotKey%, Always On Top
Gui, Add, Text, x280 y90 +Center, Hive Image Similarity
Gui, Add, Edit, x400 y86 w90 h20 vvariationAm gsaveConfig_, %variationKey%
Gui, Add, Edit, x400 y116 w90 h20 vserverAge gsaveConfig_, %serverAge%
Gui, Add, Text, x283 y112 +Center, Rejoin Server After`n___ Hours
Gui, Add, Text, x25 y112 +Center, Gathering Time`nIn Minutes
Gui, Add, Edit, x150 y116 w90 h20 vgathTime gsaveConfig_, %gathTimeKey%
Gui, Add, Text, x20 y82 +Center, Wait ___ Seconds`nTo Load Roblox
Gui, Add, Edit, x150 y86 w90 h20 vcdelay gsaveConfig_, %cdelay%
Gui, Add, Text, x32 y180 +Center, GUI Theme
Gui, Add, DropDownList, x150 y176 w90 h100 vthemeSelect gtButton_, %themeKey%||Ayofe|BluePaper|Concaved|Core|Cosmo|Fanta|GrayGray|Hana|Invoice|Lakrits|Luminous|MacLion3|Minimal|Museo|Panther|PaperAGV|Relapse|SNAS|Stomp|WhiteGray|Woodwork
Gui, Add, Text, x22 y210 +Center, Tab Backgrounds
Gui, Add, DropDownList, x150 y206 w90 h100 vbgSelect gtButton_, %bgKey%||None|Anime|Anime_Girls|Baseball|Basketball|Football|Hockey|Racing|Skateboarding|Soccer
Gui, Tab, Stats
if (bgKey = "anime_girls"){
    Gui, Add, Picture,x0 y20 +BackgroundTrans, styles\anime_girls\background6.png
}
if (bgKey = "racing"){
    Gui, Add, Picture,x0 y20 +BackgroundTrans, styles\racing\background1.png
}
if (bgKey = "football"){
    Gui, Add, Picture,x0 y20 +BackgroundTrans, styles\football\background1.png
}
if (bgKey = "soccer"){
    Gui, Add, Picture,x0 y20 +BackgroundTrans, styles\soccer\background1.png
}
if (bgKey = "hockey"){
    Gui, Add, Picture,x0 y20 +BackgroundTrans, styles\hockey\background1.png
}
if (bgKey = "basketball"){
    Gui, Add, Picture,x0 y20 +BackgroundTrans, styles\basketball\background1.png
}
if (bgKey = "baseball"){
    Gui, Add, Picture,x0 y20 +BackgroundTrans, styles\baseball\background1.png
}
if (bgKey = "skateboarding"){
    Gui, Add, Picture,x0 y20 +BackgroundTrans, styles\skateboarding\background1.png
}
if (bgKey = "anime"){
    Gui, Add, Picture,x0 y20 +BackgroundTrans, styles\anime\background1.png
}
quicktext := updateStats()
Gui, Add, Text, x12 y90 vstats, %quicktext%
Gui, Add, Text, x12 y30 w90 h30 +Center vstatus2, Status: Idle
Gui, Add, Text, x405 y32 +Center vcurrentField2, Gathering Field:`n%currentField%
Gui, Add, Text, x405 y82 +Center vcurrentp1Field2, Planter 1:`n%currentp1Field%
Gui, Add, Text, x405 y132 +Center vcurrentp2Field2, Planter 2:`n%currentp2Field%
Gui, Add, Text, x405 y182 +Center vcurrentp3Field2, Planter 3:`n%currentp3Field%
Gui, Tab, Contributors
if (bgKey = "anime_girls"){
    Gui, Add, Picture,x0 y20 +BackgroundTrans, styles\anime_girls\background7.png
}
if (bgKey = "racing"){
    Gui, Add, Picture,x0 y20 +BackgroundTrans, styles\racing\background1.png
}
if (bgKey = "football"){
    Gui, Add, Picture,x0 y20 +BackgroundTrans, styles\football\background1.png
}
if (bgKey = "soccer"){
    Gui, Add, Picture,x0 y20 +BackgroundTrans, styles\soccer\background1.png
}
if (bgKey = "hockey"){
    Gui, Add, Picture,x0 y20 +BackgroundTrans, styles\hockey\background1.png
}
if (bgKey = "basketball"){
    Gui, Add, Picture,x0 y20 +BackgroundTrans, styles\basketball\background1.png
}
if (bgKey = "baseball"){
    Gui, Add, Picture,x0 y20 +BackgroundTrans, styles\baseball\background1.png
}
if (bgKey = "skateboarding"){
    Gui, Add, Picture,x0 y20 +BackgroundTrans, styles\skateboarding\background1.png
}
if (bgKey = "anime"){
    Gui, Add, Picture,x0 y20 +BackgroundTrans, styles\anime\background1.png
}
Gui, Add, Text, x100 y30 +Center, A special thanks to anyone who has contributed to my hobby`nI appreciate you all, you are amazing <3
Gui, Add, Text, x12 y70 +Center,Development
Gui, Add, Text, x12 y85 +Center,LittleChurch#1631
Gui, Add, Text, x12 y100 +Center,Raychel#2101
Gui, Add, Text, x12 y115 +Center,SP#0305
Gui, Add, Text, x12 y130 +Center,Gid10#4827
Gui, Add, Text, x12 y145 +Center,RoadRash#1292
Gui, Add, Text, x105 y85 +Center,Kacandra S.
Gui, Add, Text, x105 y100 +Center,FHL09#4061
Gui, Add, Text, x105 y115 +Center,Nick V.
Gui, Add, Text, x105 y130 +Center,ggbondsupreme#6896
Gui, Add, Text, x105 y145 +Center,gsmithsax#0539
Gui, Add, Text, x105 y160 +Center,ploppy#9769
Gui, Add, Text, x105 y175 +Center,ssilz#8403
Gui, Add, Text, x105 y70 +Center,Donors
gui, show,x%xKey% y%yKey% h280 w500, Zez Macro
Return
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;; gui controls
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
changegFieldl(){
    IniRead, gatherSwitch, config.ini, other, gatherSwitch
    if (gatherSwitch > 1){
        gatherSwitch := gatherSwitch - 1
        GuiControlGet, gatherChoice%gatherSwitch%
        name := gatherChoice%gatherSwitch%
        if (name && name != "none" && name != "select"){
            IniWrite, %gatherSwitch%, config.ini, other, gatherSwitch
            GuiControl,,currentField,Current Field:`n%name%
            GuiControl,,currentField2,Gathering Field:`n%name%
        }
    }
}
changegFieldr(){
    IniRead, gatherSwitch, config.ini, other, gatherSwitch
    if (gatherSwitch < 3){
        gatherSwitch := gatherSwitch + 1
        GuiControlGet, gatherChoice%gatherSwitch%
        name := gatherChoice%gatherSwitch%
        if (name && name != "none" && name != "select"){
            IniWrite, %gatherSwitch%, config.ini, other, gatherSwitch
            GuiControl,,currentField,Current Field:`n%name%
            GuiControl,,currentField2,Gathering Field:`n%name%
        }
    }
}
changep1Fieldl(){
    IniRead, p1Switch, config.ini, other, p1Switch
    if (p1Switch > 1){
        p1Switch := p1Switch - 1
        GuiControlGet, p1Choice%p1Switch%
        name := p1Choice%p1Switch%
        if (name && name != "none" && name != "select"){
            IniWrite, %p1Switch%, config.ini, other, p1Switch
            GuiControl,,currentp1Field,Current Field:`n%name%
            GuiControl,,currentp1Field2,Planter 1:`n%name%
        }
    }
}
changep1Fieldr(){
    IniRead, p1Switch, config.ini, other, p1Switch
    if (p1Switch < 3){
        p1Switch := p1Switch + 1
        GuiControlGet, p1Choice%p1Switch%
        name := p1Choice%p1Switch%
        if (name && name != "none" && name != "select"){
            IniWrite, %p1Switch%, config.ini, other, p1Switch
            GuiControl,,currentp1Field,Current Field:`n%name%
            GuiControl,,currentp1Field2,Planter 1:`n%name%
        }
    }
}
changep2Fieldl(){
    IniRead, p2Switch, config.ini, other, p2Switch
    if (p2Switch > 1){
        p2Switch := p2Switch - 1
        GuiControlGet, p2Choice%p2Switch%
        name := p2Choice%p2Switch%
        if (name && name != "none" && name != "select"){
            IniWrite, %p2Switch%, config.ini, other, p2Switch
            GuiControl,,currentp2Field,Current Field:`n%name%
            GuiControl,,currentp2Field2,Planter 2:`n%name%
        }
    }
}
changep2Fieldr(){
    IniRead, p2Switch, config.ini, other, p2Switch
    if (p2Switch < 3){
        p2Switch := p2Switch + 1
        GuiControlGet, p2Choice%p2Switch%
        name := p2Choice%p2Switch%
        if (name && name != "none" && name != "select"){
            IniWrite, %p2Switch%, config.ini, other, p2Switch
            GuiControl,,currentp2Field,Current Field:`n%name%
            GuiControl,,currentp2Field2,Planter 2:`n%name%
        }
    }
}
changep3Fieldl(){
    IniRead, p3Switch, config.ini, other, p3Switch
    if (p3Switch > 1){
        p3Switch := p3Switch - 1
        GuiControlGet, p3Choice%p3Switch%
        name := p3Choice%p3Switch%
        if (name && name != "none" && name != "select"){
            IniWrite, %p3Switch%, config.ini, other, p3Switch
            GuiControl,,currentp3Field,Current Field:`n%name%
            GuiControl,,currentp3Field2,Planter 3:`n%name%
        }
    }
}
changep3Fieldr(){
    IniRead, p3Switch, config.ini, other, p3Switch
    if (p3Switch < 3){
        p3Switch := p3Switch + 1
        GuiControlGet, p3Choice%p3Switch%
        name := p3Choice%p3Switch%
        if (name && name != "none" && name != "select"){
            IniWrite, %p3Switch%, config.ini, other, p3Switch
            GuiControl,,currentp3Field,Current Field:`n%name%
            GuiControl,,currentp3Field2,Planter 3:`n%name%
        }
    }
}
SkinForm(Param1 = "Apply", DLL = "", SkinName = ""){
	if(Param1 = Apply){
		DllCall("LoadLibrary", str, DLL)
		DllCall(DLL . "\USkinInit", Int,0, Int,0, AStr, SkinName)
	}
    else if(Param1 = 0){
		DllCall(DLL . "\USkinExit")
	}
}
Link1(){
    run, https://www.paypal.com/donate/?business=FVFQ4TWUJBJ38&no_recurring=0&currency_code=USD
}
nectarS_(){
    GuiControlGet, nectarPreset
    if (nectarPreset = "none"){
        GuiControl,choose,p1Choice1,None
        GuiControl,choose,p1Choice2,None
        GuiControl,choose,p1Choice3,None
        GuiControl,choose,pl1Choice1,None
        GuiControl,choose,pl1Choice2,None
        GuiControl,choose,pl1Choice3,None
        GuiControl,choose,p2Choice1,None
        GuiControl,choose,p2Choice2,None
        GuiControl,choose,p2Choice3,None
        GuiControl,choose,pl2Choice1,None
        GuiControl,choose,pl2Choice2,None
        GuiControl,choose,pl2Choice3,None
        GuiControl,choose,p3Choice1,None
        GuiControl,choose,p3Choice2,None
        GuiControl,choose,p3Choice3,None
        GuiControl,choose,pl3Choice1,None
        GuiControl,choose,pl3Choice2,None
        GuiControl,choose,pl3Choice3,None
        GuiControl,choose,gatherChoice1,None
        GuiControl,choose,gatherChoice2,None
        GuiControl,choose,gatherChoice3,None
    }
    if (nectarPreset = "5 (blue)"){
        GuiControl,choose,p1Choice1,Stump
        GuiControl,choose,p1Choice2,Pine Tree
        GuiControl,choose,p1Choice3,None
        GuiControl,choose,pl1Choice1,6
        GuiControl,choose,pl1Choice2,6
        GuiControl,choose,pl1Choice3,None
        GuiControl,choose,p2Choice1,Blue Flower
        GuiControl,choose,p2Choice2,Cactus
        GuiControl,choose,p2Choice3,None
        GuiControl,choose,pl2Choice1,7
        GuiControl,choose,pl2Choice2,7
        GuiControl,choose,pl2Choice3,None
        GuiControl,choose,p3Choice1,Sunflower
        GuiControl,choose,p3Choice2,Pumpkin
        GuiControl,choose,p3Choice3,Pineapple
        GuiControl,choose,pl3Choice1,8
        GuiControl,choose,pl3Choice2,8
        GuiControl,choose,pl3Choice3,8
        GuiControl,choose,gatherChoice1,Planter 1
        GuiControl,choose,gatherChoice2,Planter 2
        GuiControl,choose,gatherChoice3,None
    }
    if (nectarPreset = "4 (blue)"){
        GuiControl,choose,p1Choice1,Stump
        GuiControl,choose,p1Choice2,Pine Tree
        GuiControl,choose,p1Choice3,None
        GuiControl,choose,pl1Choice1,6
        GuiControl,choose,pl1Choice2,6
        GuiControl,choose,pl1Choice3,None
        GuiControl,choose,p2Choice1,Blue Flower
        GuiControl,choose,p2Choice2,Strawberry
        GuiControl,choose,p2Choice3,Coconut
        GuiControl,choose,pl2Choice1,7
        GuiControl,choose,pl2Choice2,7
        GuiControl,choose,pl2Choice3,7
        GuiControl,choose,p3Choice1,Sunflower
        GuiControl,choose,p3Choice2,Pumpkin
        GuiControl,choose,p3Choice3,Pineapple
        GuiControl,choose,pl3Choice1,8
        GuiControl,choose,pl3Choice2,8
        GuiControl,choose,pl3Choice3,8
        GuiControl,choose,gatherChoice1,Planter 1
        GuiControl,choose,gatherChoice2,None
        GuiControl,choose,gatherChoice3,None
    }
    if (nectarPreset = "4 (red)"){
        GuiControl,choose,p1Choice1,Rose
        GuiControl,choose,p1Choice2,Strawberry
        GuiControl,choose,p1Choice3,None
        GuiControl,choose,pl1Choice1,6
        GuiControl,choose,pl1Choice2,6
        GuiControl,choose,pl1Choice3,None
        GuiControl,choose,p2Choice1,Pepper
        GuiControl,choose,p2Choice2,Clover
        GuiControl,choose,p2Choice3,Cactus
        GuiControl,choose,pl2Choice1,7
        GuiControl,choose,pl2Choice2,7
        GuiControl,choose,pl2Choice3,7
        GuiControl,choose,p3Choice1,Sunflower
        GuiControl,choose,p3Choice2,Pumpkin
        GuiControl,choose,p3Choice3,Pineapple
        GuiControl,choose,pl3Choice1,8
        GuiControl,choose,pl3Choice2,8
        GuiControl,choose,pl3Choice3,8
        GuiControl,choose,gatherChoice1,Planter 1
        GuiControl,choose,gatherChoice2,None
        GuiControl,choose,gatherChoice3,None
    }
    IniWrite, 1, config.ini, other, p1Switch
    IniWrite, 1, config.ini, other, p2Switch
    IniWrite, 1, config.ini, other, p3Switch
    IniWrite, 1, config.ini, other, gatherSwitch
    GuiControlGet, p1Choice1
    GuiControlGet, p2Choice1
    GuiControlGet, p3Choice1
    GuiControlGet, gatherChoice1
    GuiControl,,currentField,Current Field:`n%gatherChoice1%
    GuiControl,,currentp1Field,Current Field:`n%p1Choice1%
    GuiControl,,currentp2Field,Current Field:`n%p2Choice1%
    GuiControl,,currentp3Field,Current Field:`n%p3Choice1%
    GuiControl,,currentField2,Gathering Field:`n%gatherChoice1%
    GuiControl,,currentp1Field2,Planter 1:`n%p1Choice1%
    GuiControl,,currentp2Field2,Planter 2:`n%p2Choice1%
    GuiControl,,currentp3Field2,Planter 3:`n%p3Choice1%
    saveConfig_()
}
P1unswitch_(){
    IniWrite, 1, config.ini, other, p1Switch
    GuiControlGet, p1Choice1
    GuiControl,,currentp1Field,Current Field:`n%p1Choice1%
    GuiControl,,currentp1Field2,Planter 1:`n%p1Choice1%
    GuiControl,choose,nectarPreset,None
    saveConfig_()
}
g1Unswitch(){
    IniWrite, 1, config.ini, other, gatherSwitch
    GuiControlGet, gatherChoice1
    GuiControl,,currentField,Current Field:`n%gatherChoice1%
    GuiControl,,currentField2,Gathering Field:`n%gatherChoice1%
    GuiControl,choose,nectarPreset,None
    saveConfig_()
}
P2unswitch_(){
    IniWrite, 1, config.ini, other, p2Switch
    GuiControlGet, p2Choice1
    GuiControl,,currentp2Field,Current Field:`n%p2Choice1%
    GuiControl,,currentp2Field2,Planter 2:`n%p2Choice1%
    GuiControl,choose,nectarPreset,None
    saveConfig_()
}
P3unswitch_(){
    IniWrite, 1, config.ini, other, p3Switch
    GuiControlGet, p3Choice1
    GuiControl,,currentp3Field,Current Field:`n%p3Choice1%
    GuiControl,,currentp3Field,Planter 3:`n%p3Choice1%
    GuiControl,choose,nectarPreset,None
    saveConfig_()
}
Refresh_(){
    IniWrite, 0, config.ini, other, p1Timer
    IniWrite, 0, config.ini, other, p2Timer
    IniWrite, 0, config.ini, other, p3Timer
}
qRefresh_(){
    IniWrite, "", config.ini, quests, polar
    PQA := pqaCreate()
    pqaT := questFormat_(PQA)
    GuiControl,,polarLog,Current Polar Quest: `n%pqaT%
    IniWrite, "", config.ini, bquests, bucko
    BQA := bqaCreate()
    bqaT := questFormat2_(BQA)
    GuiControl,,buckoLog,Current Bucko Quest: `n%bqaT%
    IniWrite, "", config.ini, rquests, riley
    RQA := rqaCreate()
    rqaT := questFormat3_(RQA)
    GuiControl,,rileyLog,Current Riley Quest: `n%rqaT%
}
autoBuff_(){
    winactivate, Roblox
    while (1){
        boosting()
    }
}
aoT_:
GuiControlGet, aotCheck
if (aotCheck)
    Gui, +AlwaysOnTop
else
    Gui, -AlwaysOnTop
saveConfig_()
return
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;; gui save
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
saveConfig_(){
    GuiControlGet, gatherChoice1
    GuiControlGet, convertCheck
    GuiControlGet, mondoCheck
    GuiControlGet, wealthCheck
    GuiControlGet, samovarCheck
    GuiControlGet, p1Choice1
    GuiControlGet, p2Choice1
    GuiControlGet, p3Choice1
    GuiControlGet, pLink
    GuiControlGet, ladybugCheck
    GuiControlGet, rhinoCheck
    GuiControlGet, scorpionCheck
    GuiControlGet, mantisCheck
    GuiControlGet, spiderCheck
    GuiControlGet, wwolfCheck
    GuiControlGet, slot
    GuiControlGet, speed
    GuiControlGet, graphics
    GuiControlGet, resolution
    GuiControlGet, aotCheck
    GuiControlGet, gatherChoice2
    GuiControlGet, p1Choice2
    GuiControlGet, p2Choice2
    GuiControlGet, p3Choice2
    GuiControlGet, p1Choice3
    GuiControlGet, p2Choice3
    GuiControlGet, p3Choice3
    GuiControlGet, pl1Choice1
    GuiControlGet, pl1Choice2
    GuiControlGet, pl1Choice3
    GuiControlGet, pl2Choice1
    GuiControlGet, pl2Choice2
    GuiControlGet, pl2Choice3
    GuiControlGet, pl3Choice1
    GuiControlGet, pl3Choice2
    GuiControlGet, pl3Choice3
    GuiControlGet, plantCheck1
    GuiControlGet, plantChecker1
    GuiControlGet, plantCheck2
    GuiControlGet, plantChecker2
    GuiControlGet, plantCheck3
    GuiControlGet, plantChecker3
    GuiControlGet, FeastCheck
    GuiControlGet, candlesCheck
    GuiControlGet, antCheck
    GuiControlGet, wreathCheck
    GuiControlGet, polarCheck
    GuiControlGet, themeSelect
    GuiControlGet, stockingsCheck
    GuiControlGet, gPath
    GuiControlGet, hotbar2
    GuiControlGet, hotbar3
    GuiControlGet, hotbar4
    GuiControlGet, gatherChoice3
    GuiControlGet, atHive2
    GuiControlGet, atHive3
    GuiControlGet, atHive4
    GuiControlGet, sat
    GuiControlGet, gathTime
    GuiControlGet, rboostCheck
    GuiControlGet, bboostCheck
    GuiControlGet, mboostCheck
    GuiControlGet, variationAm
    GuiControlGet, serverAge
    GuiControlGet, nectarPreset
    GuiControlGet, lidCheck
    GuiControlGet, vicCheck
    GuiControlGet, size
    GuiControlGet, shiftChoice
    GuiControlGet, questOR
    GuiControlGet, cdelay
    GuiControlGet, buckoCheck
    GuiControlGet, gl1Choice1
    GuiControlGet, gl1Choice2
    GuiControlGet, gl1Choice3
    GuiControlGet, gl2Choice1
    GuiControlGet, gl2Choice2
    GuiControlGet, gl2Choice3
    GuiControlGet, gl3Choice1
    GuiControlGet, gl3Choice2
    GuiControlGet, gl3Choice3
    GuiControlGet, antcCheck
    GuiControlGet, rileyCheck
    GuiControlGet, bgSelect
    GuiControlGet, cocoCheck
    GuiControlGet, treatCheck
    GuiControlGet, honeyCheck
    GuiControlGet, blueCheck
    GuiControlGet, redCheck
    GuiControlGet, hotbar5
    GuiControlGet, hotbar6
    GuiControlGet, hotbar7
    GuiControlGet, atHive5
    GuiControlGet, atHive6
    GuiControlGet, atHive7
    GuiControlGet, microC
    GuiControlGet, whirli
    IniWrite, %microC%, config.ini, gui, microC
    IniWrite, %whirli%, config.ini, gui, whirli
    IniWrite, %hotbar5%, config.ini, gui, hotbar5
    IniWrite, %hotbar6%, config.ini, gui, hotbar6
    IniWrite, %hotbar7%, config.ini, gui, hotbar7
    IniWrite, %atHive5%, config.ini, gui, atHive5
    IniWrite, %atHive6%, config.ini, gui, atHive6
    IniWrite, %atHive7%, config.ini, gui, atHive7
    IniWrite, %cocoCheck%, config.ini, gui, cocoCheck
    IniWrite, %treatCheck%, config.ini, gui, treatCheck
    IniWrite, %honeyCheck%, config.ini, gui, honeyCheck
    IniWrite, %blueCheck%, config.ini, gui, blueCheck
    IniWrite, %redCheck%, config.ini, gui, redCheck
    IniWrite, %bgSelect%, config.ini, gui, bgSelect
    IniWrite, %rileyCheck%, config.ini, gui, rileyCheck
    IniWrite, %antcCheck%, config.ini, gui, antcCheck
    IniWrite, %gl1Choice1%, config.ini, gui, gl1Choice1
    IniWrite, %gl1Choice2%, config.ini, gui, gl1Choice2
    IniWrite, %gl1Choice3%, config.ini, gui, gl1Choice3
    IniWrite, %gl2Choice1%, config.ini, gui, gl2Choice1
    IniWrite, %gl2Choice2%, config.ini, gui, gl2Choice2
    IniWrite, %gl2Choice3%, config.ini, gui, gl2Choice3
    IniWrite, %gl3Choice1%, config.ini, gui, gl3Choice1
    IniWrite, %gl3Choice2%, config.ini, gui, gl3Choice2
    IniWrite, %gl3Choice3%, config.ini, gui, gl3Choice3
    IniWrite, %buckoCheck%, config.ini, gui, buckoCheck
    IniWrite, %cdelay%, config.ini, gui, cdelay
    IniWrite, %questOR%, config.ini, gui, questOR
    IniWrite, %shiftChoice%, config.ini, gui, shiftChoice
    IniWrite, %size%, config.ini, gui, size
    IniWrite, %vicCheck%, config.ini, gui, vicCheck
    IniWrite, %lidCheck%, config.ini, gui, lidCheck
    IniWrite, %nectarPreset%, config.ini, gui, nPreset
    IniWrite, %serverAge%, config.ini, gui, serverAge
    IniWrite, %variationAm%, config.ini, gui, variation
    IniWrite, %mboostCheck%, config.ini, gui, mboostCheck
    IniWrite, %bboostCheck%, config.ini, gui, bboostCheck
    IniWrite, %rboostCheck%, config.ini, gui, rboostCheck
    IniWrite, %gathTime%, config.ini, gui, gathTime
    IniWrite, %sat%, config.ini, gui, sat
    IniWrite, %atHive2%, config.ini, gui, atHive2
    IniWrite, %atHive3%, config.ini, gui, atHive3
    IniWrite, %atHive4%, config.ini, gui, atHive4
    IniWrite, %gatherChoice1%, config.ini, gui, gatherChoice1
    IniWrite, %gatherChoice3%, config.ini, gui, gatherChoice3
    IniWrite, %convertCheck%, config.ini, gui, convertCheck
    IniWrite, %mondoCheck%, config.ini, gui, mondoCheck
    IniWrite, %wealthCheck%, config.ini, gui, wealthCheck
    IniWrite, %samovarCheck%, config.ini, gui, samovarCheck
    IniWrite, %p1Choice1%, config.ini, gui, p1Choice1
    IniWrite, %p2Choice1%, config.ini, gui, p2Choice1
    IniWrite, %p3Choice1%, config.ini, gui, p3Choice1
    IniWrite, %pLink%, config.ini, gui, pLink
    IniWrite, %ladybugCheck%, config.ini, gui, ladybugCheck
    IniWrite, %rhinoCheck%, config.ini, gui, rhinoCheck
    IniWrite, %scorpionCheck%, config.ini, gui, scorpionCheck
    IniWrite, %mantisCheck%, config.ini, gui, mantisCheck
    IniWrite, %spiderCheck%, config.ini, gui, spiderCheck
    IniWrite, %wwolfCheck%, config.ini, gui, wwolfCheck
    IniWrite, %slot%, config.ini, gui, slot
    IniWrite, %speed%, config.ini, gui, speed
    IniWrite, %graphics%, config.ini, gui, graphics
    IniWrite, %resolution%, config.ini, gui, resolution
    IniWrite, %aotCheck%, config.ini, gui, aotCheck
    IniWrite, %gatherChoice2%, config.ini, gui, gatherChoice2
    IniWrite, %plantCheck1%, config.ini, gui, plantCheck1
    IniWrite, %plantChecker1%, config.ini, gui, plantChecker1
    IniWrite, %plantCheck2%, config.ini, gui, plantCheck2
    IniWrite, %plantChecker2%, config.ini, gui, plantChecker2
    IniWrite, %plantCheck3%, config.ini, gui, plantCheck3
    IniWrite, %plantChecker3%, config.ini, gui, plantChecker3
    IniWrite, %p1Choice2%, config.ini, gui, p1Choice2
    IniWrite, %p2Choice2%, config.ini, gui, p2Choice2
    IniWrite, %p3Choice2%, config.ini, gui, p3Choice2
    IniWrite, %p1Choice3%, config.ini, gui, p1Choice3
    IniWrite, %p2Choice3%, config.ini, gui, p2Choice3
    IniWrite, %p3Choice3%, config.ini, gui, p3Choice3
    IniWrite, %pl1Choice1%, config.ini, gui, pl1Choice1
    IniWrite, %pl1Choice2%, config.ini, gui, pl1Choice2
    IniWrite, %pl1Choice3%, config.ini, gui, pl1Choice3
    IniWrite, %pl2Choice1%, config.ini, gui, pl2Choice1
    IniWrite, %pl2Choice2%, config.ini, gui, pl2Choice2
    IniWrite, %pl2Choice3%, config.ini, gui, pl2Choice3
    IniWrite, %pl3Choice1%, config.ini, gui, pl3Choice1
    IniWrite, %pl3Choice2%, config.ini, gui, pl3Choice2
    IniWrite, %pl3Choice3%, config.ini, gui, pl3Choice3
    IniWrite, %FeastCheck%, config.ini, gui, FeastCheck
    IniWrite, %candlesCheck%, config.ini, gui, candlesCheck
    IniWrite, %antCheck%, config.ini, gui, antCheck
    IniWrite, %wreathCheck%, config.ini, gui, wreathCheck
    IniWrite, %polarCheck%, config.ini, gui, polarCheck
    IniWrite, %themeSelect%, config.ini, gui, themeSelect
    IniWrite, %stockingsCheck%, config.ini, gui, stockingsCheck
    IniWrite, %gPath%, config.ini, gui, gPath
    IniWrite, %hotbar2%, config.ini, gui, hotbar2
    IniWrite, %hotbar3%, config.ini, gui, hotbar3
    IniWrite, %hotbar4%, config.ini, gui, hotbar4
    WinGetPos , windowX, windowY, windowWidth, windowHeight, Zez Macro
    if (windowX && windowX > 0)
        IniWrite, %windowX%, config.ini, gui, x
    if (windowY && windowY > 0)
        IniWrite, %windowY%, config.ini, gui, y
}
saver(){
    GuiControlGet, saver
    GuiControlGet, gatherChoice1
    GuiControlGet, convertCheck
    GuiControlGet, mondoCheck
    GuiControlGet, wealthCheck
    GuiControlGet, samovarCheck
    GuiControlGet, p1Choice1
    GuiControlGet, p2Choice1
    GuiControlGet, p3Choice1
    GuiControlGet, pLink
    GuiControlGet, ladybugCheck
    GuiControlGet, rhinoCheck
    GuiControlGet, scorpionCheck
    GuiControlGet, mantisCheck
    GuiControlGet, spiderCheck
    GuiControlGet, wwolfCheck
    GuiControlGet, slot
    GuiControlGet, speed
    GuiControlGet, graphics
    GuiControlGet, resolution
    GuiControlGet, aotCheck
    GuiControlGet, gatherChoice2
    GuiControlGet, p1Choice2
    GuiControlGet, p2Choice2
    GuiControlGet, p3Choice2
    GuiControlGet, p1Choice3
    GuiControlGet, p2Choice3
    GuiControlGet, p3Choice3
    GuiControlGet, pl1Choice1
    GuiControlGet, pl1Choice2
    GuiControlGet, pl1Choice3
    GuiControlGet, pl2Choice1
    GuiControlGet, pl2Choice2
    GuiControlGet, pl2Choice3
    GuiControlGet, pl3Choice1
    GuiControlGet, pl3Choice2
    GuiControlGet, pl3Choice3
    GuiControlGet, plantCheck1
    GuiControlGet, plantChecker1
    GuiControlGet, plantCheck2
    GuiControlGet, plantChecker2
    GuiControlGet, plantCheck3
    GuiControlGet, plantChecker3
    GuiControlGet, FeastCheck
    GuiControlGet, candlesCheck
    GuiControlGet, antCheck
    GuiControlGet, wreathCheck
    GuiControlGet, polarCheck
    GuiControlGet, themeSelect
    GuiControlGet, stockingsCheck
    GuiControlGet, gPath
    GuiControlGet, hotbar2
    GuiControlGet, hotbar3
    GuiControlGet, hotbar4
    GuiControlGet, gatherChoice3
    GuiControlGet, atHive2
    GuiControlGet, atHive3
    GuiControlGet, atHive4
    GuiControlGet, sat
    GuiControlGet, gathTime
    GuiControlGet, rboostCheck
    GuiControlGet, bboostCheck
    GuiControlGet, mboostCheck
    GuiControlGet, variationAm
    GuiControlGet, serverAge
    GuiControlGet, nectarPreset
    GuiControlGet, lidCheck
    GuiControlGet, vicCheck
    GuiControlGet, size
    GuiControlGet, shiftChoice
    GuiControlGet, questOR
    GuiControlGet, cdelay
    GuiControlGet, buckoCheck
    GuiControlGet, gl1Choice1
    GuiControlGet, gl1Choice2
    GuiControlGet, gl1Choice3
    GuiControlGet, gl2Choice1
    GuiControlGet, gl2Choice2
    GuiControlGet, gl2Choice3
    GuiControlGet, gl3Choice1
    GuiControlGet, gl3Choice2
    GuiControlGet, gl3Choice3
    GuiControlGet, antcCheck
    GuiControlGet, rileyCheck
    GuiControlGet, bgSelect
    GuiControlGet, cocoCheck
    GuiControlGet, treatCheck
    GuiControlGet, honeyCheck
    GuiControlGet, blueCheck
    GuiControlGet, redCheck
    GuiControlGet, hotbar5
    GuiControlGet, hotbar6
    GuiControlGet, hotbar7
    GuiControlGet, atHive5
    GuiControlGet, atHive6
    GuiControlGet, atHive7
    GuiControlGet, microC
    GuiControlGet, whirli
    IniWrite, %microC%, config.ini, %saver%, microC
    IniWrite, %whirli%, config.ini, %saver%, whirli
    IniWrite, %hotbar5%, config.ini, %saver%, hotbar5
    IniWrite, %hotbar6%, config.ini, %saver%, hotbar6
    IniWrite, %hotbar7%, config.ini, %saver%, hotbar7
    IniWrite, %atHive5%, config.ini, %saver%, atHive5
    IniWrite, %atHive6%, config.ini, %saver%, atHive6
    IniWrite, %atHive7%, config.ini, %saver%, atHive7
    IniWrite, %cocoCheck%, config.ini, %saver%, cocoCheck
    IniWrite, %treatCheck%, config.ini, %saver%, treatCheck
    IniWrite, %honeyCheck%, config.ini, %saver%, honeyCheck
    IniWrite, %blueCheck%, config.ini, %saver%, blueCheck
    IniWrite, %redCheck%, config.ini, %saver%, redCheck
    IniWrite, %bgSelect%, config.ini, %saver%, bgSelect
    IniWrite, %rileyCheck%, config.ini, %saver%, rileyCheck
    IniWrite, %antcCheck%, config.ini, %saver%, antcCheck
    IniWrite, %gl1Choice1%, config.ini, %saver%, gl1Choice1
    IniWrite, %gl1Choice2%, config.ini, %saver%, gl1Choice2
    IniWrite, %gl1Choice3%, config.ini, %saver%, gl1Choice3
    IniWrite, %gl2Choice1%, config.ini, %saver%, gl2Choice1
    IniWrite, %gl2Choice2%, config.ini, %saver%, gl2Choice2
    IniWrite, %gl2Choice3%, config.ini, %saver%, gl2Choice3
    IniWrite, %gl3Choice1%, config.ini, %saver%, gl3Choice1
    IniWrite, %gl3Choice2%, config.ini, %saver%, gl3Choice2
    IniWrite, %gl3Choice3%, config.ini, %saver%, gl3Choice3
    IniWrite, %buckoCheck%, config.ini, %saver%, buckoCheck
    IniWrite, %cdelay%, config.ini, %saver%, cdelay
    IniWrite, %questOR%, config.ini, %saver%, questOR
    IniWrite, %shiftChoice%, config.ini, %saver%, shiftChoice
    IniWrite, %size%, config.ini, %saver%, size
    IniWrite, %vicCheck%, config.ini, %saver%, vicCheck
    IniWrite, %lidCheck%, config.ini, %saver%, lidCheck
    IniWrite, %nectarPreset%, config.ini, %saver%, nPreset
    IniWrite, %serverAge%, config.ini, %saver%, serverAge
    IniWrite, %variationAm%, config.ini, %saver%, variation
    IniWrite, %mboostCheck%, config.ini, %saver%, mboostCheck
    IniWrite, %bboostCheck%, config.ini, %saver%, bboostCheck
    IniWrite, %rboostCheck%, config.ini, %saver%, rboostCheck
    IniWrite, %gathTime%, config.ini, %saver%, gathTime
    IniWrite, %sat%, config.ini, %saver%, sat
    IniWrite, %atHive2%, config.ini, %saver%, atHive2
    IniWrite, %atHive3%, config.ini, %saver%, atHive3
    IniWrite, %atHive4%, config.ini, %saver%, atHive4
    IniWrite, %gatherChoice1%, config.ini, %saver%, gatherChoice1
    IniWrite, %gatherChoice3%, config.ini, %saver%, gatherChoice3
    IniWrite, %convertCheck%, config.ini, %saver%, convertCheck
    IniWrite, %mondoCheck%, config.ini, %saver%, mondoCheck
    IniWrite, %wealthCheck%, config.ini, %saver%, wealthCheck
    IniWrite, %samovarCheck%, config.ini, %saver%, samovarCheck
    IniWrite, %p1Choice1%, config.ini, %saver%, p1Choice1
    IniWrite, %p2Choice1%, config.ini, %saver%, p2Choice1
    IniWrite, %p3Choice1%, config.ini, %saver%, p3Choice1
    IniWrite, %pLink%, config.ini, %saver%, pLink
    IniWrite, %ladybugCheck%, config.ini, %saver%, ladybugCheck
    IniWrite, %rhinoCheck%, config.ini, %saver%, rhinoCheck
    IniWrite, %scorpionCheck%, config.ini, %saver%, scorpionCheck
    IniWrite, %mantisCheck%, config.ini, %saver%, mantisCheck
    IniWrite, %spiderCheck%, config.ini, %saver%, spiderCheck
    IniWrite, %wwolfCheck%, config.ini, %saver%, wwolfCheck
    IniWrite, %slot%, config.ini, %saver%, slot
    IniWrite, %speed%, config.ini, %saver%, speed
    IniWrite, %graphics%, config.ini, %saver%, graphics
    IniWrite, %resolution%, config.ini, %saver%, resolution
    IniWrite, %aotCheck%, config.ini, %saver%, aotCheck
    IniWrite, %gatherChoice2%, config.ini, %saver%, gatherChoice2
    IniWrite, %plantCheck1%, config.ini, %saver%, plantCheck1
    IniWrite, %plantChecker1%, config.ini, %saver%, plantChecker1
    IniWrite, %plantCheck2%, config.ini, %saver%, plantCheck2
    IniWrite, %plantChecker2%, config.ini, %saver%, plantChecker2
    IniWrite, %plantCheck3%, config.ini, %saver%, plantCheck3
    IniWrite, %plantChecker3%, config.ini, %saver%, plantChecker3
    IniWrite, %p1Choice2%, config.ini, %saver%, p1Choice2
    IniWrite, %p2Choice2%, config.ini, %saver%, p2Choice2
    IniWrite, %p3Choice2%, config.ini, %saver%, p3Choice2
    IniWrite, %p1Choice3%, config.ini, %saver%, p1Choice3
    IniWrite, %p2Choice3%, config.ini, %saver%, p2Choice3
    IniWrite, %p3Choice3%, config.ini, %saver%, p3Choice3
    IniWrite, %pl1Choice1%, config.ini, %saver%, pl1Choice1
    IniWrite, %pl1Choice2%, config.ini, %saver%, pl1Choice2
    IniWrite, %pl1Choice3%, config.ini, %saver%, pl1Choice3
    IniWrite, %pl2Choice1%, config.ini, %saver%, pl2Choice1
    IniWrite, %pl2Choice2%, config.ini, %saver%, pl2Choice2
    IniWrite, %pl2Choice3%, config.ini, %saver%, pl2Choice3
    IniWrite, %pl3Choice1%, config.ini, %saver%, pl3Choice1
    IniWrite, %pl3Choice2%, config.ini, %saver%, pl3Choice2
    IniWrite, %pl3Choice3%, config.ini, %saver%, pl3Choice3
    IniWrite, %FeastCheck%, config.ini, %saver%, FeastCheck
    IniWrite, %candlesCheck%, config.ini, %saver%, candlesCheck
    IniWrite, %antCheck%, config.ini, %saver%, antCheck
    IniWrite, %wreathCheck%, config.ini, %saver%, wreathCheck
    IniWrite, %polarCheck%, config.ini, %saver%, polarCheck
    IniWrite, %themeSelect%, config.ini, %saver%, themeSelect
    IniWrite, %stockingsCheck%, config.ini, %saver%, stockingsCheck
    IniWrite, %gPath%, config.ini, %saver%, gPath
    IniWrite, %hotbar2%, config.ini, %saver%, hotbar2
    IniWrite, %hotbar3%, config.ini, %saver%, hotbar3
    IniWrite, %hotbar4%, config.ini, %saver%, hotbar4
    WinGetPos , windowX, windowY, windowWidth, windowHeight, Zez Macro
    if (windowX && windowX > 0)
        IniWrite, %windowX%, config.ini, %saver%, x
    if (windowY && windowY > 0)
        IniWrite, %windowY%, config.ini, %saver%, y
    GuiControl,,saved,Saved!
    sleep 2000
    GuiControl,,saved,Save as
}
loader(){
    GuiControlGet, loader
    IniRead, cocoCheck, config.ini, %loader%, cocoCheck
    IniRead, treatCheck, config.ini, %loader%, treatCheck
    IniRead, honeyCheck, config.ini, %loader%, honeyCheck
    IniRead, blueCheck, config.ini, %loader%, blueCheck
    IniRead, redCheck, config.ini, %loader%, redCheck
    IniRead, bgSelect, config.ini, %loader%, bgSelect
    IniRead, rileyCheck, config.ini, %loader%, rileyCheck
    IniRead, antcCheck, config.ini, %loader%, antcCheck
    IniRead, gl1Choice1, config.ini, %loader%, gl1Choice1
    IniRead, gl1Choice2, config.ini, %loader%, gl1Choice2
    IniRead, gl1Choice3, config.ini, %loader%, gl1Choice3
    IniRead, gl2Choice1, config.ini, %loader%, gl2Choice1
    IniRead, gl2Choice2, config.ini, %loader%, gl2Choice2
    IniRead, gl2Choice3, config.ini, %loader%, gl2Choice3
    IniRead, gl3Choice1, config.ini, %loader%, gl3Choice1
    IniRead, gl3Choice2, config.ini, %loader%, gl3Choice2
    IniRead, gl3Choice3, config.ini, %loader%, gl3Choice3
    IniRead, buckoCheck, config.ini, %loader%, buckoCheck
    IniRead, questOR, config.ini, %loader%, questOR
    IniRead, shiftChoice, config.ini, %loader%, shiftChoice
    IniRead, size, config.ini, %loader%, size
    IniRead, vicCheck, config.ini, %loader%, vicCheck
    IniRead, lidCheck, config.ini, %loader%, lidCheck
    IniRead, nectarPreset, config.ini, %loader%, nPreset
    IniRead, serverAge, config.ini, %loader%, serverAge
    IniRead, variationAm, config.ini, %loader%, variation
    IniRead, mboostCheck, config.ini, %loader%, mboostCheck
    IniRead, bboostCheck, config.ini, %loader%, bboostCheck
    IniRead, rboostCheck, config.ini, %loader%, rboostCheck
    IniRead, gathTime, config.ini, %loader%, gathTime
    IniRead, sat, config.ini, %loader%, sat
    IniRead, atHive2, config.ini, %loader%, atHive2
    IniRead, atHive3, config.ini, %loader%, atHive3
    IniRead, atHive4, config.ini, %loader%, atHive4
    IniRead, gatherChoice1, config.ini, %loader%, gatherChoice1
    IniRead, gatherChoice3, config.ini, %loader%, gatherChoice3
    IniRead, convertCheck, config.ini, %loader%, convertCheck
    IniRead, mondoCheck, config.ini, %loader%, mondoCheck
    IniRead, wealthCheck, config.ini, %loader%, wealthCheck
    IniRead, samovarCheck, config.ini, %loader%, samovarCheck
    IniRead, p1Choice1, config.ini, %loader%, p1Choice1
    IniRead, p2Choice1, config.ini, %loader%, p2Choice1
    IniRead, p3Choice1, config.ini, %loader%, p3Choice1
    IniRead, pLink, config.ini, %loader%, pLink
    IniRead, ladybugCheck, config.ini, %loader%, ladybugCheck
    IniRead, rhinoCheck, config.ini, %loader%, rhinoCheck
    IniRead, scorpionCheck, config.ini, %loader%, scorpionCheck
    IniRead, mantisCheck, config.ini, %loader%, mantisCheck
    IniRead, spiderCheck, config.ini, %loader%, spiderCheck
    IniRead, wwolfCheck, config.ini, %loader%, wwolfCheck
    IniRead, slot, config.ini, %loader%, slot
    IniRead, speed, config.ini, %loader%, speed
    IniRead, graphics, config.ini, %loader%, graphics
    IniRead, resolution, config.ini, %loader%, resolution
    IniRead, aotCheck, config.ini, %loader%, aotCheck
    IniRead, gatherChoice2, config.ini, %loader%, gatherChoice2
    IniRead, plantCheck1, config.ini, %loader%, plantCheck1
    IniRead, plantChecker1, config.ini, %loader%, plantChecker1
    IniRead, plantCheck2, config.ini, %loader%, plantCheck2
    IniRead, plantChecker2, config.ini, %loader%, plantChecker2
    IniRead, plantCheck3, config.ini, %loader%, plantCheck3
    IniRead, plantChecker3, config.ini, %loader%, plantChecker3
    IniRead, p1Choice2, config.ini, %loader%, p1Choice2
    IniRead, p2Choice2, config.ini, %loader%, p2Choice2
    IniRead, p3Choice2, config.ini, %loader%, p3Choice2
    IniRead, p1Choice3, config.ini, %loader%, p1Choice3
    IniRead, p2Choice3, config.ini, %loader%, p2Choice3
    IniRead, p3Choice3, config.ini, %loader%, p3Choice3
    IniRead, pl1Choice1, config.ini, %loader%, pl1Choice1
    IniRead, pl1Choice2, config.ini, %loader%, pl1Choice2
    IniRead, pl1Choice3, config.ini, %loader%, pl1Choice3
    IniRead, pl2Choice1, config.ini, %loader%, pl2Choice1
    IniRead, pl2Choice2, config.ini, %loader%, pl2Choice2
    IniRead, pl2Choice3, config.ini, %loader%, pl2Choice3
    IniRead, pl3Choice1, config.ini, %loader%, pl3Choice1
    IniRead, pl3Choice2, config.ini, %loader%, pl3Choice2
    IniRead, pl3Choice3, config.ini, %loader%, pl3Choice3
    IniRead, FeastCheck, config.ini, %loader%, FeastCheck
    IniRead, candlesCheck, config.ini, %loader%, candlesCheck
    IniRead, antCheck, config.ini, %loader%, antCheck
    IniRead, wreathCheck, config.ini, %loader%, wreathCheck
    IniRead, polarCheck, config.ini, %loader%, polarCheck
    IniRead, themeSelect, config.ini, %loader%, themeSelect
    IniRead, stockingsCheck, config.ini, %loader%, stockingsCheck
    IniRead, gPath, config.ini, %loader%, gPath
    IniRead, hotbar2, config.ini, %loader%, hotbar2
    IniRead, hotbar3, config.ini, %loader%, hotbar3
    IniRead, hotbar4, config.ini, %loader%, hotbar4
    IniRead, x, config.ini, %loader%, x
    IniRead, y, config.ini, %loader%, y
    IniRead, cdelay, config.ini, %loader%, cdelay
    IniRead, hotbar5, config.ini, %loader%, hotbar5
    IniRead, hotbar6, config.ini, %loader%, hotbar6
    IniRead, hotbar7, config.ini, %loader%, hotbar7
    IniRead, atHive5, config.ini, %loader%, atHive5
    IniRead, atHive6, config.ini, %loader%, atHive6
    IniRead, atHive7, config.ini, %loader%, atHive7
    IniRead, microC, config.ini, %loader%, microC
    IniRead, whirli, config.ini, %loader%, whirli
    IniWrite, %microC%, config.ini, gui, microC
    IniWrite, %whirli%, config.ini, gui, whirli
    IniWrite, %hotbar5%, config.ini, gui, hotbar5
    IniWrite, %hotbar6%, config.ini, gui, hotbar6
    IniWrite, %hotbar7%, config.ini, gui, hotbar7
    IniWrite, %atHive5%, config.ini, gui, atHive5
    IniWrite, %atHive6%, config.ini, gui, atHive6
    IniWrite, %atHive7%, config.ini, gui, atHive7
    IniWrite, %cocoCheck%, config.ini, gui, cocoCheck
    IniWrite, %treatCheck%, config.ini, gui, treatCheck
    IniWrite, %honeyCheck%, config.ini, gui, honeyCheck
    IniWrite, %blueCheck%, config.ini, gui, blueCheck
    IniWrite, %redCheck%, config.ini, gui, redCheck
    IniWrite, %bgSelect%, config.ini, gui, bgSelect
    IniWrite, %rileyCheck%, config.ini, gui, rileyCheck
    IniWrite, %antcCheck%, config.ini, gui, antcCheck
    IniWrite, %gl1Choice1%, config.ini, gui, gl1Choice1
    IniWrite, %gl1Choice2%, config.ini, gui, gl1Choice2
    IniWrite, %gl1Choice3%, config.ini, gui, gl1Choice3
    IniWrite, %gl2Choice1%, config.ini, gui, gl2Choice1
    IniWrite, %gl2Choice2%, config.ini, gui, gl2Choice2
    IniWrite, %gl2Choice3%, config.ini, gui, gl2Choice3
    IniWrite, %gl3Choice1%, config.ini, gui, gl3Choice1
    IniWrite, %gl3Choice2%, config.ini, gui, gl3Choice2
    IniWrite, %gl3Choice3%, config.ini, gui, gl3Choice3
    IniWrite, %buckoCheck%, config.ini, gui, buckoCheck
    IniWrite, %cdelay%, config.ini, gui, cdelay
    IniWrite, %questOR%, config.ini, gui, questOR
    IniWrite, %shiftChoice%, config.ini, gui, shiftChoice
    IniWrite, %size%, config.ini, gui, size
    IniWrite, %vicCheck%, config.ini, gui, vicCheck
    IniWrite, %lidCheck%, config.ini, gui, lidCheck
    IniWrite, %nectarPreset%, config.ini, gui, nPreset
    IniWrite, %serverAge%, config.ini, gui, serverAge
    IniWrite, %variationAm%, config.ini, gui, variation
    IniWrite, %mboostCheck%, config.ini, gui, mboostCheck
    IniWrite, %bboostCheck%, config.ini, gui, bboostCheck
    IniWrite, %rboostCheck%, config.ini, gui, rboostCheck
    IniWrite, %gathTime%, config.ini, gui, gathTime
    IniWrite, %sat%, config.ini, gui, sat
    IniWrite, %atHive2%, config.ini, gui, atHive2
    IniWrite, %atHive3%, config.ini, gui, atHive3
    IniWrite, %atHive4%, config.ini, gui, atHive4
    IniWrite, %gatherChoice1%, config.ini, gui, gatherChoice1
    IniWrite, %gatherChoice3%, config.ini, gui, gatherChoice3
    IniWrite, %convertCheck%, config.ini, gui, convertCheck
    IniWrite, %mondoCheck%, config.ini, gui, mondoCheck
    IniWrite, %wealthCheck%, config.ini, gui, wealthCheck
    IniWrite, %samovarCheck%, config.ini, gui, samovarCheck
    IniWrite, %p1Choice1%, config.ini, gui, p1Choice1
    IniWrite, %p2Choice1%, config.ini, gui, p2Choice1
    IniWrite, %p3Choice1%, config.ini, gui, p3Choice1
    IniWrite, %pLink%, config.ini, gui, pLink
    IniWrite, %ladybugCheck%, config.ini, gui, ladybugCheck
    IniWrite, %rhinoCheck%, config.ini, gui, rhinoCheck
    IniWrite, %scorpionCheck%, config.ini, gui, scorpionCheck
    IniWrite, %mantisCheck%, config.ini, gui, mantisCheck
    IniWrite, %spiderCheck%, config.ini, gui, spiderCheck
    IniWrite, %wwolfCheck%, config.ini, gui, wwolfCheck
    IniWrite, %slot%, config.ini, gui, slot
    IniWrite, %speed%, config.ini, gui, speed
    IniWrite, %graphics%, config.ini, gui, graphics
    IniWrite, %resolution%, config.ini, gui, resolution
    IniWrite, %aotCheck%, config.ini, gui, aotCheck
    IniWrite, %gatherChoice2%, config.ini, gui, gatherChoice2
    IniWrite, %plantCheck1%, config.ini, gui, plantCheck1
    IniWrite, %plantChecker1%, config.ini, gui, plantChecker1
    IniWrite, %plantCheck2%, config.ini, gui, plantCheck2
    IniWrite, %plantChecker2%, config.ini, gui, plantChecker2
    IniWrite, %plantCheck3%, config.ini, gui, plantCheck3
    IniWrite, %plantChecker3%, config.ini, gui, plantChecker3
    IniWrite, %p1Choice2%, config.ini, gui, p1Choice2
    IniWrite, %p2Choice2%, config.ini, gui, p2Choice2
    IniWrite, %p3Choice2%, config.ini, gui, p3Choice2
    IniWrite, %p1Choice3%, config.ini, gui, p1Choice3
    IniWrite, %p2Choice3%, config.ini, gui, p2Choice3
    IniWrite, %p3Choice3%, config.ini, gui, p3Choice3
    IniWrite, %pl1Choice1%, config.ini, gui, pl1Choice1
    IniWrite, %pl1Choice2%, config.ini, gui, pl1Choice2
    IniWrite, %pl1Choice3%, config.ini, gui, pl1Choice3
    IniWrite, %pl2Choice1%, config.ini, gui, pl2Choice1
    IniWrite, %pl2Choice2%, config.ini, gui, pl2Choice2
    IniWrite, %pl2Choice3%, config.ini, gui, pl2Choice3
    IniWrite, %pl3Choice1%, config.ini, gui, pl3Choice1
    IniWrite, %pl3Choice2%, config.ini, gui, pl3Choice2
    IniWrite, %pl3Choice3%, config.ini, gui, pl3Choice3
    IniWrite, %FeastCheck%, config.ini, gui, FeastCheck
    IniWrite, %candlesCheck%, config.ini, gui, candlesCheck
    IniWrite, %antCheck%, config.ini, gui, antCheck
    IniWrite, %wreathCheck%, config.ini, gui, wreathCheck
    IniWrite, %polarCheck%, config.ini, gui, polarCheck
    IniWrite, %themeSelect%, config.ini, gui, themeSelect
    IniWrite, %stockingsCheck%, config.ini, gui, stockingsCheck
    IniWrite, %gPath%, config.ini, gui, gPath
    IniWrite, %hotbar2%, config.ini, gui, hotbar2
    IniWrite, %hotbar3%, config.ini, gui, hotbar3
    IniWrite, %hotbar4%, config.ini, gui, hotbar4
    IniWrite, %x%, config.ini, gui, x
    IniWrite, %y%, config.ini, gui, y
    rButton_()
}
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;; gui close
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
GetOut:
GuiClose:
WinGetPos , windowX, windowY, windowWidth, windowHeight, Zez Macro
if (windowX && windowX > 0)
    IniWrite, %windowX%, config.ini, gui, x
if (windowY && windowY > 0)
    IniWrite, %windowY%, config.ini, gui, y
Gui, Hide
SkinForm(0)
ExitApp
return
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;; hotkeys
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
f3:: 
rButton_()
return
f2::
pause
return
f1::
Start_()
return
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;; function lib
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
boosting(hive:=false){
    GuiControlGet, hotbar2
    GuiControlGet, hotbar3
    GuiControlGet, hotbar4
    GuiControlGet, hotbar5
    GuiControlGet, hotbar6
    GuiControlGet, hotbar7
    hotbars := [hotbar2,hotbar3,hotbar4,hotbar5,hotbar6,hotbar7]
    for i, hot in hotbars{
        hotTimer := 0
        if (hot && hot != "select" && hot != "none"){
            if (hot = "9 seconds")
                hotTimer := 9
            if (hot = "30 seconds")
                hotTimer := 30
            if (hot = "45 seconds")
                hotTimer := 45
            if (hot = "1 minute")
                hotTimer := 60
            if (hot = "5 minutes")
                hotTimer := 300
            if (hot = "10 minutes")
                hotTimer := 600
            if (hot = "15 minutes")
                hotTimer := 915
            if (hot = "20 minutes")
                hotTimer := 1200
            if (hot = "30 minutes")
                hotTimer := 1800
        }
        indexer := i + 1
        GuiControlGet, atHive%indexer%
        if (hotTimer && hive && atHive%i% = "yes"){
            IniRead, hotbar%indexer%Timer, config.ini, other, hotbar%indexer%Timer
            if (toUnix_() - hotbar%indexer%Timer > hotTimer){
                send %indexer%
                newTime := toUnix_()
                IniWrite, %newTime%, config.ini, other, hotbar%indexer%Timer
            }
        }
        if (hotTimer && not hive && atHive%indexer% = "no"){
            IniRead, hotbar%indexer%Timer, config.ini, other, hotbar%indexer%Timer
            if (toUnix_() - hotbar%indexer%Timer > hotTimer){
                send %indexer%
                newTime := toUnix_()
                IniWrite, %newTime%, config.ini, other, hotbar%indexer%Timer
            }
        }
    }
}
jumpPlace(){
    send {space down}
    sleep, 150
    send 1
    sleep, 200
    send {space up}
    sleep, 1500
}
tKills(number){
    global totalKills
    totalKills := totalKills + number
}
updateStats(){
    global totalTime
    global totalGath
    global totalCon
    global totalKills
    global totalQuests
    global totalDcs
    global machineStart
    global totalPlants
    totalTime := toUnix_() - machineStart
    string := "Stats:`nTotal Runtime: " . FormatSeconds(totalTime) . "`nTotal Gathering Time: " . FormatSeconds(totalGath) . "`nTotal Converting Time: " . FormatSeconds(totalCon) . "`nTotal Planters Collected: " . totalPlants . "`nTotal Kills: " . totalKills . "`nTotal Quests Complete: " . totalQuests . "`nTotal Disconnects: " . totalDcs
    GuiControl,,stats,%string%
    return string
}
FormatSeconds(NumberOfSeconds)
{
    time := 19990101
    time += NumberOfSeconds, seconds
    FormatTime, mmss, %time%, mm:ss
    return NumberOfSeconds//3600 ":" mmss
}
activeHoney(){
    WinGetPos , windowX, windowY, windowWidth, windowHeight, Roblox
    wwi := (windowWidth / 2) - 75
    wwi2 := windowWidth / 2
    PixelSearch, bx2, by2, wwi, 0, wwi2, 70, 0x80E3FF, 10, Fast
    if ErrorLevel
        return false
    else {
        return true
    }
}
searchforE_(){
    ret := false
    send {d down}
    sleep, 500
    send {d up}
    sleep, 1000
    searchRet := wrappedSearch("e_button.png",10,"high")
    If (searchRet[1] = 0)
        return searchRet
    send {w down}
    sleep, 500
    send {w up}
    sleep, 1000
    searchRet := wrappedSearch("e_button.png",10,"high")
    If (searchRet[1] = 0)
        return searchRet
    loop 2 {
        send {a down}
        sleep, 500
        send {a up}
        sleep, 1000
        searchRet := wrappedSearch("e_button.png",10,"high")
        If (searchRet[1] = 0)
            return searchRet
    }
    loop 2 {
        send {s down}
        sleep, 500
        send {s up}
        sleep, 1000
        searchRet := wrappedSearch("e_button.png",10,"high")
        If (searchRet[1] = 0)
            return searchRet
    }
    loop 2 {
        send {d down}
        sleep, 500
        send {d up}
        sleep, 1000
        searchRet := wrappedSearch("e_button.png",10,"high")
        If (searchRet[1] = 0)
            return searchRet
    }
    return false
}
wrappedSearch(fileName,v,aim := "full"){
    updateStats()
    global graphicsKey
    global resolutionKey
    WinGetPos , windowX, windowY, windowWidth, windowHeight, Roblox
    xi := 0
    yi := 0
    if (windowWidth){
        ww := windowWidth
        wh := windowHeight
        if (aim = "low")
            yi := windowHeight / 2
        if (aim = "high")
            wh := windowHeight / 2
        if (aim = "lowright") {
            yi := windowHeight / 2
            si := windowWidth / 2
        }
    }
    ImageSearch, FoundX, FoundY, xi, yi, ww, wh, *%v% image_assets\%resolutionKey%\%graphicsKey%\%fileName%
    if (ErrorLevel = 2){
        MsgBox Image file %filename% was not found
        pause
    }
    return [ErrorLevel,FoundX,FoundY]
}
statusUpdate(event){
    GuiControl,,status,Status: %event%
    GuiControl,,status2,Status: %event%
    FileDelete status.txt
    FileAppend %event%, status.txt
}
tButton_(){
    saveConfig_()
    rButton_()
}
rButton_(){
    SetKeyDelay, 0
    click, up
    send {w up}
    send {a up}
    send {s up}
    send {d up}
    reload
}
toUnix_(){
    Time := A_NowUTC
    EnvSub, Time, 19700101000000, Seconds
    return Time
}
mondoDo_(){
    if (A_Min = 00){
        GuiControlGet, mondoCheck
        if (mondoCheck = 1){
            Mondo_()
        }
    }
}
sendSpace(){
    send {space down}
    sleep, 50
    send {space up}
}
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;; disconnect
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
anyHive := false
dcCheck_(){
    If (wrappedSearch("disconnected.png",25)[1] = 0){
        statusUpdate("Disconnected")
        global totalDcs
        totalDcs := totalDcs + 1
        wealthCooldown := toUnix_()
        IniWrite, %wealthCooldown%, config.ini, other, clockCooldown
        Disconnect_()
    }
    return false
}
Disconnect_(){
    disconnectbegin:
    GuiControlGet, pLink
    StringLen, editCheck, pLink
    if (editCheck > 0){
        WinClose, Roblox
        run, %pLink%
    }
    else {
        recI := wrappedSearch("rejoin.png",20)
        MouseMove, recI[2],recI[3]
        click
    }
    statusUpdate("Attempted To Connect")
    GuiControlGet, cdelay
    sleep, cdelay * 1000
    if (editCheck > 0){
        browsers := ["msedge.exe","chrome.exe","ieplore.exe","firefox.exe","opera.exe","brave.exe"]
        for i, value in browsers {
            if (WinExist("ahk_exe "value)){
                winactivate, ahk_exe %value%
                winwaitactive, ahk_exe %value%
                send ^w
            }
        }
    }
    sleep, 3000
    if not WinExist("Roblox"){
        goto disconnectbegin
    }
    errorCount := 0
    cHive:
    winactivate, Roblox
    statusUpdate("Claiming Hive")
    send {w down}
    sleep, 5000
    send {w up}
    GuiControlGet, slot
    global anyHive
    if (anyHive)
        slot := 1
    if (slot = 1){
        send {d down}
        sleep, 5000
        send {d up}
        send {a down}
        send {s down}
        sleep 650
        send {a up}
        send {s up}
    }
    else {
        send {s down}
        sleep 700
        send {s up}
    }
    if (slot = 2){
        send {d down}
        sleep, 1400
        send {d up}
    }
    if (slot > 3){
        send {a down}
        sleep, 1000
        send {a up}
    }
    if (slot > 4){
        send {a down}
        sleep, 1100
        send {a up}
    }
    if (slot > 5){
        send {a down}
        sleep, 1100
        send {a up}
    }
    sleep, 1000
    If (wrappedSearch("e_button.png",30,"high")[1] = 1){
        dcCheck_()
        send {esc}
        send r
        send {enter}
        sleep,8000
        if (errorCount > 1){
            global anyHive
            anyHive := true
            GuiControl,choose,slot,7
            send {w down}
            sleep, 5000
            send {w up}
            send {d down}
            sleep, 5000
            send {d up}
            send {a down}
            send {s down}
            sleep 650
            send {a up}
            send {s up}
            loopcounter := 0
            while (wrappedSearch("e_button.png",30,"high")[1] = 1){
                if (loopcounter > 30){
                    send {esc}
                    send r
                    send {enter}
                    sleep, 8000
                    goto cHive
                }
                send {a down}
                sleep, 200
                send {a up}
                sleep, 200
                loopcounter := loopcounter + 1
            }
            if (wrappedSearch("e_button.png",30,"high")[1] = 0){
                send e
                sleep, 1000
                GuiControlGet, convertCheck
                return
            }
        }
        if (errorCount > 4){
            if (editCheck < 1){
                MsgBox "failed to reconnect and claim hive. unable to continue without a server link"
                pause
            }
            goto disconnectbegin
        }
        errorCount := errorCount + 1
        goto cHive
    }
    send e
    sleep, 1000
    GuiControlGet, convertCheck
    return
}
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;; macro start / main loop
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
hicLoc := false
Start_(){
    serverStart := toUnix_()
    while(1) {
        updateStats()
        startbegin:
        GuiControlGet, serverAge
        if (serverAge && serverAge != "never" && toUnix_() - serverStart > serverAge * 60 * 60){
            serverStart := toUnix_()
            Disconnect_()
        }
        statusUpdate("Startup")
        SetKeyDelay , 50
        GuiControlGet, gatherChoice1
        click, up
        send {w up}
        send {a up}
        send {s up}
        send {d up}
        GuiControlGet, convertCheck
        GuiControlGet, pLink
        if (convertCheck = "rejoin convert" && !plink){
            MsgBox To use rejoin convert, you must enter a private link into the GUI.`nif you dont have one, check my read me file for some free servers
            pause
            return
        }
        sleep,500
        if not WinExist("Roblox"){
            statusUpdate("Disconnected")
            GuiControlGet, pLink
            if (pLink){
                Disconnect_()
                goto startbegin
            }
            else {
                MsgBox "couldnt find roblox client"
                return
            }
        }
        winactivate, Roblox
        sleep,500
        dcCheck_()
        Reset_(true)
        mondoDo_()
        GuiControlGet, polarCheck
        GuiControlGet, buckoCheck
        GuiControlGet, rileyCheck
        if (polarCheck || buckoCheck || rileyCheck){
            loop 3 {
                doPolar_()
                bugRun_()
                doBucko_()
                bugRun_()
                doRiley_()
                bugRun_()
            }
        }
        planterDo_()
        IniRead, clockCooldown, config.ini, other, clockCooldown
        GuiControlGet, wealthCheck
        if (wealthCheck = 1 && toUnix_() - clockCooldown > 3600)
            Wealth_()
        mondoDo_()
        IniRead, stockingsCooldown, config.ini, other, stockingsCooldown
        GuiControlGet, stockingsCheck
        if (stockingsCheck = 1 && toUnix_() - stockingsCooldown > 3600){
            Reset_()
            toCannon_()
            toStockings_()
        }
        mondoDo_()
        IniRead, samovarCooldown, config.ini, other, samovarCooldown
        GuiControlGet, samovarCheck
        if (samovarCheck = 1 && toUnix_() - samovarCooldown > 21600)
            Samovar_()
        mondoDo_()
        IniRead, feastCooldown, config.ini, other, feastCooldown
        GuiControlGet, feastCheck
        if (feastCheck = 1 && toUnix_() - feastCooldown > 5400){
            Reset_()
            toCannon_()
            toFeast_()
        }
        mondoDo_()
        IniRead, candlesCooldown, config.ini, other, candlesCooldown
        GuiControlGet, candlesCheck
        if (candlesCheck = 1 && toUnix_() - candlesCooldown > 14400){
            Reset_()
            toCannon_()
            toCandles_()
        }
        mondoDo_()
        IniRead, wreathCooldown, config.ini, other, wreathCooldown
        GuiControlGet, wreathCheck
        if (wreathCheck = 1 && toUnix_() - wreathCooldown > 1800){
            Reset_()
            toCannon_()
            toWreath_()
        }
        mondoDo_()
        IniRead, antCooldown, config.ini, other, antCooldown
        GuiControlGet, antCheck
        if (antCheck = 1 && toUnix_() - antCooldown > 7200){
            Reset_()
            toCannon_()
            toAnt_()
        }
        mondoDo_()
        IniRead, rboostTimer, config.ini, other, rboostTimer
        GuiControlGet, rboostCheck
        if (rboostCheck = 1 && toUnix_() - rboostTimer > 3600){
            Reset_()
            toCannon_()
            toRedBoost_()
        }
        mondoDo_()
        IniRead, bboostTimer, config.ini, other, bboostTimer
        GuiControlGet, bboostCheck
        if (bboostCheck = 1 && toUnix_() - bboostTimer > 3600){
            Reset_()
            toCannon_()
            toBlueBoost_()
        }
        mondoDo_()
        IniRead, mboostTimer, config.ini, other, mboostTimer
        GuiControlGet, mboostCheck
        if (mboostCheck = 1 && toUnix_() - mboostTimer > 3600){
            Reset_()
            toCannon_()
            toMBoost_()
        }
        mondoDo_()
        IniRead, lidCooldown, config.ini, other, lidCooldown
        GuiControlGet, lidCheck
        if (lidCheck = 1 && toUnix_() - lidCooldown > 28800){
            Reset_()
            toCannon_()
            toLid_()
        }
        mondoDo_()
        IniRead, cocoCooldown, config.ini, other, cocoCooldown
        GuiControlGet, cocoCheck
        if (cocoCheck = 1 && toUnix_() - cocoCooldown > 14400){
            Reset_()
            toCannon_()
            toCoco_()
        }
        mondoDo_()
        IniRead, honeyCooldown, config.ini, other, honeyCooldown
        GuiControlGet, honeyCheck
        if (honeyCheck = 1 && toUnix_() - honeyCooldown > 3600){
            Reset_()
            toHoney_()
        }
        mondoDo_()
        IniRead, treatCooldown, config.ini, other, treatCooldown
        GuiControlGet, treatCheck
        if (treatCheck = 1 && toUnix_() - treatCooldown > 3600){
            Reset_()
            toCannon_()
            toTreat_()
        }
        mondoDo_()
        IniRead, blueCooldown, config.ini, other, blueCooldown
        GuiControlGet, blueCheck
        if (blueCheck = 1 && toUnix_() - blueCooldown > 14400){
            Reset_()
            toCannon_()
            toBlue_()
        }
        mondoDo_()
        IniRead, redCooldown, config.ini, other, redCooldown
        GuiControlGet, redCheck
        if (redCheck = 1 && toUnix_() - redCooldown > 14400){
            Reset_()
            toCannon_()
            toRed_()
        }
        mondoDo_()
        if (polarCheck || buckoCheck || rileyCheck){
            loop 3 {
                doPolar_()
                bugRun_()
                doBucko_()
                bugRun_()
                doRiley_()
                bugRun_()
            }
        }
        else
            bugRun_()
        if (gatherChoice1 && gatherChoice1 != "select" && gatherChoice1 != "none")
            goGather_()
    }
}
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;; planter code
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
planterDo_(){
    IniRead, p1Switch, config.ini, other, p1Switch
    IniRead, p2Switch, config.ini, other, p2Switch
    IniRead, p3Switch, config.ini, other, p3Switch
    planterS := [p1Switch,p2Switch,p3Switch]
    for i, pli in planterS {
        GuiControlGet, plantChecker%i%
        plantTime := 0
        if (plantChecker%i% = "every 30 minutes")
            plantTime := 1800
        if (plantChecker%i% = "every hour")
            plantTime := 3600
        if (plantChecker%i% = "every 2 hours")
            plantTime := 7200
        if (plantChecker%i% = "every 3 hours")
            plantTime := 10800
        if (plantChecker%i% = "every 4 hours")
            plantTime := 14400
        if (plantChecker%i% = "every 5 hours")
            plantTime := 18000
        if (plantChecker%i% = "every 6 hours")
            plantTime := 21600
        IniRead, p%i%Timer, config.ini, other, p%i%Timer
        GuiControlGet, p%i%Choice%pli%
        if (p%i%Choice%pli% && p%i%Choice%pli% != "none" && p%i%Choice%pli% != "select" && toUnix_() - p%i%Timer > plantTime){
            needPlant := planter_(p%i%Choice%pli%,i,pli)
            if (needPlant){
                pli := pli + 1
                GuiControlGet, p%i%Choice%pli%
                if (not p%i%Choice%pli% || p%i%Choice%pli% = "none" || p%i%Choice%pli% = "select"){
                    pli := 1
                    GuiControlGet, p%i%Choice%pli%
                }
                IniWrite, %pli%, config.ini, other, p%i%Switch
                newStat := p%i%Choice%pli%
                GuiControl,,currentp%i%Field,Current Field:`n%newStat%
                planter_(p%i%Choice%pli%,i,pli)
                GuiControlGet, gl%i%Choice%pli%
                gkey := gl%i%Choice%pli%
                if (gkey && gkey != "none"){
                    send %gkey%
                }
            }
            newtime := toUnix_()
            IniWrite, %newtime%, config.ini, other, p%i%Timer
        }
        mondoDo_()
    }
}
Planter_(which,i,pli){
    planterbegin:
    Reset_()
    sleep, 5000
    GuiControlGet, pl%i%Choice%pli%
    GuiControlGet, gl%i%Choice%pli%
    key := pl%i%Choice%pli%
    gkey := gl%i%Choice%pli%
    toCannon_()
    pLogic_(which)
    statusUpdate("Checking Planter in "which)
    sleep, 2000
    if (key != "none")
        send %key%
    sleep, 500
    findPlanter := wrappedSearch("e_button.png",10)
    if (findPlanter[1] = 1){
        findPlanter := searchforE_()
    }
    if (findPlanter && findPlanter[1] = 0){
        send, e
        sleep, 4000
        GuiControlGet, plantCheck%i%
        if (plantCheck%i% = "full grown"){
            imgPos := wrappedSearch("no.png",30)
            If (imgPos[1] = 0){
                statusUpdate("Planter Not Ready")
                MouseMove, (imgPos[2] + 10), (imgPos[3] + 10)
                Click
                sleep, 10000
                return False
            }
        }
        imgPos := wrappedSearch("yes.png",30)
        If (imgPos[1] = 0){
            MouseMove, (imgPos[2] + 10), (imgPos[3] + 10)
            Click
        }
        statusUpdate("Gathering Planter Loot")
        global totalPlants
        totalPlants := totalPlants + 1
        GuiControlGet, p%i%Choice%pli%
        pli := pli+1
        GuiControlGet, p%i%Choice%pli%
        if ((not p%i%Choice%pli% || p%i%Choice%pli% = "none" || p%i%Choice%pli% = "select") && pli > 2){
            pli := 1
            GuiControlGet, p%i%Choice%pli%
        }
        if ((pli = 2 && (not p%i%Choice%pli% || p%i%Choice%pli% = "none" || p%i%Choice%pli% = "select")) || p%i%Choice%pli% = which){
            sleep, 3000
            send %key%
            if (gkey && gkey != "none"){
                sleep, 500
                send %gkey%
            }
        }
        gatherLoot_()
        imgPos := wrappedSearch("no.png",30)
        If (imgPos[1] = 0){
            MouseMove, (imgPos[2] + 10), (imgPos[3] + 10)
            Click
            sleep, 1000
            return False
        }
        if (p%i%Choice%pli% && p%i%Choice%pli% != "none" && p%i%Choice%pli% != "select" && p%i%Choice%pli% != "which")
            return True
        else
            return False
    }
    sleep, 5000
}
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;; reset w/ convert
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
Reset_(convert:=False){
    updateStats()
    global hicLoc
    if (hicLoc) {
        global hicLoc := false
        goto resetend
    }
    errorCount := 0
    while(1){
        WinGetPos , windowX, windowY, windowWidth, windowHeight, Roblox
        wx := windowWidth / 2
        MouseMove, wx,10
        dcCheck_()
        imgPos := wrappedSearch("no.png",30)
        If (imgPos[1] = 0){
            MouseMove, (imgPos[2] + 10), (imgPos[3] + 10)
            Click
            sleep, 1000
        }
        imgPos := wrappedSearch("keep.png",30)
        If (imgPos[1] = 0){
            MouseMove, (imgPos[2] + 10), (imgPos[3] + 10)
            Click
            sleep, 1000
        }
        statusUpdate("Resetting")
        SetKeyDelay , 150
        send {esc}
        send r
        send {enter}
        SetKeyDelay , 100
        sleep,8000
        statusUpdate("Setting Camera Angle")
        GuiControlGet, variationAm
        loop, 60 {
            If (wrappedSearch("hive.png",variationAm,"low")[1] = 0){
                send ....oooo
	            goto resetend
            }
            If (wrappedSearch("hive2.png",variationAm,"low")[1] = 0){
                send ....oooo
	            goto resetend
            }
            send .
        }
        if (errorCount > 4){
            Disconnect_()
            errorCount := 0
        }
        errorCount := errorCount + 1
    }
    resetend:
    IniRead, lastconv, config.ini, other, lastconv
    if (convert || toUnix_() - lastconv > 1800){
        if (convert)
            global hicLoc := true
        GuiControlGet, mondoCheck
        GuiControlGet, convertCheck
        if (convertCheck != "none"){
            If (wrappedSearch("e_button.png",30,"high")[1] = 0){
                convertStartTime := toUnix_()
                send e
                IniWrite, %convertStartTime%, config.ini, other, lastconv
                statusUpdate("Converting Pollen")
                breakTimer := A_TickCount
                honeybreak := false
                while(1){
                    If (wrappedSearch("e_button.png",30,"high")[1] = 1){
                        break
                    }
                    if (not activeHoney()){
                        if (honeybreak){
                            if (toUnix_() - honeybreak > 60)
                                break
                        }
                        else
                            honeybreak := toUnix_()
                    }
                    else    
                        honeybreak := false
                    if (A_Min = 00 && mondoCheck)
                        afterMondo := true
                    if (A_TickCount - breakTimer > 900000)
                        break
                    boosting(true)
                    sleep, 1000
                }
                global totalCon
                totalCon := totalCon + (toUnix_() - convertStartTime)
                if (afterMondo && mondoCheck){
                    SetKeyDelay, 50
                    toCannon_()
                    toMondo_()
                    statusUpdate("Attacking Mondo")
                    sleep, 120000
                    Reset_()
                }
            }
        }
    }
    if (not convertCheck || convertCheck = "none")
        sleep, 7000
    SetKeyDelay , 50
}
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;; loot gather movement
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
gatherLoot_(){
    send {d down}
    send {s down}
    sleep, 800
    send {d up}
    send {s up}
    SetKeyDelay, 0
    loop 3 {
        send {w down}
        sleep, 1250
        send {a down}
        send {w up}
        sleep, 100
        send {s down}
        send {a up}
        sleep, 1250
        send {a down}
        send {s up}
        sleep, 100
        send {a up}
    }
    loop 3 {
        send {w down}
        sleep, 1250
        send {d down}
        send {w up}
        sleep, 100
        send {s down}
        send {d up}
        sleep, 1250
        send {d down}
        send {s up}
        sleep, 100
        send {d up}
    }
    SetKeyDelay, 50
}
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;; bug run code
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
killCounter_(bug,amount){
    PQA := pqaCreate()
    BQA := bqaCreate()
    questList := questList_()
    for key, value in questList.polar[PQA.title] {
        if (InStr(key,"killcount") && value[1] = bug){
            IniRead, killcount, config.ini, quests, %key%
            killcount := killcount + amount
            IniWrite, %killcount%, config.ini, quests, %key%
            PQA := pqaCreate()
            pqaT := questFormat_(PQA)
            GuiControl,,polarLog,Current Polar Quest: `n%pqaT%
        }
    }
    for key, value in questList.bucko[BQA.title] {
        if (InStr(key,"killcount") && value[1] = bug){
            IniRead, killcount, config.ini, bquests, %key%
            killcount := killcount + amount
            IniWrite, %killcount%, config.ini, bquests, %key%
            BQA := bqaCreate()
            bqaT := questFormat2_(BQA)
            GuiControl,,buckoLog,Current Bucko Quest: `n%bqaT%
        }
    }
    updateStats()
}
bugRun_(){
    PQA := pqaCreate()
    mobs := {wwolf:3600,spider:1800,scorpion:1200,mantis:1200,ladybug:300,rhino:300,king:86400,tunnel:172800}
    GuiControlGet, vicCheck
    if (vicCheck){
        for key, value in mobs {
            value := value - (15 * value / 100)
            mobs[key] := value
        }
    }
    GuiControlGet, wwolfCheck
    GuiControlGet, mantisCheck
    GuiControlGet, spiderCheck
    GuiControlGet, scorpionCheck
    GuiControlGet, ladybugCheck
    GuiControlGet, rhinoCheck
    GuiControlGet, antcCheck
    if (antcCheck){
        IniRead, antCooldown, config.ini, other, antCooldown
        if (toUnix_() - antCooldown > 7200){
            Reset_()
            sleep,10000
            toCannon_()
            toAnt_()
        }
    }
    if (wwolfCheck){
        IniRead, pumpkinCooldown, config.ini, mobs, pumpkinCooldown
        IniRead, pineCooldown, config.ini, mobs, pineCooldown
        if (toUnix_() - pumpkinCooldown > mobs.wwolf){
            Reset_()
            sleep,10000
            toCannon_()
            pLogic_("pine tree",false)
            statusUpdate("Killing Werewolf")
            pumpkinCooldown := toUnix_()
            killCounter_("wwolf",1)
            tKills(1)
            IniWrite, %pumpkinCooldown%, config.ini, mobs, pumpkinCooldown
            if (toUnix_() - pineCooldown > mobs.mantis){
                pineCooldown := toUnix_()
                killCounter_("mantis",2)
                tKills(2)
                IniWrite, %pineCooldown%, config.ini, mobs, pineCooldown
            }
            send {d down}
            sleep, 1000
            send {d up}
            send {s down}
            sleep, 1000
            send {s up}
            sleep,10000
            gatherLoot_()
        }
    }
    if (scorpionCheck){
        IniRead, roseCooldown, config.ini, mobs, roseCooldown
        if (toUnix_() - roseCooldown > mobs.scorpion){
            Reset_()
            sleep,10000
            toCannon_()
            pLogic_("rose",false)
            statusUpdate("Killing scorpions")
            roseCooldown := toUnix_()
            IniWrite, %roseCooldown%, config.ini, mobs, roseCooldown
            killCounter_("scorpion",2)
            tKills(2)
            sleep,10000
            gatherLoot_()
        }
    }
    if (mantisCheck){
        IniRead, pineappleCooldown, config.ini, mobs, pineappleCooldown
        IniRead, pineCooldown, config.ini, mobs, pineCooldown
        IniRead, pumpkinCooldown, config.ini, mobs, pumpkinCooldown
        if (toUnix_() - pineappleCooldown > mobs.mantis){
            Reset_()
            sleep,10000
            toCannon_()
            pLogic_("pineapple",false)
            statusUpdate("Killing mantis")
            pineappleCooldown := toUnix_()
            IniWrite, %pineappleCooldown%, config.ini, mobs, pineappleCooldown
            killCounter_("mantis",1)
            tKills(1)
            if (toUnix_() - pineappleCooldown > mobs.rhino){
                killCounter_("rhino",1)
                tKills(1)
            }
            sleep,10000
            gatherLoot_()
        }
        if (toUnix_() - pineCooldown > mobs.mantis){
            Reset_()
            sleep,10000
            toCannon_()
            pLogic_("pine tree",false)
            statusUpdate("Killing mantis")
            pineCooldown := toUnix_()
            IniWrite, %pineCooldown%, config.ini, mobs, pineCooldown
            killCounter_("mantis",2)
            tKills(2)
            if (toUnix_() - pumpkinCooldown > mobs.wwolf){
                killCounter_("wwolf",1)
                tKills(1)
                pumpkinCooldown := toUnix_()
                IniWrite, %pumpkinCooldown%, config.ini, mobs, pumpkinCooldown
            }
            sleep,10000
            gatherLoot_()
        }
    }
    if (spiderCheck){
        IniRead, spiderCooldown, config.ini, mobs, spiderCooldown
        IniRead, strawberryCooldown, config.ini, mobs, strawberryCooldown
        IniRead, bambooCooldown, config.ini, mobs, bambooCooldown
        IniRead, mushroomCooldown, config.ini, mobs, mushroomCooldown
        IniRead, bluefCooldown, config.ini, mobs, bluefCooldown
        if (toUnix_() - spiderCooldown > mobs.spider){
            Reset_()
            sleep,5000
            toCannon_()
            pLogic_("spider",false)
            statusUpdate("Killing spider")
            spiderCooldown := toUnix_()
            IniWrite, %spiderCooldown%, config.ini, mobs, spiderCooldown
            killCounter_("spider",1)
            tKills(1)
            sleep,10000
            gatherLoot_()
            if (ladybugCheck && toUnix_() - strawberryCooldown > mobs.ladybug){
                send {w down}
                sleep, 6000
                send {w up}
                send {a down}
                sleep, 5000
                sendSpace()
                sleep, 6000
                send {a up}
                strawberryCooldown := toUnix_()
                IniWrite, %strawberryCooldown%, config.ini, mobs, strawberryCooldown
                killCounter_("ladybug",2)
                tKills(2)
                gatherLoot_()
                if (toUnix_() - mushroomCooldown > mobs.ladybug){
                    send {a down}
                    sleep, 6000
                    send {a up}
                    send {s down}
                    sleep, 5000
                    sendSpace()
                    sleep, 300
                    send {s up}
                    send {d down}
                    sleep 3000
                    send {d up}
                    send {s down}
                    sleep, 1000
                    send {s up}
                    mushroomCooldown := toUnix_()
                    IniWrite, %mushroomCooldown%, config.ini, mobs, mushroomCooldown
                    killCounter_("ladybug",1)
                    tKills(1)
                    gatherLoot_()
                }
            }
            else if (rhinoCheck && toUnix_() - bambooCooldown > mobs.rhino){
                send {w down}
                sleep, 6000
                send {w up}
                send {s down}
                sleep, 700
                send {s up}
                send {d down}
                sleep, 5000
                send {d up}
                bambooCooldown := toUnix_()
                IniWrite, %bambooCooldown%, config.ini, mobs, bambooCooldown
                killCounter_("rhino",2)
                tKills(2)
                gatherLoot_()
                if (toUnix_() - bluefCooldown > mobs.rhino){
                    send {d down}
                    sleep, 6000
                    send {d up}
                    send {s down}
                    sleep, 7000
                    send {s up}
                    send {a down}
                    sleep 5000
                    send {a up}
                    bluefCooldown := toUnix_()
                    IniWrite, %bluefCooldown%, config.ini, mobs, bluefCooldown
                    killCounter_("rhino",1)
                    tKills(1)
                    gatherLoot_()
                }
            }
        }
    }
    if (ladybugCheck){
        IniRead, mushroomCooldown, config.ini, mobs, mushroomCooldown
        IniRead, strawberryCooldown, config.ini, mobs, strawberryCooldown
        IniRead, cloverCooldown, config.ini, mobs, cloverCooldown
        if (toUnix_() - strawberryCooldown > mobs.ladybug){
            Reset_()
            sleep,5000
            toCannon_()
            pLogic_("strawberry",false)
            statusUpdate("Killing ladybug")
            strawberryCooldown := toUnix_()
            IniWrite, %strawberryCooldown%, config.ini, mobs, strawberryCooldown
            killCounter_("ladybug",2)
            tKills(2)
            sleep,10000
            gatherLoot_()
            if (toUnix_() - mushroomCooldown > mobs.ladybug){
                send {a down}
                sleep, 6000
                send {a up}
                send {s down}
                sleep, 5000
                sendSpace()
                sleep, 300
                send {s up}
                send {d down}
                sleep 3000
                send {d up}
                send {s down}
                sleep, 1000
                send {s up}
                mushroomCooldown := toUnix_()
                IniWrite, %mushroomCooldown%, config.ini, mobs, mushroomCooldown
                killCounter_("ladybug",1)
                tKills(1)
                gatherLoot_()
            }
        }
        if (toUnix_() - cloverCooldown > mobs.ladybug){
            Reset_()
            sleep,5000
            toCannon_()
            pLogic_("clover",false)
            statusUpdate("Killing ladybug")
            cloverCooldown := toUnix_()
            IniWrite, %cloverCooldown%, config.ini, mobs, cloverCooldown
            killCounter_("ladybug",1)
            killCounter_("rhino",1)
            tKills(2)
            sleep,10000
            gatherLoot_()
        }
    }
    if (rhinoCheck){
        IniRead, bambooCooldown, config.ini, mobs, bambooCooldown
        IniRead, bluefCooldown, config.ini, mobs, bluefCooldown
        IniRead, pineappleCooldown, config.ini, mobs, pineappleCooldown
        IniRead, cloverCooldown, config.ini, mobs, cloverCooldown
        if (toUnix_() - bambooCooldown > mobs.rhino){
            Reset_()
            sleep,5000
            toCannon_()
            pLogic_("bamboo",false)
            send {raw}{,,}
            statusUpdate("Killing rhino beetles")
            bambooCooldown := toUnix_()
            IniWrite, %bambooCooldown%, config.ini, mobs, bambooCooldown
            killCounter_("rhino",2)
            tKills(2)
            sleep,10000
            gatherLoot_()
            if (toUnix_() - bluefCooldown > mobs.rhino){
                send {d down}
                sleep, 6000
                send {d up}
                send {s down}
                sleep, 7000
                send {s up}
                send {a down}
                sleep 5000
                send {a up}
                bluefCooldown := toUnix_()
                IniWrite, %bluefCooldown%, config.ini, mobs, bluefCooldown
                killCounter_("rhino",1)
                tKills(1)
                gatherLoot_()
            }
        }
        if (toUnix_() - cloverCooldown > mobs.rhino){
            Reset_()
            sleep,5000
            toCannon_()
            pLogic_("clover",false)
            statusUpdate("Killing rhino beetles")
            cloverCooldown := toUnix_()
            IniWrite, %cloverCooldown%, config.ini, mobs, cloverCooldown
            killCounter_("ladybug",1)
            killCounter_("rhino",1)
            tKills(2)
            sleep,10000
            gatherLoot_()
        }
        if (toUnix_() - pineappleCooldown > mobs.rhino){
            Reset_()
            sleep,5000
            toCannon_()
            pLogic_("pineapple",false)
            statusUpdate("Killing rhino beetles")
            pineappleCooldown := toUnix_()
            IniWrite, %pineappleCooldown%, config.ini, mobs, pineappleCooldown
            killCounter_("rhino",1)
            tKills(1)
            if (toUnix_() - pineappleCooldown > mobs.mantis){
                killCounter_("mantis",1)
                tKills(1)
            }
            sleep,10000
            gatherLoot_()
        }
    }
    GuiControlGet, polarCheck
    GuiControlGet, buckoCheck
    if (polarCheck)
        doPolar_()
    if (buckoCheck)
        doBucko_()
}
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;; quest code
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
questList_(){
    riley := {"abilities":{field1:"any"},"booster":{boost:true,field:"any"},"cleanup":{field1:"mushroom",field2:"strawberry",field3:"rose"},"extraction":{field1:"clover",field2:"cactus",field3:"pumpkin"},"goo":{field1:"rose"},"medley":{field1:"strawberry",field2:"rose"},"mushrooms":{field1:"mushroom"},"picnic":{feed:true,field1:"mushroom",killcount1:["ant",1]},"pollen":{field1:"rose"},"rampage":{killcount1:["ant",1],killcount2:["ladybug",10]},"roses":{field1:"rose"},"scavenge":{field1:"strawberry"},"skirmish":{field1:"mushroom",killcount1:["ladybug",10]},"strawberries":{field1:"strawberry"},"tango":{field1:"rose",killcount1:["scorpion",5]},"tour":{field1:"mushroom",field2:"strawberry",field3:"rose",killcount1:["ladybug",5],killcount2:["scorpion",3]}}
    bucko := {"bamboo":{field1:"bamboo"},"abilities":{field1:"any"},"tour":{field1:"blue flower",field2:"bamboo",field3:"pine tree",killcount1:["rhino",5],killcount2:["mantis",3]},"picnic":{feed:true,field1:"blue flower",killcount1:["ant",1]},"pine trees":{field1:"pine tree"},"medley":{field1:"bamboo",field2:"pine tree"},"skirmish":{field1:"blue flower",killcount1:["rhino",10]},"goo":{field1:"pine tree"},"cleanup":{field1:"blue flower",field2:"bamboo",field3:"pine tree"},"scavenge":{field1:"pine tree"},"booster":{boost:true,field1:"any"},"tango":{killcount1:["mantis",5]},"flowers":{field1:"blue flower"},"bombard":{killcount1:["rhino",10],killcount2:["ant",1]},"pollen":{field1:"pine tree"},"Extraction":{field1:"clover",field2:"cactus",field3:"pumpkin"}}
    polar := {"Teriyaki Jerky":{field1:"pineapple",field2:"spider",killcount1:["wwolf",1]},"Aromatic Pie":{field1:"rose",field2:"pine tree",killcount1:["mantis",6],killcount2:["ladybug",6]},"Prickly Pears":{field1:"cactus"},"High Protein":{field1:"sunflower",killcount1:["mantis",4],killcount2:["scorpion",4],killcount3:["spider",1]},"Beetle Brew":{field1:"pineapple",field2:"dandelion",killcount1:["ladybug",8],killcount2:["rhino",8]},"Scorpion Salad":{field1:"rose",killcount1:["scorpion",12]},"Extreme Stir-Fry":{field1:"cactus",field2:"bamboo",field3:"dandelion",killcount1:["spider",2],killcount2:["scorpion",6],killcount3:["wwolf",2]},"Spooky Stew":{field1:"spider",field2:"mushroom",killcount1:["spider",2],killcount2:["wwolf",1]},"Trail Mix":{field1:"sunflower",field2:"pineapple"},"Ladybug Poppers":{field1:"blue flower",killcount1:["ladybug",30]},"Exotic Salad":{field1:"cactus",field2:"rose",field3:"blue flower",field4:"clover"},"Spiced Kebab":{field1:"clover",field2:"bamboo",killcount1:["wwolf",2]},"Pumpkin Pie":{field1:"pumpkin",field2:"sunflower",killcount1:["mantis",8]},"Strawberry Skewers":{field1:"strawberry",field2:"bamboo",killcount1:["scorpion",8]},"Thick Smoothie":{field1:"strawberry",field2:"pumpkin"},"Spider Pot-Pie":{field1:"mushroom",killcount1:["spider",3]},"Mantis Meatballs":{field1:"pine tree",killcount1:["mantis",12]},"Candied Beetles":{field1:"strawberry",field2:"blue flower",killcount1:["rhino",16]}}
    questList := {bucko:bucko,polar:polar,riley:riley}
    return questList
}
pqaCreate(){
    IniRead, polarQ, config.ini, quests, polar
    IniRead, field1Q, config.ini, quests, field1
    IniRead, field2Q, config.ini, quests, field2
    IniRead, field3Q, config.ini, quests, field3
    IniRead, field4Q, config.ini, quests, field4
    IniRead, killcount1Q, config.ini, quests, killcount1
    IniRead, killcount2Q, config.ini, quests, killcount2
    IniRead, killcount3Q, config.ini, quests, killcount3
    PQA := {title:polarQ,field1:field1Q,field2:field2Q,field3:field3Q,field4:field4Q,killcount1:killcount1Q,killcount2:killcount2Q,killcount3:killcount3Q}
    return PQA
}
bqaCreate(){
    IniRead, buckoQ, config.ini, bquests, bucko
    IniRead, boost, config.ini, bquests, boost
    IniRead, feed, config.ini, bquests, feed
    IniRead, field1Q, config.ini, bquests, field1
    IniRead, field2Q, config.ini, bquests, field2
    IniRead, field3Q, config.ini, bquests, field3
    IniRead, field4Q, config.ini, bquests, field4
    IniRead, killcount1Q, config.ini, bquests, killcount1
    IniRead, killcount2Q, config.ini, bquests, killcount2
    IniRead, killcount3Q, config.ini, bquests, killcount3
    BQA := {title:buckoQ,boost:boost,feed:feed,field1:field1Q,field2:field2Q,field3:field3Q,field4:field4Q,killcount1:killcount1Q,killcount2:killcount2Q,killcount3:killcount3Q}
    return BQA
}
rqaCreate(){
    IniRead, rileyQ, config.ini, rquests, riley
    IniRead, boost, config.ini, rquests, boost
    IniRead, feed, config.ini, rquests, feed
    IniRead, field1Q, config.ini, rquests, field1
    IniRead, field2Q, config.ini, rquests, field2
    IniRead, field3Q, config.ini, rquests, field3
    IniRead, field4Q, config.ini, rquests, field4
    IniRead, killcount1Q, config.ini, rquests, killcount1
    IniRead, killcount2Q, config.ini, rquests, killcount2
    IniRead, killcount3Q, config.ini, rquests, killcount3
    RQA := {title:rileyQ,boost:boost,feed:feed,field1:field1Q,field2:field2Q,field3:field3Q,field4:field4Q,killcount1:killcount1Q,killcount2:killcount2Q,killcount3:killcount3Q}
    return RQA
}
questFormat_(object){
    string := object.title
    questList := questList_()
    questList := questList.polar[object.title]
    for key, value in questList {
        if (InStr(key,"field")){
            string := string . "`nCollect in: " . value
            if (not object[key])
                string := string . "   not finished"
            else 
                string := string . "   finished"
        }
        if (InStr(key,"killcount")){
            string := string . "`nKill " . value[1] . "  " . object[key] . "/" . value[2]
        }
    }
    return string
}
questFormat2_(object){
    string := object.title
    questList := questList_()
    questList := questList.bucko[object.title]
    for key, value in questList {
        if (InStr(key,"feed")){
            string := string . "`nfeed blueberry"
            if (not object[key])
                string := string . "   not finished"
            else 
                string := string . "   finished"
        }
        if (InStr(key,"boost")){
            string := string . "`nblue booster"
            if (not object[key])
                string := string . "   not finished"
            else 
                string := string . "   finished"
        }
        if (InStr(key,"field")){
            string := string . "`nCollect in: " . value
            if (not object[key])
                string := string . "   not finished"
            else 
                string := string . "   finished"
        }
        if (InStr(key,"killcount")){
            string := string . "`nKill " . value[1] . "  " . object[key] . "/" . value[2]
        }
    }
    return string
}
questFormat3_(object){
    string := object.title
    questList := questList_()
    questList := questList.riley[object.title]
    for key, value in questList {
        if (InStr(key,"feed")){
            string := string . "`nfeed strawberry"
            if (not object[key])
                string := string . "   not finished"
            else 
                string := string . "   finished"
        }
        if (InStr(key,"boost")){
            string := string . "`nred booster"
            if (not object[key])
                string := string . "   not finished"
            else 
                string := string . "   finished"
        }
        if (InStr(key,"field")){
            string := string . "`nCollect in: " . value
            if (not object[key])
                string := string . "   not finished"
            else 
                string := string . "   finished"
        }
        if (InStr(key,"killcount")){
            string := string . "`nKill " . value[1] . "  " . object[key] . "/" . value[2]
        }
    }
    return string
}
doPolar_(){
    dopolarstart:
    GuiControlGet, polarCheck
    if (polarCheck){
        PQA := pqaCreate()
        if (not PQA.title){
            click, 140, 121
            sleep, 100
            click, 91, 121
            sleep, 1000
            polarFind := wrappedSearch("polar_bear.png",50)
            If (polarFind[1] = 1)
                polarFind := wrappedSearch("polar_bear2.png",50)
            If (polarFind[1] = 1){
                MouseMove, 300, 300
                loop 20 {  
                    send, {WheelDown 1}
                    sleep, 50
                }
                sleep, 500
                polarFind := wrappedSearch("polar_bear.png",50)
                If (polarFind[1] = 1)
                    polarFind := wrappedSearch("polar_bear2.png",50)
                if (polarFind[1] = 1){
                    loop 20 {
                        send, {WheelUp 1}
                        sleep, 1000
                        polarFind := wrappedSearch("polar_bear.png",50)
                        if (polarFind[1] = 0)
                            break
                        If (polarFind[1] = 1)
                            polarFind := wrappedSearch("polar_bear2.png",50)
                    }
                }
            }
            if (polarFind[1] = 0){
                questList := questList_()
                activeQ := false
                for key, value in questList.polar {
                    global graphicsKey
                    global resolutionKey
                    sx := polarFind[2]
                    sy := polarFind[3] - 50
                    fx := polarFind[2] + 500
                    fy := polarFind[3] + 50
                    ImageSearch, FoundX, FoundY, sx, sy, fx, fy, *50 image_assets\%resolutionKey%\%graphicsKey%\%key%.png
                    polarFind2 := [ErrorLevel,FoundX,FoundY]
                    if (ErrorLevel = 2){
                        MsgBox Image file %filename% was not found
                        pause
                    }
                    if (polarFind2[1] = 0){
                        activeQ := questList.polar[key]
                        IniWrite, %key%, config.ini, quests, polar
                        IniWrite, 0, config.ini, quests, field1
                        IniWrite, 0, config.ini, quests, field2
                        IniWrite, 0, config.ini, quests, field3
                        IniWrite, 0, config.ini, quests, field4
                        IniWrite, 0, config.ini, quests, killcount1
                        IniWrite, 0, config.ini, quests, killcount2
                        IniWrite, 0, config.ini, quests, killcount3
                        PQA := pqaCreate()
                        pqaT := questFormat_(PQA)
                        GuiControl,,polarLog,Current Polar Quest: `n%pqaT%
                        break
                    }
                }
            }
            click, 91, 121
        }
        PQA := pqaCreate()
        completed := true
        questList := questList_()
        if (PQA.title){
            for key, value in questList.polar[PQA.title] {
                if (value){
                    if (InStr(key,"field")){
                        if (not PQA[key]) {
                            completed := false
                            Reset_()
                            toCannon_()
                            pLogic_(value)
                            send 1
                            WinGetPos , windowX, windowY, windowWidth, windowHeight, Roblox
                            MouseMove, windowWidth / 2, windowHeight / 2
                            click, down
                            loop 4 {
                                Lines_(1)
                            }
                            IniWrite, 1, config.ini, quests, %key%
                            PQA := pqaCreate()
                            pqaT := questFormat_(PQA)
                            GuiControl,,polarLog,Current Polar Quest: `n%pqaT%
                            goto dopolarstart
                        }
                    }
                    GuiControlGet, questOR
                    if (InStr(key,"killcount")){
                        if (PQA[key] < value[2]) {
                            completed := false
                            if (value[1] = "rhino"){
                                GuiControl,,rhinoCheck,1
                            }
                            if (value[1] = "ladybug"){
                                GuiControl,,ladybugCheck,1
                            }
                            if (value[1] = "scorpion"){
                                GuiControl,,scorpionCheck,1
                            }
                            if (value[1] = "mantis"){
                                GuiControl,,mantisCheck,1
                            }
                            if (value[1] = "spider"){
                                GuiControl,,spiderCheck,1
                            }
                            if (value[1] = "wwolf"){
                                GuiControl,,wwolfCheck,1
                            }
                            if (value[1] = "ant"){
                                GuiControl,,antcCheck,1
                            }
                            saveConfig_()
                        }
                        else if (questOR){
                            if (value[1] = "rhino"){
                                GuiControl,,rhinoCheck,0
                            }
                            if (value[1] = "ladybug"){
                                GuiControl,,ladybugCheck,0
                            }
                            if (value[1] = "scorpion"){
                                GuiControl,,scorpionCheck,0
                            }
                            if (value[1] = "mantis"){
                                GuiControl,,mantisCheck,0
                            }
                            if (value[1] = "spider"){
                                GuiControl,,spiderCheck,0
                            }
                            if (value[1] = "wwolf"){
                                GuiControl,,wwolfCheck,0
                            }
                            if (value[1] = "ant"){
                                GuiControl,,antcCheck,0
                            }
                            saveConfig_()
                        }
                    }
                }
            }
            if (completed){
                polarGet()
                If (wrappedSearch("e_button.png",30,"high")[1] = 0){
                    send e
                    sleep, 4000
                    target := wrappedSearch("border.png",30)
                    while (target[1] = 0){
                        MouseMove, target[2],target[3]
                        click
                        WinGetPos , windowX, windowY, windowWidth, windowHeight, Roblox
                        wx := windowWidth / 2
                        MouseMove, wx,10
                        target := wrappedSearch("border.png",30)
                        target := wrappedSearch("border.png",30)
                    }
                }
                sleep, 2000
                If (wrappedSearch("e_button.png",30,"high")[1] = 0){
                    send e
                    sleep, 4000
                    target := wrappedSearch("border.png",30)
                    while (target[1] = 0){
                        MouseMove, target[2],target[3]
                        click
                        WinGetPos , windowX, windowY, windowWidth, windowHeight, Roblox
                        wx := windowWidth / 2
                        MouseMove, wx,10
                        target := wrappedSearch("border.png",30)
                    }
                    IniWrite, "", config.ini, quests, polar
                    goto dopolarstart
                }
            }
        }
    }
}
doBucko_(){
    qstart := toUnix_()
    dobuckostart:
    GuiControlGet, polarCheck
    GuiControlGet, buckoCheck
    GuiControlGet, rileyCheck
    if (toUnix_() - qstart > 1800 && (polarCheck || rileyCheck)){
        return
    }
    planterDo_()
    if (buckoCheck){
        BQA := bqaCreate()
        if (not BQA.title){
            click, 140, 121
            sleep, 100
            click, 91, 121
            sleep, 1000
            buckoFind := wrappedSearch("bucko.png",50)
            If (buckoFind[1] = 1)
                buckoFind := wrappedSearch("bucko2.png",50)
            if (buckoFind[1] = 1){
                MouseMove, 300, 300
                loop 20 {  
                    send, {WheelDown 1}
                    sleep, 50
                }
                buckoFind := wrappedSearch("bucko.png",50)
                If (buckoFind[1] = 1)
                    buckoFind := wrappedSearch("bucko2.png",50)
                if (buckoFind[1] = 1){
                    loop 20 {
                        send, {WheelUp 1}
                        sleep, 1000
                        buckoFind := wrappedSearch("bucko.png",50)
                        if (buckoFind[1] = 0)
                            break
                        If (buckoFind[1] = 1)
                            buckoFind := wrappedSearch("bucko2.png",50)
                    }
                }
            }
            if (buckoFind[1] = 0){
                questList := questList_()
                activeQ := false
                for key, value in questList.bucko {
                    global graphicsKey
                    global resolutionKey
                    sx := buckoFind[2]
                    sy := buckoFind[3] - 50
                    fx := buckoFind[2] + 500
                    fy := buckoFind[3] + 50
                    ImageSearch, FoundX, FoundY, sx, sy, fx, fy, *50 image_assets\%resolutionKey%\%graphicsKey%\%key%.png
                    buckoFind2 := [ErrorLevel,FoundX,FoundY]
                    if (ErrorLevel = 2){
                        MsgBox Image file %filename% was not found
                        pause
                    }
                    if (buckoFind2[1] = 0){
                        activeQ := questList.bucko[key]
                        IniWrite, %key%, config.ini, bquests, bucko
                        IniWrite, 0, config.ini, bquests, boost
                        IniWrite, 0, config.ini, bquests, feed
                        IniWrite, 0, config.ini, bquests, field1
                        IniWrite, 0, config.ini, bquests, field2
                        IniWrite, 0, config.ini, bquests, field3
                        IniWrite, 0, config.ini, bquests, field4
                        IniWrite, 0, config.ini, bquests, killcount1
                        IniWrite, 0, config.ini, bquests, killcount2
                        IniWrite, 0, config.ini, bquests, killcount3
                        BQA := bqaCreate()
                        bqaT := questFormat2_(BQA)
                        GuiControl,,buckoLog,Current Bucko Quest: `n%bqaT%
                        break
                    }
                }
            }
            click, 91, 121
        }
        BQA := bqaCreate()
        completed := true
        questList := questList_()
        if (BQA.title){
            for key, value in questList.bucko[BQA.title] {
                if (value){
                    if (InStr(key,"feed") && not BQA[key]){
                        completed := false
                        Reset_()
                        click, 140, 121
                        sleep, 100
                        click, 40, 121
                        sleep, 1000
                        MouseMove, 40, 300
                        blueb := wrappedSearch("blueberry.png",50)
                        if (blueb[1] != 0){
                            loop 50 {  
                                send, {WheelUp 1}
                                sleep, 50
                            }
                        }
                        blueb := wrappedSearch("blueberry.png",50)
                        if (blueb[1] != 0){
                            loop 50 {
                                send, {WheelDown 1}
                                sleep, 1000
                                blueb := wrappedSearch("blueberry.png",50)
                                if (blueb[1] = 0)
                                    break
                            }
                        }
                        if (blueb[1] = 0){
                            MouseMove, 40, blueb[3]
                            WinGetPos , windowX, windowY, windowWidth, windowHeight, Roblox
                            MouseClickDrag, left, 40, blueb[3] + 10, (windowWidth/2), (windowHeight/2)-60,10
                            sleep, 1000
                            click, up
                            sleep, 1000
                            feeder := wrappedSearch("feeder.png",30)
                            if (feeder[1] = 0){
                                MouseMove, feeder[2],feeder[3]
                                sleep, 100
                                click
                                sleep, 100
                                send 2
                                sleep, 500
                                send 5
                                sleep, 500
                                feed := wrappedSearch("feed.png",50)
                                MouseMove, feed[2],feed[3]
                                sleep, 100
                                click
                            }
                        }
                        sleep, 500
                        click, 40, 121
                        IniWrite, 1, config.ini, bquests, %key%
                        goto dobuckostart
                    }
                    if (InStr(key,"boost") && not BQA[key]){
                        completed := false
                        IniRead, bboostTimer, config.ini, other, bboostTimer
                        if (toUnix_() - bboostTimer > 3600){
                            Reset_()
                            toCannon_()
                            toBlueBoost_()
                            IniWrite, 1, config.ini, bquests, %key%
                            BQA := bqaCreate()
                            bqaT := questFormat2_(BQA)
                            GuiControl,,buckoLog,Current Bucko Quest: `n%bqaT%
                            goto dobuckostart
                        }
                    }
                    if (InStr(key,"field")){
                        if (not BQA[key]) {
                            completed := false
                            if (value = "any")
                                goGather_()
                            else
                                goGather_(value)
                            IniWrite, 1, config.ini, bquests, %key%
                            BQA := bqaCreate()
                            bqaT := questFormat2_(BQA)
                            GuiControl,,buckoLog,Current Bucko Quest: `n%bqaT%
                            goto dobuckostart
                        }
                    }
                    GuiControlGet, questOR
                    if (InStr(key,"killcount")){
                        if (BQA[key] < value[2]) {
                            completed := false
                            if (value[1] = "rhino"){
                                GuiControl,,rhinoCheck,1
                            }
                            if (value[1] = "ladybug"){
                                GuiControl,,ladybugCheck,1
                            }
                            if (value[1] = "scorpion"){
                                GuiControl,,scorpionCheck,1
                            }
                            if (value[1] = "mantis"){
                                GuiControl,,mantisCheck,1
                            }
                            if (value[1] = "spider"){
                                GuiControl,,spiderCheck,1
                            }
                            if (value[1] = "wwolf"){
                                GuiControl,,wwolfCheck,1
                            }
                            if (value[1] = "ant"){
                                GuiControl,,antcCheck,1
                            }
                            saveConfig_()
                        }
                        else if (questOR){
                            if (value[1] = "rhino"){
                                GuiControl,,rhinoCheck,0
                            }
                            if (value[1] = "ladybug"){
                                GuiControl,,ladybugCheck,0
                            }
                            if (value[1] = "scorpion"){
                                GuiControl,,scorpionCheck,0
                            }
                            if (value[1] = "mantis"){
                                GuiControl,,mantisCheck,0
                            }
                            if (value[1] = "spider"){
                                GuiControl,,spiderCheck,0
                            }
                            if (value[1] = "wwolf"){
                                GuiControl,,wwolfCheck,0
                            }
                            if (value[1] = "ant"){
                                GuiControl,,antcCheck,0
                            }
                            saveConfig_()
                        }
                    }
                }
            }
            if (completed){
                buckoGet()
                sleep, 2000
                If (wrappedSearch("e_button.png",30,"high")[1] = 0){
                    send e
                    sleep, 4000
                    target := wrappedSearch("border.png",30)
                    while (target[1] = 0){
                        MouseMove, target[2],target[3]
                        click
                        WinGetPos , windowX, windowY, windowWidth, windowHeight, Roblox
                        wx := windowWidth / 2
                        MouseMove, wx,10
                        target := wrappedSearch("border.png",30)
                    }
                }
                sleep, 2000
                If (wrappedSearch("e_button.png",30,"high")[1] = 0){
                    send e
                    sleep, 4000
                    target := wrappedSearch("border.png",30)
                    while (target[1] = 0){
                        MouseMove, target[2],target[3]
                        click
                        WinGetPos , windowX, windowY, windowWidth, windowHeight, Roblox
                        wx := windowWidth / 2
                        MouseMove, wx,10
                        target := wrappedSearch("border.png",30)
                    }
                    IniWrite, "", config.ini, bquests, bucko
                    goto dobuckostart
                }
            }
        }
    }
}
doRiley_(){
    qstart := toUnix_()
    dorileystart:
    GuiControlGet, polarCheck
    GuiControlGet, rileyCheck
    GuiControlGet, buckoCheck
    if (toUnix_() - qstart > 1800 && (polarCheck || buckoCheck)){
        return
    }
    planterDo_()
    if (rileyCheck){
        RQA := rqaCreate()
        if (not RQA.title){
            click, 140, 121
            sleep, 100
            click, 91, 121
            sleep, 1000
            rileyFind := wrappedSearch("riley.png",50)
            If (rileyFind[1] = 1)
                rileyFind := wrappedSearch("riley2.png",50)
            if (rileyFind[1] = 1){
                MouseMove, 300, 300
                loop 20 {  
                    send, {WheelDown 1}
                    sleep, 50
                }
                rileyFind := wrappedSearch("riley.png",50)
                If (rileyFind[1] = 1)
                    rileyFind := wrappedSearch("riley2.png",50)
                if (rileyFind[1] = 1){
                    loop 20 {
                        send, {WheelUp 1}
                        sleep, 1000
                        rileyFind := wrappedSearch("riley.png",50)
                        if (rileyFind[1] = 0)
                            break
                        If (rileyFind[1] = 1)
                            rileyFind := wrappedSearch("riley2.png",50)
                    }
                }
            }
            if (rileyFind[1] = 0){
                questList := questList_()
                activeQ := false
                for key, value in questList.riley {
                    global graphicsKey
                    global resolutionKey
                    sx := rileyFind[2]
                    sy := rileyFind[3] - 50
                    fx := rileyFind[2] + 500
                    fy := rileyFind[3] + 50
                    ImageSearch, FoundX, FoundY, sx, sy, fx, fy, *50 image_assets\%resolutionKey%\%graphicsKey%\%key%.png
                    rileyFind2 := [ErrorLevel,FoundX,FoundY]
                    if (ErrorLevel = 2){
                        MsgBox Image file %filename% was not found
                        pause
                    }
                    if (rileyFind2[1] = 0){
                        activeQ := questList.riley[key]
                        IniWrite, %key%, config.ini, rquests, riley
                        IniWrite, 0, config.ini, rquests, boost
                        IniWrite, 0, config.ini, rquests, feed
                        IniWrite, 0, config.ini, rquests, field1
                        IniWrite, 0, config.ini, rquests, field2
                        IniWrite, 0, config.ini, rquests, field3
                        IniWrite, 0, config.ini, rquests, field4
                        IniWrite, 0, config.ini, rquests, killcount1
                        IniWrite, 0, config.ini, rquests, killcount2
                        IniWrite, 0, config.ini, rquests, killcount3
                        RQA := rqaCreate()
                        rqaT := questFormat3_(RQA)
                        GuiControl,,rileyLog,Current Riley Quest: `n%rqaT%
                        break
                    }
                }
            }
            click, 91, 121
        }
        RQA := rqaCreate()
        completed := true
        questList := questList_()
        if (RQA.title){
            for key, value in questList.riley[RQA.title] {
                if (value){
                    if (InStr(key,"feed") && not RQA[key]){
                        completed := false
                        Reset_()
                        click, 140, 121
                        sleep, 100
                        click, 40, 121
                        sleep, 1000
                        MouseMove, 40, 300
                        blueb := wrappedSearch("strawberry.png",50)
                        if (blueb[1] != 0){
                            loop 50 {  
                                send, {WheelUp 1}
                                sleep, 50
                            }
                        }
                        blueb := wrappedSearch("strawberry.png",50)
                        if (blueb[1] != 0){
                            loop 50 {
                                send, {WheelDown 1}
                                sleep, 1000
                                blueb := wrappedSearch("strawberry.png",50)
                                if (blueb[1] = 0)
                                    break
                            }
                        }
                        if (blueb[1] = 0){
                            MouseMove, 40, blueb[3]
                            WinGetPos , windowX, windowY, windowWidth, windowHeight, Roblox
                            MouseClickDrag, left, 40, blueb[3] + 10, (windowWidth/2), (windowHeight/2)-60,20
                            sleep, 1000
                            click, up
                            sleep, 1000
                            feeder := wrappedSearch("feeder.png",30)
                            if (feeder[1] = 0){
                                MouseMove, feeder[2],feeder[3]
                                sleep, 100
                                click
                                sleep, 100
                                send 2
                                sleep, 500
                                send 5
                                sleep, 500
                                feed := wrappedSearch("feed.png",50)
                                MouseMove, feed[2],feed[3]
                                sleep, 100
                                click
                            }
                        }
                        sleep, 500
                        click, 40, 121
                        IniWrite, 1, config.ini, rquests, %key%
                        goto dorileystart
                    }
                    if (InStr(key,"boost") && not RQA[key]){
                        completed := false
                        IniRead, rboostTimer, config.ini, other, rboostTimer
                        if (toUnix_() - rboostTimer > 3600){
                            Reset_()
                            toCannon_()
                            toRedBoost_()
                            IniWrite, 1, config.ini, rquests, %key%
                            RQA := rqaCreate()
                            rqaT := questFormat3_(RQA)
                            GuiControl,,rileyLog,Current Riley Quest: `n%rqaT%
                            goto dorileystart
                        }
                    }
                    if (InStr(key,"field")){
                        if (not RQA[key]) {
                            completed := false
                            if (value = "any")
                                goGather_()
                            else
                                goGather_(value)
                            IniWrite, 1, config.ini, rquests, %key%
                            RQA := rqaCreate()
                            rqaT := questFormat3_(RQA)
                            GuiControl,,rileyLog,Current Riley Quest: `n%rqaT%
                            goto dorileystart
                        }
                    }
                    GuiControlGet, questOR
                    if (InStr(key,"killcount")){
                        if (RQA[key] < value[2]) {
                            completed := false
                            if (value[1] = "rhino"){
                                GuiControl,,rhinoCheck,1
                            }
                            if (value[1] = "ladybug"){
                                GuiControl,,ladybugCheck,1
                            }
                            if (value[1] = "scorpion"){
                                GuiControl,,scorpionCheck,1
                            }
                            if (value[1] = "mantis"){
                                GuiControl,,mantisCheck,1
                            }
                            if (value[1] = "spider"){
                                GuiControl,,spiderCheck,1
                            }
                            if (value[1] = "wwolf"){
                                GuiControl,,wwolfCheck,1
                            }
                            if (value[1] = "ant"){
                                GuiControl,,antcCheck,1
                            }
                            saveConfig_()
                        }
                        else if (questOR){
                            if (value[1] = "rhino"){
                                GuiControl,,rhinoCheck,0
                            }
                            if (value[1] = "ladybug"){
                                GuiControl,,ladybugCheck,0
                            }
                            if (value[1] = "scorpion"){
                                GuiControl,,scorpionCheck,0
                            }
                            if (value[1] = "mantis"){
                                GuiControl,,mantisCheck,0
                            }
                            if (value[1] = "spider"){
                                GuiControl,,spiderCheck,0
                            }
                            if (value[1] = "wwolf"){
                                GuiControl,,wwolfCheck,0
                            }
                            if (value[1] = "ant"){
                                GuiControl,,antcCheck,0
                            }
                            saveConfig_()
                        }
                    }
                }
            }
            if (completed){
                rileyGet()
                sleep, 2000
                If (wrappedSearch("e_button.png",30,"high")[1] = 0){
                    send e
                    sleep, 4000
                    target := wrappedSearch("border.png",30)
                    while (target[1] = 0){
                        MouseMove, target[2],target[3]
                        click
                        WinGetPos , windowX, windowY, windowWidth, windowHeight, Roblox
                        wx := windowWidth / 2
                        MouseMove, wx,10
                        target := wrappedSearch("border.png",30)
                    }
                }
                sleep, 2000
                If (wrappedSearch("e_button.png",30,"high")[1] = 0){
                    send e
                    sleep, 4000
                    target := wrappedSearch("border.png",30)
                    while (target[1] = 0){
                        MouseMove, target[2],target[3]
                        click
                        WinGetPos , windowX, windowY, windowWidth, windowHeight, Roblox
                        wx := windowWidth / 2
                        MouseMove, wx,10
                        target := wrappedSearch("border.png",30)
                    }
                    IniWrite, "", config.ini, rquests, riley
                    goto dorileystart
                }
            }
        }
    }
}
buckoGet(){
    Reset_()
    toCannon_()
    toBucko_()
    global totalQuests
    totalQuests := totalQuests + 1
}
rileyGet(){
    Reset_()
    toCannon_()
    toRiley_()
    global totalQuests
    totalQuests := totalQuests + 1
}
polarGet(){
    Reset_()
    toCannon_()
    toPB_()
    global totalQuests
    totalQuests := totalQuests + 1
}
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;; field gathering loop
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
goGather_(field:=false){
    mobs := {wwolf:3600,spider:1800,scorpion:1200,mantis:1200,ladybug:300,rhino:300,king:86400,tunnel:172800}
    IniRead, mushroomCooldown, config.ini, mobs, mushroomCooldown
    IniRead, bluefCooldown, config.ini, mobs, bluefCooldown
    IniRead, cloverCooldown, config.ini, mobs, cloverCooldown
    IniRead, bambooCooldown, config.ini, mobs, bambooCooldown
    IniRead, strawberryCooldown, config.ini, mobs, strawberryCooldown
    IniRead, spiderCooldown, config.ini, mobs, spiderCooldown
    IniRead, pineappleCooldown, config.ini, mobs, pineappleCooldown
    IniRead, pumpkinCooldown, config.ini, mobs, pumpkinCooldown
    IniRead, pineCooldown, config.ini, mobs, pineCooldown
    IniRead, roseCooldown, config.ini, mobs, roseCooldown
    Reset_()
    toCannon_()
    IniRead, gatherSwitch, config.ini, other, gatherSwitch
    GuiControlGet, gatherChoice%gatherSwitch%
    gatherChoice := gatherChoice%gatherSwitch%
    planterFields := ["Planter 1","Planter 2","planter 3"]
    for i, pla in planterFields {
        if (gatherChoice = pla){
            IniRead, thisPlanter, config.ini, other, p%i%Switch
            GuiControlGet, p%i%Choice%thisPlanter%
            gatherChoice := p%i%Choice%thisPlanter%
        }
    }
    if (field)
        gatherChoice := field
    if (not gatherChoice || gatherChoice = "none" || gatherChoice = "any")
        gatherChoice := "cactus"
    fullCount := 0
    fullCount2 := 0
    pLogic_(gatherChoice)
    GuiControlGet, sat
    GuiControlGet, size
    fier := 1
    if (size = "medium")
        fier := 0.75
    if (size = "small")
        fier := 0.5
    sleep, 200
    send {d down}
    send {s down}
    sleep, 1000 * fier
    send {d up}
    send {s up}
    send, 1
    sleep, 1500
    if (sat = "diamond"){
        loop 3 {
            jumpPlace()
        }
    }
    if (sat = "golden"){
        loop 2 {
            jumpPlace()
        }
    }
    if (sat = "silver"){
        jumpPlace()
    }
    GuiControlGet, gPath
    if (gPath = "diamonds"){

    }
    SetKeyDelay , 0
    statusUpdate("Gathering")
    GuiControlGet, convertCheck
    startTime := toUnix_()
    honeybreak := false
    GuiControlGet, shiftChoice
    WinGetPos , windowX, windowY, windowWidth, windowHeight, Roblox
    MouseMove, windowWidth / 2, windowHeight / 2
    if (shiftChoice)
        send {shift}
    iDced := false
    gatherStartTime := toUnix_()
    microTimer := 0
    GuiControlGet, microC
    loop 300 {
        if (gatherChoice = "pine tree"){
            if (toUnix_() - pumpkinCooldown > mobs.wwolf * 1.1){
                killCounter_("wwolf",1)
                tKills(1)
                pumpkinCooldown := toUnix_()
                IniWrite, %pumpkinCooldown%, config.ini, mobs, pumpkinCooldown
            }
            if (toUnix_() - pineCooldown > mobs.mantis * 1.1){
                killCounter_("mantis",2)
                tKills(2)
                pineCooldown := toUnix_()
                IniWrite, %pineCooldown%, config.ini, mobs, pineCooldown
            }
        }
        if (gatherChoice = "pumpkin"){
            if (toUnix_() - pumpkinCooldown > mobs.wwolf * 1.1){
                killCounter_("wwolf",1)
                tKills(1)
                pumpkinCooldown := toUnix_()
                IniWrite, %pumpkinCooldown%, config.ini, mobs, pumpkinCooldown
            }
        }
        if (gatherChoice = "cactus"){
            if (toUnix_() - pumpkinCooldown > mobs.wwolf * 1.1){
                killCounter_("wwolf",1)
                tKills(1)
                pumpkinCooldown := toUnix_()
                IniWrite, %pumpkinCooldown%, config.ini, mobs, pumpkinCooldown
            }
        }
        if (gatherChoice = "mushroom"){
            if (toUnix_() - mushroomCooldown > mobs.ladybug * 1.1){
                killCounter_("ladybug",1)
                tKills(1)
                mushroomCooldown := toUnix_()
                IniWrite, %mushroomCooldown%, config.ini, mobs, mushroomCooldown
            }
        }
        if (gatherChoice = "strawberry"){
            if (toUnix_() - strawberryCooldown > mobs.ladybug * 1.1){
                killCounter_("ladybug",2)
                tKills(2)
                strawberryCooldown := toUnix_()
                IniWrite, %strawberryCooldown%, config.ini, mobs, strawberryCooldown
            }
        }
        if (gatherChoice = "blue flower"){
            if (toUnix_() - bluefCooldown > mobs.rhino * 1.1){
                killCounter_("rhino",1)
                tKills(1)
                bluefCooldown := toUnix_()
                IniWrite, %bluefCooldown%, config.ini, mobs, bluefCooldown
            }
        }
        if (gatherChoice = "clover"){
            if (toUnix_() - cloverCooldown > mobs.rhino * 1.1){
                killCounter_("rhino",1)
                tKills(1)
                cloverCooldown := toUnix_()
                IniWrite, %cloverCooldown%, config.ini, mobs, cloverCooldown
            }
            if (toUnix_() - cloverCooldown > mobs.ladybug * 1.1){
                killCounter_("ladybug",1)
                tKills(1)
                cloverCooldown := toUnix_()
                IniWrite, %cloverCooldown%, config.ini, mobs, cloverCooldown
            }
        }
        if (gatherChoice = "pineapple"){
            if (toUnix_() - pineappleCooldown > mobs.mantis * 1.1){
                killCounter_("mantis",1)
                tKills(1)
                if (toUnix_() - pineappleCooldown > mobs.rhino * 1.1){
                    killCounter_("rhino",1)
                    tKills(1)
                }
                pineappleCooldown := toUnix_()
                IniWrite, %pineappleCooldown%, config.ini, mobs, pineappleCooldown
            }
        }
        if (gatherChoice = "bamboo"){
            if (toUnix_() - bambooCooldown > mobs.rhino * 1.1){
                killCounter_("rhino",2)
                tKills(2)
                bambooCooldown := toUnix_()
                IniWrite, %bambooCooldown%, config.ini, mobs, bambooCooldown
            }
        }
        if (gatherChoice = "spider"){
            if (toUnix_() - spiderCooldown > mobs.spider * 1.1){
                killCounter_("spider",1)
                tKills(1)
                spiderCooldown := toUnix_()
                IniWrite, %spiderCooldown%, config.ini, mobs, spiderCooldown
            }
        }
        if (gatherChoice = "scorpion"){
            if (toUnix_() - roseCooldown > mobs.scorpion * 1.1){
                killCounter_("scorpion",2)
                tKills(2)
                roseCooldown := toUnix_()
                IniWrite, %roseCooldown%, config.ini, mobs, roseCooldown
            }
        }
        if (dcCheck_()){
            goto gatherend
            iDced := true
        }
        if (not activeHoney()){
            if (honeybreak){
                if (toUnix_() - honeybreak > 20)
                    goto gatherend
            }
            else
                honeybreak := toUnix_()
        }
        else    
            honeybreak := false
        WinGetPos , windowX, windowY, windowWidth, windowHeight, Roblox
        winUp := windowHeight / 2.14
        winDown := windowHeight / 1.88
        winLeft := windowWidth / 2.14
        winRight := windowWidth /1.88
        if (sat = "golden"){
            saturatorFinder := wrappedSearch("golden.png",35)
        }
        if (sat = "diamond"){
            saturatorFinder := wrappedSearch("diamond.png",35)
        }
        else {
            saturatorFinder := wrappedSearch("saturator.png",25)
        }
        If (saturatorFinder[1] = 0){
            if (saturatorFinder[2] < winleft){
                send {a down}
                sleep 100
                send {a up}   
            }
            if (saturatorFinder[2] > winRight){
                send {d down}
                sleep 100
                send {d up}   
            }
            if (saturatorFinder[3] < winUp){
                send {w down}
                sleep 100
                send {w up}   
            }
            if (saturatorFinder[3] > winDown){
                send {s down}
                sleep 100
                send {s up}   
            }
        }
        click, down
        GuiControlGet, gathTime
        gathTime := gathTime * 60
        if (toUnix_() - startTime > gathTime){
            if (convertCheck = "rejoin convert"){
                rejoinConvert_()
            }
            goto gatherend
        }
        GuiControlGet, mondoCheck
        if (A_Min = 00 && mondoCheck){
            goto gatherend
        }
        If (wrappedSearch("pollen3.png",50,"lowright")[1] = 0){
            if (fullcount > 0 && microC && microC != "none" && toUnix_() - microTimer > 30){
                microTimer := toUnix_()
                send %microC%
                fullcount := 0
            }
            if (fullCount > 1){
                if (convertCheck = "rejoin convert"){
                    rejoinConvert_()
                }
                goto gatherend
            }
            fullCount := fullCount + 1
        }
        else
            fullCount := 0
        If (wrappedSearch("pollen2.png",30,"high")[1] = 0){
            if (fullcount > 0 && microC && microC != "none" && toUnix_() - microTimer > 30){
                microTimer := toUnix_()
                send %microC%
                fullcount := 0
            }
            if (fullCount2 > 1){
                if (convertCheck = "rejoin convert"){
                    rejoinConvert_()
                }
                goto gatherend
            }
            fullCount2 := fullCount2 + 1
            
        }
        else
            fullcount2 := 0
        If (wrappedSearch("sprinkler.png",30,"lowright")[1] = 0){
            goto gatherend
        }
        boosting()
        GuiControlGet, gPath
        pathSize := 1
        GuiControlGet, size
        if (size = "xlarge")
            pathSize := 1.2
        if (size = "medium")
            pathSize := 0.75
        if (size = "small")
            pathSize := 0.5
        if (gPath = "lines"){
            Lines_(pathSize)
        }
        if (gPath = "squares"){
            Squares_(pathSize)
        }
        if (gPath = "circles"){
            Circles_(pathSize)
        }
        if (gPath = "diamonds"){
            Diamonds_(pathSize)
        }
        if (gPath = "snake"){
            Snake_(pathSize)
        }
        if (gPath = "star - by RoadRash#1292"){
            Star_()
        }
        if (gPath = "dont move"){
            AFK_()
        }
    }
    if (convertCheck = "rejoin convert"){
        rejoinConvert_()
    }
    gatherend:
    global totalGath
    totalGath := totalGath + (toUnix_() - gatherStartTime)
    if (shiftChoice && not iDced)
        send {shift}
    if (not field){
        gatherSwitch := gatherSwitch + 1
        GuiControlGet, gatherChoice%gatherSwitch%
        if (not gatherChoice%gatherSwitch% || gatherChoice%gatherSwitch% = "none" || gatherChoice%gatherSwitch% = "select")
            gatherSwitch := 1
        IniWrite, %gatherSwitch%, config.ini, other, gatherSwitch
        GuiControlGet, gatherChoice%gatherSwitch%
        newStat := gatherChoice%gatherSwitch%
        GuiControl,,currentField,Current Field:`n%newStat%
        GuiControlGet, whirli
        if (whirli && whirli != "none"){
            if (gatherChoice = "stump")
                send ..
            if (gatherChoice = "sunflower")
                send {raw}{,,}
            if (gatherChoice = "spider")
                send ....
            if (gatherChoice = "bamboo")
                send ..
            if (gatherChoice = "blue flower")
                send ..
            if (gatherChoice = "mountain top")
                send ..
            if (gatherChoice = "mushroom")
                send ....
            if (gatherChoice = "pepper")
                send {raw}{,,}
            if (gatherChoice = "pine tree")
                send ....
            if (gatherChoice = "pineapple")
                send ....
            if (gatherChoice = "pumpkin")
                send ....
            if (gatherChoice = "rose")
                send {raw}{,,}
            if (gatherChoice = "strawberry")
                send ....
            global hicLoc
            hicLoc := true
            send %whirli%
            sleep, 4000
        }
    }
}
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;; gathering paths
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
AFK_(){
    sleep, 15000
}
Lines_(modif){
    loop 2 {
        send {w down}
        sleep, 750 * modif
        send {a down}
        send {w up}
        sleep, 100
        send {s down}
        send {a up}
        sleep, 750 * modif
        send {a down}
        send {s up}
        sleep, 100
        send {a up}
    }
    loop 2 {
        send {w down}
        sleep, 750 * modif
        send {d down}
        send {w up}
        sleep, 100
        send {s down}
        send {d up}
        sleep, 750 * modif
        send {d down}
        send {s up}
        sleep, 100
        send {d up}
    }
}
Snake_(modif){
    loop 2 {
        send {a down}
        sleep, 750 * modif
        send {w down}
        send {a up}
        sleep, 100
        send {d down}
        send {w up}
        sleep, 750 * modif
        send {w down}
        send {d up}
        sleep, 100
        send {w up}
    }
    loop 2 {
        send {a down}
        sleep, 750 * modif
        send {s down}
        send {a up}
        sleep, 100
        send {d down}
        send {s up}
        sleep, 750 * modif
        send {s down}
        send {d up}
        sleep, 100
        send {s up}
    }
}
Diamonds_(modif){
    send {s up}
    send {a up}
    send {w down}
    send {a down}
    sleep, 300 * modif
    send {a up}
    send {d down}
    sleep, 300 * modif
    send {w up}
    send {s down}
    sleep, 300 * modif
    send {d up}
    send {a down}
    sleep, 300 * modif
    send {s up}
    send {a up}
    send {w down}
    send {a down}
    sleep, 500 * modif
    send {a up}
    send {d down}
    sleep, 500 * modif
    send {w up}
    send {s down}
    sleep, 500 * modif
    send {d up}
    send {a down}
    sleep, 500 * modif
    send {s up}
    send {a up}
    send {w down}
    send {a down}
    sleep, 700 * modif
    send {a up}
    send {d down}
    sleep, 700 * modif
    send {w up}
    send {s down}
    sleep, 700 * modif
    send {d up}
    send {a down}
    sleep, 700 * modif
    send {s up}
    send {a up}
}
Squares_(modif){
    send {w down}
    sleep, 300 * modif
    send {a down}
    send {w up}
    sleep, 300 * modif
    send {s down}
    send {a up}
    sleep, 300 * modif
    send {d down}
    send {s up}
    sleep, 300 * modif
    send {d up}
    send {w down}
    sleep, 500 * modif
    send {a down}
    send {w up}
    sleep, 500 * modif
    send {s down}
    send {a up}
    sleep, 500 * modif
    send {d down}
    send {s up}
    sleep, 500 * modif
    send {d up}
    send {w down}
    sleep, 700 * modif
    send {a down}
    send {w up}
    sleep, 700 * modif
    send {s down}
    send {a up}
    sleep, 700 * modif
    send {d down}
    send {s up}
    sleep, 700 * modif
    send {d up}
}
Circles_(modif){
    send, {a down}
    send, {s down}
    sleep, 150 * modif
    send, {s up}
    sleep, 150 * modif
    send, {w down}
    sleep, 150 * modif
    send, {a up}
    sleep, 150 * modif
    send, {d down}
    sleep, 150 * modif
    send, {w up}
    sleep, 150 * modif
    send, {s down}
    sleep, 150 * modif
    send, {d up}
    sleep, 150 * modif
    send, {a down}
    sleep, 200 * modif
    send, {s up}
    sleep, 200 * modif
    send, {w down}
    sleep, 200 * modif
    send, {a up}
    sleep, 200 * modif
    send, {d down}
    sleep, 200 * modif
    send, {w up}
    sleep, 200 * modif
    send, {s down}
    sleep, 200 * modif
    send, {d up}
    sleep, 200 * modif
    send, {a down}
    sleep, 250 * modif
    send, {s up}
    sleep, 250 * modif
    send, {w down}
    sleep, 250 * modif
    send, {a up}
    sleep, 250 * modif
    send, {d down}
    sleep, 250 * modif
    send, {w up}
    sleep, 250 * modif
    send, {s down}
    sleep, 250 * modif
    send, {d up}
    sleep, 250 * modif
    send, {s up}
}
spiral(){
    SetKeyDelay, 0
    send {w down}
    sleep, 150
    send {a down}
    send {w up}
    sleep, 150
    send {s down}
    send {a up}
    sleep, 200
    send {d down}
    send {s up}
    sleep, 200
    send {w down}
    send {d up}
    sleep, 250
    send {a down}
    send {w up}
    sleep, 250
    send {s down}
    send {a up}
    sleep, 300
    send {d down}
    send {s up}
    sleep, 300
    send {w down}
    send {d up}
    sleep, 350
    send {a down}
    send {w up}
    sleep, 350
    send {s down}
    send {a up}
    sleep, 400
    send {d down}
    send {s up}
    sleep, 400
    send {w down}
    send {d up}
    sleep, 550
    send {a down}
    send {w up}
    sleep, 550
    send {s down}
    send {a up}
    sleep, 600
    send {d down}
    send {s up}
    sleep, 600
    send {w down}
    send {d up}
    sleep, 650
    send {a down}
    send {w up}
    sleep, 650
    send {s down}
    send {a up}
    sleep, 700
    send {d down}
    send {s up}
    send {d up}
}
;STAR PATH CREATED BY: RoadRash#1292
Star_(){
    Sleep, 58
    Send, {Down Down}
    Sleep, 444
    Send, {Down Up}
    Sleep, 58
	Send, {Up Down}
    Sleep, 444
    Send, {Up Up}
	Sleep, 58
	Send, {Left Down}
    Sleep, 244
    Send, {Left Up}
    Sleep, 58
    Send, {Up Down}
    Sleep, 444
    Send, {Up Up}
    Sleep, 58
    Send, {Down Down}
    Sleep, 444
    Send, {Down Up}
    Sleep, 58
    Send, {Down Down}
    Sleep, 444
    Send, {Down Up}
    Sleep, 58
    Send, {Up Down}
    Sleep, 444
    Send, {Up Up}
    Sleep, 58
    Send, {Left Down}
    Sleep, 244
    Send, {Left Up}
    Sleep, 58
    Send, {Up Down}
    Sleep, 394
    Send, {Up Up}
    Sleep, 58
    Send, {Down Down}
    Sleep, 394
    Send, {Down Up}
    Sleep, 58
    Send, {Down Down}
    Sleep, 394
    Send, {Down Up}
    Sleep, 58
    Send, {Up Down}
    Sleep, 394
    Send, {Up Up}
    Sleep, 58
    Send, {Left Down}
    Sleep, 244
    Send, {Left Up}
    Sleep, 58
    Send, {Up Down}
    Sleep, 394
    Send, {Up Up}
    Sleep, 58
    Send, {Down Down}
    Sleep, 394
    Send, {Down Up}
    Sleep, 58
    Send, {Down Down}
    Sleep, 394
    Send, {Down Up}
    Sleep, 58
    Send, {Up Down}
    Sleep, 394
    Send, {Up Up}
    Sleep, 58
    Send, {Left Down}
    Sleep, 244
    Send, {Left Up}
    Sleep, 58
    Send, {Up Down}
    Sleep, 394
    Send, {Up Up}
    Sleep, 58
    Send, {Down Down}
    Sleep, 394
    Send, {Down Up}
    Sleep, 58
    Send, {Down Down}
    Sleep, 394
    Send, {Down Up}
    Sleep, 58
    Send, {Up Down}
    Sleep, 394
    Send, {Up Up}
    Sleep, 58
    Send, {Left Down}
    Sleep, 244
    Send, {Left Up}
    Sleep, 58
    Send, {Up Down}
    Sleep, 394
    Send, {Up Up}
    Sleep, 58
    Send, {Down Down}
    Sleep, 394
    Send, {Down Up}
    Sleep, 58
    Send, {Down Down}
    Sleep, 394
    Send, {Down Up}
    Sleep, 58
    Send, {Up Down}
    Sleep, 394
    Send, {Up Up}
    Sleep, 508
    Send, {Right Down}
    Sleep, 244
    Send, {Right Up}
    Sleep, 58
    Send, {Up Down}
    Sleep, 394
    Send, {Up Up}
    Sleep, 58
    Send, {Down Down}
    Sleep, 394
    Send, {Down Up}
    Sleep, 58
    Send, {Down Down}
    Sleep, 394
    Send, {Down Up}
    Sleep, 58
    Send, {Up Down}
    Sleep, 394
    Send, {Up Up}
    Sleep, 58
    Send, {Right Down}
    Sleep, 244
    Send, {Right Up}
    Sleep, 58
    Send, {Up Down}
    Sleep, 394
    Send, {Up Up}
    Sleep, 58
    Send, {Down Down}
    Sleep, 394
    Send, {Down Up}
    Sleep, 58
    Send, {Down Down}
    Sleep, 394
    Send, {Down Up}
    Sleep, 58
    Send, {Up Down}
    Sleep, 394
    Send, {Up Up}
    Sleep, 58
    Send, {Right Down}
    Sleep, 244
    Send, {Right Up}
    Sleep, 58
    Send, {Up Down}
    Sleep, 394
    Send, {Up Up}
    Sleep, 58
    Send, {Down Down}
    Sleep, 394
    Send, {Down Up}
    Sleep, 58
    Send, {Down Down}
    Sleep, 394
    Send, {Down Up}
    Sleep, 58
    Send, {Up Down}
    Sleep, 394
    Send, {Up Up}
    Sleep, 58
    Send, {Right Down}
    Sleep, 244
    Send, {Right Up}
    Sleep, 58
    Send, {Up Down}
    Sleep, 394
    Send, {Up Up}
    Sleep, 58
    Send, {Down Down}
    Sleep, 394
    Send, {Down Up}
    Sleep, 58
    Send, {Down Down}
    Sleep, 394
    Send, {Down Up}
    Sleep, 58
    Send, {Up Down}
    Sleep, 394
    Send, {Up Up}
    Sleep, 58
    Send, {Right Down}
    Sleep, 244
    Send, {Right Up}
    Sleep, 58
    Send, {Up Down}
    Sleep, 394
    Send, {Up Up}
    Sleep, 58
    Send, {Down Down}
    Sleep, 394
    Send, {Down Up}
    Sleep, 58
    Send, {Down Down}
    Sleep, 394
    Send, {Down Up}
    Sleep, 58
    Send, {Up Down}
    Sleep, 394
    Send, {Up Up}
	Sleep, 150
}
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;; rejoin convert code
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
rejoinConvert_(){
    Disconnect_()
    If (wrappedSearch("e_button.png",30,"high")[1] = 0){
        send e
        statusUpdate("Converting Pollen")
        breakTimer := A_TickCount
        while(1){
            If (wrappedSearch("e_button.png",30,"high")[1] = 1){
                sleep, 7000
                send {s down}
                sleep, 2500
                send {s up}
                break
            }
            GuiControlGet, mondoCheck
            if (A_Min = 00 && mondoCheck){
                break
            }
            if (A_TickCount - breakTimer > 900000){
                break
            }
            sleep, 1000
        }
    }
}
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;; to location lib
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
toCannon_(){
    cannonbegin:
    dcCheck_()
    statusUpdate("Moving To Cannon")
    send {w down}
    sleep, 1000
    send {w up}
    send {d down}
    GuiControlGet, slot
    waitTime := slot * 2000
    sleep, waitTime
    sendSpace()
    sleep, 1200
    GuiControlGet, speed
    if (speed = "less than 28"){
        sleep, 300
    }
    send {d up}
    sleep, 1000
    If (wrappedSearch("e_button.png",30,"high")[1] = 1){
        Reset_()
        goto cannonbegin
    }
}
pLogic_(choice,kill := true){
    SetKeyDelay, 50
    dcCheck_()
    mobs := {wwolf:3600,spider:1800,scorpion:1200,mantis:1200,ladybug:300,rhino:300,king:86400,tunnel:172800}
    GuiControlGet, vicCheck
    if (vicCheck){
        for key, value in mobs {
            value := value - (15 * value / 100)
            mobs[key] := value
        }
    }
    IniRead, mushroomCooldown, config.ini, mobs, mushroomCooldown
    IniRead, bluefCooldown, config.ini, mobs, bluefCooldown
    IniRead, cloverCooldown, config.ini, mobs, cloverCooldown
    IniRead, bambooCooldown, config.ini, mobs, bambooCooldown
    IniRead, strawberryCooldown, config.ini, mobs, strawberryCooldown
    IniRead, spiderCooldown, config.ini, mobs, spiderCooldown
    IniRead, pineappleCooldown, config.ini, mobs, pineappleCooldown
    IniRead, pumpkinCooldown, config.ini, mobs, pumpkinCooldown
    IniRead, pineCooldown, config.ini, mobs, pineCooldown
    IniRead, roseCooldown, config.ini, mobs, roseCooldown
    GuiControlGet, mondoCheck
    if (A_Min = 00 && mondoCheck){
        toMondo_()
        statusUpdate("Attacking Mondo")
        sleep, 120000
        Reset_()
        toCannon_()
    }
    statusUpdate("Moving To Field: "choice)
    if (choice = "sunflower"){
        toSunflower()
    }
    if (choice = "spider"){
        toSpider()
        if (kill && toUnix_() - spiderCooldown > mobs.spider){
            killCounter_("spider",1)
            tKills(1)
            spiderCooldown := toUnix_()
            IniWrite, %spiderCooldown%, config.ini, mobs, spiderCooldown
        }
    }
    if (choice = "bamboo"){
        toBamboo()
        if (kill && toUnix_() - bambooCooldown > mobs.rhino){
            killCounter_("rhino",2)
            tKills(2)
            bambooCooldown := toUnix_()
            IniWrite, %bambooCooldown%, config.ini, mobs, bambooCooldown
        }
    }
    if (choice = "stump"){
        toStump()
    }
    if (choice = "blue flower"){
        toBlueFlower_()
        if (kill && toUnix_() - bluefCooldown > mobs.rhino){
            killCounter_("rhino",1)
            tKills(1)
            bluefCooldown := toUnix_()
            IniWrite, %bluefCooldown%, config.ini, mobs, bluefCooldown
        }
    }
    if (choice = "cactus"){
        toCactus_()
        if (kill && toUnix_() - pumpkinCooldown > mobs.wwolf){
            killCounter_("wwolf",1)
            tKills(1)
            pumpkinCooldown := toUnix_()
            IniWrite, %pumpkinCooldown%, config.ini, mobs, pumpkinCooldown
        }
    }
    if (choice = "clover"){
        toClover_()
        if (kill && toUnix_() - cloverCooldown > mobs.ladybug){
            killCounter_("ladybug",1)
            killCounter_("rhino",1)
            tKills(2)
            cloverCooldown := toUnix_()
            IniWrite, %cloverCooldown%, config.ini, mobs, cloverCooldown
        }
    }
    if (choice = "coconut"){
        toCoconut_()
    }
    if (choice = "dandelion"){
        toDandelion_()
    }
    if (choice = "mountain top"){
        toMountain_()
    }
    if (choice = "mushroom"){
        toMushroom_()
        if (kill && toUnix_() - mushroomCooldown > mobs.ladybug){
            killCounter_("ladybug",1)
            tKills(1)
            mushroomCooldown := toUnix_()
            IniWrite, %mushroomCooldown%, config.ini, mobs, mushroomCooldown
        }
    }
    if (choice = "pepper"){
        toPepper_()
    }
    if (choice = "pine tree"){
        toPine_()
        if (kill && toUnix_() - pumpkinCooldown > mobs.wwolf){
            killCounter_("wwolf",1)
            tKills(1)
            pumpkinCooldown := toUnix_()
            IniWrite, %pumpkinCooldown%, config.ini, mobs, pumpkinCooldown
        }
        if (kill && toUnix_() - pineCooldown > mobs.mantis){
            killCounter_("mantis",2)
            tKills(2)
            pineCooldown := toUnix_()
            IniWrite, %pineCooldown%, config.ini, mobs, pineCooldown
        }
    }
    if (choice = "pineapple"){
        toPineapple_()
        if (kill && toUnix_() - pineappleCooldown > mobs.mantis){
            killCounter_("mantis",1)
            tKills(1)
            if (toUnix_() - pineappleCooldown > mobs.rhino){
                killCounter_("rhino",1)
                tKills(1)
            }
            pineappleCooldown := toUnix_()
            IniWrite, %pineappleCooldown%, config.ini, mobs, pineappleCooldown
        }
    }
    if (choice = "pumpkin"){
        toPumpkin_()
        if (kill && toUnix_() - pumpkinCooldown > mobs.wwolf){
            killCounter_("wwolf",1)
            tKills(1)
            pumpkinCooldown := toUnix_()
            IniWrite, %pumpkinCooldown%, config.ini, mobs, pumpkinCooldown
        }
    }
    if (choice = "rose"){
        toRose_()
        if (kill && toUnix_() - roseCooldown > mobs.scorpion){
            killCounter_("scorpion",2)
            tKills(2)
            roseCooldown := toUnix_()
            IniWrite, %roseCooldown%, config.ini, mobs, roseCooldown
        }
    }
    if (choice = "strawberry"){
        toStrawberry_()
        if (kill && toUnix_() - strawberryCooldown > mobs.ladybug){
            killCounter_("ladybug",2)
            tKills(2)
            strawberryCooldown := toUnix_()
            IniWrite, %strawberryCooldown%, config.ini, mobs, strawberryCooldown
        }
    }
}
Mondo_(){
    Reset_()
    toCannon_()
    toMondo_()
    statusUpdate("Attacking Mondo")
    sleep, 120000
}
Wealth_(){
    Reset_()
    toCannon_()
    toWealth_()
    wealthCooldown := toUnix_()
    IniWrite, %wealthCooldown%, config.ini, other, clockCooldown
    loop 10 {
        If (wrappedSearch("e_button.png",30,"high")[1] = 0){
            send e
            break
        }
        statusUpdate("Waiting To Activate Clock")
        sleep, 1000
    }
    sleep, 1000
    ;IniRead, stockingsCooldown, config.ini, other, stockingsCooldown
    ;GuiControlGet, stockingsCheck
    ;if (stockingsCheck = 0){
    ;    goto wealthend
    ;}
    ;statusUpdate("Moving To Stockings")
    ;send {raw}{,}
    ;send {d down}
    ;send {s down}
    ;sleep, 6000
    ;send {d up}
    ;send {s up}
    ;send {a down}
    ;sleep 550
    ;send {a up}
    ;stockingsCooldown := toUnix_()
    ;IniWrite, %stockingsCooldown%, config.ini, other, stockingsCooldown
    ;loop 10 {
    ;    If (wrappedSearch("e_button.png",30,"high")[1] = 0){
    ;        send e
    ;        break
    ;    }
    ;    statusUpdate("Waiting To Activate Stockings")
    ;    sleep, 1000
    ;}
    ;send {d down}
    ;sleep, 150
    ;send {d up}
    ;send {w down}
    ;sleep, 2000
    ;send {w up}
    ;send {s down}
    ;sleep, 2000
    ;send {s up}
    ;wealthend:
}
Samovar_(){
    Reset_()
    toCannon_()
    toSamovar_()
    samovarCooldown := toUnix_()
    IniWrite, %samovarCooldown%, config.ini, other, samovarCooldown
    loop 10 {
        If (wrappedSearch("e_button.png",30,"high")[1] = 0){
            send e
            sleep, 5000
            spiral()
            break
        }
        statusUpdate("Waiting To Activate Samovar")
        sleep, 1000
    }
}
toSamovar_(){
    statusUpdate("Moving To Samovar")
    send {raw}{,,}
    send e
    sleep, 1800
    send {Shift}
    sendSpace()
    sendSpace()
    send {Shift}
    sleep, 5000
    sendSpace()
    send {raw}{,,}
    send {w down}
    sleep, 10000
    sendSpace()
    sleep, 10000
    sendSpace()
    sleep, 800
    send {w up}
    send .
    sendSpace()
    send {w down}
    sleep, 700
    send {w up}

}
toStump(){
    send {raw}{,,}
    send e
    sleep, 1800
    send {Shift}
    sendSpace()
    sendSpace()
    send {Shift}
    sleep, 4800
    send {Shift}
    send {raw}{,}
    send {Shift}
    sleep, 400
    sendSpace()
    send .
    sleep, 2000
}
toSunflower(){
    send ..
    send e
    sleep, 300
    send {Shift}
    sendSpace()
    sendSpace()
    send {Shift}
    sleep, 900
    sendSpace()
    sleep, 3000
}
toSpider(){
    send ....
    send e
    sleep, 900
    send {Shift}
    sendSpace()
    sendSpace()
    send {Shift}
    sleep, 300
    sendSpace()
    sleep, 3000
}
toBamboo(){
    send {raw}{,,}
    send e
    sleep, 1100
    send {Shift}
    sendSpace()
    sendSpace()
    send {Shift}
    sleep, 2000
    sendSpace()
    sleep, 3000
}
toBlueFlower_(){
    send {raw}{,,}
    send e
    sleep, 550
    send {Shift}
    sendSpace()
    sendSpace()
    send {Shift}
    sleep, 3500
    sendSpace()
    sleep, 3000
}
toCactus_(){
    send ...
    send e
    sleep, 840
    send {Shift}
    sendSpace()
    sendSpace()
    send {Shift}
    sleep, 2300
    sendSpace()
    send {raw}{,,,}
    sleep, 3000
}
toClover_(){
    send {raw}{,}
    send e
    sleep, 950
    send {Shift}
    sendSpace()
    sendSpace()
    send {Shift}
    sleep, 3700
    sendSpace()
    send .
    sleep, 3000
}
toCoconut_(){
    send {right down}
    sleep, 150
    send {right up}
    send e
    sleep, 920
    send {Shift}
    sendSpace()
    sendSpace()
    send {Shift}
    sleep, 7000
    send {w down}
    sleep, 2000
    send {w up}
    send {raw}{,}
}
toDandelion_(){
    send {raw}{,}
    send e
    sleep, 410
    send {Shift}
    sendSpace()
    sendSpace()
    send {Shift}
    sleep, 1230
    sendSpace()
    send .
    sleep, 3000
}
toMountain_(){
    send {raw}{,,}
    send e
    sleep, 1950
    send {Shift}
    sendSpace()
    sendSpace()
    send {Shift}
    sendSpace()
    sleep, 3000
}
toMushroom_(){
    send {raw}{,,}
    send e
    sleep, 500
    send {Shift}
    sendSpace()
    sendSpace()
    send {Shift}
    sendSpace()
    send {raw}{,,}
    sleep, 2000
    send {w down}
    sleep, 500
    send {w up}
}
toPepper_(){
    send e
    sleep, 920
    send {Shift}
    sendSpace()
    sendSpace()
    send {Shift}
    sleep, 1600
    send {Shift}
    send .
    send {Shift}
    sleep, 7000
    send {w down}
    sendSpace()
    sleep, 700
    sendSpace()
    sleep, 700
    sendSpace()
    sleep, 700
    send {raw}{,}
    sleep, 2000
    sendSpace()
    send {d down}
    sleep, 3000
    sendSpace()
    sleep, 1000
    send {w up}
    sleep, 3000
    sendSpace()
    sleep, 2200
    send {d up}
    sleep, 900
    send ..
}
toPine_(){
    send ...
    send e
    sleep, 700
    send {Shift}
    sendSpace()
    sendSpace()
    send {Shift}
    sleep, 4900
    send {Shift}
    send {raw}{,}
    send {Shift}
    sleep, 300
    sendSpace()
    send ..
    sleep, 3000
}
toPineapple_(){
    send {raw}{,,}
    send e
    sleep, 1800
    send {Shift}
    sendSpace()
    sendSpace()
    send {Shift}
    sleep, 2700
    send {Shift}
    send {raw}{,,}
    send {Shift}
    sleep, 750
    sendSpace()
    sleep, 2000
}
toPumpkin_(){
    send ...
    send e
    sleep, 840
    send {Shift}
    sendSpace()
    sendSpace()
    send {Shift}
    sleep, 2600
    send {Shift}
    send .
    send {Shift}
    sleep, 900
    sendSpace()
    sleep, 3000
}
toWolf_(){
    send ...
    send e
    sleep, 840
    send {Shift}
    sendSpace()
    sendSpace()
    send {Shift}
    sleep, 4100
    sendSpace()
    send .
    sleep, 3000
}
toRose_(){
    send ..
    send e
    sleep, 450
    send {Shift}
    sendSpace()
    sendSpace()
    send {Shift}
    sleep, 2700
    sendSpace()
    sleep, 3000
}
toStrawberry_(){
    send ...
    send e
    sleep, 600
    send {Shift}
    sendSpace()
    sendSpace()
    send {Shift}
    sleep, 1800
    sendSpace()
    send .
    sleep, 3000
}
toMondo_(){
    statusUpdate("Moving To Mondo")
    send ..
    send e
    sleep, 1900
    send {Shift}
    sendSpace()
    sendSpace()
    send {Shift}
    sleep, 250
    sendSpace()
}
toWealth_(){
    statusUpdate("Moving To Wealth Clock")
    send {raw}{,}
    send e
    sleep, 1540
    send {Shift}
    sendSpace()
    sendSpace()
    send {Shift}
    sleep, 5800
    sendSpace()
    sleep, 2000
}
toStockings_(){
    statusUpdate("Moving To Stockings")
    send {raw}{,}
    send e
    sleep, 1040
    send {Shift}
    sendSpace()
    sendSpace()
    send {Shift}
    sleep, 4880
    sendSpace()
    send {raw}{,}
    sleep, 2000
    stockingsCooldown := toUnix_()
    IniWrite, %stockingsCooldown%, config.ini, other, stockingsCooldown
    loop 10 {
        If (wrappedSearch("e_button.png",30,"high")[1] = 0){
            send e
            break
        }
        statusUpdate("Waiting To Activate Stockings")
        sleep, 1000
    }
    send {d down}
    sleep, 150
    send {d up}
    send {w down}
    sleep, 2000
    send {w up}
    send {s down}
    sleep, 2000
    send {s up}
}
toFeast_(){
    statusUpdate("Moving To Feast")
    send ...
    send e
    sleep, 900
    send {Shift}
    sendSpace()
    sendSpace()
    send {Shift}
    sleep, 1150
    send {Shift}
    send .
    send {Shift}
    sleep, 560
    sendSpace()
    sleep, 3000
    feastCooldown := toUnix_()
    IniWrite, %feastCooldown%, config.ini, other, feastCooldown
    loop 10 {
        If (wrappedSearch("e_button.png",30,"high")[1] = 0){
            send e
            sleep, 5000
            spiral()
            break
        }
        statusUpdate("Waiting To Activate Feast")
        sleep, 1000
    }
}
toPB_(){
    statusUpdate("Moving To Polar Bear")
    send ...
    send e
    sleep, 960
    send {Shift}
    sendSpace()
    sendSpace()
    send {Shift}
    sleep, 1150
    sendSpace()
    sleep, 3000
}
toCandles_(){
    statusUpdate("Moving To Candles")
    send .
    send e
    sleep, 1000
    send {Shift}
    sendSpace()
    sendSpace()
    send {Shift}
    sleep, 5600
    sendSpace()
    send .
    sleep, 2000
    send {w down}
    sleep, 6000
    send {w up}
    candlesCooldown := toUnix_()
    IniWrite, %candlesCooldown%, config.ini, other, candlesCooldown
    loop 10 {
        If (wrappedSearch("e_button.png",30,"high")[1] = 0){
            send e
            sleep, 5000
            spiral()
            break
        }
        statusUpdate("Waiting To Activate Candles")
        sleep, 1000
    }
}
toWreath_(){
    statusUpdate("Moving To Wreath")
    send .
    send e
    sleep, 1000
    send {Shift}
    sendSpace()
    sendSpace()
    send {Shift}
    sleep, 4900
    send {Shift}
    send {raw}{,}
    send {Shift}
    sleep, 1190
    sendSpace()
    sleep, 2000
    wreathCooldown := toUnix_()
    IniWrite, %wreathCooldown%, config.ini, other, wreathCooldown
    loop 10 {
        If (wrappedSearch("e_button.png",30,"high")[1] = 0){
            send e
            sleep, 5000
            spiral()
            break
        }
        statusUpdate("Waiting To Activate Wreath")
        sleep, 1000
    }
}
toAnt_(){
    statusUpdate("Moving To Ant Pass")
    send e
    sleep, 1300
    send {Shift}
    sendSpace()
    sendSpace()
    send {Shift}
    sleep, 7000
    sendSpace()
    sleep, 2000
    send {w down}
    send {d down}
    sleep, 3000
    send {w up}
    send {d up}
    send {a down}
    sleep, 9000
    send {a up}
    send {d down}
    sleep, 600
    send {d up}
    antCooldown := toUnix_()
    IniWrite, %antCooldown%, config.ini, other, antCooldown
    loop 10 {
        If (wrappedSearch("e_button.png",30,"high")[1] = 0){
            send e
            break
        }
        statusUpdate("Waiting To Activate Ant Pass")
        sleep, 1000
    }
    GuiControlGet, antcCheck
    if (antcCheck) {
        send {d down}
        sleep, 1300
        send {d up}
        send {w down}
        sleep, 5000
        send {w up}
        send {s down}
        sleep, 400
        send {s up}
        sleep, 1000
        If (wrappedSearch("e_button.png",30,"high")[1] = 0){
            send e
            killCounter_("ant",1)
            sleep, 1500
            send {s down}
            sleep, 500
            send {s up}
            send {d down}
            sleep, 200
            send {d up}
            send 1
            WinGetPos , windowX, windowY, windowWidth, windowHeight, Roblox
            MouseMove, windowWidth / 2, windowHeight / 2
            click, down
            honeybreak := false
            loop 300 {
                if (not activeHoney()){
                    if (honeybreak){
                        if (toUnix_() - honeybreak > 20)
                            break
                    }
                    else
                        honeybreak := toUnix_()
                }
                sleep, 1000
            }
            imgPos := wrappedSearch("keep.png",30)
            If (imgPos[1] = 0){
                MouseMove, (imgPos[2] + 10), (imgPos[3] + 10)
                Click
                sleep, 1000
            }
        }
    }
}
toBlueBoost_(){
    statusUpdate("Moving To Blue Boost")
    send {raw}{,,}
    send e
    sleep, 550
    send {Shift}
    sendSpace()
    sendSpace()
    send {Shift}
    sleep, 4200
    sendSpace()
    sleep, 3000
    send {w down}
    sleep, 6000
    sendSpace()
    sleep, 2000
    send {w up}
    send {d down}
    sleep, 4000
    send {d up}
    send {s down}
    sleep, 5000
    send {s up}
    send {w down}
    sleep, 400
    send {w up}
    send {a down}
    sleep, 3000
    send {a up}
    bboostTimer := toUnix_()
    IniWrite, %bboostTimer%, config.ini, other, bboostTimer
    loop 10 {
        If (wrappedSearch("e_button.png",30,"high")[1] = 0){
            send e
            break
        }
        statusUpdate("Waiting To Activate Blue Boost")
        sleep, 1000
    }
}
toMBoost_(){
    statusUpdate("Moving To Mountain Boost")
    send ..
    send e
    sleep, 2200
    send {Shift}
    sendSpace()
    sendSpace()
    send {Shift}
    sleep, 2000
    send {w down}
    sleep, 7000
    send {w up}
    mboostTimer := toUnix_()
    IniWrite, %mboostTimer%, config.ini, other, mboostTimer
    loop 10 {
        If (wrappedSearch("e_button.png",30,"high")[1] = 0){
            send e
            break
        }
        statusUpdate("Waiting To Activate Mountain Boost")
        sleep, 1000
    }
}
toRedBoost_(){
    statusUpdate("Moving To Red Boost")
    send .
    send e
    sleep, 1200
    send {Shift}
    sendSpace()
    sendSpace()
    send {Shift}
    sleep, 5100
    sendSpace()
    send .
    sleep, 2000
    send {w down}
    sleep, 1250
    send {w up}
    send {a down}
    sleep, 3000
    send {a up}
    rboostTimer := toUnix_()
    IniWrite, %rboostTimer%, config.ini, other, rboostTimer
    loop 10 {
        If (wrappedSearch("e_button.png",30,"high")[1] = 0){
            send e
            break
        }
        statusUpdate("Waiting To Activate Red Boost")
        sleep, 1000
    }
}
toLid_(){
    statusUpdate("Moving To Lid Art")
    send ....
    send e
    sleep, 1630
    send {Shift}
    sendSpace()
    sendSpace()
    send {Shift}
    sleep, 250
    sendSpace()
    sleep, 1000
    send {w down}
    sleep, 15000
    sendSpace()
    sleep, 10000
    sendSpace()
    sleep, 300
    send {w up}
    lidCooldown := toUnix_()
    IniWrite, %lidCooldown%, config.ini, other, lidCooldown
    loop 10 {
        If (wrappedSearch("e_button.png",30,"high")[1] = 0){
            send e
            sleep, 5000
            spiral()
            break
        }
        statusUpdate("Waiting To Activate Lid Art")
        sleep, 1000
    }
}
toBucko_(){
    statusUpdate("Moving To Bucko")
    send {raw}{,,}
    send e
    sleep, 550
    send {Shift}
    sendSpace()
    sendSpace()
    send {Shift}
    sleep, 4200
    sendSpace()
    sleep, 3000
    send {w down}
    sleep, 6000
    sendSpace()
    sleep, 2000
    send {w up}
    send {d down}
    sleep, 4000
    send {d up}
    send {s down}
    sleep, 5000
    send {s up}
    send {w down}
    sleep, 400
    send {w up}
    send {a down}
    sleep, 3000
    send {a up}
    send {d down}
    sleep, 1000
    send {d up}
    send {w down}
    sleep, 2000
    sendSpace()
    sleep, 300
    send {w up}
}
toRiley_(){
    statusUpdate("Moving To Riley")
    send .
    send e
    sleep, 1000
    send {Shift}
    sendSpace()
    sendSpace()
    send {Shift}
    sleep, 4400
    send {shift}
    send .
    send {shift}
    sleep, 1250
    sendSpace()
    sleep, 2000
}
toHoney_(){
    statusUpdate("Moving To Honey Disp.")
    send {w down}
    sleep, 3000
    send {w up}
    send {a down}
    sleep, 8000
    sendSpace()
    sleep, 2000
    send {a up}
    send {s down}
    sleep, 700
    send {s up}
    sleep, 1000
    honeyCooldown := toUnix_()
    IniWrite, %honeyCooldown%, config.ini, other, honeyCooldown
    loop 10 {
        If (wrappedSearch("e_button.png",30,"high")[1] = 0){
            send e
            sleep, 5000
            break
        }
        statusUpdate("Waiting To Activate Honey Disp")
        sleep, 1000
    }
}
toCoco_(){
    statusUpdate("Moving To Coco Disp.")
    send {right down}
    sleep, 150
    send {right up}
    send e
    sleep, 920
    send {Shift}
    sendSpace()
    sendSpace()
    send {Shift}
    sleep, 7000
    send {w down}
    sleep, 2000
    send {w up}
    send {raw}{,}
    send {w down}
    sleep, 3000
    send {w up}
    send {a down}
    sleep, 7000
    send {a up}
    send {w down}
    send {d down}
    sleep, 3000
    send {w up}
    send {d up}
    send {s down}
    sleep, 400
    send {s up}
    send {d down}
    sleep, 100
    send {d up}
    sleep, 1000
    cocoCooldown := toUnix_()
    IniWrite, %cocoCooldown%, config.ini, other, cocoCooldown
    loop 10 {
        If (wrappedSearch("e_button.png",30,"high")[1] = 0){
            send e
            sleep, 5000
            break
        }
        statusUpdate("Waiting To Activate Coco Disp")
        sleep, 1000
    }
}
toTreat_(){
    statusUpdate("Moving To Treat Disp.")
    send {raw}{,,}
    send e
    sleep, 1600
    send {Shift}
    sendSpace()
    sendSpace()
    send {Shift}
    sleep, 1980
    sendSpace()
    sleep, 2000
    treatCooldown := toUnix_()
    IniWrite, %treatCooldown%, config.ini, other, treatCooldown
    loop 10 {
        If (wrappedSearch("e_button.png",30,"high")[1] = 0){
            send e
            sleep, 5000
            break
        }
        statusUpdate("Waiting To Activate Treat Disp")
        sleep, 1000
    }
}
toRed_(){
    statusUpdate("Moving To Strawberry Disp.")
    send .
    send e
    sleep, 1100
    send {Shift}
    sendSpace()
    sendSpace()
    send {Shift}
    sleep, 5800
    sendSpace()
    send .
    sleep, 2000
    redCooldown := toUnix_()
    IniWrite, %redCooldown%, config.ini, other, redCooldown
    loop 10 {
        If (wrappedSearch("e_button.png",30,"high")[1] = 0){
            send e
            sleep, 5000
            break
        }
        statusUpdate("Waiting To Activate Strawberry Disp.")
        sleep, 1000
    }
}
toBlue_(){
    statusUpdate("Moving To Blueberry Disp.")
    send {raw}{,,}
    send e
    sleep, 550
    send {Shift}
    sendSpace()
    sendSpace()
    send {Shift}
    sleep, 4200
    sendSpace()
    sleep, 3000
    send {w down}
    sleep, 6000
    send {w up}
    send {s down}
    sleep, 500
    send {d down}
    sleep, 5000
    send {s up}
    send {d up}
    send {w down}
    sleep, 3000
    send {w up}
    send {a down}
    sleep, 400
    send {a up}
    send {s down}
    sleep, 100
    send {s up}
    blueCooldown := toUnix_()
    IniWrite, %blueCooldown%, config.ini, other, blueCooldown
    loop 10 {
        If (wrappedSearch("e_button.png",30,"high")[1] = 0){
            send e
            sleep, 5000
            break
        }
        statusUpdate("Waiting To Activate Blueberry Disp.")
        sleep, 1000
    }
}