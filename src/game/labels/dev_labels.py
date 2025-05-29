def build_dev_label_flow(label_builder, gsm):
    gsm.set_location('morgue2')
    label_builder \
        .start_with("dev") \
            .say("DMORTE2.D_s33") \
            .end_with("morgue_dialog_loop")