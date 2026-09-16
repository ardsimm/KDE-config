# Neovim Cheatsheet
> Custom config — ardsimm @ École 42 Lyon

---

## Vim — Modes

| Key | Action |
|-----|--------|
| `i` | Enter insert mode |
| `I` | Insert at beginning of line |
| `a` | Append after cursor |
| `A` | Append at end of line |
| `o` | New line below, insert |
| `O` | New line above, insert |
| `v` | Visual mode |
| `V` | Visual line mode |
| `<C-v>` | Visual block mode |
| `<Esc>` | Return to normal mode |
| `Caps Lock` | Mapped to Escape |

---

## Vim — Navigation

| Key | Action |
|-----|--------|
| `h / l` | Left / right |
| `j / k` | Down / up |
| `w / b` | Next / prev word |
| `e` | End of word |
| `0 / $` | Start / end of line |
| `gg / G` | Start / end of file |
| `<C-d>` | Scroll down (centered) |
| `<C-u>` | Scroll up (centered) |
| `{ / }` | Prev / next empty line |
| `%` | Jump to matching bracket |
| `*` | Search word under cursor |

---

## Vim — Editing

| Key | Action |
|-----|--------|
| `dd` | Delete line |
| `yy` | Yank (copy) line |
| `p / P` | Paste below / above |
| `u` | Undo |
| `<C-r>` | Redo |
| `ciw` | Change inner word |
| `di(` | Delete inside parentheses |
| `.` | Repeat last action |
| `~` | Toggle case |
| `>> / <<` | Indent / unindent |
| `J` | Join line below |

---

## Vim — Search & Replace

| Key | Action |
|-----|--------|
| `/pattern` | Search forward |
| `?pattern` | Search backward |
| `n / N` | Next / prev match (centered) |
| `<Esc>` | Clear search highlight |
| `:%s/old/new/g` | Replace all in file |
| `:s/old/new/g` | Replace in current line |

---

## Neovim — General
> Leader key = `Space`

| Key | Action |
|-----|--------|
| `<leader>w` | Save |
| `<leader>q` | Quit |
| `<leader>sv` | Vertical split |
| `<leader>sh` | Horizontal split |
| `<C-h/j/k/l>` | Navigate splits |
| `<C-arrows>` | Navigate splits (arrows) |
| `J / K` | Move line down / up (visual) |
| `<leader>p` | Paste without overwriting register (visual) |
| `<leader>tt` | Toggle dark / light theme |
| `<leader>?` | Open this cheatsheet |

---

## Neovim — LSP
> Language Server Protocol — autocompletion, diagnostics, navigation dans le code.
> Serveurs installés : clangd (C), pyright (Python), ts_ls (TS/JS), html, cssls, jsonls, jdtls (Java), bashls.

| Key | Action |
|-----|--------|
| `gd` | Go to definition |
| `gD` | Go to declaration |
| `gr` | References |
| `gi` | Go to implementation |
| `K` | Hover documentation |
| `<leader>rn` | Rename symbol |
| `<leader>ca` | Code action |
| `<leader>ld` | Line diagnostics |
| `[d / ]d` | Prev / next diagnostic |

---

## Neovim — Autocompletion (nvim-cmp)
> Moteur d'autocomplétion non-intrusif. Tab et Enter restent libres — c'est toi qui décides quand interagir avec les suggestions.

| Key | Action |
|-----|--------|
| `<C-Space>` | Trigger completion manually |
| `<C-n>` | Next suggestion |
| `<C-p>` | Prev suggestion |
| `<C-y>` | Confirm selection |
| `<C-e>` | Close without selecting |
| `<C-d>` | Scroll docs down |
| `<C-u>` | Scroll docs up |

---

## Telescope
> Fuzzy finder ultra-rapide. Cherche des fichiers, du texte, des buffers, des commandes — tout ça avec prévisualisation en temps réel.

| Key | Action |
|-----|--------|
| `<leader>ff` | Find files |
| `<leader>fg` | Live grep |
| `<leader>fb` | Buffers |
| `<leader>fh` | Help tags |
| `<leader>fr` | Recent files |
| `<leader>fc` | Commands |
| `<leader>fd` | Diagnostics |
| `<leader>ft` | Find TODOs |
| `<C-k> / <C-j>` | Navigate results |
| `<C-q>` | Send to quickfix |
| `<Esc>` | Close picker |

---

## Oil.nvim
> Explorateur de fichiers où le dossier s'affiche comme un buffer texte. Renommer = modifier le texte. Supprimer = effacer la ligne. `:w` applique les changements.

| Key | Action |
|-----|--------|
| `<leader>e` | Open file explorer |
| `<leader>E` | Open file explorer (float) |
| `<CR>` | Open file / enter directory |
| `<BS> or -` | Go to parent directory |
| `_` | Go to current working directory |
| `g.` | Toggle hidden files |
| `gx` | Open with system app (PDF, images...) |
| `gs` | Toggle sort |
| `<C-v>` | Open in vertical split |
| `<C-s>` | Open in horizontal split |
| `q` | Close explorer |

---

## Bufferline
> Onglets pour les buffers ouverts, affichés en haut de l'écran avec icônes et indicateurs LSP.

| Key | Action |
|-----|--------|
| `<S-l>` | Next buffer |
| `<S-h>` | Prev buffer |
| `<leader>bd` | Close buffer |
| `<leader>bp` | Pin / unpin buffer |

---

## Harpoon
> Marque jusqu'à 4 fichiers clés et switche instantanément entre eux. Idéal quand tu jongle entre header/source, composant/service/test...

| Key | Action |
|-----|--------|
| `<leader>ha` | Add file to harpoon list |
| `<leader>hh` | Toggle harpoon menu |
| `<leader>h1-4` | Jump to file 1-4 |
| `<leader>hn` | Next harpoon file |
| `<leader>hp` | Prev harpoon file |

---

## Flash.nvim
> Navigation ultra-rapide dans le fichier. Tape 2-3 caractères, des labels apparaissent sur toutes les occurrences, tape le label pour y sauter.

| Key | Action |
|-----|--------|
| `s` | Flash jump (type chars, pick label) |
| `S` | Flash treesitter (structural selection) |
| `<Tab>` | Next occurrence (while flash active) |
| `<S-Tab>` | Prev occurrence (while flash active) |
| `<leader>tf` | Toggle flash search |

---

## Gitsigns
> Indicateurs git dans la signcolumn (ajouts, modifications, suppressions). Stage des hunks individuels sans quitter Neovim.

| Key | Action |
|-----|--------|
| `]g / [g` | Next / prev git hunk |
| `<leader>gs` | Stage hunk |
| `<leader>gr` | Reset hunk |
| `<leader>gp` | Preview hunk |
| `<leader>gb` | Blame line |

---

## LazyGit
> Interface git complète dans un terminal flottant directement dans Neovim.

| Key | Action |
|-----|--------|
| `<leader>gg` | Open LazyGit |
| `q` | Close LazyGit |

---

## nvim-surround
> Ajoute, change ou supprime les paires autour d'un texte (parenthèses, guillemets, balises...).

| Key | Action |
|-----|--------|
| `ysiw)` | Surround word with () |
| `ysiw"` | Surround word with "" |
| `ys$)` | Surround to end of line with () |
| `yss)` | Surround entire line with () |
| `cs"'` | Change surrounding " to ' |
| `ds"` | Delete surrounding " |
| `S)` | Surround selection (visual) |

---

## Comment.nvim
> Commente et décommente du code intelligemment selon le langage et le contexte.

| Key | Action |
|-----|--------|
| `gcc` | Toggle line comment |
| `gbc` | Toggle block comment |
| `gc + motion` | Comment with motion (e.g. gc5j) |
| `gc` (visual) | Comment selection |

---

## vim-visual-multi
> Multi-curseur à la VSCode. Sélectionne et édite plusieurs occurrences simultanément.

| Key | Action |
|-----|--------|
| `<C-d>` | Select word under cursor (add next) |
| `<A-Down>` | Add cursor below |
| `<A-Up>` | Add cursor above |
| `<A-/>` | Add cursor at position |

---

## conform.nvim
> Formattage automatique à la sauvegarde. Utilise prettier, black, clang-format, stylua selon le filetype.

| Key | Action |
|-----|--------|
| `<leader>tf` | Toggle format on save |

---

## Noice / nvim-notify
> Remplace l'UI des messages et de la cmdline par une interface moderne. Affiche les notifications sous forme de popups stylisées.

| Key | Action |
|-----|--------|
| `<leader>nd` | Dismiss notifications |
| `<leader>nh` | Notification history |

---

## render-markdown.nvim
> Rendu markdown enrichi directement dans le buffer : titres, listes, cases à cocher, blocs de code mis en forme.

| Key | Action |
|-----|--------|
| `<leader>tm` | Toggle markdown render |

---

## Misc

| Key | Action |
|-----|--------|
| `]t / [t` | Next / prev TODO |
| `<leader>op` | Open current file in Zathura |
| `<leader>?` | Open this cheatsheet |
