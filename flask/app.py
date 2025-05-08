from flask import Flask,render_template,request
app=Flask(__name__)
@app.route("/")
@app.route("/home")
def home():
   return render_template("login.html")
@app.route("/contact",methods=["POST","GET"])
def contact():
   output=request.form.to_dict()
   name=output["flag"]
   return render_template("login.html",name=name)
if __name__=='__main__':
   app.run(debug=True,port=5005)

