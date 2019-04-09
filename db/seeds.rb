puts 'delete data'
BlogPhoto.destroy_all
BlogArticle.destroy_all
UserMeasure.destroy_all
Measure.destroy_all

puts "create Measure"
#DEVANT HAUT DU CORPS
Measure.create(name: "A", description: "Tour de cou", position: 1)
Measure.create(name: "B", description: "Tour d'encolure", position: 2)
Measure.create(name: "B1", description: "Largeur d'encolure devant", position: 3)
Measure.create(name: "B2", description: "Profondeur d'encolure devant", position: 4)
Measure.create(name: "C1", description: "Carrure Devant", position: 5)
Measure.create(name: "C2", description: "Base du cou / ligne de Carrure", position: 6)
Measure.create(name: "C3", description: "Carrure Dos", position: 7)
Measure.create(name: "D1", description: "Tour de poitrine complet", position: 8)
Measure.create(name: "D2", description: "Ecart saillants", position: 9)
Measure.create(name: "D3", description: "Saillant /côté", position: 10)
Measure.create(name: "D4", description: "Milieu saillant / Milieu Poitrine", position: 11)
Measure.create(name: "D5", description: "Base du cou / saillant", position: 12)
Measure.create(name: "D6", description: "Saillant / pente d'epaule", position: 13)
Measure.create(name: "E", description: "Pente d'épaule", position: 14)
Measure.create(name: "F1", description: "Tour complet sous-poitrine", position: 15)
Measure.create(name: "F2", description: "Mesure sous-poitrine Devant", position: 16)
Measure.create(name: "G1", description: "Point d'encolure (ENC3) / Saillant", position: 17)
Measure.create(name: "G2", description: "Saillant / Sous-poitrine", position: 18)
Measure.create(name: "G3", description: "sous poitrine / taille", position: 19)
Measure.create(name: "G4", description: "saillant / taille", position: 20)
Measure.create(name: "H", description: "Longueur côté", position: 21)
#DOS HAUT DU CORPS
Measure.create(name: "B3", description: "Largeur d'encolure dos", position: 22)
Measure.create(name: "B4", description: "Profondeur d'encolure dos", position: 23)
Measure.create(name: "J1", description: "Base du cou (ENC4) / Milieu Taille dos", position: 24)
Measure.create(name: "J2", description: "Point d'encolure (ENC3) / Milieu taille dos", position: 25)
Measure.create(name: "J3", description: "Point d'emmanchure EM1 / Milieu taille dos", position: 26)
Measure.create(name: "J4", description: "Base du cou (ENC4) / Milieu Carrure dos", position: 27)
Measure.create(name: "J5", description: "Point d'encolure (ENC3) / Milieu Carrure dos", position: 28)
Measure.create(name: "J6", description: "Point d'emmanchure EM1 / Milieu Carrure dos", position: 29)
#DEVANT BAS DU CORPS
Measure.create(name: "K1", description: "Tour de taille complet", position: 30)
Measure.create(name: "K2", description: "Tour de petites hanches complet", position: 31)
Measure.create(name: "K3", description: "Tour de hanches complet", position: 32)
Measure.create(name: "K4", description: "Tour de sous-fesses complet", position: 33)
Measure.create(name: "L1", description: "Milieu devant taille /Milieu devant petites hanches", position: 34)
Measure.create(name: "L2", description: "Milieu devant petites hanches / ML devant Hanches", position: 35)
Measure.create(name: "L3", description: "ML devant hanches / ML devant sous fesses", position: 36)
Measure.create(name: "M1", description: "Ligne de coté taille / hanche", position: 37)
Measure.create(name: "M2", description: "Ligne de coté taille / sous fesses", position: 38)
Measure.create(name: "N1", description: "ML devant hanches / Taille ext côté", position: 39)
Measure.create(name: "N2", description: "ML devant hanches / Petites hanches ext côté", position: 40)
Measure.create(name: "N3", description: "ML devant hanches / Sous fesse extérieur côté", position: 41)
Measure.create(name: "N4", description: "ML devant petites hanches / petites hanches extérieur côté", position: 42)
#DOS BAS DU CORPS
Measure.create(name: "O1", description: "Milieu devant taille /Milieu dos petites hanches", position: 43)
Measure.create(name: "O2", description: "Milieu dos petites hanches / ML dos Hanches", position: 44)
Measure.create(name: "O3", description: "ML dos hanches / ML dos sous fesses", position: 45)
Measure.create(name: "P", description: "ML dos hanches / hanches extérieur côté", position: 46)
Measure.create(name: "Q1", description: "ML dos hanches / Taille ext côté", position: 47)
Measure.create(name: "Q2", description: "ML dos hanches / Petites hanches ext côté", position: 48)
Measure.create(name: "Q3", description: "ML dos hanches / Sous fesse extérieur côté", position: 49)

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
User.create!(email: 'admin@ludoria.com', password: 'azerty', password_confirmation: 'azerty', first_name: 'admin', last_name: 'ludoria', conditions_validation: true, admin: true) if Rails.env.development?
