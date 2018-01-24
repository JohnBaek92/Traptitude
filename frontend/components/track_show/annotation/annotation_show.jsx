import React from 'react';
import ReactQuill from 'react-quill';
import SignInContainer from '../../home/header/user_form/signin_form_container';

class AnnotationShow extends React.Component {
  constructor(props) {
    super(props);
    this.state = {
      id: this.props.anno.id,
      user_id: this.props.session.currentUser ? this.props.session.currentUser.id : null,
      body: this.props.anno.body,
      location: this.props.location,
      readOnly: true
    };
    this.quillRef = null;
    this.reactQuillRef = null;
    this.handleEditOrSave = this.handleEditOrSave.bind(this);
    this.handleChange = this.handleChange.bind(this);
    this.deleteButtonRender = this.deleteButtonRender.bind(this);
    this.handleDelete = this.handleDelete.bind(this);
  }

  handleEditOrSave() {
    if(this.state.user_id !== null) {
      if(this.state.readOnly) {
        this.setState(Object.assign({}, this.state, {readOnly: false}));
      } else {
        this.setState(Object.assign({}, this.state, {readOnly: true}));
        this.props.updateAnnotation(this.state);
      }
    } else {
      this.props.openModal(<SignInContainer />);
    }
  }

  handleDelete() {
    this.props.removeAnnotation(this.props.anno);
    this.props.closeAnnotation();
  }

  deleteButtonRender() {
    if(this.state.readOnly !== true) {
      return(
        <button className="delete-anno" onClick={this.handleDelete}>Delete</button>
      );
    }
  }

  focusQuill() {
    this.reactQuillRef.focus();
  }

  componentWillReceiveProps(nextProps){
    if(nextProps.session.currentUser !== null) {
      this.setState(Object.assign({}, this.state, {user_id: nextProps.session.currentUser.id}));
    } else {
      this.setState(Object.assign({}, this.state, {user_id: null}));
    }
  }

  componentDidUpdate(prevProps, prevState){
    if(prevState.readOnly === true) {
      this.focusQuill();
    }
  }

  handleChange(value) {
    this.setState({ body: value});
  }

  render() {
    let style = {
      zIndex: 3,
      position: 'absolute',
      right: "10%",
      top: this.state.location+"px",
      width: "21em"
    };
    let buttonTitle = null;
    if(this.state.readOnly) {
      buttonTitle = "Edit";
    } else {
      buttonTitle = "Save";
    }
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
        <div id="quill-container">
          <ReactQuill ref={(el) => { this.reactQuillRef = el }}
            theme='bubble'
            onChange={this.handleChange}
            readOnly={this.state.readOnly}
            value={this.state.body}>
          </ReactQuill>
        </div>
        <button className="edit-or-save-button"
          onClick={this.handleEditOrSave}>{buttonTitle}</button>
        {this.deleteButtonRender()}
    </section>
    )
  }
}

export default AnnotationShow;
