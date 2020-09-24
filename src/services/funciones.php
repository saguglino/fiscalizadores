<?php

namespace App\services;
use Doctrine\ORM\EntityManagerInterface;
use Symfony\Component\HttpFoundation\JsonResponse;

class funciones
{   

    public function __construct (EntityManagerInterface $em)
    {
       $this->em= $em;
    }
        
    public function getFiscalizadores()
    {   
        $this->conn = $this->em->getConnection();
        
        $sql="SELECT
            fiscalizadores.idfiscalizador as id,
            fiscalizadores.cuit,
            fiscalizadores.dni,
            fiscalizadores.nombre,
            fiscalizadores.matricula
            FROM
            fiscalizadores
            WHERE
            fiscalizadores.activo = 1 limit 10
              ";

        $stmt= $this->conn->prepare($sql);
        $stmt->execute();
        //dd($stmt->fetchAll());
        //return new JsonResponse($stmt->fetchAll());
        return $stmt->fetchAll();

    }
}