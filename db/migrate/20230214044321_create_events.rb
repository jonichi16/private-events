class CreateEvents < ActiveRecord::Migration[7.0]
  def change
    create_table :events do |t|
      t.string :title
      t.text :description
      t.datetime :date_of_event
      t.string :location

      t.timestamps
    end
  end
end
