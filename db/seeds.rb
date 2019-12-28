# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
if Rails.env == "development"
  (1..50).each do |i|
    Board.create(name: "ユーザー#{i}", title: "タイトル#{i}", body: "本文#{i}")
  end
  
  Tag.create([
    { name: 'ダイエット' },
    { name: '食事' },
    { name: '筋力トレーニング' },
    { name: 'マッサージ' },
    { name: 'ヨガ' },
    { name: 'ルーティーン' },
    { name: '運動' },
    { name: '入浴' },
    { name: '瞑想' },
    ])
end