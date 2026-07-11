import {
  FolderKanban,
  Rocket,
  ClipboardList,
  CircleCheck,
  Clock3,
  TimerReset
} from "lucide-react";

import styles from "./StatsCards.module.css";

const stats = [
  {
    title: "Active Projects",
    value: "12",
    icon: FolderKanban,
    color: "#3b82f6",
  },
  {
    title: "Recent Deployments",
    value: "5",
    icon: Rocket,
    color: "#22c55e",
  },
  {
    title: "Total Tasks",
    value: "24",
    icon: ClipboardList,
    color: "#8b5cf6",
  },
  {
    title: "Completed",
    value: "12",
    icon: CircleCheck,
    color: "#10b981",
  },
  {
    title: "In Progress",
    value: "7",
    icon: Clock3,
    color: "#f59e0b",
  },
  {
    title: "Pending",
    value: "5",
    icon: TimerReset,
    color: "#a855f7",
  },
];

export default function StatsCards() {
  return (
    <div className={styles.grid}>
      {stats.map((item) => {
        const Icon = item.icon;

        return (
          <div className={styles.card} key={item.title}>
            <div
              className={styles.icon}
              style={{ background: item.color }}
            >
              <Icon size={22} />
            </div>

            <div>
              <p>{item.title}</p>
              <h2>{item.value}</h2>
            </div>
          </div>
        );
      })}
    </div>
  );
}
