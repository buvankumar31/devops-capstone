import {
  Search,
  Bell,
  Moon,
  UserCircle
} from "lucide-react";

import styles from "./Navbar.module.css";

export default function Navbar() {
  return (

    <header className={styles.navbar}>

      <div className={styles.searchBox}>

        <Search size={18}/>

        <input
          placeholder="Search..."
        />

      </div>

      <div className={styles.right}>

        <button>
          <Moon size={19}/>
        </button>

        <button>
          <Bell size={19}/>
        </button>

        <div className={styles.profile}>

          <UserCircle size={36}/>

          <div>

            <h4>Buvan</h4>

            <span>Administrator</span>

          </div>

        </div>

      </div>

    </header>

  );
}
