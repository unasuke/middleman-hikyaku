require "middleman-core"

require "middleman-hikyaku/version"

::Middleman::Extensions.register(:hikyaku) do
  require "middleman-hikyaku/extension"
  require "middleman-hikyaku/command"
  ::Middleman::Hikyaku::Extension
end
