<script setup>
    import { ref } from 'vue'

    const users_data = ref([ { user: 'user_1', image: 'img/building-ok.avif' }, { user: 'user_2', image: 'img/building-ok.avif' }, { user: 'user_3', image: 'img/building-ok.avif' }, { user: 'user_4', image: 'img/building-ok.avif' } ])

</script>

<template>

    <div>
        <Head title="Integrations" />
        <Header site_title="integrations" />

        <users-cards :users_img="users_data" users_title="mail" />
        
        <users-cards :users_img="users_data" users_title="contacts" />

        <users-cards :users_img="users_data" users_title="others" />
    
    </div>

</template>


<script>

    import SelectInput from '../../Shared/SelectInput'
    import FileInput from '../../Shared/FileInput'
    import Header from '@/Shared/header'
    import { Head, Link } from '@inertiajs/inertia-vue3'
    import Layout from '@/Shared/Layout'
    import UsersCards from '@/Shared/UsersCards'


    export default {
        components: {
            SelectInput,
            FileInput,
            Header,
            Head,
            UsersCards,
        },
        layout: Layout,
    }

</script>
