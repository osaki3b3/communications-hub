<script setup>

    defineProps(
        ['checkbox_id', 'checkbox_size', 'model', 'input_value'],
    )

</script>

<template>

    <label :for="checkbox_id" class="plan_checkbox_container flex items-center">
        <input :value="input_value" v-model="model" :id="checkbox_id" type="checkbox" />
        <div class="plan_checkbox_span" :class="checkbox_size" />
        <slot name="label_text" />
    </label>

</template>

<script>

    export default {
        
    }

</script>