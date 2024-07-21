in_wsl = os.getenv("WSL_DISTRO_NAME") ~= nil
if in_wsl then
	vim.g.clipboard = {
		name = "wsl clipboard",
		copy = { ["+"] = { "clip.exe" }, ["*"] = { "clip.exe" } },
		paste = { ["+"] = { "nvim_paste" }, ["*"] = { "nvim_paste" } },
		cache_enabled = true,
	}
end

in_wayland = os.getenv("WAYLAND_DISPLAY") ~= nil
if in_wayland then
	vim.g.clipboard = {
		name = "Wayland Clipboard",
		copy = { ["+"] = { "wl-copy" }, ["*"] = { "wl-copy" } },
		paste = { ["+"] = { "wl-paste" }, ["*"] = { "wl-paste" } },
		cache_enabled = true,
	}
end
