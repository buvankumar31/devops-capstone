import styles from "./PipelineStatus.module.css";

export default function PipelineStatus() {
  return (
    <div className={styles.card}>

      <h2>Pipeline Status</h2>

      <div className={styles.pipeline}>

        <div>GitHub</div>

        <span>➜</span>

        <div>Jenkins</div>

        <span>➜</span>

        <div>Docker</div>

        <span>➜</span>

        <div>ECR</div>

        <span>➜</span>

        <div>EKS</div>

      </div>

    </div>
  );
}
