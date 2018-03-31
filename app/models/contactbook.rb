class Contactbook < ApplicationRecord
  belongs_to :workersetting
  belongs_to :customersetting
  belongs_to :user
end
