local ADDON_NAME, namespace = ...
local L = namespace.L

local f = CreateFrame("FRAME");
f:RegisterEvent("PLAYER_DEAD");

local voicelines = {
  -- bwonsamdi
  {
    weight = 20,
    character = "Bwonsamdi",
    type = "say",
    id = 94633,
    text = "What you be doin' here, mon? It not your time to pass on... yet."
  },
  {
    weight = 20,
    character = "Bwonsamdi",
    type = "say",
    id = 98420,
    text = "No, no, no, ya no good to me dead. I be able to return ya to life... for a price."
  },
  { weight = 10, character = "Bwonsamdi", type = "say", id = 98423, text = "Well look at you! Da mighty hero... ha!" },
  {
    weight = 20,
    character = "Bwonsamdi",
    type = "say",
    id = 98424,
    text = "So... what brings you to visit lonely old Bwonsamdi?"
  },
  {
    weight = 20,
    character = "Bwonsamdi",
    type = "say",
    id = 98426,
    text = "Hello, hello. You're gonna make a deal, eh?"
  },
  {
    weight = 20,
    character = "Bwonsamdi",
    type = "say",
    id = 98428,
    text = "Hm... somebody likes to play dangerous games."
  },
  {
    weight = 20,
    character = "Bwonsamdi",
    type = "say",
    id = 98429,
    text = "I see dead people. Yes, kinda my ting, you know."
  },
  {
    weight = 20,
    character = "Bwonsamdi",
    type = "say",
    id = 98430,
    text = "Ya lookin' a little thirsty. You wanna drink? How about a ZOMBIE!"
  },
  { weight = 20, character = "Bwonsamdi", type = "say", id = 98431, text = "Sooner or later, everyone comes to me." },
  { weight = 20, character = "Bwonsamdi", type = "say", id = 98433, text = "See ya soon. Real soon..." },
  {
    weight = 20,
    character = "Bwonsamdi",
    type = "say",
    id = 109290,
    text = "Run along, mon. Bwonsamdi be watchin you."
  },
  {
    weight = 20,
    character = "Bwonsamdi",
    type = "say",
    id = 113239,
    text = "Be of you. Ain't nottin for ya here now."
  },
  { weight = 20, character = "Bwonsamdi", type = "say", id = 109293, text = "Let me guess... ya got in over ya head?" },
  {
    weight = 20,
    character = "Bwonsamdi",
    type = "say",
    id = 109294,
    text = "Tsk, tsk. I did not expect ta be seein' you here so soon."
  },
  {
    weight = 20,
    character = "Bwonsamdi",
    type = "say",
    id = 109295,
    text = "Oh, poor little thing, ya be needin' some help from old Bwonsamdi?"
  },
  {
    weight = 20,
    character = "Bwonsamdi",
    type = "say",
    id = 109296,
    text = "Hihihi! Now dat was an impressive death!"
  },
  {
    weight = 20,
    character = "Bwonsamdi",
    type = "say",
    id = 109297,
    text = "Ah, ya come ta spend some time with Bwonsamdi?"
  },
  { weight = 20, character = "Bwonsamdi", type = "say", id = 98425,  text = "What ya be asking of death?" },
  -- eastereggs
  {
    weight = 1,
    character = "Gazlowe",
    type = "say",
    id = 44497,
    text =
    "Are we done here? Stop! I have a Heroes of the Storm match coming up, okay? Thank you. Bye bye!"
  },
  { weight = 1, character = "Bomberteam", type = "say", id = 6254,   text = "Burning lootin', bombin' shootin'" },
  { weight = 1, character = "Jani",       type = "say", id = 105675, text = "Hek hek hek hek hek hek hek hek" },
  { weight = 1, character = "Jani",       type = "say", id = 105677, text = "Silly saurid. Ya be dead again!" },
  {
    weight = 1,
    character = "Jani",
    type = "say",
    id = 105683,
    text =
    "When ya gone, can I be havin' your stuff?"
  },
  { weight = 1,  character = "Drogbar", type = "yell", id = 224969, text = "Huh? Drogbar smash!" },
  -- CANT BE PLAYED: { weight = 1,  character = "???",        type = "whisper", id = 222701, text = "I am eternal." },
  -- CANT BE PLAYED: { weight = 1,  character = "???",        type = "whisper", id = 222703, text = "You end now." },
  -- dragons
  -- CANT BE PLAYED: { weight = 10, character = "Fyrakk",     type = "yell",    id = 222092, text = "Kindling for the fire!" },
  -- CANT BE PLAYED: { weight = 10, character = "Fyrakk",     type = "yell",    id = 222091, text = "All who serve the aspects SHALL BURN!" },
  -- CANT BE PLAYED: { weight = 10, character = "Fyrakk",     type = "say",     id = 222492, text = "HAHAHA!!" },
  { weight = 2, character = "Fyrakk",  type = "say",  id = 222437, text = "Haha! Fly away little dragons." },
  { weight = 2, character = "Fyrakk",  type = "say",  id = 222586, text = "Begone worms!" },
  -- CANT BE PLAYED: { weight = 2, character = "Fyrakk",  type = "yell", id = 222497, text = "Weak playthings of the titans! Burn!" },
  -- CANT BE PLAYED: { weight = 10, character = "Raszageth", type = "yell",    id = 202099, text = "Your end was inevitable." },
  -- CANT BE PLAYED: { weight = 10, character = "Raszageth", type = "yell",    id = 202015, text = "Ruin! Ruin!" },
  -- CANT BE PLAYED: { weight = 10, character = "Raszageth", type = "yell",    id = 202014, text = "Nothing will be left standing!" },
  -- CANT BE PLAYED: { weight = 10, character = "Raszageth", type = "yell",    id = 202010, text = "Let devastation spread!" },
  -- CANT BE PLAYED: { weight = 10, character = "Raszageth", type = "yell",    id = 202024, text = "But you will not survive to witness this new age." },

  -- ??? TODO:  figure out characters & implement later, probably to spoilery right now
  --{ weight = 5, character = "???", type = "say", id = 222351, text = "You have come so far, my child." },
  --{ weight = 5, character = "???", type = "say", id = 222350, text = "Together... always." },
  --{ weight = 5, character = "???", type = "say", id = 221958, text = "You cannot go. I am not ready." },
}

-- add Quest specific voicelines
if C_QuestLog.IsQuestFlaggedCompleted(47250) then
  voicelines[#voicelines + 1] = {
    weight = 20,
    character = "Bwonsamdi",
    type = "say",
    id = 109291,
    text = "Ya tink I let ya die, while you still owe me?"
  }
  voicelines[#voicelines + 1] = {
    weight = 20,
    character = "Bwonsamdi",
    type = "say",
    id = 98421,
    text = "Don't ya go forgettin' our deal now... if ya want to keep me favor."
  }
end

-- add Class specific voicelines
local function add_class_voicelines(playerclass)
  if playerclass == nil then
    local _, playerclass = UnitClass("player")
  end
  if playerclass == "WARRIOR" then
    voicelines[#voicelines + 1] = {
      weight = 20,
      character = "Bwonsamdi",
      type = "say",
      id = 109308,
      text = "Haha, all dat armor didn't help ya much, did it?"
    }
  elseif playerclass == "PALADIN" then
    voicelines[#voicelines + 1] = {
      weight = 20,
      character = "Bwonsamdi",
      type = "say",
      id = 109304,
      text = "I tink ya followed da wrong light, mon."
    }
  elseif playerclass == "HUNTER" then
    voicelines[#voicelines + 1] = {
      weight = 20,
      character = "Bwonsamdi",
      type = "say",
      id = 109301,
      text = "Ya be tryin' ta feign death, mon? Shame..."
    }
  elseif playerclass == "ROGUE" then
    voicelines[#voicelines + 1] = {
      weight = 20,
      character = "Bwonsamdi",
      type = "say",
      id = 109305,
      text = "Ya can't be hidin' from Bwonsamdi, little ting."
    }
  elseif playerclass == "PRIEST" then
    voicelines[#voicelines + 1] = {
      weight = 20,
      character = "Bwonsamdi",
      type = "say",
      id = 98414,
      text = "Oho... a priest! If ya ever consider a change of faith, be sure you let old Bwonsamdi know, you hear?"
    }
  elseif playerclass == "DEATHKNIGHT" then
    voicelines[#voicelines + 1] = {
      weight = 20,
      character = "Bwonsamdi",
      type = "say",
      id = 109298,
      text = "Ah, a death knight. Ya should come see MY death gate!"
    }
  elseif playerclass == "SHAMAN" then
    voicelines[#voicelines + 1] = {
      weight = 20,
      character = "Bwonsamdi",
      type = "say",
      id = 109306,
      text = "Oh, da spirits be with ya now, mon."
    }
  elseif playerclass == "MAGE" then
    voicelines[#voicelines + 1] = {
      weight = 20,
      character = "Bwonsamdi",
      type = "say",
      id = 109302,
      text = "Dat blink didn't get ya very far, did it?"
    }
  elseif playerclass == "WARLOCK" then
    voicelines[#voicelines + 1] = {
      weight = 20,
      character = "Bwonsamdi",
      type = "say",
      id = 109307,
      text = "Awww, did ya lose your little shiny soulstone, eh?"
    }
  elseif playerclass == "MONK" then
    voicelines[#voicelines + 1] = {
      weight = 20,
      character = "Bwonsamdi",
      type = "say",
      id = 109303,
      text = "Hah! Ya didn't roll out of dat one."
    }
  elseif playerclass == "DRUID" then
    voicelines[#voicelines + 1] = {
      weight = 20,
      character = "Bwonsamdi",
      type = "say",
      id = 109300,
      text = "Ya not be dreaming now, mon."
    }
  elseif playerclass == "DEMONHUNTER" then
    voicelines[#voicelines + 1] = {
      weight = 20,
      character = "Bwonsamdi",
      type = "say",
      id = 109299,
      text = "Someting about ya seem off... Ah, da stench of a demon hunter."
    }
  end
end
add_class_voicelines(nil)


-- actual code & calculations
local function calculateTotalWeight(table)
  local totalWeight = 0
  for _, element in ipairs(table) do
    totalWeight = totalWeight + element.weight
  end
  return totalWeight
end

local lastExecutionTime = 0
local totalWeight = calculateTotalWeight(voicelines)

local function play_voiceline(character, yell_or_say, id, string)
  if yell_or_say == "say" then
    print("|cFFFFFF9F" .. L[character] .. L[" says: "] .. L[string] .. "|r")
    PlaySound(id, "Dialog")
  elseif yell_or_say == "yell" then
    print("|cFFFF3F40" .. L[character] .. L[" yells: "] .. L[string] .. "|r")
    PlaySound(id, "Dialog")
  elseif yell_or_say == "whisper" then
    print("|cFFC0C0C0" .. L[character] .. L[" whispers: "] .. L[string] .. "|r")
    PlaySound(id, "Dialog")
  end
end

local function randomWeightedElement(voice_table, totalWeight)
  -- Generate a random number within the total weight range
  local randomValue = math.random() * totalWeight

  -- Iterate over the elements and select the one based on the cumulative weight
  local cumulativeWeight = 0
  for _, element in ipairs(voice_table) do
    cumulativeWeight = cumulativeWeight + element.weight
    if randomValue <= cumulativeWeight then
      return element
    end
  end

  -- In case of an empty table or unexpected conditions, return nil
  return nil
end

local function play_random_voiceline()
  -- Only run this function every 3 seconds at most
  local timeElapsed = GetTime() - lastExecutionTime
  -- Check if the time elapsed is less than 5 seconds
  if timeElapsed < 3 then
    --@do-not-package@
    print("Bwonsamdi: Called too soon.")
    --@end-do-not-package@
    -- Discard the function call
    return
  end
  -- Update last execution time
  lastExecutionTime = GetTime()

  -- Get a random voiceline
  local random_voiceline = randomWeightedElement(voicelines, totalWeight)
  if random_voiceline == nil then
    return
  end
  play_voiceline(random_voiceline.character, random_voiceline.type, random_voiceline.id, random_voiceline.text)
end

f:SetScript("OnEvent", function(self, event, ...)
  if event == "PLAYER_DEAD" then
    play_random_voiceline()
  end
end)


--@do-not-package@

-- THE FOLLOWING IS SHITTY CODE FOR DEVELOPMENT PURPOSES ONLY ^^'
-- IT SHOULD NOT BE INCLUDED IN THE RELEASE VERSION

-- Function to open the translation dialog
local function openTranslationDialog(missingTranslations)
  -- Create a custom dialog frame
  StaticPopupDialogs["MISSING_TRANSLATIONS_DIALOG"] = {
    text = "Missing Translations",
    button1 = "Close",
    hasEditBox = true,
    editBoxWidth = 350,
    editBoxHeight = 200,
    timeout = 0,
    whileDead = true,
    hideOnEscape = true,
    preferredIndex = 3,
    OnShow = function(self)
      -- Set the text of the edit box to the missing translations
      self.editBox:SetText(missingTranslations)
      self.editBox:SetFocus()
      self.editBox:HighlightText()
    end,
    OnHide = function(self)
      self.editBox:SetText("") -- Clear the text when closing the dialog
    end,
  }

  -- Show the custom dialog
  StaticPopup_Show("MISSING_TRANSLATIONS_DIALOG")
end

-- Function to handle the slash command
local function Bwonsamdi_HandleSlashCommand(msg)
  if msg == "translations" then
    add_class_voicelines("WARRIOR")
    add_class_voicelines("PALADIN")
    add_class_voicelines("HUNTER")
    add_class_voicelines("ROGUE")
    add_class_voicelines("PRIEST")
    add_class_voicelines("SHAMAN")
    add_class_voicelines("MAGE")
    add_class_voicelines("WARLOCK")
    add_class_voicelines("MONK")
    add_class_voicelines("DRUID")
    add_class_voicelines("DEMONHUNTER")
    voicelines[#voicelines + 1] = {
      weight = 10,
      character = "Bwonsamdi",
      type = "say",
      id = 109291,
      text = "Ya tink I let ya die, while you still owe me?"
    }
    voicelines[#voicelines + 1] = {
      weight = 10,
      character = "Bwonsamdi",
      type = "say",
      id = 98421,
      text = "Don't ya go forgettin' our deal now... if ya want to keep me favor."
    }
    local Translations = {}
    table.insert(Translations, "L[\" whispers: \"] = true")
    table.insert(Translations, "L[\" says: \"] = true")
    table.insert(Translations, "L[\" yells: \"] = true")
    for _, element in ipairs(voicelines) do
      table.insert(Translations, "L[\"" .. element.character .. "\"] = true")
      table.insert(Translations, "L[\"" .. element.text .. "\"] = true")
    end

    local set = {}
    local deduplicatedTranslations = {}
    for _, value in ipairs(Translations) do
      if not set[value] then
        table.insert(deduplicatedTranslations, value)
        set[value] = true
      end
    end

    table.sort(deduplicatedTranslations)

    openTranslationDialog(table.concat(deduplicatedTranslations, "\n"))
  elseif msg == "test" then
    play_random_voiceline()
  else
    print("Bwonsamdi: Slash commands:")
    print("Bwonsamdi: /bwonsamdi translations - Open the translation dialog")
    print("Bwonsamdi: /bwonsamdi test - Play a random voiceline")
  end
end

-- Register the slash command handler
SlashCmdList["BWONSAMDI"] = Bwonsamdi_HandleSlashCommand
SLASH_BWONSAMDI1 = "/bwonsamdi"

print("Bwonsamdi: loaded!")
--@end-do-not-package@
