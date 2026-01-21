import zipfile
import glob
import io
import os


def archive_resources(globs, base_dir, compression_level = 0):
    all_files = set()
    for pattern in globs:
        matched_files = glob.glob(os.path.join(base_dir, pattern), recursive=True)
        for file_path in matched_files:
            if os.path.isfile(file_path):
                all_files.add(file_path)

    if not all_files:
        raise ValueError('No files found')

    print()
    print(f'Found {len(all_files)} files, archiving...')
    print()

    archive_stream = io.BytesIO()

    with zipfile.ZipFile(
        archive_stream,
        'w',
        compression=zipfile.ZIP_DEFLATED if compression_level > 0 else zipfile.ZIP_STORED,
        compresslevel=compression_level
    ) as zipf:
        for file_path in all_files:
            arcname = os.path.relpath(file_path, base_dir)
            zipf.write(file_path, arcname=arcname)

    archive_stream.seek(0)
    return archive_stream


def save_archive(archive_stream, output_path):
    with open(output_path, 'wb') as f:
        f.write(archive_stream.getvalue())


def extract_resources(version):
    patterns = [
        'animations/zm782/**/*',
        'audio/**/*',
        'bg/**/*',
        'fonts/**/*',
        'gui/**/*',
        'images/**/*',
        'music/**/*',
        'sound/**/*'
    ]
    base_dir = './game'
    output_path = f'./resources-v{version}.zip'
    if not os.path.isdir(base_dir):
        raise Exception(f'{base_dir} does not exist')

    archive_stream = archive_resources(patterns, base_dir=base_dir, compression_level=1)
    save_archive(archive_stream, output_path)
    print(f'Saved resources archive into {output_path}')
