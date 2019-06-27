import { Component, OnInit } from '@angular/core';
import { ReactiveFormsModule } from '@angular/forms';
import { HttpClient } from '@angular/common/http';
import { RouterModule, Router} from '@angular/router';
import { FormsModule, FormBuilder, FormGroup,Validators } from '@angular/forms';


@Component({
  selector: 'app-register',
  templateUrl: './register.component.html',
  styleUrls: ['./register.component.css']
})
export class RegisterComponent implements OnInit {

form:FormGroup;		



  constructor(private fb:FormBuilder, private http:HttpClient, private router:Router) { }

 ngOnInit() {

  	  this.form = this.fb.group({
      		first_name: ['', Validators.required],
            last_name: ['', Validators.required],
            email: ['', [Validators.required, Validators.email]],
            password: ['', [Validators.required, Validators.minLength(6)]],
            confirmPassword: ['', Validators.required]

    });
  }

  register(){
  	
  	 //console.log(this.form.getRawValue());
  	 const SERVER_URL = 'http://localhost:8000/register';

  	 const formData = this.form.getRawValue();

  	 console.log(formData);

      
      this.http.post<any>(SERVER_URL,formData).subscribe(
      (res) => {
     	this.router.navigate(['/user']);
      } ,
      (err) => console.log(err)
   
  )
}

}
