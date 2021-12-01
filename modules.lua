if not Modules then
	Modules = {}

	local function setMetaModule(module)
		setmetatable(module, {
			__call = function (self, method, ...)
				if self.enabled then
					local result, errorMsg = pcall(self[method], unpack(table.pack(...)))
					if not result then
						if not module.__errorDisplayed then
							print(string.format("[Error - Modules[\"%s\"][\"%s\"]::__call] %s", module.name, method, errorMsg))
							module.__errorDisplayed = true
						end
						return nil
					end

					return result
				end
			end
		})
		return module
	end

	local function showModulesLogInConsole(module, reload)
		if getConfigInfo("showModulesLogInConsole") then
			print(string.format("> The module %s has been %s. [%s]",
					module.name,
					reload and "reloaded" or "loaded",
					module.enabled and "enabled" or "disabled"
				)
			)
		end
	end

	local function isFunction(value) return type(value) == "function" end
	local function callModuleDefaultMethods(module)
		if not isFunction(module.init) then
			debugPrint("[Warning - Modules::register] need to setup a callback before you can register.")
			return
		end

		if isFunction(module.onLoad) then module.onLoad() end
		if module.enabled and isFunction(module.onEnabled) then module.onEnabled() end
		module.init()
	end

	function Modules:register(newModule, method, ...)
		if type(newModule.name) ~= "string" or newModule.name == "" then
			debugPrint("[Warning - Modules::register] is not a valid name.")
			return nil
		end

		local module = self[newModule.name]
		if not module then
			self[newModule.name] = newModule
			setMetaModule(newModule)
			callModuleDefaultMethods(newModule)
			showModulesLogInConsole(newModule, false)
		else
			-- Restore the previous state of the module before reloading
			newModule.enabled = module.enabled
			self[newModule.name] = newModule
			setMetaModule(newModule)
			callModuleDefaultMethods(newModule)
			showModulesLogInConsole(newModule, true)
		end
	end

	function Modules:enable(moduleName)
		local module = self[moduleName]
		if module and not module.enabled then
			module.enabled = true
			if isFunction(module.onEnabled) then
				module.onEnabled()
			end
		end
	end

	function Modules:disable(moduleName)
		local module = self[moduleName]
		if module and module.enabled then
			module.enabled = false
			if isFunction(module.onDisabled) then
				module.onDisabled()
			end
		end
	end
end
