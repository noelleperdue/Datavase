class Plant < ApplicationRecord

  has_many :map_markers, dependent: :destroy

end
