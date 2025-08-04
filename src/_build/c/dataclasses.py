from dataclasses import dataclass


@dataclass(frozen=True)
class GameFile:
    path: str
    name: str
    content: str
