import { Component, OnInit } from '@angular/core';
import { HttpClient, HttpHeaders } from '@angular/common/http';
import { RouterModule, Router} from '@angular/router';
import { FormsModule, FormBuilder, FormGroup } from '@angular/forms';
import { ReactiveFormsModule } from '@angular/forms';

@Component({
  selector: 'app-todos',
  templateUrl: './todos.component.html',
  styleUrls: ['./todos.component.css']
})
export class TodosComponent implements OnInit {

todos;
form:FormGroup;
USER_URL   = "http://localhost:8000/todos/create";

  constructor(private http:HttpClient, private router:Router, private fb:FormBuilder) { }

  ngOnInit() {

 	const headers = new HttpHeaders({
 		'Authorization' : `Bearer ${localStorage.getItem('token')}`
 	})


    this.form = this.fb.group({
      title: [''],
      todo: [''],
      uid: [''],

    });

  	this.http.get(`http://localhost:8000/todos/${localStorage.getItem('uid')}`, {headers:headers}).subscribe(
  		(res)=>{
  			this.todos = res},
  		(err)=>{

  			console.log(err);
  		}
  		)
  }

  submit(){
  	 const formData = this.form.getRawValue();

  	 const data = {
  	 	title	: 	formData.title,
  	 	todo	: 	formData.todo,
  	 	user_id		: 	localStorage.getItem('uid'),
  	 	created_at	: new Date(Date.now()).toLocaleString(),
  	 	client_id	: 		2,
  	 	client_secret: 		'SF8ACVdAvCHDCucyfUSmpz4l1TXTj2L54b8eenoG',
  	 	scope: 		'*'
  	 }

 

        const headers = new HttpHeaders({
     'Authorization' : `Bearer ${localStorage.getItem('token')}`
   })

    this.http.post<any>('http://localhost:8000/todos/create',data,{headers:headers}).subscribe(
        (res) => {
         //localStorage.setItem('uid',res.id);
        // this.router.navigate(['/secure/todos'])
         this.ngOnInit();
        console.log(res);
        },
        (err) => {
          console.log(err);
        } 
        )  

  }

}


