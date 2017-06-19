  colName            dataType        details

users
  id                 integer         not null, primary key
  username           string          not null, indexed, unique
  email              string          not null, unique
  password_digest    string          not null
  session_token      string          not null, unique, indexed



comments
  id                 integer         not null, primary key
  user_id            integer         not null, foreign key, indexed
  track_id           integer         foreign key, indexed
  topic_id           integer         foreign key, indexed
  annotation_id      integer         foreign key, indexed


topic
  id                 integer         not null, primary key
  title              string          not null


albums
  id                 integer         not null, primary key
  title              string          not null,
  release_year       integer         not null
  album_art_url      string          
  musician           string          not null, foreign key, indexed

tracks
  id                 integer         not null, primary key
  title              string          not null
  lyrics             string          not null
  annotations        string
  producer           string
  features           string
  album_id           integer         not null, foreign key, indexed

annotations
  id                 integer         not null, primary key
  body               string          not null        
  start_idx          integer         not null
  end_idx            integer         not null
  track_id           integer         not null, foreign key, indexed
  user_id            integer         not null, foreign key, indexed

upvotes
  id                 integer         not null, primary key
  user_id            integer         not null, foreign key, indexed
  annotation_id      integer         foreign key, indexed
  track_id           integer         foreign key, indexed
