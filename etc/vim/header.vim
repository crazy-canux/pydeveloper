"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Canux's vim
" canuxcheng@gmail.com
" https://github.com/crazy-canux/xDevOps
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Header                                                                         "
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
autocmd BufNewFile *.h,*.c,*.cpp,*.java,*.sh,*.py,*.go,*.pl,*.rb,*.php,*.ps1 exec ":call MySetTitle()"
function! MySetTitle()
    if &filetype == 'sh'
        call setline(1, "\#!/usr/bin/env bash")
        call append(line("."),    "\######################################################################")
        call append(line(".")+1,  "\# Copyright (C) 2015 Faurecia (China) Holding Co.,Ltd.               #")
        call append(line(".")+2,  "\# All rights reserved                                                #")
        call append(line(".")+3,  "\# Name: ".expand("%"))
        call append(line(".")+4,  "\# Author: Canux CHENG canuxcheng@gmail.com                           #")
        call append(line(".")+5,  "\# Version: V1.0.0.0                                                  #")
        call append(line(".")+6,  "\# Time: ".strftime("%c"))
        call append(line(".")+7,  "\######################################################################")
        call append(line(".")+8,  "\# Description:")
        call append(line(".")+9,  "\######################################################################")
        call append(line(".")+10, "")
    endif
    if &filetype == 'ps1'
        call setline(1, "\<#")
        call append(line("."),    "\######################################################################")
        call append(line(".")+1,  "\# Copyright (C) 2015 Faurecia (China) Holding Co.,Ltd.               #")
        call append(line(".")+2,  "\# All rights reserved                                                #")
        call append(line(".")+3,  "\# Name: ".expand("%"))
        call append(line(".")+4,  "\# Author: Canux CHENG canuxcheng@gmail.com                           #")
        call append(line(".")+5,  "\# Version: V1.0.0.0                                                  #")
        call append(line(".")+6,  "\# Time: ".strftime("%c"))
        call append(line(".")+7,  "\######################################################################")
        call append(line(".")+8,  "\# Description:")
        call append(line(".")+9,  "\######################################################################")
        call append(line(".")+10,  "\#>")
        call append(line(".")+11,  "")
    endif
    if &filetype == 'python'
        call setline(1, "\#!/usr/bin/env python")
        call append(line("."),    "\# -*- coding: utf-8 -*-")
        call append(line(".")+1,  "\"\"\"Copyright (C) 2015 Faurecia (China) Holding Co.,Ltd.")
        call append(line(".")+2,  "")
        call append(line(".")+3,  "\All rights reserved.")
        call append(line(".")+4,  "\Name: ".expand("%"))
        call append(line(".")+5,  "\Author: Canux CHENG canuxcheng@gmail.com")
        call append(line(".")+6,  "\Version: V1.0.0.0")
        call append(line(".")+7,  "\Time: ".strftime("%c"))
        call append(line(".")+8,  "")
        call append(line(".")+9,  "\Description:")
        call append(line(".")+10, "\"\"\"")
        call append(line(".")+11, "import")
    endif
    if &filetype == 'h'
        call setline(1, "/*********************************************************************")
        call append(line("."),   "* Copyright (C) 2015 Faurecia (China) Holding Co.,Ltd.               *")
        call append(line(".")+1, "* All right reserved.                                                *")
        call append(line(".")+2, "* Name: ".expand("%"))
        call append(line(".")+3, "* Author: Canux CHENG canuxcheng@gmail.com                           *")
        call append(line(".")+4, "* Version: V1.0.0.0                                                  *")
        call append(line(".")+5, "* Time: ".strftime("%c"))
        call append(line(".")+6, "**********************************************************************")
        call append(line(".")+7, "* Description:                                                        ")
        call append(line(".")+8, "*********************************************************************/")
        call append(line(".")+9, "")
    endif
    if &filetype == 'c'
        call setline(1, "/*********************************************************************")
        call append(line("."),   "* Copyright (C) 2015 Faurecia (China) Holding Co.,Ltd.               *")
        call append(line(".")+1, "* All right reserved.                                                *")
        call append(line(".")+2, "* Name: ".expand("%"))
        call append(line(".")+3, "* Author: Canux CHENG canuxcheng@gmail.com                           *")
        call append(line(".")+4, "* Version: V1.0.0.0                                                  *")
        call append(line(".")+5, "* Time: ".strftime("%c"))
        call append(line(".")+6, "**********************************************************************")
        call append(line(".")+7, "* Description:                                                        ")
        call append(line(".")+8, "*********************************************************************/")
        call append(line(".")+9, "")
    endif
    if &filetype == 'cpp'
        call setline(1, "/*********************************************************************")
        call append(line("."),   "* Copyright (C) 2015 Faurecia (China) Holding Co.,Ltd.               *")
        call append(line(".")+1, "* All right reserved.                                                *")
        call append(line(".")+2, "* Name: ".expand("%"))
        call append(line(".")+3, "* Author: Canux CHENG canuxcheng@gmail.com                           *")
        call append(line(".")+4, "* Version: V1.0.0.0                                                  *")
        call append(line(".")+5, "* Time: ".strftime("%c"))
        call append(line(".")+6, "**********************************************************************")
        call append(line(".")+7, "* Description:                                                        ")
        call append(line(".")+8, "*********************************************************************/")
        call append(line(".")+9, "")
    endif
    if &filetype == 'java'
        call setline(1, "/**")
        call append(line("."),   " * Copyright (C) 2015 Faurecia (China) Holding Co.,Ltd.")"
        call append(line(".")+1, " * All right reserved.")
        call append(line(".")+2, " * Name: ".expand("%"))
        call append(line(".")+3, " * Author: Canux CHENG canuxcheng@gmail.com")
        call append(line(".")+4, " * Version: V1.0.0.0")
        call append(line(".")+5, " * Time: ".strftime("%c"))
        call append(line(".")+6, " * Description:")
        call append(line(".")+7, " */")
        call append(line(".")+8, "")
    endif
    if &filetype == 'go'
        call setline(1, "// Copyright (C) 2015 Faurecia (China) Holding Co.,Ltd.")
        call append(line("."), " // All right reserved.")
        call append(line(".")+1, " // Name: ".expand("%"))
        call append(line(".")+2, " // Author: Canux CHENG canuxcheng@gmail.com")
        call append(line(".")+3, " // Version: V1.0.0.0")
        call append(line(".")+4, " // Time: ".strftime("%c"))
        call append(line(".")+5, " //")
        call append(line(".")+6, " // Description:")
        call append(line(".")+7, " //")
        call append(line(".")+8, "")
    endif
    if &filetype == 'perl'
        call setline(1, "\#!/usr/bin/env perl")
        call append(line("."),    "\######################################################################")
        call append(line(".")+1,  "\# Copyright (C) 2015 Faurecia (China) Holding Co.,Ltd.               #")
        call append(line(".")+2,  "\# All rights reserved                                                #")
        call append(line(".")+3,  "\# Name: ".expand("%"))
        call append(line(".")+4,  "\# Author: Canux CHENG canuxcheng@gmail.com                           #")
        call append(line(".")+5,  "\# Version: V1.0.0.0                                                  #")
        call append(line(".")+6,  "\# Time: ".strftime("%c"))
        call append(line(".")+7,  "\######################################################################")
        call append(line(".")+8,  "\# Description:")
        call append(line(".")+9,  "\######################################################################")
        call append(line(".")+10, "")
    endif
    if &filetype == 'ruby'
        call setline(1, "\#!/usr/bin/env ruby")
        call append(line("."),    "\######################################################################")
        call append(line(".")+1,  "\# Copyright (C) 2015 Faurecia (China) Holding Co.,Ltd.               #")
        call append(line(".")+2,  "\# All rights reserved                                                #")
        call append(line(".")+3,  "\# Name: ".expand("%"))
        call append(line(".")+4,  "\# Author: Canux CHENG canuxcheng@gmail.com                           #")
        call append(line(".")+5,  "\# Version: V1.0.0.0                                                  #")
        call append(line(".")+6,  "\# Time: ".strftime("%c"))
        call append(line(".")+7,  "\######################################################################")
        call append(line(".")+8,  "\# Description:")
        call append(line(".")+9,  "\######################################################################")
        call append(line(".")+10, "")
    endif
    autocmd BufNewFile * normal G
endfunc
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" End                                                                         "
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
