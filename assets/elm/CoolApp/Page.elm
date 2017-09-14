module CoolApp.Page exposing (render)

import Html exposing (Html, div, input, text, br)
import Html.Attributes exposing (type_, class)
import Html.Events exposing (onInput)
import CoolApp.Msg exposing (..)


render : String -> Html Msg
render name =
    div [ class "cool-application" ]
        [ input [ type_ "text", onInput NameChanged ] []
        , br [] []
        , displayText name
        ]


displayText : String -> Html Msg
displayText name =
    case name of
        "" ->
            text "Hello World!"

        name ->
            text ("Hello " ++ name ++ "!")
