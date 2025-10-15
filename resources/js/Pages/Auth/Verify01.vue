<template>

  <div>

    <Head title="Verify" />

    <div class="bg-white flex justify-center items-center flex-col h-screen pb-20">
      <div class="w-96 max-w-full">

        <p class="text-center font-bold text-sm mt-5">
            Verify your Account
        </p>
        <p class="text-center font-semibold text_xxs mt-4 mb-2">
          Enter your mobile phone number
        </p>

        <form>


            <p class="capitalize font-semibold text-sm mt-7">
                mobile phone number
            </p>
            <label class="w-full flex">
                <input type="tel" class="w-full text-xs border border-gray-200 py-2.5 px-3 placeholder-black" placeholder="000-000-0000"/>
            </label>

            <loading-button class="w-52 justify-center mt-5 pb-2 pt-2.5 mx-auto buttons_color text-center block rounded-full uppercase font-semibold tracking-wide text-xs text-white" type="submit">send me code</loading-button>

        </form>

      </div>
    </div>
  
  </div>


</template>

<script>
import { Head, Link } from '@inertiajs/inertia-vue3'
import Logo from '@/Shared/Logo'
import TextInput from '@/Shared/TextInput'
import Checkbox from '@/Shared/Checkbox'
import LoadingButton from '@/Shared/LoadingButton'

export default {
  components: {
    Head,
    LoadingButton,
    Logo,
    TextInput,
    Checkbox,
    Link,
  },
  data() {
    return {
      form: this.$inertia.form({
        email: 'johndoe@example.com',
        password: 'secret',
        remember: false,
      }),
    }
  },
  methods: {
    login() {
      this.form.post('/login')
    },
  },
}
</script>
