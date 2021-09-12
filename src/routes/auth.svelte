<script>
   import Form from '../components/Form.svelte'
   let userActivity = "signin";

</script>


<div class="auth">
   <div>
   </div>
   {#if userActivity == "login"}   
    <Form activity={userActivity}/>
   {/if}
   {#if userActivity == "signin"}
   <Form activity={userActivity}/>      
   {/if}
</div>