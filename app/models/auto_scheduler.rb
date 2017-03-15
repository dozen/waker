class AutoScheduler < ActiveRecord::Base
  belongs_to :escalation_series

  validates :name, presence: true
  validates :escalation_series, presence: true
  
  serialize :settings, JSON
  after_initialize :set_defaults

  def set_defaults
    self.settings ||= {}
  end

end
