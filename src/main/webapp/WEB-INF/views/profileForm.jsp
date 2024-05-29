<%@ page language="java" contentType="text/html; charset=UTF-8" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Edit Profile</title>
</head>
<body>
    <div style="display:flex;flex-direction: row">
        <div>
        <form action="/join" method="post">
            <div class="container">

                <div class="copy">
                    <span class="container-1">
                      Edit Profile
                    </span>
                </div>

                <div class="input-and-button">

                    <input type="text" name="account" placeholder="Username" class="label" /><br/>
                    <input type="password" name="password" placeholder="New Password" class="label-1"/><br/>
                    <input type="email" name="email" placeholder="Email" class="label-2"/><br/>

                    <button class="button" type="submit">
                        <span class="container-2">Save changes</span>
                    </button>
                </div>
            </div>

        </form>
        </div>
        <%--    Bar chart--%>
        <div style="margin-left: 50px;margin-top: 40px">
             <span class="container-1">유저성향</span>
        </div>
    </div>

    <div>
        <p>
              <span class="container-1" style="margin-left: 700px">
                      Favorite Artists
              </span>
        </p>
    </div>
</body>
</html>

<style>.container {
    margin-left: 40px;
    background: #FFFFFF;
    display: flex;
    flex-direction: column;
    padding: 127px 0 30px 0;
    box-sizing: border-box;
}
.copy {
    margin-bottom: 24px;
    display: flex;
    box-sizing: border-box;
}
.container-1 {
    overflow-wrap: break-word;
    font-family: 'Inter';
    font-weight: 600;
    font-size: 24px;
    letter-spacing: -0.2px;
    line-height: 1.5;
    color: #000000;
}
.input-and-button {
    display: flex;
    flex-direction: column;
    width: fit-content;
    box-sizing: border-box;
}
.label {
    overflow-wrap: break-word;
    font-family: 'Inter';
    font-weight: 500;
    font-size:  17px;
    line-height:  1.5;
    color: #828282;
    border-radius: 20px;
}
.button {
    border-radius: 8px;
    background: #000000;
    display: flex;
    padding: 8px 0.9px 8px 0;
    width: 320px;
    box-sizing: border-box;
    justify-content: center;
}
.container-2 {

    overflow-wrap: break-word;
    font-family: 'Inter';
    font-weight:  500;
    font-size: 16px;
    line-height:  1.5;
    color: #FFFFFF;
}
.label-1 {
    overflow-wrap: break-word;
    font-family:'Inter';
    font-weight: 500;
    font-size:  17px;
    line-height: 1.5;
    color: #828282;
    border-radius: 20px;
}
.label-2 {
    overflow-wrap: break-word;
    font-family:  'Inter';
    font-weight:  500;
    font-size:  17px;
    line-height:  1.5;
    color: #828282;
    border-radius: 20px;
}</style>