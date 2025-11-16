command: ""

refreshFrequency: 30000 # ms

render: (output) ->
  """
  <div class="widget">
    <div class="buttons">
      <span class="settings" id="settings"><img src='/system-control.widget/icons/settings.png' /></span>
      <span class="sleep" id="sleep"><img src='/system-control.widget/icons/sleep.png' /></span>
      <span class="restart" id="restart"><img src='/system-control.widget/icons/restart.png' /></span>
      <span class="shutdown" id="shutdown"><img src='/system-control.widget/icons/shutdown.png' /></span>
    </div>
  </div>
  """

afterRender: (domEl) ->
  $(domEl).on 'click', '#sleep', => @run "pmset sleepnow"
  $(domEl).on 'click', '#restart', => @run "osascript -e 'tell app \"loginwindow\" to «event aevtrrst»'"
  $(domEl).on 'click', '#shutdown', => @run "osascript -e 'tell app \"loginwindow\" to «event aevtrsdn»'"
  $(domEl).on 'click', '#settings', => @run "osascript -e 'tell app \"System Preferences\" to activate'"

style: """
  .widget {
  padding: 10px 0px 5px 0px;
  width:18vw;
 
  margin-top: 115px;
  margin-left: 4vw;
  } 

  .buttons {
    display: flex;
    align-items: center;
    gap: 10px;
  }

  .buttons img {
    opacity: 0.7;
    transition: 0.2s ease-in-out;
    cursor: pointer;
  }

  .buttons img:hover {
    transform: scale(1.15);
    opacity: 1;
  }

  .sleep img {
    width: 30px;
    height: 23px;
  }

  .settings img {
    width: 26px;
    height: 25px;
    margin-top: 2px;
    margin-left: 30px;
  }

  .restart img {
    width: 22px;
    height: 22px;
  }

  .shutdown img {
    width: 20px;
    height: 20px;
  }

"""

# -------------------------------
# If a field / bg is needed:
# border: 1px solid;
#  border-color: rgba(180, 201, 255, 0.7);
#  border-radius: 25px;
#  backdrop-filter: blur(15px);
#  -webkit-backdrop-filter: blur(15px);
#  background: rgba(40, 52, 87, 0.7);
