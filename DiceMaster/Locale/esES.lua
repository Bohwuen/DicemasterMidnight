-- >>> l10n esES — Traducción al español (España).
local addonName, ns = ...
local L = LibStub("AceLocale-3.0"):NewLocale(addonName, "esES")
if not L then return end

-- ============================================================
-- DiceMaster.lua — StaticPopupDialogs (vida / maná)
-- ============================================================
L["Set Health value:"] = "Establecer valor de vida:"
L["Set maximum Health value:"] = "Establecer valor máximo de vida:"
L["Set Mana value:"] = "Establecer valor de maná:"
L["Set maximum Mana value:"] = "Establecer valor máximo de maná:"
L["Set %s value:"] = "Establecer valor de %s:"
L["Set maximum %s value:"] = "Establecer valor máximo de %s:"

-- ============================================================
-- DiceMaster.lua — Trait usage (TRAIT_USAGE)
-- ============================================================
L["1 Use"] = "1 Uso"
L["2 Uses"] = "2 Usos"
L["3 Uses"] = "3 Usos"
L["Passive"] = "Pasivo"
L["(None)"] = "(Ninguno)"
L["<Unknown Usage>"] = "<Uso desconocido>"

-- ============================================================
-- DiceMaster.lua — Trait cast time (TRAIT_CAST_TIME)
-- ============================================================
L["Instant"] = "Instantáneo"
L["Channeled"] = "Canalizado"
L["1 turn cast"] = "1 turno de lanzamiento"
L["2 turns cast"] = "2 turnos de lanzamiento"
L["3 turns cast"] = "3 turnos de lanzamiento"
L["4 turns cast"] = "4 turnos de lanzamiento"
L["5 turns cast"] = "5 turnos de lanzamiento"

-- ============================================================
-- DiceMaster.lua — Trait range (TRAIT_RANGE)
-- ============================================================
L["Melee Range"] = "Cuerpo a cuerpo"
L["10 yd range"] = "alcance 10 m"
L["20 yd range"] = "alcance 20 m"
L["30 yd range"] = "alcance 30 m"
L["40 yd range"] = "alcance 40 m"
L["50 yd range"] = "alcance 50 m"
L["60 yd range"] = "alcance 60 m"
L["70 yd range"] = "alcance 70 m"
L["80 yd range"] = "alcance 80 m"
L["90 yd range"] = "alcance 90 m"
L["100 yd range"] = "alcance 100 m"
L["Unlimited range"] = "Alcance ilimitado"

-- ============================================================
-- DiceMaster.lua — Trait cooldown (TRAIT_COOLDOWN)
-- ============================================================
L["15 sec"] = "15 s"
L["20 sec"] = "20 s"
L["30 sec"] = "30 s"
L["1 min"] = "1 min"
L["2 min"] = "2 min"
L["3 min"] = "3 min"
L["4 min"] = "4 min"
L["5 min"] = "5 min"
L["10 min"] = "10 min"
L["15 min"] = "15 min"
L["20 min"] = "20 min"
L["30 min"] = "30 min"
L["1 hour"] = "1 h"
L["2 hour"] = "2 h"
L["3 hour"] = "3 h"
L["4 hour"] = "4 h"
L["5 hour"] = "5 h"
L["1 day"] = "1 día"
L["2 day"] = "2 días"
L["3 day"] = "3 días"
L["4 day"] = "4 días"
L["5 day"] = "5 días"
L["1 week"] = "1 semana"
L["1 turn"] = "1 turno"
L["2 turn"] = "2 turnos"
L["3 turn"] = "3 turnos"
L["4 turn"] = "4 turnos"
L["5 turn"] = "5 turnos"
L["6 turn"] = "6 turnos"
L["%s cooldown"] = "%s de recarga"

-- ============================================================
-- DiceMaster.lua — Charges (tooltips)
-- ============================================================
L["<Left Click to Add %s>"] = "<Clic izquierdo para añadir %s>"
L["<Right Click to Remove %s>"] = "<Clic derecho para eliminar %s>"

-- ============================================================
-- DiceMaster.lua — Mensajes de error / UI
-- ============================================================
L["Not enough mana"] = "Maná insuficiente"
L["Trait is not ready yet."] = "El rasgo aún no está listo."
L["Error: delta must be a number."] = "Error: el delta debe ser un número."
L["EditBox 'DiceMasterPanelDice' not found"] = "No se encontró el EditBox 'DiceMasterPanelDice'"
L["Modifiers:"] = "Modificadores:"

-- ============================================================
-- DiceMaster.lua — Secret
-- ============================================================
L["Secret!"] = "¡Secreto!"
L["This secret is revealed when activated by a specific condition."] = "Este secreto se revela al activarse mediante una condición específica."

-- ============================================================
-- DiceMaster.lua — Migración UnitFrames
-- ============================================================
L["UnitFrames SavedVariables migrated to 5.2.1 format."] = "SavedVariables de UnitFrames migradas al formato 5.2.1."

-------------------------------------------------------------------------------
-- Config.lua → main panel
-------------------------------------------------------------------------------
L["Configure the core settings for DiceMaster."] = "Configura las opciones principales de DiceMaster."
L["Enable Minimap Icon"] = "Activar icono en el minimapa"
L["Enable the DiceMaster minimap icon."] = "Activa el icono de DiceMaster en el minimapa."
L["UI Scale"] = "Escala de la interfaz"
L["Change the size of the Dice Panel, Health and Resource bars, Target, and Progress Bar frames."] = "Cambia el tamaño del panel de dados, las barras de salud y recursos, el objetivo y las barras de progreso."
L["Show Remaining Uses on Dice Panel"] = "Mostrar usos restantes en el panel de dados"
L["Show the number of remaining uses for traits on the Dice Panel."] = "Muestra el número de usos restantes para los rasgos en el panel de dados."
L["Reset Trait Uses"] = "Reiniciar usos de rasgos"
L["Reset the cooldown and number of remaining uses for traits on the Dice Panel."] = "Reinicia el tiempo de reutilización y el número de usos restantes para los rasgos en el panel de dados."
L["Hide Target Frame When Hidden"] = "Ocultar marco del objetivo cuando está oculto"
L["Hide the Target Frame when the Dice Panel is hidden."] = "Oculta el marco del objetivo cuando el panel de dados está oculto."
L["Hide Inspect Button on Target Frame"] = "Ocultar botón de inspección en el marco del objetivo"
L["Hide the Inspect button from the Target Frame."] = "Oculta el botón de inspección en el marco del objetivo."
L["Hide Pet Frame on Target Frame"] = "Ocultar marco de mascota en el marco del objetivo"
L["Hide the Pet Portrait Frame from the Target Frame."] = "Oculta el marco del retrato de la mascota en el marco del objetivo."
L["Enable Enhanced Tooltips"] = "Activar sugerencias mejoradas"
L["Enable helpful DiceMaster term definitions next to trait tooltips."] = "Activa definiciones útiles de términos de DiceMaster junto a las sugerencias de los rasgos."
L["Enable Typing Tracker"] = "Activar rastreador de escritura"
L["Enable the Typing Tracker to alert you when group members are writing in say, emote, party, and raid."] = "Activa el rastreador de escritura para avisarte cuando los miembros del grupo están escribiendo en decir, emoción, grupo o banda."
L["Enable Combat Turn Tracker"] = "Activar rastreador de turnos de combate"
L["Displays the Turn Tracker frame when turn-based combat begins."] = "Muestra el marco del rastreador de turnos cuando comienza el combate por turnos."
L["Allow Sounds from Other Players"] = "Permitir sonidos de otros jugadores"
L["Allow other players to play sound effects."] = "Permite que otros jugadores reproduzcan efectos de sonido."
L["Allow Effects from Other Players"] = "Permitir efectos de otros jugadores"
L["Allow other players to send you fullscreen visual effects."] = "Permite que otros jugadores te envíen efectos visuales de pantalla completa."
L["Display Icons in Chat"] = "Mostrar iconos en el chat"
L["Display icons linked by players in public chat channels."] = "Muestra iconos enlazados por jugadores en los canales de chat públicos."
L["Enable autocomplete for emojis."] = "Activar autocompletado de emoticonos"
L["Display an autocomplete field above your chat bar when you start typing an emoji."] = "Muestra un campo de autocompletado sobre tu barra de chat cuando empiezas a escribir un emoticono."
L["Allow Roll Prompt Banners"] = "Permitir avisos de solicitud de dados"
L["Allow the group leader to send you visual prompts when it's your turn to roll."] = "Permite que el líder del grupo te envíe avisos visuales cuando es tu turno de tirar dados."
L["Display Group Leader's Map Nodes"] = "Mostrar los nodos del mapa del líder del grupo"
L["Display the group leader's map nodes when you're in a party or raid."] = "Muestra los nodos del mapa del líder del grupo cuando estás en un grupo o banda."
L["Enable D10 Mode"] = "Habilitar modo D10"
L["Enable Dice 10 mode."] = "Habilita el modo Dados 10."
L["Discord (click and copy the link)"] = "Discord (haz clic y copia el enlace)"
L["Link to the DiceMaster Discord. Select the text and press Ctrl+C to copy it."] = "Enlace al Discord de DiceMaster. Selecciona el texto y pulsa Ctrl+C para copiarlo."

-------------------------------------------------------------------------------
-- Config.lua → Health / Mana / Resource bars
-------------------------------------------------------------------------------
L["Configure the Health, Mana, and Resource Bars."] = "Configura las barras de Salud, Maná y Recursos."
L["Use Hearthstone Style Meters Instead"] = "Usar medidores estilo Hearthstone en su lugar"
L["Toggles whether to use the default health bar or the Hearthstone style health and mana meters.|n|n(The meters anchor to the PlayerFrame and TargetFrame by default.)"] = "Alterna entre usar la barra de salud predeterminada o los medidores de salud y maná estilo Hearthstone.|n|n(Los medidores se anclan al marco del jugador y al marco del objetivo por defecto.)"
L["Health Bar"] = "Barra de Salud"
L["Current Health"] = "Salud Actual"
L["The current amount of health that this character has."] = "La cantidad actual de salud que tiene este personaje."
L["Maximum Health"] = "Salud Máxima"
L["The maximum amount of health that this character can have."] = "La cantidad máxima de salud que puede tener este personaje."
L["Mana Bar"] = "Barra de Maná"
L["Current Mana"] = "Maná Actual"
L["The current amount of mana that this character has."] = "La cantidad actual de maná que tiene este personaje."
L["Maximum Mana"] = "Maná Máximo"
L["The maximum amount of mana that this character can have."] = "La cantidad máxima de maná que puede tener este personaje."
L["Resource Type"] = "Tipo de Recurso"
L["Choose the type of resource used by the mana bar."] = "Elige el tipo de recurso que usa la barra de maná."
L["Mana"] = "Maná"
L["Energy"] = "Energía"
L["Focus"] = "Enfoque"
L["Rage"] = "Furia"
L["Runic Power"] = "Poder Rúnico"
L["Enable Resource Bar"] = "Activar barra de recursos"
L["Enable usage of the custom resource bar."] = "Activa el uso de la barra de recursos personalizada."
L["Resource Bar"] = "Barra de Recursos"
L["Resource Name"] = "Nombre del Recurso"
L["Name of the custom resource. Examples: Holy Power, Rage, Adrenaline."] = "Nombre del recurso personalizado. Ejemplos: Poder Sagrado, Furia, Adrenalina."
L["Resource Color"] = "Color del Recurso"
L["Color of the custom resource bar."] = "Color de la barra de recursos personalizada."
L["Maximum Resource"] = "Recurso Máximo"
L["The maximum possible amount for this custom resource."] = "La cantidad máxima posible para este recurso personalizado."
L["The maximum amount of resource that this character can accumulate."] = "La cantidad máxima de recurso que puede acumular este personaje."
L["Resource Description"] = "Descripción del Recurso"
L["A description for the custom resource bar tooltip."] = "Una descripción para la sugerencia de la barra de recursos personalizada."
L["Resource Bar Skin"] = "Aspecto de la barra de recursos"
L["Custom skin for the custom resource bar."] = "Aspecto personalizado para la barra de recursos."
L["Flash When Resource Bar is Full"] = "Parpadear cuando la barra de recursos esté llena"
L["Toggle whether the custom resource bar flashes when filled."] = "Activa o desactiva el parpadeo de la barra de recursos personalizada cuando se llena."
L["Anchor Below Health Bar"] = "Anclar debajo de la barra de salud"
L["Move your custom resource bar so that it's positioned beneath your health bar."] = "Mueve tu barra de recursos personalizada para que se posicione debajo de tu barra de salud."

-------------------------------------------------------------------------------
-- Config.lua → Progress Bar
-------------------------------------------------------------------------------
L["Configure the Progress Bar frame."] = "Configura el marco de la barra de progreso."
L["Enable Progress Bar"] = "Activar barra de progreso"
L["Enable usage of a group-wide progress bar when you are leader."] = "Activa el uso de una barra de progreso para todo el grupo cuando eres el líder."
L["Dungeon Master Settings"] = "Configuración del Director de Mazmorra"
L["These settings only take effect when you are the leader of your party or raid."] = "Estas configuraciones solo surten efecto cuando eres el líder de tu grupo o banda."
L["Progress Bar Name"] = "Nombre de la barra de progreso"
L["Name of the progress bar. Examples: Morale, Sanity, Shield Integrity."] = "Nombre de la barra de progreso. Ejemplos: Moral, Cordura, Integridad del Escudo."
L["Progress Bar Color"] = "Color de la barra de progreso"
L["Color of the progress bar."] = "Color de la barra de progreso."
L["Progress Bar Skin"] = "Aspecto de la barra de progreso"
L["Custom skin for the progress bar."] = "Aspecto personalizado para la barra de progreso."
L["Progress Bar Description"] = "Descripción de la barra de progreso"
L["A description for the progress bar tooltip."] = "Una descripción para la sugerencia de la barra de progreso."
L["Default Value"] = "Valor por defecto"
L["The default value of the progress bar."] = "El valor por defecto de la barra de progreso."
L["Increase/Decrease Value"] = "Valor de aumento/disminución"
L["The amount that is added/removed when the progress bar is clicked."] = "La cantidad que se añade o elimina cuando se hace clic en la barra de progreso."
L["Progress Bar Scale"] = "Escala de la barra de progreso"
L["Change the size of the Progress Bar frame."] = "Cambia el tamaño del marco de la barra de progreso."

-------------------------------------------------------------------------------
-- Config.lua → Unit Frames
-------------------------------------------------------------------------------
L["Configure the unit frames module."] = "Configura el módulo de marcos de unidad."
L["Enable Unit Frames"] = "Activar marcos de unidad"
L["Display the custom unit frames panel."] = "Muestra el panel de marcos de unidad personalizados."
L["Unit Frames Scale"] = "Escala de los marcos de unidad"
L["Change the size of the unit frames panel."] = "Cambia el tamaño del panel de marcos de unidad."
L["Mini Frames"] = "Mini marcos"
L["Use the compact version of the unit frames."] = "Usa la versión compacta de los marcos de unidad."
L["Allow Buffs from Other Players"] = "Permitir buffs de otros jugadores"
L["Allow other players to apply buffs to your unit frames."] = "Permite que otros jugadores apliquen buffs a tus marcos de unidad."
L["Blood Effects"] = "Efectos de sangre"
L["Display blood effects on unit frames."] = "Muestra efectos de sangre en los marcos de unidad."
L["Talking Heads"] = "Cabezas parlantes"
L["Display talking heads for NPC dialogue."] = "Muestra cabezas parlantes para diálogos de PNJ."
L["Assistant Talking Heads"] = "Cabezas parlantes de asistentes"
L["Allow party assistants to use talking heads."] = "Permite que los asistentes del grupo usen cabezas parlantes."
L["Sound Effects"] = "Efectos de sonido"
L["Enable sound effects on unit frames."] = "Permite efectos de sonido en los marcos de unidad."

-------------------------------------------------------------------------------
-- Config.lua → Dungeon Manager
-------------------------------------------------------------------------------
L["Configure the Dungeon Manager settings."] = "Configura los ajustes del Director de Mazmorra."
L["Enable Dungeon Manager"] = "Activar Director de Mazmorra"
L["Enable the Dungeon Manager frame to keep track of your group's rolls, view group-wide notes, and access map nodes."] = "Activa el marco del Director de Mazmorra para seguir las tiradas de tu grupo, ver notas de todo el grupo y acceder a los nodos del mapa."
L["Dungeon Manager Scale"] = "Escala del Director de Mazmorra"
L["The size of the Dungeon Manager frame."] = "El tamaño del marco del Director de Mazmorra."
L["Details Frame Anchor"] = "Anclaje del marco de detalles"
L["Choose whether the Detail Frame is anchored on the left or right."] = "Elige si el marco de detalles está anclado a la izquierda o a la derecha."
L["Left"] = "Izquierda"
L["Right"] = "Derecha"
L["Toggle Key"] = "Tecla de alternar"
L["Set a keybinding for the Dungeon Manager frame."] = "Establece una tecla de acceso rápido para el marco del Director de Mazmorra."

-------------------------------------------------------------------------------
-- Config.lua → Tab names
-------------------------------------------------------------------------------
L["Health/Resource Bars"] = "Barras de salud y recursos"
L["Progress Bar"] = "Barra de progreso"
L["Dungeon Manager"] = "Administrador de mazmorras"
L["Unit Frames"] = "Marcos de unidad"
L["Profiles"] = "Perfiles"

-------------------------------------------------------------------------------
-- Config.lua → Shared symbol labels
-------------------------------------------------------------------------------
L["Orbs"] = "Orbes"
L["Burning Embers"] = "Brasas Ardientes"
L["Death Knight Runes"] = "Runas de Caballero de la Muerte"
L["Shadow Orbs"] = "Orbes de las Sombras"
L["Soul Shards"] = "Fragmentos de Alma"
L["Hourglasses"] = "Relojes de Arena"
L["Lightning"] = "Relámpago"
L["Air"] = "Aire"
L["Ice"] = "Hielo"
L["Fire"] = "Fuego"
L["Rock"] = "Roca"
L["Water"] = "Agua"
L["Meat"] = "Carne"
L["Undead Meat"] = "Carne No-muerta"
L["Generic"] = "Genérico"
L["Wood Plank"] = "Tabla de Madera"
L["Wood with Metal"] = "Madera con Metal"
L["Darkmoon"] = "Luna Negra"
L["Molten Rock"] = "Roca Fundida"
L["Alliance"] = "Alianza"
L["Horde"] = "Horda"
L["Amber"] = "Ámbar"
L["Druid"] = "Druida"
L["Fancy Pandaren"] = "Pandaren Elegante"
L["Mechanical"] = "Mecánico"
L["Map"] = "Mapa"
L["Inquisitor"] = "Inquisidor"
L["Bamboo"] = "Bambú"
L["Onyxia"] = "Onyxia"
L["Stone Design"] = "Diseño de Piedra"
L["Naaru"] = "Naaru"
L["Shadow Paladin"] = "Paladín de las Sombras"
L["Xavius Nightmare"] = "Pesadilla de Xavius"
L["Bullets"] = "Balas"
L["Azerite"] = "Azerita"
L["Cho'gall"] = "Cho'gall"
L["Fuel Gauge"] = "Indicador de Combustible"
L["Fel Corruption"] = "Corrupción Vil"
L["Murozond Hourglass"] = "Reloj de Arena de Murozond"
L["Pride"] = "Orgullo"
L["Rhyolith"] = "Rhyolith"
L["Ogre"] = "Ogro"
L["Meditation"] = "Meditación"
L["Jaina"] = "Jaina"
L["N'zoth"] = "N'zoth"
L["Arcane Sanctum"] = "Sanctum Arcano"
L["Warden"] = "Guardían"
L["Revendreth"] = "Revendreth"
L["Bastion"] = "Bastión"
L["Maldraxxus"] = "Maldraxxus"
L["Ardenweald"] = "Ardenweald"
L["Archer"] = "Arquero"
L["Phoenix"] = "Fénix"
L["Mana Gems"] = "Gemas de Maná"
L["Holy Power"] = "Poder Sagrado"
L["Balance"] = "Equilibrio"
L["Druid Seeds"] = "Semillas de Druida"
L["Chromatic Essence"] = "Esencia Cromática"
L["Pumpkin"] = "Calabaza"
L["Ethereal"] = "Etéreo"
L["Blood Mage"] = "Mago de Sangre"

L["Progress Bar"] = "Barra de progreso"
L["Custom Resource"] = "Recurso Personalizado"
L["Pet Name"] = "Nombre de la Mascota"
L["A custom group-wide resource bar that leaders can edit."] = "Una barra de recurso para todo el grupo que los líderes pueden editar."
L["Represents the amount of Custom Resource you have accumulated for certain traits."] = "Representa la cantidad de Recurso Personalizado que has acumulado para ciertos rasgos."
L["Dungeon Manager"] = "Administrador de mazmorras"

-- ============================================================
-- MinimapButton.lua
-- ============================================================
L["|cff00ff00Left-click|r to toggle panel."] = "|cff00ff00Clic izquierdo|r para mostrar u ocultar el panel."
L["|cff00ff00Right-click|r for configuration."] = "|cff00ff00Clic derecho|r para la configuración."
L["|cff00ff00Shift+Click|r to toggle unit frames."] = "|cff00ff00Mayús + clic|r para mostrar u ocultar los unit frames."
L["Shift+Click to toggle unit frames."] = "Mayús + clic para mostrar u ocultar los unit frames."

-- ============================================================
-- Comm.lua
-- ============================================================
L["Unknown"] = "Desconocido"
L[" says: %s"] = " dice: %s"

-- ============================================================================
-- Dice.lua — Roll formatting
-- ============================================================================
L["%s rolls %s"]         = "%s tira %s"
L["(%s) %s rolls %s"]    = "(%s) %s tira %s"
L["You roll %s"]         = "Tiras %s"
L["(%s) You roll %s"]    = "(%s) Tiras %s"
L[" and "]               = " y "
L[", and "]              = " y "
L[", "]                  = ", "
L[" = "]                 = " = "

-- ============================================================================
-- Dice.lua — Roll errors
-- ============================================================================
L["Invalid dice format."]                  = "Formato de dados no válido."
L["You must have at least one die."]       = "Debes tirar al menos un dado."
L["You can only roll 10 dice at a time."]  = "Solo puedes tirar 10 dados a la vez."
L["Must have at least two sides."]         = "Debe tener al menos dos caras."
L["Dice cannot have more than 13476 sides."] = "Los dados no pueden tener más de 13476 caras."

-- ============================================================================
-- Console.lua — /dice help
-- ============================================================================
L["- X is how many dice to roll."]                                                  = "- X es cuántos dados tiras."
L["- Y is how many sides those dice have."]                                         = "- Y es cuántas caras tienen esos dados."
L["- Z is how much you add/subtract from the total after adding up all the dice."]  = "- Z es cuánto sumas o restas al total tras sumar todos los dados."
-- ============================================================================
-- ChatLinks.lua — Tooltips and chat
-- ============================================================================
L["Roll"]                    = "Tirar"
L["An attempt"]              = "Un intento"
L["Unknown Item"]            = "Objeto desconocido"
L["Unknown Trait"]           = "Rasgo desconocido"

-- ============================================================================
-- RollTracker.lua — World Marker names
-- ============================================================================
L["|TInterface\\TargetingFrame\\UI-RaidTargetingIcon_1:14:14|t |cffffff00Gold|r World Marker"]   = "|TInterface\\TargetingFrame\\UI-RaidTargetingIcon_1:14:14|t |cffffff00Oro|r Marcador de mundo"
L["|TInterface\\TargetingFrame\\UI-RaidTargetingIcon_2:14:14|t |cffff7f3fOrange|r World Marker"] = "|TInterface\\TargetingFrame\\UI-RaidTargetingIcon_2:14:14|t |cffff7f3fNaranja|r Marcador de mundo"
L["|TInterface\\TargetingFrame\\UI-RaidTargetingIcon_3:14:14|t |cffa335eePurple|r World Marker"] = "|TInterface\\TargetingFrame\\UI-RaidTargetingIcon_3:14:14|t |cffa335eeMorado|r Marcador de mundo"
L["|TInterface\\TargetingFrame\\UI-RaidTargetingIcon_4:14:14|t |cff1eff00Green|r World Marker"]  = "|TInterface\\TargetingFrame\\UI-RaidTargetingIcon_4:14:14|t |cff1eff00Verde|r Marcador de mundo"
L["|TInterface\\TargetingFrame\\UI-RaidTargetingIcon_5:14:14|t |cffaaaaddSilver|r World Marker"] = "|TInterface\\TargetingFrame\\UI-RaidTargetingIcon_5:14:14|t |cffaaaaddPlata|r Marcador de mundo"
L["|TInterface\\TargetingFrame\\UI-RaidTargetingIcon_6:14:14|t |cff0070ddBlue|r World Marker"]   = "|TInterface\\TargetingFrame\\UI-RaidTargetingIcon_6:14:14|t |cff0070ddAzul|r Marcador de mundo"
L["|TInterface\\TargetingFrame\\UI-RaidTargetingIcon_7:14:14|t |cffff2020Red|r World Marker"]    = "|TInterface\\TargetingFrame\\UI-RaidTargetingIcon_7:14:14|t |cffff2020Rojo|r Marcador de mundo"
L["|TInterface\\TargetingFrame\\UI-RaidTargetingIcon_8:14:14|t |cffffffffWhite|r World Marker"]  = "|TInterface\\TargetingFrame\\UI-RaidTargetingIcon_8:14:14|t |cffffffffBlanco|r Marcador de mundo"

-- ============================================================================
-- Shared — Popup buttons (YES/NO)
-- ============================================================================
L["Yes"] = "Sí"
L["No"]  = "No"

-- ============================================================================
-- RollTracker.lua — StaticPopups
-- ============================================================================
L["Do you want to clear the notes field?"]                                                        = "¿Quieres borrar el campo de notas?"
L["Experience Amount:"]                                                                           = "Cantidad de experiencia:"
L["Level Amount:"]                                                                                = "Cantidad de niveles:"
L["Do you want to reset levels to 1? Players will lose all experience gained so far.|n|nType \"RESET\" into the field to confirm."] = "¿Quieres reiniciar los niveles a 1? Los jugadores perderán toda la experiencia obtenida hasta ahora.|n|nEscribe \"RESET\" en el campo para confirmar."
L["Invalid amount."]                                                                              = "Cantidad no válida."
L["Player not found."]                                                                            = "Jugador no encontrado."

-- ============================================================================
-- RollTracker.lua — Frame titles and texts
-- ============================================================================
L["Dungeon Manager"]  = "Pantalla de Narrador"
L["No Recent Rolls"]  = "Sin tiradas recientes"
L["XP: 0/100"]        = "EX: 0/100"
L["XP: %d/100"]       = "EX: %d/100"
L["No Map Nodes"]     = "Sin nodos de mapa"

-- ============================================================================
-- RollTracker.lua — Dropdowns
-- ============================================================================
L["|cFFffd100Select a Target:"]  = "|cFFffd100Selecciona un objetivo:"
L["No World Marker"]             = "Sin marcador de mundo"


-- ============================================================================
-- RollTracker.lua — PrintMessage
-- ============================================================================
L["%s has been deleted."]                        = "%s se ha eliminado."
L["New Map Node has been added to your map."]    = "Se ha añadido un nuevo nodo de mapa a tu mapa."
L["%s has been saved."]                          = "%s se ha guardado."

-- ============================================================================
-- RollBanner.lua — Timer intervals
-- ============================================================================
L["1 Minute"]   = "1 minuto"
L["2 Minutes"]  = "2 minutos"
L["3 Minutes"]  = "3 minutos"
L["5 Minutes"]  = "5 minutos"
L["10 Minutes"] = "10 minutos"
L["15 Minutes"] = "15 minutos"
L["30 Minutes"] = "30 minutos"
L["45 Minutes"] = "45 minutos"
L["1 Hour"]     = "1 hora"

-- ============================================================================
-- RollBanner.lua — Option placeholders
-- ============================================================================
L["Title"]       = "Título"
L["Description"] = "Descripción"

-- ============================================================================
-- RollBanner.lua — UIErrorsFrame
-- ============================================================================
L["A banner is already playing."]     = "Ya se está reproduciendo un banner."
L["Enter a title for this banner."]   = "Introduce un título para este banner."

-- ============================================================================
-- RollBanner.lua — Turn tracker
-- ============================================================================
L["Round %d"] = "Ronda %d"

-- ============================================================================
-- MoraleBar.lua — Turn tracker
-- ============================================================================

L["|cFF707070<Left/Right Click to Add/Remove %s>"] = "|cFF707070<Clic Izquierdo/Derecho para Añadir/Eliminar %s>"

-- ============================================================================
-- LootToast.lua — Turn tracker
-- ============================================================================

L["Binds when picked up"] = "Se liga al recogerlo"
L["Binds when equipped"]  = "Se liga al equiparlo"
L["Binds when used"]      = "Se liga al usarlo"
L["<Made by %s>"]         = "<Hecho por %s>"
L["New Recipe Learned!"]  = "¡Nueva receta aprendida!"
L["Inventory is full."]                            = "El inventario está lleno."
L["Item cannot be disenchanted"]                   = "El objeto no se puede desencantar"
L["You must be the group leader or a raid assistant to distribute items."] = "Debes ser el líder del grupo o asistente de banda para repartir objetos."
L["You are already dispensing that item."]         = "Ya estás repartiendo ese objeto."
L["You can only distribute four items at a time."] = "Solo puedes repartir cuatro objetos a la vez."
L["Error producing item."]                         = "Error al producir el objeto."
L["Need"]       = "Necesidad"
L["Greed"]      = "Codicia"
L["Disenchant"] = "Desencantar"
L["Pass"]       = "Pasar"

L["You receive item:"]                                = "Recibes el objeto:"
L["|cFF00aa00[Loot]: You passed on: %s"]              = "|cFF00aa00[Loot]: Has pasado en: %s"
L["|cFF00aa00[Loot]: You have selected %s for: %s"]   = "|cFF00aa00[Loot]: Has seleccionado %s para: %s"

L["|cFF00aa00[Loot]: Everyone passed on: %s"]          = "|cFF00aa00[Loot]: Todos han pasado en: %s"
L["|cFF00aa00[Loot]: You (%s - %d) Won: %s"]           = "|cFF00aa00[Loot]: Has ganado (%s - %d): %s"
L["|cFF00aa00[Loot]: %s (%s - %d) Won: %s"]            = "|cFF00aa00[Loot]: %s ha ganado (%s - %d): %s"
L["|cFF00aa00[Loot]: %s receives loot: %s"]            = "|cFF00aa00[Loot]: %s recibe el botín: %s"
L["|cFF00aa00[Loot]: You have rolled %s - %d for: %s"] = "|cFF00aa00[Loot]: Has tirado %s - %d para: %s"
L["|cFF00aa00[Loot]: %s passed on: %s"]                = "|cFF00aa00[Loot]: %s ha pasado en: %s"
L["|cFF00aa00[Loot]: %s rolled %s - %d for: %s"]      = "|cFF00aa00[Loot]: %s ha tirado %s - %d para: %s"
L["|cFF00aa00%s receives loot: %s"] = "|cFF00aa00%s recibe el botín: %s"

-- ============================================================
-- ColourPicker.lua
-- ============================================================
-- Categorías
L["Default"]  = "Predeterminados"
L["Class"]    = "Clases"
L["Quality"]  = "Calidades"

-- Colores genéricos
L["Red"]    = "Rojo"
L["Orange"] = "Naranja"
L["Yellow"] = "Amarillo"
L["Green"]  = "Verde"
L["Blue"]   = "Azul"
L["Purple"] = "Morado"
L["White"]  = "Blanco"
L["Black"]  = "Negro"

-- Clases
L["Death Knight"] = "Caballero de la Muerte"
L["Demon Hunter"] = "Cazador de Demonios"
L["Druid"]        = "Druida"
L["Hunter"]       = "Cazador"
L["Mage"]         = "Mago"
L["Monk"]         = "Monje"
L["Paladin"]      = "Paladín"
L["Priest"]       = "Sacerdote"
L["Rogue"]        = "Pícaro"
L["Shaman"]       = "Chamán"
L["Warlock"]      = "Brujo"
L["Warrior"]      = "Guerrero"

-- Calidades
L["Poor"]      = "Pobre"
L["Common"]    = "Común"
L["Uncommon"]  = "Poco común"
L["Rare"]      = "Raro"
L["Epic"]      = "Épico"
L["Legendary"] = "Legendario"
L["Artifact"]  = "Artefacto"
L["Heirloom"]  = "Reliquia"

-- UI
L["Select a Preset Colour"] = "Selecciona un color ..."

L["Colours"]        = "Colores"
L["Select Colour"]  = "Seleccionar color"

-- ============================================================
-- TraitEditor.lua — StaticPopupDialogs
-- ============================================================
L["Are you sure you want to remove this item from your shop?"] = "¿Seguro que quieres eliminar este objeto de tu tienda?"
L["Amount to restock:"]                                          = "Cantidad a reabastecer:"
L["Copy the following import code:"]                             = "Copia el siguiente código de importación:"
L["Paste an import code into the field below and select 'Import' to import the trait.|n|nThis will overwrite your currently selected trait!"] = "Pega un código de importación en el campo inferior y selecciona 'Importar' para importar el rasgo.|n|n¡Esto sobrescribirá tu rasgo seleccionado actualmente!"
L["Paste an import code into the field below and select 'Import' to import the item."] = "Pega un código de importación en el campo inferior y selecciona 'Importar' para importar el objeto."
L["Are you sure you want to delete this trait?"]                 = "¿Seguro que quieres eliminar este rasgo?"
L["Do you want to unlearn %s, and lose all proficiency in this skill?"] = "¿Quieres desaprender %s y perder toda la competencia en esta habilidad?"
L["Import"]                                                       = "Importar"
L["Unlearn"]                                                      = "Desaprender"
L["Invalid import code."]                                         = "Código de importación no válido."
L["Corrupt trait data found. Unable to import code."]             = "Se han encontrado datos de rasgo corruptos. No se puede importar el código."
L["Corrupt item data found. Unable to import code."]              = "Se han encontrado datos de objeto corruptos. No se puede importar el código."
L["|T%s:16|t %s has been imported."]                              = "|T%s:16|t %s se ha importado."
L["%s has been imported."]                                        = "%s se ha importado."
L["|T%s:16|t %s has been deleted."]                               = "|T%s:16|t %s se ha eliminado."
L["|cFFFFFF00You have unlearned %s."]                             = "|cFFFFFF00Has desaprendido %s."
-- ============================================================
-- TraitEditor.lua — Tutoriales
-- ============================================================
L["Left click on a trait to begin editing."] = "Haz clic izquierdo en un rasgo para empezar a editarlo."
L["You can choose a custom name, icon, description, and more for your trait in the Trait Editor."] = "Puedes elegir un nombre, icono, descripción y más personalizados para tu rasgo en el Editor de Rasgos."
L["The format bar allows you to insert icons, colours, DiceMaster terms, and more into your trait's description."] = "La barra de formato te permite insertar iconos, colores, términos de DiceMaster y más en la descripción de tu rasgo."
L["Toggle whether or not your pet is active, enabling the Pet Frame and allowing other players to inspect your pet on the Inspect Frame.|n|nUse the buttons on the top bar to choose a model for your pet or adjust its scale."] = "Activa o desactiva tu mascota, habilitando el marco de mascota y permitiendo que otros jugadores la inspeccionen en el marco de inspección.|n|nUsa los botones de la barra superior para elegir un modelo o ajustar su escala."
L["You can choose a custom name, icon, and more for your pet.|n|nThe Pet Item slot is used for items with the 'Learn Pet' action."] = "Puedes elegir un nombre, icono y más personalizados para tu mascota.|n|nLa ranura de objeto de mascota se usa para objetos con la acción 'Aprender mascota'."
L["Your custom skills and current progress in those skills are listed here, representing your character's proficiency in a particular area.|n|nYou can learn new skills from custom items, or raise a skill's level by crafting or harvesting custom items of the appropriate level."] = "Tus habilidades personalizadas y el progreso actual en ellas se muestran aquí, representando la competencia de tu personaje en un área concreta.|n|nPuedes aprender nuevas habilidades con objetos personalizados, o subir el nivel de una habilidad fabricando o recolectando objetos personalizados del nivel adecuado."
L["Selecting a skill from the list above will display more details about the skill here.|n|nClick the 'Unlearn' button if you wish to unlearn the selected skill."] = "Al seleccionar una habilidad de la lista superior se mostrarán más detalles aquí.|n|nPulsa el botón 'Desaprender' si quieres olvidar la habilidad seleccionada."
L["Click the 'New' button to create a new custom skill."] = "Pulsa el botón 'Nuevo' para crear una nueva habilidad personalizada."
L["Choose your character's alignment from the dropdown menu.|n|nYou can export your skills with a unique import code which you can share with other players."] = "Elige el alineamiento de tu personaje en el menú desplegable.|n|nPuedes exportar tus habilidades con un código de importación único que puedes compartir con otros jugadores."
L["Use the search box to search for specific items based on keyword.|n|nClick the Clean Up Inventory button to clean up your bags. It auto-sorts and moves items out of the way to make room for new items."] = "Usa el cuadro de búsqueda para encontrar objetos por palabra clave.|n|nPulsa el botón Limpiar inventario para ordenar tus bolsas. Coloca y mueve objetos automáticamente para hacer sitio a nuevos objetos."
L["Custom items occupy a slot in your inventory, up to a maximum of 42 slots."] = "Los objetos personalizados ocupan una ranura de tu inventario, hasta un máximo de 42 ranuras."
L["You can create, edit, copy, inspect, or sell items from your inventory by using these buttons.|n|nDungeon Masters can use the Loot button to allow group members to roll on an item in their inventory.|n|nYou can also export an item with a unique import code which other players can use to import the item."] = "Puedes crear, editar, copiar, inspeccionar o vender objetos de tu inventario usando estos botones.|n|nLos Directores de Mazmorra pueden usar el botón Botín para permitir que los miembros del grupo tiren dados por un objeto de su inventario.|n|nTambién puedes exportar un objeto con un código de importación único que otros jugadores pueden usar para importarlo."
L["You can learn to craft items and gain proficiency in a custom skill using the Craft button.|n|nRecipes must be learned from a custom item before they show up in your recipe list."] = "Puedes aprender a fabricar objetos y ganar competencia en una habilidad personalizada usando el botón Fabricar.|n|nLas recetas deben aprenderse de un objeto personalizado antes de aparecer en tu lista de recetas."
L["Right click the currency frame to change which of your custom currencies is displayed, or create a new one."] = "Haz clic derecho en el marco de divisas para cambiar cuál de tus divisas personalizadas se muestra, o crear una nueva."
L["|n|nCharacters with the Enchanting skill can use the Disenchant button to extract Arcane Dust from Disenchantable items."] = "|n|nLos personajes con la habilidad de Encantamiento pueden usar el botón Desencantar para extraer Polvo Arcano de objetos desencantables."
L["Toggle whether or not your shop is active, allowing other players to access your shop from the Inspect Frame."] = "Activa o desactiva tu tienda, permitiendo que otros jugadores accedan a ella desde el marco de inspección."
L["You can add items to your shop from your inventory, enabling other players to browse and purchase them using a custom currency."] = "Puedes añadir objetos a tu tienda desde tu inventario, permitiendo que otros jugadores los vean y los compren usando una divisa personalizada."
L["Use the search box to search for specific items based on keyword.|n|nClick the Clean Up Bank button to clean up your bank. It auto-sorts and moves items out of the way to make room for new items."] = "Usa el cuadro de búsqueda para encontrar objetos por palabra clave.|n|nPulsa el botón Limpiar banco para ordenar tu banco. Coloca y mueve objetos automáticamente para hacer sitio a nuevos objetos."
L["Custom items stored in your bank can be accessed by all of your characters.|n|nYou can deposit items into your bank from your inventory, or withdraw them by right clicking them."] = "Todos tus personajes pueden acceder a los objetos personalizados guardados en tu banco.|n|nPuedes depositar objetos en tu banco desde tu inventario, o retirarlos haciendo clic derecho sobre ellos."
L["You can export an item with a unique import code which you can share with other players."] = "Puedes exportar un objeto con un código de importación único que puedes compartir con otros jugadores."
-- >>> l10n esES — TraitEditor.lua bloques 3-6
L["Currencies"] = "Monedas"
L["|cFF00FF00Create New...|r"] = "|cFF00FF00Crear nueva...|r"
L["A universal currency used by all DiceMaster users."] = "Una moneda universal usada por todos los usuarios de DiceMaster."
L["|nTotal: |cFFFFFFFF%s|r"] = "|nTotal: |cFFFFFFFF%s|r"
L["<Right-click to disable>"] = "<Click derecho para inhabilitar>"
L["<Alt+Right-click to delete>"] = "<Alt+Click derecho para borrar>"
L["<Right-click to change>"] = "<Click derecho para cambiar>"
L["Unhappy"] = "Infeliz"
L["Content"] = "Contento"
L["Happy"] = "Feliz"
L["Your pet is unhappy."] = "Tu mascota es infeliz."
L["Your pet is contented, but not really happy."] = "Tu mascota está contenta, pero no del todo feliz."
L["Your pet is perfectly happy with you and the world."] = "Tu mascota está perfectamente feliz contigo y con el mundo."
L["|n|cFFFFFFFFHungry|r|nYour pet is hungry and requires food!|n"] = "|n|cFFFFFFFFHambrienta|r|n¡Tu mascota tiene hambre y necesita comida!|n"
L["|n|cFFFFFFFFStinky|r|nYour pet is filthy and needs a bath!|n"] = "|n|cFFFFFFFFApestosa|r|n¡Tu mascota está sucia y necesita un baño!|n"
L["|n|cFFFFFFFFSleepy|r|nYour pet is exhausted and requires rest!|n"] = "|n|cFFFFFFFFSomnolienta|r|n¡Tu mascota está agotada y necesita descansar!|n"
L["|n|cFFFFFFFFDirty|r|nYour pet stables could use a good cleaning!|n"] = "|n|cFFFFFFFFSucia|r|n¡Los establos de tu mascota necesitan una buena limpieza!|n"
L["|n|cFFFFFFFFCold|r|nYour pet needs warmth in order to hatch!|n"] = "|n|cFFFFFFFFFría|r|n¡Tu mascota necesita calor para eclosionar!|n"
L["Your pet"] = "Tu mascota"
L["Your pet doesn't like that food."] = "A tu mascota no le gusta esa comida."
L["You can't do that."] = "No puedes hacer eso."
L["|cFF8080ffYou have gained %d new skills.|r"] = "|cFF8080ffHas ganado %d nuevas habilidades.|r"
L["|cFF8080ffYou have gained the %s skill.|r"] = "|cFF8080ffHas ganado la habilidad %s.|r"
L["Export Skills"] = "Exportar habilidades"
L["Invalid import code."] = "Código de importación inválido."
L["Invalid import code. 2"] = "Código de importación inválido. 2"
L["Skill Templates"] = "Plantillas de habilidades"
L["Default Template"] = "Plantilla por defecto"
L["Default"] = "Por defecto"
L["The standard template of attributes, skills, and saving throws."] = "La plantilla estándar de atributos, habilidades y tiradas de salvación."
L["WoW JdR Template"] = "Plantilla WoW JdR"
L["WoW JdR"] = "WoW JdR"
L["The WoW JdR template of attributes, skills, and saving throws."] = "La plantilla de WoW JdR de atributos, habilidades y tiradas de salvación."
L["Import"] = "Importar"
L["Use a code to import a sheet made by another player."] = "Usa un código para importar una plantilla hecha por otro jugador."
L["Alignments"] = "Alineamientos"
L["|n|nExamples: |cFFFFFFFF"] = "|n|nEjemplos: |cFFFFFFFF"
L["(No Alignment)"] = "(Sin Alineamiento)"
L["This character has no alignment."] = "Este personaje no tiene alineamiento."
L["|cFFFFFFFFRank "] = "|cFFFFFFFFRango "
L["|cFFFFD100Modifiers:|r "] = "|cFFFFD100Modificadores:|r "
L["|cFFFFD100Creator:|r "] = "|cFFFFD100Creador:|r "
L["Effects"] = "Efectos"
L["Combat Actions"] = "Acciones de combate"
L["Conditions"] = "Condiciones"
L["Skills"] = "Habilidades"
L["Saving Throws"] = "Tiradas de salvación"
L["Apply Buff"] = "Aplicar mejora"
L["Remove Buff"] = "Eliminar mejora"
L["Play Sound"] = "Reproducir sonido"
L["Roll Dice"] = "Tirar dados"
L["Visual Effect"] = "Efecto visual"
L["Run Script"] = "Ejecutar script"
L["Secret"] = "Secreto"
L["Loot Options"] = "Opciones de botín"
L["Master Loot"] = "Botín dirigido"
L["Distribute an item to a specific player."] = "Distribuye un objeto a un jugador concreto."
L["Group Loot"] = "Botín de grupo"
L["Allow all group members to roll Need, Greed, Disenchant, or Pass on an item."] = "Permite a todos los miembros del grupo tirar Necesidad, Codicia, Desencantar o Pasar por un objeto."
L["Allow all group members to roll Need, Greed, or Pass on an item."] = "Permite a todos los miembros del grupo tirar Necesidad, Codicia o Pasar por un objeto."
L["Traits"] = "Rasgos"
L["Export Code"] = "Exportar código"
L["Import Code"] = "Código de importación"
L["Import Skills"] = "Importar habilidades"
L["Close"] = "Cerrar"
L["Set all skill ranks to 0."] = "Fijar todos los niveles de habilidad a 0."
L["Locked Trait"] = "Rasgo bloqueado"
L["This trait has been approved by an officer and is locked. Unlocking it will also remove the officer's approval."] = "Este rasgo ha sido aprobado por un oficial y está bloqueado. Desbloquearlo también eliminará la aprobación del oficial."
L["<Right-click to unlock>"] = "<Click derecho para desbloquear>"
L["|cFFFFD100Click to select an icon for this trait."] = "|cFFFFD100Click para seleccionar un ícono para este rasgo."
L["|cFFFFD100Click to change the number of uses for this trait."] = "|cFFFFD100Click para cambiar el número de usos de este rasgo."
L["|cFFFFD100Click to change the range of this trait."] = "|cFFFFD100Click para cambiar el rango de este rasgo."
L["|cFFFFD100Click to change the cast time of this trait."] = "|cFFFFD100Click para cambiar el tiempo de lanzamiento de este rasgo."
L["|cFFFFD100Click to change the cooldown of this trait."] = "|cFFFFD100Click para cambiar el tiempo de enfriamiento de este rasgo."
L["Edit Pet"] = "Editar mascota"
L["Enable Pet"] = "Activar mascota"
L["Warm"] = "Calentar"
L["Keep your egg warm until it's ready to hatch!"] = "¡Mantén tu huevo caliente hasta que esté listo para eclosionar!"
L["Feed"] = "Alimentar"
L["Feed your pet an item from your inventory."] = "Alimenta a tu mascota con un objeto de tu inventario."
L["That ability is not ready yet."] = "Esa habilidad aún no está lista."
L["|cFFFFD100Click to select an icon for your pet."] = "|cFFFFD100Click para seleccionar un ícono para tu mascota."
L["Pet Item"] = "Objeto de mascota"
L["Rotate Left"] = "Rotar a la izquierda"
L["Rotates the model to the left."] = "Rota el modelo a la izquierda."
L["Rotate Right"] = "Rotar a la derecha"
L["Rotates the model to the right."] = "Rota el modelo a la derecha."
L["Select Model"] = "Seleccionar modelo"
L["Choose a model for your pet."] = "Elige un modelo para tu mascota."
L["Increase Scale"] = "Aumentar escala"
L["Increase the scale of your pet's model."] = "Aumenta la escala del modelo de tu mascota."
L["Decrease Scale"] = "Reducir escala"
L["Decrease the scale of your pet's model."] = "Reduce la escala del modelo de tu mascota."
L["Export"] = "Exportar"
L["Create an import code to share your skills with other players."] = "Crea un código de importación para compartir tus habilidades con otros jugadores."
L["ALL"] = "TODAS"
L["|cFFFFD100Click to select an icon for this skill."] = "|cFFFFD100Click para seleccionar un ícono para esta habilidad."
L["Increase %s"] = "Aumentar %s"
L["Decrease %s"] = "Reducir %s"
L["Unlearn %s"] = "Desaprender %s"
L["<Hold Shift to Increase Max>"] = "<Mantén Shift para aumentar el máximo>"
L["<Hold Shift to Decrease Max>"] = "<Mantén Shift para reducir el máximo>"
L["NEW"] = "NUEVA"
L["Edit"] = "Editar"
L["Disenchant"] = "Desencantar"
L["1.5 sec cast"] = "Lanzamiento de 1.5 s"
L["Extracts the magical element(s) from good quality (Green) or better items. The targeted item will be DESTROYED and will not be retrievable."] = "Extrae los elementos mágicos de objetos de calidad buena (verde) o superior. El objeto objetivo será DESTRUIDO y no podrá recuperarse."
L["Milling"] = "Moler"
L["Crush 5 herbs to create pigments for making inks. This will destroy the herbs in the process."] = "Tritura 5 hierbas para crear pigmentos con los que fabricar tintas. Las hierbas serán destruidas en el proceso."
L["Page"] = "Página"
L["Edit Shop"] = "Editar tienda"
L["Enable Shop"] = "Activar tienda"
L["PREV"] = "ANT"
L["NEXT"] = "SIG"
-- X4 — NoSkillsWarning + PetFrame
L["No Skills"] = "Sin habilidades"
L["You don't have any skills yet. Choose a template below or click 'New' to get started:"] = "No tienes ninguna habilidad todavía. Elige una plantilla de abajo o haz clic en 'Nueva' para empezar:"
L["Choose Template"] = "Elegir plantilla"
L["Edit Pet"] = "Editar mascota"
L["Enable Pet"] = "Activar mascota"
L["Warm"] = "Calentar"
L["Keep your egg warm until it's ready to hatch!"] = "¡Mantén tu huevo caliente hasta que esté listo para eclosionar!"
L["Feed"] = "Alimentar"
L["Feed your pet an item from your inventory."] = "Alimenta a tu mascota con un objeto de tu inventario."
L["That ability is not ready yet."] = "Esa habilidad aún no está lista."
L["|cFFFFD100Click to select an icon for your pet."] = "|cFFFFD100Click para seleccionar un ícono para tu mascota."
L["Pet Item"] = "Objeto de mascota"
L["Rotate Left"] = "Rotar a la izquierda"
L["Rotates the model to the left."] = "Rota el modelo a la izquierda."
L["Rotate Right"] = "Rotar a la derecha"
L["Rotates the model to the right."] = "Rota el modelo a la derecha."
L["Select Model"] = "Seleccionar modelo"
L["Choose a model for your pet."] = "Elige un modelo para tu mascota."
L["Increase Scale"] = "Aumentar escala"
L["Increase the scale of your pet's model."] = "Aumenta la escala del modelo de tu mascota."
L["Decrease Scale"] = "Reducir escala"
L["Decrease the scale of your pet's model."] = "Reduce la escala del modelo de tu mascota."

-- X5 — SkillFrame
L["Export"] = "Exportar"
L["Create an import code to share your skills with other players."] = "Crea un código de importación para compartir tus habilidades con otros jugadores."
L["ALL"] = "TODAS"
L["|cFFFFD100Click to select an icon for this skill."] = "|cFFFFD100Click para seleccionar un ícono para esta habilidad."
L["Increase %s"] = "Aumentar %s"
L["Decrease %s"] = "Reducir %s"
L["Unlearn %s"] = "Desaprender %s"
L["<Hold Shift to Increase Max>"] = "<Mantén Shift para aumentar el máximo>"
L["<Hold Shift to Decrease Max>"] = "<Mantén Shift para reducir el máximo>"
L["NEW"] = "NUEVA"
L["Edit"] = "Editar"

-- X6a — inventoryFrame
L["Disenchant"] = "Desencantar"
L["1.5 sec cast"] = "Lanzamiento de 1.5 s"
L["Extracts the magical element(s) from good quality (Green) or better items. The targeted item will be DESTROYED and will not be retrievable."] = "Extrae los elementos mágicos de objetos de calidad buena (verde) o superior. El objeto objetivo será DESTRUIDO y no podrá recuperarse."
L["Milling"] = "Moler"
L["Crush 5 herbs to create pigments for making inks. This will destroy the herbs in the process."] = "Tritura 5 hierbas para crear pigmentos con los que fabricar tintas. Las hierbas serán destruidas en el proceso."

-- X6b — shopFrame
L["Page"] = "Página"
L["Edit Shop"] = "Editar tienda"
L["Enable Shop"] = "Activar tienda"
L["PREV"] = "ANT"
L["NEXT"] = "SIG"

-- X6c — bankFrame
L["Generate an export code for an item."] = "Genera un código de exportación para un objeto."
L["Clean Up Bank"] = "Limpiar banco"
L["Auto-sorts your bank to make room for new items."] = "Ordena automáticamente tu banco para hacer sitio a nuevos objetos."
L["Clear"] = "Limpiar"
L["Reset this trait to default."] = "Restablece este rasgo a su estado por defecto."
L["Color"] = "Color"
L["Insert a text color tag."] = "Inserta una etiqueta de color de texto."
L["The color tag uses this format:|n|n|cFF808080<color=|cFFFF0000RR|r|cFF00FF00GG|r|cFF0000FFBB|r>|rtext|cFF808080</color>|r|n|nEach pair of digits represents a color value as a hexidecimal number."] = "La etiqueta de color usa este formato:|n|n|cFF808080<color=|cFFFF0000RR|r|cFF00FF00GG|r|cFF0000FFBB|r>|rtexto|cFF808080</color>|r|n|nCada par de dígitos representa un valor de color en hexadecimal."
L["Image"] = "Imagen"
L["Insert an inline icon tag."] = "Inserta una etiqueta de icono en línea."
L["The image tag uses this format:|n|n|cFF808080<img>|rpath|cFF808080</img>|r|n|nThe path provided must be the full file name of the image."] = "La etiqueta de imagen usa este formato:|n|n|cFF808080<img>|rruta|cFF808080</img>|r|n|nLa ruta indicada debe ser el nombre de archivo completo de la imagen."
L["List"] = "Lista"
L["Insert a bulleted list."] = "Inserta una lista con viñetas."
L["|n<*> Item 1|n<*> Item 2|n<*> Item 3"] = "|n<*> Objeto 1|n<*> Objeto 2|n<*> Objeto 3"
L["Rule"] = "Regla"
L["Insert a horizontal line rule."] = "Inserta una regla horizontal."
L["DiceMaster Term"] = "Término de DiceMaster"
L["Insert an official DiceMaster term."] = "Inserta un término oficial de DiceMaster."
L["DiceMaster terms wrapped in |cFF808080<>|r brackets will display their definitions next to the tooltip for players with Enhanced Tooltips enabled."] = "Los términos de DiceMaster entre corchetes |cFF808080<>|r mostrarán sus definiciones junto a la sugerencia para los jugadores con las sugerencias mejoradas activadas."
L["Health Icon"] = "Icono de salud"
L["Insert a health icon."] = "Inserta un icono de salud."
L["Armor Icon"] = "Icono de armadura"
L["Insert an armor icon."] = "Inserta un icono de armadura."
L["Use a code to import a trait made by another player."] = "Usa un código para importar un rasgo hecho por otro jugador."
L["Create an import code to share this trait with other players."] = "Crea un código de importación para compartir este rasgo con otros jugadores."
L["|cFFFFD100Click to edit this trait's effects."] = "|cFFFFD100Click para editar los efectos de este rasgo."
L["|cFFFFD100Click to edit this trait's effects."] = "|cFFFFD100Click para editar los efectos de este rasgo."
L["Pet"] = "Mascota"
L["Skills"] = "Habilidades"
L["Inventory"] = "Inventario"
L["Shop"] = "Tienda"
L["Bank"] = "Banco"
L["<Right-click to change the icon>"] = "<Click derecho para cambiar el ícono>"