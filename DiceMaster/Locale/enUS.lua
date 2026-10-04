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