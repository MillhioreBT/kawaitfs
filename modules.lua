if not Modules then
	Modules = {}

	function Modules:register(module, method, ...)
		if not self[module.name] then
			self[module.name] = module
			setmetatable(module, {
				__call = function (self, method, ...)
					if self.enabled then
						local args = table.pack(...)
						return self[method](unpack(args))
					end
				end
			})

			-- If there is a load method we call it
			if module.onLoad then
				module.onLoad()
			end

			module.init()
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

else
	-- Reload Case
	for method, module in pairs(Modules) do
		if type(module) == "table" then

			if module.enabled then
				-- If there is a load method we call it
				if module.onLoad then
					module.onLoad()
				end
			end

			module.init()
		end
	end
end
