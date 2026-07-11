import Hero from "../components/Hero";
import StatsCards from "../components/StatsCards";
import TasksSection from "../components/TasksSection";
import RecentActivity from "../components/RecentActivity";
import SystemOverview from "../components/SystemOverview";
import DeploymentStatus from "../components/DeploymentStatus";
import PipelineStatus from "../components/PipelineStatus";

import styles from "./Dashboard.module.css";

export default function Dashboard() {
  return (
    <>
      <Hero />

      <StatsCards />

      <div className={styles.grid}>
        <TasksSection />
        <div>
          <RecentActivity />
          <SystemOverview />
        </div>
      </div>

      <div className={styles.grid}>
        <DeploymentStatus />
        <PipelineStatus />
      </div>
    </>
  );
}
