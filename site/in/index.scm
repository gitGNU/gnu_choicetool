(h3 "DESCRIPTION")
(p "Choicetool is a configuration management tool like "
   (a (@ (href "http://www.catb.org/~esr/cml2/cml2-reference.html"))
      "CML2")
   " or "
   (a (@ (href "http://kernel.org/doc/#kconfig")) "Linux kernel kconfig")
   "."
   (br)
   "It uses an input description in order to know the configuration
    symbols and their relations and creates a script that should be
    shipped with a package in order to let the user be free to tweak
    the configuration in its details without any fuss."
   (br)
   "Choicetool should work with (and even without) the "
   (a (@ (href "http://en.wikipedia.org/wiki/Autotools")) autotools)
   ".")
(h4 "Copying")
(p
 "Choicetool is licensed under the "
 (a (@ (href "http://www.gnu.org/licenses/licenses.html"))
    "GNU General Public License, version 2")
 )

(h3 "MAINTAINERS")
(p
 "Francesco Salvestrini <salvestrini AT gmail DOT com>"
 )

(h3 "AUTHORS")
(p "Francesco Salvestrini <salvestrini AT gmail DOT com>"
   (br)
   "Alessandro Massignan <ff0000 DOT it AT gmail DOT com>"
 )

(h3 "RELEASES")
(p "Sorry, no public release available at the moment.")

(h3 "MAILING LISTS")
(p
 "Choicetool has several moderated mailing lists, each with an archive.
 For general Choicetool discussions, use <choicetool-user AT nongnu.org>.
 Email bug reports to <choicetool-bug AT nongnu.org>. For more information on
 submitting bugs, please see the section Report a Bug below.
 If you have a patch for a bug in Choicetool that hasn't yet been fixed in the
 latest repository sources, please send the patch (made for the git sources,
 not the release sources) to <choicetool-patch AT nongnu.org>."
 )

(h3 "REPORT A BUG")
(p
 "If you think you have found a bug in Choicetool, then please send as complete
 a report as possible to <choicetool-bug AT nongnu.org>. An easy way to collect all
 the required information, such as platform and compiler, is to run make check,
 and include the resulting file tests/testsuite.log to your report.
 Disagreements between the manual and the code are also bugs."
 )

(h3 "DEVELOPMENT")
(h4 "Browsing sources")
(p
 "You can Browse the "
 (a (@ (href "http://git.savannah.nongnu.org/gitweb/?p=choicetool.git"))
    "Git repository")
 " of this project with your web browser. This gives you a good
 picture of the current status of the source files. You may also view
 the complete histories of any file in the repository as well as
 differences among two versions."
 )
(h4 "Getting a Copy of the Git Repository")
(p "Anonymous checkout:")
(br)
(p (a (@ (href "http://savannah.gnu.org/maintenance/UsingGit")) git)
   " clone git://git.savannah.nongnu.org/choicetool.git")
