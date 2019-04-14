class BlogArticleTag < ApplicationRecord
  belongs_to :blog_article
  belongs_to :blog_tag
end
