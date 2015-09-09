require 'contracts'
require 'multi_json'
require 'rakuna/accepts/input'

module Rakuna
  module Accepts
    module JSON
      include Contracts
      include Rakuna::Accepts::Input

      Contract None => ArrayOf[Array]
      def content_types_accepted
        @content_types_accepted ||= super << ['application/json', :from_json]
      end

      Contract None => Any
      def from_json
        @from_json ||= MultiJson.load request.body.to_s
      end

      Contract None => Any
      def input
        from_json
      end
    end
  end
end
