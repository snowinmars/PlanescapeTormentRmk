from labels.dev_labels import (build_dev_label_flow)
from labels.mortuary_labels import (build_mortuary_label_flow)

def build_all_labels(label_builder, gsm):
    build_dev_label_flow(label_builder, gsm)
    build_mortuary_label_flow(label_builder)