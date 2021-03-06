import { Component, OnInit } from '@angular/core';
import { FormsModule, FormBuilder, FormGroup } from '@angular/forms';
import { ReactiveFormsModule } from '@angular/forms';
import { HttpClient,HttpHeaders } from '@angular/common/http';
import { RouterModule, Router, NavigationExtras} from '@angular/router';
import {UserService} from "../user.service";




@Component({
  selector: 'app-login',
  templateUrl: './login.component.html',
  styleUrls: ['./login.component.css']
})
export class LoginComponent implements OnInit {

form:FormGroup;	

  SERVER_URL = "http://localhost:8000/oauth/token";
  USER_URL   = "http://localhost:8000/user";
  USER;
  message:string;

  constructor(private fb:FormBuilder, private http:HttpClient, private router:Router, private userData:UserService) { }

  ngOnInit() {

  	  this.form = this.fb.group({
      email: [''],
      password: [''],

    });

      
  }



    submit(){

     const formData = this.form.getRawValue();

     const data = {
       username  :   formData.email,
       password  :   formData.password,
       grant_type  :   'password',
       client_id  :     2,
       client_secret:     'SF8ACVdAvCHDCucyfUSmpz4l1TXTj2L54b8eenoG',
       scope:     '*'
     }

      const headers = new HttpHeaders({
     'Authorization' : `Bearer ${localStorage.getItem('token')}`
     })

      this.http.post<any>(this.SERVER_URL,data,{headers:headers}).subscribe(
        (res) => {

          localStorage.setItem('token',res.access_token);
              
          this.USER = this.getUser();

              //this.userData.currentMessage.subscribe(message => this.message = this.USER)
         },
         (err) => {

         })

   }

   //Better way to handle get and setting user uid.

   getUser(){
     const headers = new HttpHeaders({'Authorization' : `Bearer ${localStorage.getItem('token')}`})

     this.http.get(this.USER_URL,{headers:headers}).subscribe(
        (user) => {

       this.USER = user;
       //console.log('FOOOOO--BEFORE',this.USER.id);

       if(localStorage.getItem('uid')!==null){
         localStorage.setItem('uid',this.USER.id);
       }
       
       //console.log('FOOOOO--AFTER',this.USER.id);
   
       localStorage.setItem('uid',this.USER.id);
       this.router.navigate(['/secure/todos']);
     
      }),(err)=>{

       }
   }




}
