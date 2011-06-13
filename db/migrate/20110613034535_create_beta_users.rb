class CreateBetaUsers < ActiveRecord::Migration
  def self.up
    create_table :beta_users do |t|
      t.string :first_name
      t.string :last_name
      t.string :email
      t.string :bushido_data_id
      t.string :bushido_version

      t.timestamps
    end
  end

  def self.down
    drop_table :beta_users
  end
end
