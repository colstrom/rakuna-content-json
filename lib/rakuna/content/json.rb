require 'rakuna/accepts/json'
require 'rakuna/provides/json'

module Rakuna
  module Content
    module JSON
      include Rakuna::Accepts::JSON
      include Rakuna::Provides::JSON
    end
  end
end
