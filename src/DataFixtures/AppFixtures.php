<?php

namespace App\DataFixtures;

use App\Entity\Users;
use App\Entity\Products;
use App\Entity\ProductCategory;
use Doctrine\Persistence\ObjectManager;
use Doctrine\Bundle\FixturesBundle\Fixture;
use Symfony\Component\PasswordHasher\Hasher\UserPasswordHasherInterface;

class AppFixtures extends Fixture
{
    public function __construct(private UserPasswordHasherInterface $hasher)
    {
    }

    public function load(ObjectManager $manager): void
    {
        $productCategorys = ['Chaise', 'Lit', 'Table', 'Lampe', 'Armoire',
        'Placard', 'Tapis', 'Bureau', 'Commode', 'Accessoires'];

        foreach ($productCategorys as $productCategory) {
            $productCategoryEntity = new ProductCategory();
            $productCategoryEntity->setName($productCategory);

            $manager->persist($productCategoryEntity);

        for ($i = 1; $i <= 20; $i++) {
            $products = new Products();
            $products->setProductCategory($productCategoryEntity);
            $products->setName($productCategory);
            $products->setDescription('Super Produit');
            $products->setStock(rand(100, 1000) / 1);
            $products->setPrice(rand(100, 1000) / 1);

            $manager->persist($products);
        }

    }

    for ($i = 1; $i <= 50; $i++) {
        $user = new Users;
        $user->setEmail('mail.' . $i . '@ikea.com');
        $password = $this->hasher->hashPassword($user, 'password');
        $user->setPassword($password);
        $user->setRoles([
            'ROLE_ADMIN',
            'ROLE_USER'
        ]);

        $manager->persist($user);
    }

    $manager->flush();
}
}
