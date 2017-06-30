import React from 'react';

class Annotation extends React.Component {
  constructor(props) {
    super(props);
  }

  render() {
    if (this.props.isOpenAnno) {
      return(
        <div>
          <div className="annotation-modal-window"
            onClick={() => this.props.closeAnnotation()}></div>
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

export default Annotation;
