# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
puts 'delete data'
BlogPhoto.destroy_all
BlogArticle.destroy_all

puts "Create BlogArticles"
article = BlogArticle.new(title: "La prise de mesure",
                content: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Mauris vehicula, lorem eu eleifend suscipit, lacus tellus tempor diam, ut euismod massa massa vel neque. Nam ultrices mi ac lacus congue vulputate sed eu magna. Phasellus ac semper nisl. In consectetur libero a maximus congue. Sed ultricies, arcu nec mattis commodo, libero metus lobortis tortor, sit amet congue lectus urna facilisis libero. Donec eget lorem finibus, lacinia metus et, commodo mauris. Vestibulum facilisis, metus nec pharetra mollis, sem mi finibus orci, sed interdum lorem lectus et odio. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Duis porttitor tempor ullamcorper. Fusce ut luctus elit, faucibus scelerisque lacus. Curabitur scelerisque justo eget malesuada consectetur. Ut quis enim sit amet libero imperdiet maximus ut non sapien. Interdum et malesuada fames ac ante ipsum primis in faucibus. Curabitur sodales felis vitae metus maximus imperdiet. Morbi mauris ligula, efficitur at lorem nec, aliquam efficitur ante.\nCras vitae lacus purus. Mauris non sagittis justo. Fusce a nunc orci. Maecenas laoreet diam sed justo tristique tristique. Maecenas non urna aliquet, finibus turpis malesuada, efficitur libero. Interdum et malesuada fames ac ante ipsum primis in faucibus. Maecenas tempor blandit turpis, et porta urna consequat nec. Suspendisse pharetra risus eros, quis tristique elit aliquam a.")
article.remote_cover_picture_url = "https://images.pexels.com/photos/461035/pexels-photo-461035.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=750&w=1260"
article.save

article2 = BlogArticle.new(title: "Tracé du corsage de base",
                content: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Mauris vehicula, lorem eu eleifend suscipit, lacus tellus tempor diam, ut euismod massa massa vel neque. Nam ultrices mi ac lacus congue vulputate sed eu magna. Phasellus ac semper nisl. In consectetur libero a maximus congue. Sed ultricies, arcu nec mattis commodo, libero metus lobortis tortor, sit amet congue lectus urna facilisis libero. Donec eget lorem finibus, lacinia metus et, commodo mauris. Vestibulum facilisis, metus nec pharetra mollis, sem mi finibus orci, sed interdum lorem lectus et odio. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Duis porttitor tempor ullamcorper. Fusce ut luctus elit, faucibus scelerisque lacus. Curabitur scelerisque justo eget malesuada consectetur. Ut quis enim sit amet libero imperdiet maximus ut non sapien. Interdum et malesuada fames ac ante ipsum primis in faucibus. Curabitur sodales felis vitae metus maximus imperdiet. Morbi mauris ligula, efficitur at lorem nec, aliquam efficitur ante.\nCras vitae lacus purus. Mauris non sagittis justo. Fusce a nunc orci. Maecenas laoreet diam sed justo tristique tristique. Maecenas non urna aliquet, finibus turpis malesuada, efficitur libero. Interdum et malesuada fames ac ante ipsum primis in faucibus. Maecenas tempor blandit turpis, et porta urna consequat nec. Suspendisse pharetra risus eros, quis tristique elit aliquam a.")
article2.remote_cover_picture_url = "https://images.pexels.com/photos/1409217/pexels-photo-1409217.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=750&w=1260"
article2.save

article3 = BlogArticle.new(title: "Montage du corsage de base",
                content: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Mauris vehicula, lorem eu eleifend suscipit, lacus tellus tempor diam, ut euismod massa massa vel neque. Nam ultrices mi ac lacus congue vulputate sed eu magna. Phasellus ac semper nisl. In consectetur libero a maximus congue. Sed ultricies, arcu nec mattis commodo, libero metus lobortis tortor, sit amet congue lectus urna facilisis libero. Donec eget lorem finibus, lacinia metus et, commodo mauris. Vestibulum facilisis, metus nec pharetra mollis, sem mi finibus orci, sed interdum lorem lectus et odio. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Duis porttitor tempor ullamcorper. Fusce ut luctus elit, faucibus scelerisque lacus. Curabitur scelerisque justo eget malesuada consectetur. Ut quis enim sit amet libero imperdiet maximus ut non sapien. Interdum et malesuada fames ac ante ipsum primis in faucibus. Curabitur sodales felis vitae metus maximus imperdiet. Morbi mauris ligula, efficitur at lorem nec, aliquam efficitur ante.\nCras vitae lacus purus. Mauris non sagittis justo. Fusce a nunc orci. Maecenas laoreet diam sed justo tristique tristique. Maecenas non urna aliquet, finibus turpis malesuada, efficitur libero. Interdum et malesuada fames ac ante ipsum primis in faucibus. Maecenas tempor blandit turpis, et porta urna consequat nec. Suspendisse pharetra risus eros, quis tristique elit aliquam a.")
article3.remote_cover_picture_url = "https://images.unsplash.com/photo-1517840545241-b491010a8af4?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=800&q=60"
article3.save

puts "Create photos for article"
blog_photo = article.blog_photos.new
blog_photo.remote_photo_url = "https://res.cloudinary.com/kentlay/image/upload/v1554308519/Drawing2.png"
blog_photo.save

photo_article2_urls = [
  "https://images.unsplash.com/photo-1516707471165-777029111409?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=800&q=60",
  "https://images.unsplash.com/photo-1516783154360-123b392d0833?ixlib=rb-1.2.1&auto=format&fit=crop&w=800&q=60",
  "https://images.unsplash.com/photo-1524648829700-99c448a9e88d?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=800&q=60",
  "https://images.unsplash.com/photo-1517840035140-2d32eeb59190?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=800&q=60",
  "https://images.unsplash.com/photo-1518732836484-bd257665c9d1?ixlib=rb-1.2.1&auto=format&fit=crop&w=800&q=60",
  "https://images.unsplash.com/photo-1516266967839-c9ab062fabc1?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=800&q=60",
]
photo_article2_urls.each do |photo_url|
  blog_photo2 = article2.blog_photos.new
  blog_photo2.remote_photo_url = photo_url
  blog_photo2.save
end
