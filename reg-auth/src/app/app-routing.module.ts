import { NgModule } from '@angular/core';
import { Routes, RouterModule } from '@angular/router';
import {PublicComponent} from './public/public.component';
import {HomeComponent} from './public/home/home.component';
import {LoginComponent} from './public/login/login.component';
import {RegisterComponent} from './public/register/register.component';
import {SecureComponent} from './secure/secure.component';
import {TodosComponent} from './secure/todos/todos.component';

const routes: Routes = [

	{

		path: '', 

		component:PublicComponent,

		children:[

		{path:'', component: HomeComponent},

		{path:'login', component: LoginComponent},
	    {path:'register', component: RegisterComponent}

		]

    },{

		path: 'secure', 

		component:SecureComponent,

		children:[

		{path:'todos', component: TodosComponent},

		]

    }



];

@NgModule({
  imports: [RouterModule.forRoot(routes)],
  exports: [RouterModule]
})
export class AppRoutingModule { }
