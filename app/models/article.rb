class Article < ActiveRecord::Base  # (<) is read as subclass from
    #this inforces rules on the table in what to data to accept 
    validates :title, presence: true, length: {minimum: 3, maximum: 50}
    validates :description, presence: true, length: {minimum: 3, maximum: 50}
end