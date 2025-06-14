# Each settings_id will be transformed to a bunch of functions into the gsm
#   see the builder flow for more
from setting.generated import (build_autogenerated_settings)


def build_all_settings(manager):
    build_autogenerated_settings(manager)
    manager \
        .register('good', 0) \
        .register('law', 0) \
        .register('lore', 0) \
        .register('gold', 0) \
        .register('exp', 0)
