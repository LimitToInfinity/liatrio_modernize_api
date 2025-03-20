class Thing < ApplicationRecord
  validates :title, presence: true
  validates :price, numericality: { greater_than_or_equal_to: 0 }

  def as_json(options = {})
    super(options.merge(only: [ :id, :title, :price, :completed ]))
  end
end
