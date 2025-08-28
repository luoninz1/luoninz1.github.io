-- Quarto/Pandoc Lua filter to inject current year into document metadata
function Meta(meta)
  local y = os.date('%Y')
  meta.year = pandoc.MetaString(y)
  return meta
end
