# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or newd alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.new([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.new(name: 'Luke', movie: movies.first)

puts "Destroying all"

User.destroy_all
Monument.destroy_all
Review.destroy_all
Booking.destroy_all

puts "Finished!"

puts "Creating seeds...."

user_images = ["https://avatars1.githubusercontent.com/u/71550958?s=400&u=5d9c2518ae08db91fa3742fff381ec6a364efd1d&v=4","https://avatars3.githubusercontent.com/u/61694823?s=460&u=41edf0546a675388bb39e187a44770b53bf500e0&v=4","https://avatars2.githubusercontent.com/u/71385272?s=460&u=d515496e33750499be8feae11fa4ce6a92613b3d&v=4", "https://cv.jpheos.fr/assets/images/jpheos.jpg"]

monument_images = ["https://static.nationalgeographic.fr/files/styles/image_3200/public/babylonian-oasis-artist-rendering_0.jpg?w=1600","https://www.merveilles-du-monde.com/Sept/images/Jardins-de-Babylone/Jardins-de-Babylone-01.jpg", "https://www.merveilles-du-monde.com/Sept/images/Jardins-de-Babylone/Jardins-de-Babylone-02.jpg"]




user1 = User.new(first_name: "Toto", last_name: "LeToto", email: "toto@toto.com", password: "123456", host: true)
user2 = User.new(first_name: "Tata", last_name: "LaTata", email: "tata@toto.com", password: "123456", host: false)
user3 = User.new(first_name: "Tutu", last_name: "LeTutu", email: "tutu@toto.com", password: "123456", host: false)
user4 = User.new(first_name: "Titi", last_name: "LeTiti", email: "titi@toto.com", password: "123456", host: true)


user1.photo.attach(io: URI.open(user_images[0]), filename: 'user.jpg', content_type: 'image/jpg')
user2.photo.attach(io: URI.open(user_images[1]), filename: 'user.jpg', content_type: 'image/jpg')
user3.photo.attach(io: URI.open(user_images[2]), filename: 'user.jpg', content_type: 'image/jpg')
user4.photo.attach(io: URI.open(user_images[3]), filename: 'user.jpg', content_type: 'image/jpg')

user1.save!
user2.save!
user3.save!
user4.save!

monument1 = Monument.new(name: "Les Jardins Suspendus", price_per_night: 7, description: "Les jardins suspendus de Babylone, c'est vraiment un chouette potager", average_rating: 5)
monument2 = Monument.new(name: "Le Taj Mahal", price_per_night: 10, description: "Le Taj Mahal, petit monument sympatique", average_rating: 4)
monument3 = Monument.new(name: "Chichen Itza", price_per_night: 8, description: "La plus chouette des pyramides!", average_rating: 4)
monument4 = Monument.new(name: "Petra", price_per_night: 6, description: "Le desert, c'est super!", average_rating: 5)
monument5 = Monument.new(name: "Machu Pichu", price_per_night: 9, description: "La montagne, ça vous gagne!", average_rating: 3)
monument6 = Monument.new(name: "Colisée", price_per_night: 5, description: "En état de ruine depuis la dernière soirée", average_rating: 2)


monument1.photos.attach(io: URI.open(monument_images[0]), filename: 'monument.jpg', content_type: 'image/jpg')
monument1.photos.attach(io: URI.open(monument_images[1]), filename: 'monument.jpg', content_type: 'image/jpg')
monument1.photos.attach(io: URI.open(monument_images[2]), filename: 'monument.jpg', content_type: 'image/jpg')

monument2.photos.attach(io: URI.open('https://img.itinari.com/pages/images/original/9f615ca8-8bbb-46a6-85a2-b4825f815ba1-44829498324_77297564a1_k.jpg?ch=DPR&dpr=1&w=1600&s=2e8624c73358e5afd755157c2c739c57'), filename: 'monument.jpg', content_type: 'image/jpg')
monument2.photos.attach(io: URI.open("https://i.pinimg.com/564x/11/c5/1d/11c51d68ebec40f6e9cc1e7326afb197.jpg"), filename: 'monument.jpg', content_type: 'image/jpg')
monument2.photos.attach(io: URI.open("https://i.pinimg.com/564x/c8/3f/16/c83f16696a8cfb700897cb68446c0716.jpg"), filename: 'monument.jpg', content_type: 'image/jpg')

monument3.photos.attach(io: URI.open("https://mexique-decouverte.com/wp-content/uploads/2019/09/chichen-itza-merveilles.jpg"), filename: 'monument.jpg', content_type: 'image/jpg')
monument3.photos.attach(io: URI.open("https://media.tacdn.com/media/attractions-splice-spp-674x446/07/47/d6/7d.jpg"), filename: 'monument.jpg', content_type: 'image/jpg')
monument3.photos.attach(io: URI.open("https://www.abc-latina.com/images/2018/045-chichen-itza-mexique.jpg"), filename: 'monument.jpg', content_type: 'image/jpg')

monument4.photos.attach(io: URI.open("https://static.nationalgeographic.fr/files/styles/image_3200/public/petra-world-heritage-jordan.jpg?w=1600&h=900"), filename: 'monument.jpg', content_type: 'image/jpg')
monument4.photos.attach(io: URI.open("https://www.les-covoyageurs.com/ressources/images-lieux/15-visiter-petra-jordanie.jpg"), filename: 'monument.jpg', content_type: 'image/jpg')
monument4.photos.attach(io: URI.open("https://images4.bovpg.net/r/back/fr/sale/5f3f912809fa8o.jpg"), filename: 'monument.jpg', content_type: 'image/jpg')

monument5.photos.attach(io: URI.open("https://cdn.getyourguide.com/img/tour/5d186c3f36cbf.jpeg/146.jpg"), filename: 'monument.jpg', content_type: 'image/jpg')
monument5.photos.attach(io: URI.open("https://cdn.generationvoyage.fr/2019/11/sur-les-traces-du-machu-picchu-dans-les-nuages-perou.jpg"), filename: 'monument.jpg', content_type: 'image/jpg')
monument5.photos.attach(io: URI.open("https://www.mademoiselle-voyage.fr/wp-content/uploads/2016/01/perou-machu-picchu-mademoiselle-voyage-1440x960.jpg"), filename: 'monument.jpg', content_type: 'image/jpg')

monument6.photos.attach(io: URI.open("https://www.voyageway.com/wp-content/uploads/2012/11/visite-colisee-rome-1280x720.jpg"), filename: 'monument.jpg', content_type: 'image/jpg')
monument6.photos.attach(io: URI.open("https://www.merveilles-du-monde.com/Colisee/images/Photos/Colisee4.jpg"), filename: 'monument.jpg', content_type: 'image/jpg')
monument6.photos.attach(io: URI.open("https://www.batiactu.com/images/auto/620-465-c/20120828_145707_colosseuminromeitaly-april2007-diliff.jpg"), filename: 'monument.jpg', content_type: 'image/jpg')



monument1.user = user1
monument2.user = user1
monument3.user = user1
monument4.user = user1
monument5.user = user4
monument6.user = user4

monument1.save!
monument2.save!
monument3.save!
monument4.save!
monument5.save!
monument6.save!



booking1 = Booking.new(date_of_arrival: "Tue, 10 Nov 2020", duration: 14)
booking2 = Booking.new(date_of_arrival: "Tue, 10 Nov 2020", duration: 7)
booking3 = Booking.new(date_of_arrival: "Tue, 10 Nov 2020", duration: 3)



booking1.user = user2
booking1.monument = monument1
booking1.save!


booking2.user = user3
booking2.monument = monument3
booking2.save!


booking3.user = user2
booking3.monument = monument2
booking3.save!


review1 = Review.new(rating: 4, title: "Super!", content: "J'ai passé un super bon moment")
review2 = Review.new(rating: 5, title: "Jai ADORE!", content: "Cétait vraiment génial, à réserver sans hésiter!")
review3 = Review.new(rating: 1, title: "NUL!", content: "J'ai pas du tout kiffé")
review4 = Review.new(rating: 4, title: "Super!", content: "Notre séjour à été plus que parfait, endroit paradisiaque et qui vaut le coup d'œil. Christophe nous a parfaitement accueilli et les petits attentions ne manquaient pas. Merci pour ce week-end parfait")
review5 = Review.new(rating: 4, title: "Great", content: "Une belle cabane confortable, joliment décorée avec tout l équipement nécessaire!! Un accueil chaleureux, un petit déjeuner complet avec de bons produits...bref un endroit au calme où les petits comme les grands se sont régalés!!")
review6 = Review.new(rating: 4, title: "Amazing", content: "Nous avons passé un merveilleux sejours chez Christophe, ce fût une atmosphère calme et apaisante qui donne un aspect feerique une foiss immergés dans le bain nordique ou blottis sous un plaid pres du feux ! Je les recommande vivement !")
review7 = Review.new(rating: 4, title: "Waouh", content: "Endroit unique, accueil chaleureux et nombreuses petites attentions qui font un séjour parfait ! La cabane du beau vallon est absolument à visiter !")
review8 = Review.new(rating: 4, title: "Trop top", content: "Magnifique, Magique, Fantastique,... Tout était parfait !")
review9 = Review.new(rating: 4, title: "J'ai kiffé", content: "Nous avons passé une nuit magique dans cette cabane pleine de charme. Christophe est un hôte très attentionné qui a le soucis du détail. Nous recommandons cette expérience sans hésiter !")
review10 = Review.new(rating: 4, title: "Je recommande", content: "Nous avons passé un séjour enchanté et hors du temps dans la cabane de Christophe et Sophie, tout était parfait.")


review1.user = user2
review1.booking = booking2
review1.save!

review2.user = user3
review2.booking = booking3
review2.save!

review3.user = user2
review3.booking = booking1
review3.save!

review4.user = user2
review4.booking = booking2
review4.save!

review5.user = user3
review5.booking = booking2
review5.save!

review6.user = user1
review6.booking = booking2
review6.save!

review7.user = user4
review7.booking = booking2
review7.save!

review1.user = user2
review1.booking = booking2
review1.save!

review8.user = user2
review8.booking = booking2
review8.save!

review9.user = user3
review9.booking = booking2
review9.save!

review10.user = user1
review10.booking = booking2
review10.save!


puts "Creating done!"
