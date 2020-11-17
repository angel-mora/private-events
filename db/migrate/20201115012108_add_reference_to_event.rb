class AddReferenceToEvent < ActiveRecord::Migration[5.2]
  def change
    add_reference :events, :creator, class_name: 'User'
  end
end
