import React from "react"
import PropTypes from "prop-types"
class EvaluationButton extends React.Component {
  constructor(props) {
    super(props);
    this.state = {
      isEvaluated: this.props.isalready,
      count: this.props.questionscount
    };
  }
  onClickButtonEvaluation(e, method) {
    fetch(`/questions/${this.props.questionid}/evaluation`, {

      method: method,
      headers: {
        "Content-Type": "application/json"
      }
    }).then((response) => {
      return response.json();
    }).then((result) => {
      if (method === "POST") {
        this.setState({
          isEvaluated: true,
          count: result.count
        });
      }
      if (method === "DELETE") {
        this.setState({
          isEvaluated: false,
          count: result.count
        });
      }
    });
  }
  render() {
    let evaluations;
    if (this.state.isEvaluated) {
      evaluations = (
        <button onClick={(e) => { this.onClickButtonEvaluation(e, "DELETE") }} className={"btn btn-light btn-outline-secondary"}>
          役に立った <i className={"fas fa-grin-squint smile"} /> {this.state.count}
        </button>
      );
    } else {
      evaluations = (
        <button onClick={(e) => { this.onClickButtonEvaluation(e, "POST") }} className={"btn btn-light btn-outline-secondary"}>
          役に立った <i className={"far fa-grin-squint smile"} /> {this.state.count}
        </button>
      )
    }
    return (
      <div id={"useful"}>
        {evaluations}
      </div>
    );
  }
}

export default EvaluationButton
