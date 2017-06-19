{
  session: {
    currentUser: {
    id: 1,
    username: "reallycoolusername",
    session_token: "1498dh2ks82ssfk3"
    }
  }
  story {
    id: 1
    title: "great title",
    author: "the journalist"
  }
  album {
    1: {
      id: 1,
      title: "Gret Album",
      release_date: 2013, September, 22,
      musician: "Kirby",
      image_url: "google.com/123",
      tracks: {
        1: {
          id: 1,
          title: "the first track",
          features: "Mario",
          producer: "Princess Peach"
        }
        2: {
          id: 2,
          title: "the second one",
          features: "Luigi",
          producer: "Wario"
        }
      }
    }
  }
  track {
    1: {
      id: 1,
      album_id: 1
      title: "the first track",
      musician: "Kirby",
      features: "Mario",
      producer: "Princess Peach",
      lyrics: {
        `[Toad]
        Bowser tried to ruin our party,
        he really did, he really did,
        Bowser tried to ruin our party`
      },
      annotations: {
        1: {
          indices: [11, 20],
          body: "Bowser tried to ruin our party",
          comments: []
        }
      },
      comments {
        1: {
          user_id: 1,
          body: "really great stuff"
        }
      }
    }
  }
  comment {
    1: {
      id: 1
      user_id: 1,
      body: "really great stuff",
      parent_comment_id: null,
      track_id: 1
      annotation_id: null
    }
  }
  upvotes {
    1: {
      id: 1,
      user_id: 1,
      comment_id: 1,
      track_id: null,
      annotation_id, null
    }
  }
}
