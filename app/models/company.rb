class Company < ApplicationRecord
   before_save :update_features

   enum plan: {
      basic: 0,
      itau: 1,
      magalu: 2,
      enterprise: 3,
   }

   private

   def update_features
      self.features_enabled = eval('Plans::' + self.plan.camelcase).build_features
   end
end
