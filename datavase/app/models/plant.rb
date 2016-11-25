require 'wikipedia'

class Plant < ApplicationRecord

  has_many :map_markers, dependent: :destroy
  has_many :images

end
