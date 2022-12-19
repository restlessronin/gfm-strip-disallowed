disallowed_raw = {"title","textarea","style","xmp","iframe","noembed","noframes","script","plaintext"}
disallowed_open = pandoc.List(disallowed_raw):map(function(tag) return "<" .. tag .. ">" end)

function starts_with(text, tag)
  return text:find(tag, 1, true) == 1
end

function is_disallowed_block(raw_text)
  return disallowed_open:find_if(function(tag) return starts_with(raw_text, tag) end, 1) ~= nil
end

function RawBlock(rawEl)
  if rawEl.format == "html" and is_disallowed_block(rawEl.text) then
    quarto.log.output(rawEl)
    return pandoc.List({})
  else
    return nil
  end
end
