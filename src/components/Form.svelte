<script>
 export let activity;
</script>

<div class="form-div">
    <form>
        <input type="email" placeholder="Email"><br>
        <input type="password" placeholder="Password"><br>
        <button type="submit">{activity.toUpperCase()}</button>
    </form>        
</div>

<style> 

    .form-div form{
        background-color: rgba(36, 36, 36, 0.575);
        padding: 125px 35px 125px 15px;
        position: absolute;
        top: 50%;
        border-radius: 15px;
        left: 50%;
        transform: translate(-50%, -50%);  
    }

    .form-div form input,button{
        outline: none;
        cursor: pointer;
        width: 75%;
        padding: 20px 50px 20px 50px;
        border-radius: 10px;
        margin-bottom: 25px;
        border: none;
        background-color: rgba(20, 20, 20, 0.548);
    }


    .form-div form input,button::placeholder{
        font-size: large;
        text-align: center;
        color: white;
    }

    .form-div form button{
        color: rgba(20, 20, 20, 0.548);
        font-weight: bold;
        background-color: rgb(56, 187, 56);
    }
</style>