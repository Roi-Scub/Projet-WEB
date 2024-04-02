function CreerFormulaire() {
    document.getElementById('creerForm').classList.add('active');
    document.getElementById('modifierForm').classList.remove('active');
}

function ModifierFormulaire () {
    document.getElementById('modifierForm').classList.add('active');
    document.getElementById('creerForm').classList.remove('active');
}