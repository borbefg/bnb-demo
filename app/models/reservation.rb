class Reservation < ApplicationRecord
  belongs_to :guest

  enum status: %i[cancelled accepted]

  NULLABLE = %w[id created_at updated_at].freeze
  validates_presence_of(*attribute_names.reject(&NULLABLE.method(:include?)).map(&:to_sym))

  before_validation :set_description

  private

  def set_description
    self.description ||= "#{guests} guests"
  end
end
