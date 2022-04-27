Currently, I use [GNU Stow](https://www.gnu.org/software/stow/) to manage my dotfiles.

A clone of this repo lives at `~/.dotfiles`.  Each top-level folder represents one application, and contains any config files that that application requires.


To install (for instance) my `dunst` configs, I enter `~/.dotfiles` and run `stow dunst`.  To uninstall them, I run `stow -D dunst` from the same place.  For more information, see the [GNU Stow docs](https://www.gnu.org/software/stow/manual/).

There are things this simple system can't handle, like:
- installing configs that don't live under `~`
- ensuring that dependencies exist before installing configs that require them
- maintaining slightly divergent versions of configs used by separate machines

If/when I need more power, maybe I'll look into something like
- [ChezMoi](https://www.chezmoi.io/) (found via [a HN comment](https://news.ycombinator.com/item?id=31015669))
- [Nix](https://github.com/NixOS/nix)
