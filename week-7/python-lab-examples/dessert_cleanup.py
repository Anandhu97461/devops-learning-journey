txt = ",$,,   chocolate   banana ice-cream..."
txt = txt.strip(",$ .")
txt = " ".join(txt.split())
print(txt)