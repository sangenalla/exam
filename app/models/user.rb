class User < ActiveRecord::Base
  attr_accessible :exam_id, :name, :score
end
