# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end

Image.delete_all
Image.reset_pk_sequence
Image.create([

               {name: 'Spotlight, английский язык, Афанасьева О.В.', file: '5.jpg', theme_id: 2},
               {name: 'Современный немецкий, немецкий язык, Листвин Д. А.', file: '6.jpg', theme_id: 2},
               {name: 'Mañana, испанский язык, Костылева С. В.', file: '7.jpg', theme_id: 2},
               {name: 'Hanyu Jiaocheng, китайский язык, Ян Цзичжоу', file: '8.jpg', theme_id: 2},
               {name: 'Игра слов в русском языке', file: '2.jpg', theme_id: 3},
               {name: 'Исландский алфавит', file: '1.jpg', theme_id: 4},
               {name: 'Отрывок поэмы на испанском языке', file: '2.jpg', theme_id: 5},
               {name: 'Сложные времена в немецком языке', file: '1.jpg', theme_id: 6},
               {name: 'Арабский', file: 'arabic.png', theme_id: 7},
               {name: 'Китайский', file: 'chinese.png', theme_id: 7},
               {name: 'Английский', file: 'english.png', theme_id: 7},
               {name: 'Хинди', file: 'hindi.png', theme_id: 7},
               {name: 'Португальский', file: 'portuguese.png', theme_id: 7},
               {name: 'Русский', file: 'russian.png', theme_id: 7},
               {name: 'Турецкий', file: 'turkish.png', theme_id: 7},
             ])

Theme.delete_all
Theme.reset_pk_sequence
Theme.create([

               {name: "-----"},      # 1 Нет темы
               {name: "На сколько баллов вы оцениваете качество данного учебника?"},      # 2
               {name: "На сколько баллов вы оцениваете креативность языковой игры?"},      # 3
               {name: "На сколько баллов вы оцениваете ясность письменной системы?"},      # 4
               {name: "На сколько баллов вы оцениваете красоту языка?"},      # 5
               {name: "На сколько баллов вы оцениваете сложность грамматической конструкции?"},      # 6
               {name: "На сколько баллов вы оцениваете сложность данного языка?"},      # 7
             ])

User.delete_all
User.reset_pk_sequence
User.create([

              {name: "Example User", email: "example@railstutorial.org", password: "222222", password_confirmation: "222222"},
            ])