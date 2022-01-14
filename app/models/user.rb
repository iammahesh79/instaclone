class User < ApplicationRecord
    has_one :user_detail
    before_save :merge_names
    validates :first_name,:age, :last_name, presence: true
    validates :age, numericality: true
    validates :first_name, length: { minimum: 3 }
    


    def merge_names
        self.first_name = self.first_name + "  " + self.last_name
     end
end
