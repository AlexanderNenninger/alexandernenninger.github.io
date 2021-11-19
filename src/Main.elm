module Main exposing (..)

import Browser exposing (element)
import Element exposing (..)
import Element.Background as Background
import Element.Border as Border
import Element.Font as Font
import Html exposing (Html, a)


main : Html msg
main =
    Element.layout []
        top_bar



-- Top Bar


top_bar : Element msg
top_bar =
    row
        [ screen_width
        , Background.color (Element.rgb255 51 122 183)
        ]
        [ column
            [ alignLeft
            , top_bar_padding
            ]
            [ el top_bar_format (text "Hello!") ]
        , column
            [ alignRight
            , top_bar_padding
            ]
            [ Element.link []
                { url = "https://github.com/AlexanderNenninger"
                , label = text "GitHub"
                }
            ]
        ]


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


top_bar_format : List (Attribute msg)
top_bar_format =
    [ Font.center
    , Font.size 30
    , h1
    , Font.medium
    , Font.color (rgb255 255 255 255)
    ]



-- Type Faces


h1 : Attribute msg
h1 =
    Font.family
        [ Font.typeface "Helvetica"
        , Font.sansSerif
        ]
