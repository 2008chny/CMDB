class CreateServices < ActiveRecord::Migration
  def change
    create_table :services do |t|
      t.string :name
      t.integer :environment_id
      t.integer :technology_id
      t.string :depot
      t.string :directory
      t.string :build_target
      t.date :build_date
      t.string :image_url

      t.timestamps
    end
  end
end
