<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <title>Covid 19 Risk Tool</title>
    <!-- CSS -->
    <link href="css/bootstrap/bootstrap.css" rel="stylesheet">
    <link href="css/owl.carousel.css" rel="stylesheet">
    <link href="css/aos.css" rel="stylesheet">
    <link href="css/font-awesome.min.css" rel="stylesheet">
    <link href="css/style.css" rel="stylesheet">

<body id="mainbody">
    <!-- Header Starts Here  -->
    <header class="default-header ">
        <div class="container">
            <div class="row">
                <div class="col-12">
                    <nav class="navbar navbar-expand-md navbar-light">
                        <a class="navbar-brand" href="#" target="_blank"><img src="images/logo.png" alt=""></a>
                        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#main-navbar" aria-controls="main-navbar" aria-expanded="false" aria-label="Toggle navigation">
                            <span class="navbar-toggler-icon"></span>
                        </button>
                        <div class="collapse navbar-collapse" id="main-navbar">
                            <ul class="navbar-nav ml-auto py-4 py-md-0">
                                <li class="nav-item active">
                                    <a class="nav-link" href="#mainbody">Covid-19 Risk</a>
                                </li>
                                <li class="nav-item ">
                                    <a class="nav-link" href="#mainbody">Method</a>
                                </li>
                                <li class="nav-item">
                                    <a class="nav-link" href="#about_us">About Us</a>
                                </li>
                                <li class="nav-item">
                                    <a class="nav-link" href="#faqs">FAQs</a>
                                </li>
                                <li class="nav-item">
                                    <a class="nav-link" href="#contactus">Contact Us</a>
                                </li>
                            </ul>
                        </div>
                    </nav>
                </div>
            </div>
        </div>
    </header>
    <!-- Footer Starts Here  -->
    <main>
        <section class="main-banner" id="">
            <div class="main-form-wrapper">
                <div class="left-form">
                    <div class="stepwizard-wrapper" data-aos="fade-down" data-aos-duration="1000" data-aos-easing="linear">
                        <div class="wizard">
                            <div class="wizard-inner">
                                <div class="connecting-line"></div>
                                <ul class="nav nav-tabs" role="tablist">
                                    <li role="presentation" class="active">
                                        <a href="#step1" data-toggle="tab" aria-controls="step1" role="tab" aria-expanded="true">
                                            <img src="images/intro-icon.png" class="img-fluid">
                                            Introduction
                                        </a>
                                    </li>
                                    <li role="presentation" class="disabled">
                                        <a href="#step2" data-toggle="tab" aria-controls="step2" role="tab" aria-expanded="false">
                                            <img src="images/about-u.png" class="img-fluid">
                                            About You
                                        </a>
                                    </li>
                                    <li role="presentation" class="disabled">
                                        <a href="#step3" data-toggle="tab" aria-controls="step3" role="tab">
                                            <img src="images/behavior-icon.png" class="img-fluid">
                                            Your Behavior
                                        </a>
                                    </li>
                                    <li role="presentation" class="disabled">
                                        <a href="#step4" data-toggle="tab" aria-controls="step4" role="tab">
                                            <img src="images/pre-existing.png" class="img-fluid">
                                            Pre-Existing
                                        </a>
                                    </li>
                                </ul>
                            </div>
                           
                            <form:form role="form" class="comment-form login-box" action="" modelAttribute="employee">
                            
                                <div class="tab-content" id="">
                                    <div class="tab-pane active" role="tabpanel" id="step1">
                                        <h2 class="step-title">Introduction</h2>
                                        <div class="steps-data">
                                            <p>The tool provides an assessment of individualized risks for mortality from COVID-19 using best publicly available information on risks associated with various predisposing factors. It does not account for all risk-factors that might increase individual’s chance of infection or/and health complications after infection. We will continue to update the tool as new information on additional risk-factors become available. An individual’s risk will also depend heavily on personal behavior such as social distancing, hand washing and wearing of masks. It is also important to remember that individuals who have low risk of COVID-19 serious illness themselves, they can spread infection to others who are at high-risk. The tools is not intended to be used for any medical or treatment decisions</p>
                                        </div>
                                        <ul class="list-inline pull-right">
                                            <li>
                                                <button type="button" class="white-btn next-step">Next</button>
                                            </li>
                                        </ul>
                                    </div>
                                    <div class="tab-pane " role="tabpanel" id="step2">
                                        <h2 class="step-title">About You</h2>
                                        <div class="steps-data">
                                            <div class="details-wrapper">
                                                <div class="common-field">
                                                    <form:input type="text" path="age" class="form-control" placeholder="What is your age?"/>
                                                </div>
                                                <div class="common-field">
                                                    <form:input type="text" path="zipcode" class="form-control" placeholder="What is your zipcode?"/>
                                                </div>
                                                <div class="common-field">
                                                    <div class="commonselect">
                                                        <form:select path="race" class="form-control">
                                                            <form:option value="0">American Indian or Alaska Native</form:option>
                                                            <form:option value="0">Asian</form:option>
                                                            <form:option value="0.536">Black or African American</form:option>
                                                            <form:option value="0">Native Hawaiian or Other Pacific Islander</form:option>
                                                            <form:option value="0">White</form:option>
                                                        </form:select>
                                                    </div>
                                                </div>
                                                <div class="common-field">
                                                    <label>What is your ethnicity?</label>
                                                    <div class="radiocheckbox-wrapper">
                                                        <div class="checkbox-wrap d-inline-block mr-5">
                                                            <form:checkbox path="hispanic" value="0.497"/>
                                                            <label class="checkbox_checkmark"></label>
                                                            <span class="checboxradiobutton-label">Hispanic or Latino</span>
                                                        </div>
                                                        <div class="checkbox-wrap d-inline-block">
                                                            <form:checkbox path="hispanic" value="0"/>
                                                            <label class="checkbox_checkmark"></label>
                                                            <span class="checboxradiobutton-label">Not Hispanic or Latino</span>
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="common-field">
                                                    <label>Are you a male or female?</label>
                                                    <div class="radiocheckbox-wrapper">
                                                        <div class="checkbox-wrap radiobutton-wrap d-inline-block mr-5">
                                                            <form:radiobutton path="sex" value="0.658"/>
                                                            <label class="checkbox_checkmark radio_checkmark"></label>
                                                            <span class="checboxradiobutton-label">Male</span>
                                                        </div>
                                                        <div class="checkbox-wrap radiobutton-wrap d-inline-block">
                                                            <form:radiobutton path="sex" value="0"/>
                                                            <label class="checkbox_checkmark radio_checkmark"></label>
                                                            <span class="checboxradiobutton-label">Female</span>
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="common-field">
                                                    <label>What is your height in feet/inches?</label>
                                                    <div class="row">
                                                        <div class="col-md-3">
                                                            <form:input type="text" path="feet" class="form-control" placeholder="Feet"/>
                                                        </div>
                                                        <div class="col-md-3">
                                                            <form:input type="text" path="inches" class="form-control" placeholder="Inches"/>
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="common-field">
                                                    <form:input type="text" path="weight" class="form-control" placeholder="What is your weight in pounds(lbs)?"/>
                                                </div>
                                                
                                                <!-- 
                                                <div class="common-field">
                                                    <label>Do you have Blood Pressure?</label>
                                                    <div class="radiocheckbox-wrapper">
                                                        <div class="checkbox-wrap radiobutton-wrap d-inline-block mr-5">
                                                            <form:radiobutton path="hypertensive" value="True"/>
                                                            <label class="checkbox_checkmark radio_checkmark"></label>
                                                            <span class="checboxradiobutton-label">Yes</span>
                                                        </div>
                                                        <div class="checkbox-wrap radiobutton-wrap d-inline-block">
                                                            <form:radiobutton path="hypertensive" value="False"/>
                                                            <label class="checkbox_checkmark radio_checkmark"></label>
                                                            <span class="checboxradiobutton-label">No</span>
                                                        </div>
                                                    </div>
                                                </div>
                                                 -->
                                            </div>
                                        </div>
                                        <div class="list-inline pull-right">
                                            <button type="button" class="white-btn prev-step mr-2">Back</button>
                                            <button type="button" class="white-btn next-step">Next</button>
                                        </div>
                                    </div>
                                    <div class="tab-pane" role="tabpanel" id="step3">
                                        <h2 class="step-title">Your Behavior</h2>
                                        <div class="steps-data">
                                            <div class="behaviors-combinations">
                                                <div class="common-field">
                                                    <label>Have you ever smoked?</label>
                                                    <div class="radiocheckbox-wrapper smokechoice">
                                                        <div class="checkbox-wrap radiobutton-wrap d-inline-block mr-5">
                                                            <input type ="radio" name="neversmoked" value="yes"/>
                                                            <label class="checkbox_checkmark radio_checkmark"></label>
                                                            <span class="checboxradiobutton-label">Yes</span>
                                                        </div>
                                                        <div class="checkbox-wrap radiobutton-wrap d-inline-block">
                                                            <form:hidden path="currentExSmoker" value="0"/>
                                                            <input type ="radio" name="neversmoked" value="no"/>
                                                            <label class="checkbox_checkmark radio_checkmark"></label>
                                                            <span class="checboxradiobutton-label">No</span>
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="common-field pl-5  currently-smoker" style="display: none;">
                                                    <label>Are you currently a smoker?</label>
                                                    <div class="radiocheckbox-wrapper">
                                                        <div class="checkbox-wrap radiobutton-wrap d-inline-block mr-5">
                                                            <form:radiobutton path="currentExSmoker" value="-0.062"/>
                                                            <label class="checkbox_checkmark radio_checkmark"></label>
                                                            <span class="checboxradiobutton-label">Yes</span>
                                                        </div>
                                                        <div class="checkbox-wrap radiobutton-wrap d-inline-block">
                                                            <form:radiobutton path="currentExSmoker" value="0.278"/>
                                                            <label class="checkbox_checkmark radio_checkmark"></label>
                                                            <span class="checboxradiobutton-label">No</span>
                                                        </div>
                                                    </div>
                                                </div>
                                               
                                            </div>
                                        </div>
                                        <div class="list-inline pull-right">
                                            <button type="button" class="white-btn prev-step mr-2">Back</button>
                                            <button type="button" class="white-btn next-step">Next</button>
                                        </div>
                                    </div>
                                    <div class="tab-pane" role="tabpanel" id="step4">
                                        <h2 class="step-title">Have you ever been diagnosed with any of the following Pre-Existing Conditions:</h2>
                                        <div class="steps-data">
                                            <div class="mb-3 radiocheckbox-wrapper combination-wrapper">
                                                <div class="choicecheckbox">
                                                    <div class="checkbox-wrap  d-inline-block mr-5 ">
                                                    	<form:hidden path="respiratoryDisease" value="0"/>
                                                        <form:checkbox path="respiratoryDisease" value="0.582"/>
                                                        <label class="checkbox_checkmark "></label>
                                                        <span class="checboxradiobutton-label">Respiratory Disease excluding Asthma?</span>
                                                    </div>
                                                </div>
                                                <!--
                                                <div class="choices-options pl-5" style="display: none;">
                                                    <div class="checkbox-wrap radiobutton-wrap d-inline-block mr-5 ">
                                                        <form:radiobutton path="respiratoryDisease" value="0.582"/>
                                                        <label class="checkbox_checkmark radio_checkmark"></label>
                                                        <span class="checboxradiobutton-label">Yes </span>
                                                    </div>
                                                    <div class="checkbox-wrap radiobutton-wrap d-inline-block mr-5 ">
                                                        <form:radiobutton path="respiratoryDisease" value="0"/>
                                                        <label class="checkbox_checkmark radio_checkmark"></label>
                                                        <span class="checboxradiobutton-label">No</span>
                                                    </div>
                                                      <div class="checkbox-wrap radiobutton-wrap d-inline-block ">
                                                        <form:radiobutton path="respiratoryDisease" value=""/>
                                                        <label class="checkbox_checkmark radio_checkmark"></label>
                                                        <span class="checboxradiobutton-label">May be</span>
                                                    </div>
                                                </div>
                                                -->
                                            </div>
                                            <div class="mb-3 radiocheckbox-wrapper combination-wrapper">
                                                <div class="choicecheckbox">
                                                    <div class="checkbox-wrap  d-inline-block mr-5 ">
                                                    	<form:hidden path="ocs" value="0"/>
                                                        <input type="checkbox" name=hasAsthma value="yes"/>
                                                        <label class="checkbox_checkmark "></label>
                                                        <span class="checboxradiobutton-label">Asthma? </span>
                                                    </div>
                                                </div>
                                                <!-- <div class="choices-options pl-5" style="display: none;">
                                                    <div class="checkbox-wrap radiobutton-wrap d-inline-block mr-5 ">
                                                        <input type="radio" name="hasAsthma" value="yes"/>
                                                        <label class="checkbox_checkmark radio_checkmark"></label>
                                                        <span class="checboxradiobutton-label">Yes </span>
                                                    </div>
                                                    <div class="checkbox-wrap radiobutton-wrap d-inline-block mr-5 ">
                                                        <input type="radio" name="hasAsthma" value="no"/>
                                                        <label class="checkbox_checkmark radio_checkmark"></label>
                                                        <span class="checboxradiobutton-label">No</span>
                                                    </div>
                                                    <div class="checkbox-wrap radiobutton-wrap d-inline-block ">
                                                        <input type="radio" name="hasAsthma" value=""/>
                                                        <label class="checkbox_checkmark radio_checkmark"></label>
                                                        <span class="checboxradiobutton-label">May be</span>
                                                    </div>
                                                </div>-->
                                                <div class="choices-options pl-5 ml-5" style="display: none;">
                                                    <div class="common-field mb-0">
                                                        <label>Have you used an OCS inhaler in the past 30 days?</label>
                                                    </div>
                                                    <div class="checkbox-wrap radiobutton-wrap d-inline-block mr-5 ">
                                                        <form:radiobutton path="ocs" value="0.215"/>
                                                        <label class="checkbox_checkmark radio_checkmark"></label>
                                                        <span class="checboxradiobutton-label">Yes </span>
                                                    </div>
                                                    <div class="checkbox-wrap radiobutton-wrap d-inline-block mr-5 ">
                                                        <form:radiobutton path="ocs" value="0.03"/>
                                                        <label class="checkbox_checkmark radio_checkmark"></label>
                                                        <span class="checboxradiobutton-label">No</span>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="mb-3 radiocheckbox-wrapper combination-wrapper">
                                                <div class="choicecheckbox">
                                                    <div class="checkbox-wrap  d-inline-block mr-5 ">
                                                    	<form:hidden path="chronicHeartDisease" value="0"/>
                                                        <form:checkbox path="chronicHeartDisease" value="0.239"/>
                                                        <label class="checkbox_checkmark "></label>
                                                        <span class="checboxradiobutton-label">Chronic Heart Disease?</span>
                                                    </div>
                                                </div>
                                                <!--<div class="choices-options pl-5" style="display: none;">
                                                    <div class="checkbox-wrap radiobutton-wrap d-inline-block mr-5 ">
                                                        <form:radiobutton path="chronicHeartDisease" value="0.239"/>
                                                        <label class="checkbox_checkmark radio_checkmark"></label>
                                                        <span class="checboxradiobutton-label">Yes </span>
                                                    </div>
                                                    <div class="checkbox-wrap radiobutton-wrap d-inline-block mr-5 ">
                                                        <form:radiobutton path="chronicHeartDisease" value="0"/>
                                                        <label class="checkbox_checkmark radio_checkmark"></label>
                                                        <span class="checboxradiobutton-label">No</span>
                                                    </div>
                                                     <div class="checkbox-wrap radiobutton-wrap d-inline-block ">
                                                        <form:radiobutton path="chronicHeartDisease" value=""/>
                                                        <label class="checkbox_checkmark radio_checkmark"></label>
                                                        <span class="checboxradiobutton-label">May be</span>
                                                    </div>
                                                </div>-->
                                            </div>
                                            <div class="mb-3 radiocheckbox-wrapper combination-wrapper">
                                                <div class="choicecheckbox">
                                                    <div class="checkbox-wrap  d-inline-block mr-5 ">
                                                    <form:hidden path="diabetes" value="0"/>
                                                        <input type="checkbox" name="hasdiabetes" value="yes"/>
                                                        <label class="checkbox_checkmark "></label>
                                                        <span class="checboxradiobutton-label">Diabetes? </span>
                                                    </div>
                                                </div>
                                                <!--<div class="choices-options pl-5" style="display: none;">
                                                    <div class="checkbox-wrap radiobutton-wrap d-inline-block mr-5 ">
                                                        <input type="radio" name="hasdiabetes" value="yes"/>
                                                        <label class="checkbox_checkmark radio_checkmark"></label>
                                                        <span class="checboxradiobutton-label">Yes </span>
                                                    </div>
                                                    <div class="checkbox-wrap radiobutton-wrap d-inline-block mr-5 ">
                                                        <input type="radio" name="hasdiabetes" value="no"/>
                                                        <label class="checkbox_checkmark radio_checkmark"></label>
                                                        <span class="checboxradiobutton-label">No</span>
                                                    </div>
                                                     <div class="checkbox-wrap radiobutton-wrap d-inline-block ">
                                                        <input type="radio" name="diabetes" value=""/>
                                                        <label class="checkbox_checkmark radio_checkmark"></label>
                                                        <span class="checboxradiobutton-label">May be</span>
                                                    </div>
                                                </div>-->
                                                <div class="choices-options pl-5 ml-5" style="display: none;">
                                                    <div class="common-field mb-0">
                                                        <label>Is your diabetes controlled or uncontrolled</label>
                                                    </div>
                                                    <div class="checkbox-wrap d-inline-block mr-5 ">
                                                        <form:checkbox path="diabetes" value="0.802"/>
                                                        <label class="checkbox_checkmark"></label>
                                                        <span class="checboxradiobutton-label">A1C levels Between 7.0 and 8.9 - Uncontrolled diabetes </span>
                                                    </div>
                                                    <div class="checkbox-wrap d-inline-block mr-5 ">
                                                        <form:checkbox path="diabetes" value="0.385"/>
                                                        <label class="checkbox_checkmark"></label>
                                                        <span class="checboxradiobutton-label">A1C levels Between 6.0 and 6.9 - Controlled diabetes</span>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="mb-3 radiocheckbox-wrapper combination-wrapper">
                                                <div class="choicecheckbox">
                                                    <div class="checkbox-wrap  d-inline-block mr-5 ">
                                                    <form:hidden path="hematologicalDiagnosis" value="0"/>
                                                        <input type="checkbox" name="hashematologicalDiagnosis" value="yes"/>
                                                        <label class="checkbox_checkmark "></label>
                                                        <span class="checboxradiobutton-label">Cancer?</span>
                                                    </div>
                                                </div>
                                                <!--<div class="choices-options pl-5" style="display: none;">
                                                    <div class="checkbox-wrap radiobutton-wrap d-inline-block mr-5 ">
                                                        <input type="radio" name="hashematologicalDiagnosis" value="yes"/>
                                                        <label class="checkbox_checkmark radio_checkmark"></label>
                                                        <span class="checboxradiobutton-label">Yes </span>
                                                    </div>
                                                    <div class="checkbox-wrap radiobutton-wrap d-inline-block mr-5 ">
                                                        <input type="radio" name="hashematologicalDiagnosis" value="no"/>
                                                        <label class="checkbox_checkmark radio_checkmark"></label>
                                                        <span class="checboxradiobutton-label">No</span>
                                                    </div>
                                                     <div class="checkbox-wrap radiobutton-wrap d-inline-block ">
                                                        <input type="radio" name="hashematologicalDiagnosis" value=""/>
                                                        <label class="checkbox_checkmark radio_checkmark"></label>
                                                        <span class="checboxradiobutton-label">May be</span>
                                                    </div>
                                                </div>-->
                                                <div class="choices-options pl-5 ml-5" style="display: none;">
                                                    <div class="common-field mb-0">
                                                        <label>Did you have Hematological Cancer?</label>
                                                    </div>
                                                    <div class="checkbox-wrap radiobutton-wrap d-inline-block mr-5 ">
                                                        <input type="radio" name="hashematologicalDiagnosis" value="yes"/>
                                                        <label class="checkbox_checkmark radio_checkmark"></label>
                                                        <span class="checboxradiobutton-label">Yes </span>
                                                    </div>
                                                    <div class="checkbox-wrap radiobutton-wrap d-inline-block mr-5 ">
                                                        <input type="radio" name="hashematologicalDiagnosis" value="no"/>
                                                        <label class="checkbox_checkmark radio_checkmark"></label>
                                                        <span class="checboxradiobutton-label">No</span>
                                                    </div>
                                                </div>
                                                <div class="cancersub-options pl-5 ml-5" style="display: none;">
                                                    <div class="ml-5">
                                                        <div class="common-field mb-0">
                                                            <label>Hematological</label>
                                                        </div>
                                                        <div class="checkbox-wrap radiobutton-wrap d-inline-block mr-3 ">
                                                            <form:radiobutton path="hematologicalDiagnosis" value="1.194"/>
                                                            <label class="checkbox_checkmark radio_checkmark"></label>
                                                            <span class="checboxradiobutton-label">
                                                                < 1 year ago </span> </div> <div class="checkbox-wrap radiobutton-wrap d-inline-block mr-3 ">
                                                                    <form:radiobutton path="hematologicalDiagnosis" value="1.23"/>
                                                                    <label class="checkbox_checkmark radio_checkmark"></label>
                                                                    <span class="checboxradiobutton-label">1 - 4.9 years ago</span>
                                                        </div>
                                                        <div class="checkbox-wrap radiobutton-wrap d-inline-block ">
                                                            <form:radiobutton path="hematologicalDiagnosis" value="0.61"/>
                                                            <label class="checkbox_checkmark radio_checkmark"></label>
                                                            <span class="checboxradiobutton-label">>= 5 years ago</span>
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="cancersubno-options pl-5 ml-5" style="display: none;">
                                                    <div class="ml-5">
                                                        <div class="common-field mb-0">
                                                            <label>Non- Hematological</label>
                                                        </div>
                                                        <div class="checkbox-wrap radiobutton-wrap d-inline-block mr-3 ">
                                                            <form:radiobutton path="hematologicalDiagnosis" value="0.519"/>
                                                            <label class="checkbox_checkmark radio_checkmark"></label>
                                                            <span class="checboxradiobutton-label">
                                                                < 1 year ago </span> </div> <div class="checkbox-wrap radiobutton-wrap d-inline-block mr-3 ">
                                                                    <form:radiobutton path="hematologicalDiagnosis" value="0.191"/>
                                                                    <label class="checkbox_checkmark radio_checkmark"></label>
                                                                    <span class="checboxradiobutton-label">1 - 4.9 years ago</span>
                                                        </div>
                                                        <div class="checkbox-wrap radiobutton-wrap d-inline-block ">
                                                            <form:radiobutton path="hematologicalDiagnosis" value="0.02"/>
                                                            <label class="checkbox_checkmark radio_checkmark"></label>
                                                            <span class="checboxradiobutton-label">>= 5 years ago</span>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                            <!-- cancer pending -->
                                            <div class="mb-3 radiocheckbox-wrapper combination-wrapper">
                                                <div class="choicecheckbox">
                                                    <div class="checkbox-wrap  d-inline-block mr-5 ">
                                                    <form:hidden path="stroke" value="0"/>
                                                        <form:checkbox path="stroke" value="0.56"/>
                                                        <label class="checkbox_checkmark "></label>
                                                        <span class="checboxradiobutton-label">Stroke? </span>
                                                    </div>
                                                </div>
                                                <!--<div class="choices-options pl-5" style="display: none;">
                                                    <div class="checkbox-wrap radiobutton-wrap d-inline-block mr-5 ">
                                                        <form:radiobutton path="stroke" value="0.56"/>
                                                        <label class="checkbox_checkmark radio_checkmark"></label>
                                                        <span class="checboxradiobutton-label">Yes </span>
                                                    </div>
                                                    <div class="checkbox-wrap radiobutton-wrap d-inline-block mr-5 ">
                                                        <form:radiobutton path="stroke" value="0"/>
                                                        <label class="checkbox_checkmark radio_checkmark"></label>
                                                        <span class="checboxradiobutton-label">No</span>
                                                    </div>
                                                     <div class="checkbox-wrap radiobutton-wrap d-inline-block ">
                                                        <form:radiobutton path="stroke" value=""/>
                                                        <label class="checkbox_checkmark radio_checkmark"></label>
                                                        <span class="checboxradiobutton-label">May be</span>
                                                    </div>
                                                </div>-->
                                            </div>
                                            <div class="mb-3 radiocheckbox-wrapper combination-wrapper">
                                                <div class="choicecheckbox">
                                                    <div class="checkbox-wrap  d-inline-block mr-5 ">
                                                    <form:hidden path="kidney" value="0"/>
                                                        <form:checkbox path="kidney" value="0.565"/>
                                                        <label class="checkbox_checkmark "></label>
                                                        <span class="checboxradiobutton-label">Kidney Disease?</span>
                                                    </div>
                                                </div>
                                                <!--<div class="choices-options pl-5" style="display: none;">
                                                    <div class="checkbox-wrap radiobutton-wrap d-inline-block mr-5 ">
                                                        <form:radiobutton path="kidney" value="0.565"/>
                                                        <label class="checkbox_checkmark radio_checkmark"></label>
                                                        <span class="checboxradiobutton-label">Yes </span>
                                                    </div>
                                                    <div class="checkbox-wrap radiobutton-wrap d-inline-block mr-5 ">
                                                        <form:radiobutton path="kidney" value="0"/>
                                                        <label class="checkbox_checkmark radio_checkmark"></label>
                                                        <span class="checboxradiobutton-label">No</span>
                                                    </div>
                                                     <div class="checkbox-wrap radiobutton-wrap d-inline-block ">
                                                        <form:radiobutton path="kidney" value=""/>
                                                        <label class="checkbox_checkmark radio_checkmark"></label>
                                                        <span class="checboxradiobutton-label">May be</span>
                                                    </div>
                                                </div>-->
                                            </div>
                                            <div class="mb-3 radiocheckbox-wrapper combination-wrapper">
                                                <div class="choicecheckbox">
                                                    <div class="checkbox-wrap  d-inline-block mr-5 ">
                                                    <form:hidden path="arthritis" value="0"/>
                                                        <form:checkbox path="arthritis" value="0.157"/>
                                                        <label class="checkbox_checkmark "></label>
                                                        <span class="checboxradiobutton-label">Arthritis?</span>
                                                    </div>
                                                </div>
                                                <!--<div class="choices-options pl-5" style="display: none;">
                                                    <div class="checkbox-wrap radiobutton-wrap d-inline-block mr-5 ">
                                                        <form:radiobutton path="arthritis" value="0.157"/>
                                                        <label class="checkbox_checkmark radio_checkmark"></label>
                                                        <span class="checboxradiobutton-label">Yes </span>
                                                    </div>
                                                    <div class="checkbox-wrap radiobutton-wrap d-inline-block mr-5 ">
                                                        <form:radiobutton path="arthritis" value="0"/>
                                                        <label class="checkbox_checkmark radio_checkmark"></label>
                                                        <span class="checboxradiobutton-label">No</span>
                                                    </div>
                                                     <div class="checkbox-wrap radiobutton-wrap d-inline-block ">
                                                        <form:radiobutton path="arthritis" value=""/>
                                                        <label class="checkbox_checkmark radio_checkmark"></label>
                                                        <span class="checboxradiobutton-label">May be</span>
                                                    </div>
                                                </div>-->
                                            </div>
                                            <div class="mb-3 radiocheckbox-wrapper combination-wrapper">
                                                <div class="choicecheckbox">
                                                    <div class="checkbox-wrap  d-inline-block mr-5 ">
                                                    <form:hidden path="hypertensive" value="0"/>
                                                        <form:checkbox path="hypertensive" value="-0.03"/>
                                                        <label class="checkbox_checkmark "></label>
                                                        <span class="checboxradiobutton-label">Hypertension?</span>
                                                    </div>
                                                </div>
                                                <!--<div class="choices-options pl-5" style="display: none;">
                                                    <div class="checkbox-wrap radiobutton-wrap d-inline-block mr-5 ">
                                                        <form:radiobutton path="hypertensive" value="-0.03"/>
                                                        <label class="checkbox_checkmark radio_checkmark"></label>
                                                        <span class="checboxradiobutton-label">Yes </span>
                                                    </div>
                                                    <div class="checkbox-wrap radiobutton-wrap d-inline-block mr-5 ">
                                                        <form:radiobutton path="hypertensive" value="0"/>
                                                        <label class="checkbox_checkmark radio_checkmark"></label>
                                                        <span class="checboxradiobutton-label">No</span>
                                                    </div>
                                                     <div class="checkbox-wrap radiobutton-wrap d-inline-block ">
                                                        <form:radiobutton path="hypertensive" value=""/>
                                                        <label class="checkbox_checkmark radio_checkmark"></label>
                                                        <span class="checboxradiobutton-label">May be</span>
                                                    </div>
                                                </div>-->
                                            </div>
                                        </div>
                                        <div class="list-inline pull-right">
                                            <button type="button" class="white-btn prev-step mr-2">Back</button>
                                            <button type="submit" class="white-btn next-step">Finish</button>
                                        </div>
                                    </div>
                                    <div class="clearfix"></div>
                                </div>
                            </form:form>
                        </div>
                    </div>
                </div>
                
           
                <div class="right-form" data-aos="fade-up" data-aos-duration="800" data-aos-easing="linear">
                <h2>Covid-19 Risk Toll</h2>
                <p>Our "Risk Score" visualization is the quantity {Exposure * Susceptibility}, normalized by the average disease burden of flu for the average American, logarithmically scaled.</p>
                <span>The risk score for people with similar characteristics and behaviors as you is</span>
                <div class="checkmeter">
                    <div class="rang">
                        <svg class="meter">
                            <circle class="meter-left" r="96" cx="135" cy="142"></circle>
                            <circle class="meter-second" r="96" cx="136" cy="142"></circle>
                            <circle class="meter-third" r="96" cx="136" cy="142"></circle>
                            <circle class="meter-forth" r="96" cx="136" cy="142"></circle>
                            <circle class="meter-right" r="96" cx="138" cy="142"></circle>
                            <polygon class="meter-clock" points="134,145 137,90 145,145" style="    transform: rotate(-96deg);"></polygon>
                            <circle class="meter-circle" r="8" cx="140" cy="139"></circle>
                        </svg>
                        <div class="rang-title">
                            <input class="rang-number" id="show" type="text" value="0" disabled="disabled" />
                        </div>
                        <input class="rang-number rang-slider" value="0" id="range" type="range" min="0" max="10" />
                    </div>
                </div>
                <h3>Our Method</h3>
                    <p>The current risk-score was developed using information on risk for COVID-19 mortality associated with age, gender, race, social deprivation and 12 different health conditions published in a recent large UK study . The risk-score was adopted to US setting to account for additional risk for Hispanic origin population using information available from the New York City Health Department. Further relative risks for individuals are provided by standardization with respect to average risk for the US population, calculated using information available on prevalence and co-occurrence of various risk-factors available form national databases. We have posted a manuscript describing the details of the methods on th preprint server medRxiv <a href="#">https://www.medrxiv.org/content/10.1101/2020.05.27.20115170v1</a></p>
            </div>
           </div>
        </section>
        
        <section class="aboutus sectionpadding60" id="about_us">
            <div class="container">
                <div class="row">
                    <div class="col-md-12 col-lg-6 col-12" data-aos="fade-right" data-aos-duration="1000" data-aos-easing="linear">
                        <div class="image-frame">
                            <figure>
                                <img src="images/about-image.png" class="img-fluid" alt="about agency">
                            </figure>
                        </div>
                    </div>
                    <div class="col-md-12 col-lg-6 col-12 mt-3" data-aos="fade-left" data-aos-duration="1000" data-aos-easing="linear">
                        <div class="heading-title">
                            <span>About Us</span>
                            <h2>Johns Hopkins Biostatistics Lab</h2>
                        </div>
                        <div class="content-wrapper">
                            <p>
                                The tool is developed with supervision from Nilanjan Chatterjee, PhD, Bloomberg Distinguished Professor of Biostatistics and Oncology, School of Medicine. His research over many years in the past have focused on developing and evaluating models for the assessment for individualized risks of non-communicable diseases integrating information on genetic, demographic, anthropometric, life-style and environmental factors. The trainee who led various data analyses included Jin Jin, PhD and Prosenjit Kundu, PhD (Post-doctoral Fellows at the Johns Hopkins University) and Neha Agarwala (PhD Student, University of Maryland). The webtool was developed by Benjamin Harvey, DSc., a senior Research Associate in the Department of Biostatistics, Johns Hopkins University, and the lead data scientist for the laboratory of <a href="javascript:void(0)">Dr. Chatterjee</a>.
                            </p>
                        </div>
                    </div>
                </div>
            </div>
        </section>
        <section class="faqs sectionpadding60" id="faqs" data-aos="fade-up" data-aos-duration="300" data-aos-easing="linear">
            <div class="container">
                <div class="heading-title center">
                    <span>F.A.Q.</span>
                    <h2>Freequently Asked Questions</h2>
                    <p>Please find the FAQs section below to answer some of the more prevelantly asked questions.</p>
                </div>
                <div class="row">
                    <div class="offset-md-1 col-md-10 col12">
                        <div class="accordion" id="faq">
                            <div class="card">
                                <div class="card-header" id="faqhead1">
                                    <a href="#" class=" btn-header-link" data-toggle="collapse" data-target="#faq1" aria-expanded="true" aria-controls="faq1">Competition Research</a>
                                </div>
                                <div id="faq1" class="collapse show" aria-labelledby="faqhead1" data-parent="#faq">
                                    <div class="card-body">
                                        Aliquam erat odio, fringilla at porta a, vehicula ultricies est. Aliquam maximus turpis in dignissim pellentesque. Ut dolor quam, aliquam eget bibendum nec, luctus non metus. Morbi convallis imperdiet dolor id porttitor.
                                        Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Sed finibus faucibus congue. Interdum et malesuada fames ac ante ipsum.
                                    </div>
                                </div>
                            </div>
                            <div class="card">
                                <div class="card-header" id="faqhead2">
                                    <a href="#" class=" btn-header-link collapsed" data-toggle="collapse" data-target="#faq2" aria-expanded="true" aria-controls="faq2">User Definition & Profiling</a>
                                </div>
                                <div id="faq2" class="collapse" aria-labelledby="faqhead2" data-parent="#faq">
                                    <div class="card-body">
                                        Anim pariatur cliche reprehenderit, enim eiusmod high life accusamus terry richardson ad squid. 3 wolf
                                        moon officia aute, non cupidatat skateboard dolor brunch. Food truck quinoa nesciunt laborum eiusmod.
                                        Brunch 3 wolf moon tempor, sunt aliqua put a bird on it squid single-origin coffee nulla assumenda
                                        shoreditch et. Nihil anim keffiyeh helvetica, craft beer labore wes anderson cred nesciunt sapiente ea
                                        proident. Ad vegan excepteur butcher vice lomo. Leggings occaecat craft beer farm-to-table, raw denim
                                        aesthetic synth nesciunt you probably haven't heard of them accusamus labore sustainable VHS.
                                    </div>
                                </div>
                            </div>
                            <div class="card">
                                <div class="card-header" id="faqhead3">
                                    <a href="#" class=" btn-header-link collapsed" data-toggle="collapse" data-target="#faq3" aria-expanded="true" aria-controls="faq3">Performance Infrastructure: Analytics & KPIs</a>
                                </div>
                                <div id="faq3" class="collapse" aria-labelledby="faqhead3" data-parent="#faq">
                                    <div class="card-body">
                                        Anim pariatur cliche reprehenderit, enim eiusmod high life accusamus terry richardson ad squid. 3 wolf
                                        moon officia aute, non cupidatat skateboard dolor brunch. Food truck quinoa nesciunt laborum eiusmod.
                                        Brunch 3 wolf moon tempor, sunt aliqua put a bird on it squid single-origin coffee nulla assumenda
                                        shoreditch et. Nihil anim keffiyeh helvetica, craft beer labore wes anderson cred nesciunt sapiente ea
                                        proident. Ad vegan excepteur butcher vice lomo. Leggings occaecat craft beer farm-to-table, raw denim
                                        aesthetic synth nesciunt you probably haven't heard of them accusamus labore sustainable VHS.
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </section>
        <section class="contactus sectionpadding60" id="contactus">
            <div class="container">
                <div class="row">
                    <div class="col-md-6 col-12" data-aos="fade-down" data-aos-duration="1000" data-aos-easing="linear">
                        <div class="heading-title">
                            <span>Contact Us</span>
                            <h2>GET IN TOUCH WITH US</h2>
                            <p class="w-100">Please fill out the form below to send questions, comments, or suggestions.</p>
                        </div>
                        <div class="contactform-wrapper">
                            <form>
                                <div class="form-group">
                                    <input type="text" class="form-control" placeholder="Full Name*" name="name"/>
                                </div>
                                <div class="form-group">
                                    <input type="text" class="form-control" placeholder="Email Address*" name="email"/>
                                </div>
                                <div class="form-group">
                                    <input type="text" class="form-control" placeholder="Contact Number*" name="contactno"/>
                                </div>
                                <div class="form-group">
                                    <textarea class="form-control" placeholder="Message*" rows="6" name="message"></textarea>
                                </div>
                                <div class="form-group">
                                    <button type="submit" class="blue-btn">Send</button>
                                </div>
                            </form>
                        </div>
                    </div>
                    <div class="col-md-6 col-12" data-aos="fade-up" data-aos-duration="800" data-aos-easing="linear">
                        <div class="image-frame mt-5 pt-3">
                            <figure>
                                <img src="images/contact-sidebar.png" class="img-fluid" alt="contact agency">
                            </figure>
                        </div>
                    </div>
                </div>
            </div>
        </section>
    </main>
    <footer>
        <div class="container">
            <div class="menus-footer">
                <div class="row">
                    <div class="col-md-9 col-12">
                        <div class="row">
                            <div class="col-md-3 col-12">
                                <div class="footer-widget">
                                    <h2>Mobile App</h2>
                                    <ul>
                                        <li>
                                            <a href="#">How it Work</a>
                                        </li>
                                        <li>
                                            <a href="#">FAQ</a>
                                        </li>
                                    </ul>
                                </div>
                            </div>
                            <div class="col-md-3 col-12">
                                <div class="footer-widget">
                                    <h2>Organization</h2>
                                    <ul>
                                        <li>
                                            <a href="#">About Us</a>
                                        </li>
                                        <li>
                                            <a href="#">News</a>
                                        </li>
                                    </ul>
                                </div>
                            </div>
                            <div class="col-md-3 col-12">
                                <div class="footer-widget">
                                    <h2>Resources</h2>
                                    <ul>
                                        <li>
                                            <a href="#">Privacy Policy</a>
                                        </li>
                                    </ul>
                                </div>
                            </div>
                            <div class="col-md-3 col-12">
                                <div class="socialmedia-footer">
                                    <a href="#" class="white-btn">Donate</a>
                                    <ul>
                                        <li>
                                            <a href="#"><i class="fa fa-facebook"></i></a>
                                        </li>
                                        <li>
                                            <a href="#"><i class="fa fa-twitter"></i></a>
                                        </li>
                                        <li>
                                            <a href="#"><i class="fa fa-instagram"></i></a>
                                        </li>
                                    </ul>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-3 col-12">
                        <figure class="footer-logo">
                            <img src="images/footer-logo1.png" class="img-fluid">
                        </figure>
                    </div>
                </div>
            </div>
            <p class="copyright">
                Copyright © 2020 Covid Risk Tools. All rights reserved
            </p>
        </div>
    </footer>
    <!-- Footer Ends Here  -->
    <div class="modal common-modal" id="disclaimer-popup">
        <div class="modal-dialog">
            <div class="modal-content">
                <!-- Modal body -->
                <div class="modal-body">
                    <div class="text-center content-disclaimer">
                        <img src="images/alert-icon.png" class="img-fluid">
                        <h2>Disclaimer</h2>
                        <p>We do not retain any information that you provide in connection with your use of the tool. Your use of this tool is subject to these Terms of Use.</p>
                        <h4>THE INFORMATION PROVIDED BY THIS TOOL IS NOT MEDICAL ADVICE AND CANNOT BE USED TO DIAGNOSE OR TREAT ANY MEDICAL CONDITION</h4>
                        <a href="javascript:void(0)" class="blue-btn" data-dismiss="modal">Accept</a>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- script here -->
    <script src="js/jquery-3.3.1.min.js"></script>
    <script src="js/bootstrap.min.js"></script>
    <script src="js/aos.js"></script>
    <script src="js/owl.carousel.js"></script>
    <script src="js/custom.js"></script>
     <script>
    AOS.init();
    </script>
</body>

</html>
