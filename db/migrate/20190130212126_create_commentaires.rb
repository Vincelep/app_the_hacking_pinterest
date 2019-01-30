class CreateCommentaires < ActiveRecord::Migration[5.2]
  def change
    create_table :commentaires do |t|
			t.text :body
      t.belongs_to :user, index: true
      t.timestamps
    end
  end
end
