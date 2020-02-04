class Post < ActiveRecord::Base
   validates :title, presence: true
   validates :content, length: { minimum: 250 }
   validates :summary, length: { maximum: 250 }
   validates :category, inclusion: { in: %w(Fiction Non-Fiction) }
   validate :clickbait
   def clickbait
     
       if title == nil
         errors.add(:title, "Oh there is nothing in title")
       else
          #"Won't Believe", "Secret", "Top [number]", or "Guess"
       end
   end
end
