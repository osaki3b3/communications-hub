<template>
  <div>
    <Head title="Profile" />

    <Header  site_title="profile" />

    <div class="bg-white mt-4 shadow_boxes_content py-9 px-6 flex flex-cols sm:flex-row">

      <div class="">

        <div class="rounded-full bg-gray-300 w-32 h-32 mx-2 my-2"></div>
        <Link class="title-text-color text-center text-xs w-28 max-w-full block font-bold capitalize mx-auto underline">
          change profile image
        </Link>

      </div>
      <div class="pt-3">
        <div class="my-1">

          <p class="capitalize text-xs">
            {{ auth.user.first_name }}
          </p>

          <div class="ml-auto">

          </div>
          
        </div>
        <div class="mb-3">

          <p class="title-text-color mb-1 font-bold text-sm capitalize">
            role
          </p>
          <p class="text-xs text-gray-500 max-w-xl mb-5">
            Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce pretium sodales justo nec feugiat. Nam volutpat massa egestas nulla laoreet, eget sodales nibh mattis. Nam pulvinar consectetur vulputate.
          </p>
          
        </div>
        <div class="my-3">

          <p class="title-text-color mb-1 font-bold text-sm capitalize">
            plan
          </p>
          <p class="text-xs text-gray-500 max-w-xl">
          plan test
          </p>
          
        </div>
        <div class="my-3">

          <p class="title-text-color mb-1 font-bold text-sm capitalize">
            email
          </p>
          <p class="text-xs text-gray-500 max-w-xl">
            {{ auth.user.email }}
          </p>
          
        </div>
        <div class="my-3">

          <p class="title-text-color mb-1 font-bold text-sm capitalize">
            phone
          </p>
          <p class="text-xs text-gray-500 max-w-xl">
            {{ auth.user.phone }}
          </p>
          
        </div>
        <div class="my-3">

          <p class="title-text-color mb-1 font-bold text-sm capitalize">
            data
          </p>
          <p class="text-xs text-gray-500 max-w-xl">
          data text
          </p>
          
        </div>
      </div>

    </div>

    <div class="grid grid-cols-1 sm:grid-cols-2 gap-2 py-2">

      <div class="bg-white shadow_boxes_content p-7 pb-14">

        <p class="font-bold mb-5 title-text-color capitalize text-sm">
          about me
        </p>
        <p class="text-xs text-gray-500">
          Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce pretium sodales justo nec feugiat. Nam volutpat massa egestas nulla laoreet, eget sodales nibh mattis. Nam pulvinar consectetur vulputate.
        </p>

      </div>
      
      <div class="bg-white shadow_boxes_content px-7 pt-5 pb-14">

        <p class="font-bold mb-3 title-text-color title-text-color uppercase text-sm">
          current plan
        </p>
        <p class="text-xs text-gray-500 max-w-full w-40">
          Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce pretium sodales justo nec feugiat.
        </p>

      </div>

    </div>




    <!-- // OLD -->

    <!-- <div class="flex justify-start mb-8 max-w-3xl">
      <h1 class="text-3xl font-bold">
        <Link class="text-indigo-400 hover:text-indigo-600" href="/users">Users</Link>
        <span class="text-indigo-400 font-medium">/</span>
        {{ form.first_name }} {{ form.last_name }}
      </h1>
      <img v-if="user.photo" class="block ml-4 w-8 h-8 rounded-full" :src="user.photo" />
    </div>
    <trashed-message v-if="user.deleted_at" class="mb-6" @restore="restore"> This user has been deleted. </trashed-message>
    <div class="bg-white rounded-md shadow overflow-hidden">
      <form @submit.prevent="update">
        <div class="flex flex-wrap -mb-8 -mr-6 p-8">
          <text-input v-model="form.first_name" :error="form.errors.first_name" class="pb-8 pr-6 w-full lg:w-1/2" label="First name" />
          <text-input v-model="form.last_name" :error="form.errors.last_name" class="pb-8 pr-6 w-full lg:w-1/2" label="Last name" />
          <text-input v-model="form.email" :error="form.errors.email" class="pb-8 pr-6 w-full lg:w-1/2" label="Email" />
          <text-input v-model="form.password" :error="form.errors.password" class="pb-8 pr-6 w-full lg:w-1/2" type="password" autocomplete="new-password" label="Password" />
          <select-input v-model="form.owner" :error="form.errors.owner" class="pb-8 pr-6 w-full lg:w-1/2" label="Owner">
            <option :value="true">Yes</option>
            <option :value="false">No</option>
          </select-input>
          <file-input v-model="form.photo" :error="form.errors.photo" class="pb-8 pr-6 w-full lg:w-1/2" type="file" accept="image/*" label="Photo" />
        </div>
        <div class="flex items-center px-8 py-4 bg-gray-50 border-t border-gray-100">
          <button v-if="!user.deleted_at" class="text-red-600 hover:underline" tabindex="-1" type="button" @click="destroy">Delete User</button>
          <loading-button :loading="form.processing" class="btn-indigo ml-auto" type="submit">Update User</loading-button>
        </div>
      </form>
    </div> -->
  </div>
</template>

<script>
import Header from '@/Shared/header'
import { Head, Link } from '@inertiajs/inertia-vue3'
import Layout from '@/Shared/Layout'
import TextInput from '@/Shared/TextInput'
import FileInput from '@/Shared/FileInput'
import SelectInput from '@/Shared/SelectInput'
import LoadingButton from '@/Shared/LoadingButton'
import TrashedMessage from '@/Shared/TrashedMessage'

export default {
  components: {
    FileInput,
    Head,
    Link,
    LoadingButton,
    SelectInput,
    TextInput,
    TrashedMessage,
    Header,
  },
  layout: Layout,
  methods: {
  },
  props: {
    auth: Object,
  },
}
</script>
