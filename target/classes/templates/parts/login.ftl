<#macro login path isRegisterForm>

<div class="log-page">
    <form action="${path}" method="post">
        <div class="form-item">
            <label>User Name :</label>
                <input type="text" name="username" class="form-control" placeholder="User name" />
        </div>
        <div class="form-item">
            <label>Password:</label>
            <input type="password" name="password" class="form-control" placeholder="Password" />
        </div>
        <input type="hidden" name="_csrf" value="${_csrf.token}" />
        <#if !isRegisterForm><a href="/registration">Add new user</a></#if>
    <button class="btn btn-primary" type="submit"><#if isRegisterForm>Create<#else>Sign In</#if></button>
    </form>
</div>

</#macro>

<#macro logout>
<form action="/logout" method="post">
    <input type="hidden" name="_csrf" value="${_csrf.token}" />
    <button class="btn btn-primary" type="submit">Sign Out</button>
</form>
</#macro>