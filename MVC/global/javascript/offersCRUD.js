function CreateForm() {
    document.getElementById('createForm').classList.add('active');
    document.getElementById('updateForm').classList.remove('active');
    document.getElementById('viewForm').classList.remove('active');
    document.getElementById('deleteForm').classList.remove('active');
}

function UpdateForm () {
    document.getElementById('createForm').classList.remove('active');
    document.getElementById('updateForm').classList.add('active');
    document.getElementById('viewForm').classList.remove('active');
    document.getElementById('deleteForm').classList.remove('active');
}
function ViewForm () {
    document.getElementById('updateForm').classList.remove('active');
    document.getElementById('createForm').classList.remove('active');
    document.getElementById('viewForm').classList.add('active');
    document.getElementById('deleteForm').classList.remove('active');
}

function DeleteForm () {
    document.getElementById('updateForm').classList.remove('active');
    document.getElementById('createForm').classList.remove('active');
    document.getElementById('viewForm').classList.remove('active');
    document.getElementById('deleteForm').classList.add('active');
}