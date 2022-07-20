conky.config = {
    -- Run settings
    total_run_times = 0,
    update_interval = 1,

    -- Positioning
    alignment = 'top_left',
    gap_x = 10,
    gap_y = 870,
    minimum_width = 1200,
    maximum_width = 1200,
    -- minimum_height = 200,

    -- Draw settings
    double_buffer = true,
    draw_shades = false,
    draw_blended = false,

    -- Compositor settings
    own_window = true,
    own_window_argb_visual = true,
    own_window_argb_value = 0,
    own_window_transparent = true,
    own_window_hints = 'undecorated,below,sticky,skip_taskbar,skip_pager',
    own_window_type = 'dock',

    -- Text settings
    uppercase = true,
    use_xft = true,
    override_utf8_locale = true
};

conky.text = [[
    ${if_running spotify}${color #fff}${font Ubuntu Mono:size=12}${goto 160}NOW PLAYING:
    ${goto 200}${font Ubuntu Mono:style=bold:size=27}${exec playerctl -p spotify metadata artist}
    ${goto 160}${font Ubuntu Mono:size=23}${exec playerctl -p spotify metadata title}
    ${else}${color #fff}${font Ubuntu Mono:size=15}
        

Not playing
    ${endif}
    
${if_running spotify}${exec ./scripts/fetch-art spotify}
    ${image ./data/spotify.png -p 0,0 -s 125x125 -n}
${endif}
    
    
 ]];

