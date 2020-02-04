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
         
        title.map {|t|t != "Won't Believe" && t != "Secret" && t != "Top [number]" && t != "Guess"}
          errors.add(:title, "Oh there is nothing in title")
       end
   end
end
