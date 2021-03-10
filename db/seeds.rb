#CLEANING UP DATABASE
Site.destroy_all

# SITE SEEDS
galata_tower = Site.new(name: 'Galata Tower',
                      address: 'Bereketzade, Galata Kulesi, 34421 Beyoğlu/Istanbul',
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
                        address: 'Sultan Ahmet, Ayasofya Meydanı No:1, 34122 Fatih/İstanbul',
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
                                     address: 'Kılıçali Paşa, Defterdar Ykş. No:2, 34433 Beyoğlu/İstanbul',
                                     description: "Tophane Fountain (Turkish: Tophane Çeşmesi) is an 18th-century 
                                     public water fountain built by Ottoman sultan Mahmud I in the Ottoman rococo architecture 
                                     and situated in the square of Tophane neighborhood in Beyoğlu district of Istanbul, Turkey.")
tophane_fountain.save!
puts "created #{Site.count} new sites"