@Pictures = React.createClass
  getInitialState: ->
    pictures: @props.data
  getDefaultProps: ->
    pictures: []
  render: ->
    `<div className="records">
      <h2 className="title"> Records </h2>
    </div>`
