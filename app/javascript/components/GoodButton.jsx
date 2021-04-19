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
        <button onClick={(e) => { this.onClickButtonGood(e, "DELETE") }} className={"btn btn-light btn-outline-secondary"}>
          参考になった <i className={"fas fa-thumbs-up"} /> {this.state.count}
        </button>
      );
    } else {
      goods = (
        <button onClick={(e) => { this.onClickButtonGood(e, "POST") }} className={"btn btn-light btn-outline-secondary"}>
          参考になった <i className={"far fa-thumbs-up"} /> {this.state.count}
        </button>
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
