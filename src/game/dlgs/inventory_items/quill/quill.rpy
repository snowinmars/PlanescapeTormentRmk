init 10 python in quill:
    from game.engine.runtime import (runtime)
    from game.dlgs.inventory_items.quill.QuillLogic import (QuillLogic)

    quillLogic = QuillLogic(runtime.global_state_manager)


# ###
# Original:  ITM/QUILL.ITM
# ###


label quill_s0:
    $ quillLogic.talk()
    $ quillLogic.break_quill()
    'quill_s0{#quill_s0}'
    # nr 'Разломив перо, ты на секунду вспоминаешь кашель странного существа из Морга. Ты начинаешь понимать больше.{#quill_s0}'
    jump quill_dispose
