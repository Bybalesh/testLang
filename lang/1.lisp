(function (Prism) {
	/**
	 * Functions to construct regular expressions
	 * e.g. (interactive ... or (interactive)
	 *
(defun factorial (n)
  (if (<= n 1)
      1
      (* n (factorial (- n 1)))))

		}
	};

	language['lambda'].inside.arguments = arglist;
	language['defun'].inside.arguments = Prism.util.clone(arglist);
	language['defun'].inside.arguments.inside.sublist = arglist;

	Prism.languages.lisp = language;
	Prism.languages.elisp = language;
	Prism.languages.emacs = language;
	Prism.languages['emacs-lisp'] = language;
}(Prism));
