class Location < ActiveRecord::Base
  has_many :charts

  validates :address, :presence => true
  validates :name, :presence => true

  geocoded_by :geo_address
  after_validation :geocode, if: ->(obj){ obj.address.present? and obj.address_changed? }

  after_create :build_charts

  def build_charts
    self.charts.create(name: 'Food', score: 3.0)
    self.charts.create(name: 'Drinks', score: 2.0)
    self.charts.create(name: 'Price', score: 4.0)
    self.charts.create(name: 'Atmosphere', score: 5.0)
    self.charts.create(name: 'Cleanliness', score: 1.0)
  end

  def geo_address
    self.address
  end

end
