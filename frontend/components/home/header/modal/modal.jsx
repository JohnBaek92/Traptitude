import React from 'react';

class Modal extends React.Component {
  constructor(props) {
    super(props);
  }

  render() {
    if (this.props.isOpen) {
      return (
        <div>
          <div className="modal-window" onClick={() => this.props.closeModal()}></div>
          <div className="modal-content">
            {this.props.component}
          </div>
        </div>
      );
    } else {
      return (
        <div className="modal-not-active"></div>
      );
    }
  }
}

export default Modal;
