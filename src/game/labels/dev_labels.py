def build_dev_label_flow(label_builder, gsm):
    gsm.set_location('mortuary1')
    gsm.set_in_party_morte(True)
    gsm.set_has_scalpel(True)

    # current_dialog_key = "mortuary_walking_5_visit"
    # renpy.exports.jump("dialog_dispatcher")
    label_builder \
        .start_with("dev") \
            .say("mortuary_walking_5_visit") \
            .end_with("mortuary_dialog_loop")

    # label_builder \
    #     .start_with("dev") \
    #         .say("DMORTE1.D_s24") \
    #         .end_with("mortuary_dialog_loop")