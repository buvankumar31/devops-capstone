import styles from "./DeploymentStatus.module.css";

const rows = [
  {
    app: "Frontend",
    env: "Dev",
    version: "v1.0.0",
    status: "Success"
  },
  {
    app: "Backend",
    env: "Dev",
    version: "v1.0.0",
    status: "Success"
  },
  {
    app: "Monitoring",
    env: "Dev",
    version: "v1.0.0",
    status: "Success"
  }
];

export default function DeploymentStatus() {
  return (
    <div className={styles.card}>

      <h2>Deployment Status</h2>

      <table>

        <thead>

          <tr>

            <th>Application</th>

            <th>Environment</th>

            <th>Version</th>

            <th>Status</th>

          </tr>

        </thead>

        <tbody>

          {rows.map((row) => (

            <tr key={row.app}>

              <td>{row.app}</td>

              <td>{row.env}</td>

              <td>{row.version}</td>

              <td>

                <span className={styles.success}>
                  {row.status}
                </span>

              </td>

            </tr>

          ))}

        </tbody>

      </table>

    </div>
  );
}
