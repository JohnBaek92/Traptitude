import React from 'react';
import ReactQuill from 'react-quill';

class AnnotationForm extends React.Component {
  constructor(props) {
    super(props);
    this.state = {
      body: '',
      location: this.props.location,
      start_idx: this.props.startIdx,
      end_idx: this.props.endIdx,
      user_id: this.props.session.currentUser.id,
      track_id: this.props.trackId
    };
    this.handleChange = this.handleChange.bind(this);
    this.handleSubmit = this.handleSubmit.bind(this);
    this.closeAnnotationAndClearSelection = this.closeAnnotationAndClearSelection.bind(this);
  }

  handleChange(value) {
    this.setState({ body: value});
  }

  handleSubmit() {
    const annotation = this.state;
    this.props.makeAnnotation({annotation: annotation});
    this.setState(Object.assign({body: "", start_idx: null, end_idx: null}));
    this.props.closeAnnotation();
  }

  closeAnnotationAndClearSelection() {
    this.props.closeAnnotation();
    window.getSelection().removeAllRanges();
  }

  componentWillReceiveProps(nextProps) {
      if (this.state.location !== nextProps.location) {
        this.setState({
        location: nextProps.location,
        start_idx: nextProps.startIdx,
        end_idx: nextProps.endIdx,
        body: ''
      });
    }
  }

  render() {
    let style = {
      zIndex: 3,
      position: 'absolute',
      right: "7em",
      top: this.state.location+"px",
      width: "21em"
    };
    return(
      <section style={style}>
        <div className="purple-anno-arrow">
          <div className="line-one-anno">|</div>
          <div className="line-two-anno">|</div>
          <div className="less-than-for-annotation">{"<"}</div>
          <div className="line-three-anno">|</div>
          <div className="line-four-anno">|</div>
          <div className="line-five-anno">|</div>
          <div className="line-six-anno">|</div>
        </div>
        <form onSubmit={this.handleSubmit}>
          <div className="quill-container">
            <ReactQuill theme='bubble'
              onChange={this.handleChange}
              value={this.state.body}
              placeholder="Don't just put the lyric in your own words-drop some knowledge!">
              <div className="create-annotation-text-area"></div>
            </ReactQuill>
          </div>
          <hr />
          <div>
            <input className="annotation-submit-button" type="submit" value="Save" />
            <button className="cancel-anno-button" onClick={this.closeAnnotationAndClearSelection}>Cancel</button>
          </div>
        </form>
      </section>
    )
  }
}

export default AnnotationForm;
