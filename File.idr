{- This Source Code Form is subject to the terms of the Mozilla Public
 - License, v. 2.0. If a copy of the MPL was not distributed with this
 - file, You can obtain one at http://mozilla.org/MPL/2.0/. -}

import FerryJS

%include Node "file/runtime.js"

%default total

export
readFileSync : String -> JS_IO String
readFileSync p = assert_total $ 
  toIdrisUnsafe {to=String}
    <$> jscall "fs.readFileSync(%0, 'utf-8')" (Ptr -> JS_IO Ptr) (toJS p)

