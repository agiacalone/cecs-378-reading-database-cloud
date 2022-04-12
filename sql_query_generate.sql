String login, password, pin, query
login = getParameter("login");
password = getParameter("pass");
pin = getParameter("pin");
Connection conn.createConnection("MyDataBase");
query = "SELECT accounts FROM users WHERE login='" +
    login + "'AND pass='" + password +
    "'AND pin=" + pin;
ResultSet result = conn.executeQuery(query);
if (result!=NULL)
    displayAccounts(result);
else
    displayAuthFailed();