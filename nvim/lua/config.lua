-- Configure the theme.
require "themes.init"
-- Configure lsp management
require "lsp-management.mason-setup"
-- require "lsp-management.haskell-tools"
require "lsp-management.rustacean"
require "lsp-management.rescript"
require "lsp-management.inlay-hints"
require "lsp-management.fidget"

-- Configure snacks (explorer, telescope, etc)
require "snacks-setup.init"

-- Configure highlights
require "highlights.capnp"
require "highlights.devicons"
require "highlights.treesitter"

-- Configure diagnostics
require "diagnostics.inline"

-- Configure buffers
require "buffers.bufferin"

-- Configure autocompletion
require "autocompletion.blink"

-- Render markdown
require "markdown.markdown"

-- Statusline
require "statusline.init"

-- Multicursor
require "multicursor.init"

-- Configure keymappings
require "keymappings.basic"
require "keymappings.explorer"
require "keymappings.picker"
require "keymappings.mason-mappings"
require "keymappings.lsp-mappings"
require "keymappings.buffers"
