def build_dev_label_flow(label_builder, gsm):
    gsm.set_location('mortuary1')
    gsm.set_in_party_morte(True)
    gsm.set_has_scalpel(True)

    label_builder \
        .start_with("dev") \
            .say("DMORTE1.D_s23") \
            .end_with("mortuary_dialog_loop")
