class Location < ActiveRecord::Base
  has_many :charts

  validates :address, :presence => true
  validates :name, :presence => true

  after_create :build_charts

  def build_charts
    self.charts.create(name: 'Food', score: 1.0)
    self.charts.create(name: 'Drinks', score: 1.0)
    self.charts.create(name: 'Price', score: 1.0)
    self.charts.create(name: 'Atmosphere', score: 1.0)
    self.charts.create(name: 'Cleanliness', score: 1.0)
  end

end
