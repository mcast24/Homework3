class Physician < ApplicationRecord
  has_many :appointments
  has_many :offices,:dependent => :destroy, inverse_of: :physician
  accepts_nested_attributes_for :offices, reject_if:
      :all_blank, allow_destroy: true
end
