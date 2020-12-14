class AddDescriptionAndDateToEvents < ActiveRecord::Migration[5.2]
  def change
    add_column :events, :event_time, :datetime
    add_column :events, :description, :text
  end
end
