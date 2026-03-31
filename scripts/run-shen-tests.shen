\* ------------------------------------------------------------------- *\
\*  @author Sebastian Borrazas                                         *\
\*  @copyright (C) 2018, Sebastian Borrazas                            *\
\* ------------------------------------------------------------------- *\

(do (shen.copy-file "scripts/harness.shen" "test/shen/harness.shen")
    (cd "test/shen")
    (load "README"))
