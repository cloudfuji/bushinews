class BushidoCreateTesters < ActiveRecord::Migration
  def self.up
    create_table(:testers) do |t|
      t.string :bushido_id
      t.string :bushido_version

      t.string :cool
      t.string :guise

      t.timestamps
    end

    add_index :testers, :bushido_id, :unique => true
  end

  def self.down
    drop_table :testers
  end
end
