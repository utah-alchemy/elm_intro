module CoolApp.Type exposing (..)


type alias User =
    { email : String
    , username : String
    }


type Msg
    = Noop
    | NameChanged String
    | UserLoaded User
