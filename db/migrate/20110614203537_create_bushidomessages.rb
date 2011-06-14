class CreateBushidomessages < ActiveRecord::Migration
  def self.up
    create_table :bushidomessages do |t|
      t.text :data

      t.timestamps
    end
  end

  def self.down
    drop_table :bushidomessages
  end
end
