transform achievement_popout():
    ## The `on show` event occurs when the screen is first shown.
    on show:
        ## Align it off-screen at the left. Note that no y information is
        ## given, as that is handled on the popup screen.
        xpos 0.0 xanchor 1.0
        ## Ease it on-screen
        easein_back 1.0 xpos 0.0 xanchor 0.0
    ## The `on hide, replaced` event occurs when the screen is hidden.
    on hide, replaced:
        ## Ease it off-screen again.
        ## This uses the hide time above so it supports displaying multiple
        ## achievements at once.
        easeout_back myconfig.ACHIEVEMENT_HIDE_TIME xpos 0.0 xanchor 1.0
