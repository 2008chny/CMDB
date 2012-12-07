class CreateServiceHosts < ActiveRecord::Migration
  def change
    create_table :service_hosts do |t|
      t.integer :service_id
      t.integer :host_id

      t.timestamps
    end
  end
end
