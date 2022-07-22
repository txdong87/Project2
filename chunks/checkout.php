<div class="section">
    <div class="container">
        <div class="row">
            <?php if(isset($_POST["addNew"])){
                $data=$_POST;
                $timestamp=date("Y-m-d H:i:s");
                $data["user_id"]=isset($_SESSION["user_id"])?$_SESSION["user_id"]:0;
                $data["timestamp"]=$timestamp;
                
                echo "<pre>";
                print_r($data);
            }
            ?>
        <div class="section white center">
			<h3 class="header">Check out!</h3>
		</div>
            <div class="col s12">
                <form id="checkout-form" class="clear" method="post">
                    <div class="input-field col s12">
                        <input class="input" type="text" name="name" id="name" placeholder="Full Name">
                    </div>
                    <div class="input-field col s12">
                        <input class="input" type="email" name="email" id="email" placeholder="Email">
                    </div>
                    <div class="input-field col s12">
                        <input class="input" type="text" name="address" id="adress" placeholder="Address">
                    </div>
                    <div class="input-field col s12">
                        <input class="input" type="tel" name="phone" id="phone" placeholder="Phone">
                    </div>
                    <button name="addNew" type="submit" class="btn waves-effect waves-block waves-light">Check out</button>
                </form>
            </div>
        </div>
    </div>
</div>
