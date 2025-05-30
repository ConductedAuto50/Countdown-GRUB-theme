from PIL import Image, ImageDraw

size = 32
img = Image.new("RGBA", (size, size), (0, 0, 0, 0))  # Transparent background
draw = ImageDraw.Draw(img)
# draw.ellipse((0, 0, size-1, size-1), fill="white")
img.save("blank_circle.png")
