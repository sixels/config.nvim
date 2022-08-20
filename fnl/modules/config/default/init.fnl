(import-macros {: use-package! : nyoom-module!} :macros)

(nyoom-module! config.default)

;; Core packages
(use-package! :wbthomason/packer.nvim)
(use-package! :nvim-lua/plenary.nvim {:module :plenary})
