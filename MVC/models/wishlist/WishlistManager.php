<?php 

class WishlistManager extends Manager {


    public function createWishlist()
    {
        $conn = $this->getDataBase();

        $sql = 'INSERT INTO wishlist (Profile_Id, Offer_Id) VALUES (:Profile_Id, :Offer_Id)';

        $stmt = $conn->prepare($sql);

        $stmt->bindParam(':Profile_Id', $this->_profileId);
        $stmt->bindParam(':Offer_Id', $this->_offerId);

        $stmt->execute();
    }

    public function deleteWishlist()
    {
        $conn = $this->getDataBase();

        $sql = 'DELETE FROM wishlist WHERE Profile_Id = :Profile_Id AND Offer_Id = :Offer_Id';

        $stmt = $conn->prepare($sql);

        $stmt->bindParam(':Profile_Id', $this->_profileId);
        $stmt->bindParam(':Offer_Id', $this->_offerId);

        $stmt->execute();
    }


}