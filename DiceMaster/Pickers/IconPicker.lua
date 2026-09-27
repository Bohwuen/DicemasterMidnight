-------------------------------------------------------------------------------
-- Dice Master (C) 2019 <The League of Lordaeron> - Moon Guard
-------------------------------------------------------------------------------

--
-- Icon picker interface.
--

local Me = DiceMaster4

local startOffset = 0
local filteredList = nil

-- >>> PORT 5.2.1
-- Devuelve el token canonico del boton (atlas name, "file:N", o path string).
-- No pinta nada: RefreshGrid ya lo hizo con ApplyIconToButton.
-- <<< PORT 5.2.1
local function GetIconPath( button )
	if not button or not button.pickerIndex then
		return ""
	end

	local list = filteredList or Me.iconList
	local entry = list[ button.pickerIndex + startOffset ]
	if not entry then return "" end

	if type(entry) == "table" then
		if entry.atlas then return entry.atlas end
		if entry.file then return "file:" .. entry.file end
		return entry.texture or ("Interface/Icons/" .. entry.name)
	elseif type(entry) == "number" then
		return "file:" .. entry
	else
		local tex = entry
		if tex:find("^AddOns/") then
			return "Interface/" .. tex
		elseif tex:find("^Interface/") then
			return tex
		else
			return "Interface/Icons/" .. tex
		end
	end
end

-------------------------------------------------------------------------------
-- When one of the icon buttons are clicked.
--
function Me.IconPickerButton_OnClick( self )
	-- Apply the icon to the edited trait and close the picker.
	if DiceMasterIconPicker.parent then
		if DiceMasterIconPicker.parent == DiceMasterBuffEditor then
			Me.BuffEditor_SelectIcon( GetIconPath(self) )
		elseif DiceMasterIconPicker.parent == DiceMasterDMBuffEditor then
			Me.DMBuffEditor_SelectIcon( GetIconPath(self) )
		elseif DiceMasterIconPicker.parent == Me.editor then
			Me.TraitEditor_SelectIcon( GetIconPath(self) )
		elseif DiceMasterIconPicker.parent == DiceMasterSkillDetailSkillIconButton then
			Me.SkillFrame_SelectIcon( GetIconPath(self) )
		elseif DiceMasterIconPicker.parent == DiceMasterPetFrame then
			Me.PetEditor_SelectIcon( GetIconPath(self) ) 
		elseif DiceMasterIconPicker.parent == DiceMasterItemEditor then
			Me.ItemEditor_SelectIcon( GetIconPath(self) )
		elseif DiceMasterIconPicker.parent == DiceMasterCurrencyEditor then
			Me.CurrencyEditor_SelectIcon( GetIconPath(self) )
		elseif DiceMasterIconPicker.parent == DiceMasterDMNotesDMNotes.EditBox then
			Me.TraitEditor_Insert( "<img>"..GetIconPath(self).."</img>", DiceMasterIconPicker.parent )
			DiceMasterNotesEditBox_OnTextChanged(DiceMasterIconPicker.parent)
		elseif DiceMasterIconPicker.parent == DiceMasterBookFrame then
			Me.BookEditor_Insert( "{icon:"..GetIconPath(self)..":32}" )
		elseif DiceMasterIconPicker.parent == DiceMasterTraitEditorInventoryTab then
			Me.TraitEditor_SelectInventoryIcon( GetIconPath(self) )
		elseif DiceMasterIconPicker.parent == DiceMasterTraitEditorShopTab then
			Me.ShopFrame_SelectIcon( GetIconPath(self) )
		elseif DiceMasterIconPicker.parent == DiceMasterSkillEditor then
			Me.SkillEditor_SelectIcon( GetIconPath(self) )
		elseif DiceMasterIconPicker.parent:GetParent():GetName():find("DiceMasterBannerPromptDialog") then
			Me.RollBannerPromptDialog_SelectIcon( GetIconPath(self), DiceMasterIconPicker.parent )
		elseif DiceMasterIconPicker.parent:GetName():find("DiceMasterLearnPetEditor") then
			DiceMasterIconPicker.parent:SetTexture( GetIconPath(self) );
		elseif DiceMasterIconPicker.parent == DiceMasterUnitManagerFieldEditor then
			DiceMasterUnitManagerFieldEditorIconButton:SetTexture( GetIconPath(self) );
		end
	else
		Me.TraitEditor_Insert( "<img>"..GetIconPath(self).."</img>" )
		Me.TraitEditor_SaveDescription()
	end
	PlaySound(54129)
	Me.IconPicker_Close()
end

-------------------------------------------------------------------------------
-- OnEnter handler, to magnify the icon and show the texture path.
--
-- >>> PORT 5.2.1
-- Usa |A:atlas:64:64|a para atlas, |T:path:64|t para el resto.
-- <<< PORT 5.2.1
function Me.IconPickerButton_ShowTooltip( self )
	GameTooltip:SetOwner(self, "ANCHOR_RIGHT")

	local list = filteredList or Me.iconList
	local entry = list[ self.pickerIndex + startOffset ]

	if not entry then
		GameTooltip:AddLine( "(no icon)", 1, 1, 1, true )
		GameTooltip:Show()
		return
	end

	local token = GetIconPath(self)

	if type(entry) == "table" and entry.atlas then
		GameTooltip:AddLine( "|A:" .. entry.atlas .. ":64:64|a", 1, 1, 1, true )
	else
		GameTooltip:AddLine( "|T" .. token:gsub("^file:", "") .. ":64|t", 1, 1, 1, true )
	end
	GameTooltip:AddLine( token, 1, 0.81, 0, true )
	GameTooltip:Show()
end

-------------------------------------------------------------------------------
-- When the mousewheel is used on the icon map.
--
function Me.IconPicker_MouseScroll( delta )

	local a = DiceMasterIconPicker.selectorFrame.scroller:GetValue() - delta
	-- todo: do we need to clamp?
	DiceMasterIconPicker.selectorFrame.scroller:SetValue( a )
end
   
-------------------------------------------------------------------------------
-- When the scrollbar's value is changed.
--
function Me.IconPicker_ScrollChanged( value )
	
	-- Our "step" is 6 icons, which is one line.
	startOffset = math.floor(value) * 7
	Me.IconPicker_RefreshGrid()
end

-------------------------------------------------------------------------------
-- Set the textures of the icon grid from the icons in the list at the
-- current offset.
--
-- >>> PORT 5.2.1
-- Autocontenida: no depende de ApplyIconToButton externo.
-- Soporta tabla {name, texture?, file?, atlas?}, numero y string.
-- <<< PORT 5.2.1
function Me.IconPicker_RefreshGrid()
	local list = filteredList or Me.iconList
	for k, v in ipairs( DiceMasterIconPicker.icons ) do
		local entry = list[ startOffset + k ]
		if entry then
			v:Show()

			if type(entry) == "table" then
				if entry.atlas then
					v:SetNormalTexture("")
					v:GetNormalTexture():SetAtlas(entry.atlas)
					v.pickerToken = entry.atlas
				elseif entry.file then
					v:SetNormalTexture(entry.file)
					v.pickerToken = "file:" .. entry.file
				elseif entry.texture then
					v:SetNormalTexture(entry.texture)
					v.pickerToken = entry.texture
				else
					v:SetNormalTexture("Interface/Icons/INV_Misc_QuestionMark")
					v.pickerToken = "Interface/Icons/INV_Misc_QuestionMark"
				end
			elseif type(entry) == "number" then
				v:SetNormalTexture(entry)
				v.pickerToken = "file:" .. entry
			elseif type(entry) == "string" then
				local tex = entry
				if not tex:find("^Interface/") and not tex:find("^AddOns/") then
					tex = "Interface/Icons/" .. tex
				elseif tex:find("^AddOns/") then
					tex = "Interface/" .. tex
				end
				v:SetNormalTexture(tex)
				v.pickerToken = tex
			else
				v:Hide()
				v.pickerToken = nil
			end
		else
			v:Hide()
			v.pickerToken = nil
		end
	end
end

-------------------------------------------------------------------------------
-- Called when the user types into the search box.
--
-- >>> PORT 5.2.1
-- Filtra contra entry.name y, si existe, contra atlas/texture.
-- Soporta entries tabla, numero o string.
-- <<< PORT 5.2.1
function Me.IconPicker_FilterChanged()
	local filter = DiceMasterIconPicker.search:GetText():lower()
	if #filter < 3 then
		if filteredList then
			filteredList = nil
			Me.IconPicker_RefreshScroll()
			Me.IconPicker_RefreshGrid()
		end
	else
		filteredList = {}
		for _, entry in ipairs( Me.iconList ) do
			local haystack
			if type(entry) == "table" then
				haystack = entry.name or ""
				if entry.atlas then haystack = haystack .. " " .. entry.atlas end
				if entry.texture then haystack = haystack .. " " .. entry.texture end
			else
				haystack = tostring(entry)
			end
			if haystack:lower():find( filter, 1, true ) then
				table.insert( filteredList, entry )
			end
		end
		Me.IconPicker_RefreshScroll()
	end
end

-------------------------------------------------------------------------------
-- When we change the size of the list, update the scroll bar range.
--
-- @param reset Reset the scroll bar to the beginning.
--
function Me.IconPicker_RefreshScroll( reset )
	local list = filteredList or Me.iconList 
	local max = math.floor((#list - 42) / 7)
	if max < 0 then max = 0 end
	DiceMasterIconPicker.selectorFrame.scroller:SetMinMaxValues( 0, max )
	
	if reset then
		DiceMasterIconPicker.selectorFrame.scroller:SetValue( 0 )
	end
	-- todo: does scroller auto clamp value?
	
	Me.IconPicker_ScrollChanged( DiceMasterIconPicker.selectorFrame.scroller:GetValue() )
end
    
-------------------------------------------------------------------------------
-- Close the icon picker window. Use this instead of a direct Hide()
--
function Me.IconPicker_Close()

	-- unhighlight the traitIcon button.
	Me.editor.scrollFrame.Container.traitIcon:Select( false )
	DiceMasterBuffEditor.buffIcon:Select( false )
	DiceMasterIconPicker:Hide()
end
    
-------------------------------------------------------------------------------
-- Open the icon picker window.
--
function Me.IconPicker_Open( parent, noSelect )
	if parent then
		Me.CloseAllEditors( nil, true, true )
		DiceMasterIconPicker.parent = parent
		
		if not noSelect then
			if DiceMasterIconPicker.parent == Me.editor then
				DiceMasterIconPicker.parent.scrollFrame.Container.traitIcon:Select( true )
			elseif DiceMasterIconPicker.parent.buffIcon then
				DiceMasterIconPicker.parent.buffIcon:Select( true )
			end
		end
	else
		Me.CloseAllEditors( nil, true )
		DiceMasterIconPicker.parent = nil
	end
	filteredList = nil
	
	DiceMasterIconPicker.CloseButton:SetScript("OnClick",Me.IconPicker_Close)
	
	Me.IconPicker_RefreshScroll( true )
	DiceMasterIconPicker.search:SetText("")
	DiceMasterIconPicker:Show()
end
