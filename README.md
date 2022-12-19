# gfm-strip-disallowed Extension For Quarto

GFM explicitly disallows [certain raw html tags](https://github.github.com/gfm/#disallowed-raw-html-extension-).

This filter is a quick solution to remove this markup in the cases where the input contains the diallowed tags.

In particular I needed it to for the `index.ipynb` file of my nbdev project, which is converted to the Github `README.txt`.

## Installing

```bash
quarto add restlessronin/gfm-strip-disallowed
```

This will install the extension under the `_extensions` subdirectory.
If you're using version control, you will want to check in this directory.

## Using

Add the following to your front matter.
```
format:
  gfm:
    filters:
      - gfm-strip-disallowed
```

## Example

Here is the source code for a minimal example: [example.qmd](example.qmd).

