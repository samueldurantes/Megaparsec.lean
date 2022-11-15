import Lake
open Lake DSL

package Megaparsec

@[default_target]
lean_lib Megaparsec

require LSpec from git
  "https://github.com/yatima-inc/LSpec.git" @ "89798a6cb76b2b29469ff752af2fd8543b3a5515"

require YatimaStdLib from git
  "https://github.com/yatima-inc/YatimaStdLib.lean" @ "adaa6c339d116c5fb67d924f0952c63603f2859b"

require Straume from git
  "https://github.com/yatima-inc/straume/" @ "3134556ba0d865d101a8b3bd6593efa9062454f9"

@[default_target]
lean_exe megaparsec {
  supportInterpreter := true
  root := "Main"
}

lean_exe Tests.Parsec
lean_exe Tests.IO
lean_exe Tests.StateT
lean_exe Tests.Lisp
