 -------------------------------------------------------------------------------
-- Dice Master (C) 2019 <The League of Lordaeron> - Moon Guard
-------------------------------------------------------------------------------

--
-- Colour picker interface.
--

local Me = DiceMaster4

-- >>> l10n esES
-- Claves de categoría ("Default", "Class", "Quality") NO se traducen
-- (son claves internas de menú). El texto visible se traduce al mostrarlo.
local PRESET_COLOUR_OPTIONS = {
	["Default"] = {
		{ L["Red"],    "FF0000" },
		{ L["Orange"], "FFA500" },
		{ L["Yellow"], "FFFF00" },
		{ L["Green"],  "00FF00" },
		{ L["Blue"],   "0000FF" },
		{ L["Purple"], "FF00FF" },
		{ L["White"],  "FFFFFF" },
		{ L["Black"],  "000000" },
	},
	["Class"] = {
		{ L["Death Knight"], "C41F3B" },
		{ L["Demon Hunter"], "A330C9" },
		{ L["Druid"],        "FF7D0A" },
		{ L["Hunter"],       "ABD473" },
		{ L["Mage"],         "40C7EB" },
		{ L["Monk"],         "00FF96" },
		{ L["Paladin"],      "F58CBA" },
		{ L["Priest"],       "FFFFFF" },
		{ L["Rogue"],        "FFF569" },
		{ L["Shaman"],       "0070DE" },
		{ L["Warlock"],      "8787ED" },
		{ L["Warrior"],      "C79C6E" },
	},
	["Quality"] = {
		{ L["Poor"],      "9D9D9D" },
		{ L["Common"],    "FFFFFF" },
		{ L["Uncommon"],  "1EFF00" },
		{ L["Rare"],      "0070DD" },
		{ L["Epic"],      "A335EE" },
		{ L["Legendary"], "FF8000" },
		{ L["Artifact"],  "E6CC80" },
		{ L["Heirloom"],  "00CCFF" },
	},
}

local function RGBToHex( r, g, b )
	-- default to white
	if not r or not g or not b then return "ffffff" end
	r = r * 255
	g = g * 255
	b = b * 255
	r = r <= 255 and r >= 0 and r or 0
	g = g <= 255 and g >= 0 and g or 0
	b = b <= 255 and b >= 0 and b or 0
	return string.format("%02x%02x%02x", r, g, b)
end

local function HexToRGBPerc( hex )
	local rhex, ghex, bhex, base
    if strlen(hex) == 6 then
        rhex, ghex, bhex = strmatch(hex, "(%x%x)(%x%x)(%x%x)")
        base = 255
    end
    if not (rhex and ghex and bhex) then
        return 1, 1, 1
    else
        return tonumber(rhex, 16)/base, tonumber(ghex, 16)/base, tonumber(bhex, 16)/base
    end
end

function Me.ColourPickerDropDown_OnClick(self, arg1, arg2)
	local r, g, b = HexToRGBPerc( arg2 );
	DiceMasterColourPicker.colourSelect:SetColorRGB( r, g, b )
	
	UIDropDownMenu_SetText(DiceMasterColourPicker.selectPreset, "|cFF"..arg2..arg1.."|r")
end

function Me.ColourPickerDropDown_OnLoad(frame, level, menuList)
	local info = UIDropDownMenu_CreateInfo()
	
	if level == 1 then
		for k,v in pairs( PRESET_COLOUR_OPTIONS ) do
			info.text = L[k]
			info.disabled = false;
			info.notClickable = false;
			info.notCheckable = true;
			info.hasArrow = true;
			info.menuList = k
			UIDropDownMenu_AddButton(info)
		end
	elseif menuList then
		for i = 1, #PRESET_COLOUR_OPTIONS[menuList] do
		   info.text = "|cFF"..PRESET_COLOUR_OPTIONS[menuList][i][2]..PRESET_COLOUR_OPTIONS[menuList][i][1].."|r";
		   info.arg1 = PRESET_COLOUR_OPTIONS[menuList][i][1];
		   info.arg2 = PRESET_COLOUR_OPTIONS[menuList][i][2]
		   info.hasArrow = false;
		   info.notCheckable = false;
		   info.checked = strmatch(DiceMasterColourPicker.value:GetText(), info.arg2);
		   info.func = Me.ColourPickerDropDown_OnClick;
		   UIDropDownMenu_AddButton(info, level)
		end
	end
	
end

-------------------------------------------------------------------------------
-- When a colour is selected.
--
function Me.ColourPicker_OnColourSelect( r, g, b )
	local hex = RGBToHex( r, g, b )
	DiceMasterColourPicker.value:SetText( CreateColor( r, g, b, 1 ):WrapTextInColorCode( strupper( hex ) ) )
	UIDropDownMenu_SetText(DiceMasterColourPicker.selectPreset, L["Select a Preset Colour"])
end

-------------------------------------------------------------------------------
-- When a hexadecimal value is entered.
--
function Me.ColourPicker_OnTextChanged( self )
	local r, g, b = HexToRGBPerc( self:GetText() or "" )
	DiceMasterColourPicker.colourSelect:SetColorRGB( r, g, b )
	UIDropDownMenu_SetText(DiceMasterColourPicker.selectPreset, L["Select a Preset Colour"])
end

-------------------------------------------------------------------------------
-- When the Select Colour button is clicked.
--
function Me.ColourPicker_OnColourPick()
	local hex = RGBToHex( DiceMasterColourPicker.colourSelect:GetColorRGB() )
	
	if DiceMasterColourPicker.parent == DiceMasterDMNotesDMNotes.EditBox then
		Me.TraitEditor_InsertTag( "color="..hex, "color", DiceMasterColourPicker.parent )
		DiceMasterNotesEditBox_OnTextChanged(DiceMasterColourPicker.parent)
	elseif DiceMasterColourPicker.parent == DiceMasterBookFrame then
		if not DiceMasterBookFrame.bookData then
			return
		end
		
		Me.BookEditor_InsertTag( "color:"..hex, "color" )
	else
		DiceMaster4.TraitEditor_InsertTag( "color="..hex, "color" )
		DiceMaster4.TraitEditor_SaveDescription()
	end
	Me.ColourPicker_Close()
end
    
-------------------------------------------------------------------------------
-- Close the colour picker window. Use this instead of a direct Hide()
--
function Me.ColourPicker_Close()
	DiceMasterColourPicker:Hide()
end
    
-------------------------------------------------------------------------------
-- Open the colour picker window.
--
function Me.ColourPicker_Open( parent )
	Me.CloseAllEditors()
	if parent then
		DiceMasterColourPicker.parent = parent
	else
		DiceMasterColourPicker.parent = nil
	end
	
	DiceMasterColourPicker.CloseButton:SetScript("OnClick",Me.ColourPicker_Close)
	
	DiceMasterColourPicker:Show()
end
