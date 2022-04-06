class Store < ActiveRecord::Base
  has_many :employees
  validates :name, length: {minimum: 3}
  validates :annual_revenue, numericality: {only_integer: true, greater_than_or_equal_to: 0}
  validate :has_mens_andor_womens, on: :create

  def has_mens_andor_womens
    unless womens_apparel.present? || mens_apparel.present?
      errors.add(:store, "store needs mens or womens apparel")
    end
  end

end
