class Diary < ActiveRecord::Base
    validates :title, presence: true
end
