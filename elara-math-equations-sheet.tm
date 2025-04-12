<TeXmacs|2.1.4>

<style|generic>

<\body>
  <doc-data|<doc-title|Common Useful Formulas & Identities>>

  <section|List of physical constants>

  <\big-table|<tabular|<tformat|<cwith|1|1|1|-1|font-series|bold>|<cwith|1|1|1|1|cell-hyphen|t>|<cwith|2|-1|1|1|cell-hyphen|t>|<cwith|2|-1|1|1|cell-valign|t>|<cwith|4|4|1|1|cell-height|10pt>|<cwith|4|4|1|1|cell-vmode|max>|<table|<row|<\cell>
    Physical Constant
  </cell>|<cell|Symbol>|<cell|Precise value>|<cell|Rounded
  value>>|<row|<\cell>
    Speed of light
  </cell>|<cell|<math|c>>|<cell|<math|299,792,458
  <math-up|m/s>>>|<cell|<math|3 \<times\> 10<rsup|8>
  <math-up|m/s>>>>|<row|<\cell>
    Planck's constant
  </cell>|<cell|<math|h>>|<cell|<math|6.62607015 \<times\> 10<rsup|-34>
  <math-up|J>\<cdot\> Hz>>|<cell|<math|6.63 \<times\>
  10<rsup|-34>>>>|<row|<\cell>
    Standard gravity
  </cell>|<cell|<math|g> or <math|g<rsub|0>>>|<cell|<math|9.80665
  <math-up|m/s<rsup|2>>>>|<cell|<math|9.81
  <math-up|m/s<rsup|2>>>>>|<row|<\cell>
    Elementary charge
  </cell>|<cell|<math|e>>|<cell|<math|1.602176634 \<times\> 10<rsup|-19>
  <math-up|C>>>|<cell|<math|1.60 \<times\> 10<rsup|-19>
  <math-up|C>>>>|<row|<\cell>
    Electron mass
  </cell>|<cell|<math|m<rsub|e>>>|<cell|<math|9.1093837139 \<times\>
  10<rsup|-31> kg>>|<cell|<math|9.11 \<times\> 10<rsup|-31>
  kg>>>|<row|<\cell>
    Proton mass
  </cell>|<cell|<math|m<rsub|p>>>|<cell|<math|1.67262192595 \<times\>
  10<rsup|-27> kg>>|<cell|<math|1.67 \<times\> 10<rsup|-27>
  kg>>>|<row|<\cell>
    Universal gravitational\ 

    constant
  </cell>|<cell|<math|G>>|<cell|<math|6.67430 \<times\> 10<rsup|-11>
  <math-up|m><rsup|3> kg<rsup|-1><math-up|s><rsup|-2>>>|<cell|<math|6.67
  \<times\> 10<rsup|-11> <math-up|<math|<math-up|m><rsup|3>
  kg<rsup|-1><math-up|s><rsup|-2>>>>>>|<row|<\cell>
    Vacuum permittivity\ 

    (electric constant)
  </cell>|<cell|<math|\<varepsilon\><rsub|0>>>|<cell|<math|8.8541878188
  \<times\> 10<rsup|-12> <math-up|C><rsup|2> kg<rsup|-1><math-up|m><rsup|-3>
  <math-up|s><rsup|2>>>|<cell|<math|8.85 \<times\> 10<rsup|-12>
  <math-up|C><rsup|2> kg<rsup|-1><math-up|m><rsup|-3>
  <math-up|s><rsup|2>>>>|<row|<\cell>
    Vacuum permeability\ 

    (magnetic constant)
  </cell>|<cell|<math|\<mu\><rsub|0>>>|<cell|<math|1.25663706127 \<times\>
  10<rsup|-6> <math-up|N> \<cdot\> <math-up|A><rsup|-2>>>|<cell|<math|1.26
  \<times\> 10<rsup|-6> <math-up|N> \<cdot\>
  <math-up|A><rsup|-2>>>>|<row|<\cell>
    Avogadro's number
  </cell>|<cell|<math|N<rsub|A>>>|<cell|<math|6.02214076 \<times\>
  10<rsup|23> mol<rsup|-1>>>|<cell|<math|6.02 \<times\> 10<rsup|23>
  mol<rsup|-1>>>>|<row|<\cell>
    Ideal gas constant
  </cell>|<cell|<math|R>>|<cell|<math|8.31446261815324 <math-up|J> \<cdot\>
  <math-up|K><rsup|-1> \<cdot\> mol<rsup|-1>>>|<cell|<math|8.31 <math-up|J>
  \<cdot\> <math-up|K><rsup|-1> \<cdot\> mol<rsup|-1>>>>|<row|<\cell>
    Boltzmann constant
  </cell>|<cell|<math|k<rsub|B>>>|<cell|<math|1.380649 \<times\> 10<rsup|-23>
  <math-up|J> \<cdot\> <math-up|K><rsup|-1>>>|<cell|<math|1.38 \<times\>
  10<rsup|-23> <math-up|J> \<cdot\> <math-up|K><rsup|-1>>>>>>>>
    Common universal physical constants
  </big-table>

  <section|Vectors & Geometry>

  <\itemize>
    <item>Position vector: <math|<wide|r|\<vect\>> = \<langle\>x, y,
    z\<rangle\>>

    <item>Basis vectors: <math|<wide|i|^>, <wide|j|^>, <wide|k|^>> (also
    written <math|<wide|x|^>, <wide|y|^>, <wide|z|^>>)

    <item>Cross product: <math|<wide|A|\<vect\>> \<times\> <wide|B|\<vect\>>
    = <det|<tformat|<table|<row|<cell|<wide|i|^>>|<cell|<wide|j|^>>|<cell|<wide|k|^>>>|<row|<cell|A<rsub|x>>|<cell|A<rsub|y>>|<cell|A<rsub|z>>>|<row|<cell|B<rsub|x>>|<cell|B<rsub|y>>|<cell|B<rsub|z>>>>>>>
    (3D case),<space|1em><math|<wide|A|\<vect\>> \<times\> <wide|B|\<vect\>>
    = <around*|(|A<rsub|x>B<rsub|y> - A<rsub|y>B<rsub|x>|)><wide|k|^>> (2D
    case),

    <math|<wide|A|\<vect\>> \<times\> <wide|B|\<vect\>> = 0> when
    <math|<wide|A|\<vect\>>, <wide|B|\<vect\>>> are
    <with|font-series|bold|parallel>

    <item>Dot product: <math|<wide|A|\<vect\>> \<cdot\><wide|B|\<vect\>> =
    A<rsub|x> B<rsub|x> + A<rsub|y> B<rsub|y> + A<rsub|z>
    B<rsub|z>>,<space|1em><math|<wide|A|\<vect\>> \<cdot\> <wide|B|\<vect\>>
    = 0> when <math|<wide|A|\<vect\>>, <wide|B|\<vect\>>> are
    <with|font-series|bold|perpendicular>

    <item>Cylindrical coordinates: <math|<around*|(|\<rho\>, \<phi\>, z|)>>
    where <math|\<rho\>> is distance from <math|z>-axis, <math|\<phi\>> is
    rotation around <math|z>-axis

    and <math|z> is elevation.

    Conversions to Cartesian: <math|x = \<rho\> cos \<phi\>, y = \<rho\> sin
    \<phi\>, z = z>

    <item>Spherical coordinates: <math|<around*|(|r, \<theta\>, \<phi\>|)>>
    where <math|r> is distance from origin, <math|\<theta\>> is elevation
    angle, and <math|\<phi\>> is

    rotation around the vertical axis (physics convention)

    Conversions to Cartesian: <math|x = r sin \<theta\> cos \<phi\>, y = r
    sin \<theta\> sin \<phi\>, z = r cos \<theta\>>
  </itemize>

  <section|Vector calculus>

  <subsection|Partial derivatives>

  <\itemize-dot>
    <item>Scalar-valued functions: <math|f<around*|(|<wide|r|\<vect\>>|)> =
    f<around*|(|x, y, z|)>>

    <item>Vector-valued functions: <math|<wide|F|\<vect\>>
    <around*|(|<wide|r|\<vect\>>|)> = <wide|F|\<vect\>><around*|(|x, y, z|)>>

    <item>Chain rule for operators: <math|<dfrac|\<partial\>|\<partial\> s> =
    <dfrac|\<partial\>x|\<partial\>s> <dfrac|\<partial\>|\<partial\> x>>

    <item>Chain rule for functions \U given scalar-valued
    <math|f<around*|(|v<around*|(|x, y|)>, w<around*|(|x, y|)>|)>>:

    <math|<dfrac|\<partial\> f|\<partial\> x> = <dfrac|\<partial\>
    f|\<partial\> v> <dfrac|\<partial\> v|\<partial\> x> + <dfrac|\<partial\>
    f|\<partial\> w> <dfrac|\<partial\> w|\<partial\>
    x>,<space|1em><dfrac|\<partial\>f|\<partial\> y> = <dfrac|\<partial\>
    f|\<partial\> v> <dfrac|\<partial\> v|\<partial\> y> + <dfrac|\<partial\>
    f|\<partial\> w> <dfrac|\<partial\> w|\<partial\> y> >

    <item>General chain rule: <math|<dfrac|\<partial\> f|\<partial\>
    x<rsub|i>> = <with|math-display|true|<big|sum><rsub|j><dfrac|\<partial\>
    f|\<partial\> x<rsub|j>> <dfrac|\<partial\> x<rsub|j>|\<partial\>
    x<rsub|i>>>>
  </itemize-dot>

  <subsection|Vector differential operators>

  <math|\<nabla\> = <around*|\<langle\>|<dfrac|\<partial\>|\<partial\> x>,
  <dfrac|\<partial\>|\<partial\> y>, <dfrac|\<partial\>|\<partial\>
  z>|\<rangle\>>> (del operator)

  <math|grad f = \<nabla\> f = <around*|\<langle\>|<dfrac|\<partial\>
  f|\<partial\> x>, <dfrac|\<partial\> f|\<partial\> y>, <dfrac|\<partial\>
  f|\<partial\> z>|\<rangle\>> > (gradient operator)

  <\itemize>
    <item>in cylindrical coordinates: <math|\<nabla\>f =
    \ <around*|\<langle\>|<dfrac|\<partial\>f|\<partial\> \<rho\>>,
    \ <dfrac|1|\<rho\>> <dfrac|\<partial\>f|\<partial\> \<phi\>>,
    \ <dfrac|\<partial\> f|\<partial\> z>|\<rangle\>>>

    <item>in spherical coordinates: <math|\<nabla\>f =
    <around*|\<langle\>|<dfrac|\<partial\> f|\<partial\> r>, <dfrac|1|r>
    <dfrac|\<partial\> f|\<partial\> \<theta\>> , <dfrac|1|r sin \<theta\>>
    <dfrac|\<partial\> f|\<partial\> \<phi\>>|\<rangle\>>>
  </itemize>

  <math|div <wide|F|\<vect\>> = \<nabla\> \<cdot\> <wide|F |\<vect\>> =
  <dfrac|\<partial\> F<rsub|x>|\<partial\> x> + <dfrac|\<partial\>
  F<rsub|y>|\<partial\> y> + <dfrac|\<partial\> F<rsub|z>|\<partial\> z>>
  (divergence operator)

  <\itemize>
    <item>in cylindrical coordinates: <math|\<nabla\> \<cdot\>
    <wide|F|\<vect\>> = <dfrac|1|\<rho\>> <dfrac|\<partial\>|\<partial\>
    \<rho\>> <around*|(|\<rho\> F<rsub|\<rho\>>|)> + <dfrac|1|\<rho\>>
    <dfrac|\<partial\> F<rsub|\<phi\>>|\<partial\> \<phi\>> +
    <dfrac|\<partial\> F<rsub|z>|\<partial\> z>>

    <item>in spherical coordinates: <math|\<nabla\> \<cdot\>
    <wide|F|\<vect\>> = <dfrac|1|r<rsup|2>><dfrac|\<partial\>|\<partial\> r>
    <around*|(|r<rsup|2>F<rsub|r>|)> + <dfrac|1|r sin \<theta\>>
    <dfrac|\<partial\>|\<partial\> \<theta\>> <around*|(|sin \<theta\>
    F<rsub|\<theta\>>|)> + <dfrac|1|r sin \<theta\>> <dfrac|\<partial\>
    F<rsub|\<phi\>>|\<partial\> \<phi\>>>
  </itemize>

  <math|curl <wide|F|\<vect\>> = \<nabla\> \<times\> <wide|F|\<vect\>> =
  <det|<tformat|<table|<row|<cell|<wide|i|^>>|<cell|<wide|j|^>>|<cell|<wide|k|^>>>|<row|<cell|<dfrac|\<partial\>|\<partial\>
  x>>|<cell|<dfrac|\<partial\>|\<partial\>
  y>>|<cell|<dfrac|\<partial\>|\<partial\>
  z>>>|<row|<cell|F<rsub|x>>|<cell|F<rsub|y>>|<cell|F<rsub|z>>>>>> =
  <around*|(|<dfrac|\<partial\> F<rsub|z>|\<partial\> y> - <dfrac|\<partial\>
  F<rsub|y>|\<partial\> z>|)><wide|i|^> + <around*|(|<dfrac|\<partial\>
  F<rsub|x>|\<partial\> z> - <dfrac|\<partial\> F<rsub|z>|\<partial\> x>|)>
  <wide|j|^> + <around*|(|<dfrac|\<partial\> F<rsub|y>|\<partial\> x> -
  <dfrac|\<partial\> F<rsub|x>|\<partial\> y>|)><wide|k|^>> (curl operator)

  2D case for curl: <math|\<nabla\> \<times\> <wide|F|\<vect\>> =
  <around*|(|<dfrac|\<partial\> F<rsub|y>|\<partial\> x> - <dfrac|\<partial\>
  F<rsub|x>|\<partial\> y>|)><wide|k|^>>

  <math|\<nabla\><rsup|2>f = \<nabla\> \<cdot\> <around*|(|\<nabla\> f|)> =
  <dfrac|\<partial\><rsup|2>f|\<partial\> x<rsup|2>> +
  <dfrac|\<partial\><rsup|2>f|\<partial\> y<rsup|2>> +
  <dfrac|\<partial\><rsup|2>f|\<partial\> z<rsup|2>>> (scalar Laplacian)

  <\itemize>
    <item>in cylindrical coordinates: <math|\<nabla\><rsup|2>f =
    <dfrac|1|\<rho\>><around*|(|<dfrac|\<partial\>f|\<partial\> \<rho\>> +
    \<rho\><dfrac|\<partial\><rsup|2>f|\<partial\>\<rho\><rsup|2>>|)> +
    <dfrac|1|\<rho\><rsup|2>> <dfrac|\<partial\><rsup|2>f|\<partial\>
    \<phi\><rsup|2>> + <dfrac|\<partial\><rsup|2>f|\<partial\> z<rsup|2>>>

    <item>in spherical coordinates: <math|\<nabla\><rsup|2>f =
    <around*|(|<dfrac|\<partial\><rsup|2>|\<partial\>*r<rsup|2>>*+<dfrac|2|r>**<dfrac|\<partial\>|\<partial\>*r>|)>***f*+<dfrac|1|r<rsup|2>***sin
    \<theta\>>**<around*|[|<dfrac|\<partial\>|\<partial\>*\<theta\>><around*|(|sin
    \<theta\><dfrac|\<partial\>|\<partial\>*\<theta\>>|)>***f|]>*+<dfrac|1|r<rsup|2>***sin<rsup|2>
    \<theta\>>**<dfrac|\<partial\><rsup|2>f|\<partial\>*\<varphi\><rsup|2>>>
  </itemize>

  <math|\<nabla\><rsup|2><wide|F|\<vect\>> = \<nabla\><around*|(|\<nabla\>
  \<cdot\> <wide|F|\<vect\>>|)> - \<nabla\> \<times\> <around*|(|\<nabla\>
  \<times\> <wide|F|\<vect\>>|)> = <dfrac|\<partial\><rsup|2><wide|F|\<vect\>>|\<partial\>
  x<rsup|2>> + <dfrac|\<partial\><rsup|2><wide|F|\<vect\>>|\<partial\>
  y<rsup|2>> + <dfrac|\<partial\><rsup|2><wide|F|\<vect\>>|\<partial\>
  z<rsup|2>>> (vector Laplacian)\ 

  <subsection|Vector derivative identities>

  <math|<around*|(|<wide|F|\<vect\>> \<cdot\> \<nabla\>|)>\<phi\> =
  <wide|F|\<vect\>>\<cdot\> <around*|(|\<nabla\> \<phi\>|)>> for
  scalar-valued <math|\<phi\>> and vector-valued <math|<wide|F|\<vect\>>>

  <math|<around*|(|<wide|F|\<vect\>> \<times\> \<nabla\>|)>\<phi\> =
  <wide|F|\<vect\>> \<times\> <around*|(|\<nabla\>\<phi\>|)>> for
  scalar-valued <math|\<phi\>> and vector-valued <math|<wide|F|\<vect\>>>

  <math|\<nabla\> <around*|(|\<phi\> \<varphi\>|)> = \<phi\> \<nabla\>
  \<varphi\> + \<varphi\> \<nabla\>\<phi\>> for scalar-valued <math|\<phi\>,
  \<varphi\>>

  <math|\<nabla\>\<cdot\> <around*|(|\<phi\> <wide|F|\<vect\>>|)> = \<phi\>
  <around*|(|\<nabla\> \<cdot\> <wide|F|\<vect\>> |)>+ <around*|(|\<nabla\>
  \<phi\>|)> \<cdot\> <wide|F|\<vect\>>> for scalar-valued <math|\<phi\>> and
  vector-valued <math|<wide|F|\<vect\>>>

  <math|\<nabla\> \<times\> <around*|(|\<phi\> <wide|F|\<vect\>>|)> = \<phi\>
  <around*|(|\<nabla\> \<times\> <wide|F|\<vect\>>|)> +
  <around*|(|\<nabla\>\<phi\>|)> \<times\> <wide|F|\<vect\>>> for
  scalar-valued <math|\<phi\>> and vector-valued <math|<wide|F|\<vect\>>>

  <math|\<nabla\> \<cdot\> <around*|(|\<nabla\> \<times\>
  <wide|F|\<vect\>>|)> = 0> for any vector-valued <math|<wide|F|\<vect\>>>

  <math|\<nabla\> \<times\> <around*|(|\<nabla\>\<phi\>|)> = \ 0> for any
  scalar-valued <math|\<phi\>>

  \;

  Line integral:<math|<with|math-display|true|<big|int>><rsub|C>f<around*|(|<wide|r|\<vect\>>|)>
  d s = <with|math-display|true|<big|int>f<around*|(|t|)>
  <around*|\||<wide|r|\<vect\>>|\|>d t>> (scalar),
  <math|<with|math-display|true|<big|int><rsub|C><wide|F|\<vect\>>\<cdot\> d
  <wide|r|\<vect\>> = <big|int><wide|F|\<vect\>> \<cdot\>
  <wide|r|\<vect\>><rprime|'><around*|(|t|)>> d t> (vector)

  Area integral:<math|<with|math-display|true|<big|iint>f d A>>

  <\itemize>
    <item>in Cartesian coordinates: <math|<with|math-display|true|<big|iint>f
    \ d A =><with|math-display|true|<big|int><rsub|x<rsub|1>><rsup|x<rsub|2>><big|int><rsub|y<rsub|1>><rsup|y<rsub|2>>f<around*|(|x,
    y|)>d y d x<rsub|>>>

    <item>in cylindrical coordinates: <math|<with|math-display|true|<big|iint>f
    \ d A = <big|int><rsub|z<rsub|1>><rsup|z<rsub|2>><big|int><rsub|0><rsup|2\<pi\>>f<around*|(|\<phi\>,
    z|)>\<rho\> d\<phi\> d z>>

    <item>in spherical coordinates: <math|<with|math-display|true|<big|iint>f
    \ d A = <big|int><rsub|0><rsup|2\<pi\>><big|int><rsub|0><rsup|\<pi\>>f<around*|(|\<theta\>,
    \<phi\>|)> r<rsup|2>sin \<theta\> d\<theta\> d\<phi\>>>
  </itemize>

  \;

  Surface (flux) integral: <math|<with|math-display|true|<big|iint><wide|F|\<vect\>>
  \<cdot\> d<wide|A|\<vect\>>>>, <math|d<wide|A|\<vect\>> = <wide|n|^> d A>

  \;

  Volume integral: <math|<with|math-display|true|<big|iiint>f \ d V>>

  <\itemize>
    <item>in Cartesian coordinates: <math|<with|math-display|true|<big|iiint>f
    \ d V> = <with|math-display|true|<big|int><rsub|x<rsub|1>><rsup|x<rsub|2>><big|int><rsub|y<rsub|1>><rsup|y<rsub|2>><big|int><rsub|z<rsub|1>><rsup|z<rsub|2>>f<around*|(|x,
    y, z|)> d z d y d x>>

    <item>in cylindrical coordinates: <math|<with|math-display|true|<big|iiint>f
    \ d V> = <with|math-display|true|<with|math-display|true|<big|int><rsub|z<rsub|1>><rsup|z<rsub|2>><big|int><rsub|0><rsup|2\<pi\>><big|int><rsub|0><rsup|R>f<around*|(|\<rho\>,
    \<phi\>, z|)> \<rho\> d\<rho\> d\<phi\> d z>>>

    <item>in spherical coordinates: <math|<with|math-display|true|<big|iiint>f
    \ d V = <with|math-display|true|<big|int><rsub|0><rsup|2\<pi\>><big|int><rsub|0><rsup|\<pi\>><big|int><rsub|0><rsup|R>f<around*|(|r,
    \<theta\>, \<phi\>|)> r<rsup|2> sin \<theta\> d r d\<theta\> d\<phi\>>>>
  </itemize>

  \;

  Gradient theorem: <math|<with|math-display|true|<big|int><rsub|C>\<nabla\>f
  \<cdot\> d<wide|s|\<vect\>>> = f<around*|(|b|)> - f<around*|(|a|)>>,
  <math|<with|math-display|true|<big|oint>\<nabla\> f\<cdot\>
  d<wide|s|\<vect\>> = 0>>

  \;

  Stoke's theorem: <math|<with|math-display|true|<big|iint><rsub|S><around*|(|\<nabla\>
  \<times\> <wide|F|\<vect\>>|)> \<cdot\> d<wide|A|\<vect\>>> =
  <with|math-display|true|<big|int><rsub|C><wide|F|\<vect\>>\<cdot\>
  d<wide|s|\<vect\>>>> where curve <math|C> is the boundary of surface
  <math|S>

  <with|font-shape|italic|Note: when <math|<wide|F|\<vect\>>> is a 2D vector
  field this is called Green's theorem.>

  \;

  Divergence theorem: <math|<with|math-display|true|<big|iiint>><rsub|V>
  <around*|(|\<nabla\> \<cdot\> <wide|F|\<vect\>>|)> \<cdot\> d V =
  <with|math-display|true|<big|iint><rsub|S><wide|F|\<vect\>> \<cdot\>
  d<wide|A|\<vect\>>>> where surface <math|S> is the boundary of volume
  <math|V>

  <section|Tensors>

  Indices: usually either Roman letters (e.g. <math|i, j, k>) or Greek
  letters (e.g. <math|\<mu\>, \<nu\>, \<lambda\>>),\ 

  typically roman letters range from 1 to 3 and roman letters range from 0 to
  3

  <\itemize>
    <item>Basis vectors: written <math|e<rsub|i>>, in Cartesian
    <math|e<rsub|1> = <wide|x|^>,<space|1em>e<rsub|2> =
    <wide|y|^>,<space|1em>e<rsub|3> = <wide|z|^>>

    <item>Vectors: written <math|V<rsup|i>>, in Cartesian <math|V<rsup|1> =
    V<rsup|x>,<space|1em>V<rsup|2> = V<rsup|y>,<space|1em>V<rsup|3> =
    V<rsup|z>>

    <item>Dot product: written <math|<big|sum><rsub|i>A<rsub|i>B<rsup|i> =
    A<rsub|1>B<rsup|1> + A<rsub|2> B<rsup|2> = A<rsub|3> B<rsup|3> =
    A<rsub|x>B<rsup|x> + A<rsub|y>B<rsup|y>+ A<rsub|z>B<rsup|z>>
  </itemize>

  <with|font-series|bold|Note:> when using the
  <with|font-shape|italic|Einstein summation convention>, we assume a
  summation sign

  whenever there is the same letter used in a lower and an upper index. So
  instead

  of <math|<big|sum><rsub|i>A<rsub|i>B<rsup|i>> we can just write
  <math|A<rsub|i> B<rsup|i>>. We will use this convention for the rest of
  this sheet.

  <\itemize>
    <item>Metric tensor: <math|g<rsub|i j>> which is a square matrix (<math|3
    \<times\> 3> for Euclidean space and <math|4 \<times\> 4> for spacetime)

    <item>Converting between upper and lower indices: <math|V<rsub|i> =
    g<rsup|i j>V<rsub|j>> and <math|V<rsub|i> = g<rsub|i j> V<rsup|j>>

    <item>Line element: <math|d s<rsup|2> = g<rsub|i j> d x<rsup|i> d
    x<rsup|j>>
  </itemize>

  <with|font-series|bold|Note:> in Cartesian coordinates, there is
  <with|font-shape|italic|no difference> between upper & lower indices

  <\itemize>
    <item>Gradient: <math|\<partial\><rsub|i> f> where <math|f> is a scalar
    field

    <item>Divergence: <math|\<partial\><rsub|i> F<rsup|i>> where
    <math|F<rsup|i>> is a vector field

    <item>Laplacian: <math|\<partial\><rsup|i>\<partial\><rsub|i> f> where
    <math|\<partial\><rsup|i> = g<rsup|i j> \<partial\><rsub|j>>. In
    Cartesian coordinates <math|\<partial\><rsup|i> = \<partial\><rsub|i>>.

    <item>Kronecker delta: <math|\<delta\><rsub|i j>>, essentially the
    identity matrix (it is equal to 1 when <math|i = j> and 0 otherwise)

    <item>Contraction: <math|B<rsup|i ><rsub|i> = B<rsub|1><rsup|1> +
    B<rsub|2><rsup|2> + B<rsub|3><rsup|3>> (self-contraction), with another
    tensor: <math|A<rsup|j>B<rsub|i j> = C<rsub|i>>
  </itemize>

  <section|Electromagnetics>

  <\itemize>
    <item>Poisson's equation: <math|\<nabla\><rsup|2>V = \<rho\> /
    \<varepsilon\><rsub|0>>

    <item>Maxwell's equations:

    <\itemize>
      <item>Gauss's law for electricity: <math|\<nabla\> \<cdot\>
      <wide|E|\<vect\>> = \<rho\> / \<varepsilon\><rsub|0>>

      <item>Gauss's law for magnetism: <math|\<nabla\> \<cdot\>
      <wide|B|\<vect\>> = 0>

      <item>Faraday's law: <math|\<nabla\> \<times\> <wide|E|\<vect\>> =
      -<dfrac|\<partial\><wide|B|\<vect\>>|\<partial\> t>>

      <item>Maxwell-Ampere law: <math|\<nabla\> \<times\> <wide|B|\<vect\>> =
      \<mu\><rsub|0> <wide|J|\<vect\>> + \<mu\><rsub|0>
      \<varepsilon\><rsub|0> <dfrac|\<partial\><wide|E|\<vect\>>|\<partial\>
      t>>
    </itemize>

    <item>Conservation of charge (continuity equation):
    <math|<dfrac|\<partial\>\<rho\>|\<partial\> t> + \<nabla\> \<cdot\>
    <wide|J|\<vect\>> = 0>

    <item>Electromagnetic wave equation:

    <\itemize>
      <item>For electric fields: <math|<dfrac|\<partial\><rsup|2><wide|E|\<vect\>>|\<partial\>
      t<rsup|2>> = c<rsup|2> \<nabla\><rsup|2> <wide|E|\<vect\>> =
      c<rsup|2><around*|(|<dfrac|\<partial\><rsup|2><wide|E|\<vect\>>|\<partial\>
      x<rsup|2>> + <dfrac|\<partial\><rsup|2><wide|E|\<vect\>>|\<partial\>
      y<rsup|2>> + <dfrac|\<partial\><rsup|2><wide|E|\<vect\>>|\<partial\>
      z<rsup|2>>|)>>

      <item>For magnetic fields: <math|<dfrac|\<partial\><rsup|2><wide|B|\<vect\>>|\<partial\>
      t<rsup|2>> = c<rsup|2> \<nabla\><rsup|2> <wide|B|\<vect\>> =
      c<rsup|2><around*|(|<dfrac|\<partial\><rsup|2><wide|B|\<vect\>>|\<partial\>
      x<rsup|2>> + <dfrac|\<partial\><rsup|2><wide|B|\<vect\>>|\<partial\>
      y<rsup|2>> + <dfrac|\<partial\><rsup|2><wide|B|\<vect\>>|\<partial\>
      z<rsup|2>>|)>>
    </itemize>

    <item>Helmholtz equation: <math|\<nabla\><rsup|2> <wide|E|\<vect\>> =
    k<rsup|2><wide|E|\<vect\>>>, <math|\<nabla\><rsup|2><wide|B|\<vect\>> =
    k<rsup|2><wide|B|\<vect\>>> (eigenvalue problem for
    <math|\<nabla\><rsup|2>> operator)

    <item>Poynting vector: <math|<wide|S|\<vect\>> = <dfrac|1|\<mu\><rsub|0>>
    <wide|E|\<vect\>> \<times\> <wide|B|\<vect\>>>

    <item>Intensity of EM radiation: <math|I =
    <around*|\||<wide|S|\<vect\>>|\|>> where <math|<wide|S|\<vect\>>> is
    Poynting vector

    <item>Electromagnetic energy density: <math|u = <dfrac|1|2>
    \<varepsilon\><rsub|0> <around*|\||<wide|E|\<vect\>>|\|><rsup|2> +
    <dfrac|1|2\<mu\><rsub|0>> <around*|\||<wide|B|\<vect\>>|\|><rsup|2>>
  </itemize>

  <section|Quantum physics>

  <subsection|General quantum physics>

  <\itemize>
    <item>Time-dependent Schrödinger equation: <math|i\<hbar\>
    <dfrac|\<partial\>|\<partial\> t> <around*|\||\<Psi\>\<rangle\> =
    <wide|H|^>|\|>\<Psi\>\<rangle\>> where <math|\<Psi\> =
    \<Psi\><around*|(|<wide|r|\<vect\>>, t|)>>

    <item>Schrödinger equation: <math|<wide|H|^><around*|\||\<psi\>\<rangle\>
    = E |\|>\<psi\>\<rangle\>> where <math|<around*|\||\<psi\>\<rangle\>|\<nobracket\>>>
    is the quantum state. In position space we can also write this as
    <math|<wide|H|^>\<psi\> = E\<psi\>> with a wavefunction
    <math|\<psi\><around*|(|x, y, z|)>>.\ 

    <item><math|<wide|\<Psi\>|\<vect\>><around*|(|<wide|r|\<vect\>>|)> =
    <with|math-display|true|<big|sum><rsub|i>c<rsub|i> \<psi\><rsub|i>
    e<rsup|-i E<rsub|i> t / \<hbar\> >>> \U relationship between
    time-dependent and time-independent wavefunctions and
    <with|math-display|true|><with|math-display|true|><math|<with|math-display|true|<big|sum><rsub|i>><around*|\||c<rsub|i>|\|><rsup|2>
    = 1>

    <item>Classical Hamiltonian: <math|<wide|H|^> = <wide|K|^> + <wide|V|^> =
    <dfrac|\<hbar\><rsup|2>|2 m>\<nabla\><rsup|2>+V<around*|(|<wide|r|\<vect\>>|)>>
    where <math|<wide|V|\<vect\>><around*|(|<wide|r|\<vect\>>|)>> is the
    potential energy\ 

    <item>Normalization condition: <math|\<langle\>\<Psi\><around*|\||\<Psi\>\<rangle\>|\<nobracket\>>
    = <with|math-display|true|<big|int><rsub|-\<infty\>><rsup|\<infty\>>\<Psi\><around*|(|x|)>>\<Psi\><rsup|\<ast\>><around*|(|x|)>
    d x \ = 1<rsup|*>>

    <item>Expectation (average) value of operator <math|<wide|A|^>>:
    <math|\<langle\>\<Psi\><around*|\||<wide|A|^>|\|>\<Psi\>\<rangle\>
    =<with|math-display|true|<big|int><rsub|-\<infty\>><rsup|\<infty\>>\<Psi\><around*|(|x|)><wide|A|^>\<Psi\><around*|(|x|)>>
    d x>
  </itemize>

  <subsection|Laser physics>

  <\itemize>
    <item>Time-dependent Hamiltonian: <math|<wide|H|^> = <wide|H|^><rsub|0> +
    <wide|H|^><rsub|1><around*|(|t|)>> where <math|<wide|H|^><rsub|0>> is the
    time-independent Hamiltonian (Hamiltonian at <math|t = 0>)

    <item>Two-state system with ground state \|1\<rangle\> and excited state
    <math|<around*|\||2\<rangle\>|\<nobracket\>>>:
    <math|<around*|\||\<Psi\>\<rangle\> = c<rsub|1> e<rsup|-i \<omega\>t>
    <around*|\||1\<rangle\> + c<rsub|2> e<rsup|-i\<omega\> t>
    <around*|\||2\<rangle\>|\<nobracket\>>|\<nobracket\>>|\<nobracket\>>>

    <item>Einstein coefficients: <math|A<rsub|12> =
    <dfrac|\<omega\><rsub|12><rsup|3> e<rsup|2>|3 \<pi\> \<varepsilon\> h
    c<rsup|3>> <around*|\||\<langle\>1|\|><wide|r|\<vect\>><around*|\||2\<rangle\>|\|><rsup|2>
    > where <math|\<omega\><rsub|1 2> = <dfrac|E<rsub|1> -
    E<rsub|2>|\<hbar\>>> and <math|B<rsub|1 2> = A<rsub|1 2>
    <dfrac|\<pi\><rsup|2>c<rsup|3>|\<omega\><rsub|1 2><rsup|3>\<hbar\>>>

    <item>Rate equations: <math|<dfrac|d N<rsub|2>|d t> = -<dfrac|d
    N<rsub|1>|d t> = B<rsub|12> \<rho\><around*|(|\<nu\>|)>N<rsub|1>> where
    <math|N<rsub|1>, N<rsub|2>> is the population (number of atoms in) each
    state
  </itemize>

  <section|Orbital mechanics>

  <\itemize>
    <item>Universal gravitation: <math|<wide|g|\<vect\>> =
    <dfrac|d<rsup|2><wide|r|\<vect\>>|d t<rsup|2>> =
    <with|math-display|true|<big|sum><rsub|i><dfrac|G
    m<rsub|i>|<around*|\||<wide|r|\<vect\>> - <wide|r|\<vect\>><rsub|i>|\|>>
    <wide|r|\<vect\>> - <wide|r|\<vect\>><rsub|i>>> where <math|r<rsub|i>> is
    location of a gravitating body

    <item>Poisson's equation for the gravitational potential:
    <math|\<nabla\><rsup|2>\<phi\> = 4\<pi\> G\<rho\>> where <math|\<phi\>>
    is the gravitational potential

    <item>Gravitational field: <math|<wide|g|\<vect\>> = -\<nabla\>\<phi\>>

    <item>Gauss's law for gravity: <math|\<nabla\> \<cdot\> <wide|g|\<vect\>>
    = - 4\<pi\> G \<rho\>>

    <item>Two-body orbit equation (for small mass <math|m> orbiting big(ger)
    mass <math|M>) <math|r<around*|(|\<theta\>|)> =
    <dfrac|\<ell\><rsup|2>|m<rsup|2>\<mu\>> <dfrac|1|1 + e cos \<theta\>>>
    where <math|e> is the eccentricity of the orbit, <math|\<mu\> =
    G<around*|(|M + m|)> \<approx\> G M>, and <math|\<ell\>> is the angular
    momentum (a conserved quantity)
  </itemize>

  <section|Fluid & heat dynamics>

  <\itemize>
    <item>Stefan-Boltzmann law: <math|I = \<sigma\>T<rsup|4>>\ 

    where <math|I> is the intensity, <math|\<sigma\>> is the Sefan-Bolzmann
    constant, and <math|T> is the absolute temperature in Kelvin

    <item>Planck's law: <math|\<rho\><around*|(|\<nu\>, T|)> = <dfrac|8
    \<pi\> h \<nu\><rsup|3>|c<rsup|3>> <dfrac|1|e<rsup|<around*|(|<dfrac|h\<nu\>|k<rsub|B>>
    T - 1|)>>>>

    where <math|u> is the energy density, <math|\<rho\><around*|(|\<nu\>|)>>
    is the spectral energy density, and <math|T> is also the absolute
    temperature in Kelvin
  </itemize>

  \;

  \;

  \;

  \;
</body>

<\initial>
  <\collection>
    <associate|page-medium|paper>
    <associate|par-columns|1>
  </collection>
</initial>

<\references>
  <\collection>
    <associate|auto-1|<tuple|1|1>>
    <associate|auto-10|<tuple|6|5>>
    <associate|auto-11|<tuple|6.1|5>>
    <associate|auto-12|<tuple|6.2|5>>
    <associate|auto-13|<tuple|7|5>>
    <associate|auto-14|<tuple|8|6>>
    <associate|auto-15|<tuple|1|?>>
    <associate|auto-2|<tuple|1|1>>
    <associate|auto-3|<tuple|2|1>>
    <associate|auto-4|<tuple|3|1>>
    <associate|auto-5|<tuple|3.1|1>>
    <associate|auto-6|<tuple|3.2|2>>
    <associate|auto-7|<tuple|3.3|2>>
    <associate|auto-8|<tuple|4|3>>
    <associate|auto-9|<tuple|5|4>>
    <associate|firstHeading|<tuple|1|?>>
  </collection>
</references>

<\auxiliary>
  <\collection>
    <\associate|table>
      <tuple|normal|<\surround|<hidden-binding|<tuple>|1>|>
        Common universal physical constants
      </surround>|<pageref|auto-2>>
    </associate>
    <\associate|toc>
      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|1<space|2spc>List
      of physical constants> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-1><vspace|0.5fn>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|2<space|2spc>Vectors
      & Geometry> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-3><vspace|0.5fn>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|3<space|2spc>Vector
      calculus> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-4><vspace|0.5fn>

      <with|par-left|<quote|1tab>|3.1<space|2spc>Partial derivatives
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-5>>

      <with|par-left|<quote|1tab>|3.2<space|2spc>Vector differential
      operators <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-6>>

      <with|par-left|<quote|1tab>|3.3<space|2spc>Vector derivative identities
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-7>>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|4<space|2spc>Tensors>
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-8><vspace|0.5fn>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|5<space|2spc>Electromagnetics>
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-9><vspace|0.5fn>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|6<space|2spc>Quantum
      physics> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-10><vspace|0.5fn>

      <with|par-left|<quote|1tab>|6.1<space|2spc>General quantum physics
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-11>>

      <with|par-left|<quote|1tab>|6.2<space|2spc>Laser physics
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-12>>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|7<space|2spc>Orbital
      mechanics> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-13><vspace|0.5fn>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|8<space|2spc>Fluid
      & heat dynamics> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-14><vspace|0.5fn>
    </associate>
  </collection>
</auxiliary>