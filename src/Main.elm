module Main exposing (..)

import Element exposing (..)
import Element.Background as Background
import Element.Border as Border
import Element.Font as Font
import Html exposing (Html, col, main_, menu)


main : Html msg
main =
    Element.layout
        [ width fill
        , height fill
        , inFront top_bar
        , Background.image "assets/background_space_gray.png"
        ]
    <| column
            [ width fill, height fill ]
            [ top_bar
            , row [ width fill, height fill ]
                [ left_panel
                , main_panel
                , right_panel
                ]
            ]



-- Content


top_bar : Element msg
top_bar =
    row
        -- Style
        [ width fill
        , padding 20
        , spacing 20
        , Background.color (Element.rgb255 0 0 0)
        ]
        -- Content
        [ el title_format (text "Alexander Nenninger")
        , link
            link_format
            { url = "https://github.com/AlexanderNenninger"
            , label = text "GitHub"
            }
        , link
            link_format
            { url = "https://freightdatanow.de/"
            , label = text "Freight:Data:now"
            }
        ]


left_panel : Element msg



-- Have some content in the ccenter of the screen


left_panel =
    column
        [ height fill
        , width <| fillPortion 1
        , height fill
        , Background.color <| rgba255 255 2555 255 0.5
        ]
        [ none ]


right_panel : Element msg
right_panel =
    column
        [ height fill
        , width <| fillPortion 1
        , height fill
        , Background.color <| rgba255 255 2555 255 0.5
        ]
        [ none ]


main_panel : Element msg
main_panel =
    column
        [ height fill
        , width <| fillPortion 4
        , Background.color <| rgba255 255 255 255 0.5
        , padding 20
        ]
        [ el heading_format <| text ""
        ]



-- Top Bar


top_bar_padding : Attribute msg
top_bar_padding =
    paddingEach
        { top = 20
        , left = 20
        , right = 20
        , bottom = 20
        }


screen_width : Attribute msg
screen_width =
    Element.width fill


total_height : Attribute msg
total_height =
    Element.height fill


title_format : List (Attribute msg)
title_format =
    [ alignLeft
    , Font.alignLeft
    , Font.size 20
    , font_heavy
    , Font.bold
    , Font.color (rgb255 255 255 255)
    ]


link_format : List (Attribute msg)
link_format =
    [ alignRight
    , Font.center
    , Font.size 20
    , font_regular
    , Font.color (rgb255 255 255 255)
    ]


heading_format : List (Attribute msg)
heading_format =
    [ Font.alignLeft
    , Font.size 18
    , font_light
    , Font.color (rgb255 25 25 25)
    ]


text_format : List (Attribute msg)
text_format =
    [ Font.alignLeft
    , Font.size 12
    , font_regular
    , Font.color (rgb255 25 25 25)
    ]



-- Type Faces


font_heavy : Attribute msg
font_heavy =
    Font.family
        [ Font.external
            { url = "https://fonts.googleapis.com/css2?family=IBM+Plex+Mono:wght@700&display=swap"
            , name = "IBM Plex Mono Heavy"
            }
        , Font.monospace
        ]


font_light : Attribute msg
font_light =
    Font.family
        [ Font.external
            { url = "https://fonts.googleapis.com/css2?family=IBM+Plex+Mono:wght@300&display=swap"
            , name = "IBM Plex Mono Light"
            }
        , Font.monospace
        ]


font_regular : Attribute msg
font_regular =
    Font.family
        [ Font.external
            { url = "https://fonts.googleapis.com/css2?family=IBM+Plex+Mono:wght@400&display=swap"
            , name = "IBM Plex Mono"
            }
        , Font.monospace
        ]
