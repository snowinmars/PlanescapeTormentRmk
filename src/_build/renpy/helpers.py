import re

def trim_trash(text: str) -> str:
    text = text.replace('~', '').replace('«', '').replace('»', '').replace('...', '…').strip()
    return replace_nested_quotes(text)


def replace_nested_quotes(text: str) -> str:
    if text.count("'") < 2:
        return text
    first_idx = text.find("'")
    last_idx = text.rfind("'")
    if first_idx == last_idx:
        return text
    middle = text[first_idx+1:last_idx].replace("'", "«")
    return text[:first_idx+1] + middle.replace("'", "»") + text[last_idx:]


def to_single_return(script: str) -> str:
    lines = []
    for line in script.split('\n'):
        if line.strip().startswith('def') or line.strip() == 'init python:':
            lines.append(line)
            continue

        returns = [s.strip() for s in line.split('return') if s.strip()]
        if not returns:
            lines.append(line)
            continue

        if len(returns) == 1:
            lines.append(f"        return {returns[0]}")
        else:
            all_but_last = " and ".join(returns[:-1])
            lines.append(f"        return {all_but_last} and {returns[-1]}")
    return '\n'.join(lines)


def to_single_body(script):
    # Find all self.s.x() patterns
    self_calls = re.findall(r'self\.gsm\.[a-zA-Z0-9_]+\(\)', script)

    if not self_calls:
        return script

    # Format the self.s.x() parts with line continuations
    formatted_calls = self_calls[0]  # First call
    for call in self_calls[1:]:
        formatted_calls += ' \\\nand ' + call

    # Replace the original self.s.x() sequence with formatted version
    pattern = r'(' + re.escape(self_calls[0]) + r'(?: self\.s\.[a-zA-Z0-9_]+\(\))*)'
    return re.sub(pattern, formatted_calls, script, count=1)


def right_trim_lines(text: str) -> str:
    return '\n'.join(line.rstrip() for line in text.split('\n'))
