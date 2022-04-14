local config = {

	interfaceName = "Extra Attributes",

	chances = {
		[0] = {chance = 100},
		[1] = {downLvl = 0, chance = 100},
		[2] = {downLvl =1, chance = 90},
		[3] = {downLvl =2, chance = 80},
		[4] = {downLvl =3, chance = 70},
		[5] = {downLvl =4, chance = 60},
		[6] = {downLvl =5, chance = 50},
		[7] = {downLvl =6, chance = 40},
		[8] = {downLvl =7, chance = 30},
		[9] = {downLvl =8, chance = 20},
		[10] = {downLvl = 9}
	},

	downgradeEnabled = false,
	debugMode = false,

	values = {
		--[[[number] = {
			chance=number,
			effect=number,
			upgrade={
				["armor"] = number,
				["defense"] = number,
				["extraDefense"] = number,
				["attack"] = number,
				["wandDamage"] = number,
				["skills"] = number,
				["specialSkills"] = number,
				["stats"] = number,
				["maxHealth"] = number,
				["maxMana"] = number,
				["elementDamage"] = number,
				>>>> Do you want a specific attribute? <<<<
				example:
				["fist fighting"] = 10,
			}
		},]]--
		--.............START.............--
		[2178] = { -- Mind Stone
			chance = 100,
			minRequireLvl = 0,
			maxRequireLvl = 10,
			breakWhenFail = false,
			breakLvl = 10,
			effect = CONST_ME_FIREWORK_YELLOW,
			upgrade = {
				["armor"] = 2,
				["defense"] = 2,
				["extraDefense"] = 1,
				["attack"] = 2,
				["wandDamage"] = 10,
				["skills"] = 2,
				["specialSkills"] = 1,
				["stats"] = 2,
				["maxHealth"] = 50,
				["maxMana"] = 50,
				["elementDamage"] = 25
			}
		},
		[2174] = { -- Strange Simbol
			chance = 50,
			minRequireLvl = 5,
			maxRequireLvl = 10,
			breakWhenFail = false,
			effect = CONST_ME_FIREWORK_BLUE,
			upgrade = {
				["armor"] = 3,
				["defense"] = 3,
				["extraDefense"] = 2,
				["attack"] = 3,
				["wandDamage"] = 20,
				["skills"] = 3,
				["specialSkills"] = 2,
				["stats"] = 3,
				["maxHealth"] = 100,
				["maxMana"] = 100,
				["elementDamage"] = 50
			}
		}
		--..............END..............--
	}

}

--------------------------------------------------------------------------------------
-- EN: Modifying things below can be dangerous, be careful
-- ES: Modificar las cosas a continuacion puede ser peligroso, tenga cuidado
-- BR: Modificar as coisas abaixo pode ser perigoso, tome cuidado
--------------------------------------------------------------------------------------

local conditions = {
	["fist fighting"] = {
		abilitie = {
			type = "skills",
			index = SKILL_FIST
		},

		condition = {
			id = CONDITIONID_DEFAULT,
			subId = 1000,
			type = CONDITION_ATTRIBUTES,
			param = CONDITION_PARAM_SKILL_FIST,
			ticks = -1
		}
	},
	["club fighting"] = {
		abilitie = {
			type = "skills",
			index = SKILL_CLUB
		},

		condition = {
			id = CONDITIONID_DEFAULT,
			subId = 1001,
			type = CONDITION_ATTRIBUTES,
			param = CONDITION_PARAM_SKILL_CLUB,
			ticks = -1
		}
	},
	["sword fighting"] = {
		abilitie = {
			type = "skills",
			index = SKILL_SWORD
		},

		condition = {
			id = CONDITIONID_DEFAULT,
			subId = 1002,
			type = CONDITION_ATTRIBUTES,
			param = CONDITION_PARAM_SKILL_SWORD,
			ticks = -1
		}
	},
	["axe fighting"] = {
		abilitie = {
			type = "skills",
			index = SKILL_AXE
		},

		condition = {
			id = CONDITIONID_DEFAULT,
			subId = 1003,
			type = CONDITION_ATTRIBUTES,
			param = CONDITION_PARAM_SKILL_AXE,
			ticks = -1
		}
	},
	["distance fighting"] = {
		abilitie = {
			type = "skills",
			index = SKILL_DISTANCE
		},

		condition = {
			id = CONDITIONID_DEFAULT,
			subId = 1004,
			type = CONDITION_ATTRIBUTES,
			param = CONDITION_PARAM_SKILL_DISTANCE,
			ticks = -1
		}
	},
	["shielding"] = {
		abilitie = {
			type = "skills",
			index = SKILL_SHIELD
		},

		condition = {
			id = CONDITIONID_DEFAULT,
			subId = 1005,
			type = CONDITION_ATTRIBUTES,
			param = CONDITION_PARAM_SKILL_SHIELD,
			ticks = -1
		}
	},
	["fishing"] = {
		abilitie = {
			type = "skills",
			index = SKILL_FISHING
		},

		condition = {
			id = CONDITIONID_DEFAULT,
			subId = 1006,
			type = CONDITION_ATTRIBUTES,
			param = CONDITION_PARAM_SKILL_FISHING,
			ticks = -1
		}
	},
	["max health"] = {
		abilitie = {
			type = "stats",
			index = STAT_MAXHITPOINTS
		},

		condition = {
			id = CONDITIONID_DEFAULT,
			subId = 1007,
			type = CONDITION_ATTRIBUTES,
			param = CONDITION_PARAM_STAT_MAXHITPOINTS,
			ticks = -1
		}
	},
	["max mana"] = {
		abilitie = {
			type = "stats",
			index = STAT_MAXMANAPOINTS
		},

		condition = {
			id = CONDITIONID_DEFAULT,
			subId = 1008,
			type = CONDITION_ATTRIBUTES,
			param = CONDITION_PARAM_STAT_MAXMANAPOINTS,
			ticks = -1
		}
	},
	["magic level"] = {
		abilitie = {
			type = "stats",
			index = STAT_MAGICPOINTS
		},

		condition = {
			id = CONDITIONID_DEFAULT,
			subId = 1009,
			type = CONDITION_ATTRIBUTES,
			param = CONDITION_PARAM_STAT_MAGICPOINTS,
			ticks = -1
		}
	},
	["reg health"] = {
		abilitie = {
			type = "healthGain"
		},

		condition = {
			id = CONDITIONID_DEFAULT,
			subId = 1010,
			type = CONDITION_ATTRIBUTES,
			param = CONDITION_PARAM_HEALTHGAIN,
			ticks = -1,
			healthTicks = 1000
		}
	},
	["reg mana"] = {
		abilitie = {
			type = "manaGain"
		},

		condition = {
			id = CONDITIONID_DEFAULT,
			subId = 1011,
			type = CONDITION_ATTRIBUTES,
			param = CONDITION_PARAM_MANAGAIN,
			ticks = -1,
			manaTicks = 1000
		}
	},
	["speed"] = {
		abilitie = {
			type = "speed"
		},

		condition = {
			id = CONDITIONID_DEFAULT,
			subId = 1011,
			type = CONDITION_ATTRIBUTES,
			param = CONDITION_PARAM_SPEED,
			ticks = -1
		}
	},
	["critical hit chance"] = {
		abilitie = {
			type = "specialSkills",
			index = SPECIALSKILL_CRITICALHITCHANCE
		},

		condition = {
			id = CONDITIONID_DEFAULT,
			subId = 1012,
			type = CONDITION_ATTRIBUTES,
			param = CONDITION_PARAM_SPECIALSKILL_CRITICALHITCHANCE,
			ticks = -1
		}
	},
	["critical extra damage"] = {
		abilitie = {
			type = "specialSkills",
			index = SPECIALSKILL_CRITICALHITAMOUNT
		},

		condition = {
			id = CONDITIONID_DEFAULT,
			subId = 1013,
			type = CONDITION_ATTRIBUTES,
			param = CONDITION_PARAM_SPECIALSKILL_CRITICALHITAMOUNT,
			ticks = -1
		}
	},
	["hitpoints leech chance"] = {
		abilitie = {
			type = "specialSkills",
			index = SPECIALSKILL_LIFELEECHCHANCE
		},

		condition = {
			id = CONDITIONID_DEFAULT,
			subId = 1014,
			type = CONDITION_ATTRIBUTES,
			param = CONDITION_PARAM_SPECIALSKILL_LIFELEECHCHANCE,
			ticks = -1
		}
	},
	["hitpoints leech amount"] = {
		abilitie = {
			type = "specialSkills",
			index = SPECIALSKILL_LIFELEECHAMOUNT
		},

		condition = {
			id = CONDITIONID_DEFAULT,
			subId = 1015,
			type = CONDITION_ATTRIBUTES,
			param = CONDITION_PARAM_SPECIALSKILL_LIFELEECHAMOUNT,
			ticks = -1
		}
	},
	["manapoints leech chance"] = {
		abilitie = {
			type = "specialSkills",
			index = SPECIALSKILL_MANALEECHCHANCE
		},

		condition = {
			id = CONDITIONID_DEFAULT,
			subId = 1016,
			type = CONDITION_ATTRIBUTES,
			param = CONDITION_PARAM_SPECIALSKILL_MANALEECHCHANCE,
			ticks = -1
		}
	},
	["mana points leech amount"] = {
		abilitie = {
			type = "specialSkills",
			index = SPECIALSKILL_MANALEECHAMOUNT
		},

		condition = {
			id = CONDITIONID_DEFAULT,
			subId = 1017,
			type = CONDITION_ATTRIBUTES,
			param = CONDITION_PARAM_SPECIALSKILL_MANALEECHAMOUNT,
			ticks = -1
		}
	}
}

local conditionCount = 0
for _, __ in pairs(conditions) do
	conditionCount = conditionCount +1
end

local function getPlayerWeapon(player)
	local weapon = player:getSlotItem(CONST_SLOT_LEFT)
	if not weapon or weapon:getType():getWeaponType() == WEAPON_NONE then
		weapon = player:getSlotItem(CONST_SLOT_RIGHT)
		if not weapon or weapon:getType():getWeaponType() == WEAPON_NONE then
			return
		end
	end

	return weapon
end

---@return number
local function getObjLevel(weapon)
	return weapon:getCustomAttribute("SarahWesker_Level") or 0
end

local function setObjLevel(weapon, level)
	return weapon:setCustomAttribute("SarahWesker_Level", level or 0)
end

---@return boolean
local function isValidObj(item)
	local iType = item:getType()
	local valid = iType:getWeaponType() ~= WEAPON_NONE or iType:getArmor() > 0 or iType:getDefense() > 0 or iType:getExtraDefense() > 0 or iType:getAttack() > 0
	if not valid then
		for index, abilitie in pairs(iType:getAbilities()) do
			local abilitieType = type(abilitie)
			if abilitieType == "table" then
				for index2, abilitie2 in pairs(abilitie) do
					if abilitie2 ~= 0 then
						return true
					end
				end
			elseif abilitieType == "number" and abilitie ~= 0 then
				return true
			end
		end

		return false
	end

	return true
end

local function isWeapon(item)
	return item:getType():getWeaponType() ~= WEAPON_NONE
end

local function isWand(item)
	return item:getType():getWeaponType() == WEAPON_WAND
end

local function isElemental(item)
	return item:getType():getAbilities().elementDamage > 0
end

local function setAttribute(target, attr, upgradeValue, newLevel, iTypeMethod)
	local valueAttr = iTypeMethod(target:getType())
	if valueAttr > 0 then
		return target:setAttribute(attr, valueAttr + (upgradeValue * newLevel))
	end
end

local function setCustomAttribute(target, attr, upgradeValue, newLevel)
	return target:setCustomAttribute(attr, upgradeValue * newLevel)
end

local function doUpgradeItem(item, this, newLevel)
	if newLevel <= 0 then
		item:removeAttribute(ITEM_ATTRIBUTE_ARMOR)
		item:removeAttribute(ITEM_ATTRIBUTE_DEFENSE)
		item:removeAttribute(ITEM_ATTRIBUTE_EXTRADEFENSE)
		item:removeAttribute(ITEM_ATTRIBUTE_ATTACK)
		item:removeCustomAttribute("SarahWesker_WandDamage")
		item:removeCustomAttribute("SarahWesker_ElementDamage")
		for index, info in pairs(conditions) do
			item:removeCustomAttribute(string.format("SarahWesker_%s", info.abilitie.type))
		end
		return
	end

	setAttribute(item, ITEM_ATTRIBUTE_ARMOR, this.upgrade.armor, newLevel, ItemType.getArmor)
	setAttribute(item, ITEM_ATTRIBUTE_DEFENSE, this.upgrade.defense, newLevel, ItemType.getDefense)
	setAttribute(item, ITEM_ATTRIBUTE_EXTRADEFENSE, this.upgrade.extraDefense, newLevel, ItemType.getExtraDefense)
	setAttribute(item, ITEM_ATTRIBUTE_ATTACK, this.upgrade.attack, newLevel, ItemType.getAttack)

	if this.upgrade.elementDamage and isWeapon(item) and isElemental(item) then
		setCustomAttribute(item, "SarahWesker_ElementDamage", this.upgrade.elementDamage, newLevel)
	end

	if this.upgrade.wandDamage and isWand(item) then
		setCustomAttribute(item, "SarahWesker_WandDamage", this.upgrade.wandDamage, newLevel)
	end

	local itemType = item:getType()
	local abilities = itemType:getAbilities()
	for index, info in pairs(conditions) do
		local key = string.format("SarahWesker_%s", index)
		local value
		if not info.abilitie.index then
			value = abilities[info.abilitie.type] or 0
		else
			value = abilities[info.abilitie.type][info.abilitie.index + 1] or 0
		end

		if type(value) == "number" and value ~= 0 then
			local increaseValue = this.upgrade[index] or this.upgrade[info.abilitie.type]
			print(value, increaseValue)
			if not increaseValue then
				print(string.format("[Warning] The skill %s or %s of the configuration does not exist.", index, info.abilitie.type))
			else
				setCustomAttribute(item, key, increaseValue, newLevel)
			end
		end
	end
end

local slotBits = {
	[CONST_SLOT_HEAD] = SLOTP_HEAD,
	[CONST_SLOT_NECKLACE] = SLOTP_NECKLACE,
	[CONST_SLOT_BACKPACK] = SLOTP_BACKPACK,
	[CONST_SLOT_ARMOR] = SLOTP_ARMOR,
	[CONST_SLOT_RIGHT] = SLOTP_RIGHT,
	[CONST_SLOT_LEFT] = SLOTP_LEFT,
	[CONST_SLOT_LEGS] = SLOTP_LEGS,
	[CONST_SLOT_FEET] = SLOTP_FEET,
	[CONST_SLOT_RING] = SLOTP_RING,
	[CONST_SLOT_AMMO] = SLOTP_AMMO
}

local function usesSlot(itemType, slot)
	return bit.band(itemType:getSlotPosition(), slotBits[slot] or 0) ~= 0
end

local function onDeEquip(player, slotPosition)
	for _, info in pairs(conditions) do
		local subId = (conditionCount * slotPosition) + info.condition.subId
		player:removeCondition(info.condition.type, info.condition.id, subId, true)
	end
end

local function onEquip(player, item, slotPosition)
	local cleanSlot = true
	for index, info in pairs(conditions) do
		local key = string.format("SarahWesker_%s", index)
		local value = item:getCustomAttribute(key) or 0
		if value ~= 0 then
			local condition = Condition(info.condition.type, info.condition.id)
			condition:setTicks(info.condition.ticks)
			local subId = (conditionCount * slotPosition) + info.condition.subId
			condition:setParameter(CONDITION_PARAM_SUBID, subId)
			if info.condition.healthTicks then
				condition:setParameter(CONDITION_PARAM_HEALTHTICKS, info.condition.healthTicks)
			end
			if info.condition.manaTicks then
				condition:setParameter(CONDITION_PARAM_MANATICKS, info.condition.manaTicks)
			end
			condition:setParameter(info.condition.param, value)
			player:addCondition(condition)
			cleanSlot = false
		end
	end

	if cleanSlot then
		onDeEquip(player, slotPosition)
	end
end

local action = Action()

function action.onUse(player, item, fromPos, target, toPos, isHotkey)
	if not target:isItem() then
		player:sendCancelMessage("It can only be applied to items.")
		return true
	end

	if not isValidObj(target) then
		player:sendCancelMessage("It is not a valid item to upgrade.")
		return true
	end

	local this = config.values[item:getId()]
	local objLevel = getObjLevel(target)
	local foundChance = config.chances[objLevel]
	if not foundChance then
		player:sendCancelMessage("The level of your item is unknown")
		return true
	end

	if not foundChance.chance then
		player:sendCancelMessage("This item is at max level.")
		return true
	end

	local function use()
		if not config.debugMode then
			item:remove(1)
		end

		return true
	end

	local function getInventoryPosition(player, item)
		for i = CONST_SLOT_HEAD, CONST_SLOT_AMMO do
			local itemEx = player:getSlotItem(i)
			if itemEx and itemEx:getUniqueId() == item:getUniqueId() then
				return i
			end
		end
	end

	local inventoryPos = getInventoryPosition(player, target)
	local function update()
		if inventoryPos then
			local itemType = target:getType()
			if usesSlot(itemType, inventoryPos) then
				onDeEquip(player, inventoryPos)
				onEquip(player, target, inventoryPos)
			end
		end
	end

	local totalChance = foundChance.chance * (this.chance / 100)
	if totalChance < math.random(100) then
		if config.downgradeEnabled then
			local newLevel = foundChance.downLvl or 0
			setObjLevel(target, newLevel)
			doUpgradeItem(target, this, newLevel)
			update()
		end
		player:sendCancelMessage("The attempt to upgrade this item has failed.")
		target:getPosition():sendMagicEffect(CONST_ME_POFF)
		return use()
	end

	player:sendCancelMessage("The upgrade of the item is successful.")
	target:getPosition():sendMagicEffect(this.effect or CONST_ME_FIREWORK_YELLOW)
	local newLevel = objLevel + 1
	setObjLevel(target, newLevel)
	doUpgradeItem(target, this, newLevel)
	update()
	return use()
end

for id, _ in pairs(config.values) do
	action:id(id)
end

action:register()

local ec = EventCallback

function ec.onLook(player, thing, position, distance, description)
	if thing:isItem() then
		local objLevel = getObjLevel(thing)
		if objLevel > 0 then
			description = string.format("%s\n%s (level %d", description, config.interfaceName, objLevel)

			local wandDamage = thing:getCustomAttribute("SarahWesker_WandDamage") or 0
			if wandDamage > 0 then
				description = string.format("%s, extra damage +%d", description, wandDamage)
			end
			local elementDamage = thing:getCustomAttribute("SarahWesker_ElementDamage") or 0
			if elementDamage > 0 then
				description = string.format("%s, element damage +%d", description, elementDamage)
			end
			for index, _ in pairs(conditions) do
				local key = string.format("SarahWesker_%s", index)
				local value = thing:getCustomAttribute(key) or 0
				if value ~= 0 then
					description = description .. ', '
					description = string.format("%s%s +%d", description, index, value)
				end
			end

			description = string.format("%s)", description)
		end
	end

	return description
end

ec:register(7)

local creatureEvent = CreatureEvent("SarahWesker_onHealthChange")

function creatureEvent.onHealthChange(creature, attacker, primaryDamage, primaryType, secondaryDamage, secondaryType, origin)
	if attacker:isPlayer() then
		local weapon
		if primaryDamage < 0 and origin == ORIGIN_WAND then
			weapon = getPlayerWeapon(attacker)
			if weapon and isWand(weapon) then
				local wandDamage = weapon:getCustomAttribute("SarahWesker_WandDamage") or 0
				if wandDamage > 0 then
					primaryDamage = primaryDamage - wandDamage
				end
			end
		end

		if secondaryDamage < 0 and origin == ORIGIN_MELEE or origin == ORIGIN_WAND or origin == ORIGIN_RANGED then
			weapon = weapon or getPlayerWeapon(attacker)
			if weapon and isWeapon(weapon) then
				local elementDamage = weapon:getCustomAttribute("SarahWesker_ElementDamage") or 0
				if elementDamage > 0 then
					secondaryDamage = secondaryDamage - elementDamage
				end
			end
		end
	end
	return primaryDamage, primaryType, secondaryDamage, secondaryType
end

creatureEvent:register()

function ec.onTargetCombat(creature, target)
	if creature and target then
		if creature:isPlayer() then
			target:registerEvent("SarahWesker_onHealthChange")
		end
	end
	return RETURNVALUE_NOERROR
end

ec:register(7)

function ec.onItemMoved(player, item, count, fromPosition, toPosition, fromCylinder, toCylinder)
	if fromPosition.x == CONTAINER_POSITION and bit.band(fromPosition.y, 0x40) == 0 then
		local itemType = item:getType()
		if usesSlot(itemType, fromPosition.y) then
			onDeEquip(player, fromPosition.y)
		end
	end

	if toPosition.x == CONTAINER_POSITION and bit.band(toPosition.y, 0x40) == 0 then
		local itemType = item:getType()
		if usesSlot(itemType, toPosition.y) then
			onEquip(player, item, toPosition.y)
		end
	end
end

ec:register(10)

creatureEvent = CreatureEvent("SarahWesker_onThink")

local function onThinkInventory(playerId)
	local player = Player(playerId)
	if not player then
		return
	end

	for i = CONST_SLOT_HEAD, CONST_SLOT_AMMO do
		local item = player:getSlotItem(i)
		if not item then
			onDeEquip(player, i)
		end
	end

	addEvent(onThinkInventory, 3000, playerId)
end

creatureEvent = CreatureEvent("SarahWesker_onLogin")

function creatureEvent.onLogin(player)
	for i = CONST_SLOT_HEAD, CONST_SLOT_AMMO do
		local item = player:getSlotItem(i)
		if item then
			if usesSlot(item:getType(), i) then
				onEquip(player, item, i)
			end
		end
	end

	addEvent(onThinkInventory, 3000, player:getId())
	return true
end

creatureEvent:register()
