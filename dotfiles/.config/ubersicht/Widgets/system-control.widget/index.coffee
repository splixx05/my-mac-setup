command: ""

refreshFrequency: 30000 # ms

render: (output) ->
  """
    <div class="buttons">
      <span class="settings" id="settings"><img src='/system-control.widget/icons/settings.png' /></span>
      <span class="sleep" id="sleep"><img src='/system-control.widget/icons/sleep.png' /></span>
      <span class="restart" id="restart"><img src='/system-control.widget/icons/restart.png' /></span>
      <span class="shutdown" id="shutdown"><img src='/system-control.widget/icons/shutdown.png' /></span>
    </div>
  """

afterRender: (domEl) ->
  $(domEl).on 'click', '#sleep', => @run "pmset sleepnow"
  $(domEl).on 'click', '#restart', => @run "osascript -e 'tell app \"loginwindow\" to «event aevtrrst»'"
  $(domEl).on 'click', '#shutdown', => @run "osascript -e 'tell app \"loginwindow\" to «event aevtrsdn»'"
  $(domEl).on 'click', '#settings', => @run "osascript -e 'tell app \"System Preferences\" to activate'"

style: """
  padding: 10px 0px 5px 0px;
  width:18vw;
  border: 1px solid;
  border-color: rgba(180, 201, 255, 0.7);
  border-radius: 7px;
  background: rgb(40, 52, 87);
  margin-top: 95px;
  margin-left: 4vw;

  .buttons {
    display: flex;
    align-items: center;
    gap: 25px;
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
    width: 46px;
    height: 33px;
  }

  .settings img {
    width: 42px;
    height: 41px;
    margin-top: 2px;
    margin-left: 30px;
  }

  .restart img {
    width: 38px;
    height: 38px;
  }

  .shutdown img {
    width: 36px;
    height: 36px;
  }

"""
