import {
  LayoutDashboard,
  ClipboardList,
  Rocket,
  GitBranch,
  Server,
  Activity,
  BookOpen,
  Settings,
  Database
} from "lucide-react";

import styles from "./Sidebar.module.css";
import logo from "../assets/logo.png";

const menu = [
  { icon: LayoutDashboard, name: "Dashboard" },
  { icon: ClipboardList, name: "Tasks" },
  { icon: Rocket, name: "Deployments" },
  { icon: GitBranch, name: "CI/CD Pipelines" },
  { icon: Server, name: "Infrastructure" },
  { icon: Activity, name: "Monitoring" },
  { icon: Database, name: "Repositories" },
  { icon: BookOpen, name: "Documentation" },
  { icon: Settings, name: "Settings" }
];

export default function Sidebar() {
  return (
    <aside className={styles.sidebar}>
      <div className={styles.logoSection}>

        <img
          src={logo}
          alt="logo"
          className={styles.logo}
        />

        <h2>Buvan's</h2>

        <span>Cloud Platform</span>

      </div>

      <nav className={styles.menu}>

        {menu.map((item, index) => {

          const Icon = item.icon;

          return (
            <button
              key={item.name}
              className={`${styles.menuItem} ${
                index === 0 ? styles.active : ""
              }`}
            >
              <Icon size={20} />

              <span>{item.name}</span>

            </button>
          );

        })}

      </nav>
    </aside>
  );
}
