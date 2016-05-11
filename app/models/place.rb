class Place < ActiveRecord::Base
  translates :name, :link, :description
  actable

  belongs_to :municipality
  has_many :ratings

  alias_attribute :type, :actable_type

  validates :name, :presence => false,
      :uniqueness => { :message => :not_unique },
      :length => { minimum: 2, :message => :place_name_too_short }

end
