#CLEANING UP DATABASE
User.destroy_all
Site.destroy_all
Content.destroy_all

# USER SEEDS
User.create(username: 'Henver', full_name: "Hendrik Vermeersch", address: 'Hacımimi, Dibek Sk. 15-2, 34425 Beyoğlu/İstanbul', email: 'hendrik.vermeersch@protonmail.com', password: 'password', locatable: true )
# User.create(username: 'Lilium', full_name:, address: 'se18py', email: 'sevilhatipogluu93@gmail.com', password: 'asdasd')
# User.create(username:'Issam',full_nname: , address:, email:, password: )

puts "created #{User.count} new users"
# SITE SEEDS
galata_tower = Site.new(name: 'Galata Tower',
                      address: 'Galata Tower',
                      description: "The Galata Tower (Turkish: Galata Kulesi), 
                      called Christea Turris (the 'Tower of Christ' in Latin) by the Genoese, 
                      is a medieval stone tower in the Galata/Karaköy quarter of Istanbul, Turkey, 
                      just to the north of the Golden Horn's junction with the Bosphorus. 
                      It is a high, cone-capped cylinder that dominates the skyline and offers a 
                      panoramic vista of Istanbul's historic peninsula and its environs." )
galata_tower.save!

topkapi_palace = Site.new(name: 'Topkapi Palace',
                          address: 'Cankurtaran, 34122 Fatih/İstanbul',
                          description: "The Topkapı Palace (Turkish: Topkapı Sarayı), 
                          is a large museum in the east of the Fatih district of Istanbul in Turkey. 
                          In the 15th and 16th centuries it served as the main residence and 
                          administrative headquarters of the Ottoman sultans." )
topkapi_palace.save!

taksim_square = Site.new( name: 'Taksim Square',
                          address: 'Taksim Square',
                          description: "Taksim Square (Turkish: Taksim Meydanı), situated in Beyoğlu 
                          in the European part of Istanbul, Turkey, is a major tourist and leisure district 
                          famed for its restaurants, shops, and hotels. It is considered the heart of modern Istanbul, 
                          with the central station of the Istanbul Metro network. Taksim Square is also the location 
                          of the Republic Monument (Turkish: Cumhuriyet Anıtı) which was crafted by Pietro Canonica 
                          and inaugurated in 1928. The monument commemorates the 5th anniversary of the foundation 
                          of the Republic of Turkey in 1923, following the Turkish War of Independence." )
taksim_square.save!

hagia_sophia = Site.new(name: 'Hagia Sophia',
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
hagia_sophia.save!

tophane_fountain = Site.new(name: 'Tophane Fountain',
                                     address: 'Tophane fountain',
                                     description: "Tophane Fountain (Turkish: Tophane Çeşmesi) is an 18th-century 
                                     public water fountain built by Ottoman sultan Mahmud I in the Ottoman rococo architecture 
                                     and situated in the square of Tophane neighborhood in Beyoğlu district of Istanbul, Turkey.")
tophane_fountain.save!

puts "created #{Site.count} new sites"

# CONTENT SEEDS
# Without actual content or thumbnail images for now

formats = %w[.txt .mp3 .mpg4]
titles_text = %w[A\ brief\ history\ of 5\ things\ you\ should\ know\ about\  All\ you\ need\ to\ know\ about ]
titles_audio = ["Get into the right mood with this Ottoman-style music", "The greatesT Turkish songs of all time"]
Site.all.each do |site|
  # text seeds
  titles_text.each do |title|
    text = Content.new(title: "#{title} #{site.name}", format: formats.first )
    text.site = site
    text.user = User.all.sample
    text.save!
  end
  # audio seeds
  audio = Content.new(title: "Ten minute audioguide for #{site.name}", format: formats.second)
  audio.site = site
  audio.user= User.all.sample
  audio.save!
  titles_audio.each do |title|
    audio = Content.new(title: title, format: formats.second)
    audio.site = site
    audio.user = User.all.sample
    audio.save!
  end
  # video seeds
  video = Content.new(title: "Cool drone footage of #{site.name}", format: formats.last)
  video.site = site
  video.user = User.all.sample
  video.save!
end

puts "created #{Content.count} new pieces of content"
