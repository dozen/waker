class CreateAutoSchedulers < ActiveRecord::Migration
  def change
    create_table :auto_schedulers do |t|
      t.string :name, :null => false
      t.text :settings
      t.boolean :enabled, :default => true

      t.timestamps null: false
    end
  end
end
