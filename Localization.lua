local _, namespace = ...

local L = setmetatable({}, { __index = function(t, k)
  local v = tostring(k)
  rawset(t, k, v)
  return v
end })

namespace.L = L

local LOCALE = GetLocale()

if LOCALE == "enUS" then
  -- The EU English game client also
  -- uses the US English locale code.
  L[" says: "] = " says: "
  L["Ah, a death knight. Ya should come see MY death gate!"] = "Ah, a death knight. Ya should come see MY death gate!"
  L["Ah, ya come ta spend some time with Bwonsamdi?"] = "Ah, ya come ta spend some time with Bwonsamdi?"
  L["Are we done here? Stop! I have a Heroes of the Storm match coming up, okay? Thank you. Bye bye!"] = "Are we done here? Stop! I have a Heroes of the Storm match coming up, okay? Thank you. Bye bye!"
  L["Awww, did ya lose your little shiny soulstone, eh?"] = "Awww, did ya lose your little shiny soulstone, eh?"
  L["Be of you. Ain't nottin for ya here now."] = "Be of you. Ain't nottin for ya here now."
  L["Bomberteam"] = "Bomberteam"
  L["Burning lootin', bombin' shootin'"] = "Burning lootin', bombin' shootin'"
  L["Bwonsamdi"] = "Bwonsamdi"
  L["Dat blink didn't get ya very far, did it?"] = "Dat blink didn't get ya very far, did it?"
  L["Don't ya go forgetten our deal now... if ya want to me favor."] = "Don't ya go forgetten our deal now... if ya want to me favor."
  L["Gazlowe"] = "Gazlowe"
  L["Hah! Ya didn't roll out of dat one."] = "Hah! Ya didn't roll out of dat one."
  L["Haha, all dat armor didn't help ya much, did it?"] = "Haha, all dat armor didn't help ya much, did it?"
  L["Hek hek hek hek hek hek hek hek"] = "Hek hek hek hek hek hek hek hek"
  L["Hello, hello. You're gonna make a deal, eh?"] = "Hello, hello. You're gonna make a deal, eh?"
  L["Hihihi! Now dat was an impressive death!"] = "Hihihi! Now dat was an impressive death!"
  L["Hm... somebody likes to play dangerous games."] = "Hm... somebody likes to play dangerous games."
  L["I see dead people. Yes, kinda my ting, you know."] = "I see dead people. Yes, kinda my ting, you know."
  L["I tink ya followed da wrong light, mon."] = "I tink ya followed da wrong light, mon."
  L["Jani"] = "Jani"
  L["Let me guess... ya got in over ya head?"] = "Let me guess... ya got in over ya head?"
  L["No, no, no, ya no good to me dead. I be able to return ya to life... for a price."] = "No, no, no, ya no good to me dead. I be able to return ya to life... for a price."
  L["Oh, da spirits be with ya now, mon."] = "Oh, da spirits be with ya now, mon."
  L["Oh, poor little thing, ya be needin' some help from old Bwonsamdi?"] = "Oh, poor little thing, ya be needin' some help from old Bwonsamdi?"
  L["Oho... a priest! If ya ever consider a change of faith, be sure you let old Bwonsamdi know, you hear?"] = "Oho... a priest! If ya ever consider a change of faith, be sure you let old Bwonsamdi know, you hear?"
  L["Run along, mon. Bwonsamdi be watchin you."] = "Run along, mon. Bwonsamdi be watchin you."
  L["See ya soon. Real soon..."] = "See ya soon. Real soon..."
  L["Silly saurid. Ya be dead again!"] = "Silly saurid. Ya be dead again!"
  L["So... what brings you to visit lonely old Bwonsamdi?"] = "So... what brings you to visit lonely old Bwonsamdi?"
  L["Someting about ya seem off... Ah, da stench of a demon hunter."] = "Someting about ya seem off... Ah, da stench of a demon hunter."
  L["Sooner or later, everyone comes to me."] = "Sooner or later, everyone comes to me."
  L["Tsk, tsk. I did not expect ta be seein' you here so soon."] = "Tsk, tsk. I did not expect ta be seein' you here so soon."
  L["Well look at you! Da mighty hero... ha!"] = "Well look at you! Da mighty hero... ha!"
  L["What ya be asking of death?"] = "What ya be asking of death?"
  L["What you be doin' here, mon? It not your time to pass on... yet."] = "What you be doin' here, mon? It not your time to pass on... yet."
  L["When ya gone, can I be havin' your stuff?"] = "When ya gone, can I be havin' your stuff?"
  L["Ya be tryin' ta feign death, mon? Shame..."] = "Ya be tryin' ta feign death, mon? Shame..."
  L["Ya can't be hidin' from Bwonsamdi, little ting."] = "Ya can't be hidin' from Bwonsamdi, little ting."
  L["Ya lookin' a little toasty. You wanna drink? How about, uh... ZOMBIE!"] = "Ya lookin' a little toasty. You wanna drink? How about, uh... ZOMBIE!"
  L["Ya not be dreaming now, mon."] = "Ya not be dreaming now, mon."
  L["Ya tink I let ya die, while you still owe me?"] = "Ya tink I let ya die, while you still owe me?"

  return
end

if LOCALE == "deDE" then
  -- German translations go here

  return
end

if LOCALE == "frFR" then
  -- French translations go here

  return
end

if LOCALE == "esES" or LOCALE == "esMX" then
  -- Spanish translations go here

  return
end

if LOCALE == "ptBR" then
  -- Brazilian Portuguese translations go here

  -- Note that the EU Portuguese WoW client also
  -- uses the Brazilian Portuguese locale code.
  return
end

if LOCALE == "ruRU" then
  -- Russian translations go here

  return
end

if LOCALE == "koKR" then
  -- Korean translations go here

  return
end

if LOCALE == "zhCN" then
  -- Simplified Chinese translations go here

  return
end

if LOCALE == "zhTW" then
  -- Traditional Chinese translations go here

  return
end
