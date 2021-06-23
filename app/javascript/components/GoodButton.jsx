import React from "react"
import PropTypes from "prop-types"
class GoodButton extends React.Component {
  constructor(props) {
    super(props);
    this.state = {
      isGooded: this.props.isalready,
      count: this.props.answerscount
    };
  }
  onClickButtonGood(e, method) {
    fetch(`/answers/${this.props.answerid}/goods`, {

      method: method,
      headers: {
        "Content-Type": "application/json"
      }
    }).then((response) => {
      return response.json();
    }).then((result) => {
      if (method === "POST") {
        this.setState({
          isGooded: true,
          count: result.count
        });
      }
      if (method === "DELETE") {
        this.setState({
          isGooded: false,
          count: result.count
        });
      }
    });
  }
  render() {
    let goods;
    if (this.state.isGooded) {
      goods = (
        <div className="thumbs-up-container">
          <div onClick={(e) => { this.onClickButtonGood(e, "DELETE") }} className={"py-2 px-2 good-thumbs-up"}>
            <i className={"fas fa-thumbs-up"} /> <span className="thumbs-up-count" style={{ fontSize: "16px" }}> {this.state.count} </span>
          </div>
        </div>
      );
    } else {
      goods = (
        <div className="thumbs-up-container">
          <div onClick={(e) => { this.onClickButtonGood(e, "POST") }} className={"py-2 px-2 good-thumbs-up"}>
            <span className="thumbs-up-count" style={{ fontSize: "16px" }}> <i className={"far fa-thumbs-up"} /> {this.state.count} </span>
          </div>
        </div>
      )
    }
    return (
      <div id={""}>
        {goods}
      </div>
    );
  }
}

export default GoodButton
