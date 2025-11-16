# file: daily-quotes.widget/index.coffee

command: "cat ~/.config/ubersicht/Widgets/Daily-Quotes.widget/quotes.json"
refreshFrequency: 1000 * 60 * 30  # --> mls * sec * min // can be increased with h or w

render: (output) ->
  quotes = JSON.parse(output)
  quote = quotes[Math.floor(Math.random() * quotes.length)]
  """
  <div class='quote-box'>
    <div class='quote-text'>“#{quote.text}”</div>
    <div class='quote-author'>— #{quote.author}</div>
  </div>
  """
style: """
/* css */
@font-face {
  font-family: 'Roboto';
  src: url('fonts/Roboto-Regular.ttf') format('truetype');
}
.quote-box {
  font-family: "Roboto", sans-serif;
  color: rgba(180, 201, 255, 0.7);
  width: 500px;
  position: fixed;
  top: 25%;
  left: 50%;
  transform: translate(-50%, -50%);  
}
.quote-text {
  font-size: 28px;
  font-style: bold;
  text-align: left;
}
.quote-author {
  font-size: 22px;
  margin-top: 8px;
  opacity: 0.8;
  text-align: right;
  }
.next {
  all: unset;
  cursor: pointer;
  color: rgba(180, 201, 255, 0.5);
  font-size: 13px;
  transition: color 0.2s;
}
.next:hover {
opavity: 0.9;
}
"""
