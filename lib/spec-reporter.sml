fun isFailure result =
	String.substring(result, 0, 4) = "FAIL"

fun report expectation result "verbose" =
    concat [expectation, ": ", result, "\n"]
  | report expectation result _ =
    if isFailure result then "!" else "."
