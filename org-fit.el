;;; org-fit.el --- Org-mode extension to log and schedule workouts, manage database of exercises and fitness programs,

;; Author: e.g. pavelka <pav@egpavelka.com>
;; URL: https://github.com/pv-lk/anathemacs

;;; Commentary:
;; This is a WIP, and planned features may appear as commented functions.
;;

;;; Code:
(require 'org-habit)
;; (require 'org-collector)
(add-to-list 'org-modules '(org-habit))

;; EXERCISE DATABASE: manage exercises, routines, and programs

(defun add-exercise ()
  "Add EXERCISE to database."
  (org-insert-heading)
  (insert "name")
  (org-return)
  (org-set-property "muscle-target" "")
  (org-set-property "equipment" "")
  (org-set-property "record-type" "")
  (org-insert-subheading t)
  (insert "Instructions")
  (org-return)
  (insert "instructions")
  (org-return)
  (org-insert-heading)
  (insert "Example")
  (org-return))
;; Allow exercise substitutions?

(defun add-workout-routine ()
  "Add WORKOUT template to databse.  Populate with EXERCISES.")

(defun add-workout-program ()
  "Add PROGRAM to database.  Populate with  WORKOUTS and schedule repeaters and durations, e.g.: every Monday for four weeks starting on November 11, or every Tuesday and Thursday starting December 1.")

;; Tree view
(defun browse-workouts ())

;; Delete templates at each level. Delete from higher components (e.g. deleting an exercise will remove it from routines and programs, deleting a routine will remove it from programs), and include option to delete corresponding logs (default: no).
(defun delete-exercise ()
  "Delete EXERCISE from database.  Will remove from WORKOUTS and PROGRAMS; option to remove from LOGS is nil by default.")
(defun delete-workout-routine ()
  "Delete WORKOUT from database.  Inherit delete-exercise behavior.")
(defun delete-workout-program ()
  "Delete PROGRAM from database.  Inherit delete-exercise behavior.")

;; Toggle visibility in auto-complete and browser.  Useful for archiving completed programs or keeping possible/future programs out of the way.
;; (defun toggle-exercise ())
;; (defun toggle-workout-routine ())
;; (defun toggle-workout-program ())

;; LOGGING
(defun schedule-workout ()
  "Schedule an instance of an existing workout template.")

(defun log-workout ()
  "Initialize new WORKOUT log - blank or from existing template."
  (org-insert-heading)
  (insert "Logged Workout " (org-time-stamp))
  (org-return)
  (insert "|Exercise|Sets|Reps/Dur.|Weight|")
  (org-return)
  (insert "|-")
  (org-return))

(defun log-exercise-to-workout (workout)
  "Add exercise from database to current WORKOUT log."
  
  )

;; DASHBOARD
;; Show recent workouts, graphs
;;

;; OPTIONS
(provide 'org-fit)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;; org-fit.el ends here
