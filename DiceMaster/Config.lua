-------------------------------------------------------------------------------
-- Dice Master (C) 2023 <The League of Lordaeron> - Moon Guard
-------------------------------------------------------------------------------

local Me = DiceMaster4

local AceConfig       = LibStub("AceConfig-3.0")
local AceConfigDialog = LibStub("AceConfigDialog-3.0")
local SharedMedia     = LibStub("LibSharedMedia-3.0")
local L = LibStub("AceLocale-3.0"):GetLocale("DiceMaster", true)

local VERSION = 1

-------------------------------------------------------------------------------
local DB_DEFAULTS = {
	
	global = {
		version     = nil;
		showUses    = true;
		hideInspect = false; -- hide inspect frame when panel is hidden
		hideStats   = false; -- hide stats button from inspect frame.
		hidePet   = false; -- hide pet portrait frame from inspect frame.
		hideTips	= true; -- turn enhanced tooltips on for newbies
		hideTracker = false; -- hide the roll tracker.
		trackerAnchor = "RIGHT";
		hideTypeTracker = false;
		allowSounds = true;
		enableEmojis = true;
		enableRoundBanners = true;
		enableMapNodes = true;
		enableTurnTracker = true;
		talkingHeads = true;
		healthIcons = false; 
		allowSounds = true;
		allowEffects = true;
		allowIcons = true;
		allowAssistantTalkingHeads = true;
		allowBuffs = true;
		bloodEffects = true;
		miniFrames = false;
		bank = {};
		savedBuffs = {};
		collections = {
			buffs		= {};
			models		= {};
			statistics	= {};
			banners		= {};
		};
		lastSplashShown = nil;
		-- >>> PORT 5.2.1
		soundEffects = true;
	};
	
	char = { 
		minimapicon = {
			hide = false;
		};
		hidepanel     = false;
		uiScale       = 0.75;
		trackerScale  = 0.6;
		trackerKeybind = nil;
		showRaidRolls = false;
		enableD10 = false;
		statusSerial  = 1;
		traitSerials  = {};
		unitframes = {
		hidden = false,
		scale = 1;
		visibleFrames = 1;
		savedUnits = {};
		favouriteAffixes = {};
	};
};
	
		profile = {
			charges = {
				enable  = false;
				name    = "Custom Resource";
				color   = {1,1,1};
				count   = 0;
				max     = 3;
				tooltip = "Represents the amount of Custom Resource you have accumulated for certain traits.";
				symbol	= "charge-orb";
				flash   = true;
				pos		= false;
			};
			morale = {
				enable  = false;
				name    = "Progress Bar";
				count   = 100;
				step    = 5;
				tooltip = "A custom group-wide resource bar that leaders can edit.";
				color   = {1,1,0};
				symbol  = "WoWUI";
				scale   = 0.75;
			};
			health       = 10;
			healthMax    = 10;
			mana		 = 20;
			manaMax 	 = 20;
			manaType	 = "Mana";
			armor        = 0;
			traits       = {};
			pet	= {
				enable  = false;
				name 	= "Pet Name";
				type    = "Pet";
				icon 	= "Interface/Icons/inv_misc_questionmark";
				model 	= 0;
				scale 	= 0.15;
				health       = 5;
				healthMax    = 5;
				armor        = 0;
				happiness	 = 3;
				foodTypes 	 = { "Meat", "Fish", "Fruit", "Fungus", "Bread", "Cheese" };
				isComplex = false;
				isEgg = false;
			};
			inventory	 = {};
			inventoryIcon = "Interface/Buttons/Button-Backpack-Up";
			shop		 = {};
			shopIcon = "Interface/Icons/garrison_building_tradingpost";
			shopName = false;
			shopModel = false;
			hideShop = false;
			currency     = {
				{
					name = "DiceMaster Coins";
					icon = "Interface/AddOns/DiceMaster/Texture/token";
					value = 0;
					guid = 0;
				};
			};
			currencyActive = 1;
			recipes			 = {};
			skills			 = {};
			alignment		 = "(None)";
			buffsActive  	 = {};
			level        = 1;
			experience   = 0;
			dice 		 = "1D20+0";
			mapNodes	 = {};
			framePositions = {};
			dm5Imported = false;
		}

}

-- Initialize traits.
do
	local numbers = { "One", "Two", "Three", "Four", "Five" }
	for i = 1, 5 do
		 
		DB_DEFAULTS.profile.traits[i] = {
			name   = "Trait " .. numbers[i];                    -- name of trait
			usage  = Me.TRAIT_USAGE_MODES[1];                   -- usage, see USAGE_MODES
			range  = Me.TRAIT_RANGE_MODES[1];                   -- usage, see RANGE_MODES
			castTime = Me.TRAIT_CAST_TIME_MODES[1];				-- cast time, see CAST_TIME_MODES
			cooldown = Me.TRAIT_COOLDOWN_MODES[1];				-- cooldown time, see COOLDOWN_MODES
			desc   = "Type a description for your trait here."; -- trait description
			approved = false;									-- trait approved
			officers = {};										-- approved by
			icon   = "Interface/Icons/inv_misc_questionmark";   -- trait icon texture path
			effects = {};
			traitIndex = nil;
		}
		
		DB_DEFAULTS.char.traitSerials[i] = 1 -- used to optimize out duplicate requests
	end
	if Me.PermittedUse() then
		DB_DEFAULTS.profile.traits[5].name = "Equipment Slot";
	end
end

-------------------------------------------------------------------------------

-------------------------------------------------------------------------------
-- >>> l10n esES — Shared skin labels for Resource Bar and Progress Bar.
-- Atlas/token keys stay untouched; only the user-visible labels are localized.
-- Both chargesSymbol and moraleSymbol reference this single table.
-------------------------------------------------------------------------------
local SYMBOL_VALUES = {
    -- >>> PORT 5.2.1 — charge-* entries (restored from legacy EN source)
    ["charge-orb"]          = L["Orbs"],
    ["charge-fire"]         = L["Burning Embers"],
    ["charge-rune"]         = L["Death Knight Runes"],
    ["charge-shadow"]       = L["Shadow Orbs"],
    ["charge-soulshards"]   = L["Soul Shards"],
    ["charge-hourglass"]    = L["Hourglasses"],
    ["LightningCharges"]    = L["Lightning"],

    -- >>> PORT 5.2.1 — shared entries (legacy EN source)
    ["morale-bar"]          = "League of Lordaeron",  -- proper noun, not localized
    ["Air"]                 = L["Air"],
    ["Ice"]                 = L["Ice"],
    ["Fire"]                = L["Fire"],
    ["Rock"]                = L["Rock"],
    ["Water"]               = L["Water"],
    ["Meat"]                = L["Meat"],
    ["UndeadMeat"]          = L["Undead Meat"],
    ["WoWUI"]               = L["Generic"],
    ["WoodPlank"]           = L["Wood Plank"],
    ["WoodWithMetal"]       = L["Wood with Metal"],
    ["Darkmoon"]            = L["Darkmoon"],
    ["MoltenRock"]          = L["Molten Rock"],
    ["Alliance"]            = L["Alliance"],
    ["Horde"]               = L["Horde"],
    ["Amber"]               = L["Amber"],
    ["Druid"]               = L["Druid"],
    ["FancyPanda"]          = L["Fancy Pandaren"],
    ["Mechanical"]          = L["Mechanical"],
    ["Map"]                 = L["Map"],
    ["InquisitionTorment"]  = L["Inquisitor"],
    ["Bamboo"]              = L["Bamboo"],
    ["Onyxia"]              = L["Onyxia"],
    ["StoneDesign"]         = L["Stone Design"],
    ["NaaruCharge"]         = L["Naaru"],
    ["ShadowPaladinBar"]    = L["Shadow Paladin"],
    ["Xavius"]              = L["Xavius Nightmare"],
    ["BulletBar"]           = L["Bullets"],
    ["Azerite"]             = L["Azerite"],
    ["Chogall"]             = L["Cho'gall"],
    ["FuelGauge"]           = L["Fuel Gauge"],
    ["FelCorruption"]       = L["Fel Corruption"],
    ["Murozond"]            = L["Murozond Hourglass"],
    ["Pride"]               = L["Pride"],
    ["Rhyolith"]            = L["Rhyolith"],
    ["KargathRoarCrowd"]    = L["Ogre"],
    ["Meditation"]          = L["Meditation"],
    ["Jaina"]               = L["Jaina"],
    ["NZoth"]               = L["N'zoth"],
    ["sanctum-bar"]         = L["Arcane Sanctum"],
    ["warden-bar"]          = L["Warden"],
    ["RevendrethAnima"]     = L["Revendreth"],
    ["BastionAnima"]        = L["Bastion"],
    ["MaldraxxusAnima"]     = L["Maldraxxus"],
    ["ArdenwealdAnima"]     = L["Ardenweald"],
    ["archer-bar"]          = L["Archer"],
    ["phoenix-bar"]         = L["Phoenix"],
    ["mana-gems-bar"]       = L["Mana Gems"],
    ["holy-power-bar"]      = L["Holy Power"],
    ["balance-bar"]         = L["Balance"],
    ["druid-seed-bar"]      = L["Druid Seeds"],

    -- >>> PORT 5.2.1 — new entries added in the current (canonical) build
    ["ChromaticEssenceBar"] = L["Chromatic Essence"],
    ["PumpkinBar"]          = L["Pumpkin"],
    ["EtherealBar"]         = L["Ethereal"],
    ["BloodMageBar"]        = L["Blood Mage"],
}

-------------------------------------------------------------------------------
	Me.configOptions = {
		type  = "group";
		order = 1;
		name  = "DiceMaster";
		args = { 
			-----------------------------------------------------------------------
			header = {
				order = 0;
				-- >>> l10n esES
				name  = L["Configure the core settings for DiceMaster."];
				type  = "description";
			};

			mmicon = {
				order = 1;
				-- >>> l10n esES
				name  = L["Enable Minimap Icon"];
				desc  = L["Enable the DiceMaster minimap icon."];
				type  = "toggle";
				set   = function( info, val ) Me.MinimapButton:Show( val ) end;
				get   = function( info ) return not Me.db.char.minimapicon.hide end;
			};
	
			uiScale = {
				order     = 4;
				-- >>> l10n esES
				name      = L["UI Scale"];
				desc      = L["Change the size of the Dice Panel, Health and Resource bars, Target, and Progress Bar frames."];
				type      = "range";
				min       = 0.25;
				max       = 10;
				softMax   = 4;
				isPercent = true;
				set = function( info, val ) 
					Me.db.char.uiScale = val;
					Me.ApplyUiScale()
				end;
				width = "double";
				get = function( info ) return Me.db.char.uiScale end;
			};
			
			showUses = {
				order = 5;
				-- >>> l10n esES
				name  = L["Show Remaining Uses on Dice Panel"];
				desc  = L["Show the number of remaining uses for traits on the Dice Panel."];
				type  = "toggle";
				width = "double";
				set = function( info, val )
					Me.db.global.showUses = val
					Me.configOptions.args.resetUses.hidden = not val
					Me.UpdatePanelTraits()
				end;
				get = function( info ) return Me.db.global.showUses end;
			};
			
			resetUses = {
				order = 6;
				-- >>> l10n esES
				name  = L["Reset Trait Uses"];
				desc  = L["Reset the cooldown and number of remaining uses for traits on the Dice Panel."];
				type  = "execute";
				hidden   = true;
				width = "normal";
				func  = function()
					for i = 1, #DiceMasterChargesFrame.traits do
						local traitButton = DiceMasterChargesFrame.traits[i]
						local traitIndex = traitButton.traitIndex
						local trait = Me.Profile.traits[ traitIndex ]
						-- >>> PORT 5.2.1 — revert: EN original
						local usage = trait.usage or "PASSIVE"
						
						if usage:find("USE") then
							local usesTotal = usage:gsub("USE", "")
							traitButton.count:SetText( usesTotal )
							traitButton.icon:SetVertexColor( 1, 1, 1 )
							traitButton.notCastable = false;
						end
						
						traitButton.cooldown:SetCooldown( 0, 0 )
						traitButton.cooldown.text:SetText("")
						traitButton.cooldown.text:Hide()
					end
				end;
			};
			
			hideInspect = {
				order = 7;
				-- >>> l10n esES
				name  = L["Hide Target Frame When Hidden"];
				desc  = L["Hide the Target Frame when the Dice Panel is hidden."];
				type  = "toggle";
				width = "double";
				set = function( info, val )
					Me.db.global.hideInspect = val
					Me.Inspect_Open( Me.inspectName )
				end;
				get = function( info ) return Me.db.global.hideInspect end;
			};
			
			hideStats = {
				order = 8;
				-- >>> l10n esES
				name  = L["Hide Inspect Button on Target Frame"];
				desc  = L["Hide the Inspect button from the Target Frame."];
				type  = "toggle";
				width = "double";
				set = function( info, val )
					Me.db.global.hideStats = val
					Me.Inspect_Open( Me.inspectName )
				end;
				get = function( info ) return Me.db.global.hideStats end;
			};
			
			hidePet = {
				order = 9;
				-- >>> l10n esES
				name  = L["Hide Pet Frame on Target Frame"];
				desc  = L["Hide the Pet Portrait Frame from the Target Frame."];
				type  = "toggle";
				width = "double";
				set = function( info, val )
					Me.db.global.hidePet = val
					Me.Inspect_Open( Me.inspectName )
				end;
				get = function( info ) return Me.db.global.hidePet end;
			};
			
			hideTips = {
				order = 10;
				-- >>> l10n esES
				name  = L["Enable Enhanced Tooltips"];
				desc  = L["Enable helpful DiceMaster term definitions next to trait tooltips."];
				type  = "toggle";
				width = "double";
				set = function( info, val )
					Me.db.global.hideTips = val
				end;
				get = function( info ) return Me.db.global.hideTips end;
			};
			
			hideTypeTracker = {
				order = 11;
				-- >>> l10n esES
				name  = L["Enable Typing Tracker"];
				desc  = L["Enable the Typing Tracker to alert you when group members are writing in say, emote, party, and raid."];
				type  = "toggle";
				width = "double";
				set = function( info, val )
					Me.db.global.hideTypeTracker = val
					Me.PostTracker_Init()
				end;
				get = function( info ) return Me.db.global.hideTypeTracker end;
			};
			
			enableTurnTracker = {
				order = 12;
				-- >>> l10n esES
				name  = L["Enable Combat Turn Tracker"];
				desc  = L["Displays the Turn Tracker frame when turn-based combat begins."];
				width = "full";
				type  = "toggle";
				set = function( info, val ) 
					Me.db.global.enableTurnTracker = val
					if not val then
						DiceMasterTurnTracker:Hide()
					end
				end;
				get = function( info ) return Me.db.global.enableTurnTracker end;
			};
			
			allowSounds = {
				order = 13;
				-- >>> l10n esES
				name  = L["Allow Sounds from Other Players"];
				desc  = L["Allow other players to play sound effects."];
				type  = "toggle";
				width = "double";
				set = function( info, val )
					Me.db.global.allowSounds = val
				end;
				get = function( info ) return Me.db.global.allowSounds end;
			};
			
			allowEffects = {
				order = 14;
				-- >>> l10n esES
				name  = L["Allow Effects from Other Players"];
				desc  = L["Allow other players to send you fullscreen visual effects."];
				type  = "toggle";
				width = "double";
				set = function( info, val )
					Me.db.global.allowEffects = val
				end;
				get = function( info ) return Me.db.global.allowEffects end;
			};
			
			allowIcons = {
				order = 15;
				-- >>> l10n esES
				name  = L["Display Icons in Chat"];
				desc  = L["Display icons linked by players in public chat channels."];
				type  = "toggle";
				width = "double";
				set = function( info, val )
					Me.db.global.allowIcons = val
				end;
				get = function( info ) return Me.db.global.allowIcons end;
			};
			
			enableEmojis = {
				order = 16;
				-- >>> l10n esES
				name  = L["Enable autocomplete for emojis."];
				desc  = L["Display an autocomplete field above your chat bar when you start typing an emoji."];
				type  = "toggle";
				width = "double";
				set = function( info, val )
					Me.db.global.enableEmojis = val
				end;
				get = function( info ) return Me.db.global.enableEmojis end;
			};
			
			enableRoundBanners = {
				order = 17;
				-- >>> l10n esES
				name  = L["Allow Roll Prompt Banners"];
				desc  = L["Allow the group leader to send you visual prompts when it's your turn to roll."];
				type  = "toggle";
				width = "double";
				set = function( info, val )
					Me.db.global.enableRoundBanners = val
				end;
				get = function( info ) return Me.db.global.enableRoundBanners end;
			};
			
			enableMapNodes = {
				order = 18;
				-- >>> l10n esES
				name  = L["Display Group Leader's Map Nodes"];
				desc  = L["Display the group leader's map nodes when you're in a party or raid."];
				type  = "toggle";
				width = "double";
				set = function( info, val )
					Me.db.global.enableMapNodes = val
					Me.UpdateAllMapNodes()
				end;
				get = function( info ) return Me.db.global.enableMapNodes end;
			};

			enableD10 = {
				order = 19;
				-- >>> l10n esES
				name  = L["Enable D10 Mode"];
				desc  = L["Enable Dice 10 mode."];
				type  = "toggle";
				width = "double";
				set = function( info, val )
					Me.db.global.enableD10 = val
					Me.UpdateDiceEditBox()
				end;
				get = function( info ) return Me.db.global.enableD10 end;
			};
			
			headerFrames = {
				order = 20;
				name  = " ";
				type  = "description";
			};
			
			discordLink = {
				order = 21;
				-- >>> l10n esES
				name  = L["Discord (click and copy the link)"];
				desc  = L["Link to the DiceMaster Discord. Select the text and press Ctrl+C to copy it."];
				type  = "input";
				width = "double";
				get   = function( info ) return "https://discord.gg/zCRJVQj" end;
				set   = function( info, val ) 
					-- >>> PORT 5.2.1 — revert: EN original
					-- We don't actually do anything: the value always reverts to the original.
					-- But the user can select and copy it.
				end;
			};
		};
	}

Me.configOptionsCharges = {
	type  = "group";
	order = 1;
	name  = L["Health/Resource Bars"];
	args = { 
		-----------------------------------------------------------------------
		header = {
			order = 0;
			-- >>> l10n esES
			name  = L["Configure the Health, Mana, and Resource Bars."];
			type  = "description";
		};
		
		healthIcons = {
			order = 1;
			-- >>> l10n esES
			name  = L["Use Hearthstone Style Meters Instead"];
			desc  = L["Toggles whether to use the default health bar or the Hearthstone style health and mana meters.|n|n(The meters anchor to the PlayerFrame and TargetFrame by default.)"];
			width = "full";
			type  = "toggle";
			set = function( info, val ) 
				Me.db.global.healthIcons = val
				Me.RefreshHealthbarFrame( DiceMasterChargesFrame.healthbar, Me.db.profile.health, Me.db.profile.healthMax, Me.db.profile.armor )
				Me.RefreshManabarFrame( DiceMasterChargesFrame.manabar, Me.db.profile.mana, Me.db.profile.manaMax )
				Me.Inspect_Open( UnitName( "target" ))
			end;
			get = function( info ) return Me.db.global.healthIcons end;
			hidden = true;
		};
		
		healthGroup = {
			-- >>> l10n esES
			name     = L["Health Bar"];
			inline   = true;
			order    = 12;
			type     = "group";
			args = {
				healthCurrent = {
					order = 10;
					-- >>> l10n esES
					name  = L["Current Health"];
					desc  = L["The current amount of health that this character has."];
					type  = "range"; 
					min   = 0;
					max   = 1000;
					step  = 1;
					set   = function( info, val ) 
						Me.db.profile.health = val
						Me.RefreshHealthbarFrame( DiceMasterChargesFrame.healthbar, Me.db.profile.health, Me.db.profile.healthMax, Me.db.profile.armor )
	
						Me.BumpSerial( Me.db.char, "statusSerial" )
						Me.Inspect_ShareStatusWithParty() 
					end;
					get   = function( info ) return Me.db.profile.health end;
				}; 
			  
				healthMax = {
					order = 20;
					-- >>> l10n esES
					name  = L["Maximum Health"];
					desc  = L["The maximum amount of health that this character can have."];
					type  = "range"; 
					min   = 1;
					max   = 1000;
					step  = 1;
					set   = function( info, val ) 
						Me.db.profile.healthMax = val
						Me.configOptionsCharges.args.healthGroup.args.healthCurrent.max = val
						if Me.db.profile.health > Me.db.profile.healthMax then
							Me.db.profile.health = Me.db.profile.healthMax
						end
						Me.RefreshHealthbarFrame( DiceMasterChargesFrame.healthbar, Me.db.profile.health, Me.db.profile.healthMax, Me.db.profile.armor )
	
						Me.BumpSerial( Me.db.char, "statusSerial" )
						Me.Inspect_ShareStatusWithParty() 
					end;
					get   = function( info ) return Me.db.profile.healthMax end;
				}; 
			};
		};
		
		manaGroup = {
			-- >>> l10n esES
			name     = L["Mana Bar"];
			inline   = true;
			order    = 13;
			type     = "group";
			args = {
				manaCurrent = {
					order = 10;
					-- >>> l10n esES
					name  = L["Current Mana"];
					desc  = L["The current amount of mana that this character has."];
					type  = "range"; 
					min   = 0;
					max   = 1000;
					step  = 1;
					set   = function( info, val ) 
						Me.db.profile.mana = val
						Me.RefreshManabarFrame( DiceMasterChargesFrame.manabar, Me.db.profile.mana, Me.db.profile.manaMax )
	
						Me.BumpSerial( Me.db.char, "statusSerial" )
						Me.Inspect_ShareStatusWithParty() 
					end;
					get   = function( info ) return Me.db.profile.mana end;
				}; 
			  
				manaMax = {
					order = 20;
					-- >>> l10n esES
					name  = L["Maximum Mana"];
					desc  = L["The maximum amount of mana that this character can have."];
					type  = "range"; 
					min   = 1;
					max   = 1000;
					step  = 1;
					set   = function( info, val ) 
						Me.db.profile.manaMax = val
						Me.configOptionsCharges.args.manaGroup.args.manaCurrent.max = val
						if Me.db.profile.mana > Me.db.profile.manaMax then
							Me.db.profile.mana = Me.db.profile.manaMax
						end
						Me.RefreshManabarFrame( DiceMasterChargesFrame.manabar, Me.db.profile.mana, Me.db.profile.manaMax )
	
						Me.BumpSerial( Me.db.char, "statusSerial" )
						Me.Inspect_ShareStatusWithParty() 
					end;
					get   = function( info ) return Me.db.profile.manaMax end;
				};
				
				manaType = {
					order = 70;
					-- >>> l10n esES
					name  = L["Resource Type"];
					desc  = L["Choose the type of resource used by the mana bar."];
					type  = "select"; 
					style = "dropdown";
					-- >>> l10n esES
					values = {
						["Mana"]       = L["Mana"],
						["Energy"]     = L["Energy"],
						["Focus"]      = L["Focus"],
						["Rage"]       = L["Rage"],
						["RunicPower"] = L["Runic Power"],
						["None"]       = L["(None)"],
					};
					set   = function( info, val ) 
						Me.db.profile.manaType = val
						local statusBarTexture = DiceMasterChargesFrame.manabar:GetStatusBarTexture();
						if val:find("None") then
							-- statusBarTexture:SetAtlas( "UI-HUD-UnitFrame-Player-PortraitOff-Bar-" .. val );
						else
							statusBarTexture:SetAtlas( "UI-HUD-UnitFrame-Player-PortraitOff-Bar-" .. val );
						end
						Me.OnChargesChanged()
					end;
					get   = function( info ) return Me.db.profile.manaType end;
				};
			};
		};
	
		enableCharges = {
			order = 14;
			-- >>> l10n esES
			name  = L["Enable Resource Bar"];
			desc  = L["Enable usage of the custom resource bar."];
			width = "full";
			type  = "toggle";
			set = function( info, val ) 
				Me.db.profile.charges.enable = val 
				Me.configOptionsCharges.args.chargesGroup.hidden = not val
				Me.OnChargesChanged() 
			end;
			get = function( info ) return Me.db.profile.charges.enable end;
		};

		chargesGroup = {
			-- >>> l10n esES
			name     = L["Resource Bar"];
			inline   = true;
			order    = 15;
			type     = "group";
			hidden   = true;
			args = {
				chargesName = {
					order = 20;
					-- >>> l10n esES
					name  = L["Resource Name"];
					desc  = L["Name of the custom resource. Examples: Holy Power, Rage, Adrenaline."];
					type  = "input";
					set = function( info, val ) 
						Me.db.profile.charges.name = val
						Me.OnChargesChanged()
					end;
					get = function( info ) return Me.db.profile.charges.name end;
				};
				
				chargesColor = {
					order = 30;
					-- >>> l10n esES
					name  = L["Resource Color"];
					desc  = L["Color of the custom resource bar."];
					type  = "color";
					set = function( info, r, g, b ) 
						Me.db.profile.charges.color = {r,g,b}
						Me.OnChargesChanged()
					end;
					get = function( info ) 
						return Me.db.profile.charges.color[1],
							   Me.db.profile.charges.color[2],
							   Me.db.profile.charges.color[3]
					end;
				};
			  
				chargesMax = {
					order = 40;
					-- >>> l10n esES
					name  = L["Maximum Resource"];
					desc  = L["The maximum possible amount for this custom resource."];
					type  = "range"; 
					hidden = false;
					min   = 1;
					max   = 8;
					step  = 1;
					set   = function( info, val ) 
						Me.db.profile.charges.max = val
						Me.OnChargesChanged()
					end;
					get   = function( info ) return Me.db.profile.charges.max end;
				}; 
				
				chargesMaxTwo = {
					order = 50;
					-- >>> l10n esES
					name  = L["Maximum Resource"];
					desc  = L["The maximum amount of resource that this character can accumulate."];
					type  = "range";
					hidden = true;
					min   = 1;
					max   = 100;
					step  = 1;
					set   = function( info, val ) 
						Me.db.profile.charges.max = val
						if Me.db.profile.charges.count > Me.db.profile.charges.max then
							Me.db.profile.charges.count = Me.db.profile.charges.max
						end
						Me.OnChargesChanged()
					end;
					get   = function( info ) return Me.db.profile.charges.max end;
				}; 
				
				chargesTooltip = {
					order = 60;
					-- >>> l10n esES
					name  = L["Resource Description"];
					desc  = L["A description for the custom resource bar tooltip."];
					type  = "input";
					width = "double";
					multiline = 3;
					set = function( info, val ) 
						Me.db.profile.charges.tooltip = val
						Me.OnChargesChanged()
					end;
					get = function( info ) return Me.db.profile.charges.tooltip end;
				};
				
				chargesSymbol = {
					order = 70;
					-- >>> l10n esES
					name  = L["Resource Bar Skin"];
					desc  = L["Custom skin for the custom resource bar."];
					type  = "select"; 
					style = "dropdown";
					-- >>> l10n esES
					values = SYMBOL_VALUES;
					set   = function( info, val ) 
						Me.db.profile.charges.symbol = val
						if val:find("charge") then
							if Me.db.profile.charges.max > 8 then
								Me.db.profile.charges.max = 8;
							end
							
							if Me.db.profile.charges.count > 8 then
								Me.db.profile.charges.count = 8
							end
							Me.configOptionsCharges.args.chargesGroup.args.chargesMax.hidden = false
							Me.configOptionsCharges.args.chargesGroup.args.chargesMaxTwo.hidden = true
						else
							Me.configOptionsCharges.args.chargesGroup.args.chargesMax.hidden = true
							Me.configOptionsCharges.args.chargesGroup.args.chargesMaxTwo.hidden = false
						end
						Me.OnChargesChanged()
					end;
					get   = function( info ) return Me.db.profile.charges.symbol end;
				};
				
				chargesFlash = {
					order = 80;
					-- >>> l10n esES
					name  = L["Flash When Resource Bar is Full"];
					desc  = L["Toggle whether the custom resource bar flashes when filled."];
					width = "full";
					type  = "toggle";
					set = function( info, val ) 
						Me.db.profile.charges.flash = val
						Me.OnChargesChanged() 
					end;
					get = function( info ) return Me.db.profile.charges.flash end;
				};
				
				chargesPos = {
					order = 90;
					-- >>> l10n esES
					name  = L["Anchor Below Health Bar"];
					desc  = L["Move your custom resource bar so that it's positioned beneath your health bar."];
					width = "full";
					type  = "toggle";
					set = function( info, val ) 
						Me.db.profile.charges.pos = val
						Me.OnChargesChanged()
					end;
					get = function( info ) return Me.db.profile.charges.pos end;
				};
			

				
				chargesFlash = {
					order = 80;
					name  = "Parpadear cuando la barra de recursos esté llena";
					desc  = "Activa o desactiva el parpadeo de la barra de recursos personalizada cuando se llena.";
					width = "full";
					type  = "toggle";
					set = function( info, val ) 
						Me.db.profile.charges.flash = val
						Me.OnChargesChanged() 
					end;
					get = function( info ) return Me.db.profile.charges.flash end;
				};
				
				chargesPos = {
					order = 90;
					name  = "Anclar debajo de la barra de salud";
					desc  = "Mueve tu barra de recursos personalizada para que se posicione debajo de tu barra de salud.";
					width = "full";
					type  = "toggle";
					set = function( info, val ) 
						Me.db.profile.charges.pos = val
						Me.OnChargesChanged()
					end;
					get = function( info ) return Me.db.profile.charges.pos end;
				};
			};
		};
	};
}

	Me.configOptionsProgressBar = {
	type  = "group";
	order = 1;
	name  = L["Progress Bar"];
	args = { 
		-----------------------------------------------------------------------
		header = {
			order = 0;
			-- >>> l10n esES
			name  = L["Configure the Progress Bar frame."];
			type  = "description";
		};
		
		enableMorale = {
			order = 15;
			-- >>> l10n esES
			name  = L["Enable Progress Bar"];
			desc  = L["Enable usage of a group-wide progress bar when you are leader."];
			width = "full";
			type  = "toggle";
			set = function( info, val ) 
				Me.db.profile.morale.enable = val 
				Me.RefreshMoraleFrame() 
			end;
			get = function( info ) return Me.db.profile.morale.enable end;
		};
		
		moraleGroup = {
			-- >>> l10n esES
			name     = L["Dungeon Master Settings"];
			inline   = true;
			order    = 16;
			type     = "group";
			args = {
				header = {
					order = 0;
					-- >>> l10n esES
					name  = L["These settings only take effect when you are the leader of your party or raid."];
					type  = "description";
				};
			
				moraleName = {
					order = 20;
					-- >>> l10n esES
					name  = L["Progress Bar Name"];
					desc  = L["Name of the progress bar. Examples: Morale, Sanity, Shield Integrity."];
					type  = "input";
					set = function( info, val ) 
						Me.db.profile.morale.name = val
						Me.RefreshMoraleFrame()
					end;
					get = function( info ) return Me.db.profile.morale.name end;
				};
				
				moraleColor = {
					order = 30;
					-- >>> l10n esES
					name  = L["Progress Bar Color"];
					desc  = L["Color of the progress bar."];
					type  = "color";
					set = function( info, r, g, b ) 
						Me.db.profile.morale.color = {r,g,b}
						Me.RefreshMoraleFrame()
					end;
					get = function( info ) 
						return Me.db.profile.morale.color[1],
							   Me.db.profile.morale.color[2],
							   Me.db.profile.morale.color[3]
					end;
				};
				
				moraleSymbol = {
					order = 40;
					-- >>> l10n esES
					name  = L["Progress Bar Skin"];
					desc  = L["Custom skin for the progress bar."];
					type  = "select"; 
					style = "dropdown";
					-- >>> l10n esES
					values = SYMBOL_VALUES;
					set   = function( info, val ) 
						Me.db.profile.morale.symbol = val
						Me.RefreshMoraleFrame()
					end;
					get   = function( info ) return Me.db.profile.morale.symbol end;
				}; 
				
				moraleTooltip = {
					order = 50;
					-- >>> l10n esES
					name  = L["Progress Bar Description"];
					desc  = L["A description for the progress bar tooltip."];
					type  = "input";
					multiline = 3;
					width = "full";
					set = function( info, val ) 
						Me.db.profile.morale.tooltip = val
						Me.RefreshMoraleFrame()
					end;
					get = function( info ) return Me.db.profile.morale.tooltip end;
				};
				
				moraleCount = {
					order = 60;
					-- >>> l10n esES
					name  = L["Default Value"];
					desc  = L["The default value of the progress bar."];
					type  = "range"; 
					min   = 0;
					max   = 100;
					step  = 1;
					set   = function( info, val ) 
						Me.db.profile.morale.count = val
						Me.RefreshMoraleFrame( val )
					end;
					get   = function( info ) return Me.db.profile.morale.count end;
				}; 
				
				moraleStep = {
					order = 70;
					-- >>> l10n esES
					name  = L["Increase/Decrease Value"];
					desc  = L["The amount that is added/removed when the progress bar is clicked."];
					type  = "range"; 
					min   = 1;
					max   = 100;
					step  = 1;
					set   = function( info, val ) 
						Me.db.profile.morale.step = val
						Me.RefreshMoraleFrame()
					end;
					get   = function( info ) return Me.db.profile.morale.step end;
				}; 
				
				moraleScale = {
					order     = 80;
					-- >>> l10n esES
					name      = L["Progress Bar Scale"];
					desc      = L["Change the size of the Progress Bar frame."];
					type      = "range";
					min       = 0.25;
					max       = 10;
					softMax   = 4;
					isPercent = true;
					set = function( info, val ) 
						Me.db.profile.morale.scale = val;
						Me.ApplyUiScale()
					end;
					get = function( info ) return Me.db.profile.morale.scale end;
				}; 
			};
		};
	};
}

-- >>> PORT 5.2.1 — Opciones de UnitFrames (pestaña propia)
Me.configOptionsUnitFrames = {
	type  = "group";
	order = 1;
	name  = L["Unit Frames"];
	args = {
		header = {
			order = 0;
			-- >>> l10n esES
			name  = L["Configure the unit frames module."];
			type  = "description";
		};

		-- >>> PORT 5.2.1 — semántica clara: hidden controla ocultación
		enableUnitFrames = {
			order = 10;
			-- >>> l10n esES
			name  = L["Enable Unit Frames"];
			desc  = L["Display the custom unit frames panel."];
			width = "full";
			type  = "toggle";
			set = function( info, val )
				Me.ShowUnitPanel( val )         -- val==true → mostrar → hidden=false
			end;
			get = function( info ) 
				return not Me.db.char.unitframes.hidden   -- hidden==false → visible → toggle ON
			end;
		};

		unitFramesScale = {
			order     = 20;
			-- >>> l10n esES
			name      = L["Unit Frames Scale"];
			desc      = L["Change the size of the unit frames panel."];
			type      = "range";
			min       = 0.25;
			max       = 10;
			softMax   = 4;
			isPercent = true;
			width     = "double";
			set = function( info, val )
				Me.db.char.unitframes.scale = val
				Me.ApplyUiScale()
			end;
			get = function( info ) return Me.db.char.unitframes.scale end;
		};

		miniFrames = {
			order = 30;
			-- >>> l10n esES
			name  = L["Mini Frames"];
			desc  = L["Use the compact version of the unit frames."];
			width = "double";
			type  = "toggle";
			set = function( info, val )
				Me.db.global.miniFrames = val
				if Me.ApplyUiScale then Me.ApplyUiScale() end
			end;
			get = function( info ) return Me.db.global.miniFrames end;
		};

		allowBuffs = {
			order = 40;
			-- >>> l10n esES
			name  = L["Allow Buffs from Other Players"];
			desc  = L["Allow other players to apply buffs to your unit frames."];
			width = "double";
			type  = "toggle";
			set = function( info, val ) Me.db.global.allowBuffs = val end;
			get = function( info ) return Me.db.global.allowBuffs end;
		};

		bloodEffects = {
			order = 50;
			-- >>> l10n esES
			name  = L["Blood Effects"];
			desc  = L["Display blood effects on unit frames."];
			width = "double";
			type  = "toggle";
			set = function( info, val ) Me.db.global.bloodEffects = val end;
			get = function( info ) return Me.db.global.bloodEffects end;
		};

		talkingHeads = {
			order = 60;
			-- >>> l10n esES
			name  = L["Talking Heads"];
			desc  = L["Display talking heads for NPC dialogue."];
			width = "double";
			type  = "toggle";
			set = function( info, val ) Me.db.global.talkingHeads = val end;
			get = function( info ) return Me.db.global.talkingHeads end;
		};

		allowAssistantTalkingHeads = {
			order = 70;
			-- >>> l10n esES
			name  = L["Assistant Talking Heads"];
			desc  = L["Allow party assistants to use talking heads."];
			width = "double";
			type  = "toggle";
			set = function( info, val ) Me.db.global.allowAssistantTalkingHeads = val end;
			get = function( info ) return Me.db.global.allowAssistantTalkingHeads end;
		};

		soundEffects = {
			order = 80;
			-- >>> l10n esES
			name  = L["Sound Effects"];
			desc  = L["Enable sound effects on unit frames."];
			width = "double";
			type  = "toggle";
			set = function( info, val ) Me.db.global.soundEffects = val end;
			get = function( info ) return Me.db.global.soundEffects end;
		};
	};
}

Me.configOptionsManager = {
	type  = "group";
	order = 1;
	name  = L["Dungeon Manager"];
	args = { 
		-----------------------------------------------------------------------
		header = {
			order = 0;
			-- >>> l10n esES
			name  = L["Configure the Dungeon Manager settings."];
			type  = "description";
		};
		
		hideTracker = {
			order = 10;
			-- >>> l10n esES
			name  = L["Enable Dungeon Manager"];
			desc  = L["Enable the Dungeon Manager frame to keep track of your group's rolls, view group-wide notes, and access map nodes."];
			type  = "toggle";
			width = "double";
			set = function( info, val )
				Me.db.global.hideTracker = val
				if val == true then
					DiceMasterRollFrame:Show()
				else
					DiceMasterRollFrame:Hide()
				end
			end;
			get = function( info ) return Me.db.global.hideTracker end;
		};
		
		trackerScale = {
			order     = 20;
			-- >>> l10n esES
			name      = L["Dungeon Manager Scale"];
			desc      = L["The size of the Dungeon Manager frame."];
			type      = "range";
			min       = 0.25;
			max       = 10;
			softMax   = 4;
			isPercent = true;
			set = function( info, val ) 
				Me.db.char.trackerScale = val;
				Me.ApplyUiScale()
			end;
			get = function( info ) return Me.db.char.trackerScale end;
		};
		
		trackerAnchor = {
			order = 30;
			-- >>> l10n esES
			name  = L["Details Frame Anchor"];
			desc  = L["Choose whether the Detail Frame is anchored on the left or right."];
			type  = "select"; 
			style = "radio";
			-- >>> l10n esES
			values = {
				["LEFT"]  = L["Left"],
				["RIGHT"] = L["Right"],
			};
			set   = function( info, val ) 
				Me.db.global.trackerAnchor = val
				Me.DiceMasterRollDetailFrame_Update()
			end;
			get   = function( info ) return Me.db.global.trackerAnchor end;
		};
		
		trackerKeybind = {
			order     = 40;
			-- >>> l10n esES
			name	  = L["Toggle Key"];
			desc      = L["Set a keybinding for the Dungeon Manager frame."];
			type      = "keybinding";
			set = function( info, val ) 
				Me.db.char.trackerKeybind = val;
				Me.ApplyKeybindings()
			end;
			get = function( info ) return Me.db.char.trackerKeybind end;
		};
	};
}
-------------------------------------------------------------------------------
function Me.SetupDB()
	
	local acedb = LibStub( "AceDB-3.0" )
  
	Me.db = acedb:New( "DiceMaster4_Saved", DB_DEFAULTS )
	-- >>> l10n esES — Seed localized defaults for a brand-new profile
local function SeedLocalizedDefaults()
    local p = Me.db.profile
    -- Only touch values if they still equal the EN default (i.e. untouched).
    if p.morale.name == "Progress Bar" then
        p.morale.name = L["Progress Bar"]
    end
    if p.morale.tooltip == "A custom group-wide resource bar that leaders can edit." then
        p.morale.tooltip = L["A custom group-wide resource bar that leaders can edit."]
    end
    if p.charges.name == "Custom Resource" then
        p.charges.name = L["Custom Resource"]
    end
    if p.charges.tooltip == "Represents the amount of Custom Resource you have accumulated for certain traits." then
        p.charges.tooltip = L["Represents the amount of Custom Resource you have accumulated for certain traits."]
    end
    if p.pet.name == "Pet Name" then
        p.pet.name = L["Pet Name"]
    end
end
SeedLocalizedDefaults()
	
	Me.db.RegisterCallback( Me, "OnProfileChanged", "ApplyConfig" )
	Me.db.RegisterCallback( Me, "OnProfileCopied",  "ApplyConfig" )
	Me.db.RegisterCallback( Me, "OnProfileReset",   "ApplyConfig" )
	 
	local options = Me.configOptions
	local charges = Me.configOptionsCharges
	local progressbar = Me.configOptionsProgressBar
	local dmmanager = Me.configOptionsManager
	local unitframes = Me.configOptionsUnitFrames
	local profiles = LibStub("AceDBOptions-3.0"):GetOptionsTable( Me.db )
	profiles.order = 500
	 
	-- >>> PORT 5.2.1 — revert: EN original
	-- This creates the first entry in the menu.
	-- NOTE: RegisterOptionsTable keys are internal identifiers; keep them in EN so
	--       Settings.OpenToCategory / NotifyChange always find them regardless of locale.
	AceConfig:RegisterOptionsTable( "DiceMaster", options )	
	AceConfig:RegisterOptionsTable( "Health/Resource Bars", charges )	
	AceConfig:RegisterOptionsTable( "Progress Bar", progressbar )	
	AceConfig:RegisterOptionsTable( "Dungeon Manager", dmmanager )	
	-- >>> PORT 5.2.1
	AceConfig:RegisterOptionsTable( "Unit Frames", unitframes )
	AceConfig:RegisterOptionsTable( "DiceMaster Profiles", profiles )

	-- >>> PORT 5.2.1 — revert: EN original
	-- AddToBlizOptions already registers the category with the modern API
	-- and returns both the frame and the category ID.
	Me.config, Me.DCS_CATEGORY_ID = AceConfigDialog:AddToBlizOptions( "DiceMaster", "DiceMaster" )

	-- This creates the SECOND entry (the duplicate) but generates the numeric ID
	--local category, layout = Settings.RegisterCanvasLayoutCategory(Me.config, "DiceMaster")
	--Settings.RegisterAddOnCategory(category)
	--Me.DCS_CATEGORY_ID = category:GetID()  -- This is where we had the numeric ID
	
	-- >>> l10n esES
	Me.configCharges     = AceConfigDialog:AddToBlizOptions( "Health/Resource Bars", L["Health/Resource Bars"], "DiceMaster" )
	Me.configProgressBar = AceConfigDialog:AddToBlizOptions( "Progress Bar",         L["Progress Bar"],         "DiceMaster" )
	Me.configManager     = AceConfigDialog:AddToBlizOptions( "Dungeon Manager",      L["Dungeon Manager"],      "DiceMaster" )
	-- >>> PORT 5.2.1
	Me.configUnitFrames  = AceConfigDialog:AddToBlizOptions( "Unit Frames",          L["Unit Frames"],          "DiceMaster" )
	Me.configProfiles    = AceConfigDialog:AddToBlizOptions( "DiceMaster Profiles",  L["Profiles"],             "DiceMaster" )
	
	local function CreateLogo( frame )
		local logo = CreateFrame('Frame', nil, frame, BackdropTemplateMixin and "BackdropTemplate")
		logo:SetFrameLevel(4)
		logo:SetSize(64, 64)
		logo:SetPoint('TOPRIGHT', 8, 24)
		logo:SetBackdrop({bgFile = "Interface/AddOns/DiceMaster/Texture/logo"})
		frame.logo = logo
	end
	
	CreateLogo( Me.config )
	CreateLogo( Me.configCharges )
	CreateLogo( Me.configProgressBar )
	CreateLogo( Me.configManager )
	-- >>> PORT 5.2.1
	CreateLogo( Me.configUnitFrames )
	CreateLogo( Me.configProfiles )
end

local interfaceOptionsNeedsInit = true

-------------------------------------------------------------------------------
-- Open the configuration panel.
--
function Me.OpenConfig()
    -- >>> PORT 5.2.1 — revert: EN original
    -- Update options
    Me.configOptionsCharges.args.chargesGroup.hidden = not Me.db.profile.charges.enable
    Me.configOptions.args.resetUses.hidden = not Me.db.profile.showUses
    Me.configOptionsCharges.args.healthGroup.args.healthCurrent.max = Me.db.profile.healthMax
    
    if Me.db.profile.charges.enable and Me.db.profile.charges.symbol:find("charge") then
        if Me.db.profile.charges.max > 8 then
            Me.db.profile.charges.max = 8;
        end
        if Me.db.profile.charges.count > 8 then
            Me.db.profile.charges.count = 8
        end
        Me.configOptionsCharges.args.chargesGroup.args.chargesMax.hidden = false
        Me.configOptionsCharges.args.chargesGroup.args.chargesMaxTwo.hidden = true
    else
        Me.configOptionsCharges.args.chargesGroup.args.chargesMax.hidden = true
        Me.configOptionsCharges.args.chargesGroup.args.chargesMaxTwo.hidden = false
    end
    
    if Me.db.profile.health > Me.db.profile.healthMax then
        Me.db.profile.health = Me.db.profile.healthMax
    end
    
    -- >>> PORT 5.2.1 — revert: EN original
    -- Open configuration (method that works in Midnight)
    local aceDialog = LibStub("AceConfigDialog-3.0")
    if aceDialog then
        aceDialog:Open("DiceMaster")
    end
    
    LibStub("AceConfigRegistry-3.0"):NotifyChange("DiceMaster")
end

-------------------------------------------------------------------------------
-- Apply saved configuration.
--
function Me.ApplyConfig( onload )
	Me.configOptionsCharges.args.chargesGroup.hidden = not Me.db.profile.charges.enable
	Me.configOptions.args.resetUses.hidden = not Me.db.profile.showUses
	Me.configOptionsCharges.args.healthGroup.args.healthCurrent.max = Me.db.profile.healthMax

	Me.ImportDM5Saved()
	
	-- >>> PORT 5.2.1 — revert: EN original
	-- Bump all serials, everything is considered "changed"
	Me.BumpSerial( Me.db.char, "statusSerial" )
	for i = 1, 5 do
		Me.BumpSerial( Me.db.char.traitSerials, i )
	end
	Me.Inspect_ShareStatusWithParty()
	
	Me.ApplyUiScale()
	Me.RefreshHealthbarFrame( DiceMasterChargesFrame.healthbar, Me.db.profile.health, Me.db.profile.healthMax, Me.db.profile.armor )
	Me.RefreshChargesFrame( true, true )  
	Me.TraitEditor_Refresh()
	Me.TraitEditor_UpdateInventory()
	Me.ShopFrame_Update()	
	Me.UpdatePanelTraits()
end