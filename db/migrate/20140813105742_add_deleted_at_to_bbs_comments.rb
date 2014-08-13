class AddDeletedAtToBbsComments < ActiveRecord::Migration
  def change
    add_column :bbs_comments, :deleted_at, :datetime
    add_index :bbs_comments, :deleted_at
  end
end
