## HTML API

### Root
- `GET /` - loads React Web App

## JSON API

### Users
- `POST /api/users`
  - user create
- `GET /api/users/:id`
  - user show page
- `PATCH /api/users/:id`
  - updates user information  

### Session
- `POST /api/session`
  - create session
- `DELETE /api/session`
  - delete session

### Albums
- `GET /api/albums`
  - album index page
- `GET /api/albums/:id`
  - specific album information
  - index of all tracks for album

### Tracks
- `POST /api/tracks`    
  - create a new track
- `GET /api/tracks/:id`
  - display a specific track and related information
- `DELETE /api/tracks/:id`
  - deletes a track if uploaded user
- `PATCH /api/tracks/:id`
  - updates a track  

### Comments
- `POST /api/comments`
  - create a new comment
- `DELETE /api/comments/:id`
  - deletes a comment if written user
- `PATCH /api/comments/:id`
  - updates a comment if written user

### Upvotes
- `POST /api/upvotes`
  - creates a new upvote if there is a current user
- `DELETE /api/upvotes/:id`
  - deletes an upvote if object was upvoted by user       

### Annotations
- `POST /api/annotations`
  - creates a new annotation
- `GET /api/annotations/:id`
  - displays an annotation
- `DELETE /api/annotations/:id`
  - deletes an annotation if written user
- `PATCH /api/annotations/:id`
  - updates an annotation if written by user           
