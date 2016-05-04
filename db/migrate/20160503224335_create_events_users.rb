class CreateEventsUsers < ActiveRecord::Migration
  def change
    create_table :events_users, index: false do |t|
      t.belongs_to :users
      t.belongs_to :events
    end
  end
end
