def searchSpeaker(rpy_files):
    for rpy_file in rpy_files:
        try:
            content = rpy_file.read_text(encoding='utf-8')
        except Exception as e:
            print(f"Error reading {rpy_file}: {e}", file=sys.stderr)
            continue

        if 'SPEAKER' in content:
            print(f'Bad! Rpy file has "SPEAKER" in it: {rpy_file}')

        if 'Check EXTERN' in content:
            print(f'Bad! Rpy file has "Check EXTERN" in it: {rpy_file}')