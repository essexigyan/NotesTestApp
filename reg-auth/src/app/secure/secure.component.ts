import { Component, OnInit } from '@angular/core';
import { HttpClient, HttpHeaders } from '@angular/common/http';
import { Router} from '@angular/router';

@Component({
  selector: 'app-secure',
  templateUrl: './secure.component.html',
  styleUrls: ['./secure.component.css']
})
export class SecureComponent implements OnInit {

  user;

  constructor(private http:HttpClient, private router:Router) { }

  ngOnInit() {

 	const headers = new HttpHeaders({
 		'Authorization' : `Bearer ${localStorage.getItem('token')}`
 	})


  	this.http.get('http://localhost:8000/user', {headers:headers}).subscribe(
  		(res)=>{this.user = res},
  		(err)=>{
  			localStorage.removeItem('token');
  			this.router.navigate(['/login']);
  		}
  		)
  }

}
