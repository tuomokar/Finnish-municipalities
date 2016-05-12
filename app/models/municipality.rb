class Municipality < ActiveRecord::Base
  translates :name, :link, :description,:fallbacks_for_empty_translations => true

  belongs_to :region
  has_many :places
  has_many :ratings, through: :places
end
