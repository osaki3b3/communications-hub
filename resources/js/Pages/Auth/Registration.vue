<template>

  <div>

    <Head title="Registration" />

    <div class="bg-white flex justify-center items-center flex-col h-screen pb-20">
      <div class="w-96 max-w-full">
      
        <logo class="block mx-auto" width="150" />
        <p class="uppercase text-center font-bold text-sm mt-5">
            start your free trial for free
        </p>
        <p class="text-center uppercase font-semibold text_xxs mt-2 mb-2">
          no hidden frees, no credit card required
        </p>

        <form>

          <label class="w-full flex mt-2 mb-4">
            <input type="email" class="w-full text-xs border-r-0 border border-gray-200 py-2.5 px-3 placeholder-black" placeholder="Full Name"/>
            <div clasS="border border-gray-200 border-l-0 pt-3.5 pb-1 pr-2">
              <img src="img/icon_username_icon.png" width="10" />
            </div>
          </label>
          <label class="w-full flex mt-2 mb-4">
            <input type="email" class="w-full text-xs border-r-0 border border-gray-200 py-2.5 px-3 placeholder-black" placeholder="Email Address"/>
            <div clasS="border border-gray-200 border-l-0 pt-3.5 pb-1 pr-2">
              <img src="img/input_email_icon.png" width="13" />
            </div>
          </label>
          <label class="w-full flex">
            <input type="password" class="w-full text-xs border-r-0 border border-gray-200 py-2.5 px-3 placeholder-black" placeholder="Password"/>
            <div clasS="border border-gray-200 border-l-0 pt-3 pb-1 pr-2">
              <button type="button">
                <img src="img/input_view_password_icon.png" width="16" />
              </button>
            </div>
          </label>
          <div class="flex justify-start my-5">

            <checkbox checkbox_id="remember" checkbox_size="w-4 h-4 rounded-sm border border-gray-300">
              <template #label_text>
                <p class="text-xs font-semibold ml-2">
                  I agree with all Listed
                </p>
              </template>
            </checkbox>
            <Link class="title-text-color capitalize text-xs ml-1">
              terms & conditions
            </Link>

          </div>

          <loading-button class="justify-center pb-2 pt-2.5 w-full buttons_color text-center block rounded-full mt-2 uppercase font-semibold tracking-wide text-sm text-white" type="submit">start for free</loading-button>

        </form>

        <p class="text-xs text-center mt-4 mb-1">
          Or with Social Network
        </p>
        <div>
          
        </div>
        <p class="text-center text-xs mt-12">
          Already have an account? Click here <Link href="/login" class="font-bold title-text-color capitalize underline">login</Link>
        </p>

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
