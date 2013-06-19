class CreateDocuments < ActiveRecord::Migration
  def change
    create_table :documents do |t|
      t.string :titre
      t.string :content
      t.integer :user_id
     # t.string :integer

      t.timestamps
    end
  end
end
