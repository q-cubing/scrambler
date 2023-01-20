defmodule Cubes.Colors do
  @spec as_map(%Cubes{size: String.t(), pieces: [%Cubes.Piece{}]}) :: map()
  def as_map(%Cubes{size: size, pieces: pieces}) do
    colors = Enum.reduce(pieces, %{}, &Map.put(&2, &1.position, &1.colors))

    case size do
      "2x2" ->
        [
          [h, s, x],
          [e, r, a],
          [g, l, u],
          [f, i, d],
          [o, t, w],
          [n, q, b],
          [p, k, v],
          [m, j, c]
        ] = [
          colors[%Cubes.Position{x: -1, y: -1, z: -1}],
          colors[%Cubes.Position{x: -1, y: -1, z: 1}],
          colors[%Cubes.Position{x: -1, y: 1, z: -1}],
          colors[%Cubes.Position{x: -1, y: 1, z: 1}],
          colors[%Cubes.Position{x: 1, y: -1, z: -1}],
          colors[%Cubes.Position{x: 1, y: -1, z: 1}],
          colors[%Cubes.Position{x: 1, y: 1, z: -1}],
          colors[%Cubes.Position{x: 1, y: 1, z: 1}]
        ]

        %{a: a, b: b, c: c, d: d,
          e: e, f: f, g: g, h: h,
          i: i, j: j, k: k, l: l,
          m: m, n: n, o: o, p: p,
          q: q, r: r, s: s, t: t,
          u: u, v: v, w: w, x: x}

      "3x3" ->
        [
          [h, s, x],
          [e, r, a],
          [g, l, u],
          [f, i, d],
          [o, t, w],
          [n, q, b],
          [p, k, v],
          [m, j, c],
          [he, re, _],
          [ge, _, xe],
          [ee, _, de],
          [fe, le, _],
          [_, se, we],
          [_, qe, ae],
          [_, ke, ue],
          [_, ie, ce],
          [ne, te, _],
          [oe, _, ve],
          [me, _, be],
          [pe, je, _],
          [lc, _, _],
          [_, bc, _],
          [_, _, dc],
          [_, _, uc],
          [_, fc, _],
          [rc, _, _]
        ] = [
          colors[%Cubes.Position{x: -1, y: -1, z: -1}],
          colors[%Cubes.Position{x: -1, y: -1, z: 1}],
          colors[%Cubes.Position{x: -1, y: 1, z: -1}],
          colors[%Cubes.Position{x: -1, y: 1, z: 1}],
          colors[%Cubes.Position{x: 1, y: -1, z: -1}],
          colors[%Cubes.Position{x: 1, y: -1, z: 1}],
          colors[%Cubes.Position{x: 1, y: 1, z: -1}],
          colors[%Cubes.Position{x: 1, y: 1, z: 1}],
          colors[%Cubes.Position{x: -1, y: -1, z: 0}],
          colors[%Cubes.Position{x: -1, y: 0, z: -1}],
          colors[%Cubes.Position{x: -1, y: 0, z: 1}],
          colors[%Cubes.Position{x: -1, y: 1, z: 0}],
          colors[%Cubes.Position{x: 0, y: -1, z: -1}],
          colors[%Cubes.Position{x: 0, y: -1, z: 1}],
          colors[%Cubes.Position{x: 0, y: 1, z: -1}],
          colors[%Cubes.Position{x: 0, y: 1, z: 1}],
          colors[%Cubes.Position{x: 1, y: -1, z: 0}],
          colors[%Cubes.Position{x: 1, y: 0, z: -1}],
          colors[%Cubes.Position{x: 1, y: 0, z: 1}],
          colors[%Cubes.Position{x: 1, y: 1, z: 0}],
          colors[%Cubes.Position{x: -1, y: 0, z: 0}],
          colors[%Cubes.Position{x: 0, y: -1, z: 0}],
          colors[%Cubes.Position{x: 0, y: 0, z: -1}],
          colors[%Cubes.Position{x: 0, y: 0, z: 1}],
          colors[%Cubes.Position{x: 0, y: 1, z: 0}],
          colors[%Cubes.Position{x: 1, y: 0, z: 0}]
        ]

        %{
          h: h, s: s, x: x,
          e: e, r: r, a: a,
          g: g, l: l, u: u,
          f: f, i: i, d: d,
          o: o, t: t, w: w,
          n: n, q: q, b: b,
          p: p, k: k, v: v,
          m: m, j: j, c: c,
          he: he, re: re,
          ge: ge, xe: xe,
          ee: ee, de: de,
          fe: fe, le: le,
          se: se, we: we,
          qe: qe, ae: ae,
          ke: ke, ue: ue,
          ie: ie, ce: ce,
          ne: ne, te: te,
          oe: oe, ve: ve,
          me: me, be: be,
          pe: pe, je: je,
          lc: lc,
          bc: bc,
          dc: dc,
          uc: uc,
          fc: fc,
          rc: rc
        }

      "3x3x2" ->
        [
          [h, s, x],
          [e, r, a],
          [g, l, u],
          [f, i, d],
          [o, t, w],
          [n, q, b],
          [p, k, v],
          [m, j, c],

          [fe, _, pe],
          [ee, _, de],
          [_, le, oe],
          [_, ke, ae],
          [_, he, me],
          [_, ge, ce],
          [je, _, ne],
          [ie, _, be],

          [_, _, dc],
          [_, _, uc]
        ] = [
          colors[%Cubes.Position{x: -1, y: -1, z: -1}],
          colors[%Cubes.Position{x: -1, y: -1, z: 1}],
          colors[%Cubes.Position{x: -1, y: 1, z: -1}],
          colors[%Cubes.Position{x: -1, y: 1, z: 1}],
          colors[%Cubes.Position{x: 1, y: -1, z: -1}],
          colors[%Cubes.Position{x: 1, y: -1, z: 1}],
          colors[%Cubes.Position{x: 1, y: 1, z: -1}],
          colors[%Cubes.Position{x: 1, y: 1, z: 1}],
          colors[%Cubes.Position{x: -1, y: 0, z: -1}],
          colors[%Cubes.Position{x: -1, y: 0, z: 1}],
          colors[%Cubes.Position{x: 0, y: -1, z: -1}],
          colors[%Cubes.Position{x: 0, y: -1, z: 1}],
          colors[%Cubes.Position{x: 0, y: 1, z: -1}],
          colors[%Cubes.Position{x: 0, y: 1, z: 1}],
          colors[%Cubes.Position{x: 1, y: 0, z: -1}],
          colors[%Cubes.Position{x: 1, y: 0, z: 1}],
          colors[%Cubes.Position{x: 0, y: 0, z: -1}],
          colors[%Cubes.Position{x: 0, y: 0, z: 1}],
        ]

        %{
          h: h, s: s, x: x,
          e: e, r: r, a: a,
          g: g, l: l, u: u,
          f: f, i: i, d: d,
          o: o, t: t, w: w,
          n: n, q: q, b: b,
          p: p, k: k, v: v,
          m: m, j: j, c: c,
          he: he, ie: ie,
          ge: ge, ee: ee,
          de: de, fe: fe,
          le: le, ae: ae,
          ke: ke, ce: ce,
          ne: ne, oe: oe,
          me: me, be: be,
          pe: pe, je: je,
          dc: dc,
          uc: uc
        }

      "4x4" ->
        [
          [h, s, x],
          [e, r, a],
          [g, l, u],
          [f, i, d],
          [o, t, w],
          [n, q, b],
          [p, k, v],
          [m, j, c],
          [_, _, uca],
          [_, _, ucb],
          [_, _, ucd],
          [_, _, ucc],
          [lca, _, _],
          [lcb, _, _],
          [lcd, _, _],
          [lcc, _, _],
          [_, fca, _],
          [_, fcb, _],
          [_, fcd, _],
          [_, fcc, _],
          [rca, _, _],
          [rcb, _, _],
          [rcd, _, _],
          [rcc, _, _],
          [_, bca, _],
          [_, bcb, _],
          [_, bcd, _],
          [_, bcc, _],
          [_, _, dca],
          [_, _, dcb],
          [_, _, dcd],
          [_, _, dcc],
          [_, q2e, a1e],
          [_, q1e, a2e],
          [_, i2e, c1e],
          [_, i1e, c2e],
          [m2e, _, b1e],
          [m1e, _, b2e],
          [e1e, _, d2e],
          [e2e, _, d1e],
          [_, s1e, w2e],
          [_, s2e, w1e],
          [_, k1e, u2e],
          [_, k2e, u1e],
          [o1e, _, v2e],
          [o2e, _, v1e],
          [g2e, _, x1e],
          [g1e, _, x2e],
          [f1e, l2e, _],
          [f2e, l1e, _],
          [p2e, j1e, _],
          [p1e, j2e, _],
          [h2e, r1e, _],
          [h1e, r2e, _],
          [n1e, t2e, _],
          [n2e, t1e, _],
        ] = [
          colors[%Cubes.Position{x: -1, y: -1, z: -1}],
          colors[%Cubes.Position{x: -1, y: -1, z: 1}],
          colors[%Cubes.Position{x: -1, y: 1, z: -1}],
          colors[%Cubes.Position{x: -1, y: 1, z: 1}],
          colors[%Cubes.Position{x: 1, y: -1, z: -1}],
          colors[%Cubes.Position{x: 1, y: -1, z: 1}],
          colors[%Cubes.Position{x: 1, y: 1, z: -1}],
          colors[%Cubes.Position{x: 1, y: 1, z: 1}],
          colors[%Cubes.Position{x: -0.5, y: -0.5, z: 1}], # uca
          colors[%Cubes.Position{x: 0.5, y: -0.5, z: 1}], # ucb
          colors[%Cubes.Position{x: -0.5, y: 0.5, z: 1}], # ucd
          colors[%Cubes.Position{x: 0.5, y: 0.5, z: 1}], # ucc
          colors[%Cubes.Position{x: -1, y: -0.5, z: 0.5}], # lca
          colors[%Cubes.Position{x: -1, y: 0.5, z: 0.5}], # lcb
          colors[%Cubes.Position{x: -1, y: -0.5, z: -0.5}], # lcd
          colors[%Cubes.Position{x: -1, y: 0.5, z: -0.5}], # lcc
          colors[%Cubes.Position{x: -0.5, y: 1, z: 0.5}], # fca
          colors[%Cubes.Position{x: 0.5, y: 1, z: 0.5}], # fcb
          colors[%Cubes.Position{x: -0.5, y: 1, z: -0.5}], # fcd
          colors[%Cubes.Position{x: 0.5, y: 1, z: -0.5}], # fcc
          colors[%Cubes.Position{x: 1, y: 0.5, z: 0.5}], # rca
          colors[%Cubes.Position{x: 1, y: -0.5, z: 0.5}], # rcb
          colors[%Cubes.Position{x: 1, y: 0.5, z: -0.5}], # rcd
          colors[%Cubes.Position{x: 1, y: -0.5, z: -0.5}], # rcc
          colors[%Cubes.Position{x: 0.5, y: -1, z: 0.5}], # bca
          colors[%Cubes.Position{x: -0.5, y: -1, z: 0.5}], # bcb
          colors[%Cubes.Position{x: 0.5, y: -1, z: -0.5}], # bcd
          colors[%Cubes.Position{x: -0.5, y: -1, z: -0.5}], # bcc
          colors[%Cubes.Position{x: -0.5, y: 0.5, z: -1}], # dca
          colors[%Cubes.Position{x: 0.5, y: 0.5, z: -1}], # dcb
          colors[%Cubes.Position{x: -0.5, y: -0.5, z: -1}], # dcd
          colors[%Cubes.Position{x: 0.5, y: -0.5, z: -1}], # dcc
          colors[%Cubes.Position{x: -0.5, y: -1, z: 1}], # q2e a1e
          colors[%Cubes.Position{x: 0.5, y: -1, z: 1}], # q1e a2e
          colors[%Cubes.Position{x: 0.5, y: 1, z: 1}], # i2e c1e
          colors[%Cubes.Position{x: -0.5, y: 1, z: 1}], # i1e c2e
          colors[%Cubes.Position{x: 1, y: -0.5, z: 1}], # m2e b1e
          colors[%Cubes.Position{x: 1, y: 0.5, z: 1}], # m1e b2e
          colors[%Cubes.Position{x: -1, y: -0.5, z: 1}], # e1e d2e
          colors[%Cubes.Position{x: -1, y: 0.5, z: 1}], # e2e d1e
          colors[%Cubes.Position{x: -0.5, y: -1, z: -1}], # s1e w2e
          colors[%Cubes.Position{x: 0.5, y: -1, z: -1}], # s2e w1e
          colors[%Cubes.Position{x: 0.5, y: 1, z: -1}], # k1e u2e
          colors[%Cubes.Position{x: -0.5, y: 1, z: -1}], # k2e u1e
          colors[%Cubes.Position{x: 1, y: -0.5, z: -1}], # o1e v2e
          colors[%Cubes.Position{x: 1, y: 0.5, z: -1}], # o2e v1e
          colors[%Cubes.Position{x: -1, y: -0.5, z: -1}], # g2e x1e
          colors[%Cubes.Position{x: -1, y: 0.5, z: -1}], # g1e x2e
          colors[%Cubes.Position{x: -1, y: 1, z: 0.5}], # f1e l2e
          colors[%Cubes.Position{x: -1, y: 1, z: -0.5}], # f2e l1e
          colors[%Cubes.Position{x: 1, y: 1, z: 0.5}], # p2e j1e
          colors[%Cubes.Position{x: 1, y: 1, z: -0.5}], # p1e j2e
          colors[%Cubes.Position{x: -1, y: -1, z: 0.5}], # h2e r1e
          colors[%Cubes.Position{x: -1, y: -1, z: -0.5}], # h1e r2e
          colors[%Cubes.Position{x: 1, y: -1, z: 0.5}], # n1e t2e
          colors[%Cubes.Position{x: 1, y: -1, z: -0.5}], # n2e t1e
        ]

        %{
          h: h, s: s, x: x,
          e: e, r: r, a: a,
          g: g, l: l, u: u,
          f: f, i: i, d: d,
          o: o, t: t, w: w,
          n: n, q: q, b: b,
          p: p, k: k, v: v,
          m: m, j: j, c: c,
          uca: uca,
          ucb: ucb,
          ucd: ucd,
          ucc: ucc,
          lca: lca,
          lcb: lcb,
          lcd: lcd,
          lcc: lcc,
          fca: fca,
          fcb: fcb,
          fcd: fcd,
          fcc: fcc,
          rca: rca,
          rcb: rcb,
          rcd: rcd,
          rcc: rcc,
          bca: bca,
          bcb: bcb,
          bcd: bcd,
          bcc: bcc,
          dca: dca,
          dcb: dcb,
          dcd: dcd,
          dcc: dcc,
          q2e: q2e, a1e: a1e,
          q1e: q1e, a2e: a2e,
          i2e: i2e, c1e: c1e,
          i1e: i1e, c2e: c2e,
          m2e: m2e, b1e: b1e,
          m1e: m1e, b2e: b2e,
          e1e: e1e, d2e: d2e,
          e2e: e2e, d1e: d1e,
          s1e: s1e, w2e: w2e,
          s2e: s2e, w1e: w1e,
          k1e: k1e, u2e: u2e,
          k2e: k2e, u1e: u1e,
          o1e: o1e, v2e: v2e,
          o2e: o2e, v1e: v1e,
          g2e: g2e, x1e: x1e,
          g1e: g1e, x2e: x2e,
          f1e: f1e, l2e: l2e,
          f2e: f2e, l1e: l1e,
          p2e: p2e, j1e: j1e,
          p1e: p1e, j2e: j2e,
          h2e: h2e, r1e: r1e,
          h1e: h1e, r2e: r2e,
          n1e: n1e, t2e: t2e,
          n2e: n2e, t1e: t1e
        }
    end
  end
end
