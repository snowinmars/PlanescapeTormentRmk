import re
import sys
from pathlib import Path

# Regex patterns for matching label definitions, jumps, and calls
LABEL_PATTERN = re.compile(r'label\s+(.*?):')
JUMP_PATTERN = re.compile(r'jump\s+(.*?)\n')
CALL_PATTERN = re.compile(r'call\s+(.*?)\n')

IGNORE_LABELS = {
    'show_graphics_menu',
}


def extract_label_names(content, pattern):
    names = set()
    for match in pattern.findall(content):
        name = match.strip().split()[0].rstrip(':')
        names.add(name)
    return names


def matchLabels(rpy_files):
    defined_labels = set()
    referenced_labels = set()

    for rpy_file in rpy_files:
        try:
            content = rpy_file.read_text(encoding='utf-8')
        except Exception as e:
            print(f"Error reading {rpy_file}: {e}", file=sys.stderr)
            continue

        defined_labels.update(extract_label_names(content, LABEL_PATTERN))
        referenced_labels.update(extract_label_names(content, JUMP_PATTERN))
        referenced_labels.update(extract_label_names(content, CALL_PATTERN))

    # Remove ignored labels and compute undefined labels
    referenced_labels -= IGNORE_LABELS
    undefined_labels = referenced_labels - defined_labels

    if undefined_labels:
        print("Undefined labels:")
        for label in sorted(undefined_labels):
            print(f"  {label}")
    else:
        print("Good: All labels are properly defined")