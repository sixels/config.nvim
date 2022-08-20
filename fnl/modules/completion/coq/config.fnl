(import-macros {: let! : set!} :macros)

(set! completeopt [:menu :menuone :noselect])

(local icons {:Text ""
              :Method ""
              :Function ""
              :Constructor "⌘"
              :Field "ﰠ"
              :Variable ""
              :Class "ﴯ"
              :Interface ""
              :Module ""
              :Unit "塞"
              :Property "ﰠ"
              :Value ""
              :Enum ""
              :Keyword ""
              :Snippet ""
              :Color ""
              :File ""
              :Reference ""
              :Folder ""
              :EnumMember ""
              :Constant ""
              :Struct "פּ"
              :Event ""
              :Operator ""
              :TypeParameter ""})

(let! :coq_settings {:keymap.repeat :<leader>c
                     :auto_start :shut-up
                     :display.icons.mode :short
                     :display.icons.mappings icons
                     :completion.replace_prefix_threshold 1
                     :display.pum.y_max_len 28
                     :display.pum.kind_context ["  " ""]
                     :clients {:lsp {:enabled true}
                               :tree_sitter {:enabled true
                                             :weight_adjust 1.0}}
                     :xdg true})

(require :coq)

(vim.cmd "COQnow -s")


((. (require :coq_3p)) {{:src :nvimlua}
                        {:src :dap}})
