class CreateEvents < ActiveRecord::Migration
  def change
    create_table :events do |t|
      t.string        :name,          null: false
      t.text          :description,   null: false
      t.datetime      :time,          null: false
      t.string        :location,      null: false
      t.integer       :owner,         null: false
      t.boolean       :recurring,     null: false
      t.string        :categories,    null: false
      t.string        :gps_coords

      t.timestamps
    end
  end
end
