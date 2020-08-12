class Skill < ApplicationRecord
  include Placeholder
  validates_presence_of :title, :percent_utilized

  # propagate object with defaults
  after_initialize :set_defaults

  def set_defaults
    self.badge ||= Placeholder.image_generator(height: 100, width: 100)
  end
end
