class CreateHosts < ActiveRecord::Migration
  def change
    create_table :hosts do |t|
      t.string :name
      t.string :domain
      t.string :ip
      t.text :description
      t.string :image_url

      t.timestamps
    end
  end
end
