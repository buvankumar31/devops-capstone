import styles from "./SystemOverview.module.css";
import {
  ShieldCheck,
  Server,
  Boxes,
  Cpu
} from "lucide-react";

const cards = [
  {
    title: "Cluster Health",
    value: "Healthy",
    icon: ShieldCheck,
    color: "#22c55e"
  },
  {
    title: "Nodes",
    value: "3 / 3",
    icon: Server,
    color: "#3b82f6"
  },
  {
    title: "Pods",
    value: "18",
    icon: Boxes,
    color: "#8b5cf6"
  },
  {
    title: "CPU Usage",
    value: "32%",
    icon: Cpu,
    color: "#f59e0b"
  }
];

export default function SystemOverview() {
  return (
    <div className={styles.card}>

      <h2>System Overview</h2>

      <div className={styles.grid}>
        {cards.map((item) => {
          const Icon = item.icon;

          return (
            <div className={styles.item} key={item.title}>

              <Icon
                size={26}
                color={item.color}
              />

              <h3>{item.value}</h3>

              <p>{item.title}</p>

            </div>
          );
        })}
      </div>

    </div>
  );
}
