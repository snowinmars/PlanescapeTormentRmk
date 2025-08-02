def writeFile(path, content):
    with open(path, "w", encoding='utf-8') as file:
        file.write(content)