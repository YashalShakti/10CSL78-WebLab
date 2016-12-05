class CreateBookinfos < ActiveRecord::Migration
  def self.up
    create_table :bookinfos do |t|
      t.integer :acct
      t.string :title
      t.string :author
      t.string :edition
      t.string :publication

      t.timestamps
    end
  end

  def self.down
    drop_table :bookinfos
  end
end
