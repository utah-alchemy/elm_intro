module Main exposing (..)

import Html exposing (Html)
import CoolApp.Page
import CoolApp.Msg exposing (..)


type alias Model =
    { name : String }


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
    ( { name = "" }, Cmd.none )


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


view : Model -> Html Msg
view model =
    CoolApp.Page.render model.name
