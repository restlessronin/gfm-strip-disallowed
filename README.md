# gfm-strip-disallowed Extension For Quarto

GFM explicitly disallows [certain raw html tags](https://github.github.com/gfm/#disallowed-raw-html-extension-).

This filter is a quick solution to remove this markup in the cases where the input contains the diallowed tags.

In particular I needed it to for the `index.ipynb` file of my nbdev project, which is converted to the Github `README.txt`.

## Installing

```bash
quarto add restlessronin/gfm-strip-disallowed
```

This will install the extension under the `_extensions` subdirectory.
Correct installation on an `nbdev` repo requires running this command in the `_proc` sub folder.
## Using

Add the following to your front matter.
```
format:
  gfm:
    filters:
      - gfm-strip-disallowed
```

## Example

Here is the source code for a minimal example: [example.qmd](example.qmd). Running `quarto render example.qmd` in the root dir of this repo generates the [example.md](example.md) with stripped tags.

## `nbdev` example

The extension was initially created for the `README.md` of [this nbdev github repository](https://github.com/restlessronin/fastgs). Look at the first cell of `nbs/index.ipynb` (it's a raw cell, so it will not render correctly on the GitHub website).
