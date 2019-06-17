class CreateArtists < ActiveRecord::Migration[5.2]
  def change
    create_table :artists do |t|
      t.string :name
      t.string :email
      t.string :password_digest
      t.references :album, foreign: true
      t.timestamps
    end
  end
end
