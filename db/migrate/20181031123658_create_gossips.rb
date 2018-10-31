class CreateGossips < ActiveRecord::Migration[5.2]
  def change
    create_table :gossips do |t|
      t.string :title
      t.text :content
      t.string :anonymous_gossiper
      t.references :user
      t.references :tags
      t.references :comments
      t.references :likes

      t.timestamps
    end
  end
end
