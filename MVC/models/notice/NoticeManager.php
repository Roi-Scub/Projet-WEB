<?php 
/* This manager will get the post information of a form located in businessesView      */

class NoticeManager extends Manager {
    

    public function save()
    {
        $data = array(
            'Notice_Grade' => $this->Notice_Grade,
            'Notice_Comment' => $this->Notice_Comment,
            'Business_Id' => $this->Business_Id,
            'Profile_Id' => $this->Profile_Id
        );
        
        if ($this->Notice_Id > 0) {
            $this->db->update('Notice', $data, array('Notice_Id' => $this->Notice_Id));
            return $this->Notice_Id

        } else {

            $this->db->insert('Notice', $data);
            return $this->db->lastInsertId();
        }
    }

    public function delete()
    {
        $this->db->delete('Notice', array('Notice_Id' => $this->Notice_Id));
    }

    public function getNotice($Notice_Id)
    {
        $Notice = $this->db->fetchAssoc('SELECT * FROM Notice WHERE Notice_Id = ?', array($Notice_Id));
        return $Notice;
    }

    public function getNotices()
    {
        $Notices = $this->db->fetchAll('SELECT * FROM Notice');
        return $Notices;
    }

    public function getNoticesByBusiness($Business_Id)
    {
        $Notices = $this->db->fetchAll('SELECT * FROM Notice WHERE Business_Id = ?', array($Business_Id));
        return $Notices;
    }

    public function getNoticesByProfile($Profile_Id)
    {
        $Notices = $this->db->fetchAll('SELECT * FROM Notice WHERE Profile_Id = ?', array($Profile_Id));
        return $Notices;
    }
}

?>