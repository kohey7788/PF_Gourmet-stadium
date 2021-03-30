# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


Admin.create!(
   email: 'test@test.com',
   password: 'testtest'
)
# Stadium.create!(
#   [
#     {
#       name: "国立競技場",
#       image_id: open("app/asset/images/kokuritu.jpeg"),
#       address: "東京都新宿区霞ヶ丘町10番1号",
#     },

#     {
#       name: "埼玉スタジアム2002",
#       image_id: open("app/asset/images/Saitama_stadium.png"),
#       address: " 埼玉県さいたま市緑区美園2丁目1",
#     }
#   ]

# )