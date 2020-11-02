import React from "react";

class SearchBar extends React.Component {
  state = { term: "" };

  onInputChange = () => {};

  render() {
    return (
      <div className="search-bar ui segment">
        <form className="ui form">
          <label>Video Search</label>
          <input
            type="text"
            value={this.state.term}
            onChange={this.onInputChange()}
          />
        </form>
      </div>
    );
  }
}

export default SearchBar;
