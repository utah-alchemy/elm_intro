module CoolApp.Page exposing (render)

import Html exposing (Html, div, input, text, br)
import Html.Attributes exposing (type_, class)
import Html.Events exposing (onInput)
import CoolApp.Type exposing (..)


render : User -> String -> Html Msg
render user override =
    div [ class "cool-application" ]
        [ input [ type_ "text", onInput NameChanged ] []
        , br [] []
        , override
            |> displayName user
            |> displayText
            |> text
        ]


displayText name =
    "Hello " ++ name ++ "!"


displayName user override =
    case override of
        "" ->
            user.username

        name ->
            name
