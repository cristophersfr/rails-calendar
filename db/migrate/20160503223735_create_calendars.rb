class CreateCalendars < ActiveRecord::Migration
  def change
    create_table :calendars do |t|
      t.integer :year
      t.integer :month
      t.timestamps null: false
    end
  end
end
