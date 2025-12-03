# on GitHub: https://github.com/yashchittora/ClockWidget

# ~~~ Settings ~~~
showDate = true; # true / false
showDay = true; # true / false
centreWidget = true;  # true / false (true=centre , false=top)
# ~~~~~~~~~~~~~~~~
refreshFrequency: 10000
#
#CSS
style: """
  @import url('https://fonts.googleapis.com/css2?family=Bruno+Ace+SC&display=swap');
  @import url('https://fonts.googleapis.com/css2?family=Syncopate:wght@400;700&display=swap');

  .container
    display: flex
    flex-direction: column
    justify-content: center
    align-items: center
    position: fixed
    top: 40%
    left: 50%
    transform: translate(-50%, -50%)
    padding: 10px 0
    width:18vw
    
  .date
    font-weight: bold
    font-size: 7em
    text-align: center
    color: rgb(106, 117, 153)
    opacity: 0.6
    font-family: "Syncopate", sans-serif
    font-weight: 700

  .time
    font-weight: bold
    font-size: 4em
    text-align: center
    margin-top: 25px
    color: rgb(106, 117, 153)
    opacity: 0.6
    font-family: "Syncopate", sans-serif
    font-weight: 700
"""

render: -> """
  <div class="container">
    <div class="date">
      <span class="day"></span>
    </div>
      <div class="time">
        <span class="hour"></span>:<span class="min">:</span>
      </div>
  </div>
"""

# Update function
update: (output, domEl) ->

  # Creating a new Date object for handling the data
  today = new Date()
  hour = today.getHours()
  minutes = today.getMinutes()

  days = ["Sunday","Monday","Tuesday","Wednesday","Thursday","Friday","Saturday"]
  day = days[today.getDay()]

  # Add zero as a prefix if minutes have single digit
  minutes = "0"+ minutes if minutes < 10

  
  # Changing Contents of the Widget
  $(domEl).find('.hour').text("#{hour}")
  $(domEl).find('.min').text("#{minutes}")
  $(domEl).find('.day').text("#{day}") if showDay

  if centreWidget
    # Apply CSS changes for condition1
    $(domEl).find('.time').css({
      'bottom': '3%',
    })
    $(domEl).find('.text').css({
      'bottom': '3%',
    })
    $(domEl).find('.text2').css({
      'bottom': '3%',
    })
