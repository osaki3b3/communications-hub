<template>

  <div>

    <Head title="Login" />

    <div class="bg-white flex justify-center items-center flex-col h-screen pb-52">
      <div class="w-96 max-w-full">
      
        <logo class="block mx-auto" width="150" />
        <p class="text-center font-semibold text-xs my-5">
          LOGIN to your account
        </p>

        <form @submit.prevent="login">

          <label class="w-full flex mt-2 mb-4">
            <input type="email" class="w-full text-xs border-r-0 border border-gray-200 py-2.5 px-3 placeholder-black" v-model="form.email" :error="form.errors.email" autofocus autocapitalize="off" placeholder="Email Address"/>
            <div clasS="border border-gray-200 border-l-0 pt-3.5 pb-1 pr-2">
              <img src="img/input_email_icon.png" width="13" />
            </div>
          </label>
          <label class="w-full flex">
            <input type="password" id="show_password" class="w-full text-xs border-r-0 border border-gray-200 py-2.5 px-3 placeholder-black" v-model="form.password" :error="form.errors.password" placeholder="Password"/>
            <div clasS="border border-gray-200 border-l-0 pt-3 pb-1 pr-2">
              <button type="button" v-on:click="showPassword()">
                <img src="img/input_view_password_icon.png" width="16" />
              </button>
            </div>
          </label>
          <div class="flex justify-between my-5">

            <checkbox model="form.remember" checkbox_id="remember" checkbox_size="w-4 h-4 rounded-sm border border-gray-300">
              <template #label_text>
                <p class="text-xs capitalize font-semibold ml-2">
                  remember me
                </p>
              </template>
            </checkbox>
            <Link class="title-text-color font-bold underline capitalize text-xs">
              forgot password?
            </Link>

          </div>

          <loading-button class="justify-center pb-2 pt-2.5 w-full buttons_color text-center block rounded-full mt-2 capitalize font-semibold tracking-wide text-sm text-white" :loading="form.processing" type="submit">Login</loading-button>

        </form>

        <p class="text-xs text-center mt-4 mb-1">
          Or with Social Network
        </p>
        <div>
          
        </div>
        <p class="text-center text-xs mt-12">
          Don't have an account yet? <Link href="/registration" class="font-bold title-text-color capitalize underline">register now</Link>
        </p>

      </div>
    </div>
  
  </div>


  <Head title="Login" />
  <div class="items-center justify-center p-6 min-h-screen bg-indigo-800 hidden">
    <div class="w-full max-w-md">
      <logo class="block mx-auto w-full max-w-xs fill-white" height="50" />
      <form class="mt-8 bg-white rounded-lg shadow-xl overflow-hidden" @submit.prevent="login">
        <div class="px-10 py-12">
          <h1 class="text-center text-3xl font-bold">Welcome Back!</h1>
          <div class="mt-6 mx-auto w-24 border-b-2" />
          <text-input v-model="form.email" :error="form.errors.email" class="mt-10" label="Email" type="email" autofocus autocapitalize="off" />
          <text-input v-model="form.password" :error="form.errors.password" class="mt-6" label="Password" type="password" />
          <label class="flex items-center mt-6 select-none" for="remember">
            <input id="remember" v-model="form.remember" class="mr-1" type="checkbox" />
            <span class="text-sm">Remember Me</span>
          </label>
        </div>
        <div class="flex px-10 py-4 bg-gray-100 border-t border-gray-100">
          <loading-button :loading="form.processing" class="btn-indigo ml-auto" type="submit">Login</loading-button>
        </div>
      </form>
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
    showPassword() {

      var password = document.getElementById("show_password");
      if (password.type === "password") {
        password.type = "text";
      } else {
        password.type = "password";
      }

    },
  },
}
</script>
