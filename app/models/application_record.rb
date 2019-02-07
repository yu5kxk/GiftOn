class ApplicationRecord < ActiveRecord::Base
  self.abstract_class = true

  enum gender_id:{male: 0,female: 1}
end
