module CoolApp.Page exposing (render)

import CoolApp.Type exposing (..)
import Html exposing (Html, br, div, input, text)
import Html.Attributes exposing (class, type_)
import Html.Events exposing (onInput)


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
            getUserOrEmail user

        name ->
            name


getUserOrEmail : User -> String
getUserOrEmail user =
    case user.username of
        Nothing ->
            user.email

        Just username ->
            username
