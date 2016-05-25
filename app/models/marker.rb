class Marker < ActiveRecord::Base
  belongs_to :point
  belongs_to :category

  def as_json(options)
    {category: category.title, point: point.title}
  end
end
