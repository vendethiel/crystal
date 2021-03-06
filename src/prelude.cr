# Entries to this file should only be ordered if macros are involved -
# macros need to be defined before they are used.
# A first compiler pass gathers all classes and methods, removing the
# requirement to place these in load order.
#
# When adding new files, use alpha-sort when possible. Make sure
# to also add them to `docs_main.cr` if their content need to
# appear in the API docs.

private macro no_win(stmt)
  {% unless flag?(:win32) %}
    {{stmt}}
  {% end %}
end

# This list requires ordered statements
require "lib_c"
require "macros"
require "object"
require "comparable"
require "windows_stubs"
require "exception"
require "iterable"
require "iterator"
require "indexable"
require "string"

# Alpha-sorted list
require "array"
require "atomic"
require "bool"
require "box"
require "char"
require "char/reader"
require "class"
no_win require "concurrent"
require "crystal/main"
require "deque"
no_win require "dir"
require "enum"
require "enumerable"
require "env"
require "errno"
require "ext"
no_win require "file"
require "float"
require "gc"
require "hash"
no_win require "iconv"
require "int"
require "intrinsics"
require "io"
require "kernel"
require "math/math"
no_win require "mutex"
require "named_tuple"
require "nil"
require "number"
require "pointer"
require "pretty_print"
require "primitives"
require "proc"
no_win require "process"
require "raise"
require "random"
require "range"
require "reference"
require "reflect"
require "regex"
require "set"
no_win require "signal"
require "slice"
require "static_array"
require "struct"
require "symbol"
no_win require "system"
no_win require "thread"
require "time"
require "tuple"
require "unicode"
require "union"
require "va_list"
require "value"
