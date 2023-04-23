<script src="https://cdnjs.cloudflare.com/ajax/libs/jspdf/2.3.1/jspdf.umd.min.js"></script>

<script>
    document.getElementById('btn_informe').addEventListener('click', function() {
    var doc = new jsPDF();

    doc.autoTable({
    html: '#inventario'
});

    doc.save('informe.pdf');
});
</script>