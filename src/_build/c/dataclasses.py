from dataclasses import dataclass


@dataclass
class GameFile:
    path: str
    name: str
    content: str
