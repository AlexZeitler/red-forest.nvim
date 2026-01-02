# red-forest.nvim

The theme combines cool violet undertones in the background with warm, woody red and pink tones in the accents. The gradients typically transition from cooler blue-gray tones to warmer coral and pink tones – fitting the name "Red Forest".

It's part of the [Omarchy Red Forest Theme](https://github.com/AlexZeitler/omarchy-red-forest-theme)

## Installation

### lazy.nvim

```lua
{
    "alexzeitler/red-forest.nvim",
    lazy = false,
    priority = 1000,
    config = function()
        vim.cmd.colorscheme("red-forest")
    end,
}
```

### packer.nvim

```lua
use {
    "alexzeitler/red-forest.nvim",
    config = function()
        vim.cmd.colorscheme("red-forest")
    end,
}
```

## Usage

```lua
vim.cmd.colorscheme("red-forest")
```

## Colors

Access the color palette programmatically:

```lua
local colors = require("red-forest").colors
```

## License

MIT
