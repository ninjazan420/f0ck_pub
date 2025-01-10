<div class='file-dropper-holder'>
    <input type='file' id='<%- ctx.id %>'/>
    <label class='file-dropper' for='<%- ctx.id %>' role='button'>
        <% if (ctx.allowMultiple) { %>
            Drop or paste your files here!
        <% } else { %>
            Drop or paste your file here!
        <% } %>
        <br/>
        Or just click on this box.
        <% if (ctx.extraText) { %>
            <br/>
            <small><%= ctx.extraText %></small>
        <% } %>
    </label>
    <% if (ctx.allowUrls) { %>
        <div class='url-holder'>
            <input type='text' name='url' placeholder='<%- ctx.urlPlaceholder %>'/>
            <% if (ctx.lock) { %>
                <button>Confirm</button>
            <% } else { %>
                <button>Add URL</button>
            <% } %>
        </div>
    <% } %>
</div>
