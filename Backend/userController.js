const db = require("./db");

//login function
const login = (req, res) => {
  const username = req.body.username;
  const password = req.body.password;
  console.log(req.body);

  const query =
    "SELECT userid,username,token,role FROM user WHERE username = ? AND password =?";

  db.query(query, [username, password], (err, result) => {
    if (err) {
      res.status(500).send("Account Cannot Be Found!");
    }

    if (result.length === 0) {
      res.status(401).send("Invalid Login Credentials!");
    } else {
      //send credentials to frontEnd
      const user = {
        userid: result[0].userid,
        username: result[0].username,
        token: result[0].token,
        role: result[0].role,
      };
      console.log(result);
      res.status(200).send(user);
    }
  });
};

//logout function
const logout = (req, res) => {
  if (req.session) {
    req.session.destroy((err) => {
      if (err) {
        return res.status(500).json({ message: "Failed to Sign Out!" });
      }
      res.status(200).json({ message: "Sign Out Successfull!" });
    });
  } else {
    res.status(200).json({ message: "User had already signed out!" });
  }
};

//token generator
function generateToken() {
  const stringSet =
    "abdefghijklmnopqrstuvwxyz0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZ";
  let token = "";
  for (let i = 0; i < 15; i++) {
    const indexValue = Math.floor(Math.random() * stringSet.length);
    token += stringSet.charAt(indexValue);
  }

  return token;
}

//register function
const register = (req, res, next) => {
  const username = req.body.username;
  const password = req.body.password;

  const query =
    "INSERT INTO `user` (`username`, `password`,`token`) VALUES (?,?,?)";
  const token = generateToken();
  db.query(query, [username, password, token], (err, result) => {
    if (err) {
      res.status(500).send("Error registering user!");
    }
    res.status(200).send("Register successful!");
  });
};

module.exports = { login, logout, register };
