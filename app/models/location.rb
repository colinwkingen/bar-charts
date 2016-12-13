class Location < ActiveRecord::Base
  has_many :charts

  validates :address, :presence => true
  validates :name, :presence => true

  after_create :build_charts

  def build_charts
    self.charts.create(name: 'Food')
    self.charts.create(name: 'Drinks')
    self.charts.create(name: 'Price')
    self.charts.create(name: 'Atmosphere')
    self.charts.create(name: 'Cleanliness')
  end

end
