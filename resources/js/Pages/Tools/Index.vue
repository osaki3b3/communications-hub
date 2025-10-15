<script setup>

    import { ref } from 'vue'
    const tools_data = ref([ { title: 'tool name', text: 'lorem ipsum dolor sit amet consectetur es adipcing es mo' }, { title: 'tool name', text: 'lorem ipsum dolor sit amet consectetur es adipcing es mo' }, { title: 'tool name', text: 'lorem ipsum dolor sit amet consectetur es adipcing es mo' }, { title: 'tool name', text: 'lorem ipsum dolor sit amet consectetur es adipcing es mo' }, { title: 'tool name', text: 'lorem ipsum dolor sit amet consectetur es adipcing es mo' }, { title: 'tool name', text: 'lorem ipsum dolor sit amet consectetur es adipcing es mo' } ]);

</script>

<template>
    <div>
    
        <Head title="Tools" />
        <Header site_title="tools" />

        <section>

            <div class="mt-7">
            
                <DescriptiveCard :card_content="tools_data" title_class="uppercase" />
            
            </div>

        </section>
    
    </div>
</template>


<script>
    import Header from '@/Shared/header'
    import { Head, Link } from '@inertiajs/inertia-vue3'
    import Layout from '@/Shared/Layout'
    import DescriptiveCard from '@/Shared/DescriptiveCard'

    export default {
    components: {
        Head,
        Link,
        Header,
        DescriptiveCard,
    },
        layout: Layout,
    }
</script>
