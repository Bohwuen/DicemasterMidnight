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
L["Unknown Trait"] = "Rasgo desconocido"
