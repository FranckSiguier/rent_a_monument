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

monument1 = Monument.new(address: 'Ridge Rd, Simla Nagar, Malabar Hill, Mumbai, Maharashtra 400006, Inde', name: "Les Jardins Suspendus", price_per_night: 7, description: "Les jardins suspendus de Babylone sont un édifice antique, considéré comme une des Sept Merveilles du monde antique. Ils apparaissent dans les écrits de plusieurs auteurs grecs et romains antiques (Diodore de Sicile, Strabon, Philon d'Alexandrie, etc.), qui s'inspirent tous de sources plus anciennes disparues, dont le prêtre babylonien Bérose. C'est à ce dernier que l'on doit l'histoire de la construction de ces jardins par Nabuchodonosor II afin de rappeler à son épouse, Amytis de Médie, les montagnes boisées de son pays natal.", average_rating: 5)
monument2 = Monument.new(address: 'Taj Mahal, Agra, Agra, Inde ', name: "Le Taj Mahal", price_per_night: 10, description: "Le Taj Mahal, petit monument sympatique, Le Taj Mahal est considéré comme un joyau de l'architecture moghole, un style qui combine des éléments architecturaux des architectures islamique, iranienne, ottomane et indienne.Il est considéré que l'architecte principal fut Ustad Ahmad Lahauri7,8 de Lahorek 1.", average_rating: 4)
monument3 = Monument.new(address: 'Chichén-Itzá, Yucatán, Mexique', name: "Chichen Itza", price_per_night: 8, description: "La plus chouette des pyramides! Chichén Itzá est une ancienne ville maya située entre Valladolid et Mérida dans la péninsule du Yucatán, au Mexique. Chichén Itzá fut probablement, au xe siècle, le principal centre religieux du Yucatán ; il reste aujourd’hui l’un des sites archéologiques les plus importants et les plus visités de la région.", average_rating: 4)
monument4 = Monument.new(address: 'Main street, Wadi Musa Down Town Wadi Musa, Jordanie', name: "Petra", price_per_night: 6, description: "Le desert, c'est super! Pétra est un site localisé dans un cirque rocheux structuré par plusieurs failles creusées par des wadis, qui constituent les principales voies de communication. L'axe principal est le wadi Mousa, qui traverse le site d'est en ouest, d'abord dans la gorge du Sîq (« le fossé ») située à l'est, dont l'entrée, précédée par les « tombeaux Djinns », était surmontée d'une grande arche aujourd'hui effondrée. Ce défilé, traversant le massif du Khubtha, constituait la voie d'accès principale pour parvenir à Pétra, et avait été dallé dans l'Antiquité9.", average_rating: 5)
monument5 = Monument.new(address: '08680, Pérou', name: "Machu Picchu", price_per_night: 9, description: "La montagne, ça vous gagne! Machu Picchu (du quechua machu : vieille, et pikchu : montagne, sommet)N 1 est une ancienne cité inca du xve siècle au Pérou, perchée sur un promontoire rocheux qui unit les monts Machu Picchu et Huayna Picchu (« le Jeune Pic » en quechua) sur le versant oriental des Andes centrales. Son nom aurait été Pikchu ou Picho.", average_rating: 3)
monument6 = Monument.new(address: 'Piazza del Colosseo, 1, 00184 Roma RM, Italie', name: "Colisée", price_per_night: 5, description: "En état de ruine depuis la dernière soirée Le Colisée, à l'origine amphithéâtre Flavien (Colosseo en italien), est un immense amphithéâtre ovoïde situé dans le centre de la ville de Rome, entre l'Esquilin et le Cælius, le plus grand jamais construit dans l'Empire romain. Il est l'une des plus grandes œuvres de l'architecture et de l'ingénierie romaines.", average_rating: 2)


monument1.photos.attach(io: URI.open(monument_images[0]), filename: 'monument.jpg', content_type: 'image/jpg')
monument1.photos.attach(io: URI.open(monument_images[1]), filename: 'monument.jpg', content_type: 'image/jpg')
monument1.photos.attach(io: URI.open(monument_images[2]), filename: 'monument.jpg', content_type: 'image/jpg')

monument2.photos.attach(io: URI.open('https://img.itinari.com/pages/images/original/9f615ca8-8bbb-46a6-85a2-b4825f815ba1-44829498324_77297564a1_k.jpg?ch=DPR&dpr=1&w=1600&s=2e8624c73358e5afd755157c2c739c57'), filename: 'monument.jpg', content_type: 'image/jpg')
monument2.photos.attach(io: URI.open("https://i.pinimg.com/564x/11/c5/1d/11c51d68ebec40f6e9cc1e7326afb197.jpg"), filename: 'monument.jpg', content_type: 'image/jpg')
monument2.photos.attach(io: URI.open("https://i.pinimg.com/564x/c8/3f/16/c83f16696a8cfb700897cb68446c0716.jpg"), filename: 'monument.jpg', content_type: 'image/jpg')

monument3.photos.attach(io: URI.open("https://mexique-decouverte.com/wp-content/uploads/2019/09/chichen-itza-merveilles.jpg"), filename: 'monument.jpg', content_type: 'image/jpg')
monument3.photos.attach(io: URI.open("https://upload.wikimedia.org/wikipedia/commons/thumb/f/f4/La_Iglesia_1.jpg/800px-La_Iglesia_1.jpg"), filename: 'monument.jpg', content_type: 'image/jpg')
monument3.photos.attach(io: URI.open("https://upload.wikimedia.org/wikipedia/commons/thumb/7/76/Chichen_Itza_CastilloSub_ChacMool.jpg/1280px-Chichen_Itza_CastilloSub_ChacMool.jpg"), filename: 'monument.jpg', content_type: 'image/jpg')

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



booking1 = Booking.new(date_of_arrival: "Thu, 19 Nov 2020", duration: 7, date_of_departure:"Tue, 26 Nov 2020")
booking2 = Booking.new(date_of_arrival: "Thu, 19 Nov 2020", duration: 7, date_of_departure:"Tue, 26 Nov 2020")
booking3 = Booking.new(date_of_arrival: "Thu, 19 Nov 2020", duration: 7, date_of_departure:"Tue, 26 Nov 2020")
booking4 = Booking.new(date_of_arrival: "Fri, 20 Nov 2020", duration: 7, date_of_departure:"Fri, 27 Nov 2020")
booking5 = Booking.new(date_of_arrival: "Fri, 20 Nov 2020", duration: 7, date_of_departure:"Fri, 27 Nov 2020")
booking6 = Booking.new(date_of_arrival: "Fri, 20 Nov 2020", duration: 7, date_of_departure:"Fri, 27 Nov 2020")
booking7 = Booking.new(date_of_arrival: "Sun, 28 Nov 2020", duration: 2, date_of_departure:"Mon, 30 Nov 2020")
booking8 = Booking.new(date_of_arrival: "Sun, 28 Nov 2020", duration: 2, date_of_departure:"Mon, 30 Nov 2020")
booking9 = Booking.new(date_of_arrival: "Tue, 29 Nov 2020", duration: 1, date_of_departure:"Mon, 30 Nov 2020")
booking10 = Booking.new(date_of_arrival: "Thu, 29 Nov 2020", duration: 2, date_of_departure:"Tue, 1 Dec 2020")



booking1.user = user2
booking1.monument = monument1
booking1.save!


booking2.user = user3
booking2.monument = monument2
booking2.save!


booking3.user = user4
booking3.monument = monument3
booking3.save!

booking4.user = user2
booking4.monument = monument4
booking4.save!

booking5.user = user3
booking5.monument = monument5
booking5.save!

booking6.user = user1
booking6.monument = monument6
booking6.save!

booking7.user = user2
booking7.monument = monument1
booking7.save!

booking8.user = user3
booking8.monument = monument2
booking8.save!

booking9.user = user4
booking9.monument = monument5
booking9.save!

booking10.user = user1
booking10.monument = monument6
booking10.save!

review1 = Review.new(rating: 4, title: "Super!", content: "Merci pour ce moment hors du temps ...et un merci spécial à Patrick 😁 a bientôt")
review2 = Review.new(rating: 5, title: "Jai ADORE!", content: "Dépaysement garanti, nourriture excellente et respect de l'environnement.")
review3 = Review.new(rating: 3, title: "Cool", content: "Een echte ervaring. Niet zomaar een boomhutten, maar een met de nodige luxe.")
review4 = Review.new(rating: 4, title: "C'était chouette", content: "Nous avons particulièrement appréciés notre séjour. Le village et la cabane sont de véritables havres de paix.")
review5 = Review.new(rating: 5, title: "WAOU!", content: "Un endroit super, naturel, qui correspond à nos valeurs ! Un accueil chaleureux")
review6 = Review.new(rating: 3, title: "Pas mal", content: "eine ganz außergewöhnliche Unterkunft!! Mit viel Liebe zum Detail eingerichtet.")
review7 = Review.new(rating: 2, title: "Bof bof...", content: "Uniek en heel rustig! Volledig Eco!")
review8 = Review.new(rating: 1, title: "Je ne recommande pas...", content: "J'ai pas du tout kiffé")
review9 = Review.new(rating: 5, title: "Je recommande", content: "Un instant magique hors du temps!!!")
review10 = Review.new(rating: 4, title: "Tip-top", content: "Propre et confortable et l'hôte a pensé à tout, y compris laisser le bois d'allumage pour un feu, shampoing et revitalisant, gel douche")
review11 = Review.new(rating: 3, title: "C'était moyen", content: "Jolie maison à deux pas de la plage. Nous avons passé un moment fabuleux. Je le recommande vivement!")
review12 = Review.new(rating: 4, title: "J'y retournerai!", content: "Magnifique cottage accueillant mais élégant à deux pas du meilleur de Whitstable. J'ai tout simplement adoré!")
review13 = Review.new(rating: 5, title: "Meilleurs vacances...", content: "J'ai adoré mon séjour ici! C'était tellement confortable et élégant et dans un endroit si parfait! Je reviendrai!")
review14 = Review.new(rating: 5, title: "Incroyable", content: "Séjour fantastique à Whitstable. Je recommande vivement cet endroit pour une super petite escapade, c'est vraiment super! Belle maison dans les emplacements les plus idéaux ")
review15 = Review.new(rating: 2, title: "Terrible...", content: "Les images montrent un beau monument... ces images étaient très décevantes et le monument n'était pas comme sur la photo.")
review16 = Review.new(rating: 3, title: "Coussi-coussa", content: "Le propriétaire nous a parlé par la porte de la cuisine et n'a pas voulu nous rencontrer...")
review17 = Review.new(rating: 4, title: "Très bien", content: "Endroit magnifique à côté de l'océan et au milieu des chevaux")
review18 = Review.new(rating: 5, title: "Amazing!", content: "véritable havre de paix, conforme à la description : que du Bonheur, tout était parfait!!!! Nous reviendrons sans hésiter")
review19 = Review.new(rating: 5, title: "So Great!", content: "logement tout confort très bien équipé, cadre verdoyant enchanteur, proche commodités et plage. Equipement bébé mis à disposition")
review20 = Review.new(rating: 5, title: "A voir absolument", content: "Une armoire dans la chambre pour y ranger ses vêtements et non l'aspirateur !")
review21 = Review.new(rating: 4, title: "Merci", content: "Logement conforme aux photos!! Bien situé, au calme, avec de bonnes prestations.")
review22 = Review.new(rating: 3, title: "Pas mal", content: "Endroit fantastique et hôte très accueillant. Idéal pour se ressourcer !")
review23 = Review.new(rating: 4, title: "Ravis", content: "Un îlot de calme et de nature. Un petit chalet très bien conçu et fonctionnel. Un jardin magnifique. Un accueil très agréable. Tout y est pour un séjour à profiter de la nature.")
review24 = Review.new(rating: 5, title: "Merveilleux", content: "Un cadre idyllique, un logement bien aménagé et un très bon accueil, on recommande sans hésiter !")
review25 = Review.new(rating: 3, title: "Plutôt deçu", content: "Emplacement fantastique, malheureusement c'était decevant car extrêmement sale. La cuisine était plein de petites mouches")
review26 = Review.new(rating: 2, title: "Passez votre chemin", content: "Il n'y a pas de transport en commun! La connexion wifi passait très mal également!")
review27 = Review.new(rating: 5, title: "Bluffant", content: "Super séjour ! Merci beaucoup pour l accueil. Un lieu parfait pour se ressourcer en famille.")
review28 = Review.new(rating: 1, title: "Pire vacances ever", content: "Personne peu avenant, peu compétent, qui manque de professionnalisme... Claustrophobes s'abstenir. La TV ne fonctionnait même pas")
review29 = Review.new(rating: 5, title: "Oui oui oui!", content: "Lieu magnifique, Dépaysant, agréable, propre, On reviendras")
review30 = Review.new(rating: 5, title: "INCROYABLE", content: "Impossible d être déçu !")

review1.user = user2
review1.booking = booking1
review1.save!

review2.user = user2
review2.booking = booking4
review2.save!

review3.user = user2
review3.booking = booking7
review3.save!

review4.user = user1
review4.booking = booking6
review4.save!

review5.user = user1
review5.booking = booking10
review5.save!

review6.user = user3
review6.booking = booking8
review6.save!

review7.user = user3
review7.booking = booking5
review7.save!

review8.user = user3
review8.booking = booking2
review8.save!

review9.user = user4
review9.booking = booking3
review9.save!

review10.user = user4
review10.booking = booking9
review10.save!

review11.user = user2
review11.booking = booking1
review11.save!

review12.user = user2
review12.booking = booking4
review12.save!

review13.user = user2
review13.booking = booking7
review13.save!

review14.user = user1
review14.booking = booking6
review14.save!

review15.user = user1
review15.booking = booking10
review15.save!

review16.user = user3
review16.booking = booking8
review16.save!

review17.user = user3
review17.booking = booking5
review17.save!

review18.user = user3
review18.booking = booking2
review18.save!

review19.user = user4
review19.booking = booking3
review19.save!

review20.user = user4
review20.booking = booking9
review20.save!

review21.user = user2
review21.booking = booking1
review21.save!

review22.user = user2
review22.booking = booking4
review22.save!

review23.user = user2
review23.booking = booking7
review23.save!

review24.user = user1
review24.booking = booking6
review24.save!

review25.user = user1
review25.booking = booking10
review25.save!

review26.user = user3
review26.booking = booking8
review26.save!

review27.user = user3
review27.booking = booking5
review27.save!

review28.user = user3
review28.booking = booking2
review28.save!

review29.user = user4
review29.booking = booking3
review29.save!

review30.user = user4
review30.booking = booking9
review30.save!

puts "Creating done!"
