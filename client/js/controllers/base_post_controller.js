"use strict";

const api = require("../api.js");
const topNavigation = require("../models/top_navigation.js");
const EmptyView = require("../views/empty_view.js");

class BasePostController {
    constructor(ctx) {
        if (!api.hasPrivilege("posts:view")) {
            this._view = new EmptyView();
            this._view.showError("Du hast nicht die nötigen Berechtigungen, um diesen Inhalt zu sehen.");
            return;
        }

        topNavigation.activate("posts");
        topNavigation.setTitle("Post #" + ctx.parameters.id.toString());
    }
}

module.exports = BasePostController;
