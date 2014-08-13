class BbsThread < ActiveRecord::Base
  acts_as_paranoid

  attr_accessible :password, :title
end
