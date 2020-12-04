Genre.create!([
  {name: "Comedy"},
  {name: "Drama"},
  {name: "Thriller"},
  {name: "Action"},
  {name: "Romance"}
])
Actor.create!([
  {first_name: "Benedict", last_name: "Cumberbatch", known_for: "Sherlock", gender: "male", age: 73, movie_id: 1},
  {first_name: "Santina", last_name: "McKenzie", known_for: "Action Journals", gender: "female", age: 62, movie_id: 3},
  {first_name: "Salvatore", last_name: "Pacocha", known_for: "Flying Pickpocket", gender: "female", age: 63, movie_id: 4},
  {first_name: "Neta", last_name: "Dooley", known_for: "Green Demon", gender: "female", age: 53, movie_id: 1},
  {first_name: "ham", last_name: "burger", known_for: "dinner", gender: "male", age: 7, movie_id: 1},
  {first_name: "Nathan", last_name: "Fillion", known_for: "Firefly", gender: "male", age: 37, movie_id: 1},
  {first_name: "Benedict", last_name: "Cumberbatch", known_for: "Sherlock", gender: "male", age: 12, movie_id: 2},
  {first_name: "Susie", last_name: "Abshire", known_for: "I Married a Hills", gender: "female", age: 12, movie_id: 2},
  {first_name: "Clint", last_name: "Dibbert", known_for: "Curse of the Champagne Hills", gender: "male", age: 23, movie_id: 6},
  {first_name: "Donya", last_name: "Casper", known_for: "423 A.D.", gender: "female", age: 23, movie_id: 6},
  {first_name: "Lanelle", last_name: "Schroeder", known_for: "1225 A.D.", gender: "female", age: 23, movie_id: 3},
  {first_name: "Karen", last_name: "Davis", known_for: "Day of the Friday", gender: "female", age: 19, movie_id: 3}
])
Movie.create!([
  {title: "My Blue Heaven", year: 1990, plot: "A former mob member is in whitness protection, but he can't change his ways.", director: "Herbert Ross", english: true},
  {title: "Head of State", year: 2003, plot: "An alderman from D.C. runs for president", director: "Chris Rock", english: true},
  {title: "A Night At The Roxbury", year: 1998, plot: "Brothers that never grew up still tear up the night clubs!", director: "John Fortenberry", english: true},
  {title: "My Cousin Vinny", year: 1992, plot: "Lawyer who never won a case takes on  his cousins murder case.", director: "Jonathan Lynn", english: true},
  {title: "Happy Guilmore", year: 1996, plot: "A hockey player turns golfer.", director: "Dennis Dugan", english: true}
])
MovieGenre.create!([
  {genre_id: 1, movie_id: 1},
  {genre_id: 2, movie_id: 2},
  {genre_id: 3, movie_id: 3},
  {genre_id: 4, movie_id: 1},
  {genre_id: 5, movie_id: 6},
  {genre_id: 1, movie_id: 1},
  {genre_id: 1, movie_id: 1},
  {genre_id: 1, movie_id: 1}
])
User.create!([
  {name: "tony", email: "tny@example.com", password_digest: "$2a$12$ixbmH175wN4npt0c3MiG0ezofhEd.lbhMYvsShL45c2ewU0cm5ARa", admin: false},
  {name: "billy", email: "billy@example.com", password_digest: "$2a$12$9SH9SvLinGiFYbhnuRzWzOOeUwWIUyJhiULJSJRKXqqzC5S4xmzt2", admin: false},
  {name: "phill", email: "phill@example.com", password_digest: "$2a$12$VaMJNGDrLZdNNRNYI7z4q./3xVZKVVvROgcw9YPP4VXGxpwns3USy", admin: false},
  {name: "remington", email: "remington@example.com", password_digest: "$2a$12$pRUWqJZbTsJz/wM0nNqUqeDzCIIiyrqE2Lyy.V.hQNlh/b5STFq5i", admin: true}
])
