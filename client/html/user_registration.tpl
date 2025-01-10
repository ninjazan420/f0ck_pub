<div class='content-wrapper' id='user-registration'>
    <h1>Registration</h1>
    <form autocomplete='off'>
        <input class='anticomplete' type='text' name='fakeuser'/>
        <input class='anticomplete' type='password' name='fakepass'/>

        <ul class='input'>
            <li>
                <%= ctx.makeTextInput({
                    text: 'Username',
                    name: 'name',
                    placeholder: 'Letters, numbers, special characters...',
                    required: true,
                    pattern: ctx.userNamePattern,
                }) %>
            </li>
            <li>
                <%= ctx.makePasswordInput({
                    text: 'Password',
                    name: 'password',
                    placeholder: '5+ characters',
                    required: true,
                    pattern: ctx.passwordPattern,
                }) %>
            </li>
            <li>
                <%= ctx.makeEmailInput({
                    text: 'Email',
                    name: 'email',
                    placeholder: 'optional',
                }) %>
                <p class='hint'>
                    Email is used to grab your avatar from gravatar if wanted. We do not send newsletters or anything.
                    If your email is linked to  <a target="_blank" href='https://gravatar.com/'>Gravatar</a>, your Gravatar avatar will be loaded.
                     If you don't want all this, just leave the field empty.
                </p>
            </li>
        </ul>

        <div class='messages'></div>
        <div class='buttons'>
            <input type='submit' value='Create account'/>
        </div>
    </form>

    <div class='info'>
        <p>Registered users can:</p>
        <ul>
            <li><i class='fa fa-upload'></i> Access your own uploads</li>
            <li><i class='fa fa-heart'></i> Create favorites</li>
            <li><i class='fa fa-commenting-o'></i> Write comments</li>
            <li><i class="fa fa-trash" aria-hidden="true"></i> Delete your own comments</li>
            <li><i class='fa fa-star-half-o'></i> Up/downvoting of posts</li>
            <li><i class="fa fa-history" aria-hidden="true"></i> History of up- and downvoted posts</li>
            <li><i class="fa fa-tag" aria-hidden="true"></i> Create and edit tags</li>
        </ul>
        <hr/>
        <p>By creating an account, you are agreeing to the <a href='<%- ctx.formatClientLink('help', 'tos') %>'>Rules/ToS</a>.</p>
    </div>
</div>
