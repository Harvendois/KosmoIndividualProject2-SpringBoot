<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<jsp:include page="/template/Top.jsp"/>
<section id="hero">
            <!--<a href="https://kr.freepik.com/free-vector/hand-drawn-flat-design-api-illustration_25860683.htm#query=%ED%94%8C%EB%9E%AB%ED%8F%BC&position=1&from_view=keyword&track=sph">작가 pikisuperstar</a> 출처 Freepik-->
           <div id="iam"><p>I am an:</p></div>
           <p id="message" style="color:black"></p>
           <div id="img_wrapper">
               <img src="/static/Images/hero.png">
           </div>
       </section>
       <section id="about">
           <!--<h3>About</h3>-->
           <div class="container row" id="about_wrapper">
               <div class="col-md-12" id="profile_wrapper">
                   <div class="mt-5 profile_photo" style="background: url('/static/Images/openai.jpg') 50% 50% /100% 100% no-repeat;  "></div>
               </div>
               
               <div id="text_wrapper">

                   <div class="self_description col-md-12 col-lg-6" id="basic_description">
                       <div class="row mt-3 about_text"><p>
                           
                           Hello there!  I am Jungha Cho,<br />
                           a mechanical engineer with developer knowledge.<br>
                           <br>
                           &#128204; Languages: Korean, English, Indonesian <br>
                           &#127891; Education: Stony Brook University, B.E. 
                       </p>
                       </div>
                   </div>

               </div> 
           </div>
       </section>
       <section id="skills">
           <div id="skills_wrapper">
               <div class="skill_wrapper" id="eng_skills">
                 <div class="text_wrapper">
                   <p class="skill_emoji">&#128261;</p>
                   <p class="skill_title">Engineering Skills</p>
                   <p class="skill_desc">I am currently learning and researching about ML</p>
                   <p class="skill_title">Engineering Tools I Use</p>
                   <ul class="skill_list">
                       <li>NX10</li>
                       <li>MATLAB</li>
                       <li>R (Big Data Management)</li>
                   </ul>
                 </div>
               </div>
               <div class="skill_wrapper" id="dev_skills">
                 <div class="text_wrapper">
                   <p class="skill_emoji">&#128187;</p>
                   <p class="skill_title">Developer Skills</p>
                   <p class="skill_desc">I am delving into Machine Learning and Neural Networks.</p>
                   <p class="skill_title">Languages I Use</p>
                   <ul class="skill_list">
                       <li>Java & Spring</li>
                       <li>JavaScript (ES6, React JS)</li>
                       <li>Python (Pytorch)</li>
                       <li>OracleSQL XE</li>
                       <li>PL/SQL</li>
                       <li>HTML5&CSS3</li>
                   </ul>
               </div>
               </div>
               <div class="skill_wrapper" id="gen_skills">
                 <div class="text_wrapper">
                   <p class="skill_emoji">&#128204;</p>
                   <p class="skill_title">General Skills</p>
                   <p class="skill_desc">Past Experiences become Current Life Skills</p>
                   <p class="skill_title">Experience I Have</p>
                   <ul class="skill_list">
                       <li>Academic Writing</li>
                       <li>ChatGPT Prompt Engineering</li>
                       <li>Event Management</li>
                       <li>Interpreting/Translating</li>
                       <li>Leadership/Teamwork</li>
                       <li>Public Speaking</li>
                       <li>Teaching/Tutoring/Mentoring</li>
                   </ul>
                 </div>
               </div>
           </div>
       </section>
       <section id="projects">
           <h3 style="margin-top: 5%;">My Recent Projects</h3>

           <div id="projects_wrapper">
               <div class="project_wrapper">
                   <div class="projects" id="project1">
                   </div>
                   <div class="project_hover" id="project1_hover">
                       <span class="project_text">The Process of creating my personal portfolio website</span> 
                       <button type="button" class="btn btn-outline-info" id="project1_button" onclick="window.location.href='https:\/www.notion.so/Jungha-s-Portfolio-Website-Development-0-100-3d8dbff5c6484d3a8083245701285bd1'">Visit Website</button>
                   </div>
               </div>

               <div class="project_wrapper">
                   <div class="projects" id="project2">
                   </div>
                   <div class="project_hover" id="project2_hover">
                       <span class="project_text">Group Project done with KOSMO teammates</span> 
                       <button type="button" class="btn btn-outline-info" id="project2_button" href="#">Visit Website</button>
                   </div>
               </div>

               <div class="project_wrapper">
                   <div class="projects" id="project3">
                   </div>
                   <div class="project_hover" id="project3_hover">
                       <span class="project_text">My Individual Neural Network Project: Jarvis</span> 
                       <button type="button" class="btn btn-outline-info" id="project3_button" href="#">Visit Website</button>
                   </div>
               </div>
           </div>
           <div id="projects_button_wrapper">
               <button type="button" class="btn btn-outline-info" id="more_projects_button" href="#">More Projects</button>
           </div>
       </section>

       <section id="experience">
           <h3 class="row" style="margin-top: 5%;">Work Experience</h3>
           <div id="experience_wrapper">

               <div id="exp_history_left">
                   <div class="year">
                       <p class="year_number">2023.02 2023.03</p>
                   </div>
                   <div class="year">
                       <p class="year_number">2021.08 2023.02</p>
                   </div>
                   <div class="year">
                       <p class="year_number">2021.01 2021.06</p>
                   </div>
                   <div class="year">
                       <p class="year_number">2019.12 2020.01</p>
                   </div>
                   <div class="year">
                       <p class="year_number">2019.08 2021.06</p>
                   </div>
               </div>

               <div id="exp_history_right">
                   <div class="bullet_and_content">
                       <div class="bullets"></div>
                       <div class="content">
                           <p class="position">&#128188; Education Initiatives Intern</p>
                           <ul class="info">
                               <li class="company"><br> &#128205;&nbsp; Gen.G Esports</li>
                               <li class="desc" ></li>
                           </ul>
                       </div>
                   </div>
                   <div class="bullet_and_content">
                       <div class="bullets"></div>
                       <div class="content">
                           <p class="position">&#128188; Sergeant</p>
                           <ul class="info">
                               <li class="company"><br> &#128205;&nbsp; ROKA 17th Infantry Division</li>
                               <li class="desc"></li>
                           </ul>
                       </div>
                   </div>
                   <div class="bullet_and_content">
                       <div class="bullets"></div>
                       <div class="content">
                           <p class="position">&#128188; English Teacher</p>
                           <ul class="info">
                               <li class="company"><br> &#128205;&nbsp; Solomon Academy</li>
                               <li class="desc"></li>
                           </ul>
                       </div>
                   </div>
                   <div class="bullet_and_content">
                       <div class="bullets"></div>
                       <div class="content">
                           <p class="position">&#128188; Prep Camp Lecturer</p>
                           <ul class="info">
                               <li class="company"><br> &#128205;&nbsp; SUNY Korea Admissions Team</li>
                               <li class="desc"></li>
                           </ul>
                       </div>
                   </div>
                   <div class="bullet_and_content">
                       <div class="bullets"></div>
                       <div class="content">
                           <p class="position">&#128188; Residential Assistant </p>
                           <ul class="info">
                               <li class="company"><br> &#128205;&nbsp; SUNY Korea RHD Team</li>
                               <li class="desc"></li>
                           </ul>
                       </div>
                   </div>
               </div>

           </div>
       </section>

       <section id="contacts">
           <h3 style="margin-top: 5%; color: blueviolet;" >Contact Me!</h3>
           
               <fieldset class="container" id="contact_wrapper">
                   <form action="https://www.naver.com" class="was-validated">
                       <div class="form-group row" id="name_wrapper">
                         <label for="name">Full Name:</label>
                         <input type="text" class="form-control" id="name" placeholder="Enter full name" name="name" required>
                         <div class="valid-feedback">Valid.</div>
                         <div class="invalid-feedback">I need to know how to address you!</div>
                       </div>

                       <div class="form-group row">
                           <label class="row col-md-12" for="email">Your Email:</label>
                           <div class="row col-md-12" id="email_wrapper" style="margin:0; padding:0;">
                               <input type="email" class="form-control col-md-8" id="email" placeholder="Enter Email" name="email" required>
                               <div class="input-group-append col-md-4" style="margin: 0; padding: 0;">
                                   <select name="emailtype" id="selectemail" class="custom-select" required>
                                       <option selected>Select Email</option>
                                       <option value="gmail.com">@gmail.com</option>
                                       <option value="naver.com">@naver.com</option>
                                       <option value="daum.net">@daum.com</option>
                                       <option value="hanmail.net">@hanmail.com</option>
                                   </select>
                               </div>
                           </div>
                         <div class="valid-feedback">Nice to know you!</div>
                         <div class="invalid-feedback">I need your contact so I can reply back.</div>
                       </div>

                       <div class="form-group form-check-inline row" id="radio_wrapper">
                           <label class="form-check-label row col-md-12">
                           <input class="form-check-input" type="radio" name="remember" required> About Website
                           <input class="form-check-input ml-3" type="radio" name="remember" required> Work Inquiry
                           <input class="form-check-input ml-3" type="radio" name="remember" required> Personal Message
                           <div class="valid-feedback">Option chosen!</div>
                           <div class="invalid-feedback">Check one of the options to continue.</div>
                           </label>
                       </div>
                       
                       <div class="form-group row" id="message_wrapper">
                           <label for="contact_message">Message:</label>
                           <textarea class="form-control col-md-12" id="contact_message" style="height: 15vh; width: 100%;" required></textarea>
                       </div>

                       <div class="form-group row" id="button_wrapper">
                           <button type="submit" id="submitbutton" class="btn btn-danger col-md-12">Submit</button>
                       </div>
                   </form>
               </fieldset>
       </section>
<jsp:include page="/template/Footer.jsp"/>