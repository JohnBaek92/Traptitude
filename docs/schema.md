  colName            dataType        details

## users
column name    | data type  | details
---------------|------------|-------------------------
id             |integer     |not null, primary key
username       |string      |not null, indexed, unique
email          |string      |not null, unique
password_digest|string      |not null
session_token  |string      |not null, unique, indexed

## upvotes
column name    | data type  | details
---------------|------------|-------------------------
id             |integer     |not null, primary key
user_id        |integer     |not null, foreign key, indexed
comment_id     |integer     |foreign key, indexed
track_id       |integer     |foreign key, indexed
annotation_id  |integer     |foreign key, indexed

## comments
column name    | data type  | details
---------------|------------|-------------------------
id             |integer     |not null, primary key
user_id        |integer     |not null, foreign key, indexed
track_id       |integer     |indexed
annotation_id  |integer     |indexed
parent_comment_id|integer   |indexed
body           |string      |not null

## albums
column name    | data type  | details
---------------|------------|-------------------------
id             |integer     |not null, primary key
title          |string      |not null
release date   |date        |
musician       |string      |not null

## tracks
column name    | data type  | details
---------------|------------|-------------------------
id             |integer     |not null, primary key
user_id        |integer     |not null, foreign key, indexed
album_id       |integer     |not null, foreign key, indexed
title          |string      |not null
lyrics         |text        |not null
features       |string      |
producer       |string      |

## annotations
column name    | data type  |  details
---------------|------------|-------------------------
id             |integer     |not null, primary key
user_id        |integer     |not null, foreign key, indexed
track_id       |integer     |not null, foreign key
start_idx      |integer     |not null
end_idx        |integer     |not null
body           |text        |not null
