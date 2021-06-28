class Country < ApplicationRecord
  belongs_to :continent
  has_many :country_histories, dependent: :destroy
end
