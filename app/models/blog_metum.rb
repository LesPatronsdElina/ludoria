class BlogMetum < ApplicationRecord
  belongs_to :blog_article, optional: true
end
