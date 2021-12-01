if not Modules then
	Modules = {}

	local setmetamodule = function (module)
		setmetatable(module, {
			__call = function (self, method, ...)
				if self.enabled then
					return self[method](unpack(table.pack(...)))
				end
			end
		})
		return module
	end

	function Modules:register(newModule, method, ...)
		local module = self[newModule.name]
		if not module then
			self[newModule.name] = newModule
			setmetamodule(newModule)

			-- If there is a load method we call it
			if newModule.onLoad then
				newModule.onLoad()
			end

			newModule.init()
		else
			-- Restore the previous state of the module before reloading
			newModule.enabled = module.enabled
			self[newModule.name] = newModule
			setmetamodule(newModule)

			-- If there is a load method we call it
			if newModule.enabled and newModule.onLoad then
				newModule.onLoad()
			end

			newModule.init()
		end
	end

	function Modules:enable(moduleName)
		local module = self[moduleName]
		if module and not module.enabled then
			module.enabled = true
			if module.onLoad then
				module.onLoad()
			end
		end
	end

	function Modules:disable(moduleName)
		local module = self[moduleName]
		if module and module.enabled then
			module.enabled = false
			if module.onUnload then
				module.onUnload()
			end
		end
	end
end
