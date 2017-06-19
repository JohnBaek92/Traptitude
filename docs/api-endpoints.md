HTML API
  Root
    GET / - loads React web app

JSON API
  Users
    POST /api/users

  Session
    POST /api/session
    DELETE /api/session

  Tracks
    POST /api/tracks
      creates a new track
    GET /api/tracks/latest
      gets latest tracks added to the database
    GET /api/tracks/top
      gets tracks with the highest upvotes in the database
    GET /api/tracks/:id
      gets a single track to show

  Album
    GET /api/albums   
      gets all albums
    GET /api/albums/:id
      gets a specific album

  Annotations
    POST /api/annotations
      creates a new annotations
    GET /api/annotations/:id
      gets a single annotation
    DELETE /api/annotations/:id
      deletes a single annotation if written by the user
    PATCH /api/annotations/:id
      updates a single annotation if written by the user

  Comments
    POST /api/comments
      creates a new comment
    GET /api/comments/:id   
      gets a single comment
    DELETE /api/comments/:id
      deletes a single comment if written by the user
    PATCH /api/comments/:id
      updates a single comment if written by the user


  Upvotes
    POST /api/upvotes
      creates a new upvote if there is a current user
    DELETE /api/upvotes/:id
      deletes an upvote if the upvote was created by the user
