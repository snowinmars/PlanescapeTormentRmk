def build_mortuary_locations(manager):
    return manager \
        .register('AR0202', [
            'mortuary_f2r1', 'mortuary_f2r2', 'mortuary_f2r3',
            'mortuary_f2r4', 'mortuary_f2r5', 'mortuary_f2r6',
            'mortuary_f2r7', 'mortuary_f2r8'
        ]) \
        .register('AR0203', [
            'mortuary_f3r2', 'mortuary_f3r4',
            'mortuary_f3r6', 'mortuary_f3r8'
        ]) \
        .register('AR0201', [
            'mortuary_f1r1', 'mortuary_f1r3', 'mortuary_f1r5',
            'mortuary_f1r6', 'mortuary_f1r7', 'mortuary_f1rc'
        ]) \
        .register('AR0200', [
            'hive_northeast'
        ]) \
        .register('AR0700', [
            'curst'
        ]) \
        .register('AR0601', [
            'civic_festhall'
        ]) \
        .register('AR0610', [
            'ravels_maze'
        ])

