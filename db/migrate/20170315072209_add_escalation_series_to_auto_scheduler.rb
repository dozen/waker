class AddEscalationSeriesToAutoScheduler < ActiveRecord::Migration
  def change
    add_reference :auto_schedulers, :escalation_series, index: true, foreign_key: true
  end
end
