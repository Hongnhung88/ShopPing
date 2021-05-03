<?php
class database{
    var $dbh = "";
    var $sql = '';
    var $cursor = null;

    var $servername = 'localhost';
    var $dbname = 'demo';
    var $username = 'root';
    var $password = '';

    public function database()
    {
        try {
            $this->dbh = new PDO("mysql:host=$servername; dbname=$dbname",$username, $password);
            $this->dbh->query('set names "utf8"');
        } catch (Exception $e) {
            echo $e->getMessage();
            die();
        }
    }

    public function setSql($sql)
    {   
        # set sql to execute
        $this->sql = $sql;
    }

    public function execute($options = array())
    {
        # prepare sql with parameter in sql 
        $this->cursor = $this->dbh->prepare($this->sql);

        if ($options) { // check parameter tranmission parameters exist
            // set all parameter using loop.
            for ($i = 0; $i < count($options); $i++) {
                $this->cursor->bindParam($i+1, $options[$i]);
            }
        }
        $this->cursor->execute();
        return $this->result;
    }

    public function getAllRows($options = array())
    {
        # check $options
        if (!$options) {
            if (!$result = $this->execute()) {
                return false;
            } else {
                if (!$result = $this->execute($options)) {
                    return false;
                }
            }
        }

        return $result->fetchAll(PDO::FETCH_OBJ);
    }

    public function getRow($options = array())
    {
        #check options
        if (!$options) {
            if (!$result = $this->execute()) {
                return false;
            }
        } else {
            if(!$result = $this->execute($options)) {
                return false;
            }
        }
        
        return $result->fetch(PDO::FETCH_OBJ);
    }

    #count or get record from table
    public function loadRecord($options = array())
    {
        if ($options) {
            if (!$result = $this->execute()) {
                return false;
            }
        } else {
            if (!$result = $this->execute()) {
                return false;
            }
        }

        return $result->fetch(PDO::FETCH_COLUMN);
    }

    public function getLastId()
    {
        return $this->dbh->lastInsertId();
    }

    public function disconnected()
    {
        $this->dbh = null;
    }
}