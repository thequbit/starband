<?php

    function dprint($text)
    {
        $debug = true;
        
        if($debug)
        {
            $disptext = "[DEBUG] " . $text . "<br>\n";
            
            echo $disptext;
        }
    }

?>
