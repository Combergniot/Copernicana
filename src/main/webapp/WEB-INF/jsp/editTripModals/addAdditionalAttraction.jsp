<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<!-- Group Type Modal -->
<div class="modal fade" id="additionalAttractionModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
    <div class="modal-dialog modal-lg">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-hidden="true">x</button>
                <h4 class="modal-title">Dodawanie niestandardowych atrakcji</h4>
                <form action="addAdditionalAttractionToTrip/${trip.id}" method="POST" modelAttribute="additionalAttraction" commandName="additionalAttraction">
            </div>

          <div class="modal-body">

           <div class="row">
               <label class="col-lg-1 control-label ">Rodzaj:</label>
                  <!--Atrakcje: Główne atrakcje -->
                  <div class="col-lg-5  guide-selector">

                   <select id="additionalAttractionType" class="chosen-select form-control" name="additionalAttractionType"
                              data-placeholder="Wybierz atrakcję...">
                  <option></option>
                  <option>Bunkier Wisła</option>
                  <option>Dom Legend</option>
                  <option>Katedra</option>
                  <option>Mała chemia</option>
                  <option>Manufaktura cukierków</option>
                  <option>Motoarena</option>
                  <option>Muzeum Etnograficzne</option>
                  <option>Muzeum piśmiennictwa i druku w Grębocinie</option>
                  <option>Muzeum zabawek</option>
                  <option>Obserwatorium astronomiczne w Piwnicach</option>
                  <option>Solec Kujawski</option>
                  <option>ZOO</option>
                  <option>Inna...</option>
                      </select>
                  </div>
              </div>
              <div class="row">
                  <!-- Atrakcje niestandardowe: Data i godzina -->
                  <label class="col-lg-1 control-label guide-selector"> Data:</label>
                  <div class="col-lg-3 guide-selector"><input class="form-control" name="additionalAttractionDate" id="additional-attraction-date" data-toggle="datepicker" ></div>
                  <label class="col-lg-1 control-label guide-selector"> Od:</label>
                  <div class="col-lg-3 guide-selector"><input class="form-control time_element" name="additionalAttractionTimeStart" id="attraction-time-start" value="12:00"></div>
                  <label class="col-lg-1 control-label guide-selector">Do:</label>
                  <div class="col-lg-3 guide-selector"><input class="form-control time_element" name="additionalAttractionTimeEnd" id="attraction-time-end" value="12:00"></div>
              </div>
              <div class="row">
                  <div class="col-lg-11 col-lg-offset-1 guide-selector">
                      <textarea name="additionalAttractionRemarks" class="form-control" id="textarea" class="form-control input-md" placeholder="Uwagi..."></textarea>
                  </div>
              </div>
     </div>
              <!--end of attraction-->
                       <div class="modal-footer">
                          <button type="submit" class="btn btn-primary">Zapisz</button>
                          <button type="button" class="btn btn-default" data-dismiss="modal">Precz</button>
                        </div>
                          </form>


          </div>
        </div><!-- /.modal-content -->
    </div><!-- /.modal-dialog -->
</div><!-- /.modal -->
