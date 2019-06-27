import { NgModule } from '@angular/core';
import { CommonModule } from '@angular/common';
import { PublicComponent } from './public.component';
import { HomeComponent } from './home/home.component';
import { LoginComponent } from './login/login.component';
import { AppRoutingModule } from '../app-routing.module';
import { FormsModule,ReactiveFormsModule } from '@angular/forms';
import { HttpClientModule} from '@angular/common/http';
import { RegisterComponent } from './register/register.component';




@NgModule({
  declarations: [

  HomeComponent,
  PublicComponent,
  LoginComponent,
  RegisterComponent],
  imports: [
    CommonModule,
     AppRoutingModule,
     FormsModule,
     ReactiveFormsModule,
     HttpClientModule
  ]
})
export class PublicModule { }
