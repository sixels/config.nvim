(import-macros {: packadd! : set! : map! : nyoom-module-p!} :macros)
(local {: openAllFolds : closeAllFolds : setup} (require :ufo))

(packadd! promise-async)

(set! foldcolumn :1)
(set! foldlevel 99)
(set! foldlevelstart 99)
(set! foldenable true)

(map! [n] :zR '(openAllFolds))
(map! [n] :zM '(closeAllFolds))

(setup (nyoom-module-p! tools.tree-sitter
            {:provider_selector (fn [bufnr filetype buftype]
                                  [:treesitter :indent])}))
