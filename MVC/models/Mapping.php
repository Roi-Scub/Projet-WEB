<?php

abstract class Mapping
{
    /**
     * This method is used to hydrate the object with the data from the database.
     * Use the prefix to remove it from the keys of the data.
     * Replace the underscore by nothing in the keys of the data. To respect the camelCase convention.
     * 
     * @param array $data The data from the database.
     */
    public function hydrate(array $data, $prefix = '')
    {
        foreach ($data as $key => $value)
        {
            $key = str_replace($prefix, '', $key);
            $key = str_replace('_', '', $key);
            $method = 'set'.ucfirst($key);
            
            if (method_exists($this, $method))
            {
                $this->$method($value);
            }
        }
    }
}



?>