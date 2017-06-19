{
  currentUser: {
    id: 1,
    username: "Testing"
  }

  forms: {
    signUp: {errors: []},
    logIn: {errors: []},
    createAnnotation: {errors: "Form can't be blank"},
    createComment: {errors: "Body can't be blank"},
    createTrack: {errors: ["All fields except for "Album Art" must contain information"]}
  }

  comments: {
    1: {
      body: "whoaa, sick track",
      user_id: 1,
      track_id: 1,
      board_comment_id: null
    }

    2: {
      body: "thoughts on Justin Bieber?",
      user_id: 2,
      track_id: null,
      board_comment_id: null
    }
    3: {
      body: "he's all right",
      user_id: 3,
      track_id: null,
      board_comment_id: 2

      // board_comment connects comment 3 to // comment 2
    }
  }

  albums: {
    1: {
      title: "wowzers",
      musician_id: 1,
      album_art_url: "google.com/123",
      release_year: "2017"
    }
  }

  tracks: {
    1: {
      title: "really good",
      album_id: 1,
      lyrics: "Dropping that fiyah",
      annotations: "It really is hot",
      producer: "Dat Guy",
      features: "Dat Gal"
    }
  }

  musician: {
    1: {
      name: "Supa Hot"
    }
  }
}
