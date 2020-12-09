local ADDON_NAME, namespace = ...
local L = namespace.L

local f = CreateFrame("FRAME");
f:RegisterEvent("PLAYER_DEAD");

local randomLineNumber = 0
local _, playerclass = UnitClass("player")

local voicelines = {}
voicelines[1] = {94633, L["What you be doin' here, mon? It not your time to pass on... yet."]}
voicelines[2] = {98420, L["No, no, no, ya no good to me dead. I be able to return ya to life... for a price."]}
voicelines[3] = {98423, L["Well look at you! Da mighty hero... ha!"]}
voicelines[4] = {98424, L["So... what brings you to visit lonely old Bwonsamdi?"]}
voicelines[5] = {98426, L["Hello, hello. You're gonna make a deal, eh?"]}
voicelines[6] = {98428, L["Hm... somebody likes to play dangerous games."]}
voicelines[7] = {98429, L["I see dead people. Yes, kinda my ting, you know."]}
voicelines[8] = {98430, L["Ya lookin' a little toasty. You wanna drink? How about, uh... ZOMBIE!"]}
voicelines[9] = {98431, L["Sooner or later, everyone comes to me."]}
voicelines[10] = {98433, L["See ya soon. Real soon..."]}
voicelines[11] = {109290, L["Run along, mon. Bwonsamdi be watchin you."]}
voicelines[12] = {113239, L["Be of you. Ain't nottin for ya here now."]}
voicelines[13] = {109293, L["Let me guess... ya got in over ya head?"]}
voicelines[14] = {109294, L["Tsk, tsk. I did not expect ta be seein' you here so soon."]}
voicelines[15] = {109295, L["Oh, poor little thing, ya be needin' some help from old Bwonsamdi?"]}
voicelines[16] = {109296, L["Hihihi! Now dat was an impressive death!"]}
voicelines[17] = {109297, L["Ah, ya come ta spend some time with Bwonsamdi?"]}
voicelines[18] = {98425, L["What ya be asking of death?"]}

local special_voicelines = {} --19
special_voicelines[1] = {109291, L["Ya tink I let ya die, while you still owe me?"]}
special_voicelines[2] = {98421, L["Don't ya go forgetten our deal now... if ya want to me favor."]}

local class_voicelines = {} --20
class_voicelines["DEMONHUNTER"] = {109299, L["Someting about ya seem off... Ah, da stench of a demon hunter."] }
class_voicelines["DEATHKNIGHT"] = {109298, L["Ah, a death knight. Ya should come see MY death gate!"] }
class_voicelines["PRIEST"] = {98414, L["Oho... a priest! If ya ever consider a change of faith, be sure you let old Bwonsamdi know, you hear?"] }
class_voicelines["DRUID"] = {109300, L["Ya not be dreaming now, mon."] }
class_voicelines["HUNTER"] = {109301, L["Ya be tryin' ta feign death, mon? Shame..."] }
class_voicelines["MAGE"] = {109302, L["Dat blink didn't get ya very far, did it?"] }
class_voicelines["MONK"] = {109303, L["Hah! Ya didn't roll out of dat one."] }
class_voicelines["PALADIN"] = {109304, L["I tink ya followed da wrong light, mon."] }
class_voicelines["ROGUE"] = {109305, L["Ya can't be hidin' from Bwonsamdi, little ting."] }
class_voicelines["SHAMAN"] = {109306, L["Oh, da spirits be with ya now, mon."] }
class_voicelines["WARLOCK"] = {109307, L["Awww, did ya lose your little shiny soulstone, eh?"] }
class_voicelines["WARRIOR"] = {109308, L["Haha, all dat armor didn't help ya much, did it?"] }

local easteregg_voicelines = {} --21
easteregg_voicelines[1] = {44497, L["Are we done here? Stop! I have a Heroes of the Storm match coming up, okay? Thank you. Bye bye!"], L["Gazlowe"]}
easteregg_voicelines[2] = {6254, L["Burning lootin', bombin' shootin'"], L["Bomberteam"]}
easteregg_voicelines[3] = {105675, L["Hek hek hek hek hek hek hek hek"], L["Jani"]}
easteregg_voicelines[4] = {105677, L["Silly saurid. Ya be dead again!"], L["Jani"]}
easteregg_voicelines[5] = {105683, L["When ya gone, can I be havin' your stuff?"], L["Jani"]}

function character_says_loud(character, id, string)
  print ("|cFFFFFF9F"..character..L[" says: "] ..string.."|r")
  PlaySound(id, "Dialog")
end

function dealTheDice()
  randomLineNumber = math.random(1, 21)
  if randomLineNumber > 0 and randomLineNumber < 19 then
    character_says_loud(L["Bwonsamdi"], voicelines[randomLineNumber][1], voicelines[randomLineNumber][2])
  elseif randomLineNumber == 19 then
    if IsQuestFlaggedCompleted(47250) then
      randomLineNumber = math.random(1, 2)
      character_says_loud(L["Bwonsamdi"], special_voicelines[randomLineNumber][1], special_voicelines[randomLineNumber][2])
    else
      dealTheDice()
    end
  elseif randomLineNumber == 20 then
    character_says_loud(L["Bwonsamdi"], class_voicelines[playerclass][1], class_voicelines[playerclass][2])
  elseif randomLineNumber == 21 then
    randomLineNumber = math.random(1, 10)
    if randomLineNumber <= #easteregg_voicelines then
      character_says_loud(easteregg_voicelines[randomLineNumber][3], easteregg_voicelines[randomLineNumber][1], easteregg_voicelines[randomLineNumber][2])
    else
      dealTheDice()
    end
  end
end

f:SetScript("OnEvent", function(self, event, ...)
  if event == "PLAYER_DEAD" then
  dealTheDice()
end
end)
