import numpy as np

def hook(frame, context):
    print("hello")
    rgb_frame = frame['original']
    print("frame: ", rgb_frame)
    model = context['model']
    prediction = next(model(rgb_frame, stream=True))
    bboxes = prediction.boxes.data.tolist() if prediction.boxes else []
    frame['inference_output'] = np.array(bboxes, dtype="float32")
