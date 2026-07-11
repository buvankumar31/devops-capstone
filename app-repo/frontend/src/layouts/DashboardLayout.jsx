import { Outlet } from "react-router-dom";
import Sidebar from "../components/Sidebar";
import Navbar from "../components/Navbar";
import styles from "./DashboardLayout.module.css";

export default function DashboardLayout() {
  return (
    <div className={styles.layout}>

      <Sidebar />

      <main className={styles.main}>

        <Navbar />

        <section className={styles.content}>
          <Outlet />
        </section>

      </main>

    </div>
  );
}
