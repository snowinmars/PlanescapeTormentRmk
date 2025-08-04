def search_speaker(rpy_files):
    errors = []
    warnings = []

    for rpy_file in rpy_files:
        if 'SPEAKER' in rpy_file.content:
            errors.append(f'Rpy file has "SPEAKER" in {rpy_file.path}')

        if 'Check EXTERN' in rpy_file.content:
            errors.append(f'Rpy file has "Check EXTERN" in {rpy_file.path}')

        if '».' in rpy_file.content:
            warnings.append(f'Change "»." to ".»" in {rpy_file.path}')

        if '?.».' in rpy_file.content:
            warnings.append(f'Change "?.»." to "?..»" in {rpy_file.path}')

        if '...' in rpy_file.content:
            warnings.append(f'Change "..." to "…" in {rpy_file.path}')

    return errors, warnings
