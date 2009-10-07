autogen definitions sitetool;

common = {
	layout = "./layout.sxml";
};

vars = {
	sitename          = "Choicetool";
        package_url       = "http://savannah.nongnu.org/projects/choicetool";
        package_bugreport = "choicetool-generic@nongnu.org";
        ohloh_badge_url   = "http://www.ohloh.net/p/26031/widgets/project_partner_badge.js";
};

include "contents.as"
include "pages.as"
include "map.as"
include "files.as"
