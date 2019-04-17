puts 'delete data'
BlogPhoto.destroy_all
BlogArticle.destroy_all
UserMeasure.destroy_all
Measure.destroy_all
User.destroy_all

puts "create Measure"
#DEVANT HAUT DU CORPS
Measure.create(name: "A", description: "Tour de cou", position: 1, important: true)
Measure.create(name: "B", description: "Tour d'encolure", position: 2, important: true)
Measure.create(name: "B1", description: "Largeur d'encolure devant", position: 3, important: true)
Measure.create(name: "B2", description: "Profondeur d'encolure devant", position: 4, important: true)
Measure.create(name: "C1", description: "Carrure Devant", position: 5, important: true)
Measure.create(name: "C2", description: "Base du cou / ligne de Carrure", position: 6, important: true)
Measure.create(name: "C3", description: "Carrure Dos", position: 7, important: true)
Measure.create(name: "D1", description: "Tour de poitrine complet", position: 8, important: true)
Measure.create(name: "D2", description: "Ecart saillants", position: 9, important: true)
Measure.create(name: "D3", description: "Saillant /côté", position: 10, important: true)
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
article = BlogArticle.new(title: "La prise de mesures, c’est mieux à deux!",
                content: "<h2><span style='color: #85C4BF;font-size:20px;font-weight:300'>LA PRISE DE MESURES, C’EST MIEUX, TENUE ET POSTURE</span></h2>
<p>C’est parti avec des conseils pour ses mettre dans des bonnes conditions pour réaliser sa prise de mesures.</p>
<p><strong>A 2 c’est mieux</strong></p>
<p>Je vous répète ce que vous avez entendu au moins 1000 fois, mais être deux est indispensable pour réaliser une bonne prise de mesures. Alors quand vous déciderez d’arrêter de vous contorsionner devant le miroir de votre salle de bain, ou de jurer quand vos mesures dos ne sont pas exactes, vous prendrez probablement votre téléphone pour appeler une copine et passer un moment couture sympa , ENSEMBLE! Contrairement à ce que l’on pense, la couture n’est pas un plaisir solitaire!</p>
<p><strong>Votre tenue</strong></p>
<p>Je vous conseille de porter une tenue très moulante mais confortable. Pour le bas n’importe quel collant fera l’affaire. Pour le haut: débardeur ou t-shirt avec des manches, tout fonctionne mais s’il vous plaît avec beaucoup d’élastane pour bien épouser vos formes . Et on oublie pas de porter LE soutien gorge que l’on prévoit de porter avec LA super tenue qu’on va coudre.</p>
<p>A Eviter: les bodies, les maillots de bain, les combinaisons de gym hyper sexy qui écrasent la poitrine – (et donc faussent les mesures)</p>
<p><strong>Votre posture</strong></p>
<p>Oubliez votre grand-mère qui vous a si souvent rappelé de vous tenir droite quand vous étiez petite fille. On ne rentre pas le ventre, on ne sert pas les fesses et on ne tire pas ses épaules vers l’arrière. On est juste soi, avec sa posture à soi. On est décontractée et on sourit!!!</p>


<h2><span style='color: #85C4BF;font-size:20px;font-weight:300'>MATÉRIEL ET MÉTHODE</span></h2>
<p>L’indispensable est bien sûr le mètre ruban, mais quelques petits amis lui tiennent compagnie.</p>

<h3><strong><span style='font-size:18px'>I. Le matériel</span></strong></h3>
<p>Le mètre ruban</p>
<p>Avec tout ce que vous lui faites subir, le mètre ruban se déforme au fil des utilisations. De temps en temps, pensez à vérifier son exactitude à l’aide d’un mètre de bricolage ou une règle de tapissier en métal.</p>
<p>Un crayon à maquillage</p>
<p>Il sert à marquer les points d’encolure et la pente d’épaule… Très utile!! Privilégiez un crayon gras de couleur foncée dont vous chauffez légèrement la pointe avant de vous en servir.</p>
<p>un papier et un crayon</p>
<p>Lister sur une feuille toutes les mesures que vous allez effectuer. Des filles très sympas ont fait des listes de mesures que vous trouverez en farfouillant sur le net. Prenez les mesures dans l’ordre dans lequel elles se présentent et notez-les au fur et à mesure.</p>
<p>une équerre</p>
<p>Aussi bizarre que cela puisse être, elles peuvent s’avérer très utiles pour mesurer les carrures dos et devant. On place une équerre sous chaque aisselle et en conservant attitude normale, on mesure l’écart entre les deux équerres.</p>
<h3><strong><span style='font-size:18px'>II. La méthode</strong></span></h3>
<p><strong>Bien parallèle au sol</strong></p>
<p>Lorsque l’on prend les mesures horizontales (tours de poitrine, taille, écarts saillants, hanches), s’assurer d’être bien parallèle au sol.</p>
<p><strong>Où se tient celui qui prend les mesures?</strong></p>
<p>Ben, vous me direz, c’est une grosse lapalissade Madame. Quand la mesure est sur le devant on se place face à la personne – Simple. Quand la mesure est dans le dos on se place derrière la personne – Basic. Quand la mesure est située sur le côté, on se place face à la mesure à prendre, donc sur le côté de la personne – Simple et Basic à la fois. La réponse est OUI.</p>
<p>Il y a juste une exception. Quand on prend la mesure du tour de poitrine, il vaut mieux se placer dans le dos de la personne, le mètre passant par les deux saillants (tétons ou titis – dans le vrai langage de la vie de tous les jours). Si on se place devant, le mètre à tendance à s’affaisser dans le dos. Si on se place à l’arrière, on peut facilement équilibrer la trajectoire du mètre ruban.</p>
<p><strong>Pour une bonne jonction</strong></p>
<p>On essaie de respecter les axes. Pour une jonction sur le devant on utilise la ligne imaginaire du milieu devant, pareil pour le dos et le côté.</p>
<p>La partie métallique du bord du mètre vient se placer sur la continuité du ruban.</p>
<p>Insérer un doigt sous la jonction pour une mesure plus réaliste incluant un minimum de confort.</p>
", visible_on_home: true)
article.remote_cover_picture_url = "https://res.cloudinary.com/kentlay/image/upload/v1554806418/Comment_bien_prendre_ses_mesures.png"
article.save

article2 = BlogArticle.new(title: "C’est trop petit! c’est trop grand! Bref, ca va pas!",
                content: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Mauris vehicula, lorem eu eleifend suscipit, lacus tellus tempor diam, ut euismod massa massa vel neque. Nam ultrices mi ac lacus congue vulputate sed eu magna. Phasellus ac semper nisl. In consectetur libero a maximus congue. Sed ultricies, arcu nec mattis commodo, libero metus lobortis tortor, sit amet congue lectus urna facilisis libero. Donec eget lorem finibus, lacinia metus et, commodo mauris. Vestibulum facilisis, metus nec pharetra mollis, sem mi finibus orci, sed interdum lorem lectus et odio. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Duis porttitor tempor ullamcorper. Fusce ut luctus elit, faucibus scelerisque lacus. Curabitur scelerisque justo eget malesuada consectetur. Ut quis enim sit amet libero imperdiet maximus ut non sapien. Interdum et malesuada fames ac ante ipsum primis in faucibus. Curabitur sodales felis vitae metus maximus imperdiet. Morbi mauris ligula, efficitur at lorem nec, aliquam efficitur ante.\nCras vitae lacus purus. Mauris non sagittis justo. Fusce a nunc orci. Maecenas laoreet diam sed justo tristique tristique. Maecenas non urna aliquet, finibus turpis malesuada, efficitur libero. Interdum et malesuada fames ac ante ipsum primis in faucibus. Maecenas tempor blandit turpis, et porta urna consequat nec. Suspendisse pharetra risus eros, quis tristique elit aliquam a.",
                visible_on_home: true)
article2.remote_cover_picture_url = "https://res.cloudinary.com/kentlay/image/upload/v1554806430/Pourquoi_jamais_rien_ne_me_va.png"
article2.save

article3 = BlogArticle.new(title: "La B à BA du modélisme de mode",
                content: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Mauris vehicula, lorem eu eleifend suscipit, lacus tellus tempor diam, ut euismod massa massa vel neque. Nam ultrices mi ac lacus congue vulputate sed eu magna. Phasellus ac semper nisl. In consectetur libero a maximus congue. Sed ultricies, arcu nec mattis commodo, libero metus lobortis tortor, sit amet congue lectus urna facilisis libero. Donec eget lorem finibus, lacinia metus et, commodo mauris. Vestibulum facilisis, metus nec pharetra mollis, sem mi finibus orci, sed interdum lorem lectus et odio. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Duis porttitor tempor ullamcorper. Fusce ut luctus elit, faucibus scelerisque lacus. Curabitur scelerisque justo eget malesuada consectetur. Ut quis enim sit amet libero imperdiet maximus ut non sapien. Interdum et malesuada fames ac ante ipsum primis in faucibus. Curabitur sodales felis vitae metus maximus imperdiet. Morbi mauris ligula, efficitur at lorem nec, aliquam efficitur ante.\nCras vitae lacus purus. Mauris non sagittis justo. Fusce a nunc orci. Maecenas laoreet diam sed justo tristique tristique. Maecenas non urna aliquet, finibus turpis malesuada, efficitur libero. Interdum et malesuada fames ac ante ipsum primis in faucibus. Maecenas tempor blandit turpis, et porta urna consequat nec. Suspendisse pharetra risus eros, quis tristique elit aliquam a.",
                visible_on_home: true)
article3.remote_cover_picture_url = "https://res.cloudinary.com/kentlay/image/upload/v1554806407/a_quoi_ca_sert_les_corsages_de_base.png"
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
puts 'create admin'

User.create(email:"admin@ludoria.fr", first_name: "admin", last_name: "ludoria", password: "azerty", admin: true, conditions_validation: true)
