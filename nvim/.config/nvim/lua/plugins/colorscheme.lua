return {
  -- theme: oasis, midnight flavor (matches tmux-oasis @oasis_flavor "midnight")
  {
    "uhs-robert/oasis.nvim",
    lazy = true,
    priority = 1000,
    opts = { style = "midnight" },
  },

  { "LazyVim/LazyVim", opts = { colorscheme = "oasis-midnight" } },
}
