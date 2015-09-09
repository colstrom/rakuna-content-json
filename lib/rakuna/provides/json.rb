require 'contracts'
require 'multi_json'
require 'rakuna/provides/output'

module Rakuna
  module Provides
    module JSON
      include Contracts
      include Rakuna::Provides::Output

      Contract None => ArrayOf[Array]
      def content_types_provided
        @content_types_provided ||= super << ['application/json', :to_json]
      end

      Contract None => String
      def to_json
        @to_json ||= MultiJson.dump output
      end
    end
  end
end
