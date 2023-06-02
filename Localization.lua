local _, namespace = ...

local L = setmetatable({}, {
    __index = function(self, key)
        if key ~= nil then
            --@do-not-package@
            print(string.format('Missing translation for L["%s"]', key))
            --@end-do-not-package@
            rawset(self, key, tostring(key))
        end
        return tostring(key)
    end,
})

namespace.L = L

-- The EU English game client also
-- uses the US English locale code.
L[" says: "] = true
L[" whispers: "] = true
L[" yells: "] = true
L["???"] = true
L["Ah, ya come ta spend some time with Bwonsamdi?"] = true
L["All who serve the aspects SHALL BURN!"] = true
L["Are we done here? Stop! I have a Heroes of the Storm match coming up, okay? Thank you. Bye bye!"] = true
L["Awww, did ya lose your little shiny soulstone, eh?"] = true
L["Be of you. Ain't nottin for ya here now."] = true
L["Begone worms!"] = true
L["Bomberteam"] = true
L["Burning lootin', bombin' shootin'"] = true
L["But you will not survive to witness this new age."] = true
L["Bwonsamdi"] = true
L["Dat blink didn't get ya very far, did it?"] = true
L["Don't ya go forgettin' our deal now... if ya want to keep me favor."] = true
L["Drogbar"] = true
L["Fyrakk"] = true
L["Gazlowe"] = true
L["HAHAHA!!"] = true
L["Hah! Ya didn't roll out of dat one."] = true
L["Haha! Fly away little dragons."] = true
L["Haha, all dat armor didn't help ya much, did it?"] = true
L["Hek hek hek hek hek hek hek hek"] = true
L["Hello, hello. You're gonna make a deal, eh?"] = true
L["Hihihi! Now dat was an impressive death!"] = true
L["Hm... somebody likes to play dangerous games."] = true
L["Huh? Drogbar smash!"] = true
L["I am eternal."] = true
L["I see dead people. Yes, kinda my ting, you know."] = true
L["I tink ya followed da wrong light, mon."] = true
L["Jani"] = true
L["Kindling for the fire!"] = true
L["Let devastation spread!"] = true
L["Let me guess... ya got in over ya head?"] = true
L["No, no, no, ya no good to me dead. I be able to return ya to life... for a price."] = true
L["Nothing will be left standing!"] = true
L["Oh, da spirits be with ya now, mon."] = true
L["Oh, poor little thing, ya be needin' some help from old Bwonsamdi?"] = true
L["Oho... a priest! If ya ever consider a change of faith, be sure you let old Bwonsamdi know, you hear?"] = true
L["Raszageth "] = true
L["Ruin! Ruin!"] = true
L["Run along, mon. Bwonsamdi be watchin you."] = true
L["See ya soon. Real soon..."] = true
L["Silly saurid. Ya be dead again!"] = true
L["So... what brings you to visit lonely old Bwonsamdi?"] = true
L["Someting about ya seem off... Ah, da stench of a demon hunter."] = true
L["Sooner or later, everyone comes to me."] = true
L["Tsk, tsk. I did not expect ta be seein' you here so soon."] = true
L["Weak playthings of the titans! Burn!"] = true
L["Well look at you! Da mighty hero... ha!"] = true
L["What ya be asking of death?"] = true
L["What you be doin' here, mon? It not your time to pass on... yet."] = true
L["When ya gone, can I be havin' your stuff?"] = true
L["Ya be tryin' ta feign death, mon? Shame..."] = true
L["Ya can't be hidin' from Bwonsamdi, little ting."] = true
L["Ya lookin' a little thirsty. You wanna drink? How about a ZOMBIE!"] = true
L["Ya not be dreaming now, mon."] = true
L["Ya tink I let ya die, while you still owe me?"] = true
L["You end now."] = true
L["Your end was inevitable."] = true

local locale = GetLocale()
if locale == 'frFR' then
    --@localization(locale="frFR", format="lua_additive_table", handle-unlocalized="blank")@
elseif locale == 'deDE' then
    --@localization(locale="deDE", format="lua_additive_table", handle-unlocalized="blank")@
elseif locale == 'ruRU' then
    --@localization(locale="ruRU", format="lua_additive_table", handle-unlocalized="blank")@
elseif locale == 'esES' then
    --@localization(locale="esES", format="lua_additive_table", handle-unlocalized="blank")@
elseif locale == 'zhTW' then
    --@localization(locale="zhTW", format="lua_additive_table", handle-unlocalized="blank")@
elseif locale == 'zhCN' then
    --@localization(locale="zhCN", format="lua_additive_table", handle-unlocalized="blank")@
elseif locale == 'koKR' then
    --@localization(locale="koKR", format="lua_additive_table", handle-unlocalized="blank")@
elseif locale == 'ptBR' then
    --@localization(locale="ptBR", format="lua_additive_table", handle-unlocalized="blank")@
elseif locale == 'itIT' then
    --@localization(locale="itIT", format="lua_additive_table", handle-unlocalized="blank")@
end

for k, v in pairs(L) do
    if v == true then
        L[k] = k
    end
end
