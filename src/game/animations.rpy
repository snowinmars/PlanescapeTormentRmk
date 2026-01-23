init python:
    import random
    atlas_animation_starting_phase_offsets = {}

    def atlas_animation(img, st, at, cols, rows, total_frames, xsize, ysize, fps):
        if img not in atlas_animation_starting_phase_offsets:
            anim_length = total_frames * (1.0 / fps)
            atlas_animation_starting_phase_offsets[img] = random.uniform(0, anim_length)

        anim_time = (st + atlas_animation_starting_phase_offsets[img]) % (total_frames * (1.0 / fps))
        frame = int(anim_time * fps)

        col = frame % cols
        row = frame // cols

        crop_img = im.Crop(
            img,
            (col * xsize, row * ysize, xsize, ysize)
        )

        return crop_img, 1.0/fps


image animated_deionarra_stand_s = DynamicDisplayable(
    lambda st, at: atlas_animation('animations/deionarra/stand_s.webp', st, at,
                   cols=4, rows=3, total_frames=12, fps=14,
                   xsize=68, ysize=94)
)
image animated_dhall_stand_s = DynamicDisplayable(
    lambda st, at: atlas_animation('animations/dhall/stand_s.webp', st, at,
                   cols=4, rows=3, total_frames=12, fps=14,
                   xsize=90, ysize=128)
)
image animated_dust_stand_s = DynamicDisplayable(
    lambda st, at: atlas_animation('animations/dust/stand_s.webp', st, at,
                   cols=5, rows=3, total_frames=12, fps=14,
                   xsize=50, ysize=96)
)
image animated_dustfem_stand_s = DynamicDisplayable(
    lambda st, at: atlas_animation('animations/dustfem/stand_s.webp', st, at,
                   cols=5, rows=3, total_frames=12, fps=14,
                   xsize=50, ysize=95)
)
image animated_eivene_stand_s = DynamicDisplayable(
    lambda st, at: atlas_animation('animations/eivene/stand_s.webp', st, at,
                   cols=4, rows=3, total_frames=12, fps=14,
                   xsize=50, ysize=95)
)
image animated_giantsk_stand_s = DynamicDisplayable(
    lambda st, at: atlas_animation('animations/giantsk/stand_s.webp', st, at,
                   cols=4, rows=3, total_frames=12, fps=14,
                   xsize=92, ysize=136)
)
image animated_morte_stand_s = DynamicDisplayable(
    lambda st, at: atlas_animation('animations/morte/stand_s.webp', st, at,
                   cols=5, rows=3, total_frames=12, fps=14,
                   xsize=50, ysize=79)
)
image animated_s42_stand_s = DynamicDisplayable(
    lambda st, at: atlas_animation('animations/s42/stand_s.webp', st, at,
                   cols=5, rows=3, total_frames=12, fps=14,
                   xsize=50, ysize=87)
)
image animated_s748_stand_s = DynamicDisplayable(
    lambda st, at: atlas_animation('animations/s748/stand_s.webp', st, at,
                   cols=5, rows=3, total_frames=12, fps=14,
                   xsize=50, ysize=87)
)
image animated_s863_stand_s = DynamicDisplayable(
    lambda st, at: atlas_animation('animations/s863/stand_s.webp', st, at,
                   cols=5, rows=3, total_frames=12, fps=14,
                   xsize=50, ysize=87)
)
image animated_s996_stand_s = DynamicDisplayable(
    lambda st, at: atlas_animation('animations/s996/stand_s.webp', st, at,
                   cols=5, rows=3, total_frames=12, fps=14,
                   xsize=50, ysize=87)
)
image animated_s1221_stand_s = DynamicDisplayable(
    lambda st, at: atlas_animation('animations/s1221/stand_s.webp', st, at,
                   cols=5, rows=3, total_frames=12, fps=14,
                   xsize=50, ysize=87)
)
image animated_soego_stand_s = DynamicDisplayable(
    lambda st, at: atlas_animation('animations/soego/stand_s.webp', st, at,
                   cols=5, rows=3, total_frames=12, fps=14,
                   xsize=50, ysize=96)
)
image animated_vaxis_stand_s = DynamicDisplayable(
    lambda st, at: atlas_animation('animations/vaxis/stand_s.webp', st, at,
                   cols=5, rows=3, total_frames=12, fps=14,
                   xsize=50, ysize=96)
)
image animated_xach_stand_s = DynamicDisplayable(
    lambda st, at: atlas_animation('animations/xach/stand_s.webp', st, at,
                   cols=5, rows=3, total_frames=12, fps=14,
                   xsize=50, ysize=96)
)
image animated_zf114_stand_s = DynamicDisplayable(
    lambda st, at: atlas_animation('animations/zf114/stand_s.webp', st, at,
                   cols=5, rows=3, total_frames=12, fps=10,
                   xsize=50, ysize=91)
)
image animated_zf444_stand_s = DynamicDisplayable(
    lambda st, at: atlas_animation('animations/zf444/stand_s.webp', st, at,
                   cols=5, rows=3, total_frames=12, fps=10,
                   xsize=50, ysize=91)
)
image animated_zf594_stand_s = DynamicDisplayable(
    lambda st, at: atlas_animation('animations/zf594/stand_s.webp', st, at,
                   cols=5, rows=3, total_frames=12, fps=10,
                   xsize=50, ysize=91)
)
image animated_zf626_stand_s = DynamicDisplayable(
    lambda st, at: atlas_animation('animations/zf626/stand_s.webp', st, at,
                   cols=5, rows=3, total_frames=12, fps=10,
                   xsize=50, ysize=91)
)
image animated_zf679_stand_s = DynamicDisplayable(
    lambda st, at: atlas_animation('animations/zf679/stand_s.webp', st, at,
                   cols=5, rows=3, total_frames=12, fps=10,
                   xsize=50, ysize=91)
)
image animated_zf832_stand_s = DynamicDisplayable(
    lambda st, at: atlas_animation('animations/zf832/stand_s.webp', st, at,
                   cols=5, rows=3, total_frames=12, fps=10,
                   xsize=50, ysize=91)
)
image animated_zf891_stand_s = DynamicDisplayable(
    lambda st, at: atlas_animation('animations/zf891/stand_s.webp', st, at,
                   cols=5, rows=3, total_frames=12, fps=10,
                   xsize=50, ysize=91)
)
image animated_zf916_stand_s = DynamicDisplayable(
    lambda st, at: atlas_animation('animations/zf916/stand_s.webp', st, at,
                   cols=5, rows=3, total_frames=12, fps=10,
                   xsize=50, ysize=91)
)
image animated_zf1072_stand_s = DynamicDisplayable(
    lambda st, at: atlas_animation('animations/zf1072/stand_s.webp', st, at,
                   cols=5, rows=3, total_frames=12, fps=10,
                   xsize=50, ysize=91)
)
image animated_zf1096_stand_s = DynamicDisplayable(
    lambda st, at: atlas_animation('animations/zf1096/stand_s.webp', st, at,
                   cols=5, rows=3, total_frames=12, fps=10,
                   xsize=50, ysize=91)
)
image animated_zf1148_stand_s = DynamicDisplayable(
    lambda st, at: atlas_animation('animations/zf1148/stand_s.webp', st, at,
                   cols=5, rows=3, total_frames=12, fps=10,
                   xsize=50, ysize=91)
)
image animated_zm79_stand_s = DynamicDisplayable(
    lambda st, at: atlas_animation('animations/zm79/stand_s.webp', st, at,
                   cols=5, rows=3, total_frames=12, fps=10,
                   xsize=50, ysize=96)
)
image animated_zm199_stand_s = DynamicDisplayable(
    lambda st, at: atlas_animation('animations/zm199/stand_s.webp', st, at,
                   cols=5, rows=3, total_frames=12, fps=10,
                   xsize=50, ysize=96)
)
image animated_zm257_stand_s = DynamicDisplayable(
    lambda st, at: atlas_animation('animations/zm257/stand_s.webp', st, at,
                   cols=5, rows=3, total_frames=12, fps=10,
                   xsize=50, ysize=96)
)
image animated_zm310_stand_s = DynamicDisplayable(
    lambda st, at: atlas_animation('animations/zm310/stand_s.webp', st, at,
                   cols=5, rows=3, total_frames=12, fps=10,
                   xsize=50, ysize=96)
)
image animated_zm396_stand_s = DynamicDisplayable(
    lambda st, at: atlas_animation('animations/zm396/stand_s.webp', st, at,
                   cols=5, rows=3, total_frames=12, fps=10,
                   xsize=50, ysize=96)
)
image animated_zm463_stand_s = DynamicDisplayable(
    lambda st, at: atlas_animation('animations/zm463/stand_s.webp', st, at,
                   cols=5, rows=3, total_frames=12, fps=10,
                   xsize=50, ysize=96)
)
image animated_zm475_stand_s = DynamicDisplayable(
    lambda st, at: atlas_animation('animations/zm475/stand_s.webp', st, at,
                   cols=5, rows=3, total_frames=12, fps=10,
                   xsize=50, ysize=96)
)
image animated_zm506_stand_s = DynamicDisplayable(
    lambda st, at: atlas_animation('animations/zm506/stand_s.webp', st, at,
                   cols=5, rows=3, total_frames=12, fps=10,
                   xsize=50, ysize=96)
)
image animated_zm569_stand_s = DynamicDisplayable(
    lambda st, at: atlas_animation('animations/zm569/stand_s.webp', st, at,
                   cols=5, rows=3, total_frames=12, fps=10,
                   xsize=50, ysize=96)
)
image animated_zm613_stand_s = DynamicDisplayable(
    lambda st, at: atlas_animation('animations/zm613/stand_s.webp', st, at,
                   cols=5, rows=3, total_frames=12, fps=10,
                   xsize=50, ysize=96)
)
image animated_zm732_stand_s = DynamicDisplayable(
    lambda st, at: atlas_animation('animations/zm732/stand_s.webp', st, at,
                   cols=5, rows=3, total_frames=12, fps=10,
                   xsize=50, ysize=96)
)
image animated_zm782_stand_s = DynamicDisplayable(
    lambda st, at: atlas_animation('animations/zm782/stand_s.webp', st, at,
                   cols=5, rows=3, total_frames=12, fps=10,
                   xsize=50, ysize=96)
)
image animated_zm825_stand_s = DynamicDisplayable(
    lambda st, at: atlas_animation('animations/zm825/stand_s.webp', st, at,
                   cols=5, rows=3, total_frames=12, fps=10,
                   xsize=50, ysize=96)
)
image animated_zm965_stand_s = DynamicDisplayable(
    lambda st, at: atlas_animation('animations/zm965/stand_s.webp', st, at,
                   cols=5, rows=3, total_frames=12, fps=10,
                   xsize=50, ysize=96)
)
image animated_zm985_stand_s = DynamicDisplayable(
    lambda st, at: atlas_animation('animations/zm985/stand_s.webp', st, at,
                   cols=5, rows=3, total_frames=12, fps=10,
                   xsize=50, ysize=96)
)
image animated_zm1041_stand_s = DynamicDisplayable(
    lambda st, at: atlas_animation('animations/zm1041/stand_s.webp', st, at,
                   cols=5, rows=3, total_frames=12, fps=10,
                   xsize=50, ysize=96)
)
image animated_zm1094_stand_s = DynamicDisplayable(
    lambda st, at: atlas_animation('animations/zm1094/stand_s.webp', st, at,
                   cols=5, rows=3, total_frames=12, fps=10,
                   xsize=50, ysize=96)
)
image animated_zm1146_stand_s = DynamicDisplayable(
    lambda st, at: atlas_animation('animations/zm1146/stand_s.webp', st, at,
                   cols=5, rows=3, total_frames=12, fps=10,
                   xsize=50, ysize=96)
)
image animated_zm1201_stand_s = DynamicDisplayable(
    lambda st, at: atlas_animation('animations/zm1201/stand_s.webp', st, at,
                   cols=5, rows=3, total_frames=12, fps=10,
                   xsize=50, ysize=96)
)
image animated_zm1445_stand_s = DynamicDisplayable(
    lambda st, at: atlas_animation('animations/zm1445/stand_s.webp', st, at,
                   cols=5, rows=3, total_frames=12, fps=10,
                   xsize=50, ysize=96)
)
image animated_zm1508_stand_s = DynamicDisplayable(
    lambda st, at: atlas_animation('animations/zm1508/stand_s.webp', st, at,
                   cols=5, rows=3, total_frames=12, fps=10,
                   xsize=50, ysize=96)
)
image animated_zm1664_stand_s = DynamicDisplayable(
    lambda st, at: atlas_animation('animations/zm1664/stand_s.webp', st, at,
                   cols=5, rows=3, total_frames=12, fps=10,
                   xsize=50, ysize=96)
)