return {
	"robitx/gp.nvim",
	config = function()
		local conf = {
			-- For customization, refer to Install > Configuration in the Documentation/Readme
			openai_api_key = os.getenv("OPENAI_API_KEY"),
			agents = {
				{
					name = "ChatGPT-4o",
					chat = true,
					command = true,
					model = { model = "ChatGPT-4o" },
					system_prompt = "Please moederate sychophantic behavior.",
				},
			},
		}
		require("gp").setup(conf)
		-- Setup shortcuts here (see Usage > Shortcuts in the Documentation/Readme)
	end,
}
