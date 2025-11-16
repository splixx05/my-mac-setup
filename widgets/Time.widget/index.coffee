# GitHub: https://github.com/yashchittora/

# ~~~ Settings ~~~
showDay = true; # true / false
refreshFrequency: 10000

# --- Styling ---
style: """

.container {
  border: 1px solid;
  border-color: rgba(180, 201, 255, 0.7);
  backdrop-filter: blur(15px);
  background: rgba(40, 52, 87, 0.7);
  display: flex;
  flex-direction: column;
  justify-content: center;
  align-items: center;
  font-family: "Roboto", sans-serif;
  color: rgba(180, 201, 255, 0.7);
  margin-top: 160px;
  margin-left: 4vw;
  padding: 10px 0px;
  width: 18vw;
  border-radius: 25px;
}

.time {
  font-weight: bold;
  font-size: 3em;
  text-align: center;
  color: rgba(180, 201, 255, 0.7);
  justify-content: center;
  align-items: center;
  position: relative;
  bottom: 34%;
  font-family: "Roboto", sans-serif;
}

"""
render: -> """
  <div class="container">
    <div class="time">
      <span class="day"></span> - <span class="date"></span>
      <span class="hour"></span>:<span class="min">:</span>
    </div>
  </div>
"""

# --- Functions ---
# Update function
update: (output, domEl) ->

  # Creating a new Date object for handling the data
  today = new Date()
  hour = today.getHours()
  minutes = today.getMinutes()
  dayNum = today.getDay()

  if (dayNum == 0)
    day = "Sun";
  else if (dayNum == 1)
    day = "Mon";
  else if (dayNum == 2)
    day = "Tue";
  else if (dayNum == 3)
    day = "Wed";
  else if (dayNum == 4)
    day = "Thu";
  else if (dayNum == 5)
    day = "Fri";
  else if (dayNum == 6)
    day = "Sat";
  else
    day = "Unknown";

  # Add zero as a prefix 
  minutes = "0"+ minutes if minutes < 10
  hour = "0"+ hour if hour < 10

  # Changing Contents of the Widget
  $(domEl).find('.hour').text("#{hour}")
  $(domEl).find('.min').text("#{minutes}")
  $(domEl).find('.day').text("#{day}")

# ------------------------------------------
# --- If you want to have the Day first,
# then replace the rendering section
# with this block below ---
#
#render: -> """
#   <div class="container">
#       <div class="text">
#       <span class="day"></span> <span class="date"></span>
#     </div>
#     <div class="time">
#         <span class="hour"></span>:<span class="min">:</span>
#       </div>
#   </div>
# """
