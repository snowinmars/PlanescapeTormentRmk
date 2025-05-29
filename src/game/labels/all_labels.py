from labels.dev_labels import (build_dev_label_flow)
from labels.morgue_labels import (build_morgue_label_flow)

def build_all_labels(label_builder, gsm):
    build_dev_label_flow(label_builder, gsm)
    build_morgue_label_flow(label_builder)