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
        <div className="thumbs-up-container">
          <div onClick={(e) => { this.onClickButtonEvaluation(e, "DELETE") }} className="py-2 px-2 thumbs-up">
            <i class="fas fa-thumbs-up" /> <span className="thumbs-up-count" style={{ fontSize: "16px" }}>{this.state.count}</span>
          </div>
        </div>
      );
    } else {
      evaluations = (
        <div className="thumbs-up-container">
          <div onClick={(e) => { this.onClickButtonEvaluation(e, "POST") }} className="py-2 px-2 thumbs-up">
            <i class="far fa-thumbs-up" /> <span className="thumbs-up-count" style={{ fontSize: "16px" }}>{this.state.count}</span>
          </div>
        </div>
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
