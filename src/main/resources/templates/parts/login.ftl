<#macro login path>
    <form class="form-signin" action="${path}" method="post">
        <h1 class="h3 mb-3 font-weight-normal">Please sign in</h1>
        <label> User Name : <input type="text" class="form-control" name="username"/> </label>
        <label> Password: <input type="password" class="form-control" name="password"/> </label>
        <div class="checkbox mb-3">
            <label>
                <input type="checkbox" value="remember-me"> Remember me
            </label>
        </div>
        <button class="btn btn-lg btn-primary btn-block" type="submit">Sign in</button>
        <p class="mt-5 mb-3 text-muted">© 2017-2020</p>
        <input type="hidden" name="_csrf" value="${_csrf.token}" />
    </form>

</#macro>

<#macro logout>
<form action="/logout" method="post">
    <input type="hidden" name="_csrf" value="${_csrf.token}" />
    <input type="submit" value="Sign Out"/>
</form>
</#macro>
