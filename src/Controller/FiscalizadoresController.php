<?php

namespace App\Controller;
use App\services\funciones;
use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;
use Symfony\Component\Routing\Annotation\Route;

use Endroid\QrCode\ErrorCorrectionLevel;
use Endroid\QrCode\LabelAlignment;
use Endroid\QrCode\QrCode;
use Endroid\QrCode\Response\QrCodeResponse;


class FiscalizadoresController extends AbstractController
{
    /**
     * @Route("/fiscalizadores", name="fiscalizadores")
     */
    public function index(funciones $apifunciones)
    {
       //dd($apifunciones->getFiscalizadores());
       $datos=$apifunciones->getFiscalizadores(); 
        
       //$params = array();
       //$content = $datos->getContent();
     

       if (!empty($content)) {
           $params = json_decode($content, true);
       }
            
       return $this->render('fiscalizadores/index.html.twig', ['datos' => $datos]);
       
       
    }

    public function datosFiscalizadores(funciones $apifunciones)
    {
        $datos=$apifunciones->getFiscalizadores(); 
        
        $params = array();
        $content = $datos->getContent();
      

        if (!empty($content)) {
            $params = json_decode($content, true);
        }
             
        
        return $this->render('funciones/index.html.twig', [
            'datos' => $params
        ]);
    }
    /**
     * @Route("/partidosjson", name="partidosjson")
     */

    public function datosFiscalizadoresjson(funciones $apifunciones)
    {

        $datos=$apifunciones->getFiscalizadores(); 
          
         return $datos;       
        
    } 
    /**
     * @Route("/{id}", name="imprime_show", methods={"GET"})
     */
    public function show($id)
    {
        
        // Create a basic QR code
        $qrCode = new QrCode('Life is too short to be generating QR codes');
        $qrCode->setSize(300);
        $qrCode->setMargin(10); 
        
        // Save it to a file
        //$url='public/images/qr';
        $qrCode->writeFile(__DIR__.'/qrcode.png');
        //$qrCode->writeFile($url.'/qrcode.png');

// Generate a data URI to include image data inline (i.e. inside an <img> tag)
$dataUri = $qrCode->writeDataUri();
        $tarea='hola';
        return $this->render('fiscalizadores/aa.html.twig', [
            'tarea' => $id,
        ]);
    }

    /**
     * @Route("/{id}/descarga_img", name="descarga_img", methods={"GET"})
     */
    public function descarga($id) 
    { 
        $filename='qrcode.png';
        $request = $this->get('request'); 
        $path = $this->get('kernel')->getRootDir(). "/../web/downloads/"; 
        $content = file_get_contents($path.$filename); 

        $response = new Response(); 

        //set headers 
        $response->headers->set('Content-Type', 'png/type'); 
        $response->headers->set('Content-Disposition', 'attachment;filename="'.$filename); 

        $response->setContent($content); 
        return $response; 
    } 
}
