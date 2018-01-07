class Article < ApplicationRecord
   belongs_to :User, required: false
end
