class CreateFolios < ActiveRecord::Migration
  def change
    create_table :folios do |t|
      t.string :folio
      t.date :expiration

      t.timestamps null: false
    end
  end
end
