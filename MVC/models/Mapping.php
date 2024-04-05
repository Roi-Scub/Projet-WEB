<?php

abstract class Mapping
{
    /**
     * Cette méthode est utilisée pour hydrater l'objet avec les données de la base de données.
     *  Utilisez le préfixe pour le retirer des clés des données.
     * Remplacez le tiret bas par rien dans les clés des données. Pour respecter la convention camelCase.
     * 
     * @param array $data ls données de la base de données.
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