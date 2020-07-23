<#import "parts/common.ftl" as c>
<#import "parts/login.ftl" as l>

<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css">
<style>
    body{
        width: 100%;
        height: 100%;
        background-color: #d5c4ffff;
        color: #000000;
        font-family: "Segoe UI",Arial,sans-serif;
        font-size: 1em;
        line-height: 135%;
    }
    a{
        color: #930048;
        text-decoration: none;
    }
    a:hover{
        color: #930048;
    }
    header{
        width: 98%;
        float: left;
        padding: 1%;
        background: #d5c4ffff;
        border-bottom: 3px solid silver;
    }
    header #logout{
        width:7%;
        float: right;
        font-family: Bernard MT Condensed;
        font-size: 1.5em;
    }
    header #logo{
        width: 30%;
        float: left;
        font-family: Bernard MT Condensed;
        color:#930048;
        font-size: 2em;
        padding-left:2%;
    }
    body #wrapper{
        width: 30%;
        float: left;
        margin-left: 30%;
        margin-top: 15px;
        box-sizing:border-box;
        border: 2px solid #000
    }
</style>
<@c.page>
    <header>
       <div id ="logo">Welcome to main</div>
<div id="logout">
    <@l.logout />
</div>
    </header>
    <body>
<div>
    <form method="post">
        <input type="text" name="text" placeholder="Введите сообщение" />
        <input type="text" name="tag" placeholder="Тэг">
        <input type="hidden" name="_csrf" value="${_csrf.token}" />
        <button type="submit">Добавить</button>
    </form>
</div>
<div>Список сообщений</div>
<form method="get" action="/main">
    <input type="text" name="filter" value="${filter?ifExists}">
    <button type="submit">Найти</button>
</form>
<#list messages as message>
<div id="wrapper">
    <b>${message.id}</b>
    <span>${message.text}</span>
    <i>${message.tag}</i>
    <strong>${message.authorName}</strong>
</div>
<#else>
No message
</#list>
</@c.page>
    </body>
