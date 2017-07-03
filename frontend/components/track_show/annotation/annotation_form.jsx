import React from 'react';
import ReactQuill from 'react-quill';

class AnnotationForm extends React.Component {
  constructor(props) {
    super(props);
    console.log('annotation constructor');
    this.state = {
      body: '',
      start_idx: this.props.startIdx,
      end_idx: this.props.endIdx,
      user_id: this.props.session.currentUser.id,
      track_id: this.props.trackId
    };
    this.handleChange = this.handleChange.bind(this);
    this.handleSubmit = this.handleSubmit.bind(this);
  }

  handleChange(value) {
    this.setState({ body: value});
  }

  componentDidMount() {
    debugger
  }

  // componentWillReceiveProps(nextProps) {
  //   debugger
  //   if((this.props.start_idx !== nextProps.start_idx && (this.props.end_idx !== nextProps.end_idx))) {
  //     this.setState({start_idx: nextProps.start_idx, end_idx: nextProps.end_idx});
  //   }
  // }

  handleSubmit() {
    debugger
    const annotation = this.state;
    this.props.makeAnnotation({annotation: annotation});
    this.setState(Object.assign({body: "", start_idx: null, end_idx: null}));
    this.props.closeAnnotation();
  }

  render() {
    console.log('render annotation modal')
    return(
      <form onSubmit={this.handleSubmit}>
        <h1>annotation</h1>
        <ReactQuill theme='bubble'
          onChange={this.handleChange}
          value={this.state.body}
          placeHolder='Create Annotation'>
          <div className="create-annotation-text-area"></div>
        </ReactQuill>
        <input type="submit" value="Submit" />
      </form>
    )
  }
}

export default AnnotationForm;
