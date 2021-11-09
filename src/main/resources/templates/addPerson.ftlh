<#import "/spring.ftl" as spring/>

<html>
<head>
    <title>Person Add</title>
    <link rel="stylesheet" type="text/css" href="<@spring.url '/css/style.css'/>"/>
</head>

<#if errorMessage??> <#--  DİKKAT: Eğer "errorMessage??" ise bu alanı kullanır. Sonunda ?? çift soru işareti -->
    <div style="color: red; font-style: italic">
        ${errorMessage}
    </div>
</#if>

<body>
        <div>
            <fieldset>
                <legend>Person Add</legend>
                <form name="person" action="" method="POST">
                    First Name: <@spring.formInput "personForm.firstName" "" "text" /> <br><br><#--  DİKKAT: text sonundaki "/" olmazsa hata atar-->
                    Last  Name: <@spring.formInput "personForm.lastName" "" "text" />  <br><br>
                    <input type="submit" value="Create" />
                </form>
            </fieldset>
        </div>
</body>
</html>