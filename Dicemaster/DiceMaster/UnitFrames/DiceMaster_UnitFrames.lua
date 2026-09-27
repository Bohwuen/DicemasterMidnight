-------------------------------------------------------------------------------
-- Dice Master (C) 2023 <The League of Lordaeron> - Moon Guard
-------------------------------------------------------------------------------

-------------------------------------------------------------------------------
-- UnitFrames module (integrado en DiceMaster core).
--

local VERSION = C_AddOns.GetAddOnMetadata( "DiceMaster", "Version" )
local Me = DiceMaster4
Me.version = VERSION

-- >>> PORT 5.2.1 — No redefinir Me.Profile aquí; ya lo define DiceMaster.lua.
-- Si en algún momento se necesita Profile local, usar Me.Profile directamente.

------------------------------------------------------------------------
-- >>> PORT 5.2.1 — En vez de crear un frame propio, usar Me.frame del core.
-- El core registra los eventos en OnEnable; aquí solo definimos el handler.

function Me.UnitFrames_OnEvent( event, arg1, ... )
	-- >>> PORT 5.2.1 — ADDON_LOADED ya no aplica (no es addon separado).
	-- La migración SV la hace Me:MigrateUnitFramesSV() desde el core.

	if IsInGroup( LE_PARTY_CATEGORY_INSTANCE ) then
		return
	end

	if event == "PARTY_LEADER_CHANGED" and IsInGroup( LE_PARTY_CATEGORY_HOME ) and not Me.db.char.unitframes.hidden then
		if Me.IsLeader( false ) then
			DiceMasterUnitsPanel:Show()
		else
			DiceMasterUnitsPanel:Hide()
		end
		Me.UpdateUnitFrames()
	end

	if event == "GROUP_ROSTER_UPDATE" and IsInGroup( LE_PARTY_CATEGORY_HOME ) and UnitIsGroupLeader("player") and not Me.db.char.unitframes.hidden then
		Me.UpdateUnitFrames()
	end

	-- >>> PORT 5.2.1 — GROUP_LEFT eliminado en retail moderno.
	-- El caso "salir del grupo" lo cubre GROUP_ROSTER_UPDATE con IsInGroup() == false.
	if event == "GROUP_ROSTER_UPDATE" and not IsInGroup( LE_PARTY_CATEGORY_HOME ) and Me.IsLeader( false ) and not Me.db.char.unitframes.hidden then
		local unitframes = DiceMasterUnitsPanel.unitframes
		for i = 1, #unitframes do
			unitframes[i]:ClearModel()
			unitframes[i]:Reset()
			unitframes[i]:Hide()
		end
		DiceMasterUnitsPanel:Show()
		Me.UpdateUnitFrames(1)
	end
end

function Me.ApplyUiScaleUF()
	DiceMasterUnitsPanel:SetScale( Me.db.char.unitframes.scale * 1.4 )
	DiceMasterAffixEditor:SetScale( Me.db.char.uiScale * 1.4 )
	DiceMasterUnitFramesBuffEditor:SetScale( Me.db.char.uiScale * 1.4 )

	-- >>> PORT 5.2.1 — guard: los unitframes pueden no tener métodos aún
	if DiceMasterUnitsPanel.unitframes then
		for i = 1, #DiceMasterUnitsPanel.unitframes do
			local uf = DiceMasterUnitsPanel.unitframes[i]
			if uf and uf.Collapse then
				uf:Collapse( Me.db.global.miniFrames )
			end
		end
	end
end

-- >>> PORT 5.2.1 — refactor: 'show' controla visibilidad, 'hidden' guarda el estado
local function SetMouseRecursive(frame, enabled)
    if not frame then return end
    frame:EnableMouse(enabled)
    for _, child in ipairs({ frame:GetChildren() }) do
        SetMouseRecursive(child, enabled)
    end
end

-- Helper: activa/desactiva el ratón recursivamente en un frame y sus hijos
local function SetMouseRecursive(frame, enabled)
	if not frame then return end
	if enabled then
		frame:EnableMouse(frame._dcMouseWasEnabled ~= false)
	else
		frame._dcMouseWasEnabled = frame:IsMouseEnabled()
		frame:EnableMouse(false)
	end
	for _, child in ipairs({ frame:GetChildren() }) do
		SetMouseRecursive(child, enabled)
	end
end

function Me.ShowUnitPanel( show )
	Me.db.char.unitframes.hidden = not show
	if not show then
		DiceMasterUnitsPanel:Hide()
		SetMouseRecursive(DiceMasterUnitsPanel, false)
	else
		DiceMasterUnitsPanel:Show()
		SetMouseRecursive(DiceMasterUnitsPanel, true)
		if IsInGroup( LE_PARTY_CATEGORY_HOME ) and not Me.IsLeader( false ) then
			for i = 1, MAX_RAID_MEMBERS do
				local name, rank = GetRaidRosterInfo(i)
				if name and UnitIsGroupLeader( name ) then
					local msg = Me:Serialize( "UFREQ", "request" )
					Me:SendCommMessage( "DCM4", msg, "WHISPER", name, "ALERT" )
					break
				end
			end
		else
			Me.UpdateUnitFrames(1)
		end
	end
end