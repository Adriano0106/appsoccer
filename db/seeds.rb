#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
#   campeonato_id (1: Paulista), (2: Brasileiro), (3: Premier League), (4: La Liga), (5: Serie A Tim), (6: Ligue 1), (7: MLS)
#   exemplo
#   Clube.create(name: 'Barcelona', birth: 1899, campeonato_id: 4)
p "Jogadores sendo criados..."
Player.create(name: 'Manuel Neuer', birth: 1988, clube_id: 11, trophy: 10)
Player.create(name: 'Mats Hummels', birth: 1988, clube_id: 11, trophy: 10)
Player.create(name: 'Jerome Boateng', birth: 1988, clube_id: 11, trophy: 10)
Player.create(name: 'David Alaba', birth: 1992, clube_id: 11, trophy: 10)
Player.create(name: 'Rafinha', birth: 1985, clube_id: 11, trophy: 10)
Player.create(name: 'Thiago Alcântara', birth: 1991, clube_id: 11, trophy: 10)
Player.create(name: 'James Rodríguez', birth: 1991, clube_id: 11, trophy: 10)
Player.create(name: 'Arjen Robben', birth: 1984, clube_id: 11, trophy: 10)
Player.create(name: 'Robert Lewandowski', birth: 1988, clube_id: 11, trophy: 10)
p "Jogadores criados"
