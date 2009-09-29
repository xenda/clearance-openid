module Clearance 
  module Openid
    module User

      def self.included(model)

        model.send(:include, AttrAccessibleOpenId)
      end

    module AttrAccessibleOpenId
      # Hook for attr_accessible white list.
      #
      # :email, :password, :password_confirmation
      #
      # Append other attributes that must be mass-assigned in your model.
      #
      # @example
      #   include Clearance::User
      #   attr_accessible :location, :gender
      def self.included(model)
        model.class_eval do
          attr_accessible :identity_url
        end
      end
  
    end
  end

end
  
end