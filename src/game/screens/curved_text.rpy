# https://lemmasoft.renai.us/forums/viewtopic.php?t=67350

init python:
    import math

    class CurvedText(renpy.Displayable):
        def __init__(self, what, points, rot=True, t_start=0.0, t_end=1.0, **kwargs):
            '''
            what: the text we want to curve
            points: a list of n > 2 points that define the curve, e.g. [(0, 0), (150, 150), (300, 0)]
            rot: whether or not to rotate the letters along the curve
            t_start: where to start on the curve (0.0 <= t_start < 1.0)
            t_end: where to end on the curve (0.0 < t_end <= 1.0)
            optional: pass keyword arguments for the text like 'style', 'font', 'size', 'color' etc.
            '''
            super(CurvedText, self).__init__(**kwargs)

            # a list of arguments we will use for the final composite image
            args = []
            l = len(what)
            n = len(points)
            # current position along the curve (0.0 = start, 1.0 = end)
            t = t_start
            # equal step distance depending on the text length
            td = (t_end - t_start) / max(1, l - 1)

            # loop through all characters of the text
            for i in range(l):
                # skip whitespaces
                if not what[i].strip():
                    t += td
                    continue
                # use 'De Casteljau's algorithm' to find the point (x, y) on the curve at value t
                q = [list(p) for p in points]
                t0 = 1 - t
                for j in range(1, n):
                    for k in range(n - j):
                        q[k][0] = q[k][0] * t0 + q[k+1][0] * t
                        q[k][1] = q[k][1] * t0 + q[k+1][1] * t

                # the point on the curve was saved in q[0]
                x = int(q[0][0])
                y = int(q[0][1])

                # if we want to rotate, we need the vector of the tangent through this point (x, y)
                if rot:
                    # the last character's tangent if t_end == 1.0 is not found via the algorithm
                    # but we know that it equals the line between the last two points
                    if i == l - 1 and t_end == 1.0:
                        u = points[-1][0] - points[-2][0]
                        v = points[-1][1] - points[-2][1]
                    # in all other cases the algorithm's nature already got it
                    else:
                        u = q[1][0] - q[0][0]
                        v = q[1][1] - q[0][1]
                    # now just calculate the angle between the vector and the x-axis
                    r = math.degrees(math.atan2(v, u))
                    args.append(Transform(Text(what[i], **kwargs), xcenter=x, ycenter=y, rotate=r, subpixel=True))
                else:
                    args.append(Transform(Text(what[i], **kwargs), xcenter=x, ycenter=y, subpixel=True))

                # move one step along the curve
                t += td

            self.child = Fixed(*args)
            return

        def render(self, width, height, st, at):

            cr = renpy.render(self.child, width, height, st, at)
            self.width, self.height = cr.get_size()

            rv = renpy.Render(self.width, self.height)
            rv.blit(cr, (0, 0))

            return rv
