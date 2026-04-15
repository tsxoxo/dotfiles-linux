--  See `:help vim.keymap.set()`

vim.g.mapleader = " "
vim.g.maplocalleader = " "

----------------------------------------------------
-- SYSTEM --
----------------------------------------------------
-- Clear highlights on search when pressing <Esc> in normal mode
--  See `:help hlsearch`
vim.keymap.set("n", "<Esc>", "<cmd>nohlsearch<CR>")

-- Make search use very magic by default
-- Because the default means I have to escape + but not *,
-- which is confusing.
vim.keymap.set("n", "/", "/\\v", { desc = "Search with very magic" })
vim.keymap.set("n", "?", "?\\v", { desc = "Reverse search with very magic" })

----------------------------------------------------
-- [F]ile --
----------------------------------------------------
vim.keymap.set({ "n", "v" }, "<leader>fw", vim.cmd.write, { desc = "Save file." })
vim.keymap.set({ "n", "v" }, "<leader>fq", "<cmd>qa<CR>", { desc = "Close all and quit (:qa)." })
vim.keymap.set("n", "<leader>fe", vim.cmd.Oil, { desc = "Open file explorer" })

--- cd to cwd of current buffer
--- simple -- doesnt work when in oil
-- vim.keymap.set({ "n", "v" }, "<leader>fc", "<cmd>cd %:p:h<CR>", { desc = "[c]d to dir of current buffer" })
--- smart
vim.keymap.set({ "n", "v" }, "<leader>fc", function()
	local path
	-- 1. If it's an Oil buffer, use Oil's API to get the real path
	if vim.bo.filetype == "oil" then
		path = require("oil").get_current_dir()
	else
		-- 2. If it's a normal file, get its parent directory
		path = vim.fn.expand("%:p:h")
	end

	-- 3. Execute the cd and notify the user
	if path and path ~= "" then
		vim.cmd("cd " .. vim.fn.fnameescape(path))
		vim.notify("CWD: " .. path, vim.log.levels.INFO)
	else
		vim.notify("Could not determine directory", vim.log.levels.WARN)
	end
end, { desc = "[c]d to dir of current buffer" })

--- Autocomplete paths
--- NOTE: turns out i dont have fzf-lua or something
-- vim.keymap.set('i', '<C-x><C-p>', function()
--   local word = vim.fn.expand('<cfile>')
--
--   require('fzf-lua').files({
--     cmd = "fd --type f --absolute-path --no-ignore --hidden",
--     query = word,
--     fzf_opts = { ['--multi'] = true },
--     actions = {
--       ['default'] = function(selected)
--         if not selected or #selected == 0 then return end
--         local paths = {}
--         for _, s in ipairs(selected) do
--           table.insert(paths, s)
--         end
--         vim.api.nvim_put(paths, 'c', true, true)
--       end
--     }
--   })
-- end, { noremap = true, silent = true })

-----------------------------
-- INTER-BUFFER NAVIGATION --
-----------------------------
vim.keymap.set({ "n", "v" }, "<leader><leader>", "<cmd>b#<CR>", { desc = "Switch to last bugger." })
vim.keymap.set({ "n", "v" }, "<leader>j", "<cmd>bn<CR>", { desc = "Switch to next bugger." })
vim.keymap.set({ "n", "v" }, "<leader>k", "<cmd>bp<CR>", { desc = "Switch to previous bugger." })

-- Switch between a handful set buffers fast
local function switch_to_buffer_based_on_file_mark(mark_char)
	local buf_id = vim.api.nvim_get_mark(mark_char, {})[3]

	if buf_id > 0 and vim.api.nvim_buf_is_valid(buf_id) then
		vim.cmd("b" .. buf_id)
	else
		vim.notify("Mark '" .. mark_char .. "' not found or buffer invalid.", vim.log.levels.WARN)
	end
end

local function create_quick_slot(key)
	local _key = key
	vim.keymap.set({ "n", "v" }, "<leader>" .. _key, function()
		switch_to_buffer_based_on_file_mark(string.upper(_key))
	end, { desc = "Switch to buffer " .. _key })
end

create_quick_slot("u")
create_quick_slot("i")
create_quick_slot("o")
create_quick_slot("p")

----------------------------------------------------
-- INTRA-BUFFER NAVIGATION --
----------------------------------------------------
vim.keymap.set({ "n", "v" }, "<C-d>", "<C-d>zz", { desc = "Move down half a page while keeping cursor centered." })
vim.keymap.set({ "n", "v" }, "<C-u>", "<C-u>zz", { desc = "Move up half a page while keeping cursor centered." })
vim.keymap.set("i", "<C-l>", "<Right> ", { desc = "Move cursor from between brackets." })
vim.keymap.set("i", "jj", "<Esc>", { desc = "Leave insert mode" })

-------------------
-- YANK/PASTE... --
-------------------
-- don't overwrite yank register
vim.keymap.set({ "n", "x" }, "x", '"_x', { desc = "Delete char without yanking" })
vim.keymap.set({ "n", "x" }, "X", '"_d', { desc = "Delete text without yanking" })
vim.keymap.set({ "n", "x" }, "c", '"_c', { desc = "Change without yanking" })
-- For pasting over selection without overwriting yank reg: use 'P'
-- see :help v_P

-- when yanking selection, go to next line instead of jumping to the top
vim.keymap.set("x", "y", "y']", { desc = "Yank and move to bottom" })

-- yank whole file
vim.keymap.set("n", "<leader>yy", ":%y<CR>", { desc = "Yank whole file" })
vim.keymap.set("n", "<leader>yp", function()
	local path = vim.fn.expand("%:p") -- '%t' filename only, '%h' dir
	vim.fn.setreg("+", path)
end, { desc = "Copy absolute path to clipboard" })

-----------------------------
-- TOGGLES --
-----------------------------
-- Show vertical ruler
local function toggle_ruler(col)
	local _col = tostring(col)
	local current_ruler_position = vim.opt_local.colorcolumn:get()[1]

	if current_ruler_position == _col then
		vim.opt_local.colorcolumn = ""
	else
		vim.opt_local.colorcolumn = _col
	end
end

vim.keymap.set({ "n", "v" }, "<leader>t|", function()
	toggle_ruler(80)
end, { desc = "Show 80char column ruler." })

-- convert list item to todo and mark as DONE == add [x] to start of line
vim.keymap.set("n", "<leader>td", "^ciW- [x]<Esc>", { desc = "[x] DONE" })

-----------------------------
-- QUICKFIX --
-----------------------------
-- Defaults that come with Nvim 0.11: ]q, [q, ]Q, [Q
vim.keymap.set("n", "<leader>qo", ":copen<CR>", { desc = "Open quickfix" })
vim.keymap.set("n", "<leader>qc", ":cclose<CR>", { desc = "Close quickfix" })

vim.keymap.set("n", "<leader>qf", "<cmd>Telescope quickfix<CR>", { desc = "Telescope quickfix" })

-- Search current word and send results to quickfix
vim.keymap.set("n", "<leader>qs", function()
	vim.cmd("grep! " .. vim.fn.expand("<cword>"))
	vim.cmd("copen")
end, { desc = "Search word to quickfix" })

-----------------------------
-- Insert symbols
-----------------------------
-- Em-Dash
-- press '\' twice
vim.keymap.set("i", "\\\\", "—", { desc = "Em dash" })

-- Borders to separate code sections
vim.keymap.set("n", "<leader>g#", "60i#<Esc>", { desc = "#####" })
vim.keymap.set("n", "<leader>g=", "60i=<Esc>", { desc = "=====" })
vim.keymap.set("n", "<leader>g-", "60i-<Esc>", { desc = "-----" })

-- Create framed heading like so:
-------------
-- Heading --
-------------
local esc = vim.api.nvim_replace_termcodes("<Esc>", true, true, true)
-- Usage:
-- Place cursor anywhere on like with a commented heading and press the keys.
-- TODO: make this language specific: in config files this should produce '#---' etc.
vim.keymap.set("n", "<leader>gt", "A --" .. esc .. "yyPVr-yyjp", { desc = "Create framed heading" })

-- For code in markdown: Surround line with ``
vim.keymap.set("n", "<leader>g`", "0ys$`", { remap = true, desc = "Surround line with `` (markdown)" })

-------------------------------------------------------
-- DEV
-------------------------------------------------------
---------------------------------
--- PROJECTS
---------------------------------
--- managing contexts/projects

-- kill session // QUESTION: what is this assuming? Is this after `workon st`?
vim.keymap.set("n", "<leader>wq", function()
	-- Kill all other panes in the current tmux window
	vim.fn.system("tmux kill-pane -a")
	vim.fn.system("pkill -f st_dev")
	-- Quit Neovim
	vim.cmd("qa")
end, { desc = "Kill session: tmux panes, test windows, and nvim" })

---------------------------------
--- RUN
---------------------------------
--- execute code

-- make file executable
vim.keymap.set("n", "<leader>fx", function()
	vim.cmd("!chmod +x %")
end, { desc = "Make file e[x]ecutable" })

-- Smart execute file based on filetype
vim.keymap.set("n", "<leader>rx", function()
	vim.cmd("w") -- Save first
	local ft = vim.bo.filetype
	if ft == "sh" then
		-- Open a small terminal at the bottom (10 rows high)
		-- 'bash %' runs the current file, 'read' keeps the window open so you can see output
		vim.cmd("split | term bash %; echo -e '--- Press Enter to Close ---'")
		-- Automatically enter 'Terminal Mode' so you can just hit Enter to close it later
		vim.cmd("startinsert")
	elseif ft == "python" then
		vim.cmd("!python3 %")
	elseif ft == "lua" then
		vim.cmd("source %")
	else
		-- If no filetype, try running it as an executable
		vim.cmd("!./%")
	end
end, { desc = "Smart Execute whole file" })

-- Lua partial executes: line, selection
vim.keymap.set("n", "<leader>rll", ":.lua<CR>", { desc = "Execute line of Lua." })
vim.keymap.set("v", "<leader>rll", ":lua<CR>", { desc = "Execute selected region of Lua." })

-- TODO: currently this works by doing `./file`. make this smart, possibly combine with above smart execute?
-- Start `entr` loop (file watcher)
vim.keymap.set("n", "<leader>rw", function()
	local file = vim.fn.expand("%")
	local cmd = string.format("tmux split-window -d -v -p 20 \"echo %s | entr -r -s -c './%s'\"", file, file)
	vim.fn.system(cmd)
end, { desc = "[w]atch in tmux pane (entr ./file)" })

---------------------------------
--  DEBUG  --
---------------------------------

--- Show info about diagnostic on current line (e.g. who produced it)
vim.keymap.set("n", "<leader>c?", function()
	print(vim.inspect(vim.diagnostic.get(0)))
end, { desc = "DEBUG: show info about diagnostic" })

---------------------------------
-- LANGUAGE SPECIFIC stuff
---------------------------------

------------------
-- typst
------------------
-- select inside $...$
vim.keymap.set("x", "i$", "T$ot$")
-- operator-pending mode: enable 'di$', 'ci$', 'yi$', etc.
vim.keymap.set("o", "i$", ":<C-u>norm! T$vt$<cr>", { desc = "inner $...$" })
-- would be nice to reuse existing motion 'vi$' but this doesnt work
-- vim.keymap.set("o", "i$", ":<C-u>norm! vi$<cr>", { noremap = false, desc = "$...$" })
vim.keymap.set("x", "a$", "F$of$")
vim.keymap.set("o", "a$", ":<C-u>norm! F$vf$<cr>", { desc = "outer $...$" })

--- start typst watcher
-- Create a global table to track Zathura job IDs per buffer
_G.typst_pdf_viewers = _G.typst_pdf_viewers or {}

vim.api.nvim_create_user_command("TypstPreviewToggle", function()
	local bufnr = vim.api.nvim_get_current_buf()
	local filepath = vim.api.nvim_buf_get_name(bufnr)

	-- Ensure we are actually in a Typst file
	if not filepath:match("%.typ$") then
		vim.notify("Not a Typst file.", vim.log.levels.WARN)
		return
	end

	local pdf_path = filepath:gsub("%.typ$", ".pdf")

	-- 1. If viewer is running for this buffer, kill it
	if _G.typst_pdf_viewers[bufnr] then
		vim.fn.jobstop(_G.typst_pdf_viewers[bufnr])
		_G.typst_pdf_viewers[bufnr] = nil
		vim.notify("Closed Zathura preview.", vim.log.levels.INFO)
	else
		-- 2. If no viewer, start Zathura and store the job ID
		-- WARN: must hardcode zathura, cant go via xdg-open
		local job_id = vim.fn.jobstart({ "zathura", pdf_path }, {
			-- Cleanup the ID if you close Zathura manually via its own 'q' shortcut
			on_exit = function()
				_G.typst_pdf_viewers[bufnr] = nil
			end,
		})

		if job_id > 0 then
			_G.typst_pdf_viewers[bufnr] = job_id
			vim.notify("Opened Zathura preview.", vim.log.levels.INFO)
		else
			vim.notify("Failed to open Zathura.", vim.log.levels.ERROR)
		end
	end
end, { desc = "Toggle Zathura for Typst PDF" })

-- 3. Autocommand: Kill Zathura when buffer is closed or Neovim exits
vim.api.nvim_create_autocmd({ "BufDelete", "VimLeavePre" }, {
	pattern = "*.typ",
	callback = function(args)
		local bufnr = args.buf
		if _G.typst_pdf_viewers[bufnr] then
			vim.fn.jobstop(_G.typst_pdf_viewers[bufnr])
			_G.typst_pdf_viewers[bufnr] = nil
		end
	end,
})

--- toggle typst PDF preview (uses our custom command)
vim.keymap.set("n", "<leader>rt", "<cmd>TypstPreviewToggle<CR>", { desc = "Toggle Typst PDF Preview", silent = true })

------------------
-- man
------------------
vim.api.nvim_create_augroup("man", { clear = true })

vim.api.nvim_create_autocmd("FileType", {
	group = "man",
	pattern = { "man" },
	callback = function()
		-- In 'man' mode: jump to option 'x'
		vim.keymap.set({ "n", "v" }, "<leader>sm", [[/\v^\s*[?-]], { desc = "[man] Jump to option x" })
	end,
})

------------------
-- JS/TS
------------------
-- console.log macro, js log
vim.api.nvim_create_augroup("js", { clear = true })

-- Usage:
-- Select symbol to log, press "@l"
vim.api.nvim_create_autocmd("FileType", {
	group = "js",
	pattern = { "javascript", "typescript", "vue" },
	callback = function()
		vim.fn.setreg("l", "yoconsole.log('" .. esc .. "pa: ', " .. esc .. "pa)" .. esc)
	end,
})

------------------
-- Bash
------------------
-- log macro, bash log
vim.api.nvim_create_augroup("bash", { clear = true })

-- Usage:
-- Select symbol to log, press "@l"
vim.api.nvim_create_autocmd("FileType", {
	group = "bash",
	pattern = { "bash", "sh", "zsh" },
	callback = function()
		vim.fn.setreg("l", 'yoecho "' .. esc .. "pa: ${" .. esc .. 'pa}"' .. esc)
	end,
})

------------------
-- ASM
------------------
-- Formatting macro
vim.api.nvim_create_augroup("asm", { clear = true })

vim.api.nvim_create_autocmd("FileType", {
	group = "asm",
	pattern = { "asm" },
	callback = function()
		local tab = vim.api.nvim_replace_termcodes("<Tab>", true, true, true)
		vim.fn.setreg("f", "0f;i " .. esc .. "diw" .. "i" .. tab .. esc)
	end,
})
