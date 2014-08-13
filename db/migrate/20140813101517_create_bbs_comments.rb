class CreateBbsComments < ActiveRecord::Migration
  def change
    create_table :bbs_comments do |t|
      t.integer :bbs_thread_id
      t.string :body
      t.string :password

      t.timestamps
    end
  end
end
