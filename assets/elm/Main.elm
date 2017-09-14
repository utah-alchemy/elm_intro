module Main exposing (..)

import Html exposing (Html)
import CoolApp.Page
import CoolApp.Type exposing (..)
import CoolApp.User


type alias Model =
    { user : Maybe User
    , name : String
    }


main : Program Never Model Msg
main =
    Html.program
        { init = init
        , subscriptions = subscriptions
        , update = update
        , view = view
        }


init : ( Model, Cmd Msg )
init =
    ( { user = Nothing, name = "" }, CoolApp.User.fetch )


subscriptions : Model -> Sub Msg
subscriptions model =
    Sub.none


update : Msg -> Model -> ( Model, Cmd Msg )
update msg model =
    case msg of
        Noop ->
            ( model, Cmd.none )

        NameChanged name ->
            ( { model | name = name }, Cmd.none )

        UserLoaded user ->
            ( { model | user = Just user }, Cmd.none )


view : Model -> Html Msg
view model =
    case model.user of
        Nothing ->
            Html.text "Loading ..."

        Just user ->
            CoolApp.Page.render user model.name
