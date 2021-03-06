module Repositories.Types exposing (..)

import Repositories.Issues.Types


type alias Issue =
    { title : String
    , createdAt : String
    }


type alias Model =
    { repoName : String
    , repository : Maybe Repository
    , issues : Repositories.Issues.Types.Model
    }


type alias Repository =
    { fullName : String
    , description : String
    , stars : Int
    }


type Msg
    = NoOp
    | FetchGithubData
    | NewGithubData Repository
    | NewRepoInput String
    | IssueMessage Repositories.Issues.Types.Msg
