local lazy = require("lazy")

local config_dir = "lua/plugins/configs"

local function getFilesInDirectory(dir)
  local dir_contents = vim.fn.readdir(dir)
  local files = {}
  for _, item in ipairs(dir_contents) do
    if vim.fn.isdirectory(dir .. "/" .. item) == 0 then
      table.insert(files, item)
    end
  end
  return files
end

local config_files = getFilesInDirectory(config_dir)

local lazy_configurations = {}

for _, file in ipairs(config_files) do
  if file:match("%.lua$") then
    local config_name = file:match("(.+)%.lua$")
    table.insert(lazy_configurations, require("plugins.configs." .. config_name))
  end
end

table.insert(lazy_configurations, 1, require("plugins.core"))

lazy.setup(lazy_configurations)
