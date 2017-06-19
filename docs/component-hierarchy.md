AuthFormContainer
  -AuthForm

HomeContainer
  -TrackIndex
  -TrackItem

AddTrackContainer
  -TrackForm

TracksContainer
  -TrackIndex
  -TrackItem

ShowTrackContainer
  -TrackIndex
  -TrackDetail
  -AnnotationItem
  -AnnotationForm
  -CommentForm
  -CommentIndex
  -CommentItem

MessageBoardContainer
  -CommentIndex
  -CommentItem
  -CommentForm

UserStatsContainer
  -CommentIndex
  -CommentItem
  -TrackIndex
  -TrackItem

Path	               Component
"/sign-in"	         "AuthFormContainer"
"/sign-up"	         "AuthFormContainer"
"/home"	             "HomeContainer"
"/add-track"	       "AddTrackContainer"
"/latest-tracks"	   "TracksContainer"
"/top-tracks"	       "TracksContainer"
"/track/:trackId"	   "ShowTrackContainer"
"/message-board"	   "MessageBoardContainer"
"/user/:userId"	     "UserStatsContainer"
