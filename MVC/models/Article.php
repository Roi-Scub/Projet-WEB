<?php 
class Article 
{
    // Attributs
    private $_ID_offre;
    private $_nom_de_l_offre;
    //etc

    // Constructeur 
    public function __construct(array $data)
    {
        // On passe le tableau de données à la méthode hydrate
        $this->hydrate($data);

    }

    // hydratation
    public function hydrate(array $data)
    {
        // On fait une boucle avec les données
        foreach($data as $key => $value)
        {
            // On récupère le nom du setter correspondant à l'attribut en mettant la 1ère lettre en majuscule 
            $temp = explode('_', $key);

            foreach($temp as $k => $v)
            {
                $temp[$k] = ucfirst(strtolower($v));
                $temp[$k] = str_replace('Offre', '', $temp[$k]);
                switch($temp[$k])
                {
                    case 'L':
                    case 'De':
                       $temp[$k] = '';
                       break;
                    default:
                        break;
                }

            }
            $key = implode('', $temp);

            $method = 'set'.ucfirst($key);
            if(method_exists($this, $method))
            {
                $this->$method($value);
            }
        }
    }

    //setters

    public function setId($ID_offre)
    {
        $ID_offre = (int) $ID_offre;
        if($ID_offre > 0)
        {
            $this->_ID_offre = $ID_offre;
        }
    }
    public function setNom($nom_de_l_offre)
    {
        if(is_string($nom_de_l_offre))
        {
            $this->_nom_de_l_offre = $nom_de_l_offre;
        }
    }
    
    public function setDate($date)
    {
        $this->_date = $date;
    }

    //getters pour récupérer les données

    public function getId()
    {
        return $this->_ID_offre;
    }
    public function getNom()
    {
        return $this->_nom_de_l_offre;
    }

    public function getDate()
    {
        return date('d/m/Y');
    }

}