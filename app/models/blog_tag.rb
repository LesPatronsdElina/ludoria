class BlogTag < ApplicationRecord
  has_many :blog_article_tags
end
