return {
  'tjdevries/express_line.nvim',
  config = function()
    require('el').setup({
      generator = function(win_id)
        local builtin = require('el.builtin')
        local extensions = require('el.extensions')
        local sections = require("el.sections")
        local el_segments = {}

        table.insert(el_segments, function(window, buffer)
          local mode = vim.api.nvim_get_mode().mode

          local mode_map = {
            n = "NORMAL",
            i = "INSERT",
            v = "VISUAL",
            V = "V-LINE",
            c = "CMMAND",
            R = "RPLACE",
          }

          return "[" .. mode_map[mode] .. "]"
        end)
        table.insert(el_segments, " ")
        table.insert(el_segments, builtin.file)
        table.insert(el_segments, " ")
        table.insert(el_segments, builtin.modified)
        table.insert(el_segments, sections.split)
        table.insert(el_segments, "[" .. builtin.line .. " : " .. builtin.column .. "]")
        table.insert(el_segments, " ")
        table.insert(el_segments, builtin.filetype)

        return el_segments
      end
    })
  end
}
