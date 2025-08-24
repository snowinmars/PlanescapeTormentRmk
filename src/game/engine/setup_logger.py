import os
import logging
import glob
import time
from pathlib import Path


def setup_logger(
    logs_folder,
    log_level=None,
    log_format=None,
    date_format=None,
    max_log_files=5,
    log_file_name=None
):
    log_level = logging.DEBUG if log_level is None else log_level
    log_format = '%(levelname)-6s %(asctime)-25s %(message)s' if log_format is None else log_format
    date_format = '%Y-%m-%d %H:%M:%S' if date_format is None else date_format
    now = int(time.time())
    log_file_name = f"dev-{now}.log" if log_file_name is None else log_file_name

    logs_folder_absolute_path = Path(logs_folder).absolute()
    if not os.path.exists(logs_folder_absolute_path):
        os.mkdir(logs_folder_absolute_path)
    full_log_file_path = os.path.join(logs_folder_absolute_path, log_file_name)

    log_list = glob.glob(os.path.join(logs_folder_absolute_path, 'dev*.log'))
    if len(log_list) > max_log_files: # Why +1 ?)
        for l in sorted(log_list, reverse=True)[max_log_files:]:
            os.remove(l)

    logging.basicConfig(level=log_level, format=log_format, datefmt=date_format)
    devlog = logging.getLogger('log')
    devlogfile = logging.FileHandler(full_log_file_path)
    devlogfile.setLevel(log_level)
    devlog.addHandler(devlogfile)
    devlog.critical(f"\n--- launch game ---")
    fm = logging.Formatter(log_format)
    devlogfile.setFormatter(fm)
    print(f"Use '{full_log_file_path}' for logging")
    del fm

    devlog.info("Log level: %s" % log_level)
    devlog.info("Logs directory: %s" % logs_folder)

    return devlog
