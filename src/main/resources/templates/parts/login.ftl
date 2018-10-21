<#macro login path isRegisterForm>

<div class="log-page">
    <form action="${path}" method="post">
        <div class="form-item">
            <label>User Name :</label>
                <input type="text" name="username" class="form-control ${(usernameError??)?string('is-invalid', '')}"
                       placeholder="User name" value="<#if user??>${user.username}</#if>" />
                <#if usernameError??>
                    <div class="invalid-feedback">
                        ${usernameError}
                    </div>
                </#if>
        </div>
        <div class="form-item">
            <label>Password:</label>
            <input type="password" name="password" class="form-control ${(passwordError??)?string('is-invalid', '')}"
                   placeholder="Password" />
            <#if passwordError??>
                <div class="invalid-feedback">
                    ${passwordError}
                </div>
            </#if>
        </div>
        <#if isRegisterForm>
            <div class="form-item">
                <label>Password:</label>
                <input type="password" name="password2" class="form-control ${(password2Error??)?string('is-invalid', '')}"
                       placeholder="Retype Password" />
                <#if password2Error??>
                    <div class="invalid-feedback">
                        ${password2Error}
                    </div>
                </#if>
            </div>
            <div class="form-item">
                <label>E-mail:</label>
                <input type="email" name="email" class="form-control ${(emailError??)?string('is-invalid', '')}"
                       placeholder="some@some.com" value="<#if user??>${user.email}</#if>" />
                <#if emailError??>
                    <div class="invalid-feedback">
                        ${emailError}
                    </div>
                </#if>
            </div>
            </#if>
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