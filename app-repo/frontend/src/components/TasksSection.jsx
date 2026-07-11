import styles from "./TasksSection.module.css";
import { Pencil, Trash2 } from "lucide-react";

const tasks = [
  {
    title: "Learn AWS EKS",
    desc: "Understand EKS architecture and components",
    status: "Completed",
    date: "May 20"
  },
  {
    title: "Setup Jenkins Pipeline",
    desc: "Create CI/CD pipeline",
    status: "In Progress",
    date: "May 21"
  },
  {
    title: "Deploy to EKS",
    desc: "Deploy application with Helm",
    status: "Pending",
    date: "May 22"
  },
  {
    title: "Setup Monitoring",
    desc: "Prometheus + Grafana",
    status: "Pending",
    date: "May 23"
  }
];

export default function TasksSection() {
  return (
    <div className={styles.card}>
      <div className={styles.header}>
        <h2>All Tasks</h2>
      </div>

      {tasks.map((task) => (
        <div className={styles.row} key={task.title}>

          <div className={styles.left}>
            <h3>{task.title}</h3>
            <p>{task.desc}</p>
          </div>

          <span className={`${styles.badge} ${styles[task.status.replace(" ","")]}`}>
            {task.status}
          </span>

          <span>{task.date}</span>

          <div className={styles.icons}>
            <Pencil size={18}/>
            <Trash2 size={18}/>
          </div>

        </div>
      ))}
    </div>
  );
}
