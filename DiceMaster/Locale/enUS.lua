-- >>> l10n esES — Locale base (inglés). Todas las claves del addon deben existir aquí.
local addonName, ns = ...
local L = LibStub("AceLocale-3.0"):NewLocale(addonName, "enUS", true, false)
if not L then return end

-- ============================================================
-- DiceMaster.lua — StaticPopupDialogs (vida / maná)
-- ============================================================
L["Set Health value:"] = "Set Health value:"
L["Set maximum Health value:"] = "Set maximum Health value:"
L["Set Mana value:"] = "Set Mana value:"
L["Set maximum Mana value:"] = "Set maximum Mana value:"
L["Set %s value:"] = "Set %s value:"
L["Set maximum %s value:"] = "Set maximum %s value:"

-- ============================================================
-- DiceMaster.lua — Trait usage (TRAIT_USAGE)
-- ============================================================
L["1 Use"] = "1 Use"
L["2 Uses"] = "2 Uses"
L["3 Uses"] = "3 Uses"
L["Passive"] = "Passive"
L["(None)"] = "(None)"
L["<Unknown Usage>"] = "<Unknown Usage>"

-- ============================================================
-- DiceMaster.lua — Trait cast time (TRAIT_CAST_TIME)
-- ============================================================
L["Instant"] = "Instant"
L["Channeled"] = "Channeled"
L["1 turn cast"] = "1 turn cast"
L["2 turns cast"] = "2 turns cast"
L["3 turns cast"] = "3 turns cast"
L["4 turns cast"] = "4 turns cast"
L["5 turns cast"] = "5 turns cast"

-- ============================================================
-- DiceMaster.lua — Trait range (TRAIT_RANGE)
-- ============================================================
L["Melee Range"] = "Melee Range"
L["10 yd range"] = "10 yd range"
L["20 yd range"] = "20 yd range"
L["30 yd range"] = "30 yd range"
L["40 yd range"] = "40 yd range"
L["50 yd range"] = "50 yd range"
L["60 yd range"] = "60 yd range"
L["70 yd range"] = "70 yd range"
L["80 yd range"] = "80 yd range"
L["90 yd range"] = "90 yd range"
L["100 yd range"] = "100 yd range"
L["Unlimited range"] = "Unlimited range"

-- ============================================================
-- DiceMaster.lua — Trait cooldown (TRAIT_COOLDOWN)
-- ============================================================
L["15 sec"] = "15 sec"
L["20 sec"] = "20 sec"
L["30 sec"] = "30 sec"
L["1 min"] = "1 min"
L["2 min"] = "2 min"
L["3 min"] = "3 min"
L["4 min"] = "4 min"
L["5 min"] = "5 min"
L["10 min"] = "10 min"
L["15 min"] = "15 min"
L["20 min"] = "20 min"
L["30 min"] = "30 min"
L["1 hour"] = "1 hour"
L["2 hour"] = "2 hour"
L["3 hour"] = "3 hour"
L["4 hour"] = "4 hour"
L["5 hour"] = "5 hour"
L["1 day"] = "1 day"
L["2 day"] = "2 day"
L["3 day"] = "3 day"
L["4 day"] = "4 day"
L["5 day"] = "5 day"
L["1 week"] = "1 week"
L["1 turn"] = "1 turn"
L["2 turn"] = "2 turn"
L["3 turn"] = "3 turn"
L["4 turn"] = "4 turn"
L["5 turn"] = "5 turn"
L["6 turn"] = "6 turn"
L["%s cooldown"] = "%s cooldown"

-- ============================================================
-- DiceMaster.lua — Charges (tooltips)
-- ============================================================
L["<Left Click to Add %s>"] = "<Left Click to Add %s>"
L["<Right Click to Remove %s>"] = "<Right Click to Remove %s>"

-- ============================================================
-- DiceMaster.lua — Mensajes de error / UI
-- ============================================================
L["Not enough mana"] = "Not enough mana"
L["Trait is not ready yet."] = "Trait is not ready yet."
L["Error: delta must be a number."] = "Error: delta must be a number."
L["EditBox 'DiceMasterPanelDice' not found"] = "EditBox 'DiceMasterPanelDice' not found"
L["Modifiers:"] = "Modifiers:"

-- ============================================================
-- DiceMaster.lua — Secret
-- ============================================================
L["Secret!"] = "Secret!"
L["This secret is revealed when activated by a specific condition."] = "This secret is revealed when activated by a specific condition."

-- ============================================================
-- DiceMaster.lua — Migración UnitFrames
-- ============================================================
L["UnitFrames SavedVariables migrated to 5.2.1 format."] = "UnitFrames SavedVariables migrated to 5.2.1 format."

-- ============================================================
-- Config.lua — Main panel
-- ============================================================
L["Configure the core settings for DiceMaster."] = "Configure the core settings for DiceMaster."
L["Enable Minimap Icon"] = "Enable Minimap Icon"
L["Enable the DiceMaster minimap icon."] = "Enable the DiceMaster minimap icon."
L["UI Scale"] = "UI Scale"
L["Change the size of the Dice Panel, Health and Resource bars, Target, and Progress Bar frames."] = "Change the size of the Dice Panel, Health and Resource bars, Target, and Progress Bar frames."
L["Show Remaining Uses on Dice Panel"] = "Show Remaining Uses on Dice Panel"
L["Show the number of remaining uses for traits on the Dice Panel."] = "Show the number of remaining uses for traits on the Dice Panel."
L["Reset Trait Uses"] = "Reset Trait Uses"
L["Reset the cooldown and number of remaining uses for traits on the Dice Panel."] = "Reset the cooldown and number of remaining uses for traits on the Dice Panel."
L["Hide Target Frame When Hidden"] = "Hide Target Frame When Hidden"
L["Hide the Target Frame when the Dice Panel is hidden."] = "Hide the Target Frame when the Dice Panel is hidden."
L["Hide Inspect Button on Target Frame"] = "Hide Inspect Button on Target Frame"
L["Hide the Inspect button from the Target Frame."] = "Hide the Inspect button from the Target Frame."
L["Hide Pet Frame on Target Frame"] = "Hide Pet Frame on Target Frame"
L["Hide the Pet Portrait Frame from the Target Frame."] = "Hide the Pet Portrait Frame from the Target Frame."
L["Enable Enhanced Tooltips"] = "Enable Enhanced Tooltips"
L["Enable helpful DiceMaster term definitions next to trait tooltips."] = "Enable helpful DiceMaster term definitions next to trait tooltips."
L["Enable Typing Tracker"] = "Enable Typing Tracker"
L["Enable the Typing Tracker to alert you when group members are writing in say, emote, party, and raid."] = "Enable the Typing Tracker to alert you when group members are writing in say, emote, party, and raid."
L["Enable Combat Turn Tracker"] = "Enable Combat Turn Tracker"
L["Displays the Turn Tracker frame when turn-based combat begins."] = "Displays the Turn Tracker frame when turn-based combat begins."
L["Allow Sounds from Other Players"] = "Allow Sounds from Other Players"
L["Allow other players to play sound effects."] = "Allow other players to play sound effects."
L["Allow Effects from Other Players"] = "Allow Effects from Other Players"
L["Allow other players to send you fullscreen visual effects."] = "Allow other players to send you fullscreen visual effects."
L["Display Icons in Chat"] = "Display Icons in Chat"
L["Display icons linked by players in public chat channels."] = "Display icons linked by players in public chat channels."
L["Enable autocomplete for emojis."] = "Enable autocomplete for emojis."
L["Display an autocomplete field above your chat bar when you start typing an emoji."] = "Display an autocomplete field above your chat bar when you start typing an emoji."
L["Allow Roll Prompt Banners"] = "Allow Roll Prompt Banners"
L["Allow the group leader to send you visual prompts when it's your turn to roll."] = "Allow the group leader to send you visual prompts when it's your turn to roll."
L["Display Group Leader's Map Nodes"] = "Display Group Leader's Map Nodes"
L["Display the group leader's map nodes when you're in a party or raid."] = "Display the group leader's map nodes when you're in a party or raid."
-- >>> PORT 5.2.1 — new option (not present in legacy EN)
L["Enable D10 Mode"] = "Enable D10 Mode"
L["Enable Dice 10 mode."] = "Enable Dice 10 mode."
L["Discord (click and copy the link)"] = "Discord (click and copy the link)"
L["Link to the DiceMaster Discord. Select the text and press Ctrl+C to copy it."] = "Link to the DiceMaster Discord. Select the text and press Ctrl+C to copy it."

-- ============================================================
-- Config.lua — Health / Mana / Resource bars
-- ============================================================
L["Configure the Health, Mana, and Resource Bars."] = "Configure the Health, Mana, and Resource Bars."
L["Use Hearthstone Style Meters Instead"] = "Use Hearthstone Style Meters Instead"
L["Toggles whether to use the default health bar or the Hearthstone style health and mana meters.|n|n(The meters anchor to the PlayerFrame and TargetFrame by default.)"] = "Toggles whether to use the default health bar or the Hearthstone style health and mana meters.|n|n(The meters anchor to the PlayerFrame and TargetFrame by default.)"
L["Health Bar"] = "Health Bar"
L["Current Health"] = "Current Health"
L["The current amount of health that this character has."] = "The current amount of health that this character has."
L["Maximum Health"] = "Maximum Health"
L["The maximum amount of health that this character can have."] = "The maximum amount of health that this character can have."
L["Mana Bar"] = "Mana Bar"
L["Current Mana"] = "Current Mana"
L["The current amount of mana that this character has."] = "The current amount of mana that this character has."
L["Maximum Mana"] = "Maximum Mana"
L["The maximum amount of mana that this character can have."] = "The maximum amount of mana that this character can have."
L["Resource Type"] = "Resource Type"
L["Choose the type of resource used by the mana bar."] = "Choose the type of resource used by the mana bar."
L["Mana"] = "Mana"
L["Energy"] = "Energy"
L["Focus"] = "Focus"
L["Rage"] = "Rage"
L["Runic Power"] = "Runic Power"
L["Enable Resource Bar"] = "Enable Resource Bar"
L["Enable usage of the custom resource bar."] = "Enable usage of the custom resource bar."
L["Resource Bar"] = "Resource Bar"
L["Resource Name"] = "Resource Name"
L["Name of the custom resource. Examples: Holy Power, Rage, Adrenaline."] = "Name of the custom resource. Examples: Holy Power, Rage, Adrenaline."
L["Resource Color"] = "Resource Color"
L["Color of the custom resource bar."] = "Color of the custom resource bar."
L["Maximum Resource"] = "Maximum Resource"
L["The maximum possible amount for this custom resource."] = "The maximum possible amount for this custom resource."
L["The maximum amount of resource that this character can accumulate."] = "The maximum amount of resource that this character can accumulate."
L["Resource Description"] = "Resource Description"
L["A description for the custom resource bar tooltip."] = "A description for the custom resource bar tooltip."
L["Resource Bar Skin"] = "Resource Bar Skin"
L["Custom skin for the custom resource bar."] = "Custom skin for the custom resource bar."
L["Flash When Resource Bar is Full"] = "Flash When Resource Bar is Full"
L["Toggle whether the custom resource bar flashes when filled."] = "Toggle whether the custom resource bar flashes when filled."
L["Anchor Below Health Bar"] = "Anchor Below Health Bar"
L["Move your custom resource bar so that it's positioned beneath your health bar."] = "Move your custom resource bar so that it's positioned beneath your health bar."

-- ============================================================
-- Config.lua — Progress Bar
-- ============================================================
L["Configure the Progress Bar frame."] = "Configure the Progress Bar frame."
L["Enable Progress Bar"] = "Enable Progress Bar"
L["Enable usage of a group-wide progress bar when you are leader."] = "Enable usage of a group-wide progress bar when you are leader."
L["Dungeon Master Settings"] = "Dungeon Master Settings"
L["These settings only take effect when you are the leader of your party or raid."] = "These settings only take effect when you are the leader of your party or raid."
L["Progress Bar Name"] = "Progress Bar Name"
L["Name of the progress bar. Examples: Morale, Sanity, Shield Integrity."] = "Name of the progress bar. Examples: Morale, Sanity, Shield Integrity."
L["Progress Bar Color"] = "Progress Bar Color"
L["Color of the progress bar."] = "Color of the progress bar."
L["Progress Bar Skin"] = "Progress Bar Skin"
L["Custom skin for the progress bar."] = "Custom skin for the progress bar."
L["Progress Bar Description"] = "Progress Bar Description"
L["A description for the progress bar tooltip."] = "A description for the progress bar tooltip."
L["Default Value"] = "Default Value"
L["The default value of the progress bar."] = "The default value of the progress bar."
L["Increase/Decrease Value"] = "Increase/Decrease Value"
L["The amount that is added/removed when the progress bar is clicked."] = "The amount that is added/removed when the progress bar is clicked."
L["Progress Bar Scale"] = "Progress Bar Scale"
L["Change the size of the Progress Bar frame."] = "Change the size of the Progress Bar frame."

-- ============================================================
-- Config.lua — Unit Frames
-- >>> PORT 5.2.1 — new module, no legacy EN source
-- ============================================================
L["Configure the unit frames module."] = "Configure the unit frames module."
L["Enable Unit Frames"] = "Enable Unit Frames"
L["Display the custom unit frames panel."] = "Display the custom unit frames panel."
L["Unit Frames Scale"] = "Unit Frames Scale"
L["Change the size of the unit frames panel."] = "Change the size of the unit frames panel."
L["Mini Frames"] = "Mini Frames"
L["Use the compact version of the unit frames."] = "Use the compact version of the unit frames."
L["Allow Buffs from Other Players"] = "Allow Buffs from Other Players"
L["Allow other players to apply buffs to your unit frames."] = "Allow other players to apply buffs to your unit frames."
L["Blood Effects"] = "Blood Effects"
L["Display blood effects on unit frames."] = "Display blood effects on unit frames."
L["Talking Heads"] = "Talking Heads"
L["Display talking heads for NPC dialogue."] = "Display talking heads for NPC dialogue."
L["Assistant Talking Heads"] = "Assistant Talking Heads"
L["Allow party assistants to use talking heads."] = "Allow party assistants to use talking heads."
L["Sound Effects"] = "Sound Effects"
L["Enable sound effects on unit frames."] = "Enable sound effects on unit frames."

-- ============================================================
-- Config.lua — Dungeon Manager
-- ============================================================
L["Configure the Dungeon Manager settings."] = "Configure the Dungeon Manager settings."
L["Enable Dungeon Manager"] = "Enable Dungeon Manager"
L["Enable the Dungeon Manager frame to keep track of your group's rolls, view group-wide notes, and access map nodes."] = "Enable the Dungeon Manager frame to keep track of your group's rolls, view group-wide notes, and access map nodes."
L["Dungeon Manager Scale"] = "Dungeon Manager Scale"
L["The size of the Dungeon Manager frame."] = "The size of the Dungeon Manager frame."
L["Details Frame Anchor"] = "Details Frame Anchor"
L["Choose whether the Detail Frame is anchored on the left or right."] = "Choose whether the Detail Frame is anchored on the left or right."
L["Left"] = "Left"
L["Right"] = "Right"
L["Toggle Key"] = "Toggle Key"
L["Set a keybinding for the Dungeon Manager frame."] = "Set a keybinding for the Dungeon Manager frame."

-- ============================================================
-- Config.lua — Tab names
-- ============================================================
L["Health/Resource Bars"] = "Health/Resource Bars"
L["Progress Bar"] = "Progress Bar"
L["Dungeon Manager"] = "Dungeon Manager"
L["Unit Frames"] = "Unit Frames"
L["Profiles"] = "Profiles"

-- ============================================================
-- Config.lua — Shared symbol labels
-- ============================================================
L["Orbs"] = "Orbs"
L["Burning Embers"] = "Burning Embers"
L["Death Knight Runes"] = "Death Knight Runes"
L["Shadow Orbs"] = "Shadow Orbs"
L["Soul Shards"] = "Soul Shards"
L["Hourglasses"] = "Hourglasses"
L["Lightning"] = "Lightning"
L["Air"] = "Air"
L["Ice"] = "Ice"
L["Fire"] = "Fire"
L["Rock"] = "Rock"
L["Water"] = "Water"
L["Meat"] = "Meat"
L["Undead Meat"] = "Undead Meat"
L["Generic"] = "Generic"
L["Wood Plank"] = "Wood Plank"
L["Wood with Metal"] = "Wood with Metal"
L["Darkmoon"] = "Darkmoon"
L["Molten Rock"] = "Molten Rock"
L["Alliance"] = "Alliance"
L["Horde"] = "Horde"
L["Amber"] = "Amber"
L["Druid"] = "Druid"
L["Fancy Pandaren"] = "Fancy Pandaren"
L["Mechanical"] = "Mechanical"
L["Map"] = "Map"
L["Inquisitor"] = "Inquisitor"
L["Bamboo"] = "Bamboo"
L["Onyxia"] = "Onyxia"
L["Stone Design"] = "Stone Design"
L["Naaru"] = "Naaru"
L["Shadow Paladin"] = "Shadow Paladin"
L["Xavius Nightmare"] = "Xavius Nightmare"
L["Bullets"] = "Bullets"
L["Azerite"] = "Azerite"
L["Cho'gall"] = "Cho'gall"
L["Fuel Gauge"] = "Fuel Gauge"
L["Fel Corruption"] = "Fel Corruption"
L["Murozond Hourglass"] = "Murozond Hourglass"
L["Pride"] = "Pride"
L["Rhyolith"] = "Rhyolith"
L["Ogre"] = "Ogre"
L["Meditation"] = "Meditation"
L["Jaina"] = "Jaina"
L["N'zoth"] = "N'zoth"
L["Arcane Sanctum"] = "Arcane Sanctum"
L["Warden"] = "Warden"
L["Revendreth"] = "Revendreth"
L["Bastion"] = "Bastion"
L["Maldraxxus"] = "Maldraxxus"
L["Ardenweald"] = "Ardenweald"
L["Archer"] = "Archer"
L["Phoenix"] = "Phoenix"
L["Mana Gems"] = "Mana Gems"
L["Holy Power"] = "Holy Power"
L["Balance"] = "Balance"
L["Druid Seeds"] = "Druid Seeds"
L["Chromatic Essence"] = "Chromatic Essence"
L["Pumpkin"] = "Pumpkin"
L["Ethereal"] = "Ethereal"
L["Blood Mage"] = "Blood Mage"

-- enUS.lua
L["Progress Bar"] = "Progress Bar"       -- ya existe
L["Custom Resource"] = "Custom Resource"
L["Pet Name"] = "Pet Name"
L["A custom group-wide resource bar that leaders can edit."] = "A custom group-wide resource bar that leaders can edit."
L["Represents the amount of Custom Resource you have accumulated for certain traits."] = "Represents the amount of Custom Resource you have accumulated for certain traits."

-- ============================================================
-- MinimapButton.lua
-- ============================================================
L["|cff00ff00Left-click|r to toggle panel."] = "|cff00ff00Left-click|r to toggle panel."
L["|cff00ff00Right-click|r for configuration."] = "|cff00ff00Right-click|r for configuration."
L["|cff00ff00Shift+Right-click|r to toggle unit frames."] = "|cff00ff00Shift+Right-click|r to toggle unit frames."

-- ============================================================
-- Comm.lua
-- ============================================================
L["Unknown"] = "Unknown"
L[" says: %s"] = " says: %s"

-- ============================================================================
-- Dice.lua — Roll formatting
-- ============================================================================
L["%s rolls %s"]         = "%s rolls %s"
L["(%s) %s rolls %s"]    = "(%s) %s rolls %s"
L["You roll %s"]         = "You roll %s"
L["(%s) You roll %s"]    = "(%s) You roll %s"
L[" and "]               = " and "
L[", and "]              = ", and "
L[", "]                  = ", "
L[" = "]                 = " = "

-- ============================================================================
-- Dice.lua — Roll errors
-- ============================================================================
L["Invalid dice format."]                  = "Invalid dice format."
L["You must have at least one die."]       = "You must have at least one die."
L["You can only roll 10 dice at a time."]  = "You can only roll 10 dice at a time."
L["Must have at least two sides."]         = "Must have at least two sides."
L["Dice cannot have more than 13476 sides."] = "Dice cannot have more than 13476 sides."

-- ============================================================================
-- Console.lua — /dice help
-- ============================================================================
L["- X is how many dice to roll."]                                                  = "- X is how many dice to roll."
L["- Y is how many sides those dice have."]                                         = "- Y is how many sides those dice have."
L["- Z is how much you add/subtract from the total after adding up all the dice."]  = "- Z is how much you add/subtract from the total after adding up all the dice."
-- ============================================================================
-- ChatLinks.lua — Tooltips and chat
-- ============================================================================
L["Roll"]                    = "Roll"
L["An attempt"]              = "An attempt"
L["Unknown Item"]            = "Unknown Item"
L["Unknown Trait"]           = "Unknown Trait"
-- ============================================================================
-- RollTracker.lua — World Marker names
-- ============================================================================
L["|TInterface\\TargetingFrame\\UI-RaidTargetingIcon_1:14:14|t |cffffff00Gold|r World Marker"]   = "|TInterface\\TargetingFrame\\UI-RaidTargetingIcon_1:14:14|t |cffffff00Gold|r World Marker"
L["|TInterface\\TargetingFrame\\UI-RaidTargetingIcon_2:14:14|t |cffff7f3fOrange|r World Marker"] = "|TInterface\\TargetingFrame\\UI-RaidTargetingIcon_2:14:14|t |cffff7f3fOrange|r World Marker"
L["|TInterface\\TargetingFrame\\UI-RaidTargetingIcon_3:14:14|t |cffa335eePurple|r World Marker"] = "|TInterface\\TargetingFrame\\UI-RaidTargetingIcon_3:14:14|t |cffa335eePurple|r World Marker"
L["|TInterface\\TargetingFrame\\UI-RaidTargetingIcon_4:14:14|t |cff1eff00Green|r World Marker"]  = "|TInterface\\TargetingFrame\\UI-RaidTargetingIcon_4:14:14|t |cff1eff00Green|r World Marker"
L["|TInterface\\TargetingFrame\\UI-RaidTargetingIcon_5:14:14|t |cffaaaaddSilver|r World Marker"] = "|TInterface\\TargetingFrame\\UI-RaidTargetingIcon_5:14:14|t |cffaaaaddSilver|r World Marker"
L["|TInterface\\TargetingFrame\\UI-RaidTargetingIcon_6:14:14|t |cff0070ddBlue|r World Marker"]   = "|TInterface\\TargetingFrame\\UI-RaidTargetingIcon_6:14:14|t |cff0070ddBlue|r World Marker"
L["|TInterface\\TargetingFrame\\UI-RaidTargetingIcon_7:14:14|t |cffff2020Red|r World Marker"]    = "|TInterface\\TargetingFrame\\UI-RaidTargetingIcon_7:14:14|t |cffff2020Red|r World Marker"
L["|TInterface\\TargetingFrame\\UI-RaidTargetingIcon_8:14:14|t |cffffffffWhite|r World Marker"]  = "|TInterface\\TargetingFrame\\UI-RaidTargetingIcon_8:14:14|t |cffffffffWhite|r World Marker"

-- ============================================================================
-- Shared — Popup buttons (YES/NO)
-- ============================================================================
L["Yes"] = "Yes"
L["No"]  = "No"

-- ============================================================================
-- RollTracker.lua — StaticPopups
-- ============================================================================
L["Do you want to clear the notes field?"]                                                        = "Do you want to clear the notes field?"
L["Experience Amount:"]                                                                           = "Experience Amount:"
L["Level Amount:"]                                                                                = "Level Amount:"
L["Do you want to reset levels to 1? Players will lose all experience gained so far.|n|nType \"RESET\" into the field to confirm."] = "Do you want to reset levels to 1? Players will lose all experience gained so far.|n|nType \"RESET\" into the field to confirm."
L["Invalid amount."]                                                                              = "Invalid amount."
L["Player not found."]                                                                            = "Player not found."

-- ============================================================================
-- RollTracker.lua — Frame titles and texts
-- ============================================================================
L["Dungeon Manager"]  = "Dungeon Manager"
L["No Recent Rolls"]  = "No Recent Rolls"
L["XP: 0/100"]        = "XP: 0/100"
L["XP: %d/100"]       = "XP: %d/100"
L["No Map Nodes"]     = "No Map Nodes"

-- ============================================================================
-- RollTracker.lua — Dropdowns
-- ============================================================================
L["|cFFffd100Select a Target:"]  = "|cFFffd100Select a Target:"
L["No World Marker"]             = "No World Marker"

-- ============================================================================
-- RollTracker.lua — PrintMessage
-- ============================================================================
L["%s has been deleted."]                        = "%s has been deleted."
L["New Map Node has been added to your map."]    = "New Map Node has been added to your map."
L["%s has been saved."]                          = "%s has been saved."

-- ============================================================================
-- RollBanner.lua — Timer intervals
-- ============================================================================
L["1 Minute"]   = "1 Minute"
L["2 Minutes"]  = "2 Minutes"
L["3 Minutes"]  = "3 Minutes"
L["5 Minutes"]  = "5 Minutes"
L["10 Minutes"] = "10 Minutes"
L["15 Minutes"] = "15 Minutes"
L["30 Minutes"] = "30 Minutes"
L["45 Minutes"] = "45 Minutes"
L["1 Hour"]     = "1 Hour"

-- ============================================================================
-- RollBanner.lua — Option placeholders
-- ============================================================================
L["Title"]       = "Title"
L["Description"] = "Description"

-- ============================================================================
-- RollBanner.lua — UIErrorsFrame
-- ============================================================================
L["A banner is already playing."]     = "A banner is already playing."
L["Enter a title for this banner."]   = "Enter a title for this banner."

-- ============================================================================
-- RollBanner.lua — Turn tracker
-- ============================================================================
L["Round %d"] = "Round %d"

-- ============================================================================
-- MoraleBar.lua — Turn tracker
-- ============================================================================

L["|cFF707070<Left/Right Click to Add/Remove %s>"] = "|cFF707070<Left/Right Click to Add/Remove %s>"

-- ============================================================================
-- LootToast.lua — Turn tracker
-- ============================================================================

L["Binds when picked up"] = "Binds when picked up"
L["Binds when equipped"]  = "Binds when equipped"
L["Binds when used"]      = "Binds when used"
L["<Made by %s>"]         = "<Made by %s>"
L["New Recipe Learned!"]  = "New Recipe Learned!"
L["Inventory is full."]                            = "Inventory is full."
L["Item cannot be disenchanted"]                   = "Item cannot be disenchanted"
L["You must be the group leader or a raid assistant to distribute items."] = "You must be the group leader or a raid assistant to distribute items."
L["You are already dispensing that item."]         = "You are already dispensing that item."
L["You can only distribute four items at a time."] = "You can only distribute four items at a time."
L["Error producing item."]                         = "Error producing item."
L["Need"]       = "Need"
L["Greed"]      = "Greed"
L["Disenchant"] = "Disenchant"
L["Pass"]       = "Pass"

L["You receive item:"]                                = "You receive item:"
L["|cFF00aa00[Loot]: You passed on: %s"]              = "|cFF00aa00[Loot]: You passed on: %s"
L["|cFF00aa00[Loot]: You have selected %s for: %s"]   = "|cFF00aa00[Loot]: You have selected %s for: %s"

L["|cFF00aa00[Loot]: Everyone passed on: %s"]          = "|cFF00aa00[Loot]: Everyone passed on: %s"
L["|cFF00aa00[Loot]: You (%s - %d) Won: %s"]           = "|cFF00aa00[Loot]: You (%s - %d) Won: %s"
L["|cFF00aa00[Loot]: %s (%s - %d) Won: %s"]            = "|cFF00aa00[Loot]: %s (%s - %d) Won: %s"
L["|cFF00aa00[Loot]: %s receives loot: %s"]            = "|cFF00aa00[Loot]: %s receives loot: %s"
L["|cFF00aa00[Loot]: You have rolled %s - %d for: %s"] = "|cFF00aa00[Loot]: You have rolled %s - %d for: %s"
L["|cFF00aa00[Loot]: %s passed on: %s"]                = "|cFF00aa00[Loot]: %s passed on: %s"
L["|cFF00aa00[Loot]: %s rolled %s - %d for: %s"]      = "|cFF00aa00[Loot]: %s rolled %s - %d for: %s"
L["|cFF00aa00%s receives loot: %s"] = "|cFF00aa00%s receives loot: %s"

-- ============================================================
-- ColourPicker.lua
-- ============================================================
-- Categorías
L["Default"]  = "Default"
L["Class"]    = "Class"
L["Quality"]  = "Quality"

-- Colores genéricos
L["Red"]    = "Red"
L["Orange"] = "Orange"
L["Yellow"] = "Yellow"
L["Green"]  = "Green"
L["Blue"]   = "Blue"
L["Purple"] = "Purple"
L["White"]  = "White"
L["Black"]  = "Black"

-- Clases
L["Death Knight"] = "Death Knight"
L["Demon Hunter"] = "Demon Hunter"
L["Druid"]        = "Druid"
L["Hunter"]       = "Hunter"
L["Mage"]         = "Mage"
L["Monk"]         = "Monk"
L["Paladin"]      = "Paladin"
L["Priest"]       = "Priest"
L["Rogue"]        = "Rogue"
L["Shaman"]       = "Shaman"
L["Warlock"]      = "Warlock"
L["Warrior"]      = "Warrior"

-- Calidades
L["Poor"]      = "Poor"
L["Common"]    = "Common"
L["Uncommon"]  = "Uncommon"
L["Rare"]      = "Rare"
L["Epic"]      = "Epic"
L["Legendary"] = "Legendary"
L["Artifact"]  = "Artifact"
L["Heirloom"]  = "Heirloom"

-- UI
L["Select a Preset Colour"] = "Select a Preset Colour"

L["Colours"]        = "Colours"
L["Select Colour"]  = "Select Colour"

-- ============================================================
-- TraitEditor.lua — StaticPopupDialogs
-- ============================================================
L["Are you sure you want to remove this item from your shop?"] = "Are you sure you want to remove this item from your shop?"
L["Amount to restock:"]                                          = "Amount to restock:"
L["Copy the following import code:"]                             = "Copy the following import code:"
L["Paste an import code into the field below and select 'Import' to import the trait.|n|nThis will overwrite your currently selected trait!"] = "Paste an import code into the field below and select 'Import' to import the trait.|n|nThis will overwrite your currently selected trait!"
L["Paste an import code into the field below and select 'Import' to import the item."] = "Paste an import code into the field below and select 'Import' to import the item."
L["Are you sure you want to delete this trait?"]                 = "Are you sure you want to delete this trait?"
L["Do you want to unlearn %s, and lose all proficiency in this skill?"] = "Do you want to unlearn %s, and lose all proficiency in this skill?"
L["Import"]                                                       = "Import"
L["Unlearn"]                                                      = "Unlearn"
L["Invalid import code."]                                         = "Invalid import code."
L["Corrupt trait data found. Unable to import code."]             = "Corrupt trait data found. Unable to import code."
L["Corrupt item data found. Unable to import code."]              = "Corrupt item data found. Unable to import code."
L["|T%s:16|t %s has been imported."]                              = "|T%s:16|t %s has been imported."
L["%s has been imported."]                                        = "%s has been imported."
L["|T%s:16|t %s has been deleted."]                               = "|T%s:16|t %s has been deleted."
L["|cFFFFFF00You have unlearned %s."]                             = "|cFFFFFF00You have unlearned %s."
-- ============================================================
-- TraitEditor.lua — Tutoriales
-- ============================================================
L["Left click on a trait to begin editing."] = "Left click on a trait to begin editing."
L["You can choose a custom name, icon, description, and more for your trait in the Trait Editor."] = "You can choose a custom name, icon, description, and more for your trait in the Trait Editor."
L["The format bar allows you to insert icons, colours, DiceMaster terms, and more into your trait's description."] = "The format bar allows you to insert icons, colours, DiceMaster terms, and more into your trait's description."
L["Toggle whether or not your pet is active, enabling the Pet Frame and allowing other players to inspect your pet on the Inspect Frame.|n|nUse the buttons on the top bar to choose a model for your pet or adjust its scale."] = "Toggle whether or not your pet is active, enabling the Pet Frame and allowing other players to inspect your pet on the Inspect Frame.|n|nUse the buttons on the top bar to choose a model for your pet or adjust its scale."
L["You can choose a custom name, icon, and more for your pet.|n|nThe Pet Item slot is used for items with the 'Learn Pet' action."] = "You can choose a custom name, icon, and more for your pet.|n|nThe Pet Item slot is used for items with the 'Learn Pet' action."
L["Your custom skills and current progress in those skills are listed here, representing your character's proficiency in a particular area.|n|nYou can learn new skills from custom items, or raise a skill's level by crafting or harvesting custom items of the appropriate level."] = "Your custom skills and current progress in those skills are listed here, representing your character's proficiency in a particular area.|n|nYou can learn new skills from custom items, or raise a skill's level by crafting or harvesting custom items of the appropriate level."
L["Selecting a skill from the list above will display more details about the skill here.|n|nClick the 'Unlearn' button if you wish to unlearn the selected skill."] = "Selecting a skill from the list above will display more details about the skill here.|n|nClick the 'Unlearn' button if you wish to unlearn the selected skill."
L["Click the 'New' button to create a new custom skill."] = "Click the 'New' button to create a new custom skill."
L["Choose your character's alignment from the dropdown menu.|n|nYou can export your skills with a unique import code which you can share with other players."] = "Choose your character's alignment from the dropdown menu.|n|nYou can export your skills with a unique import code which you can share with other players."
L["Use the search box to search for specific items based on keyword.|n|nClick the Clean Up Inventory button to clean up your bags. It auto-sorts and moves items out of the way to make room for new items."] = "Use the search box to search for specific items based on keyword.|n|nClick the Clean Up Inventory button to clean up your bags. It auto-sorts and moves items out of the way to make room for new items."
L["Custom items occupy a slot in your inventory, up to a maximum of 42 slots."] = "Custom items occupy a slot in your inventory, up to a maximum of 42 slots."
L["You can create, edit, copy, inspect, or sell items from your inventory by using these buttons.|n|nDungeon Masters can use the Loot button to allow group members to roll on an item in their inventory.|n|nYou can also export an item with a unique import code which other players can use to import the item."] = "You can create, edit, copy, inspect, or sell items from your inventory by using these buttons.|n|nDungeon Masters can use the Loot button to allow group members to roll on an item in their inventory.|n|nYou can also export an item with a unique import code which other players can use to import the item."
L["You can learn to craft items and gain proficiency in a custom skill using the Craft button.|n|nRecipes must be learned from a custom item before they show up in your recipe list."] = "You can learn to craft items and gain proficiency in a custom skill using the Craft button.|n|nRecipes must be learned from a custom item before they show up in your recipe list."
L["Right click the currency frame to change which of your custom currencies is displayed, or create a new one."] = "Right click the currency frame to change which of your custom currencies is displayed, or create a new one."
L["|n|nCharacters with the Enchanting skill can use the Disenchant button to extract Arcane Dust from Disenchantable items."] = "|n|nCharacters with the Enchanting skill can use the Disenchant button to extract Arcane Dust from Disenchantable items."
L["Toggle whether or not your shop is active, allowing other players to access your shop from the Inspect Frame."] = "Toggle whether or not your shop is active, allowing other players to access your shop from the Inspect Frame."
L["You can add items to your shop from your inventory, enabling other players to browse and purchase them using a custom currency."] = "You can add items to your shop from your inventory, enabling other players to browse and purchase them using a custom currency."
L["Use the search box to search for specific items based on keyword.|n|nClick the Clean Up Bank button to clean up your bank. It auto-sorts and moves items out of the way to make room for new items."] = "Use the search box to search for specific items based on keyword.|n|nClick the Clean Up Bank button to clean up your bank. It auto-sorts and moves items out of the way to make room for new items."
L["Custom items stored in your bank can be accessed by all of your characters.|n|nYou can deposit items into your bank from your inventory, or withdraw them by right clicking them."] = "Custom items stored in your bank can be accessed by all of your characters.|n|nYou can deposit items into your bank from your inventory, or withdraw them by right clicking them."
L["You can export an item with a unique import code which you can share with other players."] = "You can export an item with a unique import code which you can share with other players."
-- >>> l10n esES — TraitEditor.lua bloques 3-6
L["Currencies"] = "Currencies"
L["|cFF00FF00Create New...|r"] = "|cFF00FF00Create New...|r"
L["A universal currency used by all DiceMaster users."] = "A universal currency used by all DiceMaster users."
L["|nTotal: |cFFFFFFFF%s|r"] = "|nTotal: |cFFFFFFFF%s|r"
L["<Right-click to disable>"] = "<Right-click to disable>"
L["<Alt+Right-click to delete>"] = "<Alt+Right-click to delete>"
L["<Right-click to change>"] = "<Right-click to change>"
L["Unhappy"] = "Unhappy"
L["Content"] = "Content"
L["Happy"] = "Happy"
L["Your pet is unhappy."] = "Your pet is unhappy."
L["Your pet is contented, but not really happy."] = "Your pet is contented, but not really happy."
L["Your pet is perfectly happy with you and the world."] = "Your pet is perfectly happy with you and the world."
L["|n|cFFFFFFFFHungry|r|nYour pet is hungry and requires food!|n"] = "|n|cFFFFFFFFHungry|r|nYour pet is hungry and requires food!|n"
L["|n|cFFFFFFFFStinky|r|nYour pet is filthy and needs a bath!|n"] = "|n|cFFFFFFFFStinky|r|nYour pet is filthy and needs a bath!|n"
L["|n|cFFFFFFFFSleepy|r|nYour pet is exhausted and requires rest!|n"] = "|n|cFFFFFFFFSleepy|r|nYour pet is exhausted and requires rest!|n"
L["|n|cFFFFFFFFDirty|r|nYour pet stables could use a good cleaning!|n"] = "|n|cFFFFFFFFDirty|r|nYour pet stables could use a good cleaning!|n"
L["|n|cFFFFFFFFCold|r|nYour pet needs warmth in order to hatch!|n"] = "|n|cFFFFFFFFCold|r|nYour pet needs warmth in order to hatch!|n"
L["Your pet"] = "Your pet"
L["Your pet doesn't like that food."] = "Your pet doesn't like that food."
L["You can't do that."] = "You can't do that."
L["|cFF8080ffYou have gained %d new skills.|r"] = "|cFF8080ffYou have gained %d new skills.|r"
L["|cFF8080ffYou have gained the %s skill.|r"] = "|cFF8080ffYou have gained the %s skill.|r"
L["Export Skills"] = "Export Skills"
L["Invalid import code."] = "Invalid import code."
L["Invalid import code. 2"] = "Invalid import code. 2"
L["Skill Templates"] = "Skill Templates"
L["Default Template"] = "Default Template"
L["Default"] = "Default"
L["The standard template of attributes, skills, and saving throws."] = "The standard template of attributes, skills, and saving throws."
L["WoW JdR Template"] = "WoW JdR Template"
L["WoW JdR"] = "WoW JdR"
L["The WoW JdR template of attributes, skills, and saving throws."] = "The WoW JdR template of attributes, skills, and saving throws."
L["Import"] = "Import"
L["Use a code to import a sheet made by another player."] = "Use a code to import a sheet made by another player."
L["Alignments"] = "Alignments"
L["|n|nExamples: |cFFFFFFFF"] = "|n|nExamples: |cFFFFFFFF"
L["(No Alignment)"] = "(No Alignment)"
L["This character has no alignment."] = "This character has no alignment."
L["|cFFFFFFFFRank "] = "|cFFFFFFFFRank "
L["|cFFFFD100Modifiers:|r "] = "|cFFFFD100Modifiers:|r "
L["|cFFFFD100Creator:|r "] = "|cFFFFD100Creator:|r "
L["Effects"] = "Effects"
L["Combat Actions"] = "Combat Actions"
L["Conditions"] = "Conditions"
L["Skills"] = "Skills"
L["Saving Throws"] = "Saving Throws"
L["Apply Buff"] = "Apply Buff"
L["Remove Buff"] = "Remove Buff"
L["Play Sound"] = "Play Sound"
L["Roll Dice"] = "Roll Dice"
L["Visual Effect"] = "Visual Effect"
L["Run Script"] = "Run Script"
L["Secret"] = "Secret"
L["Loot Options"] = "Loot Options"
L["Master Loot"] = "Master Loot"
L["Distribute an item to a specific player."] = "Distribute an item to a specific player."
L["Group Loot"] = "Group Loot"
L["Allow all group members to roll Need, Greed, Disenchant, or Pass on an item."] = "Allow all group members to roll Need, Greed, Disenchant, or Pass on an item."
L["Allow all group members to roll Need, Greed, or Pass on an item."] = "Allow all group members to roll Need, Greed, or Pass on an item."
L["Traits"] = "Traits"
L["Export Code"] = "Export Code"
L["Import Code"] = "Import Code"
L["Import Skills"] = "Import Skills"
L["Close"] = "Close"
L["Set all skill ranks to 0."] = "Set all skill ranks to 0."
L["Locked Trait"] = "Locked Trait"
L["This trait has been approved by an officer and is locked. Unlocking it will also remove the officer's approval."] = "This trait has been approved by an officer and is locked. Unlocking it will also remove the officer's approval."
L["<Right-click to unlock>"] = "<Right-click to unlock>"
L["|cFFFFD100Click to select an icon for this trait."] = "|cFFFFD100Click to select an icon for this trait."
L["|cFFFFD100Click to change the number of uses for this trait."] = "|cFFFFD100Click to change the number of uses for this trait."
L["|cFFFFD100Click to change the range of this trait."] = "|cFFFFD100Click to change the range of this trait."
L["|cFFFFD100Click to change the cast time of this trait."] = "|cFFFFD100Click to change the cast time of this trait."
L["|cFFFFD100Click to change the cooldown of this trait."] = "|cFFFFD100Click to change the cooldown of this trait."
L["Edit Pet"] = "Edit Pet"
L["Enable Pet"] = "Enable Pet"
L["Warm"] = "Warm"
L["Keep your egg warm until it's ready to hatch!"] = "Keep your egg warm until it's ready to hatch!"
L["Feed"] = "Feed"
L["Feed your pet an item from your inventory."] = "Feed your pet an item from your inventory."
L["That ability is not ready yet."] = "That ability is not ready yet."
L["|cFFFFD100Click to select an icon for your pet."] = "|cFFFFD100Click to select an icon for your pet."
L["Pet Item"] = "Pet Item"
L["Rotate Left"] = "Rotate Left"
L["Rotates the model to the left."] = "Rotates the model to the left."
L["Rotate Right"] = "Rotate Right"
L["Rotates the model to the right."] = "Rotates the model to the right."
L["Select Model"] = "Select Model"
L["Choose a model for your pet."] = "Choose a model for your pet."
L["Increase Scale"] = "Increase Scale"
L["Increase the scale of your pet's model."] = "Increase the scale of your pet's model."
L["Decrease Scale"] = "Decrease Scale"
L["Decrease the scale of your pet's model."] = "Decrease the scale of your pet's model."
L["Export"] = "Export"
L["Create an import code to share your skills with other players."] = "Create an import code to share your skills with other players."
L["ALL"] = "ALL"
L["|cFFFFD100Click to select an icon for this skill."] = "|cFFFFD100Click to select an icon for this skill."
L["Increase %s"] = "Increase %s"
L["Decrease %s"] = "Decrease %s"
L["Unlearn %s"] = "Unlearn %s"
L["<Hold Shift to Increase Max>"] = "<Hold Shift to Increase Max>"
L["<Hold Shift to Decrease Max>"] = "<Hold Shift to Decrease Max>"
L["NEW"] = "NEW"
L["Edit"] = "Edit"
L["Disenchant"] = "Disenchant"
L["1.5 sec cast"] = "1.5 sec cast"
L["Extracts the magical element(s) from good quality (Green) or better items. The targeted item will be DESTROYED and will not be retrievable."] = "Extracts the magical element(s) from good quality (Green) or better items. The targeted item will be DESTROYED and will not be retrievable."
L["Milling"] = "Milling"
L["Crush 5 herbs to create pigments for making inks. This will destroy the herbs in the process."] = "Crush 5 herbs to create pigments for making inks. This will destroy the herbs in the process."
L["Page"] = "Page"
L["Edit Shop"] = "Edit Shop"
L["Enable Shop"] = "Enable Shop"
L["PREV"] = "PREV"
L["NEXT"] = "NEXT"
-- X4 — NoSkillsWarning + PetFrame
L["No Skills"] = "No Skills"
L["You don't have any skills yet. Choose a template below or click 'New' to get started:"] = "You don't have any skills yet. Choose a template below or click 'New' to get started:"
L["Choose Template"] = "Choose Template"
L["Edit Pet"] = "Edit Pet"
L["Enable Pet"] = "Enable Pet"
L["Warm"] = "Warm"
L["Keep your egg warm until it's ready to hatch!"] = "Keep your egg warm until it's ready to hatch!"
L["Feed"] = "Feed"
L["Feed your pet an item from your inventory."] = "Feed your pet an item from your inventory."
L["That ability is not ready yet."] = "That ability is not ready yet."
L["|cFFFFD100Click to select an icon for your pet."] = "|cFFFFD100Click to select an icon for your pet."
L["Pet Item"] = "Pet Item"
L["Rotate Left"] = "Rotate Left"
L["Rotates the model to the left."] = "Rotates the model to the left."
L["Rotate Right"] = "Rotate Right"
L["Rotates the model to the right."] = "Rotates the model to the right."
L["Select Model"] = "Select Model"
L["Choose a model for your pet."] = "Choose a model for your pet."
L["Increase Scale"] = "Increase Scale"
L["Increase the scale of your pet's model."] = "Increase the scale of your pet's model."
L["Decrease Scale"] = "Decrease Scale"
L["Decrease the scale of your pet's model."] = "Decrease the scale of your pet's model."

-- X5 — SkillFrame
L["Export"] = "Export"
L["Create an import code to share your skills with other players."] = "Create an import code to share your skills with other players."
L["ALL"] = "ALL"
L["|cFFFFD100Click to select an icon for this skill."] = "|cFFFFD100Click to select an icon for this skill."
L["Increase %s"] = "Increase %s"
L["Decrease %s"] = "Decrease %s"
L["Unlearn %s"] = "Unlearn %s"
L["<Hold Shift to Increase Max>"] = "<Hold Shift to Increase Max>"
L["<Hold Shift to Decrease Max>"] = "<Hold Shift to Decrease Max>"
L["NEW"] = "NEW"
L["Edit"] = "Edit"

-- X6a — inventoryFrame
L["Disenchant"] = "Disenchant"
L["1.5 sec cast"] = "1.5 sec cast"
L["Extracts the magical element(s) from good quality (Green) or better items. The targeted item will be DESTROYED and will not be retrievable."] = "Extracts the magical element(s) from good quality (Green) or better items. The targeted item will be DESTROYED and will not be retrievable."
L["Milling"] = "Milling"
L["Crush 5 herbs to create pigments for making inks. This will destroy the herbs in the process."] = "Crush 5 herbs to create pigments for making inks. This will destroy the herbs in the process."

-- X6b — shopFrame
L["Page"] = "Page"
L["Edit Shop"] = "Edit Shop"
L["Enable Shop"] = "Enable Shop"
L["PREV"] = "PREV"
L["NEXT"] = "NEXT"

-- X6c — bankFrame
L["Generate an export code for an item."] = "Generate an export code for an item."
L["Clean Up Bank"] = "Clean Up Bank"
L["Auto-sorts your bank to make room for new items."] = "Auto-sorts your bank to make room for new items."
L["Clear"] = "Clear"
L["Reset this trait to default."] = "Reset this trait to default."
L["Color"] = "Color"
L["Insert a text color tag."] = "Insert a text color tag."
L["The color tag uses this format:|n|n|cFF808080<color=|cFFFF0000RR|r|cFF00FF00GG|r|cFF0000FFBB|r>|rtext|cFF808080</color>|r|n|nEach pair of digits represents a color value as a hexidecimal number."] = "The color tag uses this format:|n|n|cFF808080<color=|cFFFF0000RR|r|cFF00FF00GG|r|cFF0000FFBB|r>|rtext|cFF808080</color>|r|n|nEach pair of digits represents a color value as a hexidecimal number."
L["Image"] = "Image"
L["Insert an inline icon tag."] = "Insert an inline icon tag."
L["The image tag uses this format:|n|n|cFF808080<img>|rpath|cFF808080</img>|r|n|nThe path provided must be the full file name of the image."] = "The image tag uses this format:|n|n|cFF808080<img>|rpath|cFF808080</img>|r|n|nThe path provided must be the full file name of the image."
L["List"] = "List"
L["Insert a bulleted list."] = "Insert a bulleted list."
L["|n<*> Item 1|n<*> Item 2|n<*> Item 3"] = "|n<*> Item 1|n<*> Item 2|n<*> Item 3"
L["Rule"] = "Rule"
L["Insert a horizontal line rule."] = "Insert a horizontal line rule."
L["DiceMaster Term"] = "DiceMaster Term"
L["Insert an official DiceMaster term."] = "Insert an official DiceMaster term."
L["DiceMaster terms wrapped in |cFF808080<>|r brackets will display their definitions next to the tooltip for players with Enhanced Tooltips enabled."] = "DiceMaster terms wrapped in |cFF808080<>|r brackets will display their definitions next to the tooltip for players with Enhanced Tooltips enabled."
L["Health Icon"] = "Health Icon"
L["Insert a health icon."] = "Insert a health icon."
L["Armor Icon"] = "Armor Icon"
L["Insert an armor icon."] = "Insert an armor icon."
L["Use a code to import a trait made by another player."] = "Use a code to import a trait made by another player."
L["Create an import code to share this trait with other players."] = "Create an import code to share this trait with other players."
L["|cFFFFD100Click to edit this trait's effects."] = "|cFFFFD100Click to edit this trait's effects."
L["|cFFFFD100Click to edit this trait's effects."] = "|cFFFFD100Click to edit this trait's effects."
L["Pet"] = "Pet"
L["Skills"] = "Skills"
L["Inventory"] = "Inventory"
L["Shop"] = "Shop"
L["Bank"] = "Bank"
L["<Right-click to change the icon>"] = "<Right-click to change the icon>"