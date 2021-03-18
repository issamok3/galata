require 'open-uri'

#CLEANING UP DATABASE
User.destroy_all
Review.destroy_all
Site.destroy_all
Content.destroy_all
Article.destroy_all
Audio.destroy_all
Video.destroy_all
Message.destroy_all
Conversation.destroy_all

# USER SEEDS
User.create(username: 'Henniver', full_name: "Hendrik Vermeersch", location: 'Dibek Sk. 15-2, 34425 Beyoğlu/İstanbul', email: 'hendrik.vermeersch@protonmail.com', password: 'password', locatable: true, range: 5 )
User.create(username: 'Sevil-h', full_name: "Sevil Hatipoglu", location: 'Sultanahmet', email: 'sevilhatipogluu93@gmail.com', password: 'asdasd', locatable: true, range: 5 )
User.create(username: 'Lilium', full_name: "Sabriye Hatipoglu", location: 'Taksim Square', email: 'sabriyesevilhatip@gmail.com', password: 'asdasd', locatable: true, range: 5 )
User.create(username: 'Euydice', full_name: "Merve Hatipoglu", location: 'Cobanoglu Sokak, Sisli, Istanbul', email: 'example@gmail.com', password: 'asdasd', locatable: true, range: 5 )
User.create(username: 'edvarterhaar', full_name: "Edvar ter Haar", location: 'Dibek Sk. 10-2, 34425 Beyoğlu/İstanbul', email: 'example1@gmail.com', password: 'asdasd', locatable: true, range: 5 )
User.create(username: 'issamok3', full_name: "Issam", location: 'Sishane', email: 'example2@gmail.com', password: 'asdasd', locatable: true, range: 5 )
User.create(username: 'Bruh-what', full_name: "Shahabal", location: 'Galata Tower', email: 'example3@gmail.com', password: 'asdasd', locatable: true, range: 5 )
User.create(username: 'nikiforov5000', full_name: "Boris", location: 'Halic Bridge', email: 'example4p@gmail.com', password: 'asdasd', locatable: true, range: 5 )
User.create(username: 'syrashid', full_name: "Sy Rashid", location: 'Besiktas', email: 'example5@gmail.com', password: 'asdasd', locatable: true, range: 5 )
User.create(username: 'tournz', full_name: "Zacharie", location: 'Cihangir Stairs', email: 'example6@gmail.com', password: 'asdasd', locatable: true, range: 5 )


puts "created #{User.count} new users"

## SITE SEEDS------------------------------------------

galata_tower = Site.new(name: 'Galata Tower',
                      category: 'History',
                      address: 'Galata Tower',
                      description: "The Galata Tower, called Christea Turris (the 'Tower of Christ' in Latin) by the Genoese, is a medieval stone tower in the Galata/Karaköy quarter of Istanbul, Turkey,just to the north of the Golden Horn's junction with the Bosphorus.")
file = URI.open('https://theistanbulinsider.com/wp-content/uploads/2019/12/galata-tower-istanbul-night.jpg')
galata_tower.photos.attach(io: file, filename: 'temp.jpg', content_type: 'image.jpg')
galata_tower.save!

topkapi_palace = Site.new(name: 'Topkapi Palace',
                          category: 'History',
                          address: 'Cankurtaran, 34122 Fatih/İstanbul',
                          description: "The Topkapı Palace is a large museum in the east of the Fatih district of Istanbul in Turkey. In the 15th and 16th centuries it served as the main residence and administrative headquarters of the Ottoman sultans." )

file = URI.open('https://tourscanner.com/blog/wp-content/uploads/2019/05/Topkapi-Palace-tickets.jpg')
topkapi_palace.photos.attach(io: file, filename: 'temp.jpg', content_type: 'image.jpg')
topkapi_palace.save!

taksim_square = Site.new( name: 'Taksim Square',
                          category: 'Landmark',
                          address: 'Taksim Square',
                          description: "Taksim Square (Turkish: Taksim Meydanı), situated in Beyoğlu
                          in the European part of Istanbul, Turkey, is a major tourist and leisure district famed for its restaurants, shops, and hotels. It is considered the heart of modern Istanbul, with the central station of the Istanbul Metro network.")
file = URI.open('https://massispost.com/wp-content/uploads/2014/10/Taksim_Square-Istanbul.jpg')
taksim_square.photos.attach(io: file, filename: 'temp.jpg', content_type: 'image.jpg')
taksim_square.save!

hagia_sophia = Site.new(name: 'Hagia Sophia',
                        category:'Religious',
                        address: 'Hagia Sophia',
                        description: "Hagia Sophia, officially the Hagia Sophia Holy Grand Mosque
                        and formerly the Church of Hagia Sophia, is a Late Antique place of worship
                        in Istanbul, designed by the Greek geometers Isidore of Miletus and Anthemius of Tralles.
                        Built in 537 as the patriarchal cathedral of the imperial capital of Constantinople,
                        it was the largest Christian church of the eastern Roman Empire (the Byzantine Empire)
                        and the Eastern Orthodox Church, except during the Latin Empire from 1204 to 1261,
                        when it became the city's Roman Catholic cathedral. In 1453, after the Fall of Constantinople
                        to the Ottoman Empire, it was converted into a mosque. In 1935 the secular Turkish Republic
                        established it as a museum. In 2020, it re-opened as a mosque." )
file = URI.open('https://images.unsplash.com/photo-1602137968838-8e64b4b45a72?ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=1500&q=80')
hagia_sophia.photos.attach(io: file, filename: 'temp.jpg', content_type: 'image.jpg')
hagia_sophia.save!

tophane_fountain = Site.new(name: 'Tophane Fountain',
                            category: 'Architechture',
                            address: 'Tophane fountain',
                            description: "Tophane Fountain is an 18th-century
                            public water fountain built by Ottoman sultan Mahmud I in the Ottoman rococo architecture
                            and situated in the square of Tophane neighborhood in Beyoğlu district of Istanbul.")
file = URI.open('https://images.freeimages.com/images/premium/previews/2744/27441238-tophane-fountain-in-istanbul-turkey.jpg')
tophane_fountain.photos.attach(io: file, filename: 'temp.jpg', content_type: 'image.jpg')
tophane_fountain.save!


archaeology_museum = Site.new(name: 'Istanbul Archaeology Museums',
                              category: 'Museum',
                              address: 'Istanbul Archaeology Museums',
                              description: "The Istanbul Archaeology Museums (Turkish: İstanbul Arkeoloji Müzeleri) are a group
                              of three archaeological museums located in the Eminönü quarter of Istanbul, Turkey, near Gülhane Park and
                              Topkapı Palace.")
file = URI.open('https://i.redd.it/jg4xy0sai8541.jpg')
archaeology_museum.photos.attach(io: file, filename: 'temp.jpg', content_type: 'image.jpg')
archaeology_museum.save!

dolmabahce_palace = Site.new(name: 'Dolmabahçe Palace',
                            category: "Architechture",
                            address: 'Dolmabahçe Palace',
                            description: "Dolmabahce Palace built in 19 th century is one of the most glamorous palaces in the world. After the foundation
                            of the Turkish Republic in Ankara, Mustafa Kemal Ataturk transferred all government functions to the youthful capital but on his
                            visits to Istanbul Ataturk occupied only a small room at Dolmabahce Palace as his own.")
file = URI.open('https://www.birdakikadageziyorum.com/wp-content/uploads/2018/01/dolmabah%C3%A7e-saray%C4%B1.jpg')
dolmabahce_palace.photos.attach(io: file, filename: 'temp.jpg', content_type: 'image.jpg')
dolmabahce_palace.save!

pierre_loti = Site.new(name: "Pierre Loti Hill",
                      category: "Viewpoint",
                      address: "Pierre Loti, Eyup/ Istanbul",
                      description: "Many visitors head to this hilltop cafe after visiting the Eyüp Sultan Mosque. Named for the famous French novelist who is said
                      to have come here for inspiration, it offers views across the Golden Horn and is a popular weekend destination for locals, who relax here over
                      cheap tea, coffee and ice cream. A cable car to the cafe leaves from near the mosque.")
file = URI.open('https://cache-graphicslib.viator.com/graphicslib/page-images/742x525/173904_Viator_Shutterstock_132539.jpg')
pierre_loti.photos.attach(io: file, filename: 'temp.jpg', content_type: 'image.jpg')
pierre_loti.save!

camlica_hill = Site.new(name: "Camlica Hill",
                        category: "Viewpoint",
                        address: "Kısıklı, Çamlıca Tepesi yl, 34692 Uskudar",
                        description: "Camlıca Hill (Turkish: Camlıca Tepesi). Situated on the Asian part of the city at 288 m (945 ft)
                        above sea level, Camlıca Hill has a panoramic view of the southern part of Bosphorus and the mouth of Golden Horn.
                         There is historical-designed teahouses, cafes and a restaurant inside a public park with monumental trees, flower
                         gardens and fountains, run by the Metropolitan Municipality.")
file = URI.open('https://gezimanya.com/sites/default/files/styles/800x600_/public/gezilecek-yerler/2019-11/image-image19.jpeg')
camlica_hill.photos.attach(io: file, filename: 'temp.jpg', content_type: 'image.jpg')
camlica_hill.save!

basilica_cistern = Site.new(name: 'Basilica Cistern',
                            category: "Architechture",
                            address: 'Basilica Cistern',
                            description: "The Basilica Cistern, or Cisterna Basilica (Turkish: Yerebatan Sarnıcı), is the largest of several
                            hundred ancient cisterns that lie beneath the city of Istanbul, Turkey. The cistern, located 150 metres (490 ft)
                             southwest of the Hagia Sophia on the historical peninsula of Sarayburnu, was built in the 6th century during the
                             reign of Byzantine Emperor Justinian I.[1] Today it is kept with little water, for public access inside the space.")
file = URI.open('https://lh3.googleusercontent.com/-zbz_eaj6rA4/Vvz3VkeMEfI/AAAAAAABMoY/MGFP80iNbMU/basilica-cistern-116.jpg?imgmax=800')
basilica_cistern.photos.attach(io: file, filename: 'temp.jpg', content_type: 'image.jpg')
basilica_cistern.save!

blue_mosque = Site.new(name: 'Blue Mosque',
                       category: 'Religious',
                       address: 'Blue Mosque',
                       description: "After the Peace of Zsitvatorok and the crushing loss in the 1603–18 war with Persia, Sultan Ahmet I decided
                       o build a large mosque in Istanbul to reassert Ottoman power. It would be the first imperial mosque for more than forty years.
                       While his predecessors had paid for their mosques with the spoils of war, Ahmet I procured funds from the Treasury, because he
                       had not gained remarkable victories. The construction was started in 1609 and completed in 1616")
file = URI.open('https://theistanbulinsider.com/wp-content/uploads/2020/03/blue-mosque-aerial.jpg')
blue_mosque.photos.attach(io: file, filename: 'temp.jpg', content_type: 'image.jpg')
blue_mosque.save!

ortakoy_mosque = Site.new(name: "Ortakoy Mosque",
                          category: 'Religious',
                          address: "Ortakoy Mosque",
                          description: "Ortaköy Mosque officially the Büyük Mecidiye Camii (Grand Imperial Mosque of Sultan Abdülmecid) in Beşiktaş, Istanbul,
                          Turkey, is situated at the waterside of the Ortaköy pier square, one of the most popular locations on the Bosphorus. This
                          structure is symbolic of the district of Ortaköy as it has a distinctive view of the Bosphorus Strait of Istanbul and the Bosphorus Bridge.
                          The mosque can be viewed from the Bosphorus Cruise that is famous among tourists, to go from the Asian side of Istanbul to the European side
                           on a ferry boat.")
file = URI.open('https://www.turanakinci.com/wp-content/uploads/2014/11/ortak%C3%B6y.-700x460.jpg')
ortakoy_mosque.photos.attach(io: file, filename: 'temp.jpg', content_type: 'image.jpg')
ortakoy_mosque.save!

balat = Site.new(name: "Balat",
                category: "Popular",
                address: "Balat, Istanbul",
                description: "Hidden behind the busy road that runs along the western bank of İstanbul’s Golden Horn, the intertwined neighbourhoods of Fener and
                 Balat have a rich history dating back to Byzantine times. These days, past and present mingle in colourful, maze-like streets, where third-wave
                 coffee shops and design boutiques sit next to traditional tea gardens and tradesmen’s workshops.")
file = URI.open('https://i4.hurimg.com/i/hurriyet/75/1110x740/59d5d9ca2269a214e8c99231.jpg')
balat.photos.attach(io: file, filename: 'temp.jpg', content_type: 'image.jpg')
balat.save!

karakoy = Site.new(name: "Karakoy",
                  category: "Popular",
                  address: "Karakoy, Istanbul",
                  description: "Istanbul's hippest neighbourhood. Edging the water on the northern side of İstanbul’s Galata Bridge, Karaköy is an exhilarating and
                  contradictory neighbourhood within Beyoğlu where tradesmen’s workshops share narrow streets with chic cafes and galleries, and where bohemian
                  boutiques coexist alongside traditional pastaneler (bakeries). In many ways, it’s a microcosm of modern İstanbul.")
file = URI.open('https://blog.obilet.com/wp-content/uploads/2018/03/karak%C3%B6y-1200x800.jpg')
karakoy.photos.attach(io: file, filename: 'temp.jpg', content_type: 'image.jpg')
karakoy.save!

haydarpasa = Site.new(name: "Haydarpasa Railway Station",
                      category: "Landmark",
                      address: "Haydarpasa Railway Station",
                      description: "Funded by the German government, this railway station was built in the first decade of the 20th century
                      as the İstanbul stop for a planned Berlin to Baghdad railway service. The station building was designed by German architects,
                      but the lovely tile-adorned station iskele (ferry dock) was designed by noted Turkish architect Vedat Tek.")
file = URI.open('https://assets.community.lomography.com/3c/84414484364cb4c153f20980549cf336338813/2048x2048x2.jpg?auth=a2393840a4d9a10b94dd88f66ed188a7705b9273')
haydarpasa.photos.attach(io: file, filename: 'temp.jpg', content_type: 'image.jpg')
haydarpasa.save!

mihrimah_sultan = Site.new(name: "Mihrimah Sultan Mosque",
                          category: "Religious",
                          address: "Mihrimah Sultan Mosque",
                          description: "This spectacular, very feminine mosque, designed by the great Ottoman architect Mimar Sinan, is among the finest
                           achievements of the highest period of Ottoman architecture.")
file = URI.open('https://pbs.twimg.com/media/DpbGAh0WsAEmnD5.jpg')
mihrimah_sultan.photos.attach(io: file, filename: 'temp.jpg', content_type: 'image.jpg')
mihrimah_sultan.save!

rumelian_castle = Site.new(name: "Rumelian Castle",
                          category: "Landmark, History",
                          address: "Rumeli Hisarı, Yahya Kemal Cd., 34470 Sariyer",
                          description: "Rumelihisarı(Rumelian Castle) is a medieval fortress located in Istanbul, Turkey, on a series of hills on the
                          European banks of the Bosphorus. The fortress also lends its name to the immediate neighborhood around it in the city's Sarıyer district.")
file = URI.open('https://cache-graphicslib.viator.com/graphicslib/page-images/742x525/129141_Destination_Istanbul_Rumeli%20Fortress_shutterstock_123729073.jpg')
rumelian_castle.photos.attach(io: file, filename: 'temp.jpg', content_type: 'image.jpg')
rumelian_castle.save!

halic_bridge = Site.new(name: 'Haliç Bridge',
                        category: 'View point',
                        address: 'Haliç Bridge',
                        description: "Known as the Golden Horn Bridge, is a highway bridge on the Golden Horn (Turkish: Haliç) in Istanbul,
                        Turkey. It connects the neighborhoods of Ayvansaray in the southwest and Halıcıoğlu in the northwest. The bridge carries
                        the O-1 motorway, also known as the Istanbul Inner Beltway. It was constructed between 1971 and 1974, and entered service
                        on 10 September 1974. The engineering firms which undertook the construction works were IHI Corporation of Japan and Julius
                        Berger-Bauboag AG of Germany. The bridge has a length of 995 m (3,264 ft), a width of 32 m (105 ft), and a height of 22 m (72 ft)
                         above sea level.")
file = URI.open('https://upload.wikimedia.org/wikipedia/commons/thumb/8/80/Halic_Bridge%2C_Istanbul.jpg/1024px-Halic_Bridge%2C_Istanbul.jpg')
halic_bridge.photos.attach(io: file, filename: 'temp.jpg', content_type: 'image.jpg')
halic_bridge.save!

museum_of_innocence = Site.new(name: "Museum of Innocence",
                              category: "Museum",
                              address: "Museum of Innocence",
                              description: "The painstaking attention to detail in this fascinating museum/piece of conceptual art will certainly provide
                              every amateur psychologist with a theory or two about its creator, Nobel Prize–winning novelist Orhan Pamuk. Vitrines display
                              a quirky collection of objects that evoke the minutiae of İstanbullu life in the mid- to late 20th century, when Pamuk's
                              novel The Museum of Innocence is set.")
file = URI.open('https://sizvebiz.blog/wp-content/uploads/2017/07/orhan-pamuk-masumiyet.jpg')
museum_of_innocence.photos.attach(io: file, filename: 'temp.jpg', content_type: 'image.jpg')
museum_of_innocence.save!

pera_museum = Site.new(name: "Pera Museum",
                      category: "Museum",
                      address: "Pera Museum",
                      description: "The Pera Museum was founded by the Suna and İnan Kıraç Foundation in 2005.The museum is located in the historic building of the
                      former Bristol Hotel, which was designed by architect Achille Manoussos and built in 1893.[2] It was renovated between 2003 and 2005 by architect
                      Sinan Genim, who preserved the facade of the building and transformed the interior into a modern and fully equipped museum")
file = URI.open('https://i2.milimaj.com/i/milliyet/75/0x0/5ed77cff55427e1638064a21.jpg')
pera_museum.photos.attach(io: file, filename: 'temp.jpg', content_type: 'image.jpg')
pera_museum.save!

puts "created #{Site.count} new sites"

## CONTENT SEEDS-----------------------------------------------------------------------------------------------------------------
# GALATA TOWER
  site = Site.first
  file = File.open(File.join(File.dirname(__FILE__), './seed_photos/galata_27cw86a2srlhypizaso44feayx9c.jpg'))
  file2 = File.open(File.join(File.dirname(__FILE__), './seed_photos/galata_2213x1568x2_himhcg.jpg'))
  file3 = File.open(File.join(File.dirname(__FILE__), './seed_photos/galata_seen_from_suleymaniye_mosque_utrdqk.jpg'))


  # videos
  video = Video.create(title: 'Galata Kulesi Belgeseli / Documentary', description: 'I attended film school at the University of Mardin with a minor in history. The tower of Galata had inspired me to make this short documentary on my first visit to Istanbul. I hope that you all enjoy it.', url: 'https://youtu.be/-d1IPIYI9fs')
  video.site = site
  video.user = User.second
  video.save!

  video = Video.create(title: 'Galata Tower - Hezarfen Ahmet Celebi | Istanbul - Tales of Turkey', description: 'A short magical film about the history of the Galata Tower and the significant symbolisms in it that demonstrate the different historical eras this monument has been through. Please consider supporting my work on patreon.', url: 'https://youtu.be/mLAwnocHaL0')
  # galata_video = Video.new()
  # galata_video.user = User.first
  # galata_video.save
  video.site = site
  video.user = User.third
  video.save!
  video = Video.create(title: 'Galata Tower Istanbul in detail', description: 'Here is your Istanbul Guide, I am Fatih and I make videos about Istanbul. I travel around the world and make travel videos all over the world. Istanbul is one of my favorite cities in the world. The best place to see in Istanbul is the Galata Tower. In this video I show you the Galata Tower in detail and what to do in Istanbul.', url: 'https://youtu.be/D0RSppm1oW4')
  video.site = site
  video.user = User.fourth
  video.save!

  # photos
  photo = Photo.new(user: User.all.sample, title: 'Galata')
  photo.site = site
  photo.photos.attach(io: file, filename: 'nes.jpg', content_type: 'image/jpg')
  photo.save!
  photo = Photo.new(user: User.all.sample, title: 'Galata')
  photo.site = site
  photo.photos.attach(io: file2, filename: 'nes.jpg', content_type: 'image/jpg')
  photo.save!
  photo = Photo.new(user: User.all.sample, title: 'Galata')
  photo.site = site
  photo.photos.attach(io: file3, filename: 'nes.jpg', content_type: 'image/jpg')
  photo.save!

  #audios
  Audio.create(user: User.second, site: site, title: 'Memo Aslan - Galata Kulesi', description: 'This famous Turkish song is an ode to the Galata Tower, a building that every inhabitant of Istanbul feels passionate about. I hope you enjoy it.', spotify_uri: 'spotify:track:28LLqIH6gKmbKDWxjlqmMX')
  Audio.create(user: User.third, site: site, title: 'Ahmet Kaya - Kum Gibi', description: 'One of the greatest Turkish songs of all time, this song will get you into the right mood while visiting one of the iconic buildings of Turkey', spotify_uri: 'spotify:track:1vmzfiQsd8PHgt8Kgp7TgR')
  Audio.create(user: User.fourth, site: site, title: 'Ümit Yasar Oguzcan - Galata Kulesi', description: 'A sad story of love, life and death involving the Galata Tower', spotify_uri: 'spotify:episode:10x7pYix68IkHu2S77ttc6')

  # HAGIA SOPHIA
  site = Site.fourth
  file = File.open(File.join(File.dirname(__FILE__), './seed_photos/hagia_1216x1217x2_b8ivq5.jpg'))
  file2 = File.open(File.join(File.dirname(__FILE__), './seed_photos/hagia_2240x3360x2_oi6vog.jpg'))
  file3 = File.open(File.join(File.dirname(__FILE__), './seed_photos/hagia_csf_u3t0xv.jpg'))
  file4 = File.open(File.join(File.dirname(__FILE__), './seed_photos/hagia_efw_qputp9.jpg'))
  file5 = File.open(File.join(File.dirname(__FILE__), './seed_photos/hagia_efwe_d7hdw2.jpg'))
  file6 = File.open(File.join(File.dirname(__FILE__), './seed_photos/hagia_lx3qamaqhbqalzp35fszmye2d5yk.jpg'))
  file7 = File.open(File.join(File.dirname(__FILE__), './seed_photos/hagia_sf_gxohlv.jpg'))

  # videos
  video = Video.create(title: 'Hagia Sophia Museum Turkey İstanbul documentary', description: 'Hagia Sophia Museum Turkey İstanbul documentary', url: 'https://youtu.be/Y2WNUWDoAM4')
  video.site = site
  video.user = User.fifth
  video.save!
  video = Video.create(title: 'Why Hagia Sophia is So Important? The Whole History is Explained', description: 'Hagia Sophia is also known as the great mosque of the Ayasofya and as the church of Hagia Sophia is a place of worship situated in the country of Turkey. This church was initially built in the year of 360 AD. It has been demolished and reconstructed many times in the past and it is one of the best architecture places of worship in Istanbul.', url: 'https://youtu.be/v6BAPskdJXc')
  video.site = site
  video.user = User.last
  video.save!
  video = Video.create(title: 'Hagia Sophia " The Sacred Wisdom " Director: Hikmet Yaşar Yenigün', description: 'A  wonder of the world dedicated the Sacred Wisdom… One of the most glorius monuments of human history…  Its beauty architectural proportions and harmony making it a singular structure…  For 916 years this monument has been the treasure of the Byzantine Empire and the center of the Orthodox world… And for 418 years it has been the jewel of the Islamic World and the Ottoman… As the most precious and most  important  mosque to the  Ottoman Sultans, it has been subject of countless legends...  Hagia Sophia is considered as the embodiment of “Divine Power” in both Byzantine and Ottoman sources… Today it is a museum that enthralls and deeply affects visitors... Hagia Sophia…The documentary presents Hagia Sophia through elabrote cinematography.', url: 'https://youtu.be/9cdLqE9NBJw')
  video.site = site
  video.user = User.last
  video.save!

  # photos
  photo = Photo.new(user: User.all.sample, title: 'Hagia Sophia')
  photo.site = site
  photo.photos.attach(io: file, filename: 'nes.jpg', content_type: 'image/jpg')
  photo.save!
  photo = Photo.new(user: User.all.sample, title: 'Hagia Sophia')
  photo.site = site
  photo.photos.attach(io: file2, filename: 'nes.jpg', content_type: 'image/jpg')
  photo.save!
  photo = Photo.new(user: User.all.sample, title: 'Hagia Sophia')
  photo.site = site
  photo.photos.attach(io: file3, filename: 'nes.jpg', content_type: 'image/jpg')
  photo.save!
  photo = Photo.new(user: User.all.sample, title: 'Hagia Sophia')
  photo.site = site
  photo.photos.attach(io: file4, filename: 'nes.jpg', content_type: 'image/jpg')
  photo.save!
  photo = Photo.new(user: User.all.sample, title: 'Hagia Sophia')
  photo.site = site
  photo.photos.attach(io: file5, filename: 'nes.jpg', content_type: 'image/jpg')
  photo.save!
  photo = Photo.new(user: User.all.sample, title: 'Hagia Sophia')
  photo.site = site
  photo.photos.attach(io: file6, filename: 'nes.jpg', content_type: 'image/jpg')
  photo.save!
  photo = Photo.new(user: User.all.sample, title: 'Hagia Sophia')
  photo.site = site
  photo.photos.attach(io: file7, filename: 'nes.jpg', content_type: 'image/jpg')
  photo.save!

  # audios
  Audio.create(user: User.second, site: site, title: 'Beautiful Islamic Prayer Call', description: 'Experience the atmosphere of the prayer call by listening to this beautiful recording', spotify_uri: 'spotify:track:3WHXlVfA2lKpe3EQLPn0q3')
  Audio.create(user: User.third, site: site, title: 'Irfan - Hagia Sophia', description: 'Inspiring Ottaman-style music to get into the right mood when visiting the historic, religious site of Hagia Sophia', spotify_uri: 'spotify:track:05MTZxYxNYDM5kQsiT5pdX')
  Audio.create(user: User.last, site: site, title: 'Everything Everywhere Podcast: The Hagia Sophia', description: 'Listen to this episode of the renowned Everything Everywhere podcast on the Hagia Sophia and learn more about this amazing piece of living history', spotify_uri: 'spotify:episode:2j3Uf9IG8OijNwXFrJAdkQ')

  # HALIC BRIDGE
  site = halic_bridge
  file = File.open(File.join(File.dirname(__FILE__), './seed_photos/halic_bridge_Sunset_golden_horn_tl3mf7.jpg'))
  file2 = File.open(File.join(File.dirname(__FILE__), './seed_photos/halic_bridge_the_golden_horn_from_r9acxr.jpg'))
  video = Video.create(title: 'İstanbul Halic Bridge Drone view, Haliç Köprüsü, Muhteşem Mimarisi', description: 'Haliç Bridge is a highway bridge on the Golden Horn in Istanbul, Turkey. It connects the neighborhoods of Ayvansaray in the southwest and Halıcıoğlu in the northwest. The bridge carries the O-1 motorway, also known as the Istanbul Inner Beltway. It was constructed between 1971 and 1974, and entered service on 10 September 1974. The engineering firms which undertook the construction works were IHI Corporation of Japan and Julius Berger-Bauboag AG of Germany. The bridge has a length of 995 m (3,264 ft), a width of 32 m (105 ft), and a height of 22 m (72 ft) above sea level.', url: 'https://youtu.be/dYpIvT4ykvw')
  video.site = site
  video.user = User.second
  video.save!
  video = Video.create(title: 'Haliç Bridge | Walking Tour | Istanbul 🇹🇷 [4K]', description: 'It is one of the 4 bridges on Istanbul Golden Horn Bay, one of which has not been opened yet.  It is located between Ayvansaray and Halicioglu.  Haliç Bridge was opened in 1974;  The Atatürk Bridge (Unkapanı Bridge) was opened in 1936 and the Historic Galata Bridge became the present in 1994.  A sister bridge to the Golden Horn Bridge will be the Haliç Metro Crossing Bridge which will be opened on 29 October 2013.  It frightened with the collapse that occurred in 2012 and caused hard time for the residents of Istanbul due to maintenance and repair works.', url: 'https://youtu.be/D-qTiSy_hXU')
  video.site = site
  video.user = User.third
  video.save!
  video = Video.create(title: 'Haliç Bridge view - İstanbul, Turkey', description: 'Peaceful moments at 4:20  in the afternoon with my homies as we were blazing and enjoying this serene view at the golden horn in Istanbul right across from Balat neighborhood.', url: 'https://youtu.be/fjDnVH97bLI')
  video.site = site
  video.user = User.third
  video.save!
  photo = Photo.new(user: User.all.sample, title: 'Haliç Bridge')
  photo.site = halic_bridge
  photo.photos.attach(io: file, filename: 'nes.jpg', content_type: 'image/jpg')
  photo.save!
  photo = Photo.new(user: User.all.sample, title: 'Haliç Bridge')
  photo.site = halic_bridge
  photo.photos.attach(io: file2, filename: 'nes.jpg', content_type: 'image/jpg')
  photo.save!

puts "created #{Content.count} new pieces of content"
