<%@ Page Title="" Language="C#" MasterPageFile="~/HomeWebPanel.Master" AutoEventWireup="true" CodeBehind="HomePage.aspx.cs" Inherits="ClassManageApp.WebForm3" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
<style>
    .slideViewer img{    
       height:60vh;
       opacity:0.7; 
       background-size:cover;
       }
    .Card_alignment img {
        width:150px;
        height:auto;
        margin:auto;
        
        
     /*   background:rgba(0,50,100,.8);
        border-radius:50%;
        margin-top:10px; */       
    }
  
    .Card_alignment a {
        background-color:rgba(0,50,100,.8);
        color:white;
    }
   .Card_alignment a:hover {
       color:white;
    }
</style>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="">
        <div id="carouselExampleIndicators" class="carousel slide" data-ride="carousel">
            <ol class="carousel-indicators">
                <li data-target="#carouselExampleIndicators" data-slide-to="0" class="active"></li>
                <li data-target="#carouselExampleIndicators" data-slide-to="1"></li>
                <li data-target="#carouselExampleIndicators" data-slide-to="2"></li>
            </ol>
            <div class="carousel-inner slideViewer">
                <div class="carousel-inner">
                    <div class="carousel-item active" >
                        <img class="d-block w-100" src="IMG/slide1.jpg" alt="First slide">
                        <div class="carousel-caption d-none d-md-block">
                            <h5 class="text-dark text-capitalize">Lorem Ipsum is simply dummy text</h5>
                            <p class="text-dark">Is dummy text used in laying out print</p>
                        </div>
                    </div>
                    <div class="carousel-item">
                        <img class="d-block w-100" src="IMG/slide2.jpg" alt="Second slide">
                        <div class="carousel-caption d-none d-md-block">
                            <h5 class="text-light text-capitalize">Lorem Ipsum is simply dummy text</h5>
                            <p class="text-light">Is dummy text used in laying out print</p>
                        </div>
                    </div>
                    <div class="carousel-item">
                        <img class="d-block w-100" src="IMG/slide3.jpg" alt="Third slide">
                        <div class="carousel-caption d-none d-md-block">
                            <h5 class="text-dark text-capitalize">Lorem Ipsum is simply dummy text</h5>
                            <p class="text-dark">Is dummy text used in laying out print</p>
                        </div>
                    </div>
                </div>
            </div>
            <a class="carousel-control-prev" href="#carouselExampleIndicators" role="button" data-slide="prev">
                <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                <span class="sr-only">Previous</span>
            </a>
            <a class="carousel-control-next" href="#carouselExampleIndicators" role="button" data-slide="next">
                <span class="carousel-control-next-icon" aria-hidden="true"></span>
                <span class="sr-only">Next</span>
            </a>
        </div>

       <div class="container bg-light">
            <div class="row Card_alignment p-3">
                <div class=" card col-md " style="border:2px solid rgba(0,50,100,.8);">
                    <img class="card-img-top" src="IMG/cardpng.png" alt="Card image cap">
                    <div class="card-body">
                        <h5 class="card-title">Card Title</h5>
                        <p class="card-text">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Quisque feugiat vulputate nunc non pellentesque.</p>
                        <a href="#" class="btn btn-sm">Go somewhere</a>
                    </div>
                </div>
                <div class="card col-md mx-2 " style="border:2px solid rgba(0,50,100,.8);" >
                    <img class="card-img-top" src="IMG/cardpng.png" alt="Card image cap">
                    <div class="card-body">
                        <h5 class="card-title">Card Title</h5>
                        <p class="card-text">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Quisque feugiat vulputate nunc non pellentesque.</p>
                        <a href="#" class="btn btn-sm">Go somewhere</a>
                    </div>
                </div>
                <div class="card col-md" style="border:2px solid rgba(0,50,100,.8);">
                    <img class="card-img-top" src="IMG/cardpng.png" alt="Card image cap">
                    <div class="card-body">
                        <h5 class="card-title">Card Title</h5>
                        <p class="card-text">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Quisque feugiat vulputate nunc non pellentesque.</p>
                        <a href="#" class="btn btn-sm">Go somewhere</a>
                    </div>
                </div>
            </div>
        </div>
       
        <div class="container-fluid" style="background:rgba(0,50,100,.8); color:white;">
            <div class="row py-5">
                <div class="col-md-3 d-flex justify-content-center py-2">
                    <div class="mr-2">
                        <img src="IMG/stud.png" />
                    </div>
                    <div class="m-auto">
                        <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit.</p>
                    </div>
                </div>
                
                <div class="col-md-3 d-flex justify-content-center align-content-center py-2">
                    <div class="mr-2">
                        <img src="IMG/stud.png" />
                    </div>
                    <div>
                        <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit.</p>
                    </div>
                </div>
                
                <div class="col-md-3 d-flex  py-2">
                    <div class="mr-2">
                        <img src="IMG/stud.png" />
                    </div>
                    <div>
                        <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit.</p>
                    </div>
                </div>
                
                <div class="col-md-3 d-flex  py-2"  >
                    <div class="mr-2">
                        <img src="IMG/stud.png" />
                    </div>
                    <div>
                        <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit.</p>
                    </div>
                </div>
            </div>

        </div>
         
        <div class="container my-3">
            <div class="card text-center">
                <div class="card-header">
                    Featured
                </div>
                <div class="card-body">
                    <h5 class="card-title">Special Title</h5>
                    <p class="card-text">Lorem ipsum dolor sit amet, consectetur adipiscing elit.</p>
                    <a href="#" class="btn" style="background:rgba(0,50,100,.8); color:white;">Go somewhere</a>
                </div>
                <div class="card-footer text-muted">
                    2 days ago
                </div>
            </div>
        </div>

       
    </div>
</asp:Content>
