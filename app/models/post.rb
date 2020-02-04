class Post < ActiveRecord::Base
   validates :title, presence: true
<<<<<<< HEAD
   validates :content, length: { minimum: 250 }
   validates :summary, length: { maximum: 250 }
   validates :category, inclusion: { in: %w(Fiction Non-Fiction) }
=======
>>>>>>> 5950ea001f1791409aebc48b79ca0540481effec
end
