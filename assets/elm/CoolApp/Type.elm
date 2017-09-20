module CoolApp.Type exposing (..)


type alias User =
    { email : String
    , username : Maybe String
    }


type Msg
    = Noop
    | NameChanged String
    | UserLoaded User
