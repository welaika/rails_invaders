leapMotionController = {}

Leap.loop(function(frame) {
  if(frame.hands.length) {
    leapMotionController.enabled = true;
    leapMotionController.handPalmPositionX = (frame.hands[0].palmPosition[0] + 255) / 512.0;
    leapMotionController.handIsOpen = frame.hands[0].grabStrength < 0.5;
  }
  else {
    leapMotionController.enabled = false;
  }
});
