class Comment < ActiveRecord::Base
  belongs_to :feature
  belongs_to :user
end
