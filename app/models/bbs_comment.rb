class BbsComment < ActiveRecord::Base
  acts_as_paranoid

  attr_accessible :bbs_thread_id, :body, :password
end
