<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="home_page.aspx.cs" Inherits="final_project.home_page" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

  

    <%-- **************************--%>
   <!-- Hero Section -->
<section class="hero text-center text-white d-flex flex-column justify-content-center align-items-center" 
         style="background: url('images/banner-bg.png') no-repeat center center/cover; height: 800px; padding: 60px 0;">
    <div class="container" style="color: white; text-align: center; max-width: 900px;">
        <!-- Hero Content -->
        <h1 class="display-4" style="font-size: 3rem; font-weight: bold; margin-bottom: 20px;">
            Make the World a Better Place
        </h1>
        <p class="lead" style="font-size: 1.4rem; margin-bottom: 40px;">
            Join us in our mission to help those in need
        </p>
        <a href="user_sign_up.aspx" class="btn btn-lg btn-light" 
           style="padding: 12px 30px; font-size: 1.2rem; margin-right: 20px; border-radius: 30px; transition: all 0.3s;">
            Get Involved
        </a>
        <a href="donate.aspx" class="btn btn-lg btn-primary" 
           style="padding: 12px 30px; font-size: 1.2rem; border-radius: 30px; transition: all 0.3s;">
            Donate Now
        </a>

        <!-- "Who We Are" Section -->
        <div class="about-us mt-5" style="background-color: rgba(255, 255, 255, 0.8); padding: 40px; border-radius: 10px; color: #333;">
            <h2 class="mb-4" style="font-size: 2.5rem; font-weight: bold; color: #333;">Who We Are</h2>
            <p class="lead" style="font-size: 1.2rem; color: #555; margin-bottom: 30px;">
                We are a non-profit organization committed to making a positive impact in the lives of those less fortunate. 
                Our dedicated team works tirelessly to provide essential services and support.
            </p>
            <a href="#" class="btn btn-outline-primary" 
               style="padding: 12px 25px; font-size: 1.1rem; color: #007bff; border: 2px solid #007bff; border-radius: 30px; transition: all 0.3s;">
                Learn More
            </a>
        </div>
    </div>
</section>

<!-- Our Impact Section -->
<section>
    <div class="container">
        <div class="row">
            <div class="col-12 text-center">
                <h2>Our Impact</h2>
                <p>Discover our 3 special features that contribute to the cause.</p>
            </div>
        </div>

        <div class="row">
            <div class="col-md-4 text-center">
                <img src="images/baby-feeding%20(1).png" width="150" class="feature-icon" alt="Feature 1 Icon" />
                <h4>Feeding the Hungry</h4>
                <p class="text-justify">We believe in giving back. Join us in supporting various charitable organizations.</p>
            </div>

            <div class="col-md-4 text-center">
                <img src="images/home.png" width="150" class="feature-icon" alt="Feature 2 Icon" />
                <h4>Shelter and Care</h4>
                <p class="text-justify">Engage with our community through regular events and volunteering opportunities.</p>
            </div>

            <div class="col-md-4 text-center">
                <img src="images/heart-rate-monitor.png" width="150" class="feature-icon" alt="Feature 3 Icon"/>
                <h4>Wellness and Healing</h4>
                <p class="text-justify">We focus on spreading knowledge about wildlife conservation and sustainable living.</p>
            </div>
        </div>
        <div class="text-center">
            <a href="house_log.aspx" class="btn btn-learn-more" 
               style="padding: 12px 30px; font-size: 1.1rem; color: white; background-color: #007bff; border-radius: 30px; text-decoration: none;">
                Get in your company
            </a>
        </div>
    </div>
</section>

<!-- Banner Section with GridView -->
    <section>
    <div class="banner banner-2" style="position: relative; text-align: center; padding: 20px;">
        <img src="images/banner-bg.png" class="img-fluid" alt="Banner 3" style="width: 100%; height: 500px; object-fit: cover;" />
        <div class="banner-content" style="position: absolute; top: 50%; left: 50%; transform: translate(-50%, -50%); background-color: rgba(255, 255, 255, 0.9); padding: 20px; border-radius: 10px; height: 500px; width: 800px;">
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [name], [DoB], [contact], [email], [address] FROM [bbh]"></asp:SqlDataSource>
             <asp:GridView class="table table-striped table-bordered" ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource1">
                 <Columns>
                     <asp:BoundField DataField="name" HeaderText="name" SortExpression="name" />
                     <asp:BoundField DataField="DoB" HeaderText="DoB" SortExpression="DoB" />
                     <asp:BoundField DataField="contact" HeaderText="contact" SortExpression="contact" />
                     <asp:BoundField DataField="email" HeaderText="email" SortExpression="email" />
                     <asp:BoundField DataField="address" HeaderText="address" SortExpression="address" />
                 </Columns>

            </asp:GridView>
           
        </div>
    </div>
</section>

<!-- Icon Section -->



</asp:Content>
