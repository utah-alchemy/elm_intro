module CoolApp.Page exposing (render)

import Html exposing (div, input, text, br)
import Html.Attributes exposing (type_, class)


render =
    div [ class "cool-application" ]
        [ input [ type_ "text" ] []
        , br [] []
        , text "Hello world!"
        ]
