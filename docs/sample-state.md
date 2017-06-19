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

  topic: {
    1: {
      title: "good stuff"
    }
  }

  comments: {
    1: {
      body: "whoaa, sick track",
      user_id: 1,
      track_id: 1,
      topic_id: null,
    }

    2: {
      body: "thoughts on Justin Bieber?",
      user_id: 2,
      track_id: null,
      topic_id: null,
    }
    3: {
      body: "he's all right",
      user_id: 3,
      track_id: null,
      topic_id: 1,
    }
  }

  albums: {
    1: {
      title: "wowzers",
      musician: 1,
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

  annotations: {
    1: {
      user_id: 1,
      track_id: 1,
      start_idx: 3,
      end_idx: 10,
      body: "he's talking about the lion king",
    }
  }
}
