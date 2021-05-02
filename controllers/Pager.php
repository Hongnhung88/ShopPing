<?php 
class pager{
    public function findStart($limit)
    {
        # code for find start page
        if((!isset($_GET['page'])) || ($_GET['page']==1))
        {
            $start = 0;
            $_GET['page'] = 1;
        }
        else
        {
            $start = ($_GET['page']-1)*$limit;
        }
        return $start;
    }
}