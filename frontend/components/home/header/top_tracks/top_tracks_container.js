import { connect } from 'react-redux';
import { displayTopTracks } from '../../../../actions/track_actions';
import TopTracks from './top_tracks';

const mapStateToProps = ({tracks}) => {
  return(
    {tracks: tracks}
  );
};

const mapDispatchToProps = (dispatch) => {
  return({
    displayTopTracks: () => dispatch(displayTopTracks())
  });
};

export default connect(mapStateToProps,
  mapDispatchToProps
)(TopTracks);
