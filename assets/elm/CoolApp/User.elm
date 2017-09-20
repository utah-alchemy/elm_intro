module CoolApp.User exposing (fetch)

import CoolApp.Type exposing (..)
import Task


fetch =
    let
        fetchedUser =
            { email = "fake@example.com"
            , username = Nothing
            }
    in
    fetchedUser
        |> Task.succeed
        |> Task.perform UserLoaded
