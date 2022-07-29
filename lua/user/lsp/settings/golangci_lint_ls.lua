local util = require "lspconfig/util"
return {
  filetypes = {"go", "gomod"},
  root_dir =  function(fname)
    return util.root_pattern('go.work')(fname) or util.root_pattern('go.mod', '.golangci.yaml', '.git')(fname) or fname
  end
}
