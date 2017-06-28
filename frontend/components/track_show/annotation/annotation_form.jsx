import React from 'react';
import ReactQuill from 'react-quill';

class AnnotationForm extends React.Component {
  constructor(props) {
    super(props);
    this.state = {
      body: this.state.username,
      start_idx: this.state.start_idx,
      end_idx: this.state.end_idx
    };
    this.handleChange = this.handleChange.bind(this);
  }

  handleChange(value) {
    this.setState({ body: value});
  }

  render() {
    <section>
      <ReactQuill theme='bubble'
        onChange={this.handleChange}
        placeHolder='Create Annotation'>
        <div className="create-annotation-text-area"></div>
      </ReactQuill>
    </section>
  }
}

export default AnnotationForm;
