p "Campeonatos sendo criados..."
Campeonato.create(name: '', description: '')
Campeonato.create(name: '', description: '')
Campeonato.create(name: '', description: '')
Campeonato.create(name: '', description: '')
Campeonato.create(name: '', description: '')
Campeonato.create(name: '', description: '')
Campeonato.create(name: '', description: '')
p "Campeonatos criados"

p "Clubes sendo criados..."
Clube.create(name: 'Valencia', birth: 1909, campeonato_id: 4)
Clube.create(name: 'Sevilla', birth: 1890, campeonato_id: 4)
Clube.create(name: 'Atlético de Madrid', birth: 1903, campeonato_id: 4)
Clube.create(name: 'Villarreal', birth: 1923, campeonato_id: 4)
p "Clubes criados"

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
