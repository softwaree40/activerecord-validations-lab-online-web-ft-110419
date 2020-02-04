class Author < ActiveRecord::Base
      validates :name, presence: true
<<<<<<< HEAD
      validates :phone_number, length: {minimum: 10 }
      validates :name, uniqueness: true
      
=======
      validates :phone_number, length: { minimum: 10 }
      validates :name, uniqueness: true
  
>>>>>>> 5950ea001f1791409aebc48b79ca0540481effec
end
