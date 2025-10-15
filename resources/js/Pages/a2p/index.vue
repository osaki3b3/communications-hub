<template>

    <Header site_title="A2P Register" />

    <div class="a2p_page">
        
        <section id="accordion-form">
            <div class="container">

                <form @submit.prevent="a2p_validate">
                    
                    <div class="a2p_title">

                        <h2>
                            A2P Registration Form
                        </h2>
                        <p>
                            This is the initial step to setup your Livecomm numbers for higher deliverability with cell phone carriers (A2P messaging). This is a new feature that allows you to reliably message large groups of contacts and increase deliverability. A2P allows your numbers to be trusted by cell phone carriers.
                        </p>

                    </div>

                    <div class="accordion">

                        <div class="card">
                            <div class="card-header">
                                <h2 class="mb-0">
                                    <p class="text-left">
                                        Livecomm User
                                    </p>
                                </h2>
                            </div>
                            <div class="card-body">
                                <select v-model="uid" value="598">
                                    <option value="0">
                                        -- Select User --
                                    </option>
                                </select>
                            </div>
                        </div>
                        
                        <div class="card">
                            <div class="card-header">
                                <h2 class="mb-0">
                                    <p class="text-left">
                                        Business Information
                                    </p>
                                </h2>
                            </div>
                            <div class="card-body">
                                <div class="accordion-content business-information">
                                    <div class="mb-9">
                                        <label class="mb-2" for="profile__friendly_name">
                                            Business Legal Name (as registered with the IRS)
                                        </label>
                                        <div class="">
                                            <input class="w-full" id="profile__friendly_name" type="text" :class="errors.profile__friendly_name ? 'error_border' : '' " v-model="form.profile__friendly_name" >

                                            <p class="error-text mt-1" v-if="errors.profile__friendly_name">
                                                {{ errors.profile__friendly_name }}
                                            </p>

                                        </div>
                                    </div>
                                    <div>
                                        <div class="select-content grid grid-cols-2 gap-6">
                                            <div class="">
                                                <p class="title">
                                                    Business Type
                                                </p>
                                                <div class="forms-select">
                                                    <select v-model="form.business_identity__business_type">
                                                        <option value="sole propietorship">Sole Propietorship</option>
                                                        <option value="partnership">Partnership</option>
                                                        <option value="corporation">Corporation</option>
                                                        <option value="co operative">Co operative</option>
                                                        <option value="limited liability corporation">Limited Liability Corporation</option>
                                                        <option value="non-profit-corporation">Non-profit Corporation</option>
                                                     </select>
                                                </div>

                                                <p class="error-text mt-1" v-if="errors.business_identity__business_type">
                                                    {{ errors.business_identity__business_type }}
                                                </p>

                                                <p class="title">
                                                    IRS Issued EIN Number (no dashes)
                                                </p>
                                                <div class="">
                                                    <input v-model="form.business_registration__number" v-on:keypress="NumbersOnly" class="w-full" :class="errors.business_registration__number ? 'error_border' : '' " type="text">
                                                    <p class="error-text mt-1" v-if="errors.business_registration__number">
                                                        {{ errors.business_registration__number }}
                                                    </p>
                                                </div>

                                                <p class="text mt-1">
                                                    Enter de EIN Tax ID as it appears in the EIN listing
                                                </p>
                                                <p class="title" style="display:none;">
                                                    Business Registration ID Type
                                                </p>
                                                <!-- <select style="display:none;"  name="business_identity__id" id="business_identity__id" v-model="form.business_identity__id">
                                                    <option value="usa: employer identification Number (EIN)" selected>USA:Employer Identification Number (EIN)</option>
                                                    <option value="others">Others</option>
                                                </select>
                                                <p class="error-text mt-1" v-if="errors.business_identity__id">
                                                    {{ errors.business_identity__id }}
                                                </p>
                                                <p class="text" style="display:none;">
                                                    To register for A2P, select EIN because DUNS number is not accepted.
                                                </p> -->
                                            </div>
                                            <div class="">
                                                <label for="business-identity__business-industry" class="title">
                                                    Business Industry
                                                </label>
                                                <select name="business_identity__business_industry" id="business_identity__business_industry" v-model="form.business_identity__business_industry">
                                                    <option value="automotive">Automotive</option>
                                                    <option value="agriculture">Agriculture</option>
                                                    <option value="banking">Banking</option>
                                                    <option value="construction">Construction</option>
                                                    <option value="consumer">Consumer</option>
                                                    <option value="education">Education</option>
                                                    <option value="engineering">Engineering</option>
                                                    <option value="energy">Energy</option>
                                                    <option value="oil & gas">Oil & Gas</option>
                                                    <option value="fast moving consumer goods">Fast moving consumer goods</option>
                                                    <option value="financial">Financial</option>
                                                    <option value="fintech">Fintech</option>
                                                    <option value="food & beverage">Food & Beverage</option>
                                                    <option value="goverment">Goverment</option>
                                                    <option value="healthcare">Healthcare</option>
                                                    <option value="hospitality">Hospitality</option>
                                                    <option value="insurance">Insurance</option>
                                                    <option value="legal">Legal</option>
                                                    <option value="manufacturing">Manufacturing</option>
                                                    <option value="media">Media</option>
                                                    <option value="online">Online</option>
                                                    <option value="profesional services">Profesional Services</option>
                                                    <option value="raw materials">Raw materials</option>
                                                    <option value="real estate">Real Estate</option>
                                                    <option value="religion">Religion</option>
                                                    <option value="retail">Retail</option>
                                                    <option value="jeweiry">Jeweiry</option>
                                                    <option value="technology">Technology</option>
                                                    <option value="telecomunication">Telecomunication</option>
                                                    <option value="transportation">Transportation</option>
                                                    <option value="travel">Travel</option>
                                                    <option value="electronics">Electronics</option>
                                                    <option value="not for profit">Not for profit</option>
                                                </select>
                                                <p class="error-text mt-1" v-if="errors.business_identity__business_industry">
                                                    {{ errors.business_identity__business_industry }}
                                                </p>
                                            </div>
                                        </div>
                                        <div class="business-website grid grid-cols-2 gap-6">
                                            <div class="">
                                                <label for="website__url" class="title mb-1">
                                                    Website Url (Use a social link if you don't have a site)
                                                </label>
                                                <input name="website__url" id="website__url" type="text" class="w-full" :class="errors.website__url ? 'error_border' : '' " v-model="form.website__url">
                                                <p class="error-text mt-1" v-if="errors.website__url">
                                                    {{ errors.website__url }}
                                                </p>
                                            </div>
                                            <div class="">
                                                <label for="profile__url" class="title mb-1">
                                                    Social Media Profile URL
                                                </label>
                                                <input name="profile__url" id="profile__url" type="text" placeholder="i.e. Linkedin, Facebook/ Twitter" class="w-full" :class="errors.profile__url ? 'error_border' : '' " v-model="form.profile__url">
                                                <p class="error-text mt-1" v-if="errors.profile__url">
                                                    {{ errors.profile__url }}
                                                </p>
                                            </div>
                                        </div>
                                        <div class="business-address">
                                            <div class="title-section mb-7">
                                                <p class="title mb-5">
                                                    Business Address
                                                </p>
                                                <p class="text">
                                                    <span>!</span> We currently accept only physical addresses for Customer profiles. <b>P.O. box addres are not accepted</b>
                                                </p>
                                            </div>
                                            <div class="grid grid-cols-2 gap-6">
                                                <div class="">
                                                    <div class="business-address__content">
                                                        <label class="mb-3" for="">
                                                            Country
                                                        </label>
                                                        <select name="business_information__country" id="" v-model="form.business_information__country">
                                                            <option value="united state" id="us-country">
                                                                United State - US
                                                            </option>
                                                        </select>
                                                        <p class="error-text mt-1" v-if="errors.business_information__country">
                                                            {{ errors.business_information__country }}
                                                        </p>
                                                    </div>
                                                    <div class="business-address__content">
                                                        <label class="mb-3" for="">
                                                            Street Address
                                                        </label>
                                                        <input name="street__address" id="street__address" type="text" class="w-full" :class="errors.street__address ? 'error_border' : '' " v-model="form.street__address">
                                                        <p class="error-text mt-1" v-if="errors.street__address">
                                                            {{ errors.street__address }}
                                                        </p>
                                                        <p class="mt-1">
                                                            Enter the first line of the business address as it appears in the EIN listing
                                                        </p>
                                                    </div>
                                                    <div class="business-address__content">
                                                        <label class="mb-3" for="">
                                                            Street Address Line 2
                                                        </label>
                                                        <input name="street__address__2" id="street__address__2" type="text" class="w-full" :class="errors.street__address__2 ? 'error_border' : '' " v-model="form.street__address__2">
                                                        <p class="error-text mt-1" v-if="errors.street__address__2">
                                                            {{ errors.street__address__2 }}
                                                        </p>
                                                        <p class="mt-1">
                                                            if applicable, enter the second line of the business address as it appears in your EIN listing 
                                                        </p>
                                                    </div>
                                                    <div class="business-address__content">
                                                        <label class="mb-3" for="">
                                                            City
                                                        </label>
                                                        <input name="city" id="city" type="text" class="w-full" :class="errors.city ? 'error_border' : '' " v-model="form.city">
                                                        <p class="error-text mt-1" v-if="errors.city">
                                                            {{ errors.city }}
                                                        </p>
                                                        <p class="mt-1">
                                                            Enter the city as it appears in the EIN listing
                                                        </p>
                                                    </div>
                                                    <div class="business-address__content">
                                                        <label class="mb-3" for="">
                                                            State/Province/Region
                                                        </label>
                                                        <input id="state" type="text" class="w-full" :class="errors.state ? 'error_border' : '' " v-model="form.state">
                                                        <p class="error-text mt-1" v-if="errors.state">
                                                            {{ errors.state }}
                                                        </p>
                                                        <p class="mt-1">
                                                            Enter the state/province/region as it appears in the EIN listing
                                                        </p>
                                                    </div>
                                                    <div class="business-address__content mb-5">
                                                        <label class="mb-3" for="">
                                                            Postal/Zip code
                                                        </label>
                                                        <input v-on:keypress="NumbersOnly" id="postal__zip_code" type="text" class="w-full"  :class="errors.postal__zip_code ? 'error_border' : '' " v-model="form.postal__zip_code">
                                                        <p class="error-text mt-1" v-if="errors.postal__zip_code">
                                                            {{ errors.postal__zip_code }}
                                                        </p>
                                                        <p class="mt-1">
                                                            Enter the postal code as it appears in the EIN listing
                                                        </p>
                                                    </div>
                                                    <div class="business-address__content mb-5">
                                                        <label class="mb-3" for="phone_number">
                                                            Phone Number: (optional)
                                                        </label>
                                                        <input v-on:keypress="NumbersOnly" class="w-full" id="phone_number" type="text" :class="errors.phone_number ? 'error_border' : '' " v-model="form.phone_number">
                                                        <p class="error-text mt-1" v-if="errors.phone_number">
                                                            {{ errors.phone_number }}
                                                        </p>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="card">
                            <div class="card-header" id="headingThree">
                                <h2 class="mb-0">
                                    <p class="text-left">
                                        People To Contact
                                    </p>
                                </h2>
                            </div>
                            <div class="card-body">
                                <div class="people-contact">
                                    <p class="text">
                                        We will contact your authorized representative to verify your identities. Please ensure that they are availabble via email and phone.
                                    </p>
                                    <p class="title">
                                        Authorized Representative #1
                                    </p>
                                    <div class="grid grid-cols-2 gap-7">
                                        <div class="">
                                            <label for="">
                                                Last Name
                                            </label>
                                            <input name="authorized__last__name" id="authorized__last__name" type="text" class="w-full mb-" :class="errors.authorized__last__name ? 'error_border' : '' " v-model="form.authorized__last__name">
                                            <p class="error-text mt-1" v-if="errors.authorized__last__name">
                                                {{ errors.authorized__last__name }}
                                            </p>
                                            <label for="authorized__first-name">
                                                First Name
                                            </label>
                                            <input name="authorized__first__name" id="authorized__first__name" type="text" class="" :class="errors.authorized__first__name ? 'error_border' : '' " v-model="form.authorized__first__name">
                                            <p class="error-text mt-1" v-if="errors.authorized__first__name">
                                                {{ errors.authorized__first__name }}
                                            </p>
                                            <label for="country-name__select">
                                                Country Code
                                            </label>
                                            <select name="country__name__select" id="" v-model="form.country__name__select">
                                                <option value="us-canada">United States/Canada (+1)</option>
                                            </select>
                                            <p class="error-text mt-1" v-if="errors.country__name__select">
                                                {{ errors.country__name__select }}
                                            </p>
                                        </div>
                                        <div class="col col-12 col-md-6">
                                            <label for="authorized__email">
                                                Email
                                            </label>
                                            <input id="authorized__email" type="email" placeholder="name@company.com" class="" :class="errors.authorized__email ? 'error_border' : '' " v-model="form.authorized__email">
                                            <p class="error-text mt-1" v-if="errors.authorized__email">
                                                {{ errors.authorized__email }}
                                            </p>
                                            <label for="authorized__business-title">
                                                Business Title
                                            </label>
                                            <input name="authorized__business_title" id="authorized__business_title" type="text" class="" :class="errors.authorized__business_title ? 'error_border' : '' " v-model="form.authorized__business_title">
                                            <p class="error-text mt-1" v-if="errors.authorized__business_title">
                                                {{ errors.authorized__business_title }}
                                            </p>
                                            <label for="job-position__select">
                                                Job Position
                                            </label>
                                            <select name="job_position__select" id="" v-model="form.job_position__select">
                                                <option value="director">Director</option>
                                                <option value="gm">GM</option>
                                                <option value="vp">VP</option>
                                                <option value="ceo">CEO</option>
                                                <option value="cfo">CFO</option>
                                                <option value="general counsel">General Counsel</option>
                                                <option value="other">Other</option>
                                            </select>
                                            <p class="error-text mt-1" v-if="errors.job_position__select">
                                                {{ errors.job_position__select }}
                                            </p>
                                            <label for="authorized__phone-number">
                                                Phone Number
                                            </label>
                                            <input v-on:keypress="NumbersOnly" id="authorized__phone_number" type="text" class="" :class="errors.authorized__phone_number ? 'error_border' : '' " v-model="form.authorized__phone_number">
                                            <p class="error-text mt-1" v-if="errors.authorized__phone_number">
                                                {{ errors.authorized__phone_number }}
                                            </p>
                                        </div>
                                    </div>
                                    <div class="checkbox mt-3">
                                        <label for="confirm-representative">
                                            <input id="confirm_representative" type="checkbox" :class="errors.confirm_representative ? 'error_border' : '' " v-model="form.confirm_representative">
                                            I confirm that my nominated authorized representative agree to be contacted by Livecomm
                                        </label>
                                        <p class="error-text mt-1" v-if="errors.confirm_representative">
                                            {{ errors.confirm_representative }}
                                        </p>
                                    </div>
                                </div>
                            </div>
                        </div>

                        <!-- ########## BRAND REGISTRATION -->

                        <div class="card">
                            <div class="card-header" id="headingThree">
                                <h2 class="mb-0">
                                    <p class="text-left">
                                        Brand
                                    </p>
                                </h2>
                            </div>
                            <div class="card-body">
                                <div class="campaign-case">
                                    <div class="grid">
                                        <div class="inputs-radio">
                                            <p class="title mb-3">
                                                What type of brand do you need?
                                            </p>
                                            <div class="standard py-3">
                                                <label class="my-3" for="sole_propietor">
                                                    <input type="radio" name="type_brand_input" id="sole_propietor" value="sole propietor $4 one-time fee" v-model="form.type_brand_input">
                                                    <!-- <input type="hidden" name="type-brand_input" value="4"> -->
                                                    Sole Proprietor <span>$4 one-time fee</span>
                                                </label>
                                                <p class="mt-3">
                                                    Recommended for customers sending fewer than 3,000 message segments per day to the US
                                                </p>
                                            </div>
                                            <div class="low-volume py-3">
                                                <label class="my-3" for="low_volume">
                                                    <input type="radio" name="type_brand_input" id="low_volume" value="low-volume standard brand $4 one-time fee" v-model="form.type_brand_input">
                                                    Low-Volume Standard Brand <span>$4 one-time fee</span>
                                                </label>
                                                <p class="mt-3">
                                                    Recommended for customers sending fewer them 6,000 message segments per day to the US (2,000 message segments per day to T-Mobile)
                                                </p>
                                            </div>
                                            <div class="standard py-3">
                                                <label class="my-3" for="standart">
                                                    <input type="radio" name="type_brand_input" id="standart" value="standard $44 one-time fee" v-model="form.type_brand_input">
                                                    Standard <span>$44 one-time fee</span>
                                                </label>
                                                <p class="mt-3">
                                                    Recommended for customers sendings messages at scale. Your daily limit may between 6,000 and 600,000 message segment per day to the US (2,000 - 200,000 per day to T-Mobile).
                                                </p>
                                            </div>
                                            <p class="error-text mt-1" v-if="errors.type_brand_input">
                                                {{ errors.type_brand_input }}
                                            </p>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>

                        <!-- ---- / END Brand registration -->

                        <div class="card">
                            <div class="card-header">
                                <h2 class="mb-0">
                                    <p class="text-left">
                                        Register Campaign Use Case 
                                    </p>
                                </h2>
                            </div>
                            <div class="card-body">
                                <div class="campaign-case">
                                    <div class="title-section mb-5">
                                        <p class="text leading-4">
                                            We will be submitting this information to cell phone carriers so they understand what type of messages you'll be sending. Each campaign registration costs a one time $45 fee (Which should be reflected in a separate invoice in the coming days after this registration process). In addition, carriers charge a monthly fee between $2 and $10 pending on your campaign use case. Declaring your exact campaign use case rather than using a mixed campaign use case will generally result in higher limits from AT&T (and others) because you're being more specific about what messages you are sending.
                                        </p>
                                    </div>
                                    <div class="grid grid-cols-3 gap-5">
                                        <div class="col-span-2">

                                            <div class="inputs-content">
                                                <label for="register__campaign-select" class="font-bold mb-2 mt-1 block">
                                                    Available A2P campaign use cases
                                                </label>
                                                <div class="input-exclamation-mark">

                                                    <select class="exclamation_mark__content py-0 select-deselect" name="register__campaign_select" v-model="form.register__campaign_select">
                                                        <optgroup label="Automatic approval">

                                                            <option data-description="The Low Volume Mixed Campaign use case be can used to send messages of multiple use cases such as Customer Care and Delivery Notifications, but it is on the lowest  throughtput tier regaless on the Brand0's Trust Score. Due to the lower cost, it is recommended for Customers with the Low Volume Standard Brand, as well as Standard Brand customers who do not need high throughput." value="low volume mixed">
                                                                Low Volume Mixed ($1.50/month)
                                                            </option>

                                                            <option data-description="Any authentication or account verification such as OTP" value="two-factor authentication (2fa)">
                                                                Two-Factor authentication (2FA) ($10.00/month)
                                                            </option>

                                                            <option data-description="Notification about the status of an account or related to begin a part of an account." value="account notification">
                                                                Account Notification ($10.00/month)
                                                            </option>

                                                            <option data-description="Support, account management, and other avenues of customer interaction." value="customer care">
                                                                Customer Care ($10.00/month)
                                                            </option>

                                                            <option data-description="Information about the status of a delivery" value="delivery notification">
                                                                Delivery Notification ($10.00/month)
                                                            </option>

                                                            <option data-description="Messaging abount potential fraudulent activity such as spending alerts." value="fraud alert messaging">
                                                                Fraud Alert Messaging ($10.00/month)
                                                            </option>

                                                            <option data-description="Message campaigns from calleges, universities, and other educations institutions" value="higher educational">
                                                                Higher Education ($10.00/month)
                                                            </option>

                                                            <option data-description="Promotional content such as sales and limited time offerts." value="marketing">
                                                                Marketing ($10.00/month)
                                                            </option>

                                                            <option data-description="A campaign that covers multiple use cases such as Customer Care and Delivery Notifications. Note - mixed campaigns are likely to have lower throughput and a higher cost per message." value="mixed">
                                                                Mixed ($10.00/month)
                                                            </option>

                                                            <option data-description="For conducting polling and voting, such as customer surveys. Not for political use." value="polling and voting">
                                                                Polling and voting ($10.00/month)
                                                            </option>

                                                            <option data-description="PSAs to raise audience awareness about a given topic." value="public service announcement">
                                                                Public Service Announcement ($10.00/month)
                                                            </option>

                                                            <option data-description="Notification of a compromised system (software or hardware related)." value="security alert">
                                                                Security Alert ($10.00/month)
                                                            </option>

                                                        </optgroup>
                                                        <optgroup label="Requires carrier review">

                                                            <option data-description="Brands that have multiple agents, franchises or offices in the same brand vertical, but require individual localized numbers per agent/location/office. Note: Franchises/businesses with a separate EIN should register as a separate brand. Maximum 5000 numbers per Campaign." value="agents and franchises">
                                                                Agents and Franchises ($30.00/month)
                                                            </option>

                                                            <option data-description="Notification services designed to support public safety/health during natural disasters, armed conflicts, pandemics, and other national or regional emergencies." value="emergency">
                                                                Emergency ($5.00/month)
                                                            </option> 

                                                            <option data-description="For messaging platforms that support schools from grades K-12 and distance learning centers." value="k-12 education">
                                                                K-12 Education ($10.00/month)
                                                            </option>

                                                            <option data-description="Peer-to-peer app-based group messaging with proxy/pooled numbers. Supporting personalized services and non-exposure of personal numbers for enterprise or A2P communications. A phone number is assigned to a conversation (e.g. end-user/agent pair), rather than to a single business or individual. Both parties to the conversation send text messages to that number, which acts as a relay and protects the privacy of both users' personal numbers." value="proxy">
                                                                Proxy ($10.00/month)
                                                            </option>

                                                            <option data-description="Communication between public figures/influencers and their communities." value="social">
                                                                Social ($10.00/month)
                                                            </option>

                                                            <option data-description="All sweepstakes-related messaging." vlue="Sweepstakes">
                                                                Sweepstakes ($10.00/month)
                                                            </option>

                                                        </optgroup>
                                                    </select>
                                                    <p class="exclamation-mark__icon">
                                                        <span>!</span>
                                                    </p>
                                                </div>
                                                <p class="error-text mt-1" v-if="errors.register__campaign_select">
                                                    {{ errors.register__campaign_select }}
                                                </p>
                                            </div>
                                            <div class="inputs-content">
                                                <label for="campaign__description" class="font-bold mb-2 mt-1 block">
                                                    Campaign use case description
                                                </label>
                                                <textarea name="campaign__description" id="campaign__description" cols="30" rows="10" class="" :class="errors.campaign__description ? 'error_border' : '' " v-model="form.campaign__description"></textarea>
                                                <p class="error-text mt-1" v-if="errors.campaign__description">
                                                    {{ errors.campaign__description }}
                                                </p>
                                                <p class="my-2">
                                                    Describe what you will be using this campaign use case for.
                                                </p>
                                            </div>
                                            <div class="inputs-content">
                                                <label for="simple__message-1" class="font-bold mb-2 mt-1 block">
                                                    Simple message #1
                                                </label>
                                                <textarea name="simple__message_1" id="simple__message_1" cols="30" rows="10" class="" :class="errors.simple__message_1 ? 'error_border' : '' " v-model="form.simple__message_1"></textarea>
                                                <p class="error-text mt-1" v-if="errors.simple__message_1">
                                                    {{ errors.simple__message_1 }}
                                                </p>
                                                <p class="my-2">
                                                    Provide an example of a message that you will be sending with this campaign use case. This message simple will be used by carriers to help identify your traffic.
                                                </p>
                                            </div>
                                            <div class="inputs-content">
                                                <label for="simple__message-2" class="font-bold mb-2 mt-1 block">
                                                    Simple message #2
                                                </label>
                                                <textarea name="simple__message_2" id="simple__message_2" cols="30" rows="10" class="" :class="errors.simple__message_2 ? 'error_border' : '' " v-model="form.simple__message_2"></textarea>
                                                <p class="error-text mt-1" v-if="errors.simple__message_2">
                                                    {{ errors.simple__message_2 }}
                                                </p>
                                                <p class="my-2">
                                                    Provide an example of a message that you will be sending with this campaign use case. This message simple will be used by carriers to help identify your traffic.
                                                </p>
                                            </div>
                                            <div class="inputs-content">
                                                <label for="how_do_optin" class="font-bold mb-2 mt-1 block">
                                                    How do end-users consent to receive messages? (40-2048 characters)
                                                </label>
                                                <textarea name="how_do_optin" id="how_do_optin" cols="30" rows="10" class="" :class="errors.how_do_optin ? 'error_border' : '' " v-model="form.how_do_optin"></textarea>
                                                <p class="error-text mt-1" v-if="errors.how_do_optin">
                                                    {{ errors.how_do_optin }}
                                                </p>
                                                <p class="my-2">
                                                    This field should describe how end users opt-in to the campaign, therefore giving consent to the sender to receive their messages. If multiple opt-in methods can be used for the same campaign, they must all be listed.
                                                </p>
                                            </div>
                                            <p>&nbsp;</p>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="card">
                            <div class="card-header">
                                <h2 class="mb-0">
                                    <p class="text-left">
                                        Opt-in
                                    </p>
                                </h2>
                            </div>
                            <div class="card-body">
                                <div class="opt-in">
                                    <div class="opt-in-keywords">
                                        <label for="" class="mb-3 block">
                                            Opt-in Keywords (max 255 characters)
                                        </label>
                                        <input type="text" name="opt_in_keywords" id="opt_in_message__input" placeholder="Example: Subscribe, Start" maxlength="255" class="" :class="errors.opt_in_keywords ? 'error_border' : '' " v-model="form.opt_in_keywords">
                                        <p class="error-text mt-1" v-if="errors.opt_in_keywords">
                                            {{ errors.opt_in_keywords }}
                                        </p>
                                        <p class="leading-6">
                                            If end users can text in a keyword (for example, "subscribe") to start receiving messages from your campaign, those keywords must be provided. If you do not support opt-in via text, please leave this blank.<!-- <a href="#">Learn more</a> -->
                                        </p>
                                    </div>
                                    <div class="opt-in-message">
                                        <label for="" class="mb-3 block">
                                            Opt-in Message (20-230 characters)
                                        </label>
                                        <textarea name="opt_in_message" id="" cols="30" rows="10" placeholder="Example: Acme Corporation: You are now opted-in. For help, reply HELP. To opt-out, reply STOP" class="" :class="errors.opt_in_message ? 'error_border' : '' " v-model="form.opt_in_message"></textarea>
                                        <p class="error-text mt-1" v-if="errors.opt_in_message">
                                            {{ errors.opt_in_message }}
                                        </p>
                                        <p class="leading-6">
                                            If end users can text in a keyword to start receiving messages for your campaign, the out-reply messages sent to the end users must be provided. The opt-in response should include  the Brand name, confirm of opt-in enrollment to a recurring message campaign, how to get help, and clear description of how opt-in. If you do not support opt-in via text, please leave this blank.
                                        </p>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="card">
                            <div class="card-header">
                                <h2 class="mb-0">
                                    <p class="text-left legal_document_example">
                                        Please provide a Legal IRS Document (<a target="_blank" href="legal_irs_document_example.png">see example</a>)
                                    </p>
                                </h2>
                            </div>
                            <div class="card-body">
                                <div class="upload-selected-files">
                                    <div class="file-box first-file">
                                        <p>
                                            Legal File: (required)
                                        </p>
                                        <input type="file" name="file_upload_1" @input="form.file_upload_1 = $event.target.files[0]">
                                        <p class="error-text mt-1" v-if="errors.file_upload_1">
                                            {{ errors.file_upload_1 }}
                                        </p>
                                    </div>
                                    <div class="file-box second-file">
                                        <p>
                                            Add a second file if available (optional)
                                        </p>
                                        <input type="file" @input="form.file_upload_2 = $event.target.files[0]">
                                        <p class="error-text mt-1" v-if="errors.file_upload_2">
                                            {{ errors.file_upload_2 }}
                                        </p>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="card">
                            <div class="card-header">
                                <h2 class="mb-0">
                                    <p class="text-left">
                                        Terms of Services and Privacy Policy
                                    </p>
                                </h2>
                            </div>
                            <div class="card-body">
                                <div class="privacity-policy">
                                    <label for="privacity__policy">
                                        <input name="privacity__policy" id="privacity__policy" type="checkbox" v-model="form.privacity__policy">
                                        I Declare that the information provided is accurate. I acknowledge that Livecomm will be processing the information provided for the purposes of identity verification, and that Livecomm reserves the right to retain  the Business Profile information after account closure in the case of a traceback a regulatory authority or equivalent.
                                    </label>
                                    <br>
                                    <p class="text">
                                        Livecomm will process your personal data according to the <a href="https://www.livecomm.com/terms-of-service/" target="_blank">Livecomm Privacy Statement</a>
                                    </p>
                                </div>
                            </div>
                        </div>

                        <div class="form-buttons text-center" id="submit-buttons__section">
                            <button id="a2p-submit__button" class="submit btn-submit py-3 mb-5" name="accordion-submit" type="submit">
                                Submit for review
                            </button>
                        </div>

                    </div>
                
                    
                </form>

            </div>
        </section>
    </div>

</template>

<script>

import Header from '@/Shared/header'
import { Head, Link,  } from '@inertiajs/inertia-vue3'
import Icon from '@/Shared/Icon'
import Layout from '@/Shared/Layout'
import Accordion from '@/Shared/Accordion'


export default {
    components: {
        Header,
        Head,
        Icon,
        Link,
        Accordion,
    },
    layout: Layout,

    props: {
        errors: Object,
    },

    data: {


    },

    data() {
        return{
            form: this.$inertia.form ({

                uid: 598,
                profile__friendly_name: null,
                business_identity__business_type: null,
                business_registration__number: null,
                business_identity__business_industry: null,
                website__url: null,
                profile__url: null,
                business_information__country: null,
                street__address: null,
                street__address__2: null,
                city: null,
                state: null,
                postal__zip_code: null,
                phone_number: null,
                authorized__last__name: null,
                authorized__first__name: null,
                country__name__select: null,
                authorized__email: null,
                authorized__business_title: null,
                job_position__select: null,
                authorized__phone_number: null,
                confirm_representative: null,
                type_brand_input: null,
                register__campaign_select: null,
                campaign__description: null,
                simple__message_1: null,
                simple__message_2: null,
                how_do_optin: null,
                opt_in_keywords: null,
                opt_in_message: null,
                file_upload_1: null,
                file_upload_2: null,
                privacity__policy: false,

            }),            
        }
    },

    methods: {

        a2p_validate() {
            
            const privacyPolicy = document.querySelector('#privacity__policy');

            if ( privacyPolicy.checked == false ){

                const submitSecion = document.querySelector('#submit-buttons__section');
                const notCheckedPrivacity = document.createElement('p');
                
                notCheckedPrivacity.innerText = "You must agree to the privacy policy by checking the checkbox at the end of the form.";

                submitSecion.appendChild(notCheckedPrivacity);

                notCheckedPrivacity.classList.add('required-privacy__policy')

                setTimeout( () => {
                    notCheckedPrivacity.remove();
                }, 3000);

                return

            }
            
            this.form.post('/a2p',{

                forceFormData: true,

            })

            window.scrollTo(0,0);
            
        },

        NumbersOnly(evt) {
            evt = (evt) ? evt : window.evt;
            var charCode = (evt.which) ? evt.which : evt.keyCode;
            if ((charCode > 31 && (charCode < 48 || charCode > 57)) && charCode !== 46) {
                evt.preventDefault();;
            } else {
                return true;
            }
        }

    }

}

</script>