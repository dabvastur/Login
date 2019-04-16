<?php 

Class Usuario
{
    private $id, $nombre, $clave;
    
    function getId() {
        return $this->id;
    }

    function getNombre() {
        return $this->nombre;
    }

    function getClave() {
        return $this->clave;
    }

    function setId($id) {
        $this->id = $id;
    }

    function setNombre($nombre) {
        $this->nombre = $nombre;
    }

    function setClave($clave) {
        $this->clave = $clave;
    }

    function Valida()
    {
        if(!isset($mysqli))
        {
            return false;
        }
    }
}

?>