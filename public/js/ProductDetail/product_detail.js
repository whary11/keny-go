var detail = new Vue({
    el:"#product_detail_vue",
    data:{},
    mounted() {
        // alert('aqui')
        console.log($(".hr_reference").data('id'),$(".hr_reference").data('stock'),$(".hr_reference").data('price'));
    },
    methods: {
        selectReference(id,stock,price){
            console.log(id,stock,price)

            var jq_ref = $(`#reference_${id}`)
            var jq_div_ref = $(`#div_reference_${id}`)
            $(".hr_reference").remove()
            jq_div_ref.append(`<hr class="hr_reference">`)
            console.log(jq_ref);
        }
    },
})