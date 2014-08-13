class AddDeletedAtToBbsThreads < ActiveRecord::Migration
  def change
    add_column :bbs_threads, :deleted_at, :datetime
    add_index :bbs_threads, :deleted_at
  end
end
