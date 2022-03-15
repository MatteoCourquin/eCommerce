<?php

namespace App\Controller;

use App\Repository\ProductsRepository;
use App\Repository\ProductCategoryRepository;
use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;
use Symfony\Component\HttpFoundation\Response;
use Symfony\Component\Routing\Annotation\Route;

class AppController extends AbstractController
{
    #[Route('/', name: 'app_index')]
    public function index(
        ProductCategoryRepository $ProductCategoryRepository,
        ProductsRepository  $productsRepository,
    ): Response
    {
        $productCategory = $ProductCategoryRepository->findAll();
        $products = $productsRepository->findAll();

        return $this->render('app/index.html.twig', [
            'productCategory' => $productCategory,
            'products' => $products,
        ]);

    }

}