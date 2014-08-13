class CreateBbsThreads < ActiveRecord::Migration
  def change
    create_table :bbs_threads do |t|
      t.string :title
      t.string :password

      t.timestamps
    end
  end
end
