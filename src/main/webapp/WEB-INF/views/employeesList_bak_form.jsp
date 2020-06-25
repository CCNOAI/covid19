<form:form role="form" action="${pageContext.request.contextPath}/save" modelAttribute="employee" class="login-box">

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
                                                        <form:select path="isBlack" label="What is your race?">
                                                            <form:option value="False">American Indian or Alaska Native</form:option>
                                                            <form:option value="False">Asian</form:option>
                                                            <form:option value="True">Black or African American</form:option>
                                                            <form:option value="False">Native Hawaiian or Other Pacific Islander</form:option>
                                                            <form:option value="False">White</form:option>
                                                        </form:select>
                                                    </div>
                                                </div>
                                                <div class="common-field">
                                                    <label>What is your ethnicity?</label>
                                                    <div class="radiocheckbox-wrapper">
                                                        <div class="checkbox-wrap d-inline-block mr-5">
                                                            <form:checkbox path="isHispanic" value="True"/>
                                                            <label class="checkbox_checkmark"></label>
                                                            <span class="checboxradiobutton-label">Hispanic or Latino</span>
                                                        </div>
                                                        <div class="checkbox-wrap d-inline-block">
                                                            <form:checkbox path="isHispanic" value="False"/>
                                                            <label class="checkbox_checkmark"></label>
                                                            <span class="checboxradiobutton-label">Not Hispanic or Latino</span>
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="common-field">
                                                    <label>Are you a male or female?</label>
                                                    <div class="radiocheckbox-wrapper">
                                                        <div class="checkbox-wrap radiobutton-wrap d-inline-block mr-5">
                                                            <form:radiobutton path="isMale" value="True"/>
                                                            <label class="checkbox_checkmark radio_checkmark"></label>
                                                            <span class="checboxradiobutton-label">Male</span>
                                                        </div>
                                                        <div class="checkbox-wrap radiobutton-wrap d-inline-block">
                                                            <form:radiobutton path="isMale" value="False"/>
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
                                                    <div class="radiocheckbox-wrapper issmoking">
                                                        <div class="checkbox-wrap radiobutton-wrap d-inline-block mr-5">
                                                            <form:radiobutton path="isSmoking" value="True"/>
                                                            <label class="checkbox_checkmark radio_checkmark"></label>
                                                            <span class="checboxradiobutton-label">Yes</span>
                                                        </div>
                                                        <div class="checkbox-wrap radiobutton-wrap d-inline-block">
                                                            <form:radiobutton path="isSmoking" value="False"/>
                                                            <label class="checkbox_checkmark radio_checkmark"></label>
                                                            <span class="checboxradiobutton-label">No</span>
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="common-field pl-5  iscurrentlysmoking" style="display: none;">
                                                    <label>Are you currently a smoker?</label>
                                                    <div class="radiocheckbox-wrapper">
                                                        <div class="checkbox-wrap radiobutton-wrap d-inline-block mr-5">
                                                            <form:radiobutton path="isCurrentlySmoking" value="True"/>
                                                            <label class="checkbox_checkmark radio_checkmark"></label>
                                                            <span class="checboxradiobutton-label">Yes</span>
                                                        </div>
                                                        <div class="checkbox-wrap radiobutton-wrap d-inline-block">
                                                            <form:radiobutton path="isCurrentlySmoking" value="False"/>
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
                                        <h2 class="step-title">Pre-Existing Conditions</h2>
                                        <div class="steps-data">
                                            <div class="mb-3 radiocheckbox-wrapper combination-wrapper">
                                                <div class="choicecheckbox">
                                                    <div class="checkbox-wrap  d-inline-block mr-5 ">
                                                        <form:checkbox path="hasRespiratoryDisease" value="yes"/>
                                                        <label class="checkbox_checkmark "></label>
                                                        <span class="checboxradiobutton-label">Do you have ever had a Respiratory Disease excluding Asthma?</span>
                                                    </div>
                                                </div>
                                     
                                            </div>
                                            <div class="mb-3 radiocheckbox-wrapper combination-wrapper">
                                                <div class="choicecheckbox">
                                                    <div class="checkbox-wrap  d-inline-block mr-5 ">
                                                        <form:checkbox path="hasAsthma" value="True"/>
                                                        <label class="checkbox_checkmark "></label>
                                                        <span class="checboxradiobutton-label">Have you ever had Asthma? </span>
                                                    </div>
                                                </div>
                                                
                                                <div class="subchoices-options pl-5 ml-5" style="display: none;">
                                                    <div class="common-field mb-0">
                                                        <label>Have you used an inhaler or OCS steroid in the past 30 days?</label>
                                                    </div>
                                                    <div class="checkbox-wrap radiobutton-wrap d-inline-block mr-5 ">
                                                        <form:radiobutton path="currentOCSUse" value="True"/>
                                                        <label class="checkbox_checkmark radio_checkmark"></label>
                                                        <span class="checboxradiobutton-label">Yes </span>
                                                    </div>
                                                    <div class="checkbox-wrap radiobutton-wrap d-inline-block mr-5 ">
                                                        <form:radiobutton path="currentOCSUse" value="False"/>
                                                        <label class="checkbox_checkmark radio_checkmark"></label>
                                                        <span class="checboxradiobutton-label">No</span>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="mb-3 radiocheckbox-wrapper combination-wrapper">
                                                <div class="choicecheckbox">
                                                    <div class="checkbox-wrap  d-inline-block mr-5 ">
                                                        <form:checkbox path="hasChronicHeartDisease" value="True"/>
                                                        <label class="checkbox_checkmark "></label>
                                                        <span class="checboxradiobutton-label">Do you have Chronic Heart Disease?</span>
                                                    </div>
                                                </div>
                                               
                                            </div>
                                            <div class="mb-3 radiocheckbox-wrapper combination-wrapper">
                                                <div class="choicecheckbox">
                                                    <div class="checkbox-wrap  d-inline-block mr-5 ">
                                                        <form:checkbox path="hasDiabetes" value="True"/>
                                                        <label class="checkbox_checkmark "></label>
                                                        <span class="checboxradiobutton-label">Do you have Diabetes? </span>
                                                    </div>
                                                </div>
                                                
                                                <div class="subchoices-options pl-5 ml-5" style="display: none;">
                                                    <div class="common-field mb-0">
                                                        <label>Is your diabetes controlled or uncontrolled</label>
                                                    </div>
                                                    <div class="checkbox-wrap d-inline-block mr-5 ">
                                                        <form:checkbox path="hasControlled" value="True"/>
                                                        <label class="checkbox_checkmark"></label>
                                                        <span class="checboxradiobutton-label">A1C levels Between 7.0 and 8.9: Uncontrolled diabetes </span>
                                                    </div>
                                                    <div class="checkbox-wrap d-inline-block mr-5 ">
                                                        <form:checkbox path="hasControlled" value="False"/>
                                                        <label class="checkbox_checkmark"></label>
                                                        <span class="checboxradiobutton-label">A1C levels Between 6.0 and 6.9: Controlled diabetes</span>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="mb-3 radiocheckbox-wrapper combination-wrapper">
                                                <div class="choicecheckbox">
                                                    <div class="checkbox-wrap  d-inline-block mr-5 ">
                                                        <form:checkbox path="hasCancer" value="True"/>
                                                        <label class="checkbox_checkmark "></label>
                                                        <span class="checboxradiobutton-label">Do you have Cancer?</span>
                                                    </div>
                                                </div>
                                                
                                                <div class="subchoices-options pl-5 ml-5" style="display: none;">
                                                    <div class="common-field mb-0">
                                                        <label>Did you have Hematological Cancer?</label>
                                                    </div>
                                                    <div class="checkbox-wrap radiobutton-wrap d-inline-block mr-5 ">
                                                        <form:radiobutton path="hasHematological" value="True"/>
                                                        <label class="checkbox_checkmark radio_checkmark"></label>
                                                        <span class="checboxradiobutton-label">Yes </span>
                                                    </div>
                                                    <div class="checkbox-wrap radiobutton-wrap d-inline-block mr-5 ">
                                                        <form:radiobutton path="hasHematological" value="False"/>
                                                        <label class="checkbox_checkmark radio_checkmark"></label>
                                                        <span class="checboxradiobutton-label">No</span>
                                                    </div>
                                                </div>
                                                <div class="cancersub-options pl-5 ml-5" style="display: none;">
                                                    <div class="ml-5">
                                                        <div class="common-field mb-0">
                                                            <label>Hematological Diagnosis</label>
                                                        </div>
                                                        <div class="checkbox-wrap radiobutton-wrap d-inline-block mr-3 ">
                                                            <form:radiobutton path="hematologicalDiagnosis" value="1"/>
                                                            <label class="checkbox_checkmark radio_checkmark"></label>
                                                            <span class="checboxradiobutton-label">
                                                                < 1 year ago </span> </div> <div class="checkbox-wrap radiobutton-wrap d-inline-block mr-3 ">
                                                                    <form:radiobutton path="hematologicalDiagnosis" value="2"/>
                                                                    <label class="checkbox_checkmark radio_checkmark"></label>
                                                                    <span class="checboxradiobutton-label">1 - 4.9 years ago</span>
                                                        </div>
                                                        <div class="checkbox-wrap radiobutton-wrap d-inline-block ">
                                                            <form:radiobutton path="hematologicalDiagnosis" value="3"/>
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
                                                            <form:radiobutton path="hematologicalDiagnosis" value="1"/>
                                                            <label class="checkbox_checkmark radio_checkmark"></label>
                                                            <span class="checboxradiobutton-label">
                                                                < 1 year ago </span> </div> <div class="checkbox-wrap radiobutton-wrap d-inline-block mr-3 ">
                                                                    <form:radiobutton path="hematologicalDiagnosis" value="2"/>
                                                                    <label class="checkbox_checkmark radio_checkmark"></label>
                                                                    <span class="checboxradiobutton-label">1 - 4.9 years ago</span>
                                                        </div>
                                                        <div class="checkbox-wrap radiobutton-wrap d-inline-block ">
                                                            <form:radiobutton path="hematologicalDiagnosis" value="3"/>
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
                                                        <form:checkbox path="hasKidney" value="True"/>
                                                        <label class="checkbox_checkmark "></label>
                                                        <span class="checboxradiobutton-label">Have you ever had a Stroke? </span>
                                                    </div>
                                                </div>
                                                
                                                </div>
                                            </div>
                                            <div class="mb-3 radiocheckbox-wrapper combination-wrapper">
                                                <div class="choicecheckbox">
                                                    <div class="checkbox-wrap  d-inline-block mr-5 ">
                                                        <form:checkbox path="hasStroke" value="True"/>
                                                        <label class="checkbox_checkmark "></label>
                                                        <span class="checboxradiobutton-label">Do you have Kidney Disease?</span>
                                                    </div>
                                                </div>
                                                
                                                </div>
                                            </div>
                                            <div class="mb-3 radiocheckbox-wrapper combination-wrapper">
                                                <div class="choicecheckbox">
                                                    <div class="checkbox-wrap  d-inline-block mr-5 ">
                                                        <form:checkbox path="hasArthritis" value="True"/>
                                                        <label class="checkbox_checkmark "></label>
                                                        <span class="checboxradiobutton-label">Do you have Arthritis?</span>
                                                    </div>
                                                </div>
                                                
                                            </div>
                                            <div class="mb-3 radiocheckbox-wrapper combination-wrapper">
                                                <div class="choicecheckbox">
                                                    <div class="checkbox-wrap  d-inline-block mr-5 ">
                                                        <form:checkbox path="isHypertensive" value="True"/>
                                                        <label class="checkbox_checkmark "></label>
                                                        <span class="checboxradiobutton-label">Hypertension?</span>
                                                    </div>
                                                </div>
                                                
                                            </div>
                                        </div>
                                        <div class="list-inline pull-right">
                                            <button type="button" class="white-btn prev-step mr-2">Back</button>
                                            <button type="button" class="white-btn next-step">Finish</button>
                                           
                                        </div>
                                    </div>
                                    <div class="clearfix"></div>
                                </div>
                                <button type="submit" >Save</button>
                            </form:form>