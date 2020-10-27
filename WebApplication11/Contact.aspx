<%@ Page Title="Contact" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Contact.aspx.cs" Inherits="WebApplication11.Contact" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
   <script type = "text/javascript">
        function validate() {
      
          
    var re = /^[A-Za-z]+$/;
    if((re.test(document.getElementById("validationTooltip01").value)==false)||(re.test(document.getElementById("validationTooltip02").value)==false))
       {
        alert('Invalid Name.');
        return false;
        }      
         if( document.myForm.ZipCode.value == "" || isNaN( document.myForm.ZipCode.value ) ||
            document.myForm.ZipCode.value.length != 6 ) {
            
            alert( "Please provide a zip in the format ######." );
            return false;
         }
         
         return( true );
      }
   </script>  
<!-- FormControl -->
<form class="form needs-validation" onsubmit = "return(validate());" action="mailto:khare.ojesh2k17@gmail.com" name="myForm" method="post" enctype="text/plain"  >
  <div class="form-row">
    <div class="col-md-6 mb-3">
      <label for="validationTooltip01">Your First name</label>
      <input type="text" class="form-control" id="validationTooltip01" name="FirstName" value="" required>
      <div class="valid-tooltip">
        Looks good!
      </div>
    </div>
    <div class="col-md-6 mb-3">
      <label for="validationTooltip02">Your Last name</label>
      <input type="text" class="form-control" id="validationTooltip02" name="LastName" value="" required>
      <div class="valid-tooltip">
        Looks good!
      </div>
    </div>
  </div>
  <div class="form-row">
    <div class="col-md-6 mb-3">
      <label for="validationTooltip03">City</label>
      <input type="text" class="form-control" id="validationTooltip03" name="City" required>
      <div class="invalid-tooltip">
        Please provide a valid city.
      </div>
    </div>
    <div class="col-md-3 mb-3">
      <label for="validationTooltip04">State</label>
      <select class="custom-select" id="validationTooltip04" name="State" required>
        <option selected disabled value="">Choose...</option>
        <option value="Andhra Pradesh">Andhra Pradesh</option>
<option value="Andaman and Nicobar Islands">Andaman and Nicobar Islands</option>
<option value="Arunachal Pradesh">Arunachal Pradesh</option>
<option value="Assam">Assam</option>
<option value="Bihar">Bihar</option>
<option value="Chandigarh">Chandigarh</option>
<option value="Chhattisgarh">Chhattisgarh</option>
<option value="Dadar and Nagar Haveli">Dadar and Nagar Haveli</option>
<option value="Daman and Diu">Daman and Diu</option>
<option value="Delhi">Delhi</option>
<option value="Lakshadweep">Lakshadweep</option>
<option value="Puducherry">Puducherry</option>
<option value="Goa">Goa</option>
<option value="Gujarat">Gujarat</option>
<option value="Haryana">Haryana</option>
<option value="Himachal Pradesh">Himachal Pradesh</option>
<option value="Jammu and Kashmir">Jammu and Kashmir</option>
<option value="Jharkhand">Jharkhand</option>
<option value="Karnataka">Karnataka</option>
<option value="Kerala">Kerala</option>
<option value="Madhya Pradesh">Madhya Pradesh</option>
<option value="Maharashtra">Maharashtra</option>
<option value="Manipur">Manipur</option>
<option value="Meghalaya">Meghalaya</option>
<option value="Mizoram">Mizoram</option>
<option value="Nagaland">Nagaland</option>
<option value="Odisha">Odisha</option>
<option value="Punjab">Punjab</option>
<option value="Rajasthan">Rajasthan</option>
<option value="Sikkim">Sikkim</option>
<option value="Tamil Nadu">Tamil Nadu</option>
<option value="Telangana">Telangana</option>
<option value="Tripura">Tripura</option>
<option value="Uttar Pradesh">Uttar Pradesh</option>
<option value="Uttarakhand">Uttarakhand</option>
<option value="West Bengal">West Bengal</option>
      </select>
      <div class="invalid-tooltip">
        Please select a valid state.
      </div>
    </div>
    <div class="col-md-3 mb-3">
      <label for="validationTooltip05">Zip</label>
      <input type="text" class="form-control" id="validationTooltip05" name="ZipCode" value="" required>
      <div class="invalid-tooltip">
        Please provide a valid zip.
      </div>
    </div>
    <p class="p-contact">Your Query</p>
    <textarea class="form-control" id="exampleFormControlTextarea1" name="MESSAGE" rows="8" cols="150"></textarea>
  </div>
  <br>
  <button class="form-bt botton btn btn-primary" type="submit">Submit form</button>
</form>





<!-- Footer -->

<footer id="footer">

  <i class="icon fab fa-twitter fab-last"></i
  <i class="icon fab fa-facebook-f fab-last"></i>
  <i class="icon fab fa-instagram fab-last"></i>
  <i class="icon fas fa-envelope fab-last"></i>

  <p>© Copyright HMS Hopital</p>

</footer>

</asp:Content>
