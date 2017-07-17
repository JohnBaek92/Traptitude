import React from 'react';
import ReactQuill from 'react-quill';

class AnnotationShow extends React.Component {
  constructor(props) {
    super(props);
    debugger
    this.state = {
      user_id: this.props.session.currentUser.id,
      body: this.props.anno.body,
      location: this.props.location
    };
  }

  render() {
    debugger
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
        <div className="quill-container">
          <ReactQuill theme='bubble'
            readOnly={true}
            value={this.state.body}>
          </ReactQuill>
        </div>
        <button></button>
    </section>
    )
  }
}

export default AnnotationShow;
