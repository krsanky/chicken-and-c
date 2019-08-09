(import chicken.process-context)
(import chicken.format)
(import (prefix taglib taglib:))

(printf "read tags...\n")

(if (not (null? (command-line-arguments)))
	(let* ([fn (car (command-line-arguments))])
		(printf "fn:~S\n" fn))
)

