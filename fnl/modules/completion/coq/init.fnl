(import-macros {: use-package! : pack} :macros)

;; standard completion for neovim
(use-package! :ms-jpq/coq_nvim
              {:nyoom-module completion.coq
               :event [:InsertEnter :CmdLineEnter]
               :requires [(pack :ms-jpq/coq.artifacts)
                          (pack :ms-jpq/coq.thirdparty {:module :coq_3p})]})
              ; })