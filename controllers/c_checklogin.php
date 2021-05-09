<?php
class SessionLogin
{
    public function checkLogin()
    {
        if (isset($_SESSION['username'])) {
            return $_SESSION['username'];
        }
    }
    public function setUserSession(string $username)
    {
        # code for set username session
        $_SESSION['username'] = $username;
    }
}
