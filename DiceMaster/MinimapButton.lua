-------------------------------------------------------------------------------
-- Dice Master (C) 2023 <The League of Lordaeron> - Moon Guard
-------------------------------------------------------------------------------

local Me = DiceMaster4

Me.MinimapButton = {}

local LDB    = LibStub:GetLibrary( "LibDataBroker-1.1" )
local DBIcon = LibStub:GetLibrary( "LibDBIcon-1.0"     )
-- >>> l10n esES — locale
local L = LibStub("AceLocale-3.0"):GetLocale("DiceMaster", true)

-------------------------------------------------------------------------------
function Me.MinimapButton_Init()
	AddonCompartmentFrame:RegisterAddon({
		 text = "DiceMaster",
		 icon = "Interface/AddOns/DiceMaster/Icons/DiceMaster",
		 notCheckable = true,
		 func = function(data, menuInputData, menu)
			 Me.MinimapButton:OnClick(data, menuInputData.buttonName)
		 end,
		 funcOnEnter = function(self)
			Me.MinimapButton:OnEnter(self)
		 end,
		 funcOnLeave = function(self)
			Me.MinimapButton:OnLeave(self)
		 end,
	})

	local self = Me.MinimapButton
	
	self.data = LDB:NewDataObject( "DiceMaster", {
		type = "data source";
		text = "DiceMaster";
		icon = "Interface/AddOns/DiceMaster/Icons/DiceMaster";
		OnClick = function(self, button) Me.MinimapButton:OnClick(self, button) end;
		OnEnter = function(self) Me.MinimapButton:OnEnter(self) end;
		OnLeave = function(self) Me.MinimapButton:OnLeave(self) end;
	})
end

-------------------------------------------------------------------------------
function Me.MinimapButton:OnLoad() 
	DBIcon:Register( "DiceMaster", self.data, Me.db.char.minimapicon )
end

-------------------------------------------------------------------------------
function Me.MinimapButton:Show( show )
	if show then
		DBIcon:Show( "DiceMaster" )
		Me.db.char.minimapicon.hide = false
	else
		DBIcon:Hide( "DiceMaster" )
		Me.db.char.minimapicon.hide = true
	end
end

-------------------------------------------------------------------------------
function Me.MinimapButton:OnClick( self, button )
	-- Shift+Click derecho → toggle panel de Unit Frames
	if IsShiftKeyDown() and button == "RightButton" then
		Me.ShowUnitPanel( Me.db.char.unitframes.hidden )
		return
	end

	if button == "LeftButton" then
		Me.ShowPanel( Me.db.char.hidepanel )
	elseif button == "RightButton" then
		local ok = pcall(function()
			Settings.OpenToCategory(Me.DCS_CATEGORY_ID)
		end)
		if not ok then
			local aceDialog = LibStub("AceConfigDialog-3.0")
			if aceDialog then
				aceDialog:Open("DiceMaster")
			end
		end
	end
end
   
-------------------------------------------------------------------------------
function Me.MinimapButton:OnEnter( frame ) 
	-- Section the screen into 6 sextants and define the tooltip 
	-- anchor position based on which sextant the cursor is in.
	-- Code taken from WeakAuras.
	--
    local max_x = 768 * GetMonitorAspectRatio()
    local max_y = 768
    local x, y = GetCursorPosition()
	
    local horizontal = (x < (max_x/3) and "LEFT") or ((x >= (max_x/3) and x < ((max_x/3)*2)) and "") or "RIGHT"
    local tooltip_vertical = (y < (max_y/2) and "BOTTOM") or "TOP"
    local anchor_vertical = (y < (max_y/2) and "TOP") or "BOTTOM"
    GameTooltip:SetOwner( frame, "ANCHOR_NONE" )
    GameTooltip:SetPoint( tooltip_vertical..horizontal, frame, anchor_vertical..horizontal )
	
	GameTooltip:ClearLines()
	GameTooltip:AddDoubleLine( "DiceMaster", Me.version, 1, 1, 1, 1, 1, 1 )
	GameTooltip:AddLine( " " )
-- >>> l10n esES
	GameTooltip:AddLine( L["|cff00ff00Left-click|r to toggle panel."], 1, 1, 1 )
	GameTooltip:AddLine( L["|cff00ff00Right-click|r for configuration."], 1, 1, 1 )
	GameTooltip:AddLine( L["|cff00ff00Shift+Click|r to toggle unit frames."], 1, 1, 1 )
	GameTooltip:Show()
end

-------------------------------------------------------------------------------
function Me.MinimapButton:OnLeave( frame ) 
	GameTooltip:Hide()
end