"use strict";

const views = require("../util/views.js");

const template = views.getTemplate("snapshots-page");

function _extend(target, source) {
    target.push.apply(target, source);
}

function _formatBasicChange(diff, text) {
    const lines = [];
    if (diff.type === "list change") {
        const addedItems = diff.added;
        const removedItems = diff.removed;
        if (addedItems && addedItems.length) {
            lines.push(`${text} (${addedItems.join(", ")}) hinzugefügt`);
        }
        if (removedItems && removedItems.length) {
            lines.push(`${text} (${removedItems.join(", ")}) entfernt`);
        }
    } else if (diff.type === "primitive change") {
        const oldValue = diff["old-value"];
        const newValue = diff["new-value"];
        lines.push(`${text} (${oldValue} &rarr; ${newValue}) geändert`);
    } else {
        lines.push(`${text} geändert`);
    }
    return lines;
}

function _makeResourceLink(type, id) {
    if (type === "post") {
        return views.makePostLink(id, true);
    } else if (type === "tag") {
        return views.makeTagLink(id, true);
    } else if (type === "tag_category") {
        return 'category "' + id + '"';
    } else if (type === "pool") {
        return views.makePoolLink(id, true);
    }
}

function _makeItemCreation(type, data) {
    const lines = [];
    for (let key of Object.keys(data)) {
        if (!data[key]) {
            continue;
        }
        let text = key[0].toUpperCase() + key.substr(1).toLowerCase();
        if (Array.isArray(data[key])) {
            if (data[key].length) {
                lines.push(`${text}: ${data[key].join(", ")}`);
            }
        } else {
            lines.push(`${text}: ${data[key]}`);
        }
    }
    return lines.join("<br/>");
}

function _makeItemModification(type, data) {
    const lines = [];
    const diff = data.value;
    if (type === "tag_category") {
        if (diff.name) {
            _extend(lines, _formatBasicChange(diff.name, "name"));
        }
        if (diff.color) {
            _extend(lines, _formatBasicChange(diff.color, "color"));
        }
        if (diff.default) {
            _extend(lines, ["Zur Standardkategorie gemacht"]);
        }
    } else if (type === "tag") {
        if (diff.names) {
            _extend(lines, _formatBasicChange(diff.names, "names"));
        }
        if (diff.category) {
            _extend(lines, _formatBasicChange(diff.category, "category"));
        }
        if (diff.suggestions) {
            _extend(
                lines,
                _formatBasicChange(diff.suggestions, "suggestions")
            );
        }
        if (diff.implications) {
            _extend(
                lines,
                _formatBasicChange(diff.implications, "implications")
            );
        }
    } else if (type === "post") {
        if (diff.checksum) {
            _extend(lines, ["Inhalt verändert"]);
        }
        if (diff.featured) {
            _extend(lines, ["Post wurde gefeatured"]);
        }
        if (diff.source) {
            _extend(lines, _formatBasicChange(diff.source, "source"));
        }
        if (diff.safety) {
            _extend(lines, _formatBasicChange(diff.safety, "safety"));
        }
        if (diff.tags) {
            _extend(lines, _formatBasicChange(diff.tags, "tags"));
        }
        if (diff.relations) {
            _extend(lines, _formatBasicChange(diff.relations, "relations"));
        }
        if (diff.notes) {
            _extend(lines, ["Notizen geändert"]);
        }
        if (diff.flags) {
            _extend(lines, ["Flags geändert"]);
        }
    } else if (type === "pool") {
        if (diff.names) {
            _extend(lines, _formatBasicChange(diff.names, "names"));
        }
        if (diff.category) {
            _extend(lines, _formatBasicChange(diff.category, "category"));
        }
        if (diff.posts) {
            _extend(lines, _formatBasicChange(diff.posts, "posts"));
        }
    }

    return lines.join("<br/>");
}

class SnapshotsPageView {
    constructor(ctx) {
        views.replaceContent(
            ctx.hostNode,
            template(
                Object.assign(
                    {
                        makeResourceLink: _makeResourceLink,
                        makeItemCreation: _makeItemCreation,
                        makeItemModification: _makeItemModification,
                    },
                    ctx
                )
            )
        );
    }
}

module.exports = SnapshotsPageView;
