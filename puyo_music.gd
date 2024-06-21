extends AudioStreamPlayer

var intensity = 0 #can be 0, 1, or 2. Adds or removes a preset amount of stems
var lead #Changes whether the Cirana or Chubbo leads are active. 0 = Neither, 1 = Cirana, 2 = Chubbo, 3 = Both
var chords #Changes whether the Cirana or Chubbo chords are active. 0 = Neither, 1 = Cirana, 2 = Chubbo, 3 = Both
var segment #String variable referencing which segment of the song is currently playing
var customStart #String variable for forcing the next transition to be redirected
var customEnd #String variable
var internalLoop #Boolean for forcing the current segment to loop itself
var completeLoop #Boolean for transitioning to outro. If true, play outro after Verse 3. If false, return to Intro 2.
#todo: acquire each stem's volume resource to reference, return to original volume when enabled

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass

#additional functions:
#individual button listeners to manually disable or enable stems
func enableInstrument(instrument):
	#return the given instrument's volume
	pass

func disableInstrument(instrument):
	#set the given instrument's resource volume to 0
	pass

func refreshInstruments():
	#function to re-check all instrument volumes
	pass

func quickLeadChange():
	#function for immediately swapping the leads values
	#swaps 0 and 3, 1 and 2 respectively
	pass
	
func quickChordChange():
	#function for immediately swapping the chords values
	#swaps 0 and 3, 1 and 2 respectively
	pass

func intensityUpdated(newIntensity):
	#contains preset instrument configuration for each intensity
	#switch case equivalent expression
	pass
	
func changeSegment(segment):
	#function to force audio stream to transition to given segment
	pass
	
func setTransition(segment1, segment2):
	#creates a custom transition point from the end of segment one to the beginning of segment two
	#only one transition point is saved
	#after segment1 is detected to finish playing, force transition to segment2
	pass
