class Chart < ActiveRecord::Base
  belongs_to :location
  validates :name, :presence => true
  default_scope {order('id ASC')}

  def score_ticks
    ticks = self.score
    str = ""
    while ticks > 0.5
      str << '<div class="single_tick"></div>'
      ticks -= 1
    end
    return str.html_safe
  end
end
