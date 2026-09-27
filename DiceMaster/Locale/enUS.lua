-- >>> l10n esES — Locale base (inglés). Todas las claves del addon deben existir aquí.
local addonName, ns = ...
local L = LibStub("AceLocale-3.0"):NewLocale(addonName, "enUS", true, false)
if not L then return end

-- ============================================================
-- DiceMaster.lua — StaticPopupDialogs (vida / maná)
-- ============================================================
L["Set Health value:"] = true
L["Set maximum Health value:"] = true
L["Set Mana value:"] = true
L["Set maximum Mana value:"] = true
L["Set %s value:"] = true
L["Set maximum %s value:"] = true

-- ============================================================
-- DiceMaster.lua — Trait usage (TRAIT_USAGE)
-- ============================================================
L["1 Use"] = true
L["2 Uses"] = true
L["3 Uses"] = true
L["Passive"] = true
L["(None)"] = true
L["<Unknown Usage>"] = true

-- ============================================================
-- DiceMaster.lua — Trait cast time (TRAIT_CAST_TIME)
-- ============================================================
L["Instant"] = true
L["Channeled"] = true
L["1 turn cast"] = true
L["2 turns cast"] = true
L["3 turns cast"] = true
L["4 turns cast"] = true
L["5 turns cast"] = true

-- ============================================================
-- DiceMaster.lua — Trait range (TRAIT_RANGE)
-- ============================================================
L["Melee Range"] = true
L["10 yd range"] = true
L["20 yd range"] = true
L["30 yd range"] = true
L["40 yd range"] = true
L["50 yd range"] = true
L["60 yd range"] = true
L["70 yd range"] = true
L["80 yd range"] = true
L["90 yd range"] = true
L["100 yd range"] = true
L["Unlimited range"] = true

-- ============================================================
-- DiceMaster.lua — Trait cooldown (TRAIT_COOLDOWN)
-- ============================================================
L["15 sec"] = true
L["20 sec"] = true
L["30 sec"] = true
L["1 min"] = true
L["2 min"] = true
L["3 min"] = true
L["4 min"] = true
L["5 min"] = true
L["10 min"] = true
L["15 min"] = true
L["20 min"] = true
L["30 min"] = true
L["1 hour"] = true
L["2 hour"] = true
L["3 hour"] = true
L["4 hour"] = true
L["5 hour"] = true
L["1 day"] = true
L["2 day"] = true
L["3 day"] = true
L["4 day"] = true
L["5 day"] = true
L["1 week"] = true
L["1 turn"] = true
L["2 turn"] = true
L["3 turn"] = true
L["4 turn"] = true
L["5 turn"] = true
L["6 turn"] = true
L["%s cooldown"] = true

-- ============================================================
-- DiceMaster.lua — Charges (tooltips)
-- ============================================================
L["<Left Click to Add %s>"] = true
L["<Right Click to Remove %s>"] = true

-- ============================================================
-- DiceMaster.lua — Mensajes de error / UI
-- ============================================================
L["Not enough mana"] = true
L["Trait is not ready yet."] = true
L["Error: delta must be a number."] = true
L["EditBox 'DiceMasterPanelDice' not found"] = true
L["Modifiers:"] = true

-- ============================================================
-- DiceMaster.lua — Secret
-- ============================================================
L["Secret!"] = true
L["This secret is revealed when activated by a specific condition."] = true

-- ============================================================
-- DiceMaster.lua — Migración UnitFrames
-- ============================================================
L["UnitFrames SavedVariables migrated to 5.2.1 format."] = true

-- ============================================================
-- Config.lua — Main panel
-- ============================================================
L["Configure the core settings for DiceMaster."] = true
L["Enable Minimap Icon"] = true
L["Enable the DiceMaster minimap icon."] = true
L["UI Scale"] = true
L["Change the size of the Dice Panel, Health and Resource bars, Target, and Progress Bar frames."] = true
L["Show Remaining Uses on Dice Panel"] = true
L["Show the number of remaining uses for traits on the Dice Panel."] = true
L["Reset Trait Uses"] = true
L["Reset the cooldown and number of remaining uses for traits on the Dice Panel."] = true
L["Hide Target Frame When Hidden"] = true
L["Hide the Target Frame when the Dice Panel is hidden."] = true
L["Hide Inspect Button on Target Frame"] = true
L["Hide the Inspect button from the Target Frame."] = true
L["Hide Pet Frame on Target Frame"] = true
L["Hide the Pet Portrait Frame from the Target Frame."] = true
L["Enable Enhanced Tooltips"] = true
L["Enable helpful DiceMaster term definitions next to trait tooltips."] = true
L["Enable Typing Tracker"] = true
L["Enable the Typing Tracker to alert you when group members are writing in say, emote, party, and raid."] = true
L["Enable Combat Turn Tracker"] = true
L["Displays the Turn Tracker frame when turn-based combat begins."] = true
L["Allow Sounds from Other Players"] = true
L["Allow other players to play sound effects."] = true
L["Allow Effects from Other Players"] = true
L["Allow other players to send you fullscreen visual effects."] = true
L["Display Icons in Chat"] = true
L["Display icons linked by players in public chat channels."] = true
L["Enable autocomplete for emojis."] = true
L["Display an autocomplete field above your chat bar when you start typing an emoji."] = true
L["Allow Roll Prompt Banners"] = true
L["Allow the group leader to send you visual prompts when it's your turn to roll."] = true
L["Display Group Leader's Map Nodes"] = true
L["Display the group leader's map nodes when you're in a party or raid."] = true
-- >>> PORT 5.2.1 — new option (not present in legacy EN)
L["Enable D10 Mode"] = true
L["Enable Dice 10 mode."] = true
L["Discord (click and copy the link)"] = true
L["Link to the DiceMaster Discord. Select the text and press Ctrl+C to copy it."] = true

-- ============================================================
-- Config.lua — Health / Mana / Resource bars
-- ============================================================
L["Configure the Health, Mana, and Resource Bars."] = true
L["Use Hearthstone Style Meters Instead"] = true
L["Toggles whether to use the default health bar or the Hearthstone style health and mana meters.|n|n(The meters anchor to the PlayerFrame and TargetFrame by default.)"] = true
L["Health Bar"] = true
L["Current Health"] = true
L["The current amount of health that this character has."] = true
L["Maximum Health"] = true
L["The maximum amount of health that this character can have."] = true
L["Mana Bar"] = true
L["Current Mana"] = true
L["The current amount of mana that this character has."] = true
L["Maximum Mana"] = true
L["The maximum amount of mana that this character can have."] = true
L["Resource Type"] = true
L["Choose the type of resource used by the mana bar."] = true
L["Mana"] = true
L["Energy"] = true
L["Focus"] = true
L["Rage"] = true
L["Runic Power"] = true
L["Enable Resource Bar"] = true
L["Enable usage of the custom resource bar."] = true
L["Resource Bar"] = true
L["Resource Name"] = true
L["Name of the custom resource. Examples: Holy Power, Rage, Adrenaline."] = true
L["Resource Color"] = true
L["Color of the custom resource bar."] = true
L["Maximum Resource"] = true
L["The maximum possible amount for this custom resource."] = true
L["The maximum amount of resource that this character can accumulate."] = true
L["Resource Description"] = true
L["A description for the custom resource bar tooltip."] = true
L["Resource Bar Skin"] = true
L["Custom skin for the custom resource bar."] = true
L["Flash When Resource Bar is Full"] = true
L["Toggle whether the custom resource bar flashes when filled."] = true
L["Anchor Below Health Bar"] = true
L["Move your custom resource bar so that it's positioned beneath your health bar."] = true

-- ============================================================
-- Config.lua — Progress Bar
-- ============================================================
L["Configure the Progress Bar frame."] = true
L["Enable Progress Bar"] = true
L["Enable usage of a group-wide progress bar when you are leader."] = true
L["Dungeon Master Settings"] = true
L["These settings only take effect when you are the leader of your party or raid."] = true
L["Progress Bar Name"] = true
L["Name of the progress bar. Examples: Morale, Sanity, Shield Integrity."] = true
L["Progress Bar Color"] = true
L["Color of the progress bar."] = true
L["Progress Bar Skin"] = true
L["Custom skin for the progress bar."] = true
L["Progress Bar Description"] = true
L["A description for the progress bar tooltip."] = true
L["Default Value"] = true
L["The default value of the progress bar."] = true
L["Increase/Decrease Value"] = true
L["The amount that is added/removed when the progress bar is clicked."] = true
L["Progress Bar Scale"] = true
L["Change the size of the Progress Bar frame."] = true

-- ============================================================
-- Config.lua — Unit Frames
-- >>> PORT 5.2.1 — new module, no legacy EN source
-- ============================================================
L["Configure the unit frames module."] = true
L["Enable Unit Frames"] = true
L["Display the custom unit frames panel."] = true
L["Unit Frames Scale"] = true
L["Change the size of the unit frames panel."] = true
L["Mini Frames"] = true
L["Use the compact version of the unit frames."] = true
L["Allow Buffs from Other Players"] = true
L["Allow other players to apply buffs to your unit frames."] = true
L["Blood Effects"] = true
L["Display blood effects on unit frames."] = true
L["Talking Heads"] = true
L["Display talking heads for NPC dialogue."] = true
L["Assistant Talking Heads"] = true
L["Allow party assistants to use talking heads."] = true
L["Sound Effects"] = true
L["Enable sound effects on unit frames."] = true

-- ============================================================
-- Config.lua — Dungeon Manager
-- ============================================================
L["Configure the Dungeon Manager settings."] = true
L["Enable Dungeon Manager"] = true
L["Enable the Dungeon Manager frame to keep track of your group's rolls, view group-wide notes, and access map nodes."] = true
L["Dungeon Manager Scale"] = true
L["The size of the Dungeon Manager frame."] = true
L["Details Frame Anchor"] = true
L["Choose whether the Detail Frame is anchored on the left or right."] = true
L["Left"] = true
L["Right"] = true
L["Toggle Key"] = true
L["Set a keybinding for the Dungeon Manager frame."] = true

-- ============================================================
-- Config.lua — Tab names
-- ============================================================
L["Health/Resource Bars"] = true
L["Progress Bar"] = true
L["Dungeon Manager"] = true
L["Unit Frames"] = true
L["Profiles"] = true

-- ============================================================
-- Config.lua — Shared symbol labels
-- ============================================================
L["Orbs"] = true
L["Burning Embers"] = true
L["Death Knight Runes"] = true
L["Shadow Orbs"] = true
L["Soul Shards"] = true
L["Hourglasses"] = true
L["Lightning"] = true
L["Air"] = true
L["Ice"] = true
L["Fire"] = true
L["Rock"] = true
L["Water"] = true
L["Meat"] = true
L["Undead Meat"] = true
L["Generic"] = true
L["Wood Plank"] = true
L["Wood with Metal"] = true
L["Darkmoon"] = true
L["Molten Rock"] = true
L["Alliance"] = true
L["Horde"] = true
L["Amber"] = true
L["Druid"] = true
L["Fancy Pandaren"] = true
L["Mechanical"] = true
L["Map"] = true
L["Inquisitor"] = true
L["Bamboo"] = true
L["Onyxia"] = true
L["Stone Design"] = true
L["Naaru"] = true
L["Shadow Paladin"] = true
L["Xavius Nightmare"] = true
L["Bullets"] = true
L["Azerite"] = true
L["Cho'gall"] = true
L["Fuel Gauge"] = true
L["Fel Corruption"] = true
L["Murozond Hourglass"] = true
L["Pride"] = true
L["Rhyolith"] = true
L["Ogre"] = true
L["Meditation"] = true
L["Jaina"] = true
L["N'zoth"] = true
L["Arcane Sanctum"] = true
L["Warden"] = true
L["Revendreth"] = true
L["Bastion"] = true
L["Maldraxxus"] = true
L["Ardenweald"] = true
L["Archer"] = true
L["Phoenix"] = true
L["Mana Gems"] = true
L["Holy Power"] = true
L["Balance"] = true
L["Druid Seeds"] = true
L["Chromatic Essence"] = true
L["Pumpkin"] = true
L["Ethereal"] = true
L["Blood Mage"] = true

-- enUS.lua
L["Progress Bar"] = true       -- ya existe
L["Custom Resource"] = true
L["Pet Name"] = true
L["A custom group-wide resource bar that leaders can edit."] = true
L["Represents the amount of Custom Resource you have accumulated for certain traits."] = true

-- ============================================================
-- MinimapButton.lua
-- ============================================================
L["|cff00ff00Left-click|r to toggle panel."] = true
L["|cff00ff00Right-click|r for configuration."] = true
L["|cff00ff00Shift+Right-click|r to toggle unit frames."] = true

-- ============================================================
-- Comm.lua
-- ============================================================
L["Unknown"] = true
L[" says: %s"] = true

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