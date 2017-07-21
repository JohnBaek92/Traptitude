import React from 'react';

class AnnotationModal extends React.Component {
  constructor(props) {
    super(props);
  }

  componentWillUnmount() {
    this.props.closeAnnotation();
  }

  render() {
    if (this.props.isOpenAnno) {
      return(
        <div>
          <div className="annotation-modal-window"></div>
          <div className="annotation-form-box">
              {this.props.annotationComp}
          </div>
        </div>
      )
    } else {
        return (
          <div className="annotation-modal-not-active"></div>
        )
    }
  }
}

export default AnnotationModal;
