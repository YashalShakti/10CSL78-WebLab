class CreateBookinfos < ActiveRecord::Migration[5.0]
  def change
    create_table :bookinfos do |t|
      t.integer :acct
      t.string :title
      t.string :author
      t.string :edition
      t.string :publication

      t.timestamps
    end
  end
end
